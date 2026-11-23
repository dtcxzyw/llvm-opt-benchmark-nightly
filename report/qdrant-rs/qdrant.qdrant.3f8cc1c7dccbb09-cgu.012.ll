Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/qdrant.qdrant.3f8cc1c7dccbb09-cgu.012?download=true
inline.NumInlined: 6425
inline.NumDeleted: 3672
begin_hunk_0_@_RNvXs4_NtCs5QaNqjAn6vc_5shard10operationsNtB5_26CollectionUpdateOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone:bb.a
  %i.bq = load i8, ptr %i.bp, align 8, !range !39, !alias.scope !8787, !noundef !16 ; 2 uses
  %.not33.i = icmp eq i8 %i.bq, 2
  br i1 %.not33.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %.sroa.417.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.513.i, ptr noundef nonnull readonly align 1 dereferenceable(23) %.sroa.417.0..sroa_idx.i, i64 23, i1 false), !noalias !8786
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.br = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  call void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops23PointStructRawPersistedENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.br, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bh)
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  store i8 %i.bj, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !8786
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.59.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.56.i, i64 23, i1 false), !noalias !8787
  %.sroa.610.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  store i8 %i.bq, ptr %.sroa.610.0..sroa_idx.i, align 8, !alias.scope !8786
  %.sroa.610.sroa.4.0..sroa.610.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 57
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.610.sroa.4.0..sroa.610.0..sroa_idx.sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.513.i, i64 23, i1 false), !noalias !8787
  store i64 9, ptr %i.aa, align 8, !alias.scope !8786
  br label %_RNvXsM_NtNtCs5QaNqjAn6vc_5shard10operations9point_opsNtB5_15PointOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit

_RNvXsM_NtNtCs5QaNqjAn6vc_5shard10operations9point_opsNtB5_15PointOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit: ; preds = %_RNvXs1w_NtNtCs5QaNqjAn6vc_5shard10operations9point_opsNtB6_34ConditionalInsertOperationInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i, %bb.l, %bb.m, %bb.o, %bb.s, %bb.w, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.528.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.520.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.513.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.56.i)
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.bs, ptr noundef nonnull align 8 dereferenceable(216) %i.aa, i64 216, i1 false)
  store i64 5, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  br label %bb.di

bb.ab:                                            ; preds = %bb.a
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8794)
  %i.bu = load i64, ptr %i.bt, align 8, !range !22, !alias.scope !8794, !noundef !16 ; 2 uses
  switch i64 %i.bu, label %default.unreachable [
    i64 0, label %bb.ac
    i64 1, label %bb.ah
    i64 2, label %bb.be
  ]

default.unreachable:                              ; preds = %bb.ab
  unreachable

bb.ac:                                            ; preds = %bb.ab
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8795)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !8796
  call void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs5QaNqjAn6vc_5shard10operations10vector_ops21PointVectorsPersistedENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.bv), !noalias !8797
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.bx = load i64, ptr %i.bw, align 8, !range !25, !alias.scope !8798, !noundef !16
  %.not.i.i = icmp eq i64 %i.bx, -2
  br i1 %.not.i.i, label %_RNvXsm_NtNtCs5QaNqjAn6vc_5shard10operations10vector_opsNtB5_15UpdateVectorsOpNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !8796
  invoke fastcc void @_RNvXse8_NtCs607s0NAIaWN_7segment5typesNtB6_6FilterNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(104) %i.p, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.bw)
          to label %bb.af unwind label %bb.ae, !noalias !8797

bb.ae:                                            ; preds = %bb.ad
  %i.by = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs5QaNqjAn6vc_5shard10operations10vector_ops21PointVectorsPersistedEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.q) #21
          to label %common.resume unwind label %bb.ag, !noalias !8797

