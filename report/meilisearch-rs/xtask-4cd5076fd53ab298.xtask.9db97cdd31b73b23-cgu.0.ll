Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/xtask-4cd5076fd53ab298.xtask.9db97cdd31b73b23-cgu.0?download=true
inline.NumInlined: 15191
inline.NumDeleted: 6593
loop-unroll.NumCompletelyUnrolled: 45
loop-unroll.NumRuntimeUnrolled: 49
loop-unroll.NumUnrolled: 95
begin_hunk_0_@"_ZN113_$LT$tracing_subscriber..layer..layered..Layered$LT$L$C$S$GT$$u20$as$u20$tracing_core..subscriber..Subscriber$GT$9try_close17he99b2bc199b536b7E":bb.a
._crit_edge.i.i.i.i82.i.i:                        ; preds = %.backedge.i.i.i.i79.i.i, %"_ZN4core3ptr73drop_in_place$LT$tracing_subscriber..registry..extensions..Extensions$GT$17h32733eb0b0dd2275E.exit72.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !8790
  store i64 2, ptr %i.f, align 8, !noalias !8790
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !8790
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !8790
  store ptr %i.f, ptr %i.d, align 8, !noalias !8790
  br label %._crit_edge.i.i.i.i82.i.i.invoke

._crit_edge.i.i.i.i82.i.i.invoke:                 ; preds = %._crit_edge.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i, %._crit_edge.i.i.i.i82.i.i
  %.sink39.sroa.phi = phi ptr [ %.sink39.sroa.gep, %._crit_edge.i.i.i.i.i.i.i ], [ %.sink39.sroa.gep60, %._crit_edge.i.i.i.i.i.i ], [ %.sink39.sroa.gep61, %._crit_edge.i.i.i.i82.i.i ]
  %.sink39 = phi ptr [ %i.a, %._crit_edge.i.i.i.i.i.i.i ], [ %i.g, %._crit_edge.i.i.i.i.i.i ], [ %i.d, %._crit_edge.i.i.i.i82.i.i ]
  %.sink38.sroa.phi = phi ptr [ %.sink38.sroa.gep, %._crit_edge.i.i.i.i.i.i.i ], [ %.sink38.sroa.gep42, %._crit_edge.i.i.i.i.i.i ], [ %.sink38.sroa.gep43, %._crit_edge.i.i.i.i82.i.i ]
  %.sink38.sroa.phi44 = phi ptr [ %.sink38.sroa.gep45, %._crit_edge.i.i.i.i.i.i.i ], [ %.sink38.sroa.gep46, %._crit_edge.i.i.i.i.i.i ], [ %.sink38.sroa.gep47, %._crit_edge.i.i.i.i82.i.i ]
  %.sink38.sroa.phi48 = phi ptr [ %.sink38.sroa.gep49, %._crit_edge.i.i.i.i.i.i.i ], [ %.sink38.sroa.gep50, %._crit_edge.i.i.i.i.i.i ], [ %.sink38.sroa.gep51, %._crit_edge.i.i.i.i82.i.i ]
  %.sink38.sroa.phi52 = phi ptr [ %.sink38.sroa.gep53, %._crit_edge.i.i.i.i.i.i.i ], [ %.sink38.sroa.gep54, %._crit_edge.i.i.i.i.i.i ], [ %.sink38.sroa.gep55, %._crit_edge.i.i.i.i82.i.i ]
  %.sink38.sroa.phi56 = phi ptr [ %.sink38.sroa.gep57, %._crit_edge.i.i.i.i.i.i.i ], [ %.sink38.sroa.gep58, %._crit_edge.i.i.i.i.i.i ], [ %.sink38.sroa.gep59, %._crit_edge.i.i.i.i82.i.i ]
  %.sink38 = phi ptr [ %i.b, %._crit_edge.i.i.i.i.i.i.i ], [ %i.h, %._crit_edge.i.i.i.i.i.i ], [ %i.e, %._crit_edge.i.i.i.i82.i.i ] ; 2 uses
  store ptr @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..Binary$u20$for$u20$usize$GT$3fmt17h24633a65173f76b2E", ptr %.sink39.sroa.phi, align 8, !noalias !8773
  store ptr @1814, ptr %.sink38, align 8, !noalias !8773
  store i64 1, ptr %.sink38.sroa.phi, align 8, !noalias !8773
  store ptr @1815, ptr %.sink38.sroa.phi44, align 8, !noalias !8773
  store i64 1, ptr %.sink38.sroa.phi48, align 8, !noalias !8773
  store ptr %.sink39, ptr %.sink38.sroa.phi52, align 8, !noalias !8773
  store i64 1, ptr %.sink38.sroa.phi56, align 8, !noalias !8773
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %.sink38, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1817) #54
          to label %._crit_edge.i.i.i.i82.i.i.cont unwind label %bb.b

._crit_edge.i.i.i.i82.i.i.cont:                   ; preds = %._crit_edge.i.i.i.i82.i.i.invoke
  unreachable

"_ZN92_$LT$sharded_slab..page..slot..Lifecycle$LT$C$GT$$u20$as$u20$sharded_slab..Pack$LT$C$GT$$GT$10from_usize17h88cef977f7b7075eE.exit.i.i.i.i.i73.i.i": ; preds = %"_ZN4core3ptr73drop_in_place$LT$tracing_subscriber..registry..extensions..Extensions$GT$17h32733eb0b0dd2275E.exit72.i.i", %.backedge.i.i.i.i79.i.i
  %i.ga = phi i64 [ %i.gh, %.backedge.i.i.i.i79.i.i ], [ %i.fy, %"_ZN4core3ptr73drop_in_place$LT$tracing_subscriber..registry..extensions..Extensions$GT$17h32733eb0b0dd2275E.exit72.i.i" ]
  %.sroa.0.0.i4.i.i.i.i74.i.i = phi i64 [ %.sroa.0.0.i.be.i.i.i.i81.i.i, %.backedge.i.i.i.i79.i.i ], [ %i.fx, %"_ZN4core3ptr73drop_in_place$LT$tracing_subscriber..registry..extensions..Extensions$GT$17h32733eb0b0dd2275E.exit72.i.i" ] ; 5 uses
  %.in.i.i.i.i75.i.i = lshr i64 %.sroa.0.0.i4.i.i.i.i74.i.i, 2
  %i.gb = and i64 %.in.i.i.i.i75.i.i, 562949953421311 ; 2 uses
  %i.gc = icmp eq i64 %i.gb, 1
  %i.gd = icmp eq i64 %i.ga, 1
  %.sroa.05.0.i.i.i.i.i76.i.i = and i1 %i.gd, %i.gc
  br i1 %.sroa.05.0.i.i.i.i.i76.i.i, label %bb.ab, label %.thread.i.i.i.i77.i.i

bb.ab:                                            ; preds = %"_ZN92_$LT$sharded_slab..page..slot..Lifecycle$LT$C$GT$$u20$as$u20$sharded_slab..Pack$LT$C$GT$$GT$10from_usize17h88cef977f7b7075eE.exit.i.i.i.i.i73.i.i"
  %i.ge = and i64 %.sroa.0.0.i4.i.i.i.i74.i.i, -2251799813685248
  %i.gf = or disjoint i64 %i.ge, 3
  %i.gg = cmpxchg ptr %i.fw, i64 %.sroa.0.0.i4.i.i.i.i74.i.i, i64 %i.gf acq_rel acquire, align 8, !noalias !8790 ; 2 uses
  %.sroa.18.0.in.i.i.i.i.i.i84.i.i = extractvalue { i64, i1 } %i.gg, 1
  br i1 %.sroa.18.0.in.i.i.i.i.i.i84.i.i, label %"_ZN12sharded_slab4page4slot17Slot$LT$T$C$C$GT$7release17h519eb29108dbe60bE.exit.i.i.i.i85.i.i", label %.backedge.i.i.i.i79.i.i

.backedge.i.i.i.i79.i.i:                          ; preds = %.thread.i.i.i.i77.i.i, %bb.ab
  %.pn.i.i.i.i80.i.i = phi { i64, i1 } [ %i.gg, %bb.ab ], [ %i.gn, %.thread.i.i.i.i77.i.i ]
  %.sroa.0.0.i.be.i.i.i.i81.i.i = extractvalue { i64, i1 } %.pn.i.i.i.i80.i.i, 0 ; 2 uses
  %i.gh = and i64 %.sroa.0.0.i.be.i.i.i.i81.i.i, 3 ; 2 uses
  %i.gi = icmp eq i64 %i.gh, 2
  br i1 %i.gi, label %._crit_edge.i.i.i.i82.i.i, label %"_ZN92_$LT$sharded_slab..page..slot..Lifecycle$LT$C$GT$$u20$as$u20$sharded_slab..Pack$LT$C$GT$$GT$10from_usize17h88cef977f7b7075eE.exit.i.i.i.i.i73.i.i", !prof !33

.thread.i.i.i.i77.i.i:                            ; preds = %"_ZN92_$LT$sharded_slab..page..slot..Lifecycle$LT$C$GT$$u20$as$u20$sharded_slab..Pack$LT$C$GT$$GT$10from_usize17h88cef977f7b7075eE.exit.i.i.i.i.i73.i.i"
  %i.gj = and i64 %.sroa.0.0.i4.i.i.i.i74.i.i, -2251799813685245
  %i.gk = shl nuw nsw i64 %i.gb, 2
  %i.gl = add nsw i64 %i.gk, -4
  %i.gm = or i64 %i.gl, %i.gj
  %i.gn = cmpxchg ptr %i.fw, i64 %.sroa.0.0.i4.i.i.i.i74.i.i, i64 %i.gm acq_rel acquire, align 8, !noalias !8790 ; 2 uses
  %.sroa.18.0.in.i.i2.i.i.i.i78.i.i = extractvalue { i64, i1 } %i.gn, 1
  br i1 %.sroa.18.0.in.i.i2.i.i.i.i78.i.i, label %"_ZN4core3ptr113drop_in_place$LT$tracing_subscriber..registry..SpanRef$LT$tracing_subscriber..registry..sharded..Registry$GT$$GT$17h5239dd0ad0202a94E.exit88.i.i", label %.backedge.i.i.i.i79.i.i

"_ZN12sharded_slab4page4slot17Slot$LT$T$C$C$GT$7release17h519eb29108dbe60bE.exit.i.i.i.i85.i.i": ; preds = %bb.ab
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7111.8.copyload.i.i) ]
  invoke fastcc void @"_ZN12sharded_slab5shard18Shard$LT$T$C$C$GT$19clear_after_release17h05220815bb791f72E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %.sroa.7111.8.copyload.i.i, i64 noundef %.sroa.8113.8.copyload.i.i)
          to label %"_ZN4core3ptr113drop_in_place$LT$tracing_subscriber..registry..SpanRef$LT$tracing_subscriber..registry..sharded..Registry$GT$$GT$17h5239dd0ad0202a94E.exit88.i.i" unwind label %bb.b

"_ZN4core3ptr113drop_in_place$LT$tracing_subscriber..registry..SpanRef$LT$tracing_subscriber..registry..sharded..Registry$GT$$GT$17h5239dd0ad0202a94E.exit88.i.i": ; preds = %.thread.i.i.i.i77.i.i, %"_ZN12sharded_slab4page4slot17Slot$LT$T$C$C$GT$7release17h519eb29108dbe60bE.exit.i.i.i.i85.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !8773
  store ptr %i.ay, ptr %i.o, align 8, !noalias !8773
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !8773
  store ptr %i.p, ptr %i.n, align 8, !noalias !8773
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !8773
  store ptr %i.o, ptr %i.l, align 8, !noalias !8773
  %i.go = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %i.aj, ptr %i.go, align 8, !noalias !8773
  %i.gp = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store i64 %i.av, ptr %i.gp, align 8, !noalias !8773
  %i.gq = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.n, ptr %i.gq, align 8, !noalias !8773
  invoke fastcc void @"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17haa307b6985a5cd7eE"(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.l)
          to label %.noexc17 unwind label %bb.b

.noexc17:                                         ; preds = %"_ZN4core3ptr113drop_in_place$LT$tracing_subscriber..registry..SpanRef$LT$tracing_subscriber..registry..sharded..Registry$GT$$GT$17h5239dd0ad0202a94E.exit88.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !8773
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !8773
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !8773
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !8773
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !8773
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !8773
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !8773
  br label %bb.z

bb.ac:                                            ; preds = %bb.v, %_ZN18tracing_subscriber8registry10extensions15ExtensionsInner3get17h8cc909b65c850acfE.exit.i.i, %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17hca6a1ef673a3a4d3E.exit.i.i.i"
  %lpad.thr_comm.split-lp.i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cc) ]
  %i.gr = atomicrmw sub ptr %i.cc, i32 1 release, align 4, !noalias !8773
  %i.gs = add i32 %i.gr, -1                       ; 2 uses
  %i.gt = and i32 %i.gs, -1073741825
  %or.cond.not.i.i.i89.i.i = icmp eq i32 %i.gt, -2147483648
  br i1 %or.cond.not.i.i.i89.i.i, label %bb.ad, label %"_ZN4core3ptr73drop_in_place$LT$tracing_subscriber..registry..extensions..Extensions$GT$17h32733eb0b0dd2275E.exit91.i.i", !prof !62

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZN3std3sys4sync6rwlock5futex6RwLock22wake_writer_or_readers17h996aee56cbf483f2E(ptr noundef nonnull align 4 %i.cc, i32 noundef %i.gs)
          to label %"_ZN4core3ptr73drop_in_place$LT$tracing_subscriber..registry..extensions..Extensions$GT$17h32733eb0b0dd2275E.exit91.i.i" unwind label %bb.ae, !noalias !8773

bb.ae:                                            ; preds = %"_ZN4core3ptr73drop_in_place$LT$tracing_subscriber..registry..extensions..Extensions$GT$17h32733eb0b0dd2275E.exit91.i.i", %bb.ad
  %i.gu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !8773
  unreachable

"_ZN4core3ptr73drop_in_place$LT$tracing_subscriber..registry..extensions..Extensions$GT$17h32733eb0b0dd2275E.exit91.i.i": ; preds = %bb.ad, %bb.ac, %.thread.i.i, %bb.p
  %.pn123.i.i = phi { ptr, i32 } [ %i.ca, %.thread.i.i ], [ %lpad.thr_comm.split-lp133.i.i, %bb.p ], [ %lpad.thr_comm.split-lp.i.i, %bb.ad ], [ %lpad.thr_comm.split-lp.i.i, %bb.ac ]
  invoke fastcc void @"_ZN4core3ptr113drop_in_place$LT$tracing_subscriber..registry..SpanRef$LT$tracing_subscriber..registry..sharded..Registry$GT$$GT$17h5239dd0ad0202a94E"(ptr noalias noundef align 8 dereferenceable(40) %i.af) #55
          to label %.body unwind label %bb.ae, !noalias !8773

"_ZN124_$LT$tracing_subscriber..fmt..fmt_layer..Layer$LT$S$C$N$C$E$C$W$GT$$u20$as$u20$tracing_subscriber..layer..Layer$LT$S$GT$$GT$8on_close17hc659c1a130abf0e9E.exit.i": ; preds = %bb.z, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !8771
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !8771
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !8771
  br label %"_ZN130_$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$L$C$F$C$S$GT$$u20$as$u20$tracing_subscriber..layer..Layer$LT$S$GT$$GT$8on_close17h2a6980b4468712daE.exit"

"_ZN130_$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$L$C$F$C$S$GT$$u20$as$u20$tracing_subscriber..layer..Layer$LT$S$GT$$GT$8on_close17h2a6980b4468712daE.exit": ; preds = %.noexc7, %"_ZN124_$LT$tracing_subscriber..fmt..fmt_layer..Layer$LT$S$C$N$C$E$C$W$GT$$u20$as$u20$tracing_subscriber..layer..Layer$LT$S$GT$$GT$8on_close17hc659c1a130abf0e9E.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  br label %bb.f

bb.af:                                            ; preds = %bb.c
  %i.gv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56
  unreachable

