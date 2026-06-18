inline.NumInlined: 7758
inline.NumDeleted: 2965
begin_hunk_0_@_RINvMs2_NtNtCskQDtHcQtBkN_5tokio7runtime4parkNtB6_16CachedParkThread8block_onNCINvMNtNtCs14kWLkQVSKO_14deltalake_core5table5stateNtB1j_15DeltaTableState19transaction_versionNtNtCs6Po7BT7Nknu_5alloc6string6StringE0ECs7p2uQeJxui2_9deltalake:bb.a
.body17.i.i.i:                                    ; preds = %bb.ay, %bb.aw, %bb.r
  %.pn6.i.i.i = phi { ptr, i32 } [ %.pn4.i.i.i, %bb.r ], [ %i.db, %bb.ay ], [ %i.cz, %bb.aw ]
  store i8 2, ptr %.phi.trans.insert.i.i, align 8, !noalias !1983
  br label %.body.i.i

bb.ay:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %.body17.i.i.i

bb.az:                                            ; preds = %.body.i.i.i, %bb.r
  %i.dc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !1987
  unreachable

bb.ba:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1998
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1998
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1998
  store i8 3, ptr %.phi.trans.insert.i.i.i, align 8, !noalias !1998
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1983
  store i8 3, ptr %.phi.trans.insert.i.i, align 8, !noalias !1983
  br label %bb.bg

bb.bb:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i
  store i8 1, ptr %.phi.trans.insert.i.i, align 8, !noalias !1983
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMs_NtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtBO_13EagerSnapshot19transaction_versionNtNtCs6Po7BT7Nknu_5alloc6string6StringE0ECs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8 %i.ab)
          to label %bb.bg unwind label %bb.bc, !noalias !1982

bb.bc:                                            ; preds = %bb.bb
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.bd:                                            ; preds = %.body.i.i
  %i.de = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !1982
  unreachable

bb.be:                                            ; preds = %bb.l, %bb.k
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %.body18

.body18:                                          ; preds = %bb.j, %bb.be
  %eh.lpad-body19 = phi { ptr, i32 } [ %i.df, %bb.be ], [ %.pn2.i.i, %bb.j ] ; 2 uses
  %i.dg = load i8, ptr %i.h, align 1, !range !111, !alias.scope !2021, !noalias !2024, !noundef !3
  %.not.i = icmp eq i8 %i.dg, 2
  br i1 %.not.i, label %.body, label %bb.bf

bb.bf:                                            ; preds = %.body18
  invoke void @_RNvXNvNtNtCskQDtHcQtBkN_5tokio4task4coop11with_budgetNtB2_10ResetGuardNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull dereferenceable(2) %i.h)
          to label %.body unwind label %bb.bi

bb.bg:                                            ; preds = %bb.bb, %bb.ba
  %.sroa.7.1 = phi i64 [ %.sroa.7.0, %bb.ba ], [ %.sroa.446.0.i.i.i.i, %bb.bb ] ; 2 uses
  %.sroa.036.0 = phi i64 [ -9223372036854775710, %bb.ba ], [ %.sroa.045.0.i.i.i.i, %bb.bb ] ; 2 uses
  %.sroa.8.1 = phi i64 [ %.sroa.8.0, %bb.ba ], [ %.sroa.7.0.i.i.i.i, %bb.bb ] ; 2 uses
  %storemerge.i.i = phi i8 [ 3, %bb.ba ], [ 1, %bb.bb ]
  store i8 %storemerge.i.i, ptr %i.aa, align 8, !noalias !1975
  %i.dh = load i8, ptr %i.h, align 1, !range !111, !alias.scope !2025, !noundef !3
  %.not.i23 = icmp eq i8 %i.dh, 2
  br i1 %.not.i23, label %bb.bk, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  invoke void @_RNvXNvNtNtCskQDtHcQtBkN_5tokio4task4coop11with_budgetNtB2_10ResetGuardNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull dereferenceable(2) %i.h)
          to label %bb.bk unwind label %bb.bj

bb.bi:                                            ; preds = %bb.bf
  %i.di = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !2024
  unreachable

bb.bj:                                            ; preds = %bb.bh, %_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.i, %bb.bl
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.bf, %.body18, %bb.bj
  %eh.lpad-body = phi { ptr, i32 } [ %i.dj, %bb.bj ], [ %eh.lpad-body19, %.body18 ], [ %eh.lpad-body19, %bb.bf ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMNtNtCs14kWLkQVSKO_14deltalake_core5table5stateNtBM_15DeltaTableState19transaction_versionNtNtCs6Po7BT7Nknu_5alloc6string6StringE0ECs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8 %i.i) #37
          to label %.body28 unwind label %bb.bs

bb.bk:                                            ; preds = %bb.bh, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1970
  %i.dk = icmp eq i64 %.sroa.036.0, -9223372036854775710
  br i1 %i.dk, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  invoke void @_RNvMs2_NtNtCskQDtHcQtBkN_5tokio7runtime4parkNtB5_16CachedParkThread4park(ptr noalias noundef nonnull %1)
          to label %bb.i unwind label %bb.bj

bb.bm:                                            ; preds = %bb.bk
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.1047.i.i.i.i, i64 72, i1 false)
  store i64 %.sroa.036.0, ptr %0, align 16
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.7.1, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.8.1, ptr %.sroa.3.0..sroa_idx, align 16
  %i.dl = load i8, ptr %i.aa, align 8, !range !474, !noundef !3
  switch i8 %i.dl, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMNtNtCs14kWLkQVSKO_14deltalake_core5table5stateNtBM_15DeltaTableState19transaction_versionNtNtCs6Po7BT7Nknu_5alloc6string6StringE0ECs7p2uQeJxui2_9deltalake.exit32 [
    i8 0, label %bb.bn
    i8 3, label %bb.bq
  ]

bb.bn:                                            ; preds = %bb.bm
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i27 unwind label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.dm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %.body28 unwind label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.dn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i27: ; preds = %bb.bn
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMNtNtCs14kWLkQVSKO_14deltalake_core5table5stateNtBM_15DeltaTableState19transaction_versionNtNtCs6Po7BT7Nknu_5alloc6string6StringE0ECs7p2uQeJxui2_9deltalake.exit32 unwind label %bb.br

bb.bq:                                            ; preds = %bb.bm
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMs_NtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtBO_13EagerSnapshot19transaction_versionNtNtCs6Po7BT7Nknu_5alloc6string6StringE0ECs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8 %i.ab)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMNtNtCs14kWLkQVSKO_14deltalake_core5table5stateNtBM_15DeltaTableState19transaction_versionNtNtCs6Po7BT7Nknu_5alloc6string6StringE0ECs7p2uQeJxui2_9deltalake.exit32 unwind label %bb.br

.body28:                                          ; preds = %bb.br, %bb.bo, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.dq, %bb.br ], [ %i.dm, %bb.bo ]
  %.val11 = load ptr, ptr %i.k, align 8, !nonnull !3, !align !39, !noundef !3
  %.val12 = load ptr, ptr %i.u, align 8, !noundef !3
  %i.do = getelementptr inbounds nuw i8, ptr %.val11, i64 24
  %i.dp = load ptr, ptr %i.do, align 8, !nonnull !3, !noundef !3
  invoke void %i.dp(ptr noundef %.val12)
          to label %common.resume unwind label %bb.bs, !inline_history !121

bb.br:                                            ; preds = %bb.bq, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i27
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %.body28

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMNtNtCs14kWLkQVSKO_14deltalake_core5table5stateNtBM_15DeltaTableState19transaction_versionNtNtCs6Po7BT7Nknu_5alloc6string6StringE0ECs7p2uQeJxui2_9deltalake.exit32: ; preds = %bb.bm, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i27, %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %.val = load ptr, ptr %i.k, align 8, !nonnull !3, !align !39, !noundef !3
  %.val10 = load ptr, ptr %i.u, align 8, !noundef !3
  %i.dr = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.ds = load ptr, ptr %i.dr, align 8, !nonnull !3, !noundef !3
  call void %i.ds(ptr noundef %.val10), !inline_history !121
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMNtNtCs14kWLkQVSKO_14deltalake_core5table5stateNtBM_15DeltaTableState19transaction_versionNtNtCs6Po7BT7Nknu_5alloc6string6StringE0ECs7p2uQeJxui2_9deltalake.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMNtNtCs14kWLkQVSKO_14deltalake_core5table5stateNtBM_15DeltaTableState19transaction_versionNtNtCs6Po7BT7Nknu_5alloc6string6StringE0ECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.g, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i, %bb.c, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMNtNtCs14kWLkQVSKO_14deltalake_core5table5stateNtBM_15DeltaTableState19transaction_versionNtNtCs6Po7BT7Nknu_5alloc6string6StringE0ECs7p2uQeJxui2_9deltalake.exit32
  ret void

bb.bs:                                            ; preds = %.body28, %bb.bt, %.body
  %i.dt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.bt:                                            ; preds = %bb.a
  %i.du = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMNtNtCs14kWLkQVSKO_14deltalake_core5table5stateNtBM_15DeltaTableState19transaction_versionNtNtCs6Po7BT7Nknu_5alloc6string6StringE0ECs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8 %2) #37
          to label %common.resume unwind label %bb.bs
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs2_NtNtCskQDtHcQtBkN_5tokio7runtime4parkNtB6_16CachedParkThread8block_onNCNCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB1p_13RawDeltaTable5files000EB1p_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias noundef nonnull %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(96) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 3 uses
  %.sroa.3.i.i = alloca [24 x i8], align 8        ; 5 uses
  %.sroa.4.i.i = alloca [64 x i8], align 16       ; 4 uses
  %i.b = alloca [96 x i8], align 16               ; 8 uses
  %i.c = alloca [96 x i8], align 16               ; 9 uses
  %i.d = alloca [2 x i8], align 1                 ; 8 uses
  %.sroa.7 = alloca [56 x i8], align 8            ; 5 uses
  %i.e = alloca [96 x i8], align 8                ; 11 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %i.g = alloca [16 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.h = invoke { ptr, ptr } @_RNvMs2_NtNtCskQDtHcQtBkN_5tokio7runtime4parkNtB5_16CachedParkThread5waker(ptr noalias noundef nonnull readonly captures(address, read_provenance) %1)
          to label %bb.b unwind label %bb.aj      ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.i = extractvalue { ptr, ptr } %i.h, 0        ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  store i64 2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.l = load i8, ptr %i.k, align 8, !range !474, !noundef !3
  %cond.i.i.a = icmp eq i8 %i.l, 3
  br i1 %cond.i.i.a, label %3, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtBS_13RawDeltaTable5files000EBS_.exit

3:                                                ; preds = %bb.c
  %4 = getelementptr inbounds nuw i8, ptr %2, i64 80
  %5 = load i8, ptr %4, align 8, !range !474, !noundef !3
  %cond.i.i = icmp eq i8 %5, 3
  br i1 %cond.i.i, label %bb.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtBS_13RawDeltaTable5files000EBS_.exit

bb.d:                                             ; preds = %3
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 40
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream11try_collect10TryCollectINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewNtNtB49_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEINtNtB2k_3vec3VecB41_EEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(40) %i.m)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtBS_13RawDeltaTable5files000EBS_.exit

bb.e:                                             ; preds = %bb.b
  %i.n = extractvalue { ptr, ptr } %i.h, 1
  store ptr %i.i, ptr %i.g, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  store ptr %i.n, ptr %i.o, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.g, ptr %i.f, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.g, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr null, ptr %i.q, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.e, ptr noundef nonnull align 8 dereferenceable(96) %2, i64 96, i1 false)
  %i.r = call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 72
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 88 ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %.sroa.710.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.811.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 80 ; 5 uses
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 40 ; 4 uses
  %.sroa.3.0..sroa_idx14.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.4.0..sroa_idx15.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.ae, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2028
  %i.z = load i8, ptr %i.s, align 8, !range !111, !noundef !3 ; 2 uses
  switch i8 %i.z, label %default.unreachable [
    i8 0, label %_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.i
    i8 1, label %_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.thread2.i
    i8 2, label %.noexc
  ], !prof !112

default.unreachable:                              ; preds = %.noexc, %bb.f
  unreachable

_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.f
  %i.aa = invoke noundef ptr @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtNtCskQDtHcQtBkN_5tokio7runtime7context7ContextE10initializeCs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8 %i.r)
          to label %.noexc16 unwind label %bb.ab  ; 2 uses

.noexc16:                                         ; preds = %_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.i
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %.noexc, label %_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.thread2.i

_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.thread2.i: ; preds = %.noexc16, %bb.f
  %.sroa.0.0.i.i4.i = phi ptr [ %i.aa, %.noexc16 ], [ %i.r, %bb.f ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i, i64 68 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 1, !range !40, !noundef !3
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i, i64 69 ; 2 uses
  %i.af = load i8, ptr %i.ae, align 1
  store i8 1, ptr %i.ac, align 1
  store i8 -128, ptr %i.ae, align 1
  br label %.noexc

.noexc:                                           ; preds = %_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.thread2.i, %.noexc16, %bb.f
  %.sroa.3.0.i = phi i8 [ %i.af, %_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.thread2.i ], [ undef, %.noexc16 ], [ undef, %bb.f ]
  %.sroa.0.0.i = phi i8 [ %i.ad, %_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.thread2.i ], [ 2, %.noexc16 ], [ %i.z, %bb.f ]
  store i8 %.sroa.0.0.i, ptr %i.d, align 1, !noalias !2028
  store i8 %.sroa.3.0.i, ptr %i.t, align 1, !noalias !2028
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2033
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i)
  %i.ag = load i8, ptr %i.u, align 8, !range !474, !noalias !2037, !noundef !3
  switch i8 %i.ag, label %default.unreachable [
    i8 0, label %bb.h
    i8 1, label %bb.i
    i8 2, label %bb.j
    i8 3, label %bb.g
  ]

