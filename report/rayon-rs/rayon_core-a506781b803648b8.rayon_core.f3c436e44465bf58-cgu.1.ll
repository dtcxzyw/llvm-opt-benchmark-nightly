Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rayon-rs/original/rayon_core-a506781b803648b8.rayon_core.f3c436e44465bf58-cgu.1?download=true
inline.NumInlined: 242
inline.NumDeleted: 115
begin_hunk_0_@_RNvMs8_NtCskVyUMSjkkSy_10rayon_core8registryNtB5_12WorkerThread15wait_until_cold:bb.a
.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %._crit_edge
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit17, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit21, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke void @_RNvXNtCskVyUMSjkkSy_10rayon_core6unwindNtB2_12AbortIfPanicNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskVyUMSjkkSy_10rayon_core6unwind12AbortIfPanicEBF_.exit unwind label %bb.r

bb.b:                                             ; preds = %.lr.ph30, %bb.g
  %i.n = invoke { ptr, ptr } @_RNvMs4_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE3popBZ_(ptr noundef nonnull align 8 %i.f)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc:                                           ; preds = %bb.b
  %i.o = extractvalue { ptr, ptr } %i.n, 0
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %.preheader.i, label %_RNvMs8_NtCskVyUMSjkkSy_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit

.preheader.i:                                     ; preds = %.noexc, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMs8_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_7StealerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE5stealB10_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g)
          to label %.noexc10 unwind label %.loopexit.split-lp.loopexit

.noexc10:                                         ; preds = %.preheader.i
  %i.p = load i64, ptr %i.b, align 8, !range !14, !noundef !5
  switch i64 %i.p, label %default.unreachable [
    i64 0, label %.loopexit.i
    i64 1, label %bb.c
    i64 2, label %bb.d
  ]

default.unreachable:                              ; preds = %.noexc10
  unreachable

bb.c:                                             ; preds = %.noexc10
  %i.q = load ptr, ptr %i.h, align 8, !nonnull !5, !noundef !5
  %i.r = load ptr, ptr %i.i, align 8, !noundef !5
  br label %.loopexit.i

bb.d:                                             ; preds = %.noexc10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.preheader.i

