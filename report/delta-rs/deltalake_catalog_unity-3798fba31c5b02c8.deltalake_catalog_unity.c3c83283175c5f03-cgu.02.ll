Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake_catalog_unity-3798fba31c5b02c8.deltalake_catalog_unity.c3c83283175c5f03-cgu.02?download=true
inline.NumInlined: 553
inline.NumDeleted: 272
begin_hunk_0_@_RINvMs3_NtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucketINtB6_11BucketArrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB18_6string6StringEINtNtNtNtBc_6common10concurrent3arc7MiniArcINtB23_10ValueEntryB1B_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEE6rehashNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEB36_:bb.a
  %i.d = alloca [48 x i8], align 8                ; 5 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [8 x i8], align 8                 ; 6 uses
  %i.h = alloca [16 x i8], align 8                ; 8 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [8 x i8], align 8                 ; 3 uses
  %i.l = alloca [16 x i8], align 8                ; 4 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [24 x i8], align 8                ; 6 uses
  %i.o = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !4, !noundef !4
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  call void @_RNvMs5_NtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutexINtB5_5MutexuE8try_lockCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.o, ptr noundef nonnull align 4 %i.r)
  %i.s = load i64, ptr %i.o, align 8, !range !10, !noundef !4
  %i.t = trunc nuw i64 %i.s to i1
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 3 uses
  br i1 %i.t, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.w = load i8, ptr %i.v, align 8, !range !11, !noundef !4 ; 2 uses
  %i.x = icmp eq i8 %i.w, 2
  br i1 %i.x, label %bb.bi, label %bb.bj, !prof !12

bb.c:                                             ; preds = %bb.a
  %i.y = load ptr, ptr %i.u, align 8, !nonnull !4, !align !6, !noundef !4 ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.aa = load i8, ptr %i.z, align 8, !range !13, !noundef !4 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !239
  store i64 0, ptr %i.h, align 8, !noalias !239
  %i.ab = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.af = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  br label %bb.d

bb.d:                                             ; preds = %bb.q, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !239
  %i.ag = load atomic i64, ptr %i.ac acquire, align 8, !noalias !239
  store i64 %i.ag, ptr %i.g, align 8, !noalias !239
  %i.ah = invoke noundef align 8 ptr @_RNvMsz_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB5_6SharedINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket11BucketArrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1V_6string6StringEINtNtNtNtB15_6common10concurrent3arc7MiniArcINtB2Q_10ValueEntryB2o_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEE6as_refB3U_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.g)
          to label %bb.e unwind label %bb.s       ; 3 uses

bb.e:                                             ; preds = %bb.d
  %.not.i = icmp eq ptr %i.ah, null
  br i1 %.not.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !239
  %i.ai = load i64, ptr %i.h, align 8, !range !10, !alias.scope !240, !noalias !239, !noundef !4
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %bb.v, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvXsk_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB5_5OwnedINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket11BucketArrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1U_6string6StringEINtNtNtNtB14_6common10concurrent3arc7MiniArcINtB2P_10ValueEntryB2n_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB3T_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ab)
          to label %bb.v unwind label %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.h:                                             ; preds = %bb.e
  %i.ak = load i64, ptr %i.ad, align 8, !noalias !239, !noundef !4
  %i.al = invoke noundef i64 @_RNvMs7_NtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucketNtB5_8RehashOp7new_len(i8 noundef range(i8 0, 4) %3, i64 noundef %i.ak)
          to label %bb.i unwind label %bb.s

bb.i:                                             ; preds = %bb.h
  %i.am = load i64, ptr %i.h, align 8, !range !10, !noalias !239, !noundef !4
  %i.an = trunc nuw i64 %i.am to i1
  br i1 %i.an, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ao = load i64, ptr %i.ab, align 8, !noalias !239
  br label %bb.p

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !239
  %i.ap = load i64, ptr %i.ae, align 8, !noalias !239, !noundef !4
  %i.aq = add i64 %i.ap, 1
  invoke void @_RNvMs_NtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucketINtB4_11BucketArrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB16_6string6StringEINtNtNtNtBa_6common10concurrent3arc7MiniArcINtB21_10ValueEntryB1z_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEE11with_lengthB34_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.d, i64 noundef %i.aq, i64 noundef %i.al)
          to label %.noexc52 unwind label %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc52:                                         ; preds = %bb.k
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !241
  %i.ar = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 16, 281) 48, i64 noundef 8) #23, !noalias !241 ; 3 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %bb.l, label %bb.o, !prof !9

bb.l:                                             ; preds = %.noexc52
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #22
          to label %.noexc.i unwind label %bb.m

.noexc.i:                                         ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.at = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket11BucketArrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1F_6string6StringEINtNtNtNtBP_6common10concurrent3arc7MiniArcINtB2A_10ValueEntryB28_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEB3D_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.d) #24
          to label %.body.thread unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.o:                                             ; preds = %.noexc52
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ar, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false)
  %i.av = ptrtoint ptr %i.ar to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !239
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.j
  %.sroa.03.0.i = phi i64 [ %i.ao, %bb.j ], [ %i.av, %bb.o ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !239
  invoke void @_RINvMs7_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket11BucketArrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1W_6string6StringEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB2R_10ValueEntryB2p_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEE21compare_exchange_weakINtB6_5OwnedBX_EEB3V_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noundef nonnull align 8 %i.ac, i64 noundef 0, i64 noundef %.sroa.03.0.i, i8 noundef 3, i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1)
          to label %.noexc53 unwind label %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc53:                                         ; preds = %bb.p
  %i.aw = load i64, ptr %i.f, align 8, !range !10, !noalias !239, !noundef !4
  %i.ax = trunc nuw i64 %i.aw to i1
  br i1 %i.ax, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.noexc53
  %i.ay = load i64, ptr %i.af, align 8, !noalias !239, !noundef !4
  store i64 1, ptr %i.h, align 8, !noalias !239
  store i64 %i.ay, ptr %i.ab, align 8, !noalias !239
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !239
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !239
  br label %bb.d

bb.r:                                             ; preds = %.noexc53
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !239
  %i.az = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !noalias !239, !noundef !4
  store i64 %i.ba, ptr %i.e, align 8, !noalias !239
  %i.bb = invoke noundef nonnull align 8 ptr @_RNvMsz_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB5_6SharedINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket11BucketArrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1V_6string6StringEINtNtNtNtB15_6common10concurrent3arc7MiniArcINtB2Q_10ValueEntryB2o_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEE5derefB3U_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e)
          to label %.noexc54 unwind label %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc54:                                         ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !239
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !239
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !239
  br label %bb.v

bb.s:                                             ; preds = %bb.h, %bb.d
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bc = load i64, ptr %i.h, align 8, !range !10, !alias.scope !242, !noalias !239, !noundef !4
  %i.bd = icmp eq i64 %i.bc, 0
  br i1 %i.bd, label %.body.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  invoke void @_RNvXsk_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB5_5OwnedINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket11BucketArrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1U_6string6StringEINtNtNtNtB14_6common10concurrent3arc7MiniArcINtB2P_10ValueEntryB2n_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB3T_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ab)
          to label %.body.thread unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #25
  unreachable

.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ay, %bb.ak, %bb.y, %bb.ah, %.loopexit, %.lr.ph, %bb.ap, %bb.au, %bb.k, %bb.p, %._crit_edge, %bb.z, %bb.ad, %bb.r, %bb.g, %bb.aj, %bb.am
  %lpad.loopexit.split-lp386 = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

bb.v:                                             ; preds = %.noexc54, %bb.f, %bb.g
  %.sroa.0.0.i = phi ptr [ %i.bb, %.noexc54 ], [ %i.ah, %bb.f ], [ %i.ah, %bb.g ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !239
  %i.bf = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.bg = load i64, ptr %i.ad, align 8, !noundef !4 ; 2 uses
  %.idx = shl nuw nsw i64 %i.bg, 3
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 %.idx
  %i.bi = icmp eq i64 %i.bg, 0
  br i1 %i.bi, label %._crit_edge, label %.lr.ph158

.lr.ph158:                                        ; preds = %bb.v
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 8 ; 2 uses
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph158, %_RINvNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket20defer_destroy_bucketINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB17_6string6StringEINtNtNtNtB8_6common10concurrent3arc7MiniArcINtB22_10ValueEntryB1A_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB35_.exit
  %.sroa.02.0157 = phi ptr [ %i.bf, %.lr.ph158 ], [ %i.bk, %_RINvNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket20defer_destroy_bucketINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB17_6string6StringEINtNtNtNtB8_6common10concurrent3arc7MiniArcINtB22_10ValueEntryB1A_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB35_.exit ] ; 4 uses
  %.sroa.412.0156 = phi i64 [ undef, %.lr.ph158 ], [ %.sroa.412.5, %_RINvNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket20defer_destroy_bucketINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB17_6string6StringEINtNtNtNtB8_6common10concurrent3arc7MiniArcINtB22_10ValueEntryB1A_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB35_.exit ] ; 2 uses
  %.sroa.6.0155 = phi i64 [ undef, %.lr.ph158 ], [ %.sroa.6.5, %_RINvNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket20defer_destroy_bucketINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB17_6string6StringEINtNtNtNtB8_6common10concurrent3arc7MiniArcINtB22_10ValueEntryB1A_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB35_.exit ] ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.02.0157, i64 8 ; 2 uses
  %i.bl = load atomic i64, ptr %.sroa.02.0157 acquire, align 8 ; 3 uses
  store i64 %i.bl, ptr %i.k, align 8
  %i.bm = and i64 %i.bl, 1
  %i.bn = icmp eq i64 %i.bm, 0
  br i1 %i.bn, label %.lr.ph153, label %_RINvNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket20defer_destroy_bucketINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB17_6string6StringEINtNtNtNtB8_6common10concurrent3arc7MiniArcINtB22_10ValueEntryB1A_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB35_.exit

._crit_edge:                                      ; preds = %_RINvNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket20defer_destroy_bucketINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB17_6string6StringEINtNtNtNtB8_6common10concurrent3arc7MiniArcINtB22_10ValueEntryB1A_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB35_.exit, %bb.v
  invoke void @_RNvMNtCsee2lL6QbnsJ_15crossbeam_epoch5guardNtB2_5Guard5flush(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1)
          to label %bb.az unwind label %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.lr.ph153:                                        ; preds = %bb.w, %bb.ax
  %i.bo = phi i64 [ %i.dn, %bb.ax ], [ %i.bl, %bb.w ] ; 6 uses
  %.sroa.010.0152 = phi i64 [ %.sroa.010.1, %bb.ax ], [ 0, %bb.w ]
  %.sroa.412.1151 = phi i64 [ %.sroa.412.2, %bb.ax ], [ %.sroa.412.0156, %bb.w ] ; 12 uses
  %.sroa.6.1150 = phi i64 [ %.sroa.6.2, %bb.ax ], [ %.sroa.6.0155, %bb.w ] ; 11 uses
  %4 = and i64 %i.bo, 2                           ; 2 uses
  %5 = and i64 %i.bo, -8                          ; 2 uses
  %i.bp = and i64 %i.bo, -6
  %i.bq = or disjoint i64 %i.bp, 4                ; 5 uses
  %i.br = trunc nuw i64 %.sroa.010.0152 to i1
  br i1 %i.br, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.lr.ph153
  %i.bs = icmp eq i64 %5, 0
  br i1 %i.bs, label %bb.z, label %bb.aa, !prof !9

bb.y:                                             ; preds = %.lr.ph153
  %i.bt = invoke noundef align 8 ptr @_RNvMsz_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB5_6SharedINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket6BucketINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1P_6string6StringEINtNtNtNtB15_6common10concurrent3arc7MiniArcINtB2K_10ValueEntryB2i_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEE6as_refB3O_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.k)
          to label %bb.ag unwind label %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.z:                                             ; preds = %bb.x
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 44, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #22
          to label %bb.ab unwind label %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aa:                                            ; preds = %bb.x
  %i.bu = load i64, ptr %i.bj, align 8, !noundef !4 ; 2 uses
  %i.bv = icmp ult i64 %.sroa.412.1151, %i.bu
  br i1 %i.bv, label %bb.ac, label %bb.ad

bb.ab:                                            ; preds = %bb.bj, %bb.ad, %bb.z
  unreachable

bb.ac:                                            ; preds = %bb.aa
  %i.bw = load ptr, ptr %.sroa.0.0.i, align 8, !nonnull !4, !noundef !4
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %.sroa.412.1151 ; 2 uses
  %i.by = and i64 %.sroa.6.1150, 4
  %i.bz = icmp eq i64 %i.by, 0
  br i1 %i.bz, label %.loopexit, label %.lr.ph

bb.ad:                                            ; preds = %bb.aa
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %.sroa.412.1151, i64 noundef %i.bu, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #22
          to label %bb.ab unwind label %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.lr.ph:                                           ; preds = %bb.ac, %bb.af
  %.sroa.04.0149 = phi i64 [ %i.cb, %bb.af ], [ %.sroa.6.1150, %bb.ac ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  invoke void @_RINvMs7_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket6BucketINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1Q_6string6StringEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB2L_10ValueEntryB2j_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEE21compare_exchange_weakINtB6_6SharedBX_EEB3P_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noundef nonnull align 8 %i.bx, i64 noundef %.sroa.04.0149, i64 noundef %i.bq, i8 noundef 3, i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1)
          to label %bb.ae unwind label %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ae:                                            ; preds = %.lr.ph
  %i.ca = load i64, ptr %i.j, align 8, !range !10, !noundef !4
  %.not36 = icmp eq i64 %i.ca, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br i1 %.not36, label %.loopexit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cb = load atomic i64, ptr %i.bx acquire, align 8 ; 2 uses
  %i.cc = and i64 %i.cb, 4
  %i.cd = icmp eq i64 %i.cc, 0
  br i1 %i.cd, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %bb.af, %bb.ae, %bb.ac, %bb.ag, %.loopexit279
  %.sroa.6.2 = phi i64 [ %.sroa.6.1150, %bb.ag ], [ %.sroa.6.1150, %bb.ac ], [ %i.dh, %.loopexit279 ], [ %.sroa.6.1150, %bb.ae ], [ %.sroa.6.1150, %bb.af ] ; 4 uses
  %.sroa.412.2 = phi i64 [ %.sroa.412.1151, %bb.ag ], [ %.sroa.412.1151, %bb.ac ], [ %i.di, %.loopexit279 ], [ %.sroa.412.1151, %bb.ae ], [ %.sroa.412.1151, %bb.af ] ; 4 uses
  %.sroa.010.1 = phi i64 [ 0, %bb.ag ], [ 1, %bb.ac ], [ %.sroa.0.2.i227230, %.loopexit279 ], [ 1, %bb.ae ], [ 1, %bb.af ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke void @_RINvMs7_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket6BucketINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1Q_6string6StringEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB2L_10ValueEntryB2j_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEE21compare_exchange_weakINtB6_6SharedBX_EEB3P_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, ptr noundef nonnull align 8 %.sroa.02.0157, i64 noundef %i.bo, i64 noundef 1, i8 noundef 3, i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1)
          to label %bb.av unwind label %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ag:                                            ; preds = %bb.y
  %.not = icmp eq ptr %i.bt, null
  br i1 %.not, label %.loopexit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ce = invoke noundef i64 @_RINvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateNtNtCsbvkFyIu7lgC_4core4hash11BuildHasher8hash_oneRINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1K_6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bt)
          to label %bb.ai unwind label %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %i.bq, ptr %i.c, align 8, !noalias !243
  %i.cf = icmp ult i64 %i.bo, 8
  br i1 %i.cf, label %bb.aj, label %bb.ak, !prof !9

bb.aj:                                            ; preds = %bb.ai
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 39, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #27
          to label %.noexc58 unwind label %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc58:                                         ; preds = %bb.aj
  unreachable

bb.ak:                                            ; preds = %bb.ai
  %i.cg = invoke noundef nonnull align 8 ptr @_RNvMsz_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB5_6SharedINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket6BucketINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1P_6string6StringEINtNtNtNtB15_6common10concurrent3arc7MiniArcINtB2K_10ValueEntryB2i_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEE5derefB3O_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c)
          to label %.noexc59 unwind label %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc59:                                         ; preds = %bb.ak
  %i.ch = load i64, ptr %i.bj, align 8, !noalias !243, !noundef !4 ; 2 uses
  %i.ci = add i64 %i.ch, -1                       ; 3 uses
  %i.cj = and i64 %i.ci, %i.ce                    ; 4 uses
  %.not.i57 = icmp eq i64 %i.ch, 0
  br i1 %.not.i57, label %bb.am, label %bb.al

bb.al:                                            ; preds = %.noexc59
  %i.ck = load ptr, ptr %.sroa.0.0.i, align 8, !noalias !243, !nonnull !4, !noundef !4 ; 2 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.cj
  %i.cm = icmp eq i64 %4, 0                       ; 2 uses
  br label %.backedge.i

bb.am:                                            ; preds = %.noexc59
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.cj, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #27
          to label %.noexc60 unwind label %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc60:                                         ; preds = %bb.am
  unreachable