bb.g:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2037
  br label %bb.m

bb.h:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2037
  %i.ah = load ptr, ptr %i.e, align 8, !noalias !2037, !nonnull !3, !align !39, !noundef !3
  %i.ai = load ptr, ptr %i.v, align 8, !noalias !2037, !nonnull !3, !align !39, !noundef !3 ; 2 uses
  %i.aj = getelementptr i8, ptr %i.ai, i64 8
  %.val.i.i = load ptr, ptr %i.aj, align 8, !noalias !2037, !nonnull !3, !noundef !3
  %i.ak = getelementptr i8, ptr %i.ai, i64 16
  %.val2.i.i = load i64, ptr %i.ak, align 8, !noalias !2037, !noundef !3
  store ptr %i.ah, ptr %i.w, align 8, !noalias !2037
  store ptr %.val.i.i, ptr %.sroa.710.0..sroa_idx.i.i, align 8, !noalias !2037
  store i64 %.val2.i.i, ptr %.sroa.811.0..sroa_idx.i.i, align 8, !noalias !2037
  store i8 0, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !noalias !2037
  br label %bb.m

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCs14kWLkQVSKO_14deltalake_core5tableNtBO_10DeltaTable23get_files_by_partitions0ECs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %bb.r, %bb.l, %bb.k
  %.pn.i.i = phi { ptr, i32 } [ %i.aq, %bb.r ], [ %i.al, %bb.k ], [ %i.al, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2037
  store i8 2, ptr %i.u, align 8, !noalias !2037
  br label %.body18

bb.i:                                             ; preds = %.noexc
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @80) #36
          to label %.noexc20 unwind label %bb.w

.noexc20:                                         ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %.noexc
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @80) #36
          to label %.noexc21 unwind label %bb.w

.noexc21:                                         ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.m
  %i.al = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2037
  %i.am = load i8, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !range !474, !noalias !2037, !noundef !3
  %cond.i.i.i = icmp eq i8 %i.am, 3
  br i1 %cond.i.i.i, label %bb.l, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCs14kWLkQVSKO_14deltalake_core5tableNtBO_10DeltaTable23get_files_by_partitions0ECs7p2uQeJxui2_9deltalake.exit.i.i

bb.l:                                             ; preds = %bb.k
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream11try_collect10TryCollectINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewNtNtB49_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEINtNtB2k_3vec3VecB41_EEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(40) %i.x)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCs14kWLkQVSKO_14deltalake_core5tableNtBO_10DeltaTable23get_files_by_partitions0ECs7p2uQeJxui2_9deltalake.exit.i.i unwind label %bb.v, !noalias !2041

bb.m:                                             ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2037
  invoke fastcc void @_RNCNvMs0_NtCs14kWLkQVSKO_14deltalake_core5tableNtB7_10DeltaTable23get_files_by_partitions0Cs7p2uQeJxui2_9deltalake(ptr noalias noundef align 16 captures(address) dereferenceable(96) %i.b, ptr noundef nonnull align 8 %i.w, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.f)
          to label %bb.n unwind label %bb.k, !noalias !2041

bb.n:                                             ; preds = %bb.m
  %i.an = load i64, ptr %i.b, align 16, !range !183, !noalias !2037, !noundef !3 ; 3 uses
  %i.ao = icmp eq i64 %i.an, -9223372036854775710
  br i1 %i.ao, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2037
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2037
  br label %bb.y

bb.p:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.0..sroa_idx.i.i, i64 24, i1 false), !noalias !2037
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.4.i.i, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.4.0..sroa_idx.i.i, i64 64, i1 false), !noalias !2037
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2037
  %i.ap = load i8, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !range !474, !noalias !2037, !noundef !3
  %cond.i3.i.i = icmp eq i8 %i.ap, 3
  br i1 %cond.i3.i.i, label %bb.q, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCs14kWLkQVSKO_14deltalake_core5tableNtBO_10DeltaTable23get_files_by_partitions0ECs7p2uQeJxui2_9deltalake.exit5.i.i

bb.q:                                             ; preds = %bb.p
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream11try_collect10TryCollectINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewNtNtB49_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEINtNtB2k_3vec3VecB41_EEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(40) %i.x)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCs14kWLkQVSKO_14deltalake_core5tableNtBO_10DeltaTable23get_files_by_partitions0ECs7p2uQeJxui2_9deltalake.exit5.i.i unwind label %bb.r, !noalias !2041

bb.r:                                             ; preds = %bb.s, %bb.q
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCs14kWLkQVSKO_14deltalake_core5tableNtBO_10DeltaTable23get_files_by_partitions0ECs7p2uQeJxui2_9deltalake.exit.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCs14kWLkQVSKO_14deltalake_core5tableNtBO_10DeltaTable23get_files_by_partitions0ECs7p2uQeJxui2_9deltalake.exit5.i.i: ; preds = %bb.q, %bb.p
  %.not.i.i.i = icmp eq i64 %i.an, -9223372036854775711
  br i1 %.not.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCs14kWLkQVSKO_14deltalake_core5tableNtBO_10DeltaTable23get_files_by_partitions0ECs7p2uQeJxui2_9deltalake.exit5.i.i
  store i64 %i.an, ptr %i.c, align 16, !alias.scope !2042, !noalias !2037
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.0..sroa_idx14.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.i.i, i64 24, i1 false), !alias.scope !2042, !noalias !2037
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.4.0..sroa_idx15.i.i, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.4.i.i, i64 64, i1 false), !alias.scope !2042, !noalias !2037
  invoke void @_RNvXs0_NtCs7p2uQeJxui2_9deltalake5errorNtNtCsgbCypRs12E4_4pyo33err5PyErrINtNtCsbvkFyIu7lgC_4core7convert4FromNtB5_11PythonErrorE4from(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.y, ptr noalias noundef nonnull readonly align 16 captures(none) dereferenceable(96) %i.c)
          to label %bb.u unwind label %bb.r, !noalias !2041

bb.t:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCs14kWLkQVSKO_14deltalake_core5tableNtBO_10DeltaTable23get_files_by_partitions0ECs7p2uQeJxui2_9deltalake.exit5.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.i.i, i64 24, i1 false), !noalias !2037
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.sink.i.i.i = phi i64 [ 0, %bb.t ], [ 1, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2037
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(56) %i.y, i64 56, i1 false), !noalias !2046
  br label %bb.y

bb.v:                                             ; preds = %bb.l
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !2041
  unreachable

bb.w:                                             ; preds = %bb.j, %bb.i
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %.body18

.body18:                                          ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCs14kWLkQVSKO_14deltalake_core5tableNtBO_10DeltaTable23get_files_by_partitions0ECs7p2uQeJxui2_9deltalake.exit.i.i, %bb.w
  %eh.lpad-body19 = phi { ptr, i32 } [ %i.as, %bb.w ], [ %.pn.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCs14kWLkQVSKO_14deltalake_core5tableNtBO_10DeltaTable23get_files_by_partitions0ECs7p2uQeJxui2_9deltalake.exit.i.i ] ; 2 uses
  %i.at = load i8, ptr %i.d, align 1, !range !111, !alias.scope !2047, !noalias !2050, !noundef !3
  %.not.i = icmp eq i8 %i.at, 2
  br i1 %.not.i, label %.body, label %bb.x

bb.x:                                             ; preds = %.body18
  invoke void @_RNvXNvNtNtCskQDtHcQtBkN_5tokio4task4coop11with_budgetNtB2_10ResetGuardNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull dereferenceable(2) %i.d)
          to label %.body unwind label %bb.aa

bb.y:                                             ; preds = %bb.u, %bb.o
  %.sroa.041.0 = phi i64 [ 2, %bb.o ], [ %.sink.i.i.i, %bb.u ] ; 2 uses
  %storemerge.i.i = phi i8 [ 3, %bb.o ], [ 1, %bb.u ]
  store i8 %storemerge.i.i, ptr %i.u, align 8, !noalias !2037
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2033
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i)
  %i.au = load i8, ptr %i.d, align 1, !range !111, !alias.scope !2051, !noundef !3
  %.not.i23 = icmp eq i8 %i.au, 2
  br i1 %.not.i23, label %bb.ad, label %bb.z

bb.z:                                             ; preds = %bb.y
  invoke void @_RNvXNvNtNtCskQDtHcQtBkN_5tokio4task4coop11with_budgetNtB2_10ResetGuardNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull dereferenceable(2) %i.d)
          to label %bb.ad unwind label %bb.ab

bb.aa:                                            ; preds = %bb.x
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !2050
  unreachable

bb.ab:                                            ; preds = %bb.z, %_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.i, %bb.ae
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.x, %.body18, %bb.ab
  %eh.lpad-body = phi { ptr, i32 } [ %i.aw, %bb.ab ], [ %eh.lpad-body19, %.body18 ], [ %eh.lpad-body19, %bb.x ] ; 2 uses
  %i.ax = load i8, ptr %i.u, align 8, !range !474, !noundef !3
  %cond.i26 = icmp eq i8 %i.ax, 3
  %i.ay = load i8, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !range !474
  %cond.i.i27 = icmp eq i8 %i.ay, 3
  %or.cond53.a = select i1 %cond.i26, i1 %cond.i.i27, i1 false
  br i1 %or.cond53.a, label %bb.ac, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtBS_13RawDeltaTable5files000EBS_.exit29

bb.ac:                                            ; preds = %.body
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream11try_collect10TryCollectINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewNtNtB49_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEINtNtB2k_3vec3VecB41_EEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(40) %i.x)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtBS_13RawDeltaTable5files000EBS_.exit29 unwind label %bb.ai

bb.ad:                                            ; preds = %bb.z, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2028
  %i.az = icmp eq i64 %.sroa.041.0, 2
  br i1 %i.az, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  invoke void @_RNvMs2_NtNtCskQDtHcQtBkN_5tokio7runtime4parkNtB5_16CachedParkThread4park(ptr noalias noundef nonnull %1)
          to label %bb.f unwind label %bb.ab

bb.af:                                            ; preds = %bb.ad
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.7, i64 56, i1 false)
  store i64 %.sroa.041.0, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  %i.ba = load i8, ptr %i.u, align 8, !range !474, !noundef !3
  %cond.i30 = icmp eq i8 %i.ba, 3
  %i.bb = load i8, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !range !474
  %cond.i.i31 = icmp eq i8 %i.bb, 3
  %or.cond55 = select i1 %cond.i30, i1 %cond.i.i31, i1 false
  br i1 %or.cond55, label %bb.ag, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtBS_13RawDeltaTable5files000EBS_.exit33

bb.ag:                                            ; preds = %bb.af
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream11try_collect10TryCollectINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewNtNtB49_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEINtNtB2k_3vec3VecB41_EEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(40) %i.x)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtBS_13RawDeltaTable5files000EBS_.exit33 unwind label %bb.ah

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtBS_13RawDeltaTable5files000EBS_.exit29: ; preds = %.body, %bb.ac, %bb.ah
  %.pn = phi { ptr, i32 } [ %i.be, %bb.ah ], [ %eh.lpad-body, %bb.ac ], [ %eh.lpad-body, %.body ]
  %.val11 = load ptr, ptr %i.g, align 8, !nonnull !3, !align !39, !noundef !3
  %.val12 = load ptr, ptr %i.o, align 8, !noundef !3
  %i.bc = getelementptr inbounds nuw i8, ptr %.val11, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8, !nonnull !3, !noundef !3
  invoke void %i.bd(ptr noundef %.val12)
          to label %.thread unwind label %bb.ai, !inline_history !121

bb.ah:                                            ; preds = %bb.ag
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtBS_13RawDeltaTable5files000EBS_.exit29

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtBS_13RawDeltaTable5files000EBS_.exit33: ; preds = %bb.af, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %.val = load ptr, ptr %i.g, align 8, !nonnull !3, !align !39, !noundef !3
  %.val10 = load ptr, ptr %i.o, align 8, !noundef !3
  %i.bf = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8, !nonnull !3, !noundef !3
  call void %i.bg(ptr noundef %.val10), !inline_history !121
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtBS_13RawDeltaTable5files000EBS_.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtBS_13RawDeltaTable5files000EBS_.exit: ; preds = %bb.d, %3, %bb.c, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtBS_13RawDeltaTable5files000EBS_.exit33
  ret void

bb.ai:                                            ; preds = %bb.ak, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtBS_13RawDeltaTable5files000EBS_.exit29, %bb.ac
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

.thread:                                          ; preds = %6, %bb.aj, %bb.ak, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtBS_13RawDeltaTable5files000EBS_.exit29
  %.pn.pn48 = phi { ptr, i32 } [ %i.bi, %6 ], [ %.pn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtBS_13RawDeltaTable5files000EBS_.exit29 ], [ %i.bi, %bb.ak ], [ %i.bi, %bb.aj ]
  resume { ptr, i32 } %.pn.pn48

bb.aj:                                            ; preds = %bb.a
  %i.bi = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.bk = load i8, ptr %i.bj, align 8, !range !474, !noundef !3
  %cond.i.i38.a = icmp eq i8 %i.bk, 3
  br i1 %cond.i.i38.a, label %6, label %.thread

6:                                                ; preds = %bb.aj
  %7 = getelementptr inbounds nuw i8, ptr %2, i64 80
  %8 = load i8, ptr %7, align 8, !range !474, !noundef !3
  %cond.i.i38 = icmp eq i8 %8, 3
  br i1 %cond.i.i38, label %bb.ak, label %.thread

