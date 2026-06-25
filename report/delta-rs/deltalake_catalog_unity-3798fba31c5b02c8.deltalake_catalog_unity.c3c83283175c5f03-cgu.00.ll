inline.NumInlined: 1642
inline.NumDeleted: 746
begin_hunk_0_@_RNCNvMs4_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtB7_9BaseCacheNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsE21retry_interrupted_ops0B1J_:bb.a
  br label %bb.h

.body:                                            ; preds = %bb.i, %bb.m, %bb.p, %bb.s
  %.pn19 = phi { ptr, i32 } [ %i.y, %bb.s ], [ %i.v, %bb.p ], [ %i.r, %bb.i ], [ %i.u, %bb.m ] ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.dh = load i8, ptr %i.dg, align 8, !range !243, !noundef !4
  %i.di = trunc nuw i8 %i.dh to i1
  br i1 %i.di, label %bb.bn, label %bb.bk

bb.bk:                                            ; preds = %bb.bn, %.body, %bb.bh
  %.pn19.pn = phi { ptr, i32 } [ %.pn19, %bb.bn ], [ %.pn19, %.body ], [ %.pn11, %bb.bh ]
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i8 0, ptr %i.dj, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.ba

bb.bl:                                            ; preds = %bb.bb
  %i.dk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.ba

bb.bm:                                            ; preds = %bb.x, %bb.u
  %.pn23.pn = phi { ptr, i32 } [ %.pn23, %bb.u ], [ %i.ad, %bb.x ]
  store i8 2, ptr %i.h, align 4
  resume { ptr, i32 } %.pn23.pn

bb.bn:                                            ; preds = %.body
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7WriteOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEB2d_(ptr noalias noundef align 8 dereferenceable(40) %i.d) #31
          to label %bb.bk unwind label %bb.av

bb.bo:                                            ; preds = %bb.ba
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 128
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs95DO3lnzZ3L_4moka6future11CancelGuardNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEB24_(ptr noalias noundef align 8 dereferenceable(80) %i.dl) #31
          to label %bb.u unwind label %bb.av
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNCNvMse_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtB7_5InnerNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE13notify_upsert0B1F_(ptr noundef nonnull align 8 %0, ptr noalias noundef align 8 dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [272 x i8], align 16              ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [256 x i8], align 16              ; 11 uses
  %i.d = alloca [8 x i8], align 8                 ; 11 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 577 ; 3 uses
  %i.f = load i8, ptr %i.e, align 1, !range !38, !noundef !4
  switch i8 %i.f, label %default.unreachable34 [
    i8 0, label %.thread
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 3, label %bb.f
  ]

default.unreachable34:                            ; preds = %bb.f, %bb.a
  unreachable

.thread:                                          ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 579
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 578
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 256
  %.val = load ptr, ptr %i.i, align 8, !nonnull !4, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 16
  store i8 0, ptr %i.g, align 1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !4, !noundef !4
  store i8 0, ptr %i.h, align 2
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.n = load i8, ptr %i.m, align 8, !range !38, !noundef !4
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 272
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.o, ptr noundef nonnull align 8 dereferenceable(256) %0, i64 256, i1 false)
  %.sroa.718.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 528
  store ptr %i.j, ptr %.sroa.718.0..sroa_idx, align 8
  %.sroa.819.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 536
  store ptr %i.l, ptr %.sroa.819.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 568
  store i8 %i.n, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 569
  store i8 0, ptr %.sroa.11.0..sroa_idx, align 1
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 569
  br label %bb.h

bb.b:                                             ; preds = %.body, %bb.ba
  %.pn7 = phi { ptr, i32 } [ %i.fb, %bb.ba ], [ %.pn5, %.body ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2194)
  call void @llvm.experimental.noalias.scope.decl(metadata !2197)
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !2200, !nonnull !4, !noundef !4
  %i.t = atomicrmw sub ptr %i.s, i64 1 release, align 8, !noalias !2200
  %i.u = icmp eq i64 %i.t, 1
  br i1 %i.u, label %bb.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtCs95DO3lnzZ3L_4moka6future8notifier15RemovalNotifierNtNtBL_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB2A_.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtCs95DO3lnzZ3L_4moka6future8notifier15RemovalNotifierNtNtB7_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE9drop_slowB22_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.r) #33
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtCs95DO3lnzZ3L_4moka6future8notifier15RemovalNotifierNtNtBL_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB2A_.exit unwind label %bb.bf

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @84) #34
  unreachable

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @84) #34
  unreachable

bb.f:                                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 569
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !range !38, !noalias !2201
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 569 ; 2 uses
  switch i8 %.pre, label %default.unreachable34 [
    i8 0, label %bb.h
    i8 1, label %bb.u
    i8 2, label %bb.v
    i8 3, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2201
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2201
  br label %bb.w

bb.h:                                             ; preds = %.thread, %bb.f
  %i.x = phi ptr [ %i.q, %.thread ], [ %i.w, %bb.f ] ; 6 uses
  %i.y = phi ptr [ %i.p, %.thread ], [ %i.v, %bb.f ] ; 7 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 572 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 571 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 573 ; 2 uses
  store i8 0, ptr %i.ab, align 1, !noalias !2201
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.ae = load ptr, ptr %i.ad, align 8, !noalias !2201, !nonnull !4, !align !18, !noundef !4 ; 2 uses
  store ptr %i.ae, ptr %i.ac, align 8, !noalias !2201
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2201
  store i8 1, ptr %i.z, align 4, !noalias !2201
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.ag = load ptr, ptr %i.af, align 8, !noalias !2201, !nonnull !4, !noundef !4
  store ptr %i.ag, ptr %i.d, align 8, !noalias !2201
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2201
  store i8 1, ptr %i.aa, align 1, !noalias !2201
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.c, ptr noundef nonnull align 8 dereferenceable(256) %i.y, i64 256, i1 false), !noalias !2201
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 570 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.aj = load i8, ptr %i.ai, align 8, !range !38, !noalias !2201, !noundef !4
  store i8 %i.aj, ptr %i.ah, align 2, !noalias !2201
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.al = load atomic i8, ptr %i.ak acquire, align 8
  %.not55.i = icmp eq i8 %i.al, 0
  br i1 %.not55.i, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.am = load ptr, ptr %i.ac, align 8, !noalias !2201, !nonnull !4, !align !18, !noundef !4 ; 2 uses
  store i8 0, ptr %i.z, align 4, !noalias !2201
  store i8 0, ptr %i.aa, align 1, !noalias !2201
  %i.an = load ptr, ptr %i.d, align 8, !noalias !2201, !nonnull !4, !noundef !4 ; 2 uses
  %.sroa.02.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.10.0..sroa_idx9.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2204
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %.sroa.10.0..sroa_idx9.i.i, ptr noundef nonnull align 8 dereferenceable(240) %.sroa.02.sroa.3.0..sroa_idx.i, i64 240, i1 false), !noalias !2201
  %i.ao = load <2 x ptr>, ptr %i.c, align 16, !noalias !2201
  store <2 x ptr> %i.ao, ptr %i.a, align 16, !noalias !2212
  %i.ap = load i8, ptr %i.ah, align 2, !range !38, !noalias !2204, !noundef !4 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  store ptr %i.an, ptr %i.aq, align 16, !noalias !2204
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 264
  store i8 %i.ap, ptr %i.ar, align 8, !noalias !2204
  %i.as = load ptr, ptr %i.am, align 8, !noalias !2213, !nonnull !4, !noundef !4
  %i.at = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !noalias !2213, !nonnull !4, !align !18, !noundef !4
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 40
  %i.aw = load ptr, ptr %i.av, align 8, !invariant.load !4, !noalias !2213, !nonnull !4
  %i.ax = invoke { ptr, ptr } %i.aw(ptr noundef nonnull %i.as, ptr noundef nonnull %i.an, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(256) %i.a, i8 noundef %i.ap) #35
          to label %bb.m unwind label %bb.j, !noalias !2214, !inline_history !2215 ; 2 uses

bb.j:                                             ; preds = %bb.i
  %i.ay = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  %i.az = extractvalue { ptr, i32 } %i.ay, 0
  %i.ba = invoke { ptr, ptr } @_RNvNvNtCs2pqxYH9ZEk8_3std9panicking12catch_unwind7cleanup(ptr noundef %i.az)
          to label %bb.n unwind label %bb.k, !noalias !2214 ; 2 uses

bb.k:                                             ; preds = %bb.j
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #32, !noalias !2214
  unreachable

bb.l:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, %bb.h
  %i.bc = phi ptr [ %i.ce, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i ], [ %i.x, %bb.h ] ; 3 uses
  %i.bd = phi ptr [ %i.cf, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i ], [ %i.y, %bb.h ] ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 571 ; 2 uses
  %i.bf = load i8, ptr %i.be, align 1, !range !243, !noalias !2201, !noundef !4
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %bb.an, label %bb.am

bb.m:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2204
  %i.bh = extractvalue { ptr, ptr } %i.ax, 0      ; 3 uses
  %i.bi = extractvalue { ptr, ptr } %i.ax, 1      ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bh) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bi) ]
  store i8 0, ptr %i.ab, align 1, !noalias !2201
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 552
  store ptr %i.bh, ptr %i.bj, align 8, !noalias !2201
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 560
  store ptr %i.bi, ptr %i.bk, align 8, !noalias !2201
  br label %bb.w

.body34.i:                                        ; preds = %bb.al, %bb.ak, %bb.ae, %bb.ad, %bb.x
  %.pn9.pn.i = phi { ptr, i32 } [ %i.dg, %bb.ad ], [ %i.dy, %bb.ak ], [ %i.cr, %bb.x ], [ %i.dy, %bb.al ], [ %i.dg, %bb.ae ] ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 573
  %i.bm = load i8, ptr %i.bl, align 1, !range !243, !noalias !2201, !noundef !4
  %i.bn = trunc nuw i8 %i.bm to i1
  br i1 %i.bn, label %bb.at, label %.body.i

bb.n:                                             ; preds = %bb.j
  %i.bo = extractvalue { ptr, ptr } %i.ba, 0      ; 4 uses
  %i.bp = extractvalue { ptr, ptr } %i.ba, 1      ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bo) ]
  %i.bq = load ptr, ptr %i.ac, align 8, !noalias !2201, !nonnull !4, !align !18, !noundef !4
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  store atomic i8 0, ptr %i.br release, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bp) ]
  %i.bs = load ptr, ptr %i.bp, align 8, !invariant.load !4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bs, null
  br i1 %.not.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  invoke void %i.bs(ptr noundef nonnull %i.bo)
          to label %bb.p unwind label %bb.r

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.bu = load i64, ptr %i.bt, align 8, !range !15, !invariant.load !4 ; 2 uses
  %i.bv = icmp eq i64 %i.bu, 0
  br i1 %i.bv, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.bx = load i64, ptr %i.bw, align 8, !range !16, !invariant.load !4
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bo, i64 noundef range(i64 1, 0) %i.bu, i64 noundef range(i64 1, 536870913) %i.bx) #24
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i

bb.r:                                             ; preds = %bb.o
  %i.by = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.ca = load i64, ptr %i.bz, align 8, !range !15, !invariant.load !4 ; 2 uses
  %i.cb = icmp eq i64 %i.ca, 0
  br i1 %i.cb, label %.body.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.cd = load i64, ptr %i.cc, align 8, !range !16, !invariant.load !4
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bo, i64 noundef range(i64 1, 0) %i.ca, i64 noundef range(i64 1, 536870913) %i.cd) #24
  br label %.body.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %bb.aj, %bb.ai, %bb.q, %bb.p
  %i.ce = phi ptr [ %i.co, %bb.aj ], [ %i.co, %bb.ai ], [ %i.x, %bb.q ], [ %i.x, %bb.p ]
  %i.cf = phi ptr [ %i.cp, %bb.aj ], [ %i.cp, %bb.ai ], [ %i.y, %bb.q ], [ %i.y, %bb.p ]
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 573
  store i8 0, ptr %i.cg, align 1, !noalias !2201
  br label %bb.l

bb.t:                                             ; preds = %bb.aw, %bb.au, %bb.at, %bb.x
  %i.ch = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

.body.i:                                          ; preds = %bb.at, %bb.s, %bb.r, %.body34.i
  %i.ci = phi ptr [ %i.co, %.body34.i ], [ %i.co, %bb.at ], [ %i.x, %bb.r ], [ %i.x, %bb.s ] ; 2 uses
  %i.cj = phi ptr [ %i.cp, %.body34.i ], [ %i.cp, %bb.at ], [ %i.y, %bb.r ], [ %i.y, %bb.s ] ; 2 uses
  %.pn12.pn.pn.i = phi { ptr, i32 } [ %.pn9.pn.i, %.body34.i ], [ %.pn9.pn.i, %bb.at ], [ %i.by, %bb.r ], [ %i.by, %bb.s ] ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 573
  store i8 0, ptr %i.ck, align 1, !noalias !2201
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 571
  %i.cm = load i8, ptr %i.cl, align 1, !range !243, !noalias !2201, !noundef !4
  %i.cn = trunc nuw i8 %i.cm to i1
  br i1 %i.cn, label %bb.au, label %bb.ao

