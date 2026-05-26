inline.NumInlined: 10475
inline.NumDeleted: 2844
begin_hunk_0_@_RNCINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB5_7Context4withNCNvMs1_NtB7_4listINtB1b_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB1G_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB1G_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB2d_NtNtB1G_6marker4SendEL_EEEE4recvs_0uEs0_0Cs14kWLkQVSKO_14deltalake_core:bb.a

bb.i:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #56
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.d
}

; Function Attrs: cold inlinehint noreturn nonlazybind uwtable
define internal fastcc void @_RNCINvNtCs2pqxYH9ZEk8_3std3env10remove_varRNtNtCs6Po7BT7Nknu_5alloc6string6StringE0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noundef nonnull %1) unnamed_addr #13 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %1, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str5OsStrNtB6_5Debug3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.42.0..sroa_idx, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.c, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs7_NtNtCs2pqxYH9ZEk8_3std2io5errorNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx, align 8
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @62, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @64) #55
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b) #54
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #56
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.d
}

; Function Attrs: cold inlinehint noreturn nonlazybind uwtable
define internal fastcc void @_RNCINvNtCs2pqxYH9ZEk8_3std3env7set_varRNtNtCs6Po7BT7Nknu_5alloc6string6StringBA_E0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, ptr noundef nonnull %2) unnamed_addr #13 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %2, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str5OsStrNtB6_5Debug3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.42.0..sroa_idx, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %1, ptr %i.c, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str5OsStrNtB6_5Debug3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.46.0..sroa_idx, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.b, ptr %i.d, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr @_RNvXs7_NtNtCs2pqxYH9ZEk8_3std2io5errorNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx, align 8
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @65, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @66) #55
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b) #54
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #56
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.e
}

; Function Attrs: cold inlinehint noreturn nonlazybind uwtable
define internal fastcc void @_RNCINvNtCs2pqxYH9ZEk8_3std3env7set_varReBA_E0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, ptr noundef nonnull %2) unnamed_addr #13 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %2, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str5OsStrNtB6_5Debug3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.42.0..sroa_idx, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %1, ptr %i.c, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str5OsStrNtB6_5Debug3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.46.0..sroa_idx, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.b, ptr %i.d, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr @_RNvXs7_NtNtCs2pqxYH9ZEk8_3std2io5errorNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx, align 8
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @65, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @66) #55
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b) #54
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #56
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB7_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB13_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBZ_IB1S_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3v_5error5ErrorENtNtB13_6marker4SendEL_EEB4q_EE4recvs_0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr %.0.val) unnamed_addr #2 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !3, !align !65, !noundef !3
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !3, !align !28598, !noundef !3 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 256 ; 2 uses
  tail call fastcc void @_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker8register(ptr noundef nonnull align 8 %i.g, i64 noundef %i.d, ptr %.0.val) #57
  %i.h = load atomic i64, ptr %i.f seq_cst, align 128
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 128 ; 2 uses
  %i.j = load atomic i64, ptr %i.i seq_cst, align 128
  %.unshifted.i = xor i64 %i.j, %i.h
  %i.k = icmp ult i64 %.unshifted.i, 2
  br i1 %i.k, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.l = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  %i.m = cmpxchg ptr %i.l, i64 0, i64 1 acq_rel acquire, align 8 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.n = load atomic i64, ptr %i.i seq_cst, align 128
  %i.o = and i64 %i.n, 1
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !3, !align !65, !noundef !3 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8              ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.u = load i32, ptr %i.t, align 8, !range !28599, !noundef !3 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.v = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.0.val, i64 24 ; 3 uses
  %.not.i = icmp eq i32 %i.u, 1000000000
  br i1 %.not.i, label %.split.us.i, label %.split.i

.split.us.i:                                      ; preds = %bb.d, %bb.e
  %i.x = load atomic i64, ptr %i.w acquire, align 8 ; 3 uses
  switch i64 %i.x, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread [
    i64 0, label %bb.e
    i64 1, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
    i64 2, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  ]

bb.e:                                             ; preds = %.split.us.i
  tail call void @_RNvMs_NtNtCs2pqxYH9ZEk8_3std6thread6threadNtB4_6Thread4park(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.v)
  br label %.split.us.i

.split.i:                                         ; preds = %bb.d, %bb.h
  %i.y = load atomic i64, ptr %i.w acquire, align 8 ; 3 uses
  switch i64 %i.y, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread [
    i64 0, label %bb.f
    i64 1, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
    i64 2, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  ]

bb.f:                                             ; preds = %.split.i
  %i.z = tail call { i64, i32 } @_RNvMNtCs2pqxYH9ZEk8_3std4timeNtB2_7Instant3now() ; 2 uses
  %i.aa = extractvalue { i64, i32 } %i.z, 0       ; 3 uses
  %i.ab = extractvalue { i64, i32 } %i.z, 1       ; 2 uses
  %i.ac = icmp eq i64 %i.aa, %i.s
  %i.ad = icmp slt i64 %i.aa, %i.s
  %i.ae = icmp samesign ult i32 %i.ab, %i.u
  %spec.select.i3 = select i1 %i.ac, i1 %i.ae, i1 %i.ad
  br i1 %spec.select.i3, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = cmpxchg ptr %i.w, i64 0, i64 1 acq_rel acquire, align 8
  %.fr = freeze { i64, i1 } %i.af                 ; 2 uses
  %i.ag = extractvalue { i64, i1 } %.fr, 1
  %i.ah = extractvalue { i64, i1 } %.fr, 0
  %spec.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.ah, i64 3)
  br i1 %i.ag, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit

bb.h:                                             ; preds = %bb.f
  %i.ai = tail call { i64, i32 } @_RNvXs3_NtCs2pqxYH9ZEk8_3std4timeNtB5_7InstantNtNtNtCsbvkFyIu7lgC_4core3ops5arith3Sub3sub(i64 noundef %i.s, i32 noundef range(i32 0, 1000000001) %i.u, i64 noundef %i.aa, i32 noundef %i.ab) ; 2 uses
  %i.aj = extractvalue { i64, i32 } %i.ai, 0
  %i.ak = extractvalue { i64, i32 } %i.ai, 1
  tail call void @_RNvMs_NtNtCs2pqxYH9ZEk8_3std6thread6threadNtB4_6Thread12park_timeout(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.v, i64 noundef %i.aj, i32 noundef %i.ak)
  br label %.split.i

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit: ; preds = %.split.i, %.split.i, %.split.us.i, %.split.us.i, %bb.g
  %.sroa.03.1.i = phi i64 [ %spec.select.i.i, %bb.g ], [ %i.x, %.split.us.i ], [ %i.x, %.split.us.i ], [ %i.y, %.split.i ], [ %i.y, %.split.i ]
  switch i64 %.sroa.03.1.i, label %bb.i [
    i64 0, label %bb.j
    i64 1, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3
    i64 2, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3
    i64 3, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread
  ], !prof !28600

bb.i:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  unreachable

bb.j:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69) #59
  unreachable

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3: ; preds = %bb.g, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker10unregister(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %i.g, i64 noundef %i.d) #57
  %i.al = load ptr, ptr %i.a, align 8, !noundef !3
  %.not = icmp eq ptr %i.al, null
  br i1 %.not, label %bb.m, label %bb.k, !prof !6

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread: ; preds = %.split.i, %.split.us.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  ret void

