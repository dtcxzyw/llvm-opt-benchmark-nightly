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
begin_hunk_1_@_ZN4core5slice4sort6shared5pivot11median3_rec17h871cb5af0552753aE:bb.a
  br label %_ZN4core5slice4sort6shared5pivot7median317haefc4ca90e8a5d60E.exit

_ZN4core5slice4sort6shared5pivot7median317haefc4ca90e8a5d60E.exit: ; preds = %bb.c, %bb.d
  %.sroa.0.0.i = phi ptr [ %.sroa.0.0, %bb.c ], [ %..i, %bb.d ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17hb96821d0cfa06265E(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 192)) %1) unnamed_addr #21 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 56
  %.val20 = load ptr, ptr %i.a, align 8, !nonnull !8, !noundef !8
  %i.b = getelementptr i8, ptr %0, i64 64
  %.val21 = load i64, ptr %i.b, align 8, !noundef !8 ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 8
  %.val22 = load ptr, ptr %i.c, align 8, !nonnull !8, !noundef !8
  %i.d = getelementptr i8, ptr %0, i64 16
  %.val23 = load i64, ptr %i.d, align 8, !noundef !8 ; 2 uses
  %..i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val21, i64 %.val23)
  %i.e = sub i64 %.val21, %.val23
  %i.f = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val20, ptr nonnull readonly align 1 %.val22, i64 %..i.i.i.i.i), !alias.scope !20399 ; 2 uses
  %i.g = sext i32 %i.f to i64
  %i.h = icmp eq i32 %i.f, 0
  %spec.store.select.i.i.i.i.i = select i1 %i.h, i64 %i.e, i64 %i.g ; 2 uses
  %i.i = icmp sgt i64 %spec.store.select.i.i.i.i.i, -1
  %i.j = getelementptr i8, ptr %0, i64 152
  %.val16 = load ptr, ptr %i.j, align 8, !nonnull !8, !noundef !8
  %i.k = getelementptr i8, ptr %0, i64 160
  %.val17 = load i64, ptr %i.k, align 8, !noundef !8 ; 2 uses
  %i.l = getelementptr i8, ptr %0, i64 104
  %.val18 = load ptr, ptr %i.l, align 8, !nonnull !8, !noundef !8
  %i.m = getelementptr i8, ptr %0, i64 112
  %.val19 = load i64, ptr %i.m, align 8, !noundef !8 ; 2 uses
  %..i.i.i.i.i24 = tail call i64 @llvm.umin.i64(i64 %.val17, i64 %.val19)
  %i.n = sub i64 %.val17, %.val19
  %i.o = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val16, ptr nonnull readonly align 1 %.val18, i64 %..i.i.i.i.i24), !alias.scope !20403 ; 2 uses
  %i.p = sext i32 %i.o to i64
  %i.q = icmp eq i32 %i.o, 0
  %spec.store.select.i.i.i.i.i25 = select i1 %i.q, i64 %i.n, i64 %i.p
  %i.r = icmp slt i64 %spec.store.select.i.i.i.i.i25, 0 ; 2 uses
  %spec.store.select.i.i.i.i.i.lobit = lshr i64 %spec.store.select.i.i.i.i.i, 63
  %i.s = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %spec.store.select.i.i.i.i.i.lobit ; 4 uses
  %i.t = zext i1 %i.i to i64
  %i.u = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %i.t ; 5 uses
  %i.v = select i1 %i.r, i64 3, i64 2
  %i.w = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %i.v ; 5 uses
  %i.x = select i1 %i.r, i64 2, i64 3
  %i.y = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %i.x ; 4 uses
  %i.z = getelementptr i8, ptr %i.w, i64 8
  %.val12 = load ptr, ptr %i.z, align 8, !nonnull !8, !noundef !8
  %i.aa = getelementptr i8, ptr %i.w, i64 16
  %.val13 = load i64, ptr %i.aa, align 8, !noundef !8 ; 2 uses
  %i.ab = getelementptr i8, ptr %i.s, i64 8
  %.val14 = load ptr, ptr %i.ab, align 8, !nonnull !8, !noundef !8
  %i.ac = getelementptr i8, ptr %i.s, i64 16
  %.val15 = load i64, ptr %i.ac, align 8, !noundef !8 ; 2 uses
  %..i.i.i.i.i26 = tail call i64 @llvm.umin.i64(i64 %.val13, i64 %.val15)
  %i.ad = sub i64 %.val13, %.val15
  %i.ae = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val12, ptr nonnull readonly align 1 %.val14, i64 %..i.i.i.i.i26), !alias.scope !20407 ; 2 uses
  %i.af = sext i32 %i.ae to i64
  %i.ag = icmp eq i32 %i.ae, 0
  %spec.store.select.i.i.i.i.i27 = select i1 %i.ag, i64 %i.ad, i64 %i.af
  %i.ah = icmp slt i64 %spec.store.select.i.i.i.i.i27, 0 ; 3 uses
  %i.ai = getelementptr i8, ptr %i.y, i64 8
  %.val8 = load ptr, ptr %i.ai, align 8, !nonnull !8, !noundef !8
  %i.aj = getelementptr i8, ptr %i.y, i64 16
  %.val9 = load i64, ptr %i.aj, align 8, !noundef !8 ; 2 uses
  %i.ak = getelementptr i8, ptr %i.u, i64 8
  %.val10 = load ptr, ptr %i.ak, align 8, !nonnull !8, !noundef !8
  %i.al = getelementptr i8, ptr %i.u, i64 16
  %.val11 = load i64, ptr %i.al, align 8, !noundef !8 ; 2 uses
  %..i.i.i.i.i28 = tail call i64 @llvm.umin.i64(i64 %.val9, i64 %.val11)
  %i.am = sub i64 %.val9, %.val11
  %i.an = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val8, ptr nonnull readonly align 1 %.val10, i64 %..i.i.i.i.i28), !alias.scope !20411 ; 2 uses
  %i.ao = sext i32 %i.an to i64
  %i.ap = icmp eq i32 %i.an, 0
  %spec.store.select.i.i.i.i.i29 = select i1 %i.ap, i64 %i.am, i64 %i.ao
  %i.aq = icmp slt i64 %spec.store.select.i.i.i.i.i29, 0 ; 3 uses
  %i.ar = select i1 %i.ah, ptr %i.w, ptr %i.s, !unpredictable !8
  %i.as = select i1 %i.aq, ptr %i.u, ptr %i.y, !unpredictable !8
  %i.at = select i1 %i.aq, ptr %i.w, ptr %i.u, !unpredictable !8
  %i.au = select i1 %i.ah, ptr %i.s, ptr %i.at, !unpredictable !8 ; 4 uses
  %i.av = select i1 %i.ah, ptr %i.u, ptr %i.w, !unpredictable !8
  %i.aw = select i1 %i.aq, ptr %i.y, ptr %i.av, !unpredictable !8 ; 4 uses
  %i.ax = getelementptr i8, ptr %i.aw, i64 8
  %.val = load ptr, ptr %i.ax, align 8, !nonnull !8, !noundef !8
  %i.ay = getelementptr i8, ptr %i.aw, i64 16
  %.val5 = load i64, ptr %i.ay, align 8, !noundef !8 ; 2 uses
  %i.az = getelementptr i8, ptr %i.au, i64 8
  %.val6 = load ptr, ptr %i.az, align 8, !nonnull !8, !noundef !8
  %i.ba = getelementptr i8, ptr %i.au, i64 16
  %.val7 = load i64, ptr %i.ba, align 8, !noundef !8 ; 2 uses
  %..i.i.i.i.i30 = tail call i64 @llvm.umin.i64(i64 %.val5, i64 %.val7)
  %i.bb = sub i64 %.val5, %.val7
  %i.bc = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val, ptr nonnull readonly align 1 %.val6, i64 %..i.i.i.i.i30), !alias.scope !20415 ; 2 uses
  %i.bd = sext i32 %i.bc to i64
  %i.be = icmp eq i32 %i.bc, 0
  %spec.store.select.i.i.i.i.i31 = select i1 %i.be, i64 %i.bb, i64 %i.bd
  %i.bf = icmp slt i64 %spec.store.select.i.i.i.i.i31, 0 ; 2 uses
  %i.bg = select i1 %i.bf, ptr %i.aw, ptr %i.au, !unpredictable !8
  %i.bh = select i1 %i.bf, ptr %i.au, ptr %i.aw, !unpredictable !8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(48) %i.ar, i64 48, i1 false)
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bi, ptr noundef nonnull align 8 dereferenceable(48) %i.bg, i64 48, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bj, ptr noundef nonnull align 8 dereferenceable(48) %i.bh, i64 48, i1 false)
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 144
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bk, ptr noundef nonnull align 8 dereferenceable(48) %i.as, i64 48, i1 false)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h7268a03877811f6fE(ptr noalias nofree noundef nonnull align 8 captures(address) %0, i64 noundef range(i64 2, 21) %1) unnamed_addr #22 personality ptr @rust_eh_personality {
.lr.ph.preheader:
  %.sroa.6.i = alloca [24 x i8], align 8          ; 4 uses
  %.idx = mul nuw nsw i64 %1, 48
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %.sroa.0.01 = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17he82ce2cef5429549E.exit
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN4core5slice4sort6shared9smallsort11insert_tail17he82ce2cef5429549E.exit
  %.sroa.0.04 = phi ptr [ %.sroa.0.0, %_ZN4core5slice4sort6shared9smallsort11insert_tail17he82ce2cef5429549E.exit ], [ %.sroa.0.01, %.lr.ph.preheader ] ; 7 uses
  %.pn3 = phi ptr [ %.sroa.0.04, %_ZN4core5slice4sort6shared9smallsort11insert_tail17he82ce2cef5429549E.exit ], [ %0, %.lr.ph.preheader ] ; 5 uses
  %i.b = getelementptr i8, ptr %.pn3, i64 56
  %.val11.i = load ptr, ptr %i.b, align 8, !nonnull !8, !noundef !8 ; 3 uses
  %i.c = getelementptr i8, ptr %.pn3, i64 64
  %.val12.i = load i64, ptr %i.c, align 8, !noundef !8 ; 5 uses
  %i.d = getelementptr i8, ptr %.pn3, i64 8
  %.val13.i = load ptr, ptr %i.d, align 8, !nonnull !8, !noundef !8
  %i.e = getelementptr i8, ptr %.pn3, i64 16
  %.val14.i = load i64, ptr %i.e, align 8, !noundef !8 ; 2 uses
  %..i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val12.i, i64 %.val14.i)
  %i.f = sub i64 %.val12.i, %.val14.i
  %i.g = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val11.i, ptr nonnull readonly align 1 %.val13.i, i64 %..i.i.i.i.i.i), !alias.scope !20419 ; 2 uses
  %i.h = sext i32 %i.g to i64
  %i.i = icmp eq i32 %i.g, 0
  %spec.store.select.i.i.i.i.i.i = select i1 %i.i, i64 %i.f, i64 %i.h
  %i.j = icmp slt i64 %spec.store.select.i.i.i.i.i.i, 0
  br i1 %i.j, label %bb.a, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17he82ce2cef5429549E.exit

bb.a:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  %.sroa.08.0.copyload.i = load i64, ptr %.sroa.0.04, align 8
  %.sroa.611.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.pn3, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.611.0..sroa_idx.i, i64 24, i1 false)
  %.sroa.0.0.i1 = getelementptr inbounds i8, ptr %.sroa.0.04, i64 -48 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.04, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.0.i1, i64 48, i1 false)
  %i.k = icmp eq ptr %.sroa.0.0.i1, %0
  br i1 %i.k, label %._crit_edge6, label %.lr.ph5

bb.b:                                             ; preds = %.lr.ph5
  %.sroa.0.0.i = getelementptr inbounds i8, ptr %.sroa.0.0.i3, i64 -48 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.0.i3, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.0.i, i64 48, i1 false)
  %i.l = icmp eq ptr %.sroa.0.0.i, %0
  br i1 %i.l, label %._crit_edge6, label %.lr.ph5

.lr.ph5:                                          ; preds = %bb.a, %bb.b
  %.sroa.0.0.i3 = phi ptr [ %.sroa.0.0.i, %bb.b ], [ %.sroa.0.0.i1, %bb.a ] ; 5 uses
  %.sroa.5.0.i2 = phi ptr [ %.sroa.0.0.i3, %bb.b ], [ %.sroa.0.04, %bb.a ] ; 3 uses
  %i.m = getelementptr i8, ptr %.sroa.5.0.i2, i64 -88
  %.val9.i = load ptr, ptr %i.m, align 8, !nonnull !8, !noundef !8
  %i.n = getelementptr i8, ptr %.sroa.5.0.i2, i64 -80
  %.val10.i = load i64, ptr %i.n, align 8, !noundef !8 ; 2 uses
  %..i.i.i.i.i15.i = tail call i64 @llvm.umin.i64(i64 %.val12.i, i64 %.val10.i)
  %i.o = sub i64 %.val12.i, %.val10.i
  %i.p = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val11.i, ptr nonnull readonly align 1 %.val9.i, i64 %..i.i.i.i.i15.i), !alias.scope !20423 ; 2 uses
  %i.q = sext i32 %i.p to i64
  %i.r = icmp eq i32 %i.p, 0
  %spec.store.select.i.i.i.i.i16.i = select i1 %i.r, i64 %i.o, i64 %i.q
  %i.s = icmp slt i64 %spec.store.select.i.i.i.i.i16.i, 0
  br i1 %i.s, label %bb.b, label %._crit_edge6

._crit_edge6:                                     ; preds = %bb.b, %.lr.ph5, %bb.a
  %.sroa.5.0.i.lcssa = phi ptr [ %.sroa.0.04, %bb.a ], [ %.sroa.0.0.i3, %bb.b ], [ %.sroa.5.0.i2, %.lr.ph5 ] ; 3 uses
  %.sroa.0.0.i.lcssa = phi ptr [ %0, %bb.a ], [ %0, %bb.b ], [ %.sroa.0.0.i3, %.lr.ph5 ]
  store i64 %.sroa.08.0.copyload.i, ptr %.sroa.0.0.i.lcssa, align 8, !noalias !20427
  %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.lcssa, i64 -40
  store ptr %.val11.i, ptr %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i, align 8, !noalias !20427
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.lcssa, i64 -32
  store i64 %.val12.i, ptr %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i, align 8, !noalias !20427
  %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.lcssa, i64 -24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.i, i64 24, i1 false), !noalias !20427
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17he82ce2cef5429549E.exit

_ZN4core5slice4sort6shared9smallsort11insert_tail17he82ce2cef5429549E.exit: ; preds = %.lr.ph, %._crit_edge6
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %.sroa.0.04, i64 48 ; 2 uses
  %.not = icmp eq ptr %.sroa.0.0, %i.a
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: noinline nonlazybind uwtable
define void @_ZN4core5slice4sort6stable14driftsort_main17h7a5003ccbbfcac82E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %2) unnamed_addr #23 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [4096 x i8], align 8              ; 3 uses
  %i.c = lshr i64 %1, 1
  %i.d = sub i64 %1, %i.c                         ; 2 uses
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %1, i64 166666)
  %.sroa.0.0.i16 = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i, i64 %i.d) ; 2 uses
  %.sroa.0.0.i17 = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i16, i64 48) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = icmp ult i64 %.sroa.0.0.i16, 86
  br i1 %i.e, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = mul i64 %.sroa.0.0.i17, 48               ; 3 uses
  %or.cond.i.i.i.i = icmp ugt i64 %i.d, 192153584101141162
  br i1 %or.cond.i.i.i.i, label %.noexc, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, !prof !807

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i: ; preds = %bb.b
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.c, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #47, !noalias !20432
  %i.h = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.f, i64 noundef range(i64 1, 9) 8) #47, !noalias !20432 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %.noexc, label %bb.c

.noexc:                                           ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i", %bb.b
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i" ], [ 0, %bb.b ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @693) #54
  unreachable

bb.c:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i", %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  %.sroa.4.0.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i ], [ %.sroa.0.0.i17, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i" ] ; 4 uses
  %.sroa.10.0.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i ], [ %i.h, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i" ] ; 3 uses
  %i.j = icmp samesign ule i64 %.sroa.0.0.i17, %.sroa.4.0.i.i
  tail call void @llvm.assume(i1 %i.j)
  store i64 %.sroa.4.0.i.i, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.sroa.10.0.i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.k = icmp ult i64 %1, 65
  invoke fastcc void @_ZN4core5slice4sort6stable5drift4sort17h0d3a0980487777ccE(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %.sroa.10.0.i.i, i64 noundef %.sroa.4.0.i.i, i1 noundef zeroext %i.k, ptr noalias noundef align 8 dereferenceable(8) %2)
          to label %"_ZN4core3ptr123drop_in_place$LT$alloc..vec..Vec$LT$$LP$alloc..string..String$C$tracing_trace..processor..span_stats..CallStats$RP$$GT$$GT$17hbed678d9a9e8a46bE.exit" unwind label %bb.f

"_ZN4core3ptr123drop_in_place$LT$alloc..vec..Vec$LT$$LP$alloc..string..String$C$tracing_trace..processor..span_stats..CallStats$RP$$GT$$GT$17hbed678d9a9e8a46bE.exit": ; preds = %bb.c
  %i.l = mul nuw nsw i64 %.sroa.4.0.i.i, 48
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i, i64 noundef %i.l, i64 noundef range(i64 1, -9223372036854775807) 8) #47, !noalias !20439
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.m = icmp ult i64 %1, 65
  call fastcc void @_ZN4core5slice4sort6stable5drift4sort17h0d3a0980487777ccE(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %i.b, i64 noundef 85, i1 noundef zeroext %i.m, ptr noalias noundef align 8 dereferenceable(8) %2)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %"_ZN4core3ptr123drop_in_place$LT$alloc..vec..Vec$LT$$LP$alloc..string..String$C$tracing_trace..processor..span_stats..CallStats$RP$$GT$$GT$17hbed678d9a9e8a46bE.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.f:                                             ; preds = %bb.c
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr123drop_in_place$LT$alloc..vec..Vec$LT$$LP$alloc..string..String$C$tracing_trace..processor..span_stats..CallStats$RP$$GT$$GT$17hbed678d9a9e8a46bE"(ptr noalias noundef align 8 dereferenceable(24) %i.a) #55
  resume { ptr, i32 } %lpad.thr_comm.split-lp
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6stable5drift4sort17h0d3a0980487777ccE(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp ult i64 %1, 2
  br i1 %i.c, label %bb.ae, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_ZN4core5slice4sort6stable5drift11sqrt_approx17h43164af9ba479437E(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nsw i64 %1, %i.i
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i102 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i107 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.aa, %bb.e
  %.sroa.018.0 = phi i64 [ 1, %bb.e ], [ %.sroa.023.0, %bb.aa ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.ey, %bb.aa ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.ew, %bb.aa ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h4817be5e7c196361E.exit", label %bb.q

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h4817be5e7c196361E.exit": ; preds = %bb.f
  %i.l = sub nuw i64 %1, %.sroa.09.0              ; 11 uses
  %i.m = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20442)
  %.not.i33 = icmp ult i64 %i.l, %.sroa.01.0
  br i1 %.not.i33, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h53e335289067cc3eE.exit.i.thread105, %_ZN4core5slice4sort6shared17find_existing_run17h53e335289067cc3eE.exit.i.thread, %_ZN4core5slice4sort6shared17find_existing_run17h53e335289067cc3eE.exit.i, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h4817be5e7c196361E.exit"
  br i1 %4, label %bb.n, label %bb.m

bb.h:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h4817be5e7c196361E.exit"
  %i.n = icmp ult i64 %i.l, 2
  br i1 %i.n, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h9787b591a89010bcE.exit", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = getelementptr i8, ptr %i.m, i64 56
  %.val14.i = load ptr, ptr %i.o, align 8, !alias.scope !20442, !noalias !20445, !nonnull !8, !noundef !8 ; 3 uses
  %i.p = getelementptr i8, ptr %i.m, i64 64
  %.val15.i = load i64, ptr %i.p, align 8, !alias.scope !20442, !noalias !20445, !noundef !8 ; 4 uses
  %i.q = getelementptr i8, ptr %i.m, i64 8
  %.val16.i = load ptr, ptr %i.q, align 8, !alias.scope !20442, !noalias !20445, !nonnull !8, !noundef !8
  %i.r = getelementptr i8, ptr %i.m, i64 16
  %.val17.i = load i64, ptr %i.r, align 8, !alias.scope !20442, !noalias !20445, !noundef !8 ; 2 uses
  %..i.i.i.i.i42 = tail call i64 @llvm.umin.i64(i64 %.val15.i, i64 %.val17.i)
  %i.s = sub i64 %.val15.i, %.val17.i
  %i.t = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val14.i, ptr nonnull readonly align 1 %.val16.i, i64 %..i.i.i.i.i42), !alias.scope !20448, !noalias !20452 ; 2 uses
  %i.u = sext i32 %i.t to i64
  %i.v = icmp eq i32 %i.t, 0
  %spec.store.select.i.i.i.i.i43 = select i1 %i.v, i64 %i.s, i64 %i.u
  %i.w = icmp slt i64 %spec.store.select.i.i.i.i.i43, 0 ; 2 uses
  %.not75 = icmp eq i64 %i.l, 2                   ; 2 uses
  br i1 %i.w, label %.preheader, label %.preheader53

.preheader53:                                     ; preds = %bb.i
  br i1 %.not75, label %_ZN4core5slice4sort6shared17find_existing_run17h53e335289067cc3eE.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.i
  br i1 %.not75, label %_ZN4core5slice4sort6shared17find_existing_run17h53e335289067cc3eE.exit.i.thread105, label %.lr.ph62

.lr.ph:                                           ; preds = %.preheader53, %bb.j
  %.val13.i = phi i64 [ %.val11.i, %bb.j ], [ %.val15.i, %.preheader53 ] ; 2 uses
  %.val12.i = phi ptr [ %.val10.i, %bb.j ], [ %.val14.i, %.preheader53 ]
  %.sroa.01.0.i.i58 = phi i64 [ %i.af, %bb.j ], [ 2, %.preheader53 ] ; 3 uses
  %i.x = getelementptr inbounds nuw [48 x i8], ptr %i.m, i64 %.sroa.01.0.i.i58 ; 2 uses
  %i.y = getelementptr i8, ptr %i.x, i64 8
  %.val10.i = load ptr, ptr %i.y, align 8, !alias.scope !20442, !noalias !20445, !nonnull !8, !noundef !8 ; 2 uses
  %i.z = getelementptr i8, ptr %i.x, i64 16
  %.val11.i = load i64, ptr %i.z, align 8, !alias.scope !20442, !noalias !20445, !noundef !8 ; 3 uses
  %..i.i.i.i.i40 = tail call i64 @llvm.umin.i64(i64 %.val11.i, i64 %.val13.i)
  %i.aa = sub i64 %.val11.i, %.val13.i
  %i.ab = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val10.i, ptr nonnull readonly align 1 %.val12.i, i64 %..i.i.i.i.i40), !alias.scope !20453, !noalias !20452 ; 2 uses
  %i.ac = sext i32 %i.ab to i64
  %i.ad = icmp eq i32 %i.ab, 0
  %spec.store.select.i.i.i.i.i41 = select i1 %i.ad, i64 %i.aa, i64 %i.ac
  %i.ae = icmp slt i64 %spec.store.select.i.i.i.i.i41, 0
  br i1 %i.ae, label %_ZN4core5slice4sort6shared17find_existing_run17h53e335289067cc3eE.exit.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  %i.af = add nuw i64 %.sroa.01.0.i.i58, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.af, %i.l
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17h53e335289067cc3eE.exit.i, label %.lr.ph

.lr.ph62:                                         ; preds = %.preheader, %bb.k
  %.val9.i = phi i64 [ %.val7.i, %bb.k ], [ %.val15.i, %.preheader ] ; 2 uses
  %.val8.i = phi ptr [ %.val.i, %bb.k ], [ %.val14.i, %.preheader ]
  %.sroa.01.1.i.i61 = phi i64 [ %i.ao, %bb.k ], [ 2, %.preheader ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [48 x i8], ptr %i.m, i64 %.sroa.01.1.i.i61 ; 2 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 8
  %.val.i = load ptr, ptr %i.ah, align 8, !alias.scope !20442, !noalias !20445, !nonnull !8, !noundef !8 ; 2 uses
  %i.ai = getelementptr i8, ptr %i.ag, i64 16
  %.val7.i = load i64, ptr %i.ai, align 8, !alias.scope !20442, !noalias !20445, !noundef !8 ; 3 uses
  %..i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val7.i, i64 %.val9.i)
  %i.aj = sub i64 %.val7.i, %.val9.i
  %i.ak = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val.i, ptr nonnull readonly align 1 %.val8.i, i64 %..i.i.i.i.i), !alias.scope !20457, !noalias !20452 ; 2 uses
  %i.al = sext i32 %i.ak to i64
  %i.am = icmp eq i32 %i.ak, 0
  %spec.store.select.i.i.i.i.i = select i1 %i.am, i64 %i.aj, i64 %i.al
  %i.an = icmp slt i64 %spec.store.select.i.i.i.i.i, 0
  br i1 %i.an, label %bb.k, label %_ZN4core5slice4sort6shared17find_existing_run17h53e335289067cc3eE.exit.i

bb.k:                                             ; preds = %.lr.ph62
  %i.ao = add nuw i64 %.sroa.01.1.i.i61, 1        ; 2 uses
  %exitcond82.not = icmp eq i64 %i.ao, %i.l
  br i1 %exitcond82.not, label %_ZN4core5slice4sort6shared17find_existing_run17h53e335289067cc3eE.exit.i, label %.lr.ph62

_ZN4core5slice4sort6shared17find_existing_run17h53e335289067cc3eE.exit.i: ; preds = %bb.j, %.lr.ph, %bb.k, %.lr.ph62
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i61, %.lr.ph62 ], [ %i.l, %bb.k ], [ %.sroa.01.0.i.i58, %.lr.ph ], [ %i.l, %bb.j ] ; 6 uses
  %i.ap = icmp ule i64 %.sroa.0.0.i.i, %i.l
  tail call void @llvm.assume(i1 %i.ap)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.g, label %bb.l

_ZN4core5slice4sort6shared17find_existing_run17h53e335289067cc3eE.exit.i.thread105: ; preds = %.preheader
  br i1 %.not5.i107, label %bb.g, label %.lr.ph.preheader.i.i

_ZN4core5slice4sort6shared17find_existing_run17h53e335289067cc3eE.exit.i.thread: ; preds = %.preheader53
  br i1 %.not5.i102, label %bb.g, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h9787b591a89010bcE.exit"

bb.l:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h53e335289067cc3eE.exit.i
  br i1 %i.w, label %bb.o, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h9787b591a89010bcE.exit"

bb.m:                                             ; preds = %bb.g
  %.sroa.0.0.i39 = tail call noundef i64 @llvm.umin.i64(i64 %i.l, i64 %.sroa.01.0)
  %i.aq = shl i64 %.sroa.0.0.i39, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h3b508deb5d5fcd01E.exit

