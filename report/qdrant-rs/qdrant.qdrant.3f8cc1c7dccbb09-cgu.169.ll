Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/qdrant.qdrant.3f8cc1c7dccbb09-cgu.169?download=true
inline.NumInlined: 354
inline.NumDeleted: 199
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNCNvMNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring7runtimeINtB4_14IoUringRuntimeNtB4_4ReaduE11completions0Csl8OoimOLbh_6qdrant:bb.a

bb.k:                                             ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsl8OoimOLbh_6qdrant.exit
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.z = invoke noundef nonnull ptr @_RINvNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring5error16io_error_contextNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant(ptr noundef nonnull %i.x, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.f)
          to label %bb.l unwind label %bb.k

bb.l:                                             ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsl8OoimOLbh_6qdrant.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.z, ptr %i.aa, align 8
  store ptr null, ptr %0, align 8
  %.not.i.i1.i.i23 = icmp eq ptr %.sroa.4.0.copyload.i, null
  br i1 %.not.i.i1.i.i23, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring7runtime4ReadECsl8OoimOLbh_6qdrant.exit24, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ab = add i64 %.sroa.9.sroa.0.0.copyload, -1
  %i.ac = icmp sgt i64 %i.ab, -1
  call void @llvm.assume(i1 %i.ac)
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.k, i64 noundef %i.n, i64 noundef %.sroa.9.sroa.0.0.copyload) #23, !noalias !420
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring7runtime4ReadECsl8OoimOLbh_6qdrant.exit24

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring7runtime4ReadECsl8OoimOLbh_6qdrant.exit24: ; preds = %bb.m, %bb.l, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13)
  br label %bb.p

bb.n:                                             ; preds = %bb.j
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g) #19
          to label %bb.g unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring7runtime4ReadECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.h, %bb.g
  resume { ptr, i32 } %.pn

bb.p:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring7runtime4ReadECsl8OoimOLbh_6qdrant.exit24, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef ptr @_RNvMNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring7runtimeINtB2_14IoUringRuntimeNtB2_4ReadjE15submit_and_waitCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(320) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.b = tail call noundef nonnull align 8 ptr @_RNvXs1_NtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring4poolNtB5_12IoUringGuardNtNtNtCskKLDkoKarTP_4core3ops5deref8DerefMut9deref_mut(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %i.a) ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !noundef !7
  %i.e = load atomic i32, ptr %i.d acquire, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !noundef !7 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !noundef !7 ; 2 uses
  %i.i = sub i32 %i.h, %i.e
  %i.j = zext i32 %i.i to i64
  store atomic i32 %i.h, ptr %i.g release, align 4, !noalias !429
  %i.k = tail call fastcc noundef ptr @_RNvMNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring7runtimeINtB2_14IoUringRuntimeNtB2_4ReadjE27submit_and_wait_retry_eintrCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(320) %0, i64 noundef %1) ; 2 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %.preheader.i, label %_RNvMNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring7runtimeINtB2_14IoUringRuntimeNtB2_4ReadjE34submit_and_wait_retry_early_wakeupCsl8OoimOLbh_6qdrant.exit

.preheader.i:                                     ; preds = %bb.a
  %.not7.i = icmp eq i64 %1, 0
  br i1 %.not7.i, label %.loopexit, label %.preheader.split.i

.preheader.split.i:                               ; preds = %.preheader.i, %bb.b
  %i.l = tail call noundef nonnull align 8 ptr @_RNvXs1_NtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring4poolNtB5_12IoUringGuardNtNtNtCskKLDkoKarTP_4core3ops5deref8DerefMut9deref_mut(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %i.a) ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 96 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !noundef !7
  %i.o = load i32, ptr %i.n, align 4, !noundef !7 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 104
  %i.q = load ptr, ptr %i.p, align 8, !noundef !7
  %i.r = load atomic i32, ptr %i.q acquire, align 4
  %i.s = icmp eq i32 %i.r, %i.o
  %i.t = load ptr, ptr %i.m, align 8, !noalias !7, !noundef !7
  store atomic i32 %i.o, ptr %i.t release, align 4, !noalias !7
  br i1 %i.s, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %.preheader.split.i
  %i.u = tail call fastcc noundef ptr @_RNvMNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring7runtimeINtB2_14IoUringRuntimeNtB2_4ReadjE27submit_and_wait_retry_eintrCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(320) %0, i64 noundef %1) ; 2 uses
  %.not8.i = icmp eq ptr %i.u, null
  br i1 %.not8.i, label %.preheader.split.i, label %_RNvMNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring7runtimeINtB2_14IoUringRuntimeNtB2_4ReadjE34submit_and_wait_retry_early_wakeupCsl8OoimOLbh_6qdrant.exit

