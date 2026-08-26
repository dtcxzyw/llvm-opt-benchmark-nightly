Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustls-rs/original/hickory_net-03aeade8086e102f.hickory_net.434d7c29dbe80863-cgu.05?download=true
inline.NumInlined: 352
inline.NumDeleted: 198
begin_hunk_0_@_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcSNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordE9drop_slowCs5MfxasYgTEl_11hickory_net:bb.a
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsjXdHNeFfodD_13hickory_proto2rr11record_data5RDataECs5MfxasYgTEl_11hickory_net(ptr noalias nofree noundef align 8 dereferenceable(184) %i.j) #16
          to label %.body.i unwind label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsjXdHNeFfodD_13hickory_proto2rr11record_data5RDataECs5MfxasYgTEl_11hickory_net(ptr noalias nofree noundef align 8 dereferenceable(184) %i.k)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordECs5MfxasYgTEl_11hickory_net.exit.i unwind label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.e:                                             ; preds = %.lr.ph20
  %i.m = add i64 %.sroa.0.1.i19, 1                ; 2 uses
  %i.n = icmp eq i64 %i.m, %i.c
  br i1 %i.n, label %.body, label %.lr.ph20

bb.f:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.f, %bb.b
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.o, %bb.f ], [ %i.i, %bb.b ]
  %i.p = icmp eq i64 %i.h, %i.c
  br i1 %i.p, label %.body, label %.lr.ph20

.lr.ph20:                                         ; preds = %.body.i, %bb.e
  %.sroa.0.1.i19 = phi i64 [ %i.m, %bb.e ], [ %i.h, %.body.i ] ; 2 uses
  %i.q = getelementptr inbounds nuw [272 x i8], ptr %i.d, i64 %.sroa.0.1.i19
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordECs5MfxasYgTEl_11hickory_net(ptr noalias nofree noundef align 8 dereferenceable(272) %i.q) #16
          to label %bb.e unwind label %bb.g

bb.g:                                             ; preds = %.lr.ph20
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

.body:                                            ; preds = %bb.e, %.body.i
  tail call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync4WeakSNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordRNtNtBG_5alloc6GlobalEECs5MfxasYgTEl_11hickory_net(ptr nonnull %i.a, i64 %i.c) #16
  resume { ptr, i32 } %eh.lpad-body.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordECs5MfxasYgTEl_11hickory_net.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordECs5MfxasYgTEl_11hickory_net.exit.i, %bb.a
  %i.s = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.s, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync4WeakSNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordRNtNtBG_5alloc6GlobalEECs5MfxasYgTEl_11hickory_net.exit, label %bb.h

bb.h:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordECs5MfxasYgTEl_11hickory_net.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.u = atomicrmw sub ptr %i.t, i64 1 release, align 8
  %i.v = icmp eq i64 %i.u, 1
  br i1 %i.v, label %bb.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync4WeakSNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordRNtNtBG_5alloc6GlobalEECs5MfxasYgTEl_11hickory_net.exit

bb.i:                                             ; preds = %bb.h
  fence acquire
  %i.w = mul nuw nsw i64 %i.c, 272
  %i.x = add nuw i64 %i.w, 16
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef range(i64 0, -7) %i.x, i64 noundef range(i64 1, 536870913) 8) #13
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync4WeakSNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordRNtNtBG_5alloc6GlobalEECs5MfxasYgTEl_11hickory_net.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync4WeakSNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordRNtNtBG_5alloc6GlobalEECs5MfxasYgTEl_11hickory_net.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordECs5MfxasYgTEl_11hickory_net.exit, %bb.h, %bb.i
  ret void
}

