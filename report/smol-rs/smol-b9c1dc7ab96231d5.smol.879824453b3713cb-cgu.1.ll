Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/smol-rs/original/smol-b9c1dc7ab96231d5.smol.879824453b3713cb-cgu.1?download=true
inline.NumInlined: 163
inline.NumDeleted: 102
begin_hunk_0_@_RINvMNtCseSXqeRWftQm_16concurrent_queue7boundedINtB3_7BoundedNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableE12push_or_elseNCNvB2_4push0ECsbDLrNlwBX3H_4smol:bb.a
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  store ptr %1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.d = load atomic i64, ptr %i.c monotonic, align 128 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !noundef !4 ; 2 uses
  %i.g = and i64 %i.f, %i.d
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %.lr.ph, label %.loopexit29

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 256
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.l
  %i.m = phi i64 [ %i.f, %.lr.ph ], [ %i.am, %bb.l ]
  %.sroa.010.045 = phi i64 [ %i.d, %.lr.ph ], [ %.sroa.010.1, %bb.l ] ; 8 uses
  %i.n = add i64 %i.m, -1
  %i.o = and i64 %i.n, %.sroa.010.045             ; 4 uses
  %i.p = add i64 %i.o, 1
  %i.q = load i64, ptr %i.k, align 8, !noundef !4 ; 3 uses
  %i.r = icmp ult i64 %i.p, %i.q
  br i1 %i.r, label %bb.d, label %bb.c

._crit_edge.loopexit:                             ; preds = %bb.l
  %.pre = load ptr, ptr %i.b, align 8
  br label %.loopexit29

bb.c:                                             ; preds = %bb.b
  %i.s = load i64, ptr %i.i, align 128, !noundef !4 ; 2 uses
  %i.t = sub i64 0, %i.s
  %i.u = and i64 %.sroa.010.045, %i.t
  %i.v = add i64 %i.u, %i.s
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.w = add i64 %.sroa.010.045, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %i.w, %bb.d ], [ %i.v, %bb.c ]
  %i.x = icmp ult i64 %i.o, %i.q
  br i1 %i.x, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.o, i64 noundef %i.q, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #21
          to label %bb.g unwind label %.loopexit.split-lp

bb.g:                                             ; preds = %bb.f
  unreachable

bb.h:                                             ; preds = %bb.e
  %i.y = load ptr, ptr %i.j, align 16, !nonnull !4, !noundef !4
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %i.o ; 3 uses
  %i.aa = load atomic i64, ptr %i.z acquire, align 8 ; 2 uses
  %i.ab = icmp eq i64 %.sroa.010.045, %i.aa
  br i1 %i.ab, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = load i64, ptr %i.i, align 128, !noundef !4
  %i.ad = add i64 %i.ac, %i.aa
  %i.ae = add i64 %.sroa.010.045, 1
  %i.af = icmp eq i64 %i.ad, %i.ae
  br i1 %i.af, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtNtCsG258MDvU3F_3std6thread9functions9yield_now()
          to label %.sink.split unwind label %.loopexit

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  call void asm sideeffect inteldialect "lock not qword ptr [${0:q}]", "r,~{memory}"(ptr nonnull %i.a) #22, !srcloc !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ag = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.ah = load atomic i64, ptr %2 monotonic, align 128, !noalias !6
  %i.ai = load i64, ptr %i.l, align 128, !noalias !6, !noundef !4
  %i.aj = add i64 %i.ai, %i.ah
  %i.ak = icmp eq i64 %i.aj, %.sroa.010.045
  br i1 %i.ak, label %.loopexit29, label %.sink.split

.sink.split:                                      ; preds = %bb.k, %bb.j
  %i.al = load atomic i64, ptr %i.c monotonic, align 128
  br label %bb.l

bb.l:                                             ; preds = %.sink.split, %bb.m
  %.sroa.010.1 = phi i64 [ %i.ar, %bb.m ], [ %i.al, %.sink.split ] ; 2 uses
  %i.am = load i64, ptr %i.e, align 8, !noundef !4 ; 2 uses
  %i.an = and i64 %i.am, %.sroa.010.1
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %bb.b, label %._crit_edge.loopexit

bb.m:                                             ; preds = %bb.h
  %i.ap = cmpxchg weak ptr %i.c, i64 %.sroa.010.045, i64 %.sroa.01.0 seq_cst monotonic, align 8 ; 2 uses
  %i.aq = extractvalue { i64, i1 } %i.ap, 1
  %i.ar = extractvalue { i64, i1 } %i.ap, 0
  br i1 %i.aq, label %bb.n, label %bb.l

bb.n:                                             ; preds = %bb.m
  %i.as = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.at = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %i.as, ptr %i.at, align 8
  %i.au = add i64 %.sroa.010.045, 1
  store atomic i64 %i.au, ptr %i.z release, align 8
  br label %.loopexit29

.loopexit29:                                      ; preds = %bb.k, %bb.a, %._crit_edge.loopexit, %bb.n
  %.sroa.4.0 = phi ptr [ %1, %bb.a ], [ undef, %bb.n ], [ %.pre, %._crit_edge.loopexit ], [ %i.ag, %bb.k ]
  %.sroa.0.0 = phi i64 [ 1, %bb.a ], [ 2, %bb.n ], [ 1, %._crit_edge.loopexit ], [ 0, %bb.k ]
  %i.av = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.aw = insertvalue { i64, ptr } %i.av, ptr %.sroa.4.0, 1
  ret { i64, ptr } %i.aw

bb.o:                                             ; preds = %bb.p
  resume { ptr, i32 } %lpad.phi

.loopexit:                                        ; preds = %bb.j
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

.loopexit.split-lp:                               ; preds = %bb.f
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.p:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_RNvXsa_NtCsfO0Hesl1pIe_10async_task8runnableNtB5_8RunnableNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.o unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtCsG258MDvU3F_3std6thread7builderNtB3_7Builder15spawn_uncheckedNCNCNvNvNtCsbDLrNlwBX3H_4smol5spawn5spawn6global0s0_0zEB1h_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 16               ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.d = load i64, ptr %1, align 8, !range !10, !noundef !4
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.h = load i8, ptr %i.g, align 8, !range !11, !noundef !4
  %i.i = trunc nuw i8 %i.h to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvNtNtCsG258MDvU3F_3std6thread9lifecycle15spawn_uncheckedNCNCNvNvNtCsbDLrNlwBX3H_4smol5spawn5spawn6global0s0_0zEB15_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, i64 noundef %i.d, i64 %i.f, i1 noundef zeroext %i.i, ptr noundef null)
  %i.j = load <2 x ptr>, ptr %i.a, align 16
  %i.k = load ptr, ptr %i.a, align 16, !noundef !4
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.510.0.copyload = load i64, ptr %.sroa.510.0..sroa_idx, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.sroa.68.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.510.0.copyload, ptr %.sroa.68.0..sroa_idx, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store <2 x ptr> %i.j, ptr %0, align 8
  ret void
}

; Function Attrs: cold inlinehint nonlazybind uwtable
define internal fastcc void @_RINvMs5_Cs3iPtYnXk70z_14event_listenerNtB6_5Event6notifylECsbDLrNlwBX3H_4smol(ptr noundef nonnull align 8 %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = tail call noundef i64 @_RNvXsF_NtCs3iPtYnXk70z_14event_listener6notifylNtB5_16IntoNotification17into_notification(i32 noundef 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  call void asm sideeffect inteldialect "lock not qword ptr [${0:q}]", "r,~{memory}"(ptr nonnull %i.a) #22, !srcloc !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.c = call noundef ptr @_RNvMs5_Cs3iPtYnXk70z_14event_listenerNtB5_5Event5innerCsbDLrNlwBX3H_4smol(ptr noundef nonnull align 8 %0)
  %i.d = call noundef i64 @_RINvMs_NtCs3iPtYnXk70z_14event_listener3sysINtB7_5InneruE6notifyNtNtB7_6notify6NotifyECsbDLrNlwBX3H_4smol(ptr noundef nonnull align 8 %i.c, i64 noundef %i.b) ; 0 uses
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs3iPtYnXk70z_14event_listener3sys8ListeneruEEECsbDLrNlwBX3H_4smol(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !10, !noundef !4
  %1 = icmp eq i64 %i.a, 0
  br i1 %1, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs3iPtYnXk70z_14event_listener3sys8ListeneruEECsbDLrNlwBX3H_4smol.exit, label %bb.b

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs3iPtYnXk70z_14event_listener3sys8ListeneruEECsbDLrNlwBX3H_4smol.exit: ; preds = %bb.f, %bb.e, %bb.d, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28)
  %i.c = load i8, ptr %i.b, align 8, !range !31, !alias.scope !32, !noundef !4
  %i.d = icmp eq i8 %i.c, 2
  br i1 %i.d, label %bb.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs3iPtYnXk70z_14event_listener3sys8ListeneruEECsbDLrNlwBX3H_4smol.exit

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33)
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !36, !noundef !4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.f, null
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val1.i.i.i.i.i.i.i.i = load ptr, ptr %i.g, align 8, !alias.scope !36, !noundef !4
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !noalias !36, !nonnull !4, !noundef !4
  tail call void %i.i(ptr noundef %.val1.i.i.i.i.i.i.i.i), !noalias !36, !inline_history !37
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs3iPtYnXk70z_14event_listener3sys8ListeneruEECsbDLrNlwBX3H_4smol.exit

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44)
  %i.j = load ptr, ptr %i.g, align 8, !alias.scope !47, !nonnull !4, !noundef !4
  %i.k = atomicrmw sub ptr %i.j, i64 1 release, align 8, !noalias !47
  %i.l = icmp eq i64 %i.k, 1
  br i1 %i.l, label %bb.f, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs3iPtYnXk70z_14event_listener3sys8ListeneruEECsbDLrNlwBX3H_4smol.exit

bb.f:                                             ; preds = %bb.e
  fence acquire
  tail call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtCs2KJ8IamB81r_7parking5InnerE9drop_slowCs3iPtYnXk70z_14event_listener(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g) #24
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs3iPtYnXk70z_14event_listener3sys8ListeneruEECsbDLrNlwBX3H_4smol.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs3iPtYnXk70z_14event_listener13EventListenerEECsbDLrNlwBX3H_4smol(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq ptr %.0.val, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs3iPtYnXk70z_14event_listener13EventListenerECsbDLrNlwBX3H_4smol.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXs0_NvCs3iPtYnXk70z_14event_listener1__INtB7_13InnerListeneruINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtB7_5InneruEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbDLrNlwBX3H_4smol(ptr noundef nonnull align 8 %.0.val)
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.b = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.0.val, i64 48 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51)
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !54, !nonnull !4, !noundef !4
  %i.e = atomicrmw sub ptr %i.d, i64 1 release, align 8, !noalias !54
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCs3iPtYnXk70z_14event_listener5InneruEEECsbDLrNlwBX3H_4smol.exit.i.i.i.i

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtCs3iPtYnXk70z_14event_listener5InneruEE9drop_slowCs1gyvJd0MAV7_10async_lock(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #24
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCs3iPtYnXk70z_14event_listener5InneruEEECsbDLrNlwBX3H_4smol.exit.i.i.i.i unwind label %bb.n

bb.f:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.0.val, i64 48 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !55)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58)
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !61, !nonnull !4, !noundef !4
  %i.i = atomicrmw sub ptr %i.h, i64 1 release, align 8, !noalias !61
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCs3iPtYnXk70z_14event_listener5InneruEEECsbDLrNlwBX3H_4smol.exit3.i.i.i.i

