Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rayon-rs/original/rayon_core-a506781b803648b8.rayon_core.f3c436e44465bf58-cgu.0?download=true
inline.NumInlined: 204
inline.NumDeleted: 98
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvMNtCskVyUMSjkkSy_10rayon_core11thread_poolNtB2_10ThreadPool9yield_now:bb.a

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMs8_NtCskVyUMSjkkSy_10rayon_core8registryNtB5_12WorkerThread9yield_now(ptr noundef nonnull align 128 %i.c)
  %i.e = zext i1 %i.d to i8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i8 [ %i.e, %bb.b ], [ 2, %bb.a ]
  ret i8 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvMs4_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE3popBZ_(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 264 ; 2 uses
  %i.c = load atomic i64, ptr %i.b monotonic, align 8 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 256 ; 2 uses
  %i.e = load atomic i64, ptr %i.d monotonic, align 8
  %i.f = sub i64 %i.c, %i.e                       ; 2 uses
  %i.g = icmp slt i64 %i.f, 1
  br i1 %i.g, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i8, ptr %i.h, align 8, !range !101, !noundef !5
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = add i64 %i.c, -1                         ; 5 uses
  store atomic i64 %i.k, ptr %i.b monotonic, align 8
  fence seq_cst
  %i.l = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 256 ; 2 uses
  %i.n = load atomic i64, ptr %i.m monotonic, align 8 ; 2 uses
  %i.o = sub i64 %i.k, %i.n                       ; 2 uses
  %i.p = icmp slt i64 %i.o, 0
  br i1 %i.p, label %bb.i, label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.q = atomicrmw add ptr %i.d, i64 1 seq_cst, align 8 ; 3 uses
  %i.r = sub i64 %i.q, %i.c
  %i.s = icmp sgt i64 %i.r, -1
  br i1 %i.s, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !noundef !5
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load i64, ptr %i.v, align 8, !noundef !5 ; 4 uses
  %i.x = add i64 %i.w, -1
  %i.y = and i64 %i.x, %i.q
  %i.z = getelementptr inbounds [16 x i8], ptr %i.u, i64 %i.y
  %i.aa = load volatile i128, ptr %i.z, align 8   ; 2 uses
  %.sroa.015.0.extract.trunc = trunc i128 %i.aa to i64 ; 2 uses
  %i.ab = inttoptr i64 %.sroa.015.0.extract.trunc to ptr ; 2 uses
  %.sroa.216.0.extract.shift = lshr i128 %i.aa, 64
  %.sroa.216.0.extract.trunc = trunc nuw i128 %.sroa.216.0.extract.shift to i64
  %i.ac = inttoptr i64 %.sroa.216.0.extract.trunc to ptr ; 2 uses
  %i.ad = icmp ne i64 %.sroa.015.0.extract.trunc, 0
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = icmp ugt i64 %i.w, 64
  %i.af = sdiv i64 %i.w, 4
  %i.ag = icmp sle i64 %i.f, %i.af
  %or.cond = and i1 %i.ae, %i.ag
  br i1 %or.cond, label %bb.g, label %bb.n, !prof !8

bb.f:                                             ; preds = %bb.d
  %i.ah = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 256
  store atomic i64 %i.q, ptr %i.ai monotonic, align 8
  br label %bb.n

bb.g:                                             ; preds = %bb.e
  %i.aj = lshr i64 %i.w, 1
  tail call fastcc void @_RNvMs4_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE6resizeBZ_(ptr noundef nonnull align 8 %0, i64 noundef %i.aj)
  br label %bb.n

bb.h:                                             ; preds = %bb.c
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !noundef !5
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.an = load i64, ptr %i.am, align 8, !noundef !5 ; 4 uses
  %i.ao = add i64 %i.an, -1
  %i.ap = and i64 %i.ao, %i.k
  %i.aq = getelementptr inbounds [16 x i8], ptr %i.al, i64 %i.ap
  %i.ar = load volatile i128, ptr %i.aq, align 8  ; 2 uses
  %.sroa.017.0.extract.trunc = trunc i128 %i.ar to i64 ; 2 uses
  %i.as = inttoptr i64 %.sroa.017.0.extract.trunc to ptr
  %.sroa.218.0.extract.shift = lshr i128 %i.ar, 64
  %.sroa.218.0.extract.trunc = trunc nuw i128 %.sroa.218.0.extract.shift to i64
  %i.at = inttoptr i64 %.sroa.218.0.extract.trunc to ptr
  %i.au = icmp eq i64 %i.k, %i.n
  br i1 %i.au, label %bb.j, label %bb.k

bb.i:                                             ; preds = %bb.c
  %i.av = getelementptr inbounds nuw i8, ptr %i.l, i64 264
  store atomic i64 %i.c, ptr %i.av monotonic, align 8
  br label %bb.n

bb.j:                                             ; preds = %bb.h
  %i.aw = cmpxchg ptr %i.m, i64 %i.k, i64 %i.c seq_cst monotonic, align 8
  %i.ax = extractvalue { i64, i1 } %i.aw, 1
  %i.ay = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 264
  store atomic i64 %i.c, ptr %i.az monotonic, align 8
  br i1 %i.ax, label %bb.l, label %bb.n

bb.k:                                             ; preds = %bb.h
  %i.ba = icmp ugt i64 %i.an, 64
  %i.bb = sdiv i64 %i.an, 4
  %i.bc = icmp slt i64 %i.o, %i.bb
  %or.cond3 = and i1 %i.ba, %i.bc
  br i1 %or.cond3, label %bb.m, label %bb.l, !prof !8

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.m
  %i.bd = icmp ne i64 %.sroa.017.0.extract.trunc, 0
  tail call void @llvm.assume(i1 %i.bd)
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.be = lshr i64 %i.an, 1
  tail call fastcc void @_RNvMs4_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE6resizeBZ_(ptr noundef nonnull align 8 %0, i64 noundef %i.be)
  br label %bb.l

bb.n:                                             ; preds = %bb.j, %bb.e, %bb.g, %bb.a, %bb.i, %bb.l, %bb.f
  %.sroa.7.0 = phi ptr [ undef, %bb.a ], [ undef, %bb.i ], [ %i.ac, %bb.e ], [ %i.at, %bb.l ], [ undef, %bb.f ], [ %i.ac, %bb.g ], [ undef, %bb.j ]
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ null, %bb.i ], [ %i.ab, %bb.e ], [ %i.as, %bb.l ], [ null, %bb.f ], [ %i.ab, %bb.g ], [ null, %bb.j ]
  %i.bf = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.bg = insertvalue { ptr, ptr } %i.bf, ptr %.sroa.7.0, 1
  ret { ptr, ptr } %i.bg
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs4_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE4pushBZ_(ptr nofree noundef nonnull align 8 captures(none) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 264
  %i.c = load atomic i64, ptr %i.b monotonic, align 8 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  %i.e = load atomic i64, ptr %i.d acquire, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !noundef !5 ; 3 uses
  %i.h = sub i64 %i.c, %i.e
  %.not = icmp slt i64 %i.h, %i.g
  br i1 %.not, label %bb.c, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.i = shl i64 %i.g, 1
  tail call fastcc void @_RNvMs4_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE6resizeBZ_(ptr noundef nonnull align 8 %0, i64 noundef %i.i)
  %i.j = load i64, ptr %i.f, align 8, !noundef !5
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.02.0 = phi i64 [ %i.j, %bb.b ], [ %i.g, %bb.a ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.01.0 = load ptr, ptr %i.k, align 8, !noundef !5
  %i.l = add i64 %.sroa.02.0, -1
  %i.m = and i64 %i.l, %i.c
  %i.n = getelementptr inbounds [16 x i8], ptr %.sroa.01.0, i64 %i.m ; 2 uses
  store volatile ptr %1, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store volatile ptr %2, ptr %i.o, align 8
  fence release
  %i.p = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.q = add i64 %i.c, 1
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 264
  store atomic i64 %i.q, ptr %i.r monotonic, align 8
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvMs4_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE6resizeBZ_(ptr nofree noundef nonnull align 8 captures(none) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 6 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 264
  %i.e = load atomic i64, ptr %i.d monotonic, align 8 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 256
  %i.g = load atomic i64, ptr %i.f monotonic, align 8 ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !noundef !5 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_iterINtB4_3VecINtNtNtCs3oUPovFnLWP_4core3mem12maybe_uninit11MaybeUninitNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEINtB2_12SpecFromIterBU_INtNtNtNtB11_4iter8adapters3map3MapINtNtNtB11_3ops5range5RangejENCNvMs_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB42_6BufferB1P_E5alloc0EE9from_iterB1T_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i64 noundef 0, i64 noundef %1)
  %i.l = call { ptr, i64 } @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtNtCs3oUPovFnLWP_4core3mem12maybe_uninit11MaybeUninitNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEE16into_boxed_sliceB1D_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.m = extractvalue { ptr, i64 } %i.l, 0        ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.m) ]
  %.not7 = icmp eq i64 %i.g, %i.e
  br i1 %.not7, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.n = add i64 %i.k, -1                         ; 3 uses
  %i.o = add i64 %1, -1                           ; 3 uses
  %i.p = sub i64 %i.e, %i.g
  %.neg = add i64 %i.g, 1
  %xtraiter = and i64 %i.p, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph
  %i.q = and i64 %i.g, %i.n
  %i.r = getelementptr inbounds [16 x i8], ptr %i.i, i64 %i.q
  %i.s = and i64 %i.g, %i.o
  %i.t = getelementptr inbounds [16 x i8], ptr %i.m, i64 %i.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull align 8 dereferenceable(16) %i.r, i64 16, i1 false)
  %i.u = add i64 %i.g, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph
  %.sroa.0.08.unr = phi i64 [ %i.g, %.lr.ph ], [ %i.u, %.prol.loopexit.unr-lcssa ]
  %i.v = icmp eq i64 %i.e, %.neg
  br i1 %i.v, label %._crit_edge, label %.lr.ph.new

