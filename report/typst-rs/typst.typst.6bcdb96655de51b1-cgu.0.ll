Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst.typst.6bcdb96655de51b1-cgu.0?download=true
inline.NumInlined: 14587
inline.NumDeleted: 6611
loop-unroll.NumCompletelyUnrolled: 49
loop-unroll.NumRuntimeUnrolled: 62
loop-unroll.NumUnrolled: 111
begin_hunk_0_@_RNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB8_4Once9call_onceNCINvNtCsf1gSX8u3EQ2_10rayon_core8registry19set_global_registryNCINvB13_20init_global_registryNtB13_12DefaultSpawnE0E0E0Cs9fPPV5zPXBl_5typst:bb.a
bb.db:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsf1gSX8u3EQ2_10rayon_core8registry10TerminatorECs9fPPV5zPXBl_5typst.exit102.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsf1gSX8u3EQ2_10rayon_core8registry8RegistryE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.z) #63
          to label %bb.di unwind label %bb.bc, !noalias !25351

bb.dc:                                            ; preds = %.thread169.i.i.i, %bb.dh, %bb.dg, %.thread130.i.i.i, %bb.df, %bb.de, %bb.cz, %.critedge.i.i.i, %bb.bm, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsf1gSX8u3EQ2_10rayon_core5sleep5SleepECs9fPPV5zPXBl_5typst.exit.i.i.i, %.body67.i.i.i
  %i.mf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #64, !noalias !25351
  unreachable

bb.dd:                                            ; preds = %bb.bu
  %i.mg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  store ptr %i.ju, ptr %.sroa.08.sroa.0.sroa.2.0..sroa_idx.i.i.i, align 8, !noalias !25352
  store ptr %i.ka, ptr %.sroa.08.sroa.3.0..sroa_idx.i.i.i, align 8, !noalias !25352
  store i64 %i.ke, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !noalias !25352
  %i.mh = atomicrmw sub ptr %i.kb, i64 1 release, align 8, !noalias !25458
  %i.mi = icmp eq i64 %i.mh, 1
  br i1 %i.mi, label %bb.de, label %.noexc106.i.i.i

bb.de:                                            ; preds = %bb.dd
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs4ofGZotLxya_15crossbeam_utils12cache_padded11CachePaddedINtNtCs66IsRtDrrKP_15crossbeam_deque5deque5InnerNtNtCsf1gSX8u3EQ2_10rayon_core3job6JobRefEEE9drop_slowB2x_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.s) #63
          to label %.noexc106.i.i.i unwind label %bb.dc, !noalias !25351

.noexc106.i.i.i:                                  ; preds = %bb.de, %bb.dd
  call void @llvm.experimental.noalias.scope.decl(metadata !25459)
  call void @llvm.experimental.noalias.scope.decl(metadata !25460)
  call void @llvm.experimental.noalias.scope.decl(metadata !25461)
  %i.mj = load ptr, ptr %i.t, align 8, !alias.scope !25462, !noalias !25352, !nonnull !28, !noundef !28
  %i.mk = atomicrmw sub ptr %i.mj, i64 1 release, align 8, !noalias !25463
  %i.ml = icmp eq i64 %i.mk, 1
  br i1 %i.ml, label %bb.df, label %.critedge.i.i.i

bb.df:                                            ; preds = %.noexc106.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs4ofGZotLxya_15crossbeam_utils12cache_padded11CachePaddedINtNtCs66IsRtDrrKP_15crossbeam_deque5deque5InnerNtNtCsf1gSX8u3EQ2_10rayon_core3job6JobRefEEE9drop_slowB2x_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.t) #63
          to label %.critedge.i.i.i unwind label %bb.dc, !noalias !25351

.thread140.i.i.i:                                 ; preds = %.thread130.i.i.i
  br i1 %.sroa.015.0135.i.i.i, label %bb.dg, label %.thread169.i.i.i

.thread130.i.i.i:                                 ; preds = %bb.bk, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsf1gSX8u3EQ2_10rayon_core5sleep5SleepECs9fPPV5zPXBl_5typst.exit.i.i.i, %bb.bb
  %.pn48.pn.pn.pn.pn139.i.i.i = phi { ptr, i32 } [ %.pn.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsf1gSX8u3EQ2_10rayon_core5sleep5SleepECs9fPPV5zPXBl_5typst.exit.i.i.i ], [ %i.ir, %bb.bk ], [ %i.hy, %bb.bb ] ; 2 uses
  %.sroa.015.0135.i.i.i = phi i1 [ true, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsf1gSX8u3EQ2_10rayon_core5sleep5SleepECs9fPPV5zPXBl_5typst.exit.i.i.i ], [ false, %bb.bk ], [ true, %bb.bb ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtCs66IsRtDrrKP_15crossbeam_deque5deque7StealerNtNtCsf1gSX8u3EQ2_10rayon_core3job6JobRefEEECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ab) #62
          to label %.thread140.i.i.i unwind label %bb.dc, !noalias !25351

bb.dg:                                            ; preds = %.thread140.i.i.i
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtCs66IsRtDrrKP_15crossbeam_deque5deque6WorkerNtNtCsf1gSX8u3EQ2_10rayon_core3job6JobRefEEECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef align 8 dereferenceable(24) %i.m) #62
          to label %.thread169.i.i.i unwind label %bb.dc, !noalias !25351

bb.dh:                                            ; preds = %bb.au
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtCs66IsRtDrrKP_15crossbeam_deque5deque7StealerNtNtCsf1gSX8u3EQ2_10rayon_core3job6JobRefEEECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ad) #62
          to label %.thread169.i.i.i unwind label %bb.dc, !noalias !25351

.thread169.i.i.i:                                 ; preds = %bb.dh, %bb.dg, %.thread140.i.i.i
  %.pn48.pn.pn.pn.pn.pn129172.i.i.i = phi { ptr, i32 } [ %lpad.phi.i.i.i.i, %bb.dh ], [ %.pn48.pn.pn.pn.pn139.i.i.i, %.thread140.i.i.i ], [ %.pn48.pn.pn.pn.pn139.i.i.i, %bb.dg ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtCs66IsRtDrrKP_15crossbeam_deque5deque6WorkerNtNtCsf1gSX8u3EQ2_10rayon_core3job6JobRefEEECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ae) #62
          to label %.body67.i.i.i unwind label %bb.dc, !noalias !25351

common.resume.i:                                  ; preds = %bb.do, %.body67.i.i.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.mw, %bb.do ], [ %.pn48.pn.pn.pn.pn.pn.pn.i.i.i, %.body67.i.i.i ]
  resume { ptr, i32 } %common.resume.op.i

bb.di:                                            ; preds = %bb.db, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsf1gSX8u3EQ2_10rayon_core8registry10TerminatorECs9fPPV5zPXBl_5typst.exit102.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !25352
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !25352
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !25352
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !25352
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsf1gSX8u3EQ2_10rayon_core17ThreadPoolBuilderECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.af), !noalias !25351
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !25348
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !25348
  br label %bb.dk

bb.dj:                                            ; preds = %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !25352
  %i.mm = load ptr, ptr %i.z, align 8, !noalias !25352, !nonnull !28, !noundef !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !25352
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !25352
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !25352
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !25352
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !25352
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsf1gSX8u3EQ2_10rayon_core17ThreadPoolBuilderECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.af), !noalias !25351
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !25348
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !25348
  store ptr %i.mm, ptr @_RNvNtCsf1gSX8u3EQ2_10rayon_core8registry12THE_REGISTRY, align 8, !noalias !25464
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.di
  %.sroa.6.0.i = phi ptr [ %.sroa.6.012.i, %bb.di ], [ @_RNvNtCsf1gSX8u3EQ2_10rayon_core8registry12THE_REGISTRY, %bb.dj ] ; 2 uses
  %.sroa.0.0.i = phi i64 [ %.sroa.0.011.i, %bb.di ], [ -1, %bb.dj ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.4.0.copyload) ]
  %.val.i = load i64, ptr %.sroa.5.sroa.4.0.copyload, align 8, !range !56, !noalias !25464, !noundef !28
  %i.mn = getelementptr i8, ptr %.sroa.5.sroa.4.0.copyload, i64 8 ; 3 uses
  %.val8.i = load ptr, ptr %i.mn, align 8, !noalias !25464 ; 4 uses
  %i.mo = icmp eq i64 %.val.i, 2
  br i1 %i.mo, label %bb.dl, label %_RNCINvNtCsf1gSX8u3EQ2_10rayon_core8registry19set_global_registryNCINvB4_20init_global_registryNtB4_12DefaultSpawnE0E0Cs9fPPV5zPXBl_5typst.exit

bb.dl:                                            ; preds = %bb.dk
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val8.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !25465
  %i.mp = ptrtoint ptr %.val8.i to i64            ; 2 uses
  %i.mq = and i64 %i.mp, 3
  switch i64 %i.mq, label %default.unreachable [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs9fPPV5zPXBl_5typst.exit.i.i.i.i
    i64 3, label %bb.dm
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs9fPPV5zPXBl_5typst.exit.i.i.i.i
    i64 1, label %bb.dn
  ], !prof !66

bb.dm:                                            ; preds = %bb.dl
  %i.mr = icmp ult ptr %.val8.i, inttoptr (i64 188978561024 to ptr)
  %i.ms = and i64 %i.mp, 1095216660480
  %i.mt = icmp ne i64 %i.ms, 1095216660480
  call void @llvm.assume(i1 %i.mr)
  call void @llvm.assume(i1 %i.mt)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs9fPPV5zPXBl_5typst.exit.i.i.i.i

bb.dn:                                            ; preds = %bb.dl
  %i.mu = getelementptr i8, ptr %.val8.i, i64 -1  ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.mu) ]
  %i.mv = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.mu, ptr %i.mv, align 8, !alias.scope !25466, !noalias !25465
  store i8 3, ptr %i.a, align 8, !alias.scope !25466, !noalias !25465
  invoke void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.mv)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs9fPPV5zPXBl_5typst.exit.i.i.i.i unwind label %bb.do, !noalias !25464

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs9fPPV5zPXBl_5typst.exit.i.i.i.i: ; preds = %bb.dn, %bb.dm, %bb.dl, %bb.dl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !25465
  br label %_RNCINvNtCsf1gSX8u3EQ2_10rayon_core8registry19set_global_registryNCINvB4_20init_global_registryNtB4_12DefaultSpawnE0E0Cs9fPPV5zPXBl_5typst.exit

bb.do:                                            ; preds = %bb.dn
  %i.mw = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.0.0.i, ptr %.sroa.5.sroa.4.0.copyload, align 8, !noalias !25464
  store ptr %.sroa.6.0.i, ptr %i.mn, align 8, !noalias !25464
  br label %common.resume.i

_RNCINvNtCsf1gSX8u3EQ2_10rayon_core8registry19set_global_registryNCINvB4_20init_global_registryNtB4_12DefaultSpawnE0E0Cs9fPPV5zPXBl_5typst.exit: ; preds = %bb.dk, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs9fPPV5zPXBl_5typst.exit.i.i.i.i
  store i64 %.sroa.0.0.i, ptr %.sroa.5.sroa.4.0.copyload, align 8, !noalias !25464
  store ptr %.sroa.6.0.i, ptr %i.mn, align 8, !noalias !25464
  ret void

bb.dp:                                            ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @360) #65
  unreachable
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i64 @_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTNtNtCs5PEMdK7bMAG_12typst_syntax4path6FileIdNtNtCsc4241EHy6Do_9typst_kit5files8FileSlotEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1A_NtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE0E0Cs9fPPV5zPXBl_5typst(ptr noalias nofree readonly align 8 captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) unnamed_addr #18 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !28, !noundef !28
  %i.b = sub nsw i64 0, %2
  %i.c = getelementptr inbounds [80 x i8], ptr %i.a, i64 %i.b
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -80
  %.val = load i16, ptr %i.d, align 2, !range !30, !alias.scope !25471, !noalias !25472, !noundef !28
  %i.e = zext i16 %.val to i64
  %i.f = mul i64 %i.e, -1065810590584100411       ; 2 uses
  %i.g = tail call noundef i64 @llvm.fshl.i64(i64 %i.f, i64 %i.f, i64 26)
  ret i64 %i.g
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i64 @_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTNtNtCsaL1QbXo9JQH_3std4path7PathBufbEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_bNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE0E0Cs9fPPV5zPXBl_5typst(ptr noalias nofree readonly align 8 captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) unnamed_addr #19 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !28, !noundef !28
  %i.b = sub nsw i64 0, %2
  %i.c = getelementptr inbounds [32 x i8], ptr %i.a, i64 %i.b
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -32
  %i.e = tail call fastcc noundef i64 @_RINvYNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherNtNtCs3oUPovFnLWP_4core4hash11BuildHasher8hash_oneRNtNtCsaL1QbXo9JQH_3std4path7PathBufECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.d)
  ret i64 %i.e
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i64 @_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTNtNtCsaL1QbXo9JQH_3std4path7PathBufuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE0E0Cs9fPPV5zPXBl_5typst(ptr noalias nofree readonly align 8 captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) unnamed_addr #19 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !28, !noundef !28
  %i.b = sub nsw i64 0, %2
  %i.c = getelementptr inbounds [24 x i8], ptr %i.a, i64 %i.b
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -24
  %i.e = tail call fastcc noundef i64 @_RINvYNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherNtNtCs3oUPovFnLWP_4core4hash11BuildHasher8hash_oneRNtNtCsaL1QbXo9JQH_3std4path7PathBufECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d)
  ret i64 %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef range(i32 0, 256) i32 @_RNCINvNtCsaL1QbXo9JQH_3std2rt10lang_startNtNtB6_7process8ExitCodeE0Cs9fPPV5zPXBl_5typst(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !28, !noundef !28
  %i.b = tail call fastcc noundef i8 @_RINvNtNtCsaL1QbXo9JQH_3std3sys9backtrace28___rust_begin_short_backtraceFENtNtB6_7process8ExitCodeB19_ECs9fPPV5zPXBl_5typst(ptr noundef nonnull %i.a) #63
  %i.c = zext i8 %i.b to i32
  ret i32 %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCINvNtCsf1gSX8u3EQ2_10rayon_core4join12join_contextNCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB10_5slice12IterProducerINtCsjFU9swAW47b_8indexmap6BucketNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEINtNtBY_3map11MapConsumerIB4U_IB4U_INtNtBY_10while_some17WhileSomeConsumerNtNtBY_6extend15ListVecConsumerENCINvNvXs2_NtB10_6resultINtNtCs3oUPovFnLWP_4core6result6ResultppEINtBY_20FromParallelIteratorIB70_ppEE13from_par_iter2okNtNtCs9fPPV5zPXBl_5typst4args6OutputNtNtCsakL8LGkl72C_4ecow6string9EcoStringE0ENCNvNtB8B_7compile16write_virtual_fss_0ENvMs0_B2B_B2y_4refsEE0NCBR_s_0INtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtBb3_3vec3VecB8x_EEBaW_E0B8B_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(136) %1, ptr noundef nonnull align 128 %2, i1 noundef zeroext %3) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 16               ; 5 uses
  %.sroa.0 = alloca i64, align 8                  ; 4 uses
  %.sroa.4 = alloca i64, align 8                  ; 3 uses
  %.sroa.5 = alloca i64, align 8                  ; 4 uses
  %i.c = alloca [136 x i8], align 8               ; 10 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 16               ; 13 uses
  %i.f = alloca [136 x i8], align 8               ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 272 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.i = load i64, ptr %i.h, align 128, !noundef !28
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 104 ; 2 uses
  store ptr %i.g, ptr %i.j, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 112 ; 4 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 120
  store i64 %i.i, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 128
  store i8 0, ptr %.sroa.6.0..sroa_idx, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.k, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false)
  store i64 0, ptr %i.f, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 280 ; 4 uses
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !28, !noundef !28 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 264
  %i.o = load atomic i64, ptr %i.n monotonic, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 256
  %i.q = load atomic i64, ptr %i.p seq_cst, align 8
  %i.r = sub i64 %i.o, %i.q
  %i.s = icmp slt i64 %i.r, 1
  %i.t = load ptr, ptr %i.l, align 8, !nonnull !28, !noundef !28 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 264
  %i.v = load atomic i64, ptr %i.u monotonic, align 8 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 256
  %i.x = load atomic i64, ptr %i.w acquire, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 296 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !noundef !28 ; 3 uses
  %i.aa = sub i64 %i.v, %i.x
  %.not.i = icmp slt i64 %i.aa, %i.z
  %.sink.sroa.gep = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %.sink.sroa.gep148 = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 4 uses
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !43

.thread:                                          ; preds = %bb.k, %bb.b, %.sink.split.i
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.b:                                             ; preds = %bb.a
  %i.ac = shl i64 %i.z, 1
  invoke fastcc void @_RNvMs4_NtCs66IsRtDrrKP_15crossbeam_deque5dequeINtB5_6WorkerNtNtCsf1gSX8u3EQ2_10rayon_core3job6JobRefE6resizeCs9fPPV5zPXBl_5typst(ptr noundef nonnull align 8 %i.l, i64 noundef %i.ac)
          to label %.noexc unwind label %.thread

.noexc:                                           ; preds = %bb.b
  %i.ad = load i64, ptr %i.y, align 8, !noundef !28
  br label %bb.c

bb.c:                                             ; preds = %.noexc, %bb.a
  %.sroa.02.0.i = phi i64 [ %i.ad, %.noexc ], [ %i.z, %bb.a ]
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 288
  %.sroa.01.0.i = load ptr, ptr %i.ae, align 32, !noundef !28
  %i.af = add i64 %.sroa.02.0.i, -1
  %i.ag = and i64 %i.af, %i.v
  %i.ah = getelementptr inbounds [16 x i8], ptr %.sroa.01.0.i, i64 %i.ag ; 2 uses
  store volatile ptr @_RNvXs2_NtCsf1gSX8u3EQ2_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtB1W_3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEENCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3W_5slice12IterProducerINtCsjFU9swAW47b_8indexmap6BucketNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEINtNtB3U_3map11MapConsumerIB7Q_IB7Q_INtNtB3U_10while_some17WhileSomeConsumerNtNtB3U_6extend15ListVecConsumerENCINvNvXs2_NtB3W_6resultINtNtCs3oUPovFnLWP_4core6result6ResultppEINtB3U_20FromParallelIteratorIB9Z_ppEE13from_par_iter2okB39_NtNtCsakL8LGkl72C_4ecow6string9EcoStringE0ENCNvNtB3d_7compile16write_virtual_fss_0ENvMs0_B5x_B5u_4refsEEs_0E0B1P_ENtB5_3Job7executeB3d_, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store volatile ptr %i.f, ptr %i.ai, align 8
  fence release
  %i.aj = load ptr, ptr %i.l, align 8, !nonnull !28, !noundef !28
  %i.ak = add i64 %i.v, 1
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 264
  store atomic i64 %i.ak, ptr %i.al release, align 8
  %i.am = load ptr, ptr %i.g, align 16, !nonnull !28, !noundef !28 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 472
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 496 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.ap = load atomic i64, ptr %i.ao seq_cst, align 8 ; 4 uses
  %i.aq = and i64 %i.ap, 4294967296
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %bb.e, label %_RINvMs_NtNtCsf1gSX8u3EQ2_10rayon_core5sleep8countersNtB5_14AtomicCounters31increment_jobs_event_counter_ifNvMB5_NtB5_16JobsEventCounter9is_sleepyECs9fPPV5zPXBl_5typst.exit.i

bb.e:                                             ; preds = %bb.d
  %i.as = or disjoint i64 %i.ap, 4294967296       ; 2 uses
  %i.at = cmpxchg ptr %i.ao, i64 %i.ap, i64 %i.as seq_cst monotonic, align 8
  %.sroa.18.0.in.i.i.i = extractvalue { i64, i1 } %i.at, 1
  br i1 %.sroa.18.0.in.i.i.i, label %_RINvMs_NtNtCsf1gSX8u3EQ2_10rayon_core5sleep8countersNtB5_14AtomicCounters31increment_jobs_event_counter_ifNvMB5_NtB5_16JobsEventCounter9is_sleepyECs9fPPV5zPXBl_5typst.exit.i, label %bb.d

_RINvMs_NtNtCsf1gSX8u3EQ2_10rayon_core5sleep8countersNtB5_14AtomicCounters31increment_jobs_event_counter_ifNvMB5_NtB5_16JobsEventCounter9is_sleepyECs9fPPV5zPXBl_5typst.exit.i: ; preds = %bb.e, %bb.d
  %.sroa.0.0.i.i = phi i64 [ %i.as, %bb.e ], [ %i.ap, %bb.d ] ; 2 uses
  %i.au = and i64 %.sroa.0.0.i.i, 65535           ; 2 uses
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %_RNvMNtCsf1gSX8u3EQ2_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit, label %bb.f

bb.f:                                             ; preds = %_RINvMs_NtNtCsf1gSX8u3EQ2_10rayon_core5sleep8countersNtB5_14AtomicCounters31increment_jobs_event_counter_ifNvMB5_NtB5_16JobsEventCounter9is_sleepyECs9fPPV5zPXBl_5typst.exit.i
  br i1 %i.s, label %bb.g, label %.sink.split.i, !prof !43

.sink.split.i:                                    ; preds = %bb.g, %bb.f
  invoke void @_RNvMNtCsf1gSX8u3EQ2_10rayon_core5sleepNtB2_5Sleep16wake_any_threads(ptr noundef nonnull align 8 %i.an, i32 noundef 1)
          to label %_RNvMNtCsf1gSX8u3EQ2_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit unwind label %.thread

bb.g:                                             ; preds = %bb.f
  %i.aw = lshr i64 %.sroa.0.0.i.i, 16
  %i.ax = and i64 %i.aw, 65535
  %i.ay = icmp eq i64 %i.ax, %i.au
  br i1 %i.ay, label %.sink.split.i, label %_RNvMNtCsf1gSX8u3EQ2_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit, !prof !38

_RNvMNtCsf1gSX8u3EQ2_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit: ; preds = %bb.g, %_RINvMs_NtNtCsf1gSX8u3EQ2_10rayon_core5sleep8countersNtB5_14AtomicCounters31increment_jobs_event_counter_ifNvMB5_NtB5_16JobsEventCounter9is_sleepyECs9fPPV5zPXBl_5typst.exit.i, %.sink.split.i
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.079.0.copyload = load ptr, ptr %i.az, align 8, !nonnull !28, !noundef !28
  %.sroa.480.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.sroa.480.0.copyload = load ptr, ptr %.sroa.480.0..sroa_idx, align 8, !nonnull !28, !noundef !28 ; 2 uses
  %.sroa.581.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.sroa.581.0.copyload = load i64, ptr %.sroa.581.0..sroa_idx, align 8
  %.sroa.682.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 96
  %.sroa.682.sroa.0.0.copyload = load i64, ptr %.sroa.682.0..sroa_idx, align 8
  %.sroa.682.sroa.4.0..sroa.682.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ba = load i64, ptr %.sroa.079.0.copyload, align 8, !noalias !25501, !noundef !28
  %i.bb = load i64, ptr %.sroa.480.0.copyload, align 8, !noalias !25501, !noundef !28
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.480.0.copyload, i64 8
  %i.bd = load i64, ptr %i.bc, align 8, !noalias !25501, !noundef !28
  %i.be = inttoptr i64 %.sroa.581.0.copyload to ptr
  invoke fastcc void @_RINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB8_5slice12IterProducerINtCsjFU9swAW47b_8indexmap6BucketNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEINtNtB6_3map11MapConsumerIB41_IB41_INtNtB6_10while_some17WhileSomeConsumerNtNtB6_6extend15ListVecConsumerENCINvNvXs2_NtB8_6resultINtNtCs3oUPovFnLWP_4core6result6ResultppEINtB6_20FromParallelIteratorIB66_ppEE13from_par_iter2okNtNtCs9fPPV5zPXBl_5typst4args6OutputNtNtCsakL8LGkl72C_4ecow6string9EcoStringE0ENCNvNtB7H_7compile16write_virtual_fss_0ENvMs0_B1I_B1F_4refsEEB7H_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, i64 noundef %i.ba, i1 noundef zeroext %3, i64 noundef %i.bb, i64 noundef %i.bd, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.be, i64 noundef %.sroa.682.sroa.0.0.copyload, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(32) %.sroa.682.sroa.4.0..sroa.682.0..sroa_idx.sroa_idx)
          to label %bb.j unwind label %bb.h

bb.h:                                             ; preds = %_RNvMNtCsf1gSX8u3EQ2_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  %i.bh = invoke { ptr, ptr } @_RNvNvNtCsaL1QbXo9JQH_3std9panicking12catch_unwind7cleanup(ptr noundef %i.bg)
          to label %bb.k unwind label %bb.i       ; 2 uses

bb.i:                                             ; preds = %bb.h
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking19panic_cannot_unwind() #64
  unreachable

bb.j:                                             ; preds = %_RNvMNtCsf1gSX8u3EQ2_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit
  %.sroa.595.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.595.0.copyload = load i64, ptr %.sroa.595.0..sroa_idx, align 16
  %i.bj = load <2 x ptr>, ptr %i.b, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store <2 x ptr> %i.bj, ptr %i.e, align 16
  store i64 %.sroa.595.0.copyload, ptr %.sink.sroa.gep148, align 16
  br label %bb.l

bb.k:                                             ; preds = %bb.h
  %i.bk = extractvalue { ptr, ptr } %i.bh, 0      ; 2 uses
  %i.bl = extractvalue { ptr, ptr } %i.bh, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bk) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bl) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  invoke void @_RNvNtCsf1gSX8u3EQ2_10rayon_core4join23join_recover_from_panic(ptr noundef nonnull align 128 %2, ptr noundef nonnull align 8 %i.j, ptr noundef nonnull %i.bk, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bl) #61
          to label %bb.af unwind label %.thread

.thread122.thread:                                ; preds = %bb.r, %bb.m
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtBI_3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEEEB1Y_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #62
  br label %bb.ag

bb.l:                                             ; preds = %bb.j, %bb.r
  %i.bm = load atomic i64, ptr %.sroa.4.0..sroa_idx acquire, align 8
  %i.bn = icmp eq i64 %i.bm, 3
  br i1 %i.bn, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bo = invoke fastcc { ptr, ptr } @_RNvMs8_NtCsf1gSX8u3EQ2_10rayon_core8registryNtB5_12WorkerThread14take_local_job(ptr noundef nonnull align 128 %2)
          to label %bb.p unwind label %.thread122.thread ; 2 uses

.loopexit:                                        ; preds = %bb.l, %bb.ac, %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %.sroa.0.0.copyload = load i64, ptr %i.e, align 16
  store i64 %.sroa.0.0.copyload, ptr %.sroa.0, align 8
  %.sroa.5.0.copyload = load i64, ptr %.sink.sroa.gep148, align 16
  store i64 %.sroa.5.0.copyload, ptr %.sroa.5, align 8
  %.sroa.065.0.copyload = load i64, ptr %i.f, align 8
  %.sroa.466.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.466.0.copyload = load ptr, ptr %.sroa.466.0..sroa_idx, align 8 ; 3 uses
  %.sroa.567.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.567.0.copyload = load ptr, ptr %.sroa.567.0..sroa_idx, align 8 ; 3 uses
  switch i64 %.sroa.065.0.copyload, label %default.unreachable1.i.i [
    i64 0, label %bb.n
    i64 1, label %_RNvMs1_NtCsf1gSX8u3EQ2_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtB1W_3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEENCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3W_5slice12IterProducerINtCsjFU9swAW47b_8indexmap6BucketNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEINtNtB3U_3map11MapConsumerIB7Q_IB7Q_INtNtB3U_10while_some17WhileSomeConsumerNtNtB3U_6extend15ListVecConsumerENCINvNvXs2_NtB3W_6resultINtNtCs3oUPovFnLWP_4core6result6ResultppEINtB3U_20FromParallelIteratorIB9Z_ppEE13from_par_iter2okB39_NtNtCsakL8LGkl72C_4ecow6string9EcoStringE0ENCNvNtB3d_7compile16write_virtual_fss_0ENvMs0_B5x_B5u_4refsEEs_0E0B1P_E11into_resultB3d_.exit
    i64 2, label %bb.o
  ], !prof !59

default.unreachable1.i.i:                         ; preds = %.loopexit
  unreachable

bb.n:                                             ; preds = %.loopexit
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @171, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @579) #65
          to label %.noexc49 unwind label %bb.ad

.noexc49:                                         ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %.loopexit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.466.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.567.0.copyload) ]
  invoke void @_RNvNtCsf1gSX8u3EQ2_10rayon_core6unwind16resume_unwinding(ptr noundef nonnull %.sroa.466.0.copyload, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.567.0.copyload) #61
          to label %.noexc50 unwind label %bb.ad

.noexc50:                                         ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.m
  %i.bp = extractvalue { ptr, ptr } %i.bo, 0      ; 3 uses
  %i.bq = extractvalue { ptr, ptr } %i.bo, 1      ; 2 uses
  %.not = icmp eq ptr %i.bp, null
  br i1 %.not, label %bb.ab, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.br = icmp eq ptr %i.f, %i.bq
  %i.bs = icmp eq ptr %i.bp, @_RNvXs2_NtCsf1gSX8u3EQ2_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtB1W_3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEENCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3W_5slice12IterProducerINtCsjFU9swAW47b_8indexmap6BucketNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEINtNtB3U_3map11MapConsumerIB7Q_IB7Q_INtNtB3U_10while_some17WhileSomeConsumerNtNtB3U_6extend15ListVecConsumerENCINvNvXs2_NtB3W_6resultINtNtCs3oUPovFnLWP_4core6result6ResultppEINtB3U_20FromParallelIteratorIB9Z_ppEE13from_par_iter2okB39_NtNtCsakL8LGkl72C_4ecow6string9EcoStringE0ENCNvNtB3d_7compile16write_virtual_fss_0ENvMs0_B5x_B5u_4refsEEs_0E0B1P_ENtB5_3Job7executeB3d_
  %or.cond = and i1 %i.br, %i.bs
  br i1 %or.cond, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  invoke void %i.bp(ptr noundef %i.bq)
          to label %bb.l unwind label %.thread122.thread

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.c, ptr noundef nonnull align 8 dereferenceable(136) %i.f, i64 136, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !25502)
  %i.bt = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.0.0.copyload.i51 = load ptr, ptr %i.bt, align 8, !alias.scope !25502, !noalias !25503 ; 2 uses
  %.not.i52 = icmp eq ptr %.sroa.0.0.copyload.i51, null
  br i1 %.not.i52, label %bb.u, label %bb.t, !prof !38

bb.t:                                             ; preds = %bb.s
  %i.bu = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %.sroa.3.i.sroa.6.0..sroa.3.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %.sroa.3.i.sroa.6.0.copyload = load i64, ptr %.sroa.3.i.sroa.6.0..sroa.3.0..sroa_idx.i.sroa_idx, align 8, !noalias !25503
  %.sroa.3.i.sroa.5.0..sroa.3.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %.sroa.3.i.sroa.5.0.copyload = load ptr, ptr %.sroa.3.i.sroa.5.0..sroa.3.0..sroa_idx.i.sroa_idx, align 8, !noalias !25503, !nonnull !28, !noundef !28
  %.sroa.3.i.sroa.4.0..sroa.3.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %.sroa.3.i.sroa.4.0.copyload = load ptr, ptr %.sroa.3.i.sroa.4.0..sroa.3.0..sroa_idx.i.sroa_idx, align 8, !noalias !25503, !nonnull !28, !noundef !28 ; 2 uses
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %.sroa.3.i.sroa.0.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !25503, !nonnull !28, !noundef !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !25504
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.bu, i64 32, i1 false)
  %i.bv = load i64, ptr %.sroa.0.0.copyload.i51, align 8, !noalias !25504, !noundef !28
  %i.bw = load i64, ptr %.sroa.3.i.sroa.0.0.copyload, align 8, !noalias !25504, !noundef !28
  %i.bx = sub i64 %i.bv, %i.bw
  %i.by = load i64, ptr %.sroa.3.i.sroa.4.0.copyload, align 8, !noalias !25504, !noundef !28
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.3.i.sroa.4.0.copyload, i64 8
  %i.ca = load i64, ptr %i.bz, align 8, !noalias !25504, !noundef !28
  invoke fastcc void @_RINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB8_5slice12IterProducerINtCsjFU9swAW47b_8indexmap6BucketNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEINtNtB6_3map11MapConsumerIB41_IB41_INtNtB6_10while_some17WhileSomeConsumerNtNtB6_6extend15ListVecConsumerENCINvNvXs2_NtB8_6resultINtNtCs3oUPovFnLWP_4core6result6ResultppEINtB6_20FromParallelIteratorIB66_ppEE13from_par_iter2okNtNtCs9fPPV5zPXBl_5typst4args6OutputNtNtCsakL8LGkl72C_4ecow6string9EcoStringE0ENCNvNtB7H_7compile16write_virtual_fss_0ENvMs0_B1I_B1F_4refsEEB7H_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d, i64 noundef %i.bx, i1 noundef zeroext %3, i64 noundef %i.by, i64 noundef %i.ca, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.sroa.3.i.sroa.5.0.copyload, i64 noundef %.sroa.3.i.sroa.6.0.copyload, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(32) %i.a)
          to label %bb.x unwind label %bb.v, !inline_history !25485

bb.u:                                             ; preds = %bb.s
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @565) #61
          to label %bb.w unwind label %bb.v, !noalias !25505, !inline_history !25486

bb.v:                                             ; preds = %bb.t, %bb.u
  %i.cb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsf1gSX8u3EQ2_10rayon_core3job9JobResultINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtB1r_3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEEEEB2I_(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.c)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsf1gSX8u3EQ2_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvNvNtBG_4join12join_context6call_bINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtB2p_3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEENCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB4p_5slice12IterProducerINtCsjFU9swAW47b_8indexmap6BucketNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEINtNtB4n_3map11MapConsumerIB8j_IB8j_INtNtB4n_10while_some17WhileSomeConsumerNtNtB4n_6extend15ListVecConsumerENCINvNvXs2_NtB4p_6resultINtNtB4_6result6ResultppEINtB4n_20FromParallelIteratorIBas_ppEE13from_par_iter2okB3C_NtNtCsakL8LGkl72C_4ecow6string9EcoStringE0ENCNvNtB3G_7compile16write_virtual_fss_0ENvMs0_B60_B5X_4refsEEs_0E0B2i_EEB3G_.exit.sink.split unwind label %bb.y

bb.w:                                             ; preds = %bb.u
  unreachable

bb.x:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !25504
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsf1gSX8u3EQ2_10rayon_core3job9JobResultINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtB1r_3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEEEEB2I_(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.c)
          to label %bb.z unwind label %.thread122

bb.y:                                             ; preds = %bb.v
  %i.cc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #64, !noalias !25505, !inline_history !25486
  unreachable

bb.z:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 16 dereferenceable(24) %i.e, i64 24, i1 false)
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cd, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.aa

