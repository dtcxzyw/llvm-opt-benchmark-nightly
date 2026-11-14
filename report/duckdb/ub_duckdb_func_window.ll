Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_func_window?download=true
inline.NumInlined: 11766
inline.NumDeleted: 5032
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 48
begin_hunk_0_@_ZN6duckdb22WindowCustomAggregator8FinalizeERNS_16ExecutionContextENS_12optional_ptrINS_16WindowCollectionELb1EEERKSt5arrayINS_10FrameDeltaELm2EERNS_17OperatorSinkInputE:bb.a
.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.g, %bb.f, %bb.m, %bb.d, %_ZN6duckdb16WindowAggregator8FinalizeERNS_16ExecutionContextENS_12optional_ptrINS_16WindowCollectionELb1EEERKSt5arrayINS_10FrameDeltaELm2EERNS_17OperatorSinkInputE.exit, %bb.c, %._crit_edge, %bb.p
  %lpad.loopexit.split-lp85 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.aa:                                            ; preds = %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i.i.i, %.noexc.i.i.i.i
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %_ZN6duckdb20WindowPartitionInputD2Ev.exit56

bb.ab:                                            ; preds = %bb.w, %_ZNK6duckdb15AggregateObject15GetFunctionDataEv.exit
  %i.cz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  %i.da = load ptr, ptr %i.bp, align 8, !tbaa !595 ; 2 uses
  %.not.i.i.i.i55 = icmp eq ptr %i.da, null
  br i1 %.not.i.i.i.i55, label %_ZN6duckdb20WindowPartitionInputD2Ev.exit56, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @_ZdlPv(ptr noundef nonnull %i.da) #30
  br label %_ZN6duckdb20WindowPartitionInputD2Ev.exit56

_ZN6duckdb20WindowPartitionInputD2Ev.exit56:      ; preds = %bb.ac, %bb.ab, %bb.aa
  %.pn = phi { ptr, i32 } [ %i.cy, %bb.aa ], [ %i.cz, %bb.ab ], [ %i.cz, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  br label %.loopexit.split-lp

bb.ad:                                            ; preds = %_ZN6duckdb20WindowPartitionInputD2Ev.exit, %_ZNSt10unique_ptrIN6duckdb14LocalSinkStateESt14default_deleteIS1_EED2Ev.exit
  %i.db = atomicrmw add ptr %i.d, i64 1 seq_cst, align 8 ; 0 uses
  br label %bb.ae

bb.ae:                                            ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, %bb.ad
  %i.dc = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #29 ; 0 uses
  ret void

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZN6duckdb20WindowPartitionInputD2Ev.exit56, %bb.z
  %.pn43.pn.pn.pn = phi { ptr, i32 } [ %i.cx, %bb.z ], [ %.pn, %_ZN6duckdb20WindowPartitionInputD2Ev.exit56 ], [ %lpad.loopexit.split-lp85, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.dd = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #29 ; 0 uses
  resume { ptr, i32 } %.pn43.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZNK6duckdb13ValidityArray4PackERNS_12ValidityMaskEm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %2) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 !guid !1550 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !614
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 16, i1 false)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !509  ; 8 uses
  store ptr null, ptr %i.b, align 8, !tbaa !509
  %.not.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb21TemplatedValidityMaskImE5ResetEm.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %i.e = load atomic i64, ptr %i.d acquire, align 8 ; 2 uses
  %i.f = icmp eq i64 %i.e, 4294967297
  %i.g = trunc i64 %i.e to i32                    ; 2 uses
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.d, align 8, !tbaa !554
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 0, ptr %i.h, align 4, !tbaa !555
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !437
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #29, !inline_history !1545
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !437
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #29, !inline_history !1545
  br label %_ZN6duckdb21TemplatedValidityMaskImE5ResetEm.exit

