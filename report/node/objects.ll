inline.NumInlined: 13178
inline.NumDeleted: 2935
loop-unroll.NumCompletelyUnrolled: 51
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 68
begin_hunk_0_@_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE6RehashENS0_16PtrComprCageBaseE:bb.a

_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit37.us: ; preds = %bb.j
  %i.bt = load i64, ptr %i.z, align 8
  %.not90.us = icmp eq i64 %i.bq, %i.bt
  br i1 %.not90.us, label %.critedge.us, label %bb.k

bb.k:                                             ; preds = %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit37.us
  %i.bu = add i64 %i.bq, 7
  %i.bv = inttoptr i64 %i.bu to ptr
  %i.bw = load i64, ptr %i.bv, align 8
  %i.bx = add i64 %i.bw, -1
  %i.by = inttoptr i64 %i.bx to ptr
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ca = load atomic i32, ptr %i.bz acquire, align 4 ; 3 uses
  %i.cb = and i32 %i.ca, 1
  %i.cc = icmp eq i32 %i.cb, 0
  br i1 %i.cc, label %_ZN2v88internal21GlobalDictionaryShape13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i38.us, label %bb.l, !prof !28

bb.l:                                             ; preds = %bb.k
  %i.cd = load ptr, ptr %.pre-phi, align 8        ; 4 uses
  %i.ce = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !16, !noundef !17
  %i.cf = trunc nuw i8 %i.ce to i1
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 55448
  %i.ch = load i8, ptr %i.cg, align 8, !range !16
  %i.ci = trunc nuw i8 %i.ch to i1
  %not..i.i.i55.us = xor i1 %i.cf, true
  %i.cj = select i1 %not..i.i.i55.us, i1 true, i1 %i.ci
  br i1 %i.cj, label %_ZNK2v88internal4Name29GetRawHashFromForwardingTableEj.exit59.us, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cd, i64 64088
  %i.cl = load i8, ptr %i.ck, align 8, !range !16, !noundef !17
  %i.cm = trunc nuw i8 %i.cl to i1
  br i1 %i.cm, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i56.us, label %.split102.us

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i56.us: ; preds = %bb.m
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cd, i64 64080
  %i.co = load ptr, ptr %i.cn, align 8
  br label %_ZNK2v88internal4Name29GetRawHashFromForwardingTableEj.exit59.us

_ZNK2v88internal4Name29GetRawHashFromForwardingTableEj.exit59.us: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i56.us, %bb.l
  %.pn.i.i57.us = phi ptr [ %i.co, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i56.us ], [ %i.cd, %bb.l ]
  %i.cp = lshr i32 %i.ca, 4
  %.in.i.i58.us = getelementptr inbounds nuw i8, ptr %.pn.i.i57.us, i64 58472
  %i.cq = load ptr, ptr %.in.i.i58.us, align 8
  %i.cr = call noundef i32 @_ZNK2v88internal21StringForwardingTable10GetRawHashENS0_16PtrComprCageBaseEi(ptr noundef nonnull align 8 dereferenceable(56) %i.cq, i32 noundef %i.cp) #28
  br label %_ZN2v88internal21GlobalDictionaryShape13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i38.us

_ZN2v88internal21GlobalDictionaryShape13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i38.us: ; preds = %_ZNK2v88internal4Name29GetRawHashFromForwardingTableEj.exit59.us, %bb.k
  %.0.in.i.i.i39.us = phi i32 [ %i.cr, %_ZNK2v88internal4Name29GetRawHashFromForwardingTableEj.exit59.us ], [ %i.ca, %bb.k ]
  %.0.i.i.i40.us = lshr i32 %.0.in.i.i.i39.us, 2
  %i.cs = load atomic volatile i64, ptr %i.v monotonic, align 8
  %i.ct = lshr i64 %i.cs, 32
  %i.cu = trunc nuw i64 %i.ct to i32
  %i.cv = add i32 %i.cu, -1                       ; 2 uses
  %.sroa.0.0.in20.i41.us = and i32 %i.cv, %.0.i.i.i40.us ; 2 uses
  %.sroa.0.021.i42.us = zext nneg i32 %.sroa.0.0.in20.i41.us to i64 ; 2 uses
  br i1 %.not22.i.us, label %.lr.ph.i45.us, label %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit52.us

.lr.ph.i45.us:                                    ; preds = %_ZN2v88internal21GlobalDictionaryShape13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i38.us, %bb.n
  %.sroa.0.025.i46.us = phi i64 [ %.sroa.0.0.i50.us, %bb.n ], [ %.sroa.0.021.i42.us, %_ZN2v88internal21GlobalDictionaryShape13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i38.us ]
  %.sroa.0.0.in24.i47.us = phi i32 [ %.sroa.0.0.in.i49.us, %bb.n ], [ %.sroa.0.0.in20.i41.us, %_ZN2v88internal21GlobalDictionaryShape13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i38.us ]
  %.023.i48.us = phi i32 [ %i.cy, %bb.n ], [ 1, %_ZN2v88internal21GlobalDictionaryShape13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i38.us ] ; 2 uses
  %i.cw = icmp eq i64 %spec.select.i.us, %.sroa.0.025.i46.us
  br i1 %i.cw, label %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit52.thread.us, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i45.us
  %i.cx = add i32 %.023.i48.us, %.sroa.0.0.in24.i47.us
  %i.cy = add nuw nsw i32 %.023.i48.us, 1         ; 2 uses
  %.sroa.0.0.in.i49.us = and i32 %i.cx, %i.cv     ; 2 uses
  %.sroa.0.0.i50.us = zext i32 %.sroa.0.0.in.i49.us to i64 ; 2 uses
  %exitcond.not.i51.us = icmp eq i32 %i.cy, %.03598.us
  br i1 %exitcond.not.i51.us, label %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit52.us, label %.lr.ph.i45.us, !llvm.loop !53

_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit52.us: ; preds = %bb.n, %_ZN2v88internal21GlobalDictionaryShape13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i38.us
  %spec.select.i44.us = phi i64 [ %.sroa.0.021.i42.us, %_ZN2v88internal21GlobalDictionaryShape13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i38.us ], [ %.sroa.0.0.i50.us, %bb.n ]
  %.not91.us = icmp eq i64 %spec.select.i44.us, %spec.select.i.us
  br i1 %.not91.us, label %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit52.thread.us, label %.critedge.us

_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit52.thread.us: ; preds = %.lr.ph.i45.us, %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit52.us
  %i.cz = add i64 %.sroa.074.095.us, 1
  br label %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE4SwapENS0_13InternalIndexES5_NS0_16WriteBarrierModeE.exit.us

.critedge.us:                                     ; preds = %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit52.us, %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit37.us, %bb.j
  %i.da = load i32, ptr %1, align 4
  %i.db = load atomic volatile i64, ptr %i.ac monotonic, align 8 ; 5 uses
  %i.dc = load atomic volatile i64, ptr %i.bp monotonic, align 8 ; 5 uses
  store atomic volatile i64 %i.dc, ptr %i.ac monotonic, align 8
  %i.dd = icmp sgt i32 %i.da, 1                   ; 2 uses
  %i.de = trunc i64 %i.dc to i1
  %or.cond.i.i.i.i.i.i.us = select i1 %i.dd, i1 %i.de, i1 false
  br i1 %or.cond.i.i.i.i.i.i.us, label %bb.o, label %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i.us

bb.o:                                             ; preds = %.critedge.us
  %i.df = ptrtoint ptr %i.ac to i64               ; 2 uses
  %i.dg = load i64, ptr %i.d, align 262144        ; 2 uses
  %i.dh = and i64 %i.dg, 32
  %.not.i.i.i.i.i.i.i.us = icmp eq i64 %i.dh, 0
  %i.di = and i64 %i.dg, 25
  %.not37.i.i.i.i.i.i.i.us = icmp eq i64 %i.di, 0
  br i1 %.not37.i.i.i.i.i.i.i.us, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.dj = and i64 %i.dc, -262144
  %i.dk = inttoptr i64 %i.dj to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.us = load i64, ptr %i.dk, align 262144
  %i.dl = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.us, 25
  %.not38.i.i.i.i.i.i.i.us = icmp eq i64 %i.dl, 0
  br i1 %.not38.i.i.i.i.i.i.i.us, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.b, i64 noundef %i.df, i64 %i.dc) #28
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o
  br i1 %.not.i.i.i.i.i.i.i.us, label %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i.us, label %bb.s, !prof !28

bb.s:                                             ; preds = %bb.r
  call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.b, i64 %i.df, i64 %i.dc) #28
  br label %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i.us

_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i.us: ; preds = %bb.s, %bb.r, %.critedge.us
  store atomic volatile i64 %i.db, ptr %i.bp monotonic, align 8
  %i.dm = trunc i64 %i.db to i1
  %or.cond.i.i.i.i.i35.i.us = select i1 %i.dd, i1 %i.dm, i1 false
  br i1 %or.cond.i.i.i.i.i35.i.us, label %bb.t, label %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE4SwapENS0_13InternalIndexES5_NS0_16WriteBarrierModeE.exit.us

bb.t:                                             ; preds = %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i.us
  %i.dn = ptrtoint ptr %i.bp to i64               ; 2 uses
  %i.do = load i64, ptr %i.d, align 262144        ; 2 uses
  %i.dp = and i64 %i.do, 32
  %.not.i.i.i.i.i.i36.i.us = icmp eq i64 %i.dp, 0
  %i.dq = and i64 %i.do, 25
  %.not37.i.i.i.i.i.i37.i.us = icmp eq i64 %i.dq, 0
  br i1 %.not37.i.i.i.i.i.i37.i.us, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.dr = and i64 %i.db, -262144
  %i.ds = inttoptr i64 %i.dr to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i38.i.us = load i64, ptr %i.ds, align 262144
  %i.dt = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i38.i.us, 25
  %.not38.i.i.i.i.i.i39.i.us = icmp eq i64 %i.dt, 0
  br i1 %.not38.i.i.i.i.i.i39.i.us, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.b, i64 noundef %i.dn, i64 %i.db) #28
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t
  br i1 %.not.i.i.i.i.i.i36.i.us, label %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE4SwapENS0_13InternalIndexES5_NS0_16WriteBarrierModeE.exit.us, label %bb.x, !prof !28

bb.x:                                             ; preds = %bb.w
  call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.b, i64 %i.dn, i64 %i.db) #28
  br label %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE4SwapENS0_13InternalIndexES5_NS0_16WriteBarrierModeE.exit.us

bb.y:                                             ; preds = %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit.us
  %i.du = add nuw nsw i64 %.sroa.074.095.us, 1
  br label %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE4SwapENS0_13InternalIndexES5_NS0_16WriteBarrierModeE.exit.us, !llvm.loop !54

_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread.us: ; preds = %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.us, %bb.e
  %i.dv = add nuw i64 %.sroa.074.095.us, 1
  br label %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE4SwapENS0_13InternalIndexES5_NS0_16WriteBarrierModeE.exit.us, !llvm.loop !54

_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE4SwapENS0_13InternalIndexES5_NS0_16WriteBarrierModeE.exit.us: ; preds = %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread.us, %bb.y, %bb.x, %bb.w, %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i.us, %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit52.thread.us
  %.sroa.074.2.us = phi i64 [ %i.dv, %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread.us ], [ %i.du, %bb.y ], [ %i.cz, %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit52.thread.us ], [ %.sroa.074.095.us, %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i.us ], [ %.sroa.074.095.us, %bb.w ], [ %.sroa.074.095.us, %bb.x ] ; 2 uses
  %.4.us = phi i1 [ %.197.us, %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread.us ], [ %.197.us, %bb.y ], [ false, %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit52.thread.us ], [ %.197.us, %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i.us ], [ %.197.us, %bb.w ], [ %.197.us, %bb.x ] ; 2 uses
  %i.dw = icmp ult i64 %.sroa.074.2.us, %i.x
  br i1 %i.dw, label %bb.e, label %._crit_edge.us

._crit_edge.us:                                   ; preds = %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE4SwapENS0_13InternalIndexES5_NS0_16WriteBarrierModeE.exit.us
  %i.dx = add nuw nsw i32 %.03598.us, 1
  br i1 %.4.us, label %.split.us, label %.preheader.us, !llvm.loop !55

.split.us:                                        ; preds = %._crit_edge.us
  %i.dy = load i64, ptr %i.z, align 8             ; 3 uses
  %i.dz = load i64, ptr %.sroa.0.0.i.i, align 8   ; 3 uses
  %i.ea = icmp eq i64 %i.x, 1
  br i1 %i.ea, label %.lr.ph.epil.preheader, label %.split.us.new

.split.us.new:                                    ; preds = %.split.us
  %unroll_iter = and i64 %i.x, 4294967294
  br label %.lr.ph

.split100.us:                                     ; preds = %bb.h
  call void @_ZSt27__throw_bad_optional_accessv() #30
  unreachable

.split102.us:                                     ; preds = %bb.m
  call void @_ZSt27__throw_bad_optional_accessv() #30
  unreachable

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.ac
  %i.eb = and i64 %.fr, 4294967296
  %lcmp.mod.not = icmp eq i64 %i.eb, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.split.us
  %.sroa.062.0104.epil.init = phi i64 [ 0, %.split.us ], [ %i.es, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod111 = trunc i64 %i.x to i1
  call void @llvm.assume(i1 %lcmp.mod111)
  %i.ec = shl i64 %.sroa.062.0104.epil.init, 32
  %sext.i54.epil = add i64 %i.ec, 21474836480
  %i.ed = ashr exact i64 %sext.i54.epil, 29
  %i.ee = getelementptr inbounds i8, ptr %i.y, i64 %i.ed ; 2 uses
  %i.ef = load atomic volatile i64, ptr %i.ee monotonic, align 8
  %i.eg = icmp eq i64 %i.ef, %i.dy
  br i1 %i.eg, label %bb.z, label %._crit_edge

bb.z:                                             ; preds = %.lr.ph.epil.preheader
  store atomic volatile i64 %i.dz, ptr %i.ee monotonic, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.z, %.lr.ph.epil.preheader, %_ZNK2v88internal16HeapObjectLayout21EarlyGetReadOnlyRootsEv.exit
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 24
  store atomic volatile i64 0, ptr %i.eh monotonic, align 8
  call void @_ZN2v88internal21WriteBarrierModeScopeD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %1) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  ret void

.lr.ph:                                           ; preds = %bb.ac, %.split.us.new
  %.sroa.062.0104 = phi i64 [ 0, %.split.us.new ], [ %i.es, %bb.ac ] ; 3 uses
  %niter = phi i64 [ 0, %.split.us.new ], [ %niter.next.1, %bb.ac ]
  %i.ei = shl i64 %.sroa.062.0104, 32
  %sext.i54 = add i64 %i.ei, 21474836480
  %i.ej = ashr exact i64 %sext.i54, 29
  %i.ek = getelementptr inbounds i8, ptr %i.y, i64 %i.ej ; 2 uses
  %i.el = load atomic volatile i64, ptr %i.ek monotonic, align 8
  %i.em = icmp eq i64 %i.el, %i.dy
  br i1 %i.em, label %bb.aa, label %.lr.ph.1

bb.aa:                                            ; preds = %.lr.ph
  store atomic volatile i64 %i.dz, ptr %i.ek monotonic, align 8
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %bb.aa, %.lr.ph
  %i.en = shl i64 %.sroa.062.0104, 32
  %sext.i54.1 = add i64 %i.en, 25769803776
  %i.eo = ashr exact i64 %sext.i54.1, 29
  %i.ep = getelementptr inbounds i8, ptr %i.y, i64 %i.eo ; 2 uses
  %i.eq = load atomic volatile i64, ptr %i.ep monotonic, align 8
  %i.er = icmp eq i64 %i.eq, %i.dy
  br i1 %i.er, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %.lr.ph.1
  store atomic volatile i64 %i.dz, ptr %i.ep monotonic, align 8
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.lr.ph.1
  %i.es = add nuw nsw i64 %.sroa.062.0104, 2      ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE6RehashENS0_16PtrComprCageBaseE(ptr noundef nonnull align 4 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %"class.v8::internal::WriteBarrierModeScope", align 4 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = or disjoint i64 %i.a, 1
  %i.c = and i64 %i.a, -262144
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = load i64, ptr %i.d, align 262144, !noalias !56 ; 2 uses
  %i.f = and i64 %i.e, 32
  %.not.i.i.i = icmp eq i64 %i.f, 0
  %i.g = and i64 %i.e, 24
  %.not7.i.i.i = icmp ne i64 %i.g, 0
  %i.h = and i1 %.not.i.i.i, %.not7.i.i.i
  %.1.i.i.i = select i1 %i.h, i32 1, i32 4
  call void @_ZN2v88internal21WriteBarrierModeScopeC1ENS0_6TaggedINS0_10HeapObjectEEENS0_16WriteBarrierModeE(ptr noundef nonnull align 4 dereferenceable(4) %1, i64 %i.b, i32 noundef %.1.i.i.i) #28
  %i.i = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 10624
  %i.k = load ptr, ptr %i.j, align 8              ; 3 uses
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = load i8, ptr %i.k, align 8, !range !16, !noundef !17
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 96
  br label %_ZNK2v88internal16HeapObjectLayout21EarlyGetReadOnlyRootsEv.exit

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.o = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN2v88internal18g_current_isolate_E)
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 55464
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = add i64 %i.r, -55464
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 648
  br label %_ZNK2v88internal16HeapObjectLayout21EarlyGetReadOnlyRootsEv.exit

_ZNK2v88internal16HeapObjectLayout21EarlyGetReadOnlyRootsEv.exit: ; preds = %bb.c, %bb.d
  %.sroa.0.0.i.i = phi ptr [ %i.u, %bb.d ], [ %i.n, %bb.c ] ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.w = load atomic volatile i64, ptr %i.v monotonic, align 8
  %.fr = freeze i64 %i.w                          ; 2 uses
  %i.x = lshr i64 %.fr, 32                        ; 5 uses
  %.not = icmp eq i64 %i.x, 0
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 8 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 1432 ; 2 uses
  br i1 %.not, label %._crit_edge, label %.preheader.us

.preheader.us:                                    ; preds = %_ZNK2v88internal16HeapObjectLayout21EarlyGetReadOnlyRootsEv.exit, %._crit_edge.us
  %.03589.us = phi i32 [ %i.cp, %._crit_edge.us ], [ 1, %_ZNK2v88internal16HeapObjectLayout21EarlyGetReadOnlyRootsEv.exit ] ; 4 uses
  %.not22.i.us = icmp samesign ugt i32 %.03589.us, 1 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.preheader.us, %bb.p
  %.188.us = phi i1 [ true, %.preheader.us ], [ %.4.us, %bb.p ] ; 3 uses
  %.sroa.067.086.us = phi i64 [ 0, %.preheader.us ], [ %.sroa.067.2.us, %bb.p ] ; 9 uses
  %i.ab = mul i64 %.sroa.067.086.us, 12884901888
  %sext.i.us = add i64 %i.ab, 17179869184
  %i.ac = ashr exact i64 %sext.i.us, 29
  %i.ad = getelementptr inbounds i8, ptr %i.y, i64 %i.ac
  %i.ae = load atomic volatile i64, ptr %i.ad monotonic, align 8 ; 5 uses
  %i.af = load i64, ptr %.sroa.0.0.i.i, align 8
  %i.ag = icmp eq i64 %i.ae, %i.af
  br i1 %i.ag, label %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread.us, label %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.us

_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.us: ; preds = %bb.e
  %i.ah = load i64, ptr %i.z, align 8
  %.not.us = icmp eq i64 %i.ae, %i.ah
  br i1 %.not.us, label %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread.us, label %bb.f

bb.f:                                             ; preds = %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.us
  %i.ai = and i64 %i.ae, 1
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ak = add nsw i64 %i.ae, -1
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %.0.copyload.i.i.i.i.i.i.i.us = load double, ptr %i.am, align 1
  br label %_ZN2v88internal25NumberDictionaryBaseShape13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i.us

bb.h:                                             ; preds = %bb.f
  %i.an = lshr i64 %i.ae, 32
  %i.ao = trunc nuw i64 %i.an to i32
  %i.ap = sitofp i32 %i.ao to double
  br label %_ZN2v88internal25NumberDictionaryBaseShape13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i.us

_ZN2v88internal25NumberDictionaryBaseShape13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i.us: ; preds = %bb.h, %bb.g
  %i.aq = phi double [ %i.ap, %bb.h ], [ %.0.copyload.i.i.i.i.i.i.i.us, %bb.g ]
  %i.ar = fptoui double %i.aq to i32
  %i.as = load i64, ptr %i.aa, align 8
  %i.at = add i64 %i.as, -1
  %i.au = inttoptr i64 %i.at to ptr
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = load i64, ptr %i.av, align 8
  %i.ax = call noundef i32 @_Z11halfsiphashjm(i32 noundef %i.ar, i64 noundef %i.aw) #28
  %i.ay = load atomic volatile i64, ptr %i.v monotonic, align 8
  %i.az = lshr i64 %i.ay, 32
  %i.ba = trunc nuw i64 %i.az to i32
  %i.bb = add i32 %i.ba, -1                       ; 2 uses
  %.sroa.0.0.in20.i.us = and i32 %i.bb, %i.ax     ; 2 uses
  %.sroa.0.021.i.us = zext i32 %.sroa.0.0.in20.i.us to i64 ; 2 uses
  br i1 %.not22.i.us, label %.lr.ph.i.us, label %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit.us

.lr.ph.i.us:                                      ; preds = %_ZN2v88internal25NumberDictionaryBaseShape13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i.us, %bb.i
  %.sroa.0.025.i.us = phi i64 [ %.sroa.0.0.i.us, %bb.i ], [ %.sroa.0.021.i.us, %_ZN2v88internal25NumberDictionaryBaseShape13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i.us ]
  %.sroa.0.0.in24.i.us = phi i32 [ %.sroa.0.0.in.i.us, %bb.i ], [ %.sroa.0.0.in20.i.us, %_ZN2v88internal25NumberDictionaryBaseShape13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i.us ]
  %.023.i.us = phi i32 [ %i.be, %bb.i ], [ 1, %_ZN2v88internal25NumberDictionaryBaseShape13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i.us ] ; 2 uses
  %i.bc = icmp eq i64 %.sroa.067.086.us, %.sroa.0.025.i.us
  br i1 %i.bc, label %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit.us, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.us
  %i.bd = add i32 %.023.i.us, %.sroa.0.0.in24.i.us
  %i.be = add nuw nsw i32 %.023.i.us, 1           ; 2 uses
  %.sroa.0.0.in.i.us = and i32 %i.bd, %i.bb       ; 2 uses
  %.sroa.0.0.i.us = zext i32 %.sroa.0.0.in.i.us to i64 ; 2 uses
  %exitcond.not.i.us = icmp eq i32 %i.be, %.03589.us
  br i1 %exitcond.not.i.us, label %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit.us, label %.lr.ph.i.us, !llvm.loop !61

_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit.us: ; preds = %.lr.ph.i.us, %bb.i, %_ZN2v88internal25NumberDictionaryBaseShape13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i.us
  %spec.select.i.us = phi i64 [ %.sroa.0.021.i.us, %_ZN2v88internal25NumberDictionaryBaseShape13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i.us ], [ %.sroa.0.0.i.us, %bb.i ], [ %.sroa.067.086.us, %.lr.ph.i.us ] ; 5 uses
  %i.bf = icmp eq i64 %.sroa.067.086.us, %spec.select.i.us
  br i1 %i.bf, label %bb.o, label %bb.j

bb.j:                                             ; preds = %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit.us
  %i.bg = mul i64 %spec.select.i.us, 12884901888
  %sext.i36.us = add i64 %i.bg, 17179869184
  %i.bh = ashr exact i64 %sext.i36.us, 29
  %i.bi = getelementptr inbounds i8, ptr %i.y, i64 %i.bh
  %i.bj = load atomic volatile i64, ptr %i.bi monotonic, align 8 ; 5 uses
  %i.bk = load i64, ptr %.sroa.0.0.i.i, align 8
  %i.bl = icmp eq i64 %i.bj, %i.bk
  br i1 %i.bl, label %.critedge.us, label %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit37.us

_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit37.us: ; preds = %bb.j
  %i.bm = load i64, ptr %i.z, align 8
  %.not83.us = icmp eq i64 %i.bj, %i.bm
  br i1 %.not83.us, label %.critedge.us, label %bb.k

bb.k:                                             ; preds = %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit37.us
  %i.bn = and i64 %i.bj, 1
  %i.bo = icmp eq i64 %i.bn, 0
  br i1 %i.bo, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bp = add nsw i64 %i.bj, -1
  %i.bq = inttoptr i64 %i.bp to ptr
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %.0.copyload.i.i.i.i.i.i.i38.us = load double, ptr %i.br, align 1
  br label %_ZN2v88internal25NumberDictionaryBaseShape13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i39.us

bb.m:                                             ; preds = %bb.k
  %i.bs = lshr i64 %i.bj, 32
  %i.bt = trunc nuw i64 %i.bs to i32
  %i.bu = sitofp i32 %i.bt to double
  br label %_ZN2v88internal25NumberDictionaryBaseShape13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i39.us

_ZN2v88internal25NumberDictionaryBaseShape13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i39.us: ; preds = %bb.m, %bb.l
  %i.bv = phi double [ %i.bu, %bb.m ], [ %.0.copyload.i.i.i.i.i.i.i38.us, %bb.l ]
  %i.bw = fptoui double %i.bv to i32
  %i.bx = load i64, ptr %i.aa, align 8
  %i.by = add i64 %i.bx, -1
end_hunk_0
begin_hunk_1_@_ZN2v88internal9HashTableINS0_9StringSetENS0_14StringSetShapeEE6RehashENS0_16PtrComprCageBaseE:bb.a
bb.m:                                             ; preds = %_ZN2v88internal9HashTableINS0_9StringSetENS0_14StringSetShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit37.us
  %i.bv = add i64 %i.br, -1
  %i.bw = inttoptr i64 %i.bv to ptr               ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load atomic i32, ptr %i.bx acquire, align 4 ; 4 uses
  %i.bz = and i32 %i.by, 1
  %i.ca = icmp eq i32 %i.bz, 0
  br i1 %i.ca, label %_ZN2v88internal14StringSetShape13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i38.us, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cb = and i32 %i.by, 3
  %i.cc = icmp eq i32 %i.cb, 1
  br i1 %i.cc, label %bb.p, label %bb.o, !prof !5

bb.o:                                             ; preds = %bb.n
  %i.cd = call noundef i32 @_ZN2v88internal6String20ComputeAndSetRawHashEv(ptr noundef nonnull align 4 dereferenceable(16) %i.bw) #28
  br label %_ZN2v88internal14StringSetShape13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i38.us

bb.p:                                             ; preds = %bb.n
  %i.ce = load ptr, ptr %.pre-phi, align 8        ; 4 uses
  %i.cf = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !16, !noundef !17
  %i.cg = trunc nuw i8 %i.cf to i1
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 55448
  %i.ci = load i8, ptr %i.ch, align 8, !range !16
  %i.cj = trunc nuw i8 %i.ci to i1
  %not..i.i.i54.us = xor i1 %i.cg, true
  %i.ck = select i1 %not..i.i.i54.us, i1 true, i1 %i.cj
  br i1 %i.ck, label %_ZNK2v88internal4Name29GetRawHashFromForwardingTableEj.exit58.us, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ce, i64 64088
  %i.cm = load i8, ptr %i.cl, align 8, !range !16, !noundef !17
  %i.cn = trunc nuw i8 %i.cm to i1
  br i1 %i.cn, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i55.us, label %.split101.us

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i55.us: ; preds = %bb.q
  %i.co = getelementptr inbounds nuw i8, ptr %i.ce, i64 64080
  %i.cp = load ptr, ptr %i.co, align 8
  br label %_ZNK2v88internal4Name29GetRawHashFromForwardingTableEj.exit58.us

_ZNK2v88internal4Name29GetRawHashFromForwardingTableEj.exit58.us: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i55.us, %bb.p
  %.pn.i.i56.us = phi ptr [ %i.cp, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i55.us ], [ %i.ce, %bb.p ]
  %i.cq = lshr i32 %i.by, 4
  %.in.i.i57.us = getelementptr inbounds nuw i8, ptr %.pn.i.i56.us, i64 58472
  %i.cr = load ptr, ptr %.in.i.i57.us, align 8
  %i.cs = call noundef i32 @_ZNK2v88internal21StringForwardingTable10GetRawHashENS0_16PtrComprCageBaseEi(ptr noundef nonnull align 8 dereferenceable(56) %i.cr, i32 noundef %i.cq) #28
  br label %_ZN2v88internal14StringSetShape13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i38.us

_ZN2v88internal14StringSetShape13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i38.us: ; preds = %_ZNK2v88internal4Name29GetRawHashFromForwardingTableEj.exit58.us, %bb.o, %bb.m
  %.0.i.i.i.i39.us = phi i32 [ %i.cd, %bb.o ], [ %i.cs, %_ZNK2v88internal4Name29GetRawHashFromForwardingTableEj.exit58.us ], [ %i.by, %bb.m ]
  %i.ct = lshr i32 %.0.i.i.i.i39.us, 2
  %i.cu = load atomic volatile i64, ptr %i.v monotonic, align 8
  %i.cv = lshr i64 %i.cu, 32
  %i.cw = trunc nuw i64 %i.cv to i32
  %i.cx = add i32 %i.cw, -1                       ; 2 uses
  %.sroa.0.0.in20.i40.us = and i32 %i.cx, %i.ct   ; 2 uses
  %.sroa.0.021.i41.us = zext nneg i32 %.sroa.0.0.in20.i40.us to i64 ; 2 uses
  br i1 %.not22.i.us, label %.lr.ph.i44.us, label %_ZN2v88internal9HashTableINS0_9StringSetENS0_14StringSetShapeEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit51.us

.lr.ph.i44.us:                                    ; preds = %_ZN2v88internal14StringSetShape13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i38.us, %bb.r
  %.sroa.0.025.i45.us = phi i64 [ %.sroa.0.0.i49.us, %bb.r ], [ %.sroa.0.021.i41.us, %_ZN2v88internal14StringSetShape13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i38.us ]
  %.sroa.0.0.in24.i46.us = phi i32 [ %.sroa.0.0.in.i48.us, %bb.r ], [ %.sroa.0.0.in20.i40.us, %_ZN2v88internal14StringSetShape13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i38.us ]
  %.023.i47.us = phi i32 [ %i.da, %bb.r ], [ 1, %_ZN2v88internal14StringSetShape13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i38.us ] ; 2 uses
  %i.cy = icmp eq i64 %spec.select.i.us, %.sroa.0.025.i45.us
  br i1 %i.cy, label %_ZN2v88internal9HashTableINS0_9StringSetENS0_14StringSetShapeEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit51.thread.us, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i44.us
  %i.cz = add i32 %.023.i47.us, %.sroa.0.0.in24.i46.us
  %i.da = add nuw nsw i32 %.023.i47.us, 1         ; 2 uses
  %.sroa.0.0.in.i48.us = and i32 %i.cz, %i.cx     ; 2 uses
  %.sroa.0.0.i49.us = zext i32 %.sroa.0.0.in.i48.us to i64 ; 2 uses
  %exitcond.not.i50.us = icmp eq i32 %i.da, %.03597.us
  br i1 %exitcond.not.i50.us, label %_ZN2v88internal9HashTableINS0_9StringSetENS0_14StringSetShapeEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit51.us, label %.lr.ph.i44.us, !llvm.loop !91

_ZN2v88internal9HashTableINS0_9StringSetENS0_14StringSetShapeEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit51.us: ; preds = %bb.r, %_ZN2v88internal14StringSetShape13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i38.us
  %spec.select.i43.us = phi i64 [ %.sroa.0.021.i41.us, %_ZN2v88internal14StringSetShape13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i38.us ], [ %.sroa.0.0.i49.us, %bb.r ]
  %.not90.us = icmp eq i64 %spec.select.i43.us, %spec.select.i.us
  br i1 %.not90.us, label %_ZN2v88internal9HashTableINS0_9StringSetENS0_14StringSetShapeEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit51.thread.us, label %.critedge.us

