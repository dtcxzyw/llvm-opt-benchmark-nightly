inline.NumInlined: 1035
inline.NumDeleted: 577
begin_hunk_0_@_ZN2v88internal9Accessors20FunctionGetArgumentsEPNS0_15JavaScriptFrameEi:bb.a
bb.c:                                             ; preds = %.lr.ph
  %i.n = call fastcc ptr @_ZN2v88internal12_GLOBAL__N_117GetFrameArgumentsEPNS0_7IsolateEPNS0_28JavaScriptStackFrameIteratorEi(ptr noundef %i.b, ptr nonnull %i.i, i32 noundef %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  ret ptr %i.n
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc ptr @_ZN2v88internal12_GLOBAL__N_117GetFrameArgumentsEPNS0_7IsolateEPNS0_28JavaScriptStackFrameIteratorEi(ptr noundef %0, ptr %.96.val, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call fastcc ptr @_ZN2v88internal12_GLOBAL__N_122ArgumentsFromDeoptInfoEPNS0_15JavaScriptFrameEi(ptr noundef %.96.val, i32 noundef %1)
  br label %_ZN2v88internal21CodeKindCanDeoptimizeENS0_8CodeKindE.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %.96.val, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i32 %i.e(ptr noundef nonnull align 8 dereferenceable(80) %.96.val) #16 ; 5 uses
  %i.g = load ptr, ptr %.96.val, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call i64 %i.i(ptr noundef nonnull align 8 dereferenceable(80) %.96.val) #16
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 4 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = icmp eq ptr %i.l, %i.n
  br i1 %i.o, label %bb.d, label %_ZN2v88internal6HandleINS0_10JSFunctionEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !11

bb.d:                                             ; preds = %bb.c
  %i.p = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #16
  br label %_ZN2v88internal6HandleINS0_10JSFunctionEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_10JSFunctionEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.c, %bb.d
  %.0.i.i = phi ptr [ %i.p, %bb.d ], [ %i.l, %bb.c ] ; 3 uses
  %i.q = ptrtoint ptr %.0.i.i to i64
  %i.r = add i64 %i.q, 8
  %i.s = inttoptr i64 %i.r to ptr
  store ptr %i.s, ptr %i.k, align 8
  store i64 %i.j, ptr %.0.i.i, align 8
  %i.t = tail call ptr @_ZN2v88internal7Factory18NewArgumentsObjectENS0_12DirectHandleINS0_10JSFunctionEEEi(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %.0.i.i, i32 noundef %i.f) #16 ; 5 uses
  %i.u = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewFixedArrayEiNS0_14AllocationTypeENS0_14AllocationHintE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.f, i8 noundef zeroext 0, i8 0) #16 ; 3 uses
  %i.v = icmp sgt i32 %i.f, 0                     ; 3 uses
  br i1 %i.v, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN2v88internal6HandleINS0_10JSFunctionEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 648
  %wide.trip.count = zext nneg i32 %i.f to i64
  br label %bb.k

._crit_edge:                                      ; preds = %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit, %_ZN2v88internal6HandleINS0_10JSFunctionEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.y = load i64, ptr %i.t, align 8              ; 4 uses
  %i.z = load i64, ptr %i.u, align 8              ; 5 uses
  %i.aa = add i64 %i.y, 15                        ; 3 uses
  %i.ab = inttoptr i64 %i.aa to ptr
  store atomic volatile i64 %i.z, ptr %i.ab monotonic, align 8
  %i.ac = trunc i64 %i.z to i1
  br i1 %i.ac, label %bb.e, label %_ZN2v88internal8JSObject12set_elementsENS0_6TaggedINS0_14FixedArrayBaseEEENS0_16WriteBarrierModeE.exit

bb.e:                                             ; preds = %._crit_edge
  %i.ad = and i64 %i.y, -262144
  %i.ae = inttoptr i64 %i.ad to ptr
  %i.af = load i64, ptr %i.ae, align 262144       ; 2 uses
  %i.ag = and i64 %i.af, 32
  %.not.i.i.i = icmp eq i64 %i.ag, 0
  %i.ah = and i64 %i.af, 25
  %.not38.i.i.i = icmp eq i64 %i.ah, 0
  br i1 %.not38.i.i.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ai = and i64 %i.z, -262144
  %i.aj = inttoptr i64 %i.ai to ptr
  %.sroa.0.0.copyload.i28.i.i.i = load i64, ptr %i.aj, align 262144
  %i.ak = and i64 %.sroa.0.0.copyload.i28.i.i.i, 25
  %.not39.i.i.i = icmp eq i64 %i.ak, 0
  br i1 %.not39.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.y, i64 noundef %i.aa, i64 %i.z) #16
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  br i1 %.not.i.i.i, label %_ZN2v88internal8JSObject12set_elementsENS0_6TaggedINS0_14FixedArrayBaseEEENS0_16WriteBarrierModeE.exit, label %bb.i, !prof !7

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.y, i64 %i.aa, i64 %i.z) #16
  br label %_ZN2v88internal8JSObject12set_elementsENS0_6TaggedINS0_14FixedArrayBaseEEENS0_16WriteBarrierModeE.exit

