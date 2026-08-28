Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/crossbeam_channel-f577dbc8a62b13af.crossbeam_channel.9088afb8a5d1370-cgu.0?download=true
inline.NumInlined: 139
inline.NumDeleted: 84
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_RINvNtNtNtNtCscAsMj0W7j8b_3std3sys12thread_local6native4lazy7destroyINtNtCshzWfHUSfYae_4core4cell4CellINtNtB19_6option6OptionNtNtCsM5evIHPibA_17crossbeam_channel7context7ContextEEEB23_:bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73)
  %i.d = load ptr, ptr %0, align 8, !alias.scope !76, !noundef !12 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_RINvNtNtCscAsMj0W7j8b_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native4lazy7destroyINtNtCshzWfHUSfYae_4core4cell4CellINtNtB1D_6option6OptionNtNtCsM5evIHPibA_17crossbeam_channel7context7ContextEEE0EB2x_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = atomicrmw sub ptr %i.d, i64 1 release, align 8, !noalias !77
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.d, label %_RINvNtNtCscAsMj0W7j8b_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native4lazy7destroyINtNtCshzWfHUSfYae_4core4cell4CellINtNtB1D_6option6OptionNtNtCsM5evIHPibA_17crossbeam_channel7context7ContextEEE0EB2x_.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArcNtNtCsM5evIHPibA_17crossbeam_channel7context5InnerE9drop_slowBK_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %0) #22
          to label %_RINvNtNtCscAsMj0W7j8b_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native4lazy7destroyINtNtCshzWfHUSfYae_4core4cell4CellINtNtB1D_6option6OptionNtNtCsM5evIHPibA_17crossbeam_channel7context7ContextEEE0EB2x_.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke fastcc void @_RNvXNvNtNtCscAsMj0W7j8b_3std3sys12thread_local20abort_on_dtor_unwindNtB2_15DtorUnwindGuardNtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop() #24
          to label %.noexc1.i unwind label %bb.f

.noexc1.i:                                        ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtNtCscAsMj0W7j8b_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native4lazy7destroyINtNtCshzWfHUSfYae_4core4cell4CellINtNtB1D_6option6OptionNtNtCsM5evIHPibA_17crossbeam_channel7context7ContextEEE0EB2x_.exit: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: cold inlinehint nonlazybind uwtable
define internal fastcc void @_RNCINvMNtCsM5evIHPibA_17crossbeam_channel7contextNtB5_7Context4withNCNvNtB7_6select10run_select0INtNtCshzWfHUSfYae_4core6option6OptionTjPhEEEs0_0B7_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr nofree captures(none) %.0.val) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = tail call noundef nonnull ptr @_RNvMNtCsM5evIHPibA_17crossbeam_channel7contextNtB2_7Context3new() ; 3 uses
  store ptr %i.c, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.sroa.0.0.copyload = load ptr, ptr %.0.val, align 8 ; 2 uses
  store ptr null, ptr %.0.val, align 8
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %bb.c, label %bb.b, !prof !14

bb.b:                                             ; preds = %bb.a
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  store ptr %.sroa.0.0.copyload, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx, i64 24, i1 false)
  invoke fastcc void @_RNCNvNtCsM5evIHPibA_17crossbeam_channel6select10run_select0B5_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
          to label %bb.g unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #21
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = atomicrmw sub ptr %i.c, i64 1 release, align 8, !noalias !84
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.e, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsM5evIHPibA_17crossbeam_channel7context7ContextEBF_.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArcNtNtCsM5evIHPibA_17crossbeam_channel7context5InnerE9drop_slowBK_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.b) #22
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsM5evIHPibA_17crossbeam_channel7context7ContextEBF_.exit unwind label %bb.i

bb.f:                                             ; preds = %bb.c
  unreachable

bb.g:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.g = atomicrmw sub ptr %i.c, i64 1 release, align 8, !noalias !91
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.h, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsM5evIHPibA_17crossbeam_channel7context7ContextEBF_.exit6

bb.h:                                             ; preds = %bb.g
  fence acquire
  call void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArcNtNtCsM5evIHPibA_17crossbeam_channel7context5InnerE9drop_slowBK_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.b) #22
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsM5evIHPibA_17crossbeam_channel7context7ContextEBF_.exit6

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsM5evIHPibA_17crossbeam_channel7context7ContextEBF_.exit6: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.i:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsM5evIHPibA_17crossbeam_channel7context7ContextEBF_.exit: ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.d
}

; Function Attrs: cold inlinehint nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNCINvMNtCsM5evIHPibA_17crossbeam_channel7contextNtB5_7Context4withNCNvNtB7_6select9run_ready0INtNtCshzWfHUSfYae_4core6option6OptionjEEs0_0B7_(ptr nofree captures(none) %.0.val) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = tail call noundef nonnull ptr @_RNvMNtCsM5evIHPibA_17crossbeam_channel7contextNtB2_7Context3new() ; 3 uses
  store ptr %i.c, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.sroa.0.0.copyload = load ptr, ptr %.0.val, align 8 ; 2 uses
  store ptr null, ptr %.0.val, align 8
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %bb.c, label %bb.b, !prof !14

bb.b:                                             ; preds = %bb.a
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  store ptr %.sroa.0.0.copyload, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, i64 16, i1 false)
  %i.d = invoke fastcc { i64, i64 } @_RNCNvNtCsM5evIHPibA_17crossbeam_channel6select9run_ready0B5_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
          to label %bb.g unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #21
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = atomicrmw sub ptr %i.c, i64 1 release, align 8, !noalias !98
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.e, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsM5evIHPibA_17crossbeam_channel7context7ContextEBF_.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArcNtNtCsM5evIHPibA_17crossbeam_channel7context5InnerE9drop_slowBK_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.b) #22
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsM5evIHPibA_17crossbeam_channel7context7ContextEBF_.exit unwind label %bb.i

bb.f:                                             ; preds = %bb.c
  unreachable

bb.g:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.h = atomicrmw sub ptr %i.c, i64 1 release, align 8, !noalias !105
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.h, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsM5evIHPibA_17crossbeam_channel7context7ContextEBF_.exit6

bb.h:                                             ; preds = %bb.g
  fence acquire
  call void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArcNtNtCsM5evIHPibA_17crossbeam_channel7context5InnerE9drop_slowBK_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.b) #22
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsM5evIHPibA_17crossbeam_channel7context7ContextEBF_.exit6

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsM5evIHPibA_17crossbeam_channel7context7ContextEBF_.exit6: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret { i64, i64 } %i.d

