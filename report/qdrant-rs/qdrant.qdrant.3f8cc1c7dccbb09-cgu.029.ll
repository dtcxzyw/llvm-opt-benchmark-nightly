Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/qdrant.qdrant.3f8cc1c7dccbb09-cgu.029?download=true
inline.NumInlined: 3589
inline.NumDeleted: 1548
begin_hunk_0_@_RNCNvXs_NtNtNtCsl8OoimOLbh_6qdrant5tonic3api24collections_internal_apiNtB6_26CollectionsInternalServiceNtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant27collections_internal_server19CollectionsInternal23get_shard_memory_report0Bc_:bb.a
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %bb.gf

bb.fv:                                            ; preds = %bb.ft
  %.sroa.0.0.copyload = load i64, ptr %i.u, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.10, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.10.0..sroa_idx, i64 120, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsPYQCUnoTxQ_10collection6common15memory_reporter22CollectionMemoryReportECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(168) %i.x)
          to label %bb.fx unwind label %bb.fw

.body74:                                          ; preds = %.body69, %bb.fb, %.body81, %bb.fw
  %.pn20.pn = phi { ptr, i32 } [ %.pn17.pn, %.body81 ], [ %i.ob, %bb.fw ], [ %eh.lpad-body70, %.body69 ], [ %i.ms, %bb.fb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %.body52

bb.fw:                                            ; preds = %bb.ey, %_RNCNCNvXs_NtNtNtCsl8OoimOLbh_6qdrant5tonic3api24collections_internal_apiNtB8_26CollectionsInternalServiceNtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant27collections_internal_server19CollectionsInternal23get_shard_memory_report0s_0Be_.exit.i, %bb.gh, %bb.fv
  %i.ob = landingpad { ptr, i32 }
          cleanup
  br label %.body74

bb.fx:                                            ; preds = %bb.fv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  %i.oc = getelementptr inbounds nuw i8, ptr %1, i64 480 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6875)
  call void @llvm.experimental.noalias.scope.decl(metadata !6876)
  %i.od = load ptr, ptr %i.oc, align 8, !alias.scope !6877, !nonnull !13, !noundef !13
  %i.oe = atomicrmw add ptr %i.od, i64 -1 release, align 8, !noalias !6877
  %i.of = icmp eq i64 %i.oe, 1
  br i1 %i.of, label %bb.fy, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsPYQCUnoTxQ_10collection10collection10CollectionEECsl8OoimOLbh_6qdrant.exit90

bb.fy:                                            ; preds = %bb.fx
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCsPYQCUnoTxQ_10collection10collection10CollectionE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.oc) #20
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsPYQCUnoTxQ_10collection10collection10CollectionEECsl8OoimOLbh_6qdrant.exit90 unwind label %bb.fz

bb.fz:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i.i57, %bb.i, %bb.h, %bb.gj, %bb.fy
  %i.og = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsPYQCUnoTxQ_10collection10collection10CollectionEECsl8OoimOLbh_6qdrant.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsPYQCUnoTxQ_10collection10collection10CollectionEECsl8OoimOLbh_6qdrant.exit90: ; preds = %bb.fx, %bb.fy
  %i.oh = getelementptr inbounds nuw i8, ptr %1, i64 424 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.oh)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsl8OoimOLbh_6qdrant.exit.i92 unwind label %bb.ga

bb.ga:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsPYQCUnoTxQ_10collection10collection10CollectionEECsl8OoimOLbh_6qdrant.exit90
  %i.oi = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.oh)
          to label %.body62 unwind label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  %i.oj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsl8OoimOLbh_6qdrant.exit.i92: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsPYQCUnoTxQ_10collection10collection10CollectionEECsl8OoimOLbh_6qdrant.exit90
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.oh)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit96 unwind label %bb.e

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit96: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsl8OoimOLbh_6qdrant.exit.i92
  %i.ok = getelementptr inbounds nuw i8, ptr %1, i64 280
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsgGgPqgSfnMH_7storage4rbac4auth4AuthECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(128) %i.ok)
          to label %bb.gd unwind label %bb.gc

bb.gc:                                            ; preds = %bb.c, %bb.b, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit96
  %i.ol = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.gd:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit96
  %i.om = getelementptr inbounds nuw i8, ptr %1, i64 478
  store i8 0, ptr %i.om, align 2
  br label %bb.ge

bb.ge:                                            ; preds = %bb.gm, %bb.gl, %bb.gd
  %.sroa.6.2 = phi ptr [ %.sroa.6.1, %bb.gm ], [ %.sroa.6.1, %bb.gl ], [ %.sroa.6.0.copyload, %bb.gd ]
  %.sroa.0.2 = phi i64 [ -1, %bb.gm ], [ -1, %bb.gl ], [ %.sroa.0.0.copyload, %bb.gd ]
  store i64 %.sroa.0.2, ptr %0, align 8
  %.sroa.6.0..sroa_idx100 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.6.2, ptr %.sroa.6.0..sroa_idx100, align 8
  %.sroa.10.0..sroa_idx102 = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.10.0..sroa_idx102, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.10, i64 120, i1 false)
  br label %common.ret

bb.gf:                                            ; preds = %bb.gg, %bb.fu
  %.pn15 = phi { ptr, i32 } [ %i.oa, %bb.fu ], [ %i.ns, %bb.gg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %.body81

bb.gg:                                            ; preds = %bb.fs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %bb.gf

.body81:                                          ; preds = %bb.fp, %bb.fj, %bb.fg, %bb.fm, %bb.gf
  %.pn17.pn = phi { ptr, i32 } [ %.pn15, %bb.gf ], [ %i.nl, %bb.fm ], [ %i.nn, %bb.fp ], [ %i.nh, %bb.fg ], [ %i.ni, %bb.fj ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsPYQCUnoTxQ_10collection6common15memory_reporter22CollectionMemoryReportECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(168) %i.x) #19
          to label %.body74 unwind label %bb.ar

bb.gh:                                            ; preds = %_RNCNCNvXs_NtNtNtCsl8OoimOLbh_6qdrant5tonic3api24collections_internal_apiNtB8_26CollectionsInternalServiceNtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant27collections_internal_server19CollectionsInternal23get_shard_memory_report0s0_0Be_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6873
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !6873
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsPYQCUnoTxQ_10collection6common15memory_reporter22CollectionMemoryReportECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(168) %i.x)
          to label %bb.gi unwind label %bb.fw

bb.gi:                                            ; preds = %bb.gk, %bb.gh
  %.sroa.6.3 = phi ptr [ %i.mt, %bb.gk ], [ %i.no, %bb.gh ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  %i.on = getelementptr inbounds nuw i8, ptr %1, i64 480 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6878)
  call void @llvm.experimental.noalias.scope.decl(metadata !6879)
  %i.oo = load ptr, ptr %i.on, align 8, !alias.scope !6880, !nonnull !13, !noundef !13
  %i.op = atomicrmw add ptr %i.oo, i64 -1 release, align 8, !noalias !6880
  %i.oq = icmp eq i64 %i.op, 1
  br i1 %i.oq, label %bb.gj, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsPYQCUnoTxQ_10collection10collection10CollectionEECsl8OoimOLbh_6qdrant.exit98

bb.gj:                                            ; preds = %bb.gi
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCsPYQCUnoTxQ_10collection10collection10CollectionE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.on) #20
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsPYQCUnoTxQ_10collection10collection10CollectionEECsl8OoimOLbh_6qdrant.exit98 unwind label %bb.fz

