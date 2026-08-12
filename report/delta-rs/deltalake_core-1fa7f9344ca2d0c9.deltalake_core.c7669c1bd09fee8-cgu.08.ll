inline.NumInlined: 16156
inline.NumDeleted: 5265
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 34
begin_hunk_0_@_RNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB8_21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE19spawn_io_rt_from_toNCNCNvXsc_B8_B17_B29_4copy00uE0Be_:bb.a
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %1) #40
          to label %.body13 unwind label %bb.x

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit12: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit, %bb.p
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.r

bb.r:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit12
  %i.am = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %.body13 unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit12
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.t

.body13:                                          ; preds = %bb.t, %bb.r, %bb.q
  %.pn3 = phi { ptr, i32 } [ %i.al, %bb.q ], [ %i.ap, %bb.t ], [ %i.am, %bb.r ]
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 24
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ao) #40
          to label %.body18 unwind label %bb.x

bb.t:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %.body13

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aq)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i17 unwind label %bb.u

bb.u:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs14kWLkQVSKO_14deltalake_core.exit
  %i.ar = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aq)
          to label %.body18 unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i17: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs14kWLkQVSKO_14deltalake_core.exit
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aq)
          to label %common.ret unwind label %bb.w

.body18:                                          ; preds = %bb.w, %bb.u, %bb.y, %.body13
  %.pn5 = phi { ptr, i32 } [ %.pn, %bb.y ], [ %.pn3, %.body13 ], [ %i.at, %bb.w ], [ %i.ar, %bb.u ]
  store i8 2, ptr %i.a, align 8
  resume { ptr, i32 } %.pn5

bb.w:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i17
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %.body18

bb.x:                                             ; preds = %bb.e, %bb.h, %bb.y, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit, %.body13, %bb.q
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.body, %bb.e
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %1) #40
          to label %bb.y unwind label %bb.x

bb.y:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 24
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.av) #40
          to label %.body18 unwind label %bb.x
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCINvMs7_NtNtCs14kWLkQVSKO_14deltalake_core10operations8optimizeNtB8_9MergePlan13rewrite_filesINtNtNtCs8CRAYtH5WmW_12futures_util6future5ready5ReadyINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB2s_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB2o_NtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs4tdlwR1I4n2_7parquet6errors12ParquetErrorENtNtB2s_6marker4SendEL_EENtNtBc_6errors15DeltaTableErrorEEE0Bc_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 16 captures(none) dereferenceable(128) %0, ptr noundef nonnull align 16 %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 12 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.28.sroa.10.sroa.9 = alloca [48 x i8], align 16 ; 9 uses
  %.sroa.31 = alloca [16 x i8], align 16          ; 2 uses
  %i.d = alloca [16 x i8], align 8                ; 6 uses
  %i.e = alloca [16 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 6 uses
  %i.g = alloca [32 x i8], align 8                ; 8 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %i.i = alloca [16 x i8], align 8                ; 6 uses
  %i.j = alloca [16 x i8], align 8                ; 6 uses
  %i.k = alloca [16 x i8], align 8                ; 6 uses
  %i.l = alloca [32 x i8], align 8                ; 8 uses
  %.sroa.5347.sroa.2.sroa.2 = alloca [48 x i8], align 8 ; 2 uses
  %i.m = alloca [96 x i8], align 16               ; 11 uses
  %.sroa.3321.sroa.6 = alloca [48 x i8], align 8  ; 2 uses
  %i.n = alloca [96 x i8], align 16               ; 11 uses
  %i.o = alloca [96 x i8], align 16               ; 11 uses
  %i.p = alloca [40 x i8], align 8                ; 3 uses
  %.sroa.6268.sroa.13 = alloca [48 x i8], align 8 ; 4 uses
  %.sroa.11514 = alloca [912 x i8], align 8       ; 4 uses
  %i.q = alloca [24 x i8], align 8                ; 7 uses
  %i.r = alloca [376 x i8], align 8               ; 7 uses
  %i.s = alloca [16 x i8], align 8                ; 6 uses
  %i.t = alloca [1024 x i8], align 16             ; 19 uses
  %i.u = alloca [248 x i8], align 8               ; 5 uses
  %i.v = alloca [248 x i8], align 8               ; 6 uses
  %i.w = alloca [72 x i8], align 8                ; 8 uses
  %i.x = alloca [8 x i8], align 8                 ; 9 uses
  %i.y = alloca [384 x i8], align 16              ; 19 uses
  %.sroa.6265.sroa.13 = alloca [48 x i8], align 8 ; 8 uses
  %i.z = alloca [376 x i8], align 16              ; 20 uses
  %i.aa = alloca [24 x i8], align 8               ; 7 uses
  %i.ab = alloca [96 x i8], align 16              ; 11 uses
  %i.ac = alloca [16 x i8], align 8               ; 6 uses
  %i.ad = alloca [16 x i8], align 8               ; 6 uses
  %i.ae = alloca [16 x i8], align 8               ; 6 uses
  %i.af = alloca [32 x i8], align 8               ; 8 uses
  %i.ag = alloca [24 x i8], align 8               ; 5 uses
  %i.ah = alloca [16 x i8], align 8               ; 6 uses
  %i.ai = alloca [16 x i8], align 8               ; 6 uses
  %i.aj = alloca [16 x i8], align 8               ; 6 uses
  %i.ak = alloca [32 x i8], align 8               ; 8 uses
  %i.al = alloca [96 x i8], align 16              ; 18 uses
  %i.am = alloca [16 x i8], align 16              ; 18 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 1537 ; 3 uses
  %i.ao = load i8, ptr %i.an, align 1, !range !16239, !noundef !4
  switch i8 %i.ao, label %default.unreachable674 [
    i8 0, label %bb.f
    i8 1, label %bb.bj
    i8 2, label %bb.bk
    i8 3, label %bb.b
    i8 4, label %bb.c
    i8 5, label %bb.d
    i8 6, label %bb.e
  ]

default.unreachable674:                           ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  br label %bb.bm

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  br label %bb.cf

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  br label %bb.bs

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  br label %bb.dd

bb.f:                                             ; preds = %bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 1540 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 1539 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 1542
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 1541
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 1538 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 272 ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 264
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(5) %i.at, i8 0, i64 5, i1 false)
  %i.aw = load ptr, ptr %i.av, align 8, !nonnull !4, !noundef !4
  store ptr %i.aw, ptr %i.au, align 16
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 280 ; 5 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 192
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ax, ptr noundef nonnull align 16 dereferenceable(72) %i.ay, i64 72, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 144
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.az, ptr noundef nonnull align 16 dereferenceable(32) %1, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  store i8 1, ptr %i.ap, align 4
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.bb = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.bc = load <2 x ptr>, ptr %i.ba, align 16
  store <2 x ptr> %i.bc, ptr %i.am, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  store i8 1, ptr %i.aq, align 1
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.al, ptr noundef nonnull align 16 dereferenceable(96) %i.bd, i64 96, i1 false)
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 1536
  %i.bf = load i8, ptr %i.be, align 16, !range !34, !noundef !4
  %i.bg = trunc nuw i8 %i.bf to i1
  %i.bh = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.bi = icmp samesign ult i64 %i.bh, 2
  br i1 %i.bi, label %bb.g, label %bb.n

bb.g:                                             ; preds = %bb.f
  %i.bj = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNvMs7_NtNtCs14kWLkQVSKO_14deltalake_core10operations8optimizeNtB9_9MergePlan13rewrite_files010___CALLSITE, i64 16) monotonic, align 8 ; 2 uses
  %i.bk = icmp ult i8 %i.bj, 3
  br i1 %i.bk, label %bb.j, label %bb.h, !prof !25908

bb.h:                                             ; preds = %bb.g
  %i.bl = invoke noundef i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNvMs7_NtNtCs14kWLkQVSKO_14deltalake_core10operations8optimizeNtB9_9MergePlan13rewrite_files010___CALLSITE) #42
          to label %bb.j unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.j:                                             ; preds = %bb.h, %bb.g
  %.sroa.0.0.i = phi i8 [ %i.bj, %bb.g ], [ %i.bl, %bb.h ] ; 2 uses
  %i.bn = icmp eq i8 %.sroa.0.0.i, 0
  br i1 %i.bn, label %bb.n, label %bb.l

bb.k:                                             ; preds = %bb.l
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.l:                                             ; preds = %bb.j
  %i.bp = load ptr, ptr @_RNvNCNvMs7_NtNtCs14kWLkQVSKO_14deltalake_core10operations8optimizeNtB9_9MergePlan13rewrite_files010___CALLSITE, align 8, !nonnull !4, !align !17, !noundef !4
  %i.bq = invoke noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bp, i8 noundef %.sroa.0.0.i)
          to label %bb.m unwind label %bb.k

bb.m:                                             ; preds = %bb.l
  br i1 %i.bq, label %bb.x, label %bb.n

bb.n:                                             ; preds = %bb.f, %bb.j, %bb.m
  %i.br = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %.not = icmp eq i8 %i.br, 0
  br i1 %.not, label %bb.o, label %bb.aa

bb.o:                                             ; preds = %bb.n
  %i.bs = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.bt = icmp ult i64 %i.bs, 6
  tail call void @llvm.assume(i1 %i.bt)
  %i.bu = icmp samesign ugt i64 %i.bs, 3
  br i1 %i.bu, label %bb.q, label %bb.aa

bb.p:                                             ; preds = %bb.q
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.q:                                             ; preds = %bb.o
  %i.bw = load ptr, ptr @_RNvNCNvMs7_NtNtCs14kWLkQVSKO_14deltalake_core10operations8optimizeNtB9_9MergePlan13rewrite_files010___CALLSITE, align 8, !nonnull !4, !align !17, !noundef !4 ; 3 uses
  %i.bx = getelementptr i8, ptr %i.bw, i64 32
  %.val113 = load ptr, ptr %i.bx, align 8, !nonnull !4, !noundef !4
  %i.by = getelementptr i8, ptr %i.bw, i64 40
  %.val114 = load i64, ptr %i.by, align 8, !noundef !4
  store i64 4, ptr %i.ag, align 8, !alias.scope !25909
  %.sroa.6230.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %.val113, ptr %.sroa.6230.0..sroa_idx, align 8, !alias.scope !25909
  %.sroa.8231.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store i64 %.val114, ptr %.sroa.8231.0..sroa_idx, align 8, !alias.scope !25909
  %i.bz = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %bb.r unwind label %bb.p       ; 2 uses

bb.r:                                             ; preds = %bb.q
  %i.ca = extractvalue { ptr, ptr } %i.bz, 0      ; 2 uses
  %i.cb = extractvalue { ptr, ptr } %i.bz, 1      ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  %i.cd = load ptr, ptr %i.cc, align 8, !invariant.load !4, !nonnull !4
  %i.ce = invoke noundef zeroext i1 %i.cd(ptr noundef %i.ca, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ag)
          to label %bb.t unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.t:                                             ; preds = %bb.r
  br i1 %i.ce, label %bb.u, label %bb.aa

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  %i.cg = load ptr, ptr @_RNvNCNvMs7_NtNtCs14kWLkQVSKO_14deltalake_core10operations8optimizeNtB9_9MergePlan13rewrite_files010___CALLSITE, align 8, !nonnull !4, !align !17, !noundef !4
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  store ptr %i.ax, ptr %i.ac, align 8
  %.sroa.5233.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr @_RNvXs_NtCsbpG6u9KFjWn_8indexmap3mapINtB4_8IndexMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.5233.0..sroa_idx, align 8
  store ptr @73, ptr %i.ad, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %i.ac, ptr %i.ci, align 8
  store ptr %i.ad, ptr %i.ae, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr @74, ptr %i.cj, align 8
  store i64 1, ptr %i.af, align 8, !alias.scope !25913, !noalias !25916
  %.sroa.4.0..sroa_idx.i131 = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr %i.ae, ptr %.sroa.4.0..sroa_idx.i131, align 8, !alias.scope !25913, !noalias !25916
  %.sroa.5.0..sroa_idx.i132 = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store i64 1, ptr %.sroa.5.0..sroa_idx.i132, align 8, !alias.scope !25913, !noalias !25916
  %i.ck = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  store ptr %i.ch, ptr %i.ck, align 8, !alias.scope !25913, !noalias !25916
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.ag, i64 24, i1 false)
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bw, ptr noundef nonnull %i.ca, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.cb, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.af)
          to label %bb.w unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  br label %bb.bi

bb.w:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  br label %bb.aa

bb.x:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  %i.cm = load ptr, ptr @_RNvNCNvMs7_NtNtCs14kWLkQVSKO_14deltalake_core10operations8optimizeNtB9_9MergePlan13rewrite_files010___CALLSITE, align 8, !nonnull !4, !align !17, !noundef !4
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  store ptr %i.ax, ptr %i.ah, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr @_RNvXs_NtCsbpG6u9KFjWn_8indexmap3mapINtB4_8IndexMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.5.0..sroa_idx, align 8
  store ptr @73, ptr %i.ai, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %i.ah, ptr %i.co, align 8
  store ptr %i.ai, ptr %i.aj, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr @74, ptr %i.cp, align 8
  store i64 1, ptr %i.ak, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr %i.aj, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store i64 1, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  store ptr %i.cn, ptr %.sroa.8.0..sroa_idx, align 8
  invoke fastcc void @_RNCNCINvMs7_NtNtCs14kWLkQVSKO_14deltalake_core10operations8optimizeNtBa_9MergePlan13rewrite_filesINtNtNtCs8CRAYtH5WmW_12futures_util6future5ready5ReadyINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB2u_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB2q_NtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs4tdlwR1I4n2_7parquet6errors12ParquetErrorENtNtB2u_6marker4SendEL_EENtNtBe_6errors15DeltaTableErrorEEE0s1_0Be_(ptr noalias noundef readonly align 8 captures(address) dereferenceable(32) %i.ak)
          to label %bb.z unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  br label %bb.bi

bb.z:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.w, %bb.t, %bb.o, %bb.n, %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  %i.cr = getelementptr i8, ptr %1, i64 152       ; 2 uses
  %.val117 = load ptr, ptr %i.cr, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.cs = getelementptr i8, ptr %1, i64 160       ; 2 uses
  %.val118 = load i64, ptr %i.cs, align 16, !noundef !4
  %i.ct = getelementptr inbounds nuw [272 x i8], ptr %.val117, i64 %.val118
  store ptr %.val117, ptr %i.aa, align 8, !alias.scope !25919, !noalias !25922
  %i.cu = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr %i.ct, ptr %i.cu, align 8, !alias.scope !25919, !noalias !25922
  %i.cv = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store ptr %i.ax, ptr %i.cv, align 8, !alias.scope !25919, !noalias !25922
  invoke void @_RINvNtNtCsbvkFyIu7lgC_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNCINvMs7_NtNtB1E_10operations8optimizeNtB2K_9MergePlan13rewrite_filesINtNtNtCs8CRAYtH5WmW_12futures_util6future5ready5ReadyINtNtB6_6result6ResultINtNtB6_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB4B_NtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs4tdlwR1I4n2_7parquet6errors12ParquetErrorENtNtB6_6marker4SendEL_EENtNtB1E_6errors15DeltaTableErrorEEE00ENtB1A_6ActionIB4B_NtNtB6_7convert10InfallibleB8N_ENCINvXso_B4D_IB4B_INtNtB5h_3vec3VecB9p_EB8N_EINtNtNtB4_6traits7collect12FromIteratorIB4B_B9p_B8N_EE9from_iterBQ_E0Bav_EB1E_(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %i.ab, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.aa)
          to label %_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNCINvMs7_NtNtB1p_10operations8optimizeNtB2v_9MergePlan13rewrite_filesINtNtNtCs8CRAYtH5WmW_12futures_util6future5ready5ReadyINtNtBc_6result6ResultINtNtBc_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB4m_NtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs4tdlwR1I4n2_7parquet6errors12ParquetErrorENtNtBc_6marker4SendEL_EENtNtB1p_6errors15DeltaTableErrorEEE00ENtNtNtBa_6traits8iterator8Iterator7collectIB4m_INtNtB52_3vec3VecNtB1l_6ActionEB8y_EEB1p_.exit unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  br label %.body

_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNCINvMs7_NtNtB1p_10operations8optimizeNtB2v_9MergePlan13rewrite_filesINtNtNtCs8CRAYtH5WmW_12futures_util6future5ready5ReadyINtNtBc_6result6ResultINtNtBc_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB4m_NtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs4tdlwR1I4n2_7parquet6errors12ParquetErrorENtNtBc_6marker4SendEL_EENtNtB1p_6errors15DeltaTableErrorEEE00ENtNtNtBa_6traits8iterator8Iterator7collectIB4m_INtNtB52_3vec3VecNtB1l_6ActionEB8y_EEB1p_.exit: ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.experimental.noalias.scope.decl(metadata !25924)
  %i.cx = load i64, ptr %i.ab, align 16, !range !212, !alias.scope !25927, !noalias !25924, !noundef !4 ; 2 uses
  %.not.i137 = icmp eq i64 %i.cx, -9223372036854775711
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.8236.sroa.0.0.copyload418 = load i64, ptr %i.cy, align 8, !alias.scope !25929 ; 2 uses
  %.sroa.8236.sroa.8.0..sroa_idx420 = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %.sroa.8236.sroa.8.0.copyload421 = load ptr, ptr %.sroa.8236.sroa.8.0..sroa_idx420, align 16, !alias.scope !25929 ; 2 uses
end_hunk_0
begin_hunk_1_@_RNCINvMs7_NtNtCs14kWLkQVSKO_14deltalake_core10operations8optimizeNtB8_9MergePlan13rewrite_filesINtNtNtCs8CRAYtH5WmW_12futures_util6future5ready5ReadyINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB2s_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB2o_NtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs4tdlwR1I4n2_7parquet6errors12ParquetErrorENtNtB2s_6marker4SendEL_EENtNtBc_6errors15DeltaTableErrorEEE0Bc_:bb.a
  br label %.body157

bb.cq:                                            ; preds = %bb.co
  store i64 %.sroa.8300.sroa.0.0.copyload459, ptr %i.hp, align 16
  store ptr %.sroa.8300.sroa.8.0.copyload462, ptr %.sroa.4297.0..sroa_idx, align 8
  store i64 %.sroa.8300.sroa.9.0.copyload465, ptr %.sroa.4297.sroa.4.0..sroa.4297.0..sroa_idx.sroa_idx, align 16
  store <2 x i64> %i.if, ptr %.sroa.4297.sroa.5.0..sroa.4297.0..sroa_idx.sroa_idx, align 8
  %i.ij = getelementptr inbounds nuw i8, ptr %1, i64 472 ; 2 uses
  %i.ik = load i64, ptr %i.ij, align 8, !noundef !4
  %i.il = add i64 %i.ik, 1
  store i64 %i.il, ptr %i.ij, align 8
  %i.im = getelementptr inbounds nuw i8, ptr %1, i64 480
  %i.in = getelementptr inbounds nuw i8, ptr %1, i64 1592
  store ptr %i.im, ptr %i.in, align 8
  %.sroa.8317.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1600
  store ptr %i.hp, ptr %.sroa.8317.0..sroa_idx, align 16
  %.sroa.10318.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 2320
  store i8 0, ptr %.sroa.10318.0..sroa_idx, align 16
  br label %bb.bs

bb.cr:                                            ; preds = %bb.cn
  %.sroa.10302.0..sroa_idx303 = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.28.sroa.10.sroa.9, ptr noundef nonnull align 16 dereferenceable(48) %.sroa.10302.0..sroa_idx303, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cu, %bb.cr
  %.sroa.10389.4 = phi i64 [ %i.gz, %bb.cu ], [ %i.id, %bb.cr ]
  %.sroa.18.4 = phi i64 [ %.sroa.3321.sroa.0.0.copyload, %bb.cu ], [ %.sroa.8300.sroa.0.0.copyload459, %bb.cr ]
  %.sroa.24.4 = phi ptr [ %.sroa.3321.sroa.2.0.copyload, %bb.cu ], [ %.sroa.8300.sroa.8.0.copyload462, %bb.cr ]
  %.sroa.26.4 = phi i64 [ %.sroa.3321.sroa.3.0.copyload, %bb.cu ], [ %.sroa.8300.sroa.9.0.copyload465, %bb.cr ]
  %i.io = phi <2 x i64> [ %i.hb, %bb.cu ], [ %i.if, %bb.cr ]
  %i.ip = getelementptr inbounds nuw i8, ptr %1, i64 1552
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(40) %i.ip)
          to label %bb.cv unwind label %bb.cc

.body157:                                         ; preds = %bb.cm, %bb.cp, %bb.br, %bb.bx, %bb.ca
  %.pn59.pn = phi { ptr, i32 } [ %i.hj, %bb.ca ], [ %i.hf, %bb.bx ], [ %i.gx, %bb.br ], [ %i.ic, %bb.cm ], [ %i.ig, %bb.cp ]
  %i.iq = getelementptr inbounds nuw i8, ptr %1, i64 1552
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(40) %i.iq) #40
          to label %bb.db unwind label %bb.au

bb.ct:                                            ; preds = %bb.ci
  %i.ir = getelementptr inbounds nuw i8, ptr %1, i64 1538
  store i8 0, ptr %i.ir, align 2
  %i.is = getelementptr inbounds nuw i8, ptr %1, i64 480
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1016) %i.hp, ptr noundef nonnull align 16 dereferenceable(1016) %i.is, i64 1016, i1 false)
  %.sroa.8343.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 3632
  store i8 0, ptr %.sroa.8343.0..sroa_idx, align 16
  br label %bb.dd

bb.cu:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs3_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writerNtBO_15PartitionWriter5write0EBU_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.28.sroa.10.sroa.9, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.3321.sroa.6, i64 48, i1 false)
  br label %bb.cs

bb.cv:                                            ; preds = %bb.cj, %bb.cs, %bb.ex
  %.sroa.10389.5 = phi i64 [ %i.jm, %bb.ex ], [ %.sroa.10389.4, %bb.cs ], [ -9223372036854775742, %bb.cj ] ; 2 uses
  %.sroa.18.5 = phi i64 [ %.sroa.3346.sroa.0.0.copyload, %bb.ex ], [ %.sroa.18.4, %bb.cs ], [ %.sroa.3292.sroa.0.0.copyload, %bb.cj ] ; 2 uses
  %.sroa.24.5 = phi ptr [ %.sroa.3346.sroa.3.0.copyload, %bb.ex ], [ %.sroa.24.4, %bb.cs ], [ %.sroa.3292.sroa.3.0.copyload, %bb.cj ] ; 2 uses
  %.sroa.26.5 = phi i64 [ %.sroa.3346.sroa.5.0.copyload, %bb.ex ], [ %.sroa.26.4, %bb.cs ], [ %i.hx, %bb.cj ] ; 2 uses
  %i.it = phi <2 x i64> [ %i.jo, %bb.ex ], [ %i.io, %bb.cs ], [ %i.hw, %bb.cj ] ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %1, i64 176
  %.val99 = load ptr, ptr %i.iu, align 16         ; 5 uses
  %i.iv = getelementptr i8, ptr %1, i64 184
  %.val100 = load ptr, ptr %i.iv, align 8, !nonnull !4, !align !17, !noundef !4 ; 5 uses
  %i.iw = load ptr, ptr %.val100, align 8, !invariant.load !4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.iw, null
  br i1 %.not.i.i, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val99) ]
  invoke void %i.iw(ptr noundef nonnull %.val99)
          to label %bb.cx unwind label %bb.cz

bb.cx:                                            ; preds = %bb.cw, %bb.cv
  %i.ix = getelementptr inbounds nuw i8, ptr %.val100, i64 8
  %i.iy = load i64, ptr %i.ix, align 8, !range !1123, !invariant.load !4 ; 2 uses
  %i.iz = icmp eq i64 %i.iy, 0
  br i1 %i.iz, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs4tdlwR1I4n2_7parquet6errors12ParquetErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.ja = getelementptr inbounds nuw i8, ptr %.val100, i64 16
  %i.jb = load i64, ptr %i.ja, align 8, !range !947, !invariant.load !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val99) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val99, i64 noundef range(i64 1, 0) %i.iy, i64 noundef range(i64 1, 536870913) %i.jb) #33
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs4tdlwR1I4n2_7parquet6errors12ParquetErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit

bb.cz:                                            ; preds = %bb.cw
  %i.jc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %.val100, i64 8
  %i.je = load i64, ptr %i.jd, align 8, !range !1123, !invariant.load !4 ; 2 uses
  %i.jf = icmp eq i64 %i.je, 0
  br i1 %i.jf, label %.body163, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.jg = getelementptr inbounds nuw i8, ptr %.val100, i64 16
  %i.jh = load i64, ptr %i.jg, align 8, !range !947, !invariant.load !4
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val99, i64 noundef range(i64 1, 0) %i.je, i64 noundef range(i64 1, 536870913) %i.jh) #33
  br label %.body163