"_ZN4core3ptr98drop_in_place$LT$core..option..Option$LT$tracing_subscriber..registry..sharded..CloseGuard$GT$$GT$17h836e4109c418b466E.exit": ; preds = %.body, %bb.c
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal fastcc noundef range(i8 0, 74) i8 @"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$17monday_based_week17h094b5de7c2f2099cE"(i32 %.8.val) unnamed_addr #8 {
switch.lookup:
  %i.a = and i32 %.8.val, 511
  %i.b = add nuw nsw i32 %i.a, -363521075
  %i.c = ashr i32 %.8.val, 10
  %i.d = add nsw i32 %i.c, 999999                 ; 3 uses
  %.neg.i = sdiv i32 %i.d, -100
  %i.e = add nsw i32 %i.b, %.neg.i
  %i.f = sdiv i32 %i.d, 400
  %i.g = add nsw i32 %i.e, %i.f
  %i.h = sext i32 %i.d to i64
  %i.i = mul nsw i64 %i.h, 1461
  %i.j = sdiv i64 %i.i, 4
  %i.k = trunc nsw i64 %i.j to i32
  %i.l = add nsw i32 %i.g, %i.k
  %i.m = srem i32 %i.l, 7
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr [2 x i8], ptr @"switch.table._ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$17monday_based_week17h094b5de7c2f2099cE", i64 %i.n
  %switch.gep = getelementptr i8, ptr %i.o, i64 12
  %switch.load = load i16, ptr %switch.gep, align 2
  %i.p = trunc i32 %.8.val to i16
  %i.q = and i16 %i.p, 511
  %i.r = add nuw nsw i16 %i.q, 6
  %i.s = add nsw i16 %i.r, %switch.load
  %i.t = udiv i16 %i.s, 7
  %i.u = trunc nuw nsw i16 %i.t to i8
  ret i8 %i.u
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal fastcc noundef range(i8 0, 74) i8 @"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$17sunday_based_week17h797fbeeb879d1c7fE"(i32 %.8.val) unnamed_addr #8 {
switch.lookup:
  %i.a = and i32 %.8.val, 511
  %i.b = add nuw nsw i32 %i.a, -363521075
  %i.c = ashr i32 %.8.val, 10
  %i.d = add nsw i32 %i.c, 999999                 ; 3 uses
  %.neg.i.i = sdiv i32 %i.d, -100
  %i.e = add nsw i32 %i.b, %.neg.i.i
  %i.f = sdiv i32 %i.d, 400
  %i.g = add nsw i32 %i.e, %i.f
  %i.h = sext i32 %i.d to i64
  %i.i = mul nsw i64 %i.h, 1461
  %i.j = sdiv i64 %i.i, 4
  %i.k = trunc nsw i64 %i.j to i32
  %i.l = add nsw i32 %i.g, %i.k
  %i.m = srem i32 %i.l, 7
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr [2 x i8], ptr @"switch.table._ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$17sunday_based_week17h797fbeeb879d1c7fE", i64 %i.n
  %switch.gep = getelementptr i8, ptr %i.o, i64 12
  %switch.load = load i16, ptr %switch.gep, align 2
  %i.p = trunc i32 %.8.val to i16
  %i.q = and i16 %i.p, 511
  %i.r = add nuw nsw i16 %i.q, 6
  %i.s = add nsw i16 %i.r, %switch.load
  %i.t = udiv i16 %i.s, 7
  %i.u = trunc nuw nsw i16 %i.t to i8
  ret i8 %i.u
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define internal fastcc noundef range(i64 -66245516071199, 66121194247199) i64 @"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$22unix_timestamp_seconds17h8568d98cf1aa9827E"(ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(16) %0) unnamed_addr #9 {
bb.a:
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.3.0.copyload = load i8, ptr %.sroa.3.0..sroa_idx, align 4 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 5
  %.sroa.4.0.copyload = load i8, ptr %.sroa.4.0..sroa_idx, align 1 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 6
  %.sroa.5.0.copyload = load i8, ptr %.sroa.5.0..sroa_idx, align 2 ; 2 uses
  %.sroa.61.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.61.0.copyload = load i32, ptr %.sroa.61.0..sroa_idx, align 4 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.7.0.copyload = load i24, ptr %.sroa.7.0..sroa_idx, align 4 ; 3 uses
  %i.a = icmp ult i8 %.sroa.5.0.copyload, 24
  tail call void @llvm.assume(i1 %i.a)
  %i.b = icmp ult i8 %.sroa.4.0.copyload, 60
  tail call void @llvm.assume(i1 %i.b)
  %i.c = icmp ult i8 %.sroa.3.0.copyload, 60
  %i.d = zext nneg i8 %.sroa.4.0.copyload to i64
  %i.e = zext nneg i8 %.sroa.5.0.copyload to i64
  %i.f = ashr i32 %.sroa.61.0.copyload, 10
  %i.g = add nsw i32 %i.f, 999999                 ; 3 uses
  %.neg.i = sdiv i32 %i.g, -100
  %i.h = sext i32 %i.g to i64
  %i.i = mul nsw i64 %i.h, 1461
  %i.j = sdiv i64 %i.i, 4
  %i.k = trunc nsw i64 %i.j to i32
  %i.l = sdiv i32 %i.g, 400
  %i.m = and i32 %.sroa.61.0.copyload, 511
  %i.n = add nsw i32 %.neg.i, %i.m
  %i.o = add nsw i32 %i.n, %i.l
  %i.p = add nsw i32 %i.o, %i.k
  %i.q = sext i32 %i.p to i64
  %i.r = mul nsw i64 %i.q, 86400
  tail call void @llvm.assume(i1 %i.c)
  %i.s = zext nneg i8 %.sroa.3.0.copyload to i64
  %.sroa.01.0.extract.trunc.i.i = trunc i24 %.sroa.7.0.copyload to i8 ; 3 uses
  %.sroa.01.1.extract.shift.i.i = lshr i24 %.sroa.7.0.copyload, 8
  %.sroa.01.1.extract.trunc.i.i = trunc i24 %.sroa.01.1.extract.shift.i.i to i8 ; 3 uses
  %.sroa.01.2.extract.shift.i.i = lshr i24 %.sroa.7.0.copyload, 16
  %.sroa.01.2.extract.trunc.i.i = trunc nuw i24 %.sroa.01.2.extract.shift.i.i to i8 ; 3 uses
  %i.t = icmp sgt i8 %.sroa.01.2.extract.trunc.i.i, -26
  tail call void @llvm.assume(i1 %i.t)
  %i.u = icmp slt i8 %.sroa.01.2.extract.trunc.i.i, 26
  tail call void @llvm.assume(i1 %i.u)
  %i.v = icmp sgt i8 %.sroa.01.1.extract.trunc.i.i, -60
  tail call void @llvm.assume(i1 %i.v)
  %i.w = icmp slt i8 %.sroa.01.1.extract.trunc.i.i, 60
  tail call void @llvm.assume(i1 %i.w)
  %i.x = icmp sgt i8 %.sroa.01.0.extract.trunc.i.i, -60
  tail call void @llvm.assume(i1 %i.x)
  %i.y = icmp slt i8 %.sroa.01.0.extract.trunc.i.i, 60
  tail call void @llvm.assume(i1 %i.y)
  %narrow.i = sub nsw i8 0, %.sroa.01.2.extract.trunc.i.i
  %neg11.i = sext i8 %narrow.i to i64
  %narrow14.i = sub nsw i8 0, %.sroa.01.0.extract.trunc.i.i
  %.neg7.i = sext i8 %narrow14.i to i64
  %narrow15.i = sub nsw i8 0, %.sroa.01.1.extract.trunc.i.i
  %neg.i = sext i8 %narrow15.i to i64
  %reass.add.i = add nsw i64 %neg.i, %i.d
  %reass.mul.i = mul nsw i64 %reass.add.i, 60
  %reass.add12.i = add nsw i64 %neg11.i, %i.e
  %reass.mul13.i = mul nsw i64 %reass.add12.i, 3600
  %i.z = or disjoint i64 %i.s, -31619087683200
  %i.aa = add nsw i64 %i.z, %.neg7.i
  %i.ab = add nsw i64 %i.aa, %reass.mul.i
  %i.ac = add nsw i64 %i.ab, %reass.mul13.i
  %i.ad = add nsw i64 %i.ac, %i.r
  ret i64 %i.ad
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define internal fastcc noundef range(i128 -66245516071199000000000, 66121194247199000000000) i128 @"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$26unix_timestamp_nanoseconds17h69dbc1d2695dba51E"(ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(16) %0) unnamed_addr #9 {
bb.a:
  %.sroa.0.0.copyload = load i32, ptr %0, align 4 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.4.0.copyload = load i8, ptr %.sroa.4.0..sroa_idx, align 4 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 5
  %.sroa.5.0.copyload = load i8, ptr %.sroa.5.0..sroa_idx, align 1 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 6
  %.sroa.6.0.copyload = load i8, ptr %.sroa.6.0..sroa_idx, align 2 ; 2 uses
  %.sroa.71.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.71.0.copyload = load i32, ptr %.sroa.71.0..sroa_idx, align 4 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.8.0.copyload = load i24, ptr %.sroa.8.0..sroa_idx, align 4 ; 3 uses
  %i.a = icmp ult i8 %.sroa.6.0.copyload, 24
  tail call void @llvm.assume(i1 %i.a)
  %i.b = icmp ult i8 %.sroa.5.0.copyload, 60
  tail call void @llvm.assume(i1 %i.b)
  %i.c = icmp ult i8 %.sroa.4.0.copyload, 60
  %i.d = zext nneg i8 %.sroa.5.0.copyload to i64
  %i.e = zext nneg i8 %.sroa.6.0.copyload to i64
  %i.f = ashr i32 %.sroa.71.0.copyload, 10
  %i.g = add nsw i32 %i.f, 999999                 ; 3 uses
  %.neg.i.i = sdiv i32 %i.g, -100
  %i.h = sext i32 %i.g to i64
  %i.i = mul nsw i64 %i.h, 1461
  %i.j = sdiv i64 %i.i, 4
  %i.k = trunc nsw i64 %i.j to i32
  %i.l = sdiv i32 %i.g, 400
  %i.m = and i32 %.sroa.71.0.copyload, 511
  %i.n = add nsw i32 %.neg.i.i, %i.m
  %i.o = add nsw i32 %i.n, %i.l
  %i.p = add nsw i32 %i.o, %i.k
  %i.q = sext i32 %i.p to i64
  %i.r = mul nsw i64 %i.q, 86400
  tail call void @llvm.assume(i1 %i.c)
  %i.s = zext nneg i8 %.sroa.4.0.copyload to i64
  %.sroa.01.0.extract.trunc.i.i.i = trunc i24 %.sroa.8.0.copyload to i8 ; 3 uses
  %.sroa.01.1.extract.shift.i.i.i = lshr i24 %.sroa.8.0.copyload, 8
  %.sroa.01.1.extract.trunc.i.i.i = trunc i24 %.sroa.01.1.extract.shift.i.i.i to i8 ; 3 uses
  %.sroa.01.2.extract.shift.i.i.i = lshr i24 %.sroa.8.0.copyload, 16
  %.sroa.01.2.extract.trunc.i.i.i = trunc nuw i24 %.sroa.01.2.extract.shift.i.i.i to i8 ; 3 uses
  %i.t = icmp sgt i8 %.sroa.01.2.extract.trunc.i.i.i, -26
  tail call void @llvm.assume(i1 %i.t)
  %i.u = icmp slt i8 %.sroa.01.2.extract.trunc.i.i.i, 26
  tail call void @llvm.assume(i1 %i.u)
  %i.v = icmp sgt i8 %.sroa.01.1.extract.trunc.i.i.i, -60
  tail call void @llvm.assume(i1 %i.v)
  %i.w = icmp slt i8 %.sroa.01.1.extract.trunc.i.i.i, 60
  tail call void @llvm.assume(i1 %i.w)
  %i.x = icmp sgt i8 %.sroa.01.0.extract.trunc.i.i.i, -60
  tail call void @llvm.assume(i1 %i.x)
  %i.y = icmp slt i8 %.sroa.01.0.extract.trunc.i.i.i, 60
  tail call void @llvm.assume(i1 %i.y)
  %narrow.i.i = sub nsw i8 0, %.sroa.01.2.extract.trunc.i.i.i
  %neg11.i.i = sext i8 %narrow.i.i to i64
  %narrow14.i.i = sub nsw i8 0, %.sroa.01.0.extract.trunc.i.i.i
  %.neg7.i.i = sext i8 %narrow14.i.i to i64
  %narrow15.i.i = sub nsw i8 0, %.sroa.01.1.extract.trunc.i.i.i
  %neg.i.i = sext i8 %narrow15.i.i to i64
  %reass.add.i.i = add nsw i64 %neg.i.i, %i.d
  %reass.mul.i.i = mul nsw i64 %reass.add.i.i, 60
  %reass.add12.i.i = add nsw i64 %neg11.i.i, %i.e
  %reass.mul13.i.i = mul nsw i64 %reass.add12.i.i, 3600
  %i.z = or disjoint i64 %i.s, -31619087683200
  %i.aa = add nsw i64 %i.z, %.neg7.i.i
  %i.ab = add nsw i64 %i.aa, %reass.mul.i.i
  %i.ac = add nsw i64 %i.ab, %reass.mul13.i.i
  %i.ad = add nsw i64 %i.ac, %i.r
  %i.ae = icmp ult i32 %.sroa.0.0.copyload, 1000000000
  %i.af = sext i64 %i.ad to i128
  %i.ag = mul nsw i128 %i.af, 1000000000
  tail call void @llvm.assume(i1 %i.ae)
  %i.ah = zext nneg i32 %.sroa.0.0.copyload to i128
  %i.ai = add nsw i128 %i.ag, %i.ah
  ret i128 %i.ai
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define internal fastcc noundef range(i128 -66245516071199000000, 66121194247199000000) i128 @"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$27unix_timestamp_microseconds17h2028fbd112cadd72E"(ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(16) %0) unnamed_addr #9 {
bb.a:
  %.sroa.0.0.copyload = load i32, ptr %0, align 4 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.5.sroa.0.0.copyload = load i8, ptr %.sroa.5.0..sroa_idx, align 4 ; 2 uses
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 5
  %.sroa.5.sroa.4.0.copyload = load i8, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 1 ; 2 uses
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 6
  %.sroa.5.sroa.5.0.copyload = load i8, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 2 ; 2 uses
  %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.5.sroa.7.0.copyload = load i32, ptr %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx, align 4 ; 2 uses
  %.sroa.5.sroa.8.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.5.sroa.8.0.copyload = load i24, ptr %.sroa.5.sroa.8.0..sroa.5.0..sroa_idx.sroa_idx, align 4 ; 3 uses
  %i.a = icmp ult i8 %.sroa.5.sroa.5.0.copyload, 24
  tail call void @llvm.assume(i1 %i.a)
  %i.b = icmp ult i8 %.sroa.5.sroa.4.0.copyload, 60
  tail call void @llvm.assume(i1 %i.b)
  %i.c = icmp ult i8 %.sroa.5.sroa.0.0.copyload, 60
  %i.d = zext nneg i8 %.sroa.5.sroa.4.0.copyload to i64
  %i.e = zext nneg i8 %.sroa.5.sroa.5.0.copyload to i64
  %i.f = ashr i32 %.sroa.5.sroa.7.0.copyload, 10
  %i.g = add nsw i32 %i.f, 999999                 ; 3 uses
  %.neg.i = sdiv i32 %i.g, -100
  %i.h = sext i32 %i.g to i64
  %i.i = mul nsw i64 %i.h, 1461
  %i.j = sdiv i64 %i.i, 4
  %i.k = trunc nsw i64 %i.j to i32
  %i.l = sdiv i32 %i.g, 400
  %i.m = and i32 %.sroa.5.sroa.7.0.copyload, 511
  %i.n = add nsw i32 %.neg.i, %i.m
  %i.o = add nsw i32 %i.n, %i.l
  %i.p = add nsw i32 %i.o, %i.k
  %i.q = sext i32 %i.p to i64
  %i.r = mul nsw i64 %i.q, 86400
  tail call void @llvm.assume(i1 %i.c)
  %i.s = zext nneg i8 %.sroa.5.sroa.0.0.copyload to i64
  %.sroa.01.0.extract.trunc.i.i = trunc i24 %.sroa.5.sroa.8.0.copyload to i8 ; 3 uses
  %.sroa.01.1.extract.shift.i.i = lshr i24 %.sroa.5.sroa.8.0.copyload, 8
  %.sroa.01.1.extract.trunc.i.i = trunc i24 %.sroa.01.1.extract.shift.i.i to i8 ; 3 uses
  %.sroa.01.2.extract.shift.i.i = lshr i24 %.sroa.5.sroa.8.0.copyload, 16
  %.sroa.01.2.extract.trunc.i.i = trunc nuw i24 %.sroa.01.2.extract.shift.i.i to i8 ; 3 uses
  %i.t = icmp sgt i8 %.sroa.01.2.extract.trunc.i.i, -26
  tail call void @llvm.assume(i1 %i.t)
  %i.u = icmp slt i8 %.sroa.01.2.extract.trunc.i.i, 26
  tail call void @llvm.assume(i1 %i.u)
  %i.v = icmp sgt i8 %.sroa.01.1.extract.trunc.i.i, -60
  tail call void @llvm.assume(i1 %i.v)
  %i.w = icmp slt i8 %.sroa.01.1.extract.trunc.i.i, 60
  tail call void @llvm.assume(i1 %i.w)
  %i.x = icmp sgt i8 %.sroa.01.0.extract.trunc.i.i, -60
  tail call void @llvm.assume(i1 %i.x)
  %i.y = icmp slt i8 %.sroa.01.0.extract.trunc.i.i, 60
  tail call void @llvm.assume(i1 %i.y)
  %narrow.i = sub nsw i8 0, %.sroa.01.2.extract.trunc.i.i
  %neg11.i = sext i8 %narrow.i to i64
  %narrow14.i = sub nsw i8 0, %.sroa.01.0.extract.trunc.i.i
  %.neg7.i = sext i8 %narrow14.i to i64
  %narrow15.i = sub nsw i8 0, %.sroa.01.1.extract.trunc.i.i
  %neg.i = sext i8 %narrow15.i to i64
  %reass.add.i = add nsw i64 %neg.i, %i.d
  %reass.mul.i = mul nsw i64 %reass.add.i, 60
  %reass.add12.i = add nsw i64 %neg11.i, %i.e
  %reass.mul13.i = mul nsw i64 %reass.add12.i, 3600
  %i.z = or disjoint i64 %i.s, -31619087683200
  %i.aa = add nsw i64 %i.z, %.neg7.i
  %i.ab = add nsw i64 %i.aa, %reass.mul.i
  %i.ac = add nsw i64 %i.ab, %reass.mul13.i
  %i.ad = add nsw i64 %i.ac, %i.r
  %i.ae = icmp ult i32 %.sroa.0.0.copyload, 1000000000
  %i.af = sext i64 %i.ad to i128
  %i.ag = mul nsw i128 %i.af, 1000000000
  tail call void @llvm.assume(i1 %i.ae)
  %i.ah = zext nneg i32 %.sroa.0.0.copyload to i128
  %i.ai = add nsw i128 %i.ag, %i.ah
  %i.aj = sdiv i128 %i.ai, 1000
  ret i128 %i.aj
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define internal fastcc noundef range(i64 -66245516071199000, 66121194247199000) i64 @"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$27unix_timestamp_milliseconds17h4fac17dc882169cdE"(ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(16) %0) unnamed_addr #9 {
bb.a:
  %.sroa.0.0.copyload = load i32, ptr %0, align 4 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.5.sroa.0.0.copyload = load i8, ptr %.sroa.5.0..sroa_idx, align 4 ; 2 uses
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 5
  %.sroa.5.sroa.4.0.copyload = load i8, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 1 ; 2 uses
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 6
  %.sroa.5.sroa.5.0.copyload = load i8, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 2 ; 2 uses
  %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.5.sroa.7.0.copyload = load i32, ptr %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx, align 4 ; 2 uses
  %.sroa.5.sroa.8.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.5.sroa.8.0.copyload = load i24, ptr %.sroa.5.sroa.8.0..sroa.5.0..sroa_idx.sroa_idx, align 4 ; 3 uses
  %i.a = icmp ult i8 %.sroa.5.sroa.5.0.copyload, 24
  tail call void @llvm.assume(i1 %i.a)
  %i.b = icmp ult i8 %.sroa.5.sroa.4.0.copyload, 60
  tail call void @llvm.assume(i1 %i.b)
  %i.c = icmp ult i8 %.sroa.5.sroa.0.0.copyload, 60
  %i.d = zext nneg i8 %.sroa.5.sroa.4.0.copyload to i64
  %i.e = zext nneg i8 %.sroa.5.sroa.5.0.copyload to i64
  %i.f = ashr i32 %.sroa.5.sroa.7.0.copyload, 10
  %i.g = add nsw i32 %i.f, 999999                 ; 3 uses
  %.neg.i = sdiv i32 %i.g, -100
  %i.h = sext i32 %i.g to i64
  %i.i = mul nsw i64 %i.h, 1461
  %i.j = sdiv i64 %i.i, 4
  %i.k = trunc nsw i64 %i.j to i32
  %i.l = sdiv i32 %i.g, 400
  %i.m = and i32 %.sroa.5.sroa.7.0.copyload, 511
  %i.n = add nsw i32 %.neg.i, %i.m
  %i.o = add nsw i32 %i.n, %i.l
  %i.p = add nsw i32 %i.o, %i.k
  %i.q = sext i32 %i.p to i64
  %i.r = mul nsw i64 %i.q, 86400
  tail call void @llvm.assume(i1 %i.c)
  %i.s = zext nneg i8 %.sroa.5.sroa.0.0.copyload to i64
  %.sroa.01.0.extract.trunc.i.i = trunc i24 %.sroa.5.sroa.8.0.copyload to i8 ; 3 uses
  %.sroa.01.1.extract.shift.i.i = lshr i24 %.sroa.5.sroa.8.0.copyload, 8
  %.sroa.01.1.extract.trunc.i.i = trunc i24 %.sroa.01.1.extract.shift.i.i to i8 ; 3 uses
  %.sroa.01.2.extract.shift.i.i = lshr i24 %.sroa.5.sroa.8.0.copyload, 16
  %.sroa.01.2.extract.trunc.i.i = trunc nuw i24 %.sroa.01.2.extract.shift.i.i to i8 ; 3 uses
  %i.t = icmp sgt i8 %.sroa.01.2.extract.trunc.i.i, -26
  tail call void @llvm.assume(i1 %i.t)
  %i.u = icmp slt i8 %.sroa.01.2.extract.trunc.i.i, 26
  tail call void @llvm.assume(i1 %i.u)
  %i.v = icmp sgt i8 %.sroa.01.1.extract.trunc.i.i, -60
  tail call void @llvm.assume(i1 %i.v)
  %i.w = icmp slt i8 %.sroa.01.1.extract.trunc.i.i, 60
  tail call void @llvm.assume(i1 %i.w)
  %i.x = icmp sgt i8 %.sroa.01.0.extract.trunc.i.i, -60
  tail call void @llvm.assume(i1 %i.x)
  %i.y = icmp slt i8 %.sroa.01.0.extract.trunc.i.i, 60
  tail call void @llvm.assume(i1 %i.y)
  %narrow.i = sub nsw i8 0, %.sroa.01.2.extract.trunc.i.i
  %neg11.i = sext i8 %narrow.i to i64
  %narrow14.i = sub nsw i8 0, %.sroa.01.0.extract.trunc.i.i
  %.neg7.i = sext i8 %narrow14.i to i64
  %narrow15.i = sub nsw i8 0, %.sroa.01.1.extract.trunc.i.i
  %neg.i = sext i8 %narrow15.i to i64
  %reass.add.i = add nsw i64 %neg.i, %i.d
  %reass.mul.i = mul nsw i64 %reass.add.i, 60
  %reass.add12.i = add nsw i64 %neg11.i, %i.e
  %reass.mul13.i = mul nsw i64 %reass.add12.i, 3600
  %i.z = or disjoint i64 %i.s, -31619087683200
  %i.aa = add nsw i64 %i.z, %.neg7.i
  %i.ab = add nsw i64 %i.aa, %reass.mul.i
  %i.ac = add nsw i64 %i.ab, %reass.mul13.i
  %i.ad = add nsw i64 %i.ac, %i.r
  %i.ae = icmp ult i32 %.sroa.0.0.copyload, 1000000000
  %i.af = sext i64 %i.ad to i128
  %i.ag = mul nsw i128 %i.af, 1000000000
  tail call void @llvm.assume(i1 %i.ae)
  %i.ah = zext nneg i32 %.sroa.0.0.copyload to i128
  %i.ai = add nsw i128 %i.ag, %i.ah
  %i.aj = sdiv i128 %i.ai, 1000000
  %i.ak = trunc nsw i128 %i.aj to i64
  ret i64 %i.ak
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6361f847d40ad4beE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(96) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.631 = alloca [24 x i8], align 8          ; 4 uses
  %.sroa.627 = alloca [24 x i8], align 8          ; 11 uses
  %.sroa.11 = alloca [24 x i8], align 8           ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 13 uses
  %.promoted = load ptr, ptr %i.a, align 8        ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 7 uses
  %i.d = load ptr, ptr %1, align 8
  %.fr = freeze ptr %i.d
  %.not.i2 = icmp eq ptr %.fr, null
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.sroa.620.0..sroa_idx21 = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %.promoted47 = load ptr, ptr %i.b, align 8      ; 2 uses
  %.promoted48 = load ptr, ptr %i.c, align 8      ; 8 uses
  br i1 %.not.i2, label %.split.us, label %.split.preheader