bb.gk:                                            ; preds = %_RNCNCNvXs_NtNtNtCsl8OoimOLbh_6qdrant5tonic3api24collections_internal_apiNtB8_26CollectionsInternalServiceNtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant27collections_internal_server19CollectionsInternal23get_shard_memory_report0s_0Be_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !6865
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !6865
  br label %bb.gi

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsl8OoimOLbh_6qdrant.exit.i
  %i.or = getelementptr inbounds nuw i8, ptr %1, i64 280
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsgGgPqgSfnMH_7storage4rbac4auth4AuthECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(128) %i.or)
          to label %bb.gl unwind label %bb.gc

bb.gl:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit
  %i.os = getelementptr inbounds nuw i8, ptr %1, i64 478
  store i8 0, ptr %i.os, align 2
  %i.ot = getelementptr inbounds nuw i8, ptr %1, i64 477
  %i.ou = load i8, ptr %i.ot, align 1, !range !24, !noundef !13
  %i.ov = trunc nuw i8 %i.ou to i1
  br i1 %i.ov, label %bb.gm, label %bb.ge

bb.gm:                                            ; preds = %bb.gl
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgOCJwUSa4vG_5tonic7request7RequestNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant27GetShardMemoryReportRequestEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(136) %1)
          to label %bb.ge unwind label %bb.go

bb.gn:                                            ; preds = %bb.gr, %bb.gp, %bb.go
  %.pn34 = phi { ptr, i32 } [ %i.ow, %bb.go ], [ %.pn32, %bb.gr ], [ %.pn32, %bb.gp ]
  store i8 2, ptr %i.ab, align 4
  resume { ptr, i32 } %.pn34

bb.go:                                            ; preds = %bb.gm
  %i.ow = landingpad { ptr, i32 }
          cleanup
  br label %bb.gn

bb.gp:                                            ; preds = %bb.gq, %bb.l
  store i8 0, ptr %i.bi, align 2
  %i.ox = getelementptr inbounds nuw i8, ptr %1, i64 477
  %i.oy = load i8, ptr %i.ox, align 1, !range !24, !noundef !13
  %i.oz = trunc nuw i8 %i.oy to i1
  br i1 %i.oz, label %bb.gr, label %bb.gn

bb.gq:                                            ; preds = %bb.l
  %i.pa = getelementptr inbounds nuw i8, ptr %1, i64 144
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgOCJwUSa4vG_5tonic7request7RequestNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant27GetShardMemoryReportRequestEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(136) %i.pa) #19
          to label %bb.gp unwind label %bb.ar

bb.gr:                                            ; preds = %bb.gp
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgOCJwUSa4vG_5tonic7request7RequestNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant27GetShardMemoryReportRequestEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(136) %1) #19
          to label %bb.gn unwind label %bb.ar
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvXs_NtNtNtCsl8OoimOLbh_6qdrant5tonic3api24collections_internal_apiNtB6_26CollectionsInternalServiceNtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant27collections_internal_server19CollectionsInternal23get_shard_optimizations0Bc_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([136 x i8]) align 8 captures(none) dereferenceable(136) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 6 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 12 uses
  %i.h = alloca [32 x i8], align 8                ; 7 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [48 x i8], align 8                ; 9 uses
  %i.k = alloca [8 x i8], align 8                 ; 5 uses
  %i.l = alloca [24 x i8], align 8                ; 8 uses
  %i.m = alloca [8 x i8], align 8                 ; 5 uses
  %i.n = alloca [32 x i8], align 8                ; 7 uses
  %i.o = alloca [32 x i8], align 8                ; 7 uses
  %.sroa.017.sroa.0.i.sroa.6.i = alloca [24 x i8], align 8 ; 6 uses
  %.sroa.6170.i.i = alloca [16 x i8], align 8     ; 6 uses
  %.sroa.025.sroa.4.i.i = alloca [24 x i8], align 8 ; 6 uses
  %i.p = alloca [24 x i8], align 8                ; 7 uses
  %i.q = alloca [24 x i8], align 8                ; 6 uses
  %i.r = alloca [24 x i8], align 8                ; 8 uses
  %i.s = alloca [24 x i8], align 8                ; 13 uses
  %i.t = alloca [24 x i8], align 8                ; 11 uses
  %i.u = alloca [48 x i8], align 8                ; 8 uses
  %i.v = alloca [216 x i8], align 8               ; 6 uses
  %i.w = alloca [216 x i8], align 8               ; 6 uses
  %i.x = alloca [32 x i8], align 8                ; 9 uses
  %i.y = alloca [8 x i8], align 8                 ; 8 uses
  %i.z = alloca [16 x i8], align 8                ; 9 uses
  %i.aa = alloca [24 x i8], align 8               ; 10 uses
  %i.ab = alloca [24 x i8], align 8               ; 10 uses
  %i.ac = alloca [16 x i8], align 8               ; 5 uses
  %i.ad = alloca [48 x i8], align 8               ; 5 uses
  %.sroa.673.i = alloca [24 x i8], align 8        ; 7 uses
  %.sroa.875.i = alloca [16 x i8], align 8        ; 6 uses
  %.sroa.976.i = alloca [24 x i8], align 8        ; 6 uses
  %.sroa.867.sroa.7.i = alloca [24 x i8], align 8 ; 7 uses
  %.sroa.969.i = alloca [16 x i8], align 8        ; 7 uses
  %.sroa.1070.i = alloca [24 x i8], align 8       ; 7 uses
  %i.ae = alloca [32 x i8], align 8               ; 7 uses
  %i.af = alloca [24 x i8], align 8               ; 4 uses
  %i.ag = alloca [56 x i8], align 8               ; 9 uses
  %i.ah = alloca [56 x i8], align 8               ; 4 uses
  %i.ai = alloca [56 x i8], align 8               ; 9 uses
  %i.aj = alloca [136 x i8], align 8              ; 7 uses
  %i.ak = alloca [24 x i8], align 8               ; 8 uses
  %i.al = alloca [32 x i8], align 8               ; 6 uses
  %.sroa.8162 = alloca [24 x i8], align 8         ; 3 uses
  %.sroa.10164 = alloca [16 x i8], align 8        ; 2 uses
  %.sroa.11165 = alloca [24 x i8], align 8        ; 2 uses
  %.sroa.11155 = alloca [24 x i8], align 8        ; 7 uses
  %.sroa.13157 = alloca [16 x i8], align 8        ; 7 uses
  %.sroa.14 = alloca [24 x i8], align 8           ; 7 uses
  %i.am = alloca [128 x i8], align 8              ; 19 uses
  %.sroa.4127 = alloca [40 x i8], align 8         ; 2 uses
  %i.an = alloca [56 x i8], align 8               ; 11 uses
  %i.ao = alloca [144 x i8], align 8              ; 5 uses
  %i.ap = alloca [40 x i8], align 8               ; 10 uses
  %.sroa.10 = alloca [120 x i8], align 8          ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 516 ; 3 uses
  %i.ar = load i8, ptr %i.aq, align 4, !range !32, !noundef !13
  switch i8 %i.ar, label %default.unreachable266 [
    i8 0, label %bb.b
    i8 1, label %bb.m
    i8 2, label %bb.n
    i8 3, label %bb.o
    i8 4, label %bb.as
  ]

default.unreachable266:                           ; preds = %bb.bp, %bb.as, %bb.o, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 518 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 517
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.av = load ptr, ptr %i.au, align 8, !nonnull !13, !align !14, !noundef !13
  store i8 0, ptr %i.at, align 1
  store i8 1, ptr %i.as, align 2
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.aw, ptr noundef nonnull align 8 dereferenceable(144) %1, i64 144, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 248
  invoke void @_RINvNtNtCsl8OoimOLbh_6qdrant5tonic3api16validate_and_logNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant28GetShardOptimizationsRequestEB6_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ax)
          to label %bb.c unwind label %bb.hr

