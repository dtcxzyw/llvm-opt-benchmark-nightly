Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/qdrant.qdrant.3f8cc1c7dccbb09-cgu.019?download=true
inline.NumInlined: 5008
inline.NumDeleted: 2031
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNCNvMNtNtNtCsl8OoimOLbh_6qdrant5tonic3api19points_internal_apiNtB4_21PointsInternalService23delete_vectors_internal0Ba_:bb.a
  store <4 x i8> <i8 1, i8 0, i8 0, i8 0>, ptr %i.il, align 1, !noalias !5923
  %i.io = getelementptr inbounds nuw i8, ptr %1, i64 2370
  store i8 1, ptr %i.io, align 2, !noalias !5923
  %i.ip = getelementptr inbounds nuw i8, ptr %1, i64 2296 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ip, ptr noundef nonnull align 8 dereferenceable(48) %i.ig, i64 48, i1 false), !noalias !5923
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !5923
  invoke void @_RNvXsE_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringuNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateENtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12IntoIterator9into_iterCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.r, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.f)
          to label %bb.cb unwind label %bb.ca, !noalias !5926

bb.ca:                                            ; preds = %bb.cb, %bb.bz
  %i.iq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !5923
  br label %.body80.i.i

bb.cb:                                            ; preds = %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !5927
  %i.ir = getelementptr inbounds nuw i8, ptr %1, i64 2344 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !5928
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.e, ptr noundef nonnull readonly align 8 dereferenceable(64) %i.r, i64 64, i1 false), !alias.scope !5929, !noalias !5930
  invoke void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_iterINtB4_3VecNtNtB6_6string6StringEINtB2_12SpecFromIterBU_INtNtNtNtCsG258MDvU3F_3std11collections4hash3set8IntoIterBU_EE9from_iterCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ir, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.e)
          to label %bb.cc unwind label %bb.ca, !noalias !5926

bb.cc:                                            ; preds = %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !5928
  %i.is = getelementptr inbounds nuw i8, ptr %1, i64 2369
  store i8 1, ptr %i.is, align 1, !noalias !5923
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !5923
  %i.it = load i64, ptr %i.ij, align 8, !range !23, !noalias !5923, !noundef !12
  %.not13.i.i = icmp eq i64 %i.it, -2
  br i1 %.not13.i.i, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  store i8 0, ptr %i.ii, align 4, !noalias !5923
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !5923
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.q, ptr noundef nonnull align 8 dereferenceable(104) %i.ij, i64 104, i1 false), !noalias !5923
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !5923
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ir)
          to label %bb.cg unwind label %bb.cf, !noalias !5926

bb.ce:                                            ; preds = %bb.dy, %bb.cc
  %i.iu = phi ptr [ %i.hx, %bb.cc ], [ %i.mw, %bb.dy ] ; 2 uses
  %i.iv = phi ptr [ %i.hy, %bb.cc ], [ %i.mx, %bb.dy ] ; 2 uses
  %i.iw = phi ptr [ %i.hz, %bb.cc ], [ %i.my, %bb.dy ] ; 2 uses
  %i.ix = phi ptr [ %i.ia, %bb.cc ], [ %i.mz, %bb.dy ] ; 2 uses
  %.sroa.5169.sroa.0.0.i.i = phi i64 [ undef, %bb.cc ], [ %.sroa.2.sroa.3.sroa.0.0.copyload.i.i, %bb.dy ]
  %.sroa.5169.sroa.3.0.i.i = phi ptr [ undef, %bb.cc ], [ %.sroa.2.sroa.3.sroa.3.0.copyload.i.i, %bb.dy ]
  %.sroa.5169.sroa.5.0.i.i = phi i64 [ undef, %bb.cc ], [ %.sroa.2.sroa.3.sroa.5.0.copyload.i.i, %bb.dy ]
  %.sroa.0166.0.i.i = phi i64 [ 2, %bb.cc ], [ %.sroa.2.sroa.0.0.copyload.i.i, %bb.dy ]
  %i.iy = getelementptr inbounds nuw i8, ptr %1, i64 2272 ; 2 uses
  %i.iz = load i64, ptr %i.iy, align 8, !range !22, !noalias !5923, !noundef !12
  %.not22.i.i = icmp eq i64 %i.iz, -1
  br i1 %.not22.i.i, label %bb.dz, label %bb.ed