.split.preheader:                                 ; preds = %bb.a
  %.promoted49 = load ptr, ptr %i.g, align 8      ; 5 uses
  %i.h = icmp eq ptr %.promoted, null
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8821)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.627)
  br i1 %i.h, label %"_ZN4core3ptr88drop_in_place$LT$core..option..Option$LT$clap_builder..util..any_value..AnyValue$GT$$GT$17hb1063fc8aa68de2dE.exit.peel", label %bb.b

bb.b:                                             ; preds = %.split.preheader
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8822)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8823)
  %i.i = icmp eq ptr %.promoted48, %.promoted47
  br i1 %i.i, label %_ZN4core3ops8function6FnOnce9call_once17hfd0fc120dc0644c7E.exit.thread.i.peel, label %_ZN4core3ops8function6FnOnce9call_once17hfd0fc120dc0644c7E.exit.i.peel

_ZN4core3ops8function6FnOnce9call_once17hfd0fc120dc0644c7E.exit.i.peel: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.promoted48, i64 32
  store ptr %i.j, ptr %i.c, align 8, !alias.scope !8824, !noalias !8825
  %.sroa.025.0.copyload.peel = load ptr, ptr %.promoted48, align 8, !noalias !8826 ; 2 uses
  %.sroa.627.0..sroa_idx.peel = getelementptr inbounds nuw i8, ptr %.promoted48, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.627, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.627.0..sroa_idx.peel, i64 24, i1 false), !noalias !8826
  %.not6.i.peel = icmp eq ptr %.sroa.025.0.copyload.peel, null
  br i1 %.not6.i.peel, label %_ZN4core3ops8function6FnOnce9call_once17hfd0fc120dc0644c7E.exit.thread.i.peel, label %.split51.us

_ZN4core3ops8function6FnOnce9call_once17hfd0fc120dc0644c7E.exit.thread.i.peel: ; preds = %_ZN4core3ops8function6FnOnce9call_once17hfd0fc120dc0644c7E.exit.i.peel, %bb.b
  invoke fastcc void @"_ZN4core3ptr127drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$clap_builder..util..any_value..AnyValue$GT$$GT$$GT$17hce56e0960e25adb0E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %_ZN4core4iter8adapters7flatten17and_then_or_clear17h821090b81d7aa00aE.exit.thread34.peel unwind label %"_ZN4core3ptr88drop_in_place$LT$core..option..Option$LT$clap_builder..util..any_value..AnyValue$GT$$GT$17hb1063fc8aa68de2dE.exit.i.split.loopexit.split-lp", !noalias !8827

_ZN4core4iter8adapters7flatten17and_then_or_clear17h821090b81d7aa00aE.exit.thread34.peel: ; preds = %_ZN4core3ops8function6FnOnce9call_once17hfd0fc120dc0644c7E.exit.thread.i.peel
  store ptr null, ptr %i.a, align 8, !alias.scope !8821, !noalias !8827
  br label %"_ZN4core3ptr88drop_in_place$LT$core..option..Option$LT$clap_builder..util..any_value..AnyValue$GT$$GT$17hb1063fc8aa68de2dE.exit.peel"

"_ZN4core3ptr88drop_in_place$LT$core..option..Option$LT$clap_builder..util..any_value..AnyValue$GT$$GT$17hb1063fc8aa68de2dE.exit.peel": ; preds = %_ZN4core4iter8adapters7flatten17and_then_or_clear17h821090b81d7aa00aE.exit.thread34.peel, %.split.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.627)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8828)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8829)
  %i.k = icmp eq ptr %.promoted49, %i.f
  br i1 %i.k, label %"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17hb56cd495eaa74357E.exit.thread", label %"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17hb56cd495eaa74357E.exit.peel"

"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17hb56cd495eaa74357E.exit.peel": ; preds = %"_ZN4core3ptr88drop_in_place$LT$core..option..Option$LT$clap_builder..util..any_value..AnyValue$GT$$GT$17hb1063fc8aa68de2dE.exit.peel"
  %i.l = getelementptr inbounds nuw i8, ptr %.promoted49, i64 24 ; 2 uses
  store ptr %i.l, ptr %i.g, align 8, !alias.scope !8830, !noalias !8831
  %.sroa.0.0.copyload10.peel = load i64, ptr %.promoted49, align 8, !noalias !8830 ; 3 uses
  %.sroa.8.0..sroa_idx11.peel = getelementptr inbounds nuw i8, ptr %.promoted49, i64 8
  %.sroa.8.sroa.0.0.copyload.peel = load ptr, ptr %.sroa.8.0..sroa_idx11.peel, align 8, !noalias !8830 ; 6 uses
  %.not1.peel = icmp eq i64 %.sroa.0.0.copyload10.peel, -9223372036854775808
  br i1 %.not1.peel, label %"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17hb56cd495eaa74357E.exit.thread", label %bb.c

bb.c:                                             ; preds = %"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17hb56cd495eaa74357E.exit.peel"
  %.sroa.8.sroa.5.0..sroa.8.0..sroa_idx11.sroa_idx.peel = getelementptr inbounds nuw i8, ptr %.promoted49, i64 16
  %.sroa.8.sroa.5.0.copyload.peel = load i64, ptr %.sroa.8.sroa.5.0..sroa.8.0..sroa_idx11.sroa_idx.peel, align 8, !noalias !8830 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.sroa.0.0.copyload.peel) ]
  %i.m = icmp ult i64 %.sroa.8.sroa.5.0.copyload.peel, 288230376151711744
  tail call void @llvm.assume(i1 %i.m)
  %i.n = getelementptr inbounds nuw [32 x i8], ptr %.sroa.8.sroa.0.0.copyload.peel, i64 %.sroa.8.sroa.5.0.copyload.peel ; 3 uses
  invoke fastcc void @"_ZN4core3ptr127drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$clap_builder..util..any_value..AnyValue$GT$$GT$$GT$17hce56e0960e25adb0E"(ptr noalias noundef align 8 dereferenceable(32) %i.a)
          to label %.split.peel.next unwind label %.loopexit.split-lp

.split.peel.next:                                 ; preds = %bb.c
  store ptr %.sroa.8.sroa.0.0.copyload.peel, ptr %i.a, align 8
  store ptr %.sroa.8.sroa.0.0.copyload.peel, ptr %i.c, align 8
  store i64 %.sroa.0.0.copyload10.peel, ptr %.sroa.620.0..sroa_idx21, align 8
  store ptr %i.n, ptr %i.b, align 8
  br label %.split

.split.us:                                        ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8832)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.627)
  %.not.i.us = icmp eq ptr %.promoted, null
  br i1 %.not.i.us, label %"_ZN4core3ptr88drop_in_place$LT$core..option..Option$LT$clap_builder..util..any_value..AnyValue$GT$$GT$17hb1063fc8aa68de2dE.exit.us", label %bb.d

bb.d:                                             ; preds = %.split.us
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8833)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8834)
  %i.o = icmp eq ptr %.promoted48, %.promoted47
  br i1 %i.o, label %_ZN4core3ops8function6FnOnce9call_once17hfd0fc120dc0644c7E.exit.thread.i.us, label %_ZN4core3ops8function6FnOnce9call_once17hfd0fc120dc0644c7E.exit.i.us