bb.u:                                             ; preds = %bb.f
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @47) #34
          to label %.noexc11 unwind label %bb.ax

.noexc11:                                         ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %bb.f
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @47) #34
          to label %.noexc12 unwind label %bb.ax

.noexc12:                                         ; preds = %bb.v
  unreachable

bb.w:                                             ; preds = %bb.m, %bb.g
  %i.co = phi ptr [ %i.x, %bb.m ], [ %i.w, %bb.g ] ; 6 uses
  %i.cp = phi ptr [ %i.y, %bb.m ], [ %i.v, %bb.g ] ; 5 uses
  %.sroa.8.0.i = phi ptr [ %i.bi, %bb.m ], [ undef, %bb.g ]
  %.sroa.0.0.i = phi ptr [ %i.bh, %bb.m ], [ undef, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2201
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 552 ; 3 uses
  invoke void @_RNvXs_NtNtNtCs8CRAYtH5WmW_12futures_util6future6future12catch_unwindINtB4_11CatchUnwindINtNtNtCsbvkFyIu7lgC_4core5panic11unwind_safe16AssertUnwindSafeINtNtB1u_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB1u_6future6future6Futurep6OutputuNtNtB1u_6marker4SendEL_EEEEB3f_4pollCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.cq, ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.y unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2201
  %.val30.i = load ptr, ptr %i.cq, align 8, !noalias !2201
  %i.cs = getelementptr i8, ptr %0, i64 560
  %.val31.i = load ptr, ptr %i.cs, align 8, !noalias !2201, !nonnull !4, !align !18, !noundef !4
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future12catch_unwind11CatchUnwindINtNtNtB4_5panic11unwind_safe16AssertUnwindSafeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr %.val30.i, ptr nonnull %.val31.i) #31
          to label %.body34.i unwind label %bb.t

bb.y:                                             ; preds = %bb.w
  %i.ct = load i64, ptr %i.b, align 8, !range !19, !noalias !2201, !noundef !4
  %i.cu = trunc nuw i64 %i.ct to i1
  br i1 %i.cu, label %bb.ay, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cv = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8, !noalias !2201, !noundef !4 ; 4 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.cy = load ptr, ptr %i.cx, align 8, !noalias !2201 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2201
  %.val32.i = load ptr, ptr %i.cq, align 8, !noalias !2201 ; 5 uses
  %i.cz = getelementptr i8, ptr %0, i64 560
  %.val33.i = load ptr, ptr %i.cz, align 8, !noalias !2201, !nonnull !4, !align !18, !noundef !4 ; 5 uses
  %i.da = load ptr, ptr %.val33.i, align 8, !invariant.load !4 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.da, null
  br i1 %.not.i.i.i.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val32.i) ]
  invoke void %i.da(ptr noundef nonnull %.val32.i)
          to label %bb.ab unwind label %bb.ad

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.db = getelementptr inbounds nuw i8, ptr %.val33.i, i64 8
  %i.dc = load i64, ptr %i.db, align 8, !range !15, !invariant.load !4 ; 2 uses
  %i.dd = icmp eq i64 %i.dc, 0
  br i1 %i.dd, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future12catch_unwind11CatchUnwindINtNtNtB4_5panic11unwind_safe16AssertUnwindSafeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.de = getelementptr inbounds nuw i8, ptr %.val33.i, i64 16
  %i.df = load i64, ptr %i.de, align 8, !range !16, !invariant.load !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val32.i) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val32.i, i64 noundef range(i64 1, 0) %i.dc, i64 noundef range(i64 1, 536870913) %i.df) #24
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future12catch_unwind11CatchUnwindINtNtNtB4_5panic11unwind_safe16AssertUnwindSafeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i

bb.ad:                                            ; preds = %bb.aa
  %i.dg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.val33.i, i64 8
  %i.di = load i64, ptr %i.dh, align 8, !range !15, !invariant.load !4 ; 2 uses
  %i.dj = icmp eq i64 %i.di, 0
  br i1 %i.dj, label %.body34.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dk = getelementptr inbounds nuw i8, ptr %.val33.i, i64 16
  %i.dl = load i64, ptr %i.dk, align 8, !range !16, !invariant.load !4
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val32.i, i64 noundef range(i64 1, 0) %i.di, i64 noundef range(i64 1, 536870913) %i.dl) #24
  br label %.body34.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future12catch_unwind11CatchUnwindINtNtNtB4_5panic11unwind_safe16AssertUnwindSafeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %bb.ac, %bb.ab
  %.not.i = icmp eq ptr %i.cw, null
  br i1 %.not.i, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future12catch_unwind11CatchUnwindINtNtNtB4_5panic11unwind_safe16AssertUnwindSafeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 573
  store i8 0, ptr %i.dm, align 1, !noalias !2201
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 571
  store i8 0, ptr %i.dn, align 1, !noalias !2201
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2201
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 572
  store i8 0, ptr %i.do, align 4, !noalias !2201
  br label %bb.az

bb.ag:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future12catch_unwind11CatchUnwindINtNtNtB4_5panic11unwind_safe16AssertUnwindSafeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.dq = load ptr, ptr %i.dp, align 8, !noalias !2201, !nonnull !4, !align !18, !noundef !4
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  store atomic i8 0, ptr %i.dr release, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cy) ]
  %i.ds = load ptr, ptr %i.cy, align 8, !invariant.load !4 ; 2 uses
  %.not.i36.i = icmp eq ptr %i.ds, null
  br i1 %.not.i36.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  invoke void %i.ds(ptr noundef nonnull %i.cw)
          to label %bb.ai unwind label %bb.ak

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.du = load i64, ptr %i.dt, align 8, !range !15, !invariant.load !4 ; 2 uses
  %i.dv = icmp eq i64 %i.du, 0
  br i1 %i.dv, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dw = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
end_hunk_0
begin_hunk_1_@_RNCNvMse_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtB7_5InnerNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE13notify_upsert0B1F_:bb.a
  %i.em = trunc nuw i8 %i.el to i1
  br i1 %i.em, label %bb.av, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBL_6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit42.i

bb.ap:                                            ; preds = %bb.an
  %i.en = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBL_6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %bb.ar, %bb.aq, %bb.am
  store i8 0, ptr %i.ee, align 4, !noalias !2201
  br label %bb.az

bb.aq:                                            ; preds = %bb.am
  call void @llvm.experimental.noalias.scope.decl(metadata !2216)
  call void @llvm.experimental.noalias.scope.decl(metadata !2219)
  %i.eo = load ptr, ptr %i.d, align 8, !alias.scope !2222, !noalias !2201, !nonnull !4, !noundef !4
  %i.ep = atomicrmw sub ptr %i.eo, i64 1 release, align 8, !noalias !2222
  %i.eq = icmp eq i64 %i.ep, 1
  br i1 %i.eq, label %bb.ar, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBL_6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i

bb.ar:                                            ; preds = %bb.aq
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtB7_6string6StringE9drop_slowCs8VI8w5SIoU4_15datafusion_expr(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d) #33
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBL_6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i unwind label %bb.as

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBL_6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit42.i: ; preds = %bb.aw, %bb.av, %bb.as, %bb.ao
  %i.er = phi ptr [ %i.bc, %bb.as ], [ %i.eh, %bb.ao ], [ %i.eh, %bb.aw ], [ %i.eh, %bb.av ]
  %i.es = phi ptr [ %i.bd, %bb.as ], [ %i.ei, %bb.ao ], [ %i.ei, %bb.aw ], [ %i.ei, %bb.av ]
  %.pn19.i = phi { ptr, i32 } [ %i.eu, %bb.as ], [ %.pn17.i, %bb.ao ], [ %.pn17.i, %bb.aw ], [ %.pn17.i, %bb.av ]
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 572
  store i8 0, ptr %i.et, align 4, !noalias !2201
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2201
  store i8 2, ptr %i.er, align 1, !noalias !2201
  br label %.body

bb.as:                                            ; preds = %bb.ar
  %i.eu = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBL_6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit42.i

bb.at:                                            ; preds = %.body34.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr %.sroa.0.0.i, ptr %.sroa.8.0.i) #31
          to label %.body.i unwind label %bb.t

bb.au:                                            ; preds = %.body.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEBK_(ptr noalias noundef align 8 dereferenceable(256) %i.c) #31
          to label %bb.ao unwind label %bb.t

bb.av:                                            ; preds = %bb.ao
  call void @llvm.experimental.noalias.scope.decl(metadata !2223)
  call void @llvm.experimental.noalias.scope.decl(metadata !2226)
  %i.ev = load ptr, ptr %i.d, align 8, !alias.scope !2229, !noalias !2201, !nonnull !4, !noundef !4
  %i.ew = atomicrmw sub ptr %i.ev, i64 1 release, align 8, !noalias !2229
  %i.ex = icmp eq i64 %i.ew, 1
  br i1 %i.ex, label %bb.aw, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBL_6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit42.i

bb.aw:                                            ; preds = %bb.av
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtB7_6string6StringE9drop_slowCs8VI8w5SIoU4_15datafusion_expr(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d) #33
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBL_6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit42.i unwind label %bb.t

bb.ax:                                            ; preds = %bb.v, %bb.u
  %i.ey = landingpad { ptr, i32 }
          cleanup
  br label %.body

common.ret:                                       ; preds = %bb.bb, %bb.bc, %bb.ay
  %common.ret.op.i23 = phi i1 [ true, %bb.ay ], [ false, %bb.bc ], [ false, %bb.bb ]
  %storemerge = phi i8 [ 3, %bb.ay ], [ 1, %bb.bc ], [ 1, %bb.bb ]
  store i8 %storemerge, ptr %i.e, align 1
  ret i1 %common.ret.op.i23

bb.ay:                                            ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2201
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2201
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2201
  store i8 3, ptr %i.co, align 1, !noalias !2201
  br label %common.ret

bb.az:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBL_6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, %bb.af
  %i.ez = phi ptr [ %i.bc, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBL_6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i ], [ %i.co, %bb.af ]
  %i.fa = phi ptr [ %i.bd, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBL_6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i ], [ %i.cp, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2201
  store i8 1, ptr %i.ez, align 1, !noalias !2201
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtNtCs95DO3lnzZ3L_4moka6future8notifierINtBL_15RemovalNotifierNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsE6notify0EB2r_(ptr noundef nonnull align 8 %i.fa)
          to label %bb.bb unwind label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.fb = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.bb:                                            ; preds = %bb.az
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2230)
  call void @llvm.experimental.noalias.scope.decl(metadata !2233)
  %i.fd = load ptr, ptr %i.fc, align 8, !alias.scope !2236, !nonnull !4, !noundef !4
  %i.fe = atomicrmw sub ptr %i.fd, i64 1 release, align 8, !noalias !2236
  %i.ff = icmp eq i64 %i.fe, 1
  br i1 %i.ff, label %bb.bc, label %common.ret

bb.bc:                                            ; preds = %bb.bb
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtCs95DO3lnzZ3L_4moka6future8notifier15RemovalNotifierNtNtB7_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE9drop_slowB22_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.fc) #33
          to label %common.ret unwind label %bb.be

bb.bd:                                            ; preds = %bb.bi, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBL_6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, %bb.be
  %.pn9 = phi { ptr, i32 } [ %i.fg, %bb.be ], [ %.pn7, %bb.bi ], [ %.pn7, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBL_6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit ]
  store i8 2, ptr %i.e, align 1
  resume { ptr, i32 } %.pn9

bb.be:                                            ; preds = %bb.bc
  %i.fg = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

.body:                                            ; preds = %bb.ax, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBL_6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit42.i
  %i.fh = phi ptr [ %i.es, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBL_6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit42.i ], [ %i.v, %bb.ax ]
  %.pn5 = phi { ptr, i32 } [ %.pn19.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBL_6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit42.i ], [ %i.ey, %bb.ax ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtNtCs95DO3lnzZ3L_4moka6future8notifierINtBL_15RemovalNotifierNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsE6notify0EB2r_(ptr noundef nonnull align 8 %i.fh) #31
          to label %bb.b unwind label %bb.bf

bb.bf:                                            ; preds = %bb.bh, %bb.c, %bb.bi, %.body
  %i.fi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtCs95DO3lnzZ3L_4moka6future8notifier15RemovalNotifierNtNtBL_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB2A_.exit: ; preds = %bb.b, %bb.c
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 579
  %i.fk = load i8, ptr %i.fj, align 1, !range !243, !noundef !4
  %i.fl = trunc nuw i8 %i.fk to i1
  br i1 %i.fl, label %bb.bg, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBL_6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBL_6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.bg, %bb.bh, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtCs95DO3lnzZ3L_4moka6future8notifier15RemovalNotifierNtNtBL_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB2A_.exit
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 578
  %i.fn = load i8, ptr %i.fm, align 2, !range !243, !noundef !4
  %i.fo = trunc nuw i8 %i.fn to i1
  br i1 %i.fo, label %bb.bi, label %bb.bd

bb.bg:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtCs95DO3lnzZ3L_4moka6future8notifier15RemovalNotifierNtNtBL_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB2A_.exit
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2237)
  call void @llvm.experimental.noalias.scope.decl(metadata !2240)
  %i.fq = load ptr, ptr %i.fp, align 8, !alias.scope !2243, !nonnull !4, !noundef !4
  %i.fr = atomicrmw sub ptr %i.fq, i64 1 release, align 8, !noalias !2243
  %i.fs = icmp eq i64 %i.fr, 1
  br i1 %i.fs, label %bb.bh, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBL_6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.bh:                                            ; preds = %bb.bg
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtB7_6string6StringE9drop_slowCs8VI8w5SIoU4_15datafusion_expr(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.fp) #33
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBL_6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.bf

