Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/xtask-4cd5076fd53ab298.xtask.9db97cdd31b73b23-cgu.0?download=true
inline.NumInlined: 15192
inline.NumDeleted: 6593
loop-unroll.NumCompletelyUnrolled: 45
loop-unroll.NumRuntimeUnrolled: 49
loop-unroll.NumUnrolled: 95
begin_hunk_0_@"_ZN113_$LT$tracing_subscriber..layer..layered..Layered$LT$L$C$S$GT$$u20$as$u20$tracing_core..subscriber..Subscriber$GT$9try_close17he99b2bc199b536b7E":bb.a
  %i.dy = zext nneg i32 %i.dv to i64
  %i.dz = add i64 %i.dl, %i.dy
  %i.ea = add i64 %i.dz, %i.dw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !8453
  store i64 %i.ea, ptr %i.ae, align 8, !noalias !8453
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !8453
  store i64 %i.dk, ptr %i.ad, align 8, !noalias !8453
  %i.eb = load ptr, ptr %i.bc, align 8, !noalias !8453, !nonnull !24, !align !31, !noundef !24 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 64
  store ptr @145, ptr %i.ac, align 8, !noalias !8453
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 3 uses
  store i64 3, ptr %i.ed, align 8, !noalias !8453
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ef = load <2 x ptr>, ptr %i.ec, align 8, !noalias !8453
  store <2 x ptr> %i.ef, ptr %i.ee, align 8, !noalias !8453
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !8453
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !8453
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, ptr noundef nonnull align 8 dereferenceable(32) %i.ac, i64 32, i1 false), !noalias !8453
  %.sroa.430.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  store i64 0, ptr %.sroa.430.0..sroa_idx.i.i, align 8, !noalias !8453
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !8453
  %.sroa.6.0..sroa_idx10.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx10.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.ed, i64 24, i1 false), !noalias !8453
  store ptr @145, ptr %i.z, align 8, !noalias !8453
  %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx10.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  store i64 1, ptr %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx10.sroa_idx.i.i, align 8, !noalias !8453
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !8453
  %.sroa.616.0..sroa_idx17.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.616.0..sroa_idx17.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.ed, i64 24, i1 false), !noalias !8453
  store ptr @145, ptr %i.y, align 8, !noalias !8453
  %.sroa.616.sroa.4.0..sroa.616.0..sroa_idx17.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  store i64 2, ptr %.sroa.616.sroa.4.0..sroa.616.0..sroa_idx17.sroa_idx.i.i, align 8, !noalias !8453
  store ptr %i.aa, ptr %i.ab, align 8, !noalias !8453
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr @147, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !8453
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store ptr @138, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !8453
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  store ptr %i.z, ptr %i.eg, align 8, !noalias !8453
  %.sroa.46.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  store ptr %i.ad, ptr %.sroa.46.0..sroa_idx.i.i, align 8, !noalias !8453
  %.sroa.57.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  store ptr @148, ptr %.sroa.57.0..sroa_idx.i.i, align 8, !noalias !8453
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  store ptr %i.y, ptr %i.eh, align 8, !noalias !8453
  %.sroa.412.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 56
  store ptr %i.ae, ptr %.sroa.412.0..sroa_idx.i.i, align 8, !noalias !8453
  %.sroa.513.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 64
  store ptr @148, ptr %.sroa.513.0..sroa_idx.i.i, align 8, !noalias !8453
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !8453
  store i64 0, ptr %i.x, align 8, !noalias !8453
  %.sroa.438.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %i.ab, ptr %.sroa.438.0..sroa_idx.i.i, align 8, !noalias !8453
  %.sroa.539.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 3, ptr %.sroa.539.0..sroa_idx.i.i, align 8, !noalias !8453
  %i.ei = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  store ptr %i.ac, ptr %i.ei, align 8, !noalias !8453
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !8453
  %i.ej = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store ptr %i.x, ptr %i.ej, align 8, !noalias !8453
  %i.ek = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  store ptr %i.eb, ptr %i.ek, align 8, !noalias !8453
  store i64 2, ptr %i.w, align 8, !noalias !8453
  %i.el = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i64 %1, ptr %i.el, align 8, !noalias !8453
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cc) ]
  %i.em = atomicrmw add ptr %i.cc, i32 -1 release, align 4, !noalias !8453
  %i.en = add i32 %i.em, -1                       ; 2 uses
  %i.eo = and i32 %i.en, -1073741825
  %or.cond.not.i.i.i.i.i = icmp eq i32 %i.eo, -2147483648
  br i1 %or.cond.not.i.i.i.i.i, label %bb.w, label %"_ZN4core3ptr73drop_in_place$LT$tracing_subscriber..registry..extensions..Extensions$GT$17h32733eb0b0dd2275E.exit.i.i", !prof !62

bb.w:                                             ; preds = %bb.v
  invoke void @_ZN3std3sys4sync6rwlock5futex6RwLock22wake_writer_or_readers17h996aee56cbf483f2E(ptr noundef nonnull align 4 %i.cc, i32 noundef %i.en)
          to label %"_ZN4core3ptr73drop_in_place$LT$tracing_subscriber..registry..extensions..Extensions$GT$17h32733eb0b0dd2275E.exit.i.i" unwind label %.thread.i.i, !noalias !8453

"_ZN4core3ptr73drop_in_place$LT$tracing_subscriber..registry..extensions..Extensions$GT$17h32733eb0b0dd2275E.exit.i.i": ; preds = %bb.w, %bb.v
  %i.ep = getelementptr inbounds nuw i8, ptr %i.bc, i64 80 ; 3 uses
  %i.eq = load atomic i64, ptr %i.ep acquire, align 8, !noalias !8467 ; 2 uses
  %i.er = and i64 %i.eq, 3                        ; 2 uses
  %i.es = icmp eq i64 %i.er, 2
  br i1 %i.es, label %._crit_edge.i.i.i.i.i.i, label %"_ZN92_$LT$sharded_slab..page..slot..Lifecycle$LT$C$GT$$u20$as$u20$sharded_slab..Pack$LT$C$GT$$GT$10from_usize17h88cef977f7b7075eE.exit.i.i.i.i.i.i.i", !prof !32

._crit_edge.i.i.i.i.i.i:                          ; preds = %.backedge.i.i.i.i.i.i, %"_ZN4core3ptr73drop_in_place$LT$tracing_subscriber..registry..extensions..Extensions$GT$17h32733eb0b0dd2275E.exit.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !8467
  store i64 2, ptr %i.i, align 8, !noalias !8467
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !8467
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !8467
  store ptr %i.i, ptr %i.g, align 8, !noalias !8467
  br label %._crit_edge.i.i.i.i82.i.i.invoke

"_ZN92_$LT$sharded_slab..page..slot..Lifecycle$LT$C$GT$$u20$as$u20$sharded_slab..Pack$LT$C$GT$$GT$10from_usize17h88cef977f7b7075eE.exit.i.i.i.i.i.i.i": ; preds = %"_ZN4core3ptr73drop_in_place$LT$tracing_subscriber..registry..extensions..Extensions$GT$17h32733eb0b0dd2275E.exit.i.i", %.backedge.i.i.i.i.i.i
  %i.et = phi i64 [ %i.fa, %.backedge.i.i.i.i.i.i ], [ %i.er, %"_ZN4core3ptr73drop_in_place$LT$tracing_subscriber..registry..extensions..Extensions$GT$17h32733eb0b0dd2275E.exit.i.i" ]
  %.sroa.0.0.i4.i.i.i.i.i.i = phi i64 [ %.sroa.0.0.i.be.i.i.i.i.i.i, %.backedge.i.i.i.i.i.i ], [ %i.eq, %"_ZN4core3ptr73drop_in_place$LT$tracing_subscriber..registry..extensions..Extensions$GT$17h32733eb0b0dd2275E.exit.i.i" ] ; 5 uses
  %.in.i.i.i.i.i.i = lshr i64 %.sroa.0.0.i4.i.i.i.i.i.i, 2
  %i.eu = and i64 %.in.i.i.i.i.i.i, 562949953421311 ; 2 uses
  %i.ev = icmp eq i64 %i.eu, 1
  %i.ew = icmp eq i64 %i.et, 1
  %.sroa.05.0.i.i.i.i.i.i.i = and i1 %i.ew, %i.ev
  br i1 %.sroa.05.0.i.i.i.i.i.i.i, label %bb.x, label %.thread.i.i.i.i.i.i

bb.x:                                             ; preds = %"_ZN92_$LT$sharded_slab..page..slot..Lifecycle$LT$C$GT$$u20$as$u20$sharded_slab..Pack$LT$C$GT$$GT$10from_usize17h88cef977f7b7075eE.exit.i.i.i.i.i.i.i"
  %i.ex = and i64 %.sroa.0.0.i4.i.i.i.i.i.i, -2251799813685248
  %i.ey = or disjoint i64 %i.ex, 3
  %i.ez = cmpxchg ptr %i.ep, i64 %.sroa.0.0.i4.i.i.i.i.i.i, i64 %i.ey acq_rel acquire, align 8, !noalias !8467 ; 2 uses
  %.sroa.18.0.in.i.i.i.i.i.i.i.i = extractvalue { i64, i1 } %i.ez, 1
  br i1 %.sroa.18.0.in.i.i.i.i.i.i.i.i, label %"_ZN12sharded_slab4page4slot17Slot$LT$T$C$C$GT$7release17h519eb29108dbe60bE.exit.i.i.i.i.i.i", label %.backedge.i.i.i.i.i.i

.backedge.i.i.i.i.i.i:                            ; preds = %.thread.i.i.i.i.i.i, %bb.x
  %.pn.i.i.i.i.i.i = phi { i64, i1 } [ %i.ez, %bb.x ], [ %i.fg, %.thread.i.i.i.i.i.i ]
  %.sroa.0.0.i.be.i.i.i.i.i.i = extractvalue { i64, i1 } %.pn.i.i.i.i.i.i, 0 ; 2 uses
  %i.fa = and i64 %.sroa.0.0.i.be.i.i.i.i.i.i, 3  ; 2 uses
  %i.fb = icmp eq i64 %i.fa, 2
  br i1 %i.fb, label %._crit_edge.i.i.i.i.i.i, label %"_ZN92_$LT$sharded_slab..page..slot..Lifecycle$LT$C$GT$$u20$as$u20$sharded_slab..Pack$LT$C$GT$$GT$10from_usize17h88cef977f7b7075eE.exit.i.i.i.i.i.i.i", !prof !33

.thread.i.i.i.i.i.i:                              ; preds = %"_ZN92_$LT$sharded_slab..page..slot..Lifecycle$LT$C$GT$$u20$as$u20$sharded_slab..Pack$LT$C$GT$$GT$10from_usize17h88cef977f7b7075eE.exit.i.i.i.i.i.i.i"
  %i.fc = and i64 %.sroa.0.0.i4.i.i.i.i.i.i, -2251799813685245
  %i.fd = shl nuw nsw i64 %i.eu, 2
  %i.fe = add nsw i64 %i.fd, -4
  %i.ff = or i64 %i.fe, %i.fc
  %i.fg = cmpxchg ptr %i.ep, i64 %.sroa.0.0.i4.i.i.i.i.i.i, i64 %i.ff acq_rel acquire, align 8, !noalias !8467 ; 2 uses
  %.sroa.18.0.in.i.i2.i.i.i.i.i.i = extractvalue { i64, i1 } %i.fg, 1
  br i1 %.sroa.18.0.in.i.i2.i.i.i.i.i.i, label %"_ZN4core3ptr113drop_in_place$LT$tracing_subscriber..registry..SpanRef$LT$tracing_subscriber..registry..sharded..Registry$GT$$GT$17h5239dd0ad0202a94E.exit.i.i", label %.backedge.i.i.i.i.i.i

"_ZN12sharded_slab4page4slot17Slot$LT$T$C$C$GT$7release17h519eb29108dbe60bE.exit.i.i.i.i.i.i": ; preds = %bb.x
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7111.8.copyload.i.i) ]
  invoke fastcc void @"_ZN12sharded_slab5shard18Shard$LT$T$C$C$GT$19clear_after_release17h05220815bb791f72E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %.sroa.7111.8.copyload.i.i, i64 noundef %.sroa.8113.8.copyload.i.i)
          to label %"_ZN4core3ptr113drop_in_place$LT$tracing_subscriber..registry..SpanRef$LT$tracing_subscriber..registry..sharded..Registry$GT$$GT$17h5239dd0ad0202a94E.exit.i.i" unwind label %bb.b

"_ZN4core3ptr113drop_in_place$LT$tracing_subscriber..registry..SpanRef$LT$tracing_subscriber..registry..sharded..Registry$GT$$GT$17h5239dd0ad0202a94E.exit.i.i": ; preds = %.thread.i.i.i.i.i.i, %"_ZN12sharded_slab4page4slot17Slot$LT$T$C$C$GT$7release17h519eb29108dbe60bE.exit.i.i.i.i.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !8453
  store ptr %i.ay, ptr %i.v, align 8, !noalias !8453
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !8453
  store ptr %i.w, ptr %i.u, align 8, !noalias !8453
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !8453
  store ptr %i.v, ptr %i.m, align 8, !noalias !8453
  %i.fh = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr %i.aj, ptr %i.fh, align 8, !noalias !8453
  %i.fi = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store i64 %i.av, ptr %i.fi, align 8, !noalias !8453
  %i.fj = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.u, ptr %i.fj, align 8, !noalias !8453
  invoke fastcc void @"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17haa307b6985a5cd7eE"(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.m)
          to label %.noexc14 unwind label %bb.b

.noexc14:                                         ; preds = %"_ZN4core3ptr113drop_in_place$LT$tracing_subscriber..registry..SpanRef$LT$tracing_subscriber..registry..sharded..Registry$GT$$GT$17h5239dd0ad0202a94E.exit.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !8453
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !8453
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !8453
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !8453
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !8453
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !8453
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !8453
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !8453
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !8453
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !8453
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !8453
  br label %bb.y

bb.y:                                             ; preds = %.noexc17, %.noexc14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !8453
  br label %"_ZN124_$LT$tracing_subscriber..fmt..fmt_layer..Layer$LT$S$C$N$C$E$C$W$GT$$u20$as$u20$tracing_subscriber..layer..Layer$LT$S$GT$$GT$8on_close17hc659c1a130abf0e9E.exit.i"

.loopexit.i.i:                                    ; preds = %._crit_edge.i.i.i.i.i, %.noexc.i.i, %bb.p
  %i.fk = load ptr, ptr %i.bc, align 8, !noalias !8453, !nonnull !24, !align !31, !noundef !24 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 64
  store ptr @135, ptr %i.t, align 8, !noalias !8453
  %i.fm = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  store i64 1, ptr %i.fm, align 8, !noalias !8453
  %i.fn = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.fo = load <2 x ptr>, ptr %i.fl, align 8, !noalias !8453
  store <2 x ptr> %i.fo, ptr %i.fn, align 8, !noalias !8453
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !8453
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !8453
  %.sroa.623.0..sroa_idx24.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.623.0..sroa_idx24.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.fm, i64 24, i1 false), !noalias !8453
  store ptr @135, ptr %i.r, align 8, !noalias !8453
  %.sroa.623.sroa.4.0..sroa.623.0..sroa_idx24.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  store i64 0, ptr %.sroa.623.sroa.4.0..sroa.623.0..sroa_idx24.sroa_idx.i.i, align 8, !noalias !8453
  store ptr %i.r, ptr %i.s, align 8, !noalias !8453
  %.sroa.419.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr @147, ptr %.sroa.419.0..sroa_idx.i.i, align 8, !noalias !8453
  %.sroa.520.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr @138, ptr %.sroa.520.0..sroa_idx.i.i, align 8, !noalias !8453
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !8453
  store i64 0, ptr %i.q, align 8, !noalias !8453
  %.sroa.444.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.s, ptr %.sroa.444.0..sroa_idx.i.i, align 8, !noalias !8453
  %.sroa.545.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 1, ptr %.sroa.545.0..sroa_idx.i.i, align 8, !noalias !8453
  %i.fp = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store ptr %i.t, ptr %i.fp, align 8, !noalias !8453
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !8453
  %i.fq = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr %i.q, ptr %i.fq, align 8, !noalias !8453
  %i.fr = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store ptr %i.fk, ptr %i.fr, align 8, !noalias !8453
  store i64 2, ptr %i.p, align 8, !noalias !8453
  %i.fs = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 %1, ptr %i.fs, align 8, !noalias !8453
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cb) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cc) ]
  %i.ft = atomicrmw add ptr %i.cc, i32 -1 release, align 4, !noalias !8453
  %i.fu = add i32 %i.ft, -1                       ; 2 uses
  %i.fv = and i32 %i.fu, -1073741825
  %or.cond.not.i.i.i70.i.i = icmp eq i32 %i.fv, -2147483648
  br i1 %or.cond.not.i.i.i70.i.i, label %bb.z, label %"_ZN4core3ptr73drop_in_place$LT$tracing_subscriber..registry..extensions..Extensions$GT$17h32733eb0b0dd2275E.exit72.i.i", !prof !62

bb.z:                                             ; preds = %.loopexit.i.i
  invoke void @_ZN3std3sys4sync6rwlock5futex6RwLock22wake_writer_or_readers17h996aee56cbf483f2E(ptr noundef nonnull align 4 %i.cc, i32 noundef %i.fu)
          to label %"_ZN4core3ptr73drop_in_place$LT$tracing_subscriber..registry..extensions..Extensions$GT$17h32733eb0b0dd2275E.exit72.i.i" unwind label %.thread.i.i, !noalias !8453

"_ZN4core3ptr73drop_in_place$LT$tracing_subscriber..registry..extensions..Extensions$GT$17h32733eb0b0dd2275E.exit72.i.i": ; preds = %bb.z, %.loopexit.i.i
  %i.fw = getelementptr inbounds nuw i8, ptr %i.bc, i64 80 ; 3 uses
  %i.fx = load atomic i64, ptr %i.fw acquire, align 8, !noalias !8468 ; 2 uses
  %i.fy = and i64 %i.fx, 3                        ; 2 uses
  %i.fz = icmp eq i64 %i.fy, 2
  br i1 %i.fz, label %._crit_edge.i.i.i.i82.i.i, label %"_ZN92_$LT$sharded_slab..page..slot..Lifecycle$LT$C$GT$$u20$as$u20$sharded_slab..Pack$LT$C$GT$$GT$10from_usize17h88cef977f7b7075eE.exit.i.i.i.i.i73.i.i", !prof !32

._crit_edge.i.i.i.i82.i.i:                        ; preds = %.backedge.i.i.i.i79.i.i, %"_ZN4core3ptr73drop_in_place$LT$tracing_subscriber..registry..extensions..Extensions$GT$17h32733eb0b0dd2275E.exit72.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !8468
  store i64 2, ptr %i.f, align 8, !noalias !8468
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !8468
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !8468
  store ptr %i.f, ptr %i.d, align 8, !noalias !8468
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
  store ptr @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..Binary$u20$for$u20$usize$GT$3fmt17h24633a65173f76b2E", ptr %.sink39.sroa.phi, align 8, !noalias !8453
  store ptr @1814, ptr %.sink38, align 8, !noalias !8453
  store i64 1, ptr %.sink38.sroa.phi, align 8, !noalias !8453
  store ptr @1815, ptr %.sink38.sroa.phi44, align 8, !noalias !8453
  store i64 1, ptr %.sink38.sroa.phi48, align 8, !noalias !8453
  store ptr %.sink39, ptr %.sink38.sroa.phi52, align 8, !noalias !8453
  store i64 1, ptr %.sink38.sroa.phi56, align 8, !noalias !8453
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
  br i1 %.sroa.05.0.i.i.i.i.i76.i.i, label %bb.aa, label %.thread.i.i.i.i77.i.i

bb.aa:                                            ; preds = %"_ZN92_$LT$sharded_slab..page..slot..Lifecycle$LT$C$GT$$u20$as$u20$sharded_slab..Pack$LT$C$GT$$GT$10from_usize17h88cef977f7b7075eE.exit.i.i.i.i.i73.i.i"
  %i.ge = and i64 %.sroa.0.0.i4.i.i.i.i74.i.i, -2251799813685248
  %i.gf = or disjoint i64 %i.ge, 3
  %i.gg = cmpxchg ptr %i.fw, i64 %.sroa.0.0.i4.i.i.i.i74.i.i, i64 %i.gf acq_rel acquire, align 8, !noalias !8468 ; 2 uses
  %.sroa.18.0.in.i.i.i.i.i.i84.i.i = extractvalue { i64, i1 } %i.gg, 1
  br i1 %.sroa.18.0.in.i.i.i.i.i.i84.i.i, label %"_ZN12sharded_slab4page4slot17Slot$LT$T$C$C$GT$7release17h519eb29108dbe60bE.exit.i.i.i.i85.i.i", label %.backedge.i.i.i.i79.i.i

.backedge.i.i.i.i79.i.i:                          ; preds = %.thread.i.i.i.i77.i.i, %bb.aa
  %.pn.i.i.i.i80.i.i = phi { i64, i1 } [ %i.gg, %bb.aa ], [ %i.gn, %.thread.i.i.i.i77.i.i ]
  %.sroa.0.0.i.be.i.i.i.i81.i.i = extractvalue { i64, i1 } %.pn.i.i.i.i80.i.i, 0 ; 2 uses
  %i.gh = and i64 %.sroa.0.0.i.be.i.i.i.i81.i.i, 3 ; 2 uses
  %i.gi = icmp eq i64 %i.gh, 2
  br i1 %i.gi, label %._crit_edge.i.i.i.i82.i.i, label %"_ZN92_$LT$sharded_slab..page..slot..Lifecycle$LT$C$GT$$u20$as$u20$sharded_slab..Pack$LT$C$GT$$GT$10from_usize17h88cef977f7b7075eE.exit.i.i.i.i.i73.i.i", !prof !33

.thread.i.i.i.i77.i.i:                            ; preds = %"_ZN92_$LT$sharded_slab..page..slot..Lifecycle$LT$C$GT$$u20$as$u20$sharded_slab..Pack$LT$C$GT$$GT$10from_usize17h88cef977f7b7075eE.exit.i.i.i.i.i73.i.i"
  %i.gj = and i64 %.sroa.0.0.i4.i.i.i.i74.i.i, -2251799813685245
  %i.gk = shl nuw nsw i64 %i.gb, 2
  %i.gl = add nsw i64 %i.gk, -4
  %i.gm = or i64 %i.gl, %i.gj
  %i.gn = cmpxchg ptr %i.fw, i64 %.sroa.0.0.i4.i.i.i.i74.i.i, i64 %i.gm acq_rel acquire, align 8, !noalias !8468 ; 2 uses
  %.sroa.18.0.in.i.i2.i.i.i.i78.i.i = extractvalue { i64, i1 } %i.gn, 1
  br i1 %.sroa.18.0.in.i.i2.i.i.i.i78.i.i, label %"_ZN4core3ptr113drop_in_place$LT$tracing_subscriber..registry..SpanRef$LT$tracing_subscriber..registry..sharded..Registry$GT$$GT$17h5239dd0ad0202a94E.exit88.i.i", label %.backedge.i.i.i.i79.i.i

"_ZN12sharded_slab4page4slot17Slot$LT$T$C$C$GT$7release17h519eb29108dbe60bE.exit.i.i.i.i85.i.i": ; preds = %bb.aa
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7111.8.copyload.i.i) ]
  invoke fastcc void @"_ZN12sharded_slab5shard18Shard$LT$T$C$C$GT$19clear_after_release17h05220815bb791f72E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %.sroa.7111.8.copyload.i.i, i64 noundef %.sroa.8113.8.copyload.i.i)
          to label %"_ZN4core3ptr113drop_in_place$LT$tracing_subscriber..registry..SpanRef$LT$tracing_subscriber..registry..sharded..Registry$GT$$GT$17h5239dd0ad0202a94E.exit88.i.i" unwind label %bb.b

"_ZN4core3ptr113drop_in_place$LT$tracing_subscriber..registry..SpanRef$LT$tracing_subscriber..registry..sharded..Registry$GT$$GT$17h5239dd0ad0202a94E.exit88.i.i": ; preds = %.thread.i.i.i.i77.i.i, %"_ZN12sharded_slab4page4slot17Slot$LT$T$C$C$GT$7release17h519eb29108dbe60bE.exit.i.i.i.i85.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !8453
  store ptr %i.ay, ptr %i.o, align 8, !noalias !8453
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !8453
  store ptr %i.p, ptr %i.n, align 8, !noalias !8453
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !8453
  store ptr %i.o, ptr %i.l, align 8, !noalias !8453
  %i.go = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %i.aj, ptr %i.go, align 8, !noalias !8453
  %i.gp = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store i64 %i.av, ptr %i.gp, align 8, !noalias !8453
  %i.gq = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.n, ptr %i.gq, align 8, !noalias !8453
  invoke fastcc void @"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17haa307b6985a5cd7eE"(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.l)
          to label %.noexc17 unwind label %bb.b

.noexc17:                                         ; preds = %"_ZN4core3ptr113drop_in_place$LT$tracing_subscriber..registry..SpanRef$LT$tracing_subscriber..registry..sharded..Registry$GT$$GT$17h5239dd0ad0202a94E.exit88.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !8453
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !8453
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !8453
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !8453
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !8453
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !8453
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !8453
  br label %bb.y

bb.ab:                                            ; preds = %bb.u, %_ZN18tracing_subscriber8registry10extensions15ExtensionsInner3get17h8cc909b65c850acfE.exit.i.i, %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17hca6a1ef673a3a4d3E.exit.i.i.i"
  %lpad.thr_comm.split-lp.i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cc) ]
  %i.gr = atomicrmw add ptr %i.cc, i32 -1 release, align 4, !noalias !8453
  %i.gs = add i32 %i.gr, -1                       ; 2 uses
  %i.gt = and i32 %i.gs, -1073741825
  %or.cond.not.i.i.i89.i.i = icmp eq i32 %i.gt, -2147483648
  br i1 %or.cond.not.i.i.i89.i.i, label %bb.ac, label %"_ZN4core3ptr73drop_in_place$LT$tracing_subscriber..registry..extensions..Extensions$GT$17h32733eb0b0dd2275E.exit91.i.i", !prof !62

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZN3std3sys4sync6rwlock5futex6RwLock22wake_writer_or_readers17h996aee56cbf483f2E(ptr noundef nonnull align 4 %i.cc, i32 noundef %i.gs)
          to label %"_ZN4core3ptr73drop_in_place$LT$tracing_subscriber..registry..extensions..Extensions$GT$17h32733eb0b0dd2275E.exit91.i.i" unwind label %bb.ad, !noalias !8453

bb.ad:                                            ; preds = %"_ZN4core3ptr73drop_in_place$LT$tracing_subscriber..registry..extensions..Extensions$GT$17h32733eb0b0dd2275E.exit91.i.i", %bb.ac
  %i.gu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !8453
  unreachable

"_ZN4core3ptr73drop_in_place$LT$tracing_subscriber..registry..extensions..Extensions$GT$17h32733eb0b0dd2275E.exit91.i.i": ; preds = %bb.ac, %bb.ab, %.thread.i.i
  %.pn123.i.i = phi { ptr, i32 } [ %i.ca, %.thread.i.i ], [ %lpad.thr_comm.split-lp.i.i, %bb.ab ], [ %lpad.thr_comm.split-lp.i.i, %bb.ac ]
  invoke fastcc void @"_ZN4core3ptr113drop_in_place$LT$tracing_subscriber..registry..SpanRef$LT$tracing_subscriber..registry..sharded..Registry$GT$$GT$17h5239dd0ad0202a94E"(ptr noalias noundef align 8 dereferenceable(40) %i.af) #55
          to label %.body unwind label %bb.ad, !noalias !8453

"_ZN124_$LT$tracing_subscriber..fmt..fmt_layer..Layer$LT$S$C$N$C$E$C$W$GT$$u20$as$u20$tracing_subscriber..layer..Layer$LT$S$GT$$GT$8on_close17hc659c1a130abf0e9E.exit.i": ; preds = %bb.y, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !8451
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !8451
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !8451
  br label %"_ZN130_$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$L$C$F$C$S$GT$$u20$as$u20$tracing_subscriber..layer..Layer$LT$S$GT$$GT$8on_close17h2a6980b4468712daE.exit"

"_ZN130_$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$L$C$F$C$S$GT$$u20$as$u20$tracing_subscriber..layer..Layer$LT$S$GT$$GT$8on_close17h2a6980b4468712daE.exit": ; preds = %.noexc7, %"_ZN124_$LT$tracing_subscriber..fmt..fmt_layer..Layer$LT$S$C$N$C$E$C$W$GT$$u20$as$u20$tracing_subscriber..layer..Layer$LT$S$GT$$GT$8on_close17hc659c1a130abf0e9E.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  br label %bb.f

bb.ae:                                            ; preds = %bb.c
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
end_hunk_0
begin_hunk_1_@"_ZN4core3ptr47drop_in_place$LT$tokio..process..imp..Child$GT$17he9d592f077f71e3fE":bb.a

bb.y:                                             ; preds = %bb.x
  %i.bf = icmp eq i32 %i.ba, 0
  br i1 %i.bf, label %"_ZN4core3ptr125drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$std..process..ExitStatus$GT$$C$std..io..error..Error$GT$$GT$17hfc8c8786e52dbed0E.exit.i.i6", label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17ha15fe409393fbeaeE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.bg)
          to label %"_ZN4core3ptr125drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$std..process..ExitStatus$GT$$C$std..io..error..Error$GT$$GT$17hfc8c8786e52dbed0E.exit.i.i6" unwind label %bb.af, !noalias !16603

bb.aa:                                            ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !16603
  call void @llvm.experimental.noalias.scope.decl(metadata !16604)
  %i.bh = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %.val.i.i.i7 = load i32, ptr %i.bh, align 4, !alias.scope !16604, !noalias !16603, !noundef !24 ; 2 uses
  %i.bi = icmp eq i32 %.val.i.i.i7, -1
  br i1 %i.bi, label %"_ZN4core3ptr59drop_in_place$LT$std..sys..process..unix..unix..Process$GT$17h9b910e2ed51839d5E.exit.i.i.i8", label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bj = call noundef i32 @close(i32 noundef %.val.i.i.i7) #47, !noalias !16605 ; 0 uses
  br label %"_ZN4core3ptr59drop_in_place$LT$std..sys..process..unix..unix..Process$GT$17h9b910e2ed51839d5E.exit.i.i.i8"

"_ZN4core3ptr59drop_in_place$LT$std..sys..process..unix..unix..Process$GT$17h9b910e2ed51839d5E.exit.i.i.i8": ; preds = %bb.ab, %bb.aa
  %i.bk = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.val4.i.i.i9 = load i32, ptr %i.bk, align 4, !alias.scope !16604, !noalias !16603, !noundef !24 ; 2 uses
  %i.bl = icmp eq i32 %.val4.i.i.i9, -1
  br i1 %i.bl, label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$std..process..ChildStdin$GT$$GT$17hb25396cd81a1cd95E.exit10.i.i.i10", label %bb.ac

bb.ac:                                            ; preds = %"_ZN4core3ptr59drop_in_place$LT$std..sys..process..unix..unix..Process$GT$17h9b910e2ed51839d5E.exit.i.i.i8"
  %i.bm = call noundef i32 @close(i32 noundef %.val4.i.i.i9) #47, !noalias !16605 ; 0 uses
  br label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$std..process..ChildStdin$GT$$GT$17hb25396cd81a1cd95E.exit10.i.i.i10"

"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$std..process..ChildStdin$GT$$GT$17hb25396cd81a1cd95E.exit10.i.i.i10": ; preds = %bb.ac, %"_ZN4core3ptr59drop_in_place$LT$std..sys..process..unix..unix..Process$GT$17h9b910e2ed51839d5E.exit.i.i.i8"
  %i.bn = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %.val6.i.i.i11 = load i32, ptr %i.bn, align 4, !alias.scope !16604, !noalias !16603, !noundef !24 ; 2 uses
  %i.bo = icmp eq i32 %.val6.i.i.i11, -1
  br i1 %i.bo, label %"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$std..process..ChildStdout$GT$$GT$17h976e882bba891c18E.exit11.i.i.i12", label %bb.ad

bb.ad:                                            ; preds = %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$std..process..ChildStdin$GT$$GT$17hb25396cd81a1cd95E.exit10.i.i.i10"
  %i.bp = call noundef i32 @close(i32 noundef %.val6.i.i.i11) #47, !noalias !16605 ; 0 uses
  br label %"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$std..process..ChildStdout$GT$$GT$17h976e882bba891c18E.exit11.i.i.i12"

"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$std..process..ChildStdout$GT$$GT$17h976e882bba891c18E.exit11.i.i.i12": ; preds = %bb.ad, %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$std..process..ChildStdin$GT$$GT$17hb25396cd81a1cd95E.exit10.i.i.i10"
  %i.bq = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.val8.i.i.i13 = load i32, ptr %i.bq, align 4, !alias.scope !16604, !noalias !16603, !noundef !24 ; 2 uses
  %i.br = icmp eq i32 %.val8.i.i.i13, -1
  br i1 %i.br, label %.thread, label %bb.ae

bb.ae:                                            ; preds = %"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$std..process..ChildStdout$GT$$GT$17h976e882bba891c18E.exit11.i.i.i12"
  %i.bs = call noundef i32 @close(i32 noundef %.val8.i.i.i13) #47, !noalias !16605 ; 0 uses
  br label %.thread

"_ZN4core3ptr125drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$std..process..ExitStatus$GT$$C$std..io..error..Error$GT$$GT$17hfc8c8786e52dbed0E.exit.i.i6": ; preds = %bb.z, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !16603
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !16603
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.a, ptr noundef nonnull align 4 dereferenceable(28) %i.d, i64 28, i1 false), !noalias !16603
  invoke void @"_ZN126_$LT$tokio..process..imp..GlobalOrphanQueue$u20$as$u20$tokio..process..imp..orphan..OrphanQueue$LT$std..process..Child$GT$$GT$11push_orphan17h5a2aaabeb1a5089eE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bt, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(28) %i.a)
          to label %bb.ah unwind label %bb.ag

bb.af:                                            ; preds = %bb.z, %bb.w, %bb.u
  %lpad.thr_comm.i.i = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr40drop_in_place$LT$std..process..Child$GT$17h57ac78cc78e44270E"(ptr noalias noundef align 4 dereferenceable(28) %i.d) #55, !noalias !16603
  br label %.body.i

bb.ag:                                            ; preds = %"_ZN4core3ptr125drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$std..process..ExitStatus$GT$$C$std..io..error..Error$GT$$GT$17hfc8c8786e52dbed0E.exit.i.i6", %bb.v
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.ag, %bb.af
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.bu, %bb.ag ], [ %lpad.thr_comm.i.i, %bb.af ]
  invoke fastcc void @"_ZN4core3ptr127drop_in_place$LT$core..option..Option$LT$tokio..process..imp..pidfd_reaper..PidfdReaperInner$LT$std..process..Child$GT$$GT$$GT$17h5150f012c0620f0cE"(ptr noalias noundef nonnull align 8 dereferenceable(64) %0) #55
          to label %common.resume unwind label %bb.an

.thread:                                          ; preds = %bb.ae, %"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$std..process..ChildStdout$GT$$GT$17h976e882bba891c18E.exit11.i.i.i12"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !16603
  br label %"_ZN4core3ptr152drop_in_place$LT$tokio..process..imp..reap..Reaper$LT$std..process..Child$C$tokio..process..imp..GlobalOrphanQueue$C$tokio..signal..unix..Signal$GT$$GT$17h638e5a1eed2ed234E.exit"

bb.ah:                                            ; preds = %"_ZN4core3ptr125drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$std..process..ExitStatus$GT$$C$std..io..error..Error$GT$$GT$17hfc8c8786e52dbed0E.exit.i.i6"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !16603
  %.pre = load i64, ptr %0, align 8, !range !34, !alias.scope !16606
  %i.bv = icmp eq i64 %.pre, 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !16603
  call void @llvm.experimental.noalias.scope.decl(metadata !16607)
  br i1 %i.bv, label %"_ZN4core3ptr152drop_in_place$LT$tokio..process..imp..reap..Reaper$LT$std..process..Child$C$tokio..process..imp..GlobalOrphanQueue$C$tokio..signal..unix..Signal$GT$$GT$17h638e5a1eed2ed234E.exit", label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.experimental.noalias.scope.decl(metadata !16608)
  call void @llvm.experimental.noalias.scope.decl(metadata !16609)
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 44
  %.val.i.i.i.i = load i32, ptr %i.bw, align 4, !alias.scope !16610, !noundef !24 ; 2 uses
  %i.bx = icmp eq i32 %.val.i.i.i.i, -1
  br i1 %i.bx, label %"_ZN4core3ptr59drop_in_place$LT$std..sys..process..unix..unix..Process$GT$17h9b910e2ed51839d5E.exit.i.i.i.i", label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.by = call noundef i32 @close(i32 noundef %.val.i.i.i.i) #47, !noalias !16611 ; 0 uses
  br label %"_ZN4core3ptr59drop_in_place$LT$std..sys..process..unix..unix..Process$GT$17h9b910e2ed51839d5E.exit.i.i.i.i"

"_ZN4core3ptr59drop_in_place$LT$std..sys..process..unix..unix..Process$GT$17h9b910e2ed51839d5E.exit.i.i.i.i": ; preds = %bb.aj, %bb.ai
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val4.i.i.i.i = load i32, ptr %i.bz, align 8, !alias.scope !16610, !noundef !24 ; 2 uses
  %i.ca = icmp eq i32 %.val4.i.i.i.i, -1
  br i1 %i.ca, label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$std..process..ChildStdin$GT$$GT$17hb25396cd81a1cd95E.exit10.i.i.i.i", label %bb.ak

bb.ak:                                            ; preds = %"_ZN4core3ptr59drop_in_place$LT$std..sys..process..unix..unix..Process$GT$17h9b910e2ed51839d5E.exit.i.i.i.i"
  %i.cb = call noundef i32 @close(i32 noundef %.val4.i.i.i.i) #47, !noalias !16611 ; 0 uses
  br label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$std..process..ChildStdin$GT$$GT$17hb25396cd81a1cd95E.exit10.i.i.i.i"

"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$std..process..ChildStdin$GT$$GT$17hb25396cd81a1cd95E.exit10.i.i.i.i": ; preds = %bb.ak, %"_ZN4core3ptr59drop_in_place$LT$std..sys..process..unix..unix..Process$GT$17h9b910e2ed51839d5E.exit.i.i.i.i"
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 52
  %.val6.i.i.i.i = load i32, ptr %i.cc, align 4, !alias.scope !16610, !noundef !24 ; 2 uses
  %i.cd = icmp eq i32 %.val6.i.i.i.i, -1
  br i1 %i.cd, label %"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$std..process..ChildStdout$GT$$GT$17h976e882bba891c18E.exit11.i.i.i.i", label %bb.al

bb.al:                                            ; preds = %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$std..process..ChildStdin$GT$$GT$17hb25396cd81a1cd95E.exit10.i.i.i.i"
  %i.ce = call noundef i32 @close(i32 noundef %.val6.i.i.i.i) #47, !noalias !16611 ; 0 uses
  br label %"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$std..process..ChildStdout$GT$$GT$17h976e882bba891c18E.exit11.i.i.i.i"

"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$std..process..ChildStdout$GT$$GT$17h976e882bba891c18E.exit11.i.i.i.i": ; preds = %bb.al, %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$std..process..ChildStdin$GT$$GT$17hb25396cd81a1cd95E.exit10.i.i.i.i"
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val8.i.i.i.i = load i32, ptr %i.cf, align 8, !alias.scope !16610, !noundef !24 ; 2 uses
  %i.cg = icmp eq i32 %.val8.i.i.i.i, -1
  br i1 %i.cg, label %"_ZN4core3ptr99drop_in_place$LT$tokio..process..imp..pidfd_reaper..PidfdReaperInner$LT$std..process..Child$GT$$GT$17h7df3b5ada5f35ccaE.exit.i.i", label %bb.am

bb.am:                                            ; preds = %"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$std..process..ChildStdout$GT$$GT$17h976e882bba891c18E.exit11.i.i.i.i"
  %i.ch = call noundef i32 @close(i32 noundef %.val8.i.i.i.i) #47, !noalias !16611 ; 0 uses
  br label %"_ZN4core3ptr99drop_in_place$LT$tokio..process..imp..pidfd_reaper..PidfdReaperInner$LT$std..process..Child$GT$$GT$17h7df3b5ada5f35ccaE.exit.i.i"

"_ZN4core3ptr99drop_in_place$LT$tokio..process..imp..pidfd_reaper..PidfdReaperInner$LT$std..process..Child$GT$$GT$17h7df3b5ada5f35ccaE.exit.i.i": ; preds = %bb.am, %"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$std..process..ChildStdout$GT$$GT$17h976e882bba891c18E.exit11.i.i.i.i"
  call fastcc void @"_ZN4core3ptr105drop_in_place$LT$tokio..io..poll_evented..PollEvented$LT$tokio..process..imp..pidfd_reaper..Pidfd$GT$$GT$17h3bf0448c2f6e3684E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %0)
  br label %"_ZN4core3ptr152drop_in_place$LT$tokio..process..imp..reap..Reaper$LT$std..process..Child$C$tokio..process..imp..GlobalOrphanQueue$C$tokio..signal..unix..Signal$GT$$GT$17h638e5a1eed2ed234E.exit"

bb.an:                                            ; preds = %.body.i
  %i.ci = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56
  unreachable

"_ZN4core3ptr152drop_in_place$LT$tokio..process..imp..reap..Reaper$LT$std..process..Child$C$tokio..process..imp..GlobalOrphanQueue$C$tokio..signal..unix..Signal$GT$$GT$17h638e5a1eed2ed234E.exit": ; preds = %.thread, %"_ZN4core3ptr99drop_in_place$LT$tokio..process..imp..pidfd_reaper..PidfdReaperInner$LT$std..process..Child$GT$$GT$17h7df3b5ada5f35ccaE.exit.i.i", %bb.ah, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i", %bb.q
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr48drop_in_place$LT$similar_asserts..SimpleDiff$GT$17hdcb5a1007fad5a69E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %0) unnamed_addr #12 personality ptr @rust_eh_personality {
bb.a:
  %.val7 = load i64, ptr %0, align 8, !range !47, !noundef !24 ; 2 uses
  %switch = icmp sgt i64 %.val7, 0
  br i1 %switch, label %bb.b, label %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h520162dcb4bd40edE.exit"

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val8 = load ptr, ptr %i.a, align 8, !nonnull !24, !noundef !24
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8, i64 noundef %.val7, i64 noundef range(i64 1, -9223372036854775807) 1) #47, !noalias !16620
  br label %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h520162dcb4bd40edE.exit"

"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h520162dcb4bd40edE.exit": ; preds = %bb.a, %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val = load i64, ptr %i.b, align 8, !range !47, !noundef !24 ; 2 uses
  %switch22 = icmp sgt i64 %.val, 0
  br i1 %switch22, label %bb.c, label %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h520162dcb4bd40edE.exit18"

bb.c:                                             ; preds = %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h520162dcb4bd40edE.exit"
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val4 = load ptr, ptr %i.c, align 8, !nonnull !24, !noundef !24
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #47, !noalias !16621
  br label %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h520162dcb4bd40edE.exit18"

"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h520162dcb4bd40edE.exit18": ; preds = %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h520162dcb4bd40edE.exit", %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val13 = load i64, ptr %i.d, align 8, !range !39, !noundef !24 ; 2 uses
  %switch23 = icmp sgt i64 %.val13, 0
  br i1 %switch23, label %bb.d, label %"_ZN4core3ptr78drop_in_place$LT$core..option..Option$LT$alloc..borrow..Cow$LT$str$GT$$GT$$GT$17h953cee21a84eda82E.exit19"

bb.d:                                             ; preds = %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h520162dcb4bd40edE.exit18"
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val14 = load ptr, ptr %i.e, align 8, !nonnull !24, !noundef !24
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val14, i64 noundef %.val13, i64 noundef range(i64 1, -9223372036854775807) 1) #47, !noalias !16622
  br label %"_ZN4core3ptr78drop_in_place$LT$core..option..Option$LT$alloc..borrow..Cow$LT$str$GT$$GT$$GT$17h953cee21a84eda82E.exit19"

"_ZN4core3ptr78drop_in_place$LT$core..option..Option$LT$alloc..borrow..Cow$LT$str$GT$$GT$$GT$17h953cee21a84eda82E.exit19": ; preds = %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h520162dcb4bd40edE.exit18", %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val9 = load i64, ptr %i.f, align 8, !range !39, !noundef !24 ; 2 uses
  %switch24 = icmp sgt i64 %.val9, 0
  br i1 %switch24, label %bb.e, label %"_ZN4core3ptr78drop_in_place$LT$core..option..Option$LT$alloc..borrow..Cow$LT$str$GT$$GT$$GT$17h953cee21a84eda82E.exit21"

bb.e:                                             ; preds = %"_ZN4core3ptr78drop_in_place$LT$core..option..Option$LT$alloc..borrow..Cow$LT$str$GT$$GT$$GT$17h953cee21a84eda82E.exit19"
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val10 = load ptr, ptr %i.g, align 8, !nonnull !24, !noundef !24
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val10, i64 noundef %.val9, i64 noundef range(i64 1, -9223372036854775807) 1) #47, !noalias !16623
  br label %"_ZN4core3ptr78drop_in_place$LT$core..option..Option$LT$alloc..borrow..Cow$LT$str$GT$$GT$$GT$17h953cee21a84eda82E.exit21"

"_ZN4core3ptr78drop_in_place$LT$core..option..Option$LT$alloc..borrow..Cow$LT$str$GT$$GT$$GT$17h953cee21a84eda82E.exit21": ; preds = %"_ZN4core3ptr78drop_in_place$LT$core..option..Option$LT$alloc..borrow..Cow$LT$str$GT$$GT$$GT$17h953cee21a84eda82E.exit19", %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr48drop_in_place$LT$tokio..signal..unix..Signal$GT$17h507a24bcd21d334cE"(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !24 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !30, !invariant.load !24 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.e = load i64, ptr %i.d, align 8, !range !70, !invariant.load !24 ; 2 uses
  %i.f = icmp ult i64 %i.e, -9223372036854775807
  tail call void @llvm.assume(i1 %i.f)
  %i.g = icmp eq i64 %i.c, 0
  br i1 %i.g, label %"_ZN4core3ptr44drop_in_place$LT$tokio..signal..RxFuture$GT$17hc122b777d8a87c42E.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i": ; preds = %bb.c
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) %i.e) #47
  br label %"_ZN4core3ptr44drop_in_place$LT$tokio..signal..RxFuture$GT$17hc122b777d8a87c42E.exit"

bb.d:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !30, !invariant.load !24 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !70, !invariant.load !24 ; 2 uses
  %i.m = icmp ult i64 %i.l, -9223372036854775807
  tail call void @llvm.assume(i1 %i.m)
  %i.n = icmp eq i64 %i.j, 0
  br i1 %i.n, label %"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h9036843ac2a607c7E.exit5.i.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i": ; preds = %bb.d
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) %i.l) #47
  br label %"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h9036843ac2a607c7E.exit5.i.i.i.i"

"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h9036843ac2a607c7E.exit5.i.i.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i", %bb.d
  resume { ptr, i32 } %i.h

"_ZN4core3ptr44drop_in_place$LT$tokio..signal..RxFuture$GT$17hc122b777d8a87c42E.exit": ; preds = %bb.c, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i"
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr48drop_in_place$LT$tracing_trace..entry..Entry$GT$17hdfb820d5d7a0ec7bE"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %0) unnamed_addr #12 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !100, !noundef !24 ; 3 uses
  %i.b = tail call i64 @llvm.umax.i64(i64 %i.a, i64 -9223372036854775808)
  %i.c = and i64 %i.b, 9223372036854775807
  switch i64 %i.c, label %"_ZN4core3ptr54drop_in_place$LT$tracing_trace..entry..NewCallsite$GT$17h25fabb66fca4af1fE.exit" [
    i64 0, label %bb.b
    i64 1, label %bb.f
  ]

"_ZN4core3ptr54drop_in_place$LT$tracing_trace..entry..NewCallsite$GT$17h25fabb66fca4af1fE.exit.sink.split": ; preds = %bb.f, %"_ZN4core3ptr78drop_in_place$LT$core..option..Option$LT$alloc..borrow..Cow$LT$str$GT$$GT$$GT$17h953cee21a84eda82E.exit19.i"
  %.sink2 = phi i64 [ 32, %"_ZN4core3ptr78drop_in_place$LT$core..option..Option$LT$alloc..borrow..Cow$LT$str$GT$$GT$$GT$17h953cee21a84eda82E.exit19.i" ], [ 16, %bb.f ]
  %.val.sink = phi i64 [ %.val.i, %"_ZN4core3ptr78drop_in_place$LT$core..option..Option$LT$alloc..borrow..Cow$LT$str$GT$$GT$$GT$17h953cee21a84eda82E.exit19.i" ], [ %.val, %bb.f ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %.sink2
  %.val1 = load ptr, ptr %i.d, align 8, !nonnull !24, !noundef !24
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %.val.sink, i64 noundef range(i64 1, -9223372036854775807) 1) #47, !noalias !24
  br label %"_ZN4core3ptr54drop_in_place$LT$tracing_trace..entry..NewCallsite$GT$17h25fabb66fca4af1fE.exit"

"_ZN4core3ptr54drop_in_place$LT$tracing_trace..entry..NewCallsite$GT$17h25fabb66fca4af1fE.exit": ; preds = %"_ZN4core3ptr54drop_in_place$LT$tracing_trace..entry..NewCallsite$GT$17h25fabb66fca4af1fE.exit.sink.split", %bb.f, %"_ZN4core3ptr78drop_in_place$LT$core..option..Option$LT$alloc..borrow..Cow$LT$str$GT$$GT$$GT$17h953cee21a84eda82E.exit19.i", %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16634)
  %switch.i = icmp sgt i64 %i.a, 0
  br i1 %switch.i, label %bb.c, label %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h520162dcb4bd40edE.exit.i"

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val8.i = load ptr, ptr %i.e, align 8, !alias.scope !16634, !nonnull !24, !noundef !24
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8.i, i64 noundef %i.a, i64 noundef range(i64 1, -9223372036854775807) 1) #47, !noalias !16635
  br label %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h520162dcb4bd40edE.exit.i"

"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h520162dcb4bd40edE.exit.i": ; preds = %bb.c, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val13.i = load i64, ptr %i.f, align 8, !range !39, !alias.scope !16634, !noundef !24 ; 2 uses
  %switch22.i = icmp sgt i64 %.val13.i, 0
  br i1 %switch22.i, label %bb.d, label %"_ZN4core3ptr78drop_in_place$LT$core..option..Option$LT$alloc..borrow..Cow$LT$str$GT$$GT$$GT$17h953cee21a84eda82E.exit17.i"

bb.d:                                             ; preds = %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h520162dcb4bd40edE.exit.i"
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val14.i = load ptr, ptr %i.g, align 8, !alias.scope !16634, !nonnull !24, !noundef !24
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val14.i, i64 noundef %.val13.i, i64 noundef range(i64 1, -9223372036854775807) 1) #47, !noalias !16636
  br label %"_ZN4core3ptr78drop_in_place$LT$core..option..Option$LT$alloc..borrow..Cow$LT$str$GT$$GT$$GT$17h953cee21a84eda82E.exit17.i"

"_ZN4core3ptr78drop_in_place$LT$core..option..Option$LT$alloc..borrow..Cow$LT$str$GT$$GT$$GT$17h953cee21a84eda82E.exit17.i": ; preds = %bb.d, %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h520162dcb4bd40edE.exit.i"
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val9.i = load i64, ptr %i.h, align 8, !range !39, !alias.scope !16634, !noundef !24 ; 2 uses
  %switch23.i = icmp sgt i64 %.val9.i, 0
  br i1 %switch23.i, label %bb.e, label %"_ZN4core3ptr78drop_in_place$LT$core..option..Option$LT$alloc..borrow..Cow$LT$str$GT$$GT$$GT$17h953cee21a84eda82E.exit19.i"

bb.e:                                             ; preds = %"_ZN4core3ptr78drop_in_place$LT$core..option..Option$LT$alloc..borrow..Cow$LT$str$GT$$GT$$GT$17h953cee21a84eda82E.exit17.i"
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val10.i = load ptr, ptr %i.i, align 8, !alias.scope !16634, !nonnull !24, !noundef !24
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val10.i, i64 noundef %.val9.i, i64 noundef range(i64 1, -9223372036854775807) 1) #47, !noalias !16637
  br label %"_ZN4core3ptr78drop_in_place$LT$core..option..Option$LT$alloc..borrow..Cow$LT$str$GT$$GT$$GT$17h953cee21a84eda82E.exit19.i"

"_ZN4core3ptr78drop_in_place$LT$core..option..Option$LT$alloc..borrow..Cow$LT$str$GT$$GT$$GT$17h953cee21a84eda82E.exit19.i": ; preds = %bb.e, %"_ZN4core3ptr78drop_in_place$LT$core..option..Option$LT$alloc..borrow..Cow$LT$str$GT$$GT$$GT$17h953cee21a84eda82E.exit17.i"
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val.i = load i64, ptr %i.j, align 8, !range !47, !alias.scope !16634, !noundef !24 ; 2 uses
  %switch24.i = icmp sgt i64 %.val.i, 0
  br i1 %switch24.i, label %"_ZN4core3ptr54drop_in_place$LT$tracing_trace..entry..NewCallsite$GT$17h25fabb66fca4af1fE.exit.sink.split", label %"_ZN4core3ptr54drop_in_place$LT$tracing_trace..entry..NewCallsite$GT$17h25fabb66fca4af1fE.exit"

bb.f:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load i64, ptr %i.k, align 8, !range !47, !alias.scope !16638, !noundef !24 ; 2 uses
  %switch = icmp sgt i64 %.val, 0
  br i1 %switch, label %"_ZN4core3ptr54drop_in_place$LT$tracing_trace..entry..NewCallsite$GT$17h25fabb66fca4af1fE.exit.sink.split", label %"_ZN4core3ptr54drop_in_place$LT$tracing_trace..entry..NewCallsite$GT$17h25fabb66fca4af1fE.exit"
}

; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core3ptr48drop_in_place$LT$tracing_trace..error..Error$GT$17h944008e85f6967b6E"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16645)
  %.val.i = load ptr, ptr %0, align 8, !alias.scope !16645, !nonnull !24, !noundef !24 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16646)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16647)
  %i.a = load i64, ptr %.val.i, align 8, !range !64, !alias.scope !16648, !noalias !16645, !noundef !24
  switch i64 %i.a, label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h7cf736f5bc1012bfE.exit" [
    i64 0, label %bb.b
    i64 1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  %.val1.i.i.i.i = load i64, ptr %i.b, align 8, !alias.scope !16648, !noalias !16645, !noundef !24 ; 2 uses
  %i.c = icmp eq i64 %.val1.i.i.i.i, 0
  br i1 %i.c, label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h7cf736f5bc1012bfE.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i": ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  %.val.i.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !16648, !noalias !16645, !nonnull !24, !noundef !24
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef %.val1.i.i.i.i, i64 noundef 1) #47, !noalias !16649
  br label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h7cf736f5bc1012bfE.exit"

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17ha15fe409393fbeaeE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.e)
          to label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h7cf736f5bc1012bfE.exit" unwind label %bb.d, !noalias !16645

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef 40, i64 noundef 8) #47, !noalias !16645
  resume { ptr, i32 } %i.f

"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h7cf736f5bc1012bfE.exit": ; preds = %bb.a, %bb.b, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i", %bb.c
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef 40, i64 noundef 8) #47, !noalias !16645
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr49drop_in_place$LT$http..extensions..Extensions$GT$17hae5432ff86390e45E"(ptr %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq ptr %.0.val, null
  br i1 %i.a, label %"_ZN4core3ptr310drop_in_place$LT$core..option..Option$LT$alloc..boxed..Box$LT$std..collections..hash..map..HashMap$LT$core..any..TypeId$C$alloc..boxed..Box$LT$dyn$u20$http..extensions..AnyClone$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$C$core..hash..BuildHasherDefault$LT$http..extensions..IdHasher$GT$$GT$$GT$$GT$$GT$17h841ac5cf6fa99a5eE.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16666)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16667)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16668)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16669)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16670)
  %i.b = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !16671, !noundef !24 ; 3 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %"_ZN4core3ptr282drop_in_place$LT$alloc..boxed..Box$LT$std..collections..hash..map..HashMap$LT$core..any..TypeId$C$alloc..boxed..Box$LT$dyn$u20$http..extensions..AnyClone$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$C$core..hash..BuildHasherDefault$LT$http..extensions..IdHasher$GT$$GT$$GT$$GT$17ha32dd9d64d75ed11E.exit.i", label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16672)
  %i.e = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !16673, !noundef !24 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_ZN9hashbrown3raw13RawTableInner13drop_elements17h9a20943da5550accE.exit.i.i.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %.0.val, align 8, !alias.scope !16673, !nonnull !24, !noundef !24 ; 3 uses
  %.val3.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.h, align 16, !noalias !16674
  %i.i = icmp sgt <16 x i8> %.val3.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.k = bitcast <16 x i1> %i.i to i16
  br label %bb.e

bb.e:                                             ; preds = %"_ZN4core3ptr154drop_in_place$LT$$LP$core..any..TypeId$C$alloc..boxed..Box$LT$dyn$u20$http..extensions..AnyClone$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$RP$$GT$17h3c94de05baf9e8baE.exit.i.i.i.i.i.i.i.i", %bb.d
  %.sroa.07.018.i.i.i.i.i.i.i.i = phi ptr [ %i.h, %bb.d ], [ %.sroa.07.1.i.i.i.i.i.i.i.i, %"_ZN4core3ptr154drop_in_place$LT$$LP$core..any..TypeId$C$alloc..boxed..Box$LT$dyn$u20$http..extensions..AnyClone$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$RP$$GT$17h3c94de05baf9e8baE.exit.i.i.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.6.017.i.i.i.i.i.i.i.i = phi ptr [ %i.j, %bb.d ], [ %.sroa.6.1.i.i.i.i.i.i.i.i, %"_ZN4core3ptr154drop_in_place$LT$$LP$core..any..TypeId$C$alloc..boxed..Box$LT$dyn$u20$http..extensions..AnyClone$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$RP$$GT$17h3c94de05baf9e8baE.exit.i.i.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.88.016.i.i.i.i.i.i.i.i = phi i16 [ %i.k, %bb.d ], [ %i.t, %"_ZN4core3ptr154drop_in_place$LT$$LP$core..any..TypeId$C$alloc..boxed..Box$LT$dyn$u20$http..extensions..AnyClone$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$RP$$GT$17h3c94de05baf9e8baE.exit.i.i.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.109.015.i.i.i.i.i.i.i.i = phi i64 [ %i.f, %bb.d ], [ %i.w, %"_ZN4core3ptr154drop_in_place$LT$$LP$core..any..TypeId$C$alloc..boxed..Box$LT$dyn$u20$http..extensions..AnyClone$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$RP$$GT$17h3c94de05baf9e8baE.exit.i.i.i.i.i.i.i.i" ]
  %.not13.i.i.i.i.i.i.i.i.i = icmp eq i16 %.sroa.88.016.i.i.i.i.i.i.i.i, 0
  br i1 %.not13.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h0814871937be00e8E.exit.i.i.i.i.i.i.i.i"

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.e, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.l = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.sroa.6.017.i.i.i.i.i.i.i.i, %bb.e ] ; 2 uses
  %i.m = phi ptr [ %i.o, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.sroa.07.018.i.i.i.i.i.i.i.i, %bb.e ]
  %.val11.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.l, align 16, !noalias !16675
end_hunk_1
begin_hunk_2_@_ZN5tokio7runtime4task3raw21drop_join_handle_slow17hf95d9128420ec5a7E:bb.a
"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i": ; preds = %bb.m
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.q, i64 noundef %i.ac, i64 noundef range(i64 1, -9223372036854775807) %i.ae) #47
  br label %common.resume.i

common.resume.i:                                  ; preds = %bb.p, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i", %bb.m
  %common.resume.op.i = phi { ptr, i32 } [ %i.ai, %bb.p ], [ %i.aa, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i" ], [ %i.aa, %bb.m ]
  resume { ptr, i32 } %common.resume.op.i

bb.n:                                             ; preds = %bb.q, %"_ZN4core3ptr130drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$17h40e6861e4b7b388cE.exit.i"
  %i.ah = call noundef zeroext i1 @_ZN5tokio7runtime4task5state5State7ref_dec17hc7eaf1f0f3b78962E(ptr noundef nonnull align 8 %0)
  br i1 %i.ah, label %bb.o, label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$21drop_join_handle_slow17h1f0535a0602f7665E.exit"

bb.o:                                             ; preds = %bb.n
  invoke fastcc void @"_ZN4core3ptr282drop_in_place$LT$tokio..runtime..task..core..Cell$LT$tokio..runtime..blocking..task..BlockingTask$LT$tokio..fs..remove_dir_all..remove_dir_all$LT$$RF$str$GT$..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$tokio..runtime..blocking..schedule..BlockingSchedule$GT$$GT$17h67ac86fec3659696E"(ptr noundef nonnull align 128 %0)
          to label %"_ZN4core3ptr307drop_in_place$LT$alloc..boxed..Box$LT$tokio..runtime..task..core..Cell$LT$tokio..runtime..blocking..task..BlockingTask$LT$tokio..fs..remove_dir_all..remove_dir_all$LT$$RF$str$GT$..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$tokio..runtime..blocking..schedule..BlockingSchedule$GT$$GT$$GT$17hc52b8f9fb6c879e3E.exit.i.i" unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 256, i64 noundef 128) #47
  br label %common.resume.i

"_ZN4core3ptr307drop_in_place$LT$alloc..boxed..Box$LT$tokio..runtime..task..core..Cell$LT$tokio..runtime..blocking..task..BlockingTask$LT$tokio..fs..remove_dir_all..remove_dir_all$LT$$RF$str$GT$..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$tokio..runtime..blocking..schedule..BlockingSchedule$GT$$GT$$GT$17hc52b8f9fb6c879e3E.exit.i.i": ; preds = %bb.o
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 256, i64 noundef 128) #47
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$21drop_join_handle_slow17h1f0535a0602f7665E.exit"

bb.q:                                             ; preds = %"_ZN4core3ptr130drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$17h40e6861e4b7b388cE.exit.i"
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 88
  call void @_ZN5tokio7runtime4task4core7Trailer9set_waker17h4ecbb5fce603c1a0E(ptr noundef nonnull align 8 %i.aj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr undef)
  br label %bb.n

"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$21drop_join_handle_slow17h1f0535a0602f7665E.exit": ; preds = %bb.n, %"_ZN4core3ptr307drop_in_place$LT$alloc..boxed..Box$LT$tokio..runtime..task..core..Cell$LT$tokio..runtime..blocking..task..BlockingTask$LT$tokio..fs..remove_dir_all..remove_dir_all$LT$$RF$str$GT$..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$tokio..runtime..blocking..schedule..BlockingSchedule$GT$$GT$$GT$17hc52b8f9fb6c879e3E.exit.i.i"
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_ZN5tokio7runtime4task3raw4poll17h01b4548bb895c111E(ptr noundef nonnull %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1008 x i8], align 8              ; 4 uses
  %i.b = alloca [1008 x i8], align 8              ; 7 uses
  %i.c = alloca [1008 x i8], align 8              ; 4 uses
  %i.d = alloca [1008 x i8], align 8              ; 7 uses
  %i.e = alloca [1008 x i8], align 8              ; 7 uses
  %i.f = alloca [1008 x i8], align 8              ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 5 uses
  %i.h = alloca [48 x i8], align 8                ; 7 uses
  %i.i = alloca [1008 x i8], align 8              ; 4 uses
  %i.j = alloca [16 x i8], align 8                ; 7 uses
  %i.k = alloca [32 x i8], align 8                ; 6 uses
  %i.l = alloca [16 x i8], align 8                ; 10 uses
  %i.m = tail call noundef i8 @_ZN5tokio7runtime4task5state5State21transition_to_running17he0b724de1c9eab75E(ptr noundef nonnull align 8 %0)
  switch i8 %i.m, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.x
    i8 2, label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$4poll17haac6cd1bdd10b7abE.exit"
    i8 3, label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h1d1540cd706cd670E.exit.thread6.i"
  ]

default.unreachable:                              ; preds = %_ZN5tokio7runtime4task7harness11poll_future17hec3213b4ec5f0f24E.exit.i.i, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr @_ZN5tokio7runtime4task5waker12WAKER_VTABLE17h7860ffe65f71f6d1E, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %0, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %.sroa.14.8..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !23427
  store ptr %i.l, ptr %.sroa.14.8..sroa_idx.i.i.i, align 8
  %.sroa.4.8..sroa.14.8..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr null, ptr %.sroa.4.8..sroa.14.8..sroa_idx.i.sroa_idx.i.i, align 8
  store ptr %i.l, ptr %i.k, align 8, !noalias !23428
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !23429
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.q = load i32, ptr %i.p, align 8, !range !95, !noalias !23430, !noundef !24
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.c, label %bb.d, !prof !29

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !23430
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !range !70, !noalias !23430, !noundef !24
  %i.u = invoke noundef i64 @_ZN5tokio7runtime4task4core11TaskIdGuard5enter17hfddcd1266c1bc7f4E(i64 noundef %i.t)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.k, !noalias !23427

.noexc.i.i.i.i.i.i:                               ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.u, ptr %i.g, align 8, !noalias !23430
  invoke fastcc void @"_ZN5xtask5bench8workload11stop_report28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h1a0efc3a73d96329E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.j, ptr noundef nonnull align 8 %i.v, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.k)
          to label %"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$4poll28_$u7b$$u7b$closure$u7d$$u7d$17h25d94ff3c439f376E.exit.i.i.i.i.i.i.i" unwind label %bb.e, !noalias !23431

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !23430
  store ptr @756, ptr %i.h, align 8, !noalias !23430
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 1, ptr %i.w, align 8, !noalias !23430
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store ptr null, ptr %i.x, align 8, !noalias !23430
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.y, align 8, !noalias !23430
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i64 0, ptr %i.z, align 8, !noalias !23430
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @757) #54
          to label %.noexc1.i.i.i.i.i.i unwind label %bb.k, !noalias !23427

.noexc1.i.i.i.i.i.i:                              ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %.noexc.i.i.i.i.i.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke void @"_ZN81_$LT$tokio..runtime..task..core..TaskIdGuard$u20$as$u20$core..ops..drop..Drop$GT$4drop17h81e67524a710ac4fE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %.body.i.i.i.i.i.i unwind label %bb.f, !noalias !23432

bb.f:                                             ; preds = %bb.e
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !23432
  unreachable

"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$4poll28_$u7b$$u7b$closure$u7d$$u7d$17h25d94ff3c439f376E.exit.i.i.i.i.i.i.i": ; preds = %.noexc.i.i.i.i.i.i
  invoke void @"_ZN81_$LT$tokio..runtime..task..core..TaskIdGuard$u20$as$u20$core..ops..drop..Drop$GT$4drop17h81e67524a710ac4fE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %.noexc2.i.i.i.i.i.i unwind label %bb.k, !noalias !23427

.noexc2.i.i.i.i.i.i:                              ; preds = %"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$4poll28_$u7b$$u7b$closure$u7d$$u7d$17h25d94ff3c439f376E.exit.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !23430
  %i.ac = load i32, ptr %i.j, align 8, !range !95, !noalias !23429, !noundef !24
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.ac, 2
  br i1 %.not.i.i.i.i.i.i.i, label %bb.n, label %bb.g

bb.g:                                             ; preds = %.noexc2.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !23429
  store i32 2, ptr %i.i, align 8, !noalias !23429
  invoke fastcc void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$9set_stage17h1ce38305449e4a1cE"(ptr noundef nonnull align 8 %i.o, ptr noalias noundef align 8 captures(address) dereferenceable(1008) %i.i)
          to label %bb.i unwind label %bb.h, !noalias !23431

bb.h:                                             ; preds = %bb.g
  %i.ad = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke fastcc void @"_ZN4core3ptr108drop_in_place$LT$core..task..poll..Poll$LT$core..result..Result$LT$std..fs..File$C$anyhow..Error$GT$$GT$$GT$17he1059590d2aa7ad7E"(ptr noalias noundef align 8 dereferenceable(16) %i.j) #55
          to label %.body.i.i.i.i.i.i unwind label %bb.j, !noalias !23431

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !23429
  br label %bb.n

bb.j:                                             ; preds = %bb.h
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !23431
  unreachable

bb.k:                                             ; preds = %"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$4poll28_$u7b$$u7b$closure$u7d$$u7d$17h25d94ff3c439f376E.exit.i.i.i.i.i.i.i", %bb.d, %bb.c
  %i.af = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %.body.i.i.i.i.i.i

.body.i.i.i.i.i.i:                                ; preds = %bb.k, %bb.h, %bb.e
  %eh.lpad-body.i.i.i.i.i.i = phi { ptr, i32 } [ %i.af, %bb.k ], [ %i.aa, %bb.e ], [ %i.ad, %bb.h ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !23427
  store i32 2, ptr %i.f, align 8, !noalias !23427
  invoke fastcc void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$9set_stage17h1ce38305449e4a1cE"(ptr noundef nonnull align 8 %i.o, ptr noalias noundef align 8 captures(address) dereferenceable(1008) %i.f)
          to label %.body.i.i.i unwind label %bb.l, !noalias !23427

bb.l:                                             ; preds = %.body.i.i.i.i.i.i
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !23427
  unreachable

.body.i.i.i:                                      ; preds = %.body.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !23427
  %i.ah = extractvalue { ptr, i32 } %eh.lpad-body.i.i.i.i.i.i, 0
  %i.ai = invoke { ptr, ptr } @_ZN3std9panicking12catch_unwind7cleanup17h90994b58fc656da7E(ptr noundef %i.ah)
          to label %bb.o unwind label %bb.m, !noalias !23428 ; 2 uses

bb.m:                                             ; preds = %.body.i.i.i
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking19panic_cannot_unwind17hebe3a4840b691755E() #56, !noalias !23428
  unreachable

bb.n:                                             ; preds = %bb.i, %.noexc2.i.i.i.i.i.i
  %.sroa.043.0.copyload.i.i.i = load ptr, ptr %i.j, align 8, !noalias !23428 ; 2 uses
  %.sroa.9.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.9.0.copyload.i.i.i = load ptr, ptr %.sroa.9.0..sroa_idx.i.i.i, align 8, !noalias !23428
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !23429
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !23427
  %i.ak = ptrtoint ptr %.sroa.043.0.copyload.i.i.i to i64
  %i.al = and i64 %i.ak, 4294967295
  %i.am = icmp eq i64 %i.al, 2
  br i1 %i.am, label %_ZN5tokio7runtime4task7harness11poll_future17hec3213b4ec5f0f24E.exit.i.i, label %bb.p

bb.o:                                             ; preds = %.body.i.i.i
  %i.an = extractvalue { ptr, ptr } %i.ai, 0      ; 2 uses
  %i.ao = extractvalue { ptr, ptr } %i.ai, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.an) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ao) ]
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aq = load i64, ptr %i.ap, align 8, !range !70, !noalias !23428, !noundef !24
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.sroa.043.053.i.i.i = phi ptr [ %i.an, %bb.o ], [ %.sroa.043.0.copyload.i.i.i, %bb.n ]
  %.sroa.9.050.i.i.i = phi ptr [ %i.ao, %bb.o ], [ %.sroa.9.0.copyload.i.i.i, %bb.n ]
  %.sroa.09.0.i.i.i = phi i64 [ %i.aq, %bb.o ], [ 0, %bb.n ]
  %i.ar = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !23433
  store i64 %.sroa.09.0.i.i.i, ptr %i.ar, align 8, !noalias !23428
  %.sroa.10.8..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %.sroa.043.053.i.i.i, ptr %.sroa.10.8..sroa_idx.i.i.i, align 8, !noalias !23428
  %.sroa.11.8..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %.sroa.9.050.i.i.i, ptr %.sroa.11.8..sroa_idx.i.i.i, align 8, !noalias !23428
  store i32 1, ptr %i.e, align 8, !noalias !23433
  invoke fastcc void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$9set_stage17h1ce38305449e4a1cE"(ptr noundef nonnull align 8 %i.o, ptr noalias noundef align 8 captures(address) dereferenceable(1008) %i.e)
          to label %.thread.i.i.i unwind label %bb.q, !noalias !23428

bb.q:                                             ; preds = %bb.p
  %i.as = landingpad { ptr, i32 }
          catch ptr null
  %i.at = extractvalue { ptr, i32 } %i.as, 0
  %i.au = invoke { ptr, ptr } @_ZN3std9panicking12catch_unwind7cleanup17h90994b58fc656da7E(ptr noundef %i.at)
          to label %bb.s unwind label %bb.r, !noalias !23428 ; 2 uses

bb.r:                                             ; preds = %bb.q
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking19panic_cannot_unwind17hebe3a4840b691755E() #56, !noalias !23428
  unreachable

.thread.i.i.i:                                    ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !23433
  br label %bb.ac

bb.s:                                             ; preds = %bb.q
  %i.aw = extractvalue { ptr, ptr } %i.au, 0      ; 4 uses
  %i.ax = extractvalue { ptr, ptr } %i.au, 1      ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i, label %bb.ac, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ax) ]
  %i.ay = load ptr, ptr %i.ax, align 8, !invariant.load !24, !noalias !23428 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  invoke void %i.ay(ptr noundef nonnull %i.aw)
          to label %bb.v unwind label %bb.w, !noalias !23428

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !range !30, !invariant.load !24, !noalias !23428 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.bc = load i64, ptr %i.bb, align 8, !range !70, !invariant.load !24, !noalias !23428 ; 2 uses
  %i.bd = icmp ult i64 %i.bc, -9223372036854775807
  call void @llvm.assume(i1 %i.bd)
  %i.be = icmp eq i64 %i.ba, 0
  br i1 %i.be, label %bb.ac, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i": ; preds = %bb.v
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aw, i64 noundef %i.ba, i64 noundef range(i64 1, -9223372036854775807) %i.bc) #47, !noalias !23428
  br label %bb.ac

bb.w:                                             ; preds = %bb.u
  %i.bf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !range !30, !invariant.load !24, !noalias !23428 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.bj = load i64, ptr %i.bi, align 8, !range !70, !invariant.load !24, !noalias !23428 ; 2 uses
  %i.bk = icmp ult i64 %i.bj, -9223372036854775807
  call void @llvm.assume(i1 %i.bk)
  %i.bl = icmp eq i64 %i.bh, 0
  br i1 %i.bl, label %common.resume.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i": ; preds = %bb.w
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aw, i64 noundef %i.bh, i64 noundef range(i64 1, -9223372036854775807) %i.bj) #47, !noalias !23428
  br label %common.resume.i

common.resume.i:                                  ; preds = %bb.al, %bb.ak, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i", %bb.w
  %common.resume.op.i = phi { ptr, i32 } [ %i.ce, %bb.al ], [ %i.cd, %bb.ak ], [ %i.bf, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i" ], [ %i.bf, %bb.w ]
  resume { ptr, i32 } %common.resume.op.i

bb.x:                                             ; preds = %bb.a
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 2, ptr %i.c, align 8
  invoke fastcc void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$9set_stage17h1ce38305449e4a1cE"(ptr noundef nonnull align 8 %i.bm, ptr noalias noundef align 8 captures(address) dereferenceable(1008) %i.c)
          to label %bb.aa unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bn = landingpad { ptr, i32 }
          catch ptr null
  %i.bo = extractvalue { ptr, i32 } %i.bn, 0
  %i.bp = invoke { ptr, ptr } @_ZN3std9panicking12catch_unwind7cleanup17h90994b58fc656da7E(ptr noundef %i.bo)
          to label %bb.ab unwind label %bb.z      ; 2 uses

bb.z:                                             ; preds = %bb.y
  %i.bq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking19panic_cannot_unwind17hebe3a4840b691755E() #56
  unreachable

bb.aa:                                            ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_ZN5tokio7runtime4task7harness11cancel_task17h5656b887a5652763E.exit.i.i

bb.ab:                                            ; preds = %bb.y
  %i.br = extractvalue { ptr, ptr } %i.bp, 0
  %i.bs = extractvalue { ptr, ptr } %i.bp, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bs) ]
  br label %_ZN5tokio7runtime4task7harness11cancel_task17h5656b887a5652763E.exit.i.i

_ZN5tokio7runtime4task7harness11cancel_task17h5656b887a5652763E.exit.i.i: ; preds = %bb.ab, %bb.aa
  %.sroa.8.0.i.i.i = phi ptr [ undef, %bb.aa ], [ %i.bs, %bb.ab ]
  %.sroa.6.0.i.i.i = phi ptr [ null, %bb.aa ], [ %i.br, %bb.ab ]
  %.sroa.01.0.in.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.01.0.i.i.i = load i64, ptr %.sroa.01.0.in.i.i.i, align 8, !range !70, !noundef !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.bt = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %.sroa.01.0.i.i.i, ptr %i.bt, align 8
  %.sroa.53.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %.sroa.6.0.i.i.i, ptr %.sroa.53.0..sroa_idx.i.i.i, align 8
  %.sroa.64.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %.sroa.8.0.i.i.i, ptr %.sroa.64.0..sroa_idx.i.i.i, align 8
  store i32 1, ptr %i.d, align 8
  call fastcc void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$9set_stage17h1ce38305449e4a1cE"(ptr noundef nonnull align 8 %i.bm, ptr noalias noundef align 8 captures(address) dereferenceable(1008) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h1d1540cd706cd670E.exit.thread.i"

_ZN5tokio7runtime4task7harness11poll_future17hec3213b4ec5f0f24E.exit.i.i: ; preds = %bb.n
  %i.bu = call noundef i8 @_ZN5tokio7runtime4task5state5State18transition_to_idle17hd68afb9aac48e2e2E(ptr noundef nonnull align 8 %0)
  switch i8 %i.bu, label %default.unreachable [
    i8 3, label %bb.ad
    i8 0, label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h1d1540cd706cd670E.exit.thread12.i"
    i8 1, label %bb.ai
    i8 2, label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h1d1540cd706cd670E.exit.i"
  ]

"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h1d1540cd706cd670E.exit.thread12.i": ; preds = %_ZN5tokio7runtime4task7harness11poll_future17hec3213b4ec5f0f24E.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$4poll17haac6cd1bdd10b7abE.exit"

bb.ac:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i", %bb.v, %bb.s, %.thread.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h1d1540cd706cd670E.exit.thread.i"

bb.ad:                                            ; preds = %_ZN5tokio7runtime4task7harness11poll_future17hec3213b4ec5f0f24E.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 2, ptr %i.a, align 8
  invoke fastcc void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$9set_stage17h1ce38305449e4a1cE"(ptr noundef nonnull align 8 %i.o, ptr noalias noundef align 8 captures(address) dereferenceable(1008) %i.a)
          to label %bb.ag unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bv = landingpad { ptr, i32 }
          catch ptr null
  %i.bw = extractvalue { ptr, i32 } %i.bv, 0
  %i.bx = invoke { ptr, ptr } @_ZN3std9panicking12catch_unwind7cleanup17h90994b58fc656da7E(ptr noundef %i.bw)
          to label %bb.ah unwind label %bb.af     ; 2 uses

bb.af:                                            ; preds = %bb.ae
  %i.by = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking19panic_cannot_unwind17hebe3a4840b691755E() #56
  unreachable

bb.ag:                                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h1d1540cd706cd670E.exit.thread8.i"

bb.ah:                                            ; preds = %bb.ae
  %i.bz = extractvalue { ptr, ptr } %i.bx, 0
  %i.ca = extractvalue { ptr, ptr } %i.bx, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ca) ]
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h1d1540cd706cd670E.exit.thread8.i"

"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h1d1540cd706cd670E.exit.thread8.i": ; preds = %bb.ah, %bb.ag
  %.sroa.8.0.i1.i.i = phi ptr [ undef, %bb.ag ], [ %i.ca, %bb.ah ]
  %.sroa.6.0.i2.i.i = phi ptr [ null, %bb.ag ], [ %i.bz, %bb.ah ]
  %.sroa.01.0.i4.i.i = load i64, ptr %i.s, align 8, !range !70, !noundef !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.cb = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.01.0.i4.i.i, ptr %i.cb, align 8
  %.sroa.53.0..sroa_idx.i5.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %.sroa.6.0.i2.i.i, ptr %.sroa.53.0..sroa_idx.i5.i.i, align 8
  %.sroa.64.0..sroa_idx.i6.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %.sroa.8.0.i1.i.i, ptr %.sroa.64.0..sroa_idx.i6.i.i, align 8
  store i32 1, ptr %i.b, align 8
  call fastcc void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$9set_stage17h1ce38305449e4a1cE"(ptr noundef nonnull align 8 %i.o, ptr noalias noundef align 8 captures(address) dereferenceable(1008) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h1d1540cd706cd670E.exit.thread.i"

"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h1d1540cd706cd670E.exit.i": ; preds = %_ZN5tokio7runtime4task7harness11poll_future17hec3213b4ec5f0f24E.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h1d1540cd706cd670E.exit.thread6.i"

end_hunk_2
begin_hunk_3_@_ZN5tokio7runtime4task3raw4poll17h0c09b506b72b57b9E:bb.a
  %i.cc = invoke { ptr, ptr } @_ZN3std9panicking12catch_unwind7cleanup17h90994b58fc656da7E(ptr noundef %i.cb)
          to label %bb.ap unwind label %bb.an     ; 2 uses

bb.an:                                            ; preds = %bb.am
  %i.cd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking19panic_cannot_unwind17hebe3a4840b691755E() #56
  unreachable

bb.ao:                                            ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZN5tokio7runtime4task7harness11cancel_task17ha09976bfabce9a39E.exit8.i.i

bb.ap:                                            ; preds = %bb.am
  %i.ce = extractvalue { ptr, ptr } %i.cc, 0
  %i.cf = extractvalue { ptr, ptr } %i.cc, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cf) ]
  br label %_ZN5tokio7runtime4task7harness11cancel_task17ha09976bfabce9a39E.exit8.i.i

_ZN5tokio7runtime4task7harness11cancel_task17ha09976bfabce9a39E.exit8.i.i: ; preds = %bb.ap, %bb.ao
  %.sroa.8.0.i1.i.i = phi ptr [ undef, %bb.ao ], [ %i.cf, %bb.ap ]
  %.sroa.6.0.i2.i.i = phi ptr [ null, %bb.ao ], [ %i.ce, %bb.ap ]
  %.sroa.03.0.i4.i.i = load i64, ptr %i.q, align 8, !range !70, !noundef !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.cg = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.cg, align 8
  %.sroa.52.0..sroa_idx.i5.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %.sroa.03.0.i4.i.i, ptr %.sroa.52.0..sroa_idx.i5.i.i, align 8
  %.sroa.52.sroa.5.0..sroa.52.0..sroa_idx.sroa_idx.i6.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %.sroa.6.0.i2.i.i, ptr %.sroa.52.sroa.5.0..sroa.52.0..sroa_idx.sroa_idx.i6.i.i, align 8
  %.sroa.52.sroa.6.0..sroa.52.0..sroa_idx.sroa_idx.i7.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %.sroa.8.0.i1.i.i, ptr %.sroa.52.sroa.6.0..sroa.52.0..sroa_idx.sroa_idx.i7.i.i, align 8
  store i32 1, ptr %i.b, align 8
  call fastcc void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$9set_stage17hd89d52838b846642E"(ptr noundef nonnull align 8 %i.m, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.aq

bb.aq:                                            ; preds = %_ZN5tokio7runtime4task7harness11cancel_task17ha09976bfabce9a39E.exit8.i.i, %_ZN5tokio7runtime4task7harness11cancel_task17ha09976bfabce9a39E.exit.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i", %bb.ad, %bb.aa, %.thread63.i.i.i
  call fastcc void @"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$8complete17h9601fa9b701dc2ddE"(ptr noundef nonnull %0)
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$4poll17hdd1a0340eaf76179E.exit"

bb.ar:                                            ; preds = %bb.ak
  call void @"_ZN103_$LT$tokio..runtime..blocking..schedule..BlockingSchedule$u20$as$u20$tokio..runtime..task..Schedule$GT$8schedule17hc1e7b37771adfe3fE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.m, ptr noundef nonnull %0)
  %i.ch = call noundef zeroext i1 @_ZN5tokio7runtime4task5state5State7ref_dec17hc7eaf1f0f3b78962E(ptr noundef nonnull align 8 %0)
  br i1 %i.ch, label %bb.as, label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$4poll17hdd1a0340eaf76179E.exit"

bb.as:                                            ; preds = %bb.ar
  invoke fastcc void @"_ZN4core3ptr297drop_in_place$LT$tokio..runtime..task..core..Cell$LT$tokio..runtime..blocking..task..BlockingTask$LT$tokio..fs..read_to_string..read_to_string$LT$$RF$std..path..PathBuf$GT$..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$tokio..runtime..blocking..schedule..BlockingSchedule$GT$$GT$17h9d7ec87cad404388E"(ptr noundef nonnull align 128 %0)
          to label %"_ZN4core3ptr322drop_in_place$LT$alloc..boxed..Box$LT$tokio..runtime..task..core..Cell$LT$tokio..runtime..blocking..task..BlockingTask$LT$tokio..fs..read_to_string..read_to_string$LT$$RF$std..path..PathBuf$GT$..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$tokio..runtime..blocking..schedule..BlockingSchedule$GT$$GT$$GT$17h71910dfe6c3a27bfE.exit.i.i" unwind label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ci = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 256, i64 noundef 128) #47
  br label %common.resume.i

"_ZN4core3ptr322drop_in_place$LT$alloc..boxed..Box$LT$tokio..runtime..task..core..Cell$LT$tokio..runtime..blocking..task..BlockingTask$LT$tokio..fs..read_to_string..read_to_string$LT$$RF$std..path..PathBuf$GT$..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$tokio..runtime..blocking..schedule..BlockingSchedule$GT$$GT$$GT$17h71910dfe6c3a27bfE.exit.i.i": ; preds = %bb.as
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 256, i64 noundef 128) #47
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$4poll17hdd1a0340eaf76179E.exit"

"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h519e92e26164c5aeE.exit.i": ; preds = %bb.ak, %bb.a
  invoke fastcc void @"_ZN4core3ptr297drop_in_place$LT$tokio..runtime..task..core..Cell$LT$tokio..runtime..blocking..task..BlockingTask$LT$tokio..fs..read_to_string..read_to_string$LT$$RF$std..path..PathBuf$GT$..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$tokio..runtime..blocking..schedule..BlockingSchedule$GT$$GT$17h9d7ec87cad404388E"(ptr noundef nonnull align 128 %0)
          to label %"_ZN4core3ptr322drop_in_place$LT$alloc..boxed..Box$LT$tokio..runtime..task..core..Cell$LT$tokio..runtime..blocking..task..BlockingTask$LT$tokio..fs..read_to_string..read_to_string$LT$$RF$std..path..PathBuf$GT$..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$tokio..runtime..blocking..schedule..BlockingSchedule$GT$$GT$$GT$17h71910dfe6c3a27bfE.exit.i" unwind label %bb.au

bb.au:                                            ; preds = %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h519e92e26164c5aeE.exit.i"
  %i.cj = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 256, i64 noundef 128) #47
  br label %common.resume.i

"_ZN4core3ptr322drop_in_place$LT$alloc..boxed..Box$LT$tokio..runtime..task..core..Cell$LT$tokio..runtime..blocking..task..BlockingTask$LT$tokio..fs..read_to_string..read_to_string$LT$$RF$std..path..PathBuf$GT$..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$tokio..runtime..blocking..schedule..BlockingSchedule$GT$$GT$$GT$17h71910dfe6c3a27bfE.exit.i": ; preds = %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h519e92e26164c5aeE.exit.i"
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 256, i64 noundef 128) #47
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$4poll17hdd1a0340eaf76179E.exit"

"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$4poll17hdd1a0340eaf76179E.exit": ; preds = %bb.a, %bb.ak, %bb.aq, %bb.ar, %"_ZN4core3ptr322drop_in_place$LT$alloc..boxed..Box$LT$tokio..runtime..task..core..Cell$LT$tokio..runtime..blocking..task..BlockingTask$LT$tokio..fs..read_to_string..read_to_string$LT$$RF$std..path..PathBuf$GT$..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$tokio..runtime..blocking..schedule..BlockingSchedule$GT$$GT$$GT$17h71910dfe6c3a27bfE.exit.i.i", %"_ZN4core3ptr322drop_in_place$LT$alloc..boxed..Box$LT$tokio..runtime..task..core..Cell$LT$tokio..runtime..blocking..task..BlockingTask$LT$tokio..fs..read_to_string..read_to_string$LT$$RF$std..path..PathBuf$GT$..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$tokio..runtime..blocking..schedule..BlockingSchedule$GT$$GT$$GT$17h71910dfe6c3a27bfE.exit.i"
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_ZN5tokio7runtime4task3raw4poll17h19eac7dbd1267c5fE(ptr noundef nonnull %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [168 x i8], align 8               ; 4 uses
  %i.b = alloca [168 x i8], align 8               ; 7 uses
  %i.c = alloca [168 x i8], align 8               ; 4 uses
  %i.d = alloca [168 x i8], align 8               ; 7 uses
  %i.e = alloca [168 x i8], align 8               ; 7 uses
  %i.f = alloca [168 x i8], align 8               ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 5 uses
  %i.h = alloca [48 x i8], align 8                ; 7 uses
  %i.i = alloca [32 x i8], align 8                ; 6 uses
  %i.j = alloca [16 x i8], align 8                ; 10 uses
  %i.k = tail call noundef i8 @_ZN5tokio7runtime4task5state5State21transition_to_running17he0b724de1c9eab75E(ptr noundef nonnull align 8 %0)
  switch i8 %i.k, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.r
    i8 2, label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$4poll17he82f2f8438189bb5E.exit"
    i8 3, label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hc14aec232510fb4eE.exit.thread6.i"
  ]

default.unreachable:                              ; preds = %bb.w, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr @_ZN5tokio7runtime4task5waker12WAKER_VTABLE17h7860ffe65f71f6d1E, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %0, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %.sroa.13.8..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !23480
  store ptr %i.j, ptr %.sroa.13.8..sroa_idx.i.i.i, align 8
  %.sroa.4.8..sroa.13.8..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr null, ptr %.sroa.4.8..sroa.13.8..sroa_idx.i.sroa_idx.i.i, align 8
  store ptr %i.j, ptr %i.i, align 8, !noalias !23481
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.o = load i32, ptr %i.n, align 8, !range !95, !noalias !23482, !noundef !24
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.c, label %bb.d, !prof !29

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !23482
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !range !70, !noalias !23482, !noundef !24
  %i.s = invoke noundef i64 @_ZN5tokio7runtime4task4core11TaskIdGuard5enter17hfddcd1266c1bc7f4E(i64 noundef %i.r)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.g, !noalias !23480

.noexc.i.i.i.i.i.i:                               ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.s, ptr %i.g, align 8, !noalias !23482
  invoke fastcc void @"_ZN5xtask6common6assets14download_asset28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h1c39afd7a4210cfaE"(ptr noundef nonnull align 8 %i.t, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.i)
          to label %"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$4poll28_$u7b$$u7b$closure$u7d$$u7d$17h4b7cfcea6aaaff29E.exit.i.i.i.i.i.i.i" unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !23482
  store ptr @756, ptr %i.h, align 8, !noalias !23482
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 1, ptr %i.u, align 8, !noalias !23482
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store ptr null, ptr %i.v, align 8, !noalias !23482
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.w, align 8, !noalias !23482
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i64 0, ptr %i.x, align 8, !noalias !23482
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @757) #54
          to label %.noexc1.i.i.i.i.i.i unwind label %bb.g, !noalias !23480

.noexc1.i.i.i.i.i.i:                              ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %.noexc.i.i.i.i.i.i
  %i.y = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke void @"_ZN81_$LT$tokio..runtime..task..core..TaskIdGuard$u20$as$u20$core..ops..drop..Drop$GT$4drop17h81e67524a710ac4fE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %.body.i.i.i.i.i.i unwind label %bb.f, !noalias !23480

bb.f:                                             ; preds = %bb.e
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !23480
  unreachable

"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$4poll28_$u7b$$u7b$closure$u7d$$u7d$17h4b7cfcea6aaaff29E.exit.i.i.i.i.i.i.i": ; preds = %.noexc.i.i.i.i.i.i
  invoke void @"_ZN81_$LT$tokio..runtime..task..core..TaskIdGuard$u20$as$u20$core..ops..drop..Drop$GT$4drop17h81e67524a710ac4fE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %bb.w unwind label %bb.g, !noalias !23480

bb.g:                                             ; preds = %"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$4poll28_$u7b$$u7b$closure$u7d$$u7d$17h4b7cfcea6aaaff29E.exit.i.i.i.i.i.i.i", %bb.d, %bb.c
  %i.aa = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %.body.i.i.i.i.i.i

.body.i.i.i.i.i.i:                                ; preds = %bb.g, %bb.e
  %eh.lpad-body.i.i.i.i.i.i = phi { ptr, i32 } [ %i.aa, %bb.g ], [ %i.y, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !23480
  store i32 2, ptr %i.f, align 8, !noalias !23480
  invoke fastcc void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$9set_stage17h87278df8fd4e6094E"(ptr noundef nonnull align 8 %i.m, ptr noalias noundef align 8 captures(address) dereferenceable(168) %i.f)
          to label %.body.i.i.i unwind label %bb.h, !noalias !23480

bb.h:                                             ; preds = %.body.i.i.i.i.i.i
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !23480
  unreachable

.body.i.i.i:                                      ; preds = %.body.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !23480
  %i.ac = extractvalue { ptr, i32 } %eh.lpad-body.i.i.i.i.i.i, 0
  %i.ad = invoke { ptr, ptr } @_ZN3std9panicking12catch_unwind7cleanup17h90994b58fc656da7E(ptr noundef %i.ac)
          to label %bb.j unwind label %bb.i, !noalias !23481 ; 2 uses

bb.i:                                             ; preds = %.body.i.i.i
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking19panic_cannot_unwind17hebe3a4840b691755E() #56, !noalias !23481
  unreachable

bb.j:                                             ; preds = %.body.i.i.i
  %i.af = extractvalue { ptr, ptr } %i.ad, 0      ; 2 uses
  %i.ag = extractvalue { ptr, ptr } %i.ad, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.af) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ag) ]
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ai = load i64, ptr %i.ah, align 8, !range !70, !noalias !23481, !noundef !24
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !23483
  store i64 %i.ai, ptr %i.aj, align 8, !noalias !23481
  %.sroa.10.8..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.af, ptr %.sroa.10.8..sroa_idx.i.i.i, align 8, !noalias !23481
  %.sroa.10.sroa.4.0..sroa.10.8..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %i.ag, ptr %.sroa.10.sroa.4.0..sroa.10.8..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !23481
  store i32 1, ptr %i.e, align 8, !noalias !23483
  invoke fastcc void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$9set_stage17h87278df8fd4e6094E"(ptr noundef nonnull align 8 %i.m, ptr noalias noundef align 8 captures(address) dereferenceable(168) %i.e)
          to label %.thread.i.i.i unwind label %bb.k, !noalias !23481

bb.k:                                             ; preds = %bb.j
  %i.ak = landingpad { ptr, i32 }
          catch ptr null
  %i.al = extractvalue { ptr, i32 } %i.ak, 0
  %i.am = invoke { ptr, ptr } @_ZN3std9panicking12catch_unwind7cleanup17h90994b58fc656da7E(ptr noundef %i.al)
          to label %bb.m unwind label %bb.l, !noalias !23481 ; 2 uses

bb.l:                                             ; preds = %bb.k
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking19panic_cannot_unwind17hebe3a4840b691755E() #56, !noalias !23481
  unreachable

.thread.i.i.i:                                    ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !23483
  br label %bb.x

bb.m:                                             ; preds = %bb.k
  %i.ao = extractvalue { ptr, ptr } %i.am, 0      ; 4 uses
  %i.ap = extractvalue { ptr, ptr } %i.am, 1      ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i, label %bb.x, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ap) ]
  %i.aq = load ptr, ptr %i.ap, align 8, !invariant.load !24, !noalias !23481 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  invoke void %i.aq(ptr noundef nonnull %i.ao)
          to label %bb.p unwind label %bb.q, !noalias !23481

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !range !30, !invariant.load !24, !noalias !23481 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.au = load i64, ptr %i.at, align 8, !range !70, !invariant.load !24, !noalias !23481 ; 2 uses
  %i.av = icmp ult i64 %i.au, -9223372036854775807
  call void @llvm.assume(i1 %i.av)
  %i.aw = icmp eq i64 %i.as, 0
  br i1 %i.aw, label %bb.x, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i": ; preds = %bb.p
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ao, i64 noundef %i.as, i64 noundef range(i64 1, -9223372036854775807) %i.au) #47, !noalias !23481
  br label %bb.x

bb.q:                                             ; preds = %bb.o
  %i.ax = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !range !30, !invariant.load !24, !noalias !23481 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.bb = load i64, ptr %i.ba, align 8, !range !70, !invariant.load !24, !noalias !23481 ; 2 uses
  %i.bc = icmp ult i64 %i.bb, -9223372036854775807
  call void @llvm.assume(i1 %i.bc)
  %i.bd = icmp eq i64 %i.az, 0
  br i1 %i.bd, label %common.resume.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i": ; preds = %bb.q
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ao, i64 noundef %i.az, i64 noundef range(i64 1, -9223372036854775807) %i.bb) #47, !noalias !23481
  br label %common.resume.i

common.resume.i:                                  ; preds = %bb.ag, %bb.af, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i", %bb.q
  %common.resume.op.i = phi { ptr, i32 } [ %i.bw, %bb.ag ], [ %i.bv, %bb.af ], [ %i.ax, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i" ], [ %i.ax, %bb.q ]
  resume { ptr, i32 } %common.resume.op.i

bb.r:                                             ; preds = %bb.a
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 2, ptr %i.c, align 8
  invoke fastcc void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$9set_stage17h87278df8fd4e6094E"(ptr noundef nonnull align 8 %i.be, ptr noalias noundef align 8 captures(address) dereferenceable(168) %i.c)
          to label %bb.u unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  %i.bh = invoke { ptr, ptr } @_ZN3std9panicking12catch_unwind7cleanup17h90994b58fc656da7E(ptr noundef %i.bg)
          to label %bb.v unwind label %bb.t       ; 2 uses

bb.t:                                             ; preds = %bb.s
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking19panic_cannot_unwind17hebe3a4840b691755E() #56
  unreachable

bb.u:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_ZN5tokio7runtime4task7harness11cancel_task17hfb06e7dcf038ea85E.exit.i.i

bb.v:                                             ; preds = %bb.s
  %i.bj = extractvalue { ptr, ptr } %i.bh, 0
  %i.bk = extractvalue { ptr, ptr } %i.bh, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bk) ]
  br label %_ZN5tokio7runtime4task7harness11cancel_task17hfb06e7dcf038ea85E.exit.i.i

_ZN5tokio7runtime4task7harness11cancel_task17hfb06e7dcf038ea85E.exit.i.i: ; preds = %bb.v, %bb.u
  %.sroa.8.0.i.i.i = phi ptr [ undef, %bb.u ], [ %i.bk, %bb.v ]
  %.sroa.6.0.i.i.i = phi ptr [ null, %bb.u ], [ %i.bj, %bb.v ]
  %.sroa.01.0.in.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.01.0.i.i.i = load i64, ptr %.sroa.01.0.in.i.i.i, align 8, !range !70, !noundef !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %.sroa.01.0.i.i.i, ptr %i.bl, align 8
  %.sroa.53.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %.sroa.6.0.i.i.i, ptr %.sroa.53.0..sroa_idx.i.i.i, align 8
  %.sroa.64.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %.sroa.8.0.i.i.i, ptr %.sroa.64.0..sroa_idx.i.i.i, align 8
  store i32 1, ptr %i.d, align 8
  call fastcc void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$9set_stage17h87278df8fd4e6094E"(ptr noundef nonnull align 8 %i.be, ptr noalias noundef align 8 captures(address) dereferenceable(168) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hc14aec232510fb4eE.exit.thread.i"

bb.w:                                             ; preds = %"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$4poll28_$u7b$$u7b$closure$u7d$$u7d$17h4b7cfcea6aaaff29E.exit.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !23482
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !23480
  %i.bm = call noundef i8 @_ZN5tokio7runtime4task5state5State18transition_to_idle17hd68afb9aac48e2e2E(ptr noundef nonnull align 8 %0)
  switch i8 %i.bm, label %default.unreachable [
    i8 3, label %bb.y
    i8 0, label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hc14aec232510fb4eE.exit.thread12.i"
    i8 1, label %bb.ad
    i8 2, label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hc14aec232510fb4eE.exit.i"
  ]

"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hc14aec232510fb4eE.exit.thread12.i": ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$4poll17he82f2f8438189bb5E.exit"

bb.x:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i", %bb.p, %bb.m, %.thread.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hc14aec232510fb4eE.exit.thread.i"

bb.y:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 2, ptr %i.a, align 8
  invoke fastcc void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$9set_stage17h87278df8fd4e6094E"(ptr noundef nonnull align 8 %i.m, ptr noalias noundef align 8 captures(address) dereferenceable(168) %i.a)
          to label %bb.ab unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bn = landingpad { ptr, i32 }
          catch ptr null
  %i.bo = extractvalue { ptr, i32 } %i.bn, 0
  %i.bp = invoke { ptr, ptr } @_ZN3std9panicking12catch_unwind7cleanup17h90994b58fc656da7E(ptr noundef %i.bo)
          to label %bb.ac unwind label %bb.aa     ; 2 uses

bb.aa:                                            ; preds = %bb.z
  %i.bq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking19panic_cannot_unwind17hebe3a4840b691755E() #56
  unreachable

bb.ab:                                            ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hc14aec232510fb4eE.exit.thread8.i"

bb.ac:                                            ; preds = %bb.z
  %i.br = extractvalue { ptr, ptr } %i.bp, 0
  %i.bs = extractvalue { ptr, ptr } %i.bp, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bs) ]
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hc14aec232510fb4eE.exit.thread8.i"

"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hc14aec232510fb4eE.exit.thread8.i": ; preds = %bb.ac, %bb.ab
  %.sroa.8.0.i1.i.i = phi ptr [ undef, %bb.ab ], [ %i.bs, %bb.ac ]
  %.sroa.6.0.i2.i.i = phi ptr [ null, %bb.ab ], [ %i.br, %bb.ac ]
  %.sroa.01.0.i4.i.i = load i64, ptr %i.q, align 8, !range !70, !noundef !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.bt = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.01.0.i4.i.i, ptr %i.bt, align 8
  %.sroa.53.0..sroa_idx.i5.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %.sroa.6.0.i2.i.i, ptr %.sroa.53.0..sroa_idx.i5.i.i, align 8
  %.sroa.64.0..sroa_idx.i6.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %.sroa.8.0.i1.i.i, ptr %.sroa.64.0..sroa_idx.i6.i.i, align 8
  store i32 1, ptr %i.b, align 8
  call fastcc void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$9set_stage17h87278df8fd4e6094E"(ptr noundef nonnull align 8 %i.m, ptr noalias noundef align 8 captures(address) dereferenceable(168) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hc14aec232510fb4eE.exit.thread.i"

"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hc14aec232510fb4eE.exit.i": ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hc14aec232510fb4eE.exit.thread6.i"

"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hc14aec232510fb4eE.exit.thread.i": ; preds = %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hc14aec232510fb4eE.exit.thread8.i", %bb.x, %_ZN5tokio7runtime4task7harness11cancel_task17hfb06e7dcf038ea85E.exit.i.i
  call fastcc void @"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$8complete17h5236aa898e723a85E"(ptr noundef nonnull %0)
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$4poll17he82f2f8438189bb5E.exit"

bb.ad:                                            ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @"_ZN5tokio7runtime9scheduler14current_thread134_$LT$impl$u20$tokio..runtime..task..Schedule$u20$for$u20$alloc..sync..Arc$LT$tokio..runtime..scheduler..current_thread..Handle$GT$$GT$8schedule17hf8ca7dccab44d288E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.m, ptr noundef nonnull %0)
  %i.bu = call noundef zeroext i1 @_ZN5tokio7runtime4task5state5State7ref_dec17hc7eaf1f0f3b78962E(ptr noundef nonnull align 8 %0)
  br i1 %i.bu, label %bb.ae, label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$4poll17he82f2f8438189bb5E.exit"

bb.ae:                                            ; preds = %bb.ad
  invoke fastcc void @"_ZN4core3ptr261drop_in_place$LT$tokio..runtime..task..core..Cell$LT$xtask..common..assets..download_asset..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$alloc..sync..Arc$LT$tokio..runtime..scheduler..current_thread..Handle$GT$$GT$$GT$17hf1806798e91f7edcE"(ptr noundef nonnull align 128 %0)
          to label %"_ZN4core3ptr286drop_in_place$LT$alloc..boxed..Box$LT$tokio..runtime..task..core..Cell$LT$xtask..common..assets..download_asset..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$alloc..sync..Arc$LT$tokio..runtime..scheduler..current_thread..Handle$GT$$GT$$GT$$GT$17hb38453efef3856aaE.exit.i.i" unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bv = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 384, i64 noundef 128) #47
  br label %common.resume.i

"_ZN4core3ptr286drop_in_place$LT$alloc..boxed..Box$LT$tokio..runtime..task..core..Cell$LT$xtask..common..assets..download_asset..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$alloc..sync..Arc$LT$tokio..runtime..scheduler..current_thread..Handle$GT$$GT$$GT$$GT$17hb38453efef3856aaE.exit.i.i": ; preds = %bb.ae
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 384, i64 noundef 128) #47
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$4poll17he82f2f8438189bb5E.exit"

"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hc14aec232510fb4eE.exit.thread6.i": ; preds = %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hc14aec232510fb4eE.exit.i", %bb.a
  invoke fastcc void @"_ZN4core3ptr261drop_in_place$LT$tokio..runtime..task..core..Cell$LT$xtask..common..assets..download_asset..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$alloc..sync..Arc$LT$tokio..runtime..scheduler..current_thread..Handle$GT$$GT$$GT$17hf1806798e91f7edcE"(ptr noundef nonnull align 128 %0)
          to label %"_ZN4core3ptr286drop_in_place$LT$alloc..boxed..Box$LT$tokio..runtime..task..core..Cell$LT$xtask..common..assets..download_asset..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$alloc..sync..Arc$LT$tokio..runtime..scheduler..current_thread..Handle$GT$$GT$$GT$$GT$17hb38453efef3856aaE.exit.i" unwind label %bb.ag

bb.ag:                                            ; preds = %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hc14aec232510fb4eE.exit.thread6.i"
  %i.bw = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 384, i64 noundef 128) #47
  br label %common.resume.i

"_ZN4core3ptr286drop_in_place$LT$alloc..boxed..Box$LT$tokio..runtime..task..core..Cell$LT$xtask..common..assets..download_asset..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$alloc..sync..Arc$LT$tokio..runtime..scheduler..current_thread..Handle$GT$$GT$$GT$$GT$17hb38453efef3856aaE.exit.i": ; preds = %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hc14aec232510fb4eE.exit.thread6.i"
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 384, i64 noundef 128) #47
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$4poll17he82f2f8438189bb5E.exit"

"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$4poll17he82f2f8438189bb5E.exit": ; preds = %bb.a, %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hc14aec232510fb4eE.exit.thread12.i", %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hc14aec232510fb4eE.exit.thread.i", %bb.ad, %"_ZN4core3ptr286drop_in_place$LT$alloc..boxed..Box$LT$tokio..runtime..task..core..Cell$LT$xtask..common..assets..download_asset..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$alloc..sync..Arc$LT$tokio..runtime..scheduler..current_thread..Handle$GT$$GT$$GT$$GT$17hb38453efef3856aaE.exit.i.i", %"_ZN4core3ptr286drop_in_place$LT$alloc..boxed..Box$LT$tokio..runtime..task..core..Cell$LT$xtask..common..assets..download_asset..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$alloc..sync..Arc$LT$tokio..runtime..scheduler..current_thread..Handle$GT$$GT$$GT$$GT$17hb38453efef3856aaE.exit.i"
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_ZN5tokio7runtime4task3raw4poll17h2e1beaf71de8fae2E(ptr noundef nonnull %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [168 x i8], align 8               ; 4 uses
  %i.b = alloca [168 x i8], align 8               ; 7 uses
  %i.c = alloca [168 x i8], align 8               ; 4 uses
  %i.d = alloca [168 x i8], align 8               ; 7 uses
  %i.e = alloca [168 x i8], align 8               ; 7 uses
  %i.f = alloca [168 x i8], align 8               ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 5 uses
  %i.h = alloca [48 x i8], align 8                ; 7 uses
  %i.i = alloca [32 x i8], align 8                ; 6 uses
  %i.j = alloca [16 x i8], align 8                ; 10 uses
  %i.k = tail call noundef i8 @_ZN5tokio7runtime4task5state5State21transition_to_running17he0b724de1c9eab75E(ptr noundef nonnull align 8 %0)
  switch i8 %i.k, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.r
    i8 2, label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$4poll17h7bbe91b0fdc25ac6E.exit"
    i8 3, label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h25697d372017f584E.exit.thread6.i"
  ]

default.unreachable:                              ; preds = %bb.w, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr @_ZN5tokio7runtime4task5waker12WAKER_VTABLE17h7860ffe65f71f6d1E, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %0, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %.sroa.13.8..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !23498
  store ptr %i.j, ptr %.sroa.13.8..sroa_idx.i.i.i, align 8
  %.sroa.4.8..sroa.13.8..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr null, ptr %.sroa.4.8..sroa.13.8..sroa_idx.i.sroa_idx.i.i, align 8
  store ptr %i.j, ptr %i.i, align 8, !noalias !23499
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.o = load i32, ptr %i.n, align 8, !range !95, !noalias !23500, !noundef !24
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.c, label %bb.d, !prof !29

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !23500
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !range !70, !noalias !23500, !noundef !24
  %i.s = invoke noundef i64 @_ZN5tokio7runtime4task4core11TaskIdGuard5enter17hfddcd1266c1bc7f4E(i64 noundef %i.r)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.g, !noalias !23498

.noexc.i.i.i.i.i.i:                               ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.s, ptr %i.g, align 8, !noalias !23500
  invoke fastcc void @"_ZN5xtask6common6assets14download_asset28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h1c39afd7a4210cfaE"(ptr noundef nonnull align 8 %i.t, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.i)
          to label %"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$4poll28_$u7b$$u7b$closure$u7d$$u7d$17ha543484482c34b82E.exit.i.i.i.i.i.i.i" unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !23500
  store ptr @756, ptr %i.h, align 8, !noalias !23500
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 1, ptr %i.u, align 8, !noalias !23500
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store ptr null, ptr %i.v, align 8, !noalias !23500
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.w, align 8, !noalias !23500
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i64 0, ptr %i.x, align 8, !noalias !23500
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @757) #54
          to label %.noexc1.i.i.i.i.i.i unwind label %bb.g, !noalias !23498

.noexc1.i.i.i.i.i.i:                              ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %.noexc.i.i.i.i.i.i
  %i.y = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke void @"_ZN81_$LT$tokio..runtime..task..core..TaskIdGuard$u20$as$u20$core..ops..drop..Drop$GT$4drop17h81e67524a710ac4fE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %.body.i.i.i.i.i.i unwind label %bb.f, !noalias !23498

bb.f:                                             ; preds = %bb.e
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !23498
  unreachable

"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$4poll28_$u7b$$u7b$closure$u7d$$u7d$17ha543484482c34b82E.exit.i.i.i.i.i.i.i": ; preds = %.noexc.i.i.i.i.i.i
  invoke void @"_ZN81_$LT$tokio..runtime..task..core..TaskIdGuard$u20$as$u20$core..ops..drop..Drop$GT$4drop17h81e67524a710ac4fE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %bb.w unwind label %bb.g, !noalias !23498

bb.g:                                             ; preds = %"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$4poll28_$u7b$$u7b$closure$u7d$$u7d$17ha543484482c34b82E.exit.i.i.i.i.i.i.i", %bb.d, %bb.c
  %i.aa = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %.body.i.i.i.i.i.i

.body.i.i.i.i.i.i:                                ; preds = %bb.g, %bb.e
  %eh.lpad-body.i.i.i.i.i.i = phi { ptr, i32 } [ %i.aa, %bb.g ], [ %i.y, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !23498
  store i32 2, ptr %i.f, align 8, !noalias !23498
  invoke fastcc void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$9set_stage17h9ad110e2ce0cd1d2E"(ptr noundef nonnull align 8 %i.m, ptr noalias noundef align 8 captures(address) dereferenceable(168) %i.f)
          to label %.body.i.i.i unwind label %bb.h, !noalias !23498

bb.h:                                             ; preds = %.body.i.i.i.i.i.i
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !23498
  unreachable

.body.i.i.i:                                      ; preds = %.body.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !23498
  %i.ac = extractvalue { ptr, i32 } %eh.lpad-body.i.i.i.i.i.i, 0
  %i.ad = invoke { ptr, ptr } @_ZN3std9panicking12catch_unwind7cleanup17h90994b58fc656da7E(ptr noundef %i.ac)
          to label %bb.j unwind label %bb.i, !noalias !23499 ; 2 uses

bb.i:                                             ; preds = %.body.i.i.i
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking19panic_cannot_unwind17hebe3a4840b691755E() #56, !noalias !23499
  unreachable

bb.j:                                             ; preds = %.body.i.i.i
  %i.af = extractvalue { ptr, ptr } %i.ad, 0      ; 2 uses
  %i.ag = extractvalue { ptr, ptr } %i.ad, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.af) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ag) ]
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ai = load i64, ptr %i.ah, align 8, !range !70, !noalias !23499, !noundef !24
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !23501
  store i64 %i.ai, ptr %i.aj, align 8, !noalias !23499
  %.sroa.10.8..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.af, ptr %.sroa.10.8..sroa_idx.i.i.i, align 8, !noalias !23499
  %.sroa.10.sroa.4.0..sroa.10.8..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %i.ag, ptr %.sroa.10.sroa.4.0..sroa.10.8..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !23499
  store i32 1, ptr %i.e, align 8, !noalias !23501
  invoke fastcc void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$9set_stage17h9ad110e2ce0cd1d2E"(ptr noundef nonnull align 8 %i.m, ptr noalias noundef align 8 captures(address) dereferenceable(168) %i.e)
          to label %.thread.i.i.i unwind label %bb.k, !noalias !23499

bb.k:                                             ; preds = %bb.j
  %i.ak = landingpad { ptr, i32 }
          catch ptr null
  %i.al = extractvalue { ptr, i32 } %i.ak, 0
  %i.am = invoke { ptr, ptr } @_ZN3std9panicking12catch_unwind7cleanup17h90994b58fc656da7E(ptr noundef %i.al)
          to label %bb.m unwind label %bb.l, !noalias !23499 ; 2 uses

bb.l:                                             ; preds = %bb.k
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking19panic_cannot_unwind17hebe3a4840b691755E() #56, !noalias !23499
  unreachable

.thread.i.i.i:                                    ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !23501
  br label %bb.x

bb.m:                                             ; preds = %bb.k
  %i.ao = extractvalue { ptr, ptr } %i.am, 0      ; 4 uses
  %i.ap = extractvalue { ptr, ptr } %i.am, 1      ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i, label %bb.x, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ap) ]
  %i.aq = load ptr, ptr %i.ap, align 8, !invariant.load !24, !noalias !23499 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  invoke void %i.aq(ptr noundef nonnull %i.ao)
          to label %bb.p unwind label %bb.q, !noalias !23499

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !range !30, !invariant.load !24, !noalias !23499 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.au = load i64, ptr %i.at, align 8, !range !70, !invariant.load !24, !noalias !23499 ; 2 uses
  %i.av = icmp ult i64 %i.au, -9223372036854775807
  call void @llvm.assume(i1 %i.av)
  %i.aw = icmp eq i64 %i.as, 0
  br i1 %i.aw, label %bb.x, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i": ; preds = %bb.p
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ao, i64 noundef %i.as, i64 noundef range(i64 1, -9223372036854775807) %i.au) #47, !noalias !23499
  br label %bb.x

bb.q:                                             ; preds = %bb.o
  %i.ax = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !range !30, !invariant.load !24, !noalias !23499 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.bb = load i64, ptr %i.ba, align 8, !range !70, !invariant.load !24, !noalias !23499 ; 2 uses
  %i.bc = icmp ult i64 %i.bb, -9223372036854775807
  call void @llvm.assume(i1 %i.bc)
  %i.bd = icmp eq i64 %i.az, 0
  br i1 %i.bd, label %common.resume.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i": ; preds = %bb.q
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ao, i64 noundef %i.az, i64 noundef range(i64 1, -9223372036854775807) %i.bb) #47, !noalias !23499
  br label %common.resume.i

common.resume.i:                                  ; preds = %bb.ag, %bb.af, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i", %bb.q
  %common.resume.op.i = phi { ptr, i32 } [ %i.bw, %bb.ag ], [ %i.bv, %bb.af ], [ %i.ax, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i" ], [ %i.ax, %bb.q ]
  resume { ptr, i32 } %common.resume.op.i

bb.r:                                             ; preds = %bb.a
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 2, ptr %i.c, align 8
  invoke fastcc void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$9set_stage17h9ad110e2ce0cd1d2E"(ptr noundef nonnull align 8 %i.be, ptr noalias noundef align 8 captures(address) dereferenceable(168) %i.c)
          to label %bb.u unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  %i.bh = invoke { ptr, ptr } @_ZN3std9panicking12catch_unwind7cleanup17h90994b58fc656da7E(ptr noundef %i.bg)
          to label %bb.v unwind label %bb.t       ; 2 uses

bb.t:                                             ; preds = %bb.s
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking19panic_cannot_unwind17hebe3a4840b691755E() #56
  unreachable

bb.u:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_ZN5tokio7runtime4task7harness11cancel_task17h307708fe2ac6fa54E.exit.i.i

bb.v:                                             ; preds = %bb.s
  %i.bj = extractvalue { ptr, ptr } %i.bh, 0
  %i.bk = extractvalue { ptr, ptr } %i.bh, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bk) ]
  br label %_ZN5tokio7runtime4task7harness11cancel_task17h307708fe2ac6fa54E.exit.i.i

_ZN5tokio7runtime4task7harness11cancel_task17h307708fe2ac6fa54E.exit.i.i: ; preds = %bb.v, %bb.u
  %.sroa.8.0.i.i.i = phi ptr [ undef, %bb.u ], [ %i.bk, %bb.v ]
  %.sroa.6.0.i.i.i = phi ptr [ null, %bb.u ], [ %i.bj, %bb.v ]
  %.sroa.01.0.in.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.01.0.i.i.i = load i64, ptr %.sroa.01.0.in.i.i.i, align 8, !range !70, !noundef !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %.sroa.01.0.i.i.i, ptr %i.bl, align 8
  %.sroa.53.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %.sroa.6.0.i.i.i, ptr %.sroa.53.0..sroa_idx.i.i.i, align 8
  %.sroa.64.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %.sroa.8.0.i.i.i, ptr %.sroa.64.0..sroa_idx.i.i.i, align 8
  store i32 1, ptr %i.d, align 8
  call fastcc void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$9set_stage17h9ad110e2ce0cd1d2E"(ptr noundef nonnull align 8 %i.be, ptr noalias noundef align 8 captures(address) dereferenceable(168) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h25697d372017f584E.exit.thread.i"

bb.w:                                             ; preds = %"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$4poll28_$u7b$$u7b$closure$u7d$$u7d$17ha543484482c34b82E.exit.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !23500
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !23498
  %i.bm = call noundef i8 @_ZN5tokio7runtime4task5state5State18transition_to_idle17hd68afb9aac48e2e2E(ptr noundef nonnull align 8 %0)
  switch i8 %i.bm, label %default.unreachable [
    i8 3, label %bb.y
    i8 0, label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h25697d372017f584E.exit.thread12.i"
    i8 1, label %bb.ad
    i8 2, label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h25697d372017f584E.exit.i"
  ]

"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h25697d372017f584E.exit.thread12.i": ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$4poll17h7bbe91b0fdc25ac6E.exit"

bb.x:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i", %bb.p, %bb.m, %.thread.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h25697d372017f584E.exit.thread.i"

bb.y:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 2, ptr %i.a, align 8
  invoke fastcc void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$9set_stage17h9ad110e2ce0cd1d2E"(ptr noundef nonnull align 8 %i.m, ptr noalias noundef align 8 captures(address) dereferenceable(168) %i.a)
          to label %bb.ab unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bn = landingpad { ptr, i32 }
          catch ptr null
  %i.bo = extractvalue { ptr, i32 } %i.bn, 0
  %i.bp = invoke { ptr, ptr } @_ZN3std9panicking12catch_unwind7cleanup17h90994b58fc656da7E(ptr noundef %i.bo)
          to label %bb.ac unwind label %bb.aa     ; 2 uses

bb.aa:                                            ; preds = %bb.z
  %i.bq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking19panic_cannot_unwind17hebe3a4840b691755E() #56
  unreachable

bb.ab:                                            ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h25697d372017f584E.exit.thread8.i"

bb.ac:                                            ; preds = %bb.z
  %i.br = extractvalue { ptr, ptr } %i.bp, 0
  %i.bs = extractvalue { ptr, ptr } %i.bp, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bs) ]
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h25697d372017f584E.exit.thread8.i"

"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h25697d372017f584E.exit.thread8.i": ; preds = %bb.ac, %bb.ab
  %.sroa.8.0.i1.i.i = phi ptr [ undef, %bb.ab ], [ %i.bs, %bb.ac ]
  %.sroa.6.0.i2.i.i = phi ptr [ null, %bb.ab ], [ %i.br, %bb.ac ]
  %.sroa.01.0.i4.i.i = load i64, ptr %i.q, align 8, !range !70, !noundef !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.bt = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.01.0.i4.i.i, ptr %i.bt, align 8
  %.sroa.53.0..sroa_idx.i5.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %.sroa.6.0.i2.i.i, ptr %.sroa.53.0..sroa_idx.i5.i.i, align 8
  %.sroa.64.0..sroa_idx.i6.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %.sroa.8.0.i1.i.i, ptr %.sroa.64.0..sroa_idx.i6.i.i, align 8
  store i32 1, ptr %i.b, align 8
  call fastcc void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$9set_stage17h9ad110e2ce0cd1d2E"(ptr noundef nonnull align 8 %i.m, ptr noalias noundef align 8 captures(address) dereferenceable(168) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h25697d372017f584E.exit.thread.i"

"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h25697d372017f584E.exit.i": ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h25697d372017f584E.exit.thread6.i"

"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h25697d372017f584E.exit.thread.i": ; preds = %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h25697d372017f584E.exit.thread8.i", %bb.x, %_ZN5tokio7runtime4task7harness11cancel_task17h307708fe2ac6fa54E.exit.i.i
  call fastcc void @"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$8complete17h5e0cce26fad93857E"(ptr noundef nonnull %0)
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$4poll17h7bbe91b0fdc25ac6E.exit"

end_hunk_3
begin_hunk_4_@_ZN5tokio7runtime4task3raw4poll17h3617ab592008be16E:bb.a
"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i": ; preds = %bb.am
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bg, i64 noundef %i.br, i64 noundef range(i64 1, -9223372036854775807) %i.bt) #47
  br label %common.resume.i

common.resume.i:                                  ; preds = %bb.ap, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i", %bb.am
  %common.resume.op.i = phi { ptr, i32 } [ %i.bx, %bb.ap ], [ %i.bp, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i" ], [ %i.bp, %bb.am ]
  resume { ptr, i32 } %common.resume.op.i

bb.an:                                            ; preds = %bb.a
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call fastcc void @_ZN5tokio7runtime4task7harness11cancel_task17h85258653e2f399c1E(ptr noundef nonnull align 8 %i.bw)
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i", %bb.al, %bb.ai, %.thread.i.i.i
  call fastcc void @"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$8complete17h67f37ab4a0559801E"(ptr noundef nonnull %0)
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$4poll17h52b6c568a8b8c881E.exit"

"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h679a2cb2bbfc191cE.exit.i": ; preds = %bb.a
  invoke fastcc void @"_ZN4core3ptr282drop_in_place$LT$tokio..runtime..task..core..Cell$LT$tokio..runtime..blocking..task..BlockingTask$LT$tokio..fs..remove_dir_all..remove_dir_all$LT$$RF$str$GT$..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$tokio..runtime..blocking..schedule..BlockingSchedule$GT$$GT$17h67ac86fec3659696E"(ptr noundef nonnull align 128 %0)
          to label %"_ZN4core3ptr307drop_in_place$LT$alloc..boxed..Box$LT$tokio..runtime..task..core..Cell$LT$tokio..runtime..blocking..task..BlockingTask$LT$tokio..fs..remove_dir_all..remove_dir_all$LT$$RF$str$GT$..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$tokio..runtime..blocking..schedule..BlockingSchedule$GT$$GT$$GT$17hc52b8f9fb6c879e3E.exit.i" unwind label %bb.ap

bb.ap:                                            ; preds = %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h679a2cb2bbfc191cE.exit.i"
  %i.bx = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 256, i64 noundef 128) #47
  br label %common.resume.i

"_ZN4core3ptr307drop_in_place$LT$alloc..boxed..Box$LT$tokio..runtime..task..core..Cell$LT$tokio..runtime..blocking..task..BlockingTask$LT$tokio..fs..remove_dir_all..remove_dir_all$LT$$RF$str$GT$..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$tokio..runtime..blocking..schedule..BlockingSchedule$GT$$GT$$GT$17hc52b8f9fb6c879e3E.exit.i": ; preds = %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h679a2cb2bbfc191cE.exit.i"
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 256, i64 noundef 128) #47
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$4poll17h52b6c568a8b8c881E.exit"

"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$4poll17h52b6c568a8b8c881E.exit": ; preds = %bb.a, %bb.ao, %"_ZN4core3ptr307drop_in_place$LT$alloc..boxed..Box$LT$tokio..runtime..task..core..Cell$LT$tokio..runtime..blocking..task..BlockingTask$LT$tokio..fs..remove_dir_all..remove_dir_all$LT$$RF$str$GT$..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$tokio..runtime..blocking..schedule..BlockingSchedule$GT$$GT$$GT$17hc52b8f9fb6c879e3E.exit.i"
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_ZN5tokio7runtime4task3raw4poll17h48cfa0feeb8887bfE(ptr noundef nonnull %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1008 x i8], align 8              ; 4 uses
  %i.b = alloca [1008 x i8], align 8              ; 7 uses
  %i.c = alloca [1008 x i8], align 8              ; 4 uses
  %i.d = alloca [1008 x i8], align 8              ; 7 uses
  %i.e = alloca [1008 x i8], align 8              ; 7 uses
  %i.f = alloca [1008 x i8], align 8              ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 5 uses
  %i.h = alloca [48 x i8], align 8                ; 7 uses
  %i.i = alloca [1008 x i8], align 8              ; 4 uses
  %i.j = alloca [16 x i8], align 8                ; 7 uses
  %i.k = alloca [32 x i8], align 8                ; 6 uses
  %i.l = alloca [16 x i8], align 8                ; 10 uses
  %i.m = tail call noundef i8 @_ZN5tokio7runtime4task5state5State21transition_to_running17he0b724de1c9eab75E(ptr noundef nonnull align 8 %0)
  switch i8 %i.m, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.x
    i8 2, label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$4poll17ha479721931e380afE.exit"
    i8 3, label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h36012066f0070c96E.exit.thread6.i"
  ]

default.unreachable:                              ; preds = %_ZN5tokio7runtime4task7harness11poll_future17h4b9314d86bd7c167E.exit.i.i, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr @_ZN5tokio7runtime4task5waker12WAKER_VTABLE17h7860ffe65f71f6d1E, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %0, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %.sroa.14.8..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !23545
  store ptr %i.l, ptr %.sroa.14.8..sroa_idx.i.i.i, align 8
  %.sroa.4.8..sroa.14.8..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr null, ptr %.sroa.4.8..sroa.14.8..sroa_idx.i.sroa_idx.i.i, align 8
  store ptr %i.l, ptr %i.k, align 8, !noalias !23546
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !23547
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.q = load i32, ptr %i.p, align 8, !range !95, !noalias !23548, !noundef !24
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.c, label %bb.d, !prof !29

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !23548
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !range !70, !noalias !23548, !noundef !24
  %i.u = invoke noundef i64 @_ZN5tokio7runtime4task4core11TaskIdGuard5enter17hfddcd1266c1bc7f4E(i64 noundef %i.t)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.k, !noalias !23545

.noexc.i.i.i.i.i.i:                               ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.u, ptr %i.g, align 8, !noalias !23548
  invoke fastcc void @"_ZN5xtask5bench8workload11stop_report28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h1a0efc3a73d96329E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.j, ptr noundef nonnull align 8 %i.v, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.k)
          to label %"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$4poll28_$u7b$$u7b$closure$u7d$$u7d$17he22a173fcb149b91E.exit.i.i.i.i.i.i.i" unwind label %bb.e, !noalias !23549

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !23548
  store ptr @756, ptr %i.h, align 8, !noalias !23548
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 1, ptr %i.w, align 8, !noalias !23548
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store ptr null, ptr %i.x, align 8, !noalias !23548
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.y, align 8, !noalias !23548
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i64 0, ptr %i.z, align 8, !noalias !23548
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @757) #54
          to label %.noexc1.i.i.i.i.i.i unwind label %bb.k, !noalias !23545

.noexc1.i.i.i.i.i.i:                              ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %.noexc.i.i.i.i.i.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke void @"_ZN81_$LT$tokio..runtime..task..core..TaskIdGuard$u20$as$u20$core..ops..drop..Drop$GT$4drop17h81e67524a710ac4fE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %.body.i.i.i.i.i.i unwind label %bb.f, !noalias !23550

bb.f:                                             ; preds = %bb.e
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !23550
  unreachable

"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$4poll28_$u7b$$u7b$closure$u7d$$u7d$17he22a173fcb149b91E.exit.i.i.i.i.i.i.i": ; preds = %.noexc.i.i.i.i.i.i
  invoke void @"_ZN81_$LT$tokio..runtime..task..core..TaskIdGuard$u20$as$u20$core..ops..drop..Drop$GT$4drop17h81e67524a710ac4fE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %.noexc2.i.i.i.i.i.i unwind label %bb.k, !noalias !23545

.noexc2.i.i.i.i.i.i:                              ; preds = %"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$4poll28_$u7b$$u7b$closure$u7d$$u7d$17he22a173fcb149b91E.exit.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !23548
  %i.ac = load i32, ptr %i.j, align 8, !range !95, !noalias !23547, !noundef !24
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.ac, 2
  br i1 %.not.i.i.i.i.i.i.i, label %bb.n, label %bb.g

bb.g:                                             ; preds = %.noexc2.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !23547
  store i32 2, ptr %i.i, align 8, !noalias !23547
  invoke fastcc void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$9set_stage17h09ff0ed48637b53eE"(ptr noundef nonnull align 8 %i.o, ptr noalias noundef align 8 captures(address) dereferenceable(1008) %i.i)
          to label %bb.i unwind label %bb.h, !noalias !23549

bb.h:                                             ; preds = %bb.g
  %i.ad = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke fastcc void @"_ZN4core3ptr108drop_in_place$LT$core..task..poll..Poll$LT$core..result..Result$LT$std..fs..File$C$anyhow..Error$GT$$GT$$GT$17he1059590d2aa7ad7E"(ptr noalias noundef align 8 dereferenceable(16) %i.j) #55
          to label %.body.i.i.i.i.i.i unwind label %bb.j, !noalias !23549

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !23547
  br label %bb.n

bb.j:                                             ; preds = %bb.h
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !23549
  unreachable

bb.k:                                             ; preds = %"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$4poll28_$u7b$$u7b$closure$u7d$$u7d$17he22a173fcb149b91E.exit.i.i.i.i.i.i.i", %bb.d, %bb.c
  %i.af = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %.body.i.i.i.i.i.i

.body.i.i.i.i.i.i:                                ; preds = %bb.k, %bb.h, %bb.e
  %eh.lpad-body.i.i.i.i.i.i = phi { ptr, i32 } [ %i.af, %bb.k ], [ %i.aa, %bb.e ], [ %i.ad, %bb.h ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !23545
  store i32 2, ptr %i.f, align 8, !noalias !23545
  invoke fastcc void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$9set_stage17h09ff0ed48637b53eE"(ptr noundef nonnull align 8 %i.o, ptr noalias noundef align 8 captures(address) dereferenceable(1008) %i.f)
          to label %.body.i.i.i unwind label %bb.l, !noalias !23545

bb.l:                                             ; preds = %.body.i.i.i.i.i.i
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !23545
  unreachable

.body.i.i.i:                                      ; preds = %.body.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !23545
  %i.ah = extractvalue { ptr, i32 } %eh.lpad-body.i.i.i.i.i.i, 0
  %i.ai = invoke { ptr, ptr } @_ZN3std9panicking12catch_unwind7cleanup17h90994b58fc656da7E(ptr noundef %i.ah)
          to label %bb.o unwind label %bb.m, !noalias !23546 ; 2 uses

bb.m:                                             ; preds = %.body.i.i.i
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking19panic_cannot_unwind17hebe3a4840b691755E() #56, !noalias !23546
  unreachable

bb.n:                                             ; preds = %bb.i, %.noexc2.i.i.i.i.i.i
  %.sroa.043.0.copyload.i.i.i = load ptr, ptr %i.j, align 8, !noalias !23546 ; 2 uses
  %.sroa.9.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.9.0.copyload.i.i.i = load ptr, ptr %.sroa.9.0..sroa_idx.i.i.i, align 8, !noalias !23546
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !23547
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !23545
  %i.ak = ptrtoint ptr %.sroa.043.0.copyload.i.i.i to i64
  %i.al = and i64 %i.ak, 4294967295
  %i.am = icmp eq i64 %i.al, 2
  br i1 %i.am, label %_ZN5tokio7runtime4task7harness11poll_future17h4b9314d86bd7c167E.exit.i.i, label %bb.p

bb.o:                                             ; preds = %.body.i.i.i
  %i.an = extractvalue { ptr, ptr } %i.ai, 0      ; 2 uses
  %i.ao = extractvalue { ptr, ptr } %i.ai, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.an) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ao) ]
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aq = load i64, ptr %i.ap, align 8, !range !70, !noalias !23546, !noundef !24
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.sroa.043.053.i.i.i = phi ptr [ %i.an, %bb.o ], [ %.sroa.043.0.copyload.i.i.i, %bb.n ]
  %.sroa.9.050.i.i.i = phi ptr [ %i.ao, %bb.o ], [ %.sroa.9.0.copyload.i.i.i, %bb.n ]
  %.sroa.09.0.i.i.i = phi i64 [ %i.aq, %bb.o ], [ 0, %bb.n ]
  %i.ar = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !23551
  store i64 %.sroa.09.0.i.i.i, ptr %i.ar, align 8, !noalias !23546
  %.sroa.10.8..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %.sroa.043.053.i.i.i, ptr %.sroa.10.8..sroa_idx.i.i.i, align 8, !noalias !23546
  %.sroa.11.8..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %.sroa.9.050.i.i.i, ptr %.sroa.11.8..sroa_idx.i.i.i, align 8, !noalias !23546
  store i32 1, ptr %i.e, align 8, !noalias !23551
  invoke fastcc void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$9set_stage17h09ff0ed48637b53eE"(ptr noundef nonnull align 8 %i.o, ptr noalias noundef align 8 captures(address) dereferenceable(1008) %i.e)
          to label %.thread.i.i.i unwind label %bb.q, !noalias !23546

bb.q:                                             ; preds = %bb.p
  %i.as = landingpad { ptr, i32 }
          catch ptr null
  %i.at = extractvalue { ptr, i32 } %i.as, 0
  %i.au = invoke { ptr, ptr } @_ZN3std9panicking12catch_unwind7cleanup17h90994b58fc656da7E(ptr noundef %i.at)
          to label %bb.s unwind label %bb.r, !noalias !23546 ; 2 uses

bb.r:                                             ; preds = %bb.q
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking19panic_cannot_unwind17hebe3a4840b691755E() #56, !noalias !23546
  unreachable

.thread.i.i.i:                                    ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !23551
  br label %bb.ac

bb.s:                                             ; preds = %bb.q
  %i.aw = extractvalue { ptr, ptr } %i.au, 0      ; 4 uses
  %i.ax = extractvalue { ptr, ptr } %i.au, 1      ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i, label %bb.ac, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ax) ]
  %i.ay = load ptr, ptr %i.ax, align 8, !invariant.load !24, !noalias !23546 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  invoke void %i.ay(ptr noundef nonnull %i.aw)
          to label %bb.v unwind label %bb.w, !noalias !23546

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !range !30, !invariant.load !24, !noalias !23546 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.bc = load i64, ptr %i.bb, align 8, !range !70, !invariant.load !24, !noalias !23546 ; 2 uses
  %i.bd = icmp ult i64 %i.bc, -9223372036854775807
  call void @llvm.assume(i1 %i.bd)
  %i.be = icmp eq i64 %i.ba, 0
  br i1 %i.be, label %bb.ac, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i": ; preds = %bb.v
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aw, i64 noundef %i.ba, i64 noundef range(i64 1, -9223372036854775807) %i.bc) #47, !noalias !23546
  br label %bb.ac

bb.w:                                             ; preds = %bb.u
  %i.bf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !range !30, !invariant.load !24, !noalias !23546 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.bj = load i64, ptr %i.bi, align 8, !range !70, !invariant.load !24, !noalias !23546 ; 2 uses
  %i.bk = icmp ult i64 %i.bj, -9223372036854775807
  call void @llvm.assume(i1 %i.bk)
  %i.bl = icmp eq i64 %i.bh, 0
  br i1 %i.bl, label %common.resume.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i": ; preds = %bb.w
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aw, i64 noundef %i.bh, i64 noundef range(i64 1, -9223372036854775807) %i.bj) #47, !noalias !23546
  br label %common.resume.i

common.resume.i:                                  ; preds = %bb.al, %bb.ak, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i", %bb.w
  %common.resume.op.i = phi { ptr, i32 } [ %i.ce, %bb.al ], [ %i.cd, %bb.ak ], [ %i.bf, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i" ], [ %i.bf, %bb.w ]
  resume { ptr, i32 } %common.resume.op.i

bb.x:                                             ; preds = %bb.a
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 2, ptr %i.c, align 8
  invoke fastcc void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$9set_stage17h09ff0ed48637b53eE"(ptr noundef nonnull align 8 %i.bm, ptr noalias noundef align 8 captures(address) dereferenceable(1008) %i.c)
          to label %bb.aa unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bn = landingpad { ptr, i32 }
          catch ptr null
  %i.bo = extractvalue { ptr, i32 } %i.bn, 0
  %i.bp = invoke { ptr, ptr } @_ZN3std9panicking12catch_unwind7cleanup17h90994b58fc656da7E(ptr noundef %i.bo)
          to label %bb.ab unwind label %bb.z      ; 2 uses

bb.z:                                             ; preds = %bb.y
  %i.bq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking19panic_cannot_unwind17hebe3a4840b691755E() #56
  unreachable

bb.aa:                                            ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_ZN5tokio7runtime4task7harness11cancel_task17h7e666f66349d8acbE.exit.i.i

bb.ab:                                            ; preds = %bb.y
  %i.br = extractvalue { ptr, ptr } %i.bp, 0
  %i.bs = extractvalue { ptr, ptr } %i.bp, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bs) ]
  br label %_ZN5tokio7runtime4task7harness11cancel_task17h7e666f66349d8acbE.exit.i.i

_ZN5tokio7runtime4task7harness11cancel_task17h7e666f66349d8acbE.exit.i.i: ; preds = %bb.ab, %bb.aa
  %.sroa.8.0.i.i.i = phi ptr [ undef, %bb.aa ], [ %i.bs, %bb.ab ]
  %.sroa.6.0.i.i.i = phi ptr [ null, %bb.aa ], [ %i.br, %bb.ab ]
  %.sroa.01.0.in.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.01.0.i.i.i = load i64, ptr %.sroa.01.0.in.i.i.i, align 8, !range !70, !noundef !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.bt = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %.sroa.01.0.i.i.i, ptr %i.bt, align 8
  %.sroa.53.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %.sroa.6.0.i.i.i, ptr %.sroa.53.0..sroa_idx.i.i.i, align 8
  %.sroa.64.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %.sroa.8.0.i.i.i, ptr %.sroa.64.0..sroa_idx.i.i.i, align 8
  store i32 1, ptr %i.d, align 8
  call fastcc void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$9set_stage17h09ff0ed48637b53eE"(ptr noundef nonnull align 8 %i.bm, ptr noalias noundef align 8 captures(address) dereferenceable(1008) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h36012066f0070c96E.exit.thread.i"

_ZN5tokio7runtime4task7harness11poll_future17h4b9314d86bd7c167E.exit.i.i: ; preds = %bb.n
  %i.bu = call noundef i8 @_ZN5tokio7runtime4task5state5State18transition_to_idle17hd68afb9aac48e2e2E(ptr noundef nonnull align 8 %0)
  switch i8 %i.bu, label %default.unreachable [
    i8 3, label %bb.ad
    i8 0, label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h36012066f0070c96E.exit.thread12.i"
    i8 1, label %bb.ai
    i8 2, label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h36012066f0070c96E.exit.i"
  ]

"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h36012066f0070c96E.exit.thread12.i": ; preds = %_ZN5tokio7runtime4task7harness11poll_future17h4b9314d86bd7c167E.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$4poll17ha479721931e380afE.exit"

bb.ac:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i", %bb.v, %bb.s, %.thread.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h36012066f0070c96E.exit.thread.i"

bb.ad:                                            ; preds = %_ZN5tokio7runtime4task7harness11poll_future17h4b9314d86bd7c167E.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 2, ptr %i.a, align 8
  invoke fastcc void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$9set_stage17h09ff0ed48637b53eE"(ptr noundef nonnull align 8 %i.o, ptr noalias noundef align 8 captures(address) dereferenceable(1008) %i.a)
          to label %bb.ag unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bv = landingpad { ptr, i32 }
          catch ptr null
  %i.bw = extractvalue { ptr, i32 } %i.bv, 0
  %i.bx = invoke { ptr, ptr } @_ZN3std9panicking12catch_unwind7cleanup17h90994b58fc656da7E(ptr noundef %i.bw)
          to label %bb.ah unwind label %bb.af     ; 2 uses

bb.af:                                            ; preds = %bb.ae
  %i.by = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking19panic_cannot_unwind17hebe3a4840b691755E() #56
  unreachable

bb.ag:                                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h36012066f0070c96E.exit.thread8.i"

bb.ah:                                            ; preds = %bb.ae
  %i.bz = extractvalue { ptr, ptr } %i.bx, 0
  %i.ca = extractvalue { ptr, ptr } %i.bx, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ca) ]
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h36012066f0070c96E.exit.thread8.i"

"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h36012066f0070c96E.exit.thread8.i": ; preds = %bb.ah, %bb.ag
  %.sroa.8.0.i1.i.i = phi ptr [ undef, %bb.ag ], [ %i.ca, %bb.ah ]
  %.sroa.6.0.i2.i.i = phi ptr [ null, %bb.ag ], [ %i.bz, %bb.ah ]
  %.sroa.01.0.i4.i.i = load i64, ptr %i.s, align 8, !range !70, !noundef !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.cb = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.01.0.i4.i.i, ptr %i.cb, align 8
  %.sroa.53.0..sroa_idx.i5.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %.sroa.6.0.i2.i.i, ptr %.sroa.53.0..sroa_idx.i5.i.i, align 8
  %.sroa.64.0..sroa_idx.i6.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %.sroa.8.0.i1.i.i, ptr %.sroa.64.0..sroa_idx.i6.i.i, align 8
  store i32 1, ptr %i.b, align 8
  call fastcc void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$9set_stage17h09ff0ed48637b53eE"(ptr noundef nonnull align 8 %i.o, ptr noalias noundef align 8 captures(address) dereferenceable(1008) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h36012066f0070c96E.exit.thread.i"

"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h36012066f0070c96E.exit.i": ; preds = %_ZN5tokio7runtime4task7harness11poll_future17h4b9314d86bd7c167E.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h36012066f0070c96E.exit.thread6.i"

end_hunk_4
begin_hunk_5_@_ZN5tokio7runtime4task3raw4poll17h48cfa0feeb8887bfE:bb.a
  %i.cc = call noundef zeroext i1 @_ZN5tokio7runtime4task5state5State7ref_dec17hc7eaf1f0f3b78962E(ptr noundef nonnull align 8 %0)
  br i1 %i.cc, label %bb.aj, label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$4poll17ha479721931e380afE.exit"

bb.aj:                                            ; preds = %bb.ai
  invoke fastcc void @"_ZN4core3ptr236drop_in_place$LT$tokio..runtime..task..core..Cell$LT$xtask..bench..workload..stop_report..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$alloc..sync..Arc$LT$tokio..runtime..scheduler..multi_thread..handle..Handle$GT$$GT$$GT$17hb9f0ebc72f32b975E"(ptr noundef nonnull align 128 %0)
          to label %"_ZN4core3ptr261drop_in_place$LT$alloc..boxed..Box$LT$tokio..runtime..task..core..Cell$LT$xtask..bench..workload..stop_report..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$alloc..sync..Arc$LT$tokio..runtime..scheduler..multi_thread..handle..Handle$GT$$GT$$GT$$GT$17h91addc7270b65217E.exit.i.i" unwind label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.cd = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 1152, i64 noundef 128) #47
  br label %common.resume.i

"_ZN4core3ptr261drop_in_place$LT$alloc..boxed..Box$LT$tokio..runtime..task..core..Cell$LT$xtask..bench..workload..stop_report..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$alloc..sync..Arc$LT$tokio..runtime..scheduler..multi_thread..handle..Handle$GT$$GT$$GT$$GT$17h91addc7270b65217E.exit.i.i": ; preds = %bb.aj
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 1152, i64 noundef 128) #47
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$4poll17ha479721931e380afE.exit"

"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h36012066f0070c96E.exit.thread6.i": ; preds = %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h36012066f0070c96E.exit.i", %bb.a
  invoke fastcc void @"_ZN4core3ptr236drop_in_place$LT$tokio..runtime..task..core..Cell$LT$xtask..bench..workload..stop_report..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$alloc..sync..Arc$LT$tokio..runtime..scheduler..multi_thread..handle..Handle$GT$$GT$$GT$17hb9f0ebc72f32b975E"(ptr noundef nonnull align 128 %0)
          to label %"_ZN4core3ptr261drop_in_place$LT$alloc..boxed..Box$LT$tokio..runtime..task..core..Cell$LT$xtask..bench..workload..stop_report..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$alloc..sync..Arc$LT$tokio..runtime..scheduler..multi_thread..handle..Handle$GT$$GT$$GT$$GT$17h91addc7270b65217E.exit.i" unwind label %bb.al

bb.al:                                            ; preds = %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h36012066f0070c96E.exit.thread6.i"
  %i.ce = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 1152, i64 noundef 128) #47
  br label %common.resume.i

"_ZN4core3ptr261drop_in_place$LT$alloc..boxed..Box$LT$tokio..runtime..task..core..Cell$LT$xtask..bench..workload..stop_report..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$alloc..sync..Arc$LT$tokio..runtime..scheduler..multi_thread..handle..Handle$GT$$GT$$GT$$GT$17h91addc7270b65217E.exit.i": ; preds = %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h36012066f0070c96E.exit.thread6.i"
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 1152, i64 noundef 128) #47
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$4poll17ha479721931e380afE.exit"

"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$4poll17ha479721931e380afE.exit": ; preds = %bb.a, %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h36012066f0070c96E.exit.thread12.i", %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h36012066f0070c96E.exit.thread.i", %bb.ai, %"_ZN4core3ptr261drop_in_place$LT$alloc..boxed..Box$LT$tokio..runtime..task..core..Cell$LT$xtask..bench..workload..stop_report..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$alloc..sync..Arc$LT$tokio..runtime..scheduler..multi_thread..handle..Handle$GT$$GT$$GT$$GT$17h91addc7270b65217E.exit.i.i", %"_ZN4core3ptr261drop_in_place$LT$alloc..boxed..Box$LT$tokio..runtime..task..core..Cell$LT$xtask..bench..workload..stop_report..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$alloc..sync..Arc$LT$tokio..runtime..scheduler..multi_thread..handle..Handle$GT$$GT$$GT$$GT$17h91addc7270b65217E.exit.i"
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_ZN5tokio7runtime4task3raw4poll17h4a5ccb7d62b79a91E(ptr noundef nonnull %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [232 x i8], align 8               ; 4 uses
  %i.b = alloca [232 x i8], align 8               ; 7 uses
  %i.c = alloca [232 x i8], align 8               ; 4 uses
  %i.d = alloca [232 x i8], align 8               ; 7 uses
  %i.e = alloca [232 x i8], align 8               ; 7 uses
  %i.f = alloca [232 x i8], align 8               ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 5 uses
  %i.h = alloca [48 x i8], align 8                ; 7 uses
  %i.i = alloca [232 x i8], align 8               ; 4 uses
  %i.j = alloca [16 x i8], align 8                ; 7 uses
  %i.k = alloca [32 x i8], align 8                ; 6 uses
  %i.l = alloca [16 x i8], align 8                ; 10 uses
  %i.m = tail call noundef i8 @_ZN5tokio7runtime4task5state5State21transition_to_running17he0b724de1c9eab75E(ptr noundef nonnull align 8 %0)
  switch i8 %i.m, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.x
    i8 2, label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$4poll17hcc9db7001ca25bb5E.exit"
    i8 3, label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h99e7e9cd5ae2b146E.exit.thread6.i"
  ]

default.unreachable:                              ; preds = %_ZN5tokio7runtime4task7harness11poll_future17h93ef5b44d9f1963dE.exit.i.i, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr @_ZN5tokio7runtime4task5waker12WAKER_VTABLE17h7860ffe65f71f6d1E, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %0, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %.sroa.14.8..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !23570
  store ptr %i.l, ptr %.sroa.14.8..sroa_idx.i.i.i, align 8
  %.sroa.4.8..sroa.14.8..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr null, ptr %.sroa.4.8..sroa.14.8..sroa_idx.i.sroa_idx.i.i, align 8
  store ptr %i.l, ptr %i.k, align 8, !noalias !23571
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !23572
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.q = load i32, ptr %i.p, align 8, !range !95, !noalias !23573, !noundef !24
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.c, label %bb.d, !prof !29

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !23573
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !range !70, !noalias !23573, !noundef !24
  %i.u = invoke noundef i64 @_ZN5tokio7runtime4task4core11TaskIdGuard5enter17hfddcd1266c1bc7f4E(i64 noundef %i.t)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.k, !noalias !23570

.noexc.i.i.i.i.i.i:                               ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.u, ptr %i.g, align 8, !noalias !23573
  invoke fastcc void @"_ZN5xtask5bench8workload12start_report28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h670ef75aeb222c65E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.j, ptr noundef nonnull align 8 %i.v, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.k)
          to label %"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$4poll28_$u7b$$u7b$closure$u7d$$u7d$17hf3b84107ecb90247E.exit.i.i.i.i.i.i.i" unwind label %bb.e, !noalias !23574

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !23573
  store ptr @756, ptr %i.h, align 8, !noalias !23573
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 1, ptr %i.w, align 8, !noalias !23573
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store ptr null, ptr %i.x, align 8, !noalias !23573
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.y, align 8, !noalias !23573
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i64 0, ptr %i.z, align 8, !noalias !23573
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @757) #54
          to label %.noexc1.i.i.i.i.i.i unwind label %bb.k, !noalias !23570

.noexc1.i.i.i.i.i.i:                              ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %.noexc.i.i.i.i.i.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke void @"_ZN81_$LT$tokio..runtime..task..core..TaskIdGuard$u20$as$u20$core..ops..drop..Drop$GT$4drop17h81e67524a710ac4fE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %.body.i.i.i.i.i.i unwind label %bb.f, !noalias !23575

bb.f:                                             ; preds = %bb.e
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !23575
  unreachable

"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$4poll28_$u7b$$u7b$closure$u7d$$u7d$17hf3b84107ecb90247E.exit.i.i.i.i.i.i.i": ; preds = %.noexc.i.i.i.i.i.i
  invoke void @"_ZN81_$LT$tokio..runtime..task..core..TaskIdGuard$u20$as$u20$core..ops..drop..Drop$GT$4drop17h81e67524a710ac4fE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %.noexc2.i.i.i.i.i.i unwind label %bb.k, !noalias !23570

.noexc2.i.i.i.i.i.i:                              ; preds = %"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$4poll28_$u7b$$u7b$closure$u7d$$u7d$17hf3b84107ecb90247E.exit.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !23573
  %i.ac = load i32, ptr %i.j, align 8, !range !95, !noalias !23572, !noundef !24
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.ac, 2
  br i1 %.not.i.i.i.i.i.i.i, label %bb.n, label %bb.g

bb.g:                                             ; preds = %.noexc2.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !23572
  store i32 2, ptr %i.i, align 8, !noalias !23572
  invoke fastcc void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$9set_stage17hff711bcfa077dd7aE"(ptr noundef nonnull align 8 %i.o, ptr noalias noundef align 8 captures(address) dereferenceable(232) %i.i)
          to label %bb.i unwind label %bb.h, !noalias !23574

bb.h:                                             ; preds = %bb.g
  %i.ad = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke fastcc void @"_ZN4core3ptr108drop_in_place$LT$core..task..poll..Poll$LT$core..result..Result$LT$std..fs..File$C$anyhow..Error$GT$$GT$$GT$17he1059590d2aa7ad7E"(ptr noalias noundef align 8 dereferenceable(16) %i.j) #55
          to label %.body.i.i.i.i.i.i unwind label %bb.j, !noalias !23574

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !23572
  br label %bb.n

bb.j:                                             ; preds = %bb.h
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !23574
  unreachable

bb.k:                                             ; preds = %"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$4poll28_$u7b$$u7b$closure$u7d$$u7d$17hf3b84107ecb90247E.exit.i.i.i.i.i.i.i", %bb.d, %bb.c
  %i.af = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %.body.i.i.i.i.i.i

.body.i.i.i.i.i.i:                                ; preds = %bb.k, %bb.h, %bb.e
  %eh.lpad-body.i.i.i.i.i.i = phi { ptr, i32 } [ %i.af, %bb.k ], [ %i.aa, %bb.e ], [ %i.ad, %bb.h ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !23570
  store i32 2, ptr %i.f, align 8, !noalias !23570
  invoke fastcc void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$9set_stage17hff711bcfa077dd7aE"(ptr noundef nonnull align 8 %i.o, ptr noalias noundef align 8 captures(address) dereferenceable(232) %i.f)
          to label %.body.i.i.i unwind label %bb.l, !noalias !23570

bb.l:                                             ; preds = %.body.i.i.i.i.i.i
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !23570
  unreachable

.body.i.i.i:                                      ; preds = %.body.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !23570
  %i.ah = extractvalue { ptr, i32 } %eh.lpad-body.i.i.i.i.i.i, 0
  %i.ai = invoke { ptr, ptr } @_ZN3std9panicking12catch_unwind7cleanup17h90994b58fc656da7E(ptr noundef %i.ah)
          to label %bb.o unwind label %bb.m, !noalias !23571 ; 2 uses

bb.m:                                             ; preds = %.body.i.i.i
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking19panic_cannot_unwind17hebe3a4840b691755E() #56, !noalias !23571
  unreachable

bb.n:                                             ; preds = %bb.i, %.noexc2.i.i.i.i.i.i
  %.sroa.043.0.copyload.i.i.i = load ptr, ptr %i.j, align 8, !noalias !23571 ; 2 uses
  %.sroa.9.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.9.0.copyload.i.i.i = load ptr, ptr %.sroa.9.0..sroa_idx.i.i.i, align 8, !noalias !23571
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !23572
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !23570
  %i.ak = ptrtoint ptr %.sroa.043.0.copyload.i.i.i to i64
  %i.al = and i64 %i.ak, 4294967295
  %i.am = icmp eq i64 %i.al, 2
  br i1 %i.am, label %_ZN5tokio7runtime4task7harness11poll_future17h93ef5b44d9f1963dE.exit.i.i, label %bb.p

bb.o:                                             ; preds = %.body.i.i.i
  %i.an = extractvalue { ptr, ptr } %i.ai, 0      ; 2 uses
  %i.ao = extractvalue { ptr, ptr } %i.ai, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.an) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ao) ]
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aq = load i64, ptr %i.ap, align 8, !range !70, !noalias !23571, !noundef !24
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.sroa.043.053.i.i.i = phi ptr [ %i.an, %bb.o ], [ %.sroa.043.0.copyload.i.i.i, %bb.n ]
  %.sroa.9.050.i.i.i = phi ptr [ %i.ao, %bb.o ], [ %.sroa.9.0.copyload.i.i.i, %bb.n ]
  %.sroa.09.0.i.i.i = phi i64 [ %i.aq, %bb.o ], [ 0, %bb.n ]
  %i.ar = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !23576
  store i64 %.sroa.09.0.i.i.i, ptr %i.ar, align 8, !noalias !23571
  %.sroa.10.8..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %.sroa.043.053.i.i.i, ptr %.sroa.10.8..sroa_idx.i.i.i, align 8, !noalias !23571
  %.sroa.11.8..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %.sroa.9.050.i.i.i, ptr %.sroa.11.8..sroa_idx.i.i.i, align 8, !noalias !23571
  store i32 1, ptr %i.e, align 8, !noalias !23576
  invoke fastcc void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$9set_stage17hff711bcfa077dd7aE"(ptr noundef nonnull align 8 %i.o, ptr noalias noundef align 8 captures(address) dereferenceable(232) %i.e)
          to label %.thread.i.i.i unwind label %bb.q, !noalias !23571

bb.q:                                             ; preds = %bb.p
  %i.as = landingpad { ptr, i32 }
          catch ptr null
  %i.at = extractvalue { ptr, i32 } %i.as, 0
  %i.au = invoke { ptr, ptr } @_ZN3std9panicking12catch_unwind7cleanup17h90994b58fc656da7E(ptr noundef %i.at)
          to label %bb.s unwind label %bb.r, !noalias !23571 ; 2 uses

bb.r:                                             ; preds = %bb.q
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking19panic_cannot_unwind17hebe3a4840b691755E() #56, !noalias !23571
  unreachable

.thread.i.i.i:                                    ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !23576
  br label %bb.ac

bb.s:                                             ; preds = %bb.q
  %i.aw = extractvalue { ptr, ptr } %i.au, 0      ; 4 uses
  %i.ax = extractvalue { ptr, ptr } %i.au, 1      ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i, label %bb.ac, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ax) ]
  %i.ay = load ptr, ptr %i.ax, align 8, !invariant.load !24, !noalias !23571 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  invoke void %i.ay(ptr noundef nonnull %i.aw)
          to label %bb.v unwind label %bb.w, !noalias !23571

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !range !30, !invariant.load !24, !noalias !23571 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.bc = load i64, ptr %i.bb, align 8, !range !70, !invariant.load !24, !noalias !23571 ; 2 uses
  %i.bd = icmp ult i64 %i.bc, -9223372036854775807
  call void @llvm.assume(i1 %i.bd)
  %i.be = icmp eq i64 %i.ba, 0
  br i1 %i.be, label %bb.ac, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i": ; preds = %bb.v
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aw, i64 noundef %i.ba, i64 noundef range(i64 1, -9223372036854775807) %i.bc) #47, !noalias !23571
  br label %bb.ac

bb.w:                                             ; preds = %bb.u
  %i.bf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !range !30, !invariant.load !24, !noalias !23571 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.bj = load i64, ptr %i.bi, align 8, !range !70, !invariant.load !24, !noalias !23571 ; 2 uses
  %i.bk = icmp ult i64 %i.bj, -9223372036854775807
  call void @llvm.assume(i1 %i.bk)
  %i.bl = icmp eq i64 %i.bh, 0
  br i1 %i.bl, label %common.resume.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i": ; preds = %bb.w
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aw, i64 noundef %i.bh, i64 noundef range(i64 1, -9223372036854775807) %i.bj) #47, !noalias !23571
  br label %common.resume.i

common.resume.i:                                  ; preds = %bb.al, %bb.ak, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i", %bb.w
  %common.resume.op.i = phi { ptr, i32 } [ %i.ce, %bb.al ], [ %i.cd, %bb.ak ], [ %i.bf, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i" ], [ %i.bf, %bb.w ]
  resume { ptr, i32 } %common.resume.op.i

bb.x:                                             ; preds = %bb.a
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 2, ptr %i.c, align 8
  invoke fastcc void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$9set_stage17hff711bcfa077dd7aE"(ptr noundef nonnull align 8 %i.bm, ptr noalias noundef align 8 captures(address) dereferenceable(232) %i.c)
          to label %bb.aa unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bn = landingpad { ptr, i32 }
          catch ptr null
  %i.bo = extractvalue { ptr, i32 } %i.bn, 0
  %i.bp = invoke { ptr, ptr } @_ZN3std9panicking12catch_unwind7cleanup17h90994b58fc656da7E(ptr noundef %i.bo)
          to label %bb.ab unwind label %bb.z      ; 2 uses

bb.z:                                             ; preds = %bb.y
  %i.bq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking19panic_cannot_unwind17hebe3a4840b691755E() #56
  unreachable

bb.aa:                                            ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_ZN5tokio7runtime4task7harness11cancel_task17h0100a8cfb6e55100E.exit.i.i

bb.ab:                                            ; preds = %bb.y
  %i.br = extractvalue { ptr, ptr } %i.bp, 0
  %i.bs = extractvalue { ptr, ptr } %i.bp, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bs) ]
  br label %_ZN5tokio7runtime4task7harness11cancel_task17h0100a8cfb6e55100E.exit.i.i

_ZN5tokio7runtime4task7harness11cancel_task17h0100a8cfb6e55100E.exit.i.i: ; preds = %bb.ab, %bb.aa
  %.sroa.8.0.i.i.i = phi ptr [ undef, %bb.aa ], [ %i.bs, %bb.ab ]
  %.sroa.6.0.i.i.i = phi ptr [ null, %bb.aa ], [ %i.br, %bb.ab ]
  %.sroa.01.0.in.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.01.0.i.i.i = load i64, ptr %.sroa.01.0.in.i.i.i, align 8, !range !70, !noundef !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.bt = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %.sroa.01.0.i.i.i, ptr %i.bt, align 8
  %.sroa.53.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %.sroa.6.0.i.i.i, ptr %.sroa.53.0..sroa_idx.i.i.i, align 8
  %.sroa.64.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %.sroa.8.0.i.i.i, ptr %.sroa.64.0..sroa_idx.i.i.i, align 8
  store i32 1, ptr %i.d, align 8
  call fastcc void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$9set_stage17hff711bcfa077dd7aE"(ptr noundef nonnull align 8 %i.bm, ptr noalias noundef align 8 captures(address) dereferenceable(232) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h99e7e9cd5ae2b146E.exit.thread.i"

_ZN5tokio7runtime4task7harness11poll_future17h93ef5b44d9f1963dE.exit.i.i: ; preds = %bb.n
  %i.bu = call noundef i8 @_ZN5tokio7runtime4task5state5State18transition_to_idle17hd68afb9aac48e2e2E(ptr noundef nonnull align 8 %0)
  switch i8 %i.bu, label %default.unreachable [
    i8 3, label %bb.ad
    i8 0, label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h99e7e9cd5ae2b146E.exit.thread12.i"
    i8 1, label %bb.ai
    i8 2, label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h99e7e9cd5ae2b146E.exit.i"
  ]

"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h99e7e9cd5ae2b146E.exit.thread12.i": ; preds = %_ZN5tokio7runtime4task7harness11poll_future17h93ef5b44d9f1963dE.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$4poll17hcc9db7001ca25bb5E.exit"

bb.ac:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i", %bb.v, %bb.s, %.thread.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h99e7e9cd5ae2b146E.exit.thread.i"

bb.ad:                                            ; preds = %_ZN5tokio7runtime4task7harness11poll_future17h93ef5b44d9f1963dE.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 2, ptr %i.a, align 8
  invoke fastcc void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$9set_stage17hff711bcfa077dd7aE"(ptr noundef nonnull align 8 %i.o, ptr noalias noundef align 8 captures(address) dereferenceable(232) %i.a)
          to label %bb.ag unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bv = landingpad { ptr, i32 }
          catch ptr null
  %i.bw = extractvalue { ptr, i32 } %i.bv, 0
  %i.bx = invoke { ptr, ptr } @_ZN3std9panicking12catch_unwind7cleanup17h90994b58fc656da7E(ptr noundef %i.bw)
          to label %bb.ah unwind label %bb.af     ; 2 uses

bb.af:                                            ; preds = %bb.ae
  %i.by = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking19panic_cannot_unwind17hebe3a4840b691755E() #56
  unreachable

bb.ag:                                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h99e7e9cd5ae2b146E.exit.thread8.i"

bb.ah:                                            ; preds = %bb.ae
  %i.bz = extractvalue { ptr, ptr } %i.bx, 0
  %i.ca = extractvalue { ptr, ptr } %i.bx, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ca) ]
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h99e7e9cd5ae2b146E.exit.thread8.i"

"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h99e7e9cd5ae2b146E.exit.thread8.i": ; preds = %bb.ah, %bb.ag
  %.sroa.8.0.i1.i.i = phi ptr [ undef, %bb.ag ], [ %i.ca, %bb.ah ]
  %.sroa.6.0.i2.i.i = phi ptr [ null, %bb.ag ], [ %i.bz, %bb.ah ]
  %.sroa.01.0.i4.i.i = load i64, ptr %i.s, align 8, !range !70, !noundef !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.cb = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.01.0.i4.i.i, ptr %i.cb, align 8
  %.sroa.53.0..sroa_idx.i5.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %.sroa.6.0.i2.i.i, ptr %.sroa.53.0..sroa_idx.i5.i.i, align 8
  %.sroa.64.0..sroa_idx.i6.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %.sroa.8.0.i1.i.i, ptr %.sroa.64.0..sroa_idx.i6.i.i, align 8
  store i32 1, ptr %i.b, align 8
  call fastcc void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$9set_stage17hff711bcfa077dd7aE"(ptr noundef nonnull align 8 %i.o, ptr noalias noundef align 8 captures(address) dereferenceable(232) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h99e7e9cd5ae2b146E.exit.thread.i"

"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h99e7e9cd5ae2b146E.exit.i": ; preds = %_ZN5tokio7runtime4task7harness11poll_future17h93ef5b44d9f1963dE.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h99e7e9cd5ae2b146E.exit.thread6.i"

end_hunk_5
begin_hunk_6_@_ZN5tokio7runtime4task3raw4poll17h50a36094f7e893f1E:bb.a
  %.sroa.03.0.i4.i.i = load i64, ptr %i.s, align 8, !range !70, !noundef !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ch = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 -9223372036854775801, ptr %i.ch, align 8
  %.sroa.52.0..sroa_idx.i5.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %.sroa.03.0.i4.i.i, ptr %.sroa.52.0..sroa_idx.i5.i.i, align 8
  %.sroa.52.sroa.5.0..sroa.52.0..sroa_idx.sroa_idx.i6.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %.sroa.64.0.i2.i.i, ptr %.sroa.52.sroa.5.0..sroa.52.0..sroa_idx.sroa_idx.i6.i.i, align 8
  %.sroa.52.sroa.6.0..sroa.52.0..sroa_idx.sroa_idx.i7.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %.sroa.8.0.i1.i.i, ptr %.sroa.52.sroa.6.0..sroa.52.0..sroa_idx.sroa_idx.i7.i.i, align 8
  store i32 1, ptr %i.b, align 8
  call fastcc void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$9set_stage17h5842c75b52a5fec6E"(ptr noundef nonnull align 8 %i.o, ptr noalias noundef align 8 captures(address) dereferenceable(1544) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h89681da589aa48f0E.exit.thread.i"

"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h89681da589aa48f0E.exit.i": ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h89681da589aa48f0E.exit.thread6.i"

"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h89681da589aa48f0E.exit.thread.i": ; preds = %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h89681da589aa48f0E.exit.thread8.i", %bb.ac, %_ZN5tokio7runtime4task7harness11cancel_task17h435f8223eff45e06E.exit.i.i
  call fastcc void @"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$8complete17hbfcbfdf6eb55e27bE"(ptr noundef nonnull %0)
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$4poll17h8be72190eda13419E.exit"

bb.ai:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @"_ZN5tokio7runtime9scheduler12multi_thread6handle140_$LT$impl$u20$tokio..runtime..task..Schedule$u20$for$u20$alloc..sync..Arc$LT$tokio..runtime..scheduler..multi_thread..handle..Handle$GT$$GT$9yield_now17h6eed5f85c01f61bdE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.o, ptr noundef nonnull %0)
  %i.ci = call noundef zeroext i1 @_ZN5tokio7runtime4task5state5State7ref_dec17hc7eaf1f0f3b78962E(ptr noundef nonnull align 8 %0)
  br i1 %i.ci, label %bb.aj, label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$4poll17h8be72190eda13419E.exit"

bb.aj:                                            ; preds = %bb.ai
  invoke fastcc void @"_ZN4core3ptr234drop_in_place$LT$tokio..runtime..task..core..Cell$LT$xtask..common..command..run_batch..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$alloc..sync..Arc$LT$tokio..runtime..scheduler..multi_thread..handle..Handle$GT$$GT$$GT$17hb9beb8f5896c8a37E"(ptr noundef nonnull align 128 %0)
          to label %"_ZN4core3ptr259drop_in_place$LT$alloc..boxed..Box$LT$tokio..runtime..task..core..Cell$LT$xtask..common..command..run_batch..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$alloc..sync..Arc$LT$tokio..runtime..scheduler..multi_thread..handle..Handle$GT$$GT$$GT$$GT$17hc8d695bd4e985e35E.exit.i.i" unwind label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.cj = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 1664, i64 noundef 128) #47
  br label %common.resume.i

"_ZN4core3ptr259drop_in_place$LT$alloc..boxed..Box$LT$tokio..runtime..task..core..Cell$LT$xtask..common..command..run_batch..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$alloc..sync..Arc$LT$tokio..runtime..scheduler..multi_thread..handle..Handle$GT$$GT$$GT$$GT$17hc8d695bd4e985e35E.exit.i.i": ; preds = %bb.aj
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 1664, i64 noundef 128) #47
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$4poll17h8be72190eda13419E.exit"

"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h89681da589aa48f0E.exit.thread6.i": ; preds = %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h89681da589aa48f0E.exit.i", %bb.a
  invoke fastcc void @"_ZN4core3ptr234drop_in_place$LT$tokio..runtime..task..core..Cell$LT$xtask..common..command..run_batch..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$alloc..sync..Arc$LT$tokio..runtime..scheduler..multi_thread..handle..Handle$GT$$GT$$GT$17hb9beb8f5896c8a37E"(ptr noundef nonnull align 128 %0)
          to label %"_ZN4core3ptr259drop_in_place$LT$alloc..boxed..Box$LT$tokio..runtime..task..core..Cell$LT$xtask..common..command..run_batch..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$alloc..sync..Arc$LT$tokio..runtime..scheduler..multi_thread..handle..Handle$GT$$GT$$GT$$GT$17hc8d695bd4e985e35E.exit.i" unwind label %bb.al

bb.al:                                            ; preds = %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h89681da589aa48f0E.exit.thread6.i"
  %i.ck = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 1664, i64 noundef 128) #47
  br label %common.resume.i

"_ZN4core3ptr259drop_in_place$LT$alloc..boxed..Box$LT$tokio..runtime..task..core..Cell$LT$xtask..common..command..run_batch..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$alloc..sync..Arc$LT$tokio..runtime..scheduler..multi_thread..handle..Handle$GT$$GT$$GT$$GT$17hc8d695bd4e985e35E.exit.i": ; preds = %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h89681da589aa48f0E.exit.thread6.i"
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 1664, i64 noundef 128) #47
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$4poll17h8be72190eda13419E.exit"

"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$4poll17h8be72190eda13419E.exit": ; preds = %bb.a, %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h89681da589aa48f0E.exit.thread12.i", %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h89681da589aa48f0E.exit.thread.i", %bb.ai, %"_ZN4core3ptr259drop_in_place$LT$alloc..boxed..Box$LT$tokio..runtime..task..core..Cell$LT$xtask..common..command..run_batch..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$alloc..sync..Arc$LT$tokio..runtime..scheduler..multi_thread..handle..Handle$GT$$GT$$GT$$GT$17hc8d695bd4e985e35E.exit.i.i", %"_ZN4core3ptr259drop_in_place$LT$alloc..boxed..Box$LT$tokio..runtime..task..core..Cell$LT$xtask..common..command..run_batch..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$alloc..sync..Arc$LT$tokio..runtime..scheduler..multi_thread..handle..Handle$GT$$GT$$GT$$GT$17hc8d695bd4e985e35E.exit.i"
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_ZN5tokio7runtime4task3raw4poll17h67e521e2c8ae73a6E(ptr noundef nonnull %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1160 x i8], align 8              ; 4 uses
  %i.b = alloca [1160 x i8], align 8              ; 7 uses
  %i.c = alloca [1160 x i8], align 8              ; 4 uses
  %i.d = alloca [1160 x i8], align 8              ; 7 uses
  %i.e = alloca [1160 x i8], align 8              ; 7 uses
  %i.f = alloca [1160 x i8], align 8              ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 5 uses
  %i.h = alloca [48 x i8], align 8                ; 7 uses
  %i.i = alloca [1160 x i8], align 8              ; 4 uses
  %i.j = alloca [32 x i8], align 8                ; 7 uses
  %i.k = alloca [16 x i8], align 8                ; 10 uses
  %i.l = tail call noundef i8 @_ZN5tokio7runtime4task5state5State21transition_to_running17he0b724de1c9eab75E(ptr noundef nonnull align 8 %0)
  switch i8 %i.l, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.t
    i8 2, label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$4poll17h5c375d874c5287c7E.exit"
    i8 3, label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h2bc13ad10431f31fE.exit.thread6.i"
  ]

default.unreachable:                              ; preds = %bb.y, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr @_ZN5tokio7runtime4task5waker12WAKER_VTABLE17h7860ffe65f71f6d1E, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %0, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %.sroa.13.8..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !23616
  store ptr %i.k, ptr %.sroa.13.8..sroa_idx.i.i.i, align 8
  %.sroa.4.8..sroa.13.8..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr null, ptr %.sroa.4.8..sroa.13.8..sroa_idx.i.sroa_idx.i.i, align 8
  store ptr %i.k, ptr %i.j, align 8, !noalias !23617
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = load i32, ptr %i.o, align 8, !range !95, !noalias !23618, !noundef !24
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.c, label %bb.d, !prof !29

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !23618
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !range !70, !noalias !23618, !noundef !24
  %i.t = invoke noundef i64 @_ZN5tokio7runtime4task4core11TaskIdGuard5enter17hfddcd1266c1bc7f4E(i64 noundef %i.s)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.h, !noalias !23616

.noexc.i.i.i.i.i.i:                               ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.t, ptr %i.g, align 8, !noalias !23618
  %i.v = invoke fastcc noundef zeroext i1 @"_ZN5xtask5bench9dashboard15DashboardClient16cancel_on_ctrl_c28_$u7b$$u7b$closure$u7d$$u7d$17h3949854638b8d407E"(ptr noundef nonnull align 8 %i.u, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.j)
          to label %"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$4poll28_$u7b$$u7b$closure$u7d$$u7d$17hfb05275560d3f9e7E.exit.i.i.i.i.i.i.i" unwind label %bb.e, !noalias !23616

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !23618
  store ptr @756, ptr %i.h, align 8, !noalias !23618
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 1, ptr %i.w, align 8, !noalias !23618
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store ptr null, ptr %i.x, align 8, !noalias !23618
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.y, align 8, !noalias !23618
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i64 0, ptr %i.z, align 8, !noalias !23618
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @757) #54
          to label %.noexc1.i.i.i.i.i.i unwind label %bb.h, !noalias !23616

.noexc1.i.i.i.i.i.i:                              ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %.noexc.i.i.i.i.i.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke void @"_ZN81_$LT$tokio..runtime..task..core..TaskIdGuard$u20$as$u20$core..ops..drop..Drop$GT$4drop17h81e67524a710ac4fE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %.body.i.i.i.i.i.i unwind label %bb.f, !noalias !23616

bb.f:                                             ; preds = %bb.e
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !23616
  unreachable

"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$4poll28_$u7b$$u7b$closure$u7d$$u7d$17hfb05275560d3f9e7E.exit.i.i.i.i.i.i.i": ; preds = %.noexc.i.i.i.i.i.i
  invoke void @"_ZN81_$LT$tokio..runtime..task..core..TaskIdGuard$u20$as$u20$core..ops..drop..Drop$GT$4drop17h81e67524a710ac4fE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %.noexc2.i.i.i.i.i.i unwind label %bb.h, !noalias !23616

.noexc2.i.i.i.i.i.i:                              ; preds = %"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$4poll28_$u7b$$u7b$closure$u7d$$u7d$17hfb05275560d3f9e7E.exit.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !23618
  br i1 %i.v, label %bb.y, label %bb.g

bb.g:                                             ; preds = %.noexc2.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !23619
  store i32 2, ptr %i.i, align 8, !noalias !23619
  invoke fastcc void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$9set_stage17h88df15f389dde2b6E"(ptr noundef nonnull align 8 %i.n, ptr noalias noundef align 8 captures(address) dereferenceable(1160) %i.i)
          to label %.noexc3.i.i.i.i.i.i unwind label %bb.h, !noalias !23616

.noexc3.i.i.i.i.i.i:                              ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !23619
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !23616
  br label %bb.l

bb.h:                                             ; preds = %bb.g, %"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$4poll28_$u7b$$u7b$closure$u7d$$u7d$17hfb05275560d3f9e7E.exit.i.i.i.i.i.i.i", %bb.d, %bb.c
  %i.ac = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %.body.i.i.i.i.i.i

.body.i.i.i.i.i.i:                                ; preds = %bb.h, %bb.e
  %eh.lpad-body.i.i.i.i.i.i = phi { ptr, i32 } [ %i.ac, %bb.h ], [ %i.aa, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !23616
  store i32 2, ptr %i.f, align 8, !noalias !23616
  invoke fastcc void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$9set_stage17h88df15f389dde2b6E"(ptr noundef nonnull align 8 %i.n, ptr noalias noundef align 8 captures(address) dereferenceable(1160) %i.f)
          to label %.body.i.i.i unwind label %bb.i, !noalias !23616

bb.i:                                             ; preds = %.body.i.i.i.i.i.i
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !23616
  unreachable

.body.i.i.i:                                      ; preds = %.body.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !23616
  %i.ae = extractvalue { ptr, i32 } %eh.lpad-body.i.i.i.i.i.i, 0
  %i.af = invoke { ptr, ptr } @_ZN3std9panicking12catch_unwind7cleanup17h90994b58fc656da7E(ptr noundef %i.ae)
          to label %bb.k unwind label %bb.j, !noalias !23617 ; 2 uses

bb.j:                                             ; preds = %.body.i.i.i
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking19panic_cannot_unwind17hebe3a4840b691755E() #56, !noalias !23617
  unreachable

bb.k:                                             ; preds = %.body.i.i.i
  %i.ah = extractvalue { ptr, ptr } %i.af, 0      ; 2 uses
  %i.ai = extractvalue { ptr, ptr } %i.af, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ah) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ai) ]
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ak = load i64, ptr %i.aj, align 8, !range !70, !noalias !23617, !noundef !24
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.noexc3.i.i.i.i.i.i
  %.sroa.7.sroa.6.0.i.i.i = phi ptr [ undef, %.noexc3.i.i.i.i.i.i ], [ %i.ai, %bb.k ]
  %.sroa.7.sroa.0.0.i.i.i = phi ptr [ undef, %.noexc3.i.i.i.i.i.i ], [ %i.ah, %bb.k ]
  %.sroa.04.0.i.i.i = phi i64 [ 0, %.noexc3.i.i.i.i.i.i ], [ %i.ak, %bb.k ]
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !23620
  store i64 %.sroa.04.0.i.i.i, ptr %i.al, align 8, !noalias !23617
  %.sroa.10.8..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %.sroa.7.sroa.0.0.i.i.i, ptr %.sroa.10.8..sroa_idx.i.i.i, align 8, !noalias !23617
  %.sroa.10.sroa.4.0..sroa.10.8..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %.sroa.7.sroa.6.0.i.i.i, ptr %.sroa.10.sroa.4.0..sroa.10.8..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !23617
  store i32 1, ptr %i.e, align 8, !noalias !23620
  invoke fastcc void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$9set_stage17h88df15f389dde2b6E"(ptr noundef nonnull align 8 %i.n, ptr noalias noundef align 8 captures(address) dereferenceable(1160) %i.e)
          to label %.thread.i.i.i unwind label %bb.m, !noalias !23617

bb.m:                                             ; preds = %bb.l
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  %i.an = extractvalue { ptr, i32 } %i.am, 0
  %i.ao = invoke { ptr, ptr } @_ZN3std9panicking12catch_unwind7cleanup17h90994b58fc656da7E(ptr noundef %i.an)
          to label %bb.o unwind label %bb.n, !noalias !23617 ; 2 uses

bb.n:                                             ; preds = %bb.m
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking19panic_cannot_unwind17hebe3a4840b691755E() #56, !noalias !23617
  unreachable

.thread.i.i.i:                                    ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !23620
  br label %bb.z

bb.o:                                             ; preds = %bb.m
  %i.aq = extractvalue { ptr, ptr } %i.ao, 0      ; 4 uses
  %i.ar = extractvalue { ptr, ptr } %i.ao, 1      ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i, label %bb.z, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ar) ]
  %i.as = load ptr, ptr %i.ar, align 8, !invariant.load !24, !noalias !23617 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  invoke void %i.as(ptr noundef nonnull %i.aq)
          to label %bb.r unwind label %bb.s, !noalias !23617

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.au = load i64, ptr %i.at, align 8, !range !30, !invariant.load !24, !noalias !23617 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !range !70, !invariant.load !24, !noalias !23617 ; 2 uses
  %i.ax = icmp ult i64 %i.aw, -9223372036854775807
  call void @llvm.assume(i1 %i.ax)
  %i.ay = icmp eq i64 %i.au, 0
  br i1 %i.ay, label %bb.z, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i": ; preds = %bb.r
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aq, i64 noundef %i.au, i64 noundef range(i64 1, -9223372036854775807) %i.aw) #47, !noalias !23617
  br label %bb.z

bb.s:                                             ; preds = %bb.q
  %i.az = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.bb = load i64, ptr %i.ba, align 8, !range !30, !invariant.load !24, !noalias !23617 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.bd = load i64, ptr %i.bc, align 8, !range !70, !invariant.load !24, !noalias !23617 ; 2 uses
  %i.be = icmp ult i64 %i.bd, -9223372036854775807
  call void @llvm.assume(i1 %i.be)
  %i.bf = icmp eq i64 %i.bb, 0
  br i1 %i.bf, label %common.resume.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i": ; preds = %bb.s
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aq, i64 noundef %i.bb, i64 noundef range(i64 1, -9223372036854775807) %i.bd) #47, !noalias !23617
  br label %common.resume.i

common.resume.i:                                  ; preds = %bb.ai, %bb.ah, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i", %bb.s
  %common.resume.op.i = phi { ptr, i32 } [ %i.by, %bb.ai ], [ %i.bx, %bb.ah ], [ %i.az, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i" ], [ %i.az, %bb.s ]
  resume { ptr, i32 } %common.resume.op.i

bb.t:                                             ; preds = %bb.a
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 2, ptr %i.c, align 8
  invoke fastcc void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$9set_stage17h88df15f389dde2b6E"(ptr noundef nonnull align 8 %i.bg, ptr noalias noundef align 8 captures(address) dereferenceable(1160) %i.c)
          to label %bb.w unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bh = landingpad { ptr, i32 }
          catch ptr null
  %i.bi = extractvalue { ptr, i32 } %i.bh, 0
  %i.bj = invoke { ptr, ptr } @_ZN3std9panicking12catch_unwind7cleanup17h90994b58fc656da7E(ptr noundef %i.bi)
          to label %bb.x unwind label %bb.v       ; 2 uses

bb.v:                                             ; preds = %bb.u
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking19panic_cannot_unwind17hebe3a4840b691755E() #56
  unreachable

bb.w:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_ZN5tokio7runtime4task7harness11cancel_task17hc645101f02d45599E.exit.i.i

bb.x:                                             ; preds = %bb.u
  %i.bl = extractvalue { ptr, ptr } %i.bj, 0
  %i.bm = extractvalue { ptr, ptr } %i.bj, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bm) ]
  br label %_ZN5tokio7runtime4task7harness11cancel_task17hc645101f02d45599E.exit.i.i

_ZN5tokio7runtime4task7harness11cancel_task17hc645101f02d45599E.exit.i.i: ; preds = %bb.x, %bb.w
  %.sroa.8.0.i.i.i = phi ptr [ undef, %bb.w ], [ %i.bm, %bb.x ]
  %.sroa.6.0.i.i.i = phi ptr [ null, %bb.w ], [ %i.bl, %bb.x ]
  %.sroa.01.0.in.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.01.0.i.i.i = load i64, ptr %.sroa.01.0.in.i.i.i, align 8, !range !70, !noundef !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %.sroa.01.0.i.i.i, ptr %i.bn, align 8
  %.sroa.53.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %.sroa.6.0.i.i.i, ptr %.sroa.53.0..sroa_idx.i.i.i, align 8
  %.sroa.64.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %.sroa.8.0.i.i.i, ptr %.sroa.64.0..sroa_idx.i.i.i, align 8
  store i32 1, ptr %i.d, align 8
  call fastcc void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$9set_stage17h88df15f389dde2b6E"(ptr noundef nonnull align 8 %i.bg, ptr noalias noundef align 8 captures(address) dereferenceable(1160) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h2bc13ad10431f31fE.exit.thread.i"

bb.y:                                             ; preds = %.noexc2.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !23616
  %i.bo = call noundef i8 @_ZN5tokio7runtime4task5state5State18transition_to_idle17hd68afb9aac48e2e2E(ptr noundef nonnull align 8 %0)
  switch i8 %i.bo, label %default.unreachable [
    i8 3, label %bb.aa
    i8 0, label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h2bc13ad10431f31fE.exit.thread12.i"
    i8 1, label %bb.af
    i8 2, label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h2bc13ad10431f31fE.exit.i"
  ]

"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h2bc13ad10431f31fE.exit.thread12.i": ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$4poll17h5c375d874c5287c7E.exit"

bb.z:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i", %bb.r, %bb.o, %.thread.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h2bc13ad10431f31fE.exit.thread.i"

bb.aa:                                            ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 2, ptr %i.a, align 8
  invoke fastcc void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$9set_stage17h88df15f389dde2b6E"(ptr noundef nonnull align 8 %i.n, ptr noalias noundef align 8 captures(address) dereferenceable(1160) %i.a)
          to label %bb.ad unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bp = landingpad { ptr, i32 }
          catch ptr null
  %i.bq = extractvalue { ptr, i32 } %i.bp, 0
  %i.br = invoke { ptr, ptr } @_ZN3std9panicking12catch_unwind7cleanup17h90994b58fc656da7E(ptr noundef %i.bq)
          to label %bb.ae unwind label %bb.ac     ; 2 uses

bb.ac:                                            ; preds = %bb.ab
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking19panic_cannot_unwind17hebe3a4840b691755E() #56
  unreachable

bb.ad:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h2bc13ad10431f31fE.exit.thread8.i"

bb.ae:                                            ; preds = %bb.ab
  %i.bt = extractvalue { ptr, ptr } %i.br, 0
  %i.bu = extractvalue { ptr, ptr } %i.br, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bu) ]
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h2bc13ad10431f31fE.exit.thread8.i"

"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h2bc13ad10431f31fE.exit.thread8.i": ; preds = %bb.ae, %bb.ad
  %.sroa.8.0.i1.i.i = phi ptr [ undef, %bb.ad ], [ %i.bu, %bb.ae ]
  %.sroa.6.0.i2.i.i = phi ptr [ null, %bb.ad ], [ %i.bt, %bb.ae ]
  %.sroa.01.0.i4.i.i = load i64, ptr %i.r, align 8, !range !70, !noundef !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.01.0.i4.i.i, ptr %i.bv, align 8
  %.sroa.53.0..sroa_idx.i5.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %.sroa.6.0.i2.i.i, ptr %.sroa.53.0..sroa_idx.i5.i.i, align 8
  %.sroa.64.0..sroa_idx.i6.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %.sroa.8.0.i1.i.i, ptr %.sroa.64.0..sroa_idx.i6.i.i, align 8
  store i32 1, ptr %i.b, align 8
  call fastcc void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$9set_stage17h88df15f389dde2b6E"(ptr noundef nonnull align 8 %i.n, ptr noalias noundef align 8 captures(address) dereferenceable(1160) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h2bc13ad10431f31fE.exit.thread.i"

"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h2bc13ad10431f31fE.exit.i": ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h2bc13ad10431f31fE.exit.thread6.i"
end_hunk_6
begin_hunk_7_@_ZN5tokio7runtime4task3raw4poll17h7a1bc8a0e82e74d1E:bb.a
"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i": ; preds = %bb.am
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bg, i64 noundef %i.br, i64 noundef range(i64 1, -9223372036854775807) %i.bt) #47
  br label %common.resume.i

common.resume.i:                                  ; preds = %bb.ap, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i", %bb.am
  %common.resume.op.i = phi { ptr, i32 } [ %i.bx, %bb.ap ], [ %i.bp, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i" ], [ %i.bp, %bb.am ]
  resume { ptr, i32 } %common.resume.op.i

bb.an:                                            ; preds = %bb.a
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call fastcc void @_ZN5tokio7runtime4task7harness11cancel_task17hf248e2b44600132eE(ptr noundef nonnull align 8 %i.bw)
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i", %bb.al, %bb.ai, %.thread.i.i.i
  call fastcc void @"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$8complete17hda85768f384fbc14E"(ptr noundef nonnull %0)
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$4poll17he0ccbd2a2c466192E.exit"

"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hac18c7e9cf5be034E.exit.i": ; preds = %bb.a
  invoke fastcc void @"_ZN4core3ptr299drop_in_place$LT$tokio..runtime..task..core..Cell$LT$tokio..runtime..blocking..task..BlockingTask$LT$tokio..fs..set_permissions..set_permissions$LT$$RF$std..path..PathBuf$GT$..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$tokio..runtime..blocking..schedule..BlockingSchedule$GT$$GT$17h92bfc881cc601b04E"(ptr noundef nonnull align 128 %0)
          to label %"_ZN4core3ptr324drop_in_place$LT$alloc..boxed..Box$LT$tokio..runtime..task..core..Cell$LT$tokio..runtime..blocking..task..BlockingTask$LT$tokio..fs..set_permissions..set_permissions$LT$$RF$std..path..PathBuf$GT$..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$tokio..runtime..blocking..schedule..BlockingSchedule$GT$$GT$$GT$17h0e48417e7638fe64E.exit.i" unwind label %bb.ap

bb.ap:                                            ; preds = %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hac18c7e9cf5be034E.exit.i"
  %i.bx = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 256, i64 noundef 128) #47
  br label %common.resume.i

"_ZN4core3ptr324drop_in_place$LT$alloc..boxed..Box$LT$tokio..runtime..task..core..Cell$LT$tokio..runtime..blocking..task..BlockingTask$LT$tokio..fs..set_permissions..set_permissions$LT$$RF$std..path..PathBuf$GT$..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$tokio..runtime..blocking..schedule..BlockingSchedule$GT$$GT$$GT$17h0e48417e7638fe64E.exit.i": ; preds = %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hac18c7e9cf5be034E.exit.i"
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 256, i64 noundef 128) #47
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$4poll17he0ccbd2a2c466192E.exit"

"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$4poll17he0ccbd2a2c466192E.exit": ; preds = %bb.a, %bb.ao, %"_ZN4core3ptr324drop_in_place$LT$alloc..boxed..Box$LT$tokio..runtime..task..core..Cell$LT$tokio..runtime..blocking..task..BlockingTask$LT$tokio..fs..set_permissions..set_permissions$LT$$RF$std..path..PathBuf$GT$..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$tokio..runtime..blocking..schedule..BlockingSchedule$GT$$GT$$GT$17h0e48417e7638fe64E.exit.i"
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_ZN5tokio7runtime4task3raw4poll17h8f09f33bf87baea7E(ptr noundef nonnull %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [232 x i8], align 8               ; 4 uses
  %i.b = alloca [232 x i8], align 8               ; 7 uses
  %i.c = alloca [232 x i8], align 8               ; 4 uses
  %i.d = alloca [232 x i8], align 8               ; 7 uses
  %i.e = alloca [232 x i8], align 8               ; 7 uses
  %i.f = alloca [232 x i8], align 8               ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 5 uses
  %i.h = alloca [48 x i8], align 8                ; 7 uses
  %i.i = alloca [232 x i8], align 8               ; 4 uses
  %i.j = alloca [16 x i8], align 8                ; 7 uses
  %i.k = alloca [32 x i8], align 8                ; 6 uses
  %i.l = alloca [16 x i8], align 8                ; 10 uses
  %i.m = tail call noundef i8 @_ZN5tokio7runtime4task5state5State21transition_to_running17he0b724de1c9eab75E(ptr noundef nonnull align 8 %0)
  switch i8 %i.m, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.x
    i8 2, label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$4poll17ha0429ab0d5f7010bE.exit"
    i8 3, label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hc29fdc7286d11522E.exit.thread6.i"
  ]

default.unreachable:                              ; preds = %_ZN5tokio7runtime4task7harness11poll_future17hc609d6c7e04baa67E.exit.i.i, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr @_ZN5tokio7runtime4task5waker12WAKER_VTABLE17h7860ffe65f71f6d1E, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %0, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %.sroa.14.8..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !23664
  store ptr %i.l, ptr %.sroa.14.8..sroa_idx.i.i.i, align 8
  %.sroa.4.8..sroa.14.8..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr null, ptr %.sroa.4.8..sroa.14.8..sroa_idx.i.sroa_idx.i.i, align 8
  store ptr %i.l, ptr %i.k, align 8, !noalias !23665
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !23666
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.q = load i32, ptr %i.p, align 8, !range !95, !noalias !23667, !noundef !24
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.c, label %bb.d, !prof !29

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !23667
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !range !70, !noalias !23667, !noundef !24
  %i.u = invoke noundef i64 @_ZN5tokio7runtime4task4core11TaskIdGuard5enter17hfddcd1266c1bc7f4E(i64 noundef %i.t)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.k, !noalias !23664

.noexc.i.i.i.i.i.i:                               ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.u, ptr %i.g, align 8, !noalias !23667
  invoke fastcc void @"_ZN5xtask5bench8workload12start_report28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h670ef75aeb222c65E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.j, ptr noundef nonnull align 8 %i.v, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.k)
          to label %"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$4poll28_$u7b$$u7b$closure$u7d$$u7d$17h559cffcf3ef53d9eE.exit.i.i.i.i.i.i.i" unwind label %bb.e, !noalias !23668

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !23667
  store ptr @756, ptr %i.h, align 8, !noalias !23667
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 1, ptr %i.w, align 8, !noalias !23667
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store ptr null, ptr %i.x, align 8, !noalias !23667
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.y, align 8, !noalias !23667
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i64 0, ptr %i.z, align 8, !noalias !23667
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @757) #54
          to label %.noexc1.i.i.i.i.i.i unwind label %bb.k, !noalias !23664

.noexc1.i.i.i.i.i.i:                              ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %.noexc.i.i.i.i.i.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke void @"_ZN81_$LT$tokio..runtime..task..core..TaskIdGuard$u20$as$u20$core..ops..drop..Drop$GT$4drop17h81e67524a710ac4fE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %.body.i.i.i.i.i.i unwind label %bb.f, !noalias !23669

bb.f:                                             ; preds = %bb.e
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !23669
  unreachable

"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$4poll28_$u7b$$u7b$closure$u7d$$u7d$17h559cffcf3ef53d9eE.exit.i.i.i.i.i.i.i": ; preds = %.noexc.i.i.i.i.i.i
  invoke void @"_ZN81_$LT$tokio..runtime..task..core..TaskIdGuard$u20$as$u20$core..ops..drop..Drop$GT$4drop17h81e67524a710ac4fE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %.noexc2.i.i.i.i.i.i unwind label %bb.k, !noalias !23664

.noexc2.i.i.i.i.i.i:                              ; preds = %"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$4poll28_$u7b$$u7b$closure$u7d$$u7d$17h559cffcf3ef53d9eE.exit.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !23667
  %i.ac = load i32, ptr %i.j, align 8, !range !95, !noalias !23666, !noundef !24
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.ac, 2
  br i1 %.not.i.i.i.i.i.i.i, label %bb.n, label %bb.g

bb.g:                                             ; preds = %.noexc2.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !23666
  store i32 2, ptr %i.i, align 8, !noalias !23666
  invoke fastcc void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$9set_stage17h2738581118e6f3b7E"(ptr noundef nonnull align 8 %i.o, ptr noalias noundef align 8 captures(address) dereferenceable(232) %i.i)
          to label %bb.i unwind label %bb.h, !noalias !23668

bb.h:                                             ; preds = %bb.g
  %i.ad = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke fastcc void @"_ZN4core3ptr108drop_in_place$LT$core..task..poll..Poll$LT$core..result..Result$LT$std..fs..File$C$anyhow..Error$GT$$GT$$GT$17he1059590d2aa7ad7E"(ptr noalias noundef align 8 dereferenceable(16) %i.j) #55
          to label %.body.i.i.i.i.i.i unwind label %bb.j, !noalias !23668

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !23666
  br label %bb.n

bb.j:                                             ; preds = %bb.h
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !23668
  unreachable

bb.k:                                             ; preds = %"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$4poll28_$u7b$$u7b$closure$u7d$$u7d$17h559cffcf3ef53d9eE.exit.i.i.i.i.i.i.i", %bb.d, %bb.c
  %i.af = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %.body.i.i.i.i.i.i

.body.i.i.i.i.i.i:                                ; preds = %bb.k, %bb.h, %bb.e
  %eh.lpad-body.i.i.i.i.i.i = phi { ptr, i32 } [ %i.af, %bb.k ], [ %i.aa, %bb.e ], [ %i.ad, %bb.h ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !23664
  store i32 2, ptr %i.f, align 8, !noalias !23664
  invoke fastcc void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$9set_stage17h2738581118e6f3b7E"(ptr noundef nonnull align 8 %i.o, ptr noalias noundef align 8 captures(address) dereferenceable(232) %i.f)
          to label %.body.i.i.i unwind label %bb.l, !noalias !23664

bb.l:                                             ; preds = %.body.i.i.i.i.i.i
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !23664
  unreachable

.body.i.i.i:                                      ; preds = %.body.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !23664
  %i.ah = extractvalue { ptr, i32 } %eh.lpad-body.i.i.i.i.i.i, 0
  %i.ai = invoke { ptr, ptr } @_ZN3std9panicking12catch_unwind7cleanup17h90994b58fc656da7E(ptr noundef %i.ah)
          to label %bb.o unwind label %bb.m, !noalias !23665 ; 2 uses

bb.m:                                             ; preds = %.body.i.i.i
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking19panic_cannot_unwind17hebe3a4840b691755E() #56, !noalias !23665
  unreachable

bb.n:                                             ; preds = %bb.i, %.noexc2.i.i.i.i.i.i
  %.sroa.043.0.copyload.i.i.i = load ptr, ptr %i.j, align 8, !noalias !23665 ; 2 uses
  %.sroa.9.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.9.0.copyload.i.i.i = load ptr, ptr %.sroa.9.0..sroa_idx.i.i.i, align 8, !noalias !23665
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !23666
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !23664
  %i.ak = ptrtoint ptr %.sroa.043.0.copyload.i.i.i to i64
  %i.al = and i64 %i.ak, 4294967295
  %i.am = icmp eq i64 %i.al, 2
  br i1 %i.am, label %_ZN5tokio7runtime4task7harness11poll_future17hc609d6c7e04baa67E.exit.i.i, label %bb.p

bb.o:                                             ; preds = %.body.i.i.i
  %i.an = extractvalue { ptr, ptr } %i.ai, 0      ; 2 uses
  %i.ao = extractvalue { ptr, ptr } %i.ai, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.an) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ao) ]
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aq = load i64, ptr %i.ap, align 8, !range !70, !noalias !23665, !noundef !24
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.sroa.043.053.i.i.i = phi ptr [ %i.an, %bb.o ], [ %.sroa.043.0.copyload.i.i.i, %bb.n ]
  %.sroa.9.050.i.i.i = phi ptr [ %i.ao, %bb.o ], [ %.sroa.9.0.copyload.i.i.i, %bb.n ]
  %.sroa.09.0.i.i.i = phi i64 [ %i.aq, %bb.o ], [ 0, %bb.n ]
  %i.ar = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !23670
  store i64 %.sroa.09.0.i.i.i, ptr %i.ar, align 8, !noalias !23665
  %.sroa.10.8..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %.sroa.043.053.i.i.i, ptr %.sroa.10.8..sroa_idx.i.i.i, align 8, !noalias !23665
  %.sroa.11.8..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %.sroa.9.050.i.i.i, ptr %.sroa.11.8..sroa_idx.i.i.i, align 8, !noalias !23665
  store i32 1, ptr %i.e, align 8, !noalias !23670
  invoke fastcc void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$9set_stage17h2738581118e6f3b7E"(ptr noundef nonnull align 8 %i.o, ptr noalias noundef align 8 captures(address) dereferenceable(232) %i.e)
          to label %.thread.i.i.i unwind label %bb.q, !noalias !23665

bb.q:                                             ; preds = %bb.p
  %i.as = landingpad { ptr, i32 }
          catch ptr null
  %i.at = extractvalue { ptr, i32 } %i.as, 0
  %i.au = invoke { ptr, ptr } @_ZN3std9panicking12catch_unwind7cleanup17h90994b58fc656da7E(ptr noundef %i.at)
          to label %bb.s unwind label %bb.r, !noalias !23665 ; 2 uses

bb.r:                                             ; preds = %bb.q
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking19panic_cannot_unwind17hebe3a4840b691755E() #56, !noalias !23665
  unreachable

.thread.i.i.i:                                    ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !23670
  br label %bb.ac

bb.s:                                             ; preds = %bb.q
  %i.aw = extractvalue { ptr, ptr } %i.au, 0      ; 4 uses
  %i.ax = extractvalue { ptr, ptr } %i.au, 1      ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i, label %bb.ac, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ax) ]
  %i.ay = load ptr, ptr %i.ax, align 8, !invariant.load !24, !noalias !23665 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  invoke void %i.ay(ptr noundef nonnull %i.aw)
          to label %bb.v unwind label %bb.w, !noalias !23665

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !range !30, !invariant.load !24, !noalias !23665 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.bc = load i64, ptr %i.bb, align 8, !range !70, !invariant.load !24, !noalias !23665 ; 2 uses
  %i.bd = icmp ult i64 %i.bc, -9223372036854775807
  call void @llvm.assume(i1 %i.bd)
  %i.be = icmp eq i64 %i.ba, 0
  br i1 %i.be, label %bb.ac, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i": ; preds = %bb.v
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aw, i64 noundef %i.ba, i64 noundef range(i64 1, -9223372036854775807) %i.bc) #47, !noalias !23665
  br label %bb.ac

bb.w:                                             ; preds = %bb.u
  %i.bf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !range !30, !invariant.load !24, !noalias !23665 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.bj = load i64, ptr %i.bi, align 8, !range !70, !invariant.load !24, !noalias !23665 ; 2 uses
  %i.bk = icmp ult i64 %i.bj, -9223372036854775807
  call void @llvm.assume(i1 %i.bk)
  %i.bl = icmp eq i64 %i.bh, 0
  br i1 %i.bl, label %common.resume.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i": ; preds = %bb.w
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aw, i64 noundef %i.bh, i64 noundef range(i64 1, -9223372036854775807) %i.bj) #47, !noalias !23665
  br label %common.resume.i

common.resume.i:                                  ; preds = %bb.al, %bb.ak, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i", %bb.w
  %common.resume.op.i = phi { ptr, i32 } [ %i.ce, %bb.al ], [ %i.cd, %bb.ak ], [ %i.bf, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i" ], [ %i.bf, %bb.w ]
  resume { ptr, i32 } %common.resume.op.i

bb.x:                                             ; preds = %bb.a
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 2, ptr %i.c, align 8
  invoke fastcc void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$9set_stage17h2738581118e6f3b7E"(ptr noundef nonnull align 8 %i.bm, ptr noalias noundef align 8 captures(address) dereferenceable(232) %i.c)
          to label %bb.aa unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bn = landingpad { ptr, i32 }
          catch ptr null
  %i.bo = extractvalue { ptr, i32 } %i.bn, 0
  %i.bp = invoke { ptr, ptr } @_ZN3std9panicking12catch_unwind7cleanup17h90994b58fc656da7E(ptr noundef %i.bo)
          to label %bb.ab unwind label %bb.z      ; 2 uses

bb.z:                                             ; preds = %bb.y
  %i.bq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking19panic_cannot_unwind17hebe3a4840b691755E() #56
  unreachable

bb.aa:                                            ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_ZN5tokio7runtime4task7harness11cancel_task17h6ea1dd1840eabbd9E.exit.i.i

bb.ab:                                            ; preds = %bb.y
  %i.br = extractvalue { ptr, ptr } %i.bp, 0
  %i.bs = extractvalue { ptr, ptr } %i.bp, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bs) ]
  br label %_ZN5tokio7runtime4task7harness11cancel_task17h6ea1dd1840eabbd9E.exit.i.i

_ZN5tokio7runtime4task7harness11cancel_task17h6ea1dd1840eabbd9E.exit.i.i: ; preds = %bb.ab, %bb.aa
  %.sroa.8.0.i.i.i = phi ptr [ undef, %bb.aa ], [ %i.bs, %bb.ab ]
  %.sroa.6.0.i.i.i = phi ptr [ null, %bb.aa ], [ %i.br, %bb.ab ]
  %.sroa.01.0.in.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.01.0.i.i.i = load i64, ptr %.sroa.01.0.in.i.i.i, align 8, !range !70, !noundef !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.bt = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %.sroa.01.0.i.i.i, ptr %i.bt, align 8
  %.sroa.53.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %.sroa.6.0.i.i.i, ptr %.sroa.53.0..sroa_idx.i.i.i, align 8
  %.sroa.64.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %.sroa.8.0.i.i.i, ptr %.sroa.64.0..sroa_idx.i.i.i, align 8
  store i32 1, ptr %i.d, align 8
  call fastcc void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$9set_stage17h2738581118e6f3b7E"(ptr noundef nonnull align 8 %i.bm, ptr noalias noundef align 8 captures(address) dereferenceable(232) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hc29fdc7286d11522E.exit.thread.i"

_ZN5tokio7runtime4task7harness11poll_future17hc609d6c7e04baa67E.exit.i.i: ; preds = %bb.n
  %i.bu = call noundef i8 @_ZN5tokio7runtime4task5state5State18transition_to_idle17hd68afb9aac48e2e2E(ptr noundef nonnull align 8 %0)
  switch i8 %i.bu, label %default.unreachable [
    i8 3, label %bb.ad
    i8 0, label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hc29fdc7286d11522E.exit.thread12.i"
    i8 1, label %bb.ai
    i8 2, label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hc29fdc7286d11522E.exit.i"
  ]

"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hc29fdc7286d11522E.exit.thread12.i": ; preds = %_ZN5tokio7runtime4task7harness11poll_future17hc609d6c7e04baa67E.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$4poll17ha0429ab0d5f7010bE.exit"

bb.ac:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i", %bb.v, %bb.s, %.thread.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hc29fdc7286d11522E.exit.thread.i"

bb.ad:                                            ; preds = %_ZN5tokio7runtime4task7harness11poll_future17hc609d6c7e04baa67E.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 2, ptr %i.a, align 8
  invoke fastcc void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$9set_stage17h2738581118e6f3b7E"(ptr noundef nonnull align 8 %i.o, ptr noalias noundef align 8 captures(address) dereferenceable(232) %i.a)
          to label %bb.ag unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bv = landingpad { ptr, i32 }
          catch ptr null
  %i.bw = extractvalue { ptr, i32 } %i.bv, 0
  %i.bx = invoke { ptr, ptr } @_ZN3std9panicking12catch_unwind7cleanup17h90994b58fc656da7E(ptr noundef %i.bw)
          to label %bb.ah unwind label %bb.af     ; 2 uses

bb.af:                                            ; preds = %bb.ae
  %i.by = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking19panic_cannot_unwind17hebe3a4840b691755E() #56
  unreachable

bb.ag:                                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hc29fdc7286d11522E.exit.thread8.i"

bb.ah:                                            ; preds = %bb.ae
  %i.bz = extractvalue { ptr, ptr } %i.bx, 0
  %i.ca = extractvalue { ptr, ptr } %i.bx, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ca) ]
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hc29fdc7286d11522E.exit.thread8.i"

"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hc29fdc7286d11522E.exit.thread8.i": ; preds = %bb.ah, %bb.ag
  %.sroa.8.0.i1.i.i = phi ptr [ undef, %bb.ag ], [ %i.ca, %bb.ah ]
  %.sroa.6.0.i2.i.i = phi ptr [ null, %bb.ag ], [ %i.bz, %bb.ah ]
  %.sroa.01.0.i4.i.i = load i64, ptr %i.s, align 8, !range !70, !noundef !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.cb = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.01.0.i4.i.i, ptr %i.cb, align 8
  %.sroa.53.0..sroa_idx.i5.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %.sroa.6.0.i2.i.i, ptr %.sroa.53.0..sroa_idx.i5.i.i, align 8
  %.sroa.64.0..sroa_idx.i6.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %.sroa.8.0.i1.i.i, ptr %.sroa.64.0..sroa_idx.i6.i.i, align 8
  store i32 1, ptr %i.b, align 8
  call fastcc void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$9set_stage17h2738581118e6f3b7E"(ptr noundef nonnull align 8 %i.o, ptr noalias noundef align 8 captures(address) dereferenceable(232) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hc29fdc7286d11522E.exit.thread.i"

"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hc29fdc7286d11522E.exit.i": ; preds = %_ZN5tokio7runtime4task7harness11poll_future17hc609d6c7e04baa67E.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hc29fdc7286d11522E.exit.thread6.i"

end_hunk_7
begin_hunk_8_@_ZN5tokio7runtime4task3raw4poll17h9a8bae9c912c1309E:bb.a
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bs = load i64, ptr %i.br, align 8, !range !70, !invariant.load !24 ; 2 uses
  %i.bt = icmp ult i64 %i.bs, -9223372036854775807
  call void @llvm.assume(i1 %i.bt)
  %i.bu = icmp eq i64 %i.bq, 0
  br i1 %i.bu, label %bb.ar, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i": ; preds = %bb.ao
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bm, i64 noundef %i.bq, i64 noundef range(i64 1, -9223372036854775807) %i.bs) #47
  br label %bb.ar

bb.ap:                                            ; preds = %bb.an
  %i.bv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bx = load i64, ptr %i.bw, align 8, !range !30, !invariant.load !24 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bz = load i64, ptr %i.by, align 8, !range !70, !invariant.load !24 ; 2 uses
  %i.ca = icmp ult i64 %i.bz, -9223372036854775807
  call void @llvm.assume(i1 %i.ca)
  %i.cb = icmp eq i64 %i.bx, 0
  br i1 %i.cb, label %common.resume.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i": ; preds = %bb.ap
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bm, i64 noundef %i.bx, i64 noundef range(i64 1, -9223372036854775807) %i.bz) #47
  br label %common.resume.i

common.resume.i:                                  ; preds = %bb.at, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i", %bb.ap
  %common.resume.op.i = phi { ptr, i32 } [ %i.cd, %bb.at ], [ %i.bv, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i" ], [ %i.bv, %bb.ap ]
  resume { ptr, i32 } %common.resume.op.i

bb.aq:                                            ; preds = %bb.a
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call fastcc void @_ZN5tokio7runtime4task7harness11cancel_task17hf34e612e1c35b23aE(ptr noundef nonnull align 8 %i.cc)
  br label %bb.as

bb.ar:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i", %bb.ao, %bb.al, %.thread.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.sroa.6.i.i.i)
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  call fastcc void @"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$8complete17had844807787a5dd5E"(ptr noundef nonnull %0)
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$4poll17hcf5cc531234f17a8E.exit"

"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h17b156737d6aefc3E.exit.i": ; preds = %bb.a
  invoke fastcc void @"_ZN4core3ptr285drop_in_place$LT$tokio..runtime..task..core..Cell$LT$tokio..runtime..blocking..task..BlockingTask$LT$tokio..fs..metadata..metadata$LT$$RF$std..path..PathBuf$GT$..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$tokio..runtime..blocking..schedule..BlockingSchedule$GT$$GT$17h7d20a8d09280fd1bE"(ptr noundef nonnull align 128 %0)
          to label %"_ZN4core3ptr310drop_in_place$LT$alloc..boxed..Box$LT$tokio..runtime..task..core..Cell$LT$tokio..runtime..blocking..task..BlockingTask$LT$tokio..fs..metadata..metadata$LT$$RF$std..path..PathBuf$GT$..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$tokio..runtime..blocking..schedule..BlockingSchedule$GT$$GT$$GT$17ha5c182116b4dc697E.exit.i" unwind label %bb.at

bb.at:                                            ; preds = %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h17b156737d6aefc3E.exit.i"
  %i.cd = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 384, i64 noundef 128) #47
  br label %common.resume.i

"_ZN4core3ptr310drop_in_place$LT$alloc..boxed..Box$LT$tokio..runtime..task..core..Cell$LT$tokio..runtime..blocking..task..BlockingTask$LT$tokio..fs..metadata..metadata$LT$$RF$std..path..PathBuf$GT$..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$tokio..runtime..blocking..schedule..BlockingSchedule$GT$$GT$$GT$17ha5c182116b4dc697E.exit.i": ; preds = %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h17b156737d6aefc3E.exit.i"
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 384, i64 noundef 128) #47
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$4poll17hcf5cc531234f17a8E.exit"

"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$4poll17hcf5cc531234f17a8E.exit": ; preds = %bb.a, %bb.as, %"_ZN4core3ptr310drop_in_place$LT$alloc..boxed..Box$LT$tokio..runtime..task..core..Cell$LT$tokio..runtime..blocking..task..BlockingTask$LT$tokio..fs..metadata..metadata$LT$$RF$std..path..PathBuf$GT$..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$tokio..runtime..blocking..schedule..BlockingSchedule$GT$$GT$$GT$17ha5c182116b4dc697E.exit.i"
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_ZN5tokio7runtime4task3raw4poll17ha95f36d0ef64c5e5E(ptr noundef nonnull %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1160 x i8], align 8              ; 4 uses
  %i.b = alloca [1160 x i8], align 8              ; 7 uses
  %i.c = alloca [1160 x i8], align 8              ; 4 uses
  %i.d = alloca [1160 x i8], align 8              ; 7 uses
  %i.e = alloca [1160 x i8], align 8              ; 7 uses
  %i.f = alloca [1160 x i8], align 8              ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 5 uses
  %i.h = alloca [48 x i8], align 8                ; 7 uses
  %i.i = alloca [1160 x i8], align 8              ; 4 uses
  %i.j = alloca [32 x i8], align 8                ; 7 uses
  %i.k = alloca [16 x i8], align 8                ; 10 uses
  %i.l = tail call noundef i8 @_ZN5tokio7runtime4task5state5State21transition_to_running17he0b724de1c9eab75E(ptr noundef nonnull align 8 %0)
  switch i8 %i.l, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.t
    i8 2, label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$4poll17hd1fd2d4477b21e76E.exit"
    i8 3, label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17haafa875232d1f4cbE.exit.thread6.i"
  ]

default.unreachable:                              ; preds = %bb.y, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr @_ZN5tokio7runtime4task5waker12WAKER_VTABLE17h7860ffe65f71f6d1E, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %0, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %.sroa.13.8..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !23726
  store ptr %i.k, ptr %.sroa.13.8..sroa_idx.i.i.i, align 8
  %.sroa.4.8..sroa.13.8..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr null, ptr %.sroa.4.8..sroa.13.8..sroa_idx.i.sroa_idx.i.i, align 8
  store ptr %i.k, ptr %i.j, align 8, !noalias !23727
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = load i32, ptr %i.o, align 8, !range !95, !noalias !23728, !noundef !24
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.c, label %bb.d, !prof !29

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !23728
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !range !70, !noalias !23728, !noundef !24
  %i.t = invoke noundef i64 @_ZN5tokio7runtime4task4core11TaskIdGuard5enter17hfddcd1266c1bc7f4E(i64 noundef %i.s)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.h, !noalias !23726

.noexc.i.i.i.i.i.i:                               ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.t, ptr %i.g, align 8, !noalias !23728
  %i.v = invoke fastcc noundef zeroext i1 @"_ZN5xtask5bench9dashboard15DashboardClient16cancel_on_ctrl_c28_$u7b$$u7b$closure$u7d$$u7d$17h3949854638b8d407E"(ptr noundef nonnull align 8 %i.u, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.j)
          to label %"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$4poll28_$u7b$$u7b$closure$u7d$$u7d$17he5d31c438e8d2cb6E.exit.i.i.i.i.i.i.i" unwind label %bb.e, !noalias !23726

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !23728
  store ptr @756, ptr %i.h, align 8, !noalias !23728
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 1, ptr %i.w, align 8, !noalias !23728
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store ptr null, ptr %i.x, align 8, !noalias !23728
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.y, align 8, !noalias !23728
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i64 0, ptr %i.z, align 8, !noalias !23728
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @757) #54
          to label %.noexc1.i.i.i.i.i.i unwind label %bb.h, !noalias !23726

.noexc1.i.i.i.i.i.i:                              ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %.noexc.i.i.i.i.i.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke void @"_ZN81_$LT$tokio..runtime..task..core..TaskIdGuard$u20$as$u20$core..ops..drop..Drop$GT$4drop17h81e67524a710ac4fE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %.body.i.i.i.i.i.i unwind label %bb.f, !noalias !23726

bb.f:                                             ; preds = %bb.e
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !23726
  unreachable

"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$4poll28_$u7b$$u7b$closure$u7d$$u7d$17he5d31c438e8d2cb6E.exit.i.i.i.i.i.i.i": ; preds = %.noexc.i.i.i.i.i.i
  invoke void @"_ZN81_$LT$tokio..runtime..task..core..TaskIdGuard$u20$as$u20$core..ops..drop..Drop$GT$4drop17h81e67524a710ac4fE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %.noexc2.i.i.i.i.i.i unwind label %bb.h, !noalias !23726

.noexc2.i.i.i.i.i.i:                              ; preds = %"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$4poll28_$u7b$$u7b$closure$u7d$$u7d$17he5d31c438e8d2cb6E.exit.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !23728
  br i1 %i.v, label %bb.y, label %bb.g

bb.g:                                             ; preds = %.noexc2.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !23729
  store i32 2, ptr %i.i, align 8, !noalias !23729
  invoke fastcc void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$9set_stage17h584ad11f20d800c8E"(ptr noundef nonnull align 8 %i.n, ptr noalias noundef align 8 captures(address) dereferenceable(1160) %i.i)
          to label %.noexc3.i.i.i.i.i.i unwind label %bb.h, !noalias !23726

.noexc3.i.i.i.i.i.i:                              ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !23729
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !23726
  br label %bb.l

bb.h:                                             ; preds = %bb.g, %"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$4poll28_$u7b$$u7b$closure$u7d$$u7d$17he5d31c438e8d2cb6E.exit.i.i.i.i.i.i.i", %bb.d, %bb.c
  %i.ac = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %.body.i.i.i.i.i.i

.body.i.i.i.i.i.i:                                ; preds = %bb.h, %bb.e
  %eh.lpad-body.i.i.i.i.i.i = phi { ptr, i32 } [ %i.ac, %bb.h ], [ %i.aa, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !23726
  store i32 2, ptr %i.f, align 8, !noalias !23726
  invoke fastcc void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$9set_stage17h584ad11f20d800c8E"(ptr noundef nonnull align 8 %i.n, ptr noalias noundef align 8 captures(address) dereferenceable(1160) %i.f)
          to label %.body.i.i.i unwind label %bb.i, !noalias !23726

bb.i:                                             ; preds = %.body.i.i.i.i.i.i
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !23726
  unreachable

.body.i.i.i:                                      ; preds = %.body.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !23726
  %i.ae = extractvalue { ptr, i32 } %eh.lpad-body.i.i.i.i.i.i, 0
  %i.af = invoke { ptr, ptr } @_ZN3std9panicking12catch_unwind7cleanup17h90994b58fc656da7E(ptr noundef %i.ae)
          to label %bb.k unwind label %bb.j, !noalias !23727 ; 2 uses

bb.j:                                             ; preds = %.body.i.i.i
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking19panic_cannot_unwind17hebe3a4840b691755E() #56, !noalias !23727
  unreachable

bb.k:                                             ; preds = %.body.i.i.i
  %i.ah = extractvalue { ptr, ptr } %i.af, 0      ; 2 uses
  %i.ai = extractvalue { ptr, ptr } %i.af, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ah) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ai) ]
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ak = load i64, ptr %i.aj, align 8, !range !70, !noalias !23727, !noundef !24
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.noexc3.i.i.i.i.i.i
  %.sroa.7.sroa.6.0.i.i.i = phi ptr [ undef, %.noexc3.i.i.i.i.i.i ], [ %i.ai, %bb.k ]
  %.sroa.7.sroa.0.0.i.i.i = phi ptr [ undef, %.noexc3.i.i.i.i.i.i ], [ %i.ah, %bb.k ]
  %.sroa.04.0.i.i.i = phi i64 [ 0, %.noexc3.i.i.i.i.i.i ], [ %i.ak, %bb.k ]
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !23730
  store i64 %.sroa.04.0.i.i.i, ptr %i.al, align 8, !noalias !23727
  %.sroa.10.8..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %.sroa.7.sroa.0.0.i.i.i, ptr %.sroa.10.8..sroa_idx.i.i.i, align 8, !noalias !23727
  %.sroa.10.sroa.4.0..sroa.10.8..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %.sroa.7.sroa.6.0.i.i.i, ptr %.sroa.10.sroa.4.0..sroa.10.8..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !23727
  store i32 1, ptr %i.e, align 8, !noalias !23730
  invoke fastcc void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$9set_stage17h584ad11f20d800c8E"(ptr noundef nonnull align 8 %i.n, ptr noalias noundef align 8 captures(address) dereferenceable(1160) %i.e)
          to label %.thread.i.i.i unwind label %bb.m, !noalias !23727

bb.m:                                             ; preds = %bb.l
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  %i.an = extractvalue { ptr, i32 } %i.am, 0
  %i.ao = invoke { ptr, ptr } @_ZN3std9panicking12catch_unwind7cleanup17h90994b58fc656da7E(ptr noundef %i.an)
          to label %bb.o unwind label %bb.n, !noalias !23727 ; 2 uses

bb.n:                                             ; preds = %bb.m
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking19panic_cannot_unwind17hebe3a4840b691755E() #56, !noalias !23727
  unreachable

.thread.i.i.i:                                    ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !23730
  br label %bb.z

bb.o:                                             ; preds = %bb.m
  %i.aq = extractvalue { ptr, ptr } %i.ao, 0      ; 4 uses
  %i.ar = extractvalue { ptr, ptr } %i.ao, 1      ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i, label %bb.z, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ar) ]
  %i.as = load ptr, ptr %i.ar, align 8, !invariant.load !24, !noalias !23727 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  invoke void %i.as(ptr noundef nonnull %i.aq)
          to label %bb.r unwind label %bb.s, !noalias !23727

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.au = load i64, ptr %i.at, align 8, !range !30, !invariant.load !24, !noalias !23727 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !range !70, !invariant.load !24, !noalias !23727 ; 2 uses
  %i.ax = icmp ult i64 %i.aw, -9223372036854775807
  call void @llvm.assume(i1 %i.ax)
  %i.ay = icmp eq i64 %i.au, 0
  br i1 %i.ay, label %bb.z, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i": ; preds = %bb.r
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aq, i64 noundef %i.au, i64 noundef range(i64 1, -9223372036854775807) %i.aw) #47, !noalias !23727
  br label %bb.z

bb.s:                                             ; preds = %bb.q
  %i.az = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.bb = load i64, ptr %i.ba, align 8, !range !30, !invariant.load !24, !noalias !23727 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.bd = load i64, ptr %i.bc, align 8, !range !70, !invariant.load !24, !noalias !23727 ; 2 uses
  %i.be = icmp ult i64 %i.bd, -9223372036854775807
  call void @llvm.assume(i1 %i.be)
  %i.bf = icmp eq i64 %i.bb, 0
  br i1 %i.bf, label %common.resume.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i": ; preds = %bb.s
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aq, i64 noundef %i.bb, i64 noundef range(i64 1, -9223372036854775807) %i.bd) #47, !noalias !23727
  br label %common.resume.i

common.resume.i:                                  ; preds = %bb.ai, %bb.ah, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i", %bb.s
  %common.resume.op.i = phi { ptr, i32 } [ %i.by, %bb.ai ], [ %i.bx, %bb.ah ], [ %i.az, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i" ], [ %i.az, %bb.s ]
  resume { ptr, i32 } %common.resume.op.i

bb.t:                                             ; preds = %bb.a
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 2, ptr %i.c, align 8
  invoke fastcc void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$9set_stage17h584ad11f20d800c8E"(ptr noundef nonnull align 8 %i.bg, ptr noalias noundef align 8 captures(address) dereferenceable(1160) %i.c)
          to label %bb.w unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bh = landingpad { ptr, i32 }
          catch ptr null
  %i.bi = extractvalue { ptr, i32 } %i.bh, 0
  %i.bj = invoke { ptr, ptr } @_ZN3std9panicking12catch_unwind7cleanup17h90994b58fc656da7E(ptr noundef %i.bi)
          to label %bb.x unwind label %bb.v       ; 2 uses

bb.v:                                             ; preds = %bb.u
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking19panic_cannot_unwind17hebe3a4840b691755E() #56
  unreachable

bb.w:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_ZN5tokio7runtime4task7harness11cancel_task17h94b972673159665cE.exit.i.i

bb.x:                                             ; preds = %bb.u
  %i.bl = extractvalue { ptr, ptr } %i.bj, 0
  %i.bm = extractvalue { ptr, ptr } %i.bj, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bm) ]
  br label %_ZN5tokio7runtime4task7harness11cancel_task17h94b972673159665cE.exit.i.i

_ZN5tokio7runtime4task7harness11cancel_task17h94b972673159665cE.exit.i.i: ; preds = %bb.x, %bb.w
  %.sroa.8.0.i.i.i = phi ptr [ undef, %bb.w ], [ %i.bm, %bb.x ]
  %.sroa.6.0.i.i.i = phi ptr [ null, %bb.w ], [ %i.bl, %bb.x ]
  %.sroa.01.0.in.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.01.0.i.i.i = load i64, ptr %.sroa.01.0.in.i.i.i, align 8, !range !70, !noundef !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %.sroa.01.0.i.i.i, ptr %i.bn, align 8
  %.sroa.53.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %.sroa.6.0.i.i.i, ptr %.sroa.53.0..sroa_idx.i.i.i, align 8
  %.sroa.64.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %.sroa.8.0.i.i.i, ptr %.sroa.64.0..sroa_idx.i.i.i, align 8
  store i32 1, ptr %i.d, align 8
  call fastcc void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$9set_stage17h584ad11f20d800c8E"(ptr noundef nonnull align 8 %i.bg, ptr noalias noundef align 8 captures(address) dereferenceable(1160) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17haafa875232d1f4cbE.exit.thread.i"

bb.y:                                             ; preds = %.noexc2.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !23726
  %i.bo = call noundef i8 @_ZN5tokio7runtime4task5state5State18transition_to_idle17hd68afb9aac48e2e2E(ptr noundef nonnull align 8 %0)
  switch i8 %i.bo, label %default.unreachable [
    i8 3, label %bb.aa
    i8 0, label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17haafa875232d1f4cbE.exit.thread12.i"
    i8 1, label %bb.af
    i8 2, label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17haafa875232d1f4cbE.exit.i"
  ]

"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17haafa875232d1f4cbE.exit.thread12.i": ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$4poll17hd1fd2d4477b21e76E.exit"

bb.z:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i", %bb.r, %bb.o, %.thread.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17haafa875232d1f4cbE.exit.thread.i"

bb.aa:                                            ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 2, ptr %i.a, align 8
  invoke fastcc void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$9set_stage17h584ad11f20d800c8E"(ptr noundef nonnull align 8 %i.n, ptr noalias noundef align 8 captures(address) dereferenceable(1160) %i.a)
          to label %bb.ad unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bp = landingpad { ptr, i32 }
          catch ptr null
  %i.bq = extractvalue { ptr, i32 } %i.bp, 0
  %i.br = invoke { ptr, ptr } @_ZN3std9panicking12catch_unwind7cleanup17h90994b58fc656da7E(ptr noundef %i.bq)
          to label %bb.ae unwind label %bb.ac     ; 2 uses

bb.ac:                                            ; preds = %bb.ab
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking19panic_cannot_unwind17hebe3a4840b691755E() #56
  unreachable

bb.ad:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17haafa875232d1f4cbE.exit.thread8.i"

bb.ae:                                            ; preds = %bb.ab
  %i.bt = extractvalue { ptr, ptr } %i.br, 0
  %i.bu = extractvalue { ptr, ptr } %i.br, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bu) ]
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17haafa875232d1f4cbE.exit.thread8.i"

"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17haafa875232d1f4cbE.exit.thread8.i": ; preds = %bb.ae, %bb.ad
  %.sroa.8.0.i1.i.i = phi ptr [ undef, %bb.ad ], [ %i.bu, %bb.ae ]
  %.sroa.6.0.i2.i.i = phi ptr [ null, %bb.ad ], [ %i.bt, %bb.ae ]
  %.sroa.01.0.i4.i.i = load i64, ptr %i.r, align 8, !range !70, !noundef !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.01.0.i4.i.i, ptr %i.bv, align 8
  %.sroa.53.0..sroa_idx.i5.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %.sroa.6.0.i2.i.i, ptr %.sroa.53.0..sroa_idx.i5.i.i, align 8
  %.sroa.64.0..sroa_idx.i6.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %.sroa.8.0.i1.i.i, ptr %.sroa.64.0..sroa_idx.i6.i.i, align 8
  store i32 1, ptr %i.b, align 8
  call fastcc void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$9set_stage17h584ad11f20d800c8E"(ptr noundef nonnull align 8 %i.n, ptr noalias noundef align 8 captures(address) dereferenceable(1160) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17haafa875232d1f4cbE.exit.thread.i"

"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17haafa875232d1f4cbE.exit.i": ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17haafa875232d1f4cbE.exit.thread6.i"
end_hunk_8
begin_hunk_9_@"_ZN5xtask5bench8workload11stop_report28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h1a0efc3a73d96329E":bb.a
  %.lcssa68.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa69.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.da ], [ %i.om, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i16 [ %i.oi, %bb.da ], [ %.cast.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.oo = add i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.op = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.oq = zext nneg i16 %i.op to i64
  %i.or = and i16 %i.oo, %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.os = sub nsw i64 0, %i.oq
  %i.ot = getelementptr inbounds [144 x i8], ptr %.lcssa68.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.os
  %i.ou = add i64 %i.oh, -1                       ; 2 uses
  %i.ov = getelementptr inbounds i8, ptr %i.ot, i64 -136
  call fastcc void @"_ZN4core3ptr139drop_in_place$LT$$LP$tracing_trace..entry..NewCallsite$C$alloc..vec..Vec$LT$$LP$core..time..Duration$C$core..time..Duration$RP$$GT$$RP$$GT$17h92b7505ea0c1291aE"(ptr noalias noundef readonly align 8 dereferenceable(136) %i.ov), !noalias !30216
  %.old5.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ou, 0
  br i1 %.old5.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h3f87f98b561a7f7cE.exit.i.i.i.i.i.i.i.i.i.i.i.i", label %bb.da

"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h3f87f98b561a7f7cE.exit.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h772babd450cf6e63E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i", %bb.cz
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.nz, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN4core3ptr436drop_in_place$LT$core..option..Option$LT$core..iter..adapters..map..Map$LT$std..collections..hash..map..IntoIter$LT$tracing_trace..entry..ResourceId$C$$LP$tracing_trace..entry..NewCallsite$C$alloc..vec..Vec$LT$$LP$core..time..Duration$C$core..time..Duration$RP$$GT$$RP$$GT$$C$tracing_trace..processor..span_stats..to_call_stats$LT$std..io..buffered..bufreader..BufReader$LT$std..fs..File$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17h98b101e134686294E.exit.i.i.i.i.i.i", label %bb.db

bb.db:                                            ; preds = %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h3f87f98b561a7f7cE.exit.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.ow = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.ox = load i64, ptr %i.ow, align 8, !alias.scope !30217, !noalias !30153, !noundef !24 ; 2 uses
  %i.oy = icmp eq i64 %i.ox, 0
  br i1 %i.oy, label %"_ZN4core3ptr436drop_in_place$LT$core..option..Option$LT$core..iter..adapters..map..Map$LT$std..collections..hash..map..IntoIter$LT$tracing_trace..entry..ResourceId$C$$LP$tracing_trace..entry..NewCallsite$C$alloc..vec..Vec$LT$$LP$core..time..Duration$C$core..time..Duration$RP$$GT$$RP$$GT$$C$tracing_trace..processor..span_stats..to_call_stats$LT$std..io..buffered..bufreader..BufReader$LT$std..fs..File$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17h98b101e134686294E.exit.i.i.i.i.i.i", label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.oz = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.pa = load ptr, ptr %i.oz, align 8, !alias.scope !30217, !noalias !30153, !nonnull !24, !noundef !24
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.pa, i64 noundef %i.ox, i64 noundef range(i64 1, -9223372036854775807) %i.nz) #47, !noalias !30218
  br label %"_ZN4core3ptr436drop_in_place$LT$core..option..Option$LT$core..iter..adapters..map..Map$LT$std..collections..hash..map..IntoIter$LT$tracing_trace..entry..ResourceId$C$$LP$tracing_trace..entry..NewCallsite$C$alloc..vec..Vec$LT$$LP$core..time..Duration$C$core..time..Duration$RP$$GT$$RP$$GT$$C$tracing_trace..processor..span_stats..to_call_stats$LT$std..io..buffered..bufreader..BufReader$LT$std..fs..File$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17h98b101e134686294E.exit.i.i.i.i.i.i"

"_ZN4core3ptr436drop_in_place$LT$core..option..Option$LT$core..iter..adapters..map..Map$LT$std..collections..hash..map..IntoIter$LT$tracing_trace..entry..ResourceId$C$$LP$tracing_trace..entry..NewCallsite$C$alloc..vec..Vec$LT$$LP$core..time..Duration$C$core..time..Duration$RP$$GT$$RP$$GT$$C$tracing_trace..processor..span_stats..to_call_stats$LT$std..io..buffered..bufreader..BufReader$LT$std..fs..File$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17h98b101e134686294E.exit.i.i.i.i.i.i": ; preds = %bb.dc, %bb.db, %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h3f87f98b561a7f7cE.exit.i.i.i.i.i.i.i.i.i.i.i.i", %bb.cy
  %.val.i.i.i.i.i.i = load i64, ptr %.sroa.4432.0..sroa_idx.i, align 8, !range !39, !alias.scope !30204, !noalias !30153, !noundef !24 ; 2 uses
  %switch.i.i.i.i.i.i = icmp sgt i64 %.val.i.i.i.i.i.i, 0
  br i1 %switch.i.i.i.i.i.i, label %bb.dd, label %.body192.i

bb.dd:                                            ; preds = %"_ZN4core3ptr436drop_in_place$LT$core..option..Option$LT$core..iter..adapters..map..Map$LT$std..collections..hash..map..IntoIter$LT$tracing_trace..entry..ResourceId$C$$LP$tracing_trace..entry..NewCallsite$C$alloc..vec..Vec$LT$$LP$core..time..Duration$C$core..time..Duration$RP$$GT$$RP$$GT$$C$tracing_trace..processor..span_stats..to_call_stats$LT$std..io..buffered..bufreader..BufReader$LT$std..fs..File$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17h98b101e134686294E.exit.i.i.i.i.i.i"
  %.val1.i.i.i.i.i.i = load ptr, ptr %.sroa.5433.0..sroa_idx.i, align 8, !alias.scope !30204, !noalias !30153, !nonnull !24, !noundef !24
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #47, !noalias !30219
  br label %.body192.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h876e8248a6eb19beE.exit.i.i.thread.i.i": ; preds = %bb.cc, %"_ZN4core3ptr436drop_in_place$LT$core..option..Option$LT$core..iter..adapters..map..Map$LT$std..collections..hash..map..IntoIter$LT$tracing_trace..entry..ResourceId$C$$LP$tracing_trace..entry..NewCallsite$C$alloc..vec..Vec$LT$$LP$core..time..Duration$C$core..time..Duration$RP$$GT$$RP$$GT$$C$tracing_trace..processor..span_stats..to_call_stats$LT$std..io..buffered..bufreader..BufReader$LT$std..fs..File$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17h98b101e134686294E.exit.i16.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !30151
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !30145
  br label %bb.eq

_ZN4core4iter6traits8iterator8Iterator7collect17hc5105c49a2f2547cE.exit.i.i.i: ; preds = %bb.cx, %"_ZN4core3ptr436drop_in_place$LT$core..option..Option$LT$core..iter..adapters..map..Map$LT$std..collections..hash..map..IntoIter$LT$tracing_trace..entry..ResourceId$C$$LP$tracing_trace..entry..NewCallsite$C$alloc..vec..Vec$LT$$LP$core..time..Duration$C$core..time..Duration$RP$$GT$$RP$$GT$$C$tracing_trace..processor..span_stats..to_call_stats$LT$std..io..buffered..bufreader..BufReader$LT$std..fs..File$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17h98b101e134686294E.exit.i.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !30180
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !30152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bj, ptr noundef nonnull align 8 dereferenceable(24) %i.bh, i64 24, i1 false), !noalias !30220
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !30152
  %.phi.trans.insert.i.i188.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %.pre.i.i189.i = load i64, ptr %.phi.trans.insert.i.i188.i, align 8, !noalias !30146 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !30151
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !30145
  %i.pb = icmp ult i64 %.pre.i.i189.i, 192153584101141163
  call void @llvm.assume(i1 %i.pb)
  %i.pc = icmp eq i64 %.pre.i.i189.i, 0
  br i1 %i.pc, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h876e8248a6eb19beE.exit.i.i.i.i", label %bb.df

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h876e8248a6eb19beE.exit.i.i.i.i": ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17hc5105c49a2f2547cE.exit.i.i.i
  %.val2.i.i.pre.i.i = load i64, ptr %i.bj, align 8, !range !30, !alias.scope !30221, !noalias !30146 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !30221)
  %i.pd = icmp eq i64 %.val2.i.i.pre.i.i, 0
  br i1 %i.pd, label %bb.eq, label %bb.de

bb.de:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h876e8248a6eb19beE.exit.i.i.i.i"
  %i.pe = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %.val.i.i.i191.i = load ptr, ptr %i.pe, align 8, !alias.scope !30221, !noalias !30146, !nonnull !24, !noundef !24
  %i.pf = mul nuw i64 %.val2.i.i.pre.i.i, 48
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i191.i, i64 noundef %i.pf, i64 noundef range(i64 1, -9223372036854775807) 8) #47, !noalias !30222
  br label %bb.eq

bb.df:                                            ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17hc5105c49a2f2547cE.exit.i.i.i
  %i.pg = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.ph = load ptr, ptr %i.pg, align 8, !noalias !30146, !nonnull !24, !noundef !24 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !30223
  %i.pi = icmp eq i64 %.pre.i.i189.i, 1
  br i1 %i.pi, label %bb.dj, label %bb.dg, !prof !29

bb.dg:                                            ; preds = %bb.df
  %i.pj = icmp samesign ult i64 %.pre.i.i189.i, 21
  br i1 %i.pj, label %bb.di, label %bb.dh, !prof !29

bb.dh:                                            ; preds = %bb.dg
  invoke void @_ZN4core5slice4sort6stable14driftsort_main17h7a5003ccbbfcac82E(ptr noalias noundef nonnull align 8 %i.ph, i64 noundef range(i64 1, 192153584101141163) %.pre.i.i189.i, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bd)
          to label %bb.dj unwind label %bb.ep, !noalias !30146

bb.di:                                            ; preds = %bb.dg
  call fastcc void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h7268a03877811f6fE(ptr noalias noundef nonnull align 8 %i.ph, i64 noundef range(i64 1, 192153584101141163) %.pre.i.i189.i)
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %bb.dh, %bb.df
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !30223
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.bj, align 8, !noalias !30146
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #47, !noalias !30224
  %i.pk = call noalias noundef align 8 dereferenceable_or_null(544) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 544, i64 noundef range(i64 1, -9223372036854775807) 8) #47, !noalias !30224 ; 5 uses
  %i.pl = icmp eq ptr %i.pk, null
  br i1 %i.pl, label %bb.dk, label %.loopexit84.i.i.i.i.i, !prof !26

bb.dk:                                            ; preds = %bb.dj
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 544) #54
          to label %.noexc.i.i.i.i unwind label %bb.eo, !noalias !30224

.noexc.i.i.i.i:                                   ; preds = %bb.dk
  unreachable

.loopexit84.i.i.i.i.i:                            ; preds = %bb.dj
  store ptr null, ptr %i.pk, align 8, !noalias !30224
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pk, i64 538
  store i16 0, ptr %i.pm, align 2, !noalias !30224
  %i.pn = getelementptr inbounds nuw [48 x i8], ptr %i.ph, i64 %.pre.i.i189.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !30225
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 3 uses
  %.sroa.490.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 48 ; 2 uses
  store ptr %i.ph, ptr %.sroa.490.0..sroa_idx.i.i.i.i, align 8, !noalias !30226
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 56 ; 4 uses
  store ptr %i.ph, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !30226
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 64 ; 2 uses
  store i64 %.sroa.0.0.copyload.i.i, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !noalias !30226
  %.sroa.7.0..sroa_idx91.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 72 ; 2 uses
  store ptr %i.pn, ptr %.sroa.7.0..sroa_idx91.i.i.i.i, align 8, !noalias !30226
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 16 ; 2 uses
  br label %bb.dl

bb.dl:                                            ; preds = %.loopexit.i.i.i.i.i, %.loopexit84.i.i.i.i.i
  %.promoted73.i.i.i.i.i.i = phi ptr [ %i.ph, %.loopexit84.i.i.i.i.i ], [ %.promoted73.i.i.pre.i.i.i.i, %.loopexit.i.i.i.i.i ]
  %i.po = phi ptr [ %i.pn, %.loopexit84.i.i.i.i.i ], [ %.pre.i.i.i.i, %.loopexit.i.i.i.i.i ] ; 4 uses
  %.sroa.012.0.i.i.i.i = phi i64 [ 0, %.loopexit84.i.i.i.i.i ], [ %i.xe, %.loopexit.i.i.i.i.i ] ; 2 uses
  %.sroa.8.0.i.i.i.i = phi i64 [ 0, %.loopexit84.i.i.i.i.i ], [ %.sroa.8.2.i.i.i.i, %.loopexit.i.i.i.i.i ] ; 6 uses
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.pk, %.loopexit84.i.i.i.i.i ], [ %.sroa.0.2.i.i.i.i, %.loopexit.i.i.i.i.i ] ; 8 uses
  %.promoted.i.i.i.i.i.i = phi i64 [ -9223372036854775807, %.loopexit84.i.i.i.i.i ], [ %.promoted.i152.i.i.i.i.i, %.loopexit.i.i.i.i.i ]
  %.sroa.0.070.i.i.i.i.i = phi ptr [ %i.pk, %.loopexit84.i.i.i.i.i ], [ %.sroa.0.1.i.i.i.i.i, %.loopexit.i.i.i.i.i ] ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !30227)
  %.sroa.5.sroa.0.0.copyload.pre.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !30227, !noalias !30225
  %.sroa.5.sroa.4.0.copyload.i.pre.i.i.i.i.i = load i64, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !30227, !noalias !30225
  br label %bb.dm

bb.dm:                                            ; preds = %"_ZN4core3ptr100drop_in_place$LT$$LP$alloc..string..String$C$tracing_trace..processor..span_stats..CallStats$RP$$GT$17hf3a510b58b3128cdE.exit18.i.i.i.i.i.i", %bb.dl
  %.sroa.5.sroa.4.0.copyload.i.i.i.i.i.i = phi i64 [ %.sroa.833.sroa.6.0.i.i.i.i.i.i, %"_ZN4core3ptr100drop_in_place$LT$$LP$alloc..string..String$C$tracing_trace..processor..span_stats..CallStats$RP$$GT$17hf3a510b58b3128cdE.exit18.i.i.i.i.i.i" ], [ %.sroa.5.sroa.4.0.copyload.i.pre.i.i.i.i.i, %bb.dl ]
  %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i = phi ptr [ %.val16.i.i.i.i.i.i, %"_ZN4core3ptr100drop_in_place$LT$$LP$alloc..string..String$C$tracing_trace..processor..span_stats..CallStats$RP$$GT$17hf3a510b58b3128cdE.exit18.i.i.i.i.i.i" ], [ %.sroa.5.sroa.0.0.copyload.pre.i.i.i.i.i.i, %bb.dl ]
  %i.pp = phi ptr [ %i.pu, %"_ZN4core3ptr100drop_in_place$LT$$LP$alloc..string..String$C$tracing_trace..processor..span_stats..CallStats$RP$$GT$17hf3a510b58b3128cdE.exit18.i.i.i.i.i.i" ], [ %.promoted73.i.i.i.i.i.i, %bb.dl ] ; 8 uses
  %.sroa.0.0.copyload5.i72.i.i.i.i.i.i = phi i64 [ %.sroa.0.0.copyload5.i.i.i.i.i.i.i, %"_ZN4core3ptr100drop_in_place$LT$$LP$alloc..string..String$C$tracing_trace..processor..span_stats..CallStats$RP$$GT$17hf3a510b58b3128cdE.exit18.i.i.i.i.i.i" ], [ %.promoted.i.i.i.i.i.i, %bb.dl ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12.i.i.i.i.i.i)
  store i64 -9223372036854775807, ptr %i.bc, align 8, !alias.scope !30227, !noalias !30225
  %.not.i.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload5.i72.i.i.i.i.i.i, -9223372036854775807
  br i1 %.not.i.i.i.i.i.i, label %bb.dn, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8243f6a5650c5a65E.exit.i.i.i.i.i.i"

bb.dn:                                            ; preds = %bb.dm
  call void @llvm.experimental.noalias.scope.decl(metadata !30228)
  %i.pq = icmp eq ptr %i.pp, %i.po
  br i1 %i.pq, label %bb.du, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pp, i64 48 ; 2 uses
  store ptr %i.pr, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !alias.scope !30229, !noalias !30225
  %.sroa.031.0.copyload32.i.i.i.i.i.i = load i64, ptr %i.pp, align 8, !noalias !30230
  %.sroa.833.0..sroa_idx34.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.pp, i64 8
  %.sroa.833.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.833.0..sroa_idx34.i.i.i.i.i.i, align 8, !noalias !30230
  %.sroa.833.sroa.6.0..sroa.833.0..sroa_idx34.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.pp, i64 16
  %.sroa.833.sroa.6.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.833.sroa.6.0..sroa.833.0..sroa_idx34.sroa_idx.i.i.i.i.i.i, align 8, !noalias !30230
  br label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8243f6a5650c5a65E.exit.i.i.i.i.i.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8243f6a5650c5a65E.exit.i.i.i.i.i.i": ; preds = %bb.do, %bb.dm
  %.pn.i.i.i.i.i.i = phi ptr [ %i.pp, %bb.do ], [ %i.bc, %bb.dm ]
  %i.ps = phi ptr [ %i.pr, %bb.do ], [ %i.pp, %bb.dm ] ; 5 uses
  %.sroa.833.sroa.0.0.i.i.i.i.i.i = phi ptr [ %.sroa.833.sroa.0.0.copyload.i.i.i.i.i.i, %bb.do ], [ %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i, %bb.dm ] ; 7 uses
  %.sroa.833.sroa.6.0.i.i.i.i.i.i = phi i64 [ %.sroa.833.sroa.6.0.copyload.i.i.i.i.i.i, %bb.do ], [ %.sroa.5.sroa.4.0.copyload.i.i.i.i.i.i, %bb.dm ] ; 5 uses
  %.sroa.031.0.i.i.i.i.i.i = phi i64 [ %.sroa.031.0.copyload32.i.i.i.i.i.i, %bb.do ], [ %.sroa.0.0.copyload5.i72.i.i.i.i.i.i, %bb.dm ] ; 8 uses
  %.not9.i.i.i.i.i.i = icmp eq i64 %.sroa.031.0.i.i.i.i.i.i, -9223372036854775808
  br i1 %.not9.i.i.i.i.i.i, label %bb.du, label %bb.dp

bb.dp:                                            ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8243f6a5650c5a65E.exit.i.i.i.i.i.i"
  %.sroa.833.sroa.7.0..sroa.833.0..sroa_idx34.sroa_idx.sink.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i.i.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.12.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.833.sroa.7.0..sroa.833.0..sroa_idx34.sroa_idx.sink.i.i.i.i.i.i, i64 24, i1 false), !noalias !30225
  call void @llvm.experimental.noalias.scope.decl(metadata !30231)
  call void @llvm.experimental.noalias.scope.decl(metadata !30232)
  call void @llvm.experimental.noalias.scope.decl(metadata !30233)
  call void @llvm.experimental.noalias.scope.decl(metadata !30234)
  %i.pt = icmp eq ptr %i.ps, %i.po
  br i1 %i.pt, label %.thread.i.i.i.i.i.i, label %bb.dq

.thread.i.i.i.i.i.i:                              ; preds = %bb.dp
  store i64 -9223372036854775808, ptr %i.bc, align 8, !alias.scope !30235, !noalias !30225
  br label %.loopexit55.i.i.i.i.i.i

bb.dq:                                            ; preds = %bb.dp
  %i.pu = getelementptr inbounds nuw i8, ptr %i.ps, i64 48 ; 2 uses
  store ptr %i.pu, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !alias.scope !30236, !noalias !30225
  %.sroa.0.0.copyload5.i.i.i.i.i.i.i = load i64, ptr %i.ps, align 8, !noalias !30237 ; 6 uses
  %.sroa.5.0..sroa_idx6.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ps, i64 8
  store i64 %.sroa.0.0.copyload5.i.i.i.i.i.i.i, ptr %i.bc, align 8, !alias.scope !30235, !noalias !30225
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..sroa_idx6.i.i.i.i.i.i.i, i64 40, i1 false), !noalias !30238
  %i.pv = icmp ne i64 %.sroa.0.0.copyload5.i.i.i.i.i.i.i, -9223372036854775807
  call void @llvm.assume(i1 %i.pv)
  %.not10.i.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload5.i.i.i.i.i.i.i, -9223372036854775808
  br i1 %.not10.i.i.i.i.i.i, label %.loopexit55.i.i.i.i.i.i, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %.val17.i.i.i.i.i.i = load i64, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !30227, !noalias !30225, !noundef !24
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.833.sroa.0.0.i.i.i.i.i.i) ]
  %.not.i.i.i.i.i.i.i2.i.i.i = icmp eq i64 %.sroa.833.sroa.6.0.i.i.i.i.i.i, %.val17.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i2.i.i.i, label %_ZN4core3cmp9PartialEq2ne17h58045309ab4fab65E.exit.i.i.i.i.i.i, label %.loopexit55.i.i.i.i.i.i

_ZN4core3cmp9PartialEq2ne17h58045309ab4fab65E.exit.i.i.i.i.i.i: ; preds = %bb.dr
  %.val16.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !30227, !noalias !30225, !nonnull !24, !noundef !24 ; 2 uses
  %bcmp.i.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly align 1 %.sroa.833.sroa.0.0.i.i.i.i.i.i, ptr nonnull readonly align 1 %.val16.i.i.i.i.i.i, i64 %.sroa.833.sroa.6.0.i.i.i.i.i.i), !alias.scope !30239, !noalias !30240
  %.not54.i.i.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not54.i.i.i.i.i.i, label %bb.ds, label %.loopexit55.i.i.i.i.i.i

bb.ds:                                            ; preds = %_ZN4core3cmp9PartialEq2ne17h58045309ab4fab65E.exit.i.i.i.i.i.i
  %i.pw = icmp eq i64 %.sroa.031.0.i.i.i.i.i.i, 0
  br i1 %i.pw, label %"_ZN4core3ptr100drop_in_place$LT$$LP$alloc..string..String$C$tracing_trace..processor..span_stats..CallStats$RP$$GT$17hf3a510b58b3128cdE.exit18.i.i.i.i.i.i", label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.833.sroa.0.0.i.i.i.i.i.i, i64 noundef %.sroa.031.0.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #47, !noalias !30241
  br label %"_ZN4core3ptr100drop_in_place$LT$$LP$alloc..string..String$C$tracing_trace..processor..span_stats..CallStats$RP$$GT$17hf3a510b58b3128cdE.exit18.i.i.i.i.i.i"

"_ZN4core3ptr100drop_in_place$LT$$LP$alloc..string..String$C$tracing_trace..processor..span_stats..CallStats$RP$$GT$17hf3a510b58b3128cdE.exit18.i.i.i.i.i.i": ; preds = %bb.dt, %bb.ds
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.i.i.i.i.i.i)
  br label %bb.dm

.body.i.i.i.i.i.sink.split:                       ; preds = %bb.en, %bb.ei
  %.pn.i.i.i.i.i.ph = phi { ptr, i32 } [ %i.ub, %bb.ei ], [ %i.xs, %bb.en ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.833.sroa.0.0.i.i.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.833.sroa.0.0.i.i.i.i.i.i, i64 noundef %.sroa.031.0.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #47, !noalias !30225
  br label %.body.i.i.i.i.i

.body.i.i.i.i.i:                                  ; preds = %.body.i.i.i.i.i.sink.split, %bb.en, %bb.ei
  %.pn.i.i.i.i.i = phi { ptr, i32 } [ %i.ub, %bb.ei ], [ %i.xs, %bb.en ], [ %.pn.i.i.i.i.i.ph, %.body.i.i.i.i.i.sink.split ]
  call fastcc void @"_ZN4core3ptr282drop_in_place$LT$alloc..collections..btree..dedup_sorted_iter..DedupSortedIter$LT$alloc..string..String$C$tracing_trace..processor..span_stats..CallStats$C$alloc..vec..into_iter..IntoIter$LT$$LP$alloc..string..String$C$tracing_trace..processor..span_stats..CallStats$RP$$GT$$GT$$GT$17h7f64fba9d32e8a40E"(ptr noalias noundef align 8 dereferenceable(80) %i.bc) #55, !noalias !30225
  br label %.body192.i

.loopexit55.i.i.i.i.i.i:                          ; preds = %_ZN4core3cmp9PartialEq2ne17h58045309ab4fab65E.exit.i.i.i.i.i.i, %bb.dr, %bb.dq, %.thread.i.i.i.i.i.i
  %.promoted.i153.i.i.i.i.i = phi i64 [ -9223372036854775808, %.thread.i.i.i.i.i.i ], [ %.sroa.0.0.copyload5.i.i.i.i.i.i.i, %bb.dr ], [ %.sroa.0.0.copyload5.i.i.i.i.i.i.i, %_ZN4core3cmp9PartialEq2ne17h58045309ab4fab65E.exit.i.i.i.i.i.i ], [ -9223372036854775808, %bb.dq ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.12.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.12.i.i.i.i.i.i, i64 24, i1 false), !noalias !30225
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.i.i.i.i.i.i)
  %i.px = getelementptr inbounds nuw i8, ptr %.sroa.0.070.i.i.i.i.i, i64 538 ; 2 uses
  %i.py = load i16, ptr %i.px, align 2, !noalias !30225, !noundef !24 ; 3 uses
  %i.pz = icmp ult i16 %i.py, 11
  br i1 %i.pz, label %bb.em, label %.preheader.i.i.i.i.i

bb.du:                                            ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8243f6a5650c5a65E.exit.i.i.i.i.i.i", %bb.dn
  %i.qa = phi ptr [ %i.pp, %bb.dn ], [ %i.ps, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8243f6a5650c5a65E.exit.i.i.i.i.i.i" ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.i.i.i.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !30242)
  call void @llvm.experimental.noalias.scope.decl(metadata !30243)
  call void @llvm.experimental.noalias.scope.decl(metadata !30244)
  call void @llvm.experimental.noalias.scope.decl(metadata !30245)
  %i.qb = ptrtoint ptr %i.po to i64
  %i.qc = ptrtoint ptr %i.qa to i64
  %i.qd = sub nuw i64 %i.qb, %i.qc
  %i.qe = udiv exact i64 %i.qd, 48
  call void @llvm.experimental.noalias.scope.decl(metadata !30246)
  %i.qf = icmp eq ptr %i.po, %i.qa
  br i1 %i.qf, label %"_ZN4core3ptr110drop_in_place$LT$$u5b$$LP$alloc..string..String$C$tracing_trace..processor..span_stats..CallStats$RP$$u5d$$GT$17h6ae1d224ecdd9910E.exit.i.i.i.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.du, %"_ZN4core3ptr100drop_in_place$LT$$LP$alloc..string..String$C$tracing_trace..processor..span_stats..CallStats$RP$$GT$17hf3a510b58b3128cdE.exit.i.i.i.i.i.i.i.i.i.i"
  %.sroa.0.011.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.qh, %"_ZN4core3ptr100drop_in_place$LT$$LP$alloc..string..String$C$tracing_trace..processor..span_stats..CallStats$RP$$GT$17hf3a510b58b3128cdE.exit.i.i.i.i.i.i.i.i.i.i" ], [ 0, %bb.du ] ; 2 uses
  %i.qg = getelementptr inbounds nuw [48 x i8], ptr %i.qa, i64 %.sroa.0.011.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.qh = add nuw i64 %.sroa.0.011.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %.val8.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.qg, align 8, !alias.scope !30247, !noalias !30248 ; 2 uses
  %i.qi = icmp eq i64 %.val8.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.qi, label %"_ZN4core3ptr100drop_in_place$LT$$LP$alloc..string..String$C$tracing_trace..processor..span_stats..CallStats$RP$$GT$17hf3a510b58b3128cdE.exit.i.i.i.i.i.i.i.i.i.i", label %bb.dv

bb.dv:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.qj = getelementptr i8, ptr %i.qg, i64 8
  %.val9.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.qj, align 8, !alias.scope !30246, !noalias !30248, !nonnull !24, !noundef !24
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val8.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #47, !noalias !30249
  br label %"_ZN4core3ptr100drop_in_place$LT$$LP$alloc..string..String$C$tracing_trace..processor..span_stats..CallStats$RP$$GT$17hf3a510b58b3128cdE.exit.i.i.i.i.i.i.i.i.i.i"

"_ZN4core3ptr100drop_in_place$LT$$LP$alloc..string..String$C$tracing_trace..processor..span_stats..CallStats$RP$$GT$17hf3a510b58b3128cdE.exit.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.dv, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.qk = icmp eq i64 %i.qh, %i.qe
  br i1 %i.qk, label %"_ZN4core3ptr110drop_in_place$LT$$u5b$$LP$alloc..string..String$C$tracing_trace..processor..span_stats..CallStats$RP$$u5d$$GT$17h6ae1d224ecdd9910E.exit.i.i.i.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i

"_ZN4core3ptr110drop_in_place$LT$$u5b$$LP$alloc..string..String$C$tracing_trace..processor..span_stats..CallStats$RP$$u5d$$GT$17h6ae1d224ecdd9910E.exit.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN4core3ptr100drop_in_place$LT$$LP$alloc..string..String$C$tracing_trace..processor..span_stats..CallStats$RP$$GT$17hf3a510b58b3128cdE.exit.i.i.i.i.i.i.i.i.i.i", %bb.du
  %i.ql = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !alias.scope !30250, !noalias !30225, !noundef !24 ; 2 uses
  %i.qm = icmp eq i64 %i.ql, 0
  br i1 %i.qm, label %"_ZN4core3ptr282drop_in_place$LT$alloc..collections..btree..dedup_sorted_iter..DedupSortedIter$LT$alloc..string..String$C$tracing_trace..processor..span_stats..CallStats$C$alloc..vec..into_iter..IntoIter$LT$$LP$alloc..string..String$C$tracing_trace..processor..span_stats..CallStats$RP$$GT$$GT$$GT$17h7f64fba9d32e8a40E.exit.i.i.i.i.i", label %bb.dw

bb.dw:                                            ; preds = %"_ZN4core3ptr110drop_in_place$LT$$u5b$$LP$alloc..string..String$C$tracing_trace..processor..span_stats..CallStats$RP$$u5d$$GT$17h6ae1d224ecdd9910E.exit.i.i.i.i.i.i.i.i.i"
  %i.qn = load ptr, ptr %.sroa.490.0..sroa_idx.i.i.i.i, align 8, !alias.scope !30250, !noalias !30225, !nonnull !24, !noundef !24
  %i.qo = mul nuw i64 %i.ql, 48
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.qn, i64 noundef %i.qo, i64 noundef range(i64 1, -9223372036854775807) 8) #47, !noalias !30248
  br label %"_ZN4core3ptr282drop_in_place$LT$alloc..collections..btree..dedup_sorted_iter..DedupSortedIter$LT$alloc..string..String$C$tracing_trace..processor..span_stats..CallStats$C$alloc..vec..into_iter..IntoIter$LT$$LP$alloc..string..String$C$tracing_trace..processor..span_stats..CallStats$RP$$GT$$GT$$GT$17h7f64fba9d32e8a40E.exit.i.i.i.i.i"

"_ZN4core3ptr282drop_in_place$LT$alloc..collections..btree..dedup_sorted_iter..DedupSortedIter$LT$alloc..string..String$C$tracing_trace..processor..span_stats..CallStats$C$alloc..vec..into_iter..IntoIter$LT$$LP$alloc..string..String$C$tracing_trace..processor..span_stats..CallStats$RP$$GT$$GT$$GT$17h7f64fba9d32e8a40E.exit.i.i.i.i.i": ; preds = %bb.dw, %"_ZN4core3ptr110drop_in_place$LT$$u5b$$LP$alloc..string..String$C$tracing_trace..processor..span_stats..CallStats$RP$$u5d$$GT$17h6ae1d224ecdd9910E.exit.i.i.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !30225
  %i.qp = icmp eq i64 %.sroa.8.0.i.i.i.i, 0
  br i1 %i.qp, label %.loopexit.i.i.i, label %.lr.ph.i17.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i:                             ; preds = %"_ZN4core3ptr282drop_in_place$LT$alloc..collections..btree..dedup_sorted_iter..DedupSortedIter$LT$alloc..string..String$C$tracing_trace..processor..span_stats..CallStats$C$alloc..vec..into_iter..IntoIter$LT$$LP$alloc..string..String$C$tracing_trace..processor..span_stats..CallStats$RP$$GT$$GT$$GT$17h7f64fba9d32e8a40E.exit.i.i.i.i.i"
  %i.qq = getelementptr inbounds nuw i8, ptr %i.az, i64 24 ; 2 uses
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dz, %.lr.ph.i17.i.i.i.i.i
  %.sroa.02.010.i.i.i.i.i.i = phi i64 [ %.sroa.8.0.i.i.i.i, %.lr.ph.i17.i.i.i.i.i ], [ %i.qy, %bb.dz ]
  %.sroa.03.09.i.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i, %.lr.ph.i17.i.i.i.i.i ], [ %i.rb, %bb.dz ] ; 4 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %.sroa.03.09.i.i.i.i.i.i, i64 538
  %i.qs = load i16, ptr %i.qr, align 2, !noalias !30225, !noundef !24 ; 3 uses
  %.not.i18.i.i.i.i.i = icmp eq i16 %i.qs, 0
  br i1 %.not.i18.i.i.i.i.i, label %.noexc19.i.i.i.i.invoke.i, label %bb.dy, !prof !26

bb.dy:                                            ; preds = %bb.dx
  %i.qt = zext nneg i16 %i.qs to i64
  %i.qu = add nsw i64 %i.qt, -1                   ; 3 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %.sroa.03.09.i.i.i.i.i.i, i64 544
  %i.qw = getelementptr inbounds nuw [8 x i8], ptr %i.qv, i64 %i.qu ; 2 uses
  %i.qx = load ptr, ptr %i.qw, align 8, !noalias !30251, !nonnull !24, !noundef !24 ; 4 uses
  %i.qy = add i64 %.sroa.02.010.i.i.i.i.i.i, -1   ; 3 uses
  %i.qz = icmp ult i16 %i.qs, 12
  call void @llvm.assume(i1 %i.qz)
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qw, i64 8
  %i.rb = load ptr, ptr %i.ra, align 8, !noalias !30252, !nonnull !24, !noundef !24 ; 16 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %i.rb, i64 538 ; 2 uses
  %i.rd = load i16, ptr %i.rc, align 2, !noalias !30225, !noundef !24 ; 3 uses
  %i.re = icmp ult i16 %i.rd, 5
  br i1 %i.re, label %bb.ea, label %bb.dz

bb.dz:                                            ; preds = %"_ZN5alloc11collections5btree4node29BalancingContext$LT$K$C$V$GT$15bulk_steal_left17h08d1412491238cb6E.exit.i.i.i.i.i.i", %bb.dy
  %i.rf = icmp eq i64 %i.qy, 0
  br i1 %i.rf, label %.loopexit.i.i.i, label %bb.dx

bb.ea:                                            ; preds = %bb.dy
  %narrow.i.i.i.i.i.i = sub nuw nsw i16 5, %i.rd  ; 2 uses
  %i.rg = zext nneg i16 %narrow.i.i.i.i.i.i to i64 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
  %i.rh = getelementptr inbounds nuw i8, ptr %i.qx, i64 538 ; 2 uses
  %i.ri = load i16, ptr %i.rh, align 2, !noalias !30253, !noundef !24 ; 2 uses
  %i.rj = zext nneg i16 %i.rd to i64              ; 2 uses
  %.not.i.i.i.i3.i.i.i = icmp ugt i16 %narrow.i.i.i.i.i.i, %i.ri
  br i1 %.not.i.i.i.i3.i.i.i, label %.noexc19.i.i.i.i.invoke.i, label %_ZN5alloc11collections5btree4node13move_to_slice17ha11ec6fc16658368E.exit.i.i.i.i.i.i.i, !prof !26

.noexc19.i.i.i.i.invoke.i:                        ; preds = %bb.ea, %bb.dx
  %i.rk = phi ptr [ @646, %bb.dx ], [ @671, %bb.ea ]
  %i.rl = phi i64 [ 25, %bb.dx ], [ 39, %bb.ea ]
  %i.rm = phi ptr [ @648, %bb.dx ], [ @672, %bb.ea ]
  invoke void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.rk, i64 noundef %i.rl, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.rm) #54
          to label %.noexc19.i.i.i.i.cont.i unwind label %bb.ay, !noalias !30093

.noexc19.i.i.i.i.cont.i:                          ; preds = %.noexc19.i.i.i.i.invoke.i
  unreachable

_ZN5alloc11collections5btree4node13move_to_slice17ha11ec6fc16658368E.exit.i.i.i.i.i.i.i: ; preds = %bb.ea
  %i.rn = zext i16 %i.ri to i64                   ; 2 uses
  %i.ro = sub nuw nsw i64 %i.rn, %i.rg            ; 4 uses
  %i.rp = trunc nuw i64 %i.ro to i16
  store i16 %i.rp, ptr %i.rh, align 2, !noalias !30253
  store i16 5, ptr %i.rc, align 2, !noalias !30253
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rb, i64 8 ; 4 uses
  %i.rr = getelementptr inbounds nuw [24 x i8], ptr %i.rq, i64 %i.rg
  %i.rs = mul nuw nsw i64 %i.rj, 24               ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.rr, ptr nonnull align 8 %i.rq, i64 %i.rs, i1 false), !alias.scope !30254, !noalias !30253
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rb, i64 272 ; 4 uses
  %i.ru = getelementptr inbounds nuw [24 x i8], ptr %i.rt, i64 %i.rg
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ru, ptr nonnull align 8 %i.rt, i64 %i.rs, i1 false), !alias.scope !30255, !noalias !30253
  %i.rv = add nuw nsw i64 %i.ro, 1                ; 4 uses
  %i.rw = sub nuw nsw i64 %i.rn, %i.rv            ; 3 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %i.qx, i64 8 ; 2 uses
  %i.ry = getelementptr inbounds nuw [24 x i8], ptr %i.rx, i64 %i.rv
  %i.rz = mul nuw nsw i64 %i.rw, 24               ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.rq, ptr nonnull readonly align 8 %i.ry, i64 %i.rz, i1 false), !alias.scope !30256, !noalias !30253
  %i.sa = getelementptr inbounds nuw i8, ptr %i.qx, i64 272 ; 2 uses
  %i.sb = getelementptr inbounds nuw [24 x i8], ptr %i.sa, i64 %i.rv
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.rt, ptr nonnull readonly align 8 %i.sb, i64 %i.rz, i1 false), !alias.scope !30257, !noalias !30253
  %i.sc = getelementptr inbounds nuw [24 x i8], ptr %i.rx, i64 %i.ro
  %i.sd = getelementptr inbounds nuw [24 x i8], ptr %i.sa, i64 %i.ro
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ba, ptr noundef nonnull align 8 dereferenceable(24) %i.sd, i64 24, i1 false), !noalias !30253
  %i.se = getelementptr inbounds nuw i8, ptr %.sroa.03.09.i.i.i.i.i.i, i64 8
  %i.sf = getelementptr inbounds nuw [24 x i8], ptr %i.se, i64 %i.qu ; 2 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %.sroa.03.09.i.i.i.i.i.i, i64 272
  %i.sh = getelementptr inbounds nuw [24 x i8], ptr %i.sg, i64 %i.qu ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.az, ptr noundef nonnull align 8 dereferenceable(24) %i.sf, i64 24, i1 false), !noalias !30253
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.sf, ptr noundef nonnull align 8 dereferenceable(24) %i.sc, i64 24, i1 false), !noalias !30253
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.qq, ptr noundef nonnull align 8 dereferenceable(24) %i.sh, i64 24, i1 false), !noalias !30253
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.sh, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.ba, i64 24, i1 false), !noalias !30258
  %i.si = getelementptr inbounds nuw [24 x i8], ptr %i.rq, i64 %i.rw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.si, ptr noundef nonnull align 8 dereferenceable(24) %i.az, i64 24, i1 false), !noalias !30253
  %i.sj = getelementptr inbounds nuw [24 x i8], ptr %i.rt, i64 %i.rw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.sj, ptr noundef nonnull align 8 dereferenceable(24) %i.qq, i64 24, i1 false), !noalias !30253
  %.not183.i.i.i.i.i.i.i = icmp eq i64 %i.qy, 0
  br i1 %.not183.i.i.i.i.i.i.i, label %"_ZN5alloc11collections5btree4node29BalancingContext$LT$K$C$V$GT$15bulk_steal_left17h08d1412491238cb6E.exit.i.i.i.i.i.i", label %"_ZN5alloc11collections5btree4node29BalancingContext$LT$K$C$V$GT$15bulk_steal_left17h08d1412491238cb6E.exit.loopexit.i.i.i.i.i.i"

"_ZN5alloc11collections5btree4node29BalancingContext$LT$K$C$V$GT$15bulk_steal_left17h08d1412491238cb6E.exit.loopexit.i.i.i.i.i.i": ; preds = %_ZN5alloc11collections5btree4node13move_to_slice17ha11ec6fc16658368E.exit.i.i.i.i.i.i.i
  %i.sk = getelementptr inbounds nuw i8, ptr %i.rb, i64 544 ; 4 uses
  %i.sl = getelementptr inbounds nuw [8 x i8], ptr %i.sk, i64 %i.rg
  %i.sm = shl nuw nsw i64 %i.rj, 3
  %i.sn = add nuw nsw i64 %i.sm, 8
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.sl, ptr noundef nonnull align 8 dereferenceable(1) %i.sk, i64 %i.sn, i1 false), !alias.scope !30259, !noalias !30253
  %i.so = getelementptr inbounds nuw i8, ptr %i.qx, i64 544
  %i.sp = getelementptr inbounds nuw [8 x i8], ptr %i.so, i64 %i.rv
  %i.sq = shl nuw nsw i64 %i.rg, 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.sk, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.sp, i64 %i.sq, i1 false), !alias.scope !30260, !noalias !30253
  %i.sr = load ptr, ptr %i.sk, align 8, !noalias !30261, !nonnull !24, !noundef !24 ; 2 uses
  store ptr %i.rb, ptr %i.sr, align 8, !noalias !30262
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sr, i64 536
  store i16 0, ptr %i.ss, align 8, !noalias !30262
  %i.st = getelementptr inbounds nuw i8, ptr %i.rb, i64 552
  %i.su = load ptr, ptr %i.st, align 8, !noalias !30261, !nonnull !24, !noundef !24 ; 2 uses
  store ptr %i.rb, ptr %i.su, align 8, !noalias !30262
  %i.sv = getelementptr inbounds nuw i8, ptr %i.su, i64 536
  store i16 1, ptr %i.sv, align 8, !noalias !30262
  %i.sw = getelementptr inbounds nuw i8, ptr %i.rb, i64 560
  %i.sx = load ptr, ptr %i.sw, align 8, !noalias !30261, !nonnull !24, !noundef !24 ; 2 uses
  store ptr %i.rb, ptr %i.sx, align 8, !noalias !30262
end_hunk_9
begin_hunk_10_@"_ZN7reqwest10async_impl8response8Response5bytes28_$u7b$$u7b$closure$u7d$$u7d$17hba0b216e3d972376E":bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 416 ; 3 uses
  %i.w = load i8, ptr %i.v, align 8, !range !90, !noundef !24
  switch i8 %i.w, label %default.unreachable405 [
    i8 0, label %bb.b
    i8 1, label %bb.h
    i8 2, label %bb.i
    i8 3, label %bb.e
  ]

default.unreachable405:                           ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 136
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.x, ptr noundef nonnull align 8 dereferenceable(136) %1, i64 136, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.u, ptr noundef nonnull align 8 dereferenceable(128) %1, i64 128, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41289)
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 112
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !41289, !nonnull !24, !align !42, !noundef !24 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 120
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !41289, !nonnull !24, !align !31, !noundef !24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41290)
  invoke fastcc void @"_ZN4core3ptr49drop_in_place$LT$http..header..map..HeaderMap$GT$17he04bf0689d578762E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(128) %i.u)
          to label %"_ZN4core3ptr42drop_in_place$LT$http..response..Parts$GT$17h4d85b9bfdb2132beE.exit.i" unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ac = landingpad { ptr, i32 }
          cleanup
  %i.ad = getelementptr inbounds nuw i8, ptr %i.u, i64 96
  %.val1.i.i = load ptr, ptr %i.ad, align 8, !alias.scope !41291, !align !31, !noundef !24
  invoke fastcc void @"_ZN4core3ptr49drop_in_place$LT$http..extensions..Extensions$GT$17hae5432ff86390e45E"(ptr %.val1.i.i) #55
          to label %.body unwind label %bb.d, !noalias !41291

bb.d:                                             ; preds = %bb.c
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !41291
  unreachable

"_ZN4core3ptr42drop_in_place$LT$http..response..Parts$GT$17h4d85b9bfdb2132beE.exit.i": ; preds = %bb.b
  %i.af = getelementptr inbounds nuw i8, ptr %i.u, i64 96
  %.val.i.i = load ptr, ptr %i.af, align 8, !alias.scope !41291, !align !31, !noundef !24
  invoke fastcc void @"_ZN4core3ptr49drop_in_place$LT$http..extensions..Extensions$GT$17hae5432ff86390e45E"(ptr %.val.i.i)
          to label %bb.g unwind label %bb.f

bb.e:                                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 400
  %.val429.i.pre = load ptr, ptr %.phi.trans.insert, align 8, !alias.scope !41292
  %.phi.trans.insert376 = getelementptr inbounds nuw i8, ptr %1, i64 408
  %.val44430.i.pre = load ptr, ptr %.phi.trans.insert376, align 8, !alias.scope !41292
  br label %bb.j

bb.f:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$http..response..Parts$GT$17h4d85b9bfdb2132beE.exit.i"
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.ag, %bb.f ], [ %i.ac, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %.body19

bb.g:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$http..response..Parts$GT$17h4d85b9bfdb2132beE.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %.sroa.1040.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 384
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.1040.0..sroa_idx, i8 0, i64 16, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 272
  store i64 3, ptr %i.ah, align 8
  %.sroa.838.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 368
  store i64 0, ptr %.sroa.838.0..sroa_idx, align 8
  %.sroa.939.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 376
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.939.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 400
  store ptr %i.z, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.1241.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 408
  store ptr %i.ab, ptr %.sroa.1241.0..sroa_idx, align 8
  br label %bb.j

.body19:                                          ; preds = %bb.dl, %bb.db, %bb.cx, %.body14, %.body
  %.pn5.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %eh.lpad-body15, %.body14 ], [ %i.nn, %bb.db ], [ %i.mx, %bb.cx ], [ %i.pi, %bb.dl ]
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 264
  %.val10 = load ptr, ptr %i.ai, align 8, !nonnull !24, !noundef !24
  call fastcc void @"_ZN4core3ptr54drop_in_place$LT$alloc..boxed..Box$LT$url..Url$GT$$GT$17h9f399d07d71b2abdE"(ptr nonnull %.val10) #55
  store i8 2, ptr %i.v, align 8
  resume { ptr, i32 } %.pn5.pn

bb.h:                                             ; preds = %bb.a
  tail call void @_ZN4core9panicking11panic_const28panic_const_async_fn_resumed17h8d6dad3360c2bb22E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1728) #54
  unreachable

bb.i:                                             ; preds = %bb.a
  tail call void @_ZN4core9panicking11panic_const34panic_const_async_fn_resumed_panic17h6d9e40c4d287ecadE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1728) #54
  unreachable

bb.j:                                             ; preds = %bb.e, %bb.g
  %.val44430.i = phi ptr [ %.val44430.i.pre, %bb.e ], [ %i.ab, %bb.g ]
  %.val429.i = phi ptr [ %.val429.i.pre, %bb.e ], [ %i.z, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.1245)
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 272 ; 14 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41293)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41292)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.655)
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 400
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 408
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !41294
  %i.am = getelementptr inbounds nuw i8, ptr %.val44430.i, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !invariant.load !24, !noalias !41295, !nonnull !24
  invoke void %i.an(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.t, ptr noundef nonnull align 1 %.val429.i, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !41080

.noexc:                                           ; preds = %bb.j
  %i.ao = load i64, ptr %i.t, align 8, !range !74, !noalias !41294, !noundef !24 ; 2 uses
  %i.ap = icmp eq i64 %i.ao, 6
  br i1 %i.ap, label %.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.noexc
  %.sroa.416.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 5 uses
  %.sroa.517.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.sroa.618.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 24 ; 2 uses
  %.sroa.5196.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 48 ; 2 uses
  %.sroa.4195.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 6 uses
  %.sroa.219.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 32 ; 3 uses
  %.sroa.322.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 40 ; 3 uses
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 80
  %.sroa.732.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 88
  %i.ar = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.as = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 48 ; 12 uses
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 312 ; 5 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 296 ; 6 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 344 ; 5 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 352 ; 5 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 360 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 304 ; 6 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 10 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.be = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.483.8..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.584.8..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.bg = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.bh = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 320 ; 5 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 336 ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.bn = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 328 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.bs = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.bt = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 2 uses
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 96
  %i.bu = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 368 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 392 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 384
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 376
  %i.bz = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.ca = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.554.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.sroa.655.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %.sroa.655.40..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.655, i64 16
  %.sroa.655.48..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.655, i64 24 ; 2 uses
  br label %bb.k

.thread:                                          ; preds = %.noexc12, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !41294
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.655)
  br label %bb.cv

bb.k:                                             ; preds = %.noexc12, %.lr.ph.i
  %i.cb = phi i64 [ %i.mt, %.noexc12 ], [ %i.ao, %.lr.ph.i ] ; 5 uses
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !41294 ; 4 uses
  %.sroa.554.0.copyload = load ptr, ptr %.sroa.554.0..sroa_idx, align 8, !noalias !41294 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.655, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.655.0..sroa_idx, i64 72, i1 false), !noalias !41294
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !41294
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !41294
  switch i64 %i.cb, label %bb.m [
    i64 5, label %bb.l
    i64 4, label %.thread60
  ]

bb.l:                                             ; preds = %bb.k
  %.sroa.019.0.copyload.i = load i64, ptr %i.aj, align 8, !alias.scope !41292 ; 3 uses
  store i64 4, ptr %i.aj, align 8, !alias.scope !41292
  %.not41.i = icmp eq i64 %.sroa.019.0.copyload.i, 4
  br i1 %.not41.i, label %bb.ct, label %bb.cu, !prof !26

.thread60:                                        ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.554.0.copyload) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !41294
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.655)
  br label %bb.cw

bb.m:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.618.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.655, i64 72, i1 false), !noalias !41294
  store i64 %i.cb, ptr %i.s, align 8, !noalias !41294
  store ptr %.sroa.4.0.copyload, ptr %.sroa.416.0..sroa_idx.i, align 8, !noalias !41294
  store ptr %.sroa.554.0.copyload, ptr %.sroa.517.0..sroa_idx.i, align 8, !noalias !41294
  %i.cc = load i64, ptr %i.aj, align 8, !range !101, !alias.scope !41292, !noundef !24 ; 2 uses
  %.not42.i = icmp eq i64 %i.cc, 4
  br i1 %.not42.i, label %bb.co, label %bb.n, !prof !26

bb.n:                                             ; preds = %bb.m
  call void @llvm.experimental.noalias.scope.decl(metadata !41296)
  %.not.i.i = icmp eq i64 %i.cb, 3
  br i1 %.not.i.i, label %bb.o, label %bb.w

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !41297
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.416.0..sroa_idx.i, i64 32, i1 false), !noalias !41294
  %.val.i.i11 = load i64, ptr %i.bu, align 8, !noalias !41297, !noundef !24
  %.not56.i.i = icmp eq i64 %.val.i.i11, 0
  br i1 %.not56.i.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @llvm.experimental.noalias.scope.decl(metadata !41298)
  call void @llvm.experimental.noalias.scope.decl(metadata !41299)
  %i.cd = load ptr, ptr %i.r, align 8, !alias.scope !41300, !noalias !41297, !nonnull !24, !align !31, !noundef !24
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 32
  %i.cf = load ptr, ptr %i.ce, align 8, !noalias !41301, !nonnull !24, !noundef !24
  %i.cg = load ptr, ptr %i.ca, align 8, !alias.scope !41300, !noalias !41297, !noundef !24
  invoke void %i.cf(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bz, ptr noundef %i.cg, i64 noundef 0)
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !41293, !inline_history !41088

bb.q:                                             ; preds = %bb.o
  call void @llvm.experimental.noalias.scope.decl(metadata !41302)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !41303
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.416.0..sroa_idx.i, i64 32, i1 false), !noalias !41294
  call void @llvm.experimental.noalias.scope.decl(metadata !41304)
  call void @llvm.experimental.noalias.scope.decl(metadata !41305)
  %i.ch = load i64, ptr %i.bw, align 8, !alias.scope !41306, !noundef !24 ; 2 uses
  %i.ci = load i64, ptr %i.bv, align 8, !range !30, !alias.scope !41306, !noundef !24 ; 2 uses
  %i.cj = icmp eq i64 %i.ch, %i.ci
  br i1 %i.cj, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  invoke void @"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$4grow17h99338650aa43862fE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bv, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @283)
          to label %._crit_edge.i.i.i.i unwind label %bb.s, !noalias !41307

._crit_edge.i.i.i.i:                              ; preds = %bb.r
  %.pre.i.i.i.i = load i64, ptr %i.bw, align 8, !alias.scope !41306
  %.pre1.i.i.i.i = load i64, ptr %i.bv, align 8, !range !30, !alias.scope !41306
  br label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.ck = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !41308)
  call void @llvm.experimental.noalias.scope.decl(metadata !41309)
  %i.cl = load ptr, ptr %i.p, align 8, !alias.scope !41310, !noalias !41303, !nonnull !24, !align !31, !noundef !24
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 32
  %i.cn = load ptr, ptr %i.cm, align 8, !noalias !41311, !nonnull !24, !noundef !24
  %i.co = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.cp = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8, !alias.scope !41310, !noalias !41303, !noundef !24
  %i.cr = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.cs = load i64, ptr %i.cr, align 8, !alias.scope !41310, !noalias !41303, !noundef !24
  invoke void %i.cn(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.co, ptr noundef %i.cq, i64 noundef %i.cs)
          to label %.body14 unwind label %bb.t, !noalias !41312, !inline_history !8

bb.t:                                             ; preds = %bb.s
  %i.ct = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !41312
  unreachable

.noexc.i:                                         ; preds = %bb.u, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !41297
  br label %"_ZN14http_body_util9collected18Collected$LT$B$GT$10push_frame17h551e31d0b864a74dE.exit.i"

bb.u:                                             ; preds = %._crit_edge.i.i.i.i, %bb.q
  %i.cu = phi i64 [ %.pre1.i.i.i.i, %._crit_edge.i.i.i.i ], [ %i.ci, %bb.q ] ; 2 uses
  %i.cv = phi i64 [ %.pre.i.i.i.i, %._crit_edge.i.i.i.i ], [ %i.ch, %bb.q ] ; 2 uses
  %i.cw = add i64 %i.cv, 1
  store i64 %i.cw, ptr %i.bw, align 8, !alias.scope !41306
  %i.cx = load i64, ptr %i.bx, align 8, !alias.scope !41306, !noundef !24
  %i.cy = add i64 %i.cx, %i.cv                    ; 2 uses
  %.not.i.i.i.i = icmp ult i64 %i.cy, %i.cu
  %i.cz = select i1 %.not.i.i.i.i, i64 0, i64 %i.cu
  %.sroa.0.0.i.i.i.i = sub nuw i64 %i.cy, %i.cz
  %i.da = load ptr, ptr %i.by, align 8, !alias.scope !41306, !nonnull !24, !noundef !24
  %i.db = getelementptr inbounds nuw [32 x i8], ptr %i.da, i64 %.sroa.0.0.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.db, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.416.0..sroa_idx.i, i64 32, i1 false), !noalias !41293
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !41303
  br label %.noexc.i

bb.v:                                             ; preds = %bb.ck, %bb.cj
  %i.dc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !41313
  unreachable

bb.w:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !41297
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5196.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.655.40..sroa_idx, i64 56, i1 false), !noalias !41294
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4195.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.416.0..sroa_idx.i, i64 32, i1 false), !noalias !41294
  store i64 %i.cb, ptr %i.aq, align 8, !noalias !41297
  store i64 0, ptr %i.q, align 8, !noalias !41297
  %.sroa.219.0.copyload.i.i = load i64, ptr %.sroa.219.0..sroa_idx.i.i, align 8, !noalias !41297 ; 2 uses
  %.sroa.322.0.copyload.i.i = load ptr, ptr %.sroa.322.0..sroa_idx.i.i, align 8, !noalias !41297 ; 10 uses
  %.sroa.425.0.copyload.i.i = load i64, ptr %.sroa.5196.0..sroa_idx.i.i, align 8, !noalias !41297 ; 6 uses
  %.sroa.6.0.copyload.i.i = load ptr, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !41297 ; 3 uses
  %.sroa.732.0.copyload.i.i = load i64, ptr %.sroa.732.0..sroa_idx.i.i, align 8, !noalias !41297 ; 3 uses
  %.not11.i.i = icmp eq i64 %i.cc, 3
  br i1 %.not11.i.i, label %.thread.i.i, label %bb.y

bb.x:                                             ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !41314
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !41297
  %.pre.i.i = load i64, ptr %i.q, align 8, !range !36, !noalias !41297
  %i.dd = trunc nuw i64 %.pre.i.i to i1
  br i1 %i.dd, label %bb.cl, label %"_ZN4core3ptr130drop_in_place$LT$core..result..Result$LT$http..header..map..HeaderMap$C$http_body..frame..Frame$LT$bytes..bytes..Bytes$GT$$GT$$GT$17h896843fcd7c7c0a1E.exit.i.i"

bb.y:                                             ; preds = %bb.w
  call void @llvm.experimental.noalias.scope.decl(metadata !41315)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !41297
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !41314
  call void @llvm.experimental.noalias.scope.decl(metadata !41316)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.322.0.copyload.i.i) ]
  %i.de = icmp ult i64 %.sroa.425.0.copyload.i.i, 88686269585142076
  call void @llvm.assume(i1 %i.de)
  %.idx.i.i.i = mul nuw nsw i64 %.sroa.425.0.copyload.i.i, 104
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.322.0.copyload.i.i, i64 %.idx.i.i.i ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.655.48..sroa_idx, i64 24, i1 false), !noalias !41294
  store i64 0, ptr %i.o, align 8, !alias.scope !41316, !noalias !41314
  store ptr %.sroa.322.0.copyload.i.i, ptr %i.as, align 8, !alias.scope !41316, !noalias !41314
  store ptr %.sroa.322.0.copyload.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !41316, !noalias !41314
  store i64 %.sroa.219.0.copyload.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !alias.scope !41316, !noalias !41314
  store ptr %i.df, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !alias.scope !41316, !noalias !41314
  %i.dg = icmp eq i64 %.sroa.732.0.copyload.i.i, 0
  br i1 %i.dg, label %"_ZN99_$LT$http..header..map..HeaderMap$LT$T$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h0268a0236837d17eE.exit.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i4.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i4.i.i.i.i": ; preds = %bb.y
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload.i.i) ]
  %i.dh = shl nuw nsw i64 %.sroa.732.0.copyload.i.i, 2
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0.copyload.i.i, i64 noundef %i.dh, i64 noundef 2) #47, !noalias !41317
  br label %"_ZN99_$LT$http..header..map..HeaderMap$LT$T$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h0268a0236837d17eE.exit.i.i.i"

"_ZN99_$LT$http..header..map..HeaderMap$LT$T$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h0268a0236837d17eE.exit.i.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i4.i.i.i.i", %bb.y
  %i.di = load i64, ptr %i.at, align 8, !alias.scope !41318, !noundef !24 ; 4 uses
  %i.dj = icmp ult i64 %i.di, 88686269585142076
  call void @llvm.assume(i1 %i.dj)
  %i.dk = icmp eq i64 %i.di, 0                    ; 2 uses
  %i.dl = add nuw nsw i64 %.sroa.425.0.copyload.i.i, 1
  %i.dm = lshr i64 %i.dl, 1
  %.sroa.0.0.i.i.i = select i1 %i.dk, i64 %.sroa.425.0.copyload.i.i, i64 %i.dm
  call void @llvm.experimental.noalias.scope.decl(metadata !41319)
  %i.dn = call i64 @llvm.usub.sat.i64(i64 24576, i64 %i.di)
  %.sroa.0.0.i.i15.i.i = call noundef i64 @llvm.umin.i64(i64 %i.dn, i64 %.sroa.0.0.i.i.i)
  %i.do = add nuw nsw i64 %.sroa.0.0.i.i15.i.i, %i.di ; 2 uses
  %i.dp = udiv i64 %i.do, 3
  %i.dq = add nuw nsw i64 %i.dp, %i.do            ; 3 uses
  %i.dr = load i64, ptr %i.aw, align 8, !alias.scope !41320, !noundef !24 ; 3 uses
  %i.ds = icmp ugt i64 %i.dq, %i.dr
  br i1 %i.ds, label %bb.z, label %"_ZN4http6header3map18HeaderMap$LT$T$GT$11try_reserve17hbd1b96306d7f198bE.exit.thread96.i.i.i"

.body.i.i.i:                                      ; preds = %.body32.thread106.loopexit.split-lp.loopexit.split-lp.i.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body32.thread.i.i.i, %bb.cf, %.body32.thread106.loopexit.split-lp.loopexit.i.i.i, %.body32.thread106.loopexit.i.i.body.i, %.body.i.i.i.i
  %.pn.i.i.i = phi { ptr, i32 } [ %i.lc, %bb.cf ], [ %i.ey, %.body.i.i.i.i ], [ %eh.lpad-body33101.i.i.i, %.body32.thread.i.i.i ], [ %eh.lpad-body51.i, %.body32.thread106.loopexit.i.i.body.i ], [ %lpad.loopexit137.i.i.i, %.body32.thread106.loopexit.split-lp.loopexit.i.i.i ], [ %lpad.loopexit.split-lp, %.body32.thread106.loopexit.split-lp.loopexit.split-lp.i.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @"_ZN4core3ptr88drop_in_place$LT$http..header..map..IntoIter$LT$http..header..value..HeaderValue$GT$$GT$17hdc187f1d2a1ecae9E"(ptr noalias noundef align 8 dereferenceable(72) %i.o) #55
          to label %.body17.i.i unwind label %bb.ah, !noalias !41321

bb.z:                                             ; preds = %"_ZN99_$LT$http..header..map..HeaderMap$LT$T$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h0268a0236837d17eE.exit.i.i.i"
  %i.dt = icmp samesign ult i64 %i.dq, 2          ; 2 uses
  %i.du = add nsw i64 %i.dq, -1
  %i.dv = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.du, i1 true)
  %i.dw = lshr i64 -1, %i.dv                      ; 4 uses
  %.sroa.022.0.i.i.i.i = select i1 %i.dt, i64 0, i64 %i.dw ; 2 uses
  %i.dx = add nuw nsw i64 %.sroa.022.0.i.i.i.i, 1 ; 6 uses
  %or.cond.i.i.i.i = icmp samesign ugt i64 %.sroa.022.0.i.i.i.i, 32767
  br i1 %or.cond.i.i.i.i, label %"_ZN4http6header3map18HeaderMap$LT$T$GT$11try_reserve17hbd1b96306d7f198bE.exit.thread.invoke.i.i.i", label %bb.aa, !prof !43

bb.aa:                                            ; preds = %bb.z
  br i1 %i.dk, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i", label %bb.ab

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i": ; preds = %bb.aa
  %i.dy = trunc nuw i64 %i.dx to i16
  %i.dz = add i16 %i.dy, -1
  store i16 %i.dz, ptr %i.ax, align 8, !alias.scope !41320
  %i.ea = shl nuw nsw i64 %i.dx, 2                ; 2 uses
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #47, !noalias !41322
  %i.eb = call noundef align 2 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.ea, i64 noundef range(i64 1, 9) 2) #47, !noalias !41322 ; 7 uses
  %i.ec = icmp eq ptr %i.eb, null
  br i1 %i.ec, label %.invoke.i.i.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha9a886d75417c9a7E.exit.i.i.i.i.i.i"

.invoke.i.i.i:                                    ; preds = %"_ZN4core3ptr78drop_in_place$LT$alloc..boxed..Box$LT$$u5b$http..header..map..Pos$u5d$$GT$$GT$17h7acf44491c982670E.exit.i.i.i.i", %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i"
  %i.ed = phi i64 [ 2, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i" ], [ 8, %"_ZN4core3ptr78drop_in_place$LT$alloc..boxed..Box$LT$$u5b$http..header..map..Pos$u5d$$GT$$GT$17h7acf44491c982670E.exit.i.i.i.i" ]
  %i.ee = phi i64 [ %i.ea, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i" ], [ %i.ev, %"_ZN4core3ptr78drop_in_place$LT$alloc..boxed..Box$LT$$u5b$http..header..map..Pos$u5d$$GT$$GT$17h7acf44491c982670E.exit.i.i.i.i" ]
  %i.ef = phi ptr [ @568, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i" ], [ @569, %"_ZN4core3ptr78drop_in_place$LT$alloc..boxed..Box$LT$$u5b$http..header..map..Pos$u5d$$GT$$GT$17h7acf44491c982670E.exit.i.i.i.i" ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %i.ed, i64 %i.ee, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ef) #54
end_hunk_10
begin_hunk_11_@"_ZN7reqwest10async_impl8response8Response5bytes28_$u7b$$u7b$closure$u7d$$u7d$17hba0b216e3d972376E":bb.a
  br i1 %i.lm, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.body32.thread.i.i.i:                             ; preds = %.body32.loopexit.split-lp.i.i.i, %.body32.loopexit.i.i.i, %bb.az, %bb.ay
  %eh.lpad-body33101.i.i.i = phi { ptr, i32 } [ %lpad.phi133.i.i.i, %bb.az ], [ %lpad.phi133.i.i.i, %bb.ay ], [ %lpad.loopexit134.i.i.i, %.body32.loopexit.i.i.i ], [ %lpad.loopexit.split-lp135.i.i.i, %.body32.loopexit.split-lp.i.i.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !41402)
  call void @llvm.experimental.noalias.scope.decl(metadata !41403)
  call void @llvm.experimental.noalias.scope.decl(metadata !41404)
  %i.ln = load ptr, ptr %i.m, align 8, !alias.scope !41405, !noalias !41314, !nonnull !24, !align !31, !noundef !24
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 32
  %i.lp = load ptr, ptr %i.lo, align 8, !noalias !41406, !nonnull !24, !noundef !24
  %i.lq = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.lr = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ls = load ptr, ptr %i.lr, align 8, !alias.scope !41405, !noalias !41314, !noundef !24
  %i.lt = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.lu = load i64, ptr %i.lt, align 8, !alias.scope !41405, !noalias !41314, !noundef !24
  invoke void %i.lp(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.lq, ptr noundef %i.ls, i64 noundef %i.lu)
          to label %.body.i.i.i unwind label %bb.ah, !noalias !41321, !inline_history !17

.body17.i.i:                                      ; preds = %bb.ch, %.body.i.i.i
  %.pn.i.i = phi { ptr, i32 } [ %.pn.i.i.i, %.body.i.i.i ], [ %i.lx, %bb.ch ] ; 3 uses
  %i.lv = load i64, ptr %i.q, align 8, !range !36, !noalias !41297, !noundef !24
  %i.lw = icmp eq i64 %i.lv, 0
  br i1 %i.lw, label %.body14, label %bb.ci

bb.ch:                                            ; preds = %bb.af
  %i.lx = landingpad { ptr, i32 }
          cleanup
  br label %.body17.i.i

.thread.i.i:                                      ; preds = %bb.w
  %.sroa.8.0.copyload.i.i = load i64, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !41297
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.aj, ptr noundef nonnull align 8 dereferenceable(24) %i.aq, i64 24, i1 false), !noalias !41407
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bi, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.655.48..sroa_idx, i64 24, i1 false), !noalias !41408
  store i64 %.sroa.219.0.copyload.i.i, ptr %i.au, align 8, !alias.scope !41409
  store ptr %.sroa.322.0.copyload.i.i, ptr %i.ay, align 8, !alias.scope !41409
  store i64 %.sroa.425.0.copyload.i.i, ptr %i.at, align 8, !alias.scope !41409
  store ptr %.sroa.6.0.copyload.i.i, ptr %i.av, align 8, !alias.scope !41409
  store i64 %.sroa.732.0.copyload.i.i, ptr %i.aw, align 8, !alias.scope !41409
  store i64 %.sroa.8.0.copyload.i.i, ptr %i.ax, align 8, !alias.scope !41409
  br label %"_ZN4core3ptr130drop_in_place$LT$core..result..Result$LT$http..header..map..HeaderMap$C$http_body..frame..Frame$LT$bytes..bytes..Bytes$GT$$GT$$GT$17h896843fcd7c7c0a1E.exit.i.i"

bb.ci:                                            ; preds = %.body17.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !41410)
  call void @llvm.experimental.noalias.scope.decl(metadata !41411), !noalias !41412
  call void @llvm.experimental.noalias.scope.decl(metadata !41413), !noalias !41412
  %i.ly = load i64, ptr %i.aq, align 8, !range !56, !alias.scope !41414, !noalias !41415, !noundef !24
  %i.lz = icmp eq i64 %i.ly, 3
  br i1 %i.lz, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  call void @llvm.experimental.noalias.scope.decl(metadata !41416), !noalias !41412
  call void @llvm.experimental.noalias.scope.decl(metadata !41417), !noalias !41412
  %i.ma = load ptr, ptr %.sroa.4195.0..sroa_idx.i.i, align 8, !alias.scope !41418, !noalias !41415, !nonnull !24, !align !31, !noundef !24
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 32
  %i.mc = load ptr, ptr %i.mb, align 8, !noalias !41419, !nonnull !24, !noundef !24
  %i.md = load ptr, ptr %i.bt, align 8, !alias.scope !41418, !noalias !41415, !noundef !24
  %i.me = load i64, ptr %.sroa.219.0..sroa_idx.i.i, align 8, !alias.scope !41418, !noalias !41415, !noundef !24
  invoke void %i.mc(ptr noalias noundef nonnull align 8 dereferenceable(8) %.sroa.322.0..sroa_idx.i.i, ptr noundef %i.md, i64 noundef %i.me)
          to label %.body14 unwind label %bb.v, !noalias !41293, !inline_history !41239

bb.ck:                                            ; preds = %bb.ci
  invoke fastcc void @"_ZN4core3ptr49drop_in_place$LT$http..header..map..HeaderMap$GT$17he04bf0689d578762E"(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.aq)
          to label %.body14 unwind label %bb.v, !noalias !41293

bb.cl:                                            ; preds = %bb.x
  call void @llvm.experimental.noalias.scope.decl(metadata !41420)
  call void @llvm.experimental.noalias.scope.decl(metadata !41421)
  call void @llvm.experimental.noalias.scope.decl(metadata !41422)
  %i.mf = load i64, ptr %i.aq, align 8, !range !56, !alias.scope !41423, !noalias !41297, !noundef !24
  %i.mg = icmp eq i64 %i.mf, 3
  br i1 %i.mg, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  call void @llvm.experimental.noalias.scope.decl(metadata !41424)
  call void @llvm.experimental.noalias.scope.decl(metadata !41425)
  %i.mh = load ptr, ptr %.sroa.4195.0..sroa_idx.i.i, align 8, !alias.scope !41426, !noalias !41297, !nonnull !24, !align !31, !noundef !24
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 32
  %i.mj = load ptr, ptr %i.mi, align 8, !noalias !41427, !nonnull !24, !noundef !24
  %i.mk = load ptr, ptr %i.bt, align 8, !alias.scope !41426, !noalias !41297, !noundef !24
  %i.ml = load i64, ptr %.sroa.219.0..sroa_idx.i.i, align 8, !alias.scope !41426, !noalias !41297, !noundef !24
  invoke void %i.mj(ptr noalias noundef nonnull align 8 dereferenceable(8) %.sroa.322.0..sroa_idx.i.i, ptr noundef %i.mk, i64 noundef %i.ml)
          to label %"_ZN4core3ptr130drop_in_place$LT$core..result..Result$LT$http..header..map..HeaderMap$C$http_body..frame..Frame$LT$bytes..bytes..Bytes$GT$$GT$$GT$17h896843fcd7c7c0a1E.exit.i.i" unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !41293, !inline_history !41088

bb.cn:                                            ; preds = %bb.cl
  invoke fastcc void @"_ZN4core3ptr49drop_in_place$LT$http..header..map..HeaderMap$GT$17he04bf0689d578762E"(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.aq)
          to label %"_ZN4core3ptr130drop_in_place$LT$core..result..Result$LT$http..header..map..HeaderMap$C$http_body..frame..Frame$LT$bytes..bytes..Bytes$GT$$GT$$GT$17h896843fcd7c7c0a1E.exit.i.i" unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !41293

"_ZN4core3ptr130drop_in_place$LT$core..result..Result$LT$http..header..map..HeaderMap$C$http_body..frame..Frame$LT$bytes..bytes..Bytes$GT$$GT$$GT$17h896843fcd7c7c0a1E.exit.i.i": ; preds = %bb.cn, %bb.cm, %.thread.i.i, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !41297
  br label %"_ZN14http_body_util9collected18Collected$LT$B$GT$10push_frame17h551e31d0b864a74dE.exit.i"

bb.co:                                            ; preds = %bb.m
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #54
          to label %bb.cr unwind label %.body.thread.i, !noalias !41293

.body.thread.i:                                   ; preds = %bb.co
  %lpad.loopexit.split-lp60.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !41428)
  call void @llvm.experimental.noalias.scope.decl(metadata !41429), !noalias !41293
  %i.mm = icmp eq i64 %i.cb, 3
  br i1 %i.mm, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %.body.thread.i
  call void @llvm.experimental.noalias.scope.decl(metadata !41430), !noalias !41293
  call void @llvm.experimental.noalias.scope.decl(metadata !41431), !noalias !41293
  %i.mn = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload, i64 32
  %i.mo = load ptr, ptr %i.mn, align 8, !noalias !41432, !nonnull !24, !noundef !24
  %i.mp = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.mq = load i64, ptr %.sroa.618.0..sroa_idx.i, align 8, !alias.scope !41433, !noalias !41293, !noundef !24
  invoke void %i.mo(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.mp, ptr noundef %.sroa.554.0.copyload, i64 noundef %i.mq)
          to label %.body14 unwind label %bb.cs, !inline_history !41258

bb.cq:                                            ; preds = %.body.thread.i
  invoke fastcc void @"_ZN4core3ptr49drop_in_place$LT$http..header..map..HeaderMap$GT$17he04bf0689d578762E"(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.s)
          to label %.body14 unwind label %bb.cs

bb.cr:                                            ; preds = %bb.co
  unreachable

"_ZN14http_body_util9collected18Collected$LT$B$GT$10push_frame17h551e31d0b864a74dE.exit.i": ; preds = %"_ZN4core3ptr130drop_in_place$LT$core..result..Result$LT$http..header..map..HeaderMap$C$http_body..frame..Frame$LT$bytes..bytes..Bytes$GT$$GT$$GT$17h896843fcd7c7c0a1E.exit.i.i", %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !41294
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !41294
  %.val.i = load ptr, ptr %i.ak, align 8, !alias.scope !41292, !nonnull !24, !noundef !24
  %.val44.i = load ptr, ptr %i.al, align 8, !alias.scope !41292, !nonnull !24, !align !31, !noundef !24
  %i.mr = getelementptr inbounds nuw i8, ptr %.val44.i, i64 24
  %i.ms = load ptr, ptr %i.mr, align 8, !invariant.load !24, !noalias !41434, !nonnull !24
  invoke void %i.ms(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.t, ptr noundef nonnull align 1 %.val.i, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %.noexc12 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !41080

.noexc12:                                         ; preds = %"_ZN14http_body_util9collected18Collected$LT$B$GT$10push_frame17h551e31d0b864a74dE.exit.i"
  %i.mt = load i64, ptr %i.t, align 8, !noalias !41294 ; 2 uses
  %i.mu = icmp eq i64 %i.mt, 6
  br i1 %i.mu, label %.thread, label %bb.k

bb.cs:                                            ; preds = %bb.cq, %bb.cp
  %i.mv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !41293
  unreachable

bb.ct:                                            ; preds = %bb.l
  invoke void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @17, i64 noundef 21, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #54
          to label %.noexc13 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc13:                                         ; preds = %bb.ct
  unreachable

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.p, %bb.cm, %bb.cn, %"_ZN14http_body_util9collected18Collected$LT$B$GT$10push_frame17h551e31d0b864a74dE.exit.i", %bb.ct, %bb.j
  %lpad.loopexit.split-lp757 = landingpad { ptr, i32 }
          cleanup
  br label %.body14

.body14:                                          ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.s, %bb.cq, %bb.cp, %bb.ck, %bb.cj, %.body17.i.i
  %eh.lpad-body15 = phi { ptr, i32 } [ %.pn.i.i, %bb.cj ], [ %i.ck, %bb.s ], [ %lpad.loopexit.split-lp60.i, %bb.cp ], [ %lpad.loopexit.split-lp60.i, %bb.cq ], [ %.pn.i.i, %bb.ck ], [ %.pn.i.i, %.body17.i.i ], [ %lpad.loopexit.split-lp757, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1245)
  invoke fastcc void @"_ZN4core3ptr247drop_in_place$LT$http_body_util..combinators..collect..Collect$LT$http_body_util..combinators..box_body..BoxBody$LT$bytes..bytes..Bytes$C$alloc..boxed..Box$LT$dyn$u20$core..error..Error$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$$GT$$GT$17hf43c61a585bacc14E"(ptr noalias noundef align 8 dereferenceable(144) %i.aj) #55
          to label %.body19 unwind label %bb.dp

bb.cu:                                            ; preds = %bb.l
  %.sroa.521.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 280
  %.sroa.943.8.copyload = load ptr, ptr %.sroa.521.0..sroa_idx.i, align 8, !alias.scope !41435
  %.sroa.1144.8..sroa.521.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 288
  %.sroa.1144.8.copyload = load ptr, ptr %.sroa.1144.8..sroa.521.0..sroa_idx.i.sroa_idx, align 8, !alias.scope !41435
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.1245, ptr noundef nonnull align 8 dereferenceable(104) %i.au, i64 104, i1 false), !alias.scope !41435
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !41294
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.655)
  %i.mw = icmp eq i64 %.sroa.019.0.copyload.i, 5
  br i1 %i.mw, label %bb.cv, label %bb.cw

common.ret:                                       ; preds = %bb.do, %bb.cv
  %storemerge576 = phi i64 [ 0, %bb.do ], [ 1, %bb.cv ]
  %storemerge = phi i8 [ 1, %bb.do ], [ 3, %bb.cv ]
  store i64 %storemerge576, ptr %0, align 8
  store i8 %storemerge, ptr %i.v, align 8
  ret void

bb.cv:                                            ; preds = %.thread, %bb.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1245)
  br label %common.ret

bb.cw:                                            ; preds = %.thread60, %bb.cu
  %.sroa.042.066 = phi i64 [ 4, %.thread60 ], [ %.sroa.019.0.copyload.i, %bb.cu ] ; 2 uses
  %.sroa.943.065 = phi ptr [ %.sroa.4.0.copyload, %.thread60 ], [ %.sroa.943.8.copyload, %bb.cu ] ; 3 uses
  %.sroa.1144.064 = phi ptr [ %.sroa.554.0.copyload, %.thread60 ], [ %.sroa.1144.8.copyload, %bb.cu ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.748, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.1245, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1245)
  invoke fastcc void @"_ZN4core3ptr247drop_in_place$LT$http_body_util..combinators..collect..Collect$LT$http_body_util..combinators..box_body..BoxBody$LT$bytes..bytes..Bytes$C$alloc..boxed..Box$LT$dyn$u20$core..error..Error$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$$GT$$GT$17hf43c61a585bacc14E"(ptr noalias noundef align 8 dereferenceable(144) %i.aj)
          to label %bb.cy unwind label %bb.cx

bb.cx:                                            ; preds = %"_ZN7reqwest10async_impl8response8Response5bytes28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h0bbca49c98fccedeE.exit.i", %bb.cw
  %i.mx = landingpad { ptr, i32 }
          cleanup
  br label %.body19

bb.cy:                                            ; preds = %bb.cw
  %i.my = icmp eq i64 %.sroa.042.066, 4
  br i1 %i.my, label %"_ZN4core6result19Result$LT$T$C$E$GT$3map17hfcd3b851820dd823E.exit.thread", label %bb.cz

"_ZN4core6result19Result$LT$T$C$E$GT$3map17hfcd3b851820dd823E.exit.thread": ; preds = %bb.cy
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.943.065) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1144.064) ]
  br label %bb.dj

bb.cz:                                            ; preds = %bb.cy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !41436
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !41436
  store i64 %.sroa.042.066, ptr %i.c, align 8, !noalias !41437
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.sroa.943.065, ptr %.sroa.3.0..sroa_idx, align 8, !noalias !41437
  %.sroa.547.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %.sroa.1144.064, ptr %.sroa.547.0..sroa_idx, align 8, !noalias !41437
  %.sroa.748.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.748.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.748, i64 104, i1 false), !noalias !41437
  call void @llvm.experimental.noalias.scope.decl(metadata !41438)
  call void @llvm.experimental.noalias.scope.decl(metadata !41439)
  %i.mz = getelementptr inbounds nuw i8, ptr %i.c, i64 96 ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %i.nb = load i64, ptr %i.na, align 8, !alias.scope !41440, !noalias !41436, !noundef !24 ; 4 uses
  %i.nc = icmp eq i64 %i.nb, 0
  br i1 %i.nc, label %"_ZN109_$LT$alloc..collections..vec_deque..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h2b914928f46e381eE.exit.i.i.i", label %bb.da

bb.da:                                            ; preds = %bb.cz
  %.val.i.i.i.i = load i64, ptr %i.mz, align 8, !alias.scope !41440, !noalias !41436 ; 4 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %.val2.i.i.i.i = load i64, ptr %i.nd, align 8, !alias.scope !41440, !noalias !41436 ; 2 uses
  %.not.i.i.i.i.i = icmp ult i64 %.val2.i.i.i.i, %.val.i.i.i.i
  %i.ne = select i1 %.not.i.i.i.i.i, i64 0, i64 %.val.i.i.i.i
  %.sroa.0.0.i.i.i.i.i = sub nuw i64 %.val2.i.i.i.i, %i.ne ; 5 uses
  %i.nf = sub i64 %.val.i.i.i.i, %.sroa.0.0.i.i.i.i.i ; 2 uses
  %.not11.i.i.i.i.i = icmp ult i64 %i.nf, %i.nb   ; 2 uses
  %i.ng = add i64 %.sroa.0.0.i.i.i.i.i, %i.nb
  %i.nh = sub nuw i64 %i.nb, %i.nf
  %i.ni = shl nuw nsw i64 %i.nh, 5
  %.sroa.5.0.i.i.i.i = select i1 %.not11.i.i.i.i.i, i64 %.val.i.i.i.i, i64 %i.ng ; 2 uses
  %.sroa.11.0.i.i.i.i = select i1 %.not11.i.i.i.i.i, i64 %i.ni, i64 0 ; 3 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.nk = load ptr, ptr %i.nj, align 8, !alias.scope !41440, !noalias !41436, !nonnull !24, !noundef !24 ; 6 uses
  %.idx1.i.i.i = shl nuw nsw i64 %.sroa.0.0.i.i.i.i.i, 5
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 %.idx1.i.i.i ; 5 uses
  %i.nm = icmp samesign eq i64 %.sroa.0.0.i.i.i.i.i, %.sroa.5.0.i.i.i.i
  br i1 %i.nm, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h7775de5670786362E.exit.i.i.i.i", label %bb.dc

bb.db:                                            ; preds = %"_ZN109_$LT$alloc..collections..vec_deque..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h2b914928f46e381eE.exit.i.i.i"
  %i.nn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr84drop_in_place$LT$http_body_util..collected..Collected$LT$bytes..bytes..Bytes$GT$$GT$17h35574999be5c415eE"(ptr noalias noundef nonnull align 8 dereferenceable(128) %i.c) #55
          to label %.body19 unwind label %bb.di, !noalias !41441

bb.dc:                                            ; preds = %bb.da
  %i.no = sub nuw nsw i64 %.sroa.5.0.i.i.i.i, %.sroa.0.0.i.i.i.i.i ; 3 uses
  %xtraiter = and i64 %i.no, 3                    ; 3 uses
  %i.np = icmp ult i64 %i.no, 4
  br i1 %i.np, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.dc
  %unroll_iter = and i64 %i.no, -4
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dd, %.new
  %.sroa.09.0.i.i.i.i.i = phi i64 [ 0, %.new ], [ %i.oc, %bb.dd ] ; 5 uses
  %.sroa.07.0.i.i.i.i.i16 = phi i64 [ 0, %.new ], [ %i.ob, %bb.dd ]
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.dd ]
  %i.nq = getelementptr inbounds nuw [32 x i8], ptr %i.nl, i64 %.sroa.09.0.i.i.i.i.i
  %i.nr = getelementptr i8, ptr %i.nq, i64 16
  %.val.i.i.i.i.i17 = load i64, ptr %i.nr, align 8, !noalias !41442, !noundef !24
  %i.ns = add i64 %.val.i.i.i.i.i17, %.sroa.07.0.i.i.i.i.i16
  %i.nt = getelementptr inbounds nuw [32 x i8], ptr %i.nl, i64 %.sroa.09.0.i.i.i.i.i
  %i.nu = getelementptr i8, ptr %i.nt, i64 48
  %.val.i.i.i.i.i17.1 = load i64, ptr %i.nu, align 8, !noalias !41442, !noundef !24
  %i.nv = add i64 %.val.i.i.i.i.i17.1, %i.ns
  %i.nw = getelementptr inbounds nuw [32 x i8], ptr %i.nl, i64 %.sroa.09.0.i.i.i.i.i
  %i.nx = getelementptr i8, ptr %i.nw, i64 80
  %.val.i.i.i.i.i17.2 = load i64, ptr %i.nx, align 8, !noalias !41442, !noundef !24
  %i.ny = add i64 %.val.i.i.i.i.i17.2, %i.nv
  %i.nz = getelementptr inbounds nuw [32 x i8], ptr %i.nl, i64 %.sroa.09.0.i.i.i.i.i
  %i.oa = getelementptr i8, ptr %i.nz, i64 112
  %.val.i.i.i.i.i17.3 = load i64, ptr %i.oa, align 8, !noalias !41442, !noundef !24
  %i.ob = add i64 %.val.i.i.i.i.i17.3, %i.ny      ; 3 uses
  %i.oc = add nuw i64 %.sroa.09.0.i.i.i.i.i, 4    ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h7775de5670786362E.exit.i.i.i.i.loopexit.unr-lcssa", label %bb.dd

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h7775de5670786362E.exit.i.i.i.i.loopexit.unr-lcssa": ; preds = %bb.dd
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h7775de5670786362E.exit.i.i.i.i", label %.epil.preheader

.epil.preheader:                                  ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h7775de5670786362E.exit.i.i.i.i.loopexit.unr-lcssa", %bb.dc
  %.sroa.09.0.i.i.i.i.i.epil.init = phi i64 [ 0, %bb.dc ], [ %i.oc, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h7775de5670786362E.exit.i.i.i.i.loopexit.unr-lcssa" ]
  %.sroa.07.0.i.i.i.i.i16.epil.init = phi i64 [ 0, %bb.dc ], [ %i.ob, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h7775de5670786362E.exit.i.i.i.i.loopexit.unr-lcssa" ]
  %lcmp.mod935 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod935)
  br label %bb.de

bb.de:                                            ; preds = %bb.de, %.epil.preheader
  %.sroa.09.0.i.i.i.i.i.epil = phi i64 [ %.sroa.09.0.i.i.i.i.i.epil.init, %.epil.preheader ], [ %i.og, %bb.de ] ; 2 uses
  %.sroa.07.0.i.i.i.i.i16.epil = phi i64 [ %.sroa.07.0.i.i.i.i.i16.epil.init, %.epil.preheader ], [ %i.of, %bb.de ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.de ]
  %i.od = getelementptr inbounds nuw [32 x i8], ptr %i.nl, i64 %.sroa.09.0.i.i.i.i.i.epil
  %i.oe = getelementptr i8, ptr %i.od, i64 16
  %.val.i.i.i.i.i17.epil = load i64, ptr %i.oe, align 8, !noalias !41442, !noundef !24
  %i.of = add i64 %.val.i.i.i.i.i17.epil, %.sroa.07.0.i.i.i.i.i16.epil ; 2 uses
  %i.og = add nuw i64 %.sroa.09.0.i.i.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h7775de5670786362E.exit.i.i.i.i", label %bb.de, !llvm.loop !41272

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h7775de5670786362E.exit.i.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h7775de5670786362E.exit.i.i.i.i.loopexit.unr-lcssa", %bb.de, %bb.da
  %.sroa.04.0.i.i.i.i.i18 = phi i64 [ 0, %bb.da ], [ %i.ob, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h7775de5670786362E.exit.i.i.i.i.loopexit.unr-lcssa" ], [ %i.of, %bb.de ] ; 3 uses
  %i.oh = icmp samesign eq i64 %.sroa.11.0.i.i.i.i, 0
  br i1 %i.oh, label %"_ZN109_$LT$alloc..collections..vec_deque..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h2b914928f46e381eE.exit.i.i.i", label %bb.df

bb.df:                                            ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h7775de5670786362E.exit.i.i.i.i"
  %i.oi = lshr exact i64 %.sroa.11.0.i.i.i.i, 5   ; 2 uses
  %xtraiter938 = and i64 %i.oi, 3                 ; 3 uses
  %i.oj = icmp samesign ult i64 %.sroa.11.0.i.i.i.i, 128
  br i1 %i.oj, label %.epil.preheader937, label %.new936

.new936:                                          ; preds = %bb.df
  %unroll_iter943 = and i64 %i.oi, 288230376151711740
  br label %bb.dg

bb.dg:                                            ; preds = %bb.dg, %.new936
  %.sroa.09.0.i1.i.i.i.i = phi i64 [ 0, %.new936 ], [ %i.ow, %bb.dg ] ; 5 uses
  %.sroa.07.0.i2.i.i.i.i = phi i64 [ %.sroa.04.0.i.i.i.i.i18, %.new936 ], [ %i.ov, %bb.dg ]
  %niter944 = phi i64 [ 0, %.new936 ], [ %niter944.next.3, %bb.dg ]
  %i.ok = getelementptr inbounds nuw [32 x i8], ptr %i.nk, i64 %.sroa.09.0.i1.i.i.i.i
  %i.ol = getelementptr i8, ptr %i.ok, i64 16
  %.val.i3.i.i.i.i = load i64, ptr %i.ol, align 8, !noalias !41442, !noundef !24
  %i.om = add i64 %.val.i3.i.i.i.i, %.sroa.07.0.i2.i.i.i.i
  %i.on = getelementptr inbounds nuw [32 x i8], ptr %i.nk, i64 %.sroa.09.0.i1.i.i.i.i
  %i.oo = getelementptr i8, ptr %i.on, i64 48
  %.val.i3.i.i.i.i.1 = load i64, ptr %i.oo, align 8, !noalias !41442, !noundef !24
  %i.op = add i64 %.val.i3.i.i.i.i.1, %i.om
  %i.oq = getelementptr inbounds nuw [32 x i8], ptr %i.nk, i64 %.sroa.09.0.i1.i.i.i.i
  %i.or = getelementptr i8, ptr %i.oq, i64 80
  %.val.i3.i.i.i.i.2 = load i64, ptr %i.or, align 8, !noalias !41442, !noundef !24
  %i.os = add i64 %.val.i3.i.i.i.i.2, %i.op
  %i.ot = getelementptr inbounds nuw [32 x i8], ptr %i.nk, i64 %.sroa.09.0.i1.i.i.i.i
  %i.ou = getelementptr i8, ptr %i.ot, i64 112
  %.val.i3.i.i.i.i.3 = load i64, ptr %i.ou, align 8, !noalias !41442, !noundef !24
  %i.ov = add i64 %.val.i3.i.i.i.i.3, %i.os       ; 3 uses
  %i.ow = add nuw nsw i64 %.sroa.09.0.i1.i.i.i.i, 4 ; 2 uses
  %niter944.next.3 = add i64 %niter944, 4         ; 2 uses
  %niter944.ncmp.3 = icmp eq i64 %niter944.next.3, %unroll_iter943
  br i1 %niter944.ncmp.3, label %"_ZN109_$LT$alloc..collections..vec_deque..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h2b914928f46e381eE.exit.i.i.i.loopexit.unr-lcssa", label %bb.dg

"_ZN109_$LT$alloc..collections..vec_deque..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h2b914928f46e381eE.exit.i.i.i.loopexit.unr-lcssa": ; preds = %bb.dg
  %lcmp.mod940.not = icmp eq i64 %xtraiter938, 0
  br i1 %lcmp.mod940.not, label %"_ZN109_$LT$alloc..collections..vec_deque..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h2b914928f46e381eE.exit.i.i.i", label %.epil.preheader937

.epil.preheader937:                               ; preds = %"_ZN109_$LT$alloc..collections..vec_deque..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h2b914928f46e381eE.exit.i.i.i.loopexit.unr-lcssa", %bb.df
  %.sroa.09.0.i1.i.i.i.i.epil.init = phi i64 [ 0, %bb.df ], [ %i.ow, %"_ZN109_$LT$alloc..collections..vec_deque..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h2b914928f46e381eE.exit.i.i.i.loopexit.unr-lcssa" ]
  %.sroa.07.0.i2.i.i.i.i.epil.init = phi i64 [ %.sroa.04.0.i.i.i.i.i18, %bb.df ], [ %i.ov, %"_ZN109_$LT$alloc..collections..vec_deque..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h2b914928f46e381eE.exit.i.i.i.loopexit.unr-lcssa" ]
  %lcmp.mod942 = icmp ne i64 %xtraiter938, 0
  call void @llvm.assume(i1 %lcmp.mod942)
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dh, %.epil.preheader937
  %.sroa.09.0.i1.i.i.i.i.epil = phi i64 [ %.sroa.09.0.i1.i.i.i.i.epil.init, %.epil.preheader937 ], [ %i.pa, %bb.dh ] ; 2 uses
  %.sroa.07.0.i2.i.i.i.i.epil = phi i64 [ %.sroa.07.0.i2.i.i.i.i.epil.init, %.epil.preheader937 ], [ %i.oz, %bb.dh ]
  %epil.iter939 = phi i64 [ 0, %.epil.preheader937 ], [ %epil.iter939.next, %bb.dh ]
  %i.ox = getelementptr inbounds nuw [32 x i8], ptr %i.nk, i64 %.sroa.09.0.i1.i.i.i.i.epil
  %i.oy = getelementptr i8, ptr %i.ox, i64 16
  %.val.i3.i.i.i.i.epil = load i64, ptr %i.oy, align 8, !noalias !41442, !noundef !24
  %i.oz = add i64 %.val.i3.i.i.i.i.epil, %.sroa.07.0.i2.i.i.i.i.epil ; 2 uses
  %i.pa = add nuw nsw i64 %.sroa.09.0.i1.i.i.i.i.epil, 1
  %epil.iter939.next = add i64 %epil.iter939, 1   ; 2 uses
  %epil.iter939.cmp.not = icmp eq i64 %epil.iter939.next, %xtraiter938
  br i1 %epil.iter939.cmp.not, label %"_ZN109_$LT$alloc..collections..vec_deque..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h2b914928f46e381eE.exit.i.i.i", label %bb.dh, !llvm.loop !41273

"_ZN109_$LT$alloc..collections..vec_deque..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h2b914928f46e381eE.exit.i.i.i": ; preds = %"_ZN109_$LT$alloc..collections..vec_deque..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h2b914928f46e381eE.exit.i.i.i.loopexit.unr-lcssa", %bb.dh, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h7775de5670786362E.exit.i.i.i.i", %bb.cz
  %.sroa.04.0.i4.i.i.i.i = phi i64 [ %.sroa.04.0.i.i.i.i.i18, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h7775de5670786362E.exit.i.i.i.i" ], [ 0, %bb.cz ], [ %i.ov, %"_ZN109_$LT$alloc..collections..vec_deque..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h2b914928f46e381eE.exit.i.i.i.loopexit.unr-lcssa" ], [ %i.oz, %bb.dh ]
  invoke fastcc void @"_ZN84_$LT$http_body_util..util..BufList$LT$T$GT$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$13copy_to_bytes17hd429571eac0711a7E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.d, ptr noalias noundef align 8 dereferenceable(32) %i.mz, i64 noundef %.sroa.04.0.i4.i.i.i.i)
          to label %"_ZN7reqwest10async_impl8response8Response5bytes28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h0bbca49c98fccedeE.exit.i" unwind label %bb.db, !noalias !41436

bb.di:                                            ; preds = %bb.db
  %i.pb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !41443
  unreachable

"_ZN7reqwest10async_impl8response8Response5bytes28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h0bbca49c98fccedeE.exit.i": ; preds = %"_ZN109_$LT$alloc..collections..vec_deque..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h2b914928f46e381eE.exit.i.i.i"
  invoke fastcc void @"_ZN4core3ptr84drop_in_place$LT$http_body_util..collected..Collected$LT$bytes..bytes..Bytes$GT$$GT$17h35574999be5c415eE"(ptr noalias noundef nonnull align 8 dereferenceable(128) %i.c)
          to label %"_ZN4core6result19Result$LT$T$C$E$GT$3map17hfcd3b851820dd823E.exit" unwind label %bb.cx

"_ZN4core6result19Result$LT$T$C$E$GT$3map17hfcd3b851820dd823E.exit": ; preds = %"_ZN7reqwest10async_impl8response8Response5bytes28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h0bbca49c98fccedeE.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !41436
  %.sroa.0.0.copyload = load ptr, ptr %i.d, align 8, !noalias !41444 ; 2 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.10.0.copyload = load ptr, ptr %.sroa.10.0..sroa_idx, align 8, !noalias !41444 ; 2 uses
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.12.0.copyload = load ptr, ptr %.sroa.12.0..sroa_idx, align 8, !noalias !41444 ; 2 uses
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.14.0.copyload = load i64, ptr %.sroa.14.0..sroa_idx, align 8, !noalias !41444
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !41436
  %i.pc = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %i.pc, label %bb.dj, label %"_ZN4core6result19Result$LT$T$C$E$GT$7map_err17h27fe5b4d4e9e2069E.exit"

bb.dj:                                            ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$3map17hfcd3b851820dd823E.exit.thread", %"_ZN4core6result19Result$LT$T$C$E$GT$3map17hfcd3b851820dd823E.exit"
  %.sroa.10.072 = phi ptr [ %.sroa.943.065, %"_ZN4core6result19Result$LT$T$C$E$GT$3map17hfcd3b851820dd823E.exit.thread" ], [ %.sroa.10.0.copyload, %"_ZN4core6result19Result$LT$T$C$E$GT$3map17hfcd3b851820dd823E.exit" ]
end_hunk_11