bb.g:                                             ; preds = %bb.f
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtCs3iPtYnXk70z_14event_listener5InneruEE9drop_slowCs1gyvJd0MAV7_10async_lock(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g) #24
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCs3iPtYnXk70z_14event_listener5InneruEEECsbDLrNlwBX3H_4smol.exit3.i.i.i.i unwind label %bb.h

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCs3iPtYnXk70z_14event_listener5InneruEEECsbDLrNlwBX3H_4smol.exit.i.i.i.i: ; preds = %bb.h, %bb.e, %bb.d
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.k, %bb.h ], [ %i.b, %bb.e ], [ %i.b, %bb.d ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs3iPtYnXk70z_14event_listener3sys8ListeneruEEECsbDLrNlwBX3H_4smol(ptr noundef nonnull align 8 %.0.val) #25
          to label %bb.p unwind label %bb.n

bb.h:                                             ; preds = %bb.g
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCs3iPtYnXk70z_14event_listener5InneruEEECsbDLrNlwBX3H_4smol.exit.i.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCs3iPtYnXk70z_14event_listener5InneruEEECsbDLrNlwBX3H_4smol.exit3.i.i.i.i: ; preds = %bb.g, %bb.f
  %i.l = load i64, ptr %.0.val, align 8, !range !10, !noundef !4
  %0 = icmp eq i64 %i.l, 0
  br i1 %0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs3iPtYnXk70z_14event_listener13EventListenerECsbDLrNlwBX3H_4smol.exit, label %bb.i

bb.i:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCs3iPtYnXk70z_14event_listener5InneruEEECsbDLrNlwBX3H_4smol.exit3.i.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !68)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !77)
  %i.n = load i8, ptr %i.m, align 8, !range !31, !alias.scope !80, !noundef !4
  %i.o = icmp eq i8 %i.n, 2
  br i1 %i.o, label %bb.j, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs3iPtYnXk70z_14event_listener13EventListenerECsbDLrNlwBX3H_4smol.exit

bb.j:                                             ; preds = %bb.i
  %i.p = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81)
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !84, !noundef !4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.q, null
  %i.r = getelementptr inbounds nuw i8, ptr %.0.val, i64 24 ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.r, align 8, !alias.scope !84, !noundef !4
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !noalias !84, !nonnull !4, !noundef !4
  invoke void %i.t(ptr noundef %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs3iPtYnXk70z_14event_listener13EventListenerECsbDLrNlwBX3H_4smol.exit unwind label %bb.o, !inline_history !85

bb.l:                                             ; preds = %bb.j
  tail call void @llvm.experimental.noalias.scope.decl(metadata !86)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !89)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92)
  %i.u = load ptr, ptr %i.r, align 8, !alias.scope !95, !nonnull !4, !noundef !4
  %i.v = atomicrmw sub ptr %i.u, i64 1 release, align 8, !noalias !95
  %i.w = icmp eq i64 %i.v, 1
  br i1 %i.w, label %bb.m, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs3iPtYnXk70z_14event_listener13EventListenerECsbDLrNlwBX3H_4smol.exit

bb.m:                                             ; preds = %bb.l
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtCs2KJ8IamB81r_7parking5InnerE9drop_slowCs3iPtYnXk70z_14event_listener(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.r) #24
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs3iPtYnXk70z_14event_listener13EventListenerECsbDLrNlwBX3H_4smol.exit unwind label %bb.o

bb.n:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCs3iPtYnXk70z_14event_listener5InneruEEECsbDLrNlwBX3H_4smol.exit.i.i.i.i, %bb.e
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.o:                                             ; preds = %bb.m, %bb.k
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCs3iPtYnXk70z_14event_listener5InneruEEECsbDLrNlwBX3H_4smol.exit.i.i.i.i
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.y, %bb.o ], [ %.pn.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCs3iPtYnXk70z_14event_listener5InneruEEECsbDLrNlwBX3H_4smol.exit.i.i.i.i ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 56, i64 noundef 8) #22
  resume { ptr, i32 } %eh.lpad-body.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs3iPtYnXk70z_14event_listener13EventListenerECsbDLrNlwBX3H_4smol.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCs3iPtYnXk70z_14event_listener5InneruEEECsbDLrNlwBX3H_4smol.exit3.i.i.i.i, %bb.i, %bb.k, %bb.l, %bb.m
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 56, i64 noundef 8) #22
  br label %bb.b
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvXsf_NtCs1gyvJd0MAV7_10async_lock5mutexINtB6_11AcquireSlowRINtB6_5MutexuEuENtCskHQ0D3bTzth_23event_listener_strategy19EventListenerFuture18poll_with_strategyNtB1g_11NonBlockingECsbDLrNlwBX3H_4smol(ptr nofree noundef nonnull align 8 captures(none) %0, ptr noalias nofree noundef nonnull readnone captures(none) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !96)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !range !99, !alias.scope !96, !noundef !4 ; 2 uses
  %.not.i = icmp eq i32 %i.f, -1
  br i1 %.not.i, label %bb.b, label %._RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtCsG258MDvU3F_3std4time7InstantE18get_or_insert_withNvMBK_BI_3nowECsbDLrNlwBX3H_4smol.exit_crit_edge

._RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtCsG258MDvU3F_3std4time7InstantE18get_or_insert_withNvMBK_BI_3nowECsbDLrNlwBX3H_4smol.exit_crit_edge: ; preds = %bb.a
  %.pre = load i64, ptr %0, align 8
  br label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtCsG258MDvU3F_3std4time7InstantE18get_or_insert_withNvMBK_BI_3nowECsbDLrNlwBX3H_4smol.exit

bb.b:                                             ; preds = %bb.a
  %i.g = tail call { i64, i32 } @_RNvMNtCsG258MDvU3F_3std4timeNtB2_7Instant3now(), !noalias !96 ; 2 uses
  %i.h = extractvalue { i64, i32 } %i.g, 0        ; 2 uses
  %i.i = extractvalue { i64, i32 } %i.g, 1        ; 3 uses
  %i.j = icmp ult i32 %i.i, 1000000000
  tail call void @llvm.assume(i1 %i.j)
  store i64 %i.h, ptr %0, align 8, !alias.scope !96
  store i32 %i.i, ptr %i.e, align 8, !alias.scope !96
  br label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtCsG258MDvU3F_3std4time7InstantE18get_or_insert_withNvMBK_BI_3nowECsbDLrNlwBX3H_4smol.exit

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtCsG258MDvU3F_3std4time7InstantE18get_or_insert_withNvMBK_BI_3nowECsbDLrNlwBX3H_4smol.exit: ; preds = %._RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtCsG258MDvU3F_3std4time7InstantE18get_or_insert_withNvMBK_BI_3nowECsbDLrNlwBX3H_4smol.exit_crit_edge, %bb.b
  %i.k = phi i32 [ %i.f, %._RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtCsG258MDvU3F_3std4time7InstantE18get_or_insert_withNvMBK_BI_3nowECsbDLrNlwBX3H_4smol.exit_crit_edge ], [ %i.i, %bb.b ]
  %i.l = phi i64 [ %.pre, %._RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtCsG258MDvU3F_3std4time7InstantE18get_or_insert_withNvMBK_BI_3nowECsbDLrNlwBX3H_4smol.exit_crit_edge ], [ %i.h, %bb.b ]
  store i64 %i.l, ptr %i.a, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %i.k, ptr %i.m, align 8
  %i.n = load ptr, ptr %i.b, align 8, !align !100, !noundef !4 ; 8 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %bb.d, label %bb.c, !prof !101

bb.c:                                             ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtCsG258MDvU3F_3std4time7InstantE18get_or_insert_withNvMBK_BI_3nowECsbDLrNlwBX3H_4smol.exit
  %i.o = load i8, ptr %i.d, align 8, !range !11, !noundef !4
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.f, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  br label %bb.e

bb.d:                                             ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtCsG258MDvU3F_3std4time7InstantE18get_or_insert_withNvMBK_BI_3nowECsbDLrNlwBX3H_4smol.exit
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 30, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #26
  unreachable

bb.e:                                             ; preds = %.backedge94, %.preheader
  %i.r = load ptr, ptr %i.c, align 8, !align !100, !noundef !4 ; 3 uses
  %.not30 = icmp eq ptr %i.r, null
  br i1 %.not30, label %bb.j, label %bb.g, !prof !101

bb.f:                                             ; preds = %bb.t, %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  br label %bb.v

bb.g:                                             ; preds = %bb.e
  call void @llvm.experimental.noalias.scope.decl(metadata !102)
  %i.t = call noundef zeroext i1 @_RNvMsh_Cs3iPtYnXk70z_14event_listenerINtB5_13InnerListeneruINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtB5_5InneruEEE13poll_internalCsbDLrNlwBX3H_4smol(ptr noundef nonnull align 8 %i.r, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2), !noalias !102
  br i1 %i.t, label %_RINvXs2_CskHQ0D3bTzth_23event_listener_strategyNtB6_11NonBlockingNtB6_8Strategy4polluNtCs3iPtYnXk70z_14event_listener13EventListenerECsbDLrNlwBX3H_4smol.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs3iPtYnXk70z_14event_listener13EventListenerEECsbDLrNlwBX3H_4smol(ptr nonnull %i.r)
          to label %bb.k unwind label %bb.i, !noalias !102

common.resume:                                    ; preds = %bb.p, %bb.ad, %bb.y, %bb.i
  %.sink = phi ptr [ null, %bb.y ], [ null, %bb.i ], [ %i.v, %bb.p ], [ %i.ar, %bb.ad ]
  %common.resume.op = phi { ptr, i32 } [ %i.aq, %bb.y ], [ %i.u, %bb.i ], [ %i.ai, %bb.p ], [ %i.aw, %bb.ad ]
  store ptr %.sink, ptr %i.c, align 8
  resume { ptr, i32 } %common.resume.op