bb.db:                                            ; preds = %bb.dh, %bb.dc, %bb.dv, %bb.eb, %bb.dy, %bb.dk, %bb.ek, %bb.dq, %bb.do, %bb.cc, %bb.ce, %.body157
  %.pn62 = phi { ptr, i32 } [ %i.kn, %bb.dv ], [ %i.hl, %bb.cc ], [ %.pn59.pn, %.body157 ], [ %i.le, %bb.eb ], [ %i.mb, %bb.ek ], [ %i.ke, %bb.do ], [ %i.kx, %bb.dy ], [ %i.jy, %bb.dk ], [ %i.ho, %bb.ce ], [ %i.kg, %bb.dq ], [ %i.jp, %bb.dh ], [ %i.jk, %bb.dc ]
  %i.ji = getelementptr inbounds nuw i8, ptr %1, i64 176
  %.val97 = load ptr, ptr %i.ji, align 16
  %i.jj = getelementptr i8, ptr %1, i64 184
  %.val98 = load ptr, ptr %i.jj, align 8, !nonnull !4, !align !17, !noundef !4
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs4tdlwR1I4n2_7parquet6errors12ParquetErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core(ptr %.val97, ptr nonnull %.val98) #40
          to label %.body163 unwind label %bb.au

bb.dc:                                            ; preds = %bb.dd
  %i.jk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs3_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writerNtBO_15PartitionWriter5close0EBU_(ptr noundef nonnull align 8 %i.jl) #40
          to label %bb.db unwind label %bb.au

bb.dd:                                            ; preds = %bb.e, %bb.ct
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.jl = getelementptr inbounds nuw i8, ptr %1, i64 1552 ; 3 uses
  invoke fastcc void @_RNCNvMs3_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writerNtB7_15PartitionWriter5close0Bd_(ptr noalias noundef align 16 captures(none) dereferenceable(96) %i.m, ptr noundef nonnull align 8 %i.jl, ptr noalias noundef align 8 dereferenceable(32) %2)
          to label %bb.de unwind label %bb.dc

bb.de:                                            ; preds = %bb.dd
  %i.jm = load i64, ptr %i.m, align 16, !range !1238, !noundef !4 ; 3 uses
  %i.jn = icmp eq i64 %i.jm, -9223372036854775710
  br i1 %i.jn, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  store i64 -9223372036854775807, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %common.ret

bb.dg:                                            ; preds = %bb.de
  %.sroa.3346.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.3346.sroa.0.0.copyload = load i64, ptr %.sroa.3346.0..sroa_idx, align 8 ; 2 uses
  %.sroa.3346.sroa.3.0..sroa.3346.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.3346.sroa.3.0.copyload = load ptr, ptr %.sroa.3346.sroa.3.0..sroa.3346.0..sroa_idx.sroa_idx, align 16 ; 5 uses
  %.sroa.3346.sroa.5.0..sroa.3346.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %.sroa.3346.sroa.5.0.copyload = load i64, ptr %.sroa.3346.sroa.5.0..sroa.3346.0..sroa_idx.sroa_idx, align 8 ; 3 uses
  %.sroa.5347.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.jo = load <2 x i64>, ptr %.sroa.5347.0..sroa_idx, align 16
  %.sroa.5347.sroa.2.sroa.2.0..sroa.5347.sroa.2.0..sroa.5347.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5347.sroa.2.sroa.2, ptr noundef nonnull align 16 dereferenceable(48) %.sroa.5347.sroa.2.sroa.2.0..sroa.5347.sroa.2.0..sroa.5347.0..sroa_idx.sroa_idx.sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs3_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writerNtBO_15PartitionWriter5close0EBU_(ptr noundef nonnull align 8 %i.jl)
          to label %bb.di unwind label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.jp = landingpad { ptr, i32 }
          cleanup
  br label %bb.db

bb.di:                                            ; preds = %bb.dg
  %.not.i165 = icmp eq i64 %i.jm, -9223372036854775711
  br i1 %.not.i165, label %bb.dj, label %bb.ex

bb.dj:                                            ; preds = %bb.di
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3346.sroa.3.0.copyload) ]
  %i.jq = icmp ult i64 %.sroa.3346.sroa.5.0.copyload, 33909456017848441
  call void @llvm.assume(i1 %i.jq)
  %i.jr = getelementptr inbounds nuw [272 x i8], ptr %.sroa.3346.sroa.3.0.copyload, i64 %.sroa.3346.sroa.5.0.copyload
  %i.js = getelementptr inbounds nuw i8, ptr %1, i64 376 ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %1, i64 400 ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.jv = getelementptr inbounds nuw i8, ptr %1, i64 416 ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %1, i64 424
  %i.jx = getelementptr inbounds nuw i8, ptr %1, i64 352 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !25982
  store ptr %.sroa.3346.sroa.3.0.copyload, ptr %i.a, align 8, !alias.scope !25986, !noalias !25990
  %.sroa.2329.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.sroa.3346.sroa.3.0.copyload, ptr %.sroa.2329.0..sroa_idx, align 8, !alias.scope !25986, !noalias !25990
  %.sroa.3330.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %.sroa.3346.sroa.0.0.copyload, ptr %.sroa.3330.0..sroa_idx, align 8, !alias.scope !25986, !noalias !25990
  %.sroa.4331.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.jr, ptr %.sroa.4331.0..sroa_idx, align 8, !alias.scope !25986, !noalias !25990
  %.sroa.5332.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.js, ptr %.sroa.5332.0..sroa_idx, align 8, !alias.scope !25986, !noalias !25990
  %.sroa.5332.sroa.2.0..sroa.5332.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %i.jt, ptr %.sroa.5332.sroa.2.0..sroa.5332.0..sroa_idx.sroa_idx, align 8, !alias.scope !25986, !noalias !25990
  %.sroa.5332.sroa.3.0..sroa.5332.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.ju, ptr %.sroa.5332.sroa.3.0..sroa.5332.0..sroa_idx.sroa_idx, align 8, !alias.scope !25986, !noalias !25990
  %.sroa.5332.sroa.4.0..sroa.5332.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %i.jv, ptr %.sroa.5332.sroa.4.0..sroa.5332.0..sroa_idx.sroa_idx, align 8, !alias.scope !25986, !noalias !25990
  %.sroa.5332.sroa.5.0..sroa.5332.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr %i.jw, ptr %.sroa.5332.sroa.5.0..sroa.5332.0..sroa_idx.sroa_idx, align 8, !alias.scope !25986, !noalias !25990
  invoke void @_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB6_3VecNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionEINtB4_10SpecExtendBT_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterNtNtBV_7actions3AddENCNCINvMs7_NtNtBZ_10operations8optimizeNtB3U_9MergePlan13rewrite_filesINtNtNtCs8CRAYtH5WmW_12futures_util6future5ready5ReadyINtNtB2j_6result6ResultINtNtB2j_3pin3PinINtNtB8_5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB5K_NtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs4tdlwR1I4n2_7parquet6errors12ParquetErrorENtNtB2j_6marker4SendEL_EENtNtBZ_6errors15DeltaTableErrorEEE0s0_0EE11spec_extendBZ_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.jx, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.a)
          to label %bb.dl unwind label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.jy = landingpad { ptr, i32 }
          cleanup
  br label %bb.db

bb.dl:                                            ; preds = %bb.dj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !25982
  %i.jz = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.ka = icmp samesign ult i64 %i.jz, 2
  br i1 %i.ka, label %bb.dm, label %bb.dt

bb.dm:                                            ; preds = %bb.dl
  %i.kb = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNvMs7_NtNtCs14kWLkQVSKO_14deltalake_core10operations8optimizeNtB9_9MergePlan13rewrite_files0s_10___CALLSITE, i64 16) monotonic, align 8 ; 2 uses
  %i.kc = icmp ult i8 %i.kb, 3
  br i1 %i.kc, label %bb.dp, label %bb.dn, !prof !25908

bb.dn:                                            ; preds = %bb.dm
  %i.kd = invoke noundef i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNvMs7_NtNtCs14kWLkQVSKO_14deltalake_core10operations8optimizeNtB9_9MergePlan13rewrite_files0s_10___CALLSITE) #42
          to label %bb.dp unwind label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.ke = landingpad { ptr, i32 }
          cleanup
  br label %bb.db

bb.dp:                                            ; preds = %bb.dn, %bb.dm
  %.sroa.0.0.i168 = phi i8 [ %i.kb, %bb.dm ], [ %i.kd, %bb.dn ] ; 2 uses
  %i.kf = icmp eq i8 %.sroa.0.0.i168, 0
  br i1 %i.kf, label %bb.dt, label %bb.dr

bb.dq:                                            ; preds = %bb.dr
  %i.kg = landingpad { ptr, i32 }
          cleanup
  br label %bb.db

bb.dr:                                            ; preds = %bb.dp
  %i.kh = load ptr, ptr @_RNvNCNvMs7_NtNtCs14kWLkQVSKO_14deltalake_core10operations8optimizeNtB9_9MergePlan13rewrite_files0s_10___CALLSITE, align 8, !nonnull !4, !align !17, !noundef !4
  %i.ki = invoke noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.kh, i8 noundef %.sroa.0.0.i168)
          to label %bb.ds unwind label %bb.dq

bb.ds:                                            ; preds = %bb.dr
  br i1 %i.ki, label %bb.ej, label %bb.dt

bb.dt:                                            ; preds = %bb.dl, %bb.dp, %bb.ds
  %i.kj = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %.not657 = icmp eq i8 %i.kj, 0
  br i1 %.not657, label %bb.du, label %bb.ed

bb.du:                                            ; preds = %bb.dt
  %i.kk = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.kl = icmp ult i64 %i.kk, 6
  call void @llvm.assume(i1 %i.kl)
  %i.km = icmp samesign ugt i64 %i.kk, 3
  br i1 %i.km, label %bb.dw, label %bb.ed

bb.dv:                                            ; preds = %bb.dw
  %i.kn = landingpad { ptr, i32 }
          cleanup
  br label %bb.db

bb.dw:                                            ; preds = %bb.du
  %i.ko = load ptr, ptr @_RNvNCNvMs7_NtNtCs14kWLkQVSKO_14deltalake_core10operations8optimizeNtB9_9MergePlan13rewrite_files0s_10___CALLSITE, align 8, !nonnull !4, !align !17, !noundef !4 ; 3 uses
  %i.kp = getelementptr i8, ptr %i.ko, i64 32
  %.val111 = load ptr, ptr %i.kp, align 8, !nonnull !4, !noundef !4
  %i.kq = getelementptr i8, ptr %i.ko, i64 40
  %.val112 = load i64, ptr %i.kq, align 8, !noundef !4
  store i64 4, ptr %i.h, align 8, !alias.scope !25991
  %.sroa.6380.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %.val111, ptr %.sroa.6380.0..sroa_idx, align 8, !alias.scope !25991
  %.sroa.8381.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %.val112, ptr %.sroa.8381.0..sroa_idx, align 8, !alias.scope !25991
  %i.kr = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %bb.dx unwind label %bb.dv     ; 2 uses

bb.dx:                                            ; preds = %bb.dw
  %i.ks = extractvalue { ptr, ptr } %i.kr, 0      ; 2 uses
  %i.kt = extractvalue { ptr, ptr } %i.kr, 1      ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 24
  %i.kv = load ptr, ptr %i.ku, align 8, !invariant.load !4, !nonnull !4
  %i.kw = invoke noundef zeroext i1 %i.kv(ptr noundef %i.ks, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h)
          to label %bb.dz unwind label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.kx = landingpad { ptr, i32 }
          cleanup
  br label %bb.db

bb.dz:                                            ; preds = %bb.dx
  br i1 %i.kw, label %bb.ea, label %bb.ed

bb.ea:                                            ; preds = %bb.dz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.ky = load ptr, ptr @_RNvNCNvMs7_NtNtCs14kWLkQVSKO_14deltalake_core10operations8optimizeNtB9_9MergePlan13rewrite_files0s_10___CALLSITE, align 8, !nonnull !4, !align !17, !noundef !4
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.la = getelementptr inbounds nuw i8, ptr %1, i64 280
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.la, ptr %i.d, align 8
  %.sroa.5383.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs_NtCsbpG6u9KFjWn_8indexmap3mapINtB4_8IndexMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.5383.0..sroa_idx, align 8
  store ptr @77, ptr %i.e, align 8
  %i.lb = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.d, ptr %i.lb, align 8
  store ptr %i.e, ptr %i.f, align 8
  %i.lc = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @74, ptr %i.lc, align 8
  store i64 1, ptr %i.g, align 8, !alias.scope !25995, !noalias !25998
  %.sroa.4.0..sroa_idx.i176 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.f, ptr %.sroa.4.0..sroa_idx.i176, align 8, !alias.scope !25995, !noalias !25998
  %.sroa.5.0..sroa_idx.i177 = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 1, ptr %.sroa.5.0..sroa_idx.i177, align 8, !alias.scope !25995, !noalias !25998
  %i.ld = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr %i.kz, ptr %i.ld, align 8, !alias.scope !25995, !noalias !25998
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ko, ptr noundef nonnull %i.ks, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.kt, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.g)
          to label %bb.ec unwind label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.le = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.db

bb.ec:                                            ; preds = %bb.ea
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %bb.dz, %bb.du, %bb.dt, %bb.el
  %i.lf = getelementptr inbounds nuw i8, ptr %1, i64 1542 ; 2 uses
  store i8 0, ptr %i.lf, align 2
  %i.lg = load <2 x i64>, ptr %i.jx, align 16     ; 2 uses
  %.sroa.5564.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 368
  %.sroa.5564.0.copyload = load i64, ptr %.sroa.5564.0..sroa_idx, align 16 ; 2 uses
  %.sroa.0555.0.copyload = load i64, ptr %i.js, align 8 ; 2 uses
  %.sroa.4556.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 384
  %.sroa.4556.0.copyload = load ptr, ptr %.sroa.4556.0..sroa_idx, align 16 ; 2 uses
  %.sroa.5557.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 392
  %.sroa.5557.0.copyload = load i64, ptr %.sroa.5557.0..sroa_idx, align 8 ; 2 uses
  %i.lh = load <2 x i64>, ptr %i.jt, align 16     ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.28.sroa.10.sroa.9, ptr noundef nonnull align 16 dereferenceable(48) %i.jv, i64 48, i1 false)
  %.sroa.9561.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 464
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.31, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.9561.0..sroa_idx, i64 16, i1 false)
  %i.li = getelementptr inbounds nuw i8, ptr %1, i64 176
  %.val = load ptr, ptr %i.li, align 16           ; 5 uses
  %i.lj = getelementptr i8, ptr %1, i64 184
  %.val96 = load ptr, ptr %i.lj, align 8, !nonnull !4, !align !17, !noundef !4 ; 5 uses
  %i.lk = load ptr, ptr %.val96, align 8, !invariant.load !4 ; 2 uses
  %.not.i.i178 = icmp eq ptr %i.lk, null
  br i1 %.not.i.i178, label %bb.ef, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.lk(ptr noundef nonnull %.val)
          to label %bb.ef unwind label %bb.eh

bb.ef:                                            ; preds = %bb.ee, %bb.ed
  %i.ll = getelementptr inbounds nuw i8, ptr %.val96, i64 8
  %i.lm = load i64, ptr %i.ll, align 8, !range !1123, !invariant.load !4 ; 2 uses
  %i.ln = icmp eq i64 %i.lm, 0
  br i1 %i.ln, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs4tdlwR1I4n2_7parquet6errors12ParquetErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit182, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.lo = getelementptr inbounds nuw i8, ptr %.val96, i64 16
  %i.lp = load i64, ptr %i.lo, align 8, !range !947, !invariant.load !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.lm, i64 noundef range(i64 1, 536870913) %i.lp) #33
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs4tdlwR1I4n2_7parquet6errors12ParquetErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit182

bb.eh:                                            ; preds = %bb.ee
  %i.lq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %.val96, i64 8
  %i.ls = load i64, ptr %i.lr, align 8, !range !1123, !invariant.load !4 ; 2 uses
  %i.lt = icmp eq i64 %i.ls, 0
  br i1 %i.lt, label %.body163, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.lu = getelementptr inbounds nuw i8, ptr %.val96, i64 16
  %i.lv = load i64, ptr %i.lu, align 8, !range !947, !invariant.load !4
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.ls, i64 noundef range(i64 1, 536870913) %i.lv) #33
  br label %.body163

bb.ej:                                            ; preds = %bb.ds
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.lw = load ptr, ptr @_RNvNCNvMs7_NtNtCs14kWLkQVSKO_14deltalake_core10operations8optimizeNtB9_9MergePlan13rewrite_files0s_10___CALLSITE, align 8, !nonnull !4, !align !17, !noundef !4
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.ly = getelementptr inbounds nuw i8, ptr %1, i64 280
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %i.ly, ptr %i.i, align 8
  %.sroa.5375.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @_RNvXs_NtCsbpG6u9KFjWn_8indexmap3mapINtB4_8IndexMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.5375.0..sroa_idx, align 8
  store ptr @77, ptr %i.j, align 8
  %i.lz = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.i, ptr %i.lz, align 8
  store ptr %i.j, ptr %i.k, align 8
  %i.ma = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @74, ptr %i.ma, align 8
  store i64 1, ptr %i.l, align 8
end_hunk_1
begin_hunk_2_@_RNCINvMs7_NtNtCs14kWLkQVSKO_14deltalake_core10operations8optimizeNtB8_9MergePlan13rewrite_filesINtNtNtCs8CRAYtH5WmW_12futures_util6future5ready5ReadyINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB2s_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB2o_NtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs4tdlwR1I4n2_7parquet6errors12ParquetErrorENtNtB2s_6marker4SendEL_EENtNtBc_6errors15DeltaTableErrorEEE0Bc_:bb.a
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.ft:                                            ; preds = %bb.fq
  %i.os = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbpG6u9KFjWn_8indexmap5inner4CoreNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarEECs14kWLkQVSKO_14deltalake_core.exit.i214: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown5table9HashTablejEECs14kWLkQVSKO_14deltalake_core.exit.i.i213
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtCsbpG6u9KFjWn_8indexmap6BucketNtNtB7_6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.om)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbpG6u9KFjWn_8indexmap3map8IndexMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarEECs14kWLkQVSKO_14deltalake_core.exit218 unwind label %bb.eu

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbpG6u9KFjWn_8indexmap3map8IndexMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarEECs14kWLkQVSKO_14deltalake_core.exit218: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbpG6u9KFjWn_8indexmap5inner4CoreNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarEECs14kWLkQVSKO_14deltalake_core.exit.i214
  %i.ot = getelementptr inbounds nuw i8, ptr %1, i64 272 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !26033)
  call void @llvm.experimental.noalias.scope.decl(metadata !26036)
  %i.ou = load ptr, ptr %i.ot, align 16, !alias.scope !26039, !nonnull !4, !noundef !4
  %i.ov = atomicrmw sub ptr %i.ou, i64 1 release, align 8, !noalias !26039
  %i.ow = icmp eq i64 %i.ov, 1
  br i1 %i.ow, label %bb.fu, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize19MergeTaskParametersEEB1k_.exit194

bb.fu:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbpG6u9KFjWn_8indexmap3map8IndexMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarEECs14kWLkQVSKO_14deltalake_core.exit218
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize19MergeTaskParametersE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ot) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize19MergeTaskParametersEEB1k_.exit194 unwind label %bb.ew

bb.fv:                                            ; preds = %.body163
  %i.ox = getelementptr inbounds nuw i8, ptr %1, i64 480
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writer15PartitionWriterEBO_(ptr noalias noundef align 8 dereferenceable(1016) %i.ox) #40
          to label %bb.ax unwind label %bb.au

bb.fw:                                            ; preds = %bb.ax
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writer21PartitionWriterConfigEBO_(ptr noalias noundef align 8 dereferenceable(376) %i.z) #40
          to label %bb.bg unwind label %bb.au

bb.fx:                                            ; preds = %bb.bg
  %i.oy = getelementptr inbounds nuw i8, ptr %1, i64 352
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionEEB1j_(ptr noalias noundef align 8 dereferenceable(24) %i.oy) #40
          to label %.body unwind label %bb.au

bb.fy:                                            ; preds = %bb.bi
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs8CRAYtH5WmW_12futures_util6future5ready5ReadyINtNtB4_6result6ResultINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB1z_NtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs4tdlwR1I4n2_7parquet6errors12ParquetErrorENtNtB4_6marker4SendEL_EENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEB5P_(ptr noalias noundef align 16 dereferenceable(96) %i.al) #40
          to label %.body199 unwind label %bb.au

bb.fz:                                            ; preds = %.body199
  call void @llvm.experimental.noalias.scope.decl(metadata !26040)
  call void @llvm.experimental.noalias.scope.decl(metadata !26043)
  %i.oz = load ptr, ptr %i.am, align 16, !alias.scope !26046, !nonnull !4, !noundef !4
  %i.pa = atomicrmw sub ptr %i.oz, i64 1 release, align 8, !noalias !26046
  %i.pb = icmp eq i64 %i.pa, 1
  br i1 %i.pb, label %bb.ga, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit222

bb.ga:                                            ; preds = %bb.fz
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.am) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit222 unwind label %bb.au
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCINvMs7_NtNtCs14kWLkQVSKO_14deltalake_core10operations8optimizeNtB8_9MergePlan13rewrite_filesNCNvB4_11read_zorder0E0Bc_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 16 captures(none) dereferenceable(128) %0, ptr noundef nonnull align 16 %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 12 uses
  %i.b = alloca [40 x i8], align 8                ; 7 uses
  %i.c = alloca [40 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [40 x i8], align 8                ; 4 uses
  %i.f = alloca [136 x i8], align 8               ; 6 uses
  %i.g = alloca [96 x i8], align 16               ; 15 uses
  %.sroa.776.i = alloca [16 x i8], align 8        ; 5 uses
  %i.h = alloca [40 x i8], align 8                ; 9 uses
  %i.i = alloca [24 x i8], align 8                ; 8 uses
  %i.j = alloca [336 x i8], align 16              ; 6 uses
  %i.k = alloca [336 x i8], align 16              ; 8 uses
  %.sroa.851.i = alloca [40 x i8], align 8        ; 7 uses
  %i.l = alloca [336 x i8], align 16              ; 11 uses
  %i.m = alloca [112 x i8], align 16              ; 11 uses
  %i.n = alloca [24 x i8], align 8                ; 9 uses
  %i.o = alloca [336 x i8], align 16              ; 8 uses
  %.sroa.8.i = alloca [40 x i8], align 8          ; 7 uses
  %i.p = alloca [336 x i8], align 16              ; 11 uses
  %i.q = alloca [24 x i8], align 8                ; 5 uses
  %i.r = alloca [120 x i8], align 8               ; 9 uses
  %i.s = alloca [120 x i8], align 8               ; 5 uses
  %i.t = alloca [24 x i8], align 8                ; 4 uses
  %i.u = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.28.sroa.10.sroa.9 = alloca [48 x i8], align 16 ; 9 uses
  %.sroa.31 = alloca [16 x i8], align 16          ; 2 uses
  %i.v = alloca [16 x i8], align 8                ; 6 uses
  %i.w = alloca [16 x i8], align 8                ; 6 uses
  %i.x = alloca [16 x i8], align 8                ; 6 uses
  %i.y = alloca [32 x i8], align 8                ; 8 uses
  %i.z = alloca [24 x i8], align 8                ; 5 uses
  %i.aa = alloca [16 x i8], align 8               ; 6 uses
  %i.ab = alloca [16 x i8], align 8               ; 6 uses
  %i.ac = alloca [16 x i8], align 8               ; 6 uses
  %i.ad = alloca [32 x i8], align 8               ; 8 uses
  %.sroa.5343.sroa.2.sroa.2 = alloca [48 x i8], align 8 ; 2 uses
  %i.ae = alloca [96 x i8], align 16              ; 11 uses
  %.sroa.3317.sroa.6 = alloca [48 x i8], align 8  ; 2 uses
  %i.af = alloca [96 x i8], align 16              ; 11 uses
  %i.ag = alloca [96 x i8], align 16              ; 11 uses
  %i.ah = alloca [40 x i8], align 8               ; 3 uses
  %.sroa.8281.sroa.2.sroa.2.sroa.2 = alloca [48 x i8], align 8 ; 2 uses
  %.sroa.8275.sroa.7.sroa.6.sroa.6.sroa.6 = alloca [48 x i8], align 8 ; 6 uses
  %.sroa.6262.sroa.13 = alloca [48 x i8], align 8 ; 4 uses
  %.sroa.11510 = alloca [912 x i8], align 8       ; 4 uses
  %i.ai = alloca [24 x i8], align 8               ; 7 uses
  %i.aj = alloca [376 x i8], align 8              ; 7 uses
  %i.ak = alloca [16 x i8], align 8               ; 6 uses
  %i.al = alloca [1024 x i8], align 16            ; 19 uses
  %i.am = alloca [248 x i8], align 8              ; 5 uses
  %i.an = alloca [248 x i8], align 8              ; 6 uses
  %i.ao = alloca [72 x i8], align 8               ; 8 uses
  %i.ap = alloca [8 x i8], align 8                ; 9 uses
  %i.aq = alloca [384 x i8], align 16             ; 19 uses
  %.sroa.6259.sroa.13 = alloca [48 x i8], align 8 ; 8 uses
  %i.ar = alloca [376 x i8], align 16             ; 21 uses
  %i.as = alloca [24 x i8], align 8               ; 7 uses
  %i.at = alloca [96 x i8], align 16              ; 11 uses
  %i.au = alloca [16 x i8], align 8               ; 6 uses
  %i.av = alloca [16 x i8], align 8               ; 6 uses
  %i.aw = alloca [16 x i8], align 8               ; 6 uses
  %i.ax = alloca [32 x i8], align 8               ; 8 uses
  %i.ay = alloca [24 x i8], align 8               ; 5 uses
  %i.az = alloca [16 x i8], align 8               ; 6 uses
  %i.ba = alloca [16 x i8], align 8               ; 6 uses
  %i.bb = alloca [16 x i8], align 8               ; 6 uses
  %i.bc = alloca [32 x i8], align 8               ; 8 uses
  %i.bd = alloca [1920 x i8], align 16            ; 16 uses
  %i.be = alloca [16 x i8], align 16              ; 19 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 3361 ; 3 uses
  %i.bg = load i8, ptr %i.bf, align 1, !range !16239, !noundef !4
  switch i8 %i.bg, label %default.unreachable680 [
    i8 0, label %bb.f
    i8 1, label %bb.bj
    i8 2, label %bb.bk
    i8 3, label %bb.b
    i8 4, label %bb.c
    i8 5, label %bb.d
    i8 6, label %bb.e
  ]

default.unreachable680:                           ; preds = %bb.bm, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  br label %bb.bm

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  br label %bb.et

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  br label %bb.eg

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  br label %bb.fr

bb.f:                                             ; preds = %bb.a
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 3364 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 3363 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 3366
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 3365
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 3362 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 2096 ; 5 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 2088
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(5) %i.bl, i8 0, i64 5, i1 false)
  %i.bo = load ptr, ptr %i.bn, align 8, !nonnull !4, !noundef !4
  store ptr %i.bo, ptr %i.bm, align 16
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 2104 ; 5 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 2016
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.bp, ptr noundef nonnull align 16 dereferenceable(72) %i.bq, i64 72, i1 false)
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 1968
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.br, ptr noundef nonnull align 16 dereferenceable(32) %1, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be)
  store i8 1, ptr %i.bh, align 4
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bt = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bu = load <2 x ptr>, ptr %i.bs, align 16
  store <2 x ptr> %i.bu, ptr %i.be, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd)
  store i8 1, ptr %i.bi, align 1
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1920) %i.bd, ptr noundef nonnull align 16 dereferenceable(1920) %i.bv, i64 1920, i1 false)
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 3360
  %i.bx = load i8, ptr %i.bw, align 16, !range !34, !noundef !4
  %i.by = trunc nuw i8 %i.bx to i1
  %i.bz = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.ca = icmp samesign ult i64 %i.bz, 2
  br i1 %i.ca, label %bb.g, label %bb.n

