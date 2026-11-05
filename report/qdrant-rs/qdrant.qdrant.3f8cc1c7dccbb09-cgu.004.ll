Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/qdrant.qdrant.3f8cc1c7dccbb09-cgu.004?download=true
inline.NumInlined: 20024
inline.NumDeleted: 7135
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNCNvMNtNtCsl8OoimOLbh_6qdrant6common9telemetryNtB4_18TelemetryCollector12prepare_data0B8_:bb.a
          to label %bb.dd unwind label %bb.ac

bb.dd:                                            ; preds = %bb.dc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o) #26
          to label %bb.de unwind label %bb.ac

bb.de:                                            ; preds = %bb.dd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.df

bb.df:                                            ; preds = %bb.ce, %bb.de, %bb.cp
  %.pn43.pn = phi { ptr, i32 } [ %i.fq, %bb.de ], [ %i.gm, %bb.ce ], [ %.pn40.pn, %bb.cp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api5mutex10MutexGuardNtNtCs27TyLBeV75a_11parking_lot9raw_mutex8RawMutexNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops18requests_telemetry23ActixTelemetryCollectorEEB2h_(ptr nonnull %i.fc) #26
          to label %.thread179 unwind label %bb.ac

bb.dg:                                            ; preds = %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops13app_telemetry17AppBuildTelemetryEEB15_(ptr noalias nofree noundef align 8 dereferenceable(336) %i.m) #26
          to label %bb.dh unwind label %bb.ac

bb.dh:                                            ; preds = %bb.dg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21collections_telemetry20CollectionsTelemetryEBJ_(ptr noalias nofree noundef align 8 dereferenceable(72) %i.n) #26
          to label %bb.di unwind label %bb.ac

bb.di:                                            ; preds = %bb.dh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o) #26
          to label %bb.dj unwind label %bb.ac

bb.dj:                                            ; preds = %bb.di
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %.thread179

bb.dk:                                            ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21collections_telemetry20CollectionsTelemetryEBJ_(ptr noalias nofree noundef align 8 dereferenceable(72) %i.n) #26
          to label %bb.dl unwind label %bb.ac

bb.dl:                                            ; preds = %bb.dk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o) #26
          to label %bb.dm unwind label %bb.ac

bb.dm:                                            ; preds = %bb.dl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %.thread179

bb.dn:                                            ; preds = %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o) #26
          to label %bb.do unwind label %bb.ac

bb.do:                                            ; preds = %bb.dn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %.thread179

bb.dp:                                            ; preds = %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.dq

.thread179:                                       ; preds = %bb.cg, %bb.dj, %bb.df, %bb.do, %bb.dm, %bb.dq, %bb.ab
  %.pn50.pn = phi { ptr, i32 } [ %.pn50, %bb.ab ], [ %.pn46.pn.pn178, %bb.dq ], [ %i.fh, %bb.dj ], [ %.pn43.pn, %bb.df ], [ %i.gp, %bb.cg ], [ %i.et, %bb.do ], [ %i.ey, %bb.dm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.af

bb.dq:                                            ; preds = %bb.dp, %.thread175
  %.pn46.pn.pn178 = phi { ptr, i32 } [ %.pn28, %.thread175 ], [ %i.eo, %bb.dp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21collections_telemetry20CollectionsTelemetryEBJ_(ptr noalias nofree noundef align 8 dereferenceable(72) %i.t) #26
          to label %.thread179 unwind label %bb.ac

bb.dr:                                            ; preds = %bb.au
  store i64 2, ptr %i.f, align 8, !alias.scope !39303
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !39302
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dz, %bb.dy, %bb.dr
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10127.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %i.hb = getelementptr inbounds nuw i8, ptr %1, i64 271
  store i8 0, ptr %i.hb, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  %i.hc = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 5 uses
  invoke void @_RNvXs0_NtNtCs5QaNqjAn6vc_5shard6common14stopping_guardNtB5_13StoppingGuardNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.hc)
          to label %bb.dv unwind label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.hd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !39325)
  call void @llvm.experimental.noalias.scope.decl(metadata !39326)
  %i.he = load ptr, ptr %i.hc, align 8, !alias.scope !39327, !nonnull !24, !noundef !24
  %i.hf = atomicrmw add ptr %i.he, i64 -1 release, align 8, !noalias !39328
  %i.hg = icmp eq i64 %i.hf, 1
  br i1 %i.hg, label %bb.du, label %.body107

bb.du:                                            ; preds = %bb.dt
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCskKLDkoKarTP_4core4sync6atomic6AtomicbEE9drop_slowCsjXNzVnAgJOI_8async_io(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.hc) #28
          to label %.body107 unwind label %bb.dw

bb.dv:                                            ; preds = %bb.ds
  call void @llvm.experimental.noalias.scope.decl(metadata !39329)
  call void @llvm.experimental.noalias.scope.decl(metadata !39330)
  %i.hh = load ptr, ptr %i.hc, align 8, !alias.scope !39331, !nonnull !24, !noundef !24
  %i.hi = atomicrmw add ptr %i.hh, i64 -1 release, align 8, !noalias !39332
  %i.hj = icmp eq i64 %i.hi, 1
  br i1 %i.hj, label %.invoke, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs5QaNqjAn6vc_5shard6common14stopping_guard13StoppingGuardECsl8OoimOLbh_6qdrant.exit113

.invoke:                                          ; preds = %bb.dv, %bb.cj
  %i.hk = phi ptr [ %i.gr, %bb.cj ], [ %i.hc, %bb.dv ]
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCskKLDkoKarTP_4core4sync6atomic6AtomicbEE9drop_slowCsjXNzVnAgJOI_8async_io(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.hk) #28
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs5QaNqjAn6vc_5shard6common14stopping_guard13StoppingGuardECsl8OoimOLbh_6qdrant.exit113 unwind label %bb.c