.loopexit:                                        ; preds = %.preheader.split.i, %.preheader.i
  %i.v = tail call noundef nonnull align 8 ptr @_RNvXs1_NtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring4poolNtB5_12IoUringGuardNtNtNtCskKLDkoKarTP_4core3ops5deref8DerefMut9deref_mut(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %i.a) ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %i.x = load ptr, ptr %i.w, align 8, !noundef !7
  %i.y = load atomic i32, ptr %i.x acquire, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 56
  %i.aa = load ptr, ptr %i.z, align 8, !noundef !7 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !noundef !7 ; 2 uses
  %i.ac = sub i32 %i.ab, %i.y
  %i.ad = zext i32 %i.ac to i64
  store atomic i32 %i.ab, ptr %i.aa release, align 4, !noalias !430
  %i.ae = sub nsw i64 %i.j, %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !noundef !7
  %i.ah = add i64 %i.ae, %i.ag
  store i64 %i.ah, ptr %i.af, align 8
  br label %_RNvMNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring7runtimeINtB2_14IoUringRuntimeNtB2_4ReadjE34submit_and_wait_retry_early_wakeupCsl8OoimOLbh_6qdrant.exit

_RNvMNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring7runtimeINtB2_14IoUringRuntimeNtB2_4ReadjE34submit_and_wait_retry_early_wakeupCsl8OoimOLbh_6qdrant.exit: ; preds = %bb.b, %bb.a, %.loopexit
  %.sroa.0.0 = phi ptr [ null, %.loopexit ], [ %i.k, %bb.a ], [ %i.u, %bb.b ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef ptr @_RNvMNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring7runtimeINtB2_14IoUringRuntimeNtB2_4ReadjE27submit_and_wait_retry_eintrCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(320) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 11 uses
  %i.c = alloca [16 x i8], align 8                ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.e = tail call noundef nonnull align 8 ptr @_RNvXs0_NtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring4poolNtB5_12IoUringGuardNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.d) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 264
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 144
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.j = load ptr, ptr %i.i, align 8, !noundef !7
  store ptr %i.f, ptr %i.b, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.g, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.m = load <2 x ptr>, ptr %i.h, align 8
  store <2 x ptr> %i.m, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  store ptr %i.j, ptr %i.n, align 8
  %i.o = call { i64, ptr } @_RNvMNtCs6vzDBIEl036_8io_uring6submitNtB2_9Submitter15submit_and_wait(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.b, i64 noundef %1) ; 2 uses
  %i.p = extractvalue { i64, ptr } %i.o, 0        ; 2 uses
  %i.q = extractvalue { i64, ptr } %i.o, 1        ; 2 uses
  store i64 %i.p, ptr %i.c, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  store ptr %i.q, ptr %i.r, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.s = trunc nuw i64 %i.p to i1
  br i1 %i.s, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.j
  %i.u = phi ptr [ %i.q, %.lr.ph ], [ %i.ay, %bb.j ] ; 8 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.u) ]
  %i.v = ptrtoint ptr %i.u to i64                 ; 4 uses
  %i.w = and i64 %i.v, 3                          ; 2 uses
  switch i64 %i.w, label %default.unreachable [
    i64 2, label %bb.c
    i64 3, label %bb.d
    i64 0, label %bb.e
    i64 1, label %bb.f
  ], !prof !6

default.unreachable:                              ; preds = %bb.g, %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.x = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCskKLDkoKarTP_4core2io5error12os_functions16get_os_functions()
          to label %.noexc unwind label %2

.noexc:                                           ; preds = %bb.c
  %i.y = lshr i64 %i.v, 32
  %i.z = trunc nuw i64 %i.y to i32
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !nonnull !7, !noundef !7
  %i.ac = invoke noundef i8 %i.ab(i32 noundef %i.z)
          to label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit unwind label %2, !inline_history !0