bb.n:                                             ; preds = %bb.g
  %.sroa.0.0.i38 = tail call noundef i64 @llvm.umin.i64(i64 %i.l, i64 32) ; 2 uses
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17he2c5c3eb1b931e5bE(ptr noalias noundef nonnull align 8 %i.m, i64 noundef %.sroa.0.0.i38, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(48) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !20461
  %i.ar = shl nuw nsw i64 %.sroa.0.0.i38, 1
  %i.as = or disjoint i64 %i.ar, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h3b508deb5d5fcd01E.exit

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h9787b591a89010bcE.exit": ; preds = %bb.p, %_ZN4core5slice4sort6shared17find_existing_run17h53e335289067cc3eE.exit.i.thread, %bb.h, %bb.o, %bb.l
  %.sroa.0.0.i.i4851 = phi i64 [ %i.l, %bb.h ], [ %.sroa.0.0.i.i, %bb.l ], [ %.sroa.0.0.i.i, %bb.o ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h53e335289067cc3eE.exit.i.thread ], [ %.sroa.0.0.i.i103110114, %bb.p ]
  %i.at = shl i64 %.sroa.0.0.i.i4851, 1
  %i.au = or disjoint i64 %i.at, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h3b508deb5d5fcd01E.exit

bb.o:                                             ; preds = %bb.l
  %i.av = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20462), !noalias !20445
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20465), !noalias !20445
  %.not15.i.i = icmp eq i64 %i.av, 0
  br i1 %.not15.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h9787b591a89010bcE.exit", label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h53e335289067cc3eE.exit.i.thread105, %bb.o
  %i.aw = phi i64 [ %i.av, %bb.o ], [ 1, %_ZN4core5slice4sort6shared17find_existing_run17h53e335289067cc3eE.exit.i.thread105 ]
  %.sroa.0.0.i.i103110114 = phi i64 [ %.sroa.0.0.i.i, %bb.o ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h53e335289067cc3eE.exit.i.thread105 ] ; 2 uses
  %i.ax = getelementptr inbounds nuw [48 x i8], ptr %i.m, i64 %.sroa.0.0.i.i103110114
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %.lr.ph.preheader.i.i
  %.sroa.0.014.i.i = phi i64 [ %i.bl, %bb.p ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.ay = xor i64 %.sroa.0.014.i.i, -1
  %i.az = getelementptr inbounds nuw [48 x i8], ptr %i.m, i64 %.sroa.0.014.i.i ; 4 uses
  %i.ba = getelementptr [48 x i8], ptr %i.ax, i64 %i.ay ; 4 uses
  %i.bb = load <2 x i64>, ptr %i.az, align 8, !alias.scope !20467, !noalias !20473
  %i.bc = load <2 x i64>, ptr %i.ba, align 8, !alias.scope !20474, !noalias !20477
  store <2 x i64> %i.bc, ptr %i.az, align 8, !alias.scope !20467, !noalias !20473
  store <2 x i64> %i.bb, ptr %i.ba, align 8, !alias.scope !20474, !noalias !20477
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 16 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 16 ; 2 uses
  %i.bf = load <2 x i64>, ptr %i.bd, align 8, !alias.scope !20478, !noalias !20473
  %i.bg = load <2 x i64>, ptr %i.be, align 8, !alias.scope !20481, !noalias !20477
  store <2 x i64> %i.bg, ptr %i.bd, align 8, !alias.scope !20478, !noalias !20473
  store <2 x i64> %i.bf, ptr %i.be, align 8, !alias.scope !20481, !noalias !20477
  %i.bh = getelementptr inbounds nuw i8, ptr %i.az, i64 32 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ba, i64 32 ; 2 uses
  %i.bj = load <2 x i64>, ptr %i.bh, align 8, !alias.scope !20484, !noalias !20473
  %i.bk = load <2 x i64>, ptr %i.bi, align 8, !alias.scope !20487, !noalias !20477
  store <2 x i64> %i.bk, ptr %i.bh, align 8, !alias.scope !20484, !noalias !20473
  store <2 x i64> %i.bj, ptr %i.bi, align 8, !alias.scope !20487, !noalias !20477
  %i.bl = add nuw nsw i64 %.sroa.0.014.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bl, %i.aw
  br i1 %exitcond.not.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h9787b591a89010bcE.exit", label %bb.p

_ZN4core5slice4sort6stable5drift10create_run17h3b508deb5d5fcd01E.exit: ; preds = %bb.m, %bb.n, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h9787b591a89010bcE.exit"
  %.sroa.0.0.i34 = phi i64 [ %i.au, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h9787b591a89010bcE.exit" ], [ %i.as, %bb.n ], [ %i.aq, %bb.m ] ; 2 uses
  %i.bm = lshr i64 %.sroa.018.0, 1
  %i.bn = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl i64 %.sroa.09.0, 1                ; 2 uses
  %i.bo = sub i64 %factor, %i.bm
  %i.bp = add i64 %i.bn, %factor
  %i.bq = mul i64 %i.bo, %.sroa.0.0
  %i.br = mul i64 %i.bp, %.sroa.0.0
  %i.bs = xor i64 %i.br, %i.bq
  %i.bt = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bs, i1 false)
  %i.bu = trunc nuw nsw i64 %i.bt to i8
  br label %bb.q

bb.q:                                             ; preds = %bb.f, %_ZN4core5slice4sort6stable5drift10create_run17h3b508deb5d5fcd01E.exit
  %.sroa.026.0 = phi i8 [ %i.bu, %_ZN4core5slice4sort6stable5drift10create_run17h3b508deb5d5fcd01E.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.023.0 = phi i64 [ %.sroa.0.0.i34, %_ZN4core5slice4sort6stable5drift10create_run17h3b508deb5d5fcd01E.exit ], [ 1, %bb.f ] ; 2 uses
  %i.bv = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.bv, label %.lr.ph68, label %._crit_edge

.lr.ph68:                                         ; preds = %bb.q
  %i.bw = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph68, %_ZN4core5slice4sort6stable5drift13logical_merge17h7ed65545bb275548E.exit
end_hunk_1
begin_hunk_2_@_ZN4core5slice4sort6stable5drift4sort17h0d3a0980487777ccE:bb.a
  %i.cz = xor i32 %i.cy, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17he2c5c3eb1b931e5bE(ptr noalias noundef nonnull align 8 %i.cu, i64 noundef %i.cf, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.cz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(48) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !20490
  br label %bb.x

bb.x:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h4817be5e7c196361E.exit35", %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20491)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20494)
  %i.da = icmp eq i64 %i.ce, 0
  %i.db = icmp eq i64 %i.cf, 0
  %or.cond.i = or i1 %i.db, %i.da
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17he8bdccce1b77d91fE.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.sroa.0.0.i.i36 = tail call i64 @llvm.umin.i64(i64 %i.cf, i64 range(i64 0, -9223372036854775808) %i.ce) ; 2 uses
  %i.dc = icmp ult i64 %3, %.sroa.0.0.i.i36
  br i1 %i.dc, label %_ZN4core5slice4sort6stable5merge5merge17he8bdccce1b77d91fE.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dd = getelementptr inbounds nuw [48 x i8], ptr %i.ci, i64 %i.ce ; 3 uses
  %.not.i37 = icmp samesign ugt i64 %i.ce, %i.cf  ; 2 uses
  %.16.i = select i1 %.not.i37, ptr %i.dd, ptr %i.ci
  %i.de = mul i64 %.sroa.0.0.i.i36, 48            ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %.16.i, i64 %i.de, i1 false), !alias.scope !20496
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 %i.de ; 3 uses
  br i1 %.not.i37, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %bb.z, %.preheader.i
  %i.dg = phi ptr [ %i.dw, %.preheader.i ], [ %i.df, %bb.z ] ; 3 uses
  %i.dh = phi ptr [ %i.dv, %.preheader.i ], [ %i.dd, %bb.z ] ; 3 uses
  %.sroa.0.0.i17.i = phi ptr [ %i.dk, %.preheader.i ], [ %i.bw, %bb.z ]
  %i.di = getelementptr inbounds i8, ptr %i.dh, i64 -48 ; 2 uses
  %i.dj = getelementptr inbounds i8, ptr %i.dg, i64 -48 ; 2 uses
  %i.dk = getelementptr inbounds i8, ptr %.sroa.0.0.i17.i, i64 -48 ; 2 uses
  %i.dl = getelementptr i8, ptr %i.dg, i64 -40
  %.val.i.i = load ptr, ptr %i.dl, align 8, !alias.scope !20494, !noalias !20497, !nonnull !8, !noundef !8
  %i.dm = getelementptr i8, ptr %i.dg, i64 -32
  %.val10.i.i = load i64, ptr %i.dm, align 8, !alias.scope !20494, !noalias !20497, !noundef !8 ; 2 uses
  %i.dn = getelementptr i8, ptr %i.dh, i64 -40
  %.val11.i.i = load ptr, ptr %i.dn, align 8, !alias.scope !20491, !noalias !20500, !nonnull !8, !noundef !8
  %i.do = getelementptr i8, ptr %i.dh, i64 -32
  %.val12.i.i = load i64, ptr %i.do, align 8, !alias.scope !20491, !noalias !20500, !noundef !8 ; 2 uses
  %..i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val10.i.i, i64 %.val12.i.i)
  %i.dp = sub i64 %.val10.i.i, %.val12.i.i
  %i.dq = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val.i.i, ptr nonnull readonly align 1 %.val11.i.i, i64 %..i.i.i.i.i.i.i), !alias.scope !20501, !noalias !20505 ; 2 uses
  %i.dr = sext i32 %i.dq to i64
  %i.ds = icmp eq i32 %i.dq, 0
  %spec.store.select.i.i.i.i.i.i.i = select i1 %i.ds, i64 %i.dp, i64 %i.dr ; 2 uses
  %i.dt = icmp sgt i64 %spec.store.select.i.i.i.i.i.i.i, -1 ; 2 uses
  %..i.i = select i1 %i.dt, ptr %i.dj, ptr %i.di
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.dk, ptr noundef nonnull align 8 dereferenceable(48) %..i.i, i64 48, i1 false), !alias.scope !20496, !noalias !20506
  %i.du = zext i1 %i.dt to i64
  %i.dv = getelementptr inbounds nuw [48 x i8], ptr %i.di, i64 %i.du ; 3 uses
  %spec.store.select.i.i.i.i.i.lobit.i.i = lshr i64 %spec.store.select.i.i.i.i.i.i.i, 63
  %i.dw = getelementptr inbounds nuw [48 x i8], ptr %i.dj, i64 %spec.store.select.i.i.i.i.i.lobit.i.i ; 3 uses
  %i.dx = icmp eq ptr %i.dv, %i.ci
  %i.dy = icmp eq ptr %i.dw, %2
  %or.cond.i.i = select i1 %i.dx, i1 true, i1 %i.dy
  br i1 %or.cond.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hc9f60b3b283fa3aeE.exit.i", label %.preheader.i

.lr.ph.i.i:                                       ; preds = %bb.z, %.lr.ph.i.i
  %i.dz = phi ptr [ %i.en, %.lr.ph.i.i ], [ %i.ci, %bb.z ] ; 2 uses
  %.sroa.0.02.i.i = phi ptr [ %i.em, %.lr.ph.i.i ], [ %i.dd, %bb.z ] ; 4 uses
  %i.ea = phi ptr [ %i.el, %.lr.ph.i.i ], [ %2, %bb.z ] ; 4 uses
  %i.eb = getelementptr i8, ptr %.sroa.0.02.i.i, i64 8
  %.sroa.0.0.val.i.i = load ptr, ptr %i.eb, align 8, !alias.scope !20491, !noalias !20507, !nonnull !8, !noundef !8
  %i.ec = getelementptr i8, ptr %.sroa.0.02.i.i, i64 16
  %.sroa.0.0.val6.i.i = load i64, ptr %i.ec, align 8, !alias.scope !20491, !noalias !20507, !noundef !8 ; 2 uses
  %i.ed = getelementptr i8, ptr %i.ea, i64 8
  %.val.i19.i = load ptr, ptr %i.ed, align 8, !alias.scope !20494, !noalias !20510, !nonnull !8, !noundef !8
  %i.ee = getelementptr i8, ptr %i.ea, i64 16
  %.val7.i.i = load i64, ptr %i.ee, align 8, !alias.scope !20494, !noalias !20510, !noundef !8 ; 2 uses
  %..i.i.i.i.i.i20.i = tail call i64 @llvm.umin.i64(i64 %.sroa.0.0.val6.i.i, i64 %.val7.i.i)
  %i.ef = sub i64 %.sroa.0.0.val6.i.i, %.val7.i.i
  %i.eg = tail call i32 @memcmp(ptr nonnull readonly align 1 %.sroa.0.0.val.i.i, ptr nonnull readonly align 1 %.val.i19.i, i64 %..i.i.i.i.i.i20.i), !alias.scope !20511, !noalias !20515 ; 2 uses
  %i.eh = sext i32 %i.eg to i64
  %i.ei = icmp eq i32 %i.eg, 0
  %spec.store.select.i.i.i.i.i.i21.i = select i1 %i.ei, i64 %i.ef, i64 %i.eh ; 2 uses
  %i.ej = icmp sgt i64 %spec.store.select.i.i.i.i.i.i21.i, -1 ; 2 uses
  %spec.select.i.i = select i1 %i.ej, ptr %i.ea, ptr %.sroa.0.02.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.dz, ptr noundef nonnull align 8 dereferenceable(48) %spec.select.i.i, i64 48, i1 false), !alias.scope !20496, !noalias !20516
  %i.ek = zext i1 %i.ej to i64
  %i.el = getelementptr inbounds nuw [48 x i8], ptr %i.ea, i64 %i.ek ; 3 uses
  %spec.store.select.i.i.i.i.i.lobit.i22.i = lshr i64 %spec.store.select.i.i.i.i.i.i21.i, 63
  %i.em = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.02.i.i, i64 %spec.store.select.i.i.i.i.i.lobit.i22.i ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.dz, i64 48 ; 2 uses
  %i.eo = icmp ne ptr %i.el, %i.df
  %i.ep = icmp ne ptr %i.em, %i.bw
  %or.cond.i23.i = select i1 %i.eo, i1 %i.ep, i1 false
  br i1 %or.cond.i23.i, label %.lr.ph.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hc9f60b3b283fa3aeE.exit.i"

"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hc9f60b3b283fa3aeE.exit.i": ; preds = %.lr.ph.i.i, %.preheader.i
  %.sroa.13.1.i = phi ptr [ %i.dv, %.preheader.i ], [ %i.en, %.lr.ph.i.i ]
  %.sroa.7.0.i = phi ptr [ %i.dw, %.preheader.i ], [ %i.df, %.lr.ph.i.i ]
  %.sroa.0.1.i = phi ptr [ %2, %.preheader.i ], [ %i.el, %.lr.ph.i.i ] ; 2 uses
  %i.eq = ptrtoint ptr %.sroa.7.0.i to i64
  %i.er = ptrtoint ptr %.sroa.0.1.i to i64
  %i.es = sub nuw i64 %i.eq, %i.er
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.1.i, ptr align 8 %.sroa.0.1.i, i64 %i.es, i1 false), !alias.scope !20496, !noalias !20517
  br label %_ZN4core5slice4sort6stable5merge5merge17he8bdccce1b77d91fE.exit

_ZN4core5slice4sort6stable5merge5merge17he8bdccce1b77d91fE.exit: ; preds = %bb.x, %bb.y, %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hc9f60b3b283fa3aeE.exit.i"
  %i.et = shl i64 %i.cg, 1
  %i.eu = or disjoint i64 %i.et, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h7ed65545bb275548E.exit

_ZN4core5slice4sort6stable5drift13logical_merge17h7ed65545bb275548E.exit: ; preds = %bb.u, %_ZN4core5slice4sort6stable5merge5merge17he8bdccce1b77d91fE.exit
  %.sroa.0.0.i = phi i64 [ %i.eu, %_ZN4core5slice4sort6stable5merge5merge17he8bdccce1b77d91fE.exit ], [ %i.co, %bb.u ] ; 2 uses
  %i.ev = icmp ugt i64 %i.bx, 1
  br i1 %i.ev, label %bb.r, label %._crit_edge

bb.aa:                                            ; preds = %._crit_edge
  %i.ew = add i64 %.sroa.02.1.lcssa, 1
  %i.ex = lshr i64 %.sroa.023.0, 1
  %i.ey = add i64 %i.ex, %.sroa.09.0
  br label %bb.f

bb.ab:                                            ; preds = %._crit_edge
  %i.ez = and i64 %.sroa.018.1.lcssa, 1
  %.not31 = icmp eq i64 %i.ez, 0
  br i1 %.not31, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.fa = or i64 %1, 1
  %i.fb = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.fa, i1 true)
  %i.fc = trunc nuw nsw i64 %i.fb to i32
  %i.fd = shl nuw nsw i32 %i.fc, 1
  %i.fe = xor i32 %i.fd, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17he2c5c3eb1b931e5bE(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.fe, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(48) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !20490
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.a, %bb.ad
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @_ZN4core5slice4sort6stable9quicksort9quicksort17he2c5c3eb1b931e5bE(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %4, ptr noalias noundef readonly align 8 captures(address) dereferenceable_or_null(48) %5, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %6) unnamed_addr #23 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [48 x i8], align 8                ; 6 uses
  %i.c = icmp ult i64 %1, 33
  br i1 %i.c, label %.outer._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h4817be5e7c196361E.exit"
  %.sroa.0.0.ph106 = phi ptr [ %i.hp, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h4817be5e7c196361E.exit" ], [ %0, %bb.a ] ; 21 uses
  %.sroa.15.0.ph105 = phi i64 [ %i.ha, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h4817be5e7c196361E.exit" ], [ %1, %bb.a ] ; 2 uses
  %.sroa.023.0.ph104 = phi i32 [ %i.dg, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h4817be5e7c196361E.exit" ], [ %4, %bb.a ] ; 2 uses
  %.sroa.026.0.ph103 = phi ptr [ null, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h4817be5e7c196361E.exit" ], [ %5, %bb.a ] ; 3 uses
  %i.d = getelementptr i8, ptr %.sroa.0.0.ph106, i64 8
  %i.e = getelementptr i8, ptr %.sroa.0.0.ph106, i64 16
  %i.f = ptrtoint ptr %.sroa.0.0.ph106 to i64
  %.not = icmp eq ptr %.sroa.026.0.ph103, null
  %i.g = getelementptr i8, ptr %.sroa.026.0.ph103, i64 8
  %i.h = getelementptr i8, ptr %.sroa.026.0.ph103, i64 16
  %i.i = icmp eq i32 %.sroa.023.0.ph104, 0
  br i1 %i.i, label %.lr.ph._crit_edge, label %.lr.ph250

bb.b:                                             ; preds = %bb.ak
  %i.j = icmp eq i32 %i.dg, 0
  br i1 %i.j, label %.lr.ph._crit_edge, label %.lr.ph250

.outer._crit_edge:                                ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h4817be5e7c196361E.exit", %bb.ak, %bb.a
  %.sroa.0.0.ph.lcssa97 = phi ptr [ %.sroa.0.0.ph106, %bb.ak ], [ %0, %bb.a ], [ %i.hp, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h4817be5e7c196361E.exit" ] ; 7 uses
  %.sroa.15.0.lcssa = phi i64 [ %.sroa.11.1.lcssa.i, %bb.ak ], [ %1, %bb.a ], [ %i.ha, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h4817be5e7c196361E.exit" ] ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !20522)
  %i.k = icmp samesign ult i64 %.sroa.15.0.lcssa, 2
  br i1 %i.k, label %_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h723b5d1117b22846E.exit, label %bb.c

bb.c:                                             ; preds = %.outer._crit_edge
  %i.l = add nuw nsw i64 %.sroa.15.0.lcssa, 16
  %i.m = icmp ult i64 %3, %i.l
  br i1 %i.m, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = lshr i64 %.sroa.15.0.lcssa, 1            ; 6 uses
  %i.o = icmp samesign ugt i64 %.sroa.15.0.lcssa, 7
  %i.p = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0.ph.lcssa97, i64 %i.n ; 3 uses
  %i.q = getelementptr [48 x i8], ptr %2, i64 %i.n ; 8 uses
  br i1 %i.o, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.c
  call void @llvm.trap()
  unreachable

bb.f:                                             ; preds = %bb.d
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17hb96821d0cfa06265E(ptr noundef nonnull align 8 %.sroa.0.0.ph.lcssa97, ptr noundef nonnull align 8 %2)
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17hb96821d0cfa06265E(ptr noundef %i.p, ptr noundef %i.q)
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.0.ph.lcssa97, i64 48, i1 false), !alias.scope !20525
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.q, ptr noundef nonnull align 8 dereferenceable(48) %i.p, i64 48, i1 false), !alias.scope !20525
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.0.0.i = phi i64 [ 4, %bb.f ], [ 1, %bb.g ] ; 6 uses
  %i.r = sub nsw i64 %.sroa.15.0.lcssa, %i.n      ; 2 uses
  %i.s = icmp samesign ult i64 %.sroa.0.0.i, %i.n
  br i1 %i.s, label %.lr.ph.preheader.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17he82ce2cef5429549E.exit.i, %bb.h
  %i.t = icmp ult i64 %.sroa.0.0.i, %i.r
  br i1 %i.t, label %.lr.ph.preheader.1.i, label %.loopexit.1.i

.lr.ph.preheader.1.i:                             ; preds = %.loopexit.i
  %.sroa.08.18.1.i = add nuw nsw i64 %.sroa.0.0.i, 1
  br label %.lr.ph.1.i

.lr.ph.1.i:                                       ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17he82ce2cef5429549E.exit.1.i, %.lr.ph.preheader.1.i
  %.sroa.08.110.1.i = phi i64 [ %.sroa.08.1.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17he82ce2cef5429549E.exit.1.i ], [ %.sroa.08.18.1.i, %.lr.ph.preheader.1.i ] ; 3 uses
  %.sroa.08.09.1.i = phi i64 [ %.sroa.08.110.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17he82ce2cef5429549E.exit.1.i ], [ %.sroa.0.0.i, %.lr.ph.preheader.1.i ] ; 3 uses
  %i.u = getelementptr inbounds nuw [48 x i8], ptr %i.p, i64 %.sroa.08.09.1.i ; 2 uses
  %.idx276 = mul nuw nsw i64 %.sroa.08.09.1.i, 48
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 %.idx276 ; 10 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.v, ptr noundef nonnull align 8 dereferenceable(48) %i.u, i64 48, i1 false), !alias.scope !20525
  %i.w = getelementptr i8, ptr %i.v, i64 8
  %.val11.i.1.i = load ptr, ptr %i.w, align 8, !alias.scope !20527, !noalias !20522, !nonnull !8, !noundef !8 ; 3 uses
  %i.x = getelementptr i8, ptr %i.v, i64 16
  %.val12.i.1.i = load i64, ptr %i.x, align 8, !alias.scope !20527, !noalias !20522, !noundef !8 ; 5 uses
  %i.y = getelementptr i8, ptr %i.v, i64 -40
  %.val13.i.1.i = load ptr, ptr %i.y, align 8, !alias.scope !20527, !noalias !20522, !nonnull !8, !noundef !8
  %i.z = getelementptr i8, ptr %i.v, i64 -32
  %.val14.i.1.i = load i64, ptr %i.z, align 8, !alias.scope !20527, !noalias !20522, !noundef !8 ; 2 uses
  %..i.i.i.i.i.i29.1.i = call i64 @llvm.umin.i64(i64 %.val12.i.1.i, i64 %.val14.i.1.i)
  %i.aa = sub i64 %.val12.i.1.i, %.val14.i.1.i
  %i.ab = call i32 @memcmp(ptr nonnull readonly align 1 %.val11.i.1.i, ptr nonnull readonly align 1 %.val13.i.1.i, i64 %..i.i.i.i.i.i29.1.i), !alias.scope !20528, !noalias !20522 ; 2 uses
  %i.ac = sext i32 %i.ab to i64
  %i.ad = icmp eq i32 %i.ab, 0
  %spec.store.select.i.i.i.i.i.i30.1.i = select i1 %i.ad, i64 %i.aa, i64 %i.ac
  %i.ae = icmp slt i64 %spec.store.select.i.i.i.i.i.i30.1.i, 0
  br i1 %i.ae, label %bb.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17he82ce2cef5429549E.exit.1.i

bb.i:                                             ; preds = %.lr.ph.1.i
  %.sroa.08.0.copyload.i.1.i = load i64, ptr %i.v, align 8, !alias.scope !20527, !noalias !20522
  %i.af = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %.sroa.0.0.i31.1.i265 = getelementptr inbounds i8, ptr %i.v, i64 -48 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.v, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.0.i31.1.i265, i64 48, i1 false), !alias.scope !20527, !noalias !20522
  %i.ag = icmp eq i64 %.sroa.08.09.1.i, 1
  br i1 %i.ag, label %._crit_edge270, label %.lr.ph269

bb.j:                                             ; preds = %.lr.ph269
  %.sroa.0.0.i31.1.i = getelementptr inbounds i8, ptr %.sroa.0.0.i31.1.i267, i64 -48 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.0.i31.1.i267, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.0.i31.1.i, i64 48, i1 false), !alias.scope !20527, !noalias !20522
  %i.ah = icmp eq ptr %.sroa.0.0.i31.1.i, %i.q
  br i1 %i.ah, label %._crit_edge270, label %.lr.ph269

.lr.ph269:                                        ; preds = %bb.i, %bb.j
  %.sroa.0.0.i31.1.i267 = phi ptr [ %.sroa.0.0.i31.1.i, %bb.j ], [ %.sroa.0.0.i31.1.i265, %bb.i ] ; 5 uses
  %.sroa.5.0.i.1.i266 = phi ptr [ %.sroa.0.0.i31.1.i267, %bb.j ], [ %i.v, %bb.i ] ; 3 uses
  %i.ai = getelementptr i8, ptr %.sroa.5.0.i.1.i266, i64 -88
  %.val9.i.1.i = load ptr, ptr %i.ai, align 8, !alias.scope !20527, !noalias !20522, !nonnull !8, !noundef !8
  %i.aj = getelementptr i8, ptr %.sroa.5.0.i.1.i266, i64 -80
  %.val10.i.1.i = load i64, ptr %i.aj, align 8, !alias.scope !20527, !noalias !20522, !noundef !8 ; 2 uses
  %..i.i.i.i.i15.i.1.i = call i64 @llvm.umin.i64(i64 %.val12.i.1.i, i64 %.val10.i.1.i)
  %i.ak = sub i64 %.val12.i.1.i, %.val10.i.1.i
  %i.al = call i32 @memcmp(ptr nonnull readonly align 1 %.val11.i.1.i, ptr nonnull readonly align 1 %.val9.i.1.i, i64 %..i.i.i.i.i15.i.1.i), !alias.scope !20532, !noalias !20522 ; 2 uses
  %i.am = sext i32 %i.al to i64
  %i.an = icmp eq i32 %i.al, 0
  %spec.store.select.i.i.i.i.i16.i.1.i = select i1 %i.an, i64 %i.ak, i64 %i.am
  %i.ao = icmp slt i64 %spec.store.select.i.i.i.i.i16.i.1.i, 0
  br i1 %i.ao, label %bb.j, label %._crit_edge270

._crit_edge270:                                   ; preds = %bb.j, %.lr.ph269, %bb.i
  %.sroa.5.0.i.1.i.lcssa = phi ptr [ %i.v, %bb.i ], [ %.sroa.0.0.i31.1.i267, %bb.j ], [ %.sroa.5.0.i.1.i266, %.lr.ph269 ] ; 3 uses
  %.sroa.0.0.i31.lcssa.1.i = phi ptr [ %i.q, %bb.i ], [ %i.q, %bb.j ], [ %.sroa.0.0.i31.1.i267, %.lr.ph269 ]
  store i64 %.sroa.08.0.copyload.i.1.i, ptr %.sroa.0.0.i31.lcssa.1.i, align 8, !alias.scope !20527, !noalias !20536
  %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.1.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.1.i.lcssa, i64 -40
  store ptr %.val11.i.1.i, ptr %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.1.i, align 8, !alias.scope !20527, !noalias !20536
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.1.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.1.i.lcssa, i64 -32
  store i64 %.val12.i.1.i, ptr %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.1.i, align 8, !alias.scope !20527, !noalias !20536
  %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i.1.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.1.i.lcssa, i64 -24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i.1.i, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false), !alias.scope !20525
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17he82ce2cef5429549E.exit.1.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17he82ce2cef5429549E.exit.1.i: ; preds = %._crit_edge270, %.lr.ph.1.i
  %i.ap = icmp ult i64 %.sroa.08.110.1.i, %i.r    ; 2 uses
  %i.aq = zext i1 %i.ap to i64
  %.sroa.08.1.1.i = add nuw i64 %.sroa.08.110.1.i, %i.aq
  br i1 %i.ap, label %.lr.ph.1.i, label %.loopexit.1.i

.loopexit.1.i:                                    ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17he82ce2cef5429549E.exit.1.i, %.loopexit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !20541)
  %i.ar = add nsw i64 %.sroa.15.0.lcssa, -1       ; 2 uses
  %i.as = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0.ph.lcssa97, i64 %i.ar
  %i.at = getelementptr inbounds nuw [48 x i8], ptr %2, i64 %i.ar
  %i.au = getelementptr i8, ptr %i.q, i64 -48
  br label %.lr.ph.i.i

.lr.ph.preheader.i:                               ; preds = %bb.h
  %.sroa.08.18.i = add nuw nsw i64 %.sroa.0.0.i, 1
  br label %.lr.ph.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i
  %i.av = getelementptr i8, ptr %i.bx, i64 48     ; 2 uses
  %i.aw = getelementptr i8, ptr %i.bw, i64 48
  %i.ax = and i64 %.sroa.15.0.lcssa, 1
  %i.ay = icmp eq i64 %i.ax, 0
  br i1 %i.ay, label %bb.l, label %bb.k

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.loopexit.1.i
  %.sroa.0.010.i.i = phi ptr [ %i.bl, %.lr.ph.i.i ], [ %2, %.loopexit.1.i ] ; 4 uses
  %.sroa.06.09.i.i = phi ptr [ %i.bj, %.lr.ph.i.i ], [ %i.q, %.loopexit.1.i ] ; 4 uses
  %.sroa.010.08.i.i = phi ptr [ %i.bm, %.lr.ph.i.i ], [ %.sroa.0.0.ph.lcssa97, %.loopexit.1.i ] ; 2 uses
  %.sroa.013.07.i.i = phi ptr [ %i.bx, %.lr.ph.i.i ], [ %i.au, %.loopexit.1.i ] ; 4 uses
  %.sroa.015.06.i.i = phi ptr [ %i.bw, %.lr.ph.i.i ], [ %i.at, %.loopexit.1.i ] ; 4 uses
  %.sroa.017.05.i.i = phi ptr [ %i.by, %.lr.ph.i.i ], [ %i.as, %.loopexit.1.i ] ; 2 uses
  %.sroa.018.04.i.i = phi i64 [ %i.az, %.lr.ph.i.i ], [ 0, %.loopexit.1.i ]
  %i.az = add nuw nsw i64 %.sroa.018.04.i.i, 1    ; 2 uses
  %i.ba = getelementptr i8, ptr %.sroa.06.09.i.i, i64 8
  %.sroa.06.0.val.i.i = load ptr, ptr %i.ba, align 8, !alias.scope !20544, !noalias !20522, !nonnull !8, !noundef !8
  %i.bb = getelementptr i8, ptr %.sroa.06.09.i.i, i64 16
  %.sroa.06.0.val24.i.i = load i64, ptr %i.bb, align 8, !alias.scope !20544, !noalias !20522, !noundef !8 ; 2 uses
  %i.bc = getelementptr i8, ptr %.sroa.0.010.i.i, i64 8
  %.sroa.0.0.val.i.i = load ptr, ptr %i.bc, align 8, !alias.scope !20544, !noalias !20522, !nonnull !8, !noundef !8
  %i.bd = getelementptr i8, ptr %.sroa.0.010.i.i, i64 16
  %.sroa.0.0.val25.i.i = load i64, ptr %i.bd, align 8, !alias.scope !20544, !noalias !20522, !noundef !8 ; 2 uses
  %..i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %.sroa.06.0.val24.i.i, i64 %.sroa.0.0.val25.i.i)
  %i.be = sub i64 %.sroa.06.0.val24.i.i, %.sroa.0.0.val25.i.i
  %i.bf = call i32 @memcmp(ptr nonnull readonly align 1 %.sroa.06.0.val.i.i, ptr nonnull readonly align 1 %.sroa.0.0.val.i.i, i64 %..i.i.i.i.i.i.i), !alias.scope !20545, !noalias !20549 ; 2 uses
  %i.bg = sext i32 %i.bf to i64
  %i.bh = icmp eq i32 %i.bf, 0
  %spec.store.select.i.i.i.i.i.i.i = select i1 %i.bh, i64 %i.be, i64 %i.bg ; 2 uses
  %i.bi = icmp sgt i64 %spec.store.select.i.i.i.i.i.i.i, -1 ; 2 uses
  %..i23.i.i = select i1 %i.bi, ptr %.sroa.0.010.i.i, ptr %.sroa.06.09.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.010.08.i.i, ptr noundef nonnull align 8 dereferenceable(48) %..i23.i.i, i64 48, i1 false), !alias.scope !20525, !noalias !20550
  %spec.store.select.i.i.i.i.i.lobit.i.i = lshr i64 %spec.store.select.i.i.i.i.i.i.i, 63
  %i.bj = getelementptr inbounds nuw [48 x i8], ptr %.sroa.06.09.i.i, i64 %spec.store.select.i.i.i.i.i.lobit.i.i ; 4 uses
  %i.bk = zext i1 %i.bi to i64
  %i.bl = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.010.i.i, i64 %i.bk ; 5 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.010.08.i.i, i64 48 ; 2 uses
  %i.bn = getelementptr i8, ptr %.sroa.015.06.i.i, i64 8
  %.sroa.015.0.val.i.i = load ptr, ptr %i.bn, align 8, !alias.scope !20544, !noalias !20522, !nonnull !8, !noundef !8
  %i.bo = getelementptr i8, ptr %.sroa.015.06.i.i, i64 16
  %.sroa.015.0.val26.i.i = load i64, ptr %i.bo, align 8, !alias.scope !20544, !noalias !20522, !noundef !8 ; 2 uses
  %i.bp = getelementptr i8, ptr %.sroa.013.07.i.i, i64 8
  %.sroa.013.0.val.i.i = load ptr, ptr %i.bp, align 8, !alias.scope !20544, !noalias !20522, !nonnull !8, !noundef !8
  %i.bq = getelementptr i8, ptr %.sroa.013.07.i.i, i64 16
  %.sroa.013.0.val27.i.i = load i64, ptr %i.bq, align 8, !alias.scope !20544, !noalias !20522, !noundef !8 ; 2 uses
  %..i.i.i.i.i28.i.i = call i64 @llvm.umin.i64(i64 %.sroa.015.0.val26.i.i, i64 %.sroa.013.0.val27.i.i)
  %i.br = sub i64 %.sroa.015.0.val26.i.i, %.sroa.013.0.val27.i.i
  %i.bs = call i32 @memcmp(ptr nonnull readonly align 1 %.sroa.015.0.val.i.i, ptr nonnull readonly align 1 %.sroa.013.0.val.i.i, i64 %..i.i.i.i.i28.i.i), !alias.scope !20554, !noalias !20549 ; 2 uses
  %i.bt = sext i32 %i.bs to i64
  %i.bu = icmp eq i32 %i.bs, 0
  %spec.store.select.i.i.i.i.i29.i.i = select i1 %i.bu, i64 %i.br, i64 %i.bt ; 2 uses
  %i.bv = icmp sgt i64 %spec.store.select.i.i.i.i.i29.i.i, -1 ; 2 uses
  %..i.i.i = select i1 %i.bv, ptr %.sroa.015.06.i.i, ptr %.sroa.013.07.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.017.05.i.i, ptr noundef nonnull align 8 dereferenceable(48) %..i.i.i, i64 48, i1 false), !alias.scope !20525, !noalias !20558
  %.neg.i.i.i = sext i1 %i.bv to i64
  %i.bw = getelementptr [48 x i8], ptr %.sroa.015.06.i.i, i64 %.neg.i.i.i ; 2 uses
  %spec.store.select.i.i.i.i.i29.lobit.i.i = ashr i64 %spec.store.select.i.i.i.i.i29.i.i, 63
  %i.bx = getelementptr [48 x i8], ptr %.sroa.013.07.i.i, i64 %spec.store.select.i.i.i.i.i29.lobit.i.i ; 2 uses
  %i.by = getelementptr inbounds i8, ptr %.sroa.017.05.i.i, i64 -48
  %exitcond.not.i.i = icmp eq i64 %i.az, %i.n
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.k:                                             ; preds = %._crit_edge.i.i
  %i.bz = icmp ult ptr %i.bl, %i.av               ; 3 uses
  %.sroa.0.0..sroa.06.0.i.i = select i1 %i.bz, ptr %i.bl, ptr %i.bj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bm, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.0..sroa.06.0.i.i, i64 48, i1 false), !alias.scope !20525
  %i.ca = zext i1 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [48 x i8], ptr %i.bl, i64 %i.ca
  %i.cc = xor i1 %i.bz, true
  %i.cd = zext i1 %i.cc to i64
  %i.ce = getelementptr inbounds nuw [48 x i8], ptr %i.bj, i64 %i.cd
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge.i.i
  %.sroa.06.1.i.i = phi ptr [ %i.bj, %._crit_edge.i.i ], [ %i.ce, %bb.k ]
  %.sroa.0.1.i.i = phi ptr [ %i.bl, %._crit_edge.i.i ], [ %i.cb, %bb.k ]
  %i.cf = icmp ne ptr %.sroa.0.1.i.i, %i.av
  %i.cg = icmp ne ptr %.sroa.06.1.i.i, %i.aw
  %or.cond.i.i = select i1 %i.cf, i1 true, i1 %i.cg, !prof !2309
  br i1 %or.cond.i.i, label %bb.m, label %_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h723b5d1117b22846E.exit, !prof !2309

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17h481967bb377c264aE() #54
          to label %.noexc.i unwind label %bb.n, !noalias !20522