_ZN2v88internal9HashTableINS0_9StringSetENS0_14StringSetShapeEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit51.thread.us: ; preds = %.lr.ph.i44.us, %_ZN2v88internal9HashTableINS0_9StringSetENS0_14StringSetShapeEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit51.us
  %i.db = add i64 %.sroa.073.094.us, 1
  br label %_ZN2v88internal9HashTableINS0_9StringSetENS0_14StringSetShapeEE4SwapENS0_13InternalIndexES5_NS0_16WriteBarrierModeE.exit.us

.critedge.us:                                     ; preds = %_ZN2v88internal9HashTableINS0_9StringSetENS0_14StringSetShapeEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit51.us, %_ZN2v88internal9HashTableINS0_9StringSetENS0_14StringSetShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit37.us, %bb.l
  %i.dc = load i32, ptr %1, align 4
  %i.dd = load atomic volatile i64, ptr %i.ac monotonic, align 8 ; 5 uses
  %i.de = load atomic volatile i64, ptr %i.bq monotonic, align 8 ; 5 uses
  store atomic volatile i64 %i.de, ptr %i.ac monotonic, align 8
  %i.df = icmp sgt i32 %i.dc, 1                   ; 2 uses
  %i.dg = trunc i64 %i.de to i1
  %or.cond.i.i.i.i.i.i.us = select i1 %i.df, i1 %i.dg, i1 false
  br i1 %or.cond.i.i.i.i.i.i.us, label %bb.s, label %_ZN2v88internal9HashTableINS0_9StringSetENS0_14StringSetShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i.us

bb.s:                                             ; preds = %.critedge.us
  %i.dh = ptrtoint ptr %i.ac to i64               ; 2 uses
  %i.di = load i64, ptr %i.d, align 262144        ; 2 uses
  %i.dj = and i64 %i.di, 32
  %.not.i.i.i.i.i.i.i.us = icmp eq i64 %i.dj, 0
  %i.dk = and i64 %i.di, 25
  %.not37.i.i.i.i.i.i.i.us = icmp eq i64 %i.dk, 0
  br i1 %.not37.i.i.i.i.i.i.i.us, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.dl = and i64 %i.de, -262144
  %i.dm = inttoptr i64 %i.dl to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.us = load i64, ptr %i.dm, align 262144
  %i.dn = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.us, 25
  %.not38.i.i.i.i.i.i.i.us = icmp eq i64 %i.dn, 0
  br i1 %.not38.i.i.i.i.i.i.i.us, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.b, i64 noundef %i.dh, i64 %i.de) #28
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  br i1 %.not.i.i.i.i.i.i.i.us, label %_ZN2v88internal9HashTableINS0_9StringSetENS0_14StringSetShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i.us, label %bb.w, !prof !28

bb.w:                                             ; preds = %bb.v
  call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.b, i64 %i.dh, i64 %i.de) #28
  br label %_ZN2v88internal9HashTableINS0_9StringSetENS0_14StringSetShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i.us

_ZN2v88internal9HashTableINS0_9StringSetENS0_14StringSetShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i.us: ; preds = %bb.w, %bb.v, %.critedge.us
  store atomic volatile i64 %i.dd, ptr %i.bq monotonic, align 8
  %i.do = trunc i64 %i.dd to i1
  %or.cond.i.i.i.i.i35.i.us = select i1 %i.df, i1 %i.do, i1 false
  br i1 %or.cond.i.i.i.i.i35.i.us, label %bb.x, label %_ZN2v88internal9HashTableINS0_9StringSetENS0_14StringSetShapeEE4SwapENS0_13InternalIndexES5_NS0_16WriteBarrierModeE.exit.us

bb.x:                                             ; preds = %_ZN2v88internal9HashTableINS0_9StringSetENS0_14StringSetShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i.us
  %i.dp = ptrtoint ptr %i.bq to i64               ; 2 uses
  %i.dq = load i64, ptr %i.d, align 262144        ; 2 uses
  %i.dr = and i64 %i.dq, 32
  %.not.i.i.i.i.i.i36.i.us = icmp eq i64 %i.dr, 0
  %i.ds = and i64 %i.dq, 25
  %.not37.i.i.i.i.i.i37.i.us = icmp eq i64 %i.ds, 0
  br i1 %.not37.i.i.i.i.i.i37.i.us, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.dt = and i64 %i.dd, -262144
  %i.du = inttoptr i64 %i.dt to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i38.i.us = load i64, ptr %i.du, align 262144
  %i.dv = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i38.i.us, 25
  %.not38.i.i.i.i.i.i39.i.us = icmp eq i64 %i.dv, 0
  br i1 %.not38.i.i.i.i.i.i39.i.us, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.b, i64 noundef %i.dp, i64 %i.dd) #28
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x
  br i1 %.not.i.i.i.i.i.i36.i.us, label %_ZN2v88internal9HashTableINS0_9StringSetENS0_14StringSetShapeEE4SwapENS0_13InternalIndexES5_NS0_16WriteBarrierModeE.exit.us, label %bb.ab, !prof !28

bb.ab:                                            ; preds = %bb.aa
  call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.b, i64 %i.dp, i64 %i.dd) #28
  br label %_ZN2v88internal9HashTableINS0_9StringSetENS0_14StringSetShapeEE4SwapENS0_13InternalIndexES5_NS0_16WriteBarrierModeE.exit.us

bb.ac:                                            ; preds = %_ZN2v88internal9HashTableINS0_9StringSetENS0_14StringSetShapeEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit.us
  %i.dw = add nuw nsw i64 %.sroa.073.094.us, 1
  br label %_ZN2v88internal9HashTableINS0_9StringSetENS0_14StringSetShapeEE4SwapENS0_13InternalIndexES5_NS0_16WriteBarrierModeE.exit.us, !llvm.loop !92

_ZN2v88internal9HashTableINS0_9StringSetENS0_14StringSetShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread.us: ; preds = %_ZN2v88internal9HashTableINS0_9StringSetENS0_14StringSetShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.us, %bb.e
  %i.dx = add nuw i64 %.sroa.073.094.us, 1
  br label %_ZN2v88internal9HashTableINS0_9StringSetENS0_14StringSetShapeEE4SwapENS0_13InternalIndexES5_NS0_16WriteBarrierModeE.exit.us, !llvm.loop !92

_ZN2v88internal9HashTableINS0_9StringSetENS0_14StringSetShapeEE4SwapENS0_13InternalIndexES5_NS0_16WriteBarrierModeE.exit.us: ; preds = %_ZN2v88internal9HashTableINS0_9StringSetENS0_14StringSetShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread.us, %bb.ac, %bb.ab, %bb.aa, %_ZN2v88internal9HashTableINS0_9StringSetENS0_14StringSetShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i.us, %_ZN2v88internal9HashTableINS0_9StringSetENS0_14StringSetShapeEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit51.thread.us
  %.sroa.073.2.us = phi i64 [ %i.dx, %_ZN2v88internal9HashTableINS0_9StringSetENS0_14StringSetShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread.us ], [ %i.dw, %bb.ac ], [ %i.db, %_ZN2v88internal9HashTableINS0_9StringSetENS0_14StringSetShapeEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit51.thread.us ], [ %.sroa.073.094.us, %_ZN2v88internal9HashTableINS0_9StringSetENS0_14StringSetShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i.us ], [ %.sroa.073.094.us, %bb.aa ], [ %.sroa.073.094.us, %bb.ab ] ; 2 uses
  %.4.us = phi i1 [ %.196.us, %_ZN2v88internal9HashTableINS0_9StringSetENS0_14StringSetShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread.us ], [ %.196.us, %bb.ac ], [ false, %_ZN2v88internal9HashTableINS0_9StringSetENS0_14StringSetShapeEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit51.thread.us ], [ %.196.us, %_ZN2v88internal9HashTableINS0_9StringSetENS0_14StringSetShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i.us ], [ %.196.us, %bb.aa ], [ %.196.us, %bb.ab ] ; 2 uses
  %i.dy = icmp ult i64 %.sroa.073.2.us, %i.x
  br i1 %i.dy, label %bb.e, label %._crit_edge.us

._crit_edge.us:                                   ; preds = %_ZN2v88internal9HashTableINS0_9StringSetENS0_14StringSetShapeEE4SwapENS0_13InternalIndexES5_NS0_16WriteBarrierModeE.exit.us
  %i.dz = add nuw nsw i32 %.03597.us, 1
  br i1 %.4.us, label %.split.us, label %.preheader.us, !llvm.loop !93

.split.us:                                        ; preds = %._crit_edge.us
  %i.ea = load i64, ptr %i.z, align 8             ; 3 uses
  %i.eb = load i64, ptr %.sroa.0.0.i.i, align 8   ; 3 uses
  %i.ec = icmp eq i64 %i.x, 1
  br i1 %i.ec, label %.lr.ph.epil.preheader, label %.split.us.new

.split.us.new:                                    ; preds = %.split.us
  %unroll_iter = and i64 %i.x, 4294967294
  br label %.lr.ph

.split99.us:                                      ; preds = %bb.j
  call void @_ZSt27__throw_bad_optional_accessv() #30
  unreachable

.split101.us:                                     ; preds = %bb.q
  call void @_ZSt27__throw_bad_optional_accessv() #30
  unreachable

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.ag
  %i.ed = and i64 %.fr, 4294967296
  %lcmp.mod.not = icmp eq i64 %i.ed, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.split.us
  %.sroa.061.0103.epil.init = phi i64 [ 0, %.split.us ], [ %i.eu, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod110 = trunc i64 %i.x to i1
  call void @llvm.assume(i1 %lcmp.mod110)
  %i.ee = shl i64 %.sroa.061.0103.epil.init, 32
  %sext.i53.epil = add i64 %i.ee, 12884901888
  %i.ef = ashr exact i64 %sext.i53.epil, 29
  %i.eg = getelementptr inbounds i8, ptr %i.y, i64 %i.ef ; 2 uses
  %i.eh = load atomic volatile i64, ptr %i.eg monotonic, align 8
  %i.ei = icmp eq i64 %i.eh, %i.ea
  br i1 %i.ei, label %bb.ad, label %._crit_edge

bb.ad:                                            ; preds = %.lr.ph.epil.preheader
  store atomic volatile i64 %i.eb, ptr %i.eg monotonic, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.ad, %.lr.ph.epil.preheader, %_ZNK2v88internal16HeapObjectLayout21EarlyGetReadOnlyRootsEv.exit
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 24
  store atomic volatile i64 0, ptr %i.ej monotonic, align 8
  call void @_ZN2v88internal21WriteBarrierModeScopeD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %1) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  ret void

.lr.ph:                                           ; preds = %bb.ag, %.split.us.new
  %.sroa.061.0103 = phi i64 [ 0, %.split.us.new ], [ %i.eu, %bb.ag ] ; 3 uses
  %niter = phi i64 [ 0, %.split.us.new ], [ %niter.next.1, %bb.ag ]
  %i.ek = shl i64 %.sroa.061.0103, 32
  %sext.i53 = add i64 %i.ek, 12884901888
  %i.el = ashr exact i64 %sext.i53, 29
  %i.em = getelementptr inbounds i8, ptr %i.y, i64 %i.el ; 2 uses
  %i.en = load atomic volatile i64, ptr %i.em monotonic, align 8
  %i.eo = icmp eq i64 %i.en, %i.ea
  br i1 %i.eo, label %bb.ae, label %.lr.ph.1

bb.ae:                                            ; preds = %.lr.ph
  store atomic volatile i64 %i.eb, ptr %i.em monotonic, align 8
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %bb.ae, %.lr.ph
  %i.ep = shl i64 %.sroa.061.0103, 32
  %sext.i53.1 = add i64 %i.ep, 17179869184
  %i.eq = ashr exact i64 %sext.i53.1, 29
  %i.er = getelementptr inbounds i8, ptr %i.y, i64 %i.eq ; 2 uses
  %i.es = load atomic volatile i64, ptr %i.er monotonic, align 8
  %i.et = icmp eq i64 %i.es, %i.ea
  br i1 %i.et, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %.lr.ph.1
  store atomic volatile i64 %i.eb, ptr %i.er monotonic, align 8
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %.lr.ph.1
  %i.eu = add nuw nsw i64 %.sroa.061.0103, 2      ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef zeroext i1 @_ZN2v88internal9HashTableINS0_9StringSetENS0_14StringSetShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE(ptr %0, i64 %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = icmp eq i64 %1, %i.a
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8
  %i.e = icmp ne i64 %1, %i.d
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = phi i1 [ false, %bb.a ], [ %i.e, %bb.b ]
  ret i1 %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden i64 @_ZN2v88internal9HashTableINS0_9StringSetENS0_14StringSetShapeEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr %1, i64 %2, i32 noundef %3, i64 %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = add i64 %2, -1
  %i.b = inttoptr i64 %i.a to ptr                 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load atomic i32, ptr %i.c acquire, align 4 ; 4 uses
  %i.e = and i32 %i.d, 1
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %_ZN2v88internal14StringSetShape13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = and i32 %i.d, 3
  %i.h = icmp eq i32 %i.g, 1
  br i1 %i.h, label %bb.c, label %bb.d, !prof !5

bb.c:                                             ; preds = %bb.b
  %i.i = tail call noundef i32 @_ZNK2v88internal4Name29GetRawHashFromForwardingTableEj(ptr noundef nonnull align 4 dereferenceable(12) %i.b, i32 noundef %i.d)
  br label %_ZN2v88internal14StringSetShape13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit

bb.d:                                             ; preds = %bb.b
  %i.j = tail call noundef i32 @_ZN2v88internal6String20ComputeAndSetRawHashEv(ptr noundef nonnull align 4 dereferenceable(16) %i.b) #28
  br label %_ZN2v88internal14StringSetShape13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit

_ZN2v88internal14StringSetShape13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.a, %bb.c, %bb.d
  %.0.i.i.i = phi i32 [ %i.j, %bb.d ], [ %i.i, %bb.c ], [ %i.d, %bb.a ]
  %i.k = lshr i32 %.0.i.i.i, 2
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load atomic volatile i64, ptr %i.l monotonic, align 8
  %i.n = lshr i64 %i.m, 32
  %i.o = trunc nuw i64 %i.n to i32
  %i.p = add i32 %i.o, -1                         ; 2 uses
  %.sroa.0.0.in20 = and i32 %i.k, %i.p            ; 2 uses
  %.sroa.0.021 = zext nneg i32 %.sroa.0.0.in20 to i64 ; 2 uses
  %.not22 = icmp sgt i32 %3, 1
  br i1 %.not22, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN2v88internal14StringSetShape13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit, %bb.e
  %.sroa.0.025 = phi i64 [ %.sroa.0.0, %bb.e ], [ %.sroa.0.021, %_ZN2v88internal14StringSetShape13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit ]
  %.sroa.0.0.in24 = phi i32 [ %.sroa.0.0.in, %bb.e ], [ %.sroa.0.0.in20, %_ZN2v88internal14StringSetShape13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit ]
  %.023 = phi i32 [ %i.s, %bb.e ], [ 1, %_ZN2v88internal14StringSetShape13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit ] ; 2 uses
  %i.q = icmp eq i64 %4, %.sroa.0.025
  br i1 %i.q, label %._crit_edge, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.r = add i32 %.023, %.sroa.0.0.in24
  %i.s = add nuw nsw i32 %.023, 1                 ; 2 uses
  %.sroa.0.0.in = and i32 %i.r, %i.p              ; 2 uses
  %.sroa.0.0 = zext i32 %.sroa.0.0.in to i64      ; 2 uses
  %exitcond.not = icmp eq i32 %i.s, %3
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !91

._crit_edge:                                      ; preds = %bb.e, %.lr.ph, %_ZN2v88internal14StringSetShape13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit
  %spec.select = phi i64 [ %.sroa.0.021, %_ZN2v88internal14StringSetShape13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit ], [ %4, %.lr.ph ], [ %.sroa.0.0, %bb.e ]
  ret i64 %spec.select
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN2v88internal9HashTableINS0_9StringSetENS0_14StringSetShapeEE4SwapENS0_13InternalIndexES5_NS0_16WriteBarrierModeE(ptr noundef nonnull align 4 dereferenceable(16) %0, i64 %1, i64 %2, i32 noundef %3) local_unnamed_addr #0 comdat align 2 {
.preheader:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = shl i64 %1, 32
  %sext41 = add i64 %i.b, 12884901888
  %i.c = ashr exact i64 %sext41, 29
  %i.d = getelementptr inbounds i8, ptr %i.a, i64 %i.c ; 3 uses
  %i.e = load atomic volatile i64, ptr %i.d monotonic, align 8 ; 5 uses
  %i.f = shl i64 %2, 32
  %sext = add i64 %i.f, 12884901888
  %i.g = ashr exact i64 %sext, 29
  %i.h = getelementptr inbounds i8, ptr %i.a, i64 %i.g ; 3 uses
  %i.i = load atomic volatile i64, ptr %i.h monotonic, align 8 ; 5 uses
  store atomic volatile i64 %i.i, ptr %i.d monotonic, align 8
  %i.j = icmp sgt i32 %3, 1                       ; 2 uses
  %i.k = trunc i64 %i.i to i1
  %or.cond.i.i.i.i.i = select i1 %i.j, i1 %i.k, i1 false
  br i1 %or.cond.i.i.i.i.i, label %bb.a, label %_ZN2v88internal9HashTableINS0_9StringSetENS0_14StringSetShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

bb.a:                                             ; preds = %.preheader
  %i.l = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.m = or disjoint i64 %i.l, 1                  ; 2 uses
  %i.n = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.o = and i64 %i.l, -262144
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load i64, ptr %i.p, align 262144         ; 2 uses
  %i.r = and i64 %i.q, 32
  %.not.i.i.i.i.i.i = icmp eq i64 %i.r, 0
  %i.s = and i64 %i.q, 25
  %.not37.i.i.i.i.i.i = icmp eq i64 %i.s, 0
  br i1 %.not37.i.i.i.i.i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.t = and i64 %i.i, -262144
  %i.u = inttoptr i64 %i.t to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.u, align 262144
  %i.v = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, 25
  %.not38.i.i.i.i.i.i = icmp eq i64 %i.v, 0
  br i1 %.not38.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.m, i64 noundef %i.n, i64 %i.i) #28
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  br i1 %.not.i.i.i.i.i.i, label %_ZN2v88internal9HashTableINS0_9StringSetENS0_14StringSetShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit, label %bb.e, !prof !28

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.m, i64 %i.n, i64 %i.i) #28
  br label %_ZN2v88internal9HashTableINS0_9StringSetENS0_14StringSetShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

_ZN2v88internal9HashTableINS0_9StringSetENS0_14StringSetShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit: ; preds = %.preheader, %bb.d, %bb.e
  store atomic volatile i64 %i.e, ptr %i.h monotonic, align 8
  %i.w = trunc i64 %i.e to i1
  %or.cond.i.i.i.i.i35 = select i1 %i.j, i1 %i.w, i1 false
  br i1 %or.cond.i.i.i.i.i35, label %bb.f, label %_ZN2v88internal9HashTableINS0_9StringSetENS0_14StringSetShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit40

bb.f:                                             ; preds = %_ZN2v88internal9HashTableINS0_9StringSetENS0_14StringSetShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit
  %i.x = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.y = or disjoint i64 %i.x, 1                  ; 2 uses
  %i.z = ptrtoint ptr %i.h to i64                 ; 2 uses
  %i.aa = and i64 %i.x, -262144
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = load i64, ptr %i.ab, align 262144       ; 2 uses
  %i.ad = and i64 %i.ac, 32
  %.not.i.i.i.i.i.i36 = icmp eq i64 %i.ad, 0
  %i.ae = and i64 %i.ac, 25
  %.not37.i.i.i.i.i.i37 = icmp eq i64 %i.ae, 0
  br i1 %.not37.i.i.i.i.i.i37, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.af = and i64 %i.e, -262144
  %i.ag = inttoptr i64 %i.af to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i38 = load i64, ptr %i.ag, align 262144
  %i.ah = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i38, 25
  %.not38.i.i.i.i.i.i39 = icmp eq i64 %i.ah, 0
  br i1 %.not38.i.i.i.i.i.i39, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.y, i64 noundef %i.z, i64 %i.e) #28
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  br i1 %.not.i.i.i.i.i.i36, label %_ZN2v88internal9HashTableINS0_9StringSetENS0_14StringSetShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit40, label %bb.j, !prof !28

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.y, i64 %i.z, i64 %i.e) #28
  br label %_ZN2v88internal9HashTableINS0_9StringSetENS0_14StringSetShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit40

_ZN2v88internal9HashTableINS0_9StringSetENS0_14StringSetShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit40: ; preds = %_ZN2v88internal9HashTableINS0_9StringSetENS0_14StringSetShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit, %bb.i, %bb.j
  ret void
}

