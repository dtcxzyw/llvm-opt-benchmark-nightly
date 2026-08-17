inline.NumInlined: 15186
inline.NumDeleted: 6591
loop-unroll.NumCompletelyUnrolled: 45
loop-unroll.NumRuntimeUnrolled: 49
loop-unroll.NumUnrolled: 94
begin_hunk_0_@"_ZN12sharded_slab5shard18Shard$LT$T$C$C$GT$19clear_after_release17h05220815bb791f72E":bb.a
bb.s:                                             ; preds = %bb.r
  %i.by = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bz = load i64, ptr %i.by, align 8, !noalias !9414, !noundef !8
  %i.ca = icmp ult i64 %i.bw, %i.bz
  br i1 %i.ca, label %bb.t, label %"_ZN12sharded_slab5shard18Shard$LT$T$C$C$GT$12clear_remote17h89e8b6c5e59a6c07E.exit"

bb.t:                                             ; preds = %bb.s
  %i.cb = getelementptr inbounds nuw [96 x i8], ptr %i.bx, i64 %i.bw ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 80 ; 2 uses
  %i.cd = load atomic i64, ptr %i.cc acquire, align 8, !noalias !9414 ; 2 uses
  %i.ce = lshr i64 %i.cd, 51
  %i.cf = icmp eq i64 %i.bl, %i.ce
  br i1 %i.cf, label %.lr.ph23.i.i.i, label %"_ZN12sharded_slab5shard18Shard$LT$T$C$C$GT$12clear_remote17h89e8b6c5e59a6c07E.exit"

.lr.ph23.i.i.i:                                   ; preds = %bb.t
  %.cmp.i.i.i8 = icmp ult i64 %1, -4503599627370496
  %.v.i.i.i9 = select i1 %.cmp.i.i.i8, i64 1, i64 -8190
  %i.cg = add nsw i64 %.v.i.i.i9, %i.bl
  %i.ch = shl nuw i64 %i.cg, 51
  br label %bb.u

bb.u:                                             ; preds = %_ZN12sharded_slab4page4slot19exponential_backoff17hd1c54936a8443f20E.exit.i.i.i12, %.lr.ph23.i.i.i
  %.sroa.02.020.i.i.i = phi i64 [ %i.cd, %.lr.ph23.i.i.i ], [ %.sroa.02.1.i.i.i15, %_ZN12sharded_slab4page4slot19exponential_backoff17hd1c54936a8443f20E.exit.i.i.i12 ] ; 4 uses
  %.sroa.05.019.i.i.i = phi i1 [ false, %.lr.ph23.i.i.i ], [ %.sroa.05.1.i.i.i14, %_ZN12sharded_slab4page4slot19exponential_backoff17hd1c54936a8443f20E.exit.i.i.i12 ]
  %.sroa.0.018.i.i.i = phi i64 [ 0, %.lr.ph23.i.i.i ], [ %.sroa.0.1.i.i.i13, %_ZN12sharded_slab4page4slot19exponential_backoff17hd1c54936a8443f20E.exit.i.i.i12 ] ; 4 uses
  %i.ci = and i64 %.sroa.02.020.i.i.i, 2251799813685247
  %i.cj = or disjoint i64 %i.ci, %i.ch
  %i.ck = cmpxchg ptr %i.cc, i64 %.sroa.02.020.i.i.i, i64 %i.cj acq_rel acquire, align 8, !noalias !9414 ; 2 uses
  %.sroa.18.0.in.i.i.i.i10 = extractvalue { i64, i1 } %i.ck, 1
  %.sroa.01.0.i.i.i.i11 = extractvalue { i64, i1 } %i.ck, 0 ; 2 uses
  br i1 %.sroa.18.0.in.i.i.i.i10, label %bb.v, label %_ZN12sharded_slab4page4slot19exponential_backoff17hd1c54936a8443f20E.exit.i.i.i12