.backedge.i:                                      ; preds = %.backedge.i.backedge, %bb.al
  %.sroa.20.0.i = phi i1 [ true, %bb.al ], [ %.sroa.20.0.i.be, %.backedge.i.backedge ]
  %.sroa.17.0.i = phi i64 [ 0, %bb.al ], [ %.sroa.17.1.i, %.backedge.i.backedge ] ; 3 uses
  %.sroa.11.0.i = phi ptr [ %i.cl, %bb.al ], [ %.sroa.11.1.i, %.backedge.i.backedge ]
  %.sroa.8.0.i = phi i64 [ %i.cj, %bb.al ], [ %.sroa.8.1.i, %.backedge.i.backedge ]
  br i1 %.sroa.20.0.i, label %._crit_edge.i.i, label %bb.an

bb.an:                                            ; preds = %.backedge.i
  %.not.i.i = icmp ult i64 %.sroa.17.0.i, %i.ci
  br i1 %.not.i.i, label %bb.ao, label %.loopexit279

._crit_edge.i.i:                                  ; preds = %bb.ao, %.backedge.i
  %.sroa.17.1.i = phi i64 [ %i.cq, %bb.ao ], [ %.sroa.17.0.i, %.backedge.i ]
  %.sroa.11.1.i = phi ptr [ %i.ct, %bb.ao ], [ %.sroa.11.0.i, %.backedge.i ] ; 3 uses
  %.sroa.8.1.i = phi i64 [ %i.cs, %bb.ao ], [ %.sroa.8.0.i, %.backedge.i ] ; 2 uses
  %i.cn = load atomic i64, ptr %.sroa.11.1.i acquire, align 8, !noalias !244 ; 7 uses
  %i.co = and i64 %i.cn, 1
  %i.cp = icmp eq i64 %i.co, 0
  br i1 %i.cp, label %bb.ap, label %.loopexit279

bb.ao:                                            ; preds = %bb.an
  %i.cq = add nuw i64 %.sroa.17.0.i, 1            ; 2 uses
  %i.cr = add i64 %i.cq, %i.cj
  %i.cs = and i64 %i.cr, %i.ci                    ; 2 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.cs
  br label %._crit_edge.i.i

bb.ap:                                            ; preds = %._crit_edge.i.i
  store i64 %i.cn, ptr %i.b, align 8, !noalias !243
  %i.cu = invoke noundef align 8 ptr @_RNvMsz_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB5_6SharedINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket6BucketINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1P_6string6StringEINtNtNtNtB15_6common10concurrent3arc7MiniArcINtB2K_10ValueEntryB2i_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEE6as_refB3O_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
          to label %.noexc61 unwind label %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc61:                                         ; preds = %bb.ap
  %.not20.i = icmp eq ptr %i.cu, null
  br i1 %.not20.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %.noexc61
  %i.cv = icmp eq i64 %i.cn, %i.bq
  br i1 %i.cv, label %.loopexit279, label %bb.as

bb.ar:                                            ; preds = %.noexc61
  %.old.i = icmp ugt i64 %i.cn, 7
  %or.cond.old.i = or i1 %i.cm, %.old.i
  br i1 %or.cond.old.i, label %bb.au, label %.loopexit279

bb.as:                                            ; preds = %bb.aq
  %.val.i = load ptr, ptr %i.cu, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %.val22.i = load ptr, ptr %i.cg, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.cw = icmp eq ptr %.val.i, %.val22.i
  br i1 %i.cw, label %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtB7_6string6StringENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread44.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.cx = getelementptr i8, ptr %.val.i, i64 32
  %.val2.i.i.i = load i64, ptr %i.cx, align 8, !noundef !4 ; 2 uses
  %i.cy = getelementptr i8, ptr %.val22.i, i64 32
  %.val4.i.i.i = load i64, ptr %i.cy, align 8, !noundef !4
  %i.cz = icmp eq i64 %.val2.i.i.i, %.val4.i.i.i
  br i1 %i.cz, label %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtB7_6string6StringENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, label %.backedge.i.backedge

_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtB7_6string6StringENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %bb.at
  %i.da = getelementptr i8, ptr %.val22.i, i64 24
  %.val3.i.i.i = load ptr, ptr %i.da, align 8, !nonnull !4, !noundef !4
  %i.db = getelementptr i8, ptr %.val.i, i64 24
  %.val.i.i.i = load ptr, ptr %i.db, align 8, !nonnull !4, !noundef !4
  %bcmp.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.val.i.i.i, ptr nonnull readonly %.val3.i.i.i, i64 %.val2.i.i.i)
  %.not46.i = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br i1 %.not46.i, label %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtB7_6string6StringENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread44.i, label %.backedge.i.backedge

.backedge.i.backedge:                             ; preds = %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtB7_6string6StringENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, %bb.at, %.noexc62
  %.sroa.20.0.i.be = phi i1 [ false, %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtB7_6string6StringENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i ], [ false, %bb.at ], [ true, %.noexc62 ]
  br label %.backedge.i

_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtB7_6string6StringENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread44.i: ; preds = %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtB7_6string6StringENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, %bb.as
  %i.dc = and i64 %i.cn, 4
  %i.dd = icmp ne i64 %i.dc, 0
  %i.de = icmp ugt i64 %i.cn, 7
  %or.cond.i = or i1 %i.cm, %i.de
  %or.cond47.i = and i1 %i.dd, %or.cond.i
  br i1 %or.cond47.i, label %bb.au, label %.loopexit279

bb.au:                                            ; preds = %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtB7_6string6StringENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread44.i, %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !243
  invoke void @_RINvMs7_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket6BucketINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1Q_6string6StringEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB2L_10ValueEntryB2j_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEE21compare_exchange_weakINtB6_6SharedBX_EEB3P_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %.sroa.11.1.i, i64 noundef %i.cn, i64 noundef range(i64 4, 0) %i.bq, i8 noundef 3, i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1)
          to label %.noexc62 unwind label %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc62:                                         ; preds = %bb.au
  %i.df = load i64, ptr %i.a, align 8, !range !10, !noalias !243, !noundef !4
  %i.dg = icmp eq i64 %i.df, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !243
  br i1 %i.dg, label %.loopexit279, label %.backedge.i.backedge

.loopexit279:                                     ; preds = %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtB7_6string6StringENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread44.i, %bb.ar, %bb.aq, %._crit_edge.i.i, %bb.an, %.noexc62
  %i.dh = phi i64 [ %i.bq, %.noexc62 ], [ %.sroa.6.1150, %bb.an ], [ %.sroa.6.1150, %._crit_edge.i.i ], [ %.sroa.6.1150, %bb.aq ], [ %.sroa.6.1150, %bb.ar ], [ %.sroa.6.1150, %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtB7_6string6StringENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread44.i ]
  %.sroa.0.2.i227230 = phi i64 [ 1, %.noexc62 ], [ 0, %bb.an ], [ 0, %._crit_edge.i.i ], [ 0, %bb.aq ], [ 0, %bb.ar ], [ 0, %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtB7_6string6StringENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread44.i ]
  %i.di = phi i64 [ %.sroa.8.1.i, %.noexc62 ], [ %.sroa.412.1151, %bb.an ], [ %.sroa.412.1151, %._crit_edge.i.i ], [ %.sroa.412.1151, %bb.aq ], [ %.sroa.412.1151, %bb.ar ], [ %.sroa.412.1151, %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtB7_6string6StringENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread44.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.loopexit

bb.av:                                            ; preds = %.loopexit
  %i.dj = load i64, ptr %i.i, align 8, !range !10, !noundef !4
  %i.dk = icmp eq i64 %i.dj, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br i1 %i.dk, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.dl = icmp eq i64 %5, 0
  %i.dm = icmp eq i64 %4, 0
  %or.cond41 = or i1 %i.dl, %i.dm
  %.not37 = icmp ne i64 %.sroa.010.1, 0
  %or.cond42 = or i1 %or.cond41, %.not37
  br i1 %or.cond42, label %_RINvNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket20defer_destroy_bucketINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB17_6string6StringEINtNtNtNtB8_6common10concurrent3arc7MiniArcINtB22_10ValueEntryB1A_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB35_.exit, label %bb.ay

bb.ax:                                            ; preds = %bb.av
  %i.dn = load atomic i64, ptr %.sroa.02.0157 acquire, align 8 ; 3 uses
  store i64 %i.dn, ptr %i.k, align 8
  %i.do = and i64 %i.dn, 1
  %i.dp = icmp eq i64 %i.do, 0
  br i1 %i.dp, label %.lr.ph153, label %_RINvNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket20defer_destroy_bucketINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB17_6string6StringEINtNtNtNtB8_6common10concurrent3arc7MiniArcINtB22_10ValueEntryB1A_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB35_.exit

bb.ay:                                            ; preds = %bb.aw
  invoke void @_RINvMNtCsee2lL6QbnsJ_15crossbeam_epoch5guardNtB3_5Guard15defer_uncheckedNCINvNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket20defer_destroy_bucketINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB2i_6string6StringEINtNtNtNtB1j_6common10concurrent3arc7MiniArcINtB3d_10ValueEntryB2L_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEE0uEB4h_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, i64 noundef %i.bo)
          to label %_RINvNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket20defer_destroy_bucketINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB17_6string6StringEINtNtNtNtB8_6common10concurrent3arc7MiniArcINtB22_10ValueEntryB1A_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB35_.exit unwind label %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket20defer_destroy_bucketINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB17_6string6StringEINtNtNtNtB8_6common10concurrent3arc7MiniArcINtB22_10ValueEntryB1A_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB35_.exit: ; preds = %bb.ax, %bb.w, %bb.ay, %bb.aw
  %.sroa.6.5 = phi i64 [ %.sroa.6.2, %bb.aw ], [ %.sroa.6.2, %bb.ay ], [ %.sroa.6.0155, %bb.w ], [ %.sroa.6.2, %bb.ax ]
  %.sroa.412.5 = phi i64 [ %.sroa.412.2, %bb.aw ], [ %.sroa.412.2, %bb.ay ], [ %.sroa.412.0156, %bb.w ], [ %.sroa.412.2, %bb.ax ]
  %i.dq = icmp eq ptr %i.bk, %i.bh
  br i1 %i.dq, label %._crit_edge, label %bb.w

bb.az:                                            ; preds = %._crit_edge
  %i.dr = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.ds = trunc nuw i8 %i.aa to i1
  br i1 %i.ds, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.dt = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.du = and i64 %i.dt, 9223372036854775807
  %i.dv = icmp eq i64 %i.du, 0
  br i1 %i.dv, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %.noexc65, !prof !12

.noexc65:                                         ; preds = %bb.ba
  %i.dw = call noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #26
  br i1 %i.dw, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.bb

bb.bb:                                            ; preds = %.noexc65
  store atomic i8 1, ptr %i.dr monotonic, align 4
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.bb, %.noexc65, %bb.ba, %bb.az
  %i.dx = atomicrmw xchg ptr %i.y, i32 0 release, align 4
  %i.dy = icmp eq i32 %i.dx, 2
  br i1 %i.dy, label %bb.bc, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, !prof !9

bb.bc:                                            ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  call void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.y)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.bc, %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison12TryLockErrorINtNtBJ_5mutex10MutexGuarduEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  %.sroa.0.0 = phi ptr [ null, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison12TryLockErrorINtNtBJ_5mutex10MutexGuarduEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit ], [ %.sroa.0.0.i, %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i ], [ %.sroa.0.0.i, %bb.bc ]
  ret ptr %.sroa.0.0

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit70: ; preds = %bb.bk, %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i67, %bb.bg, %bb.bu
  %.pn.pn = phi { ptr, i32 } [ %i.ff, %bb.bu ], [ %eh.lpad-body82, %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i67 ], [ %i.em, %bb.bk ], [ %eh.lpad-body82, %bb.bg ]
  resume { ptr, i32 } %.pn.pn

.body.thread:                                     ; preds = %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.m, %bb.s, %bb.t
  %eh.lpad-body82 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i, %bb.s ], [ %lpad.thr_comm.split-lp.i, %bb.t ], [ %i.at, %bb.m ], [ %lpad.loopexit.split-lp386, %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.ea = trunc nuw i8 %i.aa to i1
  br i1 %i.ea, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i67, label %bb.bd

bb.bd:                                            ; preds = %.body.thread
  %i.eb = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.ec = and i64 %i.eb, 9223372036854775807
  %i.ed = icmp eq i64 %i.ec, 0
  br i1 %i.ed, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i67, label %bb.be, !prof !12

bb.be:                                            ; preds = %bb.bd
  %i.ee = invoke noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #26
          to label %.noexc68 unwind label %bb.bh

.noexc68:                                         ; preds = %bb.be
  br i1 %i.ee, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i67, label %bb.bf

bb.bf:                                            ; preds = %.noexc68
  store atomic i8 1, ptr %i.dz monotonic, align 4
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i67

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i67: ; preds = %bb.bf, %.noexc68, %bb.bd, %.body.thread
  %i.ef = atomicrmw xchg ptr %i.y, i32 0 release, align 4
  %i.eg = icmp eq i32 %i.ef, 2
  br i1 %i.eg, label %bb.bg, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit70, !prof !9

bb.bg:                                            ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i67
  invoke void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.y)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit70 unwind label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.be, %bb.bk, %bb.bu
  %i.eh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.bi:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.ei = load ptr, ptr %i.p, align 8, !nonnull !4, !noundef !4
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  invoke void @_RNvMs5_NtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutexINtB5_5MutexuE4lockCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.n, ptr noundef nonnull align 4 %i.ej)
          to label %bb.bl unwind label %bb.bu

bb.bj:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.ek = load ptr, ptr %i.u, align 8
  store ptr %i.ek, ptr %i.m, align 8
  %i.el = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  store i8 %i.w, ptr %i.el, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr %i.m, ptr %i.l, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr @_RNvXs4_NtNtCs2pqxYH9ZEk8_3std4sync6poisonINtB5_12TryLockErrorINtNtB5_5mutex10MutexGuarduEENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmtCsgO8S5jLFugx_23deltalake_catalog_unity, ptr %.sroa.418.0..sroa_idx, align 8
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @5, ptr noundef nonnull %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #22
          to label %bb.ab unwind label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.em = landingpad { ptr, i32 }
          cleanup
  %.val50 = load ptr, ptr %i.m, align 8
  %.val51 = load i8, ptr %i.el, align 8, !range !11, !noundef !4
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison12TryLockErrorINtNtBJ_5mutex10MutexGuarduEEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr %.val50, i8 %.val51) #24
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit70 unwind label %bb.bh

bb.bl:                                            ; preds = %bb.bi
  call void @llvm.experimental.noalias.scope.decl(metadata !245)
  %i.en = load i64, ptr %i.n, align 8, !range !10, !alias.scope !245, !noundef !4
  %i.eo = icmp eq i64 %i.en, 0
  %i.ep = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.val.i71 = load ptr, ptr %i.ep, align 8, !alias.scope !245, !nonnull !4, !align !6, !noundef !4 ; 4 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.val1.i = load i8, ptr %i.eq, align 8, !range !13, !alias.scope !245, !noundef !4
  %i.er = getelementptr inbounds nuw i8, ptr %.val.i71, i64 4 ; 2 uses
  %i.es = trunc nuw i8 %.val1.i to i1             ; 2 uses
  br i1 %i.eo, label %bb.bm, label %bb.bq

bb.bm:                                            ; preds = %bb.bl
  br i1 %i.es, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.et = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !245
  %i.eu = and i64 %i.et, 9223372036854775807
  %i.ev = icmp eq i64 %i.eu, 0
  br i1 %i.ev, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.bo, !prof !12

bb.bo:                                            ; preds = %bb.bn
  %i.ew = invoke noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #26
          to label %.noexc72 unwind label %bb.bu

.noexc72:                                         ; preds = %bb.bo
  br i1 %i.ew, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.bp

bb.bp:                                            ; preds = %.noexc72
  store atomic i8 1, ptr %i.er monotonic, align 4, !noalias !245
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i: ; preds = %bb.bp, %.noexc72, %bb.bn, %bb.bm
  %i.ex = atomicrmw xchg ptr %.val.i71, i32 0 release, align 4, !noalias !245
  %i.ey = icmp eq i32 %i.ex, 2
  br i1 %i.ey, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.sink.split.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison12TryLockErrorINtNtBJ_5mutex10MutexGuarduEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, !prof !9

bb.bq:                                            ; preds = %bb.bl
  br i1 %i.es, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.ez = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !245
  %i.fa = and i64 %i.ez, 9223372036854775807
  %i.fb = icmp eq i64 %i.fa, 0
  br i1 %i.fb, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.bs, !prof !12

bb.bs:                                            ; preds = %bb.br
  %i.fc = invoke noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #26
          to label %.noexc73 unwind label %bb.bu

.noexc73:                                         ; preds = %bb.bs
  br i1 %i.fc, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.bt

bb.bt:                                            ; preds = %.noexc73
  store atomic i8 1, ptr %i.er monotonic, align 4, !noalias !245
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i: ; preds = %bb.bt, %.noexc73, %bb.br, %bb.bq
  %i.fd = atomicrmw xchg ptr %.val.i71, i32 0 release, align 4, !noalias !245
  %i.fe = icmp eq i32 %i.fd, 2
  br i1 %i.fe, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.sink.split.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison12TryLockErrorINtNtBJ_5mutex10MutexGuarduEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, !prof !9

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.sink.split.i: ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i
  invoke void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.val.i71)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison12TryLockErrorINtNtBJ_5mutex10MutexGuarduEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.bu

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison12TryLockErrorINtNtBJ_5mutex10MutexGuarduEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.sink.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.bu:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.sink.split.i, %bb.bs, %bb.bo, %bb.bi
  %i.ff = landingpad { ptr, i32 }
          cleanup
  %.val46 = load ptr, ptr %i.u, align 8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison12TryLockErrorINtNtBJ_5mutex10MutexGuarduEEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr %.val46, i8 2) #24
