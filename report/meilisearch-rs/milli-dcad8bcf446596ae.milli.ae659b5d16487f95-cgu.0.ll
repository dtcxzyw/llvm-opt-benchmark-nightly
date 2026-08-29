Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/milli-dcad8bcf446596ae.milli.ae659b5d16487f95-cgu.0?download=true
inline.NumInlined: 106527
inline.NumDeleted: 43100
loop-unroll.NumCompletelyUnrolled: 378
loop-unroll.NumRuntimeUnrolled: 1730
loop-unroll.NumUnrolled: 2138
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@"_ZN120_$LT$milli..update..new..channel..FrameWithHeader$u20$as$u20$core..convert..From$LT$bbqueue..framed..FrameGrantR$GT$$GT$4from17h96fc3dae4a66286aE":bb.a

bb.b:                                             ; preds = %.invoke, %bb.o, %bb.g, %bb.e, %bb.c, %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN67_$LT$bbqueue..bbbuffer..GrantR$u20$as$u20$core..ops..drop..Drop$GT$4drop17he261db421d95d150E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %1)
          to label %"_ZN4core3ptr49drop_in_place$LT$bbqueue..framed..FrameGrantR$GT$17h94679caf0dd665bbE.exit" unwind label %bb.v

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.49)
  %i.e = invoke { ptr, i64 } @"_ZN72_$LT$bbqueue..framed..FrameGrantR$u20$as$u20$core..ops..deref..Deref$GT$5deref17h7dd6b2b94cc1f3aaE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1)
          to label %bb.d unwind label %bb.b       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.f = extractvalue { ptr, i64 } %i.e, 0        ; 3 uses
  %i.g = extractvalue { ptr, i64 } %i.e, 1        ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !67748)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !67751)
  %.not.i = icmp eq i64 %i.g, 0
  br i1 %.not.i, label %bb.e, label %bb.f, !prof !59

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4843) #106
          to label %.noexc unwind label %bb.b

.noexc:                                           ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 1 ; 6 uses
  %i.i = add i64 %i.g, -1                         ; 7 uses
  %i.j = load i8, ptr %i.f, align 1, !alias.scope !67751, !noalias !67748, !noundef !10 ; 2 uses
  switch i8 %i.j, label %bb.g [
    i8 0, label %bb.h
    i8 1, label %bb.i
    i8 2, label %bb.j
    i8 3, label %bb.k
    i8 4, label %bb.l
    i8 5, label %bb.m
  ], !prof !21578

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !67753
  store ptr %i.f, ptr %i.c, align 8, !noalias !67753
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !67753
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !67753
  store ptr %i.c, ptr %i.a, align 8, !noalias !67753
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hac87ed144e9f5206E", ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !67753
  store ptr @4852, ptr %i.b, align 8, !noalias !67753
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.k, align 8, !noalias !67753
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.l, align 8, !noalias !67753
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.a, ptr %i.m, align 8, !noalias !67753
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 1, ptr %i.n, align 8, !noalias !67753
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4853) #106
          to label %.noexc1 unwind label %bb.b

.noexc1:                                          ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.o = icmp ugt i64 %i.i, 3
  br i1 %i.o, label %bb.n, label %.invoke, !prof !119

bb.i:                                             ; preds = %bb.f
  %i.p = icmp ugt i64 %i.i, 3
  br i1 %i.p, label %bb.q, label %.invoke, !prof !119

bb.j:                                             ; preds = %bb.f
  %i.q = icmp ugt i64 %i.i, 7
  br i1 %i.q, label %bb.r, label %.invoke, !prof !119

bb.k:                                             ; preds = %bb.f
  %i.r = icmp ugt i64 %i.i, 7
  br i1 %i.r, label %bb.s, label %.invoke, !prof !119

bb.l:                                             ; preds = %bb.f
  %i.s = icmp ugt i64 %i.i, 3
  br i1 %i.s, label %bb.t, label %.invoke, !prof !119