_ZN2v88internal8JSObject12set_elementsENS0_6TaggedINS0_14FixedArrayBaseEEENS0_16WriteBarrierModeE.exit: ; preds = %._crit_edge, %bb.h, %bb.i
  %i.al = tail call i64 @_ZNK2v88internal10StackFrame10LookupCodeEv(ptr noundef nonnull align 8 dereferenceable(80) %.96.val) #16
  %i.am = add i64 %i.al, 51
  %i.an = inttoptr i64 %i.am to ptr
  %i.ao = load atomic volatile i32, ptr %i.an monotonic, align 4
  %i.ap = trunc i32 %i.ao to i8
  %i.aq = and i8 %i.ap, 15                        ; 2 uses
  %i.ar = add nsw i8 %i.aq, -11
  %i.as = icmp ult i8 %i.ar, 2
  br i1 %i.as, label %_ZN2v88internal21CodeKindCanDeoptimizeENS0_8CodeKindE.exit, label %bb.j

bb.j:                                             ; preds = %_ZN2v88internal8JSObject12set_elementsENS0_6TaggedINS0_14FixedArrayBaseEEENS0_16WriteBarrierModeE.exit
  %i.at = icmp eq i8 %i.aq, 4
  %i.au = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 817), align 1, !range !5
  %i.av = trunc nuw i8 %i.au to i1
  %i.aw = and i1 %i.v, %i.av
  %or.cond = select i1 %i.at, i1 %i.aw, i1 false
  br i1 %or.cond, label %bb.s, label %_ZN2v88internal21CodeKindCanDeoptimizeENS0_8CodeKindE.exit.thread

_ZN2v88internal21CodeKindCanDeoptimizeENS0_8CodeKindE.exit: ; preds = %_ZN2v88internal8JSObject12set_elementsENS0_6TaggedINS0_14FixedArrayBaseEEENS0_16WriteBarrierModeE.exit
  br i1 %i.v, label %bb.s, label %_ZN2v88internal21CodeKindCanDeoptimizeENS0_8CodeKindE.exit.thread

bb.k:                                             ; preds = %.lr.ph, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit ] ; 3 uses
  %i.ax = load ptr, ptr %.96.val, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 104
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = trunc nuw nsw i64 %indvars.iv to i32
  %i.bb = tail call i64 %i.az(ptr noundef nonnull align 8 dereferenceable(80) %.96.val, i32 noundef %i.ba) #16 ; 2 uses
  %i.bc = load i64, ptr %i.w, align 8
  %i.bd = icmp eq i64 %i.bb, %i.bc
  br i1 %i.bd, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.be = load i64, ptr %i.x, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sroa.021.0 = phi i64 [ %i.be, %bb.l ], [ %i.bb, %bb.k ] ; 5 uses
  %i.bf = load i64, ptr %i.u, align 8
  %i.bg = add i64 %i.bf, -1                       ; 3 uses
  %i.bh = inttoptr i64 %i.bg to ptr
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %indvars.iv ; 2 uses
  store atomic volatile i64 %.sroa.021.0, ptr %i.bj monotonic, align 8
  %i.bk = trunc i64 %.sroa.021.0 to i1
  br i1 %i.bk, label %bb.n, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

