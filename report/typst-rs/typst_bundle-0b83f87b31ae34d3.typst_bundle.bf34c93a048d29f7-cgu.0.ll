Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_bundle-0b83f87b31ae34d3.typst_bundle.bf34c93a048d29f7-cgu.0?download=true
inline.NumInlined: 6006
inline.NumDeleted: 2956
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_RNSNvYNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtBd_4Once15call_once_forceNCNvMNtBf_9lazy_lockINtB1f_8LazyLockINtNtCsbQmEUdn7Qi6_8lock_api6rwlock6RwLockNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtCsloFShupyl5J_6comemo7memoize9CacheDataINtNvNtB3m_5inputs6_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB4A_13introspection12introspector1__12___ComemoCallNtNvNtB4A_6engine1__12___ComemoCallNtNvB6n_s_1__12___ComemoCallNtNvB6n_s0_1__12___ComemoCalluuEINtNtCs3oUPovFnLWP_4core6result6ResultNtCsgpMJJHpo27b_12typst_bundle6BundleINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB4A_4diag16SourceDiagnosticEEEEE5force0E0INtNtNtB7V_3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableB8u_:bb.a
}

; Function Attrs: nonlazybind uwtable
define void @_RNvCsgpMJJHpo27b_12typst_bundle6bundle(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(200) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %3) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 4 uses
  %i.b = alloca [72 x i8], align 8                ; 9 uses
  %i.c = alloca [112 x i8], align 16              ; 8 uses
  %i.d = alloca [72 x i8], align 8                ; 10 uses
  %i.e = alloca [128 x i8], align 16              ; 12 uses
  %i.f = alloca [56 x i8], align 8                ; 8 uses
  %i.g = alloca [88 x i8], align 8                ; 5 uses
  %i.h = alloca [64 x i8], align 8                ; 11 uses
  %i.i = alloca [32 x i8], align 8                ; 5 uses
  %i.j = alloca [72 x i8], align 8                ; 4 uses
  %i.k = alloca [72 x i8], align 8                ; 4 uses
  %i.l = alloca [80 x i8], align 8                ; 4 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = alloca [72 x i8], align 8                ; 11 uses
  %i.p = alloca [72 x i8], align 8                ; 11 uses
  %i.q = alloca [72 x i8], align 8                ; 9 uses
  %i.r = alloca [72 x i8], align 8                ; 11 uses
  %i.s = alloca [72 x i8], align 8                ; 11 uses
  %i.t = alloca [16 x i8], align 8                ; 6 uses
  %i.u = alloca [80 x i8], align 8                ; 4 uses
  %i.v = alloca [72 x i8], align 8                ; 10 uses
  %i.w = alloca [2 x i8], align 2                 ; 4 uses
  %i.x = alloca [72 x i8], align 8                ; 9 uses
  %i.y = alloca [72 x i8], align 8                ; 10 uses
  %i.z = alloca [72 x i8], align 8                ; 9 uses
  %i.aa = alloca [80 x i8], align 16              ; 4 uses
  %i.ab = alloca [72 x i8], align 8               ; 9 uses
  %i.ac = alloca [16 x i8], align 8               ; 6 uses
  %i.ad = alloca [8 x i8], align 8                ; 4 uses
  %i.ae = alloca [8 x i8], align 8                ; 4 uses
  %i.af = alloca [16 x i8], align 16              ; 12 uses
  %i.ag = alloca [24 x i8], align 8               ; 9 uses
  %i.ah = alloca [24 x i8], align 8               ; 8 uses
  %i.ai = alloca [72 x i8], align 8               ; 18 uses
  %i.aj = alloca [216 x i8], align 8              ; 27 uses
  %i.ak = alloca [208 x i8], align 8              ; 34 uses
  %i.al = alloca [40 x i8], align 8               ; 2 uses
  %i.am = alloca [32 x i8], align 8               ; 4 uses
  %i.an = alloca [40 x i8], align 8               ; 4 uses
  %i.ao = alloca [32 x i8], align 8               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  %i.ap = load atomic i8, ptr @_RNvCsiNFdexS2GJ6_12typst_timing7ENABLED monotonic, align 1
  %.not = icmp eq i8 %i.ap, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %i.ao, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @_RNvMCsiNFdexS2GJ6_12typst_timingNtB2_11TimingScope8new_impl(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.ao, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @91, i64 noundef 6, i64 noundef 0)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.an, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ar = load ptr, ptr %i.aq, align 8, !nonnull !19, !align !63, !noundef !19
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.al, ptr noundef nonnull align 8 dereferenceable(40) %i.as, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.am, ptr noundef nonnull align 8 dereferenceable(32) %i.at, i64 32, i1 false)
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.av = load <2 x ptr>, ptr %i.au, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !noundef !19 ; 2 uses
  %.not4 = icmp eq ptr %i.az, null
  br i1 %.not4, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.bb = load i16, ptr %i.ba, align 8, !noundef !19
  %.not5 = icmp eq i16 %i.bb, 0
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.bd = load i64, ptr %i.bc, align 8
  %i.be = icmp eq i64 %i.bd, 0
  %or.cond = select i1 %.not5, i1 %i.be, i1 false
  br i1 %or.cond, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.bf = atomicrmw add ptr @_RNvNtCsloFShupyl5J_6comemo10accelerate2ID, i64 1 seq_cst, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 152
  %.sroa.59.0.copyload = load ptr, ptr %.sroa.59.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 160
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.612.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 168
  %.sroa.612.0.copyload = load i64, ptr %.sroa.612.0..sroa_idx, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.612.0 = phi i64 [ %i.bf, %bb.f ], [ %.sroa.612.0.copyload, %bb.g ]
  %.sroa.6.0 = phi i64 [ undef, %bb.f ], [ %.sroa.6.0.copyload, %bb.g ]
  %.sroa.59.0 = phi ptr [ null, %bb.f ], [ %.sroa.59.0.copyload, %bb.g ]
  %.sroa.07.0 = phi ptr [ %i.ay, %bb.f ], [ %i.az, %bb.g ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11564)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !11565
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ak, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.an, i64 40, i1 false), !noalias !11566
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 40 ; 2 uses
  store ptr %i.ar, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !11565
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 48 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..sroa_idx.i, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.al, i64 40, i1 false), !noalias !11567
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 88 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx.i, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.am, i64 32, i1 false), !noalias !11568
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 120 ; 2 uses
  %.sroa.4.0..sroa.7.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 128 ; 4 uses
  store <2 x ptr> %i.av, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !11569
  %.sroa.5.0..sroa.7.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 136 ; 4 uses
  store ptr %i.ax, ptr %.sroa.5.0..sroa.7.0..sroa_idx.i.sroa_idx, align 8, !noalias !11569
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 144 ; 2 uses
  store ptr %.sroa.07.0, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !11570
  %.sroa.59.0..sroa.8.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 152 ; 4 uses
  store ptr %.sroa.59.0, ptr %.sroa.59.0..sroa.8.0..sroa_idx.i.sroa_idx, align 8, !noalias !11570
  %.sroa.6.0..sroa.8.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 160 ; 3 uses
  store i64 %.sroa.6.0, ptr %.sroa.6.0..sroa.8.0..sroa_idx.i.sroa_idx, align 8, !noalias !11570
  %.sroa.612.0..sroa.8.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 168 ; 2 uses
  store i64 %.sroa.612.0, ptr %.sroa.612.0..sroa.8.0..sroa_idx.i.sroa_idx, align 8, !noalias !11570
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 176
  store ptr %2, ptr %.sroa.9.0..sroa_idx.i, align 8, !noalias !11565
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 184 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %3, i64 24, i1 false), !noalias !11571
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !11565
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aj, i64 120 ; 10 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bg, i8 0, i64 16, i1 false), !alias.scope !11572, !noalias !11565
  %.sroa.513.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 184 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.513.0..sroa_idx.i.i, i8 0, i64 16, i1 false), !alias.scope !11572, !noalias !11565
  store ptr null, ptr %i.aj, align 8, !alias.scope !11572, !noalias !11565
  %.sroa.57.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 24 ; 3 uses
  store ptr null, ptr %.sroa.57.0..sroa_idx.i.i, align 8, !alias.scope !11572, !noalias !11565
  %.sroa.79.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 48 ; 3 uses
  store ptr null, ptr %.sroa.79.0..sroa_idx.i.i, align 8, !alias.scope !11572, !noalias !11565
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 72 ; 3 uses
  store ptr null, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !alias.scope !11572, !noalias !11565
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 96 ; 3 uses
  store ptr null, ptr %.sroa.11.0..sroa_idx.i.i, align 8, !alias.scope !11572, !noalias !11565
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 136 ; 2 uses
  store ptr inttoptr (i64 16 to ptr), ptr %.sroa.2.0..sroa_idx.i.i, align 8, !alias.scope !11572, !noalias !11565
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 144 ; 2 uses
  store i64 0, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !alias.scope !11572, !noalias !11565
  %.sroa.412.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 152 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.412.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(32) @15, i64 32, i1 false), !noalias !11565
  %.sroa.614.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 200 ; 2 uses
  store ptr inttoptr (i64 16 to ptr), ptr %.sroa.614.0..sroa_idx.i.i, align 8, !alias.scope !11572, !noalias !11565
  %.sroa.715.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 208 ; 2 uses
  store i64 0, ptr %.sroa.715.0..sroa_idx.i.i, align 8, !alias.scope !11572, !noalias !11565
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11573)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11574)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11575)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !11576
  store i64 8317987319222330741, ptr %i.ai, align 8, !noalias !11576
  %.sroa.3.0..sroa_idx.i4.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 6 uses
  store i64 7816392313619706465, ptr %.sroa.3.0..sroa_idx.i4.i, align 8, !noalias !11576
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 6 uses
  store i64 7237128888997146499, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !11576
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 24 ; 6 uses
  store i64 8387220255154660723, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !11576
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %.sroa.12.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 48 ; 3 uses
  %.sroa.14.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 56 ; 4 uses
  %.sroa.15.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 64 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11577)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.0..sroa_idx.i.i, i8 0, i64 40, i1 false), !noalias !11576
  invoke fastcc void @_RINvXs3_NtNtCs3oUPovFnLWP_4core4hash5implsRINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtCsdaEETE4DqmE_13typst_library7LibraryENtB8_4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.4.0..sroa_idx.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.ai) #50
          to label %.noexc.i unwind label %.loopexit.split-lp.i, !noalias !11578

.noexc.i:                                         ; preds = %bb.h
  invoke fastcc void @_RINvXs4_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB6_10RawContentNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.ai)
          to label %.noexc5.i unwind label %.loopexit.split-lp.i, !noalias !11578

.noexc5.i:                                        ; preds = %.noexc.i
  call void @llvm.experimental.noalias.scope.decl(metadata !11579)
  call void @llvm.experimental.noalias.scope.decl(metadata !11580)
  %.pre.i.i.i.i.i = load i64, ptr %.sroa.12.0..sroa_idx.i.i, align 8, !alias.scope !11581, !noalias !11582
  %.pre5.i.i.i.i.i = load i64, ptr %.sroa.15.0..sroa_idx.i.i, align 8, !alias.scope !11581, !noalias !11582 ; 2 uses
  %.pre6.i.i.i.i.i = load i64, ptr %.sroa.14.0..sroa_idx.i.i, align 8, !alias.scope !11581, !noalias !11582
  %.promoted.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !11583, !noalias !11584
  %.promoted26.i.i.i.i = load i64, ptr %i.ai, align 8, !alias.scope !11583, !noalias !11584
  %.promoted35.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !11583, !noalias !11584
  %.promoted44.i.i.i.i = load i64, ptr %.sroa.3.0..sroa_idx.i4.i, align 8, !alias.scope !11583, !noalias !11584
  br label %tailrecurse.i.i.i.i.i

tailrecurse.i.i.i.i.i:                            ; preds = %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i, %.noexc5.i
  %.promoted754.i.i.i.i = phi i64 [ %.pre5.i.i.i.i.i, %.noexc5.i ], [ %.promoted755.i.i.i.i, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i ]
  %.promoted1649.i.i.i.i = phi i64 [ %.promoted44.i.i.i.i, %.noexc5.i ], [ %.promoted1650.i.i.i.i, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i ] ; 2 uses
  %.promoted1540.i.i.i.i = phi i64 [ %.promoted35.i.i.i.i, %.noexc5.i ], [ %.promoted1541.i.i.i.i, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i ] ; 4 uses
  %.promoted1031.i.i.i.i = phi i64 [ %.promoted26.i.i.i.i, %.noexc5.i ], [ %.promoted1032.i.i.i.i, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i ] ; 2 uses
  %.promoted922.i.i.i.i = phi i64 [ %.promoted.i.i.i.i, %.noexc5.i ], [ %.promoted923.i.i.i.i, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i ] ; 2 uses
  %i.bh = phi i64 [ %.pre5.i.i.i.i.i, %.noexc5.i ], [ %i.kf, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i ] ; 5 uses
  %i.bi = phi i64 [ %.pre6.i.i.i.i.i, %.noexc5.i ], [ %i.kg, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i ]
  %i.bj = phi i64 [ %.pre.i.i.i.i.i, %.noexc5.i ], [ %i.jg, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i ]
  %.tr.i.i.i.i.i = phi ptr [ %.sroa.10.0..sroa_idx.i, %.noexc5.i ], [ %i.jd, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i ] ; 3 uses
  %i.bk = load ptr, ptr %.tr.i.i.i.i.i, align 8, !noalias !11585, !nonnull !19, !align !63, !noundef !19 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.tr.i.i.i.i.i, i64 8
  %i.bm = load i64, ptr %i.bl, align 8, !noalias !11585, !noundef !19 ; 4 uses
  %i.bn = add i64 %i.bj, 8                        ; 2 uses
  %i.bo = shl i64 %i.bh, 3                        ; 2 uses
  %i.bp = and i64 %i.bo, 56
  %i.bq = shl i64 %i.bm, %i.bp
  %i.br = or i64 %i.bq, %i.bi                     ; 3 uses
  %i.bs = icmp ugt i64 %i.bh, 8
  br i1 %i.bs, label %bb.j, label %bb.i

bb.i:                                             ; preds = %tailrecurse.i.i.i.i.i
  %i.bt = xor i64 %i.br, %.promoted922.i.i.i.i    ; 3 uses
  %i.bu = add i64 %.promoted1031.i.i.i.i, %.promoted1540.i.i.i.i ; 3 uses
  %i.bv = call noundef i64 @llvm.fshl.i64(i64 %.promoted1540.i.i.i.i, i64 %.promoted1540.i.i.i.i, i64 13)
  %i.bw = xor i64 %i.bu, %i.bv                    ; 3 uses
  %i.bx = call noundef i64 @llvm.fshl.i64(i64 %i.bu, i64 %i.bu, i64 32)
  %i.by = add i64 %i.bt, %.promoted1649.i.i.i.i   ; 2 uses
  %i.bz = call noundef i64 @llvm.fshl.i64(i64 %i.bt, i64 %i.bt, i64 16)
  %i.ca = xor i64 %i.by, %i.bz                    ; 3 uses
  %i.cb = add i64 %i.ca, %i.bx                    ; 2 uses
  %i.cc = call noundef i64 @llvm.fshl.i64(i64 %i.ca, i64 %i.ca, i64 21)
  %i.cd = xor i64 %i.cc, %i.cb                    ; 2 uses
  store i64 %i.cd, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !11586, !noalias !11582
  %i.ce = add i64 %i.by, %i.bw                    ; 3 uses
  %i.cf = call noundef i64 @llvm.fshl.i64(i64 %i.bw, i64 %i.bw, i64 17)
  %i.cg = xor i64 %i.ce, %i.cf                    ; 2 uses
  store i64 %i.cg, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !11586, !noalias !11582
  %i.ch = call noundef i64 @llvm.fshl.i64(i64 %i.ce, i64 %i.ce, i64 32) ; 2 uses
  store i64 %i.ch, ptr %.sroa.3.0..sroa_idx.i4.i, align 8, !alias.scope !11586, !noalias !11582
  %i.ci = xor i64 %i.cb, %i.br                    ; 2 uses
  store i64 %i.ci, ptr %i.ai, align 8, !alias.scope !11581, !noalias !11582
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.bh, 0
  %i.cj = sub nuw nsw i64 64, %i.bo
  %i.ck = lshr i64 %i.bm, %i.cj
  %.sroa.0.0.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i, i64 0, i64 %i.ck
  br label %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher19write_length_prefixCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i

bb.j:                                             ; preds = %tailrecurse.i.i.i.i.i
  %i.cl = add i64 %i.bh, 8                        ; 3 uses
  store i64 %i.cl, ptr %.sroa.15.0..sroa_idx.i.i, align 8, !alias.scope !11581, !noalias !11582
  br label %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher19write_length_prefixCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i

_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher19write_length_prefixCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i: ; preds = %bb.j, %bb.i
  %.promoted757.i.i.i.i = phi i64 [ %.promoted754.i.i.i.i, %bb.i ], [ %i.cl, %bb.j ] ; 2 uses
  %.promoted1652.i.i.i.i = phi i64 [ %i.ch, %bb.i ], [ %.promoted1649.i.i.i.i, %bb.j ] ; 3 uses
  %.promoted1543.i.i.i.i = phi i64 [ %i.cg, %bb.i ], [ %.promoted1540.i.i.i.i, %bb.j ] ; 3 uses
  %.promoted1034.i.i.i.i = phi i64 [ %i.ci, %bb.i ], [ %.promoted1031.i.i.i.i, %bb.j ] ; 3 uses
  %.promoted925.i.i.i.i = phi i64 [ %i.cd, %bb.i ], [ %.promoted922.i.i.i.i, %bb.j ] ; 3 uses
  %i.cm = phi i64 [ %.sroa.0.0.i.i.i.i.i.i.i.i, %bb.i ], [ %i.br, %bb.j ] ; 2 uses
  %i.cn = phi i64 [ %i.bh, %bb.i ], [ %i.cl, %bb.j ]
  %.idx.i.i.i.i.i.i = shl nuw nsw i64 %i.bm, 7
  %i.co = getelementptr inbounds nuw i8, ptr %i.bk, i64 %.idx.i.i.i.i.i.i
  %i.cp = icmp eq i64 %i.bm, 0
  br i1 %i.cp, label %_RINvYINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleENtNtCs3oUPovFnLWP_4core4hash4Hash10hash_sliceNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher19write_length_prefixCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i, %_RNvXsb_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsENtNtCs3oUPovFnLWP_4core4hash6Hasher5writeCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i
  %.promoted1648.i.i.i.i = phi i64 [ %.promoted1645.i.i.i.i, %_RNvXsb_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsENtNtCs3oUPovFnLWP_4core4hash6Hasher5writeCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i ], [ %.promoted1652.i.i.i.i, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher19write_length_prefixCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i ] ; 2 uses
  %.promoted1539.i.i.i.i.a = phi i64 [ %.promoted1536.i.i.i.i, %_RNvXsb_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsENtNtCs3oUPovFnLWP_4core4hash6Hasher5writeCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i ], [ %.promoted1543.i.i.i.i, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher19write_length_prefixCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i ] ; 2 uses
  %.promoted1030.i.i.i.i.a = phi i64 [ %.promoted1027.i.i.i.i, %_RNvXsb_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsENtNtCs3oUPovFnLWP_4core4hash6Hasher5writeCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i ], [ %.promoted1034.i.i.i.i, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher19write_length_prefixCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i ] ; 2 uses
  %.promoted921.i.i.i.i.a = phi i64 [ %.promoted918.i.i.i.i, %_RNvXsb_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsENtNtCs3oUPovFnLWP_4core4hash6Hasher5writeCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i ], [ %.promoted925.i.i.i.i, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher19write_length_prefixCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i ] ; 2 uses
  %i.cq = phi i64 [ %i.iu, %_RNvXsb_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsENtNtCs3oUPovFnLWP_4core4hash6Hasher5writeCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i ], [ %.promoted1652.i.i.i.i, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher19write_length_prefixCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i ] ; 3 uses
  %i.cr = phi i64 [ %i.iv, %_RNvXsb_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsENtNtCs3oUPovFnLWP_4core4hash6Hasher5writeCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i ], [ %.promoted1543.i.i.i.i, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher19write_length_prefixCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i ] ; 5 uses
  %.lcssa211.i.i.i.i.a = phi i64 [ %.lcssa212.i.i.i.i, %_RNvXsb_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsENtNtCs3oUPovFnLWP_4core4hash6Hasher5writeCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i ], [ %.promoted1034.i.i.i.i, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher19write_length_prefixCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i ] ; 3 uses
  %i.cs = phi i64 [ %i.iw, %_RNvXsb_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsENtNtCs3oUPovFnLWP_4core4hash6Hasher5writeCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i ], [ %.promoted925.i.i.i.i, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher19write_length_prefixCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i ] ; 3 uses
  %i.ct = phi i64 [ %i.ix, %_RNvXsb_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsENtNtCs3oUPovFnLWP_4core4hash6Hasher5writeCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i ], [ %i.cm, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher19write_length_prefixCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i ]
  %i.cu = phi i64 [ %storemerge.i.i.i.i.i, %_RNvXsb_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsENtNtCs3oUPovFnLWP_4core4hash6Hasher5writeCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i ], [ %.promoted757.i.i.i.i, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher19write_length_prefixCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i ] ; 4 uses
  %i.cv = phi i64 [ %4, %_RNvXsb_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsENtNtCs3oUPovFnLWP_4core4hash6Hasher5writeCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i ], [ %i.bn, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher19write_length_prefixCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i ]
  %.sroa.0.03.i.i.i.i.i.i = phi ptr [ %i.cw, %_RNvXsb_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsENtNtCs3oUPovFnLWP_4core4hash6Hasher5writeCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i ], [ %i.bk, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher19write_length_prefixCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i ] ; 4 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i.i.i.i.i, i64 128 ; 2 uses
  %i.cx = load atomic ptr, ptr @_RNvNvNtNtNtCsiL9kQKV5x1F_15portable_atomic3imp9atomic1286x86_6411atomic_load4FUNC monotonic, align 8, !noalias !11587, !nonnull !19, !noundef !19
  %i.cy = invoke noundef i128 %i.cx(ptr noundef nonnull align 16 %.sroa.0.03.i.i.i.i.i.i)
          to label %.noexc6.i unwind label %.loopexit.i, !noalias !11578, !inline_history !11157 ; 2 uses

.noexc6.i:                                        ; preds = %.lr.ph.i.i.i.i.i.i
  %i.cz = icmp eq i128 %i.cy, 0
  br i1 %i.cz, label %bb.k, label %_RINvXs1_NtCs6xpQEr8gLsQ_11typst_utils4hashINtB6_8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleENtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i

bb.k:                                             ; preds = %.noexc6.i
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i.i.i.i.i, i64 16
  %i.db = invoke fastcc noundef i128 @_RINvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleECsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.da)
          to label %.noexc7.i unwind label %.loopexit.i, !noalias !11578 ; 2 uses

.noexc7.i:                                        ; preds = %bb.k
  %i.dc = load atomic ptr, ptr @_RNvNvNtNtNtCsiL9kQKV5x1F_15portable_atomic3imp9atomic1286x86_6412atomic_store4FUNC monotonic, align 8, !noalias !11587, !nonnull !19, !noundef !19
  invoke void %i.dc(ptr noundef nonnull align 16 %.sroa.0.03.i.i.i.i.i.i, i128 noundef %i.db)
          to label %_RINvXs1_NtCs6xpQEr8gLsQ_11typst_utils4hashINtB6_8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleENtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i unwind label %.loopexit.i, !noalias !11578, !inline_history !11157

_RINvXs1_NtCs6xpQEr8gLsQ_11typst_utils4hashINtB6_8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleENtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i: ; preds = %.noexc7.i, %.noexc6.i
  %.sroa.0.0.i.i.i1.i.i.i.i.i = phi i128 [ %i.cy, %.noexc6.i ], [ %i.db, %.noexc7.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !11588
  store i128 %.sroa.0.0.i.i.i1.i.i.i.i.i, ptr %i.af, align 16, !noalias !11588
  call void @llvm.experimental.noalias.scope.decl(metadata !11589)
  call void @llvm.experimental.noalias.scope.decl(metadata !11590)
  %4 = add i64 %i.cv, 16                          ; 3 uses
  store i64 %4, ptr %.sroa.12.0..sroa_idx.i.i, align 8, !alias.scope !11591, !noalias !11592
  %i.dd = icmp eq i64 %i.cu, 0
  br i1 %i.dd, label %bb.p, label %bb.l

bb.l:                                             ; preds = %_RINvXs1_NtCs6xpQEr8gLsQ_11typst_utils4hashINtB6_8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleENtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i
  %i.de = trunc i128 %.sroa.0.0.i.i.i1.i.i.i.i.i to i64
  %i.df = sub i64 8, %i.cu                        ; 4 uses
  %..i.i.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.df, i64 16) ; 2 uses
  %i.dg = icmp ugt i64 %i.df, 3                   ; 3 uses
  %i.dh = and i64 %i.de, 4294967295
  %.sroa.03.0.i.i.i.i.i.i = select i1 %i.dg, i64 4, i64 0 ; 4 uses
  %.sroa.0.0.i.i.i.i.i.i = select i1 %i.dg, i64 %i.dh, i64 0 ; 2 uses
  %i.di = or disjoint i64 %.sroa.03.0.i.i.i.i.i.i, 1
  %i.dj = icmp samesign ult i64 %i.di, %..i.i.i.i.i.i
  br i1 %i.dj, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %.sroa.03.0.i.i.sroa.phi.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx = select i1 %i.dg, i64 4, i64 0
  %.sroa.03.0.i.i.sroa.phi.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %i.af, i64 %.sroa.03.0.i.i.sroa.phi.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx
  %.sroa.015.0.copyload.i.i.i.i.i.i = load i16, ptr %.sroa.03.0.i.i.sroa.phi.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, align 4, !alias.scope !11593, !noalias !11594
  %i.dk = zext i16 %.sroa.015.0.copyload.i.i.i.i.i.i to i64
  %i.dl = shl nuw nsw i64 %.sroa.03.0.i.i.i.i.i.i, 3
  %i.dm = shl nuw nsw i64 %i.dk, %i.dl
  %i.dn = or i64 %i.dm, %.sroa.0.0.i.i.i.i.i.i
  %i.do = or disjoint i64 %.sroa.03.0.i.i.i.i.i.i, 2
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sroa.03.1.i.i.i.i.i.i = phi i64 [ %i.do, %bb.m ], [ %.sroa.03.0.i.i.i.i.i.i, %bb.l ] ; 3 uses
  %.sroa.0.1.i.i.i.i.i.i = phi i64 [ %i.dn, %bb.m ], [ %.sroa.0.0.i.i.i.i.i.i, %bb.l ] ; 2 uses
  %i.dp = icmp samesign ult i64 %.sroa.03.1.i.i.i.i.i.i, %..i.i.i.i.i.i
  br i1 %i.dp, label %bb.o, label %_RNvNtCs83m0le5ggt2_9siphasher6sip1289u8to64_le.exit.i.i.i.i.i

bb.o:                                             ; preds = %bb.n
  %i.dq = getelementptr inbounds nuw i8, ptr %i.af, i64 %.sroa.03.1.i.i.i.i.i.i
  %i.dr = load i8, ptr %i.dq, align 1, !alias.scope !11593, !noalias !11594, !noundef !19
  %i.ds = zext i8 %i.dr to i64
  %i.dt = shl nuw nsw i64 %.sroa.03.1.i.i.i.i.i.i, 3
  %i.du = shl nuw nsw i64 %i.ds, %i.dt
  %i.dv = or i64 %i.du, %.sroa.0.1.i.i.i.i.i.i
  br label %_RNvNtCs83m0le5ggt2_9siphasher6sip1289u8to64_le.exit.i.i.i.i.i

