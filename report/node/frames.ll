inline.NumInlined: 3392
inline.NumDeleted: 1471
begin_hunk_0_@_ZNK2v88internal9WasmFrame7IterateEPNS0_11RootVisitorE:bb.a

.thread46:                                        ; preds = %bb.c, %bb.e, %bb.d
  %.not = icmp eq i32 %.sroa.042.0.copyload, 0
  br i1 %.not, label %_ZN2v88internal12_GLOBAL__N_115VisitSpillSlotsEPNS0_7IsolateEPNS0_11RootVisitorENS0_14FullObjectSlotENS_4base6VectorIKhEE.exit, label %bb.f

bb.f:                                             ; preds = %.thread46
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.443.0.copyload, i64 %.sroa.5.0.copyload
  %.not6.i = icmp samesign eq i64 %.sroa.5.0.copyload, 0
  br i1 %.not6.i, label %_ZN2v88internal12_GLOBAL__N_115VisitSpillSlotsEPNS0_7IsolateEPNS0_11RootVisitorENS0_14FullObjectSlotENS_4base6VectorIKhEE.exit, label %.lr.ph10.i

.lr.ph10.i:                                       ; preds = %bb.f, %._crit_edge.i
  %.08.i = phi ptr [ %i.av, %._crit_edge.i ], [ %.sroa.443.0.copyload, %bb.f ] ; 2 uses
  %.sroa.0.07.i = phi i64 [ %i.au, %._crit_edge.i ], [ %.pre-phi53, %bb.f ] ; 2 uses
  %i.aj = load i8, ptr %.08.i, align 1            ; 2 uses
  %.not154.i = icmp eq i8 %i.aj, 0
  br i1 %.not154.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph10.i, %.lr.ph.i
  %.0145.i = phi i8 [ %i.an, %.lr.ph.i ], [ %i.aj, %.lr.ph10.i ] ; 2 uses
  %i.ak = call range(i8 0, 9) i8 @llvm.cttz.i8(i8 %.0145.i, i1 true) ; 2 uses
  %i.al = shl nuw i8 1, %i.ak
  %i.am = xor i8 %i.al, -1
  %i.an = and i8 %.0145.i, %i.am                  ; 2 uses
  %i.ao = shl nuw nsw i8 %i.ak, 3
  %i.ap = zext nneg i8 %i.ao to i64
  %i.aq = add i64 %.sroa.0.07.i, %i.ap
  %i.ar = load ptr, ptr %1, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.at = load ptr, ptr %i.as, align 8
  call void %i.at(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef 18, ptr noundef null, i64 %i.aq) #25, !inline_history !64
  %.not15.i = icmp eq i8 %i.an, 0
  br i1 %.not15.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !65

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.lr.ph10.i
  %i.au = add i64 %.sroa.0.07.i, 64
  %i.av = getelementptr inbounds nuw i8, ptr %.08.i, i64 1 ; 2 uses
  %.not.i = icmp eq ptr %i.av, %i.ai
  br i1 %.not.i, label %_ZN2v88internal12_GLOBAL__N_115VisitSpillSlotsEPNS0_7IsolateEPNS0_11RootVisitorENS0_14FullObjectSlotENS_4base6VectorIKhEE.exit, label %.lr.ph10.i

