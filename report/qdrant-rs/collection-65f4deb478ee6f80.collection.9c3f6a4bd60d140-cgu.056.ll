Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/collection-65f4deb478ee6f80.collection.9c3f6a4bd60d140-cgu.056?download=true
inline.NumInlined: 564
inline.NumDeleted: 260
begin_hunk_0_@_RNvMs5_NtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_queryNtB5_18CollectionPrefetch25flatten_resolver_requests:bb.a
  store i64 0, ptr %i.h, align 8, !alias.scope !371
  %i.af = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.af, align 8, !alias.scope !371
  %i.ag = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 0, ptr %i.ag, align 8, !alias.scope !371
  br label %bb.e

.thread63:                                        ; preds = %bb.a
  store i64 0, ptr %i.p, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i64 0, ptr %i.ai, align 8
  br label %bb.g

bb.e:                                             ; preds = %.noexc15, %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.pre = load i64, ptr %.phi.trans.insert, align 8 ; 2 uses
  %i.aj = icmp ult i64 %.pre, 384307168202282326
  call void @llvm.assume(i1 %i.aj)
  %i.ak = icmp eq i64 %.pre, 0
  br i1 %i.ak, label %bb.g, label %bb.f

.thread43:                                        ; preds = %.noexc, %bb.c
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.am = load i64, ptr %i.al, align 8, !range !7, !noundef !5 ; 5 uses
  %.not8 = icmp eq i64 %i.am, -2
  br i1 %.not8, label %bb.ak, label %bb.h

bb.g:                                             ; preds = %.thread63, %bb.at, %bb.e
  %i.an = phi i1 [ true, %.thread63 ], [ false, %bb.at ], [ true, %bb.e ] ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.ap = load ptr, ptr %i.ao, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.ar = load i64, ptr %i.aq, align 8, !noundef !5 ; 2 uses
  %.idx = mul nuw nsw i64 %i.ar, 552
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.idx
  %i.at = icmp eq i64 %i.ar, 0
  br i1 %i.at, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.au = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  br label %bb.av

bb.h:                                             ; preds = %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !373)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !374
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 224
  invoke void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aw)
          to label %.noexc17 unwind label %bb.al

.noexc17:                                         ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !374
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8, !range !4, !alias.scope !373, !noundef !5
  %.not.i = icmp eq i64 %i.ay, -1
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.noexc17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !374
  invoke void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ax)
          to label %bb.n unwind label %bb.m, !noalias !375

bb.j:                                             ; preds = %.noexc17
  store i64 -1, ptr %i.d, align 8, !noalias !374
  br label %bb.k

bb.k:                                             ; preds = %bb.n, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  %.not4.i = icmp eq i64 %i.am, -1
  br i1 %.not4.i, label %bb.am, label %bb.o

bb.l:                                             ; preds = %.body.i, %bb.m
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.az, %bb.m ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #19
          to label %.body unwind label %bb.aj, !noalias !375

bb.m:                                             ; preds = %bb.i
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.n:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !374
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !374
  br label %bb.k

bb.o:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !374
  call void @llvm.experimental.noalias.scope.decl(metadata !376)
  call void @llvm.experimental.noalias.scope.decl(metadata !377)
  %i.ba = add nsw i64 %i.am, -2
  %.inv.i.i = icmp samesign ult i64 %i.am, 2
  %i.bb = select i1 %.inv.i.i, i64 2, i64 %i.ba
  switch i64 %i.bb, label %bb.p [
    i64 0, label %bb.q
    i64 1, label %bb.v
    i64 2, label %bb.w
  ]

bb.p:                                             ; preds = %bb.o
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 184
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !378)
  call void @llvm.experimental.noalias.scope.decl(metadata !379)
  %i.bd = load i64, ptr %i.bc, align 8, !range !8, !alias.scope !380, !noundef !5
  %i.be = trunc nuw i64 %i.bd to i1
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 2 uses
  br i1 %i.be, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bg = load i64, ptr %i.bf, align 8, !alias.scope !380, !noundef !5
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i