.noexc.i:                                         ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %bb.m
  %i.ch = landingpad { ptr, i32 }
          cleanup
  %i.ci = mul nuw nsw i64 %.sroa.15.0.lcssa, 48
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph.lcssa97, ptr nonnull align 8 %2, i64 %i.ci, i1 false), !alias.scope !20525, !noalias !20562
  resume { ptr, i32 } %i.ch

.lr.ph.i:                                         ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17he82ce2cef5429549E.exit.i, %.lr.ph.preheader.i
  %.sroa.08.110.i = phi i64 [ %.sroa.08.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17he82ce2cef5429549E.exit.i ], [ %.sroa.08.18.i, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.08.09.i = phi i64 [ %.sroa.08.110.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17he82ce2cef5429549E.exit.i ], [ %.sroa.0.0.i, %.lr.ph.preheader.i ] ; 3 uses
  %i.cj = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0.ph.lcssa97, i64 %.sroa.08.09.i ; 2 uses
  %.idx = mul nuw nsw i64 %.sroa.08.09.i, 48
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 10 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ck, ptr noundef nonnull align 8 dereferenceable(48) %i.cj, i64 48, i1 false), !alias.scope !20525
  %i.cl = getelementptr i8, ptr %i.ck, i64 8
  %.val11.i.i = load ptr, ptr %i.cl, align 8, !alias.scope !20527, !noalias !20522, !nonnull !8, !noundef !8 ; 3 uses
  %i.cm = getelementptr i8, ptr %i.ck, i64 16
  %.val12.i.i = load i64, ptr %i.cm, align 8, !alias.scope !20527, !noalias !20522, !noundef !8 ; 5 uses
  %i.cn = getelementptr i8, ptr %i.ck, i64 -40
  %.val13.i.i = load ptr, ptr %i.cn, align 8, !alias.scope !20527, !noalias !20522, !nonnull !8, !noundef !8
  %i.co = getelementptr i8, ptr %i.ck, i64 -32
  %.val14.i.i = load i64, ptr %i.co, align 8, !alias.scope !20527, !noalias !20522, !noundef !8 ; 2 uses
  %..i.i.i.i.i.i29.i = call i64 @llvm.umin.i64(i64 %.val12.i.i, i64 %.val14.i.i)
  %i.cp = sub i64 %.val12.i.i, %.val14.i.i
  %i.cq = call i32 @memcmp(ptr nonnull readonly align 1 %.val11.i.i, ptr nonnull readonly align 1 %.val13.i.i, i64 %..i.i.i.i.i.i29.i), !alias.scope !20528, !noalias !20522 ; 2 uses
  %i.cr = sext i32 %i.cq to i64
  %i.cs = icmp eq i32 %i.cq, 0
  %spec.store.select.i.i.i.i.i.i30.i = select i1 %i.cs, i64 %i.cp, i64 %i.cr
  %i.ct = icmp slt i64 %spec.store.select.i.i.i.i.i.i30.i, 0
  br i1 %i.ct, label %bb.o, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17he82ce2cef5429549E.exit.i

bb.o:                                             ; preds = %.lr.ph.i
  %.sroa.08.0.copyload.i.i = load i64, ptr %i.ck, align 8, !alias.scope !20527, !noalias !20522
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %.sroa.0.0.i31.i254 = getelementptr inbounds i8, ptr %i.ck, i64 -48 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ck, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.0.i31.i254, i64 48, i1 false), !alias.scope !20527, !noalias !20522
  %i.cv = icmp eq i64 %.sroa.08.09.i, 1
  br i1 %i.cv, label %._crit_edge259, label %.lr.ph258

bb.p:                                             ; preds = %.lr.ph258
  %.sroa.0.0.i31.i = getelementptr inbounds i8, ptr %.sroa.0.0.i31.i256, i64 -48 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.0.i31.i256, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.0.i31.i, i64 48, i1 false), !alias.scope !20527, !noalias !20522
  %i.cw = icmp eq ptr %.sroa.0.0.i31.i, %2
  br i1 %i.cw, label %._crit_edge259, label %.lr.ph258

.lr.ph258:                                        ; preds = %bb.o, %bb.p
  %.sroa.0.0.i31.i256 = phi ptr [ %.sroa.0.0.i31.i, %bb.p ], [ %.sroa.0.0.i31.i254, %bb.o ] ; 5 uses
  %.sroa.5.0.i.i255 = phi ptr [ %.sroa.0.0.i31.i256, %bb.p ], [ %i.ck, %bb.o ] ; 3 uses
  %i.cx = getelementptr i8, ptr %.sroa.5.0.i.i255, i64 -88
  %.val9.i.i = load ptr, ptr %i.cx, align 8, !alias.scope !20527, !noalias !20522, !nonnull !8, !noundef !8
  %i.cy = getelementptr i8, ptr %.sroa.5.0.i.i255, i64 -80
  %.val10.i.i = load i64, ptr %i.cy, align 8, !alias.scope !20527, !noalias !20522, !noundef !8 ; 2 uses
  %..i.i.i.i.i15.i.i = call i64 @llvm.umin.i64(i64 %.val12.i.i, i64 %.val10.i.i)
  %i.cz = sub i64 %.val12.i.i, %.val10.i.i
  %i.da = call i32 @memcmp(ptr nonnull readonly align 1 %.val11.i.i, ptr nonnull readonly align 1 %.val9.i.i, i64 %..i.i.i.i.i15.i.i), !alias.scope !20532, !noalias !20522 ; 2 uses
  %i.db = sext i32 %i.da to i64
  %i.dc = icmp eq i32 %i.da, 0
  %spec.store.select.i.i.i.i.i16.i.i = select i1 %i.dc, i64 %i.cz, i64 %i.db
  %i.dd = icmp slt i64 %spec.store.select.i.i.i.i.i16.i.i, 0
  br i1 %i.dd, label %bb.p, label %._crit_edge259

._crit_edge259:                                   ; preds = %bb.p, %.lr.ph258, %bb.o
  %.sroa.5.0.i.i.lcssa = phi ptr [ %i.ck, %bb.o ], [ %.sroa.0.0.i31.i256, %bb.p ], [ %.sroa.5.0.i.i255, %.lr.ph258 ] ; 3 uses
  %.sroa.0.0.i31.lcssa.i = phi ptr [ %2, %bb.o ], [ %2, %bb.p ], [ %.sroa.0.0.i31.i256, %.lr.ph258 ]
  store i64 %.sroa.08.0.copyload.i.i, ptr %.sroa.0.0.i31.lcssa.i, align 8, !alias.scope !20527, !noalias !20536
  %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.i.lcssa, i64 -40
  store ptr %.val11.i.i, ptr %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.i, align 8, !alias.scope !20527, !noalias !20536
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.i.lcssa, i64 -32
  store i64 %.val12.i.i, ptr %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.i, align 8, !alias.scope !20527, !noalias !20536
  %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.i.lcssa, i64 -24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.cu, i64 24, i1 false), !alias.scope !20525
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17he82ce2cef5429549E.exit.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17he82ce2cef5429549E.exit.i: ; preds = %._crit_edge259, %.lr.ph.i
  %i.de = icmp ult i64 %.sroa.08.110.i, %i.n      ; 2 uses
  %i.df = zext i1 %i.de to i64
  %.sroa.08.1.i = add nuw i64 %.sroa.08.110.i, %i.df
  br i1 %i.de, label %.lr.ph.i, label %.loopexit.i

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %bb.b
  %.sroa.15.099.lcssa = phi i64 [ %.sroa.11.1.lcssa.i, %bb.b ], [ %.sroa.15.0.ph105, %.lr.ph ]
  call fastcc void @_ZN4core5slice4sort6stable5drift4sort17h0d3a0980487777ccE(ptr noalias noundef nonnull align 8 %.sroa.0.0.ph106, i64 noundef %.sroa.15.099.lcssa, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext true, ptr noalias noundef align 8 dereferenceable(8) %6)
  br label %_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h723b5d1117b22846E.exit

.lr.ph250:                                        ; preds = %.lr.ph, %bb.b
  %.sroa.023.098249 = phi i32 [ %i.dg, %bb.b ], [ %.sroa.023.0.ph104, %.lr.ph ]
  %.sroa.15.099248 = phi i64 [ %.sroa.11.1.lcssa.i, %bb.b ], [ %.sroa.15.0.ph105, %.lr.ph ] ; 21 uses
  %i.dg = add i32 %.sroa.023.098249, -1           ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !20567)
  %i.dh = lshr i64 %.sroa.15.099248, 3            ; 3 uses
  %.idx.i = mul nuw nsw i64 %i.dh, 192
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph106, i64 %.idx.i ; 4 uses
  %.idx2.i = mul nuw i64 %i.dh, 336
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph106, i64 %.idx2.i ; 4 uses
  %i.dk = icmp ult i64 %.sroa.15.099248, 64
  br i1 %i.dk, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.lr.ph250
  %i.dl = call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h871cb5af0552753aE(ptr noundef nonnull readonly align 8 %.sroa.0.0.ph106, ptr noundef readonly %i.di, ptr noundef readonly %i.dj, i64 noundef %i.dh)
  br label %bb.t

bb.r:                                             ; preds = %.lr.ph250
  %.val10.i = load ptr, ptr %i.d, align 8, !alias.scope !20567, !nonnull !8, !noundef !8 ; 2 uses
  %.val11.i = load i64, ptr %i.e, align 8, !alias.scope !20567, !noundef !8 ; 4 uses
  %i.dm = getelementptr i8, ptr %i.di, i64 8
  %.val12.i = load ptr, ptr %i.dm, align 8, !alias.scope !20567, !nonnull !8, !noundef !8 ; 2 uses
  %i.dn = getelementptr i8, ptr %i.di, i64 16
  %.val13.i = load i64, ptr %i.dn, align 8, !alias.scope !20567, !noundef !8 ; 4 uses
  %..i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %.val11.i, i64 %.val13.i)
  %i.do = sub i64 %.val11.i, %.val13.i
  %i.dp = call i32 @memcmp(ptr nonnull readonly align 1 %.val10.i, ptr nonnull readonly align 1 %.val12.i, i64 %..i.i.i.i.i.i), !alias.scope !20570, !noalias !20567 ; 2 uses
  %i.dq = sext i32 %i.dp to i64
  %i.dr = icmp eq i32 %i.dp, 0
  %spec.store.select.i.i.i.i.i.i = select i1 %i.dr, i64 %i.do, i64 %i.dq ; 2 uses
  %i.ds = getelementptr i8, ptr %i.dj, i64 8
  %.val8.i = load ptr, ptr %i.ds, align 8, !alias.scope !20567, !nonnull !8, !noundef !8 ; 2 uses
  %i.dt = getelementptr i8, ptr %i.dj, i64 16
  %.val9.i = load i64, ptr %i.dt, align 8, !alias.scope !20567, !noundef !8 ; 4 uses
  %..i.i.i.i.i14.i = call i64 @llvm.umin.i64(i64 %.val11.i, i64 %.val9.i)
  %i.du = sub i64 %.val11.i, %.val9.i
  %i.dv = call i32 @memcmp(ptr nonnull readonly align 1 %.val10.i, ptr nonnull readonly align 1 %.val8.i, i64 %..i.i.i.i.i14.i), !alias.scope !20574, !noalias !20567 ; 2 uses
  %i.dw = sext i32 %i.dv to i64
  %i.dx = icmp eq i32 %i.dv, 0
  %spec.store.select.i.i.i.i.i15.i = select i1 %i.dx, i64 %i.du, i64 %i.dw
  %i.dy = xor i64 %spec.store.select.i.i.i.i.i15.i, %spec.store.select.i.i.i.i.i.i
  %i.dz = icmp slt i64 %i.dy, 0
  br i1 %i.dz, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %..i.i.i.i.i16.i = call i64 @llvm.umin.i64(i64 %.val13.i, i64 %.val9.i)
  %i.ea = sub i64 %.val13.i, %.val9.i
  %i.eb = call i32 @memcmp(ptr nonnull readonly align 1 %.val12.i, ptr nonnull readonly align 1 %.val8.i, i64 %..i.i.i.i.i16.i), !alias.scope !20578, !noalias !20567 ; 2 uses
  %i.ec = sext i32 %i.eb to i64
  %i.ed = icmp eq i32 %i.eb, 0
  %spec.store.select.i.i.i.i.i17.i = select i1 %i.ed, i64 %i.ea, i64 %i.ec
  %i.ee = xor i64 %spec.store.select.i.i.i.i.i17.i, %spec.store.select.i.i.i.i.i.i
  %i.ef = icmp slt i64 %i.ee, 0
  %..i.i = select i1 %i.ef, ptr %i.dj, ptr %i.di
  br label %bb.t

_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h723b5d1117b22846E.exit: ; preds = %.outer._crit_edge.thread, %bb.l, %.outer._crit_edge, %.lr.ph._crit_edge
  ret void

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  %.sroa.0.0.i.sink.i = phi ptr [ %i.dl, %bb.q ], [ %.sroa.0.0.ph106, %bb.r ], [ %..i.i, %bb.s ]
  %i.eg = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.eh = sub nuw i64 %i.eg, %i.f                 ; 2 uses
  %.sroa.0.0.i38 = udiv exact i64 %i.eh, 48       ; 3 uses
  %i.ei = icmp ult i64 %.sroa.0.0.i38, %.sroa.15.099248
  call void @llvm.assume(i1 %i.ei)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph106, i64 %i.eh ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.ej, i64 48, i1 false)
  br i1 %.not, label %.critedge, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.sroa.026.0.val = load ptr, ptr %i.g, align 8, !nonnull !8, !noundef !8
  %.sroa.026.0.val36 = load i64, ptr %i.h, align 8, !noundef !8 ; 2 uses
  %i.ek = getelementptr i8, ptr %i.ej, i64 8
  %.val = load ptr, ptr %i.ek, align 8, !nonnull !8, !noundef !8
  %i.el = getelementptr i8, ptr %i.ej, i64 16
  %.val37 = load i64, ptr %i.el, align 8, !noundef !8 ; 2 uses
  %..i.i.i.i.i = call i64 @llvm.umin.i64(i64 %.sroa.026.0.val36, i64 %.val37)
  %i.em = sub i64 %.sroa.026.0.val36, %.val37
  %i.en = call i32 @memcmp(ptr nonnull readonly align 1 %.sroa.026.0.val, ptr nonnull readonly align 1 %.val, i64 %..i.i.i.i.i), !alias.scope !20582 ; 2 uses
  %i.eo = sext i32 %i.en to i64
  %i.ep = icmp eq i32 %i.en, 0
  %spec.store.select.i.i.i.i.i = select i1 %i.ep, i64 %i.em, i64 %i.eo
  %i.eq = icmp sgt i64 %spec.store.select.i.i.i.i.i, -1
  br i1 %i.eq, label %.critedge35, label %.critedge

.critedge:                                        ; preds = %bb.t, %bb.u
  call void @llvm.experimental.noalias.scope.decl(metadata !20586)
  call void @llvm.experimental.noalias.scope.decl(metadata !20589)
  %.not68 = icmp ult i64 %3, %.sroa.15.099248
  br i1 %.not68, label %bb.w, label %bb.v, !prof !2309

bb.v:                                             ; preds = %.critedge
  %i.er = getelementptr [48 x i8], ptr %2, i64 %.sroa.15.099248 ; 4 uses
  %i.es = getelementptr i8, ptr %i.ej, i64 8
  %i.et = getelementptr i8, ptr %i.ej, i64 16
  br label %bb.x

bb.w:                                             ; preds = %.critedge
  call void @llvm.trap()
  unreachable

bb.x:                                             ; preds = %bb.y, %bb.v
  %.sroa.11.0.i = phi i64 [ 0, %bb.v ], [ %.sroa.11.1.lcssa.i, %bb.y ] ; 2 uses
  %.sroa.5.0.i = phi ptr [ %.sroa.0.0.ph106, %bb.v ], [ %i.fl, %bb.y ] ; 3 uses
  %.sroa.19.0.i = phi ptr [ %i.er, %bb.v ], [ %i.fj, %bb.y ] ; 2 uses
  %.sroa.02.0.i = phi i64 [ %.sroa.0.0.i38, %bb.v ], [ %.sroa.15.099248, %bb.y ] ; 2 uses
  %i.eu = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0.ph106, i64 %.sroa.02.0.i ; 2 uses
  %i.ev = icmp ult ptr %.sroa.5.0.i, %i.eu
  br i1 %i.ev, label %.lr.ph.i39, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i39, %bb.x
  %.sroa.11.1.lcssa.i = phi i64 [ %.sroa.11.0.i, %bb.x ], [ %i.fg, %.lr.ph.i39 ] ; 14 uses
  %.sroa.5.1.lcssa.i = phi ptr [ %.sroa.5.0.i, %bb.x ], [ %i.fh, %.lr.ph.i39 ] ; 2 uses
  %.sroa.19.1.lcssa.i = phi ptr [ %.sroa.19.0.i, %bb.x ], [ %i.fe, %.lr.ph.i39 ]
  %i.ew = icmp eq i64 %.sroa.02.0.i, %.sroa.15.099248
  br i1 %i.ew, label %bb.z, label %bb.y

.lr.ph.i39:                                       ; preds = %bb.x, %.lr.ph.i39
  %.sroa.19.111.i = phi ptr [ %i.fe, %.lr.ph.i39 ], [ %.sroa.19.0.i, %bb.x ]
  %.sroa.5.110.i = phi ptr [ %i.fh, %.lr.ph.i39 ], [ %.sroa.5.0.i, %bb.x ] ; 4 uses
  %.sroa.11.19.i = phi i64 [ %i.fg, %.lr.ph.i39 ], [ %.sroa.11.0.i, %bb.x ] ; 2 uses
  %i.ex = getelementptr i8, ptr %.sroa.5.110.i, i64 8
  %.val.i = load ptr, ptr %i.ex, align 8, !alias.scope !20586, !noalias !20589, !nonnull !8, !noundef !8
  %i.ey = getelementptr i8, ptr %.sroa.5.110.i, i64 16
  %.val24.i = load i64, ptr %i.ey, align 8, !alias.scope !20586, !noalias !20589, !noundef !8 ; 2 uses
  %.val25.i = load ptr, ptr %i.es, align 8, !alias.scope !20586, !noalias !20589, !nonnull !8, !noundef !8
  %.val26.i = load i64, ptr %i.et, align 8, !alias.scope !20586, !noalias !20589, !noundef !8 ; 2 uses
  %..i.i.i.i.i.i40 = call i64 @llvm.umin.i64(i64 %.val24.i, i64 %.val26.i)
  %i.ez = sub i64 %.val24.i, %.val26.i
  %i.fa = call i32 @memcmp(ptr nonnull readonly align 1 %.val.i, ptr nonnull readonly align 1 %.val25.i, i64 %..i.i.i.i.i.i40), !alias.scope !20591, !noalias !20595 ; 2 uses
  %i.fb = sext i32 %i.fa to i64
  %i.fc = icmp eq i32 %i.fa, 0
  %spec.store.select.i.i.i.i.i.i41 = select i1 %i.fc, i64 %i.ez, i64 %i.fb ; 2 uses
  %i.fd = icmp slt i64 %spec.store.select.i.i.i.i.i.i41, 0
  %i.fe = getelementptr inbounds i8, ptr %.sroa.19.111.i, i64 -48 ; 3 uses
  %.sroa.01.0.i.i = select i1 %i.fd, ptr %2, ptr %i.fe
  %i.ff = getelementptr inbounds nuw [48 x i8], ptr %.sroa.01.0.i.i, i64 %.sroa.11.19.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ff, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.110.i, i64 48, i1 false), !alias.scope !20595, !noalias !20596
  %spec.store.select.i.i.i.i.i.lobit.i = lshr i64 %spec.store.select.i.i.i.i.i.i41, 63
  %i.fg = add i64 %spec.store.select.i.i.i.i.i.lobit.i, %.sroa.11.19.i ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %.sroa.5.110.i, i64 48 ; 3 uses
  %i.fi = icmp ult ptr %i.fh, %i.eu
  br i1 %i.fi, label %.lr.ph.i39, label %._crit_edge.i

bb.y:                                             ; preds = %._crit_edge.i
  %i.fj = getelementptr inbounds i8, ptr %.sroa.19.1.lcssa.i, i64 -48 ; 2 uses
  %i.fk = getelementptr inbounds nuw [48 x i8], ptr %i.fj, i64 %.sroa.11.1.lcssa.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.fk, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.1.lcssa.i, i64 48, i1 false), !alias.scope !20595, !noalias !20599
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.5.1.lcssa.i, i64 48
  br label %bb.x

bb.z:                                             ; preds = %._crit_edge.i
  %i.fm = mul i64 %.sroa.11.1.lcssa.i, 48
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph106, ptr nonnull align 8 %2, i64 %i.fm, i1 false), !alias.scope !20595
  %i.fn = sub i64 %.sroa.15.099248, %.sroa.11.1.lcssa.i ; 4 uses
  %.not18.i = icmp eq i64 %.sroa.15.099248, %.sroa.11.1.lcssa.i
  br i1 %.not18.i, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17hed394894ff73df70E.exit, label %.lr.ph16.i

.lr.ph16.i:                                       ; preds = %bb.z
  %i.fo = getelementptr [48 x i8], ptr %.sroa.0.0.ph106, i64 %.sroa.11.1.lcssa.i ; 3 uses
  %.neg = add i64 %.sroa.11.1.lcssa.i, 1
  %xtraiter = and i64 %i.fn, 1
  %i.fp = icmp eq i64 %.sroa.15.099248, %.neg
  br i1 %i.fp, label %.epil.preheader, label %.lr.ph16.i.new

.lr.ph16.i.new:                                   ; preds = %.lr.ph16.i
  %unroll_iter = and i64 %i.fn, -2
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %.lr.ph16.i.new
  %.sroa.04.014.i = phi i64 [ 0, %.lr.ph16.i.new ], [ %i.ft, %bb.aa ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph16.i.new ], [ %niter.next.1, %bb.aa ]
  %i.fq = xor i64 %.sroa.04.014.i, -1
  %i.fr = getelementptr [48 x i8], ptr %i.er, i64 %i.fq
  %i.fs = getelementptr [48 x i8], ptr %i.fo, i64 %.sroa.04.014.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.fs, ptr noundef nonnull align 8 dereferenceable(48) %i.fr, i64 48, i1 false), !alias.scope !20595
  %i.ft = add nuw i64 %.sroa.04.014.i, 2          ; 2 uses
  %i.fu = xor i64 %.sroa.04.014.i, -2
  %i.fv = getelementptr [48 x i8], ptr %i.er, i64 %i.fu
  %i.fw = getelementptr [48 x i8], ptr %i.fo, i64 %.sroa.04.014.i
  %i.fx = getelementptr i8, ptr %i.fw, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.fx, ptr noundef nonnull align 8 dereferenceable(48) %i.fv, i64 48, i1 false), !alias.scope !20595
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17hed394894ff73df70E.exit.loopexit.unr-lcssa, label %bb.aa

_ZN4core5slice4sort6stable9quicksort16stable_partition17hed394894ff73df70E.exit.loopexit.unr-lcssa: ; preds = %bb.aa
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17hed394894ff73df70E.exit, label %.epil.preheader
end_hunk_2
begin_hunk_3_@"_ZN4http6header3map18HeaderMap$LT$T$GT$15insert_occupied17h90cdeca53126b138E":bb.a

bb.v:                                             ; preds = %bb.w, %bb.t
  %.not77.i.i = icmp eq i64 %.sroa.0.062.i, %i.ay
  br i1 %.not77.i.i, label %_ZN4http6header3map18remove_extra_value17h007f757026106c68E.exit.i, label %bb.x

bb.w:                                             ; preds = %bb.t
  store i64 1, ptr %i.ac, align 8, !noalias !20901
  store i64 %.sroa.0.062.i, ptr %i.ad, align 8, !noalias !20901
  br label %bb.v

bb.x:                                             ; preds = %bb.v
  %i.cf = load i64, ptr %i.ap, align 8, !range !491, !noalias !20901, !noundef !8
  %i.cg = load i64, ptr %i.ar, align 8, !noalias !20901, !noundef !8 ; 6 uses
  %i.ch = load i64, ptr %i.al, align 8, !range !491, !noalias !20901, !noundef !8
  %i.ci = load i64, ptr %i.an, align 8, !noalias !20901, !noundef !8 ; 6 uses
  %i.cj = trunc nuw i64 %i.ch to i1
  br i1 %i.cj, label %bb.z, label %bb.aa

bb.y:                                             ; preds = %.invoke.i.i, %.invoke106.i.i
  %i.ck = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !20910)
  %i.cl = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  call void @llvm.experimental.noalias.scope.decl(metadata !20913)
  call void @llvm.experimental.noalias.scope.decl(metadata !20916)
  call void @llvm.experimental.noalias.scope.decl(metadata !20919)
  %i.cm = load ptr, ptr %i.cl, align 8, !alias.scope !20922, !noalias !20901, !nonnull !8, !align !461, !noundef !8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 32
  %i.co = load ptr, ptr %i.cn, align 8, !noalias !20923, !nonnull !8, !noundef !8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.cq = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.cr = load ptr, ptr %i.cq, align 8, !alias.scope !20922, !noalias !20901, !noundef !8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.ct = load i64, ptr %i.cs, align 8, !alias.scope !20922, !noalias !20901, !noundef !8
  invoke void %i.co(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.cp, ptr noundef %i.cr, i64 noundef %i.ct)
          to label %.body unwind label %bb.ak, !noalias !20901, !inline_history !14293

bb.z:                                             ; preds = %bb.x
  %i.cu = icmp ult i64 %i.ci, %i.ay
  br i1 %i.cu, label %bb.ae, label %.invoke.i.i

bb.aa:                                            ; preds = %bb.x
  %i.cv = icmp ult i64 %i.ci, %i.d
  br i1 %i.cv, label %bb.ab, label %.invoke.i.i

bb.ab:                                            ; preds = %bb.aa
  %i.cw = getelementptr inbounds nuw [104 x i8], ptr %i.g, i64 %i.ci ; 2 uses
  %i.cx = load i64, ptr %i.cw, align 8, !range !491, !noalias !20901, !noundef !8
  %i.cy = trunc nuw i64 %i.cx to i1
  br i1 %i.cy, label %bb.ac, label %.invoke106.i.i, !prof !17

bb.ac:                                            ; preds = %bb.ab
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  store i64 %.sroa.0.062.i, ptr %i.cz, align 8, !noalias !20901
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ae, %bb.ac
  %i.da = trunc nuw i64 %i.cf to i1
  br i1 %i.da, label %bb.af, label %bb.ag

bb.ae:                                            ; preds = %bb.z
  %i.db = getelementptr inbounds nuw [72 x i8], ptr %i.y, i64 %i.ci ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  store i64 1, ptr %i.dc, align 8, !noalias !20901
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 24
  store i64 %.sroa.0.062.i, ptr %i.dd, align 8, !noalias !20901
  br label %bb.ad

bb.af:                                            ; preds = %bb.ad
  %i.de = icmp ult i64 %i.cg, %i.ay
  br i1 %i.de, label %bb.aj, label %.invoke.i.i

bb.ag:                                            ; preds = %bb.ad
  %i.df = icmp ult i64 %i.cg, %i.d
  br i1 %i.df, label %bb.ah, label %.invoke.i.i