bb.c:                                             ; preds = %bb.b
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 296 ; 2 uses
  invoke void @_RINvNtNtCsl8OoimOLbh_6qdrant5tonic4auth12extract_authNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant28GetShardOptimizationsRequestEB6_(ptr noalias nofree noundef nonnull sret([128 x i8]) align 8 captures(address) dereferenceable(128) %i.ay, ptr noalias nofree noundef nonnull align 8 dereferenceable(144) %i.aw)
          to label %bb.d unwind label %bb.hr

bb.d:                                             ; preds = %bb.c
  %i.az = invoke { i64, i32 } @_RNvMNtCsG258MDvU3F_3std4timeNtB2_7Instant3now()
          to label %bb.f unwind label %bb.e       ; 2 uses

.body62:                                          ; preds = %bb.hp, %bb.ap, %bb.e, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsPYQCUnoTxQ_10collection10collection10CollectionEECsl8OoimOLbh_6qdrant.exit, %bb.g
  %.pn30 = phi { ptr, i32 } [ %i.bg, %bb.g ], [ %.pn26.pn.pn, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsPYQCUnoTxQ_10collection10collection10CollectionEECsl8OoimOLbh_6qdrant.exit ], [ %i.em, %bb.ap ], [ %i.bb, %bb.e ], [ %i.sk, %bb.hp ]
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 296
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsgGgPqgSfnMH_7storage4rbac4auth4AuthECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(128) %i.ba) #19
          to label %bb.l unwind label %bb.ar

bb.e:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsl8OoimOLbh_6qdrant.exit.i92, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsl8OoimOLbh_6qdrant.exit.i, %bb.d
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %.body62

bb.f:                                             ; preds = %bb.d
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 424
  %i.bd = extractvalue { i64, i32 } %i.az, 0
  %i.be = extractvalue { i64, i32 } %i.az, 1
  store i64 %i.bd, ptr %i.bc, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 432
  store i32 %i.be, ptr %i.bf, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  store i8 0, ptr %i.as, align 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.ao, ptr noundef nonnull align 8 dereferenceable(144) %i.aw, i64 144, i1 false)
  invoke void @_RNvMNtCsgOCJwUSa4vG_5tonic7requestINtB2_7RequestNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant28GetShardOptimizationsRequestE10into_innerCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.ap, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(144) %i.ao)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  br label %.body62

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 440
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bh, ptr noundef nonnull align 8 dereferenceable(24) %i.ap, i64 24, i1 false)
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 512
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %i.bk = load i32, ptr %i.bj, align 8, !noundef !13
  store i32 %i.bk, ptr %i.bi, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ap, i64 36
  %i.bm = load i8, ptr %i.bl, align 4, !range !24, !noundef !13
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.bo = load i32, ptr %i.bn, align 8, !range !61, !noundef !13 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ap, i64 28
  %i.bq = load i32, ptr %i.bp, align 4
  %i.br = getelementptr inbounds nuw i8, ptr %i.ap, i64 37
  %i.bs = load i8, ptr %i.br, align 1, !range !24, !noundef !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  %i.bt = trunc nuw i32 %i.bo to i1
  %i.bu = zext i32 %i.bq to i64
  %spec.select.i = zext nneg i32 %i.bo to i64
  %spec.select3.i = select i1 %i.bt, i64 %i.bu, i64 undef
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 464
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 480
  store i8 %i.bm, ptr %i.bw, align 8
  store i64 %spec.select.i, ptr %i.bv, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 472
  store i64 %spec.select3.i, ptr %i.bx, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 481
  store i8 %i.bs, ptr %i.by, align 1
  %.val = load ptr, ptr %i.av, align 8, !nonnull !13, !noundef !13
  %i.bz = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.ca = getelementptr i8, ptr %1, i64 448
  %.val36 = load ptr, ptr %i.ca, align 8, !nonnull !13, !noundef !13
  %i.cb = getelementptr i8, ptr %1, i64 456
  %.val37 = load i64, ptr %i.cb, align 8, !noundef !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !7008
  invoke void @_RNvMNtNtCsgGgPqgSfnMH_7storage4rbac4authNtB2_4Auth23check_collection_access(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.ai, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.ay, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val36, i64 noundef %.val37, i24 65793, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @187, i64 noundef 26)
          to label %.noexc unwind label %bb.ho

.noexc:                                           ; preds = %bb.h
  %i.cc = load i32, ptr %i.ai, align 8, !range !57, !noalias !7008, !noundef !13
  %.not.i = icmp eq i32 %i.cc, -1
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !7008
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ah, ptr noundef nonnull align 8 dereferenceable(56) %i.ai, i64 56, i1 false), !noalias !7008
  %i.cd = invoke noundef nonnull align 8 ptr @_RNvXNtNtCsgGgPqgSfnMH_7storage15content_manager11conversionsNtNtCsgOCJwUSa4vG_5tonic6status6StatusINtNtCskKLDkoKarTP_4core7convert4FromNtNtB4_6errors12StorageErrorE4from(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(56) %i.ah)
          to label %.thread unwind label %bb.ho

.thread:                                          ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !7008
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !7008
  br label %bb.k

bb.j:                                             ; preds = %.noexc
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.sroa.0117.0.copyload = load i64, ptr %i.ce, align 8, !noalias !7009 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !7009 ; 2 uses
  %.sroa.10118.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %.sroa.10118.0.copyload = load i64, ptr %.sroa.10118.0..sroa_idx, align 8, !noalias !7009
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !7008
  %i.cf = icmp eq i64 %.sroa.0117.0.copyload, -2
  br i1 %i.cf, label %bb.k, label %.thread267

.thread267:                                       ; preds = %bb.j
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 488 ; 2 uses
  store i64 %.sroa.0117.0.copyload, ptr %i.cg, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 496
  store ptr %.sroa.7.0.copyload, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 504
  store i64 %.sroa.10118.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 520
  store ptr %i.bz, ptr %i.ch, align 8
  %.sroa.9107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 528
  store ptr %i.cg, ptr %.sroa.9107.0..sroa_idx, align 8
  %.sroa.11109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 704
  store i8 0, ptr %.sroa.11109.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 520
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 704
  br label %bb.p

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCsgGgPqgSfnMH_7storage15content_manager3tocNtBG_14TableOfContent14get_collection0ECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.ak, %bb.ac, %.body, %.body.thread, %bb.y
  %.pn24 = phi { ptr, i32 } [ %i.dh, %bb.y ], [ %i.dl, %bb.ac ], [ %.pn2.i, %.body.thread ], [ %i.dh, %.body ], [ %i.ef, %bb.ak ]
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 488
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgGgPqgSfnMH_7storage4rbac14CollectionPassECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ck) #19
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsPYQCUnoTxQ_10collection10collection10CollectionEECsl8OoimOLbh_6qdrant.exit unwind label %bb.ar