bb.i:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsM5evIHPibA_17crossbeam_channel7context7ContextEBF_.exit: ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvNtCsM5evIHPibA_17crossbeam_channel6select10run_select0B5_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %1, align 8, !nonnull !12, !align !112, !noundef !12 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !range !113, !noundef !12 ; 2 uses
  %i.e = add nsw i32 %i.d, -1000000000
  %i.f = icmp samesign ugt i32 %i.d, 999999999
  %narrow = select i1 %i.f, i32 %i.e, i32 2       ; 2 uses
  %i.g = icmp eq i32 %narrow, 0
  br i1 %i.g, label %bb.b, label %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultuNtNtCsM5evIHPibA_17crossbeam_channel6select8SelectedE6unwrapBM_.exit

bb.b:                                             ; preds = %bb.a
  %.val55 = load ptr, ptr %2, align 8, !nonnull !12, !noundef !12
  %i.h = getelementptr inbounds nuw i8, ptr %.val55, i64 32
  %i.i = cmpxchg ptr %i.h, i64 0, i64 1 acq_rel acquire, align 8 ; 2 uses
  %i.j = extractvalue { i64, i1 } %i.i, 1
  br i1 %i.j, label %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultuNtNtCsM5evIHPibA_17crossbeam_channel6select8SelectedE6unwrapBM_.exit, label %bb.c, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.k = extractvalue { i64, i1 } %i.i, 0         ; 2 uses
  %spec.select.i = tail call i64 @llvm.umin.i64(i64 %i.k, i64 3)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %spec.select.i, ptr %i.a, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.k, ptr %i.l, align 8
  call void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @15, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #25
  unreachable

_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultuNtNtCsM5evIHPibA_17crossbeam_channel6select8SelectedE6unwrapBM_.exit: ; preds = %bb.b, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !12, !align !112, !noundef !12 ; 9 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = load i64, ptr %i.o, align 8, !noundef !12 ; 10 uses
  %.idx = shl nuw nsw i64 %i.p, 5
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 %.idx ; 5 uses
  %i.r = load ptr, ptr %2, align 8, !nonnull !12
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.t = icmp ugt ptr %i.n, inttoptr (i64 2 to ptr)
  %i.u = icmp eq i64 %i.p, 0
  br i1 %i.u, label %.thread63, label %.lr.ph215

bb.d:                                             ; preds = %bb.f
  %3 = icmp eq ptr %i.v, %i.q
  br i1 %3, label %.thread63, label %.lr.ph215

.lr.ph215:                                        ; preds = %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultuNtNtCsM5evIHPibA_17crossbeam_channel6select8SelectedE6unwrapBM_.exit, %bb.d
  %.sroa.0.0214 = phi i64 [ %4, %bb.d ], [ 0, %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultuNtNtCsM5evIHPibA_17crossbeam_channel6select8SelectedE6unwrapBM_.exit ]
  %.sroa.04.0213 = phi ptr [ %i.v, %bb.d ], [ %i.n, %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultuNtNtCsM5evIHPibA_17crossbeam_channel6select8SelectedE6unwrapBM_.exit ] ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.04.0213, i64 32 ; 2 uses
  %4 = add i64 %.sroa.0.0214, 1                   ; 5 uses
  br i1 %i.t, label %bb.e, label %5, !prof !13

5:                                                ; preds = %.lr.ph215
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 25, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #25
  unreachable

bb.e:                                             ; preds = %.lr.ph215
  %i.w = ptrtoint ptr %.sroa.04.0213 to i64
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.04.0213, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !12, !align !112, !noundef !12
  %i.z = load ptr, ptr %.sroa.04.0213, align 8, !nonnull !12, !noundef !12
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.ab = load ptr, ptr %i.aa, align 8, !invariant.load !12, !nonnull !12
  %i.ac = tail call noundef zeroext i1 %i.ab(ptr noundef nonnull %i.z, i64 noundef %i.w, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2) #24
  br i1 %i.ac, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = load atomic i64, ptr %i.s acquire, align 8 ; 4 uses
  switch i64 %i.ad, label %.thread68.a [
    i64 0, label %bb.d
    i64 1, label %.thread68.loopexit229
    i64 2, label %.thread68.loopexit229
  ]

bb.g:                                             ; preds = %bb.e
  %.val = load ptr, ptr %2, align 8, !nonnull !12, !noundef !12
  %i.ae = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.af = cmpxchg ptr %i.ae, i64 0, i64 1 acq_rel acquire, align 8 ; 2 uses
  %i.ag = extractvalue { i64, i1 } %i.af, 1
  br i1 %i.ag, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = extractvalue { i64, i1 } %i.af, 0       ; 2 uses
  %spec.select.i57 = tail call i64 @llvm.umin.i64(i64 %i.ah, i64 3)
  br label %.thread68.a

bb.i:                                             ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.04.0213, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !noundef !12
  br label %.thread68.a

.thread68.loopexit229:                            ; preds = %bb.f, %bb.f
  br label %.thread68.a

.thread68.a:                                      ; preds = %.split.i, %.split.us.i, %bb.f, %.thread68.loopexit229, %bb.h, %.split9.us.loopexit23.i, %.split9.us.loopexit13.i, %bb.o, %bb.i
  %.sroa.12.3 = phi i64 [ %i.ad, %.thread68.loopexit229 ], [ %i.ah, %bb.h ], [ undef, %bb.i ], [ %i.ad, %bb.f ], [ %i.ay, %.split.us.i ], [ undef, %.split9.us.loopexit13.i ], [ %.sroa.7.0.i, %bb.o ], [ undef, %.split9.us.loopexit23.i ], [ %i.az, %.split.i ]
  %.sroa.013.3 = phi i64 [ %i.ad, %.thread68.loopexit229 ], [ %spec.select.i57, %bb.h ], [ 1, %bb.i ], [ 3, %bb.f ], [ 3, %.split.us.i ], [ 1, %.split9.us.loopexit13.i ], [ %.sroa.03.0.i, %bb.o ], [ 2, %.split9.us.loopexit23.i ], [ 3, %.split.i ]
  %.sroa.311.0 = phi i64 [ undef, %.thread68.loopexit229 ], [ undef, %bb.h ], [ %i.aj, %bb.i ], [ undef, %bb.f ], [ undef, %.split.us.i ], [ undef, %.split9.us.loopexit13.i ], [ undef, %bb.o ], [ undef, %.split9.us.loopexit23.i ], [ undef, %.split.i ] ; 2 uses
  %.sroa.010.0.not = phi i1 [ true, %.thread68.loopexit229 ], [ true, %bb.h ], [ false, %bb.i ], [ true, %bb.f ], [ true, %.split.us.i ], [ true, %.split9.us.loopexit13.i ], [ true, %bb.o ], [ true, %.split9.us.loopexit23.i ], [ true, %.split.i ]
  %.sroa.0.2 = phi i64 [ %4, %.thread68.loopexit229 ], [ %4, %bb.h ], [ %4, %bb.i ], [ %4, %bb.f ], [ %i.p, %.split.us.i ], [ %i.p, %.split9.us.loopexit13.i ], [ %i.p, %bb.o ], [ %i.p, %.split9.us.loopexit23.i ], [ %i.p, %.split.i ] ; 2 uses
  %i.ak = icmp eq i64 %.sroa.0.2, 0
  br i1 %i.ak, label %._crit_edge113, label %.lr.ph112.preheader.a