bb.v:                                             ; preds = %bb.u
  %i.cl = and i64 %.sroa.01.0.i.i.i.i11, 2251799813685244
  %i.cm = icmp eq i64 %i.cl, 0
  br i1 %i.cm, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  tail call void @"_ZN95_$LT$tracing_subscriber..registry..sharded..DataInner$u20$as$u20$sharded_slab..clear..Clear$GT$5clear17h026c25d6c4b734dbE"(ptr noalias noundef nonnull align 8 dereferenceable(80) dereferenceable_or_null(80) %i.cb), !noalias !9414
  %i.cn = load i64, ptr %i.bt, align 8, !noalias !9414, !noundef !8
  %i.co = getelementptr inbounds nuw i8, ptr %i.cb, i64 88
  store i64 %i.cn, ptr %i.co, align 8, !noalias !9414
  store i64 %i.bw, ptr %i.bt, align 8, !noalias !9414
  br label %"_ZN12sharded_slab5shard18Shard$LT$T$C$C$GT$12clear_remote17h89e8b6c5e59a6c07E.exit"

bb.x:                                             ; preds = %bb.v
  %i.cp = trunc i64 %.sroa.0.018.i.i.i to i32
  %i.cq = and i32 %i.cp, 31                       ; 2 uses
  %.not.i.i.i17 = icmp eq i32 %i.cq, 31
  br i1 %.not.i.i.i17, label %._crit_edge.i.i.i21, label %.lr.ph.preheader.i.i.i18

.lr.ph.preheader.i.i.i18:                         ; preds = %bb.x
  %i.cr = shl nuw nsw i32 1, %i.cq
  %i.cs = freeze i32 %i.cr                        ; 3 uses
  %i.ct = add i32 %i.cs, -1
  %xtraiter47 = and i32 %i.cs, 7                  ; 3 uses
  %i.cu = icmp ult i32 %i.ct, 7
  br i1 %i.cu, label %.lr.ph.i.i.i19.epil.preheader, label %.lr.ph.preheader.i.i.i18.new

.lr.ph.preheader.i.i.i18.new:                     ; preds = %.lr.ph.preheader.i.i.i18
  %unroll_iter51 = and i32 %i.cs, -8
  br label %.lr.ph.i.i.i19

._crit_edge.i.i.i21.loopexit.unr-lcssa:           ; preds = %.lr.ph.i.i.i19
  %lcmp.mod49.not = icmp eq i32 %xtraiter47, 0
  br i1 %lcmp.mod49.not, label %._crit_edge.i.i.i21, label %.lr.ph.i.i.i19.epil.preheader

.lr.ph.i.i.i19.epil.preheader:                    ; preds = %._crit_edge.i.i.i21.loopexit.unr-lcssa, %.lr.ph.preheader.i.i.i18
  %lcmp.mod50 = icmp ne i32 %xtraiter47, 0
  tail call void @llvm.assume(i1 %lcmp.mod50)
  br label %.lr.ph.i.i.i19.epil

.lr.ph.i.i.i19.epil:                              ; preds = %.lr.ph.i.i.i19.epil, %.lr.ph.i.i.i19.epil.preheader
  %epil.iter48 = phi i32 [ 0, %.lr.ph.i.i.i19.epil.preheader ], [ %epil.iter48.next, %.lr.ph.i.i.i19.epil ]
  tail call void @llvm.x86.sse2.pause() #47, !noalias !9417
  %epil.iter48.next = add i32 %epil.iter48, 1     ; 2 uses
  %epil.iter48.cmp.not = icmp eq i32 %epil.iter48.next, %xtraiter47
  br i1 %epil.iter48.cmp.not, label %._crit_edge.i.i.i21, label %.lr.ph.i.i.i19.epil, !llvm.loop !9420

._crit_edge.i.i.i21:                              ; preds = %._crit_edge.i.i.i21.loopexit.unr-lcssa, %.lr.ph.i.i.i19.epil, %bb.x
  %i.cv = icmp ugt i64 %.sroa.0.018.i.i.i, 7
  br i1 %i.cv, label %bb.z, label %bb.y

