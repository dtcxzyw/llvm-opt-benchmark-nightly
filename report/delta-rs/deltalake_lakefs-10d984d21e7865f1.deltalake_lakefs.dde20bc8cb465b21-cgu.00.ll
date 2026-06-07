inline.NumInlined: 1367
inline.NumDeleted: 519
begin_hunk_0_@_RNvMNtCsj34PGqTgg0L_16deltalake_lakefs8logstoreNtB2_14LakeFSLogStore15build_new_store:.split
  %i.r = alloca [8 x i8], align 8                 ; 10 uses
  %i.s = alloca [24 x i8], align 8                ; 6 uses
  %i.t = alloca [16 x i8], align 8                ; 5 uses
  %i.u = alloca [16 x i8], align 8                ; 5 uses
  %i.v = alloca [24 x i8], align 8                ; 4 uses
  %i.w = alloca [24 x i8], align 8                ; 13 uses
  %i.x = alloca [88 x i8], align 8                ; 6 uses
  %.sroa.65 = alloca [88 x i8], align 8           ; 7 uses
  %.sroa.6 = alloca [88 x i8], align 8            ; 7 uses
  %i.y = alloca [88 x i8], align 8                ; 13 uses
  %i.z = alloca [8 x i8], align 8                 ; 6 uses
  store ptr %2, ptr %i.z, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.65)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.ab = load i32, ptr %i.aa, align 4, !noundef !3 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val = load ptr, ptr %i.ac, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val100 = load i64, ptr %i.ad, align 8, !noundef !3 ; 3 uses
  %i.ae = zext i32 %i.ab to i64                   ; 5 uses
  %i.af = icmp eq i32 %i.ab, 0
  br i1 %i.af, label %_RINvMs_Cseo6ZV82fEK1_3urlNtB5_3Url5sliceINtNtNtCsbvkFyIu7lgC_4core3ops5range7RangeTomEECsj34PGqTgg0L_16deltalake_lakefs.exit, label %bb.a

bb.a:                                             ; preds = %.split
  %.not.i.i.i.i = icmp ugt i64 %.val100, %i.ae
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ag = icmp eq i64 %.val100, %i.ae
  br i1 %i.ag, label %_RINvMs_Cseo6ZV82fEK1_3urlNtB5_3Url5sliceINtNtNtCsbvkFyIu7lgC_4core3ops5range7RangeTomEECsj34PGqTgg0L_16deltalake_lakefs.exit, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %.val, i64 %i.ae
  %i.ai = load i8, ptr %i.ah, align 1, !alias.scope !2128, !noundef !3
  %i.aj = icmp sgt i8 %i.ai, -65
  br i1 %i.aj, label %_RINvMs_Cseo6ZV82fEK1_3urlNtB5_3Url5sliceINtNtNtCsbvkFyIu7lgC_4core3ops5range7RangeTomEECsj34PGqTgg0L_16deltalake_lakefs.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void @_RNvNtCsbvkFyIu7lgC_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val100, i64 noundef 0, i64 noundef range(i64 0, 4294967296) %i.ae, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @329) #35
  unreachable

_RINvMs_Cseo6ZV82fEK1_3urlNtB5_3Url5sliceINtNtNtCsbvkFyIu7lgC_4core3ops5range7RangeTomEECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %.split, %bb.b, %bb.c
  store ptr %.val, ptr %i.u, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i64 %i.ae, ptr %i.ak, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store ptr %i.u, ptr %i.t, align 8
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCsj34PGqTgg0L_16deltalake_lakefs, ptr %.sroa.435.0..sroa_idx, align 8
  call void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.v, ptr noundef nonnull @80, ptr noundef nonnull %i.t), !noalias !2135
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  %i.al = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !nonnull !3, !noundef !3
  %i.an = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.ao = load i64, ptr %i.an, align 8, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.ap = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr null, ptr %i.ap, align 8
  store ptr null, ptr %i.f, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr null, ptr %i.aq, align 8
  invoke void @_RNvMCseo6ZV82fEK1_3urlNtB2_12ParseOptions5parse(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.x, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.f, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.am, i64 noundef %i.ao)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.g, %_RINvMs_Cseo6ZV82fEK1_3urlNtB5_3Url5sliceINtNtNtCsbvkFyIu7lgC_4core3ops5range7RangeTomEECsj34PGqTgg0L_16deltalake_lakefs.exit
  %i.ar = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w) #32
          to label %common.resume unwind label %bb.aw