bb.g:                                             ; preds = %bb.f
  %i.cb = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNvMs7_NtNtCs14kWLkQVSKO_14deltalake_core10operations8optimizeNtB9_9MergePlan13rewrite_files010___CALLSITE, i64 16) monotonic, align 8 ; 2 uses
  %i.cc = icmp ult i8 %i.cb, 3
  br i1 %i.cc, label %bb.j, label %bb.h, !prof !25908

bb.h:                                             ; preds = %bb.g
  %i.cd = invoke noundef i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNvMs7_NtNtCs14kWLkQVSKO_14deltalake_core10operations8optimizeNtB9_9MergePlan13rewrite_files010___CALLSITE) #42
          to label %bb.j unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.j:                                             ; preds = %bb.h, %bb.g
  %.sroa.0.0.i = phi i8 [ %i.cb, %bb.g ], [ %i.cd, %bb.h ] ; 2 uses
  %i.cf = icmp eq i8 %.sroa.0.0.i, 0
  br i1 %i.cf, label %bb.n, label %bb.l

bb.k:                                             ; preds = %bb.l
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.l:                                             ; preds = %bb.j
  %i.ch = load ptr, ptr @_RNvNCNvMs7_NtNtCs14kWLkQVSKO_14deltalake_core10operations8optimizeNtB9_9MergePlan13rewrite_files010___CALLSITE, align 8, !nonnull !4, !align !17, !noundef !4
  %i.ci = invoke noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ch, i8 noundef %.sroa.0.0.i)
          to label %bb.m unwind label %bb.k

bb.m:                                             ; preds = %bb.l
  br i1 %i.ci, label %bb.x, label %bb.n

bb.n:                                             ; preds = %bb.f, %bb.j, %bb.m
  %i.cj = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %.not = icmp eq i8 %i.cj, 0
  br i1 %.not, label %bb.o, label %bb.aa

bb.o:                                             ; preds = %bb.n
  %i.ck = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.cl = icmp ult i64 %i.ck, 6
  tail call void @llvm.assume(i1 %i.cl)
  %i.cm = icmp samesign ugt i64 %i.ck, 3
  br i1 %i.cm, label %bb.q, label %bb.aa

bb.p:                                             ; preds = %bb.q
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.q:                                             ; preds = %bb.o
  %i.co = load ptr, ptr @_RNvNCNvMs7_NtNtCs14kWLkQVSKO_14deltalake_core10operations8optimizeNtB9_9MergePlan13rewrite_files010___CALLSITE, align 8, !nonnull !4, !align !17, !noundef !4 ; 3 uses
  %i.cp = getelementptr i8, ptr %i.co, i64 32
  %.val113 = load ptr, ptr %i.cp, align 8, !nonnull !4, !noundef !4
  %i.cq = getelementptr i8, ptr %i.co, i64 40
  %.val114 = load i64, ptr %i.cq, align 8, !noundef !4
  store i64 4, ptr %i.ay, align 8, !alias.scope !26047
  %.sroa.6224.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store ptr %.val113, ptr %.sroa.6224.0..sroa_idx, align 8, !alias.scope !26047
  %.sroa.8225.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  store i64 %.val114, ptr %.sroa.8225.0..sroa_idx, align 8, !alias.scope !26047
  %i.cr = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %bb.r unwind label %bb.p       ; 2 uses

bb.r:                                             ; preds = %bb.q
  %i.cs = extractvalue { ptr, ptr } %i.cr, 0      ; 2 uses
  %i.ct = extractvalue { ptr, ptr } %i.cr, 1      ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  %i.cv = load ptr, ptr %i.cu, align 8, !invariant.load !4, !nonnull !4
  %i.cw = invoke noundef zeroext i1 %i.cv(ptr noundef %i.cs, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ay)
          to label %bb.t unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.t:                                             ; preds = %bb.r
  br i1 %i.cw, label %bb.u, label %bb.aa

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  %i.cy = load ptr, ptr @_RNvNCNvMs7_NtNtCs14kWLkQVSKO_14deltalake_core10operations8optimizeNtB9_9MergePlan13rewrite_files010___CALLSITE, align 8, !nonnull !4, !align !17, !noundef !4
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  store ptr %i.bp, ptr %i.au, align 8
  %.sroa.5227.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store ptr @_RNvXs_NtCsbpG6u9KFjWn_8indexmap3mapINtB4_8IndexMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.5227.0..sroa_idx, align 8
  store ptr @73, ptr %i.av, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store ptr %i.au, ptr %i.da, align 8
  store ptr %i.av, ptr %i.aw, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store ptr @74, ptr %i.db, align 8
  store i64 1, ptr %i.ax, align 8, !alias.scope !26051, !noalias !26054
  %.sroa.4.0..sroa_idx.i131 = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store ptr %i.aw, ptr %.sroa.4.0..sroa_idx.i131, align 8, !alias.scope !26051, !noalias !26054
  %.sroa.5.0..sroa_idx.i132 = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store i64 1, ptr %.sroa.5.0..sroa_idx.i132, align 8, !alias.scope !26051, !noalias !26054
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  store ptr %i.cz, ptr %i.dc, align 8, !alias.scope !26051, !noalias !26054
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %i.ay, i64 24, i1 false)
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.co, ptr noundef nonnull %i.cs, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ct, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.u, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ax)
          to label %bb.w unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  br label %bb.bi

bb.w:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  br label %bb.aa

bb.x:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc)
  %i.de = load ptr, ptr @_RNvNCNvMs7_NtNtCs14kWLkQVSKO_14deltalake_core10operations8optimizeNtB9_9MergePlan13rewrite_files010___CALLSITE, align 8, !nonnull !4, !align !17, !noundef !4
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  store ptr %i.bp, ptr %i.az, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store ptr @_RNvXs_NtCsbpG6u9KFjWn_8indexmap3mapINtB4_8IndexMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.5.0..sroa_idx, align 8
  store ptr @73, ptr %i.ba, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store ptr %i.az, ptr %i.dg, align 8
  store ptr %i.ba, ptr %i.bb, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store ptr @74, ptr %i.dh, align 8
  store i64 1, ptr %i.bc, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store ptr %i.bb, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  store i64 1, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  store ptr %i.df, ptr %.sroa.8.0..sroa_idx, align 8
  invoke fastcc void @_RNCNCINvMs7_NtNtCs14kWLkQVSKO_14deltalake_core10operations8optimizeNtBa_9MergePlan13rewrite_filesNCNvB6_11read_zorder0E0s1_0Be_(ptr noalias noundef readonly align 8 captures(address) dereferenceable(32) %i.bc)
          to label %bb.z unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.di = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  br label %bb.bi

bb.z:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.w, %bb.t, %bb.o, %bb.n, %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  %i.dj = getelementptr i8, ptr %1, i64 1976      ; 2 uses
  %.val117 = load ptr, ptr %i.dj, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.dk = getelementptr i8, ptr %1, i64 1984      ; 2 uses
  %.val118 = load i64, ptr %i.dk, align 16, !noundef !4
  %i.dl = getelementptr inbounds nuw [272 x i8], ptr %.val117, i64 %.val118
  store ptr %.val117, ptr %i.as, align 8, !alias.scope !26057, !noalias !26060
  %i.dm = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store ptr %i.dl, ptr %i.dm, align 8, !alias.scope !26057, !noalias !26060
  %i.dn = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store ptr %i.bp, ptr %i.dn, align 8, !alias.scope !26057, !noalias !26060
  invoke void @_RINvNtNtCsbvkFyIu7lgC_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNCINvMs7_NtNtB1E_10operations8optimizeNtB2K_9MergePlan13rewrite_filesNCNvB2G_11read_zorder0E00ENtB1A_6ActionINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB1E_6errors15DeltaTableErrorENCINvXso_B4o_IB4m_INtNtCs6Po7BT7Nknu_5alloc3vec3VecB48_EB58_EINtNtNtB4_6traits7collect12FromIteratorIB4m_B48_B58_EE9from_iterBQ_E0B5X_EB1E_(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %i.at, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.as)
          to label %_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNCINvMs7_NtNtB1p_10operations8optimizeNtB2v_9MergePlan13rewrite_filesNCNvB2r_11read_zorder0E00ENtNtNtBa_6traits8iterator8Iterator7collectINtNtBc_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtB1l_6ActionENtNtB1p_6errors15DeltaTableErrorEEB1p_.exit unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.do = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  br label %.body

_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNCINvMs7_NtNtB1p_10operations8optimizeNtB2v_9MergePlan13rewrite_filesNCNvB2r_11read_zorder0E00ENtNtNtBa_6traits8iterator8Iterator7collectINtNtBc_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtB1l_6ActionENtNtB1p_6errors15DeltaTableErrorEEB1p_.exit: ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  call void @llvm.experimental.noalias.scope.decl(metadata !26062)
  %i.dp = load i64, ptr %i.at, align 16, !range !212, !alias.scope !26065, !noalias !26062, !noundef !4 ; 2 uses
  %.not.i137 = icmp eq i64 %i.dp, -9223372036854775711
  %i.dq = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %.sroa.8230.sroa.0.0.copyload414 = load i64, ptr %i.dq, align 8, !alias.scope !26067 ; 2 uses
  %.sroa.8230.sroa.8.0..sroa_idx416 = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %.sroa.8230.sroa.8.0.copyload417 = load ptr, ptr %.sroa.8230.sroa.8.0..sroa_idx416, align 16, !alias.scope !26067 ; 2 uses
end_hunk_2
begin_hunk_3_@_RNCINvMs7_NtNtCs14kWLkQVSKO_14deltalake_core10operations8optimizeNtB8_9MergePlan13rewrite_filesNCNvB4_11read_zorder0E0Bc_:bb.a
  br label %.body158

bb.fe:                                            ; preds = %bb.fc
  store i64 %.sroa.8296.sroa.0.0.copyload455, ptr %i.mm, align 16
  store ptr %.sroa.8296.sroa.8.0.copyload458, ptr %.sroa.4293.0..sroa_idx, align 8
  store i64 %.sroa.8296.sroa.9.0.copyload461, ptr %.sroa.4293.sroa.4.0..sroa.4293.0..sroa_idx.sroa_idx, align 16
  store <2 x i64> %i.nc, ptr %.sroa.4293.sroa.5.0..sroa.4293.0..sroa_idx.sroa_idx, align 8
  %i.ng = getelementptr inbounds nuw i8, ptr %1, i64 2296 ; 2 uses
  %i.nh = load i64, ptr %i.ng, align 8, !noundef !4
  %i.ni = add i64 %i.nh, 1
  store i64 %i.ni, ptr %i.ng, align 8
  %i.nj = getelementptr inbounds nuw i8, ptr %1, i64 2304
  %i.nk = getelementptr inbounds nuw i8, ptr %1, i64 3416
  store ptr %i.nj, ptr %i.nk, align 8
  %.sroa.8313.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 3424
  store ptr %i.mm, ptr %.sroa.8313.0..sroa_idx, align 16
  %.sroa.10314.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 4144
  store i8 0, ptr %.sroa.10314.0..sroa_idx, align 16
  br label %bb.eg

bb.ff:                                            ; preds = %bb.fb
  %.sroa.10298.0..sroa_idx299 = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.28.sroa.10.sroa.9, ptr noundef nonnull align 16 dereferenceable(48) %.sroa.10298.0..sroa_idx299, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  br label %bb.fg

bb.fg:                                            ; preds = %bb.fi, %bb.ff
  %.sroa.10385.4 = phi i64 [ %i.lw, %bb.fi ], [ %i.na, %bb.ff ]
  %.sroa.18.4 = phi i64 [ %.sroa.3317.sroa.0.0.copyload, %bb.fi ], [ %.sroa.8296.sroa.0.0.copyload455, %bb.ff ]
  %.sroa.24.4 = phi ptr [ %.sroa.3317.sroa.2.0.copyload, %bb.fi ], [ %.sroa.8296.sroa.8.0.copyload458, %bb.ff ]
  %.sroa.26.4 = phi i64 [ %.sroa.3317.sroa.3.0.copyload, %bb.fi ], [ %.sroa.8296.sroa.9.0.copyload461, %bb.ff ]
  %i.nl = phi <2 x i64> [ %i.ly, %bb.fi ], [ %i.nc, %bb.ff ]
  %i.nm = getelementptr inbounds nuw i8, ptr %1, i64 3376
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(40) %i.nm)
          to label %bb.fj unwind label %bb.eq

.body158:                                         ; preds = %bb.fa, %bb.fd, %bb.ef, %bb.el, %bb.eo
  %.pn59.pn = phi { ptr, i32 } [ %i.mg, %bb.eo ], [ %i.mc, %bb.el ], [ %i.lu, %bb.ef ], [ %i.mz, %bb.fa ], [ %i.nd, %bb.fd ]
  %i.nn = getelementptr inbounds nuw i8, ptr %1, i64 3376
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(40) %i.nn) #40
          to label %bb.fp unwind label %bb.au

bb.fh:                                            ; preds = %bb.ew
  %i.no = getelementptr inbounds nuw i8, ptr %1, i64 3362
  store i8 0, ptr %i.no, align 2
  %i.np = getelementptr inbounds nuw i8, ptr %1, i64 2304
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1016) %i.mm, ptr noundef nonnull align 16 dereferenceable(1016) %i.np, i64 1016, i1 false)
  %.sroa.8339.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 5456
  store i8 0, ptr %.sroa.8339.0..sroa_idx, align 16
  br label %bb.fr

bb.fi:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs3_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writerNtBO_15PartitionWriter5write0EBU_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.28.sroa.10.sroa.9, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.3317.sroa.6, i64 48, i1 false)
  br label %bb.fg

bb.fj:                                            ; preds = %bb.ex, %bb.fg, %bb.hl
  %.sroa.10385.5 = phi i64 [ %i.oj, %bb.hl ], [ %.sroa.10385.4, %bb.fg ], [ -9223372036854775742, %bb.ex ] ; 2 uses
  %.sroa.18.5 = phi i64 [ %.sroa.3342.sroa.0.0.copyload, %bb.hl ], [ %.sroa.18.4, %bb.fg ], [ %.sroa.3288.sroa.0.0.copyload, %bb.ex ] ; 2 uses
  %.sroa.24.5 = phi ptr [ %.sroa.3342.sroa.3.0.copyload, %bb.hl ], [ %.sroa.24.4, %bb.fg ], [ %.sroa.3288.sroa.3.0.copyload, %bb.ex ] ; 2 uses
  %.sroa.26.5 = phi i64 [ %.sroa.3342.sroa.5.0.copyload, %bb.hl ], [ %.sroa.26.4, %bb.fg ], [ %i.mu, %bb.ex ] ; 2 uses
  %i.nq = phi <2 x i64> [ %i.ol, %bb.hl ], [ %i.nl, %bb.fg ], [ %i.mt, %bb.ex ] ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %1, i64 2000
  %.val99 = load ptr, ptr %i.nr, align 16         ; 5 uses
  %i.ns = getelementptr i8, ptr %1, i64 2008
  %.val100 = load ptr, ptr %i.ns, align 8, !nonnull !4, !align !17, !noundef !4 ; 5 uses
  %i.nt = load ptr, ptr %.val100, align 8, !invariant.load !4 ; 2 uses
  %.not.i.i164 = icmp eq ptr %i.nt, null
  br i1 %.not.i.i164, label %bb.fl, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val99) ]
  invoke void %i.nt(ptr noundef nonnull %.val99)
          to label %bb.fl unwind label %bb.fn

bb.fl:                                            ; preds = %bb.fk, %bb.fj
  %i.nu = getelementptr inbounds nuw i8, ptr %.val100, i64 8
  %i.nv = load i64, ptr %i.nu, align 8, !range !1123, !invariant.load !4 ; 2 uses
  %i.nw = icmp eq i64 %i.nv, 0
  br i1 %i.nw, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs4tdlwR1I4n2_7parquet6errors12ParquetErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %i.nx = getelementptr inbounds nuw i8, ptr %.val100, i64 16
  %i.ny = load i64, ptr %i.nx, align 8, !range !947, !invariant.load !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val99) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val99, i64 noundef range(i64 1, 0) %i.nv, i64 noundef range(i64 1, 536870913) %i.ny) #33
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs4tdlwR1I4n2_7parquet6errors12ParquetErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit

bb.fn:                                            ; preds = %bb.fk
  %i.nz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %.val100, i64 8
  %i.ob = load i64, ptr %i.oa, align 8, !range !1123, !invariant.load !4 ; 2 uses
  %i.oc = icmp eq i64 %i.ob, 0
  br i1 %i.oc, label %.body165, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.od = getelementptr inbounds nuw i8, ptr %.val100, i64 16
  %i.oe = load i64, ptr %i.od, align 8, !range !947, !invariant.load !4
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val99, i64 noundef range(i64 1, 0) %i.ob, i64 noundef range(i64 1, 536870913) %i.oe) #33
  br label %.body165

bb.fp:                                            ; preds = %bb.fv, %bb.fq, %bb.gj, %bb.gp, %bb.gm, %bb.fy, %bb.gy, %bb.ge, %bb.gc, %bb.eq, %bb.es, %.body158
  %.pn62 = phi { ptr, i32 } [ %i.pk, %bb.gj ], [ %i.mi, %bb.eq ], [ %.pn59.pn, %.body158 ], [ %i.qb, %bb.gp ], [ %i.qy, %bb.gy ], [ %i.pb, %bb.gc ], [ %i.pu, %bb.gm ], [ %i.ov, %bb.fy ], [ %i.ml, %bb.es ], [ %i.pd, %bb.ge ], [ %i.om, %bb.fv ], [ %i.oh, %bb.fq ]
  %i.of = getelementptr inbounds nuw i8, ptr %1, i64 2000
  %.val97 = load ptr, ptr %i.of, align 16
  %i.og = getelementptr i8, ptr %1, i64 2008
  %.val98 = load ptr, ptr %i.og, align 8, !nonnull !4, !align !17, !noundef !4
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs4tdlwR1I4n2_7parquet6errors12ParquetErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core(ptr %.val97, ptr nonnull %.val98) #40
          to label %.body165 unwind label %bb.au

bb.fq:                                            ; preds = %bb.fr
  %i.oh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs3_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writerNtBO_15PartitionWriter5close0EBU_(ptr noundef nonnull align 8 %i.oi) #40
          to label %bb.fp unwind label %bb.au

bb.fr:                                            ; preds = %bb.e, %bb.fh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  %i.oi = getelementptr inbounds nuw i8, ptr %1, i64 3376 ; 3 uses
  invoke fastcc void @_RNCNvMs3_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writerNtB7_15PartitionWriter5close0Bd_(ptr noalias noundef align 16 captures(none) dereferenceable(96) %i.ae, ptr noundef nonnull align 8 %i.oi, ptr noalias noundef align 8 dereferenceable(32) %2)
          to label %bb.fs unwind label %bb.fq

bb.fs:                                            ; preds = %bb.fr
  %i.oj = load i64, ptr %i.ae, align 16, !range !1238, !noundef !4 ; 3 uses
  %i.ok = icmp eq i64 %i.oj, -9223372036854775710
  br i1 %i.ok, label %bb.ft, label %bb.fu

bb.ft:                                            ; preds = %bb.fs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  store i64 -9223372036854775807, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  br label %common.ret

bb.fu:                                            ; preds = %bb.fs
  %.sroa.3342.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.sroa.3342.sroa.0.0.copyload = load i64, ptr %.sroa.3342.0..sroa_idx, align 8 ; 2 uses
  %.sroa.3342.sroa.3.0..sroa.3342.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %.sroa.3342.sroa.3.0.copyload = load ptr, ptr %.sroa.3342.sroa.3.0..sroa.3342.0..sroa_idx.sroa_idx, align 16 ; 5 uses
  %.sroa.3342.sroa.5.0..sroa.3342.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %.sroa.3342.sroa.5.0.copyload = load i64, ptr %.sroa.3342.sroa.5.0..sroa.3342.0..sroa_idx.sroa_idx, align 8 ; 3 uses
  %.sroa.5343.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.ol = load <2 x i64>, ptr %.sroa.5343.0..sroa_idx, align 16
  %.sroa.5343.sroa.2.sroa.2.0..sroa.5343.sroa.2.0..sroa.5343.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5343.sroa.2.sroa.2, ptr noundef nonnull align 16 dereferenceable(48) %.sroa.5343.sroa.2.sroa.2.0..sroa.5343.sroa.2.0..sroa.5343.0..sroa_idx.sroa_idx.sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs3_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writerNtBO_15PartitionWriter5close0EBU_(ptr noundef nonnull align 8 %i.oi)
          to label %bb.fw unwind label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.om = landingpad { ptr, i32 }
          cleanup
  br label %bb.fp

bb.fw:                                            ; preds = %bb.fu
  %.not.i167 = icmp eq i64 %i.oj, -9223372036854775711
  br i1 %.not.i167, label %bb.fx, label %bb.hl

bb.fx:                                            ; preds = %bb.fw
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3342.sroa.3.0.copyload) ]
  %i.on = icmp ult i64 %.sroa.3342.sroa.5.0.copyload, 33909456017848441
  call void @llvm.assume(i1 %i.on)
  %i.oo = getelementptr inbounds nuw [272 x i8], ptr %.sroa.3342.sroa.3.0.copyload, i64 %.sroa.3342.sroa.5.0.copyload
  %i.op = getelementptr inbounds nuw i8, ptr %1, i64 2200 ; 2 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %1, i64 2224 ; 2 uses
  %i.or = getelementptr inbounds nuw i8, ptr %1, i64 2232
  %i.os = getelementptr inbounds nuw i8, ptr %1, i64 2240 ; 2 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %1, i64 2248
  %i.ou = getelementptr inbounds nuw i8, ptr %1, i64 2176 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !26188
  store ptr %.sroa.3342.sroa.3.0.copyload, ptr %i.a, align 8, !alias.scope !26192, !noalias !26196
  %.sroa.2325.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.sroa.3342.sroa.3.0.copyload, ptr %.sroa.2325.0..sroa_idx, align 8, !alias.scope !26192, !noalias !26196
  %.sroa.3326.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %.sroa.3342.sroa.0.0.copyload, ptr %.sroa.3326.0..sroa_idx, align 8, !alias.scope !26192, !noalias !26196
  %.sroa.4327.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.oo, ptr %.sroa.4327.0..sroa_idx, align 8, !alias.scope !26192, !noalias !26196
  %.sroa.5328.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.op, ptr %.sroa.5328.0..sroa_idx, align 8, !alias.scope !26192, !noalias !26196
  %.sroa.5328.sroa.2.0..sroa.5328.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %i.oq, ptr %.sroa.5328.sroa.2.0..sroa.5328.0..sroa_idx.sroa_idx, align 8, !alias.scope !26192, !noalias !26196
  %.sroa.5328.sroa.3.0..sroa.5328.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.or, ptr %.sroa.5328.sroa.3.0..sroa.5328.0..sroa_idx.sroa_idx, align 8, !alias.scope !26192, !noalias !26196
  %.sroa.5328.sroa.4.0..sroa.5328.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %i.os, ptr %.sroa.5328.sroa.4.0..sroa.5328.0..sroa_idx.sroa_idx, align 8, !alias.scope !26192, !noalias !26196
  %.sroa.5328.sroa.5.0..sroa.5328.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr %i.ot, ptr %.sroa.5328.sroa.5.0..sroa.5328.0..sroa_idx.sroa_idx, align 8, !alias.scope !26192, !noalias !26196
  invoke void @_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB6_3VecNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionEINtB4_10SpecExtendBT_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterNtNtBV_7actions3AddENCNCINvMs7_NtNtBZ_10operations8optimizeNtB3U_9MergePlan13rewrite_filesNCNvB3Q_11read_zorder0E0s0_0EE11spec_extendBZ_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ou, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.a)
          to label %bb.fz unwind label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.ov = landingpad { ptr, i32 }
          cleanup
  br label %bb.fp