.lr.ph.i.i.i19:                                   ; preds = %.lr.ph.i.i.i19, %.lr.ph.preheader.i.i.i18.new
  %niter52 = phi i32 [ 0, %.lr.ph.preheader.i.i.i18.new ], [ %niter52.next.7, %.lr.ph.i.i.i19 ]
  tail call void @llvm.x86.sse2.pause() #47, !noalias !9417
  tail call void @llvm.x86.sse2.pause() #47, !noalias !9417
  tail call void @llvm.x86.sse2.pause() #47, !noalias !9417
  tail call void @llvm.x86.sse2.pause() #47, !noalias !9417
  tail call void @llvm.x86.sse2.pause() #47, !noalias !9417
  tail call void @llvm.x86.sse2.pause() #47, !noalias !9417
  tail call void @llvm.x86.sse2.pause() #47, !noalias !9417
  tail call void @llvm.x86.sse2.pause() #47, !noalias !9417
  %niter52.next.7 = add i32 %niter52, 8           ; 2 uses
  %niter52.ncmp.7 = icmp eq i32 %niter52.next.7, %unroll_iter51
  br i1 %niter52.ncmp.7, label %._crit_edge.i.i.i21.loopexit.unr-lcssa, label %.lr.ph.i.i.i19

bb.y:                                             ; preds = %._crit_edge.i.i.i21
  %i.cw = add nuw nsw i64 %.sroa.0.018.i.i.i, 1
  br label %_ZN12sharded_slab4page4slot19exponential_backoff17hd1c54936a8443f20E.exit.i.i.i12

bb.z:                                             ; preds = %._crit_edge.i.i.i21
  tail call void @_ZN3std6thread9yield_now17h3b830d4dcefa1762E(), !noalias !9417
  br label %_ZN12sharded_slab4page4slot19exponential_backoff17hd1c54936a8443f20E.exit.i.i.i12

_ZN12sharded_slab4page4slot19exponential_backoff17hd1c54936a8443f20E.exit.i.i.i12: ; preds = %bb.z, %bb.y, %bb.u
  %.sroa.0.1.i.i.i13 = phi i64 [ 0, %bb.u ], [ %.sroa.0.018.i.i.i, %bb.z ], [ %i.cw, %bb.y ]
  %.sroa.05.1.i.i.i14 = phi i1 [ %.sroa.05.019.i.i.i, %bb.u ], [ true, %bb.z ], [ true, %bb.y ] ; 2 uses
  %.sroa.02.1.i.i.i15 = phi i64 [ %.sroa.01.0.i.i.i.i11, %bb.u ], [ %.sroa.02.020.i.i.i, %bb.z ], [ %.sroa.02.020.i.i.i, %bb.y ] ; 2 uses
  %i.cx = lshr i64 %.sroa.02.1.i.i.i15, 51
  %i.cy = icmp eq i64 %i.bl, %i.cx
  %or.cond.not.i.i.i16 = or i1 %.sroa.05.1.i.i.i14, %i.cy
  br i1 %or.cond.not.i.i.i16, label %bb.u, label %"_ZN12sharded_slab5shard18Shard$LT$T$C$C$GT$12clear_remote17h89e8b6c5e59a6c07E.exit"

bb.aa:                                            ; preds = %bb.q
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.bi, i64 noundef %i.bn, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @222) #54, !noalias !9411
  unreachable