bb.dw:                                            ; preds = %bb.du
  %i.hl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.dx:                                            ; preds = %bb.au, %bb.as
  %i.hm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.dy:                                            ; preds = %bb.as
  store i64 2, ptr %i.f, align 8, !alias.scope !39301
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !39300
  br label %bb.ds

bb.dz:                                            ; preds = %bb.ap
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.10127.sroa.0, ptr noundef nonnull align 8 dereferenceable(48) %i.de, i64 48, i1 false), !alias.scope !39299
  %.sroa.10127.sroa.10.0..sroa_idx143 = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  %.sroa.10127.sroa.10.0.copyload144 = load i64, ptr %.sroa.10127.sroa.10.0..sroa_idx143, align 8, !alias.scope !39299
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %i.hn = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.hn, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.10127.sroa.0, i64 48, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !39333)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  store i64 %.sroa.10127.sroa.10.0.copyload144, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !39334
  store i64 2, ptr %i.f, align 8, !alias.scope !39335
  br label %bb.ds

bb.ea:                                            ; preds = %bb.af
  call void @llvm.experimental.noalias.scope.decl(metadata !39336)
  call void @llvm.experimental.noalias.scope.decl(metadata !39337)
  %i.ho = load ptr, ptr %i.y, align 8, !alias.scope !39338, !nonnull !24, !noundef !24
  %i.hp = atomicrmw add ptr %i.ho, i64 -1 release, align 8, !noalias !39338
  %i.hq = icmp eq i64 %i.hp, 1
  br i1 %i.hq, label %bb.eb, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicbEEECsl8OoimOLbh_6qdrant.exit

bb.eb:                                            ; preds = %bb.ea
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCskKLDkoKarTP_4core4sync6atomic6AtomicbEE9drop_slowCsjXNzVnAgJOI_8async_io(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.y) #28
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicbEEECsl8OoimOLbh_6qdrant.exit unwind label %bb.ac

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCsyIGusAaLFh_5ahash12random_state11RandomStateEEECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.ec, %.body107
  store i8 0, ptr %i.ac, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  store i8 2, ptr %i.aa, align 1
  resume { ptr, i32 } %.pn55

bb.ec:                                            ; preds = %.body107
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringuEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.z)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCsyIGusAaLFh_5ahash12random_state11RandomStateEEECsl8OoimOLbh_6qdrant.exit unwind label %bb.ac
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMNtNtNtCsPYQCUnoTxQ_10collection10operations12verification5queryNtNtNtB8_15universal_query16collection_query5Query14check_fullscan0Csl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.77 = alloca [40 x i8], align 8           ; 3 uses
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [48 x i8], align 8                ; 6 uses
  %i.e = alloca [16 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  %i.h = alloca [48 x i8], align 8                ; 6 uses
  %i.i = alloca [192 x i8], align 8               ; 5 uses
  %i.j = alloca [200 x i8], align 8               ; 6 uses
  %i.k = alloca [16 x i8], align 8                ; 6 uses
  %i.l = alloca [24 x i8], align 8                ; 5 uses
  %i.m = alloca [24 x i8], align 8                ; 10 uses
  %i.n = alloca [16 x i8], align 8                ; 7 uses
  %i.o = alloca [16 x i8], align 8                ; 9 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 185 ; 3 uses
  %i.q = load i8, ptr %i.p, align 1, !range !35, !noundef !24
  switch i8 %i.q, label %default.unreachable117 [
    i8 0, label %bb.b
    i8 1, label %bb.f
    i8 2, label %bb.g
    i8 3, label %3
  ]

default.unreachable117:                           ; preds = %bb.a
  unreachable

3:                                                ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  br label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 184
  store i8 0, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !24, !align !31, !noundef !24 ; 2 uses
  store ptr %i.u, ptr %i.s, align 8, !captures !107
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !24, !noundef !24
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.z = load i64, ptr %i.y, align 8, !noundef !24
  store ptr %i.x, ptr %i.v, align 8, !captures !107
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 104
  store i64 %i.z, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.ad = load ptr, ptr %i.ac, align 8, !align !31, !noundef !24
  store ptr %i.ad, ptr %i.ab, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.ag = load ptr, ptr %i.af, align 8, !nonnull !24, !align !31, !noundef !24 ; 2 uses
  store ptr %i.ag, ptr %i.ae, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.ai = load ptr, ptr %i.ah, align 8, !nonnull !24, !align !31, !noundef !24
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 293
  %.val51 = load i8, ptr %i.aj, align 1, !range !27, !noundef !24
  %.not118 = icmp eq i8 %.val51, 0
  br i1 %.not118, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.ak = load i64, ptr %i.u, align 8, !range !104, !noundef !24 ; 2 uses
  %i.al = icmp ne i64 %i.ak, -9223372036854775788
  tail call void @llvm.assume(i1 %i.al)
  %i.am = icmp eq i64 %i.ak, -9223372036854775791
  br i1 %i.am, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.an = getelementptr inbounds nuw i8, ptr %i.ag, i64 368
  %.val47 = load ptr, ptr %i.an, align 8, !nonnull !24, !noundef !24
  %i.ao = getelementptr inbounds nuw i8, ptr %.val47, i64 16
  store ptr %i.ao, ptr %1, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 88
  store i8 0, ptr %.sroa.8.0..sroa_idx, align 8
  br label %bb.h

common.ret:                                       ; preds = %bb.k, %bb.e
  %storemerge = phi i8 [ 1, %bb.e ], [ 3, %bb.k ]
  store i8 %storemerge, ptr %i.p, align 1
  ret void

bb.e:                                             ; preds = %bb.b, %bb.c, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardNtNtCsPYQCUnoTxQ_10collection6config24CollectionConfigInternalEECsl8OoimOLbh_6qdrant.exit
  %.sroa.04.0 = phi i64 [ %.sroa.04.3, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardNtNtCsPYQCUnoTxQ_10collection6config24CollectionConfigInternalEECsl8OoimOLbh_6qdrant.exit ], [ -1, %bb.c ], [ -1, %bb.b ]
  store i64 %.sroa.04.0, ptr %0, align 8
  %.sroa.77.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.77.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.77, i64 40, i1 false)
  br label %common.ret

