Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/qdrant.qdrant.3f8cc1c7dccbb09-cgu.007?download=true
inline.NumInlined: 11866
inline.NumDeleted: 6049
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3set8IntoItermENCINvMNtNtCsPYQCUnoTxQ_10collection6shards12shard_holderNtB1Z_11ShardHolder14split_by_shardNtNtCs5QaNqjAn6vc_5shard10operations26CollectionUpdateOperationsEs_0ENtNtNtB9_6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant:bb.a
  invoke fastcc void @_RNvXse8_NtCs607s0NAIaWN_7segment5typesNtB6_6FilterNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(104) %i.r, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.dh)
          to label %bb.aj unwind label %bb.ai, !noalias !18638

bb.ai:                                            ; preds = %bb.ah
  %i.dj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs5QaNqjAn6vc_5shard10operations10vector_ops21PointVectorsPersistedEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.s) #31
          to label %common.resume.i.i unwind label %bb.ak, !noalias !18640

bb.aj:                                            ; preds = %bb.ah
  %.sroa.0.0.copyload1.i.i.i.i = load i64, ptr %i.r, align 8, !noalias !18637
  %.sroa.5.0..sroa_idx2.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.5.i.i.i.sroa.0.0.copyload.i = load i8, ptr %.sroa.5.0..sroa_idx2.i.i.i.i, align 8, !noalias !18620
  %.sroa.5.i.i.i.sroa.6.0..sroa.5.0..sroa_idx2.i.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.5.i.i.i.sroa.6.i, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.5.i.i.i.sroa.6.0..sroa.5.0..sroa_idx2.i.i.i.sroa_idx.i, i64 23, i1 false), !noalias !18620
  %.sroa.5.i.i.i.sroa.7.0..sroa.5.0..sroa_idx2.i.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %.sroa.5.i.i.i.sroa.7.0.copyload.i = load i64, ptr %.sroa.5.i.i.i.sroa.7.0..sroa.5.0..sroa_idx2.i.i.i.sroa_idx.i, align 8, !noalias !18620
  %.sroa.5.i.i.i.sroa.8.0..sroa.5.0..sroa_idx2.i.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i.i.i.sroa.8.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i.i.i.sroa.8.0..sroa.5.0..sroa_idx2.i.i.i.sroa_idx.i, i64 24, i1 false), !noalias !18620
  %.sroa.5.i.i.i.sroa.9.0..sroa.5.0..sroa_idx2.i.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  %i.dk = load <8 x i8>, ptr %.sroa.5.i.i.i.sroa.9.0..sroa.5.0..sroa_idx2.i.i.i.sroa_idx.i, align 8, !noalias !18620
  %.sroa.5.i.i.i.sroa.17.0..sroa.5.0..sroa_idx2.i.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 72
  %.sroa.5.i.i.i.sroa.17.sroa.0.0.copyload.i = load i64, ptr %.sroa.5.i.i.i.sroa.17.0..sroa.5.0..sroa_idx2.i.i.i.sroa_idx.i, align 8, !noalias !18620
  %.sroa.5.i.i.i.sroa.17.sroa.5.0..sroa.5.i.i.i.sroa.17.0..sroa.5.0..sroa_idx2.i.i.i.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i.i.i.sroa.17.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i.i.i.sroa.17.sroa.5.0..sroa.5.i.i.i.sroa.17.0..sroa.5.0..sroa_idx2.i.i.i.sroa_idx.sroa_idx.i, i64 24, i1 false), !noalias !18620
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !18637
  br label %_RNvXsm_NtNtCs5QaNqjAn6vc_5shard10operations10vector_opsNtB5_15UpdateVectorsOpNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i

bb.ak:                                            ; preds = %bb.ai
  %i.dl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28, !noalias !18640
  unreachable

