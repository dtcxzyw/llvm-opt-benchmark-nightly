Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/routes_macros-930ad21b5d8f1140.routes_macros.fdfe8b3bb0265034-cgu.0?download=true
inline.NumInlined: 3318
inline.NumDeleted: 1160
begin_hunk_0_@_ZN13routes_macros7request19handle_named_fields17hdd450b48625fee8dE:bb.a

bb.o:                                             ; preds = %bb.q, %bb.v, %bb.bf, %bb.s, %bb.x
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread416

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut17hd5ace2b133b33b08E.exit": ; preds = %bb.g, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut12process_loop17h1f6282e125a69cf7E.exit._crit_edge.i", %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.939.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.939.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.939.sroa.9)
  %.sroa.042.0.copyload = load i64, ptr %i.be, align 8 ; 2 uses
  %.sroa.6.sroa.0.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.6.sroa.5.0.copyload = load ptr, ptr %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  %.sroa.6.sroa.6.0.copyload = load i64, ptr %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  switch i64 %.sroa.042.0.copyload, label %bb.p [
    i64 19, label %bb.r
    i64 18, label %bb.q
  ]

bb.p:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut17hd5ace2b133b33b08E.exit"
  %.sroa.746.sroa.7.0.copyload = load i8, ptr %.sroa.746.sroa.7.0..sroa.746.0..sroa_idx.sroa_idx, align 8
  %.sroa.746.sroa.6.0.copyload = load i64, ptr %.sroa.746.sroa.6.0..sroa.746.0..sroa_idx.sroa_idx, align 8
  %.sroa.746.sroa.5.0.copyload = load ptr, ptr %.sroa.746.sroa.5.0..sroa.746.0..sroa_idx.sroa_idx, align 8
  %.sroa.746.sroa.4.0.copyload = load i64, ptr %.sroa.746.sroa.4.0..sroa.746.0..sroa_idx.sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.939.sroa.0, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.746.0..sroa_idx, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.939.sroa.8, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.746.sroa.8.0..sroa.746.0..sroa_idx.sroa_idx, i64 7, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(560) %.sroa.939.sroa.9, ptr noundef nonnull align 8 dereferenceable(560) %.sroa.746.sroa.9.0..sroa.746.0..sroa_idx.sroa_idx, i64 560, i1 false)
  br label %bb.r

bb.q:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut17hd5ace2b133b33b08E.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.939.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.939.sroa.8)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.939.sroa.9)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 %.sroa.6.sroa.0.0.copyload, ptr %i.f, align 8
  %.sroa.2352.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %.sroa.6.sroa.5.0.copyload, ptr %.sroa.2352.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %.sroa.6.sroa.6.0.copyload, ptr %.sroa.3.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  invoke void @"_ZN112_$LT$proc_macro2_diagnostics..diagnostic..Diagnostic$u20$as$u20$core..convert..From$LT$syn..error..Error$GT$$GT$4from17ha491149f8aaeaf40E"(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.f)
          to label %bb.gu unwind label %bb.o

