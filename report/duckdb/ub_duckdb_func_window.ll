inline.NumInlined: 11767
inline.NumDeleted: 5033
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 48
begin_hunk_0_@_ZN6duckdb22WindowCustomAggregator8FinalizeERNS_16ExecutionContextENS_12optional_ptrINS_16WindowCollectionELb1EEERKSt5arrayINS_10FrameDeltaELm2EERNS_17OperatorSinkInputE:bb.a
  store ptr %i.cf, ptr %i.cg, align 8, !tbaa !357
  %i.ch = icmp samesign ugt i64 %i.by, 8
  br i1 %i.ch, label %bb.w, label %bb.x, !prof !407

bb.w:                                             ; preds = %.noexc52
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cd, ptr align 8 %i.bv, i64 %i.by, i1 false)
  br label %bb.z

bb.x:                                             ; preds = %.noexc52
  %i.ci = icmp eq i64 %i.by, 8
  br i1 %i.ci, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.cj = load i64, ptr %i.bv, align 8, !tbaa !252
  store i64 %i.cj, ptr %i.cd, align 8, !tbaa !252
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.w, %.thread
  %i.ck = phi ptr [ %i.cf, %bb.w ], [ %i.cf, %bb.x ], [ %i.cf, %bb.y ], [ %i.ca, %.thread ]
  %i.cl = phi ptr [ %i.ce, %bb.w ], [ %i.ce, %bb.x ], [ %i.ce, %bb.y ], [ %i.bz, %.thread ]
  store ptr %i.ck, ptr %i.cl, align 8, !tbaa !356
  %i.cm = getelementptr inbounds nuw i8, ptr %7, i64 48
  store ptr %i.s, ptr %i.cm, align 8, !tbaa !802
  %i.cn = getelementptr inbounds nuw i8, ptr %7, i64 56
  store ptr %i.aa, ptr %i.cn, align 8, !tbaa !230
  %i.co = getelementptr inbounds nuw i8, ptr %7, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.co, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !tbaa.struct !803
  %i.cp = getelementptr inbounds nuw i8, ptr %7, i64 96
  store ptr %i.bq, ptr %i.cp, align 8, !tbaa !249
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 2 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !335
  %.not.i53 = icmp eq ptr %i.cr, null
  br i1 %.not.i53, label %_ZNK6duckdb15AggregateObject15GetFunctionDataEv.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cs = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_19FunctionDataWrapperELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cq)
          to label %.noexc54 unwind label %bb.ah

.noexc54:                                         ; preds = %bb.aa
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !336
  br label %_ZNK6duckdb15AggregateObject15GetFunctionDataEv.exit

_ZNK6duckdb15AggregateObject15GetFunctionDataEv.exit: ; preds = %.noexc54, %bb.z
  %i.cu = phi ptr [ %i.ct, %.noexc54 ], [ null, %bb.z ]
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bo, i64 48
  store ptr %i.cu, ptr %8, align 8, !tbaa !336
  %i.cw = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.cv, ptr %i.cw, align 8, !tbaa !337
  %i.cx = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i8 1, ptr %i.cx, align 8, !tbaa !339
  %i.cy = load ptr, ptr %i.bm, align 8, !tbaa !794
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bo, i64 544
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !311
  invoke void %i.cy(ptr noundef nonnull align 8 dereferenceable(17) %8, ptr noundef nonnull align 8 dereferenceable(104) %7, ptr noundef %i.da)
          to label %bb.ab unwind label %bb.ah

bb.ab:                                            ; preds = %_ZNK6duckdb15AggregateObject15GetFunctionDataEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  %i.db = load ptr, ptr %i.bt, align 8, !tbaa !353 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.db, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb20WindowPartitionInputD2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @_ZdlPv(ptr noundef nonnull %i.db) #30
  br label %_ZN6duckdb20WindowPartitionInputD2Ev.exit

_ZN6duckdb20WindowPartitionInputD2Ev.exit:        ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  br label %bb.aj