_RNvXsm_NtNtCs5QaNqjAn6vc_5shard10operations10vector_opsNtB5_15UpdateVectorsOpNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i: ; preds = %bb.aj, %bb.ag
  %.sroa.5.i.i.i.sroa.17.sroa.0.0.i = phi i64 [ undef, %bb.ag ], [ %.sroa.5.i.i.i.sroa.17.sroa.0.0.copyload.i, %bb.aj ]
  %.sroa.5.i.i.i.sroa.7.0.i = phi i64 [ undef, %bb.ag ], [ %.sroa.5.i.i.i.sroa.7.0.copyload.i, %bb.aj ]
  %.sroa.5.i.i.i.sroa.0.0.i = phi i8 [ undef, %bb.ag ], [ %.sroa.5.i.i.i.sroa.0.0.copyload.i, %bb.aj ]
  %.sroa.0.0.i.i.i.i = phi i64 [ -2, %bb.ag ], [ %.sroa.0.0.copyload1.i.i.i.i, %bb.aj ]
  %i.dm = phi <8 x i8> [ undef, %bb.ag ], [ %i.dk, %bb.aj ]
  %i.dn = load <4 x i8>, ptr %i.s, align 8, !noalias !18641
  %.sroa.6.i.sroa.9.0..sroa_idx85.i = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.do = load <2 x i8>, ptr %.sroa.6.i.sroa.9.0..sroa_idx85.i, align 4, !noalias !18641
  %.sroa.6.i.sroa.11.0..sroa_idx93.i = getelementptr inbounds nuw i8, ptr %i.s, i64 6
  %.sroa.6.i.sroa.11.0.copyload94.i = load i16, ptr %.sroa.6.i.sroa.11.0..sroa_idx93.i, align 2, !noalias !18641
  %.sroa.6.i.sroa.12.0..sroa_idx97.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.dp = load <2 x i64>, ptr %.sroa.6.i.sroa.12.0..sroa_idx97.i, align 8, !noalias !18641
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !18637
  br label %_RNvXs_NtNtCs5QaNqjAn6vc_5shard10operations10vector_opsNtB4_16VectorOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i

bb.al:                                            ; preds = %bb.af
  %i.dq = getelementptr inbounds nuw i8, ptr %.val2, i64 40
  %i.dr = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !18642
  call void @llvm.experimental.noalias.scope.decl(metadata !18643)
  call void @llvm.experimental.noalias.scope.decl(metadata !18644)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !18645
  call void @llvm.experimental.noalias.scope.decl(metadata !18646)
  call void @llvm.experimental.noalias.scope.decl(metadata !18647)
  %i.ds = getelementptr inbounds nuw i8, ptr %.val2, i64 104
  %i.dt = getelementptr inbounds nuw i8, ptr %.val2, i64 96
  %i.du = load ptr, ptr %i.dt, align 8, !alias.scope !18648, !noalias !18617, !nonnull !37, !noundef !37
  %i.dv = load i64, ptr %i.ds, align 8, !alias.scope !18648, !noalias !18617, !noundef !37 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !18649)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !18650
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.o, i64 noundef range(i64 0, 384307168202282326) %i.dv, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24), !noalias !18651
  %i.dw = load i64, ptr %i.o, align 8, !range !42, !noalias !18650, !noundef !37
  %i.dx = trunc nuw i64 %i.dw to i1
  %i.dy = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.dz = load i64, ptr %i.dy, align 8, !range !47, !noalias !18650, !noundef !37 ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  br i1 %i.dx, label %bb.am, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i, !prof !38

bb.am:                                            ; preds = %bb.al
  %i.eb = load i64, ptr %i.ea, align 8, !noalias !18650
  call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.dz, i64 %i.eb) #29, !noalias !18651
  unreachable

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i: ; preds = %bb.al
  %i.ec = load ptr, ptr %i.ea, align 8, !noalias !18650, !nonnull !37, !noundef !37 ; 2 uses
  %i.ed = icmp ule i64 %i.dv, %i.dz
  call void @llvm.assume(i1 %i.ed)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !18650
  store i64 %i.dz, ptr %i.q, align 8, !alias.scope !18652, !noalias !18645
  %i.ee = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.ec, ptr %i.ee, align 8, !alias.scope !18652, !noalias !18645
  %i.ef = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  store i64 0, ptr %i.ef, align 8, !alias.scope !18652, !noalias !18645
  %.not.i.i.i.i.i.i = icmp eq i64 %i.dv, 0
  br i1 %.not.i.i.i.i.i.i, label %_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i, label %bb.an

bb.an:                                            ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i
  %i.eg = mul nuw nsw i64 %i.dv, 24
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ec, ptr nonnull readonly align 8 %i.du, i64 %i.eg, i1 false), !noalias !18653
  store i64 %i.dv, ptr %i.ef, align 8, !alias.scope !18652, !noalias !18645
  br label %_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i