bb.s:                                             ; preds = %bb.q
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 207
  %i.bi = load i8, ptr %i.bh, align 1, !alias.scope !380, !noundef !5
  %.not.i.i.i = icmp sgt i8 %i.bi, -1
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 200
  %.val.i.i.i = load ptr, ptr %i.bf, align 8, !alias.scope !380 ; 5 uses
  %.val21.i.i.i = load i64, ptr %i.bj, align 8, !alias.scope !380 ; 2 uses
  br i1 %.not.i.i.i, label %bb.t, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsPYQCUnoTxQ_10collection.exit.i.i.i

bb.t:                                             ; preds = %bb.s
  %.not.i.i.i.i.i = icmp eq ptr %.val.i.i.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i.i, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsPYQCUnoTxQ_10collection.exit.i.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bk = getelementptr inbounds i8, ptr %.val.i.i.i, i64 -16
  %i.bl = atomicrmw add ptr %i.bk, i64 1 monotonic, align 8, !noalias !381
  %i.bm = icmp slt i64 %i.bl, 0
  br i1 %i.bm, label %.invoke.i, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsPYQCUnoTxQ_10collection.exit.i.i.i, !prof !15

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsPYQCUnoTxQ_10collection.exit.i.i.i: ; preds = %bb.s, %bb.u, %bb.t
  %.sroa.06.0.i.i.i = phi ptr [ %.val.i.i.i, %bb.u ], [ inttoptr (i64 16 to ptr), %bb.t ], [ %.val.i.i.i, %bb.s ]
  %i.bn = ptrtoint ptr %.sroa.06.0.i.i.i to i64
  store i64 %i.bn, ptr %.sroa.4.i.i, align 8, !alias.scope !378, !noalias !382
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i

_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i: ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsPYQCUnoTxQ_10collection.exit.i.i.i, %bb.r
  %.sink.i.sroa.phi.i.i = phi ptr [ %.sroa.6.i.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsPYQCUnoTxQ_10collection.exit.i.i.i ], [ %.sroa.4.i.i, %bb.r ]
  %.sroa.58.0.sink.i.i.i = phi i64 [ %.val21.i.i.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsPYQCUnoTxQ_10collection.exit.i.i.i ], [ %i.bg, %bb.r ]
  %storemerge.i.i.i = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsPYQCUnoTxQ_10collection.exit.i.i.i ], [ 1, %bb.r ]
  store i64 %.sroa.58.0.sink.i.i.i, ptr %.sink.i.sroa.phi.i.i, align 8, !alias.scope !378, !noalias !382
  %i.bo = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %storemerge.i.i.i, ptr %i.bo, align 8, !alias.scope !376, !noalias !374
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i.i = load i64, ptr %.sroa.4.i.i, align 8, !noalias !382
  store i64 %.sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !376, !noalias !374
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i.i = load i64, ptr %.sroa.6.i.i, align 8, !noalias !382
  store i64 %.sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i.i, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !376, !noalias !374
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  br label %_RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i

bb.v:                                             ; preds = %bb.o
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.bq = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment5types8ShardKeyENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bq, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bp)
          to label %_RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i unwind label %bb.ai, !noalias !375

bb.w:                                             ; preds = %bb.o
  call void @llvm.experimental.noalias.scope.decl(metadata !383)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !384
  call void @llvm.experimental.noalias.scope.decl(metadata !385)
  call void @llvm.experimental.noalias.scope.decl(metadata !386)
  %i.br = trunc nuw i64 %i.am to i1               ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 2 uses
  %.sink.i.sroa.gep.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sink.i.sroa.gep16.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  br i1 %i.br, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.bt = load i64, ptr %i.bs, align 8, !alias.scope !387, !noundef !5
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i

bb.y:                                             ; preds = %bb.w
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 199
  %i.bv = load i8, ptr %i.bu, align 1, !alias.scope !387, !noundef !5
  %.not.i.i.i.i = icmp slt i8 %i.bv, 0
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 192
  %.val.i.i.i.i = load ptr, ptr %i.bs, align 8, !alias.scope !387 ; 4 uses
  %.val21.i.i.i.i = load i64, ptr %i.bw, align 8, !alias.scope !387 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i, inttoptr (i64 16 to ptr)
  %or.cond = select i1 %.not.i.i.i.i, i1 true, i1 %.not.i.i.i.i.i.i
  br i1 %or.cond, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsPYQCUnoTxQ_10collection.exit.i.i.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bx = getelementptr inbounds i8, ptr %.val.i.i.i.i, i64 -16
  %i.by = atomicrmw add ptr %i.bx, i64 1 monotonic, align 8, !noalias !388
  %i.bz = icmp slt i64 %i.by, 0
  br i1 %i.bz, label %.invoke.i, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsPYQCUnoTxQ_10collection.exit.i.i.i.i, !prof !15

