Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/shard-e9748184afb3508d.shard.440a2ef7731995d0-cgu.000?download=true
inline.NumInlined: 3835
inline.NumDeleted: 1834
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RINvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemINtB5_3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointENtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs5QaNqjAn6vc_5shard:bb.a
  br i1 %i.ao, label %.loopexit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5QaNqjAn6vc_5shard.exit.i.i.i, %bb.z
  %.sroa.013.086.i.i.i = phi ptr [ %i.ar, %bb.z ], [ %.val14.i, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5QaNqjAn6vc_5shard.exit.i.i.i ] ; 19 uses
  %.sroa.7.083.i.i.i = phi i64 [ %i.as, %bb.z ], [ 0, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5QaNqjAn6vc_5shard.exit.i.i.i ] ; 7 uses
  %.sroa.10.082.i.i.i = phi i64 [ %i.ap, %bb.z ], [ %i.ak, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5QaNqjAn6vc_5shard.exit.i.i.i ]
  %i.ap = add i64 %.sroa.10.082.i.i.i, -1         ; 2 uses
  %i.aq = icmp eq ptr %.sroa.013.086.i.i.i, %i.ah
  br i1 %i.aq, label %.loopexit.i, label %bb.e

.loopexit.i.i.i:                                  ; preds = %bb.f
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.013.086.i.i.i, i64 208
  %i.as = add nuw nsw i64 %.sroa.7.083.i.i.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4312)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.013.086.i.i.i, i64 168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.at, i64 24, i1 false), !noalias !4313
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.013.086.i.i.i, i64 192
  %i.av = load i64, ptr %i.au, align 8, !alias.scope !4314, !noalias !4315, !noundef !17
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.013.086.i.i.i, i64 200
  %i.ax = load float, ptr %i.aw, align 8, !alias.scope !4314, !noalias !4315, !noundef !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !4316
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.013.086.i.i.i, i64 96 ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8, !range !29, !alias.scope !4314, !noalias !4315, !noundef !17
  %.not.i.i.i.i = icmp eq i64 %i.az, -1
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvXNtCshqfBqtY9aGF_8indexmap3mapINtB2_8IndexMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs8O45qwFIwQX_10serde_json5value5ValueENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.ay)
          to label %.noexc.i.i.i unwind label %.loopexit.i.i.i, !noalias !4313

bb.g:                                             ; preds = %bb.e
  store i64 -1, ptr %i.e, align 8, !noalias !4316
  br label %.noexc.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4316
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.013.086.i.i.i, i64 40
  %i.bb = load i64, ptr %i.ba, align 8, !range !38, !alias.scope !4314, !noalias !4315, !noundef !17 ; 3 uses
  %.not10.i.i.i.i = icmp eq i64 %i.bb, -1
  br i1 %.not10.i.i.i.i, label %bb.p, label %bb.h

bb.h:                                             ; preds = %.noexc.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4316
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4317)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4318)
  switch i64 %i.bb, label %default.unreachable [
    i64 0, label %bb.i
    i64 1, label %bb.l
    i64 2, label %bb.o
  ]

default.unreachable:                              ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4319)
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.013.086.i.i.i, i64 64
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.013.086.i.i.i, i64 56
  %i.be = load ptr, ptr %i.bd, align 8, !alias.scope !4320, !noalias !4315, !nonnull !17, !noundef !17
  %i.bf = load i64, ptr %i.bc, align 8, !alias.scope !4320, !noalias !4315, !noundef !17 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4321
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef range(i64 0, 2305843009213693952) %i.bf, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %.noexc.i.i.i.i unwind label %.loopexit.split-lp63.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !4322

.noexc.i.i.i.i:                                   ; preds = %bb.i
  %i.bg = load i64, ptr %i.b, align 8, !range !42, !noalias !4321, !noundef !17
  %i.bh = trunc nuw i64 %i.bg to i1
  %i.bi = load i64, ptr %i.af, align 8, !range !53, !noalias !4321, !noundef !17 ; 3 uses
  br i1 %i.bh, label %bb.j, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5QaNqjAn6vc_5shard.exit.i.i.i.i.i.i.i, !prof !24