bb.m:                                             ; preds = %bb.f
  %i.t = icmp ugt i64 %i.i, 3
  br i1 %i.t, label %bb.u, label %.invoke, !prof !119

bb.n:                                             ; preds = %bb.h
  %.val.i = load i32, ptr %i.h, align 1, !alias.scope !67751, !noalias !67748 ; 2 uses
  %i.u = trunc i32 %.val.i to i16
  %i.v = icmp ult i16 %i.u, 17
  %.sroa.4.sroa.4.0.i.i = select i1 %i.v, i32 %.val.i, i32 262161 ; 3 uses
  %i.w = and i32 %.sroa.4.sroa.4.0.i.i, 65535
  %i.x = icmp eq i32 %i.w, 17
  br i1 %i.x, label %bb.o, label %bb.p, !prof !59

bb.o:                                             ; preds = %bb.n
  %.sroa.428.0.extract.shift.i = lshr i32 %.sroa.4.sroa.4.0.i.i, 16
  %.sroa.513.2.extract.trunc.i = trunc i32 %.sroa.428.0.extract.shift.i to i8
  invoke void @_ZN8bytemuck8internal20something_went_wrong17hc1355d392cf88d5bE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @4845, i64 noundef 18, i8 noundef %.sroa.513.2.extract.trunc.i) #106
          to label %.noexc3 unwind label %bb.b

.noexc3:                                          ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.n
  store i32 %.sroa.4.sroa.4.0.i.i, ptr %.sroa.49, align 4, !alias.scope !67748, !noalias !67751
  br label %_ZN5milli6update3new7channel11EntryHeader10from_slice17hb58b88557d5dcef9E.exit

bb.q:                                             ; preds = %bb.i
  %.val43.i = load i32, ptr %i.h, align 1, !alias.scope !67751, !noalias !67748
  %.sroa.49.2..sroa_idx27 = getelementptr inbounds nuw i8, ptr %.sroa.49, i64 2
  store i32 %.val43.i, ptr %.sroa.49.2..sroa_idx27, align 2, !alias.scope !67748, !noalias !67751
  br label %_ZN5milli6update3new7channel11EntryHeader10from_slice17hb58b88557d5dcef9E.exit

bb.r:                                             ; preds = %bb.j
  %.val44.i = load i64, ptr %i.h, align 1, !alias.scope !67751, !noalias !67748
  %.sroa.49.2..sroa_idx24 = getelementptr inbounds nuw i8, ptr %.sroa.49, i64 2
  store i64 %.val44.i, ptr %.sroa.49.2..sroa_idx24, align 2, !alias.scope !67748, !noalias !67751
  br label %_ZN5milli6update3new7channel11EntryHeader10from_slice17hb58b88557d5dcef9E.exit

bb.s:                                             ; preds = %bb.k
  %.val45.i = load i64, ptr %i.h, align 1, !alias.scope !67751, !noalias !67748
  %.sroa.49.2..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.49, i64 2
  store i64 %.val45.i, ptr %.sroa.49.2..sroa_idx, align 2, !alias.scope !67748, !noalias !67751
  br label %_ZN5milli6update3new7channel11EntryHeader10from_slice17hb58b88557d5dcef9E.exit

bb.t:                                             ; preds = %bb.l
  %.val47.i = load i32, ptr %i.h, align 1, !alias.scope !67751, !noalias !67748
  %.sroa.49.2..sroa_idx26 = getelementptr inbounds nuw i8, ptr %.sroa.49, i64 2
  store i32 %.val47.i, ptr %.sroa.49.2..sroa_idx26, align 2, !alias.scope !67748, !noalias !67751
  br label %_ZN5milli6update3new7channel11EntryHeader10from_slice17hb58b88557d5dcef9E.exit

.invoke:                                          ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h
  %i.y = phi i64 [ 4, %bb.l ], [ 8, %bb.k ], [ 8, %bb.j ], [ 4, %bb.i ], [ 4, %bb.h ], [ 4, %bb.m ]
  %i.z = phi ptr [ @4849, %bb.l ], [ @4848, %bb.k ], [ @4847, %bb.j ], [ @4846, %bb.i ], [ @4844, %bb.h ], [ @4850, %bb.m ]
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %i.y, i64 noundef %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.z) #106
          to label %.cont unwind label %bb.b