bb.r:                                             ; preds = %bb.p, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut17hd5ace2b133b33b08E.exit"
  %.sroa.736.sroa.7.0.ph = phi i64 [ undef, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut17hd5ace2b133b33b08E.exit" ], [ %.sroa.6.sroa.6.0.copyload, %bb.p ]
  %.sroa.736.sroa.6.0.ph = phi ptr [ undef, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut17hd5ace2b133b33b08E.exit" ], [ %.sroa.6.sroa.5.0.copyload, %bb.p ]
  %.sroa.736.sroa.0.0.ph = phi i64 [ undef, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut17hd5ace2b133b33b08E.exit" ], [ %.sroa.6.sroa.0.0.copyload, %bb.p ]
  %.sroa.939.sroa.7.0.ph = phi i8 [ undef, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut17hd5ace2b133b33b08E.exit" ], [ %.sroa.746.sroa.7.0.copyload, %bb.p ]
  %.sroa.939.sroa.6.0.ph = phi i64 [ undef, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut17hd5ace2b133b33b08E.exit" ], [ %.sroa.746.sroa.6.0.copyload, %bb.p ]
  %.sroa.939.sroa.5.0.ph = phi ptr [ undef, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut17hd5ace2b133b33b08E.exit" ], [ %.sroa.746.sroa.5.0.copyload, %bb.p ]
  %.sroa.939.sroa.4.0.ph = phi i64 [ undef, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut17hd5ace2b133b33b08E.exit" ], [ %.sroa.746.sroa.4.0.copyload, %bb.p ]
  %.sroa.033.0.ph = phi i64 [ 18, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut17hd5ace2b133b33b08E.exit" ], [ %.sroa.042.0.copyload, %bb.p ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.sroa.0, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.939.sroa.0, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4.sroa.6, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.939.sroa.8, i64 7, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(560) %.sroa.4.sroa.7, ptr noundef nonnull align 8 dereferenceable(560) %.sroa.939.sroa.9, i64 560, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.939.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.939.sroa.8)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.939.sroa.9)
  %.not93 = icmp eq i64 %.sroa.033.0.ph, 18
  br i1 %.not93, label %bb.s, label %bb.z

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3883
  invoke void @_ZN11proc_macro211TokenStream3new17h519b395672087979E(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.c)
          to label %.noexc145 unwind label %bb.o

.noexc145:                                        ; preds = %bb.s
  invoke void @"_ZN3syn4data8printing73_$LT$impl$u20$quote..to_tokens..ToTokens$u20$for$u20$syn..data..Field$GT$9to_tokens17h578d575369292f1dE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(312) %i.ct, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %bb.v unwind label %bb.t, !noalias !3884

bb.t:                                             ; preds = %.noexc145
  %i.ef = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr50drop_in_place$LT$proc_macro2..imp..TokenStream$GT$17hb0e40aff324c4c1bE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %.thread416 unwind label %bb.u, !noalias !3884

bb.u:                                             ; preds = %bb.t
  %i.eg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #31, !noalias !3884
  unreachable

bb.v:                                             ; preds = %.noexc145
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false), !noalias !3885
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3883
  %i.eh = invoke noundef i32 @_ZN5quote7spanned10join_spans17h68c9d97b5ea46e62E(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.g)
          to label %bb.w unwind label %bb.o

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !3886
  %i.ei = call noundef dereferenceable_or_null(37) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef range(i64 16, 236) 37, i64 noundef range(i64 1, 9) 1) #28, !noalias !3886 ; 4 uses
  %i.ej = icmp eq ptr %i.ei, null
  br i1 %i.ej, label %bb.x, label %"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h16338ab50a3248f5E.exit.i"

bb.x:                                             ; preds = %bb.w
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 range(i64 16, 236) 37, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @278) #29
          to label %.noexc149 unwind label %bb.o

.noexc149:                                        ; preds = %bb.x
  unreachable

"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h16338ab50a3248f5E.exit.i": ; preds = %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(37) %i.ei, ptr noundef nonnull readonly align 1 dereferenceable(37) @193, i64 range(i64 16, 236) 37, i1 false), !noalias !3887
  invoke void @"_ZN84_$LT$proc_macro2..Span$u20$as$u20$proc_macro2_diagnostics..diagnostic..MultiSpan$GT$10into_spans17hba0a5edac53d6234E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, i32 noundef %i.eh)
          to label %bb.y unwind label %.thread419, !noalias !3888

.thread419:                                       ; preds = %"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h16338ab50a3248f5E.exit.i"
  %i.ek = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ei, i64 noundef 37, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !3889
  br label %.thread416

bb.y:                                             ; preds = %"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h16338ab50a3248f5E.exit.i"
  %.sroa.4404.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4404.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 37, ptr %0, align 8
  %.sroa.2402.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ei, ptr %.sroa.2402.0..sroa_idx, align 8
  %.sroa.3403.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 37, ptr %.sroa.3403.0..sroa_idx, align 8
  %.sroa.5405.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %.sroa.5405.0..sroa_idx, align 8
  %.sroa.6406.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.6406.0..sroa_idx, align 8
  %.sroa.7407.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 0, ptr %.sroa.7407.0..sroa_idx, align 8
  %.sroa.8408.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 0, ptr %.sroa.8408.0..sroa_idx, align 8
  br label %bb.hg

bb.z:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bd, ptr noundef nonnull align 8 dereferenceable(24) %i.cl, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bc, ptr noundef nonnull align 8 dereferenceable(24) %i.cm, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bb, ptr noundef nonnull align 8 dereferenceable(24) %i.cn, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(352) %i.ba, ptr noundef nonnull align 8 dereferenceable(352) %i.co, i64 352, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2.sroa.4.0..sroa.2.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.sroa.0, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.2.sroa.9.0..sroa.2.0..sroa_idx.sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4.sroa.6, i64 7, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.389.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.4.sroa.7, i64 136, i1 false)
  store i64 %.sroa.033.0.ph, ptr %i.az, align 8
  store i64 %.sroa.736.sroa.0.0.ph, ptr %.sroa.2.0..sroa_idx, align 8
  store ptr %.sroa.736.sroa.6.0.ph, ptr %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx, align 8
  store i64 %.sroa.736.sroa.7.0.ph, ptr %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx, align 8
  store i64 %.sroa.939.sroa.4.0.ph, ptr %.sroa.2.sroa.5.0..sroa.2.0..sroa_idx.sroa_idx, align 8
  store ptr %.sroa.939.sroa.5.0.ph, ptr %.sroa.2.sroa.6.0..sroa.2.0..sroa_idx.sroa_idx, align 8
  store i64 %.sroa.939.sroa.6.0.ph, ptr %.sroa.2.sroa.7.0..sroa.2.0..sroa_idx.sroa_idx, align 8
  store i8 %.sroa.939.sroa.7.0.ph, ptr %.sroa.2.sroa.8.0..sroa.2.0..sroa_idx.sroa_idx, align 8
  %.not94 = icmp eq i64 %.sroa.033.0.ph, 17       ; 2 uses
  br i1 %.not94, label %bb.ae, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.ay, ptr noundef nonnull align 8 dereferenceable(224) %i.az, i64 224, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !3890)
  %i.el = load i64, ptr %i.bf, align 8, !range !71, !alias.scope !3890, !noalias !3891, !noundef !69
  %i.em = icmp eq i64 %i.cs, %i.el
  br i1 %i.em, label %bb.ab, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h5b4de4b2cfa380f6E.exit"

bb.ab:                                            ; preds = %bb.aa
  invoke fastcc void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h9fc00c7b8d00a40aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bf)
          to label %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h5b4de4b2cfa380f6E.exit_crit_edge" unwind label %bb.ac, !noalias !3891

"._ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h5b4de4b2cfa380f6E.exit_crit_edge": ; preds = %bb.ab
  %.pre1363 = load ptr, ptr %i.bg, align 8, !alias.scope !3890, !noalias !3891
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h5b4de4b2cfa380f6E.exit"

bb.ac:                                            ; preds = %bb.ab
  %i.en = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr34drop_in_place$LT$syn..ty..Type$GT$17h580a89232a59ced6E"(ptr noalias noundef nonnull align 8 dereferenceable(224) %i.ay) #30
          to label %..body153.thread_crit_edge unwind label %bb.ad, !noalias !3890

..body153.thread_crit_edge:                       ; preds = %bb.ac
  %.pre1370 = load i64, ptr %i.ba, align 8, !range !89
  br label %.body153.thread

bb.ad:                                            ; preds = %bb.ac
  %i.eo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #31, !noalias !3890
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h5b4de4b2cfa380f6E.exit": ; preds = %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h5b4de4b2cfa380f6E.exit_crit_edge", %bb.aa
  %i.ep = phi ptr [ %.pre1363, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h5b4de4b2cfa380f6E.exit_crit_edge" ], [ %i.cr, %bb.aa ] ; 2 uses
  %i.eq = getelementptr inbounds nuw [224 x i8], ptr %i.ep, i64 %i.cs
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.eq, ptr noundef nonnull align 8 dereferenceable(224) %i.az, i64 224, i1 false)
  %i.er = add i64 %i.cs, 1                        ; 2 uses
  store i64 %i.er, ptr %i.bh, align 8, !alias.scope !3890, !noalias !3891
  br label %bb.ae

bb.ae:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h5b4de4b2cfa380f6E.exit", %bb.z
  %i.es = phi ptr [ %i.ep, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h5b4de4b2cfa380f6E.exit" ], [ %i.cr, %bb.z ]
  %i.et = phi i64 [ %i.er, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h5b4de4b2cfa380f6E.exit" ], [ %i.cs, %bb.z ]
  %i.eu = load i64, ptr %i.ba, align 8, !range !89, !noundef !69 ; 5 uses
  %i.ev = call i64 @llvm.usub.sat.i64(i64 %i.eu, i64 40)
  switch i64 %i.ev, label %default.unreachable2821 [
    i64 0, label %bb.af
    i64 1, label %bb.ag
    i64 2, label %bb.ah
  ]

.body153:                                         ; preds = %.loopexit533, %.loopexit.split-lp534, %bb.fy, %"_ZN4core3ptr45drop_in_place$LT$proc_macro2..TokenStream$GT$17h0e47506e1e196136E.exit231", %bb.fc, %"_ZN4core3ptr45drop_in_place$LT$proc_macro2..TokenStream$GT$17h0e47506e1e196136E.exit217", %bb.el, %"_ZN4core3ptr45drop_in_place$LT$proc_macro2..TokenStream$GT$17h0e47506e1e196136E.exit208", %bb.du, %bb.dr, %bb.dn, %bb.dk, %bb.dg, %bb.dd, %bb.cz, %bb.cu, %"_ZN4core3ptr45drop_in_place$LT$proc_macro2..TokenStream$GT$17h0e47506e1e196136E.exit162", %bb.cs, %.body156
  %.pn114 = phi { ptr, i32 } [ %i.gr, %bb.cz ], [ %.pn112, %bb.cs ], [ %.pn112, %.body156 ], [ %i.iu, %bb.fc ], [ %i.ih, %bb.el ], [ %i.hs, %bb.du ], [ %.pn, %"_ZN4core3ptr45drop_in_place$LT$proc_macro2..TokenStream$GT$17h0e47506e1e196136E.exit162" ], [ %i.hj, %bb.dn ], [ %i.ha, %bb.dg ], [ %i.jx, %bb.fy ], [ %i.gn, %bb.cu ], [ %i.gw, %bb.dd ], [ %i.hf, %bb.dk ], [ %i.ho, %bb.dr ], [ %.pn99.pn, %"_ZN4core3ptr45drop_in_place$LT$proc_macro2..TokenStream$GT$17h0e47506e1e196136E.exit208" ], [ %.pn103.pn, %"_ZN4core3ptr45drop_in_place$LT$proc_macro2..TokenStream$GT$17h0e47506e1e196136E.exit217" ], [ %.pn107.pn, %"_ZN4core3ptr45drop_in_place$LT$proc_macro2..TokenStream$GT$17h0e47506e1e196136E.exit231" ], [ %lpad.loopexit535, %.loopexit533 ], [ %lpad.loopexit.split-lp536, %.loopexit.split-lp534 ] ; 2 uses
  %.sroa.066.0 = phi i8 [ 1, %bb.cz ], [ 0, %bb.cs ], [ 0, %.body156 ], [ %.sroa.066.2, %bb.fc ], [ %.sroa.066.2, %bb.el ], [ 1, %bb.du ], [ 0, %"_ZN4core3ptr45drop_in_place$LT$proc_macro2..TokenStream$GT$17h0e47506e1e196136E.exit162" ], [ 1, %bb.dn ], [ 1, %bb.dg ], [ %.sroa.066.2, %bb.fy ], [ 1, %bb.cu ], [ 1, %bb.dd ], [ 1, %bb.dk ], [ 1, %bb.dr ], [ %.sroa.066.2, %"_ZN4core3ptr45drop_in_place$LT$proc_macro2..TokenStream$GT$17h0e47506e1e196136E.exit208" ], [ %.sroa.066.2, %"_ZN4core3ptr45drop_in_place$LT$proc_macro2..TokenStream$GT$17h0e47506e1e196136E.exit217" ], [ %.sroa.066.2, %"_ZN4core3ptr45drop_in_place$LT$proc_macro2..TokenStream$GT$17h0e47506e1e196136E.exit231" ], [ %.sroa.066.1.ph, %.loopexit533 ], [ 0, %.loopexit.split-lp534 ] ; 2 uses
  %i.ew = load i64, ptr %i.az, align 8, !range !74, !noundef !69
  %i.ex = icmp ne i64 %i.ew, 17
  %or.cond7 = and i1 %.not94, %i.ex
  br i1 %or.cond7, label %bb.gq, label %.body153.thread

.loopexit533:                                     ; preds = %bb.ag, %bb.ah, %bb.di, %bb.dp, %bb.dx, %bb.ei, %bb.eo, %bb.ez, %bb.fl, %bb.fv
  %.sroa.066.1.ph = phi i8 [ 1, %bb.ah ], [ %.sroa.066.2, %bb.dx ], [ %.sroa.066.2, %bb.ei ], [ 1, %bb.dp ], [ %.sroa.066.2, %bb.eo ], [ %.sroa.066.2, %bb.ez ], [ 1, %bb.di ], [ %.sroa.066.2, %bb.fl ], [ %.sroa.066.2, %bb.fv ], [ 1, %bb.ag ]
  %lpad.loopexit535 = landingpad { ptr, i32 }
          cleanup
  br label %.body153

.loopexit.split-lp534:                            ; preds = %bb.bb
  %lpad.loopexit.split-lp536 = landingpad { ptr, i32 }
          cleanup
  br label %.body153

default.unreachable2821:                          ; preds = %bb.ae
  unreachable

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.ax, ptr noundef nonnull align 8 dereferenceable(176) %i.by, i64 176, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  %.not95 = icmp eq i64 %i.eu, 40
  br i1 %.not95, label %bb.aj, label %bb.ai

bb.ag:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  invoke void @_ZN11proc_macro211TokenStream3new17h519b395672087979E(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.ai)
          to label %bb.ct unwind label %.loopexit533

bb.ah:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  invoke void @_ZN11proc_macro211TokenStream3new17h519b395672087979E(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.ag)
          to label %bb.dc unwind label %.loopexit533

bb.ai:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  store i64 %i.eu, ptr %i.av, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %.sroa.651.0..sroa_idx52, ptr noundef nonnull align 8 dereferenceable(168) %.sroa.651.0..sroa_idx, i64 168, i1 false)
  br i1 %or.cond11, label %bb.al, label %bb.ak

bb.aj:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  invoke void @_ZN11proc_macro211TokenStream3new17h519b395672087979E(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.as)
          to label %bb.bh unwind label %.loopexit543

bb.ak:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  invoke void @_ZN11proc_macro211TokenStream3new17h519b395672087979E(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.at)
          to label %bb.am unwind label %.loopexit538

bb.al:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke fastcc void @_ZN5quote9to_tokens8ToTokens17into_token_stream17h69bee3c550881782E(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.av)
          to label %bb.ax unwind label %.loopexit.split-lp539

"_ZN4core3ptr45drop_in_place$LT$proc_macro2..TokenStream$GT$17h0e47506e1e196136E.exit": ; preds = %.loopexit538, %.loopexit.split-lp539, %bb.an
  %.pn110 = phi { ptr, i32 } [ %i.ey, %bb.an ], [ %lpad.loopexit540, %.loopexit538 ], [ %lpad.loopexit.split-lp541, %.loopexit.split-lp539 ]
  invoke fastcc void @"_ZN4core3ptr36drop_in_place$LT$syn..expr..Expr$GT$17h436cbd68d90d46dfE"(ptr noalias noundef align 8 dereferenceable(176) %i.av) #30
          to label %.body156 unwind label %bb.aw

.loopexit538:                                     ; preds = %bb.ak
  %lpad.loopexit540 = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr45drop_in_place$LT$proc_macro2..TokenStream$GT$17h0e47506e1e196136E.exit"

.loopexit.split-lp539:                            ; preds = %bb.al, %bb.ax, %bb.ay
  %lpad.loopexit.split-lp541 = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr45drop_in_place$LT$proc_macro2..TokenStream$GT$17h0e47506e1e196136E.exit"

bb.am:                                            ; preds = %bb.ak
  invoke void @_ZN5quote9__private10push_ident17h8c0ebbdb8d9fef65E(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.at, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @139, i64 noundef 7)
          to label %bb.ao unwind label %bb.an

bb.an:                                            ; preds = %bb.ap, %bb.ao, %bb.am
  %i.ey = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr50drop_in_place$LT$proc_macro2..imp..TokenStream$GT$17hb0e40aff324c4c1bE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.at)
          to label %"_ZN4core3ptr45drop_in_place$LT$proc_macro2..TokenStream$GT$17h0e47506e1e196136E.exit" unwind label %bb.aw

bb.ao:                                            ; preds = %bb.am
  invoke void @_ZN5quote9__private7push_eq17h711713bccc35594dE(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.at)
          to label %bb.ap unwind label %bb.an

bb.ap:                                            ; preds = %bb.ao
  invoke void @"_ZN62_$LT$syn..expr..Expr$u20$as$u20$quote..to_tokens..ToTokens$GT$9to_tokens17hdde17e77f9b44ea3E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.av, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.at)
          to label %bb.aq unwind label %bb.an

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aw, ptr noundef nonnull align 8 dereferenceable(32) %i.at, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  invoke fastcc void @"_ZN4core3ptr36drop_in_place$LT$syn..expr..Expr$GT$17h436cbd68d90d46dfE"(ptr noalias noundef align 8 dereferenceable(176) %i.av)
          to label %bb.ar unwind label %.loopexit543

.body156:                                         ; preds = %.loopexit543, %.loopexit.split-lp544, %bb.co, %bb.cl, %bb.cd, %bb.ca, %bb.bi, %bb.au, %"_ZN4core3ptr45drop_in_place$LT$proc_macro2..TokenStream$GT$17h0e47506e1e196136E.exit"
  %.pn112 = phi { ptr, i32 } [ %i.fw, %bb.ca ], [ %.pn110, %"_ZN4core3ptr45drop_in_place$LT$proc_macro2..TokenStream$GT$17h0e47506e1e196136E.exit" ], [ %i.fy, %bb.cd ], [ %i.fe, %bb.au ], [ %i.gc, %bb.cl ], [ %i.fm, %bb.bi ], [ %i.gg, %bb.co ], [ %lpad.loopexit545, %.loopexit543 ], [ %lpad.loopexit.split-lp546, %.loopexit.split-lp544 ] ; 2 uses
  %.sroa.064.0 = phi i1 [ %.not96, %bb.ca ], [ true, %"_ZN4core3ptr45drop_in_place$LT$proc_macro2..TokenStream$GT$17h0e47506e1e196136E.exit" ], [ true, %bb.cd ], [ true, %bb.au ], [ %.not96, %bb.cl ], [ true, %bb.bi ], [ %.not96, %bb.co ], [ %.sroa.064.1.ph, %.loopexit543 ], [ true, %.loopexit.split-lp544 ]
  %i.ez = load i64, ptr %i.ax, align 8, !range !75, !noundef !69
  %i.fa = icmp ne i64 %i.ez, 40
  %or.cond = and i1 %.sroa.064.0, %i.fa
  br i1 %or.cond, label %bb.cs, label %.body153

.loopexit543:                                     ; preds = %bb.aj, %bb.aq, %bb.bm, %bb.bw, %bb.cj
  %.sroa.064.1.ph = phi i1 [ true, %bb.aj ], [ true, %bb.aq ], [ true, %bb.bm ], [ false, %bb.bw ], [ %.not96, %bb.cj ]
  %lpad.loopexit545 = landingpad { ptr, i32 }
          cleanup
  br label %.body156

.loopexit.split-lp544:                            ; preds = %bb.az
  %lpad.loopexit.split-lp546 = landingpad { ptr, i32 }
          cleanup
  br label %.body156

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  br label %bb.as

bb.as:                                            ; preds = %bb.bj, %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ar, ptr noundef nonnull align 8 dereferenceable(32) %i.aw, i64 32, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !3892)
  %i.fb = load i64, ptr %i.bu, align 8, !alias.scope !3892, !noalias !3893, !noundef !69 ; 3 uses
  %i.fc = load i64, ptr %i.bd, align 8, !range !71, !alias.scope !3892, !noalias !3893, !noundef !69
  %i.fd = icmp eq i64 %i.fb, %i.fc
  br i1 %i.fd, label %bb.at, label %bb.bk