bb.n:                                             ; preds = %bb.m
  %i.bl = or disjoint i64 %i.bg, 1                ; 2 uses
  %i.bm = ptrtoint ptr %i.bj to i64               ; 2 uses
  %i.bn = and i64 %i.bg, -262144
  %i.bo = inttoptr i64 %i.bn to ptr
  %i.bp = load i64, ptr %i.bo, align 262144       ; 2 uses
  %i.bq = and i64 %i.bp, 32
  %.not.i.i.i.i.i = icmp eq i64 %i.bq, 0
  %i.br = and i64 %i.bp, 25
  %.not38.i.i.i.i.i = icmp eq i64 %i.br, 0
  br i1 %.not38.i.i.i.i.i, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.bs = and i64 %.sroa.021.0, -262144
  %i.bt = inttoptr i64 %i.bs to ptr
  %.sroa.0.0.copyload.i28.i.i.i.i.i = load i64, ptr %i.bt, align 262144
  %i.bu = and i64 %.sroa.0.0.copyload.i28.i.i.i.i.i, 25
  %.not39.i.i.i.i.i = icmp eq i64 %i.bu, 0
  br i1 %.not39.i.i.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.bl, i64 noundef %i.bm, i64 %.sroa.021.0) #16
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  br i1 %.not.i.i.i.i.i, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit, label %bb.r, !prof !7

bb.r:                                             ; preds = %bb.q
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.bl, i64 %i.bm, i64 %.sroa.021.0) #16
  br label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit: ; preds = %bb.m, %bb.q, %bb.r
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.k, !llvm.loop !16

bb.s:                                             ; preds = %bb.j, %_ZN2v88internal21CodeKindCanDeoptimizeENS0_8CodeKindE.exit
  %i.bv = tail call fastcc ptr @_ZN2v88internal12_GLOBAL__N_122ArgumentsFromDeoptInfoEPNS0_15JavaScriptFrameEi(ptr noundef nonnull %.96.val, i32 noundef %1)
  %i.bw = load i64, ptr %i.bv, align 8
  %i.bx = add i64 %i.bw, 15
  %i.by = inttoptr i64 %i.bx to ptr
  %i.bz = load i64, ptr %i.by, align 8            ; 2 uses
  %i.ca = load ptr, ptr %i.k, align 8             ; 2 uses
  %i.cb = load ptr, ptr %i.m, align 8
  %i.cc = icmp eq ptr %i.ca, %i.cb
  br i1 %i.cc, label %bb.t, label %_ZN2v88internal6HandleINS0_10FixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !11

bb.t:                                             ; preds = %bb.s
  %i.cd = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #16
  br label %_ZN2v88internal6HandleINS0_10FixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_10FixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.s, %bb.t
  %.0.i.i42 = phi ptr [ %i.cd, %bb.t ], [ %i.ca, %bb.s ] ; 3 uses
  %i.ce = ptrtoint ptr %.0.i.i42 to i64
  %i.cf = add i64 %i.ce, 8
  %i.cg = inttoptr i64 %i.cf to ptr
  store ptr %i.cg, ptr %i.k, align 8
  store i64 %i.bz, ptr %.0.i.i42, align 8
  %i.ch = add i64 %i.bz, -1
  %i.ci = inttoptr i64 %i.ch to ptr
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 12
  %2 = load i32, ptr %i.cj, align 4               ; 2 uses
  %i.ck = icmp sgt i32 %2, 0
  br i1 %i.ck, label %.lr.ph59.preheader, label %_ZN2v88internal21CodeKindCanDeoptimizeENS0_8CodeKindE.exit.thread

.lr.ph59.preheader:                               ; preds = %_ZN2v88internal6HandleINS0_10FixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.cl = tail call i32 @llvm.umin.i32(i32 %2, i32 %i.f)
  %wide.trip.count64 = zext nneg i32 %i.cl to i64
  br label %.lr.ph59

