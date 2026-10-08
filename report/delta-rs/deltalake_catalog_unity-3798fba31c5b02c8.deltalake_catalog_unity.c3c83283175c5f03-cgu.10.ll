Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake_catalog_unity-3798fba31c5b02c8.deltalake_catalog_unity.c3c83283175c5f03-cgu.10?download=true
inline.NumInlined: 769
inline.NumDeleted: 291
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvMNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4tickNtB2_7Channel8try_recv:bb.a
  %i.g = extractvalue { i64, i32 } %i.e, 1        ; 2 uses
  %i.h = icmp eq i64 %i.c, %i.f
  %i.i = icmp slt i64 %i.c, %i.f
  %i.j = icmp samesign ult i32 %i.d, %i.g
  %spec.select4 = select i1 %i.h, i1 %i.j, i1 %i.i
  br i1 %spec.select4, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %i.m = phi i32 [ %i.g, %.lr.ph ], [ %i.ac, %bb.d ] ; 2 uses
  %i.n = phi i64 [ %i.f, %.lr.ph ], [ %i.ab, %bb.d ] ; 2 uses
  %i.o = phi i32 [ %i.d, %.lr.ph ], [ %i.z, %bb.d ]
  %i.p = phi i64 [ %i.c, %.lr.ph ], [ %i.y, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.q = load i64, ptr %i.k, align 8, !noundef !4
  %i.r = load i32, ptr %i.l, align 8, !range !17, !noundef !4
  %i.s = tail call { i64, i32 } @_RNvXs_NtCs2pqxYH9ZEk8_3std4timeNtB4_7InstantINtNtNtCsbvkFyIu7lgC_4core3ops5arith3AddNtNtBN_4time8DurationE3add(i64 noundef %i.p, i32 noundef %i.o, i64 noundef %i.q, i32 noundef %i.r) ; 2 uses
  %i.t = extractvalue { i64, i32 } %i.s, 0
  %i.u = extractvalue { i64, i32 } %i.s, 1
  call void @_RINvNtNtCslrv8JwANqSj_15crossbeam_utils6atomic11atomic_cell28atomic_compare_exchange_weakNtNtCs2pqxYH9ZEk8_3std4time7InstantECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull %1, i64 noundef %i.n, i32 noundef %i.m, i64 noundef %i.t, i32 noundef %i.u)
  %i.v = load i64, ptr %i.a, align 8, !range !15, !noundef !4
  %i.w = icmp eq i64 %i.v, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.w, label %bb.c, label %bb.d

._crit_edge:                                      ; preds = %bb.d, %bb.a
  store i8 0, ptr %0, align 8
  br label %bb.e

bb.c:                                             ; preds = %bb.b
  store i64 %i.n, ptr %0, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.x = tail call { i64, i32 } @_RNvMNtCs2pqxYH9ZEk8_3std4timeNtB2_7Instant3now() ; 2 uses
  %i.y = extractvalue { i64, i32 } %i.x, 0        ; 3 uses
  %i.z = extractvalue { i64, i32 } %i.x, 1        ; 2 uses
  %i.aa = tail call { i64, i32 } @_RINvNtNtCslrv8JwANqSj_15crossbeam_utils6atomic11atomic_cell11atomic_loadNtNtCs2pqxYH9ZEk8_3std4time7InstantECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull %1) ; 2 uses
  %i.ab = extractvalue { i64, i32 } %i.aa, 0      ; 3 uses
  %i.ac = extractvalue { i64, i32 } %i.aa, 1      ; 2 uses
  %i.ad = icmp eq i64 %i.y, %i.ab
  %i.ae = icmp slt i64 %i.y, %i.ab
  %i.af = icmp samesign ult i32 %i.z, %i.ac
  %spec.select = select i1 %i.ad, i1 %i.af, i1 %i.ae
  br i1 %spec.select, label %._crit_edge, label %bb.b

