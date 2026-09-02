Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/smol-rs/original/smol-b9c1dc7ab96231d5.smol.879824453b3713cb-cgu.2?download=true
inline.NumInlined: 170
inline.NumDeleted: 96
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvMs0_NtCs3iPtYnXk70z_14event_listener3sysINtB5_5InneruE6removeCsbDLrNlwBX3H_4smol:bb.a
  %i.ap = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aq = load i8, ptr %i.b, align 8, !range !8, !noundef !5
  %i.ar = icmp eq i8 %i.aq, 1
  br i1 %i.ar, label %bb.y, label %bb.z

bb.x:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.pr = load i8, ptr %i.b, align 8
  br label %bb.v

bb.y:                                             ; preds = %bb.ag, %bb.z, %bb.w
  %.pn = phi { ptr, i32 } [ %i.bg, %bb.ag ], [ %i.ap, %bb.w ], [ %i.ap, %bb.z ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs3iPtYnXk70z_14event_listener5StateuEECsbDLrNlwBX3H_4smol(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #22
          to label %bb.ah unwind label %bb.aa

bb.z:                                             ; preds = %bb.w
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs3iPtYnXk70z_14event_listener5StateuEECsbDLrNlwBX3H_4smol(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #22
          to label %bb.y unwind label %bb.aa

bb.aa:                                            ; preds = %bb.ah, %bb.z, %bb.y
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs3iPtYnXk70z_14event_listener5StateuEECsbDLrNlwBX3H_4smol.exit: ; preds = %bb.ae, %bb.ab, %bb.ad, %bb.af, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.pre = load i8, ptr %i.d, align 8, !range !8, !alias.scope !245
  %i.at = icmp eq i8 %.pre, 2
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !noundef !5
  %i.aw = add i64 %i.av, -1
  store i64 %i.aw, ptr %i.au, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.experimental.noalias.scope.decl(metadata !241)
  call void @llvm.experimental.noalias.scope.decl(metadata !242)
  call void @llvm.experimental.noalias.scope.decl(metadata !243)
  call void @llvm.experimental.noalias.scope.decl(metadata !244)
  br i1 %i.at, label %bb.p, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs3iPtYnXk70z_14event_listener3sys4LinkuEECsbDLrNlwBX3H_4smol.exit

bb.ab:                                            ; preds = %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !246)
  %i.ax = icmp eq i8 %i.an, 2
  br i1 %i.ax, label %bb.ac, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs3iPtYnXk70z_14event_listener5StateuEECsbDLrNlwBX3H_4smol.exit

bb.ac:                                            ; preds = %bb.ab
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !247)
  %i.az = load ptr, ptr %i.ay, align 8, !alias.scope !248, !noundef !5 ; 2 uses
  %.not.i.i = icmp eq ptr %i.az, null
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  br i1 %.not.i.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %.val1.i.i = load ptr, ptr %i.ba, align 8, !alias.scope !248, !noundef !5
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8, !noalias !248, !nonnull !5, !noundef !5
  invoke void %i.bc(ptr noundef %.val1.i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs3iPtYnXk70z_14event_listener5StateuEECsbDLrNlwBX3H_4smol.exit unwind label %bb.ag, !inline_history !249

bb.ae:                                            ; preds = %bb.ac
  tail call void @llvm.experimental.noalias.scope.decl(metadata !250)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !251)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !252)
  %i.bd = load ptr, ptr %i.ba, align 8, !alias.scope !253, !nonnull !5, !noundef !5
  %i.be = atomicrmw sub ptr %i.bd, i64 1 release, align 8, !noalias !253
  %i.bf = icmp eq i64 %i.be, 1
  br i1 %i.bf, label %bb.af, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs3iPtYnXk70z_14event_listener5StateuEECsbDLrNlwBX3H_4smol.exit

bb.af:                                            ; preds = %bb.ae
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtCs2KJ8IamB81r_7parking5InnerE9drop_slowCs3iPtYnXk70z_14event_listener(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ba) #21
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs3iPtYnXk70z_14event_listener5StateuEECsbDLrNlwBX3H_4smol.exit unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ad
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.ah:                                            ; preds = %bb.y
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs3iPtYnXk70z_14event_listener3sys4LinkuEECsbDLrNlwBX3H_4smol(ptr noalias nofree noundef align 8 dereferenceable(40) %i.d) #22
          to label %bb.ai unwind label %bb.aa

bb.ai:                                            ; preds = %bb.ah
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvMs2_CseSXqeRWftQm_16concurrent_queueINtB5_15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableE3lenCsbDLrNlwBX3H_4smol(ptr noundef nonnull align 128 %0) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %0, align 128, !range !13, !noundef !5
  switch i64 %i.a, label %default.unreachable5 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
  ]