._crit_edge:                                      ; preds = %.prol.loopexit, %.lr.ph.new, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.w = call fastcc noundef ptr @_RINvNtCsdS7Q0PB8o3V_15crossbeam_epoch7default11with_handleNCNvB2_3pin0NtNtB4_5guard5GuardECskVyUMSjkkSy_10rayon_core() #29 ; 7 uses
  store ptr %i.w, ptr %i.b, align 8
  store ptr %i.m, ptr %i.h, align 8
  store i64 %1, ptr %i.j, align 8
  %i.x = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18
  %i.y = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 16, 385) 16, i64 noundef range(i64 8, 129) 8) #18 ; 4 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.b, label %bb.d, !prof !12

bb.b:                                             ; preds = %._crit_edge
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #25
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %.sroa.0.08 = phi i64 [ %i.aj, %.lr.ph.new ], [ %.sroa.0.08.unr, %.prol.loopexit ] ; 4 uses
  %i.aa = and i64 %.sroa.0.08, %i.n
  %i.ab = getelementptr inbounds [16 x i8], ptr %i.i, i64 %i.aa
  %i.ac = and i64 %.sroa.0.08, %i.o
  %i.ad = getelementptr inbounds [16 x i8], ptr %i.m, i64 %i.ac
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i64 16, i1 false)
  %i.ae = add i64 %.sroa.0.08, 1                  ; 2 uses
  %i.af = and i64 %i.ae, %i.n
  %i.ag = getelementptr inbounds [16 x i8], ptr %i.i, i64 %i.af
  %i.ah = and i64 %i.ae, %i.o
  %i.ai = getelementptr inbounds [16 x i8], ptr %i.m, i64 %i.ah
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, ptr noundef nonnull align 8 dereferenceable(16) %i.ag, i64 16, i1 false)
  %i.aj = add i64 %.sroa.0.08, 2                  ; 2 uses
  %.not.1 = icmp eq i64 %i.aj, %i.e
  br i1 %.not.1, label %._crit_edge, label %.lr.ph.new

bb.c:                                             ; preds = %bb.b, %bb.g, %bb.e, %bb.d
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdS7Q0PB8o3V_15crossbeam_epoch5guard5GuardECskVyUMSjkkSy_10rayon_core(ptr %i.w) #27
          to label %bb.m unwind label %bb.l