bb.i:                                             ; preds = %bb.h
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.j:                                             ; preds = %bb.e
  %i.v = call noundef nonnull align 8 ptr @_RNvMs5_Cs3iPtYnXk70z_14event_listenerNtB5_5Event6listenCsbDLrNlwBX3H_4smol(ptr noundef nonnull align 8 %i.q) ; 2 uses
  %.val39 = load ptr, ptr %i.c, align 8, !align !100, !noundef !4
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs3iPtYnXk70z_14event_listener13EventListenerEECsbDLrNlwBX3H_4smol(ptr %.val39)
          to label %bb.q unwind label %bb.p

bb.k:                                             ; preds = %bb.h
  store ptr null, ptr %i.c, align 8, !alias.scope !102, !noalias !105
  %i.w = cmpxchg ptr %i.n, i64 0, i64 1 acquire acquire, align 8
  %.sroa.01.0.i = extractvalue { i64, i1 } %i.w, 0
  switch i64 %.sroa.01.0.i, label %bb.l [
    i64 0, label %bb.m
    i64 1, label %bb.n
  ]

bb.l:                                             ; preds = %bb.k
  call fastcc void @_RINvMs5_Cs3iPtYnXk70z_14event_listenerNtB6_5Event6notifylECsbDLrNlwBX3H_4smol(ptr noundef nonnull align 8 %i.q) #27
  br label %.loopexit

bb.m:                                             ; preds = %bb.k
  %i.x = load ptr, ptr %i.b, align 8, !align !100, !noundef !4 ; 4 uses
  store ptr null, ptr %i.b, align 8
  %i.y = load i8, ptr %i.d, align 8, !range !11, !noundef !4
  %i.z = trunc nuw i8 %i.y to i1
  %.not.i41 = icmp ne ptr %i.x, null
  %or.cond.not.i = and i1 %.not.i41, %i.z
  br i1 %or.cond.not.i, label %_RINvXs2_CskHQ0D3bTzth_23event_listener_strategyNtB6_11NonBlockingNtB6_8Strategy4polluNtCs3iPtYnXk70z_14event_listener13EventListenerECsbDLrNlwBX3H_4smol.exit.thread.sink.split, label %_RNvMse_NtCs1gyvJd0MAV7_10async_lock5mutexINtB5_11AcquireSlowRINtB5_5MutexuEuE10take_mutexCsbDLrNlwBX3H_4smol.exit

_RNvMse_NtCs1gyvJd0MAV7_10async_lock5mutexINtB5_11AcquireSlowRINtB5_5MutexuEuE10take_mutexCsbDLrNlwBX3H_4smol.exit: ; preds = %bb.m
  %.not31 = icmp eq ptr %i.x, null
  br i1 %.not31, label %bb.o, label %_RINvXs2_CskHQ0D3bTzth_23event_listener_strategyNtB6_11NonBlockingNtB6_8Strategy4polluNtCs3iPtYnXk70z_14event_listener13EventListenerECsbDLrNlwBX3H_4smol.exit.thread, !prof !107

bb.n:                                             ; preds = %bb.k
  %i.aa = call { i64, i32 } @_RNvMNtCsG258MDvU3F_3std4timeNtB2_7Instant7elapsed(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a) ; 2 uses
  %i.ab = extractvalue { i64, i32 } %i.aa, 0
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %.split, label %.loopexit

bb.o:                                             ; preds = %_RNvMse_NtCs1gyvJd0MAV7_10async_lock5mutexINtB5_11AcquireSlowRINtB5_5MutexuEuE10take_mutexCsbDLrNlwBX3H_4smol.exit
  call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #26
  unreachable

.split:                                           ; preds = %bb.n
  %i.ad = extractvalue { i64, i32 } %i.aa, 1      ; 2 uses
  %i.ae = icmp ult i32 %i.ad, 1000000000
  call void @llvm.assume(i1 %i.ae)
  %i.af = icmp samesign ugt i32 %i.ad, 500000
  br i1 %i.af, label %.loopexit, label %.backedge94

.backedge94:                                      ; preds = %.split, %bb.q
  br label %bb.e

.loopexit:                                        ; preds = %bb.n, %.split, %bb.q, %bb.l
  %i.ag = atomicrmw add ptr %i.n, i64 2 release, align 8
  %i.ah = icmp slt i64 %i.ag, 0
  br i1 %i.ah, label %bb.u, label %bb.t, !prof !101

bb.p:                                             ; preds = %bb.j
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.q:                                             ; preds = %bb.j
  store ptr %i.v, ptr %i.c, align 8
  %i.aj = cmpxchg ptr %i.n, i64 0, i64 1 acquire acquire, align 8
  %.sroa.01.0.i45 = extractvalue { i64, i1 } %i.aj, 0
  switch i64 %.sroa.01.0.i45, label %.loopexit [
    i64 0, label %bb.r
    i64 1, label %.backedge94
  ]

bb.r:                                             ; preds = %bb.q
  %i.ak = load ptr, ptr %i.b, align 8, !align !100, !noundef !4 ; 4 uses
  store ptr null, ptr %i.b, align 8
  %i.al = load i8, ptr %i.d, align 8, !range !11, !noundef !4
  %i.am = trunc nuw i8 %i.al to i1
  %.not.i46 = icmp ne ptr %i.ak, null
  %or.cond.not.i47 = and i1 %.not.i46, %i.am
  br i1 %or.cond.not.i47, label %_RINvXs2_CskHQ0D3bTzth_23event_listener_strategyNtB6_11NonBlockingNtB6_8Strategy4polluNtCs3iPtYnXk70z_14event_listener13EventListenerECsbDLrNlwBX3H_4smol.exit.thread.sink.split, label %_RNvMse_NtCs1gyvJd0MAV7_10async_lock5mutexINtB5_11AcquireSlowRINtB5_5MutexuEuE10take_mutexCsbDLrNlwBX3H_4smol.exit48

_RNvMse_NtCs1gyvJd0MAV7_10async_lock5mutexINtB5_11AcquireSlowRINtB5_5MutexuEuE10take_mutexCsbDLrNlwBX3H_4smol.exit48: ; preds = %bb.r
  %.not32 = icmp eq ptr %i.ak, null
  br i1 %.not32, label %bb.s, label %_RINvXs2_CskHQ0D3bTzth_23event_listener_strategyNtB6_11NonBlockingNtB6_8Strategy4polluNtCs3iPtYnXk70z_14event_listener13EventListenerECsbDLrNlwBX3H_4smol.exit.thread, !prof !107

bb.s:                                             ; preds = %_RNvMse_NtCs1gyvJd0MAV7_10async_lock5mutexINtB5_11AcquireSlowRINtB5_5MutexuEuE10take_mutexCsbDLrNlwBX3H_4smol.exit48
  call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #26
  unreachable

_RINvXs2_CskHQ0D3bTzth_23event_listener_strategyNtB6_11NonBlockingNtB6_8Strategy4polluNtCs3iPtYnXk70z_14event_listener13EventListenerECsbDLrNlwBX3H_4smol.exit.thread.sink.split: ; preds = %bb.r, %bb.m, %bb.af, %bb.ab
  %.sink87 = phi ptr [ %i.at, %bb.ab ], [ %i.az, %bb.af ], [ %i.x, %bb.m ], [ %i.ak, %bb.r ] ; 2 uses
  %i.an = atomicrmw sub ptr %.sink87, i64 2 release, align 8 ; 0 uses
  br label %_RINvXs2_CskHQ0D3bTzth_23event_listener_strategyNtB6_11NonBlockingNtB6_8Strategy4polluNtCs3iPtYnXk70z_14event_listener13EventListenerECsbDLrNlwBX3H_4smol.exit.thread