end_hunk_0
begin_hunk_1_@_RINvMs3_NtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucketINtB6_11BucketArrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB18_6string6StringEINtNtNtNtBc_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock5mutex5MutexuEEE6rehashNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateECsgO8S5jLFugx_23deltalake_catalog_unity:bb.a
  %i.d = alloca [48 x i8], align 8                ; 5 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [8 x i8], align 8                 ; 6 uses
  %i.h = alloca [16 x i8], align 8                ; 8 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [8 x i8], align 8                 ; 3 uses
  %i.l = alloca [16 x i8], align 8                ; 4 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [24 x i8], align 8                ; 6 uses
  %i.o = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !4, !noundef !4
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  call void @_RNvMs5_NtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutexINtB5_5MutexuE8try_lockCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.o, ptr noundef nonnull align 4 %i.r)
  %i.s = load i64, ptr %i.o, align 8, !range !10, !noundef !4
  %i.t = trunc nuw i64 %i.s to i1
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 3 uses
  br i1 %i.t, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.w = load i8, ptr %i.v, align 8, !range !11, !noundef !4 ; 2 uses
  %i.x = icmp eq i8 %i.w, 2
  br i1 %i.x, label %bb.bi, label %bb.bj, !prof !12

bb.c:                                             ; preds = %bb.a
  %i.y = load ptr, ptr %i.u, align 8, !nonnull !4, !align !6, !noundef !4 ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.aa = load i8, ptr %i.z, align 8, !range !13, !noundef !4 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !262
  store i64 0, ptr %i.h, align 8, !noalias !262
  %i.ab = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.af = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  br label %bb.d

bb.d:                                             ; preds = %bb.q, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !262
  %i.ag = load atomic i64, ptr %i.ac acquire, align 8, !noalias !262
  store i64 %i.ag, ptr %i.g, align 8, !noalias !262
  %i.ah = invoke noundef align 8 ptr @_RNvMsz_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB5_6SharedINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket11BucketArrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1V_6string6StringEINtNtNtNtB15_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock5mutex5MutexuEEEE6as_refCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.g)
          to label %bb.e unwind label %bb.s       ; 3 uses

bb.e:                                             ; preds = %bb.d
  %.not.i = icmp eq ptr %i.ah, null
  br i1 %.not.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !262
  %i.ai = load i64, ptr %i.h, align 8, !range !10, !alias.scope !263, !noalias !262, !noundef !4
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %bb.v, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvXsk_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB5_5OwnedINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket11BucketArrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1U_6string6StringEINtNtNtNtB14_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock5mutex5MutexuEEEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ab)
          to label %bb.v unwind label %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.h:                                             ; preds = %bb.e
  %i.ak = load i64, ptr %i.ad, align 8, !noalias !262, !noundef !4
  %i.al = invoke noundef i64 @_RNvMs7_NtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucketNtB5_8RehashOp7new_len(i8 noundef range(i8 0, 4) %3, i64 noundef %i.ak)
          to label %bb.i unwind label %bb.s

bb.i:                                             ; preds = %bb.h
  %i.am = load i64, ptr %i.h, align 8, !range !10, !noalias !262, !noundef !4
  %i.an = trunc nuw i64 %i.am to i1
  br i1 %i.an, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ao = load i64, ptr %i.ab, align 8, !noalias !262
  br label %bb.p

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !262
  %i.ap = load i64, ptr %i.ae, align 8, !noalias !262, !noundef !4
  %i.aq = add i64 %i.ap, 1
  invoke void @_RNvMs_NtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucketINtB4_11BucketArrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB16_6string6StringEINtNtNtNtBa_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock5mutex5MutexuEEE11with_lengthCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.d, i64 noundef %i.aq, i64 noundef %i.al)
          to label %.noexc52 unwind label %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc52:                                         ; preds = %bb.k
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !264
  %i.ar = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 16, 281) 48, i64 noundef 8) #23, !noalias !264 ; 3 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %bb.l, label %bb.o, !prof !9

bb.l:                                             ; preds = %.noexc52
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #22
          to label %.noexc.i unwind label %bb.m

.noexc.i:                                         ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.at = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket11BucketArrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1F_6string6StringEINtNtNtNtBP_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock5mutex5MutexuEEEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.d) #24
          to label %.body.thread unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.o:                                             ; preds = %.noexc52
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ar, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false)
  %i.av = ptrtoint ptr %i.ar to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !262
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.j
  %.sroa.03.0.i = phi i64 [ %i.ao, %bb.j ], [ %i.av, %bb.o ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !262
  invoke void @_RINvMs7_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket11BucketArrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1W_6string6StringEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_5OwnedBX_EECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noundef nonnull align 8 %i.ac, i64 noundef 0, i64 noundef %.sroa.03.0.i, i8 noundef 3, i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1)
          to label %.noexc53 unwind label %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc53:                                         ; preds = %bb.p
  %i.aw = load i64, ptr %i.f, align 8, !range !10, !noalias !262, !noundef !4
  %i.ax = trunc nuw i64 %i.aw to i1
  br i1 %i.ax, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.noexc53
  %i.ay = load i64, ptr %i.af, align 8, !noalias !262, !noundef !4
  store i64 1, ptr %i.h, align 8, !noalias !262
  store i64 %i.ay, ptr %i.ab, align 8, !noalias !262
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !262
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !262
  br label %bb.d

bb.r:                                             ; preds = %.noexc53
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !262
  %i.az = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !noalias !262, !noundef !4
  store i64 %i.ba, ptr %i.e, align 8, !noalias !262
  %i.bb = invoke noundef nonnull align 8 ptr @_RNvMsz_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB5_6SharedINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket11BucketArrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1V_6string6StringEINtNtNtNtB15_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock5mutex5MutexuEEEE5derefCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e)
          to label %.noexc54 unwind label %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc54:                                         ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !262
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !262
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !262
  br label %bb.v

bb.s:                                             ; preds = %bb.h, %bb.d
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bc = load i64, ptr %i.h, align 8, !range !10, !alias.scope !265, !noalias !262, !noundef !4
  %i.bd = icmp eq i64 %i.bc, 0
  br i1 %i.bd, label %.body.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  invoke void @_RNvXsk_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB5_5OwnedINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket11BucketArrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1U_6string6StringEINtNtNtNtB14_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock5mutex5MutexuEEEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ab)
          to label %.body.thread unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #25
  unreachable

.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ay, %bb.ak, %bb.y, %bb.ah, %.loopexit, %.lr.ph, %bb.ap, %bb.au, %bb.k, %bb.p, %._crit_edge, %bb.z, %bb.ad, %bb.r, %bb.g, %bb.aj, %bb.am
  %lpad.loopexit.split-lp386 = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

bb.v:                                             ; preds = %.noexc54, %bb.f, %bb.g
  %.sroa.0.0.i = phi ptr [ %i.bb, %.noexc54 ], [ %i.ah, %bb.f ], [ %i.ah, %bb.g ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !262
  %i.bf = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.bg = load i64, ptr %i.ad, align 8, !noundef !4 ; 2 uses
  %.idx = shl nuw nsw i64 %i.bg, 3
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 %.idx
  %i.bi = icmp eq i64 %i.bg, 0
  br i1 %i.bi, label %._crit_edge, label %.lr.ph158

.lr.ph158:                                        ; preds = %bb.v
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 8 ; 2 uses
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph158, %_RINvNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket20defer_destroy_bucketINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB17_6string6StringEINtNtNtNtB8_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock5mutex5MutexuEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  %.sroa.02.0157 = phi ptr [ %i.bf, %.lr.ph158 ], [ %i.bk, %_RINvNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket20defer_destroy_bucketINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB17_6string6StringEINtNtNtNtB8_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock5mutex5MutexuEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit ] ; 4 uses
  %.sroa.412.0156 = phi i64 [ undef, %.lr.ph158 ], [ %.sroa.412.5, %_RINvNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket20defer_destroy_bucketINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB17_6string6StringEINtNtNtNtB8_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock5mutex5MutexuEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit ] ; 2 uses
  %.sroa.6.0155 = phi i64 [ undef, %.lr.ph158 ], [ %.sroa.6.5, %_RINvNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket20defer_destroy_bucketINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB17_6string6StringEINtNtNtNtB8_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock5mutex5MutexuEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit ] ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.02.0157, i64 8 ; 2 uses
  %i.bl = load atomic i64, ptr %.sroa.02.0157 acquire, align 8 ; 3 uses
  store i64 %i.bl, ptr %i.k, align 8
  %i.bm = and i64 %i.bl, 1
  %i.bn = icmp eq i64 %i.bm, 0
  br i1 %i.bn, label %.lr.ph153, label %_RINvNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket20defer_destroy_bucketINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB17_6string6StringEINtNtNtNtB8_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock5mutex5MutexuEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

._crit_edge:                                      ; preds = %_RINvNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket20defer_destroy_bucketINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB17_6string6StringEINtNtNtNtB8_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock5mutex5MutexuEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, %bb.v
  invoke void @_RNvMNtCsee2lL6QbnsJ_15crossbeam_epoch5guardNtB2_5Guard5flush(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1)
          to label %bb.az unwind label %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.lr.ph153:                                        ; preds = %bb.w, %bb.ax
  %i.bo = phi i64 [ %i.dn, %bb.ax ], [ %i.bl, %bb.w ] ; 6 uses
  %.sroa.010.0152 = phi i64 [ %.sroa.010.1, %bb.ax ], [ 0, %bb.w ]
  %.sroa.412.1151 = phi i64 [ %.sroa.412.2, %bb.ax ], [ %.sroa.412.0156, %bb.w ] ; 12 uses
  %.sroa.6.1150 = phi i64 [ %.sroa.6.2, %bb.ax ], [ %.sroa.6.0155, %bb.w ] ; 11 uses
  %4 = and i64 %i.bo, 2                           ; 2 uses
  %5 = and i64 %i.bo, -8                          ; 2 uses
  %i.bp = and i64 %i.bo, -6
  %i.bq = or disjoint i64 %i.bp, 4                ; 5 uses
  %i.br = trunc nuw i64 %.sroa.010.0152 to i1
  br i1 %i.br, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.lr.ph153
  %i.bs = icmp eq i64 %5, 0
  br i1 %i.bs, label %bb.z, label %bb.aa, !prof !9

bb.y:                                             ; preds = %.lr.ph153
  %i.bt = invoke noundef align 8 ptr @_RNvMsz_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB5_6SharedINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket6BucketINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1P_6string6StringEINtNtNtNtB15_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock5mutex5MutexuEEEE6as_refCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.k)
          to label %bb.ag unwind label %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.z:                                             ; preds = %bb.x
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 44, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #22
          to label %bb.ab unwind label %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aa:                                            ; preds = %bb.x
  %i.bu = load i64, ptr %i.bj, align 8, !noundef !4 ; 2 uses
  %i.bv = icmp ult i64 %.sroa.412.1151, %i.bu
  br i1 %i.bv, label %bb.ac, label %bb.ad

bb.ab:                                            ; preds = %bb.bj, %bb.ad, %bb.z
  unreachable

bb.ac:                                            ; preds = %bb.aa
  %i.bw = load ptr, ptr %.sroa.0.0.i, align 8, !nonnull !4, !noundef !4
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %.sroa.412.1151 ; 2 uses
  %i.by = and i64 %.sroa.6.1150, 4
  %i.bz = icmp eq i64 %i.by, 0
  br i1 %i.bz, label %.loopexit, label %.lr.ph

bb.ad:                                            ; preds = %bb.aa
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %.sroa.412.1151, i64 noundef %i.bu, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #22
          to label %bb.ab unwind label %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.lr.ph:                                           ; preds = %bb.ac, %bb.af
  %.sroa.04.0149 = phi i64 [ %i.cb, %bb.af ], [ %.sroa.6.1150, %bb.ac ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  invoke void @_RINvMs7_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket6BucketINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1Q_6string6StringEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noundef nonnull align 8 %i.bx, i64 noundef %.sroa.04.0149, i64 noundef %i.bq, i8 noundef 3, i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1)
          to label %bb.ae unwind label %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ae:                                            ; preds = %.lr.ph
  %i.ca = load i64, ptr %i.j, align 8, !range !10, !noundef !4
  %.not36 = icmp eq i64 %i.ca, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br i1 %.not36, label %.loopexit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cb = load atomic i64, ptr %i.bx acquire, align 8 ; 2 uses
  %i.cc = and i64 %i.cb, 4
  %i.cd = icmp eq i64 %i.cc, 0
  br i1 %i.cd, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %bb.af, %bb.ae, %bb.ac, %bb.ag, %.loopexit279
  %.sroa.6.2 = phi i64 [ %.sroa.6.1150, %bb.ag ], [ %.sroa.6.1150, %bb.ac ], [ %i.dh, %.loopexit279 ], [ %.sroa.6.1150, %bb.ae ], [ %.sroa.6.1150, %bb.af ] ; 4 uses
  %.sroa.412.2 = phi i64 [ %.sroa.412.1151, %bb.ag ], [ %.sroa.412.1151, %bb.ac ], [ %i.di, %.loopexit279 ], [ %.sroa.412.1151, %bb.ae ], [ %.sroa.412.1151, %bb.af ] ; 4 uses
  %.sroa.010.1 = phi i64 [ 0, %bb.ag ], [ 1, %bb.ac ], [ %.sroa.0.2.i227230, %.loopexit279 ], [ 1, %bb.ae ], [ 1, %bb.af ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke void @_RINvMs7_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket6BucketINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1Q_6string6StringEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, ptr noundef nonnull align 8 %.sroa.02.0157, i64 noundef %i.bo, i64 noundef 1, i8 noundef 3, i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1)
          to label %bb.av unwind label %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ag:                                            ; preds = %bb.y
  %.not = icmp eq ptr %i.bt, null
  br i1 %.not, label %.loopexit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ce = invoke noundef i64 @_RINvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateNtNtCsbvkFyIu7lgC_4core4hash11BuildHasher8hash_oneRINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1K_6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bt)
          to label %bb.ai unwind label %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %i.bq, ptr %i.c, align 8, !noalias !266
  %i.cf = icmp ult i64 %i.bo, 8
  br i1 %i.cf, label %bb.aj, label %bb.ak, !prof !9

bb.aj:                                            ; preds = %bb.ai
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 39, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #27
          to label %.noexc58 unwind label %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc58:                                         ; preds = %bb.aj
  unreachable

bb.ak:                                            ; preds = %bb.ai
  %i.cg = invoke noundef nonnull align 8 ptr @_RNvMsz_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB5_6SharedINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket6BucketINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1P_6string6StringEINtNtNtNtB15_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock5mutex5MutexuEEEE5derefCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c)
          to label %.noexc59 unwind label %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc59:                                         ; preds = %bb.ak
  %i.ch = load i64, ptr %i.bj, align 8, !noalias !266, !noundef !4 ; 2 uses
  %i.ci = add i64 %i.ch, -1                       ; 3 uses
  %i.cj = and i64 %i.ci, %i.ce                    ; 4 uses
  %.not.i57 = icmp eq i64 %i.ch, 0
  br i1 %.not.i57, label %bb.am, label %bb.al

bb.al:                                            ; preds = %.noexc59
  %i.ck = load ptr, ptr %.sroa.0.0.i, align 8, !noalias !266, !nonnull !4, !noundef !4 ; 2 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.cj
  %i.cm = icmp eq i64 %4, 0                       ; 2 uses
  br label %.backedge.i

bb.am:                                            ; preds = %.noexc59
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.cj, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #27
          to label %.noexc60 unwind label %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc60:                                         ; preds = %bb.am
  unreachable

.backedge.i:                                      ; preds = %.backedge.i.backedge, %bb.al
  %.sroa.20.0.i = phi i1 [ true, %bb.al ], [ %.sroa.20.0.i.be, %.backedge.i.backedge ]
  %.sroa.17.0.i = phi i64 [ 0, %bb.al ], [ %.sroa.17.1.i, %.backedge.i.backedge ] ; 3 uses
  %.sroa.11.0.i = phi ptr [ %i.cl, %bb.al ], [ %.sroa.11.1.i, %.backedge.i.backedge ]
  %.sroa.8.0.i = phi i64 [ %i.cj, %bb.al ], [ %.sroa.8.1.i, %.backedge.i.backedge ]
  br i1 %.sroa.20.0.i, label %._crit_edge.i.i, label %bb.an

bb.an:                                            ; preds = %.backedge.i
  %.not.i.i = icmp ult i64 %.sroa.17.0.i, %i.ci
  br i1 %.not.i.i, label %bb.ao, label %.loopexit279

