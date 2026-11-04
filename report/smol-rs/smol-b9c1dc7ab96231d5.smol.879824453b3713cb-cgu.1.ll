Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/smol-rs/original/smol-b9c1dc7ab96231d5.smol.879824453b3713cb-cgu.1?download=true
inline.NumInlined: 163
inline.NumDeleted: 102
begin_hunk_0
@19 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @18, [16 x i8] c"[\00\00\00\00\00\00\00L\04\00\00\16\00\00\00" }>, align 8
@20 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @18, [16 x i8] c"[\00\00\00\00\00\00\00\A9\05\00\00\12\00\00\00" }>, align 8
@21 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRRjNtB6_5Debug3fmtCsbDLrNlwBX3H_4smol }>, align 8
@22 = private unnamed_addr constant [8 x i8] c"Included", align 1
@23 = private unnamed_addr constant [8 x i8] c"Excluded", align 1
@24 = private unnamed_addr constant [9 x i8] c"Unbounded", align 1

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvMNtCseSXqeRWftQm_16concurrent_queue7boundedINtB3_7BoundedNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableE12push_or_elseNCNvB2_4push0ECsbDLrNlwBX3H_4smol(ptr nofree noundef nonnull align 128 captures(none) %0, ptr noundef nonnull %1, ptr nofree noundef nonnull align 128 captures(none) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  store ptr %1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.d = load atomic i64, ptr %i.c monotonic, align 128 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !noundef !5 ; 2 uses
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
  %i.q = load i64, ptr %i.k, align 8, !noundef !5 ; 3 uses
  %i.r = icmp ult i64 %i.p, %i.q
  br i1 %i.r, label %bb.d, label %bb.c

._crit_edge.loopexit:                             ; preds = %bb.l
  %.pre = load ptr, ptr %i.b, align 8
  br label %.loopexit29

bb.c:                                             ; preds = %bb.b
  %i.s = load i64, ptr %i.i, align 128, !noundef !5 ; 2 uses
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
          to label %bb.g unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.g:                                             ; preds = %bb.f
  unreachable

bb.h:                                             ; preds = %bb.e
  %i.y = load ptr, ptr %i.j, align 16, !nonnull !5, !noundef !5
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %i.o ; 3 uses
  %i.aa = load atomic i64, ptr %i.z acquire, align 8 ; 2 uses
  %i.ab = icmp eq i64 %.sroa.010.045, %i.aa
  br i1 %i.ab, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = load i64, ptr %i.i, align 128, !noundef !5
  %i.ad = add i64 %i.ac, %i.aa
  %i.ae = add i64 %.sroa.010.045, 1
  %i.af = icmp eq i64 %i.ad, %i.ae
  br i1 %i.af, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtNtCsG258MDvU3F_3std6thread9functions9yield_now()
          to label %.sink.split unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  call void asm sideeffect inteldialect "lock not qword ptr [${0:q}]", "r,~{memory}"(ptr nonnull %i.a) #22, !srcloc !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ag = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5
  %i.ah = load atomic i64, ptr %2 monotonic, align 128, !noalias !18
  %i.ai = load i64, ptr %i.l, align 128, !noalias !18, !noundef !5
  %i.aj = add i64 %i.ai, %i.ah
  %i.ak = icmp eq i64 %i.aj, %.sroa.010.045
  br i1 %i.ak, label %.loopexit29, label %.sink.split

.sink.split:                                      ; preds = %bb.k, %bb.j
  %i.al = load atomic i64, ptr %i.c monotonic, align 128
  br label %bb.l

bb.l:                                             ; preds = %.sink.split, %bb.m
  %.sroa.010.1 = phi i64 [ %i.ar, %bb.m ], [ %i.al, %.sink.split ] ; 2 uses
  %i.am = load i64, ptr %i.e, align 8, !noundef !5 ; 2 uses
  %i.an = and i64 %i.am, %.sroa.010.1
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %bb.b, label %._crit_edge.loopexit

bb.m:                                             ; preds = %bb.h
  %i.ap = cmpxchg weak ptr %i.c, i64 %.sroa.010.045, i64 %.sroa.01.0 seq_cst monotonic, align 8 ; 2 uses
  %i.aq = extractvalue { i64, i1 } %i.ap, 1
  %i.ar = extractvalue { i64, i1 } %i.ap, 0
  br i1 %i.aq, label %bb.n, label %bb.l

bb.n:                                             ; preds = %bb.m
  %i.as = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5
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

bb.o:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp103

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.j, %bb.f
  %lpad.loopexit.split-lp103 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsa_NtCsfO0Hesl1pIe_10async_task8runnableNtB5_8RunnableNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.o unwind label %bb.p

bb.p:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
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
  %i.d = load i64, ptr %1, align 8, !range !7, !noundef !5
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.h = load i8, ptr %i.g, align 8, !range !8, !noundef !5
  %i.i = trunc nuw i8 %i.h to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvNtNtCsG258MDvU3F_3std6thread9lifecycle15spawn_uncheckedNCNCNvNvNtCsbDLrNlwBX3H_4smol5spawn5spawn6global0s0_0zEB15_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, i64 noundef %i.d, i64 %i.f, i1 noundef zeroext %i.i, ptr noundef null)
  %i.j = load <2 x ptr>, ptr %i.a, align 16
  %i.k = load ptr, ptr %i.a, align 16, !noundef !5
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
  call void asm sideeffect inteldialect "lock not qword ptr [${0:q}]", "r,~{memory}"(ptr nonnull %i.a) #22, !srcloc !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.c = call noundef ptr @_RNvMs5_Cs3iPtYnXk70z_14event_listenerNtB5_5Event5innerCsbDLrNlwBX3H_4smol(ptr noundef nonnull align 8 %0)
  %i.d = call noundef i64 @_RINvMs_NtCs3iPtYnXk70z_14event_listener3sysINtB7_5InneruE6notifyNtNtB7_6notify6NotifyECsbDLrNlwBX3H_4smol(ptr noundef nonnull align 8 %i.c, i64 noundef %i.b) ; 0 uses
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs3iPtYnXk70z_14event_listener3sys8ListeneruEEECsbDLrNlwBX3H_4smol(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !7, !noundef !5
  %1 = icmp eq i64 %i.a, 0
  br i1 %1, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs3iPtYnXk70z_14event_listener3sys8ListeneruEECsbDLrNlwBX3H_4smol.exit, label %bb.b

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs3iPtYnXk70z_14event_listener3sys8ListeneruEECsbDLrNlwBX3H_4smol.exit: ; preds = %bb.f, %bb.e, %bb.d, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46)
  %i.c = load i8, ptr %i.b, align 8, !range !9, !alias.scope !47, !noundef !5
  %i.d = icmp eq i8 %i.c, 2
  br i1 %i.d, label %bb.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs3iPtYnXk70z_14event_listener3sys8ListeneruEECsbDLrNlwBX3H_4smol.exit

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48)
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !49, !noundef !5 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.f, null
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val1.i.i.i.i.i.i.i.i = load ptr, ptr %i.g, align 8, !alias.scope !49, !noundef !5
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !noalias !49, !nonnull !5, !noundef !5
  tail call void %i.i(ptr noundef %.val1.i.i.i.i.i.i.i.i), !noalias !49, !inline_history !34
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs3iPtYnXk70z_14event_listener3sys8ListeneruEECsbDLrNlwBX3H_4smol.exit

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52)
  %i.j = load ptr, ptr %i.g, align 8, !alias.scope !53, !nonnull !5, !noundef !5
  %i.k = atomicrmw add ptr %i.j, i64 -1 release, align 8, !noalias !53
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84)
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !85, !nonnull !5, !noundef !5
  %i.e = atomicrmw add ptr %i.d, i64 -1 release, align 8, !noalias !85
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCs3iPtYnXk70z_14event_listener5InneruEEECsbDLrNlwBX3H_4smol.exit.i.i.i.i

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtCs3iPtYnXk70z_14event_listener5InneruEE9drop_slowCs1gyvJd0MAV7_10async_lock(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #24
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCs3iPtYnXk70z_14event_listener5InneruEEECsbDLrNlwBX3H_4smol.exit.i.i.i.i unwind label %bb.n

bb.f:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.0.val, i64 48 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !86)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !87)
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !88, !nonnull !5, !noundef !5
  %i.i = atomicrmw add ptr %i.h, i64 -1 release, align 8, !noalias !88
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
  %i.l = load i64, ptr %.0.val, align 8, !range !7, !noundef !5
  %0 = icmp eq i64 %i.l, 0
  br i1 %0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs3iPtYnXk70z_14event_listener13EventListenerECsbDLrNlwBX3H_4smol.exit, label %bb.i

bb.i:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCs3iPtYnXk70z_14event_listener5InneruEEECsbDLrNlwBX3H_4smol.exit3.i.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !89)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !90)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !91)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !93)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94)
  %i.n = load i8, ptr %i.m, align 8, !range !9, !alias.scope !95, !noundef !5
  %i.o = icmp eq i8 %i.n, 2
  br i1 %i.o, label %bb.j, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs3iPtYnXk70z_14event_listener13EventListenerECsbDLrNlwBX3H_4smol.exit