bb.at:                                            ; preds = %bb.as
  invoke fastcc void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17hf0c0200af65032b7E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bd, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @196)
          to label %bb.bk unwind label %bb.au, !noalias !3894

bb.au:                                            ; preds = %bb.at
  %i.fe = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr50drop_in_place$LT$proc_macro2..imp..TokenStream$GT$17hb0e40aff324c4c1bE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ar)
          to label %.body156 unwind label %bb.av, !noalias !3892

bb.av:                                            ; preds = %bb.au
  %i.ff = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #31, !noalias !3892
  unreachable

bb.aw:                                            ; preds = %bb.gt, %bb.gs, %.loopexit, %"_ZN4core3ptr45drop_in_place$LT$proc_macro2..TokenStream$GT$17h0e47506e1e196136E.exit233", %"_ZN4core3ptr45drop_in_place$LT$proc_macro2..TokenStream$GT$17h0e47506e1e196136E.exit231", %.loopexit519, %"_ZN4core3ptr45drop_in_place$LT$proc_macro2..TokenStream$GT$17h0e47506e1e196136E.exit219", %"_ZN4core3ptr45drop_in_place$LT$proc_macro2..TokenStream$GT$17h0e47506e1e196136E.exit217", %.loopexit525, %"_ZN4core3ptr45drop_in_place$LT$proc_macro2..TokenStream$GT$17h0e47506e1e196136E.exit210", %"_ZN4core3ptr45drop_in_place$LT$proc_macro2..TokenStream$GT$17h0e47506e1e196136E.exit208", %bb.dr, %bb.dk, %bb.dd, %bb.cu, %bb.cl, %bb.cd, %bb.bp, %bb.bi, %bb.an, %.thread428, %"_ZN4core3ptr64drop_in_place$LT$core..option..Option$LT$syn..expr..Expr$GT$$GT$17h585b811856ef5cb3E.exit270", %bb.gq, %bb.cs, %"_ZN4core3ptr45drop_in_place$LT$proc_macro2..TokenStream$GT$17h0e47506e1e196136E.exit162", %.body249, %.body226, %"_ZN4core3ptr45drop_in_place$LT$proc_macro2..TokenStream$GT$17h0e47506e1e196136E.exit", %bb.c
  %i.fg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #31
  unreachable