.invoke.i:                                        ; preds = %bb.z, %bb.u
  %i.ca = phi ptr [ %.val.i.i.i, %bb.u ], [ %.val.i.i.i.i, %bb.z ]
  %i.cb = phi i64 [ %.val21.i.i.i, %bb.u ], [ %.val21.i.i.i.i, %bb.z ]
  invoke void @_RINvNtCs9zPlAsQS9gd_4ecow3vec18ref_count_overflowhECsPYQCUnoTxQ_10collection(ptr noundef nonnull %i.ca, i64 noundef %i.cb) #22
          to label %.cont.i unwind label %bb.ai, !noalias !375

.cont.i:                                          ; preds = %.invoke.i
  unreachable

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsPYQCUnoTxQ_10collection.exit.i.i.i.i: ; preds = %bb.y, %bb.z
  store ptr %.val.i.i.i.i, ptr %.sink.i.sroa.gep16.i.i.i, align 8, !alias.scope !385, !noalias !384
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i

_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i: ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsPYQCUnoTxQ_10collection.exit.i.i.i.i, %bb.x
  %.sink.i.sroa.phi.i.i.i = phi ptr [ %.sink.i.sroa.gep.i.i.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsPYQCUnoTxQ_10collection.exit.i.i.i.i ], [ %.sink.i.sroa.gep16.i.i.i, %bb.x ]
  %.sroa.58.0.sink.i.i.i.i = phi i64 [ %.val21.i.i.i.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsPYQCUnoTxQ_10collection.exit.i.i.i.i ], [ %i.bt, %bb.x ]
  %i.cc = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsPYQCUnoTxQ_10collection.exit.i.i.i.i ], [ 1, %bb.x ]
  store i64 %.sroa.58.0.sink.i.i.i.i, ptr %.sink.i.sroa.phi.i.i.i, align 8, !alias.scope !385, !noalias !384
  store i64 %i.cc, ptr %i.a, align 8, !alias.scope !385, !noalias !384
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i)
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 200
  call void @llvm.experimental.noalias.scope.decl(metadata !389)
  call void @llvm.experimental.noalias.scope.decl(metadata !390)
  %i.ce = load i64, ptr %i.cd, align 8, !range !8, !alias.scope !391, !noundef !5
  %i.cf = trunc nuw i64 %i.ce to i1
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 2 uses
  br i1 %i.cf, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i
  %i.ch = load i64, ptr %i.cg, align 8, !alias.scope !391, !noundef !5
  br label %_RNvXs1n_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_20ShardKeyWithFallbackNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i

bb.ab:                                            ; preds = %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 223
  %i.cj = load i8, ptr %i.ci, align 1, !alias.scope !391, !noundef !5
  %.not.i1.i.i.i = icmp sgt i8 %i.cj, -1
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 216
  %.val.i11.i.i.i = load ptr, ptr %i.cg, align 8, !alias.scope !391 ; 5 uses
  %.val21.i12.i.i.i = load i64, ptr %i.ck, align 8, !alias.scope !391 ; 2 uses
  br i1 %.not.i1.i.i.i, label %bb.ac, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsPYQCUnoTxQ_10collection.exit.i4.i.i.i

bb.ac:                                            ; preds = %bb.ab
  %.not.i.i.i13.i.i.i = icmp eq ptr %.val.i11.i.i.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i13.i.i.i, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsPYQCUnoTxQ_10collection.exit.i4.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cl = getelementptr inbounds i8, ptr %.val.i11.i.i.i, i64 -16
  %i.cm = atomicrmw add ptr %i.cl, i64 1 monotonic, align 8, !noalias !392
  %i.cn = icmp slt i64 %i.cm, 0
  br i1 %i.cn, label %bb.ae, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsPYQCUnoTxQ_10collection.exit.i4.i.i.i, !prof !15