bb.f:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @424) #29
  unreachable

bb.g:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @424) #29
  unreachable

bb.h:                                             ; preds = %3, %bb.d
  %i.ap = invoke fastcc { ptr, ptr } @_RNCNvMsc_NtNtCsjZG7hsAZr3B_5tokio4sync6rwlockINtB7_6RwLockNtNtCsPYQCUnoTxQ_10collection6config24CollectionConfigInternalE4read0Csl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2)
          to label %bb.j unwind label %bb.i       ; 2 uses

bb.i:                                             ; preds = %bb.h
  %i.aq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMsc_NtNtCsjZG7hsAZr3B_5tokio4sync6rwlockINtBJ_6RwLockNtNtCsPYQCUnoTxQ_10collection6config24CollectionConfigInternalE4read0ECsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %1) #26
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardNtNtCsPYQCUnoTxQ_10collection6config24CollectionConfigInternalEECsl8OoimOLbh_6qdrant.exit95 unwind label %bb.ba

bb.j:                                             ; preds = %bb.h
  %i.ar = extractvalue { ptr, ptr } %i.ap, 0      ; 2 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i64 -2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %common.ret

bb.l:                                             ; preds = %bb.j
  %i.at = extractvalue { ptr, ptr } %i.ap, 1
  store ptr %i.ar, ptr %i.o, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 5 uses
  store ptr %i.at, ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.aw = load i8, ptr %i.av, align 8, !range !35, !noundef !24
  %cond.i = icmp eq i8 %i.aw, 3
  br i1 %cond.i, label %bb.m, label %bb.t

bb.m:                                             ; preds = %bb.l
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ay = load i8, ptr %i.ax, align 8, !range !35, !noundef !24
  %cond.i.i = icmp eq i8 %i.ay, 3
  br i1 %cond.i.i, label %bb.n, label %bb.t