bb.f:                                             ; preds = %_RINvMs_Cseo6ZV82fEK1_3urlNtB5_3Url5sliceINtNtNtCsbvkFyIu7lgC_4core3ops5range7RangeTomEECsj34PGqTgg0L_16deltalake_lakefs.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.as = load i64, ptr %i.x, align 8, !range !60, !noundef !3
  %i.at = icmp eq i64 %i.as, -9223372036854775808
  br i1 %i.at, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.au = load ptr, ptr %i.z, align 8, !nonnull !3, !align !24, !noundef !3
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.au)
          to label %bb.be unwind label %bb.e

bb.h:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.65, ptr noundef nonnull align 8 dereferenceable(88) %i.x, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.65, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.65)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.y, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.6, i64 88, i1 false)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.av = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %.body unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i: ; preds = %bb.h
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit unwind label %bb.k

.body:                                            ; preds = %bb.ax, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs3JXekYNd0JR_7dashmap6mapref3one3RefNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEECsj34PGqTgg0L_16deltalake_lakefs.exit, %bb.m, %bb.i, %bb.k
  %.pn96 = phi { ptr, i32 } [ %.pn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs3JXekYNd0JR_7dashmap6mapref3one3RefNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEECsj34PGqTgg0L_16deltalake_lakefs.exit ], [ %i.av, %bb.i ], [ %i.ax, %bb.k ], [ %.pn, %bb.m ], [ %i.ep, %bb.ax ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(88) %i.y) #32
          to label %common.resume unwind label %bb.aw

bb.k:                                             ; preds = %bb.at, %bb.q, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.ay = invoke noundef nonnull ptr @_RNvMs0_NtCs14kWLkQVSKO_14deltalake_core8logstoreNtB5_14LogStoreConfig20object_store_factory(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(312) %1)
          to label %bb.l unwind label %bb.k       ; 2 uses

bb.l:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit
  store ptr %i.ay, ptr %i.r, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  invoke void @_RINvXs2_Cs3JXekYNd0JR_7dashmapINtB6_7DashMapNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEINtNtB6_1t3MapBG_B14_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE4__getBG_ECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.s, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.az, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.y)
          to label %bb.o unwind label %bb.n

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs3JXekYNd0JR_7dashmap6mapref3one3RefNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %.body114, %bb.s, %bb.n
  %.pn = phi { ptr, i32 } [ %i.bd, %bb.n ], [ %eh.lpad-body115, %bb.s ], [ %eh.lpad-body115, %.body114 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2138)
  call void @llvm.experimental.noalias.scope.decl(metadata !2141)
  %i.ba = load ptr, ptr %i.r, align 8, !alias.scope !2144, !nonnull !3, !noundef !3
  %i.bb = atomicrmw sub ptr %i.ba, i64 1 release, align 8, !noalias !2144
  %i.bc = icmp eq i64 %i.bb, 1
  br i1 %i.bc, label %bb.m, label %.body

bb.m:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs3JXekYNd0JR_7dashmap6mapref3one3RefNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEECsj34PGqTgg0L_16deltalake_lakefs.exit
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtCs3JXekYNd0JR_7dashmap7DashMapNtCseo6ZV82fEK1_3url3UrlIBx_DNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEE9drop_slowB1M_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.r) #33
          to label %.body unwind label %bb.aw

bb.n:                                             ; preds = %bb.as, %bb.l
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs3JXekYNd0JR_7dashmap6mapref3one3RefNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.o:                                             ; preds = %bb.l
  %i.be = load ptr, ptr %i.s, align 8, !noundef !3 ; 5 uses
  %.not = icmp eq ptr %i.be, null
  br i1 %.not, label %bb.p, label %bb.t