end_hunk_1
begin_hunk_2_@_ZN2v88internal9HashTableINS0_9StringSetENS0_14StringSetShapeEE11SlotToIndexEmm:bb.a
  ret i32 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef zeroext i1 @_ZN2v88internal9HashTableINS0_9StringSetENS0_14StringSetShapeEE26HasSufficientCapacityToAddEi(ptr noundef nonnull align 4 dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load atomic volatile i64, ptr %i.a monotonic, align 8
  %i.c = lshr i64 %i.b, 32
  %i.d = trunc nuw i64 %i.c to i32                ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load atomic volatile i64, ptr %i.e monotonic, align 8
  %i.g = lshr i64 %i.f, 32
  %i.h = trunc nuw i64 %i.g to i32
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load atomic volatile i64, ptr %i.i monotonic, align 8
  %i.k = add nsw i32 %1, %i.h                     ; 4 uses
  %i.l = icmp slt i32 %i.k, %i.d
  br i1 %i.l, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.m = lshr i64 %i.j, 32
  %i.n = trunc nuw i64 %i.m to i32
  %i.o = sub nsw i32 %i.d, %i.k
  %i.p = lshr i32 %i.o, 1
  %.not.i = icmp slt i32 %i.p, %i.n
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = sdiv i32 %i.k, 2
  %i.r = add nsw i32 %i.q, %i.k
  %.not15.i = icmp sgt i32 %i.r, %i.d
  br i1 %.not15.i, label %bb.d, label %_ZN2v88internal9HashTableINS0_9StringSetENS0_14StringSetShapeEE26HasSufficientCapacityToAddEiiii.exit

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  br label %_ZN2v88internal9HashTableINS0_9StringSetENS0_14StringSetShapeEE26HasSufficientCapacityToAddEiiii.exit

_ZN2v88internal9HashTableINS0_9StringSetENS0_14StringSetShapeEE26HasSufficientCapacityToAddEiiii.exit: ; preds = %bb.c, %bb.d
  %.1.i = phi i1 [ false, %bb.d ], [ true, %bb.c ]
  ret i1 %.1.i
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef zeroext i1 @_ZN2v88internal9HashTableINS0_9StringSetENS0_14StringSetShapeEE26HasSufficientCapacityToAddEiiii(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = add nsw i32 %3, %1                       ; 4 uses
  %i.b = icmp slt i32 %i.a, %0
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = sub nsw i32 %0, %i.a
  %i.d = lshr i32 %i.c, 1
  %.not = icmp sgt i32 %2, %i.d
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = sdiv i32 %i.a, 2
  %i.f = add nsw i32 %i.e, %i.a
  %.not15 = icmp sgt i32 %i.f, %0
  br i1 %.not15, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.1 = phi i1 [ false, %bb.d ], [ true, %bb.c ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden i64 @_ZN2v88internal9HashTableINS0_9StringSetENS0_14StringSetShapeEE18FindInsertionEntryENS0_16PtrComprCageBaseENS0_13ReadOnlyRootsEj(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load atomic volatile i64, ptr %i.a monotonic, align 8
  %i.c = lshr i64 %i.b, 32
  %i.d = trunc nuw i64 %i.c to i32
  %i.e = add i32 %i.d, -1                         ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.09.0.in12 = and i32 %2, %i.e             ; 2 uses
  %.sroa.09.013 = zext i32 %.sroa.09.0.in12 to i64 ; 3 uses
  %i.g = shl nuw i64 %.sroa.09.013, 32
  %sext.i14 = add i64 %i.g, 12884901888
  %i.h = ashr exact i64 %sext.i14, 29
  %i.i = getelementptr inbounds i8, ptr %i.f, i64 %i.h
  %i.j = load atomic volatile i64, ptr %i.i monotonic, align 8 ; 2 uses
  %i.k = load i64, ptr %1, align 8                ; 2 uses
  %i.l = icmp eq i64 %i.j, %i.k
  br i1 %i.l, label %_ZN2v88internal9HashTableINS0_9StringSetENS0_14StringSetShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread, label %_ZN2v88internal9HashTableINS0_9StringSetENS0_14StringSetShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.lr.ph

_ZN2v88internal9HashTableINS0_9StringSetENS0_14StringSetShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.lr.ph: ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load i64, ptr %i.m, align 8              ; 2 uses
  %.not21 = icmp eq i64 %i.j, %i.n
  br i1 %.not21, label %_ZN2v88internal9HashTableINS0_9StringSetENS0_14StringSetShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread, label %.lr.ph

_ZN2v88internal9HashTableINS0_9StringSetENS0_14StringSetShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %.lr.ph
  %i.o = add i32 %.01523, 1
  %.not = icmp eq i64 %i.t, %i.n
  br i1 %.not, label %_ZN2v88internal9HashTableINS0_9StringSetENS0_14StringSetShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread, label %.lr.ph, !llvm.loop !94

._ZN2v88internal9HashTableINS0_9StringSetENS0_14StringSetShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread.loopexit_crit_edge: ; preds = %.lr.ph
  br label %_ZN2v88internal9HashTableINS0_9StringSetENS0_14StringSetShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread, !llvm.loop !94

_ZN2v88internal9HashTableINS0_9StringSetENS0_14StringSetShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread: ; preds = %_ZN2v88internal9HashTableINS0_9StringSetENS0_14StringSetShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit, %_ZN2v88internal9HashTableINS0_9StringSetENS0_14StringSetShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.lr.ph, %._ZN2v88internal9HashTableINS0_9StringSetENS0_14StringSetShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread.loopexit_crit_edge, %bb.a
  %.sroa.09.0.lcssa = phi i64 [ %.sroa.09.013, %bb.a ], [ %.sroa.09.013, %_ZN2v88internal9HashTableINS0_9StringSetENS0_14StringSetShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.lr.ph ], [ %.sroa.09.0, %._ZN2v88internal9HashTableINS0_9StringSetENS0_14StringSetShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread.loopexit_crit_edge ], [ %.sroa.09.0, %_ZN2v88internal9HashTableINS0_9StringSetENS0_14StringSetShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit ]
  ret i64 %.sroa.09.0.lcssa

.lr.ph:                                           ; preds = %_ZN2v88internal9HashTableINS0_9StringSetENS0_14StringSetShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.lr.ph, %_ZN2v88internal9HashTableINS0_9StringSetENS0_14StringSetShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit
  %.01523 = phi i32 [ %i.o, %_ZN2v88internal9HashTableINS0_9StringSetENS0_14StringSetShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit ], [ 1, %_ZN2v88internal9HashTableINS0_9StringSetENS0_14StringSetShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.lr.ph ] ; 2 uses
  %.sroa.09.0.in1622 = phi i32 [ %.sroa.09.0.in, %_ZN2v88internal9HashTableINS0_9StringSetENS0_14StringSetShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit ], [ %.sroa.09.0.in12, %_ZN2v88internal9HashTableINS0_9StringSetENS0_14StringSetShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.lr.ph ]
  %i.p = add i32 %.sroa.09.0.in1622, %.01523
  %.sroa.09.0.in = and i32 %i.p, %i.e             ; 2 uses
  %.sroa.09.0 = zext i32 %.sroa.09.0.in to i64    ; 3 uses
  %i.q = shl nuw i64 %.sroa.09.0, 32
  %sext.i = add i64 %i.q, 12884901888
  %i.r = ashr exact i64 %sext.i, 29
  %i.s = getelementptr inbounds i8, ptr %i.f, i64 %i.r
  %i.t = load atomic volatile i64, ptr %i.s monotonic, align 8 ; 2 uses
  %i.u = icmp eq i64 %i.t, %i.k
  br i1 %i.u, label %._ZN2v88internal9HashTableINS0_9StringSetENS0_14StringSetShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread.loopexit_crit_edge, label %_ZN2v88internal9HashTableINS0_9StringSetENS0_14StringSetShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit, !llvm.loop !94
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef i32 @_ZN2v88internal9HashTableINS0_9StringSetENS0_14StringSetShapeEE25ComputeCapacityWithShrinkEjj(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = lshr i32 %0, 2
  %i.b = icmp ugt i32 %1, %i.a
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = lshr i32 %1, 1
  %i.d = add nuw nsw i32 %i.c, %1
  %spec.select.i.i = tail call i32 @llvm.usub.sat.i32(i32 %i.d, i32 1) ; 2 uses
  %i.e = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %spec.select.i.i, i1 false)
  %i.f = sub nuw nsw i32 32, %i.e
  %i.g = shl nuw i32 1, %i.f
  %i.h = tail call noundef i32 @llvm.umax.i32(i32 %i.g, i32 4)
  %i.i = icmp samesign ult i32 %spec.select.i.i, 8
  %. = select i1 %i.i, i32 %0, i32 %i.h
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.1 = phi i32 [ %., %bb.b ], [ %0, %bb.a ]
  ret i32 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN2v88internal9HashTableINS0_9StringSetENS0_14StringSetShapeEE6RehashENS0_16PtrComprCageBaseENS0_6TaggedIS2_EE(ptr noundef nonnull align 4 dereferenceable(16) %0, i64 %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::WriteBarrierModeScope", align 4 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.a = add i64 %1, -1                           ; 4 uses
  %i.b = or disjoint i64 %i.a, 1                  ; 3 uses
  %i.c = and i64 %i.a, -262144
  %i.d = inttoptr i64 %i.c to ptr                 ; 2 uses
  %i.e = load i64, ptr %i.d, align 262144, !noalias !95 ; 2 uses
  %i.f = and i64 %i.e, 32
  %.not.i.i.i = icmp eq i64 %i.f, 0
  %i.g = and i64 %i.e, 24
  %.not7.i.i.i = icmp ne i64 %i.g, 0
  %i.h = and i1 %.not.i.i.i, %.not7.i.i.i
  %.1.i.i.i = select i1 %i.h, i32 1, i32 4
  call void @_ZN2v88internal21WriteBarrierModeScopeC1ENS0_6TaggedINS0_10HeapObjectEEENS0_16WriteBarrierModeE(ptr noundef nonnull align 4 dereferenceable(4) %2, i64 %i.b, i32 noundef %.1.i.i.i) #28
  %i.i = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 10624
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 96 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load atomic volatile i64, ptr %i.m monotonic, align 8
  %i.o = lshr i64 %i.n, 32                        ; 2 uses
  %.not43 = icmp eq i64 %i.o, 0
  br i1 %.not43, label %.._crit_edge_crit_edge, label %.lr.ph

.._crit_edge_crit_edge:                           ; preds = %bb.a
  %.pre = inttoptr i64 %i.a to ptr
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 104 ; 2 uses
  %i.r = inttoptr i64 %i.a to ptr                 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 3 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN2v88internal9HashTableINS0_9StringSetENS0_14StringSetShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit, %.._crit_edge_crit_edge
  %.pre-phi = phi ptr [ %.pre, %.._crit_edge_crit_edge ], [ %i.r, %_ZN2v88internal9HashTableINS0_9StringSetENS0_14StringSetShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load atomic volatile i64, ptr %i.u monotonic, align 8
  %i.w = and i64 %i.v, -4294967296
  %i.x = getelementptr inbounds nuw i8, ptr %.pre-phi, i64 16
  store atomic volatile i64 %i.w, ptr %i.x monotonic, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %.pre-phi, i64 24
  store atomic volatile i64 0, ptr %i.y monotonic, align 8
  call void @_ZN2v88internal21WriteBarrierModeScopeD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN2v88internal9HashTableINS0_9StringSetENS0_14StringSetShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit
  %.sroa.032.044 = phi i64 [ 0, %.lr.ph ], [ %i.by, %_ZN2v88internal9HashTableINS0_9StringSetENS0_14StringSetShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit ] ; 2 uses
  %i.z = shl i64 %.sroa.032.044, 32
  %sext = add i64 %i.z, 12884901888
  %i.aa = ashr exact i64 %sext, 29
  %i.ab = getelementptr inbounds i8, ptr %i.p, i64 %i.aa ; 2 uses
  %i.ac = load atomic volatile i64, ptr %i.ab monotonic, align 8 ; 3 uses
  %i.ad = load i64, ptr %i.l, align 8
  %i.ae = icmp eq i64 %i.ac, %i.ad
  br i1 %i.ae, label %_ZN2v88internal9HashTableINS0_9StringSetENS0_14StringSetShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit, label %_ZN2v88internal9HashTableINS0_9StringSetENS0_14StringSetShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit

_ZN2v88internal9HashTableINS0_9StringSetENS0_14StringSetShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.b
  %i.af = load i64, ptr %i.q, align 8
  %.not42 = icmp eq i64 %i.ac, %i.af
  br i1 %.not42, label %_ZN2v88internal9HashTableINS0_9StringSetENS0_14StringSetShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit, label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal9HashTableINS0_9StringSetENS0_14StringSetShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit
  %i.ag = add i64 %i.ac, -1
  %i.ah = inttoptr i64 %i.ag to ptr               ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load atomic i32, ptr %i.ai acquire, align 4 ; 4 uses
  %i.ak = and i32 %i.aj, 1
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %_ZN2v88internal14StringSetShape13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.am = and i32 %i.aj, 3
  %i.an = icmp eq i32 %i.am, 1
  br i1 %i.an, label %bb.e, label %bb.f, !prof !5

bb.e:                                             ; preds = %bb.d
  %i.ao = call noundef i32 @_ZNK2v88internal4Name29GetRawHashFromForwardingTableEj(ptr noundef nonnull align 4 dereferenceable(12) %i.ah, i32 noundef %i.aj)
  br label %_ZN2v88internal14StringSetShape13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit

bb.f:                                             ; preds = %bb.d
  %i.ap = call noundef i32 @_ZN2v88internal6String20ComputeAndSetRawHashEv(ptr noundef nonnull align 4 dereferenceable(16) %i.ah) #28
  br label %_ZN2v88internal14StringSetShape13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit

_ZN2v88internal14StringSetShape13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.c, %bb.e, %bb.f
  %.0.i.i.i = phi i32 [ %i.ap, %bb.f ], [ %i.ao, %bb.e ], [ %i.aj, %bb.c ]
  %i.aq = lshr i32 %.0.i.i.i, 2
  %i.ar = load atomic volatile i64, ptr %i.s monotonic, align 8
  %i.as = lshr i64 %i.ar, 32
  %i.at = trunc nuw i64 %i.as to i32
  %i.au = add i32 %i.at, -1                       ; 2 uses
  %.sroa.09.0.in12.i = and i32 %i.au, %i.aq       ; 3 uses
  %.sroa.09.013.i = zext nneg i32 %.sroa.09.0.in12.i to i64
  %i.av = shl nuw nsw i64 %.sroa.09.013.i, 3
  %i.aw = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.ay = load atomic volatile i64, ptr %i.ax monotonic, align 8 ; 2 uses
  %i.az = load i64, ptr %i.l, align 8             ; 2 uses
  %i.ba = icmp eq i64 %i.ay, %i.az
  br i1 %i.ba, label %_ZN2v88internal9HashTableINS0_9StringSetENS0_14StringSetShapeEE18FindInsertionEntryENS0_16PtrComprCageBaseENS0_13ReadOnlyRootsEj.exit, label %_ZN2v88internal9HashTableINS0_9StringSetENS0_14StringSetShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.lr.ph.i

_ZN2v88internal9HashTableINS0_9StringSetENS0_14StringSetShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.lr.ph.i: ; preds = %_ZN2v88internal14StringSetShape13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit
  %i.bb = load i64, ptr %i.q, align 8
  br label %_ZN2v88internal9HashTableINS0_9StringSetENS0_14StringSetShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i

_ZN2v88internal9HashTableINS0_9StringSetENS0_14StringSetShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %bb.g, %_ZN2v88internal9HashTableINS0_9StringSetENS0_14StringSetShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.lr.ph.i
  %i.bc = phi i64 [ %i.ay, %_ZN2v88internal9HashTableINS0_9StringSetENS0_14StringSetShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.lr.ph.i ], [ %i.bi, %bb.g ]
  %.sroa.09.0.in16.i = phi i32 [ %.sroa.09.0.in12.i, %_ZN2v88internal9HashTableINS0_9StringSetENS0_14StringSetShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.lr.ph.i ], [ %.sroa.09.0.in.i, %bb.g ] ; 2 uses
  %.015.i = phi i32 [ 1, %_ZN2v88internal9HashTableINS0_9StringSetENS0_14StringSetShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.lr.ph.i ], [ %i.bd, %bb.g ] ; 2 uses
  %.not.i = icmp eq i64 %i.bc, %i.bb
  br i1 %.not.i, label %_ZN2v88internal9HashTableINS0_9StringSetENS0_14StringSetShapeEE18FindInsertionEntryENS0_16PtrComprCageBaseENS0_13ReadOnlyRootsEj.exit, label %bb.g

bb.g:                                             ; preds = %_ZN2v88internal9HashTableINS0_9StringSetENS0_14StringSetShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i
  %i.bd = add i32 %.015.i, 1
  %i.be = add i32 %.015.i, %.sroa.09.0.in16.i
  %.sroa.09.0.in.i = and i32 %i.be, %i.au         ; 3 uses
  %.sroa.09.0.i = zext i32 %.sroa.09.0.in.i to i64
  %i.bf = shl nuw i64 %.sroa.09.0.i, 32
  %sext.i.i = add i64 %i.bf, 12884901888
  %i.bg = ashr exact i64 %sext.i.i, 29
  %i.bh = getelementptr inbounds i8, ptr %i.t, i64 %i.bg
  %i.bi = load atomic volatile i64, ptr %i.bh monotonic, align 8 ; 2 uses
  %i.bj = icmp eq i64 %i.bi, %i.az
  br i1 %i.bj, label %_ZN2v88internal9HashTableINS0_9StringSetENS0_14StringSetShapeEE18FindInsertionEntryENS0_16PtrComprCageBaseENS0_13ReadOnlyRootsEj.exit, label %_ZN2v88internal9HashTableINS0_9StringSetENS0_14StringSetShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i, !llvm.loop !94

_ZN2v88internal9HashTableINS0_9StringSetENS0_14StringSetShapeEE18FindInsertionEntryENS0_16PtrComprCageBaseENS0_13ReadOnlyRootsEj.exit: ; preds = %_ZN2v88internal9HashTableINS0_9StringSetENS0_14StringSetShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i, %bb.g, %_ZN2v88internal14StringSetShape13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit
  %.sroa.09.0.lcssa.i = phi i32 [ %.sroa.09.0.in12.i, %_ZN2v88internal14StringSetShape13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit ], [ %.sroa.09.0.in16.i, %_ZN2v88internal9HashTableINS0_9StringSetENS0_14StringSetShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i ], [ %.sroa.09.0.in.i, %bb.g ]
  %i.bk = load atomic volatile i64, ptr %i.ab monotonic, align 8 ; 5 uses
  %i.bl = load i32, ptr %2, align 4
  %i.bm = sext i32 %.sroa.09.0.lcssa.i to i64
  %i.bn = getelementptr [8 x i8], ptr %i.t, i64 %i.bm
  %i.bo = getelementptr i8, ptr %i.bn, i64 24     ; 2 uses
  store atomic volatile i64 %i.bk, ptr %i.bo monotonic, align 8
  %i.bp = icmp sgt i32 %i.bl, 1
  %i.bq = trunc i64 %i.bk to i1
  %or.cond.i.i.i.i.i = select i1 %i.bp, i1 %i.bq, i1 false
  br i1 %or.cond.i.i.i.i.i, label %bb.h, label %_ZN2v88internal9HashTableINS0_9StringSetENS0_14StringSetShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

bb.h:                                             ; preds = %_ZN2v88internal9HashTableINS0_9StringSetENS0_14StringSetShapeEE18FindInsertionEntryENS0_16PtrComprCageBaseENS0_13ReadOnlyRootsEj.exit
  %i.br = ptrtoint ptr %i.bo to i64               ; 2 uses
  %i.bs = load i64, ptr %i.d, align 262144        ; 2 uses
  %i.bt = and i64 %i.bs, 32
  %.not.i.i.i.i.i.i = icmp eq i64 %i.bt, 0
  %i.bu = and i64 %i.bs, 25
  %.not37.i.i.i.i.i.i = icmp eq i64 %i.bu, 0
  br i1 %.not37.i.i.i.i.i.i, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.bv = and i64 %i.bk, -262144
  %i.bw = inttoptr i64 %i.bv to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.bw, align 262144
  %i.bx = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, 25
  %.not38.i.i.i.i.i.i = icmp eq i64 %i.bx, 0
  br i1 %.not38.i.i.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.b, i64 noundef %i.br, i64 %i.bk) #28
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  br i1 %.not.i.i.i.i.i.i, label %_ZN2v88internal9HashTableINS0_9StringSetENS0_14StringSetShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit, label %bb.l, !prof !28

bb.l:                                             ; preds = %bb.k
  call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.b, i64 %i.br, i64 %i.bk) #28
  br label %_ZN2v88internal9HashTableINS0_9StringSetENS0_14StringSetShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

_ZN2v88internal9HashTableINS0_9StringSetENS0_14StringSetShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit: ; preds = %bb.b, %bb.l, %bb.k, %_ZN2v88internal9HashTableINS0_9StringSetENS0_14StringSetShapeEE18FindInsertionEntryENS0_16PtrComprCageBaseENS0_13ReadOnlyRootsEj.exit, %_ZN2v88internal9HashTableINS0_9StringSetENS0_14StringSetShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit
  %i.by = add nuw nsw i64 %.sroa.032.044, 1       ; 2 uses
  %.not = icmp eq i64 %i.by, %i.o
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZN2v88internal9HashTableINS0_9StringSetENS0_14StringSetShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEE(ptr noundef nonnull align 4 dereferenceable(16) %0, i32 noundef %1, i64 %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = sext i32 %1 to i64
  %i.c = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.b ; 2 uses
  store atomic volatile i64 %2, ptr %i.c monotonic, align 8
  %i.d = trunc i64 %2 to i1
  br i1 %i.d, label %bb.b, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.f = or disjoint i64 %i.e, 1                  ; 2 uses
  %i.g = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.h = and i64 %i.e, -262144
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = load i64, ptr %i.i, align 262144         ; 2 uses
  %i.k = and i64 %i.j, 32
  %.not.i.i.i.i.i = icmp eq i64 %i.k, 0
  %i.l = and i64 %i.j, 25
  %.not37.i.i.i.i.i = icmp eq i64 %i.l, 0
  br i1 %.not37.i.i.i.i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.m = and i64 %2, -262144
  %i.n = inttoptr i64 %i.m to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.n, align 262144
  %i.o = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, 25
  %.not38.i.i.i.i.i = icmp eq i64 %i.o, 0
  br i1 %.not38.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.f, i64 noundef %i.g, i64 %2) #28
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  br i1 %.not.i.i.i.i.i, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit, label %bb.f, !prof !28

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.f, i64 %i.g, i64 %2) #28
  br label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit: ; preds = %bb.a, %bb.e, %bb.f
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZN2v88internal9HashTableINS0_9StringSetENS0_14StringSetShapeEE11SetCapacityEj(ptr noundef nonnull align 4 dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = sext i32 %1 to i64
  %i.b = shl nsw i64 %i.a, 32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  store atomic volatile i64 %i.b, ptr %i.c monotonic, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZN2v88internal9HashTableINS0_9StringSetENS0_14StringSetShapeEE6TryNewINS0_7IsolateEEENS0_11MaybeHandleIS2_EEPT_jNS0_14AllocationTypeENS0_15MinimumCapacityE(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2, i32 noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq i32 %3, 1
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i32 %1, 1
  %i.c = add i32 %i.b, %1
  %spec.select.i.i = tail call i32 @llvm.usub.sat.i32(i32 %i.c, i32 1)
  %i.d = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %spec.select.i.i, i1 false)
  %i.e = sub nuw nsw i32 32, %i.d
  %i.f = shl nuw i32 1, %i.e
  %i.g = tail call noundef i32 @llvm.umax.i32(i32 %i.f, i32 4)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.h = phi i32 [ %i.g, %bb.b ], [ %1, %bb.a ]   ; 3 uses
  %i.i = icmp ugt i32 %i.h, 134217725
  br i1 %i.i, label %bb.e, label %bb.d

end_hunk_2
begin_hunk_3_@_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE6RehashENS0_16PtrComprCageBaseE:bb.a

_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit.us: ; preds = %.lr.ph.i.us, %bb.i, %_ZN2v88internal24ObjectHashTableShapeBase13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i.us
  %spec.select.i.us = phi i64 [ %i.az, %_ZN2v88internal24ObjectHashTableShapeBase13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i.us ], [ %i.be, %bb.i ], [ %.sroa.065.086.us, %.lr.ph.i.us ] ; 4 uses
  %i.bg = icmp eq i64 %.sroa.065.086.us, %spec.select.i.us
  br i1 %i.bg, label %bb.y, label %bb.j

bb.j:                                             ; preds = %_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit.us
  %i.bh = shl nuw i64 %spec.select.i.us, 32
  %sext.i36.us = add i64 %i.bh, 12884901888
  %i.bi = ashr exact i64 %sext.i36.us, 29
  %i.bj = getelementptr inbounds i8, ptr %i.y, i64 %i.bi ; 4 uses
  %i.bk = load atomic volatile i64, ptr %i.bj monotonic, align 8 ; 6 uses
  %i.bl = load i64, ptr %.sroa.0.0.i.i, align 8
  %i.bm = icmp eq i64 %i.bk, %i.bl
  br i1 %i.bm, label %.critedge.us, label %_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit37.us

_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit37.us: ; preds = %bb.j
  %i.bn = load i64, ptr %i.z, align 8
  %.not81.us = icmp eq i64 %i.bk, %i.bn
  br i1 %.not81.us, label %.critedge.us, label %bb.k

bb.k:                                             ; preds = %_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit37.us
  %i.bo = call i64 @_ZN2v88internal6Object13GetSimpleHashENS0_6TaggedIS1_EE(i64 %i.bk) ; 2 uses
  %i.bp = and i64 %i.bo, 1
  %i.bq = icmp eq i64 %i.bp, 0
  br i1 %i.bq, label %_ZN2v88internal24ObjectHashTableShapeBase13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i40.us, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.br = trunc i64 %i.bk to i1
  br i1 %i.br, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i39.us, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i.i38, !prof !18

_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i39.us: ; preds = %bb.l
  %i.bs = add nsw i64 %i.bk, -1
  %i.bt = inttoptr i64 %i.bs to ptr
  %i.bu = load atomic volatile i64, ptr %i.bt monotonic, align 8
  %i.bv = add i64 %i.bu, 11
  %i.bw = inttoptr i64 %i.bv to ptr
  %i.bx = load atomic volatile i16, ptr %i.bw monotonic, align 2
  %i.by = icmp ugt i16 %i.bx, 299
  br i1 %i.by, label %bb.m, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i.i38, !prof !19

bb.m:                                             ; preds = %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i39.us
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  store i64 %i.bk, ptr %1, align 8
  %i.bz = call i64 @_ZN2v88internal10JSReceiver15GetIdentityHashEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br label %_ZN2v88internal24ObjectHashTableShapeBase13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i40.us

_ZN2v88internal24ObjectHashTableShapeBase13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i40.us: ; preds = %bb.m, %bb.k
  %.sroa.09.0.i.i.i41.us = phi i64 [ %i.bz, %bb.m ], [ %i.bo, %bb.k ]
  %i.ca = lshr i64 %.sroa.09.0.i.i.i41.us, 32
  %i.cb = load atomic volatile i64, ptr %i.v monotonic, align 8
  %i.cc = lshr i64 %i.cb, 32
  %i.cd = trunc nuw i64 %i.cc to i32
  %i.ce = add i32 %i.cd, -1                       ; 2 uses
  %i.cf = zext i32 %i.ce to i64
  %i.cg = and i64 %i.ca, %i.cf                    ; 2 uses
  br i1 %.not20.i.us, label %.lr.ph.i44.us, label %_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit48.us

.lr.ph.i44.us:                                    ; preds = %_ZN2v88internal24ObjectHashTableShapeBase13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i40.us, %bb.n
  %.022.i45.us = phi i32 [ %i.cm, %bb.n ], [ 1, %_ZN2v88internal24ObjectHashTableShapeBase13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i40.us ] ; 2 uses
  %.sroa.0.021.i46.us = phi i64 [ %i.cl, %bb.n ], [ %i.cg, %_ZN2v88internal24ObjectHashTableShapeBase13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i40.us ] ; 2 uses
  %i.ch = icmp eq i64 %.sroa.0.021.i46.us, %spec.select.i.us
  br i1 %i.ch, label %_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit48.thread.us, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i44.us
  %i.ci = trunc nuw i64 %.sroa.0.021.i46.us to i32
  %i.cj = add i32 %.022.i45.us, %i.ci
  %i.ck = and i32 %i.cj, %i.ce
  %i.cl = zext i32 %i.ck to i64                   ; 2 uses
  %i.cm = add nuw nsw i32 %.022.i45.us, 1         ; 2 uses
  %exitcond.not.i47.us = icmp eq i32 %i.cm, %.03589.us
  br i1 %exitcond.not.i47.us, label %_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit48.us, label %.lr.ph.i44.us, !llvm.loop !122

_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit48.us: ; preds = %bb.n, %_ZN2v88internal24ObjectHashTableShapeBase13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i40.us
  %spec.select.i43.us = phi i64 [ %i.cg, %_ZN2v88internal24ObjectHashTableShapeBase13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i40.us ], [ %i.cl, %bb.n ]
  %.not82.us = icmp eq i64 %spec.select.i43.us, %spec.select.i.us
  br i1 %.not82.us, label %_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit48.thread.us, label %.critedge.us

_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit48.thread.us: ; preds = %.lr.ph.i44.us, %_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit48.us
  %i.cn = add i64 %.sroa.065.086.us, 1
  br label %_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE4SwapENS0_13InternalIndexES5_NS0_16WriteBarrierModeE.exit.us

.critedge.us:                                     ; preds = %_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit48.us, %_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit37.us, %bb.j
  %i.co = load i32, ptr %3, align 4
  %i.cp = load atomic volatile i64, ptr %i.ac monotonic, align 8 ; 5 uses
  %i.cq = load atomic volatile i64, ptr %i.bj monotonic, align 8 ; 5 uses
  store atomic volatile i64 %i.cq, ptr %i.ac monotonic, align 8
  %i.cr = icmp sgt i32 %i.co, 1                   ; 2 uses
  %i.cs = trunc i64 %i.cq to i1
  %or.cond.i.i.i.i.i.i.us = select i1 %i.cr, i1 %i.cs, i1 false
  br i1 %or.cond.i.i.i.i.i.i.us, label %bb.o, label %_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i.us

bb.o:                                             ; preds = %.critedge.us
  %i.ct = ptrtoint ptr %i.ac to i64               ; 2 uses
  %i.cu = load i64, ptr %i.d, align 262144        ; 2 uses
  %i.cv = and i64 %i.cu, 32
  %.not.i.i.i.i.i.i.i.us = icmp eq i64 %i.cv, 0
  %i.cw = and i64 %i.cu, 25
  %.not37.i.i.i.i.i.i.i.us = icmp eq i64 %i.cw, 0
  br i1 %.not37.i.i.i.i.i.i.i.us, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.cx = and i64 %i.cq, -262144
  %i.cy = inttoptr i64 %i.cx to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.us = load i64, ptr %i.cy, align 262144
  %i.cz = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.us, 25
  %.not38.i.i.i.i.i.i.i.us = icmp eq i64 %i.cz, 0
  br i1 %.not38.i.i.i.i.i.i.i.us, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.b, i64 noundef %i.ct, i64 %i.cq) #28
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o
  br i1 %.not.i.i.i.i.i.i.i.us, label %_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i.us, label %bb.s, !prof !28

bb.s:                                             ; preds = %bb.r
  call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.b, i64 %i.ct, i64 %i.cq) #28
  br label %_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i.us

_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i.us: ; preds = %bb.s, %bb.r, %.critedge.us
  store atomic volatile i64 %i.cp, ptr %i.bj monotonic, align 8
  %i.da = trunc i64 %i.cp to i1
  %or.cond.i.i.i.i.i35.i.us = select i1 %i.cr, i1 %i.da, i1 false
  br i1 %or.cond.i.i.i.i.i35.i.us, label %bb.t, label %_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE4SwapENS0_13InternalIndexES5_NS0_16WriteBarrierModeE.exit.us

bb.t:                                             ; preds = %_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i.us
  %i.db = ptrtoint ptr %i.bj to i64               ; 2 uses
  %i.dc = load i64, ptr %i.d, align 262144        ; 2 uses
  %i.dd = and i64 %i.dc, 32
  %.not.i.i.i.i.i.i36.i.us = icmp eq i64 %i.dd, 0
  %i.de = and i64 %i.dc, 25
  %.not37.i.i.i.i.i.i37.i.us = icmp eq i64 %i.de, 0
  br i1 %.not37.i.i.i.i.i.i37.i.us, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.df = and i64 %i.cp, -262144
  %i.dg = inttoptr i64 %i.df to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i38.i.us = load i64, ptr %i.dg, align 262144
  %i.dh = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i38.i.us, 25
  %.not38.i.i.i.i.i.i39.i.us = icmp eq i64 %i.dh, 0
  br i1 %.not38.i.i.i.i.i.i39.i.us, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.b, i64 noundef %i.db, i64 %i.cp) #28
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t
  br i1 %.not.i.i.i.i.i.i36.i.us, label %_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE4SwapENS0_13InternalIndexES5_NS0_16WriteBarrierModeE.exit.us, label %bb.x, !prof !28

bb.x:                                             ; preds = %bb.w
  call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.b, i64 %i.db, i64 %i.cp) #28
  br label %_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE4SwapENS0_13InternalIndexES5_NS0_16WriteBarrierModeE.exit.us

bb.y:                                             ; preds = %_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit.us
  %i.di = add nuw nsw i64 %.sroa.065.086.us, 1
  br label %_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE4SwapENS0_13InternalIndexES5_NS0_16WriteBarrierModeE.exit.us, !llvm.loop !123

_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread.us: ; preds = %_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.us, %bb.e
  %i.dj = add nuw i64 %.sroa.065.086.us, 1
  br label %_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE4SwapENS0_13InternalIndexES5_NS0_16WriteBarrierModeE.exit.us, !llvm.loop !123

_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE4SwapENS0_13InternalIndexES5_NS0_16WriteBarrierModeE.exit.us: ; preds = %_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread.us, %bb.y, %bb.x, %bb.w, %_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i.us, %_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit48.thread.us
  %.sroa.065.2.us = phi i64 [ %i.dj, %_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread.us ], [ %i.di, %bb.y ], [ %i.cn, %_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit48.thread.us ], [ %.sroa.065.086.us, %_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i.us ], [ %.sroa.065.086.us, %bb.w ], [ %.sroa.065.086.us, %bb.x ] ; 2 uses
  %.4.us = phi i1 [ %.188.us, %_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread.us ], [ %.188.us, %bb.y ], [ false, %_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit48.thread.us ], [ %.188.us, %_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i.us ], [ %.188.us, %bb.w ], [ %.188.us, %bb.x ] ; 2 uses
  %i.dk = icmp ult i64 %.sroa.065.2.us, %i.x
  br i1 %i.dk, label %bb.e, label %._crit_edge.us

._crit_edge.us:                                   ; preds = %_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE4SwapENS0_13InternalIndexES5_NS0_16WriteBarrierModeE.exit.us
  %i.dl = add nuw nsw i32 %.03589.us, 1
  br i1 %.4.us, label %.split.us, label %.preheader.us, !llvm.loop !124

.split.us:                                        ; preds = %._crit_edge.us
  %i.dm = load i64, ptr %i.z, align 8             ; 3 uses
  %i.dn = load i64, ptr %.sroa.0.0.i.i, align 8   ; 3 uses
  %i.do = icmp eq i64 %i.x, 1
  br i1 %i.do, label %.lr.ph.epil.preheader, label %.split.us.new

.split.us.new:                                    ; preds = %.split.us
  %unroll_iter = and i64 %i.x, 4294967294
  br label %.lr.ph

_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i.i: ; preds = %bb.g, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i.us
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.331, ptr noundef nonnull @.str.395) #29
  unreachable

_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i.i38: ; preds = %bb.l, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i39.us
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.331, ptr noundef nonnull @.str.395) #29
  unreachable

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.ac
  %i.dp = and i64 %.fr, 4294967296
  %lcmp.mod.not = icmp eq i64 %i.dp, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.split.us
  %.sroa.053.091.epil.init = phi i64 [ 0, %.split.us ], [ %i.eg, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod98 = trunc i64 %i.x to i1
  call void @llvm.assume(i1 %lcmp.mod98)
  %i.dq = shl i64 %.sroa.053.091.epil.init, 32
  %sext.i50.epil = add i64 %i.dq, 12884901888
  %i.dr = ashr exact i64 %sext.i50.epil, 29
  %i.ds = getelementptr inbounds i8, ptr %i.y, i64 %i.dr ; 2 uses
  %i.dt = load atomic volatile i64, ptr %i.ds monotonic, align 8
  %i.du = icmp eq i64 %i.dt, %i.dm
  br i1 %i.du, label %bb.z, label %._crit_edge

bb.z:                                             ; preds = %.lr.ph.epil.preheader
  store atomic volatile i64 %i.dn, ptr %i.ds monotonic, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.z, %.lr.ph.epil.preheader, %_ZNK2v88internal16HeapObjectLayout21EarlyGetReadOnlyRootsEv.exit
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 24
  store atomic volatile i64 0, ptr %i.dv monotonic, align 8
  call void @_ZN2v88internal21WriteBarrierModeScopeD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  ret void

.lr.ph:                                           ; preds = %bb.ac, %.split.us.new
  %.sroa.053.091 = phi i64 [ 0, %.split.us.new ], [ %i.eg, %bb.ac ] ; 3 uses
  %niter = phi i64 [ 0, %.split.us.new ], [ %niter.next.1, %bb.ac ]
  %i.dw = shl i64 %.sroa.053.091, 32
  %sext.i50 = add i64 %i.dw, 12884901888
  %i.dx = ashr exact i64 %sext.i50, 29
  %i.dy = getelementptr inbounds i8, ptr %i.y, i64 %i.dx ; 2 uses
  %i.dz = load atomic volatile i64, ptr %i.dy monotonic, align 8
  %i.ea = icmp eq i64 %i.dz, %i.dm
  br i1 %i.ea, label %bb.aa, label %.lr.ph.1

bb.aa:                                            ; preds = %.lr.ph
  store atomic volatile i64 %i.dn, ptr %i.dy monotonic, align 8
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %bb.aa, %.lr.ph
  %i.eb = shl i64 %.sroa.053.091, 32
  %sext.i50.1 = add i64 %i.eb, 17179869184
  %i.ec = ashr exact i64 %sext.i50.1, 29
  %i.ed = getelementptr inbounds i8, ptr %i.y, i64 %i.ec ; 2 uses
  %i.ee = load atomic volatile i64, ptr %i.ed monotonic, align 8
  %i.ef = icmp eq i64 %i.ee, %i.dm
  br i1 %i.ef, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %.lr.ph.1
  store atomic volatile i64 %i.dn, ptr %i.ed monotonic, align 8
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.lr.ph.1
  %i.eg = add nuw nsw i64 %.sroa.053.091, 2       ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef zeroext i1 @_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE(ptr %0, i64 %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = icmp eq i64 %1, %i.a
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8
  %i.e = icmp ne i64 %1, %i.d
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = phi i1 [ false, %bb.a ], [ %i.e, %bb.b ]
  ret i1 %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden i64 @_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr %1, i64 %2, i32 noundef %3, i64 %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %5 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.756", align 8 ; 4 uses
  %i.a = tail call i64 @_ZN2v88internal6Object13GetSimpleHashENS0_6TaggedIS1_EE(i64 %2) ; 2 uses
  %i.b = and i64 %i.a, 1
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_ZN2v88internal24ObjectHashTableShapeBase13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = trunc i64 %2 to i1
  br i1 %i.d, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i.i, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i, !prof !18

_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i.i: ; preds = %bb.b
  %i.e = add nsw i64 %2, -1
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load atomic volatile i64, ptr %i.f monotonic, align 8
  %i.h = add i64 %i.g, 11
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = load atomic volatile i16, ptr %i.i monotonic, align 2
  %i.k = icmp ugt i16 %i.j, 299
  br i1 %i.k, label %bb.c, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i, !prof !19

_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i: ; preds = %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i.i, %bb.b
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.331, ptr noundef nonnull @.str.395) #29
  unreachable

bb.c:                                             ; preds = %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  store i64 %2, ptr %5, align 8
  %i.l = call i64 @_ZN2v88internal10JSReceiver15GetIdentityHashEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %_ZN2v88internal24ObjectHashTableShapeBase13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit

_ZN2v88internal24ObjectHashTableShapeBase13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.a, %bb.c
  %.sroa.09.0.i.i = phi i64 [ %i.l, %bb.c ], [ %i.a, %bb.a ]
  %i.m = lshr i64 %.sroa.09.0.i.i, 32
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = load atomic volatile i64, ptr %i.n monotonic, align 8
  %i.p = lshr i64 %i.o, 32
  %i.q = trunc nuw i64 %i.p to i32
  %i.r = add i32 %i.q, -1                         ; 2 uses
  %i.s = zext i32 %i.r to i64
  %i.t = and i64 %i.m, %i.s                       ; 2 uses
  %.not20 = icmp sgt i32 %3, 1
  br i1 %.not20, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN2v88internal24ObjectHashTableShapeBase13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit, %bb.d
  %.022 = phi i32 [ %i.z, %bb.d ], [ 1, %_ZN2v88internal24ObjectHashTableShapeBase13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit ] ; 2 uses
  %.sroa.0.021 = phi i64 [ %i.y, %bb.d ], [ %i.t, %_ZN2v88internal24ObjectHashTableShapeBase13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit ] ; 2 uses
  %i.u = icmp eq i64 %.sroa.0.021, %4
  br i1 %i.u, label %._crit_edge, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.v = trunc nuw i64 %.sroa.0.021 to i32
  %i.w = add i32 %.022, %i.v
  %i.x = and i32 %i.w, %i.r
  %i.y = zext i32 %i.x to i64                     ; 2 uses
  %i.z = add nuw nsw i32 %.022, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.z, %3
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !122

._crit_edge:                                      ; preds = %bb.d, %.lr.ph, %_ZN2v88internal24ObjectHashTableShapeBase13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit
  %spec.select = phi i64 [ %i.t, %_ZN2v88internal24ObjectHashTableShapeBase13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit ], [ %4, %.lr.ph ], [ %i.y, %bb.d ]
  ret i64 %spec.select
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE4SwapENS0_13InternalIndexES5_NS0_16WriteBarrierModeE(ptr noundef nonnull align 4 dereferenceable(16) %0, i64 %1, i64 %2, i32 noundef %3) local_unnamed_addr #0 comdat align 2 {
.preheader:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = shl i64 %1, 32
  %sext41 = add i64 %i.b, 12884901888
  %i.c = ashr exact i64 %sext41, 29
  %i.d = getelementptr inbounds i8, ptr %i.a, i64 %i.c ; 3 uses
  %i.e = load atomic volatile i64, ptr %i.d monotonic, align 8 ; 5 uses
  %i.f = shl i64 %2, 32
  %sext = add i64 %i.f, 12884901888
  %i.g = ashr exact i64 %sext, 29
  %i.h = getelementptr inbounds i8, ptr %i.a, i64 %i.g ; 3 uses
  %i.i = load atomic volatile i64, ptr %i.h monotonic, align 8 ; 5 uses
  store atomic volatile i64 %i.i, ptr %i.d monotonic, align 8
  %i.j = icmp sgt i32 %3, 1                       ; 2 uses
  %i.k = trunc i64 %i.i to i1
  %or.cond.i.i.i.i.i = select i1 %i.j, i1 %i.k, i1 false
  br i1 %or.cond.i.i.i.i.i, label %bb.a, label %_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

bb.a:                                             ; preds = %.preheader
  %i.l = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.m = or disjoint i64 %i.l, 1                  ; 2 uses
  %i.n = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.o = and i64 %i.l, -262144
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load i64, ptr %i.p, align 262144         ; 2 uses
  %i.r = and i64 %i.q, 32
  %.not.i.i.i.i.i.i = icmp eq i64 %i.r, 0
  %i.s = and i64 %i.q, 25
  %.not37.i.i.i.i.i.i = icmp eq i64 %i.s, 0
  br i1 %.not37.i.i.i.i.i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.t = and i64 %i.i, -262144
  %i.u = inttoptr i64 %i.t to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.u, align 262144
  %i.v = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, 25
  %.not38.i.i.i.i.i.i = icmp eq i64 %i.v, 0
  br i1 %.not38.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.m, i64 noundef %i.n, i64 %i.i) #28
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  br i1 %.not.i.i.i.i.i.i, label %_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit, label %bb.e, !prof !28

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.m, i64 %i.n, i64 %i.i) #28
  br label %_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit: ; preds = %.preheader, %bb.d, %bb.e
  store atomic volatile i64 %i.e, ptr %i.h monotonic, align 8
  %i.w = trunc i64 %i.e to i1
  %or.cond.i.i.i.i.i35 = select i1 %i.j, i1 %i.w, i1 false
  br i1 %or.cond.i.i.i.i.i35, label %bb.f, label %_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit40