bb.cf:                                            ; preds = %bb.cd
  %i.ja = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !5923
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs607s0NAIaWN_7segment5types6FilterECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(104) %i.q) #20
          to label %bb.dp unwind label %bb.dl, !noalias !5926

bb.cg:                                            ; preds = %bb.cd
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !5923
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.8.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(104) %i.q, i64 104, i1 false), !noalias !5923
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false), !noalias !5923
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !5923
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !5923
  %i.jb = getelementptr inbounds nuw i8, ptr %1, i64 2379 ; 2 uses
  store i8 1, ptr %i.jb, align 1, !noalias !5923
  %i.jc = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 2, ptr %i.jc, align 8, !noalias !5923
  store i64 6, ptr %i.o, align 8, !noalias !5923
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0144.sroa.0.i.i)
  %i.jd = load ptr, ptr %i.ie, align 8, !noalias !5923, !nonnull !12, !align !19, !noundef !12
  %.val66.i.i = load ptr, ptr %i.jd, align 8, !noalias !5926, !nonnull !12, !noundef !12
  %i.je = getelementptr inbounds nuw i8, ptr %.val66.i.i, i64 16
  %i.jf = getelementptr i8, ptr %1, i64 1688
  %.val59.i.i = load ptr, ptr %i.jf, align 8, !noalias !5923, !nonnull !12, !noundef !12
  %i.jg = getelementptr i8, ptr %1, i64 1696
  %.val60.i.i = load i64, ptr %i.jg, align 8, !noalias !5923, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !5923
  store i8 0, ptr %i.jb, align 1, !noalias !5923
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.n, ptr noundef nonnull align 8 dereferenceable(256) %i.o, i64 256, i1 false), !noalias !5923
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.jh = getelementptr inbounds nuw i8, ptr %1, i64 1928
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.m, ptr noundef nonnull align 8 dereferenceable(48) %i.jh, i64 48, i1 false), !noalias !5923
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.ji = getelementptr inbounds nuw i8, ptr %1, i64 1976
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.ji, i64 24, i1 false), !noalias !5923
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !5923
  call void @llvm.experimental.noalias.scope.decl(metadata !5931)
  call void @llvm.experimental.noalias.scope.decl(metadata !5932)
  %i.jj = load i64, ptr %i.ip, align 8, !range !25, !alias.scope !5932, !noalias !5923, !noundef !12 ; 4 uses
  %.not.i70.i.i = icmp eq i64 %i.jj, -1
  br i1 %.not.i70.i.i, label %bb.db, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !5933
  call void @llvm.experimental.noalias.scope.decl(metadata !5934)
  call void @llvm.experimental.noalias.scope.decl(metadata !5935)
  %i.jk = add nsw i64 %i.jj, -2
  %.inv.i.i.i.i = icmp samesign ult i64 %i.jj, 2
  %i.jl = select i1 %.inv.i.i.i.i, i64 2, i64 %i.jk
  switch i64 %i.jl, label %bb.ci [
    i64 0, label %bb.cj
    i64 1, label %bb.co
    i64 2, label %bb.cp
  ]

bb.ci:                                            ; preds = %bb.ch
  unreachable

bb.cj:                                            ; preds = %bb.ch
  %i.jm = getelementptr inbounds nuw i8, ptr %1, i64 2304
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !5936)
  call void @llvm.experimental.noalias.scope.decl(metadata !5937)
  %i.jn = load i64, ptr %i.jm, align 8, !range !16, !alias.scope !5938, !noalias !5923, !noundef !12
  %i.jo = trunc nuw i64 %i.jn to i1
  %i.jp = getelementptr inbounds nuw i8, ptr %1, i64 2312 ; 2 uses
  br i1 %i.jo, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.jq = load i64, ptr %i.jp, align 8, !alias.scope !5938, !noalias !5923, !noundef !12
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i

bb.cl:                                            ; preds = %bb.cj
  %i.jr = getelementptr inbounds nuw i8, ptr %1, i64 2327
  %i.js = load i8, ptr %i.jr, align 1, !alias.scope !5938, !noalias !5923, !noundef !12
  %.not.i.i.i.i.i = icmp sgt i8 %i.js, -1
  %i.jt = getelementptr inbounds nuw i8, ptr %1, i64 2320
  %.val.i.i.i.i.i = load ptr, ptr %i.jp, align 8, !alias.scope !5938, !noalias !5923 ; 5 uses
  %.val21.i.i.i.i.i = load i64, ptr %i.jt, align 8, !alias.scope !5938, !noalias !5923 ; 2 uses
  br i1 %.not.i.i.i.i.i, label %bb.cm, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i