bb.j:                                             ; preds = %bb.i
  %i.p = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !96)
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !97, !noundef !5 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.q, null
  %i.r = getelementptr inbounds nuw i8, ptr %.0.val, i64 24 ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.r, align 8, !alias.scope !97, !noundef !5
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !noalias !97, !nonnull !5, !noundef !5
  invoke void %i.t(ptr noundef %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs3iPtYnXk70z_14event_listener13EventListenerECsbDLrNlwBX3H_4smol.exit unwind label %bb.o, !inline_history !76

bb.l:                                             ; preds = %bb.j
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !100)
  %i.u = load ptr, ptr %i.r, align 8, !alias.scope !101, !nonnull !5, !noundef !5
  %i.v = atomicrmw add ptr %i.u, i64 -1 release, align 8, !noalias !101
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !108)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !range !109, !alias.scope !108, !noundef !5 ; 2 uses
  %.not.i = icmp eq i32 %i.f, -1
  br i1 %.not.i, label %bb.b, label %._RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtCsG258MDvU3F_3std4time7InstantE18get_or_insert_withNvMBK_BI_3nowECsbDLrNlwBX3H_4smol.exit_crit_edge

._RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtCsG258MDvU3F_3std4time7InstantE18get_or_insert_withNvMBK_BI_3nowECsbDLrNlwBX3H_4smol.exit_crit_edge: ; preds = %bb.a
  %.pre = load i64, ptr %0, align 8
  br label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtCsG258MDvU3F_3std4time7InstantE18get_or_insert_withNvMBK_BI_3nowECsbDLrNlwBX3H_4smol.exit

bb.b:                                             ; preds = %bb.a
  %i.g = tail call { i64, i32 } @_RNvMNtCsG258MDvU3F_3std4timeNtB2_7Instant3now(), !noalias !108 ; 2 uses
  %i.h = extractvalue { i64, i32 } %i.g, 0        ; 2 uses
  %i.i = extractvalue { i64, i32 } %i.g, 1        ; 3 uses
  %i.j = icmp ult i32 %i.i, 1000000000
  tail call void @llvm.assume(i1 %i.j)
  store i64 %i.h, ptr %0, align 8, !alias.scope !108
  store i32 %i.i, ptr %i.e, align 8, !alias.scope !108
  br label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtCsG258MDvU3F_3std4time7InstantE18get_or_insert_withNvMBK_BI_3nowECsbDLrNlwBX3H_4smol.exit

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtCsG258MDvU3F_3std4time7InstantE18get_or_insert_withNvMBK_BI_3nowECsbDLrNlwBX3H_4smol.exit: ; preds = %._RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtCsG258MDvU3F_3std4time7InstantE18get_or_insert_withNvMBK_BI_3nowECsbDLrNlwBX3H_4smol.exit_crit_edge, %bb.b
  %i.k = phi i32 [ %i.f, %._RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtCsG258MDvU3F_3std4time7InstantE18get_or_insert_withNvMBK_BI_3nowECsbDLrNlwBX3H_4smol.exit_crit_edge ], [ %i.i, %bb.b ]
  %i.l = phi i64 [ %.pre, %._RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtCsG258MDvU3F_3std4time7InstantE18get_or_insert_withNvMBK_BI_3nowECsbDLrNlwBX3H_4smol.exit_crit_edge ], [ %i.h, %bb.b ]
  store i64 %i.l, ptr %i.a, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %i.k, ptr %i.m, align 8
  %i.n = load ptr, ptr %i.b, align 8, !align !10, !noundef !5 ; 8 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %bb.d, label %bb.c, !prof !11

bb.c:                                             ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtCsG258MDvU3F_3std4time7InstantE18get_or_insert_withNvMBK_BI_3nowECsbDLrNlwBX3H_4smol.exit
  %i.o = load i8, ptr %i.d, align 8, !range !8, !noundef !5
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.f, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  br label %bb.e

bb.d:                                             ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtCsG258MDvU3F_3std4time7InstantE18get_or_insert_withNvMBK_BI_3nowECsbDLrNlwBX3H_4smol.exit
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 30, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #26
  unreachable

bb.e:                                             ; preds = %.backedge93, %.preheader
  %i.r = load ptr, ptr %i.c, align 8, !align !10, !noundef !5 ; 3 uses
  %.not30 = icmp eq ptr %i.r, null
  br i1 %.not30, label %bb.i, label %bb.g, !prof !11

bb.f:                                             ; preds = %bb.s, %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  br label %bb.u

bb.g:                                             ; preds = %bb.e
  call void @llvm.experimental.noalias.scope.decl(metadata !110)
  %i.t = call noundef zeroext i1 @_RNvMsh_Cs3iPtYnXk70z_14event_listenerINtB5_13InnerListeneruINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtB5_5InneruEEE13poll_internalCsbDLrNlwBX3H_4smol(ptr noundef nonnull align 8 %i.r, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2), !noalias !110
  br i1 %i.t, label %_RINvXs2_CskHQ0D3bTzth_23event_listener_strategyNtB6_11NonBlockingNtB6_8Strategy4polluNtCs3iPtYnXk70z_14event_listener13EventListenerECsbDLrNlwBX3H_4smol.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs3iPtYnXk70z_14event_listener13EventListenerEECsbDLrNlwBX3H_4smol(ptr nonnull %i.r)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.split-lp, !noalias !110

common.resume:                                    ; preds = %bb.o, %bb.ab, %.loopexit.split-lp.loopexit.split-lp
  %.sink = phi ptr [ null, %.loopexit.split-lp.loopexit.split-lp ], [ %i.u, %bb.o ], [ %i.ap, %bb.ab ]
  %common.resume.op = phi { ptr, i32 } [ %lpad.loopexit.split-lp90, %.loopexit.split-lp.loopexit.split-lp ], [ %i.ah, %bb.o ], [ %i.au, %bb.ab ]
  store ptr %.sink, ptr %i.c, align 8
  resume { ptr, i32 } %common.resume.op

bb.i:                                             ; preds = %bb.e
  %i.u = call noundef nonnull align 8 ptr @_RNvMs5_Cs3iPtYnXk70z_14event_listenerNtB5_5Event6listenCsbDLrNlwBX3H_4smol(ptr noundef nonnull align 8 %i.q) ; 2 uses
  %.val39 = load ptr, ptr %i.c, align 8, !align !10, !noundef !5
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs3iPtYnXk70z_14event_listener13EventListenerEECsbDLrNlwBX3H_4smol(ptr %.val39)
          to label %bb.p unwind label %bb.o

bb.j:                                             ; preds = %bb.h
  store ptr null, ptr %i.c, align 8, !alias.scope !110
  %i.v = cmpxchg ptr %i.n, i64 0, i64 1 acquire acquire, align 8
  %.sroa.01.0.i = extractvalue { i64, i1 } %i.v, 0
  switch i64 %.sroa.01.0.i, label %bb.k [
    i64 0, label %bb.l
    i64 1, label %bb.m
  ]

bb.k:                                             ; preds = %bb.j
  call fastcc void @_RINvMs5_Cs3iPtYnXk70z_14event_listenerNtB6_5Event6notifylECsbDLrNlwBX3H_4smol(ptr noundef nonnull align 8 %i.q) #27
  br label %.loopexit

bb.l:                                             ; preds = %bb.j
  %i.w = load ptr, ptr %i.b, align 8, !align !10, !noundef !5 ; 3 uses
  store ptr null, ptr %i.b, align 8
  %i.x = load i8, ptr %i.d, align 8, !range !8, !noundef !5
  %i.y = trunc nuw i8 %i.x to i1
  %.not.i41 = icmp ne ptr %i.w, null              ; 2 uses
  %or.cond.not.i = and i1 %.not.i41, %i.y
  br i1 %or.cond.not.i, label %_RINvXs2_CskHQ0D3bTzth_23event_listener_strategyNtB6_11NonBlockingNtB6_8Strategy4polluNtCs3iPtYnXk70z_14event_listener13EventListenerECsbDLrNlwBX3H_4smol.exit.thread.sink.split, label %_RNvMse_NtCs1gyvJd0MAV7_10async_lock5mutexINtB5_11AcquireSlowRINtB5_5MutexuEuE10take_mutexCsbDLrNlwBX3H_4smol.exit

_RNvMse_NtCs1gyvJd0MAV7_10async_lock5mutexINtB5_11AcquireSlowRINtB5_5MutexuEuE10take_mutexCsbDLrNlwBX3H_4smol.exit: ; preds = %bb.l
  br i1 %.not.i41, label %_RINvXs2_CskHQ0D3bTzth_23event_listener_strategyNtB6_11NonBlockingNtB6_8Strategy4polluNtCs3iPtYnXk70z_14event_listener13EventListenerECsbDLrNlwBX3H_4smol.exit.thread, label %bb.n, !prof !111