bb.f:                                             ; preds = %_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit
  %i.x = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.y = or disjoint i64 %i.x, 1                  ; 2 uses
  %i.z = ptrtoint ptr %i.h to i64                 ; 2 uses
  %i.aa = and i64 %i.x, -262144
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = load i64, ptr %i.ab, align 262144       ; 2 uses
  %i.ad = and i64 %i.ac, 32
  %.not.i.i.i.i.i.i36 = icmp eq i64 %i.ad, 0
  %i.ae = and i64 %i.ac, 25
  %.not37.i.i.i.i.i.i37 = icmp eq i64 %i.ae, 0
  br i1 %.not37.i.i.i.i.i.i37, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.af = and i64 %i.e, -262144
  %i.ag = inttoptr i64 %i.af to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i38 = load i64, ptr %i.ag, align 262144
  %i.ah = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i38, 25
  %.not38.i.i.i.i.i.i39 = icmp eq i64 %i.ah, 0
  br i1 %.not38.i.i.i.i.i.i39, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.y, i64 noundef %i.z, i64 %i.e) #28
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
end_hunk_3
begin_hunk_4_@_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE11SlotToIndexEmm:bb.a
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef zeroext i1 @_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE26HasSufficientCapacityToAddEi(ptr noundef nonnull align 4 dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load atomic volatile i64, ptr %i.a monotonic, align 8
  %i.c = lshr i64 %i.b, 32
  %i.d = trunc nuw i64 %i.c to i32                ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load atomic volatile i64, ptr %i.e monotonic, align 8
  %i.g = lshr i64 %i.f, 32
  %i.h = trunc nuw i64 %i.g to i32
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load atomic volatile i64, ptr %i.i monotonic, align 8
  %i.k = add nsw i32 %1, %i.h                     ; 4 uses
  %i.l = icmp slt i32 %i.k, %i.d
  br i1 %i.l, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.m = lshr i64 %i.j, 32
  %i.n = trunc nuw i64 %i.m to i32
  %i.o = sub nsw i32 %i.d, %i.k
  %i.p = lshr i32 %i.o, 1
  %.not.i = icmp slt i32 %i.p, %i.n
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = sdiv i32 %i.k, 2
  %i.r = add nsw i32 %i.q, %i.k
  %.not15.i = icmp sgt i32 %i.r, %i.d
  br i1 %.not15.i, label %bb.d, label %_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE26HasSufficientCapacityToAddEiiii.exit

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  br label %_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE26HasSufficientCapacityToAddEiiii.exit

_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE26HasSufficientCapacityToAddEiiii.exit: ; preds = %bb.c, %bb.d
  %.1.i = phi i1 [ false, %bb.d ], [ true, %bb.c ]
  ret i1 %.1.i
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef zeroext i1 @_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE26HasSufficientCapacityToAddEiiii(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = add nsw i32 %3, %1                       ; 4 uses
  %i.b = icmp slt i32 %i.a, %0
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = sub nsw i32 %0, %i.a
  %i.d = lshr i32 %i.c, 1
  %.not = icmp sgt i32 %2, %i.d
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = sdiv i32 %i.a, 2
  %i.f = add nsw i32 %i.e, %i.a
  %.not15 = icmp sgt i32 %i.f, %0
  br i1 %.not15, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.1 = phi i1 [ false, %bb.d ], [ true, %bb.c ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden i64 @_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE18FindInsertionEntryENS0_16PtrComprCageBaseENS0_13ReadOnlyRootsEj(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load atomic volatile i64, ptr %i.a monotonic, align 8
  %i.c = lshr i64 %i.b, 32
  %i.d = trunc nuw i64 %i.c to i32
  %i.e = add i32 %i.d, -1                         ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.09.0.in12 = and i32 %2, %i.e             ; 2 uses
  %.sroa.09.013 = zext i32 %.sroa.09.0.in12 to i64 ; 3 uses
  %i.g = shl nuw i64 %.sroa.09.013, 32
  %sext.i14 = add i64 %i.g, 12884901888
  %i.h = ashr exact i64 %sext.i14, 29
  %i.i = getelementptr inbounds i8, ptr %i.f, i64 %i.h
  %i.j = load atomic volatile i64, ptr %i.i monotonic, align 8 ; 2 uses
  %i.k = load i64, ptr %1, align 8                ; 2 uses
  %i.l = icmp eq i64 %i.j, %i.k
  br i1 %i.l, label %_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread, label %_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.lr.ph

_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.lr.ph: ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load i64, ptr %i.m, align 8              ; 2 uses
  %.not21 = icmp eq i64 %i.j, %i.n
  br i1 %.not21, label %_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread, label %.lr.ph

_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %.lr.ph
  %i.o = add i32 %.01523, 1
  %.not = icmp eq i64 %i.t, %i.n
  br i1 %.not, label %_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread, label %.lr.ph, !llvm.loop !125

._ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread.loopexit_crit_edge: ; preds = %.lr.ph
  br label %_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread, !llvm.loop !125

_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread: ; preds = %_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit, %_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.lr.ph, %._ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread.loopexit_crit_edge, %bb.a
  %.sroa.09.0.lcssa = phi i64 [ %.sroa.09.013, %bb.a ], [ %.sroa.09.013, %_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.lr.ph ], [ %.sroa.09.0, %._ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread.loopexit_crit_edge ], [ %.sroa.09.0, %_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit ]
  ret i64 %.sroa.09.0.lcssa

.lr.ph:                                           ; preds = %_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.lr.ph, %_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit
  %.01523 = phi i32 [ %i.o, %_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit ], [ 1, %_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.lr.ph ] ; 2 uses
  %.sroa.09.0.in1622 = phi i32 [ %.sroa.09.0.in, %_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit ], [ %.sroa.09.0.in12, %_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.lr.ph ]
  %i.p = add i32 %.sroa.09.0.in1622, %.01523
  %.sroa.09.0.in = and i32 %i.p, %i.e             ; 2 uses
  %.sroa.09.0 = zext i32 %.sroa.09.0.in to i64    ; 3 uses
  %i.q = shl nuw i64 %.sroa.09.0, 32
  %sext.i = add i64 %i.q, 12884901888
  %i.r = ashr exact i64 %sext.i, 29
  %i.s = getelementptr inbounds i8, ptr %i.f, i64 %i.r
  %i.t = load atomic volatile i64, ptr %i.s monotonic, align 8 ; 2 uses
  %i.u = icmp eq i64 %i.t, %i.k
  br i1 %i.u, label %._ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread.loopexit_crit_edge, label %_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit, !llvm.loop !125
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef i32 @_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE25ComputeCapacityWithShrinkEjj(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = lshr i32 %0, 2
  %i.b = icmp ugt i32 %1, %i.a
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = lshr i32 %1, 1
  %i.d = add nuw nsw i32 %i.c, %1
  %spec.select.i.i = tail call i32 @llvm.usub.sat.i32(i32 %i.d, i32 1) ; 2 uses
  %i.e = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %spec.select.i.i, i1 false)
  %i.f = sub nuw nsw i32 32, %i.e
  %i.g = shl nuw i32 1, %i.f
  %i.h = tail call noundef i32 @llvm.umax.i32(i32 %i.g, i32 4)
  %i.i = icmp samesign ult i32 %spec.select.i.i, 8
  %. = select i1 %i.i, i32 %0, i32 %i.h
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.1 = phi i32 [ %., %bb.b ], [ %0, %bb.a ]
  ret i32 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE6RehashENS0_16PtrComprCageBaseENS0_6TaggedIS2_EE(ptr noundef nonnull align 4 dereferenceable(16) %0, i64 %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.756", align 8 ; 4 uses
  %3 = alloca %"class.v8::internal::WriteBarrierModeScope", align 4 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.a = add i64 %1, -1                           ; 4 uses
  %i.b = or disjoint i64 %i.a, 1                  ; 3 uses
  %i.c = and i64 %i.a, -262144
  %i.d = inttoptr i64 %i.c to ptr                 ; 2 uses
  %i.e = load i64, ptr %i.d, align 262144, !noalias !126 ; 2 uses
  %i.f = and i64 %i.e, 32
  %.not.i.i.i = icmp eq i64 %i.f, 0
  %i.g = and i64 %i.e, 24
  %.not7.i.i.i = icmp ne i64 %i.g, 0
  %i.h = and i1 %.not.i.i.i, %.not7.i.i.i
  %.1.i.i.i = select i1 %i.h, i32 1, i32 4
  call void @_ZN2v88internal21WriteBarrierModeScopeC1ENS0_6TaggedINS0_10HeapObjectEEENS0_16WriteBarrierModeE(ptr noundef nonnull align 4 dereferenceable(4) %3, i64 %i.b, i32 noundef %.1.i.i.i) #28
  %i.i = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 10624
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 96 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load atomic volatile i64, ptr %i.m monotonic, align 8
  %i.o = lshr i64 %i.n, 32                        ; 2 uses
  %.not43 = icmp eq i64 %i.o, 0
  br i1 %.not43, label %.._crit_edge_crit_edge, label %.lr.ph

.._crit_edge_crit_edge:                           ; preds = %bb.a
  %.pre = inttoptr i64 %i.a to ptr
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 104 ; 2 uses
  %i.r = inttoptr i64 %i.a to ptr                 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 3 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit, %.._crit_edge_crit_edge
  %.pre-phi = phi ptr [ %.pre, %.._crit_edge_crit_edge ], [ %i.r, %_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load atomic volatile i64, ptr %i.u monotonic, align 8
  %i.w = and i64 %i.v, -4294967296
  %i.x = getelementptr inbounds nuw i8, ptr %.pre-phi, i64 16
  store atomic volatile i64 %i.w, ptr %i.x monotonic, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %.pre-phi, i64 24
  store atomic volatile i64 0, ptr %i.y monotonic, align 8
  call void @_ZN2v88internal21WriteBarrierModeScopeD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit
  %.sroa.032.044 = phi i64 [ 0, %.lr.ph ], [ %i.cb, %_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit ] ; 2 uses
  %i.z = shl i64 %.sroa.032.044, 32
  %sext = add i64 %i.z, 12884901888
  %i.aa = ashr exact i64 %sext, 29
  %i.ab = getelementptr inbounds i8, ptr %i.p, i64 %i.aa ; 2 uses
  %i.ac = load atomic volatile i64, ptr %i.ab monotonic, align 8 ; 6 uses
  %i.ad = load i64, ptr %i.l, align 8
  %i.ae = icmp eq i64 %i.ac, %i.ad
  br i1 %i.ae, label %_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit, label %_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit

_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.b
  %i.af = load i64, ptr %i.q, align 8
  %.not42 = icmp eq i64 %i.ac, %i.af
  br i1 %.not42, label %_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit, label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit
  %i.ag = call i64 @_ZN2v88internal6Object13GetSimpleHashENS0_6TaggedIS1_EE(i64 %i.ac) ; 2 uses
  %i.ah = and i64 %i.ag, 1
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %_ZN2v88internal24ObjectHashTableShapeBase13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aj = trunc i64 %i.ac to i1
  br i1 %i.aj, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i.i, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i, !prof !18

_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i.i: ; preds = %bb.d
  %i.ak = add nsw i64 %i.ac, -1
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = load atomic volatile i64, ptr %i.al monotonic, align 8
  %i.an = add i64 %i.am, 11
  %i.ao = inttoptr i64 %i.an to ptr
  %i.ap = load atomic volatile i16, ptr %i.ao monotonic, align 2
  %i.aq = icmp ugt i16 %i.ap, 299
  br i1 %i.aq, label %bb.e, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i, !prof !19

_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i: ; preds = %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i.i, %bb.d
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.331, ptr noundef nonnull @.str.395) #29
  unreachable

bb.e:                                             ; preds = %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  store i64 %i.ac, ptr %2, align 8
  %i.ar = call i64 @_ZN2v88internal10JSReceiver15GetIdentityHashEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %_ZN2v88internal24ObjectHashTableShapeBase13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit

_ZN2v88internal24ObjectHashTableShapeBase13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.c, %bb.e
  %.sroa.09.0.i.i = phi i64 [ %i.ar, %bb.e ], [ %i.ag, %bb.c ]
  %i.as = lshr i64 %.sroa.09.0.i.i, 32
  %i.at = trunc nuw i64 %i.as to i32
  %i.au = load atomic volatile i64, ptr %i.s monotonic, align 8
  %i.av = lshr i64 %i.au, 32
  %i.aw = trunc nuw i64 %i.av to i32
  %i.ax = add i32 %i.aw, -1                       ; 2 uses
  %.sroa.09.0.in12.i = and i32 %i.ax, %i.at       ; 3 uses
  %.sroa.09.013.i = zext i32 %.sroa.09.0.in12.i to i64
  %i.ay = shl nuw i64 %.sroa.09.013.i, 32
  %sext.i14.i = add i64 %i.ay, 12884901888
  %i.az = ashr exact i64 %sext.i14.i, 29
  %i.ba = getelementptr inbounds i8, ptr %i.t, i64 %i.az
  %i.bb = load atomic volatile i64, ptr %i.ba monotonic, align 8 ; 2 uses
  %i.bc = load i64, ptr %i.l, align 8             ; 2 uses
  %i.bd = icmp eq i64 %i.bb, %i.bc
  br i1 %i.bd, label %_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE18FindInsertionEntryENS0_16PtrComprCageBaseENS0_13ReadOnlyRootsEj.exit, label %_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.lr.ph.i

_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.lr.ph.i: ; preds = %_ZN2v88internal24ObjectHashTableShapeBase13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit
  %i.be = load i64, ptr %i.q, align 8
  br label %_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i

_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %bb.f, %_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.lr.ph.i
  %i.bf = phi i64 [ %i.bb, %_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.lr.ph.i ], [ %i.bl, %bb.f ]
  %.sroa.09.0.in16.i = phi i32 [ %.sroa.09.0.in12.i, %_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.lr.ph.i ], [ %.sroa.09.0.in.i, %bb.f ] ; 2 uses
  %.015.i = phi i32 [ 1, %_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.lr.ph.i ], [ %i.bg, %bb.f ] ; 2 uses
  %.not.i = icmp eq i64 %i.bf, %i.be
  br i1 %.not.i, label %_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE18FindInsertionEntryENS0_16PtrComprCageBaseENS0_13ReadOnlyRootsEj.exit, label %bb.f

bb.f:                                             ; preds = %_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i
  %i.bg = add i32 %.015.i, 1
  %i.bh = add i32 %.015.i, %.sroa.09.0.in16.i
  %.sroa.09.0.in.i = and i32 %i.bh, %i.ax         ; 3 uses
  %.sroa.09.0.i = zext i32 %.sroa.09.0.in.i to i64
  %i.bi = shl nuw i64 %.sroa.09.0.i, 32
  %sext.i.i = add i64 %i.bi, 12884901888
  %i.bj = ashr exact i64 %sext.i.i, 29
  %i.bk = getelementptr inbounds i8, ptr %i.t, i64 %i.bj
  %i.bl = load atomic volatile i64, ptr %i.bk monotonic, align 8 ; 2 uses
  %i.bm = icmp eq i64 %i.bl, %i.bc
  br i1 %i.bm, label %_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE18FindInsertionEntryENS0_16PtrComprCageBaseENS0_13ReadOnlyRootsEj.exit, label %_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i, !llvm.loop !125

_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE18FindInsertionEntryENS0_16PtrComprCageBaseENS0_13ReadOnlyRootsEj.exit: ; preds = %_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i, %bb.f, %_ZN2v88internal24ObjectHashTableShapeBase13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit
  %.sroa.09.0.lcssa.i = phi i32 [ %.sroa.09.0.in12.i, %_ZN2v88internal24ObjectHashTableShapeBase13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit ], [ %.sroa.09.0.in16.i, %_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i ], [ %.sroa.09.0.in.i, %bb.f ]
  %i.bn = load atomic volatile i64, ptr %i.ab monotonic, align 8 ; 5 uses
  %i.bo = load i32, ptr %3, align 4
  %i.bp = sext i32 %.sroa.09.0.lcssa.i to i64
  %i.bq = getelementptr [8 x i8], ptr %i.t, i64 %i.bp
  %i.br = getelementptr i8, ptr %i.bq, i64 24     ; 2 uses
  store atomic volatile i64 %i.bn, ptr %i.br monotonic, align 8
  %i.bs = icmp sgt i32 %i.bo, 1
  %i.bt = trunc i64 %i.bn to i1
  %or.cond.i.i.i.i.i = select i1 %i.bs, i1 %i.bt, i1 false
  br i1 %or.cond.i.i.i.i.i, label %bb.g, label %_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

bb.g:                                             ; preds = %_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE18FindInsertionEntryENS0_16PtrComprCageBaseENS0_13ReadOnlyRootsEj.exit
  %i.bu = ptrtoint ptr %i.br to i64               ; 2 uses
  %i.bv = load i64, ptr %i.d, align 262144        ; 2 uses
  %i.bw = and i64 %i.bv, 32
  %.not.i.i.i.i.i.i = icmp eq i64 %i.bw, 0
  %i.bx = and i64 %i.bv, 25
  %.not37.i.i.i.i.i.i = icmp eq i64 %i.bx, 0
  br i1 %.not37.i.i.i.i.i.i, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.by = and i64 %i.bn, -262144
  %i.bz = inttoptr i64 %i.by to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.bz, align 262144
  %i.ca = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, 25
  %.not38.i.i.i.i.i.i = icmp eq i64 %i.ca, 0
  br i1 %.not38.i.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.b, i64 noundef %i.bu, i64 %i.bn) #28
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  br i1 %.not.i.i.i.i.i.i, label %_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit, label %bb.k, !prof !28

bb.k:                                             ; preds = %bb.j
  call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.b, i64 %i.bu, i64 %i.bn) #28
  br label %_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit: ; preds = %bb.b, %bb.k, %bb.j, %_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE18FindInsertionEntryENS0_16PtrComprCageBaseENS0_13ReadOnlyRootsEj.exit, %_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit
  %i.cb = add nuw nsw i64 %.sroa.032.044, 1       ; 2 uses
  %.not = icmp eq i64 %i.cb, %i.o
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEE(ptr noundef nonnull align 4 dereferenceable(16) %0, i32 noundef %1, i64 %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = sext i32 %1 to i64
  %i.c = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.b ; 2 uses
  store atomic volatile i64 %2, ptr %i.c monotonic, align 8
  %i.d = trunc i64 %2 to i1
  br i1 %i.d, label %bb.b, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.f = or disjoint i64 %i.e, 1                  ; 2 uses
  %i.g = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.h = and i64 %i.e, -262144
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = load i64, ptr %i.i, align 262144         ; 2 uses
  %i.k = and i64 %i.j, 32
  %.not.i.i.i.i.i = icmp eq i64 %i.k, 0
  %i.l = and i64 %i.j, 25
  %.not37.i.i.i.i.i = icmp eq i64 %i.l, 0
  br i1 %.not37.i.i.i.i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.m = and i64 %2, -262144
  %i.n = inttoptr i64 %i.m to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.n, align 262144
  %i.o = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, 25
  %.not38.i.i.i.i.i = icmp eq i64 %i.o, 0
  br i1 %.not38.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.f, i64 noundef %i.g, i64 %2) #28
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  br i1 %.not.i.i.i.i.i, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit, label %bb.f, !prof !28

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.f, i64 %i.g, i64 %2) #28
  br label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit: ; preds = %bb.a, %bb.e, %bb.f
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE11SetCapacityEj(ptr noundef nonnull align 4 dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = sext i32 %1 to i64
  %i.b = shl nsw i64 %i.a, 32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  store atomic volatile i64 %i.b, ptr %i.c monotonic, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE6TryNewINS0_7IsolateEEENS0_11MaybeHandleIS2_EEPT_jNS0_14AllocationTypeENS0_15MinimumCapacityE(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2, i32 noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq i32 %3, 1
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i32 %1, 1
  %i.c = add i32 %i.b, %1
  %spec.select.i.i = tail call i32 @llvm.usub.sat.i32(i32 %i.c, i32 1)
end_hunk_4
begin_hunk_5_@_ZN2v88internal10DictionaryINS0_14NameDictionaryENS0_19NameDictionaryShapeEE11DeleteEntryINS0_6HandleEQsr3stdE16is_convertible_vITL0__IT_ENS0_12DirectHandleIS8_EEEEET_IS2_EPNS0_7IsolateESD_NS0_13InternalIndexE:bb.a
  %i.b = add i64 %i.a, -1
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 10624
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  %i.h = load i64, ptr %i.g, align 8              ; 2 uses
  tail call void @_ZN2v88internal10DictionaryINS0_14NameDictionaryENS0_19NameDictionaryShapeEE8SetEntryENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEES8_NS0_15PropertyDetailsE(ptr noundef nonnull align 4 dereferenceable(16) %i.c, i64 %2, i64 %i.h, i64 %i.h, i32 0)
  %i.i = load i64, ptr %1, align 8
  %i.j = add i64 %i.i, -1
  %i.k = inttoptr i64 %i.j to ptr                 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %i.m = load atomic volatile i64, ptr %i.l monotonic, align 8
  %i.n = and i64 %i.m, -4294967296
  %i.o = add i64 %i.n, -4294967296
  store atomic volatile i64 %i.o, ptr %i.l monotonic, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 2 uses
  %i.q = load atomic volatile i64, ptr %i.p monotonic, align 8
  %i.r = and i64 %i.q, -4294967296
  %i.s = add i64 %i.r, 4294967296
  store atomic volatile i64 %i.s, ptr %i.p monotonic, align 8
  %i.t = tail call ptr @_ZN2v88internal9HashTableINS0_14NameDictionaryENS0_19NameDictionaryShapeEE6ShrinkINS0_6HandleEQsr3stdE16is_convertible_vITL0__IT_ENS0_12DirectHandleIS8_EEEEET_IS2_EPNS0_7IsolateESD_i(ptr noundef %0, ptr nonnull %1, i32 noundef 0)
  ret ptr %i.t
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZN2v88internal10DictionaryINS0_14NameDictionaryENS0_19NameDictionaryShapeEE6ShrinkINS0_6HandleEEET_IS2_EPNS0_7IsolateES8_Qsr3stdE16is_convertible_vITL0__IT_ENS0_12DirectHandleISC_EEE(ptr noundef %0, ptr %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = tail call ptr @_ZN2v88internal9HashTableINS0_14NameDictionaryENS0_19NameDictionaryShapeEE6ShrinkINS0_6HandleEQsr3stdE16is_convertible_vITL0__IT_ENS0_12DirectHandleIS8_EEEEET_IS2_EPNS0_7IsolateESD_i(ptr noundef %0, ptr %1, i32 noundef 0)
  ret ptr %i.a
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZN2v88internal18BaseNameDictionaryINS0_14NameDictionaryENS0_19NameDictionaryShapeEE7SetHashEi(ptr noundef nonnull align 4 dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = sext i32 %1 to i64
  %i.b = shl nsw i64 %i.a, 32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  store atomic volatile i64 %i.b, ptr %i.c monotonic, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef i32 @_ZNK2v88internal18BaseNameDictionaryINS0_14NameDictionaryENS0_19NameDictionaryShapeEE4HashEv(ptr noundef nonnull align 4 dereferenceable(16) %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load atomic volatile i64, ptr %i.a monotonic, align 8
  %i.c = lshr i64 %i.b, 32
  %i.d = trunc nuw i64 %i.c to i32
  ret i32 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef i32 @_ZN2v88internal18BaseNameDictionaryINS0_14NameDictionaryENS0_19NameDictionaryShapeEE20NextEnumerationIndexEPNS0_7IsolateENS0_12DirectHandleIS2_EE(ptr noundef %0, ptr %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8
  %i.b = add i64 %i.a, -1
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load atomic volatile i64, ptr %i.d monotonic, align 8 ; 2 uses
  %i.f = lshr i64 %i.e, 32
  %i.g = trunc nuw i64 %i.f to i32
  %i.h = icmp ult i64 %i.e, 36028797018963968
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call ptr @_ZN2v88internal18BaseNameDictionaryINS0_14NameDictionaryENS0_19NameDictionaryShapeEE16IterationIndicesEPNS0_7IsolateENS0_12DirectHandleIS2_EE(ptr noundef %0, ptr nonnull %1) ; 2 uses
  %i.j = load i64, ptr %i.i, align 8
  %i.k = add i64 %i.j, -1
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load i64, ptr %i.m, align 8
  %i.o = lshr i64 %i.n, 32                        ; 2 uses
  %i.p = trunc nuw i64 %i.o to i32                ; 2 uses
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  %i.r = add nsw i32 %i.p, 1
  br label %bb.c

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.b ] ; 2 uses
  %i.s = load i64, ptr %i.i, align 8
  %i.t = add i64 %i.s, -1
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv
  %i.x = load atomic volatile i64, ptr %i.w monotonic, align 8
  %i.y = ashr i64 %i.x, 32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.z = load i64, ptr %1, align 8
  %i.aa = add i64 %i.z, -1
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = mul i64 %i.y, 12884901888
  %sext.i.i = add i64 %i.ad, 34359738368
  %i.ae = ashr exact i64 %sext.i.i, 29
  %i.af = getelementptr inbounds i8, ptr %i.ac, i64 %i.ae ; 2 uses
  %i.ag = load atomic volatile i64, ptr %i.af monotonic, align 8
  %i.ah = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.ai = shl i32 %i.ah, 9
  %sh.diff = lshr i64 %i.ag, 31
  %tr.sh.diff = trunc i64 %sh.diff to i32
  %i.aj = and i32 %tr.sh.diff, 510
  %i.ak = or disjoint i32 %i.aj, %i.ai
  %i.al = ashr exact i32 %i.ak, 1
  %i.am = sext i32 %i.al to i64
  %i.an = shl nsw i64 %i.am, 32
  store atomic volatile i64 %i.an, ptr %i.af monotonic, align 8
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.o
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !234

bb.c:                                             ; preds = %._crit_edge, %bb.a
  %.0 = phi i32 [ %i.g, %bb.a ], [ %i.r, %._crit_edge ]
  ret i32 %.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef i32 @_ZN2v88internal18BaseNameDictionaryINS0_14NameDictionaryENS0_19NameDictionaryShapeEE22next_enumeration_indexEv(ptr noundef nonnull align 4 dereferenceable(16) %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load atomic volatile i64, ptr %i.a monotonic, align 8
  %i.c = lshr i64 %i.b, 32
  %i.d = trunc nuw i64 %i.c to i32
  ret i32 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZN2v88internal18BaseNameDictionaryINS0_14NameDictionaryENS0_19NameDictionaryShapeEE16IterationIndicesEPNS0_7IsolateENS0_12DirectHandleIS2_EE(ptr noundef %0, ptr %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8
  %i.b = add i64 %i.a, -1
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load atomic volatile i64, ptr %i.d monotonic, align 8
  %i.f = lshr i64 %i.e, 32
  %i.g = trunc nuw i64 %i.f to i32
  %i.h = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewFixedArrayEiNS0_14AllocationTypeENS0_14AllocationHintE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.g, i8 noundef zeroext 0, i8 0) #28 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.j = load i64, ptr %1, align 8                ; 3 uses
  %i.k = add i64 %i.j, -1
  %i.l = inttoptr i64 %i.k to ptr                 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = load atomic volatile i64, ptr %i.m monotonic, align 8
  %i.o = lshr i64 %i.n, 32                        ; 2 uses
  %.not54 = icmp eq i64 %i.o, 0
  br i1 %.not54, label %_ZSt4sortIN2v88internal10AtomicSlotENS1_19EnumIndexComparatorINS1_14NameDictionaryEEEEvT_S6_T0_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 656
  br label %bb.c

._crit_edge:                                      ; preds = %_ZN2v88internal9HashTableINS0_14NameDictionaryENS0_19NameDictionaryShapeEE5ToKeyENS0_13ReadOnlyRootsENS0_13InternalIndexEPNS0_6TaggedINS0_6ObjectEEE.exit.thread
  %.not.i.i = icmp eq i32 %.1, 0
  br i1 %.not.i.i, label %_ZSt4sortIN2v88internal10AtomicSlotENS1_19EnumIndexComparatorINS1_14NameDictionaryEEEEvT_S6_T0_.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.r = sext i32 %.1 to i64
  %i.s = shl nsw i64 %i.r, 3                      ; 2 uses
  %i.t = load i64, ptr %i.h, align 8
  %i.u = add i64 %i.t, 15                         ; 3 uses
  %i.v = add i64 %i.u, %i.s                       ; 2 uses
  %i.w = trunc i64 %i.s to i32
  %i.x = ashr exact i32 %i.w, 3
  %i.y = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.x, i1 false)
  %i.z = shl nuw nsw i32 %i.y, 1
  %i.aa = sub nsw i32 62, %i.z
  tail call void @_ZSt16__introsort_loopIN2v88internal10AtomicSlotEiN9__gnu_cxx5__ops15_Iter_comp_iterINS1_19EnumIndexComparatorINS1_14NameDictionaryEEEEEEvT_SA_T0_T1_(i64 %i.u, i64 %i.v, i32 noundef %i.aa, i64 %i.j)
  tail call void @_ZSt22__final_insertion_sortIN2v88internal10AtomicSlotEN9__gnu_cxx5__ops15_Iter_comp_iterINS1_19EnumIndexComparatorINS1_14NameDictionaryEEEEEEvT_SA_T0_(i64 %i.u, i64 %i.v, i64 %i.j)
  br label %_ZSt4sortIN2v88internal10AtomicSlotENS1_19EnumIndexComparatorINS1_14NameDictionaryEEEEvT_S6_T0_.exit

_ZSt4sortIN2v88internal10AtomicSlotENS1_19EnumIndexComparatorINS1_14NameDictionaryEEEEvT_S6_T0_.exit: ; preds = %bb.a, %._crit_edge, %bb.b
  %.0.lcssa61 = phi i32 [ %.1, %bb.b ], [ 0, %._crit_edge ], [ 0, %bb.a ]
  %i.ab = tail call ptr @_ZN2v88internal10FixedArray16RightTrimOrEmptyINS0_12DirectHandleEQsr3stdE16is_convertible_vIT_IS1_ENS3_IS1_EEEEES5_PNS0_7IsolateES5_i(ptr noundef nonnull %0, ptr nonnull %i.h, i32 noundef %.0.lcssa61) #28
  ret ptr %i.ab

bb.c:                                             ; preds = %.lr.ph, %_ZN2v88internal9HashTableINS0_14NameDictionaryENS0_19NameDictionaryShapeEE5ToKeyENS0_13ReadOnlyRootsENS0_13InternalIndexEPNS0_6TaggedINS0_6ObjectEEE.exit.thread
  %.056 = phi i32 [ 0, %.lr.ph ], [ %.1, %_ZN2v88internal9HashTableINS0_14NameDictionaryENS0_19NameDictionaryShapeEE5ToKeyENS0_13ReadOnlyRootsENS0_13InternalIndexEPNS0_6TaggedINS0_6ObjectEEE.exit.thread ] ; 4 uses
  %.sroa.033.055 = phi i64 [ 0, %.lr.ph ], [ %i.aq, %_ZN2v88internal9HashTableINS0_14NameDictionaryENS0_19NameDictionaryShapeEE5ToKeyENS0_13ReadOnlyRootsENS0_13InternalIndexEPNS0_6TaggedINS0_6ObjectEEE.exit.thread ] ; 3 uses
  %i.ac = mul i64 %.sroa.033.055, 12884901888
  %sext.i.i.i = add i64 %i.ac, 25769803776
  %i.ad = ashr exact i64 %sext.i.i.i, 29
  %i.ae = getelementptr inbounds i8, ptr %i.p, i64 %i.ad
  %i.af = load atomic volatile i64, ptr %i.ae monotonic, align 8 ; 2 uses
  %i.ag = load i64, ptr %i.i, align 8
  %i.ah = icmp eq i64 %i.af, %i.ag
  br i1 %i.ah, label %_ZN2v88internal9HashTableINS0_14NameDictionaryENS0_19NameDictionaryShapeEE5ToKeyENS0_13ReadOnlyRootsENS0_13InternalIndexEPNS0_6TaggedINS0_6ObjectEEE.exit.thread, label %_ZN2v88internal9HashTableINS0_14NameDictionaryENS0_19NameDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i

_ZN2v88internal9HashTableINS0_14NameDictionaryENS0_19NameDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %bb.c
  %i.ai = load i64, ptr %i.q, align 8
  %.not.i = icmp eq i64 %i.af, %i.ai
  br i1 %.not.i, label %_ZN2v88internal9HashTableINS0_14NameDictionaryENS0_19NameDictionaryShapeEE5ToKeyENS0_13ReadOnlyRootsENS0_13InternalIndexEPNS0_6TaggedINS0_6ObjectEEE.exit.thread, label %_ZN2v88internal9HashTableINS0_14NameDictionaryENS0_19NameDictionaryShapeEE5ToKeyENS0_13ReadOnlyRootsENS0_13InternalIndexEPNS0_6TaggedINS0_6ObjectEEE.exit

_ZN2v88internal9HashTableINS0_14NameDictionaryENS0_19NameDictionaryShapeEE5ToKeyENS0_13ReadOnlyRootsENS0_13InternalIndexEPNS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %_ZN2v88internal9HashTableINS0_14NameDictionaryENS0_19NameDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i
  %i.aj = load i64, ptr %i.h, align 8
  %i.ak = add i64 %i.aj, -1
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = add nsw i32 %.056, 1
  %sext = shl i64 %.sroa.033.055, 32
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.ao = sext i32 %.056 to i64
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.ao
  store atomic volatile i64 %sext, ptr %i.ap monotonic, align 8
  br label %_ZN2v88internal9HashTableINS0_14NameDictionaryENS0_19NameDictionaryShapeEE5ToKeyENS0_13ReadOnlyRootsENS0_13InternalIndexEPNS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal9HashTableINS0_14NameDictionaryENS0_19NameDictionaryShapeEE5ToKeyENS0_13ReadOnlyRootsENS0_13InternalIndexEPNS0_6TaggedINS0_6ObjectEEE.exit.thread: ; preds = %bb.c, %_ZN2v88internal9HashTableINS0_14NameDictionaryENS0_19NameDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i, %_ZN2v88internal9HashTableINS0_14NameDictionaryENS0_19NameDictionaryShapeEE5ToKeyENS0_13ReadOnlyRootsENS0_13InternalIndexEPNS0_6TaggedINS0_6ObjectEEE.exit
  %.1 = phi i32 [ %i.am, %_ZN2v88internal9HashTableINS0_14NameDictionaryENS0_19NameDictionaryShapeEE5ToKeyENS0_13ReadOnlyRootsENS0_13InternalIndexEPNS0_6TaggedINS0_6ObjectEEE.exit ], [ %.056, %_ZN2v88internal9HashTableINS0_14NameDictionaryENS0_19NameDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i ], [ %.056, %bb.c ] ; 4 uses
  %i.aq = add nuw nsw i64 %.sroa.033.055, 1       ; 2 uses
  %.not = icmp eq i64 %i.aq, %i.o
  br i1 %.not, label %._crit_edge, label %bb.c
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZN2v88internal18BaseNameDictionaryINS0_14NameDictionaryENS0_19NameDictionaryShapeEE26set_next_enumeration_indexEi(ptr noundef nonnull align 4 dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = sext i32 %1 to i64
  %i.b = shl nsw i64 %i.a, 32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  store atomic volatile i64 %i.b, ptr %i.c monotonic, align 8
  ret void
}

declare ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewFixedArrayEiNS0_14AllocationTypeENS0_14AllocationHintE(ptr noundef nonnull align 1 dereferenceable(1), i32 noundef, i8 noundef zeroext, i8) local_unnamed_addr #2

declare ptr @_ZN2v88internal10FixedArray16RightTrimOrEmptyINS0_12DirectHandleEQsr3stdE16is_convertible_vIT_IS1_ENS3_IS1_EEEEES5_PNS0_7IsolateES5_i(ptr noundef, ptr, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZN2v88internal18BaseNameDictionaryINS0_14NameDictionaryENS0_19NameDictionaryShapeEE3NewINS0_7IsolateEEENS0_6HandleIS2_EEPT_iNS0_14AllocationTypeENS0_15MinimumCapacityE(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2, i32 noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq i32 %3, 1
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i32 %1, 1
  %i.c = add i32 %i.b, %1
  %spec.select.i.i.i.i = tail call i32 @llvm.usub.sat.i32(i32 %i.c, i32 1)
  %i.d = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %spec.select.i.i.i.i, i1 false)
  %i.e = sub nuw nsw i32 32, %i.d
  %i.f = shl nuw i32 1, %i.e
  %i.g = tail call noundef i32 @llvm.umax.i32(i32 %i.f, i32 4)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = phi i32 [ %i.g, %bb.b ], [ %1, %bb.a ]   ; 3 uses
  %i.i = icmp ugt i32 %i.h, 44739240
  br i1 %i.i, label %_ZNK2v88internal11MaybeHandleINS0_14NameDictionaryEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.i, label %_ZN2v88internal9HashTableINS0_14NameDictionaryENS0_19NameDictionaryShapeEE3NewINS0_7IsolateEEENS0_6HandleIS2_EEPT_jNS0_14AllocationTypeENS0_15MinimumCapacityE.exit

_ZNK2v88internal11MaybeHandleINS0_14NameDictionaryEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.i: ; preds = %bb.c
  tail call void @_ZN2v88internal7Isolate27FatalProcessOutOfHeapMemoryEPKc(ptr noundef nonnull align 8 dereferenceable(64320) %0, ptr noundef nonnull @.str.1)
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #29
  unreachable

_ZN2v88internal9HashTableINS0_14NameDictionaryENS0_19NameDictionaryShapeEE3NewINS0_7IsolateEEENS0_6HandleIS2_EEPT_jNS0_14AllocationTypeENS0_15MinimumCapacityE.exit: ; preds = %bb.c
  %i.j = mul nuw nsw i32 %i.h, 3
  %i.k = add nuw nsw i32 %i.j, 6
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1176
  %i.m = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewFixedArrayWithMapENS0_12DirectHandleINS0_3MapEEEiNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %i.l, i32 noundef %i.k, i8 noundef zeroext %2) #28 ; 4 uses
  %i.n = load i64, ptr %i.m, align 8
  %i.o = add i64 %i.n, -1
  %i.p = inttoptr i64 %i.o to ptr                 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store atomic volatile i64 0, ptr %i.q monotonic, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store atomic volatile i64 0, ptr %i.r monotonic, align 8
  %i.s = zext nneg i32 %i.h to i64
  %i.t = shl nuw nsw i64 %i.s, 32
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  store atomic volatile i64 %i.t, ptr %i.u monotonic, align 8
  %i.v = load i64, ptr %i.m, align 8
  %i.w = add i64 %i.v, -1
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  store atomic volatile i64 0, ptr %i.y monotonic, align 8
  %i.z = load i64, ptr %i.m, align 8
  %i.aa = add i64 %i.z, -1
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  store atomic volatile i64 4294967296, ptr %i.ac monotonic, align 8
  ret ptr %i.m
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZN2v88internal18BaseNameDictionaryINS0_14NameDictionaryENS0_19NameDictionaryShapeEE3NewINS0_12LocalIsolateEEENS0_6HandleIS2_EEPT_iNS0_14AllocationTypeENS0_15MinimumCapacityE(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2, i32 noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq i32 %3, 1
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i32 %1, 1
  %i.c = add i32 %i.b, %1
  %spec.select.i.i.i.i = tail call i32 @llvm.usub.sat.i32(i32 %i.c, i32 1)
  %i.d = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %spec.select.i.i.i.i, i1 false)
  %i.e = sub nuw nsw i32 32, %i.d
  %i.f = shl nuw i32 1, %i.e
  %i.g = tail call noundef i32 @llvm.umax.i32(i32 %i.f, i32 4)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = phi i32 [ %i.g, %bb.b ], [ %1, %bb.a ]   ; 3 uses
  %i.i = icmp ugt i32 %i.h, 44739240
  br i1 %i.i, label %_ZNK2v88internal11MaybeHandleINS0_14NameDictionaryEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.i, label %_ZN2v88internal9HashTableINS0_14NameDictionaryENS0_19NameDictionaryShapeEE3NewINS0_12LocalIsolateEEENS0_6HandleIS2_EEPT_jNS0_14AllocationTypeENS0_15MinimumCapacityE.exit

_ZNK2v88internal11MaybeHandleINS0_14NameDictionaryEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.i: ; preds = %bb.c
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #29
  unreachable

_ZN2v88internal9HashTableINS0_14NameDictionaryENS0_19NameDictionaryShapeEE3NewINS0_12LocalIsolateEEENS0_6HandleIS2_EEPT_jNS0_14AllocationTypeENS0_15MinimumCapacityE.exit: ; preds = %bb.c
  %i.j = mul nuw nsw i32 %i.h, 3
  %i.k = add nuw nsw i32 %i.j, 6
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1952
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 1176
  %i.o = tail call ptr @_ZN2v88internal11FactoryBaseINS0_12LocalFactoryEE20NewFixedArrayWithMapENS0_12DirectHandleINS0_3MapEEEiNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %i.n, i32 noundef %i.k, i8 noundef zeroext %2) #28 ; 4 uses
  %i.p = load i64, ptr %i.o, align 8
  %i.q = add i64 %i.p, -1
  %i.r = inttoptr i64 %i.q to ptr                 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store atomic volatile i64 0, ptr %i.s monotonic, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store atomic volatile i64 0, ptr %i.t monotonic, align 8
  %i.u = zext nneg i32 %i.h to i64
  %i.v = shl nuw nsw i64 %i.u, 32
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  store atomic volatile i64 %i.v, ptr %i.w monotonic, align 8
  %i.x = load i64, ptr %i.o, align 8
  %i.y = add i64 %i.x, -1
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  store atomic volatile i64 0, ptr %i.aa monotonic, align 8
  %i.ab = load i64, ptr %i.o, align 8
  %i.ac = add i64 %i.ab, -1
  %i.ad = inttoptr i64 %i.ac to ptr
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  store atomic volatile i64 4294967296, ptr %i.ae monotonic, align 8
  ret ptr %i.o
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZN2v88internal18BaseNameDictionaryINS0_14NameDictionaryENS0_19NameDictionaryShapeEE3AddINS0_12DirectHandleEQsr3stdE16is_convertible_vITL0__IT_ENS6_IS8_EEEEET_IS2_EPNS0_7IsolateESC_NS6_INS0_4NameEEENS6_INS0_6ObjectEEENS0_15PropertyDetailsEPNS0_13InternalIndexE(ptr noundef %0, ptr %1, ptr %2, ptr %3, i32 %4, ptr noundef %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8
  %i.b = add i64 %i.a, -1
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load atomic volatile i64, ptr %i.d monotonic, align 8 ; 2 uses
  %i.f = lshr i64 %i.e, 32
  %i.g = trunc nuw i64 %i.f to i32
  %i.h = icmp ult i64 %i.e, 36028797018963968
  br i1 %i.h, label %_ZN2v88internal18BaseNameDictionaryINS0_14NameDictionaryENS0_19NameDictionaryShapeEE20NextEnumerationIndexEPNS0_7IsolateENS0_12DirectHandleIS2_EE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call ptr @_ZN2v88internal18BaseNameDictionaryINS0_14NameDictionaryENS0_19NameDictionaryShapeEE16IterationIndicesEPNS0_7IsolateENS0_12DirectHandleIS2_EE(ptr noundef %0, ptr nonnull %1) ; 2 uses
  %i.j = load i64, ptr %i.i, align 8
  %i.k = add i64 %i.j, -1
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load i64, ptr %i.m, align 8
  %i.o = lshr i64 %i.n, 32                        ; 2 uses
  %i.p = trunc nuw i64 %i.o to i32                ; 2 uses
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.b
  %i.r = add nsw i32 %i.p, 1
  br label %_ZN2v88internal18BaseNameDictionaryINS0_14NameDictionaryENS0_19NameDictionaryShapeEE20NextEnumerationIndexEPNS0_7IsolateENS0_12DirectHandleIS2_EE.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %bb.b ] ; 2 uses
  %i.s = load i64, ptr %i.i, align 8
  %i.t = add i64 %i.s, -1
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv.i
  %i.x = load atomic volatile i64, ptr %i.w monotonic, align 8
  %i.y = ashr i64 %i.x, 32
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.z = load i64, ptr %1, align 8
  %i.aa = add i64 %i.z, -1
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = mul i64 %i.y, 12884901888
  %sext.i.i.i = add i64 %i.ad, 34359738368
  %i.ae = ashr exact i64 %sext.i.i.i, 29
  %i.af = getelementptr inbounds i8, ptr %i.ac, i64 %i.ae ; 2 uses
  %i.ag = load atomic volatile i64, ptr %i.af monotonic, align 8
  %i.ah = trunc nuw nsw i64 %indvars.iv.next.i to i32
  %i.ai = shl i32 %i.ah, 9
  %sh.diff.i = lshr i64 %i.ag, 31
  %tr.sh.diff.i = trunc i64 %sh.diff.i to i32
  %i.aj = and i32 %tr.sh.diff.i, 510
  %i.ak = or disjoint i32 %i.aj, %i.ai
  %i.al = ashr exact i32 %i.ak, 1
  %i.am = sext i32 %i.al to i64
  %i.an = shl nsw i64 %i.am, 32
  store atomic volatile i64 %i.an, ptr %i.af monotonic, align 8
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.o
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !234

_ZN2v88internal18BaseNameDictionaryINS0_14NameDictionaryENS0_19NameDictionaryShapeEE20NextEnumerationIndexEPNS0_7IsolateENS0_12DirectHandleIS2_EE.exit: ; preds = %bb.a, %._crit_edge.i
end_hunk_5
begin_hunk_6_@_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE18FindInsertionEntryENS0_16PtrComprCageBaseENS0_13ReadOnlyRootsEj:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load atomic volatile i64, ptr %i.a monotonic, align 8
  %i.c = lshr i64 %i.b, 32
  %i.d = trunc nuw i64 %i.c to i32
  %i.e = add i32 %i.d, -1                         ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.09.0.in12 = and i32 %2, %i.e             ; 2 uses
  %.sroa.09.013 = zext i32 %.sroa.09.0.in12 to i64 ; 3 uses
  %i.g = shl nuw i64 %.sroa.09.013, 32
  %sext.i14 = add i64 %i.g, 21474836480
  %i.h = ashr exact i64 %sext.i14, 29
  %i.i = getelementptr inbounds i8, ptr %i.f, i64 %i.h
  %i.j = load atomic volatile i64, ptr %i.i monotonic, align 8 ; 2 uses
  %i.k = load i64, ptr %1, align 8                ; 2 uses
  %i.l = icmp eq i64 %i.j, %i.k
  br i1 %i.l, label %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread, label %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.lr.ph

_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.lr.ph: ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load i64, ptr %i.m, align 8              ; 2 uses
  %.not21 = icmp eq i64 %i.j, %i.n
  br i1 %.not21, label %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread, label %.lr.ph

_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %.lr.ph
  %i.o = add i32 %.01523, 1
  %.not = icmp eq i64 %i.t, %i.n
  br i1 %.not, label %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread, label %.lr.ph, !llvm.loop !236

._ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread.loopexit_crit_edge: ; preds = %.lr.ph
  br label %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread, !llvm.loop !236

_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread: ; preds = %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit, %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.lr.ph, %._ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread.loopexit_crit_edge, %bb.a
  %.sroa.09.0.lcssa = phi i64 [ %.sroa.09.013, %bb.a ], [ %.sroa.09.013, %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.lr.ph ], [ %.sroa.09.0, %._ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread.loopexit_crit_edge ], [ %.sroa.09.0, %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit ]
  ret i64 %.sroa.09.0.lcssa

.lr.ph:                                           ; preds = %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.lr.ph, %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit
  %.01523 = phi i32 [ %i.o, %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit ], [ 1, %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.lr.ph ] ; 2 uses
  %.sroa.09.0.in1622 = phi i32 [ %.sroa.09.0.in, %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit ], [ %.sroa.09.0.in12, %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.lr.ph ]
  %i.p = add i32 %.sroa.09.0.in1622, %.01523
  %.sroa.09.0.in = and i32 %i.p, %i.e             ; 2 uses
  %.sroa.09.0 = zext i32 %.sroa.09.0.in to i64    ; 3 uses
  %i.q = shl nuw i64 %.sroa.09.0, 32
  %sext.i = add i64 %i.q, 21474836480
  %i.r = ashr exact i64 %sext.i, 29
  %i.s = getelementptr inbounds i8, ptr %i.f, i64 %i.r
  %i.t = load atomic volatile i64, ptr %i.s monotonic, align 8 ; 2 uses
  %i.u = icmp eq i64 %i.t, %i.k
  br i1 %i.u, label %._ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread.loopexit_crit_edge, label %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit, !llvm.loop !236
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef i32 @_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE25ComputeCapacityWithShrinkEjj(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = lshr i32 %0, 2
  %i.b = icmp ugt i32 %1, %i.a
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = lshr i32 %1, 1
  %i.d = add nuw nsw i32 %i.c, %1
  %spec.select.i.i = tail call i32 @llvm.usub.sat.i32(i32 %i.d, i32 1) ; 2 uses
  %i.e = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %spec.select.i.i, i1 false)
  %i.f = sub nuw nsw i32 32, %i.e
  %i.g = shl nuw i32 1, %i.f
  %i.h = tail call noundef i32 @llvm.umax.i32(i32 %i.g, i32 4)
  %i.i = icmp samesign ult i32 %spec.select.i.i, 8
  %. = select i1 %i.i, i32 %0, i32 %i.h
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.1 = phi i32 [ %., %bb.b ], [ %0, %bb.a ]
  ret i32 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE6RehashENS0_16PtrComprCageBaseENS0_6TaggedIS2_EE(ptr noundef nonnull align 4 dereferenceable(16) %0, i64 %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::WriteBarrierModeScope", align 4 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.a = add i64 %1, -1                           ; 3 uses
  %i.b = or disjoint i64 %i.a, 1                  ; 7 uses
  %i.c = and i64 %i.a, -262144
  %i.d = inttoptr i64 %i.c to ptr                 ; 4 uses
  %i.e = load i64, ptr %i.d, align 262144, !noalias !237 ; 2 uses
  %i.f = and i64 %i.e, 32
  %.not.i.i.i = icmp eq i64 %i.f, 0
  %i.g = and i64 %i.e, 24
  %.not7.i.i.i = icmp ne i64 %i.g, 0
  %i.h = and i1 %.not.i.i.i, %.not7.i.i.i
  %.1.i.i.i = select i1 %i.h, i32 1, i32 4
  call void @_ZN2v88internal21WriteBarrierModeScopeC1ENS0_6TaggedINS0_10HeapObjectEEENS0_16WriteBarrierModeE(ptr noundef nonnull align 4 dereferenceable(4) %2, i64 %i.b, i32 noundef %.1.i.i.i) #28
  %i.i = inttoptr i64 %i.a to ptr                 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load atomic volatile i64, ptr %i.l monotonic, align 8 ; 5 uses
  %i.n = load i32, ptr %2, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 40 ; 2 uses
  store atomic volatile i64 %i.m, ptr %i.o monotonic, align 8
  %i.p = icmp sgt i32 %i.n, 1
  %i.q = trunc i64 %i.m to i1
  %or.cond.i.i.i.i = select i1 %i.p, i1 %i.q, i1 false
  br i1 %or.cond.i.i.i.i, label %bb.b, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

.lr.ph:                                           ; preds = %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.1
  %i.r = getelementptr inbounds nuw i8, ptr %i.ap, i64 104 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  br label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.t = ptrtoint ptr %i.o to i64                 ; 2 uses
  %i.u = load i64, ptr %i.d, align 262144         ; 2 uses
  %i.v = and i64 %i.u, 32
  %.not.i.i.i.i.i = icmp eq i64 %i.v, 0
  %i.w = and i64 %i.u, 25
  %.not37.i.i.i.i.i = icmp eq i64 %i.w, 0
  br i1 %.not37.i.i.i.i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.x = and i64 %i.m, -262144
  %i.y = inttoptr i64 %i.x to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.y, align 262144
  %i.z = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, 25
  %.not38.i.i.i.i.i = icmp eq i64 %i.z, 0
  br i1 %.not38.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.b, i64 noundef %i.t, i64 %i.m) #28
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  br i1 %.not.i.i.i.i.i, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit, label %bb.f, !prof !28

bb.f:                                             ; preds = %bb.e
  call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.b, i64 %i.t, i64 %i.m) #28
  br label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit: ; preds = %bb.a, %bb.e, %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ab = load atomic volatile i64, ptr %i.aa monotonic, align 8 ; 5 uses
  %i.ac = load i32, ptr %2, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.i, i64 48 ; 2 uses
  store atomic volatile i64 %i.ab, ptr %i.ad monotonic, align 8
  %i.ae = icmp sgt i32 %i.ac, 1
  %i.af = trunc i64 %i.ab to i1
  %or.cond.i.i.i.i.1 = select i1 %i.ae, i1 %i.af, i1 false
  br i1 %or.cond.i.i.i.i.1, label %bb.g, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.1

bb.g:                                             ; preds = %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit
  %i.ag = ptrtoint ptr %i.ad to i64               ; 2 uses
  %i.ah = load i64, ptr %i.d, align 262144        ; 2 uses
  %i.ai = and i64 %i.ah, 32
  %.not.i.i.i.i.i.1 = icmp eq i64 %i.ai, 0
  %i.aj = and i64 %i.ah, 25
  %.not37.i.i.i.i.i.1 = icmp eq i64 %i.aj, 0
  br i1 %.not37.i.i.i.i.i.1, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ak = and i64 %i.ab, -262144
  %i.al = inttoptr i64 %i.ak to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.1 = load i64, ptr %i.al, align 262144
  %i.am = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.1, 25
  %.not38.i.i.i.i.i.1 = icmp eq i64 %i.am, 0
  br i1 %.not38.i.i.i.i.i.1, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.b, i64 noundef %i.ag, i64 %i.ab) #28
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  br i1 %.not.i.i.i.i.i.1, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.1, label %bb.k, !prof !28

bb.k:                                             ; preds = %bb.j
  call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.b, i64 %i.ag, i64 %i.ab) #28
  br label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.1

_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.1: ; preds = %bb.k, %bb.j, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit
  %i.an = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 10624
  %i.ap = load ptr, ptr %i.ao, align 8            ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 96 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.as = load atomic volatile i64, ptr %i.ar monotonic, align 8
  %i.at = lshr i64 %i.as, 32                      ; 2 uses
  %.not45 = icmp eq i64 %i.at, 0
  br i1 %.not45, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.1
  %i.au = load atomic volatile i64, ptr %i.j monotonic, align 8
  %i.av = and i64 %i.au, -4294967296
  store atomic volatile i64 %i.av, ptr %i.k monotonic, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store atomic volatile i64 0, ptr %i.aw monotonic, align 8
  call void @_ZN2v88internal21WriteBarrierModeScopeD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret void

bb.l:                                             ; preds = %.lr.ph, %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit
  %.sroa.032.046 = phi i64 [ 0, %.lr.ph ], [ %i.cv, %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit ] ; 2 uses
  %i.ax = shl i64 %.sroa.032.046, 32
  %sext = add i64 %i.ax, 21474836480
  %i.ay = ashr exact i64 %sext, 29
  %i.az = getelementptr inbounds i8, ptr %i.j, i64 %i.ay ; 2 uses
  %i.ba = load atomic volatile i64, ptr %i.az monotonic, align 8 ; 3 uses
  %i.bb = load i64, ptr %i.aq, align 8
  %i.bc = icmp eq i64 %i.ba, %i.bb
  br i1 %i.bc, label %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit, label %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit

_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.l
  %i.bd = load i64, ptr %i.r, align 8
  %.not43 = icmp eq i64 %i.ba, %i.bd
  br i1 %.not43, label %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit, label %bb.m

bb.m:                                             ; preds = %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit
  %i.be = add i64 %i.ba, 7
  %i.bf = inttoptr i64 %i.be to ptr
  %i.bg = load i64, ptr %i.bf, align 8
  %i.bh = add i64 %i.bg, -1
  %i.bi = inttoptr i64 %i.bh to ptr               ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = load atomic i32, ptr %i.bj acquire, align 4 ; 3 uses
  %i.bl = and i32 %i.bk, 1
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %_ZN2v88internal21GlobalDictionaryShape13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit, label %bb.n, !prof !28

bb.n:                                             ; preds = %bb.m
  %i.bn = call noundef i32 @_ZNK2v88internal4Name29GetRawHashFromForwardingTableEj(ptr noundef nonnull align 4 dereferenceable(12) %i.bi, i32 noundef %i.bk)
  br label %_ZN2v88internal21GlobalDictionaryShape13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit

_ZN2v88internal21GlobalDictionaryShape13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.m, %bb.n
  %.0.in.i.i = phi i32 [ %i.bn, %bb.n ], [ %i.bk, %bb.m ]
  %.0.i.i = lshr i32 %.0.in.i.i, 2
  %i.bo = load atomic volatile i64, ptr %i.s monotonic, align 8
  %i.bp = lshr i64 %i.bo, 32
  %i.bq = trunc nuw i64 %i.bp to i32
  %i.br = add i32 %i.bq, -1                       ; 2 uses
  %.sroa.09.0.in12.i = and i32 %i.br, %.0.i.i     ; 3 uses
  %.sroa.09.013.i = zext nneg i32 %.sroa.09.0.in12.i to i64
  %i.bs = shl nuw nsw i64 %.sroa.09.013.i, 3
  %i.bt = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 40
  %i.bv = load atomic volatile i64, ptr %i.bu monotonic, align 8 ; 2 uses
  %i.bw = load i64, ptr %i.aq, align 8            ; 2 uses
  %i.bx = icmp eq i64 %i.bv, %i.bw
  br i1 %i.bx, label %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE18FindInsertionEntryENS0_16PtrComprCageBaseENS0_13ReadOnlyRootsEj.exit, label %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.lr.ph.i

_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.lr.ph.i: ; preds = %_ZN2v88internal21GlobalDictionaryShape13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit
  %i.by = load i64, ptr %i.r, align 8
  br label %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i

_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %bb.o, %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.lr.ph.i
  %i.bz = phi i64 [ %i.bv, %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.lr.ph.i ], [ %i.cf, %bb.o ]
  %.sroa.09.0.in16.i = phi i32 [ %.sroa.09.0.in12.i, %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.lr.ph.i ], [ %.sroa.09.0.in.i, %bb.o ] ; 2 uses
  %.015.i = phi i32 [ 1, %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.lr.ph.i ], [ %i.ca, %bb.o ] ; 2 uses
  %.not.i = icmp eq i64 %i.bz, %i.by
  br i1 %.not.i, label %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE18FindInsertionEntryENS0_16PtrComprCageBaseENS0_13ReadOnlyRootsEj.exit, label %bb.o

bb.o:                                             ; preds = %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i
  %i.ca = add i32 %.015.i, 1
  %i.cb = add i32 %.015.i, %.sroa.09.0.in16.i
  %.sroa.09.0.in.i = and i32 %i.cb, %i.br         ; 3 uses
  %.sroa.09.0.i = zext i32 %.sroa.09.0.in.i to i64
  %i.cc = shl nuw i64 %.sroa.09.0.i, 32
  %sext.i.i = add i64 %i.cc, 21474836480
  %i.cd = ashr exact i64 %sext.i.i, 29
  %i.ce = getelementptr inbounds i8, ptr %i.k, i64 %i.cd
  %i.cf = load atomic volatile i64, ptr %i.ce monotonic, align 8 ; 2 uses
  %i.cg = icmp eq i64 %i.cf, %i.bw
  br i1 %i.cg, label %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE18FindInsertionEntryENS0_16PtrComprCageBaseENS0_13ReadOnlyRootsEj.exit, label %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i, !llvm.loop !236

_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE18FindInsertionEntryENS0_16PtrComprCageBaseENS0_13ReadOnlyRootsEj.exit: ; preds = %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i, %bb.o, %_ZN2v88internal21GlobalDictionaryShape13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit
  %.sroa.09.0.lcssa.i = phi i32 [ %.sroa.09.0.in12.i, %_ZN2v88internal21GlobalDictionaryShape13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit ], [ %.sroa.09.0.in16.i, %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i ], [ %.sroa.09.0.in.i, %bb.o ]
  %i.ch = load atomic volatile i64, ptr %i.az monotonic, align 8 ; 5 uses
  %i.ci = load i32, ptr %2, align 4
  %i.cj = sext i32 %.sroa.09.0.lcssa.i to i64
  %i.ck = getelementptr [8 x i8], ptr %i.k, i64 %i.cj
  %i.cl = getelementptr i8, ptr %i.ck, i64 40     ; 2 uses
  store atomic volatile i64 %i.ch, ptr %i.cl monotonic, align 8
  %i.cm = icmp sgt i32 %i.ci, 1
  %i.cn = trunc i64 %i.ch to i1
  %or.cond.i.i.i.i.i = select i1 %i.cm, i1 %i.cn, i1 false
  br i1 %or.cond.i.i.i.i.i, label %bb.p, label %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

bb.p:                                             ; preds = %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE18FindInsertionEntryENS0_16PtrComprCageBaseENS0_13ReadOnlyRootsEj.exit
  %i.co = ptrtoint ptr %i.cl to i64               ; 2 uses
  %i.cp = load i64, ptr %i.d, align 262144        ; 2 uses
  %i.cq = and i64 %i.cp, 32
  %.not.i.i.i.i.i.i = icmp eq i64 %i.cq, 0
  %i.cr = and i64 %i.cp, 25
  %.not37.i.i.i.i.i.i = icmp eq i64 %i.cr, 0
  br i1 %.not37.i.i.i.i.i.i, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.cs = and i64 %i.ch, -262144
  %i.ct = inttoptr i64 %i.cs to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.ct, align 262144
  %i.cu = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, 25
  %.not38.i.i.i.i.i.i = icmp eq i64 %i.cu, 0
  br i1 %.not38.i.i.i.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.b, i64 noundef %i.co, i64 %i.ch) #28
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p
  br i1 %.not.i.i.i.i.i.i, label %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit, label %bb.t, !prof !28

bb.t:                                             ; preds = %bb.s
  call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.b, i64 %i.co, i64 %i.ch) #28
  br label %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit: ; preds = %bb.l, %bb.t, %bb.s, %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE18FindInsertionEntryENS0_16PtrComprCageBaseENS0_13ReadOnlyRootsEj.exit, %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit
  %i.cv = add nuw nsw i64 %.sroa.032.046, 1       ; 2 uses
  %.not = icmp eq i64 %i.cv, %i.at
  br i1 %.not, label %._crit_edge, label %bb.l
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEE(ptr noundef nonnull align 4 dereferenceable(16) %0, i32 noundef %1, i64 %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = sext i32 %1 to i64
  %i.c = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.b ; 2 uses
  store atomic volatile i64 %2, ptr %i.c monotonic, align 8
  %i.d = trunc i64 %2 to i1
  br i1 %i.d, label %bb.b, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.f = or disjoint i64 %i.e, 1                  ; 2 uses
  %i.g = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.h = and i64 %i.e, -262144
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = load i64, ptr %i.i, align 262144         ; 2 uses
  %i.k = and i64 %i.j, 32
  %.not.i.i.i.i.i = icmp eq i64 %i.k, 0
  %i.l = and i64 %i.j, 25
  %.not37.i.i.i.i.i = icmp eq i64 %i.l, 0
  br i1 %.not37.i.i.i.i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.m = and i64 %2, -262144
  %i.n = inttoptr i64 %i.m to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.n, align 262144
  %i.o = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, 25
  %.not38.i.i.i.i.i = icmp eq i64 %i.o, 0
  br i1 %.not38.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.f, i64 noundef %i.g, i64 %2) #28
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  br i1 %.not.i.i.i.i.i, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit, label %bb.f, !prof !28

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.f, i64 %i.g, i64 %2) #28
  br label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit: ; preds = %bb.a, %bb.e, %bb.f
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE11SetCapacityEj(ptr noundef nonnull align 4 dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = sext i32 %1 to i64
  %i.b = shl nsw i64 %i.a, 32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  store atomic volatile i64 %i.b, ptr %i.c monotonic, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE6TryNewINS0_7IsolateEEENS0_11MaybeHandleIS2_EEPT_jNS0_14AllocationTypeENS0_15MinimumCapacityE(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2, i32 noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq i32 %3, 1
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i32 %1, 1
  %i.c = add i32 %i.b, %1
  %spec.select.i.i = tail call i32 @llvm.usub.sat.i32(i32 %i.c, i32 1)
  %i.d = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %spec.select.i.i, i1 false)
  %i.e = sub nuw nsw i32 32, %i.d
  %i.f = shl nuw i32 1, %i.e
  %i.g = tail call noundef i32 @llvm.umax.i32(i32 %i.f, i32 4)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.h = phi i32 [ %i.g, %bb.b ], [ %1, %bb.a ]   ; 3 uses
  %i.i = icmp ugt i32 %i.h, 134217723
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = add nuw nsw i32 %i.h, 5
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1120
  %i.l = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewFixedArrayWithMapENS0_12DirectHandleINS0_3MapEEEiNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %i.k, i32 noundef %i.j, i8 noundef zeroext %2) #28 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8
  %i.n = add i64 %i.m, -1
