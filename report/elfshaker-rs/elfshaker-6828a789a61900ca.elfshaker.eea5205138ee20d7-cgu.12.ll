Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/elfshaker-rs/original/elfshaker-6828a789a61900ca.elfshaker.eea5205138ee20d7-cgu.12?download=true
inline.NumInlined: 693
inline.NumDeleted: 334
begin_hunk_0_@_RINvNtNtCs1xwejQucwHj_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter6FilterINtNtB4_9into_iter8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10SnapshotIdENCNCNvMs0_NtB2v_10repositoryNtB3s_10Repository26find_redundant_loose_packss_00EB2r_EB2x_:bb.a
  store i64 %i.c, ptr %0, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.n, ptr %i.s, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10SnapshotIdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB12_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1)
  ret void

bb.g:                                             ; preds = %bb.b, %bb.e
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters6filter6FilterINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10SnapshotIdENCNCNvMs0_NtB27_10repositoryNtB34_10Repository26find_redundant_loose_packss_00EEB29_.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs1xwejQucwHj_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter6FilterINtNtB4_9into_iter8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENCNCNvMs0_NtB2v_10repositoryNtB3n_10Repository11loose_packs00EB2r_EB2x_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !5 ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !noundef !5
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = invoke { ptr, ptr } @_RINvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB6_8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropBX_ENCINvNtNtB1P_8adapters6filter15filter_try_foldBX_B2N_INtNtB1R_6result6ResultB2N_zENCNCNvMs0_NtB11_10repositoryNtB4V_10Repository11loose_packs00NCINvNtB8_16in_place_collect24write_in_place_with_dropBX_E0E0B4i_EB13_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.q, %bb.e ], [ %i.i, %bb.c ]
  invoke void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB12_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters6filter6FilterINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENCNCNvMs0_NtB27_10repositoryNtB2Z_10Repository11loose_packs00EEB29_.exit unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.j = extractvalue { ptr, ptr } %i.h, 1
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.d to i64
  %i.m = sub nuw i64 %i.k, %i.l
  %i.n = udiv exact i64 %i.m, 24                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.n, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.c, ptr %i.p, align 8
  invoke void @_RNvMs0_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdE32forget_allocation_drop_remainingB12_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdB1L_EEB1R_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #23
          to label %bb.b unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  store i64 %i.c, ptr %0, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.n, ptr %i.s, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB12_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1)
  ret void