_ZN2v88internal12_GLOBAL__N_115VisitSpillSlotsEPNS0_7IsolateEPNS0_11RootVisitorENS0_14FullObjectSlotENS_4base6VectorIKhEE.exit: ; preds = %._crit_edge.i, %bb.f, %.thread46
  %i.aw = getelementptr inbounds nuw i8, ptr %i.d, i64 72 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 8
  %i.ay = and i32 %i.ax, 65535
  %.not29 = icmp eq i32 %i.ay, 0
  br i1 %.not29, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_115VisitSpillSlotsEPNS0_7IsolateEPNS0_11RootVisitorENS0_14FullObjectSlotENS_4base6VectorIKhEE.exit
  %i.az = load ptr, ptr %0, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = call noundef i64 %i.bb(ptr noundef nonnull align 8 dereferenceable(80) %0) #25, !inline_history !59
  %i.bd = load i32, ptr %i.aw, align 8            ; 2 uses
  %i.be = lshr i32 %i.bd, 13
  %i.bf = and i32 %i.be, 524280
  %i.bg = zext nneg i32 %i.bf to i64
  %i.bh = add i64 %i.bc, %i.bg                    ; 2 uses
  %i.bi = shl i32 %i.bd, 3
  %i.bj = and i32 %i.bi, 524280
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = add i64 %i.bh, %i.bk
  %i.bm = load ptr, ptr %1, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef 18, ptr noundef null, i64 %i.bh, i64 %i.bl) #25
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN2v88internal12_GLOBAL__N_115VisitSpillSlotsEPNS0_7IsolateEPNS0_11RootVisitorENS0_14FullObjectSlotENS_4base6VectorIKhEE.exit
  %i.bp = load ptr, ptr %1, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.br = load ptr, ptr %i.bq, align 8
  call void %i.br(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef 18, ptr noundef null, i64 %i.p, i64 %i.o) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void
}