_RINvXs2_CskHQ0D3bTzth_23event_listener_strategyNtB6_11NonBlockingNtB6_8Strategy4polluNtCs3iPtYnXk70z_14event_listener13EventListenerECsbDLrNlwBX3H_4smol.exit.thread: ; preds = %bb.g, %bb.w, %_RINvXs2_CskHQ0D3bTzth_23event_listener_strategyNtB6_11NonBlockingNtB6_8Strategy4polluNtCs3iPtYnXk70z_14event_listener13EventListenerECsbDLrNlwBX3H_4smol.exit.thread.sink.split, %_RNvMse_NtCs1gyvJd0MAV7_10async_lock5mutexINtB5_11AcquireSlowRINtB5_5MutexuEuE10take_mutexCsbDLrNlwBX3H_4smol.exit60, %_RNvMse_NtCs1gyvJd0MAV7_10async_lock5mutexINtB5_11AcquireSlowRINtB5_5MutexuEuE10take_mutexCsbDLrNlwBX3H_4smol.exit53, %_RNvMse_NtCs1gyvJd0MAV7_10async_lock5mutexINtB5_11AcquireSlowRINtB5_5MutexuEuE10take_mutexCsbDLrNlwBX3H_4smol.exit48, %_RNvMse_NtCs1gyvJd0MAV7_10async_lock5mutexINtB5_11AcquireSlowRINtB5_5MutexuEuE10take_mutexCsbDLrNlwBX3H_4smol.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_RNvMse_NtCs1gyvJd0MAV7_10async_lock5mutexINtB5_11AcquireSlowRINtB5_5MutexuEuE10take_mutexCsbDLrNlwBX3H_4smol.exit53 ], [ %i.ak, %_RNvMse_NtCs1gyvJd0MAV7_10async_lock5mutexINtB5_11AcquireSlowRINtB5_5MutexuEuE10take_mutexCsbDLrNlwBX3H_4smol.exit48 ], [ %.sink87, %_RINvXs2_CskHQ0D3bTzth_23event_listener_strategyNtB6_11NonBlockingNtB6_8Strategy4polluNtCs3iPtYnXk70z_14event_listener13EventListenerECsbDLrNlwBX3H_4smol.exit.thread.sink.split ], [ %i.x, %_RNvMse_NtCs1gyvJd0MAV7_10async_lock5mutexINtB5_11AcquireSlowRINtB5_5MutexuEuE10take_mutexCsbDLrNlwBX3H_4smol.exit ], [ null, %bb.w ], [ %i.az, %_RNvMse_NtCs1gyvJd0MAV7_10async_lock5mutexINtB5_11AcquireSlowRINtB5_5MutexuEuE10take_mutexCsbDLrNlwBX3H_4smol.exit60 ], [ null, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %.sroa.0.0

bb.t:                                             ; preds = %.loopexit
  store i8 1, ptr %i.d, align 8
  br label %bb.f

bb.u:                                             ; preds = %.loopexit
  call void @_RNvCs1gyvJd0MAV7_10async_lock5abort() #21
  unreachable

bb.v:                                             ; preds = %.backedge, %bb.f
  %i.ao = load ptr, ptr %i.c, align 8, !align !100, !noundef !4 ; 3 uses
  %.not33 = icmp eq ptr %i.ao, null
  br i1 %.not33, label %bb.z, label %bb.w, !prof !101

bb.w:                                             ; preds = %bb.v
  call void @llvm.experimental.noalias.scope.decl(metadata !108)
  %i.ap = call noundef zeroext i1 @_RNvMsh_Cs3iPtYnXk70z_14event_listenerINtB5_13InnerListeneruINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtB5_5InneruEEE13poll_internalCsbDLrNlwBX3H_4smol(ptr noundef nonnull align 8 %i.ao, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2), !noalias !108
  br i1 %i.ap, label %_RINvXs2_CskHQ0D3bTzth_23event_listener_strategyNtB6_11NonBlockingNtB6_8Strategy4polluNtCs3iPtYnXk70z_14event_listener13EventListenerECsbDLrNlwBX3H_4smol.exit.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs3iPtYnXk70z_14event_listener13EventListenerEECsbDLrNlwBX3H_4smol(ptr nonnull %i.ao)
          to label %bb.aa unwind label %bb.y, !noalias !108

bb.y:                                             ; preds = %bb.x
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.z:                                             ; preds = %bb.v
  %i.ar = call noundef nonnull align 8 ptr @_RNvMs5_Cs3iPtYnXk70z_14event_listenerNtB5_5Event6listenCsbDLrNlwBX3H_4smol(ptr noundef nonnull align 8 %i.s) ; 2 uses
  %.val38 = load ptr, ptr %i.c, align 8, !align !100, !noundef !4
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs3iPtYnXk70z_14event_listener13EventListenerEECsbDLrNlwBX3H_4smol(ptr %.val38)
          to label %bb.ae unwind label %bb.ad

bb.aa:                                            ; preds = %bb.x
  store ptr null, ptr %i.c, align 8, !alias.scope !108, !noalias !111
  %i.as = atomicrmw or ptr %i.n, i64 1 acquire, align 8
  %3 = and i64 %i.as, 1
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %bb.ab, label %.backedge

bb.ab:                                            ; preds = %bb.aa
  %i.at = load ptr, ptr %i.b, align 8, !align !100, !noundef !4 ; 4 uses
  store ptr null, ptr %i.b, align 8
  %i.au = load i8, ptr %i.d, align 8, !range !11, !noundef !4
  %i.av = trunc nuw i8 %i.au to i1
  %.not.i51 = icmp ne ptr %i.at, null
  %or.cond.not.i52 = and i1 %.not.i51, %i.av
  br i1 %or.cond.not.i52, label %_RINvXs2_CskHQ0D3bTzth_23event_listener_strategyNtB6_11NonBlockingNtB6_8Strategy4polluNtCs3iPtYnXk70z_14event_listener13EventListenerECsbDLrNlwBX3H_4smol.exit.thread.sink.split, label %_RNvMse_NtCs1gyvJd0MAV7_10async_lock5mutexINtB5_11AcquireSlowRINtB5_5MutexuEuE10take_mutexCsbDLrNlwBX3H_4smol.exit53

_RNvMse_NtCs1gyvJd0MAV7_10async_lock5mutexINtB5_11AcquireSlowRINtB5_5MutexuEuE10take_mutexCsbDLrNlwBX3H_4smol.exit53: ; preds = %bb.ab
  %.not34 = icmp eq ptr %i.at, null
  br i1 %.not34, label %bb.ac, label %_RINvXs2_CskHQ0D3bTzth_23event_listener_strategyNtB6_11NonBlockingNtB6_8Strategy4polluNtCs3iPtYnXk70z_14event_listener13EventListenerECsbDLrNlwBX3H_4smol.exit.thread, !prof !107

bb.ac:                                            ; preds = %_RNvMse_NtCs1gyvJd0MAV7_10async_lock5mutexINtB5_11AcquireSlowRINtB5_5MutexuEuE10take_mutexCsbDLrNlwBX3H_4smol.exit53
  call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #26
  unreachable

bb.ad:                                            ; preds = %bb.z
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.ae:                                            ; preds = %bb.z
  store ptr %i.ar, ptr %i.c, align 8
  %i.ax = cmpxchg ptr %i.n, i64 2, i64 3 acquire acquire, align 8 ; 2 uses
  %i.ay = extractvalue { i64, i1 } %i.ax, 1
  br i1 %i.ay, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.az = load ptr, ptr %i.b, align 8, !align !100, !noundef !4 ; 4 uses
  store ptr null, ptr %i.b, align 8
  %i.ba = load i8, ptr %i.d, align 8, !range !11, !noundef !4
  %i.bb = trunc nuw i8 %i.ba to i1
  %.not.i58 = icmp ne ptr %i.az, null
  %or.cond.not.i59 = and i1 %.not.i58, %i.bb
  br i1 %or.cond.not.i59, label %_RINvXs2_CskHQ0D3bTzth_23event_listener_strategyNtB6_11NonBlockingNtB6_8Strategy4polluNtCs3iPtYnXk70z_14event_listener13EventListenerECsbDLrNlwBX3H_4smol.exit.thread.sink.split, label %_RNvMse_NtCs1gyvJd0MAV7_10async_lock5mutexINtB5_11AcquireSlowRINtB5_5MutexuEuE10take_mutexCsbDLrNlwBX3H_4smol.exit60

_RNvMse_NtCs1gyvJd0MAV7_10async_lock5mutexINtB5_11AcquireSlowRINtB5_5MutexuEuE10take_mutexCsbDLrNlwBX3H_4smol.exit60: ; preds = %bb.af
  %.not37 = icmp eq ptr %i.az, null
  br i1 %.not37, label %bb.ah, label %_RINvXs2_CskHQ0D3bTzth_23event_listener_strategyNtB6_11NonBlockingNtB6_8Strategy4polluNtCs3iPtYnXk70z_14event_listener13EventListenerECsbDLrNlwBX3H_4smol.exit.thread, !prof !107

bb.ag:                                            ; preds = %bb.ae
  %.sroa.01.0.i57 = extractvalue { i64, i1 } %i.ax, 0
  %5 = and i64 %.sroa.01.0.i57, 1
  %.not36 = icmp eq i64 %5, 0
  br i1 %.not36, label %bb.ai, label %.backedge

bb.ah:                                            ; preds = %_RNvMse_NtCs1gyvJd0MAV7_10async_lock5mutexINtB5_11AcquireSlowRINtB5_5MutexuEuE10take_mutexCsbDLrNlwBX3H_4smol.exit60
  call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #26
  unreachable

bb.ai:                                            ; preds = %bb.ag
  call fastcc void @_RINvMs5_Cs3iPtYnXk70z_14event_listenerNtB6_5Event6notifylECsbDLrNlwBX3H_4smol(ptr noundef nonnull align 8 %i.s) #27
  br label %.backedge

.backedge:                                        ; preds = %bb.ai, %bb.ag, %bb.aa
  br label %bb.v
}