bb.ak:                                            ; preds = %6
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 40
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream11try_collect10TryCollectINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewNtNtB49_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEINtNtB2k_3vec3VecB41_EEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(40) %i.bl)
          to label %.thread unwind label %bb.ai
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs2_NtNtCskQDtHcQtBkN_5tokio7runtime4parkNtB6_16CachedParkThread8block_onNCNCNvMs9_NtCs7p2uQeJxui2_9deltalake5queryNtB1n_14PyQueryBuilder7execute00EB1p_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull %1, ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(3168) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5 = alloca [32 x i8], align 8            ; 5 uses
  %i.a = alloca [40 x i8], align 8                ; 7 uses
  %.sroa.3.i.i.sroa.5 = alloca [32 x i8], align 8 ; 5 uses
  %.sroa.519.i.i = alloca [288 x i8], align 16    ; 4 uses
  %i.b = alloca [336 x i8], align 16              ; 9 uses
  %i.c = alloca [336 x i8], align 16              ; 13 uses
  %i.d = alloca [2 x i8], align 1                 ; 8 uses
  %.sroa.8 = alloca [32 x i8], align 8            ; 5 uses
  %i.e = alloca [3168 x i8], align 16             ; 22 uses
  %i.f = alloca [32 x i8], align 8                ; 7 uses
  %i.g = alloca [16 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.h = invoke { ptr, ptr } @_RNvMs2_NtNtCskQDtHcQtBkN_5tokio7runtime4parkNtB5_16CachedParkThread5waker(ptr noalias noundef nonnull readonly captures(address, read_provenance) %1)
          to label %bb.b unwind label %bb.ay      ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.i = extractvalue { ptr, ptr } %i.h, 0        ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i64 21, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvMs9_NtCs7p2uQeJxui2_9deltalake5queryNtBQ_14PyQueryBuilder7execute00EBS_(ptr noundef nonnull align 16 %2)
  br label %bb.aw

bb.d:                                             ; preds = %bb.b
  %i.k = extractvalue { ptr, ptr } %i.h, 1
  store ptr %i.i, ptr %i.g, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  store ptr %i.k, ptr %i.l, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.g, ptr %i.f, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.g, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr null, ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(3168) %i.e, ptr noundef nonnull align 16 dereferenceable(3168) %2, i64 3168, i1 false)
  %i.o = call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 25 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 7 uses
  %.sroa.815.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.sroa.1016.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 3152
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 3160 ; 2 uses
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.3.i.i.sroa.5.0..sroa.3.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.519.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 1764
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 2586
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 1784
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 2585 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 1776
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 1763 ; 2 uses
  %.sroa.521.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.3.i.i.sroa.5.0..sroa.4.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.726.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 1768
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.e

bb.e:                                             ; preds = %bb.as, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2054
  %i.ad = load i8, ptr %i.p, align 8, !range !111, !noundef !3 ; 2 uses
  switch i8 %i.ad, label %default.unreachable [
    i8 0, label %_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.i
    i8 1, label %_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.thread2.i
    i8 2, label %.noexc
  ], !prof !112

default.unreachable:                              ; preds = %.noexc, %bb.e
  unreachable

_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.e
  %i.ae = invoke noundef ptr @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtNtCskQDtHcQtBkN_5tokio7runtime7context7ContextE10initializeCs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8 %i.o)
          to label %.noexc16 unwind label %bb.aq  ; 2 uses

.noexc16:                                         ; preds = %_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.i
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %.noexc, label %_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.thread2.i

_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.thread2.i: ; preds = %.noexc16, %bb.e
  %.sroa.0.0.i.i4.i = phi ptr [ %i.ae, %.noexc16 ], [ %i.o, %bb.e ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i, i64 68 ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 1, !range !40, !noundef !3
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i, i64 69 ; 2 uses
  %i.aj = load i8, ptr %i.ai, align 1
  store i8 1, ptr %i.ag, align 1
  store i8 -128, ptr %i.ai, align 1
  br label %.noexc

.noexc:                                           ; preds = %_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.thread2.i, %.noexc16, %bb.e
  %.sroa.3.0.i = phi i8 [ %i.aj, %_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.thread2.i ], [ undef, %.noexc16 ], [ undef, %bb.e ]
  %.sroa.0.0.i = phi i8 [ %i.ah, %_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.thread2.i ], [ 2, %.noexc16 ], [ %i.ad, %bb.e ]
  store i8 %.sroa.0.0.i, ptr %i.d, align 1, !noalias !2054
  store i8 %.sroa.3.0.i, ptr %i.q, align 1, !noalias !2054
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.i.i.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.519.i.i)
  %i.ak = load i8, ptr %i.r, align 1, !range !2059, !noalias !2060, !noundef !3
  switch i8 %i.ak, label %default.unreachable [
    i8 0, label %bb.h
    i8 1, label %bb.i
    i8 2, label %bb.j
    i8 3, label %bb.f
    i8 4, label %bb.g
  ]

bb.f:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2060
  br label %bb.l

bb.g:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2060
  br label %bb.af

bb.h:                                             ; preds = %.noexc
  store i8 0, ptr %i.s, align 8, !noalias !2060
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2060
  %i.al = load ptr, ptr %i.t, align 16, !noalias !2060, !nonnull !3, !align !39, !noundef !3
  %i.am = load ptr, ptr %i.e, align 16, !noalias !2060, !nonnull !3, !noundef !3
  %i.an = load i64, ptr %i.u, align 8, !noalias !2060, !noundef !3
  store ptr %i.am, ptr %i.v, align 16, !noalias !2060
  store i64 %i.an, ptr %.sroa.815.0..sroa_idx.i.i, align 8, !noalias !2060
  store ptr %i.al, ptr %.sroa.1016.0..sroa_idx.i.i, align 16, !noalias !2060
  store i8 0, ptr %.sroa.11.0..sroa_idx.i.i, align 8, !noalias !2060
  br label %bb.l

bb.i:                                             ; preds = %.noexc
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @92) #36
          to label %.noexc18 unwind label %bb.al

.noexc18:                                         ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %.noexc
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @92) #36
          to label %.noexc19 unwind label %bb.al

.noexc19:                                         ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.l
  %i.ao = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2060
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtBO_14SessionContext3sql0ECs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 16 %i.v) #37
          to label %.body.i.i unwind label %bb.ad, !noalias !2067

bb.l:                                             ; preds = %bb.h, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2060
  invoke fastcc void @_RNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB7_14SessionContext3sql0Cs7p2uQeJxui2_9deltalake(ptr noalias noundef align 16 captures(address) dereferenceable(336) %i.b, ptr noundef nonnull align 16 %i.v, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.f)
          to label %bb.m unwind label %bb.k, !noalias !2067

bb.m:                                             ; preds = %bb.l
  %i.ap = load i64, ptr %i.b, align 16, !range !2068, !noalias !2060, !noundef !3 ; 3 uses
  %i.aq = icmp eq i64 %i.ap, 37
  br i1 %i.aq, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2060
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2060
  br label %bb.an

bb.o:                                             ; preds = %bb.m
  %.sroa.3.i.i.sroa.0.0.copyload = load i64, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !noalias !2060 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3.i.i.sroa.5, ptr noundef nonnull align 16 dereferenceable(32) %.sroa.3.i.i.sroa.5.0..sroa.3.0..sroa_idx.i.i.sroa_idx, i64 32, i1 false), !noalias !2060
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(288) %.sroa.519.i.i, ptr noundef nonnull align 16 dereferenceable(288) %.sroa.519.0..sroa_idx.i.i, i64 288, i1 false), !noalias !2060
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2060
  %i.ar = load i8, ptr %.sroa.11.0..sroa_idx.i.i, align 8, !range !474, !noalias !2060, !noundef !3
  %cond.i.i.i = icmp eq i8 %i.ar, 3
  br i1 %cond.i.i.i, label %bb.p, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtBO_14SessionContext3sql0ECs7p2uQeJxui2_9deltalake.exit.i.i

bb.p:                                             ; preds = %bb.o
  %i.as = load i8, ptr %i.x, align 4, !range !2059, !noalias !2060, !noundef !3
  switch i8 %i.as, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtBO_14SessionContext3sql0ECs7p2uQeJxui2_9deltalake.exit.i.i [
    i8 4, label %bb.t
    i8 3, label %bb.q
  ]

bb.q:                                             ; preds = %bb.p
  %i.at = load i8, ptr %i.y, align 2, !range !474, !noalias !2060, !noundef !3
  %cond.i.i.i.i.i = icmp eq i8 %i.at, 3
  br i1 %cond.i.i.i.i.i, label %bb.r, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs_NtNtCs8Hz2sPNgbCO_10datafusion9execution13session_stateNtBN_12SessionState19create_logical_plan0ECs7p2uQeJxui2_9deltalake.exit.i.i.i.i

end_hunk_0
begin_hunk_1_@_RINvMs2_NtNtCskQDtHcQtBkN_5tokio7runtime4parkNtB6_16CachedParkThread8block_onNCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB1n_13RawDeltaTable24create_write_transaction0s0_0EB1n_:bb.a

bb.m:                                             ; preds = %bb.t, %bb.p, %bb.k
  %.pn2.i.i = phi { ptr, i32 } [ %i.as, %bb.t ], [ %i.ap, %bb.p ], [ %.pn.i.i, %bb.k ]
  store i8 2, ptr %i.t, align 8, !noalias !3608
  br label %.body18

bb.n:                                             ; preds = %.noexc
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @107) #36
          to label %.noexc20 unwind label %bb.v

.noexc20:                                         ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %.noexc
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @107) #36
          to label %.noexc21 unwind label %bb.v

.noexc21:                                         ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.q
  %i.ap = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream11try_collect10TryCollectINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewNtNtB49_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEINtNtB2k_3vec3VecB41_EEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(40) %i.w) #37
          to label %bb.m unwind label %bb.u, !noalias !3611

bb.q:                                             ; preds = %.noexc, %bb.l
  invoke void @_RNvXs0_NtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream11try_collectINtB5_10TryCollectINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB1w_6result6ResultNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewNtNtB3S_6errors15DeltaTableErrorENtNtB1w_6marker4SendEL_EEINtNtB22_3vec3VecB3K_EENtNtNtB1w_6future6future6Future4pollCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.w, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.e)
          to label %bb.r unwind label %bb.p

bb.r:                                             ; preds = %bb.q
  %i.aq = load i64, ptr %i.c, align 16, !range !183, !alias.scope !3611, !noalias !3612, !noundef !3
  %i.ar = icmp eq i64 %i.aq, -9223372036854775710 ; 2 uses
  br i1 %i.ar, label %bb.x, label %bb.s

bb.s:                                             ; preds = %bb.r
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream11try_collect10TryCollectINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewNtNtB49_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEINtNtB2k_3vec3VecB41_EEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(40) %i.w)
          to label %bb.x unwind label %bb.t, !noalias !3611

bb.t:                                             ; preds = %bb.s
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.u:                                             ; preds = %bb.p
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !3611
  unreachable

bb.v:                                             ; preds = %bb.o, %bb.n
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %.body18

.body18:                                          ; preds = %bb.m, %bb.v
  %eh.lpad-body19 = phi { ptr, i32 } [ %i.au, %bb.v ], [ %.pn2.i.i, %bb.m ] ; 2 uses
  %i.av = load i8, ptr %i.b, align 1, !range !111, !alias.scope !3613, !noalias !3616, !noundef !3
  %.not.i = icmp eq i8 %i.av, 2
  br i1 %.not.i, label %.body, label %bb.w

bb.w:                                             ; preds = %.body18
  invoke void @_RNvXNvNtNtCskQDtHcQtBkN_5tokio4task4coop11with_budgetNtB2_10ResetGuardNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull dereferenceable(2) %i.b)
          to label %.body unwind label %bb.z

bb.x:                                             ; preds = %bb.s, %bb.r
  %storemerge.i.i = phi i8 [ 3, %bb.r ], [ 1, %bb.s ]
  store i8 %storemerge.i.i, ptr %i.t, align 8, !noalias !3608
  %i.aw = load i8, ptr %i.b, align 1, !range !111, !alias.scope !3617, !noundef !3
  %.not.i23 = icmp eq i8 %i.aw, 2
  br i1 %.not.i23, label %bb.ac, label %bb.y

bb.y:                                             ; preds = %bb.x
  invoke void @_RNvXNvNtNtCskQDtHcQtBkN_5tokio4task4coop11with_budgetNtB2_10ResetGuardNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull dereferenceable(2) %i.b)
          to label %bb.ac unwind label %bb.aa

bb.z:                                             ; preds = %bb.w
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !3616
  unreachable

bb.aa:                                            ; preds = %bb.y, %_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.i, %bb.ad
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.w, %.body18, %bb.aa
  %eh.lpad-body = phi { ptr, i32 } [ %i.ay, %bb.aa ], [ %eh.lpad-body19, %.body18 ], [ %eh.lpad-body19, %bb.w ] ; 2 uses
  %i.az = load i8, ptr %i.t, align 8, !range !474, !noundef !3
  %cond.i26 = icmp eq i8 %i.az, 3
  br i1 %cond.i26, label %bb.ab, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtBQ_13RawDeltaTable24create_write_transaction0s0_0EBQ_.exit28

bb.ab:                                            ; preds = %.body
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream11try_collect10TryCollectINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewNtNtB49_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEINtNtB2k_3vec3VecB41_EEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(40) %i.w)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtBQ_13RawDeltaTable24create_write_transaction0s0_0EBQ_.exit28 unwind label %bb.ah

bb.ac:                                            ; preds = %bb.y, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3597
  br i1 %i.ar, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke void @_RNvMs2_NtNtCskQDtHcQtBkN_5tokio7runtime4parkNtB5_16CachedParkThread4park(ptr noalias noundef nonnull %1)
          to label %bb.f unwind label %bb.aa

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %0, ptr noundef nonnull align 16 dereferenceable(96) %i.c, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ba = load i8, ptr %i.t, align 8, !range !474, !noundef !3
  %cond.i29 = icmp eq i8 %i.ba, 3
  br i1 %cond.i29, label %bb.af, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtBQ_13RawDeltaTable24create_write_transaction0s0_0EBQ_.exit31