_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i: ; preds = %bb.an, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i2.i.i.i)
  %i.eh = load i64, ptr %i.dq, align 8, !range !69, !alias.scope !18654, !noalias !18617, !noundef !37 ; 4 uses
  %.not.i3.i.i.i = icmp eq i64 %i.eh, -1
  br i1 %.not.i3.i.i.i, label %_RNvXsF_NtNtCs5QaNqjAn6vc_5shard10operations9point_opsNtB5_12PointIdsListNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i, label %bb.ao

bb.ao:                                            ; preds = %_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !18645
  call void @llvm.experimental.noalias.scope.decl(metadata !18655)
  call void @llvm.experimental.noalias.scope.decl(metadata !18656)
  %i.ei = add nsw i64 %i.eh, -2
  %.inv.i.i.i.i.i = icmp samesign ult i64 %i.eh, 2
  %i.ej = select i1 %.inv.i.i.i.i.i, i64 2, i64 %i.ei
  switch i64 %i.ej, label %bb.ap [
    i64 0, label %bb.aq
    i64 1, label %bb.av
    i64 2, label %bb.aw
  ]

bb.ap:                                            ; preds = %bb.ao
  unreachable

bb.aq:                                            ; preds = %bb.ao
  %i.ek = getelementptr inbounds nuw i8, ptr %.val2, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !18657)
  call void @llvm.experimental.noalias.scope.decl(metadata !18658)
  %i.el = load i64, ptr %i.ek, align 8, !range !42, !alias.scope !18659, !noalias !18617, !noundef !37
  %i.em = trunc nuw i64 %i.el to i1
  %i.en = getelementptr inbounds nuw i8, ptr %.val2, i64 56 ; 2 uses
  br i1 %i.em, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.eo = load i64, ptr %i.en, align 8, !alias.scope !18659, !noalias !18617, !noundef !37
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i

bb.as:                                            ; preds = %bb.aq
  %i.ep = getelementptr inbounds nuw i8, ptr %.val2, i64 71
  %i.eq = load i8, ptr %i.ep, align 1, !alias.scope !18659, !noalias !18617, !noundef !37
  %.not.i.i4.i.i.i.i = icmp sgt i8 %i.eq, -1
  %i.er = getelementptr inbounds nuw i8, ptr %.val2, i64 64
  %.val.i.i.i.i.i.i = load ptr, ptr %i.en, align 8, !alias.scope !18659, !noalias !18617 ; 5 uses
  %.val21.i.i.i.i.i.i = load i64, ptr %i.er, align 8, !alias.scope !18659, !noalias !18617 ; 2 uses
  br i1 %.not.i.i4.i.i.i.i, label %bb.at, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i

bb.at:                                            ; preds = %bb.as
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i.i.i.i.i, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.es = getelementptr inbounds i8, ptr %.val.i.i.i.i.i.i, i64 -16
  %i.et = atomicrmw add ptr %i.es, i64 1 monotonic, align 8, !noalias !18660
  %i.eu = icmp slt i64 %i.et, 0
  br i1 %i.eu, label %.invoke.i.i.i.i, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i, !prof !38

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i: ; preds = %bb.as, %bb.au, %bb.at
  %.sroa.06.0.i.i.i.i.i.i = phi ptr [ %.val.i.i.i.i.i.i, %bb.au ], [ inttoptr (i64 16 to ptr), %bb.at ], [ %.val.i.i.i.i.i.i, %bb.as ]
  %i.ev = ptrtoint ptr %.sroa.06.0.i.i.i.i.i.i to i64
  store i64 %i.ev, ptr %.sroa.4.i.i.i.i.i, align 8, !alias.scope !18657, !noalias !18661
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i