"_ZN12sharded_slab5shard18Shard$LT$T$C$C$GT$12clear_remote17h89e8b6c5e59a6c07E.exit": ; preds = %_ZN12sharded_slab4page4slot19exponential_backoff17hd1c54936a8443f20E.exit.i.i.i, %bb.l, %_ZN12sharded_slab4page4slot19exponential_backoff17hd1c54936a8443f20E.exit.i.i.i12, %bb.w, %bb.t, %bb.s, %bb.r, %bb.p, %bb.h, %bb.g, %bb.f, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_ZN12tracing_core5field5Visit10record_f6417h473751762ab49b3eE(ptr noalias noundef align 8 dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, double noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  store double %2, ptr %i.a, align 8
  call void @"_ZN94_$LT$tracing_subscriber..fmt..format..DefaultVisitor$u20$as$u20$tracing_core..field..Visit$GT$12record_debug17h1c49dffe0fd82310E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @224)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_ZN12tracing_core5field5Visit10record_i6417hc64f30948a90fda3E(ptr noalias noundef align 8 dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i64 noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  store i64 %2, ptr %i.a, align 8
  call void @"_ZN94_$LT$tracing_subscriber..fmt..format..DefaultVisitor$u20$as$u20$tracing_core..field..Visit$GT$12record_debug17h1c49dffe0fd82310E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @225)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_ZN12tracing_core5field5Visit10record_u6417h78a6e6495d301adeE(ptr noalias noundef align 8 dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i64 noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  store i64 %2, ptr %i.a, align 8
  call void @"_ZN94_$LT$tracing_subscriber..fmt..format..DefaultVisitor$u20$as$u20$tracing_core..field..Visit$GT$12record_debug17h1c49dffe0fd82310E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @226)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_ZN12tracing_core5field5Visit11record_bool17h1ca464935b245607E(ptr noalias noundef align 8 dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i1 noundef zeroext %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 2 uses
  %i.b = zext i1 %2 to i8
  store i8 %i.b, ptr %i.a, align 1
  call void @"_ZN94_$LT$tracing_subscriber..fmt..format..DefaultVisitor$u20$as$u20$tracing_core..field..Visit$GT$12record_debug17h1c49dffe0fd82310E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @227)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_ZN12tracing_core5field5Visit11record_i12817h3f1601d3864090dfE(ptr noalias noundef align 8 dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i128 noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 2 uses
  store i128 %2, ptr %i.a, align 16
  call void @"_ZN94_$LT$tracing_subscriber..fmt..format..DefaultVisitor$u20$as$u20$tracing_core..field..Visit$GT$12record_debug17h1c49dffe0fd82310E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @228)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_ZN12tracing_core5field5Visit11record_u12817hfc8011914b0cafa9E(ptr noalias noundef align 8 dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i128 noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 2 uses
  store i128 %2, ptr %i.a, align 16
  call void @"_ZN94_$LT$tracing_subscriber..fmt..format..DefaultVisitor$u20$as$u20$tracing_core..field..Visit$GT$12record_debug17h1c49dffe0fd82310E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @229)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_ZN12tracing_core5field5Visit12record_bytes17hd90123a72276e5d3E(ptr noalias noundef align 8 dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %3, ptr %i.b, align 8
  call void @"_ZN94_$LT$tracing_subscriber..fmt..format..DefaultVisitor$u20$as$u20$tracing_core..field..Visit$GT$12record_debug17h1c49dffe0fd82310E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @230)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_ZN12tracing_core8callsite8Callsite15private_type_id17hdfbd43e5adf79a74E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #10 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @231, i64 16, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN13generic_array3hex91_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$generic_array..GenericArray$LT$u8$C$T$GT$$GT$3fmt17heffbcfe50c51ed45E"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 1                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i32, ptr %i.b, align 8, !noundef !8
  %i.d = and i32 %i.c, 268435456
  %i.e = icmp eq i32 %i.d, 0
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 22
  %i.g = load i16, ptr %i.f, align 2
  %i.h = zext i16 %i.g to i64
  %.sroa.01.0 = select i1 %i.e, i64 64, i64 %i.h  ; 6 uses
  %i.i = lshr i64 %.sroa.01.0, 1
  %i.j = sub nsw i64 %.sroa.01.0, %i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.a, i8 0, i64 64, i1 false), !alias.scope !9421
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9424)
  %.sroa.0.0.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 32)
  %.not.i = icmp eq i64 %.sroa.01.0, 0
  br i1 %.not.i, label %"_ZN98_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..adapters..take..SpecTake$GT$9spec_fold17h1cf1188c65e4d13bE.exit.thread", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.k = load ptr, ptr @_ZN13generic_array3hex11LOWER_CHARS17hb110f58be8abcfacE, align 8, !noalias !9427, !nonnull !8, !align !800 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold9enumerate28_$u7b$$u7b$closure$u7d$$u7d$17hd24b94f8676c7457E.exit.i.a", %.lr.ph.i
  %.sroa.0.011.i = phi i64 [ 0, %.lr.ph.i ], [ %i.n, %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold9enumerate28_$u7b$$u7b$closure$u7d$$u7d$17hd24b94f8676c7457E.exit.i.a" ] ; 4 uses
  %i.l = shl nuw nsw i64 %.sroa.0.011.i, 1        ; 2 uses
  %exitcond.not.i = icmp eq i64 %.sroa.0.011.i, 32
  br i1 %exitcond.not.i, label %bb.c, label %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold9enumerate28_$u7b$$u7b$closure$u7d$$u7d$17hd24b94f8676c7457E.exit.i.a"

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.l, i64 noundef 64, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @235) #54, !noalias !9429
  unreachable