bb.k:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28601)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28604)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28607)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28610)
  %i.am = load ptr, ptr %i.b, align 8, !alias.scope !28613, !nonnull !3, !noundef !3
  %i.an = atomicrmw sub ptr %i.am, i64 1 release, align 8, !noalias !28613
  %i.ao = icmp eq i64 %i.an, 1
  br i1 %i.ao, label %bb.l, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit

bb.l:                                             ; preds = %bb.k
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #58
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread

bb.m:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3
  tail call void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @70) #59
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB7_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB13_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBZ_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3n_5error5ErrorENtNtB13_6marker4SendEL_EEB3Y_EE4recvs_0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr %.0.val) unnamed_addr #2 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !3, !align !65, !noundef !3
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !3, !align !28598, !noundef !3 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 256 ; 2 uses
  tail call fastcc void @_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker8register(ptr noundef nonnull align 8 %i.g, i64 noundef %i.d, ptr %.0.val) #57
  %i.h = load atomic i64, ptr %i.f seq_cst, align 128
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 128 ; 2 uses
  %i.j = load atomic i64, ptr %i.i seq_cst, align 128
  %.unshifted.i = xor i64 %i.j, %i.h
  %i.k = icmp ult i64 %.unshifted.i, 2
  br i1 %i.k, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.l = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  %i.m = cmpxchg ptr %i.l, i64 0, i64 1 acq_rel acquire, align 8 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.n = load atomic i64, ptr %i.i seq_cst, align 128
  %i.o = and i64 %i.n, 1
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !3, !align !65, !noundef !3 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8              ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.u = load i32, ptr %i.t, align 8, !range !28599, !noundef !3 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.v = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.0.val, i64 24 ; 3 uses
  %.not.i = icmp eq i32 %i.u, 1000000000
  br i1 %.not.i, label %.split.us.i, label %.split.i

.split.us.i:                                      ; preds = %bb.d, %bb.e
  %i.x = load atomic i64, ptr %i.w acquire, align 8 ; 3 uses
  switch i64 %i.x, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread [
    i64 0, label %bb.e
    i64 1, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
    i64 2, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  ]

bb.e:                                             ; preds = %.split.us.i
  tail call void @_RNvMs_NtNtCs2pqxYH9ZEk8_3std6thread6threadNtB4_6Thread4park(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.v)
  br label %.split.us.i

.split.i:                                         ; preds = %bb.d, %bb.h
  %i.y = load atomic i64, ptr %i.w acquire, align 8 ; 3 uses
  switch i64 %i.y, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread [
    i64 0, label %bb.f
    i64 1, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
    i64 2, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  ]

bb.f:                                             ; preds = %.split.i
  %i.z = tail call { i64, i32 } @_RNvMNtCs2pqxYH9ZEk8_3std4timeNtB2_7Instant3now() ; 2 uses
  %i.aa = extractvalue { i64, i32 } %i.z, 0       ; 3 uses
  %i.ab = extractvalue { i64, i32 } %i.z, 1       ; 2 uses
  %i.ac = icmp eq i64 %i.aa, %i.s
  %i.ad = icmp slt i64 %i.aa, %i.s
  %i.ae = icmp samesign ult i32 %i.ab, %i.u
  %spec.select.i3 = select i1 %i.ac, i1 %i.ae, i1 %i.ad
  br i1 %spec.select.i3, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = cmpxchg ptr %i.w, i64 0, i64 1 acq_rel acquire, align 8
  %.fr = freeze { i64, i1 } %i.af                 ; 2 uses
  %i.ag = extractvalue { i64, i1 } %.fr, 1
  %i.ah = extractvalue { i64, i1 } %.fr, 0
  %spec.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.ah, i64 3)
  br i1 %i.ag, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit

bb.h:                                             ; preds = %bb.f
  %i.ai = tail call { i64, i32 } @_RNvXs3_NtCs2pqxYH9ZEk8_3std4timeNtB5_7InstantNtNtNtCsbvkFyIu7lgC_4core3ops5arith3Sub3sub(i64 noundef %i.s, i32 noundef range(i32 0, 1000000001) %i.u, i64 noundef %i.aa, i32 noundef %i.ab) ; 2 uses
  %i.aj = extractvalue { i64, i32 } %i.ai, 0
  %i.ak = extractvalue { i64, i32 } %i.ai, 1
  tail call void @_RNvMs_NtNtCs2pqxYH9ZEk8_3std6thread6threadNtB4_6Thread12park_timeout(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.v, i64 noundef %i.aj, i32 noundef %i.ak)
  br label %.split.i

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit: ; preds = %.split.i, %.split.i, %.split.us.i, %.split.us.i, %bb.g
  %.sroa.03.1.i = phi i64 [ %spec.select.i.i, %bb.g ], [ %i.x, %.split.us.i ], [ %i.x, %.split.us.i ], [ %i.y, %.split.i ], [ %i.y, %.split.i ]
  switch i64 %.sroa.03.1.i, label %bb.i [
    i64 0, label %bb.j
    i64 1, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3
    i64 2, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3
    i64 3, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread
  ], !prof !28600

bb.i:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  unreachable

bb.j:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69) #59
  unreachable

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3: ; preds = %bb.g, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker10unregister(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %i.g, i64 noundef %i.d) #57
  %i.al = load ptr, ptr %i.a, align 8, !noundef !3
  %.not = icmp eq ptr %i.al, null
  br i1 %.not, label %bb.m, label %bb.k, !prof !6

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread: ; preds = %.split.i, %.split.us.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  ret void

bb.k:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28614)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28617)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28620)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28623)
  %i.am = load ptr, ptr %i.b, align 8, !alias.scope !28626, !nonnull !3, !noundef !3
  %i.an = atomicrmw sub ptr %i.am, i64 1 release, align 8, !noalias !28626
  %i.ao = icmp eq i64 %i.an, 1
  br i1 %i.ao, label %bb.l, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit

bb.l:                                             ; preds = %bb.k
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #58
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread

bb.m:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3
  tail call void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @70) #59
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB7_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB13_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBZ_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB13_6marker4SendEL_EEB3V_EE4recvs_0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr %.0.val) unnamed_addr #2 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !3, !align !65, !noundef !3
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !3, !align !28598, !noundef !3 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 256 ; 2 uses
  tail call fastcc void @_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker8register(ptr noundef nonnull align 8 %i.g, i64 noundef %i.d, ptr %.0.val) #57
  %i.h = load atomic i64, ptr %i.f seq_cst, align 128
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 128 ; 2 uses
  %i.j = load atomic i64, ptr %i.i seq_cst, align 128
  %.unshifted.i = xor i64 %i.j, %i.h
  %i.k = icmp ult i64 %.unshifted.i, 2
  br i1 %i.k, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.l = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  %i.m = cmpxchg ptr %i.l, i64 0, i64 1 acq_rel acquire, align 8 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.n = load atomic i64, ptr %i.i seq_cst, align 128
  %i.o = and i64 %i.n, 1
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !3, !align !65, !noundef !3 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8              ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.u = load i32, ptr %i.t, align 8, !range !28599, !noundef !3 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.v = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.0.val, i64 24 ; 3 uses
  %.not.i = icmp eq i32 %i.u, 1000000000
  br i1 %.not.i, label %.split.us.i, label %.split.i