bb.ax:                                            ; preds = %bb.al
  %i.fh = invoke noundef i32 @_ZN5quote7spanned10join_spans17h68c9d97b5ea46e62E(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.d)
          to label %bb.ay unwind label %.loopexit.split-lp539

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke fastcc void @_ZN23proc_macro2_diagnostics10diagnostic10Diagnostic7spanned17h788daa098e69ebfaE(ptr noalias noundef align 8 captures(address) dereferenceable(80) %i.au, i32 noundef %i.fh, i8 noundef 0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @195, i64 noundef 82)
          to label %bb.az unwind label %.loopexit.split-lp539

bb.az:                                            ; preds = %bb.ay
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %i.au, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  invoke fastcc void @"_ZN4core3ptr36drop_in_place$LT$syn..expr..Expr$GT$17h436cbd68d90d46dfE"(ptr noalias noundef align 8 dereferenceable(176) %i.av)
          to label %bb.ba unwind label %.loopexit.split-lp544

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  %i.fi = load i64, ptr %i.ax, align 8, !range !75, !alias.scope !3895, !noundef !69
  %i.fj = icmp eq i64 %i.fi, 40
  br i1 %i.fj, label %"_ZN4core3ptr64drop_in_place$LT$core..option..Option$LT$syn..expr..Expr$GT$$GT$17h585b811856ef5cb3E.exit", label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  invoke fastcc void @"_ZN4core3ptr36drop_in_place$LT$syn..expr..Expr$GT$17h436cbd68d90d46dfE"(ptr noalias noundef nonnull align 8 dereferenceable(176) %i.ax)
          to label %"_ZN4core3ptr64drop_in_place$LT$core..option..Option$LT$syn..expr..Expr$GT$$GT$17h585b811856ef5cb3E.exit" unwind label %.loopexit.split-lp534, !inline_history !3

"_ZN4core3ptr64drop_in_place$LT$core..option..Option$LT$syn..expr..Expr$GT$$GT$17h585b811856ef5cb3E.exit": ; preds = %bb.ba, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  invoke fastcc void @"_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$proc_macro2..TokenStream$GT$$GT$17h1879c741e64e6fffE"(ptr noalias noundef align 8 dereferenceable(24) %i.bb)
          to label %bb.bd unwind label %bb.bc

.body226:                                         ; preds = %.body.i, %bb.fi, %bb.bc, %"_ZN4core3ptr64drop_in_place$LT$core..option..Option$LT$syn..expr..Expr$GT$$GT$17h585b811856ef5cb3E.exit270"
  %.pn116 = phi { ptr, i32 } [ %.pn114512, %"_ZN4core3ptr64drop_in_place$LT$core..option..Option$LT$syn..expr..Expr$GT$$GT$17h585b811856ef5cb3E.exit270" ], [ %i.fk, %bb.bc ], [ %i.jf, %bb.fi ], [ %i.jf, %.body.i ]
  invoke fastcc void @"_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$proc_macro2..TokenStream$GT$$GT$17h1879c741e64e6fffE"(ptr noalias noundef align 8 dereferenceable(24) %i.bc) #30
          to label %.body249 unwind label %bb.aw

bb.bc:                                            ; preds = %"_ZN4core3ptr64drop_in_place$LT$core..option..Option$LT$syn..expr..Expr$GT$$GT$17h585b811856ef5cb3E.exit"
  %i.fk = landingpad { ptr, i32 }
          cleanup
  br label %.body226

bb.bd:                                            ; preds = %"_ZN4core3ptr64drop_in_place$LT$core..option..Option$LT$syn..expr..Expr$GT$$GT$17h585b811856ef5cb3E.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  invoke fastcc void @"_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$proc_macro2..TokenStream$GT$$GT$17h1879c741e64e6fffE"(ptr noalias noundef align 8 dereferenceable(24) %i.bc)
          to label %bb.bf unwind label %bb.be

.body249:                                         ; preds = %.body.i244, %bb.gd, %bb.be, %.body226
  %.pn118 = phi { ptr, i32 } [ %.pn116, %.body226 ], [ %i.fl, %bb.be ], [ %i.ki, %bb.gd ], [ %i.ki, %.body.i244 ]
  invoke fastcc void @"_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$proc_macro2..TokenStream$GT$$GT$17h1879c741e64e6fffE"(ptr noalias noundef align 8 dereferenceable(24) %i.bd) #30
          to label %.thread416 unwind label %bb.aw

bb.be:                                            ; preds = %bb.bd
  %i.fl = landingpad { ptr, i32 }
          cleanup
  br label %.body249

bb.bf:                                            ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  invoke fastcc void @"_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$proc_macro2..TokenStream$GT$$GT$17h1879c741e64e6fffE"(ptr noalias noundef align 8 dereferenceable(24) %i.bd)
          to label %bb.bg unwind label %bb.o

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  br label %bb.hg

bb.bh:                                            ; preds = %bb.aj
  invoke void @_ZN5quote9__private10push_ident17h8c0ebbdb8d9fef65E(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.as, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @139, i64 noundef 7)
          to label %bb.bj unwind label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.fm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr50drop_in_place$LT$proc_macro2..imp..TokenStream$GT$17hb0e40aff324c4c1bE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.as)
          to label %.body156 unwind label %bb.aw

bb.bj:                                            ; preds = %bb.bh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aw, ptr noundef nonnull align 8 dereferenceable(32) %i.as, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  br label %bb.as

bb.bk:                                            ; preds = %bb.at, %bb.as
  %i.fn = load ptr, ptr %i.bv, align 8, !alias.scope !3892, !noalias !3893, !nonnull !69, !noundef !69
  %i.fo = getelementptr inbounds nuw [32 x i8], ptr %i.fn, i64 %i.fb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.fo, ptr noundef nonnull align 8 dereferenceable(32) %i.aw, i64 32, i1 false)
  %i.fp = add i64 %i.fb, 1
  store i64 %i.fp, ptr %i.bu, align 8, !alias.scope !3892, !noalias !3893
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  %i.fq = load i64, ptr %i.ax, align 8, !range !75, !noundef !69
  %.not96 = icmp eq i64 %i.fq, 40                 ; 5 uses
  br i1 %.not96, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.ap, ptr noundef nonnull align 8 dereferenceable(176) %i.ax, i64 176, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  invoke void @_ZN11proc_macro211TokenStream3new17h519b395672087979E(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.ao)
          to label %bb.bo unwind label %bb.bn

bb.bm:                                            ; preds = %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  invoke void @_ZN11proc_macro211TokenStream3new17h519b395672087979E(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.an)
          to label %bb.cc unwind label %.loopexit543

"_ZN4core3ptr45drop_in_place$LT$proc_macro2..TokenStream$GT$17h0e47506e1e196136E.exit162": ; preds = %bb.bp, %bb.bn
  %.pn = phi { ptr, i32 } [ %i.fr, %bb.bn ], [ %i.fs, %bb.bp ]
  invoke fastcc void @"_ZN4core3ptr36drop_in_place$LT$syn..expr..Expr$GT$17h436cbd68d90d46dfE"(ptr noalias noundef align 8 dereferenceable(176) %i.ap) #30
          to label %.body153 unwind label %bb.aw