bb.ad:                                            ; preds = %._crit_edge
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.ae:                                            ; preds = %bb.r
  %i.dd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  br label %bb.al

bb.af:                                            ; preds = %bb.t
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.ag:                                            ; preds = %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i.i.i, %.noexc.i.i.i.i
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %_ZN6duckdb20WindowPartitionInputD2Ev.exit56

bb.ah:                                            ; preds = %bb.aa, %_ZNK6duckdb15AggregateObject15GetFunctionDataEv.exit
  %i.dg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  %i.dh = load ptr, ptr %i.bt, align 8, !tbaa !353 ; 2 uses
  %.not.i.i.i.i55 = icmp eq ptr %i.dh, null
  br i1 %.not.i.i.i.i55, label %_ZN6duckdb20WindowPartitionInputD2Ev.exit56, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @_ZdlPv(ptr noundef nonnull %i.dh) #30
  br label %_ZN6duckdb20WindowPartitionInputD2Ev.exit56

_ZN6duckdb20WindowPartitionInputD2Ev.exit56:      ; preds = %bb.ai, %bb.ah, %bb.ag
  %.pn = phi { ptr, i32 } [ %i.df, %bb.ag ], [ %i.dg, %bb.ah ], [ %i.dg, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  br label %bb.al

bb.aj:                                            ; preds = %_ZN6duckdb20WindowPartitionInputD2Ev.exit, %_ZNSt10unique_ptrIN6duckdb14LocalSinkStateESt14default_deleteIS1_EED2Ev.exit
  %i.di = atomicrmw add ptr %i.d, i64 1 seq_cst, align 8 ; 0 uses
  br label %bb.ak

bb.ak:                                            ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, %bb.aj
  %i.dj = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #29 ; 0 uses
  ret void

bb.al:                                            ; preds = %bb.g, %bb.q, %bb.af, %_ZN6duckdb20WindowPartitionInputD2Ev.exit56, %bb.ae, %bb.ad, %bb.h, %bb.f
  %.pn43.pn.pn.pn = phi { ptr, i32 } [ %i.ad, %bb.f ], [ %i.ae, %bb.g ], [ %i.af, %bb.h ], [ %i.az, %bb.q ], [ %i.dc, %bb.ad ], [ %i.dd, %bb.ae ], [ %.pn, %_ZN6duckdb20WindowPartitionInputD2Ev.exit56 ], [ %i.de, %bb.af ]
  %i.dk = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #29 ; 0 uses
  resume { ptr, i32 } %.pn43.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZNK6duckdb13ValidityArray4PackERNS_12ValidityMaskEm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %2) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !374
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 16, i1 false)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !261  ; 8 uses
  store ptr null, ptr %i.b, align 8, !tbaa !261
  %.not.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb21TemplatedValidityMaskImE5ResetEm.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %i.e = load atomic i64, ptr %i.d acquire, align 8 ; 2 uses
  %i.f = icmp eq i64 %i.e, 4294967297
  %i.g = trunc i64 %i.e to i32                    ; 2 uses
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.d, align 8, !tbaa !305
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 0, ptr %i.h, align 4, !tbaa !307
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !135
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #29, !inline_history !804
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !135
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #29, !inline_history !804
  br label %_ZN6duckdb21TemplatedValidityMaskImE5ResetEm.exit

bb.e:                                             ; preds = %bb.c
  %i.o = load i8, ptr @__libc_single_threaded, align 1, !tbaa !263
  %.not.i.i.i.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = add nsw i32 %i.g, -1
  store i32 %i.p, ptr %i.d, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.q = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.g, %bb.f ], [ %i.q, %bb.g ]
  %i.r = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.r, label %bb.h, label %_ZN6duckdb21TemplatedValidityMaskImE5ResetEm.exit, !prof !193

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #29
  br label %_ZN6duckdb21TemplatedValidityMaskImE5ResetEm.exit

_ZN6duckdb21TemplatedValidityMaskImE5ResetEm.exit: ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %2, ptr %i.s, align 8, !tbaa !675
  br label %bb.n