bb.n:                                             ; preds = %bb.m
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 16
  invoke void @_RNvXs3_NtNtCsjZG7hsAZr3B_5tokio4sync15batch_semaphoreNtB5_7AcquireNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noundef nonnull align 8 %i.az)
          to label %bb.q unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ba = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val2.i.i.i = load ptr, ptr %i.bb, align 8, !align !31, !noundef !24 ; 2 uses
  %i.bc = icmp eq ptr %.val2.i.i.i, null
  br i1 %i.bc, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardNtNtCsPYQCUnoTxQ_10collection6config24CollectionConfigInternalEECsl8OoimOLbh_6qdrant.exit95, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bd = getelementptr i8, ptr %1, i64 32
  %.val3.i.i.i = load ptr, ptr %i.bd, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %.val2.i.i.i, i64 24
  %i.bf = load ptr, ptr %i.be, align 8, !nonnull !24, !noundef !24
  invoke void %i.bf(ptr noundef %.val3.i.i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardNtNtCsPYQCUnoTxQ_10collection6config24CollectionConfigInternalEECsl8OoimOLbh_6qdrant.exit95 unwind label %bb.s, !inline_history !4

bb.q:                                             ; preds = %bb.n
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val.i.i.i = load ptr, ptr %i.bg, align 8, !align !31, !noundef !24 ; 2 uses
  %i.bh = icmp eq ptr %.val.i.i.i, null
  br i1 %i.bh, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bi = getelementptr i8, ptr %1, i64 32
  %.val1.i.i.i = load ptr, ptr %i.bi, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8, !nonnull !24, !noundef !24
  invoke void %i.bk(ptr noundef %.val1.i.i.i)
          to label %bb.t unwind label %bb.bh, !inline_history !71

bb.s:                                             ; preds = %bb.p
  %i.bl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.t:                                             ; preds = %bb.q, %bb.m, %bb.l, %bb.r
  %.val50 = load ptr, ptr %i.au, align 8, !noundef !24 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.val50, i64 16
  %i.bn = load i64, ptr %i.bm, align 8, !range !28, !alias.scope !39364, !noundef !24
  %i.bo = trunc nuw i64 %i.bn to i1
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %i.bq = getelementptr i8, ptr %1, i64 104       ; 3 uses
  br i1 %i.bo, label %bb.u, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8BTreeMapNtNtBS_6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsEE11is_some_andNCNCNvMNtNtB27_12verification5queryNtNtNtB27_15universal_query16collection_query5Query14check_fullscan00ECsl8OoimOLbh_6qdrant.exit.thread

bb.u:                                             ; preds = %bb.t
  %i.br = getelementptr inbounds nuw i8, ptr %.val50, i64 24
  %i.bs = load i64, ptr %i.bq, align 8, !noundef !24
  %i.bt = load ptr, ptr %i.bp, align 8, !nonnull !24, !noundef !24
  %i.bu = invoke noundef align 8 ptr @_RINvMsi_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtBc_6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsE3geteECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) dereferenceable_or_null(24) %i.br, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bt, i64 noundef %i.bs)
          to label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8BTreeMapNtNtBS_6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsEE11is_some_andNCNCNvMNtNtB27_12verification5queryNtNtNtB27_15universal_query16collection_query5Query14check_fullscan00ECsl8OoimOLbh_6qdrant.exit unwind label %bb.x

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8BTreeMapNtNtBS_6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsEE11is_some_andNCNCNvMNtNtB27_12verification5queryNtNtNtB27_15universal_query16collection_query5Query14check_fullscan00ECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.u
  %.not110 = icmp eq ptr %i.bu, null
  br i1 %.not110, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8BTreeMapNtNtBS_6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsEE11is_some_andNCNCNvMNtNtB27_12verification5queryNtNtNtB27_15universal_query16collection_query5Query14check_fullscan00ECsl8OoimOLbh_6qdrant.exit._RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8BTreeMapNtNtBS_6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsEE11is_some_andNCNCNvMNtNtB27_12verification5queryNtNtNtB27_15universal_query16collection_query5Query14check_fullscan00ECsl8OoimOLbh_6qdrant.exit.thread_crit_edge, label %bb.bf

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8BTreeMapNtNtBS_6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsEE11is_some_andNCNCNvMNtNtB27_12verification5queryNtNtNtB27_15universal_query16collection_query5Query14check_fullscan00ECsl8OoimOLbh_6qdrant.exit._RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8BTreeMapNtNtBS_6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsEE11is_some_andNCNCNvMNtNtB27_12verification5queryNtNtNtB27_15universal_query16collection_query5Query14check_fullscan00ECsl8OoimOLbh_6qdrant.exit.thread_crit_edge: ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8BTreeMapNtNtBS_6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsEE11is_some_andNCNCNvMNtNtB27_12verification5queryNtNtNtB27_15universal_query16collection_query5Query14check_fullscan00ECsl8OoimOLbh_6qdrant.exit
  %.val49.pre = load ptr, ptr %i.au, align 8
  br label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8BTreeMapNtNtBS_6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsEE11is_some_andNCNCNvMNtNtB27_12verification5queryNtNtNtB27_15universal_query16collection_query5Query14check_fullscan00ECsl8OoimOLbh_6qdrant.exit.thread

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8BTreeMapNtNtBS_6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsEE11is_some_andNCNCNvMNtNtB27_12verification5queryNtNtNtB27_15universal_query16collection_query5Query14check_fullscan00ECsl8OoimOLbh_6qdrant.exit.thread: ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8BTreeMapNtNtBS_6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsEE11is_some_andNCNCNvMNtNtB27_12verification5queryNtNtNtB27_15universal_query16collection_query5Query14check_fullscan00ECsl8OoimOLbh_6qdrant.exit._RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8BTreeMapNtNtBS_6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsEE11is_some_andNCNCNvMNtNtB27_12verification5queryNtNtNtB27_15universal_query16collection_query5Query14check_fullscan00ECsl8OoimOLbh_6qdrant.exit.thread_crit_edge, %bb.t
  %.val49 = phi ptr [ %.val49.pre, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8BTreeMapNtNtBS_6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsEE11is_some_andNCNCNvMNtNtB27_12verification5queryNtNtNtB27_15universal_query16collection_query5Query14check_fullscan00ECsl8OoimOLbh_6qdrant.exit._RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8BTreeMapNtNtBS_6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsEE11is_some_andNCNCNvMNtNtB27_12verification5queryNtNtNtB27_15universal_query16collection_query5Query14check_fullscan00ECsl8OoimOLbh_6qdrant.exit.thread_crit_edge ], [ %.val50, %bb.t ]
  %i.bv = getelementptr inbounds nuw i8, ptr %.val49, i64 48
  %i.bw = load ptr, ptr %i.bp, align 8, !nonnull !24, !noundef !24
  %i.bx = load i64, ptr %i.bq, align 8, !noundef !24
  %i.by = invoke noundef align 8 ptr @_RNvMsz_NtNtCsPYQCUnoTxQ_10collection10operations5typesNtB5_13VectorsConfig10get_params(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bv, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bw, i64 noundef %i.bx)
          to label %bb.v unwind label %bb.x       ; 5 uses

bb.v:                                             ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8BTreeMapNtNtBS_6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsEE11is_some_andNCNCNvMNtNtB27_12verification5queryNtNtNtB27_15universal_query16collection_query5Query14check_fullscan00ECsl8OoimOLbh_6qdrant.exit.thread
  %.not.i58 = icmp eq ptr %i.by, null
  br i1 %.not.i58, label %.thread150, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bz = load i64, ptr %i.by, align 8, !range !23, !alias.scope !39365, !noundef !24 ; 2 uses
  %.not.i.i = icmp eq i64 %i.bz, 2
  br i1 %.not.i.i, label %.thread150, label %bb.y

bb.x:                                             ; preds = %bb.u, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8BTreeMapNtNtBS_6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsEE11is_some_andNCNCNvMNtNtB27_12verification5queryNtNtNtB27_15universal_query16collection_query5Query14check_fullscan00ECsl8OoimOLbh_6qdrant.exit.thread
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