bb.af:                                            ; preds = %bb.ae
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream11try_collect10TryCollectINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewNtNtB49_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEINtNtB2k_3vec3VecB41_EEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(40) %i.w)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtBQ_13RawDeltaTable24create_write_transaction0s0_0EBQ_.exit31 unwind label %bb.ag

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtBQ_13RawDeltaTable24create_write_transaction0s0_0EBQ_.exit28: ; preds = %.body, %bb.ab, %bb.ag
  %.pn = phi { ptr, i32 } [ %i.bd, %bb.ag ], [ %eh.lpad-body, %bb.ab ], [ %eh.lpad-body, %.body ]
  %.val11 = load ptr, ptr %i.f, align 8, !nonnull !3, !align !39, !noundef !3
  %.val12 = load ptr, ptr %i.n, align 8, !noundef !3
  %i.bb = getelementptr inbounds nuw i8, ptr %.val11, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8, !nonnull !3, !noundef !3
  invoke void %i.bc(ptr noundef %.val12)
          to label %.thread unwind label %bb.ah, !inline_history !121

bb.ag:                                            ; preds = %bb.af
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtBQ_13RawDeltaTable24create_write_transaction0s0_0EBQ_.exit28

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtBQ_13RawDeltaTable24create_write_transaction0s0_0EBQ_.exit31: ; preds = %bb.ae, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.val = load ptr, ptr %i.f, align 8, !nonnull !3, !align !39, !noundef !3
  %.val10 = load ptr, ptr %i.n, align 8, !noundef !3
  %i.be = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.bf = load ptr, ptr %i.be, align 8, !nonnull !3, !noundef !3
  call void %i.bf(ptr noundef %.val10), !inline_history !121
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtBQ_13RawDeltaTable24create_write_transaction0s0_0EBQ_.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtBQ_13RawDeltaTable24create_write_transaction0s0_0EBQ_.exit: ; preds = %bb.d, %bb.c, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtBQ_13RawDeltaTable24create_write_transaction0s0_0EBQ_.exit31
  ret void

bb.ah:                                            ; preds = %bb.aj, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtBQ_13RawDeltaTable24create_write_transaction0s0_0EBQ_.exit28, %bb.ab
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

.thread:                                          ; preds = %bb.ai, %bb.aj, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtBQ_13RawDeltaTable24create_write_transaction0s0_0EBQ_.exit28
  %.pn.pn41 = phi { ptr, i32 } [ %i.bh, %bb.ai ], [ %.pn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtBQ_13RawDeltaTable24create_write_transaction0s0_0EBQ_.exit28 ], [ %i.bh, %bb.aj ]
  resume { ptr, i32 } %.pn.pn41

bb.ai:                                            ; preds = %bb.a
  %i.bh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.bj = load i8, ptr %i.bi, align 8, !range !474, !noundef !3
  %cond.i35 = icmp eq i8 %i.bj, 3
  br i1 %cond.i35, label %bb.aj, label %.thread

bb.aj:                                            ; preds = %bb.ai
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 24
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream11try_collect10TryCollectINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewNtNtB49_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEINtNtB2k_3vec3VecB41_EEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(40) %i.bk)
          to label %.thread unwind label %bb.ah
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs2_NtNtCskQDtHcQtBkN_5tokio7runtime4parkNtB6_16CachedParkThread8block_onNCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB1n_13RawDeltaTable9file_uriss_00EB1n_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias noundef nonnull %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(136) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.328.i.i.i = alloca [24 x i8], align 8    ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.3.i.i.i = alloca [24 x i8], align 8      ; 8 uses
  %.sroa.521.i.i.i = alloca [64 x i8], align 16   ; 7 uses
  %i.c = alloca [96 x i8], align 16               ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 13 uses
  %i.e = alloca [64 x i8], align 8                ; 3 uses
  %.sroa.817.i.i = alloca [24 x i8], align 8      ; 6 uses
  %i.f = alloca [96 x i8], align 16               ; 9 uses
  %i.g = alloca [2 x i8], align 1                 ; 8 uses
  %.sroa.7 = alloca [56 x i8], align 8            ; 5 uses
  %i.h = alloca [136 x i8], align 8               ; 17 uses
  %i.i = alloca [32 x i8], align 8                ; 6 uses
  %i.j = alloca [16 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.k = invoke { ptr, ptr } @_RNvMs2_NtNtCskQDtHcQtBkN_5tokio7runtime4parkNtB5_16CachedParkThread5waker(ptr noalias noundef nonnull readonly captures(address, read_provenance) %1)
          to label %bb.b unwind label %bb.aw      ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.l = extractvalue { ptr, ptr } %i.k, 0        ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  store i64 2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.o = load i8, ptr %i.n, align 8, !range !474, !noundef !3
  %cond.i.i.i.a = icmp eq i8 %i.o, 3
  br i1 %cond.i.i.i.a, label %3, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtBQ_13RawDeltaTable9file_uriss_00EBQ_.exit

3:                                                ; preds = %bb.c
  %4 = getelementptr inbounds nuw i8, ptr %2, i64 120
  %5 = load i8, ptr %4, align 8, !range !474, !noundef !3
  %cond.i.i = icmp eq i8 %5, 3
  br i1 %cond.i.i, label %6, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtBQ_13RawDeltaTable9file_uriss_00EBQ_.exit

6:                                                ; preds = %3
  %7 = getelementptr inbounds nuw i8, ptr %2, i64 112
  %8 = load i8, ptr %7, align 8, !range !474, !noundef !3
  %cond.i.i.i = icmp eq i8 %8, 3
  br i1 %cond.i.i.i, label %bb.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtBQ_13RawDeltaTable9file_uriss_00EBQ_.exit

bb.d:                                             ; preds = %6
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 72
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream11try_collect10TryCollectINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewNtNtB49_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEINtNtB2k_3vec3VecB41_EEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(40) %i.p)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtBQ_13RawDeltaTable9file_uriss_00EBQ_.exit

bb.e:                                             ; preds = %bb.b
  %i.q = extractvalue { ptr, ptr } %i.k, 1
  store ptr %i.l, ptr %i.j, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  store ptr %i.q, ptr %i.r, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %i.j, ptr %i.i, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.j, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr null, ptr %i.t, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.h, ptr noundef nonnull align 8 dereferenceable(136) %2, i64 136, i1 false)
  %i.u = call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 72
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 128 ; 4 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 120 ; 8 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %.phi.trans.insert1.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  %.phi.trans.insert3.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 40 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 48 ; 2 uses
  %.sroa.817.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %.sroa.9.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %.sroa.11.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 112 ; 5 uses
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.521.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.ab = getelementptr inbounds nuw i8, ptr %i.h, i64 72 ; 4 uses
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.520.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.525.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.626.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.f

bb.f:                                             ; preds = %bb.aq, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !3620
  %i.af = load i8, ptr %i.v, align 8, !range !111, !noundef !3 ; 2 uses
  switch i8 %i.af, label %default.unreachable [
    i8 0, label %_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.i
    i8 1, label %_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.thread2.i
    i8 2, label %.noexc
  ], !prof !112

default.unreachable:                              ; preds = %bb.j, %.noexc, %bb.f
  unreachable

_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.f
  %i.ag = invoke noundef ptr @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtNtCskQDtHcQtBkN_5tokio7runtime7context7ContextE10initializeCs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8 %i.u)
          to label %.noexc16 unwind label %bb.ao  ; 2 uses

.noexc16:                                         ; preds = %_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.i
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %.noexc, label %_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.thread2.i

_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.thread2.i: ; preds = %.noexc16, %bb.f
  %.sroa.0.0.i.i4.i = phi ptr [ %i.ag, %.noexc16 ], [ %i.u, %bb.f ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i, i64 68 ; 2 uses
  %i.aj = load i8, ptr %i.ai, align 1, !range !40, !noundef !3
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i, i64 69 ; 2 uses
  %i.al = load i8, ptr %i.ak, align 1
  store i8 1, ptr %i.ai, align 1
  store i8 -128, ptr %i.ak, align 1
  br label %.noexc

.noexc:                                           ; preds = %_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.thread2.i, %.noexc16, %bb.f
  %.sroa.3.0.i = phi i8 [ %i.al, %_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.thread2.i ], [ undef, %.noexc16 ], [ undef, %bb.f ]
  %.sroa.0.0.i = phi i8 [ %i.aj, %_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.thread2.i ], [ 2, %.noexc16 ], [ %i.af, %bb.f ]
  store i8 %.sroa.0.0.i, ptr %i.g, align 1, !noalias !3620
  store i8 %.sroa.3.0.i, ptr %i.w, align 1, !noalias !3620
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3625
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.817.i.i)
  %i.am = load i8, ptr %i.x, align 8, !range !474, !noalias !3629, !noundef !3
  switch i8 %i.am, label %default.unreachable [
    i8 0, label %.thread.i.i
    i8 1, label %bb.g
    i8 2, label %bb.h
    i8 3, label %bb.j
  ]

.thread.i.i:                                      ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !3629
  %i.an = load ptr, ptr %i.h, align 8, !noalias !3629, !nonnull !3, !align !39, !noundef !3 ; 2 uses
  %i.ao = load ptr, ptr %i.y, align 8, !noalias !3629, !nonnull !3, !align !39, !noundef !3 ; 2 uses
  %i.ap = getelementptr i8, ptr %i.ao, i64 8
  %.val.i.i = load ptr, ptr %i.ap, align 8, !noalias !3629, !nonnull !3, !noundef !3 ; 2 uses
  %i.aq = getelementptr i8, ptr %i.ao, i64 16
  %.val2.i.i = load i64, ptr %i.aq, align 8, !noalias !3629, !noundef !3 ; 2 uses
  store ptr %i.an, ptr %.phi.trans.insert.i, align 8, !noalias !3629
  store ptr %.val.i.i, ptr %.phi.trans.insert1.i, align 8, !noalias !3629
  store i64 %.val2.i.i, ptr %.phi.trans.insert3.i, align 8, !noalias !3629
  store i8 0, ptr %.phi.trans.insert.i.i, align 8, !noalias !3629
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.328.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.521.i.i.i)
  br label %bb.l

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCs14kWLkQVSKO_14deltalake_core5tableNtBO_10DeltaTable27get_file_uris_by_partitions0ECs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %bb.ae, %.body.thread.i.i, %bb.i, %.body.i.i
  %.pn.i.i = phi { ptr, i32 } [ %i.bj, %bb.ae ], [ %i.ar, %bb.i ], [ %.pn2.pn.i.i.i, %.body.thread.i.i ], [ %i.ar, %.body.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !3629
  store i8 2, ptr %i.x, align 8, !noalias !3629
  br label %.body19

bb.g:                                             ; preds = %.noexc
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @108) #36
          to label %.noexc21 unwind label %bb.aj

.noexc21:                                         ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %.noexc
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @108) #36
          to label %.noexc22 unwind label %bb.aj

.noexc22:                                         ; preds = %bb.h
  unreachable

.body.i.i:                                        ; preds = %bb.n, %bb.m
  %i.ar = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pr.i.i = load i8, ptr %.phi.trans.insert.i.i, align 8, !noalias !3629
  %cond.i.i.i17 = icmp eq i8 %.pr.i.i, 3
  %i.as = load i8, ptr %.sroa.11.0..sroa_idx.i.i.i, align 8, !range !474
  %cond.i.i.i.i = icmp eq i8 %i.as, 3
  %or.cond49.a = select i1 %cond.i.i.i17, i1 %cond.i.i.i.i, i1 false
  br i1 %or.cond49.a, label %bb.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCs14kWLkQVSKO_14deltalake_core5tableNtBO_10DeltaTable27get_file_uris_by_partitions0ECs7p2uQeJxui2_9deltalake.exit.i.i

bb.i:                                             ; preds = %.body.i.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream11try_collect10TryCollectINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewNtNtB49_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEINtNtB2k_3vec3VecB41_EEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(40) %i.ab)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCs14kWLkQVSKO_14deltalake_core5tableNtBO_10DeltaTable27get_file_uris_by_partitions0ECs7p2uQeJxui2_9deltalake.exit.i.i unwind label %bb.ai, !noalias !3629

bb.j:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !3629
  %.pre.i.i = load i8, ptr %.phi.trans.insert.i.i, align 8, !range !474, !noalias !3633
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.328.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.521.i.i.i)
  switch i8 %.pre.i.i, label %default.unreachable [
    i8 0, label %._crit_edge.i
    i8 1, label %bb.m
    i8 2, label %bb.n
    i8 3, label %bb.k
  ]

._crit_edge.i:                                    ; preds = %bb.j
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !noalias !3633
  %.pre2.i = load ptr, ptr %.phi.trans.insert1.i, align 8, !noalias !3633
  %.pre4.i = load i64, ptr %.phi.trans.insert3.i, align 8, !noalias !3633
  br label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3633
  br label %bb.q

bb.l:                                             ; preds = %._crit_edge.i, %.thread.i.i
  %i.at = phi i64 [ %.val2.i.i, %.thread.i.i ], [ %.pre4.i, %._crit_edge.i ]
  %i.au = phi ptr [ %.val.i.i, %.thread.i.i ], [ %.pre2.i, %._crit_edge.i ]
  %i.av = phi ptr [ %i.an, %.thread.i.i ], [ %.pre.i, %._crit_edge.i ] ; 2 uses
  store ptr %i.av, ptr %i.z, align 8, !noalias !3633
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3633
  store ptr %i.av, ptr %i.aa, align 8, !noalias !3633
  store ptr %i.au, ptr %.sroa.817.0..sroa_idx.i.i.i, align 8, !noalias !3633
  store i64 %i.at, ptr %.sroa.9.0..sroa_idx.i.i.i, align 8, !noalias !3633
  store i8 0, ptr %.sroa.11.0..sroa_idx.i.i.i, align 8, !noalias !3633
  br label %bb.q