bb.ae:                                            ; preds = %bb.ad
  invoke void @_RINvNtCs9zPlAsQS9gd_4ecow3vec18ref_count_overflowhECsPYQCUnoTxQ_10collection(ptr noundef nonnull %.val.i11.i.i.i, i64 noundef %.val21.i12.i.i.i) #22
          to label %.noexc.i.i.i unwind label %bb.af, !noalias !393

.noexc.i.i.i:                                     ; preds = %bb.ae
  unreachable

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsPYQCUnoTxQ_10collection.exit.i4.i.i.i: ; preds = %bb.ab, %bb.ad, %bb.ac
  %.sroa.06.0.i6.i.i.i = phi ptr [ %.val.i11.i.i.i, %bb.ad ], [ inttoptr (i64 16 to ptr), %bb.ac ], [ %.val.i11.i.i.i, %bb.ab ]
  %i.co = ptrtoint ptr %.sroa.06.0.i6.i.i.i to i64
  store i64 %i.co, ptr %.sroa.4.i.i.i, align 8, !alias.scope !389, !noalias !384
  br label %_RNvXs1n_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_20ShardKeyWithFallbackNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i

bb.af:                                            ; preds = %bb.ae
  %i.cp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.a, i64 23
  %i.cr = load i8, ptr %i.cq, align 1, !alias.scope !394, !noalias !384
  %.not.i.i.i.i.i.i.i = icmp slt i8 %i.cr, 0
  %or.cond.i.not.i.i.i = select i1 %i.br, i1 true, i1 %.not.i.i.i.i.i.i.i
  br i1 %or.cond.i.not.i.i.i, label %.body.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  invoke void @_RNvXs7_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.sink.i.sroa.gep16.i.i.i)
          to label %.body.i unwind label %bb.ah, !noalias !393

bb.ah:                                            ; preds = %bb.ag
  %i.cs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18, !noalias !393
  unreachable

_RNvXs1n_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_20ShardKeyWithFallbackNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i: ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsPYQCUnoTxQ_10collection.exit.i4.i.i.i, %bb.aa
  %.sink.i7.sroa.phi.i.i.i = phi ptr [ %.sroa.6.i.i.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsPYQCUnoTxQ_10collection.exit.i4.i.i.i ], [ %.sroa.4.i.i.i, %bb.aa ]
  %.sroa.58.0.sink.i8.i.i.i = phi i64 [ %.val21.i12.i.i.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsPYQCUnoTxQ_10collection.exit.i4.i.i.i ], [ %i.ch, %bb.aa ]
  %storemerge.i9.i.i.i = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsPYQCUnoTxQ_10collection.exit.i4.i.i.i ], [ 1, %bb.aa ]
  store i64 %.sroa.58.0.sink.i8.i.i.i, ptr %.sink.i7.sroa.phi.i.i.i, align 8, !alias.scope !389, !noalias !384
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !395
  %.sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i.i.i = load i64, ptr %.sroa.4.i.i.i, align 8, !noalias !384
  %.sroa.6.i.i.i.0..sroa.6.i.i.i.0..sroa.6.i.i.i.0..sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i.i.i = load i64, ptr %.sroa.6.i.i.i, align 8, !noalias !384
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !384
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %storemerge.i9.i.i.i, ptr %.sroa.43.0..sroa_idx.i.i, align 8, !alias.scope !376, !noalias !374
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %.sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !376, !noalias !374
  %.sroa.64.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %.sroa.6.i.i.i.0..sroa.6.i.i.i.0..sroa.6.i.i.i.0..sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i.i.i, ptr %.sroa.64.0..sroa_idx.i.i, align 8, !alias.scope !376, !noalias !374
  %.sroa.0.0.copyload1.pre.i = load i64, ptr %i.b, align 8, !noalias !374
  br label %_RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i