bb.m:                                             ; preds = %bb.j
  %i.z = call { i64, i32 } @_RNvMNtCsG258MDvU3F_3std4timeNtB2_7Instant7elapsed(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a) ; 2 uses
  %i.aa = extractvalue { i64, i32 } %i.z, 0
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %.split, label %.loopexit

bb.n:                                             ; preds = %_RNvMse_NtCs1gyvJd0MAV7_10async_lock5mutexINtB5_11AcquireSlowRINtB5_5MutexuEuE10take_mutexCsbDLrNlwBX3H_4smol.exit
  call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #26
  unreachable

.split:                                           ; preds = %bb.m
  %i.ac = extractvalue { i64, i32 } %i.z, 1       ; 2 uses
  %i.ad = icmp ult i32 %i.ac, 1000000000
  call void @llvm.assume(i1 %i.ad)
  %i.ae = icmp samesign ugt i32 %i.ac, 500000
  br i1 %i.ae, label %.loopexit, label %.backedge93

.backedge93:                                      ; preds = %.split, %bb.p
  br label %bb.e

.loopexit:                                        ; preds = %bb.m, %.split, %bb.p, %bb.k
  %i.af = atomicrmw add ptr %i.n, i64 2 release, align 8
  %i.ag = icmp slt i64 %i.af, 0
  br i1 %i.ag, label %bb.t, label %bb.s, !prof !11

bb.o:                                             ; preds = %bb.i
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.p:                                             ; preds = %bb.i
  store ptr %i.u, ptr %i.c, align 8
  %i.ai = cmpxchg ptr %i.n, i64 0, i64 1 acquire acquire, align 8
  %.sroa.01.0.i45 = extractvalue { i64, i1 } %i.ai, 0
  switch i64 %.sroa.01.0.i45, label %.loopexit [
    i64 0, label %bb.q
    i64 1, label %.backedge93
  ]

bb.q:                                             ; preds = %bb.p
  %i.aj = load ptr, ptr %i.b, align 8, !align !10, !noundef !5 ; 3 uses
  store ptr null, ptr %i.b, align 8
  %i.ak = load i8, ptr %i.d, align 8, !range !8, !noundef !5
  %i.al = trunc nuw i8 %i.ak to i1
  %.not.i46 = icmp ne ptr %i.aj, null             ; 2 uses
  %or.cond.not.i47 = and i1 %.not.i46, %i.al
  br i1 %or.cond.not.i47, label %_RINvXs2_CskHQ0D3bTzth_23event_listener_strategyNtB6_11NonBlockingNtB6_8Strategy4polluNtCs3iPtYnXk70z_14event_listener13EventListenerECsbDLrNlwBX3H_4smol.exit.thread.sink.split, label %_RNvMse_NtCs1gyvJd0MAV7_10async_lock5mutexINtB5_11AcquireSlowRINtB5_5MutexuEuE10take_mutexCsbDLrNlwBX3H_4smol.exit48

_RNvMse_NtCs1gyvJd0MAV7_10async_lock5mutexINtB5_11AcquireSlowRINtB5_5MutexuEuE10take_mutexCsbDLrNlwBX3H_4smol.exit48: ; preds = %bb.q
  br i1 %.not.i46, label %_RINvXs2_CskHQ0D3bTzth_23event_listener_strategyNtB6_11NonBlockingNtB6_8Strategy4polluNtCs3iPtYnXk70z_14event_listener13EventListenerECsbDLrNlwBX3H_4smol.exit.thread, label %bb.r, !prof !111

bb.r:                                             ; preds = %_RNvMse_NtCs1gyvJd0MAV7_10async_lock5mutexINtB5_11AcquireSlowRINtB5_5MutexuEuE10take_mutexCsbDLrNlwBX3H_4smol.exit48
  call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #26
  unreachable

_RINvXs2_CskHQ0D3bTzth_23event_listener_strategyNtB6_11NonBlockingNtB6_8Strategy4polluNtCs3iPtYnXk70z_14event_listener13EventListenerECsbDLrNlwBX3H_4smol.exit.thread.sink.split: ; preds = %bb.q, %bb.l, %bb.ad, %bb.z
  %.sink84 = phi ptr [ %i.ar, %bb.z ], [ %i.ax, %bb.ad ], [ %i.w, %bb.l ], [ %i.aj, %bb.q ] ; 2 uses
  %i.am = atomicrmw add ptr %.sink84, i64 -2 release, align 8 ; 0 uses
  br label %_RINvXs2_CskHQ0D3bTzth_23event_listener_strategyNtB6_11NonBlockingNtB6_8Strategy4polluNtCs3iPtYnXk70z_14event_listener13EventListenerECsbDLrNlwBX3H_4smol.exit.thread