bb.ah:                                            ; preds = %bb.ag
  %i.dg = getelementptr inbounds nuw [104 x i8], ptr %i.g, i64 %i.cg ; 2 uses
  %i.dh = load i64, ptr %i.dg, align 8, !range !491, !noalias !20901, !noundef !8
  %i.di = trunc nuw i64 %i.dh to i1
  br i1 %i.di, label %bb.ai, label %.invoke106.i.i, !prof !17

bb.ai:                                            ; preds = %bb.ah
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  store i64 %.sroa.0.062.i, ptr %i.dj, align 8, !noalias !20901
  br label %_ZN4http6header3map18remove_extra_value17h007f757026106c68E.exit.i

.invoke106.i.i:                                   ; preds = %bb.ah, %bb.ab
  %i.dk = phi ptr [ @589, %bb.ab ], [ @592, %bb.ah ]
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dk) #54
          to label %.cont107.i.i unwind label %bb.y, !noalias !20901

.cont107.i.i:                                     ; preds = %.invoke106.i.i
  unreachable

bb.aj:                                            ; preds = %bb.af
  %i.dl = getelementptr inbounds nuw [72 x i8], ptr %i.y, i64 %i.cg ; 2 uses
  store i64 1, ptr %i.dl, align 8, !noalias !20901
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  store i64 %.sroa.0.062.i, ptr %i.dm, align 8, !noalias !20901
  br label %_ZN4http6header3map18remove_extra_value17h007f757026106c68E.exit.i

.invoke.i.i:                                      ; preds = %bb.ag, %bb.af, %bb.aa, %bb.z
  %i.dn = phi i64 [ %i.cg, %bb.ag ], [ %i.ci, %bb.z ], [ %i.ci, %bb.aa ], [ %i.cg, %bb.af ]
  %i.do = phi i64 [ %i.d, %bb.ag ], [ %i.ay, %bb.z ], [ %i.d, %bb.aa ], [ %i.ay, %bb.af ]
  %i.dp = phi ptr [ @591, %bb.ag ], [ @590, %bb.z ], [ @588, %bb.aa ], [ @593, %bb.af ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.dn, i64 noundef %i.do, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dp) #54
          to label %.cont.i.i unwind label %bb.y, !noalias !20901

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

bb.ak:                                            ; preds = %bb.y
  %i.dq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !20901
  unreachable

_ZN4http6header3map18remove_extra_value17h007f757026106c68E.exit.i: ; preds = %bb.aj, %bb.ai, %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.b, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false), !noalias !20895
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !20901
  %i.dr = load i64, ptr %i.ae, align 8, !range !491, !noalias !20892, !noundef !8
  %i.ds = trunc nuw i64 %i.dr to i1
  br i1 %i.ds, label %bb.al, label %bb.am

bb.al:                                            ; preds = %_ZN4http6header3map18remove_extra_value17h007f757026106c68E.exit.i
  %i.dt = load i64, ptr %i.af, align 8, !noalias !20892, !noundef !8 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !20924)
  call void @llvm.experimental.noalias.scope.decl(metadata !20927)
  call void @llvm.experimental.noalias.scope.decl(metadata !20930)
  call void @llvm.experimental.noalias.scope.decl(metadata !20933)
  %i.du = load ptr, ptr %i.ag, align 8, !alias.scope !20936, !noalias !20892, !nonnull !8, !align !461, !noundef !8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 32
  %i.dw = load ptr, ptr %i.dv, align 8, !noalias !20937, !nonnull !8, !noundef !8
  %i.dx = load ptr, ptr %i.ai, align 8, !alias.scope !20936, !noalias !20892, !noundef !8
  %i.dy = load i64, ptr %i.aj, align 8, !alias.scope !20936, !noalias !20892, !noundef !8
  invoke void %i.dw(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ah, ptr noundef %i.dx, i64 noundef %i.dy)
          to label %.noexc12 unwind label %.loopexit, !inline_history !20938

.noexc12:                                         ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !20892
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !20892
  %i.dz = icmp ult i64 %i.dt, %i.ay
  br i1 %i.dz, label %bb.d, label %.invoke

bb.am:                                            ; preds = %_ZN4http6header3map18remove_extra_value17h007f757026106c68E.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !20939)
  call void @llvm.experimental.noalias.scope.decl(metadata !20942)
  call void @llvm.experimental.noalias.scope.decl(metadata !20945)
  call void @llvm.experimental.noalias.scope.decl(metadata !20948)
  %i.ea = load ptr, ptr %i.ag, align 8, !alias.scope !20951, !noalias !20892, !nonnull !8, !align !461, !noundef !8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 32
  %i.ec = load ptr, ptr %i.eb, align 8, !noalias !20952, !nonnull !8, !noundef !8
  %i.ed = load ptr, ptr %i.ai, align 8, !alias.scope !20951, !noalias !20892, !noundef !8
  %i.ee = load i64, ptr %i.aj, align 8, !alias.scope !20951, !noalias !20892, !noundef !8
  invoke void %i.ec(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ah, ptr noundef %i.ed, i64 noundef %i.ee)
          to label %"_ZN4http6header3map18HeaderMap$LT$T$GT$23remove_all_extra_values17h6e3e06ac7d422988E.exit" unwind label %.loopexit.split-lp, !inline_history !20938

"_ZN4http6header3map18HeaderMap$LT$T$GT$23remove_all_extra_values17h6e3e06ac7d422988E.exit": ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !20892
  br label %bb.an

bb.an:                                            ; preds = %bb.b, %"_ZN4http6header3map18HeaderMap$LT$T$GT$23remove_all_extra_values17h6e3e06ac7d422988E.exit"
  %i.ef = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.ef, i64 40, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ef, ptr noundef nonnull align 8 dereferenceable(40) %3, i64 40, i1 false)
  ret void

bb.ao:                                            ; preds = %.body
  %i.eg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56
  unreachable

"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17h682a465a928c1da9E.exit": ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @"_ZN4http6header3map18HeaderMap$LT$T$GT$15try_reserve_one17h8e510c9b8652aa7fE"(ptr noalias noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !8 ; 4 uses
  %i.d = icmp ult i64 %i.c, 88686269585142076
  tail call void @llvm.assume(i1 %i.d)
  %i.e = load i64, ptr %0, align 8, !range !479, !noundef !8
  %i.f = icmp eq i64 %i.e, 1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.h = load i64, ptr %i.g, align 8, !noundef !8 ; 7 uses
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = mul nuw nsw i64 %i.c, 5
  %.not = icmp ult i64 %i.i, %i.h
  br i1 %.not, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.k = lshr i64 %i.h, 2
  %i.l = sub i64 %i.h, %i.k
  %i.m = icmp eq i64 %i.c, %i.l
  br i1 %i.m, label %bb.m, label %"_ZN4http6header3map18HeaderMap$LT$T$GT$7rebuild17hd64514e5cf81fc51E.exit"

bb.d:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  tail call void @_ZN4http6header3map6Danger7set_red17h996d9a7f1a8ce58cE(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !8, !align !20708, !noundef !8 ; 5 uses
  %i.p = load i64, ptr %i.g, align 8, !noundef !8 ; 2 uses
  %.idx = shl i64 %i.p, 2                         ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx
  %i.r = icmp eq i64 %i.p, 0
  br i1 %i.r, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.s = add i64 %.idx, -4                        ; 2 uses
  %i.t = lshr exact i64 %i.s, 2
  %i.u = add nuw nsw i64 %i.t, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.s, 28
  br i1 %min.iters.check, label %.lr.ph.preheader41, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.u, 9223372036854775800      ; 3 uses
  %i.v = shl i64 %n.vec, 2
  %i.w = getelementptr i8, ptr %i.o, i64 %i.v
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.x = shl i64 %index, 2                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.o, i64 %i.x
  %i.y = getelementptr i8, ptr %i.o, i64 %i.x
  %next.gep36 = getelementptr i8, ptr %i.y, i64 16
  store <8 x i16> <i16 -1, i16 0, i16 -1, i16 0, i16 -1, i16 0, i16 -1, i16 0>, ptr %next.gep, align 2
  store <8 x i16> <i16 -1, i16 0, i16 -1, i16 0, i16 -1, i16 0, i16 -1, i16 0>, ptr %next.gep36, align 2
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %middle.block, label %vector.body, !llvm.loop !20953

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.u, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader41

.lr.ph.preheader41:                               ; preds = %.lr.ph.preheader, %middle.block
  %.sroa.09.018.ph = phi ptr [ %i.o, %.lr.ph.preheader ], [ %i.w, %middle.block ]
  br label %.lr.ph

bb.e:                                             ; preds = %bb.b
  store i64 0, ptr %0, align 8
  %i.aa = shl nuw nsw i64 %i.h, 1
  %i.ab = tail call fastcc noundef zeroext i1 @"_ZN4http6header3map18HeaderMap$LT$T$GT$8try_grow17haea69580bd90cf09E"(ptr noalias noundef align 8 dereferenceable(96) %0, i64 noundef %i.aa)
  br i1 %i.ab, label %bb.u, label %"_ZN4http6header3map18HeaderMap$LT$T$GT$7rebuild17hd64514e5cf81fc51E.exit"

.lr.ph:                                           ; preds = %.lr.ph.preheader41, %.lr.ph
  %.sroa.09.018 = phi ptr [ %i.ac, %.lr.ph ], [ %.sroa.09.018.ph, %.lr.ph.preheader41 ] ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.09.018, i64 4 ; 2 uses
  store i16 -1, ptr %.sroa.09.018, align 2
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.09.018, i64 2
  store i16 0, ptr %i.ad, align 2
  %i.ae = icmp eq ptr %i.ac, %i.q
  br i1 %i.ae, label %._crit_edge, label %.lr.ph, !llvm.loop !20955

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20956)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !20956, !nonnull !8, !noundef !8 ; 2 uses
  %i.ah = load i64, ptr %i.b, align 8, !alias.scope !20956, !noundef !8 ; 2 uses
  %.idx.i = mul nuw nsw i64 %i.ah, 104
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.idx.i
  %i.aj = icmp eq i64 %i.ah, 0
  br i1 %i.aj, label %"_ZN4http6header3map18HeaderMap$LT$T$GT$7rebuild17hd64514e5cf81fc51E.exit", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.al = load i16, ptr %i.ak, align 8, !alias.scope !20956 ; 3 uses
  %i.am = load ptr, ptr %i.n, align 8, !alias.scope !20956, !nonnull !8, !align !20708 ; 3 uses
  %i.an = load i64, ptr %i.g, align 8, !alias.scope !20956 ; 4 uses
  %i.ao = zext i16 %i.al to i64
  %.not47 = icmp eq i64 %i.an, 0
  %.not48 = icmp eq i64 %i.an, 0
  br label %bb.f

bb.f:                                             ; preds = %.backedge.i, %.lr.ph.i
  %.sroa.0.035.i = phi ptr [ %i.ag, %.lr.ph.i ], [ %i.ap, %.backedge.i ] ; 3 uses
  %.sroa.7.034.i = phi i64 [ 0, %.lr.ph.i ], [ %i.aq, %.backedge.i ] ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0.035.i, i64 104 ; 2 uses
  %i.aq = add nuw nsw i64 %.sroa.7.034.i, 1
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.0.035.i, i64 64
  %i.as = tail call fastcc noundef i16 @_ZN4http6header3map15hash_elem_using17hfa00c2547dd9d71bE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %0, ptr noundef nonnull align 8 %i.ar) ; 4 uses
  %i.at = and i16 %i.as, %i.al
  %i.au = zext nneg i16 %i.at to i64
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.035.i, i64 96
  store i16 %i.as, ptr %i.av, align 8, !noalias !20956
  br label %.outer37

.outer37:                                         ; preds = %bb.i, %bb.f
  %.sroa.04.0.i.ph = phi i64 [ %i.bm, %bb.i ], [ %i.au, %bb.f ] ; 2 uses
  %.sroa.010.0.i.ph = phi i64 [ %i.bl, %bb.i ], [ 0, %bb.f ] ; 2 uses
  %i.aw = icmp ult i64 %.sroa.04.0.i.ph, %i.an    ; 2 uses
  %.not47.not = xor i1 %.not47, true
  %brmerge = or i1 %i.aw, %.not47.not
  %.sroa.04.0.i.ph.mux = select i1 %i.aw, i64 %.sroa.04.0.i.ph, i64 0 ; 5 uses
  br i1 %brmerge, label %.loopexit, label %infloop

.loopexit:                                        ; preds = %.outer37
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %.sroa.04.0.i.ph.mux ; 3 uses
  %i.ay = load i16, ptr %i.ax, align 2, !noalias !20956, !noundef !8
  %.not22.i = icmp eq i16 %i.ay, -1
  br i1 %.not22.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.loopexit
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 2
  %i.ba = load i16, ptr %i.az, align 2, !noalias !20956, !noundef !8
  %i.bb = and i16 %i.ba, %i.al
  %i.bc = zext i16 %i.bb to i64
  %i.bd = sub i64 %.sroa.04.0.i.ph.mux, %i.bc
  %i.be = and i64 %i.bd, %i.ao
  %i.bf = icmp samesign ult i64 %i.be, %.sroa.010.0.i.ph
  br i1 %i.bf, label %bb.j, label %bb.i

bb.h:                                             ; preds = %.loopexit
  %i.bg = trunc i64 %.sroa.7.034.i to i16
  store i16 %i.bg, ptr %i.ax, align 2, !noalias !20956
  br label %.backedge.i

.backedge.i:                                      ; preds = %bb.k, %bb.h
  %i.bh = phi i64 [ %.sroa.04.0.i.ph.mux, %bb.h ], [ %.sroa.013.0.i.ph.mux, %bb.k ]
  %.sink.i = phi i16 [ %i.as, %bb.h ], [ %.sroa.618.0.i.ph, %bb.k ]
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 2
  store i16 %.sink.i, ptr %i.bj, align 2, !noalias !20956
  %i.bk = icmp eq ptr %i.ap, %i.ai
  br i1 %i.bk, label %"_ZN4http6header3map18HeaderMap$LT$T$GT$7rebuild17hd64514e5cf81fc51E.exit", label %bb.f

bb.i:                                             ; preds = %bb.g
  %i.bl = add nuw nsw i64 %.sroa.010.0.i.ph, 1
  %i.bm = add nuw i64 %.sroa.04.0.i.ph.mux, 1
  br label %.outer37

bb.j:                                             ; preds = %bb.g
  %i.bn = trunc i64 %.sroa.7.034.i to i16
  br label %.outer

.outer:                                           ; preds = %bb.l, %bb.j
  %.sroa.013.0.i.ph = phi i64 [ %i.bu, %bb.l ], [ %.sroa.04.0.i.ph.mux, %bb.j ] ; 2 uses
  %.sroa.016.0.i.ph = phi i16 [ %i.bq, %bb.l ], [ %i.bn, %bb.j ] ; 2 uses
  %.sroa.618.0.i.ph = phi i16 [ %i.bt, %bb.l ], [ %i.as, %bb.j ] ; 2 uses
  %i.bo = icmp ult i64 %.sroa.013.0.i.ph, %i.an   ; 2 uses
  %.not48.not = xor i1 %.not48, true
  %brmerge53 = or i1 %i.bo, %.not48.not
  %.sroa.013.0.i.ph.mux = select i1 %i.bo, i64 %.sroa.013.0.i.ph, i64 0 ; 3 uses
  br i1 %brmerge53, label %.loopexit46, label %infloop52

.loopexit46:                                      ; preds = %.outer
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %.sroa.013.0.i.ph.mux ; 4 uses
  %i.bq = load i16, ptr %i.bp, align 2, !noalias !20956, !noundef !8 ; 2 uses
  %i.br = icmp eq i16 %i.bq, -1
  br i1 %i.br, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.loopexit46
  store i16 %.sroa.016.0.i.ph, ptr %i.bp, align 2, !noalias !20956
  br label %.backedge.i

bb.l:                                             ; preds = %.loopexit46
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 2 ; 2 uses
  %i.bt = load i16, ptr %i.bs, align 2, !noalias !20956, !noundef !8
  store i16 %.sroa.016.0.i.ph, ptr %i.bp, align 2, !noalias !20956
  store i16 %.sroa.618.0.i.ph, ptr %i.bs, align 2, !noalias !20956
  %i.bu = add nuw i64 %.sroa.013.0.i.ph.mux, 1
  br label %.outer

"_ZN4http6header3map18HeaderMap$LT$T$GT$7rebuild17hd64514e5cf81fc51E.exit": ; preds = %.backedge.i, %._crit_edge, %bb.p, %"_ZN4core3ptr109drop_in_place$LT$alloc..vec..Vec$LT$http..header..map..Bucket$LT$http..header..value..HeaderValue$GT$$GT$$GT$17hb65dc6e3ed25b711E.exit", %bb.c, %bb.e
  br label %bb.u

bb.m:                                             ; preds = %bb.c
  %i.bv = icmp eq i64 %i.c, 0
  br i1 %i.bv, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i16 7, ptr %i.bw, align 8
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #47, !noalias !20959
  %i.bx = tail call noundef align 2 dereferenceable_or_null(32) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef range(i64 1, 9) 2) #47, !noalias !20959 ; 4 uses
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %bb.o, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.n
  store <8 x i16> <i16 -1, i16 0, i16 -1, i16 0, i16 -1, i16 0, i16 -1, i16 0>, ptr %i.bx, align 2, !noalias !20967
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  store <8 x i16> <i16 -1, i16 0, i16 -1, i16 0, i16 -1, i16 0, i16 -1, i16 0>, ptr %i.bz, align 2, !noalias !20967
  %i.ca = icmp eq i64 %i.h, 0
  br i1 %i.ca, label %"_ZN4core3ptr78drop_in_place$LT$alloc..boxed..Box$LT$$u5b$http..header..map..Pos$u5d$$GT$$GT$17h7acf44491c982670E.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i"

bb.o:                                             ; preds = %bb.n
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 2, i64 32, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @571) #54, !noalias !20970
  unreachable

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i": ; preds = %.lr.ph.i.i.preheader
  %.val = load ptr, ptr %i.j, align 8, !nonnull !8, !noundef !8
  %i.cb = shl nuw nsw i64 %i.h, 2
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.cb, i64 noundef 2) #47
end_hunk_3
begin_hunk_4_@"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$6insert17h1ecebc72a8472539E":bb.a
  %.sroa.8.0.copyload.i.i = load i64, ptr %.sink61.i.sroa.gep.i.i, align 8, !noalias !22817 ; 2 uses
  %.sroa.9.0.copyload.i.i = load ptr, ptr %.sink62.i.sroa.gep92.i.i, align 8, !noalias !22817 ; 3 uses
  %.sroa.10.0.copyload.i.i = load i64, ptr %.sink61.i.sroa.gep94.i.i, align 8, !noalias !22817 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !22766
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !22760
  %.not.i.i = icmp eq i64 %.sroa.03.0.copyload.i.i, -9223372036854775808
  br i1 %.not.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.76.0.copyload.i.i) ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.15.i.i, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.7.sroa.6.i.i, i64 80, i1 false), !noalias !22760
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.0.copyload.i.i) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.sroa.6.i.i)
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.76.0.copyload.i.i, i64 880
  %i.cc = load ptr, ptr %i.cb, align 8, !noalias !22818, !noundef !8 ; 2 uses
  %.not.i194.i.i = icmp eq ptr %i.cc, null
  br i1 %.not.i194.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.z
  %i.cd = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.a, i64 120 ; 2 uses
  %.sroa.842.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.sroa.845.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 104 ; 2 uses
  %.sroa.948.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 112 ; 2 uses
  %.sroa.1154.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %.sroa.842.sroa.6.0..sroa.842.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %.sroa.842.sroa.7.0..sroa.842.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  br label %bb.am

bb.aa:                                            ; preds = %bb.y, %.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.sroa.6.i.i)
  br label %bb.bm

._crit_edge.i.i:                                  ; preds = %bb.bk, %bb.z
  %.sroa.14.0.i.i = phi i64 [ %.sroa.7.sroa.5.0.copyload.i.i, %bb.z ], [ %.sroa.842.sroa.6.0.i.i, %bb.bk ] ; 2 uses
  %.sroa.11.0.i.i = phi ptr [ %.sroa.7.sroa.0.0.copyload.i.i, %bb.z ], [ %.sroa.842.sroa.0.0.i.i, %bb.bk ] ; 5 uses
  %.sroa.1051.1184.lcssa.i.i = phi ptr [ %.sroa.9.0.copyload.i.i, %bb.z ], [ %.sroa.1051.1.i.i, %bb.bk ] ; 4 uses
  %.sroa.948.1179.lcssa.i.i = phi i64 [ %.sroa.8.0.copyload.i.i, %bb.z ], [ %.sroa.948.1.i.i, %bb.bk ]
  %.sroa.845.1174.lcssa.i.i = phi ptr [ %.sroa.76.0.copyload.i.i, %bb.z ], [ %.sroa.845.1.i.i, %bb.bk ]
  %.sroa.039.0169.lcssa.i.i = phi i64 [ %.sroa.03.0.copyload.i.i, %bb.z ], [ %.sroa.039.0.i.i, %bb.bk ] ; 6 uses
  %.lcssa139.i.i = phi i64 [ %.sroa.10.0.copyload.i.i, %bb.z ], [ %.sroa.1154.0.copyload56.i.i, %bb.bk ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !22760
  %.sroa.02.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.02.sroa.6.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.15.i.i, i64 80, i1 false), !noalias !22760
  store i64 %.sroa.039.0169.lcssa.i.i, ptr %i.g, align 8, !noalias !22760
  %.sroa.02.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %.sroa.11.0.i.i, ptr %.sroa.02.sroa.4.0..sroa_idx.i.i, align 8, !noalias !22760
  %.sroa.02.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 %.sroa.14.0.i.i, ptr %.sroa.02.sroa.5.0..sroa_idx.i.i, align 8, !noalias !22760
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  store ptr %.sroa.845.1174.lcssa.i.i, ptr %.sroa.43.0..sroa_idx.i.i, align 8, !noalias !22760
  %.sroa.54.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 112
  store i64 %.sroa.948.1179.lcssa.i.i, ptr %.sroa.54.0..sroa_idx.i.i, align 8, !noalias !22760
  %.sroa.65.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 120
  store ptr %.sroa.1051.1184.lcssa.i.i, ptr %.sroa.65.0..sroa_idx.i.i, align 8, !noalias !22760
  %.sroa.76.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 128
  store i64 %.lcssa139.i.i, ptr %.sroa.76.0..sroa_idx.i.i, align 8, !noalias !22760
  %i.cg = load ptr, ptr %1, align 8, !noalias !22821, !noundef !8 ; 4 uses
  %.not.i23.i.i = icmp eq ptr %i.cg, null
  br i1 %.not.i23.i.i, label %bb.ab, label %bb.ad, !prof !14

bb.ab:                                            ; preds = %._crit_edge.i.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @652) #54
          to label %bb.ac unwind label %bb.aj, !noalias !22821

bb.ac:                                            ; preds = %bb.ab
  unreachable

bb.ad:                                            ; preds = %._crit_edge.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22824)
  %i.ch = load i64, ptr %i.j, align 8, !alias.scope !22824, !noalias !22821, !noundef !8 ; 2 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #47, !noalias !22827
  %i.ci = tail call noalias noundef align 8 dereferenceable_or_null(1256) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 1256, i64 noundef range(i64 1, -9223372036854775807) 8) #47, !noalias !22827 ; 12 uses
  %i.cj = icmp eq ptr %i.ci, null
  br i1 %i.cj, label %bb.ae, label %bb.ag, !prof !14

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 1256) #54
          to label %.noexc.i.i.i.i unwind label %bb.af, !noalias !22827

.noexc.i.i.i.i:                                   ; preds = %bb.ae
  unreachable

bb.af:                                            ; preds = %bb.ae
  %i.ck = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap()
  unreachable

bb.ag:                                            ; preds = %bb.ad
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 880
  store ptr null, ptr %i.cl, align 8, !noalias !22827
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ci, i64 1154 ; 2 uses
  store i16 0, ptr %i.cm, align 2, !noalias !22827
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ci, i64 1160
  store ptr %i.cg, ptr %i.cn, align 8, !noalias !22827
  %i.co = add i64 %i.ch, 1
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cg, i64 880
  store ptr %i.ci, ptr %i.cp, align 8, !noalias !22828
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cg, i64 1152
  store i16 0, ptr %i.cq, align 8, !noalias !22835
  store ptr %i.ci, ptr %1, align 8, !alias.scope !22824, !noalias !22821
  store i64 %i.co, ptr %i.j, align 8, !alias.scope !22824, !noalias !22821
  %i.cr = icmp eq i64 %.lcssa139.i.i, %i.ch
  br i1 %i.cr, label %bb.bl, label %.invoke.i.i.i.i, !prof !17

.invoke.i.i.i.i:                                  ; preds = %bb.ag
  invoke void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @655, i64 noundef 48, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @656) #54
          to label %.cont.i.i.i.i unwind label %bb.ah, !noalias !22836

.cont.i.i.i.i:                                    ; preds = %.invoke.i.i.i.i
  unreachable

bb.ah:                                            ; preds = %.invoke.i.i.i.i
  %i.cs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call fastcc void @"_ZN4core3ptr49drop_in_place$LT$xtask..common..assets..Asset$GT$17h68197de1087764feE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(80) %.sroa.02.sroa.6.0..sroa_idx.i.i) #55, !noalias !22760
  %i.ct = icmp eq i64 %.sroa.039.0169.lcssa.i.i, 0
  br i1 %i.ct, label %.body, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.11.0.i.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.11.0.i.i, i64 noundef %.sroa.039.0169.lcssa.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #47, !noalias !22840
  br label %.body

bb.aj:                                            ; preds = %bb.ab
  %i.cu = landingpad { ptr, i32 }
          cleanup
  %i.cv = icmp eq i64 %.sroa.039.0169.lcssa.i.i, 0
  br i1 %i.cv, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.11.0.i.i, i64 noundef %.sroa.039.0169.lcssa.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #47, !noalias !22843
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  call fastcc void @"_ZN4core3ptr49drop_in_place$LT$xtask..common..assets..Asset$GT$17h68197de1087764feE"(ptr noalias noundef readonly align 8 dereferenceable(80) %.sroa.02.sroa.6.0..sroa_idx.i.i) #55, !noalias !22760
  br label %.body

bb.am:                                            ; preds = %bb.bk, %.lr.ph.i.i
  %.sroa.14.1.i.i = phi i64 [ %.sroa.7.sroa.5.0.copyload.i.i, %.lr.ph.i.i ], [ %.sroa.842.sroa.6.0.i.i, %bb.bk ] ; 6 uses
  %.sroa.11.1.i.i = phi ptr [ %.sroa.7.sroa.0.0.copyload.i.i, %.lr.ph.i.i ], [ %.sroa.842.sroa.0.0.i.i, %bb.bk ] ; 8 uses
  %i.cw = phi ptr [ %i.cc, %.lr.ph.i.i ], [ %i.ki, %bb.bk ] ; 14 uses
  %i.cx = phi ptr [ %.sroa.76.0.copyload.i.i, %.lr.ph.i.i ], [ %.sroa.845.1.i.i, %bb.bk ]
  %i.cy = phi i64 [ %.sroa.8.0.copyload.i.i, %.lr.ph.i.i ], [ %.sroa.948.1.i.i, %bb.bk ] ; 2 uses
  %i.cz = phi ptr [ %.sroa.9.0.copyload.i.i, %.lr.ph.i.i ], [ %.sroa.1051.1.i.i, %bb.bk ] ; 3 uses
  %.sroa.039.0169199.i.i = phi i64 [ %.sroa.03.0.copyload.i.i, %.lr.ph.i.i ], [ %.sroa.039.0.i.i, %bb.bk ] ; 8 uses
  %.sroa.1154.1189195.i.i = phi i64 [ %.sroa.10.0.copyload.i.i, %.lr.ph.i.i ], [ %.sroa.1154.0.copyload56.i.i, %bb.bk ]
  %i.da = add i64 %i.cy, 1
  %i.db = getelementptr inbounds nuw i8, ptr %i.cx, i64 1152
  %i.dc = load i16, ptr %i.db, align 8, !noalias !22818 ; 5 uses
  %i.dd = zext i16 %i.dc to i64                   ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.842.sroa.7.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !22760
  %i.de = icmp eq i64 %.sroa.1154.1189195.i.i, %i.cy
  br i1 %i.de, label %bb.ao, label %bb.an, !prof !17

bb.an:                                            ; preds = %bb.am
  invoke void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @667, i64 noundef 53, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @668) #54
          to label %bb.ap unwind label %.loopexit.split-lp.i.i, !noalias !22846

bb.ao:                                            ; preds = %bb.am
  %i.df = getelementptr inbounds nuw i8, ptr %i.cw, i64 1154
  %i.dg = load i16, ptr %i.df, align 2, !noalias !22846, !noundef !8 ; 4 uses
  %i.dh = icmp ult i16 %i.dg, 11
  br i1 %i.dh, label %bb.ar, label %bb.aq

bb.ap:                                            ; preds = %bb.an
  unreachable

bb.aq:                                            ; preds = %bb.ao
  %i.di = icmp ult i16 %i.dc, 5
  store ptr %i.cw, ptr %i.b, align 8, !noalias !22846
  store i64 %i.da, ptr %i.cd, align 8, !noalias !22846
  br i1 %i.di, label %.invoke.i34.i.i, label %bb.av

bb.ar:                                            ; preds = %bb.ao
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cw, i64 1154
  %i.dk = zext nneg i16 %i.dg to i64              ; 4 uses
  %i.dl = add nuw nsw i16 %i.dg, 1
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cw, i64 888 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22852)
  %i.dn = add nuw nsw i64 %i.dd, 1                ; 7 uses
  %.not.i.i36.not.i.i = icmp ult i16 %i.dc, %i.dg
  %i.do = getelementptr inbounds nuw [24 x i8], ptr %i.dm, i64 %i.dd ; 7 uses
  br i1 %.not.i.i36.not.i.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  store i64 %.sroa.039.0169199.i.i, ptr %i.do, align 8, !alias.scope !22855, !noalias !22857
  %.sroa.1164.0..sroa_idx75.i.i = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  store ptr %.sroa.11.1.i.i, ptr %.sroa.1164.0..sroa_idx75.i.i, align 8, !alias.scope !22855, !noalias !22857
  %.sroa.13.0..sroa_idx87.i.i = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  store i64 %.sroa.14.1.i.i, ptr %.sroa.13.0..sroa_idx87.i.i, align 8, !alias.scope !22855, !noalias !22857
  %i.dp = getelementptr inbounds nuw [80 x i8], ptr %i.cw, i64 %i.dd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.dp, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.15.i.i, i64 80, i1 false), !noalias !22760
  br label %bb.au

