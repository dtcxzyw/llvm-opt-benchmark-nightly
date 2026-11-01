Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opendal-rs/original/opendal_core-ba0671c8f10fcf8e.opendal_core.455f99aaf940afe2-cgu.10?download=true
inline.NumInlined: 670
inline.NumDeleted: 255
begin_hunk_0_@_RNvMs0_NtNtCs5XgW7KoffLW_12opendal_core5types4copyNtB5_6Copier6create:bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.k = load ptr, ptr %i.j, align 8, !invariant.load !7, !nonnull !7
  invoke void %i.k(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.a, ptr noundef nonnull %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %6, i64 noundef %7, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %8)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.m = atomicrmw add ptr %2, i64 -1 release, align 8, !noalias !1595
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %bb.c, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcDNtNtNtCs5XgW7KoffLW_12opendal_core3raw8accessor10ServiceDynEL_EEB1f_.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcDNtNtNtCs5XgW7KoffLW_12opendal_core3raw8accessor10ServiceDynEL_E9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b) #25
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcDNtNtNtCs5XgW7KoffLW_12opendal_core3raw8accessor10ServiceDynEL_EEB1f_.exit unwind label %bb.r

bb.d:                                             ; preds = %bb.a
  %i.o = load i64, ptr %i.a, align 8, !range !13, !noundef !7 ; 2 uses
  %.not = icmp eq i64 %i.o, -1
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  br i1 %.not, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.sroa.623.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.627.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.627.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.623.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.o, ptr %i.t, align 8
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.q, ptr %.sroa.425.0..sroa_idx, align 8
  %.sroa.526.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.s, ptr %.sroa.526.0..sroa_idx, align 8
  store i64 1, ptr %0, align 8
  %i.u = atomicrmw add ptr %2, i64 -1 release, align 8, !noalias !1596
  %i.v = icmp eq i64 %i.u, 1
  br i1 %i.v, label %bb.f, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcDNtNtNtCs5XgW7KoffLW_12opendal_core3raw8accessor10ServiceDynEL_EEB1f_.exit33

bb.f:                                             ; preds = %bb.e
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcDNtNtNtCs5XgW7KoffLW_12opendal_core3raw8accessor10ServiceDynEL_E9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b) #25
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcDNtNtNtCs5XgW7KoffLW_12opendal_core3raw8accessor10ServiceDynEL_EEB1f_.exit33 unwind label %bb.i

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.w, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.q, ptr %.sroa.410.0..sroa_idx, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.s, ptr %.sroa.511.0..sroa_idx, align 8
  %.sroa.612.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr null, ptr %.sroa.612.0..sroa_idx, align 8
  %.sroa.813.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i8 0, ptr %.sroa.813.0..sroa_idx, align 8
  store i64 0, ptr %0, align 8
  %i.x = atomicrmw add ptr %2, i64 -1 release, align 8, !noalias !1597
  %i.y = icmp eq i64 %i.x, 1
  br i1 %i.y, label %bb.h, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcDNtNtNtCs5XgW7KoffLW_12opendal_core3raw8accessor10ServiceDynEL_EEB1f_.exit35

bb.h:                                             ; preds = %bb.g
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcDNtNtNtCs5XgW7KoffLW_12opendal_core3raw8accessor10ServiceDynEL_E9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b) #25
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcDNtNtNtCs5XgW7KoffLW_12opendal_core3raw8accessor10ServiceDynEL_EEB1f_.exit35 unwind label %bb.i

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcDNtNtNtCs5XgW7KoffLW_12opendal_core3raw8accessor10ServiceDynEL_EEB1f_.exit: ; preds = %bb.b, %bb.c, %bb.i
  %.pn = phi { ptr, i32 } [ %i.z, %bb.i ], [ %i.l, %bb.c ], [ %i.l, %bb.b ]
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core5types7context9operation16OperationContextEBJ_(ptr noalias nofree noundef align 8 dereferenceable(32) %1) #27
          to label %common.resume unwind label %bb.r