bb.j:                                             ; preds = %.noexc.i.i.i.i
  %i.bj = load i64, ptr %i.ag, align 8, !noalias !4321
  br label %.invoke.i.i.i.i

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5QaNqjAn6vc_5shard.exit.i.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i
  %i.bk = load ptr, ptr %i.ag, align 8, !noalias !4321, !nonnull !17, !noundef !17 ; 2 uses
  %i.bl = icmp ule i64 %i.bf, %i.bi
  tail call void @llvm.assume(i1 %i.bl)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4321
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.bf, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecfENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs5QaNqjAn6vc_5shard.exit.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5QaNqjAn6vc_5shard.exit.i.i.i.i.i.i.i
  %i.bm = shl nuw nsw i64 %i.bf, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bk, ptr nonnull readonly align 4 %i.be, i64 %i.bm, i1 false), !noalias !4323
  br label %_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecfENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs5QaNqjAn6vc_5shard.exit.i.i.i.i.i

_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecfENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs5QaNqjAn6vc_5shard.exit.i.i.i.i.i: ; preds = %bb.k, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5QaNqjAn6vc_5shard.exit.i.i.i.i.i.i.i
  store i64 %i.bi, ptr %i.ac, align 8, !alias.scope !4317, !noalias !4316
  store ptr %i.bk, ptr %.sroa.0.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !4317, !noalias !4316
  br label %_RNvXs1b_NtNtCs607s0NAIaWN_7segment10data_types7vectorsNtB6_20VectorStructInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.sink.split.i.i.i.i

bb.l:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4324)
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.013.086.i.i.i, i64 64
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.013.086.i.i.i, i64 56
  %i.bp = load ptr, ptr %i.bo, align 8, !alias.scope !4325, !noalias !4315, !nonnull !17, !noundef !17
  %i.bq = load i64, ptr %i.bn, align 8, !alias.scope !4325, !noalias !4315, !noundef !17 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4326
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 2305843009213693952) %i.bq, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %.noexc15.i.i.i.i unwind label %.loopexit.split-lp63.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !4327

.noexc15.i.i.i.i:                                 ; preds = %bb.l
  %i.br = load i64, ptr %i.a, align 8, !range !42, !noalias !4326, !noundef !17
  %i.bs = trunc nuw i64 %i.br to i1
  %i.bt = load i64, ptr %i.ad, align 8, !range !53, !noalias !4326, !noundef !17 ; 3 uses
  br i1 %i.bs, label %bb.m, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5QaNqjAn6vc_5shard.exit.i.i1.i.i.i.i.i, !prof !24

bb.m:                                             ; preds = %.noexc15.i.i.i.i
  %i.bu = load i64, ptr %i.ae, align 8, !noalias !4326
  br label %.invoke.i.i.i.i

.invoke.i.i.i.i:                                  ; preds = %bb.m, %bb.j
  %i.bv = phi i64 [ %i.bt, %bb.m ], [ %i.bi, %bb.j ]
  %i.bw = phi i64 [ %i.bu, %bb.m ], [ %i.bj, %bb.j ]
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.bv, i64 %i.bw) #31
          to label %.cont.i.i.i.i unwind label %.loopexit.split-lp63.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !4327

.cont.i.i.i.i:                                    ; preds = %.invoke.i.i.i.i
  unreachable

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5QaNqjAn6vc_5shard.exit.i.i1.i.i.i.i.i: ; preds = %.noexc15.i.i.i.i
  %i.bx = load ptr, ptr %i.ae, align 8, !noalias !4326, !nonnull !17, !noundef !17 ; 2 uses
  %i.by = icmp ule i64 %i.bq, %i.bt
  tail call void @llvm.assume(i1 %i.by)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4326
  %.not.i.i2.i.i.i.i.i = icmp eq i64 %i.bq, 0
  br i1 %.not.i.i2.i.i.i.i.i, label %_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecfENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs5QaNqjAn6vc_5shard.exit3.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5QaNqjAn6vc_5shard.exit.i.i1.i.i.i.i.i
  %i.bz = shl nuw nsw i64 %i.bq, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bx, ptr nonnull readonly align 4 %i.bp, i64 %i.bz, i1 false), !noalias !4328
  br label %_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecfENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs5QaNqjAn6vc_5shard.exit3.i.i.i.i.i