.thread150:                                       ; preds = %bb.w, %bb.v
  %.val48133 = load ptr, ptr %i.au, align 8, !noundef !24 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.val48133, i64 208
  %i.cc = load i64, ptr %i.cb, align 8, !noundef !24
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.cd = getelementptr i8, ptr %i.by, i64 8
  %.val3.i = load i64, ptr %i.cd, align 8, !alias.scope !39366
  %.val48 = load ptr, ptr %i.au, align 8, !noundef !24 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.val48, i64 208
  %i.cf = load i64, ptr %i.ce, align 8, !noundef !24
  %.not111 = icmp eq i64 %i.bz, 0
  %..i63 = select i1 %.not111, i64 %i.cf, i64 %.val3.i ; 2 uses
  %i.cg = getelementptr i8, ptr %i.by, i64 64
  %.val.i65 = load i64, ptr %i.cg, align 8, !range !28, !alias.scope !39367, !noundef !24
  %i.ch = getelementptr i8, ptr %i.by, i64 72
  %.val3.i66 = load i64, ptr %i.ch, align 8, !alias.scope !39367
  %.not112 = icmp eq i64 %.val.i65, 0
  br i1 %.not112, label %bb.z, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionjE14unwrap_or_elseNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection10operations12verification5queryNtNtNtB1b_15universal_query16collection_query5Query14check_fullscan0s2_0ECsl8OoimOLbh_6qdrant.exit

bb.z:                                             ; preds = %.thread150, %bb.y
  %..i63137144157 = phi i64 [ %i.cc, %.thread150 ], [ %..i63, %bb.y ] ; 3 uses
  %.val48136146155 = phi ptr [ %.val48133, %.thread150 ], [ %.val48, %bb.y ] ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.val48136146155, i64 192
  %i.cj = load i64, ptr %i.ci, align 8, !range !28, !noalias !39368, !noundef !24
  %i.ck = trunc nuw i64 %i.cj to i1
  br i1 %i.ck, label %.then, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionjE14unwrap_or_elseNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection10operations12verification5queryNtNtNtB1b_15universal_query16collection_query5Query14check_fullscan0s2_0ECsl8OoimOLbh_6qdrant.exit

.then:                                            ; preds = %bb.z
  %i.cl = getelementptr inbounds nuw i8, ptr %.val48136146155, i64 200
  %.sroa.0.0.i.i.then.val = load i64, ptr %i.cl, align 8
  br label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionjE14unwrap_or_elseNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection10operations12verification5queryNtNtNtB1b_15universal_query16collection_query5Query14check_fullscan0s2_0ECsl8OoimOLbh_6qdrant.exit

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionjE14unwrap_or_elseNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection10operations12verification5queryNtNtNtB1b_15universal_query16collection_query5Query14check_fullscan0s2_0ECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.y, %bb.z, %.then
  %..i63137144156 = phi i64 [ %..i63, %bb.y ], [ %..i63137144157, %.then ], [ %..i63137144157, %bb.z ]
  %.sroa.02.0.i72 = phi i64 [ %.val3.i66, %bb.y ], [ %.sroa.0.0.i.i.then.val, %.then ], [ %..i63137144157, %bb.z ]
  %.not = icmp eq i64 %..i63137144156, 0
  br i1 %.not, label %bb.aa, label %bb.bf

end_hunk_0
begin_hunk_1_@_RNCNvNtNtNtCsPYQCUnoTxQ_10collection10operations12verification6update27check_collection_size_limit0Csl8OoimOLbh_6qdrant:bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 64
  store ptr %i.g, ptr %i.x, align 8
  %.sroa.1032.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 392
  store i8 0, ptr %.sroa.1032.0..sroa_idx, align 8
  br label %bb.f

.body:                                            ; preds = %bb.g, %bb.m, %bb.s, %bb.y, %bb.ad
  %.pn14.pn = phi { ptr, i32 } [ %i.bd, %bb.ad ], [ %i.as, %bb.s ], [ %i.az, %bb.y ], [ %i.z, %bb.g ], [ %i.ah, %bb.m ]
  store i8 2, ptr %i.e, align 8
  resume { ptr, i32 } %.pn14.pn

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @619) #29
  unreachable

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @619) #29
  unreachable

bb.f:                                             ; preds = %bb.a, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  invoke fastcc void @_RNCNvMNtCsPYQCUnoTxQ_10collection10collectionNtB4_10Collection26estimated_collection_stats0Csl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.d, ptr noundef nonnull align 8 %i.y, ptr noalias nofree noundef align 8 dereferenceable(32) %2)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtCsPYQCUnoTxQ_10collection10collectionNtBG_10Collection26estimated_collection_stats0ECsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.y) #26
          to label %.body unwind label %bb.aj

bb.h:                                             ; preds = %bb.f
  %i.aa = load i64, ptr %i.d, align 8, !range !108, !noundef !24 ; 3 uses
  %i.ab = icmp eq i64 %i.aa, -2
  br i1 %i.ab, label %bb.i, label %bb.j

common.ret:                                       ; preds = %bb.ah, %bb.i
  %storemerge = phi i8 [ 3, %bb.i ], [ 1, %bb.ah ]
  store i8 %storemerge, ptr %i.e, align 8
  ret void

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i64 -2, ptr %0, align 8
  br label %common.ret

bb.j:                                             ; preds = %bb.h
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8 ; 5 uses
  %.sroa.535.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.535, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.535.0..sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 392
  %i.ad = load i8, ptr %i.ac, align 8, !range !35, !noundef !24
  %cond.i = icmp eq i8 %i.ad, 3
  br i1 %cond.i, label %bb.k, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtCsPYQCUnoTxQ_10collection10collectionNtBG_10Collection26estimated_collection_stats0ECsl8OoimOLbh_6qdrant.exit

bb.k:                                             ; preds = %bb.j
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 385
  %i.af = load i8, ptr %i.ae, align 1, !range !35, !noundef !24
  %cond.i.i = icmp eq i8 %i.af, 3
  br i1 %cond.i.i, label %bb.l, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtCsPYQCUnoTxQ_10collection10collectionNtBG_10Collection26estimated_collection_stats0ECsl8OoimOLbh_6qdrant.exit