bb.d:                                             ; preds = %bb.b
  %i.ad = lshr i64 %i.v, 32
  %i.ae = icmp ult ptr %i.u, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i = trunc i64 %i.ad to i8  ; 2 uses
  %i.af = icmp ne i8 %switch.idx.cast.i.i.i, -1
  call void @llvm.assume(i1 %i.ae)
  call void @llvm.assume(i1 %i.af)
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit

bb.e:                                             ; preds = %bb.b
  %i.ag = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.ah = load i8, ptr %i.ag, align 8, !range !8, !noundef !7
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit

bb.f:                                             ; preds = %bb.b
  %i.ai = getelementptr i8, ptr %i.u, i64 31
  %i.aj = load i8, ptr %i.ai, align 8, !range !8, !noundef !7
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit

._crit_edge:                                      ; preds = %bb.j, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.n

_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit: ; preds = %bb.f, %bb.e, %bb.d, %.noexc
  %.sroa.0.0.i = phi i8 [ %i.aj, %bb.f ], [ %switch.idx.cast.i.i.i, %bb.d ], [ %i.ah, %bb.e ], [ %i.ac, %.noexc ]
  %i.ak = icmp eq i8 %.sroa.0.0.i, 35
  br i1 %i.ak, label %bb.g, label %bb.m

bb.g:                                             ; preds = %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !435
  switch i64 %i.w, label %default.unreachable [
    i64 2, label %bb.j
    i64 3, label %bb.h
    i64 0, label %bb.j
    i64 1, label %bb.i
  ], !prof !6

bb.h:                                             ; preds = %bb.g
  %i.al = icmp ult ptr %i.u, inttoptr (i64 188978561024 to ptr)
  %i.am = and i64 %i.v, 1095216660480
  %i.an = icmp ne i64 %i.am, 1095216660480
  call void @llvm.assume(i1 %i.al)
  call void @llvm.assume(i1 %i.an)
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ao = getelementptr i8, ptr %i.u, i64 -1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ao) ]
  store ptr %i.ao, ptr %i.t, align 8, !alias.scope !436, !noalias !435
  store i8 3, ptr %i.a, align 8, !alias.scope !436, !noalias !435
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.t)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !435
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.ap = call noundef nonnull align 8 ptr @_RNvXs0_NtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring4poolNtB5_12IoUringGuardNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.d) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 264
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 144
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 48
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 64
  %i.au = load ptr, ptr %i.at, align 8, !noundef !7
  store ptr %i.aq, ptr %i.b, align 8
  store ptr %i.ar, ptr %i.k, align 8
  %i.av = load <2 x ptr>, ptr %i.as, align 8
  store <2 x ptr> %i.av, ptr %i.l, align 8
  store ptr %i.au, ptr %i.n, align 8
  %i.aw = call { i64, ptr } @_RNvMNtCs6vzDBIEl036_8io_uring6submitNtB2_9Submitter15submit_and_wait(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.b, i64 noundef %1) ; 2 uses
  %i.ax = extractvalue { i64, ptr } %i.aw, 0      ; 2 uses
  %i.ay = extractvalue { i64, ptr } %i.aw, 1      ; 2 uses
  store i64 %i.ax, ptr %i.c, align 8
  store ptr %i.ay, ptr %i.r, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.az = trunc nuw i64 %i.ax to i1
  br i1 %i.az, label %bb.b, label %._crit_edge

bb.k:                                             ; preds = %2
  resume { ptr, i32 } %lpad.thr_comm

2:                                                ; preds = %.noexc, %bb.c
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.r) #19
          to label %bb.k unwind label %bb.l

bb.l:                                             ; preds = %2
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21
  unreachable