bb.i:                                             ; preds = %bb.h, %bb.f
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcDNtNtNtCs5XgW7KoffLW_12opendal_core3raw8accessor10ServiceDynEL_EEB1f_.exit

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcDNtNtNtCs5XgW7KoffLW_12opendal_core3raw8accessor10ServiceDynEL_EEB1f_.exit35: ; preds = %bb.g, %bb.h
  call void @llvm.experimental.noalias.scope.decl(metadata !1598)
  call void @llvm.experimental.noalias.scope.decl(metadata !1599)
  call void @llvm.experimental.noalias.scope.decl(metadata !1600)
  call void @llvm.experimental.noalias.scope.decl(metadata !1601)
  %i.aa = load ptr, ptr %1, align 8, !alias.scope !1602, !nonnull !7, !noundef !7
  %i.ab = atomicrmw add ptr %i.aa, i64 -1 release, align 8, !noalias !1602
  %i.ac = icmp eq i64 %i.ab, 1
  br i1 %i.ac, label %bb.j, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types14http_transport15HttpTransporterEBH_.exit.i

bb.j:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcDNtNtNtCs5XgW7KoffLW_12opendal_core3raw8accessor10ServiceDynEL_EEB1f_.exit35
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcDNtNtNtCs5XgW7KoffLW_12opendal_core5types14http_transport16HttpTransportDynEL_E9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) #25
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types14http_transport15HttpTransporterEBH_.exit.i unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ad = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1603)
  call void @llvm.experimental.noalias.scope.decl(metadata !1604)
  call void @llvm.experimental.noalias.scope.decl(metadata !1605)
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !1606, !nonnull !7, !noundef !7
  %i.ag = atomicrmw add ptr %i.af, i64 -1 release, align 8, !noalias !1607
  %i.ah = icmp eq i64 %i.ag, 1
  br i1 %i.ah, label %bb.l, label %common.resume

bb.l:                                             ; preds = %bb.k
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcDNtNtNtNtCs5XgW7KoffLW_12opendal_core5types7execute3api7ExecuteEL_E9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ae) #25
          to label %common.resume unwind label %bb.m

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types14http_transport15HttpTransporterEBH_.exit.i: ; preds = %bb.j, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcDNtNtNtCs5XgW7KoffLW_12opendal_core3raw8accessor10ServiceDynEL_EEB1f_.exit35
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1608)
  call void @llvm.experimental.noalias.scope.decl(metadata !1609)
  call void @llvm.experimental.noalias.scope.decl(metadata !1610)
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !1611, !nonnull !7, !noundef !7
  %i.ak = atomicrmw add ptr %i.aj, i64 -1 release, align 8, !noalias !1612
  %i.al = icmp eq i64 %i.ak, 1
  br i1 %i.al, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core5types7context9operation16OperationContextEBJ_.exit.sink.split, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core5types7context9operation16OperationContextEBJ_.exit

bb.m:                                             ; preds = %bb.l
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #26
  unreachable

common.resume:                                    ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcDNtNtNtCs5XgW7KoffLW_12opendal_core3raw8accessor10ServiceDynEL_EEB1f_.exit, %bb.o, %bb.p, %bb.k, %bb.l
  %common.resume.op = phi { ptr, i32 } [ %i.aq, %bb.o ], [ %i.ad, %bb.k ], [ %i.ad, %bb.l ], [ %i.aq, %bb.p ], [ %.pn, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcDNtNtNtCs5XgW7KoffLW_12opendal_core3raw8accessor10ServiceDynEL_EEB1f_.exit ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core5types7context9operation16OperationContextEBJ_.exit.sink.split: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types14http_transport15HttpTransporterEBH_.exit.i, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types14http_transport15HttpTransporterEBH_.exit.i36
  %.sink = phi ptr [ %i.av, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types14http_transport15HttpTransporterEBH_.exit.i36 ], [ %i.ai, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types14http_transport15HttpTransporterEBH_.exit.i ]
  fence acquire
  call void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcDNtNtNtNtCs5XgW7KoffLW_12opendal_core5types7execute3api7ExecuteEL_E9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.sink) #25
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core5types7context9operation16OperationContextEBJ_.exit

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core5types7context9operation16OperationContextEBJ_.exit: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core5types7context9operation16OperationContextEBJ_.exit.sink.split, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types14http_transport15HttpTransporterEBH_.exit.i36, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types14http_transport15HttpTransporterEBH_.exit.i
  ret void

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcDNtNtNtCs5XgW7KoffLW_12opendal_core3raw8accessor10ServiceDynEL_EEB1f_.exit33: ; preds = %bb.e, %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !1613)
  call void @llvm.experimental.noalias.scope.decl(metadata !1614)
  call void @llvm.experimental.noalias.scope.decl(metadata !1615)
  call void @llvm.experimental.noalias.scope.decl(metadata !1616)
  %i.an = load ptr, ptr %1, align 8, !alias.scope !1617, !nonnull !7, !noundef !7
  %i.ao = atomicrmw add ptr %i.an, i64 -1 release, align 8, !noalias !1617
  %i.ap = icmp eq i64 %i.ao, 1
  br i1 %i.ap, label %bb.n, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types14http_transport15HttpTransporterEBH_.exit.i36