declare void @_ZN2v88internal4wasm15WasmCodeManager22LookupCodeAndSafepointEPNS0_7IsolateEm(ptr dead_on_unwind writable sret(%"struct.std::pair.524") align 8, ptr noundef nonnull align 8 dereferenceable(88), ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK2v88internal10TypedFrame37IterateParamsOfGenericWasmToJSWrapperEPNS0_11RootVisitorE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::wasm::LinkageLocationAllocator", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8
  %i.c = add i64 %i.b, 16
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  %i.f = add i64 %i.e, 1
  %or.cond = icmp ult i64 %i.f, 2
  br i1 %or.cond, label %bb.f, label %_ZN2v88internal4wasm24LinkageLocationAllocator4NextENS0_21MachineRepresentationE.exit

_ZN2v88internal4wasm24LinkageLocationAllocator4NextENS0_21MachineRepresentationE.exit: ; preds = %bb.a
  %i.g = inttoptr i64 %i.e to ptr                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  store i32 6, ptr %2, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @_ZN2v88internal4wasmL17kGpParamRegistersE, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 6, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 0, ptr %i.k, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr @_ZN2v88internal4wasmL17kFpParamRegistersE, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  store <4 x i32> <i32 -1, i32 -1, i32 0, i32 0>, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i32 0, ptr %i.n, align 8
  store i32 1, ptr %i.h, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = load i64, ptr %i.g, align 8
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.q ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8              ; 2 uses
  %.idx = shl nuw nsw i64 %i.t, 2
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx
  %.not79 = icmp eq i64 %i.t, 0
  br i1 %.not79, label %.critedge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNK2v88internal4wasm13ValueTypeBase22machine_representationEv.exit.thread
  %i.v = call noundef i32 @_ZN2v88internal20AlignedSlotAllocator17AllocateUnalignedEi(ptr noundef nonnull align 4 dereferenceable(16) %i.m, i32 noundef 0) #25 ; 0 uses
  br i1 %.144, label %bb.c, label %.loopexit77

.lr.ph:                                           ; preds = %_ZN2v88internal4wasm24LinkageLocationAllocator4NextENS0_21MachineRepresentationE.exit, %_ZNK2v88internal4wasm13ValueTypeBase22machine_representationEv.exit.thread
  %.04381 = phi i1 [ %.144, %_ZNK2v88internal4wasm13ValueTypeBase22machine_representationEv.exit.thread ], [ false, %_ZN2v88internal4wasm24LinkageLocationAllocator4NextENS0_21MachineRepresentationE.exit ]
  %.04580 = phi ptr [ %i.aj, %_ZNK2v88internal4wasm13ValueTypeBase22machine_representationEv.exit.thread ], [ %i.r, %_ZN2v88internal4wasm24LinkageLocationAllocator4NextENS0_21MachineRepresentationE.exit ] ; 2 uses
  %i.w = load i32, ptr %.04580, align 4           ; 3 uses
  %i.x = and i32 %i.w, 3
  %i.y = icmp eq i32 %i.x, 2
  br i1 %i.y, label %_ZNK2v88internal4wasm13ValueTypeBase22machine_representationEv.exit.thread70, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.z = trunc i32 %i.w to i1
  br i1 %i.z, label %_ZNK2v88internal4wasm13ValueTypeBase22machine_representationEv.exit.thread, label %_ZNK2v88internal4wasm13ValueTypeBase22machine_representationEv.exit

_ZNK2v88internal4wasm13ValueTypeBase22machine_representationEv.exit: ; preds = %bb.b
  %i.aa = lshr i32 %i.w, 8
  %i.ab = add nuw nsw i32 %i.aa, 2
  %i.ac = and i32 %i.ab, 7
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr @__const._ZNK2v88internal4wasm13ValueTypeBase12machine_typeEv.kMachineType, i64 %i.ad
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.ae, align 2
  %i.af = trunc i16 %.sroa.0.0.copyload.i.i to i8 ; 2 uses
  %i.ag = add i8 %i.af, -6
  %i.ah = icmp ult i8 %i.ag, 4
  br i1 %i.ah, label %_ZNK2v88internal4wasm13ValueTypeBase22machine_representationEv.exit.thread, label %_ZNK2v88internal4wasm13ValueTypeBase22machine_representationEv.exit.thread70

_ZNK2v88internal4wasm13ValueTypeBase22machine_representationEv.exit.thread70: ; preds = %.lr.ph, %_ZNK2v88internal4wasm13ValueTypeBase22machine_representationEv.exit
  %.sroa.0.0.i.i72 = phi i8 [ %i.af, %_ZNK2v88internal4wasm13ValueTypeBase22machine_representationEv.exit ], [ 0, %.lr.ph ]
  %i.ai = call i64 @_ZN2v88internal4wasm24LinkageLocationAllocator4NextENS0_21MachineRepresentationE(ptr noundef nonnull align 8 dereferenceable(52) %2, i8 noundef zeroext %.sroa.0.0.i.i72) ; 0 uses
  br label %_ZNK2v88internal4wasm13ValueTypeBase22machine_representationEv.exit.thread

_ZNK2v88internal4wasm13ValueTypeBase22machine_representationEv.exit.thread: ; preds = %bb.b, %_ZNK2v88internal4wasm13ValueTypeBase22machine_representationEv.exit, %_ZNK2v88internal4wasm13ValueTypeBase22machine_representationEv.exit.thread70
  %.144 = phi i1 [ %.04381, %_ZNK2v88internal4wasm13ValueTypeBase22machine_representationEv.exit.thread70 ], [ true, %_ZNK2v88internal4wasm13ValueTypeBase22machine_representationEv.exit ], [ true, %bb.b ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.04580, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.aj, %i.u
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.c:                                             ; preds = %._crit_edge
  %i.ak = load ptr, ptr %i.o, align 8
  %i.al = load i64, ptr %i.g, align 8
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.al ; 2 uses
  %i.an = load i64, ptr %i.s, align 8             ; 2 uses
  %.idx87 = shl nuw nsw i64 %i.an, 2
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 %.idx87
  %.not5083 = icmp eq i64 %i.an, 0
  br i1 %.not5083, label %.loopexit77, label %.lr.ph86

.lr.ph86:                                         ; preds = %bb.c, %_ZNK2v88internal4wasm13ValueTypeBase22machine_representationEv.exit55.thread75
  %.04684 = phi ptr [ %i.bt, %_ZNK2v88internal4wasm13ValueTypeBase22machine_representationEv.exit55.thread75 ], [ %i.am, %bb.c ] ; 2 uses
  %i.ap = load i32, ptr %.04684, align 4          ; 3 uses
  %i.aq = and i32 %i.ap, 3
  %i.ar = icmp eq i32 %i.aq, 2
  br i1 %i.ar, label %_ZNK2v88internal4wasm13ValueTypeBase22machine_representationEv.exit55.thread75, label %bb.d

bb.d:                                             ; preds = %.lr.ph86
  %i.as = trunc i32 %i.ap to i1
  br i1 %i.as, label %_ZNK2v88internal4wasm13ValueTypeBase22machine_representationEv.exit55.thread, label %_ZNK2v88internal4wasm13ValueTypeBase22machine_representationEv.exit55

_ZNK2v88internal4wasm13ValueTypeBase22machine_representationEv.exit55: ; preds = %bb.d
  %i.at = lshr i32 %i.ap, 8
  %i.au = add nuw nsw i32 %i.at, 2
  %i.av = and i32 %i.au, 7
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr @__const._ZNK2v88internal4wasm13ValueTypeBase12machine_typeEv.kMachineType, i64 %i.aw
  %.sroa.0.0.copyload.i.i53 = load i16, ptr %i.ax, align 2
  %i.ay = trunc i16 %.sroa.0.0.copyload.i.i53 to i8 ; 2 uses
  %i.az = add i8 %i.ay, -6
  %i.ba = icmp ult i8 %i.az, 4
  br i1 %i.ba, label %_ZNK2v88internal4wasm13ValueTypeBase22machine_representationEv.exit55.thread, label %_ZNK2v88internal4wasm13ValueTypeBase22machine_representationEv.exit55.thread75

_ZNK2v88internal4wasm13ValueTypeBase22machine_representationEv.exit55.thread: ; preds = %bb.d, %_ZNK2v88internal4wasm13ValueTypeBase22machine_representationEv.exit55
  %.sroa.0.0.i.i5474 = phi i8 [ %i.ay, %_ZNK2v88internal4wasm13ValueTypeBase22machine_representationEv.exit55 ], [ 9, %bb.d ]
  %i.bb = call i64 @_ZN2v88internal4wasm24LinkageLocationAllocator4NextENS0_21MachineRepresentationE(ptr noundef nonnull align 8 dereferenceable(52) %2, i8 noundef zeroext %.sroa.0.0.i.i5474)
  %.sroa.057.0.extract.trunc = trunc i64 %i.bb to i32 ; 3 uses
  %i.bc = and i32 %.sroa.057.0.extract.trunc, 1
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %.preheader, label %bb.e

.preheader:                                       ; preds = %_ZNK2v88internal4wasm13ValueTypeBase22machine_representationEv.exit55.thread
  %3 = lshr exact i32 %.sroa.057.0.extract.trunc, 1
  %i.be = add nsw i32 %3, -1                      ; 2 uses
  %i.bf = icmp ult i32 %i.be, 9
  br i1 %i.bf, label %switch.lookup, label %.loopexit

switch.lookup:                                    ; preds = %.preheader
  %i.bg = zext nneg i32 %i.be to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZNK2v88internal10TypedFrame37IterateParamsOfGenericWasmToJSWrapperEPNS0_11RootVisitorE, i64 %i.bg
  %switch.load = load i64, ptr %switch.gep, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %switch.lookup, %.preheader
  %.047 = phi i64 [ %switch.load, %switch.lookup ], [ 24, %.preheader ]
  %i.bh = load i64, ptr %i.a, align 8
  %i.bi = add i64 %.047, %i.bh
  br label %_ZNK2v88internal4wasm13ValueTypeBase22machine_representationEv.exit55.thread75.sink.split

bb.e:                                             ; preds = %_ZNK2v88internal4wasm13ValueTypeBase22machine_representationEv.exit55.thread
  %i.bj = ashr i32 %.sroa.057.0.extract.trunc, 1
  %i.bk = xor i32 %i.bj, -1
  %i.bl = load i64, ptr %i.a, align 8
  %i.bm = sext i32 %i.bk to i64
  %i.bn = shl nsw i64 %i.bm, 3
  %i.bo = add nsw i64 %i.bn, 112
  %i.bp = add i64 %i.bo, %i.bl
  br label %_ZNK2v88internal4wasm13ValueTypeBase22machine_representationEv.exit55.thread75.sink.split

_ZNK2v88internal4wasm13ValueTypeBase22machine_representationEv.exit55.thread75.sink.split: ; preds = %bb.e, %.loopexit
  %.sink = phi i64 [ %i.bi, %.loopexit ], [ %i.bp, %bb.e ]
  %i.bq = load ptr, ptr %1, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %i.bs = load ptr, ptr %i.br, align 8
  call void %i.bs(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef 18, ptr noundef null, i64 %.sink) #25
  br label %_ZNK2v88internal4wasm13ValueTypeBase22machine_representationEv.exit55.thread75

_ZNK2v88internal4wasm13ValueTypeBase22machine_representationEv.exit55.thread75: ; preds = %_ZNK2v88internal4wasm13ValueTypeBase22machine_representationEv.exit55.thread75.sink.split, %.lr.ph86, %_ZNK2v88internal4wasm13ValueTypeBase22machine_representationEv.exit55
  %i.bt = getelementptr inbounds nuw i8, ptr %.04684, i64 4 ; 2 uses
  %.not50 = icmp eq ptr %i.bt, %i.ao
  br i1 %.not50, label %.loopexit77, label %.lr.ph86

.critedge:                                        ; preds = %_ZN2v88internal4wasm24LinkageLocationAllocator4NextENS0_21MachineRepresentationE.exit
  %i.bu = call noundef i32 @_ZN2v88internal20AlignedSlotAllocator17AllocateUnalignedEi(ptr noundef nonnull align 4 dereferenceable(16) %i.m, i32 noundef 0) #25 ; 0 uses
  br label %.loopexit77

.loopexit77:                                      ; preds = %_ZNK2v88internal4wasm13ValueTypeBase22machine_representationEv.exit55.thread75, %bb.c, %.critedge, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %.loopexit77
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZN2v88internal4wasm24LinkageLocationAllocator4NextENS0_21MachineRepresentationE(ptr noundef nonnull align 8 dereferenceable(52) %0, i8 noundef zeroext %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  switch i8 %1, label %bb.r [
    i8 0, label %bb.t
    i8 1, label %bb.b
    i8 2, label %bb.c
    i8 3, label %bb.d
    i8 4, label %bb.e
    i8 5, label %bb.f
    i8 16, label %_ZN2v88internal11MachineType21TypeForRepresentationERKNS0_21MachineRepresentationEb.exit
    i8 17, label %bb.g
    i8 18, label %bb.h
    i8 19, label %bb.i
    i8 20, label %bb.j
    i8 9, label %bb.k
    i8 7, label %bb.l
    i8 8, label %bb.m
    i8 11, label %bb.n
    i8 13, label %bb.o
    i8 10, label %bb.p
    i8 14, label %bb.q
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.t

bb.c:                                             ; preds = %bb.a
  br label %bb.t

bb.d:                                             ; preds = %bb.a
  br label %bb.t

bb.e:                                             ; preds = %bb.a
  br label %bb.t

bb.f:                                             ; preds = %bb.a
  br label %bb.t

bb.g:                                             ; preds = %bb.a
  br label %_ZN2v88internal11MachineType21TypeForRepresentationERKNS0_21MachineRepresentationEb.exit

bb.h:                                             ; preds = %bb.a
  br label %_ZN2v88internal11MachineType21TypeForRepresentationERKNS0_21MachineRepresentationEb.exit

bb.i:                                             ; preds = %bb.a
  br label %_ZN2v88internal11MachineType21TypeForRepresentationERKNS0_21MachineRepresentationEb.exit

bb.j:                                             ; preds = %bb.a
  br label %_ZN2v88internal11MachineType21TypeForRepresentationERKNS0_21MachineRepresentationEb.exit

bb.k:                                             ; preds = %bb.a
  br label %bb.t

bb.l:                                             ; preds = %bb.a
  br label %bb.t

bb.m:                                             ; preds = %bb.a
  br label %bb.t

bb.n:                                             ; preds = %bb.a
  br label %bb.t

bb.o:                                             ; preds = %bb.a
  br label %bb.t

bb.p:                                             ; preds = %bb.a
  br label %bb.t

bb.q:                                             ; preds = %bb.a
  br label %bb.t

bb.r:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.3) #26
  unreachable

_ZN2v88internal11MachineType21TypeForRepresentationERKNS0_21MachineRepresentationEb.exit: ; preds = %bb.a, %bb.j, %bb.i, %bb.h, %bb.g
  %.sroa.0.0.i = phi i16 [ 20, %bb.j ], [ 2065, %bb.g ], [ 2066, %bb.h ], [ 19, %bb.i ], [ 2064, %bb.a ] ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i32, ptr %i.c, align 8
  %i.e = icmp slt i32 %i.b, %i.d
  br i1 %i.e, label %bb.s, label %bb.v

bb.s:                                             ; preds = %_ZN2v88internal11MachineType21TypeForRepresentationERKNS0_21MachineRepresentationEb.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = add nsw i32 %i.b, 1
  store i32 %i.h, ptr %i.a, align 4
  %i.i = sext i32 %i.b to i64
  %i.j = getelementptr inbounds i8, ptr %i.g, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1               ; 2 uses
  %i.l = icmp samesign ult i8 %i.k, 16
  tail call void @llvm.assume(i1 %i.l)
  %i.m = shl nuw nsw i8 %i.k, 1
  %.sroa.2.0.insert.ext.i = zext nneg i16 %.sroa.0.0.i to i64
  %.sroa.2.0.insert.shift.i = shl nuw nsw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext nneg i8 %i.m to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  br label %bb.x

bb.t:                                             ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q
  %.sroa.0.0.i.ph = phi i16 [ 2568, %bb.m ], [ 519, %bb.l ], [ 2569, %bb.k ], [ 516, %bb.e ], [ 525, %bb.o ], [ 515, %bb.d ], [ 2570, %bb.p ], [ 514, %bb.c ], [ 1029, %bb.f ], [ 2571, %bb.n ], [ 0, %bb.a ], [ 257, %bb.b ], [ 1038, %bb.q ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4              ; 3 uses
  %i.p = load i32, ptr %0, align 8
  %i.q = icmp slt i32 %i.o, %i.p
  br i1 %i.q, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = add nsw i32 %i.o, 1
  store i32 %i.t, ptr %i.n, align 4
  %i.u = sext i32 %i.o to i64
  %i.v = getelementptr inbounds i8, ptr %i.s, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1               ; 2 uses
  %i.x = icmp samesign ult i8 %i.w, 16
  tail call void @llvm.assume(i1 %i.x)
  %i.y = shl nuw nsw i8 %i.w, 1
  %.sroa.2.0.insert.ext.i9 = zext nneg i16 %.sroa.0.0.i.ph to i64
  %.sroa.2.0.insert.shift.i10 = shl nuw nsw i64 %.sroa.2.0.insert.ext.i9, 32
  %.sroa.0.0.insert.ext.i11 = zext nneg i8 %i.y to i64
  %.sroa.0.0.insert.insert.i12 = or disjoint i64 %.sroa.2.0.insert.shift.i10, %.sroa.0.0.insert.ext.i11
  br label %bb.x

bb.v:                                             ; preds = %bb.t, %_ZN2v88internal11MachineType21TypeForRepresentationERKNS0_21MachineRepresentationEb.exit
  %.sroa.0.0.i23 = phi i16 [ %.sroa.0.0.i.ph, %bb.t ], [ %.sroa.0.0.i, %_ZN2v88internal11MachineType21TypeForRepresentationERKNS0_21MachineRepresentationEb.exit ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aa = load i32, ptr %i.z, align 8
  %switch.tableidx = add i8 %1, -1                ; 3 uses
  %i.ab = icmp ult i8 %switch.tableidx, 20
  br i1 %i.ab, label %switch.hole_check, label %bb.w

bb.w:                                             ; preds = %switch.hole_check, %bb.v
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.3) #26
  unreachable

switch.hole_check:                                ; preds = %bb.v
  %switch.maskindex = zext nneg i8 %switch.tableidx to i32
  %switch.shifted = lshr i32 1032191, %switch.maskindex
  %switch.lobit = trunc i32 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup, label %bb.w

switch.lookup:                                    ; preds = %switch.hole_check
  %i.ac = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN2v88internal4wasm24LinkageLocationAllocator4NextENS0_21MachineRepresentationE, i64 %i.ac
  %switch.load = load i8, ptr %switch.gep, align 1
  %i.ad = shl nuw nsw i8 1, %switch.load
  %.lhs.trunc.i = add nuw nsw i8 %i.ad, 7
  %i.ae = lshr i8 %.lhs.trunc.i, 3
  %.zext.i = zext nneg i8 %i.ae to i32
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ag = tail call noundef i32 @_ZN2v88internal20AlignedSlotAllocator8AllocateEi(ptr noundef nonnull align 4 dereferenceable(16) %i.af, i32 noundef %.zext.i) #25
end_hunk_0