bb.m:                                             ; preds = %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.bb = call noundef nonnull ptr @_RINvNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring5error16io_error_contextReECsl8OoimOLbh_6qdrant(ptr noundef nonnull %i.u, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 36)
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge, %bb.m
  %.sroa.0.0 = phi ptr [ %i.bb, %bb.m ], [ null, %._crit_edge ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef ptr @_RNvMNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring7runtimeINtB2_14IoUringRuntimeNtB2_4ReaduE15submit_and_waitCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(320) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.b = tail call noundef nonnull align 8 ptr @_RNvXs1_NtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring4poolNtB5_12IoUringGuardNtNtNtCskKLDkoKarTP_4core3ops5deref8DerefMut9deref_mut(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %i.a) ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !noundef !7
  %i.e = load atomic i32, ptr %i.d acquire, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !noundef !7 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !noundef !7 ; 2 uses
  %i.i = sub i32 %i.h, %i.e
  %i.j = zext i32 %i.i to i64
  store atomic i32 %i.h, ptr %i.g release, align 4, !noalias !445
  %i.k = tail call fastcc noundef ptr @_RNvMNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring7runtimeINtB2_14IoUringRuntimeNtB2_4ReaduE27submit_and_wait_retry_eintrCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(320) %0, i64 noundef %1) ; 2 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %.preheader.i, label %_RNvMNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring7runtimeINtB2_14IoUringRuntimeNtB2_4ReaduE34submit_and_wait_retry_early_wakeupCsl8OoimOLbh_6qdrant.exit

.preheader.i:                                     ; preds = %bb.a
  %.not7.i = icmp eq i64 %1, 0
  br i1 %.not7.i, label %.loopexit, label %.preheader.split.i

.preheader.split.i:                               ; preds = %.preheader.i, %bb.b
  %i.l = tail call noundef nonnull align 8 ptr @_RNvXs1_NtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring4poolNtB5_12IoUringGuardNtNtNtCskKLDkoKarTP_4core3ops5deref8DerefMut9deref_mut(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %i.a) ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 96 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !noundef !7
  %i.o = load i32, ptr %i.n, align 4, !noundef !7 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 104
  %i.q = load ptr, ptr %i.p, align 8, !noundef !7
  %i.r = load atomic i32, ptr %i.q acquire, align 4
  %i.s = icmp eq i32 %i.r, %i.o
  %i.t = load ptr, ptr %i.m, align 8, !noalias !7, !noundef !7
  store atomic i32 %i.o, ptr %i.t release, align 4, !noalias !7
  br i1 %i.s, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %.preheader.split.i
  %i.u = tail call fastcc noundef ptr @_RNvMNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring7runtimeINtB2_14IoUringRuntimeNtB2_4ReaduE27submit_and_wait_retry_eintrCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(320) %0, i64 noundef %1) ; 2 uses
  %.not8.i = icmp eq ptr %i.u, null
  br i1 %.not8.i, label %.preheader.split.i, label %_RNvMNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring7runtimeINtB2_14IoUringRuntimeNtB2_4ReaduE34submit_and_wait_retry_early_wakeupCsl8OoimOLbh_6qdrant.exit

.loopexit:                                        ; preds = %.preheader.split.i, %.preheader.i
  %i.v = tail call noundef nonnull align 8 ptr @_RNvXs1_NtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring4poolNtB5_12IoUringGuardNtNtNtCskKLDkoKarTP_4core3ops5deref8DerefMut9deref_mut(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %i.a) ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %i.x = load ptr, ptr %i.w, align 8, !noundef !7
  %i.y = load atomic i32, ptr %i.x acquire, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 56
  %i.aa = load ptr, ptr %i.z, align 8, !noundef !7 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !noundef !7 ; 2 uses
  %i.ac = sub i32 %i.ab, %i.y
  %i.ad = zext i32 %i.ac to i64
  store atomic i32 %i.ab, ptr %i.aa release, align 4, !noalias !446
  %i.ae = sub nsw i64 %i.j, %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !noundef !7
  %i.ah = add i64 %i.ae, %i.ag
  store i64 %i.ah, ptr %i.af, align 8
  br label %_RNvMNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring7runtimeINtB2_14IoUringRuntimeNtB2_4ReaduE34submit_and_wait_retry_early_wakeupCsl8OoimOLbh_6qdrant.exit

_RNvMNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring7runtimeINtB2_14IoUringRuntimeNtB2_4ReaduE34submit_and_wait_retry_early_wakeupCsl8OoimOLbh_6qdrant.exit: ; preds = %bb.b, %bb.a, %.loopexit
  %.sroa.0.0 = phi ptr [ null, %.loopexit ], [ %i.k, %bb.a ], [ %i.u, %bb.b ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef ptr @_RNvMNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring7runtimeINtB2_14IoUringRuntimeNtB2_4ReaduE27submit_and_wait_retry_eintrCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(320) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 11 uses
  %i.c = alloca [16 x i8], align 8                ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.e = tail call noundef nonnull align 8 ptr @_RNvXs0_NtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring4poolNtB5_12IoUringGuardNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.d) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 264
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 144
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.j = load ptr, ptr %i.i, align 8, !noundef !7
  store ptr %i.f, ptr %i.b, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.g, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.m = load <2 x ptr>, ptr %i.h, align 8
  store <2 x ptr> %i.m, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  store ptr %i.j, ptr %i.n, align 8
  %i.o = call { i64, ptr } @_RNvMNtCs6vzDBIEl036_8io_uring6submitNtB2_9Submitter15submit_and_wait(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.b, i64 noundef %1) ; 2 uses
  %i.p = extractvalue { i64, ptr } %i.o, 0        ; 2 uses
  %i.q = extractvalue { i64, ptr } %i.o, 1        ; 2 uses
  store i64 %i.p, ptr %i.c, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  store ptr %i.q, ptr %i.r, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.s = trunc nuw i64 %i.p to i1
  br i1 %i.s, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.j
  %i.u = phi ptr [ %i.q, %.lr.ph ], [ %i.ay, %bb.j ] ; 8 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.u) ]
  %i.v = ptrtoint ptr %i.u to i64                 ; 4 uses
  %i.w = and i64 %i.v, 3                          ; 2 uses
  switch i64 %i.w, label %default.unreachable [
    i64 2, label %bb.c
    i64 3, label %bb.d
    i64 0, label %bb.e
    i64 1, label %bb.f
  ], !prof !6

default.unreachable:                              ; preds = %bb.g, %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.x = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCskKLDkoKarTP_4core2io5error12os_functions16get_os_functions()
          to label %.noexc unwind label %2

.noexc:                                           ; preds = %bb.c
  %i.y = lshr i64 %i.v, 32
  %i.z = trunc nuw i64 %i.y to i32
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !nonnull !7, !noundef !7
  %i.ac = invoke noundef i8 %i.ab(i32 noundef %i.z)
          to label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit unwind label %2, !inline_history !0

bb.d:                                             ; preds = %bb.b
  %i.ad = lshr i64 %i.v, 32
  %i.ae = icmp ult ptr %i.u, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i = trunc i64 %i.ad to i8  ; 2 uses
  %i.af = icmp ne i8 %switch.idx.cast.i.i.i, -1
  call void @llvm.assume(i1 %i.ae)
  call void @llvm.assume(i1 %i.af)
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit

bb.e:                                             ; preds = %bb.b
  %i.ag = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.ah = load i8, ptr %i.ag, align 8, !range !8, !noundef !7
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit

bb.f:                                             ; preds = %bb.b
  %i.ai = getelementptr i8, ptr %i.u, i64 31
  %i.aj = load i8, ptr %i.ai, align 8, !range !8, !noundef !7
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit

._crit_edge:                                      ; preds = %bb.j, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.n

_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit: ; preds = %bb.f, %bb.e, %bb.d, %.noexc
  %.sroa.0.0.i = phi i8 [ %i.aj, %bb.f ], [ %switch.idx.cast.i.i.i, %bb.d ], [ %i.ah, %bb.e ], [ %i.ac, %.noexc ]
  %i.ak = icmp eq i8 %.sroa.0.0.i, 35
  br i1 %i.ak, label %bb.g, label %bb.m

bb.g:                                             ; preds = %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !451
  switch i64 %i.w, label %default.unreachable [
    i64 2, label %bb.j
    i64 3, label %bb.h
    i64 0, label %bb.j
    i64 1, label %bb.i
  ], !prof !6