; Function Attrs: cold inlinehint noreturn nonlazybind uwtable
define internal fastcc void @_RNCINvMs0_Cs8NKWGp8lJEP_8fastrandNtB8_3Rng5usizeINtNtNtCskKLDkoKarTP_4core3ops5range7RangeTojEE0CsbDLrNlwBX3H_4smol(ptr %.0.val) unnamed_addr #3 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  store i64 2, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 1, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.0.val, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1c_NtNtCskKLDkoKarTP_4core3ops5rangeINtB6_5BoundRjENtNtBa_3fmt5Debug3fmtCsbDLrNlwBX3H_4smol, ptr %.sroa.42.0..sroa_idx, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.e, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs1c_NtNtCskKLDkoKarTP_4core3ops5rangeINtB6_5BoundRjENtNtBa_3fmt5Debug3fmtCsbDLrNlwBX3H_4smol, ptr %.sroa.46.0..sroa_idx, align 8
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @9, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #26
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtCseSXqeRWftQm_16concurrent_queue6singleINtB2_6SingleNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableE3popCsbDLrNlwBX3H_4smol(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = cmpxchg ptr %1, i64 2, i64 1 seq_cst seq_cst, align 8 ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 1
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.h
  %.pn = phi { i64, i1 } [ %i.o, %bb.h ], [ %i.a, %bb.a ]
  %.sroa.01.0.i14 = extractvalue { i64, i1 } %.pn, 0 ; 5 uses
  %i.c = and i64 %.sroa.01.0.i14, 2
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

._crit_edge:                                      ; preds = %bb.h, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !4, !noundef !4
  %i.g = atomicrmw and ptr %1, i64 -2 release, align 8 ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %i.h, align 8
  br label %bb.f

bb.b:                                             ; preds = %.lr.ph
  %i.i = and i64 %.sroa.01.0.i14, 4
  %i.j = icmp eq i64 %i.i, 0
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  br i1 %i.j, label %bb.d, label %bb.e

bb.c:                                             ; preds = %.lr.ph
  %2 = and i64 %.sroa.01.0.i14, 1
  %3 = icmp eq i64 %2, 0
  br i1 %3, label %bb.h, label %bb.g

bb.d:                                             ; preds = %bb.b
  store i8 0, ptr %i.k, align 1
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  store i8 1, ptr %i.k, align 1
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %._crit_edge
  %.sink = phi i8 [ 1, %bb.d ], [ 1, %bb.e ], [ 0, %._crit_edge ]
  store i8 %.sink, ptr %0, align 8
  ret void

bb.g:                                             ; preds = %bb.c
  tail call void @_RNvNtNtCsG258MDvU3F_3std6thread9functions9yield_now()
  %i.l = and i64 %.sroa.01.0.i14, -2
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.g
  %.sroa.0.1 = phi i64 [ %i.l, %bb.g ], [ %.sroa.01.0.i14, %bb.c ] ; 2 uses
  %i.m = and i64 %.sroa.0.1, -4
  %i.n = or disjoint i64 %i.m, 1
  %i.o = cmpxchg ptr %1, i64 %.sroa.0.1, i64 %i.n seq_cst seq_cst, align 8 ; 2 uses
  %i.p = extractvalue { i64, i1 } %i.o, 1
  br i1 %i.p, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress norecurse nounwind nonlazybind willreturn uwtable
define hidden { i64, ptr } @_RNvMNtCseSXqeRWftQm_16concurrent_queue6singleINtB2_6SingleNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableE4pushCsbDLrNlwBX3H_4smol(ptr nofree noundef nonnull align 8 captures(none) %0, ptr noundef nonnull %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = cmpxchg ptr %0, i64 0, i64 3 seq_cst seq_cst, align 8 ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.c, align 8
  %i.d = atomicrmw and ptr %0, i64 -2 release, align 8 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %.sroa.01.0.i = extractvalue { i64, i1 } %i.a, 0
  %i.e = lshr i64 %.sroa.01.0.i, 2
  %.lobit = and i64 %i.e, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0 = phi i64 [ 2, %bb.b ], [ %.lobit, %bb.c ]
  %i.f = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.g = insertvalue { i64, ptr } %i.f, ptr %1, 1
  ret { i64, ptr } %i.g
}

; Function Attrs: norecurse nounwind nonlazybind uwtable
define hidden noundef i64 @_RNvMNtCseSXqeRWftQm_16concurrent_queue7boundedINtB2_7BoundedNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableE3lenCsbDLrNlwBX3H_4smol(ptr nofree noundef nonnull align 128 captures(none) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %i.b = load atomic i64, ptr %i.a seq_cst, align 128 ; 3 uses
  %i.c = load atomic i64, ptr %0 seq_cst, align 128 ; 2 uses
  %i.d = load atomic i64, ptr %i.a seq_cst, align 128
  %i.e = icmp eq i64 %i.d, %i.b
  br i1 %i.e, label %bb.c, label %bb.b

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.g = load i64, ptr %i.f, align 8, !noundef !4 ; 2 uses
  %i.h = add i64 %i.g, -1                         ; 2 uses
  %i.i = and i64 %i.h, %i.c                       ; 4 uses
  %i.j = and i64 %i.h, %i.b                       ; 4 uses
  %i.k = icmp ult i64 %i.i, %i.j
  br i1 %i.k, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = icmp ugt i64 %i.i, %i.j
  br i1 %i.l, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.m = sub nuw i64 %i.j, %i.i
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.n = xor i64 %i.g, -1
  %i.o = and i64 %i.b, %i.n
  %i.p = icmp eq i64 %i.o, %i.c
  br i1 %i.p, label %bb.i, label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.r = load i64, ptr %i.q, align 8, !noundef !4
  %i.s = sub i64 %i.j, %i.i
  %i.t = add i64 %i.s, %i.r
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.v = load i64, ptr %i.u, align 8, !noundef !4
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.g, %bb.h, %bb.e
  %.sroa.0.0 = phi i64 [ %i.m, %bb.e ], [ %i.t, %bb.g ], [ %i.v, %bb.h ], [ 0, %bb.f ]
  ret i64 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtCseSXqeRWftQm_16concurrent_queue7boundedINtB2_7BoundedNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableE3popCsbDLrNlwBX3H_4smol(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull align 128 captures(none) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load atomic i64, ptr %1 monotonic, align 128 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 264 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 280 ; 3 uses
  %i.f = load i64, ptr %i.c, align 8, !noundef !4
  %i.g = add i64 %i.f, -1
  %i.h = and i64 %i.g, %i.b                       ; 3 uses
  %i.i = load i64, ptr %i.e, align 8, !noundef !4 ; 2 uses
  %i.j = icmp ult i64 %i.h, %i.i
  br i1 %i.j, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.k = load i64, ptr %i.d, align 128, !noundef !4
  %i.l = sub i64 0, %i.k
  %i.m = and i64 %i.b, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 128
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.h
  %i.p = phi i64 [ %i.m, %.lr.ph ], [ %i.ao, %bb.h ]
  %i.q = phi i64 [ %i.h, %.lr.ph ], [ %i.al, %bb.h ] ; 2 uses
  %.sroa.03.029 = phi i64 [ %i.b, %.lr.ph ], [ %.sroa.03.1, %bb.h ] ; 5 uses
  %i.r = load ptr, ptr %i.n, align 16, !nonnull !4, !noundef !4
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.q ; 3 uses
  %i.t = load atomic i64, ptr %i.s acquire, align 8 ; 3 uses
  %i.u = add i64 %.sroa.03.029, 1
  %i.v = icmp eq i64 %i.u, %i.t
  br i1 %i.v, label %bb.d, label %bb.c

._crit_edge:                                      ; preds = %bb.h, %bb.a
  %.lcssa22 = phi i64 [ %i.h, %bb.a ], [ %i.al, %bb.h ]
  %.lcssa16 = phi i64 [ %i.i, %bb.a ], [ %i.ap, %bb.h ]
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa22, i64 noundef %.lcssa16, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #26
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.w = icmp eq i64 %i.t, %.sroa.03.029
  br i1 %i.w, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.x = add nuw i64 %i.q, 1
  %i.y = load i64, ptr %i.e, align 8, !noundef !4
  %i.z = icmp ult i64 %i.x, %i.y
  br i1 %i.z, label %bb.m, label %bb.l

bb.e:                                             ; preds = %bb.c
  call void @_RNvNtNtCsG258MDvU3F_3std6thread9functions9yield_now()
  br label %.sink.split

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  call void asm sideeffect inteldialect "lock not qword ptr [${0:q}]", "r,~{memory}"(ptr nonnull %i.a) #22, !srcloc !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.aa = load atomic i64, ptr %i.o monotonic, align 128 ; 2 uses
  %i.ab = load i64, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %i.ac = xor i64 %i.ab, -1
  %i.ad = and i64 %i.aa, %i.ac
  %i.ae = icmp eq i64 %i.ad, %.sroa.03.029
  br i1 %i.ae, label %bb.g, label %.sink.split

bb.g:                                             ; preds = %bb.f
  %i.af = and i64 %i.ab, %i.aa
  %i.ag = icmp eq i64 %i.af, 0
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  br i1 %i.ag, label %bb.i, label %bb.j

.sink.split:                                      ; preds = %bb.f, %bb.e
  %i.ai = load atomic i64, ptr %1 monotonic, align 128
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %bb.m
  %.sroa.03.1 = phi i64 [ %i.av, %bb.m ], [ %i.ai, %.sink.split ] ; 3 uses
  %i.aj = load i64, ptr %i.c, align 8, !noundef !4
  %i.ak = add i64 %i.aj, -1
  %i.al = and i64 %i.ak, %.sroa.03.1              ; 3 uses
  %i.am = load i64, ptr %i.d, align 128, !noundef !4
  %i.an = sub i64 0, %i.am
  %i.ao = and i64 %.sroa.03.1, %i.an
  %i.ap = load i64, ptr %i.e, align 8, !noundef !4 ; 2 uses
  %i.aq = icmp ult i64 %i.al, %i.ap
  br i1 %i.aq, label %bb.b, label %._crit_edge

bb.i:                                             ; preds = %bb.g
  store i8 0, ptr %i.ah, align 1
  br label %bb.k

bb.j:                                             ; preds = %bb.g
end_hunk_0
begin_hunk_1_@_RNvXs5_NtCsitb6zIp059K_12futures_lite6futureINtB5_2OrINtNtNtCskKLDkoKarTP_4core6future7pending7PendinguENCNCINvMsb_Csa9iXSdNszRG_14async_executorNtB1P_5State3runuBP_E00ENtNtBU_6future6Future4pollCsbDLrNlwBX3H_4smol:bb.a
  unreachable

bb.ab:                                            ; preds = %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB5_4TakeINtNtB7_4skip4SkipINtNtB7_5chain5ChainINtNtNtBb_5slice4iter4IterINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEB1A_EEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB4k_4find5checkRB20_QNCNCNCNvMsf_Csa9iXSdNszRG_14async_executorNtB5G_6Runner8runnable000E0INtNtNtBb_3ops12control_flow11ControlFlowB5o_EECsbDLrNlwBX3H_4smol.exit.thread.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !155
  %.pre.i.i.i.i.i.i = load i64, ptr %i.g, align 8, !range !10, !noalias !155
  %i.ca = trunc nuw i64 %.pre.i.i.i.i.i.i to i1
  %i.cb = load ptr, ptr %i.au, align 8, !noalias !137
  %.not.i.i23.i.i.i.i.i.i = icmp ne ptr %i.cb, null
  %or.cond.not.i.i.i.i.i = select i1 %i.ca, i1 %.not.i.i23.i.i.i.i.i.i, i1 false
  br i1 %or.cond.not.i.i.i.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std4sync6poison12TryLockErrorINtNtBE_6rwlock15RwLockReadGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB20_4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEEEECsbDLrNlwBX3H_4smol.exit.sink.split.i25.i.i.i.i.i.i, label %.thread.i.thread.i.i.i.i.i

bb.ac:                                            ; preds = %.noexc10.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !155
  store ptr %i.br, ptr %i.f, align 8, !noalias !155
  store ptr %i.bs, ptr %i.ay, align 8, !noalias !155
  %i.cc = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.cd = load i64, ptr %i.cc, align 8, !noalias !152, !noundef !4 ; 10 uses
  %i.ce = icmp ult i64 %i.cd, 1152921504606846976
  call void @llvm.assume(i1 %i.ce)
  %i.cf = load ptr, ptr %i.az, align 8, !alias.scope !152, !nonnull !4, !align !100, !noundef !4 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !162)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !155
  store i64 %i.cd, ptr %i.b, align 8, !noalias !165
  %i.cg = icmp eq i64 %i.cd, 0
  br i1 %i.cg, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  invoke fastcc void @_RNCINvMs0_Cs8NKWGp8lJEP_8fastrandNtB8_3Rng5usizeINtNtNtCskKLDkoKarTP_4core3ops5range7RangeTojEE0CsbDLrNlwBX3H_4smol(ptr nonnull readonly align 8 dereferenceable(8) %i.b) #27
          to label %.noexc.i.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.i.i

.noexc.i.i.i.i.i.i:                               ; preds = %bb.ad
  unreachable

bb.ae:                                            ; preds = %bb.ac
  %i.ch = load i64, ptr %i.cf, align 8, !alias.scope !166, !noalias !152, !noundef !4
  %i.ci = add i64 %i.ch, 3257665815644502181      ; 4 uses
  store i64 %i.ci, ptr %i.cf, align 8, !alias.scope !166, !noalias !152
  %i.cj = zext i64 %i.ci to i128
  %i.ck = xor i64 %i.ci, -8378864009470890807
  %i.cl = zext i64 %i.ck to i128
  %i.cm = mul nuw i128 %i.cl, %i.cj               ; 2 uses
  %i.cn = lshr i128 %i.cm, 64
  %i.co = xor i128 %i.cn, %i.cm                   ; 2 uses
  %i.cp = trunc i128 %i.co to i64
  %i.cq = and i128 %i.co, 18446744073709551615
  %i.cr = zext nneg i64 %i.cd to i128             ; 2 uses
  %i.cs = mul nuw nsw i128 %i.cq, %i.cr
  %i.ct = lshr i128 %i.cs, 64
  %i.cu = trunc nuw nsw i128 %i.ct to i64         ; 2 uses
  %i.cv = mul i64 %i.cd, %i.cp                    ; 2 uses
  %i.cw = icmp ult i64 %i.cv, %i.cd
  br i1 %i.cw, label %bb.af, label %.lr.ph.i.i.i.i.i.i

bb.af:                                            ; preds = %bb.ae
  %i.cx = sub nsw i64 0, %i.cd
  %i.cy = urem i64 %i.cx, %i.cd                   ; 2 uses
  %i.cz = icmp samesign ult i64 %i.cv, %i.cy
  br i1 %i.cz, label %.lr.ph.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

..loopexit_crit_edge.i.i.i.i.i.i.i.i:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  store i64 %i.df, ptr %i.cf, align 8, !alias.scope !166, !noalias !152
  %i.da = and i128 %i.dl, 18446744073709551615
  %i.db = mul nuw nsw i128 %i.da, %i.cr
  %i.dc = lshr i128 %i.db, 64
  %i.dd = trunc nuw nsw i128 %i.dc to i64
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.af, %.lr.ph.i.i.i.i.i.i.i.i
  %i.de = phi i64 [ %i.df, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.ci, %bb.af ]
  %i.df = add i64 %i.de, 3257665815644502181      ; 4 uses
  %i.dg = zext i64 %i.df to i128
  %i.dh = xor i64 %i.df, -8378864009470890807
  %i.di = zext i64 %i.dh to i128
  %i.dj = mul nuw i128 %i.di, %i.dg               ; 2 uses
  %i.dk = lshr i128 %i.dj, 64
  %i.dl = xor i128 %i.dk, %i.dj                   ; 2 uses
  %i.dm = trunc i128 %i.dl to i64
  %i.dn = mul i64 %i.cd, %i.dm
  %i.do = icmp ult i64 %i.dn, %i.cy
  br i1 %i.do, label %.lr.ph.i.i.i.i.i.i.i.i, label %..loopexit_crit_edge.i.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i:                            ; preds = %bb.an, %bb.am, %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4skipINtB5_4SkipINtNtB7_5chain5ChainINtNtNtBb_5slice4iter4IterINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEB1i_EENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvXs_NtB7_4takeINtB4T_4TakepEB41_8try_fold5checkRB1I_uINtNtNtBb_3ops12control_flow11ControlFlowB5A_ENCINvNvB41_4find5checkB5A_QNCNCNCNvMsf_Csa9iXSdNszRG_14async_executorNtB73_6Runner8runnable000E0E0IB5H_B5G_EECsbDLrNlwBX3H_4smol.exit.i.i.i.i.i.i.i
  %lpad.loopexit.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

.loopexit.split-lp.i.i.i.i.i.i:                   ; preds = %bb.ad
  %lpad.loopexit.split-lp.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.ag:                                            ; preds = %.loopexit.split-lp.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i
  %lpad.phi.i.i.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i.i ]
  invoke void @_RNvXsh_NtNtNtCsG258MDvU3F_3std4sync6poison6rwlockINtB5_15RwLockReadGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1d_4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.f)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1G_4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEEECsbDLrNlwBX3H_4smol.exit.i.i.i.i.i.i unwind label %bb.aa, !noalias !152