bb.i:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %2)
  %i.t = lshr i64 %2, 6                           ; 2 uses
  %i.u = and i64 %2, 63                           ; 2 uses
  %i.v = load ptr, ptr %1, align 8, !tbaa !408    ; 2 uses
  %.not46 = icmp eq i64 %i.t, 0
  br i1 %.not46, label %._crit_edge, label %.preheader35.lr.ph

.preheader35.lr.ph:                               ; preds = %bb.i
  %i.w = load ptr, ptr %0, align 8, !tbaa !374    ; 4 uses
  br label %.preheader35

.preheader35:                                     ; preds = %.preheader35.lr.ph, %bb.j
  %.03041 = phi i64 [ 0, %.preheader35.lr.ph ], [ %i.aa, %bb.j ]
  %.03140 = phi i64 [ 0, %.preheader35.lr.ph ], [ %3, %bb.j ] ; 2 uses
  %.03339 = phi ptr [ %i.v, %.preheader35.lr.ph ], [ %i.z, %bb.j ] ; 2 uses
  br label %bb.k

._crit_edge:                                      ; preds = %bb.j, %bb.i
  %.033.lcssa = phi ptr [ %i.v, %bb.i ], [ %i.z, %bb.j ]
  %.031.lcssa = phi i64 [ 0, %bb.i ], [ %3, %bb.j ] ; 2 uses
  %.not = icmp eq i64 %i.u, 0
  br i1 %.not, label %bb.n, label %.preheader

.preheader:                                       ; preds = %._crit_edge
  %i.x = load ptr, ptr %0, align 8, !tbaa !374    ; 5 uses
  %xtraiter = and i64 %2, 3                       ; 3 uses
  %i.y = icmp samesign ult i64 %i.u, 4
  br i1 %i.y, label %.epil.preheader, label %.preheader.new

.preheader.new:                                   ; preds = %.preheader
  %unroll_iter = and i64 %2, 60
  br label %bb.m

bb.j:                                             ; preds = %bb.k
  %3 = add nuw i64 %.03140, 64                    ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.03339, i64 8 ; 2 uses
  store i64 %.129.3, ptr %.03339, align 8, !tbaa !252
  %i.aa = add nuw nsw i64 %.03041, 1              ; 2 uses
  %exitcond48.not = icmp eq i64 %i.aa, %i.t
  br i1 %exitcond48.not, label %._crit_edge, label %.preheader35, !llvm.loop !805

bb.k:                                             ; preds = %bb.k, %.preheader35
  %.02738 = phi i64 [ 0, %.preheader35 ], [ %i.az, %bb.k ] ; 5 uses
  %.02837 = phi i64 [ 0, %.preheader35 ], [ %.129.3, %bb.k ]
  %.13236 = phi i64 [ %.03140, %.preheader35 ], [ %i.as, %bb.k ] ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 %.13236
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !396, !range !41, !noundef !42
  %i.ad = trunc nuw i8 %i.ac to i1
  %i.ae = shl nuw i64 1, %.02738
  %i.af = select i1 %i.ad, i64 %i.ae, i64 0
  %.129 = or i64 %i.af, %.02837
  %i.ag = getelementptr inbounds nuw i8, ptr %i.w, i64 %.13236
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 1
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !396, !range !41, !noundef !42
  %i.aj = trunc nuw i8 %i.ai to i1
  %i.ak = shl nuw i64 2, %.02738
  %i.al = select i1 %i.aj, i64 %i.ak, i64 0
  %.129.1 = or i64 %i.al, %.129
  %i.am = getelementptr inbounds nuw i8, ptr %i.w, i64 %.13236
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 2
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !396, !range !41, !noundef !42
  %i.ap = trunc nuw i8 %i.ao to i1
  %i.aq = shl nuw i64 4, %.02738
  %i.ar = select i1 %i.ap, i64 %i.aq, i64 0
  %.129.2 = or i64 %i.ar, %.129.1
  %i.as = add nuw i64 %.13236, 4
  %i.at = getelementptr inbounds nuw i8, ptr %i.w, i64 %.13236
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 3
  %i.av = load i8, ptr %i.au, align 1, !tbaa !396, !range !41, !noundef !42
  %i.aw = trunc nuw i8 %i.av to i1
  %i.ax = shl nuw i64 8, %.02738
  %i.ay = select i1 %i.aw, i64 %i.ax, i64 0
  %.129.3 = or i64 %i.ay, %.129.2                 ; 2 uses
  %i.az = add nuw nsw i64 %.02738, 4              ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.az, 64
  br i1 %exitcond.not.3, label %bb.j, label %bb.k, !llvm.loop !806

