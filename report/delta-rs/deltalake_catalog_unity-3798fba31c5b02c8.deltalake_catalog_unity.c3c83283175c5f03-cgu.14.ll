inline.NumInlined: 839
inline.NumDeleted: 369
begin_hunk_0_@_RNCNCINvMNtNtCs95DO3lnzZ3L_4moka6future11housekeeperNtB7_11Housekeeper20do_run_pending_tasksNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE00B28_:bb.a
  %.pn8 = phi { ptr, i32 } [ %i.s, %bb.k ], [ %i.q, %bb.h ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !520)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !523)
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !526, !nonnull !8, !noundef !8
  %i.m = atomicrmw sub ptr %i.l, i64 1 release, align 8, !noalias !526
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %bb.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtCs95DO3lnzZ3L_4moka6future10base_cache5InnerNtNtBL_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEEEB2s_.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtCs95DO3lnzZ3L_4moka6future10base_cache5InnerNtNtB7_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEE9drop_slowB1U_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.k) #25
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtCs95DO3lnzZ3L_4moka6future10base_cache5InnerNtNtBL_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEEEB2s_.exit unwind label %bb.o

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #29
  unreachable

bb.f:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #29
  unreachable

bb.g:                                             ; preds = %bb.a, %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.p = invoke fastcc noundef i8 @_RNCNvMsc_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtB7_5InnerNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE20do_run_pending_tasks0B1F_(ptr noundef nonnull align 8 %i.o, ptr noalias noundef align 8 dereferenceable(32) %1)
          to label %bb.i unwind label %bb.h       ; 2 uses

bb.h:                                             ; preds = %bb.g
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMsc_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtBO_5InnerNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE20do_run_pending_tasks0EB2m_(ptr noundef nonnull align 8 %i.o) #26
          to label %bb.c unwind label %bb.o

bb.i:                                             ; preds = %bb.g
  %i.r = icmp eq i8 %i.p, 2
  br i1 %i.r, label %common.ret, label %bb.j

common.ret:                                       ; preds = %bb.i, %bb.l, %bb.m
  %storemerge = phi i8 [ 1, %bb.l ], [ 1, %bb.m ], [ 3, %bb.i ]
  store i8 %storemerge, ptr %i.a, align 8
  ret i8 %i.p

bb.j:                                             ; preds = %bb.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMsc_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtBO_5InnerNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE20do_run_pending_tasks0EB2m_(ptr noundef nonnull align 8 %i.o)
          to label %bb.l unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.l:                                             ; preds = %bb.j
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !527)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !530)
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !533, !nonnull !8, !noundef !8
  %i.v = atomicrmw sub ptr %i.u, i64 1 release, align 8, !noalias !533
  %i.w = icmp eq i64 %i.v, 1
  br i1 %i.w, label %bb.m, label %common.ret

bb.m:                                             ; preds = %bb.l
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtCs95DO3lnzZ3L_4moka6future10base_cache5InnerNtNtB7_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEE9drop_slowB1U_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.t) #25
          to label %common.ret unwind label %bb.n

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtCs95DO3lnzZ3L_4moka6future10base_cache5InnerNtNtBL_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEEEB2s_.exit: ; preds = %bb.c, %bb.d, %bb.n
  %.pn10 = phi { ptr, i32 } [ %i.x, %bb.n ], [ %.pn8, %bb.d ], [ %.pn8, %bb.c ]
  store i8 2, ptr %i.a, align 8
  resume { ptr, i32 } %.pn10

bb.n:                                             ; preds = %bb.m
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtCs95DO3lnzZ3L_4moka6future10base_cache5InnerNtNtBL_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEEEB2s_.exit