_RNvNtCs83m0le5ggt2_9siphasher6sip1289u8to64_le.exit.i.i.i.i.i: ; preds = %bb.o, %bb.n
  %.sroa.0.2.i.i.i.i.i.i = phi i64 [ %i.dv, %bb.o ], [ %.sroa.0.1.i.i.i.i.i.i, %bb.n ]
  %i.dw = shl i64 %i.cu, 3
  %i.dx = and i64 %i.dw, 56
  %i.dy = shl i64 %.sroa.0.2.i.i.i.i.i.i, %i.dx
  %i.dz = or i64 %i.dy, %i.ct                     ; 3 uses
  %i.ea = icmp ugt i64 %i.df, 16
  br i1 %i.ea, label %bb.r, label %bb.q

bb.p:                                             ; preds = %bb.q, %_RINvXs1_NtCs6xpQEr8gLsQ_11typst_utils4hashINtB6_8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleENtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i
  %.promoted1647.i.i.i.i = phi i64 [ %.promoted1648.i.i.i.i, %_RINvXs1_NtCs6xpQEr8gLsQ_11typst_utils4hashINtB6_8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleENtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i ], [ %i.ew, %bb.q ]
  %.promoted1538.i.i.i.i = phi i64 [ %.promoted1539.i.i.i.i.a, %_RINvXs1_NtCs6xpQEr8gLsQ_11typst_utils4hashINtB6_8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleENtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i ], [ %i.ev, %bb.q ]
  %.promoted1029.i.i.i.i = phi i64 [ %.promoted1030.i.i.i.i.a, %_RINvXs1_NtCs6xpQEr8gLsQ_11typst_utils4hashINtB6_8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleENtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i ], [ %i.ex, %bb.q ]
  %.promoted920.i.i.i.i = phi i64 [ %.promoted921.i.i.i.i.a, %_RINvXs1_NtCs6xpQEr8gLsQ_11typst_utils4hashINtB6_8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleENtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i ], [ %i.es, %bb.q ]
  %i.eb = phi i64 [ %i.cq, %_RINvXs1_NtCs6xpQEr8gLsQ_11typst_utils4hashINtB6_8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleENtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i ], [ %i.ew, %bb.q ] ; 2 uses
  %i.ec = phi i64 [ %i.cr, %_RINvXs1_NtCs6xpQEr8gLsQ_11typst_utils4hashINtB6_8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleENtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i ], [ %i.ev, %bb.q ] ; 4 uses
  %.lcssa214.i.i.i.i = phi i64 [ %.lcssa211.i.i.i.i.a, %_RINvXs1_NtCs6xpQEr8gLsQ_11typst_utils4hashINtB6_8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleENtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i ], [ %i.ex, %bb.q ] ; 2 uses
  %i.ed = phi i64 [ %i.cs, %_RINvXs1_NtCs6xpQEr8gLsQ_11typst_utils4hashINtB6_8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleENtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i ], [ %i.es, %bb.q ] ; 2 uses
  %.sroa.0.0.i.i.i.i.i = phi i64 [ 0, %_RINvXs1_NtCs6xpQEr8gLsQ_11typst_utils4hashINtB6_8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleENtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i ], [ %i.df, %bb.q ] ; 8 uses
  %i.ee = sub nuw nsw i64 16, %.sroa.0.0.i.i.i.i.i ; 2 uses
  %i.ef = and i64 %i.ee, 7                        ; 4 uses
  %i.eg = and i64 %i.ee, 24                       ; 4 uses
  %i.eh = icmp samesign ult i64 %.sroa.0.0.i.i.i.i.i, %i.eg
  br i1 %i.eh, label %.lr.ph.i.i.i.i.i, label %bb.s

bb.q:                                             ; preds = %_RNvNtCs83m0le5ggt2_9siphasher6sip1289u8to64_le.exit.i.i.i.i.i
  %i.ei = xor i64 %i.dz, %i.cs                    ; 3 uses
  %i.ej = add i64 %.lcssa211.i.i.i.i.a, %i.cr     ; 3 uses
  %i.ek = call noundef i64 @llvm.fshl.i64(i64 %i.cr, i64 %i.cr, i64 13)
  %i.el = xor i64 %i.ej, %i.ek                    ; 3 uses
  %i.em = call noundef i64 @llvm.fshl.i64(i64 %i.ej, i64 %i.ej, i64 32)
  %i.en = add i64 %i.ei, %i.cq                    ; 2 uses
  %i.eo = call noundef i64 @llvm.fshl.i64(i64 %i.ei, i64 %i.ei, i64 16)
  %i.ep = xor i64 %i.en, %i.eo                    ; 3 uses
  %i.eq = add i64 %i.ep, %i.em                    ; 2 uses
  %i.er = call noundef i64 @llvm.fshl.i64(i64 %i.ep, i64 %i.ep, i64 21)
  %i.es = xor i64 %i.er, %i.eq                    ; 3 uses
  store i64 %i.es, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !11595, !noalias !11592
  %i.et = add i64 %i.en, %i.el                    ; 3 uses
  %i.eu = call noundef i64 @llvm.fshl.i64(i64 %i.el, i64 %i.el, i64 17)
  %i.ev = xor i64 %i.et, %i.eu                    ; 3 uses
  store i64 %i.ev, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !11595, !noalias !11592
  %i.ew = call noundef i64 @llvm.fshl.i64(i64 %i.et, i64 %i.et, i64 32) ; 3 uses
  store i64 %i.ew, ptr %.sroa.3.0..sroa_idx.i4.i, align 8, !alias.scope !11595, !noalias !11592
  %i.ex = xor i64 %i.eq, %i.dz                    ; 3 uses
  store i64 %i.ex, ptr %i.ai, align 8, !alias.scope !11591, !noalias !11592
  br label %bb.p

bb.r:                                             ; preds = %_RNvNtCs83m0le5ggt2_9siphasher6sip1289u8to64_le.exit.i.i.i.i.i
  %i.ey = add i64 %i.cu, 16
  br label %_RNvXsb_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsENtNtCs3oUPovFnLWP_4core4hash6Hasher5writeCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i.3, %.lr.ph.i.i.i.i.i.2, %.lr.ph.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i
  %.lcssa818 = phi i64 [ %i.gi, %.lr.ph.i.i.i.i.i ], [ %i.hb, %.lr.ph.i.i.i.i.i.1 ], [ %i.hu, %.lr.ph.i.i.i.i.i.2 ], [ %i.in, %.lr.ph.i.i.i.i.i.3 ] ; 3 uses
  %.lcssa817 = phi i64 [ %i.gl, %.lr.ph.i.i.i.i.i ], [ %i.he, %.lr.ph.i.i.i.i.i.1 ], [ %i.hx, %.lr.ph.i.i.i.i.i.2 ], [ %i.iq, %.lr.ph.i.i.i.i.i.3 ] ; 3 uses
  %.lcssa816 = phi i64 [ %i.gm, %.lr.ph.i.i.i.i.i ], [ %i.hf, %.lr.ph.i.i.i.i.i.1 ], [ %i.hy, %.lr.ph.i.i.i.i.i.2 ], [ %i.ir, %.lr.ph.i.i.i.i.i.3 ] ; 3 uses
  %.lcssa815 = phi i64 [ %i.gn, %.lr.ph.i.i.i.i.i ], [ %i.hg, %.lr.ph.i.i.i.i.i.1 ], [ %i.hz, %.lr.ph.i.i.i.i.i.2 ], [ %i.is, %.lr.ph.i.i.i.i.i.3 ] ; 3 uses
  %.lcssa814 = phi i64 [ %i.go, %.lr.ph.i.i.i.i.i ], [ %i.hh, %.lr.ph.i.i.i.i.i.1 ], [ %i.ia, %.lr.ph.i.i.i.i.i.2 ], [ %i.it, %.lr.ph.i.i.i.i.i.3 ]
  store i64 %.lcssa818, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !11591, !noalias !11592
  store i64 %.lcssa817, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !11596, !noalias !11592
  store i64 %.lcssa816, ptr %.sroa.3.0..sroa_idx.i4.i, align 8, !alias.scope !11596, !noalias !11592
  store i64 %.lcssa815, ptr %i.ai, align 8, !alias.scope !11591, !noalias !11592
  br label %bb.s

bb.s:                                             ; preds = %._crit_edge.i.i.i.i.i, %bb.p
  %.promoted1646.i.i.i.i = phi i64 [ %.lcssa816, %._crit_edge.i.i.i.i.i ], [ %.promoted1647.i.i.i.i, %bb.p ]
  %.promoted1537.i.i.i.i = phi i64 [ %.lcssa817, %._crit_edge.i.i.i.i.i ], [ %.promoted1538.i.i.i.i, %bb.p ]
  %.promoted1028.i.i.i.i = phi i64 [ %.lcssa815, %._crit_edge.i.i.i.i.i ], [ %.promoted1029.i.i.i.i, %bb.p ]
  %.promoted919.i.i.i.i = phi i64 [ %.lcssa818, %._crit_edge.i.i.i.i.i ], [ %.promoted920.i.i.i.i, %bb.p ]
  %i.ez = phi i64 [ %.lcssa816, %._crit_edge.i.i.i.i.i ], [ %i.eb, %bb.p ]
  %i.fa = phi i64 [ %.lcssa817, %._crit_edge.i.i.i.i.i ], [ %i.ec, %bb.p ]
  %.lcssa213.i.i.i.i = phi i64 [ %.lcssa815, %._crit_edge.i.i.i.i.i ], [ %.lcssa214.i.i.i.i, %bb.p ]
  %i.fb = phi i64 [ %.lcssa818, %._crit_edge.i.i.i.i.i ], [ %i.ed, %bb.p ]
  %.sroa.0.1.lcssa.i.i.i.i.i = phi i64 [ %.lcssa814, %._crit_edge.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i, %bb.p ] ; 3 uses
  %i.fc = icmp samesign ugt i64 %i.ef, 3
  br i1 %i.fc, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.fd = getelementptr inbounds nuw i8, ptr %i.af, i64 %.sroa.0.1.lcssa.i.i.i.i.i
  %.sroa.014.0.copyload.i16.i.i.i.i.i = load i32, ptr %i.fd, align 1, !alias.scope !11597, !noalias !11594
  %i.fe = zext i32 %.sroa.014.0.copyload.i16.i.i.i.i.i to i64
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.sroa.03.0.i10.i.i.i.i.i = phi i64 [ 4, %bb.t ], [ 0, %bb.s ] ; 5 uses
  %.sroa.0.0.i11.i.i.i.i.i = phi i64 [ %i.fe, %bb.t ], [ 0, %bb.s ] ; 2 uses
  %i.ff = or disjoint i64 %.sroa.03.0.i10.i.i.i.i.i, 1
  %i.fg = icmp samesign ult i64 %i.ff, %i.ef
  br i1 %i.fg, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.fh = getelementptr i8, ptr %i.af, i64 %.sroa.0.1.lcssa.i.i.i.i.i
  %i.fi = getelementptr i8, ptr %i.fh, i64 %.sroa.03.0.i10.i.i.i.i.i
  %.sroa.015.0.copyload.i15.i.i.i.i.i = load i16, ptr %i.fi, align 1, !alias.scope !11597, !noalias !11594
  %i.fj = zext i16 %.sroa.015.0.copyload.i15.i.i.i.i.i to i64
  %i.fk = shl nuw nsw i64 %.sroa.03.0.i10.i.i.i.i.i, 3
  %i.fl = shl nuw nsw i64 %i.fj, %i.fk
  %i.fm = or i64 %i.fl, %.sroa.0.0.i11.i.i.i.i.i
  %i.fn = or disjoint i64 %.sroa.03.0.i10.i.i.i.i.i, 2
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.sroa.03.1.i12.i.i.i.i.i = phi i64 [ %i.fn, %bb.v ], [ %.sroa.03.0.i10.i.i.i.i.i, %bb.u ] ; 3 uses
  %.sroa.0.1.i13.i.i.i.i.i = phi i64 [ %i.fm, %bb.v ], [ %.sroa.0.0.i11.i.i.i.i.i, %bb.u ] ; 2 uses
  %i.fo = icmp samesign ult i64 %.sroa.03.1.i12.i.i.i.i.i, %i.ef
  br i1 %i.fo, label %bb.x, label %_RNvNtCs83m0le5ggt2_9siphasher6sip1289u8to64_le.exit17.i.i.i.i.i

bb.x:                                             ; preds = %bb.w
  %i.fp = add nuw nsw i64 %.sroa.03.1.i12.i.i.i.i.i, %.sroa.0.1.lcssa.i.i.i.i.i ; 2 uses
  %i.fq = icmp samesign ult i64 %i.fp, 16
  call void @llvm.assume(i1 %i.fq), !noalias !11598
  %i.fr = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.fp
  %i.fs = load i8, ptr %i.fr, align 1, !alias.scope !11597, !noalias !11594, !noundef !19
  %i.ft = zext i8 %i.fs to i64
  %i.fu = shl nuw nsw i64 %.sroa.03.1.i12.i.i.i.i.i, 3
  %i.fv = shl nuw nsw i64 %i.ft, %i.fu
  %i.fw = or i64 %i.fv, %.sroa.0.1.i13.i.i.i.i.i
  br label %_RNvNtCs83m0le5ggt2_9siphasher6sip1289u8to64_le.exit17.i.i.i.i.i

_RNvNtCs83m0le5ggt2_9siphasher6sip1289u8to64_le.exit17.i.i.i.i.i: ; preds = %bb.x, %bb.w
  %.sroa.0.2.i14.i.i.i.i.i = phi i64 [ %i.fw, %bb.x ], [ %.sroa.0.1.i13.i.i.i.i.i, %bb.w ] ; 2 uses
  store i64 %.sroa.0.2.i14.i.i.i.i.i, ptr %.sroa.14.0..sroa_idx.i.i, align 8, !alias.scope !11591, !noalias !11592
  br label %_RNvXsb_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsENtNtCs3oUPovFnLWP_4core4hash6Hasher5writeCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.p
  %i.fx = getelementptr inbounds nuw i8, ptr %i.af, i64 %.sroa.0.0.i.i.i.i.i
  %.sroa.07.0.copyload.i.i.i.i.i = load i64, ptr %i.fx, align 1, !alias.scope !11590, !noalias !11594 ; 2 uses
  %i.fy = xor i64 %.sroa.07.0.copyload.i.i.i.i.i, %i.ed ; 3 uses
  %i.fz = add i64 %.lcssa214.i.i.i.i, %i.ec       ; 3 uses
  %i.ga = call noundef i64 @llvm.fshl.i64(i64 %i.ec, i64 %i.ec, i64 13)
  %i.gb = xor i64 %i.fz, %i.ga                    ; 3 uses
  %i.gc = call noundef i64 @llvm.fshl.i64(i64 %i.fz, i64 %i.fz, i64 32)
  %i.gd = add i64 %i.fy, %i.eb                    ; 2 uses
  %i.ge = call noundef i64 @llvm.fshl.i64(i64 %i.fy, i64 %i.fy, i64 16)
  %i.gf = xor i64 %i.gd, %i.ge                    ; 3 uses
  %i.gg = add i64 %i.gf, %i.gc                    ; 2 uses
  %i.gh = call noundef i64 @llvm.fshl.i64(i64 %i.gf, i64 %i.gf, i64 21)
  %i.gi = xor i64 %i.gh, %i.gg                    ; 2 uses
  %i.gj = add i64 %i.gd, %i.gb                    ; 3 uses
  %i.gk = call noundef i64 @llvm.fshl.i64(i64 %i.gb, i64 %i.gb, i64 17)
  %i.gl = xor i64 %i.gj, %i.gk                    ; 4 uses
  %i.gm = call noundef i64 @llvm.fshl.i64(i64 %i.gj, i64 %i.gj, i64 32) ; 2 uses
  %i.gn = xor i64 %i.gg, %.sroa.07.0.copyload.i.i.i.i.i ; 2 uses
  %i.go = add nuw nsw i64 %.sroa.0.0.i.i.i.i.i, 8 ; 3 uses
  %i.gp = icmp samesign ult i64 %i.go, %i.eg
  br i1 %i.gp, label %.lr.ph.i.i.i.i.i.1, label %._crit_edge.i.i.i.i.i

.lr.ph.i.i.i.i.i.1:                               ; preds = %.lr.ph.i.i.i.i.i
  %i.gq = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.go
  %.sroa.07.0.copyload.i.i.i.i.i.1 = load i64, ptr %i.gq, align 1, !alias.scope !11590, !noalias !11594 ; 2 uses
  %i.gr = xor i64 %.sroa.07.0.copyload.i.i.i.i.i.1, %i.gi ; 3 uses
  %i.gs = add i64 %i.gn, %i.gl                    ; 3 uses
  %i.gt = call noundef i64 @llvm.fshl.i64(i64 %i.gl, i64 %i.gl, i64 13)
  %i.gu = xor i64 %i.gs, %i.gt                    ; 3 uses
  %i.gv = call noundef i64 @llvm.fshl.i64(i64 %i.gs, i64 %i.gs, i64 32)
  %i.gw = add i64 %i.gr, %i.gm                    ; 2 uses
  %i.gx = call noundef i64 @llvm.fshl.i64(i64 %i.gr, i64 %i.gr, i64 16)
  %i.gy = xor i64 %i.gw, %i.gx                    ; 3 uses
  %i.gz = add i64 %i.gy, %i.gv                    ; 2 uses
  %i.ha = call noundef i64 @llvm.fshl.i64(i64 %i.gy, i64 %i.gy, i64 21)
  %i.hb = xor i64 %i.ha, %i.gz                    ; 2 uses
  %i.hc = add i64 %i.gw, %i.gu                    ; 3 uses
  %i.hd = call noundef i64 @llvm.fshl.i64(i64 %i.gu, i64 %i.gu, i64 17)
  %i.he = xor i64 %i.hc, %i.hd                    ; 4 uses
  %i.hf = call noundef i64 @llvm.fshl.i64(i64 %i.hc, i64 %i.hc, i64 32) ; 2 uses
  %i.hg = xor i64 %i.gz, %.sroa.07.0.copyload.i.i.i.i.i.1 ; 2 uses
  %i.hh = add nuw nsw i64 %.sroa.0.0.i.i.i.i.i, 16 ; 3 uses
  %i.hi = icmp samesign ult i64 %i.hh, %i.eg
  br i1 %i.hi, label %.lr.ph.i.i.i.i.i.2, label %._crit_edge.i.i.i.i.i

.lr.ph.i.i.i.i.i.2:                               ; preds = %.lr.ph.i.i.i.i.i.1
  %i.hj = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.hh
  %.sroa.07.0.copyload.i.i.i.i.i.2 = load i64, ptr %i.hj, align 1, !alias.scope !11590, !noalias !11594 ; 2 uses
  %i.hk = xor i64 %.sroa.07.0.copyload.i.i.i.i.i.2, %i.hb ; 3 uses
  %i.hl = add i64 %i.hg, %i.he                    ; 3 uses
  %i.hm = call noundef i64 @llvm.fshl.i64(i64 %i.he, i64 %i.he, i64 13)
  %i.hn = xor i64 %i.hl, %i.hm                    ; 3 uses
  %i.ho = call noundef i64 @llvm.fshl.i64(i64 %i.hl, i64 %i.hl, i64 32)
  %i.hp = add i64 %i.hk, %i.hf                    ; 2 uses
  %i.hq = call noundef i64 @llvm.fshl.i64(i64 %i.hk, i64 %i.hk, i64 16)
  %i.hr = xor i64 %i.hp, %i.hq                    ; 3 uses
  %i.hs = add i64 %i.hr, %i.ho                    ; 2 uses
  %i.ht = call noundef i64 @llvm.fshl.i64(i64 %i.hr, i64 %i.hr, i64 21)
  %i.hu = xor i64 %i.ht, %i.hs                    ; 2 uses
  %i.hv = add i64 %i.hp, %i.hn                    ; 3 uses
  %i.hw = call noundef i64 @llvm.fshl.i64(i64 %i.hn, i64 %i.hn, i64 17)
  %i.hx = xor i64 %i.hv, %i.hw                    ; 4 uses
  %i.hy = call noundef i64 @llvm.fshl.i64(i64 %i.hv, i64 %i.hv, i64 32) ; 2 uses
  %i.hz = xor i64 %i.hs, %.sroa.07.0.copyload.i.i.i.i.i.2 ; 2 uses
  %i.ia = add nuw nsw i64 %.sroa.0.0.i.i.i.i.i, 24 ; 3 uses
  %i.ib = icmp samesign ult i64 %i.ia, %i.eg
  br i1 %i.ib, label %.lr.ph.i.i.i.i.i.3, label %._crit_edge.i.i.i.i.i

.lr.ph.i.i.i.i.i.3:                               ; preds = %.lr.ph.i.i.i.i.i.2
  %i.ic = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ia
  %.sroa.07.0.copyload.i.i.i.i.i.3 = load i64, ptr %i.ic, align 1, !alias.scope !11590, !noalias !11594 ; 2 uses
  %i.id = xor i64 %.sroa.07.0.copyload.i.i.i.i.i.3, %i.hu ; 3 uses
  %i.ie = add i64 %i.hz, %i.hx                    ; 3 uses
  %i.if = call noundef i64 @llvm.fshl.i64(i64 %i.hx, i64 %i.hx, i64 13)
  %i.ig = xor i64 %i.ie, %i.if                    ; 3 uses
  %i.ih = call noundef i64 @llvm.fshl.i64(i64 %i.ie, i64 %i.ie, i64 32)
  %i.ii = add i64 %i.id, %i.hy                    ; 2 uses
  %i.ij = call noundef i64 @llvm.fshl.i64(i64 %i.id, i64 %i.id, i64 16)
  %i.ik = xor i64 %i.ii, %i.ij                    ; 3 uses
  %i.il = add i64 %i.ik, %i.ih                    ; 2 uses
  %i.im = call noundef i64 @llvm.fshl.i64(i64 %i.ik, i64 %i.ik, i64 21)
  %i.in = xor i64 %i.im, %i.il
  %i.io = add i64 %i.ii, %i.ig                    ; 3 uses
  %i.ip = call noundef i64 @llvm.fshl.i64(i64 %i.ig, i64 %i.ig, i64 17)
  %i.iq = xor i64 %i.io, %i.ip
  %i.ir = call noundef i64 @llvm.fshl.i64(i64 %i.io, i64 %i.io, i64 32)
  %i.is = xor i64 %i.il, %.sroa.07.0.copyload.i.i.i.i.i.3
  %i.it = or disjoint i64 %.sroa.0.0.i.i.i.i.i, 32
  br label %._crit_edge.i.i.i.i.i

_RNvXsb_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsENtNtCs3oUPovFnLWP_4core4hash6Hasher5writeCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i: ; preds = %_RNvNtCs83m0le5ggt2_9siphasher6sip1289u8to64_le.exit17.i.i.i.i.i, %bb.r
  %.promoted1645.i.i.i.i = phi i64 [ %.promoted1648.i.i.i.i, %bb.r ], [ %.promoted1646.i.i.i.i, %_RNvNtCs83m0le5ggt2_9siphasher6sip1289u8to64_le.exit17.i.i.i.i.i ] ; 2 uses
  %.promoted1536.i.i.i.i = phi i64 [ %.promoted1539.i.i.i.i.a, %bb.r ], [ %.promoted1537.i.i.i.i, %_RNvNtCs83m0le5ggt2_9siphasher6sip1289u8to64_le.exit17.i.i.i.i.i ] ; 2 uses
  %.promoted1027.i.i.i.i = phi i64 [ %.promoted1030.i.i.i.i.a, %bb.r ], [ %.promoted1028.i.i.i.i, %_RNvNtCs83m0le5ggt2_9siphasher6sip1289u8to64_le.exit17.i.i.i.i.i ] ; 2 uses
  %.promoted918.i.i.i.i = phi i64 [ %.promoted921.i.i.i.i.a, %bb.r ], [ %.promoted919.i.i.i.i, %_RNvNtCs83m0le5ggt2_9siphasher6sip1289u8to64_le.exit17.i.i.i.i.i ] ; 2 uses
  %i.iu = phi i64 [ %i.cq, %bb.r ], [ %i.ez, %_RNvNtCs83m0le5ggt2_9siphasher6sip1289u8to64_le.exit17.i.i.i.i.i ]
  %i.iv = phi i64 [ %i.cr, %bb.r ], [ %i.fa, %_RNvNtCs83m0le5ggt2_9siphasher6sip1289u8to64_le.exit17.i.i.i.i.i ]
  %.lcssa212.i.i.i.i = phi i64 [ %.lcssa211.i.i.i.i.a, %bb.r ], [ %.lcssa213.i.i.i.i, %_RNvNtCs83m0le5ggt2_9siphasher6sip1289u8to64_le.exit17.i.i.i.i.i ]
  %i.iw = phi i64 [ %i.cs, %bb.r ], [ %i.fb, %_RNvNtCs83m0le5ggt2_9siphasher6sip1289u8to64_le.exit17.i.i.i.i.i ]
  %i.ix = phi i64 [ %i.dz, %bb.r ], [ %.sroa.0.2.i14.i.i.i.i.i, %_RNvNtCs83m0le5ggt2_9siphasher6sip1289u8to64_le.exit17.i.i.i.i.i ] ; 2 uses
  %storemerge.i.i.i.i.i = phi i64 [ %i.ey, %bb.r ], [ %i.ef, %_RNvNtCs83m0le5ggt2_9siphasher6sip1289u8to64_le.exit17.i.i.i.i.i ] ; 4 uses
  store i64 %storemerge.i.i.i.i.i, ptr %.sroa.15.0..sroa_idx.i.i, align 8, !alias.scope !11591, !noalias !11592
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !11588
  %i.iy = icmp eq ptr %i.cw, %i.co
  br i1 %i.iy, label %_RINvYINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleENtNtCs3oUPovFnLWP_4core4hash4Hash10hash_sliceNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

_RINvYINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleENtNtCs3oUPovFnLWP_4core4hash4Hash10hash_sliceNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i: ; preds = %_RNvXsb_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsENtNtCs3oUPovFnLWP_4core4hash6Hasher5writeCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher19write_length_prefixCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i
  %.promoted756.i.i.i.i = phi i64 [ %.promoted757.i.i.i.i, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher19write_length_prefixCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i ], [ %storemerge.i.i.i.i.i, %_RNvXsb_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsENtNtCs3oUPovFnLWP_4core4hash6Hasher5writeCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i ]
  %.promoted1651.i.i.i.i = phi i64 [ %.promoted1652.i.i.i.i, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher19write_length_prefixCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i ], [ %.promoted1645.i.i.i.i, %_RNvXsb_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsENtNtCs3oUPovFnLWP_4core4hash6Hasher5writeCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i ] ; 2 uses
  %.promoted1542.i.i.i.i = phi i64 [ %.promoted1543.i.i.i.i, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher19write_length_prefixCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i ], [ %.promoted1536.i.i.i.i, %_RNvXsb_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsENtNtCs3oUPovFnLWP_4core4hash6Hasher5writeCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i ] ; 4 uses
  %.promoted1033.i.i.i.i = phi i64 [ %.promoted1034.i.i.i.i, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher19write_length_prefixCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i ], [ %.promoted1027.i.i.i.i, %_RNvXsb_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsENtNtCs3oUPovFnLWP_4core4hash6Hasher5writeCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i ] ; 2 uses
  %.promoted924.i.i.i.i = phi i64 [ %.promoted925.i.i.i.i, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher19write_length_prefixCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i ], [ %.promoted918.i.i.i.i, %_RNvXsb_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsENtNtCs3oUPovFnLWP_4core4hash6Hasher5writeCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i ] ; 2 uses
  %i.iz = phi i64 [ %i.cm, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher19write_length_prefixCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i ], [ %i.ix, %_RNvXsb_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsENtNtCs3oUPovFnLWP_4core4hash6Hasher5writeCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i ]
  %i.ja = phi i64 [ %i.cn, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher19write_length_prefixCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i ], [ %storemerge.i.i.i.i.i, %_RNvXsb_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsENtNtCs3oUPovFnLWP_4core4hash6Hasher5writeCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i ] ; 5 uses
  %i.jb = phi i64 [ %i.bn, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher19write_length_prefixCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i ], [ %4, %_RNvXsb_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsENtNtCs3oUPovFnLWP_4core4hash6Hasher5writeCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i ]
  %i.jc = getelementptr inbounds nuw i8, ptr %.tr.i.i.i.i.i, i64 16
  %i.jd = load ptr, ptr %i.jc, align 8, !noalias !11585, !align !36, !noundef !19 ; 3 uses
  %i.je = icmp ne ptr %i.jd, null
  %i.jf = zext i1 %i.je to i64                    ; 2 uses
  %i.jg = add i64 %i.jb, 8                        ; 2 uses
  store i64 %i.jg, ptr %.sroa.12.0..sroa_idx.i.i, align 8, !alias.scope !11599, !noalias !11582
  %i.jh = shl i64 %i.ja, 3                        ; 2 uses
  %i.ji = and i64 %i.jh, 56
  %i.jj = shl nuw nsw i64 %i.jf, %i.ji
  %i.jk = or i64 %i.jj, %i.iz                     ; 4 uses
  store i64 %i.jk, ptr %.sroa.14.0..sroa_idx.i.i, align 8, !alias.scope !11599, !noalias !11582
  %i.jl = icmp ugt i64 %i.ja, 8
  br i1 %i.jl, label %bb.z, label %bb.y

bb.y:                                             ; preds = %_RINvYINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleENtNtCs3oUPovFnLWP_4core4hash4Hash10hash_sliceNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i
  %i.jm = xor i64 %i.jk, %.promoted924.i.i.i.i    ; 3 uses
  %i.jn = add i64 %.promoted1033.i.i.i.i, %.promoted1542.i.i.i.i ; 3 uses
  %i.jo = call noundef i64 @llvm.fshl.i64(i64 %.promoted1542.i.i.i.i, i64 %.promoted1542.i.i.i.i, i64 13)
  %i.jp = xor i64 %i.jn, %i.jo                    ; 3 uses
  %i.jq = call noundef i64 @llvm.fshl.i64(i64 %i.jn, i64 %i.jn, i64 32)
  %i.jr = add i64 %i.jm, %.promoted1651.i.i.i.i   ; 2 uses
  %i.js = call noundef i64 @llvm.fshl.i64(i64 %i.jm, i64 %i.jm, i64 16)
  %i.jt = xor i64 %i.jr, %i.js                    ; 3 uses
  %i.ju = add i64 %i.jt, %i.jq                    ; 2 uses
  %i.jv = call noundef i64 @llvm.fshl.i64(i64 %i.jt, i64 %i.jt, i64 21)
  %i.jw = xor i64 %i.jv, %i.ju                    ; 2 uses
  store i64 %i.jw, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !11600, !noalias !11582
  %i.jx = add i64 %i.jr, %i.jp                    ; 3 uses
  %i.jy = call noundef i64 @llvm.fshl.i64(i64 %i.jp, i64 %i.jp, i64 17)
  %i.jz = xor i64 %i.jx, %i.jy                    ; 2 uses
  store i64 %i.jz, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !11600, !noalias !11582
  %i.ka = call noundef i64 @llvm.fshl.i64(i64 %i.jx, i64 %i.jx, i64 32) ; 2 uses
  store i64 %i.ka, ptr %.sroa.3.0..sroa_idx.i4.i, align 8, !alias.scope !11600, !noalias !11582
  %i.kb = xor i64 %i.ju, %i.jk                    ; 2 uses
  store i64 %i.kb, ptr %i.ai, align 8, !alias.scope !11599, !noalias !11582
  %.not.i.i.i2.i.i.i.i.i = icmp eq i64 %i.ja, 0
  %i.kc = sub nuw nsw i64 64, %i.jh
  %i.kd = lshr i64 %i.jf, %i.kc
  %.sroa.0.0.i.i.i3.i.i.i.i.i = select i1 %.not.i.i.i2.i.i.i.i.i, i64 0, i64 %i.kd ; 2 uses
  store i64 %.sroa.0.0.i.i.i3.i.i.i.i.i, ptr %.sroa.14.0..sroa_idx.i.i, align 8, !alias.scope !11599, !noalias !11582
  br label %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i

bb.z:                                             ; preds = %_RINvYINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleENtNtCs3oUPovFnLWP_4core4hash4Hash10hash_sliceNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i
  %i.ke = add i64 %i.ja, 8                        ; 3 uses
  store i64 %i.ke, ptr %.sroa.15.0..sroa_idx.i.i, align 8, !alias.scope !11599, !noalias !11582
  br label %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i

_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i: ; preds = %bb.z, %bb.y
  %.promoted755.i.i.i.i = phi i64 [ %.promoted756.i.i.i.i, %bb.y ], [ %i.ke, %bb.z ]
  %.promoted1650.i.i.i.i = phi i64 [ %i.ka, %bb.y ], [ %.promoted1651.i.i.i.i, %bb.z ]
  %.promoted1541.i.i.i.i = phi i64 [ %i.jz, %bb.y ], [ %.promoted1542.i.i.i.i, %bb.z ]
  %.promoted1032.i.i.i.i = phi i64 [ %i.kb, %bb.y ], [ %.promoted1033.i.i.i.i, %bb.z ]
  %.promoted923.i.i.i.i = phi i64 [ %i.jw, %bb.y ], [ %.promoted924.i.i.i.i, %bb.z ]
  %i.kf = phi i64 [ %i.ja, %bb.y ], [ %i.ke, %bb.z ]
  %i.kg = phi i64 [ %.sroa.0.0.i.i.i3.i.i.i.i.i, %bb.y ], [ %i.jk, %bb.z ]
  %.not.i.i.i.i.i = icmp eq ptr %i.jd, null
  br i1 %.not.i.i.i.i.i, label %_RINvXNvNtCsloFShupyl5J_6comemo5inputs6_1__INtB5_5MultiTINtNtB7_5track7TrackedDNtCsdaEETE4DqmE_13typst_library5WorldEL_NtNvB1g_1__12___ComemoCallERINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtB1g_7LibraryEIBS_DNtNtNtB1g_13introspection12introspector12IntrospectorEL_NtNvB3q_1__12___ComemoCallEIBS_NtNtB1g_6engine6TracedNtNvB4P_1__12___ComemoCallEINtBU_10TrackedMutNtB4P_4SinkNtNvB4P_s_1__12___ComemoCallEIBS_NtB4P_5RouteNtNvB4P_s0_1__12___ComemoCallERNtNtNtB1g_11foundations7content7ContentNtNtB7l_6styles10StyleChainEENtB5_5Input3keyNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECsgpMJJHpo27b_12typst_bundle.exit.i.i, label %tailrecurse.i.i.i.i.i

_RINvXNvNtCsloFShupyl5J_6comemo5inputs6_1__INtB5_5MultiTINtNtB7_5track7TrackedDNtCsdaEETE4DqmE_13typst_library5WorldEL_NtNvB1g_1__12___ComemoCallERINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtB1g_7LibraryEIBS_DNtNtNtB1g_13introspection12introspector12IntrospectorEL_NtNvB3q_1__12___ComemoCallEIBS_NtNtB1g_6engine6TracedNtNvB4P_1__12___ComemoCallEINtBU_10TrackedMutNtB4P_4SinkNtNvB4P_s_1__12___ComemoCallEIBS_NtB4P_5RouteNtNvB4P_s0_1__12___ComemoCallERNtNtNtB1g_11foundations7content7ContentNtNtB7l_6styles10StyleChainEENtB5_5Input3keyNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECsgpMJJHpo27b_12typst_bundle.exit.i.i: ; preds = %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i
  %i.kh = call fastcc { i64, i64 } @_RNvMs7_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsE9finish128CsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.ai) #50, !noalias !11576 ; 2 uses
  %i.ki = extractvalue { i64, i64 } %i.kh, 0      ; 3 uses
  %i.kj = extractvalue { i64, i64 } %i.kh, 1      ; 3 uses
  %i.kk = zext i64 %i.ki to i128
  %i.kl = zext i64 %i.kj to i128
  %i.km = shl nuw i128 %i.kl, 64
  %i.kn = or disjoint i128 %i.km, %i.kk           ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !11576
  %i.ko = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvCsgpMJJHpo27b_12typst_bundle11bundle_impl7___CACHE, i64 152) acquire, align 8, !noalias !11576
  %i.kp = icmp eq i32 %i.ko, 0
  br i1 %i.kp, label %_RINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCsbQmEUdn7Qi6_8lock_api6rwlock6RwLockNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtCsloFShupyl5J_6comemo7memoize9CacheDataINtNvNtB3f_5inputs6_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB4t_13introspection12introspector1__12___ComemoCallNtNvNtB4t_6engine1__12___ComemoCallNtNvB6g_s_1__12___ComemoCallNtNvB6g_s0_1__12___ComemoCalluuEINtNtCs3oUPovFnLWP_4core6result6ResultNtCsgpMJJHpo27b_12typst_bundle6BundleINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB4t_4diag16SourceDiagnosticEEEEE5force0EB8n_.exit.i.i, label %bb.aa, !prof !21

bb.aa:                                            ; preds = %_RINvXNvNtCsloFShupyl5J_6comemo5inputs6_1__INtB5_5MultiTINtNtB7_5track7TrackedDNtCsdaEETE4DqmE_13typst_library5WorldEL_NtNvB1g_1__12___ComemoCallERINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtB1g_7LibraryEIBS_DNtNtNtB1g_13introspection12introspector12IntrospectorEL_NtNvB3q_1__12___ComemoCallEIBS_NtNtB1g_6engine6TracedNtNvB4P_1__12___ComemoCallEINtBU_10TrackedMutNtB4P_4SinkNtNvB4P_s_1__12___ComemoCallEIBS_NtB4P_5RouteNtNvB4P_s0_1__12___ComemoCallERNtNtNtB1g_11foundations7content7ContentNtNtB7l_6styles10StyleChainEENtB5_5Input3keyNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECsgpMJJHpo27b_12typst_bundle.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !11576
  store ptr @_RNvNvCsgpMJJHpo27b_12typst_bundle11bundle_impl7___CACHE, ptr %i.ae, align 8, !noalias !11576
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !11576
  store ptr %i.ae, ptr %i.ad, align 8, !noalias !11576
  invoke void @_RNvMs0_NtNtNtNtCsaL1QbXo9JQH_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNvCsgpMJJHpo27b_12typst_bundle11bundle_impl7___CACHE, i64 152), i1 noundef zeroext true, ptr noundef nonnull %i.ad, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8)
          to label %.noexc9.i unwind label %.loopexit.split-lp.i, !noalias !11578

.noexc9.i:                                        ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !11576
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !11576
  br label %_RINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCsbQmEUdn7Qi6_8lock_api6rwlock6RwLockNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtCsloFShupyl5J_6comemo7memoize9CacheDataINtNvNtB3f_5inputs6_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB4t_13introspection12introspector1__12___ComemoCallNtNvNtB4t_6engine1__12___ComemoCallNtNvB6g_s_1__12___ComemoCallNtNvB6g_s0_1__12___ComemoCalluuEINtNtCs3oUPovFnLWP_4core6result6ResultNtCsgpMJJHpo27b_12typst_bundle6BundleINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB4t_4diag16SourceDiagnosticEEEEE5force0EB8n_.exit.i.i

_RINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCsbQmEUdn7Qi6_8lock_api6rwlock6RwLockNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtCsloFShupyl5J_6comemo7memoize9CacheDataINtNvNtB3f_5inputs6_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB4t_13introspection12introspector1__12___ComemoCallNtNvNtB4t_6engine1__12___ComemoCallNtNvB6g_s_1__12___ComemoCallNtNvB6g_s0_1__12___ComemoCalluuEINtNtCs3oUPovFnLWP_4core6result6ResultNtCsgpMJJHpo27b_12typst_bundle6BundleINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB4t_4diag16SourceDiagnosticEEEEE5force0EB8n_.exit.i.i: ; preds = %.noexc9.i, %_RINvXNvNtCsloFShupyl5J_6comemo5inputs6_1__INtB5_5MultiTINtNtB7_5track7TrackedDNtCsdaEETE4DqmE_13typst_library5WorldEL_NtNvB1g_1__12___ComemoCallERINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtB1g_7LibraryEIBS_DNtNtNtB1g_13introspection12introspector12IntrospectorEL_NtNvB3q_1__12___ComemoCallEIBS_NtNtB1g_6engine6TracedNtNvB4P_1__12___ComemoCallEINtBU_10TrackedMutNtB4P_4SinkNtNvB4P_s_1__12___ComemoCallEIBS_NtB4P_5RouteNtNvB4P_s0_1__12___ComemoCallERNtNtNtB1g_11foundations7content7ContentNtNtB7l_6styles10StyleChainEENtB5_5Input3keyNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECsgpMJJHpo27b_12typst_bundle.exit.i.i
  %i.kq = load atomic i64, ptr @_RNvNvCsgpMJJHpo27b_12typst_bundle11bundle_impl7___CACHE monotonic, align 8, !noalias !11576 ; 4 uses
  %i.kr = and i64 %i.kq, 8
  %i.ks = icmp ne i64 %i.kr, 0
  %i.kt = icmp ugt i64 %i.kq, -17
  %or.cond.i.i.i = or i1 %i.kt, %i.ks
  br i1 %or.cond.i.i.i, label %_RNvMs8_NtCsg5ZWEykmiUC_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i.i, label %_RNvMs8_NtCsg5ZWEykmiUC_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.i.i, !prof !28

_RNvMs8_NtCsg5ZWEykmiUC_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.i.i: ; preds = %_RINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCsbQmEUdn7Qi6_8lock_api6rwlock6RwLockNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtCsloFShupyl5J_6comemo7memoize9CacheDataINtNvNtB3f_5inputs6_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB4t_13introspection12introspector1__12___ComemoCallNtNvNtB4t_6engine1__12___ComemoCallNtNvB6g_s_1__12___ComemoCallNtNvB6g_s0_1__12___ComemoCalluuEINtNtCs3oUPovFnLWP_4core6result6ResultNtCsgpMJJHpo27b_12typst_bundle6BundleINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB4t_4diag16SourceDiagnosticEEEEE5force0EB8n_.exit.i.i
  %i.ku = add nuw i64 %i.kq, 16
  %i.kv = cmpxchg weak ptr @_RNvNvCsgpMJJHpo27b_12typst_bundle11bundle_impl7___CACHE, i64 %i.kq, i64 %i.ku acquire monotonic, align 8, !noalias !11576
  %i.kw = extractvalue { i64, i1 } %i.kv, 1
  br i1 %i.kw, label %.noexc10.i, label %_RNvMs8_NtCsg5ZWEykmiUC_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i.i, !prof !50

_RNvMs8_NtCsg5ZWEykmiUC_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i.i: ; preds = %_RNvMs8_NtCsg5ZWEykmiUC_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.i.i, %_RINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCsbQmEUdn7Qi6_8lock_api6rwlock6RwLockNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtCsloFShupyl5J_6comemo7memoize9CacheDataINtNvNtB3f_5inputs6_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB4t_13introspection12introspector1__12___ComemoCallNtNvNtB4t_6engine1__12___ComemoCallNtNvB6g_s_1__12___ComemoCallNtNvB6g_s0_1__12___ComemoCalluuEINtNtCs3oUPovFnLWP_4core6result6ResultNtCsgpMJJHpo27b_12typst_bundle6BundleINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB4t_4diag16SourceDiagnosticEEEEE5force0EB8n_.exit.i.i
  %i.kx = invoke noundef zeroext i1 @_RNvMs8_NtCsg5ZWEykmiUC_11parking_lot10raw_rwlockNtB5_9RawRwLock16lock_shared_slow(ptr noundef nonnull align 8 @_RNvNvCsgpMJJHpo27b_12typst_bundle11bundle_impl7___CACHE, i1 noundef zeroext false, i64 undef, i32 noundef -1)
          to label %.noexc10.i unwind label %.loopexit.split-lp.i, !noalias !11578 ; 0 uses

.noexc10.i:                                       ; preds = %_RNvMs8_NtCsg5ZWEykmiUC_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i.i, %_RNvMs8_NtCsg5ZWEykmiUC_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !11601)
  call void @llvm.experimental.noalias.scope.decl(metadata !11602)
  %i.ky = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvCsgpMJJHpo27b_12typst_bundle11bundle_impl7___CACHE, i64 112), align 8, !alias.scope !11602, !noalias !11603, !noundef !19
  %i.kz = icmp eq i64 %i.ky, 0
  br i1 %i.kz, label %.loopexit14.i.i, label %bb.ab

bb.ab:                                            ; preds = %.noexc10.i
  %i.la = mul i64 %i.ki, -1065810590584100411
  %i.lb = add i64 %i.la, %i.kj
  %i.lc = mul i64 %i.lb, -1065810590584100411     ; 2 uses
  %i.ld = call noundef i64 @llvm.fshl.i64(i64 %i.lc, i64 %i.lc, i64 26) ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11604)
  call void @llvm.experimental.noalias.scope.decl(metadata !11605)
  %i.le = lshr i64 %i.ld, 57
  %i.lf = trunc nuw nsw i64 %i.le to i8
  %i.lg = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvCsgpMJJHpo27b_12typst_bundle11bundle_impl7___CACHE, i64 96), align 8, !alias.scope !11606, !noalias !11607, !noundef !19 ; 2 uses
  %i.lh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvCsgpMJJHpo27b_12typst_bundle11bundle_impl7___CACHE, i64 88), align 8, !alias.scope !11606, !noalias !11607, !nonnull !19, !noundef !19 ; 2 uses
  %i.li = insertelement <16 x i8> poison, i8 %i.lf, i64 0
  %i.lj = shufflevector <16 x i8> %i.li, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ae, %bb.ab
  %.sroa.9.0.i.i.i.i.i.i = phi i64 [ 0, %bb.ab ], [ %i.nj, %bb.ae ]
  %.pn.i.i.i.i.i = phi i64 [ %i.ld, %bb.ab ], [ %i.nk, %bb.ae ]
  %.sroa.01.0.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i, %i.lg ; 3 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lh, i64 %.sroa.01.0.i.i.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i.i.i = load <16 x i8>, ptr %i.lk, align 1, !noalias !11608 ; 2 uses
  %i.ll = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i, %i.lj
  %i.lm = bitcast <16 x i1> %i.ll to i16          ; 2 uses
  %.not.i.not30.i.i.i.i.i = icmp eq i16 %i.lm, 0
  br i1 %.not.i.not30.i.i.i.i.i, label %._crit_edge.i.i.i36.i.i, label %.lr.ph.i.i.i35.i.i

.lr.ph.i.i.i35.i.i:                               ; preds = %bb.ac, %bb.ad
  %.sroa.06.0.i31.i.i.i.i.i = phi i16 [ %i.ni, %bb.ad ], [ %i.lm, %bb.ac ] ; 3 uses
  %i.ln = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i.i.i.i, i1 true)
  %i.lo = zext nneg i16 %i.ln to i64
  %i.lp = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.lo
  %i.lq = and i64 %i.lp, %i.lg
  %i.lr = sub nsw i64 0, %i.lq
  %i.ls = getelementptr inbounds [32 x i8], ptr %i.lh, i64 %i.lr ; 2 uses
  %i.lt = getelementptr inbounds i8, ptr %i.ls, i64 -32
  %.val2.i.i.i.i.i.i = load i128, ptr %i.lt, align 16, !noalias !11609, !noundef !19
  %i.lu = icmp eq i128 %i.kn, %.val2.i.i.i.i.i.i
  br i1 %i.lu, label %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECsgpMJJHpo27b_12typst_bundle.exit.preheader.i.i.i, label %bb.ad, !prof !21

_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECsgpMJJHpo27b_12typst_bundle.exit.preheader.i.i.i: ; preds = %.lr.ph.i.i.i35.i.i
  %.sroa.09.0.in61.i.i.i = getelementptr inbounds i8, ptr %i.ls, i64 -16
  %.sroa.09.062.i.i.i = load i64, ptr %.sroa.09.0.in61.i.i.i, align 8, !noalias !11610, !noundef !19 ; 3 uses
  %i.lv = icmp sgt i64 %.sroa.09.062.i.i.i, -1
  br i1 %i.lv, label %.lr.ph.i.i.i, label %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECsgpMJJHpo27b_12typst_bundle.exit._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECsgpMJJHpo27b_12typst_bundle.exit.preheader.i.i.i
  %i.lw = load i64, ptr %.sroa.612.0..sroa.8.0..sroa_idx.i.sroa_idx, align 8, !alias.scope !11611, !noalias !11612
  %.sroa.3.0..sroa_idx.i.i90.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.4.0..sroa_idx.i.i91.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.5.0..sroa_idx.i.i92.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %.sroa.6.0..sroa_idx.i.i93.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.lx = load ptr, ptr %.sroa.8.0..sroa_idx.i, align 8, !alias.scope !11611, !noalias !11612, !nonnull !19, !align !36 ; 4 uses
  %.sroa.3.0..sroa_idx.i2.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.4.0..sroa_idx.i3.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.5.0..sroa_idx.i4.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %.sroa.6.0..sroa_idx.i5.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %.sroa.12.0..sroa_idx.i6.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %.sroa.14.0..sroa_idx.i7.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %.sroa.15.0..sroa_idx.i8.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  %.sroa.3.0..sroa_idx.i.i.i.i.i.i127.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i128.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i129.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i130.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %.sroa.12.0..sroa_idx.i.i.i.i.i.i131.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %.sroa.14.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  %.sroa.15.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  %.sroa.3.0..sroa_idx.i2.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.4.0..sroa_idx.i3.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.sroa.5.0..sroa_idx.i4.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %.sroa.6.0..sroa_idx.i5.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %.sroa.12.0..sroa_idx.i6.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %.sroa.14.0..sroa_idx.i7.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  %.sroa.15.0..sroa_idx.i8.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  %.sroa.3.0..sroa_idx.i.i.i133.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.4.0..sroa_idx.i.i.i134.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.sroa.5.0..sroa_idx.i.i.i135.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %.sroa.6.0..sroa_idx.i.i.i136.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %.sroa.12.0..sroa_idx.i.i.i137.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %.sroa.14.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  %.sroa.15.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  %i.ly = load ptr, ptr %.sroa.59.0..sroa.8.0..sroa_idx.i.sroa_idx, align 8, !alias.scope !11611, !noalias !11612 ; 2 uses
  %.not9.i117.i.i.i.i.i = icmp eq ptr %i.ly, null
  %i.lz = load ptr, ptr %.sroa.6.0..sroa.8.0..sroa_idx.i.sroa_idx, align 8, !alias.scope !11611, !noalias !11612, !nonnull !19, !align !36
  %.sroa.5.0..sroa_idx.i24.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  %.sroa.61.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 24
  %.val1.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa.7.0..sroa_idx.i.sroa_idx, align 8, !alias.scope !11611, !noalias !11612 ; 2 uses
  %.not.i85.i.i.i.i.i = icmp eq ptr %.val1.i.i.i.i.i, null
  %.val2.i.i.i.i.i = load ptr, ptr %.sroa.5.0..sroa.7.0..sroa_idx.i.sroa_idx, align 8, !alias.scope !11611, !noalias !11612, !nonnull !19
  %i.mb = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i.i, i64 24
  %i.mc = getelementptr inbounds nuw i8, ptr %i.ak, i64 112
end_hunk_0
begin_hunk_1_@_RNvNtCsgpMJJHpo27b_12typst_bundle7export_15export_document:bb.a
  br label %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCsgpMJJHpo27b_12typst_bundle.exit.i68.i.i

bb.ez:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i19
  %i.all = add i64 %i.aki, 8
  br label %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCsgpMJJHpo27b_12typst_bundle.exit.i68.i.i

_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCsgpMJJHpo27b_12typst_bundle.exit.i68.i.i: ; preds = %bb.ez, %bb.ey
  %i.alm = phi i64 [ %i.alh, %bb.ey ], [ %i.akd, %bb.ez ] ; 3 uses
  %i.aln = phi i64 [ %i.alg, %bb.ey ], [ %i.ake, %bb.ez ] ; 5 uses
  %i.alo = phi i64 [ %i.ali, %bb.ey ], [ %i.akf, %bb.ez ] ; 3 uses
  %i.alp = phi i64 [ %i.ald, %bb.ey ], [ %i.akg, %bb.ez ] ; 3 uses
  %i.alq = phi i64 [ %i.aki, %bb.ey ], [ %i.all, %bb.ez ] ; 6 uses
  %i.alr = phi i64 [ %.sroa.0.0.i.i.i.i67.i.i, %bb.ey ], [ %i.akr, %bb.ez ] ; 2 uses
  %.not.i69.i.i = icmp eq i64 %.val1.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i69.i.i, label %_RINvXsS_NtCs3oUPovFnLWP_4core6optionINtB6_6OptionINtNtNtB8_3num7nonzero7NonZerojEENtNtB8_4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECsgpMJJHpo27b_12typst_bundle.exit72.i.i, label %bb.fa

bb.fa:                                            ; preds = %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCsgpMJJHpo27b_12typst_bundle.exit.i68.i.i
  %i.als = add i64 %i.akj, 16                     ; 2 uses
  %i.alt = shl i64 %i.alq, 3                      ; 2 uses
  %i.alu = and i64 %i.alt, 56
  %i.alv = shl i64 %.val1.i.i.i.i.i.i.i.i, %i.alu
  %i.alw = or i64 %i.alv, %i.alr                  ; 3 uses
  %i.alx = icmp ugt i64 %i.alq, 8
  br i1 %i.alx, label %bb.fc, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.aly = xor i64 %i.alw, %i.alp                 ; 3 uses
  %i.alz = add i64 %i.alo, %i.aln                 ; 3 uses
  %i.ama = call noundef i64 @llvm.fshl.i64(i64 %i.aln, i64 %i.aln, i64 13)
  %i.amb = xor i64 %i.alz, %i.ama                 ; 3 uses
  %i.amc = call noundef i64 @llvm.fshl.i64(i64 %i.alz, i64 %i.alz, i64 32)
  %i.amd = add i64 %i.aly, %i.alm                 ; 2 uses
  %i.ame = call noundef i64 @llvm.fshl.i64(i64 %i.aly, i64 %i.aly, i64 16)
  %i.amf = xor i64 %i.amd, %i.ame                 ; 3 uses
  %i.amg = add i64 %i.amf, %i.amc                 ; 2 uses
  %i.amh = call noundef i64 @llvm.fshl.i64(i64 %i.amf, i64 %i.amf, i64 21)
  %i.ami = xor i64 %i.amh, %i.amg                 ; 2 uses
  store i64 %i.ami, ptr %.sroa.5.0..sroa_idx.i5.i, align 8, !alias.scope !15110, !noalias !15108
  %i.amj = add i64 %i.amd, %i.amb                 ; 3 uses
  %i.amk = call noundef i64 @llvm.fshl.i64(i64 %i.amb, i64 %i.amb, i64 17)
  %i.aml = xor i64 %i.amj, %i.amk                 ; 2 uses
  store i64 %i.aml, ptr %.sroa.4.0..sroa_idx.i.i10, align 8, !alias.scope !15110, !noalias !15108
  %i.amm = call noundef i64 @llvm.fshl.i64(i64 %i.amj, i64 %i.amj, i64 32) ; 2 uses
  store i64 %i.amm, ptr %.sroa.3.0..sroa_idx.i4.i, align 8, !alias.scope !15110, !noalias !15108
  %i.amn = xor i64 %i.amg, %i.alw                 ; 2 uses
  store i64 %i.amn, ptr %i.at, align 8, !alias.scope !15111, !noalias !15108
  %.not.i.i.i.i.i70.i.i = icmp eq i64 %i.alq, 0
  %i.amo = sub nuw nsw i64 64, %i.alt
  %i.amp = lshr i64 %.val1.i.i.i.i.i.i.i.i, %i.amo
  %.sroa.0.0.i.i.i.i.i71.i.i = select i1 %.not.i.i.i.i.i70.i.i, i64 0, i64 %i.amp
  br label %_RINvXsS_NtCs3oUPovFnLWP_4core6optionINtB6_6OptionINtNtNtB8_3num7nonzero7NonZerojEENtNtB8_4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECsgpMJJHpo27b_12typst_bundle.exit72.i.i