bb.bi:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBL_6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEBK_(ptr noalias noundef align 8 dereferenceable(256) %0) #31
          to label %bb.bd unwind label %bb.bf
}

; Function Attrs: cold inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss0_0CsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, i16 noundef range(i16 1, 0) %2, i1 noundef zeroext %3) unnamed_addr #2 personality ptr @rust_eh_personality {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2244)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2247)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.o = getelementptr i8, ptr %i.n, i64 %i.g
  call void @_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E3newCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull readonly %i.n, ptr noundef nonnull readonly %i.o, ptr noundef nonnull readonly %i.e, ptr noundef nonnull readonly %i.i)
  %.sroa.0.0.copyload.i.us = load ptr, ptr %i.a, align 8, !noalias !2249 ; 2 uses
  %.sroa.522.0.copyload.i.us = load ptr, ptr %.sroa.522.0..sroa_idx.i, align 8, !noalias !2249 ; 2 uses
  %.sroa.623.0.copyload.i.us = load i64, ptr %.sroa.623.0..sroa_idx.i, align 8, !noalias !2249 ; 3 uses
  %.sroa.8.0.copyload.i.us = load i64, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !2249 ; 2 uses
  %umax.i.us = tail call i64 @llvm.umax.i64(i64 %.sroa.623.0.copyload.i.us, i64 %.sroa.8.0.copyload.i.us)
  %exitcond.not.i.us18.not = icmp ult i64 %.sroa.623.0.copyload.i.us, %.sroa.8.0.copyload.i.us
  br i1 %exitcond.not.i.us18.not, label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.us.preheader, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread6

_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.us.preheader: ; preds = %.preheader.split.us
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.us) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.522.0.copyload.i.us) ]
  br label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.us

bb.b:                                             ; preds = %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.us
  %i.p = add i64 %.sroa.623.0.i.us19, 1           ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %i.p, %umax.i.us
  br i1 %exitcond.not.i.us, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread6, label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.us

_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.us: ; preds = %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.us.preheader, %bb.b
  %.sroa.623.0.i.us19 = phi i64 [ %i.p, %bb.b ], [ %.sroa.623.0.copyload.i.us, %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.us.preheader ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.us, i64 %.sroa.623.0.i.us19
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.522.0.copyload.i.us, i64 %.sroa.623.0.i.us19
  %i.s = load i8, ptr %i.q, align 1, !noundef !4
  %i.t = load i8, ptr %i.r, align 1, !noundef !4
  %.not21.i.us = icmp eq i8 %i.s, %i.t
  br i1 %.not21.i.us, label %bb.b, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us

_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us: ; preds = %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.us
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2244)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2247)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ac = getelementptr i8, ptr %i.ab, i64 %i.g
  %i.ad = getelementptr i8, ptr %i.ac, i64 -4     ; 3 uses
  %i.ae = icmp ult ptr %i.ab, %i.ad
  br i1 %i.ae, label %.lr.ph.i, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit

.lr.ph.i:                                         ; preds = %.preheader.split, %bb.c
  %.sroa.08.030.i = phi ptr [ %i.ag, %bb.c ], [ %i.e, %.preheader.split ] ; 2 uses
  %.sroa.04.029.i = phi ptr [ %i.af, %bb.c ], [ %i.ab, %.preheader.split ] ; 2 uses
  %.sroa.011.0.copyload.i = load i32, ptr %.sroa.04.029.i, align 1, !alias.scope !2244, !noalias !2247
  %.sroa.013.0.copyload.i = load i32, ptr %.sroa.08.030.i, align 1, !alias.scope !2247, !noalias !2244
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
  %.sroa.015.0.copyload.i = load i32, ptr %i.ad, align 1, !alias.scope !2244, !noalias !2247
  %.sroa.017.0.copyload.i = load i32, ptr %i.j, align 1, !alias.scope !2247, !noalias !2244
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
define internal void @_RNCNvXs7_NtCsgO8S5jLFugx_23deltalake_catalog_unity10datafusionNtB7_19UnitySchemaProviderNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProvider5table0B9_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [96 x i8], align 16               ; 6 uses
  %.sroa.7.i.i.i = alloca [80 x i8], align 16     ; 6 uses
  %.sroa.3.sroa.3.i.i.i = alloca [64 x i8], align 8 ; 7 uses
  %.sroa.5.i.i.i = alloca [16 x i8], align 8      ; 6 uses
  %i.c = alloca [96 x i8], align 8                ; 9 uses
  %i.d = alloca [96 x i8], align 8                ; 13 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %i.f = alloca [24 x i8], align 8                ; 8 uses
  %.sroa.9185.i.i = alloca [80 x i8], align 16    ; 10 uses
  %i.g = alloca [96 x i8], align 16               ; 8 uses
  %.sroa.9158.i.i = alloca [80 x i8], align 16    ; 6 uses
  %i.h = alloca [88 x i8], align 8                ; 10 uses
  %i.i = alloca [96 x i8], align 16               ; 7 uses
  %i.j = alloca [96 x i8], align 16               ; 15 uses
  %i.k = alloca [128 x i8], align 8               ; 6 uses
  %i.l = alloca [128 x i8], align 8               ; 5 uses
  %i.m = alloca [24 x i8], align 8                ; 17 uses
  %i.n = alloca [96 x i8], align 8                ; 15 uses
  %.sroa.3.sroa.2.i.i = alloca [64 x i8], align 8 ; 7 uses
  %.sroa.3.sroa.3.i.i = alloca [16 x i8], align 8 ; 6 uses
  %i.o = alloca [96 x i8], align 8                ; 9 uses
  %i.p = alloca [17 x i8], align 1                ; 5 uses
  %.sroa.14.i = alloca [80 x i8], align 16        ; 8 uses
  %.sroa.15.i = alloca [16 x i8], align 16        ; 6 uses
  %.sroa.12100.i = alloca [80 x i8], align 16     ; 6 uses
  %.sroa.374.sroa.2.i = alloca [80 x i8], align 8 ; 6 uses
  %i.q = alloca [96 x i8], align 16               ; 8 uses
  %.sroa.3.sroa.2.i = alloca [80 x i8], align 8   ; 6 uses
  %i.r = alloca [96 x i8], align 16               ; 10 uses
  %.sroa.6.sroa.9.i = alloca [80 x i8], align 8   ; 8 uses
  %.sroa.7123.i = alloca [16 x i8], align 8       ; 4 uses
  %i.s = alloca [128 x i8], align 16              ; 13 uses
  %i.t = alloca [336 x i8], align 8               ; 9 uses
  %i.u = alloca [96 x i8], align 16               ; 4 uses
  %i.v = alloca [72 x i8], align 8                ; 5 uses
  %i.w = alloca [8 x i8], align 8                 ; 4 uses
  %i.x = alloca [272 x i8], align 8               ; 6 uses
  %i.y = alloca [24 x i8], align 8                ; 5 uses
  %i.z = alloca [24 x i8], align 8                ; 5 uses
  %i.aa = alloca [24 x i8], align 8               ; 6 uses
  %.sroa.365.i.i.i = alloca [16 x i8], align 8    ; 7 uses
  %i.ab = alloca [24 x i8], align 8               ; 7 uses
  %.sroa.3.i.i.i = alloca [16 x i8], align 8      ; 7 uses
  %i.ac = alloca [24 x i8], align 8               ; 7 uses
  %i.ad = alloca [32 x i8], align 8               ; 9 uses
  %.sroa.36.i.sroa.5.i = alloca [256 x i8], align 8 ; 7 uses
  %i.ae = alloca [272 x i8], align 8              ; 8 uses
  %.sroa.3.i.sroa.4.i = alloca [256 x i8], align 8 ; 6 uses
  %.sroa.935.i.sroa.7.i = alloca [256 x i8], align 8 ; 7 uses
  %i.af = alloca [40 x i8], align 8               ; 7 uses
  %i.ag = alloca [256 x i8], align 8              ; 11 uses
  %.sroa.925.sroa.6.i = alloca [256 x i8], align 8 ; 6 uses
  %i.ah = alloca [72 x i8], align 8               ; 11 uses
  %i.ai = alloca [128 x i8], align 8              ; 7 uses
  %.sroa.431.i.i.i = alloca [16 x i8], align 8    ; 6 uses
  %.sroa.524.i.i.i = alloca [104 x i8], align 8   ; 6 uses
  %i.aj = alloca [128 x i8], align 8              ; 9 uses
  %i.ak = alloca [128 x i8], align 8              ; 8 uses
  %i.al = alloca [32 x i8], align 8               ; 9 uses
  %.sroa.631.i.sroa.8.i = alloca [7 x i8], align 1 ; 6 uses
  %.sroa.631.i.sroa.9.i = alloca [24 x i8], align 8 ; 6 uses
  %.sroa.631.i.sroa.10.i = alloca [168 x i8], align 8 ; 6 uses
  %i.am = alloca [248 x i8], align 8              ; 14 uses
  %.sroa.1021.i.i = alloca [16 x i8], align 8     ; 6 uses
  %i.an = alloca [32 x i8], align 8               ; 12 uses
  %i.ao = alloca [264 x i8], align 8              ; 5 uses
  %i.ap = alloca [24 x i8], align 8               ; 8 uses
  %i.aq = alloca [264 x i8], align 8              ; 7 uses
  %.sroa.5.i.i = alloca [112 x i8], align 8       ; 6 uses
  %i.ar = alloca [136 x i8], align 8              ; 10 uses
  %i.as = alloca [312 x i8], align 8              ; 5 uses
  %i.at = alloca [304 x i8], align 8              ; 8 uses
  %.sroa.4.i.i = alloca [248 x i8], align 8       ; 6 uses
  %.sroa.569.i.sroa.9.i.i = alloca [7 x i8], align 1 ; 6 uses
  %.sroa.970.i.i.i = alloca [24 x i8], align 8    ; 6 uses
  %.sroa.3.i.sroa.9.i.i = alloca [7 x i8], align 1 ; 9 uses
  %i.au = alloca [24 x i8], align 8               ; 9 uses
  %.sroa.565.i.i.i = alloca [24 x i8], align 8    ; 6 uses
  %i.av = alloca [72 x i8], align 8               ; 13 uses
  %i.aw = alloca [40 x i8], align 8               ; 14 uses
  %i.ax = alloca [24 x i8], align 8               ; 7 uses
  %i.ay = alloca [24 x i8], align 8               ; 7 uses
  %.sroa.12121.i.i = alloca [7 x i8], align 1     ; 10 uses
  %.sroa.14.i.i = alloca [24 x i8], align 8       ; 6 uses
  %i.az = alloca [16 x i8], align 8               ; 6 uses
  %i.ba = alloca [24 x i8], align 8               ; 5 uses
  %i.bb = alloca [24 x i8], align 8               ; 14 uses
  %i.bc = alloca [40 x i8], align 8               ; 11 uses
  %.sroa.999.sroa.8.i.i = alloca [7 x i8], align 1 ; 7 uses
  %.sroa.10100.i.i = alloca [24 x i8], align 8    ; 7 uses
  %i.bd = alloca [24 x i8], align 8               ; 17 uses
  %i.be = alloca [16 x i8], align 8               ; 6 uses
  %i.bf = alloca [24 x i8], align 8               ; 5 uses
  %i.bg = alloca [24 x i8], align 8               ; 14 uses
  %i.bh = alloca [40 x i8], align 8               ; 11 uses
  %i.bi = alloca [8 x i8], align 8                ; 6 uses
  %i.bj = alloca [32 x i8], align 8               ; 4 uses
  %.sroa.16.i = alloca [7 x i8], align 1          ; 7 uses
  %.sroa.17.i = alloca [24 x i8], align 8         ; 7 uses
  %.sroa.18.i = alloca [168 x i8], align 8        ; 6 uses
  %.sroa.9176.sroa.10.i = alloca [7 x i8], align 1 ; 6 uses
  %.sroa.9176.sroa.11.i = alloca [24 x i8], align 8 ; 6 uses
  %.sroa.9176.sroa.12.i = alloca [168 x i8], align 8 ; 6 uses
  %.sroa.9156.i = alloca [112 x i8], align 8      ; 6 uses
  %.sroa.10150.i = alloca [112 x i8], align 8     ; 7 uses
  %i.bk = alloca [40 x i8], align 8               ; 5 uses
  %i.bl = alloca [64 x i8], align 8               ; 12 uses
  %i.bm = alloca [16 x i8], align 8               ; 6 uses
  %i.bn = alloca [16 x i8], align 8               ; 6 uses
  %i.bo = alloca [16 x i8], align 8               ; 6 uses
  %i.bp = alloca [24 x i8], align 8               ; 9 uses
  %i.bq = alloca [24 x i8], align 8               ; 5 uses
  %i.br = alloca [24 x i8], align 8               ; 5 uses
  %i.bs = alloca [312 x i8], align 8              ; 5 uses
  %i.bt = alloca [312 x i8], align 8              ; 5 uses
  %.sroa.0136.i = alloca [1240 x i8], align 8     ; 8 uses
  %i.bu = alloca [136 x i8], align 8              ; 14 uses