.lr.ph.i.i.i.i.i.i:                               ; preds = %..loopexit_crit_edge.i.i.i.i.i.i.i.i, %bb.af, %bb.ae
  %.sroa.0.0.i.i.i.i.i.i.i.i = phi i64 [ %i.cu, %bb.ae ], [ %i.dd, %..loopexit_crit_edge.i.i.i.i.i.i.i.i ], [ %i.cu, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !155
  %i.dp = load ptr, ptr %i.f, align 8, !noalias !155, !nonnull !4, !noundef !4 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8, !noalias !152, !nonnull !4, !noundef !4 ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %i.dt = load i64, ptr %i.ds, align 8, !noalias !152, !noundef !4
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %i.dt ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !155
  store ptr %i.ba, ptr %i.e, align 8, !noalias !155
  store ptr %i.dr, ptr %.sroa.54.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !155
  store ptr %i.du, ptr %.sroa.54.sroa.5.0..sroa.54.0..sroa_idx.sroa_idx.i.i.i.i.i.i, align 8, !noalias !155
  store ptr %i.dr, ptr %.sroa.54.sroa.6.0..sroa.54.0..sroa_idx.sroa_idx.i.i.i.i.i.i, align 8, !noalias !155
  store ptr %i.du, ptr %.sroa.54.sroa.7.0..sroa.54.0..sroa_idx.sroa_idx.i.i.i.i.i.i, align 8, !noalias !155
  store i64 %i.cd, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !155
  br label %bb.ah

thread-pre-split.i.i.i.i.i.i:                     ; preds = %bb.ap
  %.pr.i.i.i.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !169, !noalias !174
  br label %bb.ah

bb.ah:                                            ; preds = %thread-pre-split.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.dv = phi i64 [ %.pr.i.i.i.i.i.i, %thread-pre-split.i.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  store i64 0, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !169, !noalias !174
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.dv, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4skipINtB5_4SkipINtNtB7_5chain5ChainINtNtNtBb_5slice4iter4IterINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEB1i_EENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvXs_NtB7_4takeINtB4T_4TakepEB41_8try_fold5checkRB1I_uINtNtNtBb_3ops12control_flow11ControlFlowB5A_ENCINvNvB41_4find5checkB5A_QNCNCNCNvMsf_Csa9iXSdNszRG_14async_executorNtB73_6Runner8runnable000E0E0IB5H_B5G_EECsbDLrNlwBX3H_4smol.exit.i.i.i.i.i.i.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dw = add i64 %i.dv, -1                       ; 3 uses
  %i.dx = load ptr, ptr %.sroa.54.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !178, !noalias !174, !noundef !4 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.dx, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dy = load ptr, ptr %.sroa.54.sroa.5.0..sroa.54.0..sroa_idx.sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !181, !noalias !174, !nonnull !4, !noundef !4 ; 2 uses
  %i.dz = ptrtoint ptr %i.dy to i64
  %i.ea = ptrtoint ptr %i.dx to i64
  %i.eb = sub nuw i64 %i.dz, %i.ea
  %i.ec = lshr exact i64 %i.eb, 3
  %..i.i.i.i.i.i.i.i.i.i.i = call noundef range(i64 0, 2305843009213693952) i64 @llvm.umin.i64(i64 range(i64 0, -1) %i.dw, i64 range(i64 0, 2305843009213693952) %i.ec) ; 2 uses
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %..i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.ee = sub nuw i64 %i.dw, %..i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.not7.i.i.i.i.i.i.i.i.i = icmp ne i64 %i.ee, 0
  %i.ef = icmp eq ptr %i.ed, %i.dy
  %or.cond.i.i.i.i.i.i.i.i.i = select i1 %.not7.i.i.i.i.i.i.i.i.i, i1 true, i1 %i.ef
  br i1 %or.cond.i.i.i.i.i.i.i.i.i, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbDLrNlwBX3H_4smol.exit.thread.i.i.i.i.i.i.i.i.i, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbDLrNlwBX3H_4smol.exit.i.i.i.i.i.i.i.i.i

bb.ak:                                            ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbDLrNlwBX3H_4smol.exit.thread.i.i.i.i.i.i.i.i.i, %bb.ai
  %.sroa.0.0.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ee, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbDLrNlwBX3H_4smol.exit.thread.i.i.i.i.i.i.i.i.i ], [ %i.dw, %bb.ai ] ; 2 uses
  %i.eg = load ptr, ptr %.sroa.54.sroa.6.0..sroa.54.0..sroa_idx.sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !178, !noalias !174, !noundef !4 ; 3 uses
  %.not9.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.eg, null
  br i1 %.not9.i.i.i.i.i.i.i.i.i, label %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB5_4TakeINtNtB7_4skip4SkipINtNtB7_5chain5ChainINtNtNtBb_5slice4iter4IterINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEB1A_EEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB4k_4find5checkRB20_QNCNCNCNvMsf_Csa9iXSdNszRG_14async_executorNtB5G_6Runner8runnable000E0INtNtNtBb_3ops12control_flow11ControlFlowB5o_EECsbDLrNlwBX3H_4smol.exit.thread.i.i.i.i.i.i, label %bb.al

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbDLrNlwBX3H_4smol.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.aj
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  store ptr %i.eh, ptr %.sroa.54.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !184, !noalias !174
  br label %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4skipINtB5_4SkipINtNtB7_5chain5ChainINtNtNtBb_5slice4iter4IterINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEB1i_EENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvXs_NtB7_4takeINtB4T_4TakepEB41_8try_fold5checkRB1I_uINtNtNtBb_3ops12control_flow11ControlFlowB5A_ENCINvNvB41_4find5checkB5A_QNCNCNCNvMsf_Csa9iXSdNszRG_14async_executorNtB73_6Runner8runnable000E0E0IB5H_B5G_EECsbDLrNlwBX3H_4smol.exit.i.i.i.i.i.i.i

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbDLrNlwBX3H_4smol.exit.thread.i.i.i.i.i.i.i.i.i: ; preds = %bb.aj
  store ptr null, ptr %.sroa.54.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !178, !noalias !174
  br label %bb.ak

bb.al:                                            ; preds = %bb.ak
  %i.ei = load ptr, ptr %.sroa.54.sroa.7.0..sroa.54.0..sroa_idx.sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !187, !noalias !174, !nonnull !4, !noundef !4 ; 2 uses
  %i.ej = ptrtoint ptr %i.ei to i64
  %i.ek = ptrtoint ptr %i.eg to i64
  %i.el = sub nuw i64 %i.ej, %i.ek
  %i.em = lshr exact i64 %i.el, 3
  %.not.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i, %i.em ; 2 uses
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %storemerge.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i.i.i, ptr %i.eo, ptr %i.ei
  store ptr %storemerge.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.54.sroa.6.0..sroa.54.0..sroa_idx.sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !187, !noalias !174
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4skipINtB5_4SkipINtNtB7_5chain5ChainINtNtNtBb_5slice4iter4IterINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEB1i_EENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvXs_NtB7_4takeINtB4T_4TakepEB41_8try_fold5checkRB1I_uINtNtNtBb_3ops12control_flow11ControlFlowB5A_ENCINvNvB41_4find5checkB5A_QNCNCNCNvMsf_Csa9iXSdNszRG_14async_executorNtB73_6Runner8runnable000E0E0IB5H_B5G_EECsbDLrNlwBX3H_4smol.exit.i.i.i.i.i.i.i, label %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB5_4TakeINtNtB7_4skip4SkipINtNtB7_5chain5ChainINtNtNtBb_5slice4iter4IterINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEB1A_EEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB4k_4find5checkRB20_QNCNCNCNvMsf_Csa9iXSdNszRG_14async_executorNtB5G_6Runner8runnable000E0INtNtNtBb_3ops12control_flow11ControlFlowB5o_EECsbDLrNlwBX3H_4smol.exit.thread.i.i.i.i.i.i

_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4skipINtB5_4SkipINtNtB7_5chain5ChainINtNtNtBb_5slice4iter4IterINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEB1i_EENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvXs_NtB7_4takeINtB4T_4TakepEB41_8try_fold5checkRB1I_uINtNtNtBb_3ops12control_flow11ControlFlowB5A_ENCINvNvB41_4find5checkB5A_QNCNCNCNvMsf_Csa9iXSdNszRG_14async_executorNtB73_6Runner8runnable000E0E0IB5H_B5G_EECsbDLrNlwBX3H_4smol.exit.i.i.i.i.i.i.i: ; preds = %bb.al, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbDLrNlwBX3H_4smol.exit.i.i.i.i.i.i.i.i.i, %bb.ah
  %i.ep = invoke { i64, ptr } @_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters5chainINtB5_5ChainINtNtNtBb_5slice4iter4IterINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEB10_ENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvXs_NtB7_4takeINtB4A_4TakepEB3I_8try_fold5checkRB1q_uINtNtNtBb_3ops12control_flow11ControlFlowB5h_ENCINvNvB3I_4find5checkB5h_QNCNCNCNvMsf_Csa9iXSdNszRG_14async_executorNtB6K_6Runner8runnable000E0E0IB5o_B5n_EECsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %.sroa.54.0..sroa_idx.i.i.i.i.i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %.sroa.7.0..sroa_idx.i.i.i.i.i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %.noexc12.i.i.i.i.i.i unwind label %.loopexit.i.i.i.i.i.i, !noalias !152 ; 2 uses

.noexc12.i.i.i.i.i.i:                             ; preds = %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4skipINtB5_4SkipINtNtB7_5chain5ChainINtNtNtBb_5slice4iter4IterINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEB1i_EENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvXs_NtB7_4takeINtB4T_4TakepEB41_8try_fold5checkRB1I_uINtNtNtBb_3ops12control_flow11ControlFlowB5A_ENCINvNvB41_4find5checkB5A_QNCNCNCNvMsf_Csa9iXSdNszRG_14async_executorNtB73_6Runner8runnable000E0E0IB5H_B5G_EECsbDLrNlwBX3H_4smol.exit.i.i.i.i.i.i.i
  %i.eq = extractvalue { i64, ptr } %i.ep, 0
  %i.er = extractvalue { i64, ptr } %i.ep, 1      ; 2 uses
  %i.es = trunc nuw i64 %i.eq to i1
  %.not.i.i.i.i.i.i = icmp ne ptr %i.er, null
  %or.cond.not.i.i.i.i.i.i = select i1 %i.es, i1 %.not.i.i.i.i.i.i, i1 false
  br i1 %or.cond.not.i.i.i.i.i.i, label %bb.am, label %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB5_4TakeINtNtB7_4skip4SkipINtNtB7_5chain5ChainINtNtNtBb_5slice4iter4IterINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEB1A_EEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB4k_4find5checkRB20_QNCNCNCNvMsf_Csa9iXSdNszRG_14async_executorNtB5G_6Runner8runnable000E0INtNtNtBb_3ops12control_flow11ControlFlowB5o_EECsbDLrNlwBX3H_4smol.exit.thread.i.i.i.i.i.i

bb.am:                                            ; preds = %.noexc12.i.i.i.i.i.i
  %i.et = load ptr, ptr %i.er, align 8, !noalias !152, !nonnull !4, !noundef !4
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 128
  %i.ev = load ptr, ptr %i.ba, align 8, !noalias !152, !nonnull !4, !noundef !4
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 128
  invoke void @_RINvCsa9iXSdNszRG_14async_executor5stealNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableECsbDLrNlwBX3H_4smol(ptr noundef nonnull align 128 %i.eu, ptr noundef nonnull align 128 %i.ew)
          to label %bb.an unwind label %.loopexit.i.i.i.i.i.i, !noalias !152

_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB5_4TakeINtNtB7_4skip4SkipINtNtB7_5chain5ChainINtNtNtBb_5slice4iter4IterINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEB1A_EEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB4k_4find5checkRB20_QNCNCNCNvMsf_Csa9iXSdNszRG_14async_executorNtB5G_6Runner8runnable000E0INtNtNtBb_3ops12control_flow11ControlFlowB5o_EECsbDLrNlwBX3H_4smol.exit.thread.i.i.i.i.i.i: ; preds = %bb.ap, %.noexc12.i.i.i.i.i.i, %bb.al, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !155
  invoke void @_RNvXsh_NtNtNtCsG258MDvU3F_3std4sync6poison6rwlockINtB5_15RwLockReadGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1d_4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.f)
          to label %bb.ab unwind label %.loopexit.i.i.i.i.i, !noalias !152

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1G_4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEEECsbDLrNlwBX3H_4smol.exit.i.i.i.i.i.i: ; preds = %.loopexit.split-lp.i.i.i.i.i, %.loopexit.i.i.i.i.i, %bb.ag
  %.pn.i.i.i.i.i.i = phi { ptr, i32 } [ %lpad.phi.i.i.i.i.i.i, %bb.ag ], [ %lpad.loopexit.i.i.i.i.i, %.loopexit.i.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i ] ; 2 uses
  %i.ex = load i64, ptr %i.g, align 8, !range !10, !noalias !155, !noundef !4
  %2 = icmp eq i64 %i.ex, 0
  %i.ey = load ptr, ptr %i.au, align 8, !noalias !155
  %.not.i.i18.i.i.i.i.i.i = icmp eq ptr %i.ey, null
  %or.cond32.i.i.i.i.i.i = select i1 %2, i1 true, i1 %.not.i.i18.i.i.i.i.i.i
  br i1 %or.cond32.i.i.i.i.i.i, label %.body.i.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std4sync6poison12TryLockErrorINtNtBE_6rwlock15RwLockReadGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB20_4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEEEECsbDLrNlwBX3H_4smol.exit.sink.split.i20.i.i.i.i.i.i