.cont:                                            ; preds = %.invoke
  unreachable

bb.u:                                             ; preds = %bb.m
  %.val46.i = load i32, ptr %i.h, align 1, !alias.scope !67751, !noalias !67748
  %.sroa.49.2..sroa_idx25 = getelementptr inbounds nuw i8, ptr %.sroa.49, i64 2
  store i32 %.val46.i, ptr %.sroa.49.2..sroa_idx25, align 2, !alias.scope !67748, !noalias !67751
  br label %_ZN5milli6update3new7channel11EntryHeader10from_slice17hb58b88557d5dcef9E.exit

_ZN5milli6update3new7channel11EntryHeader10from_slice17hb58b88557d5dcef9E.exit: ; preds = %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 %i.j, ptr %i.aa, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 42
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.sroa.49.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(10) %.sroa.49, i64 10, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.49)
  ret void

bb.v:                                             ; preds = %bb.b
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #108
  unreachable

"_ZN4core3ptr49drop_in_place$LT$bbqueue..framed..FrameGrantR$GT$17h94679caf0dd665bbE.exit": ; preds = %bb.b
  resume { ptr, i32 } %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN121_$LT$alloc..collections..binary_heap..BinaryHeap$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$6extend17hfb477186a0e52408E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(64) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !10 ; 6 uses
  %i.c = icmp ult i64 %i.b, 768614336404564651
  tail call void @llvm.assume(i1 %i.c)
  %.sroa.07.0.copyload = load ptr, ptr %1, align 8, !alias.scope !67754 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !67754 ; 4 uses
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.59.0.copyload = load i64, ptr %.sroa.59.0..sroa_idx, align 8, !alias.scope !67754 ; 12 uses
  %.sroa.610.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.610.0.copyload = load float, ptr %.sroa.610.0..sroa_idx, align 8, !alias.scope !67754 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !67758)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !67761)
  %i.d = icmp eq i64 %.sroa.59.0.copyload, 0
  br i1 %i.d, label %bb.c, label %bb.d

bb.b:                                             ; preds = %.lr.ph.split.i.i.i.i.i.i, %bb.e, %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call fastcc void @"_ZN4core3ptr146drop_in_place$LT$alloc..collections..binary_heap..RebuildOnDrop$LT$$LP$ordered_float..OrderedFloat$LT$f32$GT$$C$arroy..node_id..NodeId$RP$$GT$$GT$17h123fae1eb80f8ba7E"(ptr nonnull %0, i64 %i.b) #107
  resume { ptr, i32 } %i.e

bb.c:                                             ; preds = %bb.a
  invoke void @_ZN4core9panicking11panic_const23panic_const_div_by_zero17hd4705242238fd5f4E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8540) #106
          to label %.noexc unwind label %bb.b

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.f = udiv i64 %.sroa.4.0.copyload, %.sroa.59.0.copyload ; 6 uses
  %i.g = load i64, ptr %0, align 8, !range !180, !alias.scope !67764, !noalias !67767, !noundef !10
  %i.h = sub nsw i64 %i.g, %i.b
  %i.i = icmp ugt i64 %i.f, %i.h
  br i1 %i.i, label %bb.e, label %bb.f, !prof !59

bb.e:                                             ; preds = %bb.d
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h349f64c010a6cde2E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef %i.f, i64 noundef 4, i64 noundef 12)
          to label %.noexc4 unwind label %bb.b

.noexc4:                                          ; preds = %bb.e
  %.pre.i.i = load i64, ptr %i.a, align 8, !alias.scope !67770, !noalias !67767
  br label %bb.f