bb.l:                                             ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 72
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtCsPYQCUnoTxQ_10collection10collectionNtBG_10Collection30estimate_collection_size_stats0ECsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.ag)
          to label %bb.n unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ah = landingpad { ptr, i32 }
          cleanup
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 384
  store i8 0, ptr %i.ai, align 8
  br label %.body

bb.n:                                             ; preds = %bb.l
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 384
  store i8 0, ptr %i.aj, align 8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtCsPYQCUnoTxQ_10collection10collectionNtBG_10Collection26estimated_collection_stats0ECsl8OoimOLbh_6qdrant.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtCsPYQCUnoTxQ_10collection10collectionNtBG_10Collection26estimated_collection_stats0ECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.n, %bb.k, %bb.j
  %.not.i = icmp eq i64 %i.aa, -1
  br i1 %.not.i, label %bb.o, label %bb.ai

bb.o:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtCsPYQCUnoTxQ_10collection10collectionNtBG_10Collection26estimated_collection_stats0ECsl8OoimOLbh_6qdrant.exit
  %.not4 = icmp eq ptr %.sroa.3.0.copyload, null
  br i1 %.not4, label %bb.ah, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !range !28, !noundef !24
  %i.am = trunc nuw i64 %i.al to i1
  br i1 %i.am, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ao = load i64, ptr %i.an, align 8, !noundef !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvNtNtNtCsPYQCUnoTxQ_10collection10operations12verification6update34check_collection_vector_size_limit(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, i64 noundef %i.ao, ptr noundef nonnull align 8 %.sroa.3.0.copyload)
          to label %bb.t unwind label %bb.s

bb.r:                                             ; preds = %bb.u, %bb.p
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aq = load i64, ptr %i.ap, align 8, !range !28, !noundef !24
  %i.ar = trunc nuw i64 %i.aq to i1
  br i1 %i.ar, label %bb.w, label %bb.x

bb.s:                                             ; preds = %bb.q
  %i.as = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.body

bb.t:                                             ; preds = %bb.q
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42416)
  %i.at = load i64, ptr %i.c, align 8, !range !53, !alias.scope !42417, !noundef !24 ; 2 uses
  %.not.i17 = icmp eq i64 %i.at, -1
  br i1 %.not.i17, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.r

bb.v:                                             ; preds = %bb.t
  %.sroa.8.0..sroa_idx41 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.8.sroa.0.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx41, align 8, !alias.scope !42418
  %.sroa.8.sroa.6.0..sroa.8.0..sroa_idx41.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.1260, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.8.sroa.6.0..sroa.8.0..sroa_idx41.sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.ah

bb.w:                                             ; preds = %bb.r
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.av = load i64, ptr %i.au, align 8, !noundef !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvNtNtNtCsPYQCUnoTxQ_10collection10operations12verification6update35check_collection_payload_size_limit(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, i64 noundef %i.av, ptr noundef nonnull align 8 %.sroa.3.0.copyload)
          to label %bb.z unwind label %bb.y

bb.x:                                             ; preds = %bb.aa, %bb.r
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ax = load i64, ptr %i.aw, align 8, !range !28, !noundef !24
  %i.ay = trunc nuw i64 %i.ax to i1
  br i1 %i.ay, label %bb.ac, label %bb.ah

bb.y:                                             ; preds = %bb.w
  %i.az = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.body

bb.z:                                             ; preds = %bb.w
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42419)
  %i.ba = load i64, ptr %i.b, align 8, !range !53, !alias.scope !42420, !noundef !24 ; 2 uses
  %.not.i18 = icmp eq i64 %i.ba, -1
  br i1 %.not.i18, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.x

bb.ab:                                            ; preds = %bb.z
  %.sroa.846.0..sroa_idx47 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.846.sroa.0.0.copyload = load ptr, ptr %.sroa.846.0..sroa_idx47, align 8, !alias.scope !42421
  %.sroa.846.sroa.6.0..sroa.846.0..sroa_idx47.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.1260, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.846.sroa.6.0..sroa.846.0..sroa_idx47.sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ah

bb.ac:                                            ; preds = %bb.x
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bc = load i64, ptr %i.bb, align 8, !noundef !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvNtNtNtCsPYQCUnoTxQ_10collection10operations12verification6update35check_collection_points_count_limit(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, i64 noundef %i.bc, ptr noundef nonnull align 8 %.sroa.3.0.copyload)
          to label %bb.ae unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.body

bb.ae:                                            ; preds = %bb.ac
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42422)
  %i.be = load i64, ptr %i.a, align 8, !range !53, !alias.scope !42423, !noundef !24 ; 2 uses
  %.not.i20 = icmp eq i64 %i.be, -1
  br i1 %.not.i20, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %.sroa.852.0..sroa_idx53 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.852.sroa.0.0.copyload = load ptr, ptr %.sroa.852.0..sroa_idx53, align 8, !alias.scope !42424
  %.sroa.852.sroa.6.0..sroa.852.0..sroa_idx53.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.1260, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.852.sroa.6.0..sroa.852.0..sroa_idx53.sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.o, %bb.x, %bb.af, %bb.b, %bb.v, %bb.ab, %bb.ag, %bb.ai
  %.sroa.857.0 = phi ptr [ %.sroa.3.0.copyload, %bb.ai ], [ undef, %bb.x ], [ undef, %bb.b ], [ %.sroa.852.sroa.0.0.copyload, %bb.ag ], [ %.sroa.846.sroa.0.0.copyload, %bb.ab ], [ %.sroa.8.sroa.0.0.copyload, %bb.v ], [ undef, %bb.af ], [ undef, %bb.o ]
  %.sroa.056.0 = phi i64 [ %i.aa, %bb.ai ], [ -1, %bb.x ], [ -1, %bb.b ], [ %i.be, %bb.ag ], [ %i.ba, %bb.ab ], [ %i.at, %bb.v ], [ -1, %bb.af ], [ -1, %bb.o ]
  store i64 %.sroa.056.0, ptr %0, align 8
  %.sroa.857.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.857.0, ptr %.sroa.857.0..sroa_idx, align 8
  %.sroa.1260.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.1260.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.1260, i64 32, i1 false)
  br label %common.ret