bb.af:                                            ; preds = %bb.ad
  %.sroa.0.0.copyload1.i.i = load i64, ptr %i.p, align 8, !noalias !8796
  %.sroa.5.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.5.i.i, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.5.0..sroa_idx2.i.i, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !8796
  br label %_RNvXsm_NtNtCs5QaNqjAn6vc_5shard10operations10vector_opsNtB5_15UpdateVectorsOpNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i

bb.ag:                                            ; preds = %bb.ae
  %i.bz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !8797
  unreachable

_RNvXsm_NtNtCs5QaNqjAn6vc_5shard10operations10vector_opsNtB5_15UpdateVectorsOpNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i: ; preds = %bb.af, %bb.ac
  %.sroa.0.0.i.i = phi i64 [ %.sroa.0.0.copyload1.i.i, %bb.af ], [ -2, %bb.ac ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false), !noalias !8794
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !8796
  br label %_RNvXs_NtNtCs5QaNqjAn6vc_5shard10operations10vector_opsNtB4_16VectorOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit

bb.ah:                                            ; preds = %bb.ab
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !8799
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8800)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8801)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !8802
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 88
  call void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cc), !noalias !8803
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i2.i)
  %i.cd = load i64, ptr %i.ca, align 8, !range !36, !alias.scope !8804, !noundef !16 ; 4 uses
  %.not.i3.i = icmp eq i64 %i.cd, -1
  br i1 %.not.i3.i, label %_RNvXsF_NtNtCs5QaNqjAn6vc_5shard10operations9point_opsNtB5_12PointIdsListNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !8802
  call void @llvm.experimental.noalias.scope.decl(metadata !8805)
  call void @llvm.experimental.noalias.scope.decl(metadata !8806)
  %i.ce = add nsw i64 %i.cd, -2
  %.inv.i.i.i = icmp samesign ult i64 %i.cd, 2
  %i.cf = select i1 %.inv.i.i.i, i64 2, i64 %i.ce
  switch i64 %i.cf, label %bb.aj [
    i64 0, label %bb.ak
    i64 1, label %bb.ap
    i64 2, label %bb.aq
  ]

bb.aj:                                            ; preds = %bb.ai
  unreachable

bb.ak:                                            ; preds = %bb.ai
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !8807)
  call void @llvm.experimental.noalias.scope.decl(metadata !8808)
  %i.ch = load i64, ptr %i.cg, align 8, !range !23, !alias.scope !8809, !noundef !16
  %i.ci = trunc nuw i64 %i.ch to i1
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  br i1 %i.ci, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.ck = load i64, ptr %i.cj, align 8, !alias.scope !8809, !noundef !16
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i

bb.am:                                            ; preds = %bb.ak
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 71
  %i.cm = load i8, ptr %i.cl, align 1, !alias.scope !8809, !noundef !16
  %.not.i.i.i.i = icmp sgt i8 %i.cm, -1
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val.i.i.i.i = load ptr, ptr %i.cj, align 8, !alias.scope !8809 ; 5 uses
  %.val21.i.i.i.i = load i64, ptr %i.cn, align 8, !alias.scope !8809 ; 2 uses
  br i1 %.not.i.i.i.i, label %bb.an, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i

bb.an:                                            ; preds = %bb.am
  %.not.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i.i.i, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.co = getelementptr inbounds i8, ptr %.val.i.i.i.i, i64 -16
  %i.cp = atomicrmw add ptr %i.co, i64 1 monotonic, align 8, !noalias !8810
  %i.cq = icmp slt i64 %i.cp, 0
  br i1 %i.cq, label %.invoke.i.i, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i, !prof !41

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i: ; preds = %bb.am, %bb.ao, %bb.an
  %.sroa.06.0.i.i.i.i = phi ptr [ %.val.i.i.i.i, %bb.ao ], [ inttoptr (i64 16 to ptr), %bb.an ], [ %.val.i.i.i.i, %bb.am ]
  %i.cr = ptrtoint ptr %.sroa.06.0.i.i.i.i to i64
  store i64 %i.cr, ptr %.sroa.4.i.i.i, align 8, !alias.scope !8807, !noalias !8811
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i