bb.fz:                                            ; preds = %bb.fx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !26188
  %i.ow = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.ox = icmp samesign ult i64 %i.ow, 2
  br i1 %i.ox, label %bb.ga, label %bb.gh

bb.ga:                                            ; preds = %bb.fz
  %i.oy = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNvMs7_NtNtCs14kWLkQVSKO_14deltalake_core10operations8optimizeNtB9_9MergePlan13rewrite_files0s_10___CALLSITE, i64 16) monotonic, align 8 ; 2 uses
  %i.oz = icmp ult i8 %i.oy, 3
  br i1 %i.oz, label %bb.gd, label %bb.gb, !prof !25908

bb.gb:                                            ; preds = %bb.ga
  %i.pa = invoke noundef i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNvMs7_NtNtCs14kWLkQVSKO_14deltalake_core10operations8optimizeNtB9_9MergePlan13rewrite_files0s_10___CALLSITE) #42
          to label %bb.gd unwind label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  %i.pb = landingpad { ptr, i32 }
          cleanup
  br label %bb.fp

bb.gd:                                            ; preds = %bb.gb, %bb.ga
  %.sroa.0.0.i170 = phi i8 [ %i.oy, %bb.ga ], [ %i.pa, %bb.gb ] ; 2 uses
  %i.pc = icmp eq i8 %.sroa.0.0.i170, 0
  br i1 %i.pc, label %bb.gh, label %bb.gf

bb.ge:                                            ; preds = %bb.gf
  %i.pd = landingpad { ptr, i32 }
          cleanup
  br label %bb.fp

bb.gf:                                            ; preds = %bb.gd
  %i.pe = load ptr, ptr @_RNvNCNvMs7_NtNtCs14kWLkQVSKO_14deltalake_core10operations8optimizeNtB9_9MergePlan13rewrite_files0s_10___CALLSITE, align 8, !nonnull !4, !align !17, !noundef !4
  %i.pf = invoke noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.pe, i8 noundef %.sroa.0.0.i170)
          to label %bb.gg unwind label %bb.ge

bb.gg:                                            ; preds = %bb.gf
  br i1 %i.pf, label %bb.gx, label %bb.gh

bb.gh:                                            ; preds = %bb.fz, %bb.gd, %bb.gg
  %i.pg = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %.not661 = icmp eq i8 %i.pg, 0
  br i1 %.not661, label %bb.gi, label %bb.gr

bb.gi:                                            ; preds = %bb.gh
  %i.ph = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.pi = icmp ult i64 %i.ph, 6
  call void @llvm.assume(i1 %i.pi)
  %i.pj = icmp samesign ugt i64 %i.ph, 3
  br i1 %i.pj, label %bb.gk, label %bb.gr

bb.gj:                                            ; preds = %bb.gk
  %i.pk = landingpad { ptr, i32 }
          cleanup
  br label %bb.fp

bb.gk:                                            ; preds = %bb.gi
  %i.pl = load ptr, ptr @_RNvNCNvMs7_NtNtCs14kWLkQVSKO_14deltalake_core10operations8optimizeNtB9_9MergePlan13rewrite_files0s_10___CALLSITE, align 8, !nonnull !4, !align !17, !noundef !4 ; 3 uses
  %i.pm = getelementptr i8, ptr %i.pl, i64 32
  %.val111 = load ptr, ptr %i.pm, align 8, !nonnull !4, !noundef !4
  %i.pn = getelementptr i8, ptr %i.pl, i64 40
  %.val112 = load i64, ptr %i.pn, align 8, !noundef !4
  store i64 4, ptr %i.z, align 8, !alias.scope !26197
  %.sroa.6376.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %.val111, ptr %.sroa.6376.0..sroa_idx, align 8, !alias.scope !26197
  %.sroa.8377.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store i64 %.val112, ptr %.sroa.8377.0..sroa_idx, align 8, !alias.scope !26197
  %i.po = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %bb.gl unwind label %bb.gj     ; 2 uses

bb.gl:                                            ; preds = %bb.gk
  %i.pp = extractvalue { ptr, ptr } %i.po, 0      ; 2 uses
  %i.pq = extractvalue { ptr, ptr } %i.po, 1      ; 2 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pq, i64 24
  %i.ps = load ptr, ptr %i.pr, align 8, !invariant.load !4, !nonnull !4
  %i.pt = invoke noundef zeroext i1 %i.ps(ptr noundef %i.pp, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.z)
          to label %bb.gn unwind label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  %i.pu = landingpad { ptr, i32 }
          cleanup
  br label %bb.fp

bb.gn:                                            ; preds = %bb.gl
  br i1 %i.pt, label %bb.go, label %bb.gr

bb.go:                                            ; preds = %bb.gn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  %i.pv = load ptr, ptr @_RNvNCNvMs7_NtNtCs14kWLkQVSKO_14deltalake_core10operations8optimizeNtB9_9MergePlan13rewrite_files0s_10___CALLSITE, align 8, !nonnull !4, !align !17, !noundef !4
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pv, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  %i.px = getelementptr inbounds nuw i8, ptr %1, i64 2104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store ptr %i.px, ptr %i.v, align 8
  %.sroa.5379.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr @_RNvXs_NtCsbpG6u9KFjWn_8indexmap3mapINtB4_8IndexMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.5379.0..sroa_idx, align 8
  store ptr @77, ptr %i.w, align 8
  %i.py = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %i.v, ptr %i.py, align 8
  store ptr %i.w, ptr %i.x, align 8
  %i.pz = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr @74, ptr %i.pz, align 8
  store i64 1, ptr %i.y, align 8, !alias.scope !26201, !noalias !26204
  %.sroa.4.0..sroa_idx.i178 = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %i.x, ptr %.sroa.4.0..sroa_idx.i178, align 8, !alias.scope !26201, !noalias !26204
  %.sroa.5.0..sroa_idx.i179 = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store i64 1, ptr %.sroa.5.0..sroa_idx.i179, align 8, !alias.scope !26201, !noalias !26204
  %i.qa = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  store ptr %i.pw, ptr %i.qa, align 8, !alias.scope !26201, !noalias !26204
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false)
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.pl, ptr noundef nonnull %i.pp, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.pq, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.t, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.y)
          to label %bb.gq unwind label %bb.gp

bb.gp:                                            ; preds = %bb.go
  %i.qb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  br label %bb.fp

bb.gq:                                            ; preds = %bb.go
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  br label %bb.gr

bb.gr:                                            ; preds = %bb.gq, %bb.gn, %bb.gi, %bb.gh, %bb.gz
  %i.qc = getelementptr inbounds nuw i8, ptr %1, i64 3366 ; 2 uses
  store i8 0, ptr %i.qc, align 2
  %i.qd = load <2 x i64>, ptr %i.ou, align 16     ; 2 uses
  %.sroa.5560.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 2192
  %.sroa.5560.0.copyload = load i64, ptr %.sroa.5560.0..sroa_idx, align 16 ; 2 uses
  %.sroa.0551.0.copyload = load i64, ptr %i.op, align 8 ; 2 uses
  %.sroa.4552.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 2208
  %.sroa.4552.0.copyload = load ptr, ptr %.sroa.4552.0..sroa_idx, align 16 ; 2 uses
  %.sroa.5553.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 2216
  %.sroa.5553.0.copyload = load i64, ptr %.sroa.5553.0..sroa_idx, align 8 ; 2 uses
  %i.qe = load <2 x i64>, ptr %i.oq, align 16     ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.28.sroa.10.sroa.9, ptr noundef nonnull align 16 dereferenceable(48) %i.os, i64 48, i1 false)
  %.sroa.9557.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 2288
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.31, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.9557.0..sroa_idx, i64 16, i1 false)
  %i.qf = getelementptr inbounds nuw i8, ptr %1, i64 2000
  %.val = load ptr, ptr %i.qf, align 16           ; 5 uses
  %i.qg = getelementptr i8, ptr %1, i64 2008
  %.val96 = load ptr, ptr %i.qg, align 8, !nonnull !4, !align !17, !noundef !4 ; 5 uses
  %i.qh = load ptr, ptr %.val96, align 8, !invariant.load !4 ; 2 uses
  %.not.i.i180 = icmp eq ptr %i.qh, null
  br i1 %.not.i.i180, label %bb.gt, label %bb.gs

bb.gs:                                            ; preds = %bb.gr
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.qh(ptr noundef nonnull %.val)
          to label %bb.gt unwind label %bb.gv

bb.gt:                                            ; preds = %bb.gs, %bb.gr
  %i.qi = getelementptr inbounds nuw i8, ptr %.val96, i64 8
  %i.qj = load i64, ptr %i.qi, align 8, !range !1123, !invariant.load !4 ; 2 uses
  %i.qk = icmp eq i64 %i.qj, 0
  br i1 %i.qk, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs4tdlwR1I4n2_7parquet6errors12ParquetErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit184, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  %i.ql = getelementptr inbounds nuw i8, ptr %.val96, i64 16
  %i.qm = load i64, ptr %i.ql, align 8, !range !947, !invariant.load !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.qj, i64 noundef range(i64 1, 536870913) %i.qm) #33
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs4tdlwR1I4n2_7parquet6errors12ParquetErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit184

bb.gv:                                            ; preds = %bb.gs
  %i.qn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.qo = getelementptr inbounds nuw i8, ptr %.val96, i64 8
  %i.qp = load i64, ptr %i.qo, align 8, !range !1123, !invariant.load !4 ; 2 uses
  %i.qq = icmp eq i64 %i.qp, 0
  br i1 %i.qq, label %.body165, label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  %i.qr = getelementptr inbounds nuw i8, ptr %.val96, i64 16
  %i.qs = load i64, ptr %i.qr, align 8, !range !947, !invariant.load !4
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.qp, i64 noundef range(i64 1, 536870913) %i.qs) #33
  br label %.body165

bb.gx:                                            ; preds = %bb.gg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  %i.qt = load ptr, ptr @_RNvNCNvMs7_NtNtCs14kWLkQVSKO_14deltalake_core10operations8optimizeNtB9_9MergePlan13rewrite_files0s_10___CALLSITE, align 8, !nonnull !4, !align !17, !noundef !4
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qt, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  %i.qv = getelementptr inbounds nuw i8, ptr %1, i64 2104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  store ptr %i.qv, ptr %i.aa, align 8
  %.sroa.5371.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr @_RNvXs_NtCsbpG6u9KFjWn_8indexmap3mapINtB4_8IndexMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.5371.0..sroa_idx, align 8
  store ptr @77, ptr %i.ab, align 8
  %i.qw = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %i.aa, ptr %i.qw, align 8
  store ptr %i.ab, ptr %i.ac, align 8
  %i.qx = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr @74, ptr %i.qx, align 8
  store i64 1, ptr %i.ad, align 8
end_hunk_3
begin_hunk_4_@_RNCNvMs3_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writerNtB7_15PartitionWriter5write0Bd_:bb.a
bb.bs:                                            ; preds = %bb.br
  %i.gb = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.bt:                                            ; preds = %.body.i
  %i.gc = getelementptr inbounds nuw i8, ptr %1, i64 152
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs4tdlwR1I4n2_7parquet5arrow12async_writer16AsyncArrowWriterNtNtBJ_5store19ParquetObjectWriterEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(520) %i.gc) #40
          to label %bb.at unwind label %bb.aq, !noalias !29714

.body45.i:                                        ; preds = %bb.bu, %bb.ce, %bb.cf, %bb.at, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.gd = phi ptr [ %i.cu, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit.i ], [ %i.ei, %bb.at ], [ %i.gg, %bb.ce ], [ %i.gg, %bb.bu ], [ %i.gg, %bb.cf ]
  %i.ge = phi ptr [ %i.cv, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit.i ], [ %i.ej, %bb.at ], [ %i.gh, %bb.ce ], [ %i.gh, %bb.bu ], [ %i.gh, %bb.cf ]
  %.pn29.pn.i = phi { ptr, i32 } [ %.pn.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit.i ], [ %.pn24.pn.i, %bb.at ], [ %i.gx, %bb.ce ], [ %i.gf, %bb.bu ], [ %i.gx, %bb.cf ]
  store i8 2, ptr %i.gd, align 1, !noalias !29698
  br label %.body

bb.bu:                                            ; preds = %bb.bv
  %i.gf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !29698
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_writerINtBO_16AsyncArrowWriterNtNtBO_5store19ParquetObjectWriterE5write0ECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 %i.gi) #40
          to label %.body45.i unwind label %bb.aq, !noalias !29714

bb.bv:                                            ; preds = %bb.z, %bb.ax
  %i.gg = phi ptr [ %i.ct, %bb.z ], [ %i.cu, %bb.ax ] ; 6 uses
  %i.gh = phi ptr [ %i.cs, %bb.z ], [ %i.cv, %bb.ax ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !29698
  %i.gi = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  invoke fastcc void @_RNCNvMs0_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_writerINtB7_16AsyncArrowWriterNtNtB7_5store19ParquetObjectWriterE5write0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.b, ptr noundef nonnull align 8 %i.gi, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.bw unwind label %bb.bu, !noalias !29714

bb.bw:                                            ; preds = %bb.bv
  %i.gj = load i64, ptr %i.b, align 8, !range !25639, !noalias !29698, !noundef !4 ; 3 uses
  %i.gk = icmp eq i64 %i.gj, 9
  br i1 %i.gk, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !29698
  br label %bb.ch

bb.by:                                            ; preds = %bb.bw
  %.sroa.3106.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3106.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3106.0..sroa_idx.i, i64 24, i1 false), !noalias !29698
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !29698
  %i.gl = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.gm = load i8, ptr %i.gl, align 8, !range !3169, !noalias !29698, !noundef !4
  %cond.i39.i = icmp eq i8 %i.gm, 3
  br i1 %cond.i39.i, label %bb.bz, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_writerINtBO_16AsyncArrowWriterNtNtBO_5store19ParquetObjectWriterE5write0ECs14kWLkQVSKO_14deltalake_core.exit47.i

bb.bz:                                            ; preds = %bb.by
  %i.gn = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.go = load i8, ptr %i.gn, align 8, !range !3169, !noalias !29698, !noundef !4
  %cond.i.i40.i = icmp eq i8 %i.go, 3
  br i1 %cond.i.i40.i, label %bb.ca, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_writerINtBO_16AsyncArrowWriterNtNtBO_5store19ParquetObjectWriterE5write0ECs14kWLkQVSKO_14deltalake_core.exit47.i

bb.ca:                                            ; preds = %bb.bz
  %i.gp = getelementptr inbounds nuw i8, ptr %1, i64 168
  %.val.i.i41.i = load ptr, ptr %i.gp, align 8, !noalias !29698 ; 5 uses
  %i.gq = getelementptr i8, ptr %1, i64 176
  %.val1.i.i42.i = load ptr, ptr %i.gq, align 8, !noalias !29698, !nonnull !4, !align !17, !noundef !4 ; 5 uses
  %i.gr = load ptr, ptr %.val1.i.i42.i, align 8, !invariant.load !4, !noalias !29714 ; 2 uses
  %.not.i.i.i.i43.i = icmp eq ptr %i.gr, null
  br i1 %.not.i.i.i.i43.i, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i41.i) ]
  invoke void %i.gr(ptr noundef nonnull %.val.i.i41.i)
          to label %bb.cc unwind label %bb.ce, !noalias !29714

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %i.gs = getelementptr inbounds nuw i8, ptr %.val1.i.i42.i, i64 8
  %i.gt = load i64, ptr %i.gs, align 8, !range !1123, !invariant.load !4, !noalias !29714 ; 2 uses
  %i.gu = icmp eq i64 %i.gt, 0
  br i1 %i.gu, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_writerINtBO_16AsyncArrowWriterNtNtBO_5store19ParquetObjectWriterE5write0ECs14kWLkQVSKO_14deltalake_core.exit47.i, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.gv = getelementptr inbounds nuw i8, ptr %.val1.i.i42.i, i64 16
  %i.gw = load i64, ptr %i.gv, align 8, !range !947, !invariant.load !4, !noalias !29714
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i41.i) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i41.i, i64 noundef range(i64 1, 0) %i.gt, i64 noundef range(i64 1, 536870913) %i.gw) #33, !noalias !29714
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_writerINtBO_16AsyncArrowWriterNtNtBO_5store19ParquetObjectWriterE5write0ECs14kWLkQVSKO_14deltalake_core.exit47.i

bb.ce:                                            ; preds = %bb.cb
  %i.gx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %.val1.i.i42.i, i64 8
  %i.gz = load i64, ptr %i.gy, align 8, !range !1123, !invariant.load !4, !noalias !29714 ; 2 uses
  %i.ha = icmp eq i64 %i.gz, 0
  br i1 %i.ha, label %.body45.i, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.hb = getelementptr inbounds nuw i8, ptr %.val1.i.i42.i, i64 16
  %i.hc = load i64, ptr %i.hb, align 8, !range !947, !invariant.load !4, !noalias !29714
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i41.i, i64 noundef range(i64 1, 0) %i.gz, i64 noundef range(i64 1, 536870913) %i.hc) #33, !noalias !29714
  br label %.body45.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_writerINtBO_16AsyncArrowWriterNtNtBO_5store19ParquetObjectWriterE5write0ECs14kWLkQVSKO_14deltalake_core.exit47.i: ; preds = %bb.cd, %bb.cc, %bb.bz, %bb.by
  %.not.i48.i = icmp eq i64 %i.gj, 8
  br i1 %.not.i48.i, label %bb.ci, label %bb.cg

bb.cg:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_writerINtBO_16AsyncArrowWriterNtNtBO_5store19ParquetObjectWriterE5write0ECs14kWLkQVSKO_14deltalake_core.exit47.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.8111.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3106.i, i64 24, i1 false), !noalias !29698
  br label %bb.ci

bb.ch:                                            ; preds = %bb.bd, %bb.bx
  %i.hd = phi ptr [ %i.eq, %bb.bd ], [ %i.gg, %bb.bx ]
  %.sink.i.ph = phi i8 [ 3, %bb.bd ], [ 4, %bb.bx ]
  store i8 %.sink.i.ph, ptr %i.hd, align 1, !noalias !29698
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8111.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3106.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.871.sroa.8.i)
  store i64 -9223372036854775710, ptr %0, align 16
  br label %common.ret

bb.ci:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_writerINtBO_16AsyncArrowWriterNtNtBO_5store19ParquetObjectWriterE5write0ECs14kWLkQVSKO_14deltalake_core.exit47.i, %bb.cg, %bb.bp, %bb.am
  %i.he = phi ptr [ %i.ea, %bb.am ], [ %i.gg, %bb.cg ], [ %i.eq, %bb.bp ], [ %i.gg, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_writerINtBO_16AsyncArrowWriterNtNtBO_5store19ParquetObjectWriterE5write0ECs14kWLkQVSKO_14deltalake_core.exit47.i ]
  %i.hf = phi ptr [ %i.eb, %bb.am ], [ %i.gh, %bb.cg ], [ %i.er, %bb.bp ], [ %i.gh, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_writerINtBO_16AsyncArrowWriterNtNtBO_5store19ParquetObjectWriterE5write0ECs14kWLkQVSKO_14deltalake_core.exit47.i ]
  %.not.i61 = phi i1 [ false, %bb.am ], [ false, %bb.cg ], [ true, %bb.bp ], [ true, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_writerINtBO_16AsyncArrowWriterNtNtBO_5store19ParquetObjectWriterE5write0ECs14kWLkQVSKO_14deltalake_core.exit47.i ]
  %.sroa.0109.1.i = phi i64 [ -9223372036854775742, %bb.am ], [ -9223372036854775742, %bb.cg ], [ -9223372036854775711, %bb.bp ], [ -9223372036854775711, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_writerINtBO_16AsyncArrowWriterNtNtBO_5store19ParquetObjectWriterE5write0ECs14kWLkQVSKO_14deltalake_core.exit47.i ]
  %.sroa.5110.1.i = phi i64 [ %.sroa.5110.0.i, %bb.am ], [ %i.gj, %bb.cg ], [ undef, %bb.bp ], [ undef, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_writerINtBO_16AsyncArrowWriterNtNtBO_5store19ParquetObjectWriterE5write0ECs14kWLkQVSKO_14deltalake_core.exit47.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.10104, ptr noundef nonnull align 16 dereferenceable(24) %.sroa.8111.i, i64 24, i1 false)
  store i8 1, ptr %i.he, align 1, !noalias !29698
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8111.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3106.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.871.sroa.8.i)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs2_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writerNtBO_15LazyArrowWriter11write_batch0EBU_(ptr noundef nonnull align 8 %i.hf)
          to label %bb.cl unwind label %bb.ck

bb.cj:                                            ; preds = %bb.ck, %.body
  %.pn20 = phi { ptr, i32 } [ %i.hh, %bb.ck ], [ %eh.lpad-body, %.body ]
  %i.hg = getelementptr inbounds nuw i8, ptr %1, i64 72
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(40) %i.hg) #40
          to label %bb.l unwind label %bb.v

bb.ck:                                            ; preds = %bb.ci
  %i.hh = landingpad { ptr, i32 }
          cleanup
  br label %bb.cj

bb.cl:                                            ; preds = %bb.ci
  br i1 %.not.i61, label %bb.cm, label %bb.dz

bb.cm:                                            ; preds = %bb.cl
  %i.hi = getelementptr inbounds nuw i8, ptr %1, i64 72
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(40) %i.hi)
          to label %bb.co unwind label %bb.cn

bb.cn:                                            ; preds = %bb.dz, %bb.cm
  %i.hj = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.co:                                            ; preds = %bb.cm
  %i.hk = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.hl = load ptr, ptr %i.hk, align 8, !nonnull !4, !align !17, !noundef !4 ; 4 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 352
  %i.hn = load i64, ptr %i.hm, align 8, !noundef !4 ; 2 uses
  %.not7 = icmp eq i64 %i.hn, 0
  br i1 %.not7, label %bb.cr, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hl, i64 392
  %i.hp = load i64, ptr %i.ho, align 8, !range !48, !alias.scope !29723, !noundef !4
  %.not.i62 = icmp eq i64 %i.hp, 2
  br i1 %.not.i62, label %bb.ct, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hl, i64 616
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hl, i64 672
  %i.hs = load i64, ptr %i.hr, align 8, !alias.scope !29723, !noundef !4
  %i.ht = invoke noundef i64 @_RNvMs_NtNtCs4tdlwR1I4n2_7parquet5arrow12arrow_writerINtB4_11ArrowWriterINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE16in_progress_sizeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(296) %i.hq)
          to label %.noexc63 unwind label %bb.cs

.noexc63:                                         ; preds = %bb.cq
  %i.hu = add i64 %i.ht, %i.hs
  br label %bb.ct

bb.cr:                                            ; preds = %bb.dv, %bb.ct, %bb.co
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.pre161 = load i64, ptr %.phi.trans.insert, align 8, !alias.scope !29726
  %.phi.trans.insert162 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.pre163 = load i64, ptr %.phi.trans.insert162, align 8, !alias.scope !29726
  br label %bb.q

bb.cs:                                            ; preds = %bb.cq
  %i.hv = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.ct:                                            ; preds = %bb.cp, %.noexc63
  %.sroa.0.0.i = phi i64 [ %i.hu, %.noexc63 ], [ 0, %bb.cp ] ; 2 uses
  store i64 %.sroa.0.0.i, ptr %i.x, align 8
  %.not8 = icmp ult i64 %.sroa.0.0.i, %i.hn
  br i1 %.not8, label %bb.cr, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.hw = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.hx = icmp samesign ult i64 %i.hw, 2
  br i1 %i.hx, label %bb.cv, label %bb.dc

bb.cv:                                            ; preds = %bb.cu
  %i.hy = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNvMs3_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writerNtB9_15PartitionWriter5write010___CALLSITE, i64 16) monotonic, align 8 ; 2 uses
  %i.hz = icmp ult i8 %i.hy, 3
  br i1 %i.hz, label %bb.cy, label %bb.cw, !prof !25908

bb.cw:                                            ; preds = %bb.cv
  %i.ia = invoke noundef i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNvMs3_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writerNtB9_15PartitionWriter5write010___CALLSITE) #42
          to label %bb.cy unwind label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.ib = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.cy:                                            ; preds = %bb.cw, %bb.cv
  %.sroa.0.0.i65 = phi i8 [ %i.hy, %bb.cv ], [ %i.ia, %bb.cw ] ; 2 uses
  %i.ic = icmp eq i8 %.sroa.0.0.i65, 0
  br i1 %i.ic, label %bb.dc, label %bb.da