._crit_edge.i.i:                                  ; preds = %bb.ao, %.backedge.i
  %.sroa.17.1.i = phi i64 [ %i.cq, %bb.ao ], [ %.sroa.17.0.i, %.backedge.i ]
  %.sroa.11.1.i = phi ptr [ %i.ct, %bb.ao ], [ %.sroa.11.0.i, %.backedge.i ] ; 3 uses
  %.sroa.8.1.i = phi i64 [ %i.cs, %bb.ao ], [ %.sroa.8.0.i, %.backedge.i ] ; 2 uses
  %i.cn = load atomic i64, ptr %.sroa.11.1.i acquire, align 8, !noalias !267 ; 7 uses
  %i.co = and i64 %i.cn, 1
  %i.cp = icmp eq i64 %i.co, 0
  br i1 %i.cp, label %bb.ap, label %.loopexit279

bb.ao:                                            ; preds = %bb.an
  %i.cq = add nuw i64 %.sroa.17.0.i, 1            ; 2 uses
  %i.cr = add i64 %i.cq, %i.cj
  %i.cs = and i64 %i.cr, %i.ci                    ; 2 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.cs
  br label %._crit_edge.i.i

bb.ap:                                            ; preds = %._crit_edge.i.i
  store i64 %i.cn, ptr %i.b, align 8, !noalias !266
  %i.cu = invoke noundef align 8 ptr @_RNvMsz_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB5_6SharedINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket6BucketINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1P_6string6StringEINtNtNtNtB15_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock5mutex5MutexuEEEE6as_refCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
          to label %.noexc61 unwind label %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc61:                                         ; preds = %bb.ap
  %.not20.i = icmp eq ptr %i.cu, null
  br i1 %.not20.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %.noexc61
  %i.cv = icmp eq i64 %i.cn, %i.bq
  br i1 %i.cv, label %.loopexit279, label %bb.as

bb.ar:                                            ; preds = %.noexc61
  %.old.i = icmp ugt i64 %i.cn, 7
  %or.cond.old.i = or i1 %i.cm, %.old.i
  br i1 %or.cond.old.i, label %bb.au, label %.loopexit279

bb.as:                                            ; preds = %bb.aq
  %.val.i = load ptr, ptr %i.cu, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %.val22.i = load ptr, ptr %i.cg, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.cw = icmp eq ptr %.val.i, %.val22.i
  br i1 %i.cw, label %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtB7_6string6StringENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread44.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.cx = getelementptr i8, ptr %.val.i, i64 32
  %.val2.i.i.i = load i64, ptr %i.cx, align 8, !noundef !4 ; 2 uses
  %i.cy = getelementptr i8, ptr %.val22.i, i64 32
  %.val4.i.i.i = load i64, ptr %i.cy, align 8, !noundef !4
  %i.cz = icmp eq i64 %.val2.i.i.i, %.val4.i.i.i
  br i1 %i.cz, label %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtB7_6string6StringENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, label %.backedge.i.backedge

_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtB7_6string6StringENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %bb.at
  %i.da = getelementptr i8, ptr %.val22.i, i64 24
  %.val3.i.i.i = load ptr, ptr %i.da, align 8, !nonnull !4, !noundef !4
  %i.db = getelementptr i8, ptr %.val.i, i64 24
  %.val.i.i.i = load ptr, ptr %i.db, align 8, !nonnull !4, !noundef !4
  %bcmp.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.val.i.i.i, ptr nonnull readonly %.val3.i.i.i, i64 %.val2.i.i.i)
  %.not46.i = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br i1 %.not46.i, label %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtB7_6string6StringENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread44.i, label %.backedge.i.backedge

.backedge.i.backedge:                             ; preds = %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtB7_6string6StringENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, %bb.at, %.noexc62
  %.sroa.20.0.i.be = phi i1 [ false, %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtB7_6string6StringENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i ], [ false, %bb.at ], [ true, %.noexc62 ]
  br label %.backedge.i

_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtB7_6string6StringENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread44.i: ; preds = %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtB7_6string6StringENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, %bb.as
  %i.dc = and i64 %i.cn, 4
  %i.dd = icmp ne i64 %i.dc, 0
  %i.de = icmp ugt i64 %i.cn, 7
  %or.cond.i = or i1 %i.cm, %i.de
  %or.cond47.i = and i1 %i.dd, %or.cond.i
  br i1 %or.cond47.i, label %bb.au, label %.loopexit279

bb.au:                                            ; preds = %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtB7_6string6StringENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread44.i, %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !266
  invoke void @_RINvMs7_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket6BucketINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1Q_6string6StringEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %.sroa.11.1.i, i64 noundef %i.cn, i64 noundef range(i64 4, 0) %i.bq, i8 noundef 3, i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1)
          to label %.noexc62 unwind label %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc62:                                         ; preds = %bb.au
  %i.df = load i64, ptr %i.a, align 8, !range !10, !noalias !266, !noundef !4
  %i.dg = icmp eq i64 %i.df, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !266
  br i1 %i.dg, label %.loopexit279, label %.backedge.i.backedge

.loopexit279:                                     ; preds = %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtB7_6string6StringENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread44.i, %bb.ar, %bb.aq, %._crit_edge.i.i, %bb.an, %.noexc62
  %i.dh = phi i64 [ %i.bq, %.noexc62 ], [ %.sroa.6.1150, %bb.an ], [ %.sroa.6.1150, %._crit_edge.i.i ], [ %.sroa.6.1150, %bb.aq ], [ %.sroa.6.1150, %bb.ar ], [ %.sroa.6.1150, %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtB7_6string6StringENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread44.i ]
  %.sroa.0.2.i227230 = phi i64 [ 1, %.noexc62 ], [ 0, %bb.an ], [ 0, %._crit_edge.i.i ], [ 0, %bb.aq ], [ 0, %bb.ar ], [ 0, %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtB7_6string6StringENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread44.i ]
  %i.di = phi i64 [ %.sroa.8.1.i, %.noexc62 ], [ %.sroa.412.1151, %bb.an ], [ %.sroa.412.1151, %._crit_edge.i.i ], [ %.sroa.412.1151, %bb.aq ], [ %.sroa.412.1151, %bb.ar ], [ %.sroa.412.1151, %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtB7_6string6StringENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread44.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.loopexit

bb.av:                                            ; preds = %.loopexit
  %i.dj = load i64, ptr %i.i, align 8, !range !10, !noundef !4
  %i.dk = icmp eq i64 %i.dj, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br i1 %i.dk, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.dl = icmp eq i64 %5, 0
  %i.dm = icmp eq i64 %4, 0
  %or.cond41 = or i1 %i.dl, %i.dm
  %.not37 = icmp ne i64 %.sroa.010.1, 0
  %or.cond42 = or i1 %or.cond41, %.not37
  br i1 %or.cond42, label %_RINvNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket20defer_destroy_bucketINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB17_6string6StringEINtNtNtNtB8_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock5mutex5MutexuEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.ay

bb.ax:                                            ; preds = %bb.av
  %i.dn = load atomic i64, ptr %.sroa.02.0157 acquire, align 8 ; 3 uses
  store i64 %i.dn, ptr %i.k, align 8
  %i.do = and i64 %i.dn, 1
  %i.dp = icmp eq i64 %i.do, 0
  br i1 %i.dp, label %.lr.ph153, label %_RINvNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket20defer_destroy_bucketINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB17_6string6StringEINtNtNtNtB8_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock5mutex5MutexuEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.ay:                                            ; preds = %bb.aw
  invoke void @_RINvMNtCsee2lL6QbnsJ_15crossbeam_epoch5guardNtB3_5Guard15defer_uncheckedNCINvNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket20defer_destroy_bucketINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB2i_6string6StringEINtNtNtNtB1j_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock5mutex5MutexuEEE0uECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, i64 noundef %i.bo)
          to label %_RINvNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket20defer_destroy_bucketINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB17_6string6StringEINtNtNtNtB8_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock5mutex5MutexuEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket20defer_destroy_bucketINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB17_6string6StringEINtNtNtNtB8_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock5mutex5MutexuEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.ax, %bb.w, %bb.ay, %bb.aw
  %.sroa.6.5 = phi i64 [ %.sroa.6.2, %bb.aw ], [ %.sroa.6.2, %bb.ay ], [ %.sroa.6.0155, %bb.w ], [ %.sroa.6.2, %bb.ax ]
  %.sroa.412.5 = phi i64 [ %.sroa.412.2, %bb.aw ], [ %.sroa.412.2, %bb.ay ], [ %.sroa.412.0156, %bb.w ], [ %.sroa.412.2, %bb.ax ]
  %i.dq = icmp eq ptr %i.bk, %i.bh
  br i1 %i.dq, label %._crit_edge, label %bb.w

bb.az:                                            ; preds = %._crit_edge
  %i.dr = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.ds = trunc nuw i8 %i.aa to i1
  br i1 %i.ds, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.dt = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.du = and i64 %i.dt, 9223372036854775807
  %i.dv = icmp eq i64 %i.du, 0
  br i1 %i.dv, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %.noexc65, !prof !12

.noexc65:                                         ; preds = %bb.ba
  %i.dw = call noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #26
  br i1 %i.dw, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.bb

bb.bb:                                            ; preds = %.noexc65
  store atomic i8 1, ptr %i.dr monotonic, align 4
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.bb, %.noexc65, %bb.ba, %bb.az
  %i.dx = atomicrmw xchg ptr %i.y, i32 0 release, align 4
  %i.dy = icmp eq i32 %i.dx, 2
  br i1 %i.dy, label %bb.bc, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, !prof !9

bb.bc:                                            ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  call void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.y)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.bc, %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison12TryLockErrorINtNtBJ_5mutex10MutexGuarduEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  %.sroa.0.0 = phi ptr [ null, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison12TryLockErrorINtNtBJ_5mutex10MutexGuarduEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit ], [ %.sroa.0.0.i, %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i ], [ %.sroa.0.0.i, %bb.bc ]
  ret ptr %.sroa.0.0

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit70: ; preds = %bb.bk, %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i67, %bb.bg, %bb.bu
  %.pn.pn = phi { ptr, i32 } [ %i.ff, %bb.bu ], [ %eh.lpad-body82, %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i67 ], [ %i.em, %bb.bk ], [ %eh.lpad-body82, %bb.bg ]
  resume { ptr, i32 } %.pn.pn

.body.thread:                                     ; preds = %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.m, %bb.s, %bb.t
  %eh.lpad-body82 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i, %bb.s ], [ %lpad.thr_comm.split-lp.i, %bb.t ], [ %i.at, %bb.m ], [ %lpad.loopexit.split-lp386, %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.ea = trunc nuw i8 %i.aa to i1
  br i1 %i.ea, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i67, label %bb.bd

bb.bd:                                            ; preds = %.body.thread
  %i.eb = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.ec = and i64 %i.eb, 9223372036854775807
  %i.ed = icmp eq i64 %i.ec, 0
  br i1 %i.ed, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i67, label %bb.be, !prof !12

bb.be:                                            ; preds = %bb.bd
  %i.ee = invoke noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #26
          to label %.noexc68 unwind label %bb.bh

.noexc68:                                         ; preds = %bb.be
  br i1 %i.ee, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i67, label %bb.bf

bb.bf:                                            ; preds = %.noexc68
  store atomic i8 1, ptr %i.dz monotonic, align 4
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i67

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i67: ; preds = %bb.bf, %.noexc68, %bb.bd, %.body.thread
  %i.ef = atomicrmw xchg ptr %i.y, i32 0 release, align 4
  %i.eg = icmp eq i32 %i.ef, 2
  br i1 %i.eg, label %bb.bg, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit70, !prof !9

bb.bg:                                            ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i67
  invoke void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.y)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit70 unwind label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.be, %bb.bk, %bb.bu
  %i.eh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.bi:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.ei = load ptr, ptr %i.p, align 8, !nonnull !4, !noundef !4
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  invoke void @_RNvMs5_NtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutexINtB5_5MutexuE4lockCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.n, ptr noundef nonnull align 4 %i.ej)
          to label %bb.bl unwind label %bb.bu

bb.bj:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.ek = load ptr, ptr %i.u, align 8
  store ptr %i.ek, ptr %i.m, align 8
  %i.el = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  store i8 %i.w, ptr %i.el, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr %i.m, ptr %i.l, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr @_RNvXs4_NtNtCs2pqxYH9ZEk8_3std4sync6poisonINtB5_12TryLockErrorINtNtB5_5mutex10MutexGuarduEENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmtCsgO8S5jLFugx_23deltalake_catalog_unity, ptr %.sroa.418.0..sroa_idx, align 8
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @5, ptr noundef nonnull %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #22
          to label %bb.ab unwind label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.em = landingpad { ptr, i32 }
          cleanup
  %.val50 = load ptr, ptr %i.m, align 8
  %.val51 = load i8, ptr %i.el, align 8, !range !11, !noundef !4
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison12TryLockErrorINtNtBJ_5mutex10MutexGuarduEEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr %.val50, i8 %.val51) #24
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit70 unwind label %bb.bh

bb.bl:                                            ; preds = %bb.bi
  call void @llvm.experimental.noalias.scope.decl(metadata !268)
  %i.en = load i64, ptr %i.n, align 8, !range !10, !alias.scope !268, !noundef !4
  %i.eo = icmp eq i64 %i.en, 0
  %i.ep = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.val.i71 = load ptr, ptr %i.ep, align 8, !alias.scope !268, !nonnull !4, !align !6, !noundef !4 ; 4 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.val1.i = load i8, ptr %i.eq, align 8, !range !13, !alias.scope !268, !noundef !4
  %i.er = getelementptr inbounds nuw i8, ptr %.val.i71, i64 4 ; 2 uses
  %i.es = trunc nuw i8 %.val1.i to i1             ; 2 uses
  br i1 %i.eo, label %bb.bm, label %bb.bq

bb.bm:                                            ; preds = %bb.bl
  br i1 %i.es, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.et = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !268
  %i.eu = and i64 %i.et, 9223372036854775807
  %i.ev = icmp eq i64 %i.eu, 0
  br i1 %i.ev, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.bo, !prof !12

bb.bo:                                            ; preds = %bb.bn
  %i.ew = invoke noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #26
          to label %.noexc72 unwind label %bb.bu

.noexc72:                                         ; preds = %bb.bo
  br i1 %i.ew, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.bp

bb.bp:                                            ; preds = %.noexc72
  store atomic i8 1, ptr %i.er monotonic, align 4, !noalias !268
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i: ; preds = %bb.bp, %.noexc72, %bb.bn, %bb.bm
  %i.ex = atomicrmw xchg ptr %.val.i71, i32 0 release, align 4, !noalias !268
  %i.ey = icmp eq i32 %i.ex, 2
  br i1 %i.ey, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.sink.split.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison12TryLockErrorINtNtBJ_5mutex10MutexGuarduEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, !prof !9

bb.bq:                                            ; preds = %bb.bl
  br i1 %i.es, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.ez = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !268
  %i.fa = and i64 %i.ez, 9223372036854775807
  %i.fb = icmp eq i64 %i.fa, 0
  br i1 %i.fb, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.bs, !prof !12

bb.bs:                                            ; preds = %bb.br
  %i.fc = invoke noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #26
          to label %.noexc73 unwind label %bb.bu

.noexc73:                                         ; preds = %bb.bs
  br i1 %i.fc, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.bt

bb.bt:                                            ; preds = %.noexc73
  store atomic i8 1, ptr %i.er monotonic, align 4, !noalias !268
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i: ; preds = %bb.bt, %.noexc73, %bb.br, %bb.bq
  %i.fd = atomicrmw xchg ptr %.val.i71, i32 0 release, align 4, !noalias !268
  %i.fe = icmp eq i32 %i.fd, 2
  br i1 %i.fe, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.sink.split.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison12TryLockErrorINtNtBJ_5mutex10MutexGuarduEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, !prof !9

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.sink.split.i: ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i
  invoke void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.val.i71)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison12TryLockErrorINtNtBJ_5mutex10MutexGuarduEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.bu

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison12TryLockErrorINtNtBJ_5mutex10MutexGuarduEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.sink.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.bu:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.sink.split.i, %bb.bs, %bb.bo, %bb.bi
  %i.ff = landingpad { ptr, i32 }
          cleanup
  %.val46 = load ptr, ptr %i.u, align 8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison12TryLockErrorINtNtBJ_5mutex10MutexGuarduEEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr %.val46, i8 2) #24
end_hunk_1
begin_hunk_2_@_RINvMs3_NtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucketINtB6_11BucketArrayNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtBc_6future11invalidator9PredicateB13_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE6rehashNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEB2r_:bb.a
  %i.d = alloca [48 x i8], align 8                ; 5 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [8 x i8], align 8                 ; 6 uses
  %i.h = alloca [16 x i8], align 8                ; 8 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [8 x i8], align 8                 ; 3 uses
  %i.l = alloca [16 x i8], align 8                ; 4 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [24 x i8], align 8                ; 6 uses
  %i.o = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !4, !noundef !4
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  call void @_RNvMs5_NtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutexINtB5_5MutexuE8try_lockCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.o, ptr noundef nonnull align 4 %i.r)
  %i.s = load i64, ptr %i.o, align 8, !range !10, !noundef !4
  %i.t = trunc nuw i64 %i.s to i1
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 3 uses
  br i1 %i.t, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.w = load i8, ptr %i.v, align 8, !range !11, !noundef !4 ; 2 uses
  %i.x = icmp eq i8 %i.w, 2
  br i1 %i.x, label %bb.bi, label %bb.bj, !prof !12

bb.c:                                             ; preds = %bb.a
  %i.y = load ptr, ptr %i.u, align 8, !nonnull !4, !align !6, !noundef !4 ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.aa = load i8, ptr %i.z, align 8, !range !13, !noundef !4 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !285
  store i64 0, ptr %i.h, align 8, !noalias !285
  %i.ab = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.af = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  br label %bb.d