bb.e:                                             ; preds = %bb.c, %._crit_edge
  %.lcssa9.sink = phi i32 [ %i.m, %bb.c ], [ 1000000000, %._crit_edge ]
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.lcssa9.sink, ptr %i.ag, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtCseKAYRfgxGTE_14event_listener3sysINtB5_5InneruE6removeCsgO8S5jLFugx_23deltalake_catalog_unity(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %1, ptr nofree noundef nonnull align 8 captures(address) %2, i1 noundef zeroext %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  %i.d = alloca [40 x i8], align 8                ; 8 uses
  %i.e = load i64, ptr %2, align 8, !range !15, !noundef !4
  %i.f = trunc nuw i64 %i.e to i1
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !noundef !4 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !noundef !4 ; 5 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.f, label %bb.e

bb.c:                                             ; preds = %bb.a
  store i8 4, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCseKAYRfgxGTE_14event_listener3sys4LinkuEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, %bb.c
  ret void

bb.e:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store ptr %i.k, ptr %i.l, align 8
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  store ptr %i.k, ptr %1, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.not19 = icmp eq ptr %i.k, null
  br i1 %.not19, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store ptr %i.i, ptr %i.m, align 8
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.i, ptr %i.n, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !noundef !4 ; 2 uses
  %.not20 = icmp ne ptr %i.p, null
  %i.q = icmp eq ptr %i.p, %i.g
  %or.cond = select i1 %.not20, i1 %i.q, i1 false
  br i1 %or.cond, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %.sroa.011.0.copyload = load i64, ptr %2, align 8
  store i64 0, ptr %2, align 8
  %i.r = trunc nuw i64 %.sroa.011.0.copyload to i1
  br i1 %i.r, label %bb.m, label %bb.n, !prof !12

bb.l:                                             ; preds = %bb.j
  store ptr %i.k, ptr %i.o, align 8
  br label %bb.k

bb.m:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull align 8 dereferenceable(40) %i.g, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  store i8 0, ptr %i.d, align 8
  %i.s = load i8, ptr %i.c, align 8, !range !7, !noundef !4
  switch i8 %i.s, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCseKAYRfgxGTE_14event_listener3sys4LinkuEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.critedge [
    i8 1, label %bb.o
    i8 3, label %bb.o
  ]

bb.n:                                             ; preds = %bb.k
  tail call void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #30
  unreachable

bb.o:                                             ; preds = %bb.m, %bb.m
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !noundef !4
  %i.v = add i64 %i.u, -1
  store i64 %i.v, ptr %i.t, align 8
  br i1 %3, label %bb.t, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCseKAYRfgxGTE_14event_listener3sys4LinkuEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.critedge

bb.p:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtCseKAYRfgxGTE_14event_listener5StateuEECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !448)
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !449, !noundef !4 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.x, null
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  br i1 %.not.i.i.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.val1.i.i.i.i.i = load ptr, ptr %i.y, align 8, !alias.scope !449, !noundef !4
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !noalias !449, !nonnull !4, !noundef !4
  call void %i.aa(ptr noundef %.val1.i.i.i.i.i), !noalias !449, !inline_history !431
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCseKAYRfgxGTE_14event_listener3sys4LinkuEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.r:                                             ; preds = %bb.p
  call void @llvm.experimental.noalias.scope.decl(metadata !450)
  call void @llvm.experimental.noalias.scope.decl(metadata !451)
  call void @llvm.experimental.noalias.scope.decl(metadata !452)
  %i.ab = load ptr, ptr %i.y, align 8, !alias.scope !453, !nonnull !4, !noundef !4
  %i.ac = atomicrmw sub ptr %i.ab, i64 1 release, align 8, !noalias !453
  %i.ad = icmp eq i64 %i.ac, 1
  br i1 %i.ad, label %bb.s, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCseKAYRfgxGTE_14event_listener3sys4LinkuEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.s:                                             ; preds = %bb.r
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtCs218QlbNgm4w_7parking5InnerE9drop_slowCseKAYRfgxGTE_14event_listener(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.y) #27
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCseKAYRfgxGTE_14event_listener3sys4LinkuEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCseKAYRfgxGTE_14event_listener3sys4LinkuEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.critedge: ; preds = %bb.o, %bb.m
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !noundef !4
  %i.ag = add i64 %i.af, -1
  store i64 %i.ag, ptr %i.ae, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !454)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !455)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !456)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !457)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCseKAYRfgxGTE_14event_listener3sys4LinkuEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCseKAYRfgxGTE_14event_listener3sys4LinkuEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCseKAYRfgxGTE_14event_listener3sys4LinkuEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.critedge, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtCseKAYRfgxGTE_14event_listener5StateuEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, %bb.q, %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.d