bb.bn:                                            ; preds = %bb.bl
  %i.fr = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr45drop_in_place$LT$proc_macro2..TokenStream$GT$17h0e47506e1e196136E.exit162"

bb.bo:                                            ; preds = %bb.bl
  invoke void @_ZN5quote9__private10push_ident17h8c0ebbdb8d9fef65E(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ao, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @141, i64 noundef 8)
          to label %bb.bq unwind label %bb.bp

bb.bp:                                            ; preds = %bb.bv, %bb.bu, %bb.bt, %bb.bs, %bb.br, %bb.bq, %bb.bo
  %i.fs = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr50drop_in_place$LT$proc_macro2..imp..TokenStream$GT$17hb0e40aff324c4c1bE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ao)
          to label %"_ZN4core3ptr45drop_in_place$LT$proc_macro2..TokenStream$GT$17h0e47506e1e196136E.exit162" unwind label %bb.aw

bb.bq:                                            ; preds = %bb.bo
  invoke void @_ZN5quote9__private7push_eq17h711713bccc35594dE(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ao)
          to label %bb.br unwind label %bb.bp

bb.br:                                            ; preds = %bb.bq
  invoke void @_ZN5quote9__private10push_ident17h8c0ebbdb8d9fef65E(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ao, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @197, i64 noundef 5)
          to label %bb.bs unwind label %bb.bp

bb.bs:                                            ; preds = %bb.br
  invoke void @_ZN5quote9__private10push_comma17hab11e583d58d9e45E(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ao)
          to label %bb.bt unwind label %bb.bp

bb.bt:                                            ; preds = %bb.bs
  invoke void @_ZN5quote9__private10push_ident17h8c0ebbdb8d9fef65E(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ao, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @139, i64 noundef 7)
          to label %bb.bu unwind label %bb.bp

bb.bu:                                            ; preds = %bb.bt
  invoke void @_ZN5quote9__private7push_eq17h711713bccc35594dE(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ao)
          to label %bb.bv unwind label %bb.bp

bb.bv:                                            ; preds = %bb.bu
end_hunk_0
begin_hunk_1_@_ZN13routes_macros7request19handle_named_fields17hdd450b48625fee8dE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.ju = load i64, ptr %i.cx, align 8, !alias.scope !3921, !noalias !3922, !noundef !69 ; 3 uses
  %i.jv = load i64, ptr %i.cu, align 8, !range !71, !alias.scope !3921, !noalias !3922, !noundef !69
  %i.jw = icmp eq i64 %i.ju, %i.jv
  br i1 %i.jw, label %bb.fx, label %bb.ga

bb.fx:                                            ; preds = %bb.fw
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h7a8ab8277b7561e8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cu, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @211)
          to label %bb.ga unwind label %bb.fy, !noalias !3923

bb.fy:                                            ; preds = %bb.fx
  %i.jx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr41drop_in_place$LT$syn..attr..Attribute$GT$17h5db79786a2f21ab2E"(ptr noalias noundef nonnull align 8 dereferenceable(256) %i.n) #30
          to label %.body153 unwind label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %i.jy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #31
  unreachable

bb.ga:                                            ; preds = %bb.fx, %bb.fw
  %i.jz = load ptr, ptr %i.cv, align 8, !alias.scope !3921, !noalias !3922, !nonnull !69, !noundef !69
  %i.ka = getelementptr inbounds nuw [256 x i8], ptr %i.jz, i64 %i.ju
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.ka, ptr noundef nonnull align 8 dereferenceable(256) %i.n, i64 256, i1 false)
  %i.kb = add i64 %i.ju, 1
  store i64 %i.kb, ptr %i.cx, align 8, !alias.scope !3921, !noalias !3922
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.ff

"_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$proc_macro2..TokenStream$GT$$GT$17h1879c741e64e6fffE.exit": ; preds = %bb.fj, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h471cb028e85841f0E.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  call void @llvm.experimental.noalias.scope.decl(metadata !3924)
  %i.kc = icmp eq i64 %.val1.i239, 0
  br i1 %i.kc, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h471cb028e85841f0E.exit.i247", label %.lr.ph3764

"_ZN4core3ptr45drop_in_place$LT$proc_macro2..TokenStream$GT$17h0e47506e1e196136E.exit.i.i.i240": ; preds = %.lr.ph3764
  %i.kd = icmp eq i64 %i.kf, %.val1.i239
  br i1 %i.kd, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h471cb028e85841f0E.exit.i247", label %.lr.ph3764

.lr.ph3764:                                       ; preds = %"_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$proc_macro2..TokenStream$GT$$GT$17h1879c741e64e6fffE.exit", %"_ZN4core3ptr45drop_in_place$LT$proc_macro2..TokenStream$GT$17h0e47506e1e196136E.exit.i.i.i240"
  %.sroa.0.0.i.i.i2413763 = phi i64 [ %i.kf, %"_ZN4core3ptr45drop_in_place$LT$proc_macro2..TokenStream$GT$17h0e47506e1e196136E.exit.i.i.i240" ], [ 0, %"_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$proc_macro2..TokenStream$GT$$GT$17h1879c741e64e6fffE.exit" ] ; 2 uses
  %i.ke = getelementptr inbounds nuw [32 x i8], ptr %.val.i238, i64 %.sroa.0.0.i.i.i2413763
  %i.kf = add nuw nsw i64 %.sroa.0.0.i.i.i2413763, 1 ; 4 uses
  invoke fastcc void @"_ZN4core3ptr50drop_in_place$LT$proc_macro2..imp..TokenStream$GT$17hb0e40aff324c4c1bE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ke)
          to label %"_ZN4core3ptr45drop_in_place$LT$proc_macro2..TokenStream$GT$17h0e47506e1e196136E.exit.i.i.i240" unwind label %bb.gb, !noalias !3924

"_ZN4core3ptr45drop_in_place$LT$proc_macro2..TokenStream$GT$17h0e47506e1e196136E.exit7.i.i.i242": ; preds = %.lr.ph3772
  %i.kg = add nuw nsw i64 %.sroa.0.1.i.i.i2433770, 1 ; 2 uses
  %i.kh = icmp eq i64 %i.kg, %.val1.i239
  br i1 %i.kh, label %.body.i244, label %.lr.ph3772

bb.gb:                                            ; preds = %.lr.ph3764
  %i.ki = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.kj = icmp eq i64 %i.kf, %.val1.i239
  br i1 %i.kj, label %.body.i244, label %.lr.ph3772

.lr.ph3772:                                       ; preds = %bb.gb, %"_ZN4core3ptr45drop_in_place$LT$proc_macro2..TokenStream$GT$17h0e47506e1e196136E.exit7.i.i.i242"
  %.sroa.0.1.i.i.i2433770 = phi i64 [ %i.kg, %"_ZN4core3ptr45drop_in_place$LT$proc_macro2..TokenStream$GT$17h0e47506e1e196136E.exit7.i.i.i242" ], [ %i.kf, %bb.gb ] ; 2 uses
  %i.kk = getelementptr inbounds nuw [32 x i8], ptr %.val.i238, i64 %.sroa.0.1.i.i.i2433770
  invoke fastcc void @"_ZN4core3ptr50drop_in_place$LT$proc_macro2..imp..TokenStream$GT$17hb0e40aff324c4c1bE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.kk)
          to label %"_ZN4core3ptr45drop_in_place$LT$proc_macro2..TokenStream$GT$17h0e47506e1e196136E.exit7.i.i.i242" unwind label %bb.gc, !noalias !3924

bb.gc:                                            ; preds = %.lr.ph3772
  %i.kl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #31, !noalias !3924
  unreachable

.body.i244:                                       ; preds = %"_ZN4core3ptr45drop_in_place$LT$proc_macro2..TokenStream$GT$17h0e47506e1e196136E.exit7.i.i.i242", %bb.gb
  %.val4.i245 = load i64, ptr %i.bc, align 8, !range !71, !alias.scope !3924, !noundef !69 ; 2 uses
  %i.km = icmp eq i64 %.val4.i245, 0
  br i1 %i.km, label %.body249, label %bb.gd