default.unreachable5:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load atomic i64, ptr %i.b seq_cst, align 8
  %i.d = lshr i64 %i.c, 1
  %.lobit = and i64 %i.d, 1
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.f = tail call noundef i64 @_RNvMNtCseSXqeRWftQm_16concurrent_queue7boundedINtB2_7BoundedNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableE3lenCsbDLrNlwBX3H_4smol(ptr noundef nonnull align 128 %i.e)
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %i.i = load atomic i64, ptr %i.h seq_cst, align 128 ; 3 uses
  %i.j = load atomic i64, ptr %i.g seq_cst, align 128 ; 2 uses
  %i.k = load atomic i64, ptr %i.h seq_cst, align 128
  %i.l = icmp eq i64 %i.k, %i.i
  br i1 %i.l, label %_RNvMs0_NtCseSXqeRWftQm_16concurrent_queue9unboundedINtB5_9UnboundedNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableE3lenCsbDLrNlwBX3H_4smol.exit, label %bb.e

_RNvMs0_NtCseSXqeRWftQm_16concurrent_queue9unboundedINtB5_9UnboundedNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableE3lenCsbDLrNlwBX3H_4smol.exit: ; preds = %bb.e
  %i.m = and i64 %i.i, -2                         ; 2 uses
  %i.n = and i64 %i.j, -2                         ; 2 uses
  %i.o = and i64 %i.i, 62
  %i.p = icmp eq i64 %i.o, 62
  %i.q = add i64 %i.m, 2
  %spec.select.i = select i1 %i.p, i64 %i.q, i64 %i.m
  %i.r = and i64 %i.j, 62
  %i.s = icmp eq i64 %i.r, 62
  %i.t = add i64 %i.n, 2
  %.sroa.08.0.i = select i1 %i.s, i64 %i.t, i64 %i.n ; 2 uses
  %i.u = and i64 %.sroa.08.0.i, -64
  %i.v = sub i64 %spec.select.i, %i.u             ; 2 uses
  %i.w = lshr exact i64 %i.v, 1
  %i.x = lshr exact i64 %.sroa.08.0.i, 1
  %i.y = and i64 %i.x, 31
  %i.z = lshr i64 %i.v, 6
  %i.aa = add nuw nsw i64 %i.z, %i.y
  %i.ab = sub nsw i64 %i.w, %i.aa
  br label %bb.f

bb.f:                                             ; preds = %_RNvMs0_NtCseSXqeRWftQm_16concurrent_queue9unboundedINtB5_9UnboundedNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableE3lenCsbDLrNlwBX3H_4smol.exit, %bb.c, %bb.b
  %.sroa.0.0 = phi i64 [ %.lobit, %bb.b ], [ %i.f, %bb.c ], [ %i.ab, %_RNvMs0_NtCseSXqeRWftQm_16concurrent_queue9unboundedINtB5_9UnboundedNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableE3lenCsbDLrNlwBX3H_4smol.exit ]
  ret i64 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs2_CseSXqeRWftQm_16concurrent_queueINtB5_15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableE3popCsbDLrNlwBX3H_4smol(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 128 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i64, ptr %1, align 128, !range !13, !noundef !5
  switch i64 %i.b, label %default.unreachable18 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
  ]

default.unreachable18:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvMNtCseSXqeRWftQm_16concurrent_queue6singleINtB2_6SingleNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableE3popCsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 %i.c)
  br label %bb.z

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 128
  tail call void @_RNvMNtCseSXqeRWftQm_16concurrent_queue7boundedINtB2_7BoundedNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableE3popCsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 128 %i.d)
  br label %bb.z

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !256)
  %i.f = load atomic i64, ptr %i.e acquire, align 128, !noalias !256
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 3 uses
  %i.h = load atomic ptr, ptr %i.g acquire, align 8, !noalias !256
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 256
  br label %bb.e

bb.e:                                             ; preds = %.backedge.i, %bb.d
  %.sroa.020.0.i = phi ptr [ %i.h, %bb.d ], [ %i.o, %.backedge.i ] ; 8 uses
  %.sroa.04.0.i = phi i64 [ %i.f, %bb.d ], [ %.sroa.04.0.be.i, %.backedge.i ] ; 5 uses
  %i.j = lshr i64 %.sroa.04.0.i, 1                ; 2 uses
  %i.k = and i64 %i.j, 31                         ; 5 uses
  %i.l = icmp eq i64 %i.k, 31
  br i1 %i.l, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @_RNvNtNtCsG258MDvU3F_3std6thread9functions9yield_now(), !noalias !256
  %i.m = load atomic i64, ptr %i.e acquire, align 128, !noalias !256
  br label %.backedge.i

bb.g:                                             ; preds = %bb.e
  %i.n = add i64 %.sroa.04.0.i, 2                 ; 2 uses
  %2 = trunc i64 %.sroa.04.0.i to i1
  br i1 %2, label %bb.k, label %bb.h