"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold9enumerate28_$u7b$$u7b$closure$u7d$$u7d$17hd24b94f8676c7457E.exit.i.a": ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.011.i
  %.val9.i.a = load i8, ptr %i.m, align 1, !noalias !9427 ; 2 uses
  %i.n = add nuw nsw i64 %.sroa.0.011.i, 1        ; 2 uses
  %i.o = lshr i8 %.val9.i.a, 4
  %i.p = zext nneg i8 %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !noalias !9429, !noundef !8
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.l ; 2 uses
  store i8 %i.r, ptr %i.s, align 1, !alias.scope !9424, !noalias !9432
  %i.t = and i8 %.val9.i.a, 15
  %i.u = zext nneg i8 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1, !noalias !9429, !noundef !8
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  store i8 %i.w, ptr %i.x, align 1, !alias.scope !9424, !noalias !9432
  %exitcond13.not.i.a = icmp eq i64 %i.n, %.sroa.0.0.i.i
  br i1 %exitcond13.not.i.a, label %"_ZN98_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..adapters..take..SpecTake$GT$9spec_fold17h1cf1188c65e4d13bE.exit", label %bb.b

"_ZN98_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..adapters..take..SpecTake$GT$9spec_fold17h1cf1188c65e4d13bE.exit": ; preds = %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold9enumerate28_$u7b$$u7b$closure$u7d$$u7d$17hd24b94f8676c7457E.exit.i.a"
  %i.y = icmp samesign ult i64 %.sroa.01.0, 65
  br i1 %i.y, label %"_ZN98_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..adapters..take..SpecTake$GT$9spec_fold17h1cf1188c65e4d13bE.exit.thread", label %bb.d, !prof !9433

bb.d:                                             ; preds = %"_ZN98_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..adapters..take..SpecTake$GT$9spec_fold17h1cf1188c65e4d13bE.exit"
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %.sroa.01.0, i64 noundef 64, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @234) #54
  unreachable

"_ZN98_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..adapters..take..SpecTake$GT$9spec_fold17h1cf1188c65e4d13bE.exit.thread": ; preds = %bb.a, %"_ZN98_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..adapters..take..SpecTake$GT$9spec_fold17h1cf1188c65e4d13bE.exit"
  %i.z = call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, i64 noundef %.sroa.01.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.z
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN13tracing_trace5entry1_85_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$tracing_trace..entry..Entry$GT$11deserialize17ha1c5f6bc473a3f83E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(112) %0, ptr noalias noundef nonnull align 8 dereferenceable(96) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [16 x i8], align 8                ; 8 uses
  %i.o = alloca [24 x i8], align 8                ; 7 uses
  %i.p = alloca [16 x i8], align 8                ; 8 uses
  %i.q = alloca [24 x i8], align 8                ; 4 uses
  %i.r = alloca [24 x i8], align 8                ; 4 uses
  %i.s = alloca [16 x i8], align 8                ; 8 uses
  %i.t = alloca [112 x i8], align 8               ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9434)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9437)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9439)
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 13 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 12 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 81 ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 12 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 6 uses
  br label %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17haa190cd8d633031dE.exit.i.i"

"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17haa190cd8d633031dE.exit.i.i": ; preds = %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17haa190cd8d633031dE.exit.i.i.backedge", %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9442)
  %i.ab = load i8, ptr %i.v, align 8, !range !610, !alias.scope !9445, !noalias !9446, !noundef !8
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %.thread.i.i, label %bb.b

.thread.i.i:                                      ; preds = %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17haa190cd8d633031dE.exit.i.i"
  %i.ad = load i8, ptr %i.w, align 1, !alias.scope !9445, !noalias !9446, !noundef !8
  br label %bb.c