_RINvXs2_CskHQ0D3bTzth_23event_listener_strategyNtB6_11NonBlockingNtB6_8Strategy4polluNtCs3iPtYnXk70z_14event_listener13EventListenerECsbDLrNlwBX3H_4smol.exit.thread: ; preds = %bb.g, %bb.v, %_RINvXs2_CskHQ0D3bTzth_23event_listener_strategyNtB6_11NonBlockingNtB6_8Strategy4polluNtCs3iPtYnXk70z_14event_listener13EventListenerECsbDLrNlwBX3H_4smol.exit.thread.sink.split, %_RNvMse_NtCs1gyvJd0MAV7_10async_lock5mutexINtB5_11AcquireSlowRINtB5_5MutexuEuE10take_mutexCsbDLrNlwBX3H_4smol.exit60, %_RNvMse_NtCs1gyvJd0MAV7_10async_lock5mutexINtB5_11AcquireSlowRINtB5_5MutexuEuE10take_mutexCsbDLrNlwBX3H_4smol.exit53, %_RNvMse_NtCs1gyvJd0MAV7_10async_lock5mutexINtB5_11AcquireSlowRINtB5_5MutexuEuE10take_mutexCsbDLrNlwBX3H_4smol.exit48, %_RNvMse_NtCs1gyvJd0MAV7_10async_lock5mutexINtB5_11AcquireSlowRINtB5_5MutexuEuE10take_mutexCsbDLrNlwBX3H_4smol.exit
  %.sroa.0.0 = phi ptr [ %i.ar, %_RNvMse_NtCs1gyvJd0MAV7_10async_lock5mutexINtB5_11AcquireSlowRINtB5_5MutexuEuE10take_mutexCsbDLrNlwBX3H_4smol.exit53 ], [ %i.aj, %_RNvMse_NtCs1gyvJd0MAV7_10async_lock5mutexINtB5_11AcquireSlowRINtB5_5MutexuEuE10take_mutexCsbDLrNlwBX3H_4smol.exit48 ], [ %.sink84, %_RINvXs2_CskHQ0D3bTzth_23event_listener_strategyNtB6_11NonBlockingNtB6_8Strategy4polluNtCs3iPtYnXk70z_14event_listener13EventListenerECsbDLrNlwBX3H_4smol.exit.thread.sink.split ], [ %i.w, %_RNvMse_NtCs1gyvJd0MAV7_10async_lock5mutexINtB5_11AcquireSlowRINtB5_5MutexuEuE10take_mutexCsbDLrNlwBX3H_4smol.exit ], [ null, %bb.v ], [ %i.ax, %_RNvMse_NtCs1gyvJd0MAV7_10async_lock5mutexINtB5_11AcquireSlowRINtB5_5MutexuEuE10take_mutexCsbDLrNlwBX3H_4smol.exit60 ], [ null, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %.sroa.0.0

bb.s:                                             ; preds = %.loopexit
  store i8 1, ptr %i.d, align 8
  br label %bb.f

bb.t:                                             ; preds = %.loopexit
  call void @_RNvCs1gyvJd0MAV7_10async_lock5abort() #21
  unreachable

bb.u:                                             ; preds = %.backedge, %bb.f
  %i.an = load ptr, ptr %i.c, align 8, !align !10, !noundef !5 ; 3 uses
  %.not33 = icmp eq ptr %i.an, null
  br i1 %.not33, label %bb.x, label %bb.v, !prof !11

bb.v:                                             ; preds = %bb.u
  call void @llvm.experimental.noalias.scope.decl(metadata !112)
  %i.ao = call noundef zeroext i1 @_RNvMsh_Cs3iPtYnXk70z_14event_listenerINtB5_13InnerListeneruINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtB5_5InneruEEE13poll_internalCsbDLrNlwBX3H_4smol(ptr noundef nonnull align 8 %i.an, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2), !noalias !112
  br i1 %i.ao, label %_RINvXs2_CskHQ0D3bTzth_23event_listener_strategyNtB6_11NonBlockingNtB6_8Strategy4polluNtCs3iPtYnXk70z_14event_listener13EventListenerECsbDLrNlwBX3H_4smol.exit.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs3iPtYnXk70z_14event_listener13EventListenerEECsbDLrNlwBX3H_4smol(ptr nonnull %i.an)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.split-lp, !noalias !112

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.w, %bb.h
  %lpad.loopexit.split-lp90 = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.x:                                             ; preds = %bb.u
  %i.ap = call noundef nonnull align 8 ptr @_RNvMs5_Cs3iPtYnXk70z_14event_listenerNtB5_5Event6listenCsbDLrNlwBX3H_4smol(ptr noundef nonnull align 8 %i.s) ; 2 uses
  %.val38 = load ptr, ptr %i.c, align 8, !align !10, !noundef !5
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs3iPtYnXk70z_14event_listener13EventListenerEECsbDLrNlwBX3H_4smol(ptr %.val38)
          to label %bb.ac unwind label %bb.ab

bb.y:                                             ; preds = %bb.w
  store ptr null, ptr %i.c, align 8, !alias.scope !112
  %i.aq = atomicrmw or ptr %i.n, i64 1 acquire, align 8
  %3 = and i64 %i.aq, 1
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %bb.z, label %.backedge

bb.z:                                             ; preds = %bb.y
  %i.ar = load ptr, ptr %i.b, align 8, !align !10, !noundef !5 ; 3 uses
  store ptr null, ptr %i.b, align 8
  %i.as = load i8, ptr %i.d, align 8, !range !8, !noundef !5
  %i.at = trunc nuw i8 %i.as to i1
  %.not.i51 = icmp ne ptr %i.ar, null             ; 2 uses
  %or.cond.not.i52 = and i1 %.not.i51, %i.at
  br i1 %or.cond.not.i52, label %_RINvXs2_CskHQ0D3bTzth_23event_listener_strategyNtB6_11NonBlockingNtB6_8Strategy4polluNtCs3iPtYnXk70z_14event_listener13EventListenerECsbDLrNlwBX3H_4smol.exit.thread.sink.split, label %_RNvMse_NtCs1gyvJd0MAV7_10async_lock5mutexINtB5_11AcquireSlowRINtB5_5MutexuEuE10take_mutexCsbDLrNlwBX3H_4smol.exit53

_RNvMse_NtCs1gyvJd0MAV7_10async_lock5mutexINtB5_11AcquireSlowRINtB5_5MutexuEuE10take_mutexCsbDLrNlwBX3H_4smol.exit53: ; preds = %bb.z
  br i1 %.not.i51, label %_RINvXs2_CskHQ0D3bTzth_23event_listener_strategyNtB6_11NonBlockingNtB6_8Strategy4polluNtCs3iPtYnXk70z_14event_listener13EventListenerECsbDLrNlwBX3H_4smol.exit.thread, label %bb.aa, !prof !111

bb.aa:                                            ; preds = %_RNvMse_NtCs1gyvJd0MAV7_10async_lock5mutexINtB5_11AcquireSlowRINtB5_5MutexuEuE10take_mutexCsbDLrNlwBX3H_4smol.exit53
  call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #26
  unreachable

bb.ab:                                            ; preds = %bb.x
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.ac:                                            ; preds = %bb.x
  store ptr %i.ap, ptr %i.c, align 8
  %i.av = cmpxchg ptr %i.n, i64 2, i64 3 acquire acquire, align 8 ; 2 uses
  %i.aw = extractvalue { i64, i1 } %i.av, 1
  br i1 %i.aw, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ax = load ptr, ptr %i.b, align 8, !align !10, !noundef !5 ; 3 uses
  store ptr null, ptr %i.b, align 8
  %i.ay = load i8, ptr %i.d, align 8, !range !8, !noundef !5
  %i.az = trunc nuw i8 %i.ay to i1
  %.not.i58 = icmp ne ptr %i.ax, null             ; 2 uses
  %or.cond.not.i59 = and i1 %.not.i58, %i.az
  br i1 %or.cond.not.i59, label %_RINvXs2_CskHQ0D3bTzth_23event_listener_strategyNtB6_11NonBlockingNtB6_8Strategy4polluNtCs3iPtYnXk70z_14event_listener13EventListenerECsbDLrNlwBX3H_4smol.exit.thread.sink.split, label %_RNvMse_NtCs1gyvJd0MAV7_10async_lock5mutexINtB5_11AcquireSlowRINtB5_5MutexuEuE10take_mutexCsbDLrNlwBX3H_4smol.exit60

_RNvMse_NtCs1gyvJd0MAV7_10async_lock5mutexINtB5_11AcquireSlowRINtB5_5MutexuEuE10take_mutexCsbDLrNlwBX3H_4smol.exit60: ; preds = %bb.ad
  br i1 %.not.i58, label %_RINvXs2_CskHQ0D3bTzth_23event_listener_strategyNtB6_11NonBlockingNtB6_8Strategy4polluNtCs3iPtYnXk70z_14event_listener13EventListenerECsbDLrNlwBX3H_4smol.exit.thread, label %bb.af, !prof !111

bb.ae:                                            ; preds = %bb.ac
  %.sroa.01.0.i57 = extractvalue { i64, i1 } %i.av, 0
  %5 = and i64 %.sroa.01.0.i57, 1
  %.not36 = icmp eq i64 %5, 0
  br i1 %.not36, label %bb.ag, label %.backedge

bb.af:                                            ; preds = %_RNvMse_NtCs1gyvJd0MAV7_10async_lock5mutexINtB5_11AcquireSlowRINtB5_5MutexuEuE10take_mutexCsbDLrNlwBX3H_4smol.exit60
  call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #26
  unreachable

bb.ag:                                            ; preds = %bb.ae
  call fastcc void @_RINvMs5_Cs3iPtYnXk70z_14event_listenerNtB6_5Event6notifylECsbDLrNlwBX3H_4smol(ptr noundef nonnull align 8 %i.s) #27
  br label %.backedge

.backedge:                                        ; preds = %bb.ag, %bb.ae, %bb.y
  br label %bb.u
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
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !5, !noundef !5
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
  %i.g = load i64, ptr %i.f, align 8, !noundef !5 ; 2 uses
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
  %i.r = load i64, ptr %i.q, align 8, !noundef !5
  %i.s = sub i64 %i.j, %i.i
  %i.t = add i64 %i.s, %i.r
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.v = load i64, ptr %i.u, align 8, !noundef !5
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
  %i.f = load i64, ptr %i.c, align 8, !noundef !5
  %i.g = add i64 %i.f, -1
  %i.h = and i64 %i.g, %i.b                       ; 3 uses
  %i.i = load i64, ptr %i.e, align 8, !noundef !5 ; 2 uses
  %i.j = icmp ult i64 %i.h, %i.i
  br i1 %i.j, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.k = load i64, ptr %i.d, align 128, !noundef !5
  %i.l = sub i64 0, %i.k
  %i.m = and i64 %i.b, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 128
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.h
  %i.p = phi i64 [ %i.m, %.lr.ph ], [ %i.ao, %bb.h ]
  %i.q = phi i64 [ %i.h, %.lr.ph ], [ %i.al, %bb.h ] ; 2 uses
  %.sroa.03.029 = phi i64 [ %i.b, %.lr.ph ], [ %.sroa.03.1, %bb.h ] ; 5 uses
  %i.r = load ptr, ptr %i.n, align 16, !nonnull !5, !noundef !5
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
  %i.y = load i64, ptr %i.e, align 8, !noundef !5
  %i.z = icmp ult i64 %i.x, %i.y
  br i1 %i.z, label %bb.m, label %bb.l

bb.e:                                             ; preds = %bb.c
  call void @_RNvNtNtCsG258MDvU3F_3std6thread9functions9yield_now()
  br label %.sink.split

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  call void asm sideeffect inteldialect "lock not qword ptr [${0:q}]", "r,~{memory}"(ptr nonnull %i.a) #22, !srcloc !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.aa = load atomic i64, ptr %i.o monotonic, align 128 ; 2 uses
  %i.ab = load i64, ptr %i.c, align 8, !noundef !5 ; 2 uses
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
  %i.aj = load i64, ptr %i.c, align 8, !noundef !5
  %i.ak = add i64 %i.aj, -1
  %i.al = and i64 %i.ak, %.sroa.03.1              ; 3 uses
  %i.am = load i64, ptr %i.d, align 128, !noundef !5
  %i.an = sub i64 0, %i.am
  %i.ao = and i64 %.sroa.03.1, %i.an
  %i.ap = load i64, ptr %i.e, align 8, !noundef !5 ; 2 uses
  %i.aq = icmp ult i64 %i.al, %i.ap
  br i1 %i.aq, label %bb.b, label %._crit_edge

bb.i:                                             ; preds = %bb.g
  store i8 0, ptr %i.ah, align 1
  br label %bb.k

bb.j:                                             ; preds = %bb.g
end_hunk_0
begin_hunk_1_@_RNvXs5_NtCsitb6zIp059K_12futures_lite6futureINtB5_2OrINtNtNtCskKLDkoKarTP_4core6future7pending7PendinguENCNCINvMsb_Csa9iXSdNszRG_14async_executorNtB1P_5State3runuBP_E00ENtNtBU_6future6Future4pollCsbDLrNlwBX3H_4smol:bb.a
bb.y:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !172
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !172
  br label %bb.ap

bb.z:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std4sync6poison12TryLockErrorINtNtBE_6rwlock15RwLockReadGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB20_4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEEEECsbDLrNlwBX3H_4smol.exit.sink.split.i20.i.i.i.i.i.i, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.x
  %i.by = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !noalias !171
  unreachable

bb.aa:                                            ; preds = %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB5_4TakeINtNtB7_4skip4SkipINtNtB7_5chain5ChainINtNtNtBb_5slice4iter4IterINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEB1A_EEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB4k_4find5checkRB20_QNCNCNCNvMsf_Csa9iXSdNszRG_14async_executorNtB5G_6Runner8runnable000E0INtNtNtBb_3ops12control_flow11ControlFlowB5o_EECsbDLrNlwBX3H_4smol.exit.thread.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !172
  %.pre.i.i.i.i.i.i = load i64, ptr %i.g, align 8, !range !7, !noalias !172
  %i.bz = trunc nuw i64 %.pre.i.i.i.i.i.i to i1
  %i.ca = load ptr, ptr %i.at, align 8, !noalias !166
  %.not.i.i23.i.i.i.i.i.i = icmp ne ptr %i.ca, null
  %or.cond.not.i.i.i.i.i = select i1 %i.bz, i1 %.not.i.i23.i.i.i.i.i.i, i1 false
  br i1 %or.cond.not.i.i.i.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std4sync6poison12TryLockErrorINtNtBE_6rwlock15RwLockReadGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB20_4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEEEECsbDLrNlwBX3H_4smol.exit.sink.split.i25.i.i.i.i.i.i, label %.thread.i.thread.i.i.i.i.i

bb.ab:                                            ; preds = %.noexc10.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !172
  store ptr %i.bq, ptr %i.f, align 8, !noalias !172
  store ptr %i.br, ptr %i.ax, align 8, !noalias !172
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.cc = load i64, ptr %i.cb, align 8, !noalias !171, !noundef !5 ; 10 uses
  %i.cd = icmp ult i64 %i.cc, 1152921504606846976
  call void @llvm.assume(i1 %i.cd)
  %i.ce = load ptr, ptr %i.ay, align 8, !alias.scope !171, !nonnull !5, !align !10, !noundef !5 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !177)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !172
  store i64 %i.cc, ptr %i.b, align 8, !noalias !178
  %i.cf = icmp eq i64 %i.cc, 0
  br i1 %i.cf, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  invoke fastcc void @_RNCINvMs0_Cs8NKWGp8lJEP_8fastrandNtB8_3Rng5usizeINtNtNtCskKLDkoKarTP_4core3ops5range7RangeTojEE0CsbDLrNlwBX3H_4smol(ptr nonnull readonly align 8 dereferenceable(8) %i.b) #27
          to label %.noexc.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc.i.i.i.i.i.i:                               ; preds = %bb.ac
  unreachable