bb.m:                                             ; preds = %bb.j
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @137) #36
          to label %.noexc4.i.i unwind label %.body.i.i, !noalias !3629

.noexc4.i.i:                                      ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %bb.j
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @137) #36
          to label %.noexc5.i.i unwind label %.body.i.i, !noalias !3629

.noexc5.i.i:                                      ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.q
  %i.aw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3633
  %i.ax = load i8, ptr %.sroa.11.0..sroa_idx.i.i.i, align 8, !range !474, !noalias !3633, !noundef !3
  %cond.i.i3.i.i = icmp eq i8 %i.ax, 3
  br i1 %cond.i.i3.i.i, label %bb.p, label %.body.thread.i.i

bb.p:                                             ; preds = %bb.o
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream11try_collect10TryCollectINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewNtNtB49_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEINtNtB2k_3vec3VecB41_EEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(40) %i.ab)
          to label %.body.thread.i.i unwind label %bb.ac, !noalias !3637
end_hunk_1
begin_hunk_2_@_RINvMs2_NtNtCskQDtHcQtBkN_5tokio7runtime4parkNtB6_16CachedParkThread8block_onNCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB1n_13RawDeltaTable9file_uriss_00EB1n_:bb.a
  store ptr %i.bd, ptr %.sroa.626.0..sroa_idx.i.i.i, align 8, !alias.scope !3645, !noalias !3649
  invoke void @_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec14spec_from_iterINtB4_3VecNtNtB6_6string6StringEINtB2_12SpecFromIterBU_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1M_5slice4iter4IterNtNtCsjyY8HP3IvQ6_12object_store4path4PathENCNCNvMs0_NtCs14kWLkQVSKO_14deltalake_core5tableNtB3J_10DeltaTable27get_file_uris_by_partitions00EE9from_iterCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.x unwind label %bb.w, !noalias !3637

bb.w:                                             ; preds = %bb.v
  %i.be = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3633
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjyY8HP3IvQ6_12object_store4path4PathEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.d) #37
          to label %.body.thread.i.i unwind label %bb.ac, !noalias !3637

bb.x:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3638
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.328.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !3633
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3633
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCsjyY8HP3IvQ6_12object_store4path4PathENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.z unwind label %bb.y, !noalias !3637

bb.y:                                             ; preds = %bb.x
  %i.bf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsjyY8HP3IvQ6_12object_store4path4PathENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.body.thread.i.i unwind label %bb.aa, !noalias !3637

bb.z:                                             ; preds = %bb.x
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsjyY8HP3IvQ6_12object_store4path4PathENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.ag unwind label %bb.ab, !noalias !3637

bb.aa:                                            ; preds = %bb.y
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !3637
  unreachable

.body.thread.i.i:                                 ; preds = %bb.ab, %bb.y, %bb.w, %bb.u, %bb.p, %bb.o
  %.pn2.pn.i.i.i = phi { ptr, i32 } [ %i.bf, %bb.y ], [ %i.be, %bb.w ], [ %i.bh, %bb.ab ], [ %i.bb, %bb.u ], [ %i.aw, %bb.o ], [ %i.aw, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3633
  store i8 2, ptr %.phi.trans.insert.i.i, align 8, !noalias !3633
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCs14kWLkQVSKO_14deltalake_core5tableNtBO_10DeltaTable27get_file_uris_by_partitions0ECs7p2uQeJxui2_9deltalake.exit.i.i

bb.ab:                                            ; preds = %bb.z
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i.i

bb.ac:                                            ; preds = %bb.w, %bb.p
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !3637
  unreachable

bb.ad:                                            ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3633
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3633
  store i8 3, ptr %.phi.trans.insert.i.i, align 8, !noalias !3633
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.328.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.521.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !3629
  br label %bb.al

bb.ae:                                            ; preds = %bb.af
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCs14kWLkQVSKO_14deltalake_core5tableNtBO_10DeltaTable27get_file_uris_by_partitions0ECs7p2uQeJxui2_9deltalake.exit.i.i

bb.af:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCs14kWLkQVSKO_14deltalake_core5tableNtBO_10DeltaTable23get_files_by_partitions0ECs7p2uQeJxui2_9deltalake.exit8.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.520.0..sroa_idx.i.i, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.521.i.i.i, i64 64, i1 false), !noalias !3629
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3633
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.817.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.i.i.i, i64 24, i1 false), !noalias !3625
  store i8 1, ptr %.phi.trans.insert.i.i, align 8, !noalias !3633
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.328.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.521.i.i.i)
  store i64 %i.ay, ptr %i.f, align 16, !alias.scope !3650, !noalias !3629
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.817.i.i, i64 24, i1 false), !noalias !3629
  invoke void @_RNvXs0_NtCs7p2uQeJxui2_9deltalake5errorNtNtCsgbCypRs12E4_4pyo33err5PyErrINtNtCsbvkFyIu7lgC_4core7convert4FromNtB5_11PythonErrorE4from(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.ac, ptr noalias noundef nonnull readonly align 16 captures(none) dereferenceable(96) %i.f)
          to label %bb.ah unwind label %bb.ae, !noalias !3654

bb.ag:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3633
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.817.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.328.i.i.i, i64 24, i1 false), !noalias !3629
  store i8 1, ptr %.phi.trans.insert.i.i, align 8, !noalias !3633
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.328.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.521.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.817.i.i, i64 24, i1 false), !noalias !3629
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.sink.i.i.i = phi i64 [ 0, %bb.ag ], [ 1, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !3629
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(56) %i.ac, i64 56, i1 false), !noalias !3655
  br label %bb.al

bb.ai:                                            ; preds = %bb.i
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !3629
  unreachable

bb.aj:                                            ; preds = %bb.h, %bb.g
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %.body19

.body19:                                          ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCs14kWLkQVSKO_14deltalake_core5tableNtBO_10DeltaTable27get_file_uris_by_partitions0ECs7p2uQeJxui2_9deltalake.exit.i.i, %bb.aj
  %eh.lpad-body20 = phi { ptr, i32 } [ %i.bl, %bb.aj ], [ %.pn.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCs14kWLkQVSKO_14deltalake_core5tableNtBO_10DeltaTable27get_file_uris_by_partitions0ECs7p2uQeJxui2_9deltalake.exit.i.i ] ; 2 uses
  %i.bm = load i8, ptr %i.g, align 1, !range !111, !alias.scope !3656, !noalias !3659, !noundef !3
  %.not.i = icmp eq i8 %i.bm, 2
  br i1 %.not.i, label %.body, label %bb.ak

bb.ak:                                            ; preds = %.body19
  invoke void @_RNvXNvNtNtCskQDtHcQtBkN_5tokio4task4coop11with_budgetNtB2_10ResetGuardNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull dereferenceable(2) %i.g)
          to label %.body unwind label %bb.an

bb.al:                                            ; preds = %bb.ah, %bb.ad
  %.sroa.035.0 = phi i64 [ 2, %bb.ad ], [ %.sink.i.i.i, %bb.ah ] ; 2 uses
  %storemerge.i.i = phi i8 [ 3, %bb.ad ], [ 1, %bb.ah ]
  store i8 %storemerge.i.i, ptr %i.x, align 8, !noalias !3629
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3625
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.817.i.i)
  %i.bn = load i8, ptr %i.g, align 1, !range !111, !alias.scope !3660, !noundef !3
  %.not.i24 = icmp eq i8 %i.bn, 2
  br i1 %.not.i24, label %bb.ap, label %bb.am

bb.am:                                            ; preds = %bb.al
  invoke void @_RNvXNvNtNtCskQDtHcQtBkN_5tokio4task4coop11with_budgetNtB2_10ResetGuardNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull dereferenceable(2) %i.g)
          to label %bb.ap unwind label %bb.ao

bb.an:                                            ; preds = %bb.ak
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !3659
  unreachable

bb.ao:                                            ; preds = %bb.am, %_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.i, %bb.aq
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.ak, %.body19, %bb.ao
  %eh.lpad-body = phi { ptr, i32 } [ %i.bp, %bb.ao ], [ %eh.lpad-body20, %.body19 ], [ %eh.lpad-body20, %bb.ak ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtBQ_13RawDeltaTable9file_uriss_00EBQ_(ptr noundef nonnull align 8 %i.h) #37
          to label %bb.at unwind label %bb.av

bb.ap:                                            ; preds = %bb.am, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !3620
  %i.bq = icmp eq i64 %.sroa.035.0, 2
  br i1 %i.bq, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  invoke void @_RNvMs2_NtNtCskQDtHcQtBkN_5tokio7runtime4parkNtB5_16CachedParkThread4park(ptr noalias noundef nonnull %1)
          to label %bb.f unwind label %bb.ao

bb.ar:                                            ; preds = %bb.ap
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.7, i64 56, i1 false)
  store i64 %.sroa.035.0, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  %i.br = load i8, ptr %i.x, align 8, !range !474, !noundef !3
  %cond.i27 = icmp eq i8 %i.br, 3
  %i.bs = load i8, ptr %.phi.trans.insert.i.i, align 8, !range !474
  %cond.i.i28 = icmp eq i8 %i.bs, 3
  %or.cond51 = select i1 %cond.i27, i1 %cond.i.i28, i1 false
  %i.bt = load i8, ptr %.sroa.11.0..sroa_idx.i.i.i, align 8, !range !474
  %cond.i.i.i29 = icmp eq i8 %i.bt, 3
  %or.cond53 = select i1 %or.cond51, i1 %cond.i.i.i29, i1 false
  br i1 %or.cond53, label %bb.as, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtBQ_13RawDeltaTable9file_uriss_00EBQ_.exit31

bb.as:                                            ; preds = %bb.ar
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream11try_collect10TryCollectINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewNtNtB49_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEINtNtB2k_3vec3VecB41_EEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(40) %i.ab)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtBQ_13RawDeltaTable9file_uriss_00EBQ_.exit31 unwind label %bb.au

bb.at:                                            ; preds = %bb.au, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.bw, %bb.au ]
  %.val11 = load ptr, ptr %i.j, align 8, !nonnull !3, !align !39, !noundef !3
  %.val12 = load ptr, ptr %i.r, align 8, !noundef !3
  %i.bu = getelementptr inbounds nuw i8, ptr %.val11, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8, !nonnull !3, !noundef !3
  invoke void %i.bv(ptr noundef %.val12)
          to label %.thread unwind label %bb.av, !inline_history !121

bb.au:                                            ; preds = %bb.as
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtBQ_13RawDeltaTable9file_uriss_00EBQ_.exit31: ; preds = %bb.ar, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %.val = load ptr, ptr %i.j, align 8, !nonnull !3, !align !39, !noundef !3
  %.val10 = load ptr, ptr %i.r, align 8, !noundef !3
  %i.bx = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.by = load ptr, ptr %i.bx, align 8, !nonnull !3, !noundef !3
  call void %i.by(ptr noundef %.val10), !inline_history !121
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtBQ_13RawDeltaTable9file_uriss_00EBQ_.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtBQ_13RawDeltaTable9file_uriss_00EBQ_.exit: ; preds = %bb.d, %6, %3, %bb.c, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtBQ_13RawDeltaTable9file_uriss_00EBQ_.exit31
  ret void

bb.av:                                            ; preds = %bb.at, %bb.aw, %.body
  %i.bz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

.thread:                                          ; preds = %bb.at, %bb.aw
  %.pn.pn42 = phi { ptr, i32 } [ %.pn, %bb.at ], [ %i.ca, %bb.aw ]
  resume { ptr, i32 } %.pn.pn42

bb.aw:                                            ; preds = %bb.a
  %i.ca = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtBQ_13RawDeltaTable9file_uriss_00EBQ_(ptr noundef nonnull align 8 %2) #37
          to label %.thread unwind label %bb.av
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs2_NtNtCskQDtHcQtBkN_5tokio7runtime4parkNtB6_16CachedParkThread8block_onNCNCNvXs4_NtCs7p2uQeJxui2_9deltalake10datafusionNtB1n_14TokioDeltaScanNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProvider4scan00EB1p_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(80) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [2 x i8], align 1                 ; 8 uses
  %i.b = alloca [40 x i8], align 8                ; 6 uses
  %i.c = alloca [80 x i8], align 8                ; 14 uses
  %i.d = alloca [32 x i8], align 8                ; 6 uses
  %i.e = alloca [16 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.f = invoke { ptr, ptr } @_RNvMs2_NtNtCskQDtHcQtBkN_5tokio7runtime4parkNtB5_16CachedParkThread5waker(ptr noalias noundef nonnull readonly captures(address, read_provenance) %1)
          to label %bb.b unwind label %bb.aq      ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.g = extractvalue { ptr, ptr } %i.f, 0        ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  store i64 21, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.j = load i8, ptr %i.i, align 8, !range !474, !noundef !3
  %cond.i = icmp eq i8 %i.j, 3
  br i1 %cond.i, label %bb.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvXs4_NtCs7p2uQeJxui2_9deltalake10datafusionNtBQ_14TokioDeltaScanNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProvider4scan00EBS_.exit

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 56
  %.val.i = load ptr, ptr %i.k, align 8           ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 64
  %.val1.i = load ptr, ptr %i.l, align 8, !nonnull !3, !align !39, !noundef !3 ; 5 uses
  %i.m = load ptr, ptr %.val1.i, align 8, !invariant.load !3 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  invoke void %i.m(ptr noundef nonnull %.val.i)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !92, !invariant.load !3 ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvXs4_NtCs7p2uQeJxui2_9deltalake10datafusionNtBQ_14TokioDeltaScanNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProvider4scan00EBS_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.r = load i64, ptr %i.q, align 8, !range !105, !invariant.load !3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.o, i64 noundef range(i64 1, 536870913) %i.r) #27
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvXs4_NtCs7p2uQeJxui2_9deltalake10datafusionNtBQ_14TokioDeltaScanNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProvider4scan00EBS_.exit