end_hunk_1
begin_hunk_2_@_RNCNvXs7_NtCsgO8S5jLFugx_23deltalake_catalog_unity10datafusionNtB7_19UnitySchemaProviderNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProvider5table0B9_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.631.i.sroa.8.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.631.i.sroa.9.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.631.i.sroa.10.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.1021.i.i)
  switch i8 %.pre281.i, label %default.unreachable748 [
    i8 0, label %.thread.i84.i
    i8 1, label %bb.gl
    i8 2, label %bb.gm
    i8 3, label %bb.gn
  ]

.thread.i84.i:                                    ; preds = %bb.gk, %.thread296.i
  %i.wy = phi ptr [ %i.vz, %.thread296.i ], [ %i.dp, %bb.gk ]
  %i.wz = phi ptr [ %i.wa, %.thread296.i ], [ %i.do, %bb.gk ]
  %i.xa = phi ptr [ %.sroa.8172.0..sroa_idx.i, %.thread296.i ], [ %.phi.trans.insert280.i, %bb.gk ]
  %i.xb = phi ptr [ %i.wg, %.thread296.i ], [ %i.wx, %bb.gk ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !2346
  %i.xc = getelementptr inbounds nuw i8, ptr %1, i64 1096 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.xc, ptr noundef nonnull align 8 dereferenceable(136) %i.xb, i64 136, i1 false), !noalias !2346
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1512 ; 2 uses
  store i8 0, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !2346
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.431.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.524.i.i.i)
  br label %bb.go

bb.gl:                                            ; preds = %bb.gk
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #34
          to label %.noexc85.i unwind label %bb.gj, !noalias !2254

.noexc85.i:                                       ; preds = %bb.gl
  unreachable

bb.gm:                                            ; preds = %bb.gk
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #34
          to label %.noexc86.i unwind label %bb.gj, !noalias !2254

.noexc86.i:                                       ; preds = %bb.gm
  unreachable

bb.gn:                                            ; preds = %bb.gk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !2346
  %.phi.trans.insert.i72.i = getelementptr inbounds nuw i8, ptr %1, i64 1512 ; 3 uses
  %.pre.i73.i = load i8, ptr %.phi.trans.insert.i72.i, align 8, !range !38, !noalias !2350
  %i.xd = getelementptr inbounds nuw i8, ptr %1, i64 1096 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.431.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.524.i.i.i)
  switch i8 %.pre.i73.i, label %default.unreachable748 [
    i8 0, label %bb.go
    i8 1, label %bb.gx
    i8 2, label %bb.gy
    i8 3, label %bb.gu
  ]

bb.go:                                            ; preds = %bb.gn, %.thread.i84.i
  %i.xe = phi ptr [ %i.wy, %.thread.i84.i ], [ %i.dp, %bb.gn ] ; 2 uses
  %i.xf = phi ptr [ %i.wz, %.thread.i84.i ], [ %i.do, %bb.gn ] ; 2 uses
  %i.xg = phi ptr [ %i.xa, %.thread.i84.i ], [ %.phi.trans.insert280.i, %bb.gn ] ; 2 uses
  %i.xh = phi ptr [ %i.xb, %.thread.i84.i ], [ %i.wx, %bb.gn ] ; 2 uses
  %i.xi = phi ptr [ %.sroa.8.0..sroa_idx.i.i, %.thread.i84.i ], [ %.phi.trans.insert.i72.i, %bb.gn ] ; 2 uses
  %i.xj = phi ptr [ %i.xc, %.thread.i84.i ], [ %i.xd, %bb.gn ] ; 4 uses
  %i.xk = getelementptr inbounds nuw i8, ptr %1, i64 1232
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.xk, ptr noundef nonnull align 8 dereferenceable(136) %i.xj, i64 136, i1 false), !noalias !2350
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !2350
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !2350
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.ak, ptr noundef nonnull align 8 dereferenceable(128) %i.xj, i64 128, i1 false), !noalias !2350
  %i.xl = getelementptr inbounds nuw i8, ptr %i.ak, i64 112
  %i.xm = load <2 x ptr>, ptr %i.xl, align 8, !alias.scope !2354, !noalias !2350
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http6header3map9HeaderMapECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(128) %i.ak)
          to label %bb.gq unwind label %bb.gp, !noalias !2357

bb.gp:                                            ; preds = %bb.go
  %i.xn = landingpad { ptr, i32 }
          cleanup
  %i.xo = getelementptr inbounds nuw i8, ptr %i.ak, i64 96
  %.val1.i.i.i.i.i = load ptr, ptr %i.xo, align 8, !alias.scope !2358, !noalias !2350, !align !18, !noundef !4
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4j34XAPZOn0_4http10extensions10ExtensionsECsgO8S5jLFugx_23deltalake_catalog_unity(ptr %.val1.i.i.i.i.i) #31
          to label %.body.i.i82.i unwind label %bb.gt, !noalias !2357

bb.gq:                                            ; preds = %bb.go
  %i.xp = getelementptr inbounds nuw i8, ptr %i.ak, i64 96
  %.val.i.i.i.i.i = load ptr, ptr %i.xp, align 8, !alias.scope !2358, !noalias !2350, !align !18, !noundef !4 ; 4 uses
  %i.xq = icmp eq ptr %.val.i.i.i.i.i, null
  br i1 %i.xq, label %bb.gv, label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtBT_6marker4SyncNtB2H_4SendEL_EEENtNtNtBT_3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(32) %.val.i.i.i.i.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtB4_3any6TypeIdIBH_DNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB4_6marker4SyncNtB3h_4SendEL_EINtNtB4_4hash18BuildHasherDefaultNtB2z_8IdHasherEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i.i.i.i unwind label %bb.gs, !noalias !2357

bb.gs:                                            ; preds = %bb.gr
  %i.xr = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef 32, i64 noundef 8) #24, !noalias !2357
  br label %.body.i.i82.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtB4_3any6TypeIdIBH_DNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB4_6marker4SyncNtB3h_4SendEL_EINtNtB4_4hash18BuildHasherDefaultNtB2z_8IdHasherEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i.i.i.i: ; preds = %bb.gr
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef 32, i64 noundef 8) #24, !noalias !2357
  br label %bb.gv

bb.gt:                                            ; preds = %bb.gp
  %i.xs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32, !noalias !2357
  unreachable

bb.gu:                                            ; preds = %bb.gn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !2350
  br label %bb.gz

.body.i.i82.i:                                    ; preds = %bb.gs, %bb.gp
  %eh.lpad-body.i.i83.i = phi { ptr, i32 } [ %i.xn, %bb.gp ], [ %i.xr, %bb.gs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !2350
  br label %bb.gw

bb.gv:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtB4_3any6TypeIdIBH_DNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB4_6marker4SyncNtB3h_4SendEL_EINtNtB4_4hash18BuildHasherDefaultNtB2z_8IdHasherEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i.i.i.i, %bb.gq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !2350
  %i.xt = getelementptr inbounds nuw i8, ptr %1, i64 1368
  store i64 3, ptr %i.xt, align 8, !noalias !2350
  %.sroa.816.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1464
  store i64 0, ptr %.sroa.816.0..sroa_idx.i.i.i, align 8, !noalias !2350
  %.sroa.917.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1472
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.917.0..sroa_idx.i.i.i, align 8, !noalias !2350
  %.sroa.10.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1480
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.0..sroa_idx.i.i.i, i8 0, i64 16, i1 false), !noalias !2350
  %.sroa.11.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1496
  store <2 x ptr> %i.xm, ptr %.sroa.11.0..sroa_idx.i.i.i, align 8, !noalias !2350
  br label %bb.gz

bb.gw:                                            ; preds = %bb.hd, %bb.ha, %.body.i.i82.i
  %i.xu = phi ptr [ %i.xe, %.body.i.i82.i ], [ %i.yb, %bb.hd ], [ %i.yb, %bb.ha ]
  %i.xv = phi ptr [ %i.xf, %.body.i.i82.i ], [ %i.yc, %bb.hd ], [ %i.yc, %bb.ha ]
  %i.xw = phi ptr [ %i.xg, %.body.i.i82.i ], [ %i.yd, %bb.hd ], [ %i.yd, %bb.ha ]
  %i.xx = phi ptr [ %i.xh, %.body.i.i82.i ], [ %i.ye, %bb.hd ], [ %i.ye, %bb.ha ]
  %i.xy = phi ptr [ %i.xi, %.body.i.i82.i ], [ %i.yf, %bb.hd ], [ %i.yf, %bb.ha ]
  %i.xz = phi ptr [ %i.xj, %.body.i.i82.i ], [ %i.yg, %bb.hd ], [ %i.yg, %bb.ha ]
  %.pn4.pn.i.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i83.i, %.body.i.i82.i ], [ %i.yl, %bb.hd ], [ %i.yi, %bb.ha ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !2350
  %i.ya = getelementptr inbounds nuw i8, ptr %1, i64 1360
  %.val9.i.i.i = load ptr, ptr %i.ya, align 8, !noalias !2350, !nonnull !4, !noundef !4
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtCseo6ZV82fEK1_3url3UrlEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr %.val9.i.i.i) #31
          to label %.body11.i.i.i unwind label %bb.hm, !noalias !2361

bb.gx:                                            ; preds = %bb.gn
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #34
          to label %.noexc.i81.i unwind label %bb.hn, !noalias !2362

.noexc.i81.i:                                     ; preds = %bb.gx
  unreachable

bb.gy:                                            ; preds = %bb.gn
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #34
          to label %.noexc8.i.i unwind label %bb.hn, !noalias !2362

.noexc8.i.i:                                      ; preds = %bb.gy
  unreachable

bb.gz:                                            ; preds = %bb.gv, %bb.gu
  %i.yb = phi ptr [ %i.xe, %bb.gv ], [ %i.dp, %bb.gu ] ; 9 uses
  %i.yc = phi ptr [ %i.xf, %bb.gv ], [ %i.do, %bb.gu ] ; 8 uses
  %i.yd = phi ptr [ %i.xg, %bb.gv ], [ %.phi.trans.insert280.i, %bb.gu ] ; 8 uses
  %i.ye = phi ptr [ %i.xh, %bb.gv ], [ %i.wx, %bb.gu ] ; 6 uses
  %i.yf = phi ptr [ %i.xi, %bb.gv ], [ %.phi.trans.insert.i72.i, %bb.gu ] ; 5 uses
  %i.yg = phi ptr [ %i.xj, %bb.gv ], [ %i.xd, %bb.gu ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !2350
  %i.yh = getelementptr inbounds nuw i8, ptr %1, i64 1368 ; 3 uses
  invoke void @_RNvXNtNtCs3eCsZ2Mx498_14http_body_util11combinators7collectINtB2_7CollectINtNtB4_8box_body7BoxBodyNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtB2M_6marker4SyncNtB3j_4SendEL_EEENtNtNtB2M_6future6future6Future4pollCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([128 x i8]) align 8 captures(none) dereferenceable(128) %i.aj, ptr noalias noundef nonnull align 8 dereferenceable(144) %i.yh, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.hb unwind label %bb.ha, !noalias !2361

bb.ha:                                            ; preds = %bb.gz
  %i.yi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !2350
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs3eCsZ2Mx498_14http_body_util11combinators7collect7CollectINtNtBL_8box_body7BoxBodyNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB3E_4SendEL_EEEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(144) %i.yh) #31
          to label %bb.gw unwind label %bb.hm, !noalias !2361

bb.hb:                                            ; preds = %bb.gz
  %i.yj = load i64, ptr %i.aj, align 8, !range !2363, !noalias !2350, !noundef !4 ; 3 uses
  %i.yk = icmp eq i64 %i.yj, 5
  br i1 %i.yk, label %bb.hz, label %bb.hc