bb.t:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  store i8 3, ptr %i.c, align 8
  %i.ah = load i8, ptr %i.b, align 8, !range !7, !noundef !4 ; 2 uses
  %i.ai = icmp eq i8 %i.ah, 1
  br i1 %i.ai, label %bb.u, label %bb.v, !prof !13

bb.u:                                             ; preds = %bb.t
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.ak = load i8, ptr %i.aj, align 1, !range !5, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.ak, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  store i8 1, ptr %i.am, align 1
  invoke fastcc void @_RINvMs0_NtCseKAYRfgxGTE_14event_listener3sysINtB6_5InneruE6notifyINtNtB8_6notify13GenericNotifyNCNvB2_6remove0EECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(40) %1, ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.a)
          to label %5 unwind label %bb.w

bb.v:                                             ; preds = %5, %bb.t
  %4 = phi i8 [ %.pr, %5 ], [ %i.ah, %bb.t ]      ; 2 uses
  %i.an = icmp eq i8 %4, 1
  br i1 %i.an, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtCseKAYRfgxGTE_14event_listener5StateuEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.aa

bb.w:                                             ; preds = %bb.u
  %i.ao = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ap = load i8, ptr %i.b, align 8, !range !7, !noundef !4
  %i.aq = icmp eq i8 %i.ap, 1
  br i1 %i.aq, label %bb.x, label %bb.y

5:                                                ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.pr = load i8, ptr %i.b, align 8
  br label %bb.v

bb.x:                                             ; preds = %bb.af, %bb.y, %bb.w
  %.pn = phi { ptr, i32 } [ %i.bf, %bb.af ], [ %i.ao, %bb.w ], [ %i.ao, %bb.y ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtCseKAYRfgxGTE_14event_listener5StateuEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(24) %i.c) #29
          to label %bb.ag unwind label %bb.z

bb.y:                                             ; preds = %bb.w
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtCseKAYRfgxGTE_14event_listener5StateuEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(24) %i.b) #29
          to label %bb.x unwind label %bb.z

bb.z:                                             ; preds = %bb.ag, %bb.y, %bb.x
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtCseKAYRfgxGTE_14event_listener5StateuEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.ad, %bb.aa, %bb.ac, %bb.ae, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.pre = load i8, ptr %i.d, align 8, !range !7, !alias.scope !458
  %i.as = icmp eq i8 %.pre, 2
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !noundef !4
  %i.av = add i64 %i.au, -1
  store i64 %i.av, ptr %i.at, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.experimental.noalias.scope.decl(metadata !454)
  call void @llvm.experimental.noalias.scope.decl(metadata !455)
  call void @llvm.experimental.noalias.scope.decl(metadata !456)
  call void @llvm.experimental.noalias.scope.decl(metadata !457)
  br i1 %i.as, label %bb.p, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCseKAYRfgxGTE_14event_listener3sys4LinkuEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.aa:                                            ; preds = %bb.v
  call void @llvm.experimental.noalias.scope.decl(metadata !459)
  %i.aw = icmp eq i8 %4, 2
  br i1 %i.aw, label %bb.ab, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtCseKAYRfgxGTE_14event_listener5StateuEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.ab:                                            ; preds = %bb.aa
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !460)
  %i.ay = load ptr, ptr %i.ax, align 8, !alias.scope !461, !noundef !4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ay, null
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  br i1 %.not.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %.val1.i.i = load ptr, ptr %i.az, align 8, !alias.scope !461, !noundef !4
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !noalias !461, !nonnull !4, !noundef !4
  invoke void %i.bb(ptr noundef %.val1.i.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtCseKAYRfgxGTE_14event_listener5StateuEECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.af, !inline_history !462

bb.ad:                                            ; preds = %bb.ab
  call void @llvm.experimental.noalias.scope.decl(metadata !463)
  call void @llvm.experimental.noalias.scope.decl(metadata !464)
  call void @llvm.experimental.noalias.scope.decl(metadata !465)
  %i.bc = load ptr, ptr %i.az, align 8, !alias.scope !466, !nonnull !4, !noundef !4
  %i.bd = atomicrmw sub ptr %i.bc, i64 1 release, align 8, !noalias !466
  %i.be = icmp eq i64 %i.bd, 1
  br i1 %i.be, label %bb.ae, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtCseKAYRfgxGTE_14event_listener5StateuEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.ae:                                            ; preds = %bb.ad
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtCs218QlbNgm4w_7parking5InnerE9drop_slowCseKAYRfgxGTE_14event_listener(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.az) #27
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtCseKAYRfgxGTE_14event_listener5StateuEECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ac
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.ag:                                            ; preds = %bb.x
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCseKAYRfgxGTE_14event_listener3sys4LinkuEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(40) %i.d) #29
          to label %bb.ah unwind label %bb.z