bb.at:                                            ; preds = %bb.ar
  %i.dq = getelementptr inbounds nuw [24 x i8], ptr %i.dm, i64 %i.dn
  %i.dr = sub nsw i64 %i.dk, %i.dd                ; 3 uses
  %i.ds = mul nsw i64 %i.dr, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dq, ptr nonnull align 8 %i.do, i64 %i.ds, i1 false), !alias.scope !22861, !noalias !22862
  store i64 %.sroa.039.0169199.i.i, ptr %i.do, align 8, !alias.scope !22855, !noalias !22857
  %.sroa.1164.0..sroa_idx73.i.i = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  store ptr %.sroa.11.1.i.i, ptr %.sroa.1164.0..sroa_idx73.i.i, align 8, !alias.scope !22855, !noalias !22857
  %.sroa.13.0..sroa_idx85.i.i = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  store i64 %.sroa.14.1.i.i, ptr %.sroa.13.0..sroa_idx85.i.i, align 8, !alias.scope !22855, !noalias !22857
  %i.dt = getelementptr inbounds nuw [80 x i8], ptr %i.cw, i64 %i.dd ; 2 uses
  %i.du = getelementptr inbounds nuw [80 x i8], ptr %i.cw, i64 %i.dn
  %i.dv = mul nsw i64 %i.dr, 80
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.du, ptr nonnull align 8 %i.dt, i64 %i.dv, i1 false), !alias.scope !22864, !noalias !22867
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.dt, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.15.i.i, i64 80, i1 false), !noalias !22760
  %i.dw = getelementptr inbounds nuw i8, ptr %i.cw, i64 1160 ; 2 uses
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %i.dn
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %i.dd
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %i.ea = shl nsw i64 %i.dr, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dz, ptr nonnull align 8 %i.dx, i64 %i.ea, i1 false), !alias.scope !22869, !noalias !22872
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.eb = getelementptr inbounds nuw i8, ptr %i.cw, i64 1160 ; 6 uses
  %i.ec = add nuw nsw i64 %i.dk, 2                ; 2 uses
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %i.dn
  store ptr %i.cz, ptr %i.ed, align 8, !alias.scope !22869, !noalias !22872
  store i16 %i.dl, ptr %i.dj, align 2, !noalias !22872
  %i.ee = icmp samesign ult i64 %i.dn, %i.ec
  br i1 %i.ee, label %.lr.ph.i.i.i.i.i.preheader, label %.thread112.i.i

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.au
  %i.ef = add nuw nsw i64 %i.dk, 1
  %i.eg = sub nsw i64 %i.ef, %i.dd
  %i.eh = sub nsw i64 %i.dk, %i.dd
  %xtraiter354 = and i64 %i.eg, 3                 ; 2 uses
  %lcmp.mod355.not = icmp eq i64 %xtraiter354, 0
  br i1 %lcmp.mod355.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %.sroa.0.06.i.i.i.i.i.prol = phi i64 [ %i.ei, %.lr.ph.i.i.i.i.i.prol ], [ %i.dn, %.lr.ph.i.i.i.i.i.preheader ] ; 4 uses
  %prol.iter356 = phi i64 [ %prol.iter356.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.ei = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.prol, 1 ; 2 uses
  %i.ej = icmp samesign ult i64 %.sroa.0.06.i.i.i.i.i.prol, 12
  tail call void @llvm.assume(i1 %i.ej)
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %.sroa.0.06.i.i.i.i.i.prol
  %i.el = load ptr, ptr %i.ek, align 8, !noalias !22873, !nonnull !8, !noundef !8 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 880
  store ptr %i.cw, ptr %i.em, align 8, !noalias !22878
  %i.en = trunc nuw nsw i64 %.sroa.0.06.i.i.i.i.i.prol to i16
  %i.eo = getelementptr inbounds nuw i8, ptr %i.el, i64 1152
  store i16 %i.en, ptr %i.eo, align 8, !noalias !22878
  %prol.iter356.next = add i64 %prol.iter356, 1   ; 2 uses
  %prol.iter356.cmp.not = icmp eq i64 %prol.iter356.next, %xtraiter354
  br i1 %prol.iter356.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !22879

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.sroa.0.06.i.i.i.i.i.unr = phi i64 [ %i.dn, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ei, %.lr.ph.i.i.i.i.i.prol ]
  %i.ep = icmp ult i64 %i.eh, 3
  br i1 %i.ep, label %.thread112.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.sroa.0.06.i.i.i.i.i = phi i64 [ %i.fi, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.06.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 7 uses
  %i.eq = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i, 1 ; 2 uses
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %.sroa.0.06.i.i.i.i.i
  %i.es = load ptr, ptr %i.er, align 8, !noalias !22873, !nonnull !8, !noundef !8 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 880
  store ptr %i.cw, ptr %i.et, align 8, !noalias !22878
  %i.eu = trunc nuw nsw i64 %.sroa.0.06.i.i.i.i.i to i16
  %i.ev = getelementptr inbounds nuw i8, ptr %i.es, i64 1152
  store i16 %i.eu, ptr %i.ev, align 8, !noalias !22878
  %i.ew = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i, 2 ; 2 uses
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %i.eq
  %i.ey = load ptr, ptr %i.ex, align 8, !noalias !22873, !nonnull !8, !noundef !8 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 880
  store ptr %i.cw, ptr %i.ez, align 8, !noalias !22878
  %i.fa = trunc nuw nsw i64 %i.eq to i16
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ey, i64 1152
  store i16 %i.fa, ptr %i.fb, align 8, !noalias !22878
  %i.fc = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i, 3 ; 2 uses
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %i.ew
  %i.fe = load ptr, ptr %i.fd, align 8, !noalias !22873, !nonnull !8, !noundef !8 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 880
  store ptr %i.cw, ptr %i.ff, align 8, !noalias !22878
  %i.fg = trunc nuw nsw i64 %i.ew to i16
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fe, i64 1152
  store i16 %i.fg, ptr %i.fh, align 8, !noalias !22878
  %i.fi = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i, 4 ; 2 uses
  %i.fj = icmp ult i64 %.sroa.0.06.i.i.i.i.i, 9
  tail call void @llvm.assume(i1 %i.fj)
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %i.fc
  %i.fl = load ptr, ptr %i.fk, align 8, !noalias !22873, !nonnull !8, !noundef !8 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 880
  store ptr %i.cw, ptr %i.fm, align 8, !noalias !22878
  %i.fn = trunc nuw nsw i64 %i.fc to i16
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fl, i64 1152
  store i16 %i.fn, ptr %i.fo, align 8, !noalias !22878
  %exitcond.not.i.i.i.i.i.3 = icmp eq i64 %i.fi, %i.ec
  br i1 %exitcond.not.i.i.i.i.i.3, label %.thread112.i.i, label %.lr.ph.i.i.i.i.i

bb.av:                                            ; preds = %bb.aq
  switch i16 %i.dc, label %bb.aw [
    i16 5, label %.invoke.i34.i.i
    i16 6, label %bb.ax
  ]

.invoke.i34.i.i:                                  ; preds = %bb.av, %bb.aq
  %.sink.i35.i.i = phi i64 [ 5, %bb.av ], [ 4, %bb.aq ]
  store i64 %.sink.i35.i.i, ptr %i.ce, align 8, !noalias !22846
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !22846
  invoke fastcc void @"_ZN5alloc11collections5btree4node212Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..KV$GT$5split17h8725e14167497625E"(ptr noalias noundef align 8 captures(address) dereferenceable(136) %i.a, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b)
          to label %bb.ay unwind label %.loopexit.i.i, !noalias !22846

bb.aw:                                            ; preds = %bb.av
  store i64 6, ptr %i.ce, align 8, !noalias !22846
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !22846
  invoke fastcc void @"_ZN5alloc11collections5btree4node212Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..KV$GT$5split17h8725e14167497625E"(ptr noalias noundef align 8 captures(address) dereferenceable(136) %i.a, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b)
          to label %bb.bg unwind label %.loopexit.i.i, !noalias !22846

bb.ax:                                            ; preds = %bb.av
  store i64 5, ptr %i.ce, align 8, !noalias !22846
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !22846
  invoke fastcc void @"_ZN5alloc11collections5btree4node212Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..KV$GT$5split17h8725e14167497625E"(ptr noalias noundef align 8 captures(address) dereferenceable(136) %i.a, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b)
          to label %bb.bc unwind label %.loopexit.i.i, !noalias !22846

bb.ay:                                            ; preds = %.invoke.i34.i.i
  %i.fp = load ptr, ptr %.sroa.845.0..sroa_idx.i.i, align 8, !noalias !22846, !nonnull !8, !noundef !8 ; 13 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 1154 ; 2 uses
  %i.fr = load i16, ptr %i.fq, align 2, !noalias !22880, !noundef !8 ; 3 uses
  %i.fs = zext i16 %i.fr to i64                   ; 4 uses
  %i.ft = add i16 %i.fr, 1
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fp, i64 888 ; 2 uses
  %i.fv = add nuw nsw i64 %i.dd, 1                ; 7 uses
  %.not.i37.not.i.i.i = icmp ult i16 %i.dc, %i.fr
  %i.fw = getelementptr inbounds nuw [24 x i8], ptr %i.fu, i64 %i.dd ; 7 uses
  br i1 %.not.i37.not.i.i.i, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  store i64 %.sroa.039.0169199.i.i, ptr %i.fw, align 8, !noalias !22885
  %.sroa.1164.0..sroa_idx69.i.i = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  store ptr %.sroa.11.1.i.i, ptr %.sroa.1164.0..sroa_idx69.i.i, align 8, !noalias !22885
  %.sroa.13.0..sroa_idx81.i.i = getelementptr inbounds nuw i8, ptr %i.fw, i64 16
  store i64 %.sroa.14.1.i.i, ptr %.sroa.13.0..sroa_idx81.i.i, align 8, !noalias !22885
  %i.fx = getelementptr inbounds nuw [80 x i8], ptr %i.fp, i64 %i.dd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.fx, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.15.i.i, i64 80, i1 false), !noalias !22760
  br label %bb.bb

bb.ba:                                            ; preds = %bb.ay
  %i.fy = getelementptr inbounds nuw [24 x i8], ptr %i.fu, i64 %i.fv
  %i.fz = sub nuw nsw i64 %i.fs, %i.dd            ; 3 uses
  %i.ga = mul nuw nsw i64 %i.fz, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fy, ptr nonnull align 8 %i.fw, i64 %i.ga, i1 false), !alias.scope !22886, !noalias !22889
  store i64 %.sroa.039.0169199.i.i, ptr %i.fw, align 8, !noalias !22885
  %.sroa.1164.0..sroa_idx71.i.i = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  store ptr %.sroa.11.1.i.i, ptr %.sroa.1164.0..sroa_idx71.i.i, align 8, !noalias !22885
  %.sroa.13.0..sroa_idx83.i.i = getelementptr inbounds nuw i8, ptr %i.fw, i64 16
  store i64 %.sroa.14.1.i.i, ptr %.sroa.13.0..sroa_idx83.i.i, align 8, !noalias !22885
  %i.gb = getelementptr inbounds nuw [80 x i8], ptr %i.fp, i64 %i.dd ; 2 uses
  %i.gc = getelementptr inbounds nuw [80 x i8], ptr %i.fp, i64 %i.fv
  %i.gd = mul nuw nsw i64 %i.fz, 80
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gc, ptr nonnull align 8 %i.gb, i64 %i.gd, i1 false), !alias.scope !22891, !noalias !22894
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.gb, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.15.i.i, i64 80, i1 false), !noalias !22760
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fp, i64 1160 ; 2 uses
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %i.fv
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %i.dd
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 16
  %i.gi = shl nuw nsw i64 %i.fz, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gh, ptr nonnull align 8 %i.gf, i64 %i.gi, i1 false), !alias.scope !22896, !noalias !22880
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fp, i64 1160 ; 6 uses
  %i.gk = add nuw nsw i64 %i.fs, 2                ; 2 uses
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.gj, i64 %i.fv
  store ptr %i.cz, ptr %i.gl, align 8, !alias.scope !22896, !noalias !22880
  store i16 %i.ft, ptr %i.fq, align 2, !noalias !22880
  %i.gm = icmp samesign ult i64 %i.fv, %i.gk
  br i1 %i.gm, label %.lr.ph.i.i38.i.i.i.preheader, label %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17haaa4b2a7801bb1e3E.exit41.i.i.i"

.lr.ph.i.i38.i.i.i.preheader:                     ; preds = %bb.bb
  %i.gn = add nuw nsw i64 %i.fs, 1
  %i.go = sub nsw i64 %i.gn, %i.dd
  %i.gp = sub nsw i64 %i.fs, %i.dd
  %xtraiter351 = and i64 %i.go, 3                 ; 2 uses
  %lcmp.mod352.not = icmp eq i64 %xtraiter351, 0
  br i1 %lcmp.mod352.not, label %.lr.ph.i.i38.i.i.i.prol.loopexit, label %.lr.ph.i.i38.i.i.i.prol

.lr.ph.i.i38.i.i.i.prol:                          ; preds = %.lr.ph.i.i38.i.i.i.preheader, %.lr.ph.i.i38.i.i.i.prol
  %.sroa.0.06.i.i39.i.i.i.prol = phi i64 [ %i.gq, %.lr.ph.i.i38.i.i.i.prol ], [ %i.fv, %.lr.ph.i.i38.i.i.i.preheader ] ; 4 uses
  %prol.iter353 = phi i64 [ %prol.iter353.next, %.lr.ph.i.i38.i.i.i.prol ], [ 0, %.lr.ph.i.i38.i.i.i.preheader ]
  %i.gq = add nuw nsw i64 %.sroa.0.06.i.i39.i.i.i.prol, 1 ; 2 uses
  %i.gr = icmp samesign ult i64 %.sroa.0.06.i.i39.i.i.i.prol, 12
  tail call void @llvm.assume(i1 %i.gr)
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.gj, i64 %.sroa.0.06.i.i39.i.i.i.prol
  %i.gt = load ptr, ptr %i.gs, align 8, !noalias !22899, !nonnull !8, !noundef !8 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 880
  store ptr %i.fp, ptr %i.gu, align 8, !noalias !22904
  %i.gv = trunc nuw nsw i64 %.sroa.0.06.i.i39.i.i.i.prol to i16
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gt, i64 1152
  store i16 %i.gv, ptr %i.gw, align 8, !noalias !22904
  %prol.iter353.next = add i64 %prol.iter353, 1   ; 2 uses
  %prol.iter353.cmp.not = icmp eq i64 %prol.iter353.next, %xtraiter351
  br i1 %prol.iter353.cmp.not, label %.lr.ph.i.i38.i.i.i.prol.loopexit, label %.lr.ph.i.i38.i.i.i.prol, !llvm.loop !22905

.lr.ph.i.i38.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i38.i.i.i.prol, %.lr.ph.i.i38.i.i.i.preheader
  %.sroa.0.06.i.i39.i.i.i.unr = phi i64 [ %i.fv, %.lr.ph.i.i38.i.i.i.preheader ], [ %i.gq, %.lr.ph.i.i38.i.i.i.prol ]
  %i.gx = icmp ult i64 %i.gp, 3
  br i1 %i.gx, label %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17haaa4b2a7801bb1e3E.exit41.i.i.i", label %.lr.ph.i.i38.i.i.i

.lr.ph.i.i38.i.i.i:                               ; preds = %.lr.ph.i.i38.i.i.i.prol.loopexit, %.lr.ph.i.i38.i.i.i
  %.sroa.0.06.i.i39.i.i.i = phi i64 [ %i.hq, %.lr.ph.i.i38.i.i.i ], [ %.sroa.0.06.i.i39.i.i.i.unr, %.lr.ph.i.i38.i.i.i.prol.loopexit ] ; 7 uses
  %i.gy = add nuw nsw i64 %.sroa.0.06.i.i39.i.i.i, 1 ; 2 uses
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %i.gj, i64 %.sroa.0.06.i.i39.i.i.i
  %i.ha = load ptr, ptr %i.gz, align 8, !noalias !22899, !nonnull !8, !noundef !8 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 880
  store ptr %i.fp, ptr %i.hb, align 8, !noalias !22904
  %i.hc = trunc nuw nsw i64 %.sroa.0.06.i.i39.i.i.i to i16
  %i.hd = getelementptr inbounds nuw i8, ptr %i.ha, i64 1152
  store i16 %i.hc, ptr %i.hd, align 8, !noalias !22904
end_hunk_4
begin_hunk_5_@"_ZN73_$LT$indexmap..inner..Core$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$10clone_from17hb55a1842e83d4870E":bb.a
  %i.de = sub nsw i64 %i.cy, %i.dc
  tail call fastcc void @"_ZN8indexmap5inner17Core$LT$K$C$V$GT$15reserve_entries17hc8e6ac8e5eec5283E"(ptr noalias noundef align 8 dereferenceable(56) %0, i64 noundef %i.de)
  br label %bb.o

bb.o:                                             ; preds = %"_ZN76_$LT$hashbrown..raw..RawTable$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$10clone_from17h0b7dcfe2f6ff9636E.exit", %bb.n
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40522)
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dg = load ptr, ptr %i.df, align 8, !alias.scope !40522, !noalias !40525, !nonnull !8, !noundef !8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40527)
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.di = load i64, ptr %i.dh, align 8, !alias.scope !40527, !noalias !40530, !noundef !8 ; 4 uses
  %i.dj = icmp ugt i64 %i.cy, %i.di
  br i1 %i.dj, label %"._ZN4core3ptr103drop_in_place$LT$$u5b$indexmap..Bucket$LT$alloc..string..String$C$serde_json..value..Value$GT$$u5d$$GT$17hf6ec64d3db815351E.exit.i.thread_crit_edge", label %bb.p

"._ZN4core3ptr103drop_in_place$LT$$u5b$indexmap..Bucket$LT$alloc..string..String$C$serde_json..value..Value$GT$$u5d$$GT$17hf6ec64d3db815351E.exit.i.thread_crit_edge": ; preds = %bb.o
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre110 = load ptr, ptr %.phi.trans.insert, align 8, !alias.scope !40527, !noalias !40530
  br label %"_ZN4core3ptr103drop_in_place$LT$$u5b$indexmap..Bucket$LT$alloc..string..String$C$serde_json..value..Value$GT$$u5d$$GT$17hf6ec64d3db815351E.exit.i.thread"

bb.p:                                             ; preds = %bb.o
  %i.dk = sub nuw i64 %i.di, %i.cy                ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dm = load ptr, ptr %i.dl, align 8, !alias.scope !40527, !noalias !40530, !nonnull !8, !noundef !8 ; 3 uses
  %i.dn = getelementptr inbounds nuw [104 x i8], ptr %i.dm, i64 %i.cy ; 2 uses
  store i64 %i.cy, ptr %i.dh, align 8, !alias.scope !40527, !noalias !40530
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40532), !noalias !40522
  %i.do = icmp eq i64 %i.di, %i.cy
  br i1 %i.do, label %"_ZN4core3ptr103drop_in_place$LT$$u5b$indexmap..Bucket$LT$alloc..string..String$C$serde_json..value..Value$GT$$u5d$$GT$17hf6ec64d3db815351E.exit.i.thread", label %.lr.ph152

"_ZN4core3ptr93drop_in_place$LT$indexmap..Bucket$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17h131cfb572aa80c8cE.exit.i.i": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h43d28d9852fe4649E.exit.i.i"
  %i.dp = icmp eq i64 %i.dr, %i.dk
  br i1 %i.dp, label %"_ZN4core3ptr103drop_in_place$LT$$u5b$indexmap..Bucket$LT$alloc..string..String$C$serde_json..value..Value$GT$$u5d$$GT$17hf6ec64d3db815351E.exit.i.thread", label %.lr.ph152

.lr.ph152:                                        ; preds = %bb.p, %"_ZN4core3ptr93drop_in_place$LT$indexmap..Bucket$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17h131cfb572aa80c8cE.exit.i.i"
  %.sroa.0.0.i.i151 = phi i64 [ %i.dr, %"_ZN4core3ptr93drop_in_place$LT$indexmap..Bucket$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17h131cfb572aa80c8cE.exit.i.i" ], [ 0, %bb.p ] ; 2 uses
  %i.dq = getelementptr inbounds nuw [104 x i8], ptr %i.dn, i64 %.sroa.0.0.i.i151 ; 3 uses
  %i.dr = add i64 %.sroa.0.0.i.i151, 1            ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40535), !noalias !40522
  %.val.i.i.i = load i64, ptr %i.dq, align 8, !alias.scope !40538, !noalias !40539 ; 2 uses
  %i.ds = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.ds, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h43d28d9852fe4649E.exit.i.i", label %bb.q

bb.q:                                             ; preds = %.lr.ph152
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %.val1.i.i.i = load ptr, ptr %i.dt, align 8, !alias.scope !40538, !noalias !40539, !nonnull !8, !noundef !8
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #47, !noalias !40540, !inline_history !40541
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h43d28d9852fe4649E.exit.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h43d28d9852fe4649E.exit.i.i": ; preds = %bb.q, %.lr.ph152
  %i.du = getelementptr inbounds nuw i8, ptr %i.dq, i64 24
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h1c45b7324ac9ef4bE"(ptr noalias noundef readonly align 8 dereferenceable(72) %i.du)
          to label %"_ZN4core3ptr93drop_in_place$LT$indexmap..Bucket$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17h131cfb572aa80c8cE.exit.i.i" unwind label %.body.i.i, !noalias !40539, !inline_history !40542

bb.r:                                             ; preds = %.lr.ph154
  %i.dv = add i64 %.sroa.0.1.i.i153, 1            ; 2 uses
  %i.dw = icmp eq i64 %i.dv, %i.dk
  br i1 %i.dw, label %common.resume83, label %.lr.ph154

.body.i.i:                                        ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h43d28d9852fe4649E.exit.i.i"
  %i.dx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dy = icmp eq i64 %i.dr, %i.dk
  br i1 %i.dy, label %common.resume83, label %.lr.ph154

.lr.ph154:                                        ; preds = %.body.i.i, %bb.r
  %.sroa.0.1.i.i153 = phi i64 [ %i.dv, %bb.r ], [ %i.dr, %.body.i.i ] ; 2 uses
  %i.dz = getelementptr inbounds nuw [104 x i8], ptr %i.dn, i64 %.sroa.0.1.i.i153
  invoke fastcc void @"_ZN4core3ptr93drop_in_place$LT$indexmap..Bucket$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17h131cfb572aa80c8cE"(ptr noalias noundef readonly align 8 dereferenceable(104) %i.dz) #55
          to label %bb.r unwind label %bb.s, !noalias !40539, !inline_history !40541

bb.s:                                             ; preds = %.lr.ph154
  %i.ea = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !40543, !inline_history !40541
  unreachable

"_ZN4core3ptr103drop_in_place$LT$$u5b$indexmap..Bucket$LT$alloc..string..String$C$serde_json..value..Value$GT$$u5d$$GT$17hf6ec64d3db815351E.exit.i.thread": ; preds = %"_ZN4core3ptr93drop_in_place$LT$indexmap..Bucket$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17h131cfb572aa80c8cE.exit.i.i", %bb.p, %"._ZN4core3ptr103drop_in_place$LT$$u5b$indexmap..Bucket$LT$alloc..string..String$C$serde_json..value..Value$GT$$u5d$$GT$17hf6ec64d3db815351E.exit.i.thread_crit_edge"
  %i.eb = phi ptr [ %.pre110, %"._ZN4core3ptr103drop_in_place$LT$$u5b$indexmap..Bucket$LT$alloc..string..String$C$serde_json..value..Value$GT$$u5d$$GT$17hf6ec64d3db815351E.exit.i.thread_crit_edge" ], [ %i.dm, %bb.p ], [ %i.dm, %"_ZN4core3ptr93drop_in_place$LT$indexmap..Bucket$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17h131cfb572aa80c8cE.exit.i.i" ] ; 2 uses
  %i.ec = phi i64 [ %i.di, %"._ZN4core3ptr103drop_in_place$LT$$u5b$indexmap..Bucket$LT$alloc..string..String$C$serde_json..value..Value$GT$$u5d$$GT$17hf6ec64d3db815351E.exit.i.thread_crit_edge" ], [ %i.cy, %bb.p ], [ %i.cy, %"_ZN4core3ptr93drop_in_place$LT$indexmap..Bucket$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17h131cfb572aa80c8cE.exit.i.i" ] ; 7 uses
  %.idx30 = mul nuw nsw i64 %i.ec, 104
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dg, i64 %.idx30
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.not = icmp eq i64 %i.ec, 0
  br i1 %.not, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17h36e1a73b878d94e1E.exit.i", label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %"_ZN4core3ptr103drop_in_place$LT$$u5b$indexmap..Bucket$LT$alloc..string..String$C$serde_json..value..Value$GT$$u5d$$GT$17hf6ec64d3db815351E.exit.i.thread"
  %i.ef = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.eg = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %"_ZN68_$LT$indexmap..Bucket$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$10clone_from17hac5d5f8742d504a6E.exit"
  %.sroa.0.0.i3.i39 = phi i64 [ %i.fc, %"_ZN68_$LT$indexmap..Bucket$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$10clone_from17hac5d5f8742d504a6E.exit" ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.eh = getelementptr inbounds nuw [104 x i8], ptr %i.eb, i64 %.sroa.0.0.i3.i39 ; 3 uses
  %i.ei = getelementptr inbounds nuw [104 x i8], ptr %i.dg, i64 %.sroa.0.0.i3.i39 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40544)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40547)
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 96
  %i.ek = load i64, ptr %i.ej, align 8, !alias.scope !40547, !noalias !40549, !noundef !8
  %i.el = getelementptr inbounds nuw i8, ptr %i.eh, i64 96
  store i64 %i.ek, ptr %i.el, align 8, !alias.scope !40544, !noalias !40550
  tail call void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$10clone_from17h3b1113510cb58582E"(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.eh, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.ei, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1482), !noalias !40551, !inline_history !40552
  %i.em = getelementptr inbounds nuw i8, ptr %i.eh, i64 24 ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.ei, i64 24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !40553
  call void @llvm.experimental.noalias.scope.decl(metadata !40557)
  call void @llvm.experimental.noalias.scope.decl(metadata !40560)
  %i.eo = load i64, ptr %i.en, align 8, !range !6620, !alias.scope !40560, !noalias !40562, !noundef !8 ; 2 uses
  %i.ep = xor i64 %i.eo, -9223372036854775808
  %i.eq = icmp slt i64 %i.eo, 0
  %i.er = select i1 %i.eq, i64 %i.ep, i64 5
  switch i64 %i.er, label %bb.t [
    i64 0, label %bb.u
    i64 1, label %bb.v
    i64 2, label %bb.w
    i64 3, label %bb.x
    i64 4, label %bb.y
    i64 5, label %bb.z
  ]

bb.t:                                             ; preds = %.lr.ph
  unreachable

bb.u:                                             ; preds = %.lr.ph
  store i64 -9223372036854775808, ptr %i.e, align 8, !alias.scope !40557, !noalias !40563
  br label %"_ZN63_$LT$serde_json..value..Value$u20$as$u20$core..clone..Clone$GT$5clone17h065ff73d52a9cb78E.exit"

bb.v:                                             ; preds = %.lr.ph
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull readonly align 8 dereferenceable(72) %i.en, i64 72, i1 false), !alias.scope !40564, !noalias !40565
  br label %"_ZN63_$LT$serde_json..value..Value$u20$as$u20$core..clone..Clone$GT$5clone17h065ff73d52a9cb78E.exit"

bb.w:                                             ; preds = %.lr.ph
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull readonly align 8 dereferenceable(72) %i.en, i64 72, i1 false), !alias.scope !40564, !noalias !40565
  br label %"_ZN63_$LT$serde_json..value..Value$u20$as$u20$core..clone..Clone$GT$5clone17h065ff73d52a9cb78E.exit"

bb.x:                                             ; preds = %.lr.ph
  %i.es = getelementptr inbounds nuw i8, ptr %i.ei, i64 32
  call void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.eg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.es, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1422), !noalias !40565, !inline_history !40566
  store i64 -9223372036854775805, ptr %i.e, align 8, !alias.scope !40557, !noalias !40563
  br label %"_ZN63_$LT$serde_json..value..Value$u20$as$u20$core..clone..Clone$GT$5clone17h065ff73d52a9cb78E.exit"

bb.y:                                             ; preds = %.lr.ph
  %i.et = getelementptr inbounds nuw i8, ptr %i.ei, i64 48
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ei, i64 40
  %i.ev = load ptr, ptr %i.eu, align 8, !alias.scope !40567, !noalias !40570, !nonnull !8, !noundef !8
  %i.ew = load i64, ptr %i.et, align 8, !alias.scope !40567, !noalias !40570, !noundef !8
  call fastcc void @"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hf981a842b1245085E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.eg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.ev, i64 noundef %i.ew), !noalias !40563, !inline_history !40566
  store i64 -9223372036854775804, ptr %i.e, align 8, !alias.scope !40557, !noalias !40563
  br label %"_ZN63_$LT$serde_json..value..Value$u20$as$u20$core..clone..Clone$GT$5clone17h065ff73d52a9cb78E.exit"

bb.z:                                             ; preds = %.lr.ph
  call void @llvm.experimental.noalias.scope.decl(metadata !40572), !noalias !40565
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !40575
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ef, ptr noundef nonnull align 8 dereferenceable(32) @257, i64 32, i1 false), !noalias !40575
  store i64 0, ptr %i.b, align 8, !noalias !40575
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !40575
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !40575
  invoke fastcc void @"_ZN73_$LT$indexmap..inner..Core$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$10clone_from17hb55a1842e83d4870E"(ptr noalias noundef align 8 dereferenceable(56) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.en)
          to label %"_ZN79_$LT$indexmap..map..IndexMap$LT$K$C$V$C$S$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h13c25366bc088b2aE.exit.i" unwind label %bb.aa, !noalias !40582, !inline_history !40583

bb.aa:                                            ; preds = %bb.z
  %i.ex = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr98drop_in_place$LT$indexmap..inner..Core$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17h1669c1b72e97a552E"(ptr noalias noundef align 8 dereferenceable(56) %i.b) #55
          to label %common.resume83 unwind label %bb.ab, !noalias !40584, !inline_history !40583

bb.ab:                                            ; preds = %bb.aa
  %i.ey = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !40584, !inline_history !40583
  unreachable

"_ZN79_$LT$indexmap..map..IndexMap$LT$K$C$V$C$S$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h13c25366bc088b2aE.exit.i": ; preds = %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 56, i1 false), !noalias !40563
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !40575
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ei, i64 80
  %i.fa = load <2 x i64>, ptr %i.ez, align 8, !alias.scope !40585, !noalias !40586
  store <2 x i64> %i.fa, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !40557, !noalias !40563
  br label %"_ZN63_$LT$serde_json..value..Value$u20$as$u20$core..clone..Clone$GT$5clone17h065ff73d52a9cb78E.exit"

"_ZN63_$LT$serde_json..value..Value$u20$as$u20$core..clone..Clone$GT$5clone17h065ff73d52a9cb78E.exit": ; preds = %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %"_ZN79_$LT$indexmap..map..IndexMap$LT$K$C$V$C$S$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h13c25366bc088b2aE.exit.i"
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h1c45b7324ac9ef4bE"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.em)
          to label %"_ZN68_$LT$indexmap..Bucket$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$10clone_from17hac5d5f8742d504a6E.exit" unwind label %bb.ac, !noalias !40551, !inline_history !40587