_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i: ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i, %bb.ar
  %.sink.i.sroa.phi.i.i.i.i.i = phi ptr [ %.sroa.6.i.i.i.i.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i ], [ %.sroa.4.i.i.i.i.i, %bb.ar ]
  %.sroa.58.0.sink.i.i.i.i.i.i = phi i64 [ %.val21.i.i.i.i.i.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i ], [ %i.eo, %bb.ar ]
  %storemerge.i.i.i.i.i.i = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i ], [ 1, %bb.ar ]
  store i64 %.sroa.58.0.sink.i.i.i.i.i.i, ptr %.sink.i.sroa.phi.i.i.i.i.i, align 8, !alias.scope !18657, !noalias !18661
  %i.ew = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 %storemerge.i.i.i.i.i.i, ptr %i.ew, align 8, !alias.scope !18655, !noalias !18645
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.4.i.i.i.i.i.0..sroa.4.i.i.i.i.i.0..sroa.4.i.i.i.i.i.0..sroa.4.i.i.i.i.0..sroa.4.i.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.4.i.i.i.i.i, align 8, !noalias !18661
  store i64 %.sroa.4.i.i.i.i.i.0..sroa.4.i.i.i.i.i.0..sroa.4.i.i.i.i.i.0..sroa.4.i.i.i.i.0..sroa.4.i.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !18655, !noalias !18645
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %.sroa.6.i.i.i.i.i.0..sroa.6.i.i.i.i.i.0..sroa.6.i.i.i.i.i.0..sroa.6.i.i.i.i.0..sroa.6.i.i.i.i.0..sroa.6.i.i.i.0..sroa.6.i.i.i.0..sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.6.i.i.i.i.i, align 8, !noalias !18661
  store i64 %.sroa.6.i.i.i.i.i.0..sroa.6.i.i.i.i.i.0..sroa.6.i.i.i.i.i.0..sroa.6.i.i.i.i.0..sroa.6.i.i.i.i.0..sroa.6.i.i.i.0..sroa.6.i.i.i.0..sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i.i.i.i.i, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !18655, !noalias !18645
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i.i.i)
  br label %_RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i

bb.av:                                            ; preds = %bb.ao
  %i.ex = getelementptr inbounds nuw i8, ptr %.val2, i64 48
  %i.ey = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment5types8ShardKeyENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ey, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ex)
          to label %_RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i unwind label %bb.bi, !noalias !18662

bb.aw:                                            ; preds = %bb.ao
  call void @llvm.experimental.noalias.scope.decl(metadata !18663)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !18664
  call void @llvm.experimental.noalias.scope.decl(metadata !18665)
  call void @llvm.experimental.noalias.scope.decl(metadata !18666)
  %i.ez = trunc nuw i64 %i.eh to i1               ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.val2, i64 48 ; 2 uses
  %.sink.i.sroa.gep.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sink.i.sroa.gep16.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  br i1 %i.ez, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.fb = load i64, ptr %i.fa, align 8, !alias.scope !18667, !noalias !18617, !noundef !37
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i.i

bb.ay:                                            ; preds = %bb.aw
  %i.fc = getelementptr inbounds nuw i8, ptr %.val2, i64 63
  %i.fd = load i8, ptr %i.fc, align 1, !alias.scope !18667, !noalias !18617, !noundef !37
  %.not.i.i.i.i.i.i.i = icmp sgt i8 %i.fd, -1
  %i.fe = getelementptr inbounds nuw i8, ptr %.val2, i64 56
  %.val.i.i.i.i.i.i.i = load ptr, ptr %i.fa, align 8, !alias.scope !18667, !noalias !18617 ; 5 uses
  %.val21.i.i.i.i.i.i.i = load i64, ptr %i.fe, align 8, !alias.scope !18667, !noalias !18617 ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i, label %2, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i.i

2:                                                ; preds = %bb.ay
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i.i.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i.i, label %bb.az

bb.az:                                            ; preds = %2
  %i.ff = getelementptr inbounds i8, ptr %.val.i.i.i.i.i.i.i, i64 -16
  %i.fg = atomicrmw add ptr %i.ff, i64 1 monotonic, align 8, !noalias !18668
  %i.fh = icmp slt i64 %i.fg, 0
  br i1 %i.fh, label %.invoke.i.i.i.i, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i.i, !prof !38

.invoke.i.i.i.i:                                  ; preds = %bb.az, %bb.au
  %i.fi = phi ptr [ %.val.i.i.i.i.i.i, %bb.au ], [ %.val.i.i.i.i.i.i.i, %bb.az ]
  %i.fj = phi i64 [ %.val21.i.i.i.i.i.i, %bb.au ], [ %.val21.i.i.i.i.i.i.i, %bb.az ]
  invoke void @_RINvNtCs9zPlAsQS9gd_4ecow3vec18ref_count_overflowhECsl8OoimOLbh_6qdrant(ptr noundef nonnull %i.fi, i64 noundef %i.fj) #29
          to label %.cont.i.i.i.i unwind label %bb.bi, !noalias !18669