bb.o:                                             ; preds = %bb.d, %bb.h
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNCNvMNtNtCs95DO3lnzZ3L_4moka6future8notifierINtB4_15RemovalNotifierNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsE6notify0B1K_(ptr noundef nonnull align 8 %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [272 x i8], align 16              ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [256 x i8], align 16              ; 11 uses
  %i.d = alloca [8 x i8], align 8                 ; 12 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 297 ; 3 uses
  %i.f = load i8, ptr %i.e, align 1, !range !33, !noundef !8
  switch i8 %i.f, label %default.unreachable65 [
    i8 0, label %bb.c
    i8 1, label %bb.p
    i8 2, label %bb.q
    i8 3, label %bb.b
  ]

default.unreachable65:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  br label %bb.r

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 300 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 299 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 301 ; 2 uses
  store i8 0, ptr %i.i, align 1
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !8, !align !12, !noundef !8 ; 2 uses
  store ptr %i.l, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 1, ptr %i.g, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !8, !noundef !8
  store ptr %i.n, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 1, ptr %i.h, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.c, ptr noundef nonnull align 8 dereferenceable(256) %0, i64 256, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 298 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.q = load i8, ptr %i.p, align 8, !range !33, !noundef !8
  store i8 %i.q, ptr %i.o, align 2
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.s = load atomic i8, ptr %i.r acquire, align 8
  %.not55 = icmp eq i8 %i.s, 0
  br i1 %.not55, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = load ptr, ptr %i.j, align 8, !nonnull !8, !align !12, !noundef !8 ; 2 uses
  store i8 0, ptr %i.g, align 4
  store i8 0, ptr %i.h, align 1
  %i.u = load ptr, ptr %i.d, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %.sroa.02.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.10.0..sroa_idx9.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !534
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %.sroa.10.0..sroa_idx9.i, ptr noundef nonnull align 8 dereferenceable(240) %.sroa.02.sroa.3.0..sroa_idx, i64 240, i1 false)
  %i.v = load <2 x ptr>, ptr %i.c, align 16
  store <2 x ptr> %i.v, ptr %i.a, align 16, !noalias !542
  %i.w = load i8, ptr %i.o, align 2, !range !33, !noalias !534, !noundef !8 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  store ptr %i.u, ptr %i.x, align 16, !noalias !534
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 264
  store i8 %i.w, ptr %i.y, align 8, !noalias !534
  %i.z = load ptr, ptr %i.t, align 8, !noalias !534, !nonnull !8, !noundef !8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !noalias !534, !nonnull !8, !align !12, !noundef !8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8, !invariant.load !8, !noalias !534, !nonnull !8
  %i.ae = invoke { ptr, ptr } %i.ad(ptr noundef nonnull %i.z, ptr noundef nonnull %i.u, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(256) %i.a, i8 noundef %i.w) #27
          to label %bb.h unwind label %bb.e, !noalias !542, !inline_history !543 ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.af = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  %i.ah = invoke { ptr, ptr } @_RNvNvNtCs2pqxYH9ZEk8_3std9panicking12catch_unwind7cleanup(ptr noundef %i.ag)
          to label %bb.i unwind label %bb.f, !noalias !542 ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #24, !noalias !542
  unreachable

bb.g:                                             ; preds = %bb.c, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 299 ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 1, !range !13, !noundef !8
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.aj, label %bb.ai

bb.h:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !534
  %i.am = extractvalue { ptr, ptr } %i.ae, 0      ; 3 uses
  %i.an = extractvalue { ptr, ptr } %i.ae, 1      ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.am) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.an) ]
  store i8 0, ptr %i.i, align 1
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 280
  store ptr %i.am, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 288
  store ptr %i.an, ptr %i.ap, align 8
  br label %bb.r