bb.d:                                             ; preds = %bb.q, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !285
  %i.ag = load atomic i64, ptr %i.ac acquire, align 8, !noalias !285
  store i64 %i.ag, ptr %i.g, align 8, !noalias !285
  %i.ah = invoke noundef align 8 ptr @_RNvMsz_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB5_6SharedINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket11BucketArrayNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtB15_6future11invalidator9PredicateB1Q_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEE6as_refB3f_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.g)
          to label %bb.e unwind label %bb.s       ; 3 uses

bb.e:                                             ; preds = %bb.d
  %.not.i = icmp eq ptr %i.ah, null
  br i1 %.not.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !285
  %i.ai = load i64, ptr %i.h, align 8, !range !10, !alias.scope !286, !noalias !285, !noundef !4
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %bb.v, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvXsk_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB5_5OwnedINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket11BucketArrayNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtB14_6future11invalidator9PredicateB1P_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB3e_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ab)
          to label %bb.v unwind label %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.h:                                             ; preds = %bb.e
  %i.ak = load i64, ptr %i.ad, align 8, !noalias !285, !noundef !4
  %i.al = invoke noundef i64 @_RNvMs7_NtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucketNtB5_8RehashOp7new_len(i8 noundef range(i8 0, 4) %3, i64 noundef %i.ak)
          to label %bb.i unwind label %bb.s

bb.i:                                             ; preds = %bb.h
  %i.am = load i64, ptr %i.h, align 8, !range !10, !noalias !285, !noundef !4
  %i.an = trunc nuw i64 %i.am to i1
  br i1 %i.an, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ao = load i64, ptr %i.ab, align 8, !noalias !285
  br label %bb.p

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !285
  %i.ap = load i64, ptr %i.ae, align 8, !noalias !285, !noundef !4
  %i.aq = add i64 %i.ap, 1
  invoke void @_RNvMs_NtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucketINtB4_11BucketArrayNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtBa_6future11invalidator9PredicateB11_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE11with_lengthB2p_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.d, i64 noundef %i.aq, i64 noundef %i.al)
          to label %.noexc52 unwind label %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc52:                                         ; preds = %bb.k
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !287
  %i.ar = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 16, 281) 48, i64 noundef 8) #23, !noalias !287 ; 3 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %bb.l, label %bb.o, !prof !9

bb.l:                                             ; preds = %.noexc52
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #22
          to label %.noexc.i unwind label %bb.m

.noexc.i:                                         ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.at = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket11BucketArrayNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtBP_6future11invalidator9PredicateB1A_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB2Y_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.d) #24
          to label %.body.thread unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.o:                                             ; preds = %.noexc52
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ar, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false)
  %i.av = ptrtoint ptr %i.ar to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !285
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.j
  %.sroa.03.0.i = phi i64 [ %i.ao, %bb.j ], [ %i.av, %bb.o ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !285
  invoke void @_RINvMs7_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket11BucketArrayNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateB1R_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEE21compare_exchange_weakINtB6_5OwnedBX_EEB3g_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noundef nonnull align 8 %i.ac, i64 noundef 0, i64 noundef %.sroa.03.0.i, i8 noundef 3, i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1)
          to label %.noexc53 unwind label %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc53:                                         ; preds = %bb.p
  %i.aw = load i64, ptr %i.f, align 8, !range !10, !noalias !285, !noundef !4
  %i.ax = trunc nuw i64 %i.aw to i1
  br i1 %i.ax, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.noexc53
  %i.ay = load i64, ptr %i.af, align 8, !noalias !285, !noundef !4
  store i64 1, ptr %i.h, align 8, !noalias !285
  store i64 %i.ay, ptr %i.ab, align 8, !noalias !285
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !285
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !285
  br label %bb.d

bb.r:                                             ; preds = %.noexc53
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !285
  %i.az = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !noalias !285, !noundef !4
  store i64 %i.ba, ptr %i.e, align 8, !noalias !285
  %i.bb = invoke noundef nonnull align 8 ptr @_RNvMsz_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB5_6SharedINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket11BucketArrayNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtB15_6future11invalidator9PredicateB1Q_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEE5derefB3f_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e)
          to label %.noexc54 unwind label %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc54:                                         ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !285
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !285
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !285
  br label %bb.v

bb.s:                                             ; preds = %bb.h, %bb.d
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bc = load i64, ptr %i.h, align 8, !range !10, !alias.scope !288, !noalias !285, !noundef !4
  %i.bd = icmp eq i64 %i.bc, 0
  br i1 %i.bd, label %.body.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  invoke void @_RNvXsk_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB5_5OwnedINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket11BucketArrayNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtB14_6future11invalidator9PredicateB1P_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB3e_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ab)
          to label %.body.thread unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #25
  unreachable

.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ay, %bb.ak, %bb.y, %bb.ah, %.loopexit, %.lr.ph, %bb.ap, %bb.au, %bb.k, %bb.p, %._crit_edge, %bb.z, %bb.ad, %bb.r, %bb.g, %bb.aj, %bb.am
  %lpad.loopexit.split-lp386 = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

bb.v:                                             ; preds = %.noexc54, %bb.f, %bb.g
  %.sroa.0.0.i = phi ptr [ %i.bb, %.noexc54 ], [ %i.ah, %bb.f ], [ %i.ah, %bb.g ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !285
  %i.bf = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.bg = load i64, ptr %i.ad, align 8, !noundef !4 ; 2 uses
  %.idx = shl nuw nsw i64 %i.bg, 3
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 %.idx
  %i.bi = icmp eq i64 %i.bg, 0
  br i1 %i.bi, label %._crit_edge, label %.lr.ph158

.lr.ph158:                                        ; preds = %bb.v
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 8 ; 2 uses
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph158, %_RINvNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket20defer_destroy_bucketNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtB8_6future11invalidator9PredicateB12_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEB2q_.exit
  %.sroa.02.0157 = phi ptr [ %i.bf, %.lr.ph158 ], [ %i.bk, %_RINvNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket20defer_destroy_bucketNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtB8_6future11invalidator9PredicateB12_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEB2q_.exit ] ; 4 uses
  %.sroa.412.0156 = phi i64 [ undef, %.lr.ph158 ], [ %.sroa.412.5, %_RINvNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket20defer_destroy_bucketNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtB8_6future11invalidator9PredicateB12_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEB2q_.exit ] ; 2 uses
  %.sroa.6.0155 = phi i64 [ undef, %.lr.ph158 ], [ %.sroa.6.5, %_RINvNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket20defer_destroy_bucketNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtB8_6future11invalidator9PredicateB12_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEB2q_.exit ] ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.02.0157, i64 8 ; 2 uses
  %i.bl = load atomic i64, ptr %.sroa.02.0157 acquire, align 8 ; 3 uses
  store i64 %i.bl, ptr %i.k, align 8
  %i.bm = and i64 %i.bl, 1
  %i.bn = icmp eq i64 %i.bm, 0
  br i1 %i.bn, label %.lr.ph153, label %_RINvNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket20defer_destroy_bucketNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtB8_6future11invalidator9PredicateB12_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEB2q_.exit

._crit_edge:                                      ; preds = %_RINvNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket20defer_destroy_bucketNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtB8_6future11invalidator9PredicateB12_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEB2q_.exit, %bb.v
  invoke void @_RNvMNtCsee2lL6QbnsJ_15crossbeam_epoch5guardNtB2_5Guard5flush(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1)
          to label %bb.az unwind label %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.lr.ph153:                                        ; preds = %bb.w, %bb.ax
  %i.bo = phi i64 [ %i.dm, %bb.ax ], [ %i.bl, %bb.w ] ; 6 uses
  %.sroa.010.0152 = phi i64 [ %.sroa.010.1, %bb.ax ], [ 0, %bb.w ]
  %.sroa.412.1151 = phi i64 [ %.sroa.412.2, %bb.ax ], [ %.sroa.412.0156, %bb.w ] ; 12 uses
  %.sroa.6.1150 = phi i64 [ %.sroa.6.2, %bb.ax ], [ %.sroa.6.0155, %bb.w ] ; 11 uses
  %4 = and i64 %i.bo, 2                           ; 2 uses
  %5 = and i64 %i.bo, -8                          ; 2 uses
  %i.bp = and i64 %i.bo, -6
  %i.bq = or disjoint i64 %i.bp, 4                ; 5 uses
  %i.br = trunc nuw i64 %.sroa.010.0152 to i1
  br i1 %i.br, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.lr.ph153
  %i.bs = icmp eq i64 %5, 0
  br i1 %i.bs, label %bb.z, label %bb.aa, !prof !9

bb.y:                                             ; preds = %.lr.ph153
  %i.bt = invoke noundef align 8 ptr @_RNvMsz_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB5_6SharedINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket6BucketNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtB15_6future11invalidator9PredicateB1K_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEE6as_refB39_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.k)
          to label %bb.ag unwind label %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.z:                                             ; preds = %bb.x
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 44, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #22
          to label %bb.ab unwind label %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aa:                                            ; preds = %bb.x
  %i.bu = load i64, ptr %i.bj, align 8, !noundef !4 ; 2 uses
  %i.bv = icmp ult i64 %.sroa.412.1151, %i.bu
  br i1 %i.bv, label %bb.ac, label %bb.ad

bb.ab:                                            ; preds = %bb.bj, %bb.ad, %bb.z
  unreachable

bb.ac:                                            ; preds = %bb.aa
  %i.bw = load ptr, ptr %.sroa.0.0.i, align 8, !nonnull !4, !noundef !4
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %.sroa.412.1151 ; 2 uses
  %i.by = and i64 %.sroa.6.1150, 4
  %i.bz = icmp eq i64 %i.by, 0
  br i1 %i.bz, label %.loopexit, label %.lr.ph

bb.ad:                                            ; preds = %bb.aa
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %.sroa.412.1151, i64 noundef %i.bu, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #22
          to label %bb.ab unwind label %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.lr.ph:                                           ; preds = %bb.ac, %bb.af
  %.sroa.04.0149 = phi i64 [ %i.cb, %bb.af ], [ %.sroa.6.1150, %bb.ac ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  invoke void @_RINvMs7_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket6BucketNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateB1L_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEE21compare_exchange_weakINtB6_6SharedBX_EEB3a_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noundef nonnull align 8 %i.bx, i64 noundef %.sroa.04.0149, i64 noundef %i.bq, i8 noundef 3, i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1)
          to label %bb.ae unwind label %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ae:                                            ; preds = %.lr.ph
  %i.ca = load i64, ptr %i.j, align 8, !range !10, !noundef !4
  %.not36 = icmp eq i64 %i.ca, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br i1 %.not36, label %.loopexit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cb = load atomic i64, ptr %i.bx acquire, align 8 ; 2 uses
  %i.cc = and i64 %i.cb, 4
  %i.cd = icmp eq i64 %i.cc, 0
  br i1 %i.cd, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %bb.af, %bb.ae, %bb.ac, %bb.ag, %.loopexit279
  %.sroa.6.2 = phi i64 [ %.sroa.6.1150, %bb.ag ], [ %.sroa.6.1150, %bb.ac ], [ %i.dg, %.loopexit279 ], [ %.sroa.6.1150, %bb.ae ], [ %.sroa.6.1150, %bb.af ] ; 4 uses
  %.sroa.412.2 = phi i64 [ %.sroa.412.1151, %bb.ag ], [ %.sroa.412.1151, %bb.ac ], [ %i.dh, %.loopexit279 ], [ %.sroa.412.1151, %bb.ae ], [ %.sroa.412.1151, %bb.af ] ; 4 uses
  %.sroa.010.1 = phi i64 [ 0, %bb.ag ], [ 1, %bb.ac ], [ %.sroa.0.2.i227230, %.loopexit279 ], [ 1, %bb.ae ], [ 1, %bb.af ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke void @_RINvMs7_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket6BucketNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateB1L_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEE21compare_exchange_weakINtB6_6SharedBX_EEB3a_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, ptr noundef nonnull align 8 %.sroa.02.0157, i64 noundef %i.bo, i64 noundef 1, i8 noundef 3, i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1)
          to label %bb.av unwind label %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ag:                                            ; preds = %bb.y
  %.not = icmp eq ptr %i.bt, null
  br i1 %.not, label %.loopexit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ce = invoke noundef i64 @_RINvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateNtNtCsbvkFyIu7lgC_4core4hash11BuildHasher8hash_oneRNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bt)
          to label %bb.ai unwind label %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %i.bq, ptr %i.c, align 8, !noalias !289
  %i.cf = icmp ult i64 %i.bo, 8
  br i1 %i.cf, label %bb.aj, label %bb.ak, !prof !9

bb.aj:                                            ; preds = %bb.ai
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 39, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #27
          to label %.noexc58 unwind label %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc58:                                         ; preds = %bb.aj
  unreachable

bb.ak:                                            ; preds = %bb.ai
  %i.cg = invoke noundef nonnull align 8 ptr @_RNvMsz_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB5_6SharedINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket6BucketNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtB15_6future11invalidator9PredicateB1K_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEE5derefB39_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c)
          to label %.noexc59 unwind label %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc59:                                         ; preds = %bb.ak
  %i.ch = load i64, ptr %i.bj, align 8, !noalias !289, !noundef !4 ; 2 uses
  %i.ci = add i64 %i.ch, -1                       ; 3 uses
  %i.cj = and i64 %i.ci, %i.ce                    ; 4 uses
  %.not.i57 = icmp eq i64 %i.ch, 0
  br i1 %.not.i57, label %bb.am, label %bb.al

bb.al:                                            ; preds = %.noexc59
  %i.ck = load ptr, ptr %.sroa.0.0.i, align 8, !noalias !289, !nonnull !4, !noundef !4 ; 2 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.cj
  %i.cm = getelementptr i8, ptr %i.cg, i64 16
  %i.cn = getelementptr i8, ptr %i.cg, i64 8
  %i.co = icmp eq i64 %4, 0                       ; 2 uses
  br label %.backedge.i

bb.am:                                            ; preds = %.noexc59
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.cj, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #27
          to label %.noexc60 unwind label %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc60:                                         ; preds = %bb.am
  unreachable

.backedge.i:                                      ; preds = %.backedge.i.backedge, %bb.al
  %.sroa.20.0.i = phi i1 [ true, %bb.al ], [ %.sroa.20.0.i.be, %.backedge.i.backedge ]
  %.sroa.17.0.i = phi i64 [ 0, %bb.al ], [ %.sroa.17.1.i, %.backedge.i.backedge ] ; 3 uses
  %.sroa.11.0.i = phi ptr [ %i.cl, %bb.al ], [ %.sroa.11.1.i, %.backedge.i.backedge ]
  %.sroa.8.0.i = phi i64 [ %i.cj, %bb.al ], [ %.sroa.8.1.i, %.backedge.i.backedge ]
  br i1 %.sroa.20.0.i, label %._crit_edge.i.i, label %bb.an

bb.an:                                            ; preds = %.backedge.i
  %.not.i.i = icmp ult i64 %.sroa.17.0.i, %i.ci
  br i1 %.not.i.i, label %bb.ao, label %.loopexit279

._crit_edge.i.i:                                  ; preds = %bb.ao, %.backedge.i
  %.sroa.17.1.i = phi i64 [ %i.cs, %bb.ao ], [ %.sroa.17.0.i, %.backedge.i ]
  %.sroa.11.1.i = phi ptr [ %i.cv, %bb.ao ], [ %.sroa.11.0.i, %.backedge.i ] ; 3 uses
  %.sroa.8.1.i = phi i64 [ %i.cu, %bb.ao ], [ %.sroa.8.0.i, %.backedge.i ] ; 2 uses
  %i.cp = load atomic i64, ptr %.sroa.11.1.i acquire, align 8, !noalias !290 ; 7 uses
  %i.cq = and i64 %i.cp, 1
  %i.cr = icmp eq i64 %i.cq, 0
  br i1 %i.cr, label %bb.ap, label %.loopexit279

bb.ao:                                            ; preds = %bb.an
  %i.cs = add nuw i64 %.sroa.17.0.i, 1            ; 2 uses
  %i.ct = add i64 %i.cs, %i.cj
  %i.cu = and i64 %i.ct, %i.ci                    ; 2 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.cu
  br label %._crit_edge.i.i

bb.ap:                                            ; preds = %._crit_edge.i.i
  store i64 %i.cp, ptr %i.b, align 8, !noalias !289
  %i.cw = invoke noundef align 8 ptr @_RNvMsz_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB5_6SharedINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket6BucketNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtB15_6future11invalidator9PredicateB1K_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEE6as_refB39_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
          to label %.noexc61 unwind label %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc61:                                         ; preds = %bb.ap
  %.not20.i = icmp eq ptr %i.cw, null
  br i1 %.not20.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %.noexc61
  %i.cx = icmp eq i64 %i.cp, %i.bq
  br i1 %i.cx, label %.loopexit279, label %bb.as

bb.ar:                                            ; preds = %.noexc61
  %.old.i = icmp ugt i64 %i.cp, 7
  %or.cond.old.i = or i1 %i.co, %.old.i
  br i1 %or.cond.old.i, label %bb.au, label %.loopexit279