.cont.i.i.i.i:                                    ; preds = %.invoke.i.i.i.i
  unreachable

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i.i: ; preds = %bb.ay, %bb.az, %2
  %.sroa.06.0.i.i.i.i.i.i.i = phi ptr [ %.val.i.i.i.i.i.i.i, %bb.az ], [ inttoptr (i64 16 to ptr), %2 ], [ %.val.i.i.i.i.i.i.i, %bb.ay ]
  store ptr %.sroa.06.0.i.i.i.i.i.i.i, ptr %.sink.i.sroa.gep16.i.i.i.i.i.i, align 8, !alias.scope !18665, !noalias !18664
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i.i

_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i.i: ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i.i, %bb.ax
  %.sink.i.sroa.phi.i.i.i.i.i.i = phi ptr [ %.sink.i.sroa.gep.i.i.i.i.i.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i.i ], [ %.sink.i.sroa.gep16.i.i.i.i.i.i, %bb.ax ]
  %.sroa.58.0.sink.i.i.i.i.i.i.i = phi i64 [ %.val21.i.i.i.i.i.i.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i.i ], [ %i.fb, %bb.ax ]
  %i.fk = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i.i ], [ 1, %bb.ax ]
  store i64 %.sroa.58.0.sink.i.i.i.i.i.i.i, ptr %.sink.i.sroa.phi.i.i.i.i.i.i, align 8, !alias.scope !18665, !noalias !18664
  store i64 %i.fk, ptr %i.n, align 8, !alias.scope !18665, !noalias !18664
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i.i.i.i)
  %i.fl = getelementptr inbounds nuw i8, ptr %.val2, i64 64
  call void @llvm.experimental.noalias.scope.decl(metadata !18670)
  call void @llvm.experimental.noalias.scope.decl(metadata !18671)
  %i.fm = load i64, ptr %i.fl, align 8, !range !42, !alias.scope !18672, !noalias !18617, !noundef !37
  %i.fn = trunc nuw i64 %i.fm to i1
  %i.fo = getelementptr inbounds nuw i8, ptr %.val2, i64 72 ; 2 uses
  br i1 %i.fn, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i.i
  %i.fp = load i64, ptr %i.fo, align 8, !alias.scope !18672, !noalias !18617, !noundef !37
  br label %_RNvXs1n_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_20ShardKeyWithFallbackNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i

bb.bb:                                            ; preds = %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i.i
  %i.fq = getelementptr inbounds nuw i8, ptr %.val2, i64 87
  %i.fr = load i8, ptr %i.fq, align 1, !alias.scope !18672, !noalias !18617, !noundef !37
  %.not.i1.i.i.i.i.i.i = icmp sgt i8 %i.fr, -1
  %i.fs = getelementptr inbounds nuw i8, ptr %.val2, i64 80
  %.val.i11.i.i.i.i.i.i = load ptr, ptr %i.fo, align 8, !alias.scope !18672, !noalias !18617 ; 5 uses
  %.val21.i12.i.i.i.i.i.i = load i64, ptr %i.fs, align 8, !alias.scope !18672, !noalias !18617 ; 2 uses
  br i1 %.not.i1.i.i.i.i.i.i, label %bb.bc, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i.i.i.i.i.i

bb.bc:                                            ; preds = %bb.bb
  %.not.i.i.i13.i.i.i.i.i.i = icmp eq ptr %.val.i11.i.i.i.i.i.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i13.i.i.i.i.i.i, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i.i.i.i.i.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ft = getelementptr inbounds i8, ptr %.val.i11.i.i.i.i.i.i, i64 -16
  %i.fu = atomicrmw add ptr %i.ft, i64 1 monotonic, align 8, !noalias !18673
  %i.fv = icmp slt i64 %i.fu, 0
  br i1 %i.fv, label %bb.be, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i.i.i.i.i.i, !prof !38

bb.be:                                            ; preds = %bb.bd
  invoke void @_RINvNtCs9zPlAsQS9gd_4ecow3vec18ref_count_overflowhECsl8OoimOLbh_6qdrant(ptr noundef nonnull %.val.i11.i.i.i.i.i.i, i64 noundef %.val21.i12.i.i.i.i.i.i) #29
          to label %.noexc.i.i.i.i.i.i unwind label %bb.bf, !noalias !18674

