Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_sort?download=true
inline.NumInlined: 29523
inline.NumDeleted: 7046
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 83
loop-unroll.NumUnrolled: 234
begin_hunk_0_@_ZN6duckdbL7ReorderERNS_13ClientContextERNS_10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS3_ELb1EEES7_:bb.a
  %i.d = load i8, ptr %i.c, align 8, !tbaa !1030  ; 2 uses
  switch i8 %i.d, label %bb.jb [
    i8 5, label %bb.b
    i8 6, label %bb.ax
    i8 7, label %bb.cv
    i8 8, label %bb.et
    i8 9, label %bb.gr
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #30
  store ptr null, ptr %36, align 8, !tbaa !1225
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(544) %37, i8 0, i64 49, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %37, i64 56 ; 4 uses
  invoke void @_ZN6duckdb19TupleDataChunkStateC2Ev(ptr noundef nonnull align 8 dereferenceable(488) %i.e)
          to label %_ZN6duckdb20TupleDataAppendStateC2Ev.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb17TupleDataPinStateD2Ev(ptr noundef nonnull align 8 dead_on_return(49) dereferenceable(544) %37) #30
  br label %.body.i

_ZN6duckdb20TupleDataAppendStateC2Ev.exit.i:      ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #30
  %i.g = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.d unwind label %bb.u

bb.d:                                             ; preds = %_ZN6duckdb20TupleDataAppendStateC2Ev.exit.i
  invoke void @_ZNK6duckdb19TupleDataCollection12CreateUniqueEv(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.493") align 8 %38, ptr noundef nonnull align 8 dereferenceable(192) %i.g)
          to label %bb.e unwind label %bb.u

bb.e:                                             ; preds = %bb.d
  %i.h = load ptr, ptr %38, align 8, !tbaa !752
  store ptr null, ptr %38, align 8, !tbaa !752
  %i.i = load ptr, ptr %36, align 8, !tbaa !752   ; 3 uses
  store ptr %i.h, ptr %36, align 8, !tbaa !752
  %.not.i.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt10unique_ptrIN6duckdb19TupleDataCollectionESt14default_deleteIS1_EED2Ev.exit.i, label %_ZN6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i

_ZN6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i: ; preds = %bb.e
  call void @_ZN6duckdb19TupleDataCollectionD1Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %i.i) #30
  call void @_ZdlPv(ptr noundef nonnull %i.i) #29
  %.pr.i = load ptr, ptr %38, align 8, !tbaa !752 ; 3 uses
  %.not.i.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN6duckdb19TupleDataCollectionESt14default_deleteIS1_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN6duckdb19TupleDataCollectionEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN6duckdb19TupleDataCollectionEEclEPS1_.exit.i.i: ; preds = %_ZN6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i
  call void @_ZN6duckdb19TupleDataCollectionD1Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %.pr.i) #30
  call void @_ZdlPv(ptr noundef nonnull %.pr.i) #29
  br label %_ZNSt10unique_ptrIN6duckdb19TupleDataCollectionESt14default_deleteIS1_EED2Ev.exit.i

_ZNSt10unique_ptrIN6duckdb19TupleDataCollectionESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN6duckdb19TupleDataCollectionEEclEPS1_.exit.i.i, %_ZN6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #30
  %i.j = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %36)
          to label %bb.f unwind label %bb.v

bb.f:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb19TupleDataCollectionESt14default_deleteIS1_EED2Ev.exit.i
  invoke void @_ZN6duckdb19TupleDataCollection17SetPartitionIndexEm(ptr noundef nonnull align 8 dereferenceable(192) %i.j, i64 noundef 0)
          to label %bb.g unwind label %bb.v

bb.g:                                             ; preds = %bb.f
  %i.k = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %36)
          to label %bb.h unwind label %bb.v

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN6duckdb19TupleDataCollection16InitializeAppendERNS_20TupleDataAppendStateENS_22TupleDataPinPropertiesE(ptr noundef nonnull align 8 dereferenceable(192) %i.k, ptr noundef nonnull align 8 dereferenceable(544) %37, i8 noundef zeroext 2)
          to label %bb.i unwind label %bb.v

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #30
  store ptr null, ptr %39, align 8, !tbaa !1225
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(544) %40, i8 0, i64 49, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %40, i64 56 ; 2 uses
  invoke void @_ZN6duckdb19TupleDataChunkStateC2Ev(ptr noundef nonnull align 8 dereferenceable(488) %i.l)
          to label %_ZN6duckdb20TupleDataAppendStateC2Ev.exit44.i unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb17TupleDataPinStateD2Ev(ptr noundef nonnull align 8 dead_on_return(49) dereferenceable(544) %40) #30
  br label %.body42.i

_ZN6duckdb20TupleDataAppendStateC2Ev.exit44.i:    ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #30
  invoke void @_ZN6duckdb19TupleDataChunkStateC2Ev(ptr noundef nonnull align 8 dereferenceable(488) %41)
          to label %bb.k unwind label %bb.w

bb.k:                                             ; preds = %_ZN6duckdb20TupleDataAppendStateC2Ev.exit44.i
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #30
  invoke void @_ZN6duckdb19TupleDataChunkStateC2Ev(ptr noundef nonnull align 8 dereferenceable(488) %42)
          to label %bb.l unwind label %bb.x

bb.l:                                             ; preds = %bb.k
  %i.n = getelementptr inbounds nuw i8, ptr %41, i64 48 ; 2 uses
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIPNS_7SortKeyILNS_11SortKeyTypeE5EEEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.n)
          to label %bb.m unwind label %bb.y

bb.m:                                             ; preds = %bb.l
  %i.o = getelementptr inbounds nuw i8, ptr %41, i64 80 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1048 ; 3 uses
  %i.q = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.n unwind label %bb.z

bb.n:                                             ; preds = %bb.m
  %i.r = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb19TupleDataCollection5CountEv(ptr noundef nonnull align 8 dereferenceable(192) %i.q)
          to label %bb.o unwind label %bb.z

bb.o:                                             ; preds = %bb.n
  %i.s = load i64, ptr %i.r, align 8, !tbaa !168  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #30
  %i.t = invoke noundef nonnull align 8 dereferenceable(192) ptr @_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.p unwind label %bb.aa

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN6duckdb18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEC2ERKNS_19TupleDataCollectionE(ptr noundef nonnull align 8 dereferenceable(48) %43, ptr noundef nonnull align 8 dereferenceable(192) %i.t)
          to label %bb.q unwind label %bb.aa

bb.q:                                             ; preds = %bb.p
  %i.u = getelementptr inbounds nuw i8, ptr %43, i64 32
  %.not.i = icmp eq i64 %i.s, 0
  br i1 %.not.i, label %._crit_edge17.i, label %.lr.ph16.i

.lr.ph16.i:                                       ; preds = %bb.q
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %43, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %41, i64 152
  %i.y = getelementptr inbounds nuw i8, ptr %41, i64 184
  %i.z = getelementptr inbounds nuw i8, ptr %41, i64 256 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %41, i64 288
  %i.ab = getelementptr inbounds nuw i8, ptr %37, i64 312
  br label %bb.r

bb.r:                                             ; preds = %_ZN6duckdbL14ReorderKeyDataINS_7SortKeyILNS_11SortKeyTypeE5EEEEEvRNS_19TupleDataCollectionERNS_20TupleDataAppendStateERNS_19TupleDataChunkStateERKm.exit.i, %.lr.ph16.i
  %.01614.i = phi i64 [ 0, %.lr.ph16.i ], [ %i.dc, %_ZN6duckdbL14ReorderKeyDataINS_7SortKeyILNS_11SortKeyTypeE5EEEEEvRNS_19TupleDataCollectionERNS_20TupleDataAppendStateERNS_19TupleDataChunkStateERKm.exit.i ] ; 3 uses
  %.sroa.56.013.i = phi i64 [ 0, %.lr.ph16.i ], [ %.sroa.56.1.lcssa.i, %_ZN6duckdbL14ReorderKeyDataINS_7SortKeyILNS_11SortKeyTypeE5EEEEEvRNS_19TupleDataCollectionERNS_20TupleDataAppendStateERNS_19TupleDataChunkStateERKm.exit.i ] ; 3 uses
  %.sroa.8.012.i = phi i64 [ 0, %.lr.ph16.i ], [ %.sroa.8.1.lcssa.i, %_ZN6duckdbL14ReorderKeyDataINS_7SortKeyILNS_11SortKeyTypeE5EEEEEvRNS_19TupleDataCollectionERNS_20TupleDataAppendStateERNS_19TupleDataChunkStateERKm.exit.i ] ; 3 uses
  %i.ac = load atomic i8, ptr %i.v monotonic, align 8, !range !68, !noundef !69
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.s, label %bb.ad

bb.s:                                             ; preds = %bb.r
  %i.ae = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  invoke void @_ZN6duckdb18InterruptExceptionC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.ae)
          to label %bb.t unwind label %bb.ab

bb.t:                                             ; preds = %bb.s
  invoke void @__cxa_throw(ptr nonnull %i.ae, ptr nonnull @_ZTIN6duckdb18InterruptExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
          to label %bb.aw unwind label %bb.ac

bb.u:                                             ; preds = %bb.d, %_ZN6duckdb20TupleDataAppendStateC2Ev.exit.i
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #30
  br label %bb.av

bb.v:                                             ; preds = %bb.h, %bb.g, %bb.f, %_ZNSt10unique_ptrIN6duckdb19TupleDataCollectionESt14default_deleteIS1_EED2Ev.exit.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.w:                                             ; preds = %_ZN6duckdb20TupleDataAppendStateC2Ev.exit44.i
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.x:                                             ; preds = %bb.k
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.y:                                             ; preds = %bb.l
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.z:                                             ; preds = %bb.n, %bb.m
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.aa:                                            ; preds = %bb.p, %bb.o
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %_ZN6duckdb18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EED2Ev.exit80.i

bb.ab:                                            ; preds = %bb.s
  %i.am = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ae) #30
  br label %bb.aq

bb.ac:                                            ; preds = %bb.aj, %bb.ai, %bb.ah, %._crit_edge17.i, %bb.t
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.ad:                                            ; preds = %bb.r
  %i.ao = sub i64 %i.s, %.01614.i                 ; 3 uses
  %i.ap = call noundef i64 @llvm.umin.i64(i64 %i.ao, i64 2048) ; 9 uses
  %.not18.i = icmp eq i64 %i.s, %.01614.i
  br i1 %.not18.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ad
  %i.aq = load i64, ptr %i.u, align 8, !tbaa !168, !noalias !1414 ; 3 uses
  %i.ar = load ptr, ptr %i.w, align 8, !tbaa !1246 ; 3 uses
  %xtraiter560 = and i64 %i.ap, 1
  %i.as = icmp eq i64 %i.ao, 1
  br i1 %i.as, label %.epil.preheader559, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter566 = and i64 %i.ap, 4094
  br label %bb.ae

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %bb.ae
  %lcmp.mod562.not = icmp eq i64 %xtraiter560, 0
  br i1 %lcmp.mod562.not, label %._crit_edge.i, label %.epil.preheader559

.epil.preheader559:                               ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i
  %.010.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.bw, %._crit_edge.i.loopexit.unr-lcssa ]
  %.sroa.56.19.i.epil.init = phi i64 [ %.sroa.56.013.i, %.lr.ph.i ], [ %i.bp, %._crit_edge.i.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.8.18.i.epil.init = phi i64 [ %.sroa.8.012.i, %.lr.ph.i ], [ %i.bq, %._crit_edge.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod565 = trunc i64 %i.ap to i1
  call void @llvm.assume(i1 %lcmp.mod565)
  %i.at = add i64 %.sroa.8.18.i.epil.init, 1      ; 2 uses
  %i.au = icmp eq i64 %i.at, %i.aq                ; 2 uses
  %i.av = zext i1 %i.au to i64
  %i.aw = add i64 %.sroa.56.19.i.epil.init, %i.av
  %i.ax = select i1 %i.au, i64 0, i64 %i.at
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %.sroa.56.19.i.epil.init
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !1051
  %i.ba = getelementptr inbounds nuw [32 x i8], ptr %i.az, i64 %.sroa.8.18.i.epil.init
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.010.i.epil.init
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !1201
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.epil.preheader559, %._crit_edge.i.loopexit.unr-lcssa, %bb.ad
  %.sroa.8.1.lcssa.i = phi i64 [ %.sroa.8.012.i, %bb.ad ], [ %i.bq, %._crit_edge.i.loopexit.unr-lcssa ], [ %i.ax, %.epil.preheader559 ]
  %.sroa.56.1.lcssa.i = phi i64 [ %.sroa.56.013.i, %bb.ad ], [ %i.bp, %._crit_edge.i.loopexit.unr-lcssa ], [ %i.aw, %.epil.preheader559 ]
  %i.bc = invoke noundef nonnull align 8 dereferenceable(192) ptr @_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %36)
          to label %bb.af unwind label %bb.ag     ; 2 uses

bb.ae:                                            ; preds = %bb.ae, %.lr.ph.i.new
  %.010.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.bw, %bb.ae ] ; 3 uses
  %.sroa.56.19.i = phi i64 [ %.sroa.56.013.i, %.lr.ph.i.new ], [ %i.bp, %bb.ae ] ; 2 uses
  %.sroa.8.18.i = phi i64 [ %.sroa.8.012.i, %.lr.ph.i.new ], [ %i.bq, %bb.ae ] ; 2 uses
  %niter567 = phi i64 [ 0, %.lr.ph.i.new ], [ %niter567.next.1, %bb.ae ]
  %i.bd = add i64 %.sroa.8.18.i, 1                ; 2 uses
  %i.be = icmp eq i64 %i.bd, %i.aq                ; 2 uses
  %i.bf = zext i1 %i.be to i64
  %i.bg = add i64 %.sroa.56.19.i, %i.bf           ; 2 uses
  %i.bh = select i1 %i.be, i64 0, i64 %i.bd       ; 2 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %.sroa.56.19.i
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !1051
  %i.bk = getelementptr inbounds nuw [32 x i8], ptr %i.bj, i64 %.sroa.8.18.i
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.010.i
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !1201
  %i.bm = add i64 %i.bh, 1                        ; 2 uses
  %i.bn = icmp eq i64 %i.bm, %i.aq                ; 2 uses
  %i.bo = zext i1 %i.bn to i64
  %i.bp = add i64 %i.bg, %i.bo                    ; 3 uses
  %i.bq = select i1 %i.bn, i64 0, i64 %i.bm       ; 3 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.bg
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !1051
  %i.bt = getelementptr inbounds nuw [32 x i8], ptr %i.bs, i64 %i.bh
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.010.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store ptr %i.bt, ptr %i.bv, align 8, !tbaa !1201
  %i.bw = add nuw nsw i64 %.010.i, 2              ; 2 uses
  %niter567.next.1 = add i64 %niter567, 2         ; 2 uses
  %niter567.ncmp.1 = icmp eq i64 %niter567.next.1, %unroll_iter566
  br i1 %niter567.ncmp.1, label %._crit_edge.i.loopexit.unr-lcssa, label %bb.ae, !llvm.loop !1417

bb.af:                                            ; preds = %._crit_edge.i
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIPKNS_7SortKeyILNS_11SortKeyTypeE5EEEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.n)
          to label %.noexc.i unwind label %bb.ag

.noexc.i:                                         ; preds = %bb.af
  %i.bx = load ptr, ptr %i.o, align 8, !tbaa !1048 ; 3 uses
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIPhEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.x)
          to label %.noexc46.i unwind label %bb.ag

.noexc46.i:                                       ; preds = %.noexc.i
  %i.by = load ptr, ptr %i.y, align 8, !tbaa !1048 ; 3 uses
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeImEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.z)
          to label %.noexc47.i unwind label %bb.ag

.noexc47.i:                                       ; preds = %.noexc46.i
  %i.bz = load ptr, ptr %i.aa, align 8, !tbaa !1048 ; 3 uses
  %xtraiter568 = and i64 %i.ap, 1
  %i.ca = icmp eq i64 %i.ao, 1
  br i1 %i.ca, label %.lr.ph.i.i.epil.preheader, label %.noexc47.i.new

.noexc47.i.new:                                   ; preds = %.noexc47.i
  %unroll_iter572 = and i64 %i.ap, 4094
  br label %.lr.ph.i.i

._crit_edge.i.loopexit.i.unr-lcssa:               ; preds = %.lr.ph.i.i
  %lcmp.mod570.not = icmp eq i64 %xtraiter568, 0
  br i1 %lcmp.mod570.not, label %._crit_edge.i.loopexit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %._crit_edge.i.loopexit.i.unr-lcssa, %.noexc47.i
  %.01.i.i.epil.init = phi i64 [ 0, %.noexc47.i ], [ %i.db, %._crit_edge.i.loopexit.i.unr-lcssa ] ; 3 uses
  %lcmp.mod571 = trunc i64 %i.ap to i1
  call void @llvm.assume(i1 %lcmp.mod571)
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %.01.i.i.epil.init
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !1201 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !527
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %.01.i.i.epil.init
  store ptr %i.ce, ptr %i.cf, align 8, !tbaa !1051
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !1323
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %.01.i.i.epil.init
  store i64 %i.ch, ptr %i.ci, align 8, !tbaa !168
  br label %._crit_edge.i.loopexit.i

._crit_edge.i.loopexit.i:                         ; preds = %._crit_edge.i.loopexit.i.unr-lcssa, %.lr.ph.i.i.epil.preheader
  invoke void @_ZN6duckdb6Vector9ReferenceERKS0_(ptr noundef nonnull align 8 dereferenceable(104) %i.ab, ptr noundef nonnull align 8 dereferenceable(104) %i.z)
          to label %.noexc48.i unwind label %bb.ag

.noexc48.i:                                       ; preds = %._crit_edge.i.loopexit.i
  invoke void @_ZN6duckdb19TupleDataCollection5BuildERNS_17TupleDataPinStateERNS_19TupleDataChunkStateEmm(ptr noundef nonnull align 8 dereferenceable(192) %i.bc, ptr noundef nonnull align 8 dereferenceable(544) %37, ptr noundef nonnull align 8 dereferenceable(488) %i.e, i64 noundef 0, i64 noundef %i.ap)
          to label %.noexc49.i unwind label %bb.ag

.noexc49.i:                                       ; preds = %.noexc48.i
  %i.cj = invoke noundef ptr @_ZN6duckdb10FlatVector26IncrementalSelectionVectorEv()
          to label %.noexc50.i unwind label %bb.ag

.noexc50.i:                                       ; preds = %.noexc49.i
  invoke void @_ZNK6duckdb19TupleDataCollection8CopyRowsERNS_19TupleDataChunkStateES2_RKNS_15SelectionVectorEm(ptr noundef nonnull align 8 dereferenceable(192) %i.bc, ptr noundef nonnull align 8 dereferenceable(488) %i.e, ptr noundef nonnull align 8 dereferenceable(488) %41, ptr noundef nonnull align 8 dereferenceable(24) %i.cj, i64 noundef %i.ap)
          to label %_ZN6duckdbL14ReorderKeyDataINS_7SortKeyILNS_11SortKeyTypeE5EEEEEvRNS_19TupleDataCollectionERNS_20TupleDataAppendStateERNS_19TupleDataChunkStateERKm.exit.i unwind label %bb.ag

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.noexc47.i.new
  %.01.i.i = phi i64 [ 0, %.noexc47.i.new ], [ %i.db, %.lr.ph.i.i ] ; 5 uses
  %niter573 = phi i64 [ 0, %.noexc47.i.new ], [ %niter573.next.1, %.lr.ph.i.i ]
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %.01.i.i
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !1201 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !527
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %.01.i.i
  store ptr %i.cn, ptr %i.co, align 8, !tbaa !1051
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !1323
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %.01.i.i
  store i64 %i.cq, ptr %i.cr, align 8, !tbaa !168
  %i.cs = or disjoint i64 %.01.i.i, 1             ; 3 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.cs
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !1201 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !527
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.cs
  store ptr %i.cw, ptr %i.cx, align 8, !tbaa !1051
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !1323
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.cs
  store i64 %i.cz, ptr %i.da, align 8, !tbaa !168
  %i.db = add nuw i64 %.01.i.i, 2                 ; 2 uses
  %niter573.next.1 = add i64 %niter573, 2         ; 2 uses
  %niter573.ncmp.1 = icmp eq i64 %niter573.next.1, %unroll_iter572
  br i1 %niter573.ncmp.1, label %._crit_edge.i.loopexit.i.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !1418

_ZN6duckdbL14ReorderKeyDataINS_7SortKeyILNS_11SortKeyTypeE5EEEEEvRNS_19TupleDataCollectionERNS_20TupleDataAppendStateERNS_19TupleDataChunkStateERKm.exit.i: ; preds = %.noexc50.i
  %i.dc = add i64 %i.ap, %.01614.i                ; 2 uses
  %i.dd = icmp ult i64 %i.dc, %i.s
  br i1 %i.dd, label %bb.r, label %._crit_edge17.i, !llvm.loop !1419

bb.ag:                                            ; preds = %.noexc50.i, %.noexc49.i, %.noexc48.i, %._crit_edge.i.loopexit.i, %.noexc46.i, %.noexc.i, %bb.af, %._crit_edge.i
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

._crit_edge17.i:                                  ; preds = %_ZN6duckdbL14ReorderKeyDataINS_7SortKeyILNS_11SortKeyTypeE5EEEEEvRNS_19TupleDataCollectionERNS_20TupleDataAppendStateERNS_19TupleDataChunkStateERKm.exit.i, %bb.q
  %i.df = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.ah unwind label %bb.ac

bb.ah:                                            ; preds = %._crit_edge17.i
  invoke void @_ZN6duckdb19TupleDataCollection5UnpinEv(ptr noundef nonnull align 8 dereferenceable(192) %i.df)
          to label %bb.ai unwind label %bb.ac

bb.ai:                                            ; preds = %bb.ah
  %i.dg = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %36)
          to label %bb.aj unwind label %bb.ac

bb.aj:                                            ; preds = %bb.ai
  invoke void @_ZN6duckdb19TupleDataCollection16FinalizePinStateERNS_17TupleDataPinStateE(ptr noundef nonnull align 8 dereferenceable(192) %i.dg, ptr noundef nonnull align 8 dereferenceable(49) %37)
          to label %bb.ak unwind label %bb.ac

bb.ak:                                            ; preds = %bb.aj
  %i.dh = load ptr, ptr %36, align 8, !tbaa !752
  store ptr null, ptr %36, align 8, !tbaa !752
  %i.di = load ptr, ptr %1, align 8, !tbaa !752   ; 3 uses
  store ptr %i.dh, ptr %1, align 8, !tbaa !752
  %.not.i.i.i.i.i52.i = icmp eq ptr %i.di, null
  br i1 %.not.i.i.i.i.i52.i, label %_ZN6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEaSEOS4_.exit54.i, label %_ZNKSt14default_deleteIN6duckdb19TupleDataCollectionEEclEPS1_.exit.i.i.i.i.i53.i

_ZNKSt14default_deleteIN6duckdb19TupleDataCollectionEEclEPS1_.exit.i.i.i.i.i53.i: ; preds = %bb.ak
  call void @_ZN6duckdb19TupleDataCollectionD1Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %i.di) #30
  call void @_ZdlPv(ptr noundef nonnull %i.di) #29
end_hunk_0
begin_hunk_1_@_ZN6duckdbL7ReorderERNS_13ClientContextERNS_10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS3_ELb1EEES7_:bb.a
  resume { ptr, i32 } %common.resume.op

.body.i:                                          ; preds = %bb.av, %bb.c
  %.pn31.pn.pn.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn31.pn.pn.pn.pn.pn.pn.pn.pn.i, %bb.av ], [ %i.f, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #30
  call void @_ZNSt10unique_ptrIN6duckdb19TupleDataCollectionESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %36) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #30
  br label %common.resume

bb.aw:                                            ; preds = %bb.t
  unreachable

_ZN6duckdbL16TemplatedReorderILNS_11SortKeyTypeE5EEEvRNS_13ClientContextERNS_10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS5_ELb1EEES9_.exit: ; preds = %_ZN6duckdb20TupleDataAppendStateD2Ev.exit75.i, %_ZNKSt14default_deleteIN6duckdb19TupleDataCollectionEEclEPS1_.exit.i77.i
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #30
  br label %bb.jh

bb.ax:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #30
  store ptr null, ptr %28, align 8, !tbaa !1225
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(544) %29, i8 0, i64 49, i1 false)
  %i.eo = getelementptr inbounds nuw i8, ptr %29, i64 56 ; 2 uses
  invoke void @_ZN6duckdb19TupleDataChunkStateC2Ev(ptr noundef nonnull align 8 dereferenceable(488) %i.eo)
          to label %_ZN6duckdb20TupleDataAppendStateC2Ev.exit.i27 unwind label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ep = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb17TupleDataPinStateD2Ev(ptr noundef nonnull align 8 dead_on_return(49) dereferenceable(544) %29) #30
  br label %.body.i26

_ZN6duckdb20TupleDataAppendStateC2Ev.exit.i27:    ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #30
  store ptr null, ptr %30, align 8, !tbaa !1225
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(544) %31, i8 0, i64 49, i1 false)
  %i.eq = getelementptr inbounds nuw i8, ptr %31, i64 56 ; 4 uses
  invoke void @_ZN6duckdb19TupleDataChunkStateC2Ev(ptr noundef nonnull align 8 dereferenceable(488) %i.eq)
          to label %_ZN6duckdb20TupleDataAppendStateC2Ev.exit54.i unwind label %bb.az

bb.az:                                            ; preds = %_ZN6duckdb20TupleDataAppendStateC2Ev.exit.i27
  %i.er = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb17TupleDataPinStateD2Ev(ptr noundef nonnull align 8 dead_on_return(49) dereferenceable(544) %31) #30
  br label %.body52.i

_ZN6duckdb20TupleDataAppendStateC2Ev.exit54.i:    ; preds = %_ZN6duckdb20TupleDataAppendStateC2Ev.exit.i27
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #30
  %i.es = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.ba unwind label %bb.bo

bb.ba:                                            ; preds = %_ZN6duckdb20TupleDataAppendStateC2Ev.exit54.i
  invoke void @_ZNK6duckdb19TupleDataCollection12CreateUniqueEv(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.493") align 8 %32, ptr noundef nonnull align 8 dereferenceable(192) %i.es)
          to label %bb.bb unwind label %bb.bo

bb.bb:                                            ; preds = %bb.ba
  %i.et = load ptr, ptr %32, align 8, !tbaa !752
  store ptr null, ptr %32, align 8, !tbaa !752
  %i.eu = load ptr, ptr %30, align 8, !tbaa !752  ; 3 uses
  store ptr %i.et, ptr %30, align 8, !tbaa !752
  %.not.i.i.i.i.i.i28 = icmp eq ptr %i.eu, null
  br i1 %.not.i.i.i.i.i.i28, label %_ZNSt10unique_ptrIN6duckdb19TupleDataCollectionESt14default_deleteIS1_EED2Ev.exit.i33, label %_ZN6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i29

_ZN6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i29: ; preds = %bb.bb
  call void @_ZN6duckdb19TupleDataCollectionD1Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %i.eu) #30
  call void @_ZdlPv(ptr noundef nonnull %i.eu) #29
  %.pr.i30 = load ptr, ptr %32, align 8, !tbaa !752 ; 3 uses
  %.not.i.i31 = icmp eq ptr %.pr.i30, null
  br i1 %.not.i.i31, label %_ZNSt10unique_ptrIN6duckdb19TupleDataCollectionESt14default_deleteIS1_EED2Ev.exit.i33, label %_ZNKSt14default_deleteIN6duckdb19TupleDataCollectionEEclEPS1_.exit.i.i32

_ZNKSt14default_deleteIN6duckdb19TupleDataCollectionEEclEPS1_.exit.i.i32: ; preds = %_ZN6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i29
  call void @_ZN6duckdb19TupleDataCollectionD1Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %.pr.i30) #30
  call void @_ZdlPv(ptr noundef nonnull %.pr.i30) #29
  br label %_ZNSt10unique_ptrIN6duckdb19TupleDataCollectionESt14default_deleteIS1_EED2Ev.exit.i33

_ZNSt10unique_ptrIN6duckdb19TupleDataCollectionESt14default_deleteIS1_EED2Ev.exit.i33: ; preds = %_ZNKSt14default_deleteIN6duckdb19TupleDataCollectionEEclEPS1_.exit.i.i32, %_ZN6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i29, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #30
  %i.ev = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %30)
          to label %bb.bc unwind label %bb.bp

bb.bc:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb19TupleDataCollectionESt14default_deleteIS1_EED2Ev.exit.i33
  invoke void @_ZN6duckdb19TupleDataCollection16InitializeAppendERNS_20TupleDataAppendStateENS_22TupleDataPinPropertiesE(ptr noundef nonnull align 8 dereferenceable(192) %i.ev, ptr noundef nonnull align 8 dereferenceable(544) %31, i8 noundef zeroext 2)
          to label %bb.bd unwind label %bb.bp

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #30
  invoke void @_ZN6duckdb19TupleDataChunkStateC2Ev(ptr noundef nonnull align 8 dereferenceable(488) %33)
          to label %bb.be unwind label %bb.bq

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #30
  invoke void @_ZN6duckdb19TupleDataChunkStateC2Ev(ptr noundef nonnull align 8 dereferenceable(488) %34)
          to label %bb.bf unwind label %bb.br

bb.bf:                                            ; preds = %bb.be
  %i.ew = getelementptr inbounds nuw i8, ptr %33, i64 48
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIPNS_7SortKeyILNS_11SortKeyTypeE6EEEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.ew)
          to label %bb.bg unwind label %bb.bs

bb.bg:                                            ; preds = %bb.bf
  %i.ex = getelementptr inbounds nuw i8, ptr %33, i64 80
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !1048 ; 13 uses
  %i.ez = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.bh unwind label %bb.bt

bb.bh:                                            ; preds = %bb.bg
  %i.fa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb19TupleDataCollection5CountEv(ptr noundef nonnull align 8 dereferenceable(192) %i.ez)
          to label %bb.bi unwind label %bb.bt

bb.bi:                                            ; preds = %bb.bh
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !168 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #30
  %i.fc = invoke noundef nonnull align 8 dereferenceable(192) ptr @_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.bj unwind label %bb.bu

bb.bj:                                            ; preds = %bb.bi
  invoke void @_ZN6duckdb18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEC2ERKNS_19TupleDataCollectionE(ptr noundef nonnull align 8 dereferenceable(48) %35, ptr noundef nonnull align 8 dereferenceable(192) %i.fc)
          to label %bb.bk unwind label %bb.bu

bb.bk:                                            ; preds = %bb.bj
  %i.fd = getelementptr inbounds nuw i8, ptr %35, i64 32
  %.not.i34 = icmp eq i64 %i.fb, 0
  br i1 %.not.i34, label %._crit_edge111.i, label %.lr.ph110.i

.lr.ph110.i:                                      ; preds = %bb.bk
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ff = getelementptr inbounds nuw i8, ptr %35, i64 8
  %i.fg = getelementptr inbounds nuw i8, ptr %34, i64 48
  %i.fh = getelementptr inbounds nuw i8, ptr %34, i64 80
  %i.fi = getelementptr inbounds nuw i8, ptr %31, i64 312
  %i.fj = getelementptr inbounds nuw i8, ptr %34, i64 256
  %i.fk = getelementptr inbounds nuw i8, ptr %31, i64 104
  %i.fl = getelementptr inbounds nuw i8, ptr %31, i64 136
  br label %bb.bl

bb.bl:                                            ; preds = %._crit_edge105.i, %.lr.ph110.i
  %.026108.i = phi i64 [ 0, %.lr.ph110.i ], [ %i.ja, %._crit_edge105.i ] ; 3 uses
  %.sroa.597.0107.i = phi i64 [ 0, %.lr.ph110.i ], [ %.sroa.597.1.lcssa.i, %._crit_edge105.i ] ; 3 uses
  %.sroa.8.0106.i = phi i64 [ 0, %.lr.ph110.i ], [ %.sroa.8.1.lcssa.i38, %._crit_edge105.i ] ; 3 uses
  %i.fm = load atomic i8, ptr %i.fe monotonic, align 8, !range !68, !noundef !69
  %i.fn = trunc nuw i8 %i.fm to i1
  br i1 %i.fn, label %bb.bm, label %bb.bx

bb.bm:                                            ; preds = %bb.bl
  %i.fo = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  invoke void @_ZN6duckdb18InterruptExceptionC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.fo)
          to label %bb.bn unwind label %bb.bv

bb.bn:                                            ; preds = %bb.bm
  invoke void @__cxa_throw(ptr nonnull %i.fo, ptr nonnull @_ZTIN6duckdb18InterruptExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
          to label %bb.cu unwind label %bb.bw

bb.bo:                                            ; preds = %bb.ba, %_ZN6duckdb20TupleDataAppendStateC2Ev.exit54.i
  %i.fp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #30
  br label %bb.ct

bb.bp:                                            ; preds = %bb.bc, %_ZNSt10unique_ptrIN6duckdb19TupleDataCollectionESt14default_deleteIS1_EED2Ev.exit.i33
  %i.fq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ct

bb.bq:                                            ; preds = %bb.bd
  %i.fr = landingpad { ptr, i32 }
          cleanup
  br label %bb.cs

bb.br:                                            ; preds = %bb.be
  %i.fs = landingpad { ptr, i32 }
          cleanup
  br label %bb.cr

bb.bs:                                            ; preds = %bb.bf
  %i.ft = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq

bb.bt:                                            ; preds = %bb.bh, %bb.bg
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq

bb.bu:                                            ; preds = %bb.bj, %bb.bi
  %i.fv = landingpad { ptr, i32 }
          cleanup
  br label %_ZN6duckdb18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EED2Ev.exit91.i

bb.bv:                                            ; preds = %bb.bm
  %i.fw = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.fo) #30
  br label %bb.co

bb.bw:                                            ; preds = %bb.ch, %bb.cg, %bb.cf, %bb.ce, %bb.cd, %._crit_edge111.i, %bb.bn
  %i.fx = landingpad { ptr, i32 }
          cleanup
  br label %bb.co

bb.bx:                                            ; preds = %bb.bl
  %i.fy = sub i64 %i.fb, %.026108.i               ; 3 uses
  %i.fz = call noundef i64 @llvm.umin.i64(i64 %i.fy, i64 2048) ; 12 uses
  %.not112.i = icmp eq i64 %i.fb, %.026108.i      ; 2 uses
  br i1 %.not112.i, label %._crit_edge.i37, label %.lr.ph.i35

.lr.ph.i35:                                       ; preds = %bb.bx
  %i.ga = load i64, ptr %i.fd, align 8, !tbaa !168, !noalias !1420 ; 3 uses
  %i.gb = load ptr, ptr %i.ff, align 8, !tbaa !1246 ; 3 uses
  %xtraiter539 = and i64 %i.fz, 1
  %i.gc = icmp eq i64 %i.fy, 1
  br i1 %i.gc, label %.epil.preheader538, label %.lr.ph.i35.new

.lr.ph.i35.new:                                   ; preds = %.lr.ph.i35
  %unroll_iter545 = and i64 %i.fz, 4094
  br label %bb.by

._crit_edge.i37.loopexit.unr-lcssa:               ; preds = %bb.by
  %lcmp.mod541.not = icmp eq i64 %xtraiter539, 0
  br i1 %lcmp.mod541.not, label %._crit_edge.i37, label %.epil.preheader538

.epil.preheader538:                               ; preds = %._crit_edge.i37.loopexit.unr-lcssa, %.lr.ph.i35
  %.025101.i.epil.init = phi i64 [ 0, %.lr.ph.i35 ], [ %i.hg, %._crit_edge.i37.loopexit.unr-lcssa ]
  %.sroa.597.1100.i.epil.init = phi i64 [ %.sroa.597.0107.i, %.lr.ph.i35 ], [ %i.gz, %._crit_edge.i37.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.8.199.i.epil.init = phi i64 [ %.sroa.8.0106.i, %.lr.ph.i35 ], [ %i.ha, %._crit_edge.i37.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod544 = trunc i64 %i.fz to i1
  call void @llvm.assume(i1 %lcmp.mod544)
  %i.gd = add i64 %.sroa.8.199.i.epil.init, 1     ; 2 uses
  %i.ge = icmp eq i64 %i.gd, %i.ga                ; 2 uses
  %i.gf = zext i1 %i.ge to i64
  %i.gg = add i64 %.sroa.597.1100.i.epil.init, %i.gf
  %i.gh = select i1 %i.ge, i64 0, i64 %i.gd
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.gb, i64 %.sroa.597.1100.i.epil.init
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !1051
  %i.gk = getelementptr inbounds nuw [16 x i8], ptr %i.gj, i64 %.sroa.8.199.i.epil.init
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.ey, i64 %.025101.i.epil.init
  store ptr %i.gk, ptr %i.gl, align 8, !tbaa !1049
  br label %._crit_edge.i37

._crit_edge.i37:                                  ; preds = %.epil.preheader538, %._crit_edge.i37.loopexit.unr-lcssa, %bb.bx
  %.sroa.8.1.lcssa.i38 = phi i64 [ %.sroa.8.0106.i, %bb.bx ], [ %i.ha, %._crit_edge.i37.loopexit.unr-lcssa ], [ %i.gh, %.epil.preheader538 ]
  %.sroa.597.1.lcssa.i = phi i64 [ %.sroa.597.0107.i, %bb.bx ], [ %i.gz, %._crit_edge.i37.loopexit.unr-lcssa ], [ %i.gg, %.epil.preheader538 ]
  %i.gm = invoke noundef nonnull align 8 dereferenceable(192) ptr @_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %30)
          to label %bb.bz unwind label %bb.cb     ; 4 uses

bb.by:                                            ; preds = %bb.by, %.lr.ph.i35.new
  %.025101.i = phi i64 [ 0, %.lr.ph.i35.new ], [ %i.hg, %bb.by ] ; 3 uses
  %.sroa.597.1100.i = phi i64 [ %.sroa.597.0107.i, %.lr.ph.i35.new ], [ %i.gz, %bb.by ] ; 2 uses
  %.sroa.8.199.i = phi i64 [ %.sroa.8.0106.i, %.lr.ph.i35.new ], [ %i.ha, %bb.by ] ; 2 uses
  %niter546 = phi i64 [ 0, %.lr.ph.i35.new ], [ %niter546.next.1, %bb.by ]
  %i.gn = add i64 %.sroa.8.199.i, 1               ; 2 uses
  %i.go = icmp eq i64 %i.gn, %i.ga                ; 2 uses
  %i.gp = zext i1 %i.go to i64
  %i.gq = add i64 %.sroa.597.1100.i, %i.gp        ; 2 uses
  %i.gr = select i1 %i.go, i64 0, i64 %i.gn       ; 2 uses
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.gb, i64 %.sroa.597.1100.i
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !1051
  %i.gu = getelementptr inbounds nuw [16 x i8], ptr %i.gt, i64 %.sroa.8.199.i
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.ey, i64 %.025101.i
  store ptr %i.gu, ptr %i.gv, align 8, !tbaa !1049
  %i.gw = add i64 %i.gr, 1                        ; 2 uses
  %i.gx = icmp eq i64 %i.gw, %i.ga                ; 2 uses
  %i.gy = zext i1 %i.gx to i64
  %i.gz = add i64 %i.gq, %i.gy                    ; 3 uses
  %i.ha = select i1 %i.gx, i64 0, i64 %i.gw       ; 3 uses
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.gb, i64 %i.gq
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !1051
  %i.hd = getelementptr inbounds nuw [16 x i8], ptr %i.hc, i64 %i.gr
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %i.ey, i64 %.025101.i
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 8
  store ptr %i.hd, ptr %i.hf, align 8, !tbaa !1049
  %i.hg = add nuw nsw i64 %.025101.i, 2           ; 2 uses
  %niter546.next.1 = add i64 %niter546, 2         ; 2 uses
  %niter546.ncmp.1 = icmp eq i64 %niter546.next.1, %unroll_iter545
  br i1 %niter546.ncmp.1, label %._crit_edge.i37.loopexit.unr-lcssa, label %bb.by, !llvm.loop !1423

bb.bz:                                            ; preds = %._crit_edge.i37
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIPhEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.fg)
          to label %.noexc.i39 unwind label %bb.cb

.noexc.i39:                                       ; preds = %bb.bz
  %i.hh = load ptr, ptr %i.fh, align 8, !tbaa !1048 ; 5 uses
  %i.hi = add nsw i64 %i.fz, -1
  %xtraiter547 = and i64 %i.fz, 3                 ; 3 uses
  %i.hj = icmp ult i64 %i.hi, 3
  br i1 %i.hj, label %.lr.ph.i.i40.epil.preheader, label %.noexc.i39.new

.noexc.i39.new:                                   ; preds = %.noexc.i39
  %unroll_iter551 = and i64 %i.fz, 4092
  br label %.lr.ph.i.i40

._crit_edge.i.loopexit.i43.unr-lcssa:             ; preds = %.lr.ph.i.i40
  %lcmp.mod549.not = icmp eq i64 %xtraiter547, 0
  br i1 %lcmp.mod549.not, label %._crit_edge.i.loopexit.i43, label %.lr.ph.i.i40.epil.preheader

.lr.ph.i.i40.epil.preheader:                      ; preds = %._crit_edge.i.loopexit.i43.unr-lcssa, %.noexc.i39
  %.01.i.i41.epil.init = phi i64 [ 0, %.noexc.i39 ], [ %i.ir, %._crit_edge.i.loopexit.i43.unr-lcssa ]
  %lcmp.mod550 = icmp ne i64 %xtraiter547, 0
  call void @llvm.assume(i1 %lcmp.mod550)
  br label %.lr.ph.i.i40.epil

.lr.ph.i.i40.epil:                                ; preds = %.lr.ph.i.i40.epil, %.lr.ph.i.i40.epil.preheader
  %.01.i.i41.epil = phi i64 [ %i.hp, %.lr.ph.i.i40.epil ], [ %.01.i.i41.epil.init, %.lr.ph.i.i40.epil.preheader ] ; 3 uses
  %epil.iter548 = phi i64 [ %epil.iter548.next, %.lr.ph.i.i40.epil ], [ 0, %.lr.ph.i.i40.epil.preheader ]
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.ey, i64 %.01.i.i41.epil
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !1049
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 8
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !527
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.hh, i64 %.01.i.i41.epil
  store ptr %i.hn, ptr %i.ho, align 8, !tbaa !1051
  %i.hp = add nuw i64 %.01.i.i41.epil, 1
  %epil.iter548.next = add i64 %epil.iter548, 1   ; 2 uses
  %epil.iter548.cmp.not = icmp eq i64 %epil.iter548.next, %xtraiter547
  br i1 %epil.iter548.cmp.not, label %._crit_edge.i.loopexit.i43, label %.lr.ph.i.i40.epil, !llvm.loop !1424

._crit_edge.i.loopexit.i43:                       ; preds = %.lr.ph.i.i40.epil, %._crit_edge.i.loopexit.i43.unr-lcssa
  %i.hq = invoke noundef nonnull align 8 dereferenceable(217) ptr @_ZNK6duckdb19TupleDataCollection9GetLayoutEv(ptr noundef nonnull align 8 dereferenceable(192) %i.gm)
          to label %.noexc56.i unwind label %bb.cb

.noexc56.i:                                       ; preds = %._crit_edge.i.loopexit.i43
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 152
  %i.hs = load i8, ptr %i.hr, align 8, !tbaa !1425, !range !68, !noundef !69
  %i.ht = trunc nuw i8 %i.hs to i1
  br i1 %i.ht, label %.noexc57.i, label %bb.ca

.lr.ph.i.i40:                                     ; preds = %.lr.ph.i.i40, %.noexc.i39.new
  %.01.i.i41 = phi i64 [ 0, %.noexc.i39.new ], [ %i.ir, %.lr.ph.i.i40 ] ; 6 uses
  %niter552 = phi i64 [ 0, %.noexc.i39.new ], [ %niter552.next.3, %.lr.ph.i.i40 ]
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %i.ey, i64 %.01.i.i41
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !1049
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !527
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %i.hh, i64 %.01.i.i41
  store ptr %i.hx, ptr %i.hy, align 8, !tbaa !1051
  %i.hz = or disjoint i64 %.01.i.i41, 1           ; 2 uses
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.ey, i64 %i.hz
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !1049
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 8
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !527
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %i.hh, i64 %i.hz
  store ptr %i.id, ptr %i.ie, align 8, !tbaa !1051
  %i.if = or disjoint i64 %.01.i.i41, 2           ; 2 uses
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %i.ey, i64 %i.if
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !1049
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 8
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !527
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.hh, i64 %i.if
  store ptr %i.ij, ptr %i.ik, align 8, !tbaa !1051
  %i.il = or disjoint i64 %.01.i.i41, 3           ; 2 uses
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.ey, i64 %i.il
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !1049
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 8
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !527
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %i.hh, i64 %i.il
  store ptr %i.ip, ptr %i.iq, align 8, !tbaa !1051
  %i.ir = add nuw i64 %.01.i.i41, 4               ; 2 uses
  %niter552.next.3 = add i64 %niter552, 4         ; 2 uses
  %niter552.ncmp.3 = icmp eq i64 %niter552.next.3, %unroll_iter551
  br i1 %niter552.ncmp.3, label %._crit_edge.i.loopexit.i43.unr-lcssa, label %.lr.ph.i.i40, !llvm.loop !1426

bb.ca:                                            ; preds = %.noexc56.i
  invoke void @_ZNK6duckdb19TupleDataCollection16FindHeapPointersERNS_19TupleDataChunkStateEm(ptr noundef nonnull align 8 dereferenceable(192) %i.gm, ptr noundef nonnull align 8 dereferenceable(488) %34, i64 noundef %i.fz)
          to label %.noexc57.i unwind label %bb.cb

.noexc57.i:                                       ; preds = %bb.ca, %.noexc56.i
  invoke void @_ZN6duckdb6Vector9ReferenceERKS0_(ptr noundef nonnull align 8 dereferenceable(104) %i.fi, ptr noundef nonnull align 8 dereferenceable(104) %i.fj)
          to label %.noexc58.i unwind label %bb.cb

.noexc58.i:                                       ; preds = %.noexc57.i
  invoke void @_ZN6duckdb19TupleDataCollection5BuildERNS_17TupleDataPinStateERNS_19TupleDataChunkStateEmm(ptr noundef nonnull align 8 dereferenceable(192) %i.gm, ptr noundef nonnull align 8 dereferenceable(544) %31, ptr noundef nonnull align 8 dereferenceable(488) %i.eq, i64 noundef 0, i64 noundef %i.fz)
          to label %.noexc59.i unwind label %bb.cb

.noexc59.i:                                       ; preds = %.noexc58.i
  %i.is = invoke noundef ptr @_ZN6duckdb10FlatVector26IncrementalSelectionVectorEv()
          to label %.noexc60.i unwind label %bb.cb

.noexc60.i:                                       ; preds = %.noexc59.i
  invoke void @_ZNK6duckdb19TupleDataCollection8CopyRowsERNS_19TupleDataChunkStateES2_RKNS_15SelectionVectorEm(ptr noundef nonnull align 8 dereferenceable(192) %i.gm, ptr noundef nonnull align 8 dereferenceable(488) %i.eq, ptr noundef nonnull align 8 dereferenceable(488) %34, ptr noundef nonnull align 8 dereferenceable(24) %i.is, i64 noundef %i.fz)
          to label %_ZN6duckdbL18ReorderPayloadDataINS_7SortKeyILNS_11SortKeyTypeE6EEEEEvRNS_19TupleDataCollectionERNS_20TupleDataAppendStateEPKPT_RNS_19TupleDataChunkStateERKm.exit.i unwind label %bb.cb

_ZN6duckdbL18ReorderPayloadDataINS_7SortKeyILNS_11SortKeyTypeE6EEEEEvRNS_19TupleDataCollectionERNS_20TupleDataAppendStateEPKPT_RNS_19TupleDataChunkStateERKm.exit.i: ; preds = %.noexc60.i
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIKPhEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.fk)
          to label %_ZN6duckdb10FlatVector7GetDataIKPhEEPT_RNS_6VectorE.exit.i unwind label %bb.cc

_ZN6duckdb10FlatVector7GetDataIKPhEEPT_RNS_6VectorE.exit.i: ; preds = %_ZN6duckdbL18ReorderPayloadDataINS_7SortKeyILNS_11SortKeyTypeE6EEEEEvRNS_19TupleDataCollectionERNS_20TupleDataAppendStateEPKPT_RNS_19TupleDataChunkStateERKm.exit.i
  %47 = load ptr, ptr %i.fl, align 8, !tbaa !1048 ; 5 uses
  br i1 %.not112.i, label %._crit_edge105.i, label %.lr.ph104.i.preheader

.lr.ph104.i.preheader:                            ; preds = %_ZN6duckdb10FlatVector7GetDataIKPhEEPT_RNS_6VectorE.exit.i
  %xtraiter553 = and i64 %i.fz, 3                 ; 3 uses
  %i.it = icmp ult i64 %i.fy, 4
  br i1 %i.it, label %.lr.ph104.i.epil.preheader, label %.lr.ph104.i.preheader.new

.lr.ph104.i.preheader.new:                        ; preds = %.lr.ph104.i.preheader
  %unroll_iter557 = and i64 %i.fz, 4092
  br label %.lr.ph104.i

._crit_edge105.i.loopexit.unr-lcssa:              ; preds = %.lr.ph104.i
  %lcmp.mod555.not = icmp eq i64 %xtraiter553, 0
  br i1 %lcmp.mod555.not, label %._crit_edge105.i, label %.lr.ph104.i.epil.preheader

.lr.ph104.i.epil.preheader:                       ; preds = %._crit_edge105.i.loopexit.unr-lcssa, %.lr.ph104.i.preheader
  %.024103.i.epil.init = phi i64 [ 0, %.lr.ph104.i.preheader ], [ %i.kb, %._crit_edge105.i.loopexit.unr-lcssa ]
  %lcmp.mod556 = icmp ne i64 %xtraiter553, 0
  call void @llvm.assume(i1 %lcmp.mod556)
  br label %.lr.ph104.i.epil

.lr.ph104.i.epil:                                 ; preds = %.lr.ph104.i.epil, %.lr.ph104.i.epil.preheader
  %.024103.i.epil = phi i64 [ %i.iz, %.lr.ph104.i.epil ], [ %.024103.i.epil.init, %.lr.ph104.i.epil.preheader ] ; 3 uses
  %epil.iter554 = phi i64 [ %epil.iter554.next, %.lr.ph104.i.epil ], [ 0, %.lr.ph104.i.epil.preheader ]
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %i.ey, i64 %.024103.i.epil
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !1049
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %47, i64 %.024103.i.epil
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !1051
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iv, i64 8
  store ptr %i.ix, ptr %i.iy, align 8, !tbaa !527
  %i.iz = add nuw nsw i64 %.024103.i.epil, 1
  %epil.iter554.next = add i64 %epil.iter554, 1   ; 2 uses
  %epil.iter554.cmp.not = icmp eq i64 %epil.iter554.next, %xtraiter553
  br i1 %epil.iter554.cmp.not, label %._crit_edge105.i, label %.lr.ph104.i.epil, !llvm.loop !1427

._crit_edge105.i:                                 ; preds = %._crit_edge105.i.loopexit.unr-lcssa, %.lr.ph104.i.epil, %_ZN6duckdb10FlatVector7GetDataIKPhEEPT_RNS_6VectorE.exit.i
  %i.ja = add i64 %i.fz, %.026108.i               ; 2 uses
  %i.jb = icmp ult i64 %i.ja, %i.fb
  br i1 %i.jb, label %bb.bl, label %._crit_edge111.i, !llvm.loop !1428

bb.cb:                                            ; preds = %.noexc60.i, %.noexc59.i, %.noexc58.i, %.noexc57.i, %bb.ca, %._crit_edge.i.loopexit.i43, %bb.bz, %._crit_edge.i37
  %i.jc = landingpad { ptr, i32 }
          cleanup
  br label %bb.co

bb.cc:                                            ; preds = %_ZN6duckdbL18ReorderPayloadDataINS_7SortKeyILNS_11SortKeyTypeE6EEEEEvRNS_19TupleDataCollectionERNS_20TupleDataAppendStateEPKPT_RNS_19TupleDataChunkStateERKm.exit.i
  %i.jd = landingpad { ptr, i32 }
          cleanup
  br label %bb.co

.lr.ph104.i:                                      ; preds = %.lr.ph104.i, %.lr.ph104.i.preheader.new
  %.024103.i = phi i64 [ 0, %.lr.ph104.i.preheader.new ], [ %i.kb, %.lr.ph104.i ] ; 6 uses
  %niter558 = phi i64 [ 0, %.lr.ph104.i.preheader.new ], [ %niter558.next.3, %.lr.ph104.i ]
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %i.ey, i64 %.024103.i
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !1049
  %i.jg = getelementptr inbounds nuw [8 x i8], ptr %47, i64 %.024103.i
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !1051
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jf, i64 8
  store ptr %i.jh, ptr %i.ji, align 8, !tbaa !527
  %i.jj = or disjoint i64 %.024103.i, 1           ; 2 uses
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %i.ey, i64 %i.jj
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !1049
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %47, i64 %i.jj
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !1051
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jl, i64 8
  store ptr %i.jn, ptr %i.jo, align 8, !tbaa !527
  %i.jp = or disjoint i64 %.024103.i, 2           ; 2 uses
  %i.jq = getelementptr inbounds nuw [8 x i8], ptr %i.ey, i64 %i.jp
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !1049
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %47, i64 %i.jp
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !1051
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jr, i64 8
  store ptr %i.jt, ptr %i.ju, align 8, !tbaa !527
  %i.jv = or disjoint i64 %.024103.i, 3           ; 2 uses
  %i.jw = getelementptr inbounds nuw [8 x i8], ptr %i.ey, i64 %i.jv
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !1049
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %47, i64 %i.jv
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !1051
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jx, i64 8
  store ptr %i.jz, ptr %i.ka, align 8, !tbaa !527
  %i.kb = add nuw nsw i64 %.024103.i, 4           ; 2 uses
  %niter558.next.3 = add i64 %niter558, 4         ; 2 uses
  %niter558.ncmp.3 = icmp eq i64 %niter558.next.3, %unroll_iter557
  br i1 %niter558.ncmp.3, label %._crit_edge105.i.loopexit.unr-lcssa, label %.lr.ph104.i, !llvm.loop !1429

._crit_edge111.i:                                 ; preds = %._crit_edge105.i, %bb.bk
  %i.kc = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.cd unwind label %bb.bw

bb.cd:                                            ; preds = %._crit_edge111.i
  invoke void @_ZN6duckdb19TupleDataCollection5UnpinEv(ptr noundef nonnull align 8 dereferenceable(192) %i.kc)
          to label %bb.ce unwind label %bb.bw

bb.ce:                                            ; preds = %bb.cd
  %i.kd = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %30)
          to label %bb.cf unwind label %bb.bw

bb.cf:                                            ; preds = %bb.ce
  invoke void @_ZN6duckdb19TupleDataCollection16FinalizePinStateERNS_17TupleDataPinStateE(ptr noundef nonnull align 8 dereferenceable(192) %i.kd, ptr noundef nonnull align 8 dereferenceable(49) %31)
          to label %bb.cg unwind label %bb.bw

bb.cg:                                            ; preds = %bb.cf
  %i.ke = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %30)
          to label %bb.ch unwind label %bb.bw

bb.ch:                                            ; preds = %bb.cg
  invoke void @_ZN6duckdb19TupleDataCollection5UnpinEv(ptr noundef nonnull align 8 dereferenceable(192) %i.ke)
          to label %bb.ci unwind label %bb.bw

bb.ci:                                            ; preds = %bb.ch
  %i.kf = load ptr, ptr %30, align 8, !tbaa !752
  store ptr null, ptr %30, align 8, !tbaa !752
  %i.kg = load ptr, ptr %2, align 8, !tbaa !752   ; 3 uses
  store ptr %i.kf, ptr %2, align 8, !tbaa !752
  %.not.i.i.i.i.i63.i = icmp eq ptr %i.kg, null
  br i1 %.not.i.i.i.i.i63.i, label %_ZN6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEaSEOS4_.exit65.i, label %_ZNKSt14default_deleteIN6duckdb19TupleDataCollectionEEclEPS1_.exit.i.i.i.i.i64.i

_ZNKSt14default_deleteIN6duckdb19TupleDataCollectionEEclEPS1_.exit.i.i.i.i.i64.i: ; preds = %bb.ci
  call void @_ZN6duckdb19TupleDataCollectionD1Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %i.kg) #30
  call void @_ZdlPv(ptr noundef nonnull %i.kg) #29
  br label %_ZN6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEaSEOS4_.exit65.i

_ZN6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEaSEOS4_.exit65.i: ; preds = %_ZNKSt14default_deleteIN6duckdb19TupleDataCollectionEEclEPS1_.exit.i.i.i.i.i64.i, %bb.ci
  %i.kh = getelementptr inbounds nuw i8, ptr %35, i64 8
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !1246 ; 2 uses
  %.not.i.i.i.i.i44 = icmp eq ptr %i.ki, null
  br i1 %.not.i.i.i.i.i44, label %_ZN6duckdb18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EED2Ev.exit.i45, label %bb.cj

bb.cj:                                            ; preds = %_ZN6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEaSEOS4_.exit65.i
  call void @_ZdlPv(ptr noundef nonnull %i.ki) #29
  br label %_ZN6duckdb18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EED2Ev.exit.i45

_ZN6duckdb18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EED2Ev.exit.i45: ; preds = %bb.cj, %_ZN6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEaSEOS4_.exit65.i
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #30
  call void @_ZN6duckdb19TupleDataChunkStateD2Ev(ptr noundef nonnull align 8 dead_on_return(488) dereferenceable(488) %34) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #30
  call void @_ZN6duckdb19TupleDataChunkStateD2Ev(ptr noundef nonnull align 8 dead_on_return(488) dereferenceable(488) %33) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #30
  call void @_ZN6duckdb19TupleDataChunkStateD2Ev(ptr noundef nonnull align 8 dead_on_return(488) dereferenceable(488) %i.eq) #30
  %i.kj = getelementptr inbounds nuw i8, ptr %31, i64 24 ; 2 uses
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !642 ; 3 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %31, i64 32
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !643 ; 2 uses
  %.not4.i.i.i.i.i.i.i46 = icmp eq ptr %i.kk, %i.km
  br i1 %.not4.i.i.i.i.i.i.i46, label %_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exit.i.i.i.i.i52, label %.lr.ph.i.i.i.i.i.i.i47

.lr.ph.i.i.i.i.i.i.i47:                           ; preds = %_ZN6duckdb18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EED2Ev.exit.i45, %.lr.ph.i.i.i.i.i.i.i47
  %.05.i.i.i.i.i.i.i48 = phi ptr [ %i.ko, %.lr.ph.i.i.i.i.i.i.i47 ], [ %i.kk, %_ZN6duckdb18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EED2Ev.exit.i45 ] ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i48, i64 8
  call void @_ZN6duckdb12BufferHandleD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.kn) #30
  %i.ko = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i48, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i49 = icmp eq ptr %i.ko, %i.km
  br i1 %.not.i.i.i.i.i.i.i49, label %_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i.i.i50, label %.lr.ph.i.i.i.i.i.i.i47, !llvm.loop !644

_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i.i.i50: ; preds = %.lr.ph.i.i.i.i.i.i.i47
  %.pr.i.i.i.i.i51 = load ptr, ptr %i.kj, align 8, !tbaa !642
  br label %_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exit.i.i.i.i.i52

_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exit.i.i.i.i.i52: ; preds = %_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i.i.i50, %_ZN6duckdb18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EED2Ev.exit.i45
  %i.kp = phi ptr [ %.pr.i.i.i.i.i51, %_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i.i.i50 ], [ %i.kk, %_ZN6duckdb18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EED2Ev.exit.i45 ] ; 2 uses
  %.not.i.i1.i.i.i.i.i53 = icmp eq ptr %i.kp, null
  br i1 %.not.i.i1.i.i.i.i.i53, label %_ZN6duckdb19buffer_handle_map_tD2Ev.exit.i.i.i54, label %bb.ck

bb.ck:                                            ; preds = %_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exit.i.i.i.i.i52
  call void @_ZdlPv(ptr noundef nonnull %i.kp) #29
  br label %_ZN6duckdb19buffer_handle_map_tD2Ev.exit.i.i.i54

_ZN6duckdb19buffer_handle_map_tD2Ev.exit.i.i.i54: ; preds = %bb.ck, %_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exit.i.i.i.i.i52
  %i.kq = load ptr, ptr %31, align 8, !tbaa !642  ; 3 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !643 ; 2 uses
  %.not4.i.i.i.i1.i.i.i55 = icmp eq ptr %i.kq, %i.ks
  br i1 %.not4.i.i.i.i1.i.i.i55, label %_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exit.i.i7.i.i.i61, label %.lr.ph.i.i.i.i2.i.i.i56

.lr.ph.i.i.i.i2.i.i.i56:                          ; preds = %_ZN6duckdb19buffer_handle_map_tD2Ev.exit.i.i.i54, %.lr.ph.i.i.i.i2.i.i.i56
  %.05.i.i.i.i3.i.i.i57 = phi ptr [ %i.ku, %.lr.ph.i.i.i.i2.i.i.i56 ], [ %i.kq, %_ZN6duckdb19buffer_handle_map_tD2Ev.exit.i.i.i54 ] ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i3.i.i.i57, i64 8
  call void @_ZN6duckdb12BufferHandleD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.kt) #30
  %i.ku = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i3.i.i.i57, i64 32 ; 2 uses
  %.not.i.i.i.i4.i.i.i58 = icmp eq ptr %i.ku, %i.ks
  br i1 %.not.i.i.i.i4.i.i.i58, label %_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i5.i.i.i59, label %.lr.ph.i.i.i.i2.i.i.i56, !llvm.loop !644

_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i5.i.i.i59: ; preds = %.lr.ph.i.i.i.i2.i.i.i56
  %.pr.i.i6.i.i.i60 = load ptr, ptr %31, align 8, !tbaa !642
  br label %_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exit.i.i7.i.i.i61

_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exit.i.i7.i.i.i61: ; preds = %_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i5.i.i.i59, %_ZN6duckdb19buffer_handle_map_tD2Ev.exit.i.i.i54
  %i.kv = phi ptr [ %.pr.i.i6.i.i.i60, %_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i5.i.i.i59 ], [ %i.kq, %_ZN6duckdb19buffer_handle_map_tD2Ev.exit.i.i.i54 ] ; 2 uses
  %.not.i.i1.i.i8.i.i.i62 = icmp eq ptr %i.kv, null
  br i1 %.not.i.i1.i.i8.i.i.i62, label %_ZN6duckdb20TupleDataAppendStateD2Ev.exit.i, label %bb.cl

bb.cl:                                            ; preds = %_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exit.i.i7.i.i.i61
  call void @_ZdlPv(ptr noundef nonnull %i.kv) #29
  br label %_ZN6duckdb20TupleDataAppendStateD2Ev.exit.i

_ZN6duckdb20TupleDataAppendStateD2Ev.exit.i:      ; preds = %bb.cl, %_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exit.i.i7.i.i.i61
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #30
  %i.kw = load ptr, ptr %30, align 8, !tbaa !752  ; 3 uses
  %.not.i66.i = icmp eq ptr %i.kw, null
  br i1 %.not.i66.i, label %_ZNSt10unique_ptrIN6duckdb19TupleDataCollectionESt14default_deleteIS1_EED2Ev.exit68.i, label %_ZNKSt14default_deleteIN6duckdb19TupleDataCollectionEEclEPS1_.exit.i67.i

_ZNKSt14default_deleteIN6duckdb19TupleDataCollectionEEclEPS1_.exit.i67.i: ; preds = %_ZN6duckdb20TupleDataAppendStateD2Ev.exit.i
  call void @_ZN6duckdb19TupleDataCollectionD1Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %i.kw) #30
  call void @_ZdlPv(ptr noundef nonnull %i.kw) #29
  br label %_ZNSt10unique_ptrIN6duckdb19TupleDataCollectionESt14default_deleteIS1_EED2Ev.exit68.i

_ZNSt10unique_ptrIN6duckdb19TupleDataCollectionESt14default_deleteIS1_EED2Ev.exit68.i: ; preds = %_ZNKSt14default_deleteIN6duckdb19TupleDataCollectionEEclEPS1_.exit.i67.i, %_ZN6duckdb20TupleDataAppendStateD2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #30
  call void @_ZN6duckdb19TupleDataChunkStateD2Ev(ptr noundef nonnull align 8 dead_on_return(488) dereferenceable(488) %i.eo) #30
  %i.kx = getelementptr inbounds nuw i8, ptr %29, i64 24 ; 2 uses
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !642 ; 3 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %29, i64 32
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !643 ; 2 uses
  %.not4.i.i.i.i.i.i69.i = icmp eq ptr %i.ky, %i.la
  br i1 %.not4.i.i.i.i.i.i69.i, label %_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exit.i.i.i.i75.i, label %.lr.ph.i.i.i.i.i.i70.i

.lr.ph.i.i.i.i.i.i70.i:                           ; preds = %_ZNSt10unique_ptrIN6duckdb19TupleDataCollectionESt14default_deleteIS1_EED2Ev.exit68.i, %.lr.ph.i.i.i.i.i.i70.i
  %.05.i.i.i.i.i.i71.i = phi ptr [ %i.lc, %.lr.ph.i.i.i.i.i.i70.i ], [ %i.ky, %_ZNSt10unique_ptrIN6duckdb19TupleDataCollectionESt14default_deleteIS1_EED2Ev.exit68.i ] ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i71.i, i64 8
  call void @_ZN6duckdb12BufferHandleD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.lb) #30
  %i.lc = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i71.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i72.i = icmp eq ptr %i.lc, %i.la
  br i1 %.not.i.i.i.i.i.i72.i, label %_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i.i73.i, label %.lr.ph.i.i.i.i.i.i70.i, !llvm.loop !644

_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i.i73.i: ; preds = %.lr.ph.i.i.i.i.i.i70.i
  %.pr.i.i.i.i74.i = load ptr, ptr %i.kx, align 8, !tbaa !642
  br label %_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exit.i.i.i.i75.i

_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exit.i.i.i.i75.i: ; preds = %_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i.i73.i, %_ZNSt10unique_ptrIN6duckdb19TupleDataCollectionESt14default_deleteIS1_EED2Ev.exit68.i
  %i.ld = phi ptr [ %.pr.i.i.i.i74.i, %_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i.i73.i ], [ %i.ky, %_ZNSt10unique_ptrIN6duckdb19TupleDataCollectionESt14default_deleteIS1_EED2Ev.exit68.i ] ; 2 uses
  %.not.i.i1.i.i.i.i76.i = icmp eq ptr %i.ld, null
  br i1 %.not.i.i1.i.i.i.i76.i, label %_ZN6duckdb19buffer_handle_map_tD2Ev.exit.i.i77.i, label %bb.cm

bb.cm:                                            ; preds = %_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exit.i.i.i.i75.i
  call void @_ZdlPv(ptr noundef nonnull %i.ld) #29
  br label %_ZN6duckdb19buffer_handle_map_tD2Ev.exit.i.i77.i
end_hunk_1
begin_hunk_2_@_ZN6duckdbL7ReorderERNS_13ClientContextERNS_10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS3_ELb1EEES7_:bb.a

.body.i26:                                        ; preds = %.body52.i, %bb.ay
  %.pn41.pn.pn.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn41.pn.pn.pn.pn.pn.pn.pn.pn.i, %.body52.i ], [ %i.ep, %bb.ay ]
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #30
  call void @_ZNSt10unique_ptrIN6duckdb19TupleDataCollectionESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %28) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #30
  br label %common.resume

bb.cu:                                            ; preds = %bb.bn
  unreachable

_ZN6duckdbL16TemplatedReorderILNS_11SortKeyTypeE6EEEvRNS_13ClientContextERNS_10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS5_ELb1EEES9_.exit: ; preds = %_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exit.i.i7.i.i84.i, %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #30
  br label %bb.jh

bb.cv:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #30
  store ptr null, ptr %20, align 8, !tbaa !1225
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(544) %21, i8 0, i64 49, i1 false)
  %i.lm = getelementptr inbounds nuw i8, ptr %21, i64 56 ; 2 uses
  invoke void @_ZN6duckdb19TupleDataChunkStateC2Ev(ptr noundef nonnull align 8 dereferenceable(488) %i.lm)
          to label %_ZN6duckdb20TupleDataAppendStateC2Ev.exit.i65 unwind label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.ln = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb17TupleDataPinStateD2Ev(ptr noundef nonnull align 8 dead_on_return(49) dereferenceable(544) %21) #30
  br label %.body.i63

_ZN6duckdb20TupleDataAppendStateC2Ev.exit.i65:    ; preds = %bb.cv
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #30
  store ptr null, ptr %22, align 8, !tbaa !1225
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(544) %23, i8 0, i64 49, i1 false)
  %i.lo = getelementptr inbounds nuw i8, ptr %23, i64 56 ; 4 uses
  invoke void @_ZN6duckdb19TupleDataChunkStateC2Ev(ptr noundef nonnull align 8 dereferenceable(488) %i.lo)
          to label %_ZN6duckdb20TupleDataAppendStateC2Ev.exit54.i68 unwind label %bb.cx

bb.cx:                                            ; preds = %_ZN6duckdb20TupleDataAppendStateC2Ev.exit.i65
  %i.lp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb17TupleDataPinStateD2Ev(ptr noundef nonnull align 8 dead_on_return(49) dereferenceable(544) %23) #30
  br label %.body52.i66

_ZN6duckdb20TupleDataAppendStateC2Ev.exit54.i68:  ; preds = %_ZN6duckdb20TupleDataAppendStateC2Ev.exit.i65
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #30
  %i.lq = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.cy unwind label %bb.dm

bb.cy:                                            ; preds = %_ZN6duckdb20TupleDataAppendStateC2Ev.exit54.i68
  invoke void @_ZNK6duckdb19TupleDataCollection12CreateUniqueEv(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.493") align 8 %24, ptr noundef nonnull align 8 dereferenceable(192) %i.lq)
          to label %bb.cz unwind label %bb.dm

bb.cz:                                            ; preds = %bb.cy
  %i.lr = load ptr, ptr %24, align 8, !tbaa !752
  store ptr null, ptr %24, align 8, !tbaa !752
  %i.ls = load ptr, ptr %22, align 8, !tbaa !752  ; 3 uses
  store ptr %i.lr, ptr %22, align 8, !tbaa !752
  %.not.i.i.i.i.i.i70 = icmp eq ptr %i.ls, null
  br i1 %.not.i.i.i.i.i.i70, label %_ZNSt10unique_ptrIN6duckdb19TupleDataCollectionESt14default_deleteIS1_EED2Ev.exit.i75, label %_ZN6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i71

_ZN6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i71: ; preds = %bb.cz
  call void @_ZN6duckdb19TupleDataCollectionD1Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %i.ls) #30
  call void @_ZdlPv(ptr noundef nonnull %i.ls) #29
  %.pr.i72 = load ptr, ptr %24, align 8, !tbaa !752 ; 3 uses
  %.not.i.i73 = icmp eq ptr %.pr.i72, null
  br i1 %.not.i.i73, label %_ZNSt10unique_ptrIN6duckdb19TupleDataCollectionESt14default_deleteIS1_EED2Ev.exit.i75, label %_ZNKSt14default_deleteIN6duckdb19TupleDataCollectionEEclEPS1_.exit.i.i74

_ZNKSt14default_deleteIN6duckdb19TupleDataCollectionEEclEPS1_.exit.i.i74: ; preds = %_ZN6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i71
  call void @_ZN6duckdb19TupleDataCollectionD1Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %.pr.i72) #30
  call void @_ZdlPv(ptr noundef nonnull %.pr.i72) #29
  br label %_ZNSt10unique_ptrIN6duckdb19TupleDataCollectionESt14default_deleteIS1_EED2Ev.exit.i75

_ZNSt10unique_ptrIN6duckdb19TupleDataCollectionESt14default_deleteIS1_EED2Ev.exit.i75: ; preds = %_ZNKSt14default_deleteIN6duckdb19TupleDataCollectionEEclEPS1_.exit.i.i74, %_ZN6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i71, %bb.cz
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #30
  %i.lt = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %22)
          to label %bb.da unwind label %bb.dn

bb.da:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb19TupleDataCollectionESt14default_deleteIS1_EED2Ev.exit.i75
  invoke void @_ZN6duckdb19TupleDataCollection16InitializeAppendERNS_20TupleDataAppendStateENS_22TupleDataPinPropertiesE(ptr noundef nonnull align 8 dereferenceable(192) %i.lt, ptr noundef nonnull align 8 dereferenceable(544) %23, i8 noundef zeroext 2)
          to label %bb.db unwind label %bb.dn

bb.db:                                            ; preds = %bb.da
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #30
  invoke void @_ZN6duckdb19TupleDataChunkStateC2Ev(ptr noundef nonnull align 8 dereferenceable(488) %25)
          to label %bb.dc unwind label %bb.do

bb.dc:                                            ; preds = %bb.db
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #30
  invoke void @_ZN6duckdb19TupleDataChunkStateC2Ev(ptr noundef nonnull align 8 dereferenceable(488) %26)
          to label %bb.dd unwind label %bb.dp

bb.dd:                                            ; preds = %bb.dc
  %i.lu = getelementptr inbounds nuw i8, ptr %25, i64 48
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIPNS_7SortKeyILNS_11SortKeyTypeE7EEEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.lu)
          to label %bb.de unwind label %bb.dq

bb.de:                                            ; preds = %bb.dd
  %i.lv = getelementptr inbounds nuw i8, ptr %25, i64 80
  %i.lw = load ptr, ptr %i.lv, align 8, !tbaa !1048 ; 13 uses
  %i.lx = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.df unwind label %bb.dr

bb.df:                                            ; preds = %bb.de
  %i.ly = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb19TupleDataCollection5CountEv(ptr noundef nonnull align 8 dereferenceable(192) %i.lx)
          to label %bb.dg unwind label %bb.dr

bb.dg:                                            ; preds = %bb.df
  %i.lz = load i64, ptr %i.ly, align 8, !tbaa !168 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #30
  %i.ma = invoke noundef nonnull align 8 dereferenceable(192) ptr @_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.dh unwind label %bb.ds

bb.dh:                                            ; preds = %bb.dg
  invoke void @_ZN6duckdb18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEC2ERKNS_19TupleDataCollectionE(ptr noundef nonnull align 8 dereferenceable(48) %27, ptr noundef nonnull align 8 dereferenceable(192) %i.ma)
          to label %bb.di unwind label %bb.ds

bb.di:                                            ; preds = %bb.dh
  %i.mb = getelementptr inbounds nuw i8, ptr %27, i64 32
  %.not.i81 = icmp eq i64 %i.lz, 0
  br i1 %.not.i81, label %._crit_edge111.i112, label %.lr.ph110.i82

.lr.ph110.i82:                                    ; preds = %bb.di
  %i.mc = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.md = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.me = getelementptr inbounds nuw i8, ptr %26, i64 48
  %i.mf = getelementptr inbounds nuw i8, ptr %26, i64 80
  %i.mg = getelementptr inbounds nuw i8, ptr %23, i64 312
  %i.mh = getelementptr inbounds nuw i8, ptr %26, i64 256
  %i.mi = getelementptr inbounds nuw i8, ptr %23, i64 104
  %i.mj = getelementptr inbounds nuw i8, ptr %23, i64 136
  br label %bb.dj

bb.dj:                                            ; preds = %._crit_edge105.i111, %.lr.ph110.i82
  %.026108.i83 = phi i64 [ 0, %.lr.ph110.i82 ], [ %i.py, %._crit_edge105.i111 ] ; 3 uses
  %.sroa.597.0107.i84 = phi i64 [ 0, %.lr.ph110.i82 ], [ %.sroa.597.1.lcssa.i94, %._crit_edge105.i111 ] ; 3 uses
  %.sroa.8.0106.i85 = phi i64 [ 0, %.lr.ph110.i82 ], [ %.sroa.8.1.lcssa.i93, %._crit_edge105.i111 ] ; 3 uses
  %i.mk = load atomic i8, ptr %i.mc monotonic, align 8, !range !68, !noundef !69
  %i.ml = trunc nuw i8 %i.mk to i1
  br i1 %i.ml, label %bb.dk, label %bb.dv

bb.dk:                                            ; preds = %bb.dj
  %i.mm = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  invoke void @_ZN6duckdb18InterruptExceptionC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.mm)
          to label %bb.dl unwind label %bb.dt

bb.dl:                                            ; preds = %bb.dk
  invoke void @__cxa_throw(ptr nonnull %i.mm, ptr nonnull @_ZTIN6duckdb18InterruptExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
          to label %bb.es unwind label %bb.du

bb.dm:                                            ; preds = %bb.cy, %_ZN6duckdb20TupleDataAppendStateC2Ev.exit54.i68
  %i.mn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #30
  br label %bb.er

bb.dn:                                            ; preds = %bb.da, %_ZNSt10unique_ptrIN6duckdb19TupleDataCollectionESt14default_deleteIS1_EED2Ev.exit.i75
  %i.mo = landingpad { ptr, i32 }
          cleanup
  br label %bb.er

bb.do:                                            ; preds = %bb.db
  %i.mp = landingpad { ptr, i32 }
          cleanup
  br label %bb.eq

bb.dp:                                            ; preds = %bb.dc
  %i.mq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ep

bb.dq:                                            ; preds = %bb.dd
  %i.mr = landingpad { ptr, i32 }
          cleanup
  br label %bb.eo

bb.dr:                                            ; preds = %bb.df, %bb.de
  %i.ms = landingpad { ptr, i32 }
          cleanup
  br label %bb.eo

bb.ds:                                            ; preds = %bb.dh, %bb.dg
  %i.mt = landingpad { ptr, i32 }
          cleanup
  br label %_ZN6duckdb18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EED2Ev.exit91.i79

bb.dt:                                            ; preds = %bb.dk
  %i.mu = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.mm) #30
  br label %bb.em

bb.du:                                            ; preds = %bb.ef, %bb.ee, %bb.ed, %bb.ec, %bb.eb, %._crit_edge111.i112, %bb.dl
  %i.mv = landingpad { ptr, i32 }
          cleanup
  br label %bb.em

bb.dv:                                            ; preds = %bb.dj
  %i.mw = sub i64 %i.lz, %.026108.i83             ; 3 uses
  %i.mx = call noundef i64 @llvm.umin.i64(i64 %i.mw, i64 2048) ; 12 uses
  %.not112.i86 = icmp eq i64 %i.lz, %.026108.i83  ; 2 uses
  br i1 %.not112.i86, label %._crit_edge.i92, label %.lr.ph.i87

.lr.ph.i87:                                       ; preds = %bb.dv
  %i.my = load i64, ptr %i.mb, align 8, !tbaa !168, !noalias !1430 ; 3 uses
  %i.mz = load ptr, ptr %i.md, align 8, !tbaa !1246 ; 3 uses
  %xtraiter518 = and i64 %i.mx, 1
  %i.na = icmp eq i64 %i.mw, 1
  br i1 %i.na, label %.epil.preheader517, label %.lr.ph.i87.new

.lr.ph.i87.new:                                   ; preds = %.lr.ph.i87
  %unroll_iter524 = and i64 %i.mx, 4094
  br label %bb.dw

._crit_edge.i92.loopexit.unr-lcssa:               ; preds = %bb.dw
  %lcmp.mod520.not = icmp eq i64 %xtraiter518, 0
  br i1 %lcmp.mod520.not, label %._crit_edge.i92, label %.epil.preheader517

.epil.preheader517:                               ; preds = %._crit_edge.i92.loopexit.unr-lcssa, %.lr.ph.i87
  %.025101.i88.epil.init = phi i64 [ 0, %.lr.ph.i87 ], [ %i.oe, %._crit_edge.i92.loopexit.unr-lcssa ]
  %.sroa.597.1100.i89.epil.init = phi i64 [ %.sroa.597.0107.i84, %.lr.ph.i87 ], [ %i.nx, %._crit_edge.i92.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.8.199.i90.epil.init = phi i64 [ %.sroa.8.0106.i85, %.lr.ph.i87 ], [ %i.ny, %._crit_edge.i92.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod523 = trunc i64 %i.mx to i1
  call void @llvm.assume(i1 %lcmp.mod523)
  %i.nb = add i64 %.sroa.8.199.i90.epil.init, 1   ; 2 uses
  %i.nc = icmp eq i64 %i.nb, %i.my                ; 2 uses
  %i.nd = zext i1 %i.nc to i64
  %i.ne = add i64 %.sroa.597.1100.i89.epil.init, %i.nd
  %i.nf = select i1 %i.nc, i64 0, i64 %i.nb
  %i.ng = getelementptr inbounds nuw [8 x i8], ptr %i.mz, i64 %.sroa.597.1100.i89.epil.init
  %i.nh = load ptr, ptr %i.ng, align 8, !tbaa !1051
  %i.ni = getelementptr inbounds nuw [24 x i8], ptr %i.nh, i64 %.sroa.8.199.i90.epil.init
  %i.nj = getelementptr inbounds nuw [8 x i8], ptr %i.lw, i64 %.025101.i88.epil.init
  store ptr %i.ni, ptr %i.nj, align 8, !tbaa !1053
  br label %._crit_edge.i92

._crit_edge.i92:                                  ; preds = %.epil.preheader517, %._crit_edge.i92.loopexit.unr-lcssa, %bb.dv
  %.sroa.8.1.lcssa.i93 = phi i64 [ %.sroa.8.0106.i85, %bb.dv ], [ %i.ny, %._crit_edge.i92.loopexit.unr-lcssa ], [ %i.nf, %.epil.preheader517 ]
  %.sroa.597.1.lcssa.i94 = phi i64 [ %.sroa.597.0107.i84, %bb.dv ], [ %i.nx, %._crit_edge.i92.loopexit.unr-lcssa ], [ %i.ne, %.epil.preheader517 ]
  %i.nk = invoke noundef nonnull align 8 dereferenceable(192) ptr @_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %22)
          to label %bb.dx unwind label %bb.dz     ; 4 uses

bb.dw:                                            ; preds = %bb.dw, %.lr.ph.i87.new
  %.025101.i88 = phi i64 [ 0, %.lr.ph.i87.new ], [ %i.oe, %bb.dw ] ; 3 uses
  %.sroa.597.1100.i89 = phi i64 [ %.sroa.597.0107.i84, %.lr.ph.i87.new ], [ %i.nx, %bb.dw ] ; 2 uses
  %.sroa.8.199.i90 = phi i64 [ %.sroa.8.0106.i85, %.lr.ph.i87.new ], [ %i.ny, %bb.dw ] ; 2 uses
  %niter525 = phi i64 [ 0, %.lr.ph.i87.new ], [ %niter525.next.1, %bb.dw ]
  %i.nl = add i64 %.sroa.8.199.i90, 1             ; 2 uses
  %i.nm = icmp eq i64 %i.nl, %i.my                ; 2 uses
  %i.nn = zext i1 %i.nm to i64
  %i.no = add i64 %.sroa.597.1100.i89, %i.nn      ; 2 uses
  %i.np = select i1 %i.nm, i64 0, i64 %i.nl       ; 2 uses
  %i.nq = getelementptr inbounds nuw [8 x i8], ptr %i.mz, i64 %.sroa.597.1100.i89
  %i.nr = load ptr, ptr %i.nq, align 8, !tbaa !1051
  %i.ns = getelementptr inbounds nuw [24 x i8], ptr %i.nr, i64 %.sroa.8.199.i90
  %i.nt = getelementptr inbounds nuw [8 x i8], ptr %i.lw, i64 %.025101.i88
  store ptr %i.ns, ptr %i.nt, align 8, !tbaa !1053
  %i.nu = add i64 %i.np, 1                        ; 2 uses
  %i.nv = icmp eq i64 %i.nu, %i.my                ; 2 uses
  %i.nw = zext i1 %i.nv to i64
  %i.nx = add i64 %i.no, %i.nw                    ; 3 uses
  %i.ny = select i1 %i.nv, i64 0, i64 %i.nu       ; 3 uses
  %i.nz = getelementptr inbounds nuw [8 x i8], ptr %i.mz, i64 %i.no
  %i.oa = load ptr, ptr %i.nz, align 8, !tbaa !1051
  %i.ob = getelementptr inbounds nuw [24 x i8], ptr %i.oa, i64 %i.np
  %i.oc = getelementptr inbounds nuw [8 x i8], ptr %i.lw, i64 %.025101.i88
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 8
  store ptr %i.ob, ptr %i.od, align 8, !tbaa !1053
  %i.oe = add nuw nsw i64 %.025101.i88, 2         ; 2 uses
  %niter525.next.1 = add i64 %niter525, 2         ; 2 uses
  %niter525.ncmp.1 = icmp eq i64 %niter525.next.1, %unroll_iter524
  br i1 %niter525.ncmp.1, label %._crit_edge.i92.loopexit.unr-lcssa, label %bb.dw, !llvm.loop !1433

bb.dx:                                            ; preds = %._crit_edge.i92
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIPhEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.me)
          to label %.noexc.i97 unwind label %bb.dz

.noexc.i97:                                       ; preds = %bb.dx
  %i.of = load ptr, ptr %i.mf, align 8, !tbaa !1048 ; 5 uses
  %i.og = add nsw i64 %i.mx, -1
  %xtraiter526 = and i64 %i.mx, 3                 ; 3 uses
  %i.oh = icmp ult i64 %i.og, 3
  br i1 %i.oh, label %.lr.ph.i.i98.epil.preheader, label %.noexc.i97.new

.noexc.i97.new:                                   ; preds = %.noexc.i97
  %unroll_iter530 = and i64 %i.mx, 4092
  br label %.lr.ph.i.i98

._crit_edge.i.loopexit.i101.unr-lcssa:            ; preds = %.lr.ph.i.i98
  %lcmp.mod528.not = icmp eq i64 %xtraiter526, 0
  br i1 %lcmp.mod528.not, label %._crit_edge.i.loopexit.i101, label %.lr.ph.i.i98.epil.preheader

.lr.ph.i.i98.epil.preheader:                      ; preds = %._crit_edge.i.loopexit.i101.unr-lcssa, %.noexc.i97
  %.01.i.i99.epil.init = phi i64 [ 0, %.noexc.i97 ], [ %i.pp, %._crit_edge.i.loopexit.i101.unr-lcssa ]
  %lcmp.mod529 = icmp ne i64 %xtraiter526, 0
  call void @llvm.assume(i1 %lcmp.mod529)
  br label %.lr.ph.i.i98.epil

.lr.ph.i.i98.epil:                                ; preds = %.lr.ph.i.i98.epil, %.lr.ph.i.i98.epil.preheader
  %.01.i.i99.epil = phi i64 [ %i.on, %.lr.ph.i.i98.epil ], [ %.01.i.i99.epil.init, %.lr.ph.i.i98.epil.preheader ] ; 3 uses
  %epil.iter527 = phi i64 [ %epil.iter527.next, %.lr.ph.i.i98.epil ], [ 0, %.lr.ph.i.i98.epil.preheader ]
  %i.oi = getelementptr inbounds nuw [8 x i8], ptr %i.lw, i64 %.01.i.i99.epil
  %i.oj = load ptr, ptr %i.oi, align 8, !tbaa !1053
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 16
  %i.ol = load ptr, ptr %i.ok, align 8, !tbaa !527
  %i.om = getelementptr inbounds nuw [8 x i8], ptr %i.of, i64 %.01.i.i99.epil
  store ptr %i.ol, ptr %i.om, align 8, !tbaa !1051
  %i.on = add nuw i64 %.01.i.i99.epil, 1
  %epil.iter527.next = add i64 %epil.iter527, 1   ; 2 uses
  %epil.iter527.cmp.not = icmp eq i64 %epil.iter527.next, %xtraiter526
  br i1 %epil.iter527.cmp.not, label %._crit_edge.i.loopexit.i101, label %.lr.ph.i.i98.epil, !llvm.loop !1434

._crit_edge.i.loopexit.i101:                      ; preds = %.lr.ph.i.i98.epil, %._crit_edge.i.loopexit.i101.unr-lcssa
  %i.oo = invoke noundef nonnull align 8 dereferenceable(217) ptr @_ZNK6duckdb19TupleDataCollection9GetLayoutEv(ptr noundef nonnull align 8 dereferenceable(192) %i.nk)
          to label %.noexc56.i102 unwind label %bb.dz

.noexc56.i102:                                    ; preds = %._crit_edge.i.loopexit.i101
  %i.op = getelementptr inbounds nuw i8, ptr %i.oo, i64 152
  %i.oq = load i8, ptr %i.op, align 8, !tbaa !1425, !range !68, !noundef !69
  %i.or = trunc nuw i8 %i.oq to i1
  br i1 %i.or, label %.noexc57.i103, label %bb.dy

.lr.ph.i.i98:                                     ; preds = %.lr.ph.i.i98, %.noexc.i97.new
  %.01.i.i99 = phi i64 [ 0, %.noexc.i97.new ], [ %i.pp, %.lr.ph.i.i98 ] ; 6 uses
  %niter531 = phi i64 [ 0, %.noexc.i97.new ], [ %niter531.next.3, %.lr.ph.i.i98 ]
  %i.os = getelementptr inbounds nuw [8 x i8], ptr %i.lw, i64 %.01.i.i99
  %i.ot = load ptr, ptr %i.os, align 8, !tbaa !1053
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 16
  %i.ov = load ptr, ptr %i.ou, align 8, !tbaa !527
  %i.ow = getelementptr inbounds nuw [8 x i8], ptr %i.of, i64 %.01.i.i99
  store ptr %i.ov, ptr %i.ow, align 8, !tbaa !1051
  %i.ox = or disjoint i64 %.01.i.i99, 1           ; 2 uses
  %i.oy = getelementptr inbounds nuw [8 x i8], ptr %i.lw, i64 %i.ox
  %i.oz = load ptr, ptr %i.oy, align 8, !tbaa !1053
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oz, i64 16
  %i.pb = load ptr, ptr %i.pa, align 8, !tbaa !527
  %i.pc = getelementptr inbounds nuw [8 x i8], ptr %i.of, i64 %i.ox
  store ptr %i.pb, ptr %i.pc, align 8, !tbaa !1051
  %i.pd = or disjoint i64 %.01.i.i99, 2           ; 2 uses
  %i.pe = getelementptr inbounds nuw [8 x i8], ptr %i.lw, i64 %i.pd
  %i.pf = load ptr, ptr %i.pe, align 8, !tbaa !1053
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 16
  %i.ph = load ptr, ptr %i.pg, align 8, !tbaa !527
  %i.pi = getelementptr inbounds nuw [8 x i8], ptr %i.of, i64 %i.pd
  store ptr %i.ph, ptr %i.pi, align 8, !tbaa !1051
  %i.pj = or disjoint i64 %.01.i.i99, 3           ; 2 uses
  %i.pk = getelementptr inbounds nuw [8 x i8], ptr %i.lw, i64 %i.pj
  %i.pl = load ptr, ptr %i.pk, align 8, !tbaa !1053
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pl, i64 16
  %i.pn = load ptr, ptr %i.pm, align 8, !tbaa !527
  %i.po = getelementptr inbounds nuw [8 x i8], ptr %i.of, i64 %i.pj
  store ptr %i.pn, ptr %i.po, align 8, !tbaa !1051
  %i.pp = add nuw i64 %.01.i.i99, 4               ; 2 uses
  %niter531.next.3 = add i64 %niter531, 4         ; 2 uses
  %niter531.ncmp.3 = icmp eq i64 %niter531.next.3, %unroll_iter530
  br i1 %niter531.ncmp.3, label %._crit_edge.i.loopexit.i101.unr-lcssa, label %.lr.ph.i.i98, !llvm.loop !1435

bb.dy:                                            ; preds = %.noexc56.i102
  invoke void @_ZNK6duckdb19TupleDataCollection16FindHeapPointersERNS_19TupleDataChunkStateEm(ptr noundef nonnull align 8 dereferenceable(192) %i.nk, ptr noundef nonnull align 8 dereferenceable(488) %26, i64 noundef %i.mx)
          to label %.noexc57.i103 unwind label %bb.dz

.noexc57.i103:                                    ; preds = %bb.dy, %.noexc56.i102
  invoke void @_ZN6duckdb6Vector9ReferenceERKS0_(ptr noundef nonnull align 8 dereferenceable(104) %i.mg, ptr noundef nonnull align 8 dereferenceable(104) %i.mh)
          to label %.noexc58.i104 unwind label %bb.dz

.noexc58.i104:                                    ; preds = %.noexc57.i103
  invoke void @_ZN6duckdb19TupleDataCollection5BuildERNS_17TupleDataPinStateERNS_19TupleDataChunkStateEmm(ptr noundef nonnull align 8 dereferenceable(192) %i.nk, ptr noundef nonnull align 8 dereferenceable(544) %23, ptr noundef nonnull align 8 dereferenceable(488) %i.lo, i64 noundef 0, i64 noundef %i.mx)
          to label %.noexc59.i105 unwind label %bb.dz

.noexc59.i105:                                    ; preds = %.noexc58.i104
  %i.pq = invoke noundef ptr @_ZN6duckdb10FlatVector26IncrementalSelectionVectorEv()
          to label %.noexc60.i106 unwind label %bb.dz

.noexc60.i106:                                    ; preds = %.noexc59.i105
  invoke void @_ZNK6duckdb19TupleDataCollection8CopyRowsERNS_19TupleDataChunkStateES2_RKNS_15SelectionVectorEm(ptr noundef nonnull align 8 dereferenceable(192) %i.nk, ptr noundef nonnull align 8 dereferenceable(488) %i.lo, ptr noundef nonnull align 8 dereferenceable(488) %26, ptr noundef nonnull align 8 dereferenceable(24) %i.pq, i64 noundef %i.mx)
          to label %_ZN6duckdbL18ReorderPayloadDataINS_7SortKeyILNS_11SortKeyTypeE7EEEEEvRNS_19TupleDataCollectionERNS_20TupleDataAppendStateEPKPT_RNS_19TupleDataChunkStateERKm.exit.i unwind label %bb.dz

_ZN6duckdbL18ReorderPayloadDataINS_7SortKeyILNS_11SortKeyTypeE7EEEEEvRNS_19TupleDataCollectionERNS_20TupleDataAppendStateEPKPT_RNS_19TupleDataChunkStateERKm.exit.i: ; preds = %.noexc60.i106
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIKPhEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.mi)
          to label %_ZN6duckdb10FlatVector7GetDataIKPhEEPT_RNS_6VectorE.exit.i107 unwind label %bb.ea

_ZN6duckdb10FlatVector7GetDataIKPhEEPT_RNS_6VectorE.exit.i107: ; preds = %_ZN6duckdbL18ReorderPayloadDataINS_7SortKeyILNS_11SortKeyTypeE7EEEEEvRNS_19TupleDataCollectionERNS_20TupleDataAppendStateEPKPT_RNS_19TupleDataChunkStateERKm.exit.i
  %48 = load ptr, ptr %i.mj, align 8, !tbaa !1048 ; 5 uses
  br i1 %.not112.i86, label %._crit_edge105.i111, label %.lr.ph104.i108.preheader

.lr.ph104.i108.preheader:                         ; preds = %_ZN6duckdb10FlatVector7GetDataIKPhEEPT_RNS_6VectorE.exit.i107
  %xtraiter532 = and i64 %i.mx, 3                 ; 3 uses
  %i.pr = icmp ult i64 %i.mw, 4
  br i1 %i.pr, label %.lr.ph104.i108.epil.preheader, label %.lr.ph104.i108.preheader.new

.lr.ph104.i108.preheader.new:                     ; preds = %.lr.ph104.i108.preheader
  %unroll_iter536 = and i64 %i.mx, 4092
  br label %.lr.ph104.i108

._crit_edge105.i111.loopexit.unr-lcssa:           ; preds = %.lr.ph104.i108
  %lcmp.mod534.not = icmp eq i64 %xtraiter532, 0
  br i1 %lcmp.mod534.not, label %._crit_edge105.i111, label %.lr.ph104.i108.epil.preheader

.lr.ph104.i108.epil.preheader:                    ; preds = %._crit_edge105.i111.loopexit.unr-lcssa, %.lr.ph104.i108.preheader
  %.024103.i109.epil.init = phi i64 [ 0, %.lr.ph104.i108.preheader ], [ %i.qz, %._crit_edge105.i111.loopexit.unr-lcssa ]
  %lcmp.mod535 = icmp ne i64 %xtraiter532, 0
  call void @llvm.assume(i1 %lcmp.mod535)
  br label %.lr.ph104.i108.epil

.lr.ph104.i108.epil:                              ; preds = %.lr.ph104.i108.epil, %.lr.ph104.i108.epil.preheader
  %.024103.i109.epil = phi i64 [ %i.px, %.lr.ph104.i108.epil ], [ %.024103.i109.epil.init, %.lr.ph104.i108.epil.preheader ] ; 3 uses
  %epil.iter533 = phi i64 [ %epil.iter533.next, %.lr.ph104.i108.epil ], [ 0, %.lr.ph104.i108.epil.preheader ]
  %i.ps = getelementptr inbounds nuw [8 x i8], ptr %i.lw, i64 %.024103.i109.epil
  %i.pt = load ptr, ptr %i.ps, align 8, !tbaa !1053
  %i.pu = getelementptr inbounds nuw [8 x i8], ptr %48, i64 %.024103.i109.epil
  %i.pv = load ptr, ptr %i.pu, align 8, !tbaa !1051
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pt, i64 16
  store ptr %i.pv, ptr %i.pw, align 8, !tbaa !527
  %i.px = add nuw nsw i64 %.024103.i109.epil, 1
  %epil.iter533.next = add i64 %epil.iter533, 1   ; 2 uses
  %epil.iter533.cmp.not = icmp eq i64 %epil.iter533.next, %xtraiter532
  br i1 %epil.iter533.cmp.not, label %._crit_edge105.i111, label %.lr.ph104.i108.epil, !llvm.loop !1436

._crit_edge105.i111:                              ; preds = %._crit_edge105.i111.loopexit.unr-lcssa, %.lr.ph104.i108.epil, %_ZN6duckdb10FlatVector7GetDataIKPhEEPT_RNS_6VectorE.exit.i107
  %i.py = add i64 %i.mx, %.026108.i83             ; 2 uses
  %i.pz = icmp ult i64 %i.py, %i.lz
  br i1 %i.pz, label %bb.dj, label %._crit_edge111.i112, !llvm.loop !1437

bb.dz:                                            ; preds = %.noexc60.i106, %.noexc59.i105, %.noexc58.i104, %.noexc57.i103, %bb.dy, %._crit_edge.i.loopexit.i101, %bb.dx, %._crit_edge.i92
  %i.qa = landingpad { ptr, i32 }
          cleanup
  br label %bb.em

bb.ea:                                            ; preds = %_ZN6duckdbL18ReorderPayloadDataINS_7SortKeyILNS_11SortKeyTypeE7EEEEEvRNS_19TupleDataCollectionERNS_20TupleDataAppendStateEPKPT_RNS_19TupleDataChunkStateERKm.exit.i
  %i.qb = landingpad { ptr, i32 }
          cleanup
  br label %bb.em

.lr.ph104.i108:                                   ; preds = %.lr.ph104.i108, %.lr.ph104.i108.preheader.new
  %.024103.i109 = phi i64 [ 0, %.lr.ph104.i108.preheader.new ], [ %i.qz, %.lr.ph104.i108 ] ; 6 uses
  %niter537 = phi i64 [ 0, %.lr.ph104.i108.preheader.new ], [ %niter537.next.3, %.lr.ph104.i108 ]
  %i.qc = getelementptr inbounds nuw [8 x i8], ptr %i.lw, i64 %.024103.i109
  %i.qd = load ptr, ptr %i.qc, align 8, !tbaa !1053
  %i.qe = getelementptr inbounds nuw [8 x i8], ptr %48, i64 %.024103.i109
  %i.qf = load ptr, ptr %i.qe, align 8, !tbaa !1051
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qd, i64 16
  store ptr %i.qf, ptr %i.qg, align 8, !tbaa !527
  %i.qh = or disjoint i64 %.024103.i109, 1        ; 2 uses
  %i.qi = getelementptr inbounds nuw [8 x i8], ptr %i.lw, i64 %i.qh
  %i.qj = load ptr, ptr %i.qi, align 8, !tbaa !1053
  %i.qk = getelementptr inbounds nuw [8 x i8], ptr %48, i64 %i.qh
  %i.ql = load ptr, ptr %i.qk, align 8, !tbaa !1051
  %i.qm = getelementptr inbounds nuw i8, ptr %i.qj, i64 16
  store ptr %i.ql, ptr %i.qm, align 8, !tbaa !527
  %i.qn = or disjoint i64 %.024103.i109, 2        ; 2 uses
  %i.qo = getelementptr inbounds nuw [8 x i8], ptr %i.lw, i64 %i.qn
  %i.qp = load ptr, ptr %i.qo, align 8, !tbaa !1053
  %i.qq = getelementptr inbounds nuw [8 x i8], ptr %48, i64 %i.qn
  %i.qr = load ptr, ptr %i.qq, align 8, !tbaa !1051
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qp, i64 16
  store ptr %i.qr, ptr %i.qs, align 8, !tbaa !527
  %i.qt = or disjoint i64 %.024103.i109, 3        ; 2 uses
  %i.qu = getelementptr inbounds nuw [8 x i8], ptr %i.lw, i64 %i.qt
  %i.qv = load ptr, ptr %i.qu, align 8, !tbaa !1053
  %i.qw = getelementptr inbounds nuw [8 x i8], ptr %48, i64 %i.qt
  %i.qx = load ptr, ptr %i.qw, align 8, !tbaa !1051
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qv, i64 16
  store ptr %i.qx, ptr %i.qy, align 8, !tbaa !527
  %i.qz = add nuw nsw i64 %.024103.i109, 4        ; 2 uses
  %niter537.next.3 = add i64 %niter537, 4         ; 2 uses
  %niter537.ncmp.3 = icmp eq i64 %niter537.next.3, %unroll_iter536
  br i1 %niter537.ncmp.3, label %._crit_edge105.i111.loopexit.unr-lcssa, label %.lr.ph104.i108, !llvm.loop !1438

._crit_edge111.i112:                              ; preds = %._crit_edge105.i111, %bb.di
  %i.ra = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.eb unwind label %bb.du

bb.eb:                                            ; preds = %._crit_edge111.i112
  invoke void @_ZN6duckdb19TupleDataCollection5UnpinEv(ptr noundef nonnull align 8 dereferenceable(192) %i.ra)
          to label %bb.ec unwind label %bb.du

bb.ec:                                            ; preds = %bb.eb
  %i.rb = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %22)
          to label %bb.ed unwind label %bb.du

bb.ed:                                            ; preds = %bb.ec
  invoke void @_ZN6duckdb19TupleDataCollection16FinalizePinStateERNS_17TupleDataPinStateE(ptr noundef nonnull align 8 dereferenceable(192) %i.rb, ptr noundef nonnull align 8 dereferenceable(49) %23)
          to label %bb.ee unwind label %bb.du

bb.ee:                                            ; preds = %bb.ed
  %i.rc = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %22)
          to label %bb.ef unwind label %bb.du

bb.ef:                                            ; preds = %bb.ee
  invoke void @_ZN6duckdb19TupleDataCollection5UnpinEv(ptr noundef nonnull align 8 dereferenceable(192) %i.rc)
          to label %bb.eg unwind label %bb.du

bb.eg:                                            ; preds = %bb.ef
  %i.rd = load ptr, ptr %22, align 8, !tbaa !752
  store ptr null, ptr %22, align 8, !tbaa !752
  %i.re = load ptr, ptr %2, align 8, !tbaa !752   ; 3 uses
  store ptr %i.rd, ptr %2, align 8, !tbaa !752
  %.not.i.i.i.i.i63.i113 = icmp eq ptr %i.re, null
  br i1 %.not.i.i.i.i.i63.i113, label %_ZN6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEaSEOS4_.exit65.i115, label %_ZNKSt14default_deleteIN6duckdb19TupleDataCollectionEEclEPS1_.exit.i.i.i.i.i64.i114

_ZNKSt14default_deleteIN6duckdb19TupleDataCollectionEEclEPS1_.exit.i.i.i.i.i64.i114: ; preds = %bb.eg
  call void @_ZN6duckdb19TupleDataCollectionD1Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %i.re) #30
  call void @_ZdlPv(ptr noundef nonnull %i.re) #29
  br label %_ZN6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEaSEOS4_.exit65.i115

_ZN6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEaSEOS4_.exit65.i115: ; preds = %_ZNKSt14default_deleteIN6duckdb19TupleDataCollectionEEclEPS1_.exit.i.i.i.i.i64.i114, %bb.eg
  %i.rf = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.rg = load ptr, ptr %i.rf, align 8, !tbaa !1246 ; 2 uses
  %.not.i.i.i.i.i116 = icmp eq ptr %i.rg, null
  br i1 %.not.i.i.i.i.i116, label %_ZN6duckdb18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EED2Ev.exit.i117, label %bb.eh

bb.eh:                                            ; preds = %_ZN6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEaSEOS4_.exit65.i115
  call void @_ZdlPv(ptr noundef nonnull %i.rg) #29
  br label %_ZN6duckdb18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EED2Ev.exit.i117

_ZN6duckdb18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EED2Ev.exit.i117: ; preds = %bb.eh, %_ZN6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEaSEOS4_.exit65.i115
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #30
  call void @_ZN6duckdb19TupleDataChunkStateD2Ev(ptr noundef nonnull align 8 dead_on_return(488) dereferenceable(488) %26) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #30
  call void @_ZN6duckdb19TupleDataChunkStateD2Ev(ptr noundef nonnull align 8 dead_on_return(488) dereferenceable(488) %25) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #30
  call void @_ZN6duckdb19TupleDataChunkStateD2Ev(ptr noundef nonnull align 8 dead_on_return(488) dereferenceable(488) %i.lo) #30
  %i.rh = getelementptr inbounds nuw i8, ptr %23, i64 24 ; 2 uses
  %i.ri = load ptr, ptr %i.rh, align 8, !tbaa !642 ; 3 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %23, i64 32
  %i.rk = load ptr, ptr %i.rj, align 8, !tbaa !643 ; 2 uses
  %.not4.i.i.i.i.i.i.i118 = icmp eq ptr %i.ri, %i.rk
  br i1 %.not4.i.i.i.i.i.i.i118, label %_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exit.i.i.i.i.i124, label %.lr.ph.i.i.i.i.i.i.i119

.lr.ph.i.i.i.i.i.i.i119:                          ; preds = %_ZN6duckdb18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EED2Ev.exit.i117, %.lr.ph.i.i.i.i.i.i.i119
  %.05.i.i.i.i.i.i.i120 = phi ptr [ %i.rm, %.lr.ph.i.i.i.i.i.i.i119 ], [ %i.ri, %_ZN6duckdb18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EED2Ev.exit.i117 ] ; 2 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i120, i64 8
  call void @_ZN6duckdb12BufferHandleD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.rl) #30
  %i.rm = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i120, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i121 = icmp eq ptr %i.rm, %i.rk
  br i1 %.not.i.i.i.i.i.i.i121, label %_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i.i.i122, label %.lr.ph.i.i.i.i.i.i.i119, !llvm.loop !644

_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i.i.i122: ; preds = %.lr.ph.i.i.i.i.i.i.i119
  %.pr.i.i.i.i.i123 = load ptr, ptr %i.rh, align 8, !tbaa !642
  br label %_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exit.i.i.i.i.i124

_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exit.i.i.i.i.i124: ; preds = %_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i.i.i122, %_ZN6duckdb18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EED2Ev.exit.i117
  %i.rn = phi ptr [ %.pr.i.i.i.i.i123, %_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i.i.i122 ], [ %i.ri, %_ZN6duckdb18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EED2Ev.exit.i117 ] ; 2 uses
  %.not.i.i1.i.i.i.i.i125 = icmp eq ptr %i.rn, null
  br i1 %.not.i.i1.i.i.i.i.i125, label %_ZN6duckdb19buffer_handle_map_tD2Ev.exit.i.i.i126, label %bb.ei

bb.ei:                                            ; preds = %_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exit.i.i.i.i.i124
  call void @_ZdlPv(ptr noundef nonnull %i.rn) #29
  br label %_ZN6duckdb19buffer_handle_map_tD2Ev.exit.i.i.i126

_ZN6duckdb19buffer_handle_map_tD2Ev.exit.i.i.i126: ; preds = %bb.ei, %_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exit.i.i.i.i.i124
  %i.ro = load ptr, ptr %23, align 8, !tbaa !642  ; 3 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.rq = load ptr, ptr %i.rp, align 8, !tbaa !643 ; 2 uses
  %.not4.i.i.i.i1.i.i.i127 = icmp eq ptr %i.ro, %i.rq
  br i1 %.not4.i.i.i.i1.i.i.i127, label %_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exit.i.i7.i.i.i133, label %.lr.ph.i.i.i.i2.i.i.i128

.lr.ph.i.i.i.i2.i.i.i128:                         ; preds = %_ZN6duckdb19buffer_handle_map_tD2Ev.exit.i.i.i126, %.lr.ph.i.i.i.i2.i.i.i128
  %.05.i.i.i.i3.i.i.i129 = phi ptr [ %i.rs, %.lr.ph.i.i.i.i2.i.i.i128 ], [ %i.ro, %_ZN6duckdb19buffer_handle_map_tD2Ev.exit.i.i.i126 ] ; 2 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i3.i.i.i129, i64 8
  call void @_ZN6duckdb12BufferHandleD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.rr) #30
  %i.rs = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i3.i.i.i129, i64 32 ; 2 uses
  %.not.i.i.i.i4.i.i.i130 = icmp eq ptr %i.rs, %i.rq
  br i1 %.not.i.i.i.i4.i.i.i130, label %_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i5.i.i.i131, label %.lr.ph.i.i.i.i2.i.i.i128, !llvm.loop !644

_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i5.i.i.i131: ; preds = %.lr.ph.i.i.i.i2.i.i.i128
  %.pr.i.i6.i.i.i132 = load ptr, ptr %23, align 8, !tbaa !642
  br label %_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exit.i.i7.i.i.i133

_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exit.i.i7.i.i.i133: ; preds = %_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i5.i.i.i131, %_ZN6duckdb19buffer_handle_map_tD2Ev.exit.i.i.i126
  %i.rt = phi ptr [ %.pr.i.i6.i.i.i132, %_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i5.i.i.i131 ], [ %i.ro, %_ZN6duckdb19buffer_handle_map_tD2Ev.exit.i.i.i126 ] ; 2 uses
  %.not.i.i1.i.i8.i.i.i134 = icmp eq ptr %i.rt, null
  br i1 %.not.i.i1.i.i8.i.i.i134, label %_ZN6duckdb20TupleDataAppendStateD2Ev.exit.i135, label %bb.ej

bb.ej:                                            ; preds = %_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exit.i.i7.i.i.i133
  call void @_ZdlPv(ptr noundef nonnull %i.rt) #29
  br label %_ZN6duckdb20TupleDataAppendStateD2Ev.exit.i135

_ZN6duckdb20TupleDataAppendStateD2Ev.exit.i135:   ; preds = %bb.ej, %_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exit.i.i7.i.i.i133
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #30
  %i.ru = load ptr, ptr %22, align 8, !tbaa !752  ; 3 uses
  %.not.i66.i136 = icmp eq ptr %i.ru, null
  br i1 %.not.i66.i136, label %_ZNSt10unique_ptrIN6duckdb19TupleDataCollectionESt14default_deleteIS1_EED2Ev.exit68.i138, label %_ZNKSt14default_deleteIN6duckdb19TupleDataCollectionEEclEPS1_.exit.i67.i137

_ZNKSt14default_deleteIN6duckdb19TupleDataCollectionEEclEPS1_.exit.i67.i137: ; preds = %_ZN6duckdb20TupleDataAppendStateD2Ev.exit.i135
  call void @_ZN6duckdb19TupleDataCollectionD1Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %i.ru) #30
  call void @_ZdlPv(ptr noundef nonnull %i.ru) #29
  br label %_ZNSt10unique_ptrIN6duckdb19TupleDataCollectionESt14default_deleteIS1_EED2Ev.exit68.i138

_ZNSt10unique_ptrIN6duckdb19TupleDataCollectionESt14default_deleteIS1_EED2Ev.exit68.i138: ; preds = %_ZNKSt14default_deleteIN6duckdb19TupleDataCollectionEEclEPS1_.exit.i67.i137, %_ZN6duckdb20TupleDataAppendStateD2Ev.exit.i135
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #30
  call void @_ZN6duckdb19TupleDataChunkStateD2Ev(ptr noundef nonnull align 8 dead_on_return(488) dereferenceable(488) %i.lm) #30
  %i.rv = getelementptr inbounds nuw i8, ptr %21, i64 24 ; 2 uses
  %i.rw = load ptr, ptr %i.rv, align 8, !tbaa !642 ; 3 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %21, i64 32
  %i.ry = load ptr, ptr %i.rx, align 8, !tbaa !643 ; 2 uses
  %.not4.i.i.i.i.i.i69.i139 = icmp eq ptr %i.rw, %i.ry
  br i1 %.not4.i.i.i.i.i.i69.i139, label %_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exit.i.i.i.i75.i145, label %.lr.ph.i.i.i.i.i.i70.i140

.lr.ph.i.i.i.i.i.i70.i140:                        ; preds = %_ZNSt10unique_ptrIN6duckdb19TupleDataCollectionESt14default_deleteIS1_EED2Ev.exit68.i138, %.lr.ph.i.i.i.i.i.i70.i140
  %.05.i.i.i.i.i.i71.i141 = phi ptr [ %i.sa, %.lr.ph.i.i.i.i.i.i70.i140 ], [ %i.rw, %_ZNSt10unique_ptrIN6duckdb19TupleDataCollectionESt14default_deleteIS1_EED2Ev.exit68.i138 ] ; 2 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i71.i141, i64 8
  call void @_ZN6duckdb12BufferHandleD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.rz) #30
  %i.sa = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i71.i141, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i72.i142 = icmp eq ptr %i.sa, %i.ry
  br i1 %.not.i.i.i.i.i.i72.i142, label %_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i.i73.i143, label %.lr.ph.i.i.i.i.i.i70.i140, !llvm.loop !644

_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i.i73.i143: ; preds = %.lr.ph.i.i.i.i.i.i70.i140
  %.pr.i.i.i.i74.i144 = load ptr, ptr %i.rv, align 8, !tbaa !642
  br label %_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exit.i.i.i.i75.i145

_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exit.i.i.i.i75.i145: ; preds = %_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i.i73.i143, %_ZNSt10unique_ptrIN6duckdb19TupleDataCollectionESt14default_deleteIS1_EED2Ev.exit68.i138
  %i.sb = phi ptr [ %.pr.i.i.i.i74.i144, %_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i.i73.i143 ], [ %i.rw, %_ZNSt10unique_ptrIN6duckdb19TupleDataCollectionESt14default_deleteIS1_EED2Ev.exit68.i138 ] ; 2 uses
  %.not.i.i1.i.i.i.i76.i146 = icmp eq ptr %i.sb, null
  br i1 %.not.i.i1.i.i.i.i76.i146, label %_ZN6duckdb19buffer_handle_map_tD2Ev.exit.i.i77.i147, label %bb.ek

bb.ek:                                            ; preds = %_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exit.i.i.i.i75.i145
  call void @_ZdlPv(ptr noundef nonnull %i.sb) #29
  br label %_ZN6duckdb19buffer_handle_map_tD2Ev.exit.i.i77.i147
end_hunk_2
begin_hunk_3_@_ZN6duckdbL7ReorderERNS_13ClientContextERNS_10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS3_ELb1EEES7_:bb.a

.body.i63:                                        ; preds = %.body52.i66, %bb.cw
  %.pn41.pn.pn.pn.pn.pn.pn.pn.pn.pn.i64 = phi { ptr, i32 } [ %.pn41.pn.pn.pn.pn.pn.pn.pn.pn.i67, %.body52.i66 ], [ %i.ln, %bb.cw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #30
  call void @_ZNSt10unique_ptrIN6duckdb19TupleDataCollectionESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %20) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #30
  br label %common.resume

bb.es:                                            ; preds = %bb.dl
  unreachable

_ZN6duckdbL16TemplatedReorderILNS_11SortKeyTypeE7EEEvRNS_13ClientContextERNS_10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS5_ELb1EEES9_.exit: ; preds = %_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exit.i.i7.i.i84.i154, %bb.el
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #30
  br label %bb.jh

bb.et:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #30
  store ptr null, ptr %12, align 8, !tbaa !1225
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(544) %13, i8 0, i64 49, i1 false)
  %i.sk = getelementptr inbounds nuw i8, ptr %13, i64 56 ; 2 uses
  invoke void @_ZN6duckdb19TupleDataChunkStateC2Ev(ptr noundef nonnull align 8 dereferenceable(488) %i.sk)
          to label %_ZN6duckdb20TupleDataAppendStateC2Ev.exit.i158 unwind label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.sl = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb17TupleDataPinStateD2Ev(ptr noundef nonnull align 8 dead_on_return(49) dereferenceable(544) %13) #30
  br label %.body.i156

_ZN6duckdb20TupleDataAppendStateC2Ev.exit.i158:   ; preds = %bb.et
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #30
  store ptr null, ptr %14, align 8, !tbaa !1225
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(544) %15, i8 0, i64 49, i1 false)
  %i.sm = getelementptr inbounds nuw i8, ptr %15, i64 56 ; 4 uses
  invoke void @_ZN6duckdb19TupleDataChunkStateC2Ev(ptr noundef nonnull align 8 dereferenceable(488) %i.sm)
          to label %_ZN6duckdb20TupleDataAppendStateC2Ev.exit54.i161 unwind label %bb.ev

bb.ev:                                            ; preds = %_ZN6duckdb20TupleDataAppendStateC2Ev.exit.i158
  %i.sn = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb17TupleDataPinStateD2Ev(ptr noundef nonnull align 8 dead_on_return(49) dereferenceable(544) %15) #30
  br label %.body52.i159

_ZN6duckdb20TupleDataAppendStateC2Ev.exit54.i161: ; preds = %_ZN6duckdb20TupleDataAppendStateC2Ev.exit.i158
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #30
  %i.so = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.ew unwind label %bb.fk

bb.ew:                                            ; preds = %_ZN6duckdb20TupleDataAppendStateC2Ev.exit54.i161
  invoke void @_ZNK6duckdb19TupleDataCollection12CreateUniqueEv(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.493") align 8 %16, ptr noundef nonnull align 8 dereferenceable(192) %i.so)
          to label %bb.ex unwind label %bb.fk

bb.ex:                                            ; preds = %bb.ew
  %i.sp = load ptr, ptr %16, align 8, !tbaa !752
  store ptr null, ptr %16, align 8, !tbaa !752
  %i.sq = load ptr, ptr %14, align 8, !tbaa !752  ; 3 uses
  store ptr %i.sp, ptr %14, align 8, !tbaa !752
  %.not.i.i.i.i.i.i163 = icmp eq ptr %i.sq, null
  br i1 %.not.i.i.i.i.i.i163, label %_ZNSt10unique_ptrIN6duckdb19TupleDataCollectionESt14default_deleteIS1_EED2Ev.exit.i168, label %_ZN6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i164

_ZN6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i164: ; preds = %bb.ex
  call void @_ZN6duckdb19TupleDataCollectionD1Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %i.sq) #30
  call void @_ZdlPv(ptr noundef nonnull %i.sq) #29
  %.pr.i165 = load ptr, ptr %16, align 8, !tbaa !752 ; 3 uses
  %.not.i.i166 = icmp eq ptr %.pr.i165, null
  br i1 %.not.i.i166, label %_ZNSt10unique_ptrIN6duckdb19TupleDataCollectionESt14default_deleteIS1_EED2Ev.exit.i168, label %_ZNKSt14default_deleteIN6duckdb19TupleDataCollectionEEclEPS1_.exit.i.i167

_ZNKSt14default_deleteIN6duckdb19TupleDataCollectionEEclEPS1_.exit.i.i167: ; preds = %_ZN6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i164
  call void @_ZN6duckdb19TupleDataCollectionD1Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %.pr.i165) #30
  call void @_ZdlPv(ptr noundef nonnull %.pr.i165) #29
  br label %_ZNSt10unique_ptrIN6duckdb19TupleDataCollectionESt14default_deleteIS1_EED2Ev.exit.i168

_ZNSt10unique_ptrIN6duckdb19TupleDataCollectionESt14default_deleteIS1_EED2Ev.exit.i168: ; preds = %_ZNKSt14default_deleteIN6duckdb19TupleDataCollectionEEclEPS1_.exit.i.i167, %_ZN6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i164, %bb.ex
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #30
  %i.sr = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.ey unwind label %bb.fl

bb.ey:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb19TupleDataCollectionESt14default_deleteIS1_EED2Ev.exit.i168
  invoke void @_ZN6duckdb19TupleDataCollection16InitializeAppendERNS_20TupleDataAppendStateENS_22TupleDataPinPropertiesE(ptr noundef nonnull align 8 dereferenceable(192) %i.sr, ptr noundef nonnull align 8 dereferenceable(544) %15, i8 noundef zeroext 2)
          to label %bb.ez unwind label %bb.fl

bb.ez:                                            ; preds = %bb.ey
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #30
  invoke void @_ZN6duckdb19TupleDataChunkStateC2Ev(ptr noundef nonnull align 8 dereferenceable(488) %17)
          to label %bb.fa unwind label %bb.fm

bb.fa:                                            ; preds = %bb.ez
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #30
  invoke void @_ZN6duckdb19TupleDataChunkStateC2Ev(ptr noundef nonnull align 8 dereferenceable(488) %18)
          to label %bb.fb unwind label %bb.fn

bb.fb:                                            ; preds = %bb.fa
  %i.ss = getelementptr inbounds nuw i8, ptr %17, i64 48
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIPNS_7SortKeyILNS_11SortKeyTypeE8EEEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.ss)
          to label %bb.fc unwind label %bb.fo

bb.fc:                                            ; preds = %bb.fb
  %i.st = getelementptr inbounds nuw i8, ptr %17, i64 80
  %i.su = load ptr, ptr %i.st, align 8, !tbaa !1048 ; 13 uses
  %i.sv = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.fd unwind label %bb.fp

bb.fd:                                            ; preds = %bb.fc
  %i.sw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb19TupleDataCollection5CountEv(ptr noundef nonnull align 8 dereferenceable(192) %i.sv)
          to label %bb.fe unwind label %bb.fp

bb.fe:                                            ; preds = %bb.fd
  %i.sx = load i64, ptr %i.sw, align 8, !tbaa !168 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #30
  %i.sy = invoke noundef nonnull align 8 dereferenceable(192) ptr @_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.ff unwind label %bb.fq

bb.ff:                                            ; preds = %bb.fe
  invoke void @_ZN6duckdb18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEC2ERKNS_19TupleDataCollectionE(ptr noundef nonnull align 8 dereferenceable(48) %19, ptr noundef nonnull align 8 dereferenceable(192) %i.sy)
          to label %bb.fg unwind label %bb.fq

bb.fg:                                            ; preds = %bb.ff
  %i.sz = getelementptr inbounds nuw i8, ptr %19, i64 32
  %.not.i174 = icmp eq i64 %i.sx, 0
  br i1 %.not.i174, label %._crit_edge111.i205, label %.lr.ph110.i175

.lr.ph110.i175:                                   ; preds = %bb.fg
  %i.ta = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.tb = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.tc = getelementptr inbounds nuw i8, ptr %18, i64 48
  %i.td = getelementptr inbounds nuw i8, ptr %18, i64 80
  %i.te = getelementptr inbounds nuw i8, ptr %15, i64 312
  %i.tf = getelementptr inbounds nuw i8, ptr %18, i64 256
  %i.tg = getelementptr inbounds nuw i8, ptr %15, i64 104
  %i.th = getelementptr inbounds nuw i8, ptr %15, i64 136
  br label %bb.fh

bb.fh:                                            ; preds = %._crit_edge105.i204, %.lr.ph110.i175
  %.026108.i176 = phi i64 [ 0, %.lr.ph110.i175 ], [ %i.ww, %._crit_edge105.i204 ] ; 3 uses
  %.sroa.597.0107.i177 = phi i64 [ 0, %.lr.ph110.i175 ], [ %.sroa.597.1.lcssa.i187, %._crit_edge105.i204 ] ; 3 uses
  %.sroa.8.0106.i178 = phi i64 [ 0, %.lr.ph110.i175 ], [ %.sroa.8.1.lcssa.i186, %._crit_edge105.i204 ] ; 3 uses
  %i.ti = load atomic i8, ptr %i.ta monotonic, align 8, !range !68, !noundef !69
  %i.tj = trunc nuw i8 %i.ti to i1
  br i1 %i.tj, label %bb.fi, label %bb.ft

bb.fi:                                            ; preds = %bb.fh
  %i.tk = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  invoke void @_ZN6duckdb18InterruptExceptionC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.tk)
          to label %bb.fj unwind label %bb.fr

bb.fj:                                            ; preds = %bb.fi
  invoke void @__cxa_throw(ptr nonnull %i.tk, ptr nonnull @_ZTIN6duckdb18InterruptExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
          to label %bb.gq unwind label %bb.fs

bb.fk:                                            ; preds = %bb.ew, %_ZN6duckdb20TupleDataAppendStateC2Ev.exit54.i161
  %i.tl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #30
  br label %bb.gp

bb.fl:                                            ; preds = %bb.ey, %_ZNSt10unique_ptrIN6duckdb19TupleDataCollectionESt14default_deleteIS1_EED2Ev.exit.i168
  %i.tm = landingpad { ptr, i32 }
          cleanup
  br label %bb.gp

bb.fm:                                            ; preds = %bb.ez
  %i.tn = landingpad { ptr, i32 }
          cleanup
  br label %bb.go

bb.fn:                                            ; preds = %bb.fa
  %i.to = landingpad { ptr, i32 }
          cleanup
  br label %bb.gn

bb.fo:                                            ; preds = %bb.fb
  %i.tp = landingpad { ptr, i32 }
          cleanup
  br label %bb.gm

bb.fp:                                            ; preds = %bb.fd, %bb.fc
  %i.tq = landingpad { ptr, i32 }
          cleanup
  br label %bb.gm

bb.fq:                                            ; preds = %bb.ff, %bb.fe
  %i.tr = landingpad { ptr, i32 }
          cleanup
  br label %_ZN6duckdb18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EED2Ev.exit91.i172

bb.fr:                                            ; preds = %bb.fi
  %i.ts = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.tk) #30
  br label %bb.gk

bb.fs:                                            ; preds = %bb.gd, %bb.gc, %bb.gb, %bb.ga, %bb.fz, %._crit_edge111.i205, %bb.fj
  %i.tt = landingpad { ptr, i32 }
          cleanup
  br label %bb.gk

bb.ft:                                            ; preds = %bb.fh
  %i.tu = sub i64 %i.sx, %.026108.i176            ; 3 uses
  %i.tv = call noundef i64 @llvm.umin.i64(i64 %i.tu, i64 2048) ; 12 uses
  %.not112.i179 = icmp eq i64 %i.sx, %.026108.i176 ; 2 uses
  br i1 %.not112.i179, label %._crit_edge.i185, label %.lr.ph.i180

.lr.ph.i180:                                      ; preds = %bb.ft
  %i.tw = load i64, ptr %i.sz, align 8, !tbaa !168, !noalias !1439 ; 3 uses
  %i.tx = load ptr, ptr %i.tb, align 8, !tbaa !1246 ; 3 uses
  %xtraiter497 = and i64 %i.tv, 1
  %i.ty = icmp eq i64 %i.tu, 1
  br i1 %i.ty, label %.epil.preheader496, label %.lr.ph.i180.new

.lr.ph.i180.new:                                  ; preds = %.lr.ph.i180
  %unroll_iter503 = and i64 %i.tv, 4094
  br label %bb.fu

._crit_edge.i185.loopexit.unr-lcssa:              ; preds = %bb.fu
  %lcmp.mod499.not = icmp eq i64 %xtraiter497, 0
  br i1 %lcmp.mod499.not, label %._crit_edge.i185, label %.epil.preheader496

.epil.preheader496:                               ; preds = %._crit_edge.i185.loopexit.unr-lcssa, %.lr.ph.i180
  %.025101.i181.epil.init = phi i64 [ 0, %.lr.ph.i180 ], [ %i.vc, %._crit_edge.i185.loopexit.unr-lcssa ]
  %.sroa.597.1100.i182.epil.init = phi i64 [ %.sroa.597.0107.i177, %.lr.ph.i180 ], [ %i.uv, %._crit_edge.i185.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.8.199.i183.epil.init = phi i64 [ %.sroa.8.0106.i178, %.lr.ph.i180 ], [ %i.uw, %._crit_edge.i185.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod502 = trunc i64 %i.tv to i1
  call void @llvm.assume(i1 %lcmp.mod502)
  %i.tz = add i64 %.sroa.8.199.i183.epil.init, 1  ; 2 uses
  %i.ua = icmp eq i64 %i.tz, %i.tw                ; 2 uses
  %i.ub = zext i1 %i.ua to i64
  %i.uc = add i64 %.sroa.597.1100.i182.epil.init, %i.ub
  %i.ud = select i1 %i.ua, i64 0, i64 %i.tz
  %i.ue = getelementptr inbounds nuw [8 x i8], ptr %i.tx, i64 %.sroa.597.1100.i182.epil.init
  %i.uf = load ptr, ptr %i.ue, align 8, !tbaa !1051
  %i.ug = getelementptr inbounds nuw [32 x i8], ptr %i.uf, i64 %.sroa.8.199.i183.epil.init
  %i.uh = getelementptr inbounds nuw [8 x i8], ptr %i.su, i64 %.025101.i181.epil.init
  store ptr %i.ug, ptr %i.uh, align 8, !tbaa !1056
  br label %._crit_edge.i185

._crit_edge.i185:                                 ; preds = %.epil.preheader496, %._crit_edge.i185.loopexit.unr-lcssa, %bb.ft
  %.sroa.8.1.lcssa.i186 = phi i64 [ %.sroa.8.0106.i178, %bb.ft ], [ %i.uw, %._crit_edge.i185.loopexit.unr-lcssa ], [ %i.ud, %.epil.preheader496 ]
  %.sroa.597.1.lcssa.i187 = phi i64 [ %.sroa.597.0107.i177, %bb.ft ], [ %i.uv, %._crit_edge.i185.loopexit.unr-lcssa ], [ %i.uc, %.epil.preheader496 ]
  %i.ui = invoke noundef nonnull align 8 dereferenceable(192) ptr @_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.fv unwind label %bb.fx     ; 4 uses

bb.fu:                                            ; preds = %bb.fu, %.lr.ph.i180.new
  %.025101.i181 = phi i64 [ 0, %.lr.ph.i180.new ], [ %i.vc, %bb.fu ] ; 3 uses
  %.sroa.597.1100.i182 = phi i64 [ %.sroa.597.0107.i177, %.lr.ph.i180.new ], [ %i.uv, %bb.fu ] ; 2 uses
  %.sroa.8.199.i183 = phi i64 [ %.sroa.8.0106.i178, %.lr.ph.i180.new ], [ %i.uw, %bb.fu ] ; 2 uses
  %niter504 = phi i64 [ 0, %.lr.ph.i180.new ], [ %niter504.next.1, %bb.fu ]
  %i.uj = add i64 %.sroa.8.199.i183, 1            ; 2 uses
  %i.uk = icmp eq i64 %i.uj, %i.tw                ; 2 uses
  %i.ul = zext i1 %i.uk to i64
  %i.um = add i64 %.sroa.597.1100.i182, %i.ul     ; 2 uses
  %i.un = select i1 %i.uk, i64 0, i64 %i.uj       ; 2 uses
  %i.uo = getelementptr inbounds nuw [8 x i8], ptr %i.tx, i64 %.sroa.597.1100.i182
  %i.up = load ptr, ptr %i.uo, align 8, !tbaa !1051
  %i.uq = getelementptr inbounds nuw [32 x i8], ptr %i.up, i64 %.sroa.8.199.i183
  %i.ur = getelementptr inbounds nuw [8 x i8], ptr %i.su, i64 %.025101.i181
  store ptr %i.uq, ptr %i.ur, align 8, !tbaa !1056
  %i.us = add i64 %i.un, 1                        ; 2 uses
  %i.ut = icmp eq i64 %i.us, %i.tw                ; 2 uses
  %i.uu = zext i1 %i.ut to i64
  %i.uv = add i64 %i.um, %i.uu                    ; 3 uses
  %i.uw = select i1 %i.ut, i64 0, i64 %i.us       ; 3 uses
  %i.ux = getelementptr inbounds nuw [8 x i8], ptr %i.tx, i64 %i.um
  %i.uy = load ptr, ptr %i.ux, align 8, !tbaa !1051
  %i.uz = getelementptr inbounds nuw [32 x i8], ptr %i.uy, i64 %i.un
  %i.va = getelementptr inbounds nuw [8 x i8], ptr %i.su, i64 %.025101.i181
  %i.vb = getelementptr inbounds nuw i8, ptr %i.va, i64 8
  store ptr %i.uz, ptr %i.vb, align 8, !tbaa !1056
  %i.vc = add nuw nsw i64 %.025101.i181, 2        ; 2 uses
  %niter504.next.1 = add i64 %niter504, 2         ; 2 uses
  %niter504.ncmp.1 = icmp eq i64 %niter504.next.1, %unroll_iter503
  br i1 %niter504.ncmp.1, label %._crit_edge.i185.loopexit.unr-lcssa, label %bb.fu, !llvm.loop !1442

bb.fv:                                            ; preds = %._crit_edge.i185
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIPhEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.tc)
          to label %.noexc.i190 unwind label %bb.fx

.noexc.i190:                                      ; preds = %bb.fv
  %i.vd = load ptr, ptr %i.td, align 8, !tbaa !1048 ; 5 uses
  %i.ve = add nsw i64 %i.tv, -1
  %xtraiter505 = and i64 %i.tv, 3                 ; 3 uses
  %i.vf = icmp ult i64 %i.ve, 3
  br i1 %i.vf, label %.lr.ph.i.i191.epil.preheader, label %.noexc.i190.new

.noexc.i190.new:                                  ; preds = %.noexc.i190
  %unroll_iter509 = and i64 %i.tv, 4092
  br label %.lr.ph.i.i191

._crit_edge.i.loopexit.i194.unr-lcssa:            ; preds = %.lr.ph.i.i191
  %lcmp.mod507.not = icmp eq i64 %xtraiter505, 0
  br i1 %lcmp.mod507.not, label %._crit_edge.i.loopexit.i194, label %.lr.ph.i.i191.epil.preheader

.lr.ph.i.i191.epil.preheader:                     ; preds = %._crit_edge.i.loopexit.i194.unr-lcssa, %.noexc.i190
  %.01.i.i192.epil.init = phi i64 [ 0, %.noexc.i190 ], [ %i.wn, %._crit_edge.i.loopexit.i194.unr-lcssa ]
  %lcmp.mod508 = icmp ne i64 %xtraiter505, 0
  call void @llvm.assume(i1 %lcmp.mod508)
  br label %.lr.ph.i.i191.epil

.lr.ph.i.i191.epil:                               ; preds = %.lr.ph.i.i191.epil, %.lr.ph.i.i191.epil.preheader
  %.01.i.i192.epil = phi i64 [ %i.vl, %.lr.ph.i.i191.epil ], [ %.01.i.i192.epil.init, %.lr.ph.i.i191.epil.preheader ] ; 3 uses
  %epil.iter506 = phi i64 [ %epil.iter506.next, %.lr.ph.i.i191.epil ], [ 0, %.lr.ph.i.i191.epil.preheader ]
  %i.vg = getelementptr inbounds nuw [8 x i8], ptr %i.su, i64 %.01.i.i192.epil
  %i.vh = load ptr, ptr %i.vg, align 8, !tbaa !1056
  %i.vi = getelementptr inbounds nuw i8, ptr %i.vh, i64 24
  %i.vj = load ptr, ptr %i.vi, align 8, !tbaa !527
  %i.vk = getelementptr inbounds nuw [8 x i8], ptr %i.vd, i64 %.01.i.i192.epil
  store ptr %i.vj, ptr %i.vk, align 8, !tbaa !1051
  %i.vl = add nuw i64 %.01.i.i192.epil, 1
  %epil.iter506.next = add i64 %epil.iter506, 1   ; 2 uses
  %epil.iter506.cmp.not = icmp eq i64 %epil.iter506.next, %xtraiter505
  br i1 %epil.iter506.cmp.not, label %._crit_edge.i.loopexit.i194, label %.lr.ph.i.i191.epil, !llvm.loop !1443

._crit_edge.i.loopexit.i194:                      ; preds = %.lr.ph.i.i191.epil, %._crit_edge.i.loopexit.i194.unr-lcssa
  %i.vm = invoke noundef nonnull align 8 dereferenceable(217) ptr @_ZNK6duckdb19TupleDataCollection9GetLayoutEv(ptr noundef nonnull align 8 dereferenceable(192) %i.ui)
          to label %.noexc56.i195 unwind label %bb.fx

.noexc56.i195:                                    ; preds = %._crit_edge.i.loopexit.i194
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vm, i64 152
  %i.vo = load i8, ptr %i.vn, align 8, !tbaa !1425, !range !68, !noundef !69
  %i.vp = trunc nuw i8 %i.vo to i1
  br i1 %i.vp, label %.noexc57.i196, label %bb.fw

.lr.ph.i.i191:                                    ; preds = %.lr.ph.i.i191, %.noexc.i190.new
  %.01.i.i192 = phi i64 [ 0, %.noexc.i190.new ], [ %i.wn, %.lr.ph.i.i191 ] ; 6 uses
  %niter510 = phi i64 [ 0, %.noexc.i190.new ], [ %niter510.next.3, %.lr.ph.i.i191 ]
  %i.vq = getelementptr inbounds nuw [8 x i8], ptr %i.su, i64 %.01.i.i192
  %i.vr = load ptr, ptr %i.vq, align 8, !tbaa !1056
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vr, i64 24
  %i.vt = load ptr, ptr %i.vs, align 8, !tbaa !527
  %i.vu = getelementptr inbounds nuw [8 x i8], ptr %i.vd, i64 %.01.i.i192
  store ptr %i.vt, ptr %i.vu, align 8, !tbaa !1051
  %i.vv = or disjoint i64 %.01.i.i192, 1          ; 2 uses
  %i.vw = getelementptr inbounds nuw [8 x i8], ptr %i.su, i64 %i.vv
  %i.vx = load ptr, ptr %i.vw, align 8, !tbaa !1056
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vx, i64 24
  %i.vz = load ptr, ptr %i.vy, align 8, !tbaa !527
  %i.wa = getelementptr inbounds nuw [8 x i8], ptr %i.vd, i64 %i.vv
  store ptr %i.vz, ptr %i.wa, align 8, !tbaa !1051
  %i.wb = or disjoint i64 %.01.i.i192, 2          ; 2 uses
  %i.wc = getelementptr inbounds nuw [8 x i8], ptr %i.su, i64 %i.wb
  %i.wd = load ptr, ptr %i.wc, align 8, !tbaa !1056
  %i.we = getelementptr inbounds nuw i8, ptr %i.wd, i64 24
  %i.wf = load ptr, ptr %i.we, align 8, !tbaa !527
  %i.wg = getelementptr inbounds nuw [8 x i8], ptr %i.vd, i64 %i.wb
  store ptr %i.wf, ptr %i.wg, align 8, !tbaa !1051
  %i.wh = or disjoint i64 %.01.i.i192, 3          ; 2 uses
  %i.wi = getelementptr inbounds nuw [8 x i8], ptr %i.su, i64 %i.wh
  %i.wj = load ptr, ptr %i.wi, align 8, !tbaa !1056
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wj, i64 24
  %i.wl = load ptr, ptr %i.wk, align 8, !tbaa !527
  %i.wm = getelementptr inbounds nuw [8 x i8], ptr %i.vd, i64 %i.wh
  store ptr %i.wl, ptr %i.wm, align 8, !tbaa !1051
  %i.wn = add nuw i64 %.01.i.i192, 4              ; 2 uses
  %niter510.next.3 = add i64 %niter510, 4         ; 2 uses
  %niter510.ncmp.3 = icmp eq i64 %niter510.next.3, %unroll_iter509
  br i1 %niter510.ncmp.3, label %._crit_edge.i.loopexit.i194.unr-lcssa, label %.lr.ph.i.i191, !llvm.loop !1444

bb.fw:                                            ; preds = %.noexc56.i195
  invoke void @_ZNK6duckdb19TupleDataCollection16FindHeapPointersERNS_19TupleDataChunkStateEm(ptr noundef nonnull align 8 dereferenceable(192) %i.ui, ptr noundef nonnull align 8 dereferenceable(488) %18, i64 noundef %i.tv)
          to label %.noexc57.i196 unwind label %bb.fx

.noexc57.i196:                                    ; preds = %bb.fw, %.noexc56.i195
  invoke void @_ZN6duckdb6Vector9ReferenceERKS0_(ptr noundef nonnull align 8 dereferenceable(104) %i.te, ptr noundef nonnull align 8 dereferenceable(104) %i.tf)
          to label %.noexc58.i197 unwind label %bb.fx

.noexc58.i197:                                    ; preds = %.noexc57.i196
  invoke void @_ZN6duckdb19TupleDataCollection5BuildERNS_17TupleDataPinStateERNS_19TupleDataChunkStateEmm(ptr noundef nonnull align 8 dereferenceable(192) %i.ui, ptr noundef nonnull align 8 dereferenceable(544) %15, ptr noundef nonnull align 8 dereferenceable(488) %i.sm, i64 noundef 0, i64 noundef %i.tv)
          to label %.noexc59.i198 unwind label %bb.fx

.noexc59.i198:                                    ; preds = %.noexc58.i197
  %i.wo = invoke noundef ptr @_ZN6duckdb10FlatVector26IncrementalSelectionVectorEv()
          to label %.noexc60.i199 unwind label %bb.fx

.noexc60.i199:                                    ; preds = %.noexc59.i198
  invoke void @_ZNK6duckdb19TupleDataCollection8CopyRowsERNS_19TupleDataChunkStateES2_RKNS_15SelectionVectorEm(ptr noundef nonnull align 8 dereferenceable(192) %i.ui, ptr noundef nonnull align 8 dereferenceable(488) %i.sm, ptr noundef nonnull align 8 dereferenceable(488) %18, ptr noundef nonnull align 8 dereferenceable(24) %i.wo, i64 noundef %i.tv)
          to label %_ZN6duckdbL18ReorderPayloadDataINS_7SortKeyILNS_11SortKeyTypeE8EEEEEvRNS_19TupleDataCollectionERNS_20TupleDataAppendStateEPKPT_RNS_19TupleDataChunkStateERKm.exit.i unwind label %bb.fx

_ZN6duckdbL18ReorderPayloadDataINS_7SortKeyILNS_11SortKeyTypeE8EEEEEvRNS_19TupleDataCollectionERNS_20TupleDataAppendStateEPKPT_RNS_19TupleDataChunkStateERKm.exit.i: ; preds = %.noexc60.i199
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIKPhEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.tg)
          to label %_ZN6duckdb10FlatVector7GetDataIKPhEEPT_RNS_6VectorE.exit.i200 unwind label %bb.fy

_ZN6duckdb10FlatVector7GetDataIKPhEEPT_RNS_6VectorE.exit.i200: ; preds = %_ZN6duckdbL18ReorderPayloadDataINS_7SortKeyILNS_11SortKeyTypeE8EEEEEvRNS_19TupleDataCollectionERNS_20TupleDataAppendStateEPKPT_RNS_19TupleDataChunkStateERKm.exit.i
  %49 = load ptr, ptr %i.th, align 8, !tbaa !1048 ; 5 uses
  br i1 %.not112.i179, label %._crit_edge105.i204, label %.lr.ph104.i201.preheader

.lr.ph104.i201.preheader:                         ; preds = %_ZN6duckdb10FlatVector7GetDataIKPhEEPT_RNS_6VectorE.exit.i200
  %xtraiter511 = and i64 %i.tv, 3                 ; 3 uses
  %i.wp = icmp ult i64 %i.tu, 4
  br i1 %i.wp, label %.lr.ph104.i201.epil.preheader, label %.lr.ph104.i201.preheader.new

.lr.ph104.i201.preheader.new:                     ; preds = %.lr.ph104.i201.preheader
  %unroll_iter515 = and i64 %i.tv, 4092
  br label %.lr.ph104.i201

._crit_edge105.i204.loopexit.unr-lcssa:           ; preds = %.lr.ph104.i201
  %lcmp.mod513.not = icmp eq i64 %xtraiter511, 0
  br i1 %lcmp.mod513.not, label %._crit_edge105.i204, label %.lr.ph104.i201.epil.preheader

.lr.ph104.i201.epil.preheader:                    ; preds = %._crit_edge105.i204.loopexit.unr-lcssa, %.lr.ph104.i201.preheader
  %.024103.i202.epil.init = phi i64 [ 0, %.lr.ph104.i201.preheader ], [ %i.xx, %._crit_edge105.i204.loopexit.unr-lcssa ]
  %lcmp.mod514 = icmp ne i64 %xtraiter511, 0
  call void @llvm.assume(i1 %lcmp.mod514)
  br label %.lr.ph104.i201.epil

.lr.ph104.i201.epil:                              ; preds = %.lr.ph104.i201.epil, %.lr.ph104.i201.epil.preheader
  %.024103.i202.epil = phi i64 [ %i.wv, %.lr.ph104.i201.epil ], [ %.024103.i202.epil.init, %.lr.ph104.i201.epil.preheader ] ; 3 uses
  %epil.iter512 = phi i64 [ %epil.iter512.next, %.lr.ph104.i201.epil ], [ 0, %.lr.ph104.i201.epil.preheader ]
  %i.wq = getelementptr inbounds nuw [8 x i8], ptr %i.su, i64 %.024103.i202.epil
  %i.wr = load ptr, ptr %i.wq, align 8, !tbaa !1056
  %i.ws = getelementptr inbounds nuw [8 x i8], ptr %49, i64 %.024103.i202.epil
  %i.wt = load ptr, ptr %i.ws, align 8, !tbaa !1051
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wr, i64 24
  store ptr %i.wt, ptr %i.wu, align 8, !tbaa !527
  %i.wv = add nuw nsw i64 %.024103.i202.epil, 1
  %epil.iter512.next = add i64 %epil.iter512, 1   ; 2 uses
  %epil.iter512.cmp.not = icmp eq i64 %epil.iter512.next, %xtraiter511
  br i1 %epil.iter512.cmp.not, label %._crit_edge105.i204, label %.lr.ph104.i201.epil, !llvm.loop !1445

._crit_edge105.i204:                              ; preds = %._crit_edge105.i204.loopexit.unr-lcssa, %.lr.ph104.i201.epil, %_ZN6duckdb10FlatVector7GetDataIKPhEEPT_RNS_6VectorE.exit.i200
  %i.ww = add i64 %i.tv, %.026108.i176            ; 2 uses
  %i.wx = icmp ult i64 %i.ww, %i.sx
  br i1 %i.wx, label %bb.fh, label %._crit_edge111.i205, !llvm.loop !1446

bb.fx:                                            ; preds = %.noexc60.i199, %.noexc59.i198, %.noexc58.i197, %.noexc57.i196, %bb.fw, %._crit_edge.i.loopexit.i194, %bb.fv, %._crit_edge.i185
  %i.wy = landingpad { ptr, i32 }
          cleanup
  br label %bb.gk

bb.fy:                                            ; preds = %_ZN6duckdbL18ReorderPayloadDataINS_7SortKeyILNS_11SortKeyTypeE8EEEEEvRNS_19TupleDataCollectionERNS_20TupleDataAppendStateEPKPT_RNS_19TupleDataChunkStateERKm.exit.i
  %i.wz = landingpad { ptr, i32 }
          cleanup
  br label %bb.gk

.lr.ph104.i201:                                   ; preds = %.lr.ph104.i201, %.lr.ph104.i201.preheader.new
  %.024103.i202 = phi i64 [ 0, %.lr.ph104.i201.preheader.new ], [ %i.xx, %.lr.ph104.i201 ] ; 6 uses
  %niter516 = phi i64 [ 0, %.lr.ph104.i201.preheader.new ], [ %niter516.next.3, %.lr.ph104.i201 ]
  %i.xa = getelementptr inbounds nuw [8 x i8], ptr %i.su, i64 %.024103.i202
  %i.xb = load ptr, ptr %i.xa, align 8, !tbaa !1056
  %i.xc = getelementptr inbounds nuw [8 x i8], ptr %49, i64 %.024103.i202
  %i.xd = load ptr, ptr %i.xc, align 8, !tbaa !1051
  %i.xe = getelementptr inbounds nuw i8, ptr %i.xb, i64 24
  store ptr %i.xd, ptr %i.xe, align 8, !tbaa !527
  %i.xf = or disjoint i64 %.024103.i202, 1        ; 2 uses
  %i.xg = getelementptr inbounds nuw [8 x i8], ptr %i.su, i64 %i.xf
  %i.xh = load ptr, ptr %i.xg, align 8, !tbaa !1056
  %i.xi = getelementptr inbounds nuw [8 x i8], ptr %49, i64 %i.xf
  %i.xj = load ptr, ptr %i.xi, align 8, !tbaa !1051
  %i.xk = getelementptr inbounds nuw i8, ptr %i.xh, i64 24
  store ptr %i.xj, ptr %i.xk, align 8, !tbaa !527
  %i.xl = or disjoint i64 %.024103.i202, 2        ; 2 uses
  %i.xm = getelementptr inbounds nuw [8 x i8], ptr %i.su, i64 %i.xl
  %i.xn = load ptr, ptr %i.xm, align 8, !tbaa !1056
  %i.xo = getelementptr inbounds nuw [8 x i8], ptr %49, i64 %i.xl
  %i.xp = load ptr, ptr %i.xo, align 8, !tbaa !1051
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xn, i64 24
  store ptr %i.xp, ptr %i.xq, align 8, !tbaa !527
  %i.xr = or disjoint i64 %.024103.i202, 3        ; 2 uses
  %i.xs = getelementptr inbounds nuw [8 x i8], ptr %i.su, i64 %i.xr
  %i.xt = load ptr, ptr %i.xs, align 8, !tbaa !1056
  %i.xu = getelementptr inbounds nuw [8 x i8], ptr %49, i64 %i.xr
  %i.xv = load ptr, ptr %i.xu, align 8, !tbaa !1051
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xt, i64 24
  store ptr %i.xv, ptr %i.xw, align 8, !tbaa !527
  %i.xx = add nuw nsw i64 %.024103.i202, 4        ; 2 uses
  %niter516.next.3 = add i64 %niter516, 4         ; 2 uses
  %niter516.ncmp.3 = icmp eq i64 %niter516.next.3, %unroll_iter515
  br i1 %niter516.ncmp.3, label %._crit_edge105.i204.loopexit.unr-lcssa, label %.lr.ph104.i201, !llvm.loop !1447

._crit_edge111.i205:                              ; preds = %._crit_edge105.i204, %bb.fg
  %i.xy = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.fz unwind label %bb.fs

bb.fz:                                            ; preds = %._crit_edge111.i205
  invoke void @_ZN6duckdb19TupleDataCollection5UnpinEv(ptr noundef nonnull align 8 dereferenceable(192) %i.xy)
          to label %bb.ga unwind label %bb.fs

bb.ga:                                            ; preds = %bb.fz
  %i.xz = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.gb unwind label %bb.fs

bb.gb:                                            ; preds = %bb.ga
  invoke void @_ZN6duckdb19TupleDataCollection16FinalizePinStateERNS_17TupleDataPinStateE(ptr noundef nonnull align 8 dereferenceable(192) %i.xz, ptr noundef nonnull align 8 dereferenceable(49) %15)
          to label %bb.gc unwind label %bb.fs

bb.gc:                                            ; preds = %bb.gb
  %i.ya = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.gd unwind label %bb.fs

bb.gd:                                            ; preds = %bb.gc
  invoke void @_ZN6duckdb19TupleDataCollection5UnpinEv(ptr noundef nonnull align 8 dereferenceable(192) %i.ya)
          to label %bb.ge unwind label %bb.fs

bb.ge:                                            ; preds = %bb.gd
  %i.yb = load ptr, ptr %14, align 8, !tbaa !752
  store ptr null, ptr %14, align 8, !tbaa !752
  %i.yc = load ptr, ptr %2, align 8, !tbaa !752   ; 3 uses
  store ptr %i.yb, ptr %2, align 8, !tbaa !752
  %.not.i.i.i.i.i63.i206 = icmp eq ptr %i.yc, null
  br i1 %.not.i.i.i.i.i63.i206, label %_ZN6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEaSEOS4_.exit65.i208, label %_ZNKSt14default_deleteIN6duckdb19TupleDataCollectionEEclEPS1_.exit.i.i.i.i.i64.i207

_ZNKSt14default_deleteIN6duckdb19TupleDataCollectionEEclEPS1_.exit.i.i.i.i.i64.i207: ; preds = %bb.ge
  call void @_ZN6duckdb19TupleDataCollectionD1Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %i.yc) #30
  call void @_ZdlPv(ptr noundef nonnull %i.yc) #29
  br label %_ZN6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEaSEOS4_.exit65.i208

_ZN6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEaSEOS4_.exit65.i208: ; preds = %_ZNKSt14default_deleteIN6duckdb19TupleDataCollectionEEclEPS1_.exit.i.i.i.i.i64.i207, %bb.ge
  %i.yd = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.ye = load ptr, ptr %i.yd, align 8, !tbaa !1246 ; 2 uses
  %.not.i.i.i.i.i209 = icmp eq ptr %i.ye, null
  br i1 %.not.i.i.i.i.i209, label %_ZN6duckdb18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EED2Ev.exit.i210, label %bb.gf

bb.gf:                                            ; preds = %_ZN6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEaSEOS4_.exit65.i208
  call void @_ZdlPv(ptr noundef nonnull %i.ye) #29
  br label %_ZN6duckdb18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EED2Ev.exit.i210

_ZN6duckdb18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EED2Ev.exit.i210: ; preds = %bb.gf, %_ZN6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEaSEOS4_.exit65.i208
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #30
  call void @_ZN6duckdb19TupleDataChunkStateD2Ev(ptr noundef nonnull align 8 dead_on_return(488) dereferenceable(488) %18) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #30
  call void @_ZN6duckdb19TupleDataChunkStateD2Ev(ptr noundef nonnull align 8 dead_on_return(488) dereferenceable(488) %17) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #30
  call void @_ZN6duckdb19TupleDataChunkStateD2Ev(ptr noundef nonnull align 8 dead_on_return(488) dereferenceable(488) %i.sm) #30
  %i.yf = getelementptr inbounds nuw i8, ptr %15, i64 24 ; 2 uses
  %i.yg = load ptr, ptr %i.yf, align 8, !tbaa !642 ; 3 uses
  %i.yh = getelementptr inbounds nuw i8, ptr %15, i64 32
  %i.yi = load ptr, ptr %i.yh, align 8, !tbaa !643 ; 2 uses
  %.not4.i.i.i.i.i.i.i211 = icmp eq ptr %i.yg, %i.yi
  br i1 %.not4.i.i.i.i.i.i.i211, label %_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exit.i.i.i.i.i217, label %.lr.ph.i.i.i.i.i.i.i212

.lr.ph.i.i.i.i.i.i.i212:                          ; preds = %_ZN6duckdb18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EED2Ev.exit.i210, %.lr.ph.i.i.i.i.i.i.i212
  %.05.i.i.i.i.i.i.i213 = phi ptr [ %i.yk, %.lr.ph.i.i.i.i.i.i.i212 ], [ %i.yg, %_ZN6duckdb18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EED2Ev.exit.i210 ] ; 2 uses
  %i.yj = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i213, i64 8
  call void @_ZN6duckdb12BufferHandleD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.yj) #30
  %i.yk = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i213, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i214 = icmp eq ptr %i.yk, %i.yi
  br i1 %.not.i.i.i.i.i.i.i214, label %_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i.i.i215, label %.lr.ph.i.i.i.i.i.i.i212, !llvm.loop !644

_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i.i.i215: ; preds = %.lr.ph.i.i.i.i.i.i.i212
  %.pr.i.i.i.i.i216 = load ptr, ptr %i.yf, align 8, !tbaa !642
  br label %_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exit.i.i.i.i.i217

_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exit.i.i.i.i.i217: ; preds = %_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i.i.i215, %_ZN6duckdb18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EED2Ev.exit.i210
  %i.yl = phi ptr [ %.pr.i.i.i.i.i216, %_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i.i.i215 ], [ %i.yg, %_ZN6duckdb18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EED2Ev.exit.i210 ] ; 2 uses
  %.not.i.i1.i.i.i.i.i218 = icmp eq ptr %i.yl, null
  br i1 %.not.i.i1.i.i.i.i.i218, label %_ZN6duckdb19buffer_handle_map_tD2Ev.exit.i.i.i219, label %bb.gg

bb.gg:                                            ; preds = %_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exit.i.i.i.i.i217
  call void @_ZdlPv(ptr noundef nonnull %i.yl) #29
  br label %_ZN6duckdb19buffer_handle_map_tD2Ev.exit.i.i.i219

_ZN6duckdb19buffer_handle_map_tD2Ev.exit.i.i.i219: ; preds = %bb.gg, %_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exit.i.i.i.i.i217
  %i.ym = load ptr, ptr %15, align 8, !tbaa !642  ; 3 uses
  %i.yn = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.yo = load ptr, ptr %i.yn, align 8, !tbaa !643 ; 2 uses
  %.not4.i.i.i.i1.i.i.i220 = icmp eq ptr %i.ym, %i.yo
  br i1 %.not4.i.i.i.i1.i.i.i220, label %_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exit.i.i7.i.i.i226, label %.lr.ph.i.i.i.i2.i.i.i221

.lr.ph.i.i.i.i2.i.i.i221:                         ; preds = %_ZN6duckdb19buffer_handle_map_tD2Ev.exit.i.i.i219, %.lr.ph.i.i.i.i2.i.i.i221
  %.05.i.i.i.i3.i.i.i222 = phi ptr [ %i.yq, %.lr.ph.i.i.i.i2.i.i.i221 ], [ %i.ym, %_ZN6duckdb19buffer_handle_map_tD2Ev.exit.i.i.i219 ] ; 2 uses
  %i.yp = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i3.i.i.i222, i64 8
  call void @_ZN6duckdb12BufferHandleD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.yp) #30
  %i.yq = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i3.i.i.i222, i64 32 ; 2 uses
  %.not.i.i.i.i4.i.i.i223 = icmp eq ptr %i.yq, %i.yo
  br i1 %.not.i.i.i.i4.i.i.i223, label %_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i5.i.i.i224, label %.lr.ph.i.i.i.i2.i.i.i221, !llvm.loop !644

_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i5.i.i.i224: ; preds = %.lr.ph.i.i.i.i2.i.i.i221
  %.pr.i.i6.i.i.i225 = load ptr, ptr %15, align 8, !tbaa !642
  br label %_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exit.i.i7.i.i.i226

_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exit.i.i7.i.i.i226: ; preds = %_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i5.i.i.i224, %_ZN6duckdb19buffer_handle_map_tD2Ev.exit.i.i.i219
  %i.yr = phi ptr [ %.pr.i.i6.i.i.i225, %_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i5.i.i.i224 ], [ %i.ym, %_ZN6duckdb19buffer_handle_map_tD2Ev.exit.i.i.i219 ] ; 2 uses
  %.not.i.i1.i.i8.i.i.i227 = icmp eq ptr %i.yr, null
  br i1 %.not.i.i1.i.i8.i.i.i227, label %_ZN6duckdb20TupleDataAppendStateD2Ev.exit.i228, label %bb.gh

bb.gh:                                            ; preds = %_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exit.i.i7.i.i.i226
  call void @_ZdlPv(ptr noundef nonnull %i.yr) #29
  br label %_ZN6duckdb20TupleDataAppendStateD2Ev.exit.i228

_ZN6duckdb20TupleDataAppendStateD2Ev.exit.i228:   ; preds = %bb.gh, %_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exit.i.i7.i.i.i226
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30
  %i.ys = load ptr, ptr %14, align 8, !tbaa !752  ; 3 uses
  %.not.i66.i229 = icmp eq ptr %i.ys, null
  br i1 %.not.i66.i229, label %_ZNSt10unique_ptrIN6duckdb19TupleDataCollectionESt14default_deleteIS1_EED2Ev.exit68.i231, label %_ZNKSt14default_deleteIN6duckdb19TupleDataCollectionEEclEPS1_.exit.i67.i230

_ZNKSt14default_deleteIN6duckdb19TupleDataCollectionEEclEPS1_.exit.i67.i230: ; preds = %_ZN6duckdb20TupleDataAppendStateD2Ev.exit.i228
  call void @_ZN6duckdb19TupleDataCollectionD1Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %i.ys) #30
  call void @_ZdlPv(ptr noundef nonnull %i.ys) #29
  br label %_ZNSt10unique_ptrIN6duckdb19TupleDataCollectionESt14default_deleteIS1_EED2Ev.exit68.i231

_ZNSt10unique_ptrIN6duckdb19TupleDataCollectionESt14default_deleteIS1_EED2Ev.exit68.i231: ; preds = %_ZNKSt14default_deleteIN6duckdb19TupleDataCollectionEEclEPS1_.exit.i67.i230, %_ZN6duckdb20TupleDataAppendStateD2Ev.exit.i228
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  call void @_ZN6duckdb19TupleDataChunkStateD2Ev(ptr noundef nonnull align 8 dead_on_return(488) dereferenceable(488) %i.sk) #30
  %i.yt = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 2 uses
  %i.yu = load ptr, ptr %i.yt, align 8, !tbaa !642 ; 3 uses
  %i.yv = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.yw = load ptr, ptr %i.yv, align 8, !tbaa !643 ; 2 uses
  %.not4.i.i.i.i.i.i69.i232 = icmp eq ptr %i.yu, %i.yw
  br i1 %.not4.i.i.i.i.i.i69.i232, label %_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exit.i.i.i.i75.i238, label %.lr.ph.i.i.i.i.i.i70.i233

.lr.ph.i.i.i.i.i.i70.i233:                        ; preds = %_ZNSt10unique_ptrIN6duckdb19TupleDataCollectionESt14default_deleteIS1_EED2Ev.exit68.i231, %.lr.ph.i.i.i.i.i.i70.i233
  %.05.i.i.i.i.i.i71.i234 = phi ptr [ %i.yy, %.lr.ph.i.i.i.i.i.i70.i233 ], [ %i.yu, %_ZNSt10unique_ptrIN6duckdb19TupleDataCollectionESt14default_deleteIS1_EED2Ev.exit68.i231 ] ; 2 uses
  %i.yx = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i71.i234, i64 8
  call void @_ZN6duckdb12BufferHandleD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.yx) #30
  %i.yy = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i71.i234, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i72.i235 = icmp eq ptr %i.yy, %i.yw
  br i1 %.not.i.i.i.i.i.i72.i235, label %_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i.i73.i236, label %.lr.ph.i.i.i.i.i.i70.i233, !llvm.loop !644

_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i.i73.i236: ; preds = %.lr.ph.i.i.i.i.i.i70.i233
  %.pr.i.i.i.i74.i237 = load ptr, ptr %i.yt, align 8, !tbaa !642
  br label %_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exit.i.i.i.i75.i238

_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exit.i.i.i.i75.i238: ; preds = %_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i.i73.i236, %_ZNSt10unique_ptrIN6duckdb19TupleDataCollectionESt14default_deleteIS1_EED2Ev.exit68.i231
  %i.yz = phi ptr [ %.pr.i.i.i.i74.i237, %_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i.i73.i236 ], [ %i.yu, %_ZNSt10unique_ptrIN6duckdb19TupleDataCollectionESt14default_deleteIS1_EED2Ev.exit68.i231 ] ; 2 uses
  %.not.i.i1.i.i.i.i76.i239 = icmp eq ptr %i.yz, null
  br i1 %.not.i.i1.i.i.i.i76.i239, label %_ZN6duckdb19buffer_handle_map_tD2Ev.exit.i.i77.i240, label %bb.gi

bb.gi:                                            ; preds = %_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exit.i.i.i.i75.i238
  call void @_ZdlPv(ptr noundef nonnull %i.yz) #29
  br label %_ZN6duckdb19buffer_handle_map_tD2Ev.exit.i.i77.i240
end_hunk_3
begin_hunk_4_@_ZN6duckdbL7ReorderERNS_13ClientContextERNS_10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS3_ELb1EEES7_:bb.a
  %i.zn = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.gv unwind label %bb.hp

bb.gv:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb19TupleDataCollectionESt14default_deleteIS1_EED2Ev.exit.i256
  invoke void @_ZN6duckdb19TupleDataCollection17SetPartitionIndexEm(ptr noundef nonnull align 8 dereferenceable(192) %i.zn, i64 noundef 0)
          to label %bb.gw unwind label %bb.hp

bb.gw:                                            ; preds = %bb.gv
  %i.zo = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.gx unwind label %bb.hp

bb.gx:                                            ; preds = %bb.gw
  invoke void @_ZN6duckdb19TupleDataCollection16InitializeAppendERNS_20TupleDataAppendStateENS_22TupleDataPinPropertiesE(ptr noundef nonnull align 8 dereferenceable(192) %i.zo, ptr noundef nonnull align 8 dereferenceable(544) %4, i8 noundef zeroext 2)
          to label %bb.gy unwind label %bb.hp

bb.gy:                                            ; preds = %bb.gx
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  store ptr null, ptr %6, align 8, !tbaa !1225
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(544) %7, i8 0, i64 49, i1 false)
  %i.zp = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 4 uses
  invoke void @_ZN6duckdb19TupleDataChunkStateC2Ev(ptr noundef nonnull align 8 dereferenceable(488) %i.zp)
          to label %_ZN6duckdb20TupleDataAppendStateC2Ev.exit57.i unwind label %bb.gz

bb.gz:                                            ; preds = %bb.gy
  %i.zq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb17TupleDataPinStateD2Ev(ptr noundef nonnull align 8 dead_on_return(49) dereferenceable(544) %7) #30
  br label %.body55.i

_ZN6duckdb20TupleDataAppendStateC2Ev.exit57.i:    ; preds = %bb.gy
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  %i.zr = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.ha unwind label %bb.hq

bb.ha:                                            ; preds = %_ZN6duckdb20TupleDataAppendStateC2Ev.exit57.i
  invoke void @_ZNK6duckdb19TupleDataCollection12CreateUniqueEv(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.493") align 8 %8, ptr noundef nonnull align 8 dereferenceable(192) %i.zr)
          to label %bb.hb unwind label %bb.hq

bb.hb:                                            ; preds = %bb.ha
  %i.zs = load ptr, ptr %8, align 8, !tbaa !752
  store ptr null, ptr %8, align 8, !tbaa !752
  %i.zt = load ptr, ptr %6, align 8, !tbaa !752   ; 3 uses
  store ptr %i.zs, ptr %6, align 8, !tbaa !752
  %.not.i.i.i.i.i58.i = icmp eq ptr %i.zt, null
  br i1 %.not.i.i.i.i.i58.i, label %_ZNSt10unique_ptrIN6duckdb19TupleDataCollectionESt14default_deleteIS1_EED2Ev.exit63.i, label %_ZN6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEaSEOS4_.exit60.i

_ZN6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEaSEOS4_.exit60.i: ; preds = %bb.hb
  call void @_ZN6duckdb19TupleDataCollectionD1Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %i.zt) #30
  call void @_ZdlPv(ptr noundef nonnull %i.zt) #29
  %.pr127.i = load ptr, ptr %8, align 8, !tbaa !752 ; 3 uses
  %.not.i61.i = icmp eq ptr %.pr127.i, null
  br i1 %.not.i61.i, label %_ZNSt10unique_ptrIN6duckdb19TupleDataCollectionESt14default_deleteIS1_EED2Ev.exit63.i, label %_ZNKSt14default_deleteIN6duckdb19TupleDataCollectionEEclEPS1_.exit.i62.i

_ZNKSt14default_deleteIN6duckdb19TupleDataCollectionEEclEPS1_.exit.i62.i: ; preds = %_ZN6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEaSEOS4_.exit60.i
  call void @_ZN6duckdb19TupleDataCollectionD1Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %.pr127.i) #30
  call void @_ZdlPv(ptr noundef nonnull %.pr127.i) #29
  br label %_ZNSt10unique_ptrIN6duckdb19TupleDataCollectionESt14default_deleteIS1_EED2Ev.exit63.i

_ZNSt10unique_ptrIN6duckdb19TupleDataCollectionESt14default_deleteIS1_EED2Ev.exit63.i: ; preds = %_ZNKSt14default_deleteIN6duckdb19TupleDataCollectionEEclEPS1_.exit.i62.i, %_ZN6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEaSEOS4_.exit60.i, %bb.hb
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  %i.zu = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.hc unwind label %bb.hr

bb.hc:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb19TupleDataCollectionESt14default_deleteIS1_EED2Ev.exit63.i
  invoke void @_ZN6duckdb19TupleDataCollection16InitializeAppendERNS_20TupleDataAppendStateENS_22TupleDataPinPropertiesE(ptr noundef nonnull align 8 dereferenceable(192) %i.zu, ptr noundef nonnull align 8 dereferenceable(544) %7, i8 noundef zeroext 2)
          to label %bb.hd unwind label %bb.hr

bb.hd:                                            ; preds = %bb.hc
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  invoke void @_ZN6duckdb19TupleDataChunkStateC2Ev(ptr noundef nonnull align 8 dereferenceable(488) %9)
          to label %bb.he unwind label %bb.hs

bb.he:                                            ; preds = %bb.hd
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  invoke void @_ZN6duckdb19TupleDataChunkStateC2Ev(ptr noundef nonnull align 8 dereferenceable(488) %10)
          to label %bb.hf unwind label %bb.ht

bb.hf:                                            ; preds = %bb.he
  %i.zv = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 2 uses
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIPNS_7SortKeyILNS_11SortKeyTypeE9EEEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.zv)
          to label %bb.hg unwind label %bb.hu

bb.hg:                                            ; preds = %bb.hf
  %i.zw = getelementptr inbounds nuw i8, ptr %9, i64 80 ; 2 uses
  %i.zx = load ptr, ptr %i.zw, align 8, !tbaa !1048 ; 13 uses
  %i.zy = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.hh unwind label %bb.hv

bb.hh:                                            ; preds = %bb.hg
  %i.zz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb19TupleDataCollection5CountEv(ptr noundef nonnull align 8 dereferenceable(192) %i.zy)
          to label %bb.hi unwind label %bb.hv

bb.hi:                                            ; preds = %bb.hh
  %i.aaa = load i64, ptr %i.zz, align 8, !tbaa !168 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #30
  %i.aab = invoke noundef nonnull align 8 dereferenceable(192) ptr @_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.hj unwind label %bb.hw

bb.hj:                                            ; preds = %bb.hi
  invoke void @_ZN6duckdb18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEC2ERKNS_19TupleDataCollectionE(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull align 8 dereferenceable(192) %i.aab)
          to label %bb.hk unwind label %bb.hw

bb.hk:                                            ; preds = %bb.hj
  %i.aac = getelementptr inbounds nuw i8, ptr %11, i64 32
  %.not.i257 = icmp eq i64 %i.aaa, 0
  br i1 %.not.i257, label %._crit_edge141.i, label %.lr.ph140.i

.lr.ph140.i:                                      ; preds = %bb.hk
  %i.aad = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aae = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.aaf = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.aag = getelementptr inbounds nuw i8, ptr %10, i64 80
  %i.aah = getelementptr inbounds nuw i8, ptr %7, i64 312
  %i.aai = getelementptr inbounds nuw i8, ptr %10, i64 256
  %i.aaj = getelementptr inbounds nuw i8, ptr %7, i64 104
  %i.aak = getelementptr inbounds nuw i8, ptr %7, i64 136
  %i.aal = getelementptr inbounds nuw i8, ptr %9, i64 152
  %i.aam = getelementptr inbounds nuw i8, ptr %9, i64 184
  %i.aan = getelementptr inbounds nuw i8, ptr %9, i64 256 ; 2 uses
  %i.aao = getelementptr inbounds nuw i8, ptr %9, i64 288
  %i.aap = getelementptr inbounds nuw i8, ptr %4, i64 312
  br label %bb.hl

bb.hl:                                            ; preds = %_ZN6duckdbL14ReorderKeyDataINS_7SortKeyILNS_11SortKeyTypeE9EEEEEvRNS_19TupleDataCollectionERNS_20TupleDataAppendStateERNS_19TupleDataChunkStateERKm.exit.i, %.lr.ph140.i
  %.028138.i = phi i64 [ 0, %.lr.ph140.i ], [ %i.agm, %_ZN6duckdbL14ReorderKeyDataINS_7SortKeyILNS_11SortKeyTypeE9EEEEEvRNS_19TupleDataCollectionERNS_20TupleDataAppendStateERNS_19TupleDataChunkStateERKm.exit.i ] ; 3 uses
  %.sroa.5125.0137.i = phi i64 [ 0, %.lr.ph140.i ], [ %.sroa.5125.1.lcssa.i, %_ZN6duckdbL14ReorderKeyDataINS_7SortKeyILNS_11SortKeyTypeE9EEEEEvRNS_19TupleDataCollectionERNS_20TupleDataAppendStateERNS_19TupleDataChunkStateERKm.exit.i ] ; 3 uses
  %.sroa.8.0136.i = phi i64 [ 0, %.lr.ph140.i ], [ %.sroa.8.1.lcssa.i261, %_ZN6duckdbL14ReorderKeyDataINS_7SortKeyILNS_11SortKeyTypeE9EEEEEvRNS_19TupleDataCollectionERNS_20TupleDataAppendStateERNS_19TupleDataChunkStateERKm.exit.i ] ; 3 uses
  %i.aaq = load atomic i8, ptr %i.aad monotonic, align 8, !range !68, !noundef !69
  %i.aar = trunc nuw i8 %i.aaq to i1
  br i1 %i.aar, label %bb.hm, label %bb.hz

bb.hm:                                            ; preds = %bb.hl
  %i.aas = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  invoke void @_ZN6duckdb18InterruptExceptionC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.aas)
          to label %bb.hn unwind label %bb.hx

bb.hn:                                            ; preds = %bb.hm
  invoke void @__cxa_throw(ptr nonnull %i.aas, ptr nonnull @_ZTIN6duckdb18InterruptExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
          to label %bb.ja unwind label %bb.hy

bb.ho:                                            ; preds = %bb.gt, %_ZN6duckdb20TupleDataAppendStateC2Ev.exit.i250
  %i.aat = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %bb.iz

bb.hp:                                            ; preds = %bb.gx, %bb.gw, %bb.gv, %_ZNSt10unique_ptrIN6duckdb19TupleDataCollectionESt14default_deleteIS1_EED2Ev.exit.i256
  %i.aau = landingpad { ptr, i32 }
          cleanup
  br label %bb.iz

bb.hq:                                            ; preds = %bb.ha, %_ZN6duckdb20TupleDataAppendStateC2Ev.exit57.i
  %i.aav = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br label %bb.iy

bb.hr:                                            ; preds = %bb.hc, %_ZNSt10unique_ptrIN6duckdb19TupleDataCollectionESt14default_deleteIS1_EED2Ev.exit63.i
  %i.aaw = landingpad { ptr, i32 }
          cleanup
  br label %bb.iy

bb.hs:                                            ; preds = %bb.hd
  %i.aax = landingpad { ptr, i32 }
          cleanup
  br label %bb.ix

bb.ht:                                            ; preds = %bb.he
  %i.aay = landingpad { ptr, i32 }
          cleanup
  br label %bb.iw

bb.hu:                                            ; preds = %bb.hf
  %i.aaz = landingpad { ptr, i32 }
          cleanup
  br label %bb.iv

bb.hv:                                            ; preds = %bb.hh, %bb.hg
  %i.aba = landingpad { ptr, i32 }
          cleanup
  br label %bb.iv

bb.hw:                                            ; preds = %bb.hj, %bb.hi
  %i.abb = landingpad { ptr, i32 }
          cleanup
  br label %_ZN6duckdb18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EED2Ev.exit114.i

bb.hx:                                            ; preds = %bb.hm
  %i.abc = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.aas) #30
  br label %bb.it

bb.hy:                                            ; preds = %bb.im, %bb.il, %bb.ik, %_ZN6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEaSEOS4_.exit85.i, %bb.ii, %bb.ih, %bb.ig, %._crit_edge141.i, %bb.hn
  %i.abd = landingpad { ptr, i32 }
          cleanup
  br label %bb.it

bb.hz:                                            ; preds = %bb.hl
  %i.abe = sub i64 %i.aaa, %.028138.i             ; 3 uses
  %i.abf = call noundef i64 @llvm.umin.i64(i64 %i.abe, i64 2048) ; 17 uses
  %.not142.i = icmp eq i64 %i.aaa, %.028138.i     ; 2 uses
  br i1 %.not142.i, label %._crit_edge.i260, label %.lr.ph.i258

.lr.ph.i258:                                      ; preds = %bb.hz
  %i.abg = load i64, ptr %i.aac, align 8, !tbaa !168, !noalias !1448 ; 3 uses
  %i.abh = load ptr, ptr %i.aae, align 8, !tbaa !1246 ; 3 uses
  %xtraiter = and i64 %i.abf, 1
  %i.abi = icmp eq i64 %i.abe, 1
  br i1 %i.abi, label %.epil.preheader, label %.lr.ph.i258.new

.lr.ph.i258.new:                                  ; preds = %.lr.ph.i258
  %unroll_iter = and i64 %i.abf, 4094
  br label %bb.ia

._crit_edge.i260.loopexit.unr-lcssa:              ; preds = %bb.ia
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i260, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i260.loopexit.unr-lcssa, %.lr.ph.i258
  %.027131.i.epil.init = phi i64 [ 0, %.lr.ph.i258 ], [ %i.acm, %._crit_edge.i260.loopexit.unr-lcssa ]
  %.sroa.5125.1130.i.epil.init = phi i64 [ %.sroa.5125.0137.i, %.lr.ph.i258 ], [ %i.acf, %._crit_edge.i260.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.8.1129.i.epil.init = phi i64 [ %.sroa.8.0136.i, %.lr.ph.i258 ], [ %i.acg, %._crit_edge.i260.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod478 = trunc i64 %i.abf to i1
  call void @llvm.assume(i1 %lcmp.mod478)
  %i.abj = add i64 %.sroa.8.1129.i.epil.init, 1   ; 2 uses
  %i.abk = icmp eq i64 %i.abj, %i.abg             ; 2 uses
  %i.abl = zext i1 %i.abk to i64
  %i.abm = add i64 %.sroa.5125.1130.i.epil.init, %i.abl
  %i.abn = select i1 %i.abk, i64 0, i64 %i.abj
  %i.abo = getelementptr inbounds nuw [8 x i8], ptr %i.abh, i64 %.sroa.5125.1130.i.epil.init
  %i.abp = load ptr, ptr %i.abo, align 8, !tbaa !1051
  %i.abq = getelementptr inbounds nuw [32 x i8], ptr %i.abp, i64 %.sroa.8.1129.i.epil.init
  %i.abr = getelementptr inbounds nuw [8 x i8], ptr %i.zx, i64 %.027131.i.epil.init
  store ptr %i.abq, ptr %i.abr, align 8, !tbaa !1059
  br label %._crit_edge.i260

._crit_edge.i260:                                 ; preds = %.epil.preheader, %._crit_edge.i260.loopexit.unr-lcssa, %bb.hz
  %.sroa.8.1.lcssa.i261 = phi i64 [ %.sroa.8.0136.i, %bb.hz ], [ %i.acg, %._crit_edge.i260.loopexit.unr-lcssa ], [ %i.abn, %.epil.preheader ]
  %.sroa.5125.1.lcssa.i = phi i64 [ %.sroa.5125.0137.i, %bb.hz ], [ %i.acf, %._crit_edge.i260.loopexit.unr-lcssa ], [ %i.abm, %.epil.preheader ]
  %i.abs = invoke noundef nonnull align 8 dereferenceable(192) ptr @_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.ib unwind label %bb.id     ; 4 uses

bb.ia:                                            ; preds = %bb.ia, %.lr.ph.i258.new
  %.027131.i = phi i64 [ 0, %.lr.ph.i258.new ], [ %i.acm, %bb.ia ] ; 3 uses
  %.sroa.5125.1130.i = phi i64 [ %.sroa.5125.0137.i, %.lr.ph.i258.new ], [ %i.acf, %bb.ia ] ; 2 uses
  %.sroa.8.1129.i = phi i64 [ %.sroa.8.0136.i, %.lr.ph.i258.new ], [ %i.acg, %bb.ia ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i258.new ], [ %niter.next.1, %bb.ia ]
  %i.abt = add i64 %.sroa.8.1129.i, 1             ; 2 uses
  %i.abu = icmp eq i64 %i.abt, %i.abg             ; 2 uses
  %i.abv = zext i1 %i.abu to i64
  %i.abw = add i64 %.sroa.5125.1130.i, %i.abv     ; 2 uses
  %i.abx = select i1 %i.abu, i64 0, i64 %i.abt    ; 2 uses
  %i.aby = getelementptr inbounds nuw [8 x i8], ptr %i.abh, i64 %.sroa.5125.1130.i
  %i.abz = load ptr, ptr %i.aby, align 8, !tbaa !1051
  %i.aca = getelementptr inbounds nuw [32 x i8], ptr %i.abz, i64 %.sroa.8.1129.i
  %i.acb = getelementptr inbounds nuw [8 x i8], ptr %i.zx, i64 %.027131.i
  store ptr %i.aca, ptr %i.acb, align 8, !tbaa !1059
  %i.acc = add i64 %i.abx, 1                      ; 2 uses
  %i.acd = icmp eq i64 %i.acc, %i.abg             ; 2 uses
  %i.ace = zext i1 %i.acd to i64
  %i.acf = add i64 %i.abw, %i.ace                 ; 3 uses
  %i.acg = select i1 %i.acd, i64 0, i64 %i.acc    ; 3 uses
  %i.ach = getelementptr inbounds nuw [8 x i8], ptr %i.abh, i64 %i.abw
  %i.aci = load ptr, ptr %i.ach, align 8, !tbaa !1051
  %i.acj = getelementptr inbounds nuw [32 x i8], ptr %i.aci, i64 %i.abx
  %i.ack = getelementptr inbounds nuw [8 x i8], ptr %i.zx, i64 %.027131.i
  %i.acl = getelementptr inbounds nuw i8, ptr %i.ack, i64 8
  store ptr %i.acj, ptr %i.acl, align 8, !tbaa !1059
  %i.acm = add nuw nsw i64 %.027131.i, 2          ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i260.loopexit.unr-lcssa, label %bb.ia, !llvm.loop !1451

bb.ib:                                            ; preds = %._crit_edge.i260
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIPhEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.aaf)
          to label %.noexc.i262 unwind label %bb.id

.noexc.i262:                                      ; preds = %bb.ib
  %i.acn = load ptr, ptr %i.aag, align 8, !tbaa !1048 ; 5 uses
  %i.aco = add nsw i64 %i.abf, -1                 ; 2 uses
  %xtraiter479 = and i64 %i.abf, 3                ; 3 uses
  %i.acp = icmp ult i64 %i.aco, 3
  br i1 %i.acp, label %.lr.ph.i.i263.epil.preheader, label %.noexc.i262.new

.noexc.i262.new:                                  ; preds = %.noexc.i262
  %unroll_iter482 = and i64 %i.abf, 4092
  br label %.lr.ph.i.i263

._crit_edge.i.loopexit.i265.unr-lcssa:            ; preds = %.lr.ph.i.i263
  %lcmp.mod480.not = icmp eq i64 %xtraiter479, 0
  br i1 %lcmp.mod480.not, label %._crit_edge.i.loopexit.i265, label %.lr.ph.i.i263.epil.preheader

.lr.ph.i.i263.epil.preheader:                     ; preds = %._crit_edge.i.loopexit.i265.unr-lcssa, %.noexc.i262
  %.022.i.i.epil.init = phi i64 [ 0, %.noexc.i262 ], [ %i.adx, %._crit_edge.i.loopexit.i265.unr-lcssa ]
  %lcmp.mod481 = icmp ne i64 %xtraiter479, 0
  call void @llvm.assume(i1 %lcmp.mod481)
  br label %.lr.ph.i.i263.epil

.lr.ph.i.i263.epil:                               ; preds = %.lr.ph.i.i263.epil, %.lr.ph.i.i263.epil.preheader
  %.022.i.i.epil = phi i64 [ %i.acv, %.lr.ph.i.i263.epil ], [ %.022.i.i.epil.init, %.lr.ph.i.i263.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i263.epil ], [ 0, %.lr.ph.i.i263.epil.preheader ]
  %i.acq = getelementptr inbounds nuw [8 x i8], ptr %i.zx, i64 %.022.i.i.epil
  %i.acr = load ptr, ptr %i.acq, align 8, !tbaa !1059
  %i.acs = getelementptr inbounds nuw i8, ptr %i.acr, i64 24
  %i.act = load ptr, ptr %i.acs, align 8, !tbaa !527
  %i.acu = getelementptr inbounds nuw [8 x i8], ptr %i.acn, i64 %.022.i.i.epil
  store ptr %i.act, ptr %i.acu, align 8, !tbaa !1051
  %i.acv = add nuw i64 %.022.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter479
  br i1 %epil.iter.cmp.not, label %._crit_edge.i.loopexit.i265, label %.lr.ph.i.i263.epil, !llvm.loop !1452

._crit_edge.i.loopexit.i265:                      ; preds = %.lr.ph.i.i263.epil, %._crit_edge.i.loopexit.i265.unr-lcssa
  %i.acw = invoke noundef nonnull align 8 dereferenceable(217) ptr @_ZNK6duckdb19TupleDataCollection9GetLayoutEv(ptr noundef nonnull align 8 dereferenceable(192) %i.abs)
          to label %.noexc65.i unwind label %bb.id

.noexc65.i:                                       ; preds = %._crit_edge.i.loopexit.i265
  %i.acx = getelementptr inbounds nuw i8, ptr %i.acw, i64 152
  %i.acy = load i8, ptr %i.acx, align 8, !tbaa !1425, !range !68, !noundef !69
  %i.acz = trunc nuw i8 %i.acy to i1
  br i1 %i.acz, label %.noexc66.i, label %bb.ic

.lr.ph.i.i263:                                    ; preds = %.lr.ph.i.i263, %.noexc.i262.new
  %.022.i.i = phi i64 [ 0, %.noexc.i262.new ], [ %i.adx, %.lr.ph.i.i263 ] ; 6 uses
  %niter483 = phi i64 [ 0, %.noexc.i262.new ], [ %niter483.next.3, %.lr.ph.i.i263 ]
  %i.ada = getelementptr inbounds nuw [8 x i8], ptr %i.zx, i64 %.022.i.i
  %i.adb = load ptr, ptr %i.ada, align 8, !tbaa !1059
  %i.adc = getelementptr inbounds nuw i8, ptr %i.adb, i64 24
  %i.add = load ptr, ptr %i.adc, align 8, !tbaa !527
  %i.ade = getelementptr inbounds nuw [8 x i8], ptr %i.acn, i64 %.022.i.i
  store ptr %i.add, ptr %i.ade, align 8, !tbaa !1051
  %i.adf = or disjoint i64 %.022.i.i, 1           ; 2 uses
  %i.adg = getelementptr inbounds nuw [8 x i8], ptr %i.zx, i64 %i.adf
  %i.adh = load ptr, ptr %i.adg, align 8, !tbaa !1059
  %i.adi = getelementptr inbounds nuw i8, ptr %i.adh, i64 24
  %i.adj = load ptr, ptr %i.adi, align 8, !tbaa !527
  %i.adk = getelementptr inbounds nuw [8 x i8], ptr %i.acn, i64 %i.adf
  store ptr %i.adj, ptr %i.adk, align 8, !tbaa !1051
  %i.adl = or disjoint i64 %.022.i.i, 2           ; 2 uses
  %i.adm = getelementptr inbounds nuw [8 x i8], ptr %i.zx, i64 %i.adl
  %i.adn = load ptr, ptr %i.adm, align 8, !tbaa !1059
  %i.ado = getelementptr inbounds nuw i8, ptr %i.adn, i64 24
  %i.adp = load ptr, ptr %i.ado, align 8, !tbaa !527
  %i.adq = getelementptr inbounds nuw [8 x i8], ptr %i.acn, i64 %i.adl
  store ptr %i.adp, ptr %i.adq, align 8, !tbaa !1051
  %i.adr = or disjoint i64 %.022.i.i, 3           ; 2 uses
  %i.ads = getelementptr inbounds nuw [8 x i8], ptr %i.zx, i64 %i.adr
  %i.adt = load ptr, ptr %i.ads, align 8, !tbaa !1059
  %i.adu = getelementptr inbounds nuw i8, ptr %i.adt, i64 24
  %i.adv = load ptr, ptr %i.adu, align 8, !tbaa !527
  %i.adw = getelementptr inbounds nuw [8 x i8], ptr %i.acn, i64 %i.adr
  store ptr %i.adv, ptr %i.adw, align 8, !tbaa !1051
  %i.adx = add nuw i64 %.022.i.i, 4               ; 2 uses
  %niter483.next.3 = add i64 %niter483, 4         ; 2 uses
  %niter483.ncmp.3 = icmp eq i64 %niter483.next.3, %unroll_iter482
  br i1 %niter483.ncmp.3, label %._crit_edge.i.loopexit.i265.unr-lcssa, label %.lr.ph.i.i263, !llvm.loop !1453

bb.ic:                                            ; preds = %.noexc65.i
  invoke void @_ZNK6duckdb19TupleDataCollection16FindHeapPointersERNS_19TupleDataChunkStateEm(ptr noundef nonnull align 8 dereferenceable(192) %i.abs, ptr noundef nonnull align 8 dereferenceable(488) %10, i64 noundef %i.abf)
          to label %.noexc66.i unwind label %bb.id

.noexc66.i:                                       ; preds = %bb.ic, %.noexc65.i
  invoke void @_ZN6duckdb6Vector9ReferenceERKS0_(ptr noundef nonnull align 8 dereferenceable(104) %i.aah, ptr noundef nonnull align 8 dereferenceable(104) %i.aai)
          to label %.noexc67.i unwind label %bb.id

.noexc67.i:                                       ; preds = %.noexc66.i
  invoke void @_ZN6duckdb19TupleDataCollection5BuildERNS_17TupleDataPinStateERNS_19TupleDataChunkStateEmm(ptr noundef nonnull align 8 dereferenceable(192) %i.abs, ptr noundef nonnull align 8 dereferenceable(544) %7, ptr noundef nonnull align 8 dereferenceable(488) %i.zp, i64 noundef 0, i64 noundef %i.abf)
          to label %.noexc68.i unwind label %bb.id

.noexc68.i:                                       ; preds = %.noexc67.i
  %i.ady = invoke noundef ptr @_ZN6duckdb10FlatVector26IncrementalSelectionVectorEv()
          to label %.noexc69.i unwind label %bb.id

.noexc69.i:                                       ; preds = %.noexc68.i
  invoke void @_ZNK6duckdb19TupleDataCollection8CopyRowsERNS_19TupleDataChunkStateES2_RKNS_15SelectionVectorEm(ptr noundef nonnull align 8 dereferenceable(192) %i.abs, ptr noundef nonnull align 8 dereferenceable(488) %i.zp, ptr noundef nonnull align 8 dereferenceable(488) %10, ptr noundef nonnull align 8 dereferenceable(24) %i.ady, i64 noundef %i.abf)
          to label %_ZN6duckdbL18ReorderPayloadDataINS_7SortKeyILNS_11SortKeyTypeE9EEEEEvRNS_19TupleDataCollectionERNS_20TupleDataAppendStateEPKPT_RNS_19TupleDataChunkStateERKm.exit.i unwind label %bb.id

_ZN6duckdbL18ReorderPayloadDataINS_7SortKeyILNS_11SortKeyTypeE9EEEEEvRNS_19TupleDataCollectionERNS_20TupleDataAppendStateEPKPT_RNS_19TupleDataChunkStateERKm.exit.i: ; preds = %.noexc69.i
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIKPhEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.aaj)
          to label %_ZN6duckdb10FlatVector7GetDataIKPhEEPT_RNS_6VectorE.exit.i266 unwind label %bb.ie

_ZN6duckdb10FlatVector7GetDataIKPhEEPT_RNS_6VectorE.exit.i266: ; preds = %_ZN6duckdbL18ReorderPayloadDataINS_7SortKeyILNS_11SortKeyTypeE9EEEEEvRNS_19TupleDataCollectionERNS_20TupleDataAppendStateEPKPT_RNS_19TupleDataChunkStateERKm.exit.i
  %50 = load ptr, ptr %i.aak, align 8, !tbaa !1048 ; 5 uses
  br i1 %.not142.i, label %._crit_edge135.i, label %.lr.ph134.i.preheader

.lr.ph134.i.preheader:                            ; preds = %_ZN6duckdb10FlatVector7GetDataIKPhEEPT_RNS_6VectorE.exit.i266
  %xtraiter484 = and i64 %i.abf, 3                ; 3 uses
  %i.adz = icmp ult i64 %i.abe, 4
  br i1 %i.adz, label %.lr.ph134.i.epil.preheader, label %.lr.ph134.i.preheader.new

.lr.ph134.i.preheader.new:                        ; preds = %.lr.ph134.i.preheader
  %unroll_iter488 = and i64 %i.abf, 4092
  br label %.lr.ph134.i

._crit_edge135.i.loopexit.unr-lcssa:              ; preds = %.lr.ph134.i
  %lcmp.mod486.not = icmp eq i64 %xtraiter484, 0
  br i1 %lcmp.mod486.not, label %._crit_edge135.i, label %.lr.ph134.i.epil.preheader

.lr.ph134.i.epil.preheader:                       ; preds = %._crit_edge135.i.loopexit.unr-lcssa, %.lr.ph134.i.preheader
  %.026133.i.epil.init = phi i64 [ 0, %.lr.ph134.i.preheader ], [ %i.afg, %._crit_edge135.i.loopexit.unr-lcssa ]
  %lcmp.mod487 = icmp ne i64 %xtraiter484, 0
  call void @llvm.assume(i1 %lcmp.mod487)
  br label %.lr.ph134.i.epil

.lr.ph134.i.epil:                                 ; preds = %.lr.ph134.i.epil, %.lr.ph134.i.epil.preheader
  %.026133.i.epil = phi i64 [ %i.aef, %.lr.ph134.i.epil ], [ %.026133.i.epil.init, %.lr.ph134.i.epil.preheader ] ; 3 uses
  %epil.iter485 = phi i64 [ %epil.iter485.next, %.lr.ph134.i.epil ], [ 0, %.lr.ph134.i.epil.preheader ]
  %i.aea = getelementptr inbounds nuw [8 x i8], ptr %i.zx, i64 %.026133.i.epil
  %i.aeb = load ptr, ptr %i.aea, align 8, !tbaa !1059
  %i.aec = getelementptr inbounds nuw [8 x i8], ptr %50, i64 %.026133.i.epil
  %i.aed = load ptr, ptr %i.aec, align 8, !tbaa !1051
  %i.aee = getelementptr inbounds nuw i8, ptr %i.aeb, i64 24
  store ptr %i.aed, ptr %i.aee, align 8, !tbaa !527
  %i.aef = add nuw nsw i64 %.026133.i.epil, 1
  %epil.iter485.next = add i64 %epil.iter485, 1   ; 2 uses
  %epil.iter485.cmp.not = icmp eq i64 %epil.iter485.next, %xtraiter484
  br i1 %epil.iter485.cmp.not, label %._crit_edge135.i, label %.lr.ph134.i.epil, !llvm.loop !1454

._crit_edge135.i:                                 ; preds = %._crit_edge135.i.loopexit.unr-lcssa, %.lr.ph134.i.epil, %_ZN6duckdb10FlatVector7GetDataIKPhEEPT_RNS_6VectorE.exit.i266
  %i.aeg = invoke noundef nonnull align 8 dereferenceable(192) ptr @_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.if unwind label %bb.id     ; 2 uses

bb.id:                                            ; preds = %.noexc81.i, %.noexc80.i, %.noexc79.i, %._crit_edge.i75.loopexit.i, %.noexc77.i, %.noexc76.i, %bb.if, %._crit_edge135.i, %.noexc69.i, %.noexc68.i, %.noexc67.i, %.noexc66.i, %bb.ic, %._crit_edge.i.loopexit.i265, %bb.ib, %._crit_edge.i260
  %i.aeh = landingpad { ptr, i32 }
          cleanup
  br label %bb.it

bb.ie:                                            ; preds = %_ZN6duckdbL18ReorderPayloadDataINS_7SortKeyILNS_11SortKeyTypeE9EEEEEvRNS_19TupleDataCollectionERNS_20TupleDataAppendStateEPKPT_RNS_19TupleDataChunkStateERKm.exit.i
  %i.aei = landingpad { ptr, i32 }
          cleanup
  br label %bb.it

.lr.ph134.i:                                      ; preds = %.lr.ph134.i, %.lr.ph134.i.preheader.new
  %.026133.i = phi i64 [ 0, %.lr.ph134.i.preheader.new ], [ %i.afg, %.lr.ph134.i ] ; 6 uses
  %niter489 = phi i64 [ 0, %.lr.ph134.i.preheader.new ], [ %niter489.next.3, %.lr.ph134.i ]
  %i.aej = getelementptr inbounds nuw [8 x i8], ptr %i.zx, i64 %.026133.i
  %i.aek = load ptr, ptr %i.aej, align 8, !tbaa !1059
  %i.ael = getelementptr inbounds nuw [8 x i8], ptr %50, i64 %.026133.i
  %i.aem = load ptr, ptr %i.ael, align 8, !tbaa !1051
  %i.aen = getelementptr inbounds nuw i8, ptr %i.aek, i64 24
  store ptr %i.aem, ptr %i.aen, align 8, !tbaa !527
  %i.aeo = or disjoint i64 %.026133.i, 1          ; 2 uses
  %i.aep = getelementptr inbounds nuw [8 x i8], ptr %i.zx, i64 %i.aeo
  %i.aeq = load ptr, ptr %i.aep, align 8, !tbaa !1059
  %i.aer = getelementptr inbounds nuw [8 x i8], ptr %50, i64 %i.aeo
  %i.aes = load ptr, ptr %i.aer, align 8, !tbaa !1051
  %i.aet = getelementptr inbounds nuw i8, ptr %i.aeq, i64 24
  store ptr %i.aes, ptr %i.aet, align 8, !tbaa !527
  %i.aeu = or disjoint i64 %.026133.i, 2          ; 2 uses
  %i.aev = getelementptr inbounds nuw [8 x i8], ptr %i.zx, i64 %i.aeu
  %i.aew = load ptr, ptr %i.aev, align 8, !tbaa !1059
  %i.aex = getelementptr inbounds nuw [8 x i8], ptr %50, i64 %i.aeu
  %i.aey = load ptr, ptr %i.aex, align 8, !tbaa !1051
  %i.aez = getelementptr inbounds nuw i8, ptr %i.aew, i64 24
  store ptr %i.aey, ptr %i.aez, align 8, !tbaa !527
  %i.afa = or disjoint i64 %.026133.i, 3          ; 2 uses
  %i.afb = getelementptr inbounds nuw [8 x i8], ptr %i.zx, i64 %i.afa
  %i.afc = load ptr, ptr %i.afb, align 8, !tbaa !1059
  %i.afd = getelementptr inbounds nuw [8 x i8], ptr %50, i64 %i.afa
  %i.afe = load ptr, ptr %i.afd, align 8, !tbaa !1051
  %i.aff = getelementptr inbounds nuw i8, ptr %i.afc, i64 24
  store ptr %i.afe, ptr %i.aff, align 8, !tbaa !527
  %i.afg = add nuw nsw i64 %.026133.i, 4          ; 2 uses
  %niter489.next.3 = add i64 %niter489, 4         ; 2 uses
  %niter489.ncmp.3 = icmp eq i64 %niter489.next.3, %unroll_iter488
  br i1 %niter489.ncmp.3, label %._crit_edge135.i.loopexit.unr-lcssa, label %.lr.ph134.i, !llvm.loop !1455

bb.if:                                            ; preds = %._crit_edge135.i
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIPKNS_7SortKeyILNS_11SortKeyTypeE9EEEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.zv)
          to label %.noexc76.i unwind label %bb.id

.noexc76.i:                                       ; preds = %bb.if
  %i.afh = load ptr, ptr %i.zw, align 8, !tbaa !1048 ; 3 uses
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIPhEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.aal)
          to label %.noexc77.i unwind label %bb.id

.noexc77.i:                                       ; preds = %.noexc76.i
  %i.afi = load ptr, ptr %i.aam, align 8, !tbaa !1048 ; 3 uses
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeImEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.aan)
          to label %.noexc78.i unwind label %bb.id

.noexc78.i:                                       ; preds = %.noexc77.i
  %i.afj = load ptr, ptr %i.aao, align 8, !tbaa !1048 ; 3 uses
  %xtraiter490 = and i64 %i.abf, 1
  %i.afk = icmp eq i64 %i.aco, 0
  br i1 %i.afk, label %.lr.ph.i73.i.epil.preheader, label %.noexc78.i.new

.noexc78.i.new:                                   ; preds = %.noexc78.i
  %unroll_iter494 = and i64 %i.abf, 4094
  br label %.lr.ph.i73.i

._crit_edge.i75.loopexit.i.unr-lcssa:             ; preds = %.lr.ph.i73.i
  %lcmp.mod492.not = icmp eq i64 %xtraiter490, 0
  br i1 %lcmp.mod492.not, label %._crit_edge.i75.loopexit.i, label %.lr.ph.i73.i.epil.preheader

.lr.ph.i73.i.epil.preheader:                      ; preds = %._crit_edge.i75.loopexit.i.unr-lcssa, %.noexc78.i
  %.01.i.i267.epil.init = phi i64 [ 0, %.noexc78.i ], [ %i.agl, %._crit_edge.i75.loopexit.i.unr-lcssa ] ; 3 uses
  %lcmp.mod493 = trunc i64 %i.abf to i1
  call void @llvm.assume(i1 %lcmp.mod493)
  %i.afl = getelementptr inbounds nuw [8 x i8], ptr %i.afh, i64 %.01.i.i267.epil.init
  %i.afm = load ptr, ptr %i.afl, align 8, !tbaa !1059 ; 2 uses
  %i.afn = getelementptr inbounds nuw i8, ptr %i.afm, i64 16
  %i.afo = load ptr, ptr %i.afn, align 8, !tbaa !527
  %i.afp = getelementptr inbounds nuw [8 x i8], ptr %i.afi, i64 %.01.i.i267.epil.init
  store ptr %i.afo, ptr %i.afp, align 8, !tbaa !1051
  %i.afq = getelementptr inbounds nuw i8, ptr %i.afm, i64 8
  %i.afr = load i64, ptr %i.afq, align 8, !tbaa !1398
  %i.afs = getelementptr inbounds nuw [8 x i8], ptr %i.afj, i64 %.01.i.i267.epil.init
  store i64 %i.afr, ptr %i.afs, align 8, !tbaa !168
  br label %._crit_edge.i75.loopexit.i

._crit_edge.i75.loopexit.i:                       ; preds = %._crit_edge.i75.loopexit.i.unr-lcssa, %.lr.ph.i73.i.epil.preheader
  invoke void @_ZN6duckdb6Vector9ReferenceERKS0_(ptr noundef nonnull align 8 dereferenceable(104) %i.aap, ptr noundef nonnull align 8 dereferenceable(104) %i.aan)
          to label %.noexc79.i unwind label %bb.id

.noexc79.i:                                       ; preds = %._crit_edge.i75.loopexit.i
  invoke void @_ZN6duckdb19TupleDataCollection5BuildERNS_17TupleDataPinStateERNS_19TupleDataChunkStateEmm(ptr noundef nonnull align 8 dereferenceable(192) %i.aeg, ptr noundef nonnull align 8 dereferenceable(544) %4, ptr noundef nonnull align 8 dereferenceable(488) %i.zi, i64 noundef 0, i64 noundef %i.abf)
          to label %.noexc80.i unwind label %bb.id

.noexc80.i:                                       ; preds = %.noexc79.i
  %i.aft = invoke noundef ptr @_ZN6duckdb10FlatVector26IncrementalSelectionVectorEv()
          to label %.noexc81.i unwind label %bb.id

.noexc81.i:                                       ; preds = %.noexc80.i
  invoke void @_ZNK6duckdb19TupleDataCollection8CopyRowsERNS_19TupleDataChunkStateES2_RKNS_15SelectionVectorEm(ptr noundef nonnull align 8 dereferenceable(192) %i.aeg, ptr noundef nonnull align 8 dereferenceable(488) %i.zi, ptr noundef nonnull align 8 dereferenceable(488) %9, ptr noundef nonnull align 8 dereferenceable(24) %i.aft, i64 noundef %i.abf)
          to label %_ZN6duckdbL14ReorderKeyDataINS_7SortKeyILNS_11SortKeyTypeE9EEEEEvRNS_19TupleDataCollectionERNS_20TupleDataAppendStateERNS_19TupleDataChunkStateERKm.exit.i unwind label %bb.id

.lr.ph.i73.i:                                     ; preds = %.lr.ph.i73.i, %.noexc78.i.new
  %.01.i.i267 = phi i64 [ 0, %.noexc78.i.new ], [ %i.agl, %.lr.ph.i73.i ] ; 5 uses
  %niter495 = phi i64 [ 0, %.noexc78.i.new ], [ %niter495.next.1, %.lr.ph.i73.i ]
  %i.afu = getelementptr inbounds nuw [8 x i8], ptr %i.afh, i64 %.01.i.i267
  %i.afv = load ptr, ptr %i.afu, align 8, !tbaa !1059 ; 2 uses
  %i.afw = getelementptr inbounds nuw i8, ptr %i.afv, i64 16
  %i.afx = load ptr, ptr %i.afw, align 8, !tbaa !527
  %i.afy = getelementptr inbounds nuw [8 x i8], ptr %i.afi, i64 %.01.i.i267
  store ptr %i.afx, ptr %i.afy, align 8, !tbaa !1051
  %i.afz = getelementptr inbounds nuw i8, ptr %i.afv, i64 8
  %i.aga = load i64, ptr %i.afz, align 8, !tbaa !1398
  %i.agb = getelementptr inbounds nuw [8 x i8], ptr %i.afj, i64 %.01.i.i267
  store i64 %i.aga, ptr %i.agb, align 8, !tbaa !168
  %i.agc = or disjoint i64 %.01.i.i267, 1         ; 3 uses
  %i.agd = getelementptr inbounds nuw [8 x i8], ptr %i.afh, i64 %i.agc
  %i.age = load ptr, ptr %i.agd, align 8, !tbaa !1059 ; 2 uses
  %i.agf = getelementptr inbounds nuw i8, ptr %i.age, i64 16
  %i.agg = load ptr, ptr %i.agf, align 8, !tbaa !527
  %i.agh = getelementptr inbounds nuw [8 x i8], ptr %i.afi, i64 %i.agc
  store ptr %i.agg, ptr %i.agh, align 8, !tbaa !1051
  %i.agi = getelementptr inbounds nuw i8, ptr %i.age, i64 8
  %i.agj = load i64, ptr %i.agi, align 8, !tbaa !1398
  %i.agk = getelementptr inbounds nuw [8 x i8], ptr %i.afj, i64 %i.agc
  store i64 %i.agj, ptr %i.agk, align 8, !tbaa !168
  %i.agl = add nuw i64 %.01.i.i267, 2             ; 2 uses
  %niter495.next.1 = add i64 %niter495, 2         ; 2 uses
  %niter495.ncmp.1 = icmp eq i64 %niter495.next.1, %unroll_iter494
  br i1 %niter495.ncmp.1, label %._crit_edge.i75.loopexit.i.unr-lcssa, label %.lr.ph.i73.i, !llvm.loop !1456

_ZN6duckdbL14ReorderKeyDataINS_7SortKeyILNS_11SortKeyTypeE9EEEEEvRNS_19TupleDataCollectionERNS_20TupleDataAppendStateERNS_19TupleDataChunkStateERKm.exit.i: ; preds = %.noexc81.i
  %i.agm = add i64 %i.abf, %.028138.i             ; 2 uses
  %i.agn = icmp ult i64 %i.agm, %i.aaa
  br i1 %i.agn, label %bb.hl, label %._crit_edge141.i, !llvm.loop !1457

._crit_edge141.i:                                 ; preds = %_ZN6duckdbL14ReorderKeyDataINS_7SortKeyILNS_11SortKeyTypeE9EEEEEvRNS_19TupleDataCollectionERNS_20TupleDataAppendStateERNS_19TupleDataChunkStateERKm.exit.i, %bb.hk
  %i.ago = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.ig unwind label %bb.hy

bb.ig:                                            ; preds = %._crit_edge141.i
  invoke void @_ZN6duckdb19TupleDataCollection5UnpinEv(ptr noundef nonnull align 8 dereferenceable(192) %i.ago)
          to label %bb.ih unwind label %bb.hy

bb.ih:                                            ; preds = %bb.ig
  %i.agp = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.ii unwind label %bb.hy

bb.ii:                                            ; preds = %bb.ih
  invoke void @_ZN6duckdb19TupleDataCollection16FinalizePinStateERNS_17TupleDataPinStateE(ptr noundef nonnull align 8 dereferenceable(192) %i.agp, ptr noundef nonnull align 8 dereferenceable(49) %4)
          to label %bb.ij unwind label %bb.hy

bb.ij:                                            ; preds = %bb.ii
  %i.agq = load ptr, ptr %3, align 8, !tbaa !752
  store ptr null, ptr %3, align 8, !tbaa !752
  %i.agr = load ptr, ptr %1, align 8, !tbaa !752  ; 3 uses
  store ptr %i.agq, ptr %1, align 8, !tbaa !752
  %.not.i.i.i.i.i83.i = icmp eq ptr %i.agr, null
  br i1 %.not.i.i.i.i.i83.i, label %_ZN6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEaSEOS4_.exit85.i, label %_ZNKSt14default_deleteIN6duckdb19TupleDataCollectionEEclEPS1_.exit.i.i.i.i.i84.i

_ZNKSt14default_deleteIN6duckdb19TupleDataCollectionEEclEPS1_.exit.i.i.i.i.i84.i: ; preds = %bb.ij
  call void @_ZN6duckdb19TupleDataCollectionD1Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %i.agr) #30
  call void @_ZdlPv(ptr noundef nonnull %i.agr) #29
  br label %_ZN6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEaSEOS4_.exit85.i

_ZN6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEaSEOS4_.exit85.i: ; preds = %_ZNKSt14default_deleteIN6duckdb19TupleDataCollectionEEclEPS1_.exit.i.i.i.i.i84.i, %bb.ij
  %i.ags = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.ik unwind label %bb.hy

bb.ik:                                            ; preds = %_ZN6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEaSEOS4_.exit85.i
  invoke void @_ZN6duckdb19TupleDataCollection16FinalizePinStateERNS_17TupleDataPinStateE(ptr noundef nonnull align 8 dereferenceable(192) %i.ags, ptr noundef nonnull align 8 dereferenceable(49) %7)
          to label %bb.il unwind label %bb.hy

bb.il:                                            ; preds = %bb.ik
  %i.agt = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.im unwind label %bb.hy

bb.im:                                            ; preds = %bb.il
  invoke void @_ZN6duckdb19TupleDataCollection5UnpinEv(ptr noundef nonnull align 8 dereferenceable(192) %i.agt)
          to label %bb.in unwind label %bb.hy

bb.in:                                            ; preds = %bb.im
  %i.agu = load ptr, ptr %6, align 8, !tbaa !752
  store ptr null, ptr %6, align 8, !tbaa !752
  %i.agv = load ptr, ptr %2, align 8, !tbaa !752  ; 3 uses
  store ptr %i.agu, ptr %2, align 8, !tbaa !752
  %.not.i.i.i.i.i86.i = icmp eq ptr %i.agv, null
  br i1 %.not.i.i.i.i.i86.i, label %_ZN6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEaSEOS4_.exit88.i, label %_ZNKSt14default_deleteIN6duckdb19TupleDataCollectionEEclEPS1_.exit.i.i.i.i.i87.i

_ZNKSt14default_deleteIN6duckdb19TupleDataCollectionEEclEPS1_.exit.i.i.i.i.i87.i: ; preds = %bb.in
  call void @_ZN6duckdb19TupleDataCollectionD1Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %i.agv) #30
  call void @_ZdlPv(ptr noundef nonnull %i.agv) #29
  br label %_ZN6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEaSEOS4_.exit88.i

end_hunk_4
begin_hunk_5_@_ZN14duckdb_pdqsort14pdqsort_detail26partition_right_branchlessIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE1EEEEEZN15duckdb_ska_sort6detail15StdSortFallbackISB_KNS2_13SkaExtractKeyISA_EEEEvT_SI_RT0_EUlRKSA_SM_E_EESt4pairISI_bESI_SI_SJ_:bb.a
  %.not526 = icmp eq i64 %i.dq, 0
  br i1 %.not526, label %.loopexit456, label %.lr.ph488.preheader

.lr.ph488.preheader:                              ; preds = %.preheader457
  %i.jb = trunc nuw nsw i64 %i.dq to i8
  br label %.lr.ph488

.preheader:                                       ; preds = %.loopexit460, %.preheader
  %.064495 = phi i8 [ %i.nd, %.preheader ], [ 0, %.loopexit460 ] ; 9 uses
  %.sroa.76.4494 = phi i64 [ %i.nk, %.preheader ], [ %.sroa.76.3503, %.loopexit460 ] ; 2 uses
  %.sroa.30.4493 = phi i64 [ %i.nh, %.preheader ], [ %.sroa.30.3502, %.loopexit460 ]
  %.1447492 = phi i64 [ %i.nr, %.preheader ], [ %.0446501, %.loopexit460 ] ; 2 uses
  %i.jc = or disjoint i8 %.064495, 1
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ct, i64 %.1447492
  store i8 %i.jc, ptr %i.jd, align 1, !tbaa !527
  %i.je = add i64 %.sroa.76.4494, -1
  %i.jf = icmp eq i64 %.sroa.76.4494, 0           ; 2 uses
  %.neg.i.i98 = sext i1 %i.jf to i64
  %i.jg = add i64 %.sroa.30.4493, %.neg.i.i98     ; 2 uses
  %i.jh = load i64, ptr %i.cy, align 8, !tbaa !168
  %i.ji = select i1 %i.jf, i64 %i.jh, i64 0
  %i.jj = add i64 %i.je, %i.ji                    ; 3 uses
  %i.jk = load ptr, ptr %i.ca, align 8, !tbaa !1246
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %i.jk, i64 %i.jg
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !1051
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %i.jm, i64 %i.jj
  %.val.val.i.i99 = load i64, ptr %i.jn, align 8, !tbaa !168
  %i.jo = icmp ult i64 %.val.val.i.i99, %i.m
  %i.jp = zext i1 %i.jo to i64
  %i.jq = add i64 %.1447492, %i.jp                ; 2 uses
  %i.jr = or disjoint i8 %.064495, 2
  %i.js = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.jq
  store i8 %i.jr, ptr %i.js, align 1, !tbaa !527
  %i.jt = add i64 %i.jj, -1
  %i.ju = icmp eq i64 %i.jj, 0                    ; 2 uses
  %.neg.i.i101 = sext i1 %i.ju to i64
  %i.jv = add i64 %i.jg, %.neg.i.i101             ; 2 uses
  %i.jw = load i64, ptr %i.cy, align 8, !tbaa !168
  %i.jx = select i1 %i.ju, i64 %i.jw, i64 0
  %i.jy = add i64 %i.jt, %i.jx                    ; 3 uses
  %i.jz = load ptr, ptr %i.ca, align 8, !tbaa !1246
  %i.ka = getelementptr inbounds nuw [8 x i8], ptr %i.jz, i64 %i.jv
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !1051
  %i.kc = getelementptr inbounds nuw [8 x i8], ptr %i.kb, i64 %i.jy
  %.val.val.i.i102 = load i64, ptr %i.kc, align 8, !tbaa !168
  %i.kd = icmp ult i64 %.val.val.i.i102, %i.m
  %i.ke = zext i1 %i.kd to i64
  %i.kf = add i64 %i.jq, %i.ke                    ; 2 uses
  %i.kg = or disjoint i8 %.064495, 3
  %i.kh = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.kf
  store i8 %i.kg, ptr %i.kh, align 1, !tbaa !527
  %i.ki = add i64 %i.jy, -1
  %i.kj = icmp eq i64 %i.jy, 0                    ; 2 uses
  %.neg.i.i104 = sext i1 %i.kj to i64
  %i.kk = add i64 %i.jv, %.neg.i.i104             ; 2 uses
  %i.kl = load i64, ptr %i.cy, align 8, !tbaa !168
  %i.km = select i1 %i.kj, i64 %i.kl, i64 0
  %i.kn = add i64 %i.ki, %i.km                    ; 3 uses
  %i.ko = load ptr, ptr %i.ca, align 8, !tbaa !1246
  %i.kp = getelementptr inbounds nuw [8 x i8], ptr %i.ko, i64 %i.kk
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !1051
  %i.kr = getelementptr inbounds nuw [8 x i8], ptr %i.kq, i64 %i.kn
  %.val.val.i.i105 = load i64, ptr %i.kr, align 8, !tbaa !168
  %i.ks = icmp ult i64 %.val.val.i.i105, %i.m
  %i.kt = zext i1 %i.ks to i64
  %i.ku = add i64 %i.kf, %i.kt                    ; 2 uses
  %i.kv = or disjoint i8 %.064495, 4
  %i.kw = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.ku
  store i8 %i.kv, ptr %i.kw, align 1, !tbaa !527
  %i.kx = add i64 %i.kn, -1
  %i.ky = icmp eq i64 %i.kn, 0                    ; 2 uses
  %.neg.i.i107 = sext i1 %i.ky to i64
  %i.kz = add i64 %i.kk, %.neg.i.i107             ; 2 uses
  %i.la = load i64, ptr %i.cy, align 8, !tbaa !168
  %i.lb = select i1 %i.ky, i64 %i.la, i64 0
  %i.lc = add i64 %i.kx, %i.lb                    ; 3 uses
  %i.ld = load ptr, ptr %i.ca, align 8, !tbaa !1246
  %i.le = getelementptr inbounds nuw [8 x i8], ptr %i.ld, i64 %i.kz
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !1051
  %i.lg = getelementptr inbounds nuw [8 x i8], ptr %i.lf, i64 %i.lc
  %.val.val.i.i108 = load i64, ptr %i.lg, align 8, !tbaa !168
  %i.lh = icmp ult i64 %.val.val.i.i108, %i.m
  %i.li = zext i1 %i.lh to i64
  %i.lj = add i64 %i.ku, %i.li                    ; 2 uses
  %i.lk = or disjoint i8 %.064495, 5
  %i.ll = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.lj
  store i8 %i.lk, ptr %i.ll, align 1, !tbaa !527
  %i.lm = add i64 %i.lc, -1
  %i.ln = icmp eq i64 %i.lc, 0                    ; 2 uses
  %.neg.i.i110 = sext i1 %i.ln to i64
  %i.lo = add i64 %i.kz, %.neg.i.i110             ; 2 uses
  %i.lp = load i64, ptr %i.cy, align 8, !tbaa !168
  %i.lq = select i1 %i.ln, i64 %i.lp, i64 0
  %i.lr = add i64 %i.lm, %i.lq                    ; 3 uses
  %i.ls = load ptr, ptr %i.ca, align 8, !tbaa !1246
  %i.lt = getelementptr inbounds nuw [8 x i8], ptr %i.ls, i64 %i.lo
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !1051
  %i.lv = getelementptr inbounds nuw [8 x i8], ptr %i.lu, i64 %i.lr
  %.val.val.i.i111 = load i64, ptr %i.lv, align 8, !tbaa !168
  %i.lw = icmp ult i64 %.val.val.i.i111, %i.m
  %i.lx = zext i1 %i.lw to i64
  %i.ly = add i64 %i.lj, %i.lx                    ; 2 uses
  %i.lz = or disjoint i8 %.064495, 6
  %i.ma = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.ly
  store i8 %i.lz, ptr %i.ma, align 1, !tbaa !527
  %i.mb = add i64 %i.lr, -1
  %i.mc = icmp eq i64 %i.lr, 0                    ; 2 uses
  %.neg.i.i113 = sext i1 %i.mc to i64
  %i.md = add i64 %i.lo, %.neg.i.i113             ; 2 uses
  %i.me = load i64, ptr %i.cy, align 8, !tbaa !168
  %i.mf = select i1 %i.mc, i64 %i.me, i64 0
  %i.mg = add i64 %i.mb, %i.mf                    ; 3 uses
  %i.mh = load ptr, ptr %i.ca, align 8, !tbaa !1246
  %i.mi = getelementptr inbounds nuw [8 x i8], ptr %i.mh, i64 %i.md
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !1051
  %i.mk = getelementptr inbounds nuw [8 x i8], ptr %i.mj, i64 %i.mg
  %.val.val.i.i114 = load i64, ptr %i.mk, align 8, !tbaa !168
  %i.ml = icmp ult i64 %.val.val.i.i114, %i.m
  %i.mm = zext i1 %i.ml to i64
  %i.mn = add i64 %i.ly, %i.mm                    ; 2 uses
  %i.mo = or disjoint i8 %.064495, 7
  %i.mp = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.mn
  store i8 %i.mo, ptr %i.mp, align 1, !tbaa !527
  %i.mq = add i64 %i.mg, -1
  %i.mr = icmp eq i64 %i.mg, 0                    ; 2 uses
  %.neg.i.i116 = sext i1 %i.mr to i64
  %i.ms = add i64 %i.md, %.neg.i.i116             ; 2 uses
  %i.mt = load i64, ptr %i.cy, align 8, !tbaa !168
  %i.mu = select i1 %i.mr, i64 %i.mt, i64 0
  %i.mv = add i64 %i.mq, %i.mu                    ; 3 uses
  %i.mw = load ptr, ptr %i.ca, align 8, !tbaa !1246
  %i.mx = getelementptr inbounds nuw [8 x i8], ptr %i.mw, i64 %i.ms
  %i.my = load ptr, ptr %i.mx, align 8, !tbaa !1051
  %i.mz = getelementptr inbounds nuw [8 x i8], ptr %i.my, i64 %i.mv
  %.val.val.i.i117 = load i64, ptr %i.mz, align 8, !tbaa !168
  %i.na = icmp ult i64 %.val.val.i.i117, %i.m
  %i.nb = zext i1 %i.na to i64
  %i.nc = add i64 %i.mn, %i.nb                    ; 2 uses
  %i.nd = add nuw nsw i8 %.064495, 8              ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.nc
  store i8 %i.nd, ptr %i.ne, align 1, !tbaa !527
  %i.nf = add i64 %i.mv, -1
  %i.ng = icmp eq i64 %i.mv, 0                    ; 2 uses
  %.neg.i.i119 = sext i1 %i.ng to i64
  %i.nh = add i64 %i.ms, %.neg.i.i119             ; 3 uses
  %i.ni = load i64, ptr %i.cy, align 8, !tbaa !168
  %i.nj = select i1 %i.ng, i64 %i.ni, i64 0
  %i.nk = add i64 %i.nf, %i.nj                    ; 3 uses
  %i.nl = load ptr, ptr %i.ca, align 8, !tbaa !1246
  %i.nm = getelementptr inbounds nuw [8 x i8], ptr %i.nl, i64 %i.nh
  %i.nn = load ptr, ptr %i.nm, align 8, !tbaa !1051
  %i.no = getelementptr inbounds nuw [8 x i8], ptr %i.nn, i64 %i.nk
  %.val.val.i.i120 = load i64, ptr %i.no, align 8, !tbaa !168
  %i.np = icmp ult i64 %.val.val.i.i120, %i.m
  %i.nq = zext i1 %i.np to i64
  %i.nr = add i64 %i.nc, %i.nq                    ; 2 uses
  %i.ns = icmp samesign ult i8 %.064495, 56
  br i1 %i.ns, label %.preheader, label %.loopexit456, !llvm.loop !2011

.lr.ph488:                                        ; preds = %.lr.ph488.preheader, %.lr.ph488
  %.0487 = phi i8 [ %i.nt, %.lr.ph488 ], [ 0, %.lr.ph488.preheader ]
  %.sroa.76.5486 = phi i64 [ %i.oa, %.lr.ph488 ], [ %.sroa.76.3503, %.lr.ph488.preheader ] ; 2 uses
  %.sroa.30.5485 = phi i64 [ %i.nx, %.lr.ph488 ], [ %.sroa.30.3502, %.lr.ph488.preheader ]
  %.2484 = phi i64 [ %i.oh, %.lr.ph488 ], [ %.0446501, %.lr.ph488.preheader ] ; 2 uses
  %i.nt = add nuw nsw i8 %.0487, 1                ; 3 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %i.ct, i64 %.2484
  store i8 %i.nt, ptr %i.nu, align 1, !tbaa !527
  %i.nv = add i64 %.sroa.76.5486, -1
  %i.nw = icmp eq i64 %.sroa.76.5486, 0           ; 2 uses
  %.neg.i.i122 = sext i1 %i.nw to i64
  %i.nx = add i64 %.sroa.30.5485, %.neg.i.i122    ; 3 uses
  %i.ny = load i64, ptr %i.cy, align 8, !tbaa !168
  %i.nz = select i1 %i.nw, i64 %i.ny, i64 0
  %i.oa = add i64 %i.nv, %i.nz                    ; 3 uses
  %i.ob = load ptr, ptr %i.ca, align 8, !tbaa !1246
  %i.oc = getelementptr inbounds nuw [8 x i8], ptr %i.ob, i64 %i.nx
  %i.od = load ptr, ptr %i.oc, align 8, !tbaa !1051
  %i.oe = getelementptr inbounds nuw [8 x i8], ptr %i.od, i64 %i.oa
  %.val.val.i.i123 = load i64, ptr %i.oe, align 8, !tbaa !168
  %i.of = icmp ult i64 %.val.val.i.i123, %i.m
  %i.og = zext i1 %i.of to i64
  %i.oh = add i64 %.2484, %i.og                   ; 2 uses
  %i.oi = icmp samesign ult i8 %i.nt, %i.jb
  br i1 %i.oi, label %.lr.ph488, label %.loopexit456, !llvm.loop !2012

.loopexit456:                                     ; preds = %.lr.ph488, %.preheader, %.preheader457
  %.3 = phi i64 [ %i.nr, %.preheader ], [ %.0446501, %.preheader457 ], [ %i.oh, %.lr.ph488 ] ; 4 uses
  %.sroa.30.6 = phi i64 [ %i.nh, %.preheader ], [ %.sroa.30.3502, %.preheader457 ], [ %i.nx, %.lr.ph488 ] ; 5 uses
  %.sroa.76.6 = phi i64 [ %i.nk, %.preheader ], [ %.sroa.76.3503, %.preheader457 ], [ %i.oa, %.lr.ph488 ] ; 4 uses
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %.3, i64 %.3451) ; 5 uses
  store ptr %i.c, ptr %3, align 8, !tbaa !1239
  store i64 %.sroa.5229.0497, ptr %i.cz, align 8, !tbaa !1236
  store i64 %.sroa.9231.0496, ptr %i.da, align 8, !tbaa !1238
  store ptr %i.n, ptr %4, align 8, !tbaa !1239
  store i64 %.sroa.5.0499, ptr %i.db, align 8, !tbaa !1236
  store i64 %.sroa.9.0498, ptr %i.dc, align 8, !tbaa !1238
  %i.oj = getelementptr inbounds nuw i8, ptr %i.cp, i64 %.068506
  %i.ok = getelementptr inbounds nuw i8, ptr %i.ct, i64 %.067507
  %i.ol = icmp eq i64 %.3451, %.3
  call void @_ZN14duckdb_pdqsort14pdqsort_detail12swap_offsetsIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE1EEEEEEEvT_SC_PhSD_mb(ptr noundef nonnull dead_on_return %3, ptr noundef nonnull dead_on_return %4, ptr noundef %i.oj, ptr noundef %i.ok, i64 noundef %.sroa.speculated, i1 noundef zeroext %i.ol)
  %i.om = sub i64 %.3451, %.sroa.speculated       ; 3 uses
  %i.on = sub i64 %.3, %.sroa.speculated          ; 4 uses
  %i.oo = add i64 %.sroa.speculated, %.068506
  %i.op = add i64 %.sroa.speculated, %.067507
  %.not453 = icmp ugt i64 %.3451, %.3             ; 3 uses
  %.sroa.9231.1 = select i1 %.not453, i64 %.sroa.9231.0496, i64 %.sroa.78.4 ; 2 uses
  %.sroa.5229.1 = select i1 %.not453, i64 %.sroa.5229.0497, i64 %.sroa.31.4 ; 3 uses
  %.169 = select i1 %.not453, i64 %i.oo, i64 0    ; 2 uses
  %i.oq = icmp eq i64 %i.on, 0                    ; 3 uses
  %.sroa.9.1 = select i1 %i.oq, i64 %.sroa.76.6, i64 %.sroa.9.0498 ; 2 uses
  %.sroa.5.1 = select i1 %i.oq, i64 %.sroa.30.6, i64 %.sroa.5.0499 ; 3 uses
  %.1 = select i1 %i.oq, i64 0, i64 %i.op         ; 2 uses
  %i.or = icmp eq i64 %.sroa.31.4, %.sroa.30.6
  %i.os = icmp ult i64 %.sroa.78.4, %.sroa.76.6
  %i.ot = icmp ult i64 %.sroa.31.4, %.sroa.30.6
  %i.ou = select i1 %i.or, i1 %i.os, i1 %i.ot
  br i1 %i.ou, label %bb.i, label %._crit_edge, !llvm.loop !2013

._crit_edge:                                      ; preds = %.loopexit456
  %.not = icmp eq i64 %i.om, 0
  br i1 %.not, label %.loopexit455, label %bb.j

bb.j:                                             ; preds = %._crit_edge
  %i.ov = getelementptr inbounds nuw i8, ptr %i.cp, i64 %.169
  %i.ow = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.ox = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEplERKm.exit
  %.in = phi i64 [ %i.om, %bb.j ], [ %i.oy, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEplERKm.exit ]
  %.sroa.76.7522 = phi i64 [ %.sroa.76.6, %bb.j ], [ %i.pt, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEplERKm.exit ] ; 2 uses
  %.sroa.30.7521 = phi i64 [ %.sroa.30.6, %bb.j ], [ %i.pq, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEplERKm.exit ]
  %i.oy = add i64 %.in, -1                        ; 3 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ov, i64 %i.oy
  %i.pa = load i8, ptr %i.oz, align 1, !tbaa !527
  %i.pb = zext i8 %i.pa to i64
  %i.pc = add i64 %.sroa.9231.1, %i.pb            ; 3 uses
  %i.pd = load i64, ptr %i.s, align 8, !tbaa !168, !noalias !2014 ; 3 uses
  %.not.i.i125 = icmp ult i64 %i.pc, %i.pd
  br i1 %.not.i.i125, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEplERKm.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.pe = mul i64 %i.pd, %.sroa.5229.1
  %i.pf = add i64 %i.pe, %i.pc                    ; 2 uses
  %i.pg = zext i64 %i.pf to i128
  %i.ph = load i64, ptr %i.ox, align 8, !tbaa !1232, !noalias !2014
  %i.pi = zext i64 %i.ph to i128
  %i.pj = mul nuw i128 %i.pi, %i.pg
  %i.pk = lshr i128 %i.pj, 64
  %i.pl = trunc nuw i128 %i.pk to i64             ; 2 uses
  %i.pm = mul i64 %i.pd, %i.pl
  %i.pn = sub i64 %i.pf, %i.pm
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEplERKm.exit

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEplERKm.exit: ; preds = %bb.k, %bb.l
  %.05.i126 = phi i64 [ %.sroa.5229.1, %bb.k ], [ %i.pl, %bb.l ]
  %.0.i127 = phi i64 [ %i.pc, %bb.k ], [ %i.pn, %bb.l ]
  %i.po = add i64 %.sroa.76.7522, -1
  %i.pp = icmp eq i64 %.sroa.76.7522, 0           ; 2 uses
  %.neg.i.i128 = sext i1 %i.pp to i64
  %i.pq = add i64 %.sroa.30.7521, %.neg.i.i128    ; 3 uses
  %i.pr = load i64, ptr %i.ow, align 8, !tbaa !168
  %i.ps = select i1 %i.pp, i64 %i.pr, i64 0
  %i.pt = add i64 %i.po, %i.ps                    ; 3 uses
  %i.pu = load ptr, ptr %i.f, align 8, !tbaa !1246
  %i.pv = getelementptr inbounds nuw [8 x i8], ptr %i.pu, i64 %.05.i126
  %i.pw = load ptr, ptr %i.pv, align 8, !tbaa !1051
  %i.px = getelementptr inbounds nuw [8 x i8], ptr %i.pw, i64 %.0.i127 ; 2 uses
  %i.py = load ptr, ptr %i.ca, align 8, !tbaa !1246
  %i.pz = getelementptr inbounds nuw [8 x i8], ptr %i.py, i64 %i.pq
  %i.qa = load ptr, ptr %i.pz, align 8, !tbaa !1051
  %i.qb = getelementptr inbounds nuw [8 x i8], ptr %i.qa, i64 %i.pt ; 2 uses
  %.sroa.0.0.copyload.i.i129 = load i64, ptr %i.px, align 8
  %i.qc = load i64, ptr %i.qb, align 8
  store i64 %i.qc, ptr %i.px, align 8
  store i64 %.sroa.0.0.copyload.i.i129, ptr %i.qb, align 8
  %.not72 = icmp eq i64 %i.oy, 0
  br i1 %.not72, label %.loopexit455, label %bb.k, !llvm.loop !2017

.loopexit455:                                     ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEplERKm.exit, %._crit_edge
  %.sroa.31.5 = phi i64 [ %.sroa.31.4, %._crit_edge ], [ %i.pq, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEplERKm.exit ] ; 2 uses
  %.sroa.78.5 = phi i64 [ %.sroa.78.4, %._crit_edge ], [ %i.pt, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEplERKm.exit ] ; 2 uses
  %.not73 = icmp eq i64 %i.on, 0
  br i1 %.not73, label %.loopexit455..loopexit_crit_edge, label %bb.m

.loopexit455..loopexit_crit_edge:                 ; preds = %bb.h, %.loopexit455
  %.sroa.78.5594 = phi i64 [ %.sroa.78.5, %.loopexit455 ], [ %i.cl, %bb.h ]
  %.sroa.31.5593 = phi i64 [ %.sroa.31.5, %.loopexit455 ], [ %i.ck, %bb.h ]
  %.pre.pre = load i64, ptr %i.s, align 8, !tbaa !168, !noalias !2018
  br label %.loopexit

bb.m:                                             ; preds = %.loopexit455
  %i.qd = getelementptr inbounds nuw i8, ptr %i.ct, i64 %.1
  %i.qe = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.qf = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEmiERKm.exit133
  %.in527 = phi i64 [ %i.on, %bb.m ], [ %i.qg, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEmiERKm.exit133 ]
  %.sroa.78.6524 = phi i64 [ %.sroa.78.5, %bb.m ], [ %i.rk, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEmiERKm.exit133 ] ; 2 uses
  %.sroa.31.6523 = phi i64 [ %.sroa.31.5, %bb.m ], [ %i.rj, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEmiERKm.exit133 ] ; 2 uses
  %i.qg = add i64 %.in527, -1                     ; 3 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qd, i64 %i.qg
  %i.qi = load i8, ptr %i.qh, align 1, !tbaa !527
  %i.qj = zext i8 %i.qi to i64
  %i.qk = sub i64 %.sroa.9.1, %i.qj               ; 3 uses
  %i.ql = load i64, ptr %i.qe, align 8, !tbaa !168, !noalias !2021 ; 3 uses
  %.not.i.i130 = icmp ult i64 %i.qk, %i.ql
  br i1 %.not.i.i130, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEmiERKm.exit133, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.qm = mul i64 %i.ql, %.sroa.5.1
  %i.qn = add i64 %i.qm, %i.qk                    ; 2 uses
  %i.qo = zext i64 %i.qn to i128
  %i.qp = load i64, ptr %i.qf, align 8, !tbaa !1232, !noalias !2021
  %i.qq = zext i64 %i.qp to i128
  %i.qr = mul nuw i128 %i.qq, %i.qo
  %i.qs = lshr i128 %i.qr, 64
  %i.qt = trunc nuw i128 %i.qs to i64             ; 2 uses
  %i.qu = mul i64 %i.ql, %i.qt
  %i.qv = sub i64 %i.qn, %i.qu
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEmiERKm.exit133

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEmiERKm.exit133: ; preds = %bb.n, %bb.o
  %.05.i131 = phi i64 [ %.sroa.5.1, %bb.n ], [ %i.qt, %bb.o ]
  %.0.i132 = phi i64 [ %i.qk, %bb.n ], [ %i.qv, %bb.o ]
  %i.qw = load ptr, ptr %i.ca, align 8, !tbaa !1246
  %i.qx = getelementptr inbounds nuw [8 x i8], ptr %i.qw, i64 %.05.i131
  %i.qy = load ptr, ptr %i.qx, align 8, !tbaa !1051
  %i.qz = getelementptr inbounds nuw [8 x i8], ptr %i.qy, i64 %.0.i132 ; 2 uses
  %i.ra = load ptr, ptr %i.f, align 8, !tbaa !1246
  %i.rb = getelementptr inbounds nuw [8 x i8], ptr %i.ra, i64 %.sroa.31.6523
  %i.rc = load ptr, ptr %i.rb, align 8, !tbaa !1051
  %i.rd = getelementptr inbounds nuw [8 x i8], ptr %i.rc, i64 %.sroa.78.6524 ; 2 uses
  %.sroa.0.0.copyload.i.i134 = load i64, ptr %i.qz, align 8
  %i.re = load i64, ptr %i.rd, align 8
  store i64 %i.re, ptr %i.qz, align 8
  store i64 %.sroa.0.0.copyload.i.i134, ptr %i.rd, align 8
  %i.rf = add i64 %.sroa.78.6524, 1               ; 2 uses
  %i.rg = load i64, ptr %i.s, align 8, !tbaa !168 ; 2 uses
  %i.rh = icmp eq i64 %i.rf, %i.rg                ; 2 uses
  %i.ri = zext i1 %i.rh to i64
  %i.rj = add i64 %.sroa.31.6523, %i.ri           ; 2 uses
  %i.rk = select i1 %i.rh, i64 0, i64 %i.rf       ; 2 uses
  %.not74 = icmp eq i64 %i.qg, 0
  br i1 %.not74, label %.loopexit, label %bb.n, !llvm.loop !2024

.loopexit:                                        ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEmiERKm.exit133, %.loopexit455..loopexit_crit_edge
  %.pre = phi i64 [ %.pre.pre, %.loopexit455..loopexit_crit_edge ], [ %i.rg, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEmiERKm.exit133 ]
  %.sroa.31.7 = phi i64 [ %.sroa.31.5593, %.loopexit455..loopexit_crit_edge ], [ %i.rj, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEmiERKm.exit133 ]
  %.sroa.78.7 = phi i64 [ %.sroa.78.5594, %.loopexit455..loopexit_crit_edge ], [ %i.rk, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEmiERKm.exit133 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %.pre554 = add i64 %.sroa.78.7, -1
  br label %bb.p

bb.p:                                             ; preds = %.loopexit, %.critedge
  %.pre-phi = phi i64 [ %.pre554, %.loopexit ], [ %i.ae, %.critedge ] ; 3 uses
  %i.rl = phi i64 [ %.pre, %.loopexit ], [ %i.t, %.critedge ] ; 3 uses
  %.sroa.31.8 = phi i64 [ %.sroa.31.7, %.loopexit ], [ %i.x, %.critedge ] ; 2 uses
  %.not.i.i135 = icmp ult i64 %.pre-phi, %i.rl
  br i1 %.not.i.i135, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEmiERKm.exit138, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.rm = mul i64 %i.rl, %.sroa.31.8
  %i.rn = add i64 %i.rm, %.pre-phi                ; 2 uses
  %i.ro = zext i64 %i.rn to i128
  %i.rp = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.rq = load i64, ptr %i.rp, align 8, !tbaa !1232, !noalias !2018
  %i.rr = zext i64 %i.rq to i128
  %i.rs = mul nuw i128 %i.rr, %i.ro
  %i.rt = lshr i128 %i.rs, 64
  %i.ru = trunc nuw i128 %i.rt to i64             ; 2 uses
  %i.rv = mul i64 %i.rl, %i.ru
  %i.rw = sub i64 %i.rn, %i.rv
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEmiERKm.exit138

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEmiERKm.exit138: ; preds = %bb.p, %bb.q
  %.05.i136 = phi i64 [ %.sroa.31.8, %bb.p ], [ %i.ru, %bb.q ] ; 3 uses
  %.0.i137 = phi i64 [ %.pre-phi, %bb.p ], [ %i.rw, %bb.q ] ; 3 uses
  %i.rx = zext i1 %i.bz to i8
  %i.ry = load ptr, ptr %i.f, align 8, !tbaa !1246
  %i.rz = getelementptr inbounds nuw [8 x i8], ptr %i.ry, i64 %.05.i136
  %i.sa = load ptr, ptr %i.rz, align 8, !tbaa !1051
  %i.sb = getelementptr inbounds nuw [8 x i8], ptr %i.sa, i64 %.0.i137
  %i.sc = load ptr, ptr %1, align 8, !tbaa !1239
  %i.sd = getelementptr inbounds nuw i8, ptr %i.sc, i64 8
  %i.se = load i64, ptr %i.d, align 8, !tbaa !168
  %i.sf = load ptr, ptr %i.sd, align 8, !tbaa !1246
  %i.sg = getelementptr inbounds nuw [8 x i8], ptr %i.sf, i64 %i.se
  %i.sh = load ptr, ptr %i.sg, align 8, !tbaa !1051
  %i.si = load i64, ptr %i.e, align 8, !tbaa !168
  %i.sj = getelementptr inbounds nuw [8 x i8], ptr %i.sh, i64 %i.si
  %i.sk = load i64, ptr %i.sb, align 8
  store i64 %i.sk, ptr %i.sj, align 8
  %i.sl = load ptr, ptr %i.f, align 8, !tbaa !1246
  %i.sm = getelementptr inbounds nuw [8 x i8], ptr %i.sl, i64 %.05.i136
  %i.sn = load ptr, ptr %i.sm, align 8, !tbaa !1051
  %i.so = getelementptr inbounds nuw [8 x i8], ptr %i.sn, i64 %.0.i137
  store i64 %i.m, ptr %i.so, align 8
  store ptr %i.c, ptr %0, align 8, !tbaa !1239, !alias.scope !2025
  %i.sp = getelementptr inbounds nuw i8, ptr %0, i64 8
end_hunk_5
begin_hunk_6_@_ZNSt3_V28__rotateIN6duckdb16block_iterator_tIKNS1_18BlockIteratorStateILNS1_22BlockIteratorStateTypeE0EEENS1_7SortKeyILNS1_11SortKeyTypeE1EEEEEEET_SB_SB_SB_St26random_access_iterator_tag:bb.a
  br i1 %i.cn, label %bb.j, label %bb.t

bb.j:                                             ; preds = %bb.i
  %i.co = icmp eq i64 %.0225, 1
  br i1 %i.co, label %bb.k, label %bb.p

bb.k:                                             ; preds = %bb.j
  %i.cp = load ptr, ptr %i.cl, align 8, !tbaa !1246
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %.sroa.19.0
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !1051
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %.sroa.39.0
  %.sroa.06.0.copyload = load i64, ptr %i.cs, align 8
  %i.ct = add i64 %.sroa.39.0, 1                  ; 3 uses
  %i.cu = load i64, ptr %i.ae, align 8, !tbaa !168, !noalias !2119 ; 8 uses
  %.not.i.i20 = icmp ult i64 %i.ct, %i.cu
  br i1 %.not.i.i20, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEplERKm.exit23, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cv = mul i64 %i.cu, %.sroa.19.0
  %i.cw = add i64 %i.cv, %i.ct                    ; 2 uses
  %i.cx = zext i64 %i.cw to i128
  %i.cy = load i64, ptr %i.ck, align 8, !tbaa !1232, !noalias !2119
  %i.cz = zext i64 %i.cy to i128
  %i.da = mul nuw i128 %i.cz, %i.cx
  %i.db = lshr i128 %i.da, 64
  %i.dc = trunc nuw i128 %i.db to i64             ; 2 uses
  %i.dd = mul i64 %i.cu, %i.dc
  %i.de = sub i64 %i.cw, %i.dd
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEplERKm.exit23

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEplERKm.exit23: ; preds = %bb.k, %bb.l
  %.05.i21 = phi i64 [ %.sroa.19.0, %bb.k ], [ %i.dc, %bb.l ] ; 2 uses
  %.0.i22 = phi i64 [ %i.ct, %bb.k ], [ %i.de, %bb.l ] ; 2 uses
  %i.df = add i64 %.0224, %.sroa.39.0             ; 6 uses
  %.not.i.i24 = icmp ult i64 %i.df, %i.cu
  br i1 %.not.i.i24, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEplERKm.exit27, label %bb.m

bb.m:                                             ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEplERKm.exit23
  %i.dg = mul i64 %i.cu, %.sroa.19.0
  %i.dh = add i64 %i.dg, %i.df                    ; 2 uses
  %i.di = zext i64 %i.dh to i128
  %i.dj = load i64, ptr %i.ck, align 8, !tbaa !1232, !noalias !2122
  %i.dk = zext i64 %i.dj to i128
  %i.dl = mul nuw i128 %i.dk, %i.di
  %i.dm = lshr i128 %i.dl, 64
  %i.dn = trunc nuw i128 %i.dm to i64             ; 2 uses
  %i.do = mul i64 %i.cu, %i.dn
  %i.dp = sub i64 %i.dh, %i.do
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEplERKm.exit27

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEplERKm.exit27: ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEplERKm.exit23, %bb.m
  %.05.i25 = phi i64 [ %.sroa.19.0, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEplERKm.exit23 ], [ %i.dn, %bb.m ]
  %.0.i26 = phi i64 [ %i.df, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEplERKm.exit23 ], [ %i.dp, %bb.m ]
  %reass.add230 = sub i64 %.05.i25, %.05.i21
  %reass.mul231 = mul i64 %reass.add230, %i.cu
  %i.dq = sub i64 %.0.i26, %.0.i22
  %i.dr = add i64 %i.dq, %reass.mul231            ; 2 uses
  %.not4.i.i.i.i.i = icmp eq i64 %i.dr, 0
  br i1 %.not4.i.i.i.i.i, label %_ZSt4moveIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE1EEEEES9_ET0_T_SB_SA_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEplERKm.exit27, %.lr.ph.i.i.i.i.i
  %.sroa.38.0.i.i.i.i = phi i64 [ %i.ee, %.lr.ph.i.i.i.i.i ], [ %.05.i21, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEplERKm.exit27 ] ; 2 uses
  %.sroa.8.0.i.i.i.i = phi i64 [ %i.ek, %.lr.ph.i.i.i.i.i ], [ %.sroa.39.0, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEplERKm.exit27 ] ; 2 uses
  %.sroa.3.0.i.i.i.i = phi i64 [ %i.ej, %.lr.ph.i.i.i.i.i ], [ %.sroa.19.0, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEplERKm.exit27 ] ; 2 uses
  %.sroa.811.0.i.i.i.i = phi i64 [ %i.ef, %.lr.ph.i.i.i.i.i ], [ %.0.i22, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEplERKm.exit27 ] ; 2 uses
  %.05.i.i.i.i.i = phi i64 [ %i.el, %.lr.ph.i.i.i.i.i ], [ %i.dr, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEplERKm.exit27 ]
  %i.ds = load ptr, ptr %i.cl, align 8, !tbaa !1246, !noalias !2125 ; 2 uses
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %.sroa.38.0.i.i.i.i
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !1051, !noalias !2125
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %.sroa.811.0.i.i.i.i
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %.sroa.3.0.i.i.i.i
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !1051, !noalias !2125
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %.sroa.8.0.i.i.i.i
  %i.dz = load i64, ptr %i.dv, align 8, !noalias !2125
  store i64 %i.dz, ptr %i.dy, align 8, !noalias !2125
  %i.ea = add i64 %.sroa.811.0.i.i.i.i, 1         ; 2 uses
  %i.eb = load i64, ptr %i.ae, align 8, !tbaa !168, !noalias !2125 ; 3 uses
  %i.ec = icmp eq i64 %i.ea, %i.eb                ; 2 uses
  %i.ed = zext i1 %i.ec to i64
  %i.ee = add i64 %.sroa.38.0.i.i.i.i, %i.ed
  %i.ef = select i1 %i.ec, i64 0, i64 %i.ea
  %i.eg = add i64 %.sroa.8.0.i.i.i.i, 1           ; 2 uses
  %i.eh = icmp eq i64 %i.eg, %i.eb                ; 2 uses
  %i.ei = zext i1 %i.eh to i64
  %i.ej = add i64 %.sroa.3.0.i.i.i.i, %i.ei
  %i.ek = select i1 %i.eh, i64 0, i64 %i.eg
  %i.el = add i64 %.05.i.i.i.i.i, -1              ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.el, 0
  br i1 %.not.i.i.i.i.i, label %_ZSt4moveIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE1EEEEES9_ET0_T_SB_SA_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !2136

_ZSt4moveIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE1EEEEES9_ET0_T_SB_SA_.exit: ; preds = %.lr.ph.i.i.i.i.i, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEplERKm.exit27
  %i.em = phi i64 [ %i.cu, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEplERKm.exit27 ], [ %i.eb, %.lr.ph.i.i.i.i.i ] ; 6 uses
  %.not.i.i28 = icmp ult i64 %i.df, %i.em
  br i1 %.not.i.i28, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEplERKm.exit31, label %bb.n

bb.n:                                             ; preds = %_ZSt4moveIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE1EEEEES9_ET0_T_SB_SA_.exit
  %i.en = mul i64 %i.em, %.sroa.19.0
  %i.eo = add i64 %i.en, %i.df                    ; 2 uses
  %i.ep = zext i64 %i.eo to i128
  %i.eq = load i64, ptr %i.ck, align 8, !tbaa !1232, !noalias !2137
  %i.er = zext i64 %i.eq to i128
  %i.es = mul nuw i128 %i.er, %i.ep
  %i.et = lshr i128 %i.es, 64
  %i.eu = trunc nuw i128 %i.et to i64             ; 2 uses
  %i.ev = mul i64 %i.em, %i.eu
  %i.ew = sub i64 %i.eo, %i.ev
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEplERKm.exit31

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEplERKm.exit31: ; preds = %_ZSt4moveIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE1EEEEES9_ET0_T_SB_SA_.exit, %bb.n
  %.05.i29 = phi i64 [ %.sroa.19.0, %_ZSt4moveIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE1EEEEES9_ET0_T_SB_SA_.exit ], [ %i.eu, %bb.n ] ; 2 uses
  %.0.i30 = phi i64 [ %i.df, %_ZSt4moveIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE1EEEEES9_ET0_T_SB_SA_.exit ], [ %i.ew, %bb.n ]
  %i.ex = add i64 %.0.i30, -1                     ; 3 uses
  %.not.i.i32 = icmp ult i64 %i.ex, %i.em
  br i1 %.not.i.i32, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEmiERKm.exit, label %bb.o

bb.o:                                             ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEplERKm.exit31
  %i.ey = mul i64 %.05.i29, %i.em
  %i.ez = add i64 %i.ex, %i.ey                    ; 2 uses
  %i.fa = zext i64 %i.ez to i128
  %i.fb = load i64, ptr %i.ck, align 8, !tbaa !1232, !noalias !2140
  %i.fc = zext i64 %i.fb to i128
  %i.fd = mul nuw i128 %i.fc, %i.fa
  %i.fe = lshr i128 %i.fd, 64
  %i.ff = trunc nuw i128 %i.fe to i64             ; 2 uses
  %i.fg = mul i64 %i.em, %i.ff
  %i.fh = sub i64 %i.ez, %i.fg
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEmiERKm.exit

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEmiERKm.exit: ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEplERKm.exit31, %bb.o
  %.05.i33 = phi i64 [ %.05.i29, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEplERKm.exit31 ], [ %i.ff, %bb.o ]
  %.0.i34 = phi i64 [ %i.ex, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEplERKm.exit31 ], [ %i.fh, %bb.o ]
  %i.fi = load ptr, ptr %i.cl, align 8, !tbaa !1246
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.fi, i64 %.05.i33
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !1051
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %.0.i34
  store i64 %.sroa.06.0.copyload, ptr %i.fl, align 8
  br label %.critedge

bb.p:                                             ; preds = %bb.j
  %i.fm = add i64 %.0225, %.sroa.39.0             ; 3 uses
  %i.fn = load i64, ptr %i.ae, align 8, !tbaa !168, !noalias !2143 ; 3 uses
  %.not.i.i35 = icmp ult i64 %i.fm, %i.fn
  br i1 %.not.i.i35, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEplERKm.exit38.preheader, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.fo = mul i64 %i.fn, %.sroa.19.0
  %i.fp = add i64 %i.fo, %i.fm                    ; 2 uses
  %i.fq = zext i64 %i.fp to i128
  %i.fr = load i64, ptr %i.ck, align 8, !tbaa !1232, !noalias !2143
  %i.fs = zext i64 %i.fr to i128
  %i.ft = mul nuw i128 %i.fs, %i.fq
  %i.fu = lshr i128 %i.ft, 64
  %i.fv = trunc nuw i128 %i.fu to i64             ; 2 uses
  %i.fw = mul i64 %i.fn, %i.fv
  %i.fx = sub i64 %i.fp, %i.fw
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEplERKm.exit38.preheader

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEplERKm.exit38.preheader: ; preds = %bb.p, %bb.q
  %.sroa.6113.0245.ph = phi i64 [ %i.fv, %bb.q ], [ %.sroa.19.0, %bb.p ]
  %.sroa.10.0244.ph = phi i64 [ %i.fx, %bb.q ], [ %i.fm, %bb.p ]
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEplERKm.exit38

bb.r:                                             ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEplERKm.exit38
  %i.fy = urem i64 %.0224, %.0225                 ; 2 uses
  %.not14 = icmp eq i64 %i.fy, 0
  br i1 %.not14, label %.critedge, label %bb.s

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEplERKm.exit38: ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEplERKm.exit38.preheader, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEplERKm.exit38
  %.011248 = phi i64 [ %i.gs, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEplERKm.exit38 ], [ 0, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEplERKm.exit38.preheader ]
  %.sroa.39.1247 = phi i64 [ %i.gm, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEplERKm.exit38 ], [ %.sroa.39.0, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEplERKm.exit38.preheader ] ; 2 uses
  %.sroa.19.1246 = phi i64 [ %i.gl, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEplERKm.exit38 ], [ %.sroa.19.0, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEplERKm.exit38.preheader ] ; 2 uses
  %.sroa.6113.0245 = phi i64 [ %i.gq, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEplERKm.exit38 ], [ %.sroa.6113.0245.ph, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEplERKm.exit38.preheader ] ; 2 uses
  %.sroa.10.0244 = phi i64 [ %i.gr, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEplERKm.exit38 ], [ %.sroa.10.0244.ph, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEplERKm.exit38.preheader ] ; 2 uses
  %i.fz = load ptr, ptr %i.cl, align 8, !tbaa !1246 ; 2 uses
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.fz, i64 %.sroa.19.1246
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !1051
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.gb, i64 %.sroa.39.1247 ; 2 uses
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.fz, i64 %.sroa.6113.0245
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !1051
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %.sroa.10.0244 ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.gc, align 8
  %i.gg = load i64, ptr %i.gf, align 8
  store i64 %i.gg, ptr %i.gc, align 8
  store i64 %.sroa.0.0.copyload.i.i, ptr %i.gf, align 8
  %i.gh = add i64 %.sroa.39.1247, 1               ; 2 uses
  %i.gi = load i64, ptr %i.ae, align 8, !tbaa !168 ; 2 uses
  %i.gj = icmp eq i64 %i.gh, %i.gi                ; 2 uses
  %i.gk = zext i1 %i.gj to i64
  %i.gl = add i64 %.sroa.19.1246, %i.gk           ; 2 uses
  %i.gm = select i1 %i.gj, i64 0, i64 %i.gh       ; 2 uses
  %i.gn = add i64 %.sroa.10.0244, 1               ; 2 uses
  %i.go = icmp eq i64 %i.gn, %i.gi                ; 2 uses
  %i.gp = zext i1 %i.go to i64
  %i.gq = add i64 %.sroa.6113.0245, %i.gp
  %i.gr = select i1 %i.go, i64 0, i64 %i.gn
  %i.gs = add nuw i64 %.011248, 1                 ; 2 uses
  %exitcond259.not = icmp eq i64 %i.gs, %i.cm
  br i1 %exitcond259.not, label %bb.r, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEplERKm.exit38, !llvm.loop !2146

bb.s:                                             ; preds = %bb.r
  %i.gt = sub i64 %.0225, %i.fy
  br label %.backedge

bb.t:                                             ; preds = %bb.i
  %i.gu = icmp eq i64 %i.cm, 1
  %i.gv = add i64 %.0224, %.sroa.39.0             ; 9 uses
  %i.gw = load i64, ptr %i.ae, align 8, !tbaa !168, !noalias !69 ; 19 uses
  %.not.i.i39 = icmp ult i64 %i.gv, %i.gw         ; 4 uses
  br i1 %i.gu, label %bb.u, label %bb.aa

bb.u:                                             ; preds = %bb.t
  br i1 %.not.i.i39, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEplERKm.exit42, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.gx = mul i64 %i.gw, %.sroa.19.0
  %i.gy = add i64 %i.gx, %i.gv                    ; 2 uses
  %i.gz = zext i64 %i.gy to i128
  %i.ha = load i64, ptr %i.ck, align 8, !tbaa !1232, !noalias !2147
  %i.hb = zext i64 %i.ha to i128
  %i.hc = mul nuw i128 %i.hb, %i.gz
  %i.hd = lshr i128 %i.hc, 64
  %i.he = trunc nuw i128 %i.hd to i64             ; 2 uses
  %i.hf = mul i64 %i.gw, %i.he
  %i.hg = sub i64 %i.gy, %i.hf
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEplERKm.exit42

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEplERKm.exit42: ; preds = %bb.u, %bb.v
  %.05.i40 = phi i64 [ %.sroa.19.0, %bb.u ], [ %i.he, %bb.v ] ; 2 uses
  %.0.i41 = phi i64 [ %i.gv, %bb.u ], [ %i.hg, %bb.v ]
  %i.hh = add i64 %.0.i41, -1                     ; 3 uses
  %.not.i.i43 = icmp ult i64 %i.hh, %i.gw
  br i1 %.not.i.i43, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEmiERKm.exit46, label %bb.w

bb.w:                                             ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEplERKm.exit42
  %i.hi = mul i64 %.05.i40, %i.gw
  %i.hj = add i64 %i.hh, %i.hi                    ; 2 uses
  %i.hk = zext i64 %i.hj to i128
  %i.hl = load i64, ptr %i.ck, align 8, !tbaa !1232, !noalias !2150
  %i.hm = zext i64 %i.hl to i128
  %i.hn = mul nuw i128 %i.hm, %i.hk
  %i.ho = lshr i128 %i.hn, 64
  %i.hp = trunc nuw i128 %i.ho to i64             ; 2 uses
  %i.hq = mul i64 %i.gw, %i.hp
  %i.hr = sub i64 %i.hj, %i.hq
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEmiERKm.exit46

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEmiERKm.exit46: ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEplERKm.exit42, %bb.w
  %.05.i44 = phi i64 [ %.05.i40, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEplERKm.exit42 ], [ %i.hp, %bb.w ]
  %.0.i45 = phi i64 [ %i.hh, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEplERKm.exit42 ], [ %i.hr, %bb.w ]
  %i.hs = load ptr, ptr %i.cl, align 8, !tbaa !1246 ; 2 uses
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %.05.i44
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !1051
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %i.hu, i64 %.0.i45
  %.sroa.0.0.copyload = load i64, ptr %i.hv, align 8
  br i1 %.not.i.i39, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEplERKm.exit50, label %bb.x

bb.x:                                             ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEmiERKm.exit46
  %i.hw = mul i64 %i.gw, %.sroa.19.0
  %i.hx = add i64 %i.hw, %i.gv                    ; 2 uses
  %i.hy = zext i64 %i.hx to i128
  %i.hz = load i64, ptr %i.ck, align 8, !tbaa !1232, !noalias !2153
  %i.ia = zext i64 %i.hz to i128
  %i.ib = mul nuw i128 %i.ia, %i.hy
  %i.ic = lshr i128 %i.ib, 64
  %i.id = trunc nuw i128 %i.ic to i64             ; 2 uses
  %i.ie = mul i64 %i.gw, %i.id
  %i.if = sub i64 %i.hx, %i.ie
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEplERKm.exit50

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEplERKm.exit50: ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEmiERKm.exit46, %bb.x
  %.05.i48 = phi i64 [ %.sroa.19.0, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEmiERKm.exit46 ], [ %i.id, %bb.x ] ; 2 uses
  %.0.i49 = phi i64 [ %i.gv, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEmiERKm.exit46 ], [ %i.if, %bb.x ]
  %i.ig = add i64 %.0.i49, -1                     ; 3 uses
  %.not.i.i51 = icmp ult i64 %i.ig, %i.gw
  br i1 %.not.i.i51, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEmiERKm.exit54, label %bb.y

bb.y:                                             ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEplERKm.exit50
  %i.ih = mul i64 %.05.i48, %i.gw
  %i.ii = add i64 %i.ig, %i.ih                    ; 2 uses
  %i.ij = zext i64 %i.ii to i128
  %i.ik = load i64, ptr %i.ck, align 8, !tbaa !1232, !noalias !2156
  %i.il = zext i64 %i.ik to i128
  %i.im = mul nuw i128 %i.il, %i.ij
  %i.in = lshr i128 %i.im, 64
  %i.io = trunc nuw i128 %i.in to i64             ; 2 uses
  %i.ip = mul i64 %i.gw, %i.io
  %i.iq = sub i64 %i.ii, %i.ip
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEmiERKm.exit54

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEmiERKm.exit54: ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEplERKm.exit50, %bb.y
  %.05.i52 = phi i64 [ %.05.i48, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEplERKm.exit50 ], [ %i.io, %bb.y ] ; 2 uses
  %.0.i53 = phi i64 [ %i.ig, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEplERKm.exit50 ], [ %i.iq, %bb.y ] ; 2 uses
  br i1 %.not.i.i39, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEplERKm.exit58, label %bb.z

bb.z:                                             ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEmiERKm.exit54
  %i.ir = mul i64 %i.gw, %.sroa.19.0
  %i.is = add i64 %i.ir, %i.gv                    ; 2 uses
  %i.it = zext i64 %i.is to i128
  %i.iu = load i64, ptr %i.ck, align 8, !tbaa !1232, !noalias !2159
  %i.iv = zext i64 %i.iu to i128
  %i.iw = mul nuw i128 %i.iv, %i.it
  %i.ix = lshr i128 %i.iw, 64
  %i.iy = trunc nuw i128 %i.ix to i64             ; 2 uses
  %i.iz = mul i64 %i.gw, %i.iy
  %i.ja = sub i64 %i.is, %i.iz
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEplERKm.exit58

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEplERKm.exit58: ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEmiERKm.exit54, %bb.z
  %.05.i56 = phi i64 [ %.sroa.19.0, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEmiERKm.exit54 ], [ %i.iy, %bb.z ]
  %.0.i57 = phi i64 [ %i.gv, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEmiERKm.exit54 ], [ %i.ja, %bb.z ]
  %reass.add = sub i64 %.05.i52, %.sroa.19.0
  %reass.mul = mul i64 %reass.add, %i.gw
  %i.jb = sub i64 %.0.i53, %.sroa.39.0
  %i.jc = add i64 %i.jb, %reass.mul               ; 2 uses
  %.not5.i.i.i.i.i = icmp eq i64 %i.jc, 0
  br i1 %.not5.i.i.i.i.i, label %_ZSt13move_backwardIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE1EEEEES9_ET0_T_SB_SA_.exit, label %.lr.ph.i.i.i.i.i60

.lr.ph.i.i.i.i.i60:                               ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEplERKm.exit58, %.lr.ph.i.i.i.i.i60
  %.sroa.36.0.i.i.i.i = phi i64 [ %i.jf, %.lr.ph.i.i.i.i.i60 ], [ %.05.i52, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEplERKm.exit58 ]
  %.sroa.7.0.i.i.i.i = phi i64 [ %i.jr, %.lr.ph.i.i.i.i.i60 ], [ %.0.i57, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEplERKm.exit58 ] ; 2 uses
  %.sroa.3.0.i.i.i.i61 = phi i64 [ %i.jp, %.lr.ph.i.i.i.i.i60 ], [ %.05.i56, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEplERKm.exit58 ]
  %.sroa.78.0.i.i.i.i = phi i64 [ %i.ji, %.lr.ph.i.i.i.i.i60 ], [ %.0.i53, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEplERKm.exit58 ] ; 2 uses
  %.06.i.i.i.i.i = phi i64 [ %i.jw, %.lr.ph.i.i.i.i.i60 ], [ %i.jc, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEplERKm.exit58 ]
  %i.jd = add i64 %.sroa.78.0.i.i.i.i, -1
  %i.je = icmp eq i64 %.sroa.78.0.i.i.i.i, 0      ; 2 uses
  %.neg.i.i.i.i.i.i.i = sext i1 %i.je to i64
  %i.jf = add i64 %.sroa.36.0.i.i.i.i, %.neg.i.i.i.i.i.i.i ; 2 uses
  %i.jg = load i64, ptr %i.ae, align 8, !tbaa !168, !noalias !2162 ; 2 uses
  %i.jh = select i1 %i.je, i64 %i.jg, i64 0
  %i.ji = add i64 %i.jd, %i.jh                    ; 2 uses
  %i.jj = load ptr, ptr %i.cl, align 8, !tbaa !1246, !noalias !2162 ; 2 uses
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %i.jj, i64 %i.jf
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !1051, !noalias !2162
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %i.jl, i64 %i.ji
  %i.jn = add i64 %.sroa.7.0.i.i.i.i, -1
  %i.jo = icmp eq i64 %.sroa.7.0.i.i.i.i, 0       ; 2 uses
  %.neg.i.i2.i.i.i.i.i = sext i1 %i.jo to i64
  %i.jp = add i64 %.sroa.3.0.i.i.i.i61, %.neg.i.i2.i.i.i.i.i ; 2 uses
  %i.jq = select i1 %i.jo, i64 %i.jg, i64 0
  %i.jr = add i64 %i.jn, %i.jq                    ; 2 uses
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %i.jj, i64 %i.jp
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !1051, !noalias !2162
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %i.jt, i64 %i.jr
  %i.jv = load i64, ptr %i.jm, align 8, !noalias !2162
  store i64 %i.jv, ptr %i.ju, align 8, !noalias !2162
  %i.jw = add i64 %.06.i.i.i.i.i, -1              ; 2 uses
  %.not.i.i.i.i.i62 = icmp eq i64 %i.jw, 0
  br i1 %.not.i.i.i.i.i62, label %_ZSt13move_backwardIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE1EEEEES9_ET0_T_SB_SA_.exit.loopexit, label %.lr.ph.i.i.i.i.i60, !llvm.loop !2173

_ZSt13move_backwardIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE1EEEEES9_ET0_T_SB_SA_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i60
  %.pre = load ptr, ptr %i.cl, align 8, !tbaa !1246
  br label %_ZSt13move_backwardIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE1EEEEES9_ET0_T_SB_SA_.exit

_ZSt13move_backwardIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE1EEEEES9_ET0_T_SB_SA_.exit: ; preds = %_ZSt13move_backwardIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE1EEEEES9_ET0_T_SB_SA_.exit.loopexit, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEplERKm.exit58
  %i.jx = phi ptr [ %.pre, %_ZSt13move_backwardIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE1EEEEES9_ET0_T_SB_SA_.exit.loopexit ], [ %i.hs, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEplERKm.exit58 ]
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %i.jx, i64 %.sroa.19.0
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !1051
  %i.ka = getelementptr inbounds nuw [8 x i8], ptr %i.jz, i64 %.sroa.39.0
  store i64 %.sroa.0.0.copyload, ptr %i.ka, align 8
  br label %.critedge

bb.aa:                                            ; preds = %bb.t
  br i1 %.not.i.i39, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEplERKm.exit66, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.kb = mul i64 %i.gw, %.sroa.19.0
  %i.kc = add i64 %i.kb, %i.gv                    ; 2 uses
  %i.kd = zext i64 %i.kc to i128
  %i.ke = load i64, ptr %i.ck, align 8, !tbaa !1232, !noalias !2174
  %i.kf = zext i64 %i.ke to i128
  %i.kg = mul nuw i128 %i.kf, %i.kd
  %i.kh = lshr i128 %i.kg, 64
  %i.ki = trunc nuw i128 %i.kh to i64             ; 2 uses
  %i.kj = mul i64 %i.gw, %i.ki
  %i.kk = sub i64 %i.kc, %i.kj
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEplERKm.exit66

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEplERKm.exit66: ; preds = %bb.aa, %bb.ab
  %.05.i64 = phi i64 [ %.sroa.19.0, %bb.aa ], [ %i.ki, %bb.ab ] ; 3 uses
  %.0.i65 = phi i64 [ %i.gv, %bb.aa ], [ %i.kk, %bb.ab ] ; 2 uses
  %i.kl = sub i64 %.0.i65, %i.cm                  ; 3 uses
  %.not.i.i67 = icmp ult i64 %i.kl, %i.gw
  br i1 %.not.i.i67, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEmiERKm.exit70, label %bb.ac

bb.ac:                                            ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEplERKm.exit66
  %i.km = mul i64 %.05.i64, %i.gw
  %i.kn = add i64 %i.kl, %i.km                    ; 2 uses
  %i.ko = zext i64 %i.kn to i128
  %i.kp = load i64, ptr %i.ck, align 8, !tbaa !1232, !noalias !2177
  %i.kq = zext i64 %i.kp to i128
  %i.kr = mul nuw i128 %i.kq, %i.ko
  %i.ks = lshr i128 %i.kr, 64
  %i.kt = trunc nuw i128 %i.ks to i64             ; 2 uses
  %i.ku = mul i64 %i.gw, %i.kt
  %i.kv = sub i64 %i.kn, %i.ku
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEmiERKm.exit70

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEmiERKm.exit70: ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEplERKm.exit66, %bb.ac
  %.05.i68 = phi i64 [ %.05.i64, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEplERKm.exit66 ], [ %i.kt, %bb.ac ] ; 2 uses
  %.0.i69 = phi i64 [ %i.kl, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEplERKm.exit66 ], [ %i.kv, %bb.ac ] ; 2 uses
  %.not249 = icmp eq i64 %.0225, 0
end_hunk_6
begin_hunk_7_@_ZN14duckdb_pdqsort14pdqsort_detail26partition_right_branchlessIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE2EEEEEZN15duckdb_ska_sort6detail15StdSortFallbackISB_KNS2_13SkaExtractKeyISA_EEEEvT_SI_RT0_EUlRKSA_SM_E_EESt4pairISI_bESI_SI_SJ_:bb.a
bb.af:                                            ; preds = %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE2EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit120
  %i.ot = icmp eq i64 %i.or, %.sroa.0442.0.copyload
  br i1 %i.ot, label %bb.ag, label %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE2EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit124

bb.ag:                                            ; preds = %bb.af
  %i.ou = getelementptr inbounds nuw i8, ptr %i.oq, i64 8
  %.val.val.i.i.i122 = load i64, ptr %i.ou, align 8, !tbaa !168
  %i.ov = icmp ult i64 %.val.val.i.i.i122, %.sroa.25.0.copyload
  %i.ow = zext i1 %i.ov to i64
  br label %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE2EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit124

_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE2EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit124: ; preds = %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE2EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit120, %bb.af, %bb.ag
  %i.ox = phi i64 [ 1, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE2EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit120 ], [ 0, %bb.af ], [ %i.ow, %bb.ag ]
  %i.oy = add i64 %i.ox, %i.oe                    ; 2 uses
  %i.oz = or disjoint i8 %.064548, 5
  %i.pa = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.oy
  store i8 %i.oz, ptr %i.pa, align 1, !tbaa !527
  %i.pb = add i64 %i.om, -1
  %i.pc = icmp eq i64 %i.om, 0                    ; 2 uses
  %.neg.i.i125 = sext i1 %i.pc to i64
  %i.pd = add i64 %i.oj, %.neg.i.i125             ; 2 uses
  %i.pe = load i64, ptr %i.ea, align 8, !tbaa !168
  %i.pf = select i1 %i.pc, i64 %i.pe, i64 0
  %i.pg = add i64 %i.pb, %i.pf                    ; 3 uses
  %i.ph = load ptr, ptr %i.dd, align 8, !tbaa !1246
  %i.pi = getelementptr inbounds nuw [8 x i8], ptr %i.ph, i64 %i.pd
  %i.pj = load ptr, ptr %i.pi, align 8, !tbaa !1051
  %i.pk = getelementptr inbounds nuw [16 x i8], ptr %i.pj, i64 %i.pg ; 2 uses
  %i.pl = load i64, ptr %i.pk, align 8, !tbaa !168 ; 2 uses
  %i.pm = icmp ult i64 %i.pl, %.sroa.0442.0.copyload
  br i1 %i.pm, label %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE2EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit128, label %bb.ah

bb.ah:                                            ; preds = %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE2EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit124
  %i.pn = icmp eq i64 %i.pl, %.sroa.0442.0.copyload
  br i1 %i.pn, label %bb.ai, label %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE2EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit128

bb.ai:                                            ; preds = %bb.ah
  %i.po = getelementptr inbounds nuw i8, ptr %i.pk, i64 8
  %.val.val.i.i.i126 = load i64, ptr %i.po, align 8, !tbaa !168
  %i.pp = icmp ult i64 %.val.val.i.i.i126, %.sroa.25.0.copyload
  %i.pq = zext i1 %i.pp to i64
  br label %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE2EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit128

_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE2EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit128: ; preds = %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE2EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit124, %bb.ah, %bb.ai
  %i.pr = phi i64 [ 1, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE2EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit124 ], [ 0, %bb.ah ], [ %i.pq, %bb.ai ]
  %i.ps = add i64 %i.pr, %i.oy                    ; 2 uses
  %i.pt = or disjoint i8 %.064548, 6
  %i.pu = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.ps
  store i8 %i.pt, ptr %i.pu, align 1, !tbaa !527
  %i.pv = add i64 %i.pg, -1
  %i.pw = icmp eq i64 %i.pg, 0                    ; 2 uses
  %.neg.i.i129 = sext i1 %i.pw to i64
  %i.px = add i64 %i.pd, %.neg.i.i129             ; 2 uses
  %i.py = load i64, ptr %i.ea, align 8, !tbaa !168
  %i.pz = select i1 %i.pw, i64 %i.py, i64 0
  %i.qa = add i64 %i.pv, %i.pz                    ; 3 uses
  %i.qb = load ptr, ptr %i.dd, align 8, !tbaa !1246
  %i.qc = getelementptr inbounds nuw [8 x i8], ptr %i.qb, i64 %i.px
  %i.qd = load ptr, ptr %i.qc, align 8, !tbaa !1051
  %i.qe = getelementptr inbounds nuw [16 x i8], ptr %i.qd, i64 %i.qa ; 2 uses
  %i.qf = load i64, ptr %i.qe, align 8, !tbaa !168 ; 2 uses
  %i.qg = icmp ult i64 %i.qf, %.sroa.0442.0.copyload
  br i1 %i.qg, label %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE2EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit132, label %bb.aj

bb.aj:                                            ; preds = %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE2EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit128
  %i.qh = icmp eq i64 %i.qf, %.sroa.0442.0.copyload
  br i1 %i.qh, label %bb.ak, label %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE2EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit132

bb.ak:                                            ; preds = %bb.aj
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qe, i64 8
  %.val.val.i.i.i130 = load i64, ptr %i.qi, align 8, !tbaa !168
  %i.qj = icmp ult i64 %.val.val.i.i.i130, %.sroa.25.0.copyload
  %i.qk = zext i1 %i.qj to i64
  br label %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE2EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit132

_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE2EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit132: ; preds = %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE2EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit128, %bb.aj, %bb.ak
  %i.ql = phi i64 [ 1, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE2EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit128 ], [ 0, %bb.aj ], [ %i.qk, %bb.ak ]
  %i.qm = add i64 %i.ql, %i.ps                    ; 2 uses
  %i.qn = or disjoint i8 %.064548, 7
  %i.qo = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.qm
  store i8 %i.qn, ptr %i.qo, align 1, !tbaa !527
  %i.qp = add i64 %i.qa, -1
  %i.qq = icmp eq i64 %i.qa, 0                    ; 2 uses
  %.neg.i.i133 = sext i1 %i.qq to i64
  %i.qr = add i64 %i.px, %.neg.i.i133             ; 2 uses
  %i.qs = load i64, ptr %i.ea, align 8, !tbaa !168
  %i.qt = select i1 %i.qq, i64 %i.qs, i64 0
  %i.qu = add i64 %i.qp, %i.qt                    ; 3 uses
  %i.qv = load ptr, ptr %i.dd, align 8, !tbaa !1246
  %i.qw = getelementptr inbounds nuw [8 x i8], ptr %i.qv, i64 %i.qr
  %i.qx = load ptr, ptr %i.qw, align 8, !tbaa !1051
  %i.qy = getelementptr inbounds nuw [16 x i8], ptr %i.qx, i64 %i.qu ; 2 uses
  %i.qz = load i64, ptr %i.qy, align 8, !tbaa !168 ; 2 uses
  %i.ra = icmp ult i64 %i.qz, %.sroa.0442.0.copyload
  br i1 %i.ra, label %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE2EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit136, label %bb.al

bb.al:                                            ; preds = %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE2EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit132
  %i.rb = icmp eq i64 %i.qz, %.sroa.0442.0.copyload
  br i1 %i.rb, label %bb.am, label %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE2EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit136

bb.am:                                            ; preds = %bb.al
  %i.rc = getelementptr inbounds nuw i8, ptr %i.qy, i64 8
  %.val.val.i.i.i134 = load i64, ptr %i.rc, align 8, !tbaa !168
  %i.rd = icmp ult i64 %.val.val.i.i.i134, %.sroa.25.0.copyload
  %i.re = zext i1 %i.rd to i64
  br label %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE2EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit136

_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE2EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit136: ; preds = %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE2EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit132, %bb.al, %bb.am
  %i.rf = phi i64 [ 1, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE2EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit132 ], [ 0, %bb.al ], [ %i.re, %bb.am ]
  %i.rg = add i64 %i.rf, %i.qm                    ; 2 uses
  %i.rh = add nuw nsw i8 %.064548, 8              ; 2 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.rg
  store i8 %i.rh, ptr %i.ri, align 1, !tbaa !527
  %i.rj = add i64 %i.qu, -1
  %i.rk = icmp eq i64 %i.qu, 0                    ; 2 uses
  %.neg.i.i137 = sext i1 %i.rk to i64
  %i.rl = add i64 %i.qr, %.neg.i.i137             ; 3 uses
  %i.rm = load i64, ptr %i.ea, align 8, !tbaa !168
  %i.rn = select i1 %i.rk, i64 %i.rm, i64 0
  %i.ro = add i64 %i.rj, %i.rn                    ; 3 uses
  %i.rp = load ptr, ptr %i.dd, align 8, !tbaa !1246
  %i.rq = getelementptr inbounds nuw [8 x i8], ptr %i.rp, i64 %i.rl
  %i.rr = load ptr, ptr %i.rq, align 8, !tbaa !1051
  %i.rs = getelementptr inbounds nuw [16 x i8], ptr %i.rr, i64 %i.ro ; 2 uses
  %i.rt = load i64, ptr %i.rs, align 8, !tbaa !168 ; 2 uses
  %i.ru = icmp ult i64 %i.rt, %.sroa.0442.0.copyload
  br i1 %i.ru, label %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE2EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit140, label %bb.an

bb.an:                                            ; preds = %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE2EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit136
  %i.rv = icmp eq i64 %i.rt, %.sroa.0442.0.copyload
  br i1 %i.rv, label %bb.ao, label %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE2EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit140

bb.ao:                                            ; preds = %bb.an
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rs, i64 8
  %.val.val.i.i.i138 = load i64, ptr %i.rw, align 8, !tbaa !168
  %i.rx = icmp ult i64 %.val.val.i.i.i138, %.sroa.25.0.copyload
  %i.ry = zext i1 %i.rx to i64
  br label %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE2EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit140

_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE2EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit140: ; preds = %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE2EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit136, %bb.an, %bb.ao
  %i.rz = phi i64 [ 1, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE2EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit136 ], [ 0, %bb.an ], [ %i.ry, %bb.ao ]
  %i.sa = add i64 %i.rz, %i.rg                    ; 2 uses
  %i.sb = icmp samesign ult i8 %.064548, 56
  br i1 %i.sb, label %.preheader, label %.loopexit498, !llvm.loop !3034

.lr.ph541:                                        ; preds = %.lr.ph541.preheader, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE2EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit144
  %.0540 = phi i8 [ %i.sc, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE2EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit144 ], [ 0, %.lr.ph541.preheader ]
  %.sroa.76.5539 = phi i64 [ %i.sj, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE2EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit144 ], [ %.sroa.76.3556, %.lr.ph541.preheader ] ; 2 uses
  %.sroa.30.5538 = phi i64 [ %i.sg, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE2EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit144 ], [ %.sroa.30.3555, %.lr.ph541.preheader ]
  %.2537 = phi i64 [ %i.sv, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE2EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit144 ], [ %.0486554, %.lr.ph541.preheader ] ; 2 uses
  %i.sc = add nuw i8 %.0540, 1                    ; 3 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.2537
  store i8 %i.sc, ptr %i.sd, align 1, !tbaa !527
  %i.se = add i64 %.sroa.76.5539, -1
  %i.sf = icmp eq i64 %.sroa.76.5539, 0           ; 2 uses
  %.neg.i.i141 = sext i1 %i.sf to i64
  %i.sg = add i64 %.sroa.30.5538, %.neg.i.i141    ; 3 uses
  %i.sh = load i64, ptr %i.ea, align 8, !tbaa !168
  %i.si = select i1 %i.sf, i64 %i.sh, i64 0
  %i.sj = add i64 %i.se, %i.si                    ; 3 uses
  %i.sk = load ptr, ptr %i.dd, align 8, !tbaa !1246
  %i.sl = getelementptr inbounds nuw [8 x i8], ptr %i.sk, i64 %i.sg
  %i.sm = load ptr, ptr %i.sl, align 8, !tbaa !1051
  %i.sn = getelementptr inbounds nuw [16 x i8], ptr %i.sm, i64 %i.sj ; 2 uses
  %i.so = load i64, ptr %i.sn, align 8, !tbaa !168 ; 2 uses
  %i.sp = icmp ult i64 %i.so, %.sroa.0442.0.copyload
  br i1 %i.sp, label %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE2EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit144, label %bb.ap

bb.ap:                                            ; preds = %.lr.ph541
  %i.sq = icmp eq i64 %i.so, %.sroa.0442.0.copyload
  br i1 %i.sq, label %bb.aq, label %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE2EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit144

bb.aq:                                            ; preds = %bb.ap
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sn, i64 8
  %.val.val.i.i.i142 = load i64, ptr %i.sr, align 8, !tbaa !168
  %i.ss = icmp ult i64 %.val.val.i.i.i142, %.sroa.25.0.copyload
  %i.st = zext i1 %i.ss to i64
  br label %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE2EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit144

_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE2EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit144: ; preds = %.lr.ph541, %bb.ap, %bb.aq
  %i.su = phi i64 [ 1, %.lr.ph541 ], [ 0, %bb.ap ], [ %i.st, %bb.aq ]
  %i.sv = add i64 %i.su, %.2537                   ; 2 uses
  %i.sw = icmp ult i8 %i.sc, %i.lw
  br i1 %i.sw, label %.lr.ph541, label %.loopexit498, !llvm.loop !3035

.loopexit498:                                     ; preds = %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE2EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit144, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE2EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit140, %.preheader499
  %.3 = phi i64 [ %i.sa, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE2EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit140 ], [ %.0486554, %.preheader499 ], [ %i.sv, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE2EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit144 ] ; 4 uses
  %.sroa.30.6 = phi i64 [ %i.rl, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE2EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit140 ], [ %.sroa.30.3555, %.preheader499 ], [ %i.sg, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE2EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit144 ] ; 5 uses
  %.sroa.76.6 = phi i64 [ %i.ro, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE2EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit140 ], [ %.sroa.76.3556, %.preheader499 ], [ %i.sj, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE2EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit144 ] ; 4 uses
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %.3, i64 %.3491) ; 5 uses
  store ptr %i.c, ptr %3, align 8, !tbaa !1268
  store i64 %.sroa.5247.0550, ptr %i.eb, align 8, !tbaa !1265
  store i64 %.sroa.9249.0549, ptr %i.ec, align 8, !tbaa !1267
  store ptr %i.m, ptr %4, align 8, !tbaa !1268
  store i64 %.sroa.5.0552, ptr %i.ed, align 8, !tbaa !1265
  store i64 %.sroa.9.0551, ptr %i.ee, align 8, !tbaa !1267
  %i.sx = getelementptr inbounds nuw i8, ptr %i.dr, i64 %.068559
  %i.sy = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.067560
  %i.sz = icmp eq i64 %.3491, %.3
  call void @_ZN14duckdb_pdqsort14pdqsort_detail12swap_offsetsIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE2EEEEEEEvT_SC_PhSD_mb(ptr noundef nonnull dead_on_return %3, ptr noundef nonnull dead_on_return %4, ptr noundef %i.sx, ptr noundef %i.sy, i64 noundef %.sroa.speculated, i1 noundef zeroext %i.sz)
  %i.ta = sub i64 %.3491, %.sroa.speculated       ; 3 uses
  %i.tb = sub i64 %.3, %.sroa.speculated          ; 4 uses
  %i.tc = add i64 %.sroa.speculated, %.068559
  %i.td = add i64 %.sroa.speculated, %.067560
  %.not495 = icmp ugt i64 %.3491, %.3             ; 3 uses
  %.sroa.9249.1 = select i1 %.not495, i64 %.sroa.9249.0549, i64 %.sroa.78.4 ; 2 uses
  %.sroa.5247.1 = select i1 %.not495, i64 %.sroa.5247.0550, i64 %.sroa.31.4 ; 3 uses
  %.169 = select i1 %.not495, i64 %i.tc, i64 0    ; 2 uses
  %i.te = icmp eq i64 %i.tb, 0                    ; 3 uses
  %.sroa.9.1 = select i1 %i.te, i64 %.sroa.76.6, i64 %.sroa.9.0551 ; 2 uses
  %.sroa.5.1 = select i1 %i.te, i64 %.sroa.30.6, i64 %.sroa.5.0552 ; 3 uses
  %.1 = select i1 %i.te, i64 0, i64 %i.td         ; 2 uses
  %i.tf = icmp eq i64 %.sroa.31.4, %.sroa.30.6
  %i.tg = icmp ult i64 %.sroa.78.4, %.sroa.76.6
  %i.th = icmp ult i64 %.sroa.31.4, %.sroa.30.6
  %i.ti = select i1 %i.tf, i1 %i.tg, i1 %i.th
  br i1 %i.ti, label %bb.g, label %._crit_edge, !llvm.loop !3036

._crit_edge:                                      ; preds = %.loopexit498
  %.not = icmp eq i64 %i.ta, 0
  br i1 %.not, label %.loopexit497, label %bb.ar

bb.ar:                                            ; preds = %._crit_edge
  %i.tj = getelementptr inbounds nuw i8, ptr %i.dr, i64 %.169
  %i.tk = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.tl = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEplERKm.exit
  %.in = phi i64 [ %i.ta, %bb.ar ], [ %i.tm, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEplERKm.exit ]
  %.sroa.76.7575 = phi i64 [ %.sroa.76.6, %bb.ar ], [ %i.uh, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEplERKm.exit ] ; 2 uses
  %.sroa.30.7574 = phi i64 [ %.sroa.30.6, %bb.ar ], [ %i.ue, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEplERKm.exit ]
  %i.tm = add i64 %.in, -1                        ; 3 uses
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tj, i64 %i.tm
  %i.to = load i8, ptr %i.tn, align 1, !tbaa !527
  %i.tp = zext i8 %i.to to i64
  %i.tq = add i64 %.sroa.9249.1, %i.tp            ; 3 uses
  %i.tr = load i64, ptr %i.r, align 8, !tbaa !168, !noalias !3037 ; 3 uses
  %.not.i.i145 = icmp ult i64 %i.tq, %i.tr
  br i1 %.not.i.i145, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEplERKm.exit, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ts = mul i64 %i.tr, %.sroa.5247.1
  %i.tt = add i64 %i.ts, %i.tq                    ; 2 uses
  %i.tu = zext i64 %i.tt to i128
  %i.tv = load i64, ptr %i.tl, align 8, !tbaa !1232, !noalias !3037
  %i.tw = zext i64 %i.tv to i128
  %i.tx = mul nuw i128 %i.tw, %i.tu
  %i.ty = lshr i128 %i.tx, 64
  %i.tz = trunc nuw i128 %i.ty to i64             ; 2 uses
  %i.ua = mul i64 %i.tr, %i.tz
  %i.ub = sub i64 %i.tt, %i.ua
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEplERKm.exit

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEplERKm.exit: ; preds = %bb.as, %bb.at
  %.05.i146 = phi i64 [ %.sroa.5247.1, %bb.as ], [ %i.tz, %bb.at ]
  %.0.i147 = phi i64 [ %i.tq, %bb.as ], [ %i.ub, %bb.at ]
  %i.uc = add i64 %.sroa.76.7575, -1
  %i.ud = icmp eq i64 %.sroa.76.7575, 0           ; 2 uses
  %.neg.i.i148 = sext i1 %i.ud to i64
  %i.ue = add i64 %.sroa.30.7574, %.neg.i.i148    ; 3 uses
  %i.uf = load i64, ptr %i.tk, align 8, !tbaa !168
  %i.ug = select i1 %i.ud, i64 %i.uf, i64 0
  %i.uh = add i64 %i.uc, %i.ug                    ; 3 uses
  %i.ui = load ptr, ptr %i.f, align 8, !tbaa !1246
  %i.uj = getelementptr inbounds nuw [8 x i8], ptr %i.ui, i64 %.05.i146
  %i.uk = load ptr, ptr %i.uj, align 8, !tbaa !1051
  %i.ul = getelementptr inbounds nuw [16 x i8], ptr %i.uk, i64 %.0.i147 ; 2 uses
  %i.um = load ptr, ptr %i.dd, align 8, !tbaa !1246
  %i.un = getelementptr inbounds nuw [8 x i8], ptr %i.um, i64 %i.ue
  %i.uo = load ptr, ptr %i.un, align 8, !tbaa !1051
  %i.up = getelementptr inbounds nuw [16 x i8], ptr %i.uo, i64 %i.uh ; 2 uses
  %.sroa.0750.0.copyload = load <2 x i64>, ptr %i.ul, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ul, ptr noundef nonnull align 8 dereferenceable(16) %i.up, i64 16, i1 false)
  store <2 x i64> %.sroa.0750.0.copyload, ptr %i.up, align 8
  %.not72 = icmp eq i64 %i.tm, 0
  br i1 %.not72, label %.loopexit497, label %bb.as, !llvm.loop !3040

.loopexit497:                                     ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEplERKm.exit, %._crit_edge
  %.sroa.31.5 = phi i64 [ %.sroa.31.4, %._crit_edge ], [ %i.ue, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEplERKm.exit ] ; 2 uses
  %.sroa.78.5 = phi i64 [ %.sroa.78.4, %._crit_edge ], [ %i.uh, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEplERKm.exit ] ; 2 uses
  %.not73 = icmp eq i64 %i.tb, 0
  br i1 %.not73, label %.loopexit497..loopexit_crit_edge, label %bb.au

.loopexit497..loopexit_crit_edge:                 ; preds = %bb.f, %.loopexit497
  %.sroa.78.5670 = phi i64 [ %.sroa.78.5, %.loopexit497 ], [ %i.dn, %bb.f ]
  %.sroa.31.5669 = phi i64 [ %.sroa.31.5, %.loopexit497 ], [ %i.dm, %bb.f ]
  %.pre.pre = load i64, ptr %i.r, align 8, !tbaa !168, !noalias !3041
  br label %.loopexit

bb.au:                                            ; preds = %.loopexit497
  %i.uq = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.1
  %i.ur = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.us = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEmiERKm.exit152
  %.in580 = phi i64 [ %i.tb, %bb.au ], [ %i.ut, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEmiERKm.exit152 ]
  %.sroa.78.6577 = phi i64 [ %.sroa.78.5, %bb.au ], [ %i.vw, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEmiERKm.exit152 ] ; 2 uses
  %.sroa.31.6576 = phi i64 [ %.sroa.31.5, %bb.au ], [ %i.vv, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEmiERKm.exit152 ] ; 2 uses
  %i.ut = add i64 %.in580, -1                     ; 3 uses
  %i.uu = getelementptr inbounds nuw i8, ptr %i.uq, i64 %i.ut
  %i.uv = load i8, ptr %i.uu, align 1, !tbaa !527
  %i.uw = zext i8 %i.uv to i64
  %i.ux = sub i64 %.sroa.9.1, %i.uw               ; 3 uses
  %i.uy = load i64, ptr %i.ur, align 8, !tbaa !168, !noalias !3044 ; 3 uses
  %.not.i.i149 = icmp ult i64 %i.ux, %i.uy
  br i1 %.not.i.i149, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEmiERKm.exit152, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.uz = mul i64 %i.uy, %.sroa.5.1
  %i.va = add i64 %i.uz, %i.ux                    ; 2 uses
  %i.vb = zext i64 %i.va to i128
  %i.vc = load i64, ptr %i.us, align 8, !tbaa !1232, !noalias !3044
  %i.vd = zext i64 %i.vc to i128
  %i.ve = mul nuw i128 %i.vd, %i.vb
  %i.vf = lshr i128 %i.ve, 64
  %i.vg = trunc nuw i128 %i.vf to i64             ; 2 uses
  %i.vh = mul i64 %i.uy, %i.vg
  %i.vi = sub i64 %i.va, %i.vh
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEmiERKm.exit152

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEmiERKm.exit152: ; preds = %bb.av, %bb.aw
  %.05.i150 = phi i64 [ %.sroa.5.1, %bb.av ], [ %i.vg, %bb.aw ]
  %.0.i151 = phi i64 [ %i.ux, %bb.av ], [ %i.vi, %bb.aw ]
  %i.vj = load ptr, ptr %i.dd, align 8, !tbaa !1246
  %i.vk = getelementptr inbounds nuw [8 x i8], ptr %i.vj, i64 %.05.i150
  %i.vl = load ptr, ptr %i.vk, align 8, !tbaa !1051
  %i.vm = getelementptr inbounds nuw [16 x i8], ptr %i.vl, i64 %.0.i151 ; 2 uses
  %i.vn = load ptr, ptr %i.f, align 8, !tbaa !1246
  %i.vo = getelementptr inbounds nuw [8 x i8], ptr %i.vn, i64 %.sroa.31.6576
  %i.vp = load ptr, ptr %i.vo, align 8, !tbaa !1051
  %i.vq = getelementptr inbounds nuw [16 x i8], ptr %i.vp, i64 %.sroa.78.6577 ; 2 uses
  %.sroa.0752.0.copyload = load <2 x i64>, ptr %i.vm, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.vm, ptr noundef nonnull align 8 dereferenceable(16) %i.vq, i64 16, i1 false)
  store <2 x i64> %.sroa.0752.0.copyload, ptr %i.vq, align 8
  %i.vr = add i64 %.sroa.78.6577, 1               ; 2 uses
  %i.vs = load i64, ptr %i.r, align 8, !tbaa !168 ; 2 uses
  %i.vt = icmp eq i64 %i.vr, %i.vs                ; 2 uses
  %i.vu = zext i1 %i.vt to i64
  %i.vv = add i64 %.sroa.31.6576, %i.vu           ; 2 uses
  %i.vw = select i1 %i.vt, i64 0, i64 %i.vr       ; 2 uses
  %.not74 = icmp eq i64 %i.ut, 0
  br i1 %.not74, label %.loopexit, label %bb.av, !llvm.loop !3047

.loopexit:                                        ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEmiERKm.exit152, %.loopexit497..loopexit_crit_edge
  %.pre = phi i64 [ %.pre.pre, %.loopexit497..loopexit_crit_edge ], [ %i.vs, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEmiERKm.exit152 ]
  %.sroa.31.7 = phi i64 [ %.sroa.31.5669, %.loopexit497..loopexit_crit_edge ], [ %i.vv, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEmiERKm.exit152 ]
  %.sroa.78.7 = phi i64 [ %.sroa.78.5670, %.loopexit497..loopexit_crit_edge ], [ %i.vw, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEmiERKm.exit152 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %.pre607 = add i64 %.sroa.78.7, -1
  br label %bb.ax

bb.ax:                                            ; preds = %.loopexit, %.critedge
  %.pre-phi = phi i64 [ %.pre607, %.loopexit ], [ %i.ag, %.critedge ] ; 3 uses
  %i.vx = phi i64 [ %.pre, %.loopexit ], [ %i.s, %.critedge ] ; 3 uses
  %.sroa.31.8 = phi i64 [ %.sroa.31.7, %.loopexit ], [ %i.w, %.critedge ] ; 2 uses
  %.not.i.i153 = icmp ult i64 %.pre-phi, %i.vx
  br i1 %.not.i.i153, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEmiERKm.exit156, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.vy = mul i64 %i.vx, %.sroa.31.8
  %i.vz = add i64 %i.vy, %.pre-phi                ; 2 uses
  %i.wa = zext i64 %i.vz to i128
  %i.wb = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.wc = load i64, ptr %i.wb, align 8, !tbaa !1232, !noalias !3041
  %i.wd = zext i64 %i.wc to i128
  %i.we = mul nuw i128 %i.wd, %i.wa
  %i.wf = lshr i128 %i.we, 64
  %i.wg = trunc nuw i128 %i.wf to i64             ; 2 uses
  %i.wh = mul i64 %i.vx, %i.wg
  %i.wi = sub i64 %i.vz, %i.wh
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEmiERKm.exit156

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEmiERKm.exit156: ; preds = %bb.ax, %bb.ay
  %.05.i154 = phi i64 [ %.sroa.31.8, %bb.ax ], [ %i.wg, %bb.ay ] ; 3 uses
  %.0.i155 = phi i64 [ %.pre-phi, %bb.ax ], [ %i.wi, %bb.ay ] ; 3 uses
  %i.wj = zext i1 %i.dc to i8
  %i.wk = load ptr, ptr %i.f, align 8, !tbaa !1246
  %i.wl = getelementptr inbounds nuw [8 x i8], ptr %i.wk, i64 %.05.i154
  %i.wm = load ptr, ptr %i.wl, align 8, !tbaa !1051
  %i.wn = getelementptr inbounds nuw [16 x i8], ptr %i.wm, i64 %.0.i155
  %i.wo = load ptr, ptr %1, align 8, !tbaa !1268
  %i.wp = getelementptr inbounds nuw i8, ptr %i.wo, i64 8
  %i.wq = load i64, ptr %i.d, align 8, !tbaa !168
  %i.wr = load ptr, ptr %i.wp, align 8, !tbaa !1246
  %i.ws = getelementptr inbounds nuw [8 x i8], ptr %i.wr, i64 %i.wq
  %i.wt = load ptr, ptr %i.ws, align 8, !tbaa !1051
  %i.wu = load i64, ptr %i.e, align 8, !tbaa !168
  %i.wv = getelementptr inbounds nuw [16 x i8], ptr %i.wt, i64 %i.wu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.wv, ptr noundef nonnull align 8 dereferenceable(16) %i.wn, i64 16, i1 false)
  %i.ww = load ptr, ptr %i.f, align 8, !tbaa !1246
  %i.wx = getelementptr inbounds nuw [8 x i8], ptr %i.ww, i64 %.05.i154
  %i.wy = load ptr, ptr %i.wx, align 8, !tbaa !1051
  %i.wz = getelementptr inbounds nuw [16 x i8], ptr %i.wy, i64 %.0.i155 ; 2 uses
  store i64 %.sroa.0442.0.copyload, ptr %i.wz, align 8
  %.sroa.25.0..sroa_idx464 = getelementptr inbounds nuw i8, ptr %i.wz, i64 8
  store i64 %.sroa.25.0.copyload, ptr %.sroa.25.0..sroa_idx464, align 8
  store ptr %i.c, ptr %0, align 8, !tbaa !1268, !alias.scope !3048
  %i.xa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.05.i154, ptr %i.xa, align 8, !tbaa !1265, !alias.scope !3048
end_hunk_7
begin_hunk_8_@_ZNSt3_V28__rotateIN6duckdb16block_iterator_tIKNS1_18BlockIteratorStateILNS1_22BlockIteratorStateTypeE0EEENS1_7SortKeyILNS1_11SortKeyTypeE2EEEEEEET_SB_SB_SB_St26random_access_iterator_tag:bb.a
  %i.cl = sub i64 %.0220, %.0221                  ; 6 uses
  %i.cm = icmp ult i64 %.0221, %i.cl
  br i1 %i.cm, label %bb.j, label %bb.t

bb.j:                                             ; preds = %bb.i
  %i.cn = icmp eq i64 %.0221, 1
  br i1 %i.cn, label %bb.k, label %bb.p

bb.k:                                             ; preds = %bb.j
  %i.co = load ptr, ptr %i.ck, align 8, !tbaa !1246
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %.sroa.19.0
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !1051
  %i.cr = getelementptr inbounds nuw [16 x i8], ptr %i.cq, i64 %.sroa.39.0
  %.sroa.0333.0.copyload = load <2 x i64>, ptr %i.cr, align 8
  %i.cs = add i64 %.sroa.39.0, 1                  ; 3 uses
  %i.ct = load i64, ptr %i.ae, align 8, !tbaa !168, !noalias !3142 ; 8 uses
  %.not.i.i17 = icmp ult i64 %i.cs, %i.ct
  br i1 %.not.i.i17, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEplERKm.exit20, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cu = mul i64 %i.ct, %.sroa.19.0
  %i.cv = add i64 %i.cu, %i.cs                    ; 2 uses
  %i.cw = zext i64 %i.cv to i128
  %i.cx = load i64, ptr %i.cj, align 8, !tbaa !1232, !noalias !3142
  %i.cy = zext i64 %i.cx to i128
  %i.cz = mul nuw i128 %i.cy, %i.cw
  %i.da = lshr i128 %i.cz, 64
  %i.db = trunc nuw i128 %i.da to i64             ; 2 uses
  %i.dc = mul i64 %i.ct, %i.db
  %i.dd = sub i64 %i.cv, %i.dc
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEplERKm.exit20

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEplERKm.exit20: ; preds = %bb.k, %bb.l
  %.05.i18 = phi i64 [ %.sroa.19.0, %bb.k ], [ %i.db, %bb.l ] ; 2 uses
  %.0.i19 = phi i64 [ %i.cs, %bb.k ], [ %i.dd, %bb.l ] ; 2 uses
  %i.de = add i64 %.0220, %.sroa.39.0             ; 6 uses
  %.not.i.i21 = icmp ult i64 %i.de, %i.ct
  br i1 %.not.i.i21, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEplERKm.exit24, label %bb.m

bb.m:                                             ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEplERKm.exit20
  %i.df = mul i64 %i.ct, %.sroa.19.0
  %i.dg = add i64 %i.df, %i.de                    ; 2 uses
  %i.dh = zext i64 %i.dg to i128
  %i.di = load i64, ptr %i.cj, align 8, !tbaa !1232, !noalias !3145
  %i.dj = zext i64 %i.di to i128
  %i.dk = mul nuw i128 %i.dj, %i.dh
  %i.dl = lshr i128 %i.dk, 64
  %i.dm = trunc nuw i128 %i.dl to i64             ; 2 uses
  %i.dn = mul i64 %i.ct, %i.dm
  %i.do = sub i64 %i.dg, %i.dn
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEplERKm.exit24

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEplERKm.exit24: ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEplERKm.exit20, %bb.m
  %.05.i22 = phi i64 [ %.sroa.19.0, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEplERKm.exit20 ], [ %i.dm, %bb.m ]
  %.0.i23 = phi i64 [ %i.de, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEplERKm.exit20 ], [ %i.do, %bb.m ]
  %reass.add226 = sub i64 %.05.i22, %.05.i18
  %reass.mul227 = mul i64 %reass.add226, %i.ct
  %i.dp = sub i64 %.0.i23, %.0.i19
  %i.dq = add i64 %i.dp, %reass.mul227            ; 2 uses
  %.not4.i.i.i.i.i = icmp eq i64 %i.dq, 0
  br i1 %.not4.i.i.i.i.i, label %_ZSt4moveIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE2EEEEES9_ET0_T_SB_SA_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEplERKm.exit24, %.lr.ph.i.i.i.i.i
  %.sroa.38.0.i.i.i.i = phi i64 [ %i.ec, %.lr.ph.i.i.i.i.i ], [ %.05.i18, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEplERKm.exit24 ] ; 2 uses
  %.sroa.8.0.i.i.i.i = phi i64 [ %i.ei, %.lr.ph.i.i.i.i.i ], [ %.sroa.39.0, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEplERKm.exit24 ] ; 2 uses
  %.sroa.3.0.i.i.i.i = phi i64 [ %i.eh, %.lr.ph.i.i.i.i.i ], [ %.sroa.19.0, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEplERKm.exit24 ] ; 2 uses
  %.sroa.811.0.i.i.i.i = phi i64 [ %i.ed, %.lr.ph.i.i.i.i.i ], [ %.0.i19, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEplERKm.exit24 ] ; 2 uses
  %.05.i.i.i.i.i = phi i64 [ %i.ej, %.lr.ph.i.i.i.i.i ], [ %i.dq, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEplERKm.exit24 ]
  %i.dr = load ptr, ptr %i.ck, align 8, !tbaa !1246, !noalias !3148 ; 2 uses
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %.sroa.38.0.i.i.i.i
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !1051, !noalias !3148
  %i.du = getelementptr inbounds nuw [16 x i8], ptr %i.dt, i64 %.sroa.811.0.i.i.i.i
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %.sroa.3.0.i.i.i.i
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !1051, !noalias !3148
  %i.dx = getelementptr inbounds nuw [16 x i8], ptr %i.dw, i64 %.sroa.8.0.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dx, ptr noundef nonnull align 8 dereferenceable(16) %i.du, i64 16, i1 false), !noalias !3148
  %i.dy = add i64 %.sroa.811.0.i.i.i.i, 1         ; 2 uses
  %i.dz = load i64, ptr %i.ae, align 8, !tbaa !168, !noalias !3148 ; 3 uses
  %i.ea = icmp eq i64 %i.dy, %i.dz                ; 2 uses
  %i.eb = zext i1 %i.ea to i64
  %i.ec = add i64 %.sroa.38.0.i.i.i.i, %i.eb
  %i.ed = select i1 %i.ea, i64 0, i64 %i.dy
  %i.ee = add i64 %.sroa.8.0.i.i.i.i, 1           ; 2 uses
  %i.ef = icmp eq i64 %i.ee, %i.dz                ; 2 uses
  %i.eg = zext i1 %i.ef to i64
  %i.eh = add i64 %.sroa.3.0.i.i.i.i, %i.eg
  %i.ei = select i1 %i.ef, i64 0, i64 %i.ee
  %i.ej = add i64 %.05.i.i.i.i.i, -1              ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.ej, 0
  br i1 %.not.i.i.i.i.i, label %_ZSt4moveIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE2EEEEES9_ET0_T_SB_SA_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !3159

_ZSt4moveIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE2EEEEES9_ET0_T_SB_SA_.exit: ; preds = %.lr.ph.i.i.i.i.i, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEplERKm.exit24
  %i.ek = phi i64 [ %i.ct, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEplERKm.exit24 ], [ %i.dz, %.lr.ph.i.i.i.i.i ] ; 6 uses
  %.not.i.i25 = icmp ult i64 %i.de, %i.ek
  br i1 %.not.i.i25, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEplERKm.exit28, label %bb.n

bb.n:                                             ; preds = %_ZSt4moveIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE2EEEEES9_ET0_T_SB_SA_.exit
  %i.el = mul i64 %i.ek, %.sroa.19.0
  %i.em = add i64 %i.el, %i.de                    ; 2 uses
  %i.en = zext i64 %i.em to i128
  %i.eo = load i64, ptr %i.cj, align 8, !tbaa !1232, !noalias !3160
  %i.ep = zext i64 %i.eo to i128
  %i.eq = mul nuw i128 %i.ep, %i.en
  %i.er = lshr i128 %i.eq, 64
  %i.es = trunc nuw i128 %i.er to i64             ; 2 uses
  %i.et = mul i64 %i.ek, %i.es
  %i.eu = sub i64 %i.em, %i.et
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEplERKm.exit28

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEplERKm.exit28: ; preds = %_ZSt4moveIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE2EEEEES9_ET0_T_SB_SA_.exit, %bb.n
  %.05.i26 = phi i64 [ %.sroa.19.0, %_ZSt4moveIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE2EEEEES9_ET0_T_SB_SA_.exit ], [ %i.es, %bb.n ] ; 2 uses
  %.0.i27 = phi i64 [ %i.de, %_ZSt4moveIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE2EEEEES9_ET0_T_SB_SA_.exit ], [ %i.eu, %bb.n ]
  %i.ev = add i64 %.0.i27, -1                     ; 3 uses
  %.not.i.i29 = icmp ult i64 %i.ev, %i.ek
  br i1 %.not.i.i29, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEmiERKm.exit, label %bb.o

bb.o:                                             ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEplERKm.exit28
  %i.ew = mul i64 %.05.i26, %i.ek
  %i.ex = add i64 %i.ev, %i.ew                    ; 2 uses
  %i.ey = zext i64 %i.ex to i128
  %i.ez = load i64, ptr %i.cj, align 8, !tbaa !1232, !noalias !3163
  %i.fa = zext i64 %i.ez to i128
  %i.fb = mul nuw i128 %i.fa, %i.ey
  %i.fc = lshr i128 %i.fb, 64
  %i.fd = trunc nuw i128 %i.fc to i64             ; 2 uses
  %i.fe = mul i64 %i.ek, %i.fd
  %i.ff = sub i64 %i.ex, %i.fe
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEmiERKm.exit

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEmiERKm.exit: ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEplERKm.exit28, %bb.o
  %.05.i30 = phi i64 [ %.05.i26, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEplERKm.exit28 ], [ %i.fd, %bb.o ]
  %.0.i31 = phi i64 [ %i.ev, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEplERKm.exit28 ], [ %i.ff, %bb.o ]
  %i.fg = load ptr, ptr %i.ck, align 8, !tbaa !1246
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %.05.i30
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !1051
  %i.fj = getelementptr inbounds nuw [16 x i8], ptr %i.fi, i64 %.0.i31
  store <2 x i64> %.sroa.0333.0.copyload, ptr %i.fj, align 8
  br label %.critedge

bb.p:                                             ; preds = %bb.j
  %i.fk = add i64 %.0221, %.sroa.39.0             ; 3 uses
  %i.fl = load i64, ptr %i.ae, align 8, !tbaa !168, !noalias !3166 ; 3 uses
  %.not.i.i32 = icmp ult i64 %i.fk, %i.fl
  br i1 %.not.i.i32, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEplERKm.exit35.preheader, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.fm = mul i64 %i.fl, %.sroa.19.0
  %i.fn = add i64 %i.fm, %i.fk                    ; 2 uses
  %i.fo = zext i64 %i.fn to i128
  %i.fp = load i64, ptr %i.cj, align 8, !tbaa !1232, !noalias !3166
  %i.fq = zext i64 %i.fp to i128
  %i.fr = mul nuw i128 %i.fq, %i.fo
  %i.fs = lshr i128 %i.fr, 64
  %i.ft = trunc nuw i128 %i.fs to i64             ; 2 uses
  %i.fu = mul i64 %i.fl, %i.ft
  %i.fv = sub i64 %i.fn, %i.fu
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEplERKm.exit35.preheader

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEplERKm.exit35.preheader: ; preds = %bb.p, %bb.q
  %.sroa.6109.0241.ph = phi i64 [ %i.ft, %bb.q ], [ %.sroa.19.0, %bb.p ]
  %.sroa.10.0240.ph = phi i64 [ %i.fv, %bb.q ], [ %i.fk, %bb.p ]
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEplERKm.exit35

bb.r:                                             ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEplERKm.exit35
  %i.fw = urem i64 %.0220, %.0221                 ; 2 uses
  %.not11 = icmp eq i64 %i.fw, 0
  br i1 %.not11, label %.critedge, label %bb.s

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEplERKm.exit35: ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEplERKm.exit35.preheader, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEplERKm.exit35
  %.07244 = phi i64 [ %i.gp, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEplERKm.exit35 ], [ 0, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEplERKm.exit35.preheader ]
  %.sroa.39.1243 = phi i64 [ %i.gj, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEplERKm.exit35 ], [ %.sroa.39.0, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEplERKm.exit35.preheader ] ; 2 uses
  %.sroa.19.1242 = phi i64 [ %i.gi, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEplERKm.exit35 ], [ %.sroa.19.0, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEplERKm.exit35.preheader ] ; 2 uses
  %.sroa.6109.0241 = phi i64 [ %i.gn, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEplERKm.exit35 ], [ %.sroa.6109.0241.ph, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEplERKm.exit35.preheader ] ; 2 uses
  %.sroa.10.0240 = phi i64 [ %i.go, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEplERKm.exit35 ], [ %.sroa.10.0240.ph, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEplERKm.exit35.preheader ] ; 2 uses
  %i.fx = load ptr, ptr %i.ck, align 8, !tbaa !1246 ; 2 uses
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %.sroa.19.1242
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !1051
  %i.ga = getelementptr inbounds nuw [16 x i8], ptr %i.fz, i64 %.sroa.39.1243 ; 2 uses
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %.sroa.6109.0241
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !1051
  %i.gd = getelementptr inbounds nuw [16 x i8], ptr %i.gc, i64 %.sroa.10.0240 ; 2 uses
  %.sroa.0337.0.copyload = load <2 x i64>, ptr %i.ga, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ga, ptr noundef nonnull align 8 dereferenceable(16) %i.gd, i64 16, i1 false)
  store <2 x i64> %.sroa.0337.0.copyload, ptr %i.gd, align 8
  %i.ge = add i64 %.sroa.39.1243, 1               ; 2 uses
  %i.gf = load i64, ptr %i.ae, align 8, !tbaa !168 ; 2 uses
  %i.gg = icmp eq i64 %i.ge, %i.gf                ; 2 uses
  %i.gh = zext i1 %i.gg to i64
  %i.gi = add i64 %.sroa.19.1242, %i.gh           ; 2 uses
  %i.gj = select i1 %i.gg, i64 0, i64 %i.ge       ; 2 uses
  %i.gk = add i64 %.sroa.10.0240, 1               ; 2 uses
  %i.gl = icmp eq i64 %i.gk, %i.gf                ; 2 uses
  %i.gm = zext i1 %i.gl to i64
  %i.gn = add i64 %.sroa.6109.0241, %i.gm
  %i.go = select i1 %i.gl, i64 0, i64 %i.gk
  %i.gp = add nuw i64 %.07244, 1                  ; 2 uses
  %exitcond255.not = icmp eq i64 %i.gp, %i.cl
  br i1 %exitcond255.not, label %bb.r, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEplERKm.exit35, !llvm.loop !3169

bb.s:                                             ; preds = %bb.r
  %i.gq = sub i64 %.0221, %i.fw
  br label %.backedge

bb.t:                                             ; preds = %bb.i
  %i.gr = icmp eq i64 %i.cl, 1
  br i1 %i.gr, label %bb.u, label %bb.aa

bb.u:                                             ; preds = %bb.t
  %i.gs = add i64 %.0220, %.sroa.39.0             ; 7 uses
  %i.gt = load i64, ptr %i.ae, align 8, !tbaa !168, !noalias !3170 ; 14 uses
  %.not.i.i36 = icmp ult i64 %i.gs, %i.gt         ; 3 uses
  br i1 %.not.i.i36, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEplERKm.exit39, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.gu = mul i64 %i.gt, %.sroa.19.0
  %i.gv = add i64 %i.gu, %i.gs                    ; 2 uses
  %i.gw = zext i64 %i.gv to i128
  %i.gx = load i64, ptr %i.cj, align 8, !tbaa !1232, !noalias !3170
  %i.gy = zext i64 %i.gx to i128
  %i.gz = mul nuw i128 %i.gy, %i.gw
  %i.ha = lshr i128 %i.gz, 64
  %i.hb = trunc nuw i128 %i.ha to i64             ; 2 uses
  %i.hc = mul i64 %i.gt, %i.hb
  %i.hd = sub i64 %i.gv, %i.hc
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEplERKm.exit39

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEplERKm.exit39: ; preds = %bb.u, %bb.v
  %.05.i37 = phi i64 [ %.sroa.19.0, %bb.u ], [ %i.hb, %bb.v ] ; 2 uses
  %.0.i38 = phi i64 [ %i.gs, %bb.u ], [ %i.hd, %bb.v ]
  %i.he = add i64 %.0.i38, -1                     ; 3 uses
  %.not.i.i40 = icmp ult i64 %i.he, %i.gt
  br i1 %.not.i.i40, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEmiERKm.exit43, label %bb.w

bb.w:                                             ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEplERKm.exit39
  %i.hf = mul i64 %.05.i37, %i.gt
  %i.hg = add i64 %i.he, %i.hf                    ; 2 uses
  %i.hh = zext i64 %i.hg to i128
  %i.hi = load i64, ptr %i.cj, align 8, !tbaa !1232, !noalias !3173
  %i.hj = zext i64 %i.hi to i128
  %i.hk = mul nuw i128 %i.hj, %i.hh
  %i.hl = lshr i128 %i.hk, 64
  %i.hm = trunc nuw i128 %i.hl to i64             ; 2 uses
  %i.hn = mul i64 %i.gt, %i.hm
  %i.ho = sub i64 %i.hg, %i.hn
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEmiERKm.exit43

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEmiERKm.exit43: ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEplERKm.exit39, %bb.w
  %.05.i41 = phi i64 [ %.05.i37, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEplERKm.exit39 ], [ %i.hm, %bb.w ]
  %.0.i42 = phi i64 [ %i.he, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEplERKm.exit39 ], [ %i.ho, %bb.w ]
  %i.hp = load ptr, ptr %i.ck, align 8, !tbaa !1246 ; 2 uses
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.hp, i64 %.05.i41
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !1051
  %i.hs = getelementptr inbounds nuw [16 x i8], ptr %i.hr, i64 %.0.i42
  %.sroa.0.0.copyload = load <2 x i64>, ptr %i.hs, align 8
  br i1 %.not.i.i36, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEplERKm.exit47, label %bb.x

bb.x:                                             ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEmiERKm.exit43
  %i.ht = mul i64 %i.gt, %.sroa.19.0
  %i.hu = add i64 %i.ht, %i.gs                    ; 2 uses
  %i.hv = zext i64 %i.hu to i128
  %i.hw = load i64, ptr %i.cj, align 8, !tbaa !1232, !noalias !3176
  %i.hx = zext i64 %i.hw to i128
  %i.hy = mul nuw i128 %i.hx, %i.hv
  %i.hz = lshr i128 %i.hy, 64
  %i.ia = trunc nuw i128 %i.hz to i64             ; 2 uses
  %i.ib = mul i64 %i.gt, %i.ia
  %i.ic = sub i64 %i.hu, %i.ib
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEplERKm.exit47

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEplERKm.exit47: ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEmiERKm.exit43, %bb.x
  %.05.i45 = phi i64 [ %.sroa.19.0, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEmiERKm.exit43 ], [ %i.ia, %bb.x ] ; 2 uses
  %.0.i46 = phi i64 [ %i.gs, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEmiERKm.exit43 ], [ %i.ic, %bb.x ]
  %i.id = add i64 %.0.i46, -1                     ; 3 uses
  %.not.i.i48 = icmp ult i64 %i.id, %i.gt
  br i1 %.not.i.i48, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEmiERKm.exit51, label %bb.y

bb.y:                                             ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEplERKm.exit47
  %i.ie = mul i64 %.05.i45, %i.gt
  %i.if = add i64 %i.id, %i.ie                    ; 2 uses
  %i.ig = zext i64 %i.if to i128
  %i.ih = load i64, ptr %i.cj, align 8, !tbaa !1232, !noalias !3179
  %i.ii = zext i64 %i.ih to i128
  %i.ij = mul nuw i128 %i.ii, %i.ig
  %i.ik = lshr i128 %i.ij, 64
  %i.il = trunc nuw i128 %i.ik to i64             ; 2 uses
  %i.im = mul i64 %i.gt, %i.il
  %i.in = sub i64 %i.if, %i.im
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEmiERKm.exit51

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEmiERKm.exit51: ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEplERKm.exit47, %bb.y
  %.05.i49 = phi i64 [ %.05.i45, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEplERKm.exit47 ], [ %i.il, %bb.y ] ; 2 uses
  %.0.i50 = phi i64 [ %i.id, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEplERKm.exit47 ], [ %i.in, %bb.y ] ; 2 uses
  br i1 %.not.i.i36, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEplERKm.exit55, label %bb.z

bb.z:                                             ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEmiERKm.exit51
  %i.io = mul i64 %i.gt, %.sroa.19.0
  %i.ip = add i64 %i.io, %i.gs                    ; 2 uses
  %i.iq = zext i64 %i.ip to i128
  %i.ir = load i64, ptr %i.cj, align 8, !tbaa !1232, !noalias !3182
  %i.is = zext i64 %i.ir to i128
  %i.it = mul nuw i128 %i.is, %i.iq
  %i.iu = lshr i128 %i.it, 64
  %i.iv = trunc nuw i128 %i.iu to i64             ; 2 uses
  %i.iw = mul i64 %i.gt, %i.iv
  %i.ix = sub i64 %i.ip, %i.iw
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEplERKm.exit55

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEplERKm.exit55: ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEmiERKm.exit51, %bb.z
  %.05.i53 = phi i64 [ %.sroa.19.0, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEmiERKm.exit51 ], [ %i.iv, %bb.z ]
  %.0.i54 = phi i64 [ %i.gs, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEmiERKm.exit51 ], [ %i.ix, %bb.z ]
  %reass.add = sub i64 %.05.i49, %.sroa.19.0
  %reass.mul = mul i64 %reass.add, %i.gt
  %i.iy = sub i64 %.0.i50, %.sroa.39.0
  %i.iz = add i64 %i.iy, %reass.mul               ; 2 uses
  %.not5.i.i.i.i.i = icmp eq i64 %i.iz, 0
  br i1 %.not5.i.i.i.i.i, label %_ZSt13move_backwardIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE2EEEEES9_ET0_T_SB_SA_.exit, label %.lr.ph.i.i.i.i.i57

.lr.ph.i.i.i.i.i57:                               ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEplERKm.exit55, %.lr.ph.i.i.i.i.i57
  %.sroa.36.0.i.i.i.i = phi i64 [ %i.jc, %.lr.ph.i.i.i.i.i57 ], [ %.05.i49, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEplERKm.exit55 ]
  %.sroa.7.0.i.i.i.i = phi i64 [ %i.jo, %.lr.ph.i.i.i.i.i57 ], [ %.0.i54, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEplERKm.exit55 ] ; 2 uses
  %.sroa.3.0.i.i.i.i58 = phi i64 [ %i.jm, %.lr.ph.i.i.i.i.i57 ], [ %.05.i53, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEplERKm.exit55 ]
  %.sroa.78.0.i.i.i.i = phi i64 [ %i.jf, %.lr.ph.i.i.i.i.i57 ], [ %.0.i50, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEplERKm.exit55 ] ; 2 uses
  %.06.i.i.i.i.i = phi i64 [ %i.js, %.lr.ph.i.i.i.i.i57 ], [ %i.iz, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEplERKm.exit55 ]
  %i.ja = add i64 %.sroa.78.0.i.i.i.i, -1
  %i.jb = icmp eq i64 %.sroa.78.0.i.i.i.i, 0      ; 2 uses
  %.neg.i.i.i.i.i.i.i = sext i1 %i.jb to i64
  %i.jc = add i64 %.sroa.36.0.i.i.i.i, %.neg.i.i.i.i.i.i.i ; 2 uses
  %i.jd = load i64, ptr %i.ae, align 8, !tbaa !168, !noalias !3185 ; 2 uses
  %i.je = select i1 %i.jb, i64 %i.jd, i64 0
  %i.jf = add i64 %i.ja, %i.je                    ; 2 uses
  %i.jg = load ptr, ptr %i.ck, align 8, !tbaa !1246, !noalias !3185 ; 2 uses
  %i.jh = getelementptr inbounds nuw [8 x i8], ptr %i.jg, i64 %i.jc
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !1051, !noalias !3185
  %i.jj = getelementptr inbounds nuw [16 x i8], ptr %i.ji, i64 %i.jf
  %i.jk = add i64 %.sroa.7.0.i.i.i.i, -1
  %i.jl = icmp eq i64 %.sroa.7.0.i.i.i.i, 0       ; 2 uses
  %.neg.i.i2.i.i.i.i.i = sext i1 %i.jl to i64
  %i.jm = add i64 %.sroa.3.0.i.i.i.i58, %.neg.i.i2.i.i.i.i.i ; 2 uses
  %i.jn = select i1 %i.jl, i64 %i.jd, i64 0
  %i.jo = add i64 %i.jk, %i.jn                    ; 2 uses
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %i.jg, i64 %i.jm
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !1051, !noalias !3185
  %i.jr = getelementptr inbounds nuw [16 x i8], ptr %i.jq, i64 %i.jo
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jr, ptr noundef nonnull align 8 dereferenceable(16) %i.jj, i64 16, i1 false), !noalias !3185
  %i.js = add i64 %.06.i.i.i.i.i, -1              ; 2 uses
  %.not.i.i.i.i.i59 = icmp eq i64 %i.js, 0
  br i1 %.not.i.i.i.i.i59, label %_ZSt13move_backwardIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE2EEEEES9_ET0_T_SB_SA_.exit.loopexit, label %.lr.ph.i.i.i.i.i57, !llvm.loop !3196

_ZSt13move_backwardIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE2EEEEES9_ET0_T_SB_SA_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i57
  %.pre = load ptr, ptr %i.ck, align 8, !tbaa !1246
  br label %_ZSt13move_backwardIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE2EEEEES9_ET0_T_SB_SA_.exit

_ZSt13move_backwardIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE2EEEEES9_ET0_T_SB_SA_.exit: ; preds = %_ZSt13move_backwardIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE2EEEEES9_ET0_T_SB_SA_.exit.loopexit, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEplERKm.exit55
  %i.jt = phi ptr [ %.pre, %_ZSt13move_backwardIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE2EEEEES9_ET0_T_SB_SA_.exit.loopexit ], [ %i.hp, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEplERKm.exit55 ]
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %i.jt, i64 %.sroa.19.0
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !1051
  %i.jw = getelementptr inbounds nuw [16 x i8], ptr %i.jv, i64 %.sroa.39.0
  store <2 x i64> %.sroa.0.0.copyload, ptr %i.jw, align 8
  br label %.critedge

bb.aa:                                            ; preds = %bb.t
  %i.jx = add i64 %.0220, %.sroa.39.0             ; 3 uses
  %i.jy = load i64, ptr %i.ae, align 8, !tbaa !168, !noalias !3197 ; 6 uses
  %.not.i.i60 = icmp ult i64 %i.jx, %i.jy
  br i1 %.not.i.i60, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEplERKm.exit63, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.jz = mul i64 %i.jy, %.sroa.19.0
  %i.ka = add i64 %i.jz, %i.jx                    ; 2 uses
  %i.kb = zext i64 %i.ka to i128
  %i.kc = load i64, ptr %i.cj, align 8, !tbaa !1232, !noalias !3197
  %i.kd = zext i64 %i.kc to i128
  %i.ke = mul nuw i128 %i.kd, %i.kb
  %i.kf = lshr i128 %i.ke, 64
  %i.kg = trunc nuw i128 %i.kf to i64             ; 2 uses
  %i.kh = mul i64 %i.jy, %i.kg
  %i.ki = sub i64 %i.ka, %i.kh
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEplERKm.exit63

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEplERKm.exit63: ; preds = %bb.aa, %bb.ab
  %.05.i61 = phi i64 [ %.sroa.19.0, %bb.aa ], [ %i.kg, %bb.ab ] ; 3 uses
  %.0.i62 = phi i64 [ %i.jx, %bb.aa ], [ %i.ki, %bb.ab ] ; 2 uses
  %i.kj = sub i64 %.0.i62, %i.cl                  ; 3 uses
  %.not.i.i64 = icmp ult i64 %i.kj, %i.jy
  br i1 %.not.i.i64, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEmiERKm.exit67, label %bb.ac

bb.ac:                                            ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEplERKm.exit63
  %i.kk = mul i64 %.05.i61, %i.jy
  %i.kl = add i64 %i.kj, %i.kk                    ; 2 uses
  %i.km = zext i64 %i.kl to i128
  %i.kn = load i64, ptr %i.cj, align 8, !tbaa !1232, !noalias !3200
  %i.ko = zext i64 %i.kn to i128
  %i.kp = mul nuw i128 %i.ko, %i.km
  %i.kq = lshr i128 %i.kp, 64
  %i.kr = trunc nuw i128 %i.kq to i64             ; 2 uses
  %i.ks = mul i64 %i.jy, %i.kr
  %i.kt = sub i64 %i.kl, %i.ks
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEmiERKm.exit67

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEmiERKm.exit67: ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEplERKm.exit63, %bb.ac
  %.05.i65 = phi i64 [ %.05.i61, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEplERKm.exit63 ], [ %i.kr, %bb.ac ] ; 2 uses
end_hunk_8
begin_hunk_9_@_ZN14duckdb_pdqsort14pdqsort_detail26partition_right_branchlessIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE3EEEEEZN15duckdb_ska_sort6detail15StdSortFallbackISB_KNS2_13SkaExtractKeyISA_EEEEvT_SI_RT0_EUlRKSA_SM_E_EESt4pairISI_bESI_SI_SJ_:bb.a
  %i.sg = zext i1 %i.sf to i64
  br label %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE3EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit128

_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE3EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit128: ; preds = %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE3EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit124, %bb.bn, %bb.bo, %bb.bp, %bb.bq
  %i.sh = phi i64 [ 1, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE3EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit124 ], [ 0, %bb.bn ], [ 1, %bb.bo ], [ 0, %bb.bp ], [ %i.sg, %bb.bq ]
  %i.si = add i64 %i.sh, %i.rk                    ; 2 uses
  %i.sj = or disjoint i8 %.064581, 6
  %i.sk = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.si
  store i8 %i.sj, ptr %i.sk, align 1, !tbaa !527
  %i.sl = add i64 %i.rs, -1
  %i.sm = icmp eq i64 %i.rs, 0                    ; 2 uses
  %.neg.i.i129 = sext i1 %i.sm to i64
  %i.sn = add i64 %i.rp, %.neg.i.i129             ; 2 uses
  %i.so = load i64, ptr %i.em, align 8, !tbaa !168
  %i.sp = select i1 %i.sm, i64 %i.so, i64 0
  %i.sq = add i64 %i.sl, %i.sp                    ; 3 uses
  %i.sr = load ptr, ptr %i.dp, align 8, !tbaa !1246
  %i.ss = getelementptr inbounds nuw [8 x i8], ptr %i.sr, i64 %i.sn
  %i.st = load ptr, ptr %i.ss, align 8, !tbaa !1051
  %i.su = getelementptr inbounds nuw [24 x i8], ptr %i.st, i64 %i.sq ; 3 uses
  %i.sv = load i64, ptr %i.su, align 8, !tbaa !168 ; 2 uses
  %i.sw = icmp ult i64 %i.sv, %.sroa.0442.0.copyload
  br i1 %i.sw, label %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE3EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit132, label %bb.br

bb.br:                                            ; preds = %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE3EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit128
  %i.sx = icmp eq i64 %i.sv, %.sroa.0442.0.copyload
  br i1 %i.sx, label %bb.bs, label %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE3EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit132

bb.bs:                                            ; preds = %bb.br
  %i.sy = getelementptr inbounds nuw i8, ptr %i.su, i64 8
  %i.sz = load i64, ptr %i.sy, align 8, !tbaa !168 ; 2 uses
  %i.ta = icmp ult i64 %i.sz, %.sroa.25.0.copyload
  br i1 %i.ta, label %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE3EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit132, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.tb = icmp eq i64 %i.sz, %.sroa.25.0.copyload
  br i1 %i.tb, label %bb.bu, label %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE3EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit132

bb.bu:                                            ; preds = %bb.bt
  %i.tc = getelementptr inbounds nuw i8, ptr %i.su, i64 16
  %.val.val.i.i.i.i130 = load i64, ptr %i.tc, align 8, !tbaa !168
  %i.td = icmp ult i64 %.val.val.i.i.i.i130, %.sroa.46.0.copyload
  %i.te = zext i1 %i.td to i64
  br label %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE3EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit132

_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE3EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit132: ; preds = %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE3EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit128, %bb.br, %bb.bs, %bb.bt, %bb.bu
  %i.tf = phi i64 [ 1, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE3EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit128 ], [ 0, %bb.br ], [ 1, %bb.bs ], [ 0, %bb.bt ], [ %i.te, %bb.bu ]
  %i.tg = add i64 %i.tf, %i.si                    ; 2 uses
  %i.th = or disjoint i8 %.064581, 7
  %i.ti = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.tg
  store i8 %i.th, ptr %i.ti, align 1, !tbaa !527
  %i.tj = add i64 %i.sq, -1
  %i.tk = icmp eq i64 %i.sq, 0                    ; 2 uses
  %.neg.i.i133 = sext i1 %i.tk to i64
  %i.tl = add i64 %i.sn, %.neg.i.i133             ; 2 uses
  %i.tm = load i64, ptr %i.em, align 8, !tbaa !168
  %i.tn = select i1 %i.tk, i64 %i.tm, i64 0
  %i.to = add i64 %i.tj, %i.tn                    ; 3 uses
  %i.tp = load ptr, ptr %i.dp, align 8, !tbaa !1246
  %i.tq = getelementptr inbounds nuw [8 x i8], ptr %i.tp, i64 %i.tl
  %i.tr = load ptr, ptr %i.tq, align 8, !tbaa !1051
  %i.ts = getelementptr inbounds nuw [24 x i8], ptr %i.tr, i64 %i.to ; 3 uses
  %i.tt = load i64, ptr %i.ts, align 8, !tbaa !168 ; 2 uses
  %i.tu = icmp ult i64 %i.tt, %.sroa.0442.0.copyload
  br i1 %i.tu, label %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE3EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit136, label %bb.bv

bb.bv:                                            ; preds = %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE3EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit132
  %i.tv = icmp eq i64 %i.tt, %.sroa.0442.0.copyload
  br i1 %i.tv, label %bb.bw, label %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE3EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit136

bb.bw:                                            ; preds = %bb.bv
  %i.tw = getelementptr inbounds nuw i8, ptr %i.ts, i64 8
  %i.tx = load i64, ptr %i.tw, align 8, !tbaa !168 ; 2 uses
  %i.ty = icmp ult i64 %i.tx, %.sroa.25.0.copyload
  br i1 %i.ty, label %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE3EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit136, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.tz = icmp eq i64 %i.tx, %.sroa.25.0.copyload
  br i1 %i.tz, label %bb.by, label %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE3EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit136

bb.by:                                            ; preds = %bb.bx
  %i.ua = getelementptr inbounds nuw i8, ptr %i.ts, i64 16
  %.val.val.i.i.i.i134 = load i64, ptr %i.ua, align 8, !tbaa !168
  %i.ub = icmp ult i64 %.val.val.i.i.i.i134, %.sroa.46.0.copyload
  %i.uc = zext i1 %i.ub to i64
  br label %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE3EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit136

_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE3EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit136: ; preds = %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE3EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit132, %bb.bv, %bb.bw, %bb.bx, %bb.by
  %i.ud = phi i64 [ 1, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE3EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit132 ], [ 0, %bb.bv ], [ 1, %bb.bw ], [ 0, %bb.bx ], [ %i.uc, %bb.by ]
  %i.ue = add i64 %i.ud, %i.tg                    ; 2 uses
  %i.uf = add nuw nsw i8 %.064581, 8              ; 2 uses
  %i.ug = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.ue
  store i8 %i.uf, ptr %i.ug, align 1, !tbaa !527
  %i.uh = add i64 %i.to, -1
  %i.ui = icmp eq i64 %i.to, 0                    ; 2 uses
  %.neg.i.i137 = sext i1 %i.ui to i64
  %i.uj = add i64 %i.tl, %.neg.i.i137             ; 3 uses
  %i.uk = load i64, ptr %i.em, align 8, !tbaa !168
  %i.ul = select i1 %i.ui, i64 %i.uk, i64 0
  %i.um = add i64 %i.uh, %i.ul                    ; 3 uses
  %i.un = load ptr, ptr %i.dp, align 8, !tbaa !1246
  %i.uo = getelementptr inbounds nuw [8 x i8], ptr %i.un, i64 %i.uj
  %i.up = load ptr, ptr %i.uo, align 8, !tbaa !1051
  %i.uq = getelementptr inbounds nuw [24 x i8], ptr %i.up, i64 %i.um ; 3 uses
  %i.ur = load i64, ptr %i.uq, align 8, !tbaa !168 ; 2 uses
  %i.us = icmp ult i64 %i.ur, %.sroa.0442.0.copyload
  br i1 %i.us, label %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE3EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit140, label %bb.bz

bb.bz:                                            ; preds = %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE3EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit136
  %i.ut = icmp eq i64 %i.ur, %.sroa.0442.0.copyload
  br i1 %i.ut, label %bb.ca, label %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE3EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit140

bb.ca:                                            ; preds = %bb.bz
  %i.uu = getelementptr inbounds nuw i8, ptr %i.uq, i64 8
  %i.uv = load i64, ptr %i.uu, align 8, !tbaa !168 ; 2 uses
  %i.uw = icmp ult i64 %i.uv, %.sroa.25.0.copyload
  br i1 %i.uw, label %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE3EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit140, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.ux = icmp eq i64 %i.uv, %.sroa.25.0.copyload
  br i1 %i.ux, label %bb.cc, label %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE3EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit140

bb.cc:                                            ; preds = %bb.cb
  %i.uy = getelementptr inbounds nuw i8, ptr %i.uq, i64 16
  %.val.val.i.i.i.i138 = load i64, ptr %i.uy, align 8, !tbaa !168
  %i.uz = icmp ult i64 %.val.val.i.i.i.i138, %.sroa.46.0.copyload
  %i.va = zext i1 %i.uz to i64
  br label %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE3EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit140

_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE3EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit140: ; preds = %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE3EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit136, %bb.bz, %bb.ca, %bb.cb, %bb.cc
  %i.vb = phi i64 [ 1, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE3EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit136 ], [ 0, %bb.bz ], [ 1, %bb.ca ], [ 0, %bb.cb ], [ %i.va, %bb.cc ]
  %i.vc = add i64 %i.vb, %i.ue                    ; 2 uses
  %i.vd = icmp samesign ult i8 %.064581, 56
  br i1 %i.vd, label %.preheader, label %.loopexit520, !llvm.loop !4050

.lr.ph574:                                        ; preds = %.lr.ph574.preheader, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE3EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit144
  %.0573 = phi i8 [ %i.ve, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE3EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit144 ], [ 0, %.lr.ph574.preheader ]
  %.sroa.76.5572 = phi i64 [ %i.vl, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE3EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit144 ], [ %.sroa.76.3589, %.lr.ph574.preheader ] ; 2 uses
  %.sroa.30.5571 = phi i64 [ %i.vi, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE3EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit144 ], [ %.sroa.30.3588, %.lr.ph574.preheader ]
  %.2570 = phi i64 [ %i.wb, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE3EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit144 ], [ %.0508587, %.lr.ph574.preheader ] ; 2 uses
  %i.ve = add nuw i8 %.0573, 1                    ; 3 uses
  %i.vf = getelementptr inbounds nuw i8, ptr %i.eh, i64 %.2570
  store i8 %i.ve, ptr %i.vf, align 1, !tbaa !527
  %i.vg = add i64 %.sroa.76.5572, -1
  %i.vh = icmp eq i64 %.sroa.76.5572, 0           ; 2 uses
  %.neg.i.i141 = sext i1 %i.vh to i64
  %i.vi = add i64 %.sroa.30.5571, %.neg.i.i141    ; 3 uses
  %i.vj = load i64, ptr %i.em, align 8, !tbaa !168
  %i.vk = select i1 %i.vh, i64 %i.vj, i64 0
  %i.vl = add i64 %i.vg, %i.vk                    ; 3 uses
  %i.vm = load ptr, ptr %i.dp, align 8, !tbaa !1246
  %i.vn = getelementptr inbounds nuw [8 x i8], ptr %i.vm, i64 %i.vi
  %i.vo = load ptr, ptr %i.vn, align 8, !tbaa !1051
  %i.vp = getelementptr inbounds nuw [24 x i8], ptr %i.vo, i64 %i.vl ; 3 uses
  %i.vq = load i64, ptr %i.vp, align 8, !tbaa !168 ; 2 uses
  %i.vr = icmp ult i64 %i.vq, %.sroa.0442.0.copyload
  br i1 %i.vr, label %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE3EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit144, label %bb.cd

bb.cd:                                            ; preds = %.lr.ph574
  %i.vs = icmp eq i64 %i.vq, %.sroa.0442.0.copyload
  br i1 %i.vs, label %bb.ce, label %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE3EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit144

bb.ce:                                            ; preds = %bb.cd
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vp, i64 8
  %i.vu = load i64, ptr %i.vt, align 8, !tbaa !168 ; 2 uses
  %i.vv = icmp ult i64 %i.vu, %.sroa.25.0.copyload
  br i1 %i.vv, label %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE3EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit144, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.vw = icmp eq i64 %i.vu, %.sroa.25.0.copyload
  br i1 %i.vw, label %bb.cg, label %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE3EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit144

bb.cg:                                            ; preds = %bb.cf
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vp, i64 16
  %.val.val.i.i.i.i142 = load i64, ptr %i.vx, align 8, !tbaa !168
  %i.vy = icmp ult i64 %.val.val.i.i.i.i142, %.sroa.46.0.copyload
  %i.vz = zext i1 %i.vy to i64
  br label %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE3EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit144

_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE3EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit144: ; preds = %.lr.ph574, %bb.cd, %bb.ce, %bb.cf, %bb.cg
  %i.wa = phi i64 [ 1, %.lr.ph574 ], [ 0, %bb.cd ], [ 1, %bb.ce ], [ 0, %bb.cf ], [ %i.vz, %bb.cg ]
  %i.wb = add i64 %i.wa, %.2570                   ; 2 uses
  %i.wc = icmp ult i8 %i.ve, %i.ns
  br i1 %i.wc, label %.lr.ph574, label %.loopexit520, !llvm.loop !4051

.loopexit520:                                     ; preds = %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE3EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit144, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE3EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit140, %.preheader521
  %.3 = phi i64 [ %i.vc, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE3EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit140 ], [ %.0508587, %.preheader521 ], [ %i.wb, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE3EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit144 ] ; 4 uses
  %.sroa.30.6 = phi i64 [ %i.uj, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE3EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit140 ], [ %.sroa.30.3588, %.preheader521 ], [ %i.vi, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE3EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit144 ] ; 5 uses
  %.sroa.76.6 = phi i64 [ %i.um, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE3EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit140 ], [ %.sroa.76.3589, %.preheader521 ], [ %i.vl, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE3EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit144 ] ; 4 uses
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %.3, i64 %.3513) ; 5 uses
  store ptr %i.c, ptr %3, align 8, !tbaa !1286
  store i64 %.sroa.5247.0583, ptr %i.en, align 8, !tbaa !1283
  store i64 %.sroa.9249.0582, ptr %i.eo, align 8, !tbaa !1285
  store ptr %i.m, ptr %4, align 8, !tbaa !1286
  store i64 %.sroa.5.0585, ptr %i.ep, align 8, !tbaa !1283
  store i64 %.sroa.9.0584, ptr %i.eq, align 8, !tbaa !1285
  %i.wd = getelementptr inbounds nuw i8, ptr %i.ed, i64 %.068592
  %i.we = getelementptr inbounds nuw i8, ptr %i.eh, i64 %.067593
  %i.wf = icmp eq i64 %.3513, %.3
  call void @_ZN14duckdb_pdqsort14pdqsort_detail12swap_offsetsIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE3EEEEEEEvT_SC_PhSD_mb(ptr noundef nonnull dead_on_return %3, ptr noundef nonnull dead_on_return %4, ptr noundef %i.wd, ptr noundef %i.we, i64 noundef %.sroa.speculated, i1 noundef zeroext %i.wf)
  %i.wg = sub i64 %.3513, %.sroa.speculated       ; 3 uses
  %i.wh = sub i64 %.3, %.sroa.speculated          ; 4 uses
  %i.wi = add i64 %.sroa.speculated, %.068592
  %i.wj = add i64 %.sroa.speculated, %.067593
  %.not517 = icmp ugt i64 %.3513, %.3             ; 3 uses
  %.sroa.9249.1 = select i1 %.not517, i64 %.sroa.9249.0582, i64 %.sroa.78.4 ; 2 uses
  %.sroa.5247.1 = select i1 %.not517, i64 %.sroa.5247.0583, i64 %.sroa.31.4 ; 3 uses
  %.169 = select i1 %.not517, i64 %i.wi, i64 0    ; 2 uses
  %i.wk = icmp eq i64 %i.wh, 0                    ; 3 uses
  %.sroa.9.1 = select i1 %i.wk, i64 %.sroa.76.6, i64 %.sroa.9.0584 ; 2 uses
  %.sroa.5.1 = select i1 %i.wk, i64 %.sroa.30.6, i64 %.sroa.5.0585 ; 3 uses
  %.1 = select i1 %i.wk, i64 0, i64 %i.wj         ; 2 uses
  %i.wl = icmp eq i64 %.sroa.31.4, %.sroa.30.6
  %i.wm = icmp ult i64 %.sroa.78.4, %.sroa.76.6
  %i.wn = icmp ult i64 %.sroa.31.4, %.sroa.30.6
  %i.wo = select i1 %i.wl, i1 %i.wm, i1 %i.wn
  br i1 %i.wo, label %bb.m, label %._crit_edge, !llvm.loop !4052

._crit_edge:                                      ; preds = %.loopexit520
  %.not = icmp eq i64 %i.wg, 0
  br i1 %.not, label %.loopexit519, label %bb.ch

bb.ch:                                            ; preds = %._crit_edge
  %i.wp = getelementptr inbounds nuw i8, ptr %i.ed, i64 %.169
  %i.wq = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.wr = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEplERKm.exit
  %.in = phi i64 [ %i.wg, %bb.ch ], [ %i.ws, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEplERKm.exit ]
  %.sroa.76.7608 = phi i64 [ %.sroa.76.6, %bb.ch ], [ %i.xn, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEplERKm.exit ] ; 2 uses
  %.sroa.30.7607 = phi i64 [ %.sroa.30.6, %bb.ch ], [ %i.xk, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEplERKm.exit ]
  %i.ws = add i64 %.in, -1                        ; 3 uses
  %i.wt = getelementptr inbounds nuw i8, ptr %i.wp, i64 %i.ws
  %i.wu = load i8, ptr %i.wt, align 1, !tbaa !527
  %i.wv = zext i8 %i.wu to i64
  %i.ww = add i64 %.sroa.9249.1, %i.wv            ; 3 uses
  %i.wx = load i64, ptr %i.r, align 8, !tbaa !168, !noalias !4053 ; 3 uses
  %.not.i.i145 = icmp ult i64 %i.ww, %i.wx
  br i1 %.not.i.i145, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEplERKm.exit, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.wy = mul i64 %i.wx, %.sroa.5247.1
  %i.wz = add i64 %i.wy, %i.ww                    ; 2 uses
  %i.xa = zext i64 %i.wz to i128
  %i.xb = load i64, ptr %i.wr, align 8, !tbaa !1232, !noalias !4053
  %i.xc = zext i64 %i.xb to i128
  %i.xd = mul nuw i128 %i.xc, %i.xa
  %i.xe = lshr i128 %i.xd, 64
  %i.xf = trunc nuw i128 %i.xe to i64             ; 2 uses
  %i.xg = mul i64 %i.wx, %i.xf
  %i.xh = sub i64 %i.wz, %i.xg
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEplERKm.exit

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEplERKm.exit: ; preds = %bb.ci, %bb.cj
  %.05.i146 = phi i64 [ %.sroa.5247.1, %bb.ci ], [ %i.xf, %bb.cj ]
  %.0.i147 = phi i64 [ %i.ww, %bb.ci ], [ %i.xh, %bb.cj ]
  %i.xi = add i64 %.sroa.76.7608, -1
  %i.xj = icmp eq i64 %.sroa.76.7608, 0           ; 2 uses
  %.neg.i.i148 = sext i1 %i.xj to i64
  %i.xk = add i64 %.sroa.30.7607, %.neg.i.i148    ; 3 uses
  %i.xl = load i64, ptr %i.wq, align 8, !tbaa !168
  %i.xm = select i1 %i.xj, i64 %i.xl, i64 0
  %i.xn = add i64 %i.xi, %i.xm                    ; 3 uses
  %i.xo = load ptr, ptr %i.f, align 8, !tbaa !1246
  %i.xp = getelementptr inbounds nuw [8 x i8], ptr %i.xo, i64 %.05.i146
  %i.xq = load ptr, ptr %i.xp, align 8, !tbaa !1051
  %i.xr = getelementptr inbounds nuw [24 x i8], ptr %i.xq, i64 %.0.i147 ; 2 uses
  %i.xs = load ptr, ptr %i.dp, align 8, !tbaa !1246
  %i.xt = getelementptr inbounds nuw [8 x i8], ptr %i.xs, i64 %i.xk
  %i.xu = load ptr, ptr %i.xt, align 8, !tbaa !1051
  %i.xv = getelementptr inbounds nuw [24 x i8], ptr %i.xu, i64 %i.xn ; 2 uses
  %.sroa.0804.0.copyload = load <3 x i64>, ptr %i.xr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.xr, ptr noundef nonnull align 8 dereferenceable(24) %i.xv, i64 24, i1 false)
  store <3 x i64> %.sroa.0804.0.copyload, ptr %i.xv, align 8
  %.not72 = icmp eq i64 %i.ws, 0
  br i1 %.not72, label %.loopexit519, label %bb.ci, !llvm.loop !4056

.loopexit519:                                     ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEplERKm.exit, %._crit_edge
  %.sroa.31.5 = phi i64 [ %.sroa.31.4, %._crit_edge ], [ %i.xk, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEplERKm.exit ] ; 2 uses
  %.sroa.78.5 = phi i64 [ %.sroa.78.4, %._crit_edge ], [ %i.xn, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEplERKm.exit ] ; 2 uses
  %.not73 = icmp eq i64 %i.wh, 0
  br i1 %.not73, label %.loopexit519..loopexit_crit_edge, label %bb.ck

.loopexit519..loopexit_crit_edge:                 ; preds = %bb.l, %.loopexit519
  %.sroa.78.5724 = phi i64 [ %.sroa.78.5, %.loopexit519 ], [ %i.dz, %bb.l ]
  %.sroa.31.5723 = phi i64 [ %.sroa.31.5, %.loopexit519 ], [ %i.dy, %bb.l ]
  %.pre.pre = load i64, ptr %i.r, align 8, !tbaa !168, !noalias !4057
  br label %.loopexit

bb.ck:                                            ; preds = %.loopexit519
  %i.xw = getelementptr inbounds nuw i8, ptr %i.eh, i64 %.1
  %i.xx = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.xy = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEmiERKm.exit152
  %.in613 = phi i64 [ %i.wh, %bb.ck ], [ %i.xz, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEmiERKm.exit152 ]
  %.sroa.78.6610 = phi i64 [ %.sroa.78.5, %bb.ck ], [ %i.zc, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEmiERKm.exit152 ] ; 2 uses
  %.sroa.31.6609 = phi i64 [ %.sroa.31.5, %bb.ck ], [ %i.zb, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEmiERKm.exit152 ] ; 2 uses
  %i.xz = add i64 %.in613, -1                     ; 3 uses
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xw, i64 %i.xz
  %i.yb = load i8, ptr %i.ya, align 1, !tbaa !527
  %i.yc = zext i8 %i.yb to i64
  %i.yd = sub i64 %.sroa.9.1, %i.yc               ; 3 uses
  %i.ye = load i64, ptr %i.xx, align 8, !tbaa !168, !noalias !4060 ; 3 uses
  %.not.i.i149 = icmp ult i64 %i.yd, %i.ye
  br i1 %.not.i.i149, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEmiERKm.exit152, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.yf = mul i64 %i.ye, %.sroa.5.1
  %i.yg = add i64 %i.yf, %i.yd                    ; 2 uses
  %i.yh = zext i64 %i.yg to i128
  %i.yi = load i64, ptr %i.xy, align 8, !tbaa !1232, !noalias !4060
  %i.yj = zext i64 %i.yi to i128
  %i.yk = mul nuw i128 %i.yj, %i.yh
  %i.yl = lshr i128 %i.yk, 64
  %i.ym = trunc nuw i128 %i.yl to i64             ; 2 uses
  %i.yn = mul i64 %i.ye, %i.ym
  %i.yo = sub i64 %i.yg, %i.yn
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEmiERKm.exit152

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEmiERKm.exit152: ; preds = %bb.cl, %bb.cm
  %.05.i150 = phi i64 [ %.sroa.5.1, %bb.cl ], [ %i.ym, %bb.cm ]
  %.0.i151 = phi i64 [ %i.yd, %bb.cl ], [ %i.yo, %bb.cm ]
  %i.yp = load ptr, ptr %i.dp, align 8, !tbaa !1246
  %i.yq = getelementptr inbounds nuw [8 x i8], ptr %i.yp, i64 %.05.i150
  %i.yr = load ptr, ptr %i.yq, align 8, !tbaa !1051
  %i.ys = getelementptr inbounds nuw [24 x i8], ptr %i.yr, i64 %.0.i151 ; 2 uses
  %i.yt = load ptr, ptr %i.f, align 8, !tbaa !1246
  %i.yu = getelementptr inbounds nuw [8 x i8], ptr %i.yt, i64 %.sroa.31.6609
  %i.yv = load ptr, ptr %i.yu, align 8, !tbaa !1051
  %i.yw = getelementptr inbounds nuw [24 x i8], ptr %i.yv, i64 %.sroa.78.6610 ; 2 uses
  %.sroa.0806.0.copyload = load <3 x i64>, ptr %i.ys, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ys, ptr noundef nonnull align 8 dereferenceable(24) %i.yw, i64 24, i1 false)
  store <3 x i64> %.sroa.0806.0.copyload, ptr %i.yw, align 8
  %i.yx = add i64 %.sroa.78.6610, 1               ; 2 uses
  %i.yy = load i64, ptr %i.r, align 8, !tbaa !168 ; 2 uses
  %i.yz = icmp eq i64 %i.yx, %i.yy                ; 2 uses
  %i.za = zext i1 %i.yz to i64
  %i.zb = add i64 %.sroa.31.6609, %i.za           ; 2 uses
  %i.zc = select i1 %i.yz, i64 0, i64 %i.yx       ; 2 uses
  %.not74 = icmp eq i64 %i.xz, 0
  br i1 %.not74, label %.loopexit, label %bb.cl, !llvm.loop !4063

.loopexit:                                        ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEmiERKm.exit152, %.loopexit519..loopexit_crit_edge
  %.pre = phi i64 [ %.pre.pre, %.loopexit519..loopexit_crit_edge ], [ %i.yy, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEmiERKm.exit152 ]
  %.sroa.31.7 = phi i64 [ %.sroa.31.5723, %.loopexit519..loopexit_crit_edge ], [ %i.zb, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEmiERKm.exit152 ]
  %.sroa.78.7 = phi i64 [ %.sroa.78.5724, %.loopexit519..loopexit_crit_edge ], [ %i.zc, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEmiERKm.exit152 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %.pre640 = add i64 %.sroa.78.7, -1
  br label %bb.cn

bb.cn:                                            ; preds = %.loopexit, %.critedge
  %.pre-phi = phi i64 [ %.pre640, %.loopexit ], [ %i.ak, %.critedge ] ; 3 uses
  %i.zd = phi i64 [ %.pre, %.loopexit ], [ %i.s, %.critedge ] ; 3 uses
  %.sroa.31.8 = phi i64 [ %.sroa.31.7, %.loopexit ], [ %i.w, %.critedge ] ; 2 uses
  %.not.i.i153 = icmp ult i64 %.pre-phi, %i.zd
  br i1 %.not.i.i153, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEmiERKm.exit156, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.ze = mul i64 %i.zd, %.sroa.31.8
  %i.zf = add i64 %i.ze, %.pre-phi                ; 2 uses
  %i.zg = zext i64 %i.zf to i128
  %i.zh = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.zi = load i64, ptr %i.zh, align 8, !tbaa !1232, !noalias !4057
  %i.zj = zext i64 %i.zi to i128
  %i.zk = mul nuw i128 %i.zj, %i.zg
  %i.zl = lshr i128 %i.zk, 64
  %i.zm = trunc nuw i128 %i.zl to i64             ; 2 uses
  %i.zn = mul i64 %i.zd, %i.zm
  %i.zo = sub i64 %i.zf, %i.zn
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEmiERKm.exit156

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEmiERKm.exit156: ; preds = %bb.cn, %bb.co
  %.05.i154 = phi i64 [ %.sroa.31.8, %bb.cn ], [ %i.zm, %bb.co ] ; 3 uses
  %.0.i155 = phi i64 [ %.pre-phi, %bb.cn ], [ %i.zo, %bb.co ] ; 3 uses
  %i.zp = zext i1 %i.do to i8
  %i.zq = load ptr, ptr %i.f, align 8, !tbaa !1246
  %i.zr = getelementptr inbounds nuw [8 x i8], ptr %i.zq, i64 %.05.i154
  %i.zs = load ptr, ptr %i.zr, align 8, !tbaa !1051
  %i.zt = getelementptr inbounds nuw [24 x i8], ptr %i.zs, i64 %.0.i155
  %i.zu = load ptr, ptr %1, align 8, !tbaa !1286
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zu, i64 8
  %i.zw = load i64, ptr %i.d, align 8, !tbaa !168
  %i.zx = load ptr, ptr %i.zv, align 8, !tbaa !1246
  %i.zy = getelementptr inbounds nuw [8 x i8], ptr %i.zx, i64 %i.zw
  %i.zz = load ptr, ptr %i.zy, align 8, !tbaa !1051
  %i.aaa = load i64, ptr %i.e, align 8, !tbaa !168
  %i.aab = getelementptr inbounds nuw [24 x i8], ptr %i.zz, i64 %i.aaa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aab, ptr noundef nonnull align 8 dereferenceable(24) %i.zt, i64 24, i1 false)
  %i.aac = load ptr, ptr %i.f, align 8, !tbaa !1246
  %i.aad = getelementptr inbounds nuw [8 x i8], ptr %i.aac, i64 %.05.i154
  %i.aae = load ptr, ptr %i.aad, align 8, !tbaa !1051
  %i.aaf = getelementptr inbounds nuw [24 x i8], ptr %i.aae, i64 %.0.i155 ; 3 uses
  store i64 %.sroa.0442.0.copyload, ptr %i.aaf, align 8
  %.sroa.25.0..sroa_idx464 = getelementptr inbounds nuw i8, ptr %i.aaf, i64 8
  store i64 %.sroa.25.0.copyload, ptr %.sroa.25.0..sroa_idx464, align 8
  %.sroa.46.0..sroa_idx486 = getelementptr inbounds nuw i8, ptr %i.aaf, i64 16
  store i64 %.sroa.46.0.copyload, ptr %.sroa.46.0..sroa_idx486, align 8
  store ptr %i.c, ptr %0, align 8, !tbaa !1286, !alias.scope !4064
end_hunk_9
begin_hunk_10_@_ZNSt3_V28__rotateIN6duckdb16block_iterator_tIKNS1_18BlockIteratorStateILNS1_22BlockIteratorStateTypeE0EEENS1_7SortKeyILNS1_11SortKeyTypeE3EEEEEEET_SB_SB_SB_St26random_access_iterator_tag:bb.a
  %i.cl = sub i64 %.0220, %.0221                  ; 6 uses
  %i.cm = icmp ult i64 %.0221, %i.cl
  br i1 %i.cm, label %bb.j, label %bb.t

bb.j:                                             ; preds = %bb.i
  %i.cn = icmp eq i64 %.0221, 1
  br i1 %i.cn, label %bb.k, label %bb.p

bb.k:                                             ; preds = %bb.j
  %i.co = load ptr, ptr %i.ck, align 8, !tbaa !1246
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %.sroa.19.0
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !1051
  %i.cr = getelementptr inbounds nuw [24 x i8], ptr %i.cq, i64 %.sroa.39.0
  %.sroa.0333.0.copyload = load <3 x i64>, ptr %i.cr, align 8
  %i.cs = add i64 %.sroa.39.0, 1                  ; 3 uses
  %i.ct = load i64, ptr %i.ae, align 8, !tbaa !168, !noalias !4158 ; 8 uses
  %.not.i.i17 = icmp ult i64 %i.cs, %i.ct
  br i1 %.not.i.i17, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEplERKm.exit20, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cu = mul i64 %i.ct, %.sroa.19.0
  %i.cv = add i64 %i.cu, %i.cs                    ; 2 uses
  %i.cw = zext i64 %i.cv to i128
  %i.cx = load i64, ptr %i.cj, align 8, !tbaa !1232, !noalias !4158
  %i.cy = zext i64 %i.cx to i128
  %i.cz = mul nuw i128 %i.cy, %i.cw
  %i.da = lshr i128 %i.cz, 64
  %i.db = trunc nuw i128 %i.da to i64             ; 2 uses
  %i.dc = mul i64 %i.ct, %i.db
  %i.dd = sub i64 %i.cv, %i.dc
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEplERKm.exit20

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEplERKm.exit20: ; preds = %bb.k, %bb.l
  %.05.i18 = phi i64 [ %.sroa.19.0, %bb.k ], [ %i.db, %bb.l ] ; 2 uses
  %.0.i19 = phi i64 [ %i.cs, %bb.k ], [ %i.dd, %bb.l ] ; 2 uses
  %i.de = add i64 %.0220, %.sroa.39.0             ; 6 uses
  %.not.i.i21 = icmp ult i64 %i.de, %i.ct
  br i1 %.not.i.i21, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEplERKm.exit24, label %bb.m

bb.m:                                             ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEplERKm.exit20
  %i.df = mul i64 %i.ct, %.sroa.19.0
  %i.dg = add i64 %i.df, %i.de                    ; 2 uses
  %i.dh = zext i64 %i.dg to i128
  %i.di = load i64, ptr %i.cj, align 8, !tbaa !1232, !noalias !4161
  %i.dj = zext i64 %i.di to i128
  %i.dk = mul nuw i128 %i.dj, %i.dh
  %i.dl = lshr i128 %i.dk, 64
  %i.dm = trunc nuw i128 %i.dl to i64             ; 2 uses
  %i.dn = mul i64 %i.ct, %i.dm
  %i.do = sub i64 %i.dg, %i.dn
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEplERKm.exit24

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEplERKm.exit24: ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEplERKm.exit20, %bb.m
  %.05.i22 = phi i64 [ %.sroa.19.0, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEplERKm.exit20 ], [ %i.dm, %bb.m ]
  %.0.i23 = phi i64 [ %i.de, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEplERKm.exit20 ], [ %i.do, %bb.m ]
  %reass.add226 = sub i64 %.05.i22, %.05.i18
  %reass.mul227 = mul i64 %reass.add226, %i.ct
  %i.dp = sub i64 %.0.i23, %.0.i19
  %i.dq = add i64 %i.dp, %reass.mul227            ; 2 uses
  %.not4.i.i.i.i.i = icmp eq i64 %i.dq, 0
  br i1 %.not4.i.i.i.i.i, label %_ZSt4moveIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE3EEEEES9_ET0_T_SB_SA_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEplERKm.exit24, %.lr.ph.i.i.i.i.i
  %.sroa.38.0.i.i.i.i = phi i64 [ %i.ec, %.lr.ph.i.i.i.i.i ], [ %.05.i18, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEplERKm.exit24 ] ; 2 uses
  %.sroa.8.0.i.i.i.i = phi i64 [ %i.ei, %.lr.ph.i.i.i.i.i ], [ %.sroa.39.0, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEplERKm.exit24 ] ; 2 uses
  %.sroa.3.0.i.i.i.i = phi i64 [ %i.eh, %.lr.ph.i.i.i.i.i ], [ %.sroa.19.0, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEplERKm.exit24 ] ; 2 uses
  %.sroa.811.0.i.i.i.i = phi i64 [ %i.ed, %.lr.ph.i.i.i.i.i ], [ %.0.i19, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEplERKm.exit24 ] ; 2 uses
  %.05.i.i.i.i.i = phi i64 [ %i.ej, %.lr.ph.i.i.i.i.i ], [ %i.dq, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEplERKm.exit24 ]
  %i.dr = load ptr, ptr %i.ck, align 8, !tbaa !1246, !noalias !4164 ; 2 uses
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %.sroa.38.0.i.i.i.i
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !1051, !noalias !4164
  %i.du = getelementptr inbounds nuw [24 x i8], ptr %i.dt, i64 %.sroa.811.0.i.i.i.i
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %.sroa.3.0.i.i.i.i
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !1051, !noalias !4164
  %i.dx = getelementptr inbounds nuw [24 x i8], ptr %i.dw, i64 %.sroa.8.0.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dx, ptr noundef nonnull align 8 dereferenceable(24) %i.du, i64 24, i1 false), !noalias !4164
  %i.dy = add i64 %.sroa.811.0.i.i.i.i, 1         ; 2 uses
  %i.dz = load i64, ptr %i.ae, align 8, !tbaa !168, !noalias !4164 ; 3 uses
  %i.ea = icmp eq i64 %i.dy, %i.dz                ; 2 uses
  %i.eb = zext i1 %i.ea to i64
  %i.ec = add i64 %.sroa.38.0.i.i.i.i, %i.eb
  %i.ed = select i1 %i.ea, i64 0, i64 %i.dy
  %i.ee = add i64 %.sroa.8.0.i.i.i.i, 1           ; 2 uses
  %i.ef = icmp eq i64 %i.ee, %i.dz                ; 2 uses
  %i.eg = zext i1 %i.ef to i64
  %i.eh = add i64 %.sroa.3.0.i.i.i.i, %i.eg
  %i.ei = select i1 %i.ef, i64 0, i64 %i.ee
  %i.ej = add i64 %.05.i.i.i.i.i, -1              ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.ej, 0
  br i1 %.not.i.i.i.i.i, label %_ZSt4moveIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE3EEEEES9_ET0_T_SB_SA_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !4175

_ZSt4moveIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE3EEEEES9_ET0_T_SB_SA_.exit: ; preds = %.lr.ph.i.i.i.i.i, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEplERKm.exit24
  %i.ek = phi i64 [ %i.ct, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEplERKm.exit24 ], [ %i.dz, %.lr.ph.i.i.i.i.i ] ; 6 uses
  %.not.i.i25 = icmp ult i64 %i.de, %i.ek
  br i1 %.not.i.i25, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEplERKm.exit28, label %bb.n

bb.n:                                             ; preds = %_ZSt4moveIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE3EEEEES9_ET0_T_SB_SA_.exit
  %i.el = mul i64 %i.ek, %.sroa.19.0
  %i.em = add i64 %i.el, %i.de                    ; 2 uses
  %i.en = zext i64 %i.em to i128
  %i.eo = load i64, ptr %i.cj, align 8, !tbaa !1232, !noalias !4176
  %i.ep = zext i64 %i.eo to i128
  %i.eq = mul nuw i128 %i.ep, %i.en
  %i.er = lshr i128 %i.eq, 64
  %i.es = trunc nuw i128 %i.er to i64             ; 2 uses
  %i.et = mul i64 %i.ek, %i.es
  %i.eu = sub i64 %i.em, %i.et
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEplERKm.exit28

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEplERKm.exit28: ; preds = %_ZSt4moveIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE3EEEEES9_ET0_T_SB_SA_.exit, %bb.n
  %.05.i26 = phi i64 [ %.sroa.19.0, %_ZSt4moveIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE3EEEEES9_ET0_T_SB_SA_.exit ], [ %i.es, %bb.n ] ; 2 uses
  %.0.i27 = phi i64 [ %i.de, %_ZSt4moveIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE3EEEEES9_ET0_T_SB_SA_.exit ], [ %i.eu, %bb.n ]
  %i.ev = add i64 %.0.i27, -1                     ; 3 uses
  %.not.i.i29 = icmp ult i64 %i.ev, %i.ek
  br i1 %.not.i.i29, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEmiERKm.exit, label %bb.o

bb.o:                                             ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEplERKm.exit28
  %i.ew = mul i64 %.05.i26, %i.ek
  %i.ex = add i64 %i.ev, %i.ew                    ; 2 uses
  %i.ey = zext i64 %i.ex to i128
  %i.ez = load i64, ptr %i.cj, align 8, !tbaa !1232, !noalias !4179
  %i.fa = zext i64 %i.ez to i128
  %i.fb = mul nuw i128 %i.fa, %i.ey
  %i.fc = lshr i128 %i.fb, 64
  %i.fd = trunc nuw i128 %i.fc to i64             ; 2 uses
  %i.fe = mul i64 %i.ek, %i.fd
  %i.ff = sub i64 %i.ex, %i.fe
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEmiERKm.exit

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEmiERKm.exit: ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEplERKm.exit28, %bb.o
  %.05.i30 = phi i64 [ %.05.i26, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEplERKm.exit28 ], [ %i.fd, %bb.o ]
  %.0.i31 = phi i64 [ %i.ev, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEplERKm.exit28 ], [ %i.ff, %bb.o ]
  %i.fg = load ptr, ptr %i.ck, align 8, !tbaa !1246
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %.05.i30
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !1051
  %i.fj = getelementptr inbounds nuw [24 x i8], ptr %i.fi, i64 %.0.i31
  store <3 x i64> %.sroa.0333.0.copyload, ptr %i.fj, align 8
  br label %.critedge

bb.p:                                             ; preds = %bb.j
  %i.fk = add i64 %.0221, %.sroa.39.0             ; 3 uses
  %i.fl = load i64, ptr %i.ae, align 8, !tbaa !168, !noalias !4182 ; 3 uses
  %.not.i.i32 = icmp ult i64 %i.fk, %i.fl
  br i1 %.not.i.i32, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEplERKm.exit35.preheader, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.fm = mul i64 %i.fl, %.sroa.19.0
  %i.fn = add i64 %i.fm, %i.fk                    ; 2 uses
  %i.fo = zext i64 %i.fn to i128
  %i.fp = load i64, ptr %i.cj, align 8, !tbaa !1232, !noalias !4182
  %i.fq = zext i64 %i.fp to i128
  %i.fr = mul nuw i128 %i.fq, %i.fo
  %i.fs = lshr i128 %i.fr, 64
  %i.ft = trunc nuw i128 %i.fs to i64             ; 2 uses
  %i.fu = mul i64 %i.fl, %i.ft
  %i.fv = sub i64 %i.fn, %i.fu
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEplERKm.exit35.preheader

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEplERKm.exit35.preheader: ; preds = %bb.p, %bb.q
  %.sroa.6109.0241.ph = phi i64 [ %i.ft, %bb.q ], [ %.sroa.19.0, %bb.p ]
  %.sroa.10.0240.ph = phi i64 [ %i.fv, %bb.q ], [ %i.fk, %bb.p ]
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEplERKm.exit35

bb.r:                                             ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEplERKm.exit35
  %i.fw = urem i64 %.0220, %.0221                 ; 2 uses
  %.not11 = icmp eq i64 %i.fw, 0
  br i1 %.not11, label %.critedge, label %bb.s

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEplERKm.exit35: ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEplERKm.exit35.preheader, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEplERKm.exit35
  %.07244 = phi i64 [ %i.gp, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEplERKm.exit35 ], [ 0, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEplERKm.exit35.preheader ]
  %.sroa.39.1243 = phi i64 [ %i.gj, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEplERKm.exit35 ], [ %.sroa.39.0, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEplERKm.exit35.preheader ] ; 2 uses
  %.sroa.19.1242 = phi i64 [ %i.gi, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEplERKm.exit35 ], [ %.sroa.19.0, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEplERKm.exit35.preheader ] ; 2 uses
  %.sroa.6109.0241 = phi i64 [ %i.gn, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEplERKm.exit35 ], [ %.sroa.6109.0241.ph, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEplERKm.exit35.preheader ] ; 2 uses
  %.sroa.10.0240 = phi i64 [ %i.go, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEplERKm.exit35 ], [ %.sroa.10.0240.ph, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEplERKm.exit35.preheader ] ; 2 uses
  %i.fx = load ptr, ptr %i.ck, align 8, !tbaa !1246 ; 2 uses
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %.sroa.19.1242
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !1051
  %i.ga = getelementptr inbounds nuw [24 x i8], ptr %i.fz, i64 %.sroa.39.1243 ; 2 uses
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %.sroa.6109.0241
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !1051
  %i.gd = getelementptr inbounds nuw [24 x i8], ptr %i.gc, i64 %.sroa.10.0240 ; 2 uses
  %.sroa.0337.0.copyload = load <3 x i64>, ptr %i.ga, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ga, ptr noundef nonnull align 8 dereferenceable(24) %i.gd, i64 24, i1 false)
  store <3 x i64> %.sroa.0337.0.copyload, ptr %i.gd, align 8
  %i.ge = add i64 %.sroa.39.1243, 1               ; 2 uses
  %i.gf = load i64, ptr %i.ae, align 8, !tbaa !168 ; 2 uses
  %i.gg = icmp eq i64 %i.ge, %i.gf                ; 2 uses
  %i.gh = zext i1 %i.gg to i64
  %i.gi = add i64 %.sroa.19.1242, %i.gh           ; 2 uses
  %i.gj = select i1 %i.gg, i64 0, i64 %i.ge       ; 2 uses
  %i.gk = add i64 %.sroa.10.0240, 1               ; 2 uses
  %i.gl = icmp eq i64 %i.gk, %i.gf                ; 2 uses
  %i.gm = zext i1 %i.gl to i64
  %i.gn = add i64 %.sroa.6109.0241, %i.gm
  %i.go = select i1 %i.gl, i64 0, i64 %i.gk
  %i.gp = add nuw i64 %.07244, 1                  ; 2 uses
  %exitcond255.not = icmp eq i64 %i.gp, %i.cl
  br i1 %exitcond255.not, label %bb.r, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEplERKm.exit35, !llvm.loop !4185

bb.s:                                             ; preds = %bb.r
  %i.gq = sub i64 %.0221, %i.fw
  br label %.backedge

bb.t:                                             ; preds = %bb.i
  %i.gr = icmp eq i64 %i.cl, 1
  br i1 %i.gr, label %bb.u, label %bb.aa

bb.u:                                             ; preds = %bb.t
  %i.gs = add i64 %.0220, %.sroa.39.0             ; 7 uses
  %i.gt = load i64, ptr %i.ae, align 8, !tbaa !168, !noalias !4186 ; 14 uses
  %.not.i.i36 = icmp ult i64 %i.gs, %i.gt         ; 3 uses
  br i1 %.not.i.i36, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEplERKm.exit39, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.gu = mul i64 %i.gt, %.sroa.19.0
  %i.gv = add i64 %i.gu, %i.gs                    ; 2 uses
  %i.gw = zext i64 %i.gv to i128
  %i.gx = load i64, ptr %i.cj, align 8, !tbaa !1232, !noalias !4186
  %i.gy = zext i64 %i.gx to i128
  %i.gz = mul nuw i128 %i.gy, %i.gw
  %i.ha = lshr i128 %i.gz, 64
  %i.hb = trunc nuw i128 %i.ha to i64             ; 2 uses
  %i.hc = mul i64 %i.gt, %i.hb
  %i.hd = sub i64 %i.gv, %i.hc
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEplERKm.exit39

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEplERKm.exit39: ; preds = %bb.u, %bb.v
  %.05.i37 = phi i64 [ %.sroa.19.0, %bb.u ], [ %i.hb, %bb.v ] ; 2 uses
  %.0.i38 = phi i64 [ %i.gs, %bb.u ], [ %i.hd, %bb.v ]
  %i.he = add i64 %.0.i38, -1                     ; 3 uses
  %.not.i.i40 = icmp ult i64 %i.he, %i.gt
  br i1 %.not.i.i40, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEmiERKm.exit43, label %bb.w

bb.w:                                             ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEplERKm.exit39
  %i.hf = mul i64 %.05.i37, %i.gt
  %i.hg = add i64 %i.he, %i.hf                    ; 2 uses
  %i.hh = zext i64 %i.hg to i128
  %i.hi = load i64, ptr %i.cj, align 8, !tbaa !1232, !noalias !4189
  %i.hj = zext i64 %i.hi to i128
  %i.hk = mul nuw i128 %i.hj, %i.hh
  %i.hl = lshr i128 %i.hk, 64
  %i.hm = trunc nuw i128 %i.hl to i64             ; 2 uses
  %i.hn = mul i64 %i.gt, %i.hm
  %i.ho = sub i64 %i.hg, %i.hn
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEmiERKm.exit43

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEmiERKm.exit43: ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEplERKm.exit39, %bb.w
  %.05.i41 = phi i64 [ %.05.i37, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEplERKm.exit39 ], [ %i.hm, %bb.w ]
  %.0.i42 = phi i64 [ %i.he, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEplERKm.exit39 ], [ %i.ho, %bb.w ]
  %i.hp = load ptr, ptr %i.ck, align 8, !tbaa !1246 ; 2 uses
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.hp, i64 %.05.i41
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !1051
  %i.hs = getelementptr inbounds nuw [24 x i8], ptr %i.hr, i64 %.0.i42
  %.sroa.0.0.copyload = load <3 x i64>, ptr %i.hs, align 8
  br i1 %.not.i.i36, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEplERKm.exit47, label %bb.x

bb.x:                                             ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEmiERKm.exit43
  %i.ht = mul i64 %i.gt, %.sroa.19.0
  %i.hu = add i64 %i.ht, %i.gs                    ; 2 uses
  %i.hv = zext i64 %i.hu to i128
  %i.hw = load i64, ptr %i.cj, align 8, !tbaa !1232, !noalias !4192
  %i.hx = zext i64 %i.hw to i128
  %i.hy = mul nuw i128 %i.hx, %i.hv
  %i.hz = lshr i128 %i.hy, 64
  %i.ia = trunc nuw i128 %i.hz to i64             ; 2 uses
  %i.ib = mul i64 %i.gt, %i.ia
  %i.ic = sub i64 %i.hu, %i.ib
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEplERKm.exit47

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEplERKm.exit47: ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEmiERKm.exit43, %bb.x
  %.05.i45 = phi i64 [ %.sroa.19.0, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEmiERKm.exit43 ], [ %i.ia, %bb.x ] ; 2 uses
  %.0.i46 = phi i64 [ %i.gs, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEmiERKm.exit43 ], [ %i.ic, %bb.x ]
  %i.id = add i64 %.0.i46, -1                     ; 3 uses
  %.not.i.i48 = icmp ult i64 %i.id, %i.gt
  br i1 %.not.i.i48, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEmiERKm.exit51, label %bb.y

bb.y:                                             ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEplERKm.exit47
  %i.ie = mul i64 %.05.i45, %i.gt
  %i.if = add i64 %i.id, %i.ie                    ; 2 uses
  %i.ig = zext i64 %i.if to i128
  %i.ih = load i64, ptr %i.cj, align 8, !tbaa !1232, !noalias !4195
  %i.ii = zext i64 %i.ih to i128
  %i.ij = mul nuw i128 %i.ii, %i.ig
  %i.ik = lshr i128 %i.ij, 64
  %i.il = trunc nuw i128 %i.ik to i64             ; 2 uses
  %i.im = mul i64 %i.gt, %i.il
  %i.in = sub i64 %i.if, %i.im
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEmiERKm.exit51

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEmiERKm.exit51: ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEplERKm.exit47, %bb.y
  %.05.i49 = phi i64 [ %.05.i45, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEplERKm.exit47 ], [ %i.il, %bb.y ] ; 2 uses
  %.0.i50 = phi i64 [ %i.id, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEplERKm.exit47 ], [ %i.in, %bb.y ] ; 2 uses
  br i1 %.not.i.i36, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEplERKm.exit55, label %bb.z

bb.z:                                             ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEmiERKm.exit51
  %i.io = mul i64 %i.gt, %.sroa.19.0
  %i.ip = add i64 %i.io, %i.gs                    ; 2 uses
  %i.iq = zext i64 %i.ip to i128
  %i.ir = load i64, ptr %i.cj, align 8, !tbaa !1232, !noalias !4198
  %i.is = zext i64 %i.ir to i128
  %i.it = mul nuw i128 %i.is, %i.iq
  %i.iu = lshr i128 %i.it, 64
  %i.iv = trunc nuw i128 %i.iu to i64             ; 2 uses
  %i.iw = mul i64 %i.gt, %i.iv
  %i.ix = sub i64 %i.ip, %i.iw
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEplERKm.exit55

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEplERKm.exit55: ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEmiERKm.exit51, %bb.z
  %.05.i53 = phi i64 [ %.sroa.19.0, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEmiERKm.exit51 ], [ %i.iv, %bb.z ]
  %.0.i54 = phi i64 [ %i.gs, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEmiERKm.exit51 ], [ %i.ix, %bb.z ]
  %reass.add = sub i64 %.05.i49, %.sroa.19.0
  %reass.mul = mul i64 %reass.add, %i.gt
  %i.iy = sub i64 %.0.i50, %.sroa.39.0
  %i.iz = add i64 %i.iy, %reass.mul               ; 2 uses
  %.not5.i.i.i.i.i = icmp eq i64 %i.iz, 0
  br i1 %.not5.i.i.i.i.i, label %_ZSt13move_backwardIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE3EEEEES9_ET0_T_SB_SA_.exit, label %.lr.ph.i.i.i.i.i57

.lr.ph.i.i.i.i.i57:                               ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEplERKm.exit55, %.lr.ph.i.i.i.i.i57
  %.sroa.36.0.i.i.i.i = phi i64 [ %i.jc, %.lr.ph.i.i.i.i.i57 ], [ %.05.i49, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEplERKm.exit55 ]
  %.sroa.7.0.i.i.i.i = phi i64 [ %i.jo, %.lr.ph.i.i.i.i.i57 ], [ %.0.i54, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEplERKm.exit55 ] ; 2 uses
  %.sroa.3.0.i.i.i.i58 = phi i64 [ %i.jm, %.lr.ph.i.i.i.i.i57 ], [ %.05.i53, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEplERKm.exit55 ]
  %.sroa.78.0.i.i.i.i = phi i64 [ %i.jf, %.lr.ph.i.i.i.i.i57 ], [ %.0.i50, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEplERKm.exit55 ] ; 2 uses
  %.06.i.i.i.i.i = phi i64 [ %i.js, %.lr.ph.i.i.i.i.i57 ], [ %i.iz, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEplERKm.exit55 ]
  %i.ja = add i64 %.sroa.78.0.i.i.i.i, -1
  %i.jb = icmp eq i64 %.sroa.78.0.i.i.i.i, 0      ; 2 uses
  %.neg.i.i.i.i.i.i.i = sext i1 %i.jb to i64
  %i.jc = add i64 %.sroa.36.0.i.i.i.i, %.neg.i.i.i.i.i.i.i ; 2 uses
  %i.jd = load i64, ptr %i.ae, align 8, !tbaa !168, !noalias !4201 ; 2 uses
  %i.je = select i1 %i.jb, i64 %i.jd, i64 0
  %i.jf = add i64 %i.ja, %i.je                    ; 2 uses
  %i.jg = load ptr, ptr %i.ck, align 8, !tbaa !1246, !noalias !4201 ; 2 uses
  %i.jh = getelementptr inbounds nuw [8 x i8], ptr %i.jg, i64 %i.jc
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !1051, !noalias !4201
  %i.jj = getelementptr inbounds nuw [24 x i8], ptr %i.ji, i64 %i.jf
  %i.jk = add i64 %.sroa.7.0.i.i.i.i, -1
  %i.jl = icmp eq i64 %.sroa.7.0.i.i.i.i, 0       ; 2 uses
  %.neg.i.i2.i.i.i.i.i = sext i1 %i.jl to i64
  %i.jm = add i64 %.sroa.3.0.i.i.i.i58, %.neg.i.i2.i.i.i.i.i ; 2 uses
  %i.jn = select i1 %i.jl, i64 %i.jd, i64 0
  %i.jo = add i64 %i.jk, %i.jn                    ; 2 uses
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %i.jg, i64 %i.jm
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !1051, !noalias !4201
  %i.jr = getelementptr inbounds nuw [24 x i8], ptr %i.jq, i64 %i.jo
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jr, ptr noundef nonnull align 8 dereferenceable(24) %i.jj, i64 24, i1 false), !noalias !4201
  %i.js = add i64 %.06.i.i.i.i.i, -1              ; 2 uses
  %.not.i.i.i.i.i59 = icmp eq i64 %i.js, 0
  br i1 %.not.i.i.i.i.i59, label %_ZSt13move_backwardIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE3EEEEES9_ET0_T_SB_SA_.exit.loopexit, label %.lr.ph.i.i.i.i.i57, !llvm.loop !4212

_ZSt13move_backwardIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE3EEEEES9_ET0_T_SB_SA_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i57
  %.pre = load ptr, ptr %i.ck, align 8, !tbaa !1246
  br label %_ZSt13move_backwardIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE3EEEEES9_ET0_T_SB_SA_.exit

_ZSt13move_backwardIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE3EEEEES9_ET0_T_SB_SA_.exit: ; preds = %_ZSt13move_backwardIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE3EEEEES9_ET0_T_SB_SA_.exit.loopexit, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEplERKm.exit55
  %i.jt = phi ptr [ %.pre, %_ZSt13move_backwardIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE3EEEEES9_ET0_T_SB_SA_.exit.loopexit ], [ %i.hp, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEplERKm.exit55 ]
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %i.jt, i64 %.sroa.19.0
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !1051
  %i.jw = getelementptr inbounds nuw [24 x i8], ptr %i.jv, i64 %.sroa.39.0
  store <3 x i64> %.sroa.0.0.copyload, ptr %i.jw, align 8
  br label %.critedge

bb.aa:                                            ; preds = %bb.t
  %i.jx = add i64 %.0220, %.sroa.39.0             ; 3 uses
  %i.jy = load i64, ptr %i.ae, align 8, !tbaa !168, !noalias !4213 ; 6 uses
  %.not.i.i60 = icmp ult i64 %i.jx, %i.jy
  br i1 %.not.i.i60, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEplERKm.exit63, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.jz = mul i64 %i.jy, %.sroa.19.0
  %i.ka = add i64 %i.jz, %i.jx                    ; 2 uses
  %i.kb = zext i64 %i.ka to i128
  %i.kc = load i64, ptr %i.cj, align 8, !tbaa !1232, !noalias !4213
  %i.kd = zext i64 %i.kc to i128
  %i.ke = mul nuw i128 %i.kd, %i.kb
  %i.kf = lshr i128 %i.ke, 64
  %i.kg = trunc nuw i128 %i.kf to i64             ; 2 uses
  %i.kh = mul i64 %i.jy, %i.kg
  %i.ki = sub i64 %i.ka, %i.kh
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEplERKm.exit63

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEplERKm.exit63: ; preds = %bb.aa, %bb.ab
  %.05.i61 = phi i64 [ %.sroa.19.0, %bb.aa ], [ %i.kg, %bb.ab ] ; 3 uses
  %.0.i62 = phi i64 [ %i.jx, %bb.aa ], [ %i.ki, %bb.ab ] ; 2 uses
  %i.kj = sub i64 %.0.i62, %i.cl                  ; 3 uses
  %.not.i.i64 = icmp ult i64 %i.kj, %i.jy
  br i1 %.not.i.i64, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEmiERKm.exit67, label %bb.ac

bb.ac:                                            ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEplERKm.exit63
  %i.kk = mul i64 %.05.i61, %i.jy
  %i.kl = add i64 %i.kj, %i.kk                    ; 2 uses
  %i.km = zext i64 %i.kl to i128
  %i.kn = load i64, ptr %i.cj, align 8, !tbaa !1232, !noalias !4216
  %i.ko = zext i64 %i.kn to i128
  %i.kp = mul nuw i128 %i.ko, %i.km
  %i.kq = lshr i128 %i.kp, 64
  %i.kr = trunc nuw i128 %i.kq to i64             ; 2 uses
  %i.ks = mul i64 %i.jy, %i.kr
  %i.kt = sub i64 %i.kl, %i.ks
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEmiERKm.exit67

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEmiERKm.exit67: ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEplERKm.exit63, %bb.ac
  %.05.i65 = phi i64 [ %.05.i61, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEplERKm.exit63 ], [ %i.kr, %bb.ac ] ; 2 uses
end_hunk_10
begin_hunk_11_@_ZN14duckdb_pdqsort14pdqsort_detail26partition_right_branchlessIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE4EEEEEZN15duckdb_ska_sort6detail15StdSortFallbackISB_KNS2_13SkaExtractKeyISA_EEEEvT_SI_RT0_EUlRKSA_SM_E_EESt4pairISI_bESI_SI_SJ_:bb.a
  %i.vt = load i64, ptr %i.vs, align 8, !tbaa !168 ; 2 uses
  %i.vu = icmp ult i64 %i.vt, %.sroa.46.0.copyload
  br i1 %i.vu, label %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE4EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit132, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.vv = icmp eq i64 %i.vt, %.sroa.46.0.copyload
  br i1 %i.vv, label %bb.de, label %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE4EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit132

bb.de:                                            ; preds = %bb.dd
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vk, i64 24
  %.val.val.i.i.i.i.i130 = load i64, ptr %i.vw, align 8, !tbaa !168
  %i.vx = icmp ult i64 %.val.val.i.i.i.i.i130, %.sroa.67.0.copyload
  %i.vy = zext i1 %i.vx to i64
  br label %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE4EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit132

_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE4EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit132: ; preds = %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE4EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit128, %bb.cz, %bb.da, %bb.db, %bb.dc, %bb.dd, %bb.de
  %i.vz = phi i64 [ 1, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE4EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit128 ], [ 0, %bb.cz ], [ 1, %bb.da ], [ 0, %bb.db ], [ 1, %bb.dc ], [ 0, %bb.dd ], [ %i.vy, %bb.de ]
  %i.wa = add i64 %i.vz, %i.uy                    ; 2 uses
  %i.wb = or disjoint i8 %.064609, 7
  %i.wc = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.wa
  store i8 %i.wb, ptr %i.wc, align 1, !tbaa !527
  %i.wd = add i64 %i.vg, -1
  %i.we = icmp eq i64 %i.vg, 0                    ; 2 uses
  %.neg.i.i133 = sext i1 %i.we to i64
  %i.wf = add i64 %i.vd, %.neg.i.i133             ; 2 uses
  %i.wg = load i64, ptr %i.ey, align 8, !tbaa !168
  %i.wh = select i1 %i.we, i64 %i.wg, i64 0
  %i.wi = add i64 %i.wd, %i.wh                    ; 3 uses
  %i.wj = load ptr, ptr %i.eb, align 8, !tbaa !1246
  %i.wk = getelementptr inbounds nuw [8 x i8], ptr %i.wj, i64 %i.wf
  %i.wl = load ptr, ptr %i.wk, align 8, !tbaa !1051
  %i.wm = getelementptr inbounds nuw [32 x i8], ptr %i.wl, i64 %i.wi ; 4 uses
  %i.wn = load i64, ptr %i.wm, align 8, !tbaa !168 ; 2 uses
  %i.wo = icmp ult i64 %i.wn, %.sroa.0442.0.copyload
  br i1 %i.wo, label %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE4EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit136, label %bb.df

bb.df:                                            ; preds = %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE4EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit132
  %i.wp = icmp eq i64 %i.wn, %.sroa.0442.0.copyload
  br i1 %i.wp, label %bb.dg, label %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE4EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit136

bb.dg:                                            ; preds = %bb.df
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wm, i64 8
  %i.wr = load i64, ptr %i.wq, align 8, !tbaa !168 ; 2 uses
  %i.ws = icmp ult i64 %i.wr, %.sroa.25.0.copyload
  br i1 %i.ws, label %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE4EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit136, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.wt = icmp eq i64 %i.wr, %.sroa.25.0.copyload
  br i1 %i.wt, label %bb.di, label %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE4EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit136

bb.di:                                            ; preds = %bb.dh
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wm, i64 16
  %i.wv = load i64, ptr %i.wu, align 8, !tbaa !168 ; 2 uses
  %i.ww = icmp ult i64 %i.wv, %.sroa.46.0.copyload
  br i1 %i.ww, label %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE4EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit136, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.wx = icmp eq i64 %i.wv, %.sroa.46.0.copyload
  br i1 %i.wx, label %bb.dk, label %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE4EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit136

bb.dk:                                            ; preds = %bb.dj
  %i.wy = getelementptr inbounds nuw i8, ptr %i.wm, i64 24
  %.val.val.i.i.i.i.i134 = load i64, ptr %i.wy, align 8, !tbaa !168
  %i.wz = icmp ult i64 %.val.val.i.i.i.i.i134, %.sroa.67.0.copyload
  %i.xa = zext i1 %i.wz to i64
  br label %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE4EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit136

_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE4EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit136: ; preds = %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE4EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit132, %bb.df, %bb.dg, %bb.dh, %bb.di, %bb.dj, %bb.dk
  %i.xb = phi i64 [ 1, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE4EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit132 ], [ 0, %bb.df ], [ 1, %bb.dg ], [ 0, %bb.dh ], [ 1, %bb.di ], [ 0, %bb.dj ], [ %i.xa, %bb.dk ]
  %i.xc = add i64 %i.xb, %i.wa                    ; 2 uses
  %i.xd = add nuw nsw i8 %.064609, 8              ; 2 uses
  %i.xe = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.xc
  store i8 %i.xd, ptr %i.xe, align 1, !tbaa !527
  %i.xf = add i64 %i.wi, -1
  %i.xg = icmp eq i64 %i.wi, 0                    ; 2 uses
  %.neg.i.i137 = sext i1 %i.xg to i64
  %i.xh = add i64 %i.wf, %.neg.i.i137             ; 3 uses
  %i.xi = load i64, ptr %i.ey, align 8, !tbaa !168
  %i.xj = select i1 %i.xg, i64 %i.xi, i64 0
  %i.xk = add i64 %i.xf, %i.xj                    ; 3 uses
  %i.xl = load ptr, ptr %i.eb, align 8, !tbaa !1246
  %i.xm = getelementptr inbounds nuw [8 x i8], ptr %i.xl, i64 %i.xh
  %i.xn = load ptr, ptr %i.xm, align 8, !tbaa !1051
  %i.xo = getelementptr inbounds nuw [32 x i8], ptr %i.xn, i64 %i.xk ; 4 uses
  %i.xp = load i64, ptr %i.xo, align 8, !tbaa !168 ; 2 uses
  %i.xq = icmp ult i64 %i.xp, %.sroa.0442.0.copyload
  br i1 %i.xq, label %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE4EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit140, label %bb.dl

bb.dl:                                            ; preds = %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE4EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit136
  %i.xr = icmp eq i64 %i.xp, %.sroa.0442.0.copyload
  br i1 %i.xr, label %bb.dm, label %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE4EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit140

bb.dm:                                            ; preds = %bb.dl
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xo, i64 8
  %i.xt = load i64, ptr %i.xs, align 8, !tbaa !168 ; 2 uses
  %i.xu = icmp ult i64 %i.xt, %.sroa.25.0.copyload
  br i1 %i.xu, label %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE4EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit140, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.xv = icmp eq i64 %i.xt, %.sroa.25.0.copyload
  br i1 %i.xv, label %bb.do, label %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE4EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit140

bb.do:                                            ; preds = %bb.dn
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xo, i64 16
  %i.xx = load i64, ptr %i.xw, align 8, !tbaa !168 ; 2 uses
  %i.xy = icmp ult i64 %i.xx, %.sroa.46.0.copyload
  br i1 %i.xy, label %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE4EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit140, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.xz = icmp eq i64 %i.xx, %.sroa.46.0.copyload
  br i1 %i.xz, label %bb.dq, label %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE4EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit140

bb.dq:                                            ; preds = %bb.dp
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xo, i64 24
  %.val.val.i.i.i.i.i138 = load i64, ptr %i.ya, align 8, !tbaa !168
  %i.yb = icmp ult i64 %.val.val.i.i.i.i.i138, %.sroa.67.0.copyload
  %i.yc = zext i1 %i.yb to i64
  br label %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE4EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit140

_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE4EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit140: ; preds = %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE4EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit136, %bb.dl, %bb.dm, %bb.dn, %bb.do, %bb.dp, %bb.dq
  %i.yd = phi i64 [ 1, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE4EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit136 ], [ 0, %bb.dl ], [ 1, %bb.dm ], [ 0, %bb.dn ], [ 1, %bb.do ], [ 0, %bb.dp ], [ %i.yc, %bb.dq ]
  %i.ye = add i64 %i.yd, %i.xc                    ; 2 uses
  %i.yf = icmp samesign ult i8 %.064609, 56
  br i1 %i.yf, label %.preheader, label %.loopexit542, !llvm.loop !5066

.lr.ph602:                                        ; preds = %.lr.ph602.preheader, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE4EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit144
  %.0601 = phi i8 [ %i.yg, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE4EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit144 ], [ 0, %.lr.ph602.preheader ]
  %.sroa.76.5600 = phi i64 [ %i.yn, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE4EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit144 ], [ %.sroa.76.3617, %.lr.ph602.preheader ] ; 2 uses
  %.sroa.30.5599 = phi i64 [ %i.yk, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE4EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit144 ], [ %.sroa.30.3616, %.lr.ph602.preheader ]
  %.2598 = phi i64 [ %i.zh, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE4EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit144 ], [ %.0530615, %.lr.ph602.preheader ] ; 2 uses
  %i.yg = add nuw i8 %.0601, 1                    ; 3 uses
  %i.yh = getelementptr inbounds nuw i8, ptr %i.et, i64 %.2598
  store i8 %i.yg, ptr %i.yh, align 1, !tbaa !527
  %i.yi = add i64 %.sroa.76.5600, -1
  %i.yj = icmp eq i64 %.sroa.76.5600, 0           ; 2 uses
  %.neg.i.i141 = sext i1 %i.yj to i64
  %i.yk = add i64 %.sroa.30.5599, %.neg.i.i141    ; 3 uses
  %i.yl = load i64, ptr %i.ey, align 8, !tbaa !168
  %i.ym = select i1 %i.yj, i64 %i.yl, i64 0
  %i.yn = add i64 %i.yi, %i.ym                    ; 3 uses
  %i.yo = load ptr, ptr %i.eb, align 8, !tbaa !1246
  %i.yp = getelementptr inbounds nuw [8 x i8], ptr %i.yo, i64 %i.yk
  %i.yq = load ptr, ptr %i.yp, align 8, !tbaa !1051
  %i.yr = getelementptr inbounds nuw [32 x i8], ptr %i.yq, i64 %i.yn ; 4 uses
  %i.ys = load i64, ptr %i.yr, align 8, !tbaa !168 ; 2 uses
  %i.yt = icmp ult i64 %i.ys, %.sroa.0442.0.copyload
  br i1 %i.yt, label %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE4EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit144, label %bb.dr

bb.dr:                                            ; preds = %.lr.ph602
  %i.yu = icmp eq i64 %i.ys, %.sroa.0442.0.copyload
  br i1 %i.yu, label %bb.ds, label %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE4EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit144

bb.ds:                                            ; preds = %bb.dr
  %i.yv = getelementptr inbounds nuw i8, ptr %i.yr, i64 8
  %i.yw = load i64, ptr %i.yv, align 8, !tbaa !168 ; 2 uses
  %i.yx = icmp ult i64 %i.yw, %.sroa.25.0.copyload
  br i1 %i.yx, label %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE4EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit144, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.yy = icmp eq i64 %i.yw, %.sroa.25.0.copyload
  br i1 %i.yy, label %bb.du, label %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE4EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit144

bb.du:                                            ; preds = %bb.dt
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yr, i64 16
  %i.za = load i64, ptr %i.yz, align 8, !tbaa !168 ; 2 uses
  %i.zb = icmp ult i64 %i.za, %.sroa.46.0.copyload
  br i1 %i.zb, label %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE4EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit144, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.zc = icmp eq i64 %i.za, %.sroa.46.0.copyload
  br i1 %i.zc, label %bb.dw, label %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE4EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit144

bb.dw:                                            ; preds = %bb.dv
  %i.zd = getelementptr inbounds nuw i8, ptr %i.yr, i64 24
  %.val.val.i.i.i.i.i142 = load i64, ptr %i.zd, align 8, !tbaa !168
  %i.ze = icmp ult i64 %.val.val.i.i.i.i.i142, %.sroa.67.0.copyload
  %i.zf = zext i1 %i.ze to i64
  br label %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE4EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit144

_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE4EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit144: ; preds = %.lr.ph602, %bb.dr, %bb.ds, %bb.dt, %bb.du, %bb.dv, %bb.dw
  %i.zg = phi i64 [ 1, %.lr.ph602 ], [ 0, %bb.dr ], [ 1, %bb.ds ], [ 0, %bb.dt ], [ 1, %bb.du ], [ 0, %bb.dv ], [ %i.zf, %bb.dw ]
  %i.zh = add i64 %i.zg, %.2598                   ; 2 uses
  %i.zi = icmp ult i8 %i.yg, %i.po
  br i1 %i.zi, label %.lr.ph602, label %.loopexit542, !llvm.loop !5067

.loopexit542:                                     ; preds = %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE4EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit144, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE4EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit140, %.preheader543
  %.3 = phi i64 [ %i.ye, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE4EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit140 ], [ %.0530615, %.preheader543 ], [ %i.zh, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE4EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit144 ] ; 4 uses
  %.sroa.30.6 = phi i64 [ %i.xh, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE4EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit140 ], [ %.sroa.30.3616, %.preheader543 ], [ %i.yk, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE4EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit144 ] ; 5 uses
  %.sroa.76.6 = phi i64 [ %i.xk, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE4EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit140 ], [ %.sroa.76.3617, %.preheader543 ], [ %i.yn, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE4EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit144 ] ; 4 uses
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %.3, i64 %.3535) ; 5 uses
  store ptr %i.c, ptr %3, align 8, !tbaa !1304
  store i64 %.sroa.5247.0611, ptr %i.ez, align 8, !tbaa !1301
  store i64 %.sroa.9249.0610, ptr %i.fa, align 8, !tbaa !1303
  store ptr %i.m, ptr %4, align 8, !tbaa !1304
  store i64 %.sroa.5.0613, ptr %i.fb, align 8, !tbaa !1301
  store i64 %.sroa.9.0612, ptr %i.fc, align 8, !tbaa !1303
  %i.zj = getelementptr inbounds nuw i8, ptr %i.ep, i64 %.068620
  %i.zk = getelementptr inbounds nuw i8, ptr %i.et, i64 %.067621
  %i.zl = icmp eq i64 %.3535, %.3
  call void @_ZN14duckdb_pdqsort14pdqsort_detail12swap_offsetsIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE4EEEEEEEvT_SC_PhSD_mb(ptr noundef nonnull dead_on_return %3, ptr noundef nonnull dead_on_return %4, ptr noundef %i.zj, ptr noundef %i.zk, i64 noundef %.sroa.speculated, i1 noundef zeroext %i.zl)
  %i.zm = sub i64 %.3535, %.sroa.speculated       ; 3 uses
  %i.zn = sub i64 %.3, %.sroa.speculated          ; 4 uses
  %i.zo = add i64 %.sroa.speculated, %.068620
  %i.zp = add i64 %.sroa.speculated, %.067621
  %.not539 = icmp ugt i64 %.3535, %.3             ; 3 uses
  %.sroa.9249.1 = select i1 %.not539, i64 %.sroa.9249.0610, i64 %.sroa.78.4 ; 2 uses
  %.sroa.5247.1 = select i1 %.not539, i64 %.sroa.5247.0611, i64 %.sroa.31.4 ; 3 uses
  %.169 = select i1 %.not539, i64 %i.zo, i64 0    ; 2 uses
  %i.zq = icmp eq i64 %i.zn, 0                    ; 3 uses
  %.sroa.9.1 = select i1 %i.zq, i64 %.sroa.76.6, i64 %.sroa.9.0612 ; 2 uses
  %.sroa.5.1 = select i1 %i.zq, i64 %.sroa.30.6, i64 %.sroa.5.0613 ; 3 uses
  %.1 = select i1 %i.zq, i64 0, i64 %i.zp         ; 2 uses
  %i.zr = icmp eq i64 %.sroa.31.4, %.sroa.30.6
  %i.zs = icmp ult i64 %.sroa.78.4, %.sroa.76.6
  %i.zt = icmp ult i64 %.sroa.31.4, %.sroa.30.6
  %i.zu = select i1 %i.zr, i1 %i.zs, i1 %i.zt
  br i1 %i.zu, label %bb.s, label %._crit_edge, !llvm.loop !5068

._crit_edge:                                      ; preds = %.loopexit542
  %.not = icmp eq i64 %i.zm, 0
  br i1 %.not, label %.loopexit541, label %bb.dx

bb.dx:                                            ; preds = %._crit_edge
  %i.zv = getelementptr inbounds nuw i8, ptr %i.ep, i64 %.169
  %i.zw = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.zx = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dx, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEplERKm.exit
  %.in = phi i64 [ %i.zm, %bb.dx ], [ %i.zy, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEplERKm.exit ]
  %.sroa.76.7636 = phi i64 [ %.sroa.76.6, %bb.dx ], [ %i.aat, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEplERKm.exit ] ; 2 uses
  %.sroa.30.7635 = phi i64 [ %.sroa.30.6, %bb.dx ], [ %i.aaq, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEplERKm.exit ]
  %i.zy = add i64 %.in, -1                        ; 3 uses
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zv, i64 %i.zy
  %i.aaa = load i8, ptr %i.zz, align 1, !tbaa !527
  %i.aab = zext i8 %i.aaa to i64
  %i.aac = add i64 %.sroa.9249.1, %i.aab          ; 3 uses
  %i.aad = load i64, ptr %i.r, align 8, !tbaa !168, !noalias !5069 ; 3 uses
  %.not.i.i145 = icmp ult i64 %i.aac, %i.aad
  br i1 %.not.i.i145, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEplERKm.exit, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.aae = mul i64 %i.aad, %.sroa.5247.1
  %i.aaf = add i64 %i.aae, %i.aac                 ; 2 uses
  %i.aag = zext i64 %i.aaf to i128
  %i.aah = load i64, ptr %i.zx, align 8, !tbaa !1232, !noalias !5069
  %i.aai = zext i64 %i.aah to i128
  %i.aaj = mul nuw i128 %i.aai, %i.aag
  %i.aak = lshr i128 %i.aaj, 64
  %i.aal = trunc nuw i128 %i.aak to i64           ; 2 uses
  %i.aam = mul i64 %i.aad, %i.aal
  %i.aan = sub i64 %i.aaf, %i.aam
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEplERKm.exit

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEplERKm.exit: ; preds = %bb.dy, %bb.dz
  %.05.i146 = phi i64 [ %.sroa.5247.1, %bb.dy ], [ %i.aal, %bb.dz ]
  %.0.i147 = phi i64 [ %i.aac, %bb.dy ], [ %i.aan, %bb.dz ]
  %i.aao = add i64 %.sroa.76.7636, -1
  %i.aap = icmp eq i64 %.sroa.76.7636, 0          ; 2 uses
  %.neg.i.i148 = sext i1 %i.aap to i64
  %i.aaq = add i64 %.sroa.30.7635, %.neg.i.i148   ; 3 uses
  %i.aar = load i64, ptr %i.zw, align 8, !tbaa !168
  %i.aas = select i1 %i.aap, i64 %i.aar, i64 0
  %i.aat = add i64 %i.aao, %i.aas                 ; 3 uses
  %i.aau = load ptr, ptr %i.f, align 8, !tbaa !1246
  %i.aav = getelementptr inbounds nuw [8 x i8], ptr %i.aau, i64 %.05.i146
  %i.aaw = load ptr, ptr %i.aav, align 8, !tbaa !1051
  %i.aax = getelementptr inbounds nuw [32 x i8], ptr %i.aaw, i64 %.0.i147 ; 2 uses
  %i.aay = load ptr, ptr %i.eb, align 8, !tbaa !1246
  %i.aaz = getelementptr inbounds nuw [8 x i8], ptr %i.aay, i64 %i.aaq
  %i.aba = load ptr, ptr %i.aaz, align 8, !tbaa !1051
  %i.abb = getelementptr inbounds nuw [32 x i8], ptr %i.aba, i64 %i.aat ; 2 uses
  %.sroa.0853.0.copyload = load <4 x i64>, ptr %i.aax, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aax, ptr noundef nonnull align 8 dereferenceable(32) %i.abb, i64 32, i1 false)
  store <4 x i64> %.sroa.0853.0.copyload, ptr %i.abb, align 8
  %.not72 = icmp eq i64 %i.zy, 0
  br i1 %.not72, label %.loopexit541, label %bb.dy, !llvm.loop !5072

.loopexit541:                                     ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEplERKm.exit, %._crit_edge
  %.sroa.31.5 = phi i64 [ %.sroa.31.4, %._crit_edge ], [ %i.aaq, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEplERKm.exit ] ; 2 uses
  %.sroa.78.5 = phi i64 [ %.sroa.78.4, %._crit_edge ], [ %i.aat, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEplERKm.exit ] ; 2 uses
  %.not73 = icmp eq i64 %i.zn, 0
  br i1 %.not73, label %.loopexit541..loopexit_crit_edge, label %bb.ea

.loopexit541..loopexit_crit_edge:                 ; preds = %bb.r, %.loopexit541
  %.sroa.78.5773 = phi i64 [ %.sroa.78.5, %.loopexit541 ], [ %i.el, %bb.r ]
  %.sroa.31.5772 = phi i64 [ %.sroa.31.5, %.loopexit541 ], [ %i.ek, %bb.r ]
  %.pre.pre = load i64, ptr %i.r, align 8, !tbaa !168, !noalias !5073
  br label %.loopexit

bb.ea:                                            ; preds = %.loopexit541
  %i.abc = getelementptr inbounds nuw i8, ptr %i.et, i64 %.1
  %i.abd = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.abe = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  br label %bb.eb

bb.eb:                                            ; preds = %bb.ea, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEmiERKm.exit152
  %.in641 = phi i64 [ %i.zn, %bb.ea ], [ %i.abf, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEmiERKm.exit152 ]
  %.sroa.78.6638 = phi i64 [ %.sroa.78.5, %bb.ea ], [ %i.aci, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEmiERKm.exit152 ] ; 2 uses
  %.sroa.31.6637 = phi i64 [ %.sroa.31.5, %bb.ea ], [ %i.ach, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEmiERKm.exit152 ] ; 2 uses
  %i.abf = add i64 %.in641, -1                    ; 3 uses
  %i.abg = getelementptr inbounds nuw i8, ptr %i.abc, i64 %i.abf
  %i.abh = load i8, ptr %i.abg, align 1, !tbaa !527
  %i.abi = zext i8 %i.abh to i64
  %i.abj = sub i64 %.sroa.9.1, %i.abi             ; 3 uses
  %i.abk = load i64, ptr %i.abd, align 8, !tbaa !168, !noalias !5076 ; 3 uses
  %.not.i.i149 = icmp ult i64 %i.abj, %i.abk
  br i1 %.not.i.i149, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEmiERKm.exit152, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.abl = mul i64 %i.abk, %.sroa.5.1
  %i.abm = add i64 %i.abl, %i.abj                 ; 2 uses
  %i.abn = zext i64 %i.abm to i128
  %i.abo = load i64, ptr %i.abe, align 8, !tbaa !1232, !noalias !5076
  %i.abp = zext i64 %i.abo to i128
  %i.abq = mul nuw i128 %i.abp, %i.abn
  %i.abr = lshr i128 %i.abq, 64
  %i.abs = trunc nuw i128 %i.abr to i64           ; 2 uses
  %i.abt = mul i64 %i.abk, %i.abs
  %i.abu = sub i64 %i.abm, %i.abt
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEmiERKm.exit152

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEmiERKm.exit152: ; preds = %bb.eb, %bb.ec
  %.05.i150 = phi i64 [ %.sroa.5.1, %bb.eb ], [ %i.abs, %bb.ec ]
  %.0.i151 = phi i64 [ %i.abj, %bb.eb ], [ %i.abu, %bb.ec ]
  %i.abv = load ptr, ptr %i.eb, align 8, !tbaa !1246
  %i.abw = getelementptr inbounds nuw [8 x i8], ptr %i.abv, i64 %.05.i150
  %i.abx = load ptr, ptr %i.abw, align 8, !tbaa !1051
  %i.aby = getelementptr inbounds nuw [32 x i8], ptr %i.abx, i64 %.0.i151 ; 2 uses
  %i.abz = load ptr, ptr %i.f, align 8, !tbaa !1246
  %i.aca = getelementptr inbounds nuw [8 x i8], ptr %i.abz, i64 %.sroa.31.6637
  %i.acb = load ptr, ptr %i.aca, align 8, !tbaa !1051
  %i.acc = getelementptr inbounds nuw [32 x i8], ptr %i.acb, i64 %.sroa.78.6638 ; 2 uses
  %.sroa.0855.0.copyload = load <4 x i64>, ptr %i.aby, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aby, ptr noundef nonnull align 8 dereferenceable(32) %i.acc, i64 32, i1 false)
  store <4 x i64> %.sroa.0855.0.copyload, ptr %i.acc, align 8
  %i.acd = add i64 %.sroa.78.6638, 1              ; 2 uses
  %i.ace = load i64, ptr %i.r, align 8, !tbaa !168 ; 2 uses
  %i.acf = icmp eq i64 %i.acd, %i.ace             ; 2 uses
  %i.acg = zext i1 %i.acf to i64
  %i.ach = add i64 %.sroa.31.6637, %i.acg         ; 2 uses
  %i.aci = select i1 %i.acf, i64 0, i64 %i.acd    ; 2 uses
  %.not74 = icmp eq i64 %i.abf, 0
  br i1 %.not74, label %.loopexit, label %bb.eb, !llvm.loop !5079

.loopexit:                                        ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEmiERKm.exit152, %.loopexit541..loopexit_crit_edge
  %.pre = phi i64 [ %.pre.pre, %.loopexit541..loopexit_crit_edge ], [ %i.ace, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEmiERKm.exit152 ]
  %.sroa.31.7 = phi i64 [ %.sroa.31.5772, %.loopexit541..loopexit_crit_edge ], [ %i.ach, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEmiERKm.exit152 ]
  %.sroa.78.7 = phi i64 [ %.sroa.78.5773, %.loopexit541..loopexit_crit_edge ], [ %i.aci, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEmiERKm.exit152 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %.pre668 = add i64 %.sroa.78.7, -1
  br label %bb.ed

bb.ed:                                            ; preds = %.loopexit, %.critedge
  %.pre-phi = phi i64 [ %.pre668, %.loopexit ], [ %i.ao, %.critedge ] ; 3 uses
  %i.acj = phi i64 [ %.pre, %.loopexit ], [ %i.s, %.critedge ] ; 3 uses
  %.sroa.31.8 = phi i64 [ %.sroa.31.7, %.loopexit ], [ %i.w, %.critedge ] ; 2 uses
  %.not.i.i153 = icmp ult i64 %.pre-phi, %i.acj
  br i1 %.not.i.i153, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEmiERKm.exit156, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.ack = mul i64 %i.acj, %.sroa.31.8
  %i.acl = add i64 %i.ack, %.pre-phi              ; 2 uses
  %i.acm = zext i64 %i.acl to i128
  %i.acn = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.aco = load i64, ptr %i.acn, align 8, !tbaa !1232, !noalias !5073
  %i.acp = zext i64 %i.aco to i128
  %i.acq = mul nuw i128 %i.acp, %i.acm
  %i.acr = lshr i128 %i.acq, 64
  %i.acs = trunc nuw i128 %i.acr to i64           ; 2 uses
  %i.act = mul i64 %i.acj, %i.acs
  %i.acu = sub i64 %i.acl, %i.act
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEmiERKm.exit156

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEmiERKm.exit156: ; preds = %bb.ed, %bb.ee
  %.05.i154 = phi i64 [ %.sroa.31.8, %bb.ed ], [ %i.acs, %bb.ee ] ; 3 uses
  %.0.i155 = phi i64 [ %.pre-phi, %bb.ed ], [ %i.acu, %bb.ee ] ; 3 uses
  %i.acv = zext i1 %i.ea to i8
  %i.acw = load ptr, ptr %i.f, align 8, !tbaa !1246
  %i.acx = getelementptr inbounds nuw [8 x i8], ptr %i.acw, i64 %.05.i154
  %i.acy = load ptr, ptr %i.acx, align 8, !tbaa !1051
  %i.acz = getelementptr inbounds nuw [32 x i8], ptr %i.acy, i64 %.0.i155
  %i.ada = load ptr, ptr %1, align 8, !tbaa !1304
  %i.adb = getelementptr inbounds nuw i8, ptr %i.ada, i64 8
  %i.adc = load i64, ptr %i.d, align 8, !tbaa !168
  %i.add = load ptr, ptr %i.adb, align 8, !tbaa !1246
  %i.ade = getelementptr inbounds nuw [8 x i8], ptr %i.add, i64 %i.adc
  %i.adf = load ptr, ptr %i.ade, align 8, !tbaa !1051
  %i.adg = load i64, ptr %i.e, align 8, !tbaa !168
  %i.adh = getelementptr inbounds nuw [32 x i8], ptr %i.adf, i64 %i.adg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.adh, ptr noundef nonnull align 8 dereferenceable(32) %i.acz, i64 32, i1 false)
  %i.adi = load ptr, ptr %i.f, align 8, !tbaa !1246
  %i.adj = getelementptr inbounds nuw [8 x i8], ptr %i.adi, i64 %.05.i154
  %i.adk = load ptr, ptr %i.adj, align 8, !tbaa !1051
  %i.adl = getelementptr inbounds nuw [32 x i8], ptr %i.adk, i64 %.0.i155 ; 4 uses
  store i64 %.sroa.0442.0.copyload, ptr %i.adl, align 8
  %.sroa.25.0..sroa_idx464 = getelementptr inbounds nuw i8, ptr %i.adl, i64 8
  store i64 %.sroa.25.0.copyload, ptr %.sroa.25.0..sroa_idx464, align 8
  %.sroa.46.0..sroa_idx486 = getelementptr inbounds nuw i8, ptr %i.adl, i64 16
  store i64 %.sroa.46.0.copyload, ptr %.sroa.46.0..sroa_idx486, align 8
  %.sroa.67.0..sroa_idx508 = getelementptr inbounds nuw i8, ptr %i.adl, i64 24
end_hunk_11
begin_hunk_12_@_ZNSt3_V28__rotateIN6duckdb16block_iterator_tIKNS1_18BlockIteratorStateILNS1_22BlockIteratorStateTypeE0EEENS1_7SortKeyILNS1_11SortKeyTypeE4EEEEEEET_SB_SB_SB_St26random_access_iterator_tag:bb.a
  %i.cl = sub i64 %.0220, %.0221                  ; 6 uses
  %i.cm = icmp ult i64 %.0221, %i.cl
  br i1 %i.cm, label %bb.j, label %bb.t

bb.j:                                             ; preds = %bb.i
  %i.cn = icmp eq i64 %.0221, 1
  br i1 %i.cn, label %bb.k, label %bb.p

bb.k:                                             ; preds = %bb.j
  %i.co = load ptr, ptr %i.ck, align 8, !tbaa !1246
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %.sroa.19.0
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !1051
  %i.cr = getelementptr inbounds nuw [32 x i8], ptr %i.cq, i64 %.sroa.39.0
  %.sroa.0333.0.copyload = load <4 x i64>, ptr %i.cr, align 8
  %i.cs = add i64 %.sroa.39.0, 1                  ; 3 uses
  %i.ct = load i64, ptr %i.ae, align 8, !tbaa !168, !noalias !5174 ; 8 uses
  %.not.i.i17 = icmp ult i64 %i.cs, %i.ct
  br i1 %.not.i.i17, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEplERKm.exit20, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cu = mul i64 %i.ct, %.sroa.19.0
  %i.cv = add i64 %i.cu, %i.cs                    ; 2 uses
  %i.cw = zext i64 %i.cv to i128
  %i.cx = load i64, ptr %i.cj, align 8, !tbaa !1232, !noalias !5174
  %i.cy = zext i64 %i.cx to i128
  %i.cz = mul nuw i128 %i.cy, %i.cw
  %i.da = lshr i128 %i.cz, 64
  %i.db = trunc nuw i128 %i.da to i64             ; 2 uses
  %i.dc = mul i64 %i.ct, %i.db
  %i.dd = sub i64 %i.cv, %i.dc
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEplERKm.exit20

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEplERKm.exit20: ; preds = %bb.k, %bb.l
  %.05.i18 = phi i64 [ %.sroa.19.0, %bb.k ], [ %i.db, %bb.l ] ; 2 uses
  %.0.i19 = phi i64 [ %i.cs, %bb.k ], [ %i.dd, %bb.l ] ; 2 uses
  %i.de = add i64 %.0220, %.sroa.39.0             ; 6 uses
  %.not.i.i21 = icmp ult i64 %i.de, %i.ct
  br i1 %.not.i.i21, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEplERKm.exit24, label %bb.m

bb.m:                                             ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEplERKm.exit20
  %i.df = mul i64 %i.ct, %.sroa.19.0
  %i.dg = add i64 %i.df, %i.de                    ; 2 uses
  %i.dh = zext i64 %i.dg to i128
  %i.di = load i64, ptr %i.cj, align 8, !tbaa !1232, !noalias !5177
  %i.dj = zext i64 %i.di to i128
  %i.dk = mul nuw i128 %i.dj, %i.dh
  %i.dl = lshr i128 %i.dk, 64
  %i.dm = trunc nuw i128 %i.dl to i64             ; 2 uses
  %i.dn = mul i64 %i.ct, %i.dm
  %i.do = sub i64 %i.dg, %i.dn
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEplERKm.exit24

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEplERKm.exit24: ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEplERKm.exit20, %bb.m
  %.05.i22 = phi i64 [ %.sroa.19.0, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEplERKm.exit20 ], [ %i.dm, %bb.m ]
  %.0.i23 = phi i64 [ %i.de, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEplERKm.exit20 ], [ %i.do, %bb.m ]
  %reass.add226 = sub i64 %.05.i22, %.05.i18
  %reass.mul227 = mul i64 %reass.add226, %i.ct
  %i.dp = sub i64 %.0.i23, %.0.i19
  %i.dq = add i64 %i.dp, %reass.mul227            ; 2 uses
  %.not4.i.i.i.i.i = icmp eq i64 %i.dq, 0
  br i1 %.not4.i.i.i.i.i, label %_ZSt4moveIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE4EEEEES9_ET0_T_SB_SA_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEplERKm.exit24, %.lr.ph.i.i.i.i.i
  %.sroa.38.0.i.i.i.i = phi i64 [ %i.ec, %.lr.ph.i.i.i.i.i ], [ %.05.i18, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEplERKm.exit24 ] ; 2 uses
  %.sroa.8.0.i.i.i.i = phi i64 [ %i.ei, %.lr.ph.i.i.i.i.i ], [ %.sroa.39.0, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEplERKm.exit24 ] ; 2 uses
  %.sroa.3.0.i.i.i.i = phi i64 [ %i.eh, %.lr.ph.i.i.i.i.i ], [ %.sroa.19.0, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEplERKm.exit24 ] ; 2 uses
  %.sroa.811.0.i.i.i.i = phi i64 [ %i.ed, %.lr.ph.i.i.i.i.i ], [ %.0.i19, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEplERKm.exit24 ] ; 2 uses
  %.05.i.i.i.i.i = phi i64 [ %i.ej, %.lr.ph.i.i.i.i.i ], [ %i.dq, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEplERKm.exit24 ]
  %i.dr = load ptr, ptr %i.ck, align 8, !tbaa !1246, !noalias !5180 ; 2 uses
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %.sroa.38.0.i.i.i.i
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !1051, !noalias !5180
  %i.du = getelementptr inbounds nuw [32 x i8], ptr %i.dt, i64 %.sroa.811.0.i.i.i.i
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %.sroa.3.0.i.i.i.i
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !1051, !noalias !5180
  %i.dx = getelementptr inbounds nuw [32 x i8], ptr %i.dw, i64 %.sroa.8.0.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dx, ptr noundef nonnull align 8 dereferenceable(32) %i.du, i64 32, i1 false), !noalias !5180
  %i.dy = add i64 %.sroa.811.0.i.i.i.i, 1         ; 2 uses
  %i.dz = load i64, ptr %i.ae, align 8, !tbaa !168, !noalias !5180 ; 3 uses
  %i.ea = icmp eq i64 %i.dy, %i.dz                ; 2 uses
  %i.eb = zext i1 %i.ea to i64
  %i.ec = add i64 %.sroa.38.0.i.i.i.i, %i.eb
  %i.ed = select i1 %i.ea, i64 0, i64 %i.dy
  %i.ee = add i64 %.sroa.8.0.i.i.i.i, 1           ; 2 uses
  %i.ef = icmp eq i64 %i.ee, %i.dz                ; 2 uses
  %i.eg = zext i1 %i.ef to i64
  %i.eh = add i64 %.sroa.3.0.i.i.i.i, %i.eg
  %i.ei = select i1 %i.ef, i64 0, i64 %i.ee
  %i.ej = add i64 %.05.i.i.i.i.i, -1              ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.ej, 0
  br i1 %.not.i.i.i.i.i, label %_ZSt4moveIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE4EEEEES9_ET0_T_SB_SA_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !5191

_ZSt4moveIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE4EEEEES9_ET0_T_SB_SA_.exit: ; preds = %.lr.ph.i.i.i.i.i, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEplERKm.exit24
  %i.ek = phi i64 [ %i.ct, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEplERKm.exit24 ], [ %i.dz, %.lr.ph.i.i.i.i.i ] ; 6 uses
  %.not.i.i25 = icmp ult i64 %i.de, %i.ek
  br i1 %.not.i.i25, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEplERKm.exit28, label %bb.n

bb.n:                                             ; preds = %_ZSt4moveIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE4EEEEES9_ET0_T_SB_SA_.exit
  %i.el = mul i64 %i.ek, %.sroa.19.0
  %i.em = add i64 %i.el, %i.de                    ; 2 uses
  %i.en = zext i64 %i.em to i128
  %i.eo = load i64, ptr %i.cj, align 8, !tbaa !1232, !noalias !5192
  %i.ep = zext i64 %i.eo to i128
  %i.eq = mul nuw i128 %i.ep, %i.en
  %i.er = lshr i128 %i.eq, 64
  %i.es = trunc nuw i128 %i.er to i64             ; 2 uses
  %i.et = mul i64 %i.ek, %i.es
  %i.eu = sub i64 %i.em, %i.et
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEplERKm.exit28

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEplERKm.exit28: ; preds = %_ZSt4moveIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE4EEEEES9_ET0_T_SB_SA_.exit, %bb.n
  %.05.i26 = phi i64 [ %.sroa.19.0, %_ZSt4moveIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE4EEEEES9_ET0_T_SB_SA_.exit ], [ %i.es, %bb.n ] ; 2 uses
  %.0.i27 = phi i64 [ %i.de, %_ZSt4moveIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE4EEEEES9_ET0_T_SB_SA_.exit ], [ %i.eu, %bb.n ]
  %i.ev = add i64 %.0.i27, -1                     ; 3 uses
  %.not.i.i29 = icmp ult i64 %i.ev, %i.ek
  br i1 %.not.i.i29, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEmiERKm.exit, label %bb.o

bb.o:                                             ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEplERKm.exit28
  %i.ew = mul i64 %.05.i26, %i.ek
  %i.ex = add i64 %i.ev, %i.ew                    ; 2 uses
  %i.ey = zext i64 %i.ex to i128
  %i.ez = load i64, ptr %i.cj, align 8, !tbaa !1232, !noalias !5195
  %i.fa = zext i64 %i.ez to i128
  %i.fb = mul nuw i128 %i.fa, %i.ey
  %i.fc = lshr i128 %i.fb, 64
  %i.fd = trunc nuw i128 %i.fc to i64             ; 2 uses
  %i.fe = mul i64 %i.ek, %i.fd
  %i.ff = sub i64 %i.ex, %i.fe
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEmiERKm.exit

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEmiERKm.exit: ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEplERKm.exit28, %bb.o
  %.05.i30 = phi i64 [ %.05.i26, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEplERKm.exit28 ], [ %i.fd, %bb.o ]
  %.0.i31 = phi i64 [ %i.ev, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEplERKm.exit28 ], [ %i.ff, %bb.o ]
  %i.fg = load ptr, ptr %i.ck, align 8, !tbaa !1246
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %.05.i30
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !1051
  %i.fj = getelementptr inbounds nuw [32 x i8], ptr %i.fi, i64 %.0.i31
  store <4 x i64> %.sroa.0333.0.copyload, ptr %i.fj, align 8
  br label %.critedge

bb.p:                                             ; preds = %bb.j
  %i.fk = add i64 %.0221, %.sroa.39.0             ; 3 uses
  %i.fl = load i64, ptr %i.ae, align 8, !tbaa !168, !noalias !5198 ; 3 uses
  %.not.i.i32 = icmp ult i64 %i.fk, %i.fl
  br i1 %.not.i.i32, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEplERKm.exit35.preheader, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.fm = mul i64 %i.fl, %.sroa.19.0
  %i.fn = add i64 %i.fm, %i.fk                    ; 2 uses
  %i.fo = zext i64 %i.fn to i128
  %i.fp = load i64, ptr %i.cj, align 8, !tbaa !1232, !noalias !5198
  %i.fq = zext i64 %i.fp to i128
  %i.fr = mul nuw i128 %i.fq, %i.fo
  %i.fs = lshr i128 %i.fr, 64
  %i.ft = trunc nuw i128 %i.fs to i64             ; 2 uses
  %i.fu = mul i64 %i.fl, %i.ft
  %i.fv = sub i64 %i.fn, %i.fu
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEplERKm.exit35.preheader

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEplERKm.exit35.preheader: ; preds = %bb.p, %bb.q
  %.sroa.6109.0241.ph = phi i64 [ %i.ft, %bb.q ], [ %.sroa.19.0, %bb.p ]
  %.sroa.10.0240.ph = phi i64 [ %i.fv, %bb.q ], [ %i.fk, %bb.p ]
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEplERKm.exit35

bb.r:                                             ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEplERKm.exit35
  %i.fw = urem i64 %.0220, %.0221                 ; 2 uses
  %.not11 = icmp eq i64 %i.fw, 0
  br i1 %.not11, label %.critedge, label %bb.s

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEplERKm.exit35: ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEplERKm.exit35.preheader, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEplERKm.exit35
  %.07244 = phi i64 [ %i.gp, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEplERKm.exit35 ], [ 0, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEplERKm.exit35.preheader ]
  %.sroa.39.1243 = phi i64 [ %i.gj, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEplERKm.exit35 ], [ %.sroa.39.0, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEplERKm.exit35.preheader ] ; 2 uses
  %.sroa.19.1242 = phi i64 [ %i.gi, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEplERKm.exit35 ], [ %.sroa.19.0, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEplERKm.exit35.preheader ] ; 2 uses
  %.sroa.6109.0241 = phi i64 [ %i.gn, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEplERKm.exit35 ], [ %.sroa.6109.0241.ph, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEplERKm.exit35.preheader ] ; 2 uses
  %.sroa.10.0240 = phi i64 [ %i.go, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEplERKm.exit35 ], [ %.sroa.10.0240.ph, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEplERKm.exit35.preheader ] ; 2 uses
  %i.fx = load ptr, ptr %i.ck, align 8, !tbaa !1246 ; 2 uses
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %.sroa.19.1242
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !1051
  %i.ga = getelementptr inbounds nuw [32 x i8], ptr %i.fz, i64 %.sroa.39.1243 ; 2 uses
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %.sroa.6109.0241
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !1051
  %i.gd = getelementptr inbounds nuw [32 x i8], ptr %i.gc, i64 %.sroa.10.0240 ; 2 uses
  %.sroa.0337.0.copyload = load <4 x i64>, ptr %i.ga, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ga, ptr noundef nonnull align 8 dereferenceable(32) %i.gd, i64 32, i1 false)
  store <4 x i64> %.sroa.0337.0.copyload, ptr %i.gd, align 8
  %i.ge = add i64 %.sroa.39.1243, 1               ; 2 uses
  %i.gf = load i64, ptr %i.ae, align 8, !tbaa !168 ; 2 uses
  %i.gg = icmp eq i64 %i.ge, %i.gf                ; 2 uses
  %i.gh = zext i1 %i.gg to i64
  %i.gi = add i64 %.sroa.19.1242, %i.gh           ; 2 uses
  %i.gj = select i1 %i.gg, i64 0, i64 %i.ge       ; 2 uses
  %i.gk = add i64 %.sroa.10.0240, 1               ; 2 uses
  %i.gl = icmp eq i64 %i.gk, %i.gf                ; 2 uses
  %i.gm = zext i1 %i.gl to i64
  %i.gn = add i64 %.sroa.6109.0241, %i.gm
  %i.go = select i1 %i.gl, i64 0, i64 %i.gk
  %i.gp = add nuw i64 %.07244, 1                  ; 2 uses
  %exitcond255.not = icmp eq i64 %i.gp, %i.cl
  br i1 %exitcond255.not, label %bb.r, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEplERKm.exit35, !llvm.loop !5201

bb.s:                                             ; preds = %bb.r
  %i.gq = sub i64 %.0221, %i.fw
  br label %.backedge

bb.t:                                             ; preds = %bb.i
  %i.gr = icmp eq i64 %i.cl, 1
  br i1 %i.gr, label %bb.u, label %bb.aa

bb.u:                                             ; preds = %bb.t
  %i.gs = add i64 %.0220, %.sroa.39.0             ; 7 uses
  %i.gt = load i64, ptr %i.ae, align 8, !tbaa !168, !noalias !5202 ; 14 uses
  %.not.i.i36 = icmp ult i64 %i.gs, %i.gt         ; 3 uses
  br i1 %.not.i.i36, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEplERKm.exit39, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.gu = mul i64 %i.gt, %.sroa.19.0
  %i.gv = add i64 %i.gu, %i.gs                    ; 2 uses
  %i.gw = zext i64 %i.gv to i128
  %i.gx = load i64, ptr %i.cj, align 8, !tbaa !1232, !noalias !5202
  %i.gy = zext i64 %i.gx to i128
  %i.gz = mul nuw i128 %i.gy, %i.gw
  %i.ha = lshr i128 %i.gz, 64
  %i.hb = trunc nuw i128 %i.ha to i64             ; 2 uses
  %i.hc = mul i64 %i.gt, %i.hb
  %i.hd = sub i64 %i.gv, %i.hc
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEplERKm.exit39

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEplERKm.exit39: ; preds = %bb.u, %bb.v
  %.05.i37 = phi i64 [ %.sroa.19.0, %bb.u ], [ %i.hb, %bb.v ] ; 2 uses
  %.0.i38 = phi i64 [ %i.gs, %bb.u ], [ %i.hd, %bb.v ]
  %i.he = add i64 %.0.i38, -1                     ; 3 uses
  %.not.i.i40 = icmp ult i64 %i.he, %i.gt
  br i1 %.not.i.i40, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEmiERKm.exit43, label %bb.w

bb.w:                                             ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEplERKm.exit39
  %i.hf = mul i64 %.05.i37, %i.gt
  %i.hg = add i64 %i.he, %i.hf                    ; 2 uses
  %i.hh = zext i64 %i.hg to i128
  %i.hi = load i64, ptr %i.cj, align 8, !tbaa !1232, !noalias !5205
  %i.hj = zext i64 %i.hi to i128
  %i.hk = mul nuw i128 %i.hj, %i.hh
  %i.hl = lshr i128 %i.hk, 64
  %i.hm = trunc nuw i128 %i.hl to i64             ; 2 uses
  %i.hn = mul i64 %i.gt, %i.hm
  %i.ho = sub i64 %i.hg, %i.hn
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEmiERKm.exit43

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEmiERKm.exit43: ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEplERKm.exit39, %bb.w
  %.05.i41 = phi i64 [ %.05.i37, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEplERKm.exit39 ], [ %i.hm, %bb.w ]
  %.0.i42 = phi i64 [ %i.he, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEplERKm.exit39 ], [ %i.ho, %bb.w ]
  %i.hp = load ptr, ptr %i.ck, align 8, !tbaa !1246 ; 2 uses
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.hp, i64 %.05.i41
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !1051
  %i.hs = getelementptr inbounds nuw [32 x i8], ptr %i.hr, i64 %.0.i42
  %.sroa.0.0.copyload = load <4 x i64>, ptr %i.hs, align 8
  br i1 %.not.i.i36, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEplERKm.exit47, label %bb.x

bb.x:                                             ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEmiERKm.exit43
  %i.ht = mul i64 %i.gt, %.sroa.19.0
  %i.hu = add i64 %i.ht, %i.gs                    ; 2 uses
  %i.hv = zext i64 %i.hu to i128
  %i.hw = load i64, ptr %i.cj, align 8, !tbaa !1232, !noalias !5208
  %i.hx = zext i64 %i.hw to i128
  %i.hy = mul nuw i128 %i.hx, %i.hv
  %i.hz = lshr i128 %i.hy, 64
  %i.ia = trunc nuw i128 %i.hz to i64             ; 2 uses
  %i.ib = mul i64 %i.gt, %i.ia
  %i.ic = sub i64 %i.hu, %i.ib
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEplERKm.exit47

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEplERKm.exit47: ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEmiERKm.exit43, %bb.x
  %.05.i45 = phi i64 [ %.sroa.19.0, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEmiERKm.exit43 ], [ %i.ia, %bb.x ] ; 2 uses
  %.0.i46 = phi i64 [ %i.gs, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEmiERKm.exit43 ], [ %i.ic, %bb.x ]
  %i.id = add i64 %.0.i46, -1                     ; 3 uses
  %.not.i.i48 = icmp ult i64 %i.id, %i.gt
  br i1 %.not.i.i48, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEmiERKm.exit51, label %bb.y

bb.y:                                             ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEplERKm.exit47
  %i.ie = mul i64 %.05.i45, %i.gt
  %i.if = add i64 %i.id, %i.ie                    ; 2 uses
  %i.ig = zext i64 %i.if to i128
  %i.ih = load i64, ptr %i.cj, align 8, !tbaa !1232, !noalias !5211
  %i.ii = zext i64 %i.ih to i128
  %i.ij = mul nuw i128 %i.ii, %i.ig
  %i.ik = lshr i128 %i.ij, 64
  %i.il = trunc nuw i128 %i.ik to i64             ; 2 uses
  %i.im = mul i64 %i.gt, %i.il
  %i.in = sub i64 %i.if, %i.im
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEmiERKm.exit51

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEmiERKm.exit51: ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEplERKm.exit47, %bb.y
  %.05.i49 = phi i64 [ %.05.i45, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEplERKm.exit47 ], [ %i.il, %bb.y ] ; 2 uses
  %.0.i50 = phi i64 [ %i.id, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEplERKm.exit47 ], [ %i.in, %bb.y ] ; 2 uses
  br i1 %.not.i.i36, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEplERKm.exit55, label %bb.z

bb.z:                                             ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEmiERKm.exit51
  %i.io = mul i64 %i.gt, %.sroa.19.0
  %i.ip = add i64 %i.io, %i.gs                    ; 2 uses
  %i.iq = zext i64 %i.ip to i128
  %i.ir = load i64, ptr %i.cj, align 8, !tbaa !1232, !noalias !5214
  %i.is = zext i64 %i.ir to i128
  %i.it = mul nuw i128 %i.is, %i.iq
  %i.iu = lshr i128 %i.it, 64
  %i.iv = trunc nuw i128 %i.iu to i64             ; 2 uses
  %i.iw = mul i64 %i.gt, %i.iv
  %i.ix = sub i64 %i.ip, %i.iw
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEplERKm.exit55

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEplERKm.exit55: ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEmiERKm.exit51, %bb.z
  %.05.i53 = phi i64 [ %.sroa.19.0, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEmiERKm.exit51 ], [ %i.iv, %bb.z ]
  %.0.i54 = phi i64 [ %i.gs, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEmiERKm.exit51 ], [ %i.ix, %bb.z ]
  %reass.add = sub i64 %.05.i49, %.sroa.19.0
  %reass.mul = mul i64 %reass.add, %i.gt
  %i.iy = sub i64 %.0.i50, %.sroa.39.0
  %i.iz = add i64 %i.iy, %reass.mul               ; 2 uses
  %.not5.i.i.i.i.i = icmp eq i64 %i.iz, 0
  br i1 %.not5.i.i.i.i.i, label %_ZSt13move_backwardIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE4EEEEES9_ET0_T_SB_SA_.exit, label %.lr.ph.i.i.i.i.i57

.lr.ph.i.i.i.i.i57:                               ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEplERKm.exit55, %.lr.ph.i.i.i.i.i57
  %.sroa.36.0.i.i.i.i = phi i64 [ %i.jc, %.lr.ph.i.i.i.i.i57 ], [ %.05.i49, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEplERKm.exit55 ]
  %.sroa.7.0.i.i.i.i = phi i64 [ %i.jo, %.lr.ph.i.i.i.i.i57 ], [ %.0.i54, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEplERKm.exit55 ] ; 2 uses
  %.sroa.3.0.i.i.i.i58 = phi i64 [ %i.jm, %.lr.ph.i.i.i.i.i57 ], [ %.05.i53, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEplERKm.exit55 ]
  %.sroa.78.0.i.i.i.i = phi i64 [ %i.jf, %.lr.ph.i.i.i.i.i57 ], [ %.0.i50, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEplERKm.exit55 ] ; 2 uses
  %.06.i.i.i.i.i = phi i64 [ %i.js, %.lr.ph.i.i.i.i.i57 ], [ %i.iz, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEplERKm.exit55 ]
  %i.ja = add i64 %.sroa.78.0.i.i.i.i, -1
  %i.jb = icmp eq i64 %.sroa.78.0.i.i.i.i, 0      ; 2 uses
  %.neg.i.i.i.i.i.i.i = sext i1 %i.jb to i64
  %i.jc = add i64 %.sroa.36.0.i.i.i.i, %.neg.i.i.i.i.i.i.i ; 2 uses
  %i.jd = load i64, ptr %i.ae, align 8, !tbaa !168, !noalias !5217 ; 2 uses
  %i.je = select i1 %i.jb, i64 %i.jd, i64 0
  %i.jf = add i64 %i.ja, %i.je                    ; 2 uses
  %i.jg = load ptr, ptr %i.ck, align 8, !tbaa !1246, !noalias !5217 ; 2 uses
  %i.jh = getelementptr inbounds nuw [8 x i8], ptr %i.jg, i64 %i.jc
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !1051, !noalias !5217
  %i.jj = getelementptr inbounds nuw [32 x i8], ptr %i.ji, i64 %i.jf
  %i.jk = add i64 %.sroa.7.0.i.i.i.i, -1
  %i.jl = icmp eq i64 %.sroa.7.0.i.i.i.i, 0       ; 2 uses
  %.neg.i.i2.i.i.i.i.i = sext i1 %i.jl to i64
  %i.jm = add i64 %.sroa.3.0.i.i.i.i58, %.neg.i.i2.i.i.i.i.i ; 2 uses
  %i.jn = select i1 %i.jl, i64 %i.jd, i64 0
  %i.jo = add i64 %i.jk, %i.jn                    ; 2 uses
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %i.jg, i64 %i.jm
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !1051, !noalias !5217
  %i.jr = getelementptr inbounds nuw [32 x i8], ptr %i.jq, i64 %i.jo
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.jr, ptr noundef nonnull align 8 dereferenceable(32) %i.jj, i64 32, i1 false), !noalias !5217
  %i.js = add i64 %.06.i.i.i.i.i, -1              ; 2 uses
  %.not.i.i.i.i.i59 = icmp eq i64 %i.js, 0
  br i1 %.not.i.i.i.i.i59, label %_ZSt13move_backwardIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE4EEEEES9_ET0_T_SB_SA_.exit.loopexit, label %.lr.ph.i.i.i.i.i57, !llvm.loop !5228

_ZSt13move_backwardIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE4EEEEES9_ET0_T_SB_SA_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i57
  %.pre = load ptr, ptr %i.ck, align 8, !tbaa !1246
  br label %_ZSt13move_backwardIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE4EEEEES9_ET0_T_SB_SA_.exit

_ZSt13move_backwardIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE4EEEEES9_ET0_T_SB_SA_.exit: ; preds = %_ZSt13move_backwardIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE4EEEEES9_ET0_T_SB_SA_.exit.loopexit, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEplERKm.exit55
  %i.jt = phi ptr [ %.pre, %_ZSt13move_backwardIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE4EEEEES9_ET0_T_SB_SA_.exit.loopexit ], [ %i.hp, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEplERKm.exit55 ]
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %i.jt, i64 %.sroa.19.0
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !1051
  %i.jw = getelementptr inbounds nuw [32 x i8], ptr %i.jv, i64 %.sroa.39.0
  store <4 x i64> %.sroa.0.0.copyload, ptr %i.jw, align 8
  br label %.critedge

bb.aa:                                            ; preds = %bb.t
  %i.jx = add i64 %.0220, %.sroa.39.0             ; 3 uses
  %i.jy = load i64, ptr %i.ae, align 8, !tbaa !168, !noalias !5229 ; 6 uses
  %.not.i.i60 = icmp ult i64 %i.jx, %i.jy
  br i1 %.not.i.i60, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEplERKm.exit63, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.jz = mul i64 %i.jy, %.sroa.19.0
  %i.ka = add i64 %i.jz, %i.jx                    ; 2 uses
  %i.kb = zext i64 %i.ka to i128
  %i.kc = load i64, ptr %i.cj, align 8, !tbaa !1232, !noalias !5229
  %i.kd = zext i64 %i.kc to i128
  %i.ke = mul nuw i128 %i.kd, %i.kb
  %i.kf = lshr i128 %i.ke, 64
  %i.kg = trunc nuw i128 %i.kf to i64             ; 2 uses
  %i.kh = mul i64 %i.jy, %i.kg
  %i.ki = sub i64 %i.ka, %i.kh
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEplERKm.exit63

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEplERKm.exit63: ; preds = %bb.aa, %bb.ab
  %.05.i61 = phi i64 [ %.sroa.19.0, %bb.aa ], [ %i.kg, %bb.ab ] ; 3 uses
  %.0.i62 = phi i64 [ %i.jx, %bb.aa ], [ %i.ki, %bb.ab ] ; 2 uses
  %i.kj = sub i64 %.0.i62, %i.cl                  ; 3 uses
  %.not.i.i64 = icmp ult i64 %i.kj, %i.jy
  br i1 %.not.i.i64, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEmiERKm.exit67, label %bb.ac

bb.ac:                                            ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEplERKm.exit63
  %i.kk = mul i64 %.05.i61, %i.jy
  %i.kl = add i64 %i.kj, %i.kk                    ; 2 uses
  %i.km = zext i64 %i.kl to i128
  %i.kn = load i64, ptr %i.cj, align 8, !tbaa !1232, !noalias !5232
  %i.ko = zext i64 %i.kn to i128
  %i.kp = mul nuw i128 %i.ko, %i.km
  %i.kq = lshr i128 %i.kp, 64
  %i.kr = trunc nuw i128 %i.kq to i64             ; 2 uses
  %i.ks = mul i64 %i.jy, %i.kr
  %i.kt = sub i64 %i.kl, %i.ks
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEmiERKm.exit67

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEmiERKm.exit67: ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEplERKm.exit63, %bb.ac
  %.05.i65 = phi i64 [ %.05.i61, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEplERKm.exit63 ], [ %i.kr, %bb.ac ] ; 2 uses
end_hunk_12
begin_hunk_13_@_ZN14duckdb_pdqsort14pdqsort_detail26partition_right_branchlessIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE5EEEEEZN15duckdb_ska_sort6detail15StdSortFallbackISB_KNS2_13SkaExtractKeyISA_EEEEvT_SI_RT0_EUlRKSA_SM_E_EESt4pairISI_bESI_SI_SJ_:bb.a
  %.0.i.i212 = phi i1 [ %i.yy, %bb.bq ], [ %i.zc, %._crit_edge.i.i217 ], [ true, %bb.bs ], [ %spec.select.i.i216, %bb.bt ]
  %i.zk = zext i1 %.0.i.i212 to i64
  %i.zl = add i64 %i.ye, %i.zk                    ; 2 uses
  %i.zm = or disjoint i8 %.064680, 7
  %i.zn = getelementptr inbounds nuw i8, ptr %i.ey, i64 %i.zl
  store i8 %i.zm, ptr %i.zn, align 1, !tbaa !527
  %i.zo = add i64 %i.ym, -1
  %i.zp = icmp eq i64 %i.ym, 0                    ; 2 uses
  %.neg.i.i219 = sext i1 %i.zp to i64
  %i.zq = add i64 %i.yj, %.neg.i.i219             ; 2 uses
  %i.zr = load i64, ptr %i.fd, align 8, !tbaa !168
  %i.zs = select i1 %i.zp, i64 %i.zr, i64 0
  %i.zt = add i64 %i.zo, %i.zs                    ; 3 uses
  %i.zu = load ptr, ptr %i.eg, align 8, !tbaa !1246
  %i.zv = getelementptr inbounds nuw [8 x i8], ptr %i.zu, i64 %i.zq
  %i.zw = load ptr, ptr %i.zv, align 8, !tbaa !1051
  %i.zx = getelementptr inbounds nuw [32 x i8], ptr %i.zw, i64 %i.zt ; 4 uses
  %i.zy = load i64, ptr %i.zx, align 8, !tbaa !168
  %i.zz = call noundef i32 @llvm.ucmp.i32.i64(i64 %i.zy, i64 %.sroa.0543.0.copyload)
  %i.aaa = shl nsw i32 %i.zz, 1
  %i.aab = getelementptr inbounds nuw i8, ptr %i.zx, i64 8
  %i.aac = load i64, ptr %i.aab, align 8, !tbaa !168
  %i.aad = call noundef i32 @llvm.ucmp.i32.i64(i64 %i.aac, i64 %.sroa.25.0.copyload)
  %i.aae = add nsw i32 %i.aad, %i.aaa             ; 2 uses
  %.not.i.i220 = icmp eq i32 %i.aae, 0
  br i1 %.not.i.i220, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE5EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit218
  %i.aaf = icmp slt i32 %i.aae, 0
  br label %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE5EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit227

bb.bv:                                            ; preds = %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE5EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit218
  %i.aag = getelementptr inbounds nuw i8, ptr %i.zx, i64 16
  %i.aah = load i64, ptr %i.aag, align 8, !tbaa !1323 ; 4 uses
  %i.aai = icmp ult i64 %i.aah, 17
  %or.cond.i.i224 = select i1 %i.aai, i1 true, i1 %i.t
  br i1 %or.cond.i.i224, label %._crit_edge.i.i226, label %bb.bw

._crit_edge.i.i226:                               ; preds = %bb.bv
  %i.aaj = icmp ult i64 %i.aah, %.sroa.46.0.copyload
  br label %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE5EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit227

bb.bw:                                            ; preds = %bb.bv
  %i.aak = getelementptr inbounds nuw i8, ptr %i.zx, i64 24
  %i.aal = load ptr, ptr %i.aak, align 8, !tbaa !527
  %i.aam = call noundef i64 @llvm.umin.i64(i64 %i.aah, i64 %.sroa.46.0.copyload)
  %i.aan = call i32 @memcmp(ptr noundef %i.aal, ptr noundef %.sroa.67.0.copyload, i64 noundef %i.aam) #33 ; 2 uses
  %i.aao = icmp slt i32 %i.aan, 0
  br i1 %i.aao, label %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE5EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit227, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.aap = icmp eq i32 %i.aan, 0
  %i.aaq = icmp ult i64 %i.aah, %.sroa.46.0.copyload
  %spec.select.i.i225 = and i1 %i.aaq, %i.aap
  br label %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE5EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit227

_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE5EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit227: ; preds = %bb.bu, %._crit_edge.i.i226, %bb.bw, %bb.bx
  %.0.i.i221 = phi i1 [ %i.aaf, %bb.bu ], [ %i.aaj, %._crit_edge.i.i226 ], [ true, %bb.bw ], [ %spec.select.i.i225, %bb.bx ]
  %i.aar = zext i1 %.0.i.i221 to i64
  %i.aas = add i64 %i.zl, %i.aar                  ; 2 uses
  %i.aat = add nuw nsw i8 %.064680, 8             ; 2 uses
  %i.aau = getelementptr inbounds nuw i8, ptr %i.ey, i64 %i.aas
  store i8 %i.aat, ptr %i.aau, align 1, !tbaa !527
  %i.aav = add i64 %i.zt, -1
  %i.aaw = icmp eq i64 %i.zt, 0                   ; 2 uses
  %.neg.i.i228 = sext i1 %i.aaw to i64
  %i.aax = add i64 %i.zq, %.neg.i.i228            ; 3 uses
  %i.aay = load i64, ptr %i.fd, align 8, !tbaa !168
  %i.aaz = select i1 %i.aaw, i64 %i.aay, i64 0
  %i.aba = add i64 %i.aav, %i.aaz                 ; 3 uses
  %i.abb = load ptr, ptr %i.eg, align 8, !tbaa !1246
  %i.abc = getelementptr inbounds nuw [8 x i8], ptr %i.abb, i64 %i.aax
  %i.abd = load ptr, ptr %i.abc, align 8, !tbaa !1051
  %i.abe = getelementptr inbounds nuw [32 x i8], ptr %i.abd, i64 %i.aba ; 4 uses
  %i.abf = load i64, ptr %i.abe, align 8, !tbaa !168
  %i.abg = call noundef i32 @llvm.ucmp.i32.i64(i64 %i.abf, i64 %.sroa.0543.0.copyload)
  %i.abh = shl nsw i32 %i.abg, 1
  %i.abi = getelementptr inbounds nuw i8, ptr %i.abe, i64 8
  %i.abj = load i64, ptr %i.abi, align 8, !tbaa !168
  %i.abk = call noundef i32 @llvm.ucmp.i32.i64(i64 %i.abj, i64 %.sroa.25.0.copyload)
  %i.abl = add nsw i32 %i.abk, %i.abh             ; 2 uses
  %.not.i.i229 = icmp eq i32 %i.abl, 0
  br i1 %.not.i.i229, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE5EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit227
  %i.abm = icmp slt i32 %i.abl, 0
  br label %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE5EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit236

bb.bz:                                            ; preds = %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE5EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit227
  %i.abn = getelementptr inbounds nuw i8, ptr %i.abe, i64 16
  %i.abo = load i64, ptr %i.abn, align 8, !tbaa !1323 ; 4 uses
  %i.abp = icmp ult i64 %i.abo, 17
  %or.cond.i.i233 = select i1 %i.abp, i1 true, i1 %i.t
  br i1 %or.cond.i.i233, label %._crit_edge.i.i235, label %bb.ca

._crit_edge.i.i235:                               ; preds = %bb.bz
  %i.abq = icmp ult i64 %i.abo, %.sroa.46.0.copyload
  br label %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE5EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit236

bb.ca:                                            ; preds = %bb.bz
  %i.abr = getelementptr inbounds nuw i8, ptr %i.abe, i64 24
  %i.abs = load ptr, ptr %i.abr, align 8, !tbaa !527
  %i.abt = call noundef i64 @llvm.umin.i64(i64 %i.abo, i64 %.sroa.46.0.copyload)
  %i.abu = call i32 @memcmp(ptr noundef %i.abs, ptr noundef %.sroa.67.0.copyload, i64 noundef %i.abt) #33 ; 2 uses
  %i.abv = icmp slt i32 %i.abu, 0
  br i1 %i.abv, label %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE5EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit236, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.abw = icmp eq i32 %i.abu, 0
  %i.abx = icmp ult i64 %i.abo, %.sroa.46.0.copyload
  %spec.select.i.i234 = and i1 %i.abx, %i.abw
  br label %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE5EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit236

_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE5EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit236: ; preds = %bb.by, %._crit_edge.i.i235, %bb.ca, %bb.cb
  %.0.i.i230 = phi i1 [ %i.abm, %bb.by ], [ %i.abq, %._crit_edge.i.i235 ], [ true, %bb.ca ], [ %spec.select.i.i234, %bb.cb ]
  %i.aby = zext i1 %.0.i.i230 to i64
  %i.abz = add i64 %i.aas, %i.aby                 ; 2 uses
  %i.aca = icmp samesign ult i8 %.064680, 56
  br i1 %i.aca, label %.preheader, label %.loopexit628, !llvm.loop !6082

.lr.ph673:                                        ; preds = %.lr.ph673.preheader, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE5EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit245
  %.0672 = phi i8 [ %i.acb, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE5EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit245 ], [ 0, %.lr.ph673.preheader ]
  %.sroa.76.5671 = phi i64 [ %i.aci, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE5EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit245 ], [ %.sroa.76.3688, %.lr.ph673.preheader ] ; 2 uses
  %.sroa.30.5670 = phi i64 [ %i.acf, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE5EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit245 ], [ %.sroa.30.3687, %.lr.ph673.preheader ]
  %.2669 = phi i64 [ %i.adh, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE5EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit245 ], [ %.0611686, %.lr.ph673.preheader ] ; 2 uses
  %i.acb = add nuw i8 %.0672, 1                   ; 3 uses
  %i.acc = getelementptr inbounds nuw i8, ptr %i.ey, i64 %.2669
  store i8 %i.acb, ptr %i.acc, align 1, !tbaa !527
  %i.acd = add i64 %.sroa.76.5671, -1
  %i.ace = icmp eq i64 %.sroa.76.5671, 0          ; 2 uses
  %.neg.i.i237 = sext i1 %i.ace to i64
  %i.acf = add i64 %.sroa.30.5670, %.neg.i.i237   ; 3 uses
  %i.acg = load i64, ptr %i.fd, align 8, !tbaa !168
  %i.ach = select i1 %i.ace, i64 %i.acg, i64 0
  %i.aci = add i64 %i.acd, %i.ach                 ; 3 uses
  %i.acj = load ptr, ptr %i.eg, align 8, !tbaa !1246
  %i.ack = getelementptr inbounds nuw [8 x i8], ptr %i.acj, i64 %i.acf
  %i.acl = load ptr, ptr %i.ack, align 8, !tbaa !1051
  %i.acm = getelementptr inbounds nuw [32 x i8], ptr %i.acl, i64 %i.aci ; 4 uses
  %i.acn = load i64, ptr %i.acm, align 8, !tbaa !168
  %i.aco = call noundef i32 @llvm.ucmp.i32.i64(i64 %i.acn, i64 %.sroa.0543.0.copyload)
  %i.acp = shl nsw i32 %i.aco, 1
  %i.acq = getelementptr inbounds nuw i8, ptr %i.acm, i64 8
  %i.acr = load i64, ptr %i.acq, align 8, !tbaa !168
  %i.acs = call noundef i32 @llvm.ucmp.i32.i64(i64 %i.acr, i64 %.sroa.25.0.copyload)
  %i.act = add nsw i32 %i.acs, %i.acp             ; 2 uses
  %.not.i.i238 = icmp eq i32 %i.act, 0
  br i1 %.not.i.i238, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %.lr.ph673
  %i.acu = icmp slt i32 %i.act, 0
  br label %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE5EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit245

bb.cd:                                            ; preds = %.lr.ph673
  %i.acv = getelementptr inbounds nuw i8, ptr %i.acm, i64 16
  %i.acw = load i64, ptr %i.acv, align 8, !tbaa !1323 ; 4 uses
  %i.acx = icmp ult i64 %i.acw, 17
  %or.cond.i.i242 = select i1 %i.acx, i1 true, i1 %i.t
  br i1 %or.cond.i.i242, label %._crit_edge.i.i244, label %bb.ce

._crit_edge.i.i244:                               ; preds = %bb.cd
  %i.acy = icmp ult i64 %i.acw, %.sroa.46.0.copyload
  br label %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE5EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit245

bb.ce:                                            ; preds = %bb.cd
  %i.acz = getelementptr inbounds nuw i8, ptr %i.acm, i64 24
  %i.ada = load ptr, ptr %i.acz, align 8, !tbaa !527
  %i.adb = call noundef i64 @llvm.umin.i64(i64 %i.acw, i64 %.sroa.46.0.copyload)
  %i.adc = call i32 @memcmp(ptr noundef %i.ada, ptr noundef %.sroa.67.0.copyload, i64 noundef %i.adb) #33 ; 2 uses
  %i.add = icmp slt i32 %i.adc, 0
  br i1 %i.add, label %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE5EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit245, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.ade = icmp eq i32 %i.adc, 0
  %i.adf = icmp ult i64 %i.acw, %.sroa.46.0.copyload
  %spec.select.i.i243 = and i1 %i.adf, %i.ade
  br label %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE5EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit245

_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE5EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit245: ; preds = %bb.cc, %._crit_edge.i.i244, %bb.ce, %bb.cf
  %.0.i.i239 = phi i1 [ %i.acu, %bb.cc ], [ %i.acy, %._crit_edge.i.i244 ], [ true, %bb.ce ], [ %spec.select.i.i243, %bb.cf ]
  %i.adg = zext i1 %.0.i.i239 to i64
  %i.adh = add i64 %.2669, %i.adg                 ; 2 uses
  %i.adi = icmp ult i8 %i.acb, %i.rv
  br i1 %i.adi, label %.lr.ph673, label %.loopexit628, !llvm.loop !6083

.loopexit628:                                     ; preds = %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE5EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit245, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE5EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit236, %.preheader629
  %.3 = phi i64 [ %i.abz, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE5EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit236 ], [ %.0611686, %.preheader629 ], [ %i.adh, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE5EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit245 ] ; 4 uses
  %.sroa.30.6 = phi i64 [ %i.aax, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE5EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit236 ], [ %.sroa.30.3687, %.preheader629 ], [ %i.acf, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE5EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit245 ] ; 5 uses
  %.sroa.76.6 = phi i64 [ %i.aba, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE5EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit236 ], [ %.sroa.76.3688, %.preheader629 ], [ %i.aci, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE5EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit245 ] ; 4 uses
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %.3, i64 %.3616) ; 5 uses
  store ptr %i.c, ptr %6, align 8, !tbaa !1322
  store i64 %.sroa.5348.0682, ptr %i.fe, align 8, !tbaa !1319
  store i64 %.sroa.9350.0681, ptr %i.ff, align 8, !tbaa !1321
  store ptr %i.m, ptr %7, align 8, !tbaa !1322
  store i64 %.sroa.5.0684, ptr %i.fg, align 8, !tbaa !1319
  store i64 %.sroa.9.0683, ptr %i.fh, align 8, !tbaa !1321
  %i.adj = getelementptr inbounds nuw i8, ptr %i.eu, i64 %.068691
  %i.adk = getelementptr inbounds nuw i8, ptr %i.ey, i64 %.067692
  %i.adl = icmp eq i64 %.3616, %.3
  call void @_ZN14duckdb_pdqsort14pdqsort_detail12swap_offsetsIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE5EEEEEEEvT_SC_PhSD_mb(ptr noundef nonnull dead_on_return %6, ptr noundef nonnull dead_on_return %7, ptr noundef %i.adj, ptr noundef %i.adk, i64 noundef %.sroa.speculated, i1 noundef zeroext %i.adl)
  %i.adm = sub i64 %.3616, %.sroa.speculated      ; 3 uses
  %i.adn = sub i64 %.3, %.sroa.speculated         ; 4 uses
  %i.ado = add i64 %.sroa.speculated, %.068691
  %i.adp = add i64 %.sroa.speculated, %.067692
  %.not625 = icmp ugt i64 %.3616, %.3             ; 3 uses
  %.sroa.9350.1 = select i1 %.not625, i64 %.sroa.9350.0681, i64 %.sroa.78.4 ; 2 uses
  %.sroa.5348.1 = select i1 %.not625, i64 %.sroa.5348.0682, i64 %.sroa.31.4 ; 3 uses
  %.169 = select i1 %.not625, i64 %i.ado, i64 0   ; 2 uses
  %i.adq = icmp eq i64 %i.adn, 0                  ; 3 uses
  %.sroa.9.1 = select i1 %i.adq, i64 %.sroa.76.6, i64 %.sroa.9.0683 ; 2 uses
  %.sroa.5.1 = select i1 %i.adq, i64 %.sroa.30.6, i64 %.sroa.5.0684 ; 3 uses
  %.1 = select i1 %i.adq, i64 0, i64 %i.adp       ; 2 uses
  %i.adr = icmp eq i64 %.sroa.31.4, %.sroa.30.6
  %i.ads = icmp ult i64 %.sroa.78.4, %.sroa.76.6
  %i.adt = icmp ult i64 %.sroa.31.4, %.sroa.30.6
  %i.adu = select i1 %i.adr, i1 %i.ads, i1 %i.adt
  br i1 %i.adu, label %bb.l, label %._crit_edge, !llvm.loop !6084

._crit_edge:                                      ; preds = %.loopexit628
  %.not = icmp eq i64 %i.adm, 0
  br i1 %.not, label %.loopexit627, label %bb.cg

bb.cg:                                            ; preds = %._crit_edge
  %i.adv = getelementptr inbounds nuw i8, ptr %i.eu, i64 %.169
  %i.adw = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.adx = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEplERKm.exit
  %.in = phi i64 [ %i.adm, %bb.cg ], [ %i.ady, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEplERKm.exit ]
  %.sroa.76.7707 = phi i64 [ %.sroa.76.6, %bb.cg ], [ %i.aet, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEplERKm.exit ] ; 2 uses
  %.sroa.30.7706 = phi i64 [ %.sroa.30.6, %bb.cg ], [ %i.aeq, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEplERKm.exit ]
  %i.ady = add i64 %.in, -1                       ; 3 uses
  %i.adz = getelementptr inbounds nuw i8, ptr %i.adv, i64 %i.ady
  %i.aea = load i8, ptr %i.adz, align 1, !tbaa !527
  %i.aeb = zext i8 %i.aea to i64
  %i.aec = add i64 %.sroa.9350.1, %i.aeb          ; 3 uses
  %i.aed = load i64, ptr %i.r, align 8, !tbaa !168, !noalias !6085 ; 3 uses
  %.not.i.i246 = icmp ult i64 %i.aec, %i.aed
  br i1 %.not.i.i246, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEplERKm.exit, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.aee = mul i64 %i.aed, %.sroa.5348.1
  %i.aef = add i64 %i.aee, %i.aec                 ; 2 uses
  %i.aeg = zext i64 %i.aef to i128
  %i.aeh = load i64, ptr %i.adx, align 8, !tbaa !1232, !noalias !6085
  %i.aei = zext i64 %i.aeh to i128
  %i.aej = mul nuw i128 %i.aei, %i.aeg
  %i.aek = lshr i128 %i.aej, 64
  %i.ael = trunc nuw i128 %i.aek to i64           ; 2 uses
  %i.aem = mul i64 %i.aed, %i.ael
  %i.aen = sub i64 %i.aef, %i.aem
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEplERKm.exit

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEplERKm.exit: ; preds = %bb.ch, %bb.ci
  %.05.i247 = phi i64 [ %.sroa.5348.1, %bb.ch ], [ %i.ael, %bb.ci ]
  %.0.i248 = phi i64 [ %i.aec, %bb.ch ], [ %i.aen, %bb.ci ]
  %i.aeo = add i64 %.sroa.76.7707, -1
  %i.aep = icmp eq i64 %.sroa.76.7707, 0          ; 2 uses
  %.neg.i.i249 = sext i1 %i.aep to i64
  %i.aeq = add i64 %.sroa.30.7706, %.neg.i.i249   ; 3 uses
  %i.aer = load i64, ptr %i.adw, align 8, !tbaa !168
  %i.aes = select i1 %i.aep, i64 %i.aer, i64 0
  %i.aet = add i64 %i.aeo, %i.aes                 ; 3 uses
  %i.aeu = load ptr, ptr %i.f, align 8, !tbaa !1246
  %i.aev = getelementptr inbounds nuw [8 x i8], ptr %i.aeu, i64 %.05.i247
  %i.aew = load ptr, ptr %i.aev, align 8, !tbaa !1051
  %i.aex = getelementptr inbounds nuw [32 x i8], ptr %i.aew, i64 %.0.i248 ; 2 uses
  %i.aey = load ptr, ptr %i.eg, align 8, !tbaa !1246
  %i.aez = getelementptr inbounds nuw [8 x i8], ptr %i.aey, i64 %i.aeq
  %i.afa = load ptr, ptr %i.aez, align 8, !tbaa !1051
  %i.afb = getelementptr inbounds nuw [32 x i8], ptr %i.afa, i64 %i.aet ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.aex, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aex, ptr noundef nonnull align 8 dereferenceable(32) %i.afb, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.afb, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %.not72 = icmp eq i64 %i.ady, 0
  br i1 %.not72, label %.loopexit627, label %bb.ch, !llvm.loop !6088

.loopexit627:                                     ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEplERKm.exit, %._crit_edge
  %.sroa.31.5 = phi i64 [ %.sroa.31.4, %._crit_edge ], [ %i.aeq, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEplERKm.exit ] ; 2 uses
  %.sroa.78.5 = phi i64 [ %.sroa.78.4, %._crit_edge ], [ %i.aet, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEplERKm.exit ] ; 2 uses
  %.not73 = icmp eq i64 %i.adn, 0
  br i1 %.not73, label %.loopexit627..loopexit_crit_edge, label %bb.cj

.loopexit627..loopexit_crit_edge:                 ; preds = %bb.k, %.loopexit627
  %.sroa.78.5845 = phi i64 [ %.sroa.78.5, %.loopexit627 ], [ %i.eq, %bb.k ]
  %.sroa.31.5844 = phi i64 [ %.sroa.31.5, %.loopexit627 ], [ %i.ep, %bb.k ]
  %.pre.pre = load i64, ptr %i.r, align 8, !tbaa !168, !noalias !6089
  br label %.loopexit

bb.cj:                                            ; preds = %.loopexit627
  %i.afc = getelementptr inbounds nuw i8, ptr %i.ey, i64 %.1
  %i.afd = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.afe = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEmiERKm.exit253
  %.in712 = phi i64 [ %i.adn, %bb.cj ], [ %i.aff, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEmiERKm.exit253 ]
  %.sroa.78.6709 = phi i64 [ %.sroa.78.5, %bb.cj ], [ %i.agi, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEmiERKm.exit253 ] ; 2 uses
  %.sroa.31.6708 = phi i64 [ %.sroa.31.5, %bb.cj ], [ %i.agh, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEmiERKm.exit253 ] ; 2 uses
  %i.aff = add i64 %.in712, -1                    ; 3 uses
  %i.afg = getelementptr inbounds nuw i8, ptr %i.afc, i64 %i.aff
  %i.afh = load i8, ptr %i.afg, align 1, !tbaa !527
  %i.afi = zext i8 %i.afh to i64
  %i.afj = sub i64 %.sroa.9.1, %i.afi             ; 3 uses
  %i.afk = load i64, ptr %i.afd, align 8, !tbaa !168, !noalias !6092 ; 3 uses
  %.not.i.i250 = icmp ult i64 %i.afj, %i.afk
  br i1 %.not.i.i250, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEmiERKm.exit253, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.afl = mul i64 %i.afk, %.sroa.5.1
  %i.afm = add i64 %i.afl, %i.afj                 ; 2 uses
  %i.afn = zext i64 %i.afm to i128
  %i.afo = load i64, ptr %i.afe, align 8, !tbaa !1232, !noalias !6092
  %i.afp = zext i64 %i.afo to i128
  %i.afq = mul nuw i128 %i.afp, %i.afn
  %i.afr = lshr i128 %i.afq, 64
  %i.afs = trunc nuw i128 %i.afr to i64           ; 2 uses
  %i.aft = mul i64 %i.afk, %i.afs
  %i.afu = sub i64 %i.afm, %i.aft
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEmiERKm.exit253

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEmiERKm.exit253: ; preds = %bb.ck, %bb.cl
  %.05.i251 = phi i64 [ %.sroa.5.1, %bb.ck ], [ %i.afs, %bb.cl ]
  %.0.i252 = phi i64 [ %i.afj, %bb.ck ], [ %i.afu, %bb.cl ]
  %i.afv = load ptr, ptr %i.eg, align 8, !tbaa !1246
  %i.afw = getelementptr inbounds nuw [8 x i8], ptr %i.afv, i64 %.05.i251
  %i.afx = load ptr, ptr %i.afw, align 8, !tbaa !1051
  %i.afy = getelementptr inbounds nuw [32 x i8], ptr %i.afx, i64 %.0.i252 ; 2 uses
  %i.afz = load ptr, ptr %i.f, align 8, !tbaa !1246
  %i.aga = getelementptr inbounds nuw [8 x i8], ptr %i.afz, i64 %.sroa.31.6708
  %i.agb = load ptr, ptr %i.aga, align 8, !tbaa !1051
  %i.agc = getelementptr inbounds nuw [32 x i8], ptr %i.agb, i64 %.sroa.78.6709 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.afy, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.afy, ptr noundef nonnull align 8 dereferenceable(32) %i.agc, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.agc, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.agd = add i64 %.sroa.78.6709, 1              ; 2 uses
  %i.age = load i64, ptr %i.r, align 8, !tbaa !168 ; 2 uses
  %i.agf = icmp eq i64 %i.agd, %i.age             ; 2 uses
  %i.agg = zext i1 %i.agf to i64
  %i.agh = add i64 %.sroa.31.6708, %i.agg         ; 2 uses
  %i.agi = select i1 %i.agf, i64 0, i64 %i.agd    ; 2 uses
  %.not74 = icmp eq i64 %i.aff, 0
  br i1 %.not74, label %.loopexit, label %bb.ck, !llvm.loop !6095

.loopexit:                                        ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEmiERKm.exit253, %.loopexit627..loopexit_crit_edge
  %.pre = phi i64 [ %.pre.pre, %.loopexit627..loopexit_crit_edge ], [ %i.age, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEmiERKm.exit253 ]
  %.sroa.31.7 = phi i64 [ %.sroa.31.5844, %.loopexit627..loopexit_crit_edge ], [ %i.agh, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEmiERKm.exit253 ]
  %.sroa.78.7 = phi i64 [ %.sroa.78.5845, %.loopexit627..loopexit_crit_edge ], [ %i.agi, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEmiERKm.exit253 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %.pre741 = add i64 %.sroa.78.7, -1
  br label %bb.cm

bb.cm:                                            ; preds = %.loopexit, %.critedge
  %.pre-phi = phi i64 [ %.pre741, %.loopexit ], [ %i.av, %.critedge ] ; 3 uses
  %i.agj = phi i64 [ %.pre, %.loopexit ], [ %i.s, %.critedge ] ; 3 uses
  %.sroa.31.8 = phi i64 [ %.sroa.31.7, %.loopexit ], [ %i.x, %.critedge ] ; 2 uses
  %.not.i.i254 = icmp ult i64 %.pre-phi, %i.agj
  br i1 %.not.i.i254, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEmiERKm.exit257, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.agk = mul i64 %i.agj, %.sroa.31.8
  %i.agl = add i64 %i.agk, %.pre-phi              ; 2 uses
  %i.agm = zext i64 %i.agl to i128
  %i.agn = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.ago = load i64, ptr %i.agn, align 8, !tbaa !1232, !noalias !6089
  %i.agp = zext i64 %i.ago to i128
  %i.agq = mul nuw i128 %i.agp, %i.agm
  %i.agr = lshr i128 %i.agq, 64
  %i.ags = trunc nuw i128 %i.agr to i64           ; 2 uses
  %i.agt = mul i64 %i.agj, %i.ags
  %i.agu = sub i64 %i.agl, %i.agt
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEmiERKm.exit257

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEmiERKm.exit257: ; preds = %bb.cm, %bb.cn
  %.05.i255 = phi i64 [ %.sroa.31.8, %bb.cm ], [ %i.ags, %bb.cn ] ; 3 uses
  %.0.i256 = phi i64 [ %.pre-phi, %bb.cm ], [ %i.agu, %bb.cn ] ; 3 uses
  %i.agv = zext i1 %i.ef to i8
  %i.agw = load ptr, ptr %i.f, align 8, !tbaa !1246
  %i.agx = getelementptr inbounds nuw [8 x i8], ptr %i.agw, i64 %.05.i255
  %i.agy = load ptr, ptr %i.agx, align 8, !tbaa !1051
  %i.agz = getelementptr inbounds nuw [32 x i8], ptr %i.agy, i64 %.0.i256
  %i.aha = load ptr, ptr %1, align 8, !tbaa !1322
  %i.ahb = getelementptr inbounds nuw i8, ptr %i.aha, i64 8
  %i.ahc = load i64, ptr %i.d, align 8, !tbaa !168
  %i.ahd = load ptr, ptr %i.ahb, align 8, !tbaa !1246
  %i.ahe = getelementptr inbounds nuw [8 x i8], ptr %i.ahd, i64 %i.ahc
  %i.ahf = load ptr, ptr %i.ahe, align 8, !tbaa !1051
  %i.ahg = load i64, ptr %i.e, align 8, !tbaa !168
  %i.ahh = getelementptr inbounds nuw [32 x i8], ptr %i.ahf, i64 %i.ahg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ahh, ptr noundef nonnull align 8 dereferenceable(32) %i.agz, i64 32, i1 false)
  %i.ahi = load ptr, ptr %i.f, align 8, !tbaa !1246
  %i.ahj = getelementptr inbounds nuw [8 x i8], ptr %i.ahi, i64 %.05.i255
  %i.ahk = load ptr, ptr %i.ahj, align 8, !tbaa !1051
  %i.ahl = getelementptr inbounds nuw [32 x i8], ptr %i.ahk, i64 %.0.i256 ; 4 uses
  store i64 %.sroa.0543.0.copyload, ptr %i.ahl, align 8
  %.sroa.25.0..sroa_idx565 = getelementptr inbounds nuw i8, ptr %i.ahl, i64 8
end_hunk_13
begin_hunk_14_@_ZNSt3_V28__rotateIN6duckdb16block_iterator_tIKNS1_18BlockIteratorStateILNS1_22BlockIteratorStateTypeE0EEENS1_7SortKeyILNS1_11SortKeyTypeE5EEEEEEET_SB_SB_SB_St26random_access_iterator_tag:bb.a
bb.j:                                             ; preds = %bb.i
  %i.cn = icmp eq i64 %.0221, 1
  br i1 %i.cn, label %bb.k, label %bb.p

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.co = load ptr, ptr %i.ck, align 8, !tbaa !1246
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %.sroa.19.0
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !1051
  %i.cr = getelementptr inbounds nuw [32 x i8], ptr %i.cq, i64 %.sroa.39.0
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.cr, i64 32, i1 false)
  %i.cs = add i64 %.sroa.39.0, 1                  ; 3 uses
  %i.ct = load i64, ptr %i.ae, align 8, !tbaa !168, !noalias !6178 ; 8 uses
  %.not.i.i17 = icmp ult i64 %i.cs, %i.ct
  br i1 %.not.i.i17, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEplERKm.exit20, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cu = mul i64 %i.ct, %.sroa.19.0
  %i.cv = add i64 %i.cu, %i.cs                    ; 2 uses
  %i.cw = zext i64 %i.cv to i128
  %i.cx = load i64, ptr %i.cj, align 8, !tbaa !1232, !noalias !6178
  %i.cy = zext i64 %i.cx to i128
  %i.cz = mul nuw i128 %i.cy, %i.cw
  %i.da = lshr i128 %i.cz, 64
  %i.db = trunc nuw i128 %i.da to i64             ; 2 uses
  %i.dc = mul i64 %i.ct, %i.db
  %i.dd = sub i64 %i.cv, %i.dc
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEplERKm.exit20

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEplERKm.exit20: ; preds = %bb.k, %bb.l
  %.05.i18 = phi i64 [ %.sroa.19.0, %bb.k ], [ %i.db, %bb.l ] ; 2 uses
  %.0.i19 = phi i64 [ %i.cs, %bb.k ], [ %i.dd, %bb.l ] ; 2 uses
  %i.de = add i64 %.0220, %.sroa.39.0             ; 6 uses
  %.not.i.i21 = icmp ult i64 %i.de, %i.ct
  br i1 %.not.i.i21, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEplERKm.exit24, label %bb.m

bb.m:                                             ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEplERKm.exit20
  %i.df = mul i64 %i.ct, %.sroa.19.0
  %i.dg = add i64 %i.df, %i.de                    ; 2 uses
  %i.dh = zext i64 %i.dg to i128
  %i.di = load i64, ptr %i.cj, align 8, !tbaa !1232, !noalias !6181
  %i.dj = zext i64 %i.di to i128
  %i.dk = mul nuw i128 %i.dj, %i.dh
  %i.dl = lshr i128 %i.dk, 64
  %i.dm = trunc nuw i128 %i.dl to i64             ; 2 uses
  %i.dn = mul i64 %i.ct, %i.dm
  %i.do = sub i64 %i.dg, %i.dn
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEplERKm.exit24

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEplERKm.exit24: ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEplERKm.exit20, %bb.m
  %.05.i22 = phi i64 [ %.sroa.19.0, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEplERKm.exit20 ], [ %i.dm, %bb.m ]
  %.0.i23 = phi i64 [ %i.de, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEplERKm.exit20 ], [ %i.do, %bb.m ]
  %reass.add226 = sub i64 %.05.i22, %.05.i18
  %reass.mul227 = mul i64 %reass.add226, %i.ct
  %i.dp = sub i64 %.0.i23, %.0.i19
  %i.dq = add i64 %i.dp, %reass.mul227            ; 2 uses
  %.not4.i.i.i.i.i = icmp eq i64 %i.dq, 0
  br i1 %.not4.i.i.i.i.i, label %_ZSt4moveIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE5EEEEES9_ET0_T_SB_SA_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEplERKm.exit24, %.lr.ph.i.i.i.i.i
  %.sroa.38.0.i.i.i.i = phi i64 [ %i.ec, %.lr.ph.i.i.i.i.i ], [ %.05.i18, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEplERKm.exit24 ] ; 2 uses
  %.sroa.8.0.i.i.i.i = phi i64 [ %i.ei, %.lr.ph.i.i.i.i.i ], [ %.sroa.39.0, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEplERKm.exit24 ] ; 2 uses
  %.sroa.3.0.i.i.i.i = phi i64 [ %i.eh, %.lr.ph.i.i.i.i.i ], [ %.sroa.19.0, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEplERKm.exit24 ] ; 2 uses
  %.sroa.811.0.i.i.i.i = phi i64 [ %i.ed, %.lr.ph.i.i.i.i.i ], [ %.0.i19, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEplERKm.exit24 ] ; 2 uses
  %.05.i.i.i.i.i = phi i64 [ %i.ej, %.lr.ph.i.i.i.i.i ], [ %i.dq, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEplERKm.exit24 ]
  %i.dr = load ptr, ptr %i.ck, align 8, !tbaa !1246, !noalias !6184 ; 2 uses
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %.sroa.38.0.i.i.i.i
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !1051, !noalias !6184
  %i.du = getelementptr inbounds nuw [32 x i8], ptr %i.dt, i64 %.sroa.811.0.i.i.i.i
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %.sroa.3.0.i.i.i.i
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !1051, !noalias !6184
  %i.dx = getelementptr inbounds nuw [32 x i8], ptr %i.dw, i64 %.sroa.8.0.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dx, ptr noundef nonnull align 8 dereferenceable(32) %i.du, i64 32, i1 false), !noalias !6184
  %i.dy = add i64 %.sroa.811.0.i.i.i.i, 1         ; 2 uses
  %i.dz = load i64, ptr %i.ae, align 8, !tbaa !168, !noalias !6184 ; 3 uses
  %i.ea = icmp eq i64 %i.dy, %i.dz                ; 2 uses
  %i.eb = zext i1 %i.ea to i64
  %i.ec = add i64 %.sroa.38.0.i.i.i.i, %i.eb
  %i.ed = select i1 %i.ea, i64 0, i64 %i.dy
  %i.ee = add i64 %.sroa.8.0.i.i.i.i, 1           ; 2 uses
  %i.ef = icmp eq i64 %i.ee, %i.dz                ; 2 uses
  %i.eg = zext i1 %i.ef to i64
  %i.eh = add i64 %.sroa.3.0.i.i.i.i, %i.eg
  %i.ei = select i1 %i.ef, i64 0, i64 %i.ee
  %i.ej = add i64 %.05.i.i.i.i.i, -1              ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.ej, 0
  br i1 %.not.i.i.i.i.i, label %_ZSt4moveIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE5EEEEES9_ET0_T_SB_SA_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !6195

_ZSt4moveIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE5EEEEES9_ET0_T_SB_SA_.exit: ; preds = %.lr.ph.i.i.i.i.i, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEplERKm.exit24
  %i.ek = phi i64 [ %i.ct, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEplERKm.exit24 ], [ %i.dz, %.lr.ph.i.i.i.i.i ] ; 6 uses
  %.not.i.i25 = icmp ult i64 %i.de, %i.ek
  br i1 %.not.i.i25, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEplERKm.exit28, label %bb.n

bb.n:                                             ; preds = %_ZSt4moveIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE5EEEEES9_ET0_T_SB_SA_.exit
  %i.el = mul i64 %i.ek, %.sroa.19.0
  %i.em = add i64 %i.el, %i.de                    ; 2 uses
  %i.en = zext i64 %i.em to i128
  %i.eo = load i64, ptr %i.cj, align 8, !tbaa !1232, !noalias !6196
  %i.ep = zext i64 %i.eo to i128
  %i.eq = mul nuw i128 %i.ep, %i.en
  %i.er = lshr i128 %i.eq, 64
  %i.es = trunc nuw i128 %i.er to i64             ; 2 uses
  %i.et = mul i64 %i.ek, %i.es
  %i.eu = sub i64 %i.em, %i.et
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEplERKm.exit28

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEplERKm.exit28: ; preds = %_ZSt4moveIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE5EEEEES9_ET0_T_SB_SA_.exit, %bb.n
  %.05.i26 = phi i64 [ %.sroa.19.0, %_ZSt4moveIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE5EEEEES9_ET0_T_SB_SA_.exit ], [ %i.es, %bb.n ] ; 2 uses
  %.0.i27 = phi i64 [ %i.de, %_ZSt4moveIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE5EEEEES9_ET0_T_SB_SA_.exit ], [ %i.eu, %bb.n ]
  %i.ev = add i64 %.0.i27, -1                     ; 3 uses
  %.not.i.i29 = icmp ult i64 %i.ev, %i.ek
  br i1 %.not.i.i29, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEmiERKm.exit, label %bb.o

bb.o:                                             ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEplERKm.exit28
  %i.ew = mul i64 %.05.i26, %i.ek
  %i.ex = add i64 %i.ev, %i.ew                    ; 2 uses
  %i.ey = zext i64 %i.ex to i128
  %i.ez = load i64, ptr %i.cj, align 8, !tbaa !1232, !noalias !6199
  %i.fa = zext i64 %i.ez to i128
  %i.fb = mul nuw i128 %i.fa, %i.ey
  %i.fc = lshr i128 %i.fb, 64
  %i.fd = trunc nuw i128 %i.fc to i64             ; 2 uses
  %i.fe = mul i64 %i.ek, %i.fd
  %i.ff = sub i64 %i.ex, %i.fe
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEmiERKm.exit

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEmiERKm.exit: ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEplERKm.exit28, %bb.o
  %.05.i30 = phi i64 [ %.05.i26, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEplERKm.exit28 ], [ %i.fd, %bb.o ]
  %.0.i31 = phi i64 [ %i.ev, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEplERKm.exit28 ], [ %i.ff, %bb.o ]
  %i.fg = load ptr, ptr %i.ck, align 8, !tbaa !1246
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %.05.i30
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !1051
  %i.fj = getelementptr inbounds nuw [32 x i8], ptr %i.fi, i64 %.0.i31
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.fj, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %.critedge

bb.p:                                             ; preds = %bb.j
  %i.fk = add i64 %.0221, %.sroa.39.0             ; 3 uses
  %i.fl = load i64, ptr %i.ae, align 8, !tbaa !168, !noalias !6202 ; 3 uses
  %.not.i.i32 = icmp ult i64 %i.fk, %i.fl
  br i1 %.not.i.i32, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEplERKm.exit35.preheader, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.fm = mul i64 %i.fl, %.sroa.19.0
  %i.fn = add i64 %i.fm, %i.fk                    ; 2 uses
  %i.fo = zext i64 %i.fn to i128
  %i.fp = load i64, ptr %i.cj, align 8, !tbaa !1232, !noalias !6202
  %i.fq = zext i64 %i.fp to i128
  %i.fr = mul nuw i128 %i.fq, %i.fo
  %i.fs = lshr i128 %i.fr, 64
  %i.ft = trunc nuw i128 %i.fs to i64             ; 2 uses
  %i.fu = mul i64 %i.fl, %i.ft
  %i.fv = sub i64 %i.fn, %i.fu
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEplERKm.exit35.preheader

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEplERKm.exit35.preheader: ; preds = %bb.p, %bb.q
  %.sroa.6109.0241.ph = phi i64 [ %i.ft, %bb.q ], [ %.sroa.19.0, %bb.p ]
  %.sroa.10.0240.ph = phi i64 [ %i.fv, %bb.q ], [ %i.fk, %bb.p ]
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEplERKm.exit35

bb.r:                                             ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEplERKm.exit35
  %i.fw = urem i64 %.0220, %.0221                 ; 2 uses
  %.not11 = icmp eq i64 %i.fw, 0
  br i1 %.not11, label %.critedge, label %bb.s

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEplERKm.exit35: ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEplERKm.exit35.preheader, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEplERKm.exit35
  %.07244 = phi i64 [ %i.gp, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEplERKm.exit35 ], [ 0, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEplERKm.exit35.preheader ]
  %.sroa.39.1243 = phi i64 [ %i.gj, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEplERKm.exit35 ], [ %.sroa.39.0, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEplERKm.exit35.preheader ] ; 2 uses
  %.sroa.19.1242 = phi i64 [ %i.gi, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEplERKm.exit35 ], [ %.sroa.19.0, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEplERKm.exit35.preheader ] ; 2 uses
  %.sroa.6109.0241 = phi i64 [ %i.gn, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEplERKm.exit35 ], [ %.sroa.6109.0241.ph, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEplERKm.exit35.preheader ] ; 2 uses
  %.sroa.10.0240 = phi i64 [ %i.go, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEplERKm.exit35 ], [ %.sroa.10.0240.ph, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEplERKm.exit35.preheader ] ; 2 uses
  %i.fx = load ptr, ptr %i.ck, align 8, !tbaa !1246 ; 2 uses
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %.sroa.19.1242
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !1051
  %i.ga = getelementptr inbounds nuw [32 x i8], ptr %i.fz, i64 %.sroa.39.1243 ; 2 uses
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %.sroa.6109.0241
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !1051
  %i.gd = getelementptr inbounds nuw [32 x i8], ptr %i.gc, i64 %.sroa.10.0240 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.ga, i64 32, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ga, ptr noundef nonnull align 8 dereferenceable(32) %i.gd, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.gd, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.ge = add i64 %.sroa.39.1243, 1               ; 2 uses
  %i.gf = load i64, ptr %i.ae, align 8, !tbaa !168 ; 2 uses
  %i.gg = icmp eq i64 %i.ge, %i.gf                ; 2 uses
  %i.gh = zext i1 %i.gg to i64
  %i.gi = add i64 %.sroa.19.1242, %i.gh           ; 2 uses
  %i.gj = select i1 %i.gg, i64 0, i64 %i.ge       ; 2 uses
  %i.gk = add i64 %.sroa.10.0240, 1               ; 2 uses
  %i.gl = icmp eq i64 %i.gk, %i.gf                ; 2 uses
  %i.gm = zext i1 %i.gl to i64
  %i.gn = add i64 %.sroa.6109.0241, %i.gm
  %i.go = select i1 %i.gl, i64 0, i64 %i.gk
  %i.gp = add nuw i64 %.07244, 1                  ; 2 uses
  %exitcond255.not = icmp eq i64 %i.gp, %i.cl
  br i1 %exitcond255.not, label %bb.r, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEplERKm.exit35, !llvm.loop !6205

bb.s:                                             ; preds = %bb.r
  %i.gq = sub i64 %.0221, %i.fw
  br label %.backedge

bb.t:                                             ; preds = %bb.i
  %i.gr = icmp eq i64 %i.cl, 1
  br i1 %i.gr, label %bb.u, label %bb.aa

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  %i.gs = add i64 %.0220, %.sroa.39.0             ; 7 uses
  %i.gt = load i64, ptr %i.ae, align 8, !tbaa !168, !noalias !6206 ; 14 uses
  %.not.i.i36 = icmp ult i64 %i.gs, %i.gt         ; 3 uses
  br i1 %.not.i.i36, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEplERKm.exit39, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.gu = mul i64 %i.gt, %.sroa.19.0
  %i.gv = add i64 %i.gu, %i.gs                    ; 2 uses
  %i.gw = zext i64 %i.gv to i128
  %i.gx = load i64, ptr %i.cj, align 8, !tbaa !1232, !noalias !6206
  %i.gy = zext i64 %i.gx to i128
  %i.gz = mul nuw i128 %i.gy, %i.gw
  %i.ha = lshr i128 %i.gz, 64
  %i.hb = trunc nuw i128 %i.ha to i64             ; 2 uses
  %i.hc = mul i64 %i.gt, %i.hb
  %i.hd = sub i64 %i.gv, %i.hc
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEplERKm.exit39

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEplERKm.exit39: ; preds = %bb.u, %bb.v
  %.05.i37 = phi i64 [ %.sroa.19.0, %bb.u ], [ %i.hb, %bb.v ] ; 2 uses
  %.0.i38 = phi i64 [ %i.gs, %bb.u ], [ %i.hd, %bb.v ]
  %i.he = add i64 %.0.i38, -1                     ; 3 uses
  %.not.i.i40 = icmp ult i64 %i.he, %i.gt
  br i1 %.not.i.i40, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEmiERKm.exit43, label %bb.w

bb.w:                                             ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEplERKm.exit39
  %i.hf = mul i64 %.05.i37, %i.gt
  %i.hg = add i64 %i.he, %i.hf                    ; 2 uses
  %i.hh = zext i64 %i.hg to i128
  %i.hi = load i64, ptr %i.cj, align 8, !tbaa !1232, !noalias !6209
  %i.hj = zext i64 %i.hi to i128
  %i.hk = mul nuw i128 %i.hj, %i.hh
  %i.hl = lshr i128 %i.hk, 64
  %i.hm = trunc nuw i128 %i.hl to i64             ; 2 uses
  %i.hn = mul i64 %i.gt, %i.hm
  %i.ho = sub i64 %i.hg, %i.hn
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEmiERKm.exit43

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEmiERKm.exit43: ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEplERKm.exit39, %bb.w
  %.05.i41 = phi i64 [ %.05.i37, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEplERKm.exit39 ], [ %i.hm, %bb.w ]
  %.0.i42 = phi i64 [ %i.he, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEplERKm.exit39 ], [ %i.ho, %bb.w ]
  %i.hp = load ptr, ptr %i.ck, align 8, !tbaa !1246 ; 2 uses
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.hp, i64 %.05.i41
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !1051
  %i.hs = getelementptr inbounds nuw [32 x i8], ptr %i.hr, i64 %.0.i42
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %i.hs, i64 32, i1 false)
  br i1 %.not.i.i36, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEplERKm.exit47, label %bb.x

bb.x:                                             ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEmiERKm.exit43
  %i.ht = mul i64 %i.gt, %.sroa.19.0
  %i.hu = add i64 %i.ht, %i.gs                    ; 2 uses
  %i.hv = zext i64 %i.hu to i128
  %i.hw = load i64, ptr %i.cj, align 8, !tbaa !1232, !noalias !6212
  %i.hx = zext i64 %i.hw to i128
  %i.hy = mul nuw i128 %i.hx, %i.hv
  %i.hz = lshr i128 %i.hy, 64
  %i.ia = trunc nuw i128 %i.hz to i64             ; 2 uses
  %i.ib = mul i64 %i.gt, %i.ia
  %i.ic = sub i64 %i.hu, %i.ib
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEplERKm.exit47

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEplERKm.exit47: ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEmiERKm.exit43, %bb.x
  %.05.i45 = phi i64 [ %.sroa.19.0, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEmiERKm.exit43 ], [ %i.ia, %bb.x ] ; 2 uses
  %.0.i46 = phi i64 [ %i.gs, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEmiERKm.exit43 ], [ %i.ic, %bb.x ]
  %i.id = add i64 %.0.i46, -1                     ; 3 uses
  %.not.i.i48 = icmp ult i64 %i.id, %i.gt
  br i1 %.not.i.i48, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEmiERKm.exit51, label %bb.y

bb.y:                                             ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEplERKm.exit47
  %i.ie = mul i64 %.05.i45, %i.gt
  %i.if = add i64 %i.id, %i.ie                    ; 2 uses
  %i.ig = zext i64 %i.if to i128
  %i.ih = load i64, ptr %i.cj, align 8, !tbaa !1232, !noalias !6215
  %i.ii = zext i64 %i.ih to i128
  %i.ij = mul nuw i128 %i.ii, %i.ig
  %i.ik = lshr i128 %i.ij, 64
  %i.il = trunc nuw i128 %i.ik to i64             ; 2 uses
  %i.im = mul i64 %i.gt, %i.il
  %i.in = sub i64 %i.if, %i.im
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEmiERKm.exit51

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEmiERKm.exit51: ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEplERKm.exit47, %bb.y
  %.05.i49 = phi i64 [ %.05.i45, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEplERKm.exit47 ], [ %i.il, %bb.y ] ; 2 uses
  %.0.i50 = phi i64 [ %i.id, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEplERKm.exit47 ], [ %i.in, %bb.y ] ; 2 uses
  br i1 %.not.i.i36, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEplERKm.exit55, label %bb.z

bb.z:                                             ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEmiERKm.exit51
  %i.io = mul i64 %i.gt, %.sroa.19.0
  %i.ip = add i64 %i.io, %i.gs                    ; 2 uses
  %i.iq = zext i64 %i.ip to i128
  %i.ir = load i64, ptr %i.cj, align 8, !tbaa !1232, !noalias !6218
  %i.is = zext i64 %i.ir to i128
  %i.it = mul nuw i128 %i.is, %i.iq
  %i.iu = lshr i128 %i.it, 64
  %i.iv = trunc nuw i128 %i.iu to i64             ; 2 uses
  %i.iw = mul i64 %i.gt, %i.iv
  %i.ix = sub i64 %i.ip, %i.iw
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEplERKm.exit55

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEplERKm.exit55: ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEmiERKm.exit51, %bb.z
  %.05.i53 = phi i64 [ %.sroa.19.0, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEmiERKm.exit51 ], [ %i.iv, %bb.z ]
  %.0.i54 = phi i64 [ %i.gs, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEmiERKm.exit51 ], [ %i.ix, %bb.z ]
  %reass.add = sub i64 %.05.i49, %.sroa.19.0
  %reass.mul = mul i64 %reass.add, %i.gt
  %i.iy = sub i64 %.0.i50, %.sroa.39.0
  %i.iz = add i64 %i.iy, %reass.mul               ; 2 uses
  %.not5.i.i.i.i.i = icmp eq i64 %i.iz, 0
  br i1 %.not5.i.i.i.i.i, label %_ZSt13move_backwardIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE5EEEEES9_ET0_T_SB_SA_.exit, label %.lr.ph.i.i.i.i.i57

.lr.ph.i.i.i.i.i57:                               ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEplERKm.exit55, %.lr.ph.i.i.i.i.i57
  %.sroa.36.0.i.i.i.i = phi i64 [ %i.jc, %.lr.ph.i.i.i.i.i57 ], [ %.05.i49, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEplERKm.exit55 ]
  %.sroa.7.0.i.i.i.i = phi i64 [ %i.jo, %.lr.ph.i.i.i.i.i57 ], [ %.0.i54, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEplERKm.exit55 ] ; 2 uses
  %.sroa.3.0.i.i.i.i58 = phi i64 [ %i.jm, %.lr.ph.i.i.i.i.i57 ], [ %.05.i53, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEplERKm.exit55 ]
  %.sroa.78.0.i.i.i.i = phi i64 [ %i.jf, %.lr.ph.i.i.i.i.i57 ], [ %.0.i50, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEplERKm.exit55 ] ; 2 uses
  %.06.i.i.i.i.i = phi i64 [ %i.js, %.lr.ph.i.i.i.i.i57 ], [ %i.iz, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEplERKm.exit55 ]
  %i.ja = add i64 %.sroa.78.0.i.i.i.i, -1
  %i.jb = icmp eq i64 %.sroa.78.0.i.i.i.i, 0      ; 2 uses
  %.neg.i.i.i.i.i.i.i = sext i1 %i.jb to i64
  %i.jc = add i64 %.sroa.36.0.i.i.i.i, %.neg.i.i.i.i.i.i.i ; 2 uses
  %i.jd = load i64, ptr %i.ae, align 8, !tbaa !168, !noalias !6221 ; 2 uses
  %i.je = select i1 %i.jb, i64 %i.jd, i64 0
  %i.jf = add i64 %i.ja, %i.je                    ; 2 uses
  %i.jg = load ptr, ptr %i.ck, align 8, !tbaa !1246, !noalias !6221 ; 2 uses
  %i.jh = getelementptr inbounds nuw [8 x i8], ptr %i.jg, i64 %i.jc
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !1051, !noalias !6221
  %i.jj = getelementptr inbounds nuw [32 x i8], ptr %i.ji, i64 %i.jf
  %i.jk = add i64 %.sroa.7.0.i.i.i.i, -1
  %i.jl = icmp eq i64 %.sroa.7.0.i.i.i.i, 0       ; 2 uses
  %.neg.i.i2.i.i.i.i.i = sext i1 %i.jl to i64
  %i.jm = add i64 %.sroa.3.0.i.i.i.i58, %.neg.i.i2.i.i.i.i.i ; 2 uses
  %i.jn = select i1 %i.jl, i64 %i.jd, i64 0
  %i.jo = add i64 %i.jk, %i.jn                    ; 2 uses
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %i.jg, i64 %i.jm
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !1051, !noalias !6221
  %i.jr = getelementptr inbounds nuw [32 x i8], ptr %i.jq, i64 %i.jo
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.jr, ptr noundef nonnull align 8 dereferenceable(32) %i.jj, i64 32, i1 false), !noalias !6221
  %i.js = add i64 %.06.i.i.i.i.i, -1              ; 2 uses
  %.not.i.i.i.i.i59 = icmp eq i64 %i.js, 0
  br i1 %.not.i.i.i.i.i59, label %_ZSt13move_backwardIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE5EEEEES9_ET0_T_SB_SA_.exit.loopexit, label %.lr.ph.i.i.i.i.i57, !llvm.loop !6232

_ZSt13move_backwardIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE5EEEEES9_ET0_T_SB_SA_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i57
  %.pre = load ptr, ptr %i.ck, align 8, !tbaa !1246
  br label %_ZSt13move_backwardIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE5EEEEES9_ET0_T_SB_SA_.exit

_ZSt13move_backwardIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE5EEEEES9_ET0_T_SB_SA_.exit: ; preds = %_ZSt13move_backwardIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE5EEEEES9_ET0_T_SB_SA_.exit.loopexit, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEplERKm.exit55
  %i.jt = phi ptr [ %.pre, %_ZSt13move_backwardIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE5EEEEES9_ET0_T_SB_SA_.exit.loopexit ], [ %i.hp, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEplERKm.exit55 ]
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %i.jt, i64 %.sroa.19.0
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !1051
  %i.jw = getelementptr inbounds nuw [32 x i8], ptr %i.jv, i64 %.sroa.39.0
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.jw, ptr noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %.critedge

bb.aa:                                            ; preds = %bb.t
  %i.jx = add i64 %.0220, %.sroa.39.0             ; 3 uses
  %i.jy = load i64, ptr %i.ae, align 8, !tbaa !168, !noalias !6233 ; 6 uses
  %.not.i.i60 = icmp ult i64 %i.jx, %i.jy
  br i1 %.not.i.i60, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEplERKm.exit63, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.jz = mul i64 %i.jy, %.sroa.19.0
  %i.ka = add i64 %i.jz, %i.jx                    ; 2 uses
  %i.kb = zext i64 %i.ka to i128
  %i.kc = load i64, ptr %i.cj, align 8, !tbaa !1232, !noalias !6233
  %i.kd = zext i64 %i.kc to i128
  %i.ke = mul nuw i128 %i.kd, %i.kb
  %i.kf = lshr i128 %i.ke, 64
  %i.kg = trunc nuw i128 %i.kf to i64             ; 2 uses
  %i.kh = mul i64 %i.jy, %i.kg
  %i.ki = sub i64 %i.ka, %i.kh
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEplERKm.exit63

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEplERKm.exit63: ; preds = %bb.aa, %bb.ab
  %.05.i61 = phi i64 [ %.sroa.19.0, %bb.aa ], [ %i.kg, %bb.ab ] ; 3 uses
  %.0.i62 = phi i64 [ %i.jx, %bb.aa ], [ %i.ki, %bb.ab ] ; 2 uses
  %i.kj = sub i64 %.0.i62, %i.cl                  ; 3 uses
  %.not.i.i64 = icmp ult i64 %i.kj, %i.jy
  br i1 %.not.i.i64, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEmiERKm.exit67, label %bb.ac

bb.ac:                                            ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEplERKm.exit63
  %i.kk = mul i64 %.05.i61, %i.jy
  %i.kl = add i64 %i.kj, %i.kk                    ; 2 uses
  %i.km = zext i64 %i.kl to i128
  %i.kn = load i64, ptr %i.cj, align 8, !tbaa !1232, !noalias !6236
  %i.ko = zext i64 %i.kn to i128
  %i.kp = mul nuw i128 %i.ko, %i.km
  %i.kq = lshr i128 %i.kp, 64
  %i.kr = trunc nuw i128 %i.kq to i64             ; 2 uses
  %i.ks = mul i64 %i.jy, %i.kr
  %i.kt = sub i64 %i.kl, %i.ks
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEmiERKm.exit67

end_hunk_14
begin_hunk_15_@_ZN14duckdb_pdqsort14pdqsort_detail26partition_right_branchlessIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE6EEEEEZN15duckdb_ska_sort6detail15StdSortFallbackISB_KNS2_13SkaExtractKeyISA_EEEEvT_SI_RT0_EUlRKSA_SM_E_EESt4pairISI_bESI_SI_SJ_:bb.a
  %.not504 = icmp eq i64 %i.dn, 0
  br i1 %.not504, label %.loopexit436, label %.lr.ph466.preheader

.lr.ph466.preheader:                              ; preds = %.preheader437
  %i.iy = trunc nuw nsw i64 %i.dn to i8
  br label %.lr.ph466

.preheader:                                       ; preds = %.loopexit440, %.preheader
  %.064473 = phi i8 [ %i.na, %.preheader ], [ 0, %.loopexit440 ] ; 9 uses
  %.sroa.76.4472 = phi i64 [ %i.nh, %.preheader ], [ %.sroa.76.3481, %.loopexit440 ] ; 2 uses
  %.sroa.30.4471 = phi i64 [ %i.ne, %.preheader ], [ %.sroa.30.3480, %.loopexit440 ]
  %.1427470 = phi i64 [ %i.no, %.preheader ], [ %.0426479, %.loopexit440 ] ; 2 uses
  %i.iz = or disjoint i8 %.064473, 1
  %i.ja = getelementptr inbounds nuw i8, ptr %i.cq, i64 %.1427470
  store i8 %i.iz, ptr %i.ja, align 1, !tbaa !527
  %i.jb = add i64 %.sroa.76.4472, -1
  %i.jc = icmp eq i64 %.sroa.76.4472, 0           ; 2 uses
  %.neg.i.i98 = sext i1 %i.jc to i64
  %i.jd = add i64 %.sroa.30.4471, %.neg.i.i98     ; 2 uses
  %i.je = load i64, ptr %i.cv, align 8, !tbaa !168
  %i.jf = select i1 %i.jc, i64 %i.je, i64 0
  %i.jg = add i64 %i.jb, %i.jf                    ; 3 uses
  %i.jh = load ptr, ptr %i.by, align 8, !tbaa !1246
  %i.ji = getelementptr inbounds nuw [8 x i8], ptr %i.jh, i64 %i.jd
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !1051
  %i.jk = getelementptr inbounds nuw [16 x i8], ptr %i.jj, i64 %i.jg
  %.val.val.i.i99 = load i64, ptr %i.jk, align 8, !tbaa !168
  %i.jl = icmp ult i64 %.val.val.i.i99, %.sroa.0422.0.copyload
  %i.jm = zext i1 %i.jl to i64
  %i.jn = add i64 %.1427470, %i.jm                ; 2 uses
  %i.jo = or disjoint i8 %.064473, 2
  %i.jp = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.jn
  store i8 %i.jo, ptr %i.jp, align 1, !tbaa !527
  %i.jq = add i64 %i.jg, -1
  %i.jr = icmp eq i64 %i.jg, 0                    ; 2 uses
  %.neg.i.i101 = sext i1 %i.jr to i64
  %i.js = add i64 %i.jd, %.neg.i.i101             ; 2 uses
  %i.jt = load i64, ptr %i.cv, align 8, !tbaa !168
  %i.ju = select i1 %i.jr, i64 %i.jt, i64 0
  %i.jv = add i64 %i.jq, %i.ju                    ; 3 uses
  %i.jw = load ptr, ptr %i.by, align 8, !tbaa !1246
  %i.jx = getelementptr inbounds nuw [8 x i8], ptr %i.jw, i64 %i.js
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !1051
  %i.jz = getelementptr inbounds nuw [16 x i8], ptr %i.jy, i64 %i.jv
  %.val.val.i.i102 = load i64, ptr %i.jz, align 8, !tbaa !168
  %i.ka = icmp ult i64 %.val.val.i.i102, %.sroa.0422.0.copyload
  %i.kb = zext i1 %i.ka to i64
  %i.kc = add i64 %i.jn, %i.kb                    ; 2 uses
  %i.kd = or disjoint i8 %.064473, 3
  %i.ke = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.kc
  store i8 %i.kd, ptr %i.ke, align 1, !tbaa !527
  %i.kf = add i64 %i.jv, -1
  %i.kg = icmp eq i64 %i.jv, 0                    ; 2 uses
  %.neg.i.i104 = sext i1 %i.kg to i64
  %i.kh = add i64 %i.js, %.neg.i.i104             ; 2 uses
  %i.ki = load i64, ptr %i.cv, align 8, !tbaa !168
  %i.kj = select i1 %i.kg, i64 %i.ki, i64 0
  %i.kk = add i64 %i.kf, %i.kj                    ; 3 uses
  %i.kl = load ptr, ptr %i.by, align 8, !tbaa !1246
  %i.km = getelementptr inbounds nuw [8 x i8], ptr %i.kl, i64 %i.kh
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !1051
  %i.ko = getelementptr inbounds nuw [16 x i8], ptr %i.kn, i64 %i.kk
  %.val.val.i.i105 = load i64, ptr %i.ko, align 8, !tbaa !168
  %i.kp = icmp ult i64 %.val.val.i.i105, %.sroa.0422.0.copyload
  %i.kq = zext i1 %i.kp to i64
  %i.kr = add i64 %i.kc, %i.kq                    ; 2 uses
  %i.ks = or disjoint i8 %.064473, 4
  %i.kt = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.kr
  store i8 %i.ks, ptr %i.kt, align 1, !tbaa !527
  %i.ku = add i64 %i.kk, -1
  %i.kv = icmp eq i64 %i.kk, 0                    ; 2 uses
  %.neg.i.i107 = sext i1 %i.kv to i64
  %i.kw = add i64 %i.kh, %.neg.i.i107             ; 2 uses
  %i.kx = load i64, ptr %i.cv, align 8, !tbaa !168
  %i.ky = select i1 %i.kv, i64 %i.kx, i64 0
  %i.kz = add i64 %i.ku, %i.ky                    ; 3 uses
  %i.la = load ptr, ptr %i.by, align 8, !tbaa !1246
  %i.lb = getelementptr inbounds nuw [8 x i8], ptr %i.la, i64 %i.kw
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !1051
  %i.ld = getelementptr inbounds nuw [16 x i8], ptr %i.lc, i64 %i.kz
  %.val.val.i.i108 = load i64, ptr %i.ld, align 8, !tbaa !168
  %i.le = icmp ult i64 %.val.val.i.i108, %.sroa.0422.0.copyload
  %i.lf = zext i1 %i.le to i64
  %i.lg = add i64 %i.kr, %i.lf                    ; 2 uses
  %i.lh = or disjoint i8 %.064473, 5
  %i.li = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.lg
  store i8 %i.lh, ptr %i.li, align 1, !tbaa !527
  %i.lj = add i64 %i.kz, -1
  %i.lk = icmp eq i64 %i.kz, 0                    ; 2 uses
  %.neg.i.i110 = sext i1 %i.lk to i64
  %i.ll = add i64 %i.kw, %.neg.i.i110             ; 2 uses
  %i.lm = load i64, ptr %i.cv, align 8, !tbaa !168
  %i.ln = select i1 %i.lk, i64 %i.lm, i64 0
  %i.lo = add i64 %i.lj, %i.ln                    ; 3 uses
  %i.lp = load ptr, ptr %i.by, align 8, !tbaa !1246
  %i.lq = getelementptr inbounds nuw [8 x i8], ptr %i.lp, i64 %i.ll
  %i.lr = load ptr, ptr %i.lq, align 8, !tbaa !1051
  %i.ls = getelementptr inbounds nuw [16 x i8], ptr %i.lr, i64 %i.lo
  %.val.val.i.i111 = load i64, ptr %i.ls, align 8, !tbaa !168
  %i.lt = icmp ult i64 %.val.val.i.i111, %.sroa.0422.0.copyload
  %i.lu = zext i1 %i.lt to i64
  %i.lv = add i64 %i.lg, %i.lu                    ; 2 uses
  %i.lw = or disjoint i8 %.064473, 6
  %i.lx = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.lv
  store i8 %i.lw, ptr %i.lx, align 1, !tbaa !527
  %i.ly = add i64 %i.lo, -1
  %i.lz = icmp eq i64 %i.lo, 0                    ; 2 uses
  %.neg.i.i113 = sext i1 %i.lz to i64
  %i.ma = add i64 %i.ll, %.neg.i.i113             ; 2 uses
  %i.mb = load i64, ptr %i.cv, align 8, !tbaa !168
  %i.mc = select i1 %i.lz, i64 %i.mb, i64 0
  %i.md = add i64 %i.ly, %i.mc                    ; 3 uses
  %i.me = load ptr, ptr %i.by, align 8, !tbaa !1246
  %i.mf = getelementptr inbounds nuw [8 x i8], ptr %i.me, i64 %i.ma
  %i.mg = load ptr, ptr %i.mf, align 8, !tbaa !1051
  %i.mh = getelementptr inbounds nuw [16 x i8], ptr %i.mg, i64 %i.md
  %.val.val.i.i114 = load i64, ptr %i.mh, align 8, !tbaa !168
  %i.mi = icmp ult i64 %.val.val.i.i114, %.sroa.0422.0.copyload
  %i.mj = zext i1 %i.mi to i64
  %i.mk = add i64 %i.lv, %i.mj                    ; 2 uses
  %i.ml = or disjoint i8 %.064473, 7
  %i.mm = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.mk
  store i8 %i.ml, ptr %i.mm, align 1, !tbaa !527
  %i.mn = add i64 %i.md, -1
  %i.mo = icmp eq i64 %i.md, 0                    ; 2 uses
  %.neg.i.i116 = sext i1 %i.mo to i64
  %i.mp = add i64 %i.ma, %.neg.i.i116             ; 2 uses
  %i.mq = load i64, ptr %i.cv, align 8, !tbaa !168
  %i.mr = select i1 %i.mo, i64 %i.mq, i64 0
  %i.ms = add i64 %i.mn, %i.mr                    ; 3 uses
  %i.mt = load ptr, ptr %i.by, align 8, !tbaa !1246
  %i.mu = getelementptr inbounds nuw [8 x i8], ptr %i.mt, i64 %i.mp
  %i.mv = load ptr, ptr %i.mu, align 8, !tbaa !1051
  %i.mw = getelementptr inbounds nuw [16 x i8], ptr %i.mv, i64 %i.ms
  %.val.val.i.i117 = load i64, ptr %i.mw, align 8, !tbaa !168
  %i.mx = icmp ult i64 %.val.val.i.i117, %.sroa.0422.0.copyload
  %i.my = zext i1 %i.mx to i64
  %i.mz = add i64 %i.mk, %i.my                    ; 2 uses
  %i.na = add nuw nsw i8 %.064473, 8              ; 2 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.mz
  store i8 %i.na, ptr %i.nb, align 1, !tbaa !527
  %i.nc = add i64 %i.ms, -1
  %i.nd = icmp eq i64 %i.ms, 0                    ; 2 uses
  %.neg.i.i119 = sext i1 %i.nd to i64
  %i.ne = add i64 %i.mp, %.neg.i.i119             ; 3 uses
  %i.nf = load i64, ptr %i.cv, align 8, !tbaa !168
  %i.ng = select i1 %i.nd, i64 %i.nf, i64 0
  %i.nh = add i64 %i.nc, %i.ng                    ; 3 uses
  %i.ni = load ptr, ptr %i.by, align 8, !tbaa !1246
  %i.nj = getelementptr inbounds nuw [8 x i8], ptr %i.ni, i64 %i.ne
  %i.nk = load ptr, ptr %i.nj, align 8, !tbaa !1051
  %i.nl = getelementptr inbounds nuw [16 x i8], ptr %i.nk, i64 %i.nh
  %.val.val.i.i120 = load i64, ptr %i.nl, align 8, !tbaa !168
  %i.nm = icmp ult i64 %.val.val.i.i120, %.sroa.0422.0.copyload
  %i.nn = zext i1 %i.nm to i64
  %i.no = add i64 %i.mz, %i.nn                    ; 2 uses
  %i.np = icmp samesign ult i8 %.064473, 56
  br i1 %i.np, label %.preheader, label %.loopexit436, !llvm.loop !7074

.lr.ph466:                                        ; preds = %.lr.ph466.preheader, %.lr.ph466
  %.0465 = phi i8 [ %i.nq, %.lr.ph466 ], [ 0, %.lr.ph466.preheader ]
  %.sroa.76.5464 = phi i64 [ %i.nx, %.lr.ph466 ], [ %.sroa.76.3481, %.lr.ph466.preheader ] ; 2 uses
  %.sroa.30.5463 = phi i64 [ %i.nu, %.lr.ph466 ], [ %.sroa.30.3480, %.lr.ph466.preheader ]
  %.2462 = phi i64 [ %i.oe, %.lr.ph466 ], [ %.0426479, %.lr.ph466.preheader ] ; 2 uses
  %i.nq = add nuw nsw i8 %.0465, 1                ; 3 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %i.cq, i64 %.2462
  store i8 %i.nq, ptr %i.nr, align 1, !tbaa !527
  %i.ns = add i64 %.sroa.76.5464, -1
  %i.nt = icmp eq i64 %.sroa.76.5464, 0           ; 2 uses
  %.neg.i.i122 = sext i1 %i.nt to i64
  %i.nu = add i64 %.sroa.30.5463, %.neg.i.i122    ; 3 uses
  %i.nv = load i64, ptr %i.cv, align 8, !tbaa !168
  %i.nw = select i1 %i.nt, i64 %i.nv, i64 0
  %i.nx = add i64 %i.ns, %i.nw                    ; 3 uses
  %i.ny = load ptr, ptr %i.by, align 8, !tbaa !1246
  %i.nz = getelementptr inbounds nuw [8 x i8], ptr %i.ny, i64 %i.nu
  %i.oa = load ptr, ptr %i.nz, align 8, !tbaa !1051
  %i.ob = getelementptr inbounds nuw [16 x i8], ptr %i.oa, i64 %i.nx
  %.val.val.i.i123 = load i64, ptr %i.ob, align 8, !tbaa !168
  %i.oc = icmp ult i64 %.val.val.i.i123, %.sroa.0422.0.copyload
  %i.od = zext i1 %i.oc to i64
  %i.oe = add i64 %.2462, %i.od                   ; 2 uses
  %i.of = icmp samesign ult i8 %i.nq, %i.iy
  br i1 %i.of, label %.lr.ph466, label %.loopexit436, !llvm.loop !7075

.loopexit436:                                     ; preds = %.lr.ph466, %.preheader, %.preheader437
  %.3 = phi i64 [ %i.no, %.preheader ], [ %.0426479, %.preheader437 ], [ %i.oe, %.lr.ph466 ] ; 4 uses
  %.sroa.30.6 = phi i64 [ %i.ne, %.preheader ], [ %.sroa.30.3480, %.preheader437 ], [ %i.nu, %.lr.ph466 ] ; 5 uses
  %.sroa.76.6 = phi i64 [ %i.nh, %.preheader ], [ %.sroa.76.3481, %.preheader437 ], [ %i.nx, %.lr.ph466 ] ; 4 uses
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %.3, i64 %.3431) ; 5 uses
  store ptr %i.c, ptr %6, align 8, !tbaa !1343
  store i64 %.sroa.5227.0475, ptr %i.cw, align 8, !tbaa !1340
  store i64 %.sroa.9229.0474, ptr %i.cx, align 8, !tbaa !1342
  store ptr %i.m, ptr %7, align 8, !tbaa !1343
  store i64 %.sroa.5.0477, ptr %i.cy, align 8, !tbaa !1340
  store i64 %.sroa.9.0476, ptr %i.cz, align 8, !tbaa !1342
  %i.og = getelementptr inbounds nuw i8, ptr %i.cm, i64 %.068484
  %i.oh = getelementptr inbounds nuw i8, ptr %i.cq, i64 %.067485
  %i.oi = icmp eq i64 %.3431, %.3
  call void @_ZN14duckdb_pdqsort14pdqsort_detail12swap_offsetsIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE6EEEEEEEvT_SC_PhSD_mb(ptr noundef nonnull dead_on_return %6, ptr noundef nonnull dead_on_return %7, ptr noundef %i.og, ptr noundef %i.oh, i64 noundef %.sroa.speculated, i1 noundef zeroext %i.oi)
  %i.oj = sub i64 %.3431, %.sroa.speculated       ; 3 uses
  %i.ok = sub i64 %.3, %.sroa.speculated          ; 4 uses
  %i.ol = add i64 %.sroa.speculated, %.068484
  %i.om = add i64 %.sroa.speculated, %.067485
  %.not433 = icmp ugt i64 %.3431, %.3             ; 3 uses
  %.sroa.9229.1 = select i1 %.not433, i64 %.sroa.9229.0474, i64 %.sroa.78.4 ; 2 uses
  %.sroa.5227.1 = select i1 %.not433, i64 %.sroa.5227.0475, i64 %.sroa.31.4 ; 3 uses
  %.169 = select i1 %.not433, i64 %i.ol, i64 0    ; 2 uses
  %i.on = icmp eq i64 %i.ok, 0                    ; 3 uses
  %.sroa.9.1 = select i1 %i.on, i64 %.sroa.76.6, i64 %.sroa.9.0476 ; 2 uses
  %.sroa.5.1 = select i1 %i.on, i64 %.sroa.30.6, i64 %.sroa.5.0477 ; 3 uses
  %.1 = select i1 %i.on, i64 0, i64 %i.om         ; 2 uses
  %i.oo = icmp eq i64 %.sroa.31.4, %.sroa.30.6
  %i.op = icmp ult i64 %.sroa.78.4, %.sroa.76.6
  %i.oq = icmp ult i64 %.sroa.31.4, %.sroa.30.6
  %i.or = select i1 %i.oo, i1 %i.op, i1 %i.oq
  br i1 %i.or, label %bb.i, label %._crit_edge, !llvm.loop !7076

._crit_edge:                                      ; preds = %.loopexit436
  %.not = icmp eq i64 %i.oj, 0
  br i1 %.not, label %.loopexit435, label %bb.j

bb.j:                                             ; preds = %._crit_edge
  %i.os = getelementptr inbounds nuw i8, ptr %i.cm, i64 %.169
  %i.ot = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.ou = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEplERKm.exit
  %.in = phi i64 [ %i.oj, %bb.j ], [ %i.ov, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEplERKm.exit ]
  %.sroa.76.7500 = phi i64 [ %.sroa.76.6, %bb.j ], [ %i.pq, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEplERKm.exit ] ; 2 uses
  %.sroa.30.7499 = phi i64 [ %.sroa.30.6, %bb.j ], [ %i.pn, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEplERKm.exit ]
  %i.ov = add i64 %.in, -1                        ; 3 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %i.os, i64 %i.ov
  %i.ox = load i8, ptr %i.ow, align 1, !tbaa !527
  %i.oy = zext i8 %i.ox to i64
  %i.oz = add i64 %.sroa.9229.1, %i.oy            ; 3 uses
  %i.pa = load i64, ptr %i.r, align 8, !tbaa !168, !noalias !7077 ; 3 uses
  %.not.i.i125 = icmp ult i64 %i.oz, %i.pa
  br i1 %.not.i.i125, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEplERKm.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.pb = mul i64 %i.pa, %.sroa.5227.1
  %i.pc = add i64 %i.pb, %i.oz                    ; 2 uses
  %i.pd = zext i64 %i.pc to i128
  %i.pe = load i64, ptr %i.ou, align 8, !tbaa !1232, !noalias !7077
  %i.pf = zext i64 %i.pe to i128
  %i.pg = mul nuw i128 %i.pf, %i.pd
  %i.ph = lshr i128 %i.pg, 64
  %i.pi = trunc nuw i128 %i.ph to i64             ; 2 uses
  %i.pj = mul i64 %i.pa, %i.pi
  %i.pk = sub i64 %i.pc, %i.pj
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEplERKm.exit

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEplERKm.exit: ; preds = %bb.k, %bb.l
  %.05.i126 = phi i64 [ %.sroa.5227.1, %bb.k ], [ %i.pi, %bb.l ]
  %.0.i127 = phi i64 [ %i.oz, %bb.k ], [ %i.pk, %bb.l ]
  %i.pl = add i64 %.sroa.76.7500, -1
  %i.pm = icmp eq i64 %.sroa.76.7500, 0           ; 2 uses
  %.neg.i.i128 = sext i1 %i.pm to i64
  %i.pn = add i64 %.sroa.30.7499, %.neg.i.i128    ; 3 uses
  %i.po = load i64, ptr %i.ot, align 8, !tbaa !168
  %i.pp = select i1 %i.pm, i64 %i.po, i64 0
  %i.pq = add i64 %i.pl, %i.pp                    ; 3 uses
  %i.pr = load ptr, ptr %i.f, align 8, !tbaa !1246
  %i.ps = getelementptr inbounds nuw [8 x i8], ptr %i.pr, i64 %.05.i126
  %i.pt = load ptr, ptr %i.ps, align 8, !tbaa !1051
  %i.pu = getelementptr inbounds nuw [16 x i8], ptr %i.pt, i64 %.0.i127 ; 2 uses
  %i.pv = load ptr, ptr %i.by, align 8, !tbaa !1246
  %i.pw = getelementptr inbounds nuw [8 x i8], ptr %i.pv, i64 %i.pn
  %i.px = load ptr, ptr %i.pw, align 8, !tbaa !1051
  %i.py = getelementptr inbounds nuw [16 x i8], ptr %i.px, i64 %i.pq ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %i.pu, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.pu, ptr noundef nonnull align 8 dereferenceable(16) %i.py, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.py, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %.not72 = icmp eq i64 %i.ov, 0
  br i1 %.not72, label %.loopexit435, label %bb.k, !llvm.loop !7080

.loopexit435:                                     ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEplERKm.exit, %._crit_edge
  %.sroa.31.5 = phi i64 [ %.sroa.31.4, %._crit_edge ], [ %i.pn, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEplERKm.exit ] ; 2 uses
  %.sroa.78.5 = phi i64 [ %.sroa.78.4, %._crit_edge ], [ %i.pq, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEplERKm.exit ] ; 2 uses
  %.not73 = icmp eq i64 %i.ok, 0
  br i1 %.not73, label %.loopexit435..loopexit_crit_edge, label %bb.m

.loopexit435..loopexit_crit_edge:                 ; preds = %bb.h, %.loopexit435
  %.sroa.78.5571 = phi i64 [ %.sroa.78.5, %.loopexit435 ], [ %i.ci, %bb.h ]
  %.sroa.31.5570 = phi i64 [ %.sroa.31.5, %.loopexit435 ], [ %i.ch, %bb.h ]
  %.pre.pre = load i64, ptr %i.r, align 8, !tbaa !168, !noalias !7081
  br label %.loopexit

bb.m:                                             ; preds = %.loopexit435
  %i.pz = getelementptr inbounds nuw i8, ptr %i.cq, i64 %.1
  %i.qa = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.qb = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEmiERKm.exit132
  %.in505 = phi i64 [ %i.ok, %bb.m ], [ %i.qc, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEmiERKm.exit132 ]
  %.sroa.78.6502 = phi i64 [ %.sroa.78.5, %bb.m ], [ %i.rf, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEmiERKm.exit132 ] ; 2 uses
  %.sroa.31.6501 = phi i64 [ %.sroa.31.5, %bb.m ], [ %i.re, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEmiERKm.exit132 ] ; 2 uses
  %i.qc = add i64 %.in505, -1                     ; 3 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %i.pz, i64 %i.qc
  %i.qe = load i8, ptr %i.qd, align 1, !tbaa !527
  %i.qf = zext i8 %i.qe to i64
  %i.qg = sub i64 %.sroa.9.1, %i.qf               ; 3 uses
  %i.qh = load i64, ptr %i.qa, align 8, !tbaa !168, !noalias !7084 ; 3 uses
  %.not.i.i129 = icmp ult i64 %i.qg, %i.qh
  br i1 %.not.i.i129, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEmiERKm.exit132, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.qi = mul i64 %i.qh, %.sroa.5.1
  %i.qj = add i64 %i.qi, %i.qg                    ; 2 uses
  %i.qk = zext i64 %i.qj to i128
  %i.ql = load i64, ptr %i.qb, align 8, !tbaa !1232, !noalias !7084
  %i.qm = zext i64 %i.ql to i128
  %i.qn = mul nuw i128 %i.qm, %i.qk
  %i.qo = lshr i128 %i.qn, 64
  %i.qp = trunc nuw i128 %i.qo to i64             ; 2 uses
  %i.qq = mul i64 %i.qh, %i.qp
  %i.qr = sub i64 %i.qj, %i.qq
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEmiERKm.exit132

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEmiERKm.exit132: ; preds = %bb.n, %bb.o
  %.05.i130 = phi i64 [ %.sroa.5.1, %bb.n ], [ %i.qp, %bb.o ]
  %.0.i131 = phi i64 [ %i.qg, %bb.n ], [ %i.qr, %bb.o ]
  %i.qs = load ptr, ptr %i.by, align 8, !tbaa !1246
  %i.qt = getelementptr inbounds nuw [8 x i8], ptr %i.qs, i64 %.05.i130
  %i.qu = load ptr, ptr %i.qt, align 8, !tbaa !1051
  %i.qv = getelementptr inbounds nuw [16 x i8], ptr %i.qu, i64 %.0.i131 ; 2 uses
  %i.qw = load ptr, ptr %i.f, align 8, !tbaa !1246
  %i.qx = getelementptr inbounds nuw [8 x i8], ptr %i.qw, i64 %.sroa.31.6501
  %i.qy = load ptr, ptr %i.qx, align 8, !tbaa !1051
  %i.qz = getelementptr inbounds nuw [16 x i8], ptr %i.qy, i64 %.sroa.78.6502 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.qv, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.qv, ptr noundef nonnull align 8 dereferenceable(16) %i.qz, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.qz, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.ra = add i64 %.sroa.78.6502, 1               ; 2 uses
  %i.rb = load i64, ptr %i.r, align 8, !tbaa !168 ; 2 uses
  %i.rc = icmp eq i64 %i.ra, %i.rb                ; 2 uses
  %i.rd = zext i1 %i.rc to i64
  %i.re = add i64 %.sroa.31.6501, %i.rd           ; 2 uses
  %i.rf = select i1 %i.rc, i64 0, i64 %i.ra       ; 2 uses
  %.not74 = icmp eq i64 %i.qc, 0
  br i1 %.not74, label %.loopexit, label %bb.n, !llvm.loop !7087

.loopexit:                                        ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEmiERKm.exit132, %.loopexit435..loopexit_crit_edge
  %.pre = phi i64 [ %.pre.pre, %.loopexit435..loopexit_crit_edge ], [ %i.rb, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEmiERKm.exit132 ]
  %.sroa.31.7 = phi i64 [ %.sroa.31.5570, %.loopexit435..loopexit_crit_edge ], [ %i.re, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEmiERKm.exit132 ]
  %.sroa.78.7 = phi i64 [ %.sroa.78.5571, %.loopexit435..loopexit_crit_edge ], [ %i.rf, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEmiERKm.exit132 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %.pre532 = add i64 %.sroa.78.7, -1
  br label %bb.p

bb.p:                                             ; preds = %.loopexit, %.critedge
  %.pre-phi = phi i64 [ %.pre532, %.loopexit ], [ %i.ac, %.critedge ] ; 3 uses
  %i.rg = phi i64 [ %.pre, %.loopexit ], [ %i.s, %.critedge ] ; 3 uses
  %.sroa.31.8 = phi i64 [ %.sroa.31.7, %.loopexit ], [ %i.w, %.critedge ] ; 2 uses
  %.not.i.i133 = icmp ult i64 %.pre-phi, %i.rg
  br i1 %.not.i.i133, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEmiERKm.exit136, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.rh = mul i64 %i.rg, %.sroa.31.8
  %i.ri = add i64 %i.rh, %.pre-phi                ; 2 uses
  %i.rj = zext i64 %i.ri to i128
  %i.rk = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.rl = load i64, ptr %i.rk, align 8, !tbaa !1232, !noalias !7081
  %i.rm = zext i64 %i.rl to i128
  %i.rn = mul nuw i128 %i.rm, %i.rj
  %i.ro = lshr i128 %i.rn, 64
  %i.rp = trunc nuw i128 %i.ro to i64             ; 2 uses
  %i.rq = mul i64 %i.rg, %i.rp
  %i.rr = sub i64 %i.ri, %i.rq
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEmiERKm.exit136

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEmiERKm.exit136: ; preds = %bb.p, %bb.q
  %.05.i134 = phi i64 [ %.sroa.31.8, %bb.p ], [ %i.rp, %bb.q ] ; 3 uses
  %.0.i135 = phi i64 [ %.pre-phi, %bb.p ], [ %i.rr, %bb.q ] ; 3 uses
  %i.rs = zext i1 %i.bx to i8
  %i.rt = load ptr, ptr %i.f, align 8, !tbaa !1246
  %i.ru = getelementptr inbounds nuw [8 x i8], ptr %i.rt, i64 %.05.i134
  %i.rv = load ptr, ptr %i.ru, align 8, !tbaa !1051
  %i.rw = getelementptr inbounds nuw [16 x i8], ptr %i.rv, i64 %.0.i135
  %i.rx = load ptr, ptr %1, align 8, !tbaa !1343
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rx, i64 8
  %i.rz = load i64, ptr %i.d, align 8, !tbaa !168
  %i.sa = load ptr, ptr %i.ry, align 8, !tbaa !1246
  %i.sb = getelementptr inbounds nuw [8 x i8], ptr %i.sa, i64 %i.rz
  %i.sc = load ptr, ptr %i.sb, align 8, !tbaa !1051
  %i.sd = load i64, ptr %i.e, align 8, !tbaa !168
  %i.se = getelementptr inbounds nuw [16 x i8], ptr %i.sc, i64 %i.sd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.se, ptr noundef nonnull align 8 dereferenceable(16) %i.rw, i64 16, i1 false)
  %i.sf = load ptr, ptr %i.f, align 8, !tbaa !1246
  %i.sg = getelementptr inbounds nuw [8 x i8], ptr %i.sf, i64 %.05.i134
  %i.sh = load ptr, ptr %i.sg, align 8, !tbaa !1051
  %i.si = getelementptr inbounds nuw [16 x i8], ptr %i.sh, i64 %.0.i135 ; 2 uses
  store i64 %.sroa.0422.0.copyload, ptr %i.si, align 8
  %.sroa.25.0..sroa_idx424 = getelementptr inbounds nuw i8, ptr %i.si, i64 8
end_hunk_15
begin_hunk_16_@_ZNSt3_V28__rotateIN6duckdb16block_iterator_tIKNS1_18BlockIteratorStateILNS1_22BlockIteratorStateTypeE0EEENS1_7SortKeyILNS1_11SortKeyTypeE6EEEEEEET_SB_SB_SB_St26random_access_iterator_tag:bb.a
bb.j:                                             ; preds = %bb.i
  %i.cn = icmp eq i64 %.0221, 1
  br i1 %i.cn, label %bb.k, label %bb.p

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.co = load ptr, ptr %i.ck, align 8, !tbaa !1246
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %.sroa.19.0
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !1051
  %i.cr = getelementptr inbounds nuw [16 x i8], ptr %i.cq, i64 %.sroa.39.0
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %i.cr, i64 16, i1 false)
  %i.cs = add i64 %.sroa.39.0, 1                  ; 3 uses
  %i.ct = load i64, ptr %i.ae, align 8, !tbaa !168, !noalias !7182 ; 8 uses
  %.not.i.i17 = icmp ult i64 %i.cs, %i.ct
  br i1 %.not.i.i17, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEplERKm.exit20, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cu = mul i64 %i.ct, %.sroa.19.0
  %i.cv = add i64 %i.cu, %i.cs                    ; 2 uses
  %i.cw = zext i64 %i.cv to i128
  %i.cx = load i64, ptr %i.cj, align 8, !tbaa !1232, !noalias !7182
  %i.cy = zext i64 %i.cx to i128
  %i.cz = mul nuw i128 %i.cy, %i.cw
  %i.da = lshr i128 %i.cz, 64
  %i.db = trunc nuw i128 %i.da to i64             ; 2 uses
  %i.dc = mul i64 %i.ct, %i.db
  %i.dd = sub i64 %i.cv, %i.dc
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEplERKm.exit20

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEplERKm.exit20: ; preds = %bb.k, %bb.l
  %.05.i18 = phi i64 [ %.sroa.19.0, %bb.k ], [ %i.db, %bb.l ] ; 2 uses
  %.0.i19 = phi i64 [ %i.cs, %bb.k ], [ %i.dd, %bb.l ] ; 2 uses
  %i.de = add i64 %.0220, %.sroa.39.0             ; 6 uses
  %.not.i.i21 = icmp ult i64 %i.de, %i.ct
  br i1 %.not.i.i21, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEplERKm.exit24, label %bb.m

bb.m:                                             ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEplERKm.exit20
  %i.df = mul i64 %i.ct, %.sroa.19.0
  %i.dg = add i64 %i.df, %i.de                    ; 2 uses
  %i.dh = zext i64 %i.dg to i128
  %i.di = load i64, ptr %i.cj, align 8, !tbaa !1232, !noalias !7185
  %i.dj = zext i64 %i.di to i128
  %i.dk = mul nuw i128 %i.dj, %i.dh
  %i.dl = lshr i128 %i.dk, 64
  %i.dm = trunc nuw i128 %i.dl to i64             ; 2 uses
  %i.dn = mul i64 %i.ct, %i.dm
  %i.do = sub i64 %i.dg, %i.dn
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEplERKm.exit24

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEplERKm.exit24: ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEplERKm.exit20, %bb.m
  %.05.i22 = phi i64 [ %.sroa.19.0, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEplERKm.exit20 ], [ %i.dm, %bb.m ]
  %.0.i23 = phi i64 [ %i.de, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEplERKm.exit20 ], [ %i.do, %bb.m ]
  %reass.add226 = sub i64 %.05.i22, %.05.i18
  %reass.mul227 = mul i64 %reass.add226, %i.ct
  %i.dp = sub i64 %.0.i23, %.0.i19
  %i.dq = add i64 %i.dp, %reass.mul227            ; 2 uses
  %.not4.i.i.i.i.i = icmp eq i64 %i.dq, 0
  br i1 %.not4.i.i.i.i.i, label %_ZSt4moveIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE6EEEEES9_ET0_T_SB_SA_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEplERKm.exit24, %.lr.ph.i.i.i.i.i
  %.sroa.38.0.i.i.i.i = phi i64 [ %i.ec, %.lr.ph.i.i.i.i.i ], [ %.05.i18, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEplERKm.exit24 ] ; 2 uses
  %.sroa.8.0.i.i.i.i = phi i64 [ %i.ei, %.lr.ph.i.i.i.i.i ], [ %.sroa.39.0, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEplERKm.exit24 ] ; 2 uses
  %.sroa.3.0.i.i.i.i = phi i64 [ %i.eh, %.lr.ph.i.i.i.i.i ], [ %.sroa.19.0, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEplERKm.exit24 ] ; 2 uses
  %.sroa.811.0.i.i.i.i = phi i64 [ %i.ed, %.lr.ph.i.i.i.i.i ], [ %.0.i19, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEplERKm.exit24 ] ; 2 uses
  %.05.i.i.i.i.i = phi i64 [ %i.ej, %.lr.ph.i.i.i.i.i ], [ %i.dq, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEplERKm.exit24 ]
  %i.dr = load ptr, ptr %i.ck, align 8, !tbaa !1246, !noalias !7188 ; 2 uses
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %.sroa.38.0.i.i.i.i
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !1051, !noalias !7188
  %i.du = getelementptr inbounds nuw [16 x i8], ptr %i.dt, i64 %.sroa.811.0.i.i.i.i
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %.sroa.3.0.i.i.i.i
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !1051, !noalias !7188
  %i.dx = getelementptr inbounds nuw [16 x i8], ptr %i.dw, i64 %.sroa.8.0.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dx, ptr noundef nonnull align 8 dereferenceable(16) %i.du, i64 16, i1 false), !noalias !7188
  %i.dy = add i64 %.sroa.811.0.i.i.i.i, 1         ; 2 uses
  %i.dz = load i64, ptr %i.ae, align 8, !tbaa !168, !noalias !7188 ; 3 uses
  %i.ea = icmp eq i64 %i.dy, %i.dz                ; 2 uses
  %i.eb = zext i1 %i.ea to i64
  %i.ec = add i64 %.sroa.38.0.i.i.i.i, %i.eb
  %i.ed = select i1 %i.ea, i64 0, i64 %i.dy
  %i.ee = add i64 %.sroa.8.0.i.i.i.i, 1           ; 2 uses
  %i.ef = icmp eq i64 %i.ee, %i.dz                ; 2 uses
  %i.eg = zext i1 %i.ef to i64
  %i.eh = add i64 %.sroa.3.0.i.i.i.i, %i.eg
  %i.ei = select i1 %i.ef, i64 0, i64 %i.ee
  %i.ej = add i64 %.05.i.i.i.i.i, -1              ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.ej, 0
  br i1 %.not.i.i.i.i.i, label %_ZSt4moveIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE6EEEEES9_ET0_T_SB_SA_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !7199

_ZSt4moveIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE6EEEEES9_ET0_T_SB_SA_.exit: ; preds = %.lr.ph.i.i.i.i.i, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEplERKm.exit24
  %i.ek = phi i64 [ %i.ct, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEplERKm.exit24 ], [ %i.dz, %.lr.ph.i.i.i.i.i ] ; 6 uses
  %.not.i.i25 = icmp ult i64 %i.de, %i.ek
  br i1 %.not.i.i25, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEplERKm.exit28, label %bb.n

bb.n:                                             ; preds = %_ZSt4moveIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE6EEEEES9_ET0_T_SB_SA_.exit
  %i.el = mul i64 %i.ek, %.sroa.19.0
  %i.em = add i64 %i.el, %i.de                    ; 2 uses
  %i.en = zext i64 %i.em to i128
  %i.eo = load i64, ptr %i.cj, align 8, !tbaa !1232, !noalias !7200
  %i.ep = zext i64 %i.eo to i128
  %i.eq = mul nuw i128 %i.ep, %i.en
  %i.er = lshr i128 %i.eq, 64
  %i.es = trunc nuw i128 %i.er to i64             ; 2 uses
  %i.et = mul i64 %i.ek, %i.es
  %i.eu = sub i64 %i.em, %i.et
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEplERKm.exit28

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEplERKm.exit28: ; preds = %_ZSt4moveIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE6EEEEES9_ET0_T_SB_SA_.exit, %bb.n
  %.05.i26 = phi i64 [ %.sroa.19.0, %_ZSt4moveIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE6EEEEES9_ET0_T_SB_SA_.exit ], [ %i.es, %bb.n ] ; 2 uses
  %.0.i27 = phi i64 [ %i.de, %_ZSt4moveIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE6EEEEES9_ET0_T_SB_SA_.exit ], [ %i.eu, %bb.n ]
  %i.ev = add i64 %.0.i27, -1                     ; 3 uses
  %.not.i.i29 = icmp ult i64 %i.ev, %i.ek
  br i1 %.not.i.i29, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEmiERKm.exit, label %bb.o

bb.o:                                             ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEplERKm.exit28
  %i.ew = mul i64 %.05.i26, %i.ek
  %i.ex = add i64 %i.ev, %i.ew                    ; 2 uses
  %i.ey = zext i64 %i.ex to i128
  %i.ez = load i64, ptr %i.cj, align 8, !tbaa !1232, !noalias !7203
  %i.fa = zext i64 %i.ez to i128
  %i.fb = mul nuw i128 %i.fa, %i.ey
  %i.fc = lshr i128 %i.fb, 64
  %i.fd = trunc nuw i128 %i.fc to i64             ; 2 uses
  %i.fe = mul i64 %i.ek, %i.fd
  %i.ff = sub i64 %i.ex, %i.fe
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEmiERKm.exit

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEmiERKm.exit: ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEplERKm.exit28, %bb.o
  %.05.i30 = phi i64 [ %.05.i26, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEplERKm.exit28 ], [ %i.fd, %bb.o ]
  %.0.i31 = phi i64 [ %i.ev, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEplERKm.exit28 ], [ %i.ff, %bb.o ]
  %i.fg = load ptr, ptr %i.ck, align 8, !tbaa !1246
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %.05.i30
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !1051
  %i.fj = getelementptr inbounds nuw [16 x i8], ptr %i.fi, i64 %.0.i31
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fj, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %.critedge

bb.p:                                             ; preds = %bb.j
  %i.fk = add i64 %.0221, %.sroa.39.0             ; 3 uses
  %i.fl = load i64, ptr %i.ae, align 8, !tbaa !168, !noalias !7206 ; 3 uses
  %.not.i.i32 = icmp ult i64 %i.fk, %i.fl
  br i1 %.not.i.i32, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEplERKm.exit35.preheader, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.fm = mul i64 %i.fl, %.sroa.19.0
  %i.fn = add i64 %i.fm, %i.fk                    ; 2 uses
  %i.fo = zext i64 %i.fn to i128
  %i.fp = load i64, ptr %i.cj, align 8, !tbaa !1232, !noalias !7206
  %i.fq = zext i64 %i.fp to i128
  %i.fr = mul nuw i128 %i.fq, %i.fo
  %i.fs = lshr i128 %i.fr, 64
  %i.ft = trunc nuw i128 %i.fs to i64             ; 2 uses
  %i.fu = mul i64 %i.fl, %i.ft
  %i.fv = sub i64 %i.fn, %i.fu
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEplERKm.exit35.preheader

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEplERKm.exit35.preheader: ; preds = %bb.p, %bb.q
  %.sroa.6109.0241.ph = phi i64 [ %i.ft, %bb.q ], [ %.sroa.19.0, %bb.p ]
  %.sroa.10.0240.ph = phi i64 [ %i.fv, %bb.q ], [ %i.fk, %bb.p ]
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEplERKm.exit35

bb.r:                                             ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEplERKm.exit35
  %i.fw = urem i64 %.0220, %.0221                 ; 2 uses
  %.not11 = icmp eq i64 %i.fw, 0
  br i1 %.not11, label %.critedge, label %bb.s

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEplERKm.exit35: ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEplERKm.exit35.preheader, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEplERKm.exit35
  %.07244 = phi i64 [ %i.gp, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEplERKm.exit35 ], [ 0, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEplERKm.exit35.preheader ]
  %.sroa.39.1243 = phi i64 [ %i.gj, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEplERKm.exit35 ], [ %.sroa.39.0, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEplERKm.exit35.preheader ] ; 2 uses
  %.sroa.19.1242 = phi i64 [ %i.gi, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEplERKm.exit35 ], [ %.sroa.19.0, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEplERKm.exit35.preheader ] ; 2 uses
  %.sroa.6109.0241 = phi i64 [ %i.gn, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEplERKm.exit35 ], [ %.sroa.6109.0241.ph, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEplERKm.exit35.preheader ] ; 2 uses
  %.sroa.10.0240 = phi i64 [ %i.go, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEplERKm.exit35 ], [ %.sroa.10.0240.ph, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEplERKm.exit35.preheader ] ; 2 uses
  %i.fx = load ptr, ptr %i.ck, align 8, !tbaa !1246 ; 2 uses
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %.sroa.19.1242
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !1051
  %i.ga = getelementptr inbounds nuw [16 x i8], ptr %i.fz, i64 %.sroa.39.1243 ; 2 uses
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %.sroa.6109.0241
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !1051
  %i.gd = getelementptr inbounds nuw [16 x i8], ptr %i.gc, i64 %.sroa.10.0240 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %i.ga, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ga, ptr noundef nonnull align 8 dereferenceable(16) %i.gd, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gd, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.ge = add i64 %.sroa.39.1243, 1               ; 2 uses
  %i.gf = load i64, ptr %i.ae, align 8, !tbaa !168 ; 2 uses
  %i.gg = icmp eq i64 %i.ge, %i.gf                ; 2 uses
  %i.gh = zext i1 %i.gg to i64
  %i.gi = add i64 %.sroa.19.1242, %i.gh           ; 2 uses
  %i.gj = select i1 %i.gg, i64 0, i64 %i.ge       ; 2 uses
  %i.gk = add i64 %.sroa.10.0240, 1               ; 2 uses
  %i.gl = icmp eq i64 %i.gk, %i.gf                ; 2 uses
  %i.gm = zext i1 %i.gl to i64
  %i.gn = add i64 %.sroa.6109.0241, %i.gm
  %i.go = select i1 %i.gl, i64 0, i64 %i.gk
  %i.gp = add nuw i64 %.07244, 1                  ; 2 uses
  %exitcond255.not = icmp eq i64 %i.gp, %i.cl
  br i1 %exitcond255.not, label %bb.r, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEplERKm.exit35, !llvm.loop !7209

bb.s:                                             ; preds = %bb.r
  %i.gq = sub i64 %.0221, %i.fw
  br label %.backedge

bb.t:                                             ; preds = %bb.i
  %i.gr = icmp eq i64 %i.cl, 1
  br i1 %i.gr, label %bb.u, label %bb.aa

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  %i.gs = add i64 %.0220, %.sroa.39.0             ; 7 uses
  %i.gt = load i64, ptr %i.ae, align 8, !tbaa !168, !noalias !7210 ; 14 uses
  %.not.i.i36 = icmp ult i64 %i.gs, %i.gt         ; 3 uses
  br i1 %.not.i.i36, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEplERKm.exit39, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.gu = mul i64 %i.gt, %.sroa.19.0
  %i.gv = add i64 %i.gu, %i.gs                    ; 2 uses
  %i.gw = zext i64 %i.gv to i128
  %i.gx = load i64, ptr %i.cj, align 8, !tbaa !1232, !noalias !7210
  %i.gy = zext i64 %i.gx to i128
  %i.gz = mul nuw i128 %i.gy, %i.gw
  %i.ha = lshr i128 %i.gz, 64
  %i.hb = trunc nuw i128 %i.ha to i64             ; 2 uses
  %i.hc = mul i64 %i.gt, %i.hb
  %i.hd = sub i64 %i.gv, %i.hc
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEplERKm.exit39

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEplERKm.exit39: ; preds = %bb.u, %bb.v
  %.05.i37 = phi i64 [ %.sroa.19.0, %bb.u ], [ %i.hb, %bb.v ] ; 2 uses
  %.0.i38 = phi i64 [ %i.gs, %bb.u ], [ %i.hd, %bb.v ]
  %i.he = add i64 %.0.i38, -1                     ; 3 uses
  %.not.i.i40 = icmp ult i64 %i.he, %i.gt
  br i1 %.not.i.i40, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEmiERKm.exit43, label %bb.w

bb.w:                                             ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEplERKm.exit39
  %i.hf = mul i64 %.05.i37, %i.gt
  %i.hg = add i64 %i.he, %i.hf                    ; 2 uses
  %i.hh = zext i64 %i.hg to i128
  %i.hi = load i64, ptr %i.cj, align 8, !tbaa !1232, !noalias !7213
  %i.hj = zext i64 %i.hi to i128
  %i.hk = mul nuw i128 %i.hj, %i.hh
  %i.hl = lshr i128 %i.hk, 64
  %i.hm = trunc nuw i128 %i.hl to i64             ; 2 uses
  %i.hn = mul i64 %i.gt, %i.hm
  %i.ho = sub i64 %i.hg, %i.hn
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEmiERKm.exit43

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEmiERKm.exit43: ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEplERKm.exit39, %bb.w
  %.05.i41 = phi i64 [ %.05.i37, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEplERKm.exit39 ], [ %i.hm, %bb.w ]
  %.0.i42 = phi i64 [ %i.he, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEplERKm.exit39 ], [ %i.ho, %bb.w ]
  %i.hp = load ptr, ptr %i.ck, align 8, !tbaa !1246 ; 2 uses
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.hp, i64 %.05.i41
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !1051
  %i.hs = getelementptr inbounds nuw [16 x i8], ptr %i.hr, i64 %.0.i42
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %i.hs, i64 16, i1 false)
  br i1 %.not.i.i36, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEplERKm.exit47, label %bb.x

bb.x:                                             ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEmiERKm.exit43
  %i.ht = mul i64 %i.gt, %.sroa.19.0
  %i.hu = add i64 %i.ht, %i.gs                    ; 2 uses
  %i.hv = zext i64 %i.hu to i128
  %i.hw = load i64, ptr %i.cj, align 8, !tbaa !1232, !noalias !7216
  %i.hx = zext i64 %i.hw to i128
  %i.hy = mul nuw i128 %i.hx, %i.hv
  %i.hz = lshr i128 %i.hy, 64
  %i.ia = trunc nuw i128 %i.hz to i64             ; 2 uses
  %i.ib = mul i64 %i.gt, %i.ia
  %i.ic = sub i64 %i.hu, %i.ib
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEplERKm.exit47

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEplERKm.exit47: ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEmiERKm.exit43, %bb.x
  %.05.i45 = phi i64 [ %.sroa.19.0, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEmiERKm.exit43 ], [ %i.ia, %bb.x ] ; 2 uses
  %.0.i46 = phi i64 [ %i.gs, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEmiERKm.exit43 ], [ %i.ic, %bb.x ]
  %i.id = add i64 %.0.i46, -1                     ; 3 uses
  %.not.i.i48 = icmp ult i64 %i.id, %i.gt
  br i1 %.not.i.i48, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEmiERKm.exit51, label %bb.y

bb.y:                                             ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEplERKm.exit47
  %i.ie = mul i64 %.05.i45, %i.gt
  %i.if = add i64 %i.id, %i.ie                    ; 2 uses
  %i.ig = zext i64 %i.if to i128
  %i.ih = load i64, ptr %i.cj, align 8, !tbaa !1232, !noalias !7219
  %i.ii = zext i64 %i.ih to i128
  %i.ij = mul nuw i128 %i.ii, %i.ig
  %i.ik = lshr i128 %i.ij, 64
  %i.il = trunc nuw i128 %i.ik to i64             ; 2 uses
  %i.im = mul i64 %i.gt, %i.il
  %i.in = sub i64 %i.if, %i.im
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEmiERKm.exit51

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEmiERKm.exit51: ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEplERKm.exit47, %bb.y
  %.05.i49 = phi i64 [ %.05.i45, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEplERKm.exit47 ], [ %i.il, %bb.y ] ; 2 uses
  %.0.i50 = phi i64 [ %i.id, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEplERKm.exit47 ], [ %i.in, %bb.y ] ; 2 uses
  br i1 %.not.i.i36, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEplERKm.exit55, label %bb.z

bb.z:                                             ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEmiERKm.exit51
  %i.io = mul i64 %i.gt, %.sroa.19.0
  %i.ip = add i64 %i.io, %i.gs                    ; 2 uses
  %i.iq = zext i64 %i.ip to i128
  %i.ir = load i64, ptr %i.cj, align 8, !tbaa !1232, !noalias !7222
  %i.is = zext i64 %i.ir to i128
  %i.it = mul nuw i128 %i.is, %i.iq
  %i.iu = lshr i128 %i.it, 64
  %i.iv = trunc nuw i128 %i.iu to i64             ; 2 uses
  %i.iw = mul i64 %i.gt, %i.iv
  %i.ix = sub i64 %i.ip, %i.iw
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEplERKm.exit55

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEplERKm.exit55: ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEmiERKm.exit51, %bb.z
  %.05.i53 = phi i64 [ %.sroa.19.0, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEmiERKm.exit51 ], [ %i.iv, %bb.z ]
  %.0.i54 = phi i64 [ %i.gs, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEmiERKm.exit51 ], [ %i.ix, %bb.z ]
  %reass.add = sub i64 %.05.i49, %.sroa.19.0
  %reass.mul = mul i64 %reass.add, %i.gt
  %i.iy = sub i64 %.0.i50, %.sroa.39.0
  %i.iz = add i64 %i.iy, %reass.mul               ; 2 uses
  %.not5.i.i.i.i.i = icmp eq i64 %i.iz, 0
  br i1 %.not5.i.i.i.i.i, label %_ZSt13move_backwardIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE6EEEEES9_ET0_T_SB_SA_.exit, label %.lr.ph.i.i.i.i.i57

.lr.ph.i.i.i.i.i57:                               ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEplERKm.exit55, %.lr.ph.i.i.i.i.i57
  %.sroa.36.0.i.i.i.i = phi i64 [ %i.jc, %.lr.ph.i.i.i.i.i57 ], [ %.05.i49, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEplERKm.exit55 ]
  %.sroa.7.0.i.i.i.i = phi i64 [ %i.jo, %.lr.ph.i.i.i.i.i57 ], [ %.0.i54, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEplERKm.exit55 ] ; 2 uses
  %.sroa.3.0.i.i.i.i58 = phi i64 [ %i.jm, %.lr.ph.i.i.i.i.i57 ], [ %.05.i53, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEplERKm.exit55 ]
  %.sroa.78.0.i.i.i.i = phi i64 [ %i.jf, %.lr.ph.i.i.i.i.i57 ], [ %.0.i50, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEplERKm.exit55 ] ; 2 uses
  %.06.i.i.i.i.i = phi i64 [ %i.js, %.lr.ph.i.i.i.i.i57 ], [ %i.iz, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEplERKm.exit55 ]
  %i.ja = add i64 %.sroa.78.0.i.i.i.i, -1
  %i.jb = icmp eq i64 %.sroa.78.0.i.i.i.i, 0      ; 2 uses
  %.neg.i.i.i.i.i.i.i = sext i1 %i.jb to i64
  %i.jc = add i64 %.sroa.36.0.i.i.i.i, %.neg.i.i.i.i.i.i.i ; 2 uses
  %i.jd = load i64, ptr %i.ae, align 8, !tbaa !168, !noalias !7225 ; 2 uses
  %i.je = select i1 %i.jb, i64 %i.jd, i64 0
  %i.jf = add i64 %i.ja, %i.je                    ; 2 uses
  %i.jg = load ptr, ptr %i.ck, align 8, !tbaa !1246, !noalias !7225 ; 2 uses
  %i.jh = getelementptr inbounds nuw [8 x i8], ptr %i.jg, i64 %i.jc
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !1051, !noalias !7225
  %i.jj = getelementptr inbounds nuw [16 x i8], ptr %i.ji, i64 %i.jf
  %i.jk = add i64 %.sroa.7.0.i.i.i.i, -1
  %i.jl = icmp eq i64 %.sroa.7.0.i.i.i.i, 0       ; 2 uses
  %.neg.i.i2.i.i.i.i.i = sext i1 %i.jl to i64
  %i.jm = add i64 %.sroa.3.0.i.i.i.i58, %.neg.i.i2.i.i.i.i.i ; 2 uses
  %i.jn = select i1 %i.jl, i64 %i.jd, i64 0
  %i.jo = add i64 %i.jk, %i.jn                    ; 2 uses
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %i.jg, i64 %i.jm
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !1051, !noalias !7225
  %i.jr = getelementptr inbounds nuw [16 x i8], ptr %i.jq, i64 %i.jo
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jr, ptr noundef nonnull align 8 dereferenceable(16) %i.jj, i64 16, i1 false), !noalias !7225
  %i.js = add i64 %.06.i.i.i.i.i, -1              ; 2 uses
  %.not.i.i.i.i.i59 = icmp eq i64 %i.js, 0
  br i1 %.not.i.i.i.i.i59, label %_ZSt13move_backwardIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE6EEEEES9_ET0_T_SB_SA_.exit.loopexit, label %.lr.ph.i.i.i.i.i57, !llvm.loop !7236

_ZSt13move_backwardIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE6EEEEES9_ET0_T_SB_SA_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i57
  %.pre = load ptr, ptr %i.ck, align 8, !tbaa !1246
  br label %_ZSt13move_backwardIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE6EEEEES9_ET0_T_SB_SA_.exit

_ZSt13move_backwardIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE6EEEEES9_ET0_T_SB_SA_.exit: ; preds = %_ZSt13move_backwardIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE6EEEEES9_ET0_T_SB_SA_.exit.loopexit, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEplERKm.exit55
  %i.jt = phi ptr [ %.pre, %_ZSt13move_backwardIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE6EEEEES9_ET0_T_SB_SA_.exit.loopexit ], [ %i.hp, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEplERKm.exit55 ]
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %i.jt, i64 %.sroa.19.0
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !1051
  %i.jw = getelementptr inbounds nuw [16 x i8], ptr %i.jv, i64 %.sroa.39.0
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jw, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %.critedge

bb.aa:                                            ; preds = %bb.t
  %i.jx = add i64 %.0220, %.sroa.39.0             ; 3 uses
  %i.jy = load i64, ptr %i.ae, align 8, !tbaa !168, !noalias !7237 ; 6 uses
  %.not.i.i60 = icmp ult i64 %i.jx, %i.jy
  br i1 %.not.i.i60, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEplERKm.exit63, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.jz = mul i64 %i.jy, %.sroa.19.0
  %i.ka = add i64 %i.jz, %i.jx                    ; 2 uses
  %i.kb = zext i64 %i.ka to i128
  %i.kc = load i64, ptr %i.cj, align 8, !tbaa !1232, !noalias !7237
  %i.kd = zext i64 %i.kc to i128
  %i.ke = mul nuw i128 %i.kd, %i.kb
  %i.kf = lshr i128 %i.ke, 64
  %i.kg = trunc nuw i128 %i.kf to i64             ; 2 uses
  %i.kh = mul i64 %i.jy, %i.kg
  %i.ki = sub i64 %i.ka, %i.kh
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEplERKm.exit63

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEplERKm.exit63: ; preds = %bb.aa, %bb.ab
  %.05.i61 = phi i64 [ %.sroa.19.0, %bb.aa ], [ %i.kg, %bb.ab ] ; 3 uses
  %.0.i62 = phi i64 [ %i.jx, %bb.aa ], [ %i.ki, %bb.ab ] ; 2 uses
  %i.kj = sub i64 %.0.i62, %i.cl                  ; 3 uses
  %.not.i.i64 = icmp ult i64 %i.kj, %i.jy
  br i1 %.not.i.i64, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEmiERKm.exit67, label %bb.ac

bb.ac:                                            ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEplERKm.exit63
  %i.kk = mul i64 %.05.i61, %i.jy
  %i.kl = add i64 %i.kj, %i.kk                    ; 2 uses
  %i.km = zext i64 %i.kl to i128
  %i.kn = load i64, ptr %i.cj, align 8, !tbaa !1232, !noalias !7240
  %i.ko = zext i64 %i.kn to i128
  %i.kp = mul nuw i128 %i.ko, %i.km
  %i.kq = lshr i128 %i.kp, 64
  %i.kr = trunc nuw i128 %i.kq to i64             ; 2 uses
  %i.ks = mul i64 %i.jy, %i.kr
  %i.kt = sub i64 %i.kl, %i.ks
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEmiERKm.exit67

end_hunk_16
begin_hunk_17_@_ZN14duckdb_pdqsort14pdqsort_detail26partition_right_branchlessIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE7EEEEEZN15duckdb_ska_sort6detail15StdSortFallbackISB_KNS2_13SkaExtractKeyISA_EEEEvT_SI_RT0_EUlRKSA_SM_E_EESt4pairISI_bESI_SI_SJ_:bb.a
bb.af:                                            ; preds = %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE7EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit120
  %i.ot = icmp eq i64 %i.or, %.sroa.0442.0.copyload
  br i1 %i.ot, label %bb.ag, label %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE7EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit124

bb.ag:                                            ; preds = %bb.af
  %i.ou = getelementptr inbounds nuw i8, ptr %i.oq, i64 8
  %.val.val.i.i.i122 = load i64, ptr %i.ou, align 8, !tbaa !168
  %i.ov = icmp ult i64 %.val.val.i.i.i122, %.sroa.25.0.copyload
  %i.ow = zext i1 %i.ov to i64
  br label %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE7EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit124

_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE7EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit124: ; preds = %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE7EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit120, %bb.af, %bb.ag
  %i.ox = phi i64 [ 1, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE7EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit120 ], [ 0, %bb.af ], [ %i.ow, %bb.ag ]
  %i.oy = add i64 %i.ox, %i.oe                    ; 2 uses
  %i.oz = or disjoint i8 %.064530, 5
  %i.pa = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.oy
  store i8 %i.oz, ptr %i.pa, align 1, !tbaa !527
  %i.pb = add i64 %i.om, -1
  %i.pc = icmp eq i64 %i.om, 0                    ; 2 uses
  %.neg.i.i125 = sext i1 %i.pc to i64
  %i.pd = add i64 %i.oj, %.neg.i.i125             ; 2 uses
  %i.pe = load i64, ptr %i.ea, align 8, !tbaa !168
  %i.pf = select i1 %i.pc, i64 %i.pe, i64 0
  %i.pg = add i64 %i.pb, %i.pf                    ; 3 uses
  %i.ph = load ptr, ptr %i.dd, align 8, !tbaa !1246
  %i.pi = getelementptr inbounds nuw [8 x i8], ptr %i.ph, i64 %i.pd
  %i.pj = load ptr, ptr %i.pi, align 8, !tbaa !1051
  %i.pk = getelementptr inbounds nuw [24 x i8], ptr %i.pj, i64 %i.pg ; 2 uses
  %i.pl = load i64, ptr %i.pk, align 8, !tbaa !168 ; 2 uses
  %i.pm = icmp ult i64 %i.pl, %.sroa.0442.0.copyload
  br i1 %i.pm, label %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE7EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit128, label %bb.ah

bb.ah:                                            ; preds = %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE7EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit124
  %i.pn = icmp eq i64 %i.pl, %.sroa.0442.0.copyload
  br i1 %i.pn, label %bb.ai, label %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE7EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit128

bb.ai:                                            ; preds = %bb.ah
  %i.po = getelementptr inbounds nuw i8, ptr %i.pk, i64 8
  %.val.val.i.i.i126 = load i64, ptr %i.po, align 8, !tbaa !168
  %i.pp = icmp ult i64 %.val.val.i.i.i126, %.sroa.25.0.copyload
  %i.pq = zext i1 %i.pp to i64
  br label %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE7EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit128

_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE7EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit128: ; preds = %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE7EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit124, %bb.ah, %bb.ai
  %i.pr = phi i64 [ 1, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE7EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit124 ], [ 0, %bb.ah ], [ %i.pq, %bb.ai ]
  %i.ps = add i64 %i.pr, %i.oy                    ; 2 uses
  %i.pt = or disjoint i8 %.064530, 6
  %i.pu = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.ps
  store i8 %i.pt, ptr %i.pu, align 1, !tbaa !527
  %i.pv = add i64 %i.pg, -1
  %i.pw = icmp eq i64 %i.pg, 0                    ; 2 uses
  %.neg.i.i129 = sext i1 %i.pw to i64
  %i.px = add i64 %i.pd, %.neg.i.i129             ; 2 uses
  %i.py = load i64, ptr %i.ea, align 8, !tbaa !168
  %i.pz = select i1 %i.pw, i64 %i.py, i64 0
  %i.qa = add i64 %i.pv, %i.pz                    ; 3 uses
  %i.qb = load ptr, ptr %i.dd, align 8, !tbaa !1246
  %i.qc = getelementptr inbounds nuw [8 x i8], ptr %i.qb, i64 %i.px
  %i.qd = load ptr, ptr %i.qc, align 8, !tbaa !1051
  %i.qe = getelementptr inbounds nuw [24 x i8], ptr %i.qd, i64 %i.qa ; 2 uses
  %i.qf = load i64, ptr %i.qe, align 8, !tbaa !168 ; 2 uses
  %i.qg = icmp ult i64 %i.qf, %.sroa.0442.0.copyload
  br i1 %i.qg, label %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE7EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit132, label %bb.aj

bb.aj:                                            ; preds = %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE7EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit128
  %i.qh = icmp eq i64 %i.qf, %.sroa.0442.0.copyload
  br i1 %i.qh, label %bb.ak, label %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE7EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit132

bb.ak:                                            ; preds = %bb.aj
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qe, i64 8
  %.val.val.i.i.i130 = load i64, ptr %i.qi, align 8, !tbaa !168
  %i.qj = icmp ult i64 %.val.val.i.i.i130, %.sroa.25.0.copyload
  %i.qk = zext i1 %i.qj to i64
  br label %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE7EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit132

_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE7EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit132: ; preds = %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE7EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit128, %bb.aj, %bb.ak
  %i.ql = phi i64 [ 1, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE7EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit128 ], [ 0, %bb.aj ], [ %i.qk, %bb.ak ]
  %i.qm = add i64 %i.ql, %i.ps                    ; 2 uses
  %i.qn = or disjoint i8 %.064530, 7
  %i.qo = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.qm
  store i8 %i.qn, ptr %i.qo, align 1, !tbaa !527
  %i.qp = add i64 %i.qa, -1
  %i.qq = icmp eq i64 %i.qa, 0                    ; 2 uses
  %.neg.i.i133 = sext i1 %i.qq to i64
  %i.qr = add i64 %i.px, %.neg.i.i133             ; 2 uses
  %i.qs = load i64, ptr %i.ea, align 8, !tbaa !168
  %i.qt = select i1 %i.qq, i64 %i.qs, i64 0
  %i.qu = add i64 %i.qp, %i.qt                    ; 3 uses
  %i.qv = load ptr, ptr %i.dd, align 8, !tbaa !1246
  %i.qw = getelementptr inbounds nuw [8 x i8], ptr %i.qv, i64 %i.qr
  %i.qx = load ptr, ptr %i.qw, align 8, !tbaa !1051
  %i.qy = getelementptr inbounds nuw [24 x i8], ptr %i.qx, i64 %i.qu ; 2 uses
  %i.qz = load i64, ptr %i.qy, align 8, !tbaa !168 ; 2 uses
  %i.ra = icmp ult i64 %i.qz, %.sroa.0442.0.copyload
  br i1 %i.ra, label %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE7EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit136, label %bb.al

bb.al:                                            ; preds = %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE7EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit132
  %i.rb = icmp eq i64 %i.qz, %.sroa.0442.0.copyload
  br i1 %i.rb, label %bb.am, label %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE7EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit136

bb.am:                                            ; preds = %bb.al
  %i.rc = getelementptr inbounds nuw i8, ptr %i.qy, i64 8
  %.val.val.i.i.i134 = load i64, ptr %i.rc, align 8, !tbaa !168
  %i.rd = icmp ult i64 %.val.val.i.i.i134, %.sroa.25.0.copyload
  %i.re = zext i1 %i.rd to i64
  br label %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE7EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit136

_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE7EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit136: ; preds = %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE7EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit132, %bb.al, %bb.am
  %i.rf = phi i64 [ 1, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE7EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit132 ], [ 0, %bb.al ], [ %i.re, %bb.am ]
  %i.rg = add i64 %i.rf, %i.qm                    ; 2 uses
  %i.rh = add nuw nsw i8 %.064530, 8              ; 2 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.rg
  store i8 %i.rh, ptr %i.ri, align 1, !tbaa !527
  %i.rj = add i64 %i.qu, -1
  %i.rk = icmp eq i64 %i.qu, 0                    ; 2 uses
  %.neg.i.i137 = sext i1 %i.rk to i64
  %i.rl = add i64 %i.qr, %.neg.i.i137             ; 3 uses
  %i.rm = load i64, ptr %i.ea, align 8, !tbaa !168
  %i.rn = select i1 %i.rk, i64 %i.rm, i64 0
  %i.ro = add i64 %i.rj, %i.rn                    ; 3 uses
  %i.rp = load ptr, ptr %i.dd, align 8, !tbaa !1246
  %i.rq = getelementptr inbounds nuw [8 x i8], ptr %i.rp, i64 %i.rl
  %i.rr = load ptr, ptr %i.rq, align 8, !tbaa !1051
  %i.rs = getelementptr inbounds nuw [24 x i8], ptr %i.rr, i64 %i.ro ; 2 uses
  %i.rt = load i64, ptr %i.rs, align 8, !tbaa !168 ; 2 uses
  %i.ru = icmp ult i64 %i.rt, %.sroa.0442.0.copyload
  br i1 %i.ru, label %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE7EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit140, label %bb.an

bb.an:                                            ; preds = %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE7EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit136
  %i.rv = icmp eq i64 %i.rt, %.sroa.0442.0.copyload
  br i1 %i.rv, label %bb.ao, label %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE7EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit140

bb.ao:                                            ; preds = %bb.an
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rs, i64 8
  %.val.val.i.i.i138 = load i64, ptr %i.rw, align 8, !tbaa !168
  %i.rx = icmp ult i64 %.val.val.i.i.i138, %.sroa.25.0.copyload
  %i.ry = zext i1 %i.rx to i64
  br label %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE7EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit140

_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE7EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit140: ; preds = %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE7EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit136, %bb.an, %bb.ao
  %i.rz = phi i64 [ 1, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE7EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit136 ], [ 0, %bb.an ], [ %i.ry, %bb.ao ]
  %i.sa = add i64 %i.rz, %i.rg                    ; 2 uses
  %i.sb = icmp samesign ult i8 %.064530, 56
  br i1 %i.sb, label %.preheader, label %.loopexit480, !llvm.loop !8090

.lr.ph523:                                        ; preds = %.lr.ph523.preheader, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE7EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit144
  %.0522 = phi i8 [ %i.sc, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE7EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit144 ], [ 0, %.lr.ph523.preheader ]
  %.sroa.76.5521 = phi i64 [ %i.sj, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE7EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit144 ], [ %.sroa.76.3538, %.lr.ph523.preheader ] ; 2 uses
  %.sroa.30.5520 = phi i64 [ %i.sg, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE7EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit144 ], [ %.sroa.30.3537, %.lr.ph523.preheader ]
  %.2519 = phi i64 [ %i.sv, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE7EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit144 ], [ %.0468536, %.lr.ph523.preheader ] ; 2 uses
  %i.sc = add nuw i8 %.0522, 1                    ; 3 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.2519
  store i8 %i.sc, ptr %i.sd, align 1, !tbaa !527
  %i.se = add i64 %.sroa.76.5521, -1
  %i.sf = icmp eq i64 %.sroa.76.5521, 0           ; 2 uses
  %.neg.i.i141 = sext i1 %i.sf to i64
  %i.sg = add i64 %.sroa.30.5520, %.neg.i.i141    ; 3 uses
  %i.sh = load i64, ptr %i.ea, align 8, !tbaa !168
  %i.si = select i1 %i.sf, i64 %i.sh, i64 0
  %i.sj = add i64 %i.se, %i.si                    ; 3 uses
  %i.sk = load ptr, ptr %i.dd, align 8, !tbaa !1246
  %i.sl = getelementptr inbounds nuw [8 x i8], ptr %i.sk, i64 %i.sg
  %i.sm = load ptr, ptr %i.sl, align 8, !tbaa !1051
  %i.sn = getelementptr inbounds nuw [24 x i8], ptr %i.sm, i64 %i.sj ; 2 uses
  %i.so = load i64, ptr %i.sn, align 8, !tbaa !168 ; 2 uses
  %i.sp = icmp ult i64 %i.so, %.sroa.0442.0.copyload
  br i1 %i.sp, label %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE7EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit144, label %bb.ap

bb.ap:                                            ; preds = %.lr.ph523
  %i.sq = icmp eq i64 %i.so, %.sroa.0442.0.copyload
  br i1 %i.sq, label %bb.aq, label %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE7EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit144

bb.aq:                                            ; preds = %bb.ap
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sn, i64 8
  %.val.val.i.i.i142 = load i64, ptr %i.sr, align 8, !tbaa !168
  %i.ss = icmp ult i64 %.val.val.i.i.i142, %.sroa.25.0.copyload
  %i.st = zext i1 %i.ss to i64
  br label %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE7EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit144

_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE7EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit144: ; preds = %.lr.ph523, %bb.ap, %bb.aq
  %i.su = phi i64 [ 1, %.lr.ph523 ], [ 0, %bb.ap ], [ %i.st, %bb.aq ]
  %i.sv = add i64 %i.su, %.2519                   ; 2 uses
  %i.sw = icmp ult i8 %i.sc, %i.lw
  br i1 %i.sw, label %.lr.ph523, label %.loopexit480, !llvm.loop !8091

.loopexit480:                                     ; preds = %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE7EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit144, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE7EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit140, %.preheader481
  %.3 = phi i64 [ %i.sa, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE7EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit140 ], [ %.0468536, %.preheader481 ], [ %i.sv, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE7EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit144 ] ; 4 uses
  %.sroa.30.6 = phi i64 [ %i.rl, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE7EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit140 ], [ %.sroa.30.3537, %.preheader481 ], [ %i.sg, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE7EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit144 ] ; 5 uses
  %.sroa.76.6 = phi i64 [ %i.ro, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE7EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit140 ], [ %.sroa.76.3538, %.preheader481 ], [ %i.sj, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE7EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit144 ] ; 4 uses
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %.3, i64 %.3473) ; 5 uses
  store ptr %i.c, ptr %6, align 8, !tbaa !1361
  store i64 %.sroa.5247.0532, ptr %i.eb, align 8, !tbaa !1358
  store i64 %.sroa.9249.0531, ptr %i.ec, align 8, !tbaa !1360
  store ptr %i.m, ptr %7, align 8, !tbaa !1361
  store i64 %.sroa.5.0534, ptr %i.ed, align 8, !tbaa !1358
  store i64 %.sroa.9.0533, ptr %i.ee, align 8, !tbaa !1360
  %i.sx = getelementptr inbounds nuw i8, ptr %i.dr, i64 %.068541
  %i.sy = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.067542
  %i.sz = icmp eq i64 %.3473, %.3
  call void @_ZN14duckdb_pdqsort14pdqsort_detail12swap_offsetsIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE7EEEEEEEvT_SC_PhSD_mb(ptr noundef nonnull dead_on_return %6, ptr noundef nonnull dead_on_return %7, ptr noundef %i.sx, ptr noundef %i.sy, i64 noundef %.sroa.speculated, i1 noundef zeroext %i.sz)
  %i.ta = sub i64 %.3473, %.sroa.speculated       ; 3 uses
  %i.tb = sub i64 %.3, %.sroa.speculated          ; 4 uses
  %i.tc = add i64 %.sroa.speculated, %.068541
  %i.td = add i64 %.sroa.speculated, %.067542
  %.not477 = icmp ugt i64 %.3473, %.3             ; 3 uses
  %.sroa.9249.1 = select i1 %.not477, i64 %.sroa.9249.0531, i64 %.sroa.78.4 ; 2 uses
  %.sroa.5247.1 = select i1 %.not477, i64 %.sroa.5247.0532, i64 %.sroa.31.4 ; 3 uses
  %.169 = select i1 %.not477, i64 %i.tc, i64 0    ; 2 uses
  %i.te = icmp eq i64 %i.tb, 0                    ; 3 uses
  %.sroa.9.1 = select i1 %i.te, i64 %.sroa.76.6, i64 %.sroa.9.0533 ; 2 uses
  %.sroa.5.1 = select i1 %i.te, i64 %.sroa.30.6, i64 %.sroa.5.0534 ; 3 uses
  %.1 = select i1 %i.te, i64 0, i64 %i.td         ; 2 uses
  %i.tf = icmp eq i64 %.sroa.31.4, %.sroa.30.6
  %i.tg = icmp ult i64 %.sroa.78.4, %.sroa.76.6
  %i.th = icmp ult i64 %.sroa.31.4, %.sroa.30.6
  %i.ti = select i1 %i.tf, i1 %i.tg, i1 %i.th
  br i1 %i.ti, label %bb.g, label %._crit_edge, !llvm.loop !8092

._crit_edge:                                      ; preds = %.loopexit480
  %.not = icmp eq i64 %i.ta, 0
  br i1 %.not, label %.loopexit479, label %bb.ar

bb.ar:                                            ; preds = %._crit_edge
  %i.tj = getelementptr inbounds nuw i8, ptr %i.dr, i64 %.169
  %i.tk = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.tl = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEplERKm.exit
  %.in = phi i64 [ %i.ta, %bb.ar ], [ %i.tm, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEplERKm.exit ]
  %.sroa.76.7557 = phi i64 [ %.sroa.76.6, %bb.ar ], [ %i.uh, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEplERKm.exit ] ; 2 uses
  %.sroa.30.7556 = phi i64 [ %.sroa.30.6, %bb.ar ], [ %i.ue, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEplERKm.exit ]
  %i.tm = add i64 %.in, -1                        ; 3 uses
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tj, i64 %i.tm
  %i.to = load i8, ptr %i.tn, align 1, !tbaa !527
  %i.tp = zext i8 %i.to to i64
  %i.tq = add i64 %.sroa.9249.1, %i.tp            ; 3 uses
  %i.tr = load i64, ptr %i.r, align 8, !tbaa !168, !noalias !8093 ; 3 uses
  %.not.i.i145 = icmp ult i64 %i.tq, %i.tr
  br i1 %.not.i.i145, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEplERKm.exit, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ts = mul i64 %i.tr, %.sroa.5247.1
  %i.tt = add i64 %i.ts, %i.tq                    ; 2 uses
  %i.tu = zext i64 %i.tt to i128
  %i.tv = load i64, ptr %i.tl, align 8, !tbaa !1232, !noalias !8093
  %i.tw = zext i64 %i.tv to i128
  %i.tx = mul nuw i128 %i.tw, %i.tu
  %i.ty = lshr i128 %i.tx, 64
  %i.tz = trunc nuw i128 %i.ty to i64             ; 2 uses
  %i.ua = mul i64 %i.tr, %i.tz
  %i.ub = sub i64 %i.tt, %i.ua
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEplERKm.exit

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEplERKm.exit: ; preds = %bb.as, %bb.at
  %.05.i146 = phi i64 [ %.sroa.5247.1, %bb.as ], [ %i.tz, %bb.at ]
  %.0.i147 = phi i64 [ %i.tq, %bb.as ], [ %i.ub, %bb.at ]
  %i.uc = add i64 %.sroa.76.7557, -1
  %i.ud = icmp eq i64 %.sroa.76.7557, 0           ; 2 uses
  %.neg.i.i148 = sext i1 %i.ud to i64
  %i.ue = add i64 %.sroa.30.7556, %.neg.i.i148    ; 3 uses
  %i.uf = load i64, ptr %i.tk, align 8, !tbaa !168
  %i.ug = select i1 %i.ud, i64 %i.uf, i64 0
  %i.uh = add i64 %i.uc, %i.ug                    ; 3 uses
  %i.ui = load ptr, ptr %i.f, align 8, !tbaa !1246
  %i.uj = getelementptr inbounds nuw [8 x i8], ptr %i.ui, i64 %.05.i146
  %i.uk = load ptr, ptr %i.uj, align 8, !tbaa !1051
  %i.ul = getelementptr inbounds nuw [24 x i8], ptr %i.uk, i64 %.0.i147 ; 2 uses
  %i.um = load ptr, ptr %i.dd, align 8, !tbaa !1246
  %i.un = getelementptr inbounds nuw [8 x i8], ptr %i.um, i64 %i.ue
  %i.uo = load ptr, ptr %i.un, align 8, !tbaa !1051
  %i.up = getelementptr inbounds nuw [24 x i8], ptr %i.uo, i64 %i.uh ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.ul, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ul, ptr noundef nonnull align 8 dereferenceable(24) %i.up, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.up, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %.not72 = icmp eq i64 %i.tm, 0
  br i1 %.not72, label %.loopexit479, label %bb.as, !llvm.loop !8096

.loopexit479:                                     ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEplERKm.exit, %._crit_edge
  %.sroa.31.5 = phi i64 [ %.sroa.31.4, %._crit_edge ], [ %i.ue, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEplERKm.exit ] ; 2 uses
  %.sroa.78.5 = phi i64 [ %.sroa.78.4, %._crit_edge ], [ %i.uh, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEplERKm.exit ] ; 2 uses
  %.not73 = icmp eq i64 %i.tb, 0
  br i1 %.not73, label %.loopexit479..loopexit_crit_edge, label %bb.au

.loopexit479..loopexit_crit_edge:                 ; preds = %bb.f, %.loopexit479
  %.sroa.78.5652 = phi i64 [ %.sroa.78.5, %.loopexit479 ], [ %i.dn, %bb.f ]
  %.sroa.31.5651 = phi i64 [ %.sroa.31.5, %.loopexit479 ], [ %i.dm, %bb.f ]
  %.pre.pre = load i64, ptr %i.r, align 8, !tbaa !168, !noalias !8097
  br label %.loopexit

bb.au:                                            ; preds = %.loopexit479
  %i.uq = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.1
  %i.ur = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.us = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEmiERKm.exit152
  %.in562 = phi i64 [ %i.tb, %bb.au ], [ %i.ut, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEmiERKm.exit152 ]
  %.sroa.78.6559 = phi i64 [ %.sroa.78.5, %bb.au ], [ %i.vw, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEmiERKm.exit152 ] ; 2 uses
  %.sroa.31.6558 = phi i64 [ %.sroa.31.5, %bb.au ], [ %i.vv, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEmiERKm.exit152 ] ; 2 uses
  %i.ut = add i64 %.in562, -1                     ; 3 uses
  %i.uu = getelementptr inbounds nuw i8, ptr %i.uq, i64 %i.ut
  %i.uv = load i8, ptr %i.uu, align 1, !tbaa !527
  %i.uw = zext i8 %i.uv to i64
  %i.ux = sub i64 %.sroa.9.1, %i.uw               ; 3 uses
  %i.uy = load i64, ptr %i.ur, align 8, !tbaa !168, !noalias !8100 ; 3 uses
  %.not.i.i149 = icmp ult i64 %i.ux, %i.uy
  br i1 %.not.i.i149, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEmiERKm.exit152, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.uz = mul i64 %i.uy, %.sroa.5.1
  %i.va = add i64 %i.uz, %i.ux                    ; 2 uses
  %i.vb = zext i64 %i.va to i128
  %i.vc = load i64, ptr %i.us, align 8, !tbaa !1232, !noalias !8100
  %i.vd = zext i64 %i.vc to i128
  %i.ve = mul nuw i128 %i.vd, %i.vb
  %i.vf = lshr i128 %i.ve, 64
  %i.vg = trunc nuw i128 %i.vf to i64             ; 2 uses
  %i.vh = mul i64 %i.uy, %i.vg
  %i.vi = sub i64 %i.va, %i.vh
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEmiERKm.exit152

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEmiERKm.exit152: ; preds = %bb.av, %bb.aw
  %.05.i150 = phi i64 [ %.sroa.5.1, %bb.av ], [ %i.vg, %bb.aw ]
  %.0.i151 = phi i64 [ %i.ux, %bb.av ], [ %i.vi, %bb.aw ]
  %i.vj = load ptr, ptr %i.dd, align 8, !tbaa !1246
  %i.vk = getelementptr inbounds nuw [8 x i8], ptr %i.vj, i64 %.05.i150
  %i.vl = load ptr, ptr %i.vk, align 8, !tbaa !1051
  %i.vm = getelementptr inbounds nuw [24 x i8], ptr %i.vl, i64 %.0.i151 ; 2 uses
  %i.vn = load ptr, ptr %i.f, align 8, !tbaa !1246
  %i.vo = getelementptr inbounds nuw [8 x i8], ptr %i.vn, i64 %.sroa.31.6558
  %i.vp = load ptr, ptr %i.vo, align 8, !tbaa !1051
  %i.vq = getelementptr inbounds nuw [24 x i8], ptr %i.vp, i64 %.sroa.78.6559 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.vm, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.vm, ptr noundef nonnull align 8 dereferenceable(24) %i.vq, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.vq, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.vr = add i64 %.sroa.78.6559, 1               ; 2 uses
  %i.vs = load i64, ptr %i.r, align 8, !tbaa !168 ; 2 uses
  %i.vt = icmp eq i64 %i.vr, %i.vs                ; 2 uses
  %i.vu = zext i1 %i.vt to i64
  %i.vv = add i64 %.sroa.31.6558, %i.vu           ; 2 uses
  %i.vw = select i1 %i.vt, i64 0, i64 %i.vr       ; 2 uses
  %.not74 = icmp eq i64 %i.ut, 0
  br i1 %.not74, label %.loopexit, label %bb.av, !llvm.loop !8103

.loopexit:                                        ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEmiERKm.exit152, %.loopexit479..loopexit_crit_edge
  %.pre = phi i64 [ %.pre.pre, %.loopexit479..loopexit_crit_edge ], [ %i.vs, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEmiERKm.exit152 ]
  %.sroa.31.7 = phi i64 [ %.sroa.31.5651, %.loopexit479..loopexit_crit_edge ], [ %i.vv, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEmiERKm.exit152 ]
  %.sroa.78.7 = phi i64 [ %.sroa.78.5652, %.loopexit479..loopexit_crit_edge ], [ %i.vw, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEmiERKm.exit152 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %.pre589 = add i64 %.sroa.78.7, -1
  br label %bb.ax

bb.ax:                                            ; preds = %.loopexit, %.critedge
  %.pre-phi = phi i64 [ %.pre589, %.loopexit ], [ %i.ag, %.critedge ] ; 3 uses
  %i.vx = phi i64 [ %.pre, %.loopexit ], [ %i.s, %.critedge ] ; 3 uses
  %.sroa.31.8 = phi i64 [ %.sroa.31.7, %.loopexit ], [ %i.w, %.critedge ] ; 2 uses
  %.not.i.i153 = icmp ult i64 %.pre-phi, %i.vx
  br i1 %.not.i.i153, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEmiERKm.exit156, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.vy = mul i64 %i.vx, %.sroa.31.8
  %i.vz = add i64 %i.vy, %.pre-phi                ; 2 uses
  %i.wa = zext i64 %i.vz to i128
  %i.wb = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.wc = load i64, ptr %i.wb, align 8, !tbaa !1232, !noalias !8097
  %i.wd = zext i64 %i.wc to i128
  %i.we = mul nuw i128 %i.wd, %i.wa
  %i.wf = lshr i128 %i.we, 64
  %i.wg = trunc nuw i128 %i.wf to i64             ; 2 uses
  %i.wh = mul i64 %i.vx, %i.wg
  %i.wi = sub i64 %i.vz, %i.wh
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEmiERKm.exit156

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEmiERKm.exit156: ; preds = %bb.ax, %bb.ay
  %.05.i154 = phi i64 [ %.sroa.31.8, %bb.ax ], [ %i.wg, %bb.ay ] ; 3 uses
  %.0.i155 = phi i64 [ %.pre-phi, %bb.ax ], [ %i.wi, %bb.ay ] ; 3 uses
  %i.wj = zext i1 %i.dc to i8
  %i.wk = load ptr, ptr %i.f, align 8, !tbaa !1246
  %i.wl = getelementptr inbounds nuw [8 x i8], ptr %i.wk, i64 %.05.i154
  %i.wm = load ptr, ptr %i.wl, align 8, !tbaa !1051
  %i.wn = getelementptr inbounds nuw [24 x i8], ptr %i.wm, i64 %.0.i155
  %i.wo = load ptr, ptr %1, align 8, !tbaa !1361
  %i.wp = getelementptr inbounds nuw i8, ptr %i.wo, i64 8
  %i.wq = load i64, ptr %i.d, align 8, !tbaa !168
  %i.wr = load ptr, ptr %i.wp, align 8, !tbaa !1246
  %i.ws = getelementptr inbounds nuw [8 x i8], ptr %i.wr, i64 %i.wq
  %i.wt = load ptr, ptr %i.ws, align 8, !tbaa !1051
  %i.wu = load i64, ptr %i.e, align 8, !tbaa !168
  %i.wv = getelementptr inbounds nuw [24 x i8], ptr %i.wt, i64 %i.wu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.wv, ptr noundef nonnull align 8 dereferenceable(24) %i.wn, i64 24, i1 false)
  %i.ww = load ptr, ptr %i.f, align 8, !tbaa !1246
  %i.wx = getelementptr inbounds nuw [8 x i8], ptr %i.ww, i64 %.05.i154
  %i.wy = load ptr, ptr %i.wx, align 8, !tbaa !1051
  %i.wz = getelementptr inbounds nuw [24 x i8], ptr %i.wy, i64 %.0.i155 ; 3 uses
  store i64 %.sroa.0442.0.copyload, ptr %i.wz, align 8
  %.sroa.25.0..sroa_idx464 = getelementptr inbounds nuw i8, ptr %i.wz, i64 8
end_hunk_17
begin_hunk_18_@_ZNSt3_V28__rotateIN6duckdb16block_iterator_tIKNS1_18BlockIteratorStateILNS1_22BlockIteratorStateTypeE0EEENS1_7SortKeyILNS1_11SortKeyTypeE7EEEEEEET_SB_SB_SB_St26random_access_iterator_tag:bb.a
bb.j:                                             ; preds = %bb.i
  %i.cn = icmp eq i64 %.0221, 1
  br i1 %i.cn, label %bb.k, label %bb.p

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.co = load ptr, ptr %i.ck, align 8, !tbaa !1246
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %.sroa.19.0
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !1051
  %i.cr = getelementptr inbounds nuw [24 x i8], ptr %i.cq, i64 %.sroa.39.0
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %i.cr, i64 24, i1 false)
  %i.cs = add i64 %.sroa.39.0, 1                  ; 3 uses
  %i.ct = load i64, ptr %i.ae, align 8, !tbaa !168, !noalias !8198 ; 8 uses
  %.not.i.i17 = icmp ult i64 %i.cs, %i.ct
  br i1 %.not.i.i17, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEplERKm.exit20, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cu = mul i64 %i.ct, %.sroa.19.0
  %i.cv = add i64 %i.cu, %i.cs                    ; 2 uses
  %i.cw = zext i64 %i.cv to i128
  %i.cx = load i64, ptr %i.cj, align 8, !tbaa !1232, !noalias !8198
  %i.cy = zext i64 %i.cx to i128
  %i.cz = mul nuw i128 %i.cy, %i.cw
  %i.da = lshr i128 %i.cz, 64
  %i.db = trunc nuw i128 %i.da to i64             ; 2 uses
  %i.dc = mul i64 %i.ct, %i.db
  %i.dd = sub i64 %i.cv, %i.dc
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEplERKm.exit20

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEplERKm.exit20: ; preds = %bb.k, %bb.l
  %.05.i18 = phi i64 [ %.sroa.19.0, %bb.k ], [ %i.db, %bb.l ] ; 2 uses
  %.0.i19 = phi i64 [ %i.cs, %bb.k ], [ %i.dd, %bb.l ] ; 2 uses
  %i.de = add i64 %.0220, %.sroa.39.0             ; 6 uses
  %.not.i.i21 = icmp ult i64 %i.de, %i.ct
  br i1 %.not.i.i21, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEplERKm.exit24, label %bb.m

bb.m:                                             ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEplERKm.exit20
  %i.df = mul i64 %i.ct, %.sroa.19.0
  %i.dg = add i64 %i.df, %i.de                    ; 2 uses
  %i.dh = zext i64 %i.dg to i128
  %i.di = load i64, ptr %i.cj, align 8, !tbaa !1232, !noalias !8201
  %i.dj = zext i64 %i.di to i128
  %i.dk = mul nuw i128 %i.dj, %i.dh
  %i.dl = lshr i128 %i.dk, 64
  %i.dm = trunc nuw i128 %i.dl to i64             ; 2 uses
  %i.dn = mul i64 %i.ct, %i.dm
  %i.do = sub i64 %i.dg, %i.dn
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEplERKm.exit24

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEplERKm.exit24: ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEplERKm.exit20, %bb.m
  %.05.i22 = phi i64 [ %.sroa.19.0, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEplERKm.exit20 ], [ %i.dm, %bb.m ]
  %.0.i23 = phi i64 [ %i.de, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEplERKm.exit20 ], [ %i.do, %bb.m ]
  %reass.add226 = sub i64 %.05.i22, %.05.i18
  %reass.mul227 = mul i64 %reass.add226, %i.ct
  %i.dp = sub i64 %.0.i23, %.0.i19
  %i.dq = add i64 %i.dp, %reass.mul227            ; 2 uses
  %.not4.i.i.i.i.i = icmp eq i64 %i.dq, 0
  br i1 %.not4.i.i.i.i.i, label %_ZSt4moveIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE7EEEEES9_ET0_T_SB_SA_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEplERKm.exit24, %.lr.ph.i.i.i.i.i
  %.sroa.38.0.i.i.i.i = phi i64 [ %i.ec, %.lr.ph.i.i.i.i.i ], [ %.05.i18, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEplERKm.exit24 ] ; 2 uses
  %.sroa.8.0.i.i.i.i = phi i64 [ %i.ei, %.lr.ph.i.i.i.i.i ], [ %.sroa.39.0, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEplERKm.exit24 ] ; 2 uses
  %.sroa.3.0.i.i.i.i = phi i64 [ %i.eh, %.lr.ph.i.i.i.i.i ], [ %.sroa.19.0, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEplERKm.exit24 ] ; 2 uses
  %.sroa.811.0.i.i.i.i = phi i64 [ %i.ed, %.lr.ph.i.i.i.i.i ], [ %.0.i19, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEplERKm.exit24 ] ; 2 uses
  %.05.i.i.i.i.i = phi i64 [ %i.ej, %.lr.ph.i.i.i.i.i ], [ %i.dq, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEplERKm.exit24 ]
  %i.dr = load ptr, ptr %i.ck, align 8, !tbaa !1246, !noalias !8204 ; 2 uses
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %.sroa.38.0.i.i.i.i
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !1051, !noalias !8204
  %i.du = getelementptr inbounds nuw [24 x i8], ptr %i.dt, i64 %.sroa.811.0.i.i.i.i
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %.sroa.3.0.i.i.i.i
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !1051, !noalias !8204
  %i.dx = getelementptr inbounds nuw [24 x i8], ptr %i.dw, i64 %.sroa.8.0.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dx, ptr noundef nonnull align 8 dereferenceable(24) %i.du, i64 24, i1 false), !noalias !8204
  %i.dy = add i64 %.sroa.811.0.i.i.i.i, 1         ; 2 uses
  %i.dz = load i64, ptr %i.ae, align 8, !tbaa !168, !noalias !8204 ; 3 uses
  %i.ea = icmp eq i64 %i.dy, %i.dz                ; 2 uses
  %i.eb = zext i1 %i.ea to i64
  %i.ec = add i64 %.sroa.38.0.i.i.i.i, %i.eb
  %i.ed = select i1 %i.ea, i64 0, i64 %i.dy
  %i.ee = add i64 %.sroa.8.0.i.i.i.i, 1           ; 2 uses
  %i.ef = icmp eq i64 %i.ee, %i.dz                ; 2 uses
  %i.eg = zext i1 %i.ef to i64
  %i.eh = add i64 %.sroa.3.0.i.i.i.i, %i.eg
  %i.ei = select i1 %i.ef, i64 0, i64 %i.ee
  %i.ej = add i64 %.05.i.i.i.i.i, -1              ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.ej, 0
  br i1 %.not.i.i.i.i.i, label %_ZSt4moveIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE7EEEEES9_ET0_T_SB_SA_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !8215

_ZSt4moveIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE7EEEEES9_ET0_T_SB_SA_.exit: ; preds = %.lr.ph.i.i.i.i.i, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEplERKm.exit24
  %i.ek = phi i64 [ %i.ct, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEplERKm.exit24 ], [ %i.dz, %.lr.ph.i.i.i.i.i ] ; 6 uses
  %.not.i.i25 = icmp ult i64 %i.de, %i.ek
  br i1 %.not.i.i25, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEplERKm.exit28, label %bb.n

bb.n:                                             ; preds = %_ZSt4moveIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE7EEEEES9_ET0_T_SB_SA_.exit
  %i.el = mul i64 %i.ek, %.sroa.19.0
  %i.em = add i64 %i.el, %i.de                    ; 2 uses
  %i.en = zext i64 %i.em to i128
  %i.eo = load i64, ptr %i.cj, align 8, !tbaa !1232, !noalias !8216
  %i.ep = zext i64 %i.eo to i128
  %i.eq = mul nuw i128 %i.ep, %i.en
  %i.er = lshr i128 %i.eq, 64
  %i.es = trunc nuw i128 %i.er to i64             ; 2 uses
  %i.et = mul i64 %i.ek, %i.es
  %i.eu = sub i64 %i.em, %i.et
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEplERKm.exit28

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEplERKm.exit28: ; preds = %_ZSt4moveIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE7EEEEES9_ET0_T_SB_SA_.exit, %bb.n
  %.05.i26 = phi i64 [ %.sroa.19.0, %_ZSt4moveIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE7EEEEES9_ET0_T_SB_SA_.exit ], [ %i.es, %bb.n ] ; 2 uses
  %.0.i27 = phi i64 [ %i.de, %_ZSt4moveIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE7EEEEES9_ET0_T_SB_SA_.exit ], [ %i.eu, %bb.n ]
  %i.ev = add i64 %.0.i27, -1                     ; 3 uses
  %.not.i.i29 = icmp ult i64 %i.ev, %i.ek
  br i1 %.not.i.i29, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEmiERKm.exit, label %bb.o

bb.o:                                             ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEplERKm.exit28
  %i.ew = mul i64 %.05.i26, %i.ek
  %i.ex = add i64 %i.ev, %i.ew                    ; 2 uses
  %i.ey = zext i64 %i.ex to i128
  %i.ez = load i64, ptr %i.cj, align 8, !tbaa !1232, !noalias !8219
  %i.fa = zext i64 %i.ez to i128
  %i.fb = mul nuw i128 %i.fa, %i.ey
  %i.fc = lshr i128 %i.fb, 64
  %i.fd = trunc nuw i128 %i.fc to i64             ; 2 uses
  %i.fe = mul i64 %i.ek, %i.fd
  %i.ff = sub i64 %i.ex, %i.fe
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEmiERKm.exit

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEmiERKm.exit: ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEplERKm.exit28, %bb.o
  %.05.i30 = phi i64 [ %.05.i26, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEplERKm.exit28 ], [ %i.fd, %bb.o ]
  %.0.i31 = phi i64 [ %i.ev, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEplERKm.exit28 ], [ %i.ff, %bb.o ]
  %i.fg = load ptr, ptr %i.ck, align 8, !tbaa !1246
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %.05.i30
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !1051
  %i.fj = getelementptr inbounds nuw [24 x i8], ptr %i.fi, i64 %.0.i31
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fj, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %.critedge

bb.p:                                             ; preds = %bb.j
  %i.fk = add i64 %.0221, %.sroa.39.0             ; 3 uses
  %i.fl = load i64, ptr %i.ae, align 8, !tbaa !168, !noalias !8222 ; 3 uses
  %.not.i.i32 = icmp ult i64 %i.fk, %i.fl
  br i1 %.not.i.i32, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEplERKm.exit35.preheader, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.fm = mul i64 %i.fl, %.sroa.19.0
  %i.fn = add i64 %i.fm, %i.fk                    ; 2 uses
  %i.fo = zext i64 %i.fn to i128
  %i.fp = load i64, ptr %i.cj, align 8, !tbaa !1232, !noalias !8222
  %i.fq = zext i64 %i.fp to i128
  %i.fr = mul nuw i128 %i.fq, %i.fo
  %i.fs = lshr i128 %i.fr, 64
  %i.ft = trunc nuw i128 %i.fs to i64             ; 2 uses
  %i.fu = mul i64 %i.fl, %i.ft
  %i.fv = sub i64 %i.fn, %i.fu
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEplERKm.exit35.preheader

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEplERKm.exit35.preheader: ; preds = %bb.p, %bb.q
  %.sroa.6109.0241.ph = phi i64 [ %i.ft, %bb.q ], [ %.sroa.19.0, %bb.p ]
  %.sroa.10.0240.ph = phi i64 [ %i.fv, %bb.q ], [ %i.fk, %bb.p ]
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEplERKm.exit35

bb.r:                                             ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEplERKm.exit35
  %i.fw = urem i64 %.0220, %.0221                 ; 2 uses
  %.not11 = icmp eq i64 %i.fw, 0
  br i1 %.not11, label %.critedge, label %bb.s

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEplERKm.exit35: ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEplERKm.exit35.preheader, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEplERKm.exit35
  %.07244 = phi i64 [ %i.gp, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEplERKm.exit35 ], [ 0, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEplERKm.exit35.preheader ]
  %.sroa.39.1243 = phi i64 [ %i.gj, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEplERKm.exit35 ], [ %.sroa.39.0, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEplERKm.exit35.preheader ] ; 2 uses
  %.sroa.19.1242 = phi i64 [ %i.gi, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEplERKm.exit35 ], [ %.sroa.19.0, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEplERKm.exit35.preheader ] ; 2 uses
  %.sroa.6109.0241 = phi i64 [ %i.gn, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEplERKm.exit35 ], [ %.sroa.6109.0241.ph, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEplERKm.exit35.preheader ] ; 2 uses
  %.sroa.10.0240 = phi i64 [ %i.go, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEplERKm.exit35 ], [ %.sroa.10.0240.ph, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEplERKm.exit35.preheader ] ; 2 uses
  %i.fx = load ptr, ptr %i.ck, align 8, !tbaa !1246 ; 2 uses
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %.sroa.19.1242
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !1051
  %i.ga = getelementptr inbounds nuw [24 x i8], ptr %i.fz, i64 %.sroa.39.1243 ; 2 uses
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %.sroa.6109.0241
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !1051
  %i.gd = getelementptr inbounds nuw [24 x i8], ptr %i.gc, i64 %.sroa.10.0240 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.ga, i64 24, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ga, ptr noundef nonnull align 8 dereferenceable(24) %i.gd, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gd, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.ge = add i64 %.sroa.39.1243, 1               ; 2 uses
  %i.gf = load i64, ptr %i.ae, align 8, !tbaa !168 ; 2 uses
  %i.gg = icmp eq i64 %i.ge, %i.gf                ; 2 uses
  %i.gh = zext i1 %i.gg to i64
  %i.gi = add i64 %.sroa.19.1242, %i.gh           ; 2 uses
  %i.gj = select i1 %i.gg, i64 0, i64 %i.ge       ; 2 uses
  %i.gk = add i64 %.sroa.10.0240, 1               ; 2 uses
  %i.gl = icmp eq i64 %i.gk, %i.gf                ; 2 uses
  %i.gm = zext i1 %i.gl to i64
  %i.gn = add i64 %.sroa.6109.0241, %i.gm
  %i.go = select i1 %i.gl, i64 0, i64 %i.gk
  %i.gp = add nuw i64 %.07244, 1                  ; 2 uses
  %exitcond255.not = icmp eq i64 %i.gp, %i.cl
  br i1 %exitcond255.not, label %bb.r, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEplERKm.exit35, !llvm.loop !8225

bb.s:                                             ; preds = %bb.r
  %i.gq = sub i64 %.0221, %i.fw
  br label %.backedge

bb.t:                                             ; preds = %bb.i
  %i.gr = icmp eq i64 %i.cl, 1
  br i1 %i.gr, label %bb.u, label %bb.aa

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  %i.gs = add i64 %.0220, %.sroa.39.0             ; 7 uses
  %i.gt = load i64, ptr %i.ae, align 8, !tbaa !168, !noalias !8226 ; 14 uses
  %.not.i.i36 = icmp ult i64 %i.gs, %i.gt         ; 3 uses
  br i1 %.not.i.i36, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEplERKm.exit39, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.gu = mul i64 %i.gt, %.sroa.19.0
  %i.gv = add i64 %i.gu, %i.gs                    ; 2 uses
  %i.gw = zext i64 %i.gv to i128
  %i.gx = load i64, ptr %i.cj, align 8, !tbaa !1232, !noalias !8226
  %i.gy = zext i64 %i.gx to i128
  %i.gz = mul nuw i128 %i.gy, %i.gw
  %i.ha = lshr i128 %i.gz, 64
  %i.hb = trunc nuw i128 %i.ha to i64             ; 2 uses
  %i.hc = mul i64 %i.gt, %i.hb
  %i.hd = sub i64 %i.gv, %i.hc
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEplERKm.exit39

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEplERKm.exit39: ; preds = %bb.u, %bb.v
  %.05.i37 = phi i64 [ %.sroa.19.0, %bb.u ], [ %i.hb, %bb.v ] ; 2 uses
  %.0.i38 = phi i64 [ %i.gs, %bb.u ], [ %i.hd, %bb.v ]
  %i.he = add i64 %.0.i38, -1                     ; 3 uses
  %.not.i.i40 = icmp ult i64 %i.he, %i.gt
  br i1 %.not.i.i40, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEmiERKm.exit43, label %bb.w

bb.w:                                             ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEplERKm.exit39
  %i.hf = mul i64 %.05.i37, %i.gt
  %i.hg = add i64 %i.he, %i.hf                    ; 2 uses
  %i.hh = zext i64 %i.hg to i128
  %i.hi = load i64, ptr %i.cj, align 8, !tbaa !1232, !noalias !8229
  %i.hj = zext i64 %i.hi to i128
  %i.hk = mul nuw i128 %i.hj, %i.hh
  %i.hl = lshr i128 %i.hk, 64
  %i.hm = trunc nuw i128 %i.hl to i64             ; 2 uses
  %i.hn = mul i64 %i.gt, %i.hm
  %i.ho = sub i64 %i.hg, %i.hn
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEmiERKm.exit43

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEmiERKm.exit43: ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEplERKm.exit39, %bb.w
  %.05.i41 = phi i64 [ %.05.i37, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEplERKm.exit39 ], [ %i.hm, %bb.w ]
  %.0.i42 = phi i64 [ %i.he, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEplERKm.exit39 ], [ %i.ho, %bb.w ]
  %i.hp = load ptr, ptr %i.ck, align 8, !tbaa !1246 ; 2 uses
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.hp, i64 %.05.i41
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !1051
  %i.hs = getelementptr inbounds nuw [24 x i8], ptr %i.hr, i64 %.0.i42
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %i.hs, i64 24, i1 false)
  br i1 %.not.i.i36, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEplERKm.exit47, label %bb.x

bb.x:                                             ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEmiERKm.exit43
  %i.ht = mul i64 %i.gt, %.sroa.19.0
  %i.hu = add i64 %i.ht, %i.gs                    ; 2 uses
  %i.hv = zext i64 %i.hu to i128
  %i.hw = load i64, ptr %i.cj, align 8, !tbaa !1232, !noalias !8232
  %i.hx = zext i64 %i.hw to i128
  %i.hy = mul nuw i128 %i.hx, %i.hv
  %i.hz = lshr i128 %i.hy, 64
  %i.ia = trunc nuw i128 %i.hz to i64             ; 2 uses
  %i.ib = mul i64 %i.gt, %i.ia
  %i.ic = sub i64 %i.hu, %i.ib
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEplERKm.exit47

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEplERKm.exit47: ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEmiERKm.exit43, %bb.x
  %.05.i45 = phi i64 [ %.sroa.19.0, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEmiERKm.exit43 ], [ %i.ia, %bb.x ] ; 2 uses
  %.0.i46 = phi i64 [ %i.gs, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEmiERKm.exit43 ], [ %i.ic, %bb.x ]
  %i.id = add i64 %.0.i46, -1                     ; 3 uses
  %.not.i.i48 = icmp ult i64 %i.id, %i.gt
  br i1 %.not.i.i48, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEmiERKm.exit51, label %bb.y

bb.y:                                             ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEplERKm.exit47
  %i.ie = mul i64 %.05.i45, %i.gt
  %i.if = add i64 %i.id, %i.ie                    ; 2 uses
  %i.ig = zext i64 %i.if to i128
  %i.ih = load i64, ptr %i.cj, align 8, !tbaa !1232, !noalias !8235
  %i.ii = zext i64 %i.ih to i128
  %i.ij = mul nuw i128 %i.ii, %i.ig
  %i.ik = lshr i128 %i.ij, 64
  %i.il = trunc nuw i128 %i.ik to i64             ; 2 uses
  %i.im = mul i64 %i.gt, %i.il
  %i.in = sub i64 %i.if, %i.im
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEmiERKm.exit51

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEmiERKm.exit51: ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEplERKm.exit47, %bb.y
  %.05.i49 = phi i64 [ %.05.i45, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEplERKm.exit47 ], [ %i.il, %bb.y ] ; 2 uses
  %.0.i50 = phi i64 [ %i.id, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEplERKm.exit47 ], [ %i.in, %bb.y ] ; 2 uses
  br i1 %.not.i.i36, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEplERKm.exit55, label %bb.z

bb.z:                                             ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEmiERKm.exit51
  %i.io = mul i64 %i.gt, %.sroa.19.0
  %i.ip = add i64 %i.io, %i.gs                    ; 2 uses
  %i.iq = zext i64 %i.ip to i128
  %i.ir = load i64, ptr %i.cj, align 8, !tbaa !1232, !noalias !8238
  %i.is = zext i64 %i.ir to i128
  %i.it = mul nuw i128 %i.is, %i.iq
  %i.iu = lshr i128 %i.it, 64
  %i.iv = trunc nuw i128 %i.iu to i64             ; 2 uses
  %i.iw = mul i64 %i.gt, %i.iv
  %i.ix = sub i64 %i.ip, %i.iw
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEplERKm.exit55

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEplERKm.exit55: ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEmiERKm.exit51, %bb.z
  %.05.i53 = phi i64 [ %.sroa.19.0, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEmiERKm.exit51 ], [ %i.iv, %bb.z ]
  %.0.i54 = phi i64 [ %i.gs, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEmiERKm.exit51 ], [ %i.ix, %bb.z ]
  %reass.add = sub i64 %.05.i49, %.sroa.19.0
  %reass.mul = mul i64 %reass.add, %i.gt
  %i.iy = sub i64 %.0.i50, %.sroa.39.0
  %i.iz = add i64 %i.iy, %reass.mul               ; 2 uses
  %.not5.i.i.i.i.i = icmp eq i64 %i.iz, 0
  br i1 %.not5.i.i.i.i.i, label %_ZSt13move_backwardIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE7EEEEES9_ET0_T_SB_SA_.exit, label %.lr.ph.i.i.i.i.i57

.lr.ph.i.i.i.i.i57:                               ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEplERKm.exit55, %.lr.ph.i.i.i.i.i57
  %.sroa.36.0.i.i.i.i = phi i64 [ %i.jc, %.lr.ph.i.i.i.i.i57 ], [ %.05.i49, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEplERKm.exit55 ]
  %.sroa.7.0.i.i.i.i = phi i64 [ %i.jo, %.lr.ph.i.i.i.i.i57 ], [ %.0.i54, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEplERKm.exit55 ] ; 2 uses
  %.sroa.3.0.i.i.i.i58 = phi i64 [ %i.jm, %.lr.ph.i.i.i.i.i57 ], [ %.05.i53, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEplERKm.exit55 ]
  %.sroa.78.0.i.i.i.i = phi i64 [ %i.jf, %.lr.ph.i.i.i.i.i57 ], [ %.0.i50, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEplERKm.exit55 ] ; 2 uses
  %.06.i.i.i.i.i = phi i64 [ %i.js, %.lr.ph.i.i.i.i.i57 ], [ %i.iz, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEplERKm.exit55 ]
  %i.ja = add i64 %.sroa.78.0.i.i.i.i, -1
  %i.jb = icmp eq i64 %.sroa.78.0.i.i.i.i, 0      ; 2 uses
  %.neg.i.i.i.i.i.i.i = sext i1 %i.jb to i64
  %i.jc = add i64 %.sroa.36.0.i.i.i.i, %.neg.i.i.i.i.i.i.i ; 2 uses
  %i.jd = load i64, ptr %i.ae, align 8, !tbaa !168, !noalias !8241 ; 2 uses
  %i.je = select i1 %i.jb, i64 %i.jd, i64 0
  %i.jf = add i64 %i.ja, %i.je                    ; 2 uses
  %i.jg = load ptr, ptr %i.ck, align 8, !tbaa !1246, !noalias !8241 ; 2 uses
  %i.jh = getelementptr inbounds nuw [8 x i8], ptr %i.jg, i64 %i.jc
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !1051, !noalias !8241
  %i.jj = getelementptr inbounds nuw [24 x i8], ptr %i.ji, i64 %i.jf
  %i.jk = add i64 %.sroa.7.0.i.i.i.i, -1
  %i.jl = icmp eq i64 %.sroa.7.0.i.i.i.i, 0       ; 2 uses
  %.neg.i.i2.i.i.i.i.i = sext i1 %i.jl to i64
  %i.jm = add i64 %.sroa.3.0.i.i.i.i58, %.neg.i.i2.i.i.i.i.i ; 2 uses
  %i.jn = select i1 %i.jl, i64 %i.jd, i64 0
  %i.jo = add i64 %i.jk, %i.jn                    ; 2 uses
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %i.jg, i64 %i.jm
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !1051, !noalias !8241
  %i.jr = getelementptr inbounds nuw [24 x i8], ptr %i.jq, i64 %i.jo
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jr, ptr noundef nonnull align 8 dereferenceable(24) %i.jj, i64 24, i1 false), !noalias !8241
  %i.js = add i64 %.06.i.i.i.i.i, -1              ; 2 uses
  %.not.i.i.i.i.i59 = icmp eq i64 %i.js, 0
  br i1 %.not.i.i.i.i.i59, label %_ZSt13move_backwardIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE7EEEEES9_ET0_T_SB_SA_.exit.loopexit, label %.lr.ph.i.i.i.i.i57, !llvm.loop !8252

_ZSt13move_backwardIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE7EEEEES9_ET0_T_SB_SA_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i57
  %.pre = load ptr, ptr %i.ck, align 8, !tbaa !1246
  br label %_ZSt13move_backwardIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE7EEEEES9_ET0_T_SB_SA_.exit

_ZSt13move_backwardIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE7EEEEES9_ET0_T_SB_SA_.exit: ; preds = %_ZSt13move_backwardIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE7EEEEES9_ET0_T_SB_SA_.exit.loopexit, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEplERKm.exit55
  %i.jt = phi ptr [ %.pre, %_ZSt13move_backwardIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE7EEEEES9_ET0_T_SB_SA_.exit.loopexit ], [ %i.hp, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEplERKm.exit55 ]
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %i.jt, i64 %.sroa.19.0
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !1051
  %i.jw = getelementptr inbounds nuw [24 x i8], ptr %i.jv, i64 %.sroa.39.0
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jw, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %.critedge

bb.aa:                                            ; preds = %bb.t
  %i.jx = add i64 %.0220, %.sroa.39.0             ; 3 uses
  %i.jy = load i64, ptr %i.ae, align 8, !tbaa !168, !noalias !8253 ; 6 uses
  %.not.i.i60 = icmp ult i64 %i.jx, %i.jy
  br i1 %.not.i.i60, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEplERKm.exit63, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.jz = mul i64 %i.jy, %.sroa.19.0
  %i.ka = add i64 %i.jz, %i.jx                    ; 2 uses
  %i.kb = zext i64 %i.ka to i128
  %i.kc = load i64, ptr %i.cj, align 8, !tbaa !1232, !noalias !8253
  %i.kd = zext i64 %i.kc to i128
  %i.ke = mul nuw i128 %i.kd, %i.kb
  %i.kf = lshr i128 %i.ke, 64
  %i.kg = trunc nuw i128 %i.kf to i64             ; 2 uses
  %i.kh = mul i64 %i.jy, %i.kg
  %i.ki = sub i64 %i.ka, %i.kh
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEplERKm.exit63

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEplERKm.exit63: ; preds = %bb.aa, %bb.ab
  %.05.i61 = phi i64 [ %.sroa.19.0, %bb.aa ], [ %i.kg, %bb.ab ] ; 3 uses
  %.0.i62 = phi i64 [ %i.jx, %bb.aa ], [ %i.ki, %bb.ab ] ; 2 uses
  %i.kj = sub i64 %.0.i62, %i.cl                  ; 3 uses
  %.not.i.i64 = icmp ult i64 %i.kj, %i.jy
  br i1 %.not.i.i64, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEmiERKm.exit67, label %bb.ac

bb.ac:                                            ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEplERKm.exit63
  %i.kk = mul i64 %.05.i61, %i.jy
  %i.kl = add i64 %i.kj, %i.kk                    ; 2 uses
  %i.km = zext i64 %i.kl to i128
  %i.kn = load i64, ptr %i.cj, align 8, !tbaa !1232, !noalias !8256
  %i.ko = zext i64 %i.kn to i128
  %i.kp = mul nuw i128 %i.ko, %i.km
  %i.kq = lshr i128 %i.kp, 64
  %i.kr = trunc nuw i128 %i.kq to i64             ; 2 uses
  %i.ks = mul i64 %i.jy, %i.kr
  %i.kt = sub i64 %i.kl, %i.ks
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEmiERKm.exit67

end_hunk_18
begin_hunk_19_@_ZN14duckdb_pdqsort14pdqsort_detail26partition_right_branchlessIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE8EEEEEZN15duckdb_ska_sort6detail15StdSortFallbackISB_KNS2_13SkaExtractKeyISA_EEEEvT_SI_RT0_EUlRKSA_SM_E_EESt4pairISI_bESI_SI_SJ_:bb.a
  %i.sg = zext i1 %i.sf to i64
  br label %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE8EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit128

_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE8EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit128: ; preds = %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE8EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit124, %bb.bn, %bb.bo, %bb.bp, %bb.bq
  %i.sh = phi i64 [ 1, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE8EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit124 ], [ 0, %bb.bn ], [ 1, %bb.bo ], [ 0, %bb.bp ], [ %i.sg, %bb.bq ]
  %i.si = add i64 %i.sh, %i.rk                    ; 2 uses
  %i.sj = or disjoint i8 %.064563, 6
  %i.sk = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.si
  store i8 %i.sj, ptr %i.sk, align 1, !tbaa !527
  %i.sl = add i64 %i.rs, -1
  %i.sm = icmp eq i64 %i.rs, 0                    ; 2 uses
  %.neg.i.i129 = sext i1 %i.sm to i64
  %i.sn = add i64 %i.rp, %.neg.i.i129             ; 2 uses
  %i.so = load i64, ptr %i.em, align 8, !tbaa !168
  %i.sp = select i1 %i.sm, i64 %i.so, i64 0
  %i.sq = add i64 %i.sl, %i.sp                    ; 3 uses
  %i.sr = load ptr, ptr %i.dp, align 8, !tbaa !1246
  %i.ss = getelementptr inbounds nuw [8 x i8], ptr %i.sr, i64 %i.sn
  %i.st = load ptr, ptr %i.ss, align 8, !tbaa !1051
  %i.su = getelementptr inbounds nuw [32 x i8], ptr %i.st, i64 %i.sq ; 3 uses
  %i.sv = load i64, ptr %i.su, align 8, !tbaa !168 ; 2 uses
  %i.sw = icmp ult i64 %i.sv, %.sroa.0442.0.copyload
  br i1 %i.sw, label %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE8EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit132, label %bb.br

bb.br:                                            ; preds = %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE8EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit128
  %i.sx = icmp eq i64 %i.sv, %.sroa.0442.0.copyload
  br i1 %i.sx, label %bb.bs, label %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE8EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit132

bb.bs:                                            ; preds = %bb.br
  %i.sy = getelementptr inbounds nuw i8, ptr %i.su, i64 8
  %i.sz = load i64, ptr %i.sy, align 8, !tbaa !168 ; 2 uses
  %i.ta = icmp ult i64 %i.sz, %.sroa.25.0.copyload
  br i1 %i.ta, label %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE8EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit132, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.tb = icmp eq i64 %i.sz, %.sroa.25.0.copyload
  br i1 %i.tb, label %bb.bu, label %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE8EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit132

bb.bu:                                            ; preds = %bb.bt
  %i.tc = getelementptr inbounds nuw i8, ptr %i.su, i64 16
  %.val.val.i.i.i.i130 = load i64, ptr %i.tc, align 8, !tbaa !168
  %i.td = icmp ult i64 %.val.val.i.i.i.i130, %.sroa.46.0.copyload
  %i.te = zext i1 %i.td to i64
  br label %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE8EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit132

_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE8EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit132: ; preds = %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE8EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit128, %bb.br, %bb.bs, %bb.bt, %bb.bu
  %i.tf = phi i64 [ 1, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE8EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit128 ], [ 0, %bb.br ], [ 1, %bb.bs ], [ 0, %bb.bt ], [ %i.te, %bb.bu ]
  %i.tg = add i64 %i.tf, %i.si                    ; 2 uses
  %i.th = or disjoint i8 %.064563, 7
  %i.ti = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.tg
  store i8 %i.th, ptr %i.ti, align 1, !tbaa !527
  %i.tj = add i64 %i.sq, -1
  %i.tk = icmp eq i64 %i.sq, 0                    ; 2 uses
  %.neg.i.i133 = sext i1 %i.tk to i64
  %i.tl = add i64 %i.sn, %.neg.i.i133             ; 2 uses
  %i.tm = load i64, ptr %i.em, align 8, !tbaa !168
  %i.tn = select i1 %i.tk, i64 %i.tm, i64 0
  %i.to = add i64 %i.tj, %i.tn                    ; 3 uses
  %i.tp = load ptr, ptr %i.dp, align 8, !tbaa !1246
  %i.tq = getelementptr inbounds nuw [8 x i8], ptr %i.tp, i64 %i.tl
  %i.tr = load ptr, ptr %i.tq, align 8, !tbaa !1051
  %i.ts = getelementptr inbounds nuw [32 x i8], ptr %i.tr, i64 %i.to ; 3 uses
  %i.tt = load i64, ptr %i.ts, align 8, !tbaa !168 ; 2 uses
  %i.tu = icmp ult i64 %i.tt, %.sroa.0442.0.copyload
  br i1 %i.tu, label %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE8EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit136, label %bb.bv

bb.bv:                                            ; preds = %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE8EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit132
  %i.tv = icmp eq i64 %i.tt, %.sroa.0442.0.copyload
  br i1 %i.tv, label %bb.bw, label %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE8EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit136

bb.bw:                                            ; preds = %bb.bv
  %i.tw = getelementptr inbounds nuw i8, ptr %i.ts, i64 8
  %i.tx = load i64, ptr %i.tw, align 8, !tbaa !168 ; 2 uses
  %i.ty = icmp ult i64 %i.tx, %.sroa.25.0.copyload
  br i1 %i.ty, label %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE8EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit136, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.tz = icmp eq i64 %i.tx, %.sroa.25.0.copyload
  br i1 %i.tz, label %bb.by, label %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE8EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit136

bb.by:                                            ; preds = %bb.bx
  %i.ua = getelementptr inbounds nuw i8, ptr %i.ts, i64 16
  %.val.val.i.i.i.i134 = load i64, ptr %i.ua, align 8, !tbaa !168
  %i.ub = icmp ult i64 %.val.val.i.i.i.i134, %.sroa.46.0.copyload
  %i.uc = zext i1 %i.ub to i64
  br label %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE8EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit136

_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE8EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit136: ; preds = %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE8EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit132, %bb.bv, %bb.bw, %bb.bx, %bb.by
  %i.ud = phi i64 [ 1, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE8EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit132 ], [ 0, %bb.bv ], [ 1, %bb.bw ], [ 0, %bb.bx ], [ %i.uc, %bb.by ]
  %i.ue = add i64 %i.ud, %i.tg                    ; 2 uses
  %i.uf = add nuw nsw i8 %.064563, 8              ; 2 uses
  %i.ug = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.ue
  store i8 %i.uf, ptr %i.ug, align 1, !tbaa !527
  %i.uh = add i64 %i.to, -1
  %i.ui = icmp eq i64 %i.to, 0                    ; 2 uses
  %.neg.i.i137 = sext i1 %i.ui to i64
  %i.uj = add i64 %i.tl, %.neg.i.i137             ; 3 uses
  %i.uk = load i64, ptr %i.em, align 8, !tbaa !168
  %i.ul = select i1 %i.ui, i64 %i.uk, i64 0
  %i.um = add i64 %i.uh, %i.ul                    ; 3 uses
  %i.un = load ptr, ptr %i.dp, align 8, !tbaa !1246
  %i.uo = getelementptr inbounds nuw [8 x i8], ptr %i.un, i64 %i.uj
  %i.up = load ptr, ptr %i.uo, align 8, !tbaa !1051
  %i.uq = getelementptr inbounds nuw [32 x i8], ptr %i.up, i64 %i.um ; 3 uses
  %i.ur = load i64, ptr %i.uq, align 8, !tbaa !168 ; 2 uses
  %i.us = icmp ult i64 %i.ur, %.sroa.0442.0.copyload
  br i1 %i.us, label %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE8EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit140, label %bb.bz

bb.bz:                                            ; preds = %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE8EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit136
  %i.ut = icmp eq i64 %i.ur, %.sroa.0442.0.copyload
  br i1 %i.ut, label %bb.ca, label %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE8EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit140

bb.ca:                                            ; preds = %bb.bz
  %i.uu = getelementptr inbounds nuw i8, ptr %i.uq, i64 8
  %i.uv = load i64, ptr %i.uu, align 8, !tbaa !168 ; 2 uses
  %i.uw = icmp ult i64 %i.uv, %.sroa.25.0.copyload
  br i1 %i.uw, label %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE8EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit140, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.ux = icmp eq i64 %i.uv, %.sroa.25.0.copyload
  br i1 %i.ux, label %bb.cc, label %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE8EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit140

bb.cc:                                            ; preds = %bb.cb
  %i.uy = getelementptr inbounds nuw i8, ptr %i.uq, i64 16
  %.val.val.i.i.i.i138 = load i64, ptr %i.uy, align 8, !tbaa !168
  %i.uz = icmp ult i64 %.val.val.i.i.i.i138, %.sroa.46.0.copyload
  %i.va = zext i1 %i.uz to i64
  br label %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE8EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit140

_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE8EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit140: ; preds = %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE8EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit136, %bb.bz, %bb.ca, %bb.cb, %bb.cc
  %i.vb = phi i64 [ 1, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE8EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit136 ], [ 0, %bb.bz ], [ 1, %bb.ca ], [ 0, %bb.cb ], [ %i.va, %bb.cc ]
  %i.vc = add i64 %i.vb, %i.ue                    ; 2 uses
  %i.vd = icmp samesign ult i8 %.064563, 56
  br i1 %i.vd, label %.preheader, label %.loopexit502, !llvm.loop !9106

.lr.ph556:                                        ; preds = %.lr.ph556.preheader, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE8EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit144
  %.0555 = phi i8 [ %i.ve, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE8EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit144 ], [ 0, %.lr.ph556.preheader ]
  %.sroa.76.5554 = phi i64 [ %i.vl, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE8EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit144 ], [ %.sroa.76.3571, %.lr.ph556.preheader ] ; 2 uses
  %.sroa.30.5553 = phi i64 [ %i.vi, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE8EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit144 ], [ %.sroa.30.3570, %.lr.ph556.preheader ]
  %.2552 = phi i64 [ %i.wb, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE8EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit144 ], [ %.0490569, %.lr.ph556.preheader ] ; 2 uses
  %i.ve = add nuw i8 %.0555, 1                    ; 3 uses
  %i.vf = getelementptr inbounds nuw i8, ptr %i.eh, i64 %.2552
  store i8 %i.ve, ptr %i.vf, align 1, !tbaa !527
  %i.vg = add i64 %.sroa.76.5554, -1
  %i.vh = icmp eq i64 %.sroa.76.5554, 0           ; 2 uses
  %.neg.i.i141 = sext i1 %i.vh to i64
  %i.vi = add i64 %.sroa.30.5553, %.neg.i.i141    ; 3 uses
  %i.vj = load i64, ptr %i.em, align 8, !tbaa !168
  %i.vk = select i1 %i.vh, i64 %i.vj, i64 0
  %i.vl = add i64 %i.vg, %i.vk                    ; 3 uses
  %i.vm = load ptr, ptr %i.dp, align 8, !tbaa !1246
  %i.vn = getelementptr inbounds nuw [8 x i8], ptr %i.vm, i64 %i.vi
  %i.vo = load ptr, ptr %i.vn, align 8, !tbaa !1051
  %i.vp = getelementptr inbounds nuw [32 x i8], ptr %i.vo, i64 %i.vl ; 3 uses
  %i.vq = load i64, ptr %i.vp, align 8, !tbaa !168 ; 2 uses
  %i.vr = icmp ult i64 %i.vq, %.sroa.0442.0.copyload
  br i1 %i.vr, label %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE8EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit144, label %bb.cd

bb.cd:                                            ; preds = %.lr.ph556
  %i.vs = icmp eq i64 %i.vq, %.sroa.0442.0.copyload
  br i1 %i.vs, label %bb.ce, label %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE8EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit144

bb.ce:                                            ; preds = %bb.cd
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vp, i64 8
  %i.vu = load i64, ptr %i.vt, align 8, !tbaa !168 ; 2 uses
  %i.vv = icmp ult i64 %i.vu, %.sroa.25.0.copyload
  br i1 %i.vv, label %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE8EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit144, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.vw = icmp eq i64 %i.vu, %.sroa.25.0.copyload
  br i1 %i.vw, label %bb.cg, label %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE8EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit144

bb.cg:                                            ; preds = %bb.cf
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vp, i64 16
  %.val.val.i.i.i.i142 = load i64, ptr %i.vx, align 8, !tbaa !168
  %i.vy = icmp ult i64 %.val.val.i.i.i.i142, %.sroa.46.0.copyload
  %i.vz = zext i1 %i.vy to i64
  br label %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE8EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit144

_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE8EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit144: ; preds = %.lr.ph556, %bb.cd, %bb.ce, %bb.cf, %bb.cg
  %i.wa = phi i64 [ 1, %.lr.ph556 ], [ 0, %bb.cd ], [ 1, %bb.ce ], [ 0, %bb.cf ], [ %i.vz, %bb.cg ]
  %i.wb = add i64 %i.wa, %.2552                   ; 2 uses
  %i.wc = icmp ult i8 %i.ve, %i.ns
  br i1 %i.wc, label %.lr.ph556, label %.loopexit502, !llvm.loop !9107

.loopexit502:                                     ; preds = %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE8EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit144, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE8EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit140, %.preheader503
  %.3 = phi i64 [ %i.vc, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE8EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit140 ], [ %.0490569, %.preheader503 ], [ %i.wb, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE8EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit144 ] ; 4 uses
  %.sroa.30.6 = phi i64 [ %i.uj, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE8EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit140 ], [ %.sroa.30.3570, %.preheader503 ], [ %i.vi, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE8EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit144 ] ; 5 uses
  %.sroa.76.6 = phi i64 [ %i.um, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE8EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit140 ], [ %.sroa.76.3571, %.preheader503 ], [ %i.vl, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE8EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit144 ] ; 4 uses
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %.3, i64 %.3495) ; 5 uses
  store ptr %i.c, ptr %6, align 8, !tbaa !1379
  store i64 %.sroa.5247.0565, ptr %i.en, align 8, !tbaa !1376
  store i64 %.sroa.9249.0564, ptr %i.eo, align 8, !tbaa !1378
  store ptr %i.m, ptr %7, align 8, !tbaa !1379
  store i64 %.sroa.5.0567, ptr %i.ep, align 8, !tbaa !1376
  store i64 %.sroa.9.0566, ptr %i.eq, align 8, !tbaa !1378
  %i.wd = getelementptr inbounds nuw i8, ptr %i.ed, i64 %.068574
  %i.we = getelementptr inbounds nuw i8, ptr %i.eh, i64 %.067575
  %i.wf = icmp eq i64 %.3495, %.3
  call void @_ZN14duckdb_pdqsort14pdqsort_detail12swap_offsetsIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE8EEEEEEEvT_SC_PhSD_mb(ptr noundef nonnull dead_on_return %6, ptr noundef nonnull dead_on_return %7, ptr noundef %i.wd, ptr noundef %i.we, i64 noundef %.sroa.speculated, i1 noundef zeroext %i.wf)
  %i.wg = sub i64 %.3495, %.sroa.speculated       ; 3 uses
  %i.wh = sub i64 %.3, %.sroa.speculated          ; 4 uses
  %i.wi = add i64 %.sroa.speculated, %.068574
  %i.wj = add i64 %.sroa.speculated, %.067575
  %.not499 = icmp ugt i64 %.3495, %.3             ; 3 uses
  %.sroa.9249.1 = select i1 %.not499, i64 %.sroa.9249.0564, i64 %.sroa.78.4 ; 2 uses
  %.sroa.5247.1 = select i1 %.not499, i64 %.sroa.5247.0565, i64 %.sroa.31.4 ; 3 uses
  %.169 = select i1 %.not499, i64 %i.wi, i64 0    ; 2 uses
  %i.wk = icmp eq i64 %i.wh, 0                    ; 3 uses
  %.sroa.9.1 = select i1 %i.wk, i64 %.sroa.76.6, i64 %.sroa.9.0566 ; 2 uses
  %.sroa.5.1 = select i1 %i.wk, i64 %.sroa.30.6, i64 %.sroa.5.0567 ; 3 uses
  %.1 = select i1 %i.wk, i64 0, i64 %i.wj         ; 2 uses
  %i.wl = icmp eq i64 %.sroa.31.4, %.sroa.30.6
  %i.wm = icmp ult i64 %.sroa.78.4, %.sroa.76.6
  %i.wn = icmp ult i64 %.sroa.31.4, %.sroa.30.6
  %i.wo = select i1 %i.wl, i1 %i.wm, i1 %i.wn
  br i1 %i.wo, label %bb.m, label %._crit_edge, !llvm.loop !9108

._crit_edge:                                      ; preds = %.loopexit502
  %.not = icmp eq i64 %i.wg, 0
  br i1 %.not, label %.loopexit501, label %bb.ch

bb.ch:                                            ; preds = %._crit_edge
  %i.wp = getelementptr inbounds nuw i8, ptr %i.ed, i64 %.169
  %i.wq = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.wr = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEplERKm.exit
  %.in = phi i64 [ %i.wg, %bb.ch ], [ %i.ws, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEplERKm.exit ]
  %.sroa.76.7590 = phi i64 [ %.sroa.76.6, %bb.ch ], [ %i.xn, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEplERKm.exit ] ; 2 uses
  %.sroa.30.7589 = phi i64 [ %.sroa.30.6, %bb.ch ], [ %i.xk, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEplERKm.exit ]
  %i.ws = add i64 %.in, -1                        ; 3 uses
  %i.wt = getelementptr inbounds nuw i8, ptr %i.wp, i64 %i.ws
  %i.wu = load i8, ptr %i.wt, align 1, !tbaa !527
  %i.wv = zext i8 %i.wu to i64
  %i.ww = add i64 %.sroa.9249.1, %i.wv            ; 3 uses
  %i.wx = load i64, ptr %i.r, align 8, !tbaa !168, !noalias !9109 ; 3 uses
  %.not.i.i145 = icmp ult i64 %i.ww, %i.wx
  br i1 %.not.i.i145, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEplERKm.exit, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.wy = mul i64 %i.wx, %.sroa.5247.1
  %i.wz = add i64 %i.wy, %i.ww                    ; 2 uses
  %i.xa = zext i64 %i.wz to i128
  %i.xb = load i64, ptr %i.wr, align 8, !tbaa !1232, !noalias !9109
  %i.xc = zext i64 %i.xb to i128
  %i.xd = mul nuw i128 %i.xc, %i.xa
  %i.xe = lshr i128 %i.xd, 64
  %i.xf = trunc nuw i128 %i.xe to i64             ; 2 uses
  %i.xg = mul i64 %i.wx, %i.xf
  %i.xh = sub i64 %i.wz, %i.xg
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEplERKm.exit

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEplERKm.exit: ; preds = %bb.ci, %bb.cj
  %.05.i146 = phi i64 [ %.sroa.5247.1, %bb.ci ], [ %i.xf, %bb.cj ]
  %.0.i147 = phi i64 [ %i.ww, %bb.ci ], [ %i.xh, %bb.cj ]
  %i.xi = add i64 %.sroa.76.7590, -1
  %i.xj = icmp eq i64 %.sroa.76.7590, 0           ; 2 uses
  %.neg.i.i148 = sext i1 %i.xj to i64
  %i.xk = add i64 %.sroa.30.7589, %.neg.i.i148    ; 3 uses
  %i.xl = load i64, ptr %i.wq, align 8, !tbaa !168
  %i.xm = select i1 %i.xj, i64 %i.xl, i64 0
  %i.xn = add i64 %i.xi, %i.xm                    ; 3 uses
  %i.xo = load ptr, ptr %i.f, align 8, !tbaa !1246
  %i.xp = getelementptr inbounds nuw [8 x i8], ptr %i.xo, i64 %.05.i146
  %i.xq = load ptr, ptr %i.xp, align 8, !tbaa !1051
  %i.xr = getelementptr inbounds nuw [32 x i8], ptr %i.xq, i64 %.0.i147 ; 2 uses
  %i.xs = load ptr, ptr %i.dp, align 8, !tbaa !1246
  %i.xt = getelementptr inbounds nuw [8 x i8], ptr %i.xs, i64 %i.xk
  %i.xu = load ptr, ptr %i.xt, align 8, !tbaa !1051
  %i.xv = getelementptr inbounds nuw [32 x i8], ptr %i.xu, i64 %i.xn ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.xr, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.xr, ptr noundef nonnull align 8 dereferenceable(32) %i.xv, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.xv, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %.not72 = icmp eq i64 %i.ws, 0
  br i1 %.not72, label %.loopexit501, label %bb.ci, !llvm.loop !9112

.loopexit501:                                     ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEplERKm.exit, %._crit_edge
  %.sroa.31.5 = phi i64 [ %.sroa.31.4, %._crit_edge ], [ %i.xk, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEplERKm.exit ] ; 2 uses
  %.sroa.78.5 = phi i64 [ %.sroa.78.4, %._crit_edge ], [ %i.xn, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEplERKm.exit ] ; 2 uses
  %.not73 = icmp eq i64 %i.wh, 0
  br i1 %.not73, label %.loopexit501..loopexit_crit_edge, label %bb.ck

.loopexit501..loopexit_crit_edge:                 ; preds = %bb.l, %.loopexit501
  %.sroa.78.5706 = phi i64 [ %.sroa.78.5, %.loopexit501 ], [ %i.dz, %bb.l ]
  %.sroa.31.5705 = phi i64 [ %.sroa.31.5, %.loopexit501 ], [ %i.dy, %bb.l ]
  %.pre.pre = load i64, ptr %i.r, align 8, !tbaa !168, !noalias !9113
  br label %.loopexit

bb.ck:                                            ; preds = %.loopexit501
  %i.xw = getelementptr inbounds nuw i8, ptr %i.eh, i64 %.1
  %i.xx = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.xy = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEmiERKm.exit152
  %.in595 = phi i64 [ %i.wh, %bb.ck ], [ %i.xz, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEmiERKm.exit152 ]
  %.sroa.78.6592 = phi i64 [ %.sroa.78.5, %bb.ck ], [ %i.zc, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEmiERKm.exit152 ] ; 2 uses
  %.sroa.31.6591 = phi i64 [ %.sroa.31.5, %bb.ck ], [ %i.zb, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEmiERKm.exit152 ] ; 2 uses
  %i.xz = add i64 %.in595, -1                     ; 3 uses
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xw, i64 %i.xz
  %i.yb = load i8, ptr %i.ya, align 1, !tbaa !527
  %i.yc = zext i8 %i.yb to i64
  %i.yd = sub i64 %.sroa.9.1, %i.yc               ; 3 uses
  %i.ye = load i64, ptr %i.xx, align 8, !tbaa !168, !noalias !9116 ; 3 uses
  %.not.i.i149 = icmp ult i64 %i.yd, %i.ye
  br i1 %.not.i.i149, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEmiERKm.exit152, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.yf = mul i64 %i.ye, %.sroa.5.1
  %i.yg = add i64 %i.yf, %i.yd                    ; 2 uses
  %i.yh = zext i64 %i.yg to i128
  %i.yi = load i64, ptr %i.xy, align 8, !tbaa !1232, !noalias !9116
  %i.yj = zext i64 %i.yi to i128
  %i.yk = mul nuw i128 %i.yj, %i.yh
  %i.yl = lshr i128 %i.yk, 64
  %i.ym = trunc nuw i128 %i.yl to i64             ; 2 uses
  %i.yn = mul i64 %i.ye, %i.ym
  %i.yo = sub i64 %i.yg, %i.yn
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEmiERKm.exit152

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEmiERKm.exit152: ; preds = %bb.cl, %bb.cm
  %.05.i150 = phi i64 [ %.sroa.5.1, %bb.cl ], [ %i.ym, %bb.cm ]
  %.0.i151 = phi i64 [ %i.yd, %bb.cl ], [ %i.yo, %bb.cm ]
  %i.yp = load ptr, ptr %i.dp, align 8, !tbaa !1246
  %i.yq = getelementptr inbounds nuw [8 x i8], ptr %i.yp, i64 %.05.i150
  %i.yr = load ptr, ptr %i.yq, align 8, !tbaa !1051
  %i.ys = getelementptr inbounds nuw [32 x i8], ptr %i.yr, i64 %.0.i151 ; 2 uses
  %i.yt = load ptr, ptr %i.f, align 8, !tbaa !1246
  %i.yu = getelementptr inbounds nuw [8 x i8], ptr %i.yt, i64 %.sroa.31.6591
  %i.yv = load ptr, ptr %i.yu, align 8, !tbaa !1051
  %i.yw = getelementptr inbounds nuw [32 x i8], ptr %i.yv, i64 %.sroa.78.6592 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.ys, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ys, ptr noundef nonnull align 8 dereferenceable(32) %i.yw, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.yw, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.yx = add i64 %.sroa.78.6592, 1               ; 2 uses
  %i.yy = load i64, ptr %i.r, align 8, !tbaa !168 ; 2 uses
  %i.yz = icmp eq i64 %i.yx, %i.yy                ; 2 uses
  %i.za = zext i1 %i.yz to i64
  %i.zb = add i64 %.sroa.31.6591, %i.za           ; 2 uses
  %i.zc = select i1 %i.yz, i64 0, i64 %i.yx       ; 2 uses
  %.not74 = icmp eq i64 %i.xz, 0
  br i1 %.not74, label %.loopexit, label %bb.cl, !llvm.loop !9119

.loopexit:                                        ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEmiERKm.exit152, %.loopexit501..loopexit_crit_edge
  %.pre = phi i64 [ %.pre.pre, %.loopexit501..loopexit_crit_edge ], [ %i.yy, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEmiERKm.exit152 ]
  %.sroa.31.7 = phi i64 [ %.sroa.31.5705, %.loopexit501..loopexit_crit_edge ], [ %i.zb, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEmiERKm.exit152 ]
  %.sroa.78.7 = phi i64 [ %.sroa.78.5706, %.loopexit501..loopexit_crit_edge ], [ %i.zc, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEmiERKm.exit152 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %.pre622 = add i64 %.sroa.78.7, -1
  br label %bb.cn

bb.cn:                                            ; preds = %.loopexit, %.critedge
  %.pre-phi = phi i64 [ %.pre622, %.loopexit ], [ %i.ak, %.critedge ] ; 3 uses
  %i.zd = phi i64 [ %.pre, %.loopexit ], [ %i.s, %.critedge ] ; 3 uses
  %.sroa.31.8 = phi i64 [ %.sroa.31.7, %.loopexit ], [ %i.w, %.critedge ] ; 2 uses
  %.not.i.i153 = icmp ult i64 %.pre-phi, %i.zd
  br i1 %.not.i.i153, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEmiERKm.exit156, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.ze = mul i64 %i.zd, %.sroa.31.8
  %i.zf = add i64 %i.ze, %.pre-phi                ; 2 uses
  %i.zg = zext i64 %i.zf to i128
  %i.zh = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.zi = load i64, ptr %i.zh, align 8, !tbaa !1232, !noalias !9113
  %i.zj = zext i64 %i.zi to i128
  %i.zk = mul nuw i128 %i.zj, %i.zg
  %i.zl = lshr i128 %i.zk, 64
  %i.zm = trunc nuw i128 %i.zl to i64             ; 2 uses
  %i.zn = mul i64 %i.zd, %i.zm
  %i.zo = sub i64 %i.zf, %i.zn
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEmiERKm.exit156

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEmiERKm.exit156: ; preds = %bb.cn, %bb.co
  %.05.i154 = phi i64 [ %.sroa.31.8, %bb.cn ], [ %i.zm, %bb.co ] ; 3 uses
  %.0.i155 = phi i64 [ %.pre-phi, %bb.cn ], [ %i.zo, %bb.co ] ; 3 uses
  %i.zp = zext i1 %i.do to i8
  %i.zq = load ptr, ptr %i.f, align 8, !tbaa !1246
  %i.zr = getelementptr inbounds nuw [8 x i8], ptr %i.zq, i64 %.05.i154
  %i.zs = load ptr, ptr %i.zr, align 8, !tbaa !1051
  %i.zt = getelementptr inbounds nuw [32 x i8], ptr %i.zs, i64 %.0.i155
  %i.zu = load ptr, ptr %1, align 8, !tbaa !1379
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zu, i64 8
  %i.zw = load i64, ptr %i.d, align 8, !tbaa !168
  %i.zx = load ptr, ptr %i.zv, align 8, !tbaa !1246
  %i.zy = getelementptr inbounds nuw [8 x i8], ptr %i.zx, i64 %i.zw
  %i.zz = load ptr, ptr %i.zy, align 8, !tbaa !1051
  %i.aaa = load i64, ptr %i.e, align 8, !tbaa !168
  %i.aab = getelementptr inbounds nuw [32 x i8], ptr %i.zz, i64 %i.aaa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aab, ptr noundef nonnull align 8 dereferenceable(32) %i.zt, i64 32, i1 false)
  %i.aac = load ptr, ptr %i.f, align 8, !tbaa !1246
  %i.aad = getelementptr inbounds nuw [8 x i8], ptr %i.aac, i64 %.05.i154
  %i.aae = load ptr, ptr %i.aad, align 8, !tbaa !1051
  %i.aaf = getelementptr inbounds nuw [32 x i8], ptr %i.aae, i64 %.0.i155 ; 4 uses
  store i64 %.sroa.0442.0.copyload, ptr %i.aaf, align 8
  %.sroa.25.0..sroa_idx464 = getelementptr inbounds nuw i8, ptr %i.aaf, i64 8
end_hunk_19
begin_hunk_20_@_ZNSt3_V28__rotateIN6duckdb16block_iterator_tIKNS1_18BlockIteratorStateILNS1_22BlockIteratorStateTypeE0EEENS1_7SortKeyILNS1_11SortKeyTypeE8EEEEEEET_SB_SB_SB_St26random_access_iterator_tag:bb.a
bb.j:                                             ; preds = %bb.i
  %i.cn = icmp eq i64 %.0221, 1
  br i1 %i.cn, label %bb.k, label %bb.p

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.co = load ptr, ptr %i.ck, align 8, !tbaa !1246
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %.sroa.19.0
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !1051
  %i.cr = getelementptr inbounds nuw [32 x i8], ptr %i.cq, i64 %.sroa.39.0
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.cr, i64 32, i1 false)
  %i.cs = add i64 %.sroa.39.0, 1                  ; 3 uses
  %i.ct = load i64, ptr %i.ae, align 8, !tbaa !168, !noalias !9214 ; 8 uses
  %.not.i.i17 = icmp ult i64 %i.cs, %i.ct
  br i1 %.not.i.i17, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEplERKm.exit20, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cu = mul i64 %i.ct, %.sroa.19.0
  %i.cv = add i64 %i.cu, %i.cs                    ; 2 uses
  %i.cw = zext i64 %i.cv to i128
  %i.cx = load i64, ptr %i.cj, align 8, !tbaa !1232, !noalias !9214
  %i.cy = zext i64 %i.cx to i128
  %i.cz = mul nuw i128 %i.cy, %i.cw
  %i.da = lshr i128 %i.cz, 64
  %i.db = trunc nuw i128 %i.da to i64             ; 2 uses
  %i.dc = mul i64 %i.ct, %i.db
  %i.dd = sub i64 %i.cv, %i.dc
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEplERKm.exit20

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEplERKm.exit20: ; preds = %bb.k, %bb.l
  %.05.i18 = phi i64 [ %.sroa.19.0, %bb.k ], [ %i.db, %bb.l ] ; 2 uses
  %.0.i19 = phi i64 [ %i.cs, %bb.k ], [ %i.dd, %bb.l ] ; 2 uses
  %i.de = add i64 %.0220, %.sroa.39.0             ; 6 uses
  %.not.i.i21 = icmp ult i64 %i.de, %i.ct
  br i1 %.not.i.i21, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEplERKm.exit24, label %bb.m

bb.m:                                             ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEplERKm.exit20
  %i.df = mul i64 %i.ct, %.sroa.19.0
  %i.dg = add i64 %i.df, %i.de                    ; 2 uses
  %i.dh = zext i64 %i.dg to i128
  %i.di = load i64, ptr %i.cj, align 8, !tbaa !1232, !noalias !9217
  %i.dj = zext i64 %i.di to i128
  %i.dk = mul nuw i128 %i.dj, %i.dh
  %i.dl = lshr i128 %i.dk, 64
  %i.dm = trunc nuw i128 %i.dl to i64             ; 2 uses
  %i.dn = mul i64 %i.ct, %i.dm
  %i.do = sub i64 %i.dg, %i.dn
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEplERKm.exit24

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEplERKm.exit24: ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEplERKm.exit20, %bb.m
  %.05.i22 = phi i64 [ %.sroa.19.0, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEplERKm.exit20 ], [ %i.dm, %bb.m ]
  %.0.i23 = phi i64 [ %i.de, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEplERKm.exit20 ], [ %i.do, %bb.m ]
  %reass.add226 = sub i64 %.05.i22, %.05.i18
  %reass.mul227 = mul i64 %reass.add226, %i.ct
  %i.dp = sub i64 %.0.i23, %.0.i19
  %i.dq = add i64 %i.dp, %reass.mul227            ; 2 uses
  %.not4.i.i.i.i.i = icmp eq i64 %i.dq, 0
  br i1 %.not4.i.i.i.i.i, label %_ZSt4moveIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE8EEEEES9_ET0_T_SB_SA_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEplERKm.exit24, %.lr.ph.i.i.i.i.i
  %.sroa.38.0.i.i.i.i = phi i64 [ %i.ec, %.lr.ph.i.i.i.i.i ], [ %.05.i18, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEplERKm.exit24 ] ; 2 uses
  %.sroa.8.0.i.i.i.i = phi i64 [ %i.ei, %.lr.ph.i.i.i.i.i ], [ %.sroa.39.0, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEplERKm.exit24 ] ; 2 uses
  %.sroa.3.0.i.i.i.i = phi i64 [ %i.eh, %.lr.ph.i.i.i.i.i ], [ %.sroa.19.0, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEplERKm.exit24 ] ; 2 uses
  %.sroa.811.0.i.i.i.i = phi i64 [ %i.ed, %.lr.ph.i.i.i.i.i ], [ %.0.i19, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEplERKm.exit24 ] ; 2 uses
  %.05.i.i.i.i.i = phi i64 [ %i.ej, %.lr.ph.i.i.i.i.i ], [ %i.dq, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEplERKm.exit24 ]
  %i.dr = load ptr, ptr %i.ck, align 8, !tbaa !1246, !noalias !9220 ; 2 uses
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %.sroa.38.0.i.i.i.i
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !1051, !noalias !9220
  %i.du = getelementptr inbounds nuw [32 x i8], ptr %i.dt, i64 %.sroa.811.0.i.i.i.i
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %.sroa.3.0.i.i.i.i
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !1051, !noalias !9220
  %i.dx = getelementptr inbounds nuw [32 x i8], ptr %i.dw, i64 %.sroa.8.0.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dx, ptr noundef nonnull align 8 dereferenceable(32) %i.du, i64 32, i1 false), !noalias !9220
  %i.dy = add i64 %.sroa.811.0.i.i.i.i, 1         ; 2 uses
  %i.dz = load i64, ptr %i.ae, align 8, !tbaa !168, !noalias !9220 ; 3 uses
  %i.ea = icmp eq i64 %i.dy, %i.dz                ; 2 uses
  %i.eb = zext i1 %i.ea to i64
  %i.ec = add i64 %.sroa.38.0.i.i.i.i, %i.eb
  %i.ed = select i1 %i.ea, i64 0, i64 %i.dy
  %i.ee = add i64 %.sroa.8.0.i.i.i.i, 1           ; 2 uses
  %i.ef = icmp eq i64 %i.ee, %i.dz                ; 2 uses
  %i.eg = zext i1 %i.ef to i64
  %i.eh = add i64 %.sroa.3.0.i.i.i.i, %i.eg
  %i.ei = select i1 %i.ef, i64 0, i64 %i.ee
  %i.ej = add i64 %.05.i.i.i.i.i, -1              ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.ej, 0
  br i1 %.not.i.i.i.i.i, label %_ZSt4moveIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE8EEEEES9_ET0_T_SB_SA_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !9231

_ZSt4moveIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE8EEEEES9_ET0_T_SB_SA_.exit: ; preds = %.lr.ph.i.i.i.i.i, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEplERKm.exit24
  %i.ek = phi i64 [ %i.ct, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEplERKm.exit24 ], [ %i.dz, %.lr.ph.i.i.i.i.i ] ; 6 uses
  %.not.i.i25 = icmp ult i64 %i.de, %i.ek
  br i1 %.not.i.i25, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEplERKm.exit28, label %bb.n

bb.n:                                             ; preds = %_ZSt4moveIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE8EEEEES9_ET0_T_SB_SA_.exit
  %i.el = mul i64 %i.ek, %.sroa.19.0
  %i.em = add i64 %i.el, %i.de                    ; 2 uses
  %i.en = zext i64 %i.em to i128
  %i.eo = load i64, ptr %i.cj, align 8, !tbaa !1232, !noalias !9232
  %i.ep = zext i64 %i.eo to i128
  %i.eq = mul nuw i128 %i.ep, %i.en
  %i.er = lshr i128 %i.eq, 64
  %i.es = trunc nuw i128 %i.er to i64             ; 2 uses
  %i.et = mul i64 %i.ek, %i.es
  %i.eu = sub i64 %i.em, %i.et
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEplERKm.exit28

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEplERKm.exit28: ; preds = %_ZSt4moveIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE8EEEEES9_ET0_T_SB_SA_.exit, %bb.n
  %.05.i26 = phi i64 [ %.sroa.19.0, %_ZSt4moveIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE8EEEEES9_ET0_T_SB_SA_.exit ], [ %i.es, %bb.n ] ; 2 uses
  %.0.i27 = phi i64 [ %i.de, %_ZSt4moveIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE8EEEEES9_ET0_T_SB_SA_.exit ], [ %i.eu, %bb.n ]
  %i.ev = add i64 %.0.i27, -1                     ; 3 uses
  %.not.i.i29 = icmp ult i64 %i.ev, %i.ek
  br i1 %.not.i.i29, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEmiERKm.exit, label %bb.o

bb.o:                                             ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEplERKm.exit28
  %i.ew = mul i64 %.05.i26, %i.ek
  %i.ex = add i64 %i.ev, %i.ew                    ; 2 uses
  %i.ey = zext i64 %i.ex to i128
  %i.ez = load i64, ptr %i.cj, align 8, !tbaa !1232, !noalias !9235
  %i.fa = zext i64 %i.ez to i128
  %i.fb = mul nuw i128 %i.fa, %i.ey
  %i.fc = lshr i128 %i.fb, 64
  %i.fd = trunc nuw i128 %i.fc to i64             ; 2 uses
  %i.fe = mul i64 %i.ek, %i.fd
  %i.ff = sub i64 %i.ex, %i.fe
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEmiERKm.exit

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEmiERKm.exit: ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEplERKm.exit28, %bb.o
  %.05.i30 = phi i64 [ %.05.i26, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEplERKm.exit28 ], [ %i.fd, %bb.o ]
  %.0.i31 = phi i64 [ %i.ev, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEplERKm.exit28 ], [ %i.ff, %bb.o ]
  %i.fg = load ptr, ptr %i.ck, align 8, !tbaa !1246
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %.05.i30
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !1051
  %i.fj = getelementptr inbounds nuw [32 x i8], ptr %i.fi, i64 %.0.i31
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.fj, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %.critedge

bb.p:                                             ; preds = %bb.j
  %i.fk = add i64 %.0221, %.sroa.39.0             ; 3 uses
  %i.fl = load i64, ptr %i.ae, align 8, !tbaa !168, !noalias !9238 ; 3 uses
  %.not.i.i32 = icmp ult i64 %i.fk, %i.fl
  br i1 %.not.i.i32, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEplERKm.exit35.preheader, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.fm = mul i64 %i.fl, %.sroa.19.0
  %i.fn = add i64 %i.fm, %i.fk                    ; 2 uses
  %i.fo = zext i64 %i.fn to i128
  %i.fp = load i64, ptr %i.cj, align 8, !tbaa !1232, !noalias !9238
  %i.fq = zext i64 %i.fp to i128
  %i.fr = mul nuw i128 %i.fq, %i.fo
  %i.fs = lshr i128 %i.fr, 64
  %i.ft = trunc nuw i128 %i.fs to i64             ; 2 uses
  %i.fu = mul i64 %i.fl, %i.ft
  %i.fv = sub i64 %i.fn, %i.fu
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEplERKm.exit35.preheader

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEplERKm.exit35.preheader: ; preds = %bb.p, %bb.q
  %.sroa.6109.0241.ph = phi i64 [ %i.ft, %bb.q ], [ %.sroa.19.0, %bb.p ]
  %.sroa.10.0240.ph = phi i64 [ %i.fv, %bb.q ], [ %i.fk, %bb.p ]
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEplERKm.exit35

bb.r:                                             ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEplERKm.exit35
  %i.fw = urem i64 %.0220, %.0221                 ; 2 uses
  %.not11 = icmp eq i64 %i.fw, 0
  br i1 %.not11, label %.critedge, label %bb.s

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEplERKm.exit35: ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEplERKm.exit35.preheader, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEplERKm.exit35
  %.07244 = phi i64 [ %i.gp, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEplERKm.exit35 ], [ 0, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEplERKm.exit35.preheader ]
  %.sroa.39.1243 = phi i64 [ %i.gj, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEplERKm.exit35 ], [ %.sroa.39.0, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEplERKm.exit35.preheader ] ; 2 uses
  %.sroa.19.1242 = phi i64 [ %i.gi, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEplERKm.exit35 ], [ %.sroa.19.0, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEplERKm.exit35.preheader ] ; 2 uses
  %.sroa.6109.0241 = phi i64 [ %i.gn, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEplERKm.exit35 ], [ %.sroa.6109.0241.ph, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEplERKm.exit35.preheader ] ; 2 uses
  %.sroa.10.0240 = phi i64 [ %i.go, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEplERKm.exit35 ], [ %.sroa.10.0240.ph, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEplERKm.exit35.preheader ] ; 2 uses
  %i.fx = load ptr, ptr %i.ck, align 8, !tbaa !1246 ; 2 uses
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %.sroa.19.1242
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !1051
  %i.ga = getelementptr inbounds nuw [32 x i8], ptr %i.fz, i64 %.sroa.39.1243 ; 2 uses
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %.sroa.6109.0241
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !1051
  %i.gd = getelementptr inbounds nuw [32 x i8], ptr %i.gc, i64 %.sroa.10.0240 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.ga, i64 32, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ga, ptr noundef nonnull align 8 dereferenceable(32) %i.gd, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.gd, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.ge = add i64 %.sroa.39.1243, 1               ; 2 uses
  %i.gf = load i64, ptr %i.ae, align 8, !tbaa !168 ; 2 uses
  %i.gg = icmp eq i64 %i.ge, %i.gf                ; 2 uses
  %i.gh = zext i1 %i.gg to i64
  %i.gi = add i64 %.sroa.19.1242, %i.gh           ; 2 uses
  %i.gj = select i1 %i.gg, i64 0, i64 %i.ge       ; 2 uses
  %i.gk = add i64 %.sroa.10.0240, 1               ; 2 uses
  %i.gl = icmp eq i64 %i.gk, %i.gf                ; 2 uses
  %i.gm = zext i1 %i.gl to i64
  %i.gn = add i64 %.sroa.6109.0241, %i.gm
  %i.go = select i1 %i.gl, i64 0, i64 %i.gk
  %i.gp = add nuw i64 %.07244, 1                  ; 2 uses
  %exitcond255.not = icmp eq i64 %i.gp, %i.cl
  br i1 %exitcond255.not, label %bb.r, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEplERKm.exit35, !llvm.loop !9241

bb.s:                                             ; preds = %bb.r
  %i.gq = sub i64 %.0221, %i.fw
  br label %.backedge

bb.t:                                             ; preds = %bb.i
  %i.gr = icmp eq i64 %i.cl, 1
  br i1 %i.gr, label %bb.u, label %bb.aa

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  %i.gs = add i64 %.0220, %.sroa.39.0             ; 7 uses
  %i.gt = load i64, ptr %i.ae, align 8, !tbaa !168, !noalias !9242 ; 14 uses
  %.not.i.i36 = icmp ult i64 %i.gs, %i.gt         ; 3 uses
  br i1 %.not.i.i36, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEplERKm.exit39, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.gu = mul i64 %i.gt, %.sroa.19.0
  %i.gv = add i64 %i.gu, %i.gs                    ; 2 uses
  %i.gw = zext i64 %i.gv to i128
  %i.gx = load i64, ptr %i.cj, align 8, !tbaa !1232, !noalias !9242
  %i.gy = zext i64 %i.gx to i128
  %i.gz = mul nuw i128 %i.gy, %i.gw
  %i.ha = lshr i128 %i.gz, 64
  %i.hb = trunc nuw i128 %i.ha to i64             ; 2 uses
  %i.hc = mul i64 %i.gt, %i.hb
  %i.hd = sub i64 %i.gv, %i.hc
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEplERKm.exit39

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEplERKm.exit39: ; preds = %bb.u, %bb.v
  %.05.i37 = phi i64 [ %.sroa.19.0, %bb.u ], [ %i.hb, %bb.v ] ; 2 uses
  %.0.i38 = phi i64 [ %i.gs, %bb.u ], [ %i.hd, %bb.v ]
  %i.he = add i64 %.0.i38, -1                     ; 3 uses
  %.not.i.i40 = icmp ult i64 %i.he, %i.gt
  br i1 %.not.i.i40, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEmiERKm.exit43, label %bb.w

bb.w:                                             ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEplERKm.exit39
  %i.hf = mul i64 %.05.i37, %i.gt
  %i.hg = add i64 %i.he, %i.hf                    ; 2 uses
  %i.hh = zext i64 %i.hg to i128
  %i.hi = load i64, ptr %i.cj, align 8, !tbaa !1232, !noalias !9245
  %i.hj = zext i64 %i.hi to i128
  %i.hk = mul nuw i128 %i.hj, %i.hh
  %i.hl = lshr i128 %i.hk, 64
  %i.hm = trunc nuw i128 %i.hl to i64             ; 2 uses
  %i.hn = mul i64 %i.gt, %i.hm
  %i.ho = sub i64 %i.hg, %i.hn
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEmiERKm.exit43

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEmiERKm.exit43: ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEplERKm.exit39, %bb.w
  %.05.i41 = phi i64 [ %.05.i37, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEplERKm.exit39 ], [ %i.hm, %bb.w ]
  %.0.i42 = phi i64 [ %i.he, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEplERKm.exit39 ], [ %i.ho, %bb.w ]
  %i.hp = load ptr, ptr %i.ck, align 8, !tbaa !1246 ; 2 uses
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.hp, i64 %.05.i41
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !1051
  %i.hs = getelementptr inbounds nuw [32 x i8], ptr %i.hr, i64 %.0.i42
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %i.hs, i64 32, i1 false)
  br i1 %.not.i.i36, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEplERKm.exit47, label %bb.x

bb.x:                                             ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEmiERKm.exit43
  %i.ht = mul i64 %i.gt, %.sroa.19.0
  %i.hu = add i64 %i.ht, %i.gs                    ; 2 uses
  %i.hv = zext i64 %i.hu to i128
  %i.hw = load i64, ptr %i.cj, align 8, !tbaa !1232, !noalias !9248
  %i.hx = zext i64 %i.hw to i128
  %i.hy = mul nuw i128 %i.hx, %i.hv
  %i.hz = lshr i128 %i.hy, 64
  %i.ia = trunc nuw i128 %i.hz to i64             ; 2 uses
  %i.ib = mul i64 %i.gt, %i.ia
  %i.ic = sub i64 %i.hu, %i.ib
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEplERKm.exit47

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEplERKm.exit47: ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEmiERKm.exit43, %bb.x
  %.05.i45 = phi i64 [ %.sroa.19.0, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEmiERKm.exit43 ], [ %i.ia, %bb.x ] ; 2 uses
  %.0.i46 = phi i64 [ %i.gs, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEmiERKm.exit43 ], [ %i.ic, %bb.x ]
  %i.id = add i64 %.0.i46, -1                     ; 3 uses
  %.not.i.i48 = icmp ult i64 %i.id, %i.gt
  br i1 %.not.i.i48, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEmiERKm.exit51, label %bb.y

bb.y:                                             ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEplERKm.exit47
  %i.ie = mul i64 %.05.i45, %i.gt
  %i.if = add i64 %i.id, %i.ie                    ; 2 uses
  %i.ig = zext i64 %i.if to i128
  %i.ih = load i64, ptr %i.cj, align 8, !tbaa !1232, !noalias !9251
  %i.ii = zext i64 %i.ih to i128
  %i.ij = mul nuw i128 %i.ii, %i.ig
  %i.ik = lshr i128 %i.ij, 64
  %i.il = trunc nuw i128 %i.ik to i64             ; 2 uses
  %i.im = mul i64 %i.gt, %i.il
  %i.in = sub i64 %i.if, %i.im
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEmiERKm.exit51

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEmiERKm.exit51: ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEplERKm.exit47, %bb.y
  %.05.i49 = phi i64 [ %.05.i45, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEplERKm.exit47 ], [ %i.il, %bb.y ] ; 2 uses
  %.0.i50 = phi i64 [ %i.id, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEplERKm.exit47 ], [ %i.in, %bb.y ] ; 2 uses
  br i1 %.not.i.i36, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEplERKm.exit55, label %bb.z

bb.z:                                             ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEmiERKm.exit51
  %i.io = mul i64 %i.gt, %.sroa.19.0
  %i.ip = add i64 %i.io, %i.gs                    ; 2 uses
  %i.iq = zext i64 %i.ip to i128
  %i.ir = load i64, ptr %i.cj, align 8, !tbaa !1232, !noalias !9254
  %i.is = zext i64 %i.ir to i128
  %i.it = mul nuw i128 %i.is, %i.iq
  %i.iu = lshr i128 %i.it, 64
  %i.iv = trunc nuw i128 %i.iu to i64             ; 2 uses
  %i.iw = mul i64 %i.gt, %i.iv
  %i.ix = sub i64 %i.ip, %i.iw
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEplERKm.exit55

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEplERKm.exit55: ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEmiERKm.exit51, %bb.z
  %.05.i53 = phi i64 [ %.sroa.19.0, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEmiERKm.exit51 ], [ %i.iv, %bb.z ]
  %.0.i54 = phi i64 [ %i.gs, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEmiERKm.exit51 ], [ %i.ix, %bb.z ]
  %reass.add = sub i64 %.05.i49, %.sroa.19.0
  %reass.mul = mul i64 %reass.add, %i.gt
  %i.iy = sub i64 %.0.i50, %.sroa.39.0
  %i.iz = add i64 %i.iy, %reass.mul               ; 2 uses
  %.not5.i.i.i.i.i = icmp eq i64 %i.iz, 0
  br i1 %.not5.i.i.i.i.i, label %_ZSt13move_backwardIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE8EEEEES9_ET0_T_SB_SA_.exit, label %.lr.ph.i.i.i.i.i57

.lr.ph.i.i.i.i.i57:                               ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEplERKm.exit55, %.lr.ph.i.i.i.i.i57
  %.sroa.36.0.i.i.i.i = phi i64 [ %i.jc, %.lr.ph.i.i.i.i.i57 ], [ %.05.i49, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEplERKm.exit55 ]
  %.sroa.7.0.i.i.i.i = phi i64 [ %i.jo, %.lr.ph.i.i.i.i.i57 ], [ %.0.i54, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEplERKm.exit55 ] ; 2 uses
  %.sroa.3.0.i.i.i.i58 = phi i64 [ %i.jm, %.lr.ph.i.i.i.i.i57 ], [ %.05.i53, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEplERKm.exit55 ]
  %.sroa.78.0.i.i.i.i = phi i64 [ %i.jf, %.lr.ph.i.i.i.i.i57 ], [ %.0.i50, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEplERKm.exit55 ] ; 2 uses
  %.06.i.i.i.i.i = phi i64 [ %i.js, %.lr.ph.i.i.i.i.i57 ], [ %i.iz, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEplERKm.exit55 ]
  %i.ja = add i64 %.sroa.78.0.i.i.i.i, -1
  %i.jb = icmp eq i64 %.sroa.78.0.i.i.i.i, 0      ; 2 uses
  %.neg.i.i.i.i.i.i.i = sext i1 %i.jb to i64
  %i.jc = add i64 %.sroa.36.0.i.i.i.i, %.neg.i.i.i.i.i.i.i ; 2 uses
  %i.jd = load i64, ptr %i.ae, align 8, !tbaa !168, !noalias !9257 ; 2 uses
  %i.je = select i1 %i.jb, i64 %i.jd, i64 0
  %i.jf = add i64 %i.ja, %i.je                    ; 2 uses
  %i.jg = load ptr, ptr %i.ck, align 8, !tbaa !1246, !noalias !9257 ; 2 uses
  %i.jh = getelementptr inbounds nuw [8 x i8], ptr %i.jg, i64 %i.jc
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !1051, !noalias !9257
  %i.jj = getelementptr inbounds nuw [32 x i8], ptr %i.ji, i64 %i.jf
  %i.jk = add i64 %.sroa.7.0.i.i.i.i, -1
  %i.jl = icmp eq i64 %.sroa.7.0.i.i.i.i, 0       ; 2 uses
  %.neg.i.i2.i.i.i.i.i = sext i1 %i.jl to i64
  %i.jm = add i64 %.sroa.3.0.i.i.i.i58, %.neg.i.i2.i.i.i.i.i ; 2 uses
  %i.jn = select i1 %i.jl, i64 %i.jd, i64 0
  %i.jo = add i64 %i.jk, %i.jn                    ; 2 uses
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %i.jg, i64 %i.jm
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !1051, !noalias !9257
  %i.jr = getelementptr inbounds nuw [32 x i8], ptr %i.jq, i64 %i.jo
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.jr, ptr noundef nonnull align 8 dereferenceable(32) %i.jj, i64 32, i1 false), !noalias !9257
  %i.js = add i64 %.06.i.i.i.i.i, -1              ; 2 uses
  %.not.i.i.i.i.i59 = icmp eq i64 %i.js, 0
  br i1 %.not.i.i.i.i.i59, label %_ZSt13move_backwardIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE8EEEEES9_ET0_T_SB_SA_.exit.loopexit, label %.lr.ph.i.i.i.i.i57, !llvm.loop !9268

_ZSt13move_backwardIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE8EEEEES9_ET0_T_SB_SA_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i57
  %.pre = load ptr, ptr %i.ck, align 8, !tbaa !1246
  br label %_ZSt13move_backwardIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE8EEEEES9_ET0_T_SB_SA_.exit

_ZSt13move_backwardIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE8EEEEES9_ET0_T_SB_SA_.exit: ; preds = %_ZSt13move_backwardIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE8EEEEES9_ET0_T_SB_SA_.exit.loopexit, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEplERKm.exit55
  %i.jt = phi ptr [ %.pre, %_ZSt13move_backwardIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE8EEEEES9_ET0_T_SB_SA_.exit.loopexit ], [ %i.hp, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEplERKm.exit55 ]
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %i.jt, i64 %.sroa.19.0
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !1051
  %i.jw = getelementptr inbounds nuw [32 x i8], ptr %i.jv, i64 %.sroa.39.0
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.jw, ptr noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %.critedge

bb.aa:                                            ; preds = %bb.t
  %i.jx = add i64 %.0220, %.sroa.39.0             ; 3 uses
  %i.jy = load i64, ptr %i.ae, align 8, !tbaa !168, !noalias !9269 ; 6 uses
  %.not.i.i60 = icmp ult i64 %i.jx, %i.jy
  br i1 %.not.i.i60, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEplERKm.exit63, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.jz = mul i64 %i.jy, %.sroa.19.0
  %i.ka = add i64 %i.jz, %i.jx                    ; 2 uses
  %i.kb = zext i64 %i.ka to i128
  %i.kc = load i64, ptr %i.cj, align 8, !tbaa !1232, !noalias !9269
  %i.kd = zext i64 %i.kc to i128
  %i.ke = mul nuw i128 %i.kd, %i.kb
  %i.kf = lshr i128 %i.ke, 64
  %i.kg = trunc nuw i128 %i.kf to i64             ; 2 uses
  %i.kh = mul i64 %i.jy, %i.kg
  %i.ki = sub i64 %i.ka, %i.kh
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEplERKm.exit63

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEplERKm.exit63: ; preds = %bb.aa, %bb.ab
  %.05.i61 = phi i64 [ %.sroa.19.0, %bb.aa ], [ %i.kg, %bb.ab ] ; 3 uses
  %.0.i62 = phi i64 [ %i.jx, %bb.aa ], [ %i.ki, %bb.ab ] ; 2 uses
  %i.kj = sub i64 %.0.i62, %i.cl                  ; 3 uses
  %.not.i.i64 = icmp ult i64 %i.kj, %i.jy
  br i1 %.not.i.i64, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEmiERKm.exit67, label %bb.ac

bb.ac:                                            ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEplERKm.exit63
  %i.kk = mul i64 %.05.i61, %i.jy
  %i.kl = add i64 %i.kj, %i.kk                    ; 2 uses
  %i.km = zext i64 %i.kl to i128
  %i.kn = load i64, ptr %i.cj, align 8, !tbaa !1232, !noalias !9272
  %i.ko = zext i64 %i.kn to i128
  %i.kp = mul nuw i128 %i.ko, %i.km
  %i.kq = lshr i128 %i.kp, 64
  %i.kr = trunc nuw i128 %i.kq to i64             ; 2 uses
  %i.ks = mul i64 %i.jy, %i.kr
  %i.kt = sub i64 %i.kl, %i.ks
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEmiERKm.exit67

end_hunk_20
begin_hunk_21_@_ZN14duckdb_pdqsort14pdqsort_detail26partition_right_branchlessIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE9EEEEEZN15duckdb_ska_sort6detail15StdSortFallbackISB_KNS2_13SkaExtractKeyISA_EEEEvT_SI_RT0_EUlRKSA_SM_E_EESt4pairISI_bESI_SI_SJ_:bb.a
  %i.uz = icmp ult i64 %i.ux, %.sroa.25.0.copyload
  br label %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE9EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit218

bb.bs:                                            ; preds = %bb.br
  %i.va = getelementptr inbounds nuw i8, ptr %i.ut, i64 16
  %i.vb = load ptr, ptr %i.va, align 8, !tbaa !527
  %i.vc = call noundef i64 @llvm.umin.i64(i64 %i.ux, i64 %.sroa.25.0.copyload)
  %i.vd = call i32 @memcmp(ptr noundef %i.vb, ptr noundef %.sroa.46.0.copyload, i64 noundef %i.vc) #33 ; 2 uses
  %i.ve = icmp slt i32 %i.vd, 0
  br i1 %i.ve, label %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE9EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit218, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.vf = icmp eq i32 %i.vd, 0
  %i.vg = icmp ult i64 %i.ux, %.sroa.25.0.copyload
  %spec.select.i.i216 = and i1 %i.vg, %i.vf
  br label %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE9EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit218

_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE9EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit218: ; preds = %bb.bq, %._crit_edge.i.i217, %bb.bs, %bb.bt
  %.0.i.i212 = phi i1 [ %i.uv, %bb.bq ], [ %i.uz, %._crit_edge.i.i217 ], [ true, %bb.bs ], [ %spec.select.i.i216, %bb.bt ]
  %i.vh = zext i1 %.0.i.i212 to i64
  %i.vi = add i64 %i.uh, %i.vh                    ; 2 uses
  %i.vj = or disjoint i8 %.064660, 7
  %i.vk = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.vi
  store i8 %i.vj, ptr %i.vk, align 1, !tbaa !527
  %i.vl = add i64 %i.up, -1
  %i.vm = icmp eq i64 %i.up, 0                    ; 2 uses
  %.neg.i.i219 = sext i1 %i.vm to i64
  %i.vn = add i64 %i.um, %.neg.i.i219             ; 2 uses
  %i.vo = load i64, ptr %i.em, align 8, !tbaa !168
  %i.vp = select i1 %i.vm, i64 %i.vo, i64 0
  %i.vq = add i64 %i.vl, %i.vp                    ; 3 uses
  %i.vr = load ptr, ptr %i.dp, align 8, !tbaa !1246
  %i.vs = getelementptr inbounds nuw [8 x i8], ptr %i.vr, i64 %i.vn
  %i.vt = load ptr, ptr %i.vs, align 8, !tbaa !1051
  %i.vu = getelementptr inbounds nuw [32 x i8], ptr %i.vt, i64 %i.vq ; 3 uses
  %i.vv = load i64, ptr %i.vu, align 8, !tbaa !168 ; 2 uses
  %.not.i.i220 = icmp eq i64 %i.vv, %.sroa.0543.0.copyload
  br i1 %.not.i.i220, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE9EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit218
  %i.vw = icmp ult i64 %i.vv, %.sroa.0543.0.copyload
  br label %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE9EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit227

bb.bv:                                            ; preds = %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE9EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit218
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vu, i64 8
  %i.vy = load i64, ptr %i.vx, align 8, !tbaa !1398 ; 4 uses
  %i.vz = icmp ult i64 %i.vy, 9
  %or.cond.i.i224 = select i1 %i.vz, i1 true, i1 %i.u
  br i1 %or.cond.i.i224, label %._crit_edge.i.i226, label %bb.bw

._crit_edge.i.i226:                               ; preds = %bb.bv
  %i.wa = icmp ult i64 %i.vy, %.sroa.25.0.copyload
  br label %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE9EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit227

bb.bw:                                            ; preds = %bb.bv
  %i.wb = getelementptr inbounds nuw i8, ptr %i.vu, i64 16
  %i.wc = load ptr, ptr %i.wb, align 8, !tbaa !527
  %i.wd = call noundef i64 @llvm.umin.i64(i64 %i.vy, i64 %.sroa.25.0.copyload)
  %i.we = call i32 @memcmp(ptr noundef %i.wc, ptr noundef %.sroa.46.0.copyload, i64 noundef %i.wd) #33 ; 2 uses
  %i.wf = icmp slt i32 %i.we, 0
  br i1 %i.wf, label %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE9EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit227, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.wg = icmp eq i32 %i.we, 0
  %i.wh = icmp ult i64 %i.vy, %.sroa.25.0.copyload
  %spec.select.i.i225 = and i1 %i.wh, %i.wg
  br label %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE9EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit227

_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE9EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit227: ; preds = %bb.bu, %._crit_edge.i.i226, %bb.bw, %bb.bx
  %.0.i.i221 = phi i1 [ %i.vw, %bb.bu ], [ %i.wa, %._crit_edge.i.i226 ], [ true, %bb.bw ], [ %spec.select.i.i225, %bb.bx ]
  %i.wi = zext i1 %.0.i.i221 to i64
  %i.wj = add i64 %i.vi, %i.wi                    ; 2 uses
  %i.wk = add nuw nsw i8 %.064660, 8              ; 2 uses
  %i.wl = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.wj
  store i8 %i.wk, ptr %i.wl, align 1, !tbaa !527
  %i.wm = add i64 %i.vq, -1
  %i.wn = icmp eq i64 %i.vq, 0                    ; 2 uses
  %.neg.i.i228 = sext i1 %i.wn to i64
  %i.wo = add i64 %i.vn, %.neg.i.i228             ; 3 uses
  %i.wp = load i64, ptr %i.em, align 8, !tbaa !168
  %i.wq = select i1 %i.wn, i64 %i.wp, i64 0
  %i.wr = add i64 %i.wm, %i.wq                    ; 3 uses
  %i.ws = load ptr, ptr %i.dp, align 8, !tbaa !1246
  %i.wt = getelementptr inbounds nuw [8 x i8], ptr %i.ws, i64 %i.wo
  %i.wu = load ptr, ptr %i.wt, align 8, !tbaa !1051
  %i.wv = getelementptr inbounds nuw [32 x i8], ptr %i.wu, i64 %i.wr ; 3 uses
  %i.ww = load i64, ptr %i.wv, align 8, !tbaa !168 ; 2 uses
  %.not.i.i229 = icmp eq i64 %i.ww, %.sroa.0543.0.copyload
  br i1 %.not.i.i229, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE9EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit227
  %i.wx = icmp ult i64 %i.ww, %.sroa.0543.0.copyload
  br label %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE9EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit236

bb.bz:                                            ; preds = %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE9EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit227
  %i.wy = getelementptr inbounds nuw i8, ptr %i.wv, i64 8
  %i.wz = load i64, ptr %i.wy, align 8, !tbaa !1398 ; 4 uses
  %i.xa = icmp ult i64 %i.wz, 9
  %or.cond.i.i233 = select i1 %i.xa, i1 true, i1 %i.u
  br i1 %or.cond.i.i233, label %._crit_edge.i.i235, label %bb.ca

._crit_edge.i.i235:                               ; preds = %bb.bz
  %i.xb = icmp ult i64 %i.wz, %.sroa.25.0.copyload
  br label %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE9EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit236

bb.ca:                                            ; preds = %bb.bz
  %i.xc = getelementptr inbounds nuw i8, ptr %i.wv, i64 16
  %i.xd = load ptr, ptr %i.xc, align 8, !tbaa !527
  %i.xe = call noundef i64 @llvm.umin.i64(i64 %i.wz, i64 %.sroa.25.0.copyload)
  %i.xf = call i32 @memcmp(ptr noundef %i.xd, ptr noundef %.sroa.46.0.copyload, i64 noundef %i.xe) #33 ; 2 uses
  %i.xg = icmp slt i32 %i.xf, 0
  br i1 %i.xg, label %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE9EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit236, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.xh = icmp eq i32 %i.xf, 0
  %i.xi = icmp ult i64 %i.wz, %.sroa.25.0.copyload
  %spec.select.i.i234 = and i1 %i.xi, %i.xh
  br label %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE9EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit236

_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE9EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit236: ; preds = %bb.by, %._crit_edge.i.i235, %bb.ca, %bb.cb
  %.0.i.i230 = phi i1 [ %i.wx, %bb.by ], [ %i.xb, %._crit_edge.i.i235 ], [ true, %bb.ca ], [ %spec.select.i.i234, %bb.cb ]
  %i.xj = zext i1 %.0.i.i230 to i64
  %i.xk = add i64 %i.wj, %i.xj                    ; 2 uses
  %i.xl = icmp samesign ult i8 %.064660, 56
  br i1 %i.xl, label %.preheader, label %.loopexit608, !llvm.loop !10122

.lr.ph653:                                        ; preds = %.lr.ph653.preheader, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE9EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit245
  %.0652 = phi i8 [ %i.xm, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE9EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit245 ], [ 0, %.lr.ph653.preheader ]
  %.sroa.76.5651 = phi i64 [ %i.xt, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE9EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit245 ], [ %.sroa.76.3668, %.lr.ph653.preheader ] ; 2 uses
  %.sroa.30.5650 = phi i64 [ %i.xq, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE9EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit245 ], [ %.sroa.30.3667, %.lr.ph653.preheader ]
  %.2649 = phi i64 [ %i.ym, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE9EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit245 ], [ %.0591666, %.lr.ph653.preheader ] ; 2 uses
  %i.xm = add nuw i8 %.0652, 1                    ; 3 uses
  %i.xn = getelementptr inbounds nuw i8, ptr %i.eh, i64 %.2649
  store i8 %i.xm, ptr %i.xn, align 1, !tbaa !527
  %i.xo = add i64 %.sroa.76.5651, -1
  %i.xp = icmp eq i64 %.sroa.76.5651, 0           ; 2 uses
  %.neg.i.i237 = sext i1 %i.xp to i64
  %i.xq = add i64 %.sroa.30.5650, %.neg.i.i237    ; 3 uses
  %i.xr = load i64, ptr %i.em, align 8, !tbaa !168
  %i.xs = select i1 %i.xp, i64 %i.xr, i64 0
  %i.xt = add i64 %i.xo, %i.xs                    ; 3 uses
  %i.xu = load ptr, ptr %i.dp, align 8, !tbaa !1246
  %i.xv = getelementptr inbounds nuw [8 x i8], ptr %i.xu, i64 %i.xq
  %i.xw = load ptr, ptr %i.xv, align 8, !tbaa !1051
  %i.xx = getelementptr inbounds nuw [32 x i8], ptr %i.xw, i64 %i.xt ; 3 uses
  %i.xy = load i64, ptr %i.xx, align 8, !tbaa !168 ; 2 uses
  %.not.i.i238 = icmp eq i64 %i.xy, %.sroa.0543.0.copyload
  br i1 %.not.i.i238, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %.lr.ph653
  %i.xz = icmp ult i64 %i.xy, %.sroa.0543.0.copyload
  br label %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE9EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit245

bb.cd:                                            ; preds = %.lr.ph653
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xx, i64 8
  %i.yb = load i64, ptr %i.ya, align 8, !tbaa !1398 ; 4 uses
  %i.yc = icmp ult i64 %i.yb, 9
  %or.cond.i.i242 = select i1 %i.yc, i1 true, i1 %i.u
  br i1 %or.cond.i.i242, label %._crit_edge.i.i244, label %bb.ce

._crit_edge.i.i244:                               ; preds = %bb.cd
  %i.yd = icmp ult i64 %i.yb, %.sroa.25.0.copyload
  br label %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE9EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit245

bb.ce:                                            ; preds = %bb.cd
  %i.ye = getelementptr inbounds nuw i8, ptr %i.xx, i64 16
  %i.yf = load ptr, ptr %i.ye, align 8, !tbaa !527
  %i.yg = call noundef i64 @llvm.umin.i64(i64 %i.yb, i64 %.sroa.25.0.copyload)
  %i.yh = call i32 @memcmp(ptr noundef %i.yf, ptr noundef %.sroa.46.0.copyload, i64 noundef %i.yg) #33 ; 2 uses
  %i.yi = icmp slt i32 %i.yh, 0
  br i1 %i.yi, label %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE9EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit245, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.yj = icmp eq i32 %i.yh, 0
  %i.yk = icmp ult i64 %i.yb, %.sroa.25.0.copyload
  %spec.select.i.i243 = and i1 %i.yk, %i.yj
  br label %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE9EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit245

_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE9EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit245: ; preds = %bb.cc, %._crit_edge.i.i244, %bb.ce, %bb.cf
  %.0.i.i239 = phi i1 [ %i.xz, %bb.cc ], [ %i.yd, %._crit_edge.i.i244 ], [ true, %bb.ce ], [ %spec.select.i.i243, %bb.cf ]
  %i.yl = zext i1 %.0.i.i239 to i64
  %i.ym = add i64 %.2649, %i.yl                   ; 2 uses
  %i.yn = icmp ult i8 %i.xm, %i.pc
  br i1 %i.yn, label %.lr.ph653, label %.loopexit608, !llvm.loop !10123

.loopexit608:                                     ; preds = %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE9EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit245, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE9EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit236, %.preheader609
  %.3 = phi i64 [ %i.xk, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE9EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit236 ], [ %.0591666, %.preheader609 ], [ %i.ym, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE9EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit245 ] ; 4 uses
  %.sroa.30.6 = phi i64 [ %i.wo, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE9EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit236 ], [ %.sroa.30.3667, %.preheader609 ], [ %i.xq, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE9EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit245 ] ; 5 uses
  %.sroa.76.6 = phi i64 [ %i.wr, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE9EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit236 ], [ %.sroa.76.3668, %.preheader609 ], [ %i.xt, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE9EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit245 ] ; 4 uses
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %.3, i64 %.3596) ; 5 uses
  store ptr %i.c, ptr %6, align 8, !tbaa !1397
  store i64 %.sroa.5348.0662, ptr %i.en, align 8, !tbaa !1394
  store i64 %.sroa.9350.0661, ptr %i.eo, align 8, !tbaa !1396
  store ptr %i.n, ptr %7, align 8, !tbaa !1397
  store i64 %.sroa.5.0664, ptr %i.ep, align 8, !tbaa !1394
  store i64 %.sroa.9.0663, ptr %i.eq, align 8, !tbaa !1396
  %i.yo = getelementptr inbounds nuw i8, ptr %i.ed, i64 %.068671
  %i.yp = getelementptr inbounds nuw i8, ptr %i.eh, i64 %.067672
  %i.yq = icmp eq i64 %.3596, %.3
  call void @_ZN14duckdb_pdqsort14pdqsort_detail12swap_offsetsIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE9EEEEEEEvT_SC_PhSD_mb(ptr noundef nonnull dead_on_return %6, ptr noundef nonnull dead_on_return %7, ptr noundef %i.yo, ptr noundef %i.yp, i64 noundef %.sroa.speculated, i1 noundef zeroext %i.yq)
  %i.yr = sub i64 %.3596, %.sroa.speculated       ; 3 uses
  %i.ys = sub i64 %.3, %.sroa.speculated          ; 4 uses
  %i.yt = add i64 %.sroa.speculated, %.068671
  %i.yu = add i64 %.sroa.speculated, %.067672
  %.not605 = icmp ugt i64 %.3596, %.3             ; 3 uses
  %.sroa.9350.1 = select i1 %.not605, i64 %.sroa.9350.0661, i64 %.sroa.78.4 ; 2 uses
  %.sroa.5348.1 = select i1 %.not605, i64 %.sroa.5348.0662, i64 %.sroa.31.4 ; 3 uses
  %.169 = select i1 %.not605, i64 %i.yt, i64 0    ; 2 uses
  %i.yv = icmp eq i64 %i.ys, 0                    ; 3 uses
  %.sroa.9.1 = select i1 %i.yv, i64 %.sroa.76.6, i64 %.sroa.9.0663 ; 2 uses
  %.sroa.5.1 = select i1 %i.yv, i64 %.sroa.30.6, i64 %.sroa.5.0664 ; 3 uses
  %.1 = select i1 %i.yv, i64 0, i64 %i.yu         ; 2 uses
  %i.yw = icmp eq i64 %.sroa.31.4, %.sroa.30.6
  %i.yx = icmp ult i64 %.sroa.78.4, %.sroa.76.6
  %i.yy = icmp ult i64 %.sroa.31.4, %.sroa.30.6
  %i.yz = select i1 %i.yw, i1 %i.yx, i1 %i.yy
  br i1 %i.yz, label %bb.l, label %._crit_edge, !llvm.loop !10124

._crit_edge:                                      ; preds = %.loopexit608
  %.not = icmp eq i64 %i.yr, 0
  br i1 %.not, label %.loopexit607, label %bb.cg

bb.cg:                                            ; preds = %._crit_edge
  %i.za = getelementptr inbounds nuw i8, ptr %i.ed, i64 %.169
  %i.zb = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.zc = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEplERKm.exit
  %.in = phi i64 [ %i.yr, %bb.cg ], [ %i.zd, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEplERKm.exit ]
  %.sroa.76.7687 = phi i64 [ %.sroa.76.6, %bb.cg ], [ %i.zy, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEplERKm.exit ] ; 2 uses
  %.sroa.30.7686 = phi i64 [ %.sroa.30.6, %bb.cg ], [ %i.zv, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEplERKm.exit ]
  %i.zd = add i64 %.in, -1                        ; 3 uses
  %i.ze = getelementptr inbounds nuw i8, ptr %i.za, i64 %i.zd
  %i.zf = load i8, ptr %i.ze, align 1, !tbaa !527
  %i.zg = zext i8 %i.zf to i64
  %i.zh = add i64 %.sroa.9350.1, %i.zg            ; 3 uses
  %i.zi = load i64, ptr %i.s, align 8, !tbaa !168, !noalias !10125 ; 3 uses
  %.not.i.i246 = icmp ult i64 %i.zh, %i.zi
  br i1 %.not.i.i246, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEplERKm.exit, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.zj = mul i64 %i.zi, %.sroa.5348.1
  %i.zk = add i64 %i.zj, %i.zh                    ; 2 uses
  %i.zl = zext i64 %i.zk to i128
  %i.zm = load i64, ptr %i.zc, align 8, !tbaa !1232, !noalias !10125
  %i.zn = zext i64 %i.zm to i128
  %i.zo = mul nuw i128 %i.zn, %i.zl
  %i.zp = lshr i128 %i.zo, 64
  %i.zq = trunc nuw i128 %i.zp to i64             ; 2 uses
  %i.zr = mul i64 %i.zi, %i.zq
  %i.zs = sub i64 %i.zk, %i.zr
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEplERKm.exit

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEplERKm.exit: ; preds = %bb.ch, %bb.ci
  %.05.i247 = phi i64 [ %.sroa.5348.1, %bb.ch ], [ %i.zq, %bb.ci ]
  %.0.i248 = phi i64 [ %i.zh, %bb.ch ], [ %i.zs, %bb.ci ]
  %i.zt = add i64 %.sroa.76.7687, -1
  %i.zu = icmp eq i64 %.sroa.76.7687, 0           ; 2 uses
  %.neg.i.i249 = sext i1 %i.zu to i64
  %i.zv = add i64 %.sroa.30.7686, %.neg.i.i249    ; 3 uses
  %i.zw = load i64, ptr %i.zb, align 8, !tbaa !168
  %i.zx = select i1 %i.zu, i64 %i.zw, i64 0
  %i.zy = add i64 %i.zt, %i.zx                    ; 3 uses
  %i.zz = load ptr, ptr %i.f, align 8, !tbaa !1246
  %i.aaa = getelementptr inbounds nuw [8 x i8], ptr %i.zz, i64 %.05.i247
  %i.aab = load ptr, ptr %i.aaa, align 8, !tbaa !1051
  %i.aac = getelementptr inbounds nuw [32 x i8], ptr %i.aab, i64 %.0.i248 ; 2 uses
  %i.aad = load ptr, ptr %i.dp, align 8, !tbaa !1246
  %i.aae = getelementptr inbounds nuw [8 x i8], ptr %i.aad, i64 %i.zv
  %i.aaf = load ptr, ptr %i.aae, align 8, !tbaa !1051
  %i.aag = getelementptr inbounds nuw [32 x i8], ptr %i.aaf, i64 %i.zy ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.aac, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aac, ptr noundef nonnull align 8 dereferenceable(32) %i.aag, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aag, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %.not72 = icmp eq i64 %i.zd, 0
  br i1 %.not72, label %.loopexit607, label %bb.ch, !llvm.loop !10128

.loopexit607:                                     ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEplERKm.exit, %._crit_edge
  %.sroa.31.5 = phi i64 [ %.sroa.31.4, %._crit_edge ], [ %i.zv, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEplERKm.exit ] ; 2 uses
  %.sroa.78.5 = phi i64 [ %.sroa.78.4, %._crit_edge ], [ %i.zy, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEplERKm.exit ] ; 2 uses
  %.not73 = icmp eq i64 %i.ys, 0
  br i1 %.not73, label %.loopexit607..loopexit_crit_edge, label %bb.cj

.loopexit607..loopexit_crit_edge:                 ; preds = %bb.k, %.loopexit607
  %.sroa.78.5825 = phi i64 [ %.sroa.78.5, %.loopexit607 ], [ %i.dz, %bb.k ]
  %.sroa.31.5824 = phi i64 [ %.sroa.31.5, %.loopexit607 ], [ %i.dy, %bb.k ]
  %.pre.pre = load i64, ptr %i.s, align 8, !tbaa !168, !noalias !10129
  br label %.loopexit

bb.cj:                                            ; preds = %.loopexit607
  %i.aah = getelementptr inbounds nuw i8, ptr %i.eh, i64 %.1
  %i.aai = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEmiERKm.exit253
  %.in692 = phi i64 [ %i.ys, %bb.cj ], [ %i.aak, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEmiERKm.exit253 ]
  %.sroa.78.6689 = phi i64 [ %.sroa.78.5, %bb.cj ], [ %i.abn, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEmiERKm.exit253 ] ; 2 uses
  %.sroa.31.6688 = phi i64 [ %.sroa.31.5, %bb.cj ], [ %i.abm, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEmiERKm.exit253 ] ; 2 uses
  %i.aak = add i64 %.in692, -1                    ; 3 uses
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aah, i64 %i.aak
  %i.aam = load i8, ptr %i.aal, align 1, !tbaa !527
  %i.aan = zext i8 %i.aam to i64
  %i.aao = sub i64 %.sroa.9.1, %i.aan             ; 3 uses
  %i.aap = load i64, ptr %i.aai, align 8, !tbaa !168, !noalias !10132 ; 3 uses
  %.not.i.i250 = icmp ult i64 %i.aao, %i.aap
  br i1 %.not.i.i250, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEmiERKm.exit253, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.aaq = mul i64 %i.aap, %.sroa.5.1
  %i.aar = add i64 %i.aaq, %i.aao                 ; 2 uses
  %i.aas = zext i64 %i.aar to i128
  %i.aat = load i64, ptr %i.aaj, align 8, !tbaa !1232, !noalias !10132
  %i.aau = zext i64 %i.aat to i128
  %i.aav = mul nuw i128 %i.aau, %i.aas
  %i.aaw = lshr i128 %i.aav, 64
  %i.aax = trunc nuw i128 %i.aaw to i64           ; 2 uses
  %i.aay = mul i64 %i.aap, %i.aax
  %i.aaz = sub i64 %i.aar, %i.aay
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEmiERKm.exit253

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEmiERKm.exit253: ; preds = %bb.ck, %bb.cl
  %.05.i251 = phi i64 [ %.sroa.5.1, %bb.ck ], [ %i.aax, %bb.cl ]
  %.0.i252 = phi i64 [ %i.aao, %bb.ck ], [ %i.aaz, %bb.cl ]
  %i.aba = load ptr, ptr %i.dp, align 8, !tbaa !1246
  %i.abb = getelementptr inbounds nuw [8 x i8], ptr %i.aba, i64 %.05.i251
  %i.abc = load ptr, ptr %i.abb, align 8, !tbaa !1051
  %i.abd = getelementptr inbounds nuw [32 x i8], ptr %i.abc, i64 %.0.i252 ; 2 uses
  %i.abe = load ptr, ptr %i.f, align 8, !tbaa !1246
  %i.abf = getelementptr inbounds nuw [8 x i8], ptr %i.abe, i64 %.sroa.31.6688
  %i.abg = load ptr, ptr %i.abf, align 8, !tbaa !1051
  %i.abh = getelementptr inbounds nuw [32 x i8], ptr %i.abg, i64 %.sroa.78.6689 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.abd, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.abd, ptr noundef nonnull align 8 dereferenceable(32) %i.abh, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.abh, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.abi = add i64 %.sroa.78.6689, 1              ; 2 uses
  %i.abj = load i64, ptr %i.s, align 8, !tbaa !168 ; 2 uses
  %i.abk = icmp eq i64 %i.abi, %i.abj             ; 2 uses
  %i.abl = zext i1 %i.abk to i64
  %i.abm = add i64 %.sroa.31.6688, %i.abl         ; 2 uses
  %i.abn = select i1 %i.abk, i64 0, i64 %i.abi    ; 2 uses
  %.not74 = icmp eq i64 %i.aak, 0
  br i1 %.not74, label %.loopexit, label %bb.ck, !llvm.loop !10135

.loopexit:                                        ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEmiERKm.exit253, %.loopexit607..loopexit_crit_edge
  %.pre = phi i64 [ %.pre.pre, %.loopexit607..loopexit_crit_edge ], [ %i.abj, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEmiERKm.exit253 ]
  %.sroa.31.7 = phi i64 [ %.sroa.31.5824, %.loopexit607..loopexit_crit_edge ], [ %i.abm, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEmiERKm.exit253 ]
  %.sroa.78.7 = phi i64 [ %.sroa.78.5825, %.loopexit607..loopexit_crit_edge ], [ %i.abn, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEmiERKm.exit253 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %.pre721 = add i64 %.sroa.78.7, -1
  br label %bb.cm

bb.cm:                                            ; preds = %.loopexit, %.critedge
  %.pre-phi = phi i64 [ %.pre721, %.loopexit ], [ %i.aq, %.critedge ] ; 3 uses
  %i.abo = phi i64 [ %.pre, %.loopexit ], [ %i.t, %.critedge ] ; 3 uses
  %.sroa.31.8 = phi i64 [ %.sroa.31.7, %.loopexit ], [ %i.y, %.critedge ] ; 2 uses
  %.not.i.i254 = icmp ult i64 %.pre-phi, %i.abo
  br i1 %.not.i.i254, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEmiERKm.exit257, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.abp = mul i64 %i.abo, %.sroa.31.8
  %i.abq = add i64 %i.abp, %.pre-phi              ; 2 uses
  %i.abr = zext i64 %i.abq to i128
  %i.abs = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.abt = load i64, ptr %i.abs, align 8, !tbaa !1232, !noalias !10129
  %i.abu = zext i64 %i.abt to i128
  %i.abv = mul nuw i128 %i.abu, %i.abr
  %i.abw = lshr i128 %i.abv, 64
  %i.abx = trunc nuw i128 %i.abw to i64           ; 2 uses
  %i.aby = mul i64 %i.abo, %i.abx
  %i.abz = sub i64 %i.abq, %i.aby
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEmiERKm.exit257

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEmiERKm.exit257: ; preds = %bb.cm, %bb.cn
  %.05.i255 = phi i64 [ %.sroa.31.8, %bb.cm ], [ %i.abx, %bb.cn ] ; 3 uses
  %.0.i256 = phi i64 [ %.pre-phi, %bb.cm ], [ %i.abz, %bb.cn ] ; 3 uses
  %i.aca = zext i1 %i.do to i8
  %i.acb = load ptr, ptr %i.f, align 8, !tbaa !1246
  %i.acc = getelementptr inbounds nuw [8 x i8], ptr %i.acb, i64 %.05.i255
  %i.acd = load ptr, ptr %i.acc, align 8, !tbaa !1051
  %i.ace = getelementptr inbounds nuw [32 x i8], ptr %i.acd, i64 %.0.i256
  %i.acf = load ptr, ptr %1, align 8, !tbaa !1397
  %i.acg = getelementptr inbounds nuw i8, ptr %i.acf, i64 8
  %i.ach = load i64, ptr %i.d, align 8, !tbaa !168
  %i.aci = load ptr, ptr %i.acg, align 8, !tbaa !1246
  %i.acj = getelementptr inbounds nuw [8 x i8], ptr %i.aci, i64 %i.ach
  %i.ack = load ptr, ptr %i.acj, align 8, !tbaa !1051
  %i.acl = load i64, ptr %i.e, align 8, !tbaa !168
  %i.acm = getelementptr inbounds nuw [32 x i8], ptr %i.ack, i64 %i.acl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.acm, ptr noundef nonnull align 8 dereferenceable(32) %i.ace, i64 32, i1 false)
  %i.acn = load ptr, ptr %i.f, align 8, !tbaa !1246
  %i.aco = getelementptr inbounds nuw [8 x i8], ptr %i.acn, i64 %.05.i255
  %i.acp = load ptr, ptr %i.aco, align 8, !tbaa !1051
  %i.acq = getelementptr inbounds nuw [32 x i8], ptr %i.acp, i64 %.0.i256 ; 3 uses
  store i64 %.sroa.0543.0.copyload, ptr %i.acq, align 8
  %.sroa.25.0..sroa_idx565 = getelementptr inbounds nuw i8, ptr %i.acq, i64 8
end_hunk_21
begin_hunk_22_@_ZNSt3_V28__rotateIN6duckdb16block_iterator_tIKNS1_18BlockIteratorStateILNS1_22BlockIteratorStateTypeE0EEENS1_7SortKeyILNS1_11SortKeyTypeE9EEEEEEET_SB_SB_SB_St26random_access_iterator_tag:bb.a
bb.j:                                             ; preds = %bb.i
  %i.cn = icmp eq i64 %.0221, 1
  br i1 %i.cn, label %bb.k, label %bb.p

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.co = load ptr, ptr %i.ck, align 8, !tbaa !1246
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %.sroa.19.0
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !1051
  %i.cr = getelementptr inbounds nuw [32 x i8], ptr %i.cq, i64 %.sroa.39.0
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.cr, i64 32, i1 false)
  %i.cs = add i64 %.sroa.39.0, 1                  ; 3 uses
  %i.ct = load i64, ptr %i.ae, align 8, !tbaa !168, !noalias !10218 ; 8 uses
  %.not.i.i17 = icmp ult i64 %i.cs, %i.ct
  br i1 %.not.i.i17, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEplERKm.exit20, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cu = mul i64 %i.ct, %.sroa.19.0
  %i.cv = add i64 %i.cu, %i.cs                    ; 2 uses
  %i.cw = zext i64 %i.cv to i128
  %i.cx = load i64, ptr %i.cj, align 8, !tbaa !1232, !noalias !10218
  %i.cy = zext i64 %i.cx to i128
  %i.cz = mul nuw i128 %i.cy, %i.cw
  %i.da = lshr i128 %i.cz, 64
  %i.db = trunc nuw i128 %i.da to i64             ; 2 uses
  %i.dc = mul i64 %i.ct, %i.db
  %i.dd = sub i64 %i.cv, %i.dc
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEplERKm.exit20

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEplERKm.exit20: ; preds = %bb.k, %bb.l
  %.05.i18 = phi i64 [ %.sroa.19.0, %bb.k ], [ %i.db, %bb.l ] ; 2 uses
  %.0.i19 = phi i64 [ %i.cs, %bb.k ], [ %i.dd, %bb.l ] ; 2 uses
  %i.de = add i64 %.0220, %.sroa.39.0             ; 6 uses
  %.not.i.i21 = icmp ult i64 %i.de, %i.ct
  br i1 %.not.i.i21, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEplERKm.exit24, label %bb.m

bb.m:                                             ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEplERKm.exit20
  %i.df = mul i64 %i.ct, %.sroa.19.0
  %i.dg = add i64 %i.df, %i.de                    ; 2 uses
  %i.dh = zext i64 %i.dg to i128
  %i.di = load i64, ptr %i.cj, align 8, !tbaa !1232, !noalias !10221
  %i.dj = zext i64 %i.di to i128
  %i.dk = mul nuw i128 %i.dj, %i.dh
  %i.dl = lshr i128 %i.dk, 64
  %i.dm = trunc nuw i128 %i.dl to i64             ; 2 uses
  %i.dn = mul i64 %i.ct, %i.dm
  %i.do = sub i64 %i.dg, %i.dn
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEplERKm.exit24

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEplERKm.exit24: ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEplERKm.exit20, %bb.m
  %.05.i22 = phi i64 [ %.sroa.19.0, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEplERKm.exit20 ], [ %i.dm, %bb.m ]
  %.0.i23 = phi i64 [ %i.de, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEplERKm.exit20 ], [ %i.do, %bb.m ]
  %reass.add226 = sub i64 %.05.i22, %.05.i18
  %reass.mul227 = mul i64 %reass.add226, %i.ct
  %i.dp = sub i64 %.0.i23, %.0.i19
  %i.dq = add i64 %i.dp, %reass.mul227            ; 2 uses
  %.not4.i.i.i.i.i = icmp eq i64 %i.dq, 0
  br i1 %.not4.i.i.i.i.i, label %_ZSt4moveIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE9EEEEES9_ET0_T_SB_SA_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEplERKm.exit24, %.lr.ph.i.i.i.i.i
  %.sroa.38.0.i.i.i.i = phi i64 [ %i.ec, %.lr.ph.i.i.i.i.i ], [ %.05.i18, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEplERKm.exit24 ] ; 2 uses
  %.sroa.8.0.i.i.i.i = phi i64 [ %i.ei, %.lr.ph.i.i.i.i.i ], [ %.sroa.39.0, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEplERKm.exit24 ] ; 2 uses
  %.sroa.3.0.i.i.i.i = phi i64 [ %i.eh, %.lr.ph.i.i.i.i.i ], [ %.sroa.19.0, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEplERKm.exit24 ] ; 2 uses
  %.sroa.811.0.i.i.i.i = phi i64 [ %i.ed, %.lr.ph.i.i.i.i.i ], [ %.0.i19, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEplERKm.exit24 ] ; 2 uses
  %.05.i.i.i.i.i = phi i64 [ %i.ej, %.lr.ph.i.i.i.i.i ], [ %i.dq, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEplERKm.exit24 ]
  %i.dr = load ptr, ptr %i.ck, align 8, !tbaa !1246, !noalias !10224 ; 2 uses
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %.sroa.38.0.i.i.i.i
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !1051, !noalias !10224
  %i.du = getelementptr inbounds nuw [32 x i8], ptr %i.dt, i64 %.sroa.811.0.i.i.i.i
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %.sroa.3.0.i.i.i.i
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !1051, !noalias !10224
  %i.dx = getelementptr inbounds nuw [32 x i8], ptr %i.dw, i64 %.sroa.8.0.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dx, ptr noundef nonnull align 8 dereferenceable(32) %i.du, i64 32, i1 false), !noalias !10224
  %i.dy = add i64 %.sroa.811.0.i.i.i.i, 1         ; 2 uses
  %i.dz = load i64, ptr %i.ae, align 8, !tbaa !168, !noalias !10224 ; 3 uses
  %i.ea = icmp eq i64 %i.dy, %i.dz                ; 2 uses
  %i.eb = zext i1 %i.ea to i64
  %i.ec = add i64 %.sroa.38.0.i.i.i.i, %i.eb
  %i.ed = select i1 %i.ea, i64 0, i64 %i.dy
  %i.ee = add i64 %.sroa.8.0.i.i.i.i, 1           ; 2 uses
  %i.ef = icmp eq i64 %i.ee, %i.dz                ; 2 uses
  %i.eg = zext i1 %i.ef to i64
  %i.eh = add i64 %.sroa.3.0.i.i.i.i, %i.eg
  %i.ei = select i1 %i.ef, i64 0, i64 %i.ee
  %i.ej = add i64 %.05.i.i.i.i.i, -1              ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.ej, 0
  br i1 %.not.i.i.i.i.i, label %_ZSt4moveIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE9EEEEES9_ET0_T_SB_SA_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !10235

_ZSt4moveIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE9EEEEES9_ET0_T_SB_SA_.exit: ; preds = %.lr.ph.i.i.i.i.i, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEplERKm.exit24
  %i.ek = phi i64 [ %i.ct, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEplERKm.exit24 ], [ %i.dz, %.lr.ph.i.i.i.i.i ] ; 6 uses
  %.not.i.i25 = icmp ult i64 %i.de, %i.ek
  br i1 %.not.i.i25, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEplERKm.exit28, label %bb.n

bb.n:                                             ; preds = %_ZSt4moveIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE9EEEEES9_ET0_T_SB_SA_.exit
  %i.el = mul i64 %i.ek, %.sroa.19.0
  %i.em = add i64 %i.el, %i.de                    ; 2 uses
  %i.en = zext i64 %i.em to i128
  %i.eo = load i64, ptr %i.cj, align 8, !tbaa !1232, !noalias !10236
  %i.ep = zext i64 %i.eo to i128
  %i.eq = mul nuw i128 %i.ep, %i.en
  %i.er = lshr i128 %i.eq, 64
  %i.es = trunc nuw i128 %i.er to i64             ; 2 uses
  %i.et = mul i64 %i.ek, %i.es
  %i.eu = sub i64 %i.em, %i.et
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEplERKm.exit28

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEplERKm.exit28: ; preds = %_ZSt4moveIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE9EEEEES9_ET0_T_SB_SA_.exit, %bb.n
  %.05.i26 = phi i64 [ %.sroa.19.0, %_ZSt4moveIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE9EEEEES9_ET0_T_SB_SA_.exit ], [ %i.es, %bb.n ] ; 2 uses
  %.0.i27 = phi i64 [ %i.de, %_ZSt4moveIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE9EEEEES9_ET0_T_SB_SA_.exit ], [ %i.eu, %bb.n ]
  %i.ev = add i64 %.0.i27, -1                     ; 3 uses
  %.not.i.i29 = icmp ult i64 %i.ev, %i.ek
  br i1 %.not.i.i29, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEmiERKm.exit, label %bb.o

bb.o:                                             ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEplERKm.exit28
  %i.ew = mul i64 %.05.i26, %i.ek
  %i.ex = add i64 %i.ev, %i.ew                    ; 2 uses
  %i.ey = zext i64 %i.ex to i128
  %i.ez = load i64, ptr %i.cj, align 8, !tbaa !1232, !noalias !10239
  %i.fa = zext i64 %i.ez to i128
  %i.fb = mul nuw i128 %i.fa, %i.ey
  %i.fc = lshr i128 %i.fb, 64
  %i.fd = trunc nuw i128 %i.fc to i64             ; 2 uses
  %i.fe = mul i64 %i.ek, %i.fd
  %i.ff = sub i64 %i.ex, %i.fe
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEmiERKm.exit

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEmiERKm.exit: ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEplERKm.exit28, %bb.o
  %.05.i30 = phi i64 [ %.05.i26, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEplERKm.exit28 ], [ %i.fd, %bb.o ]
  %.0.i31 = phi i64 [ %i.ev, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEplERKm.exit28 ], [ %i.ff, %bb.o ]
  %i.fg = load ptr, ptr %i.ck, align 8, !tbaa !1246
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %.05.i30
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !1051
  %i.fj = getelementptr inbounds nuw [32 x i8], ptr %i.fi, i64 %.0.i31
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.fj, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %.critedge

bb.p:                                             ; preds = %bb.j
  %i.fk = add i64 %.0221, %.sroa.39.0             ; 3 uses
  %i.fl = load i64, ptr %i.ae, align 8, !tbaa !168, !noalias !10242 ; 3 uses
  %.not.i.i32 = icmp ult i64 %i.fk, %i.fl
  br i1 %.not.i.i32, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEplERKm.exit35.preheader, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.fm = mul i64 %i.fl, %.sroa.19.0
  %i.fn = add i64 %i.fm, %i.fk                    ; 2 uses
  %i.fo = zext i64 %i.fn to i128
  %i.fp = load i64, ptr %i.cj, align 8, !tbaa !1232, !noalias !10242
  %i.fq = zext i64 %i.fp to i128
  %i.fr = mul nuw i128 %i.fq, %i.fo
  %i.fs = lshr i128 %i.fr, 64
  %i.ft = trunc nuw i128 %i.fs to i64             ; 2 uses
  %i.fu = mul i64 %i.fl, %i.ft
  %i.fv = sub i64 %i.fn, %i.fu
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEplERKm.exit35.preheader

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEplERKm.exit35.preheader: ; preds = %bb.p, %bb.q
  %.sroa.6109.0241.ph = phi i64 [ %i.ft, %bb.q ], [ %.sroa.19.0, %bb.p ]
  %.sroa.10.0240.ph = phi i64 [ %i.fv, %bb.q ], [ %i.fk, %bb.p ]
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEplERKm.exit35

bb.r:                                             ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEplERKm.exit35
  %i.fw = urem i64 %.0220, %.0221                 ; 2 uses
  %.not11 = icmp eq i64 %i.fw, 0
  br i1 %.not11, label %.critedge, label %bb.s

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEplERKm.exit35: ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEplERKm.exit35.preheader, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEplERKm.exit35
  %.07244 = phi i64 [ %i.gp, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEplERKm.exit35 ], [ 0, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEplERKm.exit35.preheader ]
  %.sroa.39.1243 = phi i64 [ %i.gj, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEplERKm.exit35 ], [ %.sroa.39.0, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEplERKm.exit35.preheader ] ; 2 uses
  %.sroa.19.1242 = phi i64 [ %i.gi, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEplERKm.exit35 ], [ %.sroa.19.0, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEplERKm.exit35.preheader ] ; 2 uses
  %.sroa.6109.0241 = phi i64 [ %i.gn, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEplERKm.exit35 ], [ %.sroa.6109.0241.ph, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEplERKm.exit35.preheader ] ; 2 uses
  %.sroa.10.0240 = phi i64 [ %i.go, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEplERKm.exit35 ], [ %.sroa.10.0240.ph, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEplERKm.exit35.preheader ] ; 2 uses
  %i.fx = load ptr, ptr %i.ck, align 8, !tbaa !1246 ; 2 uses
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %.sroa.19.1242
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !1051
  %i.ga = getelementptr inbounds nuw [32 x i8], ptr %i.fz, i64 %.sroa.39.1243 ; 2 uses
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %.sroa.6109.0241
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !1051
  %i.gd = getelementptr inbounds nuw [32 x i8], ptr %i.gc, i64 %.sroa.10.0240 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.ga, i64 32, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ga, ptr noundef nonnull align 8 dereferenceable(32) %i.gd, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.gd, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.ge = add i64 %.sroa.39.1243, 1               ; 2 uses
  %i.gf = load i64, ptr %i.ae, align 8, !tbaa !168 ; 2 uses
  %i.gg = icmp eq i64 %i.ge, %i.gf                ; 2 uses
  %i.gh = zext i1 %i.gg to i64
  %i.gi = add i64 %.sroa.19.1242, %i.gh           ; 2 uses
  %i.gj = select i1 %i.gg, i64 0, i64 %i.ge       ; 2 uses
  %i.gk = add i64 %.sroa.10.0240, 1               ; 2 uses
  %i.gl = icmp eq i64 %i.gk, %i.gf                ; 2 uses
  %i.gm = zext i1 %i.gl to i64
  %i.gn = add i64 %.sroa.6109.0241, %i.gm
  %i.go = select i1 %i.gl, i64 0, i64 %i.gk
  %i.gp = add nuw i64 %.07244, 1                  ; 2 uses
  %exitcond255.not = icmp eq i64 %i.gp, %i.cl
  br i1 %exitcond255.not, label %bb.r, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEplERKm.exit35, !llvm.loop !10245

bb.s:                                             ; preds = %bb.r
  %i.gq = sub i64 %.0221, %i.fw
  br label %.backedge

bb.t:                                             ; preds = %bb.i
  %i.gr = icmp eq i64 %i.cl, 1
  br i1 %i.gr, label %bb.u, label %bb.aa

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  %i.gs = add i64 %.0220, %.sroa.39.0             ; 7 uses
  %i.gt = load i64, ptr %i.ae, align 8, !tbaa !168, !noalias !10246 ; 14 uses
  %.not.i.i36 = icmp ult i64 %i.gs, %i.gt         ; 3 uses
  br i1 %.not.i.i36, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEplERKm.exit39, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.gu = mul i64 %i.gt, %.sroa.19.0
  %i.gv = add i64 %i.gu, %i.gs                    ; 2 uses
  %i.gw = zext i64 %i.gv to i128
  %i.gx = load i64, ptr %i.cj, align 8, !tbaa !1232, !noalias !10246
  %i.gy = zext i64 %i.gx to i128
  %i.gz = mul nuw i128 %i.gy, %i.gw
  %i.ha = lshr i128 %i.gz, 64
  %i.hb = trunc nuw i128 %i.ha to i64             ; 2 uses
  %i.hc = mul i64 %i.gt, %i.hb
  %i.hd = sub i64 %i.gv, %i.hc
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEplERKm.exit39

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEplERKm.exit39: ; preds = %bb.u, %bb.v
  %.05.i37 = phi i64 [ %.sroa.19.0, %bb.u ], [ %i.hb, %bb.v ] ; 2 uses
  %.0.i38 = phi i64 [ %i.gs, %bb.u ], [ %i.hd, %bb.v ]
  %i.he = add i64 %.0.i38, -1                     ; 3 uses
  %.not.i.i40 = icmp ult i64 %i.he, %i.gt
  br i1 %.not.i.i40, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEmiERKm.exit43, label %bb.w

bb.w:                                             ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEplERKm.exit39
  %i.hf = mul i64 %.05.i37, %i.gt
  %i.hg = add i64 %i.he, %i.hf                    ; 2 uses
  %i.hh = zext i64 %i.hg to i128
  %i.hi = load i64, ptr %i.cj, align 8, !tbaa !1232, !noalias !10249
  %i.hj = zext i64 %i.hi to i128
  %i.hk = mul nuw i128 %i.hj, %i.hh
  %i.hl = lshr i128 %i.hk, 64
  %i.hm = trunc nuw i128 %i.hl to i64             ; 2 uses
  %i.hn = mul i64 %i.gt, %i.hm
  %i.ho = sub i64 %i.hg, %i.hn
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEmiERKm.exit43

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEmiERKm.exit43: ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEplERKm.exit39, %bb.w
  %.05.i41 = phi i64 [ %.05.i37, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEplERKm.exit39 ], [ %i.hm, %bb.w ]
  %.0.i42 = phi i64 [ %i.he, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEplERKm.exit39 ], [ %i.ho, %bb.w ]
  %i.hp = load ptr, ptr %i.ck, align 8, !tbaa !1246 ; 2 uses
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.hp, i64 %.05.i41
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !1051
  %i.hs = getelementptr inbounds nuw [32 x i8], ptr %i.hr, i64 %.0.i42
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %i.hs, i64 32, i1 false)
  br i1 %.not.i.i36, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEplERKm.exit47, label %bb.x

bb.x:                                             ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEmiERKm.exit43
  %i.ht = mul i64 %i.gt, %.sroa.19.0
  %i.hu = add i64 %i.ht, %i.gs                    ; 2 uses
  %i.hv = zext i64 %i.hu to i128
  %i.hw = load i64, ptr %i.cj, align 8, !tbaa !1232, !noalias !10252
  %i.hx = zext i64 %i.hw to i128
  %i.hy = mul nuw i128 %i.hx, %i.hv
  %i.hz = lshr i128 %i.hy, 64
  %i.ia = trunc nuw i128 %i.hz to i64             ; 2 uses
  %i.ib = mul i64 %i.gt, %i.ia
  %i.ic = sub i64 %i.hu, %i.ib
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEplERKm.exit47

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEplERKm.exit47: ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEmiERKm.exit43, %bb.x
  %.05.i45 = phi i64 [ %.sroa.19.0, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEmiERKm.exit43 ], [ %i.ia, %bb.x ] ; 2 uses
  %.0.i46 = phi i64 [ %i.gs, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEmiERKm.exit43 ], [ %i.ic, %bb.x ]
  %i.id = add i64 %.0.i46, -1                     ; 3 uses
  %.not.i.i48 = icmp ult i64 %i.id, %i.gt
  br i1 %.not.i.i48, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEmiERKm.exit51, label %bb.y

bb.y:                                             ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEplERKm.exit47
  %i.ie = mul i64 %.05.i45, %i.gt
  %i.if = add i64 %i.id, %i.ie                    ; 2 uses
  %i.ig = zext i64 %i.if to i128
  %i.ih = load i64, ptr %i.cj, align 8, !tbaa !1232, !noalias !10255
  %i.ii = zext i64 %i.ih to i128
  %i.ij = mul nuw i128 %i.ii, %i.ig
  %i.ik = lshr i128 %i.ij, 64
  %i.il = trunc nuw i128 %i.ik to i64             ; 2 uses
  %i.im = mul i64 %i.gt, %i.il
  %i.in = sub i64 %i.if, %i.im
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEmiERKm.exit51

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEmiERKm.exit51: ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEplERKm.exit47, %bb.y
  %.05.i49 = phi i64 [ %.05.i45, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEplERKm.exit47 ], [ %i.il, %bb.y ] ; 2 uses
  %.0.i50 = phi i64 [ %i.id, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEplERKm.exit47 ], [ %i.in, %bb.y ] ; 2 uses
  br i1 %.not.i.i36, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEplERKm.exit55, label %bb.z

bb.z:                                             ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEmiERKm.exit51
  %i.io = mul i64 %i.gt, %.sroa.19.0
  %i.ip = add i64 %i.io, %i.gs                    ; 2 uses
  %i.iq = zext i64 %i.ip to i128
  %i.ir = load i64, ptr %i.cj, align 8, !tbaa !1232, !noalias !10258
  %i.is = zext i64 %i.ir to i128
  %i.it = mul nuw i128 %i.is, %i.iq
  %i.iu = lshr i128 %i.it, 64
  %i.iv = trunc nuw i128 %i.iu to i64             ; 2 uses
  %i.iw = mul i64 %i.gt, %i.iv
  %i.ix = sub i64 %i.ip, %i.iw
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEplERKm.exit55

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEplERKm.exit55: ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEmiERKm.exit51, %bb.z
  %.05.i53 = phi i64 [ %.sroa.19.0, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEmiERKm.exit51 ], [ %i.iv, %bb.z ]
  %.0.i54 = phi i64 [ %i.gs, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEmiERKm.exit51 ], [ %i.ix, %bb.z ]
  %reass.add = sub i64 %.05.i49, %.sroa.19.0
  %reass.mul = mul i64 %reass.add, %i.gt
  %i.iy = sub i64 %.0.i50, %.sroa.39.0
  %i.iz = add i64 %i.iy, %reass.mul               ; 2 uses
  %.not5.i.i.i.i.i = icmp eq i64 %i.iz, 0
  br i1 %.not5.i.i.i.i.i, label %_ZSt13move_backwardIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE9EEEEES9_ET0_T_SB_SA_.exit, label %.lr.ph.i.i.i.i.i57

.lr.ph.i.i.i.i.i57:                               ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEplERKm.exit55, %.lr.ph.i.i.i.i.i57
  %.sroa.36.0.i.i.i.i = phi i64 [ %i.jc, %.lr.ph.i.i.i.i.i57 ], [ %.05.i49, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEplERKm.exit55 ]
  %.sroa.7.0.i.i.i.i = phi i64 [ %i.jo, %.lr.ph.i.i.i.i.i57 ], [ %.0.i54, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEplERKm.exit55 ] ; 2 uses
  %.sroa.3.0.i.i.i.i58 = phi i64 [ %i.jm, %.lr.ph.i.i.i.i.i57 ], [ %.05.i53, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEplERKm.exit55 ]
  %.sroa.78.0.i.i.i.i = phi i64 [ %i.jf, %.lr.ph.i.i.i.i.i57 ], [ %.0.i50, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEplERKm.exit55 ] ; 2 uses
  %.06.i.i.i.i.i = phi i64 [ %i.js, %.lr.ph.i.i.i.i.i57 ], [ %i.iz, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEplERKm.exit55 ]
  %i.ja = add i64 %.sroa.78.0.i.i.i.i, -1
  %i.jb = icmp eq i64 %.sroa.78.0.i.i.i.i, 0      ; 2 uses
  %.neg.i.i.i.i.i.i.i = sext i1 %i.jb to i64
  %i.jc = add i64 %.sroa.36.0.i.i.i.i, %.neg.i.i.i.i.i.i.i ; 2 uses
  %i.jd = load i64, ptr %i.ae, align 8, !tbaa !168, !noalias !10261 ; 2 uses
  %i.je = select i1 %i.jb, i64 %i.jd, i64 0
  %i.jf = add i64 %i.ja, %i.je                    ; 2 uses
  %i.jg = load ptr, ptr %i.ck, align 8, !tbaa !1246, !noalias !10261 ; 2 uses
  %i.jh = getelementptr inbounds nuw [8 x i8], ptr %i.jg, i64 %i.jc
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !1051, !noalias !10261
  %i.jj = getelementptr inbounds nuw [32 x i8], ptr %i.ji, i64 %i.jf
  %i.jk = add i64 %.sroa.7.0.i.i.i.i, -1
  %i.jl = icmp eq i64 %.sroa.7.0.i.i.i.i, 0       ; 2 uses
  %.neg.i.i2.i.i.i.i.i = sext i1 %i.jl to i64
  %i.jm = add i64 %.sroa.3.0.i.i.i.i58, %.neg.i.i2.i.i.i.i.i ; 2 uses
  %i.jn = select i1 %i.jl, i64 %i.jd, i64 0
  %i.jo = add i64 %i.jk, %i.jn                    ; 2 uses
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %i.jg, i64 %i.jm
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !1051, !noalias !10261
  %i.jr = getelementptr inbounds nuw [32 x i8], ptr %i.jq, i64 %i.jo
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.jr, ptr noundef nonnull align 8 dereferenceable(32) %i.jj, i64 32, i1 false), !noalias !10261
  %i.js = add i64 %.06.i.i.i.i.i, -1              ; 2 uses
  %.not.i.i.i.i.i59 = icmp eq i64 %i.js, 0
  br i1 %.not.i.i.i.i.i59, label %_ZSt13move_backwardIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE9EEEEES9_ET0_T_SB_SA_.exit.loopexit, label %.lr.ph.i.i.i.i.i57, !llvm.loop !10272

_ZSt13move_backwardIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE9EEEEES9_ET0_T_SB_SA_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i57
  %.pre = load ptr, ptr %i.ck, align 8, !tbaa !1246
  br label %_ZSt13move_backwardIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE9EEEEES9_ET0_T_SB_SA_.exit

_ZSt13move_backwardIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE9EEEEES9_ET0_T_SB_SA_.exit: ; preds = %_ZSt13move_backwardIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE9EEEEES9_ET0_T_SB_SA_.exit.loopexit, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEplERKm.exit55
  %i.jt = phi ptr [ %.pre, %_ZSt13move_backwardIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE9EEEEES9_ET0_T_SB_SA_.exit.loopexit ], [ %i.hp, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEplERKm.exit55 ]
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %i.jt, i64 %.sroa.19.0
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !1051
  %i.jw = getelementptr inbounds nuw [32 x i8], ptr %i.jv, i64 %.sroa.39.0
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.jw, ptr noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %.critedge

bb.aa:                                            ; preds = %bb.t
  %i.jx = add i64 %.0220, %.sroa.39.0             ; 3 uses
  %i.jy = load i64, ptr %i.ae, align 8, !tbaa !168, !noalias !10273 ; 6 uses
  %.not.i.i60 = icmp ult i64 %i.jx, %i.jy
  br i1 %.not.i.i60, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEplERKm.exit63, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.jz = mul i64 %i.jy, %.sroa.19.0
  %i.ka = add i64 %i.jz, %i.jx                    ; 2 uses
  %i.kb = zext i64 %i.ka to i128
  %i.kc = load i64, ptr %i.cj, align 8, !tbaa !1232, !noalias !10273
  %i.kd = zext i64 %i.kc to i128
  %i.ke = mul nuw i128 %i.kd, %i.kb
  %i.kf = lshr i128 %i.ke, 64
  %i.kg = trunc nuw i128 %i.kf to i64             ; 2 uses
  %i.kh = mul i64 %i.jy, %i.kg
  %i.ki = sub i64 %i.ka, %i.kh
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEplERKm.exit63

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEplERKm.exit63: ; preds = %bb.aa, %bb.ab
  %.05.i61 = phi i64 [ %.sroa.19.0, %bb.aa ], [ %i.kg, %bb.ab ] ; 3 uses
  %.0.i62 = phi i64 [ %i.jx, %bb.aa ], [ %i.ki, %bb.ab ] ; 2 uses
  %i.kj = sub i64 %.0.i62, %i.cl                  ; 3 uses
  %.not.i.i64 = icmp ult i64 %i.kj, %i.jy
  br i1 %.not.i.i64, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEmiERKm.exit67, label %bb.ac

bb.ac:                                            ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEplERKm.exit63
  %i.kk = mul i64 %.05.i61, %i.jy
  %i.kl = add i64 %i.kj, %i.kk                    ; 2 uses
  %i.km = zext i64 %i.kl to i128
  %i.kn = load i64, ptr %i.cj, align 8, !tbaa !1232, !noalias !10276
  %i.ko = zext i64 %i.kn to i128
  %i.kp = mul nuw i128 %i.ko, %i.km
  %i.kq = lshr i128 %i.kp, 64
  %i.kr = trunc nuw i128 %i.kq to i64             ; 2 uses
  %i.ks = mul i64 %i.jy, %i.kr
  %i.kt = sub i64 %i.kl, %i.ks
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEmiERKm.exit67

end_hunk_22