bb.hc:                                            ; preds = %bb.hb
  %.sroa.3.0..sroa_idx.i.i75.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %.sroa.3.0.copyload.i.i.i = load ptr, ptr %.sroa.3.0..sroa_idx.i.i75.i, align 8, !noalias !2350 ; 3 uses
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %.sroa.4.0.copyload.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !2350 ; 3 uses
  %.sroa.524.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.524.i.i.i, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.524.0..sroa_idx.i.i.i, i64 104, i1 false), !noalias !2350
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !2350
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs3eCsZ2Mx498_14http_body_util11combinators7collect7CollectINtNtBL_8box_body7BoxBodyNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB3E_4SendEL_EEEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(144) %i.yh)
          to label %bb.he unwind label %bb.hd, !noalias !2361

bb.hd:                                            ; preds = %bb.hg, %bb.hf, %bb.hc
  %i.yl = landingpad { ptr, i32 }
          cleanup
  br label %bb.gw

bb.he:                                            ; preds = %bb.hc
  %i.ym = icmp eq i64 %i.yj, 4
  br i1 %i.ym, label %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultINtNtCs3eCsZ2Mx498_14http_body_util9collected9CollectedNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SyncNtB37_4SendEL_EE3mapB1B_NCNCNvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtB3T_8Response5bytes00ECsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread.i.i.i, label %bb.hf

_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultINtNtCs3eCsZ2Mx498_14http_body_util9collected9CollectedNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SyncNtB37_4SendEL_EE3mapB1B_NCNCNvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtB3T_8Response5bytes00ECsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread.i.i.i: ; preds = %bb.he
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.copyload.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i.i.i) ]
  br label %bb.hg

bb.hf:                                            ; preds = %bb.he
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !2364
  store i64 %i.yj, ptr %i.ai, align 8, !noalias !2368
  %.sroa.3.0..sroa_idx20.i.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %.sroa.3.0.copyload.i.i.i, ptr %.sroa.3.0..sroa_idx20.i.i.i, align 8, !noalias !2368
  %.sroa.4.0..sroa_idx22.i.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store ptr %.sroa.4.0.copyload.i.i.i, ptr %.sroa.4.0..sroa_idx22.i.i.i, align 8, !noalias !2368
  %.sroa.524.0..sroa_idx25.i.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.524.0..sroa_idx25.i.i.i, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.524.i.i.i, i64 104, i1 false), !noalias !2368
  invoke void @_RNvMNtCs3eCsZ2Mx498_14http_body_util9collectedINtB2_9CollectedNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesE8to_bytesCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.al, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(128) %i.ai)
          to label %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultINtNtCs3eCsZ2Mx498_14http_body_util9collected9CollectedNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SyncNtB37_4SendEL_EE3mapB1B_NCNCNvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtB3T_8Response5bytes00ECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i unwind label %bb.hd, !noalias !2361

_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultINtNtCs3eCsZ2Mx498_14http_body_util9collected9CollectedNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SyncNtB37_4SendEL_EE3mapB1B_NCNCNvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtB3T_8Response5bytes00ECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i: ; preds = %bb.hf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !2364
  %.pr.i.i.i = load ptr, ptr %i.al, align 8, !alias.scope !2369, !noalias !2372 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2374)
  %i.yn = icmp eq ptr %.pr.i.i.i, null
  %.phi.trans.insert.i.i76.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %.pre.i.i77.i = load ptr, ptr %.phi.trans.insert.i.i76.i, align 8, !alias.scope !2375, !noalias !2350 ; 2 uses
  %.phi.trans.insert33.i.i.i = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 2 uses
  br i1 %i.yn, label %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultINtNtCs3eCsZ2Mx498_14http_body_util9collected9CollectedNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SyncNtB37_4SendEL_EE3mapB1B_NCNCNvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtB3T_8Response5bytes00ECsgO8S5jLFugx_23deltalake_catalog_unity.exit._crit_edge.i.i.i, label %bb.hh

_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultINtNtCs3eCsZ2Mx498_14http_body_util9collected9CollectedNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SyncNtB37_4SendEL_EE3mapB1B_NCNCNvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtB3T_8Response5bytes00ECsgO8S5jLFugx_23deltalake_catalog_unity.exit._crit_edge.i.i.i: ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultINtNtCs3eCsZ2Mx498_14http_body_util9collected9CollectedNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SyncNtB37_4SendEL_EE3mapB1B_NCNCNvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtB3T_8Response5bytes00ECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i
  %.pre34.i.i.i = load ptr, ptr %.phi.trans.insert33.i.i.i, align 8, !alias.scope !2369, !noalias !2372
  br label %bb.hg

bb.hg:                                            ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultINtNtCs3eCsZ2Mx498_14http_body_util9collected9CollectedNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SyncNtB37_4SendEL_EE3mapB1B_NCNCNvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtB3T_8Response5bytes00ECsgO8S5jLFugx_23deltalake_catalog_unity.exit._crit_edge.i.i.i, %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultINtNtCs3eCsZ2Mx498_14http_body_util9collected9CollectedNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SyncNtB37_4SendEL_EE3mapB1B_NCNCNvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtB3T_8Response5bytes00ECsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread.i.i.i
  %i.yo = phi ptr [ %.pre34.i.i.i, %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultINtNtCs3eCsZ2Mx498_14http_body_util9collected9CollectedNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SyncNtB37_4SendEL_EE3mapB1B_NCNCNvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtB3T_8Response5bytes00ECsgO8S5jLFugx_23deltalake_catalog_unity.exit._crit_edge.i.i.i ], [ %.sroa.4.0.copyload.i.i.i, %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultINtNtCs3eCsZ2Mx498_14http_body_util9collected9CollectedNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SyncNtB37_4SendEL_EE3mapB1B_NCNCNvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtB3T_8Response5bytes00ECsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread.i.i.i ]
  %i.yp = phi ptr [ %.pre.i.i77.i, %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultINtNtCs3eCsZ2Mx498_14http_body_util9collected9CollectedNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SyncNtB37_4SendEL_EE3mapB1B_NCNCNvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtB3T_8Response5bytes00ECsgO8S5jLFugx_23deltalake_catalog_unity.exit._crit_edge.i.i.i ], [ %.sroa.3.0.copyload.i.i.i, %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultINtNtCs3eCsZ2Mx498_14http_body_util9collected9CollectedNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SyncNtB37_4SendEL_EE3mapB1B_NCNCNvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtB3T_8Response5bytes00ECsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread.i.i.i ]
  %i.yq = invoke noundef nonnull align 8 ptr @_RINvNtCsgO6CtM78C4N_7reqwest5error6decodeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtB1h_6marker4SyncNtB1O_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull %i.yp, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.yo)
          to label %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SyncNtB2d_4SendEL_EE7map_errNtNtCsgO6CtM78C4N_7reqwest5error5ErrorINvB2U_6decodeB1i_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i unwind label %bb.hd, !noalias !2361

bb.hh:                                            ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultINtNtCs3eCsZ2Mx498_14http_body_util9collected9CollectedNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SyncNtB37_4SendEL_EE3mapB1B_NCNCNvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtB3T_8Response5bytes00ECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.431.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.phi.trans.insert33.i.i.i, i64 16, i1 false), !alias.scope !2376, !noalias !2350
  br label %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SyncNtB2d_4SendEL_EE7map_errNtNtCsgO6CtM78C4N_7reqwest5error5ErrorINvB2U_6decodeB1i_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i

_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SyncNtB2d_4SendEL_EE7map_errNtNtCsgO6CtM78C4N_7reqwest5error5ErrorINvB2U_6decodeB1i_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i: ; preds = %bb.hh, %bb.hg
  %.sroa.026.0.i.i.i = phi ptr [ %.pr.i.i.i, %bb.hh ], [ null, %bb.hg ] ; 3 uses
  %.sroa.328.0.i.i.i = phi ptr [ %.pre.i.i77.i, %bb.hh ], [ %i.yq, %bb.hg ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !2350
  %i.yr = getelementptr inbounds nuw i8, ptr %1, i64 1360
  %.val.i.i78.i = load ptr, ptr %i.yr, align 8, !noalias !2350, !nonnull !4, !noundef !4 ; 5 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(88) %.val.i.i78.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i.i unwind label %bb.hi, !noalias !2361

bb.hi:                                            ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SyncNtB2d_4SendEL_EE7map_errNtNtCsgO6CtM78C4N_7reqwest5error5ErrorINvB2U_6decodeB1i_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i
  %i.ys = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(88) %.val.i.i78.i)
          to label %bb.hl unwind label %bb.hj, !noalias !2361

bb.hj:                                            ; preds = %bb.hi
  %i.yt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32, !noalias !2361
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i.i: ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SyncNtB2d_4SendEL_EE7map_errNtNtCsgO6CtM78C4N_7reqwest5error5ErrorINvB2U_6decodeB1i_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(88) %.val.i.i78.i)
          to label %bb.ho unwind label %bb.hk, !noalias !2361

bb.hk:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i.i
  %i.yu = landingpad { ptr, i32 }
          cleanup
  br label %bb.hl

bb.hl:                                            ; preds = %bb.hk, %bb.hi
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.yu, %bb.hk ], [ %i.ys, %bb.hi ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i78.i, i64 noundef 88, i64 noundef 8) #24, !noalias !2361
  br label %.body11.i.i.i

.body11.i.i.i:                                    ; preds = %bb.hl, %bb.gw
  %i.yv = phi ptr [ %i.xu, %bb.gw ], [ %i.yb, %bb.hl ]
  %i.yw = phi ptr [ %i.xv, %bb.gw ], [ %i.yc, %bb.hl ]
  %i.yx = phi ptr [ %i.xw, %bb.gw ], [ %i.yd, %bb.hl ]
  %i.yy = phi ptr [ %i.xx, %bb.gw ], [ %i.ye, %bb.hl ]
  %i.yz = phi ptr [ %i.xy, %bb.gw ], [ %i.yf, %bb.hl ]
  %i.za = phi ptr [ %i.xz, %bb.gw ], [ %i.yg, %bb.hl ]
  %.pn7.i.i.i = phi { ptr, i32 } [ %.pn4.pn.i.i.i, %bb.gw ], [ %eh.lpad-body.i.i.i.i, %bb.hl ]
  store i8 2, ptr %i.yz, align 8, !noalias !2350
  br label %.body.i74.i

bb.hm:                                            ; preds = %bb.ha, %bb.gw
  %i.zb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32, !noalias !2361
  unreachable

bb.hn:                                            ; preds = %bb.gy, %bb.gx
  %i.zc = landingpad { ptr, i32 }
          cleanup
  br label %.body.i74.i

bb.ho:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i.i
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i78.i, i64 noundef 88, i64 noundef 8) #24, !noalias !2361
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.1021.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.431.i.i.i, i64 16, i1 false), !noalias !2346
  store i8 1, ptr %i.yf, align 8, !noalias !2350
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.431.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.524.i.i.i)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtBL_8Response5bytes0ECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull align 8 %i.yg)
          to label %bb.hq unwind label %bb.hp, !noalias !2362

bb.hp:                                            ; preds = %bb.ho
  %i.zd = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i

bb.hq:                                            ; preds = %bb.ho
  %i.ze = icmp eq ptr %.sroa.026.0.i.i.i, null
  br i1 %i.ze, label %bb.hy, label %bb.hs

bb.hr:                                            ; preds = %bb.hu, %bb.hs
  %i.zf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !2346
  call void @llvm.experimental.noalias.scope.decl(metadata !2377)
  call void @llvm.experimental.noalias.scope.decl(metadata !2380)
  %i.zg = load ptr, ptr %i.an, align 8, !alias.scope !2383, !noalias !2346, !nonnull !4, !align !18, !noundef !4
  %i.zh = getelementptr inbounds nuw i8, ptr %i.zg, i64 32
  %i.zi = load ptr, ptr %i.zh, align 8, !noalias !2384, !nonnull !4, !noundef !4
  %i.zj = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.zk = load ptr, ptr %.sroa.4.0..sroa_idx.i79.i, align 8, !alias.scope !2383, !noalias !2346, !noundef !4
  %i.zl = load i64, ptr %.sroa.525.0..sroa_idx.i.i, align 8, !alias.scope !2383, !noalias !2346, !noundef !4
  invoke void %i.zi(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.zj, ptr noundef %i.zk, i64 noundef %i.zl)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i unwind label %bb.hx, !noalias !2362, !inline_history !2385