.noexc.i.i.i.i.i.i:                               ; preds = %bb.be
  unreachable

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i.i.i.i.i.i: ; preds = %bb.bb, %bb.bd, %bb.bc
  %.sroa.06.0.i6.i.i.i.i.i.i = phi ptr [ %.val.i11.i.i.i.i.i.i, %bb.bd ], [ inttoptr (i64 16 to ptr), %bb.bc ], [ %.val.i11.i.i.i.i.i.i, %bb.bb ]
  %i.fw = ptrtoint ptr %.sroa.06.0.i6.i.i.i.i.i.i to i64
  store i64 %i.fw, ptr %.sroa.4.i.i.i.i.i.i, align 8, !alias.scope !18670, !noalias !18664
  br label %_RNvXs1n_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_20ShardKeyWithFallbackNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i

bb.bf:                                            ; preds = %bb.be
  %i.fx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.n, i64 23
  %i.fz = load i8, ptr %i.fy, align 1, !alias.scope !18675, !noalias !18664
  %.not.i.i.i.i.i.i.i.i.i.i = icmp slt i8 %i.fz, 0
  %or.cond.i.not.i.i.i.i.i.i = select i1 %i.ez, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.not.i.i.i.i.i.i, label %.body.i.i.i.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  invoke void @_RNvXs7_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.sink.i.sroa.gep16.i.i.i.i.i.i)
          to label %.body.i.i.i.i unwind label %bb.bh, !noalias !18674

bb.bh:                                            ; preds = %bb.bg
  %i.ga = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28, !noalias !18674
  unreachable

_RNvXs1n_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_20ShardKeyWithFallbackNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i: ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i.i.i.i.i.i, %bb.ba
  %.sink.i7.sroa.phi.i.i.i.i.i.i = phi ptr [ %.sroa.6.i.i.i.i.i.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i.i.i.i.i.i ], [ %.sroa.4.i.i.i.i.i.i, %bb.ba ]
  %.sroa.58.0.sink.i8.i.i.i.i.i.i = phi i64 [ %.val21.i12.i.i.i.i.i.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i.i.i.i.i.i ], [ %i.fp, %bb.ba ]
  %storemerge.i9.i.i.i.i.i.i = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i.i.i.i.i.i ], [ 1, %bb.ba ]
  store i64 %.sroa.58.0.sink.i8.i.i.i.i.i.i, ptr %.sink.i7.sroa.phi.i.i.i.i.i.i, align 8, !alias.scope !18670, !noalias !18664
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false), !noalias !18676
  %.sroa.4.i.i.i.i.i.i.0..sroa.4.i.i.i.i.i.i.0..sroa.4.i.i.i.i.i.i.0..sroa.4.i.i.i.i.i.0..sroa.4.i.i.i.i.i.0..sroa.4.i.i.i.i.0..sroa.4.i.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.4.i.i.i.i.i.i, align 8, !noalias !18664
  %.sroa.6.i.i.i.i.i.i.0..sroa.6.i.i.i.i.i.i.0..sroa.6.i.i.i.i.i.i.0..sroa.6.i.i.i.i.i.0..sroa.6.i.i.i.i.i.0..sroa.6.i.i.i.i.0..sroa.6.i.i.i.i.0..sroa.6.i.i.i.0..sroa.6.i.i.i.0..sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.6.i.i.i.i.i.i, align 8, !noalias !18664
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !18664
  %.sroa.43.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store i64 %storemerge.i9.i.i.i.i.i.i, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !18655, !noalias !18645
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  store i64 %.sroa.4.i.i.i.i.i.i.0..sroa.4.i.i.i.i.i.i.0..sroa.4.i.i.i.i.i.i.0..sroa.4.i.i.i.i.i.0..sroa.4.i.i.i.i.i.0..sroa.4.i.i.i.i.0..sroa.4.i.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !18655, !noalias !18645
  %.sroa.64.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  store i64 %.sroa.6.i.i.i.i.i.i.0..sroa.6.i.i.i.i.i.i.0..sroa.6.i.i.i.i.i.i.0..sroa.6.i.i.i.i.i.0..sroa.6.i.i.i.i.i.0..sroa.6.i.i.i.i.0..sroa.6.i.i.i.i.0..sroa.6.i.i.i.0..sroa.6.i.i.i.0..sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i.i.i.i.i.i, ptr %.sroa.64.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !18655, !noalias !18645
  %.sroa.0.0.copyload1.pre.i.i.i.i = load i64, ptr %i.p, align 8, !noalias !18645
  br label %_RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i