.lr.ph59:                                         ; preds = %.lr.ph59.preheader, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit47
  %indvars.iv61 = phi i64 [ 0, %.lr.ph59.preheader ], [ %indvars.iv.next62, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit47 ] ; 3 uses
  %i.cm = load i64, ptr %i.u, align 8
  %i.cn = add i64 %i.cm, -1                       ; 3 uses
  %i.co = inttoptr i64 %i.cn to ptr
  %i.cp = load i64, ptr %.0.i.i42, align 8
  %i.cq = add i64 %i.cp, -1
  %i.cr = inttoptr i64 %i.cq to ptr
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %indvars.iv61
  %i.cu = load atomic volatile i64, ptr %i.ct monotonic, align 8 ; 5 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %indvars.iv61 ; 2 uses
  store atomic volatile i64 %i.cu, ptr %i.cw monotonic, align 8
  %i.cx = trunc i64 %i.cu to i1
  br i1 %i.cx, label %bb.u, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit47

bb.u:                                             ; preds = %.lr.ph59
  %i.cy = or disjoint i64 %i.cn, 1                ; 2 uses
  %i.cz = ptrtoint ptr %i.cw to i64               ; 2 uses
  %i.da = and i64 %i.cn, -262144
  %i.db = inttoptr i64 %i.da to ptr
  %i.dc = load i64, ptr %i.db, align 262144       ; 2 uses
  %i.dd = and i64 %i.dc, 32
  %.not.i.i.i.i.i43 = icmp eq i64 %i.dd, 0
  %i.de = and i64 %i.dc, 25
  %.not38.i.i.i.i.i44 = icmp eq i64 %i.de, 0
  br i1 %.not38.i.i.i.i.i44, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.df = and i64 %i.cu, -262144
  %i.dg = inttoptr i64 %i.df to ptr
  %.sroa.0.0.copyload.i28.i.i.i.i.i45 = load i64, ptr %i.dg, align 262144
  %i.dh = and i64 %.sroa.0.0.copyload.i28.i.i.i.i.i45, 25
  %.not39.i.i.i.i.i46 = icmp eq i64 %i.dh, 0
  br i1 %.not39.i.i.i.i.i46, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.cy, i64 noundef %i.cz, i64 %i.cu) #16
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u
  br i1 %.not.i.i.i.i.i43, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit47, label %bb.y, !prof !7

bb.y:                                             ; preds = %bb.x
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.cy, i64 %i.cz, i64 %i.cu) #16
  br label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit47

_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit47: ; preds = %.lr.ph59, %bb.x, %bb.y
  %indvars.iv.next62 = add nuw nsw i64 %indvars.iv61, 1 ; 2 uses
  %exitcond65.not = icmp eq i64 %indvars.iv.next62, %wide.trip.count64
  br i1 %exitcond65.not, label %_ZN2v88internal21CodeKindCanDeoptimizeENS0_8CodeKindE.exit.thread, label %.lr.ph59, !llvm.loop !17

_ZN2v88internal21CodeKindCanDeoptimizeENS0_8CodeKindE.exit.thread: ; preds = %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit47, %_ZN2v88internal6HandleINS0_10FixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, %bb.j, %_ZN2v88internal21CodeKindCanDeoptimizeENS0_8CodeKindE.exit, %bb.b
  %.sroa.031.0 = phi ptr [ %i.b, %bb.b ], [ %i.t, %bb.j ], [ %i.t, %_ZN2v88internal21CodeKindCanDeoptimizeENS0_8CodeKindE.exit ], [ %i.t, %_ZN2v88internal6HandleINS0_10FixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit ], [ %i.t, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit47 ]
  ret ptr %.sroa.031.0
}