.split.us.i:                                      ; preds = %bb.d, %bb.e
  %i.x = load atomic i64, ptr %i.w acquire, align 8 ; 3 uses
  switch i64 %i.x, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread [
    i64 0, label %bb.e
    i64 1, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
    i64 2, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  ]

bb.e:                                             ; preds = %.split.us.i
  tail call void @_RNvMs_NtNtCs2pqxYH9ZEk8_3std6thread6threadNtB4_6Thread4park(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.v)
  br label %.split.us.i

.split.i:                                         ; preds = %bb.d, %bb.h
  %i.y = load atomic i64, ptr %i.w acquire, align 8 ; 3 uses
  switch i64 %i.y, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread [
    i64 0, label %bb.f
    i64 1, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
    i64 2, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  ]

bb.f:                                             ; preds = %.split.i
  %i.z = tail call { i64, i32 } @_RNvMNtCs2pqxYH9ZEk8_3std4timeNtB2_7Instant3now() ; 2 uses
  %i.aa = extractvalue { i64, i32 } %i.z, 0       ; 3 uses
  %i.ab = extractvalue { i64, i32 } %i.z, 1       ; 2 uses
  %i.ac = icmp eq i64 %i.aa, %i.s
  %i.ad = icmp slt i64 %i.aa, %i.s
  %i.ae = icmp samesign ult i32 %i.ab, %i.u
  %spec.select.i3 = select i1 %i.ac, i1 %i.ae, i1 %i.ad
  br i1 %spec.select.i3, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = cmpxchg ptr %i.w, i64 0, i64 1 acq_rel acquire, align 8
  %.fr = freeze { i64, i1 } %i.af                 ; 2 uses
  %i.ag = extractvalue { i64, i1 } %.fr, 1
  %i.ah = extractvalue { i64, i1 } %.fr, 0
  %spec.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.ah, i64 3)
  br i1 %i.ag, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit

bb.h:                                             ; preds = %bb.f
  %i.ai = tail call { i64, i32 } @_RNvXs3_NtCs2pqxYH9ZEk8_3std4timeNtB5_7InstantNtNtNtCsbvkFyIu7lgC_4core3ops5arith3Sub3sub(i64 noundef %i.s, i32 noundef range(i32 0, 1000000001) %i.u, i64 noundef %i.aa, i32 noundef %i.ab) ; 2 uses
  %i.aj = extractvalue { i64, i32 } %i.ai, 0
  %i.ak = extractvalue { i64, i32 } %i.ai, 1
  tail call void @_RNvMs_NtNtCs2pqxYH9ZEk8_3std6thread6threadNtB4_6Thread12park_timeout(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.v, i64 noundef %i.aj, i32 noundef %i.ak)
  br label %.split.i

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit: ; preds = %.split.i, %.split.i, %.split.us.i, %.split.us.i, %bb.g
  %.sroa.03.1.i = phi i64 [ %spec.select.i.i, %bb.g ], [ %i.x, %.split.us.i ], [ %i.x, %.split.us.i ], [ %i.y, %.split.i ], [ %i.y, %.split.i ]
  switch i64 %.sroa.03.1.i, label %bb.i [
    i64 0, label %bb.j
    i64 1, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3
    i64 2, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3
    i64 3, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread
  ], !prof !28600

bb.i:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  unreachable

bb.j:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69) #59
  unreachable

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3: ; preds = %bb.g, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker10unregister(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %i.g, i64 noundef %i.d) #57
  %i.al = load ptr, ptr %i.a, align 8, !noundef !3
  %.not = icmp eq ptr %i.al, null
  br i1 %.not, label %bb.m, label %bb.k, !prof !6

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread: ; preds = %.split.i, %.split.us.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  ret void

bb.k:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28627)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28630)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28633)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28636)
  %i.am = load ptr, ptr %i.b, align 8, !alias.scope !28639, !nonnull !3, !noundef !3
  %i.an = atomicrmw sub ptr %i.am, i64 1 release, align 8, !noalias !28639
  %i.ao = icmp eq i64 %i.an, 1
  br i1 %i.ao, label %bb.l, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit

bb.l:                                             ; preds = %bb.k
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #58
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread

bb.m:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3
  tail call void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @70) #59
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB7_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1C_5error5ErrorEE4recvs_0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr %.0.val) unnamed_addr #2 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !3, !align !65, !noundef !3
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !3, !align !28598, !noundef !3 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 256 ; 2 uses
  tail call fastcc void @_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker8register(ptr noundef nonnull align 8 %i.g, i64 noundef %i.d, ptr %.0.val) #57
  %i.h = load atomic i64, ptr %i.f seq_cst, align 128
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 128 ; 2 uses
  %i.j = load atomic i64, ptr %i.i seq_cst, align 128
  %.unshifted.i = xor i64 %i.j, %i.h
  %i.k = icmp ult i64 %.unshifted.i, 2
  br i1 %i.k, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.l = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  %i.m = cmpxchg ptr %i.l, i64 0, i64 1 acq_rel acquire, align 8 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.n = load atomic i64, ptr %i.i seq_cst, align 128
  %i.o = and i64 %i.n, 1
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !3, !align !65, !noundef !3 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8              ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.u = load i32, ptr %i.t, align 8, !range !28599, !noundef !3 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.v = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.0.val, i64 24 ; 3 uses
  %.not.i = icmp eq i32 %i.u, 1000000000
  br i1 %.not.i, label %.split.us.i, label %.split.i

.split.us.i:                                      ; preds = %bb.d, %bb.e
  %i.x = load atomic i64, ptr %i.w acquire, align 8 ; 3 uses
  switch i64 %i.x, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread [
    i64 0, label %bb.e
    i64 1, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
    i64 2, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  ]

bb.e:                                             ; preds = %.split.us.i
  tail call void @_RNvMs_NtNtCs2pqxYH9ZEk8_3std6thread6threadNtB4_6Thread4park(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.v)
  br label %.split.us.i

.split.i:                                         ; preds = %bb.d, %bb.h
  %i.y = load atomic i64, ptr %i.w acquire, align 8 ; 3 uses
  switch i64 %i.y, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread [
    i64 0, label %bb.f
    i64 1, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
    i64 2, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  ]

bb.f:                                             ; preds = %.split.i
  %i.z = tail call { i64, i32 } @_RNvMNtCs2pqxYH9ZEk8_3std4timeNtB2_7Instant3now() ; 2 uses
  %i.aa = extractvalue { i64, i32 } %i.z, 0       ; 3 uses
  %i.ab = extractvalue { i64, i32 } %i.z, 1       ; 2 uses
  %i.ac = icmp eq i64 %i.aa, %i.s
  %i.ad = icmp slt i64 %i.aa, %i.s
  %i.ae = icmp samesign ult i32 %i.ab, %i.u
  %spec.select.i3 = select i1 %i.ac, i1 %i.ae, i1 %i.ad
  br i1 %spec.select.i3, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = cmpxchg ptr %i.w, i64 0, i64 1 acq_rel acquire, align 8
  %.fr = freeze { i64, i1 } %i.af                 ; 2 uses
  %i.ag = extractvalue { i64, i1 } %.fr, 1
  %i.ah = extractvalue { i64, i1 } %.fr, 0
  %spec.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.ah, i64 3)
  br i1 %i.ag, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit

