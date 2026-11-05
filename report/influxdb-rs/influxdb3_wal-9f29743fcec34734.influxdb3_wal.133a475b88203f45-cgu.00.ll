Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_wal-9f29743fcec34734.influxdb3_wal.133a475b88203f45-cgu.00?download=true
inline.NumInlined: 873
inline.NumDeleted: 305
begin_hunk_0_@_RNCNvMNtCs1ElB0qm0ygX_13influxdb3_wal12object_storeNtB4_14WalObjectStore12flush_buffer0B6_:bb.a
  %i.bz = alloca [48 x i8], align 8               ; 10 uses
  %i.ca = alloca [32 x i8], align 8               ; 8 uses
  %i.cb = alloca [24 x i8], align 8               ; 8 uses
  %i.cc = alloca [8 x i8], align 8                ; 5 uses
  %i.cd = alloca [16 x i8], align 8               ; 6 uses
  %i.ce = alloca [48 x i8], align 8               ; 10 uses
  %i.cf = alloca [32 x i8], align 8               ; 8 uses
  %i.cg = alloca [72 x i8], align 8               ; 7 uses
  %i.ch = alloca [24 x i8], align 8               ; 5 uses
  %i.ci = alloca [24 x i8], align 8               ; 5 uses
  %i.cj = alloca [128 x i8], align 8              ; 6 uses
  %i.ck = alloca [32 x i8], align 8               ; 5 uses
  %i.cl = alloca [16 x i8], align 8               ; 6 uses
  %i.cm = alloca [32 x i8], align 8               ; 8 uses
  %i.cn = alloca [24 x i8], align 8               ; 21 uses
  %i.co = alloca [8 x i8], align 8                ; 5 uses
  %i.cp = alloca [8 x i8], align 8                ; 5 uses
  %i.cq = alloca [8 x i8], align 8                ; 5 uses
  %i.cr = alloca [8 x i8], align 8                ; 5 uses
  %i.cs = alloca [8 x i8], align 8                ; 5 uses
  %i.ct = alloca [16 x i8], align 8               ; 6 uses
  %i.cu = alloca [96 x i8], align 8               ; 16 uses
  %i.cv = alloca [32 x i8], align 8               ; 8 uses
  %i.cw = alloca [24 x i8], align 8               ; 8 uses
  %i.cx = alloca [8 x i8], align 8                ; 5 uses
  %i.cy = alloca [8 x i8], align 8                ; 5 uses
  %i.cz = alloca [8 x i8], align 8                ; 5 uses
  %i.da = alloca [8 x i8], align 8                ; 5 uses
  %i.db = alloca [8 x i8], align 8                ; 5 uses
  %i.dc = alloca [16 x i8], align 8               ; 6 uses
  %i.dd = alloca [96 x i8], align 8               ; 16 uses
  %i.de = alloca [32 x i8], align 8               ; 8 uses
  %.sroa.2 = alloca [144 x i8], align 8           ; 4 uses
  %.sroa.6626 = alloca [7 x i8], align 1          ; 2 uses
  %.sroa.8619 = alloca [144 x i8], align 8        ; 7 uses
  %.sroa.9621 = alloca [7 x i8], align 1          ; 7 uses
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 514 ; 3 uses
  %i.dg = load i8, ptr %i.df, align 2, !range !57, !noundef !47
  switch i8 %i.dg, label %default.unreachable891 [
    i8 0, label %bb.i
    i8 1, label %bb.j
    i8 2, label %bb.k
    i8 3, label %bb.m
    i8 4, label %bb.af
    i8 5, label %bb.b
    i8 6, label %bb.c
    i8 7, label %bb.d
    i8 8, label %bb.lf
    i8 9, label %bb.e
    i8 10, label %bb.f
    i8 11, label %bb.g
    i8 12, label %bb.h
  ]