bb.p:                                             ; preds = %bb.o
  call void @llvm.experimental.noalias.scope.decl(metadata !2145)
  call void @llvm.experimental.noalias.scope.decl(metadata !2148)
  %i.bf = load ptr, ptr %i.r, align 8, !alias.scope !2151, !nonnull !3, !noundef !3
  %i.bg = atomicrmw sub ptr %i.bf, i64 1 release, align 8, !noalias !2151
  %i.bh = icmp eq i64 %i.bg, 1
  br i1 %i.bh, label %bb.q, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtCs3JXekYNd0JR_7dashmap7DashMapNtCseo6ZV82fEK1_3url3UrlIBH_DNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEECsj34PGqTgg0L_16deltalake_lakefs.exit108

bb.q:                                             ; preds = %bb.p
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtCs3JXekYNd0JR_7dashmap7DashMapNtCseo6ZV82fEK1_3url3UrlIBx_DNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEE9drop_slowB1M_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.r) #33
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtCs3JXekYNd0JR_7dashmap7DashMapNtCseo6ZV82fEK1_3url3UrlIBH_DNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEECsj34PGqTgg0L_16deltalake_lakefs.exit108 unwind label %bb.k

bb.r:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit.i, %bb.ac, %.noexc111, %bb.ab, %bb.z, %bb.ak, %bb.ai, %bb.ah, %bb.ae, %bb.w, %bb.v
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %.body114

.body114:                                         ; preds = %bb.ap, %bb.r
  %eh.lpad-body115 = phi { ptr, i32 } [ %i.bi, %bb.r ], [ %i.dz, %bb.ap ] ; 2 uses
  %i.bj = atomicrmw sub ptr %i.be, i64 4 release, align 8
  %i.bk = icmp eq i64 %i.bj, 6
  br i1 %i.bk, label %bb.s, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs3JXekYNd0JR_7dashmap6mapref3one3RefNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEECsj34PGqTgg0L_16deltalake_lakefs.exit, !prof !1055

bb.s:                                             ; preds = %.body114
  invoke void @_RNvMs0_NtCs3JXekYNd0JR_7dashmap4lockNtB5_9RawRwLock18unlock_shared_slow(ptr noundef nonnull align 8 %i.be)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs3JXekYNd0JR_7dashmap6mapref3one3RefNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEECsj34PGqTgg0L_16deltalake_lakefs.exit unwind label %bb.aw

bb.t:                                             ; preds = %bb.o
  %.sroa.5134.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.sroa.5134.0.copyload = load ptr, ptr %.sroa.5134.0..sroa_idx, align 8 ; 2 uses
  %i.bl = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.bm = icmp ult i64 %i.bl, 2
  br i1 %i.bm, label %bb.u, label %bb.af

bb.u:                                             ; preds = %bb.t
  %i.bn = load atomic i8, ptr getelementptr inbounds (i8, ptr @_RNvNvMNtCsj34PGqTgg0L_16deltalake_lakefs8logstoreNtB4_14LakeFSLogStore15build_new_store10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.bn, label %bb.v [
    i8 0, label %bb.af
    i8 1, label %bb.w
    i8 2, label %bb.w
  ], !prof !2152

bb.v:                                             ; preds = %bb.u
  %i.bo = invoke noundef i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMNtCsj34PGqTgg0L_16deltalake_lakefs8logstoreNtB4_14LakeFSLogStore15build_new_store10___CALLSITE)
          to label %bb.x unwind label %bb.r       ; 2 uses

bb.w:                                             ; preds = %bb.u, %bb.u, %bb.x
  %.sroa.014.0 = phi i8 [ %i.bo, %bb.x ], [ %i.bn, %bb.u ], [ %i.bn, %bb.u ]
  %i.bp = load ptr, ptr @_RNvNvMNtCsj34PGqTgg0L_16deltalake_lakefs8logstoreNtB4_14LakeFSLogStore15build_new_store10___CALLSITE, align 8, !nonnull !3, !align !24, !noundef !3
  %i.bq = invoke noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bp, i8 noundef %.sroa.014.0)
          to label %bb.y unwind label %bb.r

bb.x:                                             ; preds = %bb.v
  %i.br = icmp eq i8 %i.bo, 0
  br i1 %i.br, label %bb.af, label %bb.w