bb.e:                                             ; preds = %bb.c
  %i.o = load i8, ptr @__libc_single_threaded, align 1, !tbaa !511
  %.not.i.i.i.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = add nsw i32 %i.g, -1
  store i32 %i.p, ptr %i.d, align 8, !tbaa !79
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.q = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.g, %bb.f ], [ %i.q, %bb.g ]
  %i.r = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.r, label %bb.h, label %_ZN6duckdb21TemplatedValidityMaskImE5ResetEm.exit, !prof !458

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #29
  br label %_ZN6duckdb21TemplatedValidityMaskImE5ResetEm.exit

_ZN6duckdb21TemplatedValidityMaskImE5ResetEm.exit: ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %2, ptr %i.s, align 8, !tbaa !783
  br label %bb.n

bb.i:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %2)
  %i.t = lshr i64 %2, 6                           ; 2 uses
  %i.u = and i64 %2, 63                           ; 2 uses
  %i.v = load ptr, ptr %1, align 8, !tbaa !644    ; 2 uses
  %.not46 = icmp eq i64 %i.t, 0
  br i1 %.not46, label %._crit_edge, label %.preheader35.lr.ph

.preheader35.lr.ph:                               ; preds = %bb.i
  %i.w = load ptr, ptr %0, align 8, !tbaa !614    ; 4 uses
  br label %.preheader35

.preheader35:                                     ; preds = %.preheader35.lr.ph, %bb.j
  %.03041 = phi i64 [ 0, %.preheader35.lr.ph ], [ %i.ab, %bb.j ]
  %.03140 = phi i64 [ 0, %.preheader35.lr.ph ], [ %i.z, %bb.j ] ; 2 uses
  %.03339 = phi ptr [ %i.v, %.preheader35.lr.ph ], [ %i.aa, %bb.j ] ; 2 uses
  br label %bb.k

._crit_edge:                                      ; preds = %bb.j, %bb.i
  %.033.lcssa = phi ptr [ %i.v, %bb.i ], [ %i.aa, %bb.j ]
  %.031.lcssa = phi i64 [ 0, %bb.i ], [ %i.z, %bb.j ] ; 2 uses
  %.not = icmp eq i64 %i.u, 0
  br i1 %.not, label %bb.n, label %.preheader

.preheader:                                       ; preds = %._crit_edge
  %i.x = load ptr, ptr %0, align 8, !tbaa !614    ; 5 uses
  %xtraiter = and i64 %2, 3                       ; 3 uses
  %i.y = icmp samesign ult i64 %i.u, 4
  br i1 %i.y, label %.epil.preheader, label %.preheader.new

.preheader.new:                                   ; preds = %.preheader
  %unroll_iter = and i64 %2, 60
  br label %bb.m

bb.j:                                             ; preds = %bb.k
  %i.z = add nuw i64 %.03140, 64                  ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.03339, i64 8 ; 2 uses
  store i64 %.129.3, ptr %.03339, align 8, !tbaa !507
  %i.ab = add nuw nsw i64 %.03041, 1              ; 2 uses
  %exitcond48.not = icmp eq i64 %i.ab, %i.t
  br i1 %exitcond48.not, label %._crit_edge, label %.preheader35, !llvm.loop !1546

bb.k:                                             ; preds = %bb.k, %.preheader35
  %.02738 = phi i64 [ 0, %.preheader35 ], [ %i.ba, %bb.k ] ; 5 uses
  %.02837 = phi i64 [ 0, %.preheader35 ], [ %.129.3, %bb.k ]
  %.13236 = phi i64 [ %.03140, %.preheader35 ], [ %i.at, %bb.k ] ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 %.13236
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !633, !range !343, !noundef !344
  %i.ae = trunc nuw i8 %i.ad to i1
  %i.af = shl nuw i64 1, %.02738
  %i.ag = select i1 %i.ae, i64 %i.af, i64 0
  %.129 = or i64 %i.ag, %.02837
  %i.ah = getelementptr inbounds nuw i8, ptr %i.w, i64 %.13236
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 1
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !633, !range !343, !noundef !344
  %i.ak = trunc nuw i8 %i.aj to i1
  %i.al = shl nuw i64 2, %.02738
  %i.am = select i1 %i.ak, i64 %i.al, i64 0
  %.129.1 = or i64 %i.am, %.129
  %i.an = getelementptr inbounds nuw i8, ptr %i.w, i64 %.13236
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 2
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !633, !range !343, !noundef !344
  %i.aq = trunc nuw i8 %i.ap to i1
  %i.ar = shl nuw i64 4, %.02738
  %i.as = select i1 %i.aq, i64 %i.ar, i64 0
  %.129.2 = or i64 %i.as, %.129.1
  %i.at = add nuw i64 %.13236, 4
  %i.au = getelementptr inbounds nuw i8, ptr %i.w, i64 %.13236
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 3
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !633, !range !343, !noundef !344
  %i.ax = trunc nuw i8 %i.aw to i1
  %i.ay = shl nuw i64 8, %.02738
  %i.az = select i1 %i.ax, i64 %i.ay, i64 0
  %.129.3 = or i64 %i.az, %.129.2                 ; 2 uses
  %i.ba = add nuw nsw i64 %.02738, 4              ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.ba, 64
  br i1 %exitcond.not.3, label %bb.j, label %bb.k, !llvm.loop !1547