bb.hs:                                            ; preds = %bb.hq
  %.sroa.525.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.525.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.1021.i.i, i64 16, i1 false), !noalias !2346
  store ptr %.sroa.026.0.i.i.i, ptr %i.an, align 8, !noalias !2346
  %.sroa.4.0..sroa_idx.i79.i = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 3 uses
  store ptr %.sroa.328.0.i.i.i, ptr %.sroa.4.0..sroa_idx.i79.i, align 8, !noalias !2346
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !2346
  %.val7.i.i = load i64, ptr %.sroa.525.0..sroa_idx.i.i, align 8, !noalias !2346, !noundef !4 ; 2 uses
  invoke void @_RINvNtCseqDwI8vvjGQ_10serde_json2de10from_sliceNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models16GetTableResponseEBN_(ptr noalias noundef nonnull sret([248 x i8]) align 8 captures(address) dereferenceable(248) %i.am, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.328.0.i.i.i, i64 noundef %.val7.i.i)
          to label %bb.ht unwind label %bb.hr, !noalias !2362

bb.ht:                                            ; preds = %bb.hs
  call void @llvm.experimental.noalias.scope.decl(metadata !2386)
  %i.zm = load i64, ptr %i.am, align 8, !range !445, !alias.scope !2389, !noalias !2391, !noundef !4 ; 2 uses
  %i.zn = icmp eq i64 %i.zm, -9223372036854775807
  %i.zo = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.zp = load ptr, ptr %i.zo, align 8, !alias.scope !2392, !noalias !2346 ; 2 uses
  br i1 %i.zn, label %bb.hu, label %bb.hv

bb.hu:                                            ; preds = %bb.ht
  %i.zq = invoke noundef nonnull align 8 ptr @_RINvNtCsgO6CtM78C4N_7reqwest5error6decodeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 %i.zp)
          to label %._RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models16GetTableResponseNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorE7map_errNtNtCsgO6CtM78C4N_7reqwest5error5ErrorINvB2F_6decodeB1O_EEBM_.exit_crit_edge.i.i unwind label %bb.hr, !noalias !2362

._RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models16GetTableResponseNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorE7map_errNtNtCsgO6CtM78C4N_7reqwest5error5ErrorINvB2F_6decodeB1O_EEBM_.exit_crit_edge.i.i: ; preds = %bb.hu
  %.pre38.i.i = load ptr, ptr %i.an, align 8, !alias.scope !2393, !noalias !2346
  %.pre39.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i79.i, align 8, !alias.scope !2393, !noalias !2346
  %.pre40.i.i = load i64, ptr %.sroa.525.0..sroa_idx.i.i, align 8, !alias.scope !2393, !noalias !2346
  br label %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models16GetTableResponseNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorE7map_errNtNtCsgO6CtM78C4N_7reqwest5error5ErrorINvB2F_6decodeB1O_EEBM_.exit.i.i

bb.hv:                                            ; preds = %bb.ht
  %.sroa.631.0..sroa_idx32.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %.sroa.631.i.sroa.0.0.copyload.i = load i64, ptr %.sroa.631.0..sroa_idx32.i.i, align 8, !alias.scope !2398, !noalias !2346
  %.sroa.631.i.sroa.4.0..sroa.631.0..sroa_idx32.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %.sroa.631.i.sroa.4.0.copyload.i = load ptr, ptr %.sroa.631.i.sroa.4.0..sroa.631.0..sroa_idx32.i.sroa_idx.i, align 8, !alias.scope !2398, !noalias !2346
  %.sroa.631.i.sroa.5.0..sroa.631.0..sroa_idx32.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %.sroa.631.i.sroa.5.0.copyload.i = load i64, ptr %.sroa.631.i.sroa.5.0..sroa.631.0..sroa_idx32.i.sroa_idx.i, align 8, !alias.scope !2398, !noalias !2346
  %.sroa.631.i.sroa.6.0..sroa.631.0..sroa_idx32.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  %.sroa.631.i.sroa.6.0.copyload.i = load i64, ptr %.sroa.631.i.sroa.6.0..sroa.631.0..sroa_idx32.i.sroa_idx.i, align 8, !alias.scope !2398, !noalias !2346
  %.sroa.631.i.sroa.7.0..sroa.631.0..sroa_idx32.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 48
  %.sroa.631.i.sroa.7.0.copyload.i = load i8, ptr %.sroa.631.i.sroa.7.0..sroa.631.0..sroa_idx32.i.sroa_idx.i, align 8, !alias.scope !2398, !noalias !2346
  %.sroa.631.i.sroa.8.0..sroa.631.0..sroa_idx32.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.631.i.sroa.8.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.631.i.sroa.8.0..sroa.631.0..sroa_idx32.i.sroa_idx.i, i64 7, i1 false), !alias.scope !2398, !noalias !2346
  %.sroa.631.i.sroa.9.0..sroa.631.0..sroa_idx32.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.631.i.sroa.9.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.631.i.sroa.9.0..sroa.631.0..sroa_idx32.i.sroa_idx.i, i64 24, i1 false), !alias.scope !2398, !noalias !2346
  %.sroa.631.i.sroa.10.0..sroa.631.0..sroa_idx32.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %.sroa.631.i.sroa.10.i, ptr noundef nonnull align 8 dereferenceable(168) %.sroa.631.i.sroa.10.0..sroa.631.0..sroa_idx32.i.sroa_idx.i, i64 168, i1 false), !alias.scope !2398, !noalias !2346
  br label %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models16GetTableResponseNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorE7map_errNtNtCsgO6CtM78C4N_7reqwest5error5ErrorINvB2F_6decodeB1O_EEBM_.exit.i.i

_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models16GetTableResponseNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorE7map_errNtNtCsgO6CtM78C4N_7reqwest5error5ErrorINvB2F_6decodeB1O_EEBM_.exit.i.i: ; preds = %bb.hv, %._RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models16GetTableResponseNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorE7map_errNtNtCsgO6CtM78C4N_7reqwest5error5ErrorINvB2F_6decodeB1O_EEBM_.exit_crit_edge.i.i
  %.sroa.631.i.sroa.0.0.i = phi i64 [ undef, %._RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models16GetTableResponseNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorE7map_errNtNtCsgO6CtM78C4N_7reqwest5error5ErrorINvB2F_6decodeB1O_EEBM_.exit_crit_edge.i.i ], [ %.sroa.631.i.sroa.0.0.copyload.i, %bb.hv ]
  %.sroa.631.i.sroa.4.0.i = phi ptr [ undef, %._RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models16GetTableResponseNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorE7map_errNtNtCsgO6CtM78C4N_7reqwest5error5ErrorINvB2F_6decodeB1O_EEBM_.exit_crit_edge.i.i ], [ %.sroa.631.i.sroa.4.0.copyload.i, %bb.hv ]
  %.sroa.631.i.sroa.5.0.i = phi i64 [ undef, %._RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models16GetTableResponseNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorE7map_errNtNtCsgO6CtM78C4N_7reqwest5error5ErrorINvB2F_6decodeB1O_EEBM_.exit_crit_edge.i.i ], [ %.sroa.631.i.sroa.5.0.copyload.i, %bb.hv ]
  %.sroa.631.i.sroa.6.0.i = phi i64 [ undef, %._RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models16GetTableResponseNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorE7map_errNtNtCsgO6CtM78C4N_7reqwest5error5ErrorINvB2F_6decodeB1O_EEBM_.exit_crit_edge.i.i ], [ %.sroa.631.i.sroa.6.0.copyload.i, %bb.hv ]
  %.sroa.631.i.sroa.7.0.i = phi i8 [ undef, %._RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models16GetTableResponseNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorE7map_errNtNtCsgO6CtM78C4N_7reqwest5error5ErrorINvB2F_6decodeB1O_EEBM_.exit_crit_edge.i.i ], [ %.sroa.631.i.sroa.7.0.copyload.i, %bb.hv ]
  %i.zr = phi i64 [ %.pre40.i.i, %._RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models16GetTableResponseNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorE7map_errNtNtCsgO6CtM78C4N_7reqwest5error5ErrorINvB2F_6decodeB1O_EEBM_.exit_crit_edge.i.i ], [ %.val7.i.i, %bb.hv ]
  %i.zs = phi ptr [ %.pre39.i.i, %._RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models16GetTableResponseNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorE7map_errNtNtCsgO6CtM78C4N_7reqwest5error5ErrorINvB2F_6decodeB1O_EEBM_.exit_crit_edge.i.i ], [ %.sroa.328.0.i.i.i, %bb.hv ]
  %i.zt = phi ptr [ %.pre38.i.i, %._RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models16GetTableResponseNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorE7map_errNtNtCsgO6CtM78C4N_7reqwest5error5ErrorINvB2F_6decodeB1O_EEBM_.exit_crit_edge.i.i ], [ %.sroa.026.0.i.i.i, %bb.hv ]
  %.sroa.428.1.i.i = phi ptr [ %i.zq, %._RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models16GetTableResponseNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorE7map_errNtNtCsgO6CtM78C4N_7reqwest5error5ErrorINvB2F_6decodeB1O_EEBM_.exit_crit_edge.i.i ], [ %i.zp, %bb.hv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !2346
  call void @llvm.experimental.noalias.scope.decl(metadata !2399)
  call void @llvm.experimental.noalias.scope.decl(metadata !2400)
  %i.zu = getelementptr inbounds nuw i8, ptr %i.zt, i64 32
  %i.zv = load ptr, ptr %i.zu, align 8, !noalias !2401, !nonnull !4, !noundef !4
  %i.zw = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  invoke void %i.zv(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.zw, ptr noundef %i.zs, i64 noundef %i.zr)
          to label %bb.ia unwind label %bb.hw, !noalias !2362, !inline_history !2385

bb.hw:                                            ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models16GetTableResponseNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorE7map_errNtNtCsgO6CtM78C4N_7reqwest5error5ErrorINvB2F_6decodeB1O_EEBM_.exit.i.i
  %i.zx = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i

end_hunk_2
begin_hunk_3_@_RNCNvXs7_NtCsgO8S5jLFugx_23deltalake_catalog_unity10datafusionNtB7_19UnitySchemaProviderNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProvider5table0B9_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.374.sroa.2.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.sroa.2.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.sroa.9.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13500)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14501)
  store i64 21, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cu)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ct)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cq)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0493)
  br label %common.ret

bb.ya:                                            ; preds = %bb.qk, %bb.qj, %bb.qc, %bb.pj
  %i.bom = phi ptr [ %i.ark, %bb.pj ], [ %i.asv, %bb.qc ], [ %i.asy, %bb.qk ], [ %i.asy, %bb.qj ]
  %i.bon = phi ptr [ %i.arl, %bb.pj ], [ %i.asw, %bb.qc ], [ %i.asz, %bb.qk ], [ %i.asz, %bb.qj ] ; 3 uses
  %.sroa.0108.1.i = phi i1 [ true, %bb.pj ], [ false, %bb.qc ], [ true, %bb.qk ], [ true, %bb.qj ]
  %.sroa.6109.0.i = phi i64 [ undef, %bb.pj ], [ %.sroa.0124.0.copyload.i, %bb.qc ], [ undef, %bb.qk ], [ undef, %bb.qj ]
  %.sroa.7110.1.i = phi i64 [ %.sroa.6.sroa.6.8.copyload.i, %bb.pj ], [ %.sroa.4125.0.copyload.i, %bb.qc ], [ %.sroa.7110.0.i, %bb.qk ], [ %.sroa.7110.0.i, %bb.qj ] ; 2 uses
  %.sroa.11111.1.i = phi i64 [ %.sroa.6.sroa.8.8.copyload.i, %bb.pj ], [ %.sroa.5126.0.copyload.i, %bb.qc ], [ %.sroa.11111.0.i, %bb.qk ], [ %.sroa.11111.0.i, %bb.qj ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %.sroa.13500, ptr noundef nonnull align 16 dereferenceable(80) %.sroa.14.i, i64 80, i1 false), !noalias !2734
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.14501, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.15.i, i64 16, i1 false), !noalias !2734
  store i8 1, ptr %i.bom, align 8, !noalias !2581
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.15.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12100.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.374.sroa.2.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.sroa.2.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.sroa.9.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %.sroa.7506, ptr noundef nonnull align 16 dereferenceable(80) %.sroa.13500, i64 80, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.8507, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.14501, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13500)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14501)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtNtCs14kWLkQVSKO_14deltalake_core5table7builderNtBO_17DeltaTableBuilder4load0ECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull align 8 %i.bon)
          to label %bb.yc unwind label %bb.yb

bb.yb:                                            ; preds = %bb.yd, %bb.ya
  %i.boo = landingpad { ptr, i32 }
          cleanup
  br label %bb.ot

bb.yc:                                            ; preds = %bb.ya
  br i1 %.sroa.0108.1.i, label %bb.yd, label %bb.ye

bb.yd:                                            ; preds = %bb.yc
  %.sroa.3510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %.sroa.3510.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(80) %.sroa.7506, i64 80, i1 false)
  store i64 %.sroa.7110.1.i, ptr %i.b, align 16, !noalias !2735
  %.sroa.2509.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.11111.1.i, ptr %.sroa.2509.0..sroa_idx, align 8, !noalias !2735
  invoke void @_RNvXNtCs14kWLkQVSKO_14deltalake_core16delta_datafusionNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtNtB4_6errors15DeltaTableErrorE4from(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.cv, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(96) %i.b)
          to label %_RNvXsq_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultINtNtB7_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE13from_residualCsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.yb