default.unreachable891:                           ; preds = %bb.lf, %bb.bc, %bb.aw, %bb.af, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cn)
  br label %bb.eq

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cn)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw)
  br label %bb.ht

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cn)
  br label %bb.kn

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cn)
  br label %bb.ds

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cn)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  br label %bb.nt

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cn)
  br label %bb.oi

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cn)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  br label %bb.pc

bb.i:                                             ; preds = %bb.a
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 509
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 496
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.dh, i8 0, i64 5, i1 false)
  %i.dk = load ptr, ptr %i.dj, align 8, !nonnull !47, !align !52, !noundef !47 ; 2 uses
  store ptr %i.dk, ptr %i.di, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 508
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 515
  %i.dn = load i8, ptr %i.dm, align 1, !range !59, !noundef !47
  store i8 %i.dn, ptr %i.dl, align 4
  %i.do = getelementptr inbounds nuw i8, ptr %i.dk, i64 96
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 520
  store ptr %i.do, ptr %i.dp, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 632
  store i8 0, ptr %.sroa.8.0..sroa_idx, align 8
  br label %bb.m

bb.j:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #22
  unreachable

bb.k:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #22
  unreachable

bb.l:                                             ; preds = %bb.m
  %i.dq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMs8_NtNtCseCDlJsl44RV_5tokio4sync5mutexINtBJ_5MutexNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11FlushBufferE4lock0EB1y_(ptr noundef nonnull align 8 %i.dr) #25
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCseCDlJsl44RV_5tokio4sync5mutex10MutexGuardNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11FlushBufferEEB1t_.exit336 unwind label %bb.ad

bb.m:                                             ; preds = %bb.a, %bb.i
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 520 ; 2 uses
  %i.ds = invoke fastcc noundef align 8 ptr @_RNCNvMs8_NtNtCseCDlJsl44RV_5tokio4sync5mutexINtB7_5MutexNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11FlushBufferE4lock0BW_(ptr noundef nonnull align 8 %i.dr, ptr noalias noundef align 8 dereferenceable(32) %2)
          to label %bb.n unwind label %bb.l       ; 2 uses

bb.n:                                             ; preds = %bb.m
  %i.dt = icmp eq ptr %i.ds, null
  br i1 %i.dt, label %bb.o, label %bb.p

common.ret:                                       ; preds = %bb.pe, %bb.ok, %bb.nv, %bb.kp, %bb.hv, %bb.es, %bb.du, %bb.cf, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCseCDlJsl44RV_5tokio4sync5mutex10MutexGuardNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11FlushBufferEEB1t_.exit, %bb.o
  %.sink = phi i8 [ 12, %bb.pe ], [ 11, %bb.ok ], [ 10, %bb.nv ], [ 7, %bb.kp ], [ 6, %bb.hv ], [ 5, %bb.es ], [ 9, %bb.du ], [ 4, %bb.cf ], [ 1, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCseCDlJsl44RV_5tokio4sync5mutex10MutexGuardNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11FlushBufferEEB1t_.exit ], [ 3, %bb.o ]
  store i8 %.sink, ptr %i.df, align 2
  ret void

bb.o:                                             ; preds = %bb.n
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 -1, ptr %i.du, align 8
  br label %common.ret

bb.p:                                             ; preds = %bb.n
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 280 ; 3 uses
  store ptr %i.ds, ptr %i.dv, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 632
  %i.dx = load i8, ptr %i.dw, align 8, !range !55, !noundef !47
  %cond.i = icmp eq i8 %i.dx, 3
  br i1 %cond.i, label %bb.q, label %bb.y

bb.q:                                             ; preds = %bb.p
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 624
  %i.dz = load i8, ptr %i.dy, align 8, !range !55, !noundef !47
  %cond.i.i = icmp eq i8 %i.dz, 3
  br i1 %cond.i.i, label %bb.r, label %bb.y

bb.r:                                             ; preds = %bb.q
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 552
  %i.eb = load i8, ptr %i.ea, align 8, !range !56, !noundef !47
  %cond.i.i.i = icmp eq i8 %i.eb, 4
  br i1 %cond.i.i.i, label %bb.s, label %bb.y