bb.h:                                             ; preds = %bb.e
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.u = load i64, ptr %i.t, align 8, !range !92, !invariant.load !3 ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %common.resume, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.x = load i64, ptr %i.w, align 8, !range !105, !invariant.load !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.u, i64 noundef range(i64 1, 536870913) %i.x) #27
  br label %common.resume

common.resume:                                    ; preds = %bb.aq, %.body31, %bb.h, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.s, %bb.h ], [ %i.s, %bb.i ], [ %.pn, %.body31 ], [ %i.cy, %bb.aq ]
  resume { ptr, i32 } %common.resume.op

bb.j:                                             ; preds = %bb.b
  %i.y = extractvalue { ptr, ptr } %i.f, 1
  store ptr %i.g, ptr %i.e, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  store ptr %i.y, ptr %i.z, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.e, ptr %i.d, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.e, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr null, ptr %i.ab, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.c, ptr noundef nonnull align 8 dereferenceable(80) %2, i64 80, i1 false)
  %i.ac = call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 72
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 72 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 56 ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 4 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.ah, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3663
  %i.ao = load i8, ptr %i.ad, align 8, !range !111, !noundef !3 ; 2 uses
  switch i8 %i.ao, label %default.unreachable [
    i8 0, label %_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.i
    i8 1, label %_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.thread2.i
    i8 2, label %.noexc
  ], !prof !112

default.unreachable:                              ; preds = %.noexc, %bb.k
  unreachable

_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.k
  %i.ap = invoke noundef ptr @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtNtCskQDtHcQtBkN_5tokio7runtime7context7ContextE10initializeCs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8 %i.ac)
          to label %.noexc16 unwind label %bb.af  ; 2 uses

.noexc16:                                         ; preds = %_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.i
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %.noexc, label %_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.thread2.i

_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.thread2.i: ; preds = %.noexc16, %bb.k
  %.sroa.0.0.i.i4.i = phi ptr [ %i.ap, %.noexc16 ], [ %i.ac, %bb.k ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i, i64 68 ; 2 uses
  %i.as = load i8, ptr %i.ar, align 1, !range !40, !noundef !3
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i, i64 69 ; 2 uses
  %i.au = load i8, ptr %i.at, align 1
  store i8 1, ptr %i.ar, align 1
  store i8 -128, ptr %i.at, align 1
  br label %.noexc

.noexc:                                           ; preds = %_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.thread2.i, %.noexc16, %bb.k
  %.sroa.3.0.i = phi i8 [ %i.au, %_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.thread2.i ], [ undef, %.noexc16 ], [ undef, %bb.k ]
  %.sroa.0.0.i = phi i8 [ %i.as, %_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.thread2.i ], [ 2, %.noexc16 ], [ %i.ao, %bb.k ]
  store i8 %.sroa.0.0.i, ptr %i.a, align 1, !noalias !3663
  store i8 %.sroa.3.0.i, ptr %i.ae, align 1, !noalias !3663
  call void @llvm.experimental.noalias.scope.decl(metadata !3668)
  call void @llvm.experimental.noalias.scope.decl(metadata !3671)
  %i.av = load i8, ptr %i.af, align 8, !range !474, !noalias !3674, !noundef !3
  switch i8 %i.av, label %default.unreachable [
    i8 0, label %bb.l
    i8 1, label %bb.o
    i8 2, label %bb.p
    i8 3, label %bb.r
  ]

bb.l:                                             ; preds = %.noexc
  %i.aw = load ptr, ptr %i.c, align 8, !noalias !3674, !nonnull !3, !align !39, !noundef !3
  %i.ax = load ptr, ptr %i.ag, align 8, !noalias !3674, !nonnull !3, !noundef !3
  %i.ay = load ptr, ptr %i.ah, align 8, !noalias !3674, !nonnull !3, !align !39, !noundef !3
  %i.az = load ptr, ptr %i.ai, align 8, !noalias !3674, !nonnull !3, !align !39, !noundef !3
  %i.ba = load ptr, ptr %i.az, align 8, !noalias !3674, !align !39, !noundef !3
  %i.bb = load ptr, ptr %i.aj, align 8, !noalias !3674, !nonnull !3, !align !3677, !noundef !3
  %i.bc = load i64, ptr %i.ak, align 8, !noalias !3674, !noundef !3
  %i.bd = load ptr, ptr %i.al, align 8, !noalias !3674, !nonnull !3, !align !39, !noundef !3 ; 2 uses
  %i.be = load i64, ptr %i.bd, align 8, !range !34, !noalias !3674, !noundef !3
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bg = load i64, ptr %i.bf, align 8, !noalias !3674
  %i.bh = invoke { ptr, ptr } @_RNvXsn_NtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4nextNtB5_9DeltaScanNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProvider4scan(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(168) %i.aw, ptr noundef nonnull %i.ax, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.ay, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %i.ba, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %i.bb, i64 noundef %i.bc, i64 noundef %i.be, i64 %i.bg)
          to label %bb.n unwind label %bb.m, !noalias !3674 ; 2 uses

bb.m:                                             ; preds = %bb.l
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.n:                                             ; preds = %bb.l
  %i.bj = extractvalue { ptr, ptr } %i.bh, 0
  %i.bk = extractvalue { ptr, ptr } %i.bh, 1
  store ptr %i.bj, ptr %i.am, align 8, !noalias !3674
  store ptr %i.bk, ptr %i.an, align 8, !noalias !3674
  br label %bb.r

.body.i.i:                                        ; preds = %bb.y, %bb.x, %bb.q, %bb.m
  %.pn.i.i = phi { ptr, i32 } [ %i.bi, %bb.m ], [ %i.bl, %bb.q ], [ %i.bu, %bb.x ], [ %i.bu, %bb.y ]
  store i8 2, ptr %i.af, align 8, !noalias !3674
  br label %.body18

bb.o:                                             ; preds = %.noexc
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @115) #36
          to label %.noexc20 unwind label %bb.aa

.noexc20:                                         ; preds = %bb.o
  unreachable
end_hunk_2
begin_hunk_3_@_RINvNtNtCs2pqxYH9ZEk8_3std3sys9backtrace28___rust_begin_short_backtraceNCINvMs0_NtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processorNtB1g_18BatchSpanProcessor3newNtNtCs1e4wyRlCFp2_18opentelemetry_otlp4span12SpanExporterE0uECs7p2uQeJxui2_9deltalake:bb.a
  %i.ea = icmp samesign ugt i64 %i.dy, 3
  br i1 %i.ea, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.eb = load ptr, ptr @_RNvNCNvMs0_NtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processorNtB9_18BatchSpanProcessor3new010___CALLSITE, align 8, !noalias !9659, !nonnull !3, !align !39, !noundef !3 ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 32
  %i.ed = load ptr, ptr %i.ec, align 8, !nonnull !3, !noundef !3
  %i.ee = getelementptr inbounds nuw i8, ptr %i.eb, i64 40
  %i.ef = load i64, ptr %i.ee, align 8, !noundef !3
  store i64 4, ptr %i.j, align 8, !noalias !9659
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.ed, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !noalias !9659
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 %i.ef, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !9659
  %i.eg = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %.noexc203.i unwind label %bb.c ; 2 uses

.noexc203.i:                                      ; preds = %bb.m
  %i.eh = extractvalue { ptr, ptr } %i.eg, 0      ; 2 uses
  %i.ei = extractvalue { ptr, ptr } %i.eg, 1      ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 24
  %i.ek = load ptr, ptr %i.ej, align 8, !invariant.load !3, !nonnull !3
  %i.el = invoke noundef zeroext i1 %i.ek(ptr noundef %i.eh, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.j) #32
          to label %.noexc204.i unwind label %bb.c, !inline_history !9662

.noexc204.i:                                      ; preds = %.noexc203.i
  br i1 %i.el, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.noexc204.i
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.eb, ptr noundef nonnull %i.eh, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ei, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.cm)
          to label %bb.o unwind label %bb.c

bb.o:                                             ; preds = %bb.n, %.noexc204.i, %bb.l, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !9654
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm), !noalias !9654
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cj), !noalias !9654
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ck), !noalias !9654
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl), !noalias !9654
  br label %bb.p

bb.p:                                             ; preds = %bb.w, %bb.u, %bb.r, %bb.q, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cd), !noalias !9654
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 4 uses
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.eo = load i64, ptr %i.en, align 8, !alias.scope !9654, !noundef !3 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !9654
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.s, i64 noundef %i.eo, i1 noundef zeroext false, i64 noundef 16, i64 noundef 352)
          to label %bb.x unwind label %bb.c

bb.q:                                             ; preds = %bb.j, %bb.i, %bb.f, %bb.d
  %i.ep = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !9654
  %i.eq = icmp eq i8 %i.ep, 0
  br i1 %i.eq, label %bb.r, label %bb.p

bb.r:                                             ; preds = %bb.q
  %i.er = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !9654 ; 2 uses
  %i.es = icmp ult i64 %i.er, 6
  tail call void @llvm.assume(i1 %i.es)
  %i.et = icmp samesign ugt i64 %i.er, 3
  br i1 %i.et, label %bb.s, label %bb.p

bb.s:                                             ; preds = %bb.r
  %i.eu = load ptr, ptr @_RNvNCNvMs0_NtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processorNtB9_18BatchSpanProcessor3new010___CALLSITE, align 8, !noalias !9654, !nonnull !3, !align !39, !noundef !3 ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 32
  %i.ew = load ptr, ptr %i.ev, align 8, !nonnull !3, !noundef !3
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eu, i64 40
  %i.ey = load i64, ptr %i.ex, align 8, !noundef !3
  store i64 4, ptr %i.ci, align 8, !noalias !9654
  %.sroa.396.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store ptr %i.ew, ptr %.sroa.396.0..sroa_idx.i, align 8, !noalias !9654
  %.sroa.597.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  store i64 %i.ey, ptr %.sroa.597.0..sroa_idx.i, align 8, !noalias !9654
  %i.ez = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %bb.t unwind label %bb.c       ; 2 uses

bb.t:                                             ; preds = %bb.s
  %i.fa = extractvalue { ptr, ptr } %i.ez, 0      ; 2 uses
  %i.fb = extractvalue { ptr, ptr } %i.ez, 1      ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 24
  %i.fd = load ptr, ptr %i.fc, align 8, !invariant.load !3, !nonnull !3
  %i.fe = invoke noundef zeroext i1 %i.fd(ptr noundef %i.fa, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ci)
          to label %bb.u unwind label %bb.c

bb.u:                                             ; preds = %bb.t
  br i1 %i.fe, label %bb.v, label %bb.p

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ch), !noalias !9654
  %i.ff = load ptr, ptr @_RNvNCNvMs0_NtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processorNtB9_18BatchSpanProcessor3new010___CALLSITE, align 8, !noalias !9654, !nonnull !3, !align !39, !noundef !3
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cg), !noalias !9654
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cf), !noalias !9654
  store ptr inttoptr (i64 1 to ptr), ptr %i.cf, align 8, !noalias !9654
  %i.fh = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.fh, align 8, !noalias !9654
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ce), !noalias !9654
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.fk = load i64, ptr %i.fj, align 8, !alias.scope !9654, !noundef !3
  %i.fl = zext i64 %i.fk to i128
  %i.fm = mul nuw nsw i128 %i.fl, 1000
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.fo = load i32, ptr %i.fn, align 8, !range !9658, !alias.scope !9654, !noundef !3
  %i.fp = udiv i32 %i.fo, 1000000
  %i.fq = zext nneg i32 %i.fp to i128
  %i.fr = add nuw nsw i128 %i.fm, %i.fq
  store i128 %i.fr, ptr %i.ce, align 16, !noalias !9654
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 272
  store ptr %i.cf, ptr %i.cg, align 8, !noalias !9654
  %i.ft = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  store ptr @54, ptr %i.ft, align 8, !noalias !9654
  %i.fu = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  store ptr @56, ptr %i.fu, align 8, !noalias !9654
  %i.fv = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  store ptr @57, ptr %i.fv, align 8, !noalias !9654
  %i.fw = getelementptr inbounds nuw i8, ptr %i.cg, i64 32
  store ptr %i.ce, ptr %i.fw, align 8, !noalias !9654
  %i.fx = getelementptr inbounds nuw i8, ptr %i.cg, i64 40
  store ptr @58, ptr %i.fx, align 8, !noalias !9654
  %i.fy = getelementptr inbounds nuw i8, ptr %i.cg, i64 48
  store ptr %i.fs, ptr %i.fy, align 8, !noalias !9654
  %i.fz = getelementptr inbounds nuw i8, ptr %i.cg, i64 56
  store ptr @59, ptr %i.fz, align 8, !noalias !9654
  %i.ga = getelementptr inbounds nuw i8, ptr %i.cg, i64 64
  store ptr %i.fi, ptr %i.ga, align 8, !noalias !9654
  %i.gb = getelementptr inbounds nuw i8, ptr %i.cg, i64 72
  store ptr @59, ptr %i.gb, align 8, !noalias !9654
  store i64 1, ptr %i.ch, align 8, !noalias !9654
  %.sroa.499.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store ptr %i.cg, ptr %.sroa.499.0..sroa_idx.i, align 8, !noalias !9654
  %.sroa.5100.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  store i64 5, ptr %.sroa.5100.0..sroa_idx.i, align 8, !noalias !9654
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  store ptr %i.fg, ptr %i.gc, align 8, !noalias !9654
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !9654
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.ci, i64 24, i1 false), !noalias !9654
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.eu, ptr noundef nonnull %i.fa, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.fb, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.r, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ch)
          to label %bb.w unwind label %bb.c

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !9654
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce), !noalias !9654
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf), !noalias !9654
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg), !noalias !9654
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch), !noalias !9654
  br label %bb.p