.unr-lcssa:                                       ; preds = %bb.m
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.preheader
  %.045.epil.init = phi i64 [ 0, %.preheader ], [ %i.cg, %.unr-lcssa ]
  %.02644.epil.init = phi i64 [ 0, %.preheader ], [ %.1.3, %.unr-lcssa ]
  %.243.epil.init = phi i64 [ %.031.lcssa, %.preheader ], [ %i.bz, %.unr-lcssa ]
  %lcmp.mod57 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod57)
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.epil.preheader
  %.045.epil = phi i64 [ %.045.epil.init, %.epil.preheader ], [ %i.bh, %bb.l ] ; 2 uses
  %.02644.epil = phi i64 [ %.02644.epil.init, %.epil.preheader ], [ %.1.epil, %bb.l ]
  %.243.epil = phi i64 [ %.243.epil.init, %.epil.preheader ], [ %i.bb, %bb.l ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.l ]
  %i.bb = add nuw nsw i64 %.243.epil, 1
  %i.bc = getelementptr inbounds nuw i8, ptr %i.x, i64 %.243.epil
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !633, !range !343, !noundef !344
  %i.be = trunc nuw i8 %i.bd to i1
  %i.bf = shl nuw nsw i64 1, %.045.epil
  %i.bg = select i1 %i.be, i64 %i.bf, i64 0
  %.1.epil = or i64 %i.bg, %.02644.epil           ; 2 uses
  %i.bh = add nuw nsw i64 %.045.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.l, !llvm.loop !1548

.epilog-lcssa:                                    ; preds = %bb.l, %.unr-lcssa
  %.1.lcssa = phi i64 [ %.1.3, %.unr-lcssa ], [ %.1.epil, %bb.l ]
  store i64 %.1.lcssa, ptr %.033.lcssa, align 8, !tbaa !507
  br label %bb.n

bb.m:                                             ; preds = %bb.m, %.preheader.new
  %.045 = phi i64 [ 0, %.preheader.new ], [ %i.cg, %bb.m ] ; 5 uses
  %.02644 = phi i64 [ 0, %.preheader.new ], [ %.1.3, %bb.m ]
  %.243 = phi i64 [ %.031.lcssa, %.preheader.new ], [ %i.bz, %bb.m ] ; 5 uses
  %niter = phi i64 [ 0, %.preheader.new ], [ %niter.next.3, %bb.m ]
  %i.bi = getelementptr inbounds nuw i8, ptr %i.x, i64 %.243
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !633, !range !343, !noundef !344
  %i.bk = trunc nuw i8 %i.bj to i1
  %i.bl = shl nuw nsw i64 1, %.045
  %i.bm = select i1 %i.bk, i64 %i.bl, i64 0
  %.1 = or i64 %i.bm, %.02644
  %i.bn = getelementptr inbounds nuw i8, ptr %i.x, i64 %.243
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 1
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !633, !range !343, !noundef !344
  %i.bq = trunc nuw i8 %i.bp to i1
  %i.br = shl nuw nsw i64 2, %.045
  %i.bs = select i1 %i.bq, i64 %i.br, i64 0
  %.1.1 = or i64 %i.bs, %.1
  %i.bt = getelementptr inbounds nuw i8, ptr %i.x, i64 %.243
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 2
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !633, !range !343, !noundef !344
  %i.bw = trunc nuw i8 %i.bv to i1
  %i.bx = shl nuw nsw i64 4, %.045
  %i.by = select i1 %i.bw, i64 %i.bx, i64 0
  %.1.2 = or i64 %i.by, %.1.1
  %i.bz = add nuw nsw i64 %.243, 4                ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.x, i64 %.243
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 3
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !633, !range !343, !noundef !344
  %i.cd = trunc nuw i8 %i.cc to i1
  %i.ce = shl nuw nsw i64 8, %.045
  %i.cf = select i1 %i.cd, i64 %i.ce, i64 0
  %.1.3 = or i64 %i.cf, %.1.2                     ; 3 uses
  %i.cg = add nuw nsw i64 %.045, 4                ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.unr-lcssa, label %bb.m, !llvm.loop !1549