declare void @_ZN2v88internal28JavaScriptStackFrameIterator7AdvanceEv(ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZN2v88internal9Accessors26GetLegacyFunctionArgumentsEPNS0_7IsolateENS0_12DirectHandleINS0_10JSFunctionEEE(ptr noundef %0, ptr readonly captures(none) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"struct.v8::internal::FrameSummaries", align 8 ; 7 uses
  %3 = alloca %"class.v8::internal::JavaScriptStackFrameIterator", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 4 uses
  %i.b = load i64, ptr %1, align 8
  %i.c = add i64 %i.b, 31
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = load atomic volatile i64, ptr %i.d monotonic, align 8
  %i.f = add i64 %i.e, 55
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load atomic volatile i32, ptr %i.g monotonic, align 4
  %i.i = and i32 %i.h, 32
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @_ZN2v88internal18StackFrameIteratorC1EPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull %0) #16
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 4 uses
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %.loopexit, label %_ZN2v88internal28JavaScriptStackFrameIteratorC2EPNS0_7IsolateE.exit

_ZN2v88internal28JavaScriptStackFrameIteratorC2EPNS0_7IsolateE.exit: ; preds = %bb.b
  call void @_ZN2v88internal28JavaScriptStackFrameIterator7AdvanceEv(ptr noundef nonnull align 8 dereferenceable(128) %3) #16
  %.pre = load ptr, ptr %i.j, align 8             ; 2 uses
  %i.m = icmp eq ptr %.pre, null
  br i1 %i.m, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN2v88internal28JavaScriptStackFrameIteratorC2EPNS0_7IsolateE.exit
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %.critedge
  %i.p = phi ptr [ %.pre, %.lr.ph ], [ %i.aq, %.critedge ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 72
  %i.s = load ptr, ptr %i.r, align 8
  call void %i.s(ptr dead_on_unwind nonnull writable sret(%"struct.v8::internal::FrameSummaries") align 8 %2, ptr noundef nonnull align 8 dereferenceable(80) %i.p) #16, !inline_history !18
  %i.t = load ptr, ptr %i.n, align 8              ; 3 uses
  %i.u = load ptr, ptr %2, align 8                ; 5 uses
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = sdiv exact i64 %i.x, 56
  %sext.i = shl i64 %i.y, 32                      ; 2 uses
  %i.z = icmp eq i64 %sext.i, 0
  br i1 %i.z, label %.split.loop.exit16.i, label %.lr.ph29

.lr.ph29:                                         ; preds = %bb.c
  %i.aa = ashr exact i64 %sext.i, 32
  %i.ab = load i64, ptr %1, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %i.ac = icmp eq i64 %indvars.iv.next.i, 0
  br i1 %i.ac, label %.split.loop.exit16.i, label %bb.e, !llvm.loop !19

bb.e:                                             ; preds = %.lr.ph29, %bb.d
  %indvars.iv.i28 = phi i64 [ %i.aa, %.lr.ph29 ], [ %indvars.iv.next.i, %bb.d ]
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i28, -1 ; 4 uses
  %i.ad = getelementptr inbounds nuw [56 x i8], ptr %i.u, i64 %indvars.iv.next.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.ae, align 8
  %i.af = load i64, ptr %.sroa.0.0.copyload.i.i, align 8
  %i.ag = icmp eq i64 %i.af, %i.ab
  br i1 %i.ag, label %.split.loop.exit.i, label %bb.d, !llvm.loop !19

.split.loop.exit.i:                               ; preds = %bb.e
  %i.ah = trunc nsw i64 %indvars.iv.next.i to i32
  br label %.split.loop.exit16.i

.split.loop.exit16.i:                             ; preds = %bb.d, %bb.c, %.split.loop.exit.i
  %spec.select.i = phi i32 [ %i.ah, %.split.loop.exit.i ], [ -1, %bb.c ], [ -1, %bb.d ] ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.u, %i.t
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPN2v88internal12FrameSummaryEEvT_S4_.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.split.loop.exit16.i, %.lr.ph.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i.i.i ], [ %i.u, %.split.loop.exit16.i ] ; 2 uses
  call void @_ZN2v88internal12FrameSummaryD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %.05.i.i.i.i.i) #16
  %i.ai = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ai, %i.t
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPN2v88internal12FrameSummaryEEvT_S4_.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !20