bb.h:                                             ; preds = %bb.f
  %i.ai = tail call { i64, i32 } @_RNvXs3_NtCs2pqxYH9ZEk8_3std4timeNtB5_7InstantNtNtNtCsbvkFyIu7lgC_4core3ops5arith3Sub3sub(i64 noundef %i.s, i32 noundef range(i32 0, 1000000001) %i.u, i64 noundef %i.aa, i32 noundef %i.ab) ; 2 uses
  %i.aj = extractvalue { i64, i32 } %i.ai, 0
  %i.ak = extractvalue { i64, i32 } %i.ai, 1
  tail call void @_RNvMs_NtNtCs2pqxYH9ZEk8_3std6thread6threadNtB4_6Thread12park_timeout(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.v, i64 noundef %i.aj, i32 noundef %i.ak)
  br label %.split.i

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit: ; preds = %.split.i, %.split.i, %.split.us.i, %.split.us.i, %bb.g
  %.sroa.03.1.i = phi i64 [ %spec.select.i.i, %bb.g ], [ %i.x, %.split.us.i ], [ %i.x, %.split.us.i ], [ %i.y, %.split.i ], [ %i.y, %.split.i ]
  switch i64 %.sroa.03.1.i, label %bb.i [
    i64 0, label %bb.j
    i64 1, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3
    i64 2, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3
    i64 3, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread
  ], !prof !28600

bb.i:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  unreachable

bb.j:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69) #59
  unreachable

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3: ; preds = %bb.g, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker10unregister(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %i.g, i64 noundef %i.d) #57
  %i.al = load ptr, ptr %i.a, align 8, !noundef !3
  %.not = icmp eq ptr %i.al, null
  br i1 %.not, label %bb.m, label %bb.k, !prof !6

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread: ; preds = %.split.i, %.split.us.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  ret void

bb.k:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28640)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28643)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28646)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28649)
  %i.am = load ptr, ptr %i.b, align 8, !alias.scope !28652, !nonnull !3, !noundef !3
  %i.an = atomicrmw sub ptr %i.am, i64 1 release, align 8, !noalias !28652
  %i.ao = icmp eq i64 %i.an, 1
  br i1 %i.ao, label %bb.l, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit

bb.l:                                             ; preds = %bb.k
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #58
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread

bb.m:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3
  tail call void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @70) #59
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB7_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1C_5error5ErrorEE4recvs_0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr %.0.val) unnamed_addr #2 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !3, !align !65, !noundef !3
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !3, !align !28598, !noundef !3 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 256 ; 2 uses
  tail call fastcc void @_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker8register(ptr noundef nonnull align 8 %i.g, i64 noundef %i.d, ptr %.0.val) #57
  %i.h = load atomic i64, ptr %i.f seq_cst, align 128
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 128 ; 2 uses
  %i.j = load atomic i64, ptr %i.i seq_cst, align 128
  %.unshifted.i = xor i64 %i.j, %i.h
  %i.k = icmp ult i64 %.unshifted.i, 2
  br i1 %i.k, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.l = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  %i.m = cmpxchg ptr %i.l, i64 0, i64 1 acq_rel acquire, align 8 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.n = load atomic i64, ptr %i.i seq_cst, align 128
  %i.o = and i64 %i.n, 1
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !3, !align !65, !noundef !3 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8              ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.u = load i32, ptr %i.t, align 8, !range !28599, !noundef !3 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.v = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.0.val, i64 24 ; 3 uses
  %.not.i = icmp eq i32 %i.u, 1000000000
  br i1 %.not.i, label %.split.us.i, label %.split.i

.split.us.i:                                      ; preds = %bb.d, %bb.e
  %i.x = load atomic i64, ptr %i.w acquire, align 8 ; 3 uses
  switch i64 %i.x, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread [
    i64 0, label %bb.e
    i64 1, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
    i64 2, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  ]

bb.e:                                             ; preds = %.split.us.i
  tail call void @_RNvMs_NtNtCs2pqxYH9ZEk8_3std6thread6threadNtB4_6Thread4park(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.v)
  br label %.split.us.i

.split.i:                                         ; preds = %bb.d, %bb.h
  %i.y = load atomic i64, ptr %i.w acquire, align 8 ; 3 uses
  switch i64 %i.y, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread [
    i64 0, label %bb.f
    i64 1, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
    i64 2, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  ]

bb.f:                                             ; preds = %.split.i
  %i.z = tail call { i64, i32 } @_RNvMNtCs2pqxYH9ZEk8_3std4timeNtB2_7Instant3now() ; 2 uses
  %i.aa = extractvalue { i64, i32 } %i.z, 0       ; 3 uses
  %i.ab = extractvalue { i64, i32 } %i.z, 1       ; 2 uses
  %i.ac = icmp eq i64 %i.aa, %i.s
  %i.ad = icmp slt i64 %i.aa, %i.s
  %i.ae = icmp samesign ult i32 %i.ab, %i.u
  %spec.select.i3 = select i1 %i.ac, i1 %i.ae, i1 %i.ad
  br i1 %spec.select.i3, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = cmpxchg ptr %i.w, i64 0, i64 1 acq_rel acquire, align 8
  %.fr = freeze { i64, i1 } %i.af                 ; 2 uses
  %i.ag = extractvalue { i64, i1 } %.fr, 1
  %i.ah = extractvalue { i64, i1 } %.fr, 0
  %spec.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.ah, i64 3)
  br i1 %i.ag, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit

bb.h:                                             ; preds = %bb.f
  %i.ai = tail call { i64, i32 } @_RNvXs3_NtCs2pqxYH9ZEk8_3std4timeNtB5_7InstantNtNtNtCsbvkFyIu7lgC_4core3ops5arith3Sub3sub(i64 noundef %i.s, i32 noundef range(i32 0, 1000000001) %i.u, i64 noundef %i.aa, i32 noundef %i.ab) ; 2 uses
  %i.aj = extractvalue { i64, i32 } %i.ai, 0
  %i.ak = extractvalue { i64, i32 } %i.ai, 1
  tail call void @_RNvMs_NtNtCs2pqxYH9ZEk8_3std6thread6threadNtB4_6Thread12park_timeout(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.v, i64 noundef %i.aj, i32 noundef %i.ak)
  br label %.split.i

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit: ; preds = %.split.i, %.split.i, %.split.us.i, %.split.us.i, %bb.g
  %.sroa.03.1.i = phi i64 [ %spec.select.i.i, %bb.g ], [ %i.x, %.split.us.i ], [ %i.x, %.split.us.i ], [ %i.y, %.split.i ], [ %i.y, %.split.i ]
  switch i64 %.sroa.03.1.i, label %bb.i [
    i64 0, label %bb.j
    i64 1, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3
    i64 2, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3
    i64 3, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread
  ], !prof !28600

bb.i:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  unreachable

bb.j:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69) #59
  unreachable

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3: ; preds = %bb.g, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker10unregister(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %i.g, i64 noundef %i.d) #57
  %i.al = load ptr, ptr %i.a, align 8, !noundef !3
  %.not = icmp eq ptr %i.al, null
  br i1 %.not, label %bb.m, label %bb.k, !prof !6

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread: ; preds = %.split.i, %.split.us.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  ret void