bb.aa:                                            ; preds = %_RNvMs1_NtCsf1gSX8u3EQ2_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtB1W_3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEENCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3W_5slice12IterProducerINtCsjFU9swAW47b_8indexmap6BucketNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEINtNtB3U_3map11MapConsumerIB7Q_IB7Q_INtNtB3U_10while_some17WhileSomeConsumerNtNtB3U_6extend15ListVecConsumerENCINvNvXs2_NtB3W_6resultINtNtCs3oUPovFnLWP_4core6result6ResultppEINtB3U_20FromParallelIteratorIB9Z_ppEE13from_par_iter2okB39_NtNtCsakL8LGkl72C_4ecow6string9EcoStringE0ENCNvNtB3d_7compile16write_virtual_fss_0ENvMs0_B5x_B5u_4refsEEs_0E0B1P_E11into_resultB3d_.exit, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

bb.ab:                                            ; preds = %bb.p
  %i.ce = load atomic i64, ptr %.sroa.4.0..sroa_idx acquire, align 8
  %i.cf = icmp eq i64 %i.ce, 3
  br i1 %i.cf, label %.loopexit, label %bb.ac, !prof !43

bb.ac:                                            ; preds = %bb.ab
  invoke void @_RNvMs8_NtCsf1gSX8u3EQ2_10rayon_core8registryNtB5_12WorkerThread15wait_until_cold(ptr noundef nonnull align 128 %2, ptr noundef nonnull align 8 %.sroa.4.0..sroa_idx)
          to label %.loopexit unwind label %.thread122.thread143

.thread122.thread143:                             ; preds = %bb.ac
  %lpad.loopexit.split-lp144 = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtBI_3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEEEB1Y_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #62
  br label %bb.ag

bb.ad:                                            ; preds = %bb.o, %bb.n
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsf1gSX8u3EQ2_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvNvNtBG_4join12join_context6call_bINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtB2p_3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEENCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB4p_5slice12IterProducerINtCsjFU9swAW47b_8indexmap6BucketNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEINtNtB4n_3map11MapConsumerIB8j_IB8j_INtNtB4n_10while_some17WhileSomeConsumerNtNtB4n_6extend15ListVecConsumerENCINvNvXs2_NtB4p_6resultINtNtB4_6result6ResultppEINtB4n_20FromParallelIteratorIBas_ppEE13from_par_iter2okB3C_NtNtCsakL8LGkl72C_4ecow6string9EcoStringE0ENCNvNtB3G_7compile16write_virtual_fss_0ENvMs0_B60_B5X_4refsEEs_0E0B2i_EEB3G_.exit.sink.split

_RNvMs1_NtCsf1gSX8u3EQ2_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtB1W_3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEENCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3W_5slice12IterProducerINtCsjFU9swAW47b_8indexmap6BucketNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEINtNtB3U_3map11MapConsumerIB7Q_IB7Q_INtNtB3U_10while_some17WhileSomeConsumerNtNtB3U_6extend15ListVecConsumerENCINvNvXs2_NtB3W_6resultINtNtCs3oUPovFnLWP_4core6result6ResultppEINtB3U_20FromParallelIteratorIB9Z_ppEE13from_par_iter2okB39_NtNtCsakL8LGkl72C_4ecow6string9EcoStringE0ENCNvNtB3d_7compile16write_virtual_fss_0ENvMs0_B5x_B5u_4refsEEs_0E0B1P_E11into_resultB3d_.exit: ; preds = %.loopexit
  %.sroa.6.0..sroa_idx68 = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx68, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 16 dereferenceable(24) %i.e, i64 24, i1 false)
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.466.0.copyload, ptr %i.ch, align 8
  %.sroa.4.0..sroa_idx63 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.567.0.copyload, ptr %.sroa.4.0..sroa_idx63, align 8
  %.sroa.5.0..sroa_idx64 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.6.0.copyload, ptr %.sroa.5.0..sroa_idx64, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  br label %bb.aa

bb.ae:                                            ; preds = %bb.ag
  %i.ci = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #64
  unreachable

.thread122:                                       ; preds = %bb.x
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsf1gSX8u3EQ2_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvNvNtBG_4join12join_context6call_bINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtB2p_3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEENCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB4p_5slice12IterProducerINtCsjFU9swAW47b_8indexmap6BucketNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEINtNtB4n_3map11MapConsumerIB8j_IB8j_INtNtB4n_10while_some17WhileSomeConsumerNtNtB4n_6extend15ListVecConsumerENCINvNvXs2_NtB4p_6resultINtNtB4_6result6ResultppEINtB4n_20FromParallelIteratorIBas_ppEE13from_par_iter2okB3C_NtNtCsakL8LGkl72C_4ecow6string9EcoStringE0ENCNvNtB3G_7compile16write_virtual_fss_0ENvMs0_B60_B5X_4refsEEs_0E0B2i_EEB3G_.exit.sink.split

bb.af:                                            ; preds = %bb.k
  unreachable

bb.ag:                                            ; preds = %.thread122.thread143, %.thread122.thread, %.thread
  %.pn46115 = phi { ptr, i32 } [ %i.ab, %.thread ], [ %lpad.loopexit.split-lp144, %.thread122.thread143 ], [ %lpad.loopexit, %.thread122.thread ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsf1gSX8u3EQ2_10rayon_core3job9JobResultINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtB1r_3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEEEEB2I_(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.f)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsf1gSX8u3EQ2_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvNvNtBG_4join12join_context6call_bINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtB2p_3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEENCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB4p_5slice12IterProducerINtCsjFU9swAW47b_8indexmap6BucketNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEINtNtB4n_3map11MapConsumerIB8j_IB8j_INtNtB4n_10while_some17WhileSomeConsumerNtNtB4n_6extend15ListVecConsumerENCINvNvXs2_NtB4p_6resultINtNtB4_6result6ResultppEINtB4n_20FromParallelIteratorIBas_ppEE13from_par_iter2okB3C_NtNtCsakL8LGkl72C_4ecow6string9EcoStringE0ENCNvNtB3G_7compile16write_virtual_fss_0ENvMs0_B60_B5X_4refsEEs_0E0B2i_EEB3G_.exit unwind label %bb.ae

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsf1gSX8u3EQ2_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvNvNtBG_4join12join_context6call_bINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtB2p_3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEENCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB4p_5slice12IterProducerINtCsjFU9swAW47b_8indexmap6BucketNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEINtNtB4n_3map11MapConsumerIB8j_IB8j_INtNtB4n_10while_some17WhileSomeConsumerNtNtB4n_6extend15ListVecConsumerENCINvNvXs2_NtB4p_6resultINtNtB4_6result6ResultppEINtB4n_20FromParallelIteratorIBas_ppEE13from_par_iter2okB3C_NtNtCsakL8LGkl72C_4ecow6string9EcoStringE0ENCNvNtB3G_7compile16write_virtual_fss_0ENvMs0_B60_B5X_4refsEEs_0E0B2i_EEB3G_.exit.sink.split: ; preds = %bb.v, %bb.ad, %.thread122
  %.sink.sroa.phi = phi ptr [ %.sink.sroa.gep, %.thread122 ], [ %.sroa.4, %bb.ad ], [ %.sink.sroa.gep, %bb.v ]
  %.sink.sroa.phi147 = phi ptr [ %.sink.sroa.gep148, %.thread122 ], [ %.sroa.5, %bb.ad ], [ %.sink.sroa.gep148, %bb.v ] ; 2 uses
  %.sink = phi ptr [ %i.e, %.thread122 ], [ %.sroa.0, %bb.ad ], [ %i.e, %bb.v ] ; 2 uses
  %.pn46114.ph = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.thread122 ], [ %i.cg, %bb.ad ], [ %i.cb, %bb.v ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !25506)
  call void @llvm.experimental.noalias.scope.decl(metadata !25507)
  %.promoted.i.i = load ptr, ptr %.sink, align 8, !alias.scope !25508 ; 2 uses
  %.not22.i.i = icmp eq ptr %.promoted.i.i, null
  br i1 %.not22.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsf1gSX8u3EQ2_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvNvNtBG_4join12join_context6call_bINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtB2p_3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEENCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB4p_5slice12IterProducerINtCsjFU9swAW47b_8indexmap6BucketNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEINtNtB4n_3map11MapConsumerIB8j_IB8j_INtNtB4n_10while_some17WhileSomeConsumerNtNtB4n_6extend15ListVecConsumerENCINvNvXs2_NtB4p_6resultINtNtB4_6result6ResultppEINtB4n_20FromParallelIteratorIBas_ppEE13from_par_iter2okB3C_NtNtCsakL8LGkl72C_4ecow6string9EcoStringE0ENCNvNtB3G_7compile16write_virtual_fss_0ENvMs0_B60_B5X_4refsEEs_0E0B2i_EEB3G_.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsf1gSX8u3EQ2_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvNvNtBG_4join12join_context6call_bINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtB2p_3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEENCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB4p_5slice12IterProducerINtCsjFU9swAW47b_8indexmap6BucketNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEINtNtB4n_3map11MapConsumerIB8j_IB8j_INtNtB4n_10while_some17WhileSomeConsumerNtNtB4n_6extend15ListVecConsumerENCINvNvXs2_NtB4p_6resultINtNtB4_6result6ResultppEINtB4n_20FromParallelIteratorIBas_ppEE13from_par_iter2okB3C_NtNtCsakL8LGkl72C_4ecow6string9EcoStringE0ENCNvNtB3G_7compile16write_virtual_fss_0ENvMs0_B60_B5X_4refsEEs_0E0B2i_EEB3G_.exit.sink.split
  %.promoted21.i.i = load i64, ptr %.sink.sroa.phi147, align 1, !alias.scope !25508
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.am, %.lr.ph.preheader.i.i
  %i.cj = phi ptr [ %i.cm, %bb.am ], [ %.promoted.i.i, %.lr.ph.preheader.i.i ] ; 5 uses
  %i.ck = phi i64 [ %i.co, %bb.am ], [ %.promoted21.i.i, %.lr.ph.preheader.i.i ]
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.cm = load ptr, ptr %i.cl, align 8, !noalias !25508, !noundef !28 ; 4 uses
  store ptr %i.cm, ptr %.sink, align 8, !alias.scope !25508
  %.not3.i.i = icmp eq ptr %i.cm, null            ; 2 uses
  br i1 %.not3.i.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph.i.i
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 32
  store ptr null, ptr %i.cn, align 8, !noalias !25508
  br label %bb.aj

bb.ai:                                            ; preds = %.lr.ph.i.i
  store ptr null, ptr %.sink.sroa.phi, align 8, !alias.scope !25508
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.co = add i64 %i.ck, -1                       ; 2 uses
  store i64 %i.co, ptr %.sink.sroa.phi147, align 8, !alias.scope !25508
  call void @llvm.experimental.noalias.scope.decl(metadata !25509)
  call void @llvm.experimental.noalias.scope.decl(metadata !25510)
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %.val.i.i.i.i7.i.i = load ptr, ptr %i.cp, align 8, !alias.scope !25511, !noalias !25508, !nonnull !28, !noundef !28 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %.val1.i.i.i.i8.i.i = load i64, ptr %i.cq, align 8, !alias.scope !25511, !noalias !25508, !noundef !28 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !25512)
  %i.cr = icmp eq i64 %.val1.i.i.i.i8.i.i, 0
  br i1 %i.cr, label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_.exit.i.i.i.i12.i.i, label %.lr.ph.i.i.i.i.i.i9.i.i

.lr.ph.i.i.i.i.i.i9.i.i:                          ; preds = %bb.aj, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs9fPPV5zPXBl_5typst4args6OutputEBF_.exit.i.i.i.i.i.i11.i.i
  %.sroa.0.09.i.i.i.i.i.i10.i.i = phi i64 [ %i.ct, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs9fPPV5zPXBl_5typst4args6OutputEBF_.exit.i.i.i.i.i.i11.i.i ], [ 0, %bb.aj ] ; 2 uses
  %i.cs = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i.i.i7.i.i, i64 %.sroa.0.09.i.i.i.i.i.i10.i.i ; 2 uses
  %i.ct = add nuw nsw i64 %.sroa.0.09.i.i.i.i.i.i10.i.i, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !25513)
  %i.cu = load i64, ptr %i.cs, align 8, !range !55, !alias.scope !25514, !noalias !25515, !noundef !28 ; 2 uses
  %i.cv = icmp sgt i64 %i.cu, 0
  br i1 %i.cv, label %bb.ak, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs9fPPV5zPXBl_5typst4args6OutputEBF_.exit.i.i.i.i.i.i11.i.i

bb.ak:                                            ; preds = %.lr.ph.i.i.i.i.i.i9.i.i
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %.val1.i.i.i.i.i.i.i15.i.i = load ptr, ptr %i.cw, align 8, !alias.scope !25514, !noalias !25515, !nonnull !28, !noundef !28
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i15.i.i, i64 noundef %i.cu, i64 noundef range(i64 1, -9223372036854775807) 1) #56, !noalias !25516
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs9fPPV5zPXBl_5typst4args6OutputEBF_.exit.i.i.i.i.i.i11.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs9fPPV5zPXBl_5typst4args6OutputEBF_.exit.i.i.i.i.i.i11.i.i: ; preds = %bb.ak, %.lr.ph.i.i.i.i.i.i9.i.i
  %i.cx = icmp eq i64 %i.ct, %.val1.i.i.i.i8.i.i
  br i1 %i.cx, label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_.exit.i.i.i.i12.i.i, label %.lr.ph.i.i.i.i.i.i9.i.i

_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_.exit.i.i.i.i12.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs9fPPV5zPXBl_5typst4args6OutputEBF_.exit.i.i.i.i.i.i11.i.i, %bb.aj
  %.val2.i.i.i.i13.i.i = load i64, ptr %i.cj, align 8, !range !37, !alias.scope !25511, !noalias !25508, !noundef !28 ; 2 uses
  %i.cy = icmp eq i64 %.val2.i.i.i.i13.i.i, 0
  br i1 %i.cy, label %bb.am, label %bb.al

bb.al:                                            ; preds = %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_.exit.i.i.i.i12.i.i
  %i.cz = mul nuw i64 %.val2.i.i.i.i13.i.i, 24
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i7.i.i, i64 noundef %i.cz, i64 noundef range(i64 1, -9223372036854775807) 8) #56, !noalias !25515
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_.exit.i.i.i.i12.i.i
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cj, i64 noundef 40, i64 noundef 8) #56, !noalias !25508
  br i1 %.not3.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsf1gSX8u3EQ2_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvNvNtBG_4join12join_context6call_bINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtB2p_3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEENCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB4p_5slice12IterProducerINtCsjFU9swAW47b_8indexmap6BucketNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEINtNtB4n_3map11MapConsumerIB8j_IB8j_INtNtB4n_10while_some17WhileSomeConsumerNtNtB4n_6extend15ListVecConsumerENCINvNvXs2_NtB4p_6resultINtNtB4_6result6ResultppEINtB4n_20FromParallelIteratorIBas_ppEE13from_par_iter2okB3C_NtNtCsakL8LGkl72C_4ecow6string9EcoStringE0ENCNvNtB3G_7compile16write_virtual_fss_0ENvMs0_B60_B5X_4refsEEs_0E0B2i_EEB3G_.exit, label %.lr.ph.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsf1gSX8u3EQ2_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvNvNtBG_4join12join_context6call_bINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtB2p_3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEENCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB4p_5slice12IterProducerINtCsjFU9swAW47b_8indexmap6BucketNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEINtNtB4n_3map11MapConsumerIB8j_IB8j_INtNtB4n_10while_some17WhileSomeConsumerNtNtB4n_6extend15ListVecConsumerENCINvNvXs2_NtB4p_6resultINtNtB4_6result6ResultppEINtB4n_20FromParallelIteratorIBas_ppEE13from_par_iter2okB3C_NtNtCsakL8LGkl72C_4ecow6string9EcoStringE0ENCNvNtB3G_7compile16write_virtual_fss_0ENvMs0_B60_B5X_4refsEEs_0E0B2i_EEB3G_.exit: ; preds = %bb.am, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsf1gSX8u3EQ2_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvNvNtBG_4join12join_context6call_bINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtB2p_3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEENCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB4p_5slice12IterProducerINtCsjFU9swAW47b_8indexmap6BucketNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEINtNtB4n_3map11MapConsumerIB8j_IB8j_INtNtB4n_10while_some17WhileSomeConsumerNtNtB4n_6extend15ListVecConsumerENCINvNvXs2_NtB4p_6resultINtNtB4_6result6ResultppEINtB4n_20FromParallelIteratorIBas_ppEE13from_par_iter2okB3C_NtNtCsakL8LGkl72C_4ecow6string9EcoStringE0ENCNvNtB3G_7compile16write_virtual_fss_0ENvMs0_B60_B5X_4refsEEs_0E0B2i_EEB3G_.exit.sink.split, %bb.ag
  %.pn46114 = phi { ptr, i32 } [ %.pn46115, %bb.ag ], [ %.pn46114.ph, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsf1gSX8u3EQ2_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvNvNtBG_4join12join_context6call_bINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtB2p_3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEENCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB4p_5slice12IterProducerINtCsjFU9swAW47b_8indexmap6BucketNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEINtNtB4n_3map11MapConsumerIB8j_IB8j_INtNtB4n_10while_some17WhileSomeConsumerNtNtB4n_6extend15ListVecConsumerENCINvNvXs2_NtB4p_6resultINtNtB4_6result6ResultppEINtB4n_20FromParallelIteratorIBas_ppEE13from_par_iter2okB3C_NtNtCsakL8LGkl72C_4ecow6string9EcoStringE0ENCNvNtB3G_7compile16write_virtual_fss_0ENvMs0_B60_B5X_4refsEEs_0E0B2i_EEB3G_.exit.sink.split ], [ %.pn46114.ph, %bb.am ]
  resume { ptr, i32 } %.pn46114
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCINvNtCsf1gSX8u3EQ2_10rayon_core4join12join_contextNCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB10_5slice12IterProducerTjRNtNtCs7tN9tvpkfrg_12typst_layout8document4PageEEINtNtBY_3map11MapConsumerIB3o_INtNtBY_10while_some17WhileSomeConsumerNtNtBY_6extend15ListVecConsumerENCINvNvXs2_NtB10_6resultINtNtCs3oUPovFnLWP_4core6result6ResultppEINtBY_20FromParallelIteratorIB5p_ppEE13from_par_iter2okNtNtCs9fPPV5zPXBl_5typst4args6OutputNtNtCsakL8LGkl72C_4ecow6string9EcoStringE0ENCNvNtB70_7compile12export_images_0EE0NCBR_s_0INtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtB94_3vec3VecB6W_EEB8X_E0B70_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(120) %1, ptr noundef nonnull align 128 %2, i1 noundef zeroext %3) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 16               ; 5 uses
  %.sroa.0 = alloca i64, align 8                  ; 4 uses
  %.sroa.4 = alloca i64, align 8                  ; 3 uses
  %.sroa.5 = alloca i64, align 8                  ; 4 uses
  %i.c = alloca [128 x i8], align 8               ; 10 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 16               ; 13 uses
  %i.f = alloca [128 x i8], align 8               ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 272 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.i = load i64, ptr %i.h, align 128, !noundef !28
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 96 ; 2 uses
  store ptr %i.g, ptr %i.j, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 104 ; 4 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  store i64 %i.i, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 120
  store i8 0, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.f, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 64, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 64 ; 3 uses
  store i64 0, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 280 ; 4 uses
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !28, !noundef !28 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 264
  %i.o = load atomic i64, ptr %i.n monotonic, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 256
  %i.q = load atomic i64, ptr %i.p seq_cst, align 8
  %i.r = sub i64 %i.o, %i.q
  %i.s = icmp slt i64 %i.r, 1
  %i.t = load ptr, ptr %i.l, align 8, !nonnull !28, !noundef !28 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 264
  %i.v = load atomic i64, ptr %i.u monotonic, align 8 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 256
  %i.x = load atomic i64, ptr %i.w acquire, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 296 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !noundef !28 ; 3 uses
  %i.aa = sub i64 %i.v, %i.x
  %.not.i = icmp slt i64 %i.aa, %i.z
  %.sink.sroa.gep = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %.sink.sroa.gep148 = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 4 uses
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !43

.thread:                                          ; preds = %bb.k, %bb.b, %.sink.split.i
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.b:                                             ; preds = %bb.a
  %i.ac = shl i64 %i.z, 1
  invoke fastcc void @_RNvMs4_NtCs66IsRtDrrKP_15crossbeam_deque5dequeINtB5_6WorkerNtNtCsf1gSX8u3EQ2_10rayon_core3job6JobRefE6resizeCs9fPPV5zPXBl_5typst(ptr noundef nonnull align 8 %i.l, i64 noundef %i.ac)
          to label %.noexc unwind label %.thread

.noexc:                                           ; preds = %bb.b
  %i.ad = load i64, ptr %i.y, align 8, !noundef !28
  br label %bb.c

bb.c:                                             ; preds = %.noexc, %bb.a
  %.sroa.02.0.i = phi i64 [ %i.ad, %.noexc ], [ %i.z, %bb.a ]
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 288
  %.sroa.01.0.i = load ptr, ptr %i.ae, align 32, !noundef !28
  %i.af = add i64 %.sroa.02.0.i, -1
  %i.ag = and i64 %i.af, %i.v
  %i.ah = getelementptr inbounds [16 x i8], ptr %.sroa.01.0.i, i64 %i.ag ; 2 uses
  store volatile ptr @_RNvXs2_NtCsf1gSX8u3EQ2_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtB1W_3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEENCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3W_5slice12IterProducerTjRNtNtCs7tN9tvpkfrg_12typst_layout8document4PageEEINtNtB3U_3map11MapConsumerIB6k_INtNtB3U_10while_some17WhileSomeConsumerNtNtB3U_6extend15ListVecConsumerENCINvNvXs2_NtB3W_6resultINtNtCs3oUPovFnLWP_4core6result6ResultppEINtB3U_20FromParallelIteratorIB8o_ppEE13from_par_iter2okB39_NtNtCsakL8LGkl72C_4ecow6string9EcoStringE0ENCNvNtB3d_7compile12export_images_0EEs_0E0B1P_ENtB5_3Job7executeB3d_, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store volatile ptr %i.f, ptr %i.ai, align 8
  fence release
  %i.aj = load ptr, ptr %i.l, align 8, !nonnull !28, !noundef !28
  %i.ak = add i64 %i.v, 1
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 264
  store atomic i64 %i.ak, ptr %i.al release, align 8
  %i.am = load ptr, ptr %i.g, align 16, !nonnull !28, !noundef !28 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 472
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 496 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.ap = load atomic i64, ptr %i.ao seq_cst, align 8 ; 4 uses
  %i.aq = and i64 %i.ap, 4294967296
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %bb.e, label %_RINvMs_NtNtCsf1gSX8u3EQ2_10rayon_core5sleep8countersNtB5_14AtomicCounters31increment_jobs_event_counter_ifNvMB5_NtB5_16JobsEventCounter9is_sleepyECs9fPPV5zPXBl_5typst.exit.i

bb.e:                                             ; preds = %bb.d
  %i.as = or disjoint i64 %i.ap, 4294967296       ; 2 uses
  %i.at = cmpxchg ptr %i.ao, i64 %i.ap, i64 %i.as seq_cst monotonic, align 8
  %.sroa.18.0.in.i.i.i = extractvalue { i64, i1 } %i.at, 1
  br i1 %.sroa.18.0.in.i.i.i, label %_RINvMs_NtNtCsf1gSX8u3EQ2_10rayon_core5sleep8countersNtB5_14AtomicCounters31increment_jobs_event_counter_ifNvMB5_NtB5_16JobsEventCounter9is_sleepyECs9fPPV5zPXBl_5typst.exit.i, label %bb.d

_RINvMs_NtNtCsf1gSX8u3EQ2_10rayon_core5sleep8countersNtB5_14AtomicCounters31increment_jobs_event_counter_ifNvMB5_NtB5_16JobsEventCounter9is_sleepyECs9fPPV5zPXBl_5typst.exit.i: ; preds = %bb.e, %bb.d
  %.sroa.0.0.i.i = phi i64 [ %i.as, %bb.e ], [ %i.ap, %bb.d ] ; 2 uses
  %i.au = and i64 %.sroa.0.0.i.i, 65535           ; 2 uses
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %_RNvMNtCsf1gSX8u3EQ2_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit, label %bb.f

bb.f:                                             ; preds = %_RINvMs_NtNtCsf1gSX8u3EQ2_10rayon_core5sleep8countersNtB5_14AtomicCounters31increment_jobs_event_counter_ifNvMB5_NtB5_16JobsEventCounter9is_sleepyECs9fPPV5zPXBl_5typst.exit.i
  br i1 %i.s, label %bb.g, label %.sink.split.i, !prof !43

.sink.split.i:                                    ; preds = %bb.g, %bb.f
  invoke void @_RNvMNtCsf1gSX8u3EQ2_10rayon_core5sleepNtB2_5Sleep16wake_any_threads(ptr noundef nonnull align 8 %i.an, i32 noundef 1)
          to label %_RNvMNtCsf1gSX8u3EQ2_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit unwind label %.thread

bb.g:                                             ; preds = %bb.f
  %i.aw = lshr i64 %.sroa.0.0.i.i, 16
  %i.ax = and i64 %i.aw, 65535
  %i.ay = icmp eq i64 %i.ax, %i.au
  br i1 %i.ay, label %.sink.split.i, label %_RNvMNtCsf1gSX8u3EQ2_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit, !prof !38

_RNvMNtCsf1gSX8u3EQ2_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit: ; preds = %bb.g, %_RINvMs_NtNtCsf1gSX8u3EQ2_10rayon_core5sleep8countersNtB5_14AtomicCounters31increment_jobs_event_counter_ifNvMB5_NtB5_16JobsEventCounter9is_sleepyECs9fPPV5zPXBl_5typst.exit.i, %.sink.split.i
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.079.0.copyload = load ptr, ptr %i.az, align 8, !nonnull !28, !noundef !28
  %.sroa.480.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.480.0.copyload = load ptr, ptr %.sroa.480.0..sroa_idx, align 8, !nonnull !28, !noundef !28 ; 2 uses
  %.sroa.581.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.sroa.581.0.copyload = load i64, ptr %.sroa.581.0..sroa_idx, align 8
  %.sroa.682.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.sroa.682.sroa.0.0.copyload = load i64, ptr %.sroa.682.0..sroa_idx, align 8
  %.sroa.682.sroa.4.0..sroa.682.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 96
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ba = load i64, ptr %.sroa.079.0.copyload, align 8, !noalias !25545, !noundef !28
  %i.bb = load i64, ptr %.sroa.480.0.copyload, align 8, !noalias !25545, !noundef !28
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.480.0.copyload, i64 8
  %i.bd = load i64, ptr %i.bc, align 8, !noalias !25545, !noundef !28
  %i.be = inttoptr i64 %.sroa.581.0.copyload to ptr
  invoke fastcc void @_RINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB8_5slice12IterProducerTjRNtNtCs7tN9tvpkfrg_12typst_layout8document4PageEEINtNtB6_3map11MapConsumerIB2v_INtNtB6_10while_some17WhileSomeConsumerNtNtB6_6extend15ListVecConsumerENCINvNvXs2_NtB8_6resultINtNtCs3oUPovFnLWP_4core6result6ResultppEINtB6_20FromParallelIteratorIB4v_ppEE13from_par_iter2okNtNtCs9fPPV5zPXBl_5typst4args6OutputNtNtCsakL8LGkl72C_4ecow6string9EcoStringE0ENCNvNtB66_7compile12export_images_0EEB66_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, i64 noundef %i.ba, i1 noundef zeroext %3, i64 noundef %i.bb, i64 noundef %i.bd, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.be, i64 noundef %.sroa.682.sroa.0.0.copyload, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(24) %.sroa.682.sroa.4.0..sroa.682.0..sroa_idx.sroa_idx)
          to label %bb.j unwind label %bb.h

bb.h:                                             ; preds = %_RNvMNtCsf1gSX8u3EQ2_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  %i.bh = invoke { ptr, ptr } @_RNvNvNtCsaL1QbXo9JQH_3std9panicking12catch_unwind7cleanup(ptr noundef %i.bg)
          to label %bb.k unwind label %bb.i       ; 2 uses

bb.i:                                             ; preds = %bb.h
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking19panic_cannot_unwind() #64
  unreachable

bb.j:                                             ; preds = %_RNvMNtCsf1gSX8u3EQ2_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit
  %.sroa.595.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.595.0.copyload = load i64, ptr %.sroa.595.0..sroa_idx, align 16
  %i.bj = load <2 x ptr>, ptr %i.b, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store <2 x ptr> %i.bj, ptr %i.e, align 16
  store i64 %.sroa.595.0.copyload, ptr %.sink.sroa.gep148, align 16
  br label %bb.l

bb.k:                                             ; preds = %bb.h
  %i.bk = extractvalue { ptr, ptr } %i.bh, 0      ; 2 uses
  %i.bl = extractvalue { ptr, ptr } %i.bh, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bk) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bl) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  invoke void @_RNvNtCsf1gSX8u3EQ2_10rayon_core4join23join_recover_from_panic(ptr noundef nonnull align 128 %2, ptr noundef nonnull align 8 %i.j, ptr noundef nonnull %i.bk, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bl) #61
          to label %bb.af unwind label %.thread

.thread122.thread:                                ; preds = %bb.r, %bb.m
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtBI_3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEEEB1Y_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #62
  br label %bb.ag

bb.l:                                             ; preds = %bb.j, %bb.r
  %i.bm = load atomic i64, ptr %.sroa.4.0..sroa_idx acquire, align 8
  %i.bn = icmp eq i64 %i.bm, 3
  br i1 %i.bn, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bo = invoke fastcc { ptr, ptr } @_RNvMs8_NtCsf1gSX8u3EQ2_10rayon_core8registryNtB5_12WorkerThread14take_local_job(ptr noundef nonnull align 128 %2)
          to label %bb.p unwind label %.thread122.thread ; 2 uses

.loopexit:                                        ; preds = %bb.l, %bb.ac, %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %.sroa.0.0.copyload = load i64, ptr %i.e, align 16
  store i64 %.sroa.0.0.copyload, ptr %.sroa.0, align 8
  %.sroa.5.0.copyload = load i64, ptr %.sink.sroa.gep148, align 16
  store i64 %.sroa.5.0.copyload, ptr %.sroa.5, align 8
  %.sroa.3.0.copyload = load i64, ptr %i.k, align 8
  %.sroa.466.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %.sroa.466.0.copyload = load ptr, ptr %.sroa.466.0..sroa_idx, align 8 ; 3 uses
  %.sroa.567.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  %.sroa.567.0.copyload = load ptr, ptr %.sroa.567.0..sroa_idx, align 8 ; 3 uses
  switch i64 %.sroa.3.0.copyload, label %default.unreachable1.i.i [
    i64 0, label %bb.n
    i64 1, label %_RNvMs1_NtCsf1gSX8u3EQ2_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtB1W_3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEENCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3W_5slice12IterProducerTjRNtNtCs7tN9tvpkfrg_12typst_layout8document4PageEEINtNtB3U_3map11MapConsumerIB6k_INtNtB3U_10while_some17WhileSomeConsumerNtNtB3U_6extend15ListVecConsumerENCINvNvXs2_NtB3W_6resultINtNtCs3oUPovFnLWP_4core6result6ResultppEINtB3U_20FromParallelIteratorIB8o_ppEE13from_par_iter2okB39_NtNtCsakL8LGkl72C_4ecow6string9EcoStringE0ENCNvNtB3d_7compile12export_images_0EEs_0E0B1P_E11into_resultB3d_.exit
    i64 2, label %bb.o
  ], !prof !59

default.unreachable1.i.i:                         ; preds = %.loopexit
  unreachable

bb.n:                                             ; preds = %.loopexit
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @171, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @579) #65
          to label %.noexc49 unwind label %bb.ad

.noexc49:                                         ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %.loopexit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.466.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.567.0.copyload) ]
  invoke void @_RNvNtCsf1gSX8u3EQ2_10rayon_core6unwind16resume_unwinding(ptr noundef nonnull %.sroa.466.0.copyload, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.567.0.copyload) #61
          to label %.noexc50 unwind label %bb.ad

.noexc50:                                         ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.m
  %i.bp = extractvalue { ptr, ptr } %i.bo, 0      ; 3 uses
  %i.bq = extractvalue { ptr, ptr } %i.bo, 1      ; 2 uses
  %.not = icmp eq ptr %i.bp, null
  br i1 %.not, label %bb.ab, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.br = icmp eq ptr %i.f, %i.bq
  %i.bs = icmp eq ptr %i.bp, @_RNvXs2_NtCsf1gSX8u3EQ2_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtB1W_3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEENCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3W_5slice12IterProducerTjRNtNtCs7tN9tvpkfrg_12typst_layout8document4PageEEINtNtB3U_3map11MapConsumerIB6k_INtNtB3U_10while_some17WhileSomeConsumerNtNtB3U_6extend15ListVecConsumerENCINvNvXs2_NtB3W_6resultINtNtCs3oUPovFnLWP_4core6result6ResultppEINtB3U_20FromParallelIteratorIB8o_ppEE13from_par_iter2okB39_NtNtCsakL8LGkl72C_4ecow6string9EcoStringE0ENCNvNtB3d_7compile12export_images_0EEs_0E0B1P_ENtB5_3Job7executeB3d_
  %or.cond = and i1 %i.br, %i.bs
  br i1 %or.cond, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  invoke void %i.bp(ptr noundef %i.bq)
          to label %bb.l unwind label %.thread122.thread

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.c, ptr noundef nonnull align 8 dereferenceable(128) %i.f, i64 128, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !25546)
  %.sroa.0.0.copyload.i51 = load ptr, ptr %i.c, align 8, !alias.scope !25546, !noalias !25547 ; 2 uses
  %.not.i52 = icmp eq ptr %.sroa.0.0.copyload.i51, null
  br i1 %.not.i52, label %bb.u, label %bb.t, !prof !38

bb.t:                                             ; preds = %bb.s
  %i.bt = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %.sroa.3.i.sroa.6.0..sroa.3.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.3.i.sroa.6.0.copyload = load i64, ptr %.sroa.3.i.sroa.6.0..sroa.3.0..sroa_idx.i.sroa_idx, align 8, !noalias !25547
  %.sroa.3.i.sroa.5.0..sroa.3.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.3.i.sroa.5.0.copyload = load ptr, ptr %.sroa.3.i.sroa.5.0..sroa.3.0..sroa_idx.i.sroa_idx, align 8, !noalias !25547, !nonnull !28, !noundef !28
  %.sroa.3.i.sroa.4.0..sroa.3.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.3.i.sroa.4.0.copyload = load ptr, ptr %.sroa.3.i.sroa.4.0..sroa.3.0..sroa_idx.i.sroa_idx, align 8, !noalias !25547, !nonnull !28, !noundef !28 ; 2 uses
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.3.i.sroa.0.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !25547, !nonnull !28, !noundef !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !25548
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.bt, i64 24, i1 false)
  %i.bu = load i64, ptr %.sroa.0.0.copyload.i51, align 8, !noalias !25548, !noundef !28
  %i.bv = load i64, ptr %.sroa.3.i.sroa.0.0.copyload, align 8, !noalias !25548, !noundef !28
  %i.bw = sub i64 %i.bu, %i.bv
  %i.bx = load i64, ptr %.sroa.3.i.sroa.4.0.copyload, align 8, !noalias !25548, !noundef !28
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.3.i.sroa.4.0.copyload, i64 8
  %i.bz = load i64, ptr %i.by, align 8, !noalias !25548, !noundef !28
  invoke fastcc void @_RINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB8_5slice12IterProducerTjRNtNtCs7tN9tvpkfrg_12typst_layout8document4PageEEINtNtB6_3map11MapConsumerIB2v_INtNtB6_10while_some17WhileSomeConsumerNtNtB6_6extend15ListVecConsumerENCINvNvXs2_NtB8_6resultINtNtCs3oUPovFnLWP_4core6result6ResultppEINtB6_20FromParallelIteratorIB4v_ppEE13from_par_iter2okNtNtCs9fPPV5zPXBl_5typst4args6OutputNtNtCsakL8LGkl72C_4ecow6string9EcoStringE0ENCNvNtB66_7compile12export_images_0EEB66_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d, i64 noundef %i.bw, i1 noundef zeroext %3, i64 noundef %i.bx, i64 noundef %i.bz, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.sroa.3.i.sroa.5.0.copyload, i64 noundef %.sroa.3.i.sroa.6.0.copyload, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.x unwind label %bb.v, !inline_history !25529