bb.ai:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtCsPYQCUnoTxQ_10collection10collectionNtBG_10Collection26estimated_collection_stats0ECsl8OoimOLbh_6qdrant.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.1260, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.535, i64 32, i1 false)
  br label %bb.ah

bb.aj:                                            ; preds = %bb.g
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvNtNtNtCsl8OoimOLbh_6qdrant6common9inference15update_requests13convert_batch0B9_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(168) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [72 x i8], align 8                ; 5 uses
  %i.d = alloca [64 x i8], align 8                ; 4 uses
  %i.e = alloca [64 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.487.i = alloca [80 x i8], align 8        ; 10 uses
  %i.g = alloca [64 x i8], align 8                ; 5 uses
  %.sroa.4.i = alloca [56 x i8], align 8          ; 9 uses
  %i.h = alloca [64 x i8], align 8                ; 5 uses
  %i.i = alloca [40 x i8], align 8                ; 9 uses
  %i.j = alloca [56 x i8], align 8                ; 8 uses
  %.sroa.2.i = alloca [104 x i8], align 8         ; 8 uses
  %.sroa.3.i = alloca [56 x i8], align 8          ; 10 uses
  %.sroa.572.i = alloca [48 x i8], align 8        ; 7 uses
  %i.k = alloca [120 x i8], align 8               ; 9 uses
  %.sroa.066.i = alloca [1600 x i8], align 8      ; 4 uses
  %i.l = alloca [48 x i8], align 8                ; 7 uses
  %i.m = alloca [48 x i8], align 8                ; 13 uses
  %i.n = alloca [144 x i8], align 8               ; 5 uses
  %i.o = alloca [208 x i8], align 8               ; 6 uses
  %i.p = alloca [144 x i8], align 8               ; 5 uses
  %i.q = alloca [208 x i8], align 8               ; 6 uses
  %i.r = alloca [208 x i8], align 8               ; 5 uses
  %i.s = alloca [208 x i8], align 8               ; 5 uses
  %i.t = alloca [48 x i8], align 8                ; 4 uses
  %i.u = alloca [64 x i8], align 8                ; 5 uses
  %.sroa.6107 = alloca [56 x i8], align 8         ; 6 uses
  %.sroa.6113 = alloca [104 x i8], align 8        ; 3 uses
  %i.v = alloca [64 x i8], align 8                ; 5 uses
  %i.w = alloca [64 x i8], align 8                ; 5 uses
  %i.x = alloca [104 x i8], align 8               ; 9 uses
  %i.y = alloca [56 x i8], align 8                ; 5 uses
  %i.z = alloca [56 x i8], align 8                ; 5 uses
  %i.aa = alloca [56 x i8], align 8               ; 5 uses
  %i.ab = alloca [24 x i8], align 8               ; 5 uses
  %i.ac = alloca [24 x i8], align 8               ; 5 uses
  %i.ad = alloca [24 x i8], align 8               ; 8 uses
  %.sroa.2 = alloca [80 x i8], align 8            ; 3 uses
  %.sroa.3 = alloca [56 x i8], align 8            ; 4 uses
  %.sroa.6103 = alloca [24 x i8], align 8         ; 2 uses
  %.sroa.899 = alloca [56 x i8], align 8          ; 8 uses
  %.sroa.9100 = alloca [24 x i8], align 8         ; 8 uses
  %i.ae = alloca [24 x i8], align 8               ; 6 uses
  %.sroa.088.sroa.0 = alloca [96 x i8], align 8   ; 6 uses
  %i.af = alloca [24 x i8], align 8               ; 7 uses
  %i.ag = alloca [64 x i8], align 8               ; 8 uses
  %i.ah = alloca [48 x i8], align 8               ; 9 uses
  %.sroa.4 = alloca [48 x i8], align 8            ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 2592 ; 3 uses
  %i.aj = load i8, ptr %i.ai, align 8, !range !35, !noundef !24
  switch i8 %i.aj, label %default.unreachable130 [
    i8 0, label %bb.b
    i8 1, label %bb.x
    i8 2, label %bb.y
    i8 3, label %bb.z
  ]

default.unreachable130:                           ; preds = %bb.z, %bb.d, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 2600
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 2596
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 2595
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 2594 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 2593
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 2599
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 2598
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 2597
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ao, i8 0, i64 3, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 104
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.as, ptr noundef nonnull align 8 dereferenceable(88) %i.at, i64 88, i1 false)
  store i8 1, ptr %i.ak, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, ptr noundef nonnull align 8 dereferenceable(24) %i.av, i64 24, i1 false)
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 304 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.aw, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  store <4 x i8> splat (i8 1), ptr %i.al, align 4
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 360
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 80
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, ptr noundef nonnull align 8 dereferenceable(24) %i.ay, i64 24, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 384
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %i.ba = invoke noundef nonnull align 8 ptr @_RINvMs1_NtNtCs6TRFxdUibgW_9once_cell4race8once_boxINtB6_7OnceBoxINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCsyIGusAaLFh_5ahash12random_state12RandomSourceNtNtCskKLDkoKarTP_4core6marker4SendNtB2r_4SyncEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvB1C_7get_src0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 @_RNvNtCsyIGusAaLFh_5ahash12random_state11RAND_SOURCE)
          to label %.noexc unwind label %bb.c     ; 2 uses