bb.cm:                                            ; preds = %bb.cl
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i.i.i.i, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.ju = getelementptr inbounds i8, ptr %.val.i.i.i.i.i, i64 -16
  %i.jv = atomicrmw add ptr %i.ju, i64 1 monotonic, align 8, !noalias !5939
  %i.jw = icmp slt i64 %i.jv, 0
  br i1 %i.jw, label %.invoke.i.i, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i, !prof !13

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i: ; preds = %bb.cl, %bb.cn, %bb.cm
  %.sroa.06.0.i.i.i.i.i = phi ptr [ %.val.i.i.i.i.i, %bb.cn ], [ inttoptr (i64 16 to ptr), %bb.cm ], [ %.val.i.i.i.i.i, %bb.cl ]
  %i.jx = ptrtoint ptr %.sroa.06.0.i.i.i.i.i to i64
  store i64 %i.jx, ptr %.sroa.4.i.i.i.i, align 8, !alias.scope !5936, !noalias !5940
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i

_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i: ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i, %bb.ck
  %.sink.i.sroa.phi.i.i.i.i = phi ptr [ %.sroa.6.i.i.i.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i ], [ %.sroa.4.i.i.i.i, %bb.ck ]
  %.sroa.58.0.sink.i.i.i.i.i = phi i64 [ %.val21.i.i.i.i.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i ], [ %i.jq, %bb.ck ]
  %storemerge.i.i.i.i.i = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i ], [ 1, %bb.ck ]
  store i64 %.sroa.58.0.sink.i.i.i.i.i, ptr %.sink.i.sroa.phi.i.i.i.i, align 8, !alias.scope !5936, !noalias !5940
  %i.jy = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %storemerge.i.i.i.i.i, ptr %i.jy, align 8, !alias.scope !5934, !noalias !5933
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.4.i.i.i.i.0..sroa.4.i.i.i.i.0..sroa.4.i.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i.i.i.i = load i64, ptr %.sroa.4.i.i.i.i, align 8, !noalias !5940
  store i64 %.sroa.4.i.i.i.i.0..sroa.4.i.i.i.i.0..sroa.4.i.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !5934, !noalias !5933
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.6.i.i.i.i.0..sroa.6.i.i.i.i.0..sroa.6.i.i.i.i.0..sroa.6.i.i.i.0..sroa.6.i.i.i.0..sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i.i.i.i = load i64, ptr %.sroa.6.i.i.i.i, align 8, !noalias !5940
  store i64 %.sroa.6.i.i.i.i.0..sroa.6.i.i.i.i.0..sroa.6.i.i.i.i.0..sroa.6.i.i.i.0..sroa.6.i.i.i.0..sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i.i.i.i, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !alias.scope !5934, !noalias !5933
  store i64 2, ptr %i.d, align 8, !alias.scope !5934, !noalias !5933
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i.i)
  br label %_RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i

bb.co:                                            ; preds = %bb.ch
  %i.jz = getelementptr inbounds nuw i8, ptr %1, i64 2304
  %i.ka = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment5types8ShardKeyENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ka, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.jz)
          to label %.noexc72.i.i unwind label %bb.dc, !noalias !5926

.noexc72.i.i:                                     ; preds = %bb.co
  store i64 3, ptr %i.d, align 8, !alias.scope !5934, !noalias !5933
  br label %_RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i

bb.cp:                                            ; preds = %bb.ch
  call void @llvm.experimental.noalias.scope.decl(metadata !5941)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !5942
  call void @llvm.experimental.noalias.scope.decl(metadata !5943)
  call void @llvm.experimental.noalias.scope.decl(metadata !5944)
  %i.kb = trunc nuw i64 %i.jj to i1               ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %1, i64 2304 ; 2 uses
  %.sink.i.sroa.gep.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sink.i.sroa.gep16.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  br i1 %i.kb, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  %i.kd = load i64, ptr %i.kc, align 8, !alias.scope !5945, !noalias !5923, !noundef !12
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i