bb.f:                                             ; preds = %.noexc4, %bb.d
  %i.j = phi i64 [ %.pre.i.i, %.noexc4 ], [ %i.b, %bb.d ] ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !67770, !noalias !67767, !nonnull !10, !noundef !10 ; 3 uses
  %.not.i.i.i.i.i.i = icmp ugt i64 %.sroa.59.0.copyload, %.sroa.4.0.copyload
  br i1 %.not.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.f
  %i.m = icmp ugt i64 %.sroa.59.0.copyload, 3
  br i1 %i.m, label %.lr.ph.split.us.i.i.i.i.i.i.preheader, label %.lr.ph.split.i.i.i.i.i.i, !prof !119

.lr.ph.split.us.i.i.i.i.i.i.preheader:            ; preds = %.lr.ph.i.i.i.i.i.i
  %xtraiter = and i64 %i.f, 1
  %2 = icmp eq i64 %i.f, 1
  br i1 %2, label %.lr.ph.split.us.i.i.i.i.i.i.epil.preheader, label %.lr.ph.split.us.i.i.i.i.i.i.preheader.new

.lr.ph.split.us.i.i.i.i.i.i.preheader.new:        ; preds = %.lr.ph.split.us.i.i.i.i.i.i.preheader
  %unroll_iter = and i64 %i.f, -2
  br label %.lr.ph.split.us.i.i.i.i.i.i

.lr.ph.split.us.i.i.i.i.i.i:                      ; preds = %bb.i, %.lr.ph.split.us.i.i.i.i.i.i.preheader.new
  %i.n = phi i64 [ %i.j, %.lr.ph.split.us.i.i.i.i.i.i.preheader.new ], [ %i.ad, %bb.i ] ; 3 uses
  %i.o = phi i64 [ %.sroa.4.0.copyload, %.lr.ph.split.us.i.i.i.i.i.i.preheader.new ], [ %i.aa, %bb.i ] ; 3 uses
  %i.p = phi ptr [ %.sroa.07.0.copyload, %.lr.ph.split.us.i.i.i.i.i.i.preheader.new ], [ %i.z, %bb.i ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.split.us.i.i.i.i.i.i.preheader.new ], [ %niter.next.1, %bb.i ]
  %i.q = icmp uge i64 %i.o, %.sroa.59.0.copyload  ; 2 uses
  br i1 %i.q, label %bb.g, label %.lr.ph.split.us.i.i.i.i.i.i.1

bb.g:                                             ; preds = %.lr.ph.split.us.i.i.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 %.sroa.59.0.copyload
  %i.s = sub nuw i64 %i.o, %.sroa.59.0.copyload
  %.sroa.02.0.copyload.i.i.i.i.us.i.i.i.i.i.i = load i32, ptr %i.p, align 1, !alias.scope !67771, !noalias !67776
  br label %.lr.ph.split.us.i.i.i.i.i.i.1