bb.fc:                                            ; preds = %bb.fa
  %i.amq = add i64 %i.alq, 8
  br label %_RINvXsS_NtCs3oUPovFnLWP_4core6optionINtB6_6OptionINtNtNtB8_3num7nonzero7NonZerojEENtNtB8_4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECsgpMJJHpo27b_12typst_bundle.exit72.i.i

_RINvXsS_NtCs3oUPovFnLWP_4core6optionINtB6_6OptionINtNtNtB8_3num7nonzero7NonZerojEENtNtB8_4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECsgpMJJHpo27b_12typst_bundle.exit72.i.i: ; preds = %bb.fc, %bb.fb, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCsgpMJJHpo27b_12typst_bundle.exit.i68.i.i
  %i.amr = phi i64 [ %i.alm, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCsgpMJJHpo27b_12typst_bundle.exit.i68.i.i ], [ %i.amm, %bb.fb ], [ %i.alm, %bb.fc ] ; 2 uses
  %i.ams = phi i64 [ %i.aln, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCsgpMJJHpo27b_12typst_bundle.exit.i68.i.i ], [ %i.aml, %bb.fb ], [ %i.aln, %bb.fc ] ; 4 uses
  %i.amt = phi i64 [ %i.alo, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCsgpMJJHpo27b_12typst_bundle.exit.i68.i.i ], [ %i.amn, %bb.fb ], [ %i.alo, %bb.fc ] ; 2 uses
  %i.amu = phi i64 [ %i.alp, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCsgpMJJHpo27b_12typst_bundle.exit.i68.i.i ], [ %i.ami, %bb.fb ], [ %i.alp, %bb.fc ] ; 2 uses
  %i.amv = phi i64 [ %i.alr, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCsgpMJJHpo27b_12typst_bundle.exit.i68.i.i ], [ %.sroa.0.0.i.i.i.i.i71.i.i, %bb.fb ], [ %i.alw, %bb.fc ]
  %i.amw = phi i64 [ %i.alq, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCsgpMJJHpo27b_12typst_bundle.exit.i68.i.i ], [ %i.alq, %bb.fb ], [ %i.amq, %bb.fc ] ; 5 uses
  %i.amx = phi i64 [ %i.akn, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCsgpMJJHpo27b_12typst_bundle.exit.i68.i.i ], [ %i.als, %bb.fb ], [ %i.als, %bb.fc ] ; 2 uses
  %i.amy = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i.i.i.i.i.i, i64 8
  %.val.i.i.i.i.i.i.i.i = load i64, ptr %i.amy, align 8, !alias.scope !15105, !noalias !15106, !noundef !19 ; 4 uses
  %i.amz = icmp ne i64 %.val.i.i.i.i.i.i.i.i, 0
  %i.ana = zext i1 %i.amz to i64                  ; 2 uses
  %i.anb = add i64 %i.amx, 8
  %i.anc = shl i64 %i.amw, 3                      ; 2 uses
  %i.and = and i64 %i.anc, 56
  %i.ane = shl nuw nsw i64 %i.ana, %i.and
  %i.anf = or i64 %i.ane, %i.amv                  ; 3 uses
  %i.ang = icmp ugt i64 %i.amw, 8
  br i1 %i.ang, label %bb.fe, label %bb.fd

bb.fd:                                            ; preds = %_RINvXsS_NtCs3oUPovFnLWP_4core6optionINtB6_6OptionINtNtNtB8_3num7nonzero7NonZerojEENtNtB8_4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECsgpMJJHpo27b_12typst_bundle.exit72.i.i
  %i.anh = xor i64 %i.anf, %i.amu                 ; 3 uses
  %i.ani = add i64 %i.amt, %i.ams                 ; 3 uses
  %i.anj = call noundef i64 @llvm.fshl.i64(i64 %i.ams, i64 %i.ams, i64 13)
  %i.ank = xor i64 %i.ani, %i.anj                 ; 3 uses
  %i.anl = call noundef i64 @llvm.fshl.i64(i64 %i.ani, i64 %i.ani, i64 32)
  %i.anm = add i64 %i.anh, %i.amr                 ; 2 uses
  %i.ann = call noundef i64 @llvm.fshl.i64(i64 %i.anh, i64 %i.anh, i64 16)
  %i.ano = xor i64 %i.anm, %i.ann                 ; 3 uses
  %i.anp = add i64 %i.ano, %i.anl                 ; 2 uses
  %i.anq = call noundef i64 @llvm.fshl.i64(i64 %i.ano, i64 %i.ano, i64 21)
  %i.anr = xor i64 %i.anq, %i.anp                 ; 2 uses
  store i64 %i.anr, ptr %.sroa.5.0..sroa_idx.i5.i, align 8, !alias.scope !15112, !noalias !15108
  %i.ans = add i64 %i.anm, %i.ank                 ; 3 uses
  %i.ant = call noundef i64 @llvm.fshl.i64(i64 %i.ank, i64 %i.ank, i64 17)
  %i.anu = xor i64 %i.ans, %i.ant                 ; 2 uses
  store i64 %i.anu, ptr %.sroa.4.0..sroa_idx.i.i10, align 8, !alias.scope !15112, !noalias !15108
  %i.anv = call noundef i64 @llvm.fshl.i64(i64 %i.ans, i64 %i.ans, i64 32) ; 2 uses
  store i64 %i.anv, ptr %.sroa.3.0..sroa_idx.i4.i, align 8, !alias.scope !15112, !noalias !15108
  %i.anw = xor i64 %i.anp, %i.anf                 ; 2 uses
  store i64 %i.anw, ptr %i.at, align 8, !alias.scope !15113, !noalias !15108
  %.not.i.i.i.i64.i.i = icmp eq i64 %i.amw, 0
  %i.anx = sub nuw nsw i64 64, %i.anc
  %i.any = lshr i64 %i.ana, %i.anx
  %.sroa.0.0.i.i.i.i.i.i = select i1 %.not.i.i.i.i64.i.i, i64 0, i64 %i.any
  br label %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCsgpMJJHpo27b_12typst_bundle.exit.i.i.i

bb.fe:                                            ; preds = %_RINvXsS_NtCs3oUPovFnLWP_4core6optionINtB6_6OptionINtNtNtB8_3num7nonzero7NonZerojEENtNtB8_4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECsgpMJJHpo27b_12typst_bundle.exit72.i.i
  %i.anz = add i64 %i.amw, 8
  br label %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCsgpMJJHpo27b_12typst_bundle.exit.i.i.i

_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCsgpMJJHpo27b_12typst_bundle.exit.i.i.i: ; preds = %bb.fe, %bb.fd
  %i.aoa = phi i64 [ %i.anv, %bb.fd ], [ %i.amr, %bb.fe ] ; 3 uses
  %i.aob = phi i64 [ %i.anu, %bb.fd ], [ %i.ams, %bb.fe ] ; 5 uses
  %i.aoc = phi i64 [ %i.anw, %bb.fd ], [ %i.amt, %bb.fe ] ; 3 uses
  %i.aod = phi i64 [ %i.anr, %bb.fd ], [ %i.amu, %bb.fe ] ; 3 uses
  %i.aoe = phi i64 [ %.sroa.0.0.i.i.i.i.i.i, %bb.fd ], [ %i.anf, %bb.fe ] ; 2 uses
  %i.aof = phi i64 [ %i.amw, %bb.fd ], [ %i.anz, %bb.fe ] ; 6 uses
  %.not.i65.i.i = icmp eq i64 %.val.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i65.i.i, label %_RINvXsS_NtCs3oUPovFnLWP_4core6optionINtB6_6OptionINtNtNtB8_3num7nonzero7NonZerojEENtNtB8_4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECsgpMJJHpo27b_12typst_bundle.exit.i.i, label %bb.ff

bb.ff:                                            ; preds = %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCsgpMJJHpo27b_12typst_bundle.exit.i.i.i
  %i.aog = add i64 %i.amx, 16                     ; 2 uses
  %i.aoh = shl i64 %i.aof, 3                      ; 2 uses
  %i.aoi = and i64 %i.aoh, 56
  %i.aoj = shl i64 %.val.i.i.i.i.i.i.i.i, %i.aoi
  %i.aok = or i64 %i.aoj, %i.aoe                  ; 3 uses
  %i.aol = icmp ugt i64 %i.aof, 8
  br i1 %i.aol, label %bb.fh, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.aom = xor i64 %i.aok, %i.aod                 ; 3 uses
  %i.aon = add i64 %i.aoc, %i.aob                 ; 3 uses
  %i.aoo = call noundef i64 @llvm.fshl.i64(i64 %i.aob, i64 %i.aob, i64 13)
  %i.aop = xor i64 %i.aon, %i.aoo                 ; 3 uses
  %i.aoq = call noundef i64 @llvm.fshl.i64(i64 %i.aon, i64 %i.aon, i64 32)
  %i.aor = add i64 %i.aom, %i.aoa                 ; 2 uses
  %i.aos = call noundef i64 @llvm.fshl.i64(i64 %i.aom, i64 %i.aom, i64 16)
  %i.aot = xor i64 %i.aor, %i.aos                 ; 3 uses
  %i.aou = add i64 %i.aot, %i.aoq                 ; 2 uses
  %i.aov = call noundef i64 @llvm.fshl.i64(i64 %i.aot, i64 %i.aot, i64 21)
  %i.aow = xor i64 %i.aov, %i.aou                 ; 2 uses
  store i64 %i.aow, ptr %.sroa.5.0..sroa_idx.i5.i, align 8, !alias.scope !15114, !noalias !15108
  %i.aox = add i64 %i.aor, %i.aop                 ; 3 uses
  %i.aoy = call noundef i64 @llvm.fshl.i64(i64 %i.aop, i64 %i.aop, i64 17)
  %i.aoz = xor i64 %i.aox, %i.aoy                 ; 2 uses
  store i64 %i.aoz, ptr %.sroa.4.0..sroa_idx.i.i10, align 8, !alias.scope !15114, !noalias !15108
  %i.apa = call noundef i64 @llvm.fshl.i64(i64 %i.aox, i64 %i.aox, i64 32) ; 2 uses
  store i64 %i.apa, ptr %.sroa.3.0..sroa_idx.i4.i, align 8, !alias.scope !15114, !noalias !15108
  %i.apb = xor i64 %i.aou, %i.aok                 ; 2 uses
  store i64 %i.apb, ptr %i.at, align 8, !alias.scope !15115, !noalias !15108
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.aof, 0
  %i.apc = sub nuw nsw i64 64, %i.aoh
  %i.apd = lshr i64 %.val.i.i.i.i.i.i.i.i, %i.apc
  %.sroa.0.0.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i, i64 0, i64 %i.apd
  br label %_RINvXsS_NtCs3oUPovFnLWP_4core6optionINtB6_6OptionINtNtNtB8_3num7nonzero7NonZerojEENtNtB8_4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECsgpMJJHpo27b_12typst_bundle.exit.i.i

bb.fh:                                            ; preds = %bb.ff
  %i.ape = add i64 %i.aof, 8
  br label %_RINvXsS_NtCs3oUPovFnLWP_4core6optionINtB6_6OptionINtNtNtB8_3num7nonzero7NonZerojEENtNtB8_4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECsgpMJJHpo27b_12typst_bundle.exit.i.i

_RINvXsS_NtCs3oUPovFnLWP_4core6optionINtB6_6OptionINtNtNtB8_3num7nonzero7NonZerojEENtNtB8_4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECsgpMJJHpo27b_12typst_bundle.exit.i.i: ; preds = %bb.fh, %bb.fg, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCsgpMJJHpo27b_12typst_bundle.exit.i.i.i
  %i.apf = phi i64 [ %i.aoa, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCsgpMJJHpo27b_12typst_bundle.exit.i.i.i ], [ %i.apa, %bb.fg ], [ %i.aoa, %bb.fh ] ; 2 uses
  %i.apg = phi i64 [ %i.aob, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCsgpMJJHpo27b_12typst_bundle.exit.i.i.i ], [ %i.aoz, %bb.fg ], [ %i.aob, %bb.fh ] ; 4 uses
  %i.aph = phi i64 [ %i.aoc, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCsgpMJJHpo27b_12typst_bundle.exit.i.i.i ], [ %i.apb, %bb.fg ], [ %i.aoc, %bb.fh ] ; 2 uses
  %i.api = phi i64 [ %i.aod, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCsgpMJJHpo27b_12typst_bundle.exit.i.i.i ], [ %i.aow, %bb.fg ], [ %i.aod, %bb.fh ] ; 2 uses
  %i.apj = phi i64 [ %i.aoe, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCsgpMJJHpo27b_12typst_bundle.exit.i.i.i ], [ %.sroa.0.0.i.i.i.i.i.i.i, %bb.fg ], [ %i.aok, %bb.fh ]
  %i.apk = phi i64 [ %i.aof, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCsgpMJJHpo27b_12typst_bundle.exit.i.i.i ], [ %i.aof, %bb.fg ], [ %i.ape, %bb.fh ] ; 4 uses
  %i.apl = phi i64 [ %i.anb, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCsgpMJJHpo27b_12typst_bundle.exit.i.i.i ], [ %i.aog, %bb.fg ], [ %i.aog, %bb.fh ]
  %i.apm = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i.i.i.i.i.i, i64 16
  %i.apn = load i8, ptr %i.apm, align 8, !range !49, !alias.scope !15105, !noalias !15106, !noundef !19
  %i.apo = zext nneg i8 %i.apn to i64             ; 2 uses
  %i.app = add i64 %i.apl, 1                      ; 3 uses
  %i.apq = sub i64 8, %i.apk                      ; 2 uses
  %i.apr = shl i64 %i.apk, 3
  %i.aps = and i64 %i.apr, 56
  %i.apt = shl nuw nsw i64 %i.apo, %i.aps
  %i.apu = or i64 %i.apt, %i.apj                  ; 3 uses
  %i.apv = icmp ugt i64 %i.apq, 1
  br i1 %i.apv, label %bb.fj, label %bb.fi

bb.fi:                                            ; preds = %_RINvXsS_NtCs3oUPovFnLWP_4core6optionINtB6_6OptionINtNtNtB8_3num7nonzero7NonZerojEENtNtB8_4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECsgpMJJHpo27b_12typst_bundle.exit.i.i
  %i.apw = xor i64 %i.apu, %i.api                 ; 3 uses
  %i.apx = add i64 %i.aph, %i.apg                 ; 3 uses
  %i.apy = call noundef i64 @llvm.fshl.i64(i64 %i.apg, i64 %i.apg, i64 13)
  %i.apz = xor i64 %i.apx, %i.apy                 ; 3 uses
  %i.aqa = call noundef i64 @llvm.fshl.i64(i64 %i.apx, i64 %i.apx, i64 32)
  %i.aqb = add i64 %i.apw, %i.apf                 ; 2 uses
  %i.aqc = call noundef i64 @llvm.fshl.i64(i64 %i.apw, i64 %i.apw, i64 16)
  %i.aqd = xor i64 %i.aqb, %i.aqc                 ; 3 uses
  %i.aqe = add i64 %i.aqd, %i.aqa                 ; 2 uses
  %i.aqf = call noundef i64 @llvm.fshl.i64(i64 %i.aqd, i64 %i.aqd, i64 21)
  %i.aqg = xor i64 %i.aqf, %i.aqe                 ; 2 uses
  store i64 %i.aqg, ptr %.sroa.5.0..sroa_idx.i5.i, align 8, !alias.scope !15116, !noalias !15108
  %i.aqh = add i64 %i.aqb, %i.apz                 ; 3 uses
  %i.aqi = call noundef i64 @llvm.fshl.i64(i64 %i.apz, i64 %i.apz, i64 17)
  %i.aqj = xor i64 %i.aqh, %i.aqi                 ; 2 uses
  store i64 %i.aqj, ptr %.sroa.4.0..sroa_idx.i.i10, align 8, !alias.scope !15116, !noalias !15108
  %i.aqk = call noundef i64 @llvm.fshl.i64(i64 %i.aqh, i64 %i.aqh, i64 32) ; 2 uses
  store i64 %i.aqk, ptr %.sroa.3.0..sroa_idx.i4.i, align 8, !alias.scope !15116, !noalias !15108
  %i.aql = xor i64 %i.aqe, %i.apu                 ; 2 uses
  store i64 %i.aql, ptr %i.at, align 8, !alias.scope !15117, !noalias !15108
  %i.aqm = add i64 %i.apk, -7
  %i.aqn = shl nuw nsw i64 %i.apq, 3
  %i.aqo = lshr i64 %i.apo, %i.aqn                ; 2 uses
  store i64 %i.aqo, ptr %.sroa.14.0..sroa_idx.i.i12, align 8, !alias.scope !15117, !noalias !15108
  br label %_RINvXs11_NtNtCs3oUPovFnLWP_4core3ops5rangeINtB7_14RangeInclusiveINtNtBb_6option6OptionINtNtNtBb_3num7nonzero7NonZerojEEENtNtBb_4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i.i

bb.fj:                                            ; preds = %_RINvXsS_NtCs3oUPovFnLWP_4core6optionINtB6_6OptionINtNtNtB8_3num7nonzero7NonZerojEENtNtB8_4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECsgpMJJHpo27b_12typst_bundle.exit.i.i
  %i.aqp = add i64 %i.apk, 1
  br label %_RINvXs11_NtNtCs3oUPovFnLWP_4core3ops5rangeINtB7_14RangeInclusiveINtNtBb_6option6OptionINtNtNtBb_3num7nonzero7NonZerojEEENtNtBb_4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i.i

_RINvXs11_NtNtCs3oUPovFnLWP_4core3ops5rangeINtB7_14RangeInclusiveINtNtBb_6option6OptionINtNtNtBb_3num7nonzero7NonZerojEEENtNtBb_4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i.i: ; preds = %bb.fj, %bb.fi
  %i.aqq = phi i64 [ %i.apf, %bb.fj ], [ %i.aqk, %bb.fi ]
  %i.aqr = phi i64 [ %i.apg, %bb.fj ], [ %i.aqj, %bb.fi ]
  %i.aqs = phi i64 [ %i.aph, %bb.fj ], [ %i.aql, %bb.fi ]
  %i.aqt = phi i64 [ %i.api, %bb.fj ], [ %i.aqg, %bb.fi ]
  %i.aqu = phi i64 [ %i.apu, %bb.fj ], [ %i.aqo, %bb.fi ] ; 2 uses
  %.sink.i.i.i.i22.i.i.i.i.i.i = phi i64 [ %i.aqp, %bb.fj ], [ %i.aqm, %bb.fi ] ; 3 uses
  %i.aqv = icmp eq ptr %i.akk, %i.akb
  br i1 %i.aqv, label %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusiveINtNtBa_6option6OptionINtNtNtBa_3num7nonzero7NonZerojEEENtNtBa_4hash4Hash10hash_sliceNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.loopexit.i, label %.lr.ph.i.i.i.i.i.i.i19

_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusiveINtNtBa_6option6OptionINtNtNtBa_3num7nonzero7NonZerojEEENtNtBa_4hash4Hash10hash_sliceNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.loopexit.i: ; preds = %_RINvXs11_NtNtCs3oUPovFnLWP_4core3ops5rangeINtB7_14RangeInclusiveINtNtBb_6option6OptionINtNtNtBb_3num7nonzero7NonZerojEEENtNtBb_4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i.i
  store i64 %.sink.i.i.i.i22.i.i.i.i.i.i, ptr %.sroa.15.0..sroa_idx.i.i13, align 8, !alias.scope !15117, !noalias !15108
  store i64 %i.app, ptr %.sroa.12.0..sroa_idx.i.i11, align 8, !alias.scope !15117, !noalias !15108
  br label %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusiveINtNtBa_6option6OptionINtNtNtBa_3num7nonzero7NonZerojEEENtNtBa_4hash4Hash10hash_sliceNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i

_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusiveINtNtBa_6option6OptionINtNtNtBa_3num7nonzero7NonZerojEEENtNtBa_4hash4Hash10hash_sliceNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i: ; preds = %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusiveINtNtBa_6option6OptionINtNtNtBa_3num7nonzero7NonZerojEEENtNtBa_4hash4Hash10hash_sliceNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.loopexit.i, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher19write_length_prefixCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCsgpMJJHpo27b_12typst_bundle.exit19.i.i.i.i.i.i
  %i.aqw = phi i64 [ %i.ais, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCsgpMJJHpo27b_12typst_bundle.exit19.i.i.i.i.i.i ], [ %.sroa.14.0..sroa_idx.promoted.i.i, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher19write_length_prefixCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i ], [ %i.aqu, %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusiveINtNtBa_6option6OptionINtNtNtBa_3num7nonzero7NonZerojEEENtNtBa_4hash4Hash10hash_sliceNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.loopexit.i ]
  %i.aqx = phi i64 [ %i.ait, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCsgpMJJHpo27b_12typst_bundle.exit19.i.i.i.i.i.i ], [ %.sroa.15.0..sroa_idx.promoted.i.i, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher19write_length_prefixCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i ], [ %.sink.i.i.i.i22.i.i.i.i.i.i, %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusiveINtNtBa_6option6OptionINtNtNtBa_3num7nonzero7NonZerojEEENtNtBa_4hash4Hash10hash_sliceNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.loopexit.i ] ; 5 uses
  %i.aqy = phi i64 [ %i.ahp, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCsgpMJJHpo27b_12typst_bundle.exit19.i.i.i.i.i.i ], [ %i.aiy, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher19write_length_prefixCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i ], [ %i.app, %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusiveINtNtBa_6option6OptionINtNtNtBa_3num7nonzero7NonZerojEEENtNtBa_4hash4Hash10hash_sliceNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.loopexit.i ] ; 3 uses
  %i.aqz = getelementptr inbounds nuw i8, ptr %2, i64 88
  call void @llvm.experimental.noalias.scope.decl(metadata !15118)
  call void @llvm.experimental.noalias.scope.decl(metadata !15119)
  %i.ara = getelementptr inbounds nuw i8, ptr %2, i64 90
  %i.arb = load i8, ptr %i.ara, align 2, !range !15120, !alias.scope !15121, !noalias !15122, !noundef !19
  %i.arc = zext nneg i8 %i.arb to i64             ; 2 uses
  %i.ard = add i64 %i.aqy, 8
  %i.are = shl i64 %i.aqx, 3                      ; 2 uses
  %i.arf = and i64 %i.are, 56
  %i.arg = shl nuw nsw i64 %i.arc, %i.arf
  %i.arh = or i64 %i.arg, %i.aqw                  ; 3 uses
  %i.ari = icmp ugt i64 %i.aqx, 8
  %.promoted30.pre.i.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i10, align 8, !alias.scope !15123, !noalias !15124 ; 4 uses
  br i1 %i.ari, label %bb.fl, label %bb.fk

bb.fk:                                            ; preds = %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusiveINtNtBa_6option6OptionINtNtNtBa_3num7nonzero7NonZerojEEENtNtBa_4hash4Hash10hash_sliceNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i
  %i.arj = load i64, ptr %.sroa.5.0..sroa_idx.i5.i, align 8, !alias.scope !15125, !noalias !15124, !noundef !19
  %i.ark = xor i64 %i.arj, %i.arh                 ; 3 uses
  %i.arl = load i64, ptr %i.at, align 8, !alias.scope !15126, !noalias !15124, !noundef !19
  %i.arm = add i64 %i.arl, %.promoted30.pre.i.i.i.i.i.i.i ; 3 uses
  %i.arn = call noundef i64 @llvm.fshl.i64(i64 %.promoted30.pre.i.i.i.i.i.i.i, i64 %.promoted30.pre.i.i.i.i.i.i.i, i64 13)
  %i.aro = xor i64 %i.arm, %i.arn                 ; 3 uses
  %i.arp = call noundef i64 @llvm.fshl.i64(i64 %i.arm, i64 %i.arm, i64 32)
  %i.arq = load i64, ptr %.sroa.3.0..sroa_idx.i4.i, align 8, !alias.scope !15126, !noalias !15124, !noundef !19
  %i.arr = add i64 %i.arq, %i.ark                 ; 2 uses
  %i.ars = call noundef i64 @llvm.fshl.i64(i64 %i.ark, i64 %i.ark, i64 16)
  %i.art = xor i64 %i.arr, %i.ars                 ; 3 uses
  %i.aru = add i64 %i.art, %i.arp                 ; 2 uses
  %i.arv = call noundef i64 @llvm.fshl.i64(i64 %i.art, i64 %i.art, i64 21)
  %i.arw = xor i64 %i.arv, %i.aru                 ; 2 uses
  store i64 %i.arw, ptr %.sroa.5.0..sroa_idx.i5.i, align 8, !alias.scope !15126, !noalias !15124
  %i.arx = add i64 %i.arr, %i.aro                 ; 3 uses
  %i.ary = call noundef i64 @llvm.fshl.i64(i64 %i.aro, i64 %i.aro, i64 17)
  %i.arz = xor i64 %i.arx, %i.ary                 ; 2 uses
  store i64 %i.arz, ptr %.sroa.4.0..sroa_idx.i.i10, align 8, !alias.scope !15126, !noalias !15124
  %i.asa = call noundef i64 @llvm.fshl.i64(i64 %i.arx, i64 %i.arx, i64 32) ; 2 uses
  store i64 %i.asa, ptr %.sroa.3.0..sroa_idx.i4.i, align 8, !alias.scope !15126, !noalias !15124
  %i.asb = xor i64 %i.aru, %i.arh                 ; 2 uses
  store i64 %i.asb, ptr %i.at, align 8, !alias.scope !15125, !noalias !15124
  %.not.i.i.i23.i.i.i.i.i.i = icmp eq i64 %i.aqx, 0
  %i.asc = sub nuw nsw i64 64, %i.are
  %i.asd = lshr i64 %i.arc, %i.asc
  %.sroa.0.0.i.i.i24.i.i.i.i.i.i = select i1 %.not.i.i.i23.i.i.i.i.i.i, i64 0, i64 %i.asd
  br label %_RNvXs9_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_usize.exit.i.i.i.i.i.i.i