bb.cr:                                            ; preds = %bb.cp
  %i.ke = getelementptr inbounds nuw i8, ptr %1, i64 2319
  %i.kf = load i8, ptr %i.ke, align 1, !alias.scope !5945, !noalias !5923, !noundef !12
  %.not.i.i.i.i.i.i = icmp sgt i8 %i.kf, -1
  %i.kg = getelementptr inbounds nuw i8, ptr %1, i64 2312
  %.val.i.i.i.i.i.i = load ptr, ptr %i.kc, align 8, !alias.scope !5945, !noalias !5923 ; 5 uses
  %.val21.i.i.i.i.i.i = load i64, ptr %i.kg, align 8, !alias.scope !5945, !noalias !5923 ; 2 uses
  br i1 %.not.i.i.i.i.i.i, label %3, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i

3:                                                ; preds = %bb.cr
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i.i.i.i.i, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i, label %bb.cs

bb.cs:                                            ; preds = %3
  %i.kh = getelementptr inbounds i8, ptr %.val.i.i.i.i.i.i, i64 -16
  %i.ki = atomicrmw add ptr %i.kh, i64 1 monotonic, align 8, !noalias !5946
  %i.kj = icmp slt i64 %i.ki, 0
  br i1 %i.kj, label %.invoke.i.i, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i, !prof !13

.invoke.i.i:                                      ; preds = %bb.cs, %bb.cn
  %i.kk = phi ptr [ %.val.i.i.i.i.i, %bb.cn ], [ %.val.i.i.i.i.i.i, %bb.cs ]
  %i.kl = phi i64 [ %.val21.i.i.i.i.i, %bb.cn ], [ %.val21.i.i.i.i.i.i, %bb.cs ]
  invoke void @_RINvNtCs9zPlAsQS9gd_4ecow3vec18ref_count_overflowhECsl8OoimOLbh_6qdrant(ptr noundef nonnull %i.kk, i64 noundef %i.kl) #19
          to label %.cont.i.i unwind label %bb.dc, !noalias !5926

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i: ; preds = %bb.cr, %bb.cs, %3
  %.sroa.06.0.i.i.i.i.i.i = phi ptr [ %.val.i.i.i.i.i.i, %bb.cs ], [ inttoptr (i64 16 to ptr), %3 ], [ %.val.i.i.i.i.i.i, %bb.cr ]
  store ptr %.sroa.06.0.i.i.i.i.i.i, ptr %.sink.i.sroa.gep16.i.i.i.i.i, align 8, !alias.scope !5943, !noalias !5942
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i

_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i: ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i, %bb.cq
  %.sink.i.sroa.phi.i.i.i.i.i = phi ptr [ %.sink.i.sroa.gep.i.i.i.i.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i ], [ %.sink.i.sroa.gep16.i.i.i.i.i, %bb.cq ]
  %.sroa.58.0.sink.i.i.i.i.i.i = phi i64 [ %.val21.i.i.i.i.i.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i ], [ %i.kd, %bb.cq ]
  %i.km = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i ], [ 1, %bb.cq ]
  store i64 %.sroa.58.0.sink.i.i.i.i.i.i, ptr %.sink.i.sroa.phi.i.i.i.i.i, align 8, !alias.scope !5943, !noalias !5942
  store i64 %i.km, ptr %i.c, align 8, !alias.scope !5943, !noalias !5942
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i.i.i)
  %i.kn = getelementptr inbounds nuw i8, ptr %1, i64 2320
  call void @llvm.experimental.noalias.scope.decl(metadata !5947)
  call void @llvm.experimental.noalias.scope.decl(metadata !5948)
  %i.ko = load i64, ptr %i.kn, align 8, !range !16, !alias.scope !5949, !noalias !5923, !noundef !12
  %i.kp = trunc nuw i64 %i.ko to i1
  %i.kq = getelementptr inbounds nuw i8, ptr %1, i64 2328 ; 2 uses
  br i1 %i.kp, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i
  %i.kr = load i64, ptr %i.kq, align 8, !alias.scope !5949, !noalias !5923, !noundef !12
  br label %_RNvXs1n_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_20ShardKeyWithFallbackNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i