bb.g:                                             ; preds = %bb.b, %bb.e
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters6filter6FilterINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENCNCNvMs0_NtB27_10repositoryNtB2Z_10Repository11loose_packs00EEB29_.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtB4_4pack6PackIdINtNtCs3oUPovFnLWP_4core6result6ResultuNtNtB4_5error5ErrorENCNvMs0_NtB4_10repositoryNtB2k_10Repository24find_duplicate_snapshots0QINtNtNtB1k_5slice4iter4IterBW_EEB6_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i64 noundef %1, ptr noalias nofree noundef align 8 dereferenceable(16) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [48 x i8], align 8                ; 10 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [64 x i8], align 8                ; 9 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [8 x i8], align 8                 ; 6 uses
  %i.m = alloca [8 x i8], align 8                 ; 6 uses
  %i.n = alloca [8 x i8], align 8                 ; 6 uses
  %i.o = alloca [8 x i8], align 8                 ; 9 uses
  %i.p = alloca [56 x i8], align 8                ; 8 uses
  %i.q = alloca [24 x i8], align 8                ; 6 uses
  %i.r = alloca [24 x i8], align 8                ; 6 uses
  %i.s = alloca [96 x i8], align 8                ; 9 uses
  %i.t = alloca [16 x i8], align 8                ; 5 uses
  %i.u = alloca [16 x i8], align 8                ; 5 uses
  %i.v = alloca [16 x i8], align 8                ; 5 uses
  %i.w = alloca [16 x i8], align 8                ; 5 uses
  %i.x = alloca [32 x i8], align 8                ; 7 uses
  %i.y = alloca [24 x i8], align 8                ; 6 uses
  %i.z = alloca [40 x i8], align 8                ; 9 uses
  %i.aa = alloca [24 x i8], align 8               ; 7 uses
  %i.ab = alloca [24 x i8], align 8               ; 4 uses
  %i.ac = alloca [24 x i8], align 8               ; 10 uses
  %i.ad = alloca [24 x i8], align 8               ; 11 uses
  %i.ae = alloca [24 x i8], align 16              ; 5 uses
  %i.af = alloca [16 x i8], align 8               ; 5 uses
  %i.ag = alloca [24 x i8], align 8               ; 5 uses
  %i.ah = alloca [24 x i8], align 8               ; 6 uses
  %i.ai = alloca [24 x i8], align 8               ; 8 uses
  %i.aj = alloca [40 x i8], align 8               ; 4 uses
  %i.ak = alloca [40 x i8], align 8               ; 4 uses
  %i.al = alloca [24 x i8], align 8               ; 9 uses
  %i.am = alloca [8 x i8], align 8                ; 8 uses
  %i.an = alloca [24 x i8], align 16              ; 17 uses
  %i.ao = alloca [8 x i8], align 8                ; 4 uses
  %i.ap = alloca [16 x i8], align 8               ; 11 uses
  %i.aq = alloca [8 x i8], align 8                ; 6 uses
  %i.ar = icmp eq i64 %1, 0
  br i1 %i.ar, label %bb.b, label %bb.c, !prof !12

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvNtCsaL1QbXo9JQH_3std9panicking11begin_panicReEB4_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 12, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !668
  %i.as = tail call noundef nonnull ptr @_RNvMs_NtNtCs1ftIqucrW6Z_15crossbeam_utils4sync10wait_groupNtB4_9WaitGroup3new(), !noalias !668
  store ptr %i.as, ptr %i.aq, align 8, !noalias !668
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !668
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !668
  %i.at = invoke noundef nonnull ptr @_RNvXsY_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB7_3vec3VecIBx_IBH_INtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtBP_6thread11join_handle10JoinHandleuEEEEEEENtNtB1Y_7default7Default7defaultCskuiImRAV2ip_9elfshaker()
          to label %bb.d unwind label %.thread68.i, !noalias !668 ; 4 uses

.thread68.i:                                      ; preds = %bb.c
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

bb.d:                                             ; preds = %bb.c
  store ptr %i.at, ptr %i.ao, align 8, !noalias !668
  %i.av = invoke noundef nonnull ptr @_RNvXs1_NtNtCs1ftIqucrW6Z_15crossbeam_utils4sync10wait_groupNtB5_9WaitGroupNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.aq)
          to label %bb.g unwind label %bb.e, !noalias !668

bb.e:                                             ; preds = %bb.d
  %i.aw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ax = atomicrmw add ptr %i.at, i64 -1 release, align 8, !noalias !669
  %i.ay = icmp eq i64 %i.ax, 1
  br i1 %i.ay, label %bb.f, label %.thread.i

bb.f:                                             ; preds = %bb.e
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB7_3vec3VecIBx_IBH_INtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtBP_6thread11join_handle10JoinHandleuEEEEEEE9drop_slowCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ao) #25
          to label %.thread.i unwind label %bb.dx, !noalias !668

bb.g:                                             ; preds = %bb.d
  store ptr %i.at, ptr %i.ap, align 8, !noalias !668
  %i.az = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 3 uses
  store ptr %i.av, ptr %i.az, align 8, !noalias !668
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !668
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !668
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !668
  call void @llvm.experimental.noalias.scope.decl(metadata !670)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !671
  store i64 0, ptr %i.ad, align 8, !noalias !671
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.ba, align 8, !noalias !671
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 4 uses
  store i64 0, ptr %i.bb, align 8, !noalias !671
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !671
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 4 uses
  store ptr %2, ptr %i.bc, align 8, !alias.scope !672, !noalias !671
  store i64 0, ptr %i.ac, align 8, !alias.scope !672, !noalias !671
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !673
  invoke void @_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter6traits8iteratorQINtNtNtBb_5slice4iter4IterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtB5_8Iterator9size_hintB1m_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.r, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bc)
          to label %bb.h unwind label %.thread65.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !671