.backedge.i:                                      ; preds = %bb.p, %bb.o, %bb.f
  %.sroa.04.0.be.i = phi i64 [ %.sroa.01.0.i.i, %bb.p ], [ %i.m, %bb.f ], [ %i.w, %bb.o ]
  %i.o = load atomic ptr, ptr %i.g acquire, align 8, !noalias !256
  br label %bb.e

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !256
  store i64 0, ptr %i.a, align 8, !noalias !256
  call void asm sideeffect inteldialect "lock not qword ptr [${0:q}]", "r,~{memory}"(ptr nonnull %i.a) #20, !noalias !256, !srcloc !257
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !256
  %i.p = load atomic i64, ptr %i.i monotonic, align 128, !noalias !256 ; 3 uses
  %i.q = lshr i64 %i.p, 1
  %i.r = icmp eq i64 %i.j, %i.q
  br i1 %i.r, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not.unshifted.i = xor i64 %i.p, %.sroa.04.0.i
  %.not.i = icmp ugt i64 %.not.unshifted.i, 63
  %i.s = zext i1 %.not.i to i64
  %spec.select.i = or disjoint i64 %i.n, %i.s
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %3 = trunc i64 %i.p to i1
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  br i1 %3, label %bb.m, label %bb.l

bb.k:                                             ; preds = %bb.i, %bb.g
  %.sroa.0.0.i = phi i64 [ %i.n, %bb.g ], [ %spec.select.i, %bb.i ] ; 2 uses
  %i.u = icmp eq ptr %.sroa.020.0.i, null
  br i1 %i.u, label %bb.o, label %bb.n

bb.l:                                             ; preds = %bb.j
  store i8 0, ptr %i.t, align 1, !alias.scope !256
  br label %_RNvMs0_NtCseSXqeRWftQm_16concurrent_queue9unboundedINtB5_9UnboundedNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableE3popCsbDLrNlwBX3H_4smol.exit

bb.m:                                             ; preds = %bb.j
  store i8 1, ptr %i.t, align 1, !alias.scope !256
  br label %_RNvMs0_NtCseSXqeRWftQm_16concurrent_queue9unboundedINtB5_9UnboundedNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableE3popCsbDLrNlwBX3H_4smol.exit

bb.n:                                             ; preds = %bb.k
  %i.v = cmpxchg weak ptr %i.e, i64 %.sroa.04.0.i, i64 %.sroa.0.0.i seq_cst acquire, align 8, !noalias !256 ; 2 uses
  %.sroa.18.0.in.i.i = extractvalue { i64, i1 } %i.v, 1
  br i1 %.sroa.18.0.in.i.i, label %bb.q, label %bb.p

bb.o:                                             ; preds = %bb.k
  call void @_RNvNtNtCsG258MDvU3F_3std6thread9functions9yield_now(), !noalias !256
  %i.w = load atomic i64, ptr %i.e acquire, align 128, !noalias !256
  br label %.backedge.i

bb.p:                                             ; preds = %bb.n
  %.sroa.01.0.i.i = extractvalue { i64, i1 } %i.v, 0
  br label %.backedge.i

bb.q:                                             ; preds = %bb.n
  %i.x = add nuw nsw i64 %i.k, 1                  ; 2 uses
  %i.y = icmp eq i64 %i.x, 31
  br i1 %i.y, label %bb.r, label %bb.v

bb.r:                                             ; preds = %bb.q
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.020.0.i, i64 496 ; 2 uses
  %i.aa = load atomic ptr, ptr %i.z acquire, align 8, !noalias !256 ; 2 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %.lr.ph.i.i, label %_RNvMs_NtCseSXqeRWftQm_16concurrent_queue9unboundedINtB4_5BlockNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableE9wait_nextCsbDLrNlwBX3H_4smol.exit.i

.lr.ph.i.i:                                       ; preds = %bb.r, %.lr.ph.i.i
  call void @_RNvNtNtCsG258MDvU3F_3std6thread9functions9yield_now(), !noalias !256
  %i.ac = load atomic ptr, ptr %i.z acquire, align 8, !noalias !256 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %.lr.ph.i.i, label %_RNvMs_NtCseSXqeRWftQm_16concurrent_queue9unboundedINtB4_5BlockNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableE9wait_nextCsbDLrNlwBX3H_4smol.exit.i

_RNvMs_NtCseSXqeRWftQm_16concurrent_queue9unboundedINtB4_5BlockNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableE9wait_nextCsbDLrNlwBX3H_4smol.exit.i: ; preds = %.lr.ph.i.i, %bb.r
  %.lcssa.i.i = phi ptr [ %i.aa, %bb.r ], [ %i.ac, %.lr.ph.i.i ] ; 2 uses
  %i.ae = and i64 %.sroa.0.0.i, -2
  %i.af = add i64 %i.ae, 2
  %i.ag = getelementptr inbounds nuw i8, ptr %.lcssa.i.i, i64 496
  %i.ah = load atomic ptr, ptr %i.ag monotonic, align 8, !noalias !256
  %i.ai = icmp ne ptr %i.ah, null
  %i.aj = zext i1 %i.ai to i64
  %spec.select44.i = or disjoint i64 %i.af, %i.aj
  store atomic ptr %.lcssa.i.i, ptr %i.g release, align 8, !noalias !256
  store atomic i64 %spec.select44.i, ptr %i.e release, align 128, !noalias !256
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %.sroa.020.0.i, i64 %i.k ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 2 uses
  %i.am = load atomic i64, ptr %i.al acquire, align 8, !noalias !256
  %4 = trunc i64 %i.am to i1
  br i1 %4, label %_RNvMNtCseSXqeRWftQm_16concurrent_queue9unboundedINtB2_4SlotNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableE10wait_writeCsbDLrNlwBX3H_4smol.exit.i, label %.lr.ph.i45.i