bb.b:                                             ; preds = %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17haa190cd8d633031dE.exit.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !9449
  call fastcc void @"_ZN101_$LT$serde_json..iter..LineColIterator$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h92f8f7b98fabe574E"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.s, ptr noalias noundef align 8 dereferenceable(32) %i.x), !noalias !9446
  %i.ae = load i8, ptr %i.s, align 8, !range !483, !noalias !9449, !noundef !8
  switch i8 %i.ae, label %bb.g [
    i8 2, label %bb.h
    i8 0, label %.thread30.i.i
  ], !prof !2338

.thread30.i.i:                                    ; preds = %bb.b
  %i.af = load i8, ptr %i.y, align 1, !noalias !9449, !noundef !8 ; 2 uses
  store i8 1, ptr %i.v, align 8, !alias.scope !9445, !noalias !9446
  store i8 %i.af, ptr %i.w, align 1, !alias.scope !9445, !noalias !9446
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !9449
  br label %bb.c

bb.c:                                             ; preds = %.thread30.i.i, %.thread.i.i
  %i.ag = phi i8 [ %i.ad, %.thread.i.i ], [ %i.af, %.thread30.i.i ] ; 2 uses
  switch i8 %i.ag, label %bb.i [
    i8 32, label %bb.d
    i8 10, label %bb.d
    i8 9, label %bb.d
    i8 13, label %bb.d
    i8 123, label %bb.j
    i8 34, label %bb.k
  ], !prof !9450

bb.d:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  store i8 0, ptr %i.v, align 8, !alias.scope !9451, !noalias !9454
  %i.ah = load i64, ptr %i.u, align 8, !range !929, !alias.scope !9451, !noalias !9454 ; 2 uses
  %.not.i.not.i.i = icmp eq i64 %i.ah, -9223372036854775808
  br i1 %.not.i.not.i.i, label %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17haa190cd8d633031dE.exit.i.i.backedge", label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ai = load i64, ptr %i.z, align 8, !alias.scope !9455, !noalias !9458, !noundef !8 ; 3 uses
  %i.aj = icmp eq i64 %i.ai, %i.ah
  br i1 %i.aj, label %bb.f, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h3a433258fd6a59abE.exit.i.i.i"

bb.f:                                             ; preds = %bb.e
  tail call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17ha41f396e8ea6efa1E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.u, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1685), !noalias !9454
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h3a433258fd6a59abE.exit.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h3a433258fd6a59abE.exit.i.i.i": ; preds = %bb.f, %bb.e
  %i.ak = load ptr, ptr %i.aa, align 8, !alias.scope !9455, !noalias !9458, !nonnull !8, !noundef !8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ai
  store i8 %i.ag, ptr %i.al, align 1, !noalias !9454
  %i.am = add i64 %i.ai, 1
  store i64 %i.am, ptr %i.z, align 8, !alias.scope !9455, !noalias !9458
  br label %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17haa190cd8d633031dE.exit.i.i.backedge"

"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17haa190cd8d633031dE.exit.i.i.backedge": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h3a433258fd6a59abE.exit.i.i.i", %bb.d
  br label %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17haa190cd8d633031dE.exit.i.i"

bb.g:                                             ; preds = %bb.b
  %i.an = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !noalias !9449, !nonnull !8, !noundef !8
  %i.ap = tail call noundef nonnull align 8 ptr @_ZN10serde_json5error5Error2io17hee74e472dc93099bE(ptr noundef nonnull %i.ao), !noalias !9460
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !9449
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ap, ptr %i.aq, align 8, !alias.scope !9434, !noalias !9437
  store i64 -9223372036854775801, ptr %0, align 8, !alias.scope !9434, !noalias !9437
  br label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$16deserialize_enum17h8470fe819f45f3acE.exit"