bb.cz:                                            ; preds = %bb.da
  %i.id = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.da:                                            ; preds = %bb.cy
  %i.ie = load ptr, ptr @_RNvNCNvMs3_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writerNtB9_15PartitionWriter5write010___CALLSITE, align 8, !nonnull !4, !align !17, !noundef !4
  %i.if = invoke noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ie, i8 noundef %.sroa.0.0.i65)
          to label %bb.db unwind label %bb.cz

bb.db:                                            ; preds = %bb.da
  br i1 %i.if, label %bb.dn, label %bb.dc

bb.dc:                                            ; preds = %bb.cu, %bb.cy, %bb.db
  %i.ig = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %.not = icmp eq i8 %i.ig, 0
  br i1 %.not, label %bb.dd, label %bb.dm

bb.dd:                                            ; preds = %bb.dc
  %i.ih = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.ii = icmp ult i64 %i.ih, 6
  call void @llvm.assume(i1 %i.ii)
  %i.ij = icmp samesign ugt i64 %i.ih, 3
  br i1 %i.ij, label %bb.df, label %bb.dm

bb.de:                                            ; preds = %bb.df
  %i.ik = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.df:                                            ; preds = %bb.dd
  %i.il = load ptr, ptr @_RNvNCNvMs3_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writerNtB9_15PartitionWriter5write010___CALLSITE, align 8, !nonnull !4, !align !17, !noundef !4 ; 3 uses
  %i.im = getelementptr i8, ptr %i.il, i64 32
  %.val39 = load ptr, ptr %i.im, align 8, !nonnull !4, !noundef !4
  %i.in = getelementptr i8, ptr %i.il, i64 40
  %.val40 = load i64, ptr %i.in, align 8, !noundef !4
  store i64 4, ptr %i.s, align 8, !alias.scope !29731
  %.sroa.6124.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %.val39, ptr %.sroa.6124.0..sroa_idx, align 8, !alias.scope !29731
  %.sroa.8125.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i64 %.val40, ptr %.sroa.8125.0..sroa_idx, align 8, !alias.scope !29731
  %i.io = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %bb.dg unwind label %bb.de     ; 2 uses

bb.dg:                                            ; preds = %bb.df
  %i.ip = extractvalue { ptr, ptr } %i.io, 0      ; 2 uses
  %i.iq = extractvalue { ptr, ptr } %i.io, 1      ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 24
  %i.is = load ptr, ptr %i.ir, align 8, !invariant.load !4, !nonnull !4
  %i.it = invoke noundef zeroext i1 %i.is(ptr noundef %i.ip, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.s)
          to label %bb.di unwind label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.iu = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.di:                                            ; preds = %bb.dg
  br i1 %i.it, label %bb.dj, label %bb.dm

bb.dj:                                            ; preds = %bb.di
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.iv = load ptr, ptr @_RNvNCNvMs3_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writerNtB9_15PartitionWriter5write010___CALLSITE, align 8, !nonnull !4, !align !17, !noundef !4
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store ptr %i.x, ptr %i.o, align 8
  %.sroa.5127.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr @_RNvXsZ_NtNtCsbvkFyIu7lgC_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.5127.0..sroa_idx, align 8
  store ptr @208, ptr %i.p, align 8
  %i.ix = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.o, ptr %i.ix, align 8
  store ptr %i.p, ptr %i.q, align 8
  %i.iy = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr @74, ptr %i.iy, align 8
  store i64 1, ptr %i.r, align 8, !alias.scope !29735, !noalias !29738
  %.sroa.4.0..sroa_idx.i71 = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %i.q, ptr %.sroa.4.0..sroa_idx.i71, align 8, !alias.scope !29735, !noalias !29738
  %.sroa.5.0..sroa_idx.i72 = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 1, ptr %.sroa.5.0..sroa_idx.i72, align 8, !alias.scope !29735, !noalias !29738
  %i.iz = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store ptr %i.iw, ptr %i.iz, align 8, !alias.scope !29735, !noalias !29738
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false)
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.il, ptr noundef nonnull %i.ip, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.iq, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.r)
          to label %bb.dl unwind label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.ja = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.l

bb.dl:                                            ; preds = %bb.dj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %bb.di, %bb.dd, %bb.dc, %bb.ds
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.jb = load ptr, ptr %i.hk, align 8, !nonnull !4, !align !17, !noundef !4
  invoke void @_RNvMs3_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writerNtB5_15PartitionWriter12reset_writer(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.n, ptr noalias noundef nonnull align 8 dereferenceable(1016) %i.jb)
          to label %bb.du unwind label %bb.dt

bb.dn:                                            ; preds = %bb.db
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  %i.jc = load ptr, ptr @_RNvNCNvMs3_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writerNtB9_15PartitionWriter5write010___CALLSITE, align 8, !nonnull !4, !align !17, !noundef !4 ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store ptr %i.x, ptr %i.t, align 8
  %.sroa.5119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr @_RNvXsZ_NtNtCsbvkFyIu7lgC_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.5119.0..sroa_idx, align 8
  store ptr @208, ptr %i.u, align 8
  %i.je = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %i.t, ptr %i.je, align 8
  store ptr %i.u, ptr %i.v, align 8
  %i.jf = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr @74, ptr %i.jf, align 8
  store i64 1, ptr %i.w, align 8
  %.sroa.6115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %i.v, ptr %.sroa.6115.0..sroa_idx, align 8
  %.sroa.7116.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store i64 1, ptr %.sroa.7116.0..sroa_idx, align 8
  %.sroa.8117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  store ptr %i.jd, ptr %.sroa.8117.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.jc, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.w)
          to label %.noexc78 unwind label %bb.dr

.noexc78:                                         ; preds = %bb.dn
  %i.jg = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !29741
  %i.jh = icmp eq i8 %i.jg, 0
  br i1 %i.jh, label %bb.do, label %bb.ds

bb.do:                                            ; preds = %.noexc78
  %i.ji = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !29741 ; 2 uses
  %i.jj = icmp ult i64 %i.ji, 6
  call void @llvm.assume(i1 %i.jj)
  %i.jk = icmp samesign ugt i64 %i.ji, 3
  br i1 %i.jk, label %bb.dp, label %bb.ds

bb.dp:                                            ; preds = %bb.do
  %i.jl = load ptr, ptr @_RNvNCNvMs3_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writerNtB9_15PartitionWriter5write010___CALLSITE, align 8, !noalias !29741, !nonnull !4, !align !17, !noundef !4 ; 3 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 32
  %i.jn = load ptr, ptr %i.jm, align 8, !nonnull !4, !noundef !4
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jl, i64 40
  %i.jp = load i64, ptr %i.jo, align 8, !noundef !4
  store i64 4, ptr %i.a, align 8, !noalias !29741
  %.sroa.3.0..sroa_idx.i76 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.jn, ptr %.sroa.3.0..sroa_idx.i76, align 8, !noalias !29741
  %.sroa.5.0..sroa_idx.i77 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.jp, ptr %.sroa.5.0..sroa_idx.i77, align 8, !noalias !29741
  %i.jq = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %.noexc79 unwind label %bb.dr  ; 2 uses

.noexc79:                                         ; preds = %bb.dp
  %i.jr = extractvalue { ptr, ptr } %i.jq, 0      ; 2 uses
  %i.js = extractvalue { ptr, ptr } %i.jq, 1      ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 24
  %i.ju = load ptr, ptr %i.jt, align 8, !invariant.load !4, !nonnull !4
  %i.jv = invoke noundef zeroext i1 %i.ju(ptr noundef %i.jr, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a) #43
          to label %.noexc80 unwind label %bb.dr, !inline_history !29744

.noexc80:                                         ; preds = %.noexc79
  br i1 %i.jv, label %bb.dq, label %bb.ds

bb.dq:                                            ; preds = %.noexc80
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.jl, ptr noundef nonnull %i.jr, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.js, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.w)
          to label %bb.ds unwind label %bb.dr

end_hunk_4
begin_hunk_5_@_RNCNvMs_NtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB6_13EagerSnapshot7try_new0Ba_:bb.a
  %i.ku = getelementptr inbounds nuw i8, ptr %1, i64 193
  store i8 0, ptr %i.ku, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  %i.kv = getelementptr inbounds nuw i8, ptr %1, i64 120
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime9IORuntimeEEB1a_(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.kv)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core5table7builder16DeltaTableConfigEBM_.exit unwind label %bb.eb

bb.eq:                                            ; preds = %.body25
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8SnapshotEBM_(ptr noalias noundef align 8 dereferenceable(88) %i.ab) #40
          to label %bb.ed unwind label %bb.ec
}

; Function Attrs: cold inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss0_0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, i16 noundef range(i16 1, 0) %2, i1 noundef zeroext %3) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 11 uses
  br i1 %3, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr i8, ptr %i.b, i64 %1       ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i64, ptr %i.f, align 8, !noundef !4 ; 4 uses
  %i.h = icmp samesign ult i64 %i.g, 4
  %i.i = getelementptr i8, ptr %i.e, i64 %i.g     ; 2 uses
  %i.j = getelementptr i8, ptr %i.i, i64 -4
  %.sroa.522.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.623.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  br i1 %i.h, label %.preheader.split.us, label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader, %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us
  %.sroa.0.09.us = phi i16 [ %i.w, %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us ], [ %2, %.preheader ] ; 2 uses
  %i.k = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.0.09.us, i1 true) ; 2 uses
  %i.l = zext nneg i16 %i.k to i64
  %i.m = getelementptr i8, ptr %i.c, i64 %i.l
  %i.n = getelementptr i8, ptr %i.m, i64 1        ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29930)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29933)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.o = getelementptr i8, ptr %i.n, i64 %i.g
  call void @_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E3newCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull readonly %i.n, ptr noundef nonnull readonly %i.o, ptr noundef nonnull readonly %i.e, ptr noundef nonnull readonly %i.i)
  %.sroa.0.0.copyload.i.us = load ptr, ptr %i.a, align 8, !noalias !29935 ; 2 uses
  %.sroa.522.0.copyload.i.us = load ptr, ptr %.sroa.522.0..sroa_idx.i, align 8, !noalias !29935 ; 2 uses
  %.sroa.623.0.copyload.i.us = load i64, ptr %.sroa.623.0..sroa_idx.i, align 8, !noalias !29935 ; 3 uses
  %.sroa.8.0.copyload.i.us = load i64, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !29935 ; 2 uses
  %umax.i.us = tail call i64 @llvm.umax.i64(i64 %.sroa.623.0.copyload.i.us, i64 %.sroa.8.0.copyload.i.us)
  %exitcond.not.i.us18.not = icmp ult i64 %.sroa.623.0.copyload.i.us, %.sroa.8.0.copyload.i.us
  br i1 %exitcond.not.i.us18.not, label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs14kWLkQVSKO_14deltalake_core.exit.i.us.preheader, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread6

_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs14kWLkQVSKO_14deltalake_core.exit.i.us.preheader: ; preds = %.preheader.split.us
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.us) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.522.0.copyload.i.us) ]
  br label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs14kWLkQVSKO_14deltalake_core.exit.i.us

bb.b:                                             ; preds = %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs14kWLkQVSKO_14deltalake_core.exit.i.us
  %i.p = add i64 %.sroa.623.0.i.us19, 1           ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %i.p, %umax.i.us
  br i1 %exitcond.not.i.us, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread6, label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs14kWLkQVSKO_14deltalake_core.exit.i.us

_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs14kWLkQVSKO_14deltalake_core.exit.i.us: ; preds = %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs14kWLkQVSKO_14deltalake_core.exit.i.us.preheader, %bb.b
  %.sroa.623.0.i.us19 = phi i64 [ %i.p, %bb.b ], [ %.sroa.623.0.copyload.i.us, %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs14kWLkQVSKO_14deltalake_core.exit.i.us.preheader ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.us, i64 %.sroa.623.0.i.us19
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.522.0.copyload.i.us, i64 %.sroa.623.0.i.us19
  %i.s = load i8, ptr %i.q, align 1, !noundef !4
  %i.t = load i8, ptr %i.r, align 1, !noundef !4
  %.not21.i.us = icmp eq i8 %i.s, %i.t
  br i1 %.not21.i.us, label %bb.b, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us

_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us: ; preds = %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs14kWLkQVSKO_14deltalake_core.exit.i.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.u = shl nuw i16 1, %i.k
  %i.v = xor i16 %i.u, -1
  %i.w = and i16 %.sroa.0.09.us, %i.v             ; 2 uses
  %i.x = icmp eq i16 %i.w, 0
  br i1 %i.x, label %.loopexit, label %.preheader.split.us

.preheader.split:                                 ; preds = %.preheader, %bb.d
  %.sroa.0.09 = phi i16 [ %i.al, %bb.d ], [ %2, %.preheader ] ; 2 uses
  %i.y = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.0.09, i1 true) ; 2 uses
  %i.z = zext nneg i16 %i.y to i64
  %i.aa = getelementptr i8, ptr %i.c, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.aa, i64 1      ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29930)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29933)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ac = getelementptr i8, ptr %i.ab, i64 %i.g
  %i.ad = getelementptr i8, ptr %i.ac, i64 -4     ; 3 uses
  %i.ae = icmp ult ptr %i.ab, %i.ad
  br i1 %i.ae, label %.lr.ph.i, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit

.lr.ph.i:                                         ; preds = %.preheader.split, %bb.c
  %.sroa.08.030.i = phi ptr [ %i.ag, %bb.c ], [ %i.e, %.preheader.split ] ; 2 uses
  %.sroa.04.029.i = phi ptr [ %i.af, %bb.c ], [ %i.ab, %.preheader.split ] ; 2 uses
  %.sroa.011.0.copyload.i = load i32, ptr %.sroa.04.029.i, align 1, !alias.scope !29930, !noalias !29933
  %.sroa.013.0.copyload.i = load i32, ptr %.sroa.08.030.i, align 1, !alias.scope !29933, !noalias !29930
  %.not.i = icmp eq i32 %.sroa.011.0.copyload.i, %.sroa.013.0.copyload.i
  br i1 %.not.i, label %bb.c, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread.loopexit8

bb.c:                                             ; preds = %.lr.ph.i
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.04.029.i, i64 4 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.08.030.i, i64 4
  %i.ah = icmp ult ptr %i.af, %i.ad
  br i1 %i.ah, label %.lr.ph.i, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit

_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread6: ; preds = %.preheader.split.us, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.loopexit

_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread.loopexit8: ; preds = %.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit: ; preds = %bb.c, %.preheader.split
  %.sroa.015.0.copyload.i = load i32, ptr %i.ad, align 1, !alias.scope !29930, !noalias !29933
  %.sroa.017.0.copyload.i = load i32, ptr %i.j, align 1, !alias.scope !29933, !noalias !29930
  %i.ai = icmp eq i32 %.sroa.015.0.copyload.i, %.sroa.017.0.copyload.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.ai, label %.loopexit, label %bb.d

.loopexit:                                        ; preds = %bb.d, %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit, %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us, %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread6, %bb.a
  %.sroa.03.0 = phi i1 [ true, %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread6 ], [ false, %bb.a ], [ false, %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us ], [ true, %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit ], [ false, %bb.d ]
  ret i1 %.sroa.03.0

bb.d:                                             ; preds = %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread.loopexit8, %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit
  %i.aj = shl nuw i16 1, %i.y
  %i.ak = xor i16 %i.aj, -1
  %i.al = and i16 %.sroa.0.09, %i.ak              ; 2 uses
  %i.am = icmp eq i16 %i.al, 0
  br i1 %i.am, label %.loopexit, label %.preheader.split
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writer19upload_parquet_file0B9_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 16 captures(none) dereferenceable(208) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.769.i = alloca [168 x i8], align 8       ; 6 uses
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [16 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 6 uses
  %i.g = alloca [32 x i8], align 8                ; 8 uses
  %i.h = alloca [40 x i8], align 8                ; 7 uses
  %i.i = alloca [40 x i8], align 8                ; 7 uses
  %.sroa.3.sroa.5.i = alloca [16 x i8], align 8   ; 6 uses
  %.sroa.549.i = alloca [128 x i8], align 8       ; 5 uses
  %i.j = alloca [168 x i8], align 8               ; 10 uses
  %i.k = alloca [168 x i8], align 8               ; 14 uses
  %.sroa.7 = alloca [168 x i8], align 8           ; 3 uses
  %i.l = alloca [208 x i8], align 16              ; 10 uses
  %i.m = alloca [816 x i8], align 8               ; 3 uses
  %i.n = alloca [776 x i8], align 8               ; 13 uses
  %i.o = alloca [8 x i8], align 8                 ; 5 uses
  %i.p = alloca [48 x i8], align 8                ; 10 uses
  %i.q = alloca [32 x i8], align 8                ; 8 uses
  %i.r = alloca [40 x i8], align 8                ; 8 uses
  %i.s = alloca [8 x i8], align 8                 ; 5 uses
  %i.t = alloca [48 x i8], align 8                ; 10 uses
  %i.u = alloca [32 x i8], align 8                ; 8 uses
  %i.v = alloca [520 x i8], align 8               ; 10 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 608 ; 3 uses
  %i.x = load i8, ptr %i.w, align 8, !range !16574, !noundef !4
  switch i8 %i.x, label %default.unreachable59 [
    i8 0, label %bb.d
    i8 1, label %bb.z
    i8 2, label %bb.aa
    i8 3, label %bb.b
    i8 4, label %bb.c
  ]

default.unreachable59:                            ; preds = %bb.ak, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  br label %bb.ab

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  br label %bb.ak

bb.d:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 612 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 611 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 609 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 610 ; 2 uses
  store i16 0, ptr %i.aa, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store i8 1, ptr %i.y, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(520) %i.v, ptr noundef nonnull align 8 dereferenceable(520) %1, i64 520, i1 false)
  store i8 1, ptr %i.z, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 544 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 520
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false)
  %i.ae = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.af = icmp samesign ult i64 %i.ae, 3
  br i1 %i.af, label %bb.e, label %bb.n

bb.e:                                             ; preds = %bb.d
  %i.ag = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writer19upload_parquet_file010___CALLSITE, i64 16) monotonic, align 8 ; 2 uses
  %i.ah = icmp ult i8 %i.ag, 3
  br i1 %i.ah, label %bb.h, label %bb.f, !prof !25908

bb.f:                                             ; preds = %bb.e
  %i.ai = invoke noundef i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writer19upload_parquet_file010___CALLSITE) #42
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.h:                                             ; preds = %bb.f, %bb.e
  %.sroa.0.0.i = phi i8 [ %i.ag, %bb.e ], [ %i.ai, %bb.f ] ; 2 uses
  %i.ak = icmp eq i8 %.sroa.0.0.i, 0
  br i1 %i.ak, label %bb.n, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.al = load ptr, ptr @_RNvNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writer19upload_parquet_file010___CALLSITE, align 8, !nonnull !4, !align !17, !noundef !4
  %i.am = invoke noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.al, i8 noundef %.sroa.0.0.i)
          to label %bb.k unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.k:                                             ; preds = %bb.i
  br i1 %i.am, label %bb.s, label %bb.n

bb.l:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.y

bb.m:                                             ; preds = %bb.n, %bb.q
  store i8 1, ptr %i.aa, align 1
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 568
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ao, ptr noundef nonnull align 8 dereferenceable(40) %i.r, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.v

bb.n:                                             ; preds = %bb.d, %bb.k, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.ap = load ptr, ptr @_RNvNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writer19upload_parquet_file010___CALLSITE, align 8, !nonnull !4, !align !17, !noundef !4 ; 2 uses
  store i64 2, ptr %i.r, align 8, !alias.scope !29936, !noalias !29939
  %i.aq = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  store ptr %i.ap, ptr %i.aq, align 8, !alias.scope !29936, !noalias !29939
  %i.ar = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %.not = icmp eq i8 %i.ar, 0
  br i1 %.not, label %bb.o, label %bb.m

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store ptr %i.ac, ptr %i.o, align 8
  store ptr %i.o, ptr %i.p, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr @236, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr @237, ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store ptr @238, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  store ptr @237, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  store ptr @238, ptr %i.ax, align 8
  store i64 1, ptr %i.q, align 8, !alias.scope !29941, !noalias !29944
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.p, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !29941, !noalias !29944
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 3, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !29941, !noalias !29944
  %i.ay = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store ptr %i.as, ptr %i.ay, align 8, !alias.scope !29941, !noalias !29944
  %i.az = invoke noundef nonnull align 8 ptr @_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span10record_all(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.r, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.q)
          to label %bb.q unwind label %bb.p       ; 0 uses

bb.p:                                             ; preds = %bb.o
  %i.ba = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span4SpanECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(40) %i.r) #40
          to label %bb.l unwind label %bb.r

bb.q:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.m

bb.r:                                             ; preds = %bb.dc, %bb.da, %bb.cy, %bb.cx, %.body34, %bb.ac, %bb.p
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.s:                                             ; preds = %bb.k
  %i.bc = load ptr, ptr @_RNvNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writer19upload_parquet_file010___CALLSITE, align 8, !nonnull !4, !align !17, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store ptr %i.ac, ptr %i.s, align 8
  store ptr %i.s, ptr %i.t, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr @236, ptr %i.be, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store ptr @237, ptr %i.bf, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  store ptr @238, ptr %i.bg, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  store ptr @237, ptr %i.bh, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  store ptr @238, ptr %i.bi, align 8
  store i64 1, ptr %i.u, align 8, !alias.scope !29947, !noalias !29950
  %.sroa.4.0..sroa_idx.i27 = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %i.t, ptr %.sroa.4.0..sroa_idx.i27, align 8, !alias.scope !29947, !noalias !29950
  %.sroa.5.0..sroa_idx.i28 = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i64 3, ptr %.sroa.5.0..sroa_idx.i28, align 8, !alias.scope !29947, !noalias !29950
  %i.bj = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store ptr %i.bd, ptr %i.bj, align 8, !alias.scope !29947, !noalias !29950
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 568
  invoke void @_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span3new(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.bk, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bc, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.u)
          to label %bb.u unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %bb.y

bb.u:                                             ; preds = %bb.s
  store i8 1, ptr %i.aa, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %bb.v

bb.v:                                             ; preds = %bb.m, %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store i8 0, ptr %i.y, align 4
  store i8 0, ptr %i.z, align 1
  store i8 1, ptr %i.ab, align 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(520) %i.n, ptr noundef nonnull align 8 dereferenceable(520) %i.v, i64 520, i1 false)
  %i.bm = getelementptr inbounds nuw i8, ptr %i.n, i64 520
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bm, ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i64 24, i1 false)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.n, i64 768
  store i8 0, ptr %i.bn, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 568 ; 2 uses
  %.val24 = load i64, ptr %i.bo, align 8, !range !48, !noundef !4
  %.not.i26 = icmp eq i64 %.val24, 2
  store i8 0, ptr %i.ab, align 2
  br i1 %.not.i26, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bp = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(776) %i.bp, ptr noundef nonnull align 8 dereferenceable(776) %i.n, i64 776, i1 false)
  store i8 0, ptr %i.aa, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.m, ptr noundef nonnull align 8 dereferenceable(40) %i.bo, i64 40, i1 false)
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 616
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(816) %i.bq, ptr noundef nonnull align 8 dereferenceable(816) %i.m, i64 816, i1 false)
  br label %bb.ab

bb.x:                                             ; preds = %bb.v
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 616
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(776) %i.br, ptr noundef nonnull align 8 dereferenceable(776) %i.n, i64 776, i1 false)
  br label %bb.ak

.body:                                            ; preds = %bb.cs, %.body34, %bb.ac, %bb.ag, %bb.aj
  %.pn17.pn = phi { ptr, i32 } [ %i.cg, %bb.aj ], [ %i.ce, %bb.ag ], [ %i.ca, %bb.ac ], [ %i.fc, %bb.cs ], [ %.pn15, %.body34 ] ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 610 ; 2 uses
  %i.bt = load i8, ptr %i.bs, align 2, !range !34, !noundef !4
  %i.bu = trunc nuw i8 %i.bt to i1
  br i1 %i.bu, label %bb.cx, label %bb.cw

bb.y:                                             ; preds = %bb.g, %bb.t, %bb.l, %bb.j, %bb.cy, %bb.cw, %bb.cv
  %.pn20 = phi { ptr, i32 } [ %i.fg, %bb.cv ], [ %.pn17.pn, %bb.cy ], [ %.pn17.pn, %bb.cw ], [ %i.bl, %bb.t ], [ %i.aj, %bb.g ], [ %i.ba, %bb.l ], [ %i.an, %bb.j ]
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 609
  store i8 0, ptr %i.bv, align 1
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 611 ; 2 uses
  %i.bx = load i8, ptr %i.bw, align 1, !range !34, !noundef !4
  %i.by = trunc nuw i8 %i.bx to i1
  br i1 %i.by, label %bb.da, label %bb.cz

bb.z:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @239) #41
  unreachable

bb.aa:                                            ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @239) #41
  unreachable
end_hunk_5
begin_hunk_6_@_RNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writer19upload_parquet_file0B9_:bb.a
bb.ag:                                            ; preds = %bb.af
  %i.ce = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span4SpanECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.bz) #40
          to label %.body unwind label %bb.ai