_RNvXsq_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultINtNtB7_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE13from_residualCsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.yd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.os

bb.ye:                                            ; preds = %bb.yc
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7515)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7515, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.8507, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6514)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.6514, ptr noundef nonnull align 16 dereferenceable(80) %.sroa.7506, i64 80, i1 false)
  store i64 %.sroa.6109.0.i, ptr %i.bon, align 8
  %.sroa.4512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 880
  store i64 %.sroa.7110.1.i, ptr %.sroa.4512.0..sroa_idx, align 8
  %.sroa.5513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 888
  store i64 %.sroa.11111.1.i, ptr %.sroa.5513.0..sroa_idx, align 8
  %.sroa.6514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 896
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.6514.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.6514, i64 80, i1 false)
  %.sroa.7515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 976
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7515.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7515, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6514)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7515)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0493)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ci)
  invoke void @_RNvMs7_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_providerNtNtB9_5table10DeltaTable14table_provider(ptr noalias noundef nonnull sret([168 x i8]) align 8 captures(none) dereferenceable(168) %i.ci, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bon)
          to label %bb.yg unwind label %bb.yf

bb.yf:                                            ; preds = %bb.ye
  %i.bop = landingpad { ptr, i32 }
          cleanup
  br label %bb.yh

bb.yg:                                            ; preds = %bb.ye
  %i.boq = invoke { ptr, ptr } @_RNvXs6_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_providerNtB5_20TableProviderBuilderNtNtNtCsbvkFyIu7lgC_4core6future11into_future10IntoFuture11into_future(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(168) %i.ci)
          to label %bb.yj unwind label %bb.yi     ; 2 uses

bb.yh:                                            ; preds = %bb.yi, %bb.yf
  %.pn24 = phi { ptr, i32 } [ %i.bor, %bb.yi ], [ %i.bop, %bb.yf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci)
  br label %.body204

bb.yi:                                            ; preds = %bb.yg
  %i.bor = landingpad { ptr, i32 }
          cleanup
  br label %bb.yh

bb.yj:                                            ; preds = %bb.yg
  %i.bos = extractvalue { ptr, ptr } %i.boq, 0
  %i.bot = extractvalue { ptr, ptr } %i.boq, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci)
  %i.bou = getelementptr inbounds nuw i8, ptr %1, i64 992
  store ptr %i.bos, ptr %i.bou, align 8
  %i.bov = getelementptr inbounds nuw i8, ptr %1, i64 1000
  store ptr %i.bot, ptr %i.bov, align 8
  br label %bb.yl

.body204:                                         ; preds = %bb.yt, %bb.ys, %bb.yk, %bb.yh
  %.pn36 = phi { ptr, i32 } [ %.pn24, %bb.yh ], [ %i.bpa, %bb.yk ], [ %i.bpm, %bb.ys ], [ %i.bpm, %bb.yt ]
  %i.bow = getelementptr inbounds nuw i8, ptr %1, i64 872
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(120) %i.bow) #31
          to label %.body209 unwind label %bb.im

.body209:                                         ; preds = %bb.aac, %bb.aad, %bb.yy, %bb.yx, %bb.zd, %.body204, %bb.ot
  %.pn38.pn.pn.pn = phi { ptr, i32 } [ %.pn38.pn.pn, %bb.ot ], [ %.pn36, %.body204 ], [ %.pn.i207, %bb.yx ], [ %.pn.i207, %bb.yy ], [ %i.bqf, %bb.zd ], [ %.pn.i244, %bb.aad ], [ %.pn.i244, %bb.aac ] ; 2 uses
  %i.box = getelementptr inbounds nuw i8, ptr %1, i64 865
  %i.boy = load i8, ptr %i.box, align 1, !range !243, !noundef !4
  %i.boz = trunc nuw i8 %i.boy to i1
  br i1 %i.boz, label %bb.abc, label %bb.ov

bb.yk:                                            ; preds = %bb.yl
  %i.bpa = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch)
  %.val78 = load ptr, ptr %i.bpc, align 8
  %i.bpb = getelementptr i8, ptr %1, i64 1000
  %.val79 = load ptr, ptr %i.bpb, align 8, !nonnull !4, !align !18, !noundef !4
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr %.val78, ptr nonnull %.val79) #31
          to label %.body204 unwind label %bb.im

bb.yl:                                            ; preds = %bb.b, %bb.yj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ch)
  %i.bpc = getelementptr inbounds nuw i8, ptr %1, i64 992 ; 3 uses
  invoke void @_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB10_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB8_6marker4SendEL_EEB1v_4pollCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.ch, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bpc, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.ym unwind label %bb.yk

bb.ym:                                            ; preds = %bb.yl
  %i.bpd = load i64, ptr %i.ch, align 8, !range !2738, !noundef !4 ; 3 uses
  %i.bpe = icmp eq i64 %i.bpd, 21
  br i1 %i.bpe, label %bb.yn, label %bb.yo

bb.yn:                                            ; preds = %bb.ym
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch)
  store i64 21, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cu)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ct)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cq)
  br label %common.ret

bb.yo:                                            ; preds = %bb.ym
  %.sroa.3527.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %.sroa.3527.0.copyload = load ptr, ptr %.sroa.3527.0..sroa_idx, align 8 ; 3 uses
  %.sroa.5528.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %.sroa.5528.0.copyload = load ptr, ptr %.sroa.5528.0..sroa_idx, align 8 ; 3 uses
  %.sroa.7529.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7529, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7529.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch)
  %.val = load ptr, ptr %i.bpc, align 8           ; 5 uses
  %i.bpf = getelementptr i8, ptr %1, i64 1000
  %.val77 = load ptr, ptr %i.bpf, align 8, !nonnull !4, !align !18, !noundef !4 ; 5 uses
  %i.bpg = load ptr, ptr %.val77, align 8, !invariant.load !4 ; 2 uses
  %.not.i.i203 = icmp eq ptr %i.bpg, null
  br i1 %.not.i.i203, label %bb.yq, label %bb.yp

bb.yp:                                            ; preds = %bb.yo
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.bpg(ptr noundef nonnull %.val)
          to label %bb.yq unwind label %bb.ys

bb.yq:                                            ; preds = %bb.yp, %bb.yo
  %i.bph = getelementptr inbounds nuw i8, ptr %.val77, i64 8
  %i.bpi = load i64, ptr %i.bph, align 8, !range !15, !invariant.load !4 ; 2 uses
  %i.bpj = icmp eq i64 %i.bpi, 0
  br i1 %i.bpj, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.yr

bb.yr:                                            ; preds = %bb.yq
  %i.bpk = getelementptr inbounds nuw i8, ptr %.val77, i64 16
  %i.bpl = load i64, ptr %i.bpk, align 8, !range !16, !invariant.load !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.bpi, i64 noundef range(i64 1, 536870913) %i.bpl) #24
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.ys:                                            ; preds = %bb.yp
  %i.bpm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bpn = getelementptr inbounds nuw i8, ptr %.val77, i64 8
  %i.bpo = load i64, ptr %i.bpn, align 8, !range !15, !invariant.load !4 ; 2 uses
  %i.bpp = icmp eq i64 %i.bpo, 0
  br i1 %i.bpp, label %.body204, label %bb.yt

bb.yt:                                            ; preds = %bb.ys
  %i.bpq = getelementptr inbounds nuw i8, ptr %.val77, i64 16
  %i.bpr = load i64, ptr %i.bpq, align 8, !range !16, !invariant.load !4
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.bpo, i64 noundef range(i64 1, 536870913) %i.bpr) #24
  br label %.body204

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.yr, %bb.yq
  %.not.i206 = icmp eq i64 %i.bpd, 20
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 872 ; 4 uses
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 944 ; 2 uses
  br i1 %.not.i206, label %bb.yu, label %bb.zz

bb.yu:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3527.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5528.0.copyload) ]
  %i.bps = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  store ptr %.sroa.3527.0.copyload, ptr %i.bps, align 8
  %i.bpt = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  store ptr %.sroa.5528.0.copyload, ptr %i.bpt, align 8
  store i64 20, ptr %i.cv, align 8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs14kWLkQVSKO_14deltalake_core5table5state15DeltaTableStateEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(32) %4)
          to label %bb.yw unwind label %bb.yv

bb.yv:                                            ; preds = %bb.yu
  %i.bpu = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core5table7builder16DeltaTableConfigECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(120) %3) #31
          to label %bb.yx unwind label %bb.zc

bb.yw:                                            ; preds = %bb.yu
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core5table7builder16DeltaTableConfigECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(120) %3)
          to label %bb.za unwind label %bb.yz

bb.yx:                                            ; preds = %bb.yz, %bb.yv
  %.pn.i207 = phi { ptr, i32 } [ %i.bpz, %bb.yz ], [ %i.bpu, %bb.yv ] ; 2 uses
  %i.bpv = getelementptr inbounds nuw i8, ptr %1, i64 976 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2739)
  call void @llvm.experimental.noalias.scope.decl(metadata !2742)
  %i.bpw = load ptr, ptr %i.bpv, align 8, !alias.scope !2745, !nonnull !4, !noundef !4
  %i.bpx = atomicrmw sub ptr %i.bpw, i64 1 release, align 8, !noalias !2748
  %i.bpy = icmp eq i64 %i.bpx, 1
  br i1 %i.bpy, label %bb.yy, label %.body209

bb.yy:                                            ; preds = %bb.yx
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bpv) #33
          to label %.body209 unwind label %bb.zc

bb.yz:                                            ; preds = %bb.yw
  %i.bpz = landingpad { ptr, i32 }
          cleanup
  br label %bb.yx

bb.za:                                            ; preds = %bb.yw
  %i.bqa = getelementptr inbounds nuw i8, ptr %1, i64 976 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2749)
  call void @llvm.experimental.noalias.scope.decl(metadata !2752)
  %i.bqb = load ptr, ptr %i.bqa, align 8, !alias.scope !2755, !nonnull !4, !noundef !4
  %i.bqc = atomicrmw sub ptr %i.bqb, i64 1 release, align 8, !noalias !2756
  %i.bqd = icmp eq i64 %i.bqc, 1
  br i1 %i.bqd, label %bb.zb, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.zb:                                            ; preds = %bb.za
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bqa) #33
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.zd

bb.zc:                                            ; preds = %bb.yy, %bb.yv
  %i.bqe = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

bb.zd:                                            ; preds = %bb.aag, %bb.zb
  %i.bqf = landingpad { ptr, i32 }
          cleanup
  br label %.body209

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.za, %bb.zb
  %i.bqg = getelementptr inbounds nuw i8, ptr %1, i64 865
  store i8 0, ptr %i.bqg, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cq)
  %i.bqh = getelementptr inbounds nuw i8, ptr %1, i64 864
  store i8 0, ptr %i.bqh, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ct)
  %i.bqi = getelementptr inbounds nuw i8, ptr %1, i64 866
  store i8 0, ptr %i.bqi, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cu)
  %i.bqj = getelementptr inbounds nuw i8, ptr %1, i64 608 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bqj)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i212 unwind label %bb.ze

bb.ze:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  %i.bqk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bqj)
          to label %.body213 unwind label %bb.zf

bb.zf:                                            ; preds = %bb.ze
  %i.bql = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i212: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bqj)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit216 unwind label %bb.zg

bb.zg:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i212
  %i.bqm = landingpad { ptr, i32 }
          cleanup
  br label %.body213

.body213:                                         ; preds = %bb.ze, %bb.zg
  %eh.lpad-body214 = phi { ptr, i32 } [ %i.bqm, %bb.zg ], [ %i.bqk, %bb.ze ]
  %i.bqn = getelementptr inbounds nuw i8, ptr %1, i64 632
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bqn) #31
          to label %.body219 unwind label %bb.im

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit216: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i212
  %i.bqo = getelementptr inbounds nuw i8, ptr %1, i64 632 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bqo)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i218 unwind label %bb.zh

bb.zh:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit216
  %i.bqp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bqo)
          to label %.body219 unwind label %bb.zi

bb.zi:                                            ; preds = %bb.zh
  %i.bqq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i218: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit216
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bqo)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit222 unwind label %bb.zj

.body219:                                         ; preds = %bb.zj, %bb.zh, %.body213
  %.pn26 = phi { ptr, i32 } [ %eh.lpad-body214, %.body213 ], [ %i.bqs, %bb.zj ], [ %i.bqp, %bb.zh ]
  %i.bqr = getelementptr inbounds nuw i8, ptr %1, i64 656
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bqr) #31
          to label %.body225 unwind label %bb.im

bb.zj:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i218
  %i.bqs = landingpad { ptr, i32 }
          cleanup
  br label %.body219

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit222: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i218
  %i.bqt = getelementptr inbounds nuw i8, ptr %1, i64 656 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bqt)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i224 unwind label %bb.zk