bb.fl:                                            ; preds = %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusiveINtNtBa_6option6OptionINtNtNtBa_3num7nonzero7NonZerojEEENtNtBa_4hash4Hash10hash_sliceNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i
  %i.ase = add i64 %i.aqx, 8
  %.promoted26.pre.i.i.i.i.i.i.i = load i64, ptr %i.at, align 8, !alias.scope !15123, !noalias !15124
  %.promoted29.pre.i.i.i.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i5.i, align 8, !alias.scope !15123, !noalias !15124
  %.promoted31.pre.i.i.i.i.i.i.i = load i64, ptr %.sroa.3.0..sroa_idx.i4.i, align 8, !alias.scope !15123, !noalias !15124
  br label %_RNvXs9_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_usize.exit.i.i.i.i.i.i.i

_RNvXs9_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_usize.exit.i.i.i.i.i.i.i: ; preds = %bb.fl, %bb.fk
  %.promoted31.i.i.i.i.i.i.i = phi i64 [ %i.asa, %bb.fk ], [ %.promoted31.pre.i.i.i.i.i.i.i, %bb.fl ] ; 3 uses
  %.promoted30.i.i.i.i.i.i.i = phi i64 [ %i.arz, %bb.fk ], [ %.promoted30.pre.i.i.i.i.i.i.i, %bb.fl ] ; 5 uses
  %.promoted29.i.i.i.i.i.i.i = phi i64 [ %i.arw, %bb.fk ], [ %.promoted29.pre.i.i.i.i.i.i.i, %bb.fl ] ; 3 uses
  %.promoted26.i.i.i.i.i.i.i = phi i64 [ %i.asb, %bb.fk ], [ %.promoted26.pre.i.i.i.i.i.i.i, %bb.fl ] ; 3 uses
  %.promoted25.i.i.i.i.i.i.i = phi i64 [ %.sroa.0.0.i.i.i24.i.i.i.i.i.i, %bb.fk ], [ %i.arh, %bb.fl ] ; 2 uses
  %.promoted24.i.i.i.i.i.i.i = phi i64 [ %i.aqx, %bb.fk ], [ %i.ase, %bb.fl ] ; 6 uses
  %i.asf = load i8, ptr %i.aqz, align 8, !range !49, !alias.scope !15121, !noalias !15122, !noundef !19 ; 2 uses
  %i.asg = getelementptr inbounds nuw i8, ptr %2, i64 89
  %i.ash = load i8, ptr %i.asg, align 1, !range !15127, !alias.scope !15121, !noalias !15122, !noundef !19
  %spec.select.i.i.i.i.i.i.i.i = call i8 @llvm.umin.i8(i8 range(i8 -1, 11) %i.ash, i8 -2) ; 2 uses
  %.not3.i.i.peel.i.peel.i.i.i.i.i = icmp eq i8 %spec.select.i.i.i.i.i.i.i.i, -2 ; 2 uses
  br i1 %.not3.i.i.peel.i.peel.i.i.i.i.i, label %.split.i.i.peel.i.peel.i.i.i.i.i, label %_RNvXsI_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtBb_5array4iter8IntoIterINtNtBb_6option6OptionNtNtNtCsidf7BFzONoc_6krilla9configure8validate9ValidatorEKj2_EINtB1I_8IntoIterB21_EENtNtNtB9_6traits8iterator8Iterator4nextCsgpMJJHpo27b_12typst_bundle.exit.i.i.peel.i.i.i.i.i

.split.i.i.peel.i.peel.i.i.i.i.i:                 ; preds = %_RNvXs9_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_usize.exit.i.i.i.i.i.i.i
  %.not3.i.i.i.i.i.i.i.i = icmp eq i8 %i.asf, 0
  br i1 %.not3.i.i.i.i.i.i.i.i, label %_RINvXs3_Cs8jFhWeO2DFb_9typst_pdfNtB6_12PdfStandardsNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i, label %_RNvXsI_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtBb_5array4iter8IntoIterINtNtBb_6option6OptionNtNtNtCsidf7BFzONoc_6krilla9configure8validate9ValidatorEKj2_EINtB1I_8IntoIterB21_EENtNtNtB9_6traits8iterator8Iterator4nextCsgpMJJHpo27b_12typst_bundle.exit.i.i.peel.i.i.i.i.i

_RNvXsI_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtBb_5array4iter8IntoIterINtNtBb_6option6OptionNtNtNtCsidf7BFzONoc_6krilla9configure8validate9ValidatorEKj2_EINtB1I_8IntoIterB21_EENtNtNtB9_6traits8iterator8Iterator4nextCsgpMJJHpo27b_12typst_bundle.exit.i.i.peel.i.i.i.i.i: ; preds = %.split.i.i.peel.i.peel.i.i.i.i.i, %_RNvXs9_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_usize.exit.i.i.i.i.i.i.i
  %.lcssa.i.peel.i.i.i.i.i = phi i8 [ %spec.select.i.i.i.i.i.i.i.i, %_RNvXs9_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_usize.exit.i.i.i.i.i.i.i ], [ -1, %.split.i.i.peel.i.peel.i.i.i.i.i ] ; 2 uses
  %i.asi = icmp eq i8 %.lcssa.i.peel.i.i.i.i.i, -1 ; 2 uses
  %i.asj = zext i1 %i.asi to i64                  ; 2 uses
  %i.ask = add i64 %i.aqy, 16
  %i.asl = shl i64 %.promoted24.i.i.i.i.i.i.i, 3  ; 2 uses
  %i.asm = and i64 %i.asl, 56
  %i.asn = shl nuw nsw i64 %i.asj, %i.asm
  %i.aso = or i64 %i.asn, %.promoted25.i.i.i.i.i.i.i ; 3 uses
  %i.asp = icmp ugt i64 %.promoted24.i.i.i.i.i.i.i, 8
  br i1 %i.asp, label %bb.fn, label %bb.fm

bb.fm:                                            ; preds = %_RNvXsI_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtBb_5array4iter8IntoIterINtNtBb_6option6OptionNtNtNtCsidf7BFzONoc_6krilla9configure8validate9ValidatorEKj2_EINtB1I_8IntoIterB21_EENtNtNtB9_6traits8iterator8Iterator4nextCsgpMJJHpo27b_12typst_bundle.exit.i.i.peel.i.i.i.i.i
  %i.asq = xor i64 %i.aso, %.promoted29.i.i.i.i.i.i.i ; 3 uses
  %i.asr = add i64 %.promoted26.i.i.i.i.i.i.i, %.promoted30.i.i.i.i.i.i.i ; 3 uses
  %i.ass = call noundef i64 @llvm.fshl.i64(i64 %.promoted30.i.i.i.i.i.i.i, i64 %.promoted30.i.i.i.i.i.i.i, i64 13)
  %i.ast = xor i64 %i.asr, %i.ass                 ; 3 uses
  %i.asu = call noundef i64 @llvm.fshl.i64(i64 %i.asr, i64 %i.asr, i64 32)
  %i.asv = add i64 %i.asq, %.promoted31.i.i.i.i.i.i.i ; 2 uses
  %i.asw = call noundef i64 @llvm.fshl.i64(i64 %i.asq, i64 %i.asq, i64 16)
  %i.asx = xor i64 %i.asv, %i.asw                 ; 3 uses
  %i.asy = add i64 %i.asx, %i.asu                 ; 2 uses
  %i.asz = call noundef i64 @llvm.fshl.i64(i64 %i.asx, i64 %i.asx, i64 21)
  %i.ata = xor i64 %i.asz, %i.asy                 ; 2 uses
  store i64 %i.ata, ptr %.sroa.5.0..sroa_idx.i5.i, align 8, !alias.scope !15128, !noalias !15124
  %i.atb = add i64 %i.asv, %i.ast                 ; 3 uses
  %i.atc = call noundef i64 @llvm.fshl.i64(i64 %i.ast, i64 %i.ast, i64 17)
  %i.atd = xor i64 %i.atb, %i.atc                 ; 2 uses
  store i64 %i.atd, ptr %.sroa.4.0..sroa_idx.i.i10, align 8, !alias.scope !15128, !noalias !15124
  %i.ate = call noundef i64 @llvm.fshl.i64(i64 %i.atb, i64 %i.atb, i64 32) ; 2 uses
  store i64 %i.ate, ptr %.sroa.3.0..sroa_idx.i4.i, align 8, !alias.scope !15128, !noalias !15124
  %i.atf = xor i64 %i.asy, %i.aso                 ; 2 uses
  store i64 %i.atf, ptr %i.at, align 8, !alias.scope !15129, !noalias !15124
  %.not.i.i.i.i26.i.peel.i.i.i.i.i = icmp eq i64 %.promoted24.i.i.i.i.i.i.i, 0
  %i.atg = sub nuw nsw i64 64, %i.asl
  %i.ath = lshr i64 %i.asj, %i.atg
  %.sroa.0.0.i.i.i.i27.i.peel.i.i.i.i.i = select i1 %.not.i.i.i.i26.i.peel.i.i.i.i.i, i64 0, i64 %i.ath
  br label %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCsgpMJJHpo27b_12typst_bundle.exit.i28.i.peel.i.i.i.i.i

bb.fn:                                            ; preds = %_RNvXsI_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtBb_5array4iter8IntoIterINtNtBb_6option6OptionNtNtNtCsidf7BFzONoc_6krilla9configure8validate9ValidatorEKj2_EINtB1I_8IntoIterB21_EENtNtNtB9_6traits8iterator8Iterator4nextCsgpMJJHpo27b_12typst_bundle.exit.i.i.peel.i.i.i.i.i
  %i.ati = add i64 %.promoted24.i.i.i.i.i.i.i, 8
  br label %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCsgpMJJHpo27b_12typst_bundle.exit.i28.i.peel.i.i.i.i.i

_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCsgpMJJHpo27b_12typst_bundle.exit.i28.i.peel.i.i.i.i.i: ; preds = %bb.fn, %bb.fm
  %i.atj = phi i64 [ %.promoted31.i.i.i.i.i.i.i, %bb.fn ], [ %i.ate, %bb.fm ] ; 3 uses
  %i.atk = phi i64 [ %.promoted30.i.i.i.i.i.i.i, %bb.fn ], [ %i.atd, %bb.fm ] ; 5 uses
  %i.atl = phi i64 [ %.promoted29.i.i.i.i.i.i.i, %bb.fn ], [ %i.ata, %bb.fm ] ; 3 uses
  %i.atm = phi i64 [ %.promoted26.i.i.i.i.i.i.i, %bb.fn ], [ %i.atf, %bb.fm ] ; 3 uses
  %i.atn = phi i64 [ %i.aso, %bb.fn ], [ %.sroa.0.0.i.i.i.i27.i.peel.i.i.i.i.i, %bb.fm ] ; 2 uses
  %i.ato = phi i64 [ %i.ati, %bb.fn ], [ %.promoted24.i.i.i.i.i.i.i, %bb.fm ] ; 6 uses
  br i1 %i.asi, label %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCsgpMJJHpo27b_12typst_bundle.exit8.i.i.peel.i.i.i.i.i, label %bb.fo

bb.fo:                                            ; preds = %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCsgpMJJHpo27b_12typst_bundle.exit.i28.i.peel.i.i.i.i.i
  %i.atp = zext nneg i8 %.lcssa.i.peel.i.i.i.i.i to i64 ; 2 uses
  %i.atq = add i64 %i.aqy, 24                     ; 2 uses
  %i.atr = shl i64 %i.ato, 3                      ; 2 uses
  %i.ats = and i64 %i.atr, 56
  %i.att = shl nuw nsw i64 %i.atp, %i.ats
  %i.atu = or i64 %i.att, %i.atn                  ; 3 uses
  %i.atv = icmp ugt i64 %i.ato, 8
  br i1 %i.atv, label %bb.fq, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  %i.atw = xor i64 %i.atu, %i.atl                 ; 3 uses
  %i.atx = add i64 %i.atm, %i.atk                 ; 3 uses
  %i.aty = call noundef i64 @llvm.fshl.i64(i64 %i.atk, i64 %i.atk, i64 13)
  %i.atz = xor i64 %i.atx, %i.aty                 ; 3 uses
  %i.aua = call noundef i64 @llvm.fshl.i64(i64 %i.atx, i64 %i.atx, i64 32)
  %i.aub = add i64 %i.atw, %i.atj                 ; 2 uses
  %i.auc = call noundef i64 @llvm.fshl.i64(i64 %i.atw, i64 %i.atw, i64 16)
  %i.aud = xor i64 %i.aub, %i.auc                 ; 3 uses
  %i.aue = add i64 %i.aud, %i.aua                 ; 2 uses
  %i.auf = call noundef i64 @llvm.fshl.i64(i64 %i.aud, i64 %i.aud, i64 21)
  %i.aug = xor i64 %i.auf, %i.aue                 ; 2 uses
  store i64 %i.aug, ptr %.sroa.5.0..sroa_idx.i5.i, align 8, !alias.scope !15130, !noalias !15124
  %i.auh = add i64 %i.aub, %i.atz                 ; 3 uses
  %i.aui = call noundef i64 @llvm.fshl.i64(i64 %i.atz, i64 %i.atz, i64 17)
  %i.auj = xor i64 %i.auh, %i.aui                 ; 2 uses
  store i64 %i.auj, ptr %.sroa.4.0..sroa_idx.i.i10, align 8, !alias.scope !15130, !noalias !15124
  %i.auk = call noundef i64 @llvm.fshl.i64(i64 %i.auh, i64 %i.auh, i64 32) ; 2 uses
  store i64 %i.auk, ptr %.sroa.3.0..sroa_idx.i4.i, align 8, !alias.scope !15130, !noalias !15124
  %i.aul = xor i64 %i.aue, %i.atu                 ; 2 uses
  store i64 %i.aul, ptr %i.at, align 8, !alias.scope !15131, !noalias !15124
  %.not.i.i.i6.i.i.peel.i.i.i.i.i = icmp eq i64 %i.ato, 0
  %i.aum = sub nuw nsw i64 64, %i.atr
  %i.aun = lshr i64 %i.atp, %i.aum
  %.sroa.0.0.i.i.i7.i.i.peel.i.i.i.i.i = select i1 %.not.i.i.i6.i.i.peel.i.i.i.i.i, i64 0, i64 %i.aun
  br label %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCsgpMJJHpo27b_12typst_bundle.exit8.i.i.peel.i.i.i.i.i

bb.fq:                                            ; preds = %bb.fo
  %i.auo = add i64 %i.ato, 8                      ; 2 uses
  store i64 %i.auo, ptr %.sroa.15.0..sroa_idx.i.i13, align 8, !alias.scope !15131, !noalias !15124
  br label %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCsgpMJJHpo27b_12typst_bundle.exit8.i.i.peel.i.i.i.i.i

_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCsgpMJJHpo27b_12typst_bundle.exit8.i.i.peel.i.i.i.i.i: ; preds = %bb.fq, %bb.fp, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCsgpMJJHpo27b_12typst_bundle.exit.i28.i.peel.i.i.i.i.i
  %i.aup = phi i64 [ %i.atj, %bb.fq ], [ %i.auk, %bb.fp ], [ %i.atj, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCsgpMJJHpo27b_12typst_bundle.exit.i28.i.peel.i.i.i.i.i ] ; 3 uses
  %i.auq = phi i64 [ %i.atk, %bb.fq ], [ %i.auj, %bb.fp ], [ %i.atk, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCsgpMJJHpo27b_12typst_bundle.exit.i28.i.peel.i.i.i.i.i ] ; 5 uses
  %i.aur = phi i64 [ %i.atl, %bb.fq ], [ %i.aug, %bb.fp ], [ %i.atl, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCsgpMJJHpo27b_12typst_bundle.exit.i28.i.peel.i.i.i.i.i ] ; 3 uses
  %i.aus = phi i64 [ %i.atm, %bb.fq ], [ %i.aul, %bb.fp ], [ %i.atm, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCsgpMJJHpo27b_12typst_bundle.exit.i28.i.peel.i.i.i.i.i ] ; 3 uses
  %i.aut = phi i64 [ %i.atu, %bb.fq ], [ %.sroa.0.0.i.i.i7.i.i.peel.i.i.i.i.i, %bb.fp ], [ %i.atn, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCsgpMJJHpo27b_12typst_bundle.exit.i28.i.peel.i.i.i.i.i ] ; 2 uses
  %i.auu = phi i64 [ %i.auo, %bb.fq ], [ %i.ato, %bb.fp ], [ %i.ato, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCsgpMJJHpo27b_12typst_bundle.exit.i28.i.peel.i.i.i.i.i ] ; 5 uses
  %i.auv = phi i64 [ %i.atq, %bb.fq ], [ %i.atq, %bb.fp ], [ %i.ask, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCsgpMJJHpo27b_12typst_bundle.exit.i28.i.peel.i.i.i.i.i ] ; 2 uses
  %.not3.i.i.peel.i.i.i.i.i.i = icmp eq i8 %i.asf, 0
  %or.cond.i.i.i.i.i = or i1 %.not3.i.i.peel.i.i.i.i.i.i, %.not3.i.i.peel.i.peel.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i, label %_RINvXs3_Cs8jFhWeO2DFb_9typst_pdfNtB6_12PdfStandardsNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i, label %_RNvXsI_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtBb_5array4iter8IntoIterINtNtBb_6option6OptionNtNtNtCsidf7BFzONoc_6krilla9configure8validate9ValidatorEKj2_EINtB1I_8IntoIterB21_EENtNtNtB9_6traits8iterator8Iterator4nextCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i.i

_RNvXsI_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtBb_5array4iter8IntoIterINtNtBb_6option6OptionNtNtNtCsidf7BFzONoc_6krilla9configure8validate9ValidatorEKj2_EINtB1I_8IntoIterB21_EENtNtNtB9_6traits8iterator8Iterator4nextCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i.i: ; preds = %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCsgpMJJHpo27b_12typst_bundle.exit8.i.i.peel.i.i.i.i.i
  %i.auw = add i64 %i.auv, 8                      ; 2 uses
  %i.aux = shl i64 %i.auu, 3                      ; 2 uses
  %i.auy = and i64 %i.aux, 56
  %i.auz = shl nuw nsw i64 1, %i.auy
  %i.ava = or i64 %i.auz, %i.aut                  ; 3 uses
  %i.avb = icmp ugt i64 %i.auu, 8
  br i1 %i.avb, label %bb.fs, label %bb.fr

bb.fr:                                            ; preds = %_RNvXsI_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtBb_5array4iter8IntoIterINtNtBb_6option6OptionNtNtNtCsidf7BFzONoc_6krilla9configure8validate9ValidatorEKj2_EINtB1I_8IntoIterB21_EENtNtNtB9_6traits8iterator8Iterator4nextCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i.i
  %i.avc = xor i64 %i.ava, %i.aur                 ; 3 uses
  %i.avd = add i64 %i.aus, %i.auq                 ; 3 uses
  %i.ave = call noundef i64 @llvm.fshl.i64(i64 %i.auq, i64 %i.auq, i64 13)
  %i.avf = xor i64 %i.avd, %i.ave                 ; 3 uses
  %i.avg = call noundef i64 @llvm.fshl.i64(i64 %i.avd, i64 %i.avd, i64 32)
  %i.avh = add i64 %i.avc, %i.aup                 ; 2 uses
  %i.avi = call noundef i64 @llvm.fshl.i64(i64 %i.avc, i64 %i.avc, i64 16)
  %i.avj = xor i64 %i.avh, %i.avi                 ; 3 uses