bb.k:                                             ; preds = %.thread, %bb.j
  %.sroa.7.0203 = phi ptr [ %i.cd, %.thread ], [ %.sroa.7.0.copyload, %bb.j ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0203) ]
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsPYQCUnoTxQ_10collection10collection10CollectionEECsl8OoimOLbh_6qdrant.exit98

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsPYQCUnoTxQ_10collection10collection10CollectionEECsl8OoimOLbh_6qdrant.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCsgGgPqgSfnMH_7storage15content_manager3tocNtBG_14TableOfContent14get_collection0ECsl8OoimOLbh_6qdrant.exit, %bb.an, %.body52, %bb.aj, %bb.ho
end_hunk_0
begin_hunk_1_@_RNCNvXs_NtNtNtCsl8OoimOLbh_6qdrant5tonic3api24collections_internal_apiNtB6_26CollectionsInternalServiceNtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant27collections_internal_server19CollectionsInternal23get_shard_optimizations0Bc_:bb.a
_RNvXNtCs27TyLBeV75a_11parking_lot9raw_mutexNtB2_8RawMutexNtNtCsbO4BqjCww8C_8lock_api5mutex8RawMutex4lock.exit.i103.i.i: ; preds = %bb.dq, %bb.dp
  %i.ln = ptrtoint ptr %i.lj to i64               ; 3 uses
  invoke void @_RNvNtNtCsawlvgPhpsYW_16parking_lot_core11parking_lot13deadlock_impl16acquire_resource(i64 noundef %i.ln)
          to label %bb.dr unwind label %bb.dw, !noalias !7033

bb.dr:                                            ; preds = %_RNvXNtCs27TyLBeV75a_11parking_lot9raw_mutexNtB2_8RawMutexNtNtCsbO4BqjCww8C_8lock_api5mutex8RawMutex4lock.exit.i103.i.i
  %i.lo = getelementptr inbounds nuw i8, ptr %.val72.i.i, i64 24
  %.val76.i.i = load i64, ptr %i.lo, align 8, !range !29, !noalias !7033, !noundef !13
  %i.lp = icmp eq i64 %.val76.i.i, 0
  br i1 %i.lp, label %bb.du, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  invoke void @_RNvNtNtCsawlvgPhpsYW_16parking_lot_core11parking_lot13deadlock_impl16release_resource(i64 noundef %i.ln)
          to label %.noexc106.i.i unwind label %bb.dw, !noalias !7033

.noexc106.i.i:                                    ; preds = %bb.ds
  %i.lq = cmpxchg ptr %i.lj, i8 1, i8 0 release monotonic, align 1, !noalias !7033
  %i.lr = extractvalue { i8, i1 } %i.lq, 1
  br i1 %i.lr, label %bb.dx, label %bb.dt, !prof !27

bb.dt:                                            ; preds = %.noexc106.i.i
  invoke void @_RNvMs1_NtCs27TyLBeV75a_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.lj, i1 noundef zeroext false)
          to label %bb.dx unwind label %bb.dw, !noalias !7033

bb.du:                                            ; preds = %bb.dr
  invoke void @_RNvNtNtCsawlvgPhpsYW_16parking_lot_core11parking_lot13deadlock_impl16release_resource(i64 noundef %i.ln)
          to label %.noexc108.i.i unwind label %bb.dw, !noalias !7033

.noexc108.i.i:                                    ; preds = %bb.du
  %i.ls = cmpxchg ptr %i.lj, i8 1, i8 0 release monotonic, align 1, !noalias !7033
  %i.lt = extractvalue { i8, i1 } %i.ls, 1
  br i1 %i.lt, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api5mutex10MutexGuardNtNtCs27TyLBeV75a_11parking_lot9raw_mutex8RawMutexNtNtCs5QaNqjAn6vc_5shard7tracker12TrackerStateEECsl8OoimOLbh_6qdrant.exit110.i.i, label %bb.dv, !prof !27

bb.dv:                                            ; preds = %.noexc108.i.i
  invoke void @_RNvMs1_NtCs27TyLBeV75a_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.lj, i1 noundef zeroext false)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api5mutex10MutexGuardNtNtCs27TyLBeV75a_11parking_lot9raw_mutex8RawMutexNtNtCs5QaNqjAn6vc_5shard7tracker12TrackerStateEECsl8OoimOLbh_6qdrant.exit110.i.i unwind label %bb.dw, !noalias !7033

bb.dw:                                            ; preds = %bb.dv, %bb.du, %bb.dt, %bb.ds, %_RNvXNtCs27TyLBeV75a_11parking_lot9raw_mutexNtB2_8RawMutexNtNtCsbO4BqjCww8C_8lock_api5mutex8RawMutex4lock.exit.i103.i.i, %bb.dq
  %i.lu = landingpad { ptr, i32 }
          cleanup
  br label %bb.em

bb.dx:                                            ; preds = %bb.dt, %.noexc106.i.i
  %.val80.i.i = load i64, ptr %i.ko, align 8, !range !18, !noalias !7026, !noundef !13
  %.not.i29.i = icmp eq i64 %.val80.i.i, 0
  br i1 %.not.i29.i, label %.backedge, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !7026
  invoke void @_RNvMs0_NtCs5QaNqjAn6vc_5shard7trackerNtB5_7Tracker15to_optimization(ptr noalias nofree noundef nonnull sret([216 x i8]) align 8 captures(none) dereferenceable(216) %i.v, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %.sink6.i.i.i)
          to label %bb.ea unwind label %bb.dz, !noalias !7033

bb.dz:                                            ; preds = %bb.dy
  %i.lv = landingpad { ptr, i32 }
          cleanup
  br label %.body111.i.i

.body111.i.i:                                     ; preds = %bb.ec, %bb.dz
  %eh.lpad-body112.i.i = phi { ptr, i32 } [ %i.lv, %bb.dz ], [ %i.lz, %bb.ec ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !7026
  br label %bb.em

bb.ea:                                            ; preds = %bb.dy
  %i.lw = load i64, ptr %i.kq, align 8, !alias.scope !7049, !noalias !7026, !noundef !13 ; 3 uses
  %i.lx = load i64, ptr %i.kp, align 8, !range !15, !alias.scope !7049, !noalias !7026, !noundef !13
  %i.ly = icmp eq i64 %i.lw, %i.lx
  br i1 %i.ly, label %bb.eb, label %bb.ee

bb.eb:                                            ; preds = %bb.ea
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationE8grow_oneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.kp)
          to label %bb.ee unwind label %bb.ec, !noalias !7050

bb.ec:                                            ; preds = %bb.eb
  %i.lz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(216) %i.v) #19
          to label %.body111.i.i unwind label %bb.ed, !noalias !7033

bb.ed:                                            ; preds = %bb.ec
  %i.ma = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17, !noalias !7033
  unreachable

bb.ee:                                            ; preds = %bb.eb, %bb.ea
  %i.mb = load ptr, ptr %i.kr, align 8, !alias.scope !7049, !noalias !7026, !nonnull !13, !noundef !13
  %i.mc = getelementptr inbounds nuw [216 x i8], ptr %i.mb, i64 %i.lw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.mc, ptr noundef nonnull align 8 dereferenceable(216) %i.v, i64 216, i1 false), !noalias !7033
  %i.md = add i64 %i.lw, 1
  store i64 %i.md, ptr %i.kq, align 8, !alias.scope !7049, !noalias !7026
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !7026
  br label %.backedge

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api5mutex10MutexGuardNtNtCs27TyLBeV75a_11parking_lot9raw_mutex8RawMutexNtNtCs5QaNqjAn6vc_5shard7tracker12TrackerStateEECsl8OoimOLbh_6qdrant.exit110.i.i: ; preds = %bb.dv, %.noexc108.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !7026
  invoke void @_RNvMs0_NtCs5QaNqjAn6vc_5shard7trackerNtB5_7Tracker15to_optimization(ptr noalias nofree noundef nonnull sret([216 x i8]) align 8 captures(none) dereferenceable(216) %i.w, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %.sink6.i.i.i)
          to label %bb.eg unwind label %bb.ef, !noalias !7033