bb.d:                                             ; preds = %._crit_edge
  store ptr %i.m, ptr %i.y, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i64 %1, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.x, i64 128
  %i.an = ptrtoint ptr %i.y to i64
  %i.ao = invoke noundef i64 @_RINvMs7_NtCsdS7Q0PB8o3V_15crossbeam_epoch6atomicINtB6_6AtomicINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6BufferNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEE4swapINtB6_6SharedBX_EEB1O_(ptr noundef nonnull align 8 %i.am, i64 noundef %i.an, i8 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
          to label %bb.e unwind label %bb.c

bb.e:                                             ; preds = %bb.d
  invoke void @_RINvMNtCsdS7Q0PB8o3V_15crossbeam_epoch5guardNtB3_5Guard15defer_uncheckedNCNvMs4_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB1g_6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE6resize0uEB2b_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, i64 noundef %i.ao)
          to label %bb.f unwind label %bb.c

bb.f:                                             ; preds = %bb.e
  %i.ap = and i64 %1, 1152921504606846912
  %.not5 = icmp eq i64 %i.ap, 0
  br i1 %.not5, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvMNtCsdS7Q0PB8o3V_15crossbeam_epoch5guardNtB2_5Guard5flush(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
          to label %bb.h unwind label %bb.c

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.aq = icmp eq ptr %i.w, null
  br i1 %i.aq, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdS7Q0PB8o3V_15crossbeam_epoch5guard5GuardECskVyUMSjkkSy_10rayon_core.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ar = getelementptr inbounds nuw i8, ptr %i.w, i64 2072 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !noundef !5 ; 2 uses
  %i.at = add i64 %i.as, -1
  store i64 %i.at, ptr %i.ar, align 8
  %i.au = icmp eq i64 %i.as, 1
  br i1 %i.au, label %bb.j, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdS7Q0PB8o3V_15crossbeam_epoch5guard5GuardECskVyUMSjkkSy_10rayon_core.exit

bb.j:                                             ; preds = %bb.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.w, i64 2176
  store atomic i64 0, ptr %i.av release, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.w, i64 2080
  %i.ax = load i64, ptr %i.aw, align 8, !noundef !5
  %i.ay = icmp eq i64 %i.ax, 0
  br i1 %i.ay, label %bb.k, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdS7Q0PB8o3V_15crossbeam_epoch5guard5GuardECskVyUMSjkkSy_10rayon_core.exit, !prof !12

bb.k:                                             ; preds = %bb.j
  call void @_RNvMs6_NtCsdS7Q0PB8o3V_15crossbeam_epoch8internalNtB5_5Local8finalize(ptr noundef nonnull align 128 %i.w)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdS7Q0PB8o3V_15crossbeam_epoch5guard5GuardECskVyUMSjkkSy_10rayon_core.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdS7Q0PB8o3V_15crossbeam_epoch5guard5GuardECskVyUMSjkkSy_10rayon_core.exit: ; preds = %bb.h, %bb.i, %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.l:                                             ; preds = %bb.c
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.m:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.ak
}

; Function Attrs: mustprogress norecurse nounwind nonlazybind willreturn uwtable
define hidden noundef zeroext i1 @_RNvMs4_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE8is_emptyBZ_(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 264
  %i.c = load atomic i64, ptr %i.b monotonic, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  %i.e = load atomic i64, ptr %i.d seq_cst, align 8
  %i.f = sub i64 %i.c, %i.e
  %i.g = icmp slt i64 %i.f, 1
  ret i1 %i.g
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs4_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE8new_fifoBZ_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [384 x i8], align 128             ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_iterINtB4_3VecINtNtNtCs3oUPovFnLWP_4core3mem12maybe_uninit11MaybeUninitNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEINtB2_12SpecFromIterBU_INtNtNtNtB11_4iter8adapters3map3MapINtNtNtB11_3ops5range5RangejENCNvMs_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB42_6BufferB1P_E5alloc0EE9from_iterB1T_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i64 noundef 0, i64 noundef 64)
  %i.c = call { ptr, i64 } @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtNtCs3oUPovFnLWP_4core3mem12maybe_uninit11MaybeUninitNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEE16into_boxed_sliceB1D_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = extractvalue { ptr, i64 } %i.c, 0        ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.d) ]
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18
  %i.e = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 16, 385) 16, i64 noundef range(i64 8, 129) 8) #18 ; 4 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit.exit, !prof !12

bb.b:                                             ; preds = %bb.a
  call void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #25
  unreachable

_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.a
  store ptr %i.d, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 64, ptr %i.g, align 8
  %i.h = ptrtoint ptr %i.e to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 1, ptr %i.b, align 128
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  store i64 %i.h, ptr %i.j, align 128
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 128 dereferenceable(16) %.sroa.44.0..sroa_idx, i8 0, i64 16, i1 false)
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !noalias !104
  %i.k = call noundef align 128 dereferenceable_or_null(384) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 16, 385) 384, i64 noundef range(i64 8, 129) 128) #18, !noalias !104 ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.c, label %_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtCsfI5zKgsrATz_15crossbeam_utils12cache_padded11CachePaddedINtNtCsjayvGk2fZH7_15crossbeam_deque5deque5InnerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEEE3newB2R_.exit, !prof !12

bb.c:                                             ; preds = %_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit.exit
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef 384) #25
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync8ArcInnerINtNtCsfI5zKgsrATz_15crossbeam_utils12cache_padded11CachePaddedINtNtCsjayvGk2fZH7_15crossbeam_deque5deque5InnerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEEEB35_(ptr noalias nofree noundef nonnull align 128 dereferenceable(384) %i.b) #27
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.m

_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtCsfI5zKgsrATz_15crossbeam_utils12cache_padded11CachePaddedINtNtCsjayvGk2fZH7_15crossbeam_deque5deque5InnerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEEE3newB2R_.exit: ; preds = %_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(384) %i.k, ptr noundef nonnull align 128 dereferenceable(384) %i.b, i64 384, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store ptr %i.k, ptr %0, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 64, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.q, align 8
end_hunk_0
begin_hunk_1_@_RNvMsg_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_8InjectorNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE4pushB11_:bb.a
  %i.b = load atomic i64, ptr %i.a acquire, align 128
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  %i.d = load atomic ptr, ptr %i.c acquire, align 8
  br label %.outer