.loopexit.i:                                      ; preds = %.noexc10, %bb.c
  %.sroa.5.0.i = phi ptr [ %i.r, %bb.c ], [ undef, %.noexc10 ]
  %.sroa.0.0.i = phi ptr [ %i.q, %bb.c ], [ null, %.noexc10 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.s = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i, 0
  %i.t = insertvalue { ptr, ptr } %i.s, ptr %.sroa.5.0.i, 1
  br label %_RNvMs8_NtCskVyUMSjkkSy_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit

.loopexit20:                                      ; preds = %bb.g, %bb.a, %bb.q
  ret void

_RNvMs8_NtCskVyUMSjkkSy_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit: ; preds = %.loopexit.i, %.noexc
  %.merged.i = phi { ptr, ptr } [ %i.n, %.noexc ], [ %i.t, %.loopexit.i ] ; 2 uses
  %i.u = extractvalue { ptr, ptr } %.merged.i, 0  ; 2 uses
  %.not = icmp eq ptr %i.u, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_RNvMs8_NtCskVyUMSjkkSy_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit
  %i.v = extractvalue { ptr, ptr } %.merged.i, 1
  invoke void %i.u(ptr noundef %i.v)
          to label %bb.g unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

bb.f:                                             ; preds = %_RNvMs8_NtCskVyUMSjkkSy_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.w = load ptr, ptr %i.j, align 16, !nonnull !5, !noundef !5
  %i.x = load i64, ptr %i.k, align 128, !noundef !5
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 496
  %i.z = atomicrmw add ptr %i.y, i64 65536 seq_cst, align 8 ; 0 uses
  store i64 %i.x, ptr %i.c, align 8
  store i32 0, ptr %i.l, align 8
  store i64 -1, ptr %i.m, align 8
  %i.aa = load atomic i64, ptr %1 acquire, align 8
  %i.ab = icmp eq i64 %i.aa, 3
  br i1 %i.ab, label %._crit_edge, label %.lr.ph

bb.g:                                             ; preds = %bb.e, %bb.p
  %i.ac = load atomic i64, ptr %1 acquire, align 8
  %i.ad = icmp eq i64 %i.ac, 3
  br i1 %i.ad, label %.loopexit20, label %bb.b

.lr.ph:                                           ; preds = %bb.f, %_RINvMNtCskVyUMSjkkSy_10rayon_core5sleepNtB3_5Sleep13no_work_foundNCNvMs8_NtB5_8registryNtB19_12WorkerThread15wait_until_cold0EB5_.exit
  %i.ae = invoke fastcc { ptr, ptr } @_RNvMs8_NtCskVyUMSjkkSy_10rayon_core8registryNtB5_12WorkerThread9find_work(ptr noundef nonnull align 128 %0)
          to label %bb.h unwind label %.loopexit  ; 2 uses

bb.h:                                             ; preds = %.lr.ph
  %i.af = extractvalue { ptr, ptr } %i.ae, 0      ; 2 uses
  %.not9 = icmp eq ptr %i.af, null
  %i.ag = load ptr, ptr %i.j, align 16, !nonnull !5, !noundef !5 ; 3 uses
  br i1 %.not9, label %bb.i, label %bb.n

bb.i:                                             ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 472 ; 2 uses
  %i.ai = load i32, ptr %i.l, align 8, !alias.scope !363, !noundef !5 ; 3 uses
  %i.aj = icmp ult i32 %i.ai, 32
  br i1 %i.aj, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ak = icmp eq i32 %i.ai, 32
  br i1 %i.ak, label %bb.l, label %bb.m, !prof !7

bb.k:                                             ; preds = %bb.i
  invoke void @_RNvNtNtCsaL1QbXo9JQH_3std6thread9functions9yield_now()
          to label %.noexc13 unwind label %.loopexit

.noexc13:                                         ; preds = %bb.k
  %i.al = add nuw nsw i32 %i.ai, 1
  store i32 %i.al, ptr %i.l, align 8, !alias.scope !363
  br label %_RINvMNtCskVyUMSjkkSy_10rayon_core5sleepNtB3_5Sleep13no_work_foundNCNvMs8_NtB5_8registryNtB19_12WorkerThread15wait_until_cold0EB5_.exit

bb.l:                                             ; preds = %bb.j
  %i.am = invoke noundef i64 @_RNvMNtCskVyUMSjkkSy_10rayon_core5sleepNtB2_5Sleep15announce_sleepy(ptr noundef nonnull align 8 %i.ah)
          to label %.noexc14 unwind label %.loopexit

.noexc14:                                         ; preds = %bb.l
  store i64 %i.am, ptr %i.m, align 8, !alias.scope !363
  store i32 33, ptr %i.l, align 8, !alias.scope !363
  invoke void @_RNvNtNtCsaL1QbXo9JQH_3std6thread9functions9yield_now()
          to label %_RINvMNtCskVyUMSjkkSy_10rayon_core5sleepNtB3_5Sleep13no_work_foundNCNvMs8_NtB5_8registryNtB19_12WorkerThread15wait_until_cold0EB5_.exit unwind label %.loopexit

bb.m:                                             ; preds = %bb.j
  invoke void @_RINvMNtCskVyUMSjkkSy_10rayon_core5sleepNtB3_5Sleep5sleepNCNvMs8_NtB5_8registryNtB10_12WorkerThread15wait_until_cold0EB5_(ptr noundef nonnull align 8 %i.ah, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 %1, ptr noundef nonnull align 128 %0)
          to label %_RINvMNtCskVyUMSjkkSy_10rayon_core5sleepNtB3_5Sleep13no_work_foundNCNvMs8_NtB5_8registryNtB19_12WorkerThread15wait_until_cold0EB5_.exit unwind label %.loopexit

_RINvMNtCskVyUMSjkkSy_10rayon_core5sleepNtB3_5Sleep13no_work_foundNCNvMs8_NtB5_8registryNtB19_12WorkerThread15wait_until_cold0EB5_.exit: ; preds = %bb.m, %.noexc14, %.noexc13
  %i.an = load atomic i64, ptr %1 acquire, align 8
  %i.ao = icmp eq i64 %i.an, 3
  br i1 %i.ao, label %._crit_edge, label %.lr.ph

bb.n:                                             ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ag, i64 496
  %i.aq = atomicrmw sub ptr %i.ap, i64 65536 seq_cst, align 8
  %i.ar = and i64 %i.aq, 65535
  %..i12 = call noundef i64 @llvm.umin.i64(i64 %i.ar, i64 2)
  %i.as = getelementptr inbounds nuw i8, ptr %i.ag, i64 472
  %i.at = trunc nuw nsw i64 %..i12 to i32
  invoke void @_RNvMNtCskVyUMSjkkSy_10rayon_core5sleepNtB2_5Sleep16wake_any_threads(ptr noundef nonnull align 8 %i.as, i32 noundef %i.at)
          to label %bb.o unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

bb.o:                                             ; preds = %bb.n
  %i.au = extractvalue { ptr, ptr } %i.ae, 1
  invoke void %i.af(ptr noundef %i.au)
          to label %bb.p unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.g

._crit_edge:                                      ; preds = %bb.f, %_RINvMNtCskVyUMSjkkSy_10rayon_core5sleepNtB3_5Sleep13no_work_foundNCNvMs8_NtB5_8registryNtB19_12WorkerThread15wait_until_cold0EB5_.exit
  %i.av = load ptr, ptr %i.j, align 16, !nonnull !5, !noundef !5 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 496
  %i.ax = atomicrmw sub ptr %i.aw, i64 65536 seq_cst, align 8
  %i.ay = and i64 %i.ax, 65535
  %..i = call noundef i64 @llvm.umin.i64(i64 %i.ay, i64 2)
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 472
  %i.ba = trunc nuw nsw i64 %..i to i32
  invoke void @_RNvMNtCskVyUMSjkkSy_10rayon_core5sleepNtB2_5Sleep16wake_any_threads(ptr noundef nonnull align 8 %i.az, i32 noundef %i.ba)
          to label %bb.q unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.q:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.loopexit20

bb.r:                                             ; preds = %.loopexit.split-lp
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskVyUMSjkkSy_10rayon_core6unwind12AbortIfPanicEBF_.exit: ; preds = %.loopexit.split-lp
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs8_NtCskVyUMSjkkSy_10rayon_core8registryNtB5_12WorkerThread16has_injected_job(ptr noundef nonnull align 128 captures(address, read_provenance) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.b = tail call noundef zeroext i1 @_RNvMs8_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_7StealerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE8is_emptyB10_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a)
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.d = load ptr, ptr %i.c, align 16, !nonnull !5, !noundef !5
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  %i.f = tail call noundef zeroext i1 @_RNvMsg_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_8InjectorNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE8is_emptyB11_(ptr noundef nonnull align 128 %i.e)
  %i.g = xor i1 %i.f, true
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i1 [ %i.g, %bb.b ], [ true, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { ptr, ptr } @_RNvMs8_NtCskVyUMSjkkSy_10rayon_core8registryNtB5_12WorkerThread9find_work(ptr noundef nonnull align 128 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [56 x i8], align 8                ; 10 uses
  %i.d = alloca [1 x i8], align 1                 ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.g = tail call { ptr, ptr } @_RNvMs4_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE3popBZ_(ptr noundef nonnull align 8 %i.f) ; 2 uses
  %i.h = extractvalue { ptr, ptr } %i.g, 0
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %.preheader.i, label %_RNvMs8_NtCskVyUMSjkkSy_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit

.preheader.i:                                     ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 312
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.preheader.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RNvMs8_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_7StealerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE5stealB10_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.i)
  %i.j = load i64, ptr %i.e, align 8, !range !14, !noundef !5
  switch i64 %i.j, label %.unreachabledefault [
    i64 0, label %.loopexit.i
    i64 1, label %bb.c
    i64 2, label %bb.d
  ]

.unreachabledefault:                              ; preds = %bb.b
  unreachable

default.unreachable:                              ; preds = %bb.h
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !5, !noundef !5
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !noundef !5
  br label %.loopexit.i

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.b

.loopexit.i:                                      ; preds = %bb.b, %bb.c
  %.sroa.5.0.i = phi ptr [ %i.n, %bb.c ], [ undef, %bb.b ]
  %.sroa.0.0.i = phi ptr [ %i.l, %bb.c ], [ null, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.o = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i, 0
  %i.p = insertvalue { ptr, ptr } %i.o, ptr %.sroa.5.0.i, 1
  br label %_RNvMs8_NtCskVyUMSjkkSy_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit

_RNvMs8_NtCskVyUMSjkkSy_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit: ; preds = %bb.a, %.loopexit.i
  %.merged.i = phi { ptr, ptr } [ %i.g, %bb.a ], [ %i.p, %.loopexit.i ] ; 2 uses
  %i.q = extractvalue { ptr, ptr } %.merged.i, 0
  %.not.i1 = icmp eq ptr %i.q, null
  br i1 %.not.i1, label %bb.e, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE7or_elseNCNvMs8_NtBM_8registryNtB1E_12WorkerThread9find_works_0EBM_.exit

bb.e:                                             ; preds = %_RNvMs8_NtCskVyUMSjkkSy_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit
  %i.r = getelementptr i8, ptr %0, i64 272        ; 2 uses
  %1 = load ptr, ptr %i.r, align 16, !nonnull !5, !noundef !5 ; 3 uses
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 512
  %i.s = load ptr, ptr %2, align 8, !nonnull !5, !noundef !5
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 520
  %i.u = load i64, ptr %i.t, align 8, !noundef !5 ; 4 uses
  %i.v = icmp ult i64 %i.u, 2
  br i1 %i.v, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE7or_elseNCNvMs8_NtBM_8registryNtB1E_12WorkerThread9find_work0EBM_.exit.thread, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.415.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.516.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.preheader.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 0, ptr %i.d, align 1
  %i.z = load i64, ptr %i.w, align 8, !noundef !5 ; 2 uses
  %i.aa = lshr i64 %i.z, 12
  %i.ab = xor i64 %i.aa, %i.z                     ; 2 uses
  %i.ac = shl i64 %i.ab, 25
  %i.ad = xor i64 %i.ac, %i.ab                    ; 2 uses
  %i.ae = lshr i64 %i.ad, 27
  %i.af = xor i64 %i.ae, %i.ad                    ; 2 uses
  store i64 %i.af, ptr %i.w, align 8
  %i.ag = mul i64 %i.af, 2685821657736338717
  %i.ah = urem i64 %i.ag, %i.u                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 1, ptr %i.c, align 8
  store i64 %i.ah, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8
  store i64 %i.u, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8
  store i64 0, ptr %.sroa.7.0..sroa_idx.i.i.i, align 8
  store i64 %i.ah, ptr %.sroa.8.0..sroa_idx.i.i.i, align 8
  store ptr %0, ptr %i.x, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.x, ptr %i.b, align 8
  store ptr %i.s, ptr %i.y, align 8
  store i64 %i.u, ptr %.sroa.415.0..sroa_idx.i.i.i, align 8
  store ptr %i.d, ptr %.sroa.516.0..sroa_idx.i.i.i, align 8
  %i.ai = call { ptr, ptr } @_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB5_5ChainINtNtNtBb_3ops5range5RangejEB10_ENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNtB7_6filter15filter_try_foldjuINtNtB15_12control_flow11ControlFlowNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefENCNvMs8_NtB3t_8registryNtB4d_12WorkerThread5steal0NCINvNvB1x_8find_map5checkjB3p_NCB47_s_0E0E0B2P_EB3t_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b) ; 2 uses
  %i.aj = extractvalue { ptr, ptr } %i.ai, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not.i.i.i = icmp eq ptr %i.aj, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br i1 %.not.i.i.i, label %bb.g, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE7or_elseNCNvMs8_NtBM_8registryNtB1E_12WorkerThread9find_work0EBM_.exit

bb.g:                                             ; preds = %bb.f
  %i.ak = load i8, ptr %i.d, align 1, !range !4, !noundef !5
  %i.al = trunc nuw i8 %i.ak to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %i.al, label %bb.f, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE7or_elseNCNvMs8_NtBM_8registryNtB1E_12WorkerThread9find_work0EBM_.exit.thread19

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE7or_elseNCNvMs8_NtBM_8registryNtB1E_12WorkerThread9find_work0EBM_.exit.thread19: ; preds = %bb.g
  %.val.i.pre = load ptr, ptr %i.r, align 16
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE7or_elseNCNvMs8_NtBM_8registryNtB1E_12WorkerThread9find_work0EBM_.exit.thread

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE7or_elseNCNvMs8_NtBM_8registryNtB1E_12WorkerThread9find_work0EBM_.exit: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE7or_elseNCNvMs8_NtBM_8registryNtB1E_12WorkerThread9find_works_0EBM_.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE7or_elseNCNvMs8_NtBM_8registryNtB1E_12WorkerThread9find_work0EBM_.exit.thread: ; preds = %bb.e, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE7or_elseNCNvMs8_NtBM_8registryNtB1E_12WorkerThread9find_work0EBM_.exit.thread19
  %.val.i = phi ptr [ %1, %bb.e ], [ %.val.i.pre, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE7or_elseNCNvMs8_NtBM_8registryNtB1E_12WorkerThread9find_work0EBM_.exit.thread19 ]
  %i.am = getelementptr inbounds nuw i8, ptr %.val.i, i64 128
  br label %bb.h

bb.h:                                             ; preds = %bb.j, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE7or_elseNCNvMs8_NtBM_8registryNtB1E_12WorkerThread9find_work0EBM_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsg_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_8InjectorNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE5stealB11_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull align 128 %i.am)
  %i.an = load i64, ptr %i.a, align 8, !range !14, !noundef !5
  switch i64 %i.an, label %default.unreachable [
    i64 0, label %_RNCNvMs8_NtCskVyUMSjkkSy_10rayon_core8registryNtB7_12WorkerThread9find_works_0B9_.exit.i
    i64 1, label %bb.i
    i64 2, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !nonnull !5, !noundef !5
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !noundef !5
  br label %_RNCNvMs8_NtCskVyUMSjkkSy_10rayon_core8registryNtB7_12WorkerThread9find_works_0B9_.exit.i

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.h

_RNCNvMs8_NtCskVyUMSjkkSy_10rayon_core8registryNtB7_12WorkerThread9find_works_0B9_.exit.i: ; preds = %bb.h, %bb.i
  %.sroa.3.0.i.i.i = phi ptr [ %i.ar, %bb.i ], [ undef, %bb.h ]
  %.sroa.0.0.i.i.i = phi ptr [ %i.ap, %bb.i ], [ null, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.as = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i.i.i, 0
  %i.at = insertvalue { ptr, ptr } %i.as, ptr %.sroa.3.0.i.i.i, 1
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE7or_elseNCNvMs8_NtBM_8registryNtB1E_12WorkerThread9find_works_0EBM_.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE7or_elseNCNvMs8_NtBM_8registryNtB1E_12WorkerThread9find_works_0EBM_.exit: ; preds = %_RNvMs8_NtCskVyUMSjkkSy_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE7or_elseNCNvMs8_NtBM_8registryNtB1E_12WorkerThread9find_work0EBM_.exit, %_RNCNvMs8_NtCskVyUMSjkkSy_10rayon_core8registryNtB7_12WorkerThread9find_works_0B9_.exit.i
  %.merged.i7.merged = phi { ptr, ptr } [ %i.at, %_RNCNvMs8_NtCskVyUMSjkkSy_10rayon_core8registryNtB7_12WorkerThread9find_works_0B9_.exit.i ], [ %i.ai, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE7or_elseNCNvMs8_NtBM_8registryNtB1E_12WorkerThread9find_work0EBM_.exit ], [ %.merged.i, %_RNvMs8_NtCskVyUMSjkkSy_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit ]
  ret { ptr, ptr } %.merged.i7.merged
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs8_NtCskVyUMSjkkSy_10rayon_core8registryNtB5_12WorkerThread9yield_now(ptr noundef nonnull align 128 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc { ptr, ptr } @_RNvMs8_NtCskVyUMSjkkSy_10rayon_core8registryNtB5_12WorkerThread9find_work(ptr noundef nonnull align 128 %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0        ; 2 uses
  %.not = icmp eq ptr %i.b, null                  ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  tail call void %i.b(ptr noundef %i.c)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %.not
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvNtCskVyUMSjkkSy_10rayon_core8registry15global_registry() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !372
  store i64 0, ptr %i.e, align 8, !noalias !372
  %i.f = load atomic i32, ptr @_RNvNtCskVyUMSjkkSy_10rayon_core8registry16THE_REGISTRY_SET acquire, align 4, !noalias !373
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %_RINvNtCskVyUMSjkkSy_10rayon_core8registry19set_global_registryNvB2_23default_global_registryEB4_.exit, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !373
  store ptr %i.e, ptr %i.d, align 8, !noalias !373
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !373
  store ptr %i.d, ptr %i.c, align 8, !noalias !373
  invoke void @_RNvMs0_NtNtNtNtCsaL1QbXo9JQH_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 @_RNvNtCskVyUMSjkkSy_10rayon_core8registry16THE_REGISTRY_SET, i1 noundef zeroext false, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5)
          to label %.noexc.i unwind label %bb.c, !noalias !372

.noexc.i:                                         ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !373
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !373
  br label %_RINvNtCskVyUMSjkkSy_10rayon_core8registry19set_global_registryNvB2_23default_global_registryEB4_.exit

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  %.val.i = load i64, ptr %i.e, align 8, !range !10, !noalias !372, !noundef !5
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.val1.i = load ptr, ptr %i.i, align 8, !noalias !372
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultRINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCskVyUMSjkkSy_10rayon_core8registry8RegistryENtB1A_20ThreadPoolBuildErrorEEB1A_(i64 %.val.i, ptr %.val1.i) #21
          to label %common.resume unwind label %bb.d, !noalias !372

bb.d:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !372
  unreachable

common.resume:                                    ; preds = %bb.g, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.h, %bb.c ], [ %i.m, %bb.g ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskVyUMSjkkSy_10rayon_core8registry19set_global_registryNvB2_23default_global_registryEB4_.exit: ; preds = %bb.a, %.noexc.i
  %.sroa.0.0.copyload = load i64, ptr %i.e, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !372
  %.not = icmp eq i64 %.sroa.0.0.copyload, -1
  br i1 %.not, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultRINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCskVyUMSjkkSy_10rayon_core8registry8RegistryENtB1k_20ThreadPoolBuildErrorE6expectB1k_.exit, label %bb.e

bb.e:                                             ; preds = %_RINvNtCskVyUMSjkkSy_10rayon_core8registry19set_global_registryNvB2_23default_global_registryEB4_.exit
  %i.k = load ptr, ptr @_RNvNtCskVyUMSjkkSy_10rayon_core8registry12THE_REGISTRY, align 8, !noundef !5
  %.not1 = icmp eq ptr %i.k, null
  br i1 %.not1, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %.sroa.0.0.copyload, ptr %i.b, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.sroa.5.0.copyload, ptr %i.l, align 8
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 48, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @10, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #23
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCskVyUMSjkkSy_10rayon_core20ThreadPoolBuildErrorEBD_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b) #21
          to label %common.resume unwind label %bb.i

bb.h:                                             ; preds = %bb.f
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultRINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCskVyUMSjkkSy_10rayon_core8registry8RegistryENtB1k_20ThreadPoolBuildErrorE6expectB1k_.exit: ; preds = %_RINvNtCskVyUMSjkkSy_10rayon_core8registry19set_global_registryNvB2_23default_global_registryEB4_.exit, %bb.j, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskVyUMSjkkSy_10rayon_core.exit.i.i
  %.sroa.5.09 = phi ptr [ @_RNvNtCskVyUMSjkkSy_10rayon_core8registry12THE_REGISTRY, %bb.j ], [ @_RNvNtCskVyUMSjkkSy_10rayon_core8registry12THE_REGISTRY, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskVyUMSjkkSy_10rayon_core.exit.i.i ], [ %.sroa.5.0.copyload, %_RINvNtCskVyUMSjkkSy_10rayon_core8registry19set_global_registryNvB2_23default_global_registryEB4_.exit ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.09) ]
  ret ptr %.sroa.5.09

bb.j:                                             ; preds = %bb.e
  %switch.i.i = icmp samesign ult i64 %.sroa.0.0.copyload, 2
  br i1 %switch.i.i, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultRINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCskVyUMSjkkSy_10rayon_core8registry8RegistryENtB1k_20ThreadPoolBuildErrorE6expectB1k_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !374
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  %i.o = ptrtoint ptr %.sroa.5.0.copyload to i64  ; 2 uses
  %i.p = and i64 %i.o, 3
  switch i64 %i.p, label %default.unreachable [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskVyUMSjkkSy_10rayon_core.exit.i.i
    i64 3, label %bb.l
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskVyUMSjkkSy_10rayon_core.exit.i.i
    i64 1, label %bb.m
  ], !prof !11

default.unreachable:                              ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.k
  %i.q = icmp ult ptr %.sroa.5.0.copyload, inttoptr (i64 188978561024 to ptr)
  %i.r = and i64 %i.o, 1095216660480
  %i.s = icmp ne i64 %i.r, 1095216660480
  call void @llvm.assume(i1 %i.q)
  call void @llvm.assume(i1 %i.s)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskVyUMSjkkSy_10rayon_core.exit.i.i

bb.m:                                             ; preds = %bb.k
  %i.t = getelementptr i8, ptr %.sroa.5.0.copyload, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.t) ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.t, ptr %i.u, align 8, !alias.scope !375, !noalias !374
  store i8 3, ptr %i.a, align 8, !alias.scope !375, !noalias !374
  call void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.u), !noalias !374
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskVyUMSjkkSy_10rayon_core.exit.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskVyUMSjkkSy_10rayon_core.exit.i.i: ; preds = %bb.m, %bb.l, %bb.k, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !374
  br label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultRINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCskVyUMSjkkSy_10rayon_core8registry8RegistryENtB1k_20ThreadPoolBuildErrorE6expectB1k_.exit
}

; Function Attrs: nonlazybind uwtable
define noundef ptr @_RNvXs0_NtCskVyUMSjkkSy_10rayon_core8registryNtB5_12DefaultSpawnNtB5_11ThreadSpawn5spawn(ptr noalias nofree nonnull readnone captures(none) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(104) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [104 x i8], align 8               ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 9 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 9 uses
  %.sroa.12 = alloca [16 x i8], align 8           ; 2 uses
  %.sroa.13 = alloca [7 x i8], align 1            ; 2 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [48 x i8], align 8                ; 7 uses
  %i.h = alloca [48 x i8], align 8                ; 9 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load i64, ptr %i.i, align 8, !range !9, !noundef !5
  %.not = icmp eq i64 %i.j, -1
  br i1 %.not, label %bb.c, label %bb.b

end_hunk_0