_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i: ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i, %bb.al
  %.sink.i.sroa.phi.i.i.i = phi ptr [ %.sroa.6.i.i.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i ], [ %.sroa.4.i.i.i, %bb.al ]
  %.sroa.58.0.sink.i.i.i.i = phi i64 [ %.val21.i.i.i.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i ], [ %i.ck, %bb.al ]
  %storemerge.i.i.i.i = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i ], [ 1, %bb.al ]
  store i64 %.sroa.58.0.sink.i.i.i.i, ptr %.sink.i.sroa.phi.i.i.i, align 8, !alias.scope !8807, !noalias !8811
  %i.cs = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 %storemerge.i.i.i.i, ptr %i.cs, align 8, !alias.scope !8805, !noalias !8802
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i.i.i = load i64, ptr %.sroa.4.i.i.i, align 8, !noalias !8811
  store i64 %.sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !8805, !noalias !8802
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %.sroa.6.i.i.i.0..sroa.6.i.i.i.0..sroa.6.i.i.i.0..sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i.i.i = load i64, ptr %.sroa.6.i.i.i, align 8, !noalias !8811
  store i64 %.sroa.6.i.i.i.0..sroa.6.i.i.i.0..sroa.6.i.i.i.0..sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i.i.i, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !alias.scope !8805, !noalias !8802
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i)
  br label %_RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i

bb.ap:                                            ; preds = %bb.ai
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.cu = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment5types8ShardKeyENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.cu, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ct)
          to label %_RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i unwind label %bb.bc, !noalias !8803

bb.aq:                                            ; preds = %bb.ai
  call void @llvm.experimental.noalias.scope.decl(metadata !8812)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !8813
  call void @llvm.experimental.noalias.scope.decl(metadata !8814)
  call void @llvm.experimental.noalias.scope.decl(metadata !8815)
  %i.cv = trunc nuw i64 %i.cd to i1               ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %.sink.i.sroa.gep.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sink.i.sroa.gep16.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 3 uses
  br i1 %i.cv, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.cx = load i64, ptr %i.cw, align 8, !alias.scope !8816, !noundef !16
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i

bb.as:                                            ; preds = %bb.aq
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 63
  %i.cz = load i8, ptr %i.cy, align 1, !alias.scope !8816, !noundef !16
  %.not.i.i.i.i.i = icmp slt i8 %i.cz, 0
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val.i.i.i.i.i = load ptr, ptr %i.cw, align 8, !alias.scope !8816 ; 4 uses
  %.val21.i.i.i.i.i = load i64, ptr %i.da, align 8, !alias.scope !8816 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i, inttoptr (i64 16 to ptr)
  %or.cond = select i1 %.not.i.i.i.i.i, i1 true, i1 %.not.i.i.i.i.i.i.i
  br i1 %or.cond, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.db = getelementptr inbounds i8, ptr %.val.i.i.i.i.i, i64 -16
  %i.dc = atomicrmw add ptr %i.db, i64 1 monotonic, align 8, !noalias !8817
  %i.dd = icmp slt i64 %i.dc, 0
  br i1 %i.dd, label %.invoke.i.i, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i, !prof !41

.invoke.i.i:                                      ; preds = %bb.at, %bb.ao
  %i.de = phi ptr [ %.val.i.i.i.i, %bb.ao ], [ %.val.i.i.i.i.i, %bb.at ]
  %i.df = phi i64 [ %.val21.i.i.i.i, %bb.ao ], [ %.val21.i.i.i.i.i, %bb.at ]
  invoke void @_RINvNtCs9zPlAsQS9gd_4ecow3vec18ref_count_overflowhECsl8OoimOLbh_6qdrant(ptr noundef nonnull %i.de, i64 noundef %i.df) #24
          to label %.cont.i.i unwind label %bb.bc, !noalias !8803

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i: ; preds = %bb.as, %bb.at
  store ptr %.val.i.i.i.i.i, ptr %.sink.i.sroa.gep16.i.i.i.i, align 8, !alias.scope !8814, !noalias !8813
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i