bb.k:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28653)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28656)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28659)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28662)
  %i.am = load ptr, ptr %i.b, align 8, !alias.scope !28665, !nonnull !3, !noundef !3
  %i.an = atomicrmw sub ptr %i.am, i64 1 release, align 8, !noalias !28665
  %i.ao = icmp eq i64 %i.an, 1
  br i1 %i.ao, label %bb.l, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit

bb.l:                                             ; preds = %bb.k
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #58
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread

bb.m:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3
  tail call void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @70) #59
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB7_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE4recvs_0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr %.0.val) unnamed_addr #2 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !3, !align !65, !noundef !3
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !3, !align !28598, !noundef !3 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 256 ; 2 uses
  tail call fastcc void @_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker8register(ptr noundef nonnull align 8 %i.g, i64 noundef %i.d, ptr %.0.val) #57
  %i.h = load atomic i64, ptr %i.f seq_cst, align 128
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 128 ; 2 uses
  %i.j = load atomic i64, ptr %i.i seq_cst, align 128
  %.unshifted.i = xor i64 %i.j, %i.h
  %i.k = icmp ult i64 %.unshifted.i, 2
  br i1 %i.k, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.l = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  %i.m = cmpxchg ptr %i.l, i64 0, i64 1 acq_rel acquire, align 8 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.n = load atomic i64, ptr %i.i seq_cst, align 128
  %i.o = and i64 %i.n, 1
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !3, !align !65, !noundef !3 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8              ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.u = load i32, ptr %i.t, align 8, !range !28599, !noundef !3 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.v = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.0.val, i64 24 ; 3 uses
  %.not.i = icmp eq i32 %i.u, 1000000000
  br i1 %.not.i, label %.split.us.i, label %.split.i

.split.us.i:                                      ; preds = %bb.d, %bb.e
  %i.x = load atomic i64, ptr %i.w acquire, align 8 ; 3 uses
  switch i64 %i.x, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread [
    i64 0, label %bb.e
    i64 1, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
    i64 2, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  ]

bb.e:                                             ; preds = %.split.us.i
  tail call void @_RNvMs_NtNtCs2pqxYH9ZEk8_3std6thread6threadNtB4_6Thread4park(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.v)
  br label %.split.us.i

.split.i:                                         ; preds = %bb.d, %bb.h
  %i.y = load atomic i64, ptr %i.w acquire, align 8 ; 3 uses
  switch i64 %i.y, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread [
    i64 0, label %bb.f
    i64 1, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
    i64 2, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  ]

bb.f:                                             ; preds = %.split.i
  %i.z = tail call { i64, i32 } @_RNvMNtCs2pqxYH9ZEk8_3std4timeNtB2_7Instant3now() ; 2 uses
  %i.aa = extractvalue { i64, i32 } %i.z, 0       ; 3 uses
  %i.ab = extractvalue { i64, i32 } %i.z, 1       ; 2 uses
  %i.ac = icmp eq i64 %i.aa, %i.s
  %i.ad = icmp slt i64 %i.aa, %i.s
  %i.ae = icmp samesign ult i32 %i.ab, %i.u
  %spec.select.i3 = select i1 %i.ac, i1 %i.ae, i1 %i.ad
  br i1 %spec.select.i3, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = cmpxchg ptr %i.w, i64 0, i64 1 acq_rel acquire, align 8
  %.fr = freeze { i64, i1 } %i.af                 ; 2 uses
  %i.ag = extractvalue { i64, i1 } %.fr, 1
  %i.ah = extractvalue { i64, i1 } %.fr, 0
  %spec.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.ah, i64 3)
  br i1 %i.ag, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit

bb.h:                                             ; preds = %bb.f
  %i.ai = tail call { i64, i32 } @_RNvXs3_NtCs2pqxYH9ZEk8_3std4timeNtB5_7InstantNtNtNtCsbvkFyIu7lgC_4core3ops5arith3Sub3sub(i64 noundef %i.s, i32 noundef range(i32 0, 1000000001) %i.u, i64 noundef %i.aa, i32 noundef %i.ab) ; 2 uses
  %i.aj = extractvalue { i64, i32 } %i.ai, 0
  %i.ak = extractvalue { i64, i32 } %i.ai, 1
  tail call void @_RNvMs_NtNtCs2pqxYH9ZEk8_3std6thread6threadNtB4_6Thread12park_timeout(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.v, i64 noundef %i.aj, i32 noundef %i.ak)
  br label %.split.i

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit: ; preds = %.split.i, %.split.i, %.split.us.i, %.split.us.i, %bb.g
  %.sroa.03.1.i = phi i64 [ %spec.select.i.i, %bb.g ], [ %i.x, %.split.us.i ], [ %i.x, %.split.us.i ], [ %i.y, %.split.i ], [ %i.y, %.split.i ]
  switch i64 %.sroa.03.1.i, label %bb.i [
    i64 0, label %bb.j
    i64 1, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3
    i64 2, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3
    i64 3, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread
  ], !prof !28600

bb.i:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  unreachable

bb.j:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69) #59
  unreachable

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3: ; preds = %bb.g, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker10unregister(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %i.g, i64 noundef %i.d) #57
  %i.al = load ptr, ptr %i.a, align 8, !noundef !3
  %.not = icmp eq ptr %i.al, null
  br i1 %.not, label %bb.m, label %bb.k, !prof !6

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread: ; preds = %.split.i, %.split.us.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  ret void

bb.k:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28666)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28669)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28672)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28675)
  %i.am = load ptr, ptr %i.b, align 8, !alias.scope !28678, !nonnull !3, !noundef !3
  %i.an = atomicrmw sub ptr %i.am, i64 1 release, align 8, !noalias !28678
  %i.ao = icmp eq i64 %i.an, 1
  br i1 %i.ao, label %bb.l, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit

bb.l:                                             ; preds = %bb.k
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #58
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread

bb.m:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3
  tail call void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @70) #59
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB7_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB14_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2C_5error5ErrorEEINtNtB14_3pin3PinIB1Z_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1B_NtNtB14_6marker4SendEL_EEEE4recvs_0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr %.0.val) unnamed_addr #2 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !3, !align !65, !noundef !3
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !3, !align !28598, !noundef !3 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 256 ; 2 uses
  tail call fastcc void @_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker8register(ptr noundef nonnull align 8 %i.g, i64 noundef %i.d, ptr %.0.val) #57
  %i.h = load atomic i64, ptr %i.f seq_cst, align 128
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 128 ; 2 uses
  %i.j = load atomic i64, ptr %i.i seq_cst, align 128
  %.unshifted.i = xor i64 %i.j, %i.h
  %i.k = icmp ult i64 %.unshifted.i, 2
  br i1 %i.k, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.l = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  %i.m = cmpxchg ptr %i.l, i64 0, i64 1 acq_rel acquire, align 8 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.n = load atomic i64, ptr %i.i seq_cst, align 128
  %i.o = and i64 %i.n, 1
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !3, !align !65, !noundef !3 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8              ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.u = load i32, ptr %i.t, align 8, !range !28599, !noundef !3 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.v = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.0.val, i64 24 ; 3 uses
  %.not.i = icmp eq i32 %i.u, 1000000000
  br i1 %.not.i, label %.split.us.i, label %.split.i