end_hunk_6
begin_hunk_7_@_ZN2v88internal10DictionaryINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE10ValueAtPutENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEENS_15SeqCstAccessTagE:bb.a
  br label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS_15SeqCstAccessTagENS0_16WriteBarrierModeE.exit

_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS_15SeqCstAccessTagENS0_16WriteBarrierModeE.exit: ; preds = %bb.a, %bb.e, %bb.f
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden i64 @_ZN2v88internal10DictionaryINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE11ValueAtSwapENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEENS_15SeqCstAccessTagE(ptr noundef nonnull align 4 dereferenceable(16) %0, i64 %1, i64 %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = shl i64 %1, 32
  %sext = add i64 %i.b, 25769803776
  %i.c = ashr exact i64 %sext, 29
  %i.d = getelementptr inbounds i8, ptr %i.a, i64 %i.c ; 2 uses
  %i.e = atomicrmw volatile xchg ptr %i.d, i64 %2 seq_cst, align 8
  %i.f = trunc i64 %2 to i1
  br i1 %i.f, label %bb.b, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE4swapEiNS0_6TaggedINS0_6ObjectEEENS_15SeqCstAccessTagENS0_16WriteBarrierModeE.exit

bb.b:                                             ; preds = %bb.a
  %i.g = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.h = or disjoint i64 %i.g, 1                  ; 2 uses
  %i.i = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.j = and i64 %i.g, -262144
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = load i64, ptr %i.k, align 262144         ; 2 uses
  %i.m = and i64 %i.l, 32
  %.not.i.i.i.i.i = icmp eq i64 %i.m, 0
  %i.n = and i64 %i.l, 25
  %.not37.i.i.i.i.i = icmp eq i64 %i.n, 0
  br i1 %.not37.i.i.i.i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.o = and i64 %2, -262144
  %i.p = inttoptr i64 %i.o to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.p, align 262144
  %i.q = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, 25
  %.not38.i.i.i.i.i = icmp eq i64 %i.q, 0
  br i1 %.not38.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.h, i64 noundef %i.i, i64 %2) #28
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  br i1 %.not.i.i.i.i.i, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE4swapEiNS0_6TaggedINS0_6ObjectEEENS_15SeqCstAccessTagENS0_16WriteBarrierModeE.exit, label %bb.f, !prof !28

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.h, i64 %i.i, i64 %2) #28
  br label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE4swapEiNS0_6TaggedINS0_6ObjectEEENS_15SeqCstAccessTagENS0_16WriteBarrierModeE.exit