.lr.ph.i45.i:                                     ; preds = %_RNvMs_NtCseSXqeRWftQm_16concurrent_queue9unboundedINtB4_5BlockNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableE9wait_nextCsbDLrNlwBX3H_4smol.exit.i, %.lr.ph.i45.i
  call void @_RNvNtNtCsG258MDvU3F_3std6thread9functions9yield_now(), !noalias !256
  %i.an = load atomic i64, ptr %i.al acquire, align 8, !noalias !256
  %5 = trunc i64 %i.an to i1
  br i1 %5, label %_RNvMNtCseSXqeRWftQm_16concurrent_queue9unboundedINtB2_4SlotNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableE10wait_writeCsbDLrNlwBX3H_4smol.exit.i, label %.lr.ph.i45.i

_RNvMNtCseSXqeRWftQm_16concurrent_queue9unboundedINtB2_4SlotNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableE10wait_writeCsbDLrNlwBX3H_4smol.exit.i: ; preds = %.lr.ph.i45.i, %_RNvMs_NtCseSXqeRWftQm_16concurrent_queue9unboundedINtB4_5BlockNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableE9wait_nextCsbDLrNlwBX3H_4smol.exit.i
  %i.ao = load ptr, ptr %i.ak, align 8, !noalias !256 ; 3 uses
  br label %.lr.ph.i46.i

.lr.ph.i46.i:                                     ; preds = %bb.u, %_RNvMNtCseSXqeRWftQm_16concurrent_queue9unboundedINtB2_4SlotNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableE10wait_writeCsbDLrNlwBX3H_4smol.exit.i
  %.sroa.0.03.i.i = phi i64 [ 0, %_RNvMNtCseSXqeRWftQm_16concurrent_queue9unboundedINtB2_4SlotNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableE10wait_writeCsbDLrNlwBX3H_4smol.exit.i ], [ %i.ax, %bb.u ] ; 3 uses
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %.sroa.020.0.i, i64 %.sroa.0.03.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  %i.ar = load atomic i64, ptr %i.aq acquire, align 8, !noalias !256
  %i.as = and i64 %i.ar, 2
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %bb.s, label %.lr.ph.i46.i.1

bb.s:                                             ; preds = %.lr.ph.i46.i
  %i.au = atomicrmw or ptr %i.aq, i64 4 acq_rel, align 8, !noalias !256
  %i.av = and i64 %i.au, 2
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %_RNvMs_NtCseSXqeRWftQm_16concurrent_queue9unboundedINtB4_5BlockNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableE7destroyCsbDLrNlwBX3H_4smol.exit.i, label %.lr.ph.i46.i.1

.lr.ph.i46.i.1:                                   ; preds = %bb.s, %.lr.ph.i46.i
  %i.ax = add nuw nsw i64 %.sroa.0.03.i.i, 2      ; 2 uses
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %.sroa.020.0.i, i64 %.sroa.0.03.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24 ; 2 uses
  %i.ba = load atomic i64, ptr %i.az acquire, align 8, !noalias !256
  %i.bb = and i64 %i.ba, 2
  %i.bc = icmp eq i64 %i.bb, 0
  br i1 %i.bc, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.lr.ph.i46.i.1
  %i.bd = atomicrmw or ptr %i.az, i64 4 acq_rel, align 8, !noalias !256
  %i.be = and i64 %i.bd, 2
  %i.bf = icmp eq i64 %i.be, 0
  br i1 %i.bf, label %_RNvMs_NtCseSXqeRWftQm_16concurrent_queue9unboundedINtB4_5BlockNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableE7destroyCsbDLrNlwBX3H_4smol.exit.i, label %bb.u

bb.u:                                             ; preds = %bb.t, %.lr.ph.i46.i.1
  %exitcond.not.i.i.1 = icmp eq i64 %i.ax, 30
  br i1 %exitcond.not.i.i.1, label %_RNvMs_NtCseSXqeRWftQm_16concurrent_queue9unboundedINtB4_5BlockNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableE7destroyCsbDLrNlwBX3H_4smol.exit.sink.split.i, label %.lr.ph.i46.i

bb.v:                                             ; preds = %bb.q
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %.sroa.020.0.i, i64 %i.k ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 3 uses
  %i.bi = load atomic i64, ptr %i.bh acquire, align 8, !noalias !256
  %6 = trunc i64 %i.bi to i1
  br i1 %6, label %_RNvMNtCseSXqeRWftQm_16concurrent_queue9unboundedINtB2_4SlotNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableE10wait_writeCsbDLrNlwBX3H_4smol.exit49.i, label %.lr.ph.i48.i

.lr.ph.i48.i:                                     ; preds = %bb.v, %.lr.ph.i48.i
  call void @_RNvNtNtCsG258MDvU3F_3std6thread9functions9yield_now(), !noalias !256
  %i.bj = load atomic i64, ptr %i.bh acquire, align 8, !noalias !256
  %7 = trunc i64 %i.bj to i1
  br i1 %7, label %_RNvMNtCseSXqeRWftQm_16concurrent_queue9unboundedINtB2_4SlotNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableE10wait_writeCsbDLrNlwBX3H_4smol.exit49.i, label %.lr.ph.i48.i