bb.n:                                             ; preds = %._crit_edge, %.epilog-lcssa, %_ZN6duckdb21TemplatedValidityMaskImE5ResetEm.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK6duckdb10unique_ptrINS_14LocalSinkStateESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !guid !1551 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !503    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_14LocalSinkStateESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit, !prof !458

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #29 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.20, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !445    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #29
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10unique_ptrINS_14LocalSinkStateESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6duckdb22WindowCustomAggregator13GetLocalStateERNS_16ExecutionContextERKNS_15GlobalSinkStateE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::unique_ptr.266") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(520) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr nofree nonnull readnone align 8 captures(none) %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !guid !1554 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 488
  %i.c = tail call noalias noundef nonnull dereferenceable(696) ptr @_Znwm(i64 noundef 696) #32, !noalias !1555 ; 3 uses
  %i.d = load i8, ptr %i.b, align 8, !tbaa !1556, !noalias !1555
  invoke void @_ZN6duckdb32WindowCustomAggregatorLocalStateC1ERNS_16ExecutionContextERKNS_15AggregateObjectENS_17WindowExcludeModeE(ptr noundef nonnull align 8 dereferenceable(696) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(416) %i.a, i8 noundef zeroext %i.d)
          to label %_ZNSt10unique_ptrIN6duckdb32WindowCustomAggregatorLocalStateESt14default_deleteIS1_EED2Ev.exit unwind label %bb.b, !noalias !1555

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #30, !noalias !1555
  resume { ptr, i32 } %i.e

_ZNSt10unique_ptrIN6duckdb32WindowCustomAggregatorLocalStateESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.a
  store ptr %i.c, ptr %0, align 8, !tbaa !499
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6duckdb22WindowCustomAggregator8EvaluateERNS_16ExecutionContextERKNS_9DataChunkERNS_6VectorEmmRNS_17OperatorSinkInputE(ptr noundef nonnull align 8 dereferenceable(520) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %4, i64 noundef %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %6) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !guid !1559 {
bb.a:
  %7 = alloca %"struct.duckdb::AggregateInputData", align 8 ; 10 uses
  %8 = alloca %"class.duckdb::optional_ptr.355", align 8 ; 8 uses
  %9 = alloca %"struct.duckdb::WindowPartitionInput", align 8 ; 15 uses
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !502, !nonnull !344, !align !494 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 672 ; 6 uses
  %i.d = load ptr, ptr %6, align 8, !tbaa !501, !nonnull !344, !align !494 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 704 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !503
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_14LocalSinkStateESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 544
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !557
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.i, %bb.b ], [ null, %bb.a ]  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 712
  %i.k = load i64, ptr %i.j, align 8, !tbaa !784
  store i64 %i.k, ptr %8, align 8, !tbaa !784
  call void @_ZNK6duckdb12optional_ptrINS_16WindowCollectionELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %8)
  %i.l = load ptr, ptr %8, align 8, !tbaa !641
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !762
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 720
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 672
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 760
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  call void @_ZNK6duckdb12optional_ptrINS_16WindowCollectionELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %8)
  %i.q = load ptr, ptr %8, align 8, !tbaa !641
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 80
  %i.s = load i64, ptr %i.r, align 8, !tbaa !760
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !504, !nonnull !344, !align !494
  store ptr %1, ptr %9, align 8, !tbaa !832
  %i.w = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.m, ptr %i.w, align 8, !tbaa !836
  %i.x = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 %i.s, ptr %i.x, align 8, !tbaa !837
  %i.y = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 504 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !597 ; 2 uses
  %i.ab = load ptr, ptr %i.t, align 8, !tbaa !595 ; 3 uses
  %i.ac = ptrtoint ptr %i.aa to i64               ; 2 uses
  %i.ad = ptrtoint ptr %i.ab to i64               ; 2 uses
  %i.ae = sub i64 %i.ac, %i.ad                    ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.aa, %i.ab
  br i1 %.not.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.af = icmp ugt i64 %i.ae, 9223372036854775800
  br i1 %i.af, label %.noexc.i.i.i.i, label %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i.i.i, !prof !458