bb.as:                                            ; preds = %bb.aq
  %i.cy = getelementptr i8, ptr %i.cw, i64 16
  %.val22.i = load i64, ptr %i.cy, align 8, !noundef !4 ; 2 uses
  %.val24.i = load i64, ptr %i.cm, align 8, !noundef !4
  %i.cz = icmp eq i64 %.val22.i, %.val24.i
  br i1 %i.cz, label %_RNvYNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, label %.backedge.i.backedge

_RNvYNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %bb.as
  %.val23.i = load ptr, ptr %i.cn, align 8, !nonnull !4, !noundef !4
  %i.da = getelementptr i8, ptr %i.cw, i64 8
  %.val.i = load ptr, ptr %i.da, align 8, !nonnull !4, !noundef !4
  %bcmp.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.val.i, ptr nonnull readonly %.val23.i, i64 %.val22.i)
  %.not46.i = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %.not46.i, label %bb.at, label %.backedge.i.backedge

.backedge.i.backedge:                             ; preds = %_RNvYNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, %bb.as, %.noexc62
  %.sroa.20.0.i.be = phi i1 [ false, %_RNvYNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i ], [ false, %bb.as ], [ true, %.noexc62 ]
  br label %.backedge.i

bb.at:                                            ; preds = %_RNvYNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  %i.db = and i64 %i.cp, 4
  %i.dc = icmp ne i64 %i.db, 0
  %i.dd = icmp ugt i64 %i.cp, 7
  %or.cond.i = or i1 %i.co, %i.dd
  %or.cond47.i = and i1 %i.dc, %or.cond.i
  br i1 %or.cond47.i, label %bb.au, label %.loopexit279

bb.au:                                            ; preds = %bb.at, %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !289
  invoke void @_RINvMs7_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket6BucketNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateB1L_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEE21compare_exchange_weakINtB6_6SharedBX_EEB3a_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %.sroa.11.1.i, i64 noundef %i.cp, i64 noundef range(i64 4, 0) %i.bq, i8 noundef 3, i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1)
          to label %.noexc62 unwind label %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc62:                                         ; preds = %bb.au
  %i.de = load i64, ptr %i.a, align 8, !range !10, !noalias !289, !noundef !4
  %i.df = icmp eq i64 %i.de, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !289
  br i1 %i.df, label %.loopexit279, label %.backedge.i.backedge

.loopexit279:                                     ; preds = %bb.at, %bb.ar, %bb.aq, %._crit_edge.i.i, %bb.an, %.noexc62
  %i.dg = phi i64 [ %i.bq, %.noexc62 ], [ %.sroa.6.1150, %bb.an ], [ %.sroa.6.1150, %._crit_edge.i.i ], [ %.sroa.6.1150, %bb.aq ], [ %.sroa.6.1150, %bb.ar ], [ %.sroa.6.1150, %bb.at ]
  %.sroa.0.2.i227230 = phi i64 [ 1, %.noexc62 ], [ 0, %bb.an ], [ 0, %._crit_edge.i.i ], [ 0, %bb.aq ], [ 0, %bb.ar ], [ 0, %bb.at ]
  %i.dh = phi i64 [ %.sroa.8.1.i, %.noexc62 ], [ %.sroa.412.1151, %bb.an ], [ %.sroa.412.1151, %._crit_edge.i.i ], [ %.sroa.412.1151, %bb.aq ], [ %.sroa.412.1151, %bb.ar ], [ %.sroa.412.1151, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.loopexit

bb.av:                                            ; preds = %.loopexit
  %i.di = load i64, ptr %i.i, align 8, !range !10, !noundef !4
  %i.dj = icmp eq i64 %i.di, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br i1 %i.dj, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.dk = icmp eq i64 %5, 0
  %i.dl = icmp eq i64 %4, 0
  %or.cond41 = or i1 %i.dk, %i.dl
  %.not37 = icmp ne i64 %.sroa.010.1, 0
  %or.cond42 = or i1 %or.cond41, %.not37
  br i1 %or.cond42, label %_RINvNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket20defer_destroy_bucketNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtB8_6future11invalidator9PredicateB12_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEB2q_.exit, label %bb.ay

bb.ax:                                            ; preds = %bb.av
  %i.dm = load atomic i64, ptr %.sroa.02.0157 acquire, align 8 ; 3 uses
  store i64 %i.dm, ptr %i.k, align 8
  %i.dn = and i64 %i.dm, 1
  %i.do = icmp eq i64 %i.dn, 0
  br i1 %i.do, label %.lr.ph153, label %_RINvNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket20defer_destroy_bucketNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtB8_6future11invalidator9PredicateB12_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEB2q_.exit

bb.ay:                                            ; preds = %bb.aw
  invoke void @_RINvMNtCsee2lL6QbnsJ_15crossbeam_epoch5guardNtB3_5Guard15defer_uncheckedNCINvNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket20defer_destroy_bucketNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtB1j_6future11invalidator9PredicateB2d_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE0uEB3C_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, i64 noundef %i.bo)
          to label %_RINvNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket20defer_destroy_bucketNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtB8_6future11invalidator9PredicateB12_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEB2q_.exit unwind label %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket20defer_destroy_bucketNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtB8_6future11invalidator9PredicateB12_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEB2q_.exit: ; preds = %bb.ax, %bb.w, %bb.ay, %bb.aw
  %.sroa.6.5 = phi i64 [ %.sroa.6.2, %bb.aw ], [ %.sroa.6.2, %bb.ay ], [ %.sroa.6.0155, %bb.w ], [ %.sroa.6.2, %bb.ax ]
  %.sroa.412.5 = phi i64 [ %.sroa.412.2, %bb.aw ], [ %.sroa.412.2, %bb.ay ], [ %.sroa.412.0156, %bb.w ], [ %.sroa.412.2, %bb.ax ]
  %i.dp = icmp eq ptr %i.bk, %i.bh
  br i1 %i.dp, label %._crit_edge, label %bb.w

bb.az:                                            ; preds = %._crit_edge
  %i.dq = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.dr = trunc nuw i8 %i.aa to i1
  br i1 %i.dr, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ds = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.dt = and i64 %i.ds, 9223372036854775807
  %i.du = icmp eq i64 %i.dt, 0
  br i1 %i.du, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %.noexc65, !prof !12

.noexc65:                                         ; preds = %bb.ba
  %i.dv = call noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #26
  br i1 %i.dv, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.bb

bb.bb:                                            ; preds = %.noexc65
  store atomic i8 1, ptr %i.dq monotonic, align 4
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.bb, %.noexc65, %bb.ba, %bb.az
  %i.dw = atomicrmw xchg ptr %i.y, i32 0 release, align 4
  %i.dx = icmp eq i32 %i.dw, 2
  br i1 %i.dx, label %bb.bc, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, !prof !9

bb.bc:                                            ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  call void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.y)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.bc, %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison12TryLockErrorINtNtBJ_5mutex10MutexGuarduEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  %.sroa.0.0 = phi ptr [ null, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison12TryLockErrorINtNtBJ_5mutex10MutexGuarduEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit ], [ %.sroa.0.0.i, %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i ], [ %.sroa.0.0.i, %bb.bc ]
  ret ptr %.sroa.0.0

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit70: ; preds = %bb.bk, %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i67, %bb.bg, %bb.bu
  %.pn.pn = phi { ptr, i32 } [ %i.fe, %bb.bu ], [ %eh.lpad-body82, %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i67 ], [ %i.el, %bb.bk ], [ %eh.lpad-body82, %bb.bg ]
  resume { ptr, i32 } %.pn.pn

.body.thread:                                     ; preds = %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.m, %bb.s, %bb.t
  %eh.lpad-body82 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i, %bb.s ], [ %lpad.thr_comm.split-lp.i, %bb.t ], [ %i.at, %bb.m ], [ %lpad.loopexit.split-lp386, %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.dz = trunc nuw i8 %i.aa to i1
  br i1 %i.dz, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i67, label %bb.bd

bb.bd:                                            ; preds = %.body.thread
  %i.ea = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.eb = and i64 %i.ea, 9223372036854775807
  %i.ec = icmp eq i64 %i.eb, 0
  br i1 %i.ec, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i67, label %bb.be, !prof !12

bb.be:                                            ; preds = %bb.bd
  %i.ed = invoke noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #26
          to label %.noexc68 unwind label %bb.bh

.noexc68:                                         ; preds = %bb.be
  br i1 %i.ed, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i67, label %bb.bf

bb.bf:                                            ; preds = %.noexc68
  store atomic i8 1, ptr %i.dy monotonic, align 4
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i67

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i67: ; preds = %bb.bf, %.noexc68, %bb.bd, %.body.thread
  %i.ee = atomicrmw xchg ptr %i.y, i32 0 release, align 4
  %i.ef = icmp eq i32 %i.ee, 2
  br i1 %i.ef, label %bb.bg, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit70, !prof !9

bb.bg:                                            ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i67
  invoke void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.y)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit70 unwind label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.be, %bb.bk, %bb.bu
  %i.eg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.bi:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.eh = load ptr, ptr %i.p, align 8, !nonnull !4, !noundef !4
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  invoke void @_RNvMs5_NtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutexINtB5_5MutexuE4lockCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.n, ptr noundef nonnull align 4 %i.ei)
          to label %bb.bl unwind label %bb.bu

bb.bj:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.ej = load ptr, ptr %i.u, align 8
  store ptr %i.ej, ptr %i.m, align 8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  store i8 %i.w, ptr %i.ek, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr %i.m, ptr %i.l, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr @_RNvXs4_NtNtCs2pqxYH9ZEk8_3std4sync6poisonINtB5_12TryLockErrorINtNtB5_5mutex10MutexGuarduEENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmtCsgO8S5jLFugx_23deltalake_catalog_unity, ptr %.sroa.418.0..sroa_idx, align 8
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @5, ptr noundef nonnull %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #22
          to label %bb.ab unwind label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.el = landingpad { ptr, i32 }
          cleanup
  %.val50 = load ptr, ptr %i.m, align 8
  %.val51 = load i8, ptr %i.ek, align 8, !range !11, !noundef !4
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison12TryLockErrorINtNtBJ_5mutex10MutexGuarduEEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr %.val50, i8 %.val51) #24
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit70 unwind label %bb.bh

bb.bl:                                            ; preds = %bb.bi
  call void @llvm.experimental.noalias.scope.decl(metadata !291)
  %i.em = load i64, ptr %i.n, align 8, !range !10, !alias.scope !291, !noundef !4
  %i.en = icmp eq i64 %i.em, 0
  %i.eo = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.val.i71 = load ptr, ptr %i.eo, align 8, !alias.scope !291, !nonnull !4, !align !6, !noundef !4 ; 4 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.val1.i = load i8, ptr %i.ep, align 8, !range !13, !alias.scope !291, !noundef !4
  %i.eq = getelementptr inbounds nuw i8, ptr %.val.i71, i64 4 ; 2 uses
  %i.er = trunc nuw i8 %.val1.i to i1             ; 2 uses
  br i1 %i.en, label %bb.bm, label %bb.bq

bb.bm:                                            ; preds = %bb.bl
  br i1 %i.er, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.es = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !291
  %i.et = and i64 %i.es, 9223372036854775807
  %i.eu = icmp eq i64 %i.et, 0
  br i1 %i.eu, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.bo, !prof !12

bb.bo:                                            ; preds = %bb.bn
  %i.ev = invoke noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #26
          to label %.noexc72 unwind label %bb.bu

.noexc72:                                         ; preds = %bb.bo
  br i1 %i.ev, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.bp

bb.bp:                                            ; preds = %.noexc72
  store atomic i8 1, ptr %i.eq monotonic, align 4, !noalias !291
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i: ; preds = %bb.bp, %.noexc72, %bb.bn, %bb.bm
  %i.ew = atomicrmw xchg ptr %.val.i71, i32 0 release, align 4, !noalias !291
  %i.ex = icmp eq i32 %i.ew, 2
  br i1 %i.ex, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.sink.split.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison12TryLockErrorINtNtBJ_5mutex10MutexGuarduEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, !prof !9

bb.bq:                                            ; preds = %bb.bl
  br i1 %i.er, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.ey = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !291
  %i.ez = and i64 %i.ey, 9223372036854775807
  %i.fa = icmp eq i64 %i.ez, 0
  br i1 %i.fa, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.bs, !prof !12

bb.bs:                                            ; preds = %bb.br
  %i.fb = invoke noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #26
          to label %.noexc73 unwind label %bb.bu

.noexc73:                                         ; preds = %bb.bs
  br i1 %i.fb, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.bt

bb.bt:                                            ; preds = %.noexc73
  store atomic i8 1, ptr %i.eq monotonic, align 4, !noalias !291
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i: ; preds = %bb.bt, %.noexc73, %bb.br, %bb.bq
  %i.fc = atomicrmw xchg ptr %.val.i71, i32 0 release, align 4, !noalias !291
  %i.fd = icmp eq i32 %i.fc, 2
  br i1 %i.fd, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.sink.split.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison12TryLockErrorINtNtBJ_5mutex10MutexGuarduEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, !prof !9

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.sink.split.i: ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i
  invoke void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.val.i71)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison12TryLockErrorINtNtBJ_5mutex10MutexGuarduEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.bu

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison12TryLockErrorINtNtBJ_5mutex10MutexGuarduEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.sink.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.bu:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.sink.split.i, %bb.bs, %bb.bo, %bb.bi
  %i.fe = landingpad { ptr, i32 }
          cleanup
  %.val46 = load ptr, ptr %i.u, align 8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison12TryLockErrorINtNtBJ_5mutex10MutexGuarduEEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr %.val46, i8 2) #24
end_hunk_2
begin_hunk_3_@_RINvMs3_NtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucketINtB6_11BucketArrayTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB19_6string6StringENtNtCsbvkFyIu7lgC_4core3any6TypeIdEINtNtNtNtBc_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock6rwlock6RwLockINtNtNtBc_6future17value_initializer11WaiterValueNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEE6rehashNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEB4P_:bb.a
  %i.d = alloca [48 x i8], align 8                ; 5 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [8 x i8], align 8                 ; 6 uses
  %i.h = alloca [16 x i8], align 8                ; 8 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [8 x i8], align 8                 ; 3 uses
  %i.l = alloca [16 x i8], align 8                ; 4 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [24 x i8], align 8                ; 6 uses
  %i.o = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !4, !noundef !4
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  call void @_RNvMs5_NtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutexINtB5_5MutexuE8try_lockCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.o, ptr noundef nonnull align 4 %i.r)
  %i.s = load i64, ptr %i.o, align 8, !range !10, !noundef !4
  %i.t = trunc nuw i64 %i.s to i1
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 3 uses
  br i1 %i.t, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.w = load i8, ptr %i.v, align 8, !range !11, !noundef !4 ; 2 uses
  %i.x = icmp eq i8 %i.w, 2
  br i1 %i.x, label %bb.bj, label %bb.bk, !prof !12

bb.c:                                             ; preds = %bb.a
  %i.y = load ptr, ptr %i.u, align 8, !nonnull !4, !align !6, !noundef !4 ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.aa = load i8, ptr %i.z, align 8, !range !13, !noundef !4 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !308
  store i64 0, ptr %i.h, align 8, !noalias !308
  %i.ab = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.af = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  br label %bb.d

bb.d:                                             ; preds = %bb.q, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !308
  %i.ag = load atomic i64, ptr %i.ac acquire, align 8, !noalias !308
  store i64 %i.ag, ptr %i.g, align 8, !noalias !308
  %i.ah = invoke noundef align 8 ptr @_RNvMsz_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB5_6SharedINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket11BucketArrayTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1W_6string6StringENtNtCsbvkFyIu7lgC_4core3any6TypeIdEINtNtNtNtB15_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock6rwlock6RwLockINtNtNtB15_6future17value_initializer11WaiterValueNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEE6as_refB5E_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.g)
          to label %bb.e unwind label %bb.s       ; 3 uses

bb.e:                                             ; preds = %bb.d
  %.not.i = icmp eq ptr %i.ah, null
  br i1 %.not.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !308
  %i.ai = load i64, ptr %i.h, align 8, !range !10, !alias.scope !309, !noalias !308, !noundef !4
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %bb.v, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvXsk_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB5_5OwnedINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket11BucketArrayTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1V_6string6StringENtNtCsbvkFyIu7lgC_4core3any6TypeIdEINtNtNtNtB14_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock6rwlock6RwLockINtNtNtB14_6future17value_initializer11WaiterValueNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEENtNtNtB2P_3ops4drop4Drop4dropB5D_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ab)
          to label %bb.v unwind label %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.h:                                             ; preds = %bb.e
  %i.ak = load i64, ptr %i.ad, align 8, !noalias !308, !noundef !4
  %i.al = invoke noundef i64 @_RNvMs7_NtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucketNtB5_8RehashOp7new_len(i8 noundef range(i8 0, 4) %3, i64 noundef %i.ak)
          to label %bb.i unwind label %bb.s