.loopexit.i.i.i.i.i:                              ; preds = %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB5_4TakeINtNtB7_4skip4SkipINtNtB7_5chain5ChainINtNtNtBb_5slice4iter4IterINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEB1A_EEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB4k_4find5checkRB20_QNCNCNCNvMsf_Csa9iXSdNszRG_14async_executorNtB5G_6Runner8runnable000E0INtNtNtBb_3ops12control_flow11ControlFlowB5o_EECsbDLrNlwBX3H_4smol.exit.thread.i.i.i.i.i.i
  %lpad.loopexit.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1G_4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEEECsbDLrNlwBX3H_4smol.exit.i.i.i.i.i.i

.loopexit.split-lp.i.i.i.i.i:                     ; preds = %bb.aq
  %lpad.loopexit.split-lp.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1G_4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEEECsbDLrNlwBX3H_4smol.exit.i.i.i.i.i.i

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !155
  %i.ez = load ptr, ptr %i.ba, align 8, !noalias !152, !nonnull !4, !noundef !4
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 128
  invoke void @_RNvMs2_CseSXqeRWftQm_16concurrent_queueINtB5_15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableE3popCsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.d, ptr noundef nonnull align 128 %i.fa)
          to label %bb.ao unwind label %.loopexit.i.i.i.i.i.i, !noalias !152

bb.ao:                                            ; preds = %bb.an
  %i.fb = load i8, ptr %i.d, align 8, !range !11, !noalias !155, !noundef !4
  %i.fc = trunc nuw i8 %i.fb to i1
  br i1 %i.fc, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !155
  %i.fd = load i64, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !190, !noalias !191, !noundef !4
  %i.fe = icmp eq i64 %i.fd, 0
  br i1 %i.fe, label %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB5_4TakeINtNtB7_4skip4SkipINtNtB7_5chain5ChainINtNtNtBb_5slice4iter4IterINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEB1A_EEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB4k_4find5checkRB20_QNCNCNCNvMsf_Csa9iXSdNszRG_14async_executorNtB5G_6Runner8runnable000E0INtNtNtBb_3ops12control_flow11ControlFlowB5o_EECsbDLrNlwBX3H_4smol.exit.thread.i.i.i.i.i.i, label %thread-pre-split.i.i.i.i.i.i

bb.aq:                                            ; preds = %bb.ao
  %i.ff = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.fg = load ptr, ptr %i.ff, align 8, !noalias !155, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !155
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !155
  invoke void @_RNvXsh_NtNtNtCsG258MDvU3F_3std4sync6poison6rwlockINtB5_15RwLockReadGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1d_4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.f)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1G_4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEEECsbDLrNlwBX3H_4smol.exit16.i.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.i, !noalias !152

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1G_4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEEECsbDLrNlwBX3H_4smol.exit16.i.i.i.i.i.i: ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !155
  %i.fh = load i64, ptr %i.g, align 8, !range !10, !noalias !155, !noundef !4
  %i.fi = trunc nuw i64 %i.fh to i1
  %i.fj = load ptr, ptr %i.au, align 8, !noalias !155
  %.not.i.i17.i.i.i.i.i.i = icmp ne ptr %i.fj, null
  %or.cond.not36.i.i.i.i.i.i = select i1 %i.fi, i1 %.not.i.i17.i.i.i.i.i.i, i1 false
  br i1 %or.cond.not36.i.i.i.i.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std4sync6poison12TryLockErrorINtNtBE_6rwlock15RwLockReadGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB20_4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEEEECsbDLrNlwBX3H_4smol.exit.sink.split.i.i.i.i.i.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB22_4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEEINtB12_12TryLockErrorBX_EEECsbDLrNlwBX3H_4smol.exit.i.i.i.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std4sync6poison12TryLockErrorINtNtBE_6rwlock15RwLockReadGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB20_4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEEEECsbDLrNlwBX3H_4smol.exit.sink.split.i.i.i.i.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1G_4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEEECsbDLrNlwBX3H_4smol.exit16.i.i.i.i.i.i
  invoke void @_RNvXsh_NtNtNtCsG258MDvU3F_3std4sync6poison6rwlockINtB5_15RwLockReadGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1d_4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.au)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB22_4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEEINtB12_12TryLockErrorBX_EEECsbDLrNlwBX3H_4smol.exit.i.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB22_4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEEINtB12_12TryLockErrorBX_EEECsbDLrNlwBX3H_4smol.exit.i.i.i.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std4sync6poison12TryLockErrorINtNtBE_6rwlock15RwLockReadGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB20_4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEEEECsbDLrNlwBX3H_4smol.exit.sink.split.i.i.i.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1G_4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEEECsbDLrNlwBX3H_4smol.exit16.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !155
  br label %bb.ar

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std4sync6poison12TryLockErrorINtNtBE_6rwlock15RwLockReadGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB20_4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEEEECsbDLrNlwBX3H_4smol.exit.sink.split.i20.i.i.i.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1G_4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEEECsbDLrNlwBX3H_4smol.exit.i.i.i.i.i.i
  invoke void @_RNvXsh_NtNtNtCsG258MDvU3F_3std4sync6poison6rwlockINtB5_15RwLockReadGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1d_4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.au)
          to label %.body.i.i.i unwind label %bb.aa, !noalias !152

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std4sync6poison12TryLockErrorINtNtBE_6rwlock15RwLockReadGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB20_4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEEEECsbDLrNlwBX3H_4smol.exit.sink.split.i25.i.i.i.i.i.i: ; preds = %bb.ab, %.noexc10.i.i.i
  invoke void @_RNvXsh_NtNtNtCsG258MDvU3F_3std4sync6poison6rwlockINtB5_15RwLockReadGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1d_4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.au)
          to label %.thread.i.thread.i.i.i.i.i unwind label %.loopexit.i.i.i