.lr.ph112.preheader.a:                            ; preds = %.thread68.a
  %6 = icmp ugt ptr %i.n, inttoptr (i64 2 to ptr)
  br label %.lr.ph112

.thread63:                                        ; preds = %bb.d, %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultuNtNtCsM5evIHPibA_17crossbeam_channel6select8SelectedE6unwrapBM_.exit
  switch i32 %narrow, label %bb.j [
    i32 0, label %.loopexit
    i32 1, label %bb.l
    i32 2, label %bb.k
  ]

default.unreachable:                              ; preds = %._crit_edge113
  unreachable

bb.j:                                             ; preds = %.thread63
  unreachable

bb.k:                                             ; preds = %.thread63
  %i.al = load i64, ptr %i.b, align 8, !noundef !12
  %i.am = load i32, ptr %i.c, align 8, !range !114, !noundef !12
  br label %bb.l

bb.l:                                             ; preds = %.thread63, %bb.k
  %.sroa.624.0 = phi i32 [ %i.am, %bb.k ], [ -1, %.thread63 ] ; 2 uses
  %.sroa.021.0 = phi i64 [ %i.al, %bb.k ], [ undef, %.thread63 ] ; 2 uses
  %i.an = icmp eq i64 %i.p, 0
  br i1 %i.an, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.l, %bb.r
  %.sroa.021.1108 = phi i64 [ %.sroa.021.2, %bb.r ], [ %.sroa.021.0, %bb.l ] ; 4 uses
  %.sroa.624.1107 = phi i32 [ %.sroa.624.2, %bb.r ], [ %.sroa.624.0, %bb.l ] ; 4 uses
  %.sroa.027.0106 = phi ptr [ %i.ao, %bb.r ], [ %i.n, %bb.l ] ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.027.0106, i64 32 ; 2 uses
  %i.ap = load ptr, ptr %.sroa.027.0106, align 8, !nonnull !12, !noundef !12
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.027.0106, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !nonnull !12, !align !112, !noundef !12
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.at = load ptr, ptr %i.as, align 8, !invariant.load !12, !nonnull !12
  %i.au = tail call { i64, i32 } %i.at(ptr noundef nonnull %i.ap) #24 ; 2 uses
  %i.av = extractvalue { i64, i32 } %i.au, 0      ; 4 uses
  %i.aw = extractvalue { i64, i32 } %i.au, 1      ; 4 uses
  %.not53 = icmp eq i32 %i.aw, -1
  br i1 %.not53, label %bb.r, label %bb.q

._crit_edge:                                      ; preds = %bb.r, %bb.l
  %.sroa.624.1.lcssa = phi i32 [ %.sroa.624.0, %bb.l ], [ %.sroa.624.2, %bb.r ] ; 3 uses
  %.sroa.021.1.lcssa = phi i64 [ %.sroa.021.0, %bb.l ], [ %.sroa.021.2, %bb.r ] ; 3 uses
  %.val56 = load ptr, ptr %2, align 8, !nonnull !12, !noundef !12
  %i.ax = getelementptr inbounds nuw i8, ptr %.val56, i64 32 ; 3 uses
  %.not.i60 = icmp eq i32 %.sroa.624.1.lcssa, -1
  br i1 %.not.i60, label %.split.us.i, label %.split.i

.split.us.i:                                      ; preds = %._crit_edge, %bb.m
  %i.ay = load atomic i64, ptr %i.ax acquire, align 8 ; 2 uses
  switch i64 %i.ay, label %.thread68.a [
    i64 0, label %bb.m
    i64 1, label %.split9.us.loopexit13.i
    i64 2, label %.split9.us.loopexit23.i
  ]

bb.m:                                             ; preds = %.split.us.i
  tail call void @_RNvNtNtCscAsMj0W7j8b_3std6thread9functions4park()
  br label %.split.us.i

.split.i:                                         ; preds = %._crit_edge, %bb.p
  %i.az = load atomic i64, ptr %i.ax acquire, align 8 ; 2 uses
  switch i64 %i.az, label %.thread68.a [
    i64 0, label %bb.n
    i64 1, label %.split9.us.loopexit13.i
    i64 2, label %.split9.us.loopexit23.i
  ]

bb.n:                                             ; preds = %.split.i
  %i.ba = tail call { i64, i32 } @_RNvMNtCscAsMj0W7j8b_3std4timeNtB2_7Instant3now() ; 2 uses
  %i.bb = extractvalue { i64, i32 } %i.ba, 0      ; 3 uses
  %i.bc = extractvalue { i64, i32 } %i.ba, 1      ; 2 uses
  %i.bd = icmp eq i64 %i.bb, %.sroa.021.1.lcssa
  %i.be = icmp slt i64 %i.bb, %.sroa.021.1.lcssa
  %i.bf = icmp samesign ult i32 %i.bc, %.sroa.624.1.lcssa
  %spec.select.i61 = select i1 %i.bd, i1 %i.bf, i1 %i.be
  br i1 %spec.select.i61, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bg = cmpxchg ptr %i.ax, i64 0, i64 1 acq_rel acquire, align 8 ; 2 uses
  %i.bh = extractvalue { i64, i1 } %i.bg, 1       ; 2 uses
  %i.bi = extractvalue { i64, i1 } %i.bg, 0       ; 2 uses
  %spec.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.bi, i64 3)
  %.sroa.7.0.i = select i1 %i.bh, i64 undef, i64 %i.bi
  %.sroa.03.0.i = select i1 %i.bh, i64 1, i64 %spec.select.i.i
  br label %.thread68.a