bb.ad:                                            ; preds = %bb.ab
  %i.cg = load i64, ptr %i.ce, align 8, !alias.scope !179, !noalias !171, !noundef !5
  %i.ch = add i64 %i.cg, 3257665815644502181      ; 4 uses
  store i64 %i.ch, ptr %i.ce, align 8, !alias.scope !179, !noalias !171
  %i.ci = zext i64 %i.ch to i128
  %i.cj = xor i64 %i.ch, -8378864009470890807
  %i.ck = zext i64 %i.cj to i128
  %i.cl = mul nuw i128 %i.ck, %i.ci               ; 2 uses
  %i.cm = lshr i128 %i.cl, 64
  %i.cn = xor i128 %i.cm, %i.cl                   ; 2 uses
  %i.co = trunc i128 %i.cn to i64
  %i.cp = and i128 %i.cn, 18446744073709551615
  %i.cq = zext nneg i64 %i.cc to i128             ; 2 uses
  %i.cr = mul nuw nsw i128 %i.cp, %i.cq
  %i.cs = lshr i128 %i.cr, 64
  %i.ct = trunc nuw nsw i128 %i.cs to i64         ; 2 uses
  %i.cu = mul i64 %i.cc, %i.co                    ; 2 uses
  %i.cv = icmp ult i64 %i.cu, %i.cc
  br i1 %i.cv, label %bb.ae, label %.lr.ph.i.i.i.i.i.i

bb.ae:                                            ; preds = %bb.ad
  %i.cw = sub nsw i64 0, %i.cc
  %i.cx = urem i64 %i.cw, %i.cc                   ; 2 uses
  %i.cy = icmp samesign ult i64 %i.cu, %i.cx
  br i1 %i.cy, label %.lr.ph.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

..loopexit_crit_edge.i.i.i.i.i.i.i.i:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  store i64 %i.de, ptr %i.ce, align 8, !alias.scope !179, !noalias !171
  %i.cz = and i128 %i.dk, 18446744073709551615
  %i.da = mul nuw nsw i128 %i.cz, %i.cq
  %i.db = lshr i128 %i.da, 64
  %i.dc = trunc nuw nsw i128 %i.db to i64
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.ae, %.lr.ph.i.i.i.i.i.i.i.i
  %i.dd = phi i64 [ %i.de, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.ch, %bb.ae ]
  %i.de = add i64 %i.dd, 3257665815644502181      ; 4 uses
  %i.df = zext i64 %i.de to i128
  %i.dg = xor i64 %i.de, -8378864009470890807
  %i.dh = zext i64 %i.dg to i128
  %i.di = mul nuw i128 %i.dh, %i.df               ; 2 uses
  %i.dj = lshr i128 %i.di, 64
  %i.dk = xor i128 %i.dj, %i.di                   ; 2 uses
  %i.dl = trunc i128 %i.dk to i64
  %i.dm = mul i64 %i.cc, %i.dl
  %i.dn = icmp ult i64 %i.dm, %i.cx
  br i1 %i.dn, label %.lr.ph.i.i.i.i.i.i.i.i, label %..loopexit_crit_edge.i.i.i.i.i.i.i.i

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.al, %bb.ak, %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4skipINtB5_4SkipINtNtB7_5chain5ChainINtNtNtBb_5slice4iter4IterINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEB1i_EENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvXs_NtB7_4takeINtB4T_4TakepEB41_8try_fold5checkRB1I_uINtNtNtBb_3ops12control_flow11ControlFlowB5A_ENCINvNvB41_4find5checkB5A_QNCNCNCNvMsf_Csa9iXSdNszRG_14async_executorNtB73_6Runner8runnable000E0E0IB5H_B5G_EECsbDLrNlwBX3H_4smol.exit.i.i.i.i.i.i.i, %bb.ac
  %lpad.loopexit.split-lp92 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsh_NtNtNtCsG258MDvU3F_3std4sync6poison6rwlockINtB5_15RwLockReadGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1d_4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.f)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1G_4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEEECsbDLrNlwBX3H_4smol.exit.i.i.i.i.i.i unwind label %bb.z, !noalias !171