_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE4swapEiNS0_6TaggedINS0_6ObjectEEENS_15SeqCstAccessTagENS0_16WriteBarrierModeE.exit: ; preds = %bb.a, %bb.e, %bb.f
  ret i64 %i.e
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden i64 @_ZN2v88internal10DictionaryINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE21ValueAtCompareAndSwapENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEES8_NS_15SeqCstAccessTagE(ptr noundef nonnull align 4 dereferenceable(16) %0, i64 %1, i64 %2, i64 %3) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = shl i64 %1, 32
  %sext = add i64 %i.b, 25769803776
  %i.c = ashr exact i64 %sext, 29
  %i.d = getelementptr inbounds i8, ptr %i.a, i64 %i.c ; 2 uses
  %i.e = cmpxchg volatile ptr %i.d, i64 %2, i64 %3 seq_cst seq_cst, align 8 ; 2 uses
  %i.f = extractvalue { i64, i1 } %i.e, 1
  %i.g = trunc i64 %3 to i1
  %or.cond.i.i = select i1 %i.f, i1 %i.g, i1 false
  br i1 %or.cond.i.i, label %bb.b, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE16compare_and_swapEiNS0_6TaggedINS0_6ObjectEEES8_NS_15SeqCstAccessTagENS0_16WriteBarrierModeE.exit

bb.b:                                             ; preds = %bb.a
  %i.h = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.i = or disjoint i64 %i.h, 1                  ; 2 uses
  %i.j = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.k = and i64 %i.h, -262144
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = load i64, ptr %i.l, align 262144         ; 2 uses
  %i.n = and i64 %i.m, 32
  %.not.i.i.i.i.i = icmp eq i64 %i.n, 0
  %i.o = and i64 %i.m, 25
  %.not37.i.i.i.i.i = icmp eq i64 %i.o, 0
  br i1 %.not37.i.i.i.i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.p = and i64 %3, -262144
  %i.q = inttoptr i64 %i.p to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.q, align 262144
  %i.r = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, 25
  %.not38.i.i.i.i.i = icmp eq i64 %i.r, 0
  br i1 %.not38.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.i, i64 noundef %i.j, i64 %3) #28
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  br i1 %.not.i.i.i.i.i, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE16compare_and_swapEiNS0_6TaggedINS0_6ObjectEEES8_NS_15SeqCstAccessTagENS0_16WriteBarrierModeE.exit, label %bb.f, !prof !28

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.i, i64 %i.j, i64 %3) #28
  br label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE16compare_and_swapEiNS0_6TaggedINS0_6ObjectEEES8_NS_15SeqCstAccessTagENS0_16WriteBarrierModeE.exit

_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE16compare_and_swapEiNS0_6TaggedINS0_6ObjectEEES8_NS_15SeqCstAccessTagENS0_16WriteBarrierModeE.exit: ; preds = %bb.a, %bb.e, %bb.f
  %i.s = extractvalue { i64, i1 } %i.e, 0
  ret i64 %i.s
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden i32 @_ZN2v88internal10DictionaryINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE9DetailsAtENS0_13InternalIndexE(ptr noundef nonnull align 4 dereferenceable(16) %0, i64 %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = shl i64 %1, 32
  %sext.i.i.i.i = add i64 %i.b, 21474836480
  %i.c = ashr exact i64 %sext.i.i.i.i, 29
  %i.d = getelementptr inbounds i8, ptr %i.a, i64 %i.c
  %i.e = load atomic volatile i64, ptr %i.d monotonic, align 8
  %i.f = add i64 %i.e, 15
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load i64, ptr %i.g, align 8
  %i.i = lshr i64 %i.h, 32
  %i.j = trunc nuw i64 %i.i to i32
  ret i32 %i.j
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZN2v88internal10DictionaryINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE12DetailsAtPutENS0_13InternalIndexENS0_15PropertyDetailsE(ptr noundef nonnull align 4 dereferenceable(16) %0, i64 %1, i32 %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.1258", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = shl i64 %1, 32
  %sext.i.i.i.i = add i64 %i.b, 21474836480
  %i.c = ashr exact i64 %sext.i.i.i.i, 29
  %i.d = getelementptr inbounds i8, ptr %i.a, i64 %i.c
  %i.e = load atomic volatile i64, ptr %i.d monotonic, align 8 ; 2 uses
  %i.f = add i64 %i.e, 15
  %i.g = inttoptr i64 %i.f to ptr                 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8
  %i.i = lshr i64 %i.h, 32
  %i.j = trunc nuw i64 %i.i to i32                ; 2 uses
  %i.k = xor i32 %2, %i.j
  %i.l = and i32 %i.k, 224
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %_ZN2v88internal12PropertyCell24set_property_details_rawENS0_6TaggedINS0_3SmiEEENS_15ReleaseStoreTagENS0_16WriteBarrierModeE.exit.i.i, label %bb.b, !prof !28

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.331, ptr noundef nonnull @.str.417) #29
  unreachable

_ZN2v88internal12PropertyCell24set_property_details_rawENS0_6TaggedINS0_3SmiEEENS_15ReleaseStoreTagENS0_16WriteBarrierModeE.exit.i.i: ; preds = %bb.a
  %i.n = shl i32 %2, 1
  %i.o = ashr exact i32 %i.n, 1
  %i.p = sext i32 %i.o to i64
  %i.q = shl nsw i64 %i.p, 32
  store atomic volatile i64 %i.q, ptr %i.g release, align 8
  %i.r = and i32 %i.j, 4
  %i.s = icmp eq i32 %i.r, 0
  %i.t = and i32 %2, 4
  %i.u = icmp ne i32 %i.t, 0
  %or.cond.i.i = and i1 %i.u, %i.s
  br i1 %or.cond.i.i, label %bb.c, label %_ZN2v88internal21GlobalDictionaryShape12DetailsAtPutINS0_16GlobalDictionaryEEEvNS0_6TaggedIT_EENS0_13InternalIndexENS0_15PropertyDetailsE.exit

bb.c:                                             ; preds = %_ZN2v88internal12PropertyCell24set_property_details_rawENS0_6TaggedINS0_3SmiEEENS_15ReleaseStoreTagENS0_16WriteBarrierModeE.exit.i.i
  %i.v = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN2v88internal18g_current_isolate_E)
  %i.w = load ptr, ptr %i.v, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.x = add i64 %i.e, 31
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = load i64, ptr %i.y, align 8
  store i64 %i.z, ptr %3, align 8
  call void @_ZN2v88internal13DependentCode26DeoptimizeDependencyGroupsEPNS0_7IsolateENS_4base5FlagsINS1_15DependencyGroupEjjEE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %i.w, i32 4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %_ZN2v88internal21GlobalDictionaryShape12DetailsAtPutINS0_16GlobalDictionaryEEEvNS0_6TaggedIT_EENS0_13InternalIndexENS0_15PropertyDetailsE.exit

_ZN2v88internal21GlobalDictionaryShape12DetailsAtPutINS0_16GlobalDictionaryEEEvNS0_6TaggedIT_EENS0_13InternalIndexENS0_15PropertyDetailsE.exit: ; preds = %_ZN2v88internal12PropertyCell24set_property_details_rawENS0_6TaggedINS0_3SmiEEENS_15ReleaseStoreTagENS0_16WriteBarrierModeE.exit.i.i, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef i32 @_ZN2v88internal10DictionaryINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE28NumberOfEnumerablePropertiesEv(ptr noundef nonnull align 4 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 10624
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load atomic volatile i64, ptr %i.e monotonic, align 8
  %i.g = lshr i64 %i.f, 32                        ; 2 uses
  %.not21 = icmp eq i64 %i.g, 0
  br i1 %.not21, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE5ToKeyENS0_13ReadOnlyRootsENS0_13InternalIndexEPNS0_6TaggedINS0_6ObjectEEE.exit.thread, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %.2, %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE5ToKeyENS0_13ReadOnlyRootsENS0_13InternalIndexEPNS0_6TaggedINS0_6ObjectEEE.exit.thread ]
  ret i32 %.0.lcssa

bb.b:                                             ; preds = %.lr.ph, %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE5ToKeyENS0_13ReadOnlyRootsENS0_13InternalIndexEPNS0_6TaggedINS0_6ObjectEEE.exit.thread
  %.023 = phi i32 [ 0, %.lr.ph ], [ %.2, %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE5ToKeyENS0_13ReadOnlyRootsENS0_13InternalIndexEPNS0_6TaggedINS0_6ObjectEEE.exit.thread ] ; 4 uses
  %.sroa.015.022 = phi i64 [ 0, %.lr.ph ], [ %i.ai, %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE5ToKeyENS0_13ReadOnlyRootsENS0_13InternalIndexEPNS0_6TaggedINS0_6ObjectEEE.exit.thread ] ; 2 uses
  %i.j = shl i64 %.sroa.015.022, 32
  %sext.i.i.i = add i64 %i.j, 21474836480
  %i.k = ashr exact i64 %sext.i.i.i, 29
  %i.l = getelementptr inbounds i8, ptr %i.h, i64 %i.k ; 2 uses
  %i.m = load atomic volatile i64, ptr %i.l monotonic, align 8 ; 3 uses
  %i.n = load i64, ptr %i.d, align 8
  %i.o = icmp eq i64 %i.m, %i.n
  br i1 %i.o, label %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE5ToKeyENS0_13ReadOnlyRootsENS0_13InternalIndexEPNS0_6TaggedINS0_6ObjectEEE.exit.thread, label %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i

_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %bb.b
  %i.p = load i64, ptr %i.i, align 8
  %.not.i = icmp eq i64 %i.m, %i.p
  br i1 %.not.i, label %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE5ToKeyENS0_13ReadOnlyRootsENS0_13InternalIndexEPNS0_6TaggedINS0_6ObjectEEE.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i
  %i.q = add i64 %i.m, 7
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = load i64, ptr %i.r, align 8              ; 2 uses
  %i.t = trunc i64 %i.s to i1
  br i1 %i.t, label %_ZN2v88internal8IsSymbolENS0_6TaggedINS0_6ObjectEEE.exit.i, label %_ZN2v88internal6Object9FilterKeyENS0_6TaggedIS1_EENS0_14PropertyFilterE.exit

_ZN2v88internal8IsSymbolENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %bb.c
  %i.u = add nsw i64 %i.s, -1
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = load atomic volatile i64, ptr %i.v monotonic, align 8
  %i.x = add i64 %i.w, 11
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = load atomic volatile i16, ptr %i.y monotonic, align 2
  %i.aa = icmp eq i16 %i.z, 128
  br i1 %i.aa, label %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE5ToKeyENS0_13ReadOnlyRootsENS0_13InternalIndexEPNS0_6TaggedINS0_6ObjectEEE.exit.thread, label %_ZN2v88internal6Object9FilterKeyENS0_6TaggedIS1_EENS0_14PropertyFilterE.exit

_ZN2v88internal6Object9FilterKeyENS0_6TaggedIS1_EENS0_14PropertyFilterE.exit: ; preds = %_ZN2v88internal8IsSymbolENS0_6TaggedINS0_6ObjectEEE.exit.i, %bb.c
  %i.ab = load atomic volatile i64, ptr %i.l monotonic, align 8
  %i.ac = add i64 %i.ab, 15
  %i.ad = inttoptr i64 %i.ac to ptr
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = and i64 %i.ae, 34359738368
  %i.ag = icmp eq i64 %i.af, 0
  %i.ah = zext i1 %i.ag to i32
  %spec.select = add nsw i32 %.023, %i.ah
  br label %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE5ToKeyENS0_13ReadOnlyRootsENS0_13InternalIndexEPNS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE5ToKeyENS0_13ReadOnlyRootsENS0_13InternalIndexEPNS0_6TaggedINS0_6ObjectEEE.exit.thread: ; preds = %_ZN2v88internal8IsSymbolENS0_6TaggedINS0_6ObjectEEE.exit.i, %bb.b, %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i, %_ZN2v88internal6Object9FilterKeyENS0_6TaggedIS1_EENS0_14PropertyFilterE.exit
  %.2 = phi i32 [ %.023, %bb.b ], [ %spec.select, %_ZN2v88internal6Object9FilterKeyENS0_6TaggedIS1_EENS0_14PropertyFilterE.exit ], [ %.023, %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i ], [ %.023, %_ZN2v88internal8IsSymbolENS0_6TaggedINS0_6ObjectEEE.exit.i ] ; 2 uses
  %i.ai = add nuw nsw i64 %.sroa.015.022, 1       ; 2 uses
  %.not = icmp eq i64 %i.ai, %i.g
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden i64 @_ZN2v88internal10DictionaryINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE17SlowReverseLookupENS0_6TaggedINS0_6ObjectEEE(ptr noundef nonnull align 4 dereferenceable(16) %0, i64 %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 10624
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 96 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load atomic volatile i64, ptr %i.e monotonic, align 8
  %i.g = lshr i64 %i.f, 32                        ; 2 uses
  %.not31 = icmp eq i64 %i.g, 0
  br i1 %.not31, label %..critedge_crit_edge, label %.lr.ph

..critedge_crit_edge:                             ; preds = %bb.a
  %.pre = load i64, ptr %i.d, align 8
  br label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE5ToKeyENS0_13ReadOnlyRootsENS0_13InternalIndexEPNS0_6TaggedINS0_6ObjectEEE.exit.thread
  %.sroa.016.032 = phi i64 [ 0, %.lr.ph ], [ %i.y, %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE5ToKeyENS0_13ReadOnlyRootsENS0_13InternalIndexEPNS0_6TaggedINS0_6ObjectEEE.exit.thread ] ; 2 uses
  %i.j = shl i64 %.sroa.016.032, 32
  %sext.i.i.i = add i64 %i.j, 21474836480
  %i.k = ashr exact i64 %sext.i.i.i, 29
  %i.l = getelementptr inbounds i8, ptr %i.h, i64 %i.k ; 2 uses
  %i.m = load atomic volatile i64, ptr %i.l monotonic, align 8 ; 3 uses
  %i.n = load i64, ptr %i.d, align 8              ; 2 uses
  %i.o = icmp eq i64 %i.m, %i.n
  br i1 %i.o, label %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE5ToKeyENS0_13ReadOnlyRootsENS0_13InternalIndexEPNS0_6TaggedINS0_6ObjectEEE.exit.thread, label %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i

_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %bb.b
  %i.p = load i64, ptr %i.i, align 8
  %.not.i = icmp eq i64 %i.m, %i.p
  br i1 %.not.i, label %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE5ToKeyENS0_13ReadOnlyRootsENS0_13InternalIndexEPNS0_6TaggedINS0_6ObjectEEE.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i
  %i.q = add i64 %i.m, 7
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = load i64, ptr %i.r, align 8
  %i.t = load atomic volatile i64, ptr %i.l monotonic, align 8
  %i.u = add i64 %i.t, 23
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = load i64, ptr %i.v, align 8
  %i.x = icmp eq i64 %i.w, %1
  br i1 %i.x, label %.loopexit, label %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE5ToKeyENS0_13ReadOnlyRootsENS0_13InternalIndexEPNS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE5ToKeyENS0_13ReadOnlyRootsENS0_13InternalIndexEPNS0_6TaggedINS0_6ObjectEEE.exit.thread: ; preds = %bb.b, %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i, %bb.c
  %i.y = add nuw nsw i64 %.sroa.016.032, 1        ; 2 uses
  %.not = icmp eq i64 %i.y, %i.g
  br i1 %.not, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %bb.c, %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE5ToKeyENS0_13ReadOnlyRootsENS0_13InternalIndexEPNS0_6TaggedINS0_6ObjectEEE.exit.thread, %..critedge_crit_edge
  %.sroa.024.0 = phi i64 [ %.pre, %..critedge_crit_edge ], [ %i.s, %bb.c ], [ %i.n, %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE5ToKeyENS0_13ReadOnlyRootsENS0_13InternalIndexEPNS0_6TaggedINS0_6ObjectEEE.exit.thread ]
  ret i64 %.sroa.024.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZN2v88internal10DictionaryINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE10ClearEntryENS0_13InternalIndexE(ptr noundef nonnull align 4 dereferenceable(16) %0, i64 %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 10624
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.e = load i64, ptr %i.d, align 8              ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = shl i64 %1, 32
  %sext.i = add i64 %i.g, 21474836480
  %i.h = ashr exact i64 %sext.i, 29
  %i.i = getelementptr inbounds i8, ptr %i.f, i64 %i.h ; 3 uses
  store atomic volatile i64 %i.e, ptr %i.i monotonic, align 8
  %i.j = trunc i64 %i.e to i1
  br i1 %i.j, label %bb.b, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i

bb.b:                                             ; preds = %bb.a
  %i.k = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.l = or disjoint i64 %i.k, 1                  ; 2 uses
  %i.m = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.n = and i64 %i.k, -262144
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = load i64, ptr %i.o, align 262144         ; 2 uses
  %i.q = and i64 %i.p, 32
  %.not.i.i.i.i.i.i = icmp eq i64 %i.q, 0
  %i.r = and i64 %i.p, 25
  %.not37.i.i.i.i.i.i = icmp eq i64 %i.r, 0
  br i1 %.not37.i.i.i.i.i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.s = and i64 %i.e, -262144
  %i.t = inttoptr i64 %i.s to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.t, align 262144
  %i.u = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, 25
  %.not38.i.i.i.i.i.i = icmp eq i64 %i.u, 0
  br i1 %.not38.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.l, i64 noundef %i.m, i64 %i.e) #28
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  br i1 %.not.i.i.i.i.i.i, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i, label %bb.f, !prof !28

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.l, i64 %i.m, i64 %i.e) #28
  br label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i

_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i: ; preds = %bb.f, %bb.e, %bb.a
  %i.v = load atomic volatile i64, ptr %i.i monotonic, align 8
  %i.w = add i64 %i.v, 15
  %i.x = inttoptr i64 %i.w to ptr                 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8
  %i.z = and i64 %i.y, 962072674304
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZN2v88internal16GlobalDictionary8SetEntryENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEES5_NS0_15PropertyDetailsE.exit, label %bb.g, !prof !28

bb.g:                                             ; preds = %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.331, ptr noundef nonnull @.str.417) #29
  unreachable

_ZN2v88internal16GlobalDictionary8SetEntryENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEES5_NS0_15PropertyDetailsE.exit: ; preds = %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i
  store atomic volatile i64 0, ptr %i.x release, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal16GlobalDictionary8SetEntryENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEES5_NS0_15PropertyDetailsE(ptr noundef nonnull align 4 dereferenceable(16) %0, i64 %1, i64 %2, i64 %3, i32 %4) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %5 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.1258", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = shl i64 %1, 32
  %sext = add i64 %i.b, 21474836480
  %i.c = ashr exact i64 %sext, 29
  %i.d = getelementptr inbounds i8, ptr %i.a, i64 %i.c ; 3 uses
  store atomic volatile i64 %3, ptr %i.d monotonic, align 8
  %i.e = trunc i64 %3 to i1
  br i1 %i.e, label %bb.b, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

bb.b:                                             ; preds = %bb.a
  %i.f = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.g = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.h = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.i = and i64 %i.f, -262144
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = load i64, ptr %i.j, align 262144         ; 2 uses
  %i.l = and i64 %i.k, 32
  %.not.i.i.i.i.i = icmp eq i64 %i.l, 0
  %i.m = and i64 %i.k, 25
  %.not37.i.i.i.i.i = icmp eq i64 %i.m, 0
  br i1 %.not37.i.i.i.i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.n = and i64 %3, -262144
  %i.o = inttoptr i64 %i.n to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.o, align 262144
  %i.p = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, 25
  %.not38.i.i.i.i.i = icmp eq i64 %i.p, 0
  br i1 %.not38.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.g, i64 noundef %i.h, i64 %3) #28
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  br i1 %.not.i.i.i.i.i, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit, label %bb.f, !prof !28

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.g, i64 %i.h, i64 %3) #28
  br label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit: ; preds = %bb.a, %bb.e, %bb.f
  %i.q = load atomic volatile i64, ptr %i.d monotonic, align 8 ; 2 uses
  %i.r = add i64 %i.q, 15
  %i.s = inttoptr i64 %i.r to ptr                 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8
  %i.u = lshr i64 %i.t, 32
  %i.v = trunc nuw i64 %i.u to i32                ; 2 uses
  %i.w = xor i32 %4, %i.v
  %i.x = and i32 %i.w, 224
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %_ZN2v88internal12PropertyCell24set_property_details_rawENS0_6TaggedINS0_3SmiEEENS_15ReleaseStoreTagENS0_16WriteBarrierModeE.exit.i.i.i, label %bb.g, !prof !28

bb.g:                                             ; preds = %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.331, ptr noundef nonnull @.str.417) #29
  unreachable

_ZN2v88internal12PropertyCell24set_property_details_rawENS0_6TaggedINS0_3SmiEEENS_15ReleaseStoreTagENS0_16WriteBarrierModeE.exit.i.i.i: ; preds = %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit
  %i.z = shl i32 %4, 1
  %i.aa = ashr exact i32 %i.z, 1
  %i.ab = sext i32 %i.aa to i64
  %i.ac = shl nsw i64 %i.ab, 32
  store atomic volatile i64 %i.ac, ptr %i.s release, align 8
  %i.ad = and i32 %i.v, 4
  %i.ae = icmp eq i32 %i.ad, 0
  %i.af = and i32 %4, 4
  %i.ag = icmp ne i32 %i.af, 0
  %or.cond.i.i.i = and i1 %i.ag, %i.ae
  br i1 %or.cond.i.i.i, label %bb.h, label %_ZN2v88internal10DictionaryINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE12DetailsAtPutENS0_13InternalIndexENS0_15PropertyDetailsE.exit

bb.h:                                             ; preds = %_ZN2v88internal12PropertyCell24set_property_details_rawENS0_6TaggedINS0_3SmiEEENS_15ReleaseStoreTagENS0_16WriteBarrierModeE.exit.i.i.i
  %i.ah = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN2v88internal18g_current_isolate_E)
  %i.ai = load ptr, ptr %i.ah, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.aj = add i64 %i.q, 31
  %i.ak = inttoptr i64 %i.aj to ptr
  %i.al = load i64, ptr %i.ak, align 8
  store i64 %i.al, ptr %5, align 8
  call void @_ZN2v88internal13DependentCode26DeoptimizeDependencyGroupsEPNS0_7IsolateENS_4base5FlagsINS1_15DependencyGroupEjjEE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %i.ai, i32 4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %_ZN2v88internal10DictionaryINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE12DetailsAtPutENS0_13InternalIndexENS0_15PropertyDetailsE.exit

_ZN2v88internal10DictionaryINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE12DetailsAtPutENS0_13InternalIndexENS0_15PropertyDetailsE.exit: ; preds = %_ZN2v88internal12PropertyCell24set_property_details_rawENS0_6TaggedINS0_3SmiEEENS_15ReleaseStoreTagENS0_16WriteBarrierModeE.exit.i.i.i, %bb.h
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZN2v88internal10DictionaryINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE8SetEntryENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEES8_NS0_15PropertyDetailsE(ptr noundef nonnull align 4 dereferenceable(16) %0, i64 %1, i64 %2, i64 %3, i32 %4) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %5 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.1258", align 8 ; 4 uses
  %6 = alloca %"class.v8::internal::WriteBarrierModeScope", align 4 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = or disjoint i64 %i.a, 1                  ; 5 uses
  %i.c = and i64 %i.a, -262144
end_hunk_7
begin_hunk_8_@_ZN2v88internal18BaseNameDictionaryINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE20NextEnumerationIndexEPNS0_7IsolateENS0_12DirectHandleIS2_EE:bb.a
bb.c:                                             ; preds = %.lr.ph, %_ZN2v88internal10DictionaryINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE12DetailsAtPutENS0_13InternalIndexENS0_15PropertyDetailsE.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN2v88internal10DictionaryINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE12DetailsAtPutENS0_13InternalIndexENS0_15PropertyDetailsE.exit ] ; 2 uses
  %i.t = load i64, ptr %i.i, align 8
  %i.u = add i64 %i.t, -1
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv
  %i.y = load atomic volatile i64, ptr %i.x monotonic, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.z = load i64, ptr %1, align 8
  %i.aa = add i64 %i.z, -1
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = and i64 %i.y, -4294967296
  %sext.i.i.i.i.i = add i64 %i.ad, 21474836480
  %i.ae = ashr exact i64 %sext.i.i.i.i.i, 29
  %i.af = getelementptr inbounds i8, ptr %i.ac, i64 %i.ae ; 2 uses
  %i.ag = load atomic volatile i64, ptr %i.af monotonic, align 8
  %i.ah = add i64 %i.ag, 15
  %i.ai = inttoptr i64 %i.ah to ptr
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = lshr i64 %i.aj, 32
  %i.al = trunc nuw i64 %i.ak to i32              ; 3 uses
  %i.am = load atomic volatile i64, ptr %i.af monotonic, align 8 ; 2 uses
  %i.an = add i64 %i.am, 15
  %i.ao = inttoptr i64 %i.an to ptr               ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = lshr i64 %i.ap, 32
  %i.ar = trunc nuw i64 %i.aq to i32              ; 2 uses
  %i.as = xor i32 %i.ar, %i.al
  %i.at = and i32 %i.as, 224
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %_ZN2v88internal12PropertyCell24set_property_details_rawENS0_6TaggedINS0_3SmiEEENS_15ReleaseStoreTagENS0_16WriteBarrierModeE.exit.i.i.i, label %bb.d, !prof !28