_ZN4core3ops8function6FnOnce9call_once17hfd0fc120dc0644c7E.exit.i.us: ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %.promoted48, i64 32
  store ptr %i.p, ptr %i.c, align 8, !alias.scope !8835, !noalias !8825
  %.sroa.025.0.copyload.us = load ptr, ptr %.promoted48, align 8, !noalias !8836 ; 2 uses
  %.sroa.627.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %.promoted48, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.627, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.627.0..sroa_idx.us, i64 24, i1 false), !noalias !8836
  %.not6.i.us = icmp eq ptr %.sroa.025.0.copyload.us, null
  br i1 %.not6.i.us, label %_ZN4core3ops8function6FnOnce9call_once17hfd0fc120dc0644c7E.exit.thread.i.us, label %.split51.us

_ZN4core3ops8function6FnOnce9call_once17hfd0fc120dc0644c7E.exit.thread.i.us: ; preds = %_ZN4core3ops8function6FnOnce9call_once17hfd0fc120dc0644c7E.exit.i.us, %bb.d
  invoke fastcc void @"_ZN4core3ptr127drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$clap_builder..util..any_value..AnyValue$GT$$GT$$GT$17hce56e0960e25adb0E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %_ZN4core4iter8adapters7flatten17and_then_or_clear17h821090b81d7aa00aE.exit.thread34.us unwind label %"_ZN4core3ptr88drop_in_place$LT$core..option..Option$LT$clap_builder..util..any_value..AnyValue$GT$$GT$17hb1063fc8aa68de2dE.exit.i.split.us", !noalias !8827

_ZN4core4iter8adapters7flatten17and_then_or_clear17h821090b81d7aa00aE.exit.thread34.us: ; preds = %_ZN4core3ops8function6FnOnce9call_once17hfd0fc120dc0644c7E.exit.thread.i.us
  store ptr null, ptr %i.a, align 8, !alias.scope !8832, !noalias !8827
  br label %"_ZN4core3ptr88drop_in_place$LT$core..option..Option$LT$clap_builder..util..any_value..AnyValue$GT$$GT$17hb1063fc8aa68de2dE.exit.us"

"_ZN4core3ptr88drop_in_place$LT$core..option..Option$LT$clap_builder..util..any_value..AnyValue$GT$$GT$17hb1063fc8aa68de2dE.exit.us": ; preds = %.split.us, %_ZN4core4iter8adapters7flatten17and_then_or_clear17h821090b81d7aa00aE.exit.thread34.us
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.627)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8837)
  br label %"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17hb56cd495eaa74357E.exit.thread"

end_hunk_0
begin_hunk_1_@"_ZN5xtask6common7command12run_commands28_$u7b$$u7b$closure$u7d$$u7d$17h489cc10dbe2d418eE":bb.a
bb.ez:                                            ; preds = %bb.gl, %.critedge.i
  %i.pq = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr80drop_in_place$LT$$LP$serde_json..value..Value$C$http..status..StatusCode$RP$$GT$17hea17f039477a24c5E.exit146.i"

bb.fa:                                            ; preds = %.loopexit.i
  %i.pr = landingpad { ptr, i32 }
          cleanup
  br label %.body126.i

.loopexit.i:                                      ; preds = %.lr.ph.i.i.i.i, %bb.et
  %.sroa.8239.1.i = phi ptr [ %.sroa.8239.0447.i, %bb.et ], [ %i.pb, %.lr.ph.i.i.i.i ]
  %.sroa.0238.1.i = phi ptr [ %.sroa.0238.0448.i, %bb.et ], [ %i.pa, %.lr.ph.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i = phi i16 [ %.sroa.12241.0446.i, %bb.et ], [ %.cast.i.i.i.i, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.ps = add i16 %.lcssa.i.i.i.i, -1
  %i.pt = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i, i1 true)
  %i.pu = zext nneg i16 %i.pt to i64
  %i.pv = and i16 %i.ps, %.lcssa.i.i.i.i
  %i.pw = sub nsw i64 0, %i.pu
  %i.px = getelementptr inbounds [48 x i8], ptr %.sroa.0238.1.i, i64 %i.pw ; 4 uses
  %i.py = add i64 %.sroa.16243.0445.i, -1         ; 2 uses
  %i.pz = getelementptr inbounds i8, ptr %i.px, i64 -48 ; 2 uses
  %i.qa = getelementptr inbounds i8, ptr %i.px, i64 -24
  store ptr %i.pz, ptr %i.ba, align 8, !noalias !34443
  store ptr %i.qa, ptr %i.az, align 8, !noalias !34443
  %i.qb = getelementptr i8, ptr %i.px, i64 -16
  %.val73.i = load ptr, ptr %i.qb, align 8, !noalias !34445, !nonnull !24, !noundef !24
  %i.qc = getelementptr i8, ptr %i.px, i64 -8
  %.val74.i = load i64, ptr %i.qc, align 8, !noalias !34445, !noundef !24
  %i.qd = invoke noundef align 8 dereferenceable_or_null(72) ptr @_ZN10serde_json5value5Value7pointer17h28ef6c574eda098bE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.bb, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val73.i, i64 noundef %.val74.i)
          to label %bb.fb unwind label %bb.fa, !noalias !34445 ; 9 uses

bb.fb:                                            ; preds = %.loopexit.i
  %.not.i119.i = icmp eq ptr %i.qd, null
  br i1 %.not.i119.i, label %bb.fc, label %bb.fg

bb.fc:                                            ; preds = %bb.fb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !34557
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !34558
  store ptr %i.az, ptr %i.z, align 8, !noalias !34558
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h5396e264cc38a2beE", ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !noalias !34558
  %i.qe = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store ptr %i.ba, ptr %i.qe, align 8, !noalias !34558
  %.sroa.46.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h5396e264cc38a2beE", ptr %.sroa.46.0..sroa_idx.i.i.i, align 8, !noalias !34558
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !34559
  store ptr @1303, ptr %i.y, align 8, !noalias !34560
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i64 3, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !34560
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store ptr %i.z, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !34560
  %.sroa.6.0..sroa_idx.i.i120.i = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  store i64 2, ptr %.sroa.6.0..sroa_idx.i.i120.i, align 8, !noalias !34560
  %.sroa.7.0..sroa_idx.i.i121.i = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  store ptr null, ptr %.sroa.7.0..sroa_idx.i.i121.i, align 8, !noalias !34560
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ac, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.y)
          to label %.noexc124.i unwind label %bb.ff, !noalias !34445

.noexc124.i:                                      ; preds = %bb.fc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !34559
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !34558
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !34557
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !34557
  invoke void @_ZN3std9backtrace9Backtrace7capture17hfe657b1debc7ecd5E(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.aa)
          to label %"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$22construct_from_display17hd0aec229f97b744bE.exit.i.i" unwind label %bb.fd, !noalias !34561

"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$22construct_from_display17hd0aec229f97b744bE.exit.i.i": ; preds = %.noexc124.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ab, ptr noundef nonnull align 8 dereferenceable(48) %i.aa, i64 48, i1 false), !noalias !34557
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !34557
  %i.qf = invoke fastcc noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$9construct17hc61a68ca4107ca5cE"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.ac, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.ab)
          to label %bb.gl unwind label %bb.ff, !noalias !34445

bb.fd:                                            ; preds = %.noexc124.i
  %i.qg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !34562)
  %.val.i.i122.i = load i64, ptr %i.ac, align 8, !alias.scope !34562, !noalias !34557 ; 2 uses
  %i.qh = icmp eq i64 %.val.i.i122.i, 0
  br i1 %i.qh, label %.body126.i, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %i.qi = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.val1.i.i123.i = load ptr, ptr %i.qi, align 8, !alias.scope !34562, !noalias !34557, !nonnull !24, !noundef !24
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i123.i, i64 noundef %.val.i.i122.i, i64 noundef range(i64 1, -9223372036854775807) 1) #47, !noalias !34563
  br label %.body126.i

bb.ff:                                            ; preds = %"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$22construct_from_display17hd0aec229f97b744bE.exit.i.i", %bb.fc
  %i.qj = landingpad { ptr, i32 }
          cleanup
  br label %.body126.i

bb.fg:                                            ; preds = %bb.fb
  call void @llvm.experimental.noalias.scope.decl(metadata !34564)
  %i.qk = load i64, ptr %i.qd, align 8, !range !72, !alias.scope !34564, !noalias !34565, !noundef !24 ; 2 uses
  %i.ql = xor i64 %i.qk, -9223372036854775808
  %i.qm = icmp slt i64 %i.qk, 0
  %i.qn = select i1 %i.qm, i64 %i.ql, i64 5
  switch i64 %i.qn, label %bb.fh [
    i64 0, label %bb.fi
    i64 1, label %bb.fj
    i64 2, label %bb.fk
    i64 3, label %bb.fl
    i64 4, label %bb.fm
    i64 5, label %bb.fn
  ]

bb.fh:                                            ; preds = %bb.fg
  unreachable

bb.fi:                                            ; preds = %bb.fg
  store i64 -9223372036854775808, ptr %i.aw, align 8, !noalias !34443
  br label %"_ZN63_$LT$serde_json..value..Value$u20$as$u20$core..clone..Clone$GT$5clone17h065ff73d52a9cb78E.exit.i"

bb.fj:                                            ; preds = %bb.fg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.aw, ptr noundef nonnull readonly align 8 dereferenceable(72) %i.qd, i64 72, i1 false), !noalias !34445
  br label %"_ZN63_$LT$serde_json..value..Value$u20$as$u20$core..clone..Clone$GT$5clone17h065ff73d52a9cb78E.exit.i"

bb.fk:                                            ; preds = %bb.fg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.aw, ptr noundef nonnull readonly align 8 dereferenceable(72) %i.qd, i64 72, i1 false), !noalias !34445
  br label %"_ZN63_$LT$serde_json..value..Value$u20$as$u20$core..clone..Clone$GT$5clone17h065ff73d52a9cb78E.exit.i"

bb.fl:                                            ; preds = %bb.fg
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qd, i64 8
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.os, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.qo, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1422)
          to label %.noexc131.i unwind label %bb.fq, !noalias !34445, !inline_history !114

.noexc131.i:                                      ; preds = %bb.fl
  store i64 -9223372036854775805, ptr %i.aw, align 8, !noalias !34443
  br label %"_ZN63_$LT$serde_json..value..Value$u20$as$u20$core..clone..Clone$GT$5clone17h065ff73d52a9cb78E.exit.i"

bb.fm:                                            ; preds = %bb.fg
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qd, i64 24
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qd, i64 16
  %i.qr = load ptr, ptr %i.qq, align 8, !alias.scope !34566, !noalias !34567, !nonnull !24, !noundef !24
  %i.qs = load i64, ptr %i.qp, align 8, !alias.scope !34566, !noalias !34567, !noundef !24
  invoke fastcc void @"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hf981a842b1245085E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.os, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.qr, i64 noundef %i.qs)
          to label %.noexc132.i unwind label %bb.fq, !noalias !34445, !inline_history !114

.noexc132.i:                                      ; preds = %bb.fm
  store i64 -9223372036854775804, ptr %i.aw, align 8, !noalias !34443
  br label %"_ZN63_$LT$serde_json..value..Value$u20$as$u20$core..clone..Clone$GT$5clone17h065ff73d52a9cb78E.exit.i"

bb.fn:                                            ; preds = %bb.fg
  call void @llvm.experimental.noalias.scope.decl(metadata !34568)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !34569
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.or, ptr noundef nonnull align 8 dereferenceable(32) @257, i64 32, i1 false), !noalias !34569
  store i64 0, ptr %i.x, align 8, !noalias !34569
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i.i.i128.i, align 8, !noalias !34569
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !34569
  invoke fastcc void @"_ZN73_$LT$indexmap..inner..Core$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$10clone_from17hb55a1842e83d4870E"(ptr noalias noundef align 8 dereferenceable(56) %i.x, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.qd)
          to label %"_ZN79_$LT$indexmap..map..IndexMap$LT$K$C$V$C$S$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h13c25366bc088b2aE.exit.i.i" unwind label %bb.fo, !noalias !34570, !inline_history !19

bb.fo:                                            ; preds = %bb.fn
  %i.qt = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr98drop_in_place$LT$indexmap..inner..Core$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17h1669c1b72e97a552E"(ptr noalias noundef align 8 dereferenceable(56) %i.x) #55
          to label %.body126.i unwind label %bb.fp, !noalias !34571, !inline_history !19

bb.fp:                                            ; preds = %bb.fo
  %i.qu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !34571, !inline_history !19
  unreachable

"_ZN79_$LT$indexmap..map..IndexMap$LT$K$C$V$C$S$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h13c25366bc088b2aE.exit.i.i": ; preds = %bb.fn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.aw, ptr noundef nonnull align 8 dereferenceable(56) %i.x, i64 56, i1 false), !noalias !34443
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !34569
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qd, i64 56
  %i.qw = load <2 x i64>, ptr %i.qv, align 8, !alias.scope !34572, !noalias !34573
  store <2 x i64> %i.qw, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !34443
  br label %"_ZN63_$LT$serde_json..value..Value$u20$as$u20$core..clone..Clone$GT$5clone17h065ff73d52a9cb78E.exit.i"

bb.fq:                                            ; preds = %bb.fm, %bb.fl
  %i.qx = landingpad { ptr, i32 }
          cleanup
  br label %.body126.i

"_ZN63_$LT$serde_json..value..Value$u20$as$u20$core..clone..Clone$GT$5clone17h065ff73d52a9cb78E.exit.i": ; preds = %"_ZN79_$LT$indexmap..map..IndexMap$LT$K$C$V$C$S$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h13c25366bc088b2aE.exit.i.i", %.noexc132.i, %.noexc131.i, %bb.fk, %bb.fj, %bb.fi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !34443
  %i.qy = load ptr, ptr %i.ot, align 8, !noalias !34443, !nonnull !24, !align !31, !noundef !24 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !34443
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ax, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.pz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1298)
          to label %bb.fr unwind label %bb.gk, !noalias !34445

bb.fr:                                            ; preds = %"_ZN63_$LT$serde_json..value..Value$u20$as$u20$core..clone..Clone$GT$5clone17h065ff73d52a9cb78E.exit.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !34574)
  call void @llvm.experimental.noalias.scope.decl(metadata !34575)
  call void @llvm.experimental.noalias.scope.decl(metadata !34576)
  call void @llvm.experimental.noalias.scope.decl(metadata !34577)
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qy, i64 32 ; 2 uses
  %.val.i.i135.i = load i64, ptr %i.qz, align 8, !alias.scope !34578, !noalias !34579, !noundef !24 ; 2 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qy, i64 40
  %.val8.i.i.i = load i64, ptr %i.ra, align 8, !alias.scope !34578, !noalias !34579, !noundef !24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !34580)
  %i.rb = xor i64 %.val.i.i135.i, 8317987319222330741 ; 2 uses
  %i.rc = xor i64 %.val8.i.i.i, 7237128888997146477 ; 2 uses
  %i.rd = xor i64 %.val.i.i135.i, 7816392313619706465 ; 2 uses
  %i.re = xor i64 %.val8.i.i.i, 8387220255154660723 ; 2 uses
  %.val.i.i36 = load ptr, ptr %i.ov, align 8, !alias.scope !34580, !noalias !34581, !nonnull !24, !noundef !24 ; 7 uses
  %.val1.i.i = load i64, ptr %i.ou, align 8, !alias.scope !34580, !noalias !34581, !noundef !24 ; 7 uses
  %i.rf = and i64 %.val1.i.i, 7                   ; 7 uses
  %i.rg = and i64 %.val1.i.i, -8                  ; 2 uses
  %.not = icmp eq i64 %i.rg, 0
  br i1 %.not, label %._crit_edge.i62, label %.lr.ph.i55

._crit_edge.i62.loopexit:                         ; preds = %.lr.ph.i55
  %i.rh = and i64 %.val1.i.i, -8
  br label %._crit_edge.i62

._crit_edge.i62:                                  ; preds = %._crit_edge.i62.loopexit, %bb.fr
  %.sroa.0110.4 = phi i64 [ %i.rb, %bb.fr ], [ %i.sp, %._crit_edge.i62.loopexit ] ; 4 uses
  %.sroa.12115.4 = phi i64 [ %i.rd, %bb.fr ], [ %i.so, %._crit_edge.i62.loopexit ] ; 4 uses
  %.sroa.22.4 = phi i64 [ %i.rc, %bb.fr ], [ %i.sl, %._crit_edge.i62.loopexit ] ; 6 uses
  %.sroa.32.4 = phi i64 [ %i.re, %bb.fr ], [ %i.sn, %._crit_edge.i62.loopexit ] ; 4 uses
  %.sroa.04.0.lcssa.i45 = phi i64 [ 0, %bb.fr ], [ %i.rh, %._crit_edge.i62.loopexit ] ; 3 uses
  %i.ri = icmp samesign ugt i64 %i.rf, 3
  br i1 %i.ri, label %bb.fs, label %bb.ft