bb.p:                                             ; preds = %bb.n
  %i.bj = tail call { i64, i32 } @_RNvXs3_NtCscAsMj0W7j8b_3std4timeNtB5_7InstantNtNtNtCshzWfHUSfYae_4core3ops5arith3Sub3sub(i64 noundef %.sroa.021.1.lcssa, i32 noundef range(i32 -1, 1000000000) %.sroa.624.1.lcssa, i64 noundef %i.bb, i32 noundef %i.bc) ; 2 uses
  %i.bk = extractvalue { i64, i32 } %i.bj, 0
  %i.bl = extractvalue { i64, i32 } %i.bj, 1
  tail call void @_RNvNtNtCscAsMj0W7j8b_3std6thread9functions12park_timeout(i64 noundef %i.bk, i32 noundef %i.bl)
  br label %.split.i

.split9.us.loopexit13.i:                          ; preds = %.split.i, %.split.us.i
  br label %.thread68.a

.split9.us.loopexit23.i:                          ; preds = %.split.i, %.split.us.i
  br label %.thread68.a

bb.q:                                             ; preds = %.lr.ph
  %.not54 = icmp eq i32 %.sroa.624.1107, -1
  br i1 %.not54, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.s, %bb.q, %.lr.ph
  %.sroa.624.2 = phi i32 [ %.sroa.624.1107, %.lr.ph ], [ %..i, %bb.s ], [ %i.aw, %bb.q ] ; 2 uses
  %.sroa.021.2 = phi i64 [ %.sroa.021.1108, %.lr.ph ], [ %.2.i, %bb.s ], [ %i.av, %bb.q ] ; 2 uses
  %i.bm = icmp eq ptr %i.ao, %i.q
  br i1 %i.bm, label %._crit_edge, label %.lr.ph

bb.s:                                             ; preds = %bb.q
  %i.bn = icmp eq i64 %.sroa.021.1108, %i.av
  %i.bo = icmp samesign ult i32 %.sroa.624.1107, %i.aw
  %i.bp = icmp slt i64 %.sroa.021.1108, %i.av
  %i.bq = select i1 %i.bn, i1 %i.bo, i1 %i.bp     ; 2 uses
  %..i = select i1 %i.bq, i32 %.sroa.624.1107, i32 %i.aw
  %.2.i = select i1 %i.bq, i64 %.sroa.021.1108, i64 %i.av
  br label %bb.r

.lr.ph112:                                        ; preds = %.lr.ph112.preheader.a, %11
  %.sroa.035.0111 = phi ptr [ %16, %11 ], [ %i.n, %.lr.ph112.preheader.a ] ; 5 uses
  %.sroa.537.0110 = phi i64 [ %7, %11 ], [ %.sroa.0.2, %.lr.ph112.preheader.a ]
  %7 = add i64 %.sroa.537.0110, -1                ; 2 uses
  %8 = icmp eq ptr %.sroa.035.0111, %i.q
  br i1 %8, label %._crit_edge113, label %10

._crit_edge113:                                   ; preds = %11, %.lr.ph112, %.thread68.a
  switch i64 %.sroa.013.3, label %default.unreachable [
    i64 0, label %bb.u
    i64 1, label %bb.v
    i64 2, label %.loopexit
    i64 3, label %.preheader72
  ], !prof !115

.preheader72:                                     ; preds = %._crit_edge113
  %i.br = icmp eq i64 %i.p, 0
  br i1 %i.br, label %.loopexit, label %.lr.ph116

.lr.ph116:                                        ; preds = %.preheader72
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8, !nonnull !12, !align !112
  %9 = icmp ugt ptr %i.n, inttoptr (i64 2 to ptr)
  br label %bb.z

10:                                               ; preds = %.lr.ph112
  br i1 %6, label %11, label %bb.t, !prof !13

bb.t:                                             ; preds = %10
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 25, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #25
  unreachable

11:                                               ; preds = %10
  %12 = ptrtoint ptr %.sroa.035.0111 to i64
  %13 = getelementptr inbounds nuw i8, ptr %.sroa.035.0111, i64 8
  %14 = load ptr, ptr %13, align 8, !nonnull !12, !align !112, !noundef !12
  %15 = load ptr, ptr %.sroa.035.0111, align 8, !nonnull !12, !noundef !12
  %16 = getelementptr inbounds nuw i8, ptr %.sroa.035.0111, i64 32
  %17 = getelementptr inbounds nuw i8, ptr %14, i64 48
  %18 = load ptr, ptr %17, align 8, !invariant.load !12, !nonnull !12
  tail call void %18(ptr noundef nonnull %15, i64 noundef %12) #24
  %19 = icmp eq i64 %7, 0
  br i1 %19, label %._crit_edge113, label %.lr.ph112

bb.u:                                             ; preds = %._crit_edge113
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #25
  unreachable

bb.v:                                             ; preds = %._crit_edge113
  %i.bu = icmp eq i64 %i.p, 0
  %or.cond = or i1 %.sroa.010.0.not, %i.bu
  br i1 %or.cond, label %.loopexit, label %.lr.ph118

.lr.ph118:                                        ; preds = %bb.v
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bw = load ptr, ptr %i.bv, align 8, !nonnull !12, !align !112
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph118, %bb.x
  %.sroa.040.0117 = phi ptr [ %i.n, %.lr.ph118 ], [ %i.bx, %bb.x ] ; 5 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.040.0117, i64 32 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.040.0117, i64 16
  %i.bz = load i64, ptr %i.by, align 8, !noundef !12
  %i.ca = icmp eq i64 %i.bz, %.sroa.311.0
  br i1 %i.ca, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.y, %bb.w
  %i.cb = icmp eq ptr %i.bx, %i.q
  br i1 %i.cb, label %.loopexit, label %bb.w

bb.y:                                             ; preds = %bb.w
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.040.0117, i64 24
  %i.cd = load ptr, ptr %i.cc, align 8, !noundef !12
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.040.0117, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !nonnull !12, !align !112, !noundef !12
  %i.cg = load ptr, ptr %.sroa.040.0117, align 8, !nonnull !12, !noundef !12
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  %i.ci = load ptr, ptr %i.ch, align 8, !invariant.load !12, !nonnull !12
  %i.cj = tail call noundef zeroext i1 %i.ci(ptr noundef nonnull %i.cg, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.bw) #24
  br i1 %i.cj, label %.loopexit.sink.split, label %bb.x