end_hunk_1
begin_hunk_2_@llvm.umin.i8
!11391 = distinct !{!11391, !11389, !"_RNvXs3_NvNtCsdaEETE4DqmE_13typst_library6engines0_1__NtB5_12___ComemoCallNtNtCs3oUPovFnLWP_4core5clone5Clone5clone: argument 1"}
!11392 = distinct !{!11392, !"_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getBO_ECsgpMJJHpo27b_12typst_bundle"}
!11393 = distinct !{!11393, !11392, !"_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getBO_ECsgpMJJHpo27b_12typst_bundle: argument 0"}
!11394 = distinct !{!11394, !"_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_BU_E0ECsgpMJJHpo27b_12typst_bundle"}
!11395 = distinct !{!11395, !11394, !"_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_BU_E0ECsgpMJJHpo27b_12typst_bundle: argument 0"}
!11396 = distinct !{!11396, !"_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner10find_inner"}
!11397 = distinct !{!11397, !11396, !"_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 0"}
!11398 = distinct !{!11398, !11394, !"_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_BU_E0ECsgpMJJHpo27b_12typst_bundle: argument 1"}
!11399 = distinct !{!11399, !11396, !"_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 1"}
!11400 = distinct !{!11400, !"_RNvNtNtNtCs3oUPovFnLWP_4core9core_arch3x864sse215__mm_loadu_si128"}
!11401 = distinct !{!11401, !11400, !"_RNvNtNtNtCs3oUPovFnLWP_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!11402 = distinct !{!11402, !"_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdEE4findNCINvNtBa_3map14equivalent_keyBS_BS_BW_E0E0CsgpMJJHpo27b_12typst_bundle"}
!11403 = distinct !{!11403, !11402, !"_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdEE4findNCINvNtBa_3map14equivalent_keyBS_BS_BW_E0E0CsgpMJJHpo27b_12typst_bundle: argument 0"}
!11404 = distinct !{!11404, !"_RNCINvMs_NtCsloFShupyl5J_6comemo7memoizeINtB7_9CacheDataINtNvNtB9_5inputs6_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1s_13introspection12introspector1__12___ComemoCallNtNvNtB1s_6engine1__12___ComemoCallNtNvB3f_s_1__12___ComemoCallNtNvB3f_s0_1__12___ComemoCalluuEINtNtCs3oUPovFnLWP_4core6result6ResultNtCsgpMJJHpo27b_12typst_bundle6BundleINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1s_4diag16SourceDiagnosticEEE6lookupINtBX_5MultiTINtNtB9_5track7TrackedDNtB1s_5WorldEL_B1o_ERINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtB1s_7LibraryEIB7n_DNtB2i_12IntrospectorEL_B2e_EIB7n_NtB3f_6TracedB3b_EINtB7p_10TrackedMutNtB3f_4SinkB3K_EIB7n_NtB3f_5RouteB4c_ERNtNtNtB1s_11foundations7content7ContentNtNtBaY_6styles10StyleChainEEEs_0B5m_"}
!11405 = distinct !{!11405, !11404, !"_RNCINvMs_NtCsloFShupyl5J_6comemo7memoizeINtB7_9CacheDataINtNvNtB9_5inputs6_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1s_13introspection12introspector1__12___ComemoCallNtNvNtB1s_6engine1__12___ComemoCallNtNvB3f_s_1__12___ComemoCallNtNvB3f_s0_1__12___ComemoCalluuEINtNtCs3oUPovFnLWP_4core6result6ResultNtCsgpMJJHpo27b_12typst_bundle6BundleINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1s_4diag16SourceDiagnosticEEE6lookupINtBX_5MultiTINtNtB9_5track7TrackedDNtB1s_5WorldEL_B1o_ERINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtB1s_7LibraryEIB7n_DNtB2i_12IntrospectorEL_B2e_EIB7n_NtB3f_6TracedB3b_EINtB7p_10TrackedMutNtB3f_4SinkB3K_EIB7n_NtB3f_5RouteB4c_ERNtNtNtB1s_11foundations7content7ContentNtNtBaY_6styles10StyleChainEEEs_0B5m_: argument 0"}
!11406 = distinct !{!11406, !"_RINvXNvNtCsloFShupyl5J_6comemo5inputs6_1__INtB5_5MultiTINtNtB7_5track7TrackedDNtCsdaEETE4DqmE_13typst_library5WorldEL_NtNvB1g_1__12___ComemoCallERINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtB1g_7LibraryEIBS_DNtNtNtB1g_13introspection12introspector12IntrospectorEL_NtNvB3q_1__12___ComemoCallEIBS_NtNtB1g_6engine6TracedNtNvB4P_1__12___ComemoCallEINtBU_10TrackedMutNtB4P_4SinkNtNvB4P_s_1__12___ComemoCallEIBS_NtB4P_5RouteNtNvB4P_s0_1__12___ComemoCallERNtNtNtB1g_11foundations7content7ContentNtNtB7l_6styles10StyleChainEENtB5_5Input6attachRINtNtB7_10constraint10ConstraintINtB3_9MultiCallB1S_uB4i_B59_B63_B6M_uuEEECsgpMJJHpo27b_12typst_bundle"}
!11407 = distinct !{!11407, !11406, !"_RINvXNvNtCsloFShupyl5J_6comemo5inputs6_1__INtB5_5MultiTINtNtB7_5track7TrackedDNtCsdaEETE4DqmE_13typst_library5WorldEL_NtNvB1g_1__12___ComemoCallERINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtB1g_7LibraryEIBS_DNtNtNtB1g_13introspection12introspector12IntrospectorEL_NtNvB3q_1__12___ComemoCallEIBS_NtNtB1g_6engine6TracedNtNvB4P_1__12___ComemoCallEINtBU_10TrackedMutNtB4P_4SinkNtNvB4P_s_1__12___ComemoCallEIBS_NtB4P_5RouteNtNvB4P_s0_1__12___ComemoCallERNtNtNtB1g_11foundations7content7ContentNtNtB7l_6styles10StyleChainEENtB5_5Input6attachRINtNtB7_10constraint10ConstraintINtB3_9MultiCallB1S_uB4i_B59_B63_B6M_uuEEECsgpMJJHpo27b_12typst_bundle: argument 0"}
!11408 = distinct !{!11408, !11406, !"_RINvXNvNtCsloFShupyl5J_6comemo5inputs6_1__INtB5_5MultiTINtNtB7_5track7TrackedDNtCsdaEETE4DqmE_13typst_library5WorldEL_NtNvB1g_1__12___ComemoCallERINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtB1g_7LibraryEIBS_DNtNtNtB1g_13introspection12introspector12IntrospectorEL_NtNvB3q_1__12___ComemoCallEIBS_NtNtB1g_6engine6TracedNtNvB4P_1__12___ComemoCallEINtBU_10TrackedMutNtB4P_4SinkNtNvB4P_s_1__12___ComemoCallEIBS_NtB4P_5RouteNtNvB4P_s0_1__12___ComemoCallERNtNtNtB1g_11foundations7content7ContentNtNtB7l_6styles10StyleChainEENtB5_5Input6attachRINtNtB7_10constraint10ConstraintINtB3_9MultiCallB1S_uB4i_B59_B63_B6M_uuEEECsgpMJJHpo27b_12typst_bundle: argument 1"}
!11409 = distinct !{!11409, !"_RINvXs_NtCsloFShupyl5J_6comemo5inputINtNtB7_5track7TrackedDNtCsdaEETE4DqmE_13typst_library5WorldEL_NtNvBX_1__12___ComemoCallENtB5_5Input6attachINtNvB5_s6_1__10MappedSinkKj0_RINtNtB7_10constraint10ConstraintINtB2k_9MultiCallB1z_uNtNvNtNtBX_13introspection12introspector1__12___ComemoCallNtNvNtBX_6engine1__12___ComemoCallNtNvB4E_s_1__12___ComemoCallNtNvB4E_s0_1__12___ComemoCalluuEEEECsgpMJJHpo27b_12typst_bundle"}
!11410 = distinct !{!11410, !11409, !"_RINvXs_NtCsloFShupyl5J_6comemo5inputINtNtB7_5track7TrackedDNtCsdaEETE4DqmE_13typst_library5WorldEL_NtNvBX_1__12___ComemoCallENtB5_5Input6attachINtNvB5_s6_1__10MappedSinkKj0_RINtNtB7_10constraint10ConstraintINtB2k_9MultiCallB1z_uNtNvNtNtBX_13introspection12introspector1__12___ComemoCallNtNvNtBX_6engine1__12___ComemoCallNtNvB4E_s_1__12___ComemoCallNtNvB4E_s0_1__12___ComemoCalluuEEEECsgpMJJHpo27b_12typst_bundle: argument 0"}
!11411 = distinct !{!11411, !11409, !"_RINvXs_NtCsloFShupyl5J_6comemo5inputINtNtB7_5track7TrackedDNtCsdaEETE4DqmE_13typst_library5WorldEL_NtNvBX_1__12___ComemoCallENtB5_5Input6attachINtNvB5_s6_1__10MappedSinkKj0_RINtNtB7_10constraint10ConstraintINtB2k_9MultiCallB1z_uNtNvNtNtBX_13introspection12introspector1__12___ComemoCallNtNvNtBX_6engine1__12___ComemoCallNtNvB4E_s_1__12___ComemoCallNtNvB4E_s0_1__12___ComemoCalluuEEEECsgpMJJHpo27b_12typst_bundle: argument 1"}
!11412 = distinct !{!11412, !"_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionINtNtCsloFShupyl5J_6comemo5input10MergedSinkINtNvBK_s6_1__10MappedSinkKj0_RINtNtBM_10constraint10ConstraintINtB1s_9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB2L_13introspection12introspector1__12___ComemoCallNtNvNtB2L_6engine1__12___ComemoCallNtNvB4y_s_1__12___ComemoCallNtNvB4y_s0_1__12___ComemoCalluuEEEEE6insertCsgpMJJHpo27b_12typst_bundle"}
!11413 = distinct !{!11413, !11412, !"_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionINtNtCsloFShupyl5J_6comemo5input10MergedSinkINtNvBK_s6_1__10MappedSinkKj0_RINtNtBM_10constraint10ConstraintINtB1s_9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB2L_13introspection12introspector1__12___ComemoCallNtNvNtB2L_6engine1__12___ComemoCallNtNvB4y_s_1__12___ComemoCallNtNvB4y_s0_1__12___ComemoCalluuEEEEE6insertCsgpMJJHpo27b_12typst_bundle: argument 1"}
!11414 = distinct !{!11414, !11412, !"_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionINtNtCsloFShupyl5J_6comemo5input10MergedSinkINtNvBK_s6_1__10MappedSinkKj0_RINtNtBM_10constraint10ConstraintINtB1s_9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB2L_13introspection12introspector1__12___ComemoCallNtNvNtB2L_6engine1__12___ComemoCallNtNvB4y_s_1__12___ComemoCallNtNvB4y_s0_1__12___ComemoCalluuEEEEE6insertCsgpMJJHpo27b_12typst_bundle: argument 0"}
!11415 = distinct !{!11415, !"_RINvXs_NtCsloFShupyl5J_6comemo5inputINtNtB7_5track7TrackedDNtNtNtCsdaEETE4DqmE_13typst_library13introspection12introspector12IntrospectorEL_NtNvBX_1__12___ComemoCallENtB5_5Input6attachINtNvB5_s6_1__10MappedSinkKj2_RINtNtB7_10constraint10ConstraintINtB2Z_9MultiCallNtNvB11_1__12___ComemoCalluB2e_NtNvNtB11_6engine1__12___ComemoCallNtNvB4N_s_1__12___ComemoCallNtNvB4N_s0_1__12___ComemoCalluuEEEECsgpMJJHpo27b_12typst_bundle"}
!11416 = distinct !{!11416, !11415, !"_RINvXs_NtCsloFShupyl5J_6comemo5inputINtNtB7_5track7TrackedDNtNtNtCsdaEETE4DqmE_13typst_library13introspection12introspector12IntrospectorEL_NtNvBX_1__12___ComemoCallENtB5_5Input6attachINtNvB5_s6_1__10MappedSinkKj2_RINtNtB7_10constraint10ConstraintINtB2Z_9MultiCallNtNvB11_1__12___ComemoCalluB2e_NtNvNtB11_6engine1__12___ComemoCallNtNvB4N_s_1__12___ComemoCallNtNvB4N_s0_1__12___ComemoCalluuEEEECsgpMJJHpo27b_12typst_bundle: argument 0"}
!11417 = distinct !{!11417, !11415, !"_RINvXs_NtCsloFShupyl5J_6comemo5inputINtNtB7_5track7TrackedDNtNtNtCsdaEETE4DqmE_13typst_library13introspection12introspector12IntrospectorEL_NtNvBX_1__12___ComemoCallENtB5_5Input6attachINtNvB5_s6_1__10MappedSinkKj2_RINtNtB7_10constraint10ConstraintINtB2Z_9MultiCallNtNvB11_1__12___ComemoCalluB2e_NtNvNtB11_6engine1__12___ComemoCallNtNvB4N_s_1__12___ComemoCallNtNvB4N_s0_1__12___ComemoCalluuEEEECsgpMJJHpo27b_12typst_bundle: argument 1"}
!11418 = distinct !{!11418, !"_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionINtNtCsloFShupyl5J_6comemo5input10MergedSinkINtNvBK_s6_1__10MappedSinkKj2_RINtNtBM_10constraint10ConstraintINtB1s_9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB2L_13introspection12introspector1__12___ComemoCallNtNvNtB2L_6engine1__12___ComemoCallNtNvB4y_s_1__12___ComemoCallNtNvB4y_s0_1__12___ComemoCalluuEEEEE6insertCsgpMJJHpo27b_12typst_bundle"}
!11419 = distinct !{!11419, !11418, !"_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionINtNtCsloFShupyl5J_6comemo5input10MergedSinkINtNvBK_s6_1__10MappedSinkKj2_RINtNtBM_10constraint10ConstraintINtB1s_9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB2L_13introspection12introspector1__12___ComemoCallNtNvNtB2L_6engine1__12___ComemoCallNtNvB4y_s_1__12___ComemoCallNtNvB4y_s0_1__12___ComemoCalluuEEEEE6insertCsgpMJJHpo27b_12typst_bundle: argument 1"}
!11420 = distinct !{!11420, !11418, !"_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionINtNtCsloFShupyl5J_6comemo5input10MergedSinkINtNvBK_s6_1__10MappedSinkKj2_RINtNtBM_10constraint10ConstraintINtB1s_9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB2L_13introspection12introspector1__12___ComemoCallNtNvNtB2L_6engine1__12___ComemoCallNtNvB4y_s_1__12___ComemoCallNtNvB4y_s0_1__12___ComemoCalluuEEEEE6insertCsgpMJJHpo27b_12typst_bundle: argument 0"}
!11421 = distinct !{!11421, !"_RINvXs_NtCsloFShupyl5J_6comemo5inputINtNtB7_5track7TrackedNtNtCsdaEETE4DqmE_13typst_library6engine6TracedNtNvBW_1__12___ComemoCallENtB5_5Input6attachINtNvB5_s6_1__10MappedSinkKj3_RINtNtB7_10constraint10ConstraintINtB2q_9MultiCallNtNvBY_1__12___ComemoCalluNtNvNtNtBY_13introspection12introspector1__12___ComemoCallB1F_NtNvBW_s_1__12___ComemoCallNtNvBW_s0_1__12___ComemoCalluuEEEECsgpMJJHpo27b_12typst_bundle"}
!11422 = distinct !{!11422, !11421, !"_RINvXs_NtCsloFShupyl5J_6comemo5inputINtNtB7_5track7TrackedNtNtCsdaEETE4DqmE_13typst_library6engine6TracedNtNvBW_1__12___ComemoCallENtB5_5Input6attachINtNvB5_s6_1__10MappedSinkKj3_RINtNtB7_10constraint10ConstraintINtB2q_9MultiCallNtNvBY_1__12___ComemoCalluNtNvNtNtBY_13introspection12introspector1__12___ComemoCallB1F_NtNvBW_s_1__12___ComemoCallNtNvBW_s0_1__12___ComemoCalluuEEEECsgpMJJHpo27b_12typst_bundle: argument 0"}
!11423 = distinct !{!11423, !11421, !"_RINvXs_NtCsloFShupyl5J_6comemo5inputINtNtB7_5track7TrackedNtNtCsdaEETE4DqmE_13typst_library6engine6TracedNtNvBW_1__12___ComemoCallENtB5_5Input6attachINtNvB5_s6_1__10MappedSinkKj3_RINtNtB7_10constraint10ConstraintINtB2q_9MultiCallNtNvBY_1__12___ComemoCalluNtNvNtNtBY_13introspection12introspector1__12___ComemoCallB1F_NtNvBW_s_1__12___ComemoCallNtNvBW_s0_1__12___ComemoCalluuEEEECsgpMJJHpo27b_12typst_bundle: argument 1"}
!11424 = distinct !{!11424, !"_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionINtNtCsloFShupyl5J_6comemo5input10MergedSinkINtNvBK_s6_1__10MappedSinkKj3_RINtNtBM_10constraint10ConstraintINtB1s_9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB2L_13introspection12introspector1__12___ComemoCallNtNvNtB2L_6engine1__12___ComemoCallNtNvB4y_s_1__12___ComemoCallNtNvB4y_s0_1__12___ComemoCalluuEEEEE6insertCsgpMJJHpo27b_12typst_bundle"}
!11425 = distinct !{!11425, !11424, !"_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionINtNtCsloFShupyl5J_6comemo5input10MergedSinkINtNvBK_s6_1__10MappedSinkKj3_RINtNtBM_10constraint10ConstraintINtB1s_9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB2L_13introspection12introspector1__12___ComemoCallNtNvNtB2L_6engine1__12___ComemoCallNtNvB4y_s_1__12___ComemoCallNtNvB4y_s0_1__12___ComemoCalluuEEEEE6insertCsgpMJJHpo27b_12typst_bundle: argument 1"}
!11426 = distinct !{!11426, !11424, !"_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionINtNtCsloFShupyl5J_6comemo5input10MergedSinkINtNvBK_s6_1__10MappedSinkKj3_RINtNtBM_10constraint10ConstraintINtB1s_9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB2L_13introspection12introspector1__12___ComemoCallNtNvNtB2L_6engine1__12___ComemoCallNtNvB4y_s_1__12___ComemoCallNtNvB4y_s0_1__12___ComemoCalluuEEEEE6insertCsgpMJJHpo27b_12typst_bundle: argument 0"}
!11427 = distinct !{!11427, !"_RINvXs0_NtCsloFShupyl5J_6comemo5inputINtNtB8_5track10TrackedMutNtNtCsdaEETE4DqmE_13typst_library6engine4SinkNtNvB11_s_1__12___ComemoCallENtB6_5Input6attachINtNvB6_s6_1__10MappedSinkKj4_RINtNtB8_10constraint10ConstraintINtB2w_9MultiCallNtNvB13_1__12___ComemoCalluNtNvNtNtB13_13introspection12introspector1__12___ComemoCallNtNvB11_1__12___ComemoCallB1I_NtNvB11_s0_1__12___ComemoCalluuEEEECsgpMJJHpo27b_12typst_bundle"}
!11428 = distinct !{!11428, !11427, !"_RINvXs0_NtCsloFShupyl5J_6comemo5inputINtNtB8_5track10TrackedMutNtNtCsdaEETE4DqmE_13typst_library6engine4SinkNtNvB11_s_1__12___ComemoCallENtB6_5Input6attachINtNvB6_s6_1__10MappedSinkKj4_RINtNtB8_10constraint10ConstraintINtB2w_9MultiCallNtNvB13_1__12___ComemoCalluNtNvNtNtB13_13introspection12introspector1__12___ComemoCallNtNvB11_1__12___ComemoCallB1I_NtNvB11_s0_1__12___ComemoCalluuEEEECsgpMJJHpo27b_12typst_bundle: argument 0"}
!11429 = distinct !{!11429, !11427, !"_RINvXs0_NtCsloFShupyl5J_6comemo5inputINtNtB8_5track10TrackedMutNtNtCsdaEETE4DqmE_13typst_library6engine4SinkNtNvB11_s_1__12___ComemoCallENtB6_5Input6attachINtNvB6_s6_1__10MappedSinkKj4_RINtNtB8_10constraint10ConstraintINtB2w_9MultiCallNtNvB13_1__12___ComemoCalluNtNvNtNtB13_13introspection12introspector1__12___ComemoCallNtNvB11_1__12___ComemoCallB1I_NtNvB11_s0_1__12___ComemoCalluuEEEECsgpMJJHpo27b_12typst_bundle: argument 1"}
!11430 = distinct !{!11430, !"_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionINtNtCsloFShupyl5J_6comemo5input10MergedSinkINtNvBK_s6_1__10MappedSinkKj4_RINtNtBM_10constraint10ConstraintINtB1s_9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB2L_13introspection12introspector1__12___ComemoCallNtNvNtB2L_6engine1__12___ComemoCallNtNvB4y_s_1__12___ComemoCallNtNvB4y_s0_1__12___ComemoCalluuEEEEE6insertCsgpMJJHpo27b_12typst_bundle"}
!11431 = distinct !{!11431, !11430, !"_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionINtNtCsloFShupyl5J_6comemo5input10MergedSinkINtNvBK_s6_1__10MappedSinkKj4_RINtNtBM_10constraint10ConstraintINtB1s_9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB2L_13introspection12introspector1__12___ComemoCallNtNvNtB2L_6engine1__12___ComemoCallNtNvB4y_s_1__12___ComemoCallNtNvB4y_s0_1__12___ComemoCalluuEEEEE6insertCsgpMJJHpo27b_12typst_bundle: argument 1"}
!11432 = distinct !{!11432, !11430, !"_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionINtNtCsloFShupyl5J_6comemo5input10MergedSinkINtNvBK_s6_1__10MappedSinkKj4_RINtNtBM_10constraint10ConstraintINtB1s_9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB2L_13introspection12introspector1__12___ComemoCallNtNvNtB2L_6engine1__12___ComemoCallNtNvB4y_s_1__12___ComemoCallNtNvB4y_s0_1__12___ComemoCalluuEEEEE6insertCsgpMJJHpo27b_12typst_bundle: argument 0"}
!11433 = distinct !{!11433, !"_RINvXs_NtCsloFShupyl5J_6comemo5inputINtNtB7_5track7TrackedNtNtCsdaEETE4DqmE_13typst_library6engine5RouteNtNvBW_s0_1__12___ComemoCallENtB5_5Input6attachINtNvB5_s6_1__10MappedSinkKj5_RINtNtB7_10constraint10ConstraintINtB2s_9MultiCallNtNvBY_1__12___ComemoCalluNtNvNtNtBY_13introspection12introspector1__12___ComemoCallNtNvBW_1__12___ComemoCallNtNvBW_s_1__12___ComemoCallB1E_uuEEEECsgpMJJHpo27b_12typst_bundle"}
!11434 = distinct !{!11434, !11433, !"_RINvXs_NtCsloFShupyl5J_6comemo5inputINtNtB7_5track7TrackedNtNtCsdaEETE4DqmE_13typst_library6engine5RouteNtNvBW_s0_1__12___ComemoCallENtB5_5Input6attachINtNvB5_s6_1__10MappedSinkKj5_RINtNtB7_10constraint10ConstraintINtB2s_9MultiCallNtNvBY_1__12___ComemoCalluNtNvNtNtBY_13introspection12introspector1__12___ComemoCallNtNvBW_1__12___ComemoCallNtNvBW_s_1__12___ComemoCallB1E_uuEEEECsgpMJJHpo27b_12typst_bundle: argument 0"}
!11435 = distinct !{!11435, !11433, !"_RINvXs_NtCsloFShupyl5J_6comemo5inputINtNtB7_5track7TrackedNtNtCsdaEETE4DqmE_13typst_library6engine5RouteNtNvBW_s0_1__12___ComemoCallENtB5_5Input6attachINtNvB5_s6_1__10MappedSinkKj5_RINtNtB7_10constraint10ConstraintINtB2s_9MultiCallNtNvBY_1__12___ComemoCalluNtNvNtNtBY_13introspection12introspector1__12___ComemoCallNtNvBW_1__12___ComemoCallNtNvBW_s_1__12___ComemoCallB1E_uuEEEECsgpMJJHpo27b_12typst_bundle: argument 1"}
!11436 = distinct !{!11436, !"_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionINtNtCsloFShupyl5J_6comemo5input10MergedSinkINtNvBK_s6_1__10MappedSinkKj5_RINtNtBM_10constraint10ConstraintINtB1s_9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB2L_13introspection12introspector1__12___ComemoCallNtNvNtB2L_6engine1__12___ComemoCallNtNvB4y_s_1__12___ComemoCallNtNvB4y_s0_1__12___ComemoCalluuEEEEE6insertCsgpMJJHpo27b_12typst_bundle"}
!11437 = distinct !{!11437, !11436, !"_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionINtNtCsloFShupyl5J_6comemo5input10MergedSinkINtNvBK_s6_1__10MappedSinkKj5_RINtNtBM_10constraint10ConstraintINtB1s_9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB2L_13introspection12introspector1__12___ComemoCallNtNvNtB2L_6engine1__12___ComemoCallNtNvB4y_s_1__12___ComemoCallNtNvB4y_s0_1__12___ComemoCalluuEEEEE6insertCsgpMJJHpo27b_12typst_bundle: argument 1"}
!11438 = distinct !{!11438, !11436, !"_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionINtNtCsloFShupyl5J_6comemo5input10MergedSinkINtNvBK_s6_1__10MappedSinkKj5_RINtNtBM_10constraint10ConstraintINtB1s_9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB2L_13introspection12introspector1__12___ComemoCallNtNvNtB2L_6engine1__12___ComemoCallNtNvB4y_s_1__12___ComemoCallNtNvB4y_s0_1__12___ComemoCalluuEEEEE6insertCsgpMJJHpo27b_12typst_bundle: argument 0"}
!11439 = distinct !{null}
!11440 = distinct !{!11440, !"_RNvXNvNtCsloFShupyl5J_6comemo5inputs6_1__INtB4_5MultiTINtNtB6_5track7TrackedDNtCsdaEETE4DqmE_13typst_library5WorldEL_NtNvB1f_1__12___ComemoCallERINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtB1f_7LibraryEIBR_DNtNtNtB1f_13introspection12introspector12IntrospectorEL_NtNvB3p_1__12___ComemoCallEIBR_NtNtB1f_6engine6TracedNtNvB4O_1__12___ComemoCallEINtBT_10TrackedMutNtB4O_4SinkNtNvB4O_s_1__12___ComemoCallEIBR_NtB4O_5RouteNtNvB4O_s0_1__12___ComemoCallERNtNtNtB1f_11foundations7content7ContentNtNtB7k_6styles10StyleChainEENtB4_5Input8call_mutCsgpMJJHpo27b_12typst_bundle"}
!11441 = distinct !{!11441, !11440, !"_RNvXNvNtCsloFShupyl5J_6comemo5inputs6_1__INtB4_5MultiTINtNtB6_5track7TrackedDNtCsdaEETE4DqmE_13typst_library5WorldEL_NtNvB1f_1__12___ComemoCallERINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtB1f_7LibraryEIBR_DNtNtNtB1f_13introspection12introspector12IntrospectorEL_NtNvB3p_1__12___ComemoCallEIBR_NtNtB1f_6engine6TracedNtNvB4O_1__12___ComemoCallEINtBT_10TrackedMutNtB4O_4SinkNtNvB4O_s_1__12___ComemoCallEIBR_NtB4O_5RouteNtNvB4O_s0_1__12___ComemoCallERNtNtNtB1f_11foundations7content7ContentNtNtB7k_6styles10StyleChainEENtB4_5Input8call_mutCsgpMJJHpo27b_12typst_bundle: argument 1"}
!11442 = distinct !{!11442, !11440, !"_RNvXNvNtCsloFShupyl5J_6comemo5inputs6_1__INtB4_5MultiTINtNtB6_5track7TrackedDNtCsdaEETE4DqmE_13typst_library5WorldEL_NtNvB1f_1__12___ComemoCallERINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtB1f_7LibraryEIBR_DNtNtNtB1f_13introspection12introspector12IntrospectorEL_NtNvB3p_1__12___ComemoCallEIBR_NtNtB1f_6engine6TracedNtNvB4O_1__12___ComemoCallEINtBT_10TrackedMutNtB4O_4SinkNtNvB4O_s_1__12___ComemoCallEIBR_NtB4O_5RouteNtNvB4O_s0_1__12___ComemoCallERNtNtNtB1f_11foundations7content7ContentNtNtB7k_6styles10StyleChainEENtB4_5Input8call_mutCsgpMJJHpo27b_12typst_bundle: argument 0"}
!11443 = distinct !{!11443, !"_RNvXs0_NtCsloFShupyl5J_6comemo5inputINtNtB7_5track10TrackedMutNtNtCsdaEETE4DqmE_13typst_library6engine4SinkNtNvB10_s_1__12___ComemoCallENtB5_5Input8call_mutCsgpMJJHpo27b_12typst_bundle"}
!11444 = distinct !{!11444, !11443, !"_RNvXs0_NtCsloFShupyl5J_6comemo5inputINtNtB7_5track10TrackedMutNtNtCsdaEETE4DqmE_13typst_library6engine4SinkNtNvB10_s_1__12___ComemoCallENtB5_5Input8call_mutCsgpMJJHpo27b_12typst_bundle: argument 1"}
!11445 = distinct !{!11445, !"_RNvXs_NvNtCsdaEETE4DqmE_13typst_library6engines_1__NtB6_4SinkNtNtCsloFShupyl5J_6comemo5track5Track8call_mut"}
!11446 = distinct !{!11446, !11445, !"_RNvXs_NvNtCsdaEETE4DqmE_13typst_library6engines_1__NtB6_4SinkNtNtCsloFShupyl5J_6comemo5track5Track8call_mut: argument 1"}
!11447 = distinct !{!11447, !11443, !"_RNvXs0_NtCsloFShupyl5J_6comemo5inputINtNtB7_5track10TrackedMutNtNtCsdaEETE4DqmE_13typst_library6engine4SinkNtNvB10_s_1__12___ComemoCallENtB5_5Input8call_mutCsgpMJJHpo27b_12typst_bundle: argument 0"}
!11448 = distinct !{!11448, !11445, !"_RNvXs_NvNtCsdaEETE4DqmE_13typst_library6engines_1__NtB6_4SinkNtNtCsloFShupyl5J_6comemo5track5Track8call_mut: argument 0"}
!11449 = distinct !{null}
!11450 = distinct !{!11450, !"_RNvXs3_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtCsgpMJJHpo27b_12typst_bundle6BundleINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEENtNtB7_5clone5Clone5cloneBM_"}
!11451 = distinct !{!11451, !11450, !"_RNvXs3_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtCsgpMJJHpo27b_12typst_bundle6BundleINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEENtNtB7_5clone5Clone5cloneBM_: argument 1"}
!11452 = distinct !{!11452, !11450, !"_RNvXs3_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtCsgpMJJHpo27b_12typst_bundle6BundleINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEENtNtB7_5clone5Clone5cloneBM_: argument 0"}
!11453 = distinct !{!11453, !"_RNvXs3_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtCsgpMJJHpo27b_12typst_bundle6BundleINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEENtNtB7_5clone5Clone5cloneBM_"}
!11454 = distinct !{!11454, !11453, !"_RNvXs3_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtCsgpMJJHpo27b_12typst_bundle6BundleINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEENtNtB7_5clone5Clone5cloneBM_: argument 0"}
!11455 = distinct !{!11455, !11453, !"_RNvXs3_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtCsgpMJJHpo27b_12typst_bundle6BundleINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEENtNtB7_5clone5Clone5cloneBM_: argument 1"}
!11456 = distinct !{!11456, !"_RNvMs_NtCsloFShupyl5J_6comemo7memoizeINtB4_9CacheDataINtNvNtB6_5inputs6_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1p_13introspection12introspector1__12___ComemoCallNtNvNtB1p_6engine1__12___ComemoCallNtNvB3c_s_1__12___ComemoCallNtNvB3c_s0_1__12___ComemoCalluuEINtNtCs3oUPovFnLWP_4core6result6ResultNtCsgpMJJHpo27b_12typst_bundle6BundleINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1p_4diag16SourceDiagnosticEEE6insertB5j_"}
!11457 = distinct !{!11457, !11456, !"_RNvMs_NtCsloFShupyl5J_6comemo7memoizeINtB4_9CacheDataINtNvNtB6_5inputs6_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1p_13introspection12introspector1__12___ComemoCallNtNvNtB1p_6engine1__12___ComemoCallNtNvB3c_s_1__12___ComemoCallNtNvB3c_s0_1__12___ComemoCalluuEINtNtCs3oUPovFnLWP_4core6result6ResultNtCsgpMJJHpo27b_12typst_bundle6BundleINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1p_4diag16SourceDiagnosticEEE6insertB5j_: argument 0"}
!11458 = distinct !{!11458, !"_RNvMNtCsloFShupyl5J_6comemo10constraintINtB2_10ConstraintINtNvNtB4_5inputs6_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1t_13introspection12introspector1__12___ComemoCallNtNvNtB1t_6engine1__12___ComemoCallNtNvB3g_s_1__12___ComemoCallNtNvB3g_s0_1__12___ComemoCalluuEE4takeCsgpMJJHpo27b_12typst_bundle"}
!11459 = distinct !{!11459, !11458, !"_RNvMNtCsloFShupyl5J_6comemo10constraintINtB2_10ConstraintINtNvNtB4_5inputs6_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1t_13introspection12introspector1__12___ComemoCallNtNvNtB1t_6engine1__12___ComemoCallNtNvB3g_s_1__12___ComemoCallNtNvB3g_s0_1__12___ComemoCalluuEE4takeCsgpMJJHpo27b_12typst_bundle: argument 0"}
!11460 = distinct !{!11460, !"_RNvMs_NtCsloFShupyl5J_6comemo4treeINtB4_8CallTreeINtNvNtB6_5inputs6_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1l_13introspection12introspector1__12___ComemoCallNtNvNtB1l_6engine1__12___ComemoCallNtNvB38_s_1__12___ComemoCallNtNvB38_s0_1__12___ComemoCalluuEINtNtB6_7memoize10CacheEntryBL_INtNtCs3oUPovFnLWP_4core6result6ResultNtCsgpMJJHpo27b_12typst_bundle6BundleINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1l_4diag16SourceDiagnosticEEEE6insertB5K_"}
!11461 = distinct !{!11461, !11460, !"_RNvMs_NtCsloFShupyl5J_6comemo4treeINtB4_8CallTreeINtNvNtB6_5inputs6_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1l_13introspection12introspector1__12___ComemoCallNtNvNtB1l_6engine1__12___ComemoCallNtNvB38_s_1__12___ComemoCallNtNvB38_s0_1__12___ComemoCalluuEINtNtB6_7memoize10CacheEntryBL_INtNtCs3oUPovFnLWP_4core6result6ResultNtCsgpMJJHpo27b_12typst_bundle6BundleINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1l_4diag16SourceDiagnosticEEEE6insertB5K_: argument 0"}
!11462 = distinct !{!11462, !"_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECsgpMJJHpo27b_12typst_bundle"}
!11463 = distinct !{!11463, !11462, !"_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECsgpMJJHpo27b_12typst_bundle: argument 0"}
!11464 = distinct !{!11464, !11460, !"_RNvMs_NtCsloFShupyl5J_6comemo4treeINtB4_8CallTreeINtNvNtB6_5inputs6_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1l_13introspection12introspector1__12___ComemoCallNtNvNtB1l_6engine1__12___ComemoCallNtNvB38_s_1__12___ComemoCallNtNvB38_s0_1__12___ComemoCalluuEINtNtB6_7memoize10CacheEntryBL_INtNtCs3oUPovFnLWP_4core6result6ResultNtCsgpMJJHpo27b_12typst_bundle6BundleINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1l_4diag16SourceDiagnosticEEEE6insertB5K_: argument 1"}
!11465 = distinct !{!11465, !"_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableToNtNtCsloFShupyl5J_6comemo4tree6NodeIdEE4findNCINvNtB8_3map14equivalent_keyooBR_E0ECsgpMJJHpo27b_12typst_bundle"}
!11466 = distinct !{!11466, !11465, !"_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableToNtNtCsloFShupyl5J_6comemo4tree6NodeIdEE4findNCINvNtB8_3map14equivalent_keyooBR_E0ECsgpMJJHpo27b_12typst_bundle: argument 0"}
!11467 = distinct !{!11467, !"_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner10find_inner"}
!11468 = distinct !{!11468, !11467, !"_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 0"}
!11469 = distinct !{!11469, !11465, !"_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableToNtNtCsloFShupyl5J_6comemo4tree6NodeIdEE4findNCINvNtB8_3map14equivalent_keyooBR_E0ECsgpMJJHpo27b_12typst_bundle: argument 1"}
!11470 = distinct !{!11470, !11467, !"_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 1"}
!11471 = distinct !{!11471, !"_RNvNtNtNtCs3oUPovFnLWP_4core9core_arch3x864sse215__mm_loadu_si128"}
!11472 = distinct !{!11472, !11471, !"_RNvNtNtNtCs3oUPovFnLWP_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!11473 = distinct !{!11473, !"_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableToNtNtCsloFShupyl5J_6comemo4tree6NodeIdEE4findNCINvNtBa_3map14equivalent_keyooBT_E0E0CsgpMJJHpo27b_12typst_bundle"}
!11474 = distinct !{!11474, !11473, !"_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableToNtNtCsloFShupyl5J_6comemo4tree6NodeIdEE4findNCINvNtBa_3map14equivalent_keyooBT_E0E0CsgpMJJHpo27b_12typst_bundle: argument 0"}
!11475 = distinct !{!11475, !"_RNvMs2_NtCsloFShupyl5J_6comemo10constraintINtB5_12CallSequenceINtNvNtB7_5inputs6_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1y_13introspection12introspector1__12___ComemoCallNtNvNtB1y_6engine1__12___ComemoCallNtNvB3l_s_1__12___ComemoCallNtNvB3l_s0_1__12___ComemoCalluuEE4nextCsgpMJJHpo27b_12typst_bundle"}
!11476 = distinct !{!11476, !11475, !"_RNvMs2_NtCsloFShupyl5J_6comemo10constraintINtB5_12CallSequenceINtNvNtB7_5inputs6_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1y_13introspection12introspector1__12___ComemoCallNtNvNtB1y_6engine1__12___ComemoCallNtNvB3l_s_1__12___ComemoCallNtNvB3l_s0_1__12___ComemoCalluuEE4nextCsgpMJJHpo27b_12typst_bundle: argument 1"}
!11477 = distinct !{!11477, !11475, !"_RNvMs2_NtCsloFShupyl5J_6comemo10constraintINtB5_12CallSequenceINtNvNtB7_5inputs6_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1y_13introspection12introspector1__12___ComemoCallNtNvNtB1y_6engine1__12___ComemoCallNtNvB3l_s_1__12___ComemoCallNtNvB3l_s0_1__12___ComemoCalluuEE4nextCsgpMJJHpo27b_12typst_bundle: argument 0"}
!11478 = distinct !{!11478, !"_RNvXs4_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBE_5inputs6_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1O_13introspection12introspector1__12___ComemoCallNtNvNtB1O_6engine1__12___ComemoCallNtNvB3B_s_1__12___ComemoCallNtNvB3B_s0_1__12___ComemoCalluuEEEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexjE5indexCsgpMJJHpo27b_12typst_bundle"}
!11479 = distinct !{!11479, !11478, !"_RNvXs4_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBE_5inputs6_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1O_13introspection12introspector1__12___ComemoCallNtNvNtB1O_6engine1__12___ComemoCallNtNvB3B_s_1__12___ComemoCallNtNvB3B_s0_1__12___ComemoCalluuEEEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexjE5indexCsgpMJJHpo27b_12typst_bundle: argument 0"}
!11480 = distinct !{!11480, !"_RNvMs2_NtCsloFShupyl5J_6comemo10constraintINtB5_12CallSequenceINtNvNtB7_5inputs6_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1y_13introspection12introspector1__12___ComemoCallNtNvNtB1y_6engine1__12___ComemoCallNtNvB3l_s_1__12___ComemoCallNtNvB3l_s0_1__12___ComemoCalluuEE7extractCsgpMJJHpo27b_12typst_bundle"}
!11481 = distinct !{!11481, !11480, !"_RNvMs2_NtCsloFShupyl5J_6comemo10constraintINtB5_12CallSequenceINtNvNtB7_5inputs6_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1y_13introspection12introspector1__12___ComemoCallNtNvNtB1y_6engine1__12___ComemoCallNtNvB3l_s_1__12___ComemoCallNtNvB3l_s0_1__12___ComemoCalluuEE7extractCsgpMJJHpo27b_12typst_bundle: argument 1"}
!11482 = distinct !{!11482, !11480, !"_RNvMs2_NtCsloFShupyl5J_6comemo10constraintINtB5_12CallSequenceINtNvNtB7_5inputs6_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1y_13introspection12introspector1__12___ComemoCallNtNvNtB1y_6engine1__12___ComemoCallNtNvB3l_s_1__12___ComemoCallNtNvB3l_s0_1__12___ComemoCalluuEE7extractCsgpMJJHpo27b_12typst_bundle: argument 2"}
!11483 = distinct !{!11483, !11480, !"_RNvMs2_NtCsloFShupyl5J_6comemo10constraintINtB5_12CallSequenceINtNvNtB7_5inputs6_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1y_13introspection12introspector1__12___ComemoCallNtNvNtB1y_6engine1__12___ComemoCallNtNvB3l_s_1__12___ComemoCallNtNvB3l_s0_1__12___ComemoCalluuEE7extractCsgpMJJHpo27b_12typst_bundle: argument 0"}
!11484 = distinct !{!11484, !"_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapojNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECsgpMJJHpo27b_12typst_bundle"}
!11485 = distinct !{!11485, !11484, !"_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapojNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECsgpMJJHpo27b_12typst_bundle: argument 0"}
!11486 = distinct !{!11486, !"_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTojEE4findNCINvNtB8_3map14equivalent_keyoojE0ECsgpMJJHpo27b_12typst_bundle"}
!11487 = distinct !{!11487, !11486, !"_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTojEE4findNCINvNtB8_3map14equivalent_keyoojE0ECsgpMJJHpo27b_12typst_bundle: argument 0"}
!11488 = distinct !{!11488, !"_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner10find_inner"}
!11489 = distinct !{!11489, !11488, !"_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 0"}
!11490 = distinct !{!11490, !11486, !"_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTojEE4findNCINvNtB8_3map14equivalent_keyoojE0ECsgpMJJHpo27b_12typst_bundle: argument 1"}
!11491 = distinct !{!11491, !11488, !"_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 1"}
!11492 = distinct !{!11492, !"_RNvNtNtNtCs3oUPovFnLWP_4core9core_arch3x864sse215__mm_loadu_si128"}
!11493 = distinct !{!11493, !11492, !"_RNvNtNtNtCs3oUPovFnLWP_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!11494 = distinct !{!11494, !"_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTojEE4findNCINvNtBa_3map14equivalent_keyoojE0E0CsgpMJJHpo27b_12typst_bundle"}
!11495 = distinct !{!11495, !11494, !"_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTojEE4findNCINvNtBa_3map14equivalent_keyoojE0E0CsgpMJJHpo27b_12typst_bundle: argument 0"}
!11496 = distinct !{!11496, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTINtNvNtCsloFShupyl5J_6comemo5inputs6_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1u_13introspection12introspector1__12___ComemoCallNtNvNtB1u_6engine1__12___ComemoCallNtNvB3h_s_1__12___ComemoCallNtNvB3h_s0_1__12___ComemoCalluuEoEECsgpMJJHpo27b_12typst_bundle"}
!11497 = distinct !{!11497, !11496, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTINtNvNtCsloFShupyl5J_6comemo5inputs6_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1u_13introspection12introspector1__12___ComemoCallNtNvNtB1u_6engine1__12___ComemoCallNtNvB3h_s_1__12___ComemoCallNtNvB3h_s0_1__12___ComemoCalluuEoEECsgpMJJHpo27b_12typst_bundle: argument 0"}
!11498 = distinct !{!11498, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNvNtCsloFShupyl5J_6comemo5inputs6_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1t_13introspection12introspector1__12___ComemoCallNtNvNtB1t_6engine1__12___ComemoCallNtNvB3g_s_1__12___ComemoCallNtNvB3g_s0_1__12___ComemoCalluuEECsgpMJJHpo27b_12typst_bundle"}
!11499 = distinct !{!11499, !11498, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNvNtCsloFShupyl5J_6comemo5inputs6_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1t_13introspection12introspector1__12___ComemoCallNtNvNtB1t_6engine1__12___ComemoCallNtNvB3g_s_1__12___ComemoCallNtNvB3g_s0_1__12___ComemoCalluuEECsgpMJJHpo27b_12typst_bundle: argument 0"}
!11500 = distinct !{!11500, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNvNtNtCsdaEETE4DqmE_13typst_library13introspection12introspector1__12___ComemoCallECsgpMJJHpo27b_12typst_bundle"}
!11501 = distinct !{!11501, !11500, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNvNtNtCsdaEETE4DqmE_13typst_library13introspection12introspector1__12___ComemoCallECsgpMJJHpo27b_12typst_bundle: argument 0"}
!11502 = distinct !{!11502, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNvNtNtCsdaEETE4DqmE_13typst_library13introspection12introspector1__15___ComemoVariantECsgpMJJHpo27b_12typst_bundle"}
!11503 = distinct !{!11503, !11502, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNvNtNtCsdaEETE4DqmE_13typst_library13introspection12introspector1__15___ComemoVariantECsgpMJJHpo27b_12typst_bundle: argument 0"}
!11504 = distinct !{!11504, !"_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getBO_ECsgpMJJHpo27b_12typst_bundle"}
!11505 = distinct !{!11505, !11504, !"_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getBO_ECsgpMJJHpo27b_12typst_bundle: argument 0"}
!11506 = distinct !{!11506, !"_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_BU_E0ECsgpMJJHpo27b_12typst_bundle"}
!11507 = distinct !{!11507, !11506, !"_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_BU_E0ECsgpMJJHpo27b_12typst_bundle: argument 0"}
!11508 = distinct !{!11508, !"_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner10find_inner"}
!11509 = distinct !{!11509, !11508, !"_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 0"}
!11510 = distinct !{!11510, !11506, !"_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_BU_E0ECsgpMJJHpo27b_12typst_bundle: argument 1"}
!11511 = distinct !{!11511, !11508, !"_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 1"}
!11512 = distinct !{!11512, !"_RNvNtNtNtCs3oUPovFnLWP_4core9core_arch3x864sse215__mm_loadu_si128"}
!11513 = distinct !{!11513, !11512, !"_RNvNtNtNtCs3oUPovFnLWP_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!11514 = distinct !{!11514, !"_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdEE4findNCINvNtBa_3map14equivalent_keyBS_BS_BW_E0E0CsgpMJJHpo27b_12typst_bundle"}
!11515 = distinct !{!11515, !11514, !"_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdEE4findNCINvNtBa_3map14equivalent_keyBS_BS_BW_E0E0CsgpMJJHpo27b_12typst_bundle: argument 0"}
!11516 = distinct !{!11516, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo7memoize10CacheEntryINtNvNtBG_5inputs6_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1V_13introspection12introspector1__12___ComemoCallNtNvNtB1V_6engine1__12___ComemoCallNtNvB3I_s_1__12___ComemoCallNtNvB3I_s0_1__12___ComemoCalluuEINtNtB4_6result6ResultNtCsgpMJJHpo27b_12typst_bundle6BundleINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1V_4diag16SourceDiagnosticEEEEB5z_"}
!11517 = distinct !{!11517, !11516, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo7memoize10CacheEntryINtNvNtBG_5inputs6_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1V_13introspection12introspector1__12___ComemoCallNtNvNtB1V_6engine1__12___ComemoCallNtNvB3I_s_1__12___ComemoCallNtNvB3I_s0_1__12___ComemoCalluuEINtNtB4_6result6ResultNtCsgpMJJHpo27b_12typst_bundle6BundleINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1V_4diag16SourceDiagnosticEEEEB5z_: argument 0"}
!11518 = distinct !{!11518, !"_RNvMs3_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBE_5inputs6_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1O_13introspection12introspector1__12___ComemoCallNtNvNtB1O_6engine1__12___ComemoCallNtNvB3B_s_1__12___ComemoCallNtNvB3B_s0_1__12___ComemoCalluuEEE9insert_atCsgpMJJHpo27b_12typst_bundle"}
!11519 = distinct !{!11519, !11518, !"_RNvMs3_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBE_5inputs6_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1O_13introspection12introspector1__12___ComemoCallNtNvNtB1O_6engine1__12___ComemoCallNtNvB3B_s_1__12___ComemoCallNtNvB3B_s0_1__12___ComemoCalluuEEE9insert_atCsgpMJJHpo27b_12typst_bundle: argument 0"}
!11520 = distinct !{!11520, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtCsaixNeEcpA3e_4slab5EntryINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtB1c_5inputs6_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB2n_13introspection12introspector1__12___ComemoCallNtNvNtB2n_6engine1__12___ComemoCallNtNvB4a_s_1__12___ComemoCallNtNvB4a_s0_1__12___ComemoCalluuEEEE8push_mutCsgpMJJHpo27b_12typst_bundle"}
!11521 = distinct !{!11521, !11520, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtCsaixNeEcpA3e_4slab5EntryINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtB1c_5inputs6_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB2n_13introspection12introspector1__12___ComemoCallNtNvNtB2n_6engine1__12___ComemoCallNtNvB4a_s_1__12___ComemoCallNtNvB4a_s0_1__12___ComemoCalluuEEEE8push_mutCsgpMJJHpo27b_12typst_bundle: argument 0"}
!11522 = distinct !{!11522, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCsaixNeEcpA3e_4slab5EntryINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtB18_5inputs6_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB2j_13introspection12introspector1__12___ComemoCallNtNvNtB2j_6engine1__12___ComemoCallNtNvB46_s_1__12___ComemoCallNtNvB46_s0_1__12___ComemoCalluuEEEECsgpMJJHpo27b_12typst_bundle"}
!11523 = distinct !{!11523, !11522, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCsaixNeEcpA3e_4slab5EntryINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtB18_5inputs6_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB2j_13introspection12introspector1__12___ComemoCallNtNvNtB2j_6engine1__12___ComemoCallNtNvB46_s_1__12___ComemoCallNtNvB46_s0_1__12___ComemoCalluuEEEECsgpMJJHpo27b_12typst_bundle: argument 0"}
!11524 = distinct !{!11524, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBG_5inputs6_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1Q_13introspection12introspector1__12___ComemoCallNtNvNtB1Q_6engine1__12___ComemoCallNtNvB3D_s_1__12___ComemoCallNtNvB3D_s0_1__12___ComemoCalluuEEECsgpMJJHpo27b_12typst_bundle"}
!11525 = distinct !{!11525, !11524, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBG_5inputs6_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1Q_13introspection12introspector1__12___ComemoCallNtNvNtB1Q_6engine1__12___ComemoCallNtNvB3D_s_1__12___ComemoCallNtNvB3D_s0_1__12___ComemoCalluuEEECsgpMJJHpo27b_12typst_bundle: argument 0"}
!11526 = distinct !{!11526, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNvNtCsloFShupyl5J_6comemo5inputs6_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1t_13introspection12introspector1__12___ComemoCallNtNvNtB1t_6engine1__12___ComemoCallNtNvB3g_s_1__12___ComemoCallNtNvB3g_s0_1__12___ComemoCalluuEECsgpMJJHpo27b_12typst_bundle"}
!11527 = distinct !{!11527, !11526, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNvNtCsloFShupyl5J_6comemo5inputs6_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1t_13introspection12introspector1__12___ComemoCallNtNvNtB1t_6engine1__12___ComemoCallNtNvB3g_s_1__12___ComemoCallNtNvB3g_s0_1__12___ComemoCalluuEECsgpMJJHpo27b_12typst_bundle: argument 0"}
!11528 = distinct !{!11528, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNvNtNtCsdaEETE4DqmE_13typst_library13introspection12introspector1__12___ComemoCallECsgpMJJHpo27b_12typst_bundle"}
!11529 = distinct !{!11529, !11528, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNvNtNtCsdaEETE4DqmE_13typst_library13introspection12introspector1__12___ComemoCallECsgpMJJHpo27b_12typst_bundle: argument 0"}
!11530 = distinct !{!11530, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNvNtNtCsdaEETE4DqmE_13typst_library13introspection12introspector1__15___ComemoVariantECsgpMJJHpo27b_12typst_bundle"}
!11531 = distinct !{!11531, !11530, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNvNtNtCsdaEETE4DqmE_13typst_library13introspection12introspector1__15___ComemoVariantECsgpMJJHpo27b_12typst_bundle: argument 0"}
!11532 = distinct !{!11532, !"_RNvMs_NtCsloFShupyl5J_6comemo4treeINtB4_8CallTreeINtNvNtB6_5inputs6_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1l_13introspection12introspector1__12___ComemoCallNtNvNtB1l_6engine1__12___ComemoCallNtNvB38_s_1__12___ComemoCallNtNvB38_s0_1__12___ComemoCalluuEINtNtB6_7memoize10CacheEntryBL_INtNtCs3oUPovFnLWP_4core6result6ResultNtCsgpMJJHpo27b_12typst_bundle6BundleINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1l_4diag16SourceDiagnosticEEEE4linkB5K_"}
!11533 = distinct !{!11533, !11532, !"_RNvMs_NtCsloFShupyl5J_6comemo4treeINtB4_8CallTreeINtNvNtB6_5inputs6_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1l_13introspection12introspector1__12___ComemoCallNtNvNtB1l_6engine1__12___ComemoCallNtNvB38_s_1__12___ComemoCallNtNvB38_s0_1__12___ComemoCalluuEINtNtB6_7memoize10CacheEntryBL_INtNtCs3oUPovFnLWP_4core6result6ResultNtCsgpMJJHpo27b_12typst_bundle6BundleINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1l_4diag16SourceDiagnosticEEEE4linkB5K_: argument 0"}
!11534 = distinct !{!11534, !"_RNvXs5_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBE_5inputs6_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1O_13introspection12introspector1__12___ComemoCallNtNvNtB1O_6engine1__12___ComemoCallNtNvB3B_s_1__12___ComemoCallNtNvB3B_s0_1__12___ComemoCalluuEEEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutjE9index_mutCsgpMJJHpo27b_12typst_bundle"}
!11535 = distinct !{!11535, !11534, !"_RNvXs5_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBE_5inputs6_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1O_13introspection12introspector1__12___ComemoCallNtNvNtB1O_6engine1__12___ComemoCallNtNvB3B_s_1__12___ComemoCallNtNvB3B_s0_1__12___ComemoCalluuEEEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutjE9index_mutCsgpMJJHpo27b_12typst_bundle: argument 0"}
!11536 = distinct !{!11536, !"_RNvMs3_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree8LeafNodeINtNtBE_7memoize10CacheEntryINtNvNtBE_5inputs6_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB2f_13introspection12introspector1__12___ComemoCallNtNvNtB2f_6engine1__12___ComemoCallNtNvB42_s_1__12___ComemoCallNtNvB42_s0_1__12___ComemoCalluuEINtNtCs3oUPovFnLWP_4core6result6ResultNtCsgpMJJHpo27b_12typst_bundle6BundleINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB2f_4diag16SourceDiagnosticEEEEE9insert_atB69_"}
!11537 = distinct !{!11537, !11536, !"_RNvMs3_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree8LeafNodeINtNtBE_7memoize10CacheEntryINtNvNtBE_5inputs6_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB2f_13introspection12introspector1__12___ComemoCallNtNvNtB2f_6engine1__12___ComemoCallNtNvB42_s_1__12___ComemoCallNtNvB42_s0_1__12___ComemoCalluuEINtNtCs3oUPovFnLWP_4core6result6ResultNtCsgpMJJHpo27b_12typst_bundle6BundleINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB2f_4diag16SourceDiagnosticEEEEE9insert_atB69_: argument 0"}
!11538 = distinct !{!11538, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtCsaixNeEcpA3e_4slab5EntryINtNtCsloFShupyl5J_6comemo4tree8LeafNodeINtNtB1c_7memoize10CacheEntryINtNvNtB1c_5inputs6_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB2P_13introspection12introspector1__12___ComemoCallNtNvNtB2P_6engine1__12___ComemoCallNtNvB4C_s_1__12___ComemoCallNtNvB4C_s0_1__12___ComemoCalluuEINtNtCs3oUPovFnLWP_4core6result6ResultNtCsgpMJJHpo27b_12typst_bundle6BundleINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB2P_4diag16SourceDiagnosticEEEEEE8push_mutB6J_"}
!11539 = distinct !{!11539, !11538, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtCsaixNeEcpA3e_4slab5EntryINtNtCsloFShupyl5J_6comemo4tree8LeafNodeINtNtB1c_7memoize10CacheEntryINtNvNtB1c_5inputs6_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB2P_13introspection12introspector1__12___ComemoCallNtNvNtB2P_6engine1__12___ComemoCallNtNvB4C_s_1__12___ComemoCallNtNvB4C_s0_1__12___ComemoCalluuEINtNtCs3oUPovFnLWP_4core6result6ResultNtCsgpMJJHpo27b_12typst_bundle6BundleINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB2P_4diag16SourceDiagnosticEEEEEE8push_mutB6J_: argument 0"}
!11540 = distinct !{!11540, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCsaixNeEcpA3e_4slab5EntryINtNtCsloFShupyl5J_6comemo4tree8LeafNodeINtNtB18_7memoize10CacheEntryINtNvNtB18_5inputs6_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB2L_13introspection12introspector1__12___ComemoCallNtNvNtB2L_6engine1__12___ComemoCallNtNvB4y_s_1__12___ComemoCallNtNvB4y_s0_1__12___ComemoCalluuEINtNtB4_6result6ResultNtCsgpMJJHpo27b_12typst_bundle6BundleINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB2L_4diag16SourceDiagnosticEEEEEEB6p_"}
!11541 = distinct !{!11541, !11540, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCsaixNeEcpA3e_4slab5EntryINtNtCsloFShupyl5J_6comemo4tree8LeafNodeINtNtB18_7memoize10CacheEntryINtNvNtB18_5inputs6_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB2L_13introspection12introspector1__12___ComemoCallNtNvNtB2L_6engine1__12___ComemoCallNtNvB4y_s_1__12___ComemoCallNtNvB4y_s0_1__12___ComemoCalluuEINtNtB4_6result6ResultNtCsgpMJJHpo27b_12typst_bundle6BundleINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB2L_4diag16SourceDiagnosticEEEEEEB6p_: argument 0"}
!11542 = distinct !{!11542, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo4tree8LeafNodeINtNtBG_7memoize10CacheEntryINtNvNtBG_5inputs6_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB2h_13introspection12introspector1__12___ComemoCallNtNvNtB2h_6engine1__12___ComemoCallNtNvB44_s_1__12___ComemoCallNtNvB44_s0_1__12___ComemoCalluuEINtNtB4_6result6ResultNtCsgpMJJHpo27b_12typst_bundle6BundleINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB2h_4diag16SourceDiagnosticEEEEEB5V_"}
!11543 = distinct !{!11543, !11542, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo4tree8LeafNodeINtNtBG_7memoize10CacheEntryINtNvNtBG_5inputs6_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB2h_13introspection12introspector1__12___ComemoCallNtNvNtB2h_6engine1__12___ComemoCallNtNvB44_s_1__12___ComemoCallNtNvB44_s0_1__12___ComemoCalluuEINtNtB4_6result6ResultNtCsgpMJJHpo27b_12typst_bundle6BundleINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB2h_4diag16SourceDiagnosticEEEEEB5V_: argument 0"}
!11544 = distinct !{!11544, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo7memoize10CacheEntryINtNvNtBG_5inputs6_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1V_13introspection12introspector1__12___ComemoCallNtNvNtB1V_6engine1__12___ComemoCallNtNvB3I_s_1__12___ComemoCallNtNvB3I_s0_1__12___ComemoCalluuEINtNtB4_6result6ResultNtCsgpMJJHpo27b_12typst_bundle6BundleINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1V_4diag16SourceDiagnosticEEEEB5z_"}
!11545 = distinct !{!11545, !11544, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo7memoize10CacheEntryINtNvNtBG_5inputs6_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1V_13introspection12introspector1__12___ComemoCallNtNvNtB1V_6engine1__12___ComemoCallNtNvB3I_s_1__12___ComemoCallNtNvB3I_s0_1__12___ComemoCalluuEINtNtB4_6result6ResultNtCsgpMJJHpo27b_12typst_bundle6BundleINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1V_4diag16SourceDiagnosticEEEEB5z_: argument 0"}
!11546 = distinct !{!11546, !"_RNvMs_NtCsloFShupyl5J_6comemo4treeINtB4_8CallTreeINtNvNtB6_5inputs6_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1l_13introspection12introspector1__12___ComemoCallNtNvNtB1l_6engine1__12___ComemoCallNtNvB38_s_1__12___ComemoCallNtNvB38_s0_1__12___ComemoCalluuEINtNtB6_7memoize10CacheEntryBL_INtNtCs3oUPovFnLWP_4core6result6ResultNtCsgpMJJHpo27b_12typst_bundle6BundleINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1l_4diag16SourceDiagnosticEEEE4linkB5K_"}
!11547 = distinct !{!11547, !11546, !"_RNvMs_NtCsloFShupyl5J_6comemo4treeINtB4_8CallTreeINtNvNtB6_5inputs6_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1l_13introspection12introspector1__12___ComemoCallNtNvNtB1l_6engine1__12___ComemoCallNtNvB38_s_1__12___ComemoCallNtNvB38_s0_1__12___ComemoCalluuEINtNtB6_7memoize10CacheEntryBL_INtNtCs3oUPovFnLWP_4core6result6ResultNtCsgpMJJHpo27b_12typst_bundle6BundleINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1l_4diag16SourceDiagnosticEEEE4linkB5K_: argument 0"}
!11548 = distinct !{!11548, !"_RNvXs5_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBE_5inputs6_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1O_13introspection12introspector1__12___ComemoCallNtNvNtB1O_6engine1__12___ComemoCallNtNvB3B_s_1__12___ComemoCallNtNvB3B_s0_1__12___ComemoCalluuEEEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutjE9index_mutCsgpMJJHpo27b_12typst_bundle"}
!11549 = distinct !{!11549, !11548, !"_RNvXs5_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBE_5inputs6_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1O_13introspection12introspector1__12___ComemoCallNtNvNtB1O_6engine1__12___ComemoCallNtNvB3B_s_1__12___ComemoCallNtNvB3B_s0_1__12___ComemoCalluuEEEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutjE9index_mutCsgpMJJHpo27b_12typst_bundle: argument 0"}
!11550 = distinct !{!11550, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTTINtNtB4_6option6OptionINtNtCsloFShupyl5J_6comemo5input10MergedSinkINtNvB12_s6_1__10MappedSinkKj0_RINtNtB14_10constraint10ConstraintINtB1K_9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB35_13introspection12introspector1__12___ComemoCallNtNvNtB35_6engine1__12___ComemoCallNtNvB4S_s_1__12___ComemoCallNtNvB4S_s0_1__12___ComemoCalluuEEEEEuIBE_IB10_IB1I_Kj2_B2c_EEEIBE_IB10_IB1I_Kj3_B2c_EEEIBE_IB10_IB1I_Kj4_B2c_EEEIBE_IB10_IB1I_Kj5_B2c_EEEuuEB2d_EECsgpMJJHpo27b_12typst_bundle"}
!11551 = distinct !{!11551, !11550, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTTINtNtB4_6option6OptionINtNtCsloFShupyl5J_6comemo5input10MergedSinkINtNvB12_s6_1__10MappedSinkKj0_RINtNtB14_10constraint10ConstraintINtB1K_9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB35_13introspection12introspector1__12___ComemoCallNtNvNtB35_6engine1__12___ComemoCallNtNvB4S_s_1__12___ComemoCallNtNvB4S_s0_1__12___ComemoCalluuEEEEEuIBE_IB10_IB1I_Kj2_B2c_EEEIBE_IB10_IB1I_Kj3_B2c_EEEIBE_IB10_IB1I_Kj4_B2c_EEEIBE_IB10_IB1I_Kj5_B2c_EEEuuEB2d_EECsgpMJJHpo27b_12typst_bundle: argument 0"}
!11552 = distinct !{!11552, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo10constraint10ConstraintINtNvNtBG_5inputs6_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1Z_13introspection12introspector1__12___ComemoCallNtNvNtB1Z_6engine1__12___ComemoCallNtNvB3M_s_1__12___ComemoCallNtNvB3M_s0_1__12___ComemoCalluuEEECsgpMJJHpo27b_12typst_bundle"}
!11553 = distinct !{!11553, !11552, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo10constraint10ConstraintINtNvNtBG_5inputs6_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1Z_13introspection12introspector1__12___ComemoCallNtNvNtB1Z_6engine1__12___ComemoCallNtNvB3M_s_1__12___ComemoCallNtNvB3M_s0_1__12___ComemoCalluuEEECsgpMJJHpo27b_12typst_bundle: argument 0"}
!11554 = distinct !{!11554, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api5mutex5MutexNtNtCsg5ZWEykmiUC_11parking_lot9raw_mutex8RawMutexINtNtCsloFShupyl5J_6comemo10constraint14ConstraintReprINtNvNtB28_5inputs6_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB3w_13introspection12introspector1__12___ComemoCallNtNvNtB3w_6engine1__12___ComemoCallNtNvB5j_s_1__12___ComemoCallNtNvB5j_s0_1__12___ComemoCalluuEEEECsgpMJJHpo27b_12typst_bundle"}
!11555 = distinct !{!11555, !11554, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api5mutex5MutexNtNtCsg5ZWEykmiUC_11parking_lot9raw_mutex8RawMutexINtNtCsloFShupyl5J_6comemo10constraint14ConstraintReprINtNvNtB28_5inputs6_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB3w_13introspection12introspector1__12___ComemoCallNtNvNtB3w_6engine1__12___ComemoCallNtNvB5j_s_1__12___ComemoCallNtNvB5j_s0_1__12___ComemoCalluuEEEECsgpMJJHpo27b_12typst_bundle: argument 0"}
!11556 = distinct !{!11556, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCsloFShupyl5J_6comemo10constraint14ConstraintReprINtNvNtB15_5inputs6_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB2t_13introspection12introspector1__12___ComemoCallNtNvNtB2t_6engine1__12___ComemoCallNtNvB4g_s_1__12___ComemoCallNtNvB4g_s0_1__12___ComemoCalluuEEEECsgpMJJHpo27b_12typst_bundle"}
!11557 = distinct !{!11557, !11556, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCsloFShupyl5J_6comemo10constraint14ConstraintReprINtNvNtB15_5inputs6_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB2t_13introspection12introspector1__12___ComemoCallNtNvNtB2t_6engine1__12___ComemoCallNtNvB4g_s_1__12___ComemoCallNtNvB4g_s0_1__12___ComemoCalluuEEEECsgpMJJHpo27b_12typst_bundle: argument 0"}
!11558 = distinct !{!11558, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo10constraint14ConstraintReprINtNvNtBG_5inputs6_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB23_13introspection12introspector1__12___ComemoCallNtNvNtB23_6engine1__12___ComemoCallNtNvB3Q_s_1__12___ComemoCallNtNvB3Q_s0_1__12___ComemoCalluuEEECsgpMJJHpo27b_12typst_bundle"}
!11559 = distinct !{!11559, !11558, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo10constraint14ConstraintReprINtNvNtBG_5inputs6_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB23_13introspection12introspector1__12___ComemoCallNtNvNtB23_6engine1__12___ComemoCallNtNvB3Q_s_1__12___ComemoCallNtNvB3Q_s0_1__12___ComemoCalluuEEECsgpMJJHpo27b_12typst_bundle: argument 0"}
!11560 = distinct !{!11560, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECsgpMJJHpo27b_12typst_bundle"}
!11561 = distinct !{!11561, !11560, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECsgpMJJHpo27b_12typst_bundle: argument 0"}
!11562 = distinct !{!11562, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECsgpMJJHpo27b_12typst_bundle"}
!11563 = distinct !{!11563, !11562, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECsgpMJJHpo27b_12typst_bundle: argument 0"}
!11564 = !{!11122}
!11565 = !{!11122, !11129, !11128, !11127, !11126, !11125, !11124, !11123}
!11566 = !{!11122, !11128, !11127, !11126, !11125, !11124, !11123}
!11567 = !{!11122, !11129, !11127, !11126, !11125, !11124, !11123}
!11568 = !{!11122, !11129, !11128, !11126, !11125, !11124, !11123}
!11569 = !{!11122, !11129, !11128, !11127, !11125, !11124, !11123}
!11570 = !{!11122, !11129, !11128, !11127, !11126, !11124, !11123}
!11571 = !{!11122, !11129, !11128, !11127, !11126, !11125, !11124}
!11572 = !{!11131}
!11573 = !{!11133}
!11574 = !{!11134}
!11575 = !{!11135}
!11576 = !{!11133, !11134, !11135, !11122, !11129, !11128, !11127, !11126, !11125, !11124, !11123}
!11577 = !{!11137}
!11578 = !{!11122, !11129, !11128, !11127, !11126, !11125, !11123}
!11579 = !{!11139}
!11580 = !{!11141}
!11581 = !{!11147, !11145, !11143, !11141, !11139, !11137}
!11582 = !{!11150, !11149, !11148, !11133, !11134, !11135, !11122, !11129, !11128, !11127, !11126, !11125, !11124, !11123}
!11583 = !{!11139, !11137}
!11584 = !{!11149, !11148, !11133, !11134, !11135, !11122, !11129, !11128, !11127, !11126, !11125, !11124, !11123}
!11585 = !{!11141, !11139, !11133, !11122, !11129, !11128, !11127, !11126, !11125, !11123}
!11586 = !{!11152, !11147, !11145, !11143, !11141, !11139, !11137}
!11587 = !{!11156, !11154, !11150, !11141, !11149, !11139, !11148, !11137, !11133, !11134, !11135, !11122, !11129, !11128, !11127, !11126, !11125, !11124, !11123}
!11588 = !{!11159, !11156, !11154, !11150, !11141, !11149, !11139, !11148, !11137, !11133, !11134, !11135, !11122, !11129, !11128, !11127, !11126, !11125, !11124, !11123}
!11589 = !{!11161}
!11590 = !{!11162}
!11591 = !{!11161, !11139, !11137}
!11592 = !{!11162, !11150, !11149, !11148, !11133, !11134, !11135, !11122, !11129, !11128, !11127, !11126, !11125, !11124, !11123}
!11593 = !{!11164, !11162}
!11594 = !{!11161, !11150, !11149, !11139, !11148, !11137, !11133, !11134, !11135, !11122, !11129, !11128, !11127, !11126, !11125, !11124, !11123}
!11595 = !{!11166, !11161, !11139, !11137}
!11596 = !{!11168, !11161, !11139, !11137}
!11597 = !{!11170, !11162}
!11598 = !{!11150}
!11599 = !{!11176, !11174, !11172, !11141, !11139, !11137}
!11600 = !{!11178, !11176, !11174, !11172, !11141, !11139, !11137}
!11601 = !{!11180}
!11602 = !{!11182}
!11603 = !{!11180, !11133, !11134, !11135, !11122, !11129, !11128, !11127, !11126, !11125, !11124, !11123}
!11604 = !{!11184}
!11605 = !{!11186}
!11606 = !{!11186, !11184, !11182}
!11607 = !{!11188, !11187, !11180, !11133, !11134, !11135, !11122, !11129, !11128, !11127, !11126, !11125, !11124, !11123}
!11608 = !{!11190, !11186, !11188, !11184, !11187, !11182, !11180, !11133, !11134, !11122, !11129, !11128, !11127, !11126, !11125, !11123}
!11609 = !{!11192, !11186, !11188, !11184, !11187, !11182, !11180, !11133, !11134, !11122, !11129, !11128, !11127, !11126, !11125, !11123}
!11610 = !{!11180, !11133, !11134, !11122, !11129, !11128, !11127, !11126, !11125, !11123}
!11611 = !{!11180, !11134}
!11612 = !{!11133, !11135, !11122, !11129, !11128, !11127, !11126, !11125, !11124, !11123}
!11613 = !{!11194, !11180, !11133, !11134, !11122, !11129, !11128, !11127, !11126, !11125, !11123}
!11614 = !{!11133, !11134, !11122, !11129, !11128, !11127, !11126, !11125, !11123}
!11615 = !{!11196}
!11616 = !{!11198}
!11617 = !{!11198, !11196}
!11618 = !{!11199, !11180, !11133, !11134, !11122, !11129, !11128, !11127, !11126, !11125, !11123}
!11619 = !{!11201}
!11620 = !{!11202, !11201, !11199, !11198, !11196, !11180, !11133, !11134, !11122, !11129, !11128, !11127, !11126, !11125, !11123}
!11621 = !{!11204, !11202, !11201, !11199, !11198, !11196, !11180, !11133, !11134, !11135, !11122, !11129, !11128, !11127, !11126, !11125, !11124, !11123}
!11622 = !{!11202, !11199, !11180, !11133, !11134, !11122, !11129, !11128, !11127, !11126, !11125, !11123}
!11623 = !{!11206}
!11624 = !{!11208}
!11625 = !{!11210}
!11626 = !{!11210, !11208, !11206}
!11627 = !{!11213, !11212, !11211, !11202, !11201, !11199, !11198, !11196, !11180, !11133, !11134, !11122, !11129, !11128, !11127, !11126, !11125, !11123}
!11628 = !{!11215, !11210, !11213, !11208, !11212, !11211, !11206, !11202, !11201, !11199, !11198, !11196, !11180, !11133, !11134, !11122, !11129, !11128, !11127, !11126, !11125, !11123}
!11629 = !{!11217, !11210, !11213, !11208, !11212, !11211, !11206, !11202, !11201, !11199, !11198, !11196, !11180, !11133, !11134, !11122, !11129, !11128, !11127, !11126, !11125, !11123}
!11630 = !{!11219, !11206}
!11631 = !{!11220, !11211, !11202, !11201, !11199, !11198, !11196, !11180, !11133, !11134, !11122, !11129, !11128, !11127, !11126, !11125, !11123}
!11632 = !{!11222}
!11633 = !{!11225, !11224, !11202, !11201, !11199, !11198, !11196, !11180, !11133, !11134, !11122, !11129, !11128, !11127, !11126, !11125, !11123}
!11634 = !{!11227, !11222, !11225, !11224, !11202, !11201, !11199, !11198, !11196, !11180, !11133, !11134, !11122, !11129, !11128, !11127, !11126, !11125, !11123}
!11635 = !{!11222, !11225, !11224, !11202, !11201, !11199, !11198, !11196, !11180, !11133, !11134, !11122, !11129, !11128, !11127, !11126, !11125, !11123}
!11636 = !{!11202, !11201, !11199, !11198, !11196, !11180, !11133, !11134, !11135, !11122, !11129, !11128, !11127, !11126, !11125, !11124, !11123}
!11637 = !{!11229}
!11638 = !{!11230}
!11639 = !{!11232}
!11640 = !{!11233, !11230, !11201, !11198, !11196}
!11641 = !{!11232, !11229, !11202, !11199, !11180, !11133, !11134, !11122, !11129, !11128, !11127, !11126, !11125, !11123}
!11642 = !{!11232, !11233, !11230, !11201, !11198, !11196}
!11643 = !{!11229, !11202, !11199, !11180, !11133, !11134, !11122, !11129, !11128, !11127, !11126, !11125, !11123}
!11644 = !{!11230, !11202, !11201, !11199, !11198, !11196, !11180, !11133, !11134, !11135, !11122, !11129, !11128, !11127, !11126, !11125, !11124, !11123}
!11645 = !{!11236, !11199, !11180, !11133, !11134, !11122, !11129, !11128, !11127, !11126, !11125, !11123}
!11646 = !{!11236, !11237, !11199, !11198, !11196, !11180, !11133, !11134, !11122, !11129, !11128, !11127, !11126, !11125, !11123}
!11647 = !{!11239, !11236, !11237, !11199, !11198, !11196, !11180, !11133, !11134, !11135, !11122, !11129, !11128, !11127, !11126, !11125, !11124, !11123}
!11648 = !{!11241}
!11649 = !{!11243}
!11650 = !{!11245}
!11651 = !{!11245, !11243, !11241}
!11652 = !{!11248, !11247, !11246, !11236, !11199, !11180, !11133, !11134, !11122, !11129, !11128, !11127, !11126, !11125, !11123}
!11653 = !{!11250, !11245, !11248, !11243, !11247, !11246, !11241, !11236, !11199, !11180, !11133, !11134, !11122, !11129, !11128, !11127, !11126, !11125, !11123}
!11654 = !{!11252, !11245, !11248, !11243, !11247, !11246, !11241, !11236, !11199, !11180, !11133, !11134, !11122, !11129, !11128, !11127, !11126, !11125, !11123}
!11655 = !{!11254, !11241}
!11656 = !{!11255, !11246, !11236, !11199, !11180, !11133, !11134, !11122, !11129, !11128, !11127, !11126, !11125, !11123}
!11657 = !{!11257}
!11658 = !{!11260, !11259, !11236, !11199, !11180, !11133, !11134, !11122, !11129, !11128, !11127, !11126, !11125, !11123}
!11659 = !{!11262, !11257, !11260, !11259, !11236, !11199, !11180, !11133, !11134, !11122, !11129, !11128, !11127, !11126, !11125, !11123}
!11660 = !{!11257, !11260, !11259, !11236, !11199, !11180, !11133, !11134, !11122, !11129, !11128, !11127, !11126, !11125, !11123}
!11661 = !{!11236, !11237, !11199, !11198, !11196, !11180, !11133, !11134, !11135, !11122, !11129, !11128, !11127, !11126, !11125, !11124, !11123}
!11662 = !{!11264, !11199, !11198, !11196, !11180, !11133, !11134, !11122, !11129, !11128, !11127, !11126, !11125, !11123}
!11663 = !{!11264, !11199, !11198, !11196, !11180, !11133, !11134, !11135, !11122, !11129, !11128, !11127, !11126, !11125, !11124, !11123}
!11664 = !{!11272, !11270, !11268, !11266}
!11665 = !{!11274, !11272, !11270, !11268, !11266}
!11666 = !{!11280, !11278, !11276, !11266}
!11667 = !{!11282, !11280, !11278, !11276, !11266}
!11668 = !{!11286, !11284, !11264, !11199, !11198, !11196, !11180, !11133, !11134, !11135, !11122, !11129, !11128, !11127, !11126, !11125, !11124, !11123}
!11669 = !{!11288}
!11670 = !{!11290}
!11671 = !{!11292}
!11672 = !{!11292, !11290, !11288}
!11673 = !{!11295, !11294, !11293, !11264, !11199, !11198, !11196, !11180, !11133, !11134, !11122, !11129, !11128, !11127, !11126, !11125, !11123}
!11674 = !{!11297, !11292, !11295, !11290, !11294, !11293, !11288, !11264, !11199, !11198, !11196, !11180, !11133, !11134, !11122, !11129, !11128, !11127, !11126, !11125, !11123}
!11675 = !{!11299, !11292, !11295, !11290, !11294, !11293, !11288, !11264, !11199, !11198, !11196, !11180, !11133, !11134, !11122, !11129, !11128, !11127, !11126, !11125, !11123}
!11676 = !{!11301, !11288}
!11677 = !{!11302, !11293, !11264, !11199, !11198, !11196, !11180, !11133, !11134, !11122, !11129, !11128, !11127, !11126, !11125, !11123}
!11678 = !{!11304, !11264, !11199, !11198, !11196, !11180, !11133, !11134, !11135, !11122, !11129, !11128, !11127, !11126, !11125, !11124, !11123}
!11679 = !{!11312, !11310, !11308, !11306}
!11680 = !{!11314, !11312, !11310, !11308, !11306}
!11681 = !{!11320, !11318, !11316, !11306}
!11682 = !{!11322, !11320, !11318, !11316, !11306}
!11683 = !{!11324}
!11684 = !{!11304, !11264, !11199, !11198, !11196, !11180, !11133, !11134, !11122, !11129, !11128, !11127, !11126, !11125, !11123}
!11685 = !{!11326, !11324, !11304, !11264, !11199, !11198, !11196, !11180, !11133, !11134, !11122, !11129, !11128, !11127, !11126, !11125, !11123}
!11686 = !{!11324, !11304, !11264, !11199, !11198, !11196, !11180, !11133, !11134, !11122, !11129, !11128, !11127, !11126, !11125, !11123}
!11687 = !{!11328, !11199, !11198, !11196, !11180, !11133, !11134, !11135, !11122, !11129, !11128, !11127, !11126, !11125, !11124, !11123}
!11688 = !{!11328, !11199, !11180, !11133, !11134, !11122, !11129, !11128, !11127, !11126, !11125, !11123}
!11689 = !{!11330}
!11690 = !{!11332}
!11691 = !{!11332, !11330, !11198, !11196}
!11692 = !{!11333, !11199, !11180, !11133, !11134, !11122, !11129, !11128, !11127, !11126, !11125, !11123}
!11693 = !{!11332, !11333, !11330, !11199, !11198, !11196, !11180, !11133, !11134, !11135, !11122, !11129, !11128, !11127, !11126, !11125, !11124, !11123}
!11694 = !{!11339, !11337, !11335}
!11695 = !{!11345, !11343, !11341}
!11696 = !{!11333, !11330, !11199, !11198, !11196, !11180, !11133, !11134, !11122, !11129, !11128, !11127, !11126, !11125, !11123}
!11697 = !{!11347, !11333, !11330, !11199, !11198, !11196, !11180, !11133, !11134, !11135, !11122, !11129, !11128, !11127, !11126, !11125, !11124, !11123}
!11698 = !{!11349}
!11699 = !{!11351}
!11700 = !{!11353}
!11701 = !{!11353, !11351, !11349}
!11702 = !{!11356, !11355, !11354, !11333, !11330, !11199, !11198, !11196, !11180, !11133, !11134, !11122, !11129, !11128, !11127, !11126, !11125, !11123}
!11703 = !{!11358, !11353, !11356, !11351, !11355, !11354, !11349, !11333, !11330, !11199, !11198, !11196, !11180, !11133, !11134, !11122, !11129, !11128, !11127, !11126, !11125, !11123}
!11704 = !{!11360, !11353, !11356, !11351, !11355, !11354, !11349, !11333, !11330, !11199, !11198, !11196, !11180, !11133, !11134, !11122, !11129, !11128, !11127, !11126, !11125, !11123}
!11705 = !{!11362, !11349}
!11706 = !{!11363, !11354, !11333, !11330, !11199, !11198, !11196, !11180, !11133, !11134, !11122, !11129, !11128, !11127, !11126, !11125, !11123}
!11707 = !{!11365}
!11708 = !{!11367}
!11709 = !{!11369}
!11710 = !{!11369, !11367, !11365, !11371, !11330, !11198, !11196}
!11711 = !{!11372, !11333, !11199, !11180, !11133, !11134, !11122, !11129, !11128, !11127, !11126, !11125, !11123}
!11712 = !{!11369, !11367, !11365, !11372, !11371, !11333, !11330, !11199, !11198, !11196, !11180, !11133, !11134, !11135, !11122, !11129, !11128, !11127, !11126, !11125, !11124, !11123}
!11713 = !{!11378, !11376, !11374}
!11714 = !{!11384, !11382, !11380}
!11715 = !{!11386}
!11716 = !{!11372, !11371, !11333, !11330, !11199, !11198, !11196, !11180, !11133, !11134, !11122, !11129, !11128, !11127, !11126, !11125, !11123}
!11717 = !{!11388, !11386, !11372, !11371, !11333, !11330, !11199, !11198, !11196, !11180, !11133, !11134, !11122, !11129, !11128, !11127, !11126, !11125, !11123}
!11718 = !{!11386, !11372, !11371, !11333, !11330, !11199, !11198, !11196, !11180, !11133, !11134, !11122, !11129, !11128, !11127, !11126, !11125, !11123}
!11719 = !{!11371}
!11720 = !{!11333, !11330, !11199, !11198, !11196, !11180, !11133, !11134, !11135, !11122, !11129, !11128, !11127, !11126, !11125, !11124, !11123}
!11721 = !{!11390}
!11722 = !{!11391}
!11723 = !{!11391, !11330, !11198, !11196}
!11724 = !{!11390, !11333, !11199, !11180, !11133, !11134, !11122, !11129, !11128, !11127, !11126, !11125, !11123}
!11725 = !{!11391, !11333, !11330, !11199, !11198, !11196, !11180, !11133, !11134, !11135, !11122, !11129, !11128, !11127, !11126, !11125, !11124, !11123}
!11726 = !{!11393}
!11727 = !{!11395}
!11728 = !{!11397}
!11729 = !{!11397, !11395, !11393}
!11730 = !{!11399, !11398, !11180, !11133, !11134, !11135, !11122, !11129, !11128, !11127, !11126, !11125, !11124, !11123}
!11731 = !{!11401, !11397, !11399, !11395, !11398, !11393, !11180, !11133, !11134, !11122, !11129, !11128, !11127, !11126, !11125, !11123}
!11732 = !{!11403, !11397, !11399, !11395, !11398, !11393, !11180, !11133, !11134, !11122, !11129, !11128, !11127, !11126, !11125, !11123}
!11733 = !{!11405, !11133, !11134, !11122, !11129, !11128, !11127, !11126, !11125, !11123}
!11734 = !{!11407}
!11735 = !{!11408}
!11736 = !{!11410}
!11737 = !{!11411}
!11738 = !{!11414, !11413, !11411, !11408, !11135}
!11739 = !{!11410, !11407, !11133, !11134, !11122, !11129, !11128, !11127, !11126, !11125, !11124, !11123}
!11740 = !{!11410, !11407, !11134}
!11741 = !{!11411, !11408, !11133, !11135, !11122, !11129, !11128, !11127, !11126, !11125, !11124, !11123}
!11742 = !{!11416}
!11743 = !{!11417}
!11744 = !{!11420, !11419, !11417, !11408, !11135}
!11745 = !{!11416, !11407, !11133, !11134, !11122, !11129, !11128, !11127, !11126, !11125, !11124, !11123}
!11746 = !{!11416, !11407, !11134}
!11747 = !{!11417, !11408, !11133, !11135, !11122, !11129, !11128, !11127, !11126, !11125, !11124, !11123}
!11748 = !{!11422}
!11749 = !{!11423}
!11750 = !{!11426, !11425, !11423, !11408, !11135}
!11751 = !{!11422, !11407, !11133, !11134, !11122, !11129, !11128, !11127, !11126, !11125, !11124, !11123}
!11752 = !{!11422, !11407, !11134}
!11753 = !{!11423, !11408, !11133, !11135, !11122, !11129, !11128, !11127, !11126, !11125, !11124, !11123}
!11754 = !{!11428}
!11755 = !{!11429}
!11756 = !{!11432, !11431, !11429, !11408, !11135}
!11757 = !{!11428, !11407, !11133, !11134, !11122, !11129, !11128, !11127, !11126, !11125, !11124, !11123}
!11758 = !{!11428, !11407, !11134}
!11759 = !{!11429, !11408, !11133, !11135, !11122, !11129, !11128, !11127, !11126, !11125, !11124, !11123}
!11760 = !{!11434}
!11761 = !{!11435}
!11762 = !{!11438, !11437, !11435, !11408, !11135}
!11763 = !{!11434, !11407, !11133, !11134, !11122, !11129, !11128, !11127, !11126, !11125, !11124, !11123}
!11764 = !{!11434, !11407, !11134}
!11765 = !{!11435, !11408, !11133, !11135, !11122, !11129, !11128, !11127, !11126, !11125, !11124, !11123}
!11766 = !{!11441}
!11767 = !{!11442, !11133, !11134, !11122, !11129, !11128, !11127, !11126, !11125, !11123}
!11768 = !{!11444}
!11769 = !{!11446}
!11770 = !{!11446, !11444, !11441}
!11771 = !{!11448, !11447, !11442, !11133, !11134, !11122, !11129, !11128, !11127, !11126, !11125, !11123}
!11772 = !{!11448, !11446, !11447, !11444, !11442, !11441, !11133, !11134, !11122, !11129, !11128, !11127, !11126, !11125, !11123}
!11773 = !{!11448, !11446, !11447, !11444, !11442, !11441, !11133, !11134, !11135, !11122, !11129, !11128, !11127, !11126, !11125, !11124, !11123}
!11774 = !{!11447, !11444, !11442, !11441, !11133, !11134, !11135, !11122, !11129, !11128, !11127, !11126, !11125, !11124, !11123}
!11775 = !{!11447, !11442, !11133, !11134, !11122, !11129, !11128, !11127, !11126, !11125, !11123}
!11776 = !{!11451}
!11777 = !{!11452, !11133, !11134, !11122, !11129, !11128, !11127, !11126, !11125, !11123}
!11778 = !{!11452}
!11779 = !{!11452, !11451, !11133, !11134, !11122, !11129, !11128, !11127, !11126, !11125, !11123}
!11780 = !{!11452, !11133, !11122}
!11781 = !{!11451, !11134, !11135, !11129, !11128, !11127, !11126, !11125, !11124, !11123}
!11782 = !{!11454}
!11783 = !{!11455}
!11784 = !{!11454, !11133, !11134, !11135, !11122, !11129, !11128, !11127, !11126, !11125, !11124, !11123}
!11785 = !{!11454, !11455, !11133, !11134, !11122, !11129, !11128, !11127, !11126, !11125, !11123}
!11786 = !{!11455, !11133, !11134, !11135, !11122, !11129, !11128, !11127, !11126, !11125, !11124, !11123}
!11787 = !{!11459, !11457, !11133, !11134, !11122, !11129, !11128, !11127, !11126, !11125, !11124, !11123}
!11788 = !{!11457, !11133, !11134, !11122, !11129, !11128, !11127, !11126, !11125, !11123}
!11789 = !{!11457, !11133, !11134, !11122, !11129, !11128, !11127, !11126, !11125, !11124, !11123}
!11790 = !{!11457, !11133, !11134, !11135, !11122, !11129, !11128, !11127, !11126, !11125, !11124, !11123}
!11791 = !{!11461}
!11792 = !{!11463}
!11793 = !{!11461, !11464, !11457, !11133, !11134, !11135, !11122, !11129, !11128, !11127, !11126, !11125, !11124, !11123}
!11794 = !{!11466}
!11795 = !{!11468}
end_hunk_2