bb.u:                                             ; preds = %bb.s
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @565) #61
          to label %bb.w unwind label %bb.v, !noalias !25549, !inline_history !25530

bb.v:                                             ; preds = %bb.t, %bb.u
  %i.ca = landingpad { ptr, i32 }
          cleanup
  %i.cb = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsf1gSX8u3EQ2_10rayon_core3job9JobResultINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtB1r_3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEEEEB2I_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.cb)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsf1gSX8u3EQ2_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvNvNtBG_4join12join_context6call_bINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtB2p_3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEENCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB4p_5slice12IterProducerTjRNtNtCs7tN9tvpkfrg_12typst_layout8document4PageEEINtNtB4n_3map11MapConsumerIB6N_INtNtB4n_10while_some17WhileSomeConsumerNtNtB4n_6extend15ListVecConsumerENCINvNvXs2_NtB4p_6resultINtNtB4_6result6ResultppEINtB4n_20FromParallelIteratorIB8R_ppEE13from_par_iter2okB3C_NtNtCsakL8LGkl72C_4ecow6string9EcoStringE0ENCNvNtB3G_7compile12export_images_0EEs_0E0B2i_EEB3G_.exit.sink.split unwind label %bb.y

bb.w:                                             ; preds = %bb.u
  unreachable

bb.x:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !25548
  %i.cc = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsf1gSX8u3EQ2_10rayon_core3job9JobResultINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtB1r_3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEEEEB2I_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.cc)
          to label %bb.z unwind label %.thread122

bb.y:                                             ; preds = %bb.v
  %i.cd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #64, !noalias !25549, !inline_history !25530
  unreachable

bb.z:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 16 dereferenceable(24) %i.e, i64 24, i1 false)
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ce, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.aa

bb.aa:                                            ; preds = %_RNvMs1_NtCsf1gSX8u3EQ2_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtB1W_3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEENCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3W_5slice12IterProducerTjRNtNtCs7tN9tvpkfrg_12typst_layout8document4PageEEINtNtB3U_3map11MapConsumerIB6k_INtNtB3U_10while_some17WhileSomeConsumerNtNtB3U_6extend15ListVecConsumerENCINvNvXs2_NtB3W_6resultINtNtCs3oUPovFnLWP_4core6result6ResultppEINtB3U_20FromParallelIteratorIB8o_ppEE13from_par_iter2okB39_NtNtCsakL8LGkl72C_4ecow6string9EcoStringE0ENCNvNtB3d_7compile12export_images_0EEs_0E0B1P_E11into_resultB3d_.exit, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

bb.ab:                                            ; preds = %bb.p
  %i.cf = load atomic i64, ptr %.sroa.4.0..sroa_idx acquire, align 8
  %i.cg = icmp eq i64 %i.cf, 3
  br i1 %i.cg, label %.loopexit, label %bb.ac, !prof !43

bb.ac:                                            ; preds = %bb.ab
  invoke void @_RNvMs8_NtCsf1gSX8u3EQ2_10rayon_core8registryNtB5_12WorkerThread15wait_until_cold(ptr noundef nonnull align 128 %2, ptr noundef nonnull align 8 %.sroa.4.0..sroa_idx)
          to label %.loopexit unwind label %.thread122.thread143

.thread122.thread143:                             ; preds = %bb.ac
  %lpad.loopexit.split-lp144 = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtBI_3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEEEB1Y_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #62
  br label %bb.ag

bb.ad:                                            ; preds = %bb.o, %bb.n
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsf1gSX8u3EQ2_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvNvNtBG_4join12join_context6call_bINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtB2p_3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEENCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB4p_5slice12IterProducerTjRNtNtCs7tN9tvpkfrg_12typst_layout8document4PageEEINtNtB4n_3map11MapConsumerIB6N_INtNtB4n_10while_some17WhileSomeConsumerNtNtB4n_6extend15ListVecConsumerENCINvNvXs2_NtB4p_6resultINtNtB4_6result6ResultppEINtB4n_20FromParallelIteratorIB8R_ppEE13from_par_iter2okB3C_NtNtCsakL8LGkl72C_4ecow6string9EcoStringE0ENCNvNtB3G_7compile12export_images_0EEs_0E0B2i_EEB3G_.exit.sink.split

_RNvMs1_NtCsf1gSX8u3EQ2_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtB1W_3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEENCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3W_5slice12IterProducerTjRNtNtCs7tN9tvpkfrg_12typst_layout8document4PageEEINtNtB3U_3map11MapConsumerIB6k_INtNtB3U_10while_some17WhileSomeConsumerNtNtB3U_6extend15ListVecConsumerENCINvNvXs2_NtB3W_6resultINtNtCs3oUPovFnLWP_4core6result6ResultppEINtB3U_20FromParallelIteratorIB8o_ppEE13from_par_iter2okB39_NtNtCsakL8LGkl72C_4ecow6string9EcoStringE0ENCNvNtB3d_7compile12export_images_0EEs_0E0B1P_E11into_resultB3d_.exit: ; preds = %.loopexit
  %.sroa.6.0..sroa_idx68 = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx68, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 16 dereferenceable(24) %i.e, i64 24, i1 false)
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.466.0.copyload, ptr %i.ci, align 8
  %.sroa.4.0..sroa_idx63 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.567.0.copyload, ptr %.sroa.4.0..sroa_idx63, align 8
  %.sroa.5.0..sroa_idx64 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.6.0.copyload, ptr %.sroa.5.0..sroa_idx64, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  br label %bb.aa

bb.ae:                                            ; preds = %bb.ag
  %i.cj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #64
  unreachable

.thread122:                                       ; preds = %bb.x
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsf1gSX8u3EQ2_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvNvNtBG_4join12join_context6call_bINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtB2p_3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEENCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB4p_5slice12IterProducerTjRNtNtCs7tN9tvpkfrg_12typst_layout8document4PageEEINtNtB4n_3map11MapConsumerIB6N_INtNtB4n_10while_some17WhileSomeConsumerNtNtB4n_6extend15ListVecConsumerENCINvNvXs2_NtB4p_6resultINtNtB4_6result6ResultppEINtB4n_20FromParallelIteratorIB8R_ppEE13from_par_iter2okB3C_NtNtCsakL8LGkl72C_4ecow6string9EcoStringE0ENCNvNtB3G_7compile12export_images_0EEs_0E0B2i_EEB3G_.exit.sink.split

bb.af:                                            ; preds = %bb.k
  unreachable

bb.ag:                                            ; preds = %.thread122.thread143, %.thread122.thread, %.thread
  %.pn46115 = phi { ptr, i32 } [ %i.ab, %.thread ], [ %lpad.loopexit.split-lp144, %.thread122.thread143 ], [ %lpad.loopexit, %.thread122.thread ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsf1gSX8u3EQ2_10rayon_core3job9JobResultINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtB1r_3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEEEEB2I_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.k)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsf1gSX8u3EQ2_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvNvNtBG_4join12join_context6call_bINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtB2p_3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEENCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB4p_5slice12IterProducerTjRNtNtCs7tN9tvpkfrg_12typst_layout8document4PageEEINtNtB4n_3map11MapConsumerIB6N_INtNtB4n_10while_some17WhileSomeConsumerNtNtB4n_6extend15ListVecConsumerENCINvNvXs2_NtB4p_6resultINtNtB4_6result6ResultppEINtB4n_20FromParallelIteratorIB8R_ppEE13from_par_iter2okB3C_NtNtCsakL8LGkl72C_4ecow6string9EcoStringE0ENCNvNtB3G_7compile12export_images_0EEs_0E0B2i_EEB3G_.exit unwind label %bb.ae

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsf1gSX8u3EQ2_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvNvNtBG_4join12join_context6call_bINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtB2p_3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEENCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB4p_5slice12IterProducerTjRNtNtCs7tN9tvpkfrg_12typst_layout8document4PageEEINtNtB4n_3map11MapConsumerIB6N_INtNtB4n_10while_some17WhileSomeConsumerNtNtB4n_6extend15ListVecConsumerENCINvNvXs2_NtB4p_6resultINtNtB4_6result6ResultppEINtB4n_20FromParallelIteratorIB8R_ppEE13from_par_iter2okB3C_NtNtCsakL8LGkl72C_4ecow6string9EcoStringE0ENCNvNtB3G_7compile12export_images_0EEs_0E0B2i_EEB3G_.exit.sink.split: ; preds = %bb.v, %bb.ad, %.thread122
  %.sink.sroa.phi = phi ptr [ %.sink.sroa.gep, %.thread122 ], [ %.sroa.4, %bb.ad ], [ %.sink.sroa.gep, %bb.v ]
  %.sink.sroa.phi147 = phi ptr [ %.sink.sroa.gep148, %.thread122 ], [ %.sroa.5, %bb.ad ], [ %.sink.sroa.gep148, %bb.v ] ; 2 uses
  %.sink = phi ptr [ %i.e, %.thread122 ], [ %.sroa.0, %bb.ad ], [ %i.e, %bb.v ] ; 2 uses
  %.pn46114.ph = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.thread122 ], [ %i.ch, %bb.ad ], [ %i.ca, %bb.v ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !25550)
  call void @llvm.experimental.noalias.scope.decl(metadata !25551)
  %.promoted.i.i = load ptr, ptr %.sink, align 8, !alias.scope !25552 ; 2 uses
  %.not22.i.i = icmp eq ptr %.promoted.i.i, null
  br i1 %.not22.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsf1gSX8u3EQ2_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvNvNtBG_4join12join_context6call_bINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtB2p_3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEENCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB4p_5slice12IterProducerTjRNtNtCs7tN9tvpkfrg_12typst_layout8document4PageEEINtNtB4n_3map11MapConsumerIB6N_INtNtB4n_10while_some17WhileSomeConsumerNtNtB4n_6extend15ListVecConsumerENCINvNvXs2_NtB4p_6resultINtNtB4_6result6ResultppEINtB4n_20FromParallelIteratorIB8R_ppEE13from_par_iter2okB3C_NtNtCsakL8LGkl72C_4ecow6string9EcoStringE0ENCNvNtB3G_7compile12export_images_0EEs_0E0B2i_EEB3G_.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsf1gSX8u3EQ2_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvNvNtBG_4join12join_context6call_bINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtB2p_3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEENCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB4p_5slice12IterProducerTjRNtNtCs7tN9tvpkfrg_12typst_layout8document4PageEEINtNtB4n_3map11MapConsumerIB6N_INtNtB4n_10while_some17WhileSomeConsumerNtNtB4n_6extend15ListVecConsumerENCINvNvXs2_NtB4p_6resultINtNtB4_6result6ResultppEINtB4n_20FromParallelIteratorIB8R_ppEE13from_par_iter2okB3C_NtNtCsakL8LGkl72C_4ecow6string9EcoStringE0ENCNvNtB3G_7compile12export_images_0EEs_0E0B2i_EEB3G_.exit.sink.split
  %.promoted21.i.i = load i64, ptr %.sink.sroa.phi147, align 1, !alias.scope !25552
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.am, %.lr.ph.preheader.i.i
  %i.ck = phi ptr [ %i.cn, %bb.am ], [ %.promoted.i.i, %.lr.ph.preheader.i.i ] ; 5 uses
  %i.cl = phi i64 [ %i.cp, %bb.am ], [ %.promoted21.i.i, %.lr.ph.preheader.i.i ]
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  %i.cn = load ptr, ptr %i.cm, align 8, !noalias !25552, !noundef !28 ; 4 uses
  store ptr %i.cn, ptr %.sink, align 8, !alias.scope !25552
  %.not3.i.i = icmp eq ptr %i.cn, null            ; 2 uses
  br i1 %.not3.i.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph.i.i
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 32
  store ptr null, ptr %i.co, align 8, !noalias !25552
  br label %bb.aj

end_hunk_0
begin_hunk_1_@_RNvNtCs9fPPV5zPXBl_5typst5query5query:bb.a
  unreachable

.thread.i.i:                                      ; preds = %bb.cr
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEECs9fPPV5zPXBl_5typst(ptr nonnull %i.lp, i64 %i.lr) #62
          to label %.body.i161 unwind label %bb.dn, !noalias !34142

bb.do:                                            ; preds = %bb.cp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.616.i, ptr noundef nonnull align 8 dereferenceable(16) %i.lo, i64 16, i1 false), !noalias !34141
  %.sroa.527.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %.sroa.527.0.copyload.i = load i64, ptr %.sroa.527.0..sroa_idx.i, align 8, !noalias !34141
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !noalias !34141
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.69.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.616.i, i64 16, i1 false), !noalias !34141
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.616.i)
  store i64 %i.lm, ptr %i.bh, align 8, !noalias !34141
  %.sroa.69.0..sroa_idx10.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.69.0..sroa_idx10.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.69.i, i64 16, i1 false), !noalias !34141
  %.sroa.811.0..sroa_idx12.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  store i64 %.sroa.527.0.copyload.i, ptr %.sroa.811.0..sroa_idx12.i, align 8, !noalias !34141
  invoke void @_RNvXs3_NtNtCsdaEETE4DqmE_13typst_library11foundations8selectorNtB5_17LocatableSelectorNtNtB7_4cast9FromValue10from_value(ptr noalias nofree noundef nonnull sret([64 x i8]) align 16 captures(none) dereferenceable(64) %i.br, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.bh)
          to label %bb.dp unwind label %bb.co, !noalias !34141

bb.dp:                                            ; preds = %bb.do
  %i.nm = load i64, ptr %i.br, align 16, !range !80, !noalias !34141, !noundef !28 ; 2 uses
  %i.nn = icmp eq i64 %i.nm, -1
  %i.no = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.np = load ptr, ptr %i.no, align 8, !noalias !34141 ; 2 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.nr = load i64, ptr %i.nq, align 16, !noalias !34141 ; 2 uses
  br i1 %i.nn, label %bb.eq, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %.sroa.634.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  %.sroa.622.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.622.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.634.0..sroa_idx.i, i64 40, i1 false), !noalias !34141
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br), !noalias !34141
  store i64 %i.nm, ptr %i.bs, align 16, !noalias !34141
  %.sroa.4.0..sroa_idx.i162 = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store ptr %i.np, ptr %.sroa.4.0..sroa_idx.i162, align 8, !noalias !34141
  %.sroa.5.0..sroa_idx.i163 = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  store i64 %i.nr, ptr %.sroa.5.0..sroa_idx.i163, align 16, !noalias !34141
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !noalias !34141
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdaEETE4DqmE_13typst_library6engine4SinkECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef align 8 dereferenceable(96) %i.bn)
          to label %bb.ds unwind label %bb.dr, !noalias !34141

bb.dr:                                            ; preds = %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit.thread.i.i, %bb.ds, %bb.dq
  %i.ns = landingpad { ptr, i32 }
          cleanup
  br label %.body40.i

.body40.i:                                        ; preds = %bb.eo, %.body.i.i, %bb.dr
  %eh.lpad-body41.i = phi { ptr, i32 } [ %i.ns, %bb.dr ], [ %.pn.ph.i.i, %bb.eo ], [ %eh.lpad-body.i.i, %.body.i.i ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 16 dereferenceable(64) %i.bs)
          to label %.body178 unwind label %bb.ep, !noalias !34141

bb.ds:                                            ; preds = %bb.dq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !34141
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !noalias !34141
  %i.nt = invoke { ptr, i64 } %.val105(ptr noundef nonnull %i.kq, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.bs)
          to label %bb.dt unwind label %bb.dr, !noalias !34141 ; 2 uses

bb.dt:                                            ; preds = %bb.ds
  %i.nu = extractvalue { ptr, i64 } %i.nt, 0      ; 5 uses
  %i.nv = extractvalue { ptr, i64 } %i.nt, 1      ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !34151)
  %.not.i.i.i.i164 = icmp eq ptr %i.nu, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i164, label %bb.dv, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.nw = getelementptr inbounds i8, ptr %i.nu, i64 -16
  %i.nx = load atomic i64, ptr %i.nw acquire, align 8, !noalias !34152
  %i.ny = icmp eq i64 %i.nx, 1
  %i.nz = zext i1 %i.ny to i8
  br label %bb.dv

bb.dv:                                            ; preds = %bb.du, %bb.dt
  %.sroa.02.0.i.i.i.i = phi i8 [ %i.nz, %bb.du ], [ 1, %bb.dt ] ; 2 uses
  store ptr %i.nu, ptr %i.bg, align 8, !alias.scope !34151, !noalias !34141
  %i.oa = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store i64 %i.nv, ptr %i.oa, align 8, !alias.scope !34151, !noalias !34141
  %i.ob = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  store i8 %.sroa.02.0.i.i.i.i, ptr %i.ob, align 8, !alias.scope !34151, !noalias !34141
  %i.oc = getelementptr inbounds nuw i8, ptr %i.bg, i64 16 ; 2 uses
  store i64 0, ptr %i.oc, align 8, !alias.scope !34151, !noalias !34141
  %i.od = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  store i64 %i.nv, ptr %i.od, align 8, !alias.scope !34151, !noalias !34141
  call void @llvm.experimental.noalias.scope.decl(metadata !34153)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !34154
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !34155)
  %.not.i = icmp eq i64 %i.nv, 0
  br i1 %.not.i, label %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit.thread.i.i, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !34156
  store i64 1, ptr %i.oc, align 8, !alias.scope !34157, !noalias !34158
  %i.oe = trunc nuw i8 %.sroa.02.0.i.i.i.i to i1
  br i1 %i.oe, label %bb.dy, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  invoke void @_RNvXs1_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ax, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.nu)
          to label %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit.i.i unwind label %bb.dz, !noalias !34154

bb.dy:                                            ; preds = %bb.dw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, ptr noundef nonnull align 8 dereferenceable(24) %i.nu, i64 24, i1 false), !noalias !34159
  br label %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit.i.i

bb.dz:                                            ; preds = %bb.dx
  %i.of = landingpad { ptr, i32 }
          cleanup
  br label %bb.eo

_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit.i.i: ; preds = %bb.dy, %bb.dx
  %.sroa.0.0.copyload9.i.i = load ptr, ptr %i.ax, align 8, !noalias !34160 ; 2 uses
  %.sroa.7.0..sroa_idx10.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx10.i.i, i64 16, i1 false), !noalias !34160
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !34156
  %.not.i38.i = icmp eq ptr %.sroa.0.0.copyload9.i.i, null
  br i1 %.not.i38.i, label %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit.thread.i.i, label %bb.eb

_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit.thread.i.i: ; preds = %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit.i.i, %bb.dv
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !34154
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.bg)
          to label %_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEINtB2_18SpecFromIterNestedB11_INtNtCsakL8LGkl72C_4ecow3vec8IntoIterB11_EE9from_iterCs9fPPV5zPXBl_5typst.exit.i unwind label %bb.dr, !noalias !34141

bb.ea:                                            ; preds = %bb.ed
  %i.og = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs2_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.az)
          to label %bb.eo unwind label %bb.en, !noalias !34154

bb.eb:                                            ; preds = %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !34154
  store ptr %.sroa.0.0.copyload9.i.i, ptr %i.az, align 8, !noalias !34154
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.i.i, i64 16, i1 false), !noalias !34154
  %..i.i.i = call noundef i64 @llvm.umax.i64(i64 %i.nv, i64 4) ; 3 uses
  %i.oh = mul i64 %..i.i.i, 24                    ; 3 uses
  %or.cond.i.i.i.i = icmp ugt i64 %i.nv, 384307168202282325
  br i1 %or.cond.i.i.i.i, label %bb.ed, label %bb.ec, !prof !61

bb.ec:                                            ; preds = %bb.eb
  %i.oi = icmp eq i64 %i.oh, 0
  br i1 %i.oi, label %bb.ee, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i: ; preds = %bb.ec
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #56, !noalias !34161
  %i.oj = call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %i.oh, i64 noundef range(i64 1, 17) 8) #56, !noalias !34161 ; 2 uses
  %i.ok = icmp eq ptr %i.oj, null
  br i1 %i.ok, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i, %bb.eb
  %.sroa.4.0.ph.i.i.i = phi i64 [ 8, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i ], [ 0, %bb.eb ]
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %i.oh) #61
          to label %.noexc6.i.i unwind label %bb.ea, !noalias !34154

.noexc6.i.i:                                      ; preds = %bb.ed
  unreachable

bb.ee:                                            ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i, %bb.ec
  %.sroa.10.0.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.ec ], [ %i.oj, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i ] ; 4 uses
  %.sroa.4.0.i.i.i = phi i64 [ 0, %bb.ec ], [ %..i.i.i, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i ] ; 2 uses
  %i.ol = icmp ule i64 %..i.i.i, %.sroa.4.0.i.i.i
  call void @llvm.assume(i1 %i.ol)
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.az, i64 24, i1 false), !noalias !34154
  store i64 %.sroa.4.0.i.i.i, ptr %i.ba, align 8, !noalias !34154
  %.sroa.4.0..sroa_idx.i.i165 = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 4 uses
  store ptr %.sroa.10.0.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i165, align 8, !noalias !34154
  %.sroa.6.0..sroa_idx.i39.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 16 ; 3 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i39.i, align 8, !noalias !34154
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !34154
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !34154
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ay, ptr noundef nonnull align 8 dereferenceable(40) %i.bg, i64 40, i1 false), !noalias !34162
  call void @llvm.experimental.noalias.scope.decl(metadata !34163)
  call void @llvm.experimental.noalias.scope.decl(metadata !34164)
  call void @llvm.experimental.noalias.scope.decl(metadata !34165)
  call void @llvm.experimental.noalias.scope.decl(metadata !34166)
  %i.om = getelementptr inbounds nuw i8, ptr %i.ay, i64 16 ; 4 uses
  %i.on = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.oo = load i64, ptr %i.on, align 8, !alias.scope !34167, !noalias !34168, !noundef !28 ; 7 uses
  %.promoted.i.i.i.i = load i64, ptr %i.om, align 8, !alias.scope !34169, !noalias !34170 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i.i)
  %i.op = icmp ult i64 %.promoted.i.i.i.i, %i.oo
  br i1 %i.op, label %.lr.ph.i.i.i.i170, label %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE16extend_desugaredINtNtCsakL8LGkl72C_4ecow3vec8IntoIterBG_EECs9fPPV5zPXBl_5typst.exit.i.i.i

.lr.ph.i.i.i.i170:                                ; preds = %bb.ee
  %i.oq = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  %i.or = load i8, ptr %i.oq, align 8, !range !53, !alias.scope !34167, !noalias !34171, !noundef !28
  %i.os = trunc nuw i8 %i.or to i1
  %i.ot = load ptr, ptr %i.ay, align 8, !alias.scope !34167, !noalias !34171, !nonnull !28, !noundef !28 ; 2 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ov = load i64, ptr %i.ou, align 8, !alias.scope !34169, !noalias !34170
  %.sroa.7.0..sroa_idx7.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %.sroa.7.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 2 uses
  br i1 %i.os, label %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit.us.i.i.i.i, label %.lr.ph.split.i.i.i.i

_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit.us.i.i.i.i: ; preds = %.lr.ph.i.i.i.i170, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE7reserveCs9fPPV5zPXBl_5typst.exit.us.i.i.i.i
  %i.ow = phi ptr [ %i.pf, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE7reserveCs9fPPV5zPXBl_5typst.exit.us.i.i.i.i ], [ %.sroa.10.0.i.i.i, %.lr.ph.i.i.i.i170 ]
  %i.ox = phi i64 [ %i.ph, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE7reserveCs9fPPV5zPXBl_5typst.exit.us.i.i.i.i ], [ 1, %.lr.ph.i.i.i.i170 ] ; 6 uses
  %.val1112.us.i.i.i.i = phi i64 [ %i.oy, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE7reserveCs9fPPV5zPXBl_5typst.exit.us.i.i.i.i ], [ %.promoted.i.i.i.i, %.lr.ph.i.i.i.i170 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !34172)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !34173
  %i.oy = add nuw i64 %.val1112.us.i.i.i.i, 1     ; 5 uses
  %i.oz = getelementptr inbounds nuw [24 x i8], ptr %i.ot, i64 %.val1112.us.i.i.i.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.av, ptr noundef nonnull align 8 dereferenceable(24) %i.oz, i64 24, i1 false), !noalias !34174
  %.sroa.0.0.copyload6.us.i.i.i.i = load ptr, ptr %i.av, align 8, !noalias !34175 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !34173
  %.not.us.i.i.i.i = icmp eq ptr %.sroa.0.0.copyload6.us.i.i.i.i, null
  br i1 %.not.us.i.i.i.i, label %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE16extend_desugaredINtNtCsakL8LGkl72C_4ecow3vec8IntoIterBG_EECs9fPPV5zPXBl_5typst.exit.i.sink.split.i.i, label %bb.ef

bb.ef:                                            ; preds = %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit.us.i.i.i.i
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oz, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !34176
  store ptr %.sroa.0.0.copyload6.us.i.i.i.i, ptr %i.aw, align 8, !noalias !34176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.pa, i64 16, i1 false), !noalias !34176
  %i.pb = icmp samesign ult i64 %i.ox, 384307168202282326
  call void @llvm.assume(i1 %i.pb)
  %i.pc = load i64, ptr %i.ba, align 8, !range !37, !alias.scope !34177, !noalias !34178, !noundef !28
  %i.pd = icmp eq i64 %i.ox, %i.pc
  br i1 %i.pd, label %bb.eg, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE7reserveCs9fPPV5zPXBl_5typst.exit.us.i.i.i.i

bb.eg:                                            ; preds = %bb.ef
  %i.pe = sub i64 %i.oo, %i.oy
  %0 = call i64 @llvm.uadd.sat.i64(i64 %i.pe, i64 1)
  invoke fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ba, i64 noundef %i.ox, i64 noundef range(i64 1, 0) %0, i64 noundef 8, i64 noundef 24)
          to label %._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE7reserveCs9fPPV5zPXBl_5typst.exit.us.i.i_crit_edge.i.i unwind label %.split.us.i.i.i.i, !noalias !34178

._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE7reserveCs9fPPV5zPXBl_5typst.exit.us.i.i_crit_edge.i.i: ; preds = %bb.eg
  %.pre27.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i165, align 8, !alias.scope !34177, !noalias !34178
  br label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE7reserveCs9fPPV5zPXBl_5typst.exit.us.i.i.i.i

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE7reserveCs9fPPV5zPXBl_5typst.exit.us.i.i.i.i: ; preds = %._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE7reserveCs9fPPV5zPXBl_5typst.exit.us.i.i_crit_edge.i.i, %bb.ef
  %i.pf = phi ptr [ %.pre27.i.i, %._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE7reserveCs9fPPV5zPXBl_5typst.exit.us.i.i_crit_edge.i.i ], [ %i.ow, %bb.ef ] ; 2 uses
  %i.pg = getelementptr inbounds nuw [24 x i8], ptr %i.pf, i64 %i.ox
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.pg, ptr noundef nonnull align 8 dereferenceable(24) %i.aw, i64 24, i1 false), !noalias !34176
  %i.ph = add nuw nsw i64 %i.ox, 1                ; 3 uses
  store i64 %i.ph, ptr %.sroa.6.0..sroa_idx.i39.i, align 8, !alias.scope !34177, !noalias !34178
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !34176
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i.i)
  %exitcond14.not.i.i.i.i = icmp eq i64 %i.oy, %i.oo
  br i1 %exitcond14.not.i.i.i.i, label %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE16extend_desugaredINtNtCsakL8LGkl72C_4ecow3vec8IntoIterBG_EECs9fPPV5zPXBl_5typst.exit.i.sink.split.i.i, label %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit.us.i.i.i.i

.split.us.i.i.i.i:                                ; preds = %bb.eg
  %i.pi = landingpad { ptr, i32 }
          cleanup
  br label %bb.ej

.lr.ph.split.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i170, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE7reserveCs9fPPV5zPXBl_5typst.exit.i.i.i.i
  %i.pj = phi ptr [ %i.ps, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE7reserveCs9fPPV5zPXBl_5typst.exit.i.i.i.i ], [ %.sroa.10.0.i.i.i, %.lr.ph.i.i.i.i170 ]
  %i.pk = phi i64 [ %i.pu, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE7reserveCs9fPPV5zPXBl_5typst.exit.i.i.i.i ], [ 1, %.lr.ph.i.i.i.i170 ] ; 6 uses
  %.val1112.i.i.i.i = phi i64 [ %i.pl, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE7reserveCs9fPPV5zPXBl_5typst.exit.i.i.i.i ], [ %.promoted.i.i.i.i, %.lr.ph.i.i.i.i170 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !34172)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !34173
  %i.pl = add nuw i64 %.val1112.i.i.i.i, 1        ; 6 uses
  %i.pm = icmp ult i64 %.val1112.i.i.i.i, %i.ov
  call void @llvm.assume(i1 %i.pm)
  %i.pn = getelementptr inbounds nuw [24 x i8], ptr %i.ot, i64 %.val1112.i.i.i.i
  invoke void @_RNvXs1_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.av, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.pn)
          to label %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit.i.i.i.i unwind label %bb.eh, !noalias !34176

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECs9fPPV5zPXBl_5typst.exit.i.i.i.i: ; preds = %bb.ej, %bb.eh
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.po, %bb.eh ], [ %.us-phi.i.i.i.i, %bb.ej ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.ay) #62
          to label %.body.i.i unwind label %bb.el, !noalias !34170

bb.eh:                                            ; preds = %.lr.ph.split.i.i.i.i
  %i.po = landingpad { ptr, i32 }
          cleanup
  store i64 %i.pl, ptr %i.om, align 8, !alias.scope !34167, !noalias !34171
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECs9fPPV5zPXBl_5typst.exit.i.i.i.i

_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit.i.i.i.i: ; preds = %.lr.ph.split.i.i.i.i
  %.sroa.0.0.copyload6.i.i.i.i = load ptr, ptr %i.av, align 8, !noalias !34175 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx7.i.i.i.i, i64 16, i1 false), !noalias !34175
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !34173
  %.not.i.i7.i.i = icmp eq ptr %.sroa.0.0.copyload6.i.i.i.i, null
  br i1 %.not.i.i7.i.i, label %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE16extend_desugaredINtNtCsakL8LGkl72C_4ecow3vec8IntoIterBG_EECs9fPPV5zPXBl_5typst.exit.i.sink.split.i.i, label %bb.ei

bb.ei:                                            ; preds = %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !34176
  store ptr %.sroa.0.0.copyload6.i.i.i.i, ptr %i.aw, align 8, !noalias !34176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.i.i.i.i, i64 16, i1 false), !noalias !34176
  %i.pp = icmp samesign ult i64 %i.pk, 384307168202282326
  call void @llvm.assume(i1 %i.pp)
  %i.pq = load i64, ptr %i.ba, align 8, !range !37, !alias.scope !34177, !noalias !34178, !noundef !28
  %i.pr = icmp eq i64 %i.pk, %i.pq
  br i1 %i.pr, label %bb.ek, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE7reserveCs9fPPV5zPXBl_5typst.exit.i.i.i.i

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE7reserveCs9fPPV5zPXBl_5typst.exit.i.i.i.i: ; preds = %._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE7reserveCs9fPPV5zPXBl_5typst.exit.i.i_crit_edge.i.i, %bb.ei
  %i.ps = phi ptr [ %.pre.i.i, %._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE7reserveCs9fPPV5zPXBl_5typst.exit.i.i_crit_edge.i.i ], [ %i.pj, %bb.ei ] ; 2 uses
  %i.pt = getelementptr inbounds nuw [24 x i8], ptr %i.ps, i64 %i.pk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.pt, ptr noundef nonnull align 8 dereferenceable(24) %i.aw, i64 24, i1 false), !noalias !34176
  %i.pu = add nuw nsw i64 %i.pk, 1                ; 3 uses
  store i64 %i.pu, ptr %.sroa.6.0..sroa_idx.i39.i, align 8, !alias.scope !34177, !noalias !34178
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !34176
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i.i)
  %exitcond.not.i.i.i.i = icmp eq i64 %i.pl, %i.oo
  br i1 %exitcond.not.i.i.i.i, label %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE16extend_desugaredINtNtCsakL8LGkl72C_4ecow3vec8IntoIterBG_EECs9fPPV5zPXBl_5typst.exit.i.sink.split.i.i, label %.lr.ph.split.i.i.i.i

.split.i.i.i.i:                                   ; preds = %bb.ek
  %i.pv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ej

bb.ej:                                            ; preds = %.split.i.i.i.i, %.split.us.i.i.i.i
  %storemerge.i.i171 = phi i64 [ %i.pl, %.split.i.i.i.i ], [ %i.oy, %.split.us.i.i.i.i ]
  %.us-phi.i.i.i.i = phi { ptr, i32 } [ %i.pv, %.split.i.i.i.i ], [ %i.pi, %.split.us.i.i.i.i ]
  store i64 %storemerge.i.i171, ptr %i.om, align 8, !alias.scope !34167, !noalias !34171
  invoke void @_RNvXs2_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aw)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECs9fPPV5zPXBl_5typst.exit.i.i.i.i unwind label %bb.el, !noalias !34176

bb.ek:                                            ; preds = %bb.ei
  %i.pw = sub i64 %i.oo, %i.pl
  %1 = call i64 @llvm.uadd.sat.i64(i64 %i.pw, i64 1)
  invoke fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ba, i64 noundef %i.pk, i64 noundef range(i64 1, 0) %1, i64 noundef 8, i64 noundef 24)
          to label %._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE7reserveCs9fPPV5zPXBl_5typst.exit.i.i_crit_edge.i.i unwind label %.split.i.i.i.i, !noalias !34178

._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE7reserveCs9fPPV5zPXBl_5typst.exit.i.i_crit_edge.i.i: ; preds = %bb.ek
  %.pre.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i165, align 8, !alias.scope !34177, !noalias !34178
  br label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE7reserveCs9fPPV5zPXBl_5typst.exit.i.i.i.i

bb.el:                                            ; preds = %bb.ej, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECs9fPPV5zPXBl_5typst.exit.i.i.i.i
  %i.px = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #64, !noalias !34176
  unreachable