bb.fs:                                            ; preds = %._crit_edge.i62
  %i.rj = getelementptr inbounds nuw i8, ptr %.val.i.i36, i64 %.sroa.04.0.lcssa.i45
  %.sroa.014.0.copyload.i18.i54 = load i32, ptr %i.rj, align 1, !alias.scope !34582, !noalias !34583
  %i.rk = zext i32 %.sroa.014.0.copyload.i18.i54 to i64
  br label %bb.ft

bb.ft:                                            ; preds = %bb.fs, %._crit_edge.i62
  %.sroa.011.0.i12.i46 = phi i64 [ %i.rk, %bb.fs ], [ 0, %._crit_edge.i62 ] ; 2 uses
  %.sroa.0.0.i13.i47 = phi i64 [ 4, %bb.fs ], [ 0, %._crit_edge.i62 ] ; 5 uses
  %i.rl = or disjoint i64 %.sroa.0.0.i13.i47, 1
  %i.rm = icmp samesign ult i64 %i.rl, %i.rf
  br i1 %i.rm, label %bb.fu, label %bb.fv

bb.fu:                                            ; preds = %bb.ft
  %i.rn = getelementptr i8, ptr %.val.i.i36, i64 %.sroa.04.0.lcssa.i45
  %i.ro = getelementptr i8, ptr %i.rn, i64 %.sroa.0.0.i13.i47
  %.sroa.015.0.copyload.i17.i53 = load i16, ptr %i.ro, align 1, !alias.scope !34582, !noalias !34583
  %i.rp = zext i16 %.sroa.015.0.copyload.i17.i53 to i64
  %i.rq = shl nuw nsw i64 %.sroa.0.0.i13.i47, 3
  %i.rr = shl nuw nsw i64 %i.rp, %i.rq
  %i.rs = or i64 %i.rr, %.sroa.011.0.i12.i46
  %i.rt = or disjoint i64 %.sroa.0.0.i13.i47, 2
  br label %bb.fv

bb.fv:                                            ; preds = %bb.fu, %bb.ft
  %.sroa.011.1.i14.i48 = phi i64 [ %i.rs, %bb.fu ], [ %.sroa.011.0.i12.i46, %bb.ft ] ; 2 uses
  %.sroa.0.1.i15.i49 = phi i64 [ %i.rt, %bb.fu ], [ %.sroa.0.0.i13.i47, %bb.ft ] ; 3 uses
  %i.ru = icmp samesign ult i64 %.sroa.0.1.i15.i49, %i.rf
  br i1 %i.ru, label %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i, label %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17h3937b020d1255dd4E.exit64"

.lr.ph.i55:                                       ; preds = %bb.fr, %.lr.ph.i55
  %i.rv = phi i64 [ %i.so, %.lr.ph.i55 ], [ %i.rd, %bb.fr ]
  %i.rw = phi i64 [ %i.sl, %.lr.ph.i55 ], [ %i.rc, %bb.fr ] ; 3 uses
  %i.rx = phi i64 [ %i.sn, %.lr.ph.i55 ], [ %i.re, %bb.fr ]
  %.sroa.04.020.i60 = phi i64 [ %i.sq, %.lr.ph.i55 ], [ 0, %bb.fr ] ; 2 uses
  %i.ry = phi i64 [ %i.sp, %.lr.ph.i55 ], [ %i.rb, %bb.fr ]
  %i.rz = getelementptr inbounds nuw i8, ptr %.val.i.i36, i64 %.sroa.04.020.i60
  %.sroa.08.0.copyload.i61 = load i64, ptr %i.rz, align 1, !alias.scope !34584, !noalias !34583 ; 2 uses
  %i.sa = xor i64 %.sroa.08.0.copyload.i61, %i.rx ; 3 uses
  %i.sb = add i64 %i.ry, %i.rw                    ; 3 uses
  %i.sc = add i64 %i.sa, %i.rv                    ; 2 uses
  %i.sd = call i64 @llvm.fshl.i64(i64 %i.rw, i64 %i.rw, i64 13)
  %i.se = xor i64 %i.sb, %i.sd                    ; 3 uses
  %i.sf = call i64 @llvm.fshl.i64(i64 %i.sa, i64 %i.sa, i64 16)
  %i.sg = xor i64 %i.sc, %i.sf                    ; 3 uses
  %i.sh = call i64 @llvm.fshl.i64(i64 %i.sb, i64 %i.sb, i64 32)
  %i.si = add i64 %i.sc, %i.se                    ; 3 uses
  %i.sj = add i64 %i.sg, %i.sh                    ; 2 uses
  %i.sk = call i64 @llvm.fshl.i64(i64 %i.se, i64 %i.se, i64 17)
  %i.sl = xor i64 %i.si, %i.sk                    ; 2 uses
  %i.sm = call i64 @llvm.fshl.i64(i64 %i.sg, i64 %i.sg, i64 21)
  %i.sn = xor i64 %i.sm, %i.sj                    ; 2 uses
  %i.so = call i64 @llvm.fshl.i64(i64 %i.si, i64 %i.si, i64 32) ; 2 uses
  %i.sp = xor i64 %i.sj, %.sroa.08.0.copyload.i61 ; 2 uses
  %i.sq = add nuw i64 %.sroa.04.020.i60, 8        ; 2 uses
  %i.sr = icmp ult i64 %i.sq, %i.rg
  br i1 %i.sr, label %.lr.ph.i55, label %._crit_edge.i62.loopexit

"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17h3937b020d1255dd4E.exit64": ; preds = %bb.fv
  %3 = icmp eq i64 %i.rf, 0
  br i1 %3, label %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17h3937b020d1255dd4E.exit", label %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17h3937b020d1255dd4E.exit64.a"

"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17h3937b020d1255dd4E.exit64.a": ; preds = %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17h3937b020d1255dd4E.exit64"
  %4 = shl nuw nsw i64 %i.rf, 3
  %5 = shl nuw nsw i64 255, %4
  %6 = or i64 %5, %.sroa.011.1.i14.i48
  br label %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17h3937b020d1255dd4E.exit"

_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i: ; preds = %bb.fv
  %7 = add i64 %.sroa.0.1.i15.i49, %.sroa.04.0.lcssa.i45 ; 2 uses
  %8 = icmp ult i64 %7, %.val1.i.i
  call void @llvm.assume(i1 %8), !noalias !34585
  %9 = getelementptr inbounds nuw i8, ptr %.val.i.i36, i64 %7
  %10 = load i8, ptr %9, align 1, !alias.scope !34582, !noalias !34583, !noundef !24
  %11 = zext i8 %10 to i64
  %12 = shl nuw nsw i64 %.sroa.0.1.i15.i49, 3
  %13 = shl nuw nsw i64 %11, %12
  %i.ss = shl nuw nsw i64 %i.rf, 3
  %i.st = shl nuw i64 255, %i.ss
  %14 = or i64 %13, %i.st
  %i.su = or i64 %14, %.sroa.011.1.i14.i48        ; 3 uses
  %.not165 = icmp eq i64 %i.rf, 7
  br i1 %.not165, label %.thread391, label %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17h3937b020d1255dd4E.exit"

.thread391:                                       ; preds = %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i
  %i.sv = xor i64 %i.su, %.sroa.32.4              ; 3 uses
  %i.sw = add i64 %.sroa.22.4, %.sroa.0110.4      ; 3 uses
  %i.sx = add i64 %i.sv, %.sroa.12115.4           ; 2 uses
  %i.sy = call i64 @llvm.fshl.i64(i64 %.sroa.22.4, i64 %.sroa.22.4, i64 13)
  %i.sz = xor i64 %i.sy, %i.sw                    ; 3 uses
  %i.ta = call i64 @llvm.fshl.i64(i64 %i.sv, i64 %i.sv, i64 16)
  %i.tb = xor i64 %i.sx, %i.ta                    ; 3 uses
  %i.tc = call i64 @llvm.fshl.i64(i64 %i.sw, i64 %i.sw, i64 32)
  %i.td = add i64 %i.sx, %i.sz                    ; 3 uses
  %i.te = add i64 %i.tb, %i.tc                    ; 2 uses
  %i.tf = call i64 @llvm.fshl.i64(i64 %i.sz, i64 %i.sz, i64 17)
  %i.tg = xor i64 %i.td, %i.tf
  %i.th = call i64 @llvm.fshl.i64(i64 %i.tb, i64 %i.tb, i64 21)
  %i.ti = xor i64 %i.th, %i.te
  %i.tj = call i64 @llvm.fshl.i64(i64 %i.td, i64 %i.td, i64 32)
  %i.tk = xor i64 %i.te, %i.su
  br label %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17h3937b020d1255dd4E.exit"

"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17h3937b020d1255dd4E.exit": ; preds = %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17h3937b020d1255dd4E.exit64", %.thread391, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17h3937b020d1255dd4E.exit64.a", %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i
  %.sroa.0110.2 = phi i64 [ %.sroa.0110.4, %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i ], [ %.sroa.0110.4, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17h3937b020d1255dd4E.exit64.a" ], [ %i.tk, %.thread391 ], [ %.sroa.0110.4, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17h3937b020d1255dd4E.exit64" ]
  %.sroa.12115.2 = phi i64 [ %.sroa.12115.4, %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i ], [ %.sroa.12115.4, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17h3937b020d1255dd4E.exit64.a" ], [ %i.tj, %.thread391 ], [ %.sroa.12115.4, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17h3937b020d1255dd4E.exit64" ]
  %.sroa.22.2 = phi i64 [ %.sroa.22.4, %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i ], [ %.sroa.22.4, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17h3937b020d1255dd4E.exit64.a" ], [ %i.tg, %.thread391 ], [ %.sroa.22.4, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17h3937b020d1255dd4E.exit64" ] ; 3 uses
  %.sroa.32.2 = phi i64 [ %.sroa.32.4, %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i ], [ %.sroa.32.4, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17h3937b020d1255dd4E.exit64.a" ], [ %i.ti, %.thread391 ], [ %.sroa.32.4, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17h3937b020d1255dd4E.exit64" ]
  %.sroa.50.0 = phi i64 [ %i.su, %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i ], [ %6, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17h3937b020d1255dd4E.exit64.a" ], [ 0, %.thread391 ], [ 255, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17h3937b020d1255dd4E.exit64" ]
  %15 = shl i64 %.val1.i.i, 56
  %16 = add i64 %15, 72057594037927936
  %i.tl = or i64 %.sroa.50.0, %16                 ; 2 uses
  %i.tm = xor i64 %i.tl, %.sroa.32.2              ; 3 uses
  %i.tn = add i64 %.sroa.22.2, %.sroa.0110.2      ; 3 uses
  %i.to = add i64 %i.tm, %.sroa.12115.2           ; 2 uses
  %i.tp = call i64 @llvm.fshl.i64(i64 %.sroa.22.2, i64 %.sroa.22.2, i64 13)
  %i.tq = xor i64 %i.tp, %i.tn                    ; 3 uses
  %i.tr = call i64 @llvm.fshl.i64(i64 %i.tm, i64 %i.tm, i64 16)
  %i.ts = xor i64 %i.tr, %i.to                    ; 3 uses
  %i.tt = call i64 @llvm.fshl.i64(i64 %i.tn, i64 %i.tn, i64 32)
  %i.tu = add i64 %i.to, %i.tq                    ; 3 uses
  %i.tv = add i64 %i.ts, %i.tt                    ; 2 uses
  %i.tw = call i64 @llvm.fshl.i64(i64 %i.tq, i64 %i.tq, i64 17)
  %i.tx = xor i64 %i.tu, %i.tw                    ; 3 uses
  %i.ty = call i64 @llvm.fshl.i64(i64 %i.ts, i64 %i.ts, i64 21)
  %i.tz = xor i64 %i.ty, %i.tv                    ; 3 uses
  %i.ua = call i64 @llvm.fshl.i64(i64 %i.tu, i64 %i.tu, i64 32)
  %i.ub = xor i64 %i.tv, %i.tl
  %i.uc = xor i64 %i.ua, 255
  %i.ud = add i64 %i.ub, %i.tx                    ; 3 uses
  %i.ue = add i64 %i.tz, %i.uc                    ; 2 uses
  %i.uf = call i64 @llvm.fshl.i64(i64 %i.tx, i64 %i.tx, i64 13)
  %i.ug = xor i64 %i.ud, %i.uf                    ; 3 uses
  %i.uh = call i64 @llvm.fshl.i64(i64 %i.tz, i64 %i.tz, i64 16)
  %i.ui = xor i64 %i.uh, %i.ue                    ; 3 uses
  %i.uj = call i64 @llvm.fshl.i64(i64 %i.ud, i64 %i.ud, i64 32)
  %i.uk = add i64 %i.ug, %i.ue                    ; 3 uses
  %i.ul = add i64 %i.ui, %i.uj                    ; 2 uses
  %i.um = call i64 @llvm.fshl.i64(i64 %i.ug, i64 %i.ug, i64 17)
  %i.un = xor i64 %i.uk, %i.um                    ; 3 uses
  %i.uo = call i64 @llvm.fshl.i64(i64 %i.ui, i64 %i.ui, i64 21)
  %i.up = xor i64 %i.uo, %i.ul                    ; 3 uses
  %i.uq = call i64 @llvm.fshl.i64(i64 %i.uk, i64 %i.uk, i64 32)
  %i.ur = add i64 %i.un, %i.ul                    ; 3 uses
  %i.us = add i64 %i.up, %i.uq                    ; 2 uses
  %i.ut = call i64 @llvm.fshl.i64(i64 %i.un, i64 %i.un, i64 13)
  %i.uu = xor i64 %i.ut, %i.ur                    ; 3 uses
  %i.uv = call i64 @llvm.fshl.i64(i64 %i.up, i64 %i.up, i64 16)
  %i.uw = xor i64 %i.uv, %i.us                    ; 3 uses
  %i.ux = call i64 @llvm.fshl.i64(i64 %i.ur, i64 %i.ur, i64 32)
  %i.uy = add i64 %i.uu, %i.us                    ; 3 uses
  %i.uz = add i64 %i.uw, %i.ux                    ; 2 uses
  %i.va = call i64 @llvm.fshl.i64(i64 %i.uu, i64 %i.uu, i64 17)
  %i.vb = xor i64 %i.va, %i.uy                    ; 3 uses
  %i.vc = call i64 @llvm.fshl.i64(i64 %i.uw, i64 %i.uw, i64 21)
  %i.vd = xor i64 %i.vc, %i.uz                    ; 3 uses
  %i.ve = call i64 @llvm.fshl.i64(i64 %i.uy, i64 %i.uy, i64 32)
  %i.vf = add i64 %i.vb, %i.uz
  %i.vg = add i64 %i.vd, %i.ve                    ; 2 uses
  %i.vh = call i64 @llvm.fshl.i64(i64 %i.vb, i64 %i.vb, i64 13)
  %i.vi = xor i64 %i.vh, %i.vf                    ; 3 uses
  %i.vj = call i64 @llvm.fshl.i64(i64 %i.vd, i64 %i.vd, i64 16)
  %i.vk = xor i64 %i.vj, %i.vg                    ; 2 uses
  %i.vl = add i64 %i.vi, %i.vg                    ; 3 uses
  %i.vm = call i64 @llvm.fshl.i64(i64 %i.vi, i64 %i.vi, i64 17)
  %i.vn = call i64 @llvm.fshl.i64(i64 %i.vk, i64 %i.vk, i64 21)
  %i.vo = call i64 @llvm.fshl.i64(i64 %i.vl, i64 %i.vl, i64 32)
  %i.vp = xor i64 %i.vn, %i.vm
  %i.vq = xor i64 %i.vp, %i.vo
  %i.vr = xor i64 %i.vq, %i.vl                    ; 2 uses
  %i.vs = getelementptr inbounds nuw i8, ptr %i.qy, i64 16 ; 3 uses
  %i.vt = load i64, ptr %i.vs, align 8, !alias.scope !34586, !noalias !34587, !noundef !24
  %i.vu = icmp eq i64 %i.vt, 0
  br i1 %i.vu, label %bb.fw, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h9a0698f382caa90dE.exit.i.i.i.i", !prof !26