bb.cu:                                            ; preds = %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i
  %i.ks = getelementptr inbounds nuw i8, ptr %1, i64 2343
  %i.kt = load i8, ptr %i.ks, align 1, !alias.scope !5949, !noalias !5923, !noundef !12
  %.not.i1.i.i.i.i.i = icmp sgt i8 %i.kt, -1
  %i.ku = getelementptr inbounds nuw i8, ptr %1, i64 2336
  %.val.i11.i.i.i.i.i = load ptr, ptr %i.kq, align 8, !alias.scope !5949, !noalias !5923 ; 5 uses
  %.val21.i12.i.i.i.i.i = load i64, ptr %i.ku, align 8, !alias.scope !5949, !noalias !5923 ; 2 uses
  br i1 %.not.i1.i.i.i.i.i, label %bb.cv, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i.i.i.i.i

bb.cv:                                            ; preds = %bb.cu
  %.not.i.i.i13.i.i.i.i.i = icmp eq ptr %.val.i11.i.i.i.i.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i13.i.i.i.i.i, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i.i.i.i.i, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.kv = getelementptr inbounds i8, ptr %.val.i11.i.i.i.i.i, i64 -16
  %i.kw = atomicrmw add ptr %i.kv, i64 1 monotonic, align 8, !noalias !5950
  %i.kx = icmp slt i64 %i.kw, 0
  br i1 %i.kx, label %bb.cx, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i.i.i.i.i, !prof !13

bb.cx:                                            ; preds = %bb.cw
  invoke void @_RINvNtCs9zPlAsQS9gd_4ecow3vec18ref_count_overflowhECsl8OoimOLbh_6qdrant(ptr noundef nonnull %.val.i11.i.i.i.i.i, i64 noundef %.val21.i12.i.i.i.i.i) #19
          to label %.noexc.i.i.i.i.i unwind label %bb.cy, !noalias !5951

.noexc.i.i.i.i.i:                                 ; preds = %bb.cx
  unreachable

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i.i.i.i.i: ; preds = %bb.cu, %bb.cw, %bb.cv
  %.sroa.06.0.i6.i.i.i.i.i = phi ptr [ %.val.i11.i.i.i.i.i, %bb.cw ], [ inttoptr (i64 16 to ptr), %bb.cv ], [ %.val.i11.i.i.i.i.i, %bb.cu ]
  %i.ky = ptrtoint ptr %.sroa.06.0.i6.i.i.i.i.i to i64
  store i64 %i.ky, ptr %.sroa.4.i.i.i.i.i, align 8, !alias.scope !5947, !noalias !5942
  br label %_RNvXs1n_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_20ShardKeyWithFallbackNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i

bb.cy:                                            ; preds = %bb.cx
  %i.kz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.c, i64 23
  %i.lb = load i8, ptr %i.la, align 1, !alias.scope !5952, !noalias !5942
  %.not.i.i.i.i.i.i.i.i.i = icmp slt i8 %i.lb, 0
  %or.cond.i.not.i.i.i.i.i = select i1 %i.kb, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.not.i.i.i.i.i, label %bb.dn, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  invoke void @_RNvXs7_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.sink.i.sroa.gep16.i.i.i.i.i)
          to label %bb.dn unwind label %bb.da, !noalias !5951

bb.da:                                            ; preds = %bb.cz
  %i.lc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21, !noalias !5951
  unreachable