bb.d:                                             ; preds = %bb.c
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.331, ptr noundef nonnull @.str.417) #29
  unreachable

_ZN2v88internal12PropertyCell24set_property_details_rawENS0_6TaggedINS0_3SmiEEENS_15ReleaseStoreTagENS0_16WriteBarrierModeE.exit.i.i.i: ; preds = %bb.c
  %i.av = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.aw = shl i32 %i.av, 9
  %i.ax = shl i32 %i.al, 1
  %i.ay = and i32 %i.ax, 510
  %i.az = or disjoint i32 %i.ay, %i.aw
  %i.ba = ashr exact i32 %i.az, 1
  %i.bb = sext i32 %i.ba to i64
  %i.bc = shl nsw i64 %i.bb, 32
  store atomic volatile i64 %i.bc, ptr %i.ao release, align 8
  %i.bd = and i32 %i.ar, 4
  %i.be = icmp eq i32 %i.bd, 0
  %i.bf = and i32 %i.al, 4
  %i.bg = icmp ne i32 %i.bf, 0
  %or.cond.i.i.i = and i1 %i.bg, %i.be
  br i1 %or.cond.i.i.i, label %bb.e, label %_ZN2v88internal10DictionaryINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE12DetailsAtPutENS0_13InternalIndexENS0_15PropertyDetailsE.exit

bb.e:                                             ; preds = %_ZN2v88internal12PropertyCell24set_property_details_rawENS0_6TaggedINS0_3SmiEEENS_15ReleaseStoreTagENS0_16WriteBarrierModeE.exit.i.i.i
  %i.bh = load ptr, ptr %i.r, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.bi = add i64 %i.am, 31
  %i.bj = inttoptr i64 %i.bi to ptr
  %i.bk = load i64, ptr %i.bj, align 8
  store i64 %i.bk, ptr %2, align 8
  call void @_ZN2v88internal13DependentCode26DeoptimizeDependencyGroupsEPNS0_7IsolateENS_4base5FlagsINS1_15DependencyGroupEjjEE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %i.bh, i32 4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %_ZN2v88internal10DictionaryINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE12DetailsAtPutENS0_13InternalIndexENS0_15PropertyDetailsE.exit

_ZN2v88internal10DictionaryINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE12DetailsAtPutENS0_13InternalIndexENS0_15PropertyDetailsE.exit: ; preds = %_ZN2v88internal12PropertyCell24set_property_details_rawENS0_6TaggedINS0_3SmiEEENS_15ReleaseStoreTagENS0_16WriteBarrierModeE.exit.i.i.i, %bb.e
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.o
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !247

bb.f:                                             ; preds = %._crit_edge, %bb.a
  %.0 = phi i32 [ %i.g, %bb.a ], [ %i.s, %._crit_edge ]
  ret i32 %.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef i32 @_ZN2v88internal18BaseNameDictionaryINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE22next_enumeration_indexEv(ptr noundef nonnull align 4 dereferenceable(16) %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load atomic volatile i64, ptr %i.a monotonic, align 8
  %i.c = lshr i64 %i.b, 32
  %i.d = trunc nuw i64 %i.c to i32
  ret i32 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZN2v88internal18BaseNameDictionaryINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE16IterationIndicesEPNS0_7IsolateENS0_12DirectHandleIS2_EE(ptr noundef %0, ptr %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8
  %i.b = add i64 %i.a, -1
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load atomic volatile i64, ptr %i.d monotonic, align 8
  %i.f = lshr i64 %i.e, 32
  %i.g = trunc nuw i64 %i.f to i32
  %i.h = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewFixedArrayEiNS0_14AllocationTypeENS0_14AllocationHintE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.g, i8 noundef zeroext 0, i8 0) #28 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.j = load i64, ptr %1, align 8                ; 4 uses
  %i.k = add i64 %i.j, -1
  %i.l = inttoptr i64 %i.k to ptr                 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = load atomic volatile i64, ptr %i.m monotonic, align 8
  %i.o = lshr i64 %i.n, 32                        ; 2 uses
  %.not54 = icmp eq i64 %i.o, 0
  br i1 %.not54, label %_ZSt4sortIN2v88internal10AtomicSlotENS1_19EnumIndexComparatorINS1_16GlobalDictionaryEEEEvT_S6_T0_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 656
  br label %bb.h

._crit_edge:                                      ; preds = %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE5ToKeyENS0_13ReadOnlyRootsENS0_13InternalIndexEPNS0_6TaggedINS0_6ObjectEEE.exit.thread
  %i.r = load i64, ptr %i.h, align 8              ; 2 uses
  %i.s = add i64 %i.r, 15                         ; 4 uses
  %i.t = sext i32 %.1 to i64
  %i.u = shl nsw i64 %i.t, 3                      ; 2 uses
  %i.v = add i64 %i.s, %i.u                       ; 4 uses
  %.not.i.i = icmp eq i32 %.1, 0
  br i1 %.not.i.i, label %_ZSt4sortIN2v88internal10AtomicSlotENS1_19EnumIndexComparatorINS1_16GlobalDictionaryEEEEvT_S6_T0_.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  %i.x = ashr exact i32 %i.w, 3
  %i.y = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.x, i1 false)
  %i.z = shl nuw nsw i32 %i.y, 1
  %i.aa = sub nsw i32 62, %i.z
  tail call void @_ZSt16__introsort_loopIN2v88internal10AtomicSlotEiN9__gnu_cxx5__ops15_Iter_comp_iterINS1_19EnumIndexComparatorINS1_16GlobalDictionaryEEEEEEvT_SA_T0_T1_(i64 %i.s, i64 %i.v, i32 noundef %i.aa, i64 %i.j)
  %i.ab = icmp sgt i32 %i.w, 135
  br i1 %i.ab, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.ac = add i64 %i.r, 143                       ; 3 uses
  tail call void @_ZSt16__insertion_sortIN2v88internal10AtomicSlotEN9__gnu_cxx5__ops15_Iter_comp_iterINS1_19EnumIndexComparatorINS1_16GlobalDictionaryEEEEEEvT_SA_T0_(i64 %i.s, i64 %i.ac, i64 %i.j)
  %.not8.i.i.i.i = icmp eq i64 %i.ac, %i.v
  br i1 %.not8.i.i.i.i, label %_ZSt4sortIN2v88internal10AtomicSlotENS1_19EnumIndexComparatorINS1_16GlobalDictionaryEEEEvT_S6_T0_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %_ZSt25__unguarded_linear_insertIN2v88internal10AtomicSlotEN9__gnu_cxx5__ops14_Val_comp_iterINS1_19EnumIndexComparatorINS1_16GlobalDictionaryEEEEEEvT_T0_.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %.sroa.0.09.i.i.i.i = phi i64 [ %i.ac, %.lr.ph.i.i.i.i ], [ %i.bd, %_ZSt25__unguarded_linear_insertIN2v88internal10AtomicSlotEN9__gnu_cxx5__ops14_Val_comp_iterINS1_19EnumIndexComparatorINS1_16GlobalDictionaryEEEEEEvT_T0_.exit.i.i.i.i ] ; 3 uses
  %i.ae = inttoptr i64 %.sroa.0.09.i.i.i.i to ptr
  %i.af = load atomic volatile i64, ptr %i.ae monotonic, align 8 ; 2 uses
  %i.ag = and i64 %i.af, -4294967296
  %sext.i.i.i.i.i.i.i.i.i.i.i.i = add i64 %i.ag, 21474836480
  %i.ah = ashr exact i64 %sext.i.i.i.i.i.i.i.i.i.i.i.i, 29
  %i.ai = getelementptr inbounds i8, ptr %i.ad, i64 %i.ah
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %.sroa.011.0.i.i.i.i.i = phi i64 [ %.sroa.0.09.i.i.i.i, %bb.d ], [ %.sroa.03.0.i.i.i.i.i, %bb.f ] ; 2 uses
  %.sroa.03.0.i.i.i.i.i = add i64 %.sroa.011.0.i.i.i.i.i, -8 ; 2 uses
  %i.aj = inttoptr i64 %.sroa.03.0.i.i.i.i.i to ptr ; 2 uses
  %i.ak = load atomic volatile i64, ptr %i.aj monotonic, align 8
  %i.al = load atomic volatile i64, ptr %i.ai monotonic, align 8
  %i.am = add i64 %i.al, 15
  %i.an = inttoptr i64 %i.am to ptr
  %i.ao = load i64, ptr %i.an, align 8
  %i.ap = and i64 %i.ak, -4294967296
  %sext.i.i.i.i.i2.i.i.i.i.i.i.i = add i64 %i.ap, 21474836480
  %i.aq = ashr exact i64 %sext.i.i.i.i.i2.i.i.i.i.i.i.i, 29
  %i.ar = getelementptr inbounds i8, ptr %i.ad, i64 %i.aq
  %i.as = load atomic volatile i64, ptr %i.ar monotonic, align 8
  %i.at = add i64 %i.as, 15
  %i.au = inttoptr i64 %i.at to ptr
  %i.av = load i64, ptr %i.au, align 8
  %sum.shift.i.i.i.i.i.i.i = lshr i64 %i.ao, 40
  %i.aw = trunc nuw nsw i64 %sum.shift.i.i.i.i.i.i.i to i32
  %i.ax = and i32 %i.aw, 8388607
  %sum.shift8.i.i.i.i.i.i.i = lshr i64 %i.av, 40
  %i.ay = trunc nuw nsw i64 %sum.shift8.i.i.i.i.i.i.i to i32
  %i.az = and i32 %i.ay, 8388607
  %i.ba = icmp samesign ult i32 %i.ax, %i.az
  %i.bb = inttoptr i64 %.sroa.011.0.i.i.i.i.i to ptr ; 2 uses
  br i1 %i.ba, label %bb.f, label %_ZSt25__unguarded_linear_insertIN2v88internal10AtomicSlotEN9__gnu_cxx5__ops14_Val_comp_iterINS1_19EnumIndexComparatorINS1_16GlobalDictionaryEEEEEEvT_T0_.exit.i.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.bc = load atomic volatile i64, ptr %i.aj monotonic, align 8
  store atomic volatile i64 %i.bc, ptr %i.bb monotonic, align 8
  br label %bb.e, !llvm.loop !248

_ZSt25__unguarded_linear_insertIN2v88internal10AtomicSlotEN9__gnu_cxx5__ops14_Val_comp_iterINS1_19EnumIndexComparatorINS1_16GlobalDictionaryEEEEEEvT_T0_.exit.i.i.i.i: ; preds = %bb.e
  store atomic volatile i64 %i.af, ptr %i.bb monotonic, align 8
  %i.bd = add i64 %.sroa.0.09.i.i.i.i, 8          ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.bd, %i.v
  br i1 %.not.i.i.i.i, label %_ZSt4sortIN2v88internal10AtomicSlotENS1_19EnumIndexComparatorINS1_16GlobalDictionaryEEEEvT_S6_T0_.exit, label %bb.d, !llvm.loop !249

bb.g:                                             ; preds = %bb.b
  tail call void @_ZSt16__insertion_sortIN2v88internal10AtomicSlotEN9__gnu_cxx5__ops15_Iter_comp_iterINS1_19EnumIndexComparatorINS1_16GlobalDictionaryEEEEEEvT_SA_T0_(i64 %i.s, i64 %i.v, i64 %i.j)
  br label %_ZSt4sortIN2v88internal10AtomicSlotENS1_19EnumIndexComparatorINS1_16GlobalDictionaryEEEEvT_S6_T0_.exit

_ZSt4sortIN2v88internal10AtomicSlotENS1_19EnumIndexComparatorINS1_16GlobalDictionaryEEEEvT_S6_T0_.exit: ; preds = %_ZSt25__unguarded_linear_insertIN2v88internal10AtomicSlotEN9__gnu_cxx5__ops14_Val_comp_iterINS1_19EnumIndexComparatorINS1_16GlobalDictionaryEEEEEEvT_T0_.exit.i.i.i.i, %bb.a, %._crit_edge, %bb.c, %bb.g
  %.0.lcssa64 = phi i32 [ 0, %bb.a ], [ %.1, %bb.g ], [ 0, %._crit_edge ], [ %.1, %bb.c ], [ %.1, %_ZSt25__unguarded_linear_insertIN2v88internal10AtomicSlotEN9__gnu_cxx5__ops14_Val_comp_iterINS1_19EnumIndexComparatorINS1_16GlobalDictionaryEEEEEEvT_T0_.exit.i.i.i.i ]
  %i.be = tail call ptr @_ZN2v88internal10FixedArray16RightTrimOrEmptyINS0_12DirectHandleEQsr3stdE16is_convertible_vIT_IS1_ENS3_IS1_EEEEES5_PNS0_7IsolateES5_i(ptr noundef nonnull %0, ptr nonnull %i.h, i32 noundef %.0.lcssa64) #28
  ret ptr %i.be

bb.h:                                             ; preds = %.lr.ph, %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE5ToKeyENS0_13ReadOnlyRootsENS0_13InternalIndexEPNS0_6TaggedINS0_6ObjectEEE.exit.thread
  %.056 = phi i32 [ 0, %.lr.ph ], [ %.1, %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE5ToKeyENS0_13ReadOnlyRootsENS0_13InternalIndexEPNS0_6TaggedINS0_6ObjectEEE.exit.thread ] ; 4 uses
  %.sroa.033.055 = phi i64 [ 0, %.lr.ph ], [ %i.bt, %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE5ToKeyENS0_13ReadOnlyRootsENS0_13InternalIndexEPNS0_6TaggedINS0_6ObjectEEE.exit.thread ] ; 2 uses
  %i.bf = shl i64 %.sroa.033.055, 32              ; 2 uses
  %sext.i.i.i = add i64 %i.bf, 21474836480
  %i.bg = ashr exact i64 %sext.i.i.i, 29
  %i.bh = getelementptr inbounds i8, ptr %i.p, i64 %i.bg
  %i.bi = load atomic volatile i64, ptr %i.bh monotonic, align 8 ; 2 uses
  %i.bj = load i64, ptr %i.i, align 8
  %i.bk = icmp eq i64 %i.bi, %i.bj
  br i1 %i.bk, label %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE5ToKeyENS0_13ReadOnlyRootsENS0_13InternalIndexEPNS0_6TaggedINS0_6ObjectEEE.exit.thread, label %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i

_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %bb.h
  %i.bl = load i64, ptr %i.q, align 8
  %.not.i = icmp eq i64 %i.bi, %i.bl
  br i1 %.not.i, label %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE5ToKeyENS0_13ReadOnlyRootsENS0_13InternalIndexEPNS0_6TaggedINS0_6ObjectEEE.exit.thread, label %bb.i

bb.i:                                             ; preds = %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i
  %i.bm = load i64, ptr %i.h, align 8
  %i.bn = add i64 %i.bm, -1
  %i.bo = inttoptr i64 %i.bn to ptr
  %i.bp = add nsw i32 %.056, 1
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.br = sext i32 %.056 to i64
  %i.bs = getelementptr inbounds [8 x i8], ptr %i.bq, i64 %i.br
  store atomic volatile i64 %i.bf, ptr %i.bs monotonic, align 8
  br label %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE5ToKeyENS0_13ReadOnlyRootsENS0_13InternalIndexEPNS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE5ToKeyENS0_13ReadOnlyRootsENS0_13InternalIndexEPNS0_6TaggedINS0_6ObjectEEE.exit.thread: ; preds = %bb.h, %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i, %bb.i
  %.1 = phi i32 [ %i.bp, %bb.i ], [ %.056, %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i ], [ %.056, %bb.h ] ; 6 uses
  %i.bt = add nuw nsw i64 %.sroa.033.055, 1       ; 2 uses
  %.not = icmp eq i64 %i.bt, %i.o
  br i1 %.not, label %._crit_edge, label %bb.h
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZN2v88internal18BaseNameDictionaryINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE26set_next_enumeration_indexEi(ptr noundef nonnull align 4 dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = sext i32 %1 to i64
  %i.b = shl nsw i64 %i.a, 32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  store atomic volatile i64 %i.b, ptr %i.c monotonic, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZN2v88internal18BaseNameDictionaryINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE3NewINS0_7IsolateEEENS0_6HandleIS2_EEPT_iNS0_14AllocationTypeENS0_15MinimumCapacityE(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2, i32 noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq i32 %3, 1
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i32 %1, 1
  %i.c = add i32 %i.b, %1
  %spec.select.i.i.i.i = tail call i32 @llvm.usub.sat.i32(i32 %i.c, i32 1)
  %i.d = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %spec.select.i.i.i.i, i1 false)
  %i.e = sub nuw nsw i32 32, %i.d
  %i.f = shl nuw i32 1, %i.e
  %i.g = tail call noundef i32 @llvm.umax.i32(i32 %i.f, i32 4)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = phi i32 [ %i.g, %bb.b ], [ %1, %bb.a ]   ; 3 uses
  %i.i = icmp ugt i32 %i.h, 134217723
  br i1 %i.i, label %_ZNK2v88internal11MaybeHandleINS0_16GlobalDictionaryEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.i, label %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE3NewINS0_7IsolateEEENS0_6HandleIS2_EEPT_jNS0_14AllocationTypeENS0_15MinimumCapacityE.exit

_ZNK2v88internal11MaybeHandleINS0_16GlobalDictionaryEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.i: ; preds = %bb.c
  tail call void @_ZN2v88internal7Isolate27FatalProcessOutOfHeapMemoryEPKc(ptr noundef nonnull align 8 dereferenceable(64320) %0, ptr noundef nonnull @.str.1)
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #29
  unreachable

_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE3NewINS0_7IsolateEEENS0_6HandleIS2_EEPT_jNS0_14AllocationTypeENS0_15MinimumCapacityE.exit: ; preds = %bb.c
  %i.j = add nuw nsw i32 %i.h, 5
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1120
  %i.l = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewFixedArrayWithMapENS0_12DirectHandleINS0_3MapEEEiNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %i.k, i32 noundef %i.j, i8 noundef zeroext %2) #28 ; 4 uses
  %i.m = load i64, ptr %i.l, align 8
  %i.n = add i64 %i.m, -1
  %i.o = inttoptr i64 %i.n to ptr                 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store atomic volatile i64 0, ptr %i.p monotonic, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store atomic volatile i64 0, ptr %i.q monotonic, align 8
  %i.r = zext nneg i32 %i.h to i64
  %i.s = shl nuw nsw i64 %i.r, 32
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  store atomic volatile i64 %i.s, ptr %i.t monotonic, align 8
  %i.u = load i64, ptr %i.l, align 8
  %i.v = add i64 %i.u, -1
  %i.w = inttoptr i64 %i.v to ptr
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  store atomic volatile i64 0, ptr %i.x monotonic, align 8
  %i.y = load i64, ptr %i.l, align 8
  %i.z = add i64 %i.y, -1
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  store atomic volatile i64 4294967296, ptr %i.ab monotonic, align 8
  ret ptr %i.l
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZN2v88internal18BaseNameDictionaryINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE3NewINS0_12LocalIsolateEEENS0_6HandleIS2_EEPT_iNS0_14AllocationTypeENS0_15MinimumCapacityE(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2, i32 noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq i32 %3, 1
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i32 %1, 1
  %i.c = add i32 %i.b, %1
  %spec.select.i.i.i.i = tail call i32 @llvm.usub.sat.i32(i32 %i.c, i32 1)
  %i.d = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %spec.select.i.i.i.i, i1 false)
  %i.e = sub nuw nsw i32 32, %i.d
  %i.f = shl nuw i32 1, %i.e
  %i.g = tail call noundef i32 @llvm.umax.i32(i32 %i.f, i32 4)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = phi i32 [ %i.g, %bb.b ], [ %1, %bb.a ]   ; 3 uses
  %i.i = icmp ugt i32 %i.h, 134217723
  br i1 %i.i, label %_ZNK2v88internal11MaybeHandleINS0_16GlobalDictionaryEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.i, label %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE3NewINS0_12LocalIsolateEEENS0_6HandleIS2_EEPT_jNS0_14AllocationTypeENS0_15MinimumCapacityE.exit

_ZNK2v88internal11MaybeHandleINS0_16GlobalDictionaryEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.i: ; preds = %bb.c
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #29
  unreachable

_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE3NewINS0_12LocalIsolateEEENS0_6HandleIS2_EEPT_jNS0_14AllocationTypeENS0_15MinimumCapacityE.exit: ; preds = %bb.c
  %i.j = add nuw nsw i32 %i.h, 5
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1952
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 1120
  %i.n = tail call ptr @_ZN2v88internal11FactoryBaseINS0_12LocalFactoryEE20NewFixedArrayWithMapENS0_12DirectHandleINS0_3MapEEEiNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %i.m, i32 noundef %i.j, i8 noundef zeroext %2) #28 ; 4 uses
  %i.o = load i64, ptr %i.n, align 8
  %i.p = add i64 %i.o, -1
  %i.q = inttoptr i64 %i.p to ptr                 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store atomic volatile i64 0, ptr %i.r monotonic, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store atomic volatile i64 0, ptr %i.s monotonic, align 8
  %i.t = zext nneg i32 %i.h to i64
  %i.u = shl nuw nsw i64 %i.t, 32
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  store atomic volatile i64 %i.u, ptr %i.v monotonic, align 8
  %i.w = load i64, ptr %i.n, align 8
  %i.x = add i64 %i.w, -1
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  store atomic volatile i64 0, ptr %i.z monotonic, align 8
  %i.aa = load i64, ptr %i.n, align 8
  %i.ab = add i64 %i.aa, -1
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  store atomic volatile i64 4294967296, ptr %i.ad monotonic, align 8
  ret ptr %i.n
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZN2v88internal18BaseNameDictionaryINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE3AddINS0_12DirectHandleEQsr3stdE16is_convertible_vITL0__IT_ENS6_IS8_EEEEET_IS2_EPNS0_7IsolateESC_NS6_INS0_4NameEEENS6_INS0_6ObjectEEENS0_15PropertyDetailsEPNS0_13InternalIndexE(ptr noundef %0, ptr %1, ptr %2, ptr %3, i32 %4, ptr noundef %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZN2v88internal18BaseNameDictionaryINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE20NextEnumerationIndexEPNS0_7IsolateENS0_12DirectHandleIS2_EE(ptr noundef %0, ptr %1) ; 2 uses
  %i.b = and i32 %4, -2147483393
  %i.c = shl i32 %i.a, 8
  %i.d = or i32 %i.c, %i.b
  %i.e = tail call ptr @_ZN2v88internal10DictionaryINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE3AddINS0_7IsolateENS0_12DirectHandleELNS0_14AllocationTypeE0EQsr3stdE16is_convertible_vITL0_0_IT_ENS7_ISA_EEEEET0_IS2_EPSA_SE_NS7_INS0_4NameEEENS7_INS0_6ObjectEEENS0_15PropertyDetailsEPNS0_13InternalIndexE(ptr noundef %0, ptr %1, ptr %2, ptr %3, i32 %i.d, ptr noundef %5) ; 2 uses
  %i.f = load i64, ptr %i.e, align 8
  %i.g = add i64 %i.f, -1
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = add nsw i32 %i.a, 1
  %i.j = sext i32 %i.i to i64
  %i.k = shl nsw i64 %i.j, 32
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store atomic volatile i64 %i.k, ptr %i.l monotonic, align 8
  ret ptr %i.e
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZN2v88internal18BaseNameDictionaryINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE31AddNoUpdateNextEnumerationIndexINS0_7IsolateENS0_12DirectHandleEQsr3stdE16is_convertible_vITL0_0_IT_ENS7_IS9_EEEEET0_IS2_EPS9_SD_NS7_INS0_4NameEEENS7_INS0_6ObjectEEENS0_15PropertyDetailsEPNS0_13InternalIndexE(ptr noundef %0, ptr %1, ptr %2, ptr %3, i32 %4, ptr noundef %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call ptr @_ZN2v88internal10DictionaryINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE3AddINS0_7IsolateENS0_12DirectHandleELNS0_14AllocationTypeE0EQsr3stdE16is_convertible_vITL0_0_IT_ENS7_ISA_EEEEET0_IS2_EPSA_SE_NS7_INS0_4NameEEENS7_INS0_6ObjectEEENS0_15PropertyDetailsEPNS0_13InternalIndexE(ptr noundef %0, ptr %1, ptr %2, ptr %3, i32 %4, ptr noundef %5)
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZN2v88internal18BaseNameDictionaryINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE3AddINS0_6HandleEQsr3stdE16is_convertible_vITL0__IT_ENS0_12DirectHandleIS8_EEEEET_IS2_EPNS0_7IsolateESD_NSA_INS0_4NameEEENSA_INS0_6ObjectEEENS0_15PropertyDetailsEPNS0_13InternalIndexE(ptr noundef %0, ptr %1, ptr %2, ptr %3, i32 %4, ptr noundef %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZN2v88internal18BaseNameDictionaryINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE20NextEnumerationIndexEPNS0_7IsolateENS0_12DirectHandleIS2_EE(ptr noundef %0, ptr %1) ; 2 uses
  %i.b = and i32 %4, -2147483393
  %i.c = shl i32 %i.a, 8
  %i.d = or i32 %i.c, %i.b
  %i.e = tail call ptr @_ZN2v88internal10DictionaryINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE3AddINS0_7IsolateENS0_6HandleELNS0_14AllocationTypeE0EQsr3stdE16is_convertible_vITL0_0_IT_ENS0_12DirectHandleISA_EEEEET0_IS2_EPSA_SF_NSC_INS0_4NameEEENSC_INS0_6ObjectEEENS0_15PropertyDetailsEPNS0_13InternalIndexE(ptr noundef %0, ptr %1, ptr %2, ptr %3, i32 %i.d, ptr noundef %5) ; 2 uses
  %i.f = load i64, ptr %i.e, align 8
  %i.g = add i64 %i.f, -1
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = add nsw i32 %i.a, 1
  %i.j = sext i32 %i.i to i64
  %i.k = shl nsw i64 %i.j, 32
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store atomic volatile i64 %i.k, ptr %i.l monotonic, align 8
  ret ptr %i.e
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZN2v88internal18BaseNameDictionaryINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE31AddNoUpdateNextEnumerationIndexINS0_7IsolateENS0_6HandleEQsr3stdE16is_convertible_vITL0_0_IT_ENS0_12DirectHandleIS9_EEEEET0_IS2_EPS9_SE_NSB_INS0_4NameEEENSB_INS0_6ObjectEEENS0_15PropertyDetailsEPNS0_13InternalIndexE(ptr noundef %0, ptr %1, ptr %2, ptr %3, i32 %4, ptr noundef %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call ptr @_ZN2v88internal10DictionaryINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE3AddINS0_7IsolateENS0_6HandleELNS0_14AllocationTypeE0EQsr3stdE16is_convertible_vITL0_0_IT_ENS0_12DirectHandleISA_EEEEET0_IS2_EPSA_SF_NSC_INS0_4NameEEENSC_INS0_6ObjectEEENS0_15PropertyDetailsEPNS0_13InternalIndexE(ptr noundef %0, ptr %1, ptr %2, ptr %3, i32 %4, ptr noundef %5)
  ret ptr %i.a
end_hunk_8
begin_hunk_9_@_ZN2v88internal15DescriptorArray11IsEqualUpToENS0_6TaggedIS1_EEi:bb.a
  %i.i = add i64 %i.e, %1
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = load atomic volatile i64, ptr %i.j monotonic, align 8
  %.not67 = icmp eq i64 %i.h, %i.k
  br i1 %.not67, label %bb.d, label %.critedge30

bb.d:                                             ; preds = %bb.c
  %i.l = add nsw i64 %i.d, 15                     ; 2 uses
  %i.m = add i64 %.sroa.01.0.copyload.i.i, %i.l
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = load atomic volatile i64, ptr %i.n monotonic, align 8
  %i.p = add i64 %i.l, %1
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = load atomic volatile i64, ptr %i.q monotonic, align 8
  %.not68 = icmp eq i64 %i.o, %i.r
  br i1 %.not68, label %bb.e, label %.critedge30

bb.e:                                             ; preds = %bb.d
  %i.s = or disjoint i64 %i.d, 7                  ; 2 uses
  %i.t = add i64 %.sroa.01.0.copyload.i.i, %i.s
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = load atomic volatile i64, ptr %i.u monotonic, align 8 ; 2 uses
  %i.w = add i64 %i.s, %1
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = load atomic volatile i64, ptr %i.x monotonic, align 8 ; 2 uses
  %i.z = xor i64 %i.y, %i.v
  %i.aa = and i64 %i.z, 141733920768
  %or.cond = icmp eq i64 %i.aa, 0
  br i1 %or.cond, label %bb.f, label %.critedge30

bb.f:                                             ; preds = %bb.e
  %i.ab = xor i64 %i.y, %i.v
  %i.ac = and i64 %i.ab, 1924145348608
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.b, label %.critedge30

.critedge30:                                      ; preds = %bb.f, %bb.b, %bb.d, %bb.c, %bb.e, %bb.a
  %.not66.lcssa = phi i1 [ true, %bb.a ], [ false, %bb.f ], [ false, %bb.e ], [ false, %bb.c ], [ false, %bb.d ], [ true, %bb.b ]
  ret i1 %.not66.lcssa
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal14PrototypeUsers3AddEPNS0_7IsolateENS0_6HandleINS0_13WeakArrayListEEENS0_12DirectHandleINS0_3MapEEEPi(ptr noundef %0, ptr %1, ptr nofree readonly captures(none) %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.863", align 8 ; 4 uses
  %i.a = load i64, ptr %1, align 8                ; 2 uses
  %i.b = add i64 %i.a, 15
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %i.e = lshr i64 %i.d, 32                        ; 2 uses
  %i.f = trunc nuw i64 %i.e to i32                ; 5 uses
  %i.g = icmp eq i64 %i.e, 0
  br i1 %i.g, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.h = tail call ptr @_ZN2v88internal13WeakArrayList11EnsureSpaceEPNS0_7IsolateENS0_6HandleIS1_EEiNS0_14AllocationTypeE(ptr noundef %0, ptr nonnull %1, i32 noundef 2, i8 noundef zeroext 0) #28 ; 5 uses
  %i.i = load i64, ptr %i.h, align 8
  %i.j = add i64 %i.i, 23
  %i.k = inttoptr i64 %i.j to ptr
  store atomic volatile i64 0, ptr %i.k monotonic, align 8
  %i.l = load i64, ptr %i.h, align 8              ; 4 uses
  %i.m = load i64, ptr %2, align 8                ; 2 uses
  %i.n = or i64 %i.m, 3                           ; 3 uses
  %i.o = add i64 %i.l, 31                         ; 3 uses
  %i.p = inttoptr i64 %i.o to ptr
  store atomic volatile i64 %i.n, ptr %i.p monotonic, align 8
  %i.q = and i64 %i.n, 4294967295
  %.not190 = icmp eq i64 %i.q, 3
  br i1 %.not190, label %_ZN2v88internal13WeakArrayList3SetEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = and i64 %i.n, -3                         ; 2 uses
  %i.s = and i64 %i.l, -262144
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = load i64, ptr %i.t, align 262144         ; 2 uses
  %i.v = and i64 %i.u, 32
  %.not.i.i.i.i = icmp eq i64 %i.v, 0
  %i.w = and i64 %i.u, 25
  %.not37.i.i.i.i = icmp eq i64 %i.w, 0
  br i1 %.not37.i.i.i.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.x = and i64 %i.m, -262144
  %i.y = inttoptr i64 %i.x to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %i.y, align 262144
  %i.z = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i, 25
  %.not38.i.i.i.i = icmp eq i64 %i.z, 0
  br i1 %.not38.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.l, i64 noundef %i.o, i64 %i.r) #28
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  br i1 %.not.i.i.i.i, label %_ZN2v88internal13WeakArrayList3SetEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit, label %bb.g, !prof !28

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.l, i64 %i.o, i64 %i.r) #28
  br label %_ZN2v88internal13WeakArrayList3SetEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit

_ZN2v88internal13WeakArrayList3SetEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit: ; preds = %bb.b, %bb.f, %bb.g
  %i.aa = load i64, ptr %i.h, align 8
  %i.ab = add i64 %i.aa, 15
  %i.ac = inttoptr i64 %i.ab to ptr
  store atomic volatile i64 8589934592, ptr %i.ac monotonic, align 8
  %.not59 = icmp eq ptr %3, null
  br i1 %.not59, label %bb.ak, label %bb.h

bb.h:                                             ; preds = %_ZN2v88internal13WeakArrayList3SetEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit
  store i32 1, ptr %3, align 4
  br label %bb.ak

bb.i:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  store i64 %i.a, ptr %4, align 8
  %i.ad = call noundef zeroext i1 @_ZNK2v88internal13WeakArrayList6IsFullEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %i.ae = load i64, ptr %1, align 8               ; 8 uses
  br i1 %i.ad, label %bb.q, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = load i64, ptr %2, align 8               ; 2 uses
  %i.ag = or i64 %i.af, 3                         ; 3 uses
  %i.ah = shl nsw i32 %i.f, 3
  %i.ai = sext i32 %i.ah to i64
  %i.aj = add nsw i64 %i.ai, 23
  %i.ak = add i64 %i.aj, %i.ae                    ; 3 uses
  %i.al = inttoptr i64 %i.ak to ptr
  store atomic volatile i64 %i.ag, ptr %i.al monotonic, align 8
  %i.am = and i64 %i.ag, 4294967295
  %.not187 = icmp eq i64 %i.am, 3
  br i1 %.not187, label %_ZN2v88internal13WeakArrayList3SetEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit66, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = and i64 %i.ag, -3                       ; 2 uses
  %i.ao = and i64 %i.ae, -262144
  %i.ap = inttoptr i64 %i.ao to ptr
  %i.aq = load i64, ptr %i.ap, align 262144       ; 2 uses
  %i.ar = and i64 %i.aq, 32
  %.not.i.i.i.i62 = icmp eq i64 %i.ar, 0
  %i.as = and i64 %i.aq, 25
  %.not37.i.i.i.i63 = icmp eq i64 %i.as, 0
  br i1 %.not37.i.i.i.i63, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.at = and i64 %i.af, -262144
  %i.au = inttoptr i64 %i.at to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i64 = load i64, ptr %i.au, align 262144
  %i.av = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i64, 25
  %.not38.i.i.i.i65 = icmp eq i64 %i.av, 0
  br i1 %.not38.i.i.i.i65, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.ae, i64 noundef %i.ak, i64 %i.an) #28
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  br i1 %.not.i.i.i.i62, label %_ZN2v88internal13WeakArrayList3SetEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit66, label %bb.o, !prof !28

bb.o:                                             ; preds = %bb.n
  call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.ae, i64 %i.ak, i64 %i.an) #28
  br label %_ZN2v88internal13WeakArrayList3SetEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit66

_ZN2v88internal13WeakArrayList3SetEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit66: ; preds = %bb.j, %bb.n, %bb.o
  %i.aw = load i64, ptr %1, align 8
  %i.ax = and i64 %i.d, -4294967296
  %i.ay = add i64 %i.ax, 4294967296
  %i.az = add i64 %i.aw, 15
  %i.ba = inttoptr i64 %i.az to ptr
  store atomic volatile i64 %i.ay, ptr %i.ba monotonic, align 8
  %.not58 = icmp eq ptr %3, null
  br i1 %.not58, label %bb.ak, label %bb.p

bb.p:                                             ; preds = %_ZN2v88internal13WeakArrayList3SetEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit66
  store i32 %i.f, ptr %3, align 4
  br label %bb.ak

bb.q:                                             ; preds = %bb.i
  %i.bb = add i64 %i.ae, 23                       ; 2 uses
  %i.bc = inttoptr i64 %i.bb to ptr               ; 4 uses
  %i.bd = load atomic volatile i64, ptr %i.bc monotonic, align 8 ; 2 uses
  %i.be = and i64 %i.bd, 1
  %i.bf = icmp eq i64 %i.be, 0
  call void @llvm.assume(i1 %i.bf)
  %i.bg = lshr i64 %i.bd, 32                      ; 2 uses
  %i.bh = icmp eq i64 %i.bg, 0
  br i1 %i.bh, label %bb.r, label %.thread

bb.r:                                             ; preds = %bb.q
  %i.bi = add i64 %i.ae, 15
  %i.bj = inttoptr i64 %i.bi to ptr               ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8            ; 2 uses
  %i.bl = lshr i64 %i.bk, 32
  %i.bm = trunc nuw i64 %i.bl to i32
  %i.bn = icmp sgt i32 %i.bm, 1
  br i1 %i.bn, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %bb.r, %bb.t
  %i.bo = phi i64 [ %i.bz, %bb.t ], [ %i.bk, %bb.r ]
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.t ], [ 1, %bb.r ] ; 3 uses
  %i.bp = shl nsw i64 %indvars.iv.i, 3
  %i.bq = add i64 %i.bp, %i.bb
  %i.br = inttoptr i64 %i.bq to ptr               ; 2 uses
  %i.bs = load atomic volatile i64, ptr %i.br monotonic, align 8
  %i.bt = and i64 %i.bs, 4294967295
  %i.bu = icmp eq i64 %i.bt, 3
  br i1 %i.bu, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.lr.ph.i
  %i.bv = load atomic volatile i64, ptr %i.bc monotonic, align 8 ; 2 uses
  %i.bw = and i64 %i.bv, 1
  %i.bx = icmp eq i64 %i.bw, 0
  call void @llvm.assume(i1 %i.bx)
  store atomic volatile i64 %i.bv, ptr %i.br monotonic, align 8
  %i.by = shl nuw nsw i64 %indvars.iv.i, 32
  store atomic volatile i64 %i.by, ptr %i.bc monotonic, align 8
  %.pre.i = load i64, ptr %i.bj, align 8
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.lr.ph.i
  %i.bz = phi i64 [ %i.bo, %.lr.ph.i ], [ %.pre.i, %bb.s ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ca = ashr i64 %i.bz, 32
  %i.cb = icmp slt i64 %indvars.iv.next.i, %i.ca
  br i1 %i.cb, label %.lr.ph.i, label %.loopexit.loopexit, !llvm.loop !352

.loopexit.loopexit:                               ; preds = %bb.t
  %.pre = load i64, ptr %1, align 8               ; 2 uses
  %.pre191 = add i64 %.pre, 23
  %.pre192 = inttoptr i64 %.pre191 to ptr
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.r
  %.pre-phi193 = phi ptr [ %.pre192, %.loopexit.loopexit ], [ %i.bc, %bb.r ]
  %i.cc = phi i64 [ %.pre, %.loopexit.loopexit ], [ %i.ae, %bb.r ]
  %i.cd = load atomic volatile i64, ptr %.pre-phi193 monotonic, align 8 ; 2 uses
  %i.ce = and i64 %i.cd, 1
  %i.cf = icmp eq i64 %i.ce, 0
  call void @llvm.assume(i1 %i.cf)
  %i.cg = lshr i64 %i.cd, 32                      ; 2 uses
  %.not = icmp eq i64 %i.cg, 0
  br i1 %.not, label %bb.ad, label %.thread

.thread:                                          ; preds = %bb.q, %.loopexit
  %i.ch = phi i64 [ %i.cc, %.loopexit ], [ %i.ae, %bb.q ] ; 5 uses
  %.0186.in = phi i64 [ %i.cg, %.loopexit ], [ %i.bg, %bb.q ]
  %.0186 = trunc nuw i64 %.0186.in to i32         ; 3 uses
  %i.ci = add i64 %i.ch, 15
  %i.cj = inttoptr i64 %i.ci to ptr
  %i.ck = load i64, ptr %i.cj, align 8
  %i.cl = lshr i64 %i.ck, 32
  %i.cm = trunc nuw i64 %i.cl to i32
  %i.cn = icmp slt i32 %.0186, %i.cm
  br i1 %i.cn, label %bb.v, label %bb.u, !prof !28

bb.u:                                             ; preds = %.thread
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.331, ptr noundef nonnull @.str.337) #29
  unreachable