_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i: ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i, %bb.ar
  %.sink.i.sroa.phi.i.i.i.i = phi ptr [ %.sink.i.sroa.gep.i.i.i.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i ], [ %.sink.i.sroa.gep16.i.i.i.i, %bb.ar ]
  %.sroa.58.0.sink.i.i.i.i.i = phi i64 [ %.val21.i.i.i.i.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i ], [ %i.cx, %bb.ar ]
  %i.dg = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i ], [ 1, %bb.ar ]
  store i64 %.sroa.58.0.sink.i.i.i.i.i, ptr %.sink.i.sroa.phi.i.i.i.i, align 8, !alias.scope !8814, !noalias !8813
  store i64 %i.dg, ptr %i.m, align 8, !alias.scope !8814, !noalias !8813
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i.i)
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 64
  call void @llvm.experimental.noalias.scope.decl(metadata !8818)
  call void @llvm.experimental.noalias.scope.decl(metadata !8819)
  %i.di = load i64, ptr %i.dh, align 8, !range !23, !alias.scope !8820, !noundef !16
  %i.dj = trunc nuw i64 %i.di to i1
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  br i1 %i.dj, label %bb.au, label %bb.av

bb.au:                                            ; preds = %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i
  %i.dl = load i64, ptr %i.dk, align 8, !alias.scope !8820, !noundef !16
  br label %_RNvXs1n_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_20ShardKeyWithFallbackNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i

bb.av:                                            ; preds = %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 87
  %i.dn = load i8, ptr %i.dm, align 1, !alias.scope !8820, !noundef !16
  %.not.i1.i.i.i.i = icmp sgt i8 %i.dn, -1
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.val.i11.i.i.i.i = load ptr, ptr %i.dk, align 8, !alias.scope !8820 ; 5 uses
  %.val21.i12.i.i.i.i = load i64, ptr %i.do, align 8, !alias.scope !8820 ; 2 uses
  br i1 %.not.i1.i.i.i.i, label %bb.aw, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i.i.i.i

bb.aw:                                            ; preds = %bb.av
  %.not.i.i.i13.i.i.i.i = icmp eq ptr %.val.i11.i.i.i.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i13.i.i.i.i, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i.i.i.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.dp = getelementptr inbounds i8, ptr %.val.i11.i.i.i.i, i64 -16
  %i.dq = atomicrmw add ptr %i.dp, i64 1 monotonic, align 8, !noalias !8821
  %i.dr = icmp slt i64 %i.dq, 0
  br i1 %i.dr, label %bb.ay, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i.i.i.i, !prof !41

bb.ay:                                            ; preds = %bb.ax
  invoke void @_RINvNtCs9zPlAsQS9gd_4ecow3vec18ref_count_overflowhECsl8OoimOLbh_6qdrant(ptr noundef nonnull %.val.i11.i.i.i.i, i64 noundef %.val21.i12.i.i.i.i) #24
          to label %.noexc.i.i.i.i unwind label %bb.az, !noalias !8822

.noexc.i.i.i.i:                                   ; preds = %bb.ay
  unreachable

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i.i.i.i: ; preds = %bb.av, %bb.ax, %bb.aw
  %.sroa.06.0.i6.i.i.i.i = phi ptr [ %.val.i11.i.i.i.i, %bb.ax ], [ inttoptr (i64 16 to ptr), %bb.aw ], [ %.val.i11.i.i.i.i, %bb.av ]
  %i.ds = ptrtoint ptr %.sroa.06.0.i6.i.i.i.i to i64
  store i64 %i.ds, ptr %.sroa.4.i.i.i.i, align 8, !alias.scope !8818, !noalias !8813
  br label %_RNvXs1n_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_20ShardKeyWithFallbackNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i