.thread65.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.r, %bb.ak, %bb.l, %.invoke.i.i.i.i.i, %bb.g
  %lpad.loopexit.split-lp146 = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %.thread.i.i.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.bd = load i64, ptr %i.r, align 8, !noalias !673, !noundef !5 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !range !15, !noalias !673, !noundef !5 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.bh = load i64, ptr %i.bg, align 8, !noalias !673 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !673
  %i.bi = trunc nuw i64 %i.bf to i1               ; 2 uses
  %.sroa.46.0.i.i.i.i.i.i = select i1 %i.bi, i64 %i.bh, i64 undef
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !671
  store i64 %i.bf, ptr %i.w, align 8, !noalias !671
  %i.bj = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i64 %.sroa.46.0.i.i.i.i.i.i, ptr %i.bj, align 8, !noalias !671
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !671
  %i.bk = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i64 %i.bd, ptr %i.bk, align 8, !noalias !671
  store i64 1, ptr %i.v, align 8, !noalias !671
  %i.bl = icmp eq i64 %i.bh, %i.bd
  %or.cond.i.i.i.i.i = select i1 %i.bi, i1 %i.bl, i1 false, !prof !674
  br i1 %or.cond.i.i.i.i.i, label %bb.i, label %.invoke.i.i.i.i.i, !prof !674