.unr-lcssa:                                       ; preds = %bb.m
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.preheader
  %.045.epil.init = phi i64 [ 0, %.preheader ], [ %i.cf, %.unr-lcssa ]
  %.02644.epil.init = phi i64 [ 0, %.preheader ], [ %.1.3, %.unr-lcssa ]
  %.243.epil.init = phi i64 [ %.031.lcssa, %.preheader ], [ %i.by, %.unr-lcssa ]
  %lcmp.mod57 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod57)
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.epil.preheader
  %.045.epil = phi i64 [ %.045.epil.init, %.epil.preheader ], [ %i.bg, %bb.l ] ; 2 uses
  %.02644.epil = phi i64 [ %.02644.epil.init, %.epil.preheader ], [ %.1.epil, %bb.l ]
  %.243.epil = phi i64 [ %.243.epil.init, %.epil.preheader ], [ %i.ba, %bb.l ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.l ]
  %i.ba = add nsw i64 %.243.epil, 1
  %i.bb = getelementptr inbounds nuw i8, ptr %i.x, i64 %.243.epil
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !396, !range !41, !noundef !42
  %i.bd = trunc nuw i8 %i.bc to i1
  %i.be = shl nuw nsw i64 1, %.045.epil
  %i.bf = select i1 %i.bd, i64 %i.be, i64 0
  %.1.epil = or i64 %i.bf, %.02644.epil           ; 2 uses
  %i.bg = add nuw nsw i64 %.045.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.l, !llvm.loop !807

.epilog-lcssa:                                    ; preds = %bb.l, %.unr-lcssa
  %.1.lcssa = phi i64 [ %.1.3, %.unr-lcssa ], [ %.1.epil, %bb.l ]
  store i64 %.1.lcssa, ptr %.033.lcssa, align 8, !tbaa !252
  br label %bb.n

bb.m:                                             ; preds = %bb.m, %.preheader.new
  %.045 = phi i64 [ 0, %.preheader.new ], [ %i.cf, %bb.m ] ; 5 uses
  %.02644 = phi i64 [ 0, %.preheader.new ], [ %.1.3, %bb.m ]
  %.243 = phi i64 [ %.031.lcssa, %.preheader.new ], [ %i.by, %bb.m ] ; 5 uses
  %niter = phi i64 [ 0, %.preheader.new ], [ %niter.next.3, %bb.m ]
  %i.bh = getelementptr inbounds nuw i8, ptr %i.x, i64 %.243
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !396, !range !41, !noundef !42
  %i.bj = trunc nuw i8 %i.bi to i1
  %i.bk = shl nuw nsw i64 1, %.045
  %i.bl = select i1 %i.bj, i64 %i.bk, i64 0
  %.1 = or i64 %i.bl, %.02644
  %i.bm = getelementptr i8, ptr %i.x, i64 %.243
  %i.bn = getelementptr i8, ptr %i.bm, i64 1
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !396, !range !41, !noundef !42
  %i.bp = trunc nuw i8 %i.bo to i1
  %i.bq = shl nuw nsw i64 2, %.045
  %i.br = select i1 %i.bp, i64 %i.bq, i64 0
  %.1.1 = or i64 %i.br, %.1
  %i.bs = getelementptr i8, ptr %i.x, i64 %.243
  %i.bt = getelementptr i8, ptr %i.bs, i64 2
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !396, !range !41, !noundef !42
  %i.bv = trunc nuw i8 %i.bu to i1
  %i.bw = shl nuw nsw i64 4, %.045
  %i.bx = select i1 %i.bv, i64 %i.bw, i64 0
  %.1.2 = or i64 %i.bx, %.1.1
  %i.by = add nsw i64 %.243, 4                    ; 2 uses
  %i.bz = getelementptr i8, ptr %i.x, i64 %.243
  %i.ca = getelementptr i8, ptr %i.bz, i64 3
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !396, !range !41, !noundef !42
  %i.cc = trunc nuw i8 %i.cb to i1
  %i.cd = shl nuw nsw i64 8, %.045
  %i.ce = select i1 %i.cc, i64 %i.cd, i64 0
  %.1.3 = or i64 %i.ce, %.1.2                     ; 3 uses
  %i.cf = add nuw nsw i64 %.045, 4                ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.unr-lcssa, label %bb.m, !llvm.loop !808