.outer:                                           ; preds = %_RNvMNtCsfI5zKgsrATz_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit, %bb.a
  %.sroa.062.0.ph = phi ptr [ %.sroa.062.2, %_RNvMNtCsfI5zKgsrATz_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit ], [ null, %bb.a ] ; 4 uses
  %.sroa.0.064.ph = phi i32 [ %spec.select, %_RNvMNtCsfI5zKgsrATz_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit ], [ 0, %bb.a ] ; 2 uses
  %.sroa.022.0.ph = phi ptr [ %i.aj, %_RNvMNtCsfI5zKgsrATz_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit ], [ %i.d, %bb.a ]
  %.sroa.0.0.ph = phi i64 [ %i.x, %_RNvMNtCsfI5zKgsrATz_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = lshr i64 %.sroa.0.0.ph, 1
  %i.f = and i64 %i.e, 63                         ; 2 uses
  %i.g = icmp eq i64 %i.f, 63
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.outer, %bb.c
  %.sroa.0.06492 = phi i32 [ %.sroa.0.1, %bb.c ], [ %.sroa.0.064.ph, %.outer ] ; 5 uses
  %i.h = icmp ult i32 %.sroa.0.06492, 7
  br i1 %i.h, label %.preheader.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  invoke void @_RNvNtNtCsaL1QbXo9JQH_3std6thread9functions9yield_now()
          to label %.loopexit.i unwind label %.thread

.loopexit.i:                                      ; preds = %bb.b
  %i.i = icmp ult i32 %.sroa.0.06492, 11
  br i1 %i.i, label %.loopexit.i.thread, label %bb.c

.preheader.i:                                     ; preds = %.lr.ph, %.preheader.i
  %.sroa.0.03.i = phi i32 [ %i.j, %.preheader.i ], [ 0, %.lr.ph ]
  %i.j = add nuw nsw i32 %.sroa.0.03.i, 1         ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  %.sroa.0.0.highbits.i = lshr i32 %i.j, %.sroa.0.06492
  %i.k = icmp eq i32 %.sroa.0.0.highbits.i, 0
  br i1 %i.k, label %.preheader.i, label %.loopexit.i.thread

.loopexit.i.thread:                               ; preds = %.preheader.i, %.loopexit.i
  %i.l = add nuw nsw i32 %.sroa.0.06492, 1
  br label %bb.c

._crit_edge:                                      ; preds = %bb.c, %.outer
  %.sroa.0.064.lcssa = phi i32 [ %.sroa.0.064.ph, %.outer ], [ %.sroa.0.1, %bb.c ] ; 3 uses
  %.sroa.022.0.lcssa = phi ptr [ %.sroa.022.0.ph, %.outer ], [ %i.o, %bb.c ] ; 5 uses
  %.sroa.0.0.lcssa = phi i64 [ %.sroa.0.0.ph, %.outer ], [ %i.n, %bb.c ] ; 3 uses
  %.lcssa = phi i64 [ %i.f, %.outer ], [ %i.q, %bb.c ] ; 2 uses
  %i.m = icmp eq i64 %.lcssa, 62                  ; 2 uses
  %.not = icmp eq ptr %.sroa.062.0.ph, null
  %or.cond = select i1 %i.m, i1 %.not, i1 false
  br i1 %or.cond, label %bb.d, label %bb.e

bb.c:                                             ; preds = %.loopexit.i, %.loopexit.i.thread
  %.sroa.0.1 = phi i32 [ %i.l, %.loopexit.i.thread ], [ %.sroa.0.06492, %.loopexit.i ] ; 2 uses
  %i.n = load atomic i64, ptr %i.a acquire, align 128 ; 2 uses
  %i.o = load atomic ptr, ptr %i.c acquire, align 8
  %i.p = lshr i64 %i.n, 1
  %i.q = and i64 %i.p, 63                         ; 2 uses
  %i.r = icmp eq i64 %i.q, 63
  br i1 %i.r, label %.lr.ph, label %._crit_edge

bb.d:                                             ; preds = %._crit_edge
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18
  %i.s = tail call noundef align 8 dereferenceable_or_null(1520) ptr @_RNvCsjHpjAFo4bi0_7___rustc19___rust_alloc_zeroed(i64 noundef 1520, i64 noundef 8) #18 ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %.noexc54, label %bb.e, !prof !12

.noexc54:                                         ; preds = %bb.d
  tail call void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 1520) #25
  unreachable

bb.e:                                             ; preds = %._crit_edge, %bb.d
  %.sroa.062.2 = phi ptr [ %.sroa.062.0.ph, %._crit_edge ], [ %i.s, %bb.d ] ; 6 uses
  %i.u = add i64 %.sroa.0.0.lcssa, 2
  %i.v = cmpxchg weak ptr %i.a, i64 %.sroa.0.0.lcssa, i64 %i.u seq_cst acquire, align 8 ; 2 uses
  %i.w = extractvalue { i64, i1 } %i.v, 1
  %i.x = extractvalue { i64, i1 } %i.v, 0
  br i1 %i.w, label %bb.f, label %bb.l

bb.f:                                             ; preds = %bb.e
  br i1 %i.m, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.022.0.lcssa, i64 8
  %i.z = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %.lcssa ; 3 uses
  store ptr %1, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %2, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ac = atomicrmw or ptr %i.ab, i64 1 release, align 8 ; 0 uses
  %i.ad = icmp eq ptr %.sroa.062.2, null
  br i1 %i.ad, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc5boxed3BoxINtNtCsjayvGk2fZH7_15crossbeam_deque5deque5BlockNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEEEB2m_.exit56, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.062.2, i64 noundef 1520, i64 noundef 8) #18
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc5boxed3BoxINtNtCsjayvGk2fZH7_15crossbeam_deque5deque5BlockNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEEEB2m_.exit56

bb.i:                                             ; preds = %bb.f
  %.not50 = icmp eq ptr %.sroa.062.2, null
  br i1 %.not50, label %bb.j, label %bb.k, !prof !12

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc5boxed3BoxINtNtCsjayvGk2fZH7_15crossbeam_deque5deque5BlockNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEEEB2m_.exit56: ; preds = %bb.h, %bb.g, %bb.k
  ret void

bb.j:                                             ; preds = %bb.i
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #25
  unreachable

bb.k:                                             ; preds = %bb.i
  store atomic ptr %.sroa.062.2, ptr %i.c release, align 8
  %i.ae = add i64 %.sroa.0.0.lcssa, 4
  store atomic i64 %i.ae, ptr %i.a release, align 128
  store atomic ptr %.sroa.062.2, ptr %.sroa.022.0.lcssa release, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.022.0.lcssa, i64 1496
  store ptr %1, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.022.0.lcssa, i64 1504
  store ptr %2, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.022.0.lcssa, i64 1512
  %i.ai = atomicrmw or ptr %i.ah, i64 1 release, align 8 ; 0 uses
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc5boxed3BoxINtNtCsjayvGk2fZH7_15crossbeam_deque5deque5BlockNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEEEB2m_.exit56