bb.ah:                                            ; preds = %bb.ag
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMs0_NtCshhQzAC5dGUF_17crossbeam_channel5wakerNtB5_9SyncWaker10disconnect(ptr noundef nonnull align 8 %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs5_NtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutexINtB5_5MutexNtNtCshhQzAC5dGUF_17crossbeam_channel5waker5WakerE4lockCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull align 8 %0)
  call void @llvm.experimental.noalias.scope.decl(metadata !472)
  %i.c = load i64, ptr %i.b, align 8, !range !15, !alias.scope !472, !noalias !473, !noundef !4
  %i.d = trunc nuw i64 %i.c to i1
  br i1 %i.d, label %bb.b, label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtCshhQzAC5dGUF_17crossbeam_channel5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCsgO8S5jLFugx_23deltalake_catalog_unity.exit, !prof !13

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !474
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !472, !noalias !473, !nonnull !4, !align !11, !noundef !4
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.h = load i8, ptr %i.g, align 8, !range !5, !alias.scope !472, !noalias !473, !noundef !4
  store ptr %i.f, ptr %i.a, align 8, !noalias !474
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.h, ptr %i.i, align 8, !noalias !474
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @30, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @31, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #31
          to label %bb.d unwind label %bb.c, !noalias !472

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison11PoisonErrorINtNtBJ_5mutex10MutexGuardNtNtCshhQzAC5dGUF_17crossbeam_channel5waker5WakerEEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) #29
          to label %common.resume unwind label %bb.e, !noalias !472

bb.d:                                             ; preds = %bb.b
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #28, !noalias !472
  unreachable