bb.gd:                                            ; preds = %.body.i244
  %i.kn = shl nuw i64 %.val4.i245, 5
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i238, i64 noundef %i.kn, i64 noundef range(i64 1, -9223372036854775807) 8) #28, !noalias !3924
  br label %.body249

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h471cb028e85841f0E.exit.i247": ; preds = %"_ZN4core3ptr45drop_in_place$LT$proc_macro2..TokenStream$GT$17h0e47506e1e196136E.exit.i.i.i240", %"_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$proc_macro2..TokenStream$GT$$GT$17h1879c741e64e6fffE.exit"
  %.val2.i248 = load i64, ptr %i.bc, align 8, !range !71, !alias.scope !3924, !noundef !69 ; 2 uses
  %i.ko = icmp eq i64 %.val2.i248, 0
  br i1 %i.ko, label %"_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$proc_macro2..TokenStream$GT$$GT$17h1879c741e64e6fffE.exit251", label %bb.ge

bb.ge:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h471cb028e85841f0E.exit.i247"
  %i.kp = shl nuw i64 %.val2.i248, 5
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i238, i64 noundef %i.kp, i64 noundef range(i64 1, -9223372036854775807) 8) #28, !noalias !3924
  br label %"_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$proc_macro2..TokenStream$GT$$GT$17h1879c741e64e6fffE.exit251"

"_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$proc_macro2..TokenStream$GT$$GT$17h1879c741e64e6fffE.exit251": ; preds = %bb.ge, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h471cb028e85841f0E.exit.i247"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  call void @llvm.experimental.noalias.scope.decl(metadata !3925)
  %.val.i252 = load ptr, ptr %i.bv, align 8, !alias.scope !3925, !nonnull !69, !noundef !69 ; 4 uses
  %i.kq = icmp eq i64 %i.hx, 0
  br i1 %i.kq, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h471cb028e85841f0E.exit.i261", label %.lr.ph3766

"_ZN4core3ptr45drop_in_place$LT$proc_macro2..TokenStream$GT$17h0e47506e1e196136E.exit.i.i.i254": ; preds = %.lr.ph3766
  %i.kr = icmp eq i64 %i.kt, %i.hx
  br i1 %i.kr, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h471cb028e85841f0E.exit.i261", label %.lr.ph3766

.lr.ph3766:                                       ; preds = %"_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$proc_macro2..TokenStream$GT$$GT$17h1879c741e64e6fffE.exit251", %"_ZN4core3ptr45drop_in_place$LT$proc_macro2..TokenStream$GT$17h0e47506e1e196136E.exit.i.i.i254"
  %.sroa.0.0.i.i.i2553765 = phi i64 [ %i.kt, %"_ZN4core3ptr45drop_in_place$LT$proc_macro2..TokenStream$GT$17h0e47506e1e196136E.exit.i.i.i254" ], [ 0, %"_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$proc_macro2..TokenStream$GT$$GT$17h1879c741e64e6fffE.exit251" ] ; 2 uses
  %i.ks = getelementptr inbounds nuw [32 x i8], ptr %.val.i252, i64 %.sroa.0.0.i.i.i2553765
  %i.kt = add nuw nsw i64 %.sroa.0.0.i.i.i2553765, 1 ; 4 uses
  invoke fastcc void @"_ZN4core3ptr50drop_in_place$LT$proc_macro2..imp..TokenStream$GT$17hb0e40aff324c4c1bE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ks)
          to label %"_ZN4core3ptr45drop_in_place$LT$proc_macro2..TokenStream$GT$17h0e47506e1e196136E.exit.i.i.i254" unwind label %bb.gf, !noalias !3925

"_ZN4core3ptr45drop_in_place$LT$proc_macro2..TokenStream$GT$17h0e47506e1e196136E.exit7.i.i.i256": ; preds = %.lr.ph3775
  %i.ku = add nuw nsw i64 %.sroa.0.1.i.i.i2573773, 1 ; 2 uses
  %i.kv = icmp eq i64 %i.ku, %i.hx
  br i1 %i.kv, label %.body.i258, label %.lr.ph3775

bb.gf:                                            ; preds = %.lr.ph3766
  %i.kw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.kx = icmp eq i64 %i.kt, %i.hx
  br i1 %i.kx, label %.body.i258, label %.lr.ph3775

.lr.ph3775:                                       ; preds = %bb.gf, %"_ZN4core3ptr45drop_in_place$LT$proc_macro2..TokenStream$GT$17h0e47506e1e196136E.exit7.i.i.i256"
  %.sroa.0.1.i.i.i2573773 = phi i64 [ %i.ku, %"_ZN4core3ptr45drop_in_place$LT$proc_macro2..TokenStream$GT$17h0e47506e1e196136E.exit7.i.i.i256" ], [ %i.kt, %bb.gf ] ; 2 uses
  %i.ky = getelementptr inbounds nuw [32 x i8], ptr %.val.i252, i64 %.sroa.0.1.i.i.i2573773
  invoke fastcc void @"_ZN4core3ptr50drop_in_place$LT$proc_macro2..imp..TokenStream$GT$17hb0e40aff324c4c1bE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ky)
          to label %"_ZN4core3ptr45drop_in_place$LT$proc_macro2..TokenStream$GT$17h0e47506e1e196136E.exit7.i.i.i256" unwind label %bb.gg, !noalias !3925

bb.gg:                                            ; preds = %.lr.ph3775
  %i.kz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #31, !noalias !3925
  unreachable

.body.i258:                                       ; preds = %"_ZN4core3ptr45drop_in_place$LT$proc_macro2..TokenStream$GT$17h0e47506e1e196136E.exit7.i.i.i256", %bb.gf
  %.val4.i259 = load i64, ptr %i.bd, align 8, !range !71, !alias.scope !3925, !noundef !69 ; 2 uses
  %i.la = icmp eq i64 %.val4.i259, 0
  br i1 %i.la, label %.thread416, label %bb.gh

bb.gh:                                            ; preds = %.body.i258
  %i.lb = shl nuw i64 %.val4.i259, 5
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i252, i64 noundef %i.lb, i64 noundef range(i64 1, -9223372036854775807) 8) #28, !noalias !3925
  br label %.thread416

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h471cb028e85841f0E.exit.i261": ; preds = %"_ZN4core3ptr45drop_in_place$LT$proc_macro2..TokenStream$GT$17h0e47506e1e196136E.exit.i.i.i254", %"_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$proc_macro2..TokenStream$GT$$GT$17h1879c741e64e6fffE.exit251"
  %.val2.i262 = load i64, ptr %i.bd, align 8, !range !71, !alias.scope !3925, !noundef !69 ; 2 uses
  %i.lc = icmp eq i64 %.val2.i262, 0
  br i1 %i.lc, label %"_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$proc_macro2..TokenStream$GT$$GT$17h1879c741e64e6fffE.exit266", label %bb.gi

bb.gi:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h471cb028e85841f0E.exit.i261"
  %i.ld = shl nuw i64 %.val2.i262, 5
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i252, i64 noundef %i.ld, i64 noundef range(i64 1, -9223372036854775807) 8) #28, !noalias !3925
  br label %"_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$proc_macro2..TokenStream$GT$$GT$17h1879c741e64e6fffE.exit266"

"_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$proc_macro2..TokenStream$GT$$GT$17h1879c741e64e6fffE.exit266": ; preds = %bb.gi, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h471cb028e85841f0E.exit.i261"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  %i.le = load ptr, ptr %i.bm, align 8, !alias.scope !3926, !nonnull !69, !noundef !69 ; 3 uses
  %i.lf = load ptr, ptr %.sroa.24.0..sroa_idx.i, align 8, !alias.scope !3926, !nonnull !69, !noundef !69
  %i.lg = icmp eq ptr %i.le, %i.lf
  br i1 %i.lg, label %bb.gj, label %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6b7210d2da128745E.exit.i1862"

"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6b7210d2da128745E.exit.i1862": ; preds = %"_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$proc_macro2..TokenStream$GT$$GT$17h1879c741e64e6fffE.exit266"
  %i.lh = getelementptr inbounds nuw i8, ptr %i.le, i64 320
  store ptr %i.lh, ptr %i.bm, align 8, !alias.scope !3926
  br label %"_ZN103_$LT$syn..punctuated..PrivateIterMut$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h46f48280600bc7e2E.exit1864"

bb.gj:                                            ; preds = %"_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$proc_macro2..TokenStream$GT$$GT$17h1879c741e64e6fffE.exit266"
  %i.li = load ptr, ptr %.sroa.35.0..sroa_idx.i, align 8, !alias.scope !3927, !noalias !3928, !align !70, !noundef !69
  store ptr null, ptr %.sroa.35.0..sroa_idx.i, align 8, !alias.scope !3927, !noalias !3928
  br label %"_ZN103_$LT$syn..punctuated..PrivateIterMut$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h46f48280600bc7e2E.exit1864"