_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecfENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs5QaNqjAn6vc_5shard.exit3.i.i.i.i.i: ; preds = %bb.n, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5QaNqjAn6vc_5shard.exit.i.i1.i.i.i.i.i
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.013.086.i.i.i, i64 72
  %i.cb = load i64, ptr %i.ca, align 8, !alias.scope !4329, !noalias !4315, !noundef !17
  store i64 %i.bt, ptr %i.ac, align 8, !alias.scope !4317, !noalias !4316
  store ptr %i.bx, ptr %.sroa.0.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !4317, !noalias !4316
  store i64 %i.bq, ptr %.sink25.i.sroa.gep52.i.i.i, align 8, !alias.scope !4317, !noalias !4316
  br label %_RNvXs1b_NtNtCs607s0NAIaWN_7segment10data_types7vectorsNtB6_20VectorStructInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.sink.split.i.i.i.i

bb.o:                                             ; preds = %bb.h
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.013.086.i.i.i, i64 48
  invoke void @_RNvXNtCsjqcU1oJFKXj_9hashbrown3mapINtB2_7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs607s0NAIaWN_7segment10data_types7vectors14VectorInternalNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.ac, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.cc)
          to label %_RNvXs1b_NtNtCs607s0NAIaWN_7segment10data_types7vectorsNtB6_20VectorStructInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i unwind label %.loopexit.split-lp63.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !4313

bb.p:                                             ; preds = %.noexc.i.i.i
  store i64 -1, ptr %i.d, align 8, !noalias !4316
  br label %bb.q

bb.q:                                             ; preds = %_RNvXs1b_NtNtCs607s0NAIaWN_7segment10data_types7vectorsNtB6_20VectorStructInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i, %bb.p
  %i.cd = load i64, ptr %.sroa.013.086.i.i.i, align 8, !range !37, !alias.scope !4314, !noalias !4315, !noundef !17 ; 2 uses
  %.not11.i.i.i.i = icmp eq i64 %i.cd, 2
  br i1 %.not11.i.i.i.i, label %bb.z, label %bb.r

.loopexit.split-lp63.i.i.i:                       ; preds = %.loopexit.split-lp63.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, %bb.w
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.co, %bb.w ], [ %lpad.loopexit.split-lp206, %.loopexit.split-lp63.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types7PayloadEECs5QaNqjAn6vc_5shard(ptr noalias nofree noundef align 8 dereferenceable(72) %i.e) #25
          to label %bb.ab unwind label %bb.y, !noalias !4313

.loopexit.split-lp63.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.i, %bb.l, %bb.o, %.invoke.i.i.i.i
  %lpad.loopexit.split-lp206 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp63.i.i.i

_RNvXs1b_NtNtCs607s0NAIaWN_7segment10data_types7vectorsNtB6_20VectorStructInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.sink.split.i.i.i.i: ; preds = %_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecfENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs5QaNqjAn6vc_5shard.exit3.i.i.i.i.i, %_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecfENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs5QaNqjAn6vc_5shard.exit.i.i.i.i.i
  %.sink25.i.sroa.phi.i.i.i = phi ptr [ %.sink25.i.sroa.gep.i.i.i, %_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecfENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs5QaNqjAn6vc_5shard.exit3.i.i.i.i.i ], [ %.sink25.i.sroa.gep52.i.i.i, %_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecfENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs5QaNqjAn6vc_5shard.exit.i.i.i.i.i ]
  %.sink24.i.i.i.i = phi i64 [ %i.cb, %_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecfENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs5QaNqjAn6vc_5shard.exit3.i.i.i.i.i ], [ %i.bf, %_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecfENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs5QaNqjAn6vc_5shard.exit.i.i.i.i.i ]
  store i64 %.sink24.i.i.i.i, ptr %.sink25.i.sroa.phi.i.i.i, align 8, !alias.scope !4317, !noalias !4316
  br label %_RNvXs1b_NtNtCs607s0NAIaWN_7segment10data_types7vectorsNtB6_20VectorStructInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i

_RNvXs1b_NtNtCs607s0NAIaWN_7segment10data_types7vectorsNtB6_20VectorStructInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i: ; preds = %_RNvXs1b_NtNtCs607s0NAIaWN_7segment10data_types7vectorsNtB6_20VectorStructInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.sink.split.i.i.i.i, %bb.o
  store i64 %i.bb, ptr %i.c, align 8, !alias.scope !4317, !noalias !4316
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.d, ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 56, i1 false), !noalias !4316
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4316
  br label %bb.q

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4330)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4331)
  %i.ce = trunc nuw i64 %i.cd to i1
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.013.086.i.i.i, i64 8 ; 2 uses
  br i1 %i.ce, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cg = load i64, ptr %i.cf, align 8, !alias.scope !4332, !noalias !4315, !noundef !17
  br label %bb.x