bb.n:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcDNtNtNtCs5XgW7KoffLW_12opendal_core3raw8accessor10ServiceDynEL_EEB1f_.exit33
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcDNtNtNtCs5XgW7KoffLW_12opendal_core5types14http_transport16HttpTransportDynEL_E9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) #25
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types14http_transport15HttpTransporterEBH_.exit.i36 unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1618)
  call void @llvm.experimental.noalias.scope.decl(metadata !1619)
  call void @llvm.experimental.noalias.scope.decl(metadata !1620)
  %i.as = load ptr, ptr %i.ar, align 8, !alias.scope !1621, !nonnull !7, !noundef !7
  %i.at = atomicrmw add ptr %i.as, i64 -1 release, align 8, !noalias !1622
  %i.au = icmp eq i64 %i.at, 1
  br i1 %i.au, label %bb.p, label %common.resume

bb.p:                                             ; preds = %bb.o
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcDNtNtNtNtCs5XgW7KoffLW_12opendal_core5types7execute3api7ExecuteEL_E9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ar) #25
          to label %common.resume unwind label %bb.q

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types14http_transport15HttpTransporterEBH_.exit.i36: ; preds = %bb.n, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcDNtNtNtCs5XgW7KoffLW_12opendal_core3raw8accessor10ServiceDynEL_EEB1f_.exit33
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1623)
  call void @llvm.experimental.noalias.scope.decl(metadata !1624)
  call void @llvm.experimental.noalias.scope.decl(metadata !1625)
  %i.aw = load ptr, ptr %i.av, align 8, !alias.scope !1626, !nonnull !7, !noundef !7
  %i.ax = atomicrmw add ptr %i.aw, i64 -1 release, align 8, !noalias !1627
  %i.ay = icmp eq i64 %i.ax, 1
  br i1 %i.ay, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core5types7context9operation16OperationContextEBJ_.exit.sink.split, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core5types7context9operation16OperationContextEBJ_.exit

bb.q:                                             ; preds = %bb.p
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.r:                                             ; preds = %bb.c, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcDNtNtNtCs5XgW7KoffLW_12opendal_core3raw8accessor10ServiceDynEL_EEB1f_.exit
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #26
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs0_NtNtNtCs5XgW7KoffLW_12opendal_core5types7context5writeINtB5_14WriteGeneratorINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtBb_3raw3oio5write3api8WriteDynEL_EE6reader(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(80) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noundef %4, i64 %5, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %6) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [32 x i8], align 16               ; 7 uses
  %i.d = alloca [200 x i8], align 8               ; 15 uses
  %i.e = alloca [88 x i8], align 8                ; 8 uses
  %i.f = alloca [16 x i8], align 8                ; 6 uses
  %i.g = alloca [16 x i8], align 8                ; 7 uses
  store ptr %4, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store i64 %5, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.j = load ptr, ptr %i.i, align 8, !noundef !7 ; 6 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.c, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 56 ; 3 uses
  %.not41 = icmp eq ptr %4, null
  br i1 %.not41, label %bb.g, label %bb.f

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvNtCsgxBkk5gSRhY_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 38, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @70) #22
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.g, %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.e:                                             ; preds = %bb.w, %bb.c
  unreachable