bb.y:                                             ; preds = %bb.w
  br i1 %i.bq, label %bb.z, label %bb.af

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.bs = load ptr, ptr @_RNvNvMNtCsj34PGqTgg0L_16deltalake_lakefs8logstoreNtB4_14LakeFSLogStore15build_new_store10___CALLSITE, align 8, !nonnull !3, !align !24, !noundef !3 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store ptr %i.y, ptr %i.n, align 8
  %.sroa.450.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr @_RNvXs2_Cseo6ZV82fEK1_3urlNtB5_3UrlNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.450.0..sroa_idx, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr %i.z, ptr %i.bu, align 8
  %.sroa.454.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtRNtCseo6ZV82fEK1_3url3UrlNtB6_7Display3fmtCsj34PGqTgg0L_16deltalake_lakefs, ptr %.sroa.454.0..sroa_idx, align 8
  store ptr @81, ptr %i.o, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.n, ptr %i.bv, align 8
  store ptr %i.o, ptr %i.p, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr @16, ptr %i.bw, align 8
  store i64 1, ptr %i.q, align 8
  %.sroa.016.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.p, ptr %.sroa.016.sroa.4.0..sroa_idx, align 8
  %.sroa.016.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 1, ptr %.sroa.016.sroa.5.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store ptr %i.bt, ptr %.sroa.4.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bs, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.q)
          to label %.noexc110 unwind label %bb.r

.noexc110:                                        ; preds = %bb.z
  %i.bx = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !2153
  %i.by = icmp eq i8 %i.bx, 0
  br i1 %i.by, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %.noexc110
  %i.bz = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !2153 ; 2 uses
  %i.ca = icmp ult i64 %i.bz, 6
  call void @llvm.assume(i1 %i.ca)
  %i.cb = icmp samesign ugt i64 %i.bz, 3
  br i1 %i.cb, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.cc = load ptr, ptr @_RNvNvMNtCsj34PGqTgg0L_16deltalake_lakefs8logstoreNtB4_14LakeFSLogStore15build_new_store10___CALLSITE, align 8, !noalias !2153, !nonnull !3, !align !24, !noundef !3 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 32
  %i.ce = load ptr, ptr %i.cd, align 8, !nonnull !3, !noundef !3
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 40
  %i.cg = load i64, ptr %i.cf, align 8, !noundef !3
  store i64 4, ptr %i.d, align 8, !noalias !2153
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.ce, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !2153
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %i.cg, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !2153
  %i.ch = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %.noexc111 unwind label %bb.r  ; 2 uses

.noexc111:                                        ; preds = %bb.ab
  %i.ci = extractvalue { ptr, ptr } %i.ch, 0      ; 2 uses
  %i.cj = extractvalue { ptr, ptr } %i.ch, 1      ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8, !invariant.load !3, !nonnull !3
  %i.cm = invoke noundef zeroext i1 %i.cl(ptr noundef %i.ci, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d) #34
          to label %.noexc112 unwind label %bb.r, !inline_history !2156

.noexc112:                                        ; preds = %.noexc111
  br i1 %i.cm, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %.noexc112
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.cc, ptr noundef nonnull %i.ci, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.cj, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.q)
          to label %bb.ad unwind label %bb.r

bb.ad:                                            ; preds = %.noexc112, %bb.aa, %.noexc110, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.aj, %bb.al, %bb.ag, %bb.af, %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.cn = load ptr, ptr %.sroa.5134.0.copyload, align 8, !nonnull !3, !noundef !3
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.5134.0.copyload, i64 8
  %i.cp = load ptr, ptr %i.co, align 8, !nonnull !3, !align !24, !noundef !3 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.cr = load i64, ptr %i.cq, align 8, !range !5, !invariant.load !3
  %i.cs = add nsw i64 %i.cr, -1
  %i.ct = and i64 %i.cs, -16
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.ct
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %i.cx = load ptr, ptr %i.cw, align 8, !invariant.load !3, !nonnull !3
  %i.cy = load ptr, ptr %i.z, align 8, !nonnull !3, !align !24, !noundef !3
  invoke void %i.cx(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %i.g, ptr noundef nonnull %i.cv, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.cy, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(224) %1)
          to label %bb.am unwind label %bb.r

bb.af:                                            ; preds = %bb.x, %bb.u, %bb.t, %bb.y
  %i.cz = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %i.da = icmp eq i8 %i.cz, 0
  br i1 %i.da, label %bb.ag, label %bb.ae