bb.bi:                                            ; preds = %.invoke.i.i.i.i, %bb.av
  %i.gb = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %bb.bi, %bb.bg, %bb.bf
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.gb, %bb.bi ], [ %i.fx, %bb.bg ], [ %i.fx, %bb.bf ]
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %common.resume.i.i unwind label %bb.bj, !noalias !18669

_RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i: ; preds = %_RNvXs1n_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_20ShardKeyWithFallbackNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i, %bb.av, %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i
  %.sroa.0.0.copyload1.i4.i.i.i = phi i64 [ %.sroa.0.0.copyload1.pre.i.i.i.i, %_RNvXs1n_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_20ShardKeyWithFallbackNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i ], [ 2, %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i ], [ 3, %bb.av ]
  %.sroa.5.0..sroa_idx2.i5.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.i2.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..sroa_idx2.i5.i.i.i, i64 40, i1 false), !noalias !18645
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !18645
  br label %_RNvXsF_NtNtCs5QaNqjAn6vc_5shard10operations9point_opsNtB5_12PointIdsListNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i

bb.bj:                                            ; preds = %.body.i.i.i.i
  %i.gc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28, !noalias !18669
  unreachable

_RNvXsF_NtNtCs5QaNqjAn6vc_5shard10operations9point_opsNtB5_12PointIdsListNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i: ; preds = %_RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i, %_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i
  %.sroa.9.32.copyload.i.i = phi i64 [ %.sroa.0.0.copyload1.i4.i.i.i, %_RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ], [ -1, %_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i ] ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gd, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false), !noalias !18677
  store i64 %.sroa.9.32.copyload.i.i, ptr %i.w, align 8, !alias.scope !18643, !noalias !18642
  %.sroa.5.0..sroa_idx.i7.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..sroa_idx.i7.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.i2.i.i.i, i64 40, i1 false), !noalias !18677
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i2.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !18645
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !18642
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.v, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dr)
          to label %bb.bm unwind label %bb.bl, !noalias !18678

bb.bk:                                            ; preds = %bb.af
  %i.ge = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.gf = getelementptr inbounds nuw i8, ptr %.val2, i64 120
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !18642
  call fastcc void @_RNvXse8_NtCs607s0NAIaWN_7segment5typesNtB6_6FilterNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(104) %i.u, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.ge) #34, !noalias !18678
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !18642
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gf)
          to label %bb.bp unwind label %bb.bo, !noalias !18678

bb.bl:                                            ; preds = %_RNvXsF_NtNtCs5QaNqjAn6vc_5shard10operations9point_opsNtB5_12PointIdsListNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i
  %i.gg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops12PointIdsListECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(72) %i.w) #31
          to label %common.resume.i.i unwind label %bb.bn, !noalias !18679