bb.f:                                             ; preds = %bb.b
  %i.m = atomicrmw add ptr %4, i64 1 monotonic, align 8
  %i.n = icmp slt i64 %i.m, 0
  br i1 %i.n, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.b
  %.sroa.513.0 = phi i64 [ undef, %bb.b ], [ %5, %bb.f ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 88 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !7, !noundef !7
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 96 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !7, !align !9, !noundef !7 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load i64, ptr %i.s, align 8, !range !11, !invariant.load !7
  %i.u = add nsw i64 %i.t, -1
  %i.v = and i64 %i.u, -16
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  %i.z = load ptr, ptr %i.y, align 8, !invariant.load !7, !nonnull !7
  invoke void %i.z(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.e, ptr noundef nonnull %i.x, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noundef %4, i64 %.sroa.513.0)
          to label %bb.i unwind label %bb.d

bb.h:                                             ; preds = %bb.f
  tail call void @llvm.trap()
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.aa = load i64, ptr %i.e, align 8, !range !13, !noundef !7 ; 2 uses
  %.not42 = icmp eq i64 %i.aa, -1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8            ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8            ; 3 uses
  br i1 %.not42, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.sroa.621.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.625.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.625.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.621.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store i64 %i.aa, ptr %0, align 8
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ac, ptr %.sroa.423.0..sroa_idx, align 8
  %.sroa.524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ae, ptr %.sroa.524.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.experimental.noalias.scope.decl(metadata !1655)
  call void @llvm.experimental.noalias.scope.decl(metadata !1656)
  call void @llvm.experimental.noalias.scope.decl(metadata !1657)
  %i.af = load ptr, ptr %i.g, align 8, !alias.scope !1658, !noundef !7 ; 2 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3ops6OpReadEBH_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = atomicrmw add ptr %i.af, i64 -1 release, align 8, !noalias !1659
  %i.ai = icmp eq i64 %i.ah, 1
  br i1 %i.ai, label %bb.l, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3ops6OpReadEBH_.exit

bb.l:                                             ; preds = %bb.k
  fence acquire
  call void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcShE9drop_slowCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.g) #25
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3ops6OpReadEBH_.exit

bb.m:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store ptr %i.ac, ptr %i.f, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.ae, ptr %i.aj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.experimental.noalias.scope.decl(metadata !1660)
  call void @llvm.experimental.noalias.scope.decl(metadata !1661)
  %i.ak = load ptr, ptr %i.k, align 8, !alias.scope !1661, !nonnull !7, !noundef !7
  %i.al = atomicrmw add ptr %i.ak, i64 1 monotonic, align 8, !noalias !1662
  %i.am = icmp slt i64 %i.al, 0
  br i1 %i.am, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %7 = load <2 x ptr>, ptr %i.k, align 8, !alias.scope !1661
  %i.an = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  %i.ao = load ptr, ptr %i.an, align 8, !alias.scope !1661, !nonnull !7, !noundef !7 ; 2 uses
  %i.ap = atomicrmw add ptr %i.ao, i64 1 monotonic, align 8, !noalias !1662
  %i.aq = icmp slt i64 %i.ap, 0
  br i1 %i.aq, label %bb.p, label %bb.q

bb.o:                                             ; preds = %bb.m
  call void @llvm.trap()
  unreachable

bb.p:                                             ; preds = %bb.n
  call void @llvm.trap()
  unreachable

bb.q:                                             ; preds = %bb.n
  %i.ar = getelementptr inbounds nuw i8, ptr %i.j, i64 80
  %i.as = load ptr, ptr %i.ar, align 8, !alias.scope !1661, !nonnull !7, !align !9, !noundef !7
  store <2 x ptr> %7, ptr %i.c, align 16, !alias.scope !1660
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.ao, ptr %i.at, align 16, !alias.scope !1660
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.as, ptr %i.au, align 8, !alias.scope !1660
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.av = load ptr, ptr %i.o, align 8, !nonnull !7, !noundef !7
  %i.aw = atomicrmw add ptr %i.av, i64 1 monotonic, align 8
  %i.ax = icmp slt i64 %i.aw, 0
  br i1 %i.ax, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ay = load ptr, ptr %i.o, align 8, !nonnull !7, !noundef !7 ; 3 uses
  %i.az = load ptr, ptr %i.q, align 8, !nonnull !7, !align !9, !noundef !7 ; 2 uses
  store ptr %i.ay, ptr %i.b, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.az, ptr %i.ba, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %3, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.v unwind label %bb.t

bb.s:                                             ; preds = %bb.q
  call void @llvm.trap()
  unreachable

bb.t:                                             ; preds = %bb.w, %bb.r
  %i.bb = landingpad { ptr, i32 }
          cleanup
  %i.bc = atomicrmw add ptr %i.ay, i64 -1 release, align 8, !noalias !1663
  %i.bd = icmp eq i64 %i.bc, 1
  br i1 %i.bd, label %bb.u, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcDNtNtNtCs5XgW7KoffLW_12opendal_core3raw8accessor10ServiceDynEL_EEB1f_.exit