bb.n:                                             ; preds = %._crit_edge, %.epilog-lcssa, %_ZN6duckdb21TemplatedValidityMaskImE5ResetEm.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK6duckdb10unique_ptrINS_14LocalSinkStateESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !247    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_14LocalSinkStateESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit, !prof !193

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
  %i.e = load ptr, ptr %1, align 8, !tbaa !156    ; 2 uses
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
define void @_ZNK6duckdb22WindowCustomAggregator13GetLocalStateERNS_16ExecutionContextERKNS_15GlobalSinkStateE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::unique_ptr.266") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(520) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr nofree nonnull readnone align 8 captures(none) %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 488
  %i.c = tail call noalias noundef nonnull dereferenceable(696) ptr @_Znwm(i64 noundef 696) #32, !noalias !809 ; 3 uses
  %i.d = load i8, ptr %i.b, align 8, !tbaa !812, !noalias !809
  invoke void @_ZN6duckdb32WindowCustomAggregatorLocalStateC1ERNS_16ExecutionContextERKNS_15AggregateObjectENS_17WindowExcludeModeE(ptr noundef nonnull align 8 dereferenceable(696) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(416) %i.a, i8 noundef zeroext %i.d)
          to label %_ZNSt10unique_ptrIN6duckdb32WindowCustomAggregatorLocalStateESt14default_deleteIS1_EED2Ev.exit unwind label %bb.b, !noalias !809

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #30, !noalias !809
  resume { ptr, i32 } %i.e

_ZNSt10unique_ptrIN6duckdb32WindowCustomAggregatorLocalStateESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.a
  store ptr %i.c, ptr %0, align 8, !tbaa !241
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6duckdb22WindowCustomAggregator8EvaluateERNS_16ExecutionContextERKNS_9DataChunkERNS_6VectorEmmRNS_17OperatorSinkInputE(ptr noundef nonnull align 8 dereferenceable(520) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %4, i64 noundef %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %6) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"struct.duckdb::AggregateInputData", align 8 ; 10 uses
  %8 = alloca %"class.duckdb::optional_ptr.355", align 8 ; 8 uses
  %9 = alloca %"struct.duckdb::WindowPartitionInput", align 8 ; 17 uses
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !246, !nonnull !42, !align !232 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 672 ; 6 uses
  %i.d = load ptr, ptr %6, align 8, !tbaa !244, !nonnull !42, !align !232 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 704 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !247
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_14LocalSinkStateESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 544
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !311
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.i, %bb.b ], [ null, %bb.a ]  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 712
  %i.k = load i64, ptr %i.j, align 8, !tbaa !678
  store i64 %i.k, ptr %8, align 8, !tbaa !678
  call void @_ZNK6duckdb12optional_ptrINS_16WindowCollectionELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %8)
  %i.l = load ptr, ptr %8, align 8, !tbaa !403
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !613
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 720
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 672
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 760
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  call void @_ZNK6duckdb12optional_ptrINS_16WindowCollectionELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %8)
  %i.q = load ptr, ptr %8, align 8, !tbaa !403
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 80
  %i.s = load i64, ptr %i.r, align 8, !tbaa !578
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !248, !nonnull !42, !align !232
  store ptr %1, ptr %9, align 8, !tbaa !795
  %i.w = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.m, ptr %i.w, align 8, !tbaa !797
  %i.x = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 %i.s, ptr %i.x, align 8, !tbaa !801
  %i.y = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !356 ; 2 uses
  %i.ab = load ptr, ptr %i.t, align 8, !tbaa !353 ; 4 uses
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad                    ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i = icmp eq ptr %i.aa, %i.ab
  br i1 %.not.i.i.i.i.i.i, label %.thread46, label %bb.d