bb.ah:                                            ; preds = %bb.af
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span4SpanECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.bz)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCscTw95cGIolY_7tracing10instrument12InstrumentedNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writer19upload_parquet_file00EEB1J_.exit unwind label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  %i.cf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.aj:                                            ; preds = %bb.ah
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCscTw95cGIolY_7tracing10instrument12InstrumentedNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writer19upload_parquet_file00EEB1J_.exit: ; preds = %bb.cr, %bb.ah
  %.sroa.039.0 = phi i64 [ %i.cb, %bb.ah ], [ %.sroa.064.0.i, %bb.cr ]
  %.sroa.5.0 = phi i64 [ %.sroa.5.0.copyload, %bb.ah ], [ %.sroa.567.0.i, %bb.cr ]
  %.sroa.6.0 = phi i64 [ %.sroa.6.0.copyload, %bb.ah ], [ %.sroa.668.0.i, %bb.cr ]
  %i.ch = phi <2 x i64> [ %i.cd, %bb.ah ], [ %i.fb, %bb.cr ]
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 610
  store i8 0, ptr %i.ci, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 609 ; 2 uses
  %i.ck = load i8, ptr %i.cj, align 1, !range !34, !noundef !4
  %i.cl = trunc nuw i8 %i.ck to i1
  br i1 %i.cl, label %bb.cu, label %bb.ct

bb.ak:                                            ; preds = %bb.c, %bb.x
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 616 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.769.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.sroa.5.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.549.i)
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 1384 ; 4 uses
  %i.co = load i8, ptr %i.cn, align 8, !range !3169, !noalias !29953, !noundef !4
  switch i8 %i.co, label %default.unreachable59 [
    i8 0, label %bb.am
    i8 1, label %bb.an
    i8 2, label %bb.ao
    i8 3, label %bb.al
  ]

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !29953
  br label %bb.aq

bb.am:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !29953
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 1160
  store ptr %i.cm, ptr %i.cp, align 8, !noalias !29953
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1344
  store i8 0, ptr %.sroa.9.0..sroa_idx.i, align 8, !noalias !29953
  br label %bb.aq

bb.an:                                            ; preds = %bb.ak
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @116) #41
          to label %.noexc32 unwind label %bb.cp

.noexc32:                                         ; preds = %bb.an
  unreachable

bb.ao:                                            ; preds = %bb.ak
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @116) #41
          to label %.noexc33 unwind label %bb.cp

.noexc33:                                         ; preds = %bb.ao
  unreachable

bb.ap:                                            ; preds = %bb.aq
  %i.cq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !29953
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_writerINtBO_16AsyncArrowWriterNtNtBO_5store19ParquetObjectWriterE6finish0ECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 %i.cr) #40
          to label %bb.ci unwind label %bb.ch, !noalias !29957

bb.aq:                                            ; preds = %bb.am, %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !29953
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 1160 ; 3 uses
  invoke fastcc void @_RNCNvMs0_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_writerINtB7_16AsyncArrowWriterNtNtB7_5store19ParquetObjectWriterE6finish0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(address) dereferenceable(168) %i.j, ptr noundef nonnull align 8 %i.cr, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.ar unwind label %bb.ap, !noalias !29957

bb.ar:                                            ; preds = %bb.aq
  %i.cs = load i64, ptr %i.j, align 8, !range !1700, !noalias !29953, !noundef !4 ; 3 uses
  %i.ct = icmp eq i64 %i.cs, -9223372036854775807
  br i1 %i.ct, label %bb.cq, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.3.sroa.0.0.copyload.i = load i64, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !29953 ; 2 uses
  %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.3.sroa.3.0.copyload.i = load i64, ptr %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx.i, align 8, !noalias !29953 ; 2 uses
  %.sroa.3.sroa.5.0..sroa.3.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.sroa.5.0..sroa.3.0..sroa_idx.sroa_idx.i, i64 16, i1 false), !noalias !29953
  %.sroa.549.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %.sroa.549.i, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.549.0..sroa_idx.i, i64 128, i1 false), !noalias !29953
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !29953
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_writerINtBO_16AsyncArrowWriterNtNtBO_5store19ParquetObjectWriterE6finish0ECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 %i.cr)
          to label %bb.au unwind label %bb.at, !noalias !29957

bb.at:                                            ; preds = %bb.as
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ci

bb.au:                                            ; preds = %bb.as
  %i.cv = icmp eq i64 %i.cs, -9223372036854775808
  br i1 %i.cv, label %bb.cj, label %bb.av

bb.av:                                            ; preds = %bb.au
  %.sroa.552.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %.sroa.552.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.549.i, i64 128, i1 false), !noalias !29953
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx51.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx51.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.sroa.5.i, i64 16, i1 false), !noalias !29953
  store i64 %i.cs, ptr %i.k, align 8, !noalias !29953
  %.sroa.4.0..sroa_idx51.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %.sroa.3.sroa.0.0.copyload.i, ptr %.sroa.4.0..sroa_idx51.i, align 8, !noalias !29953
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx51.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 %.sroa.3.sroa.3.0.copyload.i, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx51.sroa_idx.i, align 8, !noalias !29953
  %i.cw = getelementptr i8, ptr %1, i64 896
  %.val30.i = load i64, ptr %i.cw, align 8, !noalias !29953, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !29953
  invoke void @_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span7current(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.i)
          to label %bb.ay unwind label %bb.aw, !noalias !29957

bb.aw:                                            ; preds = %bb.av
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.ax:                                            ; preds = %bb.ay
  %i.cy = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span4SpanECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(40) %i.i) #40
          to label %bb.ba unwind label %bb.ch, !noalias !29957

bb.ay:                                            ; preds = %bb.av
  %i.cz = getelementptr inbounds nuw i8, ptr %i.k, i64 104
  %.val31.i = load i64, ptr %i.cz, align 8, !noalias !29953, !noundef !4
  %i.da = invoke noundef nonnull align 8 ptr @_RINvMNtCscTw95cGIolY_7tracing4spanNtB3_4Span6recordexECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @117, i64 noundef 4, i64 noundef %.val31.i)
          to label %bb.az unwind label %bb.ax, !noalias !29957 ; 0 uses

bb.az:                                            ; preds = %bb.ay
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span4SpanECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(40) %i.i)
          to label %bb.bc unwind label %bb.bb, !noalias !29957

bb.ba:                                            ; preds = %bb.bb, %bb.ax, %bb.aw
  %.pn6.i = phi { ptr, i32 } [ %i.db, %bb.bb ], [ %i.cy, %bb.ax ], [ %i.cx, %bb.aw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !29953
  br label %bb.cg

bb.bb:                                            ; preds = %bb.az
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.bc:                                            ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !29953
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !29953
  invoke void @_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span7current(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.h)
          to label %bb.be unwind label %bb.bd, !noalias !29957

bb.bd:                                            ; preds = %bb.bc
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.be:                                            ; preds = %bb.bc
  %i.dd = invoke noundef nonnull align 8 ptr @_RINvMNtCscTw95cGIolY_7tracing4spanNtB3_4Span6recordejECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.h, ptr noalias noundef nonnull readonly captures(address, read_provenance) @118, i64 noundef 4, i64 noundef %.val30.i)
          to label %bb.bg unwind label %bb.bf, !noalias !29957 ; 0 uses

bb.bf:                                            ; preds = %bb.be
  %i.de = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span4SpanECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(40) %i.h) #40
          to label %bb.bh unwind label %bb.ch, !noalias !29957

bb.bg:                                            ; preds = %bb.be
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span4SpanECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(40) %i.h)
          to label %bb.bj unwind label %bb.bi, !noalias !29957

bb.bh:                                            ; preds = %bb.bi, %bb.bf, %bb.bd
  %.pn8.i = phi { ptr, i32 } [ %i.df, %bb.bi ], [ %i.de, %bb.bf ], [ %i.dc, %bb.bd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !29953
  br label %bb.cg

bb.bi:                                            ; preds = %bb.bg
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.bj:                                            ; preds = %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !29953
  %i.dg = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !29953
  %i.dh = icmp samesign ult i64 %i.dg, 2
  br i1 %i.dh, label %bb.bk, label %bb.br

bb.bk:                                            ; preds = %bb.bj
  %i.di = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writer19upload_parquet_file0010___CALLSITE, i64 16) monotonic, align 8, !noalias !29953 ; 2 uses
  %i.dj = icmp ult i8 %i.di, 3
  br i1 %i.dj, label %bb.bn, label %bb.bl, !prof !25908

bb.bl:                                            ; preds = %bb.bk
  %i.dk = invoke noundef i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writer19upload_parquet_file0010___CALLSITE) #42
          to label %bb.bn unwind label %bb.bm, !noalias !29957

bb.bm:                                            ; preds = %bb.bl
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %bb.cg

bb.bn:                                            ; preds = %bb.bl, %bb.bk
  %.sroa.0.0.i.i = phi i8 [ %i.di, %bb.bk ], [ %i.dk, %bb.bl ] ; 2 uses
  %i.dm = icmp eq i8 %.sroa.0.0.i.i, 0
  br i1 %i.dm, label %bb.br, label %bb.bp

bb.bo:                                            ; preds = %bb.bp
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %bb.cg

bb.bp:                                            ; preds = %bb.bn
  %i.do = load ptr, ptr @_RNvNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writer19upload_parquet_file0010___CALLSITE, align 8, !noalias !29953, !nonnull !4, !align !17, !noundef !4
  %i.dp = invoke noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.do, i8 noundef %.sroa.0.0.i.i)
          to label %bb.bq unwind label %bb.bo, !noalias !29957

bb.bq:                                            ; preds = %bb.bp
  br i1 %i.dp, label %bb.cc, label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bn, %bb.bj
  %i.dq = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !29953
  %.not.i30 = icmp eq i8 %i.dq, 0
  br i1 %.not.i30, label %bb.bs, label %bb.cb

bb.bs:                                            ; preds = %bb.br
  %i.dr = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !29953 ; 2 uses
  %i.ds = icmp ult i64 %i.dr, 6
  call void @llvm.assume(i1 %i.ds)
  %i.dt = icmp samesign ugt i64 %i.dr, 3
  br i1 %i.dt, label %bb.bu, label %bb.cb

bb.bt:                                            ; preds = %bb.bu
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %bb.cg

bb.bu:                                            ; preds = %bb.bs
  %i.dv = load ptr, ptr @_RNvNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writer19upload_parquet_file0010___CALLSITE, align 8, !noalias !29953, !nonnull !4, !align !17, !noundef !4 ; 3 uses
  %i.dw = getelementptr i8, ptr %i.dv, i64 32
  %.val28.i = load ptr, ptr %i.dw, align 8, !noalias !29957, !nonnull !4, !noundef !4
  %i.dx = getelementptr i8, ptr %i.dv, i64 40
  %.val29.i = load i64, ptr %i.dx, align 8, !noalias !29957, !noundef !4
  store i64 4, ptr %i.d, align 8, !alias.scope !29958, !noalias !29953
  %.sroa.662.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %.val28.i, ptr %.sroa.662.0..sroa_idx.i, align 8, !alias.scope !29958, !noalias !29953
  %.sroa.863.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %.val29.i, ptr %.sroa.863.0..sroa_idx.i, align 8, !alias.scope !29958, !noalias !29953
  %i.dy = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %bb.bv unwind label %bb.bt, !noalias !29957 ; 2 uses

bb.bv:                                            ; preds = %bb.bu
  %i.dz = extractvalue { ptr, ptr } %i.dy, 0      ; 2 uses
  %i.ea = extractvalue { ptr, ptr } %i.dy, 1      ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 24
  %i.ec = load ptr, ptr %i.eb, align 8, !invariant.load !4, !noalias !29957, !nonnull !4
  %i.ed = invoke noundef zeroext i1 %i.ec(ptr noundef %i.dz, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d)
          to label %bb.bx unwind label %bb.bw, !noalias !29957

bb.bw:                                            ; preds = %bb.bv
  %i.ee = landingpad { ptr, i32 }
          cleanup
  br label %bb.cg

bb.bx:                                            ; preds = %bb.bv
  br i1 %i.ed, label %bb.by, label %bb.cb

bb.by:                                            ; preds = %bb.bx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !29953
  %i.ef = load ptr, ptr @_RNvNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writer19upload_parquet_file0010___CALLSITE, align 8, !noalias !29953, !nonnull !4, !align !17, !noundef !4
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !29953
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !29953
  store ptr @119, ptr %i.a, align 8, !noalias !29953
  %i.eh = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 79 to ptr), ptr %i.eh, align 8, !noalias !29953
  store ptr %i.a, ptr %i.b, align 8, !noalias !29953
  %i.ei = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @74, ptr %i.ei, align 8, !noalias !29953
  store i64 1, ptr %i.c, align 8, !alias.scope !29962, !noalias !29965
  %.sroa.4.0..sroa_idx.i35.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.b, ptr %.sroa.4.0..sroa_idx.i35.i, align 8, !alias.scope !29962, !noalias !29965
  %.sroa.5.0..sroa_idx.i36.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 1, ptr %.sroa.5.0..sroa_idx.i36.i, align 8, !alias.scope !29962, !noalias !29965
  %i.ej = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.eg, ptr %i.ej, align 8, !alias.scope !29962, !noalias !29965
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.dv, ptr noundef nonnull %i.dz, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ea, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.c)
          to label %bb.ca unwind label %bb.bz, !noalias !29957

bb.bz:                                            ; preds = %bb.by
  %i.ek = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !29953
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !29953
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !29953
  br label %bb.cg

bb.ca:                                            ; preds = %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !29953
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !29953
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !29953
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ce, %bb.ca, %bb.bx, %bb.bs, %bb.br
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 1136
  %i.em = load <2 x i64>, ptr %i.el, align 8, !noalias !29953
  %.sroa.579.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1152
  %.sroa.579.0.copyload.i = load i64, ptr %.sroa.579.0..sroa_idx.i, align 8, !noalias !29953
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %.sroa.769.i, ptr noundef nonnull align 8 dereferenceable(168) %i.k, i64 168, i1 false), !noalias !29953
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !29953
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs4tdlwR1I4n2_7parquet5arrow12async_writer16AsyncArrowWriterNtNtBJ_5store19ParquetObjectWriterEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(520) %i.cm)
          to label %bb.cr unwind label %bb.cf, !noalias !29957

bb.cc:                                            ; preds = %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !29953
  %i.en = load ptr, ptr @_RNvNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writer19upload_parquet_file0010___CALLSITE, align 8, !noalias !29953, !nonnull !4, !align !17, !noundef !4
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !29953
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !29953
  store ptr @119, ptr %i.e, align 8, !noalias !29953
  %i.ep = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr inttoptr (i64 79 to ptr), ptr %i.ep, align 8, !noalias !29953
  store ptr %i.e, ptr %i.f, align 8, !noalias !29953
  %i.eq = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @74, ptr %i.eq, align 8, !noalias !29953
  store i64 1, ptr %i.g, align 8, !noalias !29953
  %.sroa.656.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.f, ptr %.sroa.656.0..sroa_idx.i, align 8, !noalias !29953
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 1, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !29953
  %.sroa.857.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr %i.eo, ptr %.sroa.857.0..sroa_idx.i, align 8, !noalias !29953
  invoke fastcc void @_RNCNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writer19upload_parquet_file000Bd_(ptr noalias noundef readonly align 8 captures(address) dereferenceable(32) %i.g)
          to label %bb.ce unwind label %bb.cd, !noalias !29957

bb.cd:                                            ; preds = %bb.cc
  %i.er = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !29953
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !29953
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !29953
  br label %bb.cg

bb.ce:                                            ; preds = %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !29953
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !29953
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !29953
  br label %bb.cb

.body.i:                                          ; preds = %bb.co, %bb.cm, %bb.ck, %bb.cf
  %.pn22.i = phi { ptr, i32 } [ %.pn19.pn.i, %bb.co ], [ %i.eu, %bb.ck ], [ %i.es, %bb.cf ], [ %i.ex, %bb.cm ]
  store i8 2, ptr %i.cn, align 8, !noalias !29953
  br label %.body34

bb.cf:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i, %bb.cb
  %i.es = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.cg:                                            ; preds = %bb.cd, %bb.bz, %bb.bw, %bb.bt, %bb.bo, %bb.bm, %bb.bh, %bb.ba
  %.pn16.pn.i = phi { ptr, i32 } [ %i.er, %bb.cd ], [ %i.du, %bb.bt ], [ %.pn8.i, %bb.bh ], [ %.pn6.i, %bb.ba ], [ %i.ek, %bb.bz ], [ %i.dn, %bb.bo ], [ %i.ee, %bb.bw ], [ %i.dl, %bb.bm ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata15ParquetMetaDataECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(168) %i.k) #40
          to label %bb.ci unwind label %bb.ch, !noalias !29957

bb.ch:                                            ; preds = %bb.co, %bb.ck, %bb.ci, %bb.cg, %bb.bf, %bb.ax, %bb.ap
  %i.et = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !29957
  unreachable

bb.ci:                                            ; preds = %bb.ap, %bb.at, %bb.cg
  %.pn19.pn.i = phi { ptr, i32 } [ %.pn16.pn.i, %bb.cg ], [ %i.cu, %bb.at ], [ %i.cq, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !29953
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs4tdlwR1I4n2_7parquet5arrow12async_writer16AsyncArrowWriterNtNtBJ_5store19ParquetObjectWriterEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(520) %i.cm) #40
          to label %bb.co unwind label %bb.ch, !noalias !29957

bb.cj:                                            ; preds = %bb.au
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.769.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.sroa.5.i, i64 16, i1 false), !noalias !29953
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !29953
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs4tdlwR1I4n2_7parquet5arrow12async_writer16AsyncArrowWriterNtNtBJ_5store19ParquetObjectWriterEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(520) %i.cm)
          to label %bb.cl unwind label %bb.ck, !noalias !29957

bb.ck:                                            ; preds = %bb.cj
  %i.eu = landingpad { ptr, i32 }
          cleanup
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 1136
end_hunk_6
begin_hunk_7_@_RNCNvXs0_NtNtCs14kWLkQVSKO_14deltalake_core12data_catalog7storageNtB7_21ListingSchemaProviderNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProvider5table0Bb_:bb.a

bb.bi:                                            ; preds = %bb.bj, %bb.at
  store i8 0, ptr %i.bg, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.ab

bb.bj:                                            ; preds = %bb.at
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l) #40
          to label %bb.bi unwind label %bb.w
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvXs1_NtNtCs14kWLkQVSKO_14deltalake_core8logstore16default_logstoreNtB7_15DefaultLogStoreNtB9_8LogStore17read_commit_entry0Bb_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 16 captures(none) dereferenceable(96) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.9179.i.i = alloca [32 x i8], align 16    ; 7 uses
  %.sroa.10180.i.i = alloca [32 x i8], align 16   ; 6 uses
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = alloca [48 x i8], align 8                ; 10 uses
  %i.d = alloca [32 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %i.f = alloca [8 x i8], align 8                 ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 6 uses
  %i.h = alloca [48 x i8], align 8                ; 10 uses
  %i.i = alloca [32 x i8], align 8                ; 8 uses
  %i.j = alloca [72 x i8], align 8                ; 10 uses
  %i.k = alloca [16 x i8], align 8                ; 6 uses
  %i.l = alloca [16 x i8], align 8                ; 6 uses
  %i.m = alloca [32 x i8], align 8                ; 8 uses
  %i.n = alloca [24 x i8], align 8                ; 8 uses
  %i.o = alloca [16 x i8], align 8                ; 6 uses
  %i.p = alloca [16 x i8], align 8                ; 6 uses
  %i.q = alloca [32 x i8], align 8                ; 8 uses
  %i.r = alloca [8 x i8], align 8                 ; 5 uses
  %i.s = alloca [16 x i8], align 8                ; 6 uses
  %i.t = alloca [32 x i8], align 8                ; 8 uses
  %i.u = alloca [32 x i8], align 8                ; 8 uses
  %i.v = alloca [24 x i8], align 8                ; 8 uses
  %i.w = alloca [8 x i8], align 8                 ; 5 uses
  %i.x = alloca [16 x i8], align 8                ; 6 uses
  %i.y = alloca [32 x i8], align 8                ; 8 uses
  %i.z = alloca [32 x i8], align 8                ; 8 uses
  %.sroa.3.i.i = alloca [32 x i8], align 8        ; 7 uses
  %.sroa.5135.i.i = alloca [32 x i8], align 8     ; 5 uses
  %i.aa = alloca [72 x i8], align 8               ; 8 uses
  %i.ab = alloca [32 x i8], align 8               ; 14 uses
  %i.ac = alloca [192 x i8], align 8              ; 6 uses
  %.sroa.4.i = alloca [32 x i8], align 16         ; 7 uses
  %.sroa.5.i = alloca [32 x i8], align 16         ; 7 uses
  %.sroa.6.i = alloca [16 x i8], align 16         ; 6 uses
  %i.ad = alloca [96 x i8], align 16              ; 10 uses
  %i.ae = alloca [952 x i8], align 8              ; 7 uses
  %i.af = alloca [912 x i8], align 8              ; 13 uses
  %i.ag = alloca [24 x i8], align 8               ; 9 uses
  %i.ah = alloca [8 x i8], align 8                ; 5 uses
  %i.ai = alloca [32 x i8], align 8               ; 8 uses
  %i.aj = alloca [32 x i8], align 8               ; 8 uses
  %i.ak = alloca [40 x i8], align 8               ; 8 uses
  %i.al = alloca [24 x i8], align 8               ; 9 uses
  %i.am = alloca [8 x i8], align 8                ; 5 uses
  %i.an = alloca [32 x i8], align 8               ; 8 uses
  %i.ao = alloca [32 x i8], align 8               ; 8 uses
  %.sroa.1019 = alloca [32 x i8], align 16        ; 2 uses
  %.sroa.1120 = alloca [32 x i8], align 16        ; 2 uses
  %.sroa.12 = alloca [16 x i8], align 16          ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 1064 ; 3 uses
  %i.aq = load i8, ptr %i.ap, align 8, !range !3169, !noundef !4
  switch i8 %i.aq, label %default.unreachable34 [
    i8 0, label %bb.b
    i8 1, label %bb.f
    i8 2, label %bb.g
    i8 3, label %bb.i
  ]

default.unreachable34:                            ; preds = %bb.bc, %bb.i, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.ar = load ptr, ptr %1, align 8, !nonnull !4, !align !17, !noundef !4 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.at = load i64, ptr %i.as, align 8, !noundef !4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30892)
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 312
  %i.av = load ptr, ptr %i.au, align 8, !alias.scope !30892, !nonnull !4, !noundef !4 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 320
  %i.ax = load ptr, ptr %i.aw, align 8, !alias.scope !30892, !nonnull !4, !align !17, !noundef !4 ; 3 uses
  %i.ay = atomicrmw add ptr %i.av, i64 1 monotonic, align 8, !noalias !30892
  %i.az = icmp slt i64 %i.ay, 0
  br i1 %i.az, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

.thread:                                          ; preds = %bb.b
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.av, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.ax, ptr %i.bb, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.bd = load i64, ptr %i.bc, align 8, !range !947, !invariant.load !4
  %i.be = add nsw i64 %i.bd, -1
  %i.bf = and i64 %i.be, -16
  %i.bg = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %i.bh, ptr %i.bi, align 8
  %.sroa.713.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr %i.ax, ptr %.sroa.713.0..sroa_idx, align 8
  %.sroa.814.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i64 %i.at, ptr %.sroa.814.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 106
  store i8 0, ptr %.sroa.10.0..sroa_idx, align 2
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 106
  br label %bb.l

bb.d:                                             ; preds = %bb.ft, %.body
  %.pn2 = phi { ptr, i32 } [ %i.nh, %bb.ft ], [ %eh.lpad-body, %.body ] ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !30895)
  call void @llvm.experimental.noalias.scope.decl(metadata !30898)
  %i.bm = load ptr, ptr %i.bl, align 8, !alias.scope !30901, !nonnull !4, !noundef !4
  %i.bn = atomicrmw sub ptr %i.bm, i64 1 release, align 8, !noalias !30901
  %i.bo = icmp eq i64 %i.bn, 1
  br i1 %i.bo, label %bb.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bl) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.fx

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.d, %bb.e, %bb.fw
  %.pn4 = phi { ptr, i32 } [ %i.nm, %bb.fw ], [ %.pn2, %bb.d ], [ %.pn2, %bb.e ]
  store i8 2, ptr %i.ap, align 8
  resume { ptr, i32 } %.pn4

bb.f:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @274) #41
  unreachable

bb.g:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @274) #41
  unreachable