bb.bm:                                            ; preds = %_RNvXsF_NtNtCs5QaNqjAn6vc_5shard10operations9point_opsNtB5_12PointIdsListNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i
  %.sroa.5.i.i.i.sroa.0.0.copyload104.i = load i8, ptr %.sroa.5.0..sroa_idx.i7.i.i.i, align 8, !noalias !18620
  %.sroa.5.i.i.i.sroa.6.0..sroa.5.0..sroa_idx.i7.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.5.i.i.i.sroa.6.i, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.5.i.i.i.sroa.6.0..sroa.5.0..sroa_idx.i7.i.i.sroa_idx.i, i64 23, i1 false), !noalias !18620
  %.sroa.5.i.i.i.sroa.7.0..sroa.5.0..sroa_idx.i7.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %.sroa.5.i.i.i.sroa.7.0.copyload106.i = load i64, ptr %.sroa.5.i.i.i.sroa.7.0..sroa.5.0..sroa_idx.i7.i.i.sroa_idx.i, align 8, !noalias !18620
  %.sroa.5.i.i.i.sroa.8.0..sroa.5.0..sroa_idx.i7.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i.i.i.sroa.8.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i.i.i.sroa.8.0..sroa.5.0..sroa_idx.i7.i.i.sroa_idx.i, i64 24, i1 false), !noalias !18620
  %.sroa.5.i.i.i.sroa.9.0..sroa.5.0..sroa_idx.i7.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 64
  %i.gh = load <8 x i8>, ptr %.sroa.5.i.i.i.sroa.9.0..sroa.5.0..sroa_idx.i7.i.i.sroa_idx.i, align 8, !noalias !18620
  %i.gi = load <4 x i8>, ptr %i.v, align 8, !noalias !18641
  %.sroa.6.i.sroa.9.0..sroa_idx83.i = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.gj = load <2 x i8>, ptr %.sroa.6.i.sroa.9.0..sroa_idx83.i, align 4, !noalias !18641
  %.sroa.6.i.sroa.11.0..sroa_idx91.i = getelementptr inbounds nuw i8, ptr %i.v, i64 6
  %.sroa.6.i.sroa.11.0.copyload92.i = load i16, ptr %.sroa.6.i.sroa.11.0..sroa_idx91.i, align 2, !noalias !18641
  %.sroa.6.i.sroa.12.0..sroa_idx95.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.gk = load <2 x i64>, ptr %.sroa.6.i.sroa.12.0..sroa_idx95.i, align 8, !noalias !18641
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !18642
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !18642
  br label %_RNvXs_NtNtCs5QaNqjAn6vc_5shard10operations10vector_opsNtB4_16VectorOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i

bb.bn:                                            ; preds = %bb.bo, %bb.bl
  %i.gl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28, !noalias !18679
  unreachable

bb.bo:                                            ; preds = %bb.bk
  %i.gm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs607s0NAIaWN_7segment5types6FilterECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(104) %i.u) #31
          to label %common.resume.i.i unwind label %bb.bn, !noalias !18679

bb.bp:                                            ; preds = %bb.bk
  %i.gn = load <4 x i8>, ptr %i.u, align 8, !noalias !18641
  %.sroa.6.i.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.go = load <2 x i8>, ptr %.sroa.6.i.sroa.9.0..sroa_idx.i, align 4, !noalias !18641
  %.sroa.6.i.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 6
  %.sroa.6.i.sroa.11.0.copyload.i = load i16, ptr %.sroa.6.i.sroa.11.0..sroa_idx.i, align 2, !noalias !18641
  %.sroa.6.i.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.gp = load <2 x i64>, ptr %.sroa.6.i.sroa.12.0..sroa_idx.i, align 8, !noalias !18641
  %.sroa.9.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %.sroa.9.8.copyload.i.i = load i64, ptr %.sroa.9.8..sroa_idx.i.i, align 8, !noalias !18641
  %.sroa.11.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %.sroa.5.i.i.i.sroa.0.0.copyload103.i = load i8, ptr %.sroa.11.8..sroa_idx.i.i, align 8, !noalias !18620
  %.sroa.5.i.i.i.sroa.6.0..sroa.11.8..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.5.i.i.i.sroa.6.i, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.5.i.i.i.sroa.6.0..sroa.11.8..sroa_idx.i.sroa_idx.i, i64 23, i1 false), !noalias !18620
  %.sroa.5.i.i.i.sroa.7.0..sroa.11.8..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  %.sroa.5.i.i.i.sroa.7.0.copyload105.i = load i64, ptr %.sroa.5.i.i.i.sroa.7.0..sroa.11.8..sroa_idx.i.sroa_idx.i, align 8, !noalias !18620
  %.sroa.5.i.i.i.sroa.8.0..sroa.11.8..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i.i.i.sroa.8.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i.i.i.sroa.8.0..sroa.11.8..sroa_idx.i.sroa_idx.i, i64 24, i1 false), !noalias !18620
  %.sroa.5.i.i.i.sroa.9.0..sroa.11.8..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 88
  %i.gq = load <8 x i8>, ptr %.sroa.5.i.i.i.sroa.9.0..sroa.11.8..sroa_idx.i.sroa_idx.i, align 8, !noalias !18620
  %.sroa.5.i.i.i.sroa.17.0..sroa.11.8..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 96
  %i.gr = load i64, ptr %.sroa.5.i.i.i.sroa.17.0..sroa.11.8..sroa_idx.i.sroa_idx.i, align 8, !noalias !18620
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i.i.i.sroa.17.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false), !noalias !18620
end_hunk_0