bb.ai:                                            ; preds = %.invoke.i, %bb.v
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.ai, %bb.ag, %bb.af
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ct, %bb.ai ], [ %i.cp, %bb.ag ], [ %i.cp, %bb.af ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #19
          to label %bb.l unwind label %bb.aj, !noalias !375

_RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i: ; preds = %_RNvXs1n_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_20ShardKeyWithFallbackNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i, %bb.v, %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i
  %.sroa.0.0.copyload1.i = phi i64 [ %.sroa.0.0.copyload1.pre.i, %_RNvXs1n_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_20ShardKeyWithFallbackNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i ], [ 2, %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i ], [ 3, %bb.v ]
  %.sroa.5.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..sroa_idx2.i, i64 40, i1 false), !noalias !374
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !374
  br label %bb.am

bb.aj:                                            ; preds = %.body.i, %bb.l
  %i.cu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18, !noalias !375
  unreachable

bb.ak:                                            ; preds = %bb.f, %bb.am
  %storemerge = phi i64 [ %.sroa.0.0.i, %bb.am ], [ -2, %bb.f ]
  store i64 %storemerge, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 296
  invoke void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cv)
          to label %bb.ao unwind label %bb.an

.body:                                            ; preds = %bb.al, %bb.l, %bb.an
  %.pn = phi { ptr, i32 } [ %i.cx, %bb.an ], [ %i.cw, %bb.al ], [ %.pn.i, %bb.l ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdEECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef align 8 dereferenceable(24) %i.n) #19
          to label %.thread unwind label %bb.au

bb.al:                                            ; preds = %bb.h
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.am:                                            ; preds = %_RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i, %bb.k
  %.sroa.0.0.i = phi i64 [ %.sroa.0.0.copyload1.i, %_RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ], [ -1, %bb.k ]
  %.sroa.5.0..sroa_idx33 = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx33, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  %.sroa.6.0..sroa_idx34 = getelementptr inbounds nuw i8, ptr %i.m, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx34, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %.sroa.4.0..sroa_idx32 = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.0..sroa_idx32, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.i, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !374
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !374
  br label %bb.ak

bb.an:                                            ; preds = %bb.ak
  %i.cx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4rest6schema14LookupLocationEECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef align 8 dereferenceable(96) %i.m) #19
          to label %.body unwind label %bb.au

bb.ao:                                            ; preds = %bb.ak
  %i.cy = getelementptr inbounds nuw i8, ptr %i.o, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cy, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.o, ptr noundef nonnull align 8 dereferenceable(96) %i.m, i64 96, i1 false)
  %i.cz = getelementptr inbounds nuw i8, ptr %i.o, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cz, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.da = load i64, ptr %i.s, align 8, !alias.scope !396, !noundef !5 ; 3 uses
  %i.db = load i64, ptr %i.q, align 8, !range !18, !alias.scope !396, !noundef !5
  %i.dc = icmp eq i64 %i.da, %i.db
  br i1 %i.dc, label %bb.ap, label %bb.at

bb.ap:                                            ; preds = %bb.ao
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query29CollectionQueryResolveRequestE8grow_oneBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %bb.at unwind label %bb.aq, !noalias !397

bb.aq:                                            ; preds = %bb.ap
  %i.dd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query29CollectionQueryResolveRequestEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(144) %i.o) #19
          to label %.thread unwind label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.de = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18
  unreachable

.body18:                                          ; preds = %.body21, %bb.as
  %.pn11 = phi { ptr, i32 } [ %i.dx, %.body21 ], [ %i.df, %bb.as ] ; 2 uses
  br i1 %i.an, label %bb.bc, label %.thread

bb.as:                                            ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query29CollectionQueryResolveRequestENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB14_.exit.thread, %bb.av
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %.body18

bb.at:                                            ; preds = %bb.ap, %bb.ao
  %i.dg = load ptr, ptr %i.r, align 8, !alias.scope !396, !nonnull !5, !noundef !5
  %i.dh = getelementptr inbounds nuw [144 x i8], ptr %i.dg, i64 %i.da
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.dh, ptr noundef nonnull align 8 dereferenceable(144) %i.o, i64 144, i1 false)
  %i.di = add i64 %i.da, 1
  store i64 %i.di, ptr %i.s, align 8, !alias.scope !396
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.g
end_hunk_0