bb.fw:                                            ; preds = %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17h3937b020d1255dd4E.exit"
  %i.vv = invoke { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17hadcd087daf59bba6E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.qy, i64 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.qz, i1 noundef zeroext true)
          to label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h9a0698f382caa90dE.exit.i.i.i.i" unwind label %bb.ge, !noalias !34579 ; 0 uses

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h9a0698f382caa90dE.exit.i.i.i.i": ; preds = %bb.fw, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17h3937b020d1255dd4E.exit"
  %.val.i.i.i.i = load ptr, ptr %i.qy, align 8, !alias.scope !34588, !noalias !34589, !nonnull !24, !noundef !24 ; 8 uses
  %i.vw = getelementptr inbounds nuw i8, ptr %i.qy, i64 8
  %.val7.i.i.i.i = load i64, ptr %i.vw, align 8, !alias.scope !34588, !noalias !34589, !noundef !24 ; 4 uses
  %i.vx = lshr i64 %i.vr, 57
  %i.vy = trunc nuw nsw i64 %i.vx to i8           ; 3 uses
  %.sroa.0.0.vec.insert.i.i.i.i.i.i = insertelement <16 x i8> poison, i8 %i.vy, i64 0
  %.sroa.0.15.vec.insert.i.i.i.i.i.i = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i.i.i.i.i, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.fx

bb.fx:                                            ; preds = %bb.fz, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h9a0698f382caa90dE.exit.i.i.i.i"
  %.pn.i.i.i.i136.i = phi i64 [ %i.vr, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h9a0698f382caa90dE.exit.i.i.i.i" ], [ %i.wy, %bb.fz ]
  %.sroa.6.0.i.i.i.i.i = phi i64 [ undef, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h9a0698f382caa90dE.exit.i.i.i.i" ], [ %.sroa.6.120.i.i.i.i.i, %bb.fz ]
  %.sroa.01.0.i.i.i.i.i = phi i64 [ 0, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h9a0698f382caa90dE.exit.i.i.i.i" ], [ %.sroa.01.122.i.i.i.i.i, %bb.fz ]
  %i.vz = phi i64 [ 0, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h9a0698f382caa90dE.exit.i.i.i.i" ], [ %i.wx, %bb.fz ]
  %.sroa.0.017.i.i.i.i.i = and i64 %.pn.i.i.i.i136.i, %.val7.i.i.i.i ; 4 uses
  %i.wa = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %.sroa.0.017.i.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i.i.i = load <16 x i8>, ptr %i.wa, align 1, !noalias !34590 ; 3 uses
  %i.wb = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i, %.sroa.0.15.vec.insert.i.i.i.i.i.i
  %i.wc = bitcast <16 x i1> %i.wb to i16          ; 2 uses
  %.not25.i.i.i.i.i = icmp eq i16 %i.wc, 0
  br i1 %.not25.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.fx, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17hf015c88c8e1abce9E.exit.thread.i.i.i.i"
  %.sroa.05.026.i.i.i.i.i = phi i16 [ %i.wn, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17hf015c88c8e1abce9E.exit.thread.i.i.i.i" ], [ %i.wc, %bb.fx ] ; 3 uses
  %i.wd = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.026.i.i.i.i.i, i1 true)
  %i.we = zext nneg i16 %i.wd to i64
  %i.wf = add i64 %.sroa.0.017.i.i.i.i.i, %i.we
  %i.wg = and i64 %i.wf, %.val7.i.i.i.i
  %i.wh = sub nsw i64 0, %i.wg
  %i.wi = getelementptr inbounds [96 x i8], ptr %.val.i.i.i.i, i64 %i.wh ; 3 uses
  %i.wj = getelementptr i8, ptr %i.wi, i64 -80
  %.val4.i.i.i.i.i = load i64, ptr %i.wj, align 8, !noalias !34591, !noundef !24
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.val1.i.i, %.val4.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17hf015c88c8e1abce9E.exit.i.i.i.i", label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17hf015c88c8e1abce9E.exit.thread.i.i.i.i", !prof !115

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17hf015c88c8e1abce9E.exit.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i
  %i.wk = getelementptr i8, ptr %i.wi, i64 -88
  %.val3.i.i.i.i.i = load ptr, ptr %i.wk, align 8, !noalias !34591, !nonnull !24, !noundef !24
  %bcmp.i.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly align 1 %.val.i.i36, ptr nonnull readonly align 1 %.val3.i.i.i.i.i, i64 %.val1.i.i), !alias.scope !34592, !noalias !34591
  %i.wl = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.wl, label %bb.gc, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17hf015c88c8e1abce9E.exit.thread.i.i.i.i", !prof !28

._crit_edge.i.i.i.i.i:                            ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17hf015c88c8e1abce9E.exit.thread.i.i.i.i", %bb.fx
  %.not13.i.i.i.i.i = icmp eq i64 %.sroa.01.0.i.i.i.i.i, 1
  br i1 %.not13.i.i.i.i.i, label %.thread.i.i.i.i.i, label %bb.fy, !prof !26

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17hf015c88c8e1abce9E.exit.thread.i.i.i.i": ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17hf015c88c8e1abce9E.exit.i.i.i.i", %.lr.ph.i.i.i.i.i
  %i.wm = add i16 %.sroa.05.026.i.i.i.i.i, -1
  %i.wn = and i16 %i.wm, %.sroa.05.026.i.i.i.i.i  ; 2 uses
  %.not.i.i.i.i137.i = icmp eq i16 %i.wn, 0
  br i1 %.not.i.i.i.i137.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

bb.fy:                                            ; preds = %._crit_edge.i.i.i.i.i
  %i.wo = icmp slt <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i, zeroinitializer
  %i.wp = bitcast <16 x i1> %i.wo to i16          ; 2 uses
  %.not.not.i.not.i.i.i.i.i = icmp eq i16 %i.wp, 0 ; 2 uses
  %i.wq = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.wp, i1 true)
  %i.wr = zext nneg i16 %i.wq to i64
  %.sroa.6.0.i.i.i.i.i.i = select i1 %.not.not.i.not.i.i.i.i.i, i64 undef, i64 %i.wr
  %i.ws = add i64 %.sroa.6.0.i.i.i.i.i.i, %.sroa.0.017.i.i.i.i.i
  %i.wt = and i64 %i.ws, %.val7.i.i.i.i
  br i1 %.not.not.i.not.i.i.i.i.i, label %bb.fz, label %.thread.i.i.i.i.i

.thread.i.i.i.i.i:                                ; preds = %bb.fy, %._crit_edge.i.i.i.i.i
  %.sroa.6.121.i.i.i.i.i = phi i64 [ %i.wt, %bb.fy ], [ %.sroa.6.0.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 3 uses
  %i.wu = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i, splat (i8 -1)
  %i.wv = bitcast <16 x i1> %i.wu to i16
  %i.ww = icmp eq i16 %i.wv, 0
  br i1 %i.ww, label %bb.fz, label %bb.ga, !prof !26

bb.fz:                                            ; preds = %.thread.i.i.i.i.i, %bb.fy
  %.sroa.01.122.i.i.i.i.i = phi i64 [ 1, %.thread.i.i.i.i.i ], [ 0, %bb.fy ]
  %.sroa.6.120.i.i.i.i.i = phi i64 [ %.sroa.6.121.i.i.i.i.i, %.thread.i.i.i.i.i ], [ undef, %bb.fy ]
  %i.wx = add i64 %i.vz, 16                       ; 2 uses
  %i.wy = add i64 %i.wx, %.sroa.0.017.i.i.i.i.i
  br label %bb.fx

bb.ga:                                            ; preds = %.thread.i.i.i.i.i
  %i.wz = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %.sroa.6.121.i.i.i.i.i
  %i.xa = load i8, ptr %i.wz, align 1, !noalias !34593, !noundef !24 ; 2 uses
  %i.xb = icmp sgt i8 %i.xa, -1
  br i1 %i.xb, label %bb.gb, label %"_ZN3std11collections4hash3map24HashMap$LT$K$C$V$C$S$GT$6insert17h1a338796c608d50fE.exit.thread.i", !prof !26

bb.gb:                                            ; preds = %bb.ga
  %.val2.i.i.i.i.i.i = load <16 x i8>, ptr %.val.i.i.i.i, align 16, !noalias !34593
  %i.xc = icmp slt <16 x i8> %.val2.i.i.i.i.i.i, zeroinitializer
  %i.xd = bitcast <16 x i1> %i.xc to i16          ; 2 uses
  %i.xe = icmp ne i16 %i.xd, 0
  call void @llvm.assume(i1 %i.xe)
  %i.xf = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.xd, i1 true)
  %i.xg = zext nneg i16 %i.xf to i64              ; 2 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %i.xg
  %.pre.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i, align 1, !noalias !34594
  br label %"_ZN3std11collections4hash3map24HashMap$LT$K$C$V$C$S$GT$6insert17h1a338796c608d50fE.exit.thread.i"

bb.gc:                                            ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17hf015c88c8e1abce9E.exit.i.i.i.i"
  %i.xh = getelementptr inbounds i8, ptr %i.wi, i64 -72 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ay, ptr noundef nonnull align 8 dereferenceable(72) %i.xh, i64 72, i1 false), !noalias !34595
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.xh, ptr noundef nonnull align 8 dereferenceable(72) %i.aw, i64 72, i1 false), !noalias !34445
  call void @llvm.experimental.noalias.scope.decl(metadata !34596)
  %.val.i9.i.i.i = load i64, ptr %i.ax, align 8, !alias.scope !34597, !noalias !34598 ; 2 uses
  %i.xi = icmp eq i64 %.val.i9.i.i.i, 0
  br i1 %i.xi, label %"_ZN3std11collections4hash3map24HashMap$LT$K$C$V$C$S$GT$6insert17h1a338796c608d50fE.exit.i", label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i36, i64 noundef %.val.i9.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #47, !noalias !34599
  br label %"_ZN3std11collections4hash3map24HashMap$LT$K$C$V$C$S$GT$6insert17h1a338796c608d50fE.exit.i"

"_ZN3std11collections4hash3map24HashMap$LT$K$C$V$C$S$GT$6insert17h1a338796c608d50fE.exit.thread.i": ; preds = %bb.gb, %bb.ga
  %i.xj = phi i8 [ %.pre.i.i.i, %bb.gb ], [ %i.xa, %bb.ga ]
  %.sroa.3.0.i.ph.i.i.i.i = phi i64 [ %i.xg, %bb.gb ], [ %.sroa.6.121.i.i.i.i.i, %bb.ga ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.ax, i64 24, i1 false), !noalias !34598
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ow, ptr noundef nonnull align 8 dereferenceable(72) %i.aw, i64 72, i1 false), !noalias !34443
  call void @llvm.experimental.noalias.scope.decl(metadata !34600)
  %i.xk = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %.sroa.3.0.i.ph.i.i.i.i
  %i.xl = and i8 %i.xj, 1
  %i.xm = zext nneg i8 %i.xl to i64
  %i.xn = add i64 %.sroa.3.0.i.ph.i.i.i.i, -16
  %i.xo = and i64 %i.xn, %.val7.i.i.i.i
  store i8 %i.vy, ptr %i.xk, align 1, !noalias !34594
  %i.xp = getelementptr i8, ptr %.val.i.i.i.i, i64 %i.xo
  %i.xq = getelementptr i8, ptr %i.xp, i64 16
  store i8 %i.vy, ptr %i.xq, align 1, !noalias !34594
  %i.xr = load <2 x i64>, ptr %i.vs, align 8, !alias.scope !34601, !noalias !34602
  %i.xs = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.xm, i64 0
  %i.xt = sub <2 x i64> %i.xr, %i.xs
  store <2 x i64> %i.xt, ptr %i.vs, align 8, !alias.scope !34601, !noalias !34602
  %i.xu = sub nsw i64 0, %.sroa.3.0.i.ph.i.i.i.i
  %i.xv = getelementptr inbounds [96 x i8], ptr %.val.i.i.i.i, i64 %i.xu
  %i.xw = getelementptr inbounds i8, ptr %i.xv, i64 -96