_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE16extend_desugaredINtNtCsakL8LGkl72C_4ecow3vec8IntoIterBG_EECs9fPPV5zPXBl_5typst.exit.i.sink.split.i.i: ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE7reserveCs9fPPV5zPXBl_5typst.exit.i.i.i.i, %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit.i.i.i.i, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE7reserveCs9fPPV5zPXBl_5typst.exit.us.i.i.i.i, %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit.us.i.i.i.i
  %.sroa.6.0.copyload661.i = phi i64 [ %i.ph, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE7reserveCs9fPPV5zPXBl_5typst.exit.us.i.i.i.i ], [ %i.ox, %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit.us.i.i.i.i ], [ %i.pk, %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit.i.i.i.i ], [ %i.pu, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE7reserveCs9fPPV5zPXBl_5typst.exit.i.i.i.i ]
  %.lcssa25.sink.i.i = phi i64 [ %i.oo, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE7reserveCs9fPPV5zPXBl_5typst.exit.us.i.i.i.i ], [ %i.oy, %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit.us.i.i.i.i ], [ %i.pl, %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit.i.i.i.i ], [ %i.oo, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE7reserveCs9fPPV5zPXBl_5typst.exit.i.i.i.i ]
  store i64 %.lcssa25.sink.i.i, ptr %i.om, align 8, !alias.scope !34167, !noalias !34171
  br label %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE16extend_desugaredINtNtCsakL8LGkl72C_4ecow3vec8IntoIterBG_EECs9fPPV5zPXBl_5typst.exit.i.i.i

_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE16extend_desugaredINtNtCsakL8LGkl72C_4ecow3vec8IntoIterBG_EECs9fPPV5zPXBl_5typst.exit.i.i.i: ; preds = %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE16extend_desugaredINtNtCsakL8LGkl72C_4ecow3vec8IntoIterBG_EECs9fPPV5zPXBl_5typst.exit.i.sink.split.i.i, %bb.ee
  %.sroa.6.0.copyload6.i = phi i64 [ %.sroa.6.0.copyload661.i, %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE16extend_desugaredINtNtCsakL8LGkl72C_4ecow3vec8IntoIterBG_EECs9fPPV5zPXBl_5typst.exit.i.sink.split.i.i ], [ 1, %bb.ee ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i.i)
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.ay)
          to label %_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEINtB2_10SpecExtendBR_INtNtCsakL8LGkl72C_4ecow3vec8IntoIterBR_EE11spec_extendCs9fPPV5zPXBl_5typst.exit.i.i unwind label %bb.em, !noalias !34154

bb.em:                                            ; preds = %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE16extend_desugaredINtNtCsakL8LGkl72C_4ecow3vec8IntoIterBG_EECs9fPPV5zPXBl_5typst.exit.i.i.i
  %i.py = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.em, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECs9fPPV5zPXBl_5typst.exit.i.i.i.i
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.py, %bb.em ], [ %.pn.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECs9fPPV5zPXBl_5typst.exit.i.i.i.i ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ba) #62
          to label %.body40.i unwind label %bb.en, !noalias !34154

_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEINtB2_10SpecExtendBR_INtNtCsakL8LGkl72C_4ecow3vec8IntoIterBR_EE11spec_extendCs9fPPV5zPXBl_5typst.exit.i.i: ; preds = %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE16extend_desugaredINtNtCsakL8LGkl72C_4ecow3vec8IntoIterBG_EECs9fPPV5zPXBl_5typst.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !34154
  %.sroa.0.0.copyload1.i = load i64, ptr %i.ba, align 8, !noalias !34179
  %.sroa.5.0.copyload4.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i165, align 8, !noalias !34179
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !34154
  br label %_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEINtB2_18SpecFromIterNestedB11_INtNtCsakL8LGkl72C_4ecow3vec8IntoIterB11_EE9from_iterCs9fPPV5zPXBl_5typst.exit.i

bb.en:                                            ; preds = %bb.eo, %.body.i.i, %bb.ea
  %i.pz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #64, !noalias !34154
  unreachable

bb.eo:                                            ; preds = %bb.ea, %bb.dz
  %.pn.ph.i.i = phi { ptr, i32 } [ %i.of, %bb.dz ], [ %i.og, %bb.ea ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.bg) #62
          to label %.body40.i unwind label %bb.en, !noalias !34162

_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEINtB2_18SpecFromIterNestedB11_INtNtCsakL8LGkl72C_4ecow3vec8IntoIterB11_EE9from_iterCs9fPPV5zPXBl_5typst.exit.i: ; preds = %_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEINtB2_10SpecExtendBR_INtNtCsakL8LGkl72C_4ecow3vec8IntoIterBR_EE11spec_extendCs9fPPV5zPXBl_5typst.exit.i.i, %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit.thread.i.i
  %.sroa.6.0.i166 = phi i64 [ %.sroa.6.0.copyload6.i, %_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEINtB2_10SpecExtendBR_INtNtCsakL8LGkl72C_4ecow3vec8IntoIterBR_EE11spec_extendCs9fPPV5zPXBl_5typst.exit.i.i ], [ 0, %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit.thread.i.i ] ; 6 uses
  %.sroa.5.0.i167 = phi ptr [ %.sroa.5.0.copyload4.i, %_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEINtB2_10SpecExtendBR_INtNtCsakL8LGkl72C_4ecow3vec8IntoIterBR_EE11spec_extendCs9fPPV5zPXBl_5typst.exit.i.i ], [ inttoptr (i64 8 to ptr), %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit.thread.i.i ] ; 6 uses
  %.sroa.0.0.i168 = phi i64 [ %.sroa.0.0.copyload1.i, %_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEINtB2_10SpecExtendBR_INtNtCsakL8LGkl72C_4ecow3vec8IntoIterBR_EE11spec_extendCs9fPPV5zPXBl_5typst.exit.i.i ], [ 0, %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit.thread.i.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !34141
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 16 dereferenceable(64) %i.bs)
          to label %bb.et unwind label %bb.cm

bb.ep:                                            ; preds = %.body40.i, %.body.i161
  %i.qa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #64, !noalias !34141
  unreachable

bb.eq:                                            ; preds = %bb.dp, %bb.es
  %.sroa.12.0 = phi i64 [ %i.qd, %bb.es ], [ %i.nr, %bb.dp ]
  %.sroa.710.0 = phi ptr [ %i.qc, %bb.es ], [ %i.np, %bb.dp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br), !noalias !34141
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !noalias !34141
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdaEETE4DqmE_13typst_library6engine4SinkECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef align 8 dereferenceable(96) %i.bn)
          to label %.thread unwind label %bb.cm

.thread:                                          ; preds = %bb.eq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !34141
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs), !noalias !34141
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.69.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh)
  br label %bb.eu

bb.er:                                            ; preds = %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit.i._crit_edge.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !34142
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.616.i, ptr noundef nonnull align 8 dereferenceable(16) %i.bf, i64 16, i1 false), !noalias !34141
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !34142
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !noalias !34141
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.69.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.616.i, i64 16, i1 false), !noalias !34141
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.616.i)
  %i.qb = invoke { ptr, i64 } @_RNvMs8_NtCsdaEETE4DqmE_13typst_library4diagNtB5_12HintedString3new(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %.sroa.69.i)
          to label %bb.es unwind label %bb.co, !noalias !34141 ; 2 uses

bb.es:                                            ; preds = %bb.er
  %i.qc = extractvalue { ptr, i64 } %i.qb, 0
  %i.qd = extractvalue { ptr, i64 } %i.qb, 1
  br label %bb.eq

bb.et:                                            ; preds = %_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEINtB2_18SpecFromIterNestedB11_INtNtCsakL8LGkl72C_4ecow3vec8IntoIterB11_EE9from_iterCs9fPPV5zPXBl_5typst.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs), !noalias !34141
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.69.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh)
  %i.qe = icmp eq i64 %.sroa.0.0.i168, -1
  br i1 %i.qe, label %bb.eu, label %bb.ev

bb.eu:                                            ; preds = %.thread, %bb.et
  %.sroa.710.127 = phi ptr [ %.sroa.710.0, %.thread ], [ %.sroa.5.0.i167, %bb.et ] ; 2 uses
  %.sroa.12.126 = phi i64 [ %.sroa.12.0, %.thread ], [ %.sroa.6.0.i166, %bb.et ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.710.127) ]
  br label %bb.je

bb.ev:                                            ; preds = %bb.et
  store i64 %.sroa.0.0.i168, ptr %i.dj, align 8
  %.sroa.631.0..sroa_idx32 = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  store ptr %.sroa.5.0.i167, ptr %.sroa.631.0..sroa_idx32, align 8
  %.sroa.834.0..sroa_idx35 = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  store i64 %.sroa.6.0.i166, ptr %.sroa.834.0..sroa_idx35, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.di)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dh)
  call void @llvm.experimental.noalias.scope.decl(metadata !34180)
  %i.qf = load i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvCs9fPPV5zPXBl_5typst4ARGS, i64 272), align 8, !range !53, !noalias !34181, !noundef !28
  %i.qg = trunc nuw i8 %i.qf to i1
  br i1 %i.qg, label %bb.fr, label %._crit_edge76.i

._crit_edge76.i:                                  ; preds = %bb.fr, %bb.ev
  %i.qh = phi i64 [ 1, %bb.fr ], [ %.sroa.6.0.i166, %bb.ev ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !34181
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !34181
  %i.qi = icmp ult i64 %i.qh, 384307168202282326
  call void @llvm.assume(i1 %i.qi)
  %.idx.i = mul nuw nsw i64 %i.qh, 24
  %i.qj = getelementptr inbounds nuw i8, ptr %.sroa.5.0.i167, i64 %.idx.i ; 3 uses
  store ptr %.sroa.5.0.i167, ptr %i.aq, align 8, !noalias !34181
  %.sroa.4.0..sroa_idx.i181 = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 6 uses
  store ptr %.sroa.5.0.i167, ptr %.sroa.4.0..sroa_idx.i181, align 8, !noalias !34181
  %.sroa.5.0..sroa_idx.i182 = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store i64 %.sroa.0.0.i168, ptr %.sroa.5.0..sroa_idx.i182, align 8, !noalias !34181
  %.sroa.6.0..sroa_idx.i183 = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  store ptr %i.qj, ptr %.sroa.6.0..sroa_idx.i183, align 8, !noalias !34181
  %i.qk = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  store ptr getelementptr inbounds nuw (i8, ptr @_RNvCs9fPPV5zPXBl_5typst4ARGS, i64 8), ptr %i.qk, align 8, !noalias !34181
  call void @llvm.experimental.noalias.scope.decl(metadata !34182)
  call void @llvm.experimental.noalias.scope.decl(metadata !34183)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !34184
  call void @llvm.experimental.noalias.scope.decl(metadata !34185)
  call void @llvm.experimental.noalias.scope.decl(metadata !34186)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !34187)
  %.not12.i.i.i.i.i = icmp eq i64 %i.qh, 0
  br i1 %.not12.i.i.i.i.i, label %.loopexit20.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %._crit_edge76.i, %.noexc5.i.i
  %i.ql = phi ptr [ %i.qm, %.noexc5.i.i ], [ %.sroa.5.0.i167, %._crit_edge76.i ] ; 3 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %i.ql, i64 24 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !34188
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef nonnull align 8 dereferenceable(24) %i.ql, i64 24, i1 false), !noalias !34189
  %i.qn = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvCs9fPPV5zPXBl_5typst4ARGS, i64 248), align 8, !range !55, !noalias !34190, !noundef !28
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.qn, -1
  br i1 %.not.i.i.i.i.i.i.i.i, label %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCNvNtCs9fPPV5zPXBl_5typst5query6format0INtB7_5FnMutTNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEE8call_mutBU_.exit.thread.i.i.i.i.i.i, label %bb.ew

bb.ew:                                            ; preds = %.lr.ph.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !34190
  %i.qo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvCs9fPPV5zPXBl_5typst4ARGS, i64 256), align 8, !noalias !34190, !nonnull !28, !noundef !28
  %i.qp = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvCs9fPPV5zPXBl_5typst4ARGS, i64 264), align 8, !noalias !34190, !noundef !28
  invoke void @_RNvMNtNtCsdaEETE4DqmE_13typst_library11foundations7contentNtB2_7Content11get_by_name(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.ak, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.al, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.qo, i64 noundef %i.qp)
          to label %bb.ey unwind label %bb.ex, !noalias !34191

_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCNvNtCs9fPPV5zPXBl_5typst5query6format0INtB7_5FnMutTNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEE8call_mutBU_.exit.thread.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  store ptr %i.qm, ptr %.sroa.4.0..sroa_idx.i181, align 8, !alias.scope !34192, !noalias !34193
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.ql, i64 24, i1 false), !noalias !34194
  br label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i186

bb.ex:                                            ; preds = %bb.ew
  %i.qq = landingpad { ptr, i32 }
          cleanup
  store ptr %i.qm, ptr %.sroa.4.0..sroa_idx.i181, align 8, !alias.scope !34192, !noalias !34193
  invoke void @_RNvXs2_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.al)
          to label %bb.fq unwind label %bb.ez, !noalias !34191

bb.ey:                                            ; preds = %bb.ew
  %i.qr = load i64, ptr %i.ak, align 8, !range !74, !noalias !34190, !noundef !28 ; 2 uses
  %i.qs = icmp eq i64 %i.qr, -1
  br i1 %i.qs, label %bb.fa, label %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCNvNtCs9fPPV5zPXBl_5typst5query6format0INtB7_5FnMutTNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEE8call_mutBU_.exit.i.i.i.i.i.i

bb.ez:                                            ; preds = %bb.ex
  %i.qt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #64, !noalias !34191
  unreachable

_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCNvNtCs9fPPV5zPXBl_5typst5query6format0INtB7_5FnMutTNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEE8call_mutBU_.exit.i.i.i.i.i.i: ; preds = %bb.ey
  store ptr %i.qm, ptr %.sroa.4.0..sroa_idx.i181, align 8, !alias.scope !34192, !noalias !34193
  %.sroa.7.0..sroa_idx2.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx2.i.i.i.i.i.i, i64 24, i1 false), !noalias !34194
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !34190
  invoke void @_RNvXs2_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.al)
          to label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i186 unwind label %.loopexit.split-lp.i.i, !noalias !34184

bb.fa:                                            ; preds = %bb.ey
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !34190
  invoke void @_RNvXs2_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.al)
          to label %.noexc5.i.i unwind label %.loopexit.i.i206, !noalias !34184
end_hunk_1
begin_hunk_2_@_RNvNtCs9fPPV5zPXBl_5typst7compile11pdf_options:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !35295
  %i.cx = urem i32 %i.cw, 60
  %i.cy = udiv i32 %i.cu, 60
  %i.cz = urem i32 %i.cy, 60
  %i.da = trunc nuw nsw i32 %i.cz to i8
  %i.db = trunc nuw nsw i32 %i.cx to i8
  call void @_RNvMNtNtCsdaEETE4DqmE_13typst_library11foundations8datetimeNtB2_8Datetime12from_ymd_hms(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.z, i32 noundef %i.br, i8 noundef %i.cc, i8 noundef %i.cq, i8 noundef %i.cs, i8 noundef %i.da, i8 noundef %i.db)
  %.phi.trans.insert31 = getelementptr inbounds nuw i8, ptr %i.z, i64 11
  %.pre32 = load i8, ptr %.phi.trans.insert31, align 1, !range !67
  %i.dc = icmp eq i8 %.pre32, -1
  br i1 %i.dc, label %_RINvNtCs9fPPV5zPXBl_5typst7compile16convert_datetimeNtNtNtCseKXfNLkF2r6_6chrono6offset5local5LocalEB4_.exit.thread, label %bb.h

bb.h:                                             ; preds = %_RINvNtCs9fPPV5zPXBl_5typst7compile16convert_datetimeNtNtNtCseKXfNLkF2r6_6chrono6offset5local5LocalEB4_.exit
  %i.dd = sdiv i32 %.sroa.930.0.copyload, 60      ; 2 uses
  %i.de = add nsw i32 %i.dd, 1439
  %or.cond = icmp ult i32 %i.de, 2879
  br i1 %or.cond, label %bb.i, label %_RINvNtCs9fPPV5zPXBl_5typst7compile16convert_datetimeNtNtNtCseKXfNLkF2r6_6chrono6offset5local5LocalEB4_.exit.thread

bb.i:                                             ; preds = %bb.h
  %.lhs.trunc27.i = trunc nsw i32 %i.dd to i16    ; 2 uses
  %i.df = srem i16 %.lhs.trunc27.i, 60
  %i.dg = call i16 @llvm.abs.i16(i16 %i.df, i1 true)
  %i.dh = sdiv i16 %.lhs.trunc27.i, 60
  %i.di = trunc nsw i16 %i.dh to i8
  %i.dj = trunc nuw nsw i16 %i.dg to i8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0, ptr noundef nonnull align 4 dereferenceable(12) %i.z, i64 12, i1 false)
  br label %_RINvNtCs9fPPV5zPXBl_5typst7compile16convert_datetimeNtNtNtCseKXfNLkF2r6_6chrono6offset5local5LocalEB4_.exit.thread

_RINvNtCs9fPPV5zPXBl_5typst7compile16convert_datetimeNtNtNtCseKXfNLkF2r6_6chrono6offset5local5LocalEB4_.exit.thread: ; preds = %_RINvNtCs9fPPV5zPXBl_5typst7compile16convert_datetimeNtNtNtCseKXfNLkF2r6_6chrono6offset5local5LocalEB4_.exit, %_RNvXsb_NtCseKXfNLkF2r6_6chrono8datetimeINtB5_8DateTimeNtNtNtB7_6offset5local5LocalENtNtB7_6traits8Datelike3dayCs9fPPV5zPXBl_5typst.exit.i, %bb.h, %bb.i, %_RINvNtCs9fPPV5zPXBl_5typst7compile16convert_datetimeNtNtNtCseKXfNLkF2r6_6chrono6offset3utc3UtcEB4_.exit.thread
  %.sroa.10.1 = phi i8 [ undef, %_RINvNtCs9fPPV5zPXBl_5typst7compile16convert_datetimeNtNtNtCseKXfNLkF2r6_6chrono6offset3utc3UtcEB4_.exit.thread ], [ undef, %_RNvXsb_NtCseKXfNLkF2r6_6chrono8datetimeINtB5_8DateTimeNtNtNtB7_6offset5local5LocalENtNtB7_6traits8Datelike3dayCs9fPPV5zPXBl_5typst.exit.i ], [ undef, %_RINvNtCs9fPPV5zPXBl_5typst7compile16convert_datetimeNtNtNtCseKXfNLkF2r6_6chrono6offset5local5LocalEB4_.exit ], [ undef, %bb.h ], [ %i.dj, %bb.i ]
  %.sroa.9.1 = phi i8 [ undef, %_RINvNtCs9fPPV5zPXBl_5typst7compile16convert_datetimeNtNtNtCseKXfNLkF2r6_6chrono6offset3utc3UtcEB4_.exit.thread ], [ undef, %_RNvXsb_NtCseKXfNLkF2r6_6chrono8datetimeINtB5_8DateTimeNtNtNtB7_6offset5local5LocalENtNtB7_6traits8Datelike3dayCs9fPPV5zPXBl_5typst.exit.i ], [ undef, %_RINvNtCs9fPPV5zPXBl_5typst7compile16convert_datetimeNtNtNtCseKXfNLkF2r6_6chrono6offset5local5LocalEB4_.exit ], [ undef, %bb.h ], [ %i.di, %bb.i ]
  %.sroa.3.1 = phi i8 [ %.sroa.3.2, %_RINvNtCs9fPPV5zPXBl_5typst7compile16convert_datetimeNtNtNtCseKXfNLkF2r6_6chrono6offset3utc3UtcEB4_.exit.thread ], [ 2, %_RNvXsb_NtCseKXfNLkF2r6_6chrono8datetimeINtB5_8DateTimeNtNtNtB7_6offset5local5LocalENtNtB7_6traits8Datelike3dayCs9fPPV5zPXBl_5typst.exit.i ], [ 2, %_RINvNtCs9fPPV5zPXBl_5typst7compile16convert_datetimeNtNtNtCseKXfNLkF2r6_6chrono6offset5local5LocalEB4_.exit ], [ 2, %bb.h ], [ 1, %bb.i ]
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.dl = load i64, ptr %i.dk, align 8, !range !55, !noundef !28
  %.not14 = icmp eq i64 %i.dl, -1
  br i1 %.not14, label %_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusiveINtNtBM_6option6OptionINtNtNtBM_3num7nonzero7NonZerojEEEENtNtBM_5clone5Clone5cloneCs9fPPV5zPXBl_5typst.exit, label %bb.k

bb.j:                                             ; preds = %_RINvNtCs9fPPV5zPXBl_5typst7compile16convert_datetimeNtNtNtCseKXfNLkF2r6_6chrono6offset3utc3UtcEB4_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0, ptr noundef nonnull align 4 dereferenceable(12) %i.aa, i64 12, i1 false)
  br label %_RINvNtCs9fPPV5zPXBl_5typst7compile16convert_datetimeNtNtNtCseKXfNLkF2r6_6chrono6offset3utc3UtcEB4_.exit.thread

_RINvNtCs9fPPV5zPXBl_5typst7compile16convert_datetimeNtNtNtCseKXfNLkF2r6_6chrono6offset3utc3UtcEB4_.exit.thread: ; preds = %_RNvXsb_NtCseKXfNLkF2r6_6chrono8datetimeINtB5_8DateTimeNtNtNtB7_6offset3utc3UtcENtNtB7_6traits8Datelike3dayCs9fPPV5zPXBl_5typst.exit.i, %_RINvNtCs9fPPV5zPXBl_5typst7compile16convert_datetimeNtNtNtCseKXfNLkF2r6_6chrono6offset3utc3UtcEB4_.exit, %bb.j
  %.sroa.3.2 = phi i8 [ 0, %bb.j ], [ 2, %_RINvNtCs9fPPV5zPXBl_5typst7compile16convert_datetimeNtNtNtCseKXfNLkF2r6_6chrono6offset3utc3UtcEB4_.exit ], [ 2, %_RNvXsb_NtCseKXfNLkF2r6_6chrono8datetimeINtB5_8DateTimeNtNtNtB7_6offset3utc3UtcENtNtB7_6traits8Datelike3dayCs9fPPV5zPXBl_5typst.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  br label %_RINvNtCs9fPPV5zPXBl_5typst7compile16convert_datetimeNtNtNtCseKXfNLkF2r6_6chrono6offset5local5LocalEB4_.exit.thread

bb.k:                                             ; preds = %_RINvNtCs9fPPV5zPXBl_5typst7compile16convert_datetimeNtNtNtCseKXfNLkF2r6_6chrono6offset5local5LocalEB4_.exit.thread
  %i.dm = getelementptr i8, ptr %1, i64 80
  %.val = load ptr, ptr %i.dm, align 8, !nonnull !28, !noundef !28 ; 2 uses
  %i.dn = getelementptr i8, ptr %1, i64 88
  %.val15 = load i64, ptr %i.dn, align 8, !noundef !28 ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !35298)
  %i.do = mul nuw nsw i64 %.val15, 24             ; 2 uses
  %i.dp = icmp eq i64 %.val15, 0
  br i1 %i.dp, label %_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusiveINtNtBM_6option6OptionINtNtNtBM_3num7nonzero7NonZerojEEEENtNtBM_5clone5Clone5cloneCs9fPPV5zPXBl_5typst.exit, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i: ; preds = %bb.k
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #56, !noalias !35299
  %i.dq = call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %i.do, i64 noundef range(i64 1, 17) 8) #56, !noalias !35299 ; 4 uses
  %i.dr = icmp eq ptr %i.dq, null
  br i1 %i.dr, label %.noexc, label %.lr.ph.preheader.i.i

.noexc:                                           ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i
  call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.do) #61
  unreachable

.lr.ph.preheader.i.i:                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i
  %i.ds = getelementptr inbounds nuw [24 x i8], ptr %.val, i64 %.val15
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.l, %.lr.ph.preheader.i.i
  %.sroa.014.039.i.i = phi ptr [ %i.dw, %bb.l ], [ %.val, %.lr.ph.preheader.i.i ] ; 4 uses
  %.sroa.7.038.i.i = phi i64 [ %i.dv, %bb.l ], [ 0, %.lr.ph.preheader.i.i ] ; 2 uses
  %.sroa.10.037.i.i = phi i64 [ %i.du, %bb.l ], [ %.val15, %.lr.ph.preheader.i.i ]
  %i.dt = icmp eq ptr %.sroa.014.039.i.i, %i.ds
  br i1 %i.dt, label %_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusiveINtNtBM_6option6OptionINtNtNtBM_3num7nonzero7NonZerojEEEENtNtBM_5clone5Clone5cloneCs9fPPV5zPXBl_5typst.exit, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i
  %i.du = add nsw i64 %.sroa.10.037.i.i, -1       ; 2 uses
  %i.dv = add nuw nsw i64 %.sroa.7.038.i.i, 1
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.014.039.i.i, i64 24
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.014.039.i.i, i64 16
  %i.dy = load i8, ptr %i.dx, align 8, !range !53, !alias.scope !35300, !noalias !35301, !noundef !28
  %i.dz = getelementptr inbounds nuw [24 x i8], ptr %i.dq, i64 %.sroa.7.038.i.i ; 2 uses
  %i.ea = load <2 x i64>, ptr %.sroa.014.039.i.i, align 8, !alias.scope !35300, !noalias !35301
  store <2 x i64> %i.ea, ptr %i.dz, align 8, !noalias !35302
  %.sroa.528.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  store i8 %i.dy, ptr %.sroa.528.0..sroa_idx.i.i, align 8, !noalias !35302
  %i.eb = icmp eq i64 %i.du, 0
  br i1 %i.eb, label %_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusiveINtNtBM_6option6OptionINtNtNtBM_3num7nonzero7NonZerojEEEENtNtBM_5clone5Clone5cloneCs9fPPV5zPXBl_5typst.exit, label %.lr.ph.i.i

_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusiveINtNtBM_6option6OptionINtNtNtBM_3num7nonzero7NonZerojEEEENtNtBM_5clone5Clone5cloneCs9fPPV5zPXBl_5typst.exit: ; preds = %.lr.ph.i.i, %bb.l, %bb.k, %_RINvNtCs9fPPV5zPXBl_5typst7compile16convert_datetimeNtNtNtCseKXfNLkF2r6_6chrono6offset5local5LocalEB4_.exit.thread
  %.sroa.5.sroa.4.0 = phi i64 [ undef, %_RINvNtCs9fPPV5zPXBl_5typst7compile16convert_datetimeNtNtNtCseKXfNLkF2r6_6chrono6offset5local5LocalEB4_.exit.thread ], [ 0, %bb.k ], [ %.val15, %bb.l ], [ %.val15, %.lr.ph.i.i ]
  %.sroa.5.sroa.0.0 = phi ptr [ undef, %_RINvNtCs9fPPV5zPXBl_5typst7compile16convert_datetimeNtNtNtCseKXfNLkF2r6_6chrono6offset5local5LocalEB4_.exit.thread ], [ inttoptr (i64 8 to ptr), %bb.k ], [ %i.dq, %bb.l ], [ %i.dq, %.lr.ph.i.i ]
  %.sroa.0.0 = phi i64 [ -1, %_RINvNtCs9fPPV5zPXBl_5typst7compile16convert_datetimeNtNtNtCseKXfNLkF2r6_6chrono6offset5local5LocalEB4_.exit.thread ], [ 0, %bb.k ], [ %.val15, %bb.l ], [ %.val15, %.lr.ph.i.i ]
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 239
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.ed, ptr noundef nonnull align 1 dereferenceable(3) %i.ec, i64 3, i1 false)
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 242
  %i.ef = load i8, ptr %i.ee, align 2, !range !53, !noundef !28
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 237
  %i.eh = load i8, ptr %i.eg, align 1, !range !53, !noundef !28
  store i64 -1, ptr %0, align 8
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 -2, ptr %i.ei, align 8
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ej, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0, i64 12, i1 false)
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i8 %.sroa.3.1, ptr %.sroa.3.0..sroa_idx, align 4
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 85
  store i8 %.sroa.9.1, ptr %.sroa.9.0..sroa_idx, align 1
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 86
  store i8 %.sroa.10.1, ptr %.sroa.10.0..sroa_idx, align 2
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.0.0, ptr %i.ek, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.5.sroa.0.0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.5.sroa.4.0, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 91
  store i8 %i.ef, ptr %i.el, align 1
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i8 %i.eh, ptr %i.em, align 4
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RNvNtCs9fPPV5zPXBl_5typst7compile12compile_once(ptr noalias nofree noundef nonnull align 16 dereferenceable(592) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(248) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 9 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 7 uses
  %i.e = alloca [8 x i8], align 8                 ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [16 x i8], align 16               ; 4 uses
  %i.h = alloca [16 x i8], align 8                ; 7 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 7 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 12 uses
  %i.n = alloca [24 x i8], align 8                ; 9 uses
  %i.o = alloca [96 x i8], align 8                ; 15 uses
  %i.p = alloca [96 x i8], align 8                ; 7 uses
  %i.q = alloca [16 x i8], align 8                ; 14 uses
  %i.r = alloca [24 x i8], align 8                ; 11 uses
  %i.s = alloca [24 x i8], align 8                ; 14 uses
  %i.t = alloca [24 x i8], align 8                ; 7 uses
  %i.u = alloca [16 x i8], align 16               ; 4 uses
  %i.v = alloca [16 x i8], align 8                ; 7 uses
  %i.w = alloca [8 x i8], align 8                 ; 4 uses
  %i.x = alloca [24 x i8], align 8                ; 6 uses
  %i.y = alloca [24 x i8], align 8                ; 6 uses
  %i.z = alloca [96 x i8], align 8                ; 17 uses
  %i.aa = alloca [96 x i8], align 8               ; 7 uses
  %i.ab = alloca [16 x i8], align 8               ; 11 uses
  %i.ac = alloca [16 x i8], align 8               ; 17 uses
  %i.ad = alloca [16 x i8], align 16              ; 4 uses
  %i.ae = alloca [16 x i8], align 8               ; 7 uses
  %i.af = alloca [8 x i8], align 8                ; 4 uses
  %i.ag = alloca [24 x i8], align 8               ; 11 uses
  %i.ah = alloca [32 x i8], align 8               ; 6 uses
  %i.ai = alloca [24 x i8], align 8               ; 7 uses
  %i.aj = alloca [24 x i8], align 8               ; 11 uses
  %i.ak = alloca [32 x i8], align 8               ; 10 uses
  %i.al = alloca [8 x i8], align 8                ; 10 uses
  %i.am = alloca [24 x i8], align 8               ; 7 uses
  %i.an = alloca [112 x i8], align 8              ; 9 uses
  %i.ao = alloca [24 x i8], align 8               ; 7 uses
  %i.ap = alloca [24 x i8], align 8               ; 10 uses
  %i.aq = alloca [112 x i8], align 8              ; 13 uses
  %i.ar = alloca [8 x i8], align 8                ; 7 uses
  %i.as = alloca [48 x i8], align 8               ; 12 uses
  %i.at = alloca [24 x i8], align 8               ; 9 uses
  %i.au = alloca [96 x i8], align 8               ; 7 uses
  %i.av = alloca [24 x i8], align 8               ; 10 uses
  %i.aw = alloca [16 x i8], align 8               ; 4 uses
  %i.ax = alloca [16 x i8], align 8               ; 5 uses
  %i.ay = alloca [16 x i8], align 8               ; 7 uses
  %i.az = alloca [16 x i8], align 8               ; 4 uses
  %i.ba = alloca [16 x i8], align 8               ; 5 uses
  %i.bb = alloca [16 x i8], align 8               ; 8 uses
  %i.bc = alloca [8 x i8], align 8                ; 6 uses
  %i.bd = alloca [24 x i8], align 8               ; 7 uses
  %i.be = alloca [16 x i8], align 8               ; 5 uses
  %i.bf = alloca [32 x i8], align 4               ; 4 uses
  %i.bg = alloca [24 x i8], align 8               ; 6 uses
  %i.bh = alloca [16 x i8], align 8               ; 4 uses
  %i.bi = alloca [16 x i8], align 8               ; 5 uses
  %i.bj = alloca [16 x i8], align 8               ; 7 uses
  %i.bk = alloca [72 x i8], align 8               ; 11 uses
  %i.bl = alloca [40 x i8], align 8               ; 8 uses
  %i.bm = alloca [16 x i8], align 8               ; 5 uses
  %i.bn = alloca [32 x i8], align 8               ; 6 uses
  %i.bo = alloca [40 x i8], align 8               ; 7 uses
  %i.bp = alloca [1 x i8], align 1                ; 4 uses
  %i.bq = alloca [24 x i8], align 8               ; 6 uses
  %.sroa.7.i.i.i.i.i.i.i.i = alloca [16 x i8], align 8 ; 7 uses
  %i.br = alloca [24 x i8], align 8               ; 8 uses
  %.sroa.0.i.i.i.i.i.i.i.i = alloca i64, align 8  ; 5 uses
  %i.bs = alloca [24 x i8], align 8               ; 7 uses
  %i.bt = alloca [24 x i8], align 8               ; 10 uses
  %i.bu = alloca [24 x i8], align 8               ; 5 uses
  %i.bv = alloca [24 x i8], align 8               ; 9 uses
  %i.bw = alloca [32 x i8], align 8               ; 9 uses
  %i.bx = alloca [16 x i8], align 8               ; 4 uses
  %i.by = alloca [16 x i8], align 8               ; 5 uses
  %i.bz = alloca [16 x i8], align 8               ; 7 uses
  %i.ca = alloca [8 x i8], align 8                ; 6 uses
  %i.cb = alloca [8 x i8], align 4                ; 5 uses
  %i.cc = alloca [16 x i8], align 8               ; 4 uses
  %i.cd = alloca [56 x i8], align 8               ; 10 uses
  %i.ce = alloca [24 x i8], align 8               ; 12 uses
  %i.cf = alloca [24 x i8], align 8               ; 8 uses
  %i.cg = alloca [16 x i8], align 8               ; 7 uses
  %i.ch = alloca [16 x i8], align 8               ; 5 uses
  %i.ci = alloca [72 x i8], align 8               ; 11 uses
  %i.cj = alloca [56 x i8], align 8               ; 8 uses
  %i.ck = alloca [96 x i8], align 8               ; 4 uses
  %i.cl = alloca [120 x i8], align 8              ; 24 uses
  %i.cm = alloca [16 x i8], align 8               ; 11 uses
  %i.cn = alloca [72 x i8], align 8               ; 11 uses
  %i.co = alloca [16 x i8], align 8               ; 4 uses
  %i.cp = alloca [16 x i8], align 8               ; 5 uses
  %i.cq = alloca [16 x i8], align 8               ; 7 uses
  %i.cr = alloca [8 x i8], align 8                ; 6 uses
  %i.cs = alloca [8 x i8], align 8                ; 4 uses
  %i.ct = alloca [16 x i8], align 8               ; 4 uses
  %i.cu = alloca [24 x i8], align 8               ; 4 uses
  %i.cv = alloca [24 x i8], align 8               ; 6 uses
  %i.cw = alloca [24 x i8], align 8               ; 6 uses
  %i.cx = alloca [1 x i8], align 1                ; 4 uses
  %i.cy = alloca [72 x i8], align 8               ; 11 uses
  %i.cz = alloca [72 x i8], align 8               ; 11 uses
  %i.da = alloca [72 x i8], align 8               ; 11 uses
  %i.db = alloca [16 x i8], align 8               ; 4 uses
  %i.dc = alloca [16 x i8], align 8               ; 5 uses
  %i.dd = alloca [16 x i8], align 8               ; 7 uses
  %i.de = alloca [8 x i8], align 8                ; 6 uses
  %i.df = alloca [8 x i8], align 8                ; 4 uses
  %i.dg = alloca [16 x i8], align 8               ; 4 uses
  %i.dh = alloca [24 x i8], align 8               ; 5 uses
  %i.di = alloca [24 x i8], align 8               ; 6 uses
  %i.dj = alloca [96 x i8], align 8               ; 17 uses
  %i.dk = alloca [24 x i8], align 8               ; 6 uses
  %i.dl = alloca [24 x i8], align 8               ; 6 uses
  %i.dm = alloca [152 x i8], align 8              ; 13 uses
  %i.dn = alloca [144 x i8], align 8              ; 11 uses
  %i.do = alloca [40 x i8], align 8               ; 8 uses
  %i.dp = alloca [168 x i8], align 8              ; 9 uses
  %.sroa.715.i = alloca [128 x i8], align 8       ; 4 uses
  %i.dq = alloca [160 x i8], align 8              ; 9 uses
  %.sroa.7.i = alloca [120 x i8], align 8         ; 4 uses
  %i.dr = alloca [8 x i8], align 8                ; 4 uses
  %i.ds = alloca [8 x i8], align 8                ; 4 uses
  %i.dt = alloca [8 x i8], align 8                ; 4 uses
  %i.du = alloca [8 x i8], align 8                ; 4 uses
  %i.dv = alloca [16 x i8], align 8               ; 4 uses
  %i.dw = alloca [16 x i8], align 8               ; 4 uses
  %i.dx = alloca [16 x i8], align 8               ; 4 uses
  %i.dy = alloca [24 x i8], align 8               ; 8 uses
  %i.dz = alloca [16 x i8], align 8               ; 4 uses
  %i.ea = alloca [16 x i8], align 8               ; 4 uses
  %i.eb = alloca [16 x i8], align 8               ; 4 uses
  %i.ec = alloca [24 x i8], align 8               ; 8 uses
  %i.ed = alloca [16 x i8], align 8               ; 4 uses
  %i.ee = alloca [24 x i8], align 8               ; 6 uses
  %i.ef = alloca [24 x i8], align 8               ; 12 uses
  %i.eg = alloca [24 x i8], align 8               ; 6 uses
  %i.eh = alloca [24 x i8], align 8               ; 6 uses
  %i.ei = alloca [24 x i8], align 8               ; 6 uses
  %i.ej = alloca [72 x i8], align 8               ; 13 uses
  %i.ek = alloca [72 x i8], align 8               ; 5 uses
  %i.el = alloca [16 x i8], align 8               ; 10 uses
  %i.em = alloca [24 x i8], align 8               ; 7 uses
  %i.en = alloca [16 x i8], align 8               ; 6 uses
  %i.eo = alloca [32 x i8], align 8               ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eo)
  %i.ep = load atomic i8, ptr @_RNvCsiNFdexS2GJ6_12typst_timing7ENABLED monotonic, align 1
  %.not = icmp eq i8 %i.ep, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %i.eo, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @_RNvMCsiNFdexS2GJ6_12typst_timingNtB2_11TimingScope8new_impl(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.eo, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @734, i64 noundef 12, i64 noundef 0)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.en)
  %i.eq = invoke { i64, i32 } @_RNvMNtCsaL1QbXo9JQH_3std4timeNtB2_7Instant3now()
          to label %bb.g unwind label %bb.f       ; 2 uses