.lr.ph.i.i.i.i.i.i:                               ; preds = %..loopexit_crit_edge.i.i.i.i.i.i.i.i, %bb.ae, %bb.ad
  %.sroa.0.0.i.i.i.i.i.i.i.i = phi i64 [ %i.ct, %bb.ad ], [ %i.dc, %..loopexit_crit_edge.i.i.i.i.i.i.i.i ], [ %i.ct, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !172
  %i.do = load ptr, ptr %i.f, align 8, !noalias !172, !nonnull !5, !noundef !5 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dq = load ptr, ptr %i.dp, align 8, !noalias !171, !nonnull !5, !noundef !5 ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %i.ds = load i64, ptr %i.dr, align 8, !noalias !171, !noundef !5
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %i.ds ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !172
  store ptr %i.az, ptr %i.e, align 8, !noalias !172
  store ptr %i.dq, ptr %.sroa.54.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !172
  store ptr %i.dt, ptr %.sroa.54.sroa.5.0..sroa.54.0..sroa_idx.sroa_idx.i.i.i.i.i.i, align 8, !noalias !172
  store ptr %i.dq, ptr %.sroa.54.sroa.6.0..sroa.54.0..sroa_idx.sroa_idx.i.i.i.i.i.i, align 8, !noalias !172
  store ptr %i.dt, ptr %.sroa.54.sroa.7.0..sroa.54.0..sroa_idx.sroa_idx.i.i.i.i.i.i, align 8, !noalias !172
  store i64 %i.cc, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !172
  br label %bb.af

thread-pre-split.i.i.i.i.i.i:                     ; preds = %bb.an
  %.pr.i.i.i.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !180, !noalias !172
  br label %bb.af

bb.af:                                            ; preds = %thread-pre-split.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.du = phi i64 [ %.pr.i.i.i.i.i.i, %thread-pre-split.i.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  store i64 0, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !180, !noalias !172
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.du, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4skipINtB5_4SkipINtNtB7_5chain5ChainINtNtNtBb_5slice4iter4IterINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEB1i_EENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvXs_NtB7_4takeINtB4T_4TakepEB41_8try_fold5checkRB1I_uINtNtNtBb_3ops12control_flow11ControlFlowB5A_ENCINvNvB41_4find5checkB5A_QNCNCNCNvMsf_Csa9iXSdNszRG_14async_executorNtB73_6Runner8runnable000E0E0IB5H_B5G_EECsbDLrNlwBX3H_4smol.exit.i.i.i.i.i.i.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dv = add i64 %i.du, -1                       ; 3 uses
  %i.dw = load ptr, ptr %.sroa.54.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !181, !noalias !172, !noundef !5 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.dw, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dx = load ptr, ptr %.sroa.54.sroa.5.0..sroa.54.0..sroa_idx.sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !182, !noalias !172, !nonnull !5, !noundef !5 ; 2 uses
  %i.dy = ptrtoint ptr %i.dx to i64
  %i.dz = ptrtoint ptr %i.dw to i64
  %i.ea = sub nuw i64 %i.dy, %i.dz
  %i.eb = lshr exact i64 %i.ea, 3
  %..i.i.i.i.i.i.i.i.i.i.i = call noundef range(i64 0, 2305843009213693952) i64 @llvm.umin.i64(i64 range(i64 0, -1) %i.dv, i64 range(i64 0, 2305843009213693952) %i.eb) ; 2 uses
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %..i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.ed = sub nuw i64 %i.dv, %..i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.not7.i.i.i.i.i.i.i.i.i = icmp ne i64 %i.ed, 0
  %i.ee = icmp eq ptr %i.ec, %i.dx
  %or.cond.i.i.i.i.i.i.i.i.i = select i1 %.not7.i.i.i.i.i.i.i.i.i, i1 true, i1 %i.ee
  br i1 %or.cond.i.i.i.i.i.i.i.i.i, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbDLrNlwBX3H_4smol.exit.thread.i.i.i.i.i.i.i.i.i, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbDLrNlwBX3H_4smol.exit.i.i.i.i.i.i.i.i.i

bb.ai:                                            ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbDLrNlwBX3H_4smol.exit.thread.i.i.i.i.i.i.i.i.i, %bb.ag
  %.sroa.0.0.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ed, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbDLrNlwBX3H_4smol.exit.thread.i.i.i.i.i.i.i.i.i ], [ %i.dv, %bb.ag ] ; 2 uses
  %i.ef = load ptr, ptr %.sroa.54.sroa.6.0..sroa.54.0..sroa_idx.sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !181, !noalias !172, !noundef !5 ; 3 uses
  %.not9.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ef, null
  br i1 %.not9.i.i.i.i.i.i.i.i.i, label %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB5_4TakeINtNtB7_4skip4SkipINtNtB7_5chain5ChainINtNtNtBb_5slice4iter4IterINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEB1A_EEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB4k_4find5checkRB20_QNCNCNCNvMsf_Csa9iXSdNszRG_14async_executorNtB5G_6Runner8runnable000E0INtNtNtBb_3ops12control_flow11ControlFlowB5o_EECsbDLrNlwBX3H_4smol.exit.thread.i.i.i.i.i.i, label %bb.aj

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbDLrNlwBX3H_4smol.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.ah
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  store ptr %i.eg, ptr %.sroa.54.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !183, !noalias !172
  br label %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4skipINtB5_4SkipINtNtB7_5chain5ChainINtNtNtBb_5slice4iter4IterINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEB1i_EENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvXs_NtB7_4takeINtB4T_4TakepEB41_8try_fold5checkRB1I_uINtNtNtBb_3ops12control_flow11ControlFlowB5A_ENCINvNvB41_4find5checkB5A_QNCNCNCNvMsf_Csa9iXSdNszRG_14async_executorNtB73_6Runner8runnable000E0E0IB5H_B5G_EECsbDLrNlwBX3H_4smol.exit.i.i.i.i.i.i.i

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbDLrNlwBX3H_4smol.exit.thread.i.i.i.i.i.i.i.i.i: ; preds = %bb.ah
  store ptr null, ptr %.sroa.54.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !181, !noalias !172
  br label %bb.ai

bb.aj:                                            ; preds = %bb.ai
  %i.eh = load ptr, ptr %.sroa.54.sroa.7.0..sroa.54.0..sroa_idx.sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !184, !noalias !172, !nonnull !5, !noundef !5 ; 2 uses
  %i.ei = ptrtoint ptr %i.eh to i64
  %i.ej = ptrtoint ptr %i.ef to i64
  %i.ek = sub nuw i64 %i.ei, %i.ej
  %i.el = lshr exact i64 %i.ek, 3
  %.not.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i, %i.el ; 2 uses
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %storemerge.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i.i.i, ptr %i.en, ptr %i.eh
  store ptr %storemerge.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.54.sroa.6.0..sroa.54.0..sroa_idx.sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !184, !noalias !172
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4skipINtB5_4SkipINtNtB7_5chain5ChainINtNtNtBb_5slice4iter4IterINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEB1i_EENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvXs_NtB7_4takeINtB4T_4TakepEB41_8try_fold5checkRB1I_uINtNtNtBb_3ops12control_flow11ControlFlowB5A_ENCINvNvB41_4find5checkB5A_QNCNCNCNvMsf_Csa9iXSdNszRG_14async_executorNtB73_6Runner8runnable000E0E0IB5H_B5G_EECsbDLrNlwBX3H_4smol.exit.i.i.i.i.i.i.i, label %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB5_4TakeINtNtB7_4skip4SkipINtNtB7_5chain5ChainINtNtNtBb_5slice4iter4IterINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEB1A_EEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB4k_4find5checkRB20_QNCNCNCNvMsf_Csa9iXSdNszRG_14async_executorNtB5G_6Runner8runnable000E0INtNtNtBb_3ops12control_flow11ControlFlowB5o_EECsbDLrNlwBX3H_4smol.exit.thread.i.i.i.i.i.i

_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4skipINtB5_4SkipINtNtB7_5chain5ChainINtNtNtBb_5slice4iter4IterINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEB1i_EENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvXs_NtB7_4takeINtB4T_4TakepEB41_8try_fold5checkRB1I_uINtNtNtBb_3ops12control_flow11ControlFlowB5A_ENCINvNvB41_4find5checkB5A_QNCNCNCNvMsf_Csa9iXSdNszRG_14async_executorNtB73_6Runner8runnable000E0E0IB5H_B5G_EECsbDLrNlwBX3H_4smol.exit.i.i.i.i.i.i.i: ; preds = %bb.aj, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbDLrNlwBX3H_4smol.exit.i.i.i.i.i.i.i.i.i, %bb.af
  %i.eo = invoke { i64, ptr } @_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters5chainINtB5_5ChainINtNtNtBb_5slice4iter4IterINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEB10_ENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvXs_NtB7_4takeINtB4A_4TakepEB3I_8try_fold5checkRB1q_uINtNtNtBb_3ops12control_flow11ControlFlowB5h_ENCINvNvB3I_4find5checkB5h_QNCNCNCNvMsf_Csa9iXSdNszRG_14async_executorNtB6K_6Runner8runnable000E0E0IB5o_B5n_EECsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %.sroa.54.0..sroa_idx.i.i.i.i.i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %.sroa.7.0..sroa_idx.i.i.i.i.i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %.noexc12.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !171 ; 2 uses

.noexc12.i.i.i.i.i.i:                             ; preds = %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4skipINtB5_4SkipINtNtB7_5chain5ChainINtNtNtBb_5slice4iter4IterINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEB1i_EENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvXs_NtB7_4takeINtB4T_4TakepEB41_8try_fold5checkRB1I_uINtNtNtBb_3ops12control_flow11ControlFlowB5A_ENCINvNvB41_4find5checkB5A_QNCNCNCNvMsf_Csa9iXSdNszRG_14async_executorNtB73_6Runner8runnable000E0E0IB5H_B5G_EECsbDLrNlwBX3H_4smol.exit.i.i.i.i.i.i.i
  %i.ep = extractvalue { i64, ptr } %i.eo, 0
  %i.eq = extractvalue { i64, ptr } %i.eo, 1      ; 2 uses
  %i.er = trunc nuw i64 %i.ep to i1
  %.not.i.i.i.i.i.i = icmp ne ptr %i.eq, null
  %or.cond.not.i.i.i.i.i.i = select i1 %i.er, i1 %.not.i.i.i.i.i.i, i1 false
  br i1 %or.cond.not.i.i.i.i.i.i, label %bb.ak, label %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB5_4TakeINtNtB7_4skip4SkipINtNtB7_5chain5ChainINtNtNtBb_5slice4iter4IterINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEB1A_EEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB4k_4find5checkRB20_QNCNCNCNvMsf_Csa9iXSdNszRG_14async_executorNtB5G_6Runner8runnable000E0INtNtNtBb_3ops12control_flow11ControlFlowB5o_EECsbDLrNlwBX3H_4smol.exit.thread.i.i.i.i.i.i

bb.ak:                                            ; preds = %.noexc12.i.i.i.i.i.i
  %i.es = load ptr, ptr %i.eq, align 8, !noalias !171, !nonnull !5, !noundef !5
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 128
  %i.eu = load ptr, ptr %i.az, align 8, !noalias !171, !nonnull !5, !noundef !5
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 128
  invoke void @_RINvCsa9iXSdNszRG_14async_executor5stealNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableECsbDLrNlwBX3H_4smol(ptr noundef nonnull align 128 %i.et, ptr noundef nonnull align 128 %i.ev)
          to label %bb.al unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !171

_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB5_4TakeINtNtB7_4skip4SkipINtNtB7_5chain5ChainINtNtNtBb_5slice4iter4IterINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEB1A_EEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB4k_4find5checkRB20_QNCNCNCNvMsf_Csa9iXSdNszRG_14async_executorNtB5G_6Runner8runnable000E0INtNtNtBb_3ops12control_flow11ControlFlowB5o_EECsbDLrNlwBX3H_4smol.exit.thread.i.i.i.i.i.i: ; preds = %bb.an, %.noexc12.i.i.i.i.i.i, %bb.aj, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !172
  invoke void @_RNvXsh_NtNtNtCsG258MDvU3F_3std4sync6poison6rwlockINtB5_15RwLockReadGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1d_4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.f)
          to label %bb.aa unwind label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !171

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1G_4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEEECsbDLrNlwBX3H_4smol.exit.i.i.i.i.i.i: ; preds = %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn.i.i.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp92, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp97, %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.ew = load i64, ptr %i.g, align 8, !range !7, !noalias !172, !noundef !5
  %2 = icmp eq i64 %i.ew, 0
  %i.ex = load ptr, ptr %i.at, align 8, !noalias !172
  %.not.i.i18.i.i.i.i.i.i = icmp eq ptr %i.ex, null
  %or.cond32.i.i.i.i.i.i = select i1 %2, i1 true, i1 %.not.i.i18.i.i.i.i.i.i
  br i1 %or.cond32.i.i.i.i.i.i, label %.body.i.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std4sync6poison12TryLockErrorINtNtBE_6rwlock15RwLockReadGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB20_4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEEEECsbDLrNlwBX3H_4smol.exit.sink.split.i20.i.i.i.i.i.i