end_hunk_1
begin_hunk_2_@llvm.bswap.v4i32
!34384 = distinct !{!34384, !34383, !"_ZN64_$LT$anyhow..Error$u20$as$u20$anyhow..context..ext..StdError$GT$11ext_context17h128445cab724ecd1E: argument 0"}
!34385 = distinct !{!34385, !"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$7context17h16677b921be1b504E"}
!34386 = distinct !{!34386, !34385, !"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$7context17h16677b921be1b504E: argument 0"}
!34387 = distinct !{!34387, !"_ZN5alloc3fmt6format17hbb695d30acbf3fe0E"}
!34388 = distinct !{!34388, !34387, !"_ZN5alloc3fmt6format17hbb695d30acbf3fe0E: argument 1"}
!34389 = distinct !{!34389, !34387, !"_ZN5alloc3fmt6format17hbb695d30acbf3fe0E: argument 0"}
!34390 = distinct !{!34390, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17he564564a127956c3E"}
!34391 = distinct !{!34391, !34390, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17he564564a127956c3E: argument 2"}
!34392 = distinct !{!34392, !34390, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17he564564a127956c3E: argument 1"}
!34393 = distinct !{!34393, !34390, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17he564564a127956c3E: argument 0"}
!34394 = distinct !{!34394, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17h02a72f8f94d1cf86E"}
!34395 = distinct !{!34395, !34394, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17h02a72f8f94d1cf86E: argument 1"}
!34396 = distinct !{!34396, !34394, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17h02a72f8f94d1cf86E: argument 0"}
!34397 = distinct !{!34397, !"_ZN4core4hint8must_use17ha25781b2ceef141cE"}
!34398 = distinct !{!34398, !34397, !"_ZN4core4hint8must_use17ha25781b2ceef141cE: argument 1"}
!34399 = distinct !{!34399, !34397, !"_ZN4core4hint8must_use17ha25781b2ceef141cE: argument 0"}
!34400 = distinct !{!34400, !"_ZN6anyhow7context112_$LT$impl$u20$anyhow..Context$LT$T$C$core..convert..Infallible$GT$$u20$for$u20$core..option..Option$LT$T$GT$$GT$12with_context17h60ac1b9ebc48ae0aE"}
!34401 = distinct !{!34401, !34400, !"_ZN6anyhow7context112_$LT$impl$u20$anyhow..Context$LT$T$C$core..convert..Infallible$GT$$u20$for$u20$core..option..Option$LT$T$GT$$GT$12with_context17h60ac1b9ebc48ae0aE: argument 0"}
!34402 = distinct !{!34402, !"_ZN5xtask6common7command14wait_for_tasks28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h1ee91a6a698f8ad7E"}
!34403 = distinct !{!34403, !34402, !"_ZN5xtask6common7command14wait_for_tasks28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h1ee91a6a698f8ad7E: argument 1"}
!34404 = distinct !{!34404, !34402, !"_ZN5xtask6common7command14wait_for_tasks28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h1ee91a6a698f8ad7E: argument 0"}
!34405 = distinct !{!34405, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17he564564a127956c3E"}
!34406 = distinct !{!34406, !34405, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17he564564a127956c3E: argument 2"}
!34407 = distinct !{!34407, !34405, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17he564564a127956c3E: argument 1"}
!34408 = distinct !{!34408, !34405, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17he564564a127956c3E: argument 0"}
!34409 = distinct !{!34409, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17h02a72f8f94d1cf86E"}
!34410 = distinct !{!34410, !34409, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17h02a72f8f94d1cf86E: argument 1"}
!34411 = distinct !{!34411, !34409, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17h02a72f8f94d1cf86E: argument 0"}
!34412 = distinct !{!34412, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h43d28d9852fe4649E"}
!34413 = distinct !{!34413, !34412, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h43d28d9852fe4649E: argument 0"}
!34414 = distinct !{!34414, !"_ZN5alloc3fmt6format17hbb695d30acbf3fe0E"}
!34415 = distinct !{!34415, !34414, !"_ZN5alloc3fmt6format17hbb695d30acbf3fe0E: argument 1"}
!34416 = distinct !{!34416, !34414, !"_ZN5alloc3fmt6format17hbb695d30acbf3fe0E: argument 0"}
!34417 = distinct !{!34417, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17he564564a127956c3E"}
!34418 = distinct !{!34418, !34417, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17he564564a127956c3E: argument 2"}
!34419 = distinct !{!34419, !34417, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17he564564a127956c3E: argument 1"}
!34420 = distinct !{!34420, !34417, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17he564564a127956c3E: argument 0"}
!34421 = distinct !{!34421, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17h02a72f8f94d1cf86E"}
!34422 = distinct !{!34422, !34421, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17h02a72f8f94d1cf86E: argument 1"}
!34423 = distinct !{!34423, !34421, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17h02a72f8f94d1cf86E: argument 0"}
!34424 = distinct !{!34424, !"_ZN4core4hint8must_use17ha25781b2ceef141cE"}
!34425 = distinct !{!34425, !34424, !"_ZN4core4hint8must_use17ha25781b2ceef141cE: argument 1"}
!34426 = distinct !{!34426, !34424, !"_ZN4core4hint8must_use17ha25781b2ceef141cE: argument 0"}
!34427 = distinct !{!34427, !"_ZN4core3ptr221drop_in_place$LT$alloc..vec..Vec$LT$tokio..runtime..task..join..JoinHandle$LT$core..result..Result$LT$core..option..Option$LT$$LP$serde_json..value..Value$C$http..status..StatusCode$RP$$GT$$C$anyhow..Error$GT$$GT$$GT$$GT$17haa60ad78b911929cE"}
!34428 = distinct !{!34428, !34427, !"_ZN4core3ptr221drop_in_place$LT$alloc..vec..Vec$LT$tokio..runtime..task..join..JoinHandle$LT$core..result..Result$LT$core..option..Option$LT$$LP$serde_json..value..Value$C$http..status..StatusCode$RP$$GT$$C$anyhow..Error$GT$$GT$$GT$$GT$17haa60ad78b911929cE: argument 0"}
!34429 = distinct !{!34429, !"_ZN4core3ptr208drop_in_place$LT$$u5b$tokio..runtime..task..join..JoinHandle$LT$core..result..Result$LT$core..option..Option$LT$$LP$serde_json..value..Value$C$http..status..StatusCode$RP$$GT$$C$anyhow..Error$GT$$GT$$u5d$$GT$17h090943fe530e8037E"}
!34430 = distinct !{!34430, !34429, !"_ZN4core3ptr208drop_in_place$LT$$u5b$tokio..runtime..task..join..JoinHandle$LT$core..result..Result$LT$core..option..Option$LT$$LP$serde_json..value..Value$C$http..status..StatusCode$RP$$GT$$C$anyhow..Error$GT$$GT$$u5d$$GT$17h090943fe530e8037E: argument 0"}
!34431 = distinct !{!34431, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6append17hb7f1f75c84d4eeb1E"}
!34432 = distinct !{!34432, !34431, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6append17hb7f1f75c84d4eeb1E: argument 0"}
!34433 = distinct !{!34433, !34431, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6append17hb7f1f75c84d4eeb1E: argument 1"}
!34434 = distinct !{!34434, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$15append_elements17h0b60dac58d921cd1E"}
!34435 = distinct !{!34435, !34434, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$15append_elements17h0b60dac58d921cd1E: argument 0"}
!34436 = distinct !{!34436, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf49803f48d132c7bE"}
!34437 = distinct !{!34437, !34436, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf49803f48d132c7bE: argument 0"}
!34438 = distinct !{!34438, !"_ZN4core3ptr103drop_in_place$LT$alloc..vec..Vec$LT$$LP$serde_json..value..Value$C$http..status..StatusCode$RP$$GT$$GT$17h076e4bdcd3dbabf2E"}
!34439 = distinct !{!34439, !34438, !"_ZN4core3ptr103drop_in_place$LT$alloc..vec..Vec$LT$$LP$serde_json..value..Value$C$http..status..StatusCode$RP$$GT$$GT$17h076e4bdcd3dbabf2E: argument 0"}
!34440 = !{!34149}
!34441 = !{!34151}
!34442 = !{!34153, !34151}
!34443 = !{!34156, !34155}
!34444 = !{!34155}
!34445 = !{!34156}
!34446 = !{!34158}
!34447 = !{!34162, !34160, !34158, !34156}
!34448 = !{!34165, !34164, !34156, !34155}
!34449 = !{!34167}
!34450 = !{!34171, !34169, !34167, !34156}
!34451 = !{!34173}
!34452 = !{!34175}
!34453 = !{!34177}
!34454 = !{!34177, !34175, !34173}
!34455 = !{!34177, !34175, !34173, !34156}
!34456 = !{!34179, !34175, !34173}
!34457 = !{!34181}
!34458 = !{!34183}
!34459 = !{!34183, !34181}
!34460 = !{!34185, !34184, !34156}
!34461 = !{!34187}
!34462 = !{!34187, !34183, !34181}
!34463 = !{!34188, !34185, !34184, !34156}
!34464 = !{!34184, !34181, !34156, !34155}
!34465 = !{!34188, !34187, !34185, !34183, !34184, !34181, !34156, !34155}
!34466 = !{!34192, !34190, !34188, !34187, !34185, !34183, !34184, !34181, !34156}
!34467 = !{!34194}
!34468 = !{!34195}
!34469 = !{!34197}
!34470 = !{!34198}
!34471 = !{!34198, !34195, !34187, !34183, !34181}
!34472 = !{!34197, !34194, !34188, !34185, !34184, !34156}
!34473 = !{!34197, !34198, !34194, !34195, !34188, !34187, !34185, !34183, !34184, !34181, !34156}
!34474 = !{!34200, !34197, !34198, !34194, !34195, !34188, !34187, !34185, !34183, !34184, !34181, !34156}
!34475 = !{!34198, !34195, !34188, !34187, !34185, !34183, !34184, !34181, !34156}
!34476 = !{!34202, !34197, !34198, !34194, !34195, !34188, !34187, !34185, !34183, !34184, !34181, !34156}
!34477 = !{!34197, !34198, !34194, !34195, !34188, !34187, !34185, !34183, !34184, !34181, !34156, !34155}
!34478 = !{!34204}
!34479 = !{!34205}
!34480 = !{!34207}
!34481 = !{!34208}
!34482 = !{!34208, !34205}
!34483 = !{!34207, !34204, !34197, !34198, !34194, !34195, !34188, !34187, !34185, !34183, !34184, !34181, !34156}
!34484 = !{!34207, !34204}
!34485 = !{!34208, !34205, !34197, !34198, !34194, !34195, !34188, !34187, !34185, !34183, !34184, !34181, !34156, !34155}
!34486 = !{!34207, !34208, !34204, !34205}
!34487 = !{!34210, !34208, !34205}
!34488 = !{!34211, !34207, !34204, !34197, !34198, !34194, !34195, !34188, !34187, !34185, !34183, !34184, !34181, !34156}
!34489 = !{!34213}
!34490 = !{!34219, !34218, !34216, !34213, !34215, !34207, !34208, !34204, !34205, !34197, !34198, !34194, !34195, !34188, !34187, !34185, !34183, !34184, !34181, !34156, !34155}
!34491 = !{!34219, !34216, !34215, !34207, !34204, !34197, !34198, !34194, !34195, !34188, !34187, !34185, !34183, !34184, !34181, !34156}
!34492 = !{!34219, !34216, !34215, !34207, !34208, !34204, !34197, !34198, !34194, !34195, !34188, !34187, !34185, !34183, !34184, !34181, !34156}
!34493 = !{!34213, !34208, !34205}
!34494 = !{!34216, !34215, !34207, !34204, !34197, !34198, !34194, !34195, !34188, !34187, !34185, !34183, !34184, !34181, !34156}
!34495 = !{!34221}
!34496 = !{!34221, !34204}
!34497 = !{!34205, !34197, !34198, !34194, !34195, !34188, !34187, !34185, !34183, !34184, !34181, !34156, !34155}
!34498 = !{!34221, !34204, !34197, !34198, !34194, !34195, !34188, !34187, !34185, !34183, !34184, !34181, !34156}
!34499 = !{!34188, !34187, !34185, !34183, !34184, !34181, !34156}
!34500 = !{!34197, !34194}
!34501 = !{!34198, !34195, !34188, !34187, !34185, !34183, !34184, !34181, !34156, !34155}
!34502 = !{!34225, !34223, !34156}
!34503 = !{!34229, !34227, !34156, !34155}
!34504 = !{!34231, !34229, !34227, !34156, !34155}
!34505 = !{!34231, !34229, !34227, !34156}
!34506 = !{!34233, !34231, !34229, !34227, !34156, !34155}
!34507 = !{!34233, !34231, !34229, !34227, !34156}
!34508 = !{!34235}
!34509 = !{!34236, !34235, !34233, !34231, !34229, !34227, !34156}
!34510 = !{!34238}
!34511 = !{!34238, !34235}
!34512 = !{!34239, !34236, !34233, !34231, !34229, !34227, !34156, !34155}
!34513 = !{!34241, !34238, !34239, !34236, !34235, !34233, !34231, !34229, !34227, !34156}
!34514 = !{!34248, !34246, !34245, !34243, !34241, !34238, !34239, !34236, !34235, !34233, !34231, !34229, !34227, !34156, !34155}
!34515 = !{!34248, !34246, !34245, !34243, !34241, !34238, !34239, !34236, !34235, !34233, !34231, !34229, !34227, !34156}
!34516 = !{!34250, !34248, !34246, !34245, !34243, !34241, !34238, !34239, !34236, !34235, !34233, !34231, !34229, !34227, !34156}
!34517 = !{!34243, !34241, !34238, !34239, !34236, !34235, !34233, !34231, !34229, !34227, !34156}
!34518 = !{!34241, !34238, !34239, !34236, !34235, !34233, !34231, !34229, !34227, !34156, !34155}
!34519 = !{!34252}
!34520 = !{!34252, !34238, !34235}
!34521 = !{!34253, !34239, !34236, !34233, !34231, !34229, !34227, !34156, !34155}
!34522 = !{!34252, !34253, !34238, !34239, !34236, !34235, !34233, !34231, !34229, !34227, !34156}
!34523 = !{!34260, !34258, !34257, !34255, !34252, !34253, !34238, !34239, !34236, !34235, !34233, !34231, !34229, !34227, !34156, !34155}
!34524 = !{!34260, !34258, !34257, !34255, !34252, !34253, !34238, !34239, !34236, !34235, !34233, !34231, !34229, !34227, !34156}
!34525 = !{!34262, !34260, !34258, !34257, !34255, !34252, !34253, !34238, !34239, !34236, !34235, !34233, !34231, !34229, !34227, !34156}
!34526 = !{!34255, !34252, !34253, !34238, !34239, !34236, !34235, !34233, !34231, !34229, !34227, !34156}
!34527 = !{!34252, !34253, !34238, !34239, !34236, !34235, !34233, !34231, !34229, !34227, !34156, !34155}
!34528 = !{!34253, !34239, !34236, !34233, !34231, !34229, !34227, !34156}
!34529 = !{!34229, !34227, !34156}
!34530 = !{!34264}
!34531 = !{!34266}
!34532 = !{!34266, !34264}
!34533 = !{!34266, !34264, !34156}
!34534 = !{!34270, !34268, !34156}
!34535 = !{!34272}
!34536 = !{!34273, !34272, !34156, !34155}
!34537 = !{!34275, !34273, !34272, !34156, !34155}
!34538 = !{!34273, !34272, !34156}
!34539 = !{!34279, !34277, !34275, !34273, !34272, !34156, !34155}
!34540 = !{!34273, !34156}
!34541 = !{!34281}
!34542 = !{!34272, !34155}
!34543 = !{!34272, !34156, !34155}
!34544 = !{!34283}
!34545 = !{!34285}
!34546 = !{!34287}
!34547 = !{!34287, !34285}
!34548 = !{!34289, !34288, !34156}
!34549 = !{!34291, !34289, !34287, !34288, !34285, !34156}
!34550 = !{!34297, !34295, !34293, !34156}
!34551 = !{!34299}
!34552 = !{!34301}
!34553 = !{!34301, !34299}
!34554 = !{!34303, !34302, !34156, !34155}
!34555 = !{!34303, !34302, !34156}
!34556 = !{!34301, !34303, !34299, !34302, !34156}
!34557 = !{!34307, !34306, !34305, !34156, !34155}
!34558 = !{!34311, !34310, !34309, !34307, !34306, !34305, !34156, !34155}
!34559 = !{!34318, !34317, !34315, !34314, !34313, !34311, !34310, !34309, !34307, !34306, !34305, !34156, !34155}
!34560 = !{!34318, !34315, !34314, !34311, !34310, !34309, !34307, !34306, !34305, !34156, !34155}
!34561 = !{!34307, !34156}
!34562 = !{!34320}
!34563 = !{!34320, !34307, !34156}
!34564 = !{!34322}
!34565 = !{!34323, !34156}
!34566 = !{!34325, !34322}
!34567 = !{!34326, !34323, !34156}
!34568 = !{!34328}
!34569 = !{!34334, !34333, !34331, !34328, !34330, !34323, !34322, !34156, !34155}
!34570 = !{!34334, !34331, !34330, !34323, !34156}
!34571 = !{!34334, !34331, !34330, !34323, !34322, !34156}
!34572 = !{!34328, !34322}
!34573 = !{!34331, !34330, !34323, !34156}
!34574 = !{!34336}
!34575 = !{!34337}
!34576 = !{!34339}
!34577 = !{!34340}
!34578 = !{!34339, !34336}
!34579 = !{!34344, !34340, !34343, !34342, !34337, !34341, !34156}
!34580 = !{!34346}
!34581 = !{!34348, !34344, !34339, !34343, !34342, !34336, !34341, !34156}
!34582 = !{!34352, !34350}
!34583 = !{!34353, !34346, !34344, !34339, !34343, !34342, !34336, !34341, !34156}
!34584 = !{!34350}
!34585 = !{!34346, !34344, !34339, !34343, !34342, !34336, !34341, !34156}
!34586 = !{!34357, !34355, !34339, !34336}
!34587 = !{!34360, !34359, !34358, !34344, !34340, !34343, !34342, !34337, !34341, !34156}
!34588 = !{!34355, !34339, !34336}
!34589 = !{!34359, !34358, !34344, !34340, !34343, !34342, !34337, !34341, !34156}
!34590 = !{!34362, !34359, !34344, !34340, !34343, !34342, !34337, !34341, !34156}
!34591 = !{!34364, !34359, !34344, !34340, !34343, !34342, !34337, !34341, !34156}
!34592 = !{!34367, !34366}
!34593 = !{!34359, !34344, !34340, !34343, !34342, !34337, !34341, !34156}
!34594 = !{!34370, !34369, !34344, !34340, !34343, !34342, !34337, !34341, !34156}
!34595 = !{!34340, !34343, !34337, !34341, !34156}
!34596 = !{!34372}
!34597 = !{!34372, !34340, !34337}
!34598 = !{!34344, !34339, !34343, !34342, !34336, !34341, !34156, !34155}
!34599 = !{!34372, !34344, !34340, !34343, !34342, !34337, !34341, !34156}
!34600 = !{!34370}
!34601 = !{!34370, !34339, !34336}
!34602 = !{!34369, !34344, !34340, !34343, !34342, !34337, !34341, !34156}
!34603 = !{!34370, !34344, !34340, !34343, !34342, !34337, !34341, !34156}
!34604 = !{!34374}
!34605 = !{!34374, !34340, !34337}
!34606 = !{!34374, !34344, !34340, !34343, !34342, !34337, !34341, !34156}
!34607 = !{!34376}
!34608 = !{!34378, !34156, !34155}
!34609 = !{!34384, !34382, !34381, !34380, !34378, !34156, !34155}
!34610 = !{!34386, !34384, !34382, !34381, !34380, !34378, !34156, !34155}
!34611 = !{!34396, !34395, !34393, !34392, !34391, !34389, !34388, !34378, !34156, !34155}
!34612 = !{!34396, !34393, !34392, !34389, !34378, !34156, !34155}
!34613 = !{!34399, !34398}
!34614 = !{!34401, !34378, !34156, !34155}
!34615 = !{!34404, !34403, !34401, !34378, !34156, !34155}
!34616 = !{!34411, !34410, !34408, !34407, !34406, !34404, !34403, !34401, !34378, !34156, !34155}
!34617 = !{!34411, !34408, !34407, !34404, !34403, !34401, !34378, !34156, !34155}
!34618 = !{!34413}
!34619 = !{!34413, !34156}
!34620 = !{!34423, !34422, !34420, !34419, !34418, !34416, !34415, !34378, !34156, !34155}
!34621 = !{!34423, !34420, !34419, !34416, !34378, !34156, !34155}
!34622 = !{!34426, !34425}
!34623 = !{!34428}
!34624 = !{!34430}
!34625 = !{!34428, !34156}
!34626 = !{!34430, !34428, !34156}
!34627 = !{!34432}
!34628 = !{!34433}
!34629 = !{!34435}
!34630 = !{!34437, !34435, !34432}
!34631 = !{!34435, !34432}
!34632 = !{!34435, !34432, !34433}
!34633 = !{!34439}
!34634 = distinct !{!34634, !"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h4e722af2283a9a09E"}
!34635 = distinct !{!34635, !34634, !"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h4e722af2283a9a09E: argument 1"}
!34636 = distinct !{!34636, !34634, !"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h4e722af2283a9a09E: argument 0"}
!34637 = distinct !{!34637, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hdbad330c31c32612E"}
!34638 = distinct !{!34638, !34637, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hdbad330c31c32612E: argument 0"}
!34639 = distinct !{!34639, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17hf25fce5a5e3c08efE"}
!34640 = distinct !{!34640, !34639, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17hf25fce5a5e3c08efE: argument 0"}
!34641 = distinct !{!34641, !"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h4e722af2283a9a09E"}
!34642 = distinct !{!34642, !34641, !"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h4e722af2283a9a09E: argument 1"}
!34643 = distinct !{!34643, !34641, !"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h4e722af2283a9a09E: argument 0"}
!34644 = distinct !{!34644, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hdbad330c31c32612E"}
!34645 = distinct !{!34645, !34644, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hdbad330c31c32612E: argument 0"}
!34646 = distinct !{!34646, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17hf25fce5a5e3c08efE"}
!34647 = distinct !{!34647, !34646, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17hf25fce5a5e3c08efE: argument 0"}
!34648 = distinct !{!34648, !"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17hf92751c9e13d7e39E"}
!34649 = distinct !{!34649, !34648, !"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17hf92751c9e13d7e39E: argument 0"}
!34650 = distinct !{!34650, !"_ZN4core3ops8function6FnOnce9call_once17he8e49505c7ce8ce8E"}
!34651 = distinct !{!34651, !34650, !"_ZN4core3ops8function6FnOnce9call_once17he8e49505c7ce8ce8E: argument 0"}
!34652 = distinct !{!34652, !"_ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h8ccde252a1c436e6E"}
!34653 = distinct !{!34653, !34652, !"_ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h8ccde252a1c436e6E: argument 0"}
!34654 = distinct !{!34654, !"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$11get_or_init17h76a22a0cc929fabfE"}
!34655 = distinct !{!34655, !34654, !"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$11get_or_init17h76a22a0cc929fabfE: argument 0"}
!34656 = distinct !{!34656, !"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h1d011a7d4dd08efeE"}
!34657 = distinct !{!34657, !34656, !"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h1d011a7d4dd08efeE: argument 0"}
!34658 = distinct !{!34658, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h43d28d9852fe4649E"}
!34659 = distinct !{!34659, !34658, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h43d28d9852fe4649E: argument 0"}
!34660 = distinct !{!34660, !"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h6d85db459e8f6c20E"}
!34661 = distinct !{!34661, !34660, !"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h6d85db459e8f6c20E: argument 0"}
!34662 = distinct !{!34662, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h43d28d9852fe4649E"}
!34663 = distinct !{!34663, !34662, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h43d28d9852fe4649E: argument 0"}
!34664 = !{!34640, !34638, !34636, !34635}
!34665 = !{!34636, !34635}
!34666 = !{!34636}
!34667 = !{!34647, !34645, !34643, !34642}
!34668 = !{!34643}
!34669 = !{!34655, !34653, !34651, !34649}
!34670 = !{!34649}
!34671 = !{!34657, !34649}
!34672 = !{!34659}
!34673 = !{!34663, !34661}
!34674 = distinct !{!34674, !"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hd25d66d2195f7afdE"}
!34675 = distinct !{!34675, !34674, !"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hd25d66d2195f7afdE: argument 0"}
!34676 = distinct !{!34676, !"_ZN63_$LT$serde_json..value..Value$u20$as$u20$core..clone..Clone$GT$5clone17h065ff73d52a9cb78E"}
!34677 = distinct !{!34677, !34676, !"_ZN63_$LT$serde_json..value..Value$u20$as$u20$core..clone..Clone$GT$5clone17h065ff73d52a9cb78E: argument 0"}
!34678 = distinct !{!34678, !34676, !"_ZN63_$LT$serde_json..value..Value$u20$as$u20$core..clone..Clone$GT$5clone17h065ff73d52a9cb78E: argument 1"}
!34679 = distinct !{!34679, !"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h666159e5e9de7eaaE"}
!34680 = distinct !{!34680, !34679, !"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h666159e5e9de7eaaE: argument 1"}
!34681 = distinct !{!34681, !34679, !"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h666159e5e9de7eaaE: argument 0"}
!34682 = distinct !{!34682, !"_ZN79_$LT$indexmap..map..IndexMap$LT$K$C$V$C$S$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h13c25366bc088b2aE"}
!34683 = distinct !{!34683, !34682, !"_ZN79_$LT$indexmap..map..IndexMap$LT$K$C$V$C$S$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h13c25366bc088b2aE: argument 1"}
!34684 = distinct !{!34684, !"_ZN115_$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hd6f638971510ca5dE"}
!34685 = distinct !{!34685, !34684, !"_ZN115_$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hd6f638971510ca5dE: argument 0"}
!34686 = distinct !{!34686, !34682, !"_ZN79_$LT$indexmap..map..IndexMap$LT$K$C$V$C$S$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h13c25366bc088b2aE: argument 0"}
!34687 = distinct !{!34687, !"_ZN73_$LT$indexmap..inner..Core$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h353bcfd465d5eb88E"}
!34688 = distinct !{!34688, !34687, !"_ZN73_$LT$indexmap..inner..Core$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h353bcfd465d5eb88E: argument 1"}
!34689 = distinct !{!34689, !34687, !"_ZN73_$LT$indexmap..inner..Core$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h353bcfd465d5eb88E: argument 0"}
!34690 = !{!34675}
!34691 = !{!34677}
!34692 = !{!34678}
!34693 = !{!34677, !34678}
!34694 = !{!34680, !34678}
!34695 = !{!34681, !34677}
!34696 = !{!34683}
!34697 = !{!34689, !34688, !34686, !34683, !34685, !34677, !34678}
!34698 = !{!34689, !34686, !34685, !34677}
!34699 = !{!34689, !34686, !34685, !34677, !34678}
!34700 = !{!34683, !34678}
!34701 = !{!34686, !34685, !34677}
!34702 = distinct !{!34702, !"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17hd2f81062ec5a66e0E"}
!34703 = distinct !{!34703, !34702, !"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17hd2f81062ec5a66e0E: argument 2"}
!34704 = distinct !{!34704, !34702, !"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17hd2f81062ec5a66e0E: argument 1"}
!34705 = distinct !{!34705, !34702, !"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17hd2f81062ec5a66e0E: argument 0"}
!34706 = distinct !{!34706, !"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h03b7baf17512f151E"}
!34707 = distinct !{!34707, !34706, !"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h03b7baf17512f151E: argument 0"}
!34708 = distinct !{!34708, !"_ZN10serde_core3ser12SerializeMap15serialize_entry17h806b643086a0a3e4E"}
!34709 = distinct !{!34709, !34708, !"_ZN10serde_core3ser12SerializeMap15serialize_entry17h806b643086a0a3e4E: argument 0"}
!34710 = distinct !{!34710, !"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h4cb3bfe219f7258dE"}
!34711 = distinct !{!34711, !34710, !"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h4cb3bfe219f7258dE: argument 1"}
!34712 = distinct !{!34712, !34710, !"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h4cb3bfe219f7258dE: argument 0"}
!34713 = distinct !{!34713, !"_ZN79_$LT$serde_json..ser..PrettyFormatter$u20$as$u20$serde_json..ser..Formatter$GT$18begin_object_value17h85bddde9a506327cE"}
!34714 = distinct !{!34714, !34713, !"_ZN79_$LT$serde_json..ser..PrettyFormatter$u20$as$u20$serde_json..ser..Formatter$GT$18begin_object_value17h85bddde9a506327cE: argument 0"}
!34715 = distinct !{!34715, !"_ZN3std2io5Write9write_all17h7bdc9a2e81366a30E"}
!34716 = distinct !{!34716, !34715, !"_ZN3std2io5Write9write_all17h7bdc9a2e81366a30E: argument 1"}
!34717 = distinct !{!34717, !34715, !"_ZN3std2io5Write9write_all17h7bdc9a2e81366a30E: argument 0"}
!34718 = distinct !{!34718, !"_ZN79_$LT$serde_json..ser..PrettyFormatter$u20$as$u20$serde_json..ser..Formatter$GT$16end_object_value17h47749412138f6eeaE"}
!34719 = distinct !{!34719, !34718, !"_ZN79_$LT$serde_json..ser..PrettyFormatter$u20$as$u20$serde_json..ser..Formatter$GT$16end_object_value17h47749412138f6eeaE: argument 0"}
!34720 = distinct !{!34720, !"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17hd2eb73888851e3e0E"}
!34721 = distinct !{!34721, !34720, !"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17hd2eb73888851e3e0E: argument 1"}
!34722 = distinct !{!34722, !"_ZN10serde_core3ser12SerializeMap15serialize_entry17h8c2e705a88b4a837E"}
!34723 = distinct !{!34723, !34722, !"_ZN10serde_core3ser12SerializeMap15serialize_entry17h8c2e705a88b4a837E: argument 1"}
!34724 = distinct !{!34724, !34720, !"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17hd2eb73888851e3e0E: argument 0"}
!34725 = distinct !{!34725, !34722, !"_ZN10serde_core3ser12SerializeMap15serialize_entry17h8c2e705a88b4a837E: argument 0"}
!34726 = distinct !{!34726, !"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h4cb3bfe219f7258dE"}
!34727 = distinct !{!34727, !34726, !"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h4cb3bfe219f7258dE: argument 1"}
!34728 = distinct !{!34728, !34726, !"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h4cb3bfe219f7258dE: argument 0"}
!34729 = distinct !{!34729, !"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$15serialize_value17h1a77eff564e957a0E"}
!34730 = distinct !{!34730, !34729, !"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$15serialize_value17h1a77eff564e957a0E: argument 0"}
!34731 = distinct !{!34731, !"_ZN79_$LT$serde_json..ser..PrettyFormatter$u20$as$u20$serde_json..ser..Formatter$GT$18begin_object_value17h85bddde9a506327cE"}
!34732 = distinct !{!34732, !34731, !"_ZN79_$LT$serde_json..ser..PrettyFormatter$u20$as$u20$serde_json..ser..Formatter$GT$18begin_object_value17h85bddde9a506327cE: argument 0"}
!34733 = distinct !{!34733, !"_ZN3std2io5Write9write_all17h7bdc9a2e81366a30E"}
!34734 = distinct !{!34734, !34733, !"_ZN3std2io5Write9write_all17h7bdc9a2e81366a30E: argument 1"}
!34735 = distinct !{!34735, !34733, !"_ZN3std2io5Write9write_all17h7bdc9a2e81366a30E: argument 0"}
!34736 = distinct !{!34736, !"_ZN5xtask6common7command1_85_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$xtask..common..command..Body$GT$9serialize17hb26802cb4ba01cf8E"}
!34737 = distinct !{!34737, !34736, !"_ZN5xtask6common7command1_85_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$xtask..common..command..Body$GT$9serialize17hb26802cb4ba01cf8E: argument 0"}
!34738 = distinct !{!34738, !34736, !"_ZN5xtask6common7command1_85_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$xtask..common..command..Body$GT$9serialize17hb26802cb4ba01cf8E: argument 1"}
!34739 = distinct !{!34739, !"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_unit17hd4623670548bc285E"}
!34740 = distinct !{!34740, !34739, !"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_unit17hd4623670548bc285E: argument 0"}
!34741 = distinct !{!34741, !"_ZN10serde_json3ser9Formatter10write_null17h6ecbbecf8997a862E"}
!34742 = distinct !{!34742, !34741, !"_ZN10serde_json3ser9Formatter10write_null17h6ecbbecf8997a862E: argument 0"}
!34743 = distinct !{!34743, !"_ZN3std2io5Write9write_all17h7bdc9a2e81366a30E"}
!34744 = distinct !{!34744, !34743, !"_ZN3std2io5Write9write_all17h7bdc9a2e81366a30E: argument 1"}
!34745 = distinct !{!34745, !34743, !"_ZN3std2io5Write9write_all17h7bdc9a2e81366a30E: argument 0"}
!34746 = distinct !{!34746, !"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h58e5923998a81fdaE"}
!34747 = distinct !{!34747, !34746, !"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h58e5923998a81fdaE: argument 0"}
!34748 = distinct !{!34748, !"_ZN10serde_core3ser12SerializeMap15serialize_entry17h6f7867749ab13026E"}
!34749 = distinct !{!34749, !34748, !"_ZN10serde_core3ser12SerializeMap15serialize_entry17h6f7867749ab13026E: argument 0"}
!34750 = distinct !{!34750, !"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h4cb3bfe219f7258dE"}
!34751 = distinct !{!34751, !34750, !"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h4cb3bfe219f7258dE: argument 0"}
!34752 = distinct !{!34752, !34746, !"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h58e5923998a81fdaE: argument 1"}
!34753 = distinct !{!34753, !34748, !"_ZN10serde_core3ser12SerializeMap15serialize_entry17h6f7867749ab13026E: argument 1"}
!34754 = distinct !{!34754, !34750, !"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h4cb3bfe219f7258dE: argument 1"}
!34755 = distinct !{!34755, !"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$3end17h60bd6e7c485e934bE"}
!34756 = distinct !{!34756, !34755, !"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$3end17h60bd6e7c485e934bE: argument 0"}
!34757 = distinct !{!34757, !"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$3end17hf30bd77312e74129E"}
!34758 = distinct !{!34758, !34757, !"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$3end17hf30bd77312e74129E: argument 0"}
!34759 = distinct !{!34759, !"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$3end17h60bd6e7c485e934bE"}
!34760 = distinct !{!34760, !34759, !"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$3end17h60bd6e7c485e934bE: argument 0"}
!34761 = distinct !{!34761, !"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$3end17hf30bd77312e74129E"}
!34762 = distinct !{!34762, !34761, !"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$3end17hf30bd77312e74129E: argument 0"}
!34763 = distinct !{!34763, !"_ZN79_$LT$serde_json..ser..PrettyFormatter$u20$as$u20$serde_json..ser..Formatter$GT$16end_object_value17h47749412138f6eeaE"}
!34764 = distinct !{!34764, !34763, !"_ZN79_$LT$serde_json..ser..PrettyFormatter$u20$as$u20$serde_json..ser..Formatter$GT$16end_object_value17h47749412138f6eeaE: argument 0"}
!34765 = distinct !{!34765, !"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17hd2f81062ec5a66e0E"}
!34766 = distinct !{!34766, !34765, !"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17hd2f81062ec5a66e0E: argument 2"}
!34767 = distinct !{!34767, !34765, !"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17hd2f81062ec5a66e0E: argument 1"}
!34768 = distinct !{!34768, !34765, !"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17hd2f81062ec5a66e0E: argument 0"}
!34769 = !{!34705, !34704, !34703}
!34770 = !{!34712, !34711, !34709, !34707}
!34771 = !{!34712, !34709, !34707}
!34772 = !{!34717, !34716, !34714, !34709, !34707}
!34773 = !{!34709, !34707}
!34774 = !{!34707}
!34775 = !{!34719}
!34776 = !{!34721}
!34777 = !{!34723}
!34778 = !{!34728, !34727, !34725, !34723, !34724, !34721}
!34779 = !{!34728, !34725, !34723, !34724, !34721}
!34780 = !{!34730}
!34781 = !{!34735, !34734, !34732, !34730, !34725, !34723, !34724, !34721}
!34782 = !{!34730, !34725, !34723, !34724, !34721}
!34783 = !{!34737}
!34784 = !{!34737, !34730, !34723, !34721}
!34785 = !{!34738, !34725, !34724}
end_hunk_2