.body34:                                          ; preds = %bb.ah, %bb.ag, %bb.aa, %bb.z, %bb.s
  %.pn9.pn = phi { ptr, i32 } [ %i.cf, %bb.z ], [ %i.cx, %bb.ag ], [ %i.bq, %bb.s ], [ %i.cx, %bb.ah ], [ %i.cf, %bb.aa ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 301
  %i.ar = load i8, ptr %i.aq, align 1, !range !13, !noundef !8
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %bb.ap, label %.body

bb.i:                                             ; preds = %bb.e
  %i.at = extractvalue { ptr, ptr } %i.ah, 0      ; 4 uses
  %i.au = extractvalue { ptr, ptr } %i.ah, 1      ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.at) ]
  %i.av = load ptr, ptr %i.j, align 8, !nonnull !8, !align !12, !noundef !8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store atomic i8 0, ptr %i.aw release, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.au) ]
  %i.ax = load ptr, ptr %i.au, align 8, !invariant.load !8 ; 2 uses
  %.not.i = icmp eq ptr %i.ax, null
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void %i.ax(ptr noundef nonnull %i.at)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !range !9, !invariant.load !8 ; 2 uses
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bb = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.bc = load i64, ptr %i.bb, align 8, !range !10, !invariant.load !8
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.at, i64 noundef range(i64 1, -9223372036854775808) %i.az, i64 noundef range(i64 1, 536870913) %i.bc) #23
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.m:                                             ; preds = %bb.j
  %i.bd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !range !9, !invariant.load !8 ; 2 uses
  %i.bg = icmp eq i64 %i.bf, 0
  br i1 %i.bg, label %.body, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bh = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.bi = load i64, ptr %i.bh, align 8, !range !10, !invariant.load !8
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.at, i64 noundef range(i64 1, -9223372036854775808) %i.bf, i64 noundef range(i64 1, 536870913) %i.bi) #23
  br label %.body

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.ae, %bb.af, %bb.k, %bb.l
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 301
  store i8 0, ptr %i.bj, align 1
  br label %bb.g

bb.o:                                             ; preds = %bb.as, %bb.s, %bb.ap, %bb.aq
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

.body:                                            ; preds = %bb.m, %bb.n, %bb.ap, %.body34
  %.pn12.pn.pn = phi { ptr, i32 } [ %.pn9.pn, %.body34 ], [ %.pn9.pn, %bb.ap ], [ %i.bd, %bb.m ], [ %i.bd, %bb.n ] ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 301
  store i8 0, ptr %i.bl, align 1
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 299
  %i.bn = load i8, ptr %i.bm, align 1, !range !13, !noundef !8
  %i.bo = trunc nuw i8 %i.bn to i1
  br i1 %i.bo, label %bb.aq, label %bb.ak

bb.p:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #29
  unreachable

bb.q:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #29
  unreachable

bb.r:                                             ; preds = %bb.b, %bb.h
  %.sroa.8.0 = phi ptr [ %i.an, %bb.h ], [ undef, %bb.b ]
  %.sroa.0.0 = phi ptr [ %i.am, %bb.h ], [ undef, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 3 uses
  invoke void @_RNvXs_NtNtNtCs8CRAYtH5WmW_12futures_util6future6future12catch_unwindINtB4_11CatchUnwindINtNtNtCsbvkFyIu7lgC_4core5panic11unwind_safe16AssertUnwindSafeINtNtB1u_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB1u_6future6future6Futurep6OutputuNtNtB1u_6marker4SendEL_EEEEB3f_4pollCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bp, ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.t unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.val22 = load ptr, ptr %i.bp, align 8
  %i.br = getelementptr i8, ptr %0, i64 288
  %.val23 = load ptr, ptr %i.br, align 8, !nonnull !8, !align !12, !noundef !8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future12catch_unwind11CatchUnwindINtNtNtB4_5panic11unwind_safe16AssertUnwindSafeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr %.val22, ptr nonnull %.val23) #26
          to label %.body34 unwind label %bb.o

bb.t:                                             ; preds = %bb.r
  %i.bs = load i64, ptr %i.b, align 8, !range !14, !noundef !8
  %i.bt = trunc nuw i64 %i.bs to i1
  br i1 %i.bt, label %bb.u, label %bb.v

common.ret:                                       ; preds = %bb.ab, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBL_6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, %bb.u
  %storemerge = phi i8 [ 3, %bb.u ], [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBL_6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit ], [ 1, %bb.ab ]
  %common.ret.op = phi i1 [ true, %bb.u ], [ false, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBL_6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit ], [ false, %bb.ab ]
  store i8 %storemerge, ptr %i.e, align 1
  ret i1 %common.ret.op

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %common.ret