bb.ag:                                            ; preds = %bb.af
  %i.db = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.dc = icmp ult i64 %i.db, 6
  call void @llvm.assume(i1 %i.dc)
  %i.dd = icmp samesign ugt i64 %i.db, 3
  br i1 %i.dd, label %bb.ah, label %bb.ae

bb.ah:                                            ; preds = %bb.ag
  %i.de = load ptr, ptr @_RNvNvMNtCsj34PGqTgg0L_16deltalake_lakefs8logstoreNtB4_14LakeFSLogStore15build_new_store10___CALLSITE, align 8, !nonnull !3, !align !24, !noundef !3 ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 32
  %i.dg = load ptr, ptr %i.df, align 8, !nonnull !3, !noundef !3
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 40
  %i.di = load i64, ptr %i.dh, align 8, !noundef !3
  store i64 4, ptr %i.m, align 8
  %.sroa.359.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.dg, ptr %.sroa.359.0..sroa_idx, align 8
  %.sroa.560.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 %i.di, ptr %.sroa.560.0..sroa_idx, align 8
  %i.dj = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %bb.ai unwind label %bb.r      ; 2 uses

bb.ai:                                            ; preds = %bb.ah
  %i.dk = extractvalue { ptr, ptr } %i.dj, 0      ; 2 uses
  %i.dl = extractvalue { ptr, ptr } %i.dj, 1      ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  %i.dn = load ptr, ptr %i.dm, align 8, !invariant.load !3, !nonnull !3
  %i.do = invoke noundef zeroext i1 %i.dn(ptr noundef %i.dk, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.m)
          to label %bb.aj unwind label %bb.r

bb.aj:                                            ; preds = %bb.ai
  br i1 %i.do, label %bb.ak, label %bb.ae

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.dp = load ptr, ptr @_RNvNvMNtCsj34PGqTgg0L_16deltalake_lakefs8logstoreNtB4_14LakeFSLogStore15build_new_store10___CALLSITE, align 8, !nonnull !3, !align !24, !noundef !3
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %i.y, ptr %i.i, align 8
  %.sroa.464.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @_RNvXs2_Cseo6ZV82fEK1_3urlNtB5_3UrlNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.464.0..sroa_idx, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.z, ptr %i.dr, align 8
  %.sroa.468.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtRNtCseo6ZV82fEK1_3url3UrlNtB6_7Display3fmtCsj34PGqTgg0L_16deltalake_lakefs, ptr %.sroa.468.0..sroa_idx, align 8
  store ptr @81, ptr %i.j, align 8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.i, ptr %i.ds, align 8
  store ptr %i.j, ptr %i.k, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @16, ptr %i.dt, align 8
  store i64 1, ptr %i.l, align 8
  %.sroa.470.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.k, ptr %.sroa.470.0..sroa_idx, align 8
  %.sroa.571.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 1, ptr %.sroa.571.0..sroa_idx, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr %i.dq, ptr %i.du, align 8
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.de, ptr noundef nonnull %i.dk, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.dl, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.l)
          to label %bb.al unwind label %bb.r

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.ae

bb.am:                                            ; preds = %bb.ae
  %i.dv = load i64, ptr %i.g, align 16, !range !1107, !noundef !3 ; 2 uses
  %.not94 = icmp eq i64 %i.dv, -9223372036854775711
  %i.dw = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.072.0.copyload = load ptr, ptr %i.dw, align 8 ; 2 uses