bb.s:                                             ; preds = %bb.r
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 560
  invoke void @_RNvXs3_NtNtCseCDlJsl44RV_5tokio4sync15batch_semaphoreNtB5_7AcquireNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noundef nonnull align 8 %i.ec)
          to label %bb.v unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ed = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 568
  %.val2.i.i.i.i = load ptr, ptr %i.ee, align 8, !align !52, !noundef !47 ; 2 uses
  %i.ef = icmp eq ptr %.val2.i.i.i.i, null
  br i1 %i.ef, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCseCDlJsl44RV_5tokio4sync5mutex10MutexGuardNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11FlushBufferEEB1t_.exit336, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.eg = getelementptr i8, ptr %1, i64 576
  %.val3.i.i.i.i = load ptr, ptr %i.eg, align 8
  %i.eh = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i, i64 24
  %i.ei = load ptr, ptr %i.eh, align 8, !nonnull !47, !noundef !47
  invoke void %i.ei(ptr noundef %.val3.i.i.i.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCseCDlJsl44RV_5tokio4sync5mutex10MutexGuardNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11FlushBufferEEB1t_.exit336 unwind label %bb.x, !inline_history !0

bb.v:                                             ; preds = %bb.s
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 568
  %.val.i.i.i.i = load ptr, ptr %i.ej, align 8, !align !52, !noundef !47 ; 2 uses
  %i.ek = icmp eq ptr %.val.i.i.i.i, null
  br i1 %i.ek, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.el = getelementptr i8, ptr %1, i64 576
  %.val1.i.i.i.i = load ptr, ptr %i.el, align 8
  %i.em = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 24
  %i.en = load ptr, ptr %i.em, align 8, !nonnull !47, !noundef !47
  invoke void %i.en(ptr noundef %.val1.i.i.i.i)
          to label %bb.y unwind label %bb.ab, !inline_history !58

bb.x:                                             ; preds = %bb.u
  %i.eo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.y:                                             ; preds = %bb.w, %bb.p, %bb.q, %bb.r, %bb.v
  %.val270 = load ptr, ptr %i.dv, align 8, !nonnull !47, !align !52, !noundef !47 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.val270, i64 40 ; 2 uses
  %.val271 = load i64, ptr %i.ep, align 8
  %i.eq = getelementptr i8, ptr %.val270, i64 120
  %.val272 = load i64, ptr %i.eq, align 8, !noundef !47
  %i.er = icmp ne i64 %.val272, 0
  %i.es = trunc nuw i64 %.val271 to i1
  %.sroa.0.0.i333.not = select i1 %i.er, i1 true, i1 %i.es
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 508
  %.pre = load i8, ptr %.phi.trans.insert, align 4, !range !59 ; 2 uses
  br i1 %.sroa.0.0.i333.not, label %.thread892, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.et = trunc nuw i8 %.pre to i1
  br i1 %i.et, label %.thread892, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  invoke void @_RNvXsd_NtNtCseCDlJsl44RV_5tokio4sync5mutexINtB5_10MutexGuardNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11FlushBufferENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB10_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.dv)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCseCDlJsl44RV_5tokio4sync5mutex10MutexGuardNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11FlushBufferEEB1t_.exit unwind label %bb.ab

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCseCDlJsl44RV_5tokio4sync5mutex10MutexGuardNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11FlushBufferEEB1t_.exit336: ; preds = %bb.l, %bb.t, %bb.u, %bb.ac, %.body522, %bb.ab
  %.pn183.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn183.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %.body522 ], [ %i.eu, %bb.ab ], [ %.pn42, %bb.ac ], [ %i.ed, %bb.t ], [ %i.dq, %bb.l ], [ %i.ed, %bb.u ]
  store i8 2, ptr %i.df, align 2
  resume { ptr, i32 } %.pn183.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn

bb.ab:                                            ; preds = %bb.w, %bb.ci, %bb.aa
  %i.eu = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCseCDlJsl44RV_5tokio4sync5mutex10MutexGuardNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11FlushBufferEEB1t_.exit336

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCseCDlJsl44RV_5tokio4sync5mutex10MutexGuardNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11FlushBufferEEB1t_.exit.sink.split: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtCs1ElB0qm0ygX_13influxdb3_wal5WalOpEEB19_.exit.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionTNtCs1ElB0qm0ygX_13influxdb3_wal15SnapshotDetailsNtNtNtCseCDlJsl44RV_5tokio4sync9semaphore20OwnedSemaphorePermitEEEB10_.exit594
  %.sroa.2.0.ph = phi i8 [ %.sroa.2.0.copyload33, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionTNtCs1ElB0qm0ygX_13influxdb3_wal15SnapshotDetailsNtNtNtCseCDlJsl44RV_5tokio4sync9semaphore20OwnedSemaphorePermitEEEB10_.exit594 ], [ 2, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtCs1ElB0qm0ygX_13influxdb3_wal5WalOpEEB19_.exit.i ]
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 512
  store i8 0, ptr %i.ev, align 8
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCseCDlJsl44RV_5tokio4sync5mutex10MutexGuardNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11FlushBufferEEB1t_.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCseCDlJsl44RV_5tokio4sync5mutex10MutexGuardNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11FlushBufferEEB1t_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCseCDlJsl44RV_5tokio4sync5mutex10MutexGuardNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11FlushBufferEEB1t_.exit.sink.split, %bb.aa
  %.sroa.2.0 = phi i8 [ 2, %bb.aa ], [ %.sroa.2.0.ph, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCseCDlJsl44RV_5tokio4sync5mutex10MutexGuardNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11FlushBufferEEB1t_.exit.sink.split ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.031, i64 32, i1 false)
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %.sroa.2.0, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.534.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.534, i64 31, i1 false)
  br label %common.ret

.thread892:                                       ; preds = %bb.y, %bb.z
  %i.ew = phi i8 [ 1, %bb.z ], [ %.pre, %bb.y ]
  %.sroa.7614.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 784
  store ptr %i.ep, ptr %.sroa.7614.0..sroa_idx, align 8
  %.sroa.8615.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 792
  store i8 0, ptr %.sroa.8615.0..sroa_idx, align 8
  %.sroa.9616.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 793
  store i8 %i.ew, ptr %.sroa.9616.0..sroa_idx, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8619)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9621)
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 520
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.010.i.sroa.4)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.sroa.0.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  %i.ey = getelementptr inbounds nuw i8, ptr %1, i64 792
  br label %bb.ag

bb.ac:                                            ; preds = %bb.ch, %.body343
  %.pn42 = phi { ptr, i32 } [ %i.jw, %bb.ch ], [ %eh.lpad-body344, %.body343 ]
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 280
  invoke void @_RNvXsd_NtNtCseCDlJsl44RV_5tokio4sync5mutexINtB5_10MutexGuardNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11FlushBufferENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB10_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ez)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCseCDlJsl44RV_5tokio4sync5mutex10MutexGuardNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11FlushBufferEEB1t_.exit336 unwind label %bb.ad