bb.h:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !9449
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val14.i = load i64, ptr %i.ar, align 8, !alias.scope !9437, !noalias !9434, !noundef !8
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val15.i = load i64, ptr %i.as, align 8, !alias.scope !9437, !noalias !9434, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !9461
  store i64 5, ptr %i.r, align 8, !noalias !9464
  %i.at = call noundef nonnull align 8 ptr @_ZN10serde_json5error5Error6syntax17hd0fb411d419d3392E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.r, i64 noundef %.val14.i, i64 noundef %.val15.i), !noalias !9465
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !9461
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.at, ptr %i.au, align 8, !alias.scope !9434, !noalias !9437
  store i64 -9223372036854775801, ptr %0, align 8, !alias.scope !9434, !noalias !9437
  br label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$16deserialize_enum17h8470fe819f45f3acE.exit"

bb.i:                                             ; preds = %bb.c
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val16.i = load i64, ptr %i.av, align 8, !alias.scope !9437, !noalias !9434, !noundef !8
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val17.i = load i64, ptr %i.aw, align 8, !alias.scope !9437, !noalias !9434, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !9466
  store i64 10, ptr %i.q, align 8, !noalias !9464
  %i.ax = call noundef nonnull align 8 ptr @_ZN10serde_json5error5Error6syntax17hd0fb411d419d3392E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.q, i64 noundef %.val16.i, i64 noundef %.val17.i), !noalias !9469
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !9466
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ax, ptr %i.ay, align 8, !alias.scope !9434, !noalias !9437
  store i64 -9223372036854775801, ptr %0, align 8, !alias.scope !9434, !noalias !9437
  br label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$16deserialize_enum17h8470fe819f45f3acE.exit"

bb.j:                                             ; preds = %bb.c
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.ba = load i8, ptr %i.az, align 8, !range !610, !alias.scope !9437, !noalias !9434, !noundef !8
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %bb.ak, label %bb.aj

bb.k:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9470)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9473)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9475)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9478)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9481)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9484)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9487)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9490)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9493)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  br label %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17haa190cd8d633031dE.exit.i.i.i.i.i.i.i.i.i"

"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17haa190cd8d633031dE.exit.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17haa190cd8d633031dE.exit.i.i.i.i.i.i.i.i.i.backedge", %bb.k
  %i.bd = phi i8 [ 1, %bb.k ], [ %.be, %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17haa190cd8d633031dE.exit.i.i.i.i.i.i.i.i.i.backedge" ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9496)
  %i.be = trunc nuw i8 %i.bd to i1
  br i1 %i.be, label %.thread.i.i.i.i.i.i.i.i.i, label %bb.l

.thread.i.i.i.i.i.i.i.i.i:                        ; preds = %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17haa190cd8d633031dE.exit.i.i.i.i.i.i.i.i.i"
  %i.bf = load i8, ptr %i.w, align 1, !alias.scope !9499, !noalias !9500, !noundef !8
  br label %bb.m

bb.l:                                             ; preds = %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17haa190cd8d633031dE.exit.i.i.i.i.i.i.i.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !9509
  call fastcc void @"_ZN101_$LT$serde_json..iter..LineColIterator$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h92f8f7b98fabe574E"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.n, ptr noalias noundef align 8 dereferenceable(32) %i.x), !noalias !9500
  %i.bg = load i8, ptr %i.n, align 8, !range !483, !noalias !9509, !noundef !8
  switch i8 %i.bg, label %bb.q [
    i8 2, label %bb.s
    i8 0, label %.thread30.i.i.i.i.i.i.i.i.i
  ], !prof !2338

.thread30.i.i.i.i.i.i.i.i.i:                      ; preds = %bb.l
  %i.bh = load i8, ptr %i.bc, align 1, !noalias !9509, !noundef !8 ; 2 uses
  store i8 1, ptr %i.v, align 8, !alias.scope !9499, !noalias !9500
  store i8 %i.bh, ptr %i.w, align 1, !alias.scope !9499, !noalias !9500
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !9509
  br label %bb.m

bb.m:                                             ; preds = %.thread30.i.i.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i.i.i
  %i.bi = phi i8 [ %i.bf, %.thread.i.i.i.i.i.i.i.i.i ], [ %i.bh, %.thread30.i.i.i.i.i.i.i.i.i ] ; 3 uses
  switch i8 %i.bi, label %bb.r [
    i8 32, label %bb.n
end_hunk_0