.body46:                                          ; preds = %bb.gh, %.body.i, %.body64.i, %.body101.i, %bb.f, %bb.rk
  %.pn35 = phi { ptr, i32 } [ %.pn33, %bb.rk ], [ %eh.lpad-body102.i, %.body101.i ], [ %i.et, %bb.f ], [ %eh.lpad-body.i, %.body.i ], [ %eh.lpad-body65.i, %.body64.i ], [ %i.tp, %bb.gh ]
  %i.er = load ptr, ptr %i.eo, align 8, !alias.scope !36005, !noundef !28
  %i.es = icmp eq ptr %i.er, null
  br i1 %i.es, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs9fPPV5zPXBl_5typst.exit, label %bb.e

bb.e:                                             ; preds = %.body46
  invoke void @_RNvXs_CsiNFdexS2GJ6_12typst_timingNtB4_11TimingScopeNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.eo)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs9fPPV5zPXBl_5typst.exit unwind label %bb.rx

bb.f:                                             ; preds = %bb.rw, %bb.rq, %bb.j, %bb.i, %bb.h, %bb.ge, %bb.d
  %i.et = landingpad { ptr, i32 }
          cleanup
  br label %.body46

bb.g:                                             ; preds = %bb.d
  %i.eu = extractvalue { i64, i32 } %i.eq, 0
  %i.ev = extractvalue { i64, i32 } %i.eq, 1
  store i64 %i.eu, ptr %i.en, align 8
  %i.ew = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  store i32 %i.ev, ptr %i.ew, align 8
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 236 ; 3 uses
  %i.ey = load i8, ptr %i.ex, align 4, !range !53, !noundef !28
  %i.ez = trunc nuw i8 %i.ey to i1
  br i1 %i.ez, label %bb.ge, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtNtB4_2io5error5ErrorE6unwrapCs9fPPV5zPXBl_5typst.exit48

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtNtB4_2io5error5ErrorE6unwrapCs9fPPV5zPXBl_5typst.exit48: ; preds = %bb.gf, %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36006)
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 244 ; 2 uses
  %i.fb = load i8, ptr %i.fa, align 4, !range !120, !alias.scope !36006, !noalias !36007, !noundef !28
  switch i8 %i.fb, label %default.unreachable [
    i8 0, label %bb.h
    i8 1, label %bb.h
    i8 2, label %bb.h
    i8 3, label %bb.i
    i8 4, label %bb.j
  ]

default.unreachable:                              ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs9fPPV5zPXBl_5typst.exit.i148, %bb.ke, %bb.jy, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs9fPPV5zPXBl_5typst.exit.i.i, %bb.hy, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs9fPPV5zPXBl_5typst.exit.i.i.i.i77.i, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs9fPPV5zPXBl_5typst.exit.i.i.i.i, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs9fPPV5zPXBl_5typst.exit.i.i.i.i.i, %bb.l, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtNtB4_2io5error5ErrorE6unwrapCs9fPPV5zPXBl_5typst.exit48
  unreachable

bb.h:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtNtB4_2io5error5ErrorE6unwrapCs9fPPV5zPXBl_5typst.exit48, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtNtB4_2io5error5ErrorE6unwrapCs9fPPV5zPXBl_5typst.exit48, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtNtB4_2io5error5ErrorE6unwrapCs9fPPV5zPXBl_5typst.exit48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dq), !noalias !36008
  invoke fastcc void @_RINvCs2AodJlUx5rK_5typst7compileNtNtCs7tN9tvpkfrg_12typst_layout8document13PagedDocumentECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef align 8 captures(none) dereferenceable(160) %i.dq, ptr noundef nonnull align 16 dereferenceable(592) %0)
          to label %.noexc55 unwind label %bb.f

.noexc55:                                         ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i)
  %.sroa.0.0.copyload.i = load i64, ptr %i.dq, align 8, !noalias !36008 ; 2 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !36008 ; 3 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !36008 ; 2 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dq, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.7.0..sroa_idx.i, i64 120, i1 false), !noalias !36008
  %i.fc = getelementptr inbounds nuw i8, ptr %i.dq, i64 144
  %i.fd = load ptr, ptr %i.fc, align 8, !noalias !36008, !nonnull !28, !noundef !28 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.dq, i64 152
  %i.ff = load i64, ptr %i.fe, align 8, !noalias !36008, !noundef !28 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dq), !noalias !36008
  %i.fg = icmp eq i64 %.sroa.0.0.copyload.i, 2
  br i1 %i.fg, label %bb.k, label %bb.l

bb.i:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtNtB4_2io5error5ErrorE6unwrapCs9fPPV5zPXBl_5typst.exit48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dp), !noalias !36008
  invoke fastcc void @_RINvCs2AodJlUx5rK_5typst7compileNtNtCs9gmjTwvRRSu_10typst_html3dom12HtmlDocumentECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef align 8 captures(none) dereferenceable(168) %i.dp, ptr noundef nonnull align 16 dereferenceable(592) %0)
          to label %.noexc56 unwind label %bb.f

.noexc56:                                         ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.715.i)
  %.sroa.07.0.copyload.i = load i64, ptr %i.dp, align 8, !noalias !36008 ; 2 uses
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %.sroa.59.0.copyload.i = load ptr, ptr %.sroa.59.0..sroa_idx.i, align 8, !noalias !36008 ; 3 uses
  %.sroa.612.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %.sroa.612.0.copyload.i = load i64, ptr %.sroa.612.0..sroa_idx.i, align 8, !noalias !36008 ; 2 uses
  %.sroa.715.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dp, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %.sroa.715.i, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.715.0..sroa_idx.i, i64 128, i1 false), !noalias !36008
  %i.fh = getelementptr inbounds nuw i8, ptr %i.dp, i64 152
  %i.fi = load ptr, ptr %i.fh, align 8, !noalias !36008, !nonnull !28, !noundef !28 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.dp, i64 160
  %i.fk = load i64, ptr %i.fj, align 8, !noalias !36008, !noundef !28 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dp), !noalias !36008
  %i.fl = icmp eq i64 %.sroa.07.0.copyload.i, 2
  br i1 %i.fl, label %bb.bk, label %bb.bl

bb.j:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtNtB4_2io5error5ErrorE6unwrapCs9fPPV5zPXBl_5typst.exit48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.do), !noalias !36008
  invoke fastcc void @_RINvCs2AodJlUx5rK_5typst7compileNtCsgpMJJHpo27b_12typst_bundle6BundleECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.do, ptr noundef nonnull align 16 dereferenceable(592) %0)
          to label %.noexc57 unwind label %bb.f

.noexc57:                                         ; preds = %bb.j
  %.sroa.028.0.copyload.i = load i64, ptr %i.do, align 8, !noalias !36008
  %.sroa.429.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %.sroa.429.0.copyload.i = load ptr, ptr %.sroa.429.0..sroa_idx.i, align 8, !noalias !36008, !nonnull !28, !noundef !28 ; 2 uses
  %.sroa.631.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %.sroa.631.0.copyload.i = load i64, ptr %.sroa.631.0..sroa_idx.i, align 8, !noalias !36008 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.do, i64 24
  %i.fn = load ptr, ptr %i.fm, align 8, !noalias !36008, !nonnull !28, !noundef !28 ; 3 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.do, i64 32
  %i.fp = load i64, ptr %i.fo, align 8, !noalias !36008, !noundef !28 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.do), !noalias !36008
  %i.fq = trunc nuw i64 %.sroa.028.0.copyload.i to i1
  br i1 %i.fq, label %_RNvNtCs9fPPV5zPXBl_5typst7compile18compile_and_export.exit, label %bb.dd

bb.k:                                             ; preds = %.noexc55
end_hunk_2
begin_hunk_3_@_RNvNtCs9fPPV5zPXBl_5typst7compile12compile_once:bb.a
  %i.mj = load ptr, ptr %i.mi, align 8, !noalias !36091 ; 7 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.ml = load i64, ptr %i.mk, align 8, !noalias !36091 ; 9 uses
  br i1 %i.mh, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %bb.dh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cj), !noalias !36091
  br label %bb.ft

bb.dj:                                            ; preds = %bb.dh
  %.sroa.630.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %.sroa.68.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.68.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.630.0..sroa_idx.i.i.i, i64 32, i1 false), !noalias !36091
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cj), !noalias !36091
  store i64 %i.mg, ptr %i.cd, align 8, !noalias !36091
  %.sroa.4.0..sroa_idx.i.i71.i = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store ptr %i.mj, ptr %.sroa.4.0..sroa_idx.i.i71.i, align 8, !noalias !36091
  %.sroa.5.0..sroa_idx.i.i72.i = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  store i64 %i.ml, ptr %.sroa.5.0..sroa_idx.i.i72.i, align 8, !noalias !36091
  %i.mm = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.mn = load i64, ptr %i.mm, align 8, !range !55, !alias.scope !36006, !noalias !36092, !noundef !28
  %.not.i.i73.i = icmp eq i64 %i.mn, -1
  br i1 %.not.i.i73.i, label %bb.es, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cf), !noalias !36091
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ce), !noalias !36091
  %i.mo = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.mp = load ptr, ptr %i.mo, align 8, !alias.scope !36006, !noalias !36092, !nonnull !28, !noundef !28 ; 3 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.mr = load i64, ptr %i.mq, align 8, !alias.scope !36006, !noalias !36092, !noundef !28 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !36094)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cb), !noalias !36095
  store i32 511, ptr %i.cb, align 4, !noalias !36095
  %i.ms = getelementptr inbounds nuw i8, ptr %i.cb, i64 4
  store i8 1, ptr %i.ms, align 4, !noalias !36095
  %i.mt = invoke noundef ptr @_RNvMsD_NtCsaL1QbXo9JQH_3std2fsNtB5_10DirBuilder7__create(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.cb, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.mp, i64 noundef %i.mr)
          to label %.noexc.i.i.i unwind label %bb.ex, !noalias !36093 ; 2 uses

.noexc.i.i.i:                                     ; preds = %bb.dk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb), !noalias !36095
  %.not.i.i.i74.i = icmp eq ptr %i.mt, null
  br i1 %.not.i.i.i74.i, label %bb.dt, label %bb.dl

bb.dl:                                            ; preds = %.noexc.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cc)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ca), !noalias !36096
  store ptr %i.mt, ptr %i.ca, align 8, !noalias !36097
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bz), !noalias !36097
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.bz, i8 0, i64 15, i1 false), !noalias !36097
  %.sroa.45.0..sroa_idx.i.i.i.i75.i = getelementptr inbounds nuw i8, ptr %i.bz, i64 15
  store i8 -128, ptr %.sroa.45.0..sroa_idx.i.i.i.i75.i, align 1, !noalias !36097
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by), !noalias !36097
  store ptr %i.ca, ptr %i.by, align 8, !noalias !36097
  %.sroa.49.0..sroa_idx.i.i.i.i76.i = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store ptr @_RNvXs3_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt, ptr %.sroa.49.0..sroa_idx.i.i.i.i76.i, align 8, !noalias !36097
  %i.mu = invoke noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.bz, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @30, ptr noundef nonnull @458, ptr noundef nonnull %i.by)
          to label %bb.dn unwind label %bb.dm, !noalias !36098

bb.dm:                                            ; preds = %bb.do, %bb.dl
  %i.mv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bz) #62
          to label %bb.ds unwind label %bb.dr, !noalias !36098

bb.dn:                                            ; preds = %bb.dl
  br i1 %i.mu, label %bb.do, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs9fPPV5zPXBl_5typst.exit.i.i.i.i77.i, !prof !38

bb.do:                                            ; preds = %bb.dn
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @502, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @515, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @459) #65
          to label %.noexc.i.i.i.i85.i unwind label %bb.dm, !noalias !36098

.noexc.i.i.i.i85.i:                               ; preds = %bb.do
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs9fPPV5zPXBl_5typst.exit.i.i.i.i77.i: ; preds = %bb.dn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by), !noalias !36097
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cc, ptr noundef nonnull align 8 dereferenceable(16) %i.bz, i64 16, i1 false), !noalias !36096
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz), !noalias !36097
  call void @llvm.experimental.noalias.scope.decl(metadata !36099)
  %.val.i.i.i.i.i78.i = load ptr, ptr %i.ca, align 8, !alias.scope !36099, !noalias !36097, !nonnull !28, !noundef !28 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bx), !noalias !36100
  %i.mw = ptrtoint ptr %.val.i.i.i.i.i78.i to i64 ; 2 uses
  %i.mx = and i64 %i.mw, 3
  switch i64 %i.mx, label %default.unreachable [
    i64 2, label %_RNvNtCs9fPPV5zPXBl_5typst7compile16write_virtual_fs.exit.thread.i.i.i
    i64 3, label %bb.dp
    i64 0, label %_RNvNtCs9fPPV5zPXBl_5typst7compile16write_virtual_fs.exit.thread.i.i.i
    i64 1, label %bb.dq
  ], !prof !66

bb.dp:                                            ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs9fPPV5zPXBl_5typst.exit.i.i.i.i77.i
  %i.my = icmp ult ptr %.val.i.i.i.i.i78.i, inttoptr (i64 188978561024 to ptr)
  %i.mz = and i64 %i.mw, 1095216660480
  %i.na = icmp ne i64 %i.mz, 1095216660480
  call void @llvm.assume(i1 %i.my)
  call void @llvm.assume(i1 %i.na)
  br label %_RNvNtCs9fPPV5zPXBl_5typst7compile16write_virtual_fs.exit.thread.i.i.i

bb.dq:                                            ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs9fPPV5zPXBl_5typst.exit.i.i.i.i77.i
  %i.nb = getelementptr i8, ptr %.val.i.i.i.i.i78.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.nb) ]
  %i.nc = getelementptr inbounds nuw i8, ptr %i.bx, i64 8 ; 2 uses
  store ptr %i.nb, ptr %i.nc, align 8, !alias.scope !36101, !noalias !36100
  store i8 3, ptr %i.bx, align 8, !alias.scope !36101, !noalias !36100
  invoke void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.nc)
          to label %_RNvNtCs9fPPV5zPXBl_5typst7compile16write_virtual_fs.exit.thread.i.i.i unwind label %bb.ex, !noalias !36093

bb.dr:                                            ; preds = %bb.ds, %bb.dm
  %i.nd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #64, !noalias !36098
  unreachable

bb.ds:                                            ; preds = %bb.dm
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ca) #62
          to label %bb.fx unwind label %bb.dr, !noalias !36098

_RNvNtCs9fPPV5zPXBl_5typst7compile16write_virtual_fs.exit.thread.i.i.i: ; preds = %bb.dq, %bb.dp, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs9fPPV5zPXBl_5typst.exit.i.i.i.i77.i, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs9fPPV5zPXBl_5typst.exit.i.i.i.i77.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx), !noalias !36100
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca), !noalias !36096
  %i.ne = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ne, ptr noundef nonnull align 8 dereferenceable(16) %i.cc, i64 16, i1 false), !noalias !36102
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc)
  store i64 -1, ptr %i.ce, align 8, !alias.scope !36094, !noalias !36102
  br label %bb.fc

bb.dt:                                            ; preds = %.noexc.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.mj) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !36103)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw), !noalias !36104
  store i32 0, ptr %i.bw, align 8, !noalias !36104
  %i.nf = getelementptr inbounds nuw i8, ptr %i.bw, i64 4 ; 2 uses
  store i8 0, ptr %i.nf, align 4, !noalias !36104
  %i.ng = getelementptr inbounds nuw i8, ptr %i.bw, i64 8 ; 2 uses
  store i64 0, ptr %i.ng, align 8, !noalias !36104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv), !noalias !36104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt), !noalias !36105
  store i64 0, ptr %i.bt, align 8, !alias.scope !36106, !noalias !36105
  %i.nh = getelementptr inbounds nuw i8, ptr %i.bt, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.nh, align 8, !alias.scope !36106, !noalias !36105
  %i.ni = getelementptr inbounds nuw i8, ptr %i.bt, i64 16 ; 4 uses
  store i64 0, ptr %i.ni, align 8, !alias.scope !36106, !noalias !36105
  call void @llvm.experimental.noalias.scope.decl(metadata !36107)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs), !noalias !36108
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp), !noalias !36109
  store i8 0, ptr %i.bp, align 1, !noalias !36109
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo), !noalias !36109
  store ptr %i.mj, ptr %i.bo, align 8, !noalias !36110
  %.sroa.5.0..sroa_idx.i.i.i86.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store i64 %i.ml, ptr %.sroa.5.0..sroa_idx.i.i.i86.i, align 8, !noalias !36110
  %.sroa.6.0..sroa_idx.i.i.i87.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  store ptr %i.mp, ptr %.sroa.6.0..sroa_idx.i.i.i87.i, align 8, !noalias !36110
  %.sroa.7.0..sroa_idx.i.i.i88.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  store i64 %i.mr, ptr %.sroa.7.0..sroa_idx.i.i.i88.i, align 8, !noalias !36110
  %.sroa.5.0..sroa_idx.i.i.i.i89.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 32 ; 2 uses
  store ptr %i.bw, ptr %.sroa.5.0..sroa_idx.i.i.i.i89.i, align 8, !noalias !36111
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn), !noalias !36112
  store ptr %i.mj, ptr %i.bn, align 8, !noalias !36110
  %.sroa.5.0..sroa_idx2.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store i64 %i.ml, ptr %.sroa.5.0..sroa_idx2.i.i.i.i, align 8, !noalias !36110
  %.sroa.6.0..sroa_idx4.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 16 ; 2 uses
  store ptr %i.mp, ptr %.sroa.6.0..sroa_idx4.i.i.i.i, align 8, !noalias !36110
  %.sroa.7.0..sroa_idx6.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  store i64 %i.mr, ptr %.sroa.7.0..sroa_idx6.i.i.i.i, align 8, !noalias !36110
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm), !noalias !36113
  store ptr %i.mj, ptr %i.bm, align 8, !noalias !36114
  %i.nj = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store i64 %i.ml, ptr %i.nj, align 8, !noalias !36114
  %i.nk = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl), !noalias !36115
  %i.nl = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  store i64 %i.ml, ptr %i.nl, align 8, !noalias !36115
  store ptr %i.bp, ptr %i.bl, align 8, !noalias !36116
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store ptr %.sroa.5.0..sroa_idx.i.i.i.i89.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !36116
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  store ptr %.sroa.6.0..sroa_idx4.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !36116
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  store ptr %i.nk, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !36117
  %i.nm = invoke noundef i64 @_RNvCsf1gSX8u3EQ2_10rayon_core19current_num_threads()
          to label %.noexc.i.i.i.i.i.i.i unwind label %bb.ei, !noalias !36118

.noexc.i.i.i.i.i.i.i:                             ; preds = %bb.dt
  %.cmp.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ml, -1
  %i.nn = zext i1 %.cmp.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %spec.store.select.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.nn, i64 %i.nm)
  invoke fastcc void @_RINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB8_5slice12IterProducerINtCsjFU9swAW47b_8indexmap6BucketNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEINtNtB6_3map11MapConsumerIB41_IB41_INtNtB6_10while_some17WhileSomeConsumerNtNtB6_6extend15ListVecConsumerENCINvNvXs2_NtB8_6resultINtNtCs3oUPovFnLWP_4core6result6ResultppEINtB6_20FromParallelIteratorIB66_ppEE13from_par_iter2okNtNtCs9fPPV5zPXBl_5typst4args6OutputNtNtCsakL8LGkl72C_4ecow6string9EcoStringE0ENCNvNtB7H_7compile16write_virtual_fss_0ENvMs0_B1I_B1F_4refsEEB7H_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.bs, i64 noundef %i.ml, i1 noundef zeroext false, i64 noundef %spec.store.select.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.mj, i64 noundef %i.ml, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.bl)
          to label %.noexc2.i.i.i.i.i.i.i unwind label %bb.ei, !noalias !36118

.noexc2.i.i.i.i.i.i.i:                            ; preds = %.noexc.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !noalias !36115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !36113
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !36112
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo), !noalias !36109
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !noalias !36109
  %i.no = load ptr, ptr %i.bs, align 8, !noalias !36108, !noundef !28
  %i.np = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.nq = load i64, ptr %i.np, align 8, !noalias !36108, !noundef !28 ; 4 uses
  %2 = ptrtoint ptr %i.no to i64
  store i64 %2, ptr %.sroa.0.i.i.i.i.i.i.i.i, align 8, !noalias !36108
  %i.nr = icmp eq i64 %i.nq, 0
  br i1 %i.nr, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputE7reserveBI_.exit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %.noexc2.i.i.i.i.i.i.i
  %xtraiter = and i64 %i.nq, 3                    ; 3 uses
  %i.ns = icmp ult i64 %i.nq, 4
  br i1 %i.ns, label %.lr.ph.i.i.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.i.i.i.i.preheader.new:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader
  %unroll_iter = and i64 %i.nq, -4
  br label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader.new
  %.sroa.0.08.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader.new ], [ %i.om, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  %.in.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader.new ], [ %i.oj, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader.new ], [ %niter.next.3, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  %i.nt = load ptr, ptr %.in.i.i.i.i.i.i.i.i.i, align 1, !noalias !36119 ; 2 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 24
  %i.nv = getelementptr i8, ptr %i.nt, i64 16
  %.val.i.i.i.i.i.i.i.i.i = load i64, ptr %i.nv, align 8, !noalias !36120, !noundef !28 ; 2 uses
  %i.nw = icmp ult i64 %.val.i.i.i.i.i.i.i.i.i, 384307168202282326
  call void @llvm.assume(i1 %i.nw)
  %i.nx = add i64 %.val.i.i.i.i.i.i.i.i.i, %.sroa.0.08.i.i.i.i.i.i.i.i.i
  %i.ny = load ptr, ptr %i.nu, align 8, !noalias !36119 ; 2 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 24
  %i.oa = getelementptr i8, ptr %i.ny, i64 16
  %.val.i.i.i.i.i.i.i.i.i.1 = load i64, ptr %i.oa, align 8, !noalias !36120, !noundef !28 ; 2 uses
  %i.ob = icmp ult i64 %.val.i.i.i.i.i.i.i.i.i.1, 384307168202282326
  call void @llvm.assume(i1 %i.ob)
  %i.oc = add i64 %.val.i.i.i.i.i.i.i.i.i.1, %i.nx
  %i.od = load ptr, ptr %i.nz, align 8, !noalias !36119 ; 2 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %i.od, i64 24
  %i.of = getelementptr i8, ptr %i.od, i64 16
  %.val.i.i.i.i.i.i.i.i.i.2 = load i64, ptr %i.of, align 8, !noalias !36120, !noundef !28 ; 2 uses
  %i.og = icmp ult i64 %.val.i.i.i.i.i.i.i.i.i.2, 384307168202282326
  call void @llvm.assume(i1 %i.og)
  %i.oh = add i64 %.val.i.i.i.i.i.i.i.i.i.2, %i.oc
  %i.oi = load ptr, ptr %i.oe, align 8, !noalias !36119 ; 2 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 24 ; 2 uses
  %i.ok = getelementptr i8, ptr %i.oi, i64 16
  %.val.i.i.i.i.i.i.i.i.i.3 = load i64, ptr %i.ok, align 8, !noalias !36120, !noundef !28 ; 2 uses
  %i.ol = icmp ult i64 %.val.i.i.i.i.i.i.i.i.i.3, 384307168202282326
  call void @llvm.assume(i1 %i.ol)
  %i.om = add i64 %.val.i.i.i.i.i.i.i.i.i.3, %i.oh ; 3 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RINvYINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list4IterINtNtBa_3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1X_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1V_5accumjNtB3W_3Sum3sumINtB2X_3MapB3_B3x_EE0E0EB1j_.exit.i.i.i.i.i.i.i.i.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.i.i.i

_RINvYINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list4IterINtNtBa_3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1X_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1V_5accumjNtB3W_3Sum3sumINtB2X_3MapB3_B3x_EE0E0EB1j_.exit.i.i.i.i.i.i.i.i.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvYINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list4IterINtNtBa_3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1X_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1V_5accumjNtB3W_3Sum3sumINtB2X_3MapB3_B3x_EE0E0EB1j_.exit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.epil.preheader:          ; preds = %_RINvYINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list4IterINtNtBa_3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1X_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1V_5accumjNtB3W_3Sum3sumINtB2X_3MapB3_B3x_EE0E0EB1j_.exit.i.i.i.i.i.i.i.i.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader
  %.sroa.0.08.i.i.i.i.i.i.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ], [ %i.om, %_RINvYINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list4IterINtNtBa_3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1X_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1V_5accumjNtB3W_3Sum3sumINtB2X_3MapB3_B3x_EE0E0EB1j_.exit.i.i.i.i.i.i.i.i.unr-lcssa ]
  %.in.i.i.i.i.i.i.i.i.i.epil.init = phi ptr [ %.sroa.0.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ], [ %i.oj, %_RINvYINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list4IterINtNtBa_3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1X_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1V_5accumjNtB3W_3Sum3sumINtB2X_3MapB3_B3x_EE0E0EB1j_.exit.i.i.i.i.i.i.i.i.unr-lcssa ]
  %lcmp.mod709 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod709)
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.i.i.i.i.epil:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.i.i.i.i.epil.preheader
  %.sroa.0.08.i.i.i.i.i.i.i.i.i.epil = phi i64 [ %i.or, %.lr.ph.i.i.i.i.i.i.i.i.i.epil ], [ %.sroa.0.08.i.i.i.i.i.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.i.i.i.i.i.epil.preheader ]
  %.in.i.i.i.i.i.i.i.i.i.epil = phi ptr [ %i.oo, %.lr.ph.i.i.i.i.i.i.i.i.i.epil ], [ %.in.i.i.i.i.i.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.i.i.i.i.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.epil.preheader ]
  %i.on = load ptr, ptr %.in.i.i.i.i.i.i.i.i.i.epil, align 1, !noalias !36119 ; 2 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 24
  %i.op = getelementptr i8, ptr %i.on, i64 16
  %.val.i.i.i.i.i.i.i.i.i.epil = load i64, ptr %i.op, align 8, !noalias !36120, !noundef !28 ; 2 uses
  %i.oq = icmp ult i64 %.val.i.i.i.i.i.i.i.i.i.epil, 384307168202282326
  call void @llvm.assume(i1 %i.oq)
  %i.or = add i64 %.val.i.i.i.i.i.i.i.i.i.epil, %.sroa.0.08.i.i.i.i.i.i.i.i.i.epil ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvYINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list4IterINtNtBa_3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1X_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1V_5accumjNtB3W_3Sum3sumINtB2X_3MapB3_B3x_EE0E0EB1j_.exit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.epil, !llvm.loop !35487

_RINvYINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list4IterINtNtBa_3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1X_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1V_5accumjNtB3W_3Sum3sumINtB2X_3MapB3_B3x_EE0E0EB1j_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.epil, %_RINvYINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list4IterINtNtBa_3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1X_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1V_5accumjNtB3W_3Sum3sumINtB2X_3MapB3_B3x_EE0E0EB1j_.exit.i.i.i.i.i.i.i.i.unr-lcssa
  %.lcssa707 = phi i64 [ %i.om, %_RINvYINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list4IterINtNtBa_3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1X_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1V_5accumjNtB3W_3Sum3sumINtB2X_3MapB3_B3x_EE0E0EB1j_.exit.i.i.i.i.i.i.i.i.unr-lcssa ], [ %i.or, %.lr.ph.i.i.i.i.i.i.i.i.i.epil ] ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %.lcssa707, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputE7reserveBI_.exit.i.i.i.i.i.i.i.i, label %bb.du, !prof !127

bb.du:                                            ; preds = %_RINvYINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list4IterINtNtBa_3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1X_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1V_5accumjNtB3W_3Sum3sumINtB2X_3MapB3_B3x_EE0E0EB1j_.exit.i.i.i.i.i.i.i.i
  invoke fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bt, i64 noundef 0, i64 noundef %.lcssa707, i64 noundef 8, i64 noundef 24)
          to label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputE7reserveBI_.exit.i.i.i.i.i.i.i.i unwind label %bb.eh, !noalias !36121

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputE7reserveBI_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.du, %_RINvYINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list4IterINtNtBa_3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1X_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1V_5accumjNtB3W_3Sum3sumINtB2X_3MapB3_B3x_EE0E0EB1j_.exit.i.i.i.i.i.i.i.i, %.noexc2.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br), !noalias !36108
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.br, ptr noundef nonnull align 8 dereferenceable(24) %i.bs, i64 24, i1 false), !noalias !36108
  %i.os = getelementptr inbounds nuw i8, ptr %i.br, i64 8 ; 2 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %i.br, i64 16 ; 2 uses
  %.promoted.i.i.i.i.i.i.i.i = load ptr, ptr %i.br, align 8, !noalias !36108 ; 2 uses
  %.promoted32.i.i.i.i.i.i.i.i = load ptr, ptr %i.os, align 8, !noalias !36108
  %.promoted36.i.i.i.i.i.i.i.i = load i64, ptr %i.ot, align 8, !noalias !36108
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i.i.i.i.i.i)
  %.not.i40.i.i.i.i.i.i.i.i = icmp eq ptr %.promoted.i.i.i.i.i.i.i.i, null
  br i1 %.not.i40.i.i.i.i.i.i.i.i, label %.thread21.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputE7reserveBI_.exit.i.i.i.i.i.i.i.i
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 2 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  br label %bb.dv

.thread21.i.i.i.i.i.i.i.i:                        ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEEB1c_.exit.i.i.i.i.i.i.i.i, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputE7reserveBI_.exit.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i.i.i.i.i.i)
  br label %.loopexit.i.i.i.i.i

bb.dv:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEEB1c_.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i
  %i.ov = phi ptr [ %.promoted.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.oz, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEEB1c_.exit.i.i.i.i.i.i.i.i ] ; 4 uses
  %i.ow = phi ptr [ %.promoted32.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.pb, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEEB1c_.exit.i.i.i.i.i.i.i.i ]
  %i.ox = phi i64 [ %.promoted36.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.pc, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEEB1c_.exit.i.i.i.i.i.i.i.i ]
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ov, i64 24
  %i.oz = load ptr, ptr %i.oy, align 8, !noalias !36122, !noundef !28 ; 5 uses
  %.not3.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.oz, null ; 3 uses
  br i1 %.not3.i.i.i.i.i.i.i.i.i, label %_RNvMs6_NtNtCs1xwejQucwHj_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEE9pop_frontB1v_.exit.i.i.i.i.i.i.i.i, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oz, i64 32
  store ptr null, ptr %i.pa, align 8, !noalias !36122
  br label %_RNvMs6_NtNtCs1xwejQucwHj_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEE9pop_frontB1v_.exit.i.i.i.i.i.i.i.i

_RNvMs6_NtNtCs1xwejQucwHj_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEE9pop_frontB1v_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.dw, %bb.dv
  %i.pb = phi ptr [ %i.ow, %bb.dw ], [ null, %bb.dv ] ; 2 uses
  %i.pc = add i64 %i.ox, -1                       ; 2 uses
  %.sroa.011.0.copyload12.i.i.i.i.i.i.i.i = load i64, ptr %i.ov, align 8, !noalias !36123 ; 4 uses
  %.sroa.7.0..sroa_idx13.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ov, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx13.i.i.i.i.i.i.i.i, i64 16, i1 false), !noalias !36123
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull align 8 %i.ov, i64 noundef 40, i64 noundef 8) #56, !noalias !36124
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.011.0.copyload12.i.i.i.i.i.i.i.i, -1
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.dz, label %bb.dx