.invoke.i.i.i.i.i:                                ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB4_8PeekableQINtNtNtBa_5slice4iter4IterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEENtNtNtB8_6traits8iterator8Iterator9size_hintB1C_.exit42.i.i.i.i.i, %bb.h
  %i.bm = phi ptr [ %i.w, %bb.h ], [ %i.u, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB4_8PeekableQINtNtNtBa_5slice4iter4IterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEENtNtNtB8_6traits8iterator8Iterator9size_hintB1C_.exit42.i.i.i.i.i ]
  %i.bn = phi ptr [ %i.v, %bb.h ], [ %i.t, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB4_8PeekableQINtNtNtBa_5slice4iter4IterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEENtNtNtB8_6traits8iterator8Iterator9size_hintB1C_.exit42.i.i.i.i.i ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core9panicking13assert_failedINtNtB4_6option6OptionjEBM_EB4_(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bm, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bn, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #26
          to label %.cont.i.i.i.i.i unwind label %.thread65.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !675

.cont.i.i.i.i.i:                                  ; preds = %.invoke.i.i.i.i.i
  unreachable

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !671
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !671
  %i.bo = icmp ugt i64 %1, %i.bd
  br i1 %i.bo, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.experimental.noalias.scope.decl(metadata !676)
  %i.bp = load i64, ptr %i.ac, align 8, !range !15, !alias.scope !676, !noalias !671, !noundef !5
  %i.bq = trunc nuw i64 %i.bp to i1
  br i1 %i.bq, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.br = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !alias.scope !676, !noalias !671, !align !7, !noundef !5
  %.not.i40.i.i.i.i.i = icmp eq ptr %i.bs, null
  br i1 %.not.i40.i.i.i.i.i, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB4_8PeekableQINtNtNtBa_5slice4iter4IterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEENtNtNtB8_6traits8iterator8Iterator9size_hintB1C_.exit42.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sroa.0.0.i33.i.i.i.i.i = phi i64 [ 0, %bb.j ], [ 1, %bb.k ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !677
  invoke void @_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter6traits8iteratorQINtNtNtBb_5slice4iter4IterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtB5_8Iterator9size_hintB1m_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bc)
          to label %.noexc41.i.i.i.i.i unwind label %.thread65.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !675

.noexc41.i.i.i.i.i:                               ; preds = %bb.l
  %i.bt = load i64, ptr %i.q, align 8, !noalias !677, !noundef !5
  %i.bu = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.bv = load i64, ptr %i.bu, align 8, !range !15, !noalias !677, !noundef !5
  %i.bw = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.bx = load i64, ptr %i.bw, align 8, !noalias !677 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !677
  %i.by = call i64 @llvm.uadd.sat.i64(i64 %i.bt, i64 %.sroa.0.0.i33.i.i.i.i.i)
  %i.bz = trunc nuw i64 %i.bv to i1               ; 2 uses
  %i.ca = add i64 %i.bx, %.sroa.0.0.i33.i.i.i.i.i ; 2 uses
  %i.cb = icmp uge i64 %i.ca, %i.bx
  %.sroa.46.0.i34.i.i.i.i.i = select i1 %i.bz, i64 %i.ca, i64 undef
  %narrow.i35.i.i.i.i.i = select i1 %i.bz, i1 %i.cb, i1 false
  %.sroa.05.0.i36.i.i.i.i.i = zext i1 %narrow.i35.i.i.i.i.i to i64
  br label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB4_8PeekableQINtNtNtBa_5slice4iter4IterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEENtNtNtB8_6traits8iterator8Iterator9size_hintB1C_.exit42.i.i.i.i.i

_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB4_8PeekableQINtNtNtBa_5slice4iter4IterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEENtNtNtB8_6traits8iterator8Iterator9size_hintB1C_.exit42.i.i.i.i.i: ; preds = %.noexc41.i.i.i.i.i, %bb.k
  %.sink.i37.i.i.i.i.i = phi i64 [ %i.by, %.noexc41.i.i.i.i.i ], [ 0, %bb.k ] ; 3 uses
  %.sroa.05.0.sink.i38.i.i.i.i.i = phi i64 [ %.sroa.05.0.i36.i.i.i.i.i, %.noexc41.i.i.i.i.i ], [ 1, %bb.k ] ; 2 uses
  %.sroa.46.0.sink.i39.i.i.i.i.i = phi i64 [ %.sroa.46.0.i34.i.i.i.i.i, %.noexc41.i.i.i.i.i ], [ 0, %bb.k ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !671
  store i64 %.sroa.05.0.sink.i38.i.i.i.i.i, ptr %i.u, align 8, !noalias !671
  %i.cc = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i64 %.sroa.46.0.sink.i39.i.i.i.i.i, ptr %i.cc, align 8, !noalias !671
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !671
  %i.cd = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 %.sink.i37.i.i.i.i.i, ptr %i.cd, align 8, !noalias !671
  store i64 1, ptr %i.t, align 8, !noalias !671
  %i.ce = trunc nuw i64 %.sroa.05.0.sink.i38.i.i.i.i.i to i1
  %i.cf = icmp eq i64 %.sroa.46.0.sink.i39.i.i.i.i.i, %.sink.i37.i.i.i.i.i
  %or.cond5.i.i.i.i.i = select i1 %i.ce, i1 %i.cf, i1 false, !prof !674
  br i1 %or.cond5.i.i.i.i.i, label %bb.m, label %.invoke.i.i.i.i.i, !prof !674

bb.m:                                             ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB4_8PeekableQINtNtNtBa_5slice4iter4IterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEENtNtNtB8_6traits8iterator8Iterator9size_hintB1C_.exit42.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !671
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !671
  %i.cg = udiv i64 %.sink.i37.i.i.i.i.i, %1
  %.pre.i = load ptr, ptr %i.ap, align 8, !alias.scope !670, !noalias !678
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.i
  %i.ch = phi ptr [ %.pre.i, %bb.m ], [ %i.at, %bb.i ] ; 5 uses
  %.sroa.0.0.i.i.i.i.i = phi i64 [ %i.cg, %bb.m ], [ 1, %bb.i ]
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ck = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.cl = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 6 uses
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.cm = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.cn = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.co = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.510.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.cq = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.423.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 20
  %.sroa.524.sroa.3.0..sroa.524.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  %.sroa.524.sroa.4.0..sroa.524.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %.sroa.524.sroa.5.0..sroa.524.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.ct = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %.sroa.6.0..sroa_idx3.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.sroa.9.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  br label %bb.o

bb.o:                                             ; preds = %bb.cf, %bb.n
  %.val.i.i.i.i.i = load ptr, ptr %i.bc, align 8, !noalias !671 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !679)
  %i.cv = load i64, ptr %i.ac, align 8, !range !15, !alias.scope !679, !noalias !671, !noundef !5
  %i.cw = trunc nuw i64 %i.cv to i1
  br i1 %i.cw, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_RNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB22_8PeekableQINtNtNtB5_5slice4iter4IterBN_EE4peek0EBT_.exitthread-pre-split.i.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i) ]
  %i.cx = load ptr, ptr %.val.i.i.i.i.i, align 8, !alias.scope !680, !noalias !681, !nonnull !5, !noundef !5 ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8, !alias.scope !680, !noalias !681, !nonnull !5, !noundef !5
  %i.da = icmp eq ptr %i.cx, %i.cz
  br i1 %i.da, label %_RNCNvMs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB7_8PeekableQINtNtNtBd_5slice4iter4IterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEE4peek0B1F_.exit.i.i.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.db = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  store ptr %i.db, ptr %.val.i.i.i.i.i, align 8, !alias.scope !680, !noalias !681
  br label %_RNCNvMs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB7_8PeekableQINtNtNtBd_5slice4iter4IterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEE4peek0B1F_.exit.i.i.i.i.i.i