.noexc:                                           ; preds = %bb.b
  %i.bb = load ptr, ptr %i.ba, align 8, !noalias !42493, !nonnull !24, !noundef !24
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !noalias !42493, !nonnull !24, !align !31, !noundef !24
  %i.be = invoke noundef nonnull align 8 ptr @_RINvMs1_NtNtCs6TRFxdUibgW_9once_cell4race8once_boxINtB6_7OnceBoxAAyj4_j2_E15get_or_try_initNCINvB2_11get_or_initNCNvNtCsyIGusAaLFh_5ahash12random_state15get_fixed_seeds0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 @_RNvNvNtCsyIGusAaLFh_5ahash12random_state15get_fixed_seeds5SEEDS)
          to label %.noexc33 unwind label %bb.c   ; 2 uses

.noexc33:                                         ; preds = %.noexc
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8, !invariant.load !24, !noalias !42493, !nonnull !24
  %i.bh = invoke noundef i64 %i.bg(ptr noundef nonnull %i.bb) #30
          to label %.noexc34 unwind label %bb.c, !inline_history !17

.noexc34:                                         ; preds = %.noexc33
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  %i.bj = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  invoke void @_RNvMs1_NtCsyIGusAaLFh_5ahash12random_stateNtB5_11RandomState9from_keys(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.bj, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.be, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bi, i64 noundef %i.bh)
          to label %bb.d unwind label %bb.c

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshMzyYDJGtjv_3api4rest6models14InferenceUsageECsl8OoimOLbh_6qdrant.exit82: ; preds = %bb.fg, %bb.s, %bb.c
  %.pn23.pn = phi { ptr, i32 } [ %i.bo, %bb.c ], [ %.pn23, %bb.s ], [ %.pn23, %bb.fg ] ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 2595
  store i8 0, ptr %i.bk, align 1
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 2596
  %i.bm = load i8, ptr %i.bl, align 4, !range !26, !noundef !24
  %i.bn = trunc nuw i8 %i.bm to i1
  br i1 %i.bn, label %bb.fh, label %.body65

bb.c:                                             ; preds = %bb.r, %.noexc34, %.noexc33, %.noexc, %bb.b
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshMzyYDJGtjv_3api4rest6models14InferenceUsageECsl8OoimOLbh_6qdrant.exit82

bb.d:                                             ; preds = %.noexc34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.u, ptr noundef nonnull align 8 dereferenceable(32) @3, i64 32, i1 false), !noalias !42494
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.az, ptr noundef nonnull align 8 dereferenceable(64) %i.u, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  store i8 1, ptr %i.am, align 1
  %i.bp = load i64, ptr %i.aw, align 8, !range !64, !noundef !24
  switch i64 %i.bp, label %default.unreachable130 [
    i64 0, label %bb.e
    i64 1, label %bb.f
    i64 2, label %bb.g
    i64 3, label %bb.h
    i64 4, label %bb.i
    i64 5, label %bb.j
  ]

bb.e:                                             ; preds = %bb.d
  store i8 0, ptr %i.ar, align 1
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 312
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4, ptr noundef nonnull align 8 dereferenceable(24) %i.bq, i64 24, i1 false)
  br label %bb.k

bb.f:                                             ; preds = %bb.d
  store i8 0, ptr %i.aq, align 2
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 312
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4, ptr noundef nonnull align 8 dereferenceable(24) %i.br, i64 24, i1 false)
  br label %bb.k

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  store i8 0, ptr %i.ap, align 1
  store i8 1, ptr %i.an, align 2
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 312
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ah, ptr noundef nonnull align 8 dereferenceable(48) %i.bs, i64 48, i1 false)
  %i.bt = invoke { i64, i64 } @_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1H_11RandomState3new0B20_ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @836)
          to label %bb.m unwind label %bb.l       ; 2 uses

bb.h:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  invoke void @_RINvMNtNtCsgGgPqgSfnMH_7storage15content_manager6errorsNtB3_12StorageError15inference_errorReECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.aa, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @637, i64 noundef 90)
          to label %bb.q unwind label %bb.p

bb.i:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  invoke void @_RINvMNtNtCsgGgPqgSfnMH_7storage15content_manager6errorsNtB3_12StorageError15inference_errorReECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.z, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @638, i64 noundef 87)
          to label %bb.u unwind label %bb.t

bb.j:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  invoke void @_RINvMNtNtCsgGgPqgSfnMH_7storage15content_manager6errorsNtB3_12StorageError15inference_errorReECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.y, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @639, i64 noundef 88)
          to label %bb.w unwind label %bb.v

bb.k:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterNtNtCsexYYUdYSQU6_5alloc6string6StringINtNtB1A_3vec3VecNtNtNtCshMzyYDJGtjv_3api4rest6schema6VectorEEECsl8OoimOLbh_6qdrant.exit54, %bb.f, %bb.e
  %.sroa.0111.0.copyload = phi i64 [ 0, %bb.e ], [ 1, %bb.f ], [ 2, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterNtNtCsexYYUdYSQU6_5alloc6string6StringINtNtB1A_3vec3VecNtNtNtCshMzyYDJGtjv_3api4rest6schema6VectorEEECsl8OoimOLbh_6qdrant.exit54 ] ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 2600
  store i8 0, ptr %i.bu, align 8
end_hunk_1