.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB5_4TakeINtNtB7_4skip4SkipINtNtB7_5chain5ChainINtNtNtBb_5slice4iter4IterINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEB1A_EEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB4k_4find5checkRB20_QNCNCNCNvMsf_Csa9iXSdNszRG_14async_executorNtB5G_6Runner8runnable000E0INtNtNtBb_3ops12control_flow11ControlFlowB5o_EECsbDLrNlwBX3H_4smol.exit.thread.i.i.i.i.i.i, %bb.ao
  %lpad.loopexit.split-lp97 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1G_4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEEECsbDLrNlwBX3H_4smol.exit.i.i.i.i.i.i

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !172
  %i.ey = load ptr, ptr %i.az, align 8, !noalias !171, !nonnull !5, !noundef !5
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 128
  invoke void @_RNvMs2_CseSXqeRWftQm_16concurrent_queueINtB5_15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableE3popCsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.d, ptr noundef nonnull align 128 %i.ez)
          to label %bb.am unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !171

bb.am:                                            ; preds = %bb.al
  %i.fa = load i8, ptr %i.d, align 8, !range !8, !noalias !172, !noundef !5
  %i.fb = trunc nuw i8 %i.fa to i1
  br i1 %i.fb, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !172
  %i.fc = load i64, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !185, !noalias !172, !noundef !5
  %i.fd = icmp eq i64 %i.fc, 0
  br i1 %i.fd, label %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB5_4TakeINtNtB7_4skip4SkipINtNtB7_5chain5ChainINtNtNtBb_5slice4iter4IterINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEB1A_EEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB4k_4find5checkRB20_QNCNCNCNvMsf_Csa9iXSdNszRG_14async_executorNtB5G_6Runner8runnable000E0INtNtNtBb_3ops12control_flow11ControlFlowB5o_EECsbDLrNlwBX3H_4smol.exit.thread.i.i.i.i.i.i, label %thread-pre-split.i.i.i.i.i.i

bb.ao:                                            ; preds = %bb.am
  %i.fe = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ff = load ptr, ptr %i.fe, align 8, !noalias !172, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !172
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !172
  invoke void @_RNvXsh_NtNtNtCsG258MDvU3F_3std4sync6poison6rwlockINtB5_15RwLockReadGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1d_4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.f)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1G_4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEEECsbDLrNlwBX3H_4smol.exit16.i.i.i.i.i.i unwind label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !171

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1G_4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEEECsbDLrNlwBX3H_4smol.exit16.i.i.i.i.i.i: ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !172
  %i.fg = load i64, ptr %i.g, align 8, !range !7, !noalias !172, !noundef !5
  %i.fh = trunc nuw i64 %i.fg to i1
  %i.fi = load ptr, ptr %i.at, align 8, !noalias !172
  %.not.i.i17.i.i.i.i.i.i = icmp ne ptr %i.fi, null
  %or.cond.not36.i.i.i.i.i.i = select i1 %i.fh, i1 %.not.i.i17.i.i.i.i.i.i, i1 false
  br i1 %or.cond.not36.i.i.i.i.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std4sync6poison12TryLockErrorINtNtBE_6rwlock15RwLockReadGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB20_4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEEEECsbDLrNlwBX3H_4smol.exit.sink.split.i.i.i.i.i.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB22_4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEEINtB12_12TryLockErrorBX_EEECsbDLrNlwBX3H_4smol.exit.i.i.i.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std4sync6poison12TryLockErrorINtNtBE_6rwlock15RwLockReadGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB20_4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEEEECsbDLrNlwBX3H_4smol.exit.sink.split.i.i.i.i.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1G_4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEEECsbDLrNlwBX3H_4smol.exit16.i.i.i.i.i.i
  invoke void @_RNvXsh_NtNtNtCsG258MDvU3F_3std4sync6poison6rwlockINtB5_15RwLockReadGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1d_4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.at)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB22_4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEEINtB12_12TryLockErrorBX_EEECsbDLrNlwBX3H_4smol.exit.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB22_4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEEINtB12_12TryLockErrorBX_EEECsbDLrNlwBX3H_4smol.exit.i.i.i.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std4sync6poison12TryLockErrorINtNtBE_6rwlock15RwLockReadGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB20_4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEEEECsbDLrNlwBX3H_4smol.exit.sink.split.i.i.i.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1G_4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEEECsbDLrNlwBX3H_4smol.exit16.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !172
  br label %bb.ap

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std4sync6poison12TryLockErrorINtNtBE_6rwlock15RwLockReadGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB20_4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEEEECsbDLrNlwBX3H_4smol.exit.sink.split.i20.i.i.i.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1G_4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEEECsbDLrNlwBX3H_4smol.exit.i.i.i.i.i.i
  invoke void @_RNvXsh_NtNtNtCsG258MDvU3F_3std4sync6poison6rwlockINtB5_15RwLockReadGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1d_4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.at)
          to label %.body.i.i.i unwind label %bb.z, !noalias !171

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std4sync6poison12TryLockErrorINtNtBE_6rwlock15RwLockReadGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB20_4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEEEECsbDLrNlwBX3H_4smol.exit.sink.split.i25.i.i.i.i.i.i: ; preds = %bb.aa, %.noexc10.i.i.i
  invoke void @_RNvXsh_NtNtNtCsG258MDvU3F_3std4sync6poison6rwlockINtB5_15RwLockReadGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1d_4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.at)
          to label %.thread.i.thread.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ap:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB22_4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEEINtB12_12TryLockErrorBX_EEECsbDLrNlwBX3H_4smol.exit.i.i.i.i.i.i, %bb.y, %bb.s
  %.sroa.0.0.i.ph.i.i.i.i.i = phi ptr [ %i.bi, %bb.s ], [ %i.bu, %bb.y ], [ %i.ff, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB22_4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEEINtB12_12TryLockErrorBX_EEECsbDLrNlwBX3H_4smol.exit.i.i.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !166
  store ptr %.sroa.0.0.i.ph.i.i.i.i.i, ptr %i.k, align 8, !noalias !166
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val7.i.i.i) ]
  invoke void @_RNvMsd_Csa9iXSdNszRG_14async_executorNtB5_6Ticker4wake(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.val7.i.i.i)
          to label %bb.ar unwind label %bb.aq