bb.i:                                             ; preds = %bb.h
  %i.am = load i64, ptr %i.h, align 8, !range !10, !noalias !308, !noundef !4
  %i.an = trunc nuw i64 %i.am to i1
  br i1 %i.an, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ao = load i64, ptr %i.ab, align 8, !noalias !308
  br label %bb.p

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !308
  %i.ap = load i64, ptr %i.ae, align 8, !noalias !308, !noundef !4
  %i.aq = add i64 %i.ap, 1
  invoke void @_RNvMs_NtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucketINtB4_11BucketArrayTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB17_6string6StringENtNtCsbvkFyIu7lgC_4core3any6TypeIdEINtNtNtNtBa_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock6rwlock6RwLockINtNtNtBa_6future17value_initializer11WaiterValueNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEE11with_lengthB4N_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.d, i64 noundef %i.aq, i64 noundef %i.al)
          to label %.noexc52 unwind label %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc52:                                         ; preds = %bb.k
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !310
  %i.ar = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 16, 281) 48, i64 noundef 8) #23, !noalias !310 ; 3 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %bb.l, label %bb.o, !prof !9

bb.l:                                             ; preds = %.noexc52
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #22
          to label %.noexc.i unwind label %bb.m

.noexc.i:                                         ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.at = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket11BucketArrayTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1G_6string6StringENtNtB4_3any6TypeIdEINtNtNtNtBP_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock6rwlock6RwLockINtNtNtBP_6future17value_initializer11WaiterValueNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEEB56_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.d) #24
          to label %.body.thread unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.o:                                             ; preds = %.noexc52
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ar, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false)
  %i.av = ptrtoint ptr %i.ar to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !308
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.j
  %.sroa.03.0.i = phi i64 [ %i.ao, %bb.j ], [ %i.av, %bb.o ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !308
  invoke void @_RINvMs7_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket11BucketArrayTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1X_6string6StringENtNtCsbvkFyIu7lgC_4core3any6TypeIdEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock6rwlock6RwLockINtNtNtB16_6future17value_initializer11WaiterValueNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEE21compare_exchange_weakINtB6_5OwnedBX_EEB5F_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noundef nonnull align 8 %i.ac, i64 noundef 0, i64 noundef %.sroa.03.0.i, i8 noundef 3, i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1)
          to label %.noexc53 unwind label %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc53:                                         ; preds = %bb.p
  %i.aw = load i64, ptr %i.f, align 8, !range !10, !noalias !308, !noundef !4
  %i.ax = trunc nuw i64 %i.aw to i1
  br i1 %i.ax, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.noexc53
  %i.ay = load i64, ptr %i.af, align 8, !noalias !308, !noundef !4
  store i64 1, ptr %i.h, align 8, !noalias !308
  store i64 %i.ay, ptr %i.ab, align 8, !noalias !308
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !308
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !308
  br label %bb.d

bb.r:                                             ; preds = %.noexc53
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !308
  %i.az = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !noalias !308, !noundef !4
  store i64 %i.ba, ptr %i.e, align 8, !noalias !308
  %i.bb = invoke noundef nonnull align 8 ptr @_RNvMsz_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB5_6SharedINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket11BucketArrayTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1W_6string6StringENtNtCsbvkFyIu7lgC_4core3any6TypeIdEINtNtNtNtB15_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock6rwlock6RwLockINtNtNtB15_6future17value_initializer11WaiterValueNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEE5derefB5E_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e)
          to label %.noexc54 unwind label %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc54:                                         ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !308
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !308
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !308
  br label %bb.v

bb.s:                                             ; preds = %bb.h, %bb.d
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bc = load i64, ptr %i.h, align 8, !range !10, !alias.scope !311, !noalias !308, !noundef !4
  %i.bd = icmp eq i64 %i.bc, 0
  br i1 %i.bd, label %.body.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  invoke void @_RNvXsk_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB5_5OwnedINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket11BucketArrayTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1V_6string6StringENtNtCsbvkFyIu7lgC_4core3any6TypeIdEINtNtNtNtB14_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock6rwlock6RwLockINtNtNtB14_6future17value_initializer11WaiterValueNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEENtNtNtB2P_3ops4drop4Drop4dropB5D_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ab)
          to label %.body.thread unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #25
  unreachable

.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.az, %bb.ak, %bb.y, %bb.ah, %.loopexit, %.lr.ph, %bb.ap, %bb.av, %bb.k, %bb.p, %._crit_edge, %bb.z, %bb.ad, %bb.r, %bb.g, %bb.aj, %bb.am
  %lpad.loopexit.split-lp386 = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

bb.v:                                             ; preds = %.noexc54, %bb.f, %bb.g
  %.sroa.0.0.i = phi ptr [ %i.bb, %.noexc54 ], [ %i.ah, %bb.f ], [ %i.ah, %bb.g ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !308
  %i.bf = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.bg = load i64, ptr %i.ad, align 8, !noundef !4 ; 2 uses
  %.idx = shl nuw nsw i64 %i.bg, 3
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 %.idx
  %i.bi = icmp eq i64 %i.bg, 0
  br i1 %i.bi, label %._crit_edge, label %.lr.ph158

.lr.ph158:                                        ; preds = %bb.v
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 8 ; 2 uses
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph158, %_RINvNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket20defer_destroy_bucketTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB18_6string6StringENtNtCsbvkFyIu7lgC_4core3any6TypeIdEINtNtNtNtB8_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock6rwlock6RwLockINtNtNtB8_6future17value_initializer11WaiterValueNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEB4O_.exit
  %.sroa.02.0157 = phi ptr [ %i.bf, %.lr.ph158 ], [ %i.bk, %_RINvNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket20defer_destroy_bucketTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB18_6string6StringENtNtCsbvkFyIu7lgC_4core3any6TypeIdEINtNtNtNtB8_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock6rwlock6RwLockINtNtNtB8_6future17value_initializer11WaiterValueNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEB4O_.exit ] ; 4 uses
  %.sroa.412.0156 = phi i64 [ undef, %.lr.ph158 ], [ %.sroa.412.5, %_RINvNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket20defer_destroy_bucketTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB18_6string6StringENtNtCsbvkFyIu7lgC_4core3any6TypeIdEINtNtNtNtB8_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock6rwlock6RwLockINtNtNtB8_6future17value_initializer11WaiterValueNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEB4O_.exit ] ; 2 uses
  %.sroa.6.0155 = phi i64 [ undef, %.lr.ph158 ], [ %.sroa.6.5, %_RINvNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket20defer_destroy_bucketTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB18_6string6StringENtNtCsbvkFyIu7lgC_4core3any6TypeIdEINtNtNtNtB8_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock6rwlock6RwLockINtNtNtB8_6future17value_initializer11WaiterValueNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEB4O_.exit ] ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.02.0157, i64 8 ; 2 uses
  %i.bl = load atomic i64, ptr %.sroa.02.0157 acquire, align 8 ; 3 uses
  store i64 %i.bl, ptr %i.k, align 8
  %i.bm = and i64 %i.bl, 1
  %i.bn = icmp eq i64 %i.bm, 0
  br i1 %i.bn, label %.lr.ph153, label %_RINvNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket20defer_destroy_bucketTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB18_6string6StringENtNtCsbvkFyIu7lgC_4core3any6TypeIdEINtNtNtNtB8_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock6rwlock6RwLockINtNtNtB8_6future17value_initializer11WaiterValueNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEB4O_.exit

._crit_edge:                                      ; preds = %_RINvNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket20defer_destroy_bucketTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB18_6string6StringENtNtCsbvkFyIu7lgC_4core3any6TypeIdEINtNtNtNtB8_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock6rwlock6RwLockINtNtNtB8_6future17value_initializer11WaiterValueNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEB4O_.exit, %bb.v
  invoke void @_RNvMNtCsee2lL6QbnsJ_15crossbeam_epoch5guardNtB2_5Guard5flush(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1)
          to label %bb.ba unwind label %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.lr.ph153:                                        ; preds = %bb.w, %bb.ay
  %i.bo = phi i64 [ %i.dq, %bb.ay ], [ %i.bl, %bb.w ] ; 6 uses
  %.sroa.010.0152 = phi i64 [ %.sroa.010.1, %bb.ay ], [ 0, %bb.w ]
  %.sroa.412.1151 = phi i64 [ %.sroa.412.2, %bb.ay ], [ %.sroa.412.0156, %bb.w ] ; 12 uses
  %.sroa.6.1150 = phi i64 [ %.sroa.6.2, %bb.ay ], [ %.sroa.6.0155, %bb.w ] ; 11 uses
  %4 = and i64 %i.bo, 2                           ; 2 uses
  %5 = and i64 %i.bo, -8                          ; 2 uses
  %i.bp = and i64 %i.bo, -6
  %i.bq = or disjoint i64 %i.bp, 4                ; 5 uses
  %i.br = trunc nuw i64 %.sroa.010.0152 to i1
  br i1 %i.br, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.lr.ph153
  %i.bs = icmp eq i64 %5, 0
  br i1 %i.bs, label %bb.z, label %bb.aa, !prof !9

bb.y:                                             ; preds = %.lr.ph153
  %i.bt = invoke noundef align 8 ptr @_RNvMsz_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB5_6SharedINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket6BucketTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1Q_6string6StringENtNtCsbvkFyIu7lgC_4core3any6TypeIdEINtNtNtNtB15_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock6rwlock6RwLockINtNtNtB15_6future17value_initializer11WaiterValueNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEE6as_refB5y_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.k)
          to label %bb.ag unwind label %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.z:                                             ; preds = %bb.x
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 44, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #22
          to label %bb.ab unwind label %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aa:                                            ; preds = %bb.x
  %i.bu = load i64, ptr %i.bj, align 8, !noundef !4 ; 2 uses
  %i.bv = icmp ult i64 %.sroa.412.1151, %i.bu
  br i1 %i.bv, label %bb.ac, label %bb.ad

bb.ab:                                            ; preds = %bb.bk, %bb.ad, %bb.z
  unreachable

bb.ac:                                            ; preds = %bb.aa
  %i.bw = load ptr, ptr %.sroa.0.0.i, align 8, !nonnull !4, !noundef !4
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %.sroa.412.1151 ; 2 uses
  %i.by = and i64 %.sroa.6.1150, 4
  %i.bz = icmp eq i64 %i.by, 0
  br i1 %i.bz, label %.loopexit, label %.lr.ph

bb.ad:                                            ; preds = %bb.aa
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %.sroa.412.1151, i64 noundef %i.bu, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #22
          to label %bb.ab unwind label %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.lr.ph:                                           ; preds = %bb.ac, %bb.af
  %.sroa.04.0149 = phi i64 [ %i.cb, %bb.af ], [ %.sroa.6.1150, %bb.ac ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  invoke void @_RINvMs7_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket6BucketTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1R_6string6StringENtNtCsbvkFyIu7lgC_4core3any6TypeIdEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock6rwlock6RwLockINtNtNtB16_6future17value_initializer11WaiterValueNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEE21compare_exchange_weakINtB6_6SharedBX_EEB5z_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noundef nonnull align 8 %i.bx, i64 noundef %.sroa.04.0149, i64 noundef %i.bq, i8 noundef 3, i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1)
          to label %bb.ae unwind label %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ae:                                            ; preds = %.lr.ph
  %i.ca = load i64, ptr %i.j, align 8, !range !10, !noundef !4
  %.not36 = icmp eq i64 %i.ca, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br i1 %.not36, label %.loopexit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cb = load atomic i64, ptr %i.bx acquire, align 8 ; 2 uses
  %i.cc = and i64 %i.cb, 4
  %i.cd = icmp eq i64 %i.cc, 0
  br i1 %i.cd, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %bb.af, %bb.ae, %bb.ac, %bb.ag, %.loopexit279
  %.sroa.6.2 = phi i64 [ %.sroa.6.1150, %bb.ag ], [ %.sroa.6.1150, %bb.ac ], [ %i.dk, %.loopexit279 ], [ %.sroa.6.1150, %bb.ae ], [ %.sroa.6.1150, %bb.af ] ; 4 uses
  %.sroa.412.2 = phi i64 [ %.sroa.412.1151, %bb.ag ], [ %.sroa.412.1151, %bb.ac ], [ %i.dl, %.loopexit279 ], [ %.sroa.412.1151, %bb.ae ], [ %.sroa.412.1151, %bb.af ] ; 4 uses
  %.sroa.010.1 = phi i64 [ 0, %bb.ag ], [ 1, %bb.ac ], [ %.sroa.0.2.i227230, %.loopexit279 ], [ 1, %bb.ae ], [ 1, %bb.af ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke void @_RINvMs7_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket6BucketTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1R_6string6StringENtNtCsbvkFyIu7lgC_4core3any6TypeIdEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock6rwlock6RwLockINtNtNtB16_6future17value_initializer11WaiterValueNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEE21compare_exchange_weakINtB6_6SharedBX_EEB5z_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, ptr noundef nonnull align 8 %.sroa.02.0157, i64 noundef %i.bo, i64 noundef 1, i8 noundef 3, i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1)
          to label %bb.aw unwind label %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ag:                                            ; preds = %bb.y
  %.not = icmp eq ptr %i.bt, null
  br i1 %.not, label %.loopexit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ce = invoke noundef i64 @_RINvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateNtNtCsbvkFyIu7lgC_4core4hash11BuildHasher8hash_oneRTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1L_6string6StringENtNtBU_3any6TypeIdEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bt)
          to label %bb.ai unwind label %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %i.bq, ptr %i.c, align 8, !noalias !312
  %i.cf = icmp ult i64 %i.bo, 8
  br i1 %i.cf, label %bb.aj, label %bb.ak, !prof !9

bb.aj:                                            ; preds = %bb.ai
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 39, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #27
          to label %.noexc58 unwind label %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc58:                                         ; preds = %bb.aj
  unreachable

bb.ak:                                            ; preds = %bb.ai
  %i.cg = invoke noundef nonnull align 8 ptr @_RNvMsz_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB5_6SharedINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket6BucketTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1Q_6string6StringENtNtCsbvkFyIu7lgC_4core3any6TypeIdEINtNtNtNtB15_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock6rwlock6RwLockINtNtNtB15_6future17value_initializer11WaiterValueNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEE5derefB5y_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c)
          to label %.noexc59 unwind label %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc59:                                         ; preds = %bb.ak
  %i.ch = load i64, ptr %i.bj, align 8, !noalias !312, !noundef !4 ; 2 uses
  %i.ci = add i64 %i.ch, -1                       ; 3 uses
  %i.cj = and i64 %i.ci, %i.ce                    ; 4 uses
  %.not.i57 = icmp eq i64 %i.ch, 0
  br i1 %.not.i57, label %bb.am, label %bb.al

bb.al:                                            ; preds = %.noexc59
  %i.ck = load ptr, ptr %.sroa.0.0.i, align 8, !noalias !312, !nonnull !4, !noundef !4 ; 2 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.cj
  %i.cm = getelementptr i8, ptr %i.cg, i64 8
  %i.cn = icmp eq i64 %4, 0                       ; 2 uses
  br label %.backedge.i

bb.am:                                            ; preds = %.noexc59
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.cj, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #27
          to label %.noexc60 unwind label %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc60:                                         ; preds = %bb.am
  unreachable

.backedge.i:                                      ; preds = %.backedge.i.backedge, %bb.al
  %.sroa.20.0.i = phi i1 [ true, %bb.al ], [ %.sroa.20.0.i.be, %.backedge.i.backedge ]
  %.sroa.17.0.i = phi i64 [ 0, %bb.al ], [ %.sroa.17.1.i, %.backedge.i.backedge ] ; 3 uses
  %.sroa.11.0.i = phi ptr [ %i.cl, %bb.al ], [ %.sroa.11.1.i, %.backedge.i.backedge ]
  %.sroa.8.0.i = phi i64 [ %i.cj, %bb.al ], [ %.sroa.8.1.i, %.backedge.i.backedge ]
  br i1 %.sroa.20.0.i, label %._crit_edge.i.i, label %bb.an

bb.an:                                            ; preds = %.backedge.i
  %.not.i.i = icmp ult i64 %.sroa.17.0.i, %i.ci
  br i1 %.not.i.i, label %bb.ao, label %.loopexit279

._crit_edge.i.i:                                  ; preds = %bb.ao, %.backedge.i
  %.sroa.17.1.i = phi i64 [ %i.cr, %bb.ao ], [ %.sroa.17.0.i, %.backedge.i ]
  %.sroa.11.1.i = phi ptr [ %i.cu, %bb.ao ], [ %.sroa.11.0.i, %.backedge.i ] ; 3 uses
  %.sroa.8.1.i = phi i64 [ %i.ct, %bb.ao ], [ %.sroa.8.0.i, %.backedge.i ] ; 2 uses
  %i.co = load atomic i64, ptr %.sroa.11.1.i acquire, align 8, !noalias !313 ; 7 uses
  %i.cp = and i64 %i.co, 1
  %i.cq = icmp eq i64 %i.cp, 0
  br i1 %i.cq, label %bb.ap, label %.loopexit279

bb.ao:                                            ; preds = %bb.an
  %i.cr = add nuw i64 %.sroa.17.0.i, 1            ; 2 uses
  %i.cs = add i64 %i.cr, %i.cj
  %i.ct = and i64 %i.cs, %i.ci                    ; 2 uses
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.ct
  br label %._crit_edge.i.i

bb.ap:                                            ; preds = %._crit_edge.i.i
  store i64 %i.co, ptr %i.b, align 8, !noalias !312
  %i.cv = invoke noundef align 8 ptr @_RNvMsz_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB5_6SharedINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket6BucketTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1Q_6string6StringENtNtCsbvkFyIu7lgC_4core3any6TypeIdEINtNtNtNtB15_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock6rwlock6RwLockINtNtNtB15_6future17value_initializer11WaiterValueNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEE6as_refB5y_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
          to label %.noexc61 unwind label %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc61:                                         ; preds = %bb.ap
  %.not20.i = icmp eq ptr %i.cv, null
  br i1 %.not20.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %.noexc61
  %i.cw = icmp eq i64 %i.co, %i.bq
  br i1 %i.cw, label %.loopexit279, label %bb.as