_RNvMNtCseSXqeRWftQm_16concurrent_queue9unboundedINtB2_4SlotNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableE10wait_writeCsbDLrNlwBX3H_4smol.exit49.i: ; preds = %.lr.ph.i48.i, %bb.v
  %i.bk = load ptr, ptr %i.bg, align 8, !noalias !256 ; 4 uses
  %i.bl = atomicrmw or ptr %i.bh, i64 2 acq_rel, align 8, !noalias !256
  %i.bm = and i64 %i.bl, 4
  %i.bn = icmp eq i64 %i.bm, 0
  br i1 %i.bn, label %_RNvMs_NtCseSXqeRWftQm_16concurrent_queue9unboundedINtB4_5BlockNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableE7destroyCsbDLrNlwBX3H_4smol.exit.i, label %bb.w

_RNvMs_NtCseSXqeRWftQm_16concurrent_queue9unboundedINtB4_5BlockNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableE7destroyCsbDLrNlwBX3H_4smol.exit.sink.split.i: ; preds = %bb.y, %bb.u, %bb.w
  %.ph.i = phi ptr [ %i.bk, %bb.w ], [ %i.ao, %bb.u ], [ %i.bk, %bb.y ]
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.020.0.i, i64 noundef 504, i64 noundef 8) #20, !noalias !256
  br label %_RNvMs_NtCseSXqeRWftQm_16concurrent_queue9unboundedINtB4_5BlockNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableE7destroyCsbDLrNlwBX3H_4smol.exit.i

_RNvMs_NtCseSXqeRWftQm_16concurrent_queue9unboundedINtB4_5BlockNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableE7destroyCsbDLrNlwBX3H_4smol.exit.i: ; preds = %bb.x, %bb.s, %bb.t, %_RNvMs_NtCseSXqeRWftQm_16concurrent_queue9unboundedINtB4_5BlockNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableE7destroyCsbDLrNlwBX3H_4smol.exit.sink.split.i, %_RNvMNtCseSXqeRWftQm_16concurrent_queue9unboundedINtB2_4SlotNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableE10wait_writeCsbDLrNlwBX3H_4smol.exit49.i
  %i.bo = phi ptr [ %.ph.i, %_RNvMs_NtCseSXqeRWftQm_16concurrent_queue9unboundedINtB4_5BlockNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableE7destroyCsbDLrNlwBX3H_4smol.exit.sink.split.i ], [ %i.bk, %_RNvMNtCseSXqeRWftQm_16concurrent_queue9unboundedINtB2_4SlotNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableE10wait_writeCsbDLrNlwBX3H_4smol.exit49.i ], [ %i.ao, %bb.s ], [ %i.ao, %bb.t ], [ %i.bk, %bb.x ]
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bo, ptr %i.bp, align 8, !alias.scope !256
  br label %_RNvMs0_NtCseSXqeRWftQm_16concurrent_queue9unboundedINtB5_9UnboundedNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableE3popCsbDLrNlwBX3H_4smol.exit

bb.w:                                             ; preds = %_RNvMNtCseSXqeRWftQm_16concurrent_queue9unboundedINtB2_4SlotNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableE10wait_writeCsbDLrNlwBX3H_4smol.exit49.i
  %i.bq = icmp samesign ult i64 %i.k, 29
  br i1 %i.bq, label %.lr.ph.i51.i, label %_RNvMs_NtCseSXqeRWftQm_16concurrent_queue9unboundedINtB4_5BlockNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableE7destroyCsbDLrNlwBX3H_4smol.exit.sink.split.i

.lr.ph.i51.i:                                     ; preds = %bb.w, %bb.y
  %.sroa.0.03.i52.i = phi i64 [ %i.br, %bb.y ], [ %i.x, %bb.w ] ; 2 uses
  %i.br = add nuw nsw i64 %.sroa.0.03.i52.i, 1    ; 2 uses
  %i.bs = getelementptr inbounds nuw [16 x i8], ptr %.sroa.020.0.i, i64 %.sroa.0.03.i52.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8 ; 2 uses
  %i.bu = load atomic i64, ptr %i.bt acquire, align 8, !noalias !256
  %i.bv = and i64 %i.bu, 2
  %i.bw = icmp eq i64 %i.bv, 0
  br i1 %i.bw, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.lr.ph.i51.i
  %i.bx = atomicrmw or ptr %i.bt, i64 4 acq_rel, align 8, !noalias !256
  %i.by = and i64 %i.bx, 2
  %i.bz = icmp eq i64 %i.by, 0
  br i1 %i.bz, label %_RNvMs_NtCseSXqeRWftQm_16concurrent_queue9unboundedINtB4_5BlockNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableE7destroyCsbDLrNlwBX3H_4smol.exit.i, label %bb.y