bb.t:                                             ; preds = %bb.r
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.013.086.i.i.i, i64 23
  %i.ci = load i8, ptr %i.ch, align 1, !alias.scope !4332, !noalias !4315, !noundef !17
  %.not.i.i.i.i.i = icmp sgt i8 %i.ci, -1
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.013.086.i.i.i, i64 16
  %.val.i.i.i.i.i = load ptr, ptr %i.cf, align 8, !alias.scope !4332, !noalias !4315 ; 5 uses
  %.val21.i.i.i.i.i = load i64, ptr %i.cj, align 8, !alias.scope !4332, !noalias !4315 ; 2 uses
  br i1 %.not.i.i.i.i.i, label %3, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs5QaNqjAn6vc_5shard.exit.i.i.i.i.i

3:                                                ; preds = %bb.t
  %.not.i.i.i18.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i18.i.i.i.i, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs5QaNqjAn6vc_5shard.exit.i.i.i.i.i, label %bb.u

bb.u:                                             ; preds = %3
  %i.ck = getelementptr inbounds i8, ptr %.val.i.i.i.i.i, i64 -16
  %i.cl = atomicrmw add ptr %i.ck, i64 1 monotonic, align 8, !noalias !4333
  %i.cm = icmp slt i64 %i.cl, 0
  br i1 %i.cm, label %bb.v, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs5QaNqjAn6vc_5shard.exit.i.i.i.i.i, !prof !24

bb.v:                                             ; preds = %bb.u
  invoke void @_RINvNtCs9zPlAsQS9gd_4ecow3vec18ref_count_overflowhECs5QaNqjAn6vc_5shard(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef %.val21.i.i.i.i.i) #31
          to label %.noexc19.i.i.i.i unwind label %bb.w, !noalias !4333

.noexc19.i.i.i.i:                                 ; preds = %bb.v
  unreachable

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs5QaNqjAn6vc_5shard.exit.i.i.i.i.i: ; preds = %bb.t, %bb.u, %3
  %.sroa.06.0.i.i.i.i.i = phi ptr [ %.val.i.i.i.i.i, %bb.u ], [ inttoptr (i64 16 to ptr), %3 ], [ %.val.i.i.i.i.i, %bb.t ]
  %i.cn = ptrtoint ptr %.sroa.06.0.i.i.i.i.i to i64
  store i64 %i.cn, ptr %.sroa.4.i.i.i.i, align 8, !alias.scope !4330, !noalias !4316
  br label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.co = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs607s0NAIaWN_7segment10data_types7vectors20VectorStructInternalEECs5QaNqjAn6vc_5shard(ptr noalias nofree noundef align 8 dereferenceable(56) %i.d) #25
          to label %.loopexit.split-lp63.i.i.i unwind label %bb.y, !noalias !4313