bb.dx:                                            ; preds = %_RNvMs6_NtNtCs1xwejQucwHj_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEE9pop_frontB1v_.exit.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq), !noalias !36108
  store i64 %.sroa.011.0.copyload12.i.i.i.i.i.i.i.i, ptr %i.bq, align 8, !noalias !36108
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.i.i.i.i.i.i.i.i, i64 16, i1 false), !noalias !36108
  %i.pd = load ptr, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !36108, !nonnull !28, !noundef !28 ; 2 uses
  %i.pe = load i64, ptr %i.ou, align 8, !noalias !36108, !noundef !28 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !36125)
  %i.pf = load i64, ptr %i.ni, align 8, !alias.scope !36126, !noalias !36127, !noundef !28 ; 5 uses
  %i.pg = load i64, ptr %i.bt, align 8, !range !37, !alias.scope !36126, !noalias !36127, !noundef !28
  %i.ph = sub i64 %i.pg, %i.pf
  %i.pi = icmp ugt i64 %i.pe, %i.ph
  br i1 %i.pi, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputE7reserveBI_.exit.thread.i.i.i.i.i.i.i.i.i, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputE7reserveBI_.exit.i.i.i.i.i.i.i.i.i, !prof !38

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputE7reserveBI_.exit.thread.i.i.i.i.i.i.i.i.i: ; preds = %bb.dx
  invoke fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bt, i64 noundef %i.pf, i64 noundef %i.pe, i64 noundef 8, i64 noundef 24)
          to label %.noexc8.i.i.i.i.i.i.i.i unwind label %bb.ef, !noalias !36121

.noexc8.i.i.i.i.i.i.i.i:                          ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputE7reserveBI_.exit.thread.i.i.i.i.i.i.i.i.i
  %i.pj = load i64, ptr %i.ni, align 8, !alias.scope !36128, !noalias !36127, !noundef !28 ; 2 uses
  %i.pk = icmp ult i64 %i.pj, 384307168202282326
  call void @llvm.assume(i1 %i.pk)
  br label %bb.dy

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputE7reserveBI_.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.dx
  %i.pl = icmp ult i64 %i.pf, 384307168202282326
  call void @llvm.assume(i1 %i.pl)
  %.not.i7.i.i.i.i.i.i.i.i = icmp eq i64 %i.pe, 0
  br i1 %.not.i7.i.i.i.i.i.i.i.i, label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_.exit.i.i.i.i.i.i.i.i.i, label %bb.dy

bb.dy:                                            ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputE7reserveBI_.exit.i.i.i.i.i.i.i.i.i, %.noexc8.i.i.i.i.i.i.i.i
  %i.pm = phi i64 [ %i.pj, %.noexc8.i.i.i.i.i.i.i.i ], [ %i.pf, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputE7reserveBI_.exit.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.pn = load ptr, ptr %i.nh, align 8, !alias.scope !36128, !noalias !36127, !nonnull !28, !noundef !28
  %i.po = getelementptr inbounds nuw [24 x i8], ptr %i.pn, i64 %i.pm
  %i.pp = mul nuw nsw i64 %i.pe, 24
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.po, ptr nonnull readonly align 8 %i.pd, i64 %i.pp, i1 false), !noalias !36129
  br label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_.exit.i.i.i.i.i.i.i.i.i

bb.dz:                                            ; preds = %_RNvMs6_NtNtCs1xwejQucwHj_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEE9pop_frontB1v_.exit.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i.i.i.i.i.i)
  br i1 %.not3.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.dz, %bb.ee
  %i.pq = phi ptr [ %i.ps, %bb.ee ], [ %i.oz, %bb.dz ] ; 5 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pq, i64 24
  %i.ps = load ptr, ptr %i.pr, align 8, !noalias !36130, !noundef !28 ; 3 uses
  %.not3.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ps, null ; 2 uses
  br i1 %.not3.i.i.i.i.i.i.i.i.i.i.i, label %bb.eb, label %bb.ea

bb.ea:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ps, i64 32
  store ptr null, ptr %i.pt, align 8, !noalias !36130
  br label %bb.eb

bb.eb:                                            ; preds = %bb.ea, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !36131)
  call void @llvm.experimental.noalias.scope.decl(metadata !36132)
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pq, i64 8
  %.val.i.i.i.i7.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.pu, align 8, !alias.scope !36133, !noalias !36130, !nonnull !28, !noundef !28 ; 2 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pq, i64 16
  %.val1.i.i.i.i8.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.pv, align 8, !alias.scope !36133, !noalias !36130, !noundef !28 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !36134)
  %i.pw = icmp eq i64 %.val1.i.i.i.i8.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.pw, label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_.exit.i.i.i.i12.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i9.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i9.i.i.i.i.i.i.i.i.i.i.i:        ; preds = %bb.eb, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs9fPPV5zPXBl_5typst4args6OutputEBF_.exit.i.i.i.i.i.i11.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.09.i.i.i.i.i.i10.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.py, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs9fPPV5zPXBl_5typst4args6OutputEBF_.exit.i.i.i.i.i.i11.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.eb ] ; 2 uses
  %i.px = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i.i.i7.i.i.i.i.i.i.i.i.i.i.i, i64 %.sroa.0.09.i.i.i.i.i.i10.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.py = add nuw nsw i64 %.sroa.0.09.i.i.i.i.i.i10.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !36135)
  %i.pz = load i64, ptr %i.px, align 8, !range !55, !alias.scope !36136, !noalias !36137, !noundef !28 ; 2 uses
  %i.qa = icmp sgt i64 %i.pz, 0
  br i1 %i.qa, label %bb.ec, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs9fPPV5zPXBl_5typst4args6OutputEBF_.exit.i.i.i.i.i.i11.i.i.i.i.i.i.i.i.i.i.i
end_hunk_3
begin_hunk_4_@_RNvNtCs9fPPV5zPXBl_5typst7compile12compile_once:bb.a

bb.re:                                            ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs9fPPV5zPXBl_5typst.exit.i148
  %i.anz = icmp ult ptr %.val.i.i149, inttoptr (i64 188978561024 to ptr)
  %i.aoa = and i64 %i.anx, 1095216660480
  %i.aob = icmp ne i64 %i.aoa, 1095216660480
  call void @llvm.assume(i1 %i.anz)
  call void @llvm.assume(i1 %i.aob)
  br label %bb.ri

bb.rf:                                            ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs9fPPV5zPXBl_5typst.exit.i148
  %i.aoc = getelementptr i8, ptr %.val.i.i149, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aoc) ]
  %i.aod = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.aoc, ptr %i.aod, align 8, !alias.scope !36487, !noalias !36486
  store i8 3, ptr %i.b, align 8, !alias.scope !36487, !noalias !36486
  invoke void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aod)
          to label %bb.ri unwind label %.loopexit.split-lp

bb.rg:                                            ; preds = %bb.rh, %bb.rb
  %i.aoe = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #64, !noalias !36484
  unreachable

bb.rh:                                            ; preds = %bb.rb
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) #62
          to label %.body unwind label %bb.rg, !noalias !36484

_RNvNtCs9fPPV5zPXBl_5typst4deps10write_deps.exit.thread: ; preds = %bb.ol, %_RNvNtCs9fPPV5zPXBl_5typst4deps15write_deps_json.exit.thread79.i, %_RNvNtCs9fPPV5zPXBl_5typst4deps15write_deps_zero.exit.i, %_RNvNtCs9fPPV5zPXBl_5typst4deps15write_deps_make.exit.thread.i, %_RNvNtCs9fPPV5zPXBl_5typst4deps10write_deps.exit
  %.val.pre = load ptr, ptr %i.el, align 8
  %.val49.pre = load i64, ptr %i.tr, align 8
  br label %bb.qz

bb.ri:                                            ; preds = %bb.re, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs9fPPV5zPXBl_5typst.exit.i148, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs9fPPV5zPXBl_5typst.exit.i148, %bb.rf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !36486
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dv)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dv, ptr noundef nonnull align 8 dereferenceable(16) %i.dw, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dw)
  %i.aof = invoke { ptr, i64 } @_RNvMs8_NtCsdaEETE4DqmE_13typst_library4diagNtB5_12HintedString3new(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.dv)
          to label %bb.rj unwind label %.loopexit.split-lp

bb.rj:                                            ; preds = %bb.ri
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dv)
  br label %bb.jl

bb.rk:                                            ; preds = %.body, %bb.rl
  %.pn33 = phi { ptr, i32 } [ %i.aog, %bb.rl ], [ %eh.lpad-body, %.body ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEEEB1y_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.em) #62
          to label %.body46 unwind label %bb.rx

bb.rl:                                            ; preds = %bb.jl, %bb.qz
  %i.aog = landingpad { ptr, i32 }
          cleanup
  br label %bb.rk

bb.rm:                                            ; preds = %bb.qz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.el)
  br i1 %i.uk, label %bb.rq, label %bb.rn

bb.rn:                                            ; preds = %bb.rm
  call void @llvm.experimental.noalias.scope.decl(metadata !36488)
  %i.aoh = icmp eq i64 %.sroa.9.0, 0
  br i1 %i.aoh, label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.rn, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs9fPPV5zPXBl_5typst4args6OutputEBF_.exit.i.i.i.i
  %.sroa.0.09.i.i.i.i = phi i64 [ %i.aoj, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs9fPPV5zPXBl_5typst4args6OutputEBF_.exit.i.i.i.i ], [ 0, %bb.rn ] ; 2 uses
  %i.aoi = getelementptr inbounds nuw [24 x i8], ptr %.sroa.6.0175, i64 %.sroa.0.09.i.i.i.i ; 2 uses
  %i.aoj = add nuw nsw i64 %.sroa.0.09.i.i.i.i, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !36489)
  %i.aok = load i64, ptr %i.aoi, align 8, !range !55, !alias.scope !36490, !noalias !36491, !noundef !28 ; 2 uses
  %i.aol = icmp sgt i64 %i.aok, 0
  br i1 %i.aol, label %bb.ro, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs9fPPV5zPXBl_5typst4args6OutputEBF_.exit.i.i.i.i

bb.ro:                                            ; preds = %.lr.ph.i.i.i.i
  %i.aom = getelementptr inbounds nuw i8, ptr %i.aoi, i64 8
  %.val1.i.i.i.i.i157 = load ptr, ptr %i.aom, align 8, !alias.scope !36490, !noalias !36491, !nonnull !28, !noundef !28
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i157, i64 noundef %i.aok, i64 noundef range(i64 1, -9223372036854775807) 1) #56, !noalias !36492
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs9fPPV5zPXBl_5typst4args6OutputEBF_.exit.i.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs9fPPV5zPXBl_5typst4args6OutputEBF_.exit.i.i.i.i: ; preds = %bb.ro, %.lr.ph.i.i.i.i
  %i.aon = icmp eq i64 %i.aoj, %.sroa.9.0
  br i1 %i.aon, label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_.exit.i.i, label %.lr.ph.i.i.i.i

_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_.exit.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs9fPPV5zPXBl_5typst4args6OutputEBF_.exit.i.i.i.i, %bb.rn
  %i.aoo = icmp eq i64 %.sroa.0.0174, 0
  br i1 %i.aoo, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEEEB1y_.exit, label %bb.rp

bb.rp:                                            ; preds = %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_.exit.i.i
  %i.aop = mul nuw i64 %.sroa.0.0174, 24
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0175, i64 noundef %i.aop, i64 noundef range(i64 1, -9223372036854775807) 8) #56, !noalias !36491
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEEEB1y_.exit

bb.rq:                                            ; preds = %bb.rm
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEECs9fPPV5zPXBl_5typst(ptr nonnull %.sroa.6.0175, i64 %.sroa.9.0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEEEB1y_.exit unwind label %bb.f

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEEEB1y_.exit: ; preds = %bb.rp, %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_.exit.i.i, %bb.rq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.em)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.en)
  %i.aoq = load ptr, ptr %i.eo, align 8, !alias.scope !36493, !noundef !28
  %i.aor = icmp eq ptr %i.aoq, null
  br i1 %i.aor, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs9fPPV5zPXBl_5typst.exit173, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs9fPPV5zPXBl_5typst.exit173.sink.split

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs9fPPV5zPXBl_5typst.exit173.sink.split: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEEEB1y_.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEEEB1y_.exit172
  %.sroa.6.1.ph = phi i64 [ %.sroa.6.0, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEEEB1y_.exit172 ], [ undef, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEEEB1y_.exit ]
  %.sroa.0.1.ph = phi ptr [ %.sroa.0.0, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEEEB1y_.exit172 ], [ null, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEEEB1y_.exit ]
  call void @_RNvXs_CsiNFdexS2GJ6_12typst_timingNtB4_11TimingScopeNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.eo)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs9fPPV5zPXBl_5typst.exit173

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs9fPPV5zPXBl_5typst.exit173: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs9fPPV5zPXBl_5typst.exit173.sink.split, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEEEB1y_.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEEEB1y_.exit172
  %.sroa.6.1 = phi i64 [ undef, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEEEB1y_.exit ], [ %.sroa.6.0, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEEEB1y_.exit172 ], [ %.sroa.6.1.ph, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs9fPPV5zPXBl_5typst.exit173.sink.split ]
  %.sroa.0.1 = phi ptr [ null, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEEEB1y_.exit ], [ %.sroa.0.0, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEEEB1y_.exit172 ], [ %.sroa.0.1.ph, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs9fPPV5zPXBl_5typst.exit173.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eo)
  %i.aos = insertvalue { ptr, i64 } poison, ptr %.sroa.0.1, 0
  %i.aot = insertvalue { ptr, i64 } %i.aos, i64 %.sroa.6.1, 1
  ret { ptr, i64 } %i.aot

_RNCNvNtCs9fPPV5zPXBl_5typst7compile12compile_onces_0B5_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs9fPPV5zPXBl_5typst.exit.i.i106, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs9fPPV5zPXBl_5typst.exit.i102
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dy)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dx)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dx, ptr noundef nonnull align 8 dereferenceable(16) %i.dz, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dz)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ee)
  %i.aou = invoke { ptr, i64 } @_RNvMs8_NtCsdaEETE4DqmE_13typst_library4diagNtB5_12HintedString3new(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.dx)
          to label %bb.rr unwind label %.loopexit.split-lp

bb.rr:                                            ; preds = %_RNCNvNtCs9fPPV5zPXBl_5typst7compile12compile_onces_0B5_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dx)
  br label %bb.jl

bb.rs:                                            ; preds = %bb.jl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.el)
  br i1 %i.uk, label %bb.rw, label %bb.rt

bb.rt:                                            ; preds = %bb.rs
  call void @llvm.experimental.noalias.scope.decl(metadata !36494)
  %i.aov = icmp eq i64 %.sroa.9.0, 0
  br i1 %i.aov, label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_.exit.i.i167, label %.lr.ph.i.i.i.i164

.lr.ph.i.i.i.i164:                                ; preds = %bb.rt, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs9fPPV5zPXBl_5typst4args6OutputEBF_.exit.i.i.i.i166
  %.sroa.0.09.i.i.i.i165 = phi i64 [ %i.aox, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs9fPPV5zPXBl_5typst4args6OutputEBF_.exit.i.i.i.i166 ], [ 0, %bb.rt ] ; 2 uses
  %i.aow = getelementptr inbounds nuw [24 x i8], ptr %.sroa.6.0175, i64 %.sroa.0.09.i.i.i.i165 ; 2 uses
  %i.aox = add nuw nsw i64 %.sroa.0.09.i.i.i.i165, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !36495)
  %i.aoy = load i64, ptr %i.aow, align 8, !range !55, !alias.scope !36496, !noalias !36497, !noundef !28 ; 2 uses
  %i.aoz = icmp sgt i64 %i.aoy, 0
  br i1 %i.aoz, label %bb.ru, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs9fPPV5zPXBl_5typst4args6OutputEBF_.exit.i.i.i.i166

bb.ru:                                            ; preds = %.lr.ph.i.i.i.i164
  %i.apa = getelementptr inbounds nuw i8, ptr %i.aow, i64 8
  %.val1.i.i.i.i.i168 = load ptr, ptr %i.apa, align 8, !alias.scope !36496, !noalias !36497, !nonnull !28, !noundef !28
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i168, i64 noundef %i.aoy, i64 noundef range(i64 1, -9223372036854775807) 1) #56, !noalias !36498
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs9fPPV5zPXBl_5typst4args6OutputEBF_.exit.i.i.i.i166

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs9fPPV5zPXBl_5typst4args6OutputEBF_.exit.i.i.i.i166: ; preds = %bb.ru, %.lr.ph.i.i.i.i164
  %i.apb = icmp eq i64 %i.aox, %.sroa.9.0
  br i1 %i.apb, label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_.exit.i.i167, label %.lr.ph.i.i.i.i164

_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_.exit.i.i167: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs9fPPV5zPXBl_5typst4args6OutputEBF_.exit.i.i.i.i166, %bb.rt
  %i.apc = icmp eq i64 %.sroa.0.0174, 0
  br i1 %i.apc, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEEEB1y_.exit172, label %bb.rv

bb.rv:                                            ; preds = %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_.exit.i.i167
  %i.apd = mul nuw i64 %.sroa.0.0174, 24
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0175, i64 noundef %i.apd, i64 noundef range(i64 1, -9223372036854775807) 8) #56, !noalias !36497
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEEEB1y_.exit172

bb.rw:                                            ; preds = %bb.rs
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEECs9fPPV5zPXBl_5typst(ptr nonnull %.sroa.6.0175, i64 %.sroa.9.0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEEEB1y_.exit172 unwind label %bb.f

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEEEB1y_.exit172: ; preds = %bb.rv, %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_.exit.i.i167, %bb.rw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.em)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.en)
  %i.ape = load ptr, ptr %i.eo, align 8, !alias.scope !36499, !noundef !28
  %i.apf = icmp eq ptr %i.ape, null
  br i1 %i.apf, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs9fPPV5zPXBl_5typst.exit173, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs9fPPV5zPXBl_5typst.exit173.sink.split

bb.rx:                                            ; preds = %bb.e, %.body, %bb.rk
  %i.apg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #64
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs9fPPV5zPXBl_5typst.exit: ; preds = %.body46, %bb.e
  resume { ptr, i32 } %.pn35
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtCs9fPPV5zPXBl_5typst7compile12export_image(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %1, ptr noundef nonnull align 8 %2, i1 noundef zeroext %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [48 x i8], align 8                ; 8 uses
  %i.d = alloca [56 x i8], align 8                ; 9 uses
  %i.e = alloca [1 x i8], align 1                 ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.7.i.i.i.i = alloca [16 x i8], align 8    ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 8 uses
  %.sroa.0.i.i.i.i = alloca i64, align 8          ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 7 uses
  %i.i = alloca [24 x i8], align 8                ; 10 uses
  %i.j = alloca [24 x i8], align 8                ; 5 uses
  %i.k = alloca [24 x i8], align 8                ; 8 uses
  %i.l = alloca [32 x i8], align 8                ; 8 uses
  %i.m = alloca [24 x i8], align 8                ; 9 uses
  %i.n = alloca [24 x i8], align 8                ; 6 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [16 x i8], align 8                ; 7 uses
  %i.q = alloca [16 x i8], align 8                ; 5 uses
  %i.r = alloca [1 x i8], align 1                 ; 6 uses
  %i.s = alloca [1 x i8], align 1                 ; 3 uses
  %i.t = zext i1 %3 to i8
  store i8 %i.t, ptr %i.s, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !range !55, !noundef !28
  %.not = icmp eq i64 %i.v, -1
  br i1 %.not, label %_RNvNtNtCs9fPPV5zPXBl_5typst7compile15output_template22has_indexable_template.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !28, !noundef !28
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.z = load i64, ptr %i.y, align 8, !noundef !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @_RNvNtNtCs3oUPovFnLWP_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.n, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.x, i64 noundef %i.z)
  %i.aa = load i64, ptr %i.n, align 8, !range !33, !noundef !28
  %i.ab = trunc nuw i64 %i.aa to i1               ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !nonnull !28
  %i.ae = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.af = load i64, ptr %i.ae, align 8
  %.sroa.3.0 = select i1 %i.ab, i64 0, i64 %i.af  ; 3 uses
  %.sroa.0.0 = select i1 %i.ab, ptr inttoptr (i64 1 to ptr), ptr %i.ad ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.ag = tail call fastcc noundef zeroext i1 @_RNvXst_NtNtCs3oUPovFnLWP_4core3str7patternReNtB5_7Pattern15is_contained_in(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @477, i64 noundef 3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0, i64 noundef %.sroa.3.0) #60, !noalias !36614
  br i1 %i.ag, label %_RNvNtNtCs9fPPV5zPXBl_5typst7compile15output_template22has_indexable_template.exit, label %bb.i

_RNvNtNtCs9fPPV5zPXBl_5typst7compile15output_template22has_indexable_template.exit: ; preds = %bb.j, %bb.i, %bb.b, %bb.a
  %storemerge = phi i8 [ 0, %bb.a ], [ %i.bw, %bb.j ], [ 1, %bb.b ], [ 1, %bb.i ] ; 3 uses
  store i8 %storemerge, ptr %i.r, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.ai = load ptr, ptr %i.ah, align 8, !nonnull !28, !noundef !28 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.ak = load i64, ptr %i.aj, align 8, !noundef !28 ; 2 uses
  %.idx = mul nuw nsw i64 %i.ak, 176
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.idx ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !36615
  %i.am = icmp eq i64 %i.ak, 0
  br i1 %i.am, label %_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VecTjRNtNtCs7tN9tvpkfrg_12typst_layout8document4PageEEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter6FilterINtNtB2p_9enumerate9EnumerateINtNtNtB2t_5slice4iter4IterB14_EENCNvNtCs9fPPV5zPXBl_5typst7compile12export_image0EE9from_iterB4k_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_RNvNtNtCs9fPPV5zPXBl_5typst7compile15output_template22has_indexable_template.exit
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 4 uses
  br label %bb.c

bb.c:                                             ; preds = %_RNCINvNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtCs7tN9tvpkfrg_12typst_layout8document4PageuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3w_QNCNvNtCs9fPPV5zPXBl_5typst7compile12export_image0E0E0B4b_.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.ao = phi ptr [ %i.ai, %.lr.ph.i.i.i.i.i ], [ %i.aq, %_RNCINvNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtCs7tN9tvpkfrg_12typst_layout8document4PageuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3w_QNCNvNtCs9fPPV5zPXBl_5typst7compile12export_image0E0E0B4b_.exit.i.i.i.i.i ] ; 2 uses
  %i.ap = phi i64 [ 0, %.lr.ph.i.i.i.i.i ], [ %i.at, %_RNCINvNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtCs7tN9tvpkfrg_12typst_layout8document4PageuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3w_QNCNvNtCs9fPPV5zPXBl_5typst7compile12export_image0E0E0B4b_.exit.i.i.i.i.i ] ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 176 ; 4 uses
  %i.ar = load i64, ptr %i.an, align 8, !range !55, !noalias !36616, !noundef !28
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ar, -1
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i, label %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCNvNtCs9fPPV5zPXBl_5typst7compile12export_image0INtB7_5FnMutTRTjRNtNtCs7tN9tvpkfrg_12typst_layout8document4PageEEE8call_mutBU_.exit.i.i.i.i.i.i.i

_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCNvNtCs9fPPV5zPXBl_5typst7compile12export_image0INtB7_5FnMutTRTjRNtNtCs7tN9tvpkfrg_12typst_layout8document4PageEEE8call_mutBU_.exit.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.as = tail call noundef zeroext i1 @_RNvMs7_NtNtCsdaEETE4DqmE_13typst_library6layout4pageNtB5_10PageRanges19includes_page_index(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.an, i64 noundef %i.ap), !noalias !36616
  br i1 %i.as, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i, label %_RNCINvNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtCs7tN9tvpkfrg_12typst_layout8document4PageuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3w_QNCNvNtCs9fPPV5zPXBl_5typst7compile12export_image0E0E0B4b_.exit.i.i.i.i.i

_RNCINvNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtCs7tN9tvpkfrg_12typst_layout8document4PageuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3w_QNCNvNtCs9fPPV5zPXBl_5typst7compile12export_image0E0E0B4b_.exit.i.i.i.i.i: ; preds = %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCNvNtCs9fPPV5zPXBl_5typst7compile12export_image0INtB7_5FnMutTRTjRNtNtCs7tN9tvpkfrg_12typst_layout8document4PageEEE8call_mutBU_.exit.i.i.i.i.i.i.i
  %i.at = add nuw nsw i64 %i.ap, 1
  %i.au = icmp eq ptr %i.aq, %i.al
  br i1 %i.au, label %_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VecTjRNtNtCs7tN9tvpkfrg_12typst_layout8document4PageEEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter6FilterINtNtB2p_9enumerate9EnumerateINtNtNtB2t_5slice4iter4IterB14_EENCNvNtCs9fPPV5zPXBl_5typst7compile12export_image0EE9from_iterB4k_.exit, label %bb.c

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %bb.c, %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCNvNtCs9fPPV5zPXBl_5typst7compile12export_image0INtB7_5FnMutTRTjRNtNtCs7tN9tvpkfrg_12typst_layout8document4PageEEE8call_mutBU_.exit.i.i.i.i.i.i.i
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #56, !noalias !36617
  %i.av = tail call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 64, i64 noundef range(i64 1, 17) 8) #56, !noalias !36617 ; 5 uses
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %bb.d, label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9fPPV5zPXBl_5typst.exit.i

bb.d:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef 8, i64 64) #61, !noalias !36615
  unreachable

_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9fPPV5zPXBl_5typst.exit.i: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i
  store i64 %i.ap, ptr %i.av, align 8, !noalias !36615
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store ptr %i.ao, ptr %i.ax, align 8, !noalias !36615
  store i64 4, ptr %i.m, align 8, !noalias !36615
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 4 uses
  store ptr %i.av, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !36615
  %.sroa.64.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.64.0..sroa_idx.i, align 8, !noalias !36615
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36618)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36619)
  %i.ay = icmp eq ptr %i.aq, %i.al
  br i1 %i.ay, label %_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecTjRNtNtCs7tN9tvpkfrg_12typst_layout8document4PageEEINtB2_10SpecExtendBR_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter6FilterINtNtB26_9enumerate9EnumerateINtNtNtB2a_5slice4iter4IterBU_EENCNvNtCs9fPPV5zPXBl_5typst7compile12export_image0EE11spec_extendB40_.exit.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9fPPV5zPXBl_5typst.exit.i, %.noexc13.i
  %i.az = phi ptr [ %i.bl, %.noexc13.i ], [ %i.av, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9fPPV5zPXBl_5typst.exit.i ]
  %i.ba = phi i64 [ %i.bo, %.noexc13.i ], [ 1, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9fPPV5zPXBl_5typst.exit.i ] ; 6 uses
  %i.bb = phi ptr [ %i.be, %.noexc13.i ], [ %i.aq, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9fPPV5zPXBl_5typst.exit.i ]
  %.in.i = phi i64 [ %i.bd, %.noexc13.i ], [ %i.ap, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9fPPV5zPXBl_5typst.exit.i ]
  br label %bb.e

bb.e:                                             ; preds = %_RNCINvNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtCs7tN9tvpkfrg_12typst_layout8document4PageuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3w_QNCNvNtCs9fPPV5zPXBl_5typst7compile12export_image0E0E0B4b_.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %i.bc = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i.i.i ], [ %i.be, %_RNCINvNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtCs7tN9tvpkfrg_12typst_layout8document4PageuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3w_QNCNvNtCs9fPPV5zPXBl_5typst7compile12export_image0E0E0B4b_.exit.i.i.i.i.i.i.i ] ; 2 uses
  %.in68.i = phi i64 [ %.in.i, %.lr.ph.i.i.i.i.i.i.i ], [ %i.bd, %_RNCINvNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtCs7tN9tvpkfrg_12typst_layout8document4PageuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3w_QNCNvNtCs9fPPV5zPXBl_5typst7compile12export_image0E0E0B4b_.exit.i.i.i.i.i.i.i ]
  %i.bd = add i64 %.in68.i, 1                     ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 176 ; 4 uses
  %i.bf = load i64, ptr %i.an, align 8, !range !55, !noalias !36620, !noundef !28
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.bf, -1
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.f, label %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCNvNtCs9fPPV5zPXBl_5typst7compile12export_image0INtB7_5FnMutTRTjRNtNtCs7tN9tvpkfrg_12typst_layout8document4PageEEE8call_mutBU_.exit.i.i.i.i.i.i.i.i.i

_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCNvNtCs9fPPV5zPXBl_5typst7compile12export_image0INtB7_5FnMutTRTjRNtNtCs7tN9tvpkfrg_12typst_layout8document4PageEEE8call_mutBU_.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.e
  %i.bg = invoke noundef zeroext i1 @_RNvMs7_NtNtCsdaEETE4DqmE_13typst_library6layout4pageNtB5_10PageRanges19includes_page_index(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.an, i64 noundef %i.bd)
          to label %.noexc.i unwind label %.loopexit.i, !noalias !36615

.noexc.i:                                         ; preds = %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCNvNtCs9fPPV5zPXBl_5typst7compile12export_image0INtB7_5FnMutTRTjRNtNtCs7tN9tvpkfrg_12typst_layout8document4PageEEE8call_mutBU_.exit.i.i.i.i.i.i.i.i.i
  br i1 %i.bg, label %bb.f, label %_RNCINvNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtCs7tN9tvpkfrg_12typst_layout8document4PageuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3w_QNCNvNtCs9fPPV5zPXBl_5typst7compile12export_image0E0E0B4b_.exit.i.i.i.i.i.i.i

_RNCINvNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtCs7tN9tvpkfrg_12typst_layout8document4PageuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3w_QNCNvNtCs9fPPV5zPXBl_5typst7compile12export_image0E0E0B4b_.exit.i.i.i.i.i.i.i: ; preds = %.noexc.i
  %i.bh = icmp eq ptr %i.be, %i.al
  br i1 %i.bh, label %_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecTjRNtNtCs7tN9tvpkfrg_12typst_layout8document4PageEEINtB2_10SpecExtendBR_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter6FilterINtNtB26_9enumerate9EnumerateINtNtNtB2a_5slice4iter4IterBU_EENCNvNtCs9fPPV5zPXBl_5typst7compile12export_image0EE11spec_extendB40_.exit.i, label %bb.e

bb.f:                                             ; preds = %.noexc.i, %bb.e
  %i.bi = icmp samesign ult i64 %i.ba, 576460752303423488
  tail call void @llvm.assume(i1 %i.bi)
  %i.bj = load i64, ptr %i.m, align 8, !range !37, !alias.scope !36621, !noalias !36622, !noundef !28
  %i.bk = icmp eq i64 %i.ba, %i.bj
  br i1 %i.bk, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecTjRNtNtCs7tN9tvpkfrg_12typst_layout8document4PageEE7reserveCs9fPPV5zPXBl_5typst.exit.i.i.i, label %.noexc13.i

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecTjRNtNtCs7tN9tvpkfrg_12typst_layout8document4PageEE7reserveCs9fPPV5zPXBl_5typst.exit.i.i.i: ; preds = %bb.f
  invoke fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m, i64 noundef %i.ba, i64 noundef range(i64 1, 0) 1, i64 noundef 8, i64 noundef 16)
          to label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecTjRNtNtCs7tN9tvpkfrg_12typst_layout8document4PageEE7reserveCs9fPPV5zPXBl_5typst.exit.i.i..noexc13_crit_edge.i unwind label %.loopexit.split-lp.i, !noalias !36615

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecTjRNtNtCs7tN9tvpkfrg_12typst_layout8document4PageEE7reserveCs9fPPV5zPXBl_5typst.exit.i.i..noexc13_crit_edge.i: ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecTjRNtNtCs7tN9tvpkfrg_12typst_layout8document4PageEE7reserveCs9fPPV5zPXBl_5typst.exit.i.i.i
  %.pre.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !36621, !noalias !36622
  br label %.noexc13.i

.noexc13.i:                                       ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecTjRNtNtCs7tN9tvpkfrg_12typst_layout8document4PageEE7reserveCs9fPPV5zPXBl_5typst.exit.i.i..noexc13_crit_edge.i, %bb.f
  %i.bl = phi ptr [ %.pre.i, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecTjRNtNtCs7tN9tvpkfrg_12typst_layout8document4PageEE7reserveCs9fPPV5zPXBl_5typst.exit.i.i..noexc13_crit_edge.i ], [ %i.az, %bb.f ] ; 2 uses
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %i.bl, i64 %i.ba ; 2 uses
  store i64 %i.bd, ptr %i.bm, align 8, !noalias !36623
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store ptr %i.bc, ptr %i.bn, align 8, !noalias !36623
  %i.bo = add nuw nsw i64 %i.ba, 1                ; 3 uses
  store i64 %i.bo, ptr %.sroa.64.0..sroa_idx.i, align 8, !alias.scope !36621, !noalias !36622
  %i.bp = icmp eq ptr %i.be, %i.al
  br i1 %i.bp, label %_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecTjRNtNtCs7tN9tvpkfrg_12typst_layout8document4PageEEINtB2_10SpecExtendBR_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter6FilterINtNtB26_9enumerate9EnumerateINtNtNtB2a_5slice4iter4IterBU_EENCNvNtCs9fPPV5zPXBl_5typst7compile12export_image0EE11spec_extendB40_.exit.i, label %.lr.ph.i.i.i.i.i.i.i

.loopexit.i:                                      ; preds = %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCNvNtCs9fPPV5zPXBl_5typst7compile12export_image0INtB7_5FnMutTRTjRNtNtCs7tN9tvpkfrg_12typst_layout8document4PageEEE8call_mutBU_.exit.i.i.i.i.i.i.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

.loopexit.split-lp.i:                             ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecTjRNtNtCs7tN9tvpkfrg_12typst_layout8document4PageEE7reserveCs9fPPV5zPXBl_5typst.exit.i.i.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.g:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ] ; 2 uses
  %.val10.i = load i64, ptr %i.m, align 8, !noalias !36615 ; 2 uses
  %i.bq = icmp eq i64 %.val10.i, 0
  br i1 %i.bq, label %common.resume, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.val11.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !36615, !nonnull !28, !noundef !28
  %i.br = shl nuw i64 %.val10.i, 4
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val11.i, i64 noundef %i.br, i64 noundef range(i64 1, -9223372036854775807) 8) #56, !noalias !36615
  br label %common.resume

_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecTjRNtNtCs7tN9tvpkfrg_12typst_layout8document4PageEEINtB2_10SpecExtendBR_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter6FilterINtNtB26_9enumerate9EnumerateINtNtNtB2a_5slice4iter4IterBU_EENCNvNtCs9fPPV5zPXBl_5typst7compile12export_image0EE11spec_extendB40_.exit.i: ; preds = %.noexc13.i, %_RNCINvNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtCs7tN9tvpkfrg_12typst_layout8document4PageuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3w_QNCNvNtCs9fPPV5zPXBl_5typst7compile12export_image0E0E0B4b_.exit.i.i.i.i.i.i.i, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9fPPV5zPXBl_5typst.exit.i
  %.sroa.13.0.copyload = phi i64 [ %i.ba, %_RNCINvNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtCs7tN9tvpkfrg_12typst_layout8document4PageuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3w_QNCNvNtCs9fPPV5zPXBl_5typst7compile12export_image0E0E0B4b_.exit.i.i.i.i.i.i.i ], [ 1, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9fPPV5zPXBl_5typst.exit.i ], [ %i.bo, %.noexc13.i ]
  %.sroa.0.0.copyload = load i64, ptr %i.m, align 8, !noalias !36624
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !36624
  %.pre = load i8, ptr %i.r, align 1, !range !53
  br label %_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VecTjRNtNtCs7tN9tvpkfrg_12typst_layout8document4PageEEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter6FilterINtNtB2p_9enumerate9EnumerateINtNtNtB2t_5slice4iter4IterB14_EENCNvNtCs9fPPV5zPXBl_5typst7compile12export_image0EE9from_iterB4k_.exit