_RNCNvMs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB7_8PeekableQINtNtNtBd_5slice4iter4IterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEE4peek0B1F_.exit.i.i.i.i.i.i: ; preds = %bb.q, %bb.p
  %.sroa.0.0.i.i.i.i.i.i.i.i.i = phi ptr [ %i.cx, %bb.q ], [ null, %bb.p ] ; 2 uses
  store i64 1, ptr %i.ac, align 8, !alias.scope !679, !noalias !671
  store ptr %.sroa.0.0.i.i.i.i.i.i.i.i.i, ptr %i.ci, align 8, !alias.scope !679, !noalias !671
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_RNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB22_8PeekableQINtNtNtB5_5slice4iter4IterBN_EE4peek0EBT_.exit.i.i.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_RNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB22_8PeekableQINtNtNtB5_5slice4iter4IterBN_EE4peek0EBT_.exitthread-pre-split.i.i.i.i.i: ; preds = %bb.o
  %.pr.i.i.i.i.i = load ptr, ptr %i.ci, align 8, !noalias !671
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_RNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB22_8PeekableQINtNtNtB5_5slice4iter4IterBN_EE4peek0EBT_.exit.i.i.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_RNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB22_8PeekableQINtNtNtB5_5slice4iter4IterBN_EE4peek0EBT_.exit.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_RNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB22_8PeekableQINtNtNtB5_5slice4iter4IterBN_EE4peek0EBT_.exitthread-pre-split.i.i.i.i.i, %_RNCNvMs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB7_8PeekableQINtNtNtBd_5slice4iter4IterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEE4peek0B1F_.exit.i.i.i.i.i.i
  %i.dc = phi ptr [ %.pr.i.i.i.i.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_RNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB22_8PeekableQINtNtNtB5_5slice4iter4IterBN_EE4peek0EBT_.exitthread-pre-split.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i.i.i.i.i, %_RNCNvMs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB7_8PeekableQINtNtNtBd_5slice4iter4IterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEE4peek0B1F_.exit.i.i.i.i.i.i ]
  %.not.i.i.i.i.i = icmp eq ptr %i.dc, null
  br i1 %.not.i.i.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_RNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB22_8PeekableQINtNtNtB5_5slice4iter4IterBN_EE4peek0EBT_.exit.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !671
  invoke void @_RNvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_iterINtB4_3VecRNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEINtB2_12SpecFromIterBU_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters4take4TakeQINtNtB29_8peekable8PeekableQINtNtNtB2d_5slice4iter4IterBV_EEEE9from_iterB11_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ab, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ac, i64 noundef %.sroa.0.0.i.i.i.i.i)
          to label %bb.v unwind label %.thread65.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !675