bb.l:                                             ; preds = %bb.e
  %i.aj = load atomic ptr, ptr %i.c acquire, align 8
  %..i.i = tail call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.064.lcssa, i32 6)
  br label %bb.m

_RNvMNtCsfI5zKgsrATz_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit: ; preds = %bb.m
  %i.ak = icmp ult i32 %.sroa.0.064.lcssa, 7
  %i.al = zext i1 %i.ak to i32
  %spec.select = add nuw nsw i32 %.sroa.0.064.lcssa, %i.al
  br label %.outer

bb.m:                                             ; preds = %bb.m, %bb.l
  %.sroa.0.02.i = phi i32 [ 0, %bb.l ], [ %i.am, %bb.m ]
  %i.am = add nuw nsw i32 %.sroa.0.02.i, 1        ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  %.sroa.0.0.highbits.i57 = lshr i32 %i.am, %..i.i
  %i.an = icmp eq i32 %.sroa.0.0.highbits.i57, 0
  br i1 %i.an, label %bb.m, label %_RNvMNtCsfI5zKgsrATz_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit

.thread:                                          ; preds = %bb.b
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  %i.ao = icmp eq ptr %.sroa.062.0.ph, null
  br i1 %i.ao, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc5boxed3BoxINtNtCsjayvGk2fZH7_15crossbeam_deque5deque5BlockNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEEEB2m_.exit58, label %.thread.thread

.thread.thread:                                   ; preds = %.thread
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.062.0.ph, i64 noundef 1520, i64 noundef 8) #18
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc5boxed3BoxINtNtCsjayvGk2fZH7_15crossbeam_deque5deque5BlockNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEEEB2m_.exit58

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc5boxed3BoxINtNtCsjayvGk2fZH7_15crossbeam_deque5deque5BlockNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEEEB2m_.exit58: ; preds = %.thread.thread, %.thread
  resume { ptr, i32 } %lpad.thr_comm
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsg_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_8InjectorNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE5stealB11_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull align 128 captures(none) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load atomic i64, ptr %1 acquire, align 128 ; 2 uses
  %i.c = load atomic ptr, ptr %i.a acquire, align 8
  %i.d = lshr i64 %i.b, 1                         ; 2 uses
  %i.e = and i64 %i.d, 63                         ; 2 uses
  %i.f = icmp eq i64 %i.e, 63
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %_RNvMNtCsfI5zKgsrATz_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit
  %.sroa.0.05562 = phi i32 [ %.sroa.0.1, %_RNvMNtCsfI5zKgsrATz_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit ], [ 0, %bb.a ] ; 5 uses
  %i.g = icmp ult i32 %.sroa.0.05562, 7
  br i1 %i.g, label %.preheader.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %.lr.ph
  tail call void @_RNvNtNtCsaL1QbXo9JQH_3std6thread9functions9yield_now()
  %i.h = icmp ult i32 %.sroa.0.05562, 11
  br i1 %i.h, label %.loopexit.i.thread, label %_RNvMNtCsfI5zKgsrATz_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit

.preheader.i:                                     ; preds = %.lr.ph, %.preheader.i
  %.sroa.0.03.i = phi i32 [ %i.i, %.preheader.i ], [ 0, %.lr.ph ]
  %i.i = add nuw nsw i32 %.sroa.0.03.i, 1         ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  %.sroa.0.0.highbits.i = lshr i32 %i.i, %.sroa.0.05562
  %i.j = icmp eq i32 %.sroa.0.0.highbits.i, 0
  br i1 %i.j, label %.preheader.i, label %.loopexit.i.thread

.loopexit.i.thread:                               ; preds = %.preheader.i, %.loopexit.i
  %i.k = add nuw nsw i32 %.sroa.0.05562, 1
  br label %_RNvMNtCsfI5zKgsrATz_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit

_RNvMNtCsfI5zKgsrATz_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit: ; preds = %.loopexit.i, %.loopexit.i.thread
  %.sroa.0.1 = phi i32 [ %i.k, %.loopexit.i.thread ], [ %.sroa.0.05562, %.loopexit.i ]
  %i.l = load atomic i64, ptr %1 acquire, align 128 ; 2 uses
  %i.m = load atomic ptr, ptr %i.a acquire, align 8
  %i.n = lshr i64 %i.l, 1                         ; 2 uses
  %i.o = and i64 %i.n, 63                         ; 2 uses
  %i.p = icmp eq i64 %i.o, 63
  br i1 %i.p, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %_RNvMNtCsfI5zKgsrATz_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit, %bb.a
  %.lcssa61 = phi i64 [ %i.b, %bb.a ], [ %i.l, %_RNvMNtCsfI5zKgsrATz_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit ] ; 4 uses
  %.lcssa59 = phi ptr [ %i.c, %bb.a ], [ %i.m, %_RNvMNtCsfI5zKgsrATz_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit ] ; 8 uses
  %.lcssa58 = phi i64 [ %i.d, %bb.a ], [ %i.n, %_RNvMNtCsfI5zKgsrATz_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit ]
  %.lcssa57 = phi i64 [ %i.e, %bb.a ], [ %i.o, %_RNvMNtCsfI5zKgsrATz_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit ] ; 4 uses
  %i.q = add i64 %.lcssa61, 2                     ; 2 uses
  %2 = and i64 %.lcssa61, 1
  %3 = icmp eq i64 %2, 0
  br i1 %3, label %bb.b, label %bb.d

bb.b:                                             ; preds = %._crit_edge
  fence seq_cst
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.s = load atomic i64, ptr %i.r monotonic, align 128 ; 2 uses
  %i.t = lshr i64 %i.s, 1
  %i.u = icmp eq i64 %.lcssa58, %i.t
  br i1 %i.u, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.unshifted = xor i64 %i.s, %.lcssa61
  %.not = icmp ugt i64 %.not.unshifted, 127
  %i.v = zext i1 %.not to i64
  %spec.select = or disjoint i64 %i.q, %i.v
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %.sroa.0.0 = phi i64 [ %i.q, %._crit_edge ], [ %spec.select, %bb.c ] ; 2 uses
  %i.w = cmpxchg weak ptr %1, i64 %.lcssa61, i64 %.sroa.0.0 seq_cst acquire, align 8
  %i.x = extractvalue { i64, i1 } %i.w, 1
  br i1 %i.x, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.y = icmp eq i64 %.lcssa57, 62
  br i1 %i.y, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.z = load atomic ptr, ptr %.lcssa59 acquire, align 8 ; 2 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %.lr.ph.i, label %_RNvMsc_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_5BlockNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE9wait_nextBY_.exit