bb.az:                                            ; preds = %bb.ay
  %i.dt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.m, i64 23
  %i.dv = load i8, ptr %i.du, align 1, !alias.scope !8823, !noalias !8813
  %.not.i.i.i.i.i.i.i.i = icmp slt i8 %i.dv, 0
  %or.cond.i.not.i.i.i.i = select i1 %i.cv, i1 true, i1 %.not.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.not.i.i.i.i, label %.body.i.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  invoke void @_RNvXs7_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.sink.i.sroa.gep16.i.i.i.i)
          to label %.body.i.i unwind label %bb.bb, !noalias !8822

bb.bb:                                            ; preds = %bb.ba
  %i.dw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !8822
  unreachable

_RNvXs1n_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_20ShardKeyWithFallbackNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i: ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i.i.i.i, %bb.au
  %.sink.i7.sroa.phi.i.i.i.i = phi ptr [ %.sroa.6.i.i.i.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i.i.i.i ], [ %.sroa.4.i.i.i.i, %bb.au ]
  %.sroa.58.0.sink.i8.i.i.i.i = phi i64 [ %.val21.i12.i.i.i.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i.i.i.i ], [ %i.dl, %bb.au ]
  %storemerge.i9.i.i.i.i = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i.i.i.i ], [ 1, %bb.au ]
  store i64 %.sroa.58.0.sink.i8.i.i.i.i, ptr %.sink.i7.sroa.phi.i.i.i.i, align 8, !alias.scope !8818, !noalias !8813
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false), !noalias !8824
  %.sroa.4.i.i.i.i.0..sroa.4.i.i.i.i.0..sroa.4.i.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i.i.i.i = load i64, ptr %.sroa.4.i.i.i.i, align 8, !noalias !8813
  %.sroa.6.i.i.i.i.0..sroa.6.i.i.i.i.0..sroa.6.i.i.i.i.0..sroa.6.i.i.i.0..sroa.6.i.i.i.0..sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i.i.i.i = load i64, ptr %.sroa.6.i.i.i.i, align 8, !noalias !8813
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !8813
  %.sroa.43.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store i64 %storemerge.i9.i.i.i.i, ptr %.sroa.43.0..sroa_idx.i.i.i, align 8, !alias.scope !8805, !noalias !8802
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  store i64 %.sroa.4.i.i.i.i.0..sroa.4.i.i.i.i.0..sroa.4.i.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !8805, !noalias !8802
  %.sroa.64.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  store i64 %.sroa.6.i.i.i.i.0..sroa.6.i.i.i.i.0..sroa.6.i.i.i.i.0..sroa.6.i.i.i.0..sroa.6.i.i.i.0..sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i.i.i.i, ptr %.sroa.64.0..sroa_idx.i.i.i, align 8, !alias.scope !8805, !noalias !8802
  %.sroa.0.0.copyload1.pre.i.i = load i64, ptr %i.n, align 8, !noalias !8802
  br label %_RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i

bb.bc:                                            ; preds = %.invoke.i.i, %bb.ap
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.bc, %bb.ba, %bb.az
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.dx, %bb.bc ], [ %i.dt, %bb.ba ], [ %i.dt, %bb.az ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.o) #21
          to label %common.resume unwind label %bb.bd, !noalias !8803

_RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i: ; preds = %_RNvXs1n_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_20ShardKeyWithFallbackNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i, %bb.ap, %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i
  %.sroa.0.0.copyload1.i4.i = phi i64 [ %.sroa.0.0.copyload1.pre.i.i, %_RNvXs1n_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_20ShardKeyWithFallbackNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ 2, %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ 3, %bb.ap ]
  %.sroa.5.0..sroa_idx2.i5.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.i2.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..sroa_idx2.i5.i, i64 40, i1 false), !noalias !8802
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !8802
  br label %_RNvXsF_NtNtCs5QaNqjAn6vc_5shard10operations9point_opsNtB5_12PointIdsListNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i