bb.ad:                                            ; preds = %bb.qo, %.body598, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtCs1ElB0qm0ygX_13influxdb3_wal15WalFileNotifierEL_EEB1b_.exit604, %bb.pa, %bb.ov, %bb.nn, %.body486, %.body528, %.body432, %.body508, %bb.ac, %bb.iv, %bb.oh, %bb.pb, %bb.ns, %bb.ep, %bb.qt, %bb.qs, %bb.qq, %bb.qp, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs6gU0GsN6MoR_8lock_api5mutex10MutexGuardNtNtCsgIGNhOnZR2a_11parking_lot9raw_mutex8RawMutexINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB2e_4sync3ArcDNtCs1ElB0qm0ygX_13influxdb3_wal15WalFileNotifierEL_EEEEB30_.exit, %bb.od, %bb.nr, %bb.np, %.body365, %bb.nl, %.body495, %bb.km, %bb.je, %.body427, %bb.hs, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtCs1ElB0qm0ygX_13influxdb3_wal11WalContentsEEB1a_.exit, %bb.dr, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECs1ElB0qm0ygX_13influxdb3_wal.exit, %.body343, %bb.l
  %i.fa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.ae:                                            ; preds = %bb.au, %bb.at
  %i.fb = landingpad { ptr, i32 }
          cleanup
  br label %.body343

.body343:                                         ; preds = %bb.as, %bb.ae
  %i.fc = phi ptr [ %i.fd, %bb.ae ], [ %i.ha, %bb.as ]
  %eh.lpad-body344 = phi { ptr, i32 } [ %i.fb, %bb.ae ], [ %.pn17.pn.pn.pn.i, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8619)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9621)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMs_NtCs1ElB0qm0ygX_13influxdb3_wal12object_storeNtBI_11FlushBuffer40flush_buffer_into_contents_and_responses0EBK_(ptr noundef nonnull align 8 %i.fc) #25
          to label %bb.ac unwind label %bb.ad

bb.af:                                            ; preds = %bb.a
  %.phi.trans.insert848 = getelementptr inbounds nuw i8, ptr %1, i64 792
  %.pre849 = load i8, ptr %.phi.trans.insert848, align 8, !range !55, !noalias !809
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8619)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9621)
  %i.fd = getelementptr inbounds nuw i8, ptr %1, i64 520 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.010.i.sroa.4)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.sroa.0.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 792 ; 7 uses
  switch i8 %.pre849, label %default.unreachable891 [
    i8 0, label %bb.ag
    i8 1, label %bb.at
    i8 2, label %bb.au
    i8 3, label %bb.aw
  ]

bb.ag:                                            ; preds = %.thread892, %bb.af
  %i.ff = phi ptr [ %i.ey, %.thread892 ], [ %i.fe, %bb.af ] ; 6 uses
  %i.fg = phi ptr [ %i.ex, %.thread892 ], [ %i.fd, %bb.af ] ; 7 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %1, i64 784
  %i.fi = load ptr, ptr %i.fh, align 8, !noalias !809, !nonnull !47, !align !52, !noundef !47 ; 10 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 793
  %i.fk = load i8, ptr %i.fj, align 1, !range !59, !noalias !809, !noundef !47
  %i.fl = trunc nuw i8 %i.fk to i1                ; 3 uses
  br i1 %i.fl, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %_RNvMs0_NtCs1ElB0qm0ygX_13influxdb3_wal12object_storeNtB5_9WalBuffer9add_no_op.exit.i, %bb.ai, %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !809
  invoke void @_RNvMs_NtCs1ElB0qm0ygX_13influxdb3_wal12object_storeNtB4_11FlushBuffer27flush_buffer_with_responses(ptr noalias noundef nonnull sret([120 x i8]) align 8 captures(address) dereferenceable(120) %i.y, ptr noalias noundef nonnull align 8 dereferenceable(208) %i.fi, i1 noundef zeroext %i.fl)
          to label %bb.am unwind label %bb.al, !noalias !810