bb.z:                                             ; preds = %.lr.ph116, %bb.ab
  %.sroa.045.0115 = phi ptr [ %i.n, %.lr.ph116 ], [ %i.ck, %bb.ab ] ; 6 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.045.0115, i64 32 ; 2 uses
  br i1 %9, label %20, label %bb.aa, !prof !13

bb.aa:                                            ; preds = %bb.z
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 25, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #25
  unreachable

20:                                               ; preds = %bb.z
  %21 = ptrtoint ptr %.sroa.045.0115 to i64
  %22 = icmp eq i64 %.sroa.12.3, %21
  br i1 %22, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.ac, %20
  %i.cl = icmp eq ptr %i.ck, %i.q
  br i1 %i.cl, label %.loopexit, label %bb.z

bb.ac:                                            ; preds = %20
  %i.cm = load ptr, ptr %.sroa.045.0115, align 8, !nonnull !12, !noundef !12
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.045.0115, i64 8
  %i.co = load ptr, ptr %i.cn, align 8, !nonnull !12, !align !112, !noundef !12
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 56
  %i.cq = load ptr, ptr %i.cp, align 8, !invariant.load !12, !nonnull !12
  %i.cr = tail call noundef zeroext i1 %i.cq(ptr noundef nonnull %i.cm, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.bt, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2) #24
  br i1 %i.cr, label %bb.ad, label %bb.ab

bb.ad:                                            ; preds = %bb.ac
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.045.0115, i64 16
  %i.ct = load i64, ptr %i.cs, align 8, !noundef !12
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.045.0115, i64 24
  %i.cv = load ptr, ptr %i.cu, align 8, !noundef !12
  br label %.loopexit.sink.split

.loopexit.sink.split:                             ; preds = %bb.y, %bb.ad
  %.sroa.311.0.sink = phi i64 [ %i.ct, %bb.ad ], [ %.sroa.311.0, %bb.y ]
  %.lcssa.sink = phi ptr [ %i.cv, %bb.ad ], [ %i.cd, %bb.y ]
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.311.0.sink, ptr %i.cw, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.lcssa.sink, ptr %i.cx, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ab, %bb.x, %.loopexit.sink.split, %._crit_edge113, %bb.v, %.preheader72, %.thread63
  %.sink = phi i64 [ 0, %.thread63 ], [ 0, %bb.v ], [ 0, %._crit_edge113 ], [ 0, %bb.x ], [ 1, %.loopexit.sink.split ], [ 0, %.preheader72 ], [ 0, %bb.ab ]
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNCNvNtCsM5evIHPibA_17crossbeam_channel6select9run_ready0B5_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !12, !align !112, !noundef !12 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !12 ; 9 uses
  %.idx = shl nuw nsw i64 %i.c, 5
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !nonnull !12
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = icmp ugt ptr %i.a, inttoptr (i64 2 to ptr)
  %i.h = icmp eq i64 %i.c, 0
  br i1 %i.h, label %.thread51, label %.lr.ph181

bb.b:                                             ; preds = %bb.d
  %2 = icmp eq ptr %i.i, %i.d
  br i1 %2, label %.thread51, label %.lr.ph181

.lr.ph181:                                        ; preds = %bb.a, %bb.b
  %.sroa.03.0179 = phi i64 [ %3, %bb.b ], [ 0, %bb.a ]
  %.sroa.05.0178 = phi ptr [ %i.i, %bb.b ], [ %i.a, %bb.a ] ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.05.0178, i64 32 ; 2 uses
  %3 = add i64 %.sroa.03.0179, 1                  ; 5 uses
  br i1 %i.g, label %bb.c, label %4, !prof !13

4:                                                ; preds = %.lr.ph181
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 25, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #25
  unreachable

bb.c:                                             ; preds = %.lr.ph181
  %i.j = ptrtoint ptr %.sroa.05.0178 to i64       ; 3 uses
  %i.k = load ptr, ptr %.sroa.05.0178, align 8, !nonnull !12, !noundef !12
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.05.0178, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !12, !align !112, !noundef !12
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 72
  %i.o = load ptr, ptr %i.n, align 8, !invariant.load !12, !nonnull !12
  %i.p = tail call noundef zeroext i1 %i.o(ptr noundef nonnull %i.k, i64 noundef %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1) #24
  br i1 %i.p, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = load atomic i64, ptr %i.f acquire, align 8 ; 4 uses
  switch i64 %i.q, label %.thread56.a [
    i64 0, label %bb.b
    i64 1, label %.thread56.loopexit195
    i64 2, label %.thread56.loopexit195
  ]

bb.e:                                             ; preds = %bb.c
  %.val = load ptr, ptr %1, align 8, !nonnull !12, !noundef !12
  %i.r = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.s = cmpxchg ptr %i.r, i64 0, i64 %i.j acq_rel acquire, align 8 ; 2 uses
  %i.t = extractvalue { i64, i1 } %i.s, 1
  br i1 %i.t, label %.thread56.a, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = extractvalue { i64, i1 } %i.s, 0         ; 2 uses
  %spec.select.i = tail call i64 @llvm.umin.i64(i64 %i.u, i64 3)
  br label %.thread56.a

.thread56.loopexit195:                            ; preds = %bb.d, %bb.d
  br label %.thread56.a

.thread56.a:                                      ; preds = %.split.i, %.split.us.i, %bb.d, %.thread56.loopexit195, %bb.f, %.split9.us.loopexit23.i, %.split9.us.loopexit13.i, %bb.m, %bb.e
  %.sroa.13.3 = phi i64 [ %i.q, %.thread56.loopexit195 ], [ %i.u, %bb.f ], [ %i.j, %bb.e ], [ %i.q, %bb.d ], [ %i.ao, %.split.us.i ], [ undef, %.split9.us.loopexit13.i ], [ %.sroa.7.0.i, %bb.m ], [ undef, %.split9.us.loopexit23.i ], [ %i.ap, %.split.i ]
  %.sroa.011.3 = phi i64 [ %i.q, %.thread56.loopexit195 ], [ %spec.select.i, %bb.f ], [ 3, %bb.e ], [ 3, %bb.d ], [ 3, %.split.us.i ], [ 1, %.split9.us.loopexit13.i ], [ %.sroa.03.0.i, %bb.m ], [ 2, %.split9.us.loopexit23.i ], [ 3, %.split.i ]
  %.sroa.03.2 = phi i64 [ %3, %.thread56.loopexit195 ], [ %3, %bb.f ], [ %3, %bb.e ], [ %3, %bb.d ], [ %i.c, %.split.us.i ], [ %i.c, %.split9.us.loopexit13.i ], [ %i.c, %bb.m ], [ %i.c, %.split9.us.loopexit23.i ], [ %i.c, %.split.i ] ; 2 uses
  %i.v = icmp eq i64 %.sroa.03.2, 0
  br i1 %i.v, label %._crit_edge97, label %.lr.ph96.preheader.a