bb.h:                                             ; preds = %bb.as, %bb.ar
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.aq, %bb.h
  %i.bq = phi ptr [ %i.br, %bb.h ], [ %i.eg, %bb.aq ]
  %eh.lpad-body = phi { ptr, i32 } [ %i.bp, %bb.h ], [ %.pn24.i, %bb.aq ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore17read_commit_entry0EBM_(ptr noundef nonnull align 8 %i.bq) #40
          to label %bb.d unwind label %bb.fx

bb.i:                                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 106
  %.pre = load i8, ptr %.phi.trans.insert, align 2, !range !16574, !noalias !30902
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 106 ; 3 uses
  switch i8 %.pre, label %default.unreachable34 [
    i8 0, label %bb.l
    i8 1, label %bb.ar
    i8 2, label %bb.as
    i8 3, label %bb.j
    i8 4, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !30902
  br label %bb.at

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !30902
  br label %bb.bc

bb.l:                                             ; preds = %.thread, %bb.i
  %i.bt = phi ptr [ %i.bk, %.thread ], [ %i.bs, %bb.i ] ; 6 uses
  %i.bu = phi ptr [ %i.bj, %.thread ], [ %i.br, %bb.i ] ; 7 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 4 uses
  store i8 0, ptr %i.bv, align 8, !noalias !30902
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 105 ; 3 uses
  store i8 0, ptr %i.bw, align 1, !noalias !30902
  %i.bx = load ptr, ptr %i.bu, align 8, !noalias !30902, !nonnull !4, !noundef !4
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bz = load ptr, ptr %i.by, align 8, !noalias !30902, !nonnull !4, !align !17, !noundef !4
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 6 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.cc = load i64, ptr %i.cb, align 8, !noalias !30902, !noundef !4
  store i64 %i.cc, ptr %i.ca, align 8, !noalias !30902
  %i.cd = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !30902
  %i.ce = icmp samesign ult i64 %i.cd, 3
  br i1 %i.ce, label %bb.m, label %bb.v

bb.m:                                             ; preds = %bb.l
  %i.cf = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore17read_commit_entry010___CALLSITE, i64 16) monotonic, align 8, !noalias !30902 ; 2 uses
  %i.cg = icmp ult i8 %i.cf, 3
  br i1 %i.cg, label %bb.p, label %bb.n, !prof !25908

bb.n:                                             ; preds = %bb.m
  %i.ch = invoke noundef i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore17read_commit_entry010___CALLSITE) #42
          to label %bb.p unwind label %bb.o, !noalias !30906

bb.o:                                             ; preds = %bb.n
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.p:                                             ; preds = %bb.n, %bb.m
  %.sroa.0.0.i.i = phi i8 [ %i.cf, %bb.m ], [ %i.ch, %bb.n ] ; 2 uses
  %i.cj = icmp eq i8 %.sroa.0.0.i.i, 0
  br i1 %i.cj, label %bb.v, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ck = load ptr, ptr @_RNvNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore17read_commit_entry010___CALLSITE, align 8, !noalias !30902, !nonnull !4, !align !17, !noundef !4
  %i.cl = invoke noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ck, i8 noundef %.sroa.0.0.i.i)
          to label %bb.s unwind label %bb.r, !noalias !30906

bb.r:                                             ; preds = %bb.q
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.s:                                             ; preds = %bb.q
  br i1 %i.cl, label %bb.af, label %bb.v

bb.t:                                             ; preds = %.body.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !30902
  br label %bb.aq

bb.u:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs14kWLkQVSKO_14deltalake_core.exit.i, %bb.v
  store i8 1, ptr %i.bv, align 8, !noalias !30902
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cn, ptr noundef nonnull align 8 dereferenceable(40) %i.ak, i64 40, i1 false), !noalias !30902
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !30902
  br label %bb.an

bb.v:                                             ; preds = %bb.s, %bb.p, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !30902
  %i.co = load ptr, ptr @_RNvNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore17read_commit_entry010___CALLSITE, align 8, !noalias !30902, !nonnull !4, !align !17, !noundef !4 ; 2 uses
  store i64 2, ptr %i.ak, align 8, !alias.scope !30907, !noalias !30910
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  store ptr %i.co, ptr %i.cp, align 8, !alias.scope !30907, !noalias !30910
  %i.cq = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !30902
  %.not.i = icmp eq i8 %i.cq, 0
  br i1 %.not.i, label %bb.w, label %bb.u

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !30902
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !30902
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !30902
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !30902
  %i.cr = load i64, ptr %i.ca, align 8, !noalias !30902, !noundef !4
  invoke void @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage5utils23commit_uri_from_version(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ag, i64 noundef %i.cr)
          to label %bb.y unwind label %bb.x, !noalias !30906

bb.x:                                             ; preds = %bb.w
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.y:                                             ; preds = %bb.w
  %i.ct = getelementptr inbounds nuw i8, ptr %i.co, i64 48
  store ptr %i.ag, ptr %i.ah, align 8, !noalias !30902
  store ptr %i.ca, ptr %i.ai, align 8, !noalias !30902
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr @111, ptr %i.cu, align 8, !noalias !30902
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store ptr %i.ah, ptr %i.cv, align 8, !noalias !30902
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  store ptr @226, ptr %i.cw, align 8, !noalias !30902
  store i64 1, ptr %i.aj, align 8, !alias.scope !30912, !noalias !30915
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr %i.ai, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !30912, !noalias !30915
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store i64 2, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !30912, !noalias !30915
  %i.cx = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  store ptr %i.ct, ptr %i.cx, align 8, !alias.scope !30912, !noalias !30915
  %i.cy = invoke noundef nonnull align 8 ptr @_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span10record_all(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ak, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.aj)
          to label %bb.aa unwind label %bb.z, !noalias !30906 ; 0 uses

bb.z:                                             ; preds = %bb.y
  %i.cz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ag) #40
          to label %.body.i unwind label %bb.ae, !noalias !30906

bb.aa:                                            ; preds = %bb.y
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i unwind label %bb.ab, !noalias !30906

bb.ab:                                            ; preds = %bb.aa
  %i.da = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %.body.i unwind label %bb.ac, !noalias !30906

bb.ac:                                            ; preds = %bb.ab
  %i.db = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !30906
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.aa
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.ad, !noalias !30906

.body.i:                                          ; preds = %bb.ad, %bb.ab, %bb.z, %bb.x
  %.pn2.i = phi { ptr, i32 } [ %i.cs, %bb.x ], [ %i.cz, %bb.z ], [ %i.dc, %bb.ad ], [ %i.da, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !30902
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !30902
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !30902
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !30902
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span4SpanECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(40) %i.ak) #40
          to label %bb.t unwind label %bb.ae, !noalias !30906

bb.ad:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !30902
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !30902
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !30902
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !30902
  br label %bb.u

bb.ae:                                            ; preds = %bb.fq, %bb.fp, %.body44.i, %bb.au, %bb.ai, %.body.i, %bb.z
  %i.dd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !30906
  unreachable

bb.af:                                            ; preds = %bb.s
  %i.de = load ptr, ptr @_RNvNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore17read_commit_entry010___CALLSITE, align 8, !noalias !30902, !nonnull !4, !align !17, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !30902
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !30902
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !30902
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !30902
  %i.df = load i64, ptr %i.ca, align 8, !noalias !30902, !noundef !4
  invoke void @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage5utils23commit_uri_from_version(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.al, i64 noundef %i.df)
          to label %bb.ah unwind label %bb.ag, !noalias !30906

bb.ag:                                            ; preds = %bb.af
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %.body36.i

bb.ah:                                            ; preds = %bb.af
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 48
  store ptr %i.al, ptr %i.am, align 8, !noalias !30902
  store ptr %i.ca, ptr %i.an, align 8, !noalias !30902
  %i.di = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr @111, ptr %i.di, align 8, !noalias !30902
  %i.dj = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store ptr %i.am, ptr %i.dj, align 8, !noalias !30902
  %i.dk = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  store ptr @226, ptr %i.dk, align 8, !noalias !30902
  store i64 1, ptr %i.ao, align 8, !alias.scope !30918, !noalias !30921
  %.sroa.4.0..sroa_idx.i32.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr %i.an, ptr %.sroa.4.0..sroa_idx.i32.i, align 8, !alias.scope !30918, !noalias !30921
  %.sroa.5.0..sroa_idx.i33.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store i64 2, ptr %.sroa.5.0..sroa_idx.i33.i, align 8, !alias.scope !30918, !noalias !30921
  %i.dl = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  store ptr %i.dh, ptr %i.dl, align 8, !alias.scope !30918, !noalias !30921
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 64
  invoke void @_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span3new(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.dm, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.de, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ao)
          to label %bb.aj unwind label %bb.ai, !noalias !30906

bb.ai:                                            ; preds = %bb.ah
  %i.dn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.al) #40
          to label %.body36.i unwind label %bb.ae, !noalias !30906

bb.aj:                                            ; preds = %bb.ah
  store i8 1, ptr %i.bv, align 8, !noalias !30902
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.al)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i35.i unwind label %bb.ak, !noalias !30906

bb.ak:                                            ; preds = %bb.aj
  %i.do = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.al)
          to label %.body36.i unwind label %bb.al, !noalias !30906

bb.al:                                            ; preds = %bb.ak
  %i.dp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !30906
  unreachable
end_hunk_7
begin_hunk_8_@_RNCNvXs1_NtNtCs14kWLkQVSKO_14deltalake_core8logstore16default_logstoreNtB7_15DefaultLogStoreNtB9_8LogStore17read_commit_entry0Bb_:bb.a
  %i.ew = trunc nuw i8 %i.ev to i1
  br i1 %i.ew, label %bb.fm, label %bb.fs

bb.bc:                                            ; preds = %bb.ap, %bb.k
  %i.ex = phi ptr [ %i.bt, %bb.ap ], [ %i.bs, %bb.k ] ; 4 uses
  %i.ey = phi ptr [ %i.bu, %bb.ap ], [ %i.br, %bb.k ] ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9179.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10180.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !30902
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !30902
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !30902
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5135.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !30902
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 353 ; 4 uses
  %i.fb = load i8, ptr %i.fa, align 1, !range !16574, !noalias !30924, !noundef !4
  switch i8 %i.fb, label %default.unreachable34 [
    i8 0, label %bb.bd
    i8 1, label %bb.bm
    i8 2, label %bb.bn
    i8 3, label %._crit_edge.i.i
    i8 4, label %bb.be
  ]

._crit_edge.i.i:                                  ; preds = %bb.bc
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %1, i64 360
  %.val.i.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !alias.scope !30928, !noalias !30931
  %.phi.trans.insert197.i.i = getelementptr inbounds nuw i8, ptr %1, i64 368
  %.val1.i.pre.i.i = load ptr, ptr %.phi.trans.insert197.i.i, align 8, !alias.scope !30928, !noalias !30931
  br label %bb.bp

bb.bd:                                            ; preds = %bb.bc
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 352
  store i8 0, ptr %i.fc, align 8, !noalias !30924
  %i.fd = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.fe = load i64, ptr %i.fd, align 8, !noalias !30924, !noundef !4
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 328 ; 3 uses
  invoke void @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage5utils23commit_uri_from_version(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ff, i64 noundef %i.fe)
          to label %bb.bg unwind label %bb.bf, !noalias !30934

bb.be:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !30924
  br label %bb.dw

bb.bf:                                            ; preds = %bb.bd
  %i.fg = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

bb.bg:                                            ; preds = %bb.bd
  %i.fh = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.fi = load ptr, ptr %i.fh, align 8, !noalias !30924, !nonnull !4, !noundef !4
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.fk = load ptr, ptr %i.fj, align 8, !noalias !30924, !nonnull !4, !align !17, !noundef !4
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 80
  %i.fm = load ptr, ptr %i.fl, align 8, !invariant.load !4, !noalias !30934, !nonnull !4
  %i.fn = invoke { ptr, ptr } %i.fm(ptr noundef nonnull %i.fi, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ff)
          to label %bb.bi unwind label %bb.bh, !noalias !30934 ; 2 uses

bb.bh:                                            ; preds = %bb.bg
  %i.fo = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ff) #40
          to label %bb.bk unwind label %bb.bj, !noalias !30934

bb.bi:                                            ; preds = %bb.bg
  %i.fp = extractvalue { ptr, ptr } %i.fn, 0      ; 2 uses
  %i.fq = extractvalue { ptr, ptr } %i.fn, 1      ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %1, i64 360
  store ptr %i.fp, ptr %i.fr, align 8, !noalias !30924
  %i.fs = getelementptr inbounds nuw i8, ptr %1, i64 368
  store ptr %i.fq, ptr %i.fs, align 8, !noalias !30924
  br label %bb.bp

bb.bj:                                            ; preds = %bb.fh, %bb.fc, %bb.dv, %bb.du, %bb.cw, %.body.i.i, %bb.bo, %bb.bh
  %i.ft = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !30934
  unreachable

bb.bk:                                            ; preds = %bb.fh, %bb.fg, %bb.fb, %.body93.i.i, %.body.i.i, %bb.bh
  %.pn46.i.i = phi { ptr, i32 } [ %i.mh, %bb.fb ], [ %.pn43.i.i, %.body93.i.i ], [ %.pn43.i.i, %bb.fh ], [ %.pn43.i.i, %bb.fg ], [ %.pn.i.i, %.body.i.i ], [ %i.fo, %bb.bh ]
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 352
  store i8 0, ptr %i.fu, align 8, !noalias !30924
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bf
  %.pn46.pn.i.i = phi { ptr, i32 } [ %.pn46.i.i, %bb.bk ], [ %i.fg, %bb.bf ]
  store i8 2, ptr %i.fa, align 1, !noalias !30924
  br label %.body44.i

bb.bm:                                            ; preds = %bb.bc
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @107) #41
          to label %.noexc46.i unwind label %bb.fi, !noalias !30906

.noexc46.i:                                       ; preds = %bb.bm
  unreachable

bb.bn:                                            ; preds = %bb.bc
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @107) #41
          to label %.noexc47.i unwind label %bb.fi, !noalias !30906

.noexc47.i:                                       ; preds = %bb.bn
  unreachable

bb.bo:                                            ; preds = %bb.bp
  %i.fv = landingpad { ptr, i32 }
          cleanup
  %.val62.i.i = load ptr, ptr %i.fw, align 8, !noalias !30924
  %.val63.i.i = load ptr, ptr %i.fx, align 8, !noalias !30924, !nonnull !4, !align !17, !noundef !4
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store9GetResultNtB2w_5ErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core(ptr %.val62.i.i, ptr nonnull %.val63.i.i) #40
          to label %.body.i.i unwind label %bb.bj, !noalias !30934

bb.bp:                                            ; preds = %bb.bi, %._crit_edge.i.i
  %.val1.i.i.i = phi ptr [ %.val1.i.pre.i.i, %._crit_edge.i.i ], [ %i.fq, %bb.bi ]
  %.val.i.i.i = phi ptr [ %.val.i.pre.i.i, %._crit_edge.i.i ], [ %i.fp, %bb.bi ]
  %i.fw = getelementptr inbounds nuw i8, ptr %1, i64 360 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !30928)
  %i.fx = getelementptr inbounds nuw i8, ptr %1, i64 368 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 24
  %i.fz = load ptr, ptr %i.fy, align 8, !invariant.load !4, !noalias !30935, !nonnull !4
  invoke void %i.fz(ptr noalias noundef nonnull sret([192 x i8]) align 8 captures(address) dereferenceable(192) %i.ac, ptr noundef nonnull %.val.i.i.i, ptr noalias noundef nonnull align 8 dereferenceable(32) %2) #43
          to label %_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultNtCsjyY8HP3IvQ6_12object_store9GetResultNtB2d_5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs14kWLkQVSKO_14deltalake_core.exit.i.i unwind label %bb.bo, !noalias !30934, !inline_history !25701

_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultNtCsjyY8HP3IvQ6_12object_store9GetResultNtB2d_5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.bp
  %i.ga = load i64, ptr %i.ac, align 8, !range !1700, !noalias !30924, !noundef !4
  %i.gb = icmp eq i64 %i.ga, -9223372036854775807
  br i1 %i.gb, label %bb.fj, label %bb.bq

bb.bq:                                            ; preds = %_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultNtCsjyY8HP3IvQ6_12object_store9GetResultNtB2d_5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.gc = getelementptr inbounds nuw i8, ptr %1, i64 352 ; 2 uses
  store i8 1, ptr %i.gc, align 8, !noalias !30924
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.ez, ptr noundef nonnull align 8 dereferenceable(192) %i.ac, i64 192, i1 false), !noalias !30924
  %.val.i.i = load ptr, ptr %i.fw, align 8, !noalias !30924 ; 5 uses
  %.val61.i.i = load ptr, ptr %i.fx, align 8, !noalias !30924, !nonnull !4, !align !17, !noundef !4 ; 5 uses
  %i.gd = load ptr, ptr %.val61.i.i, align 8, !invariant.load !4, !noalias !30934 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.gd, null
  br i1 %.not.i.i.i.i, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  invoke void %i.gd(ptr noundef nonnull %.val.i.i)
          to label %bb.bs unwind label %bb.bu, !noalias !30934

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %i.ge = getelementptr inbounds nuw i8, ptr %.val61.i.i, i64 8
  %i.gf = load i64, ptr %i.ge, align 8, !range !1123, !invariant.load !4, !noalias !30934 ; 2 uses
  %i.gg = icmp eq i64 %i.gf, 0
  br i1 %i.gg, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store9GetResultNtB2w_5ErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit.i.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.gh = getelementptr inbounds nuw i8, ptr %.val61.i.i, i64 16
  %i.gi = load i64, ptr %i.gh, align 8, !range !947, !invariant.load !4, !noalias !30934
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %i.gf, i64 noundef range(i64 1, 536870913) %i.gi) #33, !noalias !30934
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store9GetResultNtB2w_5ErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit.i.i

bb.bu:                                            ; preds = %bb.br
  %i.gj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %.val61.i.i, i64 8
  %i.gl = load i64, ptr %i.gk, align 8, !range !1123, !invariant.load !4, !noalias !30934 ; 2 uses
  %i.gm = icmp eq i64 %i.gl, 0
  br i1 %i.gm, label %.body.i.i, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.gn = getelementptr inbounds nuw i8, ptr %.val61.i.i, i64 16
  %i.go = load i64, ptr %i.gn, align 8, !range !947, !invariant.load !4, !noalias !30934
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %i.gl, i64 noundef range(i64 1, 536870913) %i.go) #33, !noalias !30934
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.bv, %bb.bu, %bb.bo
  %.pn.i.i = phi { ptr, i32 } [ %i.fv, %bb.bo ], [ %i.gj, %bb.bu ], [ %i.gj, %bb.bv ]
  %i.gp = getelementptr inbounds nuw i8, ptr %1, i64 328
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.gp) #40
          to label %bb.bk unwind label %bb.bj, !noalias !30934

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store9GetResultNtB2w_5ErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.bt, %bb.bs
  %i.gq = load i64, ptr %i.ez, align 8, !range !201, !noalias !30924, !noundef !4
  %i.gr = icmp eq i64 %i.gq, -9223372036854775808
  br i1 %i.gr, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store9GetResultNtB2w_5ErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.gs = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.gt = load i64, ptr %i.gs, align 8, !range !19016, !noalias !30924, !noundef !4 ; 2 uses
  %i.gu = icmp ne i64 %i.gt, -9223372036854775800
  call void @llvm.assume(i1 %i.gu)
  %i.gv = icmp eq i64 %i.gt, -9223372036854775801
  br i1 %i.gv, label %bb.by, label %bb.cx

bb.bx:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store9GetResultNtB2w_5ErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !30924
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.fw, ptr noundef nonnull align 8 dereferenceable(192) %i.ez, i64 192, i1 false), !noalias !30924
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 744
  store i8 0, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !30924
  br label %bb.dw

bb.by:                                            ; preds = %bb.bw
  %i.gw = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !30924
  %i.gx = icmp samesign ult i64 %i.gw, 2
  br i1 %i.gx, label %bb.bz, label %bb.cg

bb.bz:                                            ; preds = %bb.by
  %i.gy = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore17read_commit_entry00s_10___CALLSITE, i64 16) monotonic, align 8, !noalias !30924 ; 2 uses
  %i.gz = icmp ult i8 %i.gy, 3
  br i1 %i.gz, label %bb.cc, label %bb.ca, !prof !25908

bb.ca:                                            ; preds = %bb.bz
  %i.ha = invoke noundef i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore17read_commit_entry00s_10___CALLSITE) #42
          to label %bb.cc unwind label %bb.cb, !noalias !30934

bb.cb:                                            ; preds = %bb.ca
  %i.hb = landingpad { ptr, i32 }
          cleanup
  br label %bb.cw

bb.cc:                                            ; preds = %bb.ca, %bb.bz
  %.sroa.0.0.i.i.i = phi i8 [ %i.gy, %bb.bz ], [ %i.ha, %bb.ca ] ; 2 uses
  %i.hc = icmp eq i8 %.sroa.0.0.i.i.i, 0
  br i1 %i.hc, label %bb.cg, label %bb.ce

bb.cd:                                            ; preds = %bb.ce
  %i.hd = landingpad { ptr, i32 }
          cleanup
  br label %bb.cw

bb.ce:                                            ; preds = %bb.cc
  %i.he = load ptr, ptr @_RNvNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore17read_commit_entry00s_10___CALLSITE, align 8, !noalias !30924, !nonnull !4, !align !17, !noundef !4
  %i.hf = invoke noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.he, i8 noundef %.sroa.0.0.i.i.i)
          to label %bb.cf unwind label %bb.cd, !noalias !30934

bb.cf:                                            ; preds = %bb.ce
  br i1 %i.hf, label %bb.cq, label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.cc, %bb.by
  %i.hg = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !30924
  %.not195.i.i = icmp eq i8 %i.hg, 0
  br i1 %.not195.i.i, label %bb.ch, label %bb.ct

bb.ch:                                            ; preds = %bb.cg
  %i.hh = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !30924 ; 2 uses
  %i.hi = icmp ult i64 %i.hh, 6
  call void @llvm.assume(i1 %i.hi)
  %i.hj = icmp samesign ugt i64 %i.hh, 3
  br i1 %i.hj, label %bb.cj, label %bb.ct

bb.ci:                                            ; preds = %bb.cj
  %i.hk = landingpad { ptr, i32 }
          cleanup
  br label %bb.cw

bb.cj:                                            ; preds = %bb.ch
  %i.hl = load ptr, ptr @_RNvNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore17read_commit_entry00s_10___CALLSITE, align 8, !noalias !30924, !nonnull !4, !align !17, !noundef !4 ; 3 uses
  %i.hm = getelementptr i8, ptr %i.hl, i64 32
  %.val83.i.i = load ptr, ptr %i.hm, align 8, !noalias !30934, !nonnull !4, !noundef !4
  %i.hn = getelementptr i8, ptr %i.hl, i64 40
  %.val84.i.i = load i64, ptr %i.hn, align 8, !noalias !30934, !noundef !4
  store i64 4, ptr %i.n, align 8, !alias.scope !30936, !noalias !30924
  %.sroa.6159.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %.val83.i.i, ptr %.sroa.6159.0..sroa_idx.i.i, align 8, !alias.scope !30936, !noalias !30924
  %.sroa.8160.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 %.val84.i.i, ptr %.sroa.8160.0..sroa_idx.i.i, align 8, !alias.scope !30936, !noalias !30924
  %i.ho = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %bb.ck unwind label %bb.ci, !noalias !30934 ; 2 uses

bb.ck:                                            ; preds = %bb.cj
  %i.hp = extractvalue { ptr, ptr } %i.ho, 0      ; 2 uses
  %i.hq = extractvalue { ptr, ptr } %i.ho, 1      ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 24
  %i.hs = load ptr, ptr %i.hr, align 8, !invariant.load !4, !noalias !30934, !nonnull !4
  %i.ht = invoke noundef zeroext i1 %i.hs(ptr noundef %i.hp, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.n)
          to label %bb.cm unwind label %bb.cl, !noalias !30934

bb.cl:                                            ; preds = %bb.ck
  %i.hu = landingpad { ptr, i32 }
          cleanup
  br label %bb.cw

bb.cm:                                            ; preds = %bb.ck
  br i1 %i.ht, label %bb.cn, label %bb.ct

bb.cn:                                            ; preds = %bb.cm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !30924
  %i.hv = load ptr, ptr @_RNvNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore17read_commit_entry00s_10___CALLSITE, align 8, !noalias !30924, !nonnull !4, !align !17, !noundef !4
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !30924
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !30924
  store ptr @108, ptr %i.k, align 8, !noalias !30924
  %i.hx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr inttoptr (i64 45 to ptr), ptr %i.hx, align 8, !noalias !30924
  store ptr %i.k, ptr %i.l, align 8, !noalias !30924
  %i.hy = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr @74, ptr %i.hy, align 8, !noalias !30924
  store i64 1, ptr %i.m, align 8, !alias.scope !30940, !noalias !30943
  %.sroa.4.0..sroa_idx.i89.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.l, ptr %.sroa.4.0..sroa_idx.i89.i.i, align 8, !alias.scope !30940, !noalias !30943
  %.sroa.5.0..sroa_idx.i90.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 1, ptr %.sroa.5.0..sroa_idx.i90.i.i, align 8, !alias.scope !30940, !noalias !30943
  %i.hz = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store ptr %i.hw, ptr %i.hz, align 8, !alias.scope !30940, !noalias !30943
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.hl, ptr noundef nonnull %i.hp, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.hq, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.m)
          to label %bb.cp unwind label %bb.co, !noalias !30934

bb.co:                                            ; preds = %bb.cn
  %i.ia = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !30924
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !30924
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !30924
  br label %bb.cw

bb.cp:                                            ; preds = %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !30924
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !30924
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !30924
  br label %bb.ct