.lr.ph.split.us.i.i.i.i.i.i.1:                    ; preds = %bb.g, %.lr.ph.split.us.i.i.i.i.i.i
  %i.t = phi ptr [ %i.r, %bb.g ], [ %i.p, %.lr.ph.split.us.i.i.i.i.i.i ] ; 3 uses
  %i.u = phi i64 [ %i.s, %bb.g ], [ %i.o, %.lr.ph.split.us.i.i.i.i.i.i ] ; 3 uses
  %.sroa.2.0.i.us.i.i.i.i.i.i = phi i8 [ 2, %bb.g ], [ 4, %.lr.ph.split.us.i.i.i.i.i.i ]
  %.sroa.0.0.i.us.i.i.i.i.i.i = phi i32 [ %.sroa.02.0.copyload.i.i.i.i.us.i.i.i.i.i.i, %bb.g ], [ undef, %.lr.ph.split.us.i.i.i.i.i.i ]
  tail call void @llvm.assume(i1 %i.q)
  %i.v = getelementptr inbounds nuw [12 x i8], ptr %i.l, i64 %i.n ; 3 uses
  store float %.sroa.610.0.copyload, ptr %i.v, align 4, !noalias !67793
  %.sroa.424.0..sroa_idx.us.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  store i32 %.sroa.0.0.i.us.i.i.i.i.i.i, ptr %.sroa.424.0..sroa_idx.us.i.i.i.i.i.i, align 4, !noalias !67793
  %.sroa.5.0..sroa_idx.us.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i8 %.sroa.2.0.i.us.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.us.i.i.i.i.i.i, align 4, !noalias !67793
  %i.w = icmp uge i64 %i.u, %.sroa.59.0.copyload  ; 2 uses
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph.split.us.i.i.i.i.i.i.1
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 %.sroa.59.0.copyload
  %i.y = sub nuw i64 %i.u, %.sroa.59.0.copyload
  %.sroa.02.0.copyload.i.i.i.i.us.i.i.i.i.i.i.1 = load i32, ptr %i.t, align 1, !alias.scope !67771, !noalias !67776
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph.split.us.i.i.i.i.i.i.1
  %i.z = phi ptr [ %i.x, %bb.h ], [ %i.t, %.lr.ph.split.us.i.i.i.i.i.i.1 ] ; 2 uses
  %i.aa = phi i64 [ %i.y, %bb.h ], [ %i.u, %.lr.ph.split.us.i.i.i.i.i.i.1 ] ; 2 uses
  %.sroa.2.0.i.us.i.i.i.i.i.i.1 = phi i8 [ 2, %bb.h ], [ 4, %.lr.ph.split.us.i.i.i.i.i.i.1 ]
  %.sroa.0.0.i.us.i.i.i.i.i.i.1 = phi i32 [ %.sroa.02.0.copyload.i.i.i.i.us.i.i.i.i.i.i.1, %bb.h ], [ undef, %.lr.ph.split.us.i.i.i.i.i.i.1 ]
  tail call void @llvm.assume(i1 %i.w)
  %i.ab = getelementptr [12 x i8], ptr %i.l, i64 %i.n ; 3 uses
  %i.ac = getelementptr i8, ptr %i.ab, i64 12
  store float %.sroa.610.0.copyload, ptr %i.ac, align 4, !noalias !67793
  %.sroa.424.0..sroa_idx.us.i.i.i.i.i.i.1 = getelementptr i8, ptr %i.ab, i64 16
  store i32 %.sroa.0.0.i.us.i.i.i.i.i.i.1, ptr %.sroa.424.0..sroa_idx.us.i.i.i.i.i.i.1, align 4, !noalias !67793
  %.sroa.5.0..sroa_idx.us.i.i.i.i.i.i.1 = getelementptr i8, ptr %i.ab, i64 20
  store i8 %.sroa.2.0.i.us.i.i.i.i.i.i.1, ptr %.sroa.5.0..sroa_idx.us.i.i.i.i.i.i.1, align 4, !noalias !67793
  %i.ad = add i64 %i.n, 2                         ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph.split.us.i.i.i.i.i.i

.lr.ph.split.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef 4, i64 noundef %.sroa.59.0.copyload, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6323) #106
          to label %.noexc5 unwind label %bb.b

.noexc5:                                          ; preds = %.lr.ph.split.i.i.i.i.i.i
  unreachable

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.split.us.i.i.i.i.i.i.epil.preheader