.thread.i.thread.i.i.i.i.i:                       ; preds = %bb.u, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std4sync6poison12TryLockErrorINtNtBE_6rwlock15RwLockReadGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB20_4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEEEECsbDLrNlwBX3H_4smol.exit.sink.split.i25.i.i.i.i.i.i, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !172
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val7.i.i.i), "nonnull"(ptr %.val84.i) ]
  %i.fj = invoke noundef zeroext i1 @_RNvMsd_Csa9iXSdNszRG_14async_executorNtB5_6Ticker5sleep(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.val7.i.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.val84.i)
          to label %.noexc13.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc13.i.i.i:                                   ; preds = %.thread.i.thread.i.i.i.i.i
  br i1 %i.fj, label %bb.q, label %bb.bm

bb.aq:                                            ; preds = %bb.bc, %_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexNtCsa9iXSdNszRG_14async_executor8SleepersE4lockCsbDLrNlwBX3H_4smol.exit.i.i.i.i.i.i, %bb.au, %bb.at, %bb.ap
  %i.fk = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i

.body.i.i.i.i.i:                                  ; preds = %bb.bd, %bb.bb, %bb.aq
  %eh.lpad-body.i.i.i.i.i = phi { ptr, i32 } [ %i.fk, %bb.aq ], [ %i.ha, %bb.bd ], [ %i.ha, %bb.bb ]
  invoke void @_RNvXsa_NtCsfO0Hesl1pIe_10async_task8runnableNtB5_8RunnableNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k)
          to label %.body.i.i.i unwind label %bb.bf

bb.ar:                                            ; preds = %bb.ap
  %i.fl = load ptr, ptr %.val7.i.i.i, align 8, !nonnull !5, !align !14, !noundef !5 ; 3 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 664
  %i.fn = cmpxchg ptr %i.fm, i8 0, i8 1 acq_rel acquire, align 1
  %i.fo = extractvalue { i8, i1 } %i.fn, 1
  br i1 %i.fo, label %bb.as, label %bb.bh

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !166
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fl, i64 512 ; 3 uses
  %i.fq = cmpxchg ptr %i.fp, i32 0, i32 1 acquire monotonic, align 4, !noalias !186
  %i.fr = extractvalue { i32, i1 } %i.fq, 1
  br i1 %i.fr, label %.noexc.i.i.i.i.i, label %bb.at, !prof !12

bb.at:                                            ; preds = %bb.as
  invoke void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 8 %i.fp)
          to label %.noexc.i.i.i.i.i unwind label %bb.aq

.noexc.i.i.i.i.i:                                 ; preds = %bb.at, %bb.as
  %i.fs = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !187
  %i.ft = and i64 %i.fs, 9223372036854775807
  %i.fu = icmp eq i64 %i.ft, 0
  br i1 %i.fu, label %_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexNtCsa9iXSdNszRG_14async_executor8SleepersE4lockCsbDLrNlwBX3H_4smol.exit.i.i.i.i.i.i, label %bb.au, !prof !12

bb.au:                                            ; preds = %.noexc.i.i.i.i.i
  %i.fv = invoke noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #24
          to label %.noexc7.i.i.i.i.i unwind label %bb.aq

.noexc7.i.i.i.i.i:                                ; preds = %bb.au
  %i.fw = xor i1 %i.fv, true
  %i.fx = zext i1 %i.fw to i8
  br label %_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexNtCsa9iXSdNszRG_14async_executor8SleepersE4lockCsbDLrNlwBX3H_4smol.exit.i.i.i.i.i.i

_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexNtCsa9iXSdNszRG_14async_executor8SleepersE4lockCsbDLrNlwBX3H_4smol.exit.i.i.i.i.i.i: ; preds = %.noexc7.i.i.i.i.i, %.noexc.i.i.i.i.i
  %.sroa.01.0.i.i.i.i.i.i.i.i = phi i8 [ %i.fx, %.noexc7.i.i.i.i.i ], [ 0, %.noexc.i.i.i.i.i ]
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fl, i64 516
  %i.fz = load atomic i8, ptr %i.fy monotonic, align 4, !noalias !186
  %.not.i.i.i4.i.i.i.i.i = icmp ne i8 %i.fz, 0
  invoke void @_RINvNtNtCsG258MDvU3F_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_5mutex10MutexGuardNtCsa9iXSdNszRG_14async_executor8SleepersENCNvMs9_BZ_BW_3new0ECsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i1 noundef zeroext %.not.i.i.i4.i.i.i.i.i, i8 noundef %.sroa.01.0.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 %i.fp)
          to label %.noexc8.i.i.i.i.i unwind label %bb.aq

.noexc8.i.i.i.i.i:                                ; preds = %_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexNtCsa9iXSdNszRG_14async_executor8SleepersE4lockCsbDLrNlwBX3H_4smol.exit.i.i.i.i.i.i
  %i.ga = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.gb = load ptr, ptr %i.ga, align 8, !noalias !166, !nonnull !5, !align !10 ; 7 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.gd = load i8, ptr %i.gc, align 8, !range !8, !noalias !166
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !166
  call void @llvm.experimental.noalias.scope.decl(metadata !188)
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gb, i64 24 ; 2 uses
  %i.gf = load i64, ptr %i.ge, align 8, !alias.scope !188, !noundef !5 ; 4 uses
  %i.gg = icmp ult i64 %i.gf, 384307168202282326
  call void @llvm.assume(i1 %i.gg)
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gb, i64 56
  %i.gi = load i64, ptr %i.gh, align 8, !alias.scope !188, !noundef !5
  %i.gj = icmp ne i64 %i.gf, %i.gi
  %i.gk = icmp eq i64 %i.gf, 0
  %or.cond.i.i.i.i.i.i.i = or i1 %i.gk, %i.gj
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %.noexc8.i.i.i.i.i
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  %i.gm = add nsw i64 %i.gf, -1                   ; 3 uses
  store i64 %i.gm, ptr %i.ge, align 8, !alias.scope !188
  %i.gn = load i64, ptr %i.gl, align 8, !range !13, !alias.scope !188, !noundef !5
  %i.go = icmp samesign ult i64 %i.gm, %i.gn
  call void @llvm.assume(i1 %i.go)
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gb, i64 16
  %i.gq = load ptr, ptr %i.gp, align 8, !alias.scope !188, !nonnull !5, !noundef !5
  %i.gr = getelementptr inbounds nuw [24 x i8], ptr %i.gq, i64 %i.gm ; 2 uses
  %.sroa.44.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  %.sroa.44.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %.sroa.44.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !188, !nonnull !5, !noundef !5
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.gr, i64 16
  %.sroa.5.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !188
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %.noexc8.i.i.i.i.i
  %.sroa.4.0.i.i.i.i.i.i.i = phi ptr [ undef, %.noexc8.i.i.i.i.i ], [ %.sroa.5.0.copyload.i.i.i.i.i.i.i, %bb.av ] ; 2 uses
  %.sroa.0.0.i9.i.i.i.i.i.i = phi ptr [ null, %.noexc8.i.i.i.i.i ], [ %.sroa.44.0.copyload.i.i.i.i.i.i.i, %bb.av ] ; 4 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gb, i64 4
  %i.gt = trunc nuw i8 %i.gd to i1
  br i1 %i.gt, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.gu = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !166
  %i.gv = and i64 %i.gu, 9223372036854775807
  %i.gw = icmp eq i64 %i.gv, 0
  br i1 %i.gw, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i.i, label %bb.ay, !prof !12

bb.ay:                                            ; preds = %bb.ax
  %i.gx = invoke noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #24
          to label %.noexc.i5.i.i.i.i.i unwind label %bb.bb

.noexc.i5.i.i.i.i.i:                              ; preds = %bb.ay
  br i1 %i.gx, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i.i, label %bb.az

bb.az:                                            ; preds = %.noexc.i5.i.i.i.i.i
  store atomic i8 1, ptr %i.gs monotonic, align 4
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i.i

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i.i: ; preds = %bb.az, %.noexc.i5.i.i.i.i.i, %bb.ax, %bb.aw
  %i.gy = atomicrmw xchg ptr %i.gb, i32 0 release, align 4
  %i.gz = icmp eq i32 %i.gy, 2
  br i1 %i.gz, label %bb.ba, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtCsa9iXSdNszRG_14async_executor8SleepersEECsbDLrNlwBX3H_4smol.exit.i.i.i.i.i.i, !prof !11

bb.ba:                                            ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i.i
  invoke void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.gb)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtCsa9iXSdNszRG_14async_executor8SleepersEECsbDLrNlwBX3H_4smol.exit.i.i.i.i.i.i unwind label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.ay
  %i.ha = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not17.i.i.i.i.i.i = icmp eq ptr %.sroa.0.0.i9.i.i.i.i.i.i, null
  br i1 %.not17.i.i.i.i.i.i, label %.body.i.i.i.i.i, label %bb.bd

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtCsa9iXSdNszRG_14async_executor8SleepersEECsbDLrNlwBX3H_4smol.exit.i.i.i.i.i.i: ; preds = %bb.ba, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i.i
  %.not.i6.i.i.i.i.i = icmp eq ptr %.sroa.0.0.i9.i.i.i.i.i.i, null
end_hunk_1