.split.us.i:                                      ; preds = %bb.d, %bb.e
  %i.x = load atomic i64, ptr %i.w acquire, align 8 ; 3 uses
  switch i64 %i.x, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread [
    i64 0, label %bb.e
    i64 1, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
    i64 2, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  ]

bb.e:                                             ; preds = %.split.us.i
  tail call void @_RNvMs_NtNtCs2pqxYH9ZEk8_3std6thread6threadNtB4_6Thread4park(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.v)
  br label %.split.us.i

.split.i:                                         ; preds = %bb.d, %bb.h
  %i.y = load atomic i64, ptr %i.w acquire, align 8 ; 3 uses
  switch i64 %i.y, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread [
    i64 0, label %bb.f
    i64 1, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
    i64 2, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  ]

bb.f:                                             ; preds = %.split.i
  %i.z = tail call { i64, i32 } @_RNvMNtCs2pqxYH9ZEk8_3std4timeNtB2_7Instant3now() ; 2 uses
  %i.aa = extractvalue { i64, i32 } %i.z, 0       ; 3 uses
  %i.ab = extractvalue { i64, i32 } %i.z, 1       ; 2 uses
  %i.ac = icmp eq i64 %i.aa, %i.s
  %i.ad = icmp slt i64 %i.aa, %i.s
  %i.ae = icmp samesign ult i32 %i.ab, %i.u
  %spec.select.i3 = select i1 %i.ac, i1 %i.ae, i1 %i.ad
  br i1 %spec.select.i3, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = cmpxchg ptr %i.w, i64 0, i64 1 acq_rel acquire, align 8
  %.fr = freeze { i64, i1 } %i.af                 ; 2 uses
  %i.ag = extractvalue { i64, i1 } %.fr, 1
  %i.ah = extractvalue { i64, i1 } %.fr, 0
  %spec.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.ah, i64 3)
  br i1 %i.ag, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit

bb.h:                                             ; preds = %bb.f
  %i.ai = tail call { i64, i32 } @_RNvXs3_NtCs2pqxYH9ZEk8_3std4timeNtB5_7InstantNtNtNtCsbvkFyIu7lgC_4core3ops5arith3Sub3sub(i64 noundef %i.s, i32 noundef range(i32 0, 1000000001) %i.u, i64 noundef %i.aa, i32 noundef %i.ab) ; 2 uses
  %i.aj = extractvalue { i64, i32 } %i.ai, 0
  %i.ak = extractvalue { i64, i32 } %i.ai, 1
  tail call void @_RNvMs_NtNtCs2pqxYH9ZEk8_3std6thread6threadNtB4_6Thread12park_timeout(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.v, i64 noundef %i.aj, i32 noundef %i.ak)
  br label %.split.i

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit: ; preds = %.split.i, %.split.i, %.split.us.i, %.split.us.i, %bb.g
  %.sroa.03.1.i = phi i64 [ %spec.select.i.i, %bb.g ], [ %i.x, %.split.us.i ], [ %i.x, %.split.us.i ], [ %i.y, %.split.i ], [ %i.y, %.split.i ]
  switch i64 %.sroa.03.1.i, label %bb.i [
    i64 0, label %bb.j
    i64 1, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3
    i64 2, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3
    i64 3, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread
  ], !prof !28600

bb.i:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  unreachable

bb.j:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69) #59
  unreachable

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3: ; preds = %bb.g, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker10unregister(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %i.g, i64 noundef %i.d) #57
  %i.al = load ptr, ptr %i.a, align 8, !noundef !3
  %.not = icmp eq ptr %i.al, null
  br i1 %.not, label %bb.m, label %bb.k, !prof !6

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread: ; preds = %.split.i, %.split.us.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  ret void

bb.k:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28679)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28682)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28685)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28688)
  %i.am = load ptr, ptr %i.b, align 8, !alias.scope !28691, !nonnull !3, !noundef !3
  %i.an = atomicrmw sub ptr %i.am, i64 1 release, align 8, !noalias !28691
  %i.ao = icmp eq i64 %i.an, 1
  br i1 %i.ao, label %bb.l, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit

bb.l:                                             ; preds = %bb.k
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #58
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread

bb.m:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3
  tail call void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @70) #59
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB7_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB14_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB20_5error5ErrorEEINtNtB14_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1B_NtNtB14_6marker4SendEL_EEEE4recvs_0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr %.0.val) unnamed_addr #2 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !3, !align !65, !noundef !3
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !3, !align !28598, !noundef !3 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 256 ; 2 uses
  tail call fastcc void @_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker8register(ptr noundef nonnull align 8 %i.g, i64 noundef %i.d, ptr %.0.val) #57
  %i.h = load atomic i64, ptr %i.f seq_cst, align 128
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 128 ; 2 uses
  %i.j = load atomic i64, ptr %i.i seq_cst, align 128
  %.unshifted.i = xor i64 %i.j, %i.h
  %i.k = icmp ult i64 %.unshifted.i, 2
  br i1 %i.k, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.l = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  %i.m = cmpxchg ptr %i.l, i64 0, i64 1 acq_rel acquire, align 8 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.n = load atomic i64, ptr %i.i seq_cst, align 128
  %i.o = and i64 %i.n, 1
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !3, !align !65, !noundef !3 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8              ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.u = load i32, ptr %i.t, align 8, !range !28599, !noundef !3 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.v = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.0.val, i64 24 ; 3 uses
  %.not.i = icmp eq i32 %i.u, 1000000000
  br i1 %.not.i, label %.split.us.i, label %.split.i

.split.us.i:                                      ; preds = %bb.d, %bb.e
  %i.x = load atomic i64, ptr %i.w acquire, align 8 ; 3 uses
  switch i64 %i.x, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread [
    i64 0, label %bb.e
    i64 1, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
    i64 2, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  ]

bb.e:                                             ; preds = %.split.us.i
  tail call void @_RNvMs_NtNtCs2pqxYH9ZEk8_3std6thread6threadNtB4_6Thread4park(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.v)
  br label %.split.us.i

.split.i:                                         ; preds = %bb.d, %bb.h
  %i.y = load atomic i64, ptr %i.w acquire, align 8 ; 3 uses
  switch i64 %i.y, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread [
    i64 0, label %bb.f
    i64 1, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
    i64 2, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  ]

bb.f:                                             ; preds = %.split.i
  %i.z = tail call { i64, i32 } @_RNvMNtCs2pqxYH9ZEk8_3std4timeNtB2_7Instant3now() ; 2 uses
  %i.aa = extractvalue { i64, i32 } %i.z, 0       ; 3 uses
  %i.ab = extractvalue { i64, i32 } %i.z, 1       ; 2 uses
  %i.ac = icmp eq i64 %i.aa, %i.s
  %i.ad = icmp slt i64 %i.aa, %i.s
  %i.ae = icmp samesign ult i32 %i.ab, %i.u
  %spec.select.i3 = select i1 %i.ac, i1 %i.ae, i1 %i.ad
  br i1 %spec.select.i3, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = cmpxchg ptr %i.w, i64 0, i64 1 acq_rel acquire, align 8
  %.fr = freeze { i64, i1 } %i.af                 ; 2 uses
  %i.ag = extractvalue { i64, i1 } %.fr, 1
  %i.ah = extractvalue { i64, i1 } %.fr, 0
  %spec.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.ah, i64 3)
  br i1 %i.ag, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit

bb.h:                                             ; preds = %bb.f
  %i.ai = tail call { i64, i32 } @_RNvXs3_NtCs2pqxYH9ZEk8_3std4timeNtB5_7InstantNtNtNtCsbvkFyIu7lgC_4core3ops5arith3Sub3sub(i64 noundef %i.s, i32 noundef range(i32 0, 1000000001) %i.u, i64 noundef %i.aa, i32 noundef %i.ab) ; 2 uses
  %i.aj = extractvalue { i64, i32 } %i.ai, 0
  %i.ak = extractvalue { i64, i32 } %i.ai, 1
  tail call void @_RNvMs_NtNtCs2pqxYH9ZEk8_3std6thread6threadNtB4_6Thread12park_timeout(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.v, i64 noundef %i.aj, i32 noundef %i.ak)
  br label %.split.i

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit: ; preds = %.split.i, %.split.i, %.split.us.i, %.split.us.i, %bb.g
  %.sroa.03.1.i = phi i64 [ %spec.select.i.i, %bb.g ], [ %i.x, %.split.us.i ], [ %i.x, %.split.us.i ], [ %i.y, %.split.i ], [ %i.y, %.split.i ]
  switch i64 %.sroa.03.1.i, label %bb.i [
    i64 0, label %bb.j
    i64 1, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3
    i64 2, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3
    i64 3, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread
  ], !prof !28600

bb.i:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  unreachable

bb.j:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69) #59
  unreachable

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3: ; preds = %bb.g, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker10unregister(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %i.g, i64 noundef %i.d) #57
  %i.al = load ptr, ptr %i.a, align 8, !noundef !3
  %.not = icmp eq ptr %i.al, null
  br i1 %.not, label %bb.m, label %bb.k, !prof !6

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread: ; preds = %.split.i, %.split.us.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  ret void

bb.k:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28692)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28695)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28698)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28701)
  %i.am = load ptr, ptr %i.b, align 8, !alias.scope !28704, !nonnull !3, !noundef !3
  %i.an = atomicrmw sub ptr %i.am, i64 1 release, align 8, !noalias !28704
  %i.ao = icmp eq i64 %i.an, 1
  br i1 %i.ao, label %bb.l, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit

bb.l:                                             ; preds = %bb.k
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #58
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread

bb.m:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3
  tail call void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @70) #59
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB7_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB14_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB14_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1B_NtNtB14_6marker4SendEL_EEEE4recvs_0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr %.0.val) unnamed_addr #2 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !3, !align !65, !noundef !3
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !3, !align !28598, !noundef !3 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 256 ; 2 uses
  tail call fastcc void @_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker8register(ptr noundef nonnull align 8 %i.g, i64 noundef %i.d, ptr %.0.val) #57
  %i.h = load atomic i64, ptr %i.f seq_cst, align 128
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 128 ; 2 uses
  %i.j = load atomic i64, ptr %i.i seq_cst, align 128
  %.unshifted.i = xor i64 %i.j, %i.h
  %i.k = icmp ult i64 %.unshifted.i, 2
  br i1 %i.k, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.l = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  %i.m = cmpxchg ptr %i.l, i64 0, i64 1 acq_rel acquire, align 8 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.n = load atomic i64, ptr %i.i seq_cst, align 128
  %i.o = and i64 %i.n, 1
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !3, !align !65, !noundef !3 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8              ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.u = load i32, ptr %i.t, align 8, !range !28599, !noundef !3 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.v = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.0.val, i64 24 ; 3 uses
  %.not.i = icmp eq i32 %i.u, 1000000000
  br i1 %.not.i, label %.split.us.i, label %.split.i

.split.us.i:                                      ; preds = %bb.d, %bb.e
  %i.x = load atomic i64, ptr %i.w acquire, align 8 ; 3 uses
  switch i64 %i.x, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread [
    i64 0, label %bb.e
    i64 1, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
    i64 2, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  ]

bb.e:                                             ; preds = %.split.us.i
  tail call void @_RNvMs_NtNtCs2pqxYH9ZEk8_3std6thread6threadNtB4_6Thread4park(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.v)
  br label %.split.us.i

.split.i:                                         ; preds = %bb.d, %bb.h
  %i.y = load atomic i64, ptr %i.w acquire, align 8 ; 3 uses
  switch i64 %i.y, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread [
    i64 0, label %bb.f
    i64 1, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
    i64 2, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  ]

bb.f:                                             ; preds = %.split.i
  %i.z = tail call { i64, i32 } @_RNvMNtCs2pqxYH9ZEk8_3std4timeNtB2_7Instant3now() ; 2 uses
  %i.aa = extractvalue { i64, i32 } %i.z, 0       ; 3 uses
  %i.ab = extractvalue { i64, i32 } %i.z, 1       ; 2 uses
  %i.ac = icmp eq i64 %i.aa, %i.s
  %i.ad = icmp slt i64 %i.aa, %i.s
  %i.ae = icmp samesign ult i32 %i.ab, %i.u
  %spec.select.i3 = select i1 %i.ac, i1 %i.ae, i1 %i.ad
  br i1 %spec.select.i3, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = cmpxchg ptr %i.w, i64 0, i64 1 acq_rel acquire, align 8
  %.fr = freeze { i64, i1 } %i.af                 ; 2 uses
  %i.ag = extractvalue { i64, i1 } %.fr, 1
  %i.ah = extractvalue { i64, i1 } %.fr, 0
  %spec.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.ah, i64 3)
  br i1 %i.ag, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit

bb.h:                                             ; preds = %bb.f
  %i.ai = tail call { i64, i32 } @_RNvXs3_NtCs2pqxYH9ZEk8_3std4timeNtB5_7InstantNtNtNtCsbvkFyIu7lgC_4core3ops5arith3Sub3sub(i64 noundef %i.s, i32 noundef range(i32 0, 1000000001) %i.u, i64 noundef %i.aa, i32 noundef %i.ab) ; 2 uses
  %i.aj = extractvalue { i64, i32 } %i.ai, 0
  %i.ak = extractvalue { i64, i32 } %i.ai, 1
  tail call void @_RNvMs_NtNtCs2pqxYH9ZEk8_3std6thread6threadNtB4_6Thread12park_timeout(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.v, i64 noundef %i.aj, i32 noundef %i.ak)
  br label %.split.i

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit: ; preds = %.split.i, %.split.i, %.split.us.i, %.split.us.i, %bb.g
  %.sroa.03.1.i = phi i64 [ %spec.select.i.i, %bb.g ], [ %i.x, %.split.us.i ], [ %i.x, %.split.us.i ], [ %i.y, %.split.i ], [ %i.y, %.split.i ]
  switch i64 %.sroa.03.1.i, label %bb.i [
    i64 0, label %bb.j
    i64 1, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3
    i64 2, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3
    i64 3, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread
  ], !prof !28600

bb.i:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  unreachable