_ZSt8_DestroyIPN2v88internal12FrameSummaryEEvT_S4_.exitthread-pre-split.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %2, align 8
  br label %_ZSt8_DestroyIPN2v88internal12FrameSummaryEEvT_S4_.exit.i.i.i

_ZSt8_DestroyIPN2v88internal12FrameSummaryEEvT_S4_.exit.i.i.i: ; preds = %_ZSt8_DestroyIPN2v88internal12FrameSummaryEEvT_S4_.exitthread-pre-split.i.i.i, %.split.loop.exit16.i
  %i.aj = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPN2v88internal12FrameSummaryEEvT_S4_.exitthread-pre-split.i.i.i ], [ %i.u, %.split.loop.exit16.i ] ; 3 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i1.i.i.i, label %_ZN2v88internal12_GLOBAL__N_119FindFunctionInFrameEPNS0_15JavaScriptFrameENS0_12DirectHandleINS0_10JSFunctionEEE.exit, label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIPN2v88internal12FrameSummaryEEvT_S4_.exit.i.i.i
  %i.ak = load ptr, ptr %i.o, align 8
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = ptrtoint ptr %i.aj to i64
  %i.an = sub i64 %i.al, %i.am
  call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef %i.an) #18
  br label %_ZN2v88internal12_GLOBAL__N_119FindFunctionInFrameEPNS0_15JavaScriptFrameENS0_12DirectHandleINS0_10JSFunctionEEE.exit

_ZN2v88internal12_GLOBAL__N_119FindFunctionInFrameEPNS0_15JavaScriptFrameENS0_12DirectHandleINS0_10JSFunctionEEE.exit: ; preds = %_ZSt8_DestroyIPN2v88internal12FrameSummaryEEvT_S4_.exit.i.i.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  %i.ao = icmp slt i32 %spec.select.i, 0
  br i1 %i.ao, label %.critedge, label %bb.g

bb.g:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_119FindFunctionInFrameEPNS0_15JavaScriptFrameENS0_12DirectHandleINS0_10JSFunctionEEE.exit
  %.val = load ptr, ptr %i.j, align 8
  %i.ap = call fastcc ptr @_ZN2v88internal12_GLOBAL__N_117GetFrameArgumentsEPNS0_7IsolateEPNS0_28JavaScriptStackFrameIteratorEi(ptr noundef nonnull %0, ptr %.val, i32 noundef %spec.select.i)
  br label %.loopexit

.critedge:                                        ; preds = %_ZN2v88internal12_GLOBAL__N_119FindFunctionInFrameEPNS0_15JavaScriptFrameENS0_12DirectHandleINS0_10JSFunctionEEE.exit
  call void @_ZN2v88internal28JavaScriptStackFrameIterator7AdvanceEv(ptr noundef nonnull align 8 dereferenceable(128) %3) #16
  %i.aq = load ptr, ptr %i.j, align 8             ; 2 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %.loopexit, label %bb.c, !llvm.loop !21

.loopexit:                                        ; preds = %.critedge, %bb.b, %_ZN2v88internal28JavaScriptStackFrameIteratorC2EPNS0_7IsolateE.exit, %bb.g
  %.sroa.015.0 = phi ptr [ %i.ap, %bb.g ], [ %i.a, %_ZN2v88internal28JavaScriptStackFrameIteratorC2EPNS0_7IsolateE.exit ], [ %i.a, %bb.b ], [ %i.a, %.critedge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br label %bb.h

bb.h:                                             ; preds = %.loopexit, %bb.a
  %.sroa.015.1 = phi ptr [ %i.a, %bb.a ], [ %.sroa.015.0, %.loopexit ]
  ret ptr %.sroa.015.1
}

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZN2v88internal9Accessors23GetLegacyFunctionCallerEPNS0_7IsolateENS0_12DirectHandleINS0_10JSFunctionEEE(ptr noundef %0, ptr %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.591", align 8 ; 4 uses
  %3 = alloca %"class.v8::internal::FrameFunctionIterator", align 8 ; 16 uses
  %.fr23.i.i = freeze ptr %1                      ; 4 uses
end_hunk_0