.thread46:                                        ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.ag = getelementptr inbounds i8, ptr null, i64 %i.ae ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %9, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i8 0, i64 16, i1 false)
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !357
  br label %_ZN6duckdb20WindowPartitionInputC2ERNS_16ExecutionContextEPKNS_20ColumnDataCollectionEmRKNS_6vectorImLb1ESaImEEERKNS6_IbLb1ESaIbEEERKNS_12ValidityMaskERKSt5arrayINS_10FrameDeltaELm2EERNS_14InterruptStateE.exit

bb.d:                                             ; preds = %bb.c
  %i.ai = icmp ugt i64 %i.ae, 9223372036854775800
  br i1 %i.ai, label %.noexc.i.i.i.i, label %bb.e, !prof !193

.noexc.i.i.i.i:                                   ; preds = %bb.d
  call void @_ZSt28__throw_bad_array_new_lengthv() #31
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.aj = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #32 ; 5 uses
  store ptr %i.aj, ptr %i.y, align 8, !tbaa !353
  %i.ak = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 4 uses
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !356
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ae ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %9, i64 40
  store ptr %i.al, ptr %i.am, align 8, !tbaa !357
  %i.an = icmp samesign ugt i64 %i.ae, 8
  br i1 %i.an, label %bb.f, label %bb.g, !prof !407

bb.f:                                             ; preds = %bb.e
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.aj, ptr align 8 %i.ab, i64 %i.ae, i1 false)
  br label %_ZN6duckdb20WindowPartitionInputC2ERNS_16ExecutionContextEPKNS_20ColumnDataCollectionEmRKNS_6vectorImLb1ESaImEEERKNS6_IbLb1ESaIbEEERKNS_12ValidityMaskERKSt5arrayINS_10FrameDeltaELm2EERNS_14InterruptStateE.exit

bb.g:                                             ; preds = %bb.e
  %i.ao = icmp eq i64 %i.ae, 8
  br i1 %i.ao, label %bb.h, label %_ZN6duckdb20WindowPartitionInputC2ERNS_16ExecutionContextEPKNS_20ColumnDataCollectionEmRKNS_6vectorImLb1ESaImEEERKNS6_IbLb1ESaIbEEERKNS_12ValidityMaskERKSt5arrayINS_10FrameDeltaELm2EERNS_14InterruptStateE.exit

bb.h:                                             ; preds = %bb.g
  %i.ap = load i64, ptr %i.ab, align 8, !tbaa !252
  store i64 %i.ap, ptr %i.aj, align 8, !tbaa !252
  br label %_ZN6duckdb20WindowPartitionInputC2ERNS_16ExecutionContextEPKNS_20ColumnDataCollectionEmRKNS_6vectorImLb1ESaImEEERKNS6_IbLb1ESaIbEEERKNS_12ValidityMaskERKSt5arrayINS_10FrameDeltaELm2EERNS_14InterruptStateE.exit

_ZN6duckdb20WindowPartitionInputC2ERNS_16ExecutionContextEPKNS_20ColumnDataCollectionEmRKNS_6vectorImLb1ESaImEEERKNS6_IbLb1ESaIbEEERKNS_12ValidityMaskERKSt5arrayINS_10FrameDeltaELm2EERNS_14InterruptStateE.exit: ; preds = %.thread46, %bb.f, %bb.g, %bb.h
end_hunk_0