bb.h:                                             ; preds = %bb.g
  %i.al = icmp ult ptr %i.u, inttoptr (i64 188978561024 to ptr)
  %i.am = and i64 %i.v, 1095216660480
  %i.an = icmp ne i64 %i.am, 1095216660480
  call void @llvm.assume(i1 %i.al)
  call void @llvm.assume(i1 %i.an)
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ao = getelementptr i8, ptr %i.u, i64 -1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ao) ]
  store ptr %i.ao, ptr %i.t, align 8, !alias.scope !452, !noalias !451
  store i8 3, ptr %i.a, align 8, !alias.scope !452, !noalias !451
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.t)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !451
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.ap = call noundef nonnull align 8 ptr @_RNvXs0_NtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring4poolNtB5_12IoUringGuardNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.d) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 264
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 144
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 48
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 64
  %i.au = load ptr, ptr %i.at, align 8, !noundef !7
  store ptr %i.aq, ptr %i.b, align 8
  store ptr %i.ar, ptr %i.k, align 8
  %i.av = load <2 x ptr>, ptr %i.as, align 8
  store <2 x ptr> %i.av, ptr %i.l, align 8
  store ptr %i.au, ptr %i.n, align 8
  %i.aw = call { i64, ptr } @_RNvMNtCs6vzDBIEl036_8io_uring6submitNtB2_9Submitter15submit_and_wait(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.b, i64 noundef %1) ; 2 uses
  %i.ax = extractvalue { i64, ptr } %i.aw, 0      ; 2 uses
  %i.ay = extractvalue { i64, ptr } %i.aw, 1      ; 2 uses
  store i64 %i.ax, ptr %i.c, align 8
  store ptr %i.ay, ptr %i.r, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.az = trunc nuw i64 %i.ax to i1
  br i1 %i.az, label %bb.b, label %._crit_edge

bb.k:                                             ; preds = %2
  resume { ptr, i32 } %lpad.thr_comm

2:                                                ; preds = %.noexc, %bb.c
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.r) #19
          to label %bb.k unwind label %bb.l

bb.l:                                             ; preds = %2
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21
  unreachable