bb.x:                                             ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs5QaNqjAn6vc_5shard.exit.i.i.i.i.i, %bb.s
  %.sink.i.sroa.phi.i.i.i.i = phi ptr [ %.sroa.7.i.i.i.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs5QaNqjAn6vc_5shard.exit.i.i.i.i.i ], [ %.sroa.4.i.i.i.i, %bb.s ]
  %.sroa.58.0.sink.i.i.i.i.i = phi i64 [ %.val21.i.i.i.i.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs5QaNqjAn6vc_5shard.exit.i.i.i.i.i ], [ %i.cg, %bb.s ]
  %storemerge.i.i.i.i.i = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs5QaNqjAn6vc_5shard.exit.i.i.i.i.i ], [ 1, %bb.s ]
  store i64 %.sroa.58.0.sink.i.i.i.i.i, ptr %.sink.i.sroa.phi.i.i.i.i, align 8, !alias.scope !4330, !noalias !4316
  %.sroa.4.i.i.i.i.0..sroa.4.i.i.i.i.0..sroa.4.i.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.8.copyload.i.i.i.i = load i64, ptr %.sroa.4.i.i.i.i, align 8, !noalias !4316
  %.sroa.7.i.i.i.i.0..sroa.7.i.i.i.i.0..sroa.7.i.i.i.i.0..sroa.7.i.i.i.0..sroa.7.i.i.i.0..sroa.7.i.i.0..sroa.7.i.i.0..sroa.7.i.0..sroa.7.i.0..sroa.7.0..sroa.7.0..sroa.7.8.copyload.i.i.i.i = load i64, ptr %.sroa.7.i.i.i.i, align 8, !noalias !4316
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i.i)
  br label %bb.z

bb.y:                                             ; preds = %bb.w, %.loopexit.split-lp63.i.i.i
  %i.cp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22, !noalias !4313
  unreachable

bb.z:                                             ; preds = %bb.x, %bb.q
  %.sroa.5.sroa.4.0.i.i.i.i = phi i64 [ undef, %bb.q ], [ %.sroa.7.i.i.i.i.0..sroa.7.i.i.i.i.0..sroa.7.i.i.i.i.0..sroa.7.i.i.i.0..sroa.7.i.i.i.0..sroa.7.i.i.0..sroa.7.i.i.0..sroa.7.i.0..sroa.7.i.0..sroa.7.0..sroa.7.0..sroa.7.8.copyload.i.i.i.i, %bb.x ]
  %.sroa.5.sroa.0.0.i.i.i.i = phi i64 [ undef, %bb.q ], [ %.sroa.4.i.i.i.i.0..sroa.4.i.i.i.i.0..sroa.4.i.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.8.copyload.i.i.i.i, %bb.x ]
  %.sroa.0.0.i12.i.i.i = phi i64 [ 2, %bb.q ], [ %storemerge.i.i.i.i.i, %bb.x ]
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.013.086.i.i.i, i64 24
  %i.cr = load i64, ptr %i.cq, align 8, !range !37, !alias.scope !4314, !noalias !4315, !noundef !17 ; 2 uses
  %.not13.i.i.i.i = icmp eq i64 %i.cr, 2
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.013.086.i.i.i, i64 32
  %.sroa.4.0.copyload.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !4314, !noalias !4315
  %.sroa.55.0.i.i.i.i = select i1 %.not13.i.i.i.i, i64 undef, i64 %.sroa.4.0.copyload.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.1048.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.1048.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !4309
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.947.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.947.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %i.e, i64 72, i1 false), !noalias !4309
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.846.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.846.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %i.d, i64 56, i1 false), !noalias !4309
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4316
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4316
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.cs = getelementptr inbounds nuw [208 x i8], ptr %i.am, i64 %.sroa.7.083.i.i.i ; 10 uses
  store i64 %.sroa.0.0.i12.i.i.i, ptr %i.cs, align 8, !noalias !4311
  %.sroa.442.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  store i64 %.sroa.5.sroa.0.0.i.i.i.i, ptr %.sroa.442.0..sroa_idx.i.i.i, align 8, !noalias !4311
  %.sroa.543.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  store i64 %.sroa.5.sroa.4.0.i.i.i.i, ptr %.sroa.543.0..sroa_idx.i.i.i, align 8, !noalias !4311
  %.sroa.644.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  store i64 %i.cr, ptr %.sroa.644.0..sroa_idx.i.i.i, align 8, !noalias !4311
  %.sroa.745.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 32
  store i64 %.sroa.55.0.i.i.i.i, ptr %.sroa.745.0..sroa_idx.i.i.i, align 8, !noalias !4311
  %.sroa.846.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.846.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.846.i.i.i, i64 56, i1 false), !noalias !4311
  %.sroa.947.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.947.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.947.i.i.i, i64 72, i1 false), !noalias !4311
  %.sroa.1048.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.1048.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.1048.i.i.i, i64 24, i1 false), !noalias !4311
  %.sroa.1149.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 192
  store i64 %i.av, ptr %.sroa.1149.0..sroa_idx.i.i.i, align 8, !noalias !4311
  %.sroa.1250.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 200
  store float %i.ax, ptr %.sroa.1250.0..sroa_idx.i.i.i, align 8, !noalias !4311
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.846.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.947.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1048.i.i.i)
  %i.ct = icmp eq i64 %i.ap, 0
  br i1 %i.ct, label %.loopexit.i, label %.lr.ph.i.i.i