bb.ai:                                            ; preds = %bb.ag
  %.val.i = load i64, ptr %i.fi, align 8, !noalias !810
  %i.fm = getelementptr i8, ptr %i.fi, i64 80
  %.val22.i = load i64, ptr %i.fm, align 8, !noalias !810, !noundef !47
  %i.fn = icmp ne i64 %.val22.i, 0
  %i.fo = trunc nuw i64 %.val.i to i1
  %.sroa.0.0.i.not.i = select i1 %i.fn, i1 true, i1 %i.fo
  br i1 %.sroa.0.0.i.not.i, label %bb.ah, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  tail call void @llvm.experimental.noalias.scope.decl(metadata !811)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !812
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fi, i64 40
  %i.fq = load ptr, ptr %i.fp, align 8, !alias.scope !811, !noalias !810, !nonnull !47, !noundef !47
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fi, i64 48
  %i.fs = load ptr, ptr %i.fr, align 8, !alias.scope !811, !noalias !810, !nonnull !47, !align !52, !noundef !47 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 16
  %i.fu = load i64, ptr %i.ft, align 8, !range !49, !invariant.load !47, !noalias !813
  %i.fv = add nsw i64 %i.fu, -1
  %i.fw = and i64 %i.fv, -16
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fq, i64 %i.fw
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 16
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fs, i64 48
  %i.ga = load ptr, ptr %i.fz, align 8, !invariant.load !47, !noalias !813, !nonnull !47
  invoke void %i.ga(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.v, ptr noundef nonnull %i.fy)
          to label %.noexc.i unwind label %bb.ak, !noalias !810, !inline_history !814

.noexc.i:                                         ; preds = %bb.aj
  %i.gb = invoke noundef i64 @_RNvMs2_Csk0FzFVI8urx_8iox_timeNtB5_4Time15timestamp_nanos(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.v)
          to label %_RNvMs0_NtCs1ElB0qm0ygX_13influxdb3_wal12object_storeNtB5_9WalBuffer9add_no_op.exit.i unwind label %bb.ak, !noalias !810

_RNvMs0_NtCs1ElB0qm0ygX_13influxdb3_wal12object_storeNtB5_9WalBuffer9add_no_op.exit.i: ; preds = %.noexc.i
  store i64 1, ptr %i.fi, align 8, !alias.scope !811, !noalias !810
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  store i64 %i.gb, ptr %i.gc, align 8, !alias.scope !811, !noalias !810
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !812
  br label %bb.ah

bb.ak:                                            ; preds = %.noexc.i, %bb.aj
  %i.gd = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.al:                                            ; preds = %bb.ah
  %i.ge = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !809
  br label %bb.as

bb.am:                                            ; preds = %bb.ah
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.fg, ptr noundef nonnull align 8 dereferenceable(96) %i.y, i64 96, i1 false), !noalias !809
  %i.gf = getelementptr inbounds nuw i8, ptr %1, i64 616
  %i.gg = getelementptr inbounds nuw i8, ptr %i.y, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gf, ptr noundef nonnull align 8 dereferenceable(24) %i.gg, i64 24, i1 false), !noalias !809
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !809
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fi, i64 120 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !809
  %i.gi = getelementptr inbounds nuw i8, ptr %1, i64 608
  %i.gj = load i64, ptr %i.gi, align 8, !noalias !809, !noundef !47
  %i.gk = getelementptr inbounds nuw i8, ptr %1, i64 592
  store i64 %i.gj, ptr %i.x, align 8, !noalias !809
  %i.gl = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.gm = load <2 x i64>, ptr %i.gk, align 8, !noalias !809
  store <2 x i64> %i.gm, ptr %i.gl, align 8, !noalias !809
  invoke void @_RNvMNtCs1ElB0qm0ygX_13influxdb3_wal16snapshot_trackerNtB2_15SnapshotTracker14add_wal_period(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.gh, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.x)
          to label %bb.ao unwind label %bb.an, !noalias !810

bb.an:                                            ; preds = %bb.am
  %i.gn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !809
  br label %bb.ar

bb.ao:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !809
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !809
  invoke void @_RNvMNtCs1ElB0qm0ygX_13influxdb3_wal16snapshot_trackerNtB2_15SnapshotTracker8snapshot(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.w, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.gh, i1 noundef zeroext %i.fl)
          to label %bb.aq unwind label %bb.ap, !noalias !810

bb.ap:                                            ; preds = %bb.ao
  %i.go = landingpad { ptr, i32 }
end_hunk_0