_RNvXs1n_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_20ShardKeyWithFallbackNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i: ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i.i.i.i.i, %bb.ct
  %.sink.i7.sroa.phi.i.i.i.i.i = phi ptr [ %.sroa.6.i.i.i.i.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i.i.i.i.i ], [ %.sroa.4.i.i.i.i.i, %bb.ct ]
  %.sroa.58.0.sink.i8.i.i.i.i.i = phi i64 [ %.val21.i12.i.i.i.i.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i.i.i.i.i ], [ %i.kr, %bb.ct ]
  %storemerge.i9.i.i.i.i.i = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i.i.i.i.i ], [ 1, %bb.ct ]
  store i64 %.sroa.58.0.sink.i8.i.i.i.i.i, ptr %.sink.i7.sroa.phi.i.i.i.i.i, align 8, !alias.scope !5947, !noalias !5942
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !5953
  %.sroa.4.i.i.i.i.i.0..sroa.4.i.i.i.i.i.0..sroa.4.i.i.i.i.i.0..sroa.4.i.i.i.i.0..sroa.4.i.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.4.i.i.i.i.i, align 8, !noalias !5942
  %.sroa.6.i.i.i.i.i.0..sroa.6.i.i.i.i.i.0..sroa.6.i.i.i.i.i.0..sroa.6.i.i.i.i.0..sroa.6.i.i.i.i.0..sroa.6.i.i.i.0..sroa.6.i.i.i.0..sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.6.i.i.i.i.i, align 8, !noalias !5942
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !5942
  %.sroa.43.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 %storemerge.i9.i.i.i.i.i, ptr %.sroa.43.0..sroa_idx.i.i.i.i, align 8, !alias.scope !5934, !noalias !5933
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i64 %.sroa.4.i.i.i.i.i.0..sroa.4.i.i.i.i.i.0..sroa.4.i.i.i.i.i.0..sroa.4.i.i.i.i.0..sroa.4.i.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !alias.scope !5934, !noalias !5933
  %.sroa.64.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i64 %.sroa.6.i.i.i.i.i.0..sroa.6.i.i.i.i.i.0..sroa.6.i.i.i.i.i.0..sroa.6.i.i.i.i.0..sroa.6.i.i.i.i.0..sroa.6.i.i.i.0..sroa.6.i.i.i.0..sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i.i.i.i.i, ptr %.sroa.64.0..sroa_idx.i.i.i.i, align 8, !alias.scope !5934, !noalias !5933
  br label %_RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i

_RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i: ; preds = %_RNvXs1n_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_20ShardKeyWithFallbackNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i, %.noexc72.i.i, %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.k, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false), !noalias !5954
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !5933
  br label %_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtNtCshMzyYDJGtjv_3api4rest6schema16ShardKeySelectorENtNtB7_5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i

bb.db:                                            ; preds = %bb.cg
  store i64 -1, ptr %i.k, align 8, !alias.scope !5931, !noalias !5923
  br label %_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtNtCshMzyYDJGtjv_3api4rest6schema16ShardKeySelectorENtNtB7_5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i

bb.dc:                                            ; preds = %.invoke.i.i, %bb.co
  %i.ld = landingpad { ptr, i32 }
          cleanup
  br label %bb.dn

_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtNtCshMzyYDJGtjv_3api4rest6schema16ShardKeySelectorENtNtB7_5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i: ; preds = %bb.db, %_RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !5923
  %i.le = getelementptr inbounds nuw i8, ptr %1, i64 2000
  invoke fastcc void @_RNvXs_NtNtCsgGgPqgSfnMH_7storage4rbac4authNtB4_4AuthNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(128) %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.le)
          to label %bb.de unwind label %bb.dd, !noalias !5926

bb.dd:                                            ; preds = %_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtNtCshMzyYDJGtjv_3api4rest6schema16ShardKeySelectorENtNtB7_5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i
  %i.lf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !5923
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4rest6schema16ShardKeySelectorEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(48) %i.k) #20
          to label %bb.dn unwind label %bb.dl, !noalias !5926

bb.de:                                            ; preds = %_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtNtCshMzyYDJGtjv_3api4rest6schema16ShardKeySelectorENtNtB7_5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i
  %i.lg = getelementptr inbounds nuw i8, ptr %1, i64 2128
  call void @llvm.experimental.noalias.scope.decl(metadata !5955)
  %i.lh = load ptr, ptr %i.lg, align 8, !alias.scope !5955, !noalias !5923, !nonnull !12, !noundef !12 ; 2 uses
  %i.li = atomicrmw add ptr %i.lh, i64 1 monotonic, align 8, !noalias !5956
  %i.lj = icmp slt i64 %i.li, 0
  br i1 %i.lj, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.lk = getelementptr inbounds nuw i8, ptr %1, i64 2136
  %i.ll = load ptr, ptr %i.lk, align 8, !alias.scope !5955, !noalias !5923, !nonnull !12, !noundef !12 ; 2 uses
  %i.lm = atomicrmw add ptr %i.ll, i64 1 monotonic, align 8, !noalias !5956
  %i.ln = icmp slt i64 %i.lm, 0
  br i1 %i.ln, label %bb.di, label %bb.dh

bb.dg:                                            ; preds = %bb.de
  call void @llvm.trap()
  unreachable