bb.u:                                             ; preds = %bb.t
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcDNtNtNtCs5XgW7KoffLW_12opendal_core3raw8accessor10ServiceDynEL_E9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b) #25
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcDNtNtNtCs5XgW7KoffLW_12opendal_core3raw8accessor10ServiceDynEL_EEB1f_.exit unwind label %bb.aa

bb.v:                                             ; preds = %bb.r
  %i.be = load i64, ptr %i.a, align 8, !range !22, !noundef !7
  %i.bf = trunc nuw i64 %i.be to i1
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !range !1664, !noundef !7 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.bf, label %bb.w, label %bb.x, !prof !8

bb.w:                                             ; preds = %bb.v
  %i.bj = load i64, ptr %i.bi, align 8
  invoke void @_RNvNtCs6i54tJFfzR_5alloc7raw_vec12handle_error(i64 noundef %i.bh, i64 %i.bj) #22
          to label %bb.e unwind label %bb.t

bb.x:                                             ; preds = %bb.v
  %i.bk = load ptr, ptr %i.bi, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.bl = icmp ule i64 %3, %i.bh
  call void @llvm.assume(i1 %i.bl)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not43 = icmp eq i64 %3, 0
  br i1 %.not43, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.z, %bb.x
  %i.bm = load ptr, ptr %i.g, align 8, !noundef !7
  %i.bn = load i64, ptr %i.h, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bo, ptr noundef nonnull align 16 dereferenceable(32) %i.c, i64 32, i1 false)
  %i.bp = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  store ptr %i.ay, ptr %i.bp, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  store ptr %i.az, ptr %i.bq, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store i64 %i.bh, ptr %i.br, align 8
  %.sroa.430.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store ptr %i.bk, ptr %.sroa.430.0..sroa_idx, align 8
  %.sroa.531.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  store i64 %3, ptr %.sroa.531.0..sroa_idx, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.d, i64 136
  store ptr %i.bm, ptr %i.bs, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  store i64 %i.bn, ptr %i.bt, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %6, i64 48, i1 false)
  %i.bu = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  store ptr %i.ac, ptr %i.bu, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  store ptr %i.ae, ptr %i.bv, align 8
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 192
  store i32 3, ptr %.sroa.435.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.bw = call noundef nonnull ptr @_RNvMNtNtNtCs5XgW7KoffLW_12opendal_core5types4read6readerNtB2_6Reader3new(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(200) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bw, ptr %i.bx, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3ops6OpReadEBH_.exit

bb.z:                                             ; preds = %bb.x
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bk, ptr nonnull align 1 %2, i64 %3, i1 false)
  br label %bb.y

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3ops6OpReadEBH_.exit: ; preds = %bb.l, %bb.k, %bb.j, %bb.y
  ret void

bb.aa:                                            ; preds = %bb.ad, %bb.u, %.thread52, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcDNtNtNtCs5XgW7KoffLW_12opendal_core3raw8accessor10ServiceDynEL_EEB1f_.exit
  %i.by = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcDNtNtNtCs5XgW7KoffLW_12opendal_core3raw8accessor10ServiceDynEL_EEB1f_.exit: ; preds = %bb.t, %bb.u
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core5types7context9operation16OperationContextEBJ_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.c) #27
          to label %.thread52 unwind label %bb.aa

.thread52:                                        ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcDNtNtNtCs5XgW7KoffLW_12opendal_core3raw8accessor10ServiceDynEL_EEB1f_.exit
  invoke void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3api7ReadDynEL_EEB1k_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.f) #27
          to label %bb.ab unwind label %bb.aa

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3ops6OpReadEBH_.exit47: ; preds = %bb.ac, %bb.ab, %bb.ad
  resume { ptr, i32 } %.pn.pn.ph

bb.ab:                                            ; preds = %.thread52, %bb.d
  %.pn.pn.ph = phi { ptr, i32 } [ %i.l, %bb.d ], [ %i.bb, %.thread52 ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1665)
  call void @llvm.experimental.noalias.scope.decl(metadata !1666)
  call void @llvm.experimental.noalias.scope.decl(metadata !1667)
  %i.bz = load ptr, ptr %i.g, align 8, !alias.scope !1668, !noundef !7 ; 2 uses
  %i.ca = icmp eq ptr %i.bz, null
  br i1 %i.ca, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3ops6OpReadEBH_.exit47, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cb = atomicrmw add ptr %i.bz, i64 -1 release, align 8, !noalias !1669
  %i.cc = icmp eq i64 %i.cb, 1
  br i1 %i.cc, label %bb.ad, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3ops6OpReadEBH_.exit47