bb.ac:                                            ; preds = %"_ZN63_$LT$serde_json..value..Value$u20$as$u20$core..clone..Clone$GT$5clone17h065ff73d52a9cb78E.exit"
  %i.fb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.em, ptr noundef nonnull align 8 dereferenceable(72) %i.e, i64 72, i1 false), !noalias !40588
  br label %common.resume83

"_ZN68_$LT$indexmap..Bucket$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$10clone_from17hac5d5f8742d504a6E.exit": ; preds = %"_ZN63_$LT$serde_json..value..Value$u20$as$u20$core..clone..Clone$GT$5clone17h065ff73d52a9cb78E.exit"
  %i.fc = add nuw nsw i64 %.sroa.0.0.i3.i39, 1    ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.em, ptr noundef nonnull align 8 dereferenceable(72) %i.e, i64 72, i1 false), !noalias !40588
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !40553
  %exitcond.not = icmp eq i64 %i.fc, %i.ec
  br i1 %exitcond.not, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17h36e1a73b878d94e1E.exit.i", label %.lr.ph

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17h36e1a73b878d94e1E.exit.i": ; preds = %"_ZN68_$LT$indexmap..Bucket$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$10clone_from17hac5d5f8742d504a6E.exit", %"_ZN4core3ptr103drop_in_place$LT$$u5b$indexmap..Bucket$LT$alloc..string..String$C$serde_json..value..Value$GT$$u5d$$GT$17hf6ec64d3db815351E.exit.i.thread"
  %.idx31 = sub nsw i64 %i.cy, %i.ec              ; 3 uses
  %i.fd = load i64, ptr %0, align 8, !range !33, !alias.scope !40589, !noalias !40522, !noundef !8
  %i.fe = sub nsw i64 %i.fd, %i.ec
  %i.ff = icmp ugt i64 %.idx31, %i.fe
  br i1 %i.ff, label %bb.ad, label %bb.ae, !prof !14

bb.ad:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17h36e1a73b878d94e1E.exit.i"
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h0917ae3167eaa516E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.ec, i64 noundef %.idx31, i64 noundef 8, i64 noundef 104), !noalias !40522, !inline_history !40594
  %.pre = load ptr, ptr %i.ee, align 8, !alias.scope !40595, !noalias !40522
  br label %bb.ae

.body:                                            ; preds = %.body81, %bb.ar, %bb.af
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.fl, %bb.af ], [ %eh.lpad-body, %bb.ar ], [ %eh.lpad-body, %.body81 ]
  store i64 %.sroa.618.0, ptr %i.dh, align 8, !noalias !40598
  br label %common.resume83

bb.ae:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17h36e1a73b878d94e1E.exit.i", %bb.ad
  %i.fg = phi ptr [ %i.eb, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17h36e1a73b878d94e1E.exit.i" ], [ %.pre, %bb.ad ]
  %i.fh = icmp eq i64 %i.ec, %i.cy
  br i1 %i.fh, label %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h9dd65e6a018b5454E.exit", label %.preheader

.preheader:                                       ; preds = %bb.ae
  %i.fi = load i64, ptr %i.dh, align 8, !alias.scope !40595, !noalias !40522, !noundef !8
  %.sroa.022.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.022, i64 24
  %i.fj = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.4.0..sroa_idx.i.i.i73 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.0..sroa_idx.i.i.i74 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.42.0..sroa_idx.i78 = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.fk = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  br label %bb.ag

bb.af:                                            ; preds = %bb.ag
  %i.fl = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ag:                                            ; preds = %.preheader, %_ZN4core3ops8function5FnMut8call_mut17h06c84340f20ad2faE.exit.i
  %.sroa.618.0 = phi i64 [ %i.gh, %_ZN4core3ops8function5FnMut8call_mut17h06c84340f20ad2faE.exit.i ], [ %i.fi, %.preheader ] ; 3 uses
  %.sroa.06.0.i = phi i64 [ %i.gi, %_ZN4core3ops8function5FnMut8call_mut17h06c84340f20ad2faE.exit.i ], [ 0, %.preheader ] ; 2 uses
  %i.fm = getelementptr inbounds nuw [104 x i8], ptr %i.ed, i64 %.sroa.06.0.i ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !40605), !noalias !40608
  call void @llvm.experimental.noalias.scope.decl(metadata !40609), !noalias !40608
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 96
  %i.fo = load i64, ptr %i.fn, align 8, !alias.scope !40612, !noalias !40613, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !40616
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.fm, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1483)
          to label %.noexc.i4 unwind label %bb.af, !noalias !40598, !inline_history !40617

.noexc.i4:                                        ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !40616
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fm, i64 24 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !40618)
  call void @llvm.experimental.noalias.scope.decl(metadata !40621)
  %i.fq = load i64, ptr %i.fp, align 8, !range !6620, !alias.scope !40621, !noalias !40623, !noundef !8 ; 2 uses
  %i.fr = xor i64 %i.fq, -9223372036854775808
  %i.fs = icmp slt i64 %i.fq, 0
  %i.ft = select i1 %i.fs, i64 %i.fr, i64 5
  switch i64 %i.ft, label %bb.ah [
    i64 0, label %bb.ai
    i64 1, label %bb.aj
    i64 2, label %bb.ak
    i64 3, label %bb.al
    i64 4, label %bb.am
    i64 5, label %bb.an
  ]

bb.ah:                                            ; preds = %.noexc.i4
  unreachable

bb.ai:                                            ; preds = %.noexc.i4
  store i64 -9223372036854775808, ptr %i.c, align 8, !alias.scope !40618, !noalias !40624
  br label %_ZN4core3ops8function5FnMut8call_mut17h06c84340f20ad2faE.exit.i

bb.aj:                                            ; preds = %.noexc.i4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(72) %i.fp, i64 72, i1 false), !alias.scope !40625, !noalias !40613
  br label %_ZN4core3ops8function5FnMut8call_mut17h06c84340f20ad2faE.exit.i

bb.ak:                                            ; preds = %.noexc.i4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(72) %i.fp, i64 72, i1 false), !alias.scope !40625, !noalias !40613
  br label %_ZN4core3ops8function5FnMut8call_mut17h06c84340f20ad2faE.exit.i

bb.al:                                            ; preds = %.noexc.i4
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fm, i64 32
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.fk, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fu, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1422)
          to label %.noexc unwind label %bb.aq, !inline_history !40626

.noexc:                                           ; preds = %bb.al
  store i64 -9223372036854775805, ptr %i.c, align 8, !alias.scope !40618, !noalias !40624
  br label %_ZN4core3ops8function5FnMut8call_mut17h06c84340f20ad2faE.exit.i

bb.am:                                            ; preds = %.noexc.i4
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fm, i64 48
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fm, i64 40
  %i.fx = load ptr, ptr %i.fw, align 8, !alias.scope !40627, !noalias !40630, !nonnull !8, !noundef !8
  %i.fy = load i64, ptr %i.fv, align 8, !alias.scope !40627, !noalias !40630, !noundef !8
  invoke fastcc void @"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hf981a842b1245085E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.fk, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.fx, i64 noundef %i.fy)
          to label %.noexc80 unwind label %bb.aq, !inline_history !40626

.noexc80:                                         ; preds = %bb.am
  store i64 -9223372036854775804, ptr %i.c, align 8, !alias.scope !40618, !noalias !40624
  br label %_ZN4core3ops8function5FnMut8call_mut17h06c84340f20ad2faE.exit.i

bb.an:                                            ; preds = %.noexc.i4
  call void @llvm.experimental.noalias.scope.decl(metadata !40632), !noalias !40613
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !40635
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.fj, ptr noundef nonnull align 8 dereferenceable(32) @257, i64 32, i1 false), !noalias !40635
  store i64 0, ptr %i.a, align 8, !noalias !40635
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i.i.i73, align 8, !noalias !40635
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i.i74, align 8, !noalias !40635
  invoke fastcc void @"_ZN73_$LT$indexmap..inner..Core$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$10clone_from17hb55a1842e83d4870E"(ptr noalias noundef align 8 dereferenceable(56) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.fp)
          to label %"_ZN79_$LT$indexmap..map..IndexMap$LT$K$C$V$C$S$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h13c25366bc088b2aE.exit.i75" unwind label %bb.ao, !noalias !40642, !inline_history !40643

bb.ao:                                            ; preds = %bb.an
  %i.fz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr98drop_in_place$LT$indexmap..inner..Core$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17h1669c1b72e97a552E"(ptr noalias noundef align 8 dereferenceable(56) %i.a) #55
          to label %.body81 unwind label %bb.ap, !noalias !40644, !inline_history !40643

bb.ap:                                            ; preds = %bb.ao
  %i.ga = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !40644, !inline_history !40643
  unreachable

"_ZN79_$LT$indexmap..map..IndexMap$LT$K$C$V$C$S$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h13c25366bc088b2aE.exit.i75": ; preds = %bb.an
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.c, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 56, i1 false), !noalias !40624
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !40635
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fm, i64 80
  %i.gc = load <2 x i64>, ptr %i.gb, align 8, !alias.scope !40645, !noalias !40646
  store <2 x i64> %i.gc, ptr %.sroa.42.0..sroa_idx.i78, align 8, !alias.scope !40618, !noalias !40624
  br label %_ZN4core3ops8function5FnMut8call_mut17h06c84340f20ad2faE.exit.i

bb.aq:                                            ; preds = %bb.am, %bb.al
  %i.gd = landingpad { ptr, i32 }
          cleanup
  br label %.body81

.body81:                                          ; preds = %bb.ao, %bb.aq
  %eh.lpad-body = phi { ptr, i32 } [ %i.gd, %bb.aq ], [ %i.fz, %bb.ao ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !40647), !noalias !40608
  %.val.i.i5 = load i64, ptr %i.d, align 8, !alias.scope !40647, !noalias !40613 ; 2 uses
  %i.ge = icmp eq i64 %.val.i.i5, 0
  br i1 %i.ge, label %.body, label %bb.ar

bb.ar:                                            ; preds = %.body81
  %i.gf = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val1.i.i = load ptr, ptr %i.gf, align 8, !alias.scope !40647, !noalias !40613, !nonnull !8, !noundef !8
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i5, i64 noundef range(i64 1, -9223372036854775807) 1) #47, !noalias !40650, !inline_history !40651
  br label %.body

_ZN4core3ops8function5FnMut8call_mut17h06c84340f20ad2faE.exit.i: ; preds = %"_ZN79_$LT$indexmap..map..IndexMap$LT$K$C$V$C$S$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h13c25366bc088b2aE.exit.i75", %.noexc80, %.noexc, %bb.ak, %bb.aj, %bb.ai
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.022, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.022.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %i.c, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !40616
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !40616
  %i.gg = getelementptr inbounds nuw [104 x i8], ptr %i.fg, i64 %.sroa.618.0 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.gg, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.022, i64 96, i1 false)
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gg, i64 96
  store i64 %i.fo, ptr %.sroa.425.0..sroa_idx, align 8, !noalias !40652
  %i.gh = add i64 %.sroa.618.0, 1                 ; 2 uses
  %i.gi = add nuw i64 %.sroa.06.0.i, 1            ; 2 uses
  %i.gj = icmp eq i64 %i.gi, %.idx31
  br i1 %i.gj, label %bb.as, label %bb.ag

bb.as:                                            ; preds = %_ZN4core3ops8function5FnMut8call_mut17h06c84340f20ad2faE.exit.i
  store i64 %i.gh, ptr %i.dh, align 8, !noalias !40598
  br label %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h9dd65e6a018b5454E.exit"

"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h9dd65e6a018b5454E.exit": ; preds = %bb.ae, %bb.as
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN74_$LT$xtask..common..instance..BinarySource$u20$as$u20$core..fmt..Debug$GT$3fmt17h3263123ccdf0c348E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load i8, ptr %i.d, align 8, !range !9012, !noundef !8 ; 3 uses
  %i.f = icmp ne i8 %i.e, 3
  tail call void @llvm.assume(i1 %i.f)
  %i.g = add nsw i8 %i.e, -2
  %i.h = icmp samesign ugt i8 %i.e, 1
  %narrow = select i1 %i.h, i8 %i.g, i8 1
  switch i8 %narrow, label %bb.b [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %0, ptr %i.c, align 8
  %i.i = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field1_finish17h8a12e96a3fe33b10E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1676, i64 noundef 5, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @403, i64 noundef 7, ptr noundef nonnull align 1 %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1675)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.f

end_hunk_5
begin_hunk_6_@"_ZN7reqwest10async_impl8response8Response5bytes28_$u7b$$u7b$closure$u7d$$u7d$17hba0b216e3d972376E":bb.a
          to label %.body14 unwind label %bb.t, !noalias !43053, !inline_history !15385

bb.t:                                             ; preds = %bb.s
  %i.ct = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !43053
  unreachable

.noexc.i:                                         ; preds = %bb.u, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !43020
  br label %"_ZN14http_body_util9collected18Collected$LT$B$GT$10push_frame17h551e31d0b864a74dE.exit.i"

bb.u:                                             ; preds = %._crit_edge.i.i.i.i, %bb.q
  %i.cu = phi i64 [ %.pre1.i.i.i.i, %._crit_edge.i.i.i.i ], [ %i.ci, %bb.q ] ; 2 uses
  %i.cv = phi i64 [ %.pre.i.i.i.i, %._crit_edge.i.i.i.i ], [ %i.ch, %bb.q ] ; 2 uses
  %i.cw = add i64 %i.cv, 1
  store i64 %i.cw, ptr %i.bw, align 8, !alias.scope !43041, !noalias !43042
  %i.cx = load i64, ptr %i.bx, align 8, !alias.scope !43041, !noalias !43042, !noundef !8
  %i.cy = add i64 %i.cx, %i.cv                    ; 2 uses
  %.not.i.i.i.i = icmp ult i64 %i.cy, %i.cu
  %i.cz = select i1 %.not.i.i.i.i, i64 0, i64 %i.cu
  %.sroa.0.0.i.i.i.i = sub nuw i64 %i.cy, %i.cz
  %i.da = load ptr, ptr %i.by, align 8, !alias.scope !43041, !noalias !43042, !nonnull !8, !noundef !8
  %i.db = getelementptr inbounds nuw [32 x i8], ptr %i.da, i64 %.sroa.0.0.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.db, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.416.0..sroa_idx.i, i64 32, i1 false), !noalias !43010
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !43034
  br label %.noexc.i

bb.v:                                             ; preds = %bb.ck, %bb.cj
  %i.dc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !43054
  unreachable

bb.w:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !43020
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5196.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.655.40..sroa_idx, i64 56, i1 false), !noalias !43011
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4195.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.416.0..sroa_idx.i, i64 32, i1 false), !noalias !43011
  store i64 %i.cb, ptr %i.aq, align 8, !noalias !43020
  store i64 0, ptr %i.q, align 8, !noalias !43020
  %.sroa.219.0.copyload.i.i = load i64, ptr %.sroa.219.0..sroa_idx.i.i, align 8, !noalias !43020 ; 2 uses
  %.sroa.322.0.copyload.i.i = load ptr, ptr %.sroa.322.0..sroa_idx.i.i, align 8, !noalias !43020 ; 10 uses
  %.sroa.425.0.copyload.i.i = load i64, ptr %.sroa.5196.0..sroa_idx.i.i, align 8, !noalias !43020 ; 6 uses
  %.sroa.6.0.copyload.i.i = load ptr, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !43020 ; 3 uses
  %.sroa.732.0.copyload.i.i = load i64, ptr %.sroa.732.0..sroa_idx.i.i, align 8, !noalias !43020 ; 3 uses
  %.not11.i.i = icmp eq i64 %i.cc, 3
  br i1 %.not11.i.i, label %.thread.i.i, label %bb.y

bb.x:                                             ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !43055
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !43020
  %.pre.i.i = load i64, ptr %i.q, align 8, !range !491, !noalias !43020
  %i.dd = trunc nuw i64 %.pre.i.i to i1
  br i1 %i.dd, label %bb.cl, label %"_ZN4core3ptr130drop_in_place$LT$core..result..Result$LT$http..header..map..HeaderMap$C$http_body..frame..Frame$LT$bytes..bytes..Bytes$GT$$GT$$GT$17h896843fcd7c7c0a1E.exit.i.i"

bb.y:                                             ; preds = %bb.w
  call void @llvm.experimental.noalias.scope.decl(metadata !43059)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !43020
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !43055
  call void @llvm.experimental.noalias.scope.decl(metadata !43060)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.322.0.copyload.i.i) ]
  %i.de = icmp ult i64 %.sroa.425.0.copyload.i.i, 88686269585142076
  call void @llvm.assume(i1 %i.de)
  %.idx.i.i.i = mul nuw nsw i64 %.sroa.425.0.copyload.i.i, 104
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.322.0.copyload.i.i, i64 %.idx.i.i.i ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.655.48..sroa_idx, i64 24, i1 false), !noalias !43011
  store i64 0, ptr %i.o, align 8, !alias.scope !43060, !noalias !43063
  store ptr %.sroa.322.0.copyload.i.i, ptr %i.as, align 8, !alias.scope !43060, !noalias !43063
  store ptr %.sroa.322.0.copyload.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !43060, !noalias !43063
  store i64 %.sroa.219.0.copyload.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !alias.scope !43060, !noalias !43063
  store ptr %i.df, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !alias.scope !43060, !noalias !43063
  %i.dg = icmp eq i64 %.sroa.732.0.copyload.i.i, 0
  br i1 %i.dg, label %"_ZN99_$LT$http..header..map..HeaderMap$LT$T$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h0268a0236837d17eE.exit.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i4.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i4.i.i.i.i": ; preds = %bb.y
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload.i.i) ]
  %i.dh = shl nuw nsw i64 %.sroa.732.0.copyload.i.i, 2
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0.copyload.i.i, i64 noundef %i.dh, i64 noundef 2) #47, !noalias !43065
  br label %"_ZN99_$LT$http..header..map..HeaderMap$LT$T$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h0268a0236837d17eE.exit.i.i.i"

"_ZN99_$LT$http..header..map..HeaderMap$LT$T$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h0268a0236837d17eE.exit.i.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i4.i.i.i.i", %bb.y
  %i.di = load i64, ptr %i.at, align 8, !alias.scope !43066, !noalias !43067, !noundef !8 ; 4 uses
  %i.dj = icmp ult i64 %i.di, 88686269585142076
  call void @llvm.assume(i1 %i.dj)
  %i.dk = icmp eq i64 %i.di, 0                    ; 2 uses
  %i.dl = add nuw nsw i64 %.sroa.425.0.copyload.i.i, 1
  %i.dm = lshr i64 %i.dl, 1
  %.sroa.0.0.i.i.i = select i1 %i.dk, i64 %.sroa.425.0.copyload.i.i, i64 %i.dm
  call void @llvm.experimental.noalias.scope.decl(metadata !43068)
  %i.dn = call i64 @llvm.usub.sat.i64(i64 24576, i64 %i.di)
  %.sroa.0.0.i.i15.i.i = call noundef i64 @llvm.umin.i64(i64 %i.dn, i64 %.sroa.0.0.i.i.i)
  %i.do = add nuw nsw i64 %.sroa.0.0.i.i15.i.i, %i.di ; 2 uses
  %i.dp = udiv i64 %i.do, 3
  %i.dq = add nuw nsw i64 %i.dp, %i.do            ; 3 uses
  %i.dr = load i64, ptr %i.aw, align 8, !alias.scope !43071, !noalias !43067, !noundef !8 ; 3 uses
  %i.ds = icmp ugt i64 %i.dq, %i.dr
  br i1 %i.ds, label %bb.z, label %"_ZN4http6header3map18HeaderMap$LT$T$GT$11try_reserve17hbd1b96306d7f198bE.exit.thread96.i.i.i"

.body.i.i.i:                                      ; preds = %.body32.thread.i.i.i, %bb.cf, %.body32.thread105.loopexit.split-lp.loopexit.split-lp.i.i.i, %.body32.thread105.loopexit.split-lp.loopexit.i.i.i, %.body32.thread105.loopexit.i.i.body.i, %.body.i.i.i.i, %.loopexit.split-lp.i, %.loopexit.i
  %.pn.i.i.i = phi { ptr, i32 } [ %i.lb, %bb.cf ], [ %eh.lpad-body33100.i.i.i, %.body32.thread.i.i.i ], [ %lpad.loopexit.split-lp151.i.i.i, %.body32.thread105.loopexit.split-lp.loopexit.split-lp.i.i.i ], [ %i.ey, %.body.i.i.i.i ], [ %eh.lpad-body51.i, %.body32.thread105.loopexit.i.i.body.i ], [ %lpad.loopexit150.i.i.i, %.body32.thread105.loopexit.split-lp.loopexit.i.i.i ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke fastcc void @"_ZN4core3ptr88drop_in_place$LT$http..header..map..IntoIter$LT$http..header..value..HeaderValue$GT$$GT$17hdc187f1d2a1ecae9E"(ptr noalias noundef align 8 dereferenceable(72) %i.o) #55
          to label %.body17.i.i unwind label %bb.ah, !noalias !43072

.loopexit.i:                                      ; preds = %bb.ab
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.loopexit.split-lp.i:                             ; preds = %"_ZN4http6header3map18HeaderMap$LT$T$GT$11try_reserve17hbd1b96306d7f198bE.exit.thread.i.i.i", %.invoke.i.i.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

bb.z:                                             ; preds = %"_ZN99_$LT$http..header..map..HeaderMap$LT$T$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h0268a0236837d17eE.exit.i.i.i"
  %i.dt = icmp samesign ult i64 %i.dq, 2          ; 2 uses
  %i.du = add nsw i64 %i.dq, -1
  %i.dv = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.du, i1 true)
  %i.dw = lshr i64 -1, %i.dv                      ; 4 uses
  %.sroa.022.0.i.i.i.i = select i1 %i.dt, i64 0, i64 %i.dw ; 2 uses
  %i.dx = add nuw nsw i64 %.sroa.022.0.i.i.i.i, 1 ; 6 uses
  %or.cond.i.i.i.i = icmp samesign ugt i64 %.sroa.022.0.i.i.i.i, 32767
  br i1 %or.cond.i.i.i.i, label %"_ZN4http6header3map18HeaderMap$LT$T$GT$11try_reserve17hbd1b96306d7f198bE.exit.thread.i.i.i", label %bb.aa, !prof !807

bb.aa:                                            ; preds = %bb.z
  br i1 %i.dk, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i", label %bb.ab

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i": ; preds = %bb.aa
  %i.dy = trunc nuw i64 %i.dx to i16
  %i.dz = add i16 %i.dy, -1
  store i16 %i.dz, ptr %i.ax, align 8, !alias.scope !43071, !noalias !43067
  %i.ea = shl nuw nsw i64 %i.dx, 2                ; 2 uses
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #47, !noalias !43073
  %i.eb = call noundef align 2 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.ea, i64 noundef range(i64 1, 9) 2) #47, !noalias !43073 ; 7 uses
  %i.ec = icmp eq ptr %i.eb, null
  br i1 %i.ec, label %.invoke.i.i.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha9a886d75417c9a7E.exit.i.i.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha9a886d75417c9a7E.exit.i.i.i.i.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i"
  br i1 %i.dt, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16into_boxed_slice17hacb7358607277acfE.exit.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha9a886d75417c9a7E.exit.i.i.i.i.i.i"
  %min.iters.check = icmp ult i64 %i.dw, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader755, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.dw, -8                      ; 3 uses
  %i.ed = shl i64 %n.vec, 2
  %i.ee = getelementptr i8, ptr %i.eb, i64 %i.ed
  %i.ef = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.eg = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.eb, i64 %i.eg
  %i.eh = getelementptr i8, ptr %i.eb, i64 %i.eg
  %next.gep751 = getelementptr i8, ptr %i.eh, i64 16
  store <8 x i16> <i16 -1, i16 0, i16 -1, i16 0, i16 -1, i16 0, i16 -1, i16 0>, ptr %next.gep, align 2, !noalias !43081
  store <8 x i16> <i16 -1, i16 0, i16 -1, i16 0, i16 -1, i16 0, i16 -1, i16 0>, ptr %next.gep751, align 2, !noalias !43081
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ei = icmp eq i64 %index.next, %n.vec
  br i1 %i.ei, label %.lr.ph.i.i.i.i.i.i.preheader755, label %vector.body, !llvm.loop !43084

.lr.ph.i.i.i.i.i.i.preheader755:                  ; preds = %vector.body, %.lr.ph.i.i.i.i.i.i.preheader
  %.sroa.0.09.i.i.i.i.i.i.ph = phi ptr [ %i.eb, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ee, %vector.body ]
  %.sroa.03.08.i.i.i.i.i.i.ph = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ef, %vector.body ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader755, %.lr.ph.i.i.i.i.i.i
  %.sroa.0.09.i.i.i.i.i.i = phi ptr [ %i.el, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.0.09.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader755 ] ; 3 uses
  %.sroa.03.08.i.i.i.i.i.i = phi i64 [ %i.ej, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.03.08.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader755 ] ; 2 uses
  %i.ej = add nuw nsw i64 %.sroa.03.08.i.i.i.i.i.i, 1
  store i16 -1, ptr %.sroa.0.09.i.i.i.i.i.i, align 2, !noalias !43081
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.0.09.i.i.i.i.i.i, i64 2
  store i16 0, ptr %i.ek, align 2, !noalias !43081
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.0.09.i.i.i.i.i.i, i64 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %.sroa.03.08.i.i.i.i.i.i, %i.dw
  br i1 %exitcond.not.i.i.i.i.i.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16into_boxed_slice17hacb7358607277acfE.exit.i.i.i.i", label %.lr.ph.i.i.i.i.i.i, !llvm.loop !43085

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16into_boxed_slice17hacb7358607277acfE.exit.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha9a886d75417c9a7E.exit.i.i.i.i.i.i"
  %.sroa.0.0.lcssa16.i.i.i.i.i.i = phi ptr [ %i.eb, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha9a886d75417c9a7E.exit.i.i.i.i.i.i" ], [ %i.el, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  store i16 -1, ptr %.sroa.0.0.lcssa16.i.i.i.i.i.i, align 2, !noalias !43081
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa16.i.i.i.i.i.i, i64 2
  store i16 0, ptr %i.em, align 2, !noalias !43081
  %i.en = icmp eq i64 %i.dr, 0
  br i1 %i.en, label %"_ZN4core3ptr78drop_in_place$LT$alloc..boxed..Box$LT$$u5b$http..header..map..Pos$u5d$$GT$$GT$17h7acf44491c982670E.exit.i.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16into_boxed_slice17hacb7358607277acfE.exit.i.i.i.i"
  %.val.i21.i.i.i = load ptr, ptr %i.av, align 8, !alias.scope !43071, !noalias !43067, !nonnull !8, !noundef !8
  %i.eo = shl nuw nsw i64 %i.dr, 2
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i21.i.i.i, i64 noundef %i.eo, i64 noundef 2) #47, !noalias !43086
  br label %"_ZN4core3ptr78drop_in_place$LT$alloc..boxed..Box$LT$$u5b$http..header..map..Pos$u5d$$GT$$GT$17h7acf44491c982670E.exit.i.i.i.i"

bb.ab:                                            ; preds = %bb.aa
  %i.ep = invoke fastcc noundef zeroext i1 @"_ZN4http6header3map18HeaderMap$LT$T$GT$8try_grow17haea69580bd90cf09E"(ptr noalias noundef nonnull align 8 dereferenceable(144) %i.aj, i64 noundef %i.dx)
          to label %"_ZN4http6header3map18HeaderMap$LT$T$GT$11try_reserve17hbd1b96306d7f198bE.exit.i.i.i" unwind label %.loopexit.i, !noalias !43072

"_ZN4core3ptr78drop_in_place$LT$alloc..boxed..Box$LT$$u5b$http..header..map..Pos$u5d$$GT$$GT$17h7acf44491c982670E.exit.i.i.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16into_boxed_slice17hacb7358607277acfE.exit.i.i.i.i"
  store ptr %i.eb, ptr %i.av, align 8, !alias.scope !43071, !noalias !43067
  store i64 %i.dx, ptr %i.aw, align 8, !alias.scope !43071, !noalias !43067
  %i.eq = lshr i64 %i.dx, 2
  %i.er = sub nsw i64 %i.dx, %i.eq                ; 3 uses
  %i.es = mul nsw i64 %i.er, 104                  ; 2 uses
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #47, !noalias !43087
  %i.et = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.es, i64 noundef range(i64 1, 9) 8) #47, !noalias !43087 ; 3 uses
  %i.eu = icmp eq ptr %i.et, null
  br i1 %i.eu, label %.invoke.i.i.i, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hdbad330c31c32612E.exit.i.i.i.i"

.invoke.i.i.i:                                    ; preds = %"_ZN4core3ptr78drop_in_place$LT$alloc..boxed..Box$LT$$u5b$http..header..map..Pos$u5d$$GT$$GT$17h7acf44491c982670E.exit.i.i.i.i", %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i"
  %i.ev = phi i64 [ 2, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i" ], [ 8, %"_ZN4core3ptr78drop_in_place$LT$alloc..boxed..Box$LT$$u5b$http..header..map..Pos$u5d$$GT$$GT$17h7acf44491c982670E.exit.i.i.i.i" ]
  %i.ew = phi i64 [ %i.ea, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i" ], [ %i.es, %"_ZN4core3ptr78drop_in_place$LT$alloc..boxed..Box$LT$$u5b$http..header..map..Pos$u5d$$GT$$GT$17h7acf44491c982670E.exit.i.i.i.i" ]
  %i.ex = phi ptr [ @568, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i" ], [ @569, %"_ZN4core3ptr78drop_in_place$LT$alloc..boxed..Box$LT$$u5b$http..header..map..Pos$u5d$$GT$$GT$17h7acf44491c982670E.exit.i.i.i.i" ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %i.ev, i64 %i.ew, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ex) #54
          to label %.cont.i.i.i unwind label %.loopexit.split-lp.i, !noalias !43072

.cont.i.i.i:                                      ; preds = %.invoke.i.i.i
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hdbad330c31c32612E.exit.i.i.i.i": ; preds = %"_ZN4core3ptr78drop_in_place$LT$alloc..boxed..Box$LT$$u5b$http..header..map..Pos$u5d$$GT$$GT$17h7acf44491c982670E.exit.i.i.i.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !43092)
  %.val.i.i.i.i.i = load ptr, ptr %i.ay, align 8, !alias.scope !43095, !noalias !43067, !nonnull !8, !noundef !8 ; 3 uses
  invoke fastcc void @"_ZN4core3ptr96drop_in_place$LT$$u5b$http..header..map..Bucket$LT$http..header..value..HeaderValue$GT$$u5d$$GT$17hf1eb4dfc17aacc06E"(ptr noalias noundef nonnull align 8 %.val.i.i.i.i.i, i64 noundef 0)
          to label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h62614eb66c936b58E.exit.i.i.i.i.i" unwind label %bb.ac, !noalias !43096

bb.ac:                                            ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hdbad330c31c32612E.exit.i.i.i.i"
  %i.ey = landingpad { ptr, i32 }
          cleanup
  %.val4.i.i.i.i.i = load i64, ptr %i.au, align 8, !range !33, !alias.scope !43095, !noalias !43067, !noundef !8 ; 2 uses
  %i.ez = icmp eq i64 %.val4.i.i.i.i.i, 0
  br i1 %i.ez, label %.body.i.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fa = mul nuw i64 %.val4.i.i.i.i.i, 104
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef %i.fa, i64 noundef range(i64 1, -9223372036854775807) 8) #47, !noalias !43096
  br label %.body.i.i.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h62614eb66c936b58E.exit.i.i.i.i.i": ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hdbad330c31c32612E.exit.i.i.i.i"
  %.val2.i.i.i.i.i = load i64, ptr %i.au, align 8, !range !33, !alias.scope !43095, !noalias !43067, !noundef !8 ; 2 uses
  %i.fb = icmp eq i64 %.val2.i.i.i.i.i, 0
  br i1 %i.fb, label %"_ZN4core3ptr109drop_in_place$LT$alloc..vec..Vec$LT$http..header..map..Bucket$LT$http..header..value..HeaderValue$GT$$GT$$GT$17hb65dc6e3ed25b711E.exit.i.i.i.i", label %bb.ae

bb.ae:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h62614eb66c936b58E.exit.i.i.i.i.i"
  %i.fc = mul nuw i64 %.val2.i.i.i.i.i, 104
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef %i.fc, i64 noundef range(i64 1, -9223372036854775807) 8) #47, !noalias !43096
  br label %"_ZN4core3ptr109drop_in_place$LT$alloc..vec..Vec$LT$http..header..map..Bucket$LT$http..header..value..HeaderValue$GT$$GT$$GT$17hb65dc6e3ed25b711E.exit.i.i.i.i"