.noexc.i.i.i.i:                                   ; preds = %bb.d
  call void @_ZSt28__throw_bad_array_new_lengthv() #31
  unreachable

_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i.i.i: ; preds = %bb.d
  %i.ag = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #32
  %.pre = load ptr, ptr %i.t, align 8, !tbaa !643 ; 2 uses
  %.pre54 = load ptr, ptr %i.z, align 8, !tbaa !643
  %.pre55 = ptrtoint ptr %.pre54 to i64
  %.pre56 = ptrtoint ptr %.pre to i64
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i.i.i, %bb.c
  %.pre-phi57 = phi i64 [ %.pre56, %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i.i.i ], [ %i.ad, %bb.c ]
  %.pre-phi = phi i64 [ %.pre55, %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i.i.i ], [ %i.ac, %bb.c ]
  %i.ah = phi ptr [ %.pre, %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i.i.i ], [ %i.ab, %bb.c ] ; 2 uses
  %i.ai = phi ptr [ %i.ag, %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i.i.i ], [ null, %bb.c ] ; 5 uses
  store ptr %i.ai, ptr %i.y, align 8, !tbaa !595
  %i.aj = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ae
  %i.al = getelementptr inbounds nuw i8, ptr %9, i64 40
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !598
  %i.am = sub i64 %.pre-phi, %.pre-phi57          ; 4 uses
  %i.an = icmp sgt i64 %i.am, 8
  br i1 %i.an, label %bb.f, label %bb.g, !prof !508

bb.f:                                             ; preds = %bb.e
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ai, ptr align 8 %i.ah, i64 %i.am, i1 false)
  br label %_ZN6duckdb20WindowPartitionInputC2ERNS_16ExecutionContextEPKNS_20ColumnDataCollectionEmRKNS_6vectorImLb1ESaImEEERKNS6_IbLb1ESaIbEEERKNS_12ValidityMaskERKSt5arrayINS_10FrameDeltaELm2EERNS_14InterruptStateE.exit

bb.g:                                             ; preds = %bb.e
  %i.ao = icmp eq i64 %i.am, 8
  br i1 %i.ao, label %bb.h, label %_ZN6duckdb20WindowPartitionInputC2ERNS_16ExecutionContextEPKNS_20ColumnDataCollectionEmRKNS_6vectorImLb1ESaImEEERKNS6_IbLb1ESaIbEEERKNS_12ValidityMaskERKSt5arrayINS_10FrameDeltaELm2EERNS_14InterruptStateE.exit

bb.h:                                             ; preds = %bb.g
  %i.ap = load i64, ptr %i.ah, align 8, !tbaa !507
  store i64 %i.ap, ptr %i.ai, align 8, !tbaa !507
  br label %_ZN6duckdb20WindowPartitionInputC2ERNS_16ExecutionContextEPKNS_20ColumnDataCollectionEmRKNS_6vectorImLb1ESaImEEERKNS6_IbLb1ESaIbEEERKNS_12ValidityMaskERKSt5arrayINS_10FrameDeltaELm2EERNS_14InterruptStateE.exit
end_hunk_0