; Function Attrs: noinline nounwind nonlazybind uwtable
define void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArceE9drop_slowCs5MfxasYgTEl_11hickory_net(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !5
  %i.d = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.d, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync4WeakeRNtNtBG_5alloc6GlobalEECs5MfxasYgTEl_11hickory_net.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = atomicrmw sub ptr %i.e, i64 1 release, align 8
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.c, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync4WeakeRNtNtBG_5alloc6GlobalEECs5MfxasYgTEl_11hickory_net.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  %i.h = add i64 %i.c, 23
  %i.i = and i64 %i.h, -8                         ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync4WeakeRNtNtBG_5alloc6GlobalEECs5MfxasYgTEl_11hickory_net.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef range(i64 0, -7) %i.i, i64 noundef range(i64 1, 536870913) 8) #13
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync4WeakeRNtNtBG_5alloc6GlobalEECs5MfxasYgTEl_11hickory_net.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync4WeakeRNtNtBG_5alloc6GlobalEECs5MfxasYgTEl_11hickory_net.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RNvXs14_NtCs4wP2HXfJTCR_5alloc4syncINtB6_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6webpki7anchors13RootCertStoreEINtNtCsj6eKBz9Db1c_4core7convert4FromBH_E4fromCs5MfxasYgTEl_11hickory_net(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #13, !noalias !309
  %i.d = tail call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef 8) #13, !noalias !309 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCs7ZUl82OSlxp_6rustls6webpki7anchors13RootCertStoreEE3newCs5MfxasYgTEl_11hickory_net.exit, !prof !4

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #14
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync8ArcInnerNtNtNtCs7ZUl82OSlxp_6rustls6webpki7anchors13RootCertStoreEECs5MfxasYgTEl_11hickory_net(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a) #16
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCs7ZUl82OSlxp_6rustls6webpki7anchors13RootCertStoreEE3newCs5MfxasYgTEl_11hickory_net.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDNtNtB8_5error5ErrorNtNtB8_6marker4SendNtB1q_4SyncEL_ENtB6_5Debug3fmtCs5MfxasYgTEl_11hickory_net(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !62, !noundef !5 ; 2 uses
  %.val = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !5, !align !62, !noundef !5 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !range !9, !invariant.load !5, !noalias !312
  %i.e = add nsw i64 %i.d, -1
  %i.f = and i64 %i.e, -16
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %.val1, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !invariant.load !5, !noalias !312, !nonnull !5
  %i.k = tail call noundef zeroext i1 %i.j(ptr noundef nonnull %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #18, !inline_history !315
  ret i1 %i.k
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtRINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs4okMlIQ9Z13_2h25error5ErrorENtB6_7Display3fmtCs5MfxasYgTEl_11hickory_net(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !62, !noundef !5
  %.val = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.c = tail call noundef zeroext i1 @_RNvXs3_NtCs4okMlIQ9Z13_2h25errorNtB5_5ErrorNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt(ptr noundef nonnull align 8 %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtRINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtB8_2io5error5ErrorENtB6_7Display3fmtCs5MfxasYgTEl_11hickory_net(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !62, !noundef !5
  %.val = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.c = tail call noundef zeroext i1 @_RNvXs3_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtRINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCsjSDXC2TkEdJ_4http6header5value10ToStrErrorENtB6_7Display3fmtCs5MfxasYgTEl_11hickory_net(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !62, !noundef !5
  %.val = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.c = tail call noundef zeroext i1 @_RNvXsc_NtNtCsjSDXC2TkEdJ_4http6header5valueNtB5_10ToStrErrorNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsW_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6webpki7anchors13RootCertStoreENtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmtCs5MfxasYgTEl_11hickory_net(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = tail call noundef zeroext i1 @_RNvXs1_NtNtCs7ZUl82OSlxp_6rustls6webpki7anchorsNtB5_13RootCertStoreNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RNvXsY_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex5MutexINtNtNtCskruEhpekJ3V_5tokio4task8join_set7JoinSetuEEENtNtCsj6eKBz9Db1c_4core7default7Default7defaultCs5MfxasYgTEl_11hickory_net() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #13
  %i.b = tail call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef 8) #13 ; 6 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit, !prof !4

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #14
  unreachable

_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvXs7_NtNtNtCsaKJjC64KgbL_3std4sync6poison5mutexINtB5_5MutexINtNtNtCskruEhpekJ3V_5tokio4task8join_set7JoinSetuEENtNtCsj6eKBz9Db1c_4core7default7Default7defaultCs5MfxasYgTEl_11hickory_net(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.511.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.b, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %.sroa.410.0..sroa_idx, align 8
  ret ptr %i.b

bb.d:                                             ; preds = %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef 40, i64 noundef 8) #13
  resume { ptr, i32 } %i.d
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvNtCs4wP2HXfJTCR_5alloc4sync32arcinner_layout_for_value_layout(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtCseieIppCIYdI_4slab5EntryINtNtNtNtCs4okMlIQ9Z13_2h25proto7streams6buffer4SlotNtNtB1g_5frame5FrameEEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs5MfxasYgTEl_11hickory_net(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() unnamed_addr #8

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtCseO5Jl7W60Eg_16rustls_pki_types11TrustAnchorENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs5MfxasYgTEl_11hickory_net(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs5MfxasYgTEl_11hickory_net(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs7ZUl82OSlxp_6rustls5enums11ContentTypeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs5MfxasYgTEl_11hickory_net(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs7ZUl82OSlxp_6rustls5enums13HandshakeTypeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs5MfxasYgTEl_11hickory_net(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs7ZUl82OSlxp_6rustls5error18ExtendedKeyPurposeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs5MfxasYgTEl_11hickory_net(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCseO5Jl7W60Eg_16rustls_pki_types6alg_id19AlgorithmIdentifierENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs5MfxasYgTEl_11hickory_net(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16EchConfigPayloadENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs5MfxasYgTEl_11hickory_net(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecTNtNtNtNtCsjXdHNeFfodD_13hickory_proto2rr5rdata3opt8EdnsCodeNtBI_10EdnsOptionEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs5MfxasYgTEl_11hickory_net(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecTNtNtNtNtCsjXdHNeFfodD_13hickory_proto2rr5rdata4svcb11SvcParamKeyNtBI_13SvcParamValueEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs5MfxasYgTEl_11hickory_net(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs5MfxasYgTEl_11hickory_net(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecjENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs5MfxasYgTEl_11hickory_net(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecINtCseieIppCIYdI_4slab5EntryINtNtNtNtCs4okMlIQ9Z13_2h25proto7streams6buffer4SlotNtNtB1n_5frame5FrameEEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs5MfxasYgTEl_11hickory_net(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtCseO5Jl7W60Eg_16rustls_pki_types11TrustAnchorENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs5MfxasYgTEl_11hickory_net(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs5MfxasYgTEl_11hickory_net(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs7ZUl82OSlxp_6rustls5enums11ContentTypeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs5MfxasYgTEl_11hickory_net(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs7ZUl82OSlxp_6rustls5enums13HandshakeTypeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs5MfxasYgTEl_11hickory_net(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs7ZUl82OSlxp_6rustls5error18ExtendedKeyPurposeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs5MfxasYgTEl_11hickory_net(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCseO5Jl7W60Eg_16rustls_pki_types6alg_id19AlgorithmIdentifierENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs5MfxasYgTEl_11hickory_net(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16EchConfigPayloadENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs5MfxasYgTEl_11hickory_net(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecTNtNtNtNtCsjXdHNeFfodD_13hickory_proto2rr5rdata3opt8EdnsCodeNtBP_10EdnsOptionEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs5MfxasYgTEl_11hickory_net(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecTNtNtNtNtCsjXdHNeFfodD_13hickory_proto2rr5rdata4svcb11SvcParamKeyNtBP_13SvcParamValueEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs5MfxasYgTEl_11hickory_net(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs5MfxasYgTEl_11hickory_net(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs5MfxasYgTEl_11hickory_net(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsz_NtCsdaVh6l1oWST_15futures_channel4mpscINtB5_8ReceiverINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtNtCsjXdHNeFfodD_13hickory_proto2op12dns_response11DnsResponseNtNtCs5MfxasYgTEl_11hickory_net5error8NetErrorEENtNtNtB11_3ops4drop4Drop4dropB2F_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs2_NtNtCsdaVh6l1oWST_15futures_channel4mpsc5queueINtB5_5QueueINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtNtCsjXdHNeFfodD_13hickory_proto2op12dns_response11DnsResponseNtNtCs5MfxasYgTEl_11hickory_net5error8NetErrorEENtNtNtB16_3ops4drop4Drop4dropB2K_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs2_NtNtCsdaVh6l1oWST_15futures_channel4mpsc5queueINtB5_5QueueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex5MutexNtB7_10SenderTaskEEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs5MfxasYgTEl_11hickory_net(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs2_NtNtCsdaVh6l1oWST_15futures_channel4mpsc5queueINtB5_5QueueNtNtNtCsjXdHNeFfodD_13hickory_proto2op14serial_message13SerialMessageENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs5MfxasYgTEl_11hickory_net(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtNtCsjXdHNeFfodD_13hickory_proto2rr11record_type10RecordTypeNtNtB4_7set_val9SetValZSTENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs5MfxasYgTEl_11hickory_net(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #2

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #9

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #10

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtCsj6eKBz9Db1c_4core5error5ErrorNtNtBL_6marker4SendNtB1i_4SyncEL_E9drop_slowCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs3_NtCs4okMlIQ9Z13_2h25errorNtB5_5ErrorNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt(ptr noundef nonnull align 8, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs3_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsc_NtNtCsjSDXC2TkEdJ_4http6header5valueNtB5_10ToStrErrorNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs1_NtNtCs7ZUl82OSlxp_6rustls6webpki7anchorsNtB5_13RootCertStoreNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs7_NtNtNtCsaKJjC64KgbL_3std4sync6poison5mutexINtB5_5MutexINtNtNtCskruEhpekJ3V_5tokio4task8join_set7JoinSetuEENtNtCsj6eKBz9Db1c_4core7default7Default7defaultCs5MfxasYgTEl_11hickory_net(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #12

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { noinline nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCshxk5dXoXnx9_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #13 = { nounwind }
attributes #14 = { noreturn }
attributes #15 = { cold noreturn nounwind }
attributes #16 = { cold }
attributes #17 = { noinline }
attributes #18 = { inlinehint }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.100.0-nightly (67854e511 2026-08-15)"}
!4 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!5 = !{}
!6 = !{i64 -1, i64 -9223372036854775808}
!7 = !{i16 0, i16 2}
!8 = !{i64 0, i64 -9223372036854775808}
!9 = !{i64 1, i64 536870913}
!10 = !{!11}
!11 = distinct !{!11, !12, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcSNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordEECs5MfxasYgTEl_11hickory_net: argument 0"}
!12 = distinct !{!12, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcSNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordEECs5MfxasYgTEl_11hickory_net"}
!13 = !{!14}
!14 = distinct !{!14, !15, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcSNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs5MfxasYgTEl_11hickory_net: argument 0"}
!15 = distinct !{!15, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcSNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs5MfxasYgTEl_11hickory_net"}
!16 = !{!14, !11}
!17 = !{!18}
!18 = distinct !{!18, !19, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcSNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordEECs5MfxasYgTEl_11hickory_net: argument 0"}
!19 = distinct !{!19, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcSNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordEECs5MfxasYgTEl_11hickory_net"}
!20 = !{!21}
end_hunk_0