.body.i.i.i.i:                                    ; preds = %bb.ad, %bb.ac
  store i64 %i.er, ptr %i.au, align 8, !alias.scope !43071, !noalias !43067
  store ptr %i.et, ptr %i.ay, align 8, !alias.scope !43071, !noalias !43067
  br label %.body.i.i.i

"_ZN4core3ptr109drop_in_place$LT$alloc..vec..Vec$LT$http..header..map..Bucket$LT$http..header..value..HeaderValue$GT$$GT$$GT$17hb65dc6e3ed25b711E.exit.i.i.i.i": ; preds = %bb.ae, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h62614eb66c936b58E.exit.i.i.i.i.i"
  store i64 %i.er, ptr %i.au, align 8, !alias.scope !43071, !noalias !43067
  store ptr %i.et, ptr %i.ay, align 8, !alias.scope !43071, !noalias !43067
  br label %"_ZN4http6header3map18HeaderMap$LT$T$GT$11try_reserve17hbd1b96306d7f198bE.exit.thread96.i.i.i"

"_ZN4http6header3map18HeaderMap$LT$T$GT$11try_reserve17hbd1b96306d7f198bE.exit.i.i.i": ; preds = %bb.ab
  br i1 %i.ep, label %"_ZN4http6header3map18HeaderMap$LT$T$GT$11try_reserve17hbd1b96306d7f198bE.exit.thread.i.i.i", label %"_ZN4http6header3map18HeaderMap$LT$T$GT$11try_reserve17hbd1b96306d7f198bE.exit.thread96.i.i.i", !prof !6634

"_ZN4http6header3map18HeaderMap$LT$T$GT$11try_reserve17hbd1b96306d7f198bE.exit.thread.i.i.i": ; preds = %"_ZN4http6header3map18HeaderMap$LT$T$GT$11try_reserve17hbd1b96306d7f198bE.exit.i.i.i", %bb.z
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @293, i64 noundef 23, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @554, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @295) #54
          to label %.noexc24.i.i.i unwind label %.loopexit.split-lp.i, !noalias !43072

.noexc24.i.i.i:                                   ; preds = %"_ZN4http6header3map18HeaderMap$LT$T$GT$11try_reserve17hbd1b96306d7f198bE.exit.thread.i.i.i"
  unreachable

"_ZN4http6header3map18HeaderMap$LT$T$GT$11try_reserve17hbd1b96306d7f198bE.exit.thread96.i.i.i": ; preds = %"_ZN4http6header3map18HeaderMap$LT$T$GT$11try_reserve17hbd1b96306d7f198bE.exit.i.i.i", %"_ZN4core3ptr109drop_in_place$LT$alloc..vec..Vec$LT$http..header..map..Bucket$LT$http..header..value..HeaderValue$GT$$GT$$GT$17hb65dc6e3ed25b711E.exit.i.i.i.i", %"_ZN99_$LT$http..header..map..HeaderMap$LT$T$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h0268a0236837d17eE.exit.i.i.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !43097)
  call void @llvm.experimental.noalias.scope.decl(metadata !43100)
  %i.fd = icmp eq i64 %.sroa.425.0.copyload.i.i, 0
  br i1 %i.fd, label %bb.af, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h63511c4f00868403E.exit.i.i.i.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h63511c4f00868403E.exit.i.i.i.i": ; preds = %"_ZN4http6header3map18HeaderMap$LT$T$GT$11try_reserve17hbd1b96306d7f198bE.exit.thread96.i.i.i"
  %i.fe = getelementptr inbounds nuw i8, ptr %.sroa.322.0.copyload.i.i, i64 104 ; 2 uses
  store ptr %i.fe, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !43103, !noalias !43104
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %.sroa.322.0.copyload.i.i, align 8, !noalias !43107 ; 3 uses
  %.not.i.i16.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i, 2
  br i1 %.not.i.i16.i.i, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.bp, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h63511c4f00868403E.exit.i.i.i.i", %"_ZN4http6header3map18HeaderMap$LT$T$GT$11try_reserve17hbd1b96306d7f198bE.exit.thread96.i.i.i"
  invoke fastcc void @"_ZN4core3ptr88drop_in_place$LT$http..header..map..IntoIter$LT$http..header..value..HeaderValue$GT$$GT$17hdc187f1d2a1ecae9E"(ptr noalias noundef align 8 dereferenceable(72) %i.o)
          to label %bb.x unwind label %bb.ch, !noalias !43054

bb.ag:                                            ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h63511c4f00868403E.exit.i.i.i.i"
  %.sroa.9.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.322.0.copyload.i.i, i64 64
  %.sroa.7.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.322.0.copyload.i.i, i64 8
  %.sroa.7.0.copyload.i.i.i.i = load i64, ptr %.sroa.7.0..sroa_idx.i.i.i.i, align 8, !noalias !43107
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9.0..sroa_idx.i.i.i.i, i64 32, i1 false), !noalias !43072
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.322.0.copyload.i.i, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !43055
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.m, ptr noundef nonnull align 8 dereferenceable(40) %i.ff, i64 40, i1 false), !noalias !43072
  %i.fg = trunc nuw i64 %.sroa.0.0.copyload.i.i.i.i to i1
  %.sroa.56.0.i.i.i.i = select i1 %i.fg, i64 %.sroa.7.0.copyload.i.i.i.i, i64 undef
  %i.fh = load i64, ptr %i.bg, align 8, !noalias !43055 ; 2 uses
  %i.fi = load ptr, ptr %i.bh, align 8, !noalias !43055, !nonnull !8
  br label %bb.ai

bb.ah:                                            ; preds = %.body32.thread.i.i.i, %.body.i.i.i
  %i.fj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !43072
  unreachable

bb.ai:                                            ; preds = %bb.bq, %bb.ag
  %i.fk = phi ptr [ %i.ix, %bb.bq ], [ %i.fe, %bb.ag ] ; 15 uses
  %.lcssa186201.i.i.i = phi i64 [ %.sroa.56.0.i47.i.i.i, %bb.bq ], [ %.sroa.56.0.i.i.i.i, %bb.ag ] ; 8 uses
  %.sroa.0.0.i50182.lcssa192.i.i.i = phi i64 [ %.sroa.0.0.copyload.i40.i.i.i, %bb.bq ], [ %.sroa.0.0.copyload.i.i.i.i, %bb.ag ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !43055
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 32, i1 false), !noalias !43055
  call void @llvm.experimental.noalias.scope.decl(metadata !43108)
  call void @llvm.experimental.noalias.scope.decl(metadata !43111)
  %i.fl = invoke fastcc noundef zeroext i1 @"_ZN4http6header3map18HeaderMap$LT$T$GT$15try_reserve_one17h8e510c9b8652aa7fE"(ptr noalias noundef nonnull align 8 dereferenceable(144) %i.aj)
          to label %bb.aj unwind label %.loopexit.i.i.i, !noalias !43113

bb.aj:                                            ; preds = %bb.ai
  br i1 %i.fl, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  store i64 %.sroa.0.0.i50182.lcssa192.i.i.i, ptr %i.o, align 8, !noalias !43055
  store i64 %.lcssa186201.i.i.i, ptr %i.az, align 8, !noalias !43055
  store ptr %i.fk, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !43055
  call void @llvm.experimental.noalias.scope.decl(metadata !43115)
  call void @llvm.experimental.noalias.scope.decl(metadata !43118)
  %i.fm = load ptr, ptr %i.l, align 8, !alias.scope !43121, !noalias !43122, !noundef !8 ; 2 uses
  %i.fn = icmp eq ptr %i.fm, null
  br i1 %i.fn, label %bb.bb, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @llvm.experimental.noalias.scope.decl(metadata !43123)
  call void @llvm.experimental.noalias.scope.decl(metadata !43126)
  call void @llvm.experimental.noalias.scope.decl(metadata !43129)
  call void @llvm.experimental.noalias.scope.decl(metadata !43132)
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fm, i64 32
  %i.fp = load ptr, ptr %i.fo, align 8, !noalias !43135, !nonnull !8, !noundef !8
  %i.fq = load ptr, ptr %i.ba, align 8, !alias.scope !43136, !noalias !43122, !noundef !8
  %i.fr = load i64, ptr %i.bb, align 8, !alias.scope !43136, !noalias !43122, !noundef !8
  invoke void %i.fp(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bc, ptr noundef %i.fq, i64 noundef %i.fr)
          to label %bb.bb unwind label %.body32.loopexit.split-lp.i.i.i, !noalias !43072, !inline_history !43137

bb.am:                                            ; preds = %bb.aj
  %i.fs = call fastcc noundef i16 @_ZN4http6header3map15hash_elem_using17hfa00c2547dd9d71bE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.aj, ptr noundef nonnull align 8 dereferenceable(32) %i.l), !noalias !43138 ; 4 uses
  %i.ft = load i16, ptr %i.ax, align 8, !alias.scope !43139, !noalias !43140, !noundef !8 ; 3 uses
  %i.fu = and i16 %i.ft, %i.fs
  %i.fv = zext nneg i16 %i.fu to i64
  %i.fw = load i64, ptr %i.aw, align 8, !alias.scope !43139, !noalias !43140, !noundef !8 ; 2 uses
  %i.fx = zext i16 %i.ft to i64
  %i.fy = load ptr, ptr %i.l, align 8, !noalias !43055 ; 4 uses
  %i.fz = icmp eq ptr %i.fy, null                 ; 3 uses
  %not..i.i.i.i.i.i = xor i1 %i.fz, true
  %i.ga = load i8, ptr %i.ba, align 8, !range !20686, !noalias !43055
  %i.gb = load i64, ptr %i.bb, align 8, !noalias !43055 ; 3 uses
  %i.gc = load ptr, ptr %i.ba, align 8, !noalias !43055 ; 3 uses
  %i.gd = ptrtoint ptr %i.fy to i64
  %i.ge = ptrtoint ptr %i.gc to i64
  %.not = icmp eq i64 %i.fw, 0
  %i.gf = load ptr, ptr %i.av, align 8, !alias.scope !43139, !noalias !43140, !nonnull !8, !align !20708, !noundef !8
  br label %.outer754

.outer754:                                        ; preds = %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd9fe00166c2a3e98E.exit.thread.i.i.i.i", %bb.am
  %.sroa.07.0.i.i.i.i.ph = phi i64 [ %i.gu, %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd9fe00166c2a3e98E.exit.thread.i.i.i.i" ], [ 0, %bb.am ] ; 4 uses
  %.sroa.0.0.i28.i.i.i.ph = phi i64 [ %i.gv, %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd9fe00166c2a3e98E.exit.thread.i.i.i.i" ], [ %i.fv, %bb.am ] ; 2 uses
  %i.gg = icmp ult i64 %.sroa.0.0.i28.i.i.i.ph, %i.fw ; 2 uses
  %.not.not = xor i1 %.not, true
  %brmerge = or i1 %i.gg, %.not.not
  %.sroa.0.0.i28.i.i.i.ph.mux = select i1 %i.gg, i64 %.sroa.0.0.i28.i.i.i.ph, i64 0 ; 4 uses
  br i1 %brmerge, label %.loopexit930, label %infloop

.loopexit930:                                     ; preds = %.outer754
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.gf, i64 %.sroa.0.0.i28.i.i.i.ph.mux ; 2 uses
  %i.gi = load i16, ptr %i.gh, align 2, !noalias !43113, !noundef !8 ; 2 uses
  %.not.i29.i.i.i = icmp eq i16 %i.gi, -1
  br i1 %.not.i29.i.i.i, label %bb.ao, label %bb.ap

bb.an:                                            ; preds = %bb.aw
  unreachable

bb.ao:                                            ; preds = %.loopexit930
  %i.gj = icmp samesign ugt i64 %.sroa.07.0.i.i.i.i.ph, 511
  br i1 %i.gj, label %.sink.split.i.i.i, label %bb.bc

bb.ap:                                            ; preds = %.loopexit930
  %i.gk = zext i16 %i.gi to i64                   ; 5 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gh, i64 2
  %i.gm = load i16, ptr %i.gl, align 2, !noalias !43113, !noundef !8 ; 2 uses
  %i.gn = and i16 %i.gm, %i.ft
  %i.go = zext i16 %i.gn to i64
  %i.gp = sub i64 %.sroa.0.0.i28.i.i.i.ph.mux, %i.go
  %i.gq = and i64 %i.gp, %i.fx
  %i.gr = icmp samesign ult i64 %i.gq, %.sroa.07.0.i.i.i.i.ph
  br i1 %i.gr, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.gs = icmp eq i16 %i.gm, %i.fs
  br i1 %i.gs, label %bb.as, label %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd9fe00166c2a3e98E.exit.thread.i.i.i.i"

bb.ar:                                            ; preds = %bb.ap
  %i.gt = icmp samesign ugt i64 %.sroa.07.0.i.i.i.i.ph, 511
  br i1 %i.gt, label %.sink.split.i.i.i, label %bb.bc

"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd9fe00166c2a3e98E.exit.thread.i.i.i.i": ; preds = %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd9fe00166c2a3e98E.exit.i.i.i.i", %.split.i.i.i.i, %bb.av, %bb.at, %bb.aq
  %i.gu = add nuw nsw i64 %.sroa.07.0.i.i.i.i.ph, 1
  %i.gv = add i64 %.sroa.0.0.i28.i.i.i.ph.mux, 1
end_hunk_6
begin_hunk_7_@"_ZN84_$LT$http_body_util..util..BufList$LT$T$GT$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$13copy_to_bytes17hd429571eac0711a7E":bb.a
  %i.ft = getelementptr i8, ptr %i.fs, i64 16
  %.val.i.i.i.i.i.i = load i64, ptr %i.ft, align 8, !noalias !44183, !noundef !8
  %i.fu = add i64 %.val.i.i.i.i.i.i, %.sroa.07.0.i.i.i.i.i.i
  %i.fv = getelementptr inbounds nuw [32 x i8], ptr %i.fo, i64 %.sroa.09.0.i.i.i.i.i.i
  %i.fw = getelementptr i8, ptr %i.fv, i64 48
  %.val.i.i.i.i.i.i.1 = load i64, ptr %i.fw, align 8, !noalias !44183, !noundef !8
  %i.fx = add i64 %.val.i.i.i.i.i.i.1, %i.fu
  %i.fy = getelementptr inbounds nuw [32 x i8], ptr %i.fo, i64 %.sroa.09.0.i.i.i.i.i.i
  %i.fz = getelementptr i8, ptr %i.fy, i64 80
  %.val.i.i.i.i.i.i.2 = load i64, ptr %i.fz, align 8, !noalias !44183, !noundef !8
  %i.ga = add i64 %.val.i.i.i.i.i.i.2, %i.fx
  %i.gb = getelementptr inbounds nuw [32 x i8], ptr %i.fo, i64 %.sroa.09.0.i.i.i.i.i.i
  %i.gc = getelementptr i8, ptr %i.gb, i64 112
  %.val.i.i.i.i.i.i.3 = load i64, ptr %i.gc, align 8, !noalias !44183, !noundef !8
  %i.gd = add i64 %.val.i.i.i.i.i.i.3, %i.ga      ; 3 uses
  %i.ge = add nuw i64 %.sroa.09.0.i.i.i.i.i.i, 4  ; 2 uses
  %niter653.next.3 = add i64 %niter653, 4         ; 2 uses
  %niter653.ncmp.3 = icmp eq i64 %niter653.next.3, %unroll_iter652
  br i1 %niter653.ncmp.3, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h7775de5670786362E.exit.i.i.i.i.i.loopexit.unr-lcssa", label %bb.z

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h7775de5670786362E.exit.i.i.i.i.i.loopexit.unr-lcssa": ; preds = %bb.z
  %lcmp.mod649.not = icmp eq i64 %xtraiter647, 0
  br i1 %lcmp.mod649.not, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h7775de5670786362E.exit.i.i.i.i.i", label %.epil.preheader646

.epil.preheader646:                               ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h7775de5670786362E.exit.i.i.i.i.i.loopexit.unr-lcssa", %bb.y
  %.sroa.07.0.i.i.i.i.i.i.epil.init = phi i64 [ 0, %bb.y ], [ %i.gd, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h7775de5670786362E.exit.i.i.i.i.i.loopexit.unr-lcssa" ]
  %.sroa.09.0.i.i.i.i.i.i.epil.init = phi i64 [ 0, %bb.y ], [ %i.ge, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h7775de5670786362E.exit.i.i.i.i.i.loopexit.unr-lcssa" ]
  %lcmp.mod651 = icmp ne i64 %xtraiter647, 0
  call void @llvm.assume(i1 %lcmp.mod651)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %.epil.preheader646
  %.sroa.07.0.i.i.i.i.i.i.epil = phi i64 [ %.sroa.07.0.i.i.i.i.i.i.epil.init, %.epil.preheader646 ], [ %i.gh, %bb.aa ]
  %.sroa.09.0.i.i.i.i.i.i.epil = phi i64 [ %.sroa.09.0.i.i.i.i.i.i.epil.init, %.epil.preheader646 ], [ %i.gi, %bb.aa ] ; 2 uses
  %epil.iter648 = phi i64 [ 0, %.epil.preheader646 ], [ %epil.iter648.next, %bb.aa ]
  %i.gf = getelementptr inbounds nuw [32 x i8], ptr %i.fo, i64 %.sroa.09.0.i.i.i.i.i.i.epil
  %i.gg = getelementptr i8, ptr %i.gf, i64 16
  %.val.i.i.i.i.i.i.epil = load i64, ptr %i.gg, align 8, !noalias !44183, !noundef !8
  %i.gh = add i64 %.val.i.i.i.i.i.i.epil, %.sroa.07.0.i.i.i.i.i.i.epil ; 2 uses
  %i.gi = add nuw i64 %.sroa.09.0.i.i.i.i.i.i.epil, 1
  %epil.iter648.next = add i64 %epil.iter648, 1   ; 2 uses
  %epil.iter648.cmp.not = icmp eq i64 %epil.iter648.next, %xtraiter647
  br i1 %epil.iter648.cmp.not, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h7775de5670786362E.exit.i.i.i.i.i", label %bb.aa, !llvm.loop !44186

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h7775de5670786362E.exit.i.i.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h7775de5670786362E.exit.i.i.i.i.i.loopexit.unr-lcssa", %bb.aa, %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$4iter17hd8f7ad9e87d00174E.exit.i.i.i.i"
  %.sroa.04.0.i.i.i.i.i.i = phi i64 [ 0, %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$4iter17hd8f7ad9e87d00174E.exit.i.i.i.i" ], [ %i.gd, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h7775de5670786362E.exit.i.i.i.i.i.loopexit.unr-lcssa" ], [ %i.gh, %bb.aa ] ; 3 uses
  %i.gj = icmp samesign eq i64 %.sroa.11.0.i.i.i.i.i, 0
  br i1 %i.gj, label %_ZN5bytes3buf8buf_impl3Buf13has_remaining17h89bb2548e3e710ddE.exit, label %bb.ab

bb.ab:                                            ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h7775de5670786362E.exit.i.i.i.i.i"
  %i.gk = lshr exact i64 %.sroa.11.0.i.i.i.i.i, 5 ; 2 uses
  %xtraiter656 = and i64 %i.gk, 3                 ; 3 uses
  %i.gl = icmp samesign ult i64 %.sroa.11.0.i.i.i.i.i, 128
  br i1 %i.gl, label %.epil.preheader655, label %.new654

.new654:                                          ; preds = %bb.ab
  %unroll_iter661 = and i64 %i.gk, 288230376151711740
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ac, %.new654
  %.sroa.07.0.i1.i.i.i.i.i = phi i64 [ %.sroa.04.0.i.i.i.i.i.i, %.new654 ], [ %i.gx, %bb.ac ]
  %.sroa.09.0.i2.i.i.i.i.i = phi i64 [ 0, %.new654 ], [ %i.gy, %bb.ac ] ; 5 uses
  %niter662 = phi i64 [ 0, %.new654 ], [ %niter662.next.3, %bb.ac ]
  %i.gm = getelementptr inbounds nuw [32 x i8], ptr %i.bv, i64 %.sroa.09.0.i2.i.i.i.i.i
  %i.gn = getelementptr i8, ptr %i.gm, i64 16
  %.val.i3.i.i.i.i.i = load i64, ptr %i.gn, align 8, !noalias !44183, !noundef !8
  %i.go = add i64 %.val.i3.i.i.i.i.i, %.sroa.07.0.i1.i.i.i.i.i
  %i.gp = getelementptr inbounds nuw [32 x i8], ptr %i.bv, i64 %.sroa.09.0.i2.i.i.i.i.i
  %i.gq = getelementptr i8, ptr %i.gp, i64 48
  %.val.i3.i.i.i.i.i.1 = load i64, ptr %i.gq, align 8, !noalias !44183, !noundef !8
  %i.gr = add i64 %.val.i3.i.i.i.i.i.1, %i.go
  %i.gs = getelementptr inbounds nuw [32 x i8], ptr %i.bv, i64 %.sroa.09.0.i2.i.i.i.i.i
  %i.gt = getelementptr i8, ptr %i.gs, i64 80
  %.val.i3.i.i.i.i.i.2 = load i64, ptr %i.gt, align 8, !noalias !44183, !noundef !8
  %i.gu = add i64 %.val.i3.i.i.i.i.i.2, %i.gr
  %i.gv = getelementptr inbounds nuw [32 x i8], ptr %i.bv, i64 %.sroa.09.0.i2.i.i.i.i.i
  %i.gw = getelementptr i8, ptr %i.gv, i64 112
  %.val.i3.i.i.i.i.i.3 = load i64, ptr %i.gw, align 8, !noalias !44183, !noundef !8
  %i.gx = add i64 %.val.i3.i.i.i.i.i.3, %i.gu     ; 3 uses
  %i.gy = add nuw nsw i64 %.sroa.09.0.i2.i.i.i.i.i, 4 ; 2 uses
  %niter662.next.3 = add i64 %niter662, 4         ; 2 uses
  %niter662.ncmp.3 = icmp eq i64 %niter662.next.3, %unroll_iter661
  br i1 %niter662.ncmp.3, label %_ZN5bytes3buf8buf_impl3Buf13has_remaining17h89bb2548e3e710ddE.exit.loopexit.unr-lcssa, label %bb.ac

_ZN5bytes3buf8buf_impl3Buf13has_remaining17h89bb2548e3e710ddE.exit.loopexit.unr-lcssa: ; preds = %bb.ac
  %lcmp.mod658.not = icmp eq i64 %xtraiter656, 0
  br i1 %lcmp.mod658.not, label %_ZN5bytes3buf8buf_impl3Buf13has_remaining17h89bb2548e3e710ddE.exit, label %.epil.preheader655

.epil.preheader655:                               ; preds = %_ZN5bytes3buf8buf_impl3Buf13has_remaining17h89bb2548e3e710ddE.exit.loopexit.unr-lcssa, %bb.ab
  %.sroa.07.0.i1.i.i.i.i.i.epil.init = phi i64 [ %.sroa.04.0.i.i.i.i.i.i, %bb.ab ], [ %i.gx, %_ZN5bytes3buf8buf_impl3Buf13has_remaining17h89bb2548e3e710ddE.exit.loopexit.unr-lcssa ]
  %.sroa.09.0.i2.i.i.i.i.i.epil.init = phi i64 [ 0, %bb.ab ], [ %i.gy, %_ZN5bytes3buf8buf_impl3Buf13has_remaining17h89bb2548e3e710ddE.exit.loopexit.unr-lcssa ]
  %lcmp.mod660 = icmp ne i64 %xtraiter656, 0
  call void @llvm.assume(i1 %lcmp.mod660)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ad, %.epil.preheader655
  %.sroa.07.0.i1.i.i.i.i.i.epil = phi i64 [ %.sroa.07.0.i1.i.i.i.i.i.epil.init, %.epil.preheader655 ], [ %i.hb, %bb.ad ]
  %.sroa.09.0.i2.i.i.i.i.i.epil = phi i64 [ %.sroa.09.0.i2.i.i.i.i.i.epil.init, %.epil.preheader655 ], [ %i.hc, %bb.ad ] ; 2 uses
  %epil.iter657 = phi i64 [ 0, %.epil.preheader655 ], [ %epil.iter657.next, %bb.ad ]
  %i.gz = getelementptr inbounds nuw [32 x i8], ptr %i.bv, i64 %.sroa.09.0.i2.i.i.i.i.i.epil
  %i.ha = getelementptr i8, ptr %i.gz, i64 16
  %.val.i3.i.i.i.i.i.epil = load i64, ptr %i.ha, align 8, !noalias !44183, !noundef !8
  %i.hb = add i64 %.val.i3.i.i.i.i.i.epil, %.sroa.07.0.i1.i.i.i.i.i.epil ; 2 uses
  %i.hc = add nuw nsw i64 %.sroa.09.0.i2.i.i.i.i.i.epil, 1
  %epil.iter657.next = add i64 %epil.iter657, 1   ; 2 uses
  %epil.iter657.cmp.not = icmp eq i64 %epil.iter657.next, %xtraiter656
  br i1 %epil.iter657.cmp.not, label %_ZN5bytes3buf8buf_impl3Buf13has_remaining17h89bb2548e3e710ddE.exit, label %bb.ad, !llvm.loop !44187

_ZN5bytes3buf8buf_impl3Buf13has_remaining17h89bb2548e3e710ddE.exit: ; preds = %_ZN5bytes3buf8buf_impl3Buf13has_remaining17h89bb2548e3e710ddE.exit.loopexit.unr-lcssa, %bb.ad, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h7775de5670786362E.exit.i.i.i.i.i"
  %.sroa.04.0.i4.i.i.i.i.i = phi i64 [ %.sroa.04.0.i.i.i.i.i.i, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h7775de5670786362E.exit.i.i.i.i.i" ], [ %i.gx, %_ZN5bytes3buf8buf_impl3Buf13has_remaining17h89bb2548e3e710ddE.exit.loopexit.unr-lcssa ], [ %i.hb, %bb.ad ]
  %.sroa.0.0.i.i.i57 = call noundef i64 @llvm.umin.i64(i64 %.sroa.11.0309, i64 %.sroa.04.0.i4.i.i.i.i.i)
  %.not253 = icmp eq i64 %.sroa.0.0.i.i.i57, 0
  br i1 %.not253, label %"_ZN74_$LT$bytes..bytes_mut..BytesMut$u20$as$u20$bytes..buf..buf_mut..BufMut$GT$3put17h17e5724ccca53ed1E.exit", label %"_ZN77_$LT$bytes..buf..take..Take$LT$T$GT$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$5chunk17hf18c17ee3e972a11E.exit"

"_ZN77_$LT$bytes..buf..take..Take$LT$T$GT$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$5chunk17hf18c17ee3e972a11E.exit": ; preds = %_ZN5bytes3buf8buf_impl3Buf13has_remaining17h89bb2548e3e710ddE.exit
  %i.hd = getelementptr inbounds nuw [32 x i8], ptr %i.bv, i64 %.sroa.0.0.i.i.i.i.i.i ; 2 uses
  %i.he = getelementptr i8, ptr %i.hd, i64 8
  %.val.i.i.i56 = load ptr, ptr %i.he, align 8, !noalias !44188, !nonnull !8, !noundef !8
  %i.hf = getelementptr i8, ptr %i.hd, i64 16
  %.val4.i.i.i = load i64, ptr %i.hf, align 8, !noalias !44188, !noundef !8
  %i.hg = call i64 @llvm.umin.i64(i64 %.sroa.11.0309, i64 %.val4.i.i.i) ; 9 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !44191)
  %i.hh = load i64, ptr %i.de, align 8, !alias.scope !44191, !noalias !44194, !noundef !8 ; 2 uses
  %i.hi = load i64, ptr %i.df, align 8, !alias.scope !44191, !noalias !44194, !noundef !8
  %i.hj = sub i64 %i.hi, %i.hh
  %.not.i50 = icmp ugt i64 %i.hg, %i.hj
  br i1 %.not.i50, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %"_ZN77_$LT$bytes..buf..take..Take$LT$T$GT$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$5chunk17hf18c17ee3e972a11E.exit"
  %i.hk = invoke noundef zeroext i1 @_ZN5bytes9bytes_mut8BytesMut13reserve_inner17h73e0ed6d42572173E(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.o, i64 noundef %i.hg, i1 noundef zeroext true)
          to label %.noexc51 unwind label %.body.thread249.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 0 uses

.noexc51:                                         ; preds = %bb.ae
  %.pre.i = load i64, ptr %i.de, align 8, !alias.scope !44191, !noalias !44194
  br label %bb.af

bb.af:                                            ; preds = %.noexc51, %"_ZN77_$LT$bytes..buf..take..Take$LT$T$GT$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$5chunk17hf18c17ee3e972a11E.exit"
  %i.hl = phi i64 [ %i.hh, %"_ZN77_$LT$bytes..buf..take..Take$LT$T$GT$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$5chunk17hf18c17ee3e972a11E.exit" ], [ %.pre.i, %.noexc51 ]
  %i.hm = load ptr, ptr %i.o, align 8, !alias.scope !44191, !noalias !44194, !nonnull !8, !noundef !8
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 %i.hl
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.hn, ptr nonnull readonly align 1 %.val.i.i.i56, i64 %i.hg, i1 false)
  %i.ho = load i64, ptr %i.df, align 8, !alias.scope !44191, !noalias !44194, !noundef !8
  %i.hp = load i64, ptr %i.de, align 8, !alias.scope !44191, !noalias !44194, !noundef !8 ; 2 uses
  %i.hq = sub i64 %i.ho, %i.hp                    ; 2 uses
  %i.hr = icmp ugt i64 %i.hg, %i.hq
  br i1 %i.hr, label %bb.ag, label %bb.ah, !prof !14

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !44196
  store i64 %i.hg, ptr %i.c, align 8, !noalias !44196
  br label %.invoke

.invoke:                                          ; preds = %bb.bp, %bb.ag
  %.sink467.sroa.phi = phi ptr [ %.sink467.sroa.gep, %bb.bp ], [ %.sink467.sroa.gep699, %bb.ag ]
  %.sink467 = phi ptr [ %i.a, %bb.bp ], [ %i.c, %bb.ag ]
  %.lcssa424.sink = phi i64 [ %i.pb, %bb.bp ], [ %i.hq, %bb.ag ]
  store i64 %.lcssa424.sink, ptr %.sink467.sroa.phi, align 8, !noalias !8
  invoke void @_ZN5bytes13panic_advance17hadc1578990b3691cE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sink467) #54
          to label %.cont unwind label %.body.thread249.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.ah:                                            ; preds = %bb.af
  %i.hs = add i64 %i.hp, %i.hg
  store i64 %i.hs, ptr %i.de, align 8, !alias.scope !44191, !noalias !44194
  call void @llvm.experimental.noalias.scope.decl(metadata !44197)
  %.not23.i.i.i = icmp eq i64 %i.hg, 0
  br i1 %.not23.i.i.i, label %.noexc19, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i:                                     ; preds = %"_ZN4core3ptr68drop_in_place$LT$core..option..Option$LT$bytes..bytes..Bytes$GT$$GT$17h2be1249244e93fd3E.exit.i.i.i"
  %.not.i.i.i.i = icmp eq i64 %i.ie, 0
  br i1 %.not.i.i.i.i, label %.invoke465, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.ah, %.lr.ph.i.i.i
  %.sroa.0.024.i.i.i532 = phi i64 [ %i.ib, %.lr.ph.i.i.i ], [ %i.hg, %bb.ah ] ; 4 uses
  %.promoted25.i.i.i360531 = phi i64 [ %.sroa.0.0.i9.i.i.i, %.lr.ph.i.i.i ], [ %.promoted25.i.i.i, %bb.ah ] ; 6 uses
  %i.ht = phi i64 [ %i.ie, %.lr.ph.i.i.i ], [ %i.fh, %bb.ah ] ; 2 uses
  %.not6.i.i.i.i = icmp ult i64 %.promoted25.i.i.i360531, %.val.i.i.i.i.i.pre
  %i.hu = select i1 %.not6.i.i.i.i, i64 0, i64 %.val.i.i.i.i.i.pre
  %.sroa.01.0.i.i.i.i = sub nuw i64 %.promoted25.i.i.i360531, %i.hu
  %i.hv = getelementptr inbounds nuw [32 x i8], ptr %i.bv, i64 %.sroa.01.0.i.i.i.i ; 3 uses
  %i.hw = getelementptr i8, ptr %i.hv, i64 16     ; 3 uses
  %.val.i.i.i = load i64, ptr %i.hw, align 8, !noalias !44200, !noundef !8 ; 4 uses
  %i.hx = icmp ugt i64 %.val.i.i.i, %.sroa.0.024.i.i.i532
  br i1 %i.hx, label %"_ZN65_$LT$bytes..bytes..Bytes$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17h02b5157422a5f004E.exit13.i.i.i", label %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$9pop_front17h339073fa9933581eE.exit.i.i.i"

.invoke465:                                       ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i, %bb.bq
  invoke void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1749, i64 noundef 20, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1750) #54
          to label %.cont466 unwind label %.body.thread249.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont466:                                         ; preds = %.invoke465
  unreachable

"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$9pop_front17h339073fa9933581eE.exit.i.i.i": ; preds = %.lr.ph.i.i.i.preheader
  store i64 0, ptr %i.hw, align 8, !alias.scope !44203, !noalias !44200
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hv, i64 8 ; 2 uses
  %i.hz = load ptr, ptr %i.hy, align 8, !alias.scope !44203, !noalias !44200, !noundef !8
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 %.val.i.i.i
  store ptr %i.ia, ptr %i.hy, align 8, !alias.scope !44203, !noalias !44200
  %i.ib = sub nuw i64 %.sroa.0.024.i.i.i532, %.val.i.i.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !44200
  call void @llvm.experimental.noalias.scope.decl(metadata !44206)
  %i.ic = add i64 %.promoted25.i.i.i360531, 1     ; 2 uses
  %.not.i8.i.i.i = icmp ult i64 %i.ic, %.val.i.i.i.i.i.pre
  %i.id = select i1 %.not.i8.i.i.i, i64 0, i64 %.val.i.i.i.i.i.pre
  %.sroa.0.0.i9.i.i.i = sub nuw i64 %i.ic, %i.id  ; 4 uses
  store i64 %.sroa.0.0.i9.i.i.i, ptr %i.fd, align 8, !alias.scope !44209, !noalias !44210
  %i.ie = add i64 %i.ht, -1                       ; 5 uses
  store i64 %i.ie, ptr %i.r, align 8, !alias.scope !44209, !noalias !44210
  %i.if = icmp ult i64 %i.ie, %.val.i.i.i.i.i.pre
  call void @llvm.assume(i1 %i.if)
  %i.ig = getelementptr inbounds nuw [32 x i8], ptr %i.bv, i64 %.promoted25.i.i.i360531
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.ig, i64 32, i1 false), !noalias !44212
  call void @llvm.experimental.noalias.scope.decl(metadata !44213)
  %i.ih = load ptr, ptr %i.d, align 8, !alias.scope !44213, !noalias !44200, !noundef !8 ; 2 uses
  %i.ii = icmp eq ptr %i.ih, null
  br i1 %i.ii, label %"_ZN4core3ptr68drop_in_place$LT$core..option..Option$LT$bytes..bytes..Bytes$GT$$GT$17h2be1249244e93fd3E.exit.i.i.i", label %bb.ai