.lr.ph96.preheader.a:                             ; preds = %.thread56.a
  %5 = icmp ugt ptr %i.a, inttoptr (i64 2 to ptr)
  br label %.lr.ph96

.thread51:                                        ; preds = %bb.b, %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !12, !align !112, !noundef !12 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load i32, ptr %i.y, align 8, !range !113, !noundef !12 ; 3 uses
  %i.aa = add nsw i32 %i.z, -1000000000
  %i.ab = icmp samesign ugt i32 %i.z, 999999999
  %narrow = select i1 %i.ab, i32 %i.aa, i32 2
  switch i32 %narrow, label %bb.g [
    i32 0, label %bb.h
    i32 1, label %bb.j
    i32 2, label %bb.i
  ], !prof !116

default.unreachable:                              ; preds = %._crit_edge97
  unreachable

bb.g:                                             ; preds = %.thread51
  unreachable

bb.h:                                             ; preds = %.thread51
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #25
  unreachable

bb.i:                                             ; preds = %.thread51
  %i.ac = load i64, ptr %i.x, align 8, !noundef !12
  br label %bb.j

bb.j:                                             ; preds = %.thread51, %bb.i
  %.sroa.624.0 = phi i32 [ %i.z, %bb.i ], [ -1, %.thread51 ] ; 2 uses
  %.sroa.021.0 = phi i64 [ %i.ac, %bb.i ], [ undef, %.thread51 ] ; 2 uses
  %i.ad = icmp eq i64 %i.c, 0
  br i1 %i.ad, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j, %bb.p
  %.sroa.021.192 = phi i64 [ %.sroa.021.2, %bb.p ], [ %.sroa.021.0, %bb.j ] ; 4 uses
  %.sroa.624.191 = phi i32 [ %.sroa.624.2, %bb.p ], [ %.sroa.624.0, %bb.j ] ; 4 uses
  %.sroa.027.090 = phi ptr [ %i.ae, %bb.p ], [ %i.a, %bb.j ] ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.027.090, i64 32 ; 2 uses
  %i.af = load ptr, ptr %.sroa.027.090, align 8, !nonnull !12, !noundef !12
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.027.090, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !nonnull !12, !align !112, !noundef !12
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8, !invariant.load !12, !nonnull !12
  %i.ak = tail call { i64, i32 } %i.aj(ptr noundef nonnull %i.af) #24 ; 2 uses
  %i.al = extractvalue { i64, i32 } %i.ak, 0      ; 4 uses
  %i.am = extractvalue { i64, i32 } %i.ak, 1      ; 4 uses
  %.not46 = icmp eq i32 %i.am, -1
  br i1 %.not46, label %bb.p, label %bb.o

._crit_edge:                                      ; preds = %bb.p, %bb.j
  %.sroa.624.1.lcssa = phi i32 [ %.sroa.624.0, %bb.j ], [ %.sroa.624.2, %bb.p ] ; 3 uses
  %.sroa.021.1.lcssa = phi i64 [ %.sroa.021.0, %bb.j ], [ %.sroa.021.2, %bb.p ] ; 3 uses
  %.val48 = load ptr, ptr %1, align 8, !nonnull !12, !noundef !12
  %i.an = getelementptr inbounds nuw i8, ptr %.val48, i64 32 ; 3 uses
  %.not.i = icmp eq i32 %.sroa.624.1.lcssa, -1
  br i1 %.not.i, label %.split.us.i, label %.split.i

.split.us.i:                                      ; preds = %._crit_edge, %bb.k
  %i.ao = load atomic i64, ptr %i.an acquire, align 8 ; 2 uses
  switch i64 %i.ao, label %.thread56.a [
    i64 0, label %bb.k
    i64 1, label %.split9.us.loopexit13.i
    i64 2, label %.split9.us.loopexit23.i
  ]

bb.k:                                             ; preds = %.split.us.i
  tail call void @_RNvNtNtCscAsMj0W7j8b_3std6thread9functions4park()
  br label %.split.us.i

.split.i:                                         ; preds = %._crit_edge, %bb.n
  %i.ap = load atomic i64, ptr %i.an acquire, align 8 ; 2 uses
  switch i64 %i.ap, label %.thread56.a [
    i64 0, label %bb.l
    i64 1, label %.split9.us.loopexit13.i
    i64 2, label %.split9.us.loopexit23.i
  ]

bb.l:                                             ; preds = %.split.i
  %i.aq = tail call { i64, i32 } @_RNvMNtCscAsMj0W7j8b_3std4timeNtB2_7Instant3now() ; 2 uses
  %i.ar = extractvalue { i64, i32 } %i.aq, 0      ; 3 uses
  %i.as = extractvalue { i64, i32 } %i.aq, 1      ; 2 uses
  %i.at = icmp eq i64 %i.ar, %.sroa.021.1.lcssa
  %i.au = icmp slt i64 %i.ar, %.sroa.021.1.lcssa
  %i.av = icmp samesign ult i32 %i.as, %.sroa.624.1.lcssa
  %spec.select.i49 = select i1 %i.at, i1 %i.av, i1 %i.au
  br i1 %spec.select.i49, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aw = cmpxchg ptr %i.an, i64 0, i64 1 acq_rel acquire, align 8 ; 2 uses
  %i.ax = extractvalue { i64, i1 } %i.aw, 1       ; 2 uses
  %i.ay = extractvalue { i64, i1 } %i.aw, 0       ; 2 uses
  %spec.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.ay, i64 3)
  %.sroa.7.0.i = select i1 %i.ax, i64 undef, i64 %i.ay
  %.sroa.03.0.i = select i1 %i.ax, i64 1, i64 %spec.select.i.i
  br label %.thread56.a

bb.n:                                             ; preds = %bb.l
  %i.az = tail call { i64, i32 } @_RNvXs3_NtCscAsMj0W7j8b_3std4timeNtB5_7InstantNtNtNtCshzWfHUSfYae_4core3ops5arith3Sub3sub(i64 noundef %.sroa.021.1.lcssa, i32 noundef range(i32 -1, 1000000000) %.sroa.624.1.lcssa, i64 noundef %i.ar, i32 noundef %i.as) ; 2 uses
  %i.ba = extractvalue { i64, i32 } %i.az, 0
  %i.bb = extractvalue { i64, i32 } %i.az, 1
  tail call void @_RNvNtNtCscAsMj0W7j8b_3std6thread9functions12park_timeout(i64 noundef %i.ba, i32 noundef %i.bb)
  br label %.split.i