.lr.ph.split.us.i.i.i.i.i.i.epil.preheader:       ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.split.us.i.i.i.i.i.i.preheader
  %.epil.init = phi i64 [ %i.j, %.lr.ph.split.us.i.i.i.i.i.i.preheader ], [ %i.ad, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init14 = phi i64 [ %.sroa.4.0.copyload, %.lr.ph.split.us.i.i.i.i.i.i.preheader ], [ %i.aa, %.loopexit.loopexit.unr-lcssa ]
  %.epil.init16 = phi ptr [ %.sroa.07.0.copyload, %.lr.ph.split.us.i.i.i.i.i.i.preheader ], [ %i.z, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod18 = trunc i64 %i.f to i1
  tail call void @llvm.assume(i1 %lcmp.mod18)
  %i.ae = icmp uge i64 %.epil.init14, %.sroa.59.0.copyload ; 2 uses
  br i1 %i.ae, label %bb.j, label %.loopexit.loopexit.epilog-lcssa

bb.j:                                             ; preds = %.lr.ph.split.us.i.i.i.i.i.i.epil.preheader
  %.sroa.02.0.copyload.i.i.i.i.us.i.i.i.i.i.i.epil = load i32, ptr %.epil.init16, align 1, !alias.scope !67771, !noalias !67776
  br label %.loopexit.loopexit.epilog-lcssa

.loopexit.loopexit.epilog-lcssa:                  ; preds = %bb.j, %.lr.ph.split.us.i.i.i.i.i.i.epil.preheader
  %.sroa.2.0.i.us.i.i.i.i.i.i.epil = phi i8 [ 2, %bb.j ], [ 4, %.lr.ph.split.us.i.i.i.i.i.i.epil.preheader ]
  %.sroa.0.0.i.us.i.i.i.i.i.i.epil = phi i32 [ %.sroa.02.0.copyload.i.i.i.i.us.i.i.i.i.i.i.epil, %bb.j ], [ undef, %.lr.ph.split.us.i.i.i.i.i.i.epil.preheader ]
  tail call void @llvm.assume(i1 %i.ae)
  %i.af = getelementptr inbounds nuw [12 x i8], ptr %i.l, i64 %.epil.init ; 3 uses
  store float %.sroa.610.0.copyload, ptr %i.af, align 4, !noalias !67793
  %.sroa.424.0..sroa_idx.us.i.i.i.i.i.i.epil = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  store i32 %.sroa.0.0.i.us.i.i.i.i.i.i.epil, ptr %.sroa.424.0..sroa_idx.us.i.i.i.i.i.i.epil, align 4, !noalias !67793
  %.sroa.5.0..sroa_idx.us.i.i.i.i.i.i.epil = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i8 %.sroa.2.0.i.us.i.i.i.i.i.i.epil, ptr %.sroa.5.0..sroa_idx.us.i.i.i.i.i.i.epil, align 4, !noalias !67793
  %i.ag = add i64 %.epil.init, 1
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit.epilog-lcssa, %.loopexit.loopexit.unr-lcssa, %bb.f
  %.val19.i.i.i.i.i.i = phi i64 [ %i.j, %bb.f ], [ %i.ad, %.loopexit.loopexit.unr-lcssa ], [ %i.ag, %.loopexit.loopexit.epilog-lcssa ]
  store i64 %.val19.i.i.i.i.i.i, ptr %i.a, align 8, !alias.scope !67770, !noalias !67798
  tail call fastcc void @"_ZN4core3ptr146drop_in_place$LT$alloc..collections..binary_heap..RebuildOnDrop$LT$$LP$ordered_float..OrderedFloat$LT$f32$GT$$C$arroy..node_id..NodeId$RP$$GT$$GT$17h123fae1eb80f8ba7E"(ptr nonnull %0, i64 %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN121_$LT$milli..search..facet..facet_sort_ascending..AscendingFacetSort$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4211752fb5fb05ecE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = alloca [112 x i8], align 8               ; 7 uses
  %i.c = alloca [112 x i8], align 8               ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [80 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 15 uses
  %i.g = alloca [56 x i8], align 8                ; 9 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !noundef !10 ; 2 uses
  %.not106 = icmp eq i64 %i.j, 0
  br i1 %.not106, label %._crit_edge, label %.lr.ph107

.lr.ph107:                                        ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 18
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 19
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %.sroa.9.24..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 18
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.210.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.pre = load ptr, ptr %i.h, align 8
  br label %bb.b

._crit_edge:                                      ; preds = %.backedge, %bb.a
  store i64 -9223372036854775807, ptr %0, align 8
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph107, %.backedge
  %i.u = phi ptr [ %.pre, %.lr.ph107 ], [ %i.bl, %.backedge ] ; 3 uses
  %i.v = phi i64 [ %i.j, %.lr.ph107 ], [ %i.bk, %.backedge ] ; 6 uses
  %i.w = getelementptr [112 x i8], ptr %i.u, i64 %i.v ; 4 uses
  %i.x = getelementptr i8, ptr %i.w, i64 -112     ; 2 uses
  %i.y = getelementptr i8, ptr %i.w, i64 -8       ; 3 uses
  %i.z = load i64, ptr %i.y, align 8, !noundef !10 ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.ab = getelementptr i8, ptr %i.w, i64 -88
  %i.ac = load i16, ptr %i.l, align 8             ; 2 uses
  %i.ad = getelementptr i8, ptr %i.w, i64 -96
  br label %bb.d

bb.c:                                             ; preds = %"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17h21b4a76d6f2c4916E.exit43", %._crit_edge
  ret void

bb.d:                                             ; preds = %.lr.ph, %"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17h21b4a76d6f2c4916E.exit33"
  %i.ae = phi i64 [ %i.z, %.lr.ph ], [ %i.br, %"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17h21b4a76d6f2c4916E.exit33" ]
  %i.af = add i64 %i.ae, -1
  store i64 %i.af, ptr %i.y, align 8
  call fastcc void @"_ZN113_$LT$heed..iterator..range..RoRange$LT$KC$C$DC$C$C$C$IM$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9130bffb7916656eE"(ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.g, ptr noalias noundef align 8 dereferenceable(80) %i.ab)
  %i.ag = load i64, ptr %i.k, align 8, !range !72, !noundef !10 ; 5 uses
  %.not21 = icmp eq i64 %i.ag, -9223372036854775807
  br i1 %.not21, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.sroa.0.sroa.0.0.copyload = load ptr, ptr %i.g, align 8 ; 4 uses
  %.sroa.0.sroa.3.0.copyload = load i64, ptr %.sroa.0.sroa.3.0..sroa_idx, align 8 ; 3 uses
  %.sroa.0.sroa.4.0.copyload = load i16, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8 ; 2 uses
  %.sroa.0.sroa.5.0.copyload = load i8, ptr %.sroa.0.sroa.5.0..sroa_idx, align 2 ; 3 uses
  %.sroa.4.sroa.2.0.copyload = load i8, ptr %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %i.ah = icmp eq i64 %i.ag, -9223372036854775808
  br i1 %i.ah, label %bb.f, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h596abacb2e4a5fecE.exit", !prof !59

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !67799
  store ptr %.sroa.0.sroa.0.0.copyload, ptr %i.a, align 8, !noalias !67804
  %.sroa.0.sroa.3.0..sroa_idx52 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.sroa.0.sroa.3.0.copyload, ptr %.sroa.0.sroa.3.0..sroa_idx52, align 8, !noalias !67804
  %.sroa.0.sroa.4.0..sroa_idx54 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i16 %.sroa.0.sroa.4.0.copyload, ptr %.sroa.0.sroa.4.0..sroa_idx54, align 8, !noalias !67804
  %.sroa.0.sroa.5.0..sroa_idx56 = getelementptr inbounds nuw i8, ptr %i.a, i64 18
  store i8 %.sroa.0.sroa.5.0.copyload, ptr %.sroa.0.sroa.5.0..sroa_idx56, align 2, !noalias !67804
  %.sroa.0.sroa.6.0..sroa_idx58 = getelementptr inbounds nuw i8, ptr %i.a, i64 19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %.sroa.0.sroa.6.0..sroa_idx58, ptr noundef nonnull align 1 dereferenceable(5) %.sroa.0.sroa.6.0..sroa_idx, i64 5, i1 false)
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2061, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2060, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @899) #106
          to label %bb.h unwind label %bb.g, !noalias !67805

bb.g:                                             ; preds = %bb.f
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr32drop_in_place$LT$heed..Error$GT$17h5c98466bbbcc9938E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a) #107
          to label %common.resume unwind label %bb.i, !noalias !67805

bb.h:                                             ; preds = %bb.f
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #108, !noalias !67805
  unreachable

common.resume:                                    ; preds = %bb.ae, %bb.al, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.ai, %bb.g ], [ %lpad.phi, %bb.al ], [ %i.cc, %bb.ae ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h596abacb2e4a5fecE.exit": ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, i64 16, i1 false)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.sroa.0.0.copyload) ]
  store i64 %i.ag, ptr %i.f, align 8
  %.not22 = icmp eq i16 %.sroa.0.sroa.4.0.copyload, %i.ac
  br i1 %.not22, label %bb.j, label %bb.k

bb.j:                                             ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h596abacb2e4a5fecE.exit"
  %i.ak = load i64, ptr %i.ad, align 8, !noundef !10 ; 2 uses
  %i.al = icmp ult i64 %i.ak, 288230376151711744
  call void @llvm.assume(i1 %i.al)
  %i.am = icmp eq i64 %i.ak, 0
  br i1 %i.am, label %bb.l, label %bb.p

bb.k:                                             ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h596abacb2e4a5fecE.exit"
  store i64 -9223372036854775807, ptr %0, align 8
  br label %bb.ah

bb.l:                                             ; preds = %bb.j
  call void @llvm.experimental.noalias.scope.decl(metadata !67806)
  call void @llvm.experimental.noalias.scope.decl(metadata !67809)
  %.val4.i.i = load ptr, ptr %.sroa.9.24..sroa_idx, align 8, !alias.scope !67812, !nonnull !10, !noundef !10 ; 2 uses
  %.val5.i.i = load i64, ptr %i.m, align 8, !alias.scope !67812, !noundef !10 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !67813)
  %i.an = icmp eq i64 %.val5.i.i, 0
  br i1 %i.an, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h644353cdfceca5ecE.exit.i.i", label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.l, %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h9098dbb179aa09fdE.exit.i.i.i.i"
  %.sroa.0.010.i.i.i.i = phi i64 [ %i.ap, %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h9098dbb179aa09fdE.exit.i.i.i.i" ], [ 0, %bb.l ] ; 2 uses
  %i.ao = getelementptr inbounds nuw [32 x i8], ptr %.val4.i.i, i64 %.sroa.0.010.i.i.i.i ; 2 uses
  %i.ap = add nuw i64 %.sroa.0.010.i.i.i.i, 1     ; 2 uses
  %.val8.i.i.i.i = load i64, ptr %i.ao, align 8, !range !1428, !alias.scope !67813, !noalias !67812, !noundef !10 ; 2 uses
  %i.aq = getelementptr i8, ptr %i.ao, i64 8
  %.val9.i.i.i.i = load ptr, ptr %i.aq, align 8, !alias.scope !67813, !noalias !67812 ; 4 uses
  switch i64 %.val8.i.i.i.i, label %bb.m [
    i64 -9223372036854775808, label %bb.n
    i64 0, label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h9098dbb179aa09fdE.exit.i.i.i.i"
  ]

bb.m:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ar = shl nuw i64 %.val8.i.i.i.i, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i, i64 noundef %i.ar, i64 noundef range(i64 1, -9223372036854775807) 2) #101, !noalias !67816
  br label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h9098dbb179aa09fdE.exit.i.i.i.i"

bb.n:                                             ; preds = %.lr.ph.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i, i64 noundef 8192, i64 noundef 8) #101, !noalias !67816
  br label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h9098dbb179aa09fdE.exit.i.i.i.i"

"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h9098dbb179aa09fdE.exit.i.i.i.i": ; preds = %bb.n, %bb.m, %.lr.ph.i.i.i.i
  %i.as = icmp eq i64 %i.ap, %.val5.i.i
  br i1 %i.as, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h644353cdfceca5ecE.exit.i.i", label %.lr.ph.i.i.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h644353cdfceca5ecE.exit.i.i": ; preds = %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h9098dbb179aa09fdE.exit.i.i.i.i", %bb.l
  %i.at = icmp eq i64 %i.ag, 0
end_hunk_0