bb.dh:                                            ; preds = %bb.df
  %i.lo = getelementptr inbounds nuw i8, ptr %1, i64 2152
  %i.lp = load i8, ptr %i.lo, align 8, !range !38, !alias.scope !5955, !noalias !5923, !noundef !12
  %i.lq = getelementptr inbounds nuw i8, ptr %1, i64 2144
  %i.lr = load ptr, ptr %i.lq, align 8, !alias.scope !5955, !noalias !5923, !nonnull !12, !noundef !12 ; 2 uses
  %i.ls = atomicrmw add ptr %i.lr, i64 1 monotonic, align 8, !noalias !5956
  %i.lt = icmp slt i64 %i.ls, 0
  br i1 %i.lt, label %bb.dj, label %bb.dk

bb.di:                                            ; preds = %bb.df
  call void @llvm.trap()
  unreachable

bb.dj:                                            ; preds = %bb.dh
  call void @llvm.trap()
  unreachable

bb.dk:                                            ; preds = %bb.dh
  call void @llvm.experimental.noalias.scope.decl(metadata !5957)
  call void @llvm.experimental.noalias.scope.decl(metadata !5958)
  call void @llvm.experimental.noalias.scope.decl(metadata !5959)
  call void @llvm.experimental.noalias.scope.decl(metadata !5960)
  call void @llvm.experimental.noalias.scope.decl(metadata !5961)
  %.sroa.0144.sroa.0.48..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0144.sroa.0.i.i, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %.sroa.0144.sroa.0.48..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(256) %i.n, i64 256, i1 false), !alias.scope !5962, !noalias !5923
  %.sroa.0144.sroa.0.432..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0144.sroa.0.i.i, i64 432
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0144.sroa.0.432..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.m, i64 48, i1 false), !alias.scope !5963, !noalias !5923
  %.sroa.0144.sroa.0.480..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0144.sroa.0.i.i, i64 480
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0144.sroa.0.480..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !alias.scope !5964, !noalias !5923
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0144.sroa.0.i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.k, i64 48, i1 false), !alias.scope !5965, !noalias !5923
  %.sroa.0144.sroa.0.304..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0144.sroa.0.i.i, i64 304
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %.sroa.0144.sroa.0.304..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(128) %i.j, i64 128, i1 false), !alias.scope !5966, !noalias !5923
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !5923
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !5923
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !5923
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(504) %i.ic, ptr noundef nonnull align 8 dereferenceable(504) %.sroa.0144.sroa.0.i.i, i64 504, i1 false), !noalias !5923
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0144.sroa.0.i.i)
  %.sroa.0151.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 2888
  store ptr %i.lh, ptr %.sroa.0151.sroa.8.0..sroa_idx.i.i, align 8, !noalias !5923
  %.sroa.0151.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 2896
  store ptr %i.ll, ptr %.sroa.0151.sroa.9.0..sroa_idx.i.i, align 8, !noalias !5923
  %.sroa.0151.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 2904
  store ptr %i.lr, ptr %.sroa.0151.sroa.10.0..sroa_idx.i.i, align 8, !noalias !5923
  %.sroa.0151.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 2912
  store i8 %i.lp, ptr %.sroa.0151.sroa.11.0..sroa_idx.i.i, align 8, !noalias !5923
  %.sroa.8152.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 2920
  store ptr %i.je, ptr %.sroa.8152.0..sroa_idx.i.i, align 8, !noalias !5923
  %.sroa.9153.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 2928
  store ptr %.val59.i.i, ptr %.sroa.9153.0..sroa_idx.i.i, align 8, !noalias !5923
  %.sroa.10154.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 2936
  store i64 %.val60.i.i, ptr %.sroa.10154.0..sroa_idx.i.i, align 8, !noalias !5923
  %.sroa.12156.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 4960
  store i8 0, ptr %.sroa.12156.0..sroa_idx.i.i, align 8, !noalias !5923
  br label %bb.dr

bb.dl:                                            ; preds = %bb.ho, %bb.hn, %bb.hm, %bb.hk, %bb.hi, %bb.hh, %bb.hg, %bb.hd, %bb.hb, %bb.ha, %bb.gz, %bb.gx, %bb.gw, %bb.gv, %bb.gs, %bb.el, %bb.ei, %bb.ds, %bb.dn, %bb.dd, %bb.cf
  %i.lu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21, !noalias !5926
  unreachable
end_hunk_0