bb.ar:                                            ; preds = %.noexc61
  %.old.i = icmp ugt i64 %i.co, 7
  %or.cond.old.i = or i1 %i.cn, %.old.i
  br i1 %or.cond.old.i, label %bb.av, label %.loopexit279

bb.as:                                            ; preds = %bb.aq
  %.val.i = load ptr, ptr %i.cv, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.cx = getelementptr i8, ptr %i.cv, i64 8
  %.val22.i = load i128, ptr %i.cx, align 8       ; 2 uses
  %.val23.i = load ptr, ptr %i.cg, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %.val24.i = load i128, ptr %i.cm, align 8       ; 2 uses
  %i.cy = icmp eq ptr %.val.i, %.val23.i
  br i1 %i.cy, label %_RNvXs8_NtCsbvkFyIu7lgC_4core5tupleTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBC_6string6StringENtNtB7_3any6TypeIdENtNtB7_3cmp9PartialEq2neCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.cz = getelementptr i8, ptr %.val.i, i64 32
  %.val2.i.i.i.i = load i64, ptr %i.cz, align 8, !noundef !4 ; 2 uses
  %i.da = getelementptr i8, ptr %.val23.i, i64 32
  %.val4.i.i.i.i = load i64, ptr %i.da, align 8, !noundef !4
  %i.db = icmp eq i64 %.val2.i.i.i.i, %.val4.i.i.i.i
  br i1 %i.db, label %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtB7_6string6StringENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i, label %.backedge.i.backedge

_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtB7_6string6StringENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i: ; preds = %bb.at
  %i.dc = getelementptr i8, ptr %.val23.i, i64 24
  %.val3.i.i.i.i = load ptr, ptr %i.dc, align 8, !nonnull !4, !noundef !4
  %i.dd = getelementptr i8, ptr %.val.i, i64 24
  %.val.i.i.i.i = load ptr, ptr %i.dd, align 8, !nonnull !4, !noundef !4
  %bcmp.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.val.i.i.i.i, ptr nonnull readonly %.val3.i.i.i.i, i64 %.val2.i.i.i.i)
  %.not.i25.i = icmp ne i32 %bcmp.i.i.i.i.i.i.i.i, 0
  %i.de = icmp ne i128 %.val22.i, %.val24.i
  %or.cond47.i = select i1 %.not.i25.i, i1 true, i1 %i.de
  br i1 %or.cond47.i, label %.backedge.i.backedge, label %bb.au

_RNvXs8_NtCsbvkFyIu7lgC_4core5tupleTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBC_6string6StringENtNtB7_3any6TypeIdENtNtB7_3cmp9PartialEq2neCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %bb.as
  %.old.not.i = icmp eq i128 %.val22.i, %.val24.i
  br i1 %.old.not.i, label %bb.au, label %.backedge.i.backedge

.backedge.i.backedge:                             ; preds = %_RNvXs8_NtCsbvkFyIu7lgC_4core5tupleTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBC_6string6StringENtNtB7_3any6TypeIdENtNtB7_3cmp9PartialEq2neCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtB7_6string6StringENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i, %bb.at, %.noexc62
  %.sroa.20.0.i.be = phi i1 [ false, %_RNvXs8_NtCsbvkFyIu7lgC_4core5tupleTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBC_6string6StringENtNtB7_3any6TypeIdENtNtB7_3cmp9PartialEq2neCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i ], [ false, %bb.at ], [ false, %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtB7_6string6StringENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i ], [ true, %.noexc62 ]
  br label %.backedge.i

bb.au:                                            ; preds = %_RNvXs8_NtCsbvkFyIu7lgC_4core5tupleTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBC_6string6StringENtNtB7_3any6TypeIdENtNtB7_3cmp9PartialEq2neCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtB7_6string6StringENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i
  %i.df = and i64 %i.co, 4
  %i.dg = icmp ne i64 %i.df, 0
  %i.dh = icmp ugt i64 %i.co, 7
  %or.cond.i = or i1 %i.cn, %i.dh
  %or.cond48.i = and i1 %i.dg, %or.cond.i
  br i1 %or.cond48.i, label %bb.av, label %.loopexit279

bb.av:                                            ; preds = %bb.au, %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !312
  invoke void @_RINvMs7_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket6BucketTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1R_6string6StringENtNtCsbvkFyIu7lgC_4core3any6TypeIdEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock6rwlock6RwLockINtNtNtB16_6future17value_initializer11WaiterValueNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEE21compare_exchange_weakINtB6_6SharedBX_EEB5z_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %.sroa.11.1.i, i64 noundef %i.co, i64 noundef range(i64 4, 0) %i.bq, i8 noundef 3, i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1)
          to label %.noexc62 unwind label %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc62:                                         ; preds = %bb.av
  %i.di = load i64, ptr %i.a, align 8, !range !10, !noalias !312, !noundef !4
  %i.dj = icmp eq i64 %i.di, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !312
  br i1 %i.dj, label %.loopexit279, label %.backedge.i.backedge

.loopexit279:                                     ; preds = %bb.au, %bb.ar, %bb.aq, %._crit_edge.i.i, %bb.an, %.noexc62
  %i.dk = phi i64 [ %i.bq, %.noexc62 ], [ %.sroa.6.1150, %bb.an ], [ %.sroa.6.1150, %._crit_edge.i.i ], [ %.sroa.6.1150, %bb.aq ], [ %.sroa.6.1150, %bb.ar ], [ %.sroa.6.1150, %bb.au ]
  %.sroa.0.2.i227230 = phi i64 [ 1, %.noexc62 ], [ 0, %bb.an ], [ 0, %._crit_edge.i.i ], [ 0, %bb.aq ], [ 0, %bb.ar ], [ 0, %bb.au ]
  %i.dl = phi i64 [ %.sroa.8.1.i, %.noexc62 ], [ %.sroa.412.1151, %bb.an ], [ %.sroa.412.1151, %._crit_edge.i.i ], [ %.sroa.412.1151, %bb.aq ], [ %.sroa.412.1151, %bb.ar ], [ %.sroa.412.1151, %bb.au ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.loopexit

bb.aw:                                            ; preds = %.loopexit
  %i.dm = load i64, ptr %i.i, align 8, !range !10, !noundef !4
  %i.dn = icmp eq i64 %i.dm, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br i1 %i.dn, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.do = icmp eq i64 %5, 0
  %i.dp = icmp eq i64 %4, 0
  %or.cond41 = or i1 %i.do, %i.dp
  %.not37 = icmp ne i64 %.sroa.010.1, 0
  %or.cond42 = or i1 %or.cond41, %.not37
  br i1 %or.cond42, label %_RINvNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket20defer_destroy_bucketTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB18_6string6StringENtNtCsbvkFyIu7lgC_4core3any6TypeIdEINtNtNtNtB8_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock6rwlock6RwLockINtNtNtB8_6future17value_initializer11WaiterValueNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEB4O_.exit, label %bb.az

bb.ay:                                            ; preds = %bb.aw
  %i.dq = load atomic i64, ptr %.sroa.02.0157 acquire, align 8 ; 3 uses
  store i64 %i.dq, ptr %i.k, align 8
  %i.dr = and i64 %i.dq, 1
  %i.ds = icmp eq i64 %i.dr, 0
  br i1 %i.ds, label %.lr.ph153, label %_RINvNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket20defer_destroy_bucketTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB18_6string6StringENtNtCsbvkFyIu7lgC_4core3any6TypeIdEINtNtNtNtB8_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock6rwlock6RwLockINtNtNtB8_6future17value_initializer11WaiterValueNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEB4O_.exit

bb.az:                                            ; preds = %bb.ax
  invoke void @_RINvMNtCsee2lL6QbnsJ_15crossbeam_epoch5guardNtB3_5Guard15defer_uncheckedNCINvNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket20defer_destroy_bucketTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB2j_6string6StringENtNtCsbvkFyIu7lgC_4core3any6TypeIdEINtNtNtNtB1j_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock6rwlock6RwLockINtNtNtB1j_6future17value_initializer11WaiterValueNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEE0uEB61_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, i64 noundef %i.bo)
          to label %_RINvNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket20defer_destroy_bucketTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB18_6string6StringENtNtCsbvkFyIu7lgC_4core3any6TypeIdEINtNtNtNtB8_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock6rwlock6RwLockINtNtNtB8_6future17value_initializer11WaiterValueNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEB4O_.exit unwind label %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket20defer_destroy_bucketTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB18_6string6StringENtNtCsbvkFyIu7lgC_4core3any6TypeIdEINtNtNtNtB8_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock6rwlock6RwLockINtNtNtB8_6future17value_initializer11WaiterValueNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEB4O_.exit: ; preds = %bb.ay, %bb.w, %bb.az, %bb.ax
  %.sroa.6.5 = phi i64 [ %.sroa.6.2, %bb.ax ], [ %.sroa.6.2, %bb.az ], [ %.sroa.6.0155, %bb.w ], [ %.sroa.6.2, %bb.ay ]
  %.sroa.412.5 = phi i64 [ %.sroa.412.2, %bb.ax ], [ %.sroa.412.2, %bb.az ], [ %.sroa.412.0156, %bb.w ], [ %.sroa.412.2, %bb.ay ]
  %i.dt = icmp eq ptr %i.bk, %i.bh
  br i1 %i.dt, label %._crit_edge, label %bb.w

bb.ba:                                            ; preds = %._crit_edge
  %i.du = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.dv = trunc nuw i8 %i.aa to i1
  br i1 %i.dv, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.dw = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.dx = and i64 %i.dw, 9223372036854775807
  %i.dy = icmp eq i64 %i.dx, 0
  br i1 %i.dy, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %.noexc65, !prof !12

.noexc65:                                         ; preds = %bb.bb
  %i.dz = call noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #26
  br i1 %i.dz, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.bc

bb.bc:                                            ; preds = %.noexc65
  store atomic i8 1, ptr %i.du monotonic, align 4
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.bc, %.noexc65, %bb.bb, %bb.ba
  %i.ea = atomicrmw xchg ptr %i.y, i32 0 release, align 4
  %i.eb = icmp eq i32 %i.ea, 2
  br i1 %i.eb, label %bb.bd, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, !prof !9

bb.bd:                                            ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  call void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.y)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.bd, %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison12TryLockErrorINtNtBJ_5mutex10MutexGuarduEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  %.sroa.0.0 = phi ptr [ null, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison12TryLockErrorINtNtBJ_5mutex10MutexGuarduEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit ], [ %.sroa.0.0.i, %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i ], [ %.sroa.0.0.i, %bb.bd ]
  ret ptr %.sroa.0.0

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit70: ; preds = %bb.bl, %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i67, %bb.bh, %bb.bv
  %.pn.pn = phi { ptr, i32 } [ %i.fi, %bb.bv ], [ %eh.lpad-body82, %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i67 ], [ %i.ep, %bb.bl ], [ %eh.lpad-body82, %bb.bh ]
  resume { ptr, i32 } %.pn.pn

.body.thread:                                     ; preds = %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.m, %bb.s, %bb.t
  %eh.lpad-body82 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i, %bb.s ], [ %lpad.thr_comm.split-lp.i, %bb.t ], [ %i.at, %bb.m ], [ %lpad.loopexit.split-lp386, %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.ed = trunc nuw i8 %i.aa to i1
  br i1 %i.ed, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i67, label %bb.be

bb.be:                                            ; preds = %.body.thread
  %i.ee = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.ef = and i64 %i.ee, 9223372036854775807
  %i.eg = icmp eq i64 %i.ef, 0
  br i1 %i.eg, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i67, label %bb.bf, !prof !12

bb.bf:                                            ; preds = %bb.be
  %i.eh = invoke noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #26
          to label %.noexc68 unwind label %bb.bi

.noexc68:                                         ; preds = %bb.bf
  br i1 %i.eh, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i67, label %bb.bg

bb.bg:                                            ; preds = %.noexc68
  store atomic i8 1, ptr %i.ec monotonic, align 4
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i67

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i67: ; preds = %bb.bg, %.noexc68, %bb.be, %.body.thread
  %i.ei = atomicrmw xchg ptr %i.y, i32 0 release, align 4
  %i.ej = icmp eq i32 %i.ei, 2
  br i1 %i.ej, label %bb.bh, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit70, !prof !9

bb.bh:                                            ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i67
  invoke void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.y)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit70 unwind label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bf, %bb.bl, %bb.bv
  %i.ek = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.bj:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.el = load ptr, ptr %i.p, align 8, !nonnull !4, !noundef !4
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  invoke void @_RNvMs5_NtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutexINtB5_5MutexuE4lockCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.n, ptr noundef nonnull align 4 %i.em)
          to label %bb.bm unwind label %bb.bv

bb.bk:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.en = load ptr, ptr %i.u, align 8
  store ptr %i.en, ptr %i.m, align 8
  %i.eo = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  store i8 %i.w, ptr %i.eo, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr %i.m, ptr %i.l, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr @_RNvXs4_NtNtCs2pqxYH9ZEk8_3std4sync6poisonINtB5_12TryLockErrorINtNtB5_5mutex10MutexGuarduEENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmtCsgO8S5jLFugx_23deltalake_catalog_unity, ptr %.sroa.418.0..sroa_idx, align 8
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @5, ptr noundef nonnull %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #22
          to label %bb.ab unwind label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ep = landingpad { ptr, i32 }
          cleanup
  %.val50 = load ptr, ptr %i.m, align 8
  %.val51 = load i8, ptr %i.eo, align 8, !range !11, !noundef !4
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison12TryLockErrorINtNtBJ_5mutex10MutexGuarduEEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr %.val50, i8 %.val51) #24
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit70 unwind label %bb.bi

bb.bm:                                            ; preds = %bb.bj
  call void @llvm.experimental.noalias.scope.decl(metadata !314)
  %i.eq = load i64, ptr %i.n, align 8, !range !10, !alias.scope !314, !noundef !4
  %i.er = icmp eq i64 %i.eq, 0
  %i.es = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.val.i71 = load ptr, ptr %i.es, align 8, !alias.scope !314, !nonnull !4, !align !6, !noundef !4 ; 4 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.val1.i = load i8, ptr %i.et, align 8, !range !13, !alias.scope !314, !noundef !4
  %i.eu = getelementptr inbounds nuw i8, ptr %.val.i71, i64 4 ; 2 uses
  %i.ev = trunc nuw i8 %.val1.i to i1             ; 2 uses
  br i1 %i.er, label %bb.bn, label %bb.br

bb.bn:                                            ; preds = %bb.bm
  br i1 %i.ev, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ew = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !314
  %i.ex = and i64 %i.ew, 9223372036854775807
  %i.ey = icmp eq i64 %i.ex, 0
  br i1 %i.ey, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.bp, !prof !12

bb.bp:                                            ; preds = %bb.bo
  %i.ez = invoke noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #26
          to label %.noexc72 unwind label %bb.bv

.noexc72:                                         ; preds = %bb.bp
  br i1 %i.ez, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.bq

bb.bq:                                            ; preds = %.noexc72
  store atomic i8 1, ptr %i.eu monotonic, align 4, !noalias !314
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i: ; preds = %bb.bq, %.noexc72, %bb.bo, %bb.bn
  %i.fa = atomicrmw xchg ptr %.val.i71, i32 0 release, align 4, !noalias !314
  %i.fb = icmp eq i32 %i.fa, 2
  br i1 %i.fb, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.sink.split.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison12TryLockErrorINtNtBJ_5mutex10MutexGuarduEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, !prof !9

bb.br:                                            ; preds = %bb.bm
  br i1 %i.ev, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.fc = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !314
  %i.fd = and i64 %i.fc, 9223372036854775807
  %i.fe = icmp eq i64 %i.fd, 0
  br i1 %i.fe, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.bt, !prof !12

bb.bt:                                            ; preds = %bb.bs
  %i.ff = invoke noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #26
          to label %.noexc73 unwind label %bb.bv

.noexc73:                                         ; preds = %bb.bt
  br i1 %i.ff, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.bu

bb.bu:                                            ; preds = %.noexc73
  store atomic i8 1, ptr %i.eu monotonic, align 4, !noalias !314
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i: ; preds = %bb.bu, %.noexc73, %bb.bs, %bb.br
  %i.fg = atomicrmw xchg ptr %.val.i71, i32 0 release, align 4, !noalias !314
  %i.fh = icmp eq i32 %i.fg, 2
  br i1 %i.fh, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.sink.split.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison12TryLockErrorINtNtBJ_5mutex10MutexGuarduEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, !prof !9

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.sink.split.i: ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i
  invoke void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.val.i71)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison12TryLockErrorINtNtBJ_5mutex10MutexGuarduEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.bv

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison12TryLockErrorINtNtBJ_5mutex10MutexGuarduEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.sink.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.bv:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.sink.split.i, %bb.bt, %bb.bp, %bb.bj
  %i.fi = landingpad { ptr, i32 }
          cleanup
  %.val46 = load ptr, ptr %i.u, align 8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison12TryLockErrorINtNtBJ_5mutex10MutexGuarduEEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr %.val46, i8 2) #24
end_hunk_3