"_ZN103_$LT$syn..punctuated..PrivateIterMut$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h46f48280600bc7e2E.exit1864": ; preds = %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6b7210d2da128745E.exit.i1862", %bb.gj
  %.sroa.0.0.i1.i1863 = phi ptr [ %i.li, %bb.gj ], [ %i.le, %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6b7210d2da128745E.exit.i1862" ] ; 2 uses
  %.not = icmp eq ptr %.sroa.0.0.i1.i1863, null
  br i1 %.not, label %"_ZN92_$LT$syn..punctuated..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h87849192c70c9f12E.exit._crit_edge", label %bb.g

bb.gk:                                            ; preds = %.preheader
  invoke void @_ZN5quote9__private10push_comma17hab11e583d58d9e45E(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.h)
          to label %bb.gl unwind label %.loopexit.loopexit

bb.gl:                                            ; preds = %bb.gk
  invoke void @"_ZN71_$LT$proc_macro2..TokenStream$u20$as$u20$quote..to_tokens..ToTokens$GT$9to_tokens17h4c14116f65c192dfE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.087.0, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.h)
          to label %.preheader unwind label %.loopexit.loopexit, !llvm.loop !3845

bb.gm:                                            ; preds = %.preheader518
  invoke void @_ZN5quote9__private10push_comma17hab11e583d58d9e45E(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.o)
          to label %bb.gn unwind label %.loopexit519.loopexit

bb.gn:                                            ; preds = %bb.gm
  invoke void @"_ZN71_$LT$proc_macro2..TokenStream$u20$as$u20$quote..to_tokens..ToTokens$GT$9to_tokens17h4c14116f65c192dfE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.086.0, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.o)
          to label %.preheader518 unwind label %.loopexit519.loopexit, !llvm.loop !3846

bb.go:                                            ; preds = %.preheader524
  invoke void @_ZN5quote9__private10push_comma17hab11e583d58d9e45E(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.v)
          to label %bb.gp unwind label %.loopexit525.loopexit

bb.gp:                                            ; preds = %bb.go
  invoke void @"_ZN71_$LT$proc_macro2..TokenStream$u20$as$u20$quote..to_tokens..ToTokens$GT$9to_tokens17h4c14116f65c192dfE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.085.0, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.v)
          to label %.preheader524 unwind label %.loopexit525.loopexit, !llvm.loop !3847

.body153.thread:                                  ; preds = %..body153.thread_crit_edge, %bb.gq, %.body153
  %i.lj = phi i64 [ %i.eu, %.body153 ], [ %i.eu, %bb.gq ], [ %.pre1370, %..body153.thread_crit_edge ] ; 2 uses
  %.sroa.066.0513 = phi i8 [ %.sroa.066.0, %.body153 ], [ %.sroa.066.0, %bb.gq ], [ 1, %..body153.thread_crit_edge ]
  %.pn114512 = phi { ptr, i32 } [ %.pn114, %.body153 ], [ %.pn114, %bb.gq ], [ %i.en, %..body153.thread_crit_edge ]
  %i.lk = icmp samesign ugt i64 %i.lj, 40
  %cond = icmp eq i8 %.sroa.066.0513, 0
  %or.cond130 = or i1 %i.lk, %cond
  br i1 %or.cond130, label %"_ZN4core3ptr64drop_in_place$LT$core..option..Option$LT$syn..expr..Expr$GT$$GT$17h585b811856ef5cb3E.exit270", label %bb.gr

bb.gq:                                            ; preds = %.body153
  invoke fastcc void @"_ZN4core3ptr34drop_in_place$LT$syn..ty..Type$GT$17h580a89232a59ced6E"(ptr noalias noundef align 8 dereferenceable(224) %i.az) #30
          to label %.body153.thread unwind label %bb.aw

"_ZN4core3ptr64drop_in_place$LT$core..option..Option$LT$syn..expr..Expr$GT$$GT$17h585b811856ef5cb3E.exit270": ; preds = %.noexc267, %bb.gt, %.body153.thread
  invoke fastcc void @"_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$proc_macro2..TokenStream$GT$$GT$17h1879c741e64e6fffE"(ptr noalias noundef align 8 dereferenceable(24) %i.bb) #30
          to label %.body226 unwind label %bb.aw

bb.gr:                                            ; preds = %.body153.thread
  %i.ll = icmp eq i64 %i.lj, 40
  br i1 %i.ll, label %.noexc267, label %bb.gs

bb.gs:                                            ; preds = %bb.gr
  invoke fastcc void @"_ZN4core3ptr36drop_in_place$LT$syn..expr..Expr$GT$17h436cbd68d90d46dfE"(ptr noalias noundef nonnull align 8 dereferenceable(176) %i.ba)
          to label %.noexc267 unwind label %bb.aw, !inline_history !3

.noexc267:                                        ; preds = %bb.gr, %bb.gs
  %i.lm = load i64, ptr %i.by, align 8, !range !75, !alias.scope !3929, !noundef !69
  %i.ln = icmp eq i64 %i.lm, 40
  br i1 %i.ln, label %"_ZN4core3ptr64drop_in_place$LT$core..option..Option$LT$syn..expr..Expr$GT$$GT$17h585b811856ef5cb3E.exit270", label %bb.gt

bb.gt:                                            ; preds = %.noexc267
  invoke fastcc void @"_ZN4core3ptr36drop_in_place$LT$syn..expr..Expr$GT$17h436cbd68d90d46dfE"(ptr noalias noundef nonnull align 8 dereferenceable(176) %i.by)
          to label %"_ZN4core3ptr64drop_in_place$LT$core..option..Option$LT$syn..expr..Expr$GT$$GT$17h585b811856ef5cb3E.exit270" unwind label %bb.aw, !inline_history !3

bb.gu:                                            ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %i.e, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.hg

bb.gv:                                            ; preds = %.lr.ph
  %i.lo = invoke noundef align 8 dereferenceable_or_null(24) ptr @_ZN3syn4path4Path9get_ident17h065765bfde55475fE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.dc)
          to label %bb.gw unwind label %.thread428.loopexit ; 5 uses

bb.gw:                                            ; preds = %bb.gv
  %.not120 = icmp eq ptr %i.lo, null
  br i1 %.not120, label %.backedge, label %bb.gx

.backedge:                                        ; preds = %bb.gw, %bb.hd
  %i.lp = icmp eq ptr %.sroa.084.1939, %i.cz      ; 2 uses
  %.sroa.084.1.idx = select i1 %i.lp, i64 0, i64 256
  %.sroa.084.1 = getelementptr inbounds nuw i8, ptr %.sroa.084.1939, i64 %.sroa.084.1.idx
  br i1 %i.lp, label %._crit_edge, label %.lr.ph

bb.gx:                                            ; preds = %bb.gw
  %i.lq = invoke fastcc noundef zeroext i1 @"_ZN73_$LT$proc_macro2..imp..Ident$u20$as$u20$core..cmp..PartialEq$LT$T$GT$$GT$2eq17h95d29691888da16aE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.lo, ptr nonnull @124, i64 5)
          to label %bb.gy unwind label %.thread428.loopexit

bb.gy:                                            ; preds = %bb.gx
  br i1 %i.lq, label %bb.ha, label %bb.gz

bb.gz:                                            ; preds = %bb.gy
  %i.lr = invoke fastcc noundef zeroext i1 @"_ZN73_$LT$proc_macro2..imp..Ident$u20$as$u20$core..cmp..PartialEq$LT$T$GT$$GT$2eq17h95d29691888da16aE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.lo, ptr nonnull @117, i64 6)
          to label %bb.hb unwind label %.thread428.loopexit

bb.ha:                                            ; preds = %bb.hd, %bb.hb, %bb.gy
  %i.ls = invoke noundef i32 @_ZN11proc_macro25Ident4span17h745b1de6685fbc24E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.lo)
          to label %bb.he unwind label %.thread428.loopexit.split-lp

bb.hb:                                            ; preds = %bb.gz
  br i1 %i.lr, label %bb.ha, label %bb.hc

bb.hc:                                            ; preds = %bb.hb
  %i.lt = invoke fastcc noundef zeroext i1 @"_ZN73_$LT$proc_macro2..imp..Ident$u20$as$u20$core..cmp..PartialEq$LT$T$GT$$GT$2eq17h95d29691888da16aE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.lo, ptr nonnull @100, i64 6)
          to label %bb.hd unwind label %.thread428.loopexit