bb.x:                                             ; preds = %bb.p
  %i.gd = load i64, ptr %i.s, align 8, !range !34, !noalias !9654, !noundef !3
  %i.ge = trunc nuw i64 %i.gd to i1
  %i.gf = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.gg = load i64, ptr %i.gf, align 8, !range !1996, !noalias !9654, !noundef !3 ; 3 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  br i1 %i.ge, label %bb.y, label %bb.z, !prof !37

bb.y:                                             ; preds = %bb.x
  %i.gi = load i64, ptr %i.gh, align 8, !noalias !9654
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.gg, i64 %i.gi) #34
          to label %bb.ho unwind label %bb.c

bb.z:                                             ; preds = %bb.x
  %i.gj = load ptr, ptr %i.gh, align 8, !noalias !9654, !nonnull !3, !noundef !3
  %i.gk = icmp ule i64 %i.eo, %i.gg
  call void @llvm.assume(i1 %i.gk)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !9654
  store i64 %i.gg, ptr %i.cd, align 8, !noalias !9654
  %i.gl = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store ptr %i.gj, ptr %i.gl, align 8, !noalias !9654
  %i.gm = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  store i64 0, ptr %i.gm, align 8, !noalias !9654
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cc), !noalias !9654
  %i.gn = invoke { i64, i32 } @_RNvMNtCs2pqxYH9ZEk8_3std4timeNtB2_7Instant3now()
          to label %bb.ab unwind label %bb.aa     ; 2 uses

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicjEEECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.ad, %.body300.i, %bb.aa
  %.sroa.090.4.i = phi i1 [ %.sroa.090.5.i, %bb.aa ], [ false, %bb.ad ], [ false, %.body300.i ]
  %.pn183.i = phi { ptr, i32 } [ %i.go, %bb.aa ], [ %.pn181.i, %bb.ad ], [ %.pn181.i, %.body300.i ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.cd) #37
          to label %.body326.i unwind label %bb.cc

bb.aa:                                            ; preds = %bb.ha, %bb.z
  %.sroa.090.5.i = phi i1 [ false, %bb.ha ], [ true, %bb.z ]
  %i.go = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicjEEECs7p2uQeJxui2_9deltalake.exit.i

bb.ab:                                            ; preds = %bb.z
  %i.gp = extractvalue { i64, i32 } %i.gn, 0
  %i.gq = extractvalue { i64, i32 } %i.gn, 1
  store i64 %i.gp, ptr %i.cc, align 8, !noalias !9654
  %i.gr = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  store i32 %i.gq, ptr %i.gr, align 8, !noalias !9654
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cb), !noalias !9654
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.gt = load ptr, ptr %i.gs, align 8, !alias.scope !9654, !nonnull !3, !noundef !3
  store ptr %i.gt, ptr %i.cb, align 8, !noalias !9654
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.gy = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.6.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.ca, i64 8 ; 4 uses
  %.sroa.917.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 7 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.hb = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.hc = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %.sroa.037.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %.sroa.037.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %.sroa.438.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %.sroa.3.0..sroa_idx.i235.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.5.0..sroa_idx.i236.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.3116.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %.sroa.5117.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.hd = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.he = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %.sroa.4119.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %.sroa.5120.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.hf = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.hi = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %.sroa.027.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %.sroa.027.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %.sroa.428.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %.sroa.3.0..sroa_idx.i222.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.5.0..sroa_idx.i223.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.3106.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %.sroa.5107.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.hj = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.hk = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %.sroa.4109.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %.sroa.5110.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.hl = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %i.hm = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.hn = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %.sroa.067.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.sroa.067.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %.sroa.468.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %.sroa.3.0..sroa_idx.i290.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.5.0..sroa_idx.i291.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.3146.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %.sroa.5147.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.ho = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.hp = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %.sroa.4149.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %.sroa.5150.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.hq = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ey, %bb.ab
  %i.hr = load i64, ptr %i.gu, align 8, !alias.scope !9654, !noundef !3 ; 2 uses
  %i.hs = load i32, ptr %i.gv, align 8, !range !9658, !alias.scope !9654, !noundef !3 ; 3 uses
  %i.ht = invoke { i64, i32 } @_RNvMNtCs2pqxYH9ZEk8_3std4timeNtB2_7Instant7elapsed(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.cc)
          to label %bb.ae unwind label %.loopexit.i ; 2 uses

.body300.i:                                       ; preds = %bb.fu, %bb.ev, %bb.eu, %.body261.thread346.i, %.body243.i, %bb.bd, %.body.i, %.loopexit.split-lp.i, %.loopexit.i
  %.pn181.i = phi { ptr, i32 } [ %.pn.i, %.body261.thread346.i ], [ %i.rr, %bb.eu ], [ %eh.lpad-body.i, %.body.i ], [ %eh.lpad-body244.i, %.body243.i ], [ %i.tr, %bb.fu ], [ %eh.lpad-body.i, %bb.bd ], [ %i.rr, %bb.ev ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9663)
  call void @llvm.experimental.noalias.scope.decl(metadata !9666)
  %i.hu = load ptr, ptr %i.cb, align 8, !alias.scope !9669, !noalias !9654, !nonnull !3, !noundef !3
  %i.hv = atomicrmw sub ptr %i.hu, i64 1 release, align 8, !noalias !9669
  %i.hw = icmp eq i64 %i.hv, 1
  br i1 %i.hw, label %bb.ad, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicjEEECs7p2uQeJxui2_9deltalake.exit.i

bb.ad:                                            ; preds = %.body300.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtCsbvkFyIu7lgC_4core4sync6atomic6AtomicjEE9drop_slowCs3LxfdNfGUeX_31datafusion_physical_expr_common(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.cb) #35
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicjEEECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.cc

.loopexit.i:                                      ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i299.i, %bb.fq, %bb.fo, %bb.fn, %bb.fk, %bb.fi, %.noexc293.i, %bb.fh, %bb.ff, %bb.fc, %bb.fb, %bb.ex, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtNtCs2pqxYH9ZEk8_3std4sync4mpsc9SendErrorIBH_uNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEEEECs7p2uQeJxui2_9deltalake.exit.i, %bb.cb, %bb.au, %bb.at, %bb.as, %bb.aq, %bb.ap, %bb.ao, %.noexc209.i, %bb.am, %bb.ac
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body300.i

.loopexit.split-lp.i:                             ; preds = %bb.hg, %bb.he, %bb.hd, %bb.gx, %.noexc318.i, %bb.gw, %bb.gu, %bb.gr, %bb.gq, %bb.gm, %bb.gk, %bb.gj, %bb.gf, %.noexc309.i, %bb.ge, %bb.gc, %bb.fz, %bb.fy, %bb.em, %bb.al
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body300.i

bb.ae:                                            ; preds = %bb.ac
  %i.hx = extractvalue { i64, i32 } %i.ht, 0      ; 2 uses
  %i.hy = extractvalue { i64, i32 } %i.ht, 1      ; 2 uses
  %i.hz = icmp ult i64 %i.hr, %i.hx
  br i1 %i.hz, label %1, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ia = sub nuw i64 %i.hr, %i.hx                ; 3 uses
  %.not.i.i = icmp samesign ult i32 %i.hs, %i.hy
  br i1 %.not.i.i, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  %i.ib = icmp eq i64 %i.ia, 0
  br i1 %i.ib, label %1, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ic = add i64 %i.ia, -1
  %i.id = add nuw nsw i32 %i.hs, 1000000000
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.af
  %.pn.i.i = phi i32 [ %i.id, %bb.ah ], [ %i.hs, %bb.af ]
  %.sroa.05.0.i.i = phi i64 [ %i.ic, %bb.ah ], [ %i.ia, %bb.af ] ; 3 uses
  %.sroa.02.0.i.i = sub nuw nsw i32 %.pn.i.i, %i.hy ; 3 uses
  %i.ie = icmp samesign ult i32 %.sroa.02.0.i.i, 1000000000
  br i1 %i.ie, label %bb.am, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.if = icmp eq i64 %.sroa.05.0.i.i, -1
  br i1 %i.if, label %bb.al, label %bb.ak, !prof !37

bb.ak:                                            ; preds = %bb.aj
  %i.ig = add nuw i64 %.sroa.05.0.i.i, 1
  %i.ih = add nsw i32 %.sroa.02.0.i.i, -1000000000
  br label %bb.am

bb.al:                                            ; preds = %bb.aj
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @242, i64 noundef 25, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @244) #36
          to label %.noexc207.i unwind label %.loopexit.split-lp.i

.noexc207.i:                                      ; preds = %bb.al
  unreachable

1:                                                ; preds = %bb.ag, %bb.ae
  %2 = load i64, ptr %i.gu, align 8, !alias.scope !9654, !noundef !3
  %3 = load i32, ptr %i.gv, align 8, !range !9658, !alias.scope !9654, !noundef !3
  br label %bb.am

bb.am:                                            ; preds = %1, %bb.ak, %bb.ai
  %.sroa.3.0.i = phi i32 [ %3, %1 ], [ %i.ih, %bb.ak ], [ %.sroa.02.0.i.i, %bb.ai ]
  %.sroa.012.0.i = phi i64 [ %2, %1 ], [ %i.ig, %bb.ak ], [ %.sroa.05.0.i.i, %bb.ai ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ca), !noalias !9654
  %.val.i = load i64, ptr %0, align 8, !alias.scope !9654 ; 2 uses
  %.val198.i = load ptr, ptr %i.gw, align 8, !alias.scope !9654 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9670)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !9673
  %i.ii = invoke { i64, i32 } @_RNvMNtCs2pqxYH9ZEk8_3std4timeNtB2_7Instant3now()
          to label %.noexc209.i unwind label %.loopexit.i ; 2 uses

.noexc209.i:                                      ; preds = %bb.am
  %i.ij = extractvalue { i64, i32 } %i.ii, 0
  %i.ik = extractvalue { i64, i32 } %i.ii, 1
  store i64 %i.ij, ptr %i.i, align 8, !noalias !9673
  store i32 %i.ik, ptr %i.gx, align 8, !noalias !9673
  %i.il = invoke { i64, i32 } @_RNvMNtCs2pqxYH9ZEk8_3std4timeNtB2_7Instant11checked_add(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.i, i64 noundef %.sroa.012.0.i, i32 noundef range(i32 0, 1000000000) %.sroa.3.0.i)
          to label %.noexc210.i unwind label %.loopexit.i ; 2 uses

.noexc210.i:                                      ; preds = %.noexc209.i
  %i.im = extractvalue { i64, i32 } %i.il, 1      ; 4 uses
  %.not.i208.i = icmp eq i32 %i.im, 1000000000
  br i1 %.not.i208.i, label %bb.ar, label %bb.an

bb.an:                                            ; preds = %.noexc210.i
  %i.in = extractvalue { i64, i32 } %i.il, 0      ; 3 uses
  switch i64 %.val.i, label %default.unreachable.i.i.i [
    i64 0, label %bb.ao
    i64 1, label %bb.ap
    i64 2, label %bb.aq
  ]

default.unreachable.i.i.i:                        ; preds = %bb.an
  unreachable

bb.ao:                                            ; preds = %bb.an
  invoke void @_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE4recvCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ca, ptr noundef nonnull align 128 %.val198.i, i64 %i.in, i32 noundef range(i32 0, 1000000000) %i.im)
          to label %thread-pre-split.i unwind label %.loopexit.i

bb.ap:                                            ; preds = %bb.an
  invoke fastcc void @_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE4recvCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(24) %i.ca, ptr noundef nonnull align 128 %.val198.i, i64 %i.in, i32 noundef range(i32 0, 1000000000) %i.im)
          to label %thread-pre-split.i unwind label %.loopexit.i

bb.aq:                                            ; preds = %bb.an
  invoke fastcc void @_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE4recvCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.ca, ptr noundef nonnull align 8 %.val198.i, i64 %i.in, i32 noundef range(i32 0, 1000000000) %i.im)
          to label %thread-pre-split.i unwind label %.loopexit.i

bb.ar:                                            ; preds = %.noexc210.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !9674
  switch i64 %.val.i, label %default.unreachable.i6.i.i [
    i64 0, label %bb.as
    i64 1, label %bb.at
    i64 2, label %bb.au
  ]

default.unreachable.i6.i.i:                       ; preds = %bb.ar
  unreachable

bb.as:                                            ; preds = %bb.ar
  invoke void @_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE4recvCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noundef nonnull align 128 %.val198.i, i64 undef, i32 noundef 1000000000)
          to label %.noexc214.i unwind label %.loopexit.i

bb.at:                                            ; preds = %bb.ar
  invoke fastcc void @_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE4recvCs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.h, ptr noundef nonnull align 128 %.val198.i, i64 undef, i32 noundef 1000000000)
          to label %.noexc214.i unwind label %.loopexit.i

bb.au:                                            ; preds = %bb.ar
  invoke fastcc void @_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE4recvCs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.h, ptr noundef nonnull align 8 %.val198.i, i64 undef, i32 noundef 1000000000)
          to label %.noexc214.i unwind label %.loopexit.i

.noexc214.i:                                      ; preds = %bb.au, %bb.at, %bb.as
  %i.io = load i64, ptr %i.h, align 8, !range !1200, !noalias !9674, !noundef !3 ; 3 uses
  %i.ip = icmp eq i64 %i.io, 4
  br i1 %i.ip, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %.noexc214.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !9674
  store i8 1, ptr %.sroa.6.0..sroa_idx2.i.i, align 8, !alias.scope !9670, !noalias !9654
  br label %bb.ax