bb.ai:                                            ; preds = %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$9pop_front17h339073fa9933581eE.exit.i.i.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !44216)
  call void @llvm.experimental.noalias.scope.decl(metadata !44219)
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ih, i64 32
  %i.ik = load ptr, ptr %i.ij, align 8, !noalias !44222, !nonnull !8, !noundef !8
  %i.il = load ptr, ptr %i.ff, align 8, !alias.scope !44223, !noalias !44200, !noundef !8
  %i.im = load i64, ptr %i.fg, align 8, !alias.scope !44223, !noalias !44200, !noundef !8
  invoke void %i.ik(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.fe, ptr noundef %i.il, i64 noundef %i.im)
          to label %"_ZN4core3ptr68drop_in_place$LT$core..option..Option$LT$bytes..bytes..Bytes$GT$$GT$17h2be1249244e93fd3E.exit.i.i.i" unwind label %.body.thread249.loopexit.split-lp.loopexit.split-lp.loopexit, !inline_history !44224

"_ZN4core3ptr68drop_in_place$LT$core..option..Option$LT$bytes..bytes..Bytes$GT$$GT$17h2be1249244e93fd3E.exit.i.i.i": ; preds = %bb.ai, %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$9pop_front17h339073fa9933581eE.exit.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !44200
  %.not.i.i.i = icmp eq i64 %i.ib, 0
  br i1 %.not.i.i.i, label %.noexc19, label %.lr.ph.i.i.i

"_ZN65_$LT$bytes..bytes..Bytes$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17h02b5157422a5f004E.exit13.i.i.i": ; preds = %.lr.ph.i.i.i.preheader
  %i.in = sub nuw i64 %.val.i.i.i, %.sroa.0.024.i.i.i532
  store i64 %i.in, ptr %i.hw, align 8, !alias.scope !44225, !noalias !44200
  %i.io = getelementptr inbounds nuw i8, ptr %i.hv, i64 8 ; 2 uses
  %i.ip = load ptr, ptr %i.io, align 8, !alias.scope !44225, !noalias !44200, !noundef !8
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 %.sroa.0.024.i.i.i532
  store ptr %i.iq, ptr %i.io, align 8, !alias.scope !44225, !noalias !44200
  br label %.noexc19

.noexc19:                                         ; preds = %"_ZN4core3ptr68drop_in_place$LT$core..option..Option$LT$bytes..bytes..Bytes$GT$$GT$17h2be1249244e93fd3E.exit.i.i.i", %"_ZN65_$LT$bytes..bytes..Bytes$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17h02b5157422a5f004E.exit13.i.i.i", %bb.ah
  %i.ir = phi i64 [ %i.fh, %bb.ah ], [ %i.ht, %"_ZN65_$LT$bytes..bytes..Bytes$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17h02b5157422a5f004E.exit13.i.i.i" ], [ %i.ie, %"_ZN4core3ptr68drop_in_place$LT$core..option..Option$LT$bytes..bytes..Bytes$GT$$GT$17h2be1249244e93fd3E.exit.i.i.i" ] ; 2 uses
  %.promoted25.i.i.i361 = phi i64 [ %.promoted25.i.i.i, %bb.ah ], [ %.promoted25.i.i.i360531, %"_ZN65_$LT$bytes..bytes..Bytes$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17h02b5157422a5f004E.exit13.i.i.i" ], [ %.sroa.0.0.i9.i.i.i, %"_ZN4core3ptr68drop_in_place$LT$core..option..Option$LT$bytes..bytes..Bytes$GT$$GT$17h2be1249244e93fd3E.exit.i.i.i" ]
  %i.is = phi i64 [ %i.fi, %bb.ah ], [ %.promoted25.i.i.i360531, %"_ZN65_$LT$bytes..bytes..Bytes$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17h02b5157422a5f004E.exit13.i.i.i" ], [ %.sroa.0.0.i9.i.i.i, %"_ZN4core3ptr68drop_in_place$LT$core..option..Option$LT$bytes..bytes..Bytes$GT$$GT$17h2be1249244e93fd3E.exit.i.i.i" ]
  %i.it = sub i64 %.sroa.11.0309, %i.hg
  %i.iu = icmp eq i64 %i.ir, 0
  br i1 %i.iu, label %"_ZN74_$LT$bytes..bytes_mut..BytesMut$u20$as$u20$bytes..buf..buf_mut..BufMut$GT$3put17h17e5724ccca53ed1E.exit", label %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$4iter17hd8f7ad9e87d00174E.exit.i.i.i.i"

bb.aj:                                            ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hdbad330c31c32612E.exit"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44228), !noalias !44231
  %.val.i.i.i185 = load i64, ptr %1, align 8, !alias.scope !44234, !noalias !44237 ; 23 uses
  br i1 %.not.i, label %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$4iter17hd8f7ad9e87d00174E.exit.i.i190", label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.iv = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val2.i.i.i186 = load i64, ptr %i.iv, align 8, !alias.scope !44234, !noalias !44237 ; 2 uses
  %.not.i.i.i.i187 = icmp ult i64 %.val2.i.i.i186, %.val.i.i.i185
  %i.iw = select i1 %.not.i.i.i.i187, i64 0, i64 %.val.i.i.i185
  %.sroa.0.0.i.i.i.i188 = sub nuw i64 %.val2.i.i.i186, %i.iw ; 4 uses
  %i.ix = sub i64 %.val.i.i.i185, %.sroa.0.0.i.i.i.i188 ; 2 uses
  %.not11.i.i.i.i189 = icmp ult i64 %i.ix, %i.s
  br i1 %.not11.i.i.i.i189, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.iy = sub nuw i64 %i.s, %i.ix
  %i.iz = shl nuw nsw i64 %i.iy, 5
  br label %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$4iter17hd8f7ad9e87d00174E.exit.i.i190"

bb.am:                                            ; preds = %bb.ak
  %i.ja = add i64 %.sroa.0.0.i.i.i.i188, %i.s
  br label %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$4iter17hd8f7ad9e87d00174E.exit.i.i190"

"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$4iter17hd8f7ad9e87d00174E.exit.i.i190": ; preds = %bb.am, %bb.al, %bb.aj
  %.sroa.0.0.i.i.i191 = phi i64 [ %.sroa.0.0.i.i.i.i188, %bb.am ], [ %.sroa.0.0.i.i.i.i188, %bb.al ], [ 0, %bb.aj ] ; 2 uses
  %.sroa.5.0.i.i.i192 = phi i64 [ %i.ja, %bb.am ], [ %.val.i.i.i185, %bb.al ], [ 0, %bb.aj ] ; 2 uses
  %.sroa.11.0.i.i.i193 = phi i64 [ 0, %bb.am ], [ %i.iz, %bb.al ], [ 0, %bb.aj ] ; 2 uses
  %i.jb = getelementptr inbounds nuw [32 x i8], ptr %i.bv, i64 %.sroa.5.0.i.i.i192
  %i.jc = getelementptr inbounds nuw i8, ptr %i.bv, i64 %.sroa.11.0.i.i.i193
  %.not11.not.not.i.not.i.i.i194533 = icmp samesign eq i64 %.sroa.0.0.i.i.i191, %.sroa.5.0.i.i.i192
  br i1 %.not11.not.not.i.not.i.i.i194533, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17h201ae9e2dad8ec63E.exit.i.i.i198.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$4iter17hd8f7ad9e87d00174E.exit.i.i190"
  %i.jd = getelementptr inbounds nuw [32 x i8], ptr %i.bv, i64 %.sroa.0.0.i.i.i191
  br label %bb.ao

bb.an:                                            ; preds = %bb.ao
  %i.je = getelementptr inbounds nuw i8, ptr %i.jf, i64 32 ; 2 uses
  %.not11.not.not.i.not.i.i.i194 = icmp eq ptr %i.je, %i.jb
  br i1 %.not11.not.not.i.not.i.i.i194, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17h201ae9e2dad8ec63E.exit.i.i.i198.preheader, label %bb.ao

_ZN4core4iter6traits8iterator8Iterator8try_fold17h201ae9e2dad8ec63E.exit.i.i.i198.preheader: ; preds = %bb.an, %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$4iter17hd8f7ad9e87d00174E.exit.i.i190"
  %.not11.not.not.i4.not.not.i.not.i.not.i199534 = icmp samesign eq i64 %.sroa.11.0.i.i.i193, 0
  br i1 %.not11.not.not.i4.not.not.i.not.i.not.i199534, label %"_ZN74_$LT$bytes..bytes_mut..BytesMut$u20$as$u20$bytes..buf..buf_mut..BufMut$GT$3put17h17e5724ccca53ed1E.exit", label %.lr.ph535

bb.ao:                                            ; preds = %.lr.ph, %bb.an
  %i.jf = phi ptr [ %i.jd, %.lr.ph ], [ %i.je, %bb.an ] ; 2 uses
  %i.jg = getelementptr i8, ptr %i.jf, i64 16
  %.val.i.i.i.i195 = load i64, ptr %i.jg, align 8, !noalias !44239, !noundef !8
  %.not.i.i2.i.i196 = icmp eq i64 %.val.i.i.i.i195, 0
  br i1 %.not.i.i2.i.i196, label %bb.an, label %.loopexit259

_ZN4core4iter6traits8iterator8Iterator8try_fold17h201ae9e2dad8ec63E.exit.i.i.i198: ; preds = %.lr.ph535
  %i.jh = getelementptr inbounds nuw i8, ptr %i.ji, i64 32 ; 2 uses
  %.not11.not.not.i4.not.not.i.not.i.not.i199 = icmp eq ptr %i.jh, %i.jc
  br i1 %.not11.not.not.i4.not.not.i.not.i.not.i199, label %"_ZN74_$LT$bytes..bytes_mut..BytesMut$u20$as$u20$bytes..buf..buf_mut..BufMut$GT$3put17h17e5724ccca53ed1E.exit", label %.lr.ph535

.lr.ph535:                                        ; preds = %_ZN4core4iter6traits8iterator8Iterator8try_fold17h201ae9e2dad8ec63E.exit.i.i.i198.preheader, %_ZN4core4iter6traits8iterator8Iterator8try_fold17h201ae9e2dad8ec63E.exit.i.i.i198
  %i.ji = phi ptr [ %i.jh, %_ZN4core4iter6traits8iterator8Iterator8try_fold17h201ae9e2dad8ec63E.exit.i.i.i198 ], [ %i.bv, %_ZN4core4iter6traits8iterator8Iterator8try_fold17h201ae9e2dad8ec63E.exit.i.i.i198.preheader ] ; 2 uses
  %i.jj = getelementptr i8, ptr %i.ji, i64 16
  %.val.i5.i.i.i200 = load i64, ptr %i.jj, align 8, !noalias !44244, !noundef !8
  %.not.i6.i.i.i201 = icmp eq i64 %.val.i5.i.i.i200, 0
  br i1 %.not.i6.i.i.i201, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17h201ae9e2dad8ec63E.exit.i.i.i198, label %.loopexit259

.loopexit259:                                     ; preds = %bb.ao, %.lr.ph535
  br i1 %i.cv, label %bb.ap, label %bb.aw

bb.ap:                                            ; preds = %.loopexit259
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !44247
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44249), !noalias !44231
  br i1 %.not.i, label %"_ZN59_$LT$$RF$mut$u20$T$u20$as$u20$bytes..buf..buf_impl..Buf$GT$9remaining17h10cdff42cbd7f1e7E.exit184", label %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$4iter17hd8f7ad9e87d00174E.exit.i.i166"

"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$4iter17hd8f7ad9e87d00174E.exit.i.i166": ; preds = %bb.ap
  %i.jk = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val2.i.i.i168 = load i64, ptr %i.jk, align 8, !alias.scope !44252, !noalias !44255 ; 2 uses
  %.not.i.i.i.i169 = icmp ult i64 %.val2.i.i.i168, %.val.i.i.i185
  %i.jl = select i1 %.not.i.i.i.i169, i64 0, i64 %.val.i.i.i185
  %.sroa.0.0.i.i.i.i170 = sub nuw i64 %.val2.i.i.i168, %i.jl ; 5 uses
  %i.jm = sub i64 %.val.i.i.i185, %.sroa.0.0.i.i.i.i170 ; 2 uses
  %.not11.i.i.i.i171 = icmp ult i64 %i.jm, %i.s   ; 2 uses
  %i.jn = add i64 %.sroa.0.0.i.i.i.i170, %i.s
  %i.jo = sub nuw i64 %i.s, %i.jm
  %i.jp = shl nuw nsw i64 %i.jo, 5
  %.sroa.5.0.i.i.i172 = select i1 %.not11.i.i.i.i171, i64 %.val.i.i.i185, i64 %i.jn ; 2 uses
  %.sroa.11.0.i.i.i173 = select i1 %.not11.i.i.i.i171, i64 %i.jp, i64 0 ; 3 uses
  %.idx1.i.i174 = shl nuw nsw i64 %.sroa.0.0.i.i.i.i170, 5
  %i.jq = getelementptr inbounds nuw i8, ptr %i.bv, i64 %.idx1.i.i174 ; 5 uses
  %i.jr = icmp samesign eq i64 %.sroa.0.0.i.i.i.i170, %.sroa.5.0.i.i.i172
  br i1 %i.jr, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h7775de5670786362E.exit.i.i.i178", label %bb.aq

bb.aq:                                            ; preds = %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$4iter17hd8f7ad9e87d00174E.exit.i.i166"
  %i.js = sub nuw nsw i64 %.sroa.5.0.i.i.i172, %.sroa.0.0.i.i.i.i170 ; 3 uses
  %xtraiter683 = and i64 %i.js, 3                 ; 3 uses
  %i.jt = icmp ult i64 %i.js, 4
  br i1 %i.jt, label %.epil.preheader682, label %.new681

.new681:                                          ; preds = %bb.aq
  %unroll_iter688 = and i64 %i.js, -4
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ar, %.new681
  %.sroa.07.0.i.i.i.i175 = phi i64 [ 0, %.new681 ], [ %i.kf, %bb.ar ]
  %.sroa.09.0.i.i.i.i176 = phi i64 [ 0, %.new681 ], [ %i.kg, %bb.ar ] ; 5 uses
  %niter689 = phi i64 [ 0, %.new681 ], [ %niter689.next.3, %bb.ar ]
  %i.ju = getelementptr inbounds nuw [32 x i8], ptr %i.jq, i64 %.sroa.09.0.i.i.i.i176
  %i.jv = getelementptr i8, ptr %i.ju, i64 16
  %.val.i.i.i.i177 = load i64, ptr %i.jv, align 8, !noalias !44257, !noundef !8
  %i.jw = add i64 %.val.i.i.i.i177, %.sroa.07.0.i.i.i.i175
  %i.jx = getelementptr inbounds nuw [32 x i8], ptr %i.jq, i64 %.sroa.09.0.i.i.i.i176
  %i.jy = getelementptr i8, ptr %i.jx, i64 48
  %.val.i.i.i.i177.1 = load i64, ptr %i.jy, align 8, !noalias !44257, !noundef !8
  %i.jz = add i64 %.val.i.i.i.i177.1, %i.jw
  %i.ka = getelementptr inbounds nuw [32 x i8], ptr %i.jq, i64 %.sroa.09.0.i.i.i.i176
  %i.kb = getelementptr i8, ptr %i.ka, i64 80
  %.val.i.i.i.i177.2 = load i64, ptr %i.kb, align 8, !noalias !44257, !noundef !8
  %i.kc = add i64 %.val.i.i.i.i177.2, %i.jz
  %i.kd = getelementptr inbounds nuw [32 x i8], ptr %i.jq, i64 %.sroa.09.0.i.i.i.i176
  %i.ke = getelementptr i8, ptr %i.kd, i64 112
  %.val.i.i.i.i177.3 = load i64, ptr %i.ke, align 8, !noalias !44257, !noundef !8
  %i.kf = add i64 %.val.i.i.i.i177.3, %i.kc       ; 3 uses
  %i.kg = add nuw i64 %.sroa.09.0.i.i.i.i176, 4   ; 2 uses
  %niter689.next.3 = add i64 %niter689, 4         ; 2 uses
  %niter689.ncmp.3 = icmp eq i64 %niter689.next.3, %unroll_iter688
  br i1 %niter689.ncmp.3, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h7775de5670786362E.exit.i.i.i178.loopexit.unr-lcssa", label %bb.ar

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h7775de5670786362E.exit.i.i.i178.loopexit.unr-lcssa": ; preds = %bb.ar
  %lcmp.mod685.not = icmp eq i64 %xtraiter683, 0
  br i1 %lcmp.mod685.not, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h7775de5670786362E.exit.i.i.i178", label %.epil.preheader682

.epil.preheader682:                               ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h7775de5670786362E.exit.i.i.i178.loopexit.unr-lcssa", %bb.aq
  %.sroa.07.0.i.i.i.i175.epil.init = phi i64 [ 0, %bb.aq ], [ %i.kf, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h7775de5670786362E.exit.i.i.i178.loopexit.unr-lcssa" ]
  %.sroa.09.0.i.i.i.i176.epil.init = phi i64 [ 0, %bb.aq ], [ %i.kg, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h7775de5670786362E.exit.i.i.i178.loopexit.unr-lcssa" ]
  %lcmp.mod687 = icmp ne i64 %xtraiter683, 0
  tail call void @llvm.assume(i1 %lcmp.mod687)
  br label %bb.as

bb.as:                                            ; preds = %bb.as, %.epil.preheader682
  %.sroa.07.0.i.i.i.i175.epil = phi i64 [ %.sroa.07.0.i.i.i.i175.epil.init, %.epil.preheader682 ], [ %i.kj, %bb.as ]
  %.sroa.09.0.i.i.i.i176.epil = phi i64 [ %.sroa.09.0.i.i.i.i176.epil.init, %.epil.preheader682 ], [ %i.kk, %bb.as ] ; 2 uses
  %epil.iter684 = phi i64 [ 0, %.epil.preheader682 ], [ %epil.iter684.next, %bb.as ]
  %i.kh = getelementptr inbounds nuw [32 x i8], ptr %i.jq, i64 %.sroa.09.0.i.i.i.i176.epil
  %i.ki = getelementptr i8, ptr %i.kh, i64 16
  %.val.i.i.i.i177.epil = load i64, ptr %i.ki, align 8, !noalias !44257, !noundef !8
  %i.kj = add i64 %.val.i.i.i.i177.epil, %.sroa.07.0.i.i.i.i175.epil ; 2 uses
  %i.kk = add nuw i64 %.sroa.09.0.i.i.i.i176.epil, 1
  %epil.iter684.next = add i64 %epil.iter684, 1   ; 2 uses
  %epil.iter684.cmp.not = icmp eq i64 %epil.iter684.next, %xtraiter683
  br i1 %epil.iter684.cmp.not, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h7775de5670786362E.exit.i.i.i178", label %bb.as, !llvm.loop !44260

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h7775de5670786362E.exit.i.i.i178": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h7775de5670786362E.exit.i.i.i178.loopexit.unr-lcssa", %bb.as, %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$4iter17hd8f7ad9e87d00174E.exit.i.i166"
  %.sroa.04.0.i.i.i.i179 = phi i64 [ 0, %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$4iter17hd8f7ad9e87d00174E.exit.i.i166" ], [ %i.kf, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h7775de5670786362E.exit.i.i.i178.loopexit.unr-lcssa" ], [ %i.kj, %bb.as ] ; 3 uses
  %i.kl = icmp samesign eq i64 %.sroa.11.0.i.i.i173, 0
  br i1 %i.kl, label %"_ZN59_$LT$$RF$mut$u20$T$u20$as$u20$bytes..buf..buf_impl..Buf$GT$9remaining17h10cdff42cbd7f1e7E.exit184", label %bb.at

bb.at:                                            ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h7775de5670786362E.exit.i.i.i178"
  %i.km = lshr exact i64 %.sroa.11.0.i.i.i173, 5  ; 2 uses
  %xtraiter692 = and i64 %i.km, 3                 ; 3 uses
  %i.kn = icmp samesign ult i64 %.sroa.11.0.i.i.i173, 128
  br i1 %i.kn, label %.epil.preheader691, label %.new690

.new690:                                          ; preds = %bb.at
  %unroll_iter697 = and i64 %i.km, 288230376151711740
  br label %bb.au

bb.au:                                            ; preds = %bb.au, %.new690
  %.sroa.07.0.i1.i.i.i180 = phi i64 [ %.sroa.04.0.i.i.i.i179, %.new690 ], [ %i.kz, %bb.au ]
  %.sroa.09.0.i2.i.i.i181 = phi i64 [ 0, %.new690 ], [ %i.la, %bb.au ] ; 5 uses
  %niter698 = phi i64 [ 0, %.new690 ], [ %niter698.next.3, %bb.au ]
  %i.ko = getelementptr inbounds nuw [32 x i8], ptr %i.bv, i64 %.sroa.09.0.i2.i.i.i181
  %i.kp = getelementptr i8, ptr %i.ko, i64 16
  %.val.i3.i.i.i182 = load i64, ptr %i.kp, align 8, !noalias !44257, !noundef !8
  %i.kq = add i64 %.val.i3.i.i.i182, %.sroa.07.0.i1.i.i.i180
  %i.kr = getelementptr inbounds nuw [32 x i8], ptr %i.bv, i64 %.sroa.09.0.i2.i.i.i181
  %i.ks = getelementptr i8, ptr %i.kr, i64 48
  %.val.i3.i.i.i182.1 = load i64, ptr %i.ks, align 8, !noalias !44257, !noundef !8
  %i.kt = add i64 %.val.i3.i.i.i182.1, %i.kq
  %i.ku = getelementptr inbounds nuw [32 x i8], ptr %i.bv, i64 %.sroa.09.0.i2.i.i.i181
  %i.kv = getelementptr i8, ptr %i.ku, i64 80
  %.val.i3.i.i.i182.2 = load i64, ptr %i.kv, align 8, !noalias !44257, !noundef !8
  %i.kw = add i64 %.val.i3.i.i.i182.2, %i.kt
  %i.kx = getelementptr inbounds nuw [32 x i8], ptr %i.bv, i64 %.sroa.09.0.i2.i.i.i181
  %i.ky = getelementptr i8, ptr %i.kx, i64 112
  %.val.i3.i.i.i182.3 = load i64, ptr %i.ky, align 8, !noalias !44257, !noundef !8
  %i.kz = add i64 %.val.i3.i.i.i182.3, %i.kw      ; 3 uses
  %i.la = add nuw nsw i64 %.sroa.09.0.i2.i.i.i181, 4 ; 2 uses
  %niter698.next.3 = add i64 %niter698, 4         ; 2 uses
  %niter698.ncmp.3 = icmp eq i64 %niter698.next.3, %unroll_iter697
  br i1 %niter698.ncmp.3, label %"_ZN59_$LT$$RF$mut$u20$T$u20$as$u20$bytes..buf..buf_impl..Buf$GT$9remaining17h10cdff42cbd7f1e7E.exit184.loopexit.unr-lcssa", label %bb.au

"_ZN59_$LT$$RF$mut$u20$T$u20$as$u20$bytes..buf..buf_impl..Buf$GT$9remaining17h10cdff42cbd7f1e7E.exit184.loopexit.unr-lcssa": ; preds = %bb.au
  %lcmp.mod694.not = icmp eq i64 %xtraiter692, 0
  br i1 %lcmp.mod694.not, label %"_ZN59_$LT$$RF$mut$u20$T$u20$as$u20$bytes..buf..buf_impl..Buf$GT$9remaining17h10cdff42cbd7f1e7E.exit184", label %.epil.preheader691

.epil.preheader691:                               ; preds = %"_ZN59_$LT$$RF$mut$u20$T$u20$as$u20$bytes..buf..buf_impl..Buf$GT$9remaining17h10cdff42cbd7f1e7E.exit184.loopexit.unr-lcssa", %bb.at
  %.sroa.07.0.i1.i.i.i180.epil.init = phi i64 [ %.sroa.04.0.i.i.i.i179, %bb.at ], [ %i.kz, %"_ZN59_$LT$$RF$mut$u20$T$u20$as$u20$bytes..buf..buf_impl..Buf$GT$9remaining17h10cdff42cbd7f1e7E.exit184.loopexit.unr-lcssa" ]
  %.sroa.09.0.i2.i.i.i181.epil.init = phi i64 [ 0, %bb.at ], [ %i.la, %"_ZN59_$LT$$RF$mut$u20$T$u20$as$u20$bytes..buf..buf_impl..Buf$GT$9remaining17h10cdff42cbd7f1e7E.exit184.loopexit.unr-lcssa" ]
end_hunk_7