common.resume:                                    ; preds = %.body, %bb.ar, %bb.g, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %lpad.phi.i, %bb.g ], [ %lpad.phi.i, %bb.h ], [ %.pn, %bb.ar ], [ %.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VecTjRNtNtCs7tN9tvpkfrg_12typst_layout8document4PageEEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter6FilterINtNtB2p_9enumerate9EnumerateINtNtNtB2t_5slice4iter4IterB14_EENCNvNtCs9fPPV5zPXBl_5typst7compile12export_image0EE9from_iterB4k_.exit: ; preds = %_RNCINvNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtCs7tN9tvpkfrg_12typst_layout8document4PageuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3w_QNCNvNtCs9fPPV5zPXBl_5typst7compile12export_image0E0E0B4b_.exit.i.i.i.i.i, %_RNvNtNtCs9fPPV5zPXBl_5typst7compile15output_template22has_indexable_template.exit, %_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecTjRNtNtCs7tN9tvpkfrg_12typst_layout8document4PageEEINtB2_10SpecExtendBR_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter6FilterINtNtB26_9enumerate9EnumerateINtNtNtB2a_5slice4iter4IterBU_EENCNvNtCs9fPPV5zPXBl_5typst7compile12export_image0EE11spec_extendB40_.exit.i
  %i.bs = phi i8 [ %.pre, %_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecTjRNtNtCs7tN9tvpkfrg_12typst_layout8document4PageEEINtB2_10SpecExtendBR_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter6FilterINtNtB26_9enumerate9EnumerateINtNtNtB2a_5slice4iter4IterBU_EENCNvNtCs9fPPV5zPXBl_5typst7compile12export_image0EE11spec_extendB40_.exit.i ], [ %storemerge, %_RNvNtNtCs9fPPV5zPXBl_5typst7compile15output_template22has_indexable_template.exit ], [ %storemerge, %_RNCINvNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtCs7tN9tvpkfrg_12typst_layout8document4PageuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3w_QNCNvNtCs9fPPV5zPXBl_5typst7compile12export_image0E0E0B4b_.exit.i.i.i.i.i ]
  %.sroa.13.0 = phi i64 [ %.sroa.13.0.copyload, %_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecTjRNtNtCs7tN9tvpkfrg_12typst_layout8document4PageEEINtB2_10SpecExtendBR_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter6FilterINtNtB26_9enumerate9EnumerateINtNtNtB2a_5slice4iter4IterBU_EENCNvNtCs9fPPV5zPXBl_5typst7compile12export_image0EE11spec_extendB40_.exit.i ], [ 0, %_RNvNtNtCs9fPPV5zPXBl_5typst7compile15output_template22has_indexable_template.exit ], [ 0, %_RNCINvNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtCs7tN9tvpkfrg_12typst_layout8document4PageuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3w_QNCNvNtCs9fPPV5zPXBl_5typst7compile12export_image0E0E0B4b_.exit.i.i.i.i.i ] ; 7 uses
  %.sroa.8.0 = phi ptr [ %.sroa.8.0.copyload, %_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecTjRNtNtCs7tN9tvpkfrg_12typst_layout8document4PageEEINtB2_10SpecExtendBR_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter6FilterINtNtB26_9enumerate9EnumerateINtNtNtB2a_5slice4iter4IterBU_EENCNvNtCs9fPPV5zPXBl_5typst7compile12export_image0EE11spec_extendB40_.exit.i ], [ inttoptr (i64 8 to ptr), %_RNvNtNtCs9fPPV5zPXBl_5typst7compile15output_template22has_indexable_template.exit ], [ inttoptr (i64 8 to ptr), %_RNCINvNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtCs7tN9tvpkfrg_12typst_layout8document4PageuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3w_QNCNvNtCs9fPPV5zPXBl_5typst7compile12export_image0E0E0B4b_.exit.i.i.i.i.i ] ; 7 uses
  %.sroa.0.062 = phi i64 [ %.sroa.0.0.copyload, %_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecTjRNtNtCs7tN9tvpkfrg_12typst_layout8document4PageEEINtB2_10SpecExtendBR_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter6FilterINtNtB26_9enumerate9EnumerateINtNtNtB2a_5slice4iter4IterBU_EENCNvNtCs9fPPV5zPXBl_5typst7compile12export_image0EE11spec_extendB40_.exit.i ], [ 0, %_RNvNtNtCs9fPPV5zPXBl_5typst7compile15output_template22has_indexable_template.exit ], [ 0, %_RNCINvNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtCs7tN9tvpkfrg_12typst_layout8document4PageuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3w_QNCNvNtCs9fPPV5zPXBl_5typst7compile12export_image0E0E0B4b_.exit.i.i.i.i.i ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !36615
  %i.bt = trunc nuw i8 %i.bs to i1
  br i1 %i.bt, label %bb.l, label %bb.k

bb.i:                                             ; preds = %bb.b
  %i.bu = tail call fastcc noundef zeroext i1 @_RNvXst_NtNtCs3oUPovFnLWP_4core3str7patternReNtB5_7Pattern15is_contained_in(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @478, i64 noundef 4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0, i64 noundef %.sroa.3.0) #60, !noalias !36614
  br i1 %i.bu, label %_RNvNtNtCs9fPPV5zPXBl_5typst7compile15output_template22has_indexable_template.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bv = tail call fastcc noundef zeroext i1 @_RNvXst_NtNtCs3oUPovFnLWP_4core3str7patternReNtB5_7Pattern15is_contained_in(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0, i64 noundef %.sroa.3.0) #60, !noalias !36614
  %i.bw = zext i1 %i.bv to i8
  br label %_RNvNtNtCs9fPPV5zPXBl_5typst7compile15output_template22has_indexable_template.exit

bb.k:                                             ; preds = %_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VecTjRNtNtCs7tN9tvpkfrg_12typst_layout8document4PageEEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter6FilterINtNtB2p_9enumerate9EnumerateINtNtNtB2t_5slice4iter4IterB14_EENCNvNtCs9fPPV5zPXBl_5typst7compile12export_image0EE9from_iterB4k_.exit
  %i.bx = icmp ult i64 %.sroa.13.0, 576460752303423488
  tail call void @llvm.assume(i1 %i.bx)
  %i.by = icmp samesign ugt i64 %.sroa.13.0, 1
  br i1 %i.by, label %bb.al, label %bb.l

bb.l:                                             ; preds = %bb.k, %_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VecTjRNtNtCs7tN9tvpkfrg_12typst_layout8document4PageEEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter6FilterINtNtB2p_9enumerate9EnumerateINtNtNtB2t_5slice4iter4IterB14_EENCNvNtCs9fPPV5zPXBl_5typst7compile12export_image0EE9from_iterB4k_.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36625)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !36626
  store i32 0, ptr %i.l, align 8, !noalias !36626
  %i.bz = getelementptr inbounds nuw i8, ptr %i.l, i64 4 ; 2 uses
  store i8 0, ptr %i.bz, align 4, !noalias !36626
  %i.ca = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  store i64 0, ptr %i.ca, align 8, !noalias !36626
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !36626
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !36627
  store i64 0, ptr %i.i, align 8, !alias.scope !36628, !noalias !36627
  %i.cb = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.cb, align 8, !alias.scope !36628, !noalias !36627
  %i.cc = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 4 uses
  store i64 0, ptr %i.cc, align 8, !alias.scope !36628, !noalias !36627
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36629)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !36630
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !36631
  store i8 0, ptr %i.e, align 1, !noalias !36631
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !36631
  store ptr %.sroa.8.0, ptr %i.d, align 8, !noalias !36632
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %.sroa.13.0, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !36632
  %.sroa.652.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %2, ptr %.sroa.652.0..sroa_idx, align 8, !noalias !36632
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %i.r, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !36632
  %.sroa.857.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %1, ptr %.sroa.857.0..sroa_idx, align 8, !noalias !36632
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store ptr %i.s, ptr %.sroa.9.0..sroa_idx, align 8, !noalias !36632
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 2 uses
  store ptr %i.l, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !36633
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !36634
  store ptr %.sroa.8.0, ptr %i.c, align 8, !noalias !36632
  %.sroa.5.0..sroa_idx50 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %.sroa.13.0, ptr %.sroa.5.0..sroa_idx50, align 8, !noalias !36632
  %.sroa.652.0..sroa_idx53 = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store ptr %2, ptr %.sroa.652.0..sroa_idx53, align 8, !noalias !36632
  %.sroa.7.0..sroa_idx55 = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.r, ptr %.sroa.7.0..sroa_idx55, align 8, !noalias !36632
  %.sroa.857.0..sroa_idx58 = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr %1, ptr %.sroa.857.0..sroa_idx58, align 8, !noalias !36632
  %.sroa.9.0..sroa_idx60 = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store ptr %i.s, ptr %.sroa.9.0..sroa_idx60, align 8, !noalias !36632
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !36635
  %i.cd = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %.sroa.13.0, ptr %i.cd, align 8, !noalias !36635
  store ptr %i.e, ptr %i.b, align 8, !noalias !36636
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.sroa.5.0..sroa_idx.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !36636
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %.sroa.652.0..sroa_idx53, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !36636
  %i.ce = invoke noundef i64 @_RNvCsf1gSX8u3EQ2_10rayon_core19current_num_threads()
          to label %.noexc.i.i.i unwind label %bb.aa, !noalias !36627

.noexc.i.i.i:                                     ; preds = %bb.l
  invoke fastcc void @_RINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB8_5slice12IterProducerTjRNtNtCs7tN9tvpkfrg_12typst_layout8document4PageEEINtNtB6_3map11MapConsumerIB2v_INtNtB6_10while_some17WhileSomeConsumerNtNtB6_6extend15ListVecConsumerENCINvNvXs2_NtB8_6resultINtNtCs3oUPovFnLWP_4core6result6ResultppEINtB6_20FromParallelIteratorIB4v_ppEE13from_par_iter2okNtNtCs9fPPV5zPXBl_5typst4args6OutputNtNtCsakL8LGkl72C_4ecow6string9EcoStringE0ENCNvNtB66_7compile12export_images_0EEB66_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.h, i64 noundef %.sroa.13.0, i1 noundef zeroext false, i64 noundef %i.ce, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.sroa.8.0, i64 noundef %.sroa.13.0, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.b)
          to label %.noexc2.i.i.i unwind label %bb.aa, !noalias !36627

.noexc2.i.i.i:                                    ; preds = %.noexc.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !36635
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !36634
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !36631
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !36631
  %i.cf = load ptr, ptr %i.h, align 8, !noalias !36630, !noundef !28
  %i.cg = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.ch = load i64, ptr %i.cg, align 8, !noalias !36630, !noundef !28 ; 4 uses
  %4 = ptrtoint ptr %i.cf to i64
  store i64 %4, ptr %.sroa.0.i.i.i.i, align 8, !noalias !36630
  %i.ci = icmp eq i64 %i.ch, 0
  br i1 %i.ci, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputE7reserveBI_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i38.preheader

.lr.ph.i.i.i.i.i38.preheader:                     ; preds = %.noexc2.i.i.i
  %xtraiter = and i64 %i.ch, 3                    ; 3 uses
  %i.cj = icmp ult i64 %i.ch, 4
  br i1 %i.cj, label %.lr.ph.i.i.i.i.i38.epil.preheader, label %.lr.ph.i.i.i.i.i38.preheader.new

.lr.ph.i.i.i.i.i38.preheader.new:                 ; preds = %.lr.ph.i.i.i.i.i38.preheader
  %unroll_iter = and i64 %i.ch, -4
  br label %.lr.ph.i.i.i.i.i38

.lr.ph.i.i.i.i.i38:                               ; preds = %.lr.ph.i.i.i.i.i38, %.lr.ph.i.i.i.i.i38.preheader.new
  %.sroa.0.08.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i38.preheader.new ], [ %i.dd, %.lr.ph.i.i.i.i.i38 ]
  %.in.i.i.i.i.i = phi ptr [ %.sroa.0.i.i.i.i, %.lr.ph.i.i.i.i.i38.preheader.new ], [ %i.da, %.lr.ph.i.i.i.i.i38 ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.i38.preheader.new ], [ %niter.next.3, %.lr.ph.i.i.i.i.i38 ]
  %i.ck = load ptr, ptr %.in.i.i.i.i.i, align 1, !noalias !36630 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  %i.cm = getelementptr i8, ptr %i.ck, i64 16
  %.val.i.i.i.i.i = load i64, ptr %i.cm, align 8, !noalias !36637, !noundef !28 ; 2 uses
  %i.cn = icmp ult i64 %.val.i.i.i.i.i, 384307168202282326
  call void @llvm.assume(i1 %i.cn)
  %i.co = add i64 %.val.i.i.i.i.i, %.sroa.0.08.i.i.i.i.i
  %i.cp = load ptr, ptr %i.cl, align 8, !noalias !36630 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %i.cr = getelementptr i8, ptr %i.cp, i64 16
  %.val.i.i.i.i.i.1 = load i64, ptr %i.cr, align 8, !noalias !36637, !noundef !28 ; 2 uses
  %i.cs = icmp ult i64 %.val.i.i.i.i.i.1, 384307168202282326
  call void @llvm.assume(i1 %i.cs)
  %i.ct = add i64 %.val.i.i.i.i.i.1, %i.co
  %i.cu = load ptr, ptr %i.cq, align 8, !noalias !36630 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
  %i.cw = getelementptr i8, ptr %i.cu, i64 16
  %.val.i.i.i.i.i.2 = load i64, ptr %i.cw, align 8, !noalias !36637, !noundef !28 ; 2 uses
  %i.cx = icmp ult i64 %.val.i.i.i.i.i.2, 384307168202282326
  call void @llvm.assume(i1 %i.cx)
  %i.cy = add i64 %.val.i.i.i.i.i.2, %i.ct
  %i.cz = load ptr, ptr %i.cv, align 8, !noalias !36630 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 24 ; 2 uses
  %i.db = getelementptr i8, ptr %i.cz, i64 16
  %.val.i.i.i.i.i.3 = load i64, ptr %i.db, align 8, !noalias !36637, !noundef !28 ; 2 uses
  %i.dc = icmp ult i64 %.val.i.i.i.i.i.3, 384307168202282326
  call void @llvm.assume(i1 %i.dc)
  %i.dd = add i64 %.val.i.i.i.i.i.3, %i.cy        ; 3 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RINvYINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list4IterINtNtBa_3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1X_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1V_5accumjNtB3W_3Sum3sumINtB2X_3MapB3_B3x_EE0E0EB1j_.exit.i.i.i.i.unr-lcssa, label %.lr.ph.i.i.i.i.i38

_RINvYINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list4IterINtNtBa_3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1X_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1V_5accumjNtB3W_3Sum3sumINtB2X_3MapB3_B3x_EE0E0EB1j_.exit.i.i.i.i.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i38
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvYINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list4IterINtNtBa_3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1X_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1V_5accumjNtB3W_3Sum3sumINtB2X_3MapB3_B3x_EE0E0EB1j_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i38.epil.preheader

.lr.ph.i.i.i.i.i38.epil.preheader:                ; preds = %_RINvYINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list4IterINtNtBa_3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1X_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1V_5accumjNtB3W_3Sum3sumINtB2X_3MapB3_B3x_EE0E0EB1j_.exit.i.i.i.i.unr-lcssa, %.lr.ph.i.i.i.i.i38.preheader
  %.sroa.0.08.i.i.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.i38.preheader ], [ %i.dd, %_RINvYINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list4IterINtNtBa_3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1X_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1V_5accumjNtB3W_3Sum3sumINtB2X_3MapB3_B3x_EE0E0EB1j_.exit.i.i.i.i.unr-lcssa ]
  %.in.i.i.i.i.i.epil.init = phi ptr [ %.sroa.0.i.i.i.i, %.lr.ph.i.i.i.i.i38.preheader ], [ %i.da, %_RINvYINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list4IterINtNtBa_3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1X_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1V_5accumjNtB3W_3Sum3sumINtB2X_3MapB3_B3x_EE0E0EB1j_.exit.i.i.i.i.unr-lcssa ]
  %lcmp.mod234 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod234)
  br label %.lr.ph.i.i.i.i.i38.epil

.lr.ph.i.i.i.i.i38.epil:                          ; preds = %.lr.ph.i.i.i.i.i38.epil, %.lr.ph.i.i.i.i.i38.epil.preheader
  %.sroa.0.08.i.i.i.i.i.epil = phi i64 [ %i.di, %.lr.ph.i.i.i.i.i38.epil ], [ %.sroa.0.08.i.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.i38.epil.preheader ]
  %.in.i.i.i.i.i.epil = phi ptr [ %i.df, %.lr.ph.i.i.i.i.i38.epil ], [ %.in.i.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.i38.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.i38.epil ], [ 0, %.lr.ph.i.i.i.i.i38.epil.preheader ]
  %i.de = load ptr, ptr %.in.i.i.i.i.i.epil, align 1, !noalias !36630 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  %i.dg = getelementptr i8, ptr %i.de, i64 16
  %.val.i.i.i.i.i.epil = load i64, ptr %i.dg, align 8, !noalias !36637, !noundef !28 ; 2 uses
  %i.dh = icmp ult i64 %.val.i.i.i.i.i.epil, 384307168202282326
  call void @llvm.assume(i1 %i.dh)
  %i.di = add i64 %.val.i.i.i.i.i.epil, %.sroa.0.08.i.i.i.i.i.epil ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvYINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list4IterINtNtBa_3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1X_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1V_5accumjNtB3W_3Sum3sumINtB2X_3MapB3_B3x_EE0E0EB1j_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i38.epil, !llvm.loop !36575

_RINvYINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list4IterINtNtBa_3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1X_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1V_5accumjNtB3W_3Sum3sumINtB2X_3MapB3_B3x_EE0E0EB1j_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i38.epil, %_RINvYINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list4IterINtNtBa_3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1X_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1V_5accumjNtB3W_3Sum3sumINtB2X_3MapB3_B3x_EE0E0EB1j_.exit.i.i.i.i.unr-lcssa
  %.lcssa211 = phi i64 [ %i.dd, %_RINvYINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list4IterINtNtBa_3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1X_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1V_5accumjNtB3W_3Sum3sumINtB2X_3MapB3_B3x_EE0E0EB1j_.exit.i.i.i.i.unr-lcssa ], [ %i.di, %.lr.ph.i.i.i.i.i38.epil ] ; 2 uses
  %.not.i.i.i39 = icmp eq i64 %.lcssa211, 0
  br i1 %.not.i.i.i39, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputE7reserveBI_.exit.i.i.i.i, label %bb.m, !prof !127

bb.m:                                             ; preds = %_RINvYINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list4IterINtNtBa_3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1X_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1V_5accumjNtB3W_3Sum3sumINtB2X_3MapB3_B3x_EE0E0EB1j_.exit.i.i.i.i
  invoke fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i, i64 noundef 0, i64 noundef %.lcssa211, i64 noundef 8, i64 noundef 24)
          to label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputE7reserveBI_.exit.i.i.i.i unwind label %bb.z, !noalias !36638

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputE7reserveBI_.exit.i.i.i.i: ; preds = %bb.m, %_RINvYINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list4IterINtNtBa_3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1X_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1V_5accumjNtB3W_3Sum3sumINtB2X_3MapB3_B3x_EE0E0EB1j_.exit.i.i.i.i, %.noexc2.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !36630
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !36630
  %i.dj = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %.promoted.i.i.i.i = load ptr, ptr %i.g, align 8, !noalias !36630 ; 2 uses
  %.promoted32.i.i.i.i = load ptr, ptr %i.dj, align 8, !noalias !36630
  %.promoted36.i.i.i.i = load i64, ptr %i.dk, align 8, !noalias !36630
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i.i)
  %.not.i40.i.i.i.i = icmp eq ptr %.promoted.i.i.i.i, null
  br i1 %.not.i40.i.i.i.i, label %.thread21.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputE7reserveBI_.exit.i.i.i.i
  %.sroa.7.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  br label %bb.n

.thread21.i.i.i.i:                                ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEEB1c_.exit.i.i.i.i, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputE7reserveBI_.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i.i)
  br label %.loopexit.i40

bb.n:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEEB1c_.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %i.dm = phi ptr [ %.promoted.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.dq, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEEB1c_.exit.i.i.i.i ] ; 4 uses
  %i.dn = phi ptr [ %.promoted32.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.ds, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEEB1c_.exit.i.i.i.i ]
  %i.do = phi i64 [ %.promoted36.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.dt, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEEB1c_.exit.i.i.i.i ]
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  %i.dq = load ptr, ptr %i.dp, align 8, !noalias !36639, !noundef !28 ; 5 uses
  %.not3.i.i.i.i.i = icmp eq ptr %i.dq, null      ; 3 uses
  br i1 %.not3.i.i.i.i.i, label %_RNvMs6_NtNtCs1xwejQucwHj_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEE9pop_frontB1v_.exit.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 32
  store ptr null, ptr %i.dr, align 8, !noalias !36639
  br label %_RNvMs6_NtNtCs1xwejQucwHj_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEE9pop_frontB1v_.exit.i.i.i.i

_RNvMs6_NtNtCs1xwejQucwHj_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEE9pop_frontB1v_.exit.i.i.i.i: ; preds = %bb.o, %bb.n
  %i.ds = phi ptr [ %i.dn, %bb.o ], [ null, %bb.n ] ; 2 uses
  %i.dt = add i64 %i.do, -1                       ; 2 uses
  %.sroa.011.0.copyload12.i.i.i.i = load i64, ptr %i.dm, align 8, !noalias !36640 ; 4 uses
  %.sroa.7.0..sroa_idx13.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx13.i.i.i.i, i64 16, i1 false), !noalias !36640
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull align 8 %i.dm, i64 noundef 40, i64 noundef 8) #56, !noalias !36641
  %.not.i.i.i.i = icmp eq i64 %.sroa.011.0.copyload12.i.i.i.i, -1
  br i1 %.not.i.i.i.i, label %bb.r, label %bb.p

bb.p:                                             ; preds = %_RNvMs6_NtNtCs1xwejQucwHj_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEE9pop_frontB1v_.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !36630
  store i64 %.sroa.011.0.copyload12.i.i.i.i, ptr %i.f, align 8, !noalias !36630
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.i.i.i.i, i64 16, i1 false), !noalias !36630
  %i.du = load ptr, ptr %.sroa.7.0..sroa_idx.i.i.i.i, align 8, !noalias !36630, !nonnull !28, !noundef !28 ; 2 uses
  %i.dv = load i64, ptr %i.dl, align 8, !noalias !36630, !noundef !28 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !36642)
  %i.dw = load i64, ptr %i.cc, align 8, !alias.scope !36643, !noalias !36638, !noundef !28 ; 5 uses
  %i.dx = load i64, ptr %i.i, align 8, !range !37, !alias.scope !36643, !noalias !36638, !noundef !28
  %i.dy = sub i64 %i.dx, %i.dw
  %i.dz = icmp ugt i64 %i.dv, %i.dy
  br i1 %i.dz, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputE7reserveBI_.exit.thread.i.i.i.i.i, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputE7reserveBI_.exit.i.i.i.i.i, !prof !38

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputE7reserveBI_.exit.thread.i.i.i.i.i: ; preds = %bb.p
  invoke fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i, i64 noundef %i.dw, i64 noundef %i.dv, i64 noundef 8, i64 noundef 24)
          to label %.noexc8.i.i.i.i unwind label %bb.x, !noalias !36638

.noexc8.i.i.i.i:                                  ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputE7reserveBI_.exit.thread.i.i.i.i.i
  %i.ea = load i64, ptr %i.cc, align 8, !alias.scope !36644, !noalias !36638, !noundef !28 ; 2 uses
  %i.eb = icmp ult i64 %i.ea, 384307168202282326
  call void @llvm.assume(i1 %i.eb)
  br label %bb.q

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputE7reserveBI_.exit.i.i.i.i.i: ; preds = %bb.p
  %i.ec = icmp ult i64 %i.dw, 384307168202282326
  call void @llvm.assume(i1 %i.ec)
  %.not.i7.i.i.i.i = icmp eq i64 %i.dv, 0
  br i1 %.not.i7.i.i.i.i, label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_.exit.i.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputE7reserveBI_.exit.i.i.i.i.i, %.noexc8.i.i.i.i
  %i.ed = phi i64 [ %i.ea, %.noexc8.i.i.i.i ], [ %i.dw, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputE7reserveBI_.exit.i.i.i.i.i ] ; 2 uses
  %i.ee = load ptr, ptr %i.cb, align 8, !alias.scope !36644, !noalias !36638, !nonnull !28, !noundef !28
  %i.ef = getelementptr inbounds nuw [24 x i8], ptr %i.ee, i64 %i.ed
  %i.eg = mul nuw nsw i64 %i.dv, 24
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ef, ptr nonnull readonly align 8 %i.du, i64 %i.eg, i1 false), !noalias !36645
  br label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_.exit.i.i.i.i.i

bb.r:                                             ; preds = %_RNvMs6_NtNtCs1xwejQucwHj_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEE9pop_frontB1v_.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i.i)
  br i1 %.not3.i.i.i.i.i, label %.loopexit.i40, label %.lr.ph.i.i.i.i.i.i.i42

.lr.ph.i.i.i.i.i.i.i42:                           ; preds = %bb.r, %bb.w
  %i.eh = phi ptr [ %i.ej, %bb.w ], [ %i.dq, %bb.r ] ; 5 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 24
  %i.ej = load ptr, ptr %i.ei, align 8, !noalias !36646, !noundef !28 ; 3 uses
  %.not3.i.i.i.i.i.i.i = icmp eq ptr %i.ej, null  ; 2 uses
  br i1 %.not3.i.i.i.i.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i42
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 32
  store ptr null, ptr %i.ek, align 8, !noalias !36646
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.lr.ph.i.i.i.i.i.i.i42
  call void @llvm.experimental.noalias.scope.decl(metadata !36647)
  call void @llvm.experimental.noalias.scope.decl(metadata !36648)
  %i.el = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %.val.i.i.i.i7.i.i.i.i.i.i.i = load ptr, ptr %i.el, align 8, !alias.scope !36649, !noalias !36646, !nonnull !28, !noundef !28 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %.val1.i.i.i.i8.i.i.i.i.i.i.i = load i64, ptr %i.em, align 8, !alias.scope !36649, !noalias !36646, !noundef !28 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !36650)
  %i.en = icmp eq i64 %.val1.i.i.i.i8.i.i.i.i.i.i.i, 0
  br i1 %i.en, label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_.exit.i.i.i.i12.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i9.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i9.i.i.i.i.i.i.i:                ; preds = %bb.t, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs9fPPV5zPXBl_5typst4args6OutputEBF_.exit.i.i.i.i.i.i11.i.i.i.i.i.i.i
  %.sroa.0.09.i.i.i.i.i.i10.i.i.i.i.i.i.i = phi i64 [ %i.ep, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs9fPPV5zPXBl_5typst4args6OutputEBF_.exit.i.i.i.i.i.i11.i.i.i.i.i.i.i ], [ 0, %bb.t ] ; 2 uses
  %i.eo = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i.i.i7.i.i.i.i.i.i.i, i64 %.sroa.0.09.i.i.i.i.i.i10.i.i.i.i.i.i.i ; 2 uses
  %i.ep = add nuw nsw i64 %.sroa.0.09.i.i.i.i.i.i10.i.i.i.i.i.i.i, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !36651)
  %i.eq = load i64, ptr %i.eo, align 8, !range !55, !alias.scope !36652, !noalias !36653, !noundef !28 ; 2 uses
  %i.er = icmp sgt i64 %i.eq, 0
  br i1 %i.er, label %bb.u, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs9fPPV5zPXBl_5typst4args6OutputEBF_.exit.i.i.i.i.i.i11.i.i.i.i.i.i.i