bb.aw:                                            ; preds = %.noexc214.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.gy, i64 16, i1 false), !noalias !9654
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !9674
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  store i64 %i.io, ptr %i.ca, align 8, !alias.scope !9670, !noalias !9654
  br label %bb.ay

thread-pre-split.i:                               ; preds = %bb.aq, %bb.ap, %bb.ao
  %.pr.i = load i64, ptr %i.ca, align 8, !noalias !9654
  br label %bb.ay

bb.ay:                                            ; preds = %thread-pre-split.i, %bb.ax
  %i.iq = phi i64 [ %.pr.i, %thread-pre-split.i ], [ %i.io, %bb.ax ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !9673
  %i.ir = icmp eq i64 %i.iq, 4
  br i1 %i.ir, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.is = load i8, ptr %.sroa.6.0..sroa_idx2.i.i, align 8, !range !40, !noalias !9654, !noundef !3
  %i.it = trunc nuw i8 %i.is to i1
  %i.iu = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !9654
  %i.iv = icmp ult i64 %i.iu, 2                   ; 2 uses
  br i1 %i.it, label %bb.fw, label %bb.ez

bb.ba:                                            ; preds = %bb.ay
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx2.i.i, align 8, !noalias !9654 ; 8 uses
  %.sroa.917.0.copyload.i = load ptr, ptr %.sroa.917.0..sroa_idx.i, align 8, !noalias !9654 ; 4 uses
  switch i64 %i.iq, label %bb.e [
    i64 0, label %bb.be
    i64 1, label %bb.ce
    i64 2, label %bb.dd
    i64 3, label %bb.bb
  ]

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !9654
  %i.iw = inttoptr i64 %.sroa.5.0.copyload.i to ptr ; 2 uses
  store ptr %i.iw, ptr %i.ap, align 8, !noalias !9654
  %i.ix = icmp ne i64 %.sroa.5.0.copyload.i, 0
  call void @llvm.assume(i1 %i.ix)
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iw, i64 16
  invoke void @_RNvXs3_NtCs1e4wyRlCFp2_18opentelemetry_otlp4spanNtB5_12SpanExporterNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export12SpanExporter12set_resource(ptr noalias noundef nonnull align 8 dereferenceable(232) %i.gz, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.iy)
          to label %bb.ew unwind label %bb.eu

bb.bc:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i.i, %bb.bv, %bb.bt, %bb.bs, %bb.bp, %bb.bn, %.noexc225.i, %bb.bm, %bb.bk, %bb.bh, %bb.bg
  %i.iz = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.bz, %bb.bc
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.iz, %bb.bc ], [ %i.lb, %bb.bz ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9677)
  call void @llvm.experimental.noalias.scope.decl(metadata !9680)
  %i.ja = load ptr, ptr %i.bz, align 8, !alias.scope !9683, !noalias !9654, !nonnull !3, !noundef !3
  %i.jb = atomicrmw sub ptr %i.ja, i64 1 release, align 8, !noalias !9683
  %i.jc = icmp eq i64 %i.jb, 1
  br i1 %i.jc, label %bb.bd, label %.body300.i

bb.bd:                                            ; preds = %.body.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtCsbvkFyIu7lgC_4core4sync6atomic6AtomicbEE9drop_slowCscq8Lx7CD32J_17opentelemetry_sdk(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bz) #35
          to label %.body300.i unwind label %bb.cc

bb.be:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bz), !noalias !9654
  %i.jd = inttoptr i64 %.sroa.5.0.copyload.i to ptr ; 2 uses
  store ptr %i.jd, ptr %i.bz, align 8, !noalias !9654
  %i.je = icmp ne i64 %.sroa.5.0.copyload.i, 0
  call void @llvm.assume(i1 %i.je)
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jd, i64 16
  store atomic i8 0, ptr %i.jf monotonic, align 1
  %i.jg = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !9654
  %i.jh = icmp ult i64 %i.jg, 2
  br i1 %i.jh, label %bb.bf, label %bb.bq

bb.bf:                                            ; preds = %bb.be
  %i.ji = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNvMs0_NtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processorNtB9_18BatchSpanProcessor3new0s_10___CALLSITE, i64 16) monotonic, align 8, !noalias !9654 ; 3 uses
  switch i8 %i.ji, label %bb.bg [
    i8 0, label %bb.bq
    i8 1, label %bb.bh
    i8 2, label %bb.bh
  ], !prof !9657

bb.bg:                                            ; preds = %bb.bf
  %i.jj = invoke noundef i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNvMs0_NtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processorNtB9_18BatchSpanProcessor3new0s_10___CALLSITE)
          to label %bb.bi unwind label %bb.bc     ; 2 uses

bb.bh:                                            ; preds = %bb.bf, %bb.bi, %bb.bf
  %.sroa.025.0.i = phi i8 [ %i.jj, %bb.bi ], [ %i.ji, %bb.bf ], [ %i.ji, %bb.bf ]
  %i.jk = load ptr, ptr @_RNvNCNvMs0_NtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processorNtB9_18BatchSpanProcessor3new0s_10___CALLSITE, align 8, !noalias !9654, !nonnull !3, !align !39, !noundef !3
  %i.jl = invoke noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.jk, i8 noundef %.sroa.025.0.i)
          to label %bb.bj unwind label %bb.bc

bb.bi:                                            ; preds = %bb.bg
  %i.jm = icmp eq i8 %i.jj, 0
  br i1 %i.jm, label %bb.bq, label %bb.bh

bb.bj:                                            ; preds = %bb.bh
  br i1 %i.jl, label %bb.bk, label %bb.bq

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by), !noalias !9654
  %i.jn = load ptr, ptr @_RNvNCNvMs0_NtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processorNtB9_18BatchSpanProcessor3new0s_10___CALLSITE, align 8, !noalias !9654, !nonnull !3, !align !39, !noundef !3 ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bx), !noalias !9654
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw), !noalias !9654
  store <2 x ptr> <ptr inttoptr (i64 1 to ptr), ptr inttoptr (i64 1 to ptr)>, ptr %i.bw, align 16, !noalias !9654
  store ptr %i.bw, ptr %i.bx, align 8, !noalias !9654
  store <2 x ptr> <ptr @54, ptr @61>, ptr %i.hh, align 8, !noalias !9654
  store ptr @57, ptr %i.hi, align 8, !noalias !9654
  store i64 1, ptr %i.by, align 8, !noalias !9654
  store ptr %i.bx, ptr %.sroa.027.sroa.4.0..sroa_idx.i, align 8, !noalias !9654
  store i64 2, ptr %.sroa.027.sroa.5.0..sroa_idx.i, align 8, !noalias !9654
  store ptr %i.jo, ptr %.sroa.428.0..sroa_idx.i, align 8, !noalias !9654
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !9654
  invoke void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.jn, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.by)
          to label %.noexc224.i unwind label %bb.bc

.noexc224.i:                                      ; preds = %bb.bk
  %i.jp = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !9684
  %i.jq = icmp eq i8 %i.jp, 0
  br i1 %i.jq, label %bb.bl, label %bb.bo

bb.bl:                                            ; preds = %.noexc224.i
  %i.jr = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !9684 ; 2 uses
  %i.js = icmp ult i64 %i.jr, 6
  call void @llvm.assume(i1 %i.js)
  %i.jt = icmp samesign ugt i64 %i.jr, 3
  br i1 %i.jt, label %bb.bm, label %bb.bo

bb.bm:                                            ; preds = %bb.bl
  %i.ju = load ptr, ptr @_RNvNCNvMs0_NtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processorNtB9_18BatchSpanProcessor3new0s_10___CALLSITE, align 8, !noalias !9684, !nonnull !3, !align !39, !noundef !3 ; 3 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 32
  %i.jw = load ptr, ptr %i.jv, align 8, !nonnull !3, !noundef !3
  %i.jx = getelementptr inbounds nuw i8, ptr %i.ju, i64 40
  %i.jy = load i64, ptr %i.jx, align 8, !noundef !3
  store i64 4, ptr %i.g, align 8, !noalias !9684
  store ptr %i.jw, ptr %.sroa.3.0..sroa_idx.i222.i, align 8, !noalias !9684
  store i64 %i.jy, ptr %.sroa.5.0..sroa_idx.i223.i, align 8, !noalias !9684
  %i.jz = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %.noexc225.i unwind label %bb.bc ; 2 uses

.noexc225.i:                                      ; preds = %bb.bm
  %i.ka = extractvalue { ptr, ptr } %i.jz, 0      ; 2 uses
  %i.kb = extractvalue { ptr, ptr } %i.jz, 1      ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 24
  %i.kd = load ptr, ptr %i.kc, align 8, !invariant.load !3, !nonnull !3
  %i.ke = invoke noundef zeroext i1 %i.kd(ptr noundef %i.ka, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.g) #32
          to label %.noexc226.i unwind label %bb.bc, !inline_history !9687

.noexc226.i:                                      ; preds = %.noexc225.i
  br i1 %i.ke, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %.noexc226.i
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ju, ptr noundef nonnull %i.ka, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.kb, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.by)
          to label %bb.bo unwind label %bb.bc

bb.bo:                                            ; preds = %bb.bn, %.noexc226.i, %bb.bl, %.noexc224.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !9654
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by), !noalias !9654
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw), !noalias !9654
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx), !noalias !9654
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bw, %bb.bu, %bb.br, %bb.bq, %bb.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br), !noalias !9654
  %i.kf = load ptr, ptr %i.cb, align 8, !noalias !9654, !nonnull !3, !noundef !3
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 16
  invoke fastcc void @_RINvMs0_NtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processorNtB6_18BatchSpanProcessor20get_spans_and_exportNtNtCs1e4wyRlCFp2_18opentelemetry_otlp4span12SpanExporterECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.br, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.hg, ptr noundef nonnull align 8 %i.gz, ptr noalias noundef align 8 dereferenceable(24) %i.cd, ptr noalias noundef align 8 dereferenceable(16) %i.cc, ptr noundef nonnull align 8 %i.kg, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.em)
          to label %bb.bx unwind label %bb.bc

bb.bq:                                            ; preds = %bb.bj, %bb.bi, %bb.bf, %bb.be
  %i.kh = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !9654
  %i.ki = icmp eq i8 %i.kh, 0
  br i1 %i.ki, label %bb.br, label %bb.bp

bb.br:                                            ; preds = %bb.bq
  %i.kj = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !9654 ; 2 uses
  %i.kk = icmp ult i64 %i.kj, 6
  call void @llvm.assume(i1 %i.kk)
  %i.kl = icmp samesign ugt i64 %i.kj, 3
  br i1 %i.kl, label %bb.bs, label %bb.bp

bb.bs:                                            ; preds = %bb.br
  %i.km = load ptr, ptr @_RNvNCNvMs0_NtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processorNtB9_18BatchSpanProcessor3new0s_10___CALLSITE, align 8, !noalias !9654, !nonnull !3, !align !39, !noundef !3 ; 3 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 32
  %i.ko = load ptr, ptr %i.kn, align 8, !nonnull !3, !noundef !3
  %i.kp = getelementptr inbounds nuw i8, ptr %i.km, i64 40
  %i.kq = load i64, ptr %i.kp, align 8, !noundef !3
  store i64 4, ptr %i.bv, align 8, !noalias !9654
  store ptr %i.ko, ptr %.sroa.3106.0..sroa_idx.i, align 8, !noalias !9654
  store i64 %i.kq, ptr %.sroa.5107.0..sroa_idx.i, align 8, !noalias !9654
  %i.kr = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %bb.bt unwind label %bb.bc     ; 2 uses

bb.bt:                                            ; preds = %bb.bs
  %i.ks = extractvalue { ptr, ptr } %i.kr, 0      ; 2 uses
  %i.kt = extractvalue { ptr, ptr } %i.kr, 1      ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 24
  %i.kv = load ptr, ptr %i.ku, align 8, !invariant.load !3, !nonnull !3
  %i.kw = invoke noundef zeroext i1 %i.kv(ptr noundef %i.ks, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bv)
          to label %bb.bu unwind label %bb.bc

bb.bu:                                            ; preds = %bb.bt
  br i1 %i.kw, label %bb.bv, label %bb.bp

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu), !noalias !9654
  %i.kx = load ptr, ptr @_RNvNCNvMs0_NtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processorNtB9_18BatchSpanProcessor3new0s_10___CALLSITE, align 8, !noalias !9654, !nonnull !3, !align !39, !noundef !3
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt), !noalias !9654
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs), !noalias !9654
  store <2 x ptr> <ptr inttoptr (i64 1 to ptr), ptr inttoptr (i64 1 to ptr)>, ptr %i.bs, align 16, !noalias !9654
  store ptr %i.bs, ptr %i.bt, align 8, !noalias !9654
  store <2 x ptr> <ptr @54, ptr @61>, ptr %i.hj, align 8, !noalias !9654
  store ptr @57, ptr %i.hk, align 8, !noalias !9654
  store i64 1, ptr %i.bu, align 8, !noalias !9654
  store ptr %i.bt, ptr %.sroa.4109.0..sroa_idx.i, align 8, !noalias !9654
  store i64 2, ptr %.sroa.5110.0..sroa_idx.i, align 8, !noalias !9654
  store ptr %i.ky, ptr %i.hl, align 8, !noalias !9654
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !9654
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.bv, i64 24, i1 false), !noalias !9654
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.km, ptr noundef nonnull %i.ks, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.kt, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.q, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bu)
          to label %bb.bw unwind label %bb.bc

bb.bw:                                            ; preds = %bb.bv
end_hunk_3