bb.y:                                             ; preds = %bb.x, %.lr.ph.i51.i
  %exitcond.not.i53.i = icmp eq i64 %i.br, 30
  br i1 %exitcond.not.i53.i, label %_RNvMs_NtCseSXqeRWftQm_16concurrent_queue9unboundedINtB4_5BlockNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableE7destroyCsbDLrNlwBX3H_4smol.exit.sink.split.i, label %.lr.ph.i51.i

_RNvMs0_NtCseSXqeRWftQm_16concurrent_queue9unboundedINtB5_9UnboundedNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableE3popCsbDLrNlwBX3H_4smol.exit: ; preds = %bb.l, %bb.m, %_RNvMs_NtCseSXqeRWftQm_16concurrent_queue9unboundedINtB4_5BlockNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableE7destroyCsbDLrNlwBX3H_4smol.exit.i
  %.sink.i = phi i8 [ 1, %bb.l ], [ 1, %bb.m ], [ 0, %_RNvMs_NtCseSXqeRWftQm_16concurrent_queue9unboundedINtB4_5BlockNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableE7destroyCsbDLrNlwBX3H_4smol.exit.i ]
  store i8 %.sink.i, ptr %0, align 8, !alias.scope !256
  br label %bb.z

bb.z:                                             ; preds = %_RNvMs0_NtCseSXqeRWftQm_16concurrent_queue9unboundedINtB5_9UnboundedNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableE3popCsbDLrNlwBX3H_4smol.exit, %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvMs2_CseSXqeRWftQm_16concurrent_queueINtB5_15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableE4pushCsbDLrNlwBX3H_4smol(ptr noundef nonnull align 128 %0, ptr noundef nonnull %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i64, ptr %0, align 128, !range !13, !noundef !5
  switch i64 %i.b, label %default.unreachable24 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
  ]

default.unreachable24:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = tail call { i64, ptr } @_RNvMNtCseSXqeRWftQm_16concurrent_queue6singleINtB2_6SingleNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableE4pushCsbDLrNlwBX3H_4smol(ptr noundef nonnull align 8 %i.c, ptr noundef nonnull %1)
  br label %bb.ae

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.f = tail call { i64, ptr } @_RINvMNtCseSXqeRWftQm_16concurrent_queue7boundedINtB3_7BoundedNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableE12push_or_elseNCNvB2_4push0ECsbDLrNlwBX3H_4smol(ptr noundef nonnull align 128 %i.e, ptr noundef nonnull %1, ptr noundef nonnull align 128 %i.e)
  br label %bb.ae

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 5 uses
  %i.h = load atomic i64, ptr %i.g acquire, align 128 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 4 uses
  %i.j = load atomic ptr, ptr %i.i acquire, align 8
  %2 = trunc i64 %i.h to i1
  br i1 %2, label %_RNvMs0_NtCseSXqeRWftQm_16concurrent_queue9unboundedINtB5_9UnboundedNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableE4pushCsbDLrNlwBX3H_4smol.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 136
  br label %bb.e

bb.e:                                             ; preds = %.backedge.i, %.lr.ph.i
  %.sroa.01.084.i = phi i64 [ %i.h, %.lr.ph.i ], [ %.sroa.01.0.be.i, %.backedge.i ] ; 3 uses
  %.sroa.09.083.i = phi ptr [ %i.j, %.lr.ph.i ], [ %i.p, %.backedge.i ] ; 2 uses
  %.sroa.0.04182.i = phi ptr [ null, %.lr.ph.i ], [ %.sroa.0.041.be.i, %.backedge.i ] ; 4 uses
  %i.l = lshr exact i64 %.sroa.01.084.i, 1
  %i.m = and i64 %i.l, 31                         ; 3 uses
  %i.n = icmp eq i64 %i.m, 31
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtNtCsG258MDvU3F_3std6thread9functions9yield_now()
          to label %bb.i unwind label %.loopexit.i

bb.g:                                             ; preds = %bb.e
  %.not71.i = icmp eq i64 %i.m, 30                ; 2 uses
  %.not.i = icmp eq ptr %.sroa.0.04182.i, null
  %or.cond.i = select i1 %.not71.i, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %bb.k, label %bb.j

bb.h:                                             ; preds = %bb.x
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

bb.i:                                             ; preds = %bb.f
  %i.o = load atomic i64, ptr %i.g acquire, align 128
  br label %.backedge.i

.backedge.i:                                      ; preds = %bb.u, %bb.s, %bb.i
  %.sroa.0.041.be.i = phi ptr [ %.sroa.0.3.i, %bb.u ], [ %.sroa.0.04182.i, %bb.i ], [ %_RNvCsbkii2mvYdKU_7___rustc19___rust_alloc_zeroed.i, %bb.s ] ; 2 uses
  %.sroa.01.0.be.i = phi i64 [ %.sroa.01.0.i.i, %bb.u ], [ %i.o, %bb.i ], [ %i.w, %bb.s ] ; 2 uses
  %i.p = load atomic ptr, ptr %i.i acquire, align 8
  %3 = trunc i64 %.sroa.01.0.be.i to i1
  br i1 %3, label %.thread57.i, label %bb.e