.lr.ph.i:                                         ; preds = %bb.f, %_RNvMNtCsfI5zKgsrATz_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i
  %.sroa.0.02.i = phi i32 [ %.sroa.0.1.i, %_RNvMNtCsfI5zKgsrATz_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i ], [ 0, %bb.f ] ; 5 uses
  %i.ab = icmp ult i32 %.sroa.0.02.i, 7
  br i1 %i.ab, label %.preheader.i.i, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i
  tail call void @_RNvNtNtCsaL1QbXo9JQH_3std6thread9functions9yield_now()
  %i.ac = icmp ult i32 %.sroa.0.02.i, 11
  br i1 %i.ac, label %.loopexit.i.thread.i, label %_RNvMNtCsfI5zKgsrATz_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i

.preheader.i.i:                                   ; preds = %.lr.ph.i, %.preheader.i.i
  %.sroa.0.03.i.i = phi i32 [ %i.ad, %.preheader.i.i ], [ 0, %.lr.ph.i ]
  %i.ad = add nuw nsw i32 %.sroa.0.03.i.i, 1      ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  %.sroa.0.0.highbits.i.i = lshr i32 %i.ad, %.sroa.0.02.i
  %i.ae = icmp eq i32 %.sroa.0.0.highbits.i.i, 0
  br i1 %i.ae, label %.preheader.i.i, label %.loopexit.i.thread.i

.loopexit.i.thread.i:                             ; preds = %.preheader.i.i, %.loopexit.i.i
  %i.af = add nuw nsw i32 %.sroa.0.02.i, 1
  br label %_RNvMNtCsfI5zKgsrATz_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i

_RNvMNtCsfI5zKgsrATz_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i: ; preds = %.loopexit.i.thread.i, %.loopexit.i.i
  %.sroa.0.1.i = phi i32 [ %i.af, %.loopexit.i.thread.i ], [ %.sroa.0.02.i, %.loopexit.i.i ]
  %i.ag = load atomic ptr, ptr %.lcssa59 acquire, align 8 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %.lr.ph.i, label %_RNvMsc_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_5BlockNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE9wait_nextBY_.exit

_RNvMsc_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_5BlockNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE9wait_nextBY_.exit: ; preds = %_RNvMNtCsfI5zKgsrATz_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i, %bb.f
  %.lcssa.i = phi ptr [ %i.z, %bb.f ], [ %i.ag, %_RNvMNtCsfI5zKgsrATz_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i ] ; 2 uses
  %i.ai = and i64 %.sroa.0.0, -2
  %i.aj = add i64 %i.ai, 2
  %i.ak = load atomic ptr, ptr %.lcssa.i monotonic, align 8
  %i.al = icmp ne ptr %i.ak, null
  %i.am = zext i1 %i.al to i64
  %spec.select31 = or disjoint i64 %i.aj, %i.am
  store atomic ptr %.lcssa.i, ptr %i.a release, align 8
  store atomic i64 %spec.select31, ptr %1 release, align 128
  %i.an = getelementptr inbounds nuw i8, ptr %.lcssa59, i64 1496
  %i.ao = getelementptr inbounds nuw i8, ptr %.lcssa59, i64 1512 ; 2 uses
  %i.ap = load atomic i64, ptr %i.ao acquire, align 8
  %4 = and i64 %i.ap, 1
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %.lr.ph.i33, label %_RNvMsb_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_4SlotNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE10wait_writeBX_.exit

.lr.ph.i33:                                       ; preds = %_RNvMsc_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_5BlockNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE9wait_nextBY_.exit, %_RNvMNtCsfI5zKgsrATz_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i36
  %.sroa.0.02.i34 = phi i32 [ %.sroa.0.1.i37, %_RNvMNtCsfI5zKgsrATz_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i36 ], [ 0, %_RNvMsc_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_5BlockNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE9wait_nextBY_.exit ] ; 5 uses
  %i.aq = icmp ult i32 %.sroa.0.02.i34, 7
  br i1 %i.aq, label %.preheader.i.i39, label %.loopexit.i.i35

.loopexit.i.i35:                                  ; preds = %.lr.ph.i33
  tail call void @_RNvNtNtCsaL1QbXo9JQH_3std6thread9functions9yield_now()
  %i.ar = icmp ult i32 %.sroa.0.02.i34, 11
  br i1 %i.ar, label %.loopexit.i.thread.i38, label %_RNvMNtCsfI5zKgsrATz_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i36

.preheader.i.i39:                                 ; preds = %.lr.ph.i33, %.preheader.i.i39
  %.sroa.0.03.i.i40 = phi i32 [ %i.as, %.preheader.i.i39 ], [ 0, %.lr.ph.i33 ]
  %i.as = add nuw nsw i32 %.sroa.0.03.i.i40, 1    ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  %.sroa.0.0.highbits.i.i41 = lshr i32 %i.as, %.sroa.0.02.i34
  %i.at = icmp eq i32 %.sroa.0.0.highbits.i.i41, 0
  br i1 %i.at, label %.preheader.i.i39, label %.loopexit.i.thread.i38

.loopexit.i.thread.i38:                           ; preds = %.preheader.i.i39, %.loopexit.i.i35
  %i.au = add nuw nsw i32 %.sroa.0.02.i34, 1
  br label %_RNvMNtCsfI5zKgsrATz_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i36

_RNvMNtCsfI5zKgsrATz_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i36: ; preds = %.loopexit.i.thread.i38, %.loopexit.i.i35
  %.sroa.0.1.i37 = phi i32 [ %i.au, %.loopexit.i.thread.i38 ], [ %.sroa.0.02.i34, %.loopexit.i.i35 ]
  %i.av = load atomic i64, ptr %i.ao acquire, align 8
  %6 = and i64 %i.av, 1
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %.lr.ph.i33, label %_RNvMsb_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_4SlotNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE10wait_writeBX_.exit