bb.ef:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api5mutex10MutexGuardNtNtCs27TyLBeV75a_11parking_lot9raw_mutex8RawMutexNtNtCs5QaNqjAn6vc_5shard7tracker12TrackerStateEECsl8OoimOLbh_6qdrant.exit110.i.i
  %i.me = landingpad { ptr, i32 }
          cleanup
  br label %.body113.i.i

.body113.i.i:                                     ; preds = %bb.ei, %bb.ef
  %eh.lpad-body114.i.i = phi { ptr, i32 } [ %i.me, %bb.ef ], [ %i.mi, %bb.ei ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !7026
  br label %bb.em

bb.eg:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api5mutex10MutexGuardNtNtCs27TyLBeV75a_11parking_lot9raw_mutex8RawMutexNtNtCs5QaNqjAn6vc_5shard7tracker12TrackerStateEECsl8OoimOLbh_6qdrant.exit110.i.i
  %i.mf = load i64, ptr %i.kt, align 8, !alias.scope !7051, !noalias !7026, !noundef !13 ; 3 uses
  %i.mg = load i64, ptr %i.ks, align 8, !range !15, !alias.scope !7051, !noalias !7026, !noundef !13
  %i.mh = icmp eq i64 %i.mf, %i.mg
  br i1 %i.mh, label %bb.eh, label %bb.ek

bb.eh:                                            ; preds = %bb.eg
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationE8grow_oneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ks)
          to label %bb.ek unwind label %bb.ei, !noalias !7052

bb.ei:                                            ; preds = %bb.eh
  %i.mi = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(216) %i.w) #19
          to label %.body113.i.i unwind label %bb.ej, !noalias !7033

bb.ej:                                            ; preds = %bb.ei
  %i.mj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17, !noalias !7033
  unreachable

bb.ek:                                            ; preds = %bb.eh, %bb.eg
  %i.mk = load ptr, ptr %i.ku, align 8, !alias.scope !7051, !noalias !7026, !nonnull !13, !noundef !13
  %i.ml = getelementptr inbounds nuw [216 x i8], ptr %i.mk, i64 %i.mf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.ml, ptr noundef nonnull align 8 dereferenceable(216) %i.w, i64 216, i1 false), !noalias !7033
  %i.mm = add i64 %i.mf, 1
  store i64 %i.mm, ptr %i.kt, align 8, !alias.scope !7051, !noalias !7026
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !7026
  br label %.backedge

.backedge:                                        ; preds = %bb.ek, %bb.ee, %bb.dx
  br label %bb.dg

bb.el:                                            ; preds = %bb.ge, %bb.gd, %bb.gc, %bb.gb, %bb.fz, %.body134.i.i, %bb.fh, %bb.fg, %bb.er, %bb.em, %bb.dk, %bb.cl
  %i.mn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17, !noalias !7033
  unreachable

bb.em:                                            ; preds = %.body113.i.i, %.body111.i.i, %bb.dw, %bb.de
  %.pn56.pn.i.i = phi { ptr, i32 } [ %i.kn, %bb.de ], [ %eh.lpad-body114.i.i, %.body113.i.i ], [ %i.lu, %bb.dw ], [ %eh.lpad-body112.i.i, %.body111.i.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api5mutex10MutexGuardNtNtCs27TyLBeV75a_11parking_lot9raw_mutex8RawMutexNtNtCs5QaNqjAn6vc_5shard7tracker10TrackerLogEECsl8OoimOLbh_6qdrant(ptr nonnull %i.kg) #19
          to label %bb.dj unwind label %bb.el, !noalias !7033

bb.en:                                            ; preds = %bb.do
  %i.mo = load i64, ptr %i.u, align 8, !range !17, !noalias !7026, !noundef !13
  %.not41.i.i = icmp eq i64 %i.mo, -1
  br i1 %.not41.i.i, label %bb.fi, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !7026
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false), !noalias !7026
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !7026
  %i.mp = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.mp, i64 24, i1 false), !noalias !7026
  %i.mq = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.val81.i.i = load i64, ptr %i.mq, align 8, !noalias !7026, !noundef !13 ; 4 uses
  %i.mr = icmp ult i64 %.val81.i.i, 192153584101141163
  call void @llvm.assume(i1 %i.mr)
  %i.ms = getelementptr inbounds nuw i8, ptr %1, i64 768 ; 2 uses
  %i.mt = load i64, ptr %i.ms, align 8, !noalias !7026, !noundef !13
  %i.mu = add i64 %i.mt, %.val81.i.i
  store i64 %i.mu, ptr %i.ms, align 8, !noalias !7026
  %i.mv = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.val82.i.i = load ptr, ptr %i.mv, align 8, !noalias !7026, !nonnull !13, !noundef !13 ; 4 uses
  %.idx.i.i = mul nuw nsw i64 %.val81.i.i, 48
  %i.mw = getelementptr inbounds nuw i8, ptr %.val82.i.i, i64 %.idx.i.i ; 2 uses
  %i.mx = icmp eq i64 %.val81.i.i, 0
  br i1 %i.mx, label %._crit_edge.i.i, label %.lr.ph190.i.i

.lr.ph190.i.i:                                    ; preds = %bb.eo
  %i.my = getelementptr inbounds nuw i8, ptr %1, i64 776 ; 2 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %1, i64 784 ; 2 uses
  %.promoted191.i.i = load i64, ptr %i.my, align 8, !noalias !7026
  br label %bb.fe

.loopexit.i.i:                                    ; preds = %bb.ff, %bb.fe
  %i.na = icmp eq ptr %i.oa, %i.mw
  br i1 %i.na, label %._crit_edge.i.i, label %bb.fe

._crit_edge.i.i:                                  ; preds = %.loopexit.i.i, %bb.eo
  %i.nb = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %.val84.i.i = load i64, ptr %i.nb, align 8, !noalias !7026, !noundef !13 ; 2 uses
  %i.nc = icmp ult i64 %.val84.i.i, 384307168202282326
  call void @llvm.assume(i1 %i.nc)
  %i.nd = getelementptr inbounds nuw i8, ptr %1, i64 792 ; 2 uses
  %i.ne = load i64, ptr %i.nd, align 8, !noalias !7026, !noundef !13
  %i.nf = add i64 %i.ne, %.val84.i.i
  store i64 %i.nf, ptr %i.nd, align 8, !noalias !7026
  %i.ng = getelementptr inbounds nuw i8, ptr %1, i64 744 ; 2 uses
  %i.nh = load i64, ptr %i.ng, align 8, !range !17, !noalias !7026, !noundef !13
  %.not43.i.i = icmp eq i64 %i.nh, -1             ; 4 uses
  br i1 %.not43.i.i, label %bb.eq, label %bb.ep

bb.ep:                                            ; preds = %._crit_edge.i.i
  %.sroa.0162.0.copyload.i.i = load i64, ptr %i.t, align 8, !noalias !7026
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !7053
  store ptr %.val82.i.i, ptr %i.o, align 8, !alias.scope !7054, !noalias !7053
  %i.ni = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 %.sroa.0162.0.copyload.i.i, ptr %i.ni, align 8, !alias.scope !7054, !noalias !7053
  %i.nj = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %.val82.i.i, ptr %i.nj, align 8, !alias.scope !7054, !noalias !7053
  %i.nk = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store ptr %i.mw, ptr %i.nk, align 8, !alias.scope !7054, !noalias !7053
  invoke void @_RNvXs0_NtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB7_3VecNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization19PendingOptimizationEINtB5_10SpecExtendBU_INtNtB7_9into_iter8IntoIterBU_EE11spec_extendCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ng, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.o)
          to label %.body125.thread.i.i unwind label %bb.er, !noalias !7033