bb.bd:                                            ; preds = %.body.i.i
  %i.dy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !8803
  unreachable

_RNvXsF_NtNtCs5QaNqjAn6vc_5shard10operations9point_opsNtB5_12PointIdsListNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i: ; preds = %_RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i, %bb.ah
  %.sroa.9.32.copyload = phi i64 [ %.sroa.0.0.copyload1.i4.i, %_RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i ], [ -1, %bb.ah ] ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dz, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false), !noalias !8825
  store i64 %.sroa.9.32.copyload, ptr %i.u, align 8, !alias.scope !8800, !noalias !8799
  %.sroa.5.0..sroa_idx.i7.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..sroa_idx.i7.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.i2.i, i64 40, i1 false), !noalias !8825
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i2.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !8802
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !8799
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cb)
          to label %bb.bg unwind label %bb.bf, !noalias !8826

bb.be:                                            ; preds = %bb.ab
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 120
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !8799
  call fastcc void @_RNvXse8_NtCs607s0NAIaWN_7segment5typesNtB6_6FilterNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(104) %i.s, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.ea) #25, !noalias !8826
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !8799
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.r, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.eb)
          to label %bb.bj unwind label %bb.bi, !noalias !8826

bb.bf:                                            ; preds = %_RNvXsF_NtNtCs5QaNqjAn6vc_5shard10operations9point_opsNtB5_12PointIdsListNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i
  %i.ec = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops12PointIdsListECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(72) %i.u) #21
          to label %common.resume unwind label %bb.bh, !noalias !8826

bb.bg:                                            ; preds = %_RNvXsF_NtNtCs5QaNqjAn6vc_5shard10operations9point_opsNtB5_12PointIdsListNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5.0..sroa_idx.i7.i, i64 64, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false), !noalias !8794
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !8799
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !8799
  br label %_RNvXs_NtNtCs5QaNqjAn6vc_5shard10operations10vector_opsNtB4_16VectorOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit

bb.bh:                                            ; preds = %bb.bi, %bb.bf
  %i.ed = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !8826
  unreachable

bb.bi:                                            ; preds = %bb.be
  %i.ee = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs607s0NAIaWN_7segment5types6FilterECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(104) %i.s) #21
          to label %common.resume unwind label %bb.bh, !noalias !8826

bb.bj:                                            ; preds = %bb.be
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false), !noalias !8794
  %.sroa.9.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %.sroa.9.8.copyload = load i64, ptr %.sroa.9.8..sroa_idx, align 8, !noalias !8794
  %.sroa.11.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.11.8..sroa_idx, i64 72, i1 false)
  %.sroa.11.112..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.5.i.i, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.11.112..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !8799
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !8799
  br label %_RNvXs_NtNtCs5QaNqjAn6vc_5shard10operations10vector_opsNtB4_16VectorOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit

_RNvXs_NtNtCs5QaNqjAn6vc_5shard10operations10vector_opsNtB4_16VectorOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit: ; preds = %_RNvXsm_NtNtCs5QaNqjAn6vc_5shard10operations10vector_opsNtB5_15UpdateVectorsOpNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i, %bb.bg, %bb.bj
  %.sroa.9.0 = phi i64 [ %.sroa.0.0.i.i, %_RNvXsm_NtNtCs5QaNqjAn6vc_5shard10operations10vector_opsNtB5_15UpdateVectorsOpNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ], [ %.sroa.9.32.copyload, %bb.bg ], [ %.sroa.9.8.copyload, %bb.bj ]
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bu, ptr %i.ef, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, i64 24, i1 false)
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.9.0, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.11.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.5.i.i, i64 96, i1 false)
  store i64 6, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %bb.di

bb.bk:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8827)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8828)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i2)
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  switch i64 %i.ab, label %default.unreachable1.i [
    i64 0, label %bb.bl
    i64 1, label %bb.bm
    i64 2, label %bb.bx
    i64 3, label %bb.by
end_hunk_0