bb.j:                                             ; preds = %bb.k, %bb.g
  %.sroa.0.3.i = phi ptr [ %.sroa.0.04182.i, %bb.g ], [ %_RNvCsbkii2mvYdKU_7___rustc19___rust_alloc_zeroed100.i, %bb.k ] ; 8 uses
  %i.q = icmp eq ptr %.sroa.09.083.i, null
  br i1 %i.q, label %bb.m, label %bb.t

bb.k:                                             ; preds = %bb.g
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20
  %_RNvCsbkii2mvYdKU_7___rustc19___rust_alloc_zeroed100.i = tail call align 8 dereferenceable_or_null(504) ptr @_RNvCsbkii2mvYdKU_7___rustc19___rust_alloc_zeroed(i64 504, i64 8) ; 2 uses
  %i.r = icmp eq ptr %_RNvCsbkii2mvYdKU_7___rustc19___rust_alloc_zeroed100.i, null
  br i1 %i.r, label %bb.l, label %bb.j, !prof !12

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 504) #25
          to label %.noexc.i unwind label %.loopexit.split-lp.i

.noexc.i:                                         ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.j
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20
  %_RNvCsbkii2mvYdKU_7___rustc19___rust_alloc_zeroed.i = tail call align 8 dereferenceable_or_null(504) ptr @_RNvCsbkii2mvYdKU_7___rustc19___rust_alloc_zeroed(i64 504, i64 8) ; 5 uses
  %i.s = icmp eq ptr %_RNvCsbkii2mvYdKU_7___rustc19___rust_alloc_zeroed.i, null
  br i1 %i.s, label %bb.n, label %bb.o, !prof !12

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 504) #25
          to label %.noexc29.i unwind label %.loopexit.split-lp.i

.noexc29.i:                                       ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.t = cmpxchg ptr %i.i, ptr null, ptr %_RNvCsbkii2mvYdKU_7___rustc19___rust_alloc_zeroed.i release monotonic, align 8
  %i.u = extractvalue { ptr, i1 } %i.t, 1
  br i1 %i.u, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.v = icmp eq ptr %.sroa.0.3.i, null
  br i1 %i.v, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.3.i, i64 noundef 504, i64 noundef 8) #20
  br label %bb.s

bb.r:                                             ; preds = %bb.o
  store atomic ptr %_RNvCsbkii2mvYdKU_7___rustc19___rust_alloc_zeroed.i, ptr %i.k release, align 8
  br label %bb.t

bb.s:                                             ; preds = %bb.q, %bb.p
  %i.w = load atomic i64, ptr %i.g acquire, align 128
  br label %.backedge.i

bb.t:                                             ; preds = %bb.r, %bb.j
  %.sroa.09.2.i = phi ptr [ %.sroa.09.083.i, %bb.j ], [ %_RNvCsbkii2mvYdKU_7___rustc19___rust_alloc_zeroed.i, %bb.r ] ; 4 uses
  %i.x = add i64 %.sroa.01.084.i, 2
  %i.y = cmpxchg weak ptr %i.g, i64 %.sroa.01.084.i, i64 %i.x seq_cst acquire, align 8 ; 2 uses
  %.sroa.18.0.in.i.i = extractvalue { i64, i1 } %i.y, 1
  br i1 %.sroa.18.0.in.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.sroa.01.0.i.i = extractvalue { i64, i1 } %i.y, 0
  br label %.backedge.i

bb.v:                                             ; preds = %bb.t
  br i1 %.not71.i, label %bb.w, label %.thread64.i

.thread64.i:                                      ; preds = %bb.v
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %.sroa.09.2.i, i64 %i.m ; 2 uses
  store ptr %1, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = atomicrmw or ptr %i.aa, i64 1 release, align 8 ; 0 uses
  br label %.thread57.i

bb.w:                                             ; preds = %bb.v
  %.not21.i = icmp eq ptr %.sroa.0.3.i, null
  br i1 %.not21.i, label %bb.x, label %bb.z, !prof !12

bb.x:                                             ; preds = %bb.w
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #25
          to label %bb.y unwind label %bb.h

bb.y:                                             ; preds = %bb.x
  unreachable

bb.z:                                             ; preds = %bb.w
  store atomic ptr %.sroa.0.3.i, ptr %i.i release, align 8
  %i.ac = atomicrmw add ptr %i.g, i64 2 release, align 8 ; 0 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.09.2.i, i64 496
  store atomic ptr %.sroa.0.3.i, ptr %i.ad release, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.09.2.i, i64 480
  store ptr %1, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.09.2.i, i64 488
  %i.ag = atomicrmw or ptr %i.af, i64 1 release, align 8 ; 0 uses
  br label %_RNvMs0_NtCseSXqeRWftQm_16concurrent_queue9unboundedINtB5_9UnboundedNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableE4pushCsbDLrNlwBX3H_4smol.exit

.loopexit.i:                                      ; preds = %bb.f
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

.loopexit.split-lp.i:                             ; preds = %bb.n, %bb.l
  %.sroa.0.1.ph.ph.i = phi ptr [ null, %bb.l ], [ %.sroa.0.3.i, %bb.n ]
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.aa:                                            ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %.sroa.0.1.ph.i = phi ptr [ %.sroa.0.04182.i, %.loopexit.i ], [ %.sroa.0.1.ph.ph.i, %.loopexit.split-lp.i ] ; 2 uses
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ] ; 2 uses
  %i.ah = icmp eq ptr %.sroa.0.1.ph.i, null
  br i1 %i.ah, label %.thread.i, label %.thread65.i