bb.eq:                                            ; preds = %.body125.thread.i.i, %._crit_edge.i.i
  %i.nl = getelementptr inbounds nuw i8, ptr %1, i64 720 ; 2 uses
  %i.nm = load i64, ptr %i.nl, align 8, !range !17, !noalias !7026, !noundef !13
  %.not44.i.i = icmp eq i64 %i.nm, -1
  br i1 %.not44.i.i, label %.critedge.i.i, label %bb.et

bb.er:                                            ; preds = %bb.ep
  %i.nn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization23OptimizationSegmentInfoEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.s) #19
          to label %.body125.i.i.a unwind label %bb.el, !noalias !7033

.body125.thread.i.i:                              ; preds = %bb.ep
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !7053
  br label %bb.eq

bb.es:                                            ; preds = %bb.et
  %3 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !7026
  br i1 %.not43.i.i, label %bb.fg, label %.body128.i.i

bb.et:                                            ; preds = %bb.eq
  %.sroa.0165.0.copyload.i.i = load i64, ptr %i.s, align 8, !noalias !7026
  %.sroa.5166.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.5166.0.copyload.i.i = load ptr, ptr %.sroa.5166.0..sroa_idx.i.i, align 8, !noalias !7026, !nonnull !13, !noundef !13 ; 3 uses
  %.sroa.6167.0.copyload.i.i = load i64, ptr %i.nb, align 8, !noalias !7026 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !7055
  %i.no = icmp ult i64 %.sroa.6167.0.copyload.i.i, 384307168202282326
  call void @llvm.assume(i1 %i.no)
  %i.np = getelementptr inbounds nuw [24 x i8], ptr %.sroa.5166.0.copyload.i.i, i64 %.sroa.6167.0.copyload.i.i
  store ptr %.sroa.5166.0.copyload.i.i, ptr %i.n, align 8, !alias.scope !7056, !noalias !7055
  %i.nq = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 %.sroa.0165.0.copyload.i.i, ptr %i.nq, align 8, !alias.scope !7056, !noalias !7055
  %i.nr = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %.sroa.5166.0.copyload.i.i, ptr %i.nr, align 8, !alias.scope !7056, !noalias !7055
  %i.ns = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr %i.np, ptr %i.ns, align 8, !alias.scope !7056, !noalias !7055
  invoke void @_RNvXs0_NtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB7_3VecNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization23OptimizationSegmentInfoEINtB5_10SpecExtendBU_INtNtB7_9into_iter8IntoIterBU_EE11spec_extendCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.nl, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.n)
          to label %bb.eu unwind label %bb.es, !noalias !7033

bb.eu:                                            ; preds = %bb.et
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !7055
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization23OptimizationSegmentInfoEECsl8OoimOLbh_6qdrant.exit.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization23OptimizationSegmentInfoEECsl8OoimOLbh_6qdrant.exit.i.i: ; preds = %bb.ew, %bb.eu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !7026
  br i1 %.not43.i.i, label %bb.ez, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization19PendingOptimizationEECsl8OoimOLbh_6qdrant.exit.i.i

.critedge.i.i:                                    ; preds = %bb.eq
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization23OptimizationSegmentInfoENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %bb.ew unwind label %bb.ev, !noalias !7033

bb.ev:                                            ; preds = %.critedge.i.i
  %i.nt = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization23OptimizationSegmentInfoENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %.body125.i.i unwind label %bb.ex, !noalias !7033

bb.ew:                                            ; preds = %.critedge.i.i
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization23OptimizationSegmentInfoENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization23OptimizationSegmentInfoEECsl8OoimOLbh_6qdrant.exit.i.i unwind label %bb.ey, !noalias !7033

bb.ex:                                            ; preds = %bb.ev
  %i.nu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17, !noalias !7033
  unreachable

.body125.i.i.a:                                   ; preds = %bb.er
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !7026
  br label %.body128.i.i

bb.ey:                                            ; preds = %bb.ew
  %i.nv = landingpad { ptr, i32 }
          cleanup
  br label %.body125.i.i