bb.v:                                             ; preds = %.thread
  %i.co = shl nsw i32 %.0186, 3
  %i.cp = sext i32 %i.co to i64
  %i.cq = add i64 %i.ch, 23
  %i.cr = add i64 %i.cq, %i.cp                    ; 3 uses
  %i.cs = inttoptr i64 %i.cr to ptr               ; 2 uses
  %i.ct = load atomic volatile i64, ptr %i.cs monotonic, align 8 ; 2 uses
  %i.cu = and i64 %i.ct, 1
  %i.cv = icmp eq i64 %i.cu, 0
  call void @llvm.assume(i1 %i.cv)
  %i.cw = load i64, ptr %2, align 8               ; 2 uses
  %i.cx = or i64 %i.cw, 3                         ; 3 uses
  store atomic volatile i64 %i.cx, ptr %i.cs monotonic, align 8
  %i.cy = and i64 %i.cx, 4294967295
  %.not188 = icmp eq i64 %i.cy, 3
  br i1 %.not188, label %_ZN2v88internal13WeakArrayList3SetEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit75, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cz = and i64 %i.cx, -3                       ; 2 uses
  %i.da = and i64 %i.ch, -262144
  %i.db = inttoptr i64 %i.da to ptr
  %i.dc = load i64, ptr %i.db, align 262144       ; 2 uses
  %i.dd = and i64 %i.dc, 32
  %.not.i.i.i.i71 = icmp eq i64 %i.dd, 0
  %i.de = and i64 %i.dc, 25
  %.not37.i.i.i.i72 = icmp eq i64 %i.de, 0
  br i1 %.not37.i.i.i.i72, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.df = and i64 %i.cw, -262144
  %i.dg = inttoptr i64 %i.df to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i73 = load i64, ptr %i.dg, align 262144
  %i.dh = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i73, 25
  %.not38.i.i.i.i74 = icmp eq i64 %i.dh, 0
  br i1 %.not38.i.i.i.i74, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.ch, i64 noundef %i.cr, i64 %i.cz) #28
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.w
  br i1 %.not.i.i.i.i71, label %_ZN2v88internal13WeakArrayList3SetEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit75, label %bb.aa, !prof !28

bb.aa:                                            ; preds = %bb.z
  call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.ch, i64 %i.cr, i64 %i.cz) #28
  br label %_ZN2v88internal13WeakArrayList3SetEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit75

_ZN2v88internal13WeakArrayList3SetEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit75: ; preds = %bb.v, %bb.z, %bb.aa
  %.not57 = icmp eq ptr %3, null
  br i1 %.not57, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %_ZN2v88internal13WeakArrayList3SetEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit75
  store i32 %.0186, ptr %3, align 4
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %_ZN2v88internal13WeakArrayList3SetEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit75
  %i.di = load i64, ptr %1, align 8
  %i.dj = and i64 %i.ct, -4294967296
  %i.dk = add i64 %i.di, 23
  %i.dl = inttoptr i64 %i.dk to ptr
  store atomic volatile i64 %i.dj, ptr %i.dl monotonic, align 8
  br label %bb.ak

bb.ad:                                            ; preds = %.loopexit
  %i.dm = add nsw i32 %i.f, 1                     ; 2 uses
  %i.dn = call ptr @_ZN2v88internal13WeakArrayList11EnsureSpaceEPNS0_7IsolateENS0_6HandleIS1_EEiNS0_14AllocationTypeE(ptr noundef %0, ptr nonnull %1, i32 noundef %i.dm, i8 noundef zeroext 0) #28 ; 4 uses
  %i.do = load i64, ptr %i.dn, align 8            ; 4 uses
  %i.dp = load i64, ptr %2, align 8               ; 2 uses
  %i.dq = or i64 %i.dp, 3                         ; 3 uses
  %i.dr = shl nsw i32 %i.f, 3
  %i.ds = sext i32 %i.dr to i64
  %i.dt = add nsw i64 %i.ds, 23
  %i.du = add i64 %i.dt, %i.do                    ; 3 uses
  %i.dv = inttoptr i64 %i.du to ptr
  store atomic volatile i64 %i.dq, ptr %i.dv monotonic, align 8
  %i.dw = and i64 %i.dq, 4294967295
  %.not189 = icmp eq i64 %i.dw, 3
  br i1 %.not189, label %_ZN2v88internal13WeakArrayList3SetEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit82, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dx = and i64 %i.dq, -3                       ; 2 uses
  %i.dy = and i64 %i.do, -262144
  %i.dz = inttoptr i64 %i.dy to ptr
  %i.ea = load i64, ptr %i.dz, align 262144       ; 2 uses
  %i.eb = and i64 %i.ea, 32
  %.not.i.i.i.i78 = icmp eq i64 %i.eb, 0
  %i.ec = and i64 %i.ea, 25
  %.not37.i.i.i.i79 = icmp eq i64 %i.ec, 0
  br i1 %.not37.i.i.i.i79, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %bb.ae
  %i.ed = and i64 %i.dp, -262144
  %i.ee = inttoptr i64 %i.ed to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i80 = load i64, ptr %i.ee, align 262144
  %i.ef = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i80, 25
  %.not38.i.i.i.i81 = icmp eq i64 %i.ef, 0
  br i1 %.not38.i.i.i.i81, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.do, i64 noundef %i.du, i64 %i.dx) #28
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %bb.ae
  br i1 %.not.i.i.i.i78, label %_ZN2v88internal13WeakArrayList3SetEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit82, label %bb.ai, !prof !28

bb.ai:                                            ; preds = %bb.ah
  call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.do, i64 %i.du, i64 %i.dx) #28
  br label %_ZN2v88internal13WeakArrayList3SetEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit82

_ZN2v88internal13WeakArrayList3SetEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit82: ; preds = %bb.ad, %bb.ah, %bb.ai
  %i.eg = load i64, ptr %i.dn, align 8
  %i.eh = sext i32 %i.dm to i64
  %i.ei = shl nsw i64 %i.eh, 32
  %i.ej = add i64 %i.eg, 15
  %i.ek = inttoptr i64 %i.ej to ptr
  store atomic volatile i64 %i.ei, ptr %i.ek monotonic, align 8
  %.not56 = icmp eq ptr %3, null
  br i1 %.not56, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %_ZN2v88internal13WeakArrayList3SetEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit82
  store i32 %i.f, ptr %3, align 4
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ac, %bb.aj, %_ZN2v88internal13WeakArrayList3SetEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit82, %_ZN2v88internal13WeakArrayList3SetEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit66, %bb.p, %_ZN2v88internal13WeakArrayList3SetEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit, %bb.h
  %.sroa.0120.0 = phi ptr [ %i.h, %_ZN2v88internal13WeakArrayList3SetEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit ], [ %i.h, %bb.h ], [ %i.dn, %_ZN2v88internal13WeakArrayList3SetEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit82 ], [ %i.dn, %bb.aj ], [ %1, %bb.ac ], [ %1, %_ZN2v88internal13WeakArrayList3SetEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit66 ], [ %1, %bb.p ]
  ret ptr %.sroa.0120.0
}

declare ptr @_ZN2v88internal13WeakArrayList11EnsureSpaceEPNS0_7IsolateENS0_6HandleIS1_EEiNS0_14AllocationTypeE(ptr noundef, ptr, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK2v88internal13WeakArrayList6IsFullEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress norecurse nounwind memory(readwrite, target_mem: none) uwtable
define hidden void @_ZN2v88internal14PrototypeUsers17ScanForEmptySlotsENS0_6TaggedINS0_13WeakArrayListEEE(i64 %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = add i64 %0, 15
  %i.b = inttoptr i64 %i.a to ptr                 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = lshr i64 %i.c, 32
  %i.e = trunc nuw i64 %i.d to i32
  %i.f = icmp sgt i32 %i.e, 1
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.g = add i64 %0, 23                           ; 2 uses
  %i.h = inttoptr i64 %i.g to ptr                 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.d, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %i.i = phi i64 [ %i.c, %.lr.ph ], [ %i.t, %bb.d ]
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.j = shl nsw i64 %indvars.iv, 3
  %i.k = add i64 %i.g, %i.j
  %i.l = inttoptr i64 %i.k to ptr                 ; 2 uses
  %i.m = load atomic volatile i64, ptr %i.l monotonic, align 8
  %i.n = and i64 %i.m, 4294967295
  %i.o = icmp eq i64 %i.n, 3
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.p = load atomic volatile i64, ptr %i.h monotonic, align 8 ; 2 uses
  %i.q = and i64 %i.p, 1
  %i.r = icmp eq i64 %i.q, 0
  tail call void @llvm.assume(i1 %i.r)
  store atomic volatile i64 %i.p, ptr %i.l monotonic, align 8
  %i.s = shl nuw nsw i64 %indvars.iv, 32
  store atomic volatile i64 %i.s, ptr %i.h monotonic, align 8
  %.pre = load i64, ptr %i.b, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.t = phi i64 [ %i.i, %bb.b ], [ %.pre, %bb.c ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.u = ashr i64 %i.t, 32
  %i.v = icmp slt i64 %indvars.iv.next, %i.u
  br i1 %i.v, label %bb.b, label %._crit_edge, !llvm.loop !352
}

; Function Attrs: mustprogress nounwind uwtable
define hidden i64 @_ZN2v88internal14PrototypeUsers7CompactENS0_12DirectHandleINS0_13WeakArrayListEEEPNS0_4HeapEPFvNS0_6TaggedINS0_10HeapObjectEEEiiENS0_14AllocationTypeE(ptr nofree readonly captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i8 noundef zeroext %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.863", align 8 ; 4 uses
  %i.a = load i64, ptr %0, align 8                ; 3 uses
  %i.b = add i64 %i.a, 15
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load i64, ptr %i.c, align 8
  %i.e = icmp ult i64 %i.d, 4294967296
  br i1 %i.e, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  store i64 %i.a, ptr %4, align 8
  %i.f = call noundef i32 @_ZNK2v88internal13WeakArrayList23CountLiveWeakReferencesEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #28
  %i.g = add nsw i32 %i.f, 1                      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %i.h = load i64, ptr %0, align 8                ; 2 uses
  %i.i = add i64 %i.h, 15
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = load i64, ptr %i.j, align 8
  %i.l = lshr i64 %i.k, 32
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = icmp eq i32 %i.g, %i.m
  br i1 %i.n, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = ptrtoint ptr %1 to i64
  %i.p = add i64 %i.o, -55464
  %i.q = inttoptr i64 %i.p to ptr                 ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 880
  %i.s = load i64, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 560 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 568
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = icmp eq ptr %i.u, %i.w
  br i1 %i.x, label %bb.d, label %_ZN2v88internal6HandleINS0_13WeakArrayListEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !5

bb.d:                                             ; preds = %bb.c
  %i.y = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.q) #28
  br label %_ZN2v88internal6HandleINS0_13WeakArrayListEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_13WeakArrayListEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.c, %bb.d
  %.0.i.i = phi ptr [ %i.y, %bb.d ], [ %i.u, %bb.c ] ; 3 uses
  %i.z = ptrtoint ptr %.0.i.i to i64
  %i.aa = add i64 %i.z, 8
  %i.ab = inttoptr i64 %i.aa to ptr
  store ptr %i.ab, ptr %i.t, align 8
  store i64 %i.s, ptr %.0.i.i, align 8
  %i.ac = call ptr @_ZN2v88internal13WeakArrayList11EnsureSpaceEPNS0_7IsolateENS0_6HandleIS1_EEiNS0_14AllocationTypeE(ptr noundef nonnull %i.q, ptr nonnull %.0.i.i, i32 noundef %i.g, i8 noundef zeroext %3) #28 ; 4 uses
  %i.ad = load i64, ptr %0, align 8               ; 2 uses
  %i.ae = add i64 %i.ad, 15
  %i.af = inttoptr i64 %i.ae to ptr
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = lshr i64 %i.ag, 32
  %i.ai = trunc nuw i64 %i.ah to i32
  %i.aj = icmp sgt i32 %i.ai, 1
  br i1 %i.aj, label %.lr.ph, label %._crit_edge

._crit_edge.loopexit:                             ; preds = %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit
  %i.ak = sext i32 %.1 to i64
  %i.al = shl nsw i64 %i.ak, 32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN2v88internal6HandleINS0_13WeakArrayListEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %.0.lcssa = phi i64 [ 4294967296, %_ZN2v88internal6HandleINS0_13WeakArrayListEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit ], [ %i.al, %._crit_edge.loopexit ]
  %i.am = load i64, ptr %i.ac, align 8
  %i.an = add i64 %i.am, 15
  %i.ao = inttoptr i64 %i.an to ptr
  store atomic volatile i64 %.0.lcssa, ptr %i.ao monotonic, align 8
  %i.ap = load i64, ptr %i.ac, align 8
  %i.aq = add i64 %i.ap, 23
  %i.ar = inttoptr i64 %i.aq to ptr
  store atomic volatile i64 0, ptr %i.ar monotonic, align 8
  %i.as = load i64, ptr %i.ac, align 8
  br label %bb.j

.lr.ph:                                           ; preds = %_ZN2v88internal6HandleINS0_13WeakArrayListEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit ], [ 1, %_ZN2v88internal6HandleINS0_13WeakArrayListEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit ] ; 3 uses
  %i.at = phi i64 [ %i.bv, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit ], [ %i.ad, %_ZN2v88internal6HandleINS0_13WeakArrayListEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit ]
  %.090 = phi i32 [ %.1, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit ], [ 1, %_ZN2v88internal6HandleINS0_13WeakArrayListEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit ] ; 4 uses
  %i.au = shl nsw i64 %indvars.iv, 3
  %i.av = add nuw nsw i64 %i.au, 23
  %i.aw = add i64 %i.at, %i.av
  %i.ax = inttoptr i64 %i.aw to ptr
  %i.ay = load atomic volatile i64, ptr %i.ax monotonic, align 8 ; 5 uses
  %i.az = and i64 %i.ay, 3
  %i.ba = icmp eq i64 %i.az, 3
  %i.bb = and i64 %i.ay, 4294967295
  %i.bc = icmp ne i64 %i.bb, 3
  %i.bd = and i1 %i.ba, %i.bc
  br i1 %i.bd, label %bb.e, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit

bb.e:                                             ; preds = %.lr.ph
  %i.be = and i64 %i.ay, -3                       ; 3 uses
  %i.bf = trunc nuw nsw i64 %indvars.iv to i32
  call void %2(i64 %i.be, i32 noundef %i.bf, i32 noundef %.090) #28
  %i.bg = load i64, ptr %i.ac, align 8            ; 4 uses
  %i.bh = add nsw i32 %.090, 1                    ; 2 uses
  %i.bi = shl nsw i32 %.090, 3
  %i.bj = sext i32 %i.bi to i64
  %i.bk = add nsw i64 %i.bj, 23
  %i.bl = add i64 %i.bk, %i.bg                    ; 3 uses
  %i.bm = inttoptr i64 %i.bl to ptr
  store atomic volatile i64 %i.ay, ptr %i.bm monotonic, align 8
  %i.bn = and i64 %i.bg, -262144
  %i.bo = inttoptr i64 %i.bn to ptr
  %i.bp = load i64, ptr %i.bo, align 262144       ; 2 uses
  %i.bq = and i64 %i.bp, 32
  %.not.i.i.i.i = icmp eq i64 %i.bq, 0
  %i.br = and i64 %i.bp, 25
  %.not37.i.i.i.i = icmp eq i64 %i.br, 0
  br i1 %.not37.i.i.i.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.bs = and i64 %i.ay, -262144
  %i.bt = inttoptr i64 %i.bs to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %i.bt, align 262144
  %i.bu = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i, 25
  %.not38.i.i.i.i = icmp eq i64 %i.bu, 0
  br i1 %.not38.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.bg, i64 noundef %i.bl, i64 %i.be) #28
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  br i1 %.not.i.i.i.i, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit, label %bb.i, !prof !28

bb.i:                                             ; preds = %bb.h
  call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.bg, i64 %i.bl, i64 %i.be) #28
  br label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit

_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit: ; preds = %bb.i, %bb.h, %.lr.ph
  %.1 = phi i32 [ %.090, %.lr.ph ], [ %i.bh, %bb.i ], [ %i.bh, %bb.h ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bv = load i64, ptr %0, align 8               ; 2 uses
  %i.bw = add i64 %i.bv, 15
  %i.bx = inttoptr i64 %i.bw to ptr
  %i.by = load i64, ptr %i.bx, align 8
  %i.bz = ashr i64 %i.by, 32
  %i.ca = icmp slt i64 %indvars.iv.next, %i.bz
  br i1 %i.ca, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !353

bb.j:                                             ; preds = %bb.b, %bb.a, %._crit_edge
  %.sroa.018.1 = phi i64 [ %i.as, %._crit_edge ], [ %i.a, %bb.a ], [ %i.h, %bb.b ]
  ret i64 %.sroa.018.1
}

declare noundef i32 @_ZNK2v88internal13WeakArrayList23CountLiveWeakReferencesEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal15DescriptorArray10InitializeENS0_6TaggedINS0_9EnumCacheEEENS2_INS0_10HeapObjectEEEiij(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i64 %1, i64 %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = add nsw i32 %4, %3
  %i.b = trunc i32 %i.a to i16
  %i.c = load i64, ptr %0, align 8
  %i.d = add i64 %i.c, 7
  %i.e = inttoptr i64 %i.d to ptr
  store atomic volatile i16 %i.b, ptr %i.e monotonic, align 2
  %i.f = trunc i32 %3 to i16
  %i.g = load i64, ptr %0, align 8
  %i.h = add i64 %i.g, 9
  %i.i = inttoptr i64 %i.h to ptr
  store atomic volatile i16 %i.f, ptr %i.i monotonic, align 2
  %i.j = load i64, ptr %0, align 8
  %i.k = add i64 %i.j, 11
  %i.l = inttoptr i64 %i.k to ptr
  store atomic volatile i32 %5, ptr %i.l monotonic, align 4
  %.sroa.04.0.copyload.i = load i64, ptr %0, align 8
  %i.m = add i64 %.sroa.04.0.copyload.i, 23
  %i.n = inttoptr i64 %i.m to ptr
  store atomic volatile i64 %1, ptr %i.n monotonic, align 8
  %.sroa.02.0.copyload.i = load i64, ptr %0, align 8
  %i.o = add i64 %.sroa.02.0.copyload.i, 15
  %i.p = inttoptr i64 %i.o to ptr
  store atomic volatile i32 3, ptr %i.p monotonic, align 4
  %i.q = load i64, ptr %0, align 8                ; 2 uses
  %i.r = add i64 %i.q, 31
  %i.s = add i64 %i.q, 7
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = load atomic volatile i16, ptr %i.t monotonic, align 2
  %i.v = sext i16 %i.u to i64
  %i.w = mul nsw i64 %i.v, 3
  %i.x = inttoptr i64 %i.r to ptr
  %i.y = tail call { i64, ptr } asm sideeffect "cld;rep ; stosq", "=&{cx},=&{di},{ax},0,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %2, i64 %i.w, ptr %i.x) #28, !srcloc !354 ; 0 uses
  ret void
}

; Function Attrs: mustprogress norecurse nounwind memory(readwrite, target_mem: none) uwtable
define hidden void @_ZN2v88internal15DescriptorArray14ClearEnumCacheEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 10624
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 288
  %i.e = load i64, ptr %i.d, align 8
  %.sroa.04.0.copyload.i = load i64, ptr %0, align 8
  %i.f = add i64 %.sroa.04.0.copyload.i, 23
  %i.g = inttoptr i64 %i.f to ptr
  store atomic volatile i64 %i.e, ptr %i.g monotonic, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal15DescriptorArray7ReplaceENS0_13InternalIndexEPNS0_10DescriptorE(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %sext = shl i64 %1, 32
  %i.a = ashr exact i64 %sext, 32
  %.sroa.01.0.copyload.i.i = load i64, ptr %0, align 8
  %i.b = mul i64 %i.a, 103079215104
  %sext.i.i = add i64 %i.b, 137438953472
  %i.c = ashr exact i64 %sext.i.i, 32
  %i.d = or disjoint i64 %i.c, 7
  %i.e = add i64 %i.d, %.sroa.01.0.copyload.i.i
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load atomic volatile i64, ptr %i.f monotonic, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4
  %i.j = and i32 %i.i, -523777
  %sh.diff = lshr i64 %i.g, 32
  %tr.sh.diff = trunc nuw i64 %sh.diff to i32
  %i.k = and i32 %tr.sh.diff, 523776
  %i.l = or disjoint i32 %i.k, %i.j               ; 2 uses
  store i32 %i.l, ptr %i.h, align 8
  %.sroa.0.0.copyload.i.i = load ptr, ptr %2, align 8
  %i.m = load i64, ptr %.sroa.0.0.copyload.i.i, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.0.0.copyload.i10.i = load i32, ptr %i.n, align 8
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.21.0.copyload.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i, align 8 ; 3 uses
  %i.o = icmp eq i32 %.sroa.0.0.copyload.i10.i, 0
  %i.p = icmp eq ptr %.sroa.21.0.copyload.i.i, null ; 2 uses
  br i1 %i.o, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  br i1 %i.p, label %bb.c, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE15ToHandleCheckedEv.exit.i.i, !prof !5

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.331, ptr noundef nonnull @.str.411) #29
  unreachable

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE15ToHandleCheckedEv.exit.i.i: ; preds = %bb.b
  %i.q = load i64, ptr %.sroa.21.0.copyload.i.i, align 8
  %i.r = or i64 %i.q, 3
  br label %_ZN2v88internal15DescriptorArray3SetENS0_13InternalIndexEPNS0_10DescriptorE.exit

bb.d:                                             ; preds = %bb.a
  br i1 %i.p, label %bb.e, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE15ToHandleCheckedEv.exit3.i.i, !prof !5

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.331, ptr noundef nonnull @.str.411) #29
  unreachable

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE15ToHandleCheckedEv.exit3.i.i: ; preds = %bb.d
  %i.s = load i64, ptr %.sroa.21.0.copyload.i.i, align 8
  br label %_ZN2v88internal15DescriptorArray3SetENS0_13InternalIndexEPNS0_10DescriptorE.exit

_ZN2v88internal15DescriptorArray3SetENS0_13InternalIndexEPNS0_10DescriptorE.exit: ; preds = %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE15ToHandleCheckedEv.exit.i.i, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE15ToHandleCheckedEv.exit3.i.i
  %.sroa.05.0.i.i = phi i64 [ %i.r, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE15ToHandleCheckedEv.exit.i.i ], [ %i.s, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE15ToHandleCheckedEv.exit3.i.i ]
  tail call void @_ZN2v88internal15DescriptorArray3SetENS0_13InternalIndexENS0_6TaggedINS0_4NameEEENS3_INS0_9MaybeWeakINS0_6ObjectEEEEENS0_15PropertyDetailsE(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 %1, i64 %i.m, i64 %.sroa.05.0.i.i, i32 %i.l)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal15DescriptorArray27InitializeOrChangeEnumCacheENS0_12DirectHandleIS1_EEPNS0_7IsolateENS2_INS0_10FixedArrayEEES7_NS0_14AllocationTypeE(ptr nofree readonly captures(none) %0, ptr noundef %1, ptr %2, ptr %3, i8 noundef zeroext %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = add i64 %i.a, 23
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load i64, ptr %i.c, align 8              ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 840
  %i.f = load i64, ptr %i.e, align 8
  %i.g = icmp eq i64 %i.d, %i.f
  br i1 %i.g, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.h = tail call ptr @_ZN2v88internal7Factory12NewEnumCacheENS0_12DirectHandleINS0_10FixedArrayEEES4_NS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr %2, ptr %3, i8 noundef zeroext %4) #28
  %i.i = load i64, ptr %i.h, align 8              ; 5 uses
  %i.j = load i64, ptr %0, align 8                ; 4 uses
  %i.k = add i64 %i.j, 23                         ; 3 uses
  %i.l = inttoptr i64 %i.k to ptr
end_hunk_9