_RNvMsb_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_4SlotNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE10wait_writeBX_.exit: ; preds = %_RNvMNtCsfI5zKgsrATz_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i36, %_RNvMsc_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_5BlockNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE9wait_nextBY_.exit
  %i.aw = load <2 x ptr>, ptr %i.an, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.ax = getelementptr inbounds nuw i8, ptr %.lcssa59, i64 8
  %i.ay = getelementptr inbounds nuw [24 x i8], ptr %i.ax, i64 %.lcssa57 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16 ; 3 uses
  %i.ba = load atomic i64, ptr %i.az acquire, align 8
  %8 = and i64 %i.ba, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %.lr.ph.i42, label %_RNvMsb_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_4SlotNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE10wait_writeBX_.exit51

.lr.ph.i42:                                       ; preds = %bb.g, %_RNvMNtCsfI5zKgsrATz_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i45
  %.sroa.0.02.i43 = phi i32 [ %.sroa.0.1.i46, %_RNvMNtCsfI5zKgsrATz_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i45 ], [ 0, %bb.g ] ; 5 uses
  %i.bb = icmp ult i32 %.sroa.0.02.i43, 7
  br i1 %i.bb, label %.preheader.i.i48, label %.loopexit.i.i44

.loopexit.i.i44:                                  ; preds = %.lr.ph.i42
  tail call void @_RNvNtNtCsaL1QbXo9JQH_3std6thread9functions9yield_now()
  %i.bc = icmp ult i32 %.sroa.0.02.i43, 11
  br i1 %i.bc, label %.loopexit.i.thread.i47, label %_RNvMNtCsfI5zKgsrATz_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i45

.preheader.i.i48:                                 ; preds = %.lr.ph.i42, %.preheader.i.i48
  %.sroa.0.03.i.i49 = phi i32 [ %i.bd, %.preheader.i.i48 ], [ 0, %.lr.ph.i42 ]
  %i.bd = add nuw nsw i32 %.sroa.0.03.i.i49, 1    ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  %.sroa.0.0.highbits.i.i50 = lshr i32 %i.bd, %.sroa.0.02.i43
  %i.be = icmp eq i32 %.sroa.0.0.highbits.i.i50, 0
  br i1 %i.be, label %.preheader.i.i48, label %.loopexit.i.thread.i47

.loopexit.i.thread.i47:                           ; preds = %.preheader.i.i48, %.loopexit.i.i44
  %i.bf = add nuw nsw i32 %.sroa.0.02.i43, 1
  br label %_RNvMNtCsfI5zKgsrATz_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i45

_RNvMNtCsfI5zKgsrATz_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i45: ; preds = %.loopexit.i.thread.i47, %.loopexit.i.i44
  %.sroa.0.1.i46 = phi i32 [ %i.bf, %.loopexit.i.thread.i47 ], [ %.sroa.0.02.i43, %.loopexit.i.i44 ]
  %i.bg = load atomic i64, ptr %i.az acquire, align 8
  %10 = and i64 %i.bg, 1
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %.lr.ph.i42, label %_RNvMsb_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_4SlotNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE10wait_writeBX_.exit51

_RNvMsb_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_4SlotNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE10wait_writeBX_.exit51: ; preds = %_RNvMNtCsfI5zKgsrATz_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i45, %bb.g
  %i.bh = load <2 x ptr>, ptr %i.ay, align 8      ; 2 uses
  %i.bi = atomicrmw or ptr %i.az, i64 2 acq_rel, align 8
  %i.bj = and i64 %i.bi, 4
  %i.bk = icmp eq i64 %i.bj, 0
  br i1 %i.bk, label %_RNvMsc_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_5BlockNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE7destroyBY_.exit, label %bb.h

bb.h:                                             ; preds = %_RNvMsb_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_4SlotNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE10wait_writeBX_.exit51, %_RNvMsb_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_4SlotNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE10wait_writeBX_.exit
  %i.bl = phi <2 x ptr> [ %i.aw, %_RNvMsb_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_4SlotNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE10wait_writeBX_.exit ], [ %i.bh, %_RNvMsb_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_4SlotNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE10wait_writeBX_.exit51 ] ; 2 uses
  %.not4.i = icmp eq i64 %.lcssa57, 0
  br i1 %.not4.i, label %._crit_edge.i, label %.lr.ph.i52

._crit_edge.i:                                    ; preds = %bb.j, %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.lcssa59) ]
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.lcssa59, i64 noundef 1520, i64 noundef 8) #18
  br label %_RNvMsc_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_5BlockNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE7destroyBY_.exit

.lr.ph.i52:                                       ; preds = %bb.h, %bb.j
  %.sroa.0.05.i = phi i64 [ %i.bm, %bb.j ], [ %.lcssa57, %bb.h ]
  %i.bm = add nsw i64 %.sroa.0.05.i, -1           ; 3 uses
  %i.bn = getelementptr inbounds nuw [24 x i8], ptr %.lcssa59, i64 %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24 ; 2 uses
  %i.bp = load atomic i64, ptr %i.bo acquire, align 8
  %i.bq = and i64 %i.bp, 2
  %i.br = icmp eq i64 %i.bq, 0
  br i1 %i.br, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph.i52
  %i.bs = atomicrmw or ptr %i.bo, i64 4 acq_rel, align 8
  %i.bt = and i64 %i.bs, 2
  %i.bu = icmp eq i64 %i.bt, 0
  br i1 %i.bu, label %_RNvMsc_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_5BlockNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE7destroyBY_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.i52
  %.not.i = icmp eq i64 %i.bm, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i52

_RNvMsc_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_5BlockNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE7destroyBY_.exit: ; preds = %bb.i, %._crit_edge.i, %_RNvMsb_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_4SlotNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE10wait_writeBX_.exit51
  %i.bv = phi <2 x ptr> [ %i.bh, %_RNvMsb_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_4SlotNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE10wait_writeBX_.exit51 ], [ %i.bl, %._crit_edge.i ], [ %i.bl, %bb.i ] ; 2 uses
  %i.bw = extractelement <2 x ptr> %i.bv, i64 0
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bw) ]
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x ptr> %i.bv, ptr %i.bx, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.b, %bb.d, %_RNvMsc_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_5BlockNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE7destroyBY_.exit
  %storemerge56 = phi i64 [ 1, %_RNvMsc_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_5BlockNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE7destroyBY_.exit ], [ 0, %bb.b ], [ 2, %bb.d ]
  store i64 %storemerge56, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress norecurse nounwind nonlazybind willreturn uwtable