bb.j:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69) #59
  unreachable

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3: ; preds = %bb.g, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker10unregister(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %i.g, i64 noundef %i.d) #57
  %i.al = load ptr, ptr %i.a, align 8, !noundef !3
  %.not = icmp eq ptr %i.al, null
  br i1 %.not, label %bb.m, label %bb.k, !prof !6

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread: ; preds = %.split.i, %.split.us.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  ret void

bb.k:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28705)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28708)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28711)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28714)
  %i.am = load ptr, ptr %i.b, align 8, !alias.scope !28717, !nonnull !3, !noundef !3
  %i.an = atomicrmw sub ptr %i.am, i64 1 release, align 8, !noalias !28717
  %i.ao = icmp eq i64 %i.an, 1
  br i1 %i.ao, label %bb.l, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit

bb.l:                                             ; preds = %bb.k
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #58
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread

bb.m:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3
  tail call void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @70) #59
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef range(i8 -1, 4) i8 @_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast5query10SelectItemNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(744) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(744) %1) unnamed_addr #2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28718)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28721)
  %i.a = load i64, ptr %0, align 8, !range !370, !alias.scope !28718, !noalias !28721, !noundef !3 ; 4 uses
  %i.b = icmp ne i64 %i.a, 72
  tail call void @llvm.assume(i1 %i.b)
  %i.c = add nsw i64 %i.a, -70
  %i.d = icmp samesign ugt i64 %i.a, 69
  %i.e = select i1 %i.d, i64 %i.c, i64 2          ; 3 uses
  %i.f = load i64, ptr %1, align 8, !range !370, !alias.scope !28721, !noalias !28718, !noundef !3 ; 4 uses
  %i.g = icmp ne i64 %i.f, 72
  tail call void @llvm.assume(i1 %i.g)
  %i.h = add nsw i64 %i.f, -70
  %i.i = icmp samesign ugt i64 %i.f, 69
  %i.j = select i1 %i.i, i64 %i.h, i64 2          ; 2 uses
  %.not.i = icmp eq i64 %i.e, %i.j
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  switch i64 %i.e, label %bb.d [
    i64 0, label %bb.e
    i64 1, label %bb.f
    i64 2, label %bb.g
    i64 3, label %bb.m
  ]

bb.c:                                             ; preds = %bb.a
  %i.k = tail call i8 @llvm.scmp.i8.i64(i64 %i.e, i64 %i.j)
  br label %_RNvXs40_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_10SelectItemNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.d:                                             ; preds = %bb.b
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = tail call fastcc noundef i8 @_RNvXs6K_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.m) #57, !inline_history !28723
  br label %_RNvXs40_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_10SelectItemNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.f:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = tail call fastcc noundef i8 @_RNvXs6K_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.o, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.p) #57, !inline_history !28723 ; 2 uses
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.n, label %_RNvXs40_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_10SelectItemNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.g:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28724)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28727)
  %i.s = icmp ne i64 %i.a, 69                     ; 2 uses
  %i.t = zext i1 %i.s to i8
  %i.u = icmp ne i64 %i.f, 69                     ; 3 uses
  %.neg.i = sext i1 %i.u to i8
  br i1 %i.s, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  br i1 %i.u, label %bb.l, label %bb.j

bb.i:                                             ; preds = %bb.g
  br i1 %i.u, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.v = add nsw i8 %.neg.i, %i.t
  br label %_RNvXs3Q_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_31SelectItemQualifiedWildcardKindNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.k:                                             ; preds = %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i = load ptr, ptr %i.w, align 8, !alias.scope !28724, !noalias !28727, !nonnull !3, !noundef !3
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i = load i64, ptr %i.x, align 8, !alias.scope !28724, !noalias !28727, !noundef !3
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val2.i = load ptr, ptr %i.y, align 8, !alias.scope !28727, !noalias !28724, !nonnull !3, !noundef !3
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val3.i = load i64, ptr %i.z, align 8, !alias.scope !28727, !noalias !28724, !noundef !3
  %i.aa = tail call noundef range(i8 -1, 3) i8 @_RNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartNtB5_15SlicePartialOrd15partial_compareCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.val.i, i64 noundef %.val1.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.val2.i, i64 noundef %.val3.i), !noalias !28729, !inline_history !28730
  br label %_RNvXs3Q_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_31SelectItemQualifiedWildcardKindNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.l:                                             ; preds = %bb.h
  %i.ab = tail call fastcc noundef i8 @_RNvXs6K_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(744) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(744) %1) #57, !inline_history !28730
  br label %_RNvXs3Q_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_31SelectItemQualifiedWildcardKindNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

_RNvXs3Q_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_31SelectItemQualifiedWildcardKindNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit: ; preds = %bb.j, %bb.k, %bb.l
  %.sroa.0.0.i5 = phi i8 [ %i.ab, %bb.l ], [ %i.v, %bb.j ], [ %i.aa, %bb.k ] ; 2 uses
  %i.ac = icmp eq i8 %.sroa.0.0.i5, 0
  br i1 %i.ac, label %bb.o, label %_RNvXs40_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_10SelectItemNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.m:                                             ; preds = %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.af = tail call fastcc noundef i8 @_RNvXs4k_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_25WildcardAdditionalOptionsNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(416) %i.ad, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(416) %i.ae) #57, !inline_history !28723
  br label %_RNvXs40_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_10SelectItemNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.n:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.ai = tail call noundef i8 @_RNvXs2_NtCs4lawaffTVVK_9sqlparser3astNtB5_5IdentNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.ah, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.ag), !inline_history !28723
  br label %_RNvXs40_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_10SelectItemNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.o:                                             ; preds = %_RNvXs3Q_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_31SelectItemQualifiedWildcardKindNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.al = tail call fastcc noundef i8 @_RNvXs4k_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_25WildcardAdditionalOptionsNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(416) %i.ak, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(416) %i.aj) #57, !inline_history !28723
  br label %_RNvXs40_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_10SelectItemNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

_RNvXs40_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_10SelectItemNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit: ; preds = %bb.c, %bb.e, %bb.f, %_RNvXs3Q_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_31SelectItemQualifiedWildcardKindNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit, %bb.m, %bb.n, %bb.o
  %.sroa.0.0.i = phi i8 [ %i.k, %bb.c ], [ %i.n, %bb.e ], [ %i.ai, %bb.n ], [ %i.q, %bb.f ], [ %i.al, %bb.o ], [ %.sroa.0.0.i5, %_RNvXs3Q_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_31SelectItemQualifiedWildcardKindNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit ], [ %i.af, %bb.m ] ; 2 uses
  %i.am = icmp eq i8 %.sroa.0.0.i, 0
  %. = select i1 %i.am, i8 3, i8 %.sroa.0.0.i
  ret i8 %.
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvXs_NtCsjyY8HP3IvQ6_12object_store6uploadINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB6_15MultipartUploadEL_EB1h_8complete0Cs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 2 uses
  %i.b = alloca [72 x i8], align 8                ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.d = load i8, ptr %i.c, align 8, !range !852, !noundef !3
  switch i8 %i.d, label %default.unreachable9 [
    i8 0, label %bb.b
    i8 1, label %bb.e
    i8 2, label %bb.f
    i8 3, label %bb.g
  ]

default.unreachable9:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !nonnull !3, !align !65, !noundef !3 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !3, !noundef !3
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !3, !align !65, !noundef !3
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !invariant.load !3, !nonnull !3
end_hunk_0