bb.s:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_RNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB22_8PeekableQINtNtNtB5_5slice4iter4IterBN_EE4peek0EBT_.exit.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !671
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !671
  %i.dd = load ptr, ptr %i.ba, align 8, !noalias !671, !nonnull !5, !noundef !5 ; 3 uses
  %i.de = load i64, ptr %i.ad, align 8, !range !8, !noalias !671, !noundef !5
  %i.df = load i64, ptr %i.bb, align 8, !noalias !671, !noundef !5 ; 2 uses
  %i.dg = icmp ult i64 %i.df, 384307168202282326
  call void @llvm.assume(i1 %i.dg)
  %i.dh = getelementptr inbounds nuw [24 x i8], ptr %i.dd, i64 %i.df
  store ptr %i.dd, ptr %i.x, align 8, !noalias !671
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %i.dd, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !671
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 %i.de, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !noalias !671
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  store ptr %i.dh, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !noalias !671
  invoke void @_RINvNtNtCs3oUPovFnLWP_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtCs1ftIqucrW6Z_15crossbeam_utils6thread16ScopedJoinHandleINtB1b_3VecINtNtB6_6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEENCNCINvNtB3v_4algo15run_in_parallelRNtNtB3v_4pack6PackIdB34_NCNvMs0_NtB3v_10repositoryNtB5m_10Repository24find_duplicate_snapshots0QINtNtNtB6_5slice4iter4IterB4Q_EE0s_0EB2T_IB35_zINtNtB1d_5boxed3BoxDNtNtB6_3any3AnyNtNtB6_6marker4SendEL_EENCINvXso_B37_IB35_IB2U_B2T_EB79_EINtNtNtB4_6traits7collect12FromIteratorIB35_B2T_B79_EE9from_iterBQ_E0B8o_EB3x_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.y, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.x)
          to label %.noexc44.i unwind label %bb.ck, !noalias !668

.noexc44.i:                                       ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !671
  %i.di = load i64, ptr %i.y, align 8, !range !6, !noalias !671, !noundef !5 ; 2 uses
  %i.dj = icmp eq i64 %i.di, -1
  %i.dk = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.dl = load ptr, ptr %i.dk, align 8, !noalias !671, !nonnull !5, !noundef !5 ; 4 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 2 uses
  br i1 %i.dj, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.noexc44.i
  %i.dn = load ptr, ptr %i.dm, align 8, !noalias !671, !nonnull !5, !align !7, !noundef !5
  %i.do = insertelement <2 x ptr> <ptr inttoptr (i64 -1 to ptr), ptr poison>, ptr %i.dl, i64 1
  br label %bb.cm

bb.u:                                             ; preds = %.noexc44.i
  %i.dp = load i64, ptr %i.dm, align 8, !noalias !671, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !671
  %i.dq = icmp ult i64 %i.dp, 384307168202282326
  call void @llvm.assume(i1 %i.dq)
  %i.dr = getelementptr inbounds nuw [24 x i8], ptr %i.dl, i64 %i.dp
  store ptr %i.dl, ptr %i.s, align 8, !noalias !671
  %.sroa.016.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.dl, ptr %.sroa.016.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !671
  %.sroa.016.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i64 %i.di, ptr %.sroa.016.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !noalias !671
  %.sroa.016.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store ptr %i.dr, ptr %.sroa.016.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !noalias !671
  %.sroa.417.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  store ptr null, ptr %.sroa.417.0..sroa_idx.i.i.i.i.i, align 8, !noalias !671
  %.sroa.619.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  store ptr null, ptr %.sroa.619.0..sroa_idx.i.i.i.i.i, align 8, !noalias !671
  invoke void @_RNvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_iterINtB4_3VecINtNtCs3oUPovFnLWP_4core6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEINtB2_12SpecFromIterBU_INtNtNtNtBZ_4iter8adapters7flatten7FlattenINtNtB4_9into_iter8IntoIterBK_EEE9from_iterB1D_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ae, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(96) %i.s)
          to label %.noexc45.i unwind label %bb.ck, !noalias !668

.noexc45.i:                                       ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !671
  %i.ds = load <2 x ptr>, ptr %i.ae, align 16, !noalias !668
end_hunk_0