define hidden noundef zeroext i1 @_RNvMsg_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_8InjectorNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE8is_emptyB11_(ptr nofree noundef nonnull align 128 captures(none) %0) unnamed_addr #5 {
bb.a:
  %i.a = load atomic i64, ptr %0 seq_cst, align 128
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.c = load atomic i64, ptr %i.b seq_cst, align 128
  %.unshifted = xor i64 %i.c, %i.a
  %i.d = icmp ult i64 %.unshifted, 2
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define noundef range(i8 0, 3) i8 @_RNvNtCskVyUMSjkkSy_10rayon_core11thread_pool11yield_local() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCskVyUMSjkkSy_10rayon_core8registry19WORKER_THREAD_STATE0s_023___RUST_STD_INTERNAL_VAL)
  %.val.i.i = load ptr, ptr %i.a, align 8, !noalias !117, !noundef !5 ; 2 uses
  %i.b = icmp eq ptr %.val.i.i, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_RNvMs8_NtCskVyUMSjkkSy_10rayon_core8registryNtB5_12WorkerThread11yield_local(ptr noundef nonnull align 128 %.val.i.i)
  %i.d = zext i1 %i.c to i8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i8 [ %i.d, %bb.b ], [ 2, %bb.a ]
  ret i8 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define noundef range(i8 0, 3) i8 @_RNvNtCskVyUMSjkkSy_10rayon_core11thread_pool9yield_now() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCskVyUMSjkkSy_10rayon_core8registry19WORKER_THREAD_STATE0s_023___RUST_STD_INTERNAL_VAL)
  %.val.i.i = load ptr, ptr %i.a, align 8, !noalias !120, !noundef !5 ; 2 uses
  %i.b = icmp eq ptr %.val.i.i, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_RNvMs8_NtCskVyUMSjkkSy_10rayon_core8registryNtB5_12WorkerThread9yield_now(ptr noundef nonnull align 128 %.val.i.i)
  %i.d = zext i1 %i.c to i8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i8 [ %i.d, %bb.b ], [ 2, %bb.a ]
  ret i8 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXNvNtNtCs3oUPovFnLWP_4core2io5write17default_write_fmtINtB2_7AdapterNtNtNtNtCsaL1QbXo9JQH_3std3sys5stdio4unix6StderrENtNtB8_3fmt5Write9write_strCskVyUMSjkkSy_10rayon_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.c = tail call fastcc noundef ptr @_RNvYNtNtNtNtCsaL1QbXo9JQH_3std3sys5stdio4unix6StderrNtNtNtCs3oUPovFnLWP_4core2io5write5Write9write_allCskVyUMSjkkSy_10rayon_core(ptr noalias nofree noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) ; 3 uses
  %.not = icmp ne ptr %i.c, null                  ; 2 uses
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.val = load ptr, ptr %i.d, align 8, !noundef !5 ; 4 uses
  %i.e = icmp eq ptr %.val, null
  br i1 %i.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECskVyUMSjkkSy_10rayon_core.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !125
  %i.f = ptrtoint ptr %.val to i64                ; 2 uses
  %i.g = and i64 %i.f, 3
  switch i64 %i.g, label %default.unreachable [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskVyUMSjkkSy_10rayon_core.exit.i
    i64 3, label %bb.d
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskVyUMSjkkSy_10rayon_core.exit.i
    i64 1, label %bb.e
  ], !prof !10

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.h = icmp ult ptr %.val, inttoptr (i64 188978561024 to ptr)
  %i.i = and i64 %i.f, 1095216660480
  %i.j = icmp ne i64 %i.i, 1095216660480
  tail call void @llvm.assume(i1 %i.h)
  tail call void @llvm.assume(i1 %i.j)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskVyUMSjkkSy_10rayon_core.exit.i

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr i8, ptr %.val, i64 -1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !alias.scope !126, !noalias !125
  store i8 3, ptr %i.a, align 8, !alias.scope !126, !noalias !125
  invoke void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.l)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskVyUMSjkkSy_10rayon_core.exit.i unwind label %bb.g

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskVyUMSjkkSy_10rayon_core.exit.i: ; preds = %bb.e, %bb.d, %bb.c, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !125
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECskVyUMSjkkSy_10rayon_core.exit

bb.f:                                             ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECskVyUMSjkkSy_10rayon_core.exit
  ret i1 %.not

bb.g:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          cleanup
  store ptr %i.c, ptr %i.d, align 8
  resume { ptr, i32 } %i.m

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECskVyUMSjkkSy_10rayon_core.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskVyUMSjkkSy_10rayon_core.exit.i, %bb.b
  store ptr %i.c, ptr %i.d, align 8
  br label %bb.f
}

; Function Attrs: cold inlinehint noreturn nonlazybind uwtable
define internal fastcc void @_RNvXNvNtNtCsaL1QbXo9JQH_3std3sys12thread_local20abort_on_dtor_unwindNtB2_15DtorUnwindGuardNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop() unnamed_addr #6 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = call noundef ptr @_RNvYNtNtNtNtCsaL1QbXo9JQH_3std3sys5stdio4unix6StderrNtNtNtCs3oUPovFnLWP_4core2io5write5Write9write_fmtCskVyUMSjkkSy_10rayon_core(ptr noalias nofree noundef nonnull %i.a, ptr noundef nonnull @19, ptr noundef nonnull inttoptr (i64 123 to ptr))
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECskVyUMSjkkSy_10rayon_core(ptr %i.b)
  call void @_RNvNtCsaL1QbXo9JQH_3std7process5abort() #25
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NtCskVyUMSjkkSy_10rayon_core11thread_poolNtB5_10ThreadPoolNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 10)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.d = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 520
  %i.f = load i64, ptr %i.e, align 8, !noundef !5 ; 2 uses
  store i64 %i.f, ptr %i.b, align 8
  %i.g = icmp ult i64 %i.f, 192153584101141163
  call void @llvm.assume(i1 %i.g)
  %i.h = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @22, i64 noundef 11, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @21)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  %i.j = ptrtoint ptr %i.i to i64
  store i64 %i.j, ptr %i.a, align 8
  %i.k = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @24, i64 noundef 2, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @23)
  %i.l = call noundef zeroext i1 @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret i1 %i.l
}
end_hunk_1