bb.aa:                                            ; preds = %_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5QaNqjAn6vc_5shard.exit.i.i
  %i.cu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body23.i

.body23.i:                                        ; preds = %.body.i20.i, %bb.aa
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22, !noalias !4311
  unreachable

bb.ab:                                            ; preds = %.loopexit.split-lp63.i.i.i, %.loopexit.i.i.i
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %.pn.i.i.i.i, %.loopexit.split-lp63.i.i.i ], [ %lpad.loopexit.i.i.i, %.loopexit.i.i.i ]
  store i64 %.sroa.7.083.i.i.i, ptr %i.ab, align 8, !noalias !4309
  %i.cv = icmp eq i64 %.sroa.7.083.i.i.i, 0
  br i1 %i.cv, label %_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5QaNqjAn6vc_5shard.exit.i.i, label %.lr.ph196

bb.ac:                                            ; preds = %.lr.ph196
  %i.cw = icmp eq i64 %i.cy, %.sroa.7.083.i.i.i
  br i1 %i.cw, label %_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5QaNqjAn6vc_5shard.exit.i.i, label %.lr.ph196

.lr.ph196:                                        ; preds = %bb.ab, %bb.ac
  %.sroa.0.0.i.i.i18.i195 = phi i64 [ %i.cy, %bb.ac ], [ 0, %bb.ab ] ; 2 uses
  %i.cx = getelementptr inbounds nuw [208 x i8], ptr %i.am, i64 %.sroa.0.0.i.i.i18.i195
  %i.cy = add nuw nsw i64 %.sroa.0.0.i.i.i18.i195, 1 ; 4 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs607s0NAIaWN_7segment5types11ScoredPointECs5QaNqjAn6vc_5shard(ptr noalias nofree noundef align 8 dereferenceable(208) %i.cx)
          to label %bb.ac unwind label %bb.ae, !noalias !4334

bb.ad:                                            ; preds = %.lr.ph198
  %i.cz = add nuw nsw i64 %.sroa.0.1.i.i.i19.i197, 1 ; 2 uses
  %i.da = icmp eq i64 %i.cz, %.sroa.7.083.i.i.i
  br i1 %i.da, label %.body.i20.i, label %.lr.ph198

bb.ae:                                            ; preds = %.lr.ph196
  %i.db = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.dc = icmp eq i64 %i.cy, %.sroa.7.083.i.i.i
  br i1 %i.dc, label %.body.i20.i, label %.lr.ph198

.lr.ph198:                                        ; preds = %bb.ae, %bb.ad
  %.sroa.0.1.i.i.i19.i197 = phi i64 [ %i.cz, %bb.ad ], [ %i.cy, %bb.ae ] ; 2 uses
  %i.dd = getelementptr inbounds nuw [208 x i8], ptr %i.am, i64 %.sroa.0.1.i.i.i19.i197
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs607s0NAIaWN_7segment5types11ScoredPointECs5QaNqjAn6vc_5shard(ptr noalias nofree noundef align 8 dereferenceable(208) %i.dd) #25
          to label %bb.ad unwind label %bb.af, !noalias !4334

bb.af:                                            ; preds = %.lr.ph198
  %i.de = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22, !noalias !4334
  unreachable

.body.i20.i:                                      ; preds = %bb.ad, %bb.ae
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs607s0NAIaWN_7segment5types11ScoredPointENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.body23.i unwind label %bb.ag, !noalias !4311

_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5QaNqjAn6vc_5shard.exit.i.i: ; preds = %bb.ac, %bb.ab
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs607s0NAIaWN_7segment5types11ScoredPointENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.loopexit.split-lp.i unwind label %bb.aa, !noalias !4311