.split9.us.loopexit13.i:                          ; preds = %.split.i, %.split.us.i
  br label %.thread56.a

.split9.us.loopexit23.i:                          ; preds = %.split.i, %.split.us.i
  br label %.thread56.a

bb.o:                                             ; preds = %.lr.ph
  %.not47 = icmp eq i32 %.sroa.624.191, -1
  br i1 %.not47, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.q, %bb.o, %.lr.ph
  %.sroa.624.2 = phi i32 [ %.sroa.624.191, %.lr.ph ], [ %..i, %bb.q ], [ %i.am, %bb.o ] ; 2 uses
  %.sroa.021.2 = phi i64 [ %.sroa.021.192, %.lr.ph ], [ %.2.i, %bb.q ], [ %i.al, %bb.o ] ; 2 uses
  %i.bc = icmp eq ptr %i.ae, %i.d
  br i1 %i.bc, label %._crit_edge, label %.lr.ph

bb.q:                                             ; preds = %bb.o
  %i.bd = icmp eq i64 %.sroa.021.192, %i.al
  %i.be = icmp samesign ult i32 %.sroa.624.191, %i.am
  %i.bf = icmp slt i64 %.sroa.021.192, %i.al
  %i.bg = select i1 %i.bd, i1 %i.be, i1 %i.bf     ; 2 uses
  %..i = select i1 %i.bg, i32 %.sroa.624.191, i32 %i.am
  %.2.i = select i1 %i.bg, i64 %.sroa.021.192, i64 %i.al
  br label %bb.p

.lr.ph96:                                         ; preds = %.lr.ph96.preheader.a, %bb.t
  %.sroa.035.095 = phi ptr [ %13, %bb.t ], [ %i.a, %.lr.ph96.preheader.a ] ; 5 uses
  %.sroa.537.094 = phi i64 [ %6, %bb.t ], [ %.sroa.03.2, %.lr.ph96.preheader.a ]
  %6 = add i64 %.sroa.537.094, -1                 ; 2 uses
  %7 = icmp eq ptr %.sroa.035.095, %i.d
  br i1 %7, label %._crit_edge97, label %bb.r

._crit_edge97:                                    ; preds = %bb.t, %.lr.ph96, %.thread56.a
  switch i64 %.sroa.011.3, label %default.unreachable [
    i64 0, label %16
    i64 1, label %.loopexit
    i64 2, label %.loopexit
    i64 3, label %.preheader.preheader
  ], !prof !115

.preheader.preheader:                             ; preds = %._crit_edge97
  %8 = icmp ugt ptr %i.a, inttoptr (i64 2 to ptr)
  %i.bh = icmp eq i64 %i.c, 0
  br i1 %i.bh, label %.loopexit, label %.lr.ph183

bb.r:                                             ; preds = %.lr.ph96
  br i1 %5, label %bb.t, label %bb.s, !prof !13

bb.s:                                             ; preds = %bb.r
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 25, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #25
  unreachable

bb.t:                                             ; preds = %bb.r
  %9 = ptrtoint ptr %.sroa.035.095 to i64
  %10 = getelementptr inbounds nuw i8, ptr %.sroa.035.095, i64 8
  %11 = load ptr, ptr %10, align 8, !nonnull !12, !align !112, !noundef !12
  %12 = load ptr, ptr %.sroa.035.095, align 8, !nonnull !12, !noundef !12
  %13 = getelementptr inbounds nuw i8, ptr %.sroa.035.095, i64 32
  %14 = getelementptr inbounds nuw i8, ptr %11, i64 80
  %15 = load ptr, ptr %14, align 8, !invariant.load !12, !nonnull !12
  tail call void %15(ptr noundef nonnull %12, i64 noundef %9) #24
  %i.bi = icmp eq i64 %6, 0
  br i1 %i.bi, label %._crit_edge97, label %.lr.ph96

16:                                               ; preds = %._crit_edge97
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #25
  unreachable

.preheader:                                       ; preds = %bb.v
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.040.0182, i64 32 ; 2 uses
  %17 = icmp eq ptr %i.bj, %i.d
  br i1 %17, label %.loopexit, label %.lr.ph183

.lr.ph183:                                        ; preds = %.preheader.preheader, %.preheader
  %.sroa.040.0182 = phi ptr [ %i.bj, %.preheader ], [ %i.a, %.preheader.preheader ] ; 3 uses
  br i1 %8, label %bb.v, label %bb.u, !prof !13

bb.u:                                             ; preds = %.lr.ph183
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 25, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #25
  unreachable

bb.v:                                             ; preds = %.lr.ph183
  %18 = ptrtoint ptr %.sroa.040.0182 to i64
  %19 = icmp eq i64 %.sroa.13.3, %18
  br i1 %19, label %bb.w, label %.preheader

bb.w:                                             ; preds = %bb.v
  %20 = getelementptr inbounds nuw i8, ptr %.sroa.040.0182, i64 16
  %21 = load i64, ptr %20, align 8, !noundef !12
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %.preheader.preheader, %._crit_edge97, %._crit_edge97, %bb.w
  %.sroa.3.0 = phi i64 [ %21, %bb.w ], [ undef, %._crit_edge97 ], [ undef, %._crit_edge97 ], [ undef, %.preheader.preheader ], [ undef, %.preheader ]
  %.sroa.0.0 = phi i64 [ 1, %bb.w ], [ 0, %._crit_edge97 ], [ 0, %._crit_edge97 ], [ 0, %.preheader.preheader ], [ 0, %.preheader ]
  %i.bk = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.bl = insertvalue { i64, i64 } %i.bk, i64 %.sroa.3.0, 1
  ret { i64, i64 } %i.bl
}

; Function Attrs: cold nonlazybind uwtable
define noundef nonnull ptr @_RNvMNtCsM5evIHPibA_17crossbeam_channel7contextNtB2_7Context3new() unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [8 x i8], align 8                 ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = tail call noundef nonnull ptr @_RNvNtNtCscAsMj0W7j8b_3std6thread7current7current() ; 4 uses
  store ptr %i.d, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.e = invoke noundef nonnull ptr @_RNvNtNtCscAsMj0W7j8b_3std6thread7current7current()
          to label %bb.d unwind label %bb.b       ; 3 uses