bb.hd:                                            ; preds = %bb.hc
  br i1 %i.lt, label %bb.ha, label %.backedge

bb.he:                                            ; preds = %bb.ha
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !3930
  %i.lu = call noundef dereferenceable_or_null(72) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef range(i64 16, 236) 72, i64 noundef range(i64 1, 9) 1) #28, !noalias !3930 ; 4 uses
  %i.lv = icmp eq ptr %i.lu, null
  br i1 %i.lv, label %bb.hf, label %"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h16338ab50a3248f5E.exit.i271"

bb.hf:                                            ; preds = %bb.he
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 range(i64 16, 236) 72, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @278) #29
          to label %.noexc276 unwind label %.thread428.loopexit.split-lp

.noexc276:                                        ; preds = %bb.hf
  unreachable

"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h16338ab50a3248f5E.exit.i271": ; preds = %bb.he
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(72) %i.lu, ptr noundef nonnull readonly align 1 dereferenceable(72) @188, i64 range(i64 16, 236) 72, i1 false), !noalias !3931
  invoke void @"_ZN84_$LT$proc_macro2..Span$u20$as$u20$proc_macro2_diagnostics..diagnostic..MultiSpan$GT$10into_spans17hba0a5edac53d6234E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i32 noundef %i.ls)
          to label %.thread507 unwind label %.thread425, !noalias !3932

.thread425:                                       ; preds = %"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h16338ab50a3248f5E.exit.i271"
  %i.lw = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.lu, i64 noundef 72, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !3933
  br label %.thread428

.thread507:                                       ; preds = %"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h16338ab50a3248f5E.exit.i271"
  %.sroa.6294.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6294.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 72, ptr %0, align 8
  %.sroa.4292.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.lu, ptr %.sroa.4292.0..sroa_idx, align 8
  %.sroa.5293.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 72, ptr %.sroa.5293.0..sroa_idx, align 8
  %.sroa.7295.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %.sroa.7295.0..sroa_idx, align 8
  %.sroa.8296.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.8296.0..sroa_idx, align 8
  %.sroa.9297.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 0, ptr %.sroa.9297.0..sroa_idx, align 8
  %.sroa.10298.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 0, ptr %.sroa.10298.0..sroa_idx, align 8
  invoke fastcc void @"_ZN4core3ptr137drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$routes_macros..request..RequestFieldAttr$C$syn..error..Error$GT$$GT$$GT$17hfc4534a52eaeee93E"(ptr noalias noundef align 8 dereferenceable(648) %i.be)
          to label %bb.hg unwind label %bb.f

bb.hg:                                            ; preds = %bb.y, %bb.gu, %bb.bg, %.thread507
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bm, i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !3934)
  %.val.i283 = load ptr, ptr %i.bg, align 8, !alias.scope !3934, !nonnull !69, !noundef !69 ; 4 uses
  %.val1.i284 = load i64, ptr %i.bh, align 8, !alias.scope !3934, !noundef !69 ; 4 uses
  %i.lx = icmp eq i64 %.val1.i284, 0
  br i1 %i.lx, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd475bbbf1dd39a89E.exit.i", label %.lr.ph3778

bb.hh:                                            ; preds = %.lr.ph3778
  %i.ly = icmp eq i64 %i.ma, %.val1.i284
  br i1 %i.ly, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd475bbbf1dd39a89E.exit.i", label %.lr.ph3778

.lr.ph3778:                                       ; preds = %bb.hg, %bb.hh
  %.sroa.0.0.i.i.i2853776 = phi i64 [ %i.ma, %bb.hh ], [ 0, %bb.hg ] ; 2 uses
  %i.lz = getelementptr inbounds nuw [224 x i8], ptr %.val.i283, i64 %.sroa.0.0.i.i.i2853776
  %i.ma = add i64 %.sroa.0.0.i.i.i2853776, 1      ; 4 uses
  invoke fastcc void @"_ZN4core3ptr34drop_in_place$LT$syn..ty..Type$GT$17h580a89232a59ced6E"(ptr noalias noundef align 8 dereferenceable(224) %i.lz)
          to label %bb.hh unwind label %bb.hj, !noalias !3934

bb.hi:                                            ; preds = %.lr.ph3781
  %i.mb = add i64 %.sroa.0.1.i.i.i2863779, 1      ; 2 uses
  %i.mc = icmp eq i64 %i.mb, %.val1.i284
  br i1 %i.mc, label %.body.i287, label %.lr.ph3781

bb.hj:                                            ; preds = %.lr.ph3778
  %i.md = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.me = icmp eq i64 %i.ma, %.val1.i284
  br i1 %i.me, label %.body.i287, label %.lr.ph3781

.lr.ph3781:                                       ; preds = %bb.hj, %bb.hi
  %.sroa.0.1.i.i.i2863779 = phi i64 [ %i.mb, %bb.hi ], [ %i.ma, %bb.hj ] ; 2 uses
  %i.mf = getelementptr inbounds nuw [224 x i8], ptr %.val.i283, i64 %.sroa.0.1.i.i.i2863779
  invoke fastcc void @"_ZN4core3ptr34drop_in_place$LT$syn..ty..Type$GT$17h580a89232a59ced6E"(ptr noalias noundef align 8 dereferenceable(224) %i.mf) #30
          to label %bb.hi unwind label %bb.hk, !noalias !3934

bb.hk:                                            ; preds = %.lr.ph3781
  %i.mg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #31, !noalias !3934
  unreachable

.body.i287:                                       ; preds = %bb.hi, %bb.hj
  %.val4.i288 = load i64, ptr %i.bf, align 8, !range !71, !alias.scope !3934, !noundef !69 ; 2 uses
  %i.mh = icmp eq i64 %.val4.i288, 0
  br i1 %i.mh, label %common.resume, label %bb.hl

bb.hl:                                            ; preds = %.body.i287
  %i.mi = mul nuw i64 %.val4.i288, 224
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i283, i64 noundef %i.mi, i64 noundef range(i64 1, -9223372036854775807) 8) #28, !noalias !3934
  br label %common.resume

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd475bbbf1dd39a89E.exit.i": ; preds = %bb.hh, %bb.hg
  %.val2.i289 = load i64, ptr %i.bf, align 8, !range !71, !alias.scope !3934, !noundef !69 ; 2 uses
  %i.mj = icmp eq i64 %.val2.i289, 0
  br i1 %i.mj, label %"_ZN4core3ptr57drop_in_place$LT$alloc..vec..Vec$LT$syn..ty..Type$GT$$GT$17hbe85bee6178f501dE.exit", label %bb.hm

bb.hm:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd475bbbf1dd39a89E.exit.i"
  %i.mk = mul nuw i64 %.val2.i289, 224
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i283, i64 noundef %i.mk, i64 noundef range(i64 1, -9223372036854775807) 8) #28, !noalias !3934
  br label %"_ZN4core3ptr57drop_in_place$LT$alloc..vec..Vec$LT$syn..ty..Type$GT$$GT$17hbe85bee6178f501dE.exit"

common.resume:                                    ; preds = %bb.c, %.body.i287, %bb.hl
  %common.resume.op = phi { ptr, i32 } [ %i.md, %.body.i287 ], [ %i.md, %bb.hl ], [ %.pn125, %bb.c ]
  resume { ptr, i32 } %common.resume.op

.thread428:                                       ; preds = %.thread428.loopexit, %.thread428.loopexit.split-lp, %.thread425, %.thread412
  %eh.lpad-body415 = phi { ptr, i32 } [ %i.dw, %.thread412 ], [ %i.lw, %.thread425 ], [ %lpad.loopexit530, %.thread428.loopexit ], [ %lpad.loopexit.split-lp531.a, %.thread428.loopexit.split-lp ]
  invoke fastcc void @"_ZN4core3ptr137drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$routes_macros..request..RequestFieldAttr$C$syn..error..Error$GT$$GT$$GT$17hfc4534a52eaeee93E"(ptr noalias noundef align 8 dereferenceable(648) %i.be) #30
          to label %.thread416 unwind label %bb.aw
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @"_ZN13routes_macros7request19handle_named_fields28_$u7b$$u7b$closure$u7d$$u7d$17h1e2a1128c0fb21ffE"(ptr %.0.val, ptr nofree readonly captures(address, read_provenance) %.8.val, ptr noalias noundef nonnull align 8 dereferenceable(256) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
end_hunk_1