end_hunk_0
begin_hunk_1_@_RNvYNtNtCs4tdlwR1I4n2_7parquet6errors12ParquetErrorNtNtCsbvkFyIu7lgC_4core5error5Error7type_idCsj34PGqTgg0L_16deltalake_lakefs:bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @356, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorNtNtCsbvkFyIu7lgC_4core5error5Error11descriptionCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias readonly align 16 captures(none) %0) unnamed_addr #1 {
bb.a:
  ret { ptr, i64 } { ptr @352, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorNtNtCsbvkFyIu7lgC_4core5error5Error7provideCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias readonly align 16 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #1 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorNtNtCsbvkFyIu7lgC_4core5error5Error7type_idCsj34PGqTgg0L_16deltalake_lakefs(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 16 captures(none) %1) unnamed_addr #7 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @357, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtCseo6ZV82fEK1_3url6parser10ParseErrorNtNtCsbvkFyIu7lgC_4core5error5Error11descriptionCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias readonly captures(none) %0) unnamed_addr #1 {
bb.a:
  ret { ptr, i64 } { ptr @352, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCseo6ZV82fEK1_3url6parser10ParseErrorNtNtCsbvkFyIu7lgC_4core5error5Error6sourceCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias readonly captures(none) %0) unnamed_addr #1 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCseo6ZV82fEK1_3url6parser10ParseErrorNtNtCsbvkFyIu7lgC_4core5error5Error7provideCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias readonly captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #1 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCseo6ZV82fEK1_3url6parser10ParseErrorNtNtCsbvkFyIu7lgC_4core5error5Error7type_idCsj34PGqTgg0L_16deltalake_lakefs(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly captures(none) %1) unnamed_addr #7 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @358, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorNtNtCsbvkFyIu7lgC_4core5error5Error11descriptionCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #1 {
bb.a:
  ret { ptr, i64 } { ptr @352, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorNtNtCsbvkFyIu7lgC_4core5error5Error7provideCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #1 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorNtNtCsbvkFyIu7lgC_4core5error5Error7type_idCsj34PGqTgg0L_16deltalake_lakefs(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #7 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @359, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorNtNtCsbvkFyIu7lgC_4core5error5Error11descriptionCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #1 {
bb.a:
  ret { ptr, i64 } { ptr @352, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorNtNtCsbvkFyIu7lgC_4core5error5Error7provideCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #1 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorNtNtCsbvkFyIu7lgC_4core5error5Error7type_idCsj34PGqTgg0L_16deltalake_lakefs(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #7 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @360, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCshmPyUV8PP35_6chrono6format10ParseErrorNtNtCsbvkFyIu7lgC_4core5error5Error6sourceCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias readonly captures(none) %0) unnamed_addr #1 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCshmPyUV8PP35_6chrono6format10ParseErrorNtNtCsbvkFyIu7lgC_4core5error5Error7provideCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias readonly captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #1 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCshmPyUV8PP35_6chrono6format10ParseErrorNtNtCsbvkFyIu7lgC_4core5error5Error7type_idCsj34PGqTgg0L_16deltalake_lakefs(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly captures(none) %1) unnamed_addr #7 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @361, i64 16, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvYNtNtCsj34PGqTgg0L_16deltalake_lakefs8logstore14LakeFSLogStoreNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStore16object_store_urlB6_(ptr dead_on_unwind noalias noundef writable sret([88 x i8]) align 8 captures(address) dereferenceable(88) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(512) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 224
  tail call void @_RNvNtCs14kWLkQVSKO_14deltalake_core8logstore16object_store_url(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_RNvYNtNtCsj34PGqTgg0L_16deltalake_lakefs8logstore14LakeFSLogStoreNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStore23is_delta_table_locationB6_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(512) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [168 x i8], align 8               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  store i8 0, ptr %i.b, align 8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !2399
  %i.c = tail call noundef align 8 dereferenceable_or_null(168) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 16, 1361) 168, i64 noundef range(i64 8, 17) 8) #31, !noalias !2399 ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxNCNvYNtNtCsj34PGqTgg0L_16deltalake_lakefs8logstore14LakeFSLogStoreNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStore23is_delta_table_location0E3newBN_.exit, !prof !1055

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 168) #36
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvYNtNtCsj34PGqTgg0L_16deltalake_lakefs8logstore14LakeFSLogStoreNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStore23is_delta_table_location0EBP_(ptr noundef nonnull align 8 dereferenceable(168) %i.a) #32
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.e

_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxNCNvYNtNtCsj34PGqTgg0L_16deltalake_lakefs8logstore14LakeFSLogStoreNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStore23is_delta_table_location0E3newBN_.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.c, ptr noundef nonnull align 8 dereferenceable(168) %i.a, i64 168, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.g = insertvalue { ptr, ptr } poison, ptr %i.c, 0
  %i.h = insertvalue { ptr, ptr } %i.g, ptr @362, 1
  ret { ptr, ptr } %i.h
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_RNvYNtNtCsj34PGqTgg0L_16deltalake_lakefs8logstore14LakeFSLogStoreNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStore6engineB6_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(512) %0, ptr noalias nofree noundef readonly align 1 captures(none) dead_on_return dereferenceable(17) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvXs1_NtCsj34PGqTgg0L_16deltalake_lakefs8logstoreNtB5_14LakeFSLogStoreNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStore17root_object_store(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(512) %0, ptr noalias noundef nonnull readonly align 1 captures(none) dereferenceable(17) %1) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = tail call { ptr, ptr } @_RNvNtCs14kWLkQVSKO_14deltalake_core8logstore10get_engine(ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(184) %i.c)
  ret { ptr, ptr } %i.d
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvYNtNtCsj34PGqTgg0L_16deltalake_lakefs8logstore14LakeFSLogStoreNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStore6to_uriB6_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(512) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 224
  tail call void @_RNvNtCs14kWLkQVSKO_14deltalake_core8logstore6to_uri(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_RNvYNtNtCsj34PGqTgg0L_16deltalake_lakefs8logstore14LakeFSLogStoreNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStore7refreshB6_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(512) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !2402
  %i.a = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 16, 1361) 16, i64 noundef range(i64 8, 17) 8) #31, !noalias !2402 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %.noexc, label %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxNCNvYNtNtCsj34PGqTgg0L_16deltalake_lakefs8logstore14LakeFSLogStoreNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStore7refresh0E3newBN_.exit, !prof !1055