common.resume:                                    ; preds = %bb.h, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.c ], [ %lpad.phi, %bb.h ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtCshhQzAC5dGUF_17crossbeam_channel5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !472, !noalias !473, !nonnull !4, !align !11, !noundef !4 ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.o = load i8, ptr %i.n, align 8, !range !5, !alias.scope !472, !noalias !473, !noundef !4 ; 2 uses
  %i.p = trunc nuw i8 %i.o to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !475)
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !475, !nonnull !4, !noundef !4 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !475, !noundef !4 ; 2 uses
  %.idx.i = mul nuw nsw i64 %i.u, 24
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 %.idx.i
  %i.w = icmp eq i64 %i.u, 0
  br i1 %i.w, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtCshhQzAC5dGUF_17crossbeam_channel5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCsgO8S5jLFugx_23deltalake_catalog_unity.exit, %.noexc5
  %.sroa.0.03.i = phi ptr [ %i.x, %.noexc5 ], [ %i.s, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtCshhQzAC5dGUF_17crossbeam_channel5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCsgO8S5jLFugx_23deltalake_catalog_unity.exit ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i, i64 24 ; 2 uses
  %.sroa.0.0.val.i = load ptr, ptr %.sroa.0.03.i, align 8, !noalias !475, !nonnull !4, !noundef !4
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.0.val.i, i64 32
  %i.z = cmpxchg ptr %i.y, i64 0, i64 2 acq_rel acquire, align 8, !noalias !475
  %.sroa.18.0.in.i.i.i = extractvalue { i64, i1 } %i.z, 1
  br i1 %.sroa.18.0.in.i.i.i, label %bb.f, label %.noexc5

._crit_edge.i:                                    ; preds = %.noexc5, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtCshhQzAC5dGUF_17crossbeam_channel5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCsgO8S5jLFugx_23deltalake_catalog_unity.exit
  invoke fastcc void @_RNvMNtCshhQzAC5dGUF_17crossbeam_channel5wakerNtB2_5Waker6notify(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.q) #26
          to label %_RNvMNtCshhQzAC5dGUF_17crossbeam_channel5wakerNtB2_5Waker10disconnect.exit unwind label %.loopexit.split-lp

bb.f:                                             ; preds = %.lr.ph.i
  %i.aa = load ptr, ptr %.sroa.0.03.i, align 8, !noalias !475, !nonnull !4, !noundef !4
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !noalias !475, !nonnull !4, !noundef !4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 40 ; 2 uses
  %i.ae = atomicrmw xchg ptr %i.ad, i32 1 release, align 4, !noalias !475
  %i.af = icmp eq i32 %i.ae, -1
  br i1 %i.af, label %bb.g, label %.noexc5

bb.g:                                             ; preds = %bb.f
  %i.ag = invoke noundef zeroext i1 @_RNvNtNtNtNtCs2pqxYH9ZEk8_3std3sys3pal4unix5futex10futex_wake(ptr noundef nonnull align 4 %i.ad)
          to label %.noexc5 unwind label %.loopexit ; 0 uses

.noexc5:                                          ; preds = %bb.g, %bb.f, %.lr.ph.i
  %i.ah = icmp eq ptr %i.x, %i.v
  br i1 %i.ah, label %._crit_edge.i, label %.lr.ph.i

.loopexit:                                        ; preds = %bb.g
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

.loopexit.split-lp:                               ; preds = %._crit_edge.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.h:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtCshhQzAC5dGUF_17crossbeam_channel5waker5WakerEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr nonnull %i.m, i8 %i.o) #29
          to label %common.resume unwind label %bb.o

_RNvMNtCshhQzAC5dGUF_17crossbeam_channel5wakerNtB2_5Waker10disconnect.exit: ; preds = %._crit_edge.i
  %i.ai = load i64, ptr %i.t, align 8, !noundef !4 ; 2 uses
  %i.aj = icmp ult i64 %i.ai, 384307168202282326
  call void @llvm.assume(i1 %i.aj)
  %i.ak = icmp eq i64 %i.ai, 0
  br i1 %i.ak, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RNvMNtCshhQzAC5dGUF_17crossbeam_channel5wakerNtB2_5Waker10disconnect.exit
  %i.al = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.am = load i64, ptr %i.al, align 8, !noundef !4 ; 2 uses
  %i.an = icmp ult i64 %i.am, 384307168202282326
  call void @llvm.assume(i1 %i.an)
  %i.ao = icmp eq i64 %i.am, 0
  %i.ap = zext i1 %i.ao to i8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_RNvMNtCshhQzAC5dGUF_17crossbeam_channel5wakerNtB2_5Waker10disconnect.exit
  %.sroa.0.0 = phi i8 [ %i.ap, %bb.i ], [ 0, %_RNvMNtCshhQzAC5dGUF_17crossbeam_channel5wakerNtB2_5Waker10disconnect.exit ]
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 56
  store atomic i8 %.sroa.0.0, ptr %i.aq seq_cst, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  br i1 %i.p, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.at = and i64 %i.as, 9223372036854775807
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.l, !prof !12

bb.l:                                             ; preds = %bb.k
  %i.av = call noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #27
  br i1 %i.av, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  store atomic i8 1, ptr %i.ar monotonic, align 4
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.m, %bb.l, %bb.k, %bb.j
  %i.aw = atomicrmw xchg ptr %i.m, i32 0 release, align 4
  %i.ax = icmp eq i32 %i.aw, 2
  br i1 %i.ax, label %bb.n, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtCshhQzAC5dGUF_17crossbeam_channel5waker5WakerEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, !prof !13

bb.n:                                             ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  call void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.m)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtCshhQzAC5dGUF_17crossbeam_channel5waker5WakerEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtCshhQzAC5dGUF_17crossbeam_channel5waker5WakerEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.n
  ret void
end_hunk_0