bb.ar:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB22_4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEEINtB12_12TryLockErrorBX_EEECsbDLrNlwBX3H_4smol.exit.i.i.i.i.i.i, %bb.z, %bb.t
  %.sroa.0.0.i.ph.i.i.i.i.i = phi ptr [ %i.bj, %bb.t ], [ %i.bv, %bb.z ], [ %i.fg, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB22_4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEEINtB12_12TryLockErrorBX_EEECsbDLrNlwBX3H_4smol.exit.i.i.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !137
  store ptr %.sroa.0.0.i.ph.i.i.i.i.i, ptr %i.k, align 8, !noalias !137
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val7.i.i.i) ]
  invoke void @_RNvMsd_Csa9iXSdNszRG_14async_executorNtB5_6Ticker4wake(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.val7.i.i.i)
          to label %bb.at unwind label %bb.as

.thread.i.thread.i.i.i.i.i:                       ; preds = %bb.v, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std4sync6poison12TryLockErrorINtNtBE_6rwlock15RwLockReadGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB20_4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEEEECsbDLrNlwBX3H_4smol.exit.sink.split.i25.i.i.i.i.i.i, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !155
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val7.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val72.i) ]
  %i.fk = invoke noundef zeroext i1 @_RNvMsd_Csa9iXSdNszRG_14async_executorNtB5_6Ticker5sleep(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.val7.i.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.val72.i)
          to label %.noexc13.i.i.i unwind label %.loopexit.i.i.i

.noexc13.i.i.i:                                   ; preds = %.thread.i.thread.i.i.i.i.i
  br i1 %i.fk, label %bb.r, label %bb.bo

bb.as:                                            ; preds = %bb.be, %_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexNtCsa9iXSdNszRG_14async_executor8SleepersE4lockCsbDLrNlwBX3H_4smol.exit.i.i.i.i.i.i, %bb.aw, %bb.av, %bb.ar
  %i.fl = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i

.body.i.i.i.i.i:                                  ; preds = %bb.bf, %bb.bd, %bb.as
  %eh.lpad-body.i.i.i.i.i = phi { ptr, i32 } [ %i.fl, %bb.as ], [ %i.hb, %bb.bf ], [ %i.hb, %bb.bd ]
  invoke void @_RNvXsa_NtCsfO0Hesl1pIe_10async_task8runnableNtB5_8RunnableNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k)
          to label %.body.i.i.i unwind label %bb.bh

bb.at:                                            ; preds = %bb.ar
  %i.fm = load ptr, ptr %.val7.i.i.i, align 8, !nonnull !4, !align !151, !noundef !4 ; 3 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 664
  %i.fo = cmpxchg ptr %i.fn, i8 0, i8 1 acq_rel acquire, align 1
  %i.fp = extractvalue { i8, i1 } %i.fo, 1
  br i1 %i.fp, label %bb.au, label %bb.bj

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !137
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fm, i64 512 ; 3 uses
  %i.fr = cmpxchg ptr %i.fq, i32 0, i32 1 acquire monotonic, align 4, !noalias !192
  %i.fs = extractvalue { i32, i1 } %i.fr, 1
  br i1 %i.fs, label %.noexc.i.i.i.i.i, label %bb.av, !prof !113

bb.av:                                            ; preds = %bb.au
  invoke void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 8 %i.fq)
          to label %.noexc.i.i.i.i.i unwind label %bb.as

.noexc.i.i.i.i.i:                                 ; preds = %bb.av, %bb.au
  %i.ft = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !195
  %i.fu = and i64 %i.ft, 9223372036854775807
  %i.fv = icmp eq i64 %i.fu, 0
  br i1 %i.fv, label %_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexNtCsa9iXSdNszRG_14async_executor8SleepersE4lockCsbDLrNlwBX3H_4smol.exit.i.i.i.i.i.i, label %bb.aw, !prof !113

bb.aw:                                            ; preds = %.noexc.i.i.i.i.i
  %i.fw = invoke noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #24
          to label %.noexc7.i.i.i.i.i unwind label %bb.as

.noexc7.i.i.i.i.i:                                ; preds = %bb.aw
  %i.fx = xor i1 %i.fw, true
  %i.fy = zext i1 %i.fx to i8
  br label %_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexNtCsa9iXSdNszRG_14async_executor8SleepersE4lockCsbDLrNlwBX3H_4smol.exit.i.i.i.i.i.i

_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexNtCsa9iXSdNszRG_14async_executor8SleepersE4lockCsbDLrNlwBX3H_4smol.exit.i.i.i.i.i.i: ; preds = %.noexc7.i.i.i.i.i, %.noexc.i.i.i.i.i
  %.sroa.01.0.i.i.i.i.i.i.i.i = phi i8 [ %i.fy, %.noexc7.i.i.i.i.i ], [ 0, %.noexc.i.i.i.i.i ]
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fm, i64 516
  %i.ga = load atomic i8, ptr %i.fz monotonic, align 4, !noalias !192
  %.not.i.i.i4.i.i.i.i.i = icmp ne i8 %i.ga, 0
  invoke void @_RINvNtNtCsG258MDvU3F_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_5mutex10MutexGuardNtCsa9iXSdNszRG_14async_executor8SleepersENCNvMs9_BZ_BW_3new0ECsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i1 noundef zeroext %.not.i.i.i4.i.i.i.i.i, i8 noundef %.sroa.01.0.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 %i.fq)
          to label %.noexc8.i.i.i.i.i unwind label %bb.as

.noexc8.i.i.i.i.i:                                ; preds = %_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexNtCsa9iXSdNszRG_14async_executor8SleepersE4lockCsbDLrNlwBX3H_4smol.exit.i.i.i.i.i.i
  %i.gb = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.gc = load ptr, ptr %i.gb, align 8, !noalias !137, !nonnull !4, !align !100 ; 7 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ge = load i8, ptr %i.gd, align 8, !range !11, !noalias !137
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !137
  call void @llvm.experimental.noalias.scope.decl(metadata !196)
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gc, i64 24 ; 2 uses
  %i.gg = load i64, ptr %i.gf, align 8, !alias.scope !196, !noundef !4 ; 4 uses
  %i.gh = icmp ult i64 %i.gg, 384307168202282326
  call void @llvm.assume(i1 %i.gh)
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gc, i64 56
  %i.gj = load i64, ptr %i.gi, align 8, !alias.scope !196, !noundef !4
  %i.gk = icmp ne i64 %i.gg, %i.gj
  %i.gl = icmp eq i64 %i.gg, 0
  %or.cond.i.i.i.i.i.i.i = or i1 %i.gl, %i.gk
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %.noexc8.i.i.i.i.i
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  %i.gn = add nsw i64 %i.gg, -1                   ; 3 uses
  store i64 %i.gn, ptr %i.gf, align 8, !alias.scope !196
  %i.go = load i64, ptr %i.gm, align 8, !range !119, !alias.scope !196, !noundef !4
  %i.gp = icmp samesign ult i64 %i.gn, %i.go
  call void @llvm.assume(i1 %i.gp)
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gc, i64 16
  %i.gr = load ptr, ptr %i.gq, align 8, !alias.scope !196, !nonnull !4, !noundef !4
  %i.gs = getelementptr inbounds nuw [24 x i8], ptr %i.gr, i64 %i.gn ; 2 uses
  %.sroa.44.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.gs, i64 8
  %.sroa.44.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %.sroa.44.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !196, !nonnull !4, !noundef !4
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.gs, i64 16
  %.sroa.5.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !196
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %.noexc8.i.i.i.i.i
  %.sroa.4.0.i.i.i.i.i.i.i = phi ptr [ undef, %.noexc8.i.i.i.i.i ], [ %.sroa.5.0.copyload.i.i.i.i.i.i.i, %bb.ax ] ; 2 uses
  %.sroa.0.0.i9.i.i.i.i.i.i = phi ptr [ null, %.noexc8.i.i.i.i.i ], [ %.sroa.44.0.copyload.i.i.i.i.i.i.i, %bb.ax ] ; 4 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gc, i64 4
  %i.gu = trunc nuw i8 %i.ge to i1
  br i1 %i.gu, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.gv = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !137
  %i.gw = and i64 %i.gv, 9223372036854775807
  %i.gx = icmp eq i64 %i.gw, 0
  br i1 %i.gx, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i.i, label %bb.ba, !prof !113

bb.ba:                                            ; preds = %bb.az
  %i.gy = invoke noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #24
          to label %.noexc.i5.i.i.i.i.i unwind label %bb.bd

.noexc.i5.i.i.i.i.i:                              ; preds = %bb.ba
  br i1 %i.gy, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i.i, label %bb.bb

bb.bb:                                            ; preds = %.noexc.i5.i.i.i.i.i
  store atomic i8 1, ptr %i.gt monotonic, align 4
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i.i

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i.i: ; preds = %bb.bb, %.noexc.i5.i.i.i.i.i, %bb.az, %bb.ay
  %i.gz = atomicrmw xchg ptr %i.gc, i32 0 release, align 4
  %i.ha = icmp eq i32 %i.gz, 2
  br i1 %i.ha, label %bb.bc, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtCsa9iXSdNszRG_14async_executor8SleepersEECsbDLrNlwBX3H_4smol.exit.i.i.i.i.i.i, !prof !101

bb.bc:                                            ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i.i
  invoke void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.gc)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtCsa9iXSdNszRG_14async_executor8SleepersEECsbDLrNlwBX3H_4smol.exit.i.i.i.i.i.i unwind label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.ba
  %i.hb = landingpad { ptr, i32 }
end_hunk_1