bb.cq:                                            ; preds = %bb.cf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !30924
  %i.ib = load ptr, ptr @_RNvNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore17read_commit_entry00s_10___CALLSITE, align 8, !noalias !30924, !nonnull !4, !align !17, !noundef !4
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !30924
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !30924
  store ptr @108, ptr %i.o, align 8, !noalias !30924
  %i.id = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr inttoptr (i64 45 to ptr), ptr %i.id, align 8, !noalias !30924
  store ptr %i.o, ptr %i.p, align 8, !noalias !30924
  %i.ie = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr @74, ptr %i.ie, align 8, !noalias !30924
  store i64 1, ptr %i.q, align 8, !noalias !30924
  %.sroa.6152.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.p, ptr %.sroa.6152.0..sroa_idx.i.i, align 8, !noalias !30924
  %.sroa.7153.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 1, ptr %.sroa.7153.0..sroa_idx.i.i, align 8, !noalias !30924
  %.sroa.8154.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store ptr %i.ic, ptr %.sroa.8154.0..sroa_idx.i.i, align 8, !noalias !30924
  invoke fastcc void @_RNCNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore17read_commit_entry00s_0B9_(ptr noalias noundef readonly align 8 captures(address) dereferenceable(32) %i.q)
          to label %bb.cs unwind label %bb.cr, !noalias !30934

bb.cr:                                            ; preds = %bb.cq
  %i.if = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !30924
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !30924
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !30924
  br label %bb.cw

bb.cs:                                            ; preds = %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !30924
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !30924
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !30924
  br label %bb.ct

bb.ct:                                            ; preds = %bb.eu, %bb.ds, %bb.cs, %bb.cp, %bb.cm, %bb.ch, %bb.cg
  %.sroa.0176.0.i.i = phi i64 [ -9223372036854775711, %bb.eu ], [ -9223372036854775743, %bb.ds ], [ -9223372036854775711, %bb.cp ], [ -9223372036854775711, %bb.cm ], [ -9223372036854775711, %bb.ch ], [ -9223372036854775711, %bb.cg ], [ -9223372036854775711, %bb.cs ] ; 3 uses
  %.sroa.5177.0.i.i = phi i64 [ %.sroa.0182.0.copyload.i.i, %bb.eu ], [ %.sroa.0184.0.copyload.i.i, %bb.ds ], [ 0, %bb.cp ], [ 0, %bb.cm ], [ 0, %bb.ch ], [ 0, %bb.cg ], [ 0, %bb.cs ] ; 3 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %1, i64 328 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ig)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i.i unwind label %bb.cu, !noalias !30934

bb.cu:                                            ; preds = %bb.ct
  %i.ih = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ig)
          to label %.body93.i.i unwind label %bb.cv, !noalias !30934

bb.cv:                                            ; preds = %bb.cu
  %i.ii = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !30934
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %bb.ct
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ig)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs14kWLkQVSKO_14deltalake_core.exit.i.i unwind label %bb.ey, !noalias !30934

bb.cw:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs14kWLkQVSKO_14deltalake_core.exit.i.i, %bb.dt, %bb.cr, %bb.co, %bb.cl, %bb.ci, %bb.cd, %bb.cb
  %.pn40.pn.i.i = phi { ptr, i32 } [ %i.if, %bb.cr ], [ %.pn32.ph.i.i, %bb.dt ], [ %.pn18.pn.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %i.ia, %bb.co ], [ %i.hu, %bb.cl ], [ %i.hd, %bb.cd ], [ %i.hk, %bb.ci ], [ %i.hb, %bb.cb ]
  %i.ij = getelementptr inbounds nuw i8, ptr %1, i64 328
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ij) #40
          to label %.body93.i.i unwind label %bb.bj, !noalias !30934

bb.cx:                                            ; preds = %bb.bw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !30924
  store i8 0, ptr %i.gc, align 8, !noalias !30924
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.j, ptr noundef nonnull align 8 dereferenceable(72) %i.gs, i64 72, i1 false), !noalias !30924
  %i.ik = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !30924
  %i.il = icmp samesign ult i64 %i.ik, 5
  br i1 %i.il, label %bb.cy, label %bb.df

bb.cy:                                            ; preds = %bb.cx
  %i.im = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore17read_commit_entry00s0_10___CALLSITE, i64 16) monotonic, align 8, !noalias !30924 ; 2 uses
  %i.in = icmp ult i8 %i.im, 3
  br i1 %i.in, label %bb.db, label %bb.cz, !prof !25908

bb.cz:                                            ; preds = %bb.cy
  %i.io = invoke noundef i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore17read_commit_entry00s0_10___CALLSITE) #42
          to label %bb.db unwind label %bb.da, !noalias !30934

bb.da:                                            ; preds = %bb.cz
  %i.ip = landingpad { ptr, i32 }
          cleanup
  br label %bb.du

bb.db:                                            ; preds = %bb.cz, %bb.cy
  %.sroa.0.0.i97.i.i = phi i8 [ %i.im, %bb.cy ], [ %i.io, %bb.cz ] ; 2 uses
  %i.iq = icmp eq i8 %.sroa.0.0.i97.i.i, 0
  br i1 %i.iq, label %bb.df, label %bb.dd

bb.dc:                                            ; preds = %bb.dd
  %i.ir = landingpad { ptr, i32 }
          cleanup
  br label %bb.du

bb.dd:                                            ; preds = %bb.db
  %i.is = load ptr, ptr @_RNvNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore17read_commit_entry00s0_10___CALLSITE, align 8, !noalias !30924, !nonnull !4, !align !17, !noundef !4
  %i.it = invoke noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.is, i8 noundef %.sroa.0.0.i97.i.i)
          to label %bb.de unwind label %bb.dc, !noalias !30934

bb.de:                                            ; preds = %bb.dd
  br i1 %i.it, label %bb.dp, label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.db, %bb.cx
  %i.iu = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !30924
  %.not193.i.i = icmp eq i8 %i.iu, 0
  br i1 %.not193.i.i, label %bb.dg, label %bb.ds

bb.dg:                                            ; preds = %bb.df
  %i.iv = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !30924 ; 2 uses
  %i.iw = icmp ult i64 %i.iv, 6
  call void @llvm.assume(i1 %i.iw)
  %.not194.i.i = icmp eq i64 %i.iv, 0
  br i1 %.not194.i.i, label %bb.ds, label %bb.di

bb.dh:                                            ; preds = %bb.di
  %i.ix = landingpad { ptr, i32 }
          cleanup
  br label %bb.du

bb.di:                                            ; preds = %bb.dg
  %i.iy = load ptr, ptr @_RNvNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore17read_commit_entry00s0_10___CALLSITE, align 8, !noalias !30924, !nonnull !4, !align !17, !noundef !4 ; 3 uses
  %i.iz = getelementptr i8, ptr %i.iy, i64 32
  %.val81.i.i = load ptr, ptr %i.iz, align 8, !noalias !30934, !nonnull !4, !noundef !4
  %i.ja = getelementptr i8, ptr %i.iy, i64 40
  %.val82.i.i = load i64, ptr %i.ja, align 8, !noalias !30934, !noundef !4
  store i64 1, ptr %i.e, align 8, !alias.scope !30946, !noalias !30924
  %.sroa.6171.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %.val81.i.i, ptr %.sroa.6171.0..sroa_idx.i.i, align 8, !alias.scope !30946, !noalias !30924
  %.sroa.8172.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %.val82.i.i, ptr %.sroa.8172.0..sroa_idx.i.i, align 8, !alias.scope !30946, !noalias !30924
  %i.jb = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %bb.dj unwind label %bb.dh, !noalias !30934 ; 2 uses

bb.dj:                                            ; preds = %bb.di
  %i.jc = extractvalue { ptr, ptr } %i.jb, 0      ; 2 uses
  %i.jd = extractvalue { ptr, ptr } %i.jb, 1      ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 24
  %i.jf = load ptr, ptr %i.je, align 8, !invariant.load !4, !noalias !30934, !nonnull !4
  %i.jg = invoke noundef zeroext i1 %i.jf(ptr noundef %i.jc, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.e)
          to label %bb.dl unwind label %bb.dk, !noalias !30934

bb.dk:                                            ; preds = %bb.dj
  %i.jh = landingpad { ptr, i32 }
          cleanup
  br label %bb.du

bb.dl:                                            ; preds = %bb.dj
  br i1 %i.jg, label %bb.dm, label %bb.ds

bb.dm:                                            ; preds = %bb.dl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !30924
  %i.ji = load ptr, ptr @_RNvNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore17read_commit_entry00s0_10___CALLSITE, align 8, !noalias !30924, !nonnull !4, !align !17, !noundef !4
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !30924
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !30924
  store ptr @109, ptr %i.b, align 8, !noalias !30924
  %i.jk = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 55 to ptr), ptr %i.jk, align 8, !noalias !30924
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !30924
  store ptr %i.j, ptr %i.a, align 8, !noalias !30924
  %i.jl = getelementptr inbounds nuw i8, ptr %1, i64 320
  store ptr %i.b, ptr %i.c, align 8, !noalias !30924
  %i.jm = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @74, ptr %i.jm, align 8, !noalias !30924
  %i.jn = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.a, ptr %i.jn, align 8, !noalias !30924
  %i.jo = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr @110, ptr %i.jo, align 8, !noalias !30924
  %i.jp = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr %i.jl, ptr %i.jp, align 8, !noalias !30924
  %i.jq = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store ptr @111, ptr %i.jq, align 8, !noalias !30924
  store i64 1, ptr %i.d, align 8, !alias.scope !30950, !noalias !30953
  %.sroa.4.0..sroa_idx.i104.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.c, ptr %.sroa.4.0..sroa_idx.i104.i.i, align 8, !alias.scope !30950, !noalias !30953
  %.sroa.5.0..sroa_idx.i105.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 3, ptr %.sroa.5.0..sroa_idx.i105.i.i, align 8, !alias.scope !30950, !noalias !30953
  %i.jr = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %i.jj, ptr %i.jr, align 8, !alias.scope !30950, !noalias !30953
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.iy, ptr noundef nonnull %i.jc, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.jd, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.d)
          to label %bb.do unwind label %bb.dn, !noalias !30934

bb.dn:                                            ; preds = %bb.dm
  %i.js = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !30924
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !30924
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !30924
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !30924
  br label %bb.du

bb.do:                                            ; preds = %bb.dm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !30924
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !30924
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !30924
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !30924
  br label %bb.ds

bb.dp:                                            ; preds = %bb.de
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !30924
  %i.jt = load ptr, ptr @_RNvNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore17read_commit_entry00s0_10___CALLSITE, align 8, !noalias !30924, !nonnull !4, !align !17, !noundef !4
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !30924
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !30924
  store ptr @109, ptr %i.g, align 8, !noalias !30924
  %i.jv = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr inttoptr (i64 55 to ptr), ptr %i.jv, align 8, !noalias !30924
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !30924
  store ptr %i.j, ptr %i.f, align 8, !noalias !30924
  %i.jw = getelementptr inbounds nuw i8, ptr %1, i64 320
  store ptr %i.g, ptr %i.h, align 8, !noalias !30924
  %i.jx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @74, ptr %i.jx, align 8, !noalias !30924
  %i.jy = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.f, ptr %i.jy, align 8, !noalias !30924
  %i.jz = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr @110, ptr %i.jz, align 8, !noalias !30924
  %i.ka = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store ptr %i.jw, ptr %i.ka, align 8, !noalias !30924
  %i.kb = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store ptr @111, ptr %i.kb, align 8, !noalias !30924
  store i64 1, ptr %i.i, align 8, !noalias !30924
  %.sroa.8164.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.h, ptr %.sroa.8164.0..sroa_idx.i.i, align 8, !noalias !30924
  %.sroa.9165.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 3, ptr %.sroa.9165.0..sroa_idx.i.i, align 8, !noalias !30924
  %.sroa.10166.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr %i.ju, ptr %.sroa.10166.0..sroa_idx.i.i, align 8, !noalias !30924
  invoke fastcc void @_RNCNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore17read_commit_entry00s0_0B9_(ptr noalias noundef readonly align 8 captures(address) dereferenceable(32) %i.i)
          to label %bb.dr unwind label %bb.dq, !noalias !30934

bb.dq:                                            ; preds = %bb.dp
  %i.kc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !30924
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !30924
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !30924
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !30924
  br label %bb.du

bb.dr:                                            ; preds = %bb.dp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !30924
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !30924
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !30924
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !30924
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %bb.do, %bb.dl, %bb.dg, %bb.df
  %.sroa.0184.0.copyload.i.i = load i64, ptr %i.j, align 8, !noalias !30924
  %.sroa.5185.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.9179.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5185.0..sroa_idx.i.i, i64 32, i1 false), !noalias !30924
  %.sroa.6186.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.10180.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6186.0..sroa_idx.i.i, i64 32, i1 false), !noalias !30924
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !30924
  br label %bb.ct

bb.dt:                                            ; preds = %bb.du
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !30924
  br label %bb.cw

bb.du:                                            ; preds = %bb.dq, %bb.dn, %bb.dk, %bb.dh, %bb.dc, %bb.da
  %.pn32.ph.i.i = phi { ptr, i32 } [ %i.ir, %bb.dc ], [ %i.kc, %bb.dq ], [ %i.ix, %bb.dh ], [ %i.jh, %bb.dk ], [ %i.js, %bb.dn ], [ %i.ip, %bb.da ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(72) %i.j) #40
          to label %bb.dt unwind label %bb.bj, !noalias !30934

bb.dv:                                            ; preds = %bb.dw
  %i.kd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !30924
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtBO_9GetResult5bytes0ECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 %i.ke) #40
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs14kWLkQVSKO_14deltalake_core.exit.i.i unwind label %bb.bj, !noalias !30934

bb.dw:                                            ; preds = %bb.bx, %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !30924
  %i.ke = getelementptr inbounds nuw i8, ptr %1, i64 360 ; 3 uses
  invoke fastcc void @_RNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB7_9GetResult5bytes0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.aa, ptr noundef nonnull align 8 %i.ke, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.dx unwind label %bb.dv, !noalias !30934

bb.dx:                                            ; preds = %bb.dw
  %i.kf = load i64, ptr %i.aa, align 8, !range !1828, !noalias !30924, !noundef !4 ; 3 uses
  %i.kg = icmp eq i64 %i.kf, -9223372036854775789
  br i1 %i.kg, label %bb.dy, label %bb.dz

bb.dy:                                            ; preds = %bb.dx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !30924
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !30924
  br label %bb.fj

bb.dz:                                            ; preds = %bb.dx
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3.0..sroa_idx.i.i, i64 32, i1 false), !noalias !30924
  %.sroa.5135.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5135.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5135.0..sroa_idx.i.i, i64 32, i1 false), !noalias !30924
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !30924
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtBO_9GetResult5bytes0ECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 %i.ke)
          to label %bb.eb unwind label %bb.ea, !noalias !30934

bb.ea:                                            ; preds = %bb.dz
  %i.kh = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs14kWLkQVSKO_14deltalake_core.exit.i.i

bb.eb:                                            ; preds = %bb.dz
  %.not.i108.i.i = icmp eq i64 %i.kf, -9223372036854775790
  br i1 %.not.i108.i.i, label %bb.ec, label %bb.fd

bb.ec:                                            ; preds = %bb.eb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ab, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3.i.i, i64 32, i1 false), !noalias !30924
  %i.ki = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !30924
  %i.kj = icmp samesign ult i64 %i.ki, 2
  br i1 %i.kj, label %bb.ed, label %bb.ek

bb.ed:                                            ; preds = %bb.ec
  %i.kk = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore17read_commit_entry0010___CALLSITE, i64 16) monotonic, align 8, !noalias !30924 ; 2 uses
  %i.kl = icmp ult i8 %i.kk, 3
  br i1 %i.kl, label %bb.eg, label %bb.ee, !prof !25908

bb.ee:                                            ; preds = %bb.ed
  %i.km = invoke noundef i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore17read_commit_entry0010___CALLSITE) #42
          to label %bb.eg unwind label %bb.ef, !noalias !30934

bb.ef:                                            ; preds = %bb.ee
  %i.kn = landingpad { ptr, i32 }
          cleanup
  br label %bb.fc

bb.eg:                                            ; preds = %bb.ee, %bb.ed
  %.sroa.0.0.i111.i.i = phi i8 [ %i.kk, %bb.ed ], [ %i.km, %bb.ee ] ; 2 uses
  %i.ko = icmp eq i8 %.sroa.0.0.i111.i.i, 0
  br i1 %i.ko, label %bb.ek, label %bb.ei

bb.eh:                                            ; preds = %bb.ei
  %i.kp = landingpad { ptr, i32 }
          cleanup
  br label %bb.fc

bb.ei:                                            ; preds = %bb.eg
  %i.kq = load ptr, ptr @_RNvNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore17read_commit_entry0010___CALLSITE, align 8, !noalias !30924, !nonnull !4, !align !17, !noundef !4
  %i.kr = invoke noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.kq, i8 noundef %.sroa.0.0.i111.i.i)
          to label %bb.ej unwind label %bb.eh, !noalias !30934

bb.ej:                                            ; preds = %bb.ei
  br i1 %i.kr, label %bb.ev, label %bb.ek

bb.ek:                                            ; preds = %bb.ej, %bb.eg, %bb.ec
  %i.ks = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !30924
  %.not.i43.i = icmp eq i8 %i.ks, 0
  br i1 %.not.i43.i, label %bb.el, label %bb.eu

bb.el:                                            ; preds = %bb.ek
  %i.kt = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !30924 ; 2 uses
  %i.ku = icmp ult i64 %i.kt, 6
  call void @llvm.assume(i1 %i.ku)
  %i.kv = icmp samesign ugt i64 %i.kt, 3
  br i1 %i.kv, label %bb.en, label %bb.eu

bb.em:                                            ; preds = %bb.en
  %i.kw = landingpad { ptr, i32 }
          cleanup
  br label %bb.fc

bb.en:                                            ; preds = %bb.el
  %i.kx = load ptr, ptr @_RNvNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore17read_commit_entry0010___CALLSITE, align 8, !noalias !30924, !nonnull !4, !align !17, !noundef !4 ; 3 uses
  %i.ky = getelementptr i8, ptr %i.kx, i64 32
  %.val79.i.i = load ptr, ptr %i.ky, align 8, !noalias !30934, !nonnull !4, !noundef !4
  %i.kz = getelementptr i8, ptr %i.kx, i64 40
  %.val80.i.i = load i64, ptr %i.kz, align 8, !noalias !30934, !noundef !4
  store i64 4, ptr %i.v, align 8, !alias.scope !30956, !noalias !30924
  %.sroa.6147.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %.val79.i.i, ptr %.sroa.6147.0..sroa_idx.i.i, align 8, !alias.scope !30956, !noalias !30924
  %.sroa.8148.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i64 %.val80.i.i, ptr %.sroa.8148.0..sroa_idx.i.i, align 8, !alias.scope !30956, !noalias !30924
  %i.la = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %bb.eo unwind label %bb.em, !noalias !30934 ; 2 uses

bb.eo:                                            ; preds = %bb.en
  %i.lb = extractvalue { ptr, ptr } %i.la, 0      ; 2 uses
  %i.lc = extractvalue { ptr, ptr } %i.la, 1      ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 24
  %i.le = load ptr, ptr %i.ld, align 8, !invariant.load !4, !noalias !30934, !nonnull !4
  %i.lf = invoke noundef zeroext i1 %i.le(ptr noundef %i.lb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.v)
          to label %bb.eq unwind label %bb.ep, !noalias !30934

bb.ep:                                            ; preds = %bb.eo
  %i.lg = landingpad { ptr, i32 }
          cleanup
  br label %bb.fc

bb.eq:                                            ; preds = %bb.eo
  br i1 %i.lf, label %bb.er, label %bb.eu

bb.er:                                            ; preds = %bb.eq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !30924
  %i.lh = load ptr, ptr @_RNvNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore17read_commit_entry0010___CALLSITE, align 8, !noalias !30924, !nonnull !4, !align !17, !noundef !4
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !30924
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !30924
  store ptr @112, ptr %i.s, align 8, !noalias !30924
  %i.lj = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr inttoptr (i64 61 to ptr), ptr %i.lj, align 8, !noalias !30924
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !30924
  %i.lk = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %.val86.i.i = load i64, ptr %i.lk, align 8, !noalias !30924, !noundef !4
  store i64 %.val86.i.i, ptr %i.r, align 8, !noalias !30924
  store ptr %i.s, ptr %i.t, align 8, !noalias !30924
  %i.ll = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr @74, ptr %i.ll, align 8, !noalias !30924
  %i.lm = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store ptr %i.r, ptr %i.lm, align 8, !noalias !30924
  %i.ln = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  store ptr @113, ptr %i.ln, align 8, !noalias !30924
  store i64 1, ptr %i.u, align 8, !alias.scope !30960, !noalias !30963
  %.sroa.4.0..sroa_idx.i118.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %i.t, ptr %.sroa.4.0..sroa_idx.i118.i.i, align 8, !alias.scope !30960, !noalias !30963
  %.sroa.5.0..sroa_idx.i119.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i64 2, ptr %.sroa.5.0..sroa_idx.i119.i.i, align 8, !alias.scope !30960, !noalias !30963
  %i.lo = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store ptr %i.li, ptr %i.lo, align 8, !alias.scope !30960, !noalias !30963
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.kx, ptr noundef nonnull %i.lb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.lc, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.v, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.u)
          to label %bb.et unwind label %bb.es, !noalias !30934

bb.es:                                            ; preds = %bb.er
  %i.lp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !30924
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !30924
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !30924
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !30924
  br label %bb.fc

bb.et:                                            ; preds = %bb.er
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !30924
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !30924
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !30924
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !30924
  br label %bb.eu

bb.eu:                                            ; preds = %bb.ex, %bb.et, %bb.eq, %bb.el, %bb.ek
  %.sroa.0182.0.copyload.i.i = load i64, ptr %i.ab, align 8, !noalias !30924
  %i.lq = getelementptr inbounds nuw i8, ptr %.sroa.3.i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.9179.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.lq, i64 24, i1 false), !noalias !30924
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !30924
  br label %bb.ct

bb.ev:                                            ; preds = %bb.ej
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !30924
  %i.lr = load ptr, ptr @_RNvNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore17read_commit_entry0010___CALLSITE, align 8, !noalias !30924, !nonnull !4, !align !17, !noundef !4
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !30924
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !30924
  store ptr @112, ptr %i.x, align 8, !noalias !30924
  %i.lt = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr inttoptr (i64 61 to ptr), ptr %i.lt, align 8, !noalias !30924
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !30924
  %i.lu = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %.val85.i.i = load i64, ptr %i.lu, align 8, !noalias !30924, !noundef !4
  store i64 %.val85.i.i, ptr %i.w, align 8, !noalias !30924
  store ptr %i.x, ptr %i.y, align 8, !noalias !30924
  %i.lv = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr @74, ptr %i.lv, align 8, !noalias !30924
  %i.lw = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store ptr %i.w, ptr %i.lw, align 8, !noalias !30924
  %i.lx = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  store ptr @113, ptr %i.lx, align 8, !noalias !30924
  store i64 1, ptr %i.z, align 8, !noalias !30924
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %i.y, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !30924
  %.sroa.8141.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store i64 2, ptr %.sroa.8141.0..sroa_idx.i.i, align 8, !noalias !30924
  %.sroa.9142.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  store ptr %i.ls, ptr %.sroa.9142.0..sroa_idx.i.i, align 8, !noalias !30924
  invoke fastcc void @_RNCNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore17read_commit_entry000B9_(ptr noalias noundef readonly align 8 captures(address) dereferenceable(32) %i.z)
          to label %bb.ex unwind label %bb.ew, !noalias !30934

bb.ew:                                            ; preds = %bb.ev
  %i.ly = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !30924
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !30924
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !30924
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !30924
  br label %bb.fc

bb.ex:                                            ; preds = %bb.ev
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !30924
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !30924
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !30924
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !30924
  br label %bb.eu

.body93.i.i:                                      ; preds = %bb.fe, %bb.ey, %bb.cw, %bb.cu
  %.pn43.i.i = phi { ptr, i32 } [ %.pn40.pn.i.i, %bb.cw ], [ %i.ih, %bb.cu ], [ %i.ma, %bb.ey ], [ %i.mr, %bb.fe ] ; 3 uses
  %i.lz = load i64, ptr %i.ez, align 8, !range !201, !noalias !30924, !noundef !4
  %.not45.i.i = icmp eq i64 %i.lz, -9223372036854775808
  br i1 %.not45.i.i, label %bb.fg, label %bb.bk

bb.ey:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i124.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i.i
  %i.ma = landingpad { ptr, i32 }
          cleanup
  br label %.body93.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i.i
  %i.mb = load i64, ptr %i.ez, align 8, !range !201, !noalias !30924, !noundef !4
  %i.mc = icmp eq i64 %i.mb, -9223372036854775808
  br i1 %i.mc, label %bb.ez, label %bb.fk

bb.ez:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.md = getelementptr inbounds nuw i8, ptr %1, i64 352
  %i.me = load i8, ptr %i.md, align 8, !range !34, !noalias !30924, !noundef !4
  %i.mf = trunc nuw i8 %i.me to i1
end_hunk_8