.noexc:                                           ; preds = %bb.a
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #36
  unreachable

_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxNCNvYNtNtCsj34PGqTgg0L_16deltalake_lakefs8logstore14LakeFSLogStoreNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStore7refresh0E3newBN_.exit: ; preds = %bb.a
  store ptr %0, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 0, ptr %.sroa.4.0..sroa_idx, align 8
  %i.c = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.d = insertvalue { ptr, ptr } %i.c, ptr @363, 1
  ret { ptr, ptr } %i.d
}

; Function Attrs: nonlazybind uwtable
define internal noundef nonnull align 8 ptr @_RNvYNtNtCsj34PGqTgg0L_16deltalake_lakefs8logstore14LakeFSLogStoreNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStore8log_pathB6_(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load atomic i32, ptr getelementptr inbounds (i8, ptr @_RNvNtCs14kWLkQVSKO_14deltalake_core8logstore14DELTA_LOG_PATH, i64 24) acquire, align 8
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCsjyY8HP3IvQ6_12object_store4path4PathE5force0ECsj34PGqTgg0L_16deltalake_lakefs.exit, label %bb.b, !prof !1668

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @_RNvNtCs14kWLkQVSKO_14deltalake_core8logstore14DELTA_LOG_PATH, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  call void @_RNvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds (i8, ptr @_RNvNtCs14kWLkQVSKO_14deltalake_core8logstore14DELTA_LOG_PATH, i64 24), i1 noundef zeroext true, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCsjyY8HP3IvQ6_12object_store4path4PathE5force0ECsj34PGqTgg0L_16deltalake_lakefs.exit

_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCsjyY8HP3IvQ6_12object_store4path4PathE5force0ECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %bb.a, %bb.b
  ret ptr @_RNvNtCs14kWLkQVSKO_14deltalake_core8logstore14DELTA_LOG_PATH
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvYNtNtCsj34PGqTgg0L_16deltalake_lakefs8logstore14LakeFSLogStoreNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStore8root_urlB6_(ptr noalias noundef readonly align 8 captures(ret: address, read_provenance) dereferenceable(512) %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtCsjyY8HP3IvQ6_12object_store4path5ErrorNtNtCsbvkFyIu7lgC_4core5error5Error11descriptionCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #1 {
bb.a:
  ret { ptr, i64 } { ptr @352, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCsjyY8HP3IvQ6_12object_store4path5ErrorNtNtCsbvkFyIu7lgC_4core5error5Error7provideCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #1 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCsjyY8HP3IvQ6_12object_store4path5ErrorNtNtCsbvkFyIu7lgC_4core5error5Error7type_idCsj34PGqTgg0L_16deltalake_lakefs(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #7 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @364, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorNtNtCsbvkFyIu7lgC_4core5error5Error11descriptionCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #1 {
bb.a:
  ret { ptr, i64 } { ptr @352, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorNtNtCsbvkFyIu7lgC_4core5error5Error7provideCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #1 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorNtNtCsbvkFyIu7lgC_4core5error5Error7type_idCsj34PGqTgg0L_16deltalake_lakefs(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #7 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @365, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel5error5ErrorNtNtCsbvkFyIu7lgC_4core5error5Error11descriptionCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #1 {
bb.a:
  ret { ptr, i64 } { ptr @352, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel5error5ErrorNtNtCsbvkFyIu7lgC_4core5error5Error7provideCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #1 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel5error5ErrorNtNtCsbvkFyIu7lgC_4core5error5Error7type_idCsj34PGqTgg0L_16deltalake_lakefs(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #7 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @366, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorNtNtCsbvkFyIu7lgC_4core5error5Error11descriptionCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #1 {
bb.a:
  ret { ptr, i64 } { ptr @352, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorNtNtCsbvkFyIu7lgC_4core5error5Error7provideCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #1 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorNtNtCsbvkFyIu7lgC_4core5error5Error7type_idCsj34PGqTgg0L_16deltalake_lakefs(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #7 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @367, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtNtCsbvkFyIu7lgC_4core3str5error9Utf8ErrorNtNtB8_5error5Error11descriptionCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #1 {
bb.a:
  ret { ptr, i64 } { ptr @352, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtCsbvkFyIu7lgC_4core3str5error9Utf8ErrorNtNtB8_5error5Error6sourceCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #1 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCsbvkFyIu7lgC_4core3str5error9Utf8ErrorNtNtB8_5error5Error7provideCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #1 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCsbvkFyIu7lgC_4core3str5error9Utf8ErrorNtNtB8_5error5Error7type_idCsj34PGqTgg0L_16deltalake_lakefs(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #7 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @368, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts11InvalidPartNtNtCsbvkFyIu7lgC_4core5error5Error11descriptionCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #1 {
bb.a:
  ret { ptr, i64 } { ptr @352, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts11InvalidPartNtNtCsbvkFyIu7lgC_4core5error5Error6sourceCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #1 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts11InvalidPartNtNtCsbvkFyIu7lgC_4core5error5Error7provideCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #1 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts11InvalidPartNtNtCsbvkFyIu7lgC_4core5error5Error7type_idCsj34PGqTgg0L_16deltalake_lakefs(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #7 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @369, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16conflict_checker19CommitConflictErrorNtNtCsbvkFyIu7lgC_4core5error5Error11descriptionCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #1 {
bb.a:
  ret { ptr, i64 } { ptr @352, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16conflict_checker19CommitConflictErrorNtNtCsbvkFyIu7lgC_4core5error5Error7provideCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #1 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16conflict_checker19CommitConflictErrorNtNtCsbvkFyIu7lgC_4core5error5Error7type_idCsj34PGqTgg0L_16deltalake_lakefs(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #7 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @370, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorNtNtCsbvkFyIu7lgC_4core5error5Error11descriptionCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #1 {
bb.a:
  ret { ptr, i64 } { ptr @352, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorNtNtCsbvkFyIu7lgC_4core5error5Error6sourceCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #1 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorNtNtCsbvkFyIu7lgC_4core5error5Error7provideCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #1 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorNtNtCsbvkFyIu7lgC_4core5error5Error7type_idCsj34PGqTgg0L_16deltalake_lakefs(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #7 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @371, i64 16, i1 false)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #12

; Function Attrs: cold minsize nonlazybind optsize uwtable
declare hidden void @_RINvMNtNtCs2pqxYH9ZEk8_3std4sync9once_lockINtB3_8OnceLockNtCsjyY8HP3IvQ6_12object_store10PutOptionsE10initializeNCINvB2_11get_or_initNCNvNtCsj34PGqTgg0L_16deltalake_lakefs8logstore11put_options0E0zEB2d_(ptr noundef nonnull align 8) unnamed_addr #13

end_hunk_1