bb.m:                                             ; preds = %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.bb = call noundef nonnull ptr @_RINvNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring5error16io_error_contextReECsl8OoimOLbh_6qdrant(ptr noundef nonnull %i.u, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 36)
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge, %bb.m
  %.sroa.0.0 = phi ptr [ %i.bb, %bb.m ], [ null, %._crit_edge ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs1_NtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring7runtimeINtB5_12IoUringStateNtB5_4ReaduE4readCsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1, i32 noundef range(i32 0, -1) %2, i1 noundef zeroext %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [1 x i8], align 1                 ; 3 uses
  %i.h = alloca [40 x i8], align 8                ; 8 uses
  %i.i = alloca [32 x i8], align 8                ; 6 uses
  %i.j = alloca [32 x i8], align 8                ; 6 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [8 x i8], align 8                 ; 2 uses
  store i64 %6, ptr %i.l, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store i64 %4, ptr %i.k, align 8
  %i.m = sub i64 %5, %4                           ; 2 uses
  %i.n = icmp ugt i64 %i.m, 4294967295
  %i.o = shl nuw i64 %i.m, 32
  %.sroa.027.0.insert.insert = select i1 %i.n, i64 513, i64 %i.o ; 2 uses
  %i.p = trunc i64 %.sroa.027.0.insert.insert to i1
  br i1 %i.p, label %bb.b, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6expectCsl8OoimOLbh_6qdrant.exit, !prof !11

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i8 2, ptr %i.g, align 1
  call void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 26, ptr noundef nonnull %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @9, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #22
  unreachable

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6expectCsl8OoimOLbh_6qdrant.exit: ; preds = %bb.a
  %.sroa.6.0.extract.shift.i = lshr i64 %.sroa.027.0.insert.insert, 32
  %.sroa.6.0.extract.trunc.i = trunc nuw i64 %.sroa.6.0.extract.shift.i to i32 ; 6 uses
  br i1 %3, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6expectCsl8OoimOLbh_6qdrant.exit
  %i.q = and i64 %6, 4095
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %bb.k, label %bb.j, !prof !19

bb.d:                                             ; preds = %bb.n, %bb.m, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6expectCsl8OoimOLbh_6qdrant.exit
  %.sroa.02.0 = phi i32 [ %.sroa.6.0.extract.trunc.i, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6expectCsl8OoimOLbh_6qdrant.exit ], [ %.sroa.6.0.extract.trunc.i, %bb.m ], [ %i.aj, %bb.n ] ; 3 uses
  %i.s = zext i32 %.sroa.02.0 to i64              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 %6, ptr %i.f, align 8, !noalias !464
  %i.t = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %6)
  %or.cond.i = icmp samesign ult i64 %i.t, 2
  br i1 %or.cond.i, label %_RNvXs1_Cs594TMPrsTal_11aligned_vecNtB5_12RuntimeAlignNtB5_9Alignment3new.exit, label %bb.e, !prof !12

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !464
  store ptr %i.f, ptr %i.e, align 8, !noalias !464
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.44.0..sroa_idx.i, align 8, !noalias !464
  call void @_RINvCsIlGSmkpFKT_7equator19panic_failed_assertNtB2_7MessagebECs1kbkjoW0HYw_9pyroscope(i1 noundef zeroext false, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @32, ptr noundef nonnull @29, ptr noundef nonnull %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #22
  unreachable

_RNvXs1_Cs594TMPrsTal_11aligned_vecNtB5_12RuntimeAlignNtB5_9Alignment3new.exit: ; preds = %bb.d
  %..i.i = tail call noundef range(i64 1, -9223372036854775807) i64 @llvm.umax.i64(i64 %6, i64 1) ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.u = icmp eq i32 %.sroa.02.0, 0
  %i.v = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %..i.i)
  %or.cond.i.i = icmp samesign ult i64 %i.v, 2    ; 2 uses
  br i1 %i.u, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_RNvXs1_Cs594TMPrsTal_11aligned_vecNtB5_12RuntimeAlignNtB5_9Alignment3new.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !465
  store i64 %..i.i, ptr %i.d, align 8, !noalias !466
  br i1 %or.cond.i.i, label %_RNvXs1_Cs594TMPrsTal_11aligned_vecNtB5_12RuntimeAlignNtB5_9Alignment3new.exit.i, label %bb.g, !prof !12

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !466
  store ptr %i.d, ptr %i.c, align 8, !noalias !466
  %.sroa.44.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.44.0..sroa_idx.i.i, align 8, !noalias !466
  call void @_RINvCsIlGSmkpFKT_7equator19panic_failed_assertNtB2_7MessagebECs1kbkjoW0HYw_9pyroscope(i1 noundef zeroext false, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @32, ptr noundef nonnull @29, ptr noundef nonnull %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #22, !noalias !465
  unreachable

_RNvXs1_Cs594TMPrsTal_11aligned_vecNtB5_12RuntimeAlignNtB5_9Alignment3new.exit.i: ; preds = %bb.f
  %i.w = getelementptr i8, ptr null, i64 %..i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !465
  br label %_RNvMs_NtCs594TMPrsTal_11aligned_vec3rawINtB4_7ARawVechNtB6_12RuntimeAlignE23with_capacity_uncheckedCsl8OoimOLbh_6qdrant.exit

bb.h:                                             ; preds = %_RNvXs1_Cs594TMPrsTal_11aligned_vecNtB5_12RuntimeAlignNtB5_9Alignment3new.exit
  %i.x = tail call noundef ptr @_RNvNtCs594TMPrsTal_11aligned_vec3raw23with_capacity_unchecked(i64 noundef %i.s, i64 noundef %..i.i, i64 noundef 1), !noalias !465 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.x) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !465
  store i64 %..i.i, ptr %i.b, align 8, !noalias !467
  br i1 %or.cond.i.i, label %_RNvXs1_Cs594TMPrsTal_11aligned_vecNtB5_12RuntimeAlignNtB5_9Alignment3new.exit4.i, label %bb.i, !prof !12

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !467
  store ptr %i.b, ptr %i.a, align 8, !noalias !467
  %.sroa.44.0..sroa_idx.i2.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.44.0..sroa_idx.i2.i, align 8, !noalias !467
  call void @_RINvCsIlGSmkpFKT_7equator19panic_failed_assertNtB2_7MessagebECs1kbkjoW0HYw_9pyroscope(i1 noundef zeroext false, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @32, ptr noundef nonnull @29, ptr noundef nonnull %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #22, !noalias !465
  unreachable

_RNvXs1_Cs594TMPrsTal_11aligned_vecNtB5_12RuntimeAlignNtB5_9Alignment3new.exit4.i: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !465
  br label %_RNvMs_NtCs594TMPrsTal_11aligned_vec3rawINtB4_7ARawVechNtB6_12RuntimeAlignE23with_capacity_uncheckedCsl8OoimOLbh_6qdrant.exit

_RNvMs_NtCs594TMPrsTal_11aligned_vec3rawINtB4_7ARawVechNtB6_12RuntimeAlignE23with_capacity_uncheckedCsl8OoimOLbh_6qdrant.exit: ; preds = %_RNvXs1_Cs594TMPrsTal_11aligned_vecNtB5_12RuntimeAlignNtB5_9Alignment3new.exit.i, %_RNvXs1_Cs594TMPrsTal_11aligned_vecNtB5_12RuntimeAlignNtB5_9Alignment3new.exit4.i
  %.sink8.i = phi ptr [ %i.w, %_RNvXs1_Cs594TMPrsTal_11aligned_vecNtB5_12RuntimeAlignNtB5_9Alignment3new.exit.i ], [ %i.x, %_RNvXs1_Cs594TMPrsTal_11aligned_vecNtB5_12RuntimeAlignNtB5_9Alignment3new.exit4.i ]
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.z = load i64, ptr %i.y, align 8, !noundef !7 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %.sink8.i, ptr %i.h, align 8
  %.sroa.05.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %i.s, ptr %.sroa.05.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.05.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %..i.i, ptr %.sroa.05.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.05.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i64 0, ptr %.sroa.05.sroa.4.0..sroa_idx, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store i32 %.sroa.6.0.extract.trunc.i, ptr %.sroa.46.0..sroa_idx, align 8
  %i.aa = call noundef nonnull align 8 ptr @_RNvMsf_Cs2WYkopDsXpd_4slabINtB5_11VacantEntryINtNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring7runtime7PendingNtBK_4ReaduEE6insertCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1, i64 noundef %i.z, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.ab = load ptr, ptr %i.aa, align 8, !nonnull !7, !noundef !7
  %.sroa.13.0..sroa_idx24.i = getelementptr inbounds nuw i8, ptr %0, i64 42
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.sroa.13.0..sroa_idx24.i, i8 0, i64 22, i1 false), !alias.scope !468, !noalias !469
  %i.ac = ptrtoint ptr %i.ab to i64
  store i8 22, ptr %0, align 8, !alias.scope !468, !noalias !469
  %.sroa.3.0..sroa_idx5.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %.sroa.3.0..sroa_idx5.i, align 1, !alias.scope !468, !noalias !469
  %.sroa.5.0..sroa_idx7.i = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 0, ptr %.sroa.5.0..sroa_idx7.i, align 2, !alias.scope !468, !noalias !469
  %.sroa.6.0..sroa_idx9.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %2, ptr %.sroa.6.0..sroa_idx9.i, align 4, !alias.scope !468, !noalias !469
  %.sroa.8.0..sroa_idx11.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %4, ptr %.sroa.8.0..sroa_idx11.i, align 8, !alias.scope !468, !noalias !469
  %.sroa.9.0..sroa_idx13.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ac, ptr %.sroa.9.0..sroa_idx13.i, align 8, !alias.scope !468, !noalias !469
  %.sroa.10.0..sroa_idx15.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.sroa.02.0, ptr %.sroa.10.0..sroa_idx15.i, align 8, !alias.scope !468, !noalias !469
  %.sroa.11.0..sroa_idx17.i = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 0, ptr %.sroa.11.0..sroa_idx17.i, align 4, !alias.scope !468, !noalias !469
  %.sroa.12.0..sroa_idx19.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.1221.0..sroa_idx22.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i16 0, ptr %.sroa.1221.0..sroa_idx22.i, align 8, !alias.scope !468, !noalias !469
  store i64 %i.z, ptr %.sroa.12.0..sroa_idx19.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  ret void

bb.j:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr @17, ptr %i.j, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.414.0..sroa_idx, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %i.l, ptr %i.ad, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store ptr @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.418.0..sroa_idx, align 8
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @18, ptr noundef nonnull %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #22
  unreachable

bb.k:                                             ; preds = %bb.c
  %i.ae = and i64 %4, 4095
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %bb.m, label %bb.l, !prof !19

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr @17, ptr %i.i, align 8
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.422.0..sroa_idx, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.k, ptr %i.ag, align 8
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr @_RNvXsd_NtNtNtCskKLDkoKarTP_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.426.0..sroa_idx, align 8
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @20, ptr noundef nonnull %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #22
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ah = and i32 %.sroa.6.0.extract.trunc.i, 4095
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %bb.d, label %bb.n

bb.n:                                             ; preds = %bb.m
  %reass.sub = and i32 %.sroa.6.0.extract.trunc.i, -4096
  %i.aj = add i32 %reass.sub, 4096                ; 2 uses
  %i.ak = icmp ult i32 %i.aj, %.sroa.6.0.extract.trunc.i
end_hunk_0