.body125.i.i:                                     ; preds = %bb.ey, %bb.ev
  %eh.lpad-body126.i.i = phi { ptr, i32 } [ %i.nv, %bb.ey ], [ %i.nt, %bb.ev ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !7026
  br i1 %.not43.i.i, label %bb.fg, label %.body128.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization19PendingOptimizationEECsl8OoimOLbh_6qdrant.exit.i.i: ; preds = %bb.fb, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization23OptimizationSegmentInfoEECsl8OoimOLbh_6qdrant.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !7026
  br label %bb.fi

bb.ez:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization23OptimizationSegmentInfoEECsl8OoimOLbh_6qdrant.exit.i.i
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization19PendingOptimizationENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %bb.fb unwind label %bb.fa, !noalias !7033

bb.fa:                                            ; preds = %bb.ez
  %i.nw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization19PendingOptimizationENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %.body128.i.i unwind label %bb.fc, !noalias !7033

bb.fb:                                            ; preds = %bb.ez
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization19PendingOptimizationENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization19PendingOptimizationEECsl8OoimOLbh_6qdrant.exit.i.i unwind label %bb.fd, !noalias !7033

bb.fc:                                            ; preds = %bb.fa
  %i.nx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17, !noalias !7033
  unreachable

.body128.i.i:                                     ; preds = %bb.fg, %bb.fd, %bb.fa, %.body125.i.i, %.body125.i.i.a, %bb.es
  %.pn45.pn.pn.pn.i.i = phi { ptr, i32 } [ %.pn45.pn.pn185.i.i, %bb.fg ], [ %i.nn, %.body125.i.i.a ], [ %eh.lpad-body126.i.i, %.body125.i.i ], [ %3, %bb.es ], [ %i.ny, %bb.fd ], [ %i.nw, %bb.fa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !7026
  br label %bb.fh

bb.fd:                                            ; preds = %bb.fb
  %i.ny = landingpad { ptr, i32 }
          cleanup
  br label %.body128.i.i

bb.fe:                                            ; preds = %.loopexit.i.i, %.lr.ph190.i.i
  %i.nz = phi i64 [ %.promoted191.i.i, %.lr.ph190.i.i ], [ %i.od, %.loopexit.i.i ]
  %.sroa.0158.0189.i.i = phi ptr [ %.val82.i.i, %.lr.ph190.i.i ], [ %i.oa, %.loopexit.i.i ] ; 3 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %.sroa.0158.0189.i.i, i64 48 ; 2 uses
  %i.ob = getelementptr i8, ptr %.sroa.0158.0189.i.i, i64 40 ; 2 uses
  %.val85.i.i = load i64, ptr %i.ob, align 8, !noalias !7033, !noundef !13 ; 2 uses
  %i.oc = icmp ult i64 %.val85.i.i, 384307168202282326
  call void @llvm.assume(i1 %i.oc)
  %i.od = add i64 %.val85.i.i, %i.nz              ; 2 uses
  store i64 %i.od, ptr %i.my, align 8, !noalias !7026
  %i.oe = getelementptr i8, ptr %.sroa.0158.0189.i.i, i64 32
  %.val86.i.i = load ptr, ptr %i.oe, align 8, !noalias !7033, !nonnull !13, !noundef !13 ; 2 uses
  %.val87.i.i = load i64, ptr %i.ob, align 8, !noalias !7033, !noundef !13 ; 2 uses
  %.idx192.i.i = mul nuw nsw i64 %.val87.i.i, 24
  %i.of = getelementptr inbounds nuw i8, ptr %.val86.i.i, i64 %.idx192.i.i
  %i.og = icmp eq i64 %.val87.i.i, 0
  br i1 %i.og, label %.loopexit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.fe
  %.promoted.i.i = load i64, ptr %i.mz, align 8, !noalias !7026
  br label %bb.ff

bb.ff:                                            ; preds = %bb.ff, %.lr.ph.i.i
  %i.oh = phi i64 [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.ol, %bb.ff ]
  %.sroa.0160.0188.i.i = phi ptr [ %.val86.i.i, %.lr.ph.i.i ], [ %i.oi, %bb.ff ] ; 2 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %.sroa.0160.0188.i.i, i64 24 ; 2 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %.sroa.0160.0188.i.i, i64 16
  %i.ok = load i64, ptr %i.oj, align 8, !noalias !7033, !noundef !13
  %i.ol = add i64 %i.ok, %i.oh                    ; 2 uses
  store i64 %i.ol, ptr %i.mz, align 8, !noalias !7026
  %i.om = icmp eq ptr %i.oi, %i.of
  br i1 %i.om, label %.loopexit.i.i, label %bb.ff

bb.fg:                                            ; preds = %.body125.i.i, %bb.es
  %.pn45.pn.pn185.i.i = phi { ptr, i32 } [ %3, %bb.es ], [ %eh.lpad-body126.i.i, %.body125.i.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization19PendingOptimizationEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.t) #19
          to label %.body128.i.i unwind label %bb.el, !noalias !7033

bb.fh:                                            ; preds = %bb.ga, %.body128.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsbO4BqjCww8C_8lock_api5mutex5MutexNtNtCs27TyLBeV75a_11parking_lot9raw_mutex8RawMutexNtNtCs5QaNqjAn6vc_5shard7tracker10TrackerLogEEECsl8OoimOLbh_6qdrant.exit.i.i, %bb.cy
  %.pn56.pn.pn.pn.pn.pn.pn.i.i = phi { ptr, i32 } [ %i.kf, %bb.cy ], [ %eh.lpad-body135.i.i, %bb.ga ], [ %.pn56.pn.pn.pn.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsbO4BqjCww8C_8lock_api5mutex5MutexNtNtCs27TyLBeV75a_11parking_lot9raw_mutex8RawMutexNtNtCs5QaNqjAn6vc_5shard7tracker10TrackerLogEEECsl8OoimOLbh_6qdrant.exit.i.i ], [ %.pn45.pn.pn.pn.i.i, %.body128.i.i ]
  invoke void @_RNvXs2_NtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guardINtB5_15RwLockReadGuardINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEENtNtNtB1l_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.z)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsl8OoimOLbh_6qdrant.exit.i.i unwind label %bb.el, !noalias !7033

bb.fi:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization19PendingOptimizationEECsl8OoimOLbh_6qdrant.exit.i.i, %bb.en, %bb.cw
  %i.on = getelementptr inbounds nuw i8, ptr %1, i64 672
  %i.oo = getelementptr i8, ptr %1, i64 680
  %.val88.i.i = load ptr, ptr %i.oo, align 8, !noalias !7026, !nonnull !13, !noundef !13 ; 2 uses
  %i.op = getelementptr i8, ptr %1, i64 688
  %.val89.i.i = load i64, ptr %i.op, align 8, !noalias !7026, !noundef !13 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !7057
  store ptr %i.a, ptr %i.m, align 8, !noalias !7058
  %i.oq = icmp samesign ult i64 %.val89.i.i, 2
  br i1 %i.oq, label %bb.fm, label %bb.fj, !prof !27

bb.fj:                                            ; preds = %bb.fi
  %i.or = icmp samesign ult i64 %.val89.i.i, 21
  br i1 %i.or, label %bb.fl, label %bb.fk, !prof !27

bb.fk:                                            ; preds = %bb.fj
  invoke void @_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6stable14driftsort_mainNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSBZ_11sort_by_keyINtNtB8_3cmp7ReverseINtNtB8_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3D_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4P_15ShardReplicaSet19local_optimizations00E0INtNtB2b_3vec3VecBZ_EECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 %.val88.i.i, i64 noundef range(i64 0, 42700796466920259) %.val89.i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.m) #20
          to label %bb.fm unwind label %bb.cy, !noalias !7033

bb.fl:                                            ; preds = %bb.fj
  invoke void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1m_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB41_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB5d_15ShardReplicaSet19local_optimizations00E0ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 %.val88.i.i, i64 noundef range(i64 0, 42700796466920259) %.val89.i.i, i64 noundef 1, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %bb.fm unwind label %bb.cy, !noalias !7033

bb.fm:                                            ; preds = %bb.fl, %bb.fk, %bb.fi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !7057
  %i.os = getelementptr inbounds nuw i8, ptr %1, i64 768
  %i.ot = load <2 x i64>, ptr %i.os, align 8, !noalias !7026
  %i.ou = getelementptr inbounds nuw i8, ptr %1, i64 784
  %i.ov = load <2 x i64>, ptr %i.ou, align 8, !noalias !7026
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !7026
  %i.ow = getelementptr inbounds nuw i8, ptr %1, i64 900
  store i8 0, ptr %i.ow, align 4, !noalias !7026
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.on, i64 24, i1 false), !noalias !7026
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !7026
  %i.ox = getelementptr inbounds nuw i8, ptr %1, i64 897 ; 2 uses
  store i8 0, ptr %i.ox, align 1, !noalias !7026
  %i.oy = getelementptr inbounds nuw i8, ptr %1, i64 744
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.oy, i64 24, i1 false), !noalias !7026
  %i.oz = getelementptr inbounds nuw i8, ptr %1, i64 656
  %i.pa = load i64, ptr %i.oz, align 8, !range !18, !noalias !7026, !noundef !13
  %i.pb = getelementptr inbounds nuw i8, ptr %1, i64 664
  %i.pc = load i64, ptr %i.pb, align 8, !noalias !7026
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !7026
  %i.pd = getelementptr inbounds nuw i8, ptr %1, i64 899
  store i8 0, ptr %i.pd, align 1, !noalias !7026
  %i.pe = getelementptr inbounds nuw i8, ptr %1, i64 696 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.pe, i64 24, i1 false), !noalias !7026
  %i.pf = trunc nuw i64 %i.pa to i1
  br i1 %i.pf, label %bb.fn, label %bb.fu

bb.fn:                                            ; preds = %bb.fm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !7059
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.pe, i64 24, i1 false), !noalias !7026
  call void @llvm.experimental.noalias.scope.decl(metadata !7060)
  %i.pg = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.ph = load ptr, ptr %i.pg, align 8, !alias.scope !7060, !noalias !7059, !nonnull !13, !noundef !13 ; 2 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.pj = load i64, ptr %i.pi, align 8, !alias.scope !7060, !noalias !7059, !noundef !13 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !7061
  store ptr %i.a, ptr %i.k, align 8, !noalias !7062
  %i.pk = icmp samesign ult i64 %i.pj, 2
  br i1 %i.pk, label %bb.fs, label %bb.fo, !prof !27

bb.fo:                                            ; preds = %bb.fn
  %i.pl = icmp samesign ult i64 %i.pj, 21
  br i1 %i.pl, label %bb.fq, label %bb.fp, !prof !27

bb.fp:                                            ; preds = %bb.fo
  invoke void @_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6stable14driftsort_mainNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSBZ_11sort_by_keyINtNtB8_3cmp7ReverseINtNtB8_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3D_6offset3utc3UtcEEENCNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4R_15ShardReplicaSet19local_optimizations0s_00E0INtNtB2b_3vec3VecBZ_EECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 %i.ph, i64 noundef range(i64 0, 42700796466920259) %i.pj, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #20
          to label %bb.fs unwind label %bb.fr, !noalias !7063