.thread65.i:                                      ; preds = %bb.aa
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.1.ph.i, i64 noundef 504, i64 noundef 8) #20
  br label %.thread.i

bb.ab:                                            ; preds = %.thread.i
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

.thread57.i:                                      ; preds = %.backedge.i, %.thread64.i
  %.sroa.0.063.i = phi i64 [ 2, %.thread64.i ], [ 1, %.backedge.i ] ; 2 uses
  %.sroa.0.461.i = phi ptr [ %.sroa.0.3.i, %.thread64.i ], [ %.sroa.0.041.be.i, %.backedge.i ] ; 2 uses
  %i.aj = icmp eq ptr %.sroa.0.461.i, null
  br i1 %i.aj, label %_RNvMs0_NtCseSXqeRWftQm_16concurrent_queue9unboundedINtB5_9UnboundedNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableE4pushCsbDLrNlwBX3H_4smol.exit, label %bb.ac

bb.ac:                                            ; preds = %.thread57.i
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.461.i, i64 noundef 504, i64 noundef 8) #20
  br label %_RNvMs0_NtCseSXqeRWftQm_16concurrent_queue9unboundedINtB5_9UnboundedNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableE4pushCsbDLrNlwBX3H_4smol.exit

bb.ad:                                            ; preds = %.thread.i
  resume { ptr, i32 } %.pn49.i

.thread.i:                                        ; preds = %.thread65.i, %bb.aa, %bb.h
  %.pn49.i = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i, %bb.h ], [ %lpad.phi.i, %bb.aa ], [ %lpad.phi.i, %.thread65.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableECsbDLrNlwBX3H_4smol(ptr noalias nofree noundef align 8 dereferenceable(8) %i.a) #22
          to label %bb.ad unwind label %bb.ab

_RNvMs0_NtCseSXqeRWftQm_16concurrent_queue9unboundedINtB5_9UnboundedNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableE4pushCsbDLrNlwBX3H_4smol.exit: ; preds = %bb.d, %bb.z, %.thread57.i, %bb.ac
  %.sroa.0.062.i = phi i64 [ 2, %bb.z ], [ %.sroa.0.063.i, %.thread57.i ], [ %.sroa.0.063.i, %bb.ac ], [ 1, %bb.d ]
  %i.ak = insertvalue { i64, ptr } poison, i64 %.sroa.0.062.i, 0
  %i.al = insertvalue { i64, ptr } %i.ak, ptr %1, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.ae

bb.ae:                                            ; preds = %_RNvMs0_NtCseSXqeRWftQm_16concurrent_queue9unboundedINtB5_9UnboundedNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableE4pushCsbDLrNlwBX3H_4smol.exit, %bb.c, %bb.b
  %.pn = phi { i64, ptr } [ %i.d, %bb.b ], [ %i.f, %bb.c ], [ %i.al, %_RNvMs0_NtCseSXqeRWftQm_16concurrent_queue9unboundedINtB5_9UnboundedNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableE4pushCsbDLrNlwBX3H_4smol.exit ]
  ret { i64, ptr } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs9_NtCsfO0Hesl1pIe_10async_task8runnableNtB5_8Runnable3runCsbDLrNlwBX3H_4smol(ptr noundef nonnull %0) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !11, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull %0)
  ret i1 %i.d
}

; Function Attrs: mustprogress norecurse nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMsd_NtNtNtCsG258MDvU3F_3std4sync6poison6rwlockINtB5_15RwLockReadGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1d_4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEE3newCsbDLrNlwBX3H_4smol(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noundef nonnull align 8 %1) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load atomic i8, ptr %i.a monotonic, align 8
  %.not = icmp ne i8 %i.b, 0
  %spec.select.i = zext i1 %.not to i64
  %.sink.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink.i, ptr %i.c, align 8, !alias.scope !260
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.d, align 8, !alias.scope !260
  store i64 %spec.select.i, ptr %0, align 8, !alias.scope !260
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXNvNtNtCskKLDkoKarTP_4core2io5write17default_write_fmtINtB2_7AdapterNtNtNtNtCsG258MDvU3F_3std3sys5stdio4unix6StderrENtNtB8_3fmt5Write9write_strCsbDLrNlwBX3H_4smol(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.c = tail call noundef ptr @_RNvYNtNtNtNtCsG258MDvU3F_3std3sys5stdio4unix6StderrNtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) ; 3 uses
  %.not = icmp ne ptr %i.c, null                  ; 2 uses
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.val = load ptr, ptr %i.d, align 8, !noundef !5 ; 4 uses
  %i.e = icmp eq ptr %.val, null
  br i1 %i.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsbDLrNlwBX3H_4smol.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.f = ptrtoint ptr %.val to i64                ; 2 uses
  %i.g = and i64 %i.f, 3
  switch i64 %i.g, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbDLrNlwBX3H_4smol.exit.i
end_hunk_0