bb.b:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.g = atomicrmw sub ptr %i.d, i64 1 release, align 8, !noalias !117
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.c, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std6thread6thread6ThreadECsM5evIHPibA_17crossbeam_channel.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArcNtNtNtCscAsMj0W7j8b_3std6thread6thread5InnerNtNtBM_5alloc6SystemE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #22
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std6thread6thread6ThreadECsM5evIHPibA_17crossbeam_channel.exit unwind label %bb.l

bb.d:                                             ; preds = %bb.a
  store ptr %i.e, ptr %i.b, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.j = load i64, ptr %i.i, align 8, !range !126, !noundef !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store ptr %i.d, ptr %i.l, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.j, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, i8 0, i64 16, i1 false)
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #15, !noalias !127
  %i.m = tail call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef range(i64 1, 9223372036854775777) 48, i64 noundef 8) #15, !noalias !127 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.e, label %bb.j, !prof !14

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #21
          to label %.noexc8 unwind label %bb.f

.noexc8:                                          ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = atomicrmw sub ptr %i.d, i64 1 release, align 8, !noalias !130
  %i.q = icmp eq i64 %i.p, 1
  br i1 %i.q, label %bb.g, label %.body

bb.g:                                             ; preds = %bb.f
  fence acquire
  invoke void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArcNtNtNtCscAsMj0W7j8b_3std6thread6thread5InnerNtNtBM_5alloc6SystemE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.l) #22
          to label %.body unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #23
  unreachable

.body:                                            ; preds = %bb.g, %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !143)
  call void @llvm.experimental.noalias.scope.decl(metadata !146)
  call void @llvm.experimental.noalias.scope.decl(metadata !149)
  call void @llvm.experimental.noalias.scope.decl(metadata !152)
  %i.s = load ptr, ptr %i.b, align 8, !alias.scope !155, !nonnull !12, !noundef !12
  %i.t = atomicrmw sub ptr %i.s, i64 1 release, align 8, !noalias !155
  %i.u = icmp eq i64 %i.t, 1
  br i1 %i.u, label %bb.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std6thread6thread6ThreadECsM5evIHPibA_17crossbeam_channel.exit

bb.i:                                             ; preds = %.body
  fence acquire
  invoke void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArcNtNtNtCscAsMj0W7j8b_3std6thread6thread5InnerNtNtBM_5alloc6SystemE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #22
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std6thread6thread6ThreadECsM5evIHPibA_17crossbeam_channel.exit unwind label %bb.l

bb.j:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.m, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.v = atomicrmw sub ptr %i.e, i64 1 release, align 8, !noalias !156
  %i.w = icmp eq i64 %i.v, 1
  br i1 %i.w, label %bb.k, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std6thread6thread6ThreadECsM5evIHPibA_17crossbeam_channel.exit12

bb.k:                                             ; preds = %bb.j
  fence acquire
  call void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArcNtNtNtCscAsMj0W7j8b_3std6thread6thread5InnerNtNtBM_5alloc6SystemE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #22
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std6thread6thread6ThreadECsM5evIHPibA_17crossbeam_channel.exit12

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std6thread6thread6ThreadECsM5evIHPibA_17crossbeam_channel.exit12: ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %i.m

bb.l:                                             ; preds = %bb.i, %bb.c
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std6thread6thread6ThreadECsM5evIHPibA_17crossbeam_channel.exit: ; preds = %.body, %bb.i, %bb.b, %bb.c
  %.pn = phi { ptr, i32 } [ %i.f, %bb.b ], [ %i.f, %bb.c ], [ %i.o, %bb.i ], [ %i.o, %.body ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs4_NtCsM5evIHPibA_17crossbeam_channel6selectNtB5_6Select10new_biased(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #15, !noalias !165
  %i.a = tail call noundef align 8 dereferenceable_or_null(128) ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef range(i64 1, 9223372036854775777) 128, i64 noundef 8) #15, !noalias !165 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_RNvXs6_NtCsM5evIHPibA_17crossbeam_channel6selectNtB5_6SelectNtNtCshzWfHUSfYae_4core7default7Default7default.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef 8, i64 128) #21, !noalias !172
  unreachable

_RNvXs6_NtCsM5evIHPibA_17crossbeam_channel6selectNtB5_6SelectNtNtCshzWfHUSfYae_4core7default7Default7default.exit: ; preds = %bb.a
  store i64 4, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, i8 0, i64 16, i1 false)
  store i8 1, ptr %i.c, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs4_NtCsM5evIHPibA_17crossbeam_channel6selectNtB5_6Select10try_select(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) initializes((80, 84)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !12, !noundef !12
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noundef !12
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load i8, ptr %i.f, align 8, !range !173, !noundef !12
  %i.h = trunc nuw i8 %i.g to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvNtCsM5evIHPibA_17crossbeam_channel6select10run_select(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.a, ptr noalias nofree noundef nonnull align 8 %i.c, i64 noundef %i.e, i64 undef, i32 noundef 1000000000, i1 noundef zeroext %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.j = load i32, ptr %i.i, align 8, !range !174, !noundef !12
  %.not = icmp eq i32 %i.j, -2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.l = load i64, ptr %i.k, align 8, !noundef !12
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.n = load ptr, ptr %i.m, align 8, !noundef !12
  store i64 %i.l, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.n, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 -2, ptr %i.o, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define { i64, i64 } @_RNvMs4_NtCsM5evIHPibA_17crossbeam_channel6selectNtB5_6Select13ready_timeout(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %0, i64 noundef %1, i32 noundef range(i32 0, 1000000000) %2) unnamed_addr #2 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call { i64, i32 } @_RNvMNtCscAsMj0W7j8b_3std4timeNtB2_7Instant3now() ; 2 uses
  %i.c = extractvalue { i64, i32 } %i.b, 0
  %i.d = extractvalue { i64, i32 } %i.b, 1
  store i64 %i.c, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %i.d, ptr %i.e, align 8
  %i.f = call { i64, i32 } @_RNvMNtCscAsMj0W7j8b_3std4timeNtB2_7Instant11checked_add(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, i64 noundef %1, i32 noundef %2) ; 2 uses
  %i.g = extractvalue { i64, i32 } %i.f, 1        ; 2 uses
  %.not = icmp eq i32 %i.g, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = extractvalue { i64, i32 } %i.f, 0
  call void @llvm.experimental.noalias.scope.decl(metadata !175)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
end_hunk_0
