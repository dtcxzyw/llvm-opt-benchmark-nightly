Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/qdrant.qdrant.3f8cc1c7dccbb09-cgu.007?download=true
inline.NumInlined: 11866
inline.NumDeleted: 6049
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant15UpdateOperationENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant:bb.a

bb.k:                                             ; preds = %bb.j
  store i64 -3, ptr %i.bc, align 8, !noalias !22690
  br label %bb.l

bb.l:                                             ; preds = %bb.m, %bb.k
  %.sroa.5.sroa.7.i.i.sroa.0.0.copyload.i.i = phi i64 [ %.sroa.04.0.i.i.i.i.i, %bb.m ], [ -3, %bb.k ]
  %i.cs = phi i1 [ %i.cw, %bb.m ], [ true, %bb.k ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !22690
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 120 ; 2 uses
  %i.cu = load i64, ptr %i.ct, align 8, !range !61, !alias.scope !22691, !noalias !22692, !noundef !38 ; 2 uses
  switch i64 %i.cu, label %bb.u [
    i64 -3, label %bb.r
    i64 -2, label %bb.t
    i64 -1, label %bb.v
  ]

bb.m:                                             ; preds = %bb.q, %bb.o, %bb.j
  %.sroa.04.0.i.i.i.i.i = phi i64 [ %i.cr, %bb.j ], [ %.sroa.09.0.copyload.i.i.i.i.i, %bb.q ], [ -1, %bb.o ] ; 3 uses
  %i.cv = phi <2 x i64> [ undef, %bb.j ], [ %i.db, %bb.q ], [ %i.cz, %bb.o ]
  store i64 %.sroa.04.0.i.i.i.i.i, ptr %i.bc, align 8, !noalias !22690
  store <2 x i64> %i.cv, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !22690
  %i.cw = icmp ugt i64 %.sroa.04.0.i.i.i.i.i, -4
  br label %bb.l

bb.n:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !22690
  invoke void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.az, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cq)
          to label %bb.q unwind label %bb.p, !noalias !22693

bb.o:                                             ; preds = %bb.j
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 104
  %i.cy = load i64, ptr %i.cx, align 8, !alias.scope !22691, !noalias !22692, !noundef !38
  %i.cz = insertelement <2 x i64> <i64 poison, i64 undef>, i64 %i.cy, i64 0
  br label %bb.m

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant7PointIdEECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i: ; preds = %bb.w, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant7PointIdEECsl8OoimOLbh_6qdrant.exit33.i.i.i.i.i, %bb.p
  %.pn.pn.i.i.i.i.i = phi { ptr, i32 } [ %i.da, %bb.p ], [ %.pn.i.i.i.i.i, %bb.w ], [ %.pn.i.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant7PointIdEECsl8OoimOLbh_6qdrant.exit33.i.i.i.i.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant11PointStructEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bd) #31
          to label %bb.h unwind label %bb.ab, !noalias !22693

bb.p:                                             ; preds = %bb.n
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant7PointIdEECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i

bb.q:                                             ; preds = %bb.n
  %.sroa.09.0.copyload.i.i.i.i.i = load i64, ptr %i.az, align 8, !noalias !22690
  %i.db = load <2 x i64>, ptr %.sroa.510.0..sroa_idx.i.i.i.i.i, align 8, !noalias !22690
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !22690
  br label %bb.m

bb.r:                                             ; preds = %bb.l
  store i64 -3, ptr %i.bb, align 8, !noalias !22690
  br label %bb.s

bb.s:                                             ; preds = %bb.t, %bb.r
  %.sroa.5.sroa.8.i.i.sroa.0.0.copyload.i.i = phi i64 [ %.sroa.011.0.i.i.i.i.i, %bb.t ], [ -3, %bb.r ]
  %i.dc = phi i1 [ %i.dl, %bb.t ], [ true, %bb.r ]
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 144
  %i.de = load i32, ptr %i.dd, align 8, !range !98, !alias.scope !22691, !noalias !22692, !noundef !38 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 148
  %i.dg = load i32, ptr %i.df, align 4, !alias.scope !22691, !noalias !22692
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 16
  %i.di = load i64, ptr %i.dh, align 8, !alias.scope !22691, !noalias !22692
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !22690
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 72
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant14PointStructRawENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ba, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dj)
          to label %_RNvXsGg_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_10SyncPointsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i unwind label %bb.z, !noalias !22693

bb.t:                                             ; preds = %bb.y, %bb.v, %bb.l
  %.sroa.011.0.i.i.i.i.i = phi i64 [ %i.cu, %bb.l ], [ %.sroa.017.0.copyload.i.i.i.i.i, %bb.y ], [ -1, %bb.v ] ; 3 uses
  %i.dk = phi <2 x i64> [ undef, %bb.l ], [ %i.dq, %bb.y ], [ %i.do, %bb.v ]
  store i64 %.sroa.011.0.i.i.i.i.i, ptr %i.bb, align 8, !noalias !22690
  store <2 x i64> %i.dk, ptr %.sroa.4.0..sroa_idx16.i.i.i.i.i, align 8, !noalias !22690
  %i.dl = icmp ugt i64 %.sroa.011.0.i.i.i.i.i, -4
  br label %bb.s

bb.u:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !22690
  invoke void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ay, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ct)
          to label %bb.y unwind label %bb.x, !noalias !22693

bb.v:                                             ; preds = %bb.l
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 128
  %i.dn = load i64, ptr %i.dm, align 8, !alias.scope !22691, !noalias !22692, !noundef !38
  %i.do = insertelement <2 x i64> <i64 poison, i64 undef>, i64 %i.dn, i64 0
  br label %bb.t

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant7PointIdEECsl8OoimOLbh_6qdrant.exit33.i.i.i.i.i: ; preds = %bb.aa, %bb.z, %bb.x
  %.pn.i.i.i.i.i = phi { ptr, i32 } [ %i.dp, %bb.x ], [ %i.dr, %bb.aa ], [ %i.dr, %bb.z ] ; 2 uses
  br i1 %i.cs, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant7PointIdEECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i, label %bb.w

bb.w:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant7PointIdEECsl8OoimOLbh_6qdrant.exit33.i.i.i.i.i
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bc)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant7PointIdEECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i unwind label %bb.ab, !noalias !22693

bb.x:                                             ; preds = %bb.u
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant7PointIdEECsl8OoimOLbh_6qdrant.exit33.i.i.i.i.i

bb.y:                                             ; preds = %bb.u
  %.sroa.017.0.copyload.i.i.i.i.i = load i64, ptr %i.ay, align 8, !noalias !22690
  %i.dq = load <2 x i64>, ptr %.sroa.518.0..sroa_idx.i.i.i.i.i, align 8, !noalias !22690
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !22690
  br label %bb.t

bb.z:                                             ; preds = %bb.s
  %i.dr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.dc, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant7PointIdEECsl8OoimOLbh_6qdrant.exit33.i.i.i.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bb)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant7PointIdEECsl8OoimOLbh_6qdrant.exit33.i.i.i.i.i unwind label %bb.ab, !noalias !22693

bb.ab:                                            ; preds = %bb.aa, %bb.w, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant7PointIdEECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i, %bb.h
  %i.ds = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28, !noalias !22693
  unreachable

_RNvXsGg_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_10SyncPointsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i: ; preds = %bb.s
  %i.dt = trunc nuw i64 %i.ck to i1
  %.sroa.53.0.i.i.i.i.i = select i1 %i.dt, i64 %i.di, i64 undef
  %i.du = trunc nuw i32 %i.de to i1
  %.sroa.5.0.i.i.i.i.i = select i1 %i.du, i32 %i.dg, i32 undef
  %i.dv = load <2 x i64>, ptr %i.be, align 16, !noalias !22694
  %.sroa.5.sroa.4.i.i.sroa.5.0.copyload.i.i = load i64, ptr %.sroa.5.sroa.4.i.i.sroa.5.0..sroa_idx.i.i, align 16, !noalias !22694
  %.sroa.5.sroa.5.i.i.sroa.0.0.copyload.i.i = load i64, ptr %i.bd, align 8, !noalias !22694
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.54.sroa.0.i.i187.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.sroa.5.i.i.sroa.4.0..sroa_idx.i.i, i64 16, i1 false), !noalias !22695
  %.sroa.5.sroa.7.i.i.sroa.4.0.copyload.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !22694
  %.sroa.5.sroa.7.i.i.sroa.5.0.copyload.i.i = load i64, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i, align 8, !noalias !22694
  %.sroa.5.sroa.8.i.i.sroa.4.0.copyload.i.i = load i32, ptr %.sroa.4.0..sroa_idx16.i.i.i.i.i, align 8, !noalias !22694
  %.sroa.5.sroa.8.i.i.sroa.5.0.copyload.i.i = load i32, ptr %.sroa.5.sroa.8.i.i.sroa.5.0..sroa_idx.i.i, align 4, !noalias !22694
  %.sroa.5.sroa.8.i.i.sroa.6.0.copyload.i.i = load i32, ptr %.sroa.4.sroa.421.0..sroa.4.0..sroa_idx16.sroa_idx.i.i.i.i.i, align 8, !noalias !22694
  %i.dw = load <4 x i8>, ptr %.sroa.5.sroa.8.i.i.sroa.7.0..sroa_idx.i.i, align 4, !noalias !22694
  %.sroa.5.sroa.6.i.i.sroa.0.0.copyload.i.i = load i64, ptr %i.ba, align 8, !noalias !22694
  %.sroa.5.sroa.6.i.i.sroa.4.0.copyload.i.i = load i64, ptr %.sroa.5.sroa.6.i.i.sroa.4.0..sroa_idx.i.i, align 8, !noalias !22694
  %.sroa.5.sroa.6.i.i.sroa.5.0.copyload.i.i = load i64, ptr %.sroa.5.sroa.6.i.i.sroa.5.0..sroa_idx.i.i, align 8, !noalias !22694
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !22690
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !22690
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !22690
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !22690
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !22690
  br label %bb.ac

bb.ac:                                            ; preds = %_RNvXsGg_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_10SyncPointsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i, %bb.f
  %.sroa.5.sroa.4.i.i.sroa.5.0.i.i = phi i64 [ undef, %bb.f ], [ %.sroa.5.sroa.4.i.i.sroa.5.0.copyload.i.i, %_RNvXsGg_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_10SyncPointsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ]
  %.sroa.5.sroa.5.i.i.sroa.0.0.i.i = phi i64 [ undef, %bb.f ], [ %.sroa.5.sroa.5.i.i.sroa.0.0.copyload.i.i, %_RNvXsGg_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_10SyncPointsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ]
  %.sroa.5.sroa.6.i.i.sroa.5.0.i.i = phi i64 [ undef, %bb.f ], [ %.sroa.5.sroa.6.i.i.sroa.5.0.copyload.i.i, %_RNvXsGg_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_10SyncPointsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ] ; 2 uses
  %.sroa.5.sroa.6.i.i.sroa.4.0.i.i = phi i64 [ undef, %bb.f ], [ %.sroa.5.sroa.6.i.i.sroa.4.0.copyload.i.i, %_RNvXsGg_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_10SyncPointsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ] ; 3 uses
  %.sroa.5.sroa.6.i.i.sroa.0.0.i.i = phi i64 [ undef, %bb.f ], [ %.sroa.5.sroa.6.i.i.sroa.0.0.copyload.i.i, %_RNvXsGg_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_10SyncPointsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ] ; 2 uses
  %.sroa.5.sroa.7.i.i.sroa.5.0.i.i = phi i64 [ undef, %bb.f ], [ %.sroa.5.sroa.7.i.i.sroa.5.0.copyload.i.i, %_RNvXsGg_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_10SyncPointsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ] ; 2 uses
  %.sroa.5.sroa.7.i.i.sroa.4.0.i.i = phi i64 [ undef, %bb.f ], [ %.sroa.5.sroa.7.i.i.sroa.4.0.copyload.i.i, %_RNvXsGg_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_10SyncPointsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ]
  %.sroa.5.sroa.7.i.i.sroa.0.0.i.i = phi i64 [ undef, %bb.f ], [ %.sroa.5.sroa.7.i.i.sroa.0.0.copyload.i.i, %_RNvXsGg_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_10SyncPointsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ] ; 2 uses
  %.sroa.5.sroa.8.i.i.sroa.6.0.i.i = phi i32 [ undef, %bb.f ], [ %.sroa.5.sroa.8.i.i.sroa.6.0.copyload.i.i, %_RNvXsGg_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_10SyncPointsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ]
  %.sroa.5.sroa.8.i.i.sroa.5.0.i.i = phi i32 [ undef, %bb.f ], [ %.sroa.5.sroa.8.i.i.sroa.5.0.copyload.i.i, %_RNvXsGg_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_10SyncPointsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ] ; 2 uses
  %.sroa.5.sroa.8.i.i.sroa.4.0.i.i = phi i32 [ undef, %bb.f ], [ %.sroa.5.sroa.8.i.i.sroa.4.0.copyload.i.i, %_RNvXsGg_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_10SyncPointsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ]
  %.sroa.5.sroa.8.i.i.sroa.0.0.i.i = phi i64 [ undef, %bb.f ], [ %.sroa.5.sroa.8.i.i.sroa.0.0.copyload.i.i, %_RNvXsGg_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_10SyncPointsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ] ; 2 uses
  %.sroa.5.sroa.11.0.i.i.i.i = phi i8 [ undef, %bb.f ], [ %i.cn, %_RNvXsGg_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_10SyncPointsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ]
  %.sroa.5.sroa.10.0.i.i.i.i = phi i32 [ undef, %bb.f ], [ %.sroa.5.0.i.i.i.i.i, %_RNvXsGg_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_10SyncPointsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ]
  %.sroa.5.sroa.9.0.i.i.i.i = phi i32 [ undef, %bb.f ], [ %i.de, %_RNvXsGg_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_10SyncPointsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ] ; 2 uses
  %.sroa.5.sroa.0.0.i.i.i.i = phi i64 [ undef, %bb.f ], [ %.sroa.53.0.i.i.i.i.i, %_RNvXsGg_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_10SyncPointsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ]
  %i.dx = phi <4 x i8> [ undef, %bb.f ], [ %i.dw, %_RNvXsGg_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_10SyncPointsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ]
  %i.dy = phi <2 x i64> [ undef, %bb.f ], [ %i.dv, %_RNvXsGg_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_10SyncPointsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ]
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 160
  %i.ea = load i32, ptr %i.dz, align 8, !range !98, !alias.scope !22687, !noalias !22688, !noundef !38 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 164
  %i.ec = load i32, ptr %i.eb, align 4, !alias.scope !22687, !noalias !22688
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 204
  %i.ee = load i8, ptr %i.ed, align 4, !range !72, !alias.scope !22687, !noalias !22688, !noundef !38 ; 2 uses
  %.not15.i.i.i.i = icmp eq i8 %i.ee, 2
  br i1 %.not15.i.i.i.i, label %_RNvXsGp_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18SyncPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.sroa.20.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.ef, i64 24, i1 false), !noalias !22684
  %.sroa.05.i.i.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 200
  %.sroa.05.i.i.sroa.4.0.copyload.i.i = load i32, ptr %.sroa.05.i.i.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !22683, !noalias !22696
  %.sroa.514.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 205
  %.sroa.58.i.i.sroa.0.0.copyload.i.i = load i24, ptr %.sroa.514.0..sroa_idx.i.i.i.i, align 1, !alias.scope !22683, !noalias !22696
  %i.eg = zext i24 %.sroa.58.i.i.sroa.0.0.copyload.i.i to i32
  br label %_RNvXsGp_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18SyncPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i

_RNvXsGp_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18SyncPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i: ; preds = %bb.ad, %bb.ac
  %.sroa.05.i.i.sroa.4.0.i.i = phi i32 [ undef, %bb.ac ], [ %.sroa.05.i.i.sroa.4.0.copyload.i.i, %bb.ad ]
  %.sroa.58.i.i.sroa.0.0.i.i = phi i32 [ 0, %bb.ac ], [ %i.eg, %bb.ad ]
  %i.eh = trunc nuw i32 %i.ea to i1
  %.sroa.54.0.i.i.i.i = select i1 %i.eh, i32 %i.ec, i32 undef ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 168
  %i.ej = load i32, ptr %i.ei, align 8, !range !98, !alias.scope !22687, !noalias !22688, !noundef !38 ; 2 uses
  %i.ek = trunc nuw i32 %i.ej to i1
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 172
  %i.em = load i32, ptr %i.el, align 4, !alias.scope !22687, !noalias !22688
  %.sroa.511.0.i.i.i.i = select i1 %i.ek, i32 %i.em, i32 undef
  %.sroa.65.sroa.0.0.extract.trunc686.i.i = trunc i64 %.sroa.5.sroa.6.i.i.sroa.0.0.i.i to i32
  %.sroa.65.sroa.16.0.extract.shift703.i.i = lshr i64 %.sroa.5.sroa.6.i.i.sroa.0.0.i.i, 32
  %.sroa.65.sroa.16.0.extract.trunc704.i.i = trunc nuw i64 %.sroa.65.sroa.16.0.extract.shift703.i.i to i32
  %.sroa.77.sroa.0.sroa.0.0.extract.trunc653.i.i = trunc i64 %.sroa.5.sroa.6.i.i.sroa.4.0.i.i to i8
  %2 = lshr i64 %.sroa.5.sroa.6.i.i.sroa.4.0.i.i, 8
  %.sroa.77.sroa.0.sroa.16.0.extract.trunc669.i.i = trunc i64 %2 to i32
  %.sroa.77.sroa.16.0.extract.shift638.i.i = lshr i64 %.sroa.5.sroa.6.i.i.sroa.4.0.i.i, 32
  %.sroa.85.sroa.0.0.extract.trunc595.i.i = trunc i64 %.sroa.5.sroa.6.i.i.sroa.5.0.i.i to i32
  %.sroa.85.sroa.16.0.extract.shift609.i.i = lshr i64 %.sroa.5.sroa.6.i.i.sroa.5.0.i.i, 32
  %.sroa.85.sroa.16.0.extract.trunc610.i.i = trunc nuw i64 %.sroa.85.sroa.16.0.extract.shift609.i.i to i32
  %.sroa.91.sroa.0.0.extract.trunc570.i.i = trunc i64 %.sroa.5.sroa.7.i.i.sroa.0.0.i.i to i32
  %.sroa.91.sroa.16.0.extract.shift589.i.i = lshr i64 %.sroa.5.sroa.7.i.i.sroa.0.0.i.i, 32
  %.sroa.91.sroa.16.0.extract.trunc590.i.i = trunc nuw i64 %.sroa.91.sroa.16.0.extract.shift589.i.i to i32
  %.sroa.105.sroa.0.0.extract.trunc533.i.i = trunc i64 %.sroa.5.sroa.7.i.i.sroa.5.0.i.i to i8
  %.sroa.105.sroa.16.0.extract.shift549.i.i = and i64 %.sroa.5.sroa.7.i.i.sroa.5.0.i.i, -256
  %.sroa.109.sroa.0.0.extract.trunc505.i.i = trunc i64 %.sroa.5.sroa.8.i.i.sroa.0.0.i.i to i32
  %.sroa.109.sroa.16.0.extract.shift526.i.i = lshr i64 %.sroa.5.sroa.8.i.i.sroa.0.0.i.i, 32
  %.sroa.118.sroa.0.0.extract.trunc470.i.i = trunc i32 %.sroa.5.sroa.8.i.i.sroa.5.0.i.i to i8
  %.sroa.118.sroa.16.0.extract.shift486.i.i = lshr i32 %.sroa.5.sroa.8.i.i.sroa.5.0.i.i, 8
  %.sroa.118.sroa.16.0.extract.trunc487.i.i = trunc nuw i32 %.sroa.118.sroa.16.0.extract.shift486.i.i to i24
  %.sroa.130.sroa.0.0.extract.trunc445.i.i = trunc i32 %.sroa.5.sroa.9.0.i.i.i.i to i8
  %.sroa.130.sroa.14.0.extract.shift462.i.i = and i32 %.sroa.5.sroa.9.0.i.i.i.i, -256
  %.sroa.136.sroa.0.0.extract.trunc418.i.i = trunc i32 %.sroa.54.0.i.i.i.i to i8
  %.sroa.136.sroa.14.0.extract.shift435.i.i = lshr i32 %.sroa.54.0.i.i.i.i, 8
  %i.en = insertelement <2 x i32> poison, i32 %i.ej, i64 0
  %i.eo = insertelement <2 x i32> %i.en, i32 %.sroa.511.0.i.i.i.i, i64 1
  br label %_RNvXNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant16update_operationNtB2_6UpdateNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i

bb.ae:                                            ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22697)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.54.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !22698
  %i.ep = load i64, ptr %i.cj, align 8, !range !49, !alias.scope !22699, !noalias !22700, !noundef !38 ; 4 uses
  %.not.i1.i.i.i = icmp eq i64 %i.ep, 2
  br i1 %.not.i1.i.i.i, label %bb.ax, label %bb.af

bb.af:                                            ; preds = %bb.ae
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22701)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !22702
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 24
  invoke void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.av, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.eq)
          to label %.noexc12.i unwind label %.loopexit.i, !noalias !22681

.noexc12.i:                                       ; preds = %bb.af
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 240
  %i.es = load i8, ptr %i.er, align 8, !range !72, !alias.scope !22703, !noalias !22704, !noundef !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !22702
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 48
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant11PointStructENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.au, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.et)
          to label %bb.ai unwind label %bb.ah, !noalias !22705

bb.ag:                                            ; preds = %.body.i.i.i.i.i, %bb.ah
  %.pn.pn.i.i2.i.i.i = phi { ptr, i32 } [ %.pn.i.i3.i.i.i, %.body.i.i.i.i.i ], [ %i.eu, %bb.ah ]
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.av)
          to label %bb.hi unwind label %bb.aw, !noalias !22705

bb.ah:                                            ; preds = %.noexc12.i
  %i.eu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.ai:                                            ; preds = %.noexc12.i
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 224
  %i.ew = load i32, ptr %i.ev, align 8, !range !98, !alias.scope !22703, !noalias !22704, !noundef !38 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 228
  %.val.i.i.i.i.i = load i32, ptr %i.ex, align 4, !alias.scope !22703, !noalias !22704
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !22702
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 72 ; 2 uses
  %i.ez = load i64, ptr %i.ey, align 8, !range !42, !alias.scope !22703, !noalias !22704, !noundef !38
  %.not11.i.i.i.i.i = icmp eq i64 %i.ez, -1
  br i1 %.not11.i.i.i.i.i, label %bb.aq, label %bb.ak

.body.i.i.i.i.i:                                  ; preds = %bb.au, %bb.an, %bb.aj
  %.pn.i.i3.i.i.i = phi { ptr, i32 } [ %i.fm, %bb.au ], [ %i.fa, %bb.aj ], [ %i.fg, %bb.an ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant11PointStructEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.au) #31
          to label %bb.ag unwind label %bb.aw, !noalias !22705

bb.aj:                                            ; preds = %bb.ak
  %i.fa = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i

bb.ak:                                            ; preds = %bb.ai
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22706)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !22707
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant8ShardKeyENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ar, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ey)
          to label %.noexc.i.i.i.i.i unwind label %bb.aj, !noalias !22705

.noexc.i.i.i.i.i:                                 ; preds = %bb.ak
  %i.fb = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 96 ; 2 uses
  %i.fc = load i64, ptr %i.fb, align 8, !range !61, !alias.scope !22708, !noalias !22709, !noundef !38 ; 3 uses
  switch i64 %i.fc, label %bb.am [
    i64 -3, label %bb.as
    i64 -2, label %bb.as
    i64 -1, label %bb.al
  ]

bb.al:                                            ; preds = %.noexc.i.i.i.i.i
  %i.fd = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 104
  %i.fe = load i64, ptr %i.fd, align 8, !alias.scope !22708, !noalias !22709, !noundef !38
  %i.ff = insertelement <2 x i64> <i64 poison, i64 undef>, i64 %i.fe, i64 0
  br label %bb.as

bb.am:                                            ; preds = %.noexc.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !22707
  invoke void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.aq, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fb)
          to label %bb.ao unwind label %bb.an, !noalias !22710

bb.an:                                            ; preds = %bb.am
  %i.fg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant8ShardKeyEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ar) #31
          to label %.body.i.i.i.i.i unwind label %bb.ap, !noalias !22710

bb.ao:                                            ; preds = %bb.am
  %.sroa.06.0.copyload.i.i.i.i.i.i = load i64, ptr %i.aq, align 8, !noalias !22707
  %i.fh = load <2 x i64>, ptr %.sroa.57.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !22707
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !22707
  br label %bb.as

bb.ap:                                            ; preds = %bb.an
  %i.fi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28, !noalias !22710
  unreachable

bb.aq:                                            ; preds = %bb.ai
  store i64 -1, ptr %i.at, align 8, !noalias !22702
  br label %bb.ar

bb.ar:                                            ; preds = %bb.as, %bb.aq
  %i.fj = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 120 ; 2 uses
  %i.fk = load i64, ptr %i.fj, align 8, !range !42, !alias.scope !22703, !noalias !22704, !noundef !38
  %.not12.i.i.i.i.i = icmp eq i64 %i.fk, -1
  br i1 %.not12.i.i.i.i.i, label %_RNvXspt_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_12UpsertPointsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i, label %bb.at

bb.as:                                            ; preds = %.noexc.i.i.i.i.i, %bb.ao, %bb.al, %.noexc.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i = phi i64 [ %i.fc, %.noexc.i.i.i.i.i ], [ %.sroa.06.0.copyload.i.i.i.i.i.i, %bb.ao ], [ -1, %bb.al ], [ %i.fc, %.noexc.i.i.i.i.i ]
  %i.fl = phi <2 x i64> [ undef, %.noexc.i.i.i.i.i ], [ %i.fh, %bb.ao ], [ %i.ff, %bb.al ], [ undef, %.noexc.i.i.i.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.at, ptr noundef nonnull align 8 dereferenceable(24) %i.ar, i64 24, i1 false), !noalias !22702
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !22707
  store i64 %.sroa.0.0.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i4.i.i.i, align 8, !noalias !22702
  store <2 x i64> %i.fl, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !noalias !22702
  br label %bb.ar

bb.at:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !22702
  invoke fastcc void @_RNvXs1i_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_6FilterNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(104) %i.as, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.fj)
          to label %bb.av unwind label %bb.au, !noalias !22705

bb.au:                                            ; preds = %bb.at
  %i.fm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant16ShardKeySelectorEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(48) %i.at) #31
          to label %.body.i.i.i.i.i unwind label %bb.aw, !noalias !22705

bb.av:                                            ; preds = %bb.at
  %.sroa.02.0.copyload.i.i.i.i.i = load i64, ptr %i.as, align 8, !noalias !22702
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.54.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.54.0..sroa_idx.i.i.i.i.i, i64 96, i1 false), !noalias !22698
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !22702
  br label %_RNvXspt_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_12UpsertPointsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i

bb.aw:                                            ; preds = %bb.au, %.body.i.i.i.i.i, %bb.ag
  %i.fn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28, !noalias !22705
  unreachable

_RNvXspt_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_12UpsertPointsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i: ; preds = %bb.av, %bb.ar
  %.sroa.02.0.i.i.i.i.i = phi i64 [ %.sroa.02.0.copyload.i.i.i.i.i, %bb.av ], [ -1, %bb.ar ]
  %i.fo = trunc nuw i32 %i.ew to i1
  %.sroa.5.0.i.i5.i.i.i = select i1 %i.fo, i32 %.val.i.i.i.i.i, i32 undef
  %i.fp = trunc nuw i64 %i.ep to i1
  %i.fq = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 16
  %i.fr = load i64, ptr %i.fq, align 8, !alias.scope !22703, !noalias !22704
  %.sroa.57.0.i.i.i.i.i = select i1 %i.fp, i64 %i.fr, i64 undef
  %i.fs = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 232
  %i.ft = load i32, ptr %i.fs, align 8, !range !98, !alias.scope !22703, !noalias !22704, !noundef !38 ; 2 uses
  %i.fu = trunc nuw i32 %i.ft to i1
  %i.fv = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 236
  %i.fw = load i32, ptr %i.fv, align 4, !alias.scope !22703, !noalias !22704
  %.sroa.59.0.i.i.i.i.i = select i1 %i.fu, i32 %i.fw, i32 undef
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.av, i64 24, i1 false), !noalias !22698
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.au, i64 24, i1 false), !noalias !22698
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.at, i64 48, i1 false), !noalias !22698
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !22702
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !22702
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !22702
  store i64 %i.ep, ptr %i.ax, align 8, !noalias !22698
  store i64 %.sroa.57.0.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx11.i.i.i.i, align 8, !noalias !22698
  store i64 %.sroa.02.0.i.i.i.i.i, ptr %.sroa.8.0..sroa_idx.i.i.i.i, align 8, !noalias !22698
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.9.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.54.i.i.i.i.i, i64 96, i1 false), !noalias !22698
  store i32 %i.ew, ptr %.sroa.10.0..sroa_idx.i.i.i.i, align 8, !noalias !22698
  store i32 %.sroa.5.0.i.i5.i.i.i, ptr %.sroa.11.0..sroa_idx.i.i.i.i, align 4, !noalias !22698
  store i32 %i.ft, ptr %.sroa.12.0..sroa_idx.i.i.i.i, align 8, !noalias !22698
  store i32 %.sroa.59.0.i.i.i.i.i, ptr %.sroa.13.0..sroa_idx.i.i.i.i, align 4, !noalias !22698
  store i8 %i.es, ptr %.sroa.14.0..sroa_idx.i.i.i.i, align 8, !noalias !22698
  br label %bb.ay

bb.ax:                                            ; preds = %bb.ae
  store i64 2, ptr %i.ax, align 8, !noalias !22698
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %_RNvXspt_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_12UpsertPointsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i
  %i.fx = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 272
  %i.fy = load i32, ptr %i.fx, align 8, !range !98, !alias.scope !22699, !noalias !22700, !noundef !38 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 276
  %i.ga = load i32, ptr %i.fz, align 4, !alias.scope !22699, !noalias !22700
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.01.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.54.i.i.i.i)
  %i.gb = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 316
  %i.gc = load i8, ptr %i.gb, align 4, !range !72, !alias.scope !22699, !noalias !22700, !noundef !38 ; 2 uses
  %.not10.i.i.i.i = icmp eq i8 %i.gc, 2
  br i1 %.not10.i.i.i.i, label %bb.az, label %bb.bb

bb.az:                                            ; preds = %bb.bb, %bb.ay
  %i.gd = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 280
  %i.ge = load i32, ptr %i.gd, align 8, !range !98, !alias.scope !22699, !noalias !22700, !noundef !38 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 284
  %i.gg = load i32, ptr %i.gf, align 4, !alias.scope !22699, !noalias !22700
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !22698
  %i.gh = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 248
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant14PointStructRawENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.aw, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gh)
          to label %_RNvXsGy_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_20UpsertPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i unwind label %bb.ba, !noalias !22711

bb.ba:                                            ; preds = %bb.az
  %i.gi = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant12UpsertPointsEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(240) %i.ax) #31
          to label %bb.hi unwind label %bb.bc, !noalias !22711

bb.bb:                                            ; preds = %bb.ay
  %i.gj = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 288
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %.sroa.01.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(28) %i.gj, i64 28, i1 false), !noalias !22700
  %.sroa.515.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 317
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.54.i.i.i.i, ptr noundef nonnull readonly align 1 dereferenceable(3) %.sroa.515.0..sroa_idx.i.i.i.i, i64 3, i1 false), !noalias !22700
  br label %bb.az

bb.bc:                                            ; preds = %bb.ba
  %i.gk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28, !noalias !22711
  unreachable

_RNvXsGy_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_20UpsertPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i: ; preds = %bb.az
  %i.gl = trunc nuw i32 %i.ge to i1
  %.sroa.57.0.i.i.i.i = select i1 %i.gl, i32 %i.gg, i32 undef ; 2 uses
  %i.gm = trunc nuw i32 %i.fy to i1
  %.sroa.5.0.i.i.i.i = select i1 %i.gm, i32 %i.ga, i32 undef
  %.sroa.0357.i.sroa.4.0.copyload.i.i = load i64, ptr %.sroa.4.0..sroa_idx11.i.i.i.i, align 8, !noalias !22712
  %i.gn = load <2 x i64>, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !22712
  %.sroa.0357.i.sroa.7.0.copyload.i.i = load i64, ptr %.sroa.0357.i.sroa.7.0..sroa_idx.i.i, align 8, !noalias !22712
  %.sroa.0357.i.sroa.8.0.copyload.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !noalias !22712
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.54.sroa.0.i.i187.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0357.i.sroa.9.0..sroa_idx.i.i, i64 16, i1 false), !noalias !22695
  %.sroa.0357.i.sroa.10.0.copyload.i.i = load i64, ptr %.sroa.7.0..sroa_idx.i.i.i.i, align 8, !noalias !22712 ; 2 uses
  %.sroa.0357.i.sroa.11.0.copyload.i.i = load i64, ptr %.sroa.0357.i.sroa.11.0..sroa_idx.i.i, align 8, !noalias !22712 ; 3 uses
  %.sroa.0357.i.sroa.12.0.copyload.i.i = load i64, ptr %.sroa.0357.i.sroa.12.0..sroa_idx.i.i, align 8, !noalias !22712 ; 2 uses
  %.sroa.0357.i.sroa.13.0.copyload.i.i = load i64, ptr %.sroa.0357.i.sroa.13.0..sroa_idx.i.i, align 8, !noalias !22712 ; 2 uses
  %.sroa.0357.i.sroa.14.0.copyload.i.i = load i64, ptr %.sroa.0357.i.sroa.14.0..sroa_idx.i.i, align 8, !noalias !22712
  %.sroa.0357.i.sroa.15.0.copyload.i.i = load i64, ptr %.sroa.0357.i.sroa.15.0..sroa_idx.i.i, align 8, !noalias !22712 ; 2 uses
  %.sroa.0357.i.sroa.16.0.copyload.i.i = load i64, ptr %.sroa.8.0..sroa_idx.i.i.i.i, align 8, !noalias !22712 ; 2 uses
  %.sroa.0357.i.sroa.17.0.copyload.i.i = load i32, ptr %.sroa.9.0..sroa_idx.i.i.i.i, align 8, !noalias !22712
  %.sroa.0357.i.sroa.18.0.copyload.i.i = load i32, ptr %.sroa.0357.i.sroa.18.0..sroa_idx.i.i, align 4, !noalias !22712 ; 2 uses
  %.sroa.0357.i.sroa.19.0.copyload.i.i = load i32, ptr %.sroa.0357.i.sroa.19.0..sroa_idx.i.i, align 8, !noalias !22712
  %i.go = load <4 x i8>, ptr %.sroa.0357.i.sroa.20.0..sroa_idx.i.i, align 4, !noalias !22712
  %.sroa.0357.i.sroa.24.0.copyload.i.i = load i32, ptr %.sroa.0357.i.sroa.24.0..sroa_idx.i.i, align 8, !noalias !22712 ; 2 uses
  %.sroa.0357.i.sroa.25.0.copyload.i.i = load i32, ptr %.sroa.0357.i.sroa.25.0..sroa_idx.i.i, align 4, !noalias !22712
  %.sroa.0357.i.sroa.26.0.copyload.i.i = load i8, ptr %.sroa.0357.i.sroa.26.0..sroa_idx.i.i, align 8, !noalias !22712
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.05.i303.i.sroa.11.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.0357.i.sroa.27.0..sroa_idx.i.i, i64 7, i1 false), !noalias !22695
  %.sroa.0357.i.sroa.28.0.copyload.i.i = load i32, ptr %.sroa.0357.i.sroa.28.0..sroa_idx.i.i, align 8, !noalias !22712
  %.sroa.0357.i.sroa.29.0.copyload.i.i = load i32, ptr %.sroa.0357.i.sroa.29.0..sroa_idx.i.i, align 4, !noalias !22712 ; 2 uses
  %i.gp = load <2 x i32>, ptr %.sroa.0357.i.sroa.30.0..sroa_idx.i.i, align 8, !noalias !22712
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.sroa.20.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0357.i.sroa.32.0..sroa_idx.i.i, i64 24, i1 false), !noalias !22695
  %.sroa.0357.i.sroa.33.0.copyload.i.i = load i32, ptr %.sroa.0357.i.sroa.33.0..sroa_idx.i.i, align 8, !noalias !22712
  %.sroa.0357.i.sroa.34.0.copyload.i.i = load i32, ptr %.sroa.0357.i.sroa.34.0..sroa_idx.i.i, align 4, !noalias !22712 ; 2 uses
  %.sroa.0357.i.sroa.35.0.copyload.i.i = load i32, ptr %.sroa.0357.i.sroa.35.0..sroa_idx.i.i, align 8, !noalias !22712 ; 2 uses
  %.sroa.0357.i.sroa.36.0.copyload.i.i = load i32, ptr %.sroa.0357.i.sroa.36.0..sroa_idx.i.i, align 4, !noalias !22712
  %.sroa.0357.i.sroa.37.0.copyload.i.i = load i32, ptr %.sroa.0357.i.sroa.37.0..sroa_idx.i.i, align 8, !noalias !22712 ; 2 uses
  %.sroa.0357.i.sroa.38.0.copyload.i.i = load i32, ptr %.sroa.0357.i.sroa.38.0..sroa_idx.i.i, align 4, !noalias !22712
  %.sroa.0357.i.sroa.39.0.copyload.i.i = load i32, ptr %.sroa.10.0..sroa_idx.i.i.i.i, align 8, !noalias !22712
  %.sroa.0357.i.sroa.40.0.copyload.i.i = load i32, ptr %.sroa.11.0..sroa_idx.i.i.i.i, align 4, !noalias !22712
  %.sroa.0357.i.sroa.41.0.copyload.i.i = load i32, ptr %.sroa.12.0..sroa_idx.i.i.i.i, align 8, !noalias !22712 ; 2 uses
  %.sroa.0357.i.sroa.42.0.copyload.i.i = load i32, ptr %.sroa.13.0..sroa_idx.i.i.i.i, align 4, !noalias !22712
  %.sroa.0357.i.sroa.43.0.copyload.i.i = load i32, ptr %.sroa.14.0..sroa_idx.i.i.i.i, align 8, !noalias !22712
  %.sroa.0357.i.sroa.44.0.copyload.i.i = load i32, ptr %.sroa.0357.i.sroa.44.0..sroa_idx.i.i, align 4, !noalias !22712
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %.sroa.211.i.i, ptr noundef nonnull align 8 dereferenceable(28) %.sroa.01.i.i.i.i, i64 28, i1 false), !noalias !22695
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.213.i.i, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.54.i.i.i.i, i64 3, i1 false), !noalias !22695
  %.sroa.0357.i.sroa.45.240.copyload.i.i = load i32, ptr %i.aw, align 8, !noalias !22712
  %.sroa.0357.i.sroa.47.240.copyload.i.i = load i32, ptr %.sroa.0357.i.sroa.47.240..sroa_idx.i.i, align 4, !noalias !22712
  %.sroa.0357.i.sroa.48.240.copyload.i.i = load i32, ptr %.sroa.0357.i.sroa.48.240..sroa_idx.i.i, align 8, !noalias !22712
  %.sroa.0357.i.sroa.49.240.copyload.i.i = load i8, ptr %.sroa.0357.i.sroa.49.240..sroa_idx.i.i, align 4, !noalias !22712
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.05.i247.i.sroa.9.i.i, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.0357.i.sroa.50.240..sroa_idx.i.i, i64 3, i1 false), !noalias !22695
  %.sroa.0357.i.sroa.51.240.copyload.i.i = load i32, ptr %.sroa.0357.i.sroa.51.240..sroa_idx.i.i, align 8, !noalias !22712
  %.sroa.0357.i.sroa.52.240.copyload.i.i = load i8, ptr %.sroa.0357.i.sroa.52.240..sroa_idx.i.i, align 4, !noalias !22712
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.58.i248.i.i.i, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.0357.i.sroa.53.240..sroa_idx.i.i, i64 3, i1 false), !noalias !22695
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !22698
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.01.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.54.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !22698
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.54.i.i.i.i.i)
  %.sroa.65.sroa.0.0.extract.trunc679.i.i = trunc i64 %.sroa.0357.i.sroa.10.0.copyload.i.i to i32
  %.sroa.65.sroa.16.0.extract.shift689.i.i = lshr i64 %.sroa.0357.i.sroa.10.0.copyload.i.i, 32
  %.sroa.65.sroa.16.0.extract.trunc690.i.i = trunc nuw i64 %.sroa.65.sroa.16.0.extract.shift689.i.i to i32
  %.sroa.77.sroa.0.sroa.0.0.extract.trunc650.i.i = trunc i64 %.sroa.0357.i.sroa.11.0.copyload.i.i to i8
  %3 = lshr i64 %.sroa.0357.i.sroa.11.0.copyload.i.i, 8
  %.sroa.77.sroa.0.sroa.16.0.extract.trunc663.i.i = trunc i64 %3 to i32
  %.sroa.77.sroa.16.0.extract.shift632.i.i = lshr i64 %.sroa.0357.i.sroa.11.0.copyload.i.i, 32
  %.sroa.85.sroa.0.0.extract.trunc592.i.i = trunc i64 %.sroa.0357.i.sroa.12.0.copyload.i.i to i32
  %.sroa.85.sroa.16.0.extract.shift603.i.i = lshr i64 %.sroa.0357.i.sroa.12.0.copyload.i.i, 32
  %.sroa.85.sroa.16.0.extract.trunc604.i.i = trunc nuw i64 %.sroa.85.sroa.16.0.extract.shift603.i.i to i32
  %.sroa.91.sroa.0.0.extract.trunc562.i.i = trunc i64 %.sroa.0357.i.sroa.13.0.copyload.i.i to i32
  %.sroa.91.sroa.16.0.extract.shift573.i.i = lshr i64 %.sroa.0357.i.sroa.13.0.copyload.i.i, 32
  %.sroa.91.sroa.16.0.extract.trunc574.i.i = trunc nuw i64 %.sroa.91.sroa.16.0.extract.shift573.i.i to i32
  %.sroa.105.sroa.0.0.extract.trunc529.i.i = trunc i64 %.sroa.0357.i.sroa.15.0.copyload.i.i to i8
  %.sroa.105.sroa.16.0.extract.shift541.i.i = and i64 %.sroa.0357.i.sroa.15.0.copyload.i.i, -256
  %.sroa.109.sroa.0.0.extract.trunc496.i.i = trunc i64 %.sroa.0357.i.sroa.16.0.copyload.i.i to i32
  %.sroa.109.sroa.16.0.extract.shift508.i.i = lshr i64 %.sroa.0357.i.sroa.16.0.copyload.i.i, 32
  %.sroa.118.sroa.0.0.extract.trunc465.i.i = trunc i32 %.sroa.0357.i.sroa.18.0.copyload.i.i to i8
  %.sroa.118.sroa.16.0.extract.shift476.i.i = lshr i32 %.sroa.0357.i.sroa.18.0.copyload.i.i, 8
  %.sroa.118.sroa.16.0.extract.trunc477.i.i = trunc nuw i32 %.sroa.118.sroa.16.0.extract.shift476.i.i to i24
  %.sroa.130.sroa.0.0.extract.trunc438.i.i = trunc i32 %.sroa.0357.i.sroa.24.0.copyload.i.i to i8
  %.sroa.130.sroa.14.0.extract.shift448.i.i = and i32 %.sroa.0357.i.sroa.24.0.copyload.i.i, -256
  %.sroa.136.sroa.0.0.extract.trunc411.i.i = trunc i32 %.sroa.0357.i.sroa.29.0.copyload.i.i to i8
  %.sroa.136.sroa.14.0.extract.shift421.i.i = lshr i32 %.sroa.0357.i.sroa.29.0.copyload.i.i, 8
  %.sroa.146.sroa.0.0.extract.trunc387.i.i = trunc i32 %.sroa.0357.i.sroa.34.0.copyload.i.i to i8
  %.sroa.146.sroa.13.0.extract.shift396.i.i = lshr i32 %.sroa.0357.i.sroa.34.0.copyload.i.i, 8
  %.sroa.151.sroa.0.0.extract.trunc369.i.i = trunc i32 %.sroa.0357.i.sroa.35.0.copyload.i.i to i8
  %.sroa.151.sroa.12.0.extract.shift376.i.i = and i32 %.sroa.0357.i.sroa.35.0.copyload.i.i, -256
  %.sroa.155.sroa.0.0.extract.trunc348.i.i = trunc i32 %.sroa.0357.i.sroa.37.0.copyload.i.i to i8
  %.sroa.155.sroa.12.0.extract.shift356.i.i = and i32 %.sroa.0357.i.sroa.37.0.copyload.i.i, -256
  %.sroa.172.sroa.0.0.extract.trunc333.i.i = trunc i32 %.sroa.0357.i.sroa.41.0.copyload.i.i to i8
  %.sroa.172.sroa.12.0.extract.shift339.i.i = and i32 %.sroa.0357.i.sroa.41.0.copyload.i.i, -256
  %.sroa.204.sroa.0.0.extract.trunc325.i.i = trunc i32 %.sroa.57.0.i.i.i.i to i8
  %.sroa.204.sroa.9.0.extract.shift328.i.i = lshr i32 %.sroa.57.0.i.i.i.i, 8
  %.sroa.204.sroa.9.0.extract.trunc329.i.i = trunc nuw i32 %.sroa.204.sroa.9.0.extract.shift328.i.i to i24
  %i.gq = insertelement <2 x i32> poison, i32 %i.fy, i64 0
  %i.gr = insertelement <2 x i32> %i.gq, i32 %.sroa.5.0.i.i.i.i, i64 1
  br label %_RNvXNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant16update_operationNtB2_6UpdateNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i

bb.bd:                                            ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22713)
  %i.gs = load i64, ptr %i.cj, align 8, !range !49, !alias.scope !22714, !noalias !22715, !noundef !38 ; 3 uses
  %.not.i8.i.i.i = icmp eq i64 %i.gs, 2
  br i1 %.not.i8.i.i.i, label %bb.bv, label %bb.be

bb.be:                                            ; preds = %bb.bd
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22716)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !22717
  %i.gt = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 24
  invoke void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ap, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gt)
          to label %.noexc13.i unwind label %.loopexit.i, !noalias !22681

.noexc13.i:                                       ; preds = %bb.be
  %i.gu = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 208
  %i.gv = load i8, ptr %i.gu, align 8, !range !72, !alias.scope !22718, !noalias !22719, !noundef !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !22717
  %i.gw = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 96 ; 2 uses
  %i.gx = load i64, ptr %i.gw, align 8, !range !61, !alias.scope !22718, !noalias !22719, !noundef !38 ; 3 uses
  %.not9.i.i.i.i.i = icmp eq i64 %i.gx, -3
  br i1 %.not9.i.i.i.i.i, label %bb.bi, label %bb.bf

bb.bf:                                            ; preds = %.noexc13.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !22717
  switch i64 %i.gx, label %bb.bg [
    i64 -2, label %bb.bl
    i64 -1, label %bb.bh
  ]

bb.bg:                                            ; preds = %bb.bf
  invoke fastcc void @_RNvXs1i_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_6FilterNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(104) %i.an, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.gw) #34
          to label %.noexc.i.i31.i.i.i unwind label %bb.bk, !noalias !22720

.noexc.i.i31.i.i.i:                               ; preds = %bb.bg
  %.sroa.0.0.copyload.pre.i.i.i.i.i.i = load i64, ptr %i.an, align 8, !noalias !22721
  br label %bb.bl

bb.bh:                                            ; preds = %bb.bf
  %i.gy = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 104
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant7PointIdENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.cd, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gy)
          to label %bb.bl unwind label %bb.bk, !noalias !22720

bb.bi:                                            ; preds = %bb.bl, %.noexc13.i
  %.sroa.12.i.i.sroa.0.0.copyload.i.i = phi i64 [ %.sroa.0.0.i.i.i11.i.i.i, %bb.bl ], [ -3, %.noexc13.i ] ; 2 uses
  store i64 %.sroa.12.i.i.sroa.0.0.copyload.i.i, ptr %i.ao, align 8, !noalias !22717
  %i.gz = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 200
  %i.ha = load i32, ptr %i.gz, align 8, !range !98, !alias.scope !22718, !noalias !22719, !noundef !38 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 204
  %.val.i.i13.i.i.i = load i32, ptr %i.hb, align 4, !alias.scope !22718, !noalias !22719
  %i.hc = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 48 ; 2 uses
  %i.hd = load i64, ptr %i.hc, align 8, !range !42, !alias.scope !22718, !noalias !22719, !noundef !38
  %.not10.i.i.i.i.i = icmp eq i64 %i.hd, -1
  br i1 %.not10.i.i.i.i.i, label %_RNvXspC_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_12DeletePointsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i, label %bb.bn

bb.bj:                                            ; preds = %.body.i.i14.i.i.i, %bb.bk
  %.pn.i.i9.i.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i.i.i, %.body.i.i14.i.i.i ], [ %i.he, %bb.bk ]
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ap)
          to label %bb.hi unwind label %bb.bu, !noalias !22720

bb.bk:                                            ; preds = %bb.bh, %bb.bg
  %i.he = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.bl:                                            ; preds = %bb.bh, %.noexc.i.i31.i.i.i, %bb.bf
  %.sroa.0.0.i.i.i11.i.i.i = phi i64 [ %i.gx, %bb.bf ], [ %.sroa.0.0.copyload.pre.i.i.i.i.i.i, %.noexc.i.i31.i.i.i ], [ -1, %bb.bh ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.4.0..sroa_idx.i.i12.i.i.i, ptr noundef nonnull align 8 dereferenceable(96) %i.cd, i64 96, i1 false), !noalias !22717
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !22717
  br label %bb.bi

bb.bm:                                            ; preds = %bb.bn
  %i.hf = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i14.i.i.i

.body.i.i14.i.i.i:                                ; preds = %bb.bq, %bb.bm
  %eh.lpad-body.i.i.i.i.i = phi { ptr, i32 } [ %i.hf, %bb.bm ], [ %i.hk, %bb.bq ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant14PointsSelectorEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(104) %i.ao) #31
          to label %bb.bj unwind label %bb.bu, !noalias !22720

bb.bn:                                            ; preds = %bb.bi
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22722)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !22723
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant8ShardKeyENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.am, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.hc)
          to label %.noexc15.i.i.i.i.i unwind label %bb.bm, !noalias !22720

.noexc15.i.i.i.i.i:                               ; preds = %bb.bn
  %i.hg = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 72 ; 2 uses
  %i.hh = load i64, ptr %i.hg, align 8, !range !61, !alias.scope !22724, !noalias !22725, !noundef !38 ; 3 uses
  switch i64 %i.hh, label %bb.bp [
    i64 -3, label %bb.bt
    i64 -2, label %bb.bt
    i64 -1, label %bb.bo
  ]

bb.bo:                                            ; preds = %.noexc15.i.i.i.i.i
  %i.hi = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 80
  %i.hj = load i64, ptr %i.hi, align 8, !alias.scope !22724, !noalias !22725, !noundef !38
  br label %bb.bt

bb.bp:                                            ; preds = %.noexc15.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !22723
  invoke void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.al, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.hg)
          to label %bb.br unwind label %bb.bq, !noalias !22726

bb.bq:                                            ; preds = %bb.bp
  %i.hk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant8ShardKeyEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.am) #31
          to label %.body.i.i14.i.i.i unwind label %bb.bs, !noalias !22726

bb.br:                                            ; preds = %bb.bp
  %.sroa.06.0.copyload.i.i.i26.i.i.i = load i64, ptr %i.al, align 8, !noalias !22723
  %.sroa.57.0.copyload.i.i.i28.i.i.i = load i64, ptr %.sroa.57.0..sroa_idx.i.i.i27.i.i.i, align 8, !noalias !22723
  %.sroa.7.0.copyload.i.i.i30.i.i.i = load i64, ptr %.sroa.7.0..sroa_idx.i.i.i29.i.i.i, align 8, !noalias !22723
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !22723
  br label %bb.bt

bb.bs:                                            ; preds = %bb.bq
  %i.hl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28, !noalias !22726
  unreachable

bb.bt:                                            ; preds = %.noexc15.i.i.i.i.i, %bb.br, %bb.bo, %.noexc15.i.i.i.i.i
  %.sroa.5.sroa.4.0.i.i.i15.i.i.i = phi i64 [ undef, %.noexc15.i.i.i.i.i ], [ %.sroa.7.0.copyload.i.i.i30.i.i.i, %bb.br ], [ undef, %bb.bo ], [ undef, %.noexc15.i.i.i.i.i ]
  %.sroa.5.sroa.0.0.i.i.i16.i.i.i = phi i64 [ undef, %.noexc15.i.i.i.i.i ], [ %.sroa.57.0.copyload.i.i.i28.i.i.i, %bb.br ], [ %i.hj, %bb.bo ], [ undef, %.noexc15.i.i.i.i.i ]
  %.sroa.0.0.i14.i.i.i.i.i = phi i64 [ %i.hh, %.noexc15.i.i.i.i.i ], [ %.sroa.06.0.copyload.i.i.i26.i.i.i, %bb.br ], [ -1, %bb.bo ], [ %i.hh, %.noexc15.i.i.i.i.i ]
  %.sroa.016.0.copyload.i.i.i.i.i = load i64, ptr %i.am, align 8, !noalias !22727
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.54.sroa.0.i.i187.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.417.0..sroa_idx.i.i.i.i.i, i64 16, i1 false), !noalias !22695
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !22723
  br label %_RNvXspC_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_12DeletePointsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i

bb.bu:                                            ; preds = %.body.i.i14.i.i.i, %bb.bj
  %i.hm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28, !noalias !22720
  unreachable

_RNvXspC_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_12DeletePointsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i: ; preds = %bb.bt, %bb.bi
  %.sroa.54.sroa.6.0.i.i.i.i.i = phi i64 [ undef, %bb.bi ], [ %.sroa.5.sroa.4.0.i.i.i15.i.i.i, %bb.bt ]
  %.sroa.54.sroa.5.0.i.i.i.i.i = phi i64 [ undef, %bb.bi ], [ %.sroa.5.sroa.0.0.i.i.i16.i.i.i, %bb.bt ]
  %.sroa.54.sroa.4.0.i.i.i.i.i = phi i64 [ undef, %bb.bi ], [ %.sroa.0.0.i14.i.i.i.i.i, %bb.bt ]
  %.sroa.02.0.i.i17.i.i.i = phi i64 [ -1, %bb.bi ], [ %.sroa.016.0.copyload.i.i.i.i.i, %bb.bt ]
  %i.hn = trunc nuw i32 %i.ha to i1
  %.sroa.5.0.i.i18.i.i.i = select i1 %i.hn, i32 %.val.i.i13.i.i.i, i32 undef
  %i.ho = trunc nuw i64 %i.gs to i1
  %i.hp = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 16
  %i.hq = load i64, ptr %i.hp, align 8, !alias.scope !22718, !noalias !22719
  %.sroa.57.0.i.i19.i.i.i = select i1 %i.ho, i64 %i.hq, i64 undef
  %i.hr = load <2 x i64>, ptr %i.ap, align 16, !noalias !22694
  %.sroa.6.i.i.sroa.5.0.copyload.i.i = load i64, ptr %.sroa.6.i.i.sroa.5.0..sroa_idx.i.i, align 16, !noalias !22694
  %.sroa.12.i.i.sroa.4.0.copyload.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i12.i.i.i, align 8, !noalias !22694
  %.sroa.12.i.i.sroa.5.0.copyload.i.i = load i64, ptr %.sroa.12.i.i.sroa.5.0..sroa_idx.i.i, align 8, !noalias !22694
  %.sroa.12.i.i.sroa.6.0.copyload.i.i = load i64, ptr %.sroa.12.i.i.sroa.6.0..sroa_idx.i.i, align 8, !noalias !22694
  %.sroa.12.i.i.sroa.7.0.copyload.i.i = load i32, ptr %.sroa.12.i.i.sroa.7.0..sroa_idx.i.i, align 8, !noalias !22694
  %.sroa.12.i.i.sroa.8.0.copyload.i.i = load i32, ptr %.sroa.12.i.i.sroa.8.0..sroa_idx.i.i, align 4, !noalias !22694
  %.sroa.12.i.i.sroa.9.0.copyload.i.i = load i32, ptr %.sroa.12.i.i.sroa.9.0..sroa_idx.i.i, align 8, !noalias !22694
  %i.hs = load <4 x i8>, ptr %.sroa.12.i.i.sroa.10.0..sroa_idx.i.i, align 4, !noalias !22694
  %.sroa.12.i.i.sroa.14.0.copyload.i.i = load i32, ptr %.sroa.12.i.i.sroa.14.0..sroa_idx.i.i, align 8, !noalias !22694
  %.sroa.12.i.i.sroa.15.0.copyload.i.i = load i32, ptr %.sroa.12.i.i.sroa.15.0..sroa_idx.i.i, align 4, !noalias !22694
  %.sroa.12.i.i.sroa.16.0.copyload.i.i = load i8, ptr %.sroa.12.i.i.sroa.16.0..sroa_idx.i.i, align 8, !noalias !22694
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.05.i303.i.sroa.11.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.12.i.i.sroa.17.0..sroa_idx.i.i, i64 7, i1 false), !noalias !22695
  %.sroa.12.i.i.sroa.18.0.copyload.i.i = load i32, ptr %.sroa.12.i.i.sroa.18.0..sroa_idx.i.i, align 8, !noalias !22694
  %.sroa.12.i.i.sroa.19.0.copyload.i.i = load i32, ptr %.sroa.12.i.i.sroa.19.0..sroa_idx.i.i, align 4, !noalias !22694
  %i.ht = load <2 x i32>, ptr %.sroa.12.i.i.sroa.20.0..sroa_idx.i.i, align 8, !noalias !22694
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.sroa.20.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.12.i.i.sroa.22.0..sroa_idx.i.i, i64 24, i1 false), !noalias !22695
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !22717
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !22717
  br label %bb.bv

bb.bv:                                            ; preds = %_RNvXspC_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_12DeletePointsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i, %bb.bd
  %.sroa.6.i.i.sroa.5.0.i.i = phi i64 [ undef, %bb.bd ], [ %.sroa.6.i.i.sroa.5.0.copyload.i.i, %_RNvXspC_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_12DeletePointsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ]
  %.sroa.12.i.i.sroa.19.0.i.i = phi i32 [ undef, %bb.bd ], [ %.sroa.12.i.i.sroa.19.0.copyload.i.i, %_RNvXspC_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_12DeletePointsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ] ; 2 uses
  %.sroa.12.i.i.sroa.18.0.i.i = phi i32 [ undef, %bb.bd ], [ %.sroa.12.i.i.sroa.18.0.copyload.i.i, %_RNvXspC_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_12DeletePointsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ]
  %.sroa.12.i.i.sroa.16.0.i.i = phi i8 [ undef, %bb.bd ], [ %.sroa.12.i.i.sroa.16.0.copyload.i.i, %_RNvXspC_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_12DeletePointsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ]
  %.sroa.12.i.i.sroa.15.0.i.i = phi i32 [ undef, %bb.bd ], [ %.sroa.12.i.i.sroa.15.0.copyload.i.i, %_RNvXspC_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_12DeletePointsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ]
  %.sroa.12.i.i.sroa.14.0.i.i = phi i32 [ undef, %bb.bd ], [ %.sroa.12.i.i.sroa.14.0.copyload.i.i, %_RNvXspC_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_12DeletePointsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ] ; 2 uses
  %.sroa.12.i.i.sroa.9.0.i.i = phi i32 [ undef, %bb.bd ], [ %.sroa.12.i.i.sroa.9.0.copyload.i.i, %_RNvXspC_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_12DeletePointsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ]
  %.sroa.12.i.i.sroa.8.0.i.i = phi i32 [ undef, %bb.bd ], [ %.sroa.12.i.i.sroa.8.0.copyload.i.i, %_RNvXspC_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_12DeletePointsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ] ; 2 uses
  %.sroa.12.i.i.sroa.7.0.i.i = phi i32 [ undef, %bb.bd ], [ %.sroa.12.i.i.sroa.7.0.copyload.i.i, %_RNvXspC_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_12DeletePointsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ]
  %.sroa.12.i.i.sroa.6.0.i.i = phi i64 [ undef, %bb.bd ], [ %.sroa.12.i.i.sroa.6.0.copyload.i.i, %_RNvXspC_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_12DeletePointsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ] ; 2 uses
  %.sroa.12.i.i.sroa.5.0.i.i = phi i64 [ undef, %bb.bd ], [ %.sroa.12.i.i.sroa.5.0.copyload.i.i, %_RNvXspC_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_12DeletePointsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ] ; 2 uses
  %.sroa.12.i.i.sroa.4.0.i.i = phi i64 [ undef, %bb.bd ], [ %.sroa.12.i.i.sroa.4.0.copyload.i.i, %_RNvXspC_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_12DeletePointsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ]
  %.sroa.12.i.i.sroa.0.0.i.i = phi i64 [ undef, %bb.bd ], [ %.sroa.12.i.i.sroa.0.0.copyload.i.i, %_RNvXspC_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_12DeletePointsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ] ; 2 uses
  %.sroa.15.0.i.i.i.i = phi i8 [ undef, %bb.bd ], [ %i.gv, %_RNvXspC_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_12DeletePointsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ]
  %.sroa.14.0.i.i.i.i = phi i32 [ undef, %bb.bd ], [ %.sroa.5.0.i.i18.i.i.i, %_RNvXspC_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_12DeletePointsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ] ; 2 uses
  %.sroa.13.0.i.i.i.i = phi i32 [ undef, %bb.bd ], [ %i.ha, %_RNvXspC_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_12DeletePointsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ]
  %.sroa.1122.0.i.i.i.i = phi i64 [ undef, %bb.bd ], [ %.sroa.54.sroa.6.0.i.i.i.i.i, %_RNvXspC_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_12DeletePointsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ] ; 2 uses
  %.sroa.10.0.i.i.i.i = phi i64 [ undef, %bb.bd ], [ %.sroa.54.sroa.5.0.i.i.i.i.i, %_RNvXspC_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_12DeletePointsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ] ; 3 uses
  %.sroa.9.0.i.i.i.i = phi i64 [ undef, %bb.bd ], [ %.sroa.54.sroa.4.0.i.i.i.i.i, %_RNvXspC_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_12DeletePointsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ] ; 2 uses
  %.sroa.718.0.i.i.i.i = phi i64 [ undef, %bb.bd ], [ %.sroa.02.0.i.i17.i.i.i, %_RNvXspC_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_12DeletePointsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ]
  %.sroa.516.0.i.i.i.i = phi i64 [ undef, %bb.bd ], [ %.sroa.57.0.i.i19.i.i.i, %_RNvXspC_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_12DeletePointsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ]
  %i.hu = phi <4 x i8> [ undef, %bb.bd ], [ %i.hs, %_RNvXspC_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_12DeletePointsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ]
  %i.hv = phi <2 x i32> [ undef, %bb.bd ], [ %i.ht, %_RNvXspC_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_12DeletePointsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ]
  %i.hw = phi <2 x i64> [ undef, %bb.bd ], [ %i.hr, %_RNvXspC_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_12DeletePointsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ]
  %i.hx = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 216
  %i.hy = load i32, ptr %i.hx, align 8, !range !98, !alias.scope !22714, !noalias !22715, !noundef !38 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 220
  %i.ia = load i32, ptr %i.hz, align 4, !alias.scope !22714, !noalias !22715
  %i.ib = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 260
  %i.ic = load i8, ptr %i.ib, align 4, !range !72, !alias.scope !22714, !noalias !22715, !noundef !38 ; 2 uses
  %.not10.i20.i.i.i = icmp eq i8 %i.ic, 2
  br i1 %.not10.i20.i.i.i, label %_RNvXsGH_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_20DeletePointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.id = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 232
  %.sroa.01.i6.i.sroa.0.0.copyload.i.i = load i32, ptr %i.id, align 8, !alias.scope !22683, !noalias !22696
  %.sroa.01.i6.i.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 236
  %.sroa.01.i6.i.sroa.4.0.copyload.i.i = load i32, ptr %.sroa.01.i6.i.sroa.4.0..sroa_idx.i.i, align 4, !alias.scope !22683, !noalias !22696
  %.sroa.01.i6.i.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 240
  %.sroa.01.i6.i.sroa.5.0.copyload.i.i = load i32, ptr %.sroa.01.i6.i.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !22683, !noalias !22696
  %.sroa.01.i6.i.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 244
  %.sroa.01.i6.i.sroa.6.0.copyload.i.i = load i32, ptr %.sroa.01.i6.i.sroa.6.0..sroa_idx.i.i, align 4, !alias.scope !22683, !noalias !22696
  %.sroa.01.i6.i.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 248
  %.sroa.01.i6.i.sroa.7.0.copyload.i.i = load i32, ptr %.sroa.01.i6.i.sroa.7.0..sroa_idx.i.i, align 8, !alias.scope !22683, !noalias !22696
  %.sroa.01.i6.i.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 252
  %.sroa.01.i6.i.sroa.8.0.copyload.i.i = load i32, ptr %.sroa.01.i6.i.sroa.8.0..sroa_idx.i.i, align 4, !alias.scope !22683, !noalias !22696
  %.sroa.01.i6.i.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 256
  %.sroa.01.i6.i.sroa.9.0.copyload.i.i = load i32, ptr %.sroa.01.i6.i.sroa.9.0..sroa_idx.i.i, align 8, !alias.scope !22683, !noalias !22696
  %.sroa.515.0..sroa_idx.i21.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 261
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.05.i247.i.sroa.9.i.i, ptr noundef nonnull readonly align 1 dereferenceable(3) %.sroa.515.0..sroa_idx.i21.i.i.i, i64 3, i1 false), !noalias !22684
  br label %_RNvXsGH_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_20DeletePointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i

_RNvXsGH_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_20DeletePointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i: ; preds = %bb.bw, %bb.bv
  %.sroa.01.i6.i.sroa.9.0.i.i = phi i32 [ undef, %bb.bv ], [ %.sroa.01.i6.i.sroa.9.0.copyload.i.i, %bb.bw ]
  %.sroa.01.i6.i.sroa.8.0.i.i = phi i32 [ undef, %bb.bv ], [ %.sroa.01.i6.i.sroa.8.0.copyload.i.i, %bb.bw ]
  %.sroa.01.i6.i.sroa.7.0.i.i = phi i32 [ undef, %bb.bv ], [ %.sroa.01.i6.i.sroa.7.0.copyload.i.i, %bb.bw ]
  %.sroa.01.i6.i.sroa.6.0.i.i = phi i32 [ undef, %bb.bv ], [ %.sroa.01.i6.i.sroa.6.0.copyload.i.i, %bb.bw ]
  %.sroa.01.i6.i.sroa.5.0.i.i = phi i32 [ undef, %bb.bv ], [ %.sroa.01.i6.i.sroa.5.0.copyload.i.i, %bb.bw ]
  %.sroa.01.i6.i.sroa.4.0.i.i = phi i32 [ undef, %bb.bv ], [ %.sroa.01.i6.i.sroa.4.0.copyload.i.i, %bb.bw ]
  %.sroa.01.i6.i.sroa.0.0.i.i = phi i32 [ undef, %bb.bv ], [ %.sroa.01.i6.i.sroa.0.0.copyload.i.i, %bb.bw ] ; 2 uses
  %i.ie = trunc nuw i32 %i.hy to i1
  %.sroa.5.0.i22.i.i.i = select i1 %i.ie, i32 %i.ia, i32 undef
  %i.if = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 224
  %i.ig = load i32, ptr %i.if, align 8, !range !98, !alias.scope !22714, !noalias !22715, !noundef !38 ; 2 uses
  %i.ih = trunc nuw i32 %i.ig to i1
  %i.ii = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 228
  %i.ij = load i32, ptr %i.ii, align 4, !alias.scope !22714, !noalias !22715
  %.sroa.57.0.i23.i.i.i = select i1 %i.ih, i32 %i.ij, i32 undef
  %.sroa.65.sroa.0.0.extract.trunc684.i.i = trunc i64 %.sroa.9.0.i.i.i.i to i32
  %.sroa.65.sroa.16.0.extract.shift699.i.i = lshr i64 %.sroa.9.0.i.i.i.i, 32
  %.sroa.65.sroa.16.0.extract.trunc700.i.i = trunc nuw i64 %.sroa.65.sroa.16.0.extract.shift699.i.i to i32
  %.sroa.77.sroa.0.sroa.0.0.extract.trunc655.i.i = trunc i64 %.sroa.10.0.i.i.i.i to i8
  %4 = lshr i64 %.sroa.10.0.i.i.i.i, 8
  %.sroa.77.sroa.0.sroa.16.0.extract.trunc673.i.i = trunc i64 %4 to i32
  %.sroa.77.sroa.16.0.extract.shift642.i.i = lshr i64 %.sroa.10.0.i.i.i.i, 32
  %.sroa.85.sroa.0.0.extract.trunc600.i.i = trunc i64 %.sroa.1122.0.i.i.i.i to i32
  %.sroa.85.sroa.16.0.extract.shift619.i.i = lshr i64 %.sroa.1122.0.i.i.i.i, 32
  %.sroa.85.sroa.16.0.extract.trunc620.i.i = trunc nuw i64 %.sroa.85.sroa.16.0.extract.shift619.i.i to i32
  %.sroa.91.sroa.0.0.extract.trunc569.i.i = trunc i64 %.sroa.12.i.i.sroa.0.0.i.i to i32
  %.sroa.91.sroa.16.0.extract.shift587.i.i = lshr i64 %.sroa.12.i.i.sroa.0.0.i.i, 32
  %.sroa.91.sroa.16.0.extract.trunc588.i.i = trunc nuw i64 %.sroa.91.sroa.16.0.extract.shift587.i.i to i32
  %.sroa.105.sroa.0.0.extract.trunc532.i.i = trunc i64 %.sroa.12.i.i.sroa.5.0.i.i to i8
  %.sroa.105.sroa.16.0.extract.shift547.i.i = and i64 %.sroa.12.i.i.sroa.5.0.i.i, -256
  %.sroa.109.sroa.0.0.extract.trunc498.i.i = trunc i64 %.sroa.12.i.i.sroa.6.0.i.i to i32
  %.sroa.109.sroa.16.0.extract.shift512.i.i = lshr i64 %.sroa.12.i.i.sroa.6.0.i.i, 32
  %.sroa.118.sroa.0.0.extract.trunc467.i.i = trunc i32 %.sroa.12.i.i.sroa.8.0.i.i to i8
  %.sroa.118.sroa.16.0.extract.shift480.i.i = lshr i32 %.sroa.12.i.i.sroa.8.0.i.i, 8
  %.sroa.118.sroa.16.0.extract.trunc481.i.i = trunc nuw i32 %.sroa.118.sroa.16.0.extract.shift480.i.i to i24
  %.sroa.130.sroa.0.0.extract.trunc440.i.i = trunc i32 %.sroa.12.i.i.sroa.14.0.i.i to i8
  %.sroa.130.sroa.14.0.extract.shift452.i.i = and i32 %.sroa.12.i.i.sroa.14.0.i.i, -256
  %.sroa.136.sroa.0.0.extract.trunc413.i.i = trunc i32 %.sroa.12.i.i.sroa.19.0.i.i to i8
  %.sroa.136.sroa.14.0.extract.shift425.i.i = lshr i32 %.sroa.12.i.i.sroa.19.0.i.i, 8
  %.sroa.146.sroa.0.0.extract.trunc393.i.i = trunc i32 %.sroa.14.0.i.i.i.i to i8
  %.sroa.146.sroa.13.0.extract.shift408.i.i = lshr i32 %.sroa.14.0.i.i.i.i, 8
  %.sroa.155.sroa.0.0.extract.trunc353.i.i = trunc nuw nsw i32 %i.hy to i8
  %.sroa.172.sroa.0.0.extract.trunc336.i.i = trunc i32 %.sroa.01.i6.i.sroa.0.0.i.i to i8
  %.sroa.172.sroa.12.0.extract.shift345.i.i = and i32 %.sroa.01.i6.i.sroa.0.0.i.i, -256
  br label %_RNvXNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant16update_operationNtB2_6UpdateNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i

bb.bx:                                            ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22728)
  %i.ik = load i64, ptr %i.cj, align 8, !range !49, !alias.scope !22729, !noalias !22730, !noundef !38 ; 3 uses
  %.not.i35.i.i.i = icmp eq i64 %i.ik, 2
  br i1 %.not.i35.i.i.i, label %bb.cq, label %bb.by

bb.by:                                            ; preds = %bb.bx
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22731)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !22732
  %i.il = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 24
  invoke void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ak, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.il)
          to label %.noexc14.i unwind label %.loopexit.i, !noalias !22681

.noexc14.i:                                       ; preds = %bb.by
  %i.im = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 232
  %i.in = load i8, ptr %i.im, align 8, !range !72, !alias.scope !22733, !noalias !22734, !noundef !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !22732
  %i.io = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 48
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant12PointVectorsENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.aj, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.io)
          to label %bb.cb unwind label %bb.ca, !noalias !22735

bb.bz:                                            ; preds = %.body.i.i40.i.i.i, %bb.ca
  %.pn.pn.i.i36.i.i.i = phi { ptr, i32 } [ %.pn.i.i41.i.i.i, %.body.i.i40.i.i.i ], [ %i.ip, %bb.ca ]
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ak)
          to label %bb.hi unwind label %bb.cp, !noalias !22735

bb.ca:                                            ; preds = %.noexc14.i
  %i.ip = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

bb.cb:                                            ; preds = %.noexc14.i
  %i.iq = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 224
  %i.ir = load i32, ptr %i.iq, align 8, !range !98, !alias.scope !22733, !noalias !22734, !noundef !38 ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 228
  %.val.i.i38.i.i.i = load i32, ptr %i.is, align 4, !alias.scope !22733, !noalias !22734
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !22732
  %i.it = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 72 ; 2 uses
  %i.iu = load i64, ptr %i.it, align 8, !range !42, !alias.scope !22733, !noalias !22734, !noundef !38
  %.not9.i.i39.i.i.i = icmp eq i64 %i.iu, -1
  br i1 %.not9.i.i39.i.i.i, label %bb.cj, label %bb.cd

.body.i.i40.i.i.i:                                ; preds = %bb.cn, %bb.cg, %bb.cc
  %.pn.i.i41.i.i.i = phi { ptr, i32 } [ %i.jh, %bb.cn ], [ %i.iv, %bb.cc ], [ %i.jb, %bb.cg ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant12PointVectorsEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.aj) #31
          to label %bb.bz unwind label %bb.cp, !noalias !22735

bb.cc:                                            ; preds = %bb.cd
  %i.iv = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i40.i.i.i

bb.cd:                                            ; preds = %bb.cb
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22736)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !22737
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant8ShardKeyENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ag, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.it)
          to label %.noexc.i.i42.i.i.i unwind label %bb.cc, !noalias !22735

.noexc.i.i42.i.i.i:                               ; preds = %bb.cd
  %i.iw = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 96 ; 2 uses
  %i.ix = load i64, ptr %i.iw, align 8, !range !61, !alias.scope !22738, !noalias !22739, !noundef !38 ; 3 uses
  switch i64 %i.ix, label %bb.cf [
    i64 -3, label %bb.cl
    i64 -2, label %bb.cl
    i64 -1, label %bb.ce
  ]

bb.ce:                                            ; preds = %.noexc.i.i42.i.i.i
  %i.iy = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 104
  %i.iz = load i64, ptr %i.iy, align 8, !alias.scope !22738, !noalias !22739, !noundef !38
  %i.ja = insertelement <2 x i64> <i64 poison, i64 undef>, i64 %i.iz, i64 0
  br label %bb.cl

bb.cf:                                            ; preds = %.noexc.i.i42.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !22737
  invoke void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.af, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.iw)
          to label %bb.ch unwind label %bb.cg, !noalias !22740

bb.cg:                                            ; preds = %bb.cf
  %i.jb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant8ShardKeyEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ag) #31
          to label %.body.i.i40.i.i.i unwind label %bb.ci, !noalias !22740

bb.ch:                                            ; preds = %bb.cf
  %.sroa.06.0.copyload.i.i.i69.i.i.i = load i64, ptr %i.af, align 8, !noalias !22737
  %i.jc = load <2 x i64>, ptr %.sroa.57.0..sroa_idx.i.i.i70.i.i.i, align 8, !noalias !22737
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !22737
  br label %bb.cl

bb.ci:                                            ; preds = %bb.cg
  %i.jd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28, !noalias !22740
  unreachable

bb.cj:                                            ; preds = %bb.cb
  store i64 -1, ptr %i.ai, align 8, !noalias !22732
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cl, %bb.cj
  %i.je = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 120 ; 2 uses
  %i.jf = load i64, ptr %i.je, align 8, !range !42, !alias.scope !22733, !noalias !22734, !noundef !38
  %.not10.i.i49.i.i.i = icmp eq i64 %i.jf, -1
  br i1 %.not10.i.i49.i.i.i, label %_RNvXspU_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18UpdatePointVectorsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i, label %bb.cm

bb.cl:                                            ; preds = %.noexc.i.i42.i.i.i, %bb.ch, %bb.ce, %.noexc.i.i42.i.i.i
  %.sroa.0.0.i.i.i45.i.i.i = phi i64 [ %i.ix, %.noexc.i.i42.i.i.i ], [ %.sroa.06.0.copyload.i.i.i69.i.i.i, %bb.ch ], [ -1, %bb.ce ], [ %i.ix, %.noexc.i.i42.i.i.i ]
  %i.jg = phi <2 x i64> [ undef, %.noexc.i.i42.i.i.i ], [ %i.jc, %bb.ch ], [ %i.ja, %bb.ce ], [ undef, %.noexc.i.i42.i.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.ag, i64 24, i1 false), !noalias !22732
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !22737
  store i64 %.sroa.0.0.i.i.i45.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i46.i.i.i, align 8, !noalias !22732
  store <2 x i64> %i.jg, ptr %.sroa.5.0..sroa_idx.i.i47.i.i.i, align 8, !noalias !22732
  br label %bb.ck

bb.cm:                                            ; preds = %bb.ck
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !22732
  invoke fastcc void @_RNvXs1i_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_6FilterNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(104) %i.ah, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.je)
          to label %bb.co unwind label %bb.cn, !noalias !22735

bb.cn:                                            ; preds = %bb.cm
  %i.jh = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant16ShardKeySelectorEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(48) %i.ai) #31
          to label %.body.i.i40.i.i.i unwind label %bb.cp, !noalias !22735

bb.co:                                            ; preds = %bb.cm
  %.sroa.02.0.copyload.i.i50.i.i.i = load i64, ptr %i.ah, align 8, !noalias !22732
  %.sroa.54.i.i32.i.sroa.0.0.copyload.i.i = load i32, ptr %.sroa.54.0..sroa_idx.i.i51.i.i.i, align 8, !noalias !22694
  %.sroa.54.i.i32.i.sroa.4.0.copyload.i.i = load i32, ptr %.sroa.54.i.i32.i.sroa.4.0..sroa.54.0..sroa_idx.i.i51.i.sroa_idx.i.i, align 4, !noalias !22694
  %.sroa.54.i.i32.i.sroa.5.0.copyload.i.i = load i32, ptr %.sroa.54.i.i32.i.sroa.5.0..sroa.54.0..sroa_idx.i.i51.i.sroa_idx.i.i, align 8, !noalias !22694
  %i.ji = load <4 x i8>, ptr %.sroa.54.i.i32.i.sroa.6.0..sroa.54.0..sroa_idx.i.i51.i.sroa_idx.i.i, align 4, !noalias !22694
  %.sroa.54.i.i32.i.sroa.10.0.copyload.i.i = load i32, ptr %.sroa.54.i.i32.i.sroa.10.0..sroa.54.0..sroa_idx.i.i51.i.sroa_idx.i.i, align 8, !noalias !22694
  %.sroa.54.i.i32.i.sroa.11.0.copyload.i.i = load i32, ptr %.sroa.54.i.i32.i.sroa.11.0..sroa.54.0..sroa_idx.i.i51.i.sroa_idx.i.i, align 4, !noalias !22694
  %.sroa.54.i.i32.i.sroa.12.0.copyload.i.i = load i8, ptr %.sroa.54.i.i32.i.sroa.12.0..sroa.54.0..sroa_idx.i.i51.i.sroa_idx.i.i, align 8, !noalias !22694
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.05.i303.i.sroa.11.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.54.i.i32.i.sroa.13.0..sroa.54.0..sroa_idx.i.i51.i.sroa_idx.i.i, i64 7, i1 false), !noalias !22695
  %.sroa.54.i.i32.i.sroa.14.0.copyload.i.i = load i32, ptr %.sroa.54.i.i32.i.sroa.14.0..sroa.54.0..sroa_idx.i.i51.i.sroa_idx.i.i, align 8, !noalias !22694
  %.sroa.54.i.i32.i.sroa.15.0.copyload.i.i = load i32, ptr %.sroa.54.i.i32.i.sroa.15.0..sroa.54.0..sroa_idx.i.i51.i.sroa_idx.i.i, align 4, !noalias !22694
  %i.jj = load <2 x i32>, ptr %.sroa.54.i.i32.i.sroa.16.0..sroa.54.0..sroa_idx.i.i51.i.sroa_idx.i.i, align 8, !noalias !22694
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.sroa.20.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.54.i.i32.i.sroa.18.0..sroa.54.0..sroa_idx.i.i51.i.sroa_idx.i.i, i64 24, i1 false), !noalias !22695
  %.sroa.54.i.i32.i.sroa.19.0.copyload.i.i = load i32, ptr %.sroa.54.i.i32.i.sroa.19.0..sroa.54.0..sroa_idx.i.i51.i.sroa_idx.i.i, align 8, !noalias !22694
  %.sroa.54.i.i32.i.sroa.20.0.copyload.i.i = load i32, ptr %.sroa.54.i.i32.i.sroa.20.0..sroa.54.0..sroa_idx.i.i51.i.sroa_idx.i.i, align 4, !noalias !22694
  %.sroa.54.i.i32.i.sroa.21.0.copyload.i.i = load i32, ptr %.sroa.54.i.i32.i.sroa.21.0..sroa.54.0..sroa_idx.i.i51.i.sroa_idx.i.i, align 8, !noalias !22694
  %.sroa.54.i.i32.i.sroa.22.0.copyload.i.i = load i32, ptr %.sroa.54.i.i32.i.sroa.22.0..sroa.54.0..sroa_idx.i.i51.i.sroa_idx.i.i, align 4, !noalias !22694
  %.sroa.54.i.i32.i.sroa.23.0.copyload.i.i = load i32, ptr %.sroa.54.i.i32.i.sroa.23.0..sroa.54.0..sroa_idx.i.i51.i.sroa_idx.i.i, align 8, !noalias !22694
  %.sroa.54.i.i32.i.sroa.24.0.copyload.i.i = load i32, ptr %.sroa.54.i.i32.i.sroa.24.0..sroa.54.0..sroa_idx.i.i51.i.sroa_idx.i.i, align 4, !noalias !22694
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !22732
  br label %_RNvXspU_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18UpdatePointVectorsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i

bb.cp:                                            ; preds = %bb.cn, %.body.i.i40.i.i.i, %bb.bz
  %i.jk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28, !noalias !22735
  unreachable

_RNvXspU_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18UpdatePointVectorsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i: ; preds = %bb.co, %bb.ck
  %.sroa.54.i.i32.i.sroa.24.0.i.i = phi i32 [ undef, %bb.ck ], [ %.sroa.54.i.i32.i.sroa.24.0.copyload.i.i, %bb.co ]
  %.sroa.54.i.i32.i.sroa.23.0.i.i = phi i32 [ undef, %bb.ck ], [ %.sroa.54.i.i32.i.sroa.23.0.copyload.i.i, %bb.co ]
  %.sroa.54.i.i32.i.sroa.22.0.i.i = phi i32 [ undef, %bb.ck ], [ %.sroa.54.i.i32.i.sroa.22.0.copyload.i.i, %bb.co ]
  %.sroa.54.i.i32.i.sroa.21.0.i.i = phi i32 [ undef, %bb.ck ], [ %.sroa.54.i.i32.i.sroa.21.0.copyload.i.i, %bb.co ]
  %.sroa.54.i.i32.i.sroa.20.0.i.i = phi i32 [ undef, %bb.ck ], [ %.sroa.54.i.i32.i.sroa.20.0.copyload.i.i, %bb.co ]
  %.sroa.54.i.i32.i.sroa.19.0.i.i = phi i32 [ undef, %bb.ck ], [ %.sroa.54.i.i32.i.sroa.19.0.copyload.i.i, %bb.co ]
  %.sroa.54.i.i32.i.sroa.15.0.i.i = phi i32 [ undef, %bb.ck ], [ %.sroa.54.i.i32.i.sroa.15.0.copyload.i.i, %bb.co ]
  %.sroa.54.i.i32.i.sroa.14.0.i.i = phi i32 [ undef, %bb.ck ], [ %.sroa.54.i.i32.i.sroa.14.0.copyload.i.i, %bb.co ]
  %.sroa.54.i.i32.i.sroa.12.0.i.i = phi i8 [ undef, %bb.ck ], [ %.sroa.54.i.i32.i.sroa.12.0.copyload.i.i, %bb.co ]
  %.sroa.54.i.i32.i.sroa.11.0.i.i = phi i32 [ undef, %bb.ck ], [ %.sroa.54.i.i32.i.sroa.11.0.copyload.i.i, %bb.co ]
  %.sroa.54.i.i32.i.sroa.10.0.i.i = phi i32 [ undef, %bb.ck ], [ %.sroa.54.i.i32.i.sroa.10.0.copyload.i.i, %bb.co ]
  %.sroa.54.i.i32.i.sroa.5.0.i.i = phi i32 [ undef, %bb.ck ], [ %.sroa.54.i.i32.i.sroa.5.0.copyload.i.i, %bb.co ]
  %.sroa.54.i.i32.i.sroa.4.0.i.i = phi i32 [ undef, %bb.ck ], [ %.sroa.54.i.i32.i.sroa.4.0.copyload.i.i, %bb.co ]
  %.sroa.54.i.i32.i.sroa.0.0.i.i = phi i32 [ undef, %bb.ck ], [ %.sroa.54.i.i32.i.sroa.0.0.copyload.i.i, %bb.co ]
  %.sroa.02.0.i.i52.i.i.i = phi i64 [ -1, %bb.ck ], [ %.sroa.02.0.copyload.i.i50.i.i.i, %bb.co ]
  %i.jl = phi <4 x i8> [ undef, %bb.ck ], [ %i.ji, %bb.co ]
  %i.jm = phi <2 x i32> [ undef, %bb.ck ], [ %i.jj, %bb.co ]
  %i.jn = trunc nuw i32 %i.ir to i1
  %.sroa.5.0.i.i53.i.i.i = select i1 %i.jn, i32 %.val.i.i38.i.i.i, i32 undef
  %i.jo = trunc nuw i64 %i.ik to i1
  %i.jp = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 16
  %i.jq = load i64, ptr %i.jp, align 8, !alias.scope !22733, !noalias !22734
  %.sroa.57.0.i.i54.i.i.i = select i1 %i.jo, i64 %i.jq, i64 undef
  %i.jr = load <2 x i64>, ptr %i.ak, align 16, !noalias !22694
  %.sroa.617.i.i.sroa.5.0.copyload.i.i = load i64, ptr %.sroa.617.i.i.sroa.5.0..sroa_idx.i.i, align 16, !noalias !22694
  %.sroa.718.i.i.sroa.0.0.copyload.i.i = load i64, ptr %i.aj, align 8, !noalias !22694
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.54.sroa.0.i.i187.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.718.i.i.sroa.4.0..sroa_idx.i.i, i64 16, i1 false), !noalias !22695
  %.sroa.8.i.i.sroa.0.0.copyload.i.i = load i64, ptr %i.ai, align 8, !noalias !22694
  %.sroa.8.i.i.sroa.4.0.copyload.i.i = load i64, ptr %.sroa.8.i.i.sroa.4.0..sroa_idx.i.i, align 8, !noalias !22694
  %.sroa.8.i.i.sroa.5.0.copyload.i.i = load i64, ptr %.sroa.8.i.i.sroa.5.0..sroa_idx.i.i, align 8, !noalias !22694
  %.sroa.8.i.i.sroa.6.0.copyload.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i46.i.i.i, align 8, !noalias !22694
  %.sroa.8.i.i.sroa.7.0.copyload.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i47.i.i.i, align 8, !noalias !22694
  %.sroa.8.i.i.sroa.8.0.copyload.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i48.i.i.i, align 8, !noalias !22694
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !22732
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !22732
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !22732
  br label %bb.cq

bb.cq:                                            ; preds = %_RNvXspU_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18UpdatePointVectorsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i, %bb.bx
  %.sroa.54.i.i32.i.sroa.24.1.i.i = phi i32 [ undef, %bb.bx ], [ %.sroa.54.i.i32.i.sroa.24.0.i.i, %_RNvXspU_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18UpdatePointVectorsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ]
  %.sroa.54.i.i32.i.sroa.23.1.i.i = phi i32 [ undef, %bb.bx ], [ %.sroa.54.i.i32.i.sroa.23.0.i.i, %_RNvXspU_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18UpdatePointVectorsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ] ; 2 uses
  %.sroa.54.i.i32.i.sroa.22.1.i.i = phi i32 [ undef, %bb.bx ], [ %.sroa.54.i.i32.i.sroa.22.0.i.i, %_RNvXspU_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18UpdatePointVectorsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ]
  %.sroa.54.i.i32.i.sroa.21.1.i.i = phi i32 [ undef, %bb.bx ], [ %.sroa.54.i.i32.i.sroa.21.0.i.i, %_RNvXspU_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18UpdatePointVectorsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ] ; 2 uses
  %.sroa.54.i.i32.i.sroa.20.1.i.i = phi i32 [ undef, %bb.bx ], [ %.sroa.54.i.i32.i.sroa.20.0.i.i, %_RNvXspU_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18UpdatePointVectorsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ] ; 2 uses
  %.sroa.54.i.i32.i.sroa.19.1.i.i = phi i32 [ undef, %bb.bx ], [ %.sroa.54.i.i32.i.sroa.19.0.i.i, %_RNvXspU_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18UpdatePointVectorsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ]
  %.sroa.54.i.i32.i.sroa.15.1.i.i = phi i32 [ undef, %bb.bx ], [ %.sroa.54.i.i32.i.sroa.15.0.i.i, %_RNvXspU_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18UpdatePointVectorsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ] ; 2 uses
  %.sroa.54.i.i32.i.sroa.14.1.i.i = phi i32 [ undef, %bb.bx ], [ %.sroa.54.i.i32.i.sroa.14.0.i.i, %_RNvXspU_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18UpdatePointVectorsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ]
  %.sroa.54.i.i32.i.sroa.12.1.i.i = phi i8 [ undef, %bb.bx ], [ %.sroa.54.i.i32.i.sroa.12.0.i.i, %_RNvXspU_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18UpdatePointVectorsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ]
  %.sroa.54.i.i32.i.sroa.11.1.i.i = phi i32 [ undef, %bb.bx ], [ %.sroa.54.i.i32.i.sroa.11.0.i.i, %_RNvXspU_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18UpdatePointVectorsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ]
  %.sroa.54.i.i32.i.sroa.10.1.i.i = phi i32 [ undef, %bb.bx ], [ %.sroa.54.i.i32.i.sroa.10.0.i.i, %_RNvXspU_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18UpdatePointVectorsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ] ; 2 uses
  %.sroa.54.i.i32.i.sroa.5.1.i.i = phi i32 [ undef, %bb.bx ], [ %.sroa.54.i.i32.i.sroa.5.0.i.i, %_RNvXspU_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18UpdatePointVectorsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ]
  %.sroa.54.i.i32.i.sroa.4.1.i.i = phi i32 [ undef, %bb.bx ], [ %.sroa.54.i.i32.i.sroa.4.0.i.i, %_RNvXspU_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18UpdatePointVectorsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ] ; 2 uses
  %.sroa.54.i.i32.i.sroa.0.1.i.i = phi i32 [ undef, %bb.bx ], [ %.sroa.54.i.i32.i.sroa.0.0.i.i, %_RNvXspU_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18UpdatePointVectorsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ]
  %.sroa.617.i.i.sroa.5.0.i.i = phi i64 [ undef, %bb.bx ], [ %.sroa.617.i.i.sroa.5.0.copyload.i.i, %_RNvXspU_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18UpdatePointVectorsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ]
  %.sroa.718.i.i.sroa.0.0.i.i = phi i64 [ undef, %bb.bx ], [ %.sroa.718.i.i.sroa.0.0.copyload.i.i, %_RNvXspU_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18UpdatePointVectorsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ]
  %.sroa.8.i.i.sroa.8.0.i.i = phi i64 [ undef, %bb.bx ], [ %.sroa.8.i.i.sroa.8.0.copyload.i.i, %_RNvXspU_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18UpdatePointVectorsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ] ; 2 uses
  %.sroa.8.i.i.sroa.7.0.i.i = phi i64 [ undef, %bb.bx ], [ %.sroa.8.i.i.sroa.7.0.copyload.i.i, %_RNvXspU_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18UpdatePointVectorsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ]
  %.sroa.8.i.i.sroa.6.0.i.i = phi i64 [ undef, %bb.bx ], [ %.sroa.8.i.i.sroa.6.0.copyload.i.i, %_RNvXspU_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18UpdatePointVectorsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ] ; 2 uses
  %.sroa.8.i.i.sroa.5.0.i.i = phi i64 [ undef, %bb.bx ], [ %.sroa.8.i.i.sroa.5.0.copyload.i.i, %_RNvXspU_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18UpdatePointVectorsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ] ; 2 uses
  %.sroa.8.i.i.sroa.4.0.i.i = phi i64 [ undef, %bb.bx ], [ %.sroa.8.i.i.sroa.4.0.copyload.i.i, %_RNvXspU_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18UpdatePointVectorsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ] ; 3 uses
  %.sroa.8.i.i.sroa.0.0.i.i = phi i64 [ undef, %bb.bx ], [ %.sroa.8.i.i.sroa.0.0.copyload.i.i, %_RNvXspU_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18UpdatePointVectorsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ] ; 2 uses
  %.sroa.13.0.i55.i.i.i = phi i8 [ undef, %bb.bx ], [ %i.in, %_RNvXspU_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18UpdatePointVectorsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ]
  %.sroa.12.0.i.i.i.i = phi i32 [ undef, %bb.bx ], [ %.sroa.5.0.i.i53.i.i.i, %_RNvXspU_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18UpdatePointVectorsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ]
  %.sroa.11.0.i.i.i.i = phi i32 [ undef, %bb.bx ], [ %i.ir, %_RNvXspU_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18UpdatePointVectorsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ]
  %.sroa.920.0.i.i.i.i = phi i64 [ undef, %bb.bx ], [ %.sroa.02.0.i.i52.i.i.i, %_RNvXspU_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18UpdatePointVectorsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ] ; 2 uses
  %.sroa.516.0.i56.i.i.i = phi i64 [ undef, %bb.bx ], [ %.sroa.57.0.i.i54.i.i.i, %_RNvXspU_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18UpdatePointVectorsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ]
  %i.js = phi <4 x i8> [ undef, %bb.bx ], [ %i.jl, %_RNvXspU_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18UpdatePointVectorsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ]
  %i.jt = phi <2 x i32> [ undef, %bb.bx ], [ %i.jm, %_RNvXspU_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18UpdatePointVectorsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ]
  %i.ju = phi <2 x i64> [ undef, %bb.bx ], [ %i.jr, %_RNvXspU_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18UpdatePointVectorsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ]
  %i.jv = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 240
  %i.jw = load i32, ptr %i.jv, align 8, !range !98, !alias.scope !22729, !noalias !22730, !noundef !38 ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 244
  %i.jy = load i32, ptr %i.jx, align 4, !alias.scope !22729, !noalias !22730
  %i.jz = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 284
  %i.ka = load i8, ptr %i.jz, align 4, !range !72, !alias.scope !22729, !noalias !22730, !noundef !38 ; 2 uses
  %.not10.i57.i.i.i = icmp eq i8 %i.ka, 2
  br i1 %.not10.i57.i.i.i, label %_RNvXsGQ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_21UpdateVectorsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.kb = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 256
  %.sroa.01.i33.i.sroa.0.0.copyload.i.i = load i32, ptr %i.kb, align 8, !alias.scope !22683, !noalias !22696
  %.sroa.01.i33.i.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 260
  %.sroa.01.i33.i.sroa.4.0.copyload.i.i = load i8, ptr %.sroa.01.i33.i.sroa.4.0..sroa_idx.i.i, align 4, !alias.scope !22683, !noalias !22696
  %.sroa.01.i33.i.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 261
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.05.i247.i.sroa.9.i.i, ptr noundef nonnull readonly align 1 dereferenceable(3) %.sroa.01.i33.i.sroa.5.0..sroa_idx.i.i, i64 3, i1 false), !noalias !22684
  %.sroa.01.i33.i.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 264
  %.sroa.01.i33.i.sroa.6.0.copyload.i.i = load i32, ptr %.sroa.01.i33.i.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !22683, !noalias !22696
  %.sroa.01.i33.i.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 268
  %.sroa.01.i33.i.sroa.7.0.copyload.i.i = load i8, ptr %.sroa.01.i33.i.sroa.7.0..sroa_idx.i.i, align 4, !alias.scope !22683, !noalias !22696
  %.sroa.01.i33.i.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 269
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.58.i248.i.i.i, ptr noundef nonnull readonly align 1 dereferenceable(3) %.sroa.01.i33.i.sroa.8.0..sroa_idx.i.i, i64 3, i1 false), !noalias !22684
  %.sroa.01.i33.i.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 272
  %i.kc = load <2 x i32>, ptr %.sroa.01.i33.i.sroa.9.0..sroa_idx.i.i, align 8, !alias.scope !22683, !noalias !22696
  %.sroa.01.i33.i.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 280
  %.sroa.01.i33.i.sroa.11.0.copyload.i.i = load i32, ptr %.sroa.01.i33.i.sroa.11.0..sroa_idx.i.i, align 8, !alias.scope !22683, !noalias !22696
  %.sroa.515.0..sroa_idx.i58.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 285
  %.sroa.54.i34.i.sroa.0.0.copyload.i.i = load i24, ptr %.sroa.515.0..sroa_idx.i58.i.i.i, align 1, !alias.scope !22683, !noalias !22696
  br label %_RNvXsGQ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_21UpdateVectorsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i

_RNvXsGQ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_21UpdateVectorsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i: ; preds = %bb.cr, %bb.cq
  %.sroa.01.i33.i.sroa.11.0.i.i = phi i32 [ undef, %bb.cq ], [ %.sroa.01.i33.i.sroa.11.0.copyload.i.i, %bb.cr ]
  %.sroa.01.i33.i.sroa.7.0.i.i = phi i8 [ undef, %bb.cq ], [ %.sroa.01.i33.i.sroa.7.0.copyload.i.i, %bb.cr ]
  %.sroa.01.i33.i.sroa.6.0.i.i = phi i32 [ undef, %bb.cq ], [ %.sroa.01.i33.i.sroa.6.0.copyload.i.i, %bb.cr ]
  %.sroa.01.i33.i.sroa.4.0.i.i = phi i8 [ undef, %bb.cq ], [ %.sroa.01.i33.i.sroa.4.0.copyload.i.i, %bb.cr ]
  %.sroa.01.i33.i.sroa.0.0.i.i = phi i32 [ undef, %bb.cq ], [ %.sroa.01.i33.i.sroa.0.0.copyload.i.i, %bb.cr ]
  %.sroa.54.i34.i.sroa.0.0.i.i = phi i24 [ undef, %bb.cq ], [ %.sroa.54.i34.i.sroa.0.0.copyload.i.i, %bb.cr ]
  %i.kd = phi <2 x i32> [ undef, %bb.cq ], [ %i.kc, %bb.cr ]
  %i.ke = trunc nuw i32 %i.jw to i1
  %.sroa.5.0.i59.i.i.i = select i1 %i.ke, i32 %i.jy, i32 undef
  %i.kf = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 248
  %i.kg = load i32, ptr %i.kf, align 8, !range !98, !alias.scope !22729, !noalias !22730, !noundef !38 ; 2 uses
  %i.kh = trunc nuw i32 %i.kg to i1
  %i.ki = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 252
  %i.kj = load i32, ptr %i.ki, align 4, !alias.scope !22729, !noalias !22730
  %.sroa.57.0.i60.i.i.i = select i1 %i.kh, i32 %i.kj, i32 undef
  %.sroa.65.sroa.0.0.extract.trunc685.i.i = trunc i64 %.sroa.8.i.i.sroa.0.0.i.i to i32
  %.sroa.65.sroa.16.0.extract.shift701.i.i = lshr i64 %.sroa.8.i.i.sroa.0.0.i.i, 32
  %.sroa.65.sroa.16.0.extract.trunc702.i.i = trunc nuw i64 %.sroa.65.sroa.16.0.extract.shift701.i.i to i32
  %.sroa.77.sroa.0.sroa.0.0.extract.trunc652.i.i = trunc i64 %.sroa.8.i.i.sroa.4.0.i.i to i8
  %5 = lshr i64 %.sroa.8.i.i.sroa.4.0.i.i, 8
  %.sroa.77.sroa.0.sroa.16.0.extract.trunc667.i.i = trunc i64 %5 to i32
  %.sroa.77.sroa.16.0.extract.shift636.i.i = lshr i64 %.sroa.8.i.i.sroa.4.0.i.i, 32
  %.sroa.85.sroa.0.0.extract.trunc594.i.i = trunc i64 %.sroa.8.i.i.sroa.5.0.i.i to i32
  %.sroa.85.sroa.16.0.extract.shift607.i.i = lshr i64 %.sroa.8.i.i.sroa.5.0.i.i, 32
  %.sroa.85.sroa.16.0.extract.trunc608.i.i = trunc nuw i64 %.sroa.85.sroa.16.0.extract.shift607.i.i to i32
  %.sroa.91.sroa.0.0.extract.trunc564.i.i = trunc i64 %.sroa.8.i.i.sroa.6.0.i.i to i32
  %.sroa.91.sroa.16.0.extract.shift577.i.i = lshr i64 %.sroa.8.i.i.sroa.6.0.i.i, 32
  %.sroa.91.sroa.16.0.extract.trunc578.i.i = trunc nuw i64 %.sroa.91.sroa.16.0.extract.shift577.i.i to i32
  %.sroa.105.sroa.0.0.extract.trunc530.i.i = trunc i64 %.sroa.8.i.i.sroa.8.0.i.i to i8
  %.sroa.105.sroa.16.0.extract.shift543.i.i = and i64 %.sroa.8.i.i.sroa.8.0.i.i, -256
  %.sroa.109.sroa.0.0.extract.trunc502.i.i = trunc i64 %.sroa.920.0.i.i.i.i to i32
  %.sroa.109.sroa.16.0.extract.shift520.i.i = lshr i64 %.sroa.920.0.i.i.i.i, 32
  %.sroa.118.sroa.0.0.extract.trunc471.i.i = trunc i32 %.sroa.54.i.i32.i.sroa.4.1.i.i to i8
  %.sroa.118.sroa.16.0.extract.shift488.i.i = lshr i32 %.sroa.54.i.i32.i.sroa.4.1.i.i, 8
  %.sroa.118.sroa.16.0.extract.trunc489.i.i = trunc nuw i32 %.sroa.118.sroa.16.0.extract.shift488.i.i to i24
  %.sroa.130.sroa.0.0.extract.trunc443.i.i = trunc i32 %.sroa.54.i.i32.i.sroa.10.1.i.i to i8
  %.sroa.130.sroa.14.0.extract.shift458.i.i = and i32 %.sroa.54.i.i32.i.sroa.10.1.i.i, -256
  %.sroa.136.sroa.0.0.extract.trunc416.i.i = trunc i32 %.sroa.54.i.i32.i.sroa.15.1.i.i to i8
  %.sroa.136.sroa.14.0.extract.shift431.i.i = lshr i32 %.sroa.54.i.i32.i.sroa.15.1.i.i, 8
  %.sroa.146.sroa.0.0.extract.trunc390.i.i = trunc i32 %.sroa.54.i.i32.i.sroa.20.1.i.i to i8
  %.sroa.146.sroa.13.0.extract.shift402.i.i = lshr i32 %.sroa.54.i.i32.i.sroa.20.1.i.i, 8
  %.sroa.151.sroa.0.0.extract.trunc372.i.i = trunc i32 %.sroa.54.i.i32.i.sroa.21.1.i.i to i8
  %.sroa.151.sroa.12.0.extract.shift382.i.i = and i32 %.sroa.54.i.i32.i.sroa.21.1.i.i, -256
  %.sroa.155.sroa.0.0.extract.trunc351.i.i = trunc i32 %.sroa.54.i.i32.i.sroa.23.1.i.i to i8
  %.sroa.155.sroa.12.0.extract.shift362.i.i = and i32 %.sroa.54.i.i32.i.sroa.23.1.i.i, -256
  br label %_RNvXNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant16update_operationNtB2_6UpdateNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i

bb.cs:                                            ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22741)
  %i.kk = load i64, ptr %i.cj, align 8, !range !49, !alias.scope !22742, !noalias !22743, !noundef !38 ; 3 uses
  %.not.i78.i.i.i = icmp eq i64 %i.kk, 2
  br i1 %.not.i78.i.i.i, label %bb.dp, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22744)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !22745
  %i.kl = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 24
  invoke void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ae, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.kl)
          to label %.noexc15.i unwind label %.loopexit.i, !noalias !22681

.noexc15.i:                                       ; preds = %bb.ct
  %i.km = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 232
  %i.kn = load i8, ptr %i.km, align 8, !range !72, !alias.scope !22746, !noalias !22747, !noundef !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !22745
  %i.ko = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 120 ; 2 uses
  %i.kp = load i64, ptr %i.ko, align 8, !range !61, !alias.scope !22746, !noalias !22747, !noundef !38 ; 3 uses
  %.not9.i.i79.i.i.i = icmp eq i64 %i.kp, -3
  br i1 %.not9.i.i79.i.i.i, label %bb.cx, label %bb.cu

bb.cu:                                            ; preds = %.noexc15.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !22745
  switch i64 %i.kp, label %bb.cv [
    i64 -2, label %bb.da
    i64 -1, label %bb.cw
  ]

bb.cv:                                            ; preds = %bb.cu
  invoke fastcc void @_RNvXs1i_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_6FilterNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(104) %i.aa, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.ko) #34
          to label %.noexc.i.i122.i.i.i unwind label %bb.cz, !noalias !22748

.noexc.i.i122.i.i.i:                              ; preds = %bb.cv
  %.sroa.0.0.copyload.pre.i.i.i123.i.i.i = load i64, ptr %i.aa, align 8, !noalias !22749
  br label %bb.da

bb.cw:                                            ; preds = %bb.cu
  %i.kq = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 128
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant7PointIdENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.cc, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.kq)
          to label %bb.da unwind label %bb.cz, !noalias !22748

bb.cx:                                            ; preds = %bb.da, %.noexc15.i
  %.sroa.13.i.i.sroa.0.0.copyload.i.i = phi i64 [ %.sroa.0.0.i.i.i82.i.i.i, %bb.da ], [ -3, %.noexc15.i ] ; 2 uses
  store i64 %.sroa.13.i.i.sroa.0.0.copyload.i.i, ptr %i.ad, align 8, !noalias !22745
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !22745
  %i.kr = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 48 ; 2 uses
  %i.ks = load i64, ptr %i.kr, align 8, !range !42, !alias.scope !22746, !noalias !22747, !noundef !38
  %.not10.i.i85.i.i.i = icmp eq i64 %i.ks, -1
  br i1 %.not10.i.i85.i.i.i, label %bb.dc, label %bb.db

bb.cy:                                            ; preds = %bb.de, %bb.cz
  %.pn.pn.i.i80.i.i.i = phi { ptr, i32 } [ %.pn.i.i86.i.i.i, %bb.de ], [ %i.kt, %bb.cz ]
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %bb.hi unwind label %bb.do, !noalias !22748

bb.cz:                                            ; preds = %bb.cw, %bb.cv
  %i.kt = landingpad { ptr, i32 }
          cleanup
  br label %bb.cy

bb.da:                                            ; preds = %bb.cw, %.noexc.i.i122.i.i.i, %bb.cu
  %.sroa.0.0.i.i.i82.i.i.i = phi i64 [ %i.kp, %bb.cu ], [ %.sroa.0.0.copyload.pre.i.i.i123.i.i.i, %.noexc.i.i122.i.i.i ], [ -1, %bb.cw ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.4.0..sroa_idx.i.i83.i.i.i, ptr noundef nonnull align 8 dereferenceable(96) %i.cc, i64 96, i1 false), !noalias !22745
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !22745
  br label %bb.cx

bb.db:                                            ; preds = %bb.cx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !22745
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ab, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.kr)
          to label %_RNvXssH_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_15VectorsSelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i unwind label %bb.df, !noalias !22748

bb.dc:                                            ; preds = %bb.cx
  store i64 -1, ptr %i.ac, align 8, !noalias !22745
  br label %bb.dd

bb.dd:                                            ; preds = %_RNvXssH_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_15VectorsSelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i, %bb.dc
  %i.ku = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 224
  %i.kv = load i32, ptr %i.ku, align 8, !range !98, !alias.scope !22746, !noalias !22747, !noundef !38 ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 228
  %.val.i.i87.i.i.i = load i32, ptr %i.kw, align 4, !alias.scope !22746, !noalias !22747
  %i.kx = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 72 ; 2 uses
  %i.ky = load i64, ptr %i.kx, align 8, !range !42, !alias.scope !22746, !noalias !22747, !noundef !38
  %.not11.i.i88.i.i.i = icmp eq i64 %i.ky, -1
  br i1 %.not11.i.i88.i.i.i, label %_RNvXsqb_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18DeletePointVectorsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i, label %bb.dh

bb.de:                                            ; preds = %.body.i.i89.i.i.i, %bb.df
  %.pn.i.i86.i.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i90.i.i.i, %.body.i.i89.i.i.i ], [ %i.kz, %bb.df ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant14PointsSelectorEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(104) %i.ad) #31
          to label %bb.cy unwind label %bb.do, !noalias !22748

bb.df:                                            ; preds = %bb.db
  %i.kz = landingpad { ptr, i32 }
          cleanup
  br label %bb.de

_RNvXssH_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_15VectorsSelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i: ; preds = %bb.db
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 24, i1 false), !noalias !22745
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !22745
  br label %bb.dd

bb.dg:                                            ; preds = %bb.dh
  %i.la = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i89.i.i.i

.body.i.i89.i.i.i:                                ; preds = %bb.dk, %bb.dg
  %eh.lpad-body.i.i90.i.i.i = phi { ptr, i32 } [ %i.la, %bb.dg ], [ %i.lf, %bb.dk ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant15VectorsSelectorEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ac) #31
          to label %bb.de unwind label %bb.do, !noalias !22748

bb.dh:                                            ; preds = %bb.dd
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22750)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !22751
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant8ShardKeyENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.z, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.kx)
          to label %.noexc18.i.i.i.i.i unwind label %bb.dg, !noalias !22748

.noexc18.i.i.i.i.i:                               ; preds = %bb.dh
  %i.lb = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 96 ; 2 uses
  %i.lc = load i64, ptr %i.lb, align 8, !range !61, !alias.scope !22752, !noalias !22753, !noundef !38 ; 3 uses
  switch i64 %i.lc, label %bb.dj [
    i64 -3, label %bb.dn
    i64 -2, label %bb.dn
    i64 -1, label %bb.di
  ]

bb.di:                                            ; preds = %.noexc18.i.i.i.i.i
  %i.ld = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 104
  %i.le = load i64, ptr %i.ld, align 8, !alias.scope !22752, !noalias !22753, !noundef !38
  br label %bb.dn

bb.dj:                                            ; preds = %.noexc18.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !22751
  invoke void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.y, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.lb)
          to label %bb.dl unwind label %bb.dk, !noalias !22754

bb.dk:                                            ; preds = %bb.dj
  %i.lf = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant8ShardKeyEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.z) #31
          to label %.body.i.i89.i.i.i unwind label %bb.dm, !noalias !22754

bb.dl:                                            ; preds = %bb.dj
  %.sroa.06.0.copyload.i.i.i117.i.i.i = load i64, ptr %i.y, align 8, !noalias !22751
  %.sroa.57.0.copyload.i.i.i119.i.i.i = load i64, ptr %.sroa.57.0..sroa_idx.i.i.i118.i.i.i, align 8, !noalias !22751
  %.sroa.7.0.copyload.i.i.i121.i.i.i = load i64, ptr %.sroa.7.0..sroa_idx.i.i.i120.i.i.i, align 8, !noalias !22751
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !22751
  br label %bb.dn

bb.dm:                                            ; preds = %bb.dk
  %i.lg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28, !noalias !22754
  unreachable

bb.dn:                                            ; preds = %.noexc18.i.i.i.i.i, %bb.dl, %bb.di, %.noexc18.i.i.i.i.i
  %.sroa.5.sroa.4.0.i.i.i91.i.i.i = phi i64 [ undef, %.noexc18.i.i.i.i.i ], [ %.sroa.7.0.copyload.i.i.i121.i.i.i, %bb.dl ], [ undef, %bb.di ], [ undef, %.noexc18.i.i.i.i.i ]
  %.sroa.5.sroa.0.0.i.i.i92.i.i.i = phi i64 [ undef, %.noexc18.i.i.i.i.i ], [ %.sroa.57.0.copyload.i.i.i119.i.i.i, %bb.dl ], [ %i.le, %bb.di ], [ undef, %.noexc18.i.i.i.i.i ]
  %.sroa.0.0.i17.i.i.i.i.i = phi i64 [ %i.lc, %.noexc18.i.i.i.i.i ], [ %.sroa.06.0.copyload.i.i.i117.i.i.i, %bb.dl ], [ -1, %bb.di ], [ %i.lc, %.noexc18.i.i.i.i.i ]
  %.sroa.019.0.copyload.i.i.i.i.i = load i64, ptr %i.z, align 8, !noalias !22755
  %.sroa.54.sroa.0.i.i74.i.sroa.0.0.copyload.i.i = load i64, ptr %.sroa.420.0..sroa_idx.i.i.i.i.i, align 8, !noalias !22694
  %.sroa.54.sroa.0.i.i74.i.sroa.4.0.copyload.i.i = load i64, ptr %.sroa.54.sroa.0.i.i74.i.sroa.4.0..sroa.420.0..sroa_idx.i.i.i.sroa_idx.i.i, align 8, !noalias !22694
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !22751
  br label %_RNvXsqb_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18DeletePointVectorsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i

bb.do:                                            ; preds = %.body.i.i89.i.i.i, %bb.de, %bb.cy
  %i.lh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28, !noalias !22748
  unreachable

_RNvXsqb_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18DeletePointVectorsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i: ; preds = %bb.dn, %bb.dd
  %.sroa.54.sroa.0.i.i74.i.sroa.4.0.i.i = phi i64 [ undef, %bb.dd ], [ %.sroa.54.sroa.0.i.i74.i.sroa.4.0.copyload.i.i, %bb.dn ]
  %.sroa.54.sroa.0.i.i74.i.sroa.0.0.i.i = phi i64 [ undef, %bb.dd ], [ %.sroa.54.sroa.0.i.i74.i.sroa.0.0.copyload.i.i, %bb.dn ]
  %.sroa.54.sroa.6.0.i.i93.i.i.i = phi i64 [ undef, %bb.dd ], [ %.sroa.5.sroa.4.0.i.i.i91.i.i.i, %bb.dn ]
  %.sroa.54.sroa.5.0.i.i94.i.i.i = phi i64 [ undef, %bb.dd ], [ %.sroa.5.sroa.0.0.i.i.i92.i.i.i, %bb.dn ]
  %.sroa.54.sroa.4.0.i.i95.i.i.i = phi i64 [ undef, %bb.dd ], [ %.sroa.0.0.i17.i.i.i.i.i, %bb.dn ]
  %.sroa.02.0.i.i96.i.i.i = phi i64 [ -1, %bb.dd ], [ %.sroa.019.0.copyload.i.i.i.i.i, %bb.dn ]
  %i.li = trunc nuw i32 %i.kv to i1
  %.sroa.5.0.i.i97.i.i.i = select i1 %i.li, i32 %.val.i.i87.i.i.i, i32 undef
  %i.lj = trunc nuw i64 %i.kk to i1
  %i.lk = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 16
  %i.ll = load i64, ptr %i.lk, align 8, !alias.scope !22746, !noalias !22747
  %.sroa.57.0.i.i98.i.i.i = select i1 %i.lj, i64 %i.ll, i64 undef
  %i.lm = load <2 x i64>, ptr %i.ae, align 16, !noalias !22694
  %.sroa.617.i77.i.sroa.5.0.copyload.i.i = load i64, ptr %.sroa.617.i77.i.sroa.5.0..sroa_idx.i.i, align 16, !noalias !22694
  %.sroa.13.i.i.sroa.4.0.copyload.i.i = load i32, ptr %.sroa.4.0..sroa_idx.i.i83.i.i.i, align 8, !noalias !22694
  %.sroa.13.i.i.sroa.5.0.copyload.i.i = load i32, ptr %.sroa.13.i.i.sroa.5.0..sroa_idx.i.i, align 4, !noalias !22694
  %.sroa.13.i.i.sroa.6.0.copyload.i.i = load i32, ptr %.sroa.13.i.i.sroa.6.0..sroa_idx.i.i, align 8, !noalias !22694
  %i.ln = load <4 x i8>, ptr %.sroa.13.i.i.sroa.7.0..sroa_idx.i.i, align 4, !noalias !22694
  %.sroa.13.i.i.sroa.11.0.copyload.i.i = load i32, ptr %.sroa.13.i.i.sroa.11.0..sroa_idx.i.i, align 8, !noalias !22694
  %.sroa.13.i.i.sroa.12.0.copyload.i.i = load i32, ptr %.sroa.13.i.i.sroa.12.0..sroa_idx.i.i, align 4, !noalias !22694
  %.sroa.13.i.i.sroa.13.0.copyload.i.i = load i8, ptr %.sroa.13.i.i.sroa.13.0..sroa_idx.i.i, align 8, !noalias !22694
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.05.i303.i.sroa.11.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.13.i.i.sroa.14.0..sroa_idx.i.i, i64 7, i1 false), !noalias !22695
  %.sroa.13.i.i.sroa.15.0.copyload.i.i = load i32, ptr %.sroa.13.i.i.sroa.15.0..sroa_idx.i.i, align 8, !noalias !22694
  %.sroa.13.i.i.sroa.16.0.copyload.i.i = load i32, ptr %.sroa.13.i.i.sroa.16.0..sroa_idx.i.i, align 4, !noalias !22694
  %i.lo = load <2 x i32>, ptr %.sroa.13.i.i.sroa.17.0..sroa_idx.i.i, align 8, !noalias !22694
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.sroa.20.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.13.i.i.sroa.19.0..sroa_idx.i.i, i64 24, i1 false), !noalias !22695
  %.sroa.13.i.i.sroa.20.0.copyload.i.i = load i32, ptr %.sroa.13.i.i.sroa.20.0..sroa_idx.i.i, align 8, !noalias !22694
  %.sroa.13.i.i.sroa.21.0.copyload.i.i = load i32, ptr %.sroa.13.i.i.sroa.21.0..sroa_idx.i.i, align 4, !noalias !22694
  %.sroa.13.i.i.sroa.22.0.copyload.i.i = load i32, ptr %.sroa.13.i.i.sroa.22.0..sroa_idx.i.i, align 8, !noalias !22694
  %.sroa.13.i.i.sroa.23.0.copyload.i.i = load i32, ptr %.sroa.13.i.i.sroa.23.0..sroa_idx.i.i, align 4, !noalias !22694
  %.sroa.13.i.i.sroa.24.0.copyload.i.i = load i32, ptr %.sroa.13.i.i.sroa.24.0..sroa_idx.i.i, align 8, !noalias !22694
  %.sroa.13.i.i.sroa.25.0.copyload.i.i = load i32, ptr %.sroa.13.i.i.sroa.25.0..sroa_idx.i.i, align 4, !noalias !22694
  %.sroa.7.i.i.sroa.0.0.copyload.i.i = load i64, ptr %i.ac, align 8, !noalias !22694
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.54.sroa.0.i.i187.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.i.i.sroa.4.0..sroa_idx.i.i, i64 16, i1 false), !noalias !22695
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !22745
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !22745
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !22745
  br label %bb.dp

bb.dp:                                            ; preds = %_RNvXsqb_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18DeletePointVectorsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i, %bb.cs
  %.sroa.54.sroa.0.i.i74.i.sroa.4.1.i.i = phi i64 [ undef, %bb.cs ], [ %.sroa.54.sroa.0.i.i74.i.sroa.4.0.i.i, %_RNvXsqb_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18DeletePointVectorsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ] ; 2 uses
  %.sroa.54.sroa.0.i.i74.i.sroa.0.1.i.i = phi i64 [ undef, %bb.cs ], [ %.sroa.54.sroa.0.i.i74.i.sroa.0.0.i.i, %_RNvXsqb_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18DeletePointVectorsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ] ; 3 uses
  %.sroa.617.i77.i.sroa.5.0.i.i = phi i64 [ undef, %bb.cs ], [ %.sroa.617.i77.i.sroa.5.0.copyload.i.i, %_RNvXsqb_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18DeletePointVectorsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ]
  %.sroa.7.i.i.sroa.0.0.i.i = phi i64 [ undef, %bb.cs ], [ %.sroa.7.i.i.sroa.0.0.copyload.i.i, %_RNvXsqb_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18DeletePointVectorsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ]
  %.sroa.13.i.i.sroa.25.0.i.i = phi i32 [ undef, %bb.cs ], [ %.sroa.13.i.i.sroa.25.0.copyload.i.i, %_RNvXsqb_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18DeletePointVectorsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ]
  %.sroa.13.i.i.sroa.24.0.i.i = phi i32 [ undef, %bb.cs ], [ %.sroa.13.i.i.sroa.24.0.copyload.i.i, %_RNvXsqb_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18DeletePointVectorsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ] ; 2 uses
  %.sroa.13.i.i.sroa.23.0.i.i = phi i32 [ undef, %bb.cs ], [ %.sroa.13.i.i.sroa.23.0.copyload.i.i, %_RNvXsqb_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18DeletePointVectorsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ]
  %.sroa.13.i.i.sroa.22.0.i.i = phi i32 [ undef, %bb.cs ], [ %.sroa.13.i.i.sroa.22.0.copyload.i.i, %_RNvXsqb_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18DeletePointVectorsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ] ; 2 uses
  %.sroa.13.i.i.sroa.21.0.i.i = phi i32 [ undef, %bb.cs ], [ %.sroa.13.i.i.sroa.21.0.copyload.i.i, %_RNvXsqb_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18DeletePointVectorsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ] ; 2 uses
  %.sroa.13.i.i.sroa.20.0.i.i = phi i32 [ undef, %bb.cs ], [ %.sroa.13.i.i.sroa.20.0.copyload.i.i, %_RNvXsqb_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18DeletePointVectorsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ]
  %.sroa.13.i.i.sroa.16.0.i.i = phi i32 [ undef, %bb.cs ], [ %.sroa.13.i.i.sroa.16.0.copyload.i.i, %_RNvXsqb_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18DeletePointVectorsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ] ; 2 uses
  %.sroa.13.i.i.sroa.15.0.i.i = phi i32 [ undef, %bb.cs ], [ %.sroa.13.i.i.sroa.15.0.copyload.i.i, %_RNvXsqb_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18DeletePointVectorsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ]
  %.sroa.13.i.i.sroa.13.0.i.i = phi i8 [ undef, %bb.cs ], [ %.sroa.13.i.i.sroa.13.0.copyload.i.i, %_RNvXsqb_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18DeletePointVectorsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ]
  %.sroa.13.i.i.sroa.12.0.i.i = phi i32 [ undef, %bb.cs ], [ %.sroa.13.i.i.sroa.12.0.copyload.i.i, %_RNvXsqb_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18DeletePointVectorsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ]
  %.sroa.13.i.i.sroa.11.0.i.i = phi i32 [ undef, %bb.cs ], [ %.sroa.13.i.i.sroa.11.0.copyload.i.i, %_RNvXsqb_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18DeletePointVectorsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ] ; 2 uses
  %.sroa.13.i.i.sroa.6.0.i.i = phi i32 [ undef, %bb.cs ], [ %.sroa.13.i.i.sroa.6.0.copyload.i.i, %_RNvXsqb_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18DeletePointVectorsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ]
  %.sroa.13.i.i.sroa.5.0.i.i = phi i32 [ undef, %bb.cs ], [ %.sroa.13.i.i.sroa.5.0.copyload.i.i, %_RNvXsqb_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18DeletePointVectorsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ] ; 2 uses
  %.sroa.13.i.i.sroa.4.0.i.i = phi i32 [ undef, %bb.cs ], [ %.sroa.13.i.i.sroa.4.0.copyload.i.i, %_RNvXsqb_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18DeletePointVectorsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ]
  %.sroa.13.i.i.sroa.0.0.i.i = phi i64 [ undef, %bb.cs ], [ %.sroa.13.i.i.sroa.0.0.copyload.i.i, %_RNvXsqb_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18DeletePointVectorsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ] ; 2 uses
  %.sroa.16.0.i.i.i.i = phi i8 [ undef, %bb.cs ], [ %i.kn, %_RNvXsqb_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18DeletePointVectorsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ]
  %.sroa.15.0.i99.i.i.i = phi i32 [ undef, %bb.cs ], [ %.sroa.5.0.i.i97.i.i.i, %_RNvXsqb_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18DeletePointVectorsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ]
  %.sroa.14.0.i100.i.i.i = phi i32 [ undef, %bb.cs ], [ %i.kv, %_RNvXsqb_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18DeletePointVectorsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ]
  %.sroa.1223.0.i.i.i.i = phi i64 [ undef, %bb.cs ], [ %.sroa.54.sroa.6.0.i.i93.i.i.i, %_RNvXsqb_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18DeletePointVectorsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ] ; 2 uses
  %.sroa.11.0.i101.i.i.i = phi i64 [ undef, %bb.cs ], [ %.sroa.54.sroa.5.0.i.i94.i.i.i, %_RNvXsqb_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18DeletePointVectorsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ]
  %.sroa.10.0.i102.i.i.i = phi i64 [ undef, %bb.cs ], [ %.sroa.54.sroa.4.0.i.i95.i.i.i, %_RNvXsqb_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18DeletePointVectorsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ] ; 2 uses
  %.sroa.819.0.i.i.i.i = phi i64 [ undef, %bb.cs ], [ %.sroa.02.0.i.i96.i.i.i, %_RNvXsqb_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18DeletePointVectorsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ] ; 2 uses
  %.sroa.516.0.i103.i.i.i = phi i64 [ undef, %bb.cs ], [ %.sroa.57.0.i.i98.i.i.i, %_RNvXsqb_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18DeletePointVectorsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ]
  %i.lp = phi <4 x i8> [ undef, %bb.cs ], [ %i.ln, %_RNvXsqb_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18DeletePointVectorsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ]
  %i.lq = phi <2 x i32> [ undef, %bb.cs ], [ %i.lo, %_RNvXsqb_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18DeletePointVectorsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ]
  %i.lr = phi <2 x i64> [ undef, %bb.cs ], [ %i.lm, %_RNvXsqb_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18DeletePointVectorsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ]
  %i.ls = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 240
  %i.lt = load i32, ptr %i.ls, align 8, !range !98, !alias.scope !22742, !noalias !22743, !noundef !38 ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 244
  %i.lv = load i32, ptr %i.lu, align 4, !alias.scope !22742, !noalias !22743
  %i.lw = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 284
  %i.lx = load i8, ptr %i.lw, align 4, !range !72, !alias.scope !22742, !noalias !22743, !noundef !38 ; 2 uses
  %.not10.i104.i.i.i = icmp eq i8 %i.lx, 2
  br i1 %.not10.i104.i.i.i, label %_RNvXsGZ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_21DeleteVectorsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.ly = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 256
  %.sroa.01.i75.i.sroa.0.0.copyload.i.i = load i32, ptr %i.ly, align 8, !alias.scope !22683, !noalias !22696
  %.sroa.01.i75.i.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 260
  %.sroa.01.i75.i.sroa.4.0.copyload.i.i = load i8, ptr %.sroa.01.i75.i.sroa.4.0..sroa_idx.i.i, align 4, !alias.scope !22683, !noalias !22696
  %.sroa.01.i75.i.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 261
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.05.i247.i.sroa.9.i.i, ptr noundef nonnull readonly align 1 dereferenceable(3) %.sroa.01.i75.i.sroa.5.0..sroa_idx.i.i, i64 3, i1 false), !noalias !22684
  %.sroa.01.i75.i.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 264
  %.sroa.01.i75.i.sroa.6.0.copyload.i.i = load i32, ptr %.sroa.01.i75.i.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !22683, !noalias !22696
  %.sroa.01.i75.i.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 268
  %.sroa.01.i75.i.sroa.7.0.copyload.i.i = load i8, ptr %.sroa.01.i75.i.sroa.7.0..sroa_idx.i.i, align 4, !alias.scope !22683, !noalias !22696
  %.sroa.01.i75.i.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 269
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.58.i248.i.i.i, ptr noundef nonnull readonly align 1 dereferenceable(3) %.sroa.01.i75.i.sroa.8.0..sroa_idx.i.i, i64 3, i1 false), !noalias !22684
  %.sroa.01.i75.i.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 272
  %i.lz = load <2 x i32>, ptr %.sroa.01.i75.i.sroa.9.0..sroa_idx.i.i, align 8, !alias.scope !22683, !noalias !22696
  %.sroa.01.i75.i.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 280
  %.sroa.01.i75.i.sroa.11.0.copyload.i.i = load i32, ptr %.sroa.01.i75.i.sroa.11.0..sroa_idx.i.i, align 8, !alias.scope !22683, !noalias !22696
  %.sroa.515.0..sroa_idx.i105.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 285
  %.sroa.54.i76.i.sroa.0.0.copyload.i.i = load i24, ptr %.sroa.515.0..sroa_idx.i105.i.i.i, align 1, !alias.scope !22683, !noalias !22696
  br label %_RNvXsGZ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_21DeleteVectorsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i

_RNvXsGZ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_21DeleteVectorsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i: ; preds = %bb.dq, %bb.dp
  %.sroa.01.i75.i.sroa.11.0.i.i = phi i32 [ undef, %bb.dp ], [ %.sroa.01.i75.i.sroa.11.0.copyload.i.i, %bb.dq ]
  %.sroa.01.i75.i.sroa.7.0.i.i = phi i8 [ undef, %bb.dp ], [ %.sroa.01.i75.i.sroa.7.0.copyload.i.i, %bb.dq ]
  %.sroa.01.i75.i.sroa.6.0.i.i = phi i32 [ undef, %bb.dp ], [ %.sroa.01.i75.i.sroa.6.0.copyload.i.i, %bb.dq ]
  %.sroa.01.i75.i.sroa.4.0.i.i = phi i8 [ undef, %bb.dp ], [ %.sroa.01.i75.i.sroa.4.0.copyload.i.i, %bb.dq ]
  %.sroa.01.i75.i.sroa.0.0.i.i = phi i32 [ undef, %bb.dp ], [ %.sroa.01.i75.i.sroa.0.0.copyload.i.i, %bb.dq ]
  %.sroa.54.i76.i.sroa.0.0.i.i = phi i24 [ undef, %bb.dp ], [ %.sroa.54.i76.i.sroa.0.0.copyload.i.i, %bb.dq ]
  %i.ma = phi <2 x i32> [ undef, %bb.dp ], [ %i.lz, %bb.dq ]
  %i.mb = trunc nuw i32 %i.lt to i1
  %.sroa.5.0.i106.i.i.i = select i1 %i.mb, i32 %i.lv, i32 undef
  %i.mc = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 248
  %i.md = load i32, ptr %i.mc, align 8, !range !98, !alias.scope !22742, !noalias !22743, !noundef !38 ; 2 uses
  %i.me = trunc nuw i32 %i.md to i1
  %i.mf = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 252
  %i.mg = load i32, ptr %i.mf, align 4, !alias.scope !22742, !noalias !22743
  %.sroa.57.0.i107.i.i.i = select i1 %i.me, i32 %i.mg, i32 undef
  %.sroa.65.sroa.0.0.extract.trunc683.i.i = trunc i64 %.sroa.819.0.i.i.i.i to i32
  %.sroa.65.sroa.16.0.extract.shift697.i.i = lshr i64 %.sroa.819.0.i.i.i.i, 32
  %.sroa.65.sroa.16.0.extract.trunc698.i.i = trunc nuw i64 %.sroa.65.sroa.16.0.extract.shift697.i.i to i32
  %.sroa.77.sroa.0.sroa.0.0.extract.trunc657.i.i = trunc i64 %.sroa.54.sroa.0.i.i74.i.sroa.0.1.i.i to i8
  %6 = lshr i64 %.sroa.54.sroa.0.i.i74.i.sroa.0.1.i.i, 8
  %.sroa.77.sroa.0.sroa.16.0.extract.trunc677.i.i = trunc i64 %6 to i32
  %.sroa.77.sroa.16.0.extract.shift646.i.i = lshr i64 %.sroa.54.sroa.0.i.i74.i.sroa.0.1.i.i, 32
  %.sroa.85.sroa.0.0.extract.trunc597.i.i = trunc i64 %.sroa.54.sroa.0.i.i74.i.sroa.4.1.i.i to i32
  %.sroa.85.sroa.16.0.extract.shift613.i.i = lshr i64 %.sroa.54.sroa.0.i.i74.i.sroa.4.1.i.i, 32
  %.sroa.85.sroa.16.0.extract.trunc614.i.i = trunc nuw i64 %.sroa.85.sroa.16.0.extract.shift613.i.i to i32
  %.sroa.91.sroa.0.0.extract.trunc567.i.i = trunc i64 %.sroa.10.0.i102.i.i.i to i32
  %.sroa.91.sroa.16.0.extract.shift583.i.i = lshr i64 %.sroa.10.0.i102.i.i.i, 32
  %.sroa.91.sroa.16.0.extract.trunc584.i.i = trunc nuw i64 %.sroa.91.sroa.16.0.extract.shift583.i.i to i32
  %.sroa.105.sroa.0.0.extract.trunc537.i.i = trunc i64 %.sroa.1223.0.i.i.i.i to i8
  %.sroa.105.sroa.16.0.extract.shift557.i.i = and i64 %.sroa.1223.0.i.i.i.i, -256
  %.sroa.109.sroa.0.0.extract.trunc504.i.i = trunc i64 %.sroa.13.i.i.sroa.0.0.i.i to i32
  %.sroa.109.sroa.16.0.extract.shift524.i.i = lshr i64 %.sroa.13.i.i.sroa.0.0.i.i, 32
  %.sroa.118.sroa.0.0.extract.trunc469.i.i = trunc i32 %.sroa.13.i.i.sroa.5.0.i.i to i8
  %.sroa.118.sroa.16.0.extract.shift484.i.i = lshr i32 %.sroa.13.i.i.sroa.5.0.i.i, 8
  %.sroa.118.sroa.16.0.extract.trunc485.i.i = trunc nuw i32 %.sroa.118.sroa.16.0.extract.shift484.i.i to i24
  %.sroa.130.sroa.0.0.extract.trunc442.i.i = trunc i32 %.sroa.13.i.i.sroa.11.0.i.i to i8
  %.sroa.130.sroa.14.0.extract.shift456.i.i = and i32 %.sroa.13.i.i.sroa.11.0.i.i, -256
  %.sroa.136.sroa.0.0.extract.trunc415.i.i = trunc i32 %.sroa.13.i.i.sroa.16.0.i.i to i8
  %.sroa.136.sroa.14.0.extract.shift429.i.i = lshr i32 %.sroa.13.i.i.sroa.16.0.i.i, 8
  %.sroa.146.sroa.0.0.extract.trunc389.i.i = trunc i32 %.sroa.13.i.i.sroa.21.0.i.i to i8
  %.sroa.146.sroa.13.0.extract.shift400.i.i = lshr i32 %.sroa.13.i.i.sroa.21.0.i.i, 8
  %.sroa.151.sroa.0.0.extract.trunc371.i.i = trunc i32 %.sroa.13.i.i.sroa.22.0.i.i to i8
  %.sroa.151.sroa.12.0.extract.shift380.i.i = and i32 %.sroa.13.i.i.sroa.22.0.i.i, -256
  %.sroa.155.sroa.0.0.extract.trunc350.i.i = trunc i32 %.sroa.13.i.i.sroa.24.0.i.i to i8
  %.sroa.155.sroa.12.0.extract.shift360.i.i = and i32 %.sroa.13.i.i.sroa.24.0.i.i, -256
  br label %_RNvXNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant16update_operationNtB2_6UpdateNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i

bb.dr:                                            ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !noalias !22694
  invoke fastcc void @_RNvXsH8_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_24SetPayloadPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(328) %i.bg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.cj) #34
          to label %.noexc16.i unwind label %.loopexit.i, !noalias !22681

.noexc16.i:                                       ; preds = %bb.dr
  %.sroa.16.8.copyload4.i.i = load i64, ptr %i.bg, align 8, !noalias !22756
  %.sroa.30.8.copyload8.i.i = load i64, ptr %.sroa.30.8..sroa_idx7.i.i, align 8, !noalias !22756
  %i.mh = load <2 x i64>, ptr %.sroa.40.8..sroa_idx11.i.i, align 8, !noalias !22756
  %.sroa.51.8.copyload36.i.i = load i64, ptr %.sroa.51.8..sroa_idx35.i.i, align 8, !noalias !22756
  %.sroa.52.8.copyload48.i.i = load i64, ptr %.sroa.52.8..sroa_idx47.i.i, align 8, !noalias !22756
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.54.sroa.0.i.i187.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.62.8..sroa_idx56.i.i, i64 16, i1 false), !noalias !22695
  %.sroa.65.8.copyload59.i.i = load i64, ptr %.sroa.65.8..sroa_idx58.i.i, align 8, !noalias !22756 ; 2 uses
  %.sroa.65.sroa.0.0.extract.trunc678.i.i = trunc i64 %.sroa.65.8.copyload59.i.i to i32
  %.sroa.65.sroa.16.0.extract.shift687.i.i = lshr i64 %.sroa.65.8.copyload59.i.i, 32
  %.sroa.65.sroa.16.0.extract.trunc688.i.i = trunc nuw i64 %.sroa.65.sroa.16.0.extract.shift687.i.i to i32
  %.sroa.77.8.copyload66.i.i = load i64, ptr %.sroa.77.8..sroa_idx65.i.i, align 8, !noalias !22756 ; 3 uses
  %.sroa.77.sroa.0.sroa.0.0.extract.trunc649.i.i = trunc i64 %.sroa.77.8.copyload66.i.i to i8
  %7 = lshr i64 %.sroa.77.8.copyload66.i.i, 8
  %.sroa.77.sroa.0.sroa.16.0.extract.trunc661.i.i = trunc i64 %7 to i32
  %.sroa.77.sroa.16.0.extract.shift630.i.i = lshr i64 %.sroa.77.8.copyload66.i.i, 32
  %.sroa.85.8.copyload72.i.i = load i64, ptr %.sroa.85.8..sroa_idx71.i.i, align 8, !noalias !22756 ; 2 uses
  %.sroa.85.sroa.0.0.extract.trunc591.i.i = trunc i64 %.sroa.85.8.copyload72.i.i to i32
  %.sroa.85.sroa.16.0.extract.shift601.i.i = lshr i64 %.sroa.85.8.copyload72.i.i, 32
  %.sroa.85.sroa.16.0.extract.trunc602.i.i = trunc nuw i64 %.sroa.85.sroa.16.0.extract.shift601.i.i to i32
  %.sroa.91.8.copyload79.i.i = load i64, ptr %.sroa.91.8..sroa_idx78.i.i, align 8, !noalias !22756 ; 2 uses
  %.sroa.91.sroa.0.0.extract.trunc561.i.i = trunc i64 %.sroa.91.8.copyload79.i.i to i32
  %.sroa.91.sroa.16.0.extract.shift571.i.i = lshr i64 %.sroa.91.8.copyload79.i.i, 32
  %.sroa.91.sroa.16.0.extract.trunc572.i.i = trunc nuw i64 %.sroa.91.sroa.16.0.extract.shift571.i.i to i32
  %.sroa.100.8.copyload86.i.i = load i64, ptr %.sroa.100.8..sroa_idx85.i.i, align 8, !noalias !22756
  %.sroa.105.8.copyload93.i.i = load i64, ptr %.sroa.105.8..sroa_idx92.i.i, align 8, !noalias !22756 ; 2 uses
  %.sroa.105.sroa.0.0.extract.trunc528.i.i = trunc i64 %.sroa.105.8.copyload93.i.i to i8
  %.sroa.105.sroa.16.0.extract.shift539.i.i = and i64 %.sroa.105.8.copyload93.i.i, -256
  %.sroa.109.8.copyload100.i.i = load i64, ptr %.sroa.109.8..sroa_idx99.i.i, align 8, !noalias !22756 ; 2 uses
  %.sroa.109.sroa.0.0.extract.trunc495.i.i = trunc i64 %.sroa.109.8.copyload100.i.i to i32
  %.sroa.109.sroa.16.0.extract.shift506.i.i = lshr i64 %.sroa.109.8.copyload100.i.i, 32
  %.sroa.115.8.copyload108.i.i = load i32, ptr %.sroa.115.8..sroa_idx107.i.i, align 8, !noalias !22756
  %.sroa.118.8.copyload116.i.i = load i32, ptr %.sroa.118.8..sroa_idx115.i.i, align 4, !noalias !22756 ; 2 uses
  %.sroa.118.sroa.0.0.extract.trunc464.i.i = trunc i32 %.sroa.118.8.copyload116.i.i to i8
  %.sroa.118.sroa.16.0.extract.shift474.i.i = lshr i32 %.sroa.118.8.copyload116.i.i, 8
  %.sroa.118.sroa.16.0.extract.trunc475.i.i = trunc nuw i32 %.sroa.118.sroa.16.0.extract.shift474.i.i to i24
  %.sroa.124.8.copyload124.i.i = load i32, ptr %.sroa.124.8..sroa_idx123.i.i, align 8, !noalias !22756
  %i.mi = load <4 x i8>, ptr %.sroa.126.8..sroa_idx130.i.i, align 4, !noalias !22756
  %.sroa.130.8.copyload159.i.i = load i32, ptr %.sroa.130.8..sroa_idx158.i.i, align 8, !noalias !22756 ; 2 uses
  %.sroa.130.sroa.0.0.extract.trunc437.i.i = trunc i32 %.sroa.130.8.copyload159.i.i to i8
  %.sroa.130.sroa.14.0.extract.shift446.i.i = and i32 %.sroa.130.8.copyload159.i.i, -256
  %.sroa.133.8.copyload165.i.i = load i32, ptr %.sroa.133.8..sroa_idx164.i.i, align 4, !noalias !22756
  %.sroa.134.8.copyload171.i.i = load i8, ptr %.sroa.134.8..sroa_idx170.i.i, align 8, !noalias !22756
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.05.i303.i.sroa.11.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.135.8..sroa_idx175.i.i, i64 7, i1 false), !noalias !22695
  %.sroa.135176.8.copyload179.i.i = load i32, ptr %.sroa.135176.8..sroa_idx178.i.i, align 8, !noalias !22756
  %.sroa.136.8.copyload185.i.i = load i32, ptr %.sroa.136.8..sroa_idx184.i.i, align 4, !noalias !22756 ; 2 uses
  %.sroa.136.sroa.0.0.extract.trunc410.i.i = trunc i32 %.sroa.136.8.copyload185.i.i to i8
  %.sroa.136.sroa.14.0.extract.shift419.i.i = lshr i32 %.sroa.136.8.copyload185.i.i, 8
  %i.mj = load <2 x i32>, ptr %.sroa.139.8..sroa_idx190.i.i, align 8, !noalias !22756
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.sroa.20.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.141.8..sroa_idx201.i.i, i64 24, i1 false), !noalias !22695
  %.sroa.143.8.copyload204.i.i = load i32, ptr %.sroa.143.8..sroa_idx203.i.i, align 8, !noalias !22756
  %.sroa.146.8.copyload209.i.i = load i32, ptr %.sroa.146.8..sroa_idx208.i.i, align 4, !noalias !22756 ; 2 uses
  %.sroa.146.sroa.0.0.extract.trunc386.i.i = trunc i32 %.sroa.146.8.copyload209.i.i to i8
  %.sroa.146.sroa.13.0.extract.shift394.i.i = lshr i32 %.sroa.146.8.copyload209.i.i, 8
  %.sroa.151.8.copyload214.i.i = load i32, ptr %.sroa.151.8..sroa_idx213.i.i, align 8, !noalias !22756 ; 2 uses
  %.sroa.151.sroa.0.0.extract.trunc368.i.i = trunc i32 %.sroa.151.8.copyload214.i.i to i8
  %.sroa.151.sroa.12.0.extract.shift374.i.i = and i32 %.sroa.151.8.copyload214.i.i, -256
  %.sroa.154.8.copyload219.i.i = load i32, ptr %.sroa.154.8..sroa_idx218.i.i, align 4, !noalias !22756
  %.sroa.155.8.copyload224.i.i = load i32, ptr %.sroa.155.8..sroa_idx223.i.i, align 8, !noalias !22756 ; 2 uses
  %.sroa.155.sroa.0.0.extract.trunc347.i.i = trunc i32 %.sroa.155.8.copyload224.i.i to i8
  %.sroa.155.sroa.12.0.extract.shift354.i.i = and i32 %.sroa.155.8.copyload224.i.i, -256
  %.sroa.158.8.copyload229.i.i = load i32, ptr %.sroa.158.8..sroa_idx228.i.i, align 4, !noalias !22756
  %.sroa.160.8.copyload234.i.i = load i32, ptr %.sroa.160.8..sroa_idx233.i.i, align 8, !noalias !22756
  %.sroa.166.8.copyload238.i.i = load i32, ptr %.sroa.166.8..sroa_idx237.i.i, align 4, !noalias !22756
  %.sroa.172.8.copyload242.i.i = load i32, ptr %.sroa.172.8..sroa_idx241.i.i, align 8, !noalias !22756 ; 2 uses
  %.sroa.172.sroa.0.0.extract.trunc332.i.i = trunc i32 %.sroa.172.8.copyload242.i.i to i8
  %.sroa.172.sroa.12.0.extract.shift337.i.i = and i32 %.sroa.172.8.copyload242.i.i, -256
  %.sroa.178.8.copyload247.i.i = load i32, ptr %.sroa.178.8..sroa_idx246.i.i, align 4, !noalias !22756
  %.sroa.179.8.copyload252.i.i = load i32, ptr %.sroa.179.8..sroa_idx251.i.i, align 8, !noalias !22756
  %.sroa.183.8.copyload257.i.i = load i32, ptr %.sroa.183.8..sroa_idx256.i.i, align 4, !noalias !22756
  %.sroa.186.8.copyload262.i.i = load i32, ptr %.sroa.186.8..sroa_idx261.i.i, align 8, !noalias !22756
  %.sroa.189.8.copyload267.i.i = load i32, ptr %.sroa.189.8..sroa_idx266.i.i, align 4, !noalias !22756
  %.sroa.192.8.copyload272.i.i = load i32, ptr %.sroa.192.8..sroa_idx271.i.i, align 8, !noalias !22756
  %.sroa.195.8.copyload279.i.i = load i8, ptr %.sroa.195.8..sroa_idx278.i.i, align 4, !noalias !22756
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.05.i247.i.sroa.9.i.i, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.197.8..sroa_idx283.i.i, i64 3, i1 false), !noalias !22695
  %.sroa.199.8.copyload286.i.i = load i32, ptr %.sroa.199.8..sroa_idx285.i.i, align 8, !noalias !22756
  %.sroa.199290.8.copyload293.i.i = load i8, ptr %.sroa.199290.8..sroa_idx292.i.i, align 4, !noalias !22756
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.58.i248.i.i.i, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.200.8..sroa_idx297.i.i, i64 3, i1 false), !noalias !22695
  %i.mk = load <2 x i32>, ptr %.sroa.201.8..sroa_idx299.i.i, align 8, !noalias !22756
  %.sroa.203.8.copyload310.i.i = load i32, ptr %.sroa.203.8..sroa_idx309.i.i, align 8, !noalias !22756
  %.sroa.204.8.copyload315.i.i = load i32, ptr %.sroa.204.8..sroa_idx314.i.i, align 4, !noalias !22756 ; 2 uses
  %.sroa.204.sroa.0.0.extract.trunc324.i.i = trunc i32 %.sroa.204.8.copyload315.i.i to i8
  %.sroa.204.sroa.9.0.extract.shift326.i.i = lshr i32 %.sroa.204.8.copyload315.i.i, 8
  %.sroa.204.sroa.9.0.extract.trunc327.i.i = trunc nuw i32 %.sroa.204.sroa.9.0.extract.shift326.i.i to i24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %.sroa.211.i.i, ptr noundef nonnull align 8 dereferenceable(28) %.sroa.211.8..sroa_idx318.i.i, i64 28, i1 false), !noalias !22695
  %.sroa.212.8.copyload321.i.i = load i8, ptr %.sroa.212.8..sroa_idx320.i.i, align 4, !noalias !22756
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.213.i.i, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.213.8..sroa_idx322.i.i, i64 3, i1 false), !noalias !22695
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.214.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.214.8..sroa_idx323.i.i, i64 16, i1 false), !noalias !22695
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !22694
  br label %_RNvXNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant16update_operationNtB2_6UpdateNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i

bb.ds:                                            ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !noalias !22694
  invoke fastcc void @_RNvXsH8_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_24SetPayloadPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(328) %i.bf, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.cj) #34
          to label %.noexc17.i unwind label %.loopexit.i, !noalias !22681

.noexc17.i:                                       ; preds = %bb.ds
  %.sroa.16.8.copyload3.i.i = load i64, ptr %i.bf, align 8, !noalias !22756
  %.sroa.30.8.copyload6.i.i = load i64, ptr %.sroa.30.8..sroa_idx.i.i, align 8, !noalias !22756
  %i.ml = load <2 x i64>, ptr %.sroa.40.8..sroa_idx.i.i, align 8, !noalias !22756
  %.sroa.51.8.copyload34.i.i = load i64, ptr %.sroa.51.8..sroa_idx.i.i, align 8, !noalias !22756
  %.sroa.52.8.copyload46.i.i = load i64, ptr %.sroa.52.8..sroa_idx.i.i, align 8, !noalias !22756
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.54.sroa.0.i.i187.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.62.8..sroa_idx.i.i, i64 16, i1 false), !noalias !22695
  %.sroa.65.8.copyload57.i.i = load i64, ptr %.sroa.65.8..sroa_idx.i.i, align 8, !noalias !22756 ; 2 uses
  %.sroa.65.sroa.0.0.extract.trunc.i.i = trunc i64 %.sroa.65.8.copyload57.i.i to i32
  %.sroa.65.sroa.16.0.extract.shift.i.i = lshr i64 %.sroa.65.8.copyload57.i.i, 32
  %.sroa.65.sroa.16.0.extract.trunc.i.i = trunc nuw i64 %.sroa.65.sroa.16.0.extract.shift.i.i to i32
  %.sroa.77.8.copyload64.i.i = load i64, ptr %.sroa.77.8..sroa_idx.i.i, align 8, !noalias !22756 ; 3 uses
  %.sroa.77.sroa.0.sroa.0.0.extract.trunc648.i.i = trunc i64 %.sroa.77.8.copyload64.i.i to i8
  %8 = lshr i64 %.sroa.77.8.copyload64.i.i, 8
  %.sroa.77.sroa.0.sroa.16.0.extract.trunc659.i.i = trunc i64 %8 to i32
  %.sroa.77.sroa.16.0.extract.shift.i.i = lshr i64 %.sroa.77.8.copyload64.i.i, 32
  %.sroa.85.8.copyload70.i.i = load i64, ptr %.sroa.85.8..sroa_idx.i.i, align 8, !noalias !22756 ; 2 uses
  %.sroa.85.sroa.0.0.extract.trunc.i.i = trunc i64 %.sroa.85.8.copyload70.i.i to i32
  %.sroa.85.sroa.16.0.extract.shift.i.i = lshr i64 %.sroa.85.8.copyload70.i.i, 32
  %.sroa.85.sroa.16.0.extract.trunc.i.i = trunc nuw i64 %.sroa.85.sroa.16.0.extract.shift.i.i to i32
  %.sroa.91.8.copyload77.i.i = load i64, ptr %.sroa.91.8..sroa_idx.i.i, align 8, !noalias !22756 ; 2 uses
  %.sroa.91.sroa.0.0.extract.trunc.i.i = trunc i64 %.sroa.91.8.copyload77.i.i to i32
  %.sroa.91.sroa.16.0.extract.shift.i.i = lshr i64 %.sroa.91.8.copyload77.i.i, 32
  %.sroa.91.sroa.16.0.extract.trunc.i.i = trunc nuw i64 %.sroa.91.sroa.16.0.extract.shift.i.i to i32
  %.sroa.100.8.copyload84.i.i = load i64, ptr %.sroa.100.8..sroa_idx.i.i, align 8, !noalias !22756
  %.sroa.105.8.copyload91.i.i = load i64, ptr %.sroa.105.8..sroa_idx.i.i, align 8, !noalias !22756 ; 2 uses
  %.sroa.105.sroa.0.0.extract.trunc.i.i = trunc i64 %.sroa.105.8.copyload91.i.i to i8
  %.sroa.105.sroa.16.0.extract.shift.i.i = and i64 %.sroa.105.8.copyload91.i.i, -256
  %.sroa.109.8.copyload98.i.i = load i64, ptr %.sroa.109.8..sroa_idx.i.i, align 8, !noalias !22756 ; 2 uses
  %.sroa.109.sroa.0.0.extract.trunc.i.i = trunc i64 %.sroa.109.8.copyload98.i.i to i32
  %.sroa.109.sroa.16.0.extract.shift.i.i = lshr i64 %.sroa.109.8.copyload98.i.i, 32
  %.sroa.115.8.copyload106.i.i = load i32, ptr %.sroa.115.8..sroa_idx.i.i, align 8, !noalias !22756
  %.sroa.118.8.copyload114.i.i = load i32, ptr %.sroa.118.8..sroa_idx.i.i, align 4, !noalias !22756 ; 2 uses
  %.sroa.118.sroa.0.0.extract.trunc.i.i = trunc i32 %.sroa.118.8.copyload114.i.i to i8
  %.sroa.118.sroa.16.0.extract.shift.i.i = lshr i32 %.sroa.118.8.copyload114.i.i, 8
  %.sroa.118.sroa.16.0.extract.trunc.i.i = trunc nuw i32 %.sroa.118.sroa.16.0.extract.shift.i.i to i24
  %.sroa.124.8.copyload122.i.i = load i32, ptr %.sroa.124.8..sroa_idx.i.i, align 8, !noalias !22756
  %i.mm = load <4 x i8>, ptr %.sroa.126.8..sroa_idx.i.i, align 4, !noalias !22756
  %.sroa.130.8.copyload157.i.i = load i32, ptr %.sroa.130.8..sroa_idx.i.i, align 8, !noalias !22756 ; 2 uses
  %.sroa.130.sroa.0.0.extract.trunc.i.i = trunc i32 %.sroa.130.8.copyload157.i.i to i8
  %.sroa.130.sroa.14.0.extract.shift.i.i = and i32 %.sroa.130.8.copyload157.i.i, -256
  %.sroa.133.8.copyload163.i.i = load i32, ptr %.sroa.133.8..sroa_idx.i.i, align 4, !noalias !22756
  %.sroa.134.8.copyload169.i.i = load i8, ptr %.sroa.134.8..sroa_idx.i.i, align 8, !noalias !22756
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.05.i303.i.sroa.11.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.135.8..sroa_idx.i.i, i64 7, i1 false), !noalias !22695
  %.sroa.135176.8.copyload177.i.i = load i32, ptr %.sroa.135176.8..sroa_idx.i.i, align 8, !noalias !22756
  %.sroa.136.8.copyload183.i.i = load i32, ptr %.sroa.136.8..sroa_idx.i.i, align 4, !noalias !22756 ; 2 uses
  %.sroa.136.sroa.0.0.extract.trunc.i.i = trunc i32 %.sroa.136.8.copyload183.i.i to i8
  %.sroa.136.sroa.14.0.extract.shift.i.i = lshr i32 %.sroa.136.8.copyload183.i.i, 8
  %i.mn = load <2 x i32>, ptr %.sroa.139.8..sroa_idx.i.i, align 8, !noalias !22756
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.sroa.20.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.141.8..sroa_idx.i.i, i64 24, i1 false), !noalias !22695
  %.sroa.143.8.copyload202.i.i = load i32, ptr %.sroa.143.8..sroa_idx.i.i, align 8, !noalias !22756
  %.sroa.146.8.copyload207.i.i = load i32, ptr %.sroa.146.8..sroa_idx.i.i, align 4, !noalias !22756 ; 2 uses
  %.sroa.146.sroa.0.0.extract.trunc.i.i = trunc i32 %.sroa.146.8.copyload207.i.i to i8
  %.sroa.146.sroa.13.0.extract.shift.i.i = lshr i32 %.sroa.146.8.copyload207.i.i, 8
  %.sroa.151.8.copyload212.i.i = load i32, ptr %.sroa.151.8..sroa_idx.i.i, align 8, !noalias !22756 ; 2 uses
  %.sroa.151.sroa.0.0.extract.trunc.i.i = trunc i32 %.sroa.151.8.copyload212.i.i to i8
  %.sroa.151.sroa.12.0.extract.shift.i.i = and i32 %.sroa.151.8.copyload212.i.i, -256
  %.sroa.154.8.copyload217.i.i = load i32, ptr %.sroa.154.8..sroa_idx.i.i, align 4, !noalias !22756
  %.sroa.155.8.copyload222.i.i = load i32, ptr %.sroa.155.8..sroa_idx.i.i, align 8, !noalias !22756 ; 2 uses
  %.sroa.155.sroa.0.0.extract.trunc.i.i = trunc i32 %.sroa.155.8.copyload222.i.i to i8
  %.sroa.155.sroa.12.0.extract.shift.i.i = and i32 %.sroa.155.8.copyload222.i.i, -256
  %.sroa.158.8.copyload227.i.i = load i32, ptr %.sroa.158.8..sroa_idx.i.i, align 4, !noalias !22756
  %.sroa.160.8.copyload232.i.i = load i32, ptr %.sroa.160.8..sroa_idx.i.i, align 8, !noalias !22756
  %.sroa.166.8.copyload236.i.i = load i32, ptr %.sroa.166.8..sroa_idx.i.i, align 4, !noalias !22756
  %.sroa.172.8.copyload240.i.i = load i32, ptr %.sroa.172.8..sroa_idx.i.i, align 8, !noalias !22756 ; 2 uses
  %.sroa.172.sroa.0.0.extract.trunc.i.i = trunc i32 %.sroa.172.8.copyload240.i.i to i8
  %.sroa.172.sroa.12.0.extract.shift.i.i = and i32 %.sroa.172.8.copyload240.i.i, -256
  %.sroa.178.8.copyload245.i.i = load i32, ptr %.sroa.178.8..sroa_idx.i.i, align 4, !noalias !22756
  %.sroa.179.8.copyload250.i.i = load i32, ptr %.sroa.179.8..sroa_idx.i.i, align 8, !noalias !22756
  %.sroa.183.8.copyload255.i.i = load i32, ptr %.sroa.183.8..sroa_idx.i.i, align 4, !noalias !22756
  %.sroa.186.8.copyload260.i.i = load i32, ptr %.sroa.186.8..sroa_idx.i.i, align 8, !noalias !22756
  %.sroa.189.8.copyload265.i.i = load i32, ptr %.sroa.189.8..sroa_idx.i.i, align 4, !noalias !22756
  %.sroa.192.8.copyload270.i.i = load i32, ptr %.sroa.192.8..sroa_idx.i.i, align 8, !noalias !22756
  %.sroa.195.8.copyload277.i.i = load i8, ptr %.sroa.195.8..sroa_idx.i.i, align 4, !noalias !22756
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.05.i247.i.sroa.9.i.i, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.197.8..sroa_idx.i.i, i64 3, i1 false), !noalias !22695
  %.sroa.199.8.copyload284.i.i = load i32, ptr %.sroa.199.8..sroa_idx.i.i, align 8, !noalias !22756
  %.sroa.199290.8.copyload291.i.i = load i8, ptr %.sroa.199290.8..sroa_idx.i.i, align 4, !noalias !22756
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.58.i248.i.i.i, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.200.8..sroa_idx.i.i, i64 3, i1 false), !noalias !22695
  %i.mo = load <2 x i32>, ptr %.sroa.201.8..sroa_idx.i.i, align 8, !noalias !22756
  %.sroa.203.8.copyload308.i.i = load i32, ptr %.sroa.203.8..sroa_idx.i.i, align 8, !noalias !22756
  %.sroa.204.8.copyload313.i.i = load i32, ptr %.sroa.204.8..sroa_idx.i.i, align 4, !noalias !22756 ; 2 uses
  %.sroa.204.sroa.0.0.extract.trunc.i.i = trunc i32 %.sroa.204.8.copyload313.i.i to i8
  %.sroa.204.sroa.9.0.extract.shift.i.i = lshr i32 %.sroa.204.8.copyload313.i.i, 8
  %.sroa.204.sroa.9.0.extract.trunc.i.i = trunc nuw i32 %.sroa.204.sroa.9.0.extract.shift.i.i to i24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %.sroa.211.i.i, ptr noundef nonnull align 8 dereferenceable(28) %.sroa.211.8..sroa_idx.i.i, i64 28, i1 false), !noalias !22695
  %.sroa.212.8.copyload319.i.i = load i8, ptr %.sroa.212.8..sroa_idx.i.i, align 4, !noalias !22756
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.213.i.i, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.213.8..sroa_idx.i.i, i64 3, i1 false), !noalias !22695
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.214.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.214.8..sroa_idx.i.i, i64 16, i1 false), !noalias !22695
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !22694
  br label %_RNvXNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant16update_operationNtB2_6UpdateNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i

bb.dt:                                            ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22757)
  %i.mp = load i64, ptr %i.cj, align 8, !range !49, !alias.scope !22758, !noalias !22759, !noundef !38 ; 3 uses
  %.not.i130.i.i.i = icmp eq i64 %i.mp, 2
  br i1 %.not.i130.i.i.i, label %bb.eo, label %bb.du

bb.du:                                            ; preds = %bb.dt
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22760)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !22761
  %i.mq = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 24
  invoke void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.x, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.mq)
          to label %.noexc18.i unwind label %.loopexit.i, !noalias !22681

.noexc18.i:                                       ; preds = %bb.du
  %i.mr = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 232
  %i.ms = load i8, ptr %i.mr, align 8, !range !72, !alias.scope !22762, !noalias !22763, !noundef !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !22761
  %i.mt = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 48
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.w, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.mt)
          to label %bb.dx unwind label %bb.dw, !noalias !22764

bb.dv:                                            ; preds = %bb.ec, %bb.dw
  %.pn.pn.i.i131.i.i.i = phi { ptr, i32 } [ %.pn.i.i134.i.i.i, %bb.ec ], [ %i.mu, %bb.dw ]
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %bb.hi unwind label %bb.en, !noalias !22764

bb.dw:                                            ; preds = %.noexc18.i
  %i.mu = landingpad { ptr, i32 }
          cleanup
  br label %bb.dv

bb.dx:                                            ; preds = %.noexc18.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !22761
  %i.mv = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 120 ; 2 uses
  %i.mw = load i64, ptr %i.mv, align 8, !range !61, !alias.scope !22762, !noalias !22763, !noundef !38 ; 3 uses
  %.not9.i.i133.i.i.i = icmp eq i64 %i.mw, -3
  br i1 %.not9.i.i133.i.i.i, label %bb.eb, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !22761
  switch i64 %i.mw, label %bb.dz [
    i64 -2, label %bb.ee
    i64 -1, label %bb.ea
  ]

bb.dz:                                            ; preds = %bb.dy
  invoke fastcc void @_RNvXs1i_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_6FilterNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(104) %i.u, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.mv) #34
          to label %.noexc.i.i185.i.i.i unwind label %bb.ed, !noalias !22764

.noexc.i.i185.i.i.i:                              ; preds = %bb.dz
  %.sroa.0.0.copyload.pre.i.i.i186.i.i.i = load i64, ptr %i.u, align 8, !noalias !22765
  br label %bb.ee

bb.ea:                                            ; preds = %bb.dy
  %i.mx = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 128
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant7PointIdENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.cb, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.mx)
          to label %bb.ee unwind label %bb.ed, !noalias !22764

bb.eb:                                            ; preds = %bb.ee, %bb.dx
  %.sroa.13.i129.i.sroa.0.0.copyload.i.i = phi i64 [ %.sroa.0.0.i.i.i135.i.i.i, %bb.ee ], [ -3, %bb.dx ] ; 2 uses
  store i64 %.sroa.13.i129.i.sroa.0.0.copyload.i.i, ptr %i.v, align 8, !noalias !22761
  %i.my = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 224
  %i.mz = load i32, ptr %i.my, align 8, !range !98, !alias.scope !22762, !noalias !22763, !noundef !38 ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 228
  %.val.i.i138.i.i.i = load i32, ptr %i.na, align 4, !alias.scope !22762, !noalias !22763
  %i.nb = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 72 ; 2 uses
  %i.nc = load i64, ptr %i.nb, align 8, !range !42, !alias.scope !22762, !noalias !22763, !noundef !38
  %.not10.i.i139.i.i.i = icmp eq i64 %i.nc, -1
  br i1 %.not10.i.i139.i.i.i, label %_RNvXsqt_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_19DeletePayloadPointsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i, label %bb.eg

bb.ec:                                            ; preds = %.body.i.i140.i.i.i, %bb.ed
  %.pn.i.i134.i.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i141.i.i.i, %.body.i.i140.i.i.i ], [ %i.nd, %bb.ed ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBG_6string6StringEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.w) #31
          to label %bb.dv unwind label %bb.en, !noalias !22764

bb.ed:                                            ; preds = %bb.ea, %bb.dz
  %i.nd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ec

bb.ee:                                            ; preds = %bb.ea, %.noexc.i.i185.i.i.i, %bb.dy
  %.sroa.0.0.i.i.i135.i.i.i = phi i64 [ %i.mw, %bb.dy ], [ %.sroa.0.0.copyload.pre.i.i.i186.i.i.i, %.noexc.i.i185.i.i.i ], [ -1, %bb.ea ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.4.0..sroa_idx.i.i136.i.i.i, ptr noundef nonnull align 8 dereferenceable(96) %i.cb, i64 96, i1 false), !noalias !22761
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !22761
  br label %bb.eb

bb.ef:                                            ; preds = %bb.eg
  %i.ne = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i140.i.i.i

.body.i.i140.i.i.i:                               ; preds = %bb.ej, %bb.ef
  %eh.lpad-body.i.i141.i.i.i = phi { ptr, i32 } [ %i.ne, %bb.ef ], [ %i.nj, %bb.ej ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant14PointsSelectorEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(104) %i.v) #31
          to label %bb.ec unwind label %bb.en, !noalias !22764

bb.eg:                                            ; preds = %bb.eb
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22766)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !22767
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant8ShardKeyENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.nb)
          to label %.noexc15.i.i142.i.i.i unwind label %bb.ef, !noalias !22764

.noexc15.i.i142.i.i.i:                            ; preds = %bb.eg
  %i.nf = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 96 ; 2 uses
  %i.ng = load i64, ptr %i.nf, align 8, !range !61, !alias.scope !22768, !noalias !22769, !noundef !38 ; 3 uses
  switch i64 %i.ng, label %bb.ei [
    i64 -3, label %bb.em
    i64 -2, label %bb.em
    i64 -1, label %bb.eh
  ]

bb.eh:                                            ; preds = %.noexc15.i.i142.i.i.i
  %i.nh = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 104
  %i.ni = load i64, ptr %i.nh, align 8, !alias.scope !22768, !noalias !22769, !noundef !38
  br label %bb.em

bb.ei:                                            ; preds = %.noexc15.i.i142.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !22767
  invoke void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.s, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.nf)
          to label %bb.ek unwind label %bb.ej, !noalias !22770

bb.ej:                                            ; preds = %bb.ei
  %i.nj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant8ShardKeyEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.t) #31
          to label %.body.i.i140.i.i.i unwind label %bb.el, !noalias !22770

bb.ek:                                            ; preds = %bb.ei
  %.sroa.06.0.copyload.i.i.i180.i.i.i = load i64, ptr %i.s, align 8, !noalias !22767
  %.sroa.57.0.copyload.i.i.i182.i.i.i = load i64, ptr %.sroa.57.0..sroa_idx.i.i.i181.i.i.i, align 8, !noalias !22767
  %.sroa.7.0.copyload.i.i.i184.i.i.i = load i64, ptr %.sroa.7.0..sroa_idx.i.i.i183.i.i.i, align 8, !noalias !22767
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !22767
  br label %bb.em

bb.el:                                            ; preds = %bb.ej
  %i.nk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28, !noalias !22770
  unreachable

bb.em:                                            ; preds = %.noexc15.i.i142.i.i.i, %bb.ek, %bb.eh, %.noexc15.i.i142.i.i.i
  %.sroa.5.sroa.4.0.i.i.i143.i.i.i = phi i64 [ undef, %.noexc15.i.i142.i.i.i ], [ %.sroa.7.0.copyload.i.i.i184.i.i.i, %bb.ek ], [ undef, %bb.eh ], [ undef, %.noexc15.i.i142.i.i.i ]
  %.sroa.5.sroa.0.0.i.i.i144.i.i.i = phi i64 [ undef, %.noexc15.i.i142.i.i.i ], [ %.sroa.57.0.copyload.i.i.i182.i.i.i, %bb.ek ], [ %i.ni, %bb.eh ], [ undef, %.noexc15.i.i142.i.i.i ]
  %.sroa.0.0.i14.i.i145.i.i.i = phi i64 [ %i.ng, %.noexc15.i.i142.i.i.i ], [ %.sroa.06.0.copyload.i.i.i180.i.i.i, %bb.ek ], [ -1, %bb.eh ], [ %i.ng, %.noexc15.i.i142.i.i.i ]
  %.sroa.016.0.copyload.i.i146.i.i.i = load i64, ptr %i.t, align 8, !noalias !22771
  %.sroa.54.sroa.0.i.i124.i.sroa.0.0.copyload.i.i = load i64, ptr %.sroa.417.0..sroa_idx.i.i147.i.i.i, align 8, !noalias !22694
  %.sroa.54.sroa.0.i.i124.i.sroa.4.0.copyload.i.i = load i64, ptr %.sroa.54.sroa.0.i.i124.i.sroa.4.0..sroa.417.0..sroa_idx.i.i147.i.sroa_idx.i.i, align 8, !noalias !22694
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !22767
  br label %_RNvXsqt_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_19DeletePayloadPointsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i

bb.en:                                            ; preds = %.body.i.i140.i.i.i, %bb.ec, %bb.dv
  %i.nl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28, !noalias !22764
  unreachable

_RNvXsqt_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_19DeletePayloadPointsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i: ; preds = %bb.em, %bb.eb
  %.sroa.54.sroa.0.i.i124.i.sroa.4.0.i.i = phi i64 [ undef, %bb.eb ], [ %.sroa.54.sroa.0.i.i124.i.sroa.4.0.copyload.i.i, %bb.em ]
  %.sroa.54.sroa.0.i.i124.i.sroa.0.0.i.i = phi i64 [ undef, %bb.eb ], [ %.sroa.54.sroa.0.i.i124.i.sroa.0.0.copyload.i.i, %bb.em ]
  %.sroa.54.sroa.6.0.i.i148.i.i.i = phi i64 [ undef, %bb.eb ], [ %.sroa.5.sroa.4.0.i.i.i143.i.i.i, %bb.em ]
  %.sroa.54.sroa.5.0.i.i149.i.i.i = phi i64 [ undef, %bb.eb ], [ %.sroa.5.sroa.0.0.i.i.i144.i.i.i, %bb.em ]
  %.sroa.54.sroa.4.0.i.i150.i.i.i = phi i64 [ undef, %bb.eb ], [ %.sroa.0.0.i14.i.i145.i.i.i, %bb.em ]
  %.sroa.02.0.i.i151.i.i.i = phi i64 [ -1, %bb.eb ], [ %.sroa.016.0.copyload.i.i146.i.i.i, %bb.em ]
  %i.nm = trunc nuw i32 %i.mz to i1
  %.sroa.5.0.i.i152.i.i.i = select i1 %i.nm, i32 %.val.i.i138.i.i.i, i32 undef
  %i.nn = trunc nuw i64 %i.mp to i1
  %i.no = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 16
  %i.np = load i64, ptr %i.no, align 8, !alias.scope !22762, !noalias !22763
  %.sroa.57.0.i.i153.i.i.i = select i1 %i.nn, i64 %i.np, i64 undef
  %i.nq = load <2 x i64>, ptr %i.x, align 16, !noalias !22694
  %.sroa.617.i127.i.sroa.5.0.copyload.i.i = load i64, ptr %.sroa.617.i127.i.sroa.5.0..sroa_idx.i.i, align 16, !noalias !22694
  %.sroa.7.i128.i.sroa.0.0.copyload.i.i = load i64, ptr %i.w, align 8, !noalias !22694
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.54.sroa.0.i.i187.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.i128.i.sroa.4.0..sroa_idx.i.i, i64 16, i1 false), !noalias !22695
  %.sroa.13.i129.i.sroa.4.0.copyload.i.i = load i32, ptr %.sroa.4.0..sroa_idx.i.i136.i.i.i, align 8, !noalias !22694
  %.sroa.13.i129.i.sroa.5.0.copyload.i.i = load i32, ptr %.sroa.13.i129.i.sroa.5.0..sroa_idx.i.i, align 4, !noalias !22694
  %.sroa.13.i129.i.sroa.6.0.copyload.i.i = load i32, ptr %.sroa.13.i129.i.sroa.6.0..sroa_idx.i.i, align 8, !noalias !22694
  %i.nr = load <4 x i8>, ptr %.sroa.13.i129.i.sroa.7.0..sroa_idx.i.i, align 4, !noalias !22694
  %.sroa.13.i129.i.sroa.11.0.copyload.i.i = load i32, ptr %.sroa.13.i129.i.sroa.11.0..sroa_idx.i.i, align 8, !noalias !22694
  %.sroa.13.i129.i.sroa.12.0.copyload.i.i = load i32, ptr %.sroa.13.i129.i.sroa.12.0..sroa_idx.i.i, align 4, !noalias !22694
  %.sroa.13.i129.i.sroa.13.0.copyload.i.i = load i8, ptr %.sroa.13.i129.i.sroa.13.0..sroa_idx.i.i, align 8, !noalias !22694
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.05.i303.i.sroa.11.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.13.i129.i.sroa.14.0..sroa_idx.i.i, i64 7, i1 false), !noalias !22695
  %.sroa.13.i129.i.sroa.15.0.copyload.i.i = load i32, ptr %.sroa.13.i129.i.sroa.15.0..sroa_idx.i.i, align 8, !noalias !22694
  %.sroa.13.i129.i.sroa.16.0.copyload.i.i = load i32, ptr %.sroa.13.i129.i.sroa.16.0..sroa_idx.i.i, align 4, !noalias !22694
  %i.ns = load <2 x i32>, ptr %.sroa.13.i129.i.sroa.17.0..sroa_idx.i.i, align 8, !noalias !22694
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.sroa.20.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.13.i129.i.sroa.19.0..sroa_idx.i.i, i64 24, i1 false), !noalias !22695
  %.sroa.13.i129.i.sroa.20.0.copyload.i.i = load i32, ptr %.sroa.13.i129.i.sroa.20.0..sroa_idx.i.i, align 8, !noalias !22694
  %.sroa.13.i129.i.sroa.21.0.copyload.i.i = load i32, ptr %.sroa.13.i129.i.sroa.21.0..sroa_idx.i.i, align 4, !noalias !22694
  %.sroa.13.i129.i.sroa.22.0.copyload.i.i = load i32, ptr %.sroa.13.i129.i.sroa.22.0..sroa_idx.i.i, align 8, !noalias !22694
  %.sroa.13.i129.i.sroa.23.0.copyload.i.i = load i32, ptr %.sroa.13.i129.i.sroa.23.0..sroa_idx.i.i, align 4, !noalias !22694
  %.sroa.13.i129.i.sroa.24.0.copyload.i.i = load i32, ptr %.sroa.13.i129.i.sroa.24.0..sroa_idx.i.i, align 8, !noalias !22694
  %.sroa.13.i129.i.sroa.25.0.copyload.i.i = load i32, ptr %.sroa.13.i129.i.sroa.25.0..sroa_idx.i.i, align 4, !noalias !22694
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !22761
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !22761
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !22761
  br label %bb.eo

bb.eo:                                            ; preds = %_RNvXsqt_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_19DeletePayloadPointsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i, %bb.dt
  %.sroa.54.sroa.0.i.i124.i.sroa.4.1.i.i = phi i64 [ undef, %bb.dt ], [ %.sroa.54.sroa.0.i.i124.i.sroa.4.0.i.i, %_RNvXsqt_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_19DeletePayloadPointsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ] ; 2 uses
  %.sroa.54.sroa.0.i.i124.i.sroa.0.1.i.i = phi i64 [ undef, %bb.dt ], [ %.sroa.54.sroa.0.i.i124.i.sroa.0.0.i.i, %_RNvXsqt_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_19DeletePayloadPointsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ] ; 3 uses
  %.sroa.617.i127.i.sroa.5.0.i.i = phi i64 [ undef, %bb.dt ], [ %.sroa.617.i127.i.sroa.5.0.copyload.i.i, %_RNvXsqt_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_19DeletePayloadPointsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ]
  %.sroa.7.i128.i.sroa.0.0.i.i = phi i64 [ undef, %bb.dt ], [ %.sroa.7.i128.i.sroa.0.0.copyload.i.i, %_RNvXsqt_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_19DeletePayloadPointsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ]
  %.sroa.13.i129.i.sroa.25.0.i.i = phi i32 [ undef, %bb.dt ], [ %.sroa.13.i129.i.sroa.25.0.copyload.i.i, %_RNvXsqt_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_19DeletePayloadPointsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ]
  %.sroa.13.i129.i.sroa.24.0.i.i = phi i32 [ undef, %bb.dt ], [ %.sroa.13.i129.i.sroa.24.0.copyload.i.i, %_RNvXsqt_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_19DeletePayloadPointsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ] ; 2 uses
  %.sroa.13.i129.i.sroa.23.0.i.i = phi i32 [ undef, %bb.dt ], [ %.sroa.13.i129.i.sroa.23.0.copyload.i.i, %_RNvXsqt_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_19DeletePayloadPointsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ]
  %.sroa.13.i129.i.sroa.22.0.i.i = phi i32 [ undef, %bb.dt ], [ %.sroa.13.i129.i.sroa.22.0.copyload.i.i, %_RNvXsqt_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_19DeletePayloadPointsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ] ; 2 uses
  %.sroa.13.i129.i.sroa.21.0.i.i = phi i32 [ undef, %bb.dt ], [ %.sroa.13.i129.i.sroa.21.0.copyload.i.i, %_RNvXsqt_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_19DeletePayloadPointsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ] ; 2 uses
  %.sroa.13.i129.i.sroa.20.0.i.i = phi i32 [ undef, %bb.dt ], [ %.sroa.13.i129.i.sroa.20.0.copyload.i.i, %_RNvXsqt_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_19DeletePayloadPointsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ]
  %.sroa.13.i129.i.sroa.16.0.i.i = phi i32 [ undef, %bb.dt ], [ %.sroa.13.i129.i.sroa.16.0.copyload.i.i, %_RNvXsqt_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_19DeletePayloadPointsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ] ; 2 uses
  %.sroa.13.i129.i.sroa.15.0.i.i = phi i32 [ undef, %bb.dt ], [ %.sroa.13.i129.i.sroa.15.0.copyload.i.i, %_RNvXsqt_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_19DeletePayloadPointsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ]
  %.sroa.13.i129.i.sroa.13.0.i.i = phi i8 [ undef, %bb.dt ], [ %.sroa.13.i129.i.sroa.13.0.copyload.i.i, %_RNvXsqt_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_19DeletePayloadPointsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ]
  %.sroa.13.i129.i.sroa.12.0.i.i = phi i32 [ undef, %bb.dt ], [ %.sroa.13.i129.i.sroa.12.0.copyload.i.i, %_RNvXsqt_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_19DeletePayloadPointsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ]
  %.sroa.13.i129.i.sroa.11.0.i.i = phi i32 [ undef, %bb.dt ], [ %.sroa.13.i129.i.sroa.11.0.copyload.i.i, %_RNvXsqt_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_19DeletePayloadPointsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ] ; 2 uses
  %.sroa.13.i129.i.sroa.6.0.i.i = phi i32 [ undef, %bb.dt ], [ %.sroa.13.i129.i.sroa.6.0.copyload.i.i, %_RNvXsqt_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_19DeletePayloadPointsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ]
  %.sroa.13.i129.i.sroa.5.0.i.i = phi i32 [ undef, %bb.dt ], [ %.sroa.13.i129.i.sroa.5.0.copyload.i.i, %_RNvXsqt_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_19DeletePayloadPointsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ] ; 2 uses
  %.sroa.13.i129.i.sroa.4.0.i.i = phi i32 [ undef, %bb.dt ], [ %.sroa.13.i129.i.sroa.4.0.copyload.i.i, %_RNvXsqt_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_19DeletePayloadPointsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ]
  %.sroa.13.i129.i.sroa.0.0.i.i = phi i64 [ undef, %bb.dt ], [ %.sroa.13.i129.i.sroa.0.0.copyload.i.i, %_RNvXsqt_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_19DeletePayloadPointsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ] ; 2 uses
  %.sroa.16.0.i154.i.i.i = phi i8 [ undef, %bb.dt ], [ %i.ms, %_RNvXsqt_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_19DeletePayloadPointsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ]
  %.sroa.15.0.i155.i.i.i = phi i32 [ undef, %bb.dt ], [ %.sroa.5.0.i.i152.i.i.i, %_RNvXsqt_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_19DeletePayloadPointsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ]
  %.sroa.14.0.i156.i.i.i = phi i32 [ undef, %bb.dt ], [ %i.mz, %_RNvXsqt_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_19DeletePayloadPointsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ]
  %.sroa.1223.0.i157.i.i.i = phi i64 [ undef, %bb.dt ], [ %.sroa.54.sroa.6.0.i.i148.i.i.i, %_RNvXsqt_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_19DeletePayloadPointsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ] ; 2 uses
  %.sroa.11.0.i158.i.i.i = phi i64 [ undef, %bb.dt ], [ %.sroa.54.sroa.5.0.i.i149.i.i.i, %_RNvXsqt_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_19DeletePayloadPointsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ]
  %.sroa.10.0.i159.i.i.i = phi i64 [ undef, %bb.dt ], [ %.sroa.54.sroa.4.0.i.i150.i.i.i, %_RNvXsqt_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_19DeletePayloadPointsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ] ; 2 uses
  %.sroa.819.0.i160.i.i.i = phi i64 [ undef, %bb.dt ], [ %.sroa.02.0.i.i151.i.i.i, %_RNvXsqt_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_19DeletePayloadPointsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ] ; 2 uses
  %.sroa.516.0.i161.i.i.i = phi i64 [ undef, %bb.dt ], [ %.sroa.57.0.i.i153.i.i.i, %_RNvXsqt_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_19DeletePayloadPointsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ]
  %i.nt = phi <4 x i8> [ undef, %bb.dt ], [ %i.nr, %_RNvXsqt_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_19DeletePayloadPointsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ]
  %i.nu = phi <2 x i32> [ undef, %bb.dt ], [ %i.ns, %_RNvXsqt_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_19DeletePayloadPointsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ]
  %i.nv = phi <2 x i64> [ undef, %bb.dt ], [ %i.nq, %_RNvXsqt_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_19DeletePayloadPointsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ]
  %i.nw = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 240
  %i.nx = load i32, ptr %i.nw, align 8, !range !98, !alias.scope !22758, !noalias !22759, !noundef !38 ; 2 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 244
  %i.nz = load i32, ptr %i.ny, align 4, !alias.scope !22758, !noalias !22759
  %i.oa = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 284
  %i.ob = load i8, ptr %i.oa, align 4, !range !72, !alias.scope !22758, !noalias !22759, !noundef !38 ; 2 uses
  %.not10.i162.i.i.i = icmp eq i8 %i.ob, 2
  br i1 %.not10.i162.i.i.i, label %_RNvXsHh_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_27DeletePayloadPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.oc = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 256
  %.sroa.01.i125.i.sroa.0.0.copyload.i.i = load i32, ptr %i.oc, align 8, !alias.scope !22683, !noalias !22696
  %.sroa.01.i125.i.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 260
  %.sroa.01.i125.i.sroa.4.0.copyload.i.i = load i8, ptr %.sroa.01.i125.i.sroa.4.0..sroa_idx.i.i, align 4, !alias.scope !22683, !noalias !22696
  %.sroa.01.i125.i.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 261
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.05.i247.i.sroa.9.i.i, ptr noundef nonnull readonly align 1 dereferenceable(3) %.sroa.01.i125.i.sroa.5.0..sroa_idx.i.i, i64 3, i1 false), !noalias !22684
  %.sroa.01.i125.i.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 264
  %.sroa.01.i125.i.sroa.6.0.copyload.i.i = load i32, ptr %.sroa.01.i125.i.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !22683, !noalias !22696
  %.sroa.01.i125.i.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 268
  %.sroa.01.i125.i.sroa.7.0.copyload.i.i = load i8, ptr %.sroa.01.i125.i.sroa.7.0..sroa_idx.i.i, align 4, !alias.scope !22683, !noalias !22696
  %.sroa.01.i125.i.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 269
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.58.i248.i.i.i, ptr noundef nonnull readonly align 1 dereferenceable(3) %.sroa.01.i125.i.sroa.8.0..sroa_idx.i.i, i64 3, i1 false), !noalias !22684
  %.sroa.01.i125.i.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 272
  %i.od = load <2 x i32>, ptr %.sroa.01.i125.i.sroa.9.0..sroa_idx.i.i, align 8, !alias.scope !22683, !noalias !22696
  %.sroa.01.i125.i.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 280
  %.sroa.01.i125.i.sroa.11.0.copyload.i.i = load i32, ptr %.sroa.01.i125.i.sroa.11.0..sroa_idx.i.i, align 8, !alias.scope !22683, !noalias !22696
  %.sroa.515.0..sroa_idx.i163.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 285
  %.sroa.54.i126.i.sroa.0.0.copyload.i.i = load i24, ptr %.sroa.515.0..sroa_idx.i163.i.i.i, align 1, !alias.scope !22683, !noalias !22696
  br label %_RNvXsHh_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_27DeletePayloadPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i

_RNvXsHh_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_27DeletePayloadPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i: ; preds = %bb.ep, %bb.eo
  %.sroa.01.i125.i.sroa.11.0.i.i = phi i32 [ undef, %bb.eo ], [ %.sroa.01.i125.i.sroa.11.0.copyload.i.i, %bb.ep ]
  %.sroa.01.i125.i.sroa.7.0.i.i = phi i8 [ undef, %bb.eo ], [ %.sroa.01.i125.i.sroa.7.0.copyload.i.i, %bb.ep ]
  %.sroa.01.i125.i.sroa.6.0.i.i = phi i32 [ undef, %bb.eo ], [ %.sroa.01.i125.i.sroa.6.0.copyload.i.i, %bb.ep ]
  %.sroa.01.i125.i.sroa.4.0.i.i = phi i8 [ undef, %bb.eo ], [ %.sroa.01.i125.i.sroa.4.0.copyload.i.i, %bb.ep ]
  %.sroa.01.i125.i.sroa.0.0.i.i = phi i32 [ undef, %bb.eo ], [ %.sroa.01.i125.i.sroa.0.0.copyload.i.i, %bb.ep ]
  %.sroa.54.i126.i.sroa.0.0.i.i = phi i24 [ undef, %bb.eo ], [ %.sroa.54.i126.i.sroa.0.0.copyload.i.i, %bb.ep ]
  %i.oe = phi <2 x i32> [ undef, %bb.eo ], [ %i.od, %bb.ep ]
  %i.of = trunc nuw i32 %i.nx to i1
  %.sroa.5.0.i164.i.i.i = select i1 %i.of, i32 %i.nz, i32 undef
  %i.og = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 248
  %i.oh = load i32, ptr %i.og, align 8, !range !98, !alias.scope !22758, !noalias !22759, !noundef !38 ; 2 uses
  %i.oi = trunc nuw i32 %i.oh to i1
  %i.oj = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 252
  %i.ok = load i32, ptr %i.oj, align 4, !alias.scope !22758, !noalias !22759
  %.sroa.57.0.i165.i.i.i = select i1 %i.oi, i32 %i.ok, i32 undef
  %.sroa.65.sroa.0.0.extract.trunc682.i.i = trunc i64 %.sroa.819.0.i160.i.i.i to i32
  %.sroa.65.sroa.16.0.extract.shift695.i.i = lshr i64 %.sroa.819.0.i160.i.i.i, 32
  %.sroa.65.sroa.16.0.extract.trunc696.i.i = trunc nuw i64 %.sroa.65.sroa.16.0.extract.shift695.i.i to i32
  %.sroa.77.sroa.0.sroa.0.0.extract.trunc656.i.i = trunc i64 %.sroa.54.sroa.0.i.i124.i.sroa.0.1.i.i to i8
  %9 = lshr i64 %.sroa.54.sroa.0.i.i124.i.sroa.0.1.i.i, 8
  %.sroa.77.sroa.0.sroa.16.0.extract.trunc675.i.i = trunc i64 %9 to i32
  %.sroa.77.sroa.16.0.extract.shift644.i.i = lshr i64 %.sroa.54.sroa.0.i.i124.i.sroa.0.1.i.i, 32
  %.sroa.85.sroa.0.0.extract.trunc596.i.i = trunc i64 %.sroa.54.sroa.0.i.i124.i.sroa.4.1.i.i to i32
  %.sroa.85.sroa.16.0.extract.shift611.i.i = lshr i64 %.sroa.54.sroa.0.i.i124.i.sroa.4.1.i.i, 32
  %.sroa.85.sroa.16.0.extract.trunc612.i.i = trunc nuw i64 %.sroa.85.sroa.16.0.extract.shift611.i.i to i32
  %.sroa.91.sroa.0.0.extract.trunc566.i.i = trunc i64 %.sroa.10.0.i159.i.i.i to i32
  %.sroa.91.sroa.16.0.extract.shift581.i.i = lshr i64 %.sroa.10.0.i159.i.i.i, 32
  %.sroa.91.sroa.16.0.extract.trunc582.i.i = trunc nuw i64 %.sroa.91.sroa.16.0.extract.shift581.i.i to i32
  %.sroa.105.sroa.0.0.extract.trunc536.i.i = trunc i64 %.sroa.1223.0.i157.i.i.i to i8
  %.sroa.105.sroa.16.0.extract.shift555.i.i = and i64 %.sroa.1223.0.i157.i.i.i, -256
  %.sroa.109.sroa.0.0.extract.trunc503.i.i = trunc i64 %.sroa.13.i129.i.sroa.0.0.i.i to i32
  %.sroa.109.sroa.16.0.extract.shift522.i.i = lshr i64 %.sroa.13.i129.i.sroa.0.0.i.i, 32
  %.sroa.118.sroa.0.0.extract.trunc468.i.i = trunc i32 %.sroa.13.i129.i.sroa.5.0.i.i to i8
  %.sroa.118.sroa.16.0.extract.shift482.i.i = lshr i32 %.sroa.13.i129.i.sroa.5.0.i.i, 8
  %.sroa.118.sroa.16.0.extract.trunc483.i.i = trunc nuw i32 %.sroa.118.sroa.16.0.extract.shift482.i.i to i24
  %.sroa.130.sroa.0.0.extract.trunc441.i.i = trunc i32 %.sroa.13.i129.i.sroa.11.0.i.i to i8
  %.sroa.130.sroa.14.0.extract.shift454.i.i = and i32 %.sroa.13.i129.i.sroa.11.0.i.i, -256
  %.sroa.136.sroa.0.0.extract.trunc414.i.i = trunc i32 %.sroa.13.i129.i.sroa.16.0.i.i to i8
  %.sroa.136.sroa.14.0.extract.shift427.i.i = lshr i32 %.sroa.13.i129.i.sroa.16.0.i.i, 8
  %.sroa.146.sroa.0.0.extract.trunc388.i.i = trunc i32 %.sroa.13.i129.i.sroa.21.0.i.i to i8
  %.sroa.146.sroa.13.0.extract.shift398.i.i = lshr i32 %.sroa.13.i129.i.sroa.21.0.i.i, 8
  %.sroa.151.sroa.0.0.extract.trunc370.i.i = trunc i32 %.sroa.13.i129.i.sroa.22.0.i.i to i8
  %.sroa.151.sroa.12.0.extract.shift378.i.i = and i32 %.sroa.13.i129.i.sroa.22.0.i.i, -256
  %.sroa.155.sroa.0.0.extract.trunc349.i.i = trunc i32 %.sroa.13.i129.i.sroa.24.0.i.i to i8
  %.sroa.155.sroa.12.0.extract.shift358.i.i = and i32 %.sroa.13.i129.i.sroa.24.0.i.i, -256
  br label %_RNvXNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant16update_operationNtB2_6UpdateNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i

bb.eq:                                            ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22772)
  %i.ol = load i64, ptr %i.cj, align 8, !range !49, !alias.scope !22773, !noalias !22774, !noundef !38 ; 3 uses
  %.not.i192.i.i.i = icmp eq i64 %i.ol, 2
  br i1 %.not.i192.i.i.i, label %bb.fi, label %bb.er

bb.er:                                            ; preds = %bb.eq
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22775)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !22776
  %i.om = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 24
  invoke void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.r, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.om)
          to label %.noexc19.i unwind label %.loopexit.i, !noalias !22681

.noexc19.i:                                       ; preds = %bb.er
  %i.on = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 208
  %i.oo = load i8, ptr %i.on, align 8, !range !72, !alias.scope !22777, !noalias !22778, !noundef !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !22776
  %i.op = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 96 ; 2 uses
  %i.oq = load i64, ptr %i.op, align 8, !range !61, !alias.scope !22777, !noalias !22778, !noundef !38 ; 3 uses
  %.not9.i.i193.i.i.i = icmp eq i64 %i.oq, -3
  br i1 %.not9.i.i193.i.i.i, label %bb.ev, label %bb.es

bb.es:                                            ; preds = %.noexc19.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !22776
  switch i64 %i.oq, label %bb.et [
    i64 -2, label %bb.ey
    i64 -1, label %bb.eu
  ]

bb.et:                                            ; preds = %bb.es
  invoke fastcc void @_RNvXs1i_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_6FilterNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(104) %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.op) #34
          to label %.noexc.i.i245.i.i.i unwind label %bb.ex, !noalias !22779

.noexc.i.i245.i.i.i:                              ; preds = %bb.et
  %.sroa.0.0.copyload.pre.i.i.i246.i.i.i = load i64, ptr %i.p, align 8, !noalias !22780
  br label %bb.ey

bb.eu:                                            ; preds = %bb.es
  %i.or = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 104
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant7PointIdENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ca, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.or)
          to label %bb.ey unwind label %bb.ex, !noalias !22779

bb.ev:                                            ; preds = %bb.ey, %.noexc19.i
  %.sroa.12.i191.i.sroa.0.0.copyload.i.i = phi i64 [ %.sroa.0.0.i.i.i196.i.i.i, %bb.ey ], [ -3, %.noexc19.i ] ; 2 uses
  store i64 %.sroa.12.i191.i.sroa.0.0.copyload.i.i, ptr %i.q, align 8, !noalias !22776
  %i.os = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 200
  %i.ot = load i32, ptr %i.os, align 8, !range !98, !alias.scope !22777, !noalias !22778, !noundef !38 ; 2 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 204
  %.val.i.i199.i.i.i = load i32, ptr %i.ou, align 4, !alias.scope !22777, !noalias !22778
  %i.ov = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 48 ; 2 uses
  %i.ow = load i64, ptr %i.ov, align 8, !range !42, !alias.scope !22777, !noalias !22778, !noundef !38
  %.not10.i.i200.i.i.i = icmp eq i64 %i.ow, -1
  br i1 %.not10.i.i200.i.i.i, label %_RNvXsqC_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18ClearPayloadPointsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i, label %bb.fa

bb.ew:                                            ; preds = %.body.i.i201.i.i.i, %bb.ex
  %.pn.i.i194.i.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i202.i.i.i, %.body.i.i201.i.i.i ], [ %i.ox, %bb.ex ]
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %bb.hi unwind label %bb.fh, !noalias !22779

bb.ex:                                            ; preds = %bb.eu, %bb.et
  %i.ox = landingpad { ptr, i32 }
          cleanup
  br label %bb.ew

bb.ey:                                            ; preds = %bb.eu, %.noexc.i.i245.i.i.i, %bb.es
  %.sroa.0.0.i.i.i196.i.i.i = phi i64 [ %i.oq, %bb.es ], [ %.sroa.0.0.copyload.pre.i.i.i246.i.i.i, %.noexc.i.i245.i.i.i ], [ -1, %bb.eu ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.4.0..sroa_idx.i.i197.i.i.i, ptr noundef nonnull align 8 dereferenceable(96) %i.ca, i64 96, i1 false), !noalias !22776
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !22776
  br label %bb.ev

bb.ez:                                            ; preds = %bb.fa
  %i.oy = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i201.i.i.i

.body.i.i201.i.i.i:                               ; preds = %bb.fd, %bb.ez
  %eh.lpad-body.i.i202.i.i.i = phi { ptr, i32 } [ %i.oy, %bb.ez ], [ %i.pd, %bb.fd ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant14PointsSelectorEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(104) %i.q) #31
          to label %bb.ew unwind label %bb.fh, !noalias !22779

bb.fa:                                            ; preds = %bb.ev
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22781)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !22782
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant8ShardKeyENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ov)
          to label %.noexc15.i.i203.i.i.i unwind label %bb.ez, !noalias !22779

.noexc15.i.i203.i.i.i:                            ; preds = %bb.fa
  %i.oz = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 72 ; 2 uses
  %i.pa = load i64, ptr %i.oz, align 8, !range !61, !alias.scope !22783, !noalias !22784, !noundef !38 ; 3 uses
  switch i64 %i.pa, label %bb.fc [
    i64 -3, label %bb.fg
    i64 -2, label %bb.fg
    i64 -1, label %bb.fb
  ]

bb.fb:                                            ; preds = %.noexc15.i.i203.i.i.i
  %i.pb = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 80
  %i.pc = load i64, ptr %i.pb, align 8, !alias.scope !22783, !noalias !22784, !noundef !38
  br label %bb.fg

bb.fc:                                            ; preds = %.noexc15.i.i203.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !22782
  invoke void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.oz)
          to label %bb.fe unwind label %bb.fd, !noalias !22785

bb.fd:                                            ; preds = %bb.fc
  %i.pd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant8ShardKeyEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.o) #31
          to label %.body.i.i201.i.i.i unwind label %bb.ff, !noalias !22785

bb.fe:                                            ; preds = %bb.fc
  %.sroa.06.0.copyload.i.i.i240.i.i.i = load i64, ptr %i.n, align 8, !noalias !22782
  %.sroa.57.0.copyload.i.i.i242.i.i.i = load i64, ptr %.sroa.57.0..sroa_idx.i.i.i241.i.i.i, align 8, !noalias !22782
  %.sroa.7.0.copyload.i.i.i244.i.i.i = load i64, ptr %.sroa.7.0..sroa_idx.i.i.i243.i.i.i, align 8, !noalias !22782
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !22782
  br label %bb.fg

bb.ff:                                            ; preds = %bb.fd
  %i.pe = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28, !noalias !22785
  unreachable

bb.fg:                                            ; preds = %.noexc15.i.i203.i.i.i, %bb.fe, %bb.fb, %.noexc15.i.i203.i.i.i
  %.sroa.5.sroa.4.0.i.i.i204.i.i.i = phi i64 [ undef, %.noexc15.i.i203.i.i.i ], [ %.sroa.7.0.copyload.i.i.i244.i.i.i, %bb.fe ], [ undef, %bb.fb ], [ undef, %.noexc15.i.i203.i.i.i ]
  %.sroa.5.sroa.0.0.i.i.i205.i.i.i = phi i64 [ undef, %.noexc15.i.i203.i.i.i ], [ %.sroa.57.0.copyload.i.i.i242.i.i.i, %bb.fe ], [ %i.pc, %bb.fb ], [ undef, %.noexc15.i.i203.i.i.i ]
  %.sroa.0.0.i14.i.i206.i.i.i = phi i64 [ %i.pa, %.noexc15.i.i203.i.i.i ], [ %.sroa.06.0.copyload.i.i.i240.i.i.i, %bb.fe ], [ -1, %bb.fb ], [ %i.pa, %.noexc15.i.i203.i.i.i ]
  %.sroa.016.0.copyload.i.i207.i.i.i = load i64, ptr %i.o, align 8, !noalias !22786
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.54.sroa.0.i.i187.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.417.0..sroa_idx.i.i208.i.i.i, i64 16, i1 false), !noalias !22695
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !22782
  br label %_RNvXsqC_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18ClearPayloadPointsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i

bb.fh:                                            ; preds = %.body.i.i201.i.i.i, %bb.ew
  %i.pf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28, !noalias !22779
  unreachable

_RNvXsqC_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18ClearPayloadPointsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i: ; preds = %bb.fg, %bb.ev
  %.sroa.54.sroa.6.0.i.i209.i.i.i = phi i64 [ undef, %bb.ev ], [ %.sroa.5.sroa.4.0.i.i.i204.i.i.i, %bb.fg ]
  %.sroa.54.sroa.5.0.i.i210.i.i.i = phi i64 [ undef, %bb.ev ], [ %.sroa.5.sroa.0.0.i.i.i205.i.i.i, %bb.fg ]
  %.sroa.54.sroa.4.0.i.i211.i.i.i = phi i64 [ undef, %bb.ev ], [ %.sroa.0.0.i14.i.i206.i.i.i, %bb.fg ]
  %.sroa.02.0.i.i212.i.i.i = phi i64 [ -1, %bb.ev ], [ %.sroa.016.0.copyload.i.i207.i.i.i, %bb.fg ]
  %i.pg = trunc nuw i32 %i.ot to i1
  %.sroa.5.0.i.i213.i.i.i = select i1 %i.pg, i32 %.val.i.i199.i.i.i, i32 undef
  %i.ph = trunc nuw i64 %i.ol to i1
  %i.pi = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 16
  %i.pj = load i64, ptr %i.pi, align 8, !alias.scope !22777, !noalias !22778
  %.sroa.57.0.i.i214.i.i.i = select i1 %i.ph, i64 %i.pj, i64 undef
  %i.pk = load <2 x i64>, ptr %i.r, align 16, !noalias !22694
  %.sroa.6.i190.i.sroa.5.0.copyload.i.i = load i64, ptr %.sroa.6.i190.i.sroa.5.0..sroa_idx.i.i, align 16, !noalias !22694
  %.sroa.12.i191.i.sroa.4.0.copyload.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i197.i.i.i, align 8, !noalias !22694
  %.sroa.12.i191.i.sroa.5.0.copyload.i.i = load i64, ptr %.sroa.12.i191.i.sroa.5.0..sroa_idx.i.i, align 8, !noalias !22694
  %.sroa.12.i191.i.sroa.6.0.copyload.i.i = load i64, ptr %.sroa.12.i191.i.sroa.6.0..sroa_idx.i.i, align 8, !noalias !22694
  %.sroa.12.i191.i.sroa.7.0.copyload.i.i = load i32, ptr %.sroa.12.i191.i.sroa.7.0..sroa_idx.i.i, align 8, !noalias !22694
  %.sroa.12.i191.i.sroa.8.0.copyload.i.i = load i32, ptr %.sroa.12.i191.i.sroa.8.0..sroa_idx.i.i, align 4, !noalias !22694
  %.sroa.12.i191.i.sroa.9.0.copyload.i.i = load i32, ptr %.sroa.12.i191.i.sroa.9.0..sroa_idx.i.i, align 8, !noalias !22694
  %i.pl = load <4 x i8>, ptr %.sroa.12.i191.i.sroa.10.0..sroa_idx.i.i, align 4, !noalias !22694
  %.sroa.12.i191.i.sroa.14.0.copyload.i.i = load i32, ptr %.sroa.12.i191.i.sroa.14.0..sroa_idx.i.i, align 8, !noalias !22694
  %.sroa.12.i191.i.sroa.15.0.copyload.i.i = load i32, ptr %.sroa.12.i191.i.sroa.15.0..sroa_idx.i.i, align 4, !noalias !22694
  %.sroa.12.i191.i.sroa.16.0.copyload.i.i = load i8, ptr %.sroa.12.i191.i.sroa.16.0..sroa_idx.i.i, align 8, !noalias !22694
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.05.i303.i.sroa.11.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.12.i191.i.sroa.17.0..sroa_idx.i.i, i64 7, i1 false), !noalias !22695
  %.sroa.12.i191.i.sroa.18.0.copyload.i.i = load i32, ptr %.sroa.12.i191.i.sroa.18.0..sroa_idx.i.i, align 8, !noalias !22694
  %.sroa.12.i191.i.sroa.19.0.copyload.i.i = load i32, ptr %.sroa.12.i191.i.sroa.19.0..sroa_idx.i.i, align 4, !noalias !22694
  %i.pm = load <2 x i32>, ptr %.sroa.12.i191.i.sroa.20.0..sroa_idx.i.i, align 8, !noalias !22694
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.sroa.20.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.12.i191.i.sroa.22.0..sroa_idx.i.i, i64 24, i1 false), !noalias !22695
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !22776
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !22776
  br label %bb.fi

bb.fi:                                            ; preds = %_RNvXsqC_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18ClearPayloadPointsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i, %bb.eq
  %.sroa.6.i190.i.sroa.5.0.i.i = phi i64 [ undef, %bb.eq ], [ %.sroa.6.i190.i.sroa.5.0.copyload.i.i, %_RNvXsqC_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18ClearPayloadPointsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ]
  %.sroa.12.i191.i.sroa.19.0.i.i = phi i32 [ undef, %bb.eq ], [ %.sroa.12.i191.i.sroa.19.0.copyload.i.i, %_RNvXsqC_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18ClearPayloadPointsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ] ; 2 uses
  %.sroa.12.i191.i.sroa.18.0.i.i = phi i32 [ undef, %bb.eq ], [ %.sroa.12.i191.i.sroa.18.0.copyload.i.i, %_RNvXsqC_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18ClearPayloadPointsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ]
  %.sroa.12.i191.i.sroa.16.0.i.i = phi i8 [ undef, %bb.eq ], [ %.sroa.12.i191.i.sroa.16.0.copyload.i.i, %_RNvXsqC_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18ClearPayloadPointsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ]
  %.sroa.12.i191.i.sroa.15.0.i.i = phi i32 [ undef, %bb.eq ], [ %.sroa.12.i191.i.sroa.15.0.copyload.i.i, %_RNvXsqC_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18ClearPayloadPointsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ]
  %.sroa.12.i191.i.sroa.14.0.i.i = phi i32 [ undef, %bb.eq ], [ %.sroa.12.i191.i.sroa.14.0.copyload.i.i, %_RNvXsqC_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18ClearPayloadPointsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ] ; 2 uses
  %.sroa.12.i191.i.sroa.9.0.i.i = phi i32 [ undef, %bb.eq ], [ %.sroa.12.i191.i.sroa.9.0.copyload.i.i, %_RNvXsqC_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18ClearPayloadPointsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ]
  %.sroa.12.i191.i.sroa.8.0.i.i = phi i32 [ undef, %bb.eq ], [ %.sroa.12.i191.i.sroa.8.0.copyload.i.i, %_RNvXsqC_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18ClearPayloadPointsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ] ; 2 uses
  %.sroa.12.i191.i.sroa.7.0.i.i = phi i32 [ undef, %bb.eq ], [ %.sroa.12.i191.i.sroa.7.0.copyload.i.i, %_RNvXsqC_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18ClearPayloadPointsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ]
  %.sroa.12.i191.i.sroa.6.0.i.i = phi i64 [ undef, %bb.eq ], [ %.sroa.12.i191.i.sroa.6.0.copyload.i.i, %_RNvXsqC_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18ClearPayloadPointsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ] ; 2 uses
  %.sroa.12.i191.i.sroa.5.0.i.i = phi i64 [ undef, %bb.eq ], [ %.sroa.12.i191.i.sroa.5.0.copyload.i.i, %_RNvXsqC_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18ClearPayloadPointsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ] ; 2 uses
  %.sroa.12.i191.i.sroa.4.0.i.i = phi i64 [ undef, %bb.eq ], [ %.sroa.12.i191.i.sroa.4.0.copyload.i.i, %_RNvXsqC_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18ClearPayloadPointsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ]
  %.sroa.12.i191.i.sroa.0.0.i.i = phi i64 [ undef, %bb.eq ], [ %.sroa.12.i191.i.sroa.0.0.copyload.i.i, %_RNvXsqC_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18ClearPayloadPointsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ] ; 2 uses
  %.sroa.15.0.i215.i.i.i = phi i8 [ undef, %bb.eq ], [ %i.oo, %_RNvXsqC_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18ClearPayloadPointsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ]
  %.sroa.14.0.i216.i.i.i = phi i32 [ undef, %bb.eq ], [ %.sroa.5.0.i.i213.i.i.i, %_RNvXsqC_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18ClearPayloadPointsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ] ; 2 uses
  %.sroa.13.0.i217.i.i.i = phi i32 [ undef, %bb.eq ], [ %i.ot, %_RNvXsqC_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18ClearPayloadPointsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ]
  %.sroa.1122.0.i218.i.i.i = phi i64 [ undef, %bb.eq ], [ %.sroa.54.sroa.6.0.i.i209.i.i.i, %_RNvXsqC_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18ClearPayloadPointsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ] ; 2 uses
  %.sroa.10.0.i219.i.i.i = phi i64 [ undef, %bb.eq ], [ %.sroa.54.sroa.5.0.i.i210.i.i.i, %_RNvXsqC_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18ClearPayloadPointsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ] ; 3 uses
  %.sroa.9.0.i220.i.i.i = phi i64 [ undef, %bb.eq ], [ %.sroa.54.sroa.4.0.i.i211.i.i.i, %_RNvXsqC_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18ClearPayloadPointsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ] ; 2 uses
  %.sroa.718.0.i221.i.i.i = phi i64 [ undef, %bb.eq ], [ %.sroa.02.0.i.i212.i.i.i, %_RNvXsqC_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18ClearPayloadPointsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ]
  %.sroa.516.0.i222.i.i.i = phi i64 [ undef, %bb.eq ], [ %.sroa.57.0.i.i214.i.i.i, %_RNvXsqC_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18ClearPayloadPointsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ]
  %i.pn = phi <4 x i8> [ undef, %bb.eq ], [ %i.pl, %_RNvXsqC_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18ClearPayloadPointsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ]
  %i.po = phi <2 x i32> [ undef, %bb.eq ], [ %i.pm, %_RNvXsqC_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18ClearPayloadPointsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ]
  %i.pp = phi <2 x i64> [ undef, %bb.eq ], [ %i.pk, %_RNvXsqC_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18ClearPayloadPointsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ]
  %i.pq = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 216
  %i.pr = load i32, ptr %i.pq, align 8, !range !98, !alias.scope !22773, !noalias !22774, !noundef !38 ; 2 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 220
  %i.pt = load i32, ptr %i.ps, align 4, !alias.scope !22773, !noalias !22774
  %i.pu = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 260
  %i.pv = load i8, ptr %i.pu, align 4, !range !72, !alias.scope !22773, !noalias !22774, !noundef !38 ; 2 uses
  %.not10.i223.i.i.i = icmp eq i8 %i.pv, 2
  br i1 %.not10.i223.i.i.i, label %_RNvXsHq_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_26ClearPayloadPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.pw = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 232
  %.sroa.01.i188.i.sroa.0.0.copyload.i.i = load i32, ptr %i.pw, align 8, !alias.scope !22683, !noalias !22696
  %.sroa.01.i188.i.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 236
  %.sroa.01.i188.i.sroa.4.0.copyload.i.i = load i32, ptr %.sroa.01.i188.i.sroa.4.0..sroa_idx.i.i, align 4, !alias.scope !22683, !noalias !22696
  %.sroa.01.i188.i.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 240
  %.sroa.01.i188.i.sroa.5.0.copyload.i.i = load i32, ptr %.sroa.01.i188.i.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !22683, !noalias !22696
  %.sroa.01.i188.i.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 244
  %.sroa.01.i188.i.sroa.6.0.copyload.i.i = load i32, ptr %.sroa.01.i188.i.sroa.6.0..sroa_idx.i.i, align 4, !alias.scope !22683, !noalias !22696
  %.sroa.01.i188.i.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 248
  %.sroa.01.i188.i.sroa.7.0.copyload.i.i = load i32, ptr %.sroa.01.i188.i.sroa.7.0..sroa_idx.i.i, align 8, !alias.scope !22683, !noalias !22696
  %.sroa.01.i188.i.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 252
  %.sroa.01.i188.i.sroa.8.0.copyload.i.i = load i32, ptr %.sroa.01.i188.i.sroa.8.0..sroa_idx.i.i, align 4, !alias.scope !22683, !noalias !22696
  %.sroa.01.i188.i.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 256
  %.sroa.01.i188.i.sroa.9.0.copyload.i.i = load i32, ptr %.sroa.01.i188.i.sroa.9.0..sroa_idx.i.i, align 8, !alias.scope !22683, !noalias !22696
  %.sroa.515.0..sroa_idx.i224.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 261
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.05.i247.i.sroa.9.i.i, ptr noundef nonnull readonly align 1 dereferenceable(3) %.sroa.515.0..sroa_idx.i224.i.i.i, i64 3, i1 false), !noalias !22684
  br label %_RNvXsHq_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_26ClearPayloadPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i

_RNvXsHq_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_26ClearPayloadPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i: ; preds = %bb.fj, %bb.fi
  %.sroa.01.i188.i.sroa.9.0.i.i = phi i32 [ undef, %bb.fi ], [ %.sroa.01.i188.i.sroa.9.0.copyload.i.i, %bb.fj ]
  %.sroa.01.i188.i.sroa.8.0.i.i = phi i32 [ undef, %bb.fi ], [ %.sroa.01.i188.i.sroa.8.0.copyload.i.i, %bb.fj ]
  %.sroa.01.i188.i.sroa.7.0.i.i = phi i32 [ undef, %bb.fi ], [ %.sroa.01.i188.i.sroa.7.0.copyload.i.i, %bb.fj ]
  %.sroa.01.i188.i.sroa.6.0.i.i = phi i32 [ undef, %bb.fi ], [ %.sroa.01.i188.i.sroa.6.0.copyload.i.i, %bb.fj ]
  %.sroa.01.i188.i.sroa.5.0.i.i = phi i32 [ undef, %bb.fi ], [ %.sroa.01.i188.i.sroa.5.0.copyload.i.i, %bb.fj ]
  %.sroa.01.i188.i.sroa.4.0.i.i = phi i32 [ undef, %bb.fi ], [ %.sroa.01.i188.i.sroa.4.0.copyload.i.i, %bb.fj ]
  %.sroa.01.i188.i.sroa.0.0.i.i = phi i32 [ undef, %bb.fi ], [ %.sroa.01.i188.i.sroa.0.0.copyload.i.i, %bb.fj ] ; 2 uses
  %i.px = trunc nuw i32 %i.pr to i1
  %.sroa.5.0.i225.i.i.i = select i1 %i.px, i32 %i.pt, i32 undef
  %i.py = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 224
  %i.pz = load i32, ptr %i.py, align 8, !range !98, !alias.scope !22773, !noalias !22774, !noundef !38 ; 2 uses
  %i.qa = trunc nuw i32 %i.pz to i1
  %i.qb = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 228
  %i.qc = load i32, ptr %i.qb, align 4, !alias.scope !22773, !noalias !22774
  %.sroa.57.0.i226.i.i.i = select i1 %i.qa, i32 %i.qc, i32 undef
  %.sroa.65.sroa.0.0.extract.trunc681.i.i = trunc i64 %.sroa.9.0.i220.i.i.i to i32
  %.sroa.65.sroa.16.0.extract.shift693.i.i = lshr i64 %.sroa.9.0.i220.i.i.i, 32
  %.sroa.65.sroa.16.0.extract.trunc694.i.i = trunc nuw i64 %.sroa.65.sroa.16.0.extract.shift693.i.i to i32
  %.sroa.77.sroa.0.sroa.0.0.extract.trunc654.i.i = trunc i64 %.sroa.10.0.i219.i.i.i to i8
  %10 = lshr i64 %.sroa.10.0.i219.i.i.i, 8
  %.sroa.77.sroa.0.sroa.16.0.extract.trunc671.i.i = trunc i64 %10 to i32
  %.sroa.77.sroa.16.0.extract.shift640.i.i = lshr i64 %.sroa.10.0.i219.i.i.i, 32
  %.sroa.85.sroa.0.0.extract.trunc599.i.i = trunc i64 %.sroa.1122.0.i218.i.i.i to i32
  %.sroa.85.sroa.16.0.extract.shift617.i.i = lshr i64 %.sroa.1122.0.i218.i.i.i, 32
  %.sroa.85.sroa.16.0.extract.trunc618.i.i = trunc nuw i64 %.sroa.85.sroa.16.0.extract.shift617.i.i to i32
  %.sroa.91.sroa.0.0.extract.trunc568.i.i = trunc i64 %.sroa.12.i191.i.sroa.0.0.i.i to i32
  %.sroa.91.sroa.16.0.extract.shift585.i.i = lshr i64 %.sroa.12.i191.i.sroa.0.0.i.i, 32
  %.sroa.91.sroa.16.0.extract.trunc586.i.i = trunc nuw i64 %.sroa.91.sroa.16.0.extract.shift585.i.i to i32
  %.sroa.105.sroa.0.0.extract.trunc531.i.i = trunc i64 %.sroa.12.i191.i.sroa.5.0.i.i to i8
  %.sroa.105.sroa.16.0.extract.shift545.i.i = and i64 %.sroa.12.i191.i.sroa.5.0.i.i, -256
  %.sroa.109.sroa.0.0.extract.trunc497.i.i = trunc i64 %.sroa.12.i191.i.sroa.6.0.i.i to i32
  %.sroa.109.sroa.16.0.extract.shift510.i.i = lshr i64 %.sroa.12.i191.i.sroa.6.0.i.i, 32
  %.sroa.118.sroa.0.0.extract.trunc466.i.i = trunc i32 %.sroa.12.i191.i.sroa.8.0.i.i to i8
  %.sroa.118.sroa.16.0.extract.shift478.i.i = lshr i32 %.sroa.12.i191.i.sroa.8.0.i.i, 8
  %.sroa.118.sroa.16.0.extract.trunc479.i.i = trunc nuw i32 %.sroa.118.sroa.16.0.extract.shift478.i.i to i24
  %.sroa.130.sroa.0.0.extract.trunc439.i.i = trunc i32 %.sroa.12.i191.i.sroa.14.0.i.i to i8
  %.sroa.130.sroa.14.0.extract.shift450.i.i = and i32 %.sroa.12.i191.i.sroa.14.0.i.i, -256
  %.sroa.136.sroa.0.0.extract.trunc412.i.i = trunc i32 %.sroa.12.i191.i.sroa.19.0.i.i to i8
  %.sroa.136.sroa.14.0.extract.shift423.i.i = lshr i32 %.sroa.12.i191.i.sroa.19.0.i.i, 8
  %.sroa.146.sroa.0.0.extract.trunc392.i.i = trunc i32 %.sroa.14.0.i216.i.i.i to i8
  %.sroa.146.sroa.13.0.extract.shift406.i.i = lshr i32 %.sroa.14.0.i216.i.i.i, 8
  %.sroa.155.sroa.0.0.extract.trunc352.i.i = trunc nuw nsw i32 %i.pr to i8
  %.sroa.172.sroa.0.0.extract.trunc335.i.i = trunc i32 %.sroa.01.i188.i.sroa.0.0.i.i to i8
  %.sroa.172.sroa.12.0.extract.shift343.i.i = and i32 %.sroa.01.i188.i.sroa.0.0.i.i, -256
  br label %_RNvXNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant16update_operationNtB2_6UpdateNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i

bb.fk:                                            ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22787)
  %i.qd = load i64, ptr %i.cj, align 8, !range !49, !alias.scope !22788, !noalias !22789, !noundef !38 ; 3 uses
  %.not.i249.i.i.i = icmp eq i64 %i.qd, 2
  br i1 %.not.i249.i.i.i, label %bb.gk, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22790)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !22791
  %i.qe = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 152
  invoke void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.qe)
          to label %.noexc20.i unwind label %.loopexit.i, !noalias !22681

.noexc20.i:                                       ; preds = %bb.fl
  %i.qf = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 216
  %i.qg = load i8, ptr %i.qf, align 8, !range !72, !alias.scope !22792, !noalias !22793, !noundef !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !22791
  %i.qh = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 176
  invoke void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.qh)
          to label %bb.fn unwind label %bb.fm, !noalias !22794

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit19.i.i.i.i.i: ; preds = %.body.i.i277.i.i.i, %bb.fm
  %.pn.i.i250.i.i.i = phi { ptr, i32 } [ %i.qi, %bb.fm ], [ %eh.lpad-body.i.i278.i.i.i, %.body.i.i277.i.i.i ]
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %bb.hi unwind label %bb.gj, !noalias !22794

bb.fm:                                            ; preds = %.noexc20.i
  %i.qi = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit19.i.i.i.i.i

bb.fn:                                            ; preds = %.noexc20.i
  %i.qj = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 200
  %i.qk = load i32, ptr %i.qj, align 8, !range !98, !alias.scope !22792, !noalias !22793, !noundef !38 ; 2 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 204
  %i.qm = load i32, ptr %i.ql, align 4, !alias.scope !22792, !noalias !22793
  %i.qn = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 24
  %i.qo = load i64, ptr %i.qn, align 8, !range !57, !alias.scope !22792, !noalias !22793, !noundef !38 ; 7 uses
  %switch = icmp ugt i64 %i.qo, -3
  br i1 %switch, label %_RNvXsqL_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_26CreateFieldIndexCollectionNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.qp = icmp ne i64 %i.qo, 6
  tail call void @llvm.assume(i1 %i.qp)
  %i.qq = add nsw i64 %i.qo, -2
  %i.qr = icmp samesign ugt i64 %i.qo, 1
  %i.qs = select i1 %i.qr, i64 %i.qq, i64 4
  switch i64 %i.qs, label %bb.fp [
    i64 0, label %bb.fq
    i64 1, label %bb.fr
    i64 2, label %bb.fs
    i64 3, label %bb.ft
    i64 4, label %bb.fu
    i64 5, label %bb.ge
    i64 6, label %bb.gf
    i64 7, label %bb.gg
  ]

bb.fp:                                            ; preds = %bb.fo
  unreachable

bb.fq:                                            ; preds = %bb.fo
  %i.qt = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 32
  %.sroa.066.0.copyload.i.i.i.i.i = load i64, ptr %i.qt, align 8, !alias.scope !22792, !noalias !22793
  %.sroa.467.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 40
  %.sroa.467.0.copyload.i.i.i.i.i = load i32, ptr %.sroa.467.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !22792, !noalias !22793
  %.sroa.11.sroa.11.0.insert.ext.i.i.i.i.i = zext i32 %.sroa.467.0.copyload.i.i.i.i.i to i64
  br label %_RNvXsqL_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_26CreateFieldIndexCollectionNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i

bb.fr:                                            ; preds = %bb.fo
  %i.qu = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 32
  %.sroa.068.0.copyload.i.i.i.i.i = load i64, ptr %i.qu, align 8, !alias.scope !22792, !noalias !22793
  %.sroa.469.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 40
  %.sroa.469.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.469.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !22792, !noalias !22793
  br label %_RNvXsqL_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_26CreateFieldIndexCollectionNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i

bb.fs:                                            ; preds = %bb.fo
  %i.qv = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 32
  %.sroa.064.0.copyload.i.i.i.i.i = load i64, ptr %i.qv, align 8, !alias.scope !22792, !noalias !22793
  %.sroa.465.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 40
  %.sroa.465.0.copyload.i.i.i.i.i = load i32, ptr %.sroa.465.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !22792, !noalias !22793
  %.sroa.11.sroa.11.0.insert.ext39.i.i.i.i.i = zext i32 %.sroa.465.0.copyload.i.i.i.i.i to i64
  br label %_RNvXsqL_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_26CreateFieldIndexCollectionNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i

bb.ft:                                            ; preds = %bb.fo
  %i.qw = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 32
  %.sroa.062.0.copyload.i.i.i.i.i = load i64, ptr %i.qw, align 8, !alias.scope !22792, !noalias !22793
  %.sroa.463.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 40
  %.sroa.463.0.copyload.i.i.i.i.i = load i32, ptr %.sroa.463.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !22792, !noalias !22793
  %.sroa.11.sroa.11.0.insert.ext44.i.i.i.i.i = zext i32 %.sroa.463.0.copyload.i.i.i.i.i to i64
  br label %_RNvXsqL_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_26CreateFieldIndexCollectionNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i

bb.fu:                                            ; preds = %bb.fo
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22795)
  %i.qx = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 136
  %i.qy = load i32, ptr %i.qx, align 8, !alias.scope !22796, !noalias !22797, !noundef !38
  %i.qz = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 140
  %i.ra = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 32
  %i.rb = load i64, ptr %i.ra, align 8, !alias.scope !22796, !noalias !22797
  %i.rc = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 40
  %i.rd = load i64, ptr %i.rc, align 8, !range !43, !alias.scope !22796, !noalias !22797, !noundef !38 ; 2 uses
  %i.re = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 48
  %i.rf = load i64, ptr %i.re, align 8, !alias.scope !22796, !noalias !22797
  %i.rg = load <2 x i8>, ptr %i.qz, align 4, !alias.scope !22796, !noalias !22797
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !22798
  %i.rh = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 56 ; 2 uses
  %i.ri = load i64, ptr %i.rh, align 8, !range !42, !alias.scope !22796, !noalias !22797, !noundef !38
  %.not24.i.i.i.i.i.i = icmp eq i64 %i.ri, -1
  br i1 %.not24.i.i.i.i.i.i, label %bb.fy, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !22799
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.rh)
          to label %.noexc.i.i279.i.i.i unwind label %bb.gh, !noalias !22794

.noexc.i.i279.i.i.i:                              ; preds = %bb.fv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !22799
  %i.rj = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 80
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.rj)
          to label %_RNvXsc6_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_12StopwordsSetNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i.i unwind label %bb.fw, !noalias !22800

bb.fw:                                            ; preds = %.noexc.i.i279.i.i.i
  %i.rk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBG_6string6StringEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #31
          to label %.body.i.i277.i.i.i unwind label %bb.fx, !noalias !22801

bb.fx:                                            ; preds = %bb.fw
  %i.rl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28, !noalias !22801
  unreachable

_RNvXsc6_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_12StopwordsSetNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i.i: ; preds = %.noexc.i.i279.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !22802
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bz, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !22802
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !22799
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !22799
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.k, ptr noundef nonnull align 8 dereferenceable(48) %i.j, i64 48, i1 false), !noalias !22798
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.fz

bb.fy:                                            ; preds = %bb.fu
  store i64 -1, ptr %i.k, align 8, !noalias !22798
  br label %bb.fz

bb.fz:                                            ; preds = %bb.fy, %_RNvXsc6_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_12StopwordsSetNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i.i
  %i.rm = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 142
  %i.rn = load i8, ptr %i.rm, align 2, !range !72, !alias.scope !22796, !noalias !22797, !noundef !38
  %i.ro = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 104 ; 2 uses
  %i.rp = load i64, ptr %i.ro, align 8, !range !61, !alias.scope !22796, !noalias !22797, !noundef !38 ; 2 uses
  %i.rq = icmp ugt i64 %i.rp, -4
  br i1 %i.rq, label %bb.gi, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !22798
  invoke void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ro)
          to label %bb.gc unwind label %bb.gb, !noalias !22803

bb.gb:                                            ; preds = %bb.ga
  %i.rr = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant12StopwordsSetEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(48) %i.k) #31
          to label %.body.i.i277.i.i.i unwind label %bb.gd, !noalias !22803

bb.gc:                                            ; preds = %bb.ga
  %.sroa.019.0.copyload.i.i.i.i.i.i = load i64, ptr %i.i, align 8, !noalias !22798
  %.sroa.518.i.i.i.i.sroa.0.0.copyload.i.i = load i64, ptr %.sroa.420.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !22694
  %.sroa.518.i.i.i.i.sroa.4.0.copyload.i.i = load i64, ptr %.sroa.518.i.i.i.i.sroa.4.0..sroa.420.0..sroa_idx.i.i.i.i.sroa_idx.i.i, align 8, !noalias !22694
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !22798
  br label %bb.gi

bb.gd:                                            ; preds = %bb.gb
  %i.rs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28, !noalias !22803
  unreachable

bb.ge:                                            ; preds = %bb.fo
  %i.rt = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 32
  %.sroa.070.0.copyload.i.i.i.i.i = load i64, ptr %i.rt, align 8, !alias.scope !22792, !noalias !22793
  %.sroa.4.0..sroa_idx.i.i276.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 40
  %.sroa.4.0.copyload.i.i.i.i.i = load i32, ptr %.sroa.4.0..sroa_idx.i.i276.i.i.i, align 8, !alias.scope !22792, !noalias !22793
  %.sroa.11.sroa.11.0.insert.ext49.i.i.i.i.i = zext i32 %.sroa.4.0.copyload.i.i.i.i.i to i64
  br label %_RNvXsqL_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_26CreateFieldIndexCollectionNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i

bb.gf:                                            ; preds = %bb.fo
  %i.ru = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 32
  %.sroa.071.0.copyload.i.i.i.i.i = load i64, ptr %i.ru, align 8, !alias.scope !22792, !noalias !22793
  %.sroa.472.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 40
  %.sroa.472.0.copyload.i.i.i.i.i = load i32, ptr %.sroa.472.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !22792, !noalias !22793
  %.sroa.11.sroa.11.0.insert.ext54.i.i.i.i.i = zext i32 %.sroa.472.0.copyload.i.i.i.i.i to i64
  br label %_RNvXsqL_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_26CreateFieldIndexCollectionNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i

bb.gg:                                            ; preds = %bb.fo
  %i.rv = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 32
  %.sroa.073.0.copyload.i.i.i.i.i = load i64, ptr %i.rv, align 8, !alias.scope !22792, !noalias !22793
  %.sroa.474.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 40
  %.sroa.474.0.copyload.i.i.i.i.i = load i32, ptr %.sroa.474.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !22792, !noalias !22793
  %.sroa.11.sroa.11.0.insert.ext59.i.i.i.i.i = zext i32 %.sroa.474.0.copyload.i.i.i.i.i to i64
  br label %_RNvXsqL_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_26CreateFieldIndexCollectionNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i

bb.gh:                                            ; preds = %bb.fv
  %i.rw = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i277.i.i.i

.body.i.i277.i.i.i:                               ; preds = %bb.gh, %bb.gb, %bb.fw
  %eh.lpad-body.i.i278.i.i.i = phi { ptr, i32 } [ %i.rw, %bb.gh ], [ %i.rk, %bb.fw ], [ %i.rr, %bb.gb ]
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit19.i.i.i.i.i unwind label %bb.gj, !noalias !22794

bb.gi:                                            ; preds = %bb.gc, %bb.fz
  %.sroa.518.i.i.i.i.sroa.4.2.i.i = phi i64 [ undef, %bb.fz ], [ %.sroa.518.i.i.i.i.sroa.4.0.copyload.i.i, %bb.gc ]
  %.sroa.518.i.i.i.i.sroa.0.2.i.i = phi i64 [ undef, %bb.fz ], [ %.sroa.518.i.i.i.i.sroa.0.0.copyload.i.i, %bb.gc ]
  %.sroa.06.0.i.i.i.i.i.i = phi i64 [ %i.rp, %bb.fz ], [ %.sroa.019.0.copyload.i.i.i.i.i.i, %bb.gc ]
  %i.rx = trunc nuw i64 %i.rd to i1
  %.sroa.53.0.i.i.i.i.i.i = select i1 %i.rx, i64 %i.rf, i64 undef
  %i.ry = trunc nuw i64 %i.qo to i1
  %.sroa.5.0.i.i.i.i.i.i = select i1 %i.ry, i64 %i.rb, i64 undef
  %i.rz = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 143
  %i.sa = load i8, ptr %i.rz, align 1, !range !72, !alias.scope !22796, !noalias !22797, !noundef !38
  %i.sb = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 144
  %i.sc = load i8, ptr %i.sb, align 8, !range !72, !alias.scope !22796, !noalias !22797, !noundef !38
  %i.sd = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 128
  %i.se = load i32, ptr %i.sd, align 8, !range !98, !alias.scope !22796, !noalias !22797, !noundef !38 ; 2 uses
  %i.sf = trunc nuw i32 %i.se to i1
  %i.sg = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 132
  %i.sh = load i32, ptr %i.sg, align 4, !alias.scope !22796, !noalias !22797
  %.sroa.513.0.i.i.i.i.i.i = select i1 %i.sf, i32 %i.sh, i32 undef
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11.sroa.13.i.i.i.sroa.0.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.k, i64 16, i1 false), !noalias !22694
  %.sroa.11.sroa.13.i.i.i.sroa.4.0.copyload.i.i = load i64, ptr %.sroa.11.sroa.13.i.i.i.sroa.4.0..sroa_idx.i.i, align 8, !noalias !22694
  %.sroa.11.sroa.13.i.i.i.sroa.5.0.copyload.i.i = load i64, ptr %.sroa.11.sroa.13.i.i.i.sroa.5.0..sroa_idx.i.i, align 8, !noalias !22694
  %.sroa.11.sroa.13.i.i.i.sroa.6.0.copyload.i.i = load i64, ptr %.sroa.11.sroa.13.i.i.i.sroa.6.0..sroa_idx.i.i, align 8, !noalias !22694
  %.sroa.11.sroa.13.i.i.i.sroa.7.0.copyload.i.i = load i64, ptr %.sroa.11.sroa.13.i.i.i.sroa.7.0..sroa_idx.i.i, align 8, !noalias !22694
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !22798
  %i.si = insertelement <2 x i8> poison, i8 %i.rn, i64 0
  %i.sj = insertelement <2 x i8> %i.si, i8 %i.sa, i64 1
  br label %_RNvXsqL_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_26CreateFieldIndexCollectionNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i

bb.gj:                                            ; preds = %.body.i.i277.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit19.i.i.i.i.i
  %i.sk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28, !noalias !22794
  unreachable

_RNvXsqL_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_26CreateFieldIndexCollectionNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i: ; preds = %bb.fn, %bb.gi, %bb.gg, %bb.gf, %bb.ge, %bb.ft, %bb.fs, %bb.fr, %bb.fq
  %.sroa.518.i.i.i.i.sroa.4.0.i.i = phi i64 [ undef, %bb.fq ], [ undef, %bb.fr ], [ undef, %bb.fs ], [ undef, %bb.ft ], [ %.sroa.518.i.i.i.i.sroa.4.2.i.i, %bb.gi ], [ undef, %bb.ge ], [ undef, %bb.gf ], [ undef, %bb.gg ], [ undef, %bb.fn ]
  %.sroa.518.i.i.i.i.sroa.0.0.i.i = phi i64 [ undef, %bb.fq ], [ undef, %bb.fr ], [ undef, %bb.fs ], [ undef, %bb.ft ], [ %.sroa.518.i.i.i.i.sroa.0.2.i.i, %bb.gi ], [ undef, %bb.ge ], [ undef, %bb.gf ], [ undef, %bb.gg ], [ undef, %bb.fn ]
  %.sroa.11.sroa.13.i.i.i.sroa.7.0.i.i = phi i64 [ undef, %bb.fq ], [ undef, %bb.fr ], [ undef, %bb.fs ], [ undef, %bb.ft ], [ %.sroa.11.sroa.13.i.i.i.sroa.7.0.copyload.i.i, %bb.gi ], [ undef, %bb.ge ], [ undef, %bb.gf ], [ undef, %bb.gg ], [ undef, %bb.fn ]
  %.sroa.11.sroa.13.i.i.i.sroa.6.0.i.i = phi i64 [ undef, %bb.fq ], [ undef, %bb.fr ], [ undef, %bb.fs ], [ undef, %bb.ft ], [ %.sroa.11.sroa.13.i.i.i.sroa.6.0.copyload.i.i, %bb.gi ], [ undef, %bb.ge ], [ undef, %bb.gf ], [ undef, %bb.gg ], [ undef, %bb.fn ]
  %.sroa.11.sroa.13.i.i.i.sroa.5.0.i.i = phi i64 [ undef, %bb.fq ], [ undef, %bb.fr ], [ undef, %bb.fs ], [ undef, %bb.ft ], [ %.sroa.11.sroa.13.i.i.i.sroa.5.0.copyload.i.i, %bb.gi ], [ undef, %bb.ge ], [ undef, %bb.gf ], [ undef, %bb.gg ], [ undef, %bb.fn ]
  %.sroa.11.sroa.13.i.i.i.sroa.4.0.i.i = phi i64 [ undef, %bb.fq ], [ undef, %bb.fr ], [ undef, %bb.fs ], [ undef, %bb.ft ], [ %.sroa.11.sroa.13.i.i.i.sroa.4.0.copyload.i.i, %bb.gi ], [ undef, %bb.ge ], [ undef, %bb.gf ], [ undef, %bb.gg ], [ undef, %bb.fn ]
  %.sroa.54.sroa.7.0.i.i.i.i.i = phi i64 [ undef, %bb.fq ], [ undef, %bb.fr ], [ undef, %bb.fs ], [ undef, %bb.ft ], [ %.sroa.06.0.i.i.i.i.i.i, %bb.gi ], [ undef, %bb.ge ], [ undef, %bb.gf ], [ undef, %bb.gg ], [ undef, %bb.fn ]
  %.sroa.54.sroa.5.0.i.i252.i.i.i = phi i64 [ undef, %bb.fq ], [ undef, %bb.fr ], [ undef, %bb.fs ], [ undef, %bb.ft ], [ %.sroa.53.0.i.i.i.i.i.i, %bb.gi ], [ undef, %bb.ge ], [ undef, %bb.gf ], [ undef, %bb.gg ], [ undef, %bb.fn ]
  %.sroa.54.sroa.4.0.i.i253.i.i.i = phi i64 [ %.sroa.11.sroa.11.0.insert.ext.i.i.i.i.i, %bb.fq ], [ %.sroa.469.0.copyload.i.i.i.i.i, %bb.fr ], [ %.sroa.11.sroa.11.0.insert.ext39.i.i.i.i.i, %bb.fs ], [ %.sroa.11.sroa.11.0.insert.ext44.i.i.i.i.i, %bb.ft ], [ %i.rd, %bb.gi ], [ %.sroa.11.sroa.11.0.insert.ext49.i.i.i.i.i, %bb.ge ], [ %.sroa.11.sroa.11.0.insert.ext54.i.i.i.i.i, %bb.gf ], [ %.sroa.11.sroa.11.0.insert.ext59.i.i.i.i.i, %bb.gg ], [ undef, %bb.fn ]
  %.sroa.54.sroa.0.0.i.i.i.i.i = phi i64 [ %.sroa.066.0.copyload.i.i.i.i.i, %bb.fq ], [ %.sroa.068.0.copyload.i.i.i.i.i, %bb.fr ], [ %.sroa.064.0.copyload.i.i.i.i.i, %bb.fs ], [ %.sroa.062.0.copyload.i.i.i.i.i, %bb.ft ], [ %.sroa.5.0.i.i.i.i.i.i, %bb.gi ], [ %.sroa.070.0.copyload.i.i.i.i.i, %bb.ge ], [ %.sroa.071.0.copyload.i.i.i.i.i, %bb.gf ], [ %.sroa.073.0.copyload.i.i.i.i.i, %bb.gg ], [ undef, %bb.fn ]
  %.sroa.54.sroa.9.0.i.i.i.i.i = phi i32 [ undef, %bb.fq ], [ undef, %bb.fr ], [ undef, %bb.fs ], [ undef, %bb.ft ], [ %i.se, %bb.gi ], [ undef, %bb.ge ], [ undef, %bb.gf ], [ undef, %bb.gg ], [ undef, %bb.fn ]
  %.sroa.54.sroa.10.0.i.i.i.i.i = phi i32 [ undef, %bb.fq ], [ undef, %bb.fr ], [ undef, %bb.fs ], [ undef, %bb.ft ], [ %.sroa.513.0.i.i.i.i.i.i, %bb.gi ], [ undef, %bb.ge ], [ undef, %bb.gf ], [ undef, %bb.gg ], [ undef, %bb.fn ]
  %.sroa.54.sroa.11.0.i.i.i.i.i = phi i32 [ undef, %bb.fq ], [ undef, %bb.fr ], [ undef, %bb.fs ], [ undef, %bb.ft ], [ %i.qy, %bb.gi ], [ undef, %bb.ge ], [ undef, %bb.gf ], [ undef, %bb.gg ], [ undef, %bb.fn ]
  %.sroa.54.sroa.16.0.i.i.i.i.i = phi i8 [ undef, %bb.fq ], [ undef, %bb.fr ], [ undef, %bb.fs ], [ undef, %bb.ft ], [ %i.sc, %bb.gi ], [ undef, %bb.ge ], [ undef, %bb.gf ], [ undef, %bb.gg ], [ undef, %bb.fn ]
  %.sroa.02.0.i.i254.i.i.i = phi i64 [ 2, %bb.fq ], [ 3, %bb.fr ], [ 4, %bb.fs ], [ 5, %bb.ft ], [ %i.qo, %bb.gi ], [ 7, %bb.ge ], [ 8, %bb.gf ], [ 9, %bb.gg ], [ %i.qo, %bb.fn ]
  %i.sl = phi <2 x i8> [ undef, %bb.fq ], [ undef, %bb.fr ], [ undef, %bb.fs ], [ undef, %bb.ft ], [ %i.rg, %bb.gi ], [ undef, %bb.ge ], [ undef, %bb.gf ], [ undef, %bb.gg ], [ undef, %bb.fn ]
  %i.sm = phi <2 x i8> [ undef, %bb.fq ], [ undef, %bb.fr ], [ undef, %bb.fs ], [ undef, %bb.ft ], [ %i.sj, %bb.gi ], [ undef, %bb.ge ], [ undef, %bb.gf ], [ undef, %bb.gg ], [ undef, %bb.fn ]
  %i.sn = trunc nuw i32 %i.qk to i1
  %.sroa.5.0.i.i255.i.i.i = select i1 %i.sn, i32 %i.qm, i32 undef
  %i.so = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 208
  %i.sp = load i32, ptr %i.so, align 8, !range !98, !alias.scope !22792, !noalias !22793, !noundef !38 ; 2 uses
  %i.sq = trunc nuw i32 %i.sp to i1
  %i.sr = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 212
  %i.ss = load i32, ptr %i.sr, align 4, !alias.scope !22792, !noalias !22793
  %.sroa.57.0.i.i256.i.i.i = select i1 %i.sq, i32 %i.ss, i32 undef
  %i.st = trunc nuw i64 %i.qd to i1
  %i.su = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 16
  %i.sv = load i64, ptr %i.su, align 8, !alias.scope !22792, !noalias !22793
  %.sroa.59.0.i.i257.i.i.i = select i1 %i.st, i64 %i.sv, i64 undef
  %.sroa.21.i.i.sroa.4.7.copyload.i.i = load i8, ptr %i.m, align 8, !noalias !22694
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.05.i303.i.sroa.11.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.21.i.i.sroa.6.7..sroa_idx.i.i, i64 7, i1 false), !noalias !22695
  %.sroa.21.i.i.sroa.7.7.copyload.i.i = load i32, ptr %.sroa.21.i.i.sroa.7.7..sroa_idx.i.i, align 8, !noalias !22694
  %.sroa.21.i.i.sroa.8.7.copyload.i.i = load i32, ptr %.sroa.21.i.i.sroa.8.7..sroa_idx.i.i, align 4, !noalias !22694
  %i.sw = load <2 x i32>, ptr %.sroa.21.i.i.sroa.9.7..sroa_idx.i.i, align 8, !noalias !22694
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.sroa.20.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !22695
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !22791
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !22791
  %i.sx = shufflevector <2 x i8> %i.sl, <2 x i8> %i.sm, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.sy = insertelement <2 x i64> poison, i64 %.sroa.02.0.i.i254.i.i.i, i64 0
  %i.sz = insertelement <2 x i64> %i.sy, i64 %.sroa.54.sroa.0.0.i.i.i.i.i, i64 1
  br label %bb.gk

bb.gk:                                            ; preds = %_RNvXsqL_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_26CreateFieldIndexCollectionNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i, %bb.fk
  %.sroa.518.i.i.i.i.sroa.4.1.i.i = phi i64 [ undef, %bb.fk ], [ %.sroa.518.i.i.i.i.sroa.4.0.i.i, %_RNvXsqL_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_26CreateFieldIndexCollectionNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ] ; 2 uses
  %.sroa.518.i.i.i.i.sroa.0.1.i.i = phi i64 [ undef, %bb.fk ], [ %.sroa.518.i.i.i.i.sroa.0.0.i.i, %_RNvXsqL_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_26CreateFieldIndexCollectionNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ] ; 2 uses
  %.sroa.11.sroa.13.i.i.i.sroa.7.1.i.i = phi i64 [ undef, %bb.fk ], [ %.sroa.11.sroa.13.i.i.i.sroa.7.0.i.i, %_RNvXsqL_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_26CreateFieldIndexCollectionNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ] ; 2 uses
  %.sroa.11.sroa.13.i.i.i.sroa.6.1.i.i = phi i64 [ undef, %bb.fk ], [ %.sroa.11.sroa.13.i.i.i.sroa.6.0.i.i, %_RNvXsqL_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_26CreateFieldIndexCollectionNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ] ; 2 uses
  %.sroa.11.sroa.13.i.i.i.sroa.5.1.i.i = phi i64 [ undef, %bb.fk ], [ %.sroa.11.sroa.13.i.i.i.sroa.5.0.i.i, %_RNvXsqL_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_26CreateFieldIndexCollectionNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ] ; 3 uses
  %.sroa.11.sroa.13.i.i.i.sroa.4.1.i.i = phi i64 [ undef, %bb.fk ], [ %.sroa.11.sroa.13.i.i.i.sroa.4.0.i.i, %_RNvXsqL_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_26CreateFieldIndexCollectionNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ] ; 2 uses
  %.sroa.21.i.i.sroa.8.0.i.i = phi i32 [ undef, %bb.fk ], [ %.sroa.21.i.i.sroa.8.7.copyload.i.i, %_RNvXsqL_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_26CreateFieldIndexCollectionNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ] ; 2 uses
  %.sroa.21.i.i.sroa.7.0.i.i = phi i32 [ undef, %bb.fk ], [ %.sroa.21.i.i.sroa.7.7.copyload.i.i, %_RNvXsqL_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_26CreateFieldIndexCollectionNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ]
  %.sroa.21.i.i.sroa.4.0.i.i = phi i8 [ undef, %bb.fk ], [ %.sroa.21.i.i.sroa.4.7.copyload.i.i, %_RNvXsqL_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_26CreateFieldIndexCollectionNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ]
  %.sroa.5.sroa.25.0.i.i.i.i = phi i8 [ undef, %bb.fk ], [ %i.qg, %_RNvXsqL_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_26CreateFieldIndexCollectionNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ]
  %.sroa.5.sroa.24.0.i.i.i.i = phi i32 [ undef, %bb.fk ], [ %.sroa.57.0.i.i256.i.i.i, %_RNvXsqL_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_26CreateFieldIndexCollectionNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ]
  %.sroa.5.sroa.23.0.i.i.i.i = phi i32 [ undef, %bb.fk ], [ %i.sp, %_RNvXsqL_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_26CreateFieldIndexCollectionNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ] ; 2 uses
  %.sroa.5.sroa.22.0.i.i.i.i = phi i32 [ undef, %bb.fk ], [ %.sroa.5.0.i.i255.i.i.i, %_RNvXsqL_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_26CreateFieldIndexCollectionNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ] ; 2 uses
  %.sroa.5.sroa.21.0.i.i.i.i = phi i32 [ undef, %bb.fk ], [ %i.qk, %_RNvXsqL_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_26CreateFieldIndexCollectionNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ]
  %.sroa.5.sroa.18.0.i.i.i.i = phi i8 [ undef, %bb.fk ], [ %.sroa.54.sroa.16.0.i.i.i.i.i, %_RNvXsqL_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_26CreateFieldIndexCollectionNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ]
  %.sroa.5.sroa.13.0.i.i.i.i = phi i32 [ undef, %bb.fk ], [ %.sroa.54.sroa.11.0.i.i.i.i.i, %_RNvXsqL_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_26CreateFieldIndexCollectionNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ]
  %.sroa.5.sroa.12.0.i.i.i.i = phi i32 [ undef, %bb.fk ], [ %.sroa.54.sroa.10.0.i.i.i.i.i, %_RNvXsqL_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_26CreateFieldIndexCollectionNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ] ; 2 uses
  %.sroa.5.sroa.11.0.i258.i.i.i = phi i32 [ undef, %bb.fk ], [ %.sroa.54.sroa.9.0.i.i.i.i.i, %_RNvXsqL_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_26CreateFieldIndexCollectionNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ]
  %.sroa.5.sroa.9.0.i259.i.i.i = phi i64 [ undef, %bb.fk ], [ %.sroa.54.sroa.7.0.i.i.i.i.i, %_RNvXsqL_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_26CreateFieldIndexCollectionNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ]
  %.sroa.5.sroa.7.0.i.i.i.i = phi i64 [ undef, %bb.fk ], [ %.sroa.54.sroa.5.0.i.i252.i.i.i, %_RNvXsqL_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_26CreateFieldIndexCollectionNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ]
  %.sroa.5.sroa.6.0.i.i.i.i = phi i64 [ undef, %bb.fk ], [ %.sroa.54.sroa.4.0.i.i253.i.i.i, %_RNvXsqL_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_26CreateFieldIndexCollectionNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ]
  %.sroa.5.sroa.0.0.i260.i.i.i = phi i64 [ undef, %bb.fk ], [ %.sroa.59.0.i.i257.i.i.i, %_RNvXsqL_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_26CreateFieldIndexCollectionNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ]
  %i.ta = phi <4 x i8> [ undef, %bb.fk ], [ %i.sx, %_RNvXsqL_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_26CreateFieldIndexCollectionNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ]
  %i.tb = phi <2 x i32> [ undef, %bb.fk ], [ %i.sw, %_RNvXsqL_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_26CreateFieldIndexCollectionNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ]
  %i.tc = phi <2 x i64> [ undef, %bb.fk ], [ %i.sz, %_RNvXsqL_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_26CreateFieldIndexCollectionNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ]
  %i.td = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 224
  %i.te = load i32, ptr %i.td, align 8, !range !98, !alias.scope !22788, !noalias !22789, !noundef !38 ; 2 uses
  %i.tf = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 228
  %i.tg = load i32, ptr %i.tf, align 4, !alias.scope !22788, !noalias !22789
  %i.th = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 268
  %i.ti = load i8, ptr %i.th, align 4, !range !72, !alias.scope !22788, !noalias !22789, !noundef !38 ; 2 uses
  %.not15.i261.i.i.i = icmp eq i8 %i.ti, 2
  br i1 %.not15.i261.i.i.i, label %_RNvXsHz_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_34CreateFieldIndexCollectionInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i, label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  %i.tj = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 240
  %.sroa.05.i247.i.sroa.0.0.copyload.i.i = load i32, ptr %i.tj, align 8, !alias.scope !22683, !noalias !22696
  %.sroa.05.i247.i.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 244
  %.sroa.05.i247.i.sroa.4.0.copyload.i.i = load i32, ptr %.sroa.05.i247.i.sroa.4.0..sroa_idx.i.i, align 4, !alias.scope !22683, !noalias !22696
  %.sroa.05.i247.i.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 248
  %.sroa.05.i247.i.sroa.5.0.copyload.i.i = load i32, ptr %.sroa.05.i247.i.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !22683, !noalias !22696
  %.sroa.05.i247.i.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 252
  %.sroa.05.i247.i.sroa.6.0.copyload.i.i = load i32, ptr %.sroa.05.i247.i.sroa.6.0..sroa_idx.i.i, align 4, !alias.scope !22683, !noalias !22696
  %.sroa.05.i247.i.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 256
  %.sroa.05.i247.i.sroa.7.0.copyload.i.i = load i32, ptr %.sroa.05.i247.i.sroa.7.0..sroa_idx.i.i, align 8, !alias.scope !22683, !noalias !22696
  %.sroa.05.i247.i.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 260
  %.sroa.05.i247.i.sroa.8.0.copyload.i.i = load i8, ptr %.sroa.05.i247.i.sroa.8.0..sroa_idx.i.i, align 4, !alias.scope !22683, !noalias !22696
  %.sroa.05.i247.i.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 261
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.05.i247.i.sroa.9.i.i, ptr noundef nonnull readonly align 1 dereferenceable(3) %.sroa.05.i247.i.sroa.9.0..sroa_idx.i.i, i64 3, i1 false), !noalias !22684
  %.sroa.05.i247.i.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 264
  %.sroa.05.i247.i.sroa.10.0.copyload.i.i = load i32, ptr %.sroa.05.i247.i.sroa.10.0..sroa_idx.i.i, align 8, !alias.scope !22683, !noalias !22696
  %.sroa.514.0..sroa_idx.i262.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 269
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.58.i248.i.i.i, ptr noundef nonnull readonly align 1 dereferenceable(3) %.sroa.514.0..sroa_idx.i262.i.i.i, i64 3, i1 false), !noalias !22684
  br label %_RNvXsHz_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_34CreateFieldIndexCollectionInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i

_RNvXsHz_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_34CreateFieldIndexCollectionInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i: ; preds = %bb.gl, %bb.gk
  %.sroa.05.i247.i.sroa.10.0.i.i = phi i32 [ undef, %bb.gk ], [ %.sroa.05.i247.i.sroa.10.0.copyload.i.i, %bb.gl ]
  %.sroa.05.i247.i.sroa.8.0.i.i = phi i8 [ undef, %bb.gk ], [ %.sroa.05.i247.i.sroa.8.0.copyload.i.i, %bb.gl ]
  %.sroa.05.i247.i.sroa.7.0.i.i = phi i32 [ undef, %bb.gk ], [ %.sroa.05.i247.i.sroa.7.0.copyload.i.i, %bb.gl ]
  %.sroa.05.i247.i.sroa.6.0.i.i = phi i32 [ undef, %bb.gk ], [ %.sroa.05.i247.i.sroa.6.0.copyload.i.i, %bb.gl ]
  %.sroa.05.i247.i.sroa.5.0.i.i = phi i32 [ undef, %bb.gk ], [ %.sroa.05.i247.i.sroa.5.0.copyload.i.i, %bb.gl ]
  %.sroa.05.i247.i.sroa.4.0.i.i = phi i32 [ undef, %bb.gk ], [ %.sroa.05.i247.i.sroa.4.0.copyload.i.i, %bb.gl ]
  %.sroa.05.i247.i.sroa.0.0.i.i = phi i32 [ undef, %bb.gk ], [ %.sroa.05.i247.i.sroa.0.0.copyload.i.i, %bb.gl ]
  %i.tk = trunc nuw i32 %i.te to i1
  %.sroa.54.0.i263.i.i.i = select i1 %i.tk, i32 %i.tg, i32 undef
  %i.tl = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 232
  %i.tm = load i32, ptr %i.tl, align 8, !range !98, !alias.scope !22788, !noalias !22789, !noundef !38 ; 2 uses
  %i.tn = trunc nuw i32 %i.tm to i1
  %i.to = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 236
  %i.tp = load i32, ptr %i.to, align 4, !alias.scope !22788, !noalias !22789
  %.sroa.511.0.i264.i.i.i = select i1 %i.tn, i32 %i.tp, i32 undef
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.54.sroa.0.i.i187.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11.sroa.13.i.i.i.sroa.0.i.i, i64 16, i1 false), !noalias !22695
  %.sroa.65.sroa.0.0.extract.trunc680.i.i = trunc i64 %.sroa.11.sroa.13.i.i.i.sroa.4.1.i.i to i32
  %.sroa.65.sroa.16.0.extract.shift691.i.i = lshr i64 %.sroa.11.sroa.13.i.i.i.sroa.4.1.i.i, 32
  %.sroa.65.sroa.16.0.extract.trunc692.i.i = trunc nuw i64 %.sroa.65.sroa.16.0.extract.shift691.i.i to i32
  %.sroa.77.sroa.0.sroa.0.0.extract.trunc651.i.i = trunc i64 %.sroa.11.sroa.13.i.i.i.sroa.5.1.i.i to i8
  %11 = lshr i64 %.sroa.11.sroa.13.i.i.i.sroa.5.1.i.i, 8
  %.sroa.77.sroa.0.sroa.16.0.extract.trunc665.i.i = trunc i64 %11 to i32
  %.sroa.77.sroa.16.0.extract.shift634.i.i = lshr i64 %.sroa.11.sroa.13.i.i.i.sroa.5.1.i.i, 32
  %.sroa.85.sroa.0.0.extract.trunc593.i.i = trunc i64 %.sroa.11.sroa.13.i.i.i.sroa.6.1.i.i to i32
  %.sroa.85.sroa.16.0.extract.shift605.i.i = lshr i64 %.sroa.11.sroa.13.i.i.i.sroa.6.1.i.i, 32
  %.sroa.85.sroa.16.0.extract.trunc606.i.i = trunc nuw i64 %.sroa.85.sroa.16.0.extract.shift605.i.i to i32
  %.sroa.91.sroa.0.0.extract.trunc563.i.i = trunc i64 %.sroa.11.sroa.13.i.i.i.sroa.7.1.i.i to i32
  %.sroa.91.sroa.16.0.extract.shift575.i.i = lshr i64 %.sroa.11.sroa.13.i.i.i.sroa.7.1.i.i, 32
  %.sroa.91.sroa.16.0.extract.trunc576.i.i = trunc nuw i64 %.sroa.91.sroa.16.0.extract.shift575.i.i to i32
  %.sroa.105.sroa.0.0.extract.trunc538.i.i = trunc i64 %.sroa.518.i.i.i.i.sroa.0.1.i.i to i8
  %.sroa.105.sroa.16.0.extract.shift559.i.i = and i64 %.sroa.518.i.i.i.i.sroa.0.1.i.i, -256
  %.sroa.109.sroa.0.0.extract.trunc501.i.i = trunc i64 %.sroa.518.i.i.i.i.sroa.4.1.i.i to i32
  %.sroa.109.sroa.16.0.extract.shift518.i.i = lshr i64 %.sroa.518.i.i.i.i.sroa.4.1.i.i, 32
  %.sroa.118.sroa.0.0.extract.trunc473.i.i = trunc i32 %.sroa.5.sroa.12.0.i.i.i.i to i8
  %.sroa.118.sroa.16.0.extract.shift492.i.i = lshr i32 %.sroa.5.sroa.12.0.i.i.i.i, 8
  %.sroa.118.sroa.16.0.extract.trunc493.i.i = trunc nuw i32 %.sroa.118.sroa.16.0.extract.shift492.i.i to i24
  %.sroa.136.sroa.0.0.extract.trunc417.i.i = trunc i32 %.sroa.21.i.i.sroa.8.0.i.i to i8
  %.sroa.136.sroa.14.0.extract.shift433.i.i = lshr i32 %.sroa.21.i.i.sroa.8.0.i.i, 8
  %.sroa.146.sroa.0.0.extract.trunc391.i.i = trunc i32 %.sroa.5.sroa.22.0.i.i.i.i to i8
  %.sroa.146.sroa.13.0.extract.shift404.i.i = lshr i32 %.sroa.5.sroa.22.0.i.i.i.i, 8
  %.sroa.151.sroa.0.0.extract.trunc373.i.i = trunc i32 %.sroa.5.sroa.23.0.i.i.i.i to i8
  %.sroa.151.sroa.12.0.extract.shift384.i.i = and i32 %.sroa.5.sroa.23.0.i.i.i.i, -256
  %.sroa.172.sroa.0.0.extract.trunc334.i.i = trunc nuw nsw i32 %i.tm to i8
  br label %_RNvXNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant16update_operationNtB2_6UpdateNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i

bb.gm:                                            ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22804)
  %i.tq = load i64, ptr %i.cj, align 8, !range !49, !alias.scope !22805, !noalias !22806, !noundef !38 ; 3 uses
  %.not.i284.i.i.i = icmp eq i64 %i.tq, 2
  br i1 %.not.i284.i.i.i, label %bb.gq, label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22807)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !22808
  %i.tr = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 24
  invoke void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.tr)
          to label %.noexc21.i unwind label %.loopexit.i, !noalias !22681

.noexc21.i:                                       ; preds = %bb.gn
  %i.ts = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 80
  %i.tt = load i8, ptr %i.ts, align 8, !range !72, !alias.scope !22809, !noalias !22810, !noundef !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !22808
  %i.tu = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 48
  invoke void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.tu)
          to label %_RNvXsqW_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_26DeleteFieldIndexCollectionNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i unwind label %bb.go, !noalias !22811

bb.go:                                            ; preds = %.noexc21.i
  %i.tv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.hi unwind label %bb.gp, !noalias !22811

bb.gp:                                            ; preds = %bb.go
  %i.tw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28, !noalias !22811
  unreachable

_RNvXsqW_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_26DeleteFieldIndexCollectionNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i: ; preds = %.noexc21.i
  %i.tx = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 72
  %i.ty = load i32, ptr %i.tx, align 8, !range !98, !alias.scope !22809, !noalias !22810, !noundef !38 ; 2 uses
  %i.tz = trunc nuw i32 %i.ty to i1
  %i.ua = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 76
  %i.ub = load i32, ptr %i.ua, align 4, !alias.scope !22809, !noalias !22810
  %.sroa.5.0.i.i286.i.i.i = select i1 %i.tz, i32 %i.ub, i32 undef
  %i.uc = trunc nuw i64 %i.tq to i1
  %i.ud = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 16
  %i.ue = load i64, ptr %i.ud, align 8, !alias.scope !22809, !noalias !22810
  %.sroa.53.0.i.i287.i.i.i = select i1 %i.uc, i64 %i.ue, i64 undef
  %i.uf = load <2 x i64>, ptr %i.f, align 16, !noalias !22694
  %.sroa.5.sroa.4.i282.i.sroa.5.0.copyload.i.i = load i64, ptr %.sroa.5.sroa.4.i282.i.sroa.5.0..sroa_idx.i.i, align 16, !noalias !22694
  %.sroa.5.sroa.5.i283.i.sroa.0.0.copyload.i.i = load i64, ptr %i.e, align 8, !noalias !22694
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.sroa.5.i283.i.sroa.4.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.sroa.5.i283.i.sroa.4.0..sroa_idx.i.i, i64 16, i1 false), !noalias !22694
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !22808
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !22808
  br label %bb.gq

bb.gq:                                            ; preds = %_RNvXsqW_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_26DeleteFieldIndexCollectionNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i, %bb.gm
  %.sroa.5.sroa.4.i282.i.sroa.5.0.i.i = phi i64 [ undef, %bb.gm ], [ %.sroa.5.sroa.4.i282.i.sroa.5.0.copyload.i.i, %_RNvXsqW_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_26DeleteFieldIndexCollectionNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ]
  %.sroa.5.sroa.5.i283.i.sroa.0.0.i.i = phi i64 [ undef, %bb.gm ], [ %.sroa.5.sroa.5.i283.i.sroa.0.0.copyload.i.i, %_RNvXsqW_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_26DeleteFieldIndexCollectionNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ]
  %.sroa.5.sroa.8.0.i.i.i.i = phi i8 [ undef, %bb.gm ], [ %i.tt, %_RNvXsqW_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_26DeleteFieldIndexCollectionNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ]
  %.sroa.5.sroa.7.0.i288.i.i.i = phi i32 [ undef, %bb.gm ], [ %.sroa.5.0.i.i286.i.i.i, %_RNvXsqW_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_26DeleteFieldIndexCollectionNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ]
  %.sroa.5.sroa.6.0.i289.i.i.i = phi i32 [ undef, %bb.gm ], [ %i.ty, %_RNvXsqW_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_26DeleteFieldIndexCollectionNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ]
  %.sroa.5.sroa.0.0.i290.i.i.i = phi i64 [ undef, %bb.gm ], [ %.sroa.53.0.i.i287.i.i.i, %_RNvXsqW_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_26DeleteFieldIndexCollectionNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ]
  %i.ug = phi <2 x i64> [ undef, %bb.gm ], [ %i.uf, %_RNvXsqW_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_26DeleteFieldIndexCollectionNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ]
  %i.uh = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 88
  %i.ui = load i32, ptr %i.uh, align 8, !range !98, !alias.scope !22805, !noalias !22806, !noundef !38 ; 2 uses
  %i.uj = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 92
  %i.uk = load i32, ptr %i.uj, align 4, !alias.scope !22805, !noalias !22806
  %i.ul = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 132
  %i.um = load i8, ptr %i.ul, align 4, !range !72, !alias.scope !22805, !noalias !22806, !noundef !38 ; 2 uses
  %.not15.i291.i.i.i = icmp eq i8 %i.um, 2
  br i1 %.not15.i291.i.i.i, label %_RNvXsHK_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_34DeleteFieldIndexCollectionInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i, label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  %i.un = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 104
  %.sroa.05.i280.i.sroa.0.0.copyload.i.i = load i64, ptr %i.un, align 8, !alias.scope !22683, !noalias !22696
  %.sroa.05.i280.i.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 112
  %.sroa.05.i280.i.sroa.4.0.copyload.i.i = load i64, ptr %.sroa.05.i280.i.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !22683, !noalias !22696
  %.sroa.05.i280.i.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 120
  %.sroa.05.i280.i.sroa.5.0.copyload.i.i = load i64, ptr %.sroa.05.i280.i.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !22683, !noalias !22696
  %.sroa.05.i280.i.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 128
  %.sroa.05.i280.i.sroa.6.0.copyload.i.i = load i32, ptr %.sroa.05.i280.i.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !22683, !noalias !22696
  %.sroa.514.0..sroa_idx.i292.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 133
  %.sroa.58.i281.i.sroa.0.0.copyload.i.i = load i24, ptr %.sroa.514.0..sroa_idx.i292.i.i.i, align 1, !alias.scope !22683, !noalias !22696
  br label %_RNvXsHK_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_34DeleteFieldIndexCollectionInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i

_RNvXsHK_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_34DeleteFieldIndexCollectionInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i: ; preds = %bb.gr, %bb.gq
  %.sroa.05.i280.i.sroa.6.0.i.i = phi i32 [ undef, %bb.gq ], [ %.sroa.05.i280.i.sroa.6.0.copyload.i.i, %bb.gr ]
  %.sroa.05.i280.i.sroa.5.0.i.i = phi i64 [ undef, %bb.gq ], [ %.sroa.05.i280.i.sroa.5.0.copyload.i.i, %bb.gr ] ; 2 uses
  %.sroa.05.i280.i.sroa.4.0.i.i = phi i64 [ undef, %bb.gq ], [ %.sroa.05.i280.i.sroa.4.0.copyload.i.i, %bb.gr ] ; 2 uses
  %.sroa.05.i280.i.sroa.0.0.i.i = phi i64 [ undef, %bb.gq ], [ %.sroa.05.i280.i.sroa.0.0.copyload.i.i, %bb.gr ]
  %.sroa.58.i281.i.sroa.0.0.i.i = phi i24 [ undef, %bb.gq ], [ %.sroa.58.i281.i.sroa.0.0.copyload.i.i, %bb.gr ]
  %i.uo = trunc nuw i32 %i.ui to i1
  %.sroa.54.0.i293.i.i.i = select i1 %i.uo, i32 %i.uk, i32 undef
  %i.up = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 96
  %i.uq = load i32, ptr %i.up, align 8, !range !98, !alias.scope !22805, !noalias !22806, !noundef !38 ; 2 uses
  %i.ur = trunc nuw i32 %i.uq to i1
  %i.us = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 100
  %i.ut = load i32, ptr %i.us, align 4, !alias.scope !22805, !noalias !22806
  %.sroa.511.0.i294.i.i.i = select i1 %i.ur, i32 %i.ut, i32 undef
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.54.sroa.0.i.i187.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.sroa.5.i283.i.sroa.4.i.i, i64 16, i1 false), !noalias !22695
  %.sroa.105.sroa.0.0.extract.trunc535.i.i = trunc i64 %.sroa.05.i280.i.sroa.4.0.i.i to i8
  %.sroa.105.sroa.16.0.extract.shift553.i.i = and i64 %.sroa.05.i280.i.sroa.4.0.i.i, -256
  %.sroa.109.sroa.0.0.extract.trunc500.i.i = trunc i64 %.sroa.05.i280.i.sroa.5.0.i.i to i32
  %.sroa.109.sroa.16.0.extract.shift516.i.i = lshr i64 %.sroa.05.i280.i.sroa.5.0.i.i, 32
  br label %_RNvXNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant16update_operationNtB2_6UpdateNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i

bb.gs:                                            ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22812)
  %i.uu = load i64, ptr %i.cj, align 8, !range !49, !alias.scope !22813, !noalias !22814, !noundef !38 ; 3 uses
  %.not.i307.i.i.i = icmp eq i64 %i.uu, 2
  br i1 %.not.i307.i.i.i, label %bb.gy, label %bb.gt

bb.gt:                                            ; preds = %bb.gs
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22815)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !22816
  %i.uv = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 24
  invoke void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.uv)
          to label %.noexc22.i unwind label %.loopexit.i, !noalias !22681

.noexc22.i:                                       ; preds = %bb.gt
  %i.uw = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 112
  %i.ux = load i8, ptr %i.uw, align 8, !range !72, !alias.scope !22817, !noalias !22818, !noundef !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !22816
  %i.uy = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 48
  invoke void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.uy)
          to label %bb.gv unwind label %bb.gu, !noalias !22819

bb.gu:                                            ; preds = %.noexc22.i
  %i.uz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.hi unwind label %bb.gx, !noalias !22819

bb.gv:                                            ; preds = %.noexc22.i
  %i.va = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 16
  %i.vb = load i64, ptr %i.va, align 8, !alias.scope !22817, !noalias !22818
  %i.vc = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 72
  %i.vd = load i32, ptr %i.vc, align 8, !range !98, !alias.scope !22817, !noalias !22818, !noundef !38 ; 2 uses
  %i.ve = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 76
  %i.vf = load i32, ptr %i.ve, align 4, !alias.scope !22817, !noalias !22818
  %i.vg = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 80
  %i.vh = load i32, ptr %i.vg, align 8, !range !134, !alias.scope !22817, !noalias !22818, !noundef !38 ; 2 uses
  %.not11.i.i309.i.i.i = icmp eq i32 %i.vh, -1
  br i1 %.not11.i.i309.i.i.i, label %_RNvXsrx_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_23CreateVectorNameRequestNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i, label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  %.sroa.4.0..sroa_idx.i.i310.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 84
  %.sroa.56.i.i.i.sroa.0.0.copyload.i.i = load i32, ptr %.sroa.4.0..sroa_idx.i.i310.i.i.i, align 4, !alias.scope !22683, !noalias !22696
  %.sroa.56.i.i.i.sroa.4.0..sroa.4.0..sroa_idx.i.i310.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 88
  %.sroa.56.i.i.i.sroa.4.0.copyload.i.i = load i64, ptr %.sroa.56.i.i.i.sroa.4.0..sroa.4.0..sroa_idx.i.i310.i.sroa_idx.i.i, align 8, !alias.scope !22683, !noalias !22696
  %.sroa.56.i.i.i.sroa.5.0..sroa.4.0..sroa_idx.i.i310.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 96
  %.sroa.56.i.i.i.sroa.5.0.copyload.i.i = load i64, ptr %.sroa.56.i.i.i.sroa.5.0..sroa.4.0..sroa_idx.i.i310.i.sroa_idx.i.i, align 8, !alias.scope !22683, !noalias !22696
  %.sroa.56.i.i.i.sroa.6.0..sroa.4.0..sroa_idx.i.i310.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 104
  %.sroa.56.i.i.i.sroa.6.0.copyload.i.i = load i64, ptr %.sroa.56.i.i.i.sroa.6.0..sroa.4.0..sroa_idx.i.i310.i.sroa_idx.i.i, align 8, !alias.scope !22683, !noalias !22696
  %i.vi = zext i32 %.sroa.56.i.i.i.sroa.0.0.copyload.i.i to i64
  br label %_RNvXsrx_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_23CreateVectorNameRequestNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i

bb.gx:                                            ; preds = %bb.gu
  %i.vj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28, !noalias !22819
  unreachable

_RNvXsrx_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_23CreateVectorNameRequestNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i: ; preds = %bb.gw, %bb.gv
  %.sroa.56.i.i.i.sroa.6.0.i.i = phi i64 [ undef, %bb.gv ], [ %.sroa.56.i.i.i.sroa.6.0.copyload.i.i, %bb.gw ]
  %.sroa.56.i.i.i.sroa.5.0.i.i = phi i64 [ undef, %bb.gv ], [ %.sroa.56.i.i.i.sroa.5.0.copyload.i.i, %bb.gw ]
  %.sroa.56.i.i.i.sroa.4.0.i.i = phi i64 [ undef, %bb.gv ], [ %.sroa.56.i.i.i.sroa.4.0.copyload.i.i, %bb.gw ]
  %.sroa.56.i.i.i.sroa.0.0.i.i = phi i64 [ 0, %bb.gv ], [ %i.vi, %bb.gw ]
  %i.vk = trunc nuw i32 %i.vd to i1
  %.sroa.53.0.i.i311.i.i.i = select i1 %i.vk, i32 %i.vf, i32 undef
  %i.vl = trunc nuw i64 %i.uu to i1
  %.sroa.5.0.i.i312.i.i.i = select i1 %i.vl, i64 %i.vb, i64 undef
  %i.vm = load <2 x i64>, ptr %i.d, align 16, !noalias !22694
  %.sroa.5.sroa.4.i305.i.sroa.5.0.copyload.i.i = load i64, ptr %.sroa.5.sroa.4.i305.i.sroa.5.0..sroa_idx.i.i, align 16, !noalias !22694
  %.sroa.5.sroa.5.i306.i.sroa.0.0.copyload.i.i = load i64, ptr %i.c, align 8, !noalias !22694
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.sroa.5.i306.i.sroa.4.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.sroa.5.i306.i.sroa.4.0..sroa_idx.i.i, i64 16, i1 false), !noalias !22694
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !22816
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !22816
  br label %bb.gy

bb.gy:                                            ; preds = %_RNvXsrx_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_23CreateVectorNameRequestNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i, %bb.gs
  %.sroa.56.i.i.i.sroa.6.1.i.i = phi i64 [ undef, %bb.gs ], [ %.sroa.56.i.i.i.sroa.6.0.i.i, %_RNvXsrx_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_23CreateVectorNameRequestNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ]
  %.sroa.56.i.i.i.sroa.5.1.i.i = phi i64 [ undef, %bb.gs ], [ %.sroa.56.i.i.i.sroa.5.0.i.i, %_RNvXsrx_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_23CreateVectorNameRequestNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ] ; 2 uses
  %.sroa.56.i.i.i.sroa.4.1.i.i = phi i64 [ undef, %bb.gs ], [ %.sroa.56.i.i.i.sroa.4.0.i.i, %_RNvXsrx_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_23CreateVectorNameRequestNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ] ; 2 uses
  %.sroa.56.i.i.i.sroa.0.1.i.i = phi i64 [ 0, %bb.gs ], [ %.sroa.56.i.i.i.sroa.0.0.i.i, %_RNvXsrx_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_23CreateVectorNameRequestNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ]
  %.sroa.5.sroa.4.i305.i.sroa.5.0.i.i = phi i64 [ undef, %bb.gs ], [ %.sroa.5.sroa.4.i305.i.sroa.5.0.copyload.i.i, %_RNvXsrx_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_23CreateVectorNameRequestNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ]
  %.sroa.5.sroa.5.i306.i.sroa.0.0.i.i = phi i64 [ undef, %bb.gs ], [ %.sroa.5.sroa.5.i306.i.sroa.0.0.copyload.i.i, %_RNvXsrx_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_23CreateVectorNameRequestNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ]
  %.sroa.5.sroa.10.0.i313.i.i.i = phi i8 [ undef, %bb.gs ], [ %i.ux, %_RNvXsrx_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_23CreateVectorNameRequestNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ]
  %.sroa.5.sroa.8.0.i314.i.i.i = phi i32 [ undef, %bb.gs ], [ %i.vh, %_RNvXsrx_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_23CreateVectorNameRequestNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ] ; 2 uses
  %.sroa.5.sroa.7.0.i315.i.i.i = phi i32 [ undef, %bb.gs ], [ %.sroa.53.0.i.i311.i.i.i, %_RNvXsrx_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_23CreateVectorNameRequestNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ]
  %.sroa.5.sroa.6.0.i316.i.i.i = phi i32 [ undef, %bb.gs ], [ %i.vd, %_RNvXsrx_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_23CreateVectorNameRequestNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ]
  %.sroa.5.sroa.0.0.i317.i.i.i = phi i64 [ undef, %bb.gs ], [ %.sroa.5.0.i.i312.i.i.i, %_RNvXsrx_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_23CreateVectorNameRequestNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ]
  %i.vn = phi <2 x i64> [ undef, %bb.gs ], [ %i.vm, %_RNvXsrx_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_23CreateVectorNameRequestNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ]
  %i.vo = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 120
  %i.vp = load i32, ptr %i.vo, align 8, !range !98, !alias.scope !22813, !noalias !22814, !noundef !38 ; 2 uses
  %i.vq = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 124
  %i.vr = load i32, ptr %i.vq, align 4, !alias.scope !22813, !noalias !22814
  %i.vs = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 164
  %i.vt = load i8, ptr %i.vs, align 4, !range !72, !alias.scope !22813, !noalias !22814, !noundef !38 ; 2 uses
  %.not15.i318.i.i.i = icmp eq i8 %i.vt, 2
  br i1 %.not15.i318.i.i.i, label %_RNvXsHV_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_24CreateVectorNameInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i, label %bb.gz

bb.gz:                                            ; preds = %bb.gy
  %i.vu = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 136
  %.sroa.05.i303.i.sroa.0.0.copyload.i.i = load i32, ptr %i.vu, align 8, !alias.scope !22683, !noalias !22696
  %.sroa.05.i303.i.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 140
  %i.vv = load <4 x i8>, ptr %.sroa.05.i303.i.sroa.4.0..sroa_idx.i.i, align 4, !alias.scope !22683, !noalias !22696
  %.sroa.05.i303.i.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 144
  %.sroa.05.i303.i.sroa.8.0.copyload.i.i = load i32, ptr %.sroa.05.i303.i.sroa.8.0..sroa_idx.i.i, align 8, !alias.scope !22683, !noalias !22696
  %.sroa.05.i303.i.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 148
  %.sroa.05.i303.i.sroa.9.0.copyload.i.i = load i32, ptr %.sroa.05.i303.i.sroa.9.0..sroa_idx.i.i, align 4, !alias.scope !22683, !noalias !22696
  %.sroa.05.i303.i.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 152
  %.sroa.05.i303.i.sroa.10.0.copyload.i.i = load i8, ptr %.sroa.05.i303.i.sroa.10.0..sroa_idx.i.i, align 8, !alias.scope !22683, !noalias !22696
  %.sroa.05.i303.i.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 153
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.05.i303.i.sroa.11.i.i, ptr noundef nonnull readonly align 1 dereferenceable(7) %.sroa.05.i303.i.sroa.11.0..sroa_idx.i.i, i64 7, i1 false), !noalias !22684
  %.sroa.05.i303.i.sroa.12.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 160
  %.sroa.05.i303.i.sroa.12.0.copyload.i.i = load i32, ptr %.sroa.05.i303.i.sroa.12.0..sroa_idx.i.i, align 8, !alias.scope !22683, !noalias !22696
  %.sroa.514.0..sroa_idx.i319.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 165
  %.sroa.58.i304.i.sroa.0.0.copyload.i.i = load i24, ptr %.sroa.514.0..sroa_idx.i319.i.i.i, align 1, !alias.scope !22683, !noalias !22696
  %i.vw = zext i24 %.sroa.58.i304.i.sroa.0.0.copyload.i.i to i32
  br label %_RNvXsHV_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_24CreateVectorNameInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i

_RNvXsHV_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_24CreateVectorNameInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i: ; preds = %bb.gz, %bb.gy
  %.sroa.05.i303.i.sroa.12.0.i.i = phi i32 [ undef, %bb.gy ], [ %.sroa.05.i303.i.sroa.12.0.copyload.i.i, %bb.gz ]
  %.sroa.05.i303.i.sroa.10.0.i.i = phi i8 [ undef, %bb.gy ], [ %.sroa.05.i303.i.sroa.10.0.copyload.i.i, %bb.gz ]
  %.sroa.05.i303.i.sroa.9.0.i.i = phi i32 [ undef, %bb.gy ], [ %.sroa.05.i303.i.sroa.9.0.copyload.i.i, %bb.gz ]
  %.sroa.05.i303.i.sroa.8.0.i.i = phi i32 [ undef, %bb.gy ], [ %.sroa.05.i303.i.sroa.8.0.copyload.i.i, %bb.gz ] ; 2 uses
  %.sroa.05.i303.i.sroa.0.0.i.i = phi i32 [ undef, %bb.gy ], [ %.sroa.05.i303.i.sroa.0.0.copyload.i.i, %bb.gz ]
  %.sroa.58.i304.i.sroa.0.0.i.i = phi i32 [ 0, %bb.gy ], [ %i.vw, %bb.gz ]
  %i.vx = phi <4 x i8> [ undef, %bb.gy ], [ %i.vv, %bb.gz ]
  %i.vy = trunc nuw i32 %i.vp to i1
  %.sroa.54.0.i320.i.i.i = select i1 %i.vy, i32 %i.vr, i32 undef
  %i.vz = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 128
  %i.wa = load i32, ptr %i.vz, align 8, !range !98, !alias.scope !22813, !noalias !22814, !noundef !38 ; 2 uses
  %i.wb = trunc nuw i32 %i.wa to i1
  %i.wc = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 132
  %i.wd = load i32, ptr %i.wc, align 4, !alias.scope !22813, !noalias !22814
  %.sroa.511.0.i321.i.i.i = select i1 %i.wb, i32 %i.wd, i32 undef ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.54.sroa.0.i.i187.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.sroa.5.i306.i.sroa.4.i.i, i64 16, i1 false), !noalias !22695
  %.sroa.77.sroa.0.sroa.0.0.extract.trunc.i.i = trunc i32 %.sroa.5.sroa.8.0.i314.i.i.i to i8
  %.sroa.77.sroa.0.sroa.16.0.extract.shift.i.i = lshr i32 %.sroa.5.sroa.8.0.i314.i.i.i, 8
  %.sroa.85.sroa.0.0.extract.trunc598.i.i = trunc i64 %.sroa.56.i.i.i.sroa.4.1.i.i to i32
  %.sroa.85.sroa.16.0.extract.shift615.i.i = lshr i64 %.sroa.56.i.i.i.sroa.4.1.i.i, 32
  %.sroa.85.sroa.16.0.extract.trunc616.i.i = trunc nuw i64 %.sroa.85.sroa.16.0.extract.shift615.i.i to i32
  %.sroa.91.sroa.0.0.extract.trunc565.i.i = trunc i64 %.sroa.56.i.i.i.sroa.5.1.i.i to i32
  %.sroa.91.sroa.16.0.extract.shift579.i.i = lshr i64 %.sroa.56.i.i.i.sroa.5.1.i.i, 32
  %.sroa.91.sroa.16.0.extract.trunc580.i.i = trunc nuw i64 %.sroa.91.sroa.16.0.extract.shift579.i.i to i32
  %.sroa.118.sroa.0.0.extract.trunc472.i.i = trunc i32 %.sroa.511.0.i321.i.i.i to i8
  %.sroa.118.sroa.16.0.extract.shift490.i.i = lshr i32 %.sroa.511.0.i321.i.i.i, 8
  %.sroa.118.sroa.16.0.extract.trunc491.i.i = trunc nuw i32 %.sroa.118.sroa.16.0.extract.shift490.i.i to i24
  %.sroa.130.sroa.0.0.extract.trunc444.i.i = trunc i32 %.sroa.05.i303.i.sroa.8.0.i.i to i8
  %.sroa.130.sroa.14.0.extract.shift460.i.i = and i32 %.sroa.05.i303.i.sroa.8.0.i.i, -256
  %i.we = zext i32 %.sroa.54.0.i320.i.i.i to i64
  br label %_RNvXNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant16update_operationNtB2_6UpdateNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i

bb.ha:                                            ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22820)
  %i.wf = load i64, ptr %i.cj, align 8, !range !49, !alias.scope !22821, !noalias !22822, !noundef !38 ; 3 uses
  %.not.i336.i.i.i = icmp eq i64 %i.wf, 2
  br i1 %.not.i336.i.i.i, label %bb.he, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22823)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !22824
  %i.wg = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 24
  invoke void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.wg)
          to label %.noexc23.i unwind label %.loopexit.i, !noalias !22681

.noexc23.i:                                       ; preds = %bb.hb
  %i.wh = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 80
  %i.wi = load i8, ptr %i.wh, align 8, !range !72, !alias.scope !22825, !noalias !22826, !noundef !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !22824
  %i.wj = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 48
  invoke void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.wj)
          to label %_RNvXsrI_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_23DeleteVectorNameRequestNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i unwind label %bb.hc, !noalias !22827

bb.hc:                                            ; preds = %.noexc23.i
  %i.wk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.hi unwind label %bb.hd, !noalias !22827

bb.hd:                                            ; preds = %bb.hc
  %i.wl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28, !noalias !22827
  unreachable

_RNvXsrI_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_23DeleteVectorNameRequestNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i: ; preds = %.noexc23.i
  %i.wm = trunc nuw i64 %i.wf to i1
  %i.wn = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 16
  %i.wo = load i64, ptr %i.wn, align 8, !alias.scope !22825, !noalias !22826
  %.sroa.5.0.i.i338.i.i.i = select i1 %i.wm, i64 %i.wo, i64 undef
  %i.wp = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 72
  %i.wq = load i32, ptr %i.wp, align 8, !range !98, !alias.scope !22825, !noalias !22826, !noundef !38 ; 2 uses
  %i.wr = trunc nuw i32 %i.wq to i1
  %i.ws = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 76
  %i.wt = load i32, ptr %i.ws, align 4, !alias.scope !22825, !noalias !22826
  %.sroa.53.0.i.i339.i.i.i = select i1 %i.wr, i32 %i.wt, i32 undef
  %i.wu = load <2 x i64>, ptr %i.b, align 16, !noalias !22694
  %.sroa.5.sroa.4.i334.i.sroa.5.0.copyload.i.i = load i64, ptr %.sroa.5.sroa.4.i334.i.sroa.5.0..sroa_idx.i.i, align 16, !noalias !22694
  %.sroa.5.sroa.5.i335.i.sroa.0.0.copyload.i.i = load i64, ptr %i.a, align 8, !noalias !22694
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.sroa.5.i335.i.sroa.4.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.sroa.5.i335.i.sroa.4.0..sroa_idx.i.i, i64 16, i1 false), !noalias !22694
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !22824
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !22824
  br label %bb.he

bb.he:                                            ; preds = %_RNvXsrI_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_23DeleteVectorNameRequestNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i, %bb.ha
  %.sroa.5.sroa.4.i334.i.sroa.5.0.i.i = phi i64 [ undef, %bb.ha ], [ %.sroa.5.sroa.4.i334.i.sroa.5.0.copyload.i.i, %_RNvXsrI_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_23DeleteVectorNameRequestNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ]
  %.sroa.5.sroa.5.i335.i.sroa.0.0.i.i = phi i64 [ undef, %bb.ha ], [ %.sroa.5.sroa.5.i335.i.sroa.0.0.copyload.i.i, %_RNvXsrI_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_23DeleteVectorNameRequestNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ]
  %.sroa.5.sroa.8.0.i340.i.i.i = phi i8 [ undef, %bb.ha ], [ %i.wi, %_RNvXsrI_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_23DeleteVectorNameRequestNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ]
  %.sroa.5.sroa.7.0.i341.i.i.i = phi i32 [ undef, %bb.ha ], [ %.sroa.53.0.i.i339.i.i.i, %_RNvXsrI_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_23DeleteVectorNameRequestNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ]
  %.sroa.5.sroa.6.0.i342.i.i.i = phi i32 [ undef, %bb.ha ], [ %i.wq, %_RNvXsrI_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_23DeleteVectorNameRequestNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ]
  %.sroa.5.sroa.0.0.i343.i.i.i = phi i64 [ undef, %bb.ha ], [ %.sroa.5.0.i.i338.i.i.i, %_RNvXsrI_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_23DeleteVectorNameRequestNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ]
  %i.wv = phi <2 x i64> [ undef, %bb.ha ], [ %i.wu, %_RNvXsrI_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_23DeleteVectorNameRequestNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ]
  %i.ww = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 88
  %i.wx = load i32, ptr %i.ww, align 8, !range !98, !alias.scope !22821, !noalias !22822, !noundef !38 ; 2 uses
  %i.wy = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 92
  %i.wz = load i32, ptr %i.wy, align 4, !alias.scope !22821, !noalias !22822
  %i.xa = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 132
  %i.xb = load i8, ptr %i.xa, align 4, !range !72, !alias.scope !22821, !noalias !22822, !noundef !38 ; 2 uses
  %.not15.i344.i.i.i = icmp eq i8 %i.xb, 2
  br i1 %.not15.i344.i.i.i, label %_RNvXsI6_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_24DeleteVectorNameInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  %i.xc = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 104
  %.sroa.05.i332.i.sroa.0.0.copyload.i.i = load i64, ptr %i.xc, align 8, !alias.scope !22683, !noalias !22696
  %.sroa.05.i332.i.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 112
  %.sroa.05.i332.i.sroa.4.0.copyload.i.i = load i64, ptr %.sroa.05.i332.i.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !22683, !noalias !22696
  %.sroa.05.i332.i.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 120
  %.sroa.05.i332.i.sroa.5.0.copyload.i.i = load i64, ptr %.sroa.05.i332.i.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !22683, !noalias !22696
  %.sroa.05.i332.i.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 128
  %.sroa.05.i332.i.sroa.6.0.copyload.i.i = load i32, ptr %.sroa.05.i332.i.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !22683, !noalias !22696
  %.sroa.514.0..sroa_idx.i345.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 133
  %.sroa.58.i333.i.sroa.0.0.copyload.i.i = load i24, ptr %.sroa.514.0..sroa_idx.i345.i.i.i, align 1, !alias.scope !22683, !noalias !22696
  br label %_RNvXsI6_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_24DeleteVectorNameInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i

_RNvXsI6_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_24DeleteVectorNameInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i: ; preds = %bb.hf, %bb.he
  %.sroa.05.i332.i.sroa.6.0.i.i = phi i32 [ undef, %bb.he ], [ %.sroa.05.i332.i.sroa.6.0.copyload.i.i, %bb.hf ]
  %.sroa.05.i332.i.sroa.5.0.i.i = phi i64 [ undef, %bb.he ], [ %.sroa.05.i332.i.sroa.5.0.copyload.i.i, %bb.hf ] ; 2 uses
  %.sroa.05.i332.i.sroa.4.0.i.i = phi i64 [ undef, %bb.he ], [ %.sroa.05.i332.i.sroa.4.0.copyload.i.i, %bb.hf ] ; 2 uses
  %.sroa.05.i332.i.sroa.0.0.i.i = phi i64 [ undef, %bb.he ], [ %.sroa.05.i332.i.sroa.0.0.copyload.i.i, %bb.hf ]
  %.sroa.58.i333.i.sroa.0.0.i.i = phi i24 [ undef, %bb.he ], [ %.sroa.58.i333.i.sroa.0.0.copyload.i.i, %bb.hf ]
  %i.xd = trunc nuw i32 %i.wx to i1
  %.sroa.54.0.i346.i.i.i = select i1 %i.xd, i32 %i.wz, i32 undef
  %i.xe = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 96
  %i.xf = load i32, ptr %i.xe, align 8, !range !98, !alias.scope !22821, !noalias !22822, !noundef !38 ; 2 uses
  %i.xg = trunc nuw i32 %i.xf to i1
  %i.xh = getelementptr inbounds nuw i8, ptr %.sroa.024.0302.i, i64 100
  %i.xi = load i32, ptr %i.xh, align 4, !alias.scope !22821, !noalias !22822
  %.sroa.511.0.i347.i.i.i = select i1 %i.xg, i32 %i.xi, i32 undef
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.54.sroa.0.i.i187.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.sroa.5.i335.i.sroa.4.i.i, i64 16, i1 false), !noalias !22695
  %.sroa.105.sroa.0.0.extract.trunc534.i.i = trunc i64 %.sroa.05.i332.i.sroa.4.0.i.i to i8
  %.sroa.105.sroa.16.0.extract.shift551.i.i = and i64 %.sroa.05.i332.i.sroa.4.0.i.i, -256
  %.sroa.109.sroa.0.0.extract.trunc499.i.i = trunc i64 %.sroa.05.i332.i.sroa.5.0.i.i to i32
  %.sroa.109.sroa.16.0.extract.shift514.i.i = lshr i64 %.sroa.05.i332.i.sroa.5.0.i.i, 32
  br label %_RNvXNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant16update_operationNtB2_6UpdateNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i

_RNvXNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant16update_operationNtB2_6UpdateNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i: ; preds = %_RNvXsI6_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_24DeleteVectorNameInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i, %_RNvXsHV_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_24CreateVectorNameInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i, %_RNvXsHK_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_34DeleteFieldIndexCollectionInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i, %_RNvXsHz_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_34CreateFieldIndexCollectionInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i, %_RNvXsHq_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_26ClearPayloadPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i, %_RNvXsHh_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_27DeletePayloadPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i, %.noexc17.i, %.noexc16.i, %_RNvXsGZ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_21DeleteVectorsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i, %_RNvXsGQ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_21UpdateVectorsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i, %_RNvXsGH_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_20DeletePointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i, %_RNvXsGy_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_20UpsertPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i, %_RNvXsGp_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18SyncPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i
  %.sroa.65.sroa.16.0.i.i = phi i32 [ %.sroa.65.sroa.16.0.extract.trunc704.i.i, %_RNvXsGp_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18SyncPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.65.sroa.16.0.extract.trunc690.i.i, %_RNvXsGy_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_20UpsertPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.65.sroa.16.0.extract.trunc700.i.i, %_RNvXsGH_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_20DeletePointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.65.sroa.16.0.extract.trunc702.i.i, %_RNvXsGQ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_21UpdateVectorsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.65.sroa.16.0.extract.trunc698.i.i, %_RNvXsGZ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_21DeleteVectorsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.65.sroa.16.0.extract.trunc688.i.i, %.noexc16.i ], [ %.sroa.65.sroa.16.0.extract.trunc.i.i, %.noexc17.i ], [ %.sroa.65.sroa.16.0.extract.trunc696.i.i, %_RNvXsHh_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_27DeletePayloadPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.65.sroa.16.0.extract.trunc694.i.i, %_RNvXsHq_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_26ClearPayloadPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.65.sroa.16.0.extract.trunc692.i.i, %_RNvXsHz_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_34CreateFieldIndexCollectionInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.5.sroa.7.0.i288.i.i.i, %_RNvXsHK_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_34DeleteFieldIndexCollectionInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.5.sroa.7.0.i315.i.i.i, %_RNvXsHV_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_24CreateVectorNameInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.5.sroa.7.0.i341.i.i.i, %_RNvXsI6_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_24DeleteVectorNameInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ]
  %.sroa.65.sroa.0.0.i.i = phi i32 [ %.sroa.65.sroa.0.0.extract.trunc686.i.i, %_RNvXsGp_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18SyncPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.65.sroa.0.0.extract.trunc679.i.i, %_RNvXsGy_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_20UpsertPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.65.sroa.0.0.extract.trunc684.i.i, %_RNvXsGH_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_20DeletePointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.65.sroa.0.0.extract.trunc685.i.i, %_RNvXsGQ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_21UpdateVectorsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.65.sroa.0.0.extract.trunc683.i.i, %_RNvXsGZ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_21DeleteVectorsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.65.sroa.0.0.extract.trunc678.i.i, %.noexc16.i ], [ %.sroa.65.sroa.0.0.extract.trunc.i.i, %.noexc17.i ], [ %.sroa.65.sroa.0.0.extract.trunc682.i.i, %_RNvXsHh_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_27DeletePayloadPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.65.sroa.0.0.extract.trunc681.i.i, %_RNvXsHq_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_26ClearPayloadPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.65.sroa.0.0.extract.trunc680.i.i, %_RNvXsHz_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_34CreateFieldIndexCollectionInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.5.sroa.6.0.i289.i.i.i, %_RNvXsHK_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_34DeleteFieldIndexCollectionInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.5.sroa.6.0.i316.i.i.i, %_RNvXsHV_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_24CreateVectorNameInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.5.sroa.6.0.i342.i.i.i, %_RNvXsI6_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_24DeleteVectorNameInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ]
  %.sroa.77.sroa.0.sroa.16.sroa.0.0.i.i = phi i32 [ %.sroa.77.sroa.0.sroa.16.0.extract.trunc669.i.i, %_RNvXsGp_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18SyncPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.77.sroa.0.sroa.16.0.extract.trunc663.i.i, %_RNvXsGy_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_20UpsertPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.77.sroa.0.sroa.16.0.extract.trunc673.i.i, %_RNvXsGH_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_20DeletePointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.77.sroa.0.sroa.16.0.extract.trunc667.i.i, %_RNvXsGQ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_21UpdateVectorsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.77.sroa.0.sroa.16.0.extract.trunc677.i.i, %_RNvXsGZ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_21DeleteVectorsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.77.sroa.0.sroa.16.0.extract.trunc661.i.i, %.noexc16.i ], [ %.sroa.77.sroa.0.sroa.16.0.extract.trunc659.i.i, %.noexc17.i ], [ %.sroa.77.sroa.0.sroa.16.0.extract.trunc675.i.i, %_RNvXsHh_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_27DeletePayloadPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.77.sroa.0.sroa.16.0.extract.trunc671.i.i, %_RNvXsHq_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_26ClearPayloadPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.77.sroa.0.sroa.16.0.extract.trunc665.i.i, %_RNvXsHz_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_34CreateFieldIndexCollectionInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ 0, %_RNvXsHK_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_34DeleteFieldIndexCollectionInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.77.sroa.0.sroa.16.0.extract.shift.i.i, %_RNvXsHV_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_24CreateVectorNameInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ 0, %_RNvXsI6_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_24DeleteVectorNameInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ]
  %.sroa.77.sroa.0.sroa.0.0.i.i = phi i8 [ %.sroa.77.sroa.0.sroa.0.0.extract.trunc653.i.i, %_RNvXsGp_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18SyncPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.77.sroa.0.sroa.0.0.extract.trunc650.i.i, %_RNvXsGy_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_20UpsertPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.77.sroa.0.sroa.0.0.extract.trunc655.i.i, %_RNvXsGH_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_20DeletePointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.77.sroa.0.sroa.0.0.extract.trunc652.i.i, %_RNvXsGQ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_21UpdateVectorsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.77.sroa.0.sroa.0.0.extract.trunc657.i.i, %_RNvXsGZ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_21DeleteVectorsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.77.sroa.0.sroa.0.0.extract.trunc649.i.i, %.noexc16.i ], [ %.sroa.77.sroa.0.sroa.0.0.extract.trunc648.i.i, %.noexc17.i ], [ %.sroa.77.sroa.0.sroa.0.0.extract.trunc656.i.i, %_RNvXsHh_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_27DeletePayloadPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.77.sroa.0.sroa.0.0.extract.trunc654.i.i, %_RNvXsHq_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_26ClearPayloadPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.77.sroa.0.sroa.0.0.extract.trunc651.i.i, %_RNvXsHz_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_34CreateFieldIndexCollectionInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.5.sroa.8.0.i.i.i.i, %_RNvXsHK_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_34DeleteFieldIndexCollectionInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.77.sroa.0.sroa.0.0.extract.trunc.i.i, %_RNvXsHV_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_24CreateVectorNameInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.5.sroa.8.0.i340.i.i.i, %_RNvXsI6_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_24DeleteVectorNameInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ]
  %.sroa.77.sroa.16.0.i.i = phi i64 [ %.sroa.77.sroa.16.0.extract.shift638.i.i, %_RNvXsGp_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18SyncPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.77.sroa.16.0.extract.shift632.i.i, %_RNvXsGy_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_20UpsertPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.77.sroa.16.0.extract.shift642.i.i, %_RNvXsGH_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_20DeletePointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.77.sroa.16.0.extract.shift636.i.i, %_RNvXsGQ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_21UpdateVectorsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.77.sroa.16.0.extract.shift646.i.i, %_RNvXsGZ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_21DeleteVectorsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.77.sroa.16.0.extract.shift630.i.i, %.noexc16.i ], [ %.sroa.77.sroa.16.0.extract.shift.i.i, %.noexc17.i ], [ %.sroa.77.sroa.16.0.extract.shift644.i.i, %_RNvXsHh_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_27DeletePayloadPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.77.sroa.16.0.extract.shift640.i.i, %_RNvXsHq_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_26ClearPayloadPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.77.sroa.16.0.extract.shift634.i.i, %_RNvXsHz_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_34CreateFieldIndexCollectionInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ 0, %_RNvXsHK_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_34DeleteFieldIndexCollectionInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.56.i.i.i.sroa.0.1.i.i, %_RNvXsHV_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_24CreateVectorNameInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ 0, %_RNvXsI6_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_24DeleteVectorNameInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ]
  %.sroa.85.sroa.16.0.i.i = phi i32 [ %.sroa.85.sroa.16.0.extract.trunc610.i.i, %_RNvXsGp_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18SyncPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.85.sroa.16.0.extract.trunc604.i.i, %_RNvXsGy_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_20UpsertPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.85.sroa.16.0.extract.trunc620.i.i, %_RNvXsGH_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_20DeletePointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.85.sroa.16.0.extract.trunc608.i.i, %_RNvXsGQ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_21UpdateVectorsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.85.sroa.16.0.extract.trunc614.i.i, %_RNvXsGZ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_21DeleteVectorsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.85.sroa.16.0.extract.trunc602.i.i, %.noexc16.i ], [ %.sroa.85.sroa.16.0.extract.trunc.i.i, %.noexc17.i ], [ %.sroa.85.sroa.16.0.extract.trunc612.i.i, %_RNvXsHh_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_27DeletePayloadPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.85.sroa.16.0.extract.trunc618.i.i, %_RNvXsHq_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_26ClearPayloadPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.85.sroa.16.0.extract.trunc606.i.i, %_RNvXsHz_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_34CreateFieldIndexCollectionInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.54.0.i293.i.i.i, %_RNvXsHK_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_34DeleteFieldIndexCollectionInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.85.sroa.16.0.extract.trunc616.i.i, %_RNvXsHV_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_24CreateVectorNameInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.54.0.i346.i.i.i, %_RNvXsI6_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_24DeleteVectorNameInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ]
  %.sroa.85.sroa.0.0.i.i = phi i32 [ %.sroa.85.sroa.0.0.extract.trunc595.i.i, %_RNvXsGp_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18SyncPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.85.sroa.0.0.extract.trunc592.i.i, %_RNvXsGy_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_20UpsertPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.85.sroa.0.0.extract.trunc600.i.i, %_RNvXsGH_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_20DeletePointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.85.sroa.0.0.extract.trunc594.i.i, %_RNvXsGQ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_21UpdateVectorsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.85.sroa.0.0.extract.trunc597.i.i, %_RNvXsGZ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_21DeleteVectorsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.85.sroa.0.0.extract.trunc591.i.i, %.noexc16.i ], [ %.sroa.85.sroa.0.0.extract.trunc.i.i, %.noexc17.i ], [ %.sroa.85.sroa.0.0.extract.trunc596.i.i, %_RNvXsHh_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_27DeletePayloadPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.85.sroa.0.0.extract.trunc599.i.i, %_RNvXsHq_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_26ClearPayloadPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.85.sroa.0.0.extract.trunc593.i.i, %_RNvXsHz_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_34CreateFieldIndexCollectionInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %i.ui, %_RNvXsHK_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_34DeleteFieldIndexCollectionInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.85.sroa.0.0.extract.trunc598.i.i, %_RNvXsHV_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_24CreateVectorNameInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %i.wx, %_RNvXsI6_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_24DeleteVectorNameInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ]
  %.sroa.91.sroa.16.0.i.i = phi i32 [ %.sroa.91.sroa.16.0.extract.trunc590.i.i, %_RNvXsGp_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18SyncPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.91.sroa.16.0.extract.trunc574.i.i, %_RNvXsGy_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_20UpsertPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.91.sroa.16.0.extract.trunc588.i.i, %_RNvXsGH_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_20DeletePointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.91.sroa.16.0.extract.trunc578.i.i, %_RNvXsGQ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_21UpdateVectorsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.91.sroa.16.0.extract.trunc584.i.i, %_RNvXsGZ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_21DeleteVectorsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.91.sroa.16.0.extract.trunc572.i.i, %.noexc16.i ], [ %.sroa.91.sroa.16.0.extract.trunc.i.i, %.noexc17.i ], [ %.sroa.91.sroa.16.0.extract.trunc582.i.i, %_RNvXsHh_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_27DeletePayloadPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.91.sroa.16.0.extract.trunc586.i.i, %_RNvXsHq_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_26ClearPayloadPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.91.sroa.16.0.extract.trunc576.i.i, %_RNvXsHz_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_34CreateFieldIndexCollectionInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.511.0.i294.i.i.i, %_RNvXsHK_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_34DeleteFieldIndexCollectionInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.91.sroa.16.0.extract.trunc580.i.i, %_RNvXsHV_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_24CreateVectorNameInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.511.0.i347.i.i.i, %_RNvXsI6_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_24DeleteVectorNameInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ]
  %.sroa.91.sroa.0.0.i.i = phi i32 [ %.sroa.91.sroa.0.0.extract.trunc570.i.i, %_RNvXsGp_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18SyncPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.91.sroa.0.0.extract.trunc562.i.i, %_RNvXsGy_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_20UpsertPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.91.sroa.0.0.extract.trunc569.i.i, %_RNvXsGH_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_20DeletePointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.91.sroa.0.0.extract.trunc564.i.i, %_RNvXsGQ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_21UpdateVectorsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.91.sroa.0.0.extract.trunc567.i.i, %_RNvXsGZ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_21DeleteVectorsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.91.sroa.0.0.extract.trunc561.i.i, %.noexc16.i ], [ %.sroa.91.sroa.0.0.extract.trunc.i.i, %.noexc17.i ], [ %.sroa.91.sroa.0.0.extract.trunc566.i.i, %_RNvXsHh_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_27DeletePayloadPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.91.sroa.0.0.extract.trunc568.i.i, %_RNvXsHq_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_26ClearPayloadPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.91.sroa.0.0.extract.trunc563.i.i, %_RNvXsHz_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_34CreateFieldIndexCollectionInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %i.uq, %_RNvXsHK_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_34DeleteFieldIndexCollectionInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.91.sroa.0.0.extract.trunc565.i.i, %_RNvXsHV_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_24CreateVectorNameInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %i.xf, %_RNvXsI6_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_24DeleteVectorNameInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ]
  %.sroa.105.sroa.16.sroa.0.0.i.i = phi i64 [ %.sroa.105.sroa.16.0.extract.shift549.i.i, %_RNvXsGp_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18SyncPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.105.sroa.16.0.extract.shift541.i.i, %_RNvXsGy_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_20UpsertPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.105.sroa.16.0.extract.shift547.i.i, %_RNvXsGH_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_20DeletePointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.105.sroa.16.0.extract.shift543.i.i, %_RNvXsGQ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_21UpdateVectorsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.105.sroa.16.0.extract.shift557.i.i, %_RNvXsGZ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_21DeleteVectorsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.105.sroa.16.0.extract.shift539.i.i, %.noexc16.i ], [ %.sroa.105.sroa.16.0.extract.shift.i.i, %.noexc17.i ], [ %.sroa.105.sroa.16.0.extract.shift555.i.i, %_RNvXsHh_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_27DeletePayloadPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.105.sroa.16.0.extract.shift545.i.i, %_RNvXsHq_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_26ClearPayloadPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.105.sroa.16.0.extract.shift559.i.i, %_RNvXsHz_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_34CreateFieldIndexCollectionInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.105.sroa.16.0.extract.shift553.i.i, %_RNvXsHK_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_34DeleteFieldIndexCollectionInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ 0, %_RNvXsHV_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_24CreateVectorNameInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.105.sroa.16.0.extract.shift551.i.i, %_RNvXsI6_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_24DeleteVectorNameInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ]
  %.sroa.105.sroa.0.0.i.i = phi i8 [ %.sroa.105.sroa.0.0.extract.trunc533.i.i, %_RNvXsGp_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18SyncPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.105.sroa.0.0.extract.trunc529.i.i, %_RNvXsGy_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_20UpsertPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.105.sroa.0.0.extract.trunc532.i.i, %_RNvXsGH_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_20DeletePointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.105.sroa.0.0.extract.trunc530.i.i, %_RNvXsGQ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_21UpdateVectorsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.105.sroa.0.0.extract.trunc537.i.i, %_RNvXsGZ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_21DeleteVectorsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.105.sroa.0.0.extract.trunc528.i.i, %.noexc16.i ], [ %.sroa.105.sroa.0.0.extract.trunc.i.i, %.noexc17.i ], [ %.sroa.105.sroa.0.0.extract.trunc536.i.i, %_RNvXsHh_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_27DeletePayloadPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.105.sroa.0.0.extract.trunc531.i.i, %_RNvXsHq_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_26ClearPayloadPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.105.sroa.0.0.extract.trunc538.i.i, %_RNvXsHz_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_34CreateFieldIndexCollectionInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.105.sroa.0.0.extract.trunc535.i.i, %_RNvXsHK_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_34DeleteFieldIndexCollectionInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.5.sroa.10.0.i313.i.i.i, %_RNvXsHV_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_24CreateVectorNameInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.105.sroa.0.0.extract.trunc534.i.i, %_RNvXsI6_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_24DeleteVectorNameInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ]
  %.sroa.109.sroa.16.0.i.i = phi i64 [ %.sroa.109.sroa.16.0.extract.shift526.i.i, %_RNvXsGp_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18SyncPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.109.sroa.16.0.extract.shift508.i.i, %_RNvXsGy_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_20UpsertPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.109.sroa.16.0.extract.shift512.i.i, %_RNvXsGH_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_20DeletePointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.109.sroa.16.0.extract.shift520.i.i, %_RNvXsGQ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_21UpdateVectorsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.109.sroa.16.0.extract.shift524.i.i, %_RNvXsGZ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_21DeleteVectorsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.109.sroa.16.0.extract.shift506.i.i, %.noexc16.i ], [ %.sroa.109.sroa.16.0.extract.shift.i.i, %.noexc17.i ], [ %.sroa.109.sroa.16.0.extract.shift522.i.i, %_RNvXsHh_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_27DeletePayloadPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.109.sroa.16.0.extract.shift510.i.i, %_RNvXsHq_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_26ClearPayloadPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.109.sroa.16.0.extract.shift518.i.i, %_RNvXsHz_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_34CreateFieldIndexCollectionInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.109.sroa.16.0.extract.shift516.i.i, %_RNvXsHK_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_34DeleteFieldIndexCollectionInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %i.we, %_RNvXsHV_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_24CreateVectorNameInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.109.sroa.16.0.extract.shift514.i.i, %_RNvXsI6_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_24DeleteVectorNameInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ]
  %.sroa.109.sroa.0.0.i.i = phi i32 [ %.sroa.109.sroa.0.0.extract.trunc505.i.i, %_RNvXsGp_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18SyncPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.109.sroa.0.0.extract.trunc496.i.i, %_RNvXsGy_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_20UpsertPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.109.sroa.0.0.extract.trunc498.i.i, %_RNvXsGH_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_20DeletePointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.109.sroa.0.0.extract.trunc502.i.i, %_RNvXsGQ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_21UpdateVectorsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.109.sroa.0.0.extract.trunc504.i.i, %_RNvXsGZ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_21DeleteVectorsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.109.sroa.0.0.extract.trunc495.i.i, %.noexc16.i ], [ %.sroa.109.sroa.0.0.extract.trunc.i.i, %.noexc17.i ], [ %.sroa.109.sroa.0.0.extract.trunc503.i.i, %_RNvXsHh_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_27DeletePayloadPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.109.sroa.0.0.extract.trunc497.i.i, %_RNvXsHq_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_26ClearPayloadPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.109.sroa.0.0.extract.trunc501.i.i, %_RNvXsHz_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_34CreateFieldIndexCollectionInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.109.sroa.0.0.extract.trunc500.i.i, %_RNvXsHK_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_34DeleteFieldIndexCollectionInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %i.vp, %_RNvXsHV_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_24CreateVectorNameInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.109.sroa.0.0.extract.trunc499.i.i, %_RNvXsI6_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_24DeleteVectorNameInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ]
  %.sroa.118.sroa.16.sroa.0.0.i.i = phi i24 [ %.sroa.118.sroa.16.0.extract.trunc487.i.i, %_RNvXsGp_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18SyncPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.118.sroa.16.0.extract.trunc477.i.i, %_RNvXsGy_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_20UpsertPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.118.sroa.16.0.extract.trunc481.i.i, %_RNvXsGH_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_20DeletePointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.118.sroa.16.0.extract.trunc489.i.i, %_RNvXsGQ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_21UpdateVectorsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.118.sroa.16.0.extract.trunc485.i.i, %_RNvXsGZ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_21DeleteVectorsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.118.sroa.16.0.extract.trunc475.i.i, %.noexc16.i ], [ %.sroa.118.sroa.16.0.extract.trunc.i.i, %.noexc17.i ], [ %.sroa.118.sroa.16.0.extract.trunc483.i.i, %_RNvXsHh_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_27DeletePayloadPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.118.sroa.16.0.extract.trunc479.i.i, %_RNvXsHq_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_26ClearPayloadPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.118.sroa.16.0.extract.trunc493.i.i, %_RNvXsHz_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_34CreateFieldIndexCollectionInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.58.i281.i.sroa.0.0.i.i, %_RNvXsHK_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_34DeleteFieldIndexCollectionInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.118.sroa.16.0.extract.trunc491.i.i, %_RNvXsHV_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_24CreateVectorNameInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.58.i333.i.sroa.0.0.i.i, %_RNvXsI6_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_24DeleteVectorNameInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ]
  %.sroa.118.sroa.0.0.i.i = phi i8 [ %.sroa.118.sroa.0.0.extract.trunc470.i.i, %_RNvXsGp_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18SyncPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.118.sroa.0.0.extract.trunc465.i.i, %_RNvXsGy_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_20UpsertPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.118.sroa.0.0.extract.trunc467.i.i, %_RNvXsGH_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_20DeletePointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.118.sroa.0.0.extract.trunc471.i.i, %_RNvXsGQ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_21UpdateVectorsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.118.sroa.0.0.extract.trunc469.i.i, %_RNvXsGZ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_21DeleteVectorsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.118.sroa.0.0.extract.trunc464.i.i, %.noexc16.i ], [ %.sroa.118.sroa.0.0.extract.trunc.i.i, %.noexc17.i ], [ %.sroa.118.sroa.0.0.extract.trunc468.i.i, %_RNvXsHh_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_27DeletePayloadPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.118.sroa.0.0.extract.trunc466.i.i, %_RNvXsHq_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_26ClearPayloadPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.118.sroa.0.0.extract.trunc473.i.i, %_RNvXsHz_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_34CreateFieldIndexCollectionInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %i.um, %_RNvXsHK_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_34DeleteFieldIndexCollectionInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.118.sroa.0.0.extract.trunc472.i.i, %_RNvXsHV_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_24CreateVectorNameInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %i.xb, %_RNvXsI6_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_24DeleteVectorNameInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ]
  %.sroa.130.sroa.14.sroa.0.0.i.i = phi i32 [ %.sroa.130.sroa.14.0.extract.shift462.i.i, %_RNvXsGp_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18SyncPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.130.sroa.14.0.extract.shift448.i.i, %_RNvXsGy_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_20UpsertPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.130.sroa.14.0.extract.shift452.i.i, %_RNvXsGH_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_20DeletePointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.130.sroa.14.0.extract.shift458.i.i, %_RNvXsGQ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_21UpdateVectorsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.130.sroa.14.0.extract.shift456.i.i, %_RNvXsGZ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_21DeleteVectorsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.130.sroa.14.0.extract.shift446.i.i, %.noexc16.i ], [ %.sroa.130.sroa.14.0.extract.shift.i.i, %.noexc17.i ], [ %.sroa.130.sroa.14.0.extract.shift454.i.i, %_RNvXsHh_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_27DeletePayloadPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.130.sroa.14.0.extract.shift450.i.i, %_RNvXsHq_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_26ClearPayloadPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ 0, %_RNvXsHz_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_34CreateFieldIndexCollectionInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ 0, %_RNvXsHK_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_34DeleteFieldIndexCollectionInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.130.sroa.14.0.extract.shift460.i.i, %_RNvXsHV_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_24CreateVectorNameInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ 0, %_RNvXsI6_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_24DeleteVectorNameInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ]
  %.sroa.130.sroa.0.0.i.i = phi i8 [ %.sroa.130.sroa.0.0.extract.trunc445.i.i, %_RNvXsGp_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18SyncPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.130.sroa.0.0.extract.trunc438.i.i, %_RNvXsGy_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_20UpsertPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.130.sroa.0.0.extract.trunc440.i.i, %_RNvXsGH_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_20DeletePointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.130.sroa.0.0.extract.trunc443.i.i, %_RNvXsGQ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_21UpdateVectorsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.130.sroa.0.0.extract.trunc442.i.i, %_RNvXsGZ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_21DeleteVectorsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.130.sroa.0.0.extract.trunc437.i.i, %.noexc16.i ], [ %.sroa.130.sroa.0.0.extract.trunc.i.i, %.noexc17.i ], [ %.sroa.130.sroa.0.0.extract.trunc441.i.i, %_RNvXsHh_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_27DeletePayloadPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.130.sroa.0.0.extract.trunc439.i.i, %_RNvXsHq_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_26ClearPayloadPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.5.sroa.18.0.i.i.i.i, %_RNvXsHz_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_34CreateFieldIndexCollectionInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %_RNvXsHK_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_34DeleteFieldIndexCollectionInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.130.sroa.0.0.extract.trunc444.i.i, %_RNvXsHV_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_24CreateVectorNameInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %_RNvXsI6_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_24DeleteVectorNameInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ]
  %.sroa.136.sroa.14.sroa.0.0.i.i = phi i32 [ %.sroa.136.sroa.14.0.extract.shift435.i.i, %_RNvXsGp_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18SyncPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.136.sroa.14.0.extract.shift421.i.i, %_RNvXsGy_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_20UpsertPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.136.sroa.14.0.extract.shift425.i.i, %_RNvXsGH_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_20DeletePointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.136.sroa.14.0.extract.shift431.i.i, %_RNvXsGQ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_21UpdateVectorsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.136.sroa.14.0.extract.shift429.i.i, %_RNvXsGZ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_21DeleteVectorsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.136.sroa.14.0.extract.shift419.i.i, %.noexc16.i ], [ %.sroa.136.sroa.14.0.extract.shift.i.i, %.noexc17.i ], [ %.sroa.136.sroa.14.0.extract.shift427.i.i, %_RNvXsHh_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_27DeletePayloadPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.136.sroa.14.0.extract.shift423.i.i, %_RNvXsHq_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_26ClearPayloadPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.136.sroa.14.0.extract.shift433.i.i, %_RNvXsHz_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_34CreateFieldIndexCollectionInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ 0, %_RNvXsHK_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_34DeleteFieldIndexCollectionInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.58.i304.i.sroa.0.0.i.i, %_RNvXsHV_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_24CreateVectorNameInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ 0, %_RNvXsI6_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_24DeleteVectorNameInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ]
  %.sroa.136.sroa.0.0.i.i = phi i8 [ %.sroa.136.sroa.0.0.extract.trunc418.i.i, %_RNvXsGp_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18SyncPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.136.sroa.0.0.extract.trunc411.i.i, %_RNvXsGy_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_20UpsertPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.136.sroa.0.0.extract.trunc413.i.i, %_RNvXsGH_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_20DeletePointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.136.sroa.0.0.extract.trunc416.i.i, %_RNvXsGQ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_21UpdateVectorsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.136.sroa.0.0.extract.trunc415.i.i, %_RNvXsGZ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_21DeleteVectorsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.136.sroa.0.0.extract.trunc410.i.i, %.noexc16.i ], [ %.sroa.136.sroa.0.0.extract.trunc.i.i, %.noexc17.i ], [ %.sroa.136.sroa.0.0.extract.trunc414.i.i, %_RNvXsHh_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_27DeletePayloadPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.136.sroa.0.0.extract.trunc412.i.i, %_RNvXsHq_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_26ClearPayloadPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.136.sroa.0.0.extract.trunc417.i.i, %_RNvXsHz_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_34CreateFieldIndexCollectionInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %_RNvXsHK_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_34DeleteFieldIndexCollectionInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %i.vt, %_RNvXsHV_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_24CreateVectorNameInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %_RNvXsI6_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_24DeleteVectorNameInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ]
  %.sroa.146.sroa.13.sroa.0.0.i.i = phi i32 [ %.sroa.58.i.i.sroa.0.0.i.i, %_RNvXsGp_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18SyncPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.146.sroa.13.0.extract.shift396.i.i, %_RNvXsGy_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_20UpsertPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.146.sroa.13.0.extract.shift408.i.i, %_RNvXsGH_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_20DeletePointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.146.sroa.13.0.extract.shift402.i.i, %_RNvXsGQ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_21UpdateVectorsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.146.sroa.13.0.extract.shift400.i.i, %_RNvXsGZ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_21DeleteVectorsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.146.sroa.13.0.extract.shift394.i.i, %.noexc16.i ], [ %.sroa.146.sroa.13.0.extract.shift.i.i, %.noexc17.i ], [ %.sroa.146.sroa.13.0.extract.shift398.i.i, %_RNvXsHh_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_27DeletePayloadPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.146.sroa.13.0.extract.shift406.i.i, %_RNvXsHq_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_26ClearPayloadPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.146.sroa.13.0.extract.shift404.i.i, %_RNvXsHz_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_34CreateFieldIndexCollectionInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ 0, %_RNvXsHK_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_34DeleteFieldIndexCollectionInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ 0, %_RNvXsHV_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_24CreateVectorNameInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ 0, %_RNvXsI6_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_24DeleteVectorNameInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ]
  %.sroa.146.sroa.0.0.i.i = phi i8 [ %i.ee, %_RNvXsGp_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18SyncPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.146.sroa.0.0.extract.trunc387.i.i, %_RNvXsGy_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_20UpsertPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.146.sroa.0.0.extract.trunc393.i.i, %_RNvXsGH_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_20DeletePointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.146.sroa.0.0.extract.trunc390.i.i, %_RNvXsGQ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_21UpdateVectorsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.146.sroa.0.0.extract.trunc389.i.i, %_RNvXsGZ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_21DeleteVectorsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.146.sroa.0.0.extract.trunc386.i.i, %.noexc16.i ], [ %.sroa.146.sroa.0.0.extract.trunc.i.i, %.noexc17.i ], [ %.sroa.146.sroa.0.0.extract.trunc388.i.i, %_RNvXsHh_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_27DeletePayloadPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.146.sroa.0.0.extract.trunc392.i.i, %_RNvXsHq_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_26ClearPayloadPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.146.sroa.0.0.extract.trunc391.i.i, %_RNvXsHz_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_34CreateFieldIndexCollectionInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %_RNvXsHK_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_34DeleteFieldIndexCollectionInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %_RNvXsHV_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_24CreateVectorNameInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %_RNvXsI6_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_24DeleteVectorNameInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ]
  %.sroa.151.sroa.12.sroa.0.0.i.i = phi i32 [ 0, %_RNvXsGp_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18SyncPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.151.sroa.12.0.extract.shift376.i.i, %_RNvXsGy_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_20UpsertPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ 0, %_RNvXsGH_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_20DeletePointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.151.sroa.12.0.extract.shift382.i.i, %_RNvXsGQ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_21UpdateVectorsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.151.sroa.12.0.extract.shift380.i.i, %_RNvXsGZ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_21DeleteVectorsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.151.sroa.12.0.extract.shift374.i.i, %.noexc16.i ], [ %.sroa.151.sroa.12.0.extract.shift.i.i, %.noexc17.i ], [ %.sroa.151.sroa.12.0.extract.shift378.i.i, %_RNvXsHh_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_27DeletePayloadPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ 0, %_RNvXsHq_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_26ClearPayloadPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.151.sroa.12.0.extract.shift384.i.i, %_RNvXsHz_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_34CreateFieldIndexCollectionInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ 0, %_RNvXsHK_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_34DeleteFieldIndexCollectionInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ 0, %_RNvXsHV_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_24CreateVectorNameInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ 0, %_RNvXsI6_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_24DeleteVectorNameInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ]
  %.sroa.151.sroa.0.0.i.i = phi i8 [ undef, %_RNvXsGp_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18SyncPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.151.sroa.0.0.extract.trunc369.i.i, %_RNvXsGy_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_20UpsertPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.15.0.i.i.i.i, %_RNvXsGH_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_20DeletePointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.151.sroa.0.0.extract.trunc372.i.i, %_RNvXsGQ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_21UpdateVectorsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.151.sroa.0.0.extract.trunc371.i.i, %_RNvXsGZ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_21DeleteVectorsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.151.sroa.0.0.extract.trunc368.i.i, %.noexc16.i ], [ %.sroa.151.sroa.0.0.extract.trunc.i.i, %.noexc17.i ], [ %.sroa.151.sroa.0.0.extract.trunc370.i.i, %_RNvXsHh_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_27DeletePayloadPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.15.0.i215.i.i.i, %_RNvXsHq_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_26ClearPayloadPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.151.sroa.0.0.extract.trunc373.i.i, %_RNvXsHz_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_34CreateFieldIndexCollectionInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %_RNvXsHK_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_34DeleteFieldIndexCollectionInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %_RNvXsHV_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_24CreateVectorNameInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %_RNvXsI6_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_24DeleteVectorNameInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ]
  %.sroa.155.sroa.12.sroa.0.0.i.i = phi i32 [ 0, %_RNvXsGp_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18SyncPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.155.sroa.12.0.extract.shift356.i.i, %_RNvXsGy_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_20UpsertPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ 0, %_RNvXsGH_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_20DeletePointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.155.sroa.12.0.extract.shift362.i.i, %_RNvXsGQ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_21UpdateVectorsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.155.sroa.12.0.extract.shift360.i.i, %_RNvXsGZ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_21DeleteVectorsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.155.sroa.12.0.extract.shift354.i.i, %.noexc16.i ], [ %.sroa.155.sroa.12.0.extract.shift.i.i, %.noexc17.i ], [ %.sroa.155.sroa.12.0.extract.shift358.i.i, %_RNvXsHh_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_27DeletePayloadPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ 0, %_RNvXsHq_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_26ClearPayloadPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ 0, %_RNvXsHz_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_34CreateFieldIndexCollectionInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ 0, %_RNvXsHK_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_34DeleteFieldIndexCollectionInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ 0, %_RNvXsHV_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_24CreateVectorNameInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ 0, %_RNvXsI6_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_24DeleteVectorNameInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ]
  %.sroa.155.sroa.0.0.i.i = phi i8 [ undef, %_RNvXsGp_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18SyncPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.155.sroa.0.0.extract.trunc348.i.i, %_RNvXsGy_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_20UpsertPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.155.sroa.0.0.extract.trunc353.i.i, %_RNvXsGH_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_20DeletePointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.155.sroa.0.0.extract.trunc351.i.i, %_RNvXsGQ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_21UpdateVectorsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.155.sroa.0.0.extract.trunc350.i.i, %_RNvXsGZ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_21DeleteVectorsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.155.sroa.0.0.extract.trunc347.i.i, %.noexc16.i ], [ %.sroa.155.sroa.0.0.extract.trunc.i.i, %.noexc17.i ], [ %.sroa.155.sroa.0.0.extract.trunc349.i.i, %_RNvXsHh_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_27DeletePayloadPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.155.sroa.0.0.extract.trunc352.i.i, %_RNvXsHq_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_26ClearPayloadPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.5.sroa.25.0.i.i.i.i, %_RNvXsHz_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_34CreateFieldIndexCollectionInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %_RNvXsHK_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_34DeleteFieldIndexCollectionInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %_RNvXsHV_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_24CreateVectorNameInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %_RNvXsI6_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_24DeleteVectorNameInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ]
  %.sroa.172.sroa.12.sroa.0.0.i.i = phi i32 [ 0, %_RNvXsGp_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18SyncPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.172.sroa.12.0.extract.shift339.i.i, %_RNvXsGy_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_20UpsertPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.172.sroa.12.0.extract.shift345.i.i, %_RNvXsGH_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_20DeletePointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ 0, %_RNvXsGQ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_21UpdateVectorsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ 0, %_RNvXsGZ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_21DeleteVectorsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.172.sroa.12.0.extract.shift337.i.i, %.noexc16.i ], [ %.sroa.172.sroa.12.0.extract.shift.i.i, %.noexc17.i ], [ 0, %_RNvXsHh_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_27DeletePayloadPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.172.sroa.12.0.extract.shift343.i.i, %_RNvXsHq_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_26ClearPayloadPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ 0, %_RNvXsHz_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_34CreateFieldIndexCollectionInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ 0, %_RNvXsHK_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_34DeleteFieldIndexCollectionInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ 0, %_RNvXsHV_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_24CreateVectorNameInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ 0, %_RNvXsI6_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_24DeleteVectorNameInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ]
  %.sroa.172.sroa.0.0.i.i = phi i8 [ undef, %_RNvXsGp_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18SyncPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.172.sroa.0.0.extract.trunc333.i.i, %_RNvXsGy_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_20UpsertPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.172.sroa.0.0.extract.trunc336.i.i, %_RNvXsGH_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_20DeletePointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.13.0.i55.i.i.i, %_RNvXsGQ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_21UpdateVectorsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.16.0.i.i.i.i, %_RNvXsGZ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_21DeleteVectorsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.172.sroa.0.0.extract.trunc332.i.i, %.noexc16.i ], [ %.sroa.172.sroa.0.0.extract.trunc.i.i, %.noexc17.i ], [ %.sroa.16.0.i154.i.i.i, %_RNvXsHh_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_27DeletePayloadPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.172.sroa.0.0.extract.trunc335.i.i, %_RNvXsHq_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_26ClearPayloadPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.172.sroa.0.0.extract.trunc334.i.i, %_RNvXsHz_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_34CreateFieldIndexCollectionInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %_RNvXsHK_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_34DeleteFieldIndexCollectionInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %_RNvXsHV_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_24CreateVectorNameInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %_RNvXsI6_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_24DeleteVectorNameInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ]
  %.sroa.204.sroa.9.sroa.0.0.i.i = phi i24 [ undef, %_RNvXsGp_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18SyncPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.204.sroa.9.0.extract.trunc329.i.i, %_RNvXsGy_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_20UpsertPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %_RNvXsGH_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_20DeletePointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.54.i34.i.sroa.0.0.i.i, %_RNvXsGQ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_21UpdateVectorsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.54.i76.i.sroa.0.0.i.i, %_RNvXsGZ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_21DeleteVectorsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.204.sroa.9.0.extract.trunc327.i.i, %.noexc16.i ], [ %.sroa.204.sroa.9.0.extract.trunc.i.i, %.noexc17.i ], [ %.sroa.54.i126.i.sroa.0.0.i.i, %_RNvXsHh_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_27DeletePayloadPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %_RNvXsHq_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_26ClearPayloadPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %_RNvXsHz_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_34CreateFieldIndexCollectionInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %_RNvXsHK_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_34DeleteFieldIndexCollectionInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %_RNvXsHV_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_24CreateVectorNameInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %_RNvXsI6_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_24DeleteVectorNameInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ]
  %.sroa.204.sroa.0.0.i.i = phi i8 [ undef, %_RNvXsGp_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18SyncPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.204.sroa.0.0.extract.trunc325.i.i, %_RNvXsGy_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_20UpsertPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %_RNvXsGH_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_20DeletePointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %i.ka, %_RNvXsGQ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_21UpdateVectorsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %i.lx, %_RNvXsGZ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_21DeleteVectorsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.204.sroa.0.0.extract.trunc324.i.i, %.noexc16.i ], [ %.sroa.204.sroa.0.0.extract.trunc.i.i, %.noexc17.i ], [ %i.ob, %_RNvXsHh_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_27DeletePayloadPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %_RNvXsHq_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_26ClearPayloadPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %_RNvXsHz_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_34CreateFieldIndexCollectionInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %_RNvXsHK_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_34DeleteFieldIndexCollectionInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %_RNvXsHV_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_24CreateVectorNameInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %_RNvXsI6_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_24DeleteVectorNameInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ]
  %.sroa.212.0.i.i = phi i8 [ undef, %_RNvXsGp_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18SyncPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %i.gc, %_RNvXsGy_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_20UpsertPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %_RNvXsGH_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_20DeletePointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %_RNvXsGQ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_21UpdateVectorsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %_RNvXsGZ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_21DeleteVectorsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.212.8.copyload321.i.i, %.noexc16.i ], [ %.sroa.212.8.copyload319.i.i, %.noexc17.i ], [ undef, %_RNvXsHh_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_27DeletePayloadPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %_RNvXsHq_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_26ClearPayloadPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %_RNvXsHz_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_34CreateFieldIndexCollectionInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %_RNvXsHK_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_34DeleteFieldIndexCollectionInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %_RNvXsHV_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_24CreateVectorNameInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %_RNvXsI6_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_24DeleteVectorNameInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ]
  %.sroa.203.0.i.i = phi i32 [ undef, %_RNvXsGp_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18SyncPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %i.ge, %_RNvXsGy_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_20UpsertPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %_RNvXsGH_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_20DeletePointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.01.i33.i.sroa.11.0.i.i, %_RNvXsGQ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_21UpdateVectorsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.01.i75.i.sroa.11.0.i.i, %_RNvXsGZ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_21DeleteVectorsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.203.8.copyload310.i.i, %.noexc16.i ], [ %.sroa.203.8.copyload308.i.i, %.noexc17.i ], [ %.sroa.01.i125.i.sroa.11.0.i.i, %_RNvXsHh_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_27DeletePayloadPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %_RNvXsHq_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_26ClearPayloadPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %_RNvXsHz_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_34CreateFieldIndexCollectionInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %_RNvXsHK_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_34DeleteFieldIndexCollectionInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %_RNvXsHV_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_24CreateVectorNameInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %_RNvXsI6_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_24DeleteVectorNameInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ]
  %.sroa.199290.0.i.i = phi i8 [ undef, %_RNvXsGp_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18SyncPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.0357.i.sroa.52.240.copyload.i.i, %_RNvXsGy_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_20UpsertPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %_RNvXsGH_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_20DeletePointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.01.i33.i.sroa.7.0.i.i, %_RNvXsGQ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_21UpdateVectorsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.01.i75.i.sroa.7.0.i.i, %_RNvXsGZ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_21DeleteVectorsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.199290.8.copyload293.i.i, %.noexc16.i ], [ %.sroa.199290.8.copyload291.i.i, %.noexc17.i ], [ %.sroa.01.i125.i.sroa.7.0.i.i, %_RNvXsHh_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_27DeletePayloadPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %_RNvXsHq_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_26ClearPayloadPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %i.ti, %_RNvXsHz_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_34CreateFieldIndexCollectionInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %_RNvXsHK_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_34DeleteFieldIndexCollectionInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %_RNvXsHV_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_24CreateVectorNameInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %_RNvXsI6_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_24DeleteVectorNameInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ]
  %.sroa.199.0.i.i = phi i32 [ undef, %_RNvXsGp_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18SyncPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.0357.i.sroa.51.240.copyload.i.i, %_RNvXsGy_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_20UpsertPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %_RNvXsGH_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_20DeletePointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.01.i33.i.sroa.6.0.i.i, %_RNvXsGQ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_21UpdateVectorsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.01.i75.i.sroa.6.0.i.i, %_RNvXsGZ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_21DeleteVectorsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.199.8.copyload286.i.i, %.noexc16.i ], [ %.sroa.199.8.copyload284.i.i, %.noexc17.i ], [ %.sroa.01.i125.i.sroa.6.0.i.i, %_RNvXsHh_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_27DeletePayloadPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %_RNvXsHq_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_26ClearPayloadPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.05.i247.i.sroa.10.0.i.i, %_RNvXsHz_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_34CreateFieldIndexCollectionInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %_RNvXsHK_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_34DeleteFieldIndexCollectionInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %_RNvXsHV_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_24CreateVectorNameInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %_RNvXsI6_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_24DeleteVectorNameInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ]
  %.sroa.195.0.i.i = phi i8 [ undef, %_RNvXsGp_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18SyncPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.0357.i.sroa.49.240.copyload.i.i, %_RNvXsGy_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_20UpsertPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %i.ic, %_RNvXsGH_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_20DeletePointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.01.i33.i.sroa.4.0.i.i, %_RNvXsGQ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_21UpdateVectorsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.01.i75.i.sroa.4.0.i.i, %_RNvXsGZ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_21DeleteVectorsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.195.8.copyload279.i.i, %.noexc16.i ], [ %.sroa.195.8.copyload277.i.i, %.noexc17.i ], [ %.sroa.01.i125.i.sroa.4.0.i.i, %_RNvXsHh_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_27DeletePayloadPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %i.pv, %_RNvXsHq_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_26ClearPayloadPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.05.i247.i.sroa.8.0.i.i, %_RNvXsHz_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_34CreateFieldIndexCollectionInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %_RNvXsHK_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_34DeleteFieldIndexCollectionInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %_RNvXsHV_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_24CreateVectorNameInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %_RNvXsI6_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_24DeleteVectorNameInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ]
  %.sroa.192.0.i.i = phi i32 [ undef, %_RNvXsGp_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18SyncPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.0357.i.sroa.48.240.copyload.i.i, %_RNvXsGy_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_20UpsertPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.01.i6.i.sroa.9.0.i.i, %_RNvXsGH_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_20DeletePointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.01.i33.i.sroa.0.0.i.i, %_RNvXsGQ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_21UpdateVectorsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.01.i75.i.sroa.0.0.i.i, %_RNvXsGZ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_21DeleteVectorsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.192.8.copyload272.i.i, %.noexc16.i ], [ %.sroa.192.8.copyload270.i.i, %.noexc17.i ], [ %.sroa.01.i125.i.sroa.0.0.i.i, %_RNvXsHh_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_27DeletePayloadPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.01.i188.i.sroa.9.0.i.i, %_RNvXsHq_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_26ClearPayloadPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.05.i247.i.sroa.7.0.i.i, %_RNvXsHz_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_34CreateFieldIndexCollectionInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %_RNvXsHK_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_34DeleteFieldIndexCollectionInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %_RNvXsHV_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_24CreateVectorNameInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %_RNvXsI6_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_24DeleteVectorNameInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ]
  %.sroa.189.0.i.i = phi i32 [ undef, %_RNvXsGp_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18SyncPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.0357.i.sroa.47.240.copyload.i.i, %_RNvXsGy_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_20UpsertPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.01.i6.i.sroa.8.0.i.i, %_RNvXsGH_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_20DeletePointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.57.0.i60.i.i.i, %_RNvXsGQ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_21UpdateVectorsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.57.0.i107.i.i.i, %_RNvXsGZ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_21DeleteVectorsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.189.8.copyload267.i.i, %.noexc16.i ], [ %.sroa.189.8.copyload265.i.i, %.noexc17.i ], [ %.sroa.57.0.i165.i.i.i, %_RNvXsHh_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_27DeletePayloadPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.01.i188.i.sroa.8.0.i.i, %_RNvXsHq_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_26ClearPayloadPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.05.i247.i.sroa.6.0.i.i, %_RNvXsHz_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_34CreateFieldIndexCollectionInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %_RNvXsHK_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_34DeleteFieldIndexCollectionInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %_RNvXsHV_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_24CreateVectorNameInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %_RNvXsI6_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_24DeleteVectorNameInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ]
  %.sroa.186.0.i.i = phi i32 [ undef, %_RNvXsGp_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18SyncPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.0357.i.sroa.45.240.copyload.i.i, %_RNvXsGy_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_20UpsertPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.01.i6.i.sroa.7.0.i.i, %_RNvXsGH_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_20DeletePointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %i.kg, %_RNvXsGQ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_21UpdateVectorsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %i.md, %_RNvXsGZ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_21DeleteVectorsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.186.8.copyload262.i.i, %.noexc16.i ], [ %.sroa.186.8.copyload260.i.i, %.noexc17.i ], [ %i.oh, %_RNvXsHh_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_27DeletePayloadPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.01.i188.i.sroa.7.0.i.i, %_RNvXsHq_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_26ClearPayloadPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.05.i247.i.sroa.5.0.i.i, %_RNvXsHz_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_34CreateFieldIndexCollectionInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %_RNvXsHK_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_34DeleteFieldIndexCollectionInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %_RNvXsHV_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_24CreateVectorNameInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %_RNvXsI6_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_24DeleteVectorNameInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ]
  %.sroa.183.0.i.i = phi i32 [ undef, %_RNvXsGp_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18SyncPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.0357.i.sroa.44.0.copyload.i.i, %_RNvXsGy_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_20UpsertPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.01.i6.i.sroa.6.0.i.i, %_RNvXsGH_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_20DeletePointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.5.0.i59.i.i.i, %_RNvXsGQ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_21UpdateVectorsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.5.0.i106.i.i.i, %_RNvXsGZ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_21DeleteVectorsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.183.8.copyload257.i.i, %.noexc16.i ], [ %.sroa.183.8.copyload255.i.i, %.noexc17.i ], [ %.sroa.5.0.i164.i.i.i, %_RNvXsHh_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_27DeletePayloadPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.01.i188.i.sroa.6.0.i.i, %_RNvXsHq_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_26ClearPayloadPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.05.i247.i.sroa.4.0.i.i, %_RNvXsHz_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_34CreateFieldIndexCollectionInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %_RNvXsHK_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_34DeleteFieldIndexCollectionInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %_RNvXsHV_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_24CreateVectorNameInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %_RNvXsI6_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_24DeleteVectorNameInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ]
  %.sroa.179.0.i.i = phi i32 [ undef, %_RNvXsGp_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18SyncPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.0357.i.sroa.43.0.copyload.i.i, %_RNvXsGy_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_20UpsertPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.01.i6.i.sroa.5.0.i.i, %_RNvXsGH_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_20DeletePointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %i.jw, %_RNvXsGQ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_21UpdateVectorsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %i.lt, %_RNvXsGZ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_21DeleteVectorsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.179.8.copyload252.i.i, %.noexc16.i ], [ %.sroa.179.8.copyload250.i.i, %.noexc17.i ], [ %i.nx, %_RNvXsHh_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_27DeletePayloadPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.01.i188.i.sroa.5.0.i.i, %_RNvXsHq_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_26ClearPayloadPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.05.i247.i.sroa.0.0.i.i, %_RNvXsHz_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_34CreateFieldIndexCollectionInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %_RNvXsHK_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_34DeleteFieldIndexCollectionInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %_RNvXsHV_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_24CreateVectorNameInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %_RNvXsI6_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_24DeleteVectorNameInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ]
  %.sroa.178.0.i.i = phi i32 [ undef, %_RNvXsGp_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18SyncPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.0357.i.sroa.42.0.copyload.i.i, %_RNvXsGy_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_20UpsertPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.01.i6.i.sroa.4.0.i.i, %_RNvXsGH_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_20DeletePointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %_RNvXsGQ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_21UpdateVectorsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %_RNvXsGZ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_21DeleteVectorsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.178.8.copyload247.i.i, %.noexc16.i ], [ %.sroa.178.8.copyload245.i.i, %.noexc17.i ], [ undef, %_RNvXsHh_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_27DeletePayloadPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.01.i188.i.sroa.4.0.i.i, %_RNvXsHq_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_26ClearPayloadPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.511.0.i264.i.i.i, %_RNvXsHz_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_34CreateFieldIndexCollectionInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %_RNvXsHK_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_34DeleteFieldIndexCollectionInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %_RNvXsHV_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_24CreateVectorNameInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %_RNvXsI6_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_24DeleteVectorNameInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ]
  %.sroa.166.0.i.i = phi i32 [ undef, %_RNvXsGp_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18SyncPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.0357.i.sroa.40.0.copyload.i.i, %_RNvXsGy_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_20UpsertPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.57.0.i23.i.i.i, %_RNvXsGH_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_20DeletePointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.12.0.i.i.i.i, %_RNvXsGQ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_21UpdateVectorsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.15.0.i99.i.i.i, %_RNvXsGZ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_21DeleteVectorsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.166.8.copyload238.i.i, %.noexc16.i ], [ %.sroa.166.8.copyload236.i.i, %.noexc17.i ], [ %.sroa.15.0.i155.i.i.i, %_RNvXsHh_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_27DeletePayloadPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.57.0.i226.i.i.i, %_RNvXsHq_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_26ClearPayloadPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.54.0.i263.i.i.i, %_RNvXsHz_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_34CreateFieldIndexCollectionInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %_RNvXsHK_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_34DeleteFieldIndexCollectionInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %_RNvXsHV_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_24CreateVectorNameInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %_RNvXsI6_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_24DeleteVectorNameInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ]
  %.sroa.160.0.i.i = phi i32 [ undef, %_RNvXsGp_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18SyncPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.0357.i.sroa.39.0.copyload.i.i, %_RNvXsGy_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_20UpsertPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %i.ig, %_RNvXsGH_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_20DeletePointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.11.0.i.i.i.i, %_RNvXsGQ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_21UpdateVectorsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.14.0.i100.i.i.i, %_RNvXsGZ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_21DeleteVectorsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.160.8.copyload234.i.i, %.noexc16.i ], [ %.sroa.160.8.copyload232.i.i, %.noexc17.i ], [ %.sroa.14.0.i156.i.i.i, %_RNvXsHh_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_27DeletePayloadPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %i.pz, %_RNvXsHq_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_26ClearPayloadPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %i.te, %_RNvXsHz_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_34CreateFieldIndexCollectionInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %_RNvXsHK_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_34DeleteFieldIndexCollectionInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %_RNvXsHV_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_24CreateVectorNameInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %_RNvXsI6_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_24DeleteVectorNameInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ]
  %.sroa.158.0.i.i = phi i32 [ undef, %_RNvXsGp_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18SyncPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.0357.i.sroa.38.0.copyload.i.i, %_RNvXsGy_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_20UpsertPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.5.0.i22.i.i.i, %_RNvXsGH_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_20DeletePointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.54.i.i32.i.sroa.24.1.i.i, %_RNvXsGQ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_21UpdateVectorsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.13.i.i.sroa.25.0.i.i, %_RNvXsGZ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_21DeleteVectorsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.158.8.copyload229.i.i, %.noexc16.i ], [ %.sroa.158.8.copyload227.i.i, %.noexc17.i ], [ %.sroa.13.i129.i.sroa.25.0.i.i, %_RNvXsHh_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_27DeletePayloadPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.5.0.i225.i.i.i, %_RNvXsHq_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_26ClearPayloadPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %_RNvXsHz_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_34CreateFieldIndexCollectionInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %_RNvXsHK_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_34DeleteFieldIndexCollectionInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %_RNvXsHV_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_24CreateVectorNameInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %_RNvXsI6_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_24DeleteVectorNameInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ]
  %.sroa.154.0.i.i = phi i32 [ undef, %_RNvXsGp_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18SyncPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.0357.i.sroa.36.0.copyload.i.i, %_RNvXsGy_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_20UpsertPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %_RNvXsGH_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_20DeletePointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.54.i.i32.i.sroa.22.1.i.i, %_RNvXsGQ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_21UpdateVectorsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.13.i.i.sroa.23.0.i.i, %_RNvXsGZ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_21DeleteVectorsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.154.8.copyload219.i.i, %.noexc16.i ], [ %.sroa.154.8.copyload217.i.i, %.noexc17.i ], [ %.sroa.13.i129.i.sroa.23.0.i.i, %_RNvXsHh_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_27DeletePayloadPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %_RNvXsHq_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_26ClearPayloadPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.5.sroa.24.0.i.i.i.i, %_RNvXsHz_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_34CreateFieldIndexCollectionInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %_RNvXsHK_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_34DeleteFieldIndexCollectionInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %_RNvXsHV_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_24CreateVectorNameInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %_RNvXsI6_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_24DeleteVectorNameInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ]
  %.sroa.143.0.i.i = phi i32 [ %.sroa.05.i.i.sroa.4.0.i.i, %_RNvXsGp_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18SyncPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.0357.i.sroa.33.0.copyload.i.i, %_RNvXsGy_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_20UpsertPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.13.0.i.i.i.i, %_RNvXsGH_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_20DeletePointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.54.i.i32.i.sroa.19.1.i.i, %_RNvXsGQ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_21UpdateVectorsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.13.i.i.sroa.20.0.i.i, %_RNvXsGZ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_21DeleteVectorsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.143.8.copyload204.i.i, %.noexc16.i ], [ %.sroa.143.8.copyload202.i.i, %.noexc17.i ], [ %.sroa.13.i129.i.sroa.20.0.i.i, %_RNvXsHh_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_27DeletePayloadPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.13.0.i217.i.i.i, %_RNvXsHq_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_26ClearPayloadPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.5.sroa.21.0.i.i.i.i, %_RNvXsHz_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_34CreateFieldIndexCollectionInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %_RNvXsHK_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_34DeleteFieldIndexCollectionInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %_RNvXsHV_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_24CreateVectorNameInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %_RNvXsI6_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_24DeleteVectorNameInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ]
  %.sroa.135176.0.i.i = phi i32 [ %i.ea, %_RNvXsGp_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18SyncPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.0357.i.sroa.28.0.copyload.i.i, %_RNvXsGy_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_20UpsertPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.12.i.i.sroa.18.0.i.i, %_RNvXsGH_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_20DeletePointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.54.i.i32.i.sroa.14.1.i.i, %_RNvXsGQ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_21UpdateVectorsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.13.i.i.sroa.15.0.i.i, %_RNvXsGZ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_21DeleteVectorsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.135176.8.copyload179.i.i, %.noexc16.i ], [ %.sroa.135176.8.copyload177.i.i, %.noexc17.i ], [ %.sroa.13.i129.i.sroa.15.0.i.i, %_RNvXsHh_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_27DeletePayloadPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.12.i191.i.sroa.18.0.i.i, %_RNvXsHq_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_26ClearPayloadPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.21.i.i.sroa.7.0.i.i, %_RNvXsHz_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_34CreateFieldIndexCollectionInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %_RNvXsHK_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_34DeleteFieldIndexCollectionInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.05.i303.i.sroa.12.0.i.i, %_RNvXsHV_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_24CreateVectorNameInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %_RNvXsI6_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_24DeleteVectorNameInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ]
  %.sroa.134.0.i.i = phi i8 [ %.sroa.5.sroa.11.0.i.i.i.i, %_RNvXsGp_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18SyncPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.0357.i.sroa.26.0.copyload.i.i, %_RNvXsGy_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_20UpsertPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.12.i.i.sroa.16.0.i.i, %_RNvXsGH_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_20DeletePointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.54.i.i32.i.sroa.12.1.i.i, %_RNvXsGQ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_21UpdateVectorsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.13.i.i.sroa.13.0.i.i, %_RNvXsGZ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_21DeleteVectorsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.134.8.copyload171.i.i, %.noexc16.i ], [ %.sroa.134.8.copyload169.i.i, %.noexc17.i ], [ %.sroa.13.i129.i.sroa.13.0.i.i, %_RNvXsHh_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_27DeletePayloadPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.12.i191.i.sroa.16.0.i.i, %_RNvXsHq_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_26ClearPayloadPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.21.i.i.sroa.4.0.i.i, %_RNvXsHz_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_34CreateFieldIndexCollectionInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %_RNvXsHK_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_34DeleteFieldIndexCollectionInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.05.i303.i.sroa.10.0.i.i, %_RNvXsHV_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_24CreateVectorNameInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %_RNvXsI6_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_24DeleteVectorNameInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ]
  %.sroa.133.0.i.i = phi i32 [ %.sroa.5.sroa.10.0.i.i.i.i, %_RNvXsGp_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18SyncPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.0357.i.sroa.25.0.copyload.i.i, %_RNvXsGy_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_20UpsertPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.12.i.i.sroa.15.0.i.i, %_RNvXsGH_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_20DeletePointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.54.i.i32.i.sroa.11.1.i.i, %_RNvXsGQ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_21UpdateVectorsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.13.i.i.sroa.12.0.i.i, %_RNvXsGZ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_21DeleteVectorsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.133.8.copyload165.i.i, %.noexc16.i ], [ %.sroa.133.8.copyload163.i.i, %.noexc17.i ], [ %.sroa.13.i129.i.sroa.12.0.i.i, %_RNvXsHh_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_27DeletePayloadPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.12.i191.i.sroa.15.0.i.i, %_RNvXsHq_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_26ClearPayloadPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %_RNvXsHz_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_34CreateFieldIndexCollectionInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %_RNvXsHK_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_34DeleteFieldIndexCollectionInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.05.i303.i.sroa.9.0.i.i, %_RNvXsHV_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_24CreateVectorNameInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %_RNvXsI6_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_24DeleteVectorNameInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ]
  %.sroa.124.0.i.i = phi i32 [ %.sroa.5.sroa.8.i.i.sroa.6.0.i.i, %_RNvXsGp_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18SyncPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.0357.i.sroa.19.0.copyload.i.i, %_RNvXsGy_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_20UpsertPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.12.i.i.sroa.9.0.i.i, %_RNvXsGH_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_20DeletePointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.54.i.i32.i.sroa.5.1.i.i, %_RNvXsGQ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_21UpdateVectorsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.13.i.i.sroa.6.0.i.i, %_RNvXsGZ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_21DeleteVectorsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.124.8.copyload124.i.i, %.noexc16.i ], [ %.sroa.124.8.copyload122.i.i, %.noexc17.i ], [ %.sroa.13.i129.i.sroa.6.0.i.i, %_RNvXsHh_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_27DeletePayloadPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.12.i191.i.sroa.9.0.i.i, %_RNvXsHq_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_26ClearPayloadPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.5.sroa.13.0.i.i.i.i, %_RNvXsHz_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_34CreateFieldIndexCollectionInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %_RNvXsHK_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_34DeleteFieldIndexCollectionInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.05.i303.i.sroa.0.0.i.i, %_RNvXsHV_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_24CreateVectorNameInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %_RNvXsI6_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_24DeleteVectorNameInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ]
  %.sroa.115.0.i.i = phi i32 [ %.sroa.5.sroa.8.i.i.sroa.4.0.i.i, %_RNvXsGp_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18SyncPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.0357.i.sroa.17.0.copyload.i.i, %_RNvXsGy_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_20UpsertPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.12.i.i.sroa.7.0.i.i, %_RNvXsGH_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_20DeletePointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.54.i.i32.i.sroa.0.1.i.i, %_RNvXsGQ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_21UpdateVectorsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.13.i.i.sroa.4.0.i.i, %_RNvXsGZ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_21DeleteVectorsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.115.8.copyload108.i.i, %.noexc16.i ], [ %.sroa.115.8.copyload106.i.i, %.noexc17.i ], [ %.sroa.13.i129.i.sroa.4.0.i.i, %_RNvXsHh_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_27DeletePayloadPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.12.i191.i.sroa.7.0.i.i, %_RNvXsHq_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_26ClearPayloadPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.5.sroa.11.0.i258.i.i.i, %_RNvXsHz_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_34CreateFieldIndexCollectionInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.05.i280.i.sroa.6.0.i.i, %_RNvXsHK_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_34DeleteFieldIndexCollectionInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %i.wa, %_RNvXsHV_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_24CreateVectorNameInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.05.i332.i.sroa.6.0.i.i, %_RNvXsI6_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_24DeleteVectorNameInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ]
  %.sroa.100.0.i.i = phi i64 [ %.sroa.5.sroa.7.i.i.sroa.4.0.i.i, %_RNvXsGp_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18SyncPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.0357.i.sroa.14.0.copyload.i.i, %_RNvXsGy_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_20UpsertPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.12.i.i.sroa.4.0.i.i, %_RNvXsGH_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_20DeletePointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.8.i.i.sroa.7.0.i.i, %_RNvXsGQ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_21UpdateVectorsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.11.0.i101.i.i.i, %_RNvXsGZ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_21DeleteVectorsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.100.8.copyload86.i.i, %.noexc16.i ], [ %.sroa.100.8.copyload84.i.i, %.noexc17.i ], [ %.sroa.11.0.i158.i.i.i, %_RNvXsHh_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_27DeletePayloadPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.12.i191.i.sroa.4.0.i.i, %_RNvXsHq_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_26ClearPayloadPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.5.sroa.9.0.i259.i.i.i, %_RNvXsHz_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_34CreateFieldIndexCollectionInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.05.i280.i.sroa.0.0.i.i, %_RNvXsHK_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_34DeleteFieldIndexCollectionInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.56.i.i.i.sroa.6.1.i.i, %_RNvXsHV_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_24CreateVectorNameInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.05.i332.i.sroa.0.0.i.i, %_RNvXsI6_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_24DeleteVectorNameInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ]
  %.sroa.52.0.i.i = phi i64 [ %.sroa.5.sroa.5.i.i.sroa.0.0.i.i, %_RNvXsGp_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18SyncPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.0357.i.sroa.8.0.copyload.i.i, %_RNvXsGy_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_20UpsertPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.718.0.i.i.i.i, %_RNvXsGH_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_20DeletePointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.718.i.i.sroa.0.0.i.i, %_RNvXsGQ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_21UpdateVectorsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.7.i.i.sroa.0.0.i.i, %_RNvXsGZ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_21DeleteVectorsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.52.8.copyload48.i.i, %.noexc16.i ], [ %.sroa.52.8.copyload46.i.i, %.noexc17.i ], [ %.sroa.7.i128.i.sroa.0.0.i.i, %_RNvXsHh_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_27DeletePayloadPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.718.0.i221.i.i.i, %_RNvXsHq_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_26ClearPayloadPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.5.sroa.7.0.i.i.i.i, %_RNvXsHz_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_34CreateFieldIndexCollectionInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.5.sroa.5.i283.i.sroa.0.0.i.i, %_RNvXsHK_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_34DeleteFieldIndexCollectionInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.5.sroa.5.i306.i.sroa.0.0.i.i, %_RNvXsHV_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_24CreateVectorNameInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.5.sroa.5.i335.i.sroa.0.0.i.i, %_RNvXsI6_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_24DeleteVectorNameInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ]
  %.sroa.51.0.i.i = phi i64 [ %.sroa.5.sroa.4.i.i.sroa.5.0.i.i, %_RNvXsGp_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18SyncPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.0357.i.sroa.7.0.copyload.i.i, %_RNvXsGy_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_20UpsertPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.6.i.i.sroa.5.0.i.i, %_RNvXsGH_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_20DeletePointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.617.i.i.sroa.5.0.i.i, %_RNvXsGQ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_21UpdateVectorsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.617.i77.i.sroa.5.0.i.i, %_RNvXsGZ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_21DeleteVectorsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.51.8.copyload36.i.i, %.noexc16.i ], [ %.sroa.51.8.copyload34.i.i, %.noexc17.i ], [ %.sroa.617.i127.i.sroa.5.0.i.i, %_RNvXsHh_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_27DeletePayloadPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.6.i190.i.sroa.5.0.i.i, %_RNvXsHq_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_26ClearPayloadPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.5.sroa.6.0.i.i.i.i, %_RNvXsHz_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_34CreateFieldIndexCollectionInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.5.sroa.4.i282.i.sroa.5.0.i.i, %_RNvXsHK_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_34DeleteFieldIndexCollectionInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.5.sroa.4.i305.i.sroa.5.0.i.i, %_RNvXsHV_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_24CreateVectorNameInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.5.sroa.4.i334.i.sroa.5.0.i.i, %_RNvXsI6_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_24DeleteVectorNameInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ]
  %.sroa.30.0.i.i = phi i64 [ %.sroa.5.sroa.0.0.i.i.i.i, %_RNvXsGp_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18SyncPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.0357.i.sroa.4.0.copyload.i.i, %_RNvXsGy_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_20UpsertPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.516.0.i.i.i.i, %_RNvXsGH_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_20DeletePointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.516.0.i56.i.i.i, %_RNvXsGQ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_21UpdateVectorsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.516.0.i103.i.i.i, %_RNvXsGZ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_21DeleteVectorsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.30.8.copyload8.i.i, %.noexc16.i ], [ %.sroa.30.8.copyload6.i.i, %.noexc17.i ], [ %.sroa.516.0.i161.i.i.i, %_RNvXsHh_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_27DeletePayloadPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.516.0.i222.i.i.i, %_RNvXsHq_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_26ClearPayloadPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.5.sroa.0.0.i260.i.i.i, %_RNvXsHz_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_34CreateFieldIndexCollectionInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.5.sroa.0.0.i290.i.i.i, %_RNvXsHK_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_34DeleteFieldIndexCollectionInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.5.sroa.0.0.i317.i.i.i, %_RNvXsHV_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_24CreateVectorNameInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.5.sroa.0.0.i343.i.i.i, %_RNvXsI6_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_24DeleteVectorNameInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ]
  %.sroa.16.0.i.i = phi i64 [ %i.ck, %_RNvXsGp_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18SyncPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %i.ep, %_RNvXsGy_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_20UpsertPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %i.gs, %_RNvXsGH_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_20DeletePointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %i.ik, %_RNvXsGQ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_21UpdateVectorsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %i.kk, %_RNvXsGZ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_21DeleteVectorsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.16.8.copyload4.i.i, %.noexc16.i ], [ %.sroa.16.8.copyload3.i.i, %.noexc17.i ], [ %i.mp, %_RNvXsHh_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_27DeletePayloadPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %i.ol, %_RNvXsHq_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_26ClearPayloadPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %i.qd, %_RNvXsHz_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_34CreateFieldIndexCollectionInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %i.tq, %_RNvXsHK_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_34DeleteFieldIndexCollectionInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %i.uu, %_RNvXsHV_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_24CreateVectorNameInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %i.wf, %_RNvXsI6_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_24DeleteVectorNameInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ]
  %i.xj = phi <4 x i8> [ %i.dx, %_RNvXsGp_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18SyncPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %i.go, %_RNvXsGy_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_20UpsertPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %i.hu, %_RNvXsGH_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_20DeletePointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %i.js, %_RNvXsGQ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_21UpdateVectorsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %i.lp, %_RNvXsGZ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_21DeleteVectorsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %i.mi, %.noexc16.i ], [ %i.mm, %.noexc17.i ], [ %i.nt, %_RNvXsHh_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_27DeletePayloadPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %i.pn, %_RNvXsHq_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_26ClearPayloadPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %i.ta, %_RNvXsHz_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_34CreateFieldIndexCollectionInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %_RNvXsHK_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_34DeleteFieldIndexCollectionInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %i.vx, %_RNvXsHV_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_24CreateVectorNameInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %_RNvXsI6_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_24DeleteVectorNameInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ]
  %i.xk = phi <2 x i32> [ %i.eo, %_RNvXsGp_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18SyncPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %i.gp, %_RNvXsGy_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_20UpsertPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %i.hv, %_RNvXsGH_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_20DeletePointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %i.jt, %_RNvXsGQ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_21UpdateVectorsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %i.lq, %_RNvXsGZ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_21DeleteVectorsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %i.mj, %.noexc16.i ], [ %i.mn, %.noexc17.i ], [ %i.nu, %_RNvXsHh_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_27DeletePayloadPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %i.po, %_RNvXsHq_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_26ClearPayloadPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %i.tb, %_RNvXsHz_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_34CreateFieldIndexCollectionInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %_RNvXsHK_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_34DeleteFieldIndexCollectionInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %_RNvXsHV_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_24CreateVectorNameInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %_RNvXsI6_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_24DeleteVectorNameInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ]
  %i.xl = phi <2 x i32> [ undef, %_RNvXsGp_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18SyncPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %i.gr, %_RNvXsGy_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_20UpsertPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %_RNvXsGH_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_20DeletePointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %i.kd, %_RNvXsGQ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_21UpdateVectorsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %i.ma, %_RNvXsGZ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_21DeleteVectorsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %i.mk, %.noexc16.i ], [ %i.mo, %.noexc17.i ], [ %i.oe, %_RNvXsHh_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_27DeletePayloadPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %_RNvXsHq_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_26ClearPayloadPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %_RNvXsHz_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_34CreateFieldIndexCollectionInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %_RNvXsHK_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_34DeleteFieldIndexCollectionInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %_RNvXsHV_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_24CreateVectorNameInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %_RNvXsI6_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_24DeleteVectorNameInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ]
  %i.xm = phi <2 x i64> [ %i.dy, %_RNvXsGp_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_18SyncPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %i.gn, %_RNvXsGy_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_20UpsertPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %i.hw, %_RNvXsGH_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_20DeletePointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %i.ju, %_RNvXsGQ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_21UpdateVectorsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %i.lr, %_RNvXsGZ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_21DeleteVectorsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %i.mh, %.noexc16.i ], [ %i.ml, %.noexc17.i ], [ %i.nv, %_RNvXsHh_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_27DeletePayloadPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %i.pp, %_RNvXsHq_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_26ClearPayloadPointsInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %i.tc, %_RNvXsHz_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_34CreateFieldIndexCollectionInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %i.ug, %_RNvXsHK_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_34DeleteFieldIndexCollectionInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %i.vn, %_RNvXsHV_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_24CreateVectorNameInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ %i.wv, %_RNvXsI6_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_24DeleteVectorNameInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.sroa.5.i335.i.sroa.4.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.sroa.5.i306.i.sroa.4.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.sroa.5.i283.i.sroa.4.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.sroa.13.i.i.i.sroa.0.i.i)
  %.sroa.65.sroa.16.0.insert.ext.i.i = zext i32 %.sroa.65.sroa.16.0.i.i to i64
  %.sroa.65.sroa.16.0.insert.shift.i.i = shl nuw i64 %.sroa.65.sroa.16.0.insert.ext.i.i, 32
  %.sroa.65.sroa.0.0.insert.ext.i.i = zext i32 %.sroa.65.sroa.0.0.i.i to i64
  %.sroa.65.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.65.sroa.16.0.insert.shift.i.i, %.sroa.65.sroa.0.0.insert.ext.i.i
  %.sroa.77.sroa.0.sroa.16.0.insert.ext.i.i = shl i32 %.sroa.77.sroa.0.sroa.16.sroa.0.0.i.i, 8
  %.sroa.77.sroa.0.sroa.0.0.insert.ext.i.i = zext i8 %.sroa.77.sroa.0.sroa.0.0.i.i to i32
  %.sroa.77.sroa.0.sroa.0.0.insert.insert.i.i = or disjoint i32 %.sroa.77.sroa.0.sroa.16.0.insert.ext.i.i, %.sroa.77.sroa.0.sroa.0.0.insert.ext.i.i
  %.sroa.77.sroa.16.0.insert.shift.i.i = shl nuw i64 %.sroa.77.sroa.16.0.i.i, 32
  %.sroa.77.sroa.0.0.insert.ext.i.i = zext i32 %.sroa.77.sroa.0.sroa.0.0.insert.insert.i.i to i64
  %.sroa.77.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.77.sroa.16.0.insert.shift.i.i, %.sroa.77.sroa.0.0.insert.ext.i.i
  %.sroa.85.sroa.16.0.insert.ext.i.i = zext i32 %.sroa.85.sroa.16.0.i.i to i64
  %.sroa.85.sroa.16.0.insert.shift.i.i = shl nuw i64 %.sroa.85.sroa.16.0.insert.ext.i.i, 32
  %.sroa.85.sroa.0.0.insert.ext.i.i = zext i32 %.sroa.85.sroa.0.0.i.i to i64
  %.sroa.85.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.85.sroa.16.0.insert.shift.i.i, %.sroa.85.sroa.0.0.insert.ext.i.i
  %.sroa.91.sroa.16.0.insert.ext.i.i = zext i32 %.sroa.91.sroa.16.0.i.i to i64
  %.sroa.91.sroa.16.0.insert.shift.i.i = shl nuw i64 %.sroa.91.sroa.16.0.insert.ext.i.i, 32
  %.sroa.91.sroa.0.0.insert.ext.i.i = zext i32 %.sroa.91.sroa.0.0.i.i to i64
  %.sroa.91.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.91.sroa.16.0.insert.shift.i.i, %.sroa.91.sroa.0.0.insert.ext.i.i
  %.sroa.105.sroa.0.0.insert.ext.i.i = zext i8 %.sroa.105.sroa.0.0.i.i to i64
  %.sroa.105.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.105.sroa.16.sroa.0.0.i.i, %.sroa.105.sroa.0.0.insert.ext.i.i
  %.sroa.109.sroa.16.0.insert.shift.i.i = shl nuw i64 %.sroa.109.sroa.16.0.i.i, 32
  %.sroa.109.sroa.0.0.insert.ext.i.i = zext i32 %.sroa.109.sroa.0.0.i.i to i64
  %.sroa.109.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.109.sroa.16.0.insert.shift.i.i, %.sroa.109.sroa.0.0.insert.ext.i.i
  %.sroa.118.sroa.16.0.insert.ext.i.i = zext i24 %.sroa.118.sroa.16.sroa.0.0.i.i to i32
  %.sroa.118.sroa.16.0.insert.shift.i.i = shl nuw i32 %.sroa.118.sroa.16.0.insert.ext.i.i, 8
  %.sroa.118.sroa.0.0.insert.ext.i.i = zext i8 %.sroa.118.sroa.0.0.i.i to i32
  %.sroa.118.sroa.0.0.insert.insert.i.i = or disjoint i32 %.sroa.118.sroa.16.0.insert.shift.i.i, %.sroa.118.sroa.0.0.insert.ext.i.i
  %.sroa.130.sroa.0.0.insert.ext.i.i = zext i8 %.sroa.130.sroa.0.0.i.i to i32
  %.sroa.130.sroa.0.0.insert.insert.i.i = or disjoint i32 %.sroa.130.sroa.14.sroa.0.0.i.i, %.sroa.130.sroa.0.0.insert.ext.i.i
  %.sroa.136.sroa.14.0.insert.shift.i.i = shl nuw i32 %.sroa.136.sroa.14.sroa.0.0.i.i, 8
  %.sroa.136.sroa.0.0.insert.ext.i.i = zext i8 %.sroa.136.sroa.0.0.i.i to i32
  %.sroa.136.sroa.0.0.insert.insert.i.i = or disjoint i32 %.sroa.136.sroa.14.0.insert.shift.i.i, %.sroa.136.sroa.0.0.insert.ext.i.i
  %.sroa.146.sroa.13.0.insert.shift.i.i = shl nuw i32 %.sroa.146.sroa.13.sroa.0.0.i.i, 8
  %.sroa.146.sroa.0.0.insert.ext.i.i = zext i8 %.sroa.146.sroa.0.0.i.i to i32
  %.sroa.146.sroa.0.0.insert.insert.i.i = or disjoint i32 %.sroa.146.sroa.13.0.insert.shift.i.i, %.sroa.146.sroa.0.0.insert.ext.i.i
  %.sroa.151.sroa.0.0.insert.ext.i.i = zext i8 %.sroa.151.sroa.0.0.i.i to i32
  %.sroa.151.sroa.0.0.insert.insert.i.i = or disjoint i32 %.sroa.151.sroa.12.sroa.0.0.i.i, %.sroa.151.sroa.0.0.insert.ext.i.i
  %.sroa.155.sroa.0.0.insert.ext.i.i = zext i8 %.sroa.155.sroa.0.0.i.i to i32
  %.sroa.155.sroa.0.0.insert.insert.i.i = or disjoint i32 %.sroa.155.sroa.12.sroa.0.0.i.i, %.sroa.155.sroa.0.0.insert.ext.i.i
  %.sroa.172.sroa.0.0.insert.ext.i.i = zext i8 %.sroa.172.sroa.0.0.i.i to i32
  %.sroa.172.sroa.0.0.insert.insert.i.i = or disjoint i32 %.sroa.172.sroa.12.sroa.0.0.i.i, %.sroa.172.sroa.0.0.insert.ext.i.i
  %.sroa.204.sroa.9.0.insert.ext.i.i = zext i24 %.sroa.204.sroa.9.sroa.0.0.i.i to i32
  %.sroa.204.sroa.9.0.insert.shift.i.i = shl nuw i32 %.sroa.204.sroa.9.0.insert.ext.i.i, 8
  %.sroa.204.sroa.0.0.insert.ext.i.i = zext i8 %.sroa.204.sroa.0.0.i.i to i32
  %.sroa.204.sroa.0.0.insert.insert.i.i = or disjoint i32 %.sroa.204.sroa.9.0.insert.shift.i.i, %.sroa.204.sroa.0.0.insert.ext.i.i
  br label %bb.hg

bb.hg:                                            ; preds = %_RNvXNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant16update_operationNtB2_6UpdateNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i, %bb.d
  %.sroa.5.sroa.58.0.i.i = phi i8 [ undef, %bb.d ], [ %.sroa.212.0.i.i, %_RNvXNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant16update_operationNtB2_6UpdateNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.5.sroa.56.0.i.i = phi i32 [ undef, %bb.d ], [ %.sroa.204.sroa.0.0.insert.insert.i.i, %_RNvXNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant16update_operationNtB2_6UpdateNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.5.sroa.55.0.i.i = phi i32 [ undef, %bb.d ], [ %.sroa.203.0.i.i, %_RNvXNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant16update_operationNtB2_6UpdateNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.5.sroa.51.0.i.i = phi i8 [ undef, %bb.d ], [ %.sroa.199290.0.i.i, %_RNvXNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant16update_operationNtB2_6UpdateNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.5.sroa.50.0.i.i = phi i32 [ undef, %bb.d ], [ %.sroa.199.0.i.i, %_RNvXNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant16update_operationNtB2_6UpdateNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.5.sroa.48.0.i.i = phi i8 [ undef, %bb.d ], [ %.sroa.195.0.i.i, %_RNvXNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant16update_operationNtB2_6UpdateNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.5.sroa.47.0.i.i = phi i32 [ undef, %bb.d ], [ %.sroa.192.0.i.i, %_RNvXNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant16update_operationNtB2_6UpdateNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.5.sroa.46.0.i.i = phi i32 [ undef, %bb.d ], [ %.sroa.189.0.i.i, %_RNvXNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant16update_operationNtB2_6UpdateNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.5.sroa.45.0.i.i = phi i32 [ undef, %bb.d ], [ %.sroa.186.0.i.i, %_RNvXNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant16update_operationNtB2_6UpdateNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.5.sroa.44.0.i.i = phi i32 [ undef, %bb.d ], [ %.sroa.183.0.i.i, %_RNvXNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant16update_operationNtB2_6UpdateNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.5.sroa.43.0.i.i = phi i32 [ undef, %bb.d ], [ %.sroa.179.0.i.i, %_RNvXNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant16update_operationNtB2_6UpdateNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.5.sroa.42.0.i.i = phi i32 [ undef, %bb.d ], [ %.sroa.178.0.i.i, %_RNvXNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant16update_operationNtB2_6UpdateNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.5.sroa.41.0.i.i = phi i32 [ undef, %bb.d ], [ %.sroa.172.sroa.0.0.insert.insert.i.i, %_RNvXNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant16update_operationNtB2_6UpdateNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.5.sroa.40.0.i.i = phi i32 [ undef, %bb.d ], [ %.sroa.166.0.i.i, %_RNvXNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant16update_operationNtB2_6UpdateNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.5.sroa.39.0.i.i = phi i32 [ undef, %bb.d ], [ %.sroa.160.0.i.i, %_RNvXNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant16update_operationNtB2_6UpdateNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.5.sroa.38.0.i.i = phi i32 [ undef, %bb.d ], [ %.sroa.158.0.i.i, %_RNvXNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant16update_operationNtB2_6UpdateNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.5.sroa.37.0.i.i = phi i32 [ undef, %bb.d ], [ %.sroa.155.sroa.0.0.insert.insert.i.i, %_RNvXNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant16update_operationNtB2_6UpdateNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.5.sroa.36.0.i.i = phi i32 [ undef, %bb.d ], [ %.sroa.154.0.i.i, %_RNvXNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant16update_operationNtB2_6UpdateNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.5.sroa.35.0.i.i = phi i32 [ undef, %bb.d ], [ %.sroa.151.sroa.0.0.insert.insert.i.i, %_RNvXNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant16update_operationNtB2_6UpdateNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.5.sroa.34.0.i.i = phi i32 [ undef, %bb.d ], [ %.sroa.146.sroa.0.0.insert.insert.i.i, %_RNvXNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant16update_operationNtB2_6UpdateNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.5.sroa.33.0.i.i = phi i32 [ undef, %bb.d ], [ %.sroa.143.0.i.i, %_RNvXNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant16update_operationNtB2_6UpdateNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.5.sroa.29.0.i.i = phi i32 [ undef, %bb.d ], [ %.sroa.136.sroa.0.0.insert.insert.i.i, %_RNvXNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant16update_operationNtB2_6UpdateNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.5.sroa.28.0.i.i = phi i32 [ undef, %bb.d ], [ %.sroa.135176.0.i.i, %_RNvXNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant16update_operationNtB2_6UpdateNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.5.sroa.26.0.i.i = phi i8 [ undef, %bb.d ], [ %.sroa.134.0.i.i, %_RNvXNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant16update_operationNtB2_6UpdateNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.5.sroa.25.0.i.i = phi i32 [ undef, %bb.d ], [ %.sroa.133.0.i.i, %_RNvXNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant16update_operationNtB2_6UpdateNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.5.sroa.24.0.i.i = phi i32 [ undef, %bb.d ], [ %.sroa.130.sroa.0.0.insert.insert.i.i, %_RNvXNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant16update_operationNtB2_6UpdateNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.5.sroa.19.0.i.i = phi i32 [ undef, %bb.d ], [ %.sroa.124.0.i.i, %_RNvXNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant16update_operationNtB2_6UpdateNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.5.sroa.18.0.i.i = phi i32 [ undef, %bb.d ], [ %.sroa.118.sroa.0.0.insert.insert.i.i, %_RNvXNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant16update_operationNtB2_6UpdateNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.5.sroa.17.0.i.i = phi i32 [ undef, %bb.d ], [ %.sroa.115.0.i.i, %_RNvXNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant16update_operationNtB2_6UpdateNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.5.sroa.16.0.i.i = phi i64 [ undef, %bb.d ], [ %.sroa.109.sroa.0.0.insert.insert.i.i, %_RNvXNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant16update_operationNtB2_6UpdateNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.5.sroa.15.0.i.i = phi i64 [ undef, %bb.d ], [ %.sroa.105.sroa.0.0.insert.insert.i.i, %_RNvXNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant16update_operationNtB2_6UpdateNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.5.sroa.14.0.i.i = phi i64 [ undef, %bb.d ], [ %.sroa.100.0.i.i, %_RNvXNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant16update_operationNtB2_6UpdateNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.5.sroa.13.0.i.i = phi i64 [ undef, %bb.d ], [ %.sroa.91.sroa.0.0.insert.insert.i.i, %_RNvXNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant16update_operationNtB2_6UpdateNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.5.sroa.12.0.i.i = phi i64 [ undef, %bb.d ], [ %.sroa.85.sroa.0.0.insert.insert.i.i, %_RNvXNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant16update_operationNtB2_6UpdateNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.5.sroa.11.0.i.i = phi i64 [ undef, %bb.d ], [ %.sroa.77.sroa.0.0.insert.insert.i.i, %_RNvXNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant16update_operationNtB2_6UpdateNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.5.sroa.10.0.i.i = phi i64 [ undef, %bb.d ], [ %.sroa.65.sroa.0.0.insert.insert.i.i, %_RNvXNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant16update_operationNtB2_6UpdateNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.5.sroa.8.0.i.i = phi i64 [ undef, %bb.d ], [ %.sroa.52.0.i.i, %_RNvXNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant16update_operationNtB2_6UpdateNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.5.sroa.7.0.i.i = phi i64 [ undef, %bb.d ], [ %.sroa.51.0.i.i, %_RNvXNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant16update_operationNtB2_6UpdateNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.5.sroa.4.0.i.i = phi i64 [ undef, %bb.d ], [ %.sroa.30.0.i.i, %_RNvXNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant16update_operationNtB2_6UpdateNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.5.sroa.0.0.i.i = phi i64 [ undef, %bb.d ], [ %.sroa.16.0.i.i, %_RNvXNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant16update_operationNtB2_6UpdateNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i ]
  %i.xn = phi <4 x i8> [ undef, %bb.d ], [ %i.xj, %_RNvXNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant16update_operationNtB2_6UpdateNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i ]
  %i.xo = phi <2 x i32> [ undef, %bb.d ], [ %i.xk, %_RNvXNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant16update_operationNtB2_6UpdateNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i ]
  %i.xp = phi <2 x i32> [ undef, %bb.d ], [ %i.xl, %_RNvXNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant16update_operationNtB2_6UpdateNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i ]
  %i.xq = phi <2 x i64> [ undef, %bb.d ], [ %i.xm, %_RNvXNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant16update_operationNtB2_6UpdateNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10155.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10155.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.54.sroa.0.i.i187.i.i.i, i64 16, i1 false), !noalias !22680
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.28173.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.28173.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.05.i303.i.sroa.11.i.i, i64 7, i1 false), !noalias !22680
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.33178.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.33178.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.sroa.20.i.i.i.i, i64 24, i1 false), !noalias !22680
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.50195.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.50195.i, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.05.i247.i.sroa.9.i.i, i64 3, i1 false), !noalias !22680
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.53198.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.53198.i, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.58.i248.i.i.i, i64 3, i1 false), !noalias !22680
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.58203.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %.sroa.58203.i, ptr noundef nonnull align 8 dereferenceable(28) %.sroa.211.i.i, i64 28, i1 false), !noalias !22680
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.60205.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.60205.i, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.213.i.i, i64 3, i1 false), !noalias !22680
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.61206.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.61206.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.214.i.i, i64 16, i1 false), !noalias !22680
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.05.i303.i.sroa.11.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.05.i247.i.sroa.9.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.58.i248.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.sroa.20.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.54.sroa.0.i.i187.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.211.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.213.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.214.i.i)
  %i.xr = getelementptr inbounds nuw [336 x i8], ptr %i.bt, i64 %.sroa.7.0288.i ; 53 uses
  store i64 %i.ci, ptr %i.xr, align 8, !noalias !22681
  %.sroa.4149.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.xr, i64 8
  store i64 %.sroa.5.sroa.0.0.i.i, ptr %.sroa.4149.0..sroa_idx.i, align 8, !noalias !22681
  %.sroa.5150.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.xr, i64 16
  store i64 %.sroa.5.sroa.4.0.i.i, ptr %.sroa.5150.0..sroa_idx.i, align 8, !noalias !22681
  %.sroa.6151.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.xr, i64 24
  store <2 x i64> %i.xq, ptr %.sroa.6151.0..sroa_idx.i, align 8, !noalias !22681
  %.sroa.8153.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.xr, i64 40
  store i64 %.sroa.5.sroa.7.0.i.i, ptr %.sroa.8153.0..sroa_idx.i, align 8, !noalias !22681
  %.sroa.9154.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.xr, i64 48
  store i64 %.sroa.5.sroa.8.0.i.i, ptr %.sroa.9154.0..sroa_idx.i, align 8, !noalias !22681
  %.sroa.10155.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.xr, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10155.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10155.i, i64 16, i1 false), !noalias !22681
  %.sroa.11156.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.xr, i64 72
  store i64 %.sroa.5.sroa.10.0.i.i, ptr %.sroa.11156.0..sroa_idx.i, align 8, !noalias !22681
  %.sroa.12157.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.xr, i64 80
  store i64 %.sroa.5.sroa.11.0.i.i, ptr %.sroa.12157.0..sroa_idx.i, align 8, !noalias !22681
  %.sroa.13158.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.xr, i64 88
  store i64 %.sroa.5.sroa.12.0.i.i, ptr %.sroa.13158.0..sroa_idx.i, align 8, !noalias !22681
  %.sroa.14159.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.xr, i64 96
  store i64 %.sroa.5.sroa.13.0.i.i, ptr %.sroa.14159.0..sroa_idx.i, align 8, !noalias !22681
  %.sroa.15160.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.xr, i64 104
  store i64 %.sroa.5.sroa.14.0.i.i, ptr %.sroa.15160.0..sroa_idx.i, align 8, !noalias !22681
  %.sroa.16161.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.xr, i64 112
  store i64 %.sroa.5.sroa.15.0.i.i, ptr %.sroa.16161.0..sroa_idx.i, align 8, !noalias !22681
  %.sroa.17162.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.xr, i64 120
  store i64 %.sroa.5.sroa.16.0.i.i, ptr %.sroa.17162.0..sroa_idx.i, align 8, !noalias !22681
  %.sroa.18163.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.xr, i64 128
  store i32 %.sroa.5.sroa.17.0.i.i, ptr %.sroa.18163.0..sroa_idx.i, align 8, !noalias !22681
  %.sroa.19164.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.xr, i64 132
  store i32 %.sroa.5.sroa.18.0.i.i, ptr %.sroa.19164.0..sroa_idx.i, align 4, !noalias !22681
  %.sroa.20165.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.xr, i64 136
  store i32 %.sroa.5.sroa.19.0.i.i, ptr %.sroa.20165.0..sroa_idx.i, align 8, !noalias !22681
  %.sroa.21166.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.xr, i64 140
  store <4 x i8> %i.xn, ptr %.sroa.21166.0..sroa_idx.i, align 4, !noalias !22681
  %.sroa.25170.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.xr, i64 144
  store i32 %.sroa.5.sroa.24.0.i.i, ptr %.sroa.25170.0..sroa_idx.i, align 8, !noalias !22681
  %.sroa.26171.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.xr, i64 148
  store i32 %.sroa.5.sroa.25.0.i.i, ptr %.sroa.26171.0..sroa_idx.i, align 4, !noalias !22681
  %.sroa.27172.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.xr, i64 152
  store i8 %.sroa.5.sroa.26.0.i.i, ptr %.sroa.27172.0..sroa_idx.i, align 8, !noalias !22681
  %.sroa.28173.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.xr, i64 153
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.28173.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.28173.i, i64 7, i1 false), !noalias !22681
  %.sroa.29174.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.xr, i64 160
  store i32 %.sroa.5.sroa.28.0.i.i, ptr %.sroa.29174.0..sroa_idx.i, align 8, !noalias !22681
  %.sroa.30175.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.xr, i64 164
  store i32 %.sroa.5.sroa.29.0.i.i, ptr %.sroa.30175.0..sroa_idx.i, align 4, !noalias !22681
  %.sroa.31176.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.xr, i64 168
  store <2 x i32> %i.xo, ptr %.sroa.31176.0..sroa_idx.i, align 8, !noalias !22681
  %.sroa.33178.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.xr, i64 176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.33178.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.33178.i, i64 24, i1 false), !noalias !22681
  %.sroa.34179.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.xr, i64 200
  store i32 %.sroa.5.sroa.33.0.i.i, ptr %.sroa.34179.0..sroa_idx.i, align 8, !noalias !22681
  %.sroa.35180.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.xr, i64 204
  store i32 %.sroa.5.sroa.34.0.i.i, ptr %.sroa.35180.0..sroa_idx.i, align 4, !noalias !22681
  %.sroa.36181.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.xr, i64 208
  store i32 %.sroa.5.sroa.35.0.i.i, ptr %.sroa.36181.0..sroa_idx.i, align 8, !noalias !22681
  %.sroa.37182.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.xr, i64 212
  store i32 %.sroa.5.sroa.36.0.i.i, ptr %.sroa.37182.0..sroa_idx.i, align 4, !noalias !22681
  %.sroa.38183.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.xr, i64 216
  store i32 %.sroa.5.sroa.37.0.i.i, ptr %.sroa.38183.0..sroa_idx.i, align 8, !noalias !22681
  %.sroa.39184.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.xr, i64 220
  store i32 %.sroa.5.sroa.38.0.i.i, ptr %.sroa.39184.0..sroa_idx.i, align 4, !noalias !22681
  %.sroa.40185.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.xr, i64 224
  store i32 %.sroa.5.sroa.39.0.i.i, ptr %.sroa.40185.0..sroa_idx.i, align 8, !noalias !22681
  %.sroa.41186.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.xr, i64 228
  store i32 %.sroa.5.sroa.40.0.i.i, ptr %.sroa.41186.0..sroa_idx.i, align 4, !noalias !22681
  %.sroa.42187.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.xr, i64 232
  store i32 %.sroa.5.sroa.41.0.i.i, ptr %.sroa.42187.0..sroa_idx.i, align 8, !noalias !22681
  %.sroa.43188.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.xr, i64 236
  store i32 %.sroa.5.sroa.42.0.i.i, ptr %.sroa.43188.0..sroa_idx.i, align 4, !noalias !22681
  %.sroa.44189.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.xr, i64 240
  store i32 %.sroa.5.sroa.43.0.i.i, ptr %.sroa.44189.0..sroa_idx.i, align 8, !noalias !22681
  %.sroa.45190.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.xr, i64 244
  store i32 %.sroa.5.sroa.44.0.i.i, ptr %.sroa.45190.0..sroa_idx.i, align 4, !noalias !22681
  %.sroa.46191.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.xr, i64 248
  store i32 %.sroa.5.sroa.45.0.i.i, ptr %.sroa.46191.0..sroa_idx.i, align 8, !noalias !22681
  %.sroa.47192.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.xr, i64 252
  store i32 %.sroa.5.sroa.46.0.i.i, ptr %.sroa.47192.0..sroa_idx.i, align 4, !noalias !22681
  %.sroa.48193.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.xr, i64 256
  store i32 %.sroa.5.sroa.47.0.i.i, ptr %.sroa.48193.0..sroa_idx.i, align 8, !noalias !22681
  %.sroa.49194.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.xr, i64 260
  store i8 %.sroa.5.sroa.48.0.i.i, ptr %.sroa.49194.0..sroa_idx.i, align 4, !noalias !22681
  %.sroa.50195.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.xr, i64 261
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.50195.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.50195.i, i64 3, i1 false), !noalias !22681
  %.sroa.51196.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.xr, i64 264
  store i32 %.sroa.5.sroa.50.0.i.i, ptr %.sroa.51196.0..sroa_idx.i, align 8, !noalias !22681
  %.sroa.52197.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.xr, i64 268
  store i8 %.sroa.5.sroa.51.0.i.i, ptr %.sroa.52197.0..sroa_idx.i, align 4, !noalias !22681
  %.sroa.53198.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.xr, i64 269
end_hunk_0