end_hunk_4
begin_hunk_5_@llvm.vector.reduce.add.v2i64
!37104 = distinct !{!37104, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown3raw8RawTableTNtNtCs5PEMdK7bMAG_12typst_syntax4path6FileIdNtNtB1m_6source6SourceEEECs9fPPV5zPXBl_5typst"}
!37105 = distinct !{!37105, !37104, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown3raw8RawTableTNtNtCs5PEMdK7bMAG_12typst_syntax4path6FileIdNtNtB1m_6source6SourceEEECs9fPPV5zPXBl_5typst: argument 0"}
!37106 = distinct !{!37106, !"_RNvXsg_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTNtNtCs5PEMdK7bMAG_12typst_syntax4path6FileIdNtNtBT_6source6SourceEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs9fPPV5zPXBl_5typst"}
!37107 = distinct !{!37107, !37106, !"_RNvXsg_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTNtNtCs5PEMdK7bMAG_12typst_syntax4path6FileIdNtNtBT_6source6SourceEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs9fPPV5zPXBl_5typst: argument 0"}
!37108 = distinct !{!37108, !"_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs5PEMdK7bMAG_12typst_syntax4path6FileIdNtNtB1h_6source6SourceENtNtCs1xwejQucwHj_5alloc5alloc6GlobalECs9fPPV5zPXBl_5typst"}
!37109 = distinct !{!37109, !37108, !"_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs5PEMdK7bMAG_12typst_syntax4path6FileIdNtNtB1h_6source6SourceENtNtCs1xwejQucwHj_5alloc5alloc6GlobalECs9fPPV5zPXBl_5typst: argument 0"}
!37110 = distinct !{!37110, !"_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs5PEMdK7bMAG_12typst_syntax4path6FileIdNtNtB1e_6source6SourceEECs9fPPV5zPXBl_5typst"}
!37111 = distinct !{!37111, !37110, !"_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs5PEMdK7bMAG_12typst_syntax4path6FileIdNtNtB1e_6source6SourceEECs9fPPV5zPXBl_5typst: argument 0"}
!37112 = distinct !{!37112, !"_RNvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_12RawIterRangeTNtNtCs5PEMdK7bMAG_12typst_syntax4path6FileIdNtNtBY_6source6SourceEE3newCs9fPPV5zPXBl_5typst"}
!37113 = distinct !{!37113, !37112, !"_RNvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_12RawIterRangeTNtNtCs5PEMdK7bMAG_12typst_syntax4path6FileIdNtNtBY_6source6SourceEE3newCs9fPPV5zPXBl_5typst: argument 0"}
!37114 = distinct !{!37114, !"_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs5PEMdK7bMAG_12typst_syntax4path6FileIdNtNtBZ_6source6SourceEE9next_implKb0_ECs9fPPV5zPXBl_5typst"}
!37115 = distinct !{!37115, !37114, !"_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs5PEMdK7bMAG_12typst_syntax4path6FileIdNtNtBZ_6source6SourceEE9next_implKb0_ECs9fPPV5zPXBl_5typst: argument 0"}
!37116 = distinct !{!37116, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCs5PEMdK7bMAG_12typst_syntax4path6FileIdNtNtBG_6source6SourceEECs9fPPV5zPXBl_5typst"}
!37117 = distinct !{!37117, !37116, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCs5PEMdK7bMAG_12typst_syntax4path6FileIdNtNtBG_6source6SourceEECs9fPPV5zPXBl_5typst: argument 0"}
!37118 = distinct !{!37118, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax6source6SourceECs9fPPV5zPXBl_5typst"}
!37119 = distinct !{!37119, !37118, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax6source6SourceECs9fPPV5zPXBl_5typst: argument 0"}
!37120 = distinct !{!37120, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtCs5PEMdK7bMAG_12typst_syntax6source11SourceInnerEEECs9fPPV5zPXBl_5typst"}
!37121 = distinct !{!37121, !37120, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtCs5PEMdK7bMAG_12typst_syntax6source11SourceInnerEEECs9fPPV5zPXBl_5typst: argument 0"}
!37122 = distinct !{!37122, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtCs5PEMdK7bMAG_12typst_syntax6source11SourceInnerEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs9fPPV5zPXBl_5typst"}
!37123 = distinct !{!37123, !37122, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtCs5PEMdK7bMAG_12typst_syntax6source11SourceInnerEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs9fPPV5zPXBl_5typst: argument 0"}
!37124 = !{!36667}
!37125 = !{!36667, !36669, !36668}
!37126 = !{!36677, !36675, !36673, !36671, !36667, !36669, !36668}
!37127 = !{!36671, !36667, !36669, !36668}
!37128 = !{!36679, !36671, !36667, !36668}
!37129 = !{!36679, !36671, !36667, !36669, !36668}
!37130 = !{!36667, !36668}
!37131 = !{!36683, !36681}
!37132 = !{!36687, !36685, !36667, !36668}
!37133 = !{!36669, !36668}
!37134 = !{!36691, !36689, !36667, !36668}
!37135 = !{!36693}
!37136 = !{!36695}
!37137 = !{!36697}
!37138 = !{!36699}
!37139 = !{!36701}
!37140 = !{!36703}
!37141 = !{!36703, !36701, !36699, !36697, !36695, !36693}
!37142 = !{!36705}
!37143 = !{!36705, !36703, !36701, !36699, !36697, !36695, !36693}
!37144 = !{!36707, !36705, !36703, !36701, !36699, !36697, !36695, !36693, !36667, !36668}
!37145 = !{!36709, !36705, !36703, !36701, !36699, !36697, !36695, !36693, !36667, !36668}
!37146 = !{!36711}
!37147 = !{!36713}
!37148 = !{!36715}
!37149 = !{!36717}
!37150 = !{!36717, !36715, !36713, !36711}
!37151 = !{!36705, !36703, !36701, !36699, !36697, !36695, !36693, !36667, !36668}
!37152 = !{!36717, !36715, !36713, !36711, !36705, !36703, !36701, !36699, !36697, !36695, !36693, !36667, !36668}
!37153 = !{!36719}
!37154 = !{!36728, !36719, !36726, !36725, !36723, !36722, !36721, !36667, !36668}
!37155 = !{!36728, !36719, !36726, !36725, !36723, !36722, !36721, !36667, !36669, !36668}
!37156 = !{!36726, !36725, !36723, !36722, !36721, !36667, !36668}
!37157 = !{!36723}
!37158 = !{!36722}
!37159 = !{!36731, !36719, !36729, !36726, !36725, !36723, !36722, !36721, !36667, !36668}
!37160 = !{!36719, !36729, !36726, !36725, !36723, !36722, !36721, !36667, !36668}
!37161 = !{!36733, !36719, !36729, !36726, !36725, !36723, !36722, !36721, !36667, !36668}
!37162 = !{!36733, !36719, !36729, !36726, !36725, !36723, !36722, !36721, !36667, !36669, !36668}
!37163 = !{!36723, !36722, !36721, !36667, !36668}
!37164 = !{!36719, !36726, !36723, !36722, !36667, !36668}
!37165 = !{!36723, !36721, !36667, !36669, !36668}
!37166 = !{!36723, !36722}
!37167 = !{!36721, !36667, !36669, !36668}
!37168 = !{!36735}
!37169 = !{!36737}
!37170 = !{!36737, !36735, !36667, !36669, !36668}
!37171 = !{!36744, !36742, !36740, !36739, !36737, !36735, !36667, !36668}
!37172 = !{!36747, !36746, !36740, !36739, !36737, !36735, !36667, !36669, !36668}
!37173 = !{!36737, !36735}
!37174 = !{!36753, !36751, !36749}
!37175 = !{!36755, !36754, !36667, !36669, !36668}
!37176 = !{!36759, !36757, !36737, !36735, !36667, !36668}
!37177 = !{!36761, !36737, !36735, !36667, !36668}
!37178 = !{!36737, !36735, !36667, !36668}
!37179 = !{!36763}
!37180 = !{!36765}
!37181 = !{!36765, !36763, !36737, !36735, !36667, !36669, !36668}
!37182 = !{!36772, !36770, !36768, !36767, !36765, !36763, !36737, !36735, !36667, !36668}
!37183 = !{!36775, !36774, !36768, !36767, !36765, !36763, !36737, !36735, !36667, !36669, !36668}
!37184 = !{!36765, !36763}
!37185 = !{!36765, !36763, !36737, !36735, !36667, !36668}
!37186 = !{!36779, !36777, !36765, !36763, !36737, !36735, !36667, !36668}
!37187 = !{!36781, !36780, !36667, !36668}
!37188 = !{!36782}
!37189 = !{!36781, !36780, !36667, !36669, !36668}
!37190 = !{!36781}
!37191 = !{!36780}
!37192 = !{!36783}
!37193 = !{!36753, !36783, !36780}
!37194 = !{!36781, !36782, !36667, !36669, !36668}
!37195 = !{!"branch_weights", !"expected", i32 3489654, i32 2143993994}
!37196 = !{!36781, !36782, !36667, !36668}
!37197 = !{!36783, !36780}
!37198 = !{!36783, !36781, !36780, !36782, !36667, !36668}
!37199 = !{!36781, !36780}
!37200 = !{!36782, !36667, !36669, !36668}
!37201 = !{!36785}
!37202 = !{!36785, !36782}
!37203 = !{!36785, !36781, !36780, !36782, !36667, !36668}
!37204 = !{!36788, !36787, !36667, !36669, !36668}
!37205 = !{!36791, !36790, !36667, !36668}
!37206 = !{!36793}
!37207 = !{!36794}
!37208 = !{!36795, !36793}
!37209 = !{!36794, !36667, !36669, !36668}
!37210 = !{!36795}
!37211 = !{!36793, !36794, !36667, !36669, !36668}
!37212 = !{!36795, !36794}
!37213 = !{!36793, !36667, !36669, !36668}
!37214 = !{!36797}
!37215 = !{!36798}
!37216 = !{!36800}
!37217 = !{!36801}
!37218 = !{!36797, !36798, !36667, !36669, !36668}
!37219 = !{!36800, !36801, !36797, !36798, !36667, !36669, !36668}
!37220 = !{!36800, !36797, !36667, !36668}
!37221 = !{!36803, !36800, !36801, !36797, !36798, !36667, !36668}
!37222 = !{!36800, !36797}
!37223 = !{!36801, !36798, !36667, !36669, !36668}
!37224 = !{!36801, !36798}
!37225 = !{!36800, !36797, !36667, !36669, !36668}
!37226 = !{!36807, !36805, !36800, !36801, !36797, !36798, !36667, !36668}
!37227 = !{!36811, !36809, !36800, !36801, !36797, !36798, !36667, !36668}
!37228 = !{!36800, !36801, !36797, !36798, !36667, !36668}
!37229 = !{!36813}
!37230 = !{!36814}
!37231 = !{!36816}
!37232 = !{!36817}
!37233 = !{!36813, !36814, !36800, !36801, !36797, !36798, !36667, !36669, !36668}
!37234 = !{!36816, !36813, !36800, !36801, !36797, !36798, !36667, !36668}
!37235 = !{!36817, !36814}
!37236 = !{!36816, !36813, !36800, !36801, !36797, !36798, !36667, !36669, !36668}
!37237 = !{!36821, !36819, !36816, !36817, !36813, !36814, !36800, !36801, !36797, !36798, !36667, !36668}
!37238 = !{!36816, !36817, !36813, !36814, !36800, !36801, !36797, !36798, !36667, !36669, !36668}
!37239 = !{!36816, !36813}
!37240 = !{!36817, !36814, !36800, !36801, !36797, !36798, !36667, !36669, !36668}
!37241 = !{!36825, !36823, !36816, !36817, !36813, !36814, !36800, !36801, !36797, !36798, !36667, !36668}
!37242 = !{!36827, !36817, !36814}
!37243 = !{!36828, !36816, !36813, !36800, !36801, !36797, !36798, !36667, !36669, !36668}
!37244 = !{!36817, !36814, !36800, !36801, !36797, !36798, !36667, !36668}
!37245 = !{!36816, !36817, !36813, !36814, !36800, !36801, !36797, !36798, !36667, !36668}
!37246 = !{!36832, !36830, !36816, !36817, !36813, !36814, !36800, !36801, !36797, !36798, !36667, !36668}
!37247 = !{!36836, !36834, !36800, !36801, !36797, !36798, !36667, !36668}
!37248 = !{!36841, !36839, !36837}
!37249 = !{!36843, !36842, !36667, !36669, !36668}
!37250 = !{!36844}
!37251 = !{!36791, !36790, !36667, !36669, !36668}
!37252 = !{!36791}
!37253 = !{!36790}
!37254 = !{!36845}
!37255 = !{!36841, !36845, !36790}
!37256 = !{!36791, !36844, !36667, !36669, !36668}
!37257 = !{!"branch_weights", !"expected", i32 1717157, i32 2145766491}
!37258 = !{!36791, !36844, !36667, !36668}
!37259 = !{!36845, !36790}
!37260 = !{!36845, !36791, !36790, !36844, !36667, !36668}
!37261 = !{!36791, !36790}
!37262 = !{!36844, !36667, !36669, !36668}
!37263 = !{!36847}
!37264 = !{!36847, !36844}
!37265 = !{!36847, !36791, !36790, !36844, !36667, !36668}
!37266 = !{!36849}
!37267 = !{!36850}
!37268 = !{!36851}
!37269 = !{!36849, !36850, !36852, !36851, !36667, !36669, !36668}
!37270 = !{!36849, !36852, !36851, !36667, !36669, !36668}
!37271 = !{!36854}
!37272 = !{!36854, !36856, !36855, !36849, !36850, !36852, !36851, !36667, !36669, !36668}
!37273 = !{!36854, !36856, !36855, !36849, !36850, !36852, !36667, !36669, !36668}
!37274 = !{!36854, !36849, !36851, !36667, !36668}
!37275 = !{!36854, !36849}
!37276 = !{!36856, !36855, !36850, !36852, !36851, !36667, !36669, !36668}
!37277 = !{!36859, !36858, !36854, !36849, !36851, !36667, !36668}
!37278 = !{!36868, !36866, !36865, !36863, !36861, !36854, !36849, !36851, !36667, !36668}
!37279 = !{!36866, !36863, !36861, !36854, !36849, !36851, !36667, !36668}
!37280 = !{!36872, !36870, !36854, !36849, !36851, !36667, !36668}
!37281 = !{!36875, !36874, !36854, !36856, !36855, !36849, !36850, !36852, !36851, !36667, !36669, !36668}
!37282 = !{!36879, !36877, !36854, !36849, !36851, !36667, !36668}
!37283 = !{!36883, !36881, !36854, !36849, !36851, !36667, !36668}
!37284 = !{!36885}
!37285 = !{!36886, !36854, !36856, !36855, !36849, !36850, !36852, !36851, !36667, !36669, !36668}
!37286 = !{!36886, !36854, !36849, !36851, !36667, !36668}
!37287 = !{!36885, !36854, !36849, !36851, !36667, !36668}
!37288 = !{!36885, !36886, !36854, !36849, !36851, !36667, !36668}
!37289 = !{!36890, !36888, !36854, !36849, !36851, !36667, !36668}
!37290 = !{!36894, !36892, !36854, !36849, !36851, !36667, !36668}
!37291 = !{!36897, !36896, !36854, !36856, !36855, !36849, !36850, !36852, !36851, !36667, !36669, !36668}
!37292 = !{!36899}
!37293 = !{!36900, !36854, !36849, !36851, !36667, !36668}
!37294 = !{!36899, !36854, !36849, !36851, !36667, !36668}
!37295 = !{!36902}
!37296 = !{!36903, !36854, !36849, !36851, !36667, !36668}
!37297 = !{!36902, !36854, !36849, !36851, !36667, !36668}
!37298 = !{!36905}
!37299 = !{!36906, !36854, !36849, !36851, !36667, !36668}
!37300 = !{!36905, !36854, !36849, !36851, !36667, !36668}
!37301 = !{!36908}
!37302 = !{!36910, !36909, !36854, !36849, !36851, !36667, !36668}
!37303 = !{!36912}
!37304 = !{!"branch_weights", !"expected", i32 1609806, i32 2145873842}
!37305 = !{!36913, !36854, !36849, !36851, !36667, !36668}
!37306 = !{!36912, !36913, !36854, !36849, !36851, !36667, !36668}
!37307 = !{!36912, !36854, !36849, !36851, !36667, !36668}
!37308 = !{!36849, !36850, !36852, !36667, !36669, !36668}
!37309 = !{!36915, !36854, !36849, !36851, !36667, !36668}
!37310 = !{!36917}
!37311 = !{!36919}
!37312 = !{!36921}
!37313 = !{!36921, !36919, !36917}
!37314 = !{!36921, !36919, !36917, !36854, !36849, !36851, !36667, !36668}
!37315 = !{!36925, !36923}
!37316 = !{!36929, !36927, !36854, !36849, !36851, !36667, !36668}
!37317 = !{!36933, !36931, !36854, !36849, !36851, !36667, !36668}
!37318 = !{!36937, !36935, !36854, !36849, !36851, !36667, !36668}
!37319 = !{!36939}
!37320 = !{!36941}
!37321 = !{!36943}
!37322 = !{!36943, !36941, !36939}
!37323 = !{!36943, !36941, !36939, !36854, !36849, !36851, !36667, !36668}
!37324 = !{!36949, !36947, !36945, !36854, !36849, !36851, !36667, !36668}
!37325 = !{!36958, !36957, !36955, !36954, !36952, !36947, !36945, !36854, !36849, !36851, !36667, !36668}
!37326 = !{!36960, !36958, !36957, !36955, !36954, !36952, !36947, !36945, !36854, !36849, !36851, !36667, !36668}
!37327 = !{!36952, !36947, !36945, !36854, !36849, !36851, !36667, !36668}
!37328 = !{!36963, !36962, !36955, !36954, !36952, !36947, !36945, !36854, !36849, !36851, !36667, !36668}
!37329 = !{!36966}
!37330 = !{!36967, !36945, !36854, !36849, !36851, !36667, !36668}
!37331 = !{!36969}
!37332 = !{!36971}
!37333 = !{!36973}
!37334 = !{!36988, !36986, !36984, !36982, !36980, !36978, !36976, !36975, !36854, !36849, !36851, !36667, !36668}
!37335 = !{!36997, !36996, !36994, !36993, !36991, !36986, !36984, !36982, !36980, !36978, !36976, !36975, !36854, !36849, !36851, !36667, !36668}
!37336 = !{!36999, !36997, !36996, !36994, !36993, !36991, !36986, !36984, !36982, !36980, !36978, !36976, !36975, !36854, !36849, !36851, !36667, !36668}
!37337 = !{!36991, !36986, !36984, !36982, !36980, !36978, !36976, !36975, !36854, !36849, !36851, !36667, !36668}
!37338 = !{!37002, !37001, !36994, !36993, !36991, !36986, !36984, !36982, !36980, !36978, !36976, !36975, !36854, !36849, !36851, !36667, !36668}
!37339 = !{!37005}
!37340 = !{!37006, !36984, !36982, !36980, !36978, !36976, !36975, !36854, !36849, !36851, !36667, !36668}
!37341 = !{!37008, !36854, !36849, !36851, !36667, !36668}
!37342 = !{!37010}
!37343 = !{!37012}
!37344 = !{!37014}
!37345 = !{!37016}
!37346 = !{!37018}
!37347 = !{!37018, !37016, !37014}
!37348 = !{!37018, !37016, !37014, !36854, !36849, !36851, !36667, !36668}
!37349 = !{!37025, !37023, !37021, !37020, !36854, !36849, !36851, !36667, !36668}
!37350 = !{!37027}
!37351 = !{!37029}
!37352 = !{!37031}
!37353 = !{!37031, !37029, !37027}
!37354 = !{!37031, !37029, !37027, !36854, !36849, !36851, !36667, !36668}
!37355 = !{!37033}
!37356 = !{!37035}
!37357 = !{!37035, !37033}
!37358 = !{!37035, !37033, !36854, !36849, !36851, !36667, !36668}
!37359 = !{!37037}
!37360 = !{!37039}
!37361 = !{!37039, !37037}
!37362 = !{!37039, !37037, !36854, !36849, !36851, !36667, !36668}
!37363 = !{!37041}
!37364 = !{!37043}
!37365 = !{!37043, !37041}
!37366 = !{!37043, !37041, !36854, !36849, !36851, !36667, !36668}
!37367 = !{!36851, !36667, !36668}
!37368 = !{!37045}
!37369 = !{!37045, !37047, !37046, !36667, !36668}
!37370 = !{!37049, !37045, !36667, !36668}
!37371 = !{!37045, !36667, !36668}
!37372 = !{!37047, !37046, !36667, !36668}
!37373 = !{!37058, !37056, !37055, !37053, !37051, !37045, !36667, !36668}
!37374 = !{!37056, !37053, !37051, !37045, !36667, !36668}
!37375 = !{!37062, !37060, !37045, !36667, !36668}
!37376 = !{!37065, !37064, !37045, !37047, !37046, !36667, !36668}
!37377 = !{!37069, !37067, !37045, !36667, !36668}
!37378 = !{!37073, !37071, !37045, !36667, !36668}
!37379 = !{!37077, !37075, !37045, !36667, !36668}
!37380 = !{!37081, !37079, !37045, !36667, !36668}
!37381 = !{!37085, !37083, !37045, !36667, !36668}
!37382 = !{!37089, !37087, !37045, !36667, !36668}
!37383 = !{!37093, !37091, !37045, !36667, !36668}
!37384 = !{!37097, !37095, !36667, !36668}
!37385 = !{!37099}
!37386 = !{!37101}
!37387 = !{!37103}
!37388 = !{!37105}
!37389 = !{!37107}
!37390 = !{!37109}
!37391 = !{!37109, !37107, !37105, !37103, !37101, !37099}
!37392 = !{!37111}
!37393 = !{!37111, !37109, !37107, !37105, !37103, !37101, !37099}
!37394 = !{!37113, !37111, !37109, !37107, !37105, !37103, !37101, !37099, !36667, !36668}
!37395 = !{!37115, !37111, !37109, !37107, !37105, !37103, !37101, !37099, !36667, !36668}
!37396 = !{!37117}
!37397 = !{!37119}
!37398 = !{!37121}
!37399 = !{!37123}
!37400 = !{!37123, !37121, !37119, !37117}
!37401 = !{!37111, !37109, !37107, !37105, !37103, !37101, !37099, !36667, !36668}
!37402 = !{!37123, !37121, !37119, !37117, !37111, !37109, !37107, !37105, !37103, !37101, !37099, !36667, !36668}
!37403 = distinct !{!37403, !"_RINvCs8P8NHUiFzuE_4open13with_detachedRNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrReECs9fPPV5zPXBl_5typst"}
!37404 = distinct !{!37404, !37403, !"_RINvCs8P8NHUiFzuE_4open13with_detachedRNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrReECs9fPPV5zPXBl_5typst: argument 1"}
!37405 = distinct !{!37405, !37403, !"_RINvCs8P8NHUiFzuE_4open13with_detachedRNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrReECs9fPPV5zPXBl_5typst: argument 0"}
!37406 = distinct !{!37406, !"_RINvNtCs8P8NHUiFzuE_4open4unix12with_commandRNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrReECs9fPPV5zPXBl_5typst"}
!37407 = distinct !{!37407, !37406, !"_RINvNtCs8P8NHUiFzuE_4open4unix12with_commandRNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrReECs9fPPV5zPXBl_5typst: argument 2"}
!37408 = distinct !{!37408, !37406, !"_RINvNtCs8P8NHUiFzuE_4open4unix12with_commandRNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrReECs9fPPV5zPXBl_5typst: argument 1"}
!37409 = distinct !{!37409, !37406, !"_RINvNtCs8P8NHUiFzuE_4open4unix12with_commandRNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrReECs9fPPV5zPXBl_5typst: argument 0"}
!37410 = distinct !{!37410, !"_RNvXs1_NtCs3oUPovFnLWP_4core7convertReINtB5_4IntoNtNtCs1xwejQucwHj_5alloc6string6StringE4intoCs9fPPV5zPXBl_5typst"}
!37411 = distinct !{!37411, !37410, !"_RNvXs1_NtCs3oUPovFnLWP_4core7convertReINtB5_4IntoNtNtCs1xwejQucwHj_5alloc6string6StringE4intoCs9fPPV5zPXBl_5typst: argument 1"}
!37412 = distinct !{!37412, !37410, !"_RNvXs1_NtCs3oUPovFnLWP_4core7convertReINtB5_4IntoNtNtCs1xwejQucwHj_5alloc6string6StringE4intoCs9fPPV5zPXBl_5typst: argument 0"}
!37413 = distinct !{!37413, !"_RNvXsK_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringINtNtCs3oUPovFnLWP_4core7convert4FromReE4from"}
!37414 = distinct !{!37414, !37413, !"_RNvXsK_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringINtNtCs3oUPovFnLWP_4core7convert4FromReE4from: argument 1"}
!37415 = distinct !{!37415, !37413, !"_RNvXsK_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringINtNtCs3oUPovFnLWP_4core7convert4FromReE4from: argument 0"}
!37416 = distinct !{!37416, !"_RINvXs_NvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs9fPPV5zPXBl_5typst"}
!37417 = distinct !{!37417, !37416, !"_RINvXs_NvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs9fPPV5zPXBl_5typst: argument 1"}
!37418 = distinct !{!37418, !37416, !"_RINvXs_NvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs9fPPV5zPXBl_5typst: argument 0"}
!37419 = distinct !{!37419, !"_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9fPPV5zPXBl_5typst"}
!37420 = distinct !{!37420, !37419, !"_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9fPPV5zPXBl_5typst: argument 0"}
!37421 = distinct !{!37421, !"_RINvMsi_NtCsaL1QbXo9JQH_3std7processNtB6_7Command3newNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst"}
!37422 = distinct !{!37422, !37421, !"_RINvMsi_NtCsaL1QbXo9JQH_3std7processNtB6_7Command3newNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst: argument 1"}
!37423 = distinct !{!37423, !37421, !"_RINvMsi_NtCsaL1QbXo9JQH_3std7processNtB6_7Command3newNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst: argument 0"}
!37424 = distinct !{!37424, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst"}
!37425 = distinct !{!37425, !37424, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst: argument 0"}
!37426 = distinct !{!37426, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs9fPPV5zPXBl_5typst"}
!37427 = distinct !{!37427, !37426, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs9fPPV5zPXBl_5typst: argument 0"}
!37428 = distinct !{!37428, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst"}
!37429 = distinct !{!37429, !37428, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst: argument 0"}
!37430 = distinct !{!37430, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs9fPPV5zPXBl_5typst"}
!37431 = distinct !{!37431, !37430, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs9fPPV5zPXBl_5typst: argument 0"}
!37432 = distinct !{!37432, !"_RINvCs8P8NHUiFzuE_4open13that_detachedRNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrECs9fPPV5zPXBl_5typst"}
!37433 = distinct !{!37433, !37432, !"_RINvCs8P8NHUiFzuE_4open13that_detachedRNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrECs9fPPV5zPXBl_5typst: argument 0"}
!37434 = distinct !{!37434, !"_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsaL1QbXo9JQH_3std7process7CommandENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst"}
!37435 = distinct !{!37435, !37434, !"_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsaL1QbXo9JQH_3std7process7CommandENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst: argument 1"}
!37436 = distinct !{!37436, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs9fPPV5zPXBl_5typst"}
!37437 = distinct !{!37437, !37436, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs9fPPV5zPXBl_5typst: argument 0"}
!37438 = distinct !{!37438, !"_RINvNtNtNtCs3oUPovFnLWP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs9fPPV5zPXBl_5typst"}
!37439 = distinct !{!37439, !37438, !"_RINvNtNtNtCs3oUPovFnLWP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs9fPPV5zPXBl_5typst: argument 0"}
!37440 = distinct !{!37440, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs9fPPV5zPXBl_5typst"}
!37441 = distinct !{!37441, !37440, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs9fPPV5zPXBl_5typst: argument 0"}
!37442 = distinct !{!37442, !"_RINvNtNtNtCs3oUPovFnLWP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs9fPPV5zPXBl_5typst"}
!37443 = distinct !{!37443, !37442, !"_RINvNtNtNtCs3oUPovFnLWP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs9fPPV5zPXBl_5typst: argument 0"}
!37444 = distinct !{!37444, !"_RNCNvNtCs9fPPV5zPXBl_5typst7compile9open_path0B5_"}
!37445 = distinct !{!37445, !37444, !"_RNCNvNtCs9fPPV5zPXBl_5typst7compile9open_path0B5_: argument 1"}
!37446 = distinct !{!37446, !37444, !"_RNCNvNtCs9fPPV5zPXBl_5typst7compile9open_path0B5_: argument 0"}
!37447 = distinct !{!37447, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs9fPPV5zPXBl_5typst"}
!37448 = distinct !{!37448, !37447, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs9fPPV5zPXBl_5typst: argument 0"}
!37449 = distinct !{!37449, !"_RINvNtNtNtCs3oUPovFnLWP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs9fPPV5zPXBl_5typst"}
!37450 = distinct !{!37450, !37449, !"_RINvNtNtNtCs3oUPovFnLWP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs9fPPV5zPXBl_5typst: argument 0"}
!37451 = distinct !{!37451, !"_RNCNvNtCs9fPPV5zPXBl_5typst7compile9open_paths_0B5_"}
!37452 = distinct !{!37452, !37451, !"_RNCNvNtCs9fPPV5zPXBl_5typst7compile9open_paths_0B5_: argument 0"}
!37453 = distinct !{!37453, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs9fPPV5zPXBl_5typst"}
!37454 = distinct !{!37454, !37453, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs9fPPV5zPXBl_5typst: argument 0"}
!37455 = distinct !{!37455, !"_RINvNtNtNtCs3oUPovFnLWP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs9fPPV5zPXBl_5typst"}
!37456 = distinct !{!37456, !37455, !"_RINvNtNtNtCs3oUPovFnLWP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs9fPPV5zPXBl_5typst: argument 0"}
!37457 = distinct !{!37457, !"_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtB8_6borrow3CoweEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB22_5slice4iter4IterNtNtCsaL1QbXo9JQH_3std7process7CommandENCNCNvNtCs9fPPV5zPXBl_5typst7compile9open_paths_00EE9from_iterB3T_"}
!37458 = distinct !{!37458, !37457, !"_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtB8_6borrow3CoweEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB22_5slice4iter4IterNtNtCsaL1QbXo9JQH_3std7process7CommandENCNCNvNtCs9fPPV5zPXBl_5typst7compile9open_paths_00EE9from_iterB3T_: argument 0"}
!37459 = distinct !{!37459, !"_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9fPPV5zPXBl_5typst"}
!37460 = distinct !{!37460, !37459, !"_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9fPPV5zPXBl_5typst: argument 0"}
!37461 = distinct !{!37461, !"_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB6_3VecINtNtB8_6borrow3CoweEEINtB4_10SpecExtendBT_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterNtNtCsaL1QbXo9JQH_3std7process7CommandENCNCNvNtCs9fPPV5zPXBl_5typst7compile9open_paths_00EE11spec_extendB3A_"}
!37462 = distinct !{!37462, !37461, !"_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB6_3VecINtNtB8_6borrow3CoweEEINtB4_10SpecExtendBT_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterNtNtCsaL1QbXo9JQH_3std7process7CommandENCNCNvNtCs9fPPV5zPXBl_5typst7compile9open_paths_00EE11spec_extendB3A_: argument 0"}
!37463 = distinct !{!37463, !"_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecINtNtB8_6borrow3CoweEE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB1r_5slice4iter4IterNtNtCsaL1QbXo9JQH_3std7process7CommandENCNCNvNtCs9fPPV5zPXBl_5typst7compile9open_paths_00EEB3i_"}
!37464 = distinct !{!37464, !37463, !"_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecINtNtB8_6borrow3CoweEE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB1r_5slice4iter4IterNtNtCsaL1QbXo9JQH_3std7process7CommandENCNCNvNtCs9fPPV5zPXBl_5typst7compile9open_paths_00EEB3i_: argument 0"}
!37465 = distinct !{!37465, !"_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterNtNtCsaL1QbXo9JQH_3std7process7CommandENCNCNvNtCs9fPPV5zPXBl_5typst7compile9open_paths_00ENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB3z_3VecINtNtB3B_6borrow3CoweEE14extend_trustedB3_E0EB22_"}
!37466 = distinct !{!37466, !37465, !"_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterNtNtCsaL1QbXo9JQH_3std7process7CommandENCNCNvNtCs9fPPV5zPXBl_5typst7compile9open_paths_00ENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB3z_3VecINtNtB3B_6borrow3CoweEE14extend_trustedB3_E0EB22_: argument 0"}
!37467 = distinct !{!37467, !"_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCsaL1QbXo9JQH_3std7process7CommandENCNCNvNtCs9fPPV5zPXBl_5typst7compile9open_paths_00ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2P_8for_each4callINtNtCs1xwejQucwHj_5alloc6borrow3CoweENCINvMsk_NtB3X_3vecINtB4D_3VecB3S_E14extend_trustedBN_E0E0EB28_"}
!37468 = distinct !{!37468, !37467, !"_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCsaL1QbXo9JQH_3std7process7CommandENCNCNvNtCs9fPPV5zPXBl_5typst7compile9open_paths_00ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2P_8for_each4callINtNtCs1xwejQucwHj_5alloc6borrow3CoweENCINvMsk_NtB3X_3vecINtB4D_3VecB3S_E14extend_trustedBN_E0E0EB28_: argument 0"}
!37469 = distinct !{!37469, !"_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCsaL1QbXo9JQH_3std7process7CommandENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1z_8adapters3map8map_foldRBQ_INtNtCs1xwejQucwHj_5alloc6borrow3CoweEuNCNCNvNtCs9fPPV5zPXBl_5typst7compile9open_paths_00NCINvNvB1t_8for_each4callB2R_NCINvMsk_NtB2W_3vecINtB4U_3VecB2R_E14extend_trustedINtB2j_3MapBF_B3u_EE0E0E0EB3C_"}
!37470 = distinct !{!37470, !37469, !"_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCsaL1QbXo9JQH_3std7process7CommandENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1z_8adapters3map8map_foldRBQ_INtNtCs1xwejQucwHj_5alloc6borrow3CoweEuNCNCNvNtCs9fPPV5zPXBl_5typst7compile9open_paths_00NCINvNvB1t_8for_each4callB2R_NCINvMsk_NtB2W_3vecINtB4U_3VecB2R_E14extend_trustedINtB2j_3MapBF_B3u_EE0E0E0EB3C_: argument 0"}
!37471 = distinct !{!37471, !"_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCsaL1QbXo9JQH_3std7process7CommandINtNtCs1xwejQucwHj_5alloc6borrow3CoweEuNCNCNvNtCs9fPPV5zPXBl_5typst7compile9open_paths_00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1x_NCINvMsk_NtB1C_3vecINtB44_3VecB1x_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2a_EE0E0E0B2i_"}
!37472 = distinct !{!37472, !37471, !"_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCsaL1QbXo9JQH_3std7process7CommandINtNtCs1xwejQucwHj_5alloc6borrow3CoweEuNCNCNvNtCs9fPPV5zPXBl_5typst7compile9open_paths_00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1x_NCINvMsk_NtB1C_3vecINtB44_3VecB1x_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2a_EE0E0E0B2i_: argument 1"}
!37473 = distinct !{!37473, !37471, !"_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCsaL1QbXo9JQH_3std7process7CommandINtNtCs1xwejQucwHj_5alloc6borrow3CoweEuNCNCNvNtCs9fPPV5zPXBl_5typst7compile9open_paths_00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1x_NCINvMsk_NtB1C_3vecINtB44_3VecB1x_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2a_EE0E0E0B2i_: argument 0"}
!37474 = distinct !{!37474, !"_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callINtNtCs1xwejQucwHj_5alloc6borrow3CoweENCINvMsk_NtB1k_3vecINtB20_3VecB1f_E14extend_trustedINtNtNtBc_8adapters3map3MapINtNtNtBe_5slice4iter4IterNtNtCsaL1QbXo9JQH_3std7process7CommandENCNCNvNtCs9fPPV5zPXBl_5typst7compile9open_paths_00EE0E0B4i_"}
!37475 = distinct !{!37475, !37474, !"_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callINtNtCs1xwejQucwHj_5alloc6borrow3CoweENCINvMsk_NtB1k_3vecINtB20_3VecB1f_E14extend_trustedINtNtNtBc_8adapters3map3MapINtNtNtBe_5slice4iter4IterNtNtCsaL1QbXo9JQH_3std7process7CommandENCNCNvNtCs9fPPV5zPXBl_5typst7compile9open_paths_00EE0E0B4i_: argument 0"}
!37476 = distinct !{!37476, !"_RNCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB8_3VecINtNtBa_6borrow3CoweEE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB1t_5slice4iter4IterNtNtCsaL1QbXo9JQH_3std7process7CommandENCNCNvNtCs9fPPV5zPXBl_5typst7compile9open_paths_00EE0B3k_"}
!37477 = distinct !{!37477, !37476, !"_RNCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB8_3VecINtNtBa_6borrow3CoweEE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB1t_5slice4iter4IterNtNtCsaL1QbXo9JQH_3std7process7CommandENCNCNvNtCs9fPPV5zPXBl_5typst7compile9open_paths_00EE0B3k_: argument 0"}
!37478 = distinct !{!37478, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsaL1QbXo9JQH_3std7process7CommandEECs9fPPV5zPXBl_5typst"}
!37479 = distinct !{!37479, !37478, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsaL1QbXo9JQH_3std7process7CommandEECs9fPPV5zPXBl_5typst: argument 0"}
!37480 = distinct !{!37480, !"_RINvNtCs1xwejQucwHj_5alloc3str17join_generic_copyehINtNtB4_6borrow3CoweEECs9fPPV5zPXBl_5typst"}
!37481 = distinct !{!37481, !37480, !"_RINvNtCs1xwejQucwHj_5alloc3str17join_generic_copyehINtNtB4_6borrow3CoweEECs9fPPV5zPXBl_5typst: argument 1"}
!37482 = distinct !{!37482, !"_RNvXs_NtCs1xwejQucwHj_5alloc6borrowINtB4_3CoweEINtNtCs3oUPovFnLWP_4core6borrow6BorroweE6borrowCs9fPPV5zPXBl_5typst"}
!37483 = distinct !{!37483, !37482, !"_RNvXs_NtCs1xwejQucwHj_5alloc6borrowINtB4_3CoweEINtNtCs3oUPovFnLWP_4core6borrow6BorroweE6borrowCs9fPPV5zPXBl_5typst: argument 0"}
!37484 = distinct !{!37484, !37480, !"_RINvNtCs1xwejQucwHj_5alloc3str17join_generic_copyehINtNtB4_6borrow3CoweEECs9fPPV5zPXBl_5typst: argument 0"}
!37485 = distinct !{!37485, !"_RNvXs_NtCs1xwejQucwHj_5alloc6borrowINtB4_3CoweEINtNtCs3oUPovFnLWP_4core6borrow6BorroweE6borrowCs9fPPV5zPXBl_5typst"}
!37486 = distinct !{!37486, !37485, !"_RNvXs_NtCs1xwejQucwHj_5alloc6borrowINtB4_3CoweEINtNtCs3oUPovFnLWP_4core6borrow6BorroweE6borrowCs9fPPV5zPXBl_5typst: argument 0"}
!37487 = distinct !{!37487, !"_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterINtNtCs1xwejQucwHj_5alloc6borrow3CoweEENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldjNCINvNtNtB1s_8adapters3map12map_try_foldRBJ_jjINtNtBa_6option6OptionjENCNCINvNtBO_3str17join_generic_copyehBJ_Es_00NvMs9_NtBa_3numj11checked_addE0B2V_ECs9fPPV5zPXBl_5typst"}
!37488 = distinct !{!37488, !37487, !"_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterINtNtCs1xwejQucwHj_5alloc6borrow3CoweEENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldjNCINvNtNtB1s_8adapters3map12map_try_foldRBJ_jjINtNtBa_6option6OptionjENCNCINvNtBO_3str17join_generic_copyehBJ_Es_00NvMs9_NtBa_3numj11checked_addE0B2V_ECs9fPPV5zPXBl_5typst: argument 0"}
!37489 = distinct !{!37489, !"_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9fPPV5zPXBl_5typst"}
!37490 = distinct !{!37490, !37489, !"_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9fPPV5zPXBl_5typst: argument 0"}
!37491 = distinct !{!37491, !"_RNvXs2_NtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterhEE11spec_extendCs9fPPV5zPXBl_5typst"}
!37492 = distinct !{!37492, !37491, !"_RNvXs2_NtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterhEE11spec_extendCs9fPPV5zPXBl_5typst: argument 0"}
!37493 = distinct !{!37493, !"_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE15append_elementsCs9fPPV5zPXBl_5typst"}
!37494 = distinct !{!37494, !37493, !"_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE15append_elementsCs9fPPV5zPXBl_5typst: argument 0"}
!37495 = distinct !{!37495, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs9fPPV5zPXBl_5typst"}
!37496 = distinct !{!37496, !37495, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs9fPPV5zPXBl_5typst: argument 0"}
!37497 = distinct !{!37497, !"_RNvXs_NtCs1xwejQucwHj_5alloc6borrowINtB4_3CoweEINtNtCs3oUPovFnLWP_4core6borrow6BorroweE6borrowCs9fPPV5zPXBl_5typst"}
!37498 = distinct !{!37498, !37497, !"_RNvXs_NtCs1xwejQucwHj_5alloc6borrowINtB4_3CoweEINtNtCs3oUPovFnLWP_4core6borrow6BorroweE6borrowCs9fPPV5zPXBl_5typst: argument 0"}
!37499 = distinct !{!37499, !"_RINvNtCs3oUPovFnLWP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECs9fPPV5zPXBl_5typst"}
!37500 = distinct !{!37500, !37499, !"_RINvNtCs3oUPovFnLWP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECs9fPPV5zPXBl_5typst: argument 1"}
!37501 = distinct !{!37501, !37499, !"_RINvNtCs3oUPovFnLWP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECs9fPPV5zPXBl_5typst: argument 0"}
!37502 = distinct !{!37502, !37499, !"_RINvNtCs3oUPovFnLWP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECs9fPPV5zPXBl_5typst: argument 2"}
!37503 = distinct !{!37503, !"_RINvNtCs3oUPovFnLWP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECs9fPPV5zPXBl_5typst"}
!37504 = distinct !{!37504, !37503, !"_RINvNtCs3oUPovFnLWP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECs9fPPV5zPXBl_5typst: argument 1"}
end_hunk_5