bb.ad:                                            ; preds = %bb.ac
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcShE9drop_slowCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.g) #25
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3ops6OpReadEBH_.exit47 unwind label %bb.aa
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task4coreINtB5_4CellINtNtCsgxBkk5gSRhY_4core3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB13_6future6future6Futurep6OutputuNtNtB13_6marker4SendEL_EEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE3newCs5XgW7KoffLW_12opendal_core(ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noundef nonnull %2, i64 noundef %3, i64 noundef range(i64 1, 0) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [128 x i8], align 128             ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 528 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 16, !noundef !7 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = atomicrmw add ptr %i.c, i64 1 monotonic, align 8
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load <2 x ptr>, ptr %i.b, align 16
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c, %bb.a
  %i.g = phi <2 x ptr> [ %i.f, %bb.c ], [ <ptr null, ptr undef>, %bb.a ]
  store i64 %3, ptr %i.a, align 128
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @71, ptr %.sroa.56.0..sroa_idx, align 16
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %.sroa.67.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %2, ptr %i.h, align 32
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %4, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i32 0, ptr %.sroa.510.0..sroa_idx, align 16
  %.sroa.510.sroa.5.0..sroa.510.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %0, ptr %.sroa.510.sroa.5.0..sroa.510.0..sroa_idx.sroa_idx, align 8
  %.sroa.510.sroa.6.0..sroa.510.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr %1, ptr %.sroa.510.sroa.6.0..sroa.510.0..sroa_idx.sroa_idx, align 64
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  store <2 x ptr> %i.g, ptr %.sroa.7.0..sroa_idx, align 16
  tail call void @_RNvCs1njKG4L9aB3_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24, !noalias !1672
  %i.j = tail call noundef align 128 dereferenceable_or_null(128) ptr @_RNvCs1njKG4L9aB3_7___rustc12___rust_alloc(i64 noundef range(i64 16, 1257) 128, i64 noundef range(i64 8, 129) 128) #24, !noalias !1672 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.f, label %bb.i, !prof !8

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCs6i54tJFfzR_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef 128) #22
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task4core4CellINtNtB4_3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEINtNtB1M_4sync3ArcNtNtNtBI_9scheduler14current_thread6HandleEEECs5XgW7KoffLW_12opendal_core(ptr noundef nonnull align 128 dereferenceable(128) %i.a) #27
          to label %.critedge unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.i:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(128) %i.j, ptr noundef nonnull align 128 dereferenceable(128) %i.a, i64 128, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.j

.critedge:                                        ; preds = %bb.g
  resume { ptr, i32 } %i.l
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task4coreINtB5_4CellINtNtCsgxBkk5gSRhY_4core3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxIBZ_IB1v_DNtNtNtB13_6future6future6Futurep6OutputuNtNtB13_6marker4SendEL_EEEEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE3newCs5XgW7KoffLW_12opendal_core(ptr noalias noundef nonnull align 8 %0, ptr noundef nonnull %1, i64 noundef %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [128 x i8], align 128             ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 528 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 16, !noundef !7 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = atomicrmw add ptr %i.c, i64 1 monotonic, align 8
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load <2 x ptr>, ptr %i.b, align 16
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c, %bb.a
  %i.g = phi <2 x ptr> [ %i.f, %bb.c ], [ <ptr null, ptr undef>, %bb.a ]
  store i64 %2, ptr %i.a, align 128
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @72, ptr %.sroa.56.0..sroa_idx, align 16
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %.sroa.67.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %1, ptr %i.h, align 32
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %3, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i32 0, ptr %.sroa.510.0..sroa_idx, align 16
  %.sroa.510.sroa.5.0..sroa.510.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %0, ptr %.sroa.510.sroa.5.0..sroa.510.0..sroa_idx.sroa_idx, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  store <2 x ptr> %i.g, ptr %.sroa.7.0..sroa_idx, align 16
  tail call void @_RNvCs1njKG4L9aB3_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24, !noalias !1675
  %i.j = tail call noundef align 128 dereferenceable_or_null(128) ptr @_RNvCs1njKG4L9aB3_7___rustc12___rust_alloc(i64 noundef range(i64 16, 1257) 128, i64 noundef range(i64 8, 129) 128) #24, !noalias !1675 ; 3 uses
end_hunk_0