bb.fq:                                            ; preds = %bb.fo
  invoke void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1m_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB41_6offset3utc3UtcEEENCNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB5f_15ShardReplicaSet19local_optimizations0s_00E0ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 %i.ph, i64 noundef range(i64 0, 42700796466920259) %i.pj, i64 noundef 1, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k)
          to label %bb.fs unwind label %bb.fr, !noalias !7063

bb.fr:                                            ; preds = %bb.fs, %bb.fq, %bb.fp
  %i.pm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtBI_15ShardReplicaSet19local_optimizations0s_0ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l) #19
          to label %.body134.i.i unwind label %bb.ft, !noalias !7064

bb.fs:                                            ; preds = %bb.fq, %bb.fp, %bb.fn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !7061
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationE8truncateCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l, i64 noundef %i.pc)
          to label %_RNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB6_15ShardReplicaSet19local_optimizations0s_0Csl8OoimOLbh_6qdrant.exit.i.i.i unwind label %bb.fr, !noalias !7064

bb.ft:                                            ; preds = %bb.fr
  %i.pn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17, !noalias !7064
  unreachable

_RNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB6_15ShardReplicaSet19local_optimizations0s_0Csl8OoimOLbh_6qdrant.exit.i.i.i: ; preds = %bb.fs
  %.sroa.0168.0.copyload169.i.i = load i64, ptr %i.l, align 8, !noalias !7065
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6170.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.pg, i64 16, i1 false), !noalias !7026
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !7059
  br label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionjE3mapINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB2x_15ShardReplicaSet19local_optimizations0s_0ECsl8OoimOLbh_6qdrant.exit.i.i

bb.fu:                                            ; preds = %bb.fm
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtBI_15ShardReplicaSet19local_optimizations0s_0ECsl8OoimOLbh_6qdrant.exit.i.i.i unwind label %bb.fv, !noalias !7066

bb.fv:                                            ; preds = %bb.fu
  %i.po = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %.body134.i.i unwind label %bb.fw, !noalias !7066

bb.fw:                                            ; preds = %bb.fv
  %i.pp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17, !noalias !7066
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtBI_15ShardReplicaSet19local_optimizations0s_0ECsl8OoimOLbh_6qdrant.exit.i.i.i: ; preds = %bb.fu
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionjE3mapINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB2x_15ShardReplicaSet19local_optimizations0s_0ECsl8OoimOLbh_6qdrant.exit.i.i unwind label %bb.fx, !noalias !7033

bb.fx:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtBI_15ShardReplicaSet19local_optimizations0s_0ECsl8OoimOLbh_6qdrant.exit.i.i.i
  %i.pq = landingpad { ptr, i32 }
          cleanup
  br label %.body134.i.i

.body134.i.i:                                     ; preds = %bb.fx, %bb.fv, %bb.fr
  %eh.lpad-body135.i.i = phi { ptr, i32 } [ %i.pq, %bb.fx ], [ %i.pm, %bb.fr ], [ %i.po, %bb.fv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !7026
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization19PendingOptimizationEEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.q) #19
          to label %bb.fz unwind label %bb.el, !noalias !7033

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionjE3mapINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB2x_15ShardReplicaSet19local_optimizations0s_0ECsl8OoimOLbh_6qdrant.exit.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtBI_15ShardReplicaSet19local_optimizations0s_0ECsl8OoimOLbh_6qdrant.exit.i.i.i, %_RNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB6_15ShardReplicaSet19local_optimizations0s_0Csl8OoimOLbh_6qdrant.exit.i.i.i
  %.sroa.0168.0.i.i = phi i64 [ %.sroa.0168.0.copyload169.i.i, %_RNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB6_15ShardReplicaSet19local_optimizations0s_0Csl8OoimOLbh_6qdrant.exit.i.i.i ], [ -1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtBI_15ShardReplicaSet19local_optimizations0s_0ECsl8OoimOLbh_6qdrant.exit.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !7026
  %i.pr = getelementptr inbounds nuw i8, ptr %1, i64 898
  store i8 0, ptr %i.pr, align 2, !noalias !7026
  %i.ps = getelementptr inbounds nuw i8, ptr %1, i64 720
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.025.sroa.4.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.ps, i64 24, i1 false), !noalias !7026
  %.sroa.017.sroa.0.i.sroa.0.0.copyload.i = load i64, ptr %i.r, align 8, !noalias !7026 ; 2 uses
  %.sroa.017.sroa.0.i.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.017.sroa.0.i.sroa.4.0.copyload.i = load i64, ptr %.sroa.017.sroa.0.i.sroa.4.0..sroa_idx.i, align 8, !noalias !7026
  %.sroa.017.sroa.0.i.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.sroa.017.sroa.0.i.sroa.5.0.copyload.i = load ptr, ptr %.sroa.017.sroa.0.i.sroa.5.0..sroa_idx.i, align 8, !noalias !7026
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.017.sroa.0.i.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false), !noalias !7026
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !7026
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !7026
  invoke void @_RNvXs2_NtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guardINtB5_15RwLockReadGuardINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEENtNtNtB1l_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.z)
          to label %bb.gg unwind label %bb.fy, !noalias !7033

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsl8OoimOLbh_6qdrant.exit.i.i: ; preds = %bb.fy, %bb.fh, %bb.cr, %bb.cq, %bb.cl
  %.pn56.pn.pn.pn.pn.pn.pn.pn.i.i = phi { ptr, i32 } [ %.pn56.pn.pn.pn.pn.pn.pn.i.i, %bb.fh ], [ %i.pw, %bb.fy ], [ %i.jn, %bb.cq ], [ %i.jd, %bb.cl ], [ %i.jn, %bb.cr ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !7026
  %i.pt = getelementptr inbounds nuw i8, ptr %1, i64 897
  %i.pu = load i8, ptr %i.pt, align 1, !range !24, !noalias !7026, !noundef !13
  %i.pv = trunc nuw i8 %i.pu to i1
  br i1 %i.pv, label %bb.gb, label %bb.cg

bb.fy:                                            ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionjE3mapINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB2x_15ShardReplicaSet19local_optimizations0s_0ECsl8OoimOLbh_6qdrant.exit.i.i, %bb.ct
  %i.pw = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsl8OoimOLbh_6qdrant.exit.i.i

bb.fz:                                            ; preds = %.body134.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !7026
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.r) #19
          to label %bb.ga unwind label %bb.el, !noalias !7033

bb.ga:                                            ; preds = %bb.fz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !7026
  br label %bb.fh

bb.gb:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsl8OoimOLbh_6qdrant.exit.i.i
  %i.px = getelementptr inbounds nuw i8, ptr %1, i64 744
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization19PendingOptimizationEEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.px) #19
          to label %bb.cg unwind label %bb.el, !noalias !7033

bb.gc:                                            ; preds = %bb.cg
  %i.py = getelementptr inbounds nuw i8, ptr %1, i64 720
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization23OptimizationSegmentInfoEEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.py) #19
          to label %bb.ch unwind label %bb.el, !noalias !7033

bb.gd:                                            ; preds = %bb.ch
  %i.pz = getelementptr inbounds nuw i8, ptr %1, i64 696
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.pz) #19
          to label %bb.bs unwind label %bb.el, !noalias !7033

bb.ge:                                            ; preds = %bb.bs
  %i.qa = getelementptr inbounds nuw i8, ptr %1, i64 672
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.qa) #19
          to label %bb.br unwind label %bb.el, !noalias !7033

bb.gf:                                            ; preds = %bb.cj, %bb.ci
  %i.qb = landingpad { ptr, i32 }
          cleanup
end_hunk_1