bb.zk:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit222
  %i.bqu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bqt)
          to label %.body225 unwind label %bb.zl

bb.zl:                                            ; preds = %bb.zk
  %i.bqv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i224: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit222
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bqt)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit228 unwind label %bb.zm

.body225:                                         ; preds = %bb.zm, %bb.zk, %.body219
  %.pn28 = phi { ptr, i32 } [ %.pn26, %.body219 ], [ %i.bqx, %bb.zm ], [ %i.bqu, %bb.zk ]
  %i.bqw = getelementptr inbounds nuw i8, ptr %1, i64 680
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models10ColumnInfoEEB1h_(ptr noalias noundef align 8 dereferenceable(24) %i.bqw) #31
          to label %.body230 unwind label %bb.im

bb.zm:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i224
  %i.bqx = landingpad { ptr, i32 }
          cleanup
  br label %.body225

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit228: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i224
  %i.bqy = getelementptr inbounds nuw i8, ptr %1, i64 680 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models10ColumnInfoENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropBJ_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bqy)
          to label %bb.zo unwind label %bb.zn

bb.zn:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit228
  %i.bqz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models10ColumnInfoENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropBQ_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bqy)
          to label %.body230 unwind label %bb.zp

bb.zo:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit228
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models10ColumnInfoENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropBQ_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bqy)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models10ColumnInfoEEB1h_.exit unwind label %bb.zq

bb.zp:                                            ; preds = %bb.zn
  %i.bra = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

.body230:                                         ; preds = %bb.zq, %bb.zn, %.body225
  %.pn30 = phi { ptr, i32 } [ %.pn28, %.body225 ], [ %i.brc, %bb.zq ], [ %i.bqz, %bb.zn ]
  %i.brb = getelementptr inbounds nuw i8, ptr %1, i64 704
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.brb) #31
          to label %.body234 unwind label %bb.im

bb.zq:                                            ; preds = %bb.zo
  %i.brc = landingpad { ptr, i32 }
          cleanup
  br label %.body230

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models10ColumnInfoEEB1h_.exit: ; preds = %bb.zo
  %i.brd = getelementptr inbounds nuw i8, ptr %1, i64 704 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.brd)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i233 unwind label %bb.zr

bb.zr:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models10ColumnInfoEEB1h_.exit
  %i.bre = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.brd)
          to label %.body234 unwind label %bb.zs

bb.zs:                                            ; preds = %bb.zr
  %i.brf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i233: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models10ColumnInfoEEB1h_.exit
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.brd)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit237 unwind label %bb.zt

.body234:                                         ; preds = %bb.zt, %bb.zr, %.body230
  %.pn32 = phi { ptr, i32 } [ %.pn30, %.body230 ], [ %i.brh, %bb.zt ], [ %i.bre, %bb.zr ]
  %i.brg = getelementptr inbounds nuw i8, ptr %1, i64 752
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(24) %i.brg) #31
          to label %.body238 unwind label %bb.im

bb.zt:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i233
  %i.brh = landingpad { ptr, i32 }
          cleanup
  br label %.body234

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit237: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i233
  %i.bri = getelementptr inbounds nuw i8, ptr %1, i64 752 ; 4 uses
  %i.brj = load i64, ptr %i.bri, align 8, !range !93, !alias.scope !2757, !noundef !4
  %i.brk = icmp eq i64 %i.brj, -9223372036854775808
  br i1 %i.brk, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit280.invoke, label %bb.zu

bb.zu:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit237
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bri)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i unwind label %bb.zv

bb.zv:                                            ; preds = %bb.zu
  %i.brl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bri)
          to label %.body238 unwind label %bb.zw

bb.zw:                                            ; preds = %bb.zv
  %i.brm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %bb.zu
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bri)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit280.invoke unwind label %bb.zx

.body238:                                         ; preds = %bb.zx, %bb.zv, %.body234
  %.pn34 = phi { ptr, i32 } [ %.pn32, %.body234 ], [ %i.bro, %bb.zx ], [ %i.brl, %bb.zv ]
  %i.brn = getelementptr inbounds nuw i8, ptr %1, i64 776
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.brn)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.im

bb.zx:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  %i.bro = landingpad { ptr, i32 }
          cleanup
  br label %.body238

bb.zy:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit280.invoke
  %i.brp = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit243: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit280.invoke, %bb.jq, %bb.jm
  %i.brq = getelementptr inbounds nuw i8, ptr %1, i64 867
  store i8 0, ptr %i.brq, align 1
  %i.brr = getelementptr inbounds nuw i8, ptr %1, i64 868
  store i8 0, ptr %i.brr, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.cv, i64 40, i1 false)
  br label %common.ret

bb.zz:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  %.sroa.4533.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cv, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4533.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7529, i64 16, i1 false)
  store i64 %i.bpd, ptr %i.cv, align 8, !alias.scope !2760
  %.sroa.2531.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  store ptr %.sroa.3527.0.copyload, ptr %.sroa.2531.0..sroa_idx, align 8, !alias.scope !2760
  %.sroa.3532.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  store ptr %.sroa.5528.0.copyload, ptr %.sroa.3532.0..sroa_idx, align 8, !alias.scope !2760
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs14kWLkQVSKO_14deltalake_core5table5state15DeltaTableStateEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(32) %4)
          to label %bb.aab unwind label %bb.aaa

bb.aaa:                                           ; preds = %bb.zz
  %i.brs = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core5table7builder16DeltaTableConfigECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(120) %3) #31
          to label %bb.aac unwind label %bb.aah

bb.aab:                                           ; preds = %bb.zz
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core5table7builder16DeltaTableConfigECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(120) %3)
          to label %bb.aaf unwind label %bb.aae

bb.aac:                                           ; preds = %bb.aae, %bb.aaa
  %.pn.i244 = phi { ptr, i32 } [ %i.brx, %bb.aae ], [ %i.brs, %bb.aaa ] ; 2 uses
  %i.brt = getelementptr inbounds nuw i8, ptr %1, i64 976 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2764)
  call void @llvm.experimental.noalias.scope.decl(metadata !2767)
  %i.bru = load ptr, ptr %i.brt, align 8, !alias.scope !2770, !nonnull !4, !noundef !4
  %i.brv = atomicrmw sub ptr %i.bru, i64 1 release, align 8, !noalias !2773
  %i.brw = icmp eq i64 %i.brv, 1
  br i1 %i.brw, label %bb.aad, label %.body209

bb.aad:                                           ; preds = %bb.aac
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.brt) #33
          to label %.body209 unwind label %bb.aah

bb.aae:                                           ; preds = %bb.aab
  %i.brx = landingpad { ptr, i32 }
          cleanup
  br label %bb.aac

bb.aaf:                                           ; preds = %bb.aab
  %i.bry = getelementptr inbounds nuw i8, ptr %1, i64 976 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2774)
  call void @llvm.experimental.noalias.scope.decl(metadata !2777)
  %i.brz = load ptr, ptr %i.bry, align 8, !alias.scope !2780, !nonnull !4, !noundef !4
  %i.bsa = atomicrmw sub ptr %i.brz, i64 1 release, align 8, !noalias !2781
  %i.bsb = icmp eq i64 %i.bsa, 1
  br i1 %i.bsb, label %bb.aag, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableECsgO8S5jLFugx_23deltalake_catalog_unity.exit249

bb.aag:                                           ; preds = %bb.aaf
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bry) #33
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableECsgO8S5jLFugx_23deltalake_catalog_unity.exit249 unwind label %bb.zd

bb.aah:                                           ; preds = %bb.aad, %bb.aaa
  %i.bsc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

bb.aai:                                           ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableECsgO8S5jLFugx_23deltalake_catalog_unity.exit249
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ct)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit251 unwind label %bb.aaj

bb.aaj:                                           ; preds = %bb.aai
  %i.bsd = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit286

bb.aak:                                           ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  %i.bse = landingpad { ptr, i32 }
          cleanup
  br label %.body160

.body160:                                         ; preds = %bb.oz, %bb.aak
  %eh.lpad-body161 = phi { ptr, i32 } [ %i.bse, %bb.aak ], [ %i.arc, %bb.oz ]
  %i.bsf = getelementptr inbounds nuw i8, ptr %1, i64 632
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bsf) #31
          to label %.body254 unwind label %bb.im

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  %i.bsg = getelementptr inbounds nuw i8, ptr %1, i64 632 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bsg)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i253 unwind label %bb.aal

bb.aal:                                           ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  %i.bsh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bsg)
          to label %.body254 unwind label %bb.aam

bb.aam:                                           ; preds = %bb.aal
  %i.bsi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i253: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bsg)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit257 unwind label %bb.aan

.body254:                                         ; preds = %bb.aan, %bb.aal, %.body160
  %.pn52 = phi { ptr, i32 } [ %eh.lpad-body161, %.body160 ], [ %i.bsk, %bb.aan ], [ %i.bsh, %bb.aal ]
  %i.bsj = getelementptr inbounds nuw i8, ptr %1, i64 656
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bsj) #31
          to label %.body260 unwind label %bb.im

bb.aan:                                           ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i253
  %i.bsk = landingpad { ptr, i32 }
          cleanup
  br label %.body254

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit257: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i253
  %i.bsl = getelementptr inbounds nuw i8, ptr %1, i64 656 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bsl)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i259 unwind label %bb.aao

bb.aao:                                           ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit257
  %i.bsm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bsl)
          to label %.body260 unwind label %bb.aap

bb.aap:                                           ; preds = %bb.aao
  %i.bsn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i259: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit257
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bsl)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit263 unwind label %bb.aaq

.body260:                                         ; preds = %bb.aaq, %bb.aao, %.body254
  %.pn54 = phi { ptr, i32 } [ %.pn52, %.body254 ], [ %i.bsp, %bb.aaq ], [ %i.bsm, %bb.aao ]
  %i.bso = getelementptr inbounds nuw i8, ptr %1, i64 680
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models10ColumnInfoEEB1h_(ptr noalias noundef align 8 dereferenceable(24) %i.bso) #31
          to label %.body266 unwind label %bb.im

bb.aaq:                                           ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i259
  %i.bsp = landingpad { ptr, i32 }
          cleanup
  br label %.body260

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit263: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i259
  %i.bsq = getelementptr inbounds nuw i8, ptr %1, i64 680 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models10ColumnInfoENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropBJ_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bsq)
          to label %bb.aas unwind label %bb.aar

bb.aar:                                           ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit263
  %i.bsr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models10ColumnInfoENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropBQ_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bsq)
          to label %.body266 unwind label %bb.aat

bb.aas:                                           ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit263
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models10ColumnInfoENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropBQ_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bsq)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models10ColumnInfoEEB1h_.exit268 unwind label %bb.aau

bb.aat:                                           ; preds = %bb.aar
  %i.bss = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

.body266:                                         ; preds = %bb.aau, %bb.aar, %.body260
  %.pn56 = phi { ptr, i32 } [ %.pn54, %.body260 ], [ %i.bsu, %bb.aau ], [ %i.bsr, %bb.aar ]
  %i.bst = getelementptr inbounds nuw i8, ptr %1, i64 704
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bst) #31
          to label %.body271 unwind label %bb.im

bb.aau:                                           ; preds = %bb.aas
  %i.bsu = landingpad { ptr, i32 }
          cleanup
  br label %.body266

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models10ColumnInfoEEB1h_.exit268: ; preds = %bb.aas
  %i.bsv = getelementptr inbounds nuw i8, ptr %1, i64 704 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bsv)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i270 unwind label %bb.aav

bb.aav:                                           ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models10ColumnInfoEEB1h_.exit268
  %i.bsw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bsv)
          to label %.body271 unwind label %bb.aaw

bb.aaw:                                           ; preds = %bb.aav
  %i.bsx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i270: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models10ColumnInfoEEB1h_.exit268
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bsv)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit274 unwind label %bb.aax

.body271:                                         ; preds = %bb.aax, %bb.aav, %.body266
  %.pn58 = phi { ptr, i32 } [ %.pn56, %.body266 ], [ %i.bsz, %bb.aax ], [ %i.bsw, %bb.aav ]
  %i.bsy = getelementptr inbounds nuw i8, ptr %1, i64 752
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(24) %i.bsy) #31
          to label %.body277 unwind label %bb.im

bb.aax:                                           ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i270
  %i.bsz = landingpad { ptr, i32 }
          cleanup
  br label %.body271

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit274: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i270
  %i.bta = getelementptr inbounds nuw i8, ptr %1, i64 752 ; 4 uses
  %i.btb = load i64, ptr %i.bta, align 8, !range !93, !alias.scope !2782, !noundef !4
  %i.btc = icmp eq i64 %i.btb, -9223372036854775808
  br i1 %i.btc, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit280.invoke, label %bb.aay

bb.aay:                                           ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit274
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bta)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i276 unwind label %bb.aaz

end_hunk_3