bb.v:                                             ; preds = %bb.t
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !noundef !8 ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8            ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.val24 = load ptr, ptr %i.bp, align 8          ; 5 uses
  %i.by = getelementptr i8, ptr %0, i64 288
  %.val25 = load ptr, ptr %i.by, align 8, !nonnull !8, !align !12, !noundef !8 ; 5 uses
  %i.bz = load ptr, ptr %.val25, align 8, !invariant.load !8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bz, null
  br i1 %.not.i.i.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val24) ]
  invoke void %i.bz(ptr noundef nonnull %.val24)
          to label %bb.x unwind label %bb.z

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.ca = getelementptr inbounds nuw i8, ptr %.val25, i64 8
  %i.cb = load i64, ptr %i.ca, align 8, !range !9, !invariant.load !8 ; 2 uses
  %i.cc = icmp eq i64 %i.cb, 0
  br i1 %i.cc, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future12catch_unwind11CatchUnwindINtNtNtB4_5panic11unwind_safe16AssertUnwindSafeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cd = getelementptr inbounds nuw i8, ptr %.val25, i64 16
  %i.ce = load i64, ptr %i.cd, align 8, !range !10, !invariant.load !8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val24) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val24, i64 noundef range(i64 1, -9223372036854775808) %i.cb, i64 noundef range(i64 1, 536870913) %i.ce) #23
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future12catch_unwind11CatchUnwindINtNtNtB4_5panic11unwind_safe16AssertUnwindSafeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.z:                                             ; preds = %bb.w
  %i.cf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.val25, i64 8
  %i.ch = load i64, ptr %i.cg, align 8, !range !9, !invariant.load !8 ; 2 uses
  %i.ci = icmp eq i64 %i.ch, 0
  br i1 %i.ci, label %.body34, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cj = getelementptr inbounds nuw i8, ptr %.val25, i64 16
  %i.ck = load i64, ptr %i.cj, align 8, !range !10, !invariant.load !8
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val24, i64 noundef range(i64 1, -9223372036854775808) %i.ch, i64 noundef range(i64 1, 536870913) %i.ck) #23
  br label %.body34

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future12catch_unwind11CatchUnwindINtNtNtB4_5panic11unwind_safe16AssertUnwindSafeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.y, %bb.x
  %.not = icmp eq ptr %i.bv, null
  br i1 %.not, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future12catch_unwind11CatchUnwindINtNtNtB4_5panic11unwind_safe16AssertUnwindSafeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 301
  store i8 0, ptr %i.cl, align 1
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 299
  store i8 0, ptr %i.cm, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 300
  store i8 0, ptr %i.cn, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %common.ret

bb.ac:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future12catch_unwind11CatchUnwindINtNtNtB4_5panic11unwind_safe16AssertUnwindSafeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.cp = load ptr, ptr %i.co, align 8, !nonnull !8, !align !12, !noundef !8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  store atomic i8 0, ptr %i.cq release, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bx) ]
  %i.cr = load ptr, ptr %i.bx, align 8, !invariant.load !8 ; 2 uses
  %.not.i36 = icmp eq ptr %i.cr, null
  br i1 %.not.i36, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  invoke void %i.cr(ptr noundef nonnull %i.bv)
          to label %bb.ae unwind label %bb.ag

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.ct = load i64, ptr %i.cs, align 8, !range !9, !invariant.load !8 ; 2 uses
  %i.cu = icmp eq i64 %i.ct, 0
  br i1 %i.cu, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.cw = load i64, ptr %i.cv, align 8, !range !10, !invariant.load !8
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bv, i64 noundef range(i64 1, -9223372036854775808) %i.ct, i64 noundef range(i64 1, 536870913) %i.cw) #23
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.ag:                                            ; preds = %bb.ad
  %i.cx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.cz = load i64, ptr %i.cy, align 8, !range !9, !invariant.load !8 ; 2 uses
  %i.da = icmp eq i64 %i.cz, 0
  br i1 %i.da, label %.body34, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.db = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.dc = load i64, ptr %i.db, align 8, !range !10, !invariant.load !8
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bv, i64 noundef range(i64 1, -9223372036854775808) %i.cz, i64 noundef range(i64 1, 536870913) %i.dc) #23
  br label %.body34

bb.ai:                                            ; preds = %bb.aj, %bb.g
  store i8 0, ptr %i.aj, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
end_hunk_0