bb.ag:                                            ; preds = %.body.i20.i
  %i.df = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22, !noalias !4311
  unreachable

bb.ah:                                            ; preds = %._crit_edge.i
  store i64 0, ptr %i.u, align 8, !alias.scope !4306
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4335)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4336)
  %i.dg = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8, !alias.scope !4337, !nonnull !17, !noundef !17 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.dj = load i64, ptr %i.di, align 8, !alias.scope !4337, !noundef !17 ; 4 uses
  %i.dk = icmp eq i64 %i.dj, 0
  br i1 %i.dk, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEECs5QaNqjAn6vc_5shard.exit.i, label %.lr.ph

bb.ai:                                            ; preds = %.lr.ph
  %i.dl = icmp eq i64 %i.dn, %i.dj
  br i1 %i.dl, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEECs5QaNqjAn6vc_5shard.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ah, %bb.ai
  %.sroa.0.0.i.i.i.i192 = phi i64 [ %i.dn, %bb.ai ], [ 0, %bb.ah ] ; 2 uses
  %i.dm = getelementptr inbounds nuw [208 x i8], ptr %i.dh, i64 %.sroa.0.0.i.i.i.i192
  %i.dn = add nuw nsw i64 %.sroa.0.0.i.i.i.i192, 1 ; 4 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs607s0NAIaWN_7segment5types11ScoredPointECs5QaNqjAn6vc_5shard(ptr noalias nofree noundef align 8 dereferenceable(208) %i.dm)
          to label %bb.ai unwind label %bb.ak, !noalias !4337

bb.aj:                                            ; preds = %.lr.ph194
  %i.do = add nuw nsw i64 %.sroa.0.1.i.i.i.i193, 1 ; 2 uses
  %i.dp = icmp eq i64 %i.do, %i.dj
  br i1 %i.dp, label %.body.i.i, label %.lr.ph194

bb.ak:                                            ; preds = %.lr.ph
  %i.dq = landingpad { ptr, i32 }
          cleanup
  %i.dr = icmp eq i64 %i.dn, %i.dj
  br i1 %i.dr, label %.body.i.i, label %.lr.ph194

.lr.ph194:                                        ; preds = %bb.ak, %bb.aj
  %.sroa.0.1.i.i.i.i193 = phi i64 [ %i.do, %bb.aj ], [ %i.dn, %bb.ak ] ; 2 uses
  %i.ds = getelementptr inbounds nuw [208 x i8], ptr %i.dh, i64 %.sroa.0.1.i.i.i.i193
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs607s0NAIaWN_7segment5types11ScoredPointECs5QaNqjAn6vc_5shard(ptr noalias nofree noundef align 8 dereferenceable(208) %i.ds) #25
          to label %bb.aj unwind label %bb.al, !noalias !4337

bb.al:                                            ; preds = %.lr.ph194
  %i.dt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22, !noalias !4337
  unreachable

.body.i.i:                                        ; preds = %bb.aj, %bb.ak
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs607s0NAIaWN_7segment5types11ScoredPointENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.body unwind label %bb.am

bb.am:                                            ; preds = %.body.i.i
  %i.du = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEECs5QaNqjAn6vc_5shard.exit.i: ; preds = %bb.ai, %bb.ah
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs607s0NAIaWN_7segment5types11ScoredPointENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RNvMs4_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecIBw_NtNtCs607s0NAIaWN_7segment5types11ScoredPointEE11extend_withCs5QaNqjAn6vc_5shard.exit unwind label %bb.at

._crit_edge.thread.i:                             ; preds = %.loopexit.i, %._crit_edge.i
  %.sroa.0.0.lcssa158.i = phi ptr [ %i.r, %._crit_edge.i ], [ %i.dw, %.loopexit.i ]
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.lcssa158.i, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  store i64 %2, ptr %i.u, align 8, !alias.scope !4306
  br label %_RNvMs4_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecIBw_NtNtCs607s0NAIaWN_7segment5types11ScoredPointEE11extend_withCs5QaNqjAn6vc_5shard.exit

.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.c, %bb.d
end_hunk_0
