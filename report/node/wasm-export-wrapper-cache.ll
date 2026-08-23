Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/wasm-export-wrapper-cache?download=true
inline.NumInlined: 248
inline.NumDeleted: 155
begin_hunk_0_@_ZN2v88internal4wasm22WasmExportWrapperCache3NewEPNS0_7IsolateEi:bb.a
  %i.z = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #6
  br label %_ZN2v88internal14WeakFixedArray3NewINS0_7IsolateEEENS0_6HandleIS1_EEPT_iNS0_14AllocationTypeENS0_17MaybeDirectHandleINS0_6ObjectEEE.exit

_ZN2v88internal14WeakFixedArray3NewINS0_7IsolateEEENS0_6HandleIS1_EEPT_iNS0_14AllocationTypeENS0_17MaybeDirectHandleINS0_6ObjectEEE.exit: ; preds = %bb.d, %bb.e
  %.0.i.i.i.i = phi ptr [ %i.z, %bb.e ], [ %i.w, %bb.d ] ; 4 uses
  %i.aa = ptrtoint ptr %.0.i.i.i.i to i64
  %i.ab = add i64 %i.aa, 8
  %i.ac = inttoptr i64 %i.ab to ptr
  store ptr %i.ac, ptr %i.c, align 8
  store i64 %i.o, ptr %.0.i.i.i.i, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.sroa.014.0.i = load i64, ptr %.0.i, align 8
  %i.ae = tail call { i64, ptr } asm sideeffect "cld;rep ; stosq", "=&{cx},=&{di},{ax},0,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %.sroa.014.0.i, i64 %i.u, ptr nonnull %i.ad) #6, !srcloc !7 ; 0 uses
  %i.af = load i64, ptr %.0.i.i.i.i, align 8
  %i.ag = add i64 %i.af, -1
  %i.ah = inttoptr i64 %i.ag to ptr
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store atomic volatile i64 0, ptr %i.ai monotonic, align 8
  ret ptr %.0.i.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal4wasm22WasmExportWrapperCache3PutEPNS0_7IsolateENS1_18CanonicalTypeIndexEbNS0_12DirectHandleINS0_4CodeEEE(ptr noundef %0, i32 %1, i1 noundef zeroext %2, ptr nofree readonly captures(none) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = select i1 %2, i32 1048576, i32 0
  %i.b = or i32 %i.a, %1
  %i.c = tail call i64 @_ZN2v88internal4wasm22WasmExportWrapperCache14EnsureCapacityEPNS0_7IsolateE(ptr noundef %0)
  %i.d = load i64, ptr %3, align 8
  %i.e = add i64 %i.d, 23
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load i64, ptr %i.f, align 8
  tail call void @_ZN2v88internal4wasm22WasmExportWrapperCache11PutInternalILb1EEEvNS0_6TaggedINS0_14WeakFixedArrayEEEjNS4_INS0_9MaybeWeakINS0_6ObjectEEEEE(i64 %i.c, i32 noundef %i.b, i64 %i.g)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden i64 @_ZN2v88internal4wasm22WasmExportWrapperCache14EnsureCapacityEPNS0_7IsolateE(ptr noundef %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 55464
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = add i64 %i.b, -55464
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 9752 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8              ; 3 uses
  %i.g = add i64 %i.f, -1
  %i.h = inttoptr i64 %i.g to ptr                 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load i64, ptr %i.i, align 8
  %i.k = lshr i64 %i.j, 32                        ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 4 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = icmp eq ptr %i.n, %i.p
  br i1 %i.q, label %bb.c, label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit.i, !prof !5

bb.c:                                             ; preds = %bb.b
  %i.r = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #6
  br label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit.i

_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i25 = phi ptr [ %i.r, %bb.c ], [ %i.n, %bb.b ] ; 3 uses
  %i.s = ptrtoint ptr %.0.i.i25 to i64
  %i.t = add i64 %i.s, 8
  %i.u = inttoptr i64 %i.t to ptr
  store ptr %i.u, ptr %i.m, align 8
  store i64 -4294967296, ptr %.0.i.i25, align 8
  %i.v = tail call i64 @_ZN2v88internal11FactoryBaseINS0_7FactoryEE16AllocateRawArrayEiNS0_14AllocationTypeENS0_14AllocationHintENS0_19AllocationAlignmentE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef 280, i8 noundef zeroext 1, i8 0, i8 noundef zeroext 0) #6 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.x = load i64, ptr %i.w, align 8
  %i.y = add i64 %i.v, -1
  %i.z = inttoptr i64 %i.y to ptr                 ; 3 uses
  store atomic volatile i64 %i.x, ptr %i.z monotonic, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store atomic volatile i64 141733920768, ptr %i.aa monotonic, align 8
  %i.ab = load ptr, ptr %i.m, align 8             ; 2 uses
  %i.ac = load ptr, ptr %i.o, align 8
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %bb.d, label %_ZN2v88internal4wasm22WasmExportWrapperCache3NewEPNS0_7IsolateEi.exit, !prof !5

bb.d:                                             ; preds = %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit.i
  %i.ae = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #6
  br label %_ZN2v88internal4wasm22WasmExportWrapperCache3NewEPNS0_7IsolateEi.exit

_ZN2v88internal4wasm22WasmExportWrapperCache3NewEPNS0_7IsolateEi.exit: ; preds = %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit.i, %bb.d
  %.0.i.i.i.i.i = phi ptr [ %i.ae, %bb.d ], [ %i.ab, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit.i ] ; 4 uses
  %i.af = ptrtoint ptr %.0.i.i.i.i.i to i64
  %i.ag = add i64 %i.af, 8
  %i.ah = inttoptr i64 %i.ag to ptr
  store ptr %i.ah, ptr %i.m, align 8
  store i64 %i.v, ptr %.0.i.i.i.i.i, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %.sroa.014.0.i.i = load i64, ptr %.0.i.i25, align 8
  %i.aj = tail call { i64, ptr } asm sideeffect "cld;rep ; stosq", "=&{cx},=&{di},{ax},0,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %.sroa.014.0.i.i, i64 33, ptr nonnull %i.ai) #6, !srcloc !7 ; 0 uses
  %i.ak = load i64, ptr %.0.i.i.i.i.i, align 8
  %i.al = add i64 %i.ak, -1
  %i.am = inttoptr i64 %i.al to ptr
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store atomic volatile i64 0, ptr %i.an monotonic, align 8
  %i.ao = load i64, ptr %.0.i.i.i.i.i, align 8
  br label %.sink.split

bb.e:                                             ; preds = %bb.a
  %i.ap = trunc nuw i64 %i.k to i32               ; 2 uses
  %i.aq = ashr i32 %i.ap, 1
  %i.ar = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.as = load atomic volatile i64, ptr %i.ar monotonic, align 8 ; 2 uses
  %i.at = and i64 %i.as, 1
  %i.au = icmp eq i64 %i.at, 0
  tail call void @llvm.assume(i1 %i.au)
  %i.av = lshr i64 %i.as, 32
  %i.aw = trunc nuw i64 %i.av to i32
  %i.ax = lshr i32 %i.aq, 1
  %i.ay = icmp ugt i32 %i.ax, %i.aw
  br i1 %i.ay, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8            ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = icmp eq ptr %i.ba, %i.bc
  br i1 %i.bd, label %bb.g, label %_ZN2v88internal6HandleINS0_14WeakFixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !5

bb.g:                                             ; preds = %bb.f
  %i.be = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #6
  br label %_ZN2v88internal6HandleINS0_14WeakFixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_14WeakFixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.f, %bb.g
  %.0.i.i = phi ptr [ %i.be, %bb.g ], [ %i.ba, %bb.f ] ; 3 uses
  %i.bf = ptrtoint ptr %.0.i.i to i64
  %i.bg = add i64 %i.bf, 8
  %i.bh = inttoptr i64 %i.bg to ptr
  store ptr %i.bh, ptr %i.az, align 8
  store i64 %i.f, ptr %.0.i.i, align 8
  %i.bi = and i32 %i.ap, -2
  %i.bj = tail call ptr @_ZN2v88internal4wasm22WasmExportWrapperCache3NewEPNS0_7IsolateEi(ptr noundef nonnull %0, i32 noundef %i.bi)
  %i.bk = load i64, ptr %i.bj, align 8            ; 3 uses
  %i.bl = load i64, ptr %.0.i.i, align 8
  %i.bm = add i64 %i.bl, -1
  %i.bn = inttoptr i64 %i.bm to ptr               ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 2 uses
  %i.bp = load i64, ptr %i.bo, align 8            ; 2 uses
  %i.bq = lshr i64 %i.bp, 32
  %i.br = trunc nuw i64 %i.bq to i32
  %i.bs = icmp sgt i32 %i.br, 1
  br i1 %i.bs, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN2v88internal6HandleINS0_14WeakFixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  br label %bb.h

._crit_edge.loopexit:                             ; preds = %bb.k
  %i.bu = sext i32 %.2 to i64
  %i.bv = shl nsw i64 %i.bu, 32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN2v88internal6HandleINS0_14WeakFixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %.0.lcssa = phi i64 [ 0, %_ZN2v88internal6HandleINS0_14WeakFixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit ], [ %i.bv, %._crit_edge.loopexit ]
  %i.bw = add i64 %i.bk, -1
  %i.bx = inttoptr i64 %i.bw to ptr
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  store atomic volatile i64 %.0.lcssa, ptr %i.by monotonic, align 8
  br label %.sink.split

bb.h:                                             ; preds = %.lr.ph, %bb.k
  %i.bz = phi i64 [ %i.bp, %.lr.ph ], [ %i.cm, %bb.k ] ; 2 uses
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %bb.k ] ; 2 uses
  %.054 = phi i32 [ 0, %.lr.ph ], [ %.2, %bb.k ]  ; 3 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv ; 2 uses
  %i.cb = load atomic volatile i64, ptr %i.ca monotonic, align 8 ; 2 uses
  %i.cc = and i64 %i.cb, 1
  %i.cd = icmp eq i64 %i.cc, 0
  tail call void @llvm.assume(i1 %i.cd)
  %i.ce = lshr i64 %i.cb, 32                      ; 2 uses
  %i.cf = trunc nuw i64 %i.ce to i32
  %i.cg = icmp eq i64 %i.ce, 4294967295
  br i1 %i.cg, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.ci = load atomic volatile i64, ptr %i.ch monotonic, align 8 ; 2 uses
  %i.cj = and i64 %i.ci, 4294967295
  %i.ck = icmp eq i64 %i.cj, 3
  br i1 %i.ck, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cl = add nsw i32 %.054, 1
  tail call void @_ZN2v88internal4wasm22WasmExportWrapperCache11PutInternalILb0EEEvNS0_6TaggedINS0_14WeakFixedArrayEEEjNS4_INS0_9MaybeWeakINS0_6ObjectEEEEE(i64 %i.bk, i32 noundef %i.cf, i64 %i.ci)
  %.pre = load i64, ptr %i.bo, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %i.cm = phi i64 [ %i.bz, %bb.h ], [ %.pre, %bb.j ], [ %i.bz, %bb.i ] ; 2 uses
  %.2 = phi i32 [ %.054, %bb.h ], [ %i.cl, %bb.j ], [ %.054, %bb.i ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %1 = ashr i64 %i.cm, 32
  %i.cn = icmp slt i64 %indvars.iv.next, %1
  br i1 %i.cn, label %bb.h, label %._crit_edge.loopexit, !llvm.loop !8

.sink.split:                                      ; preds = %_ZN2v88internal4wasm22WasmExportWrapperCache3NewEPNS0_7IsolateEi.exit, %._crit_edge
  %.sink = phi i64 [ %i.bk, %._crit_edge ], [ %i.ao, %_ZN2v88internal4wasm22WasmExportWrapperCache3NewEPNS0_7IsolateEi.exit ] ; 2 uses
  store i64 %.sink, ptr %i.e, align 8
  br label %bb.l

bb.l:                                             ; preds = %.sink.split, %bb.e
  %.sroa.044.0 = phi i64 [ %i.f, %bb.e ], [ %.sink, %.sink.split ]
  ret i64 %.sroa.044.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal4wasm22WasmExportWrapperCache11PutInternalILb1EEEvNS0_6TaggedINS0_14WeakFixedArrayEEEjNS4_INS0_9MaybeWeakINS0_6ObjectEEEEE(i64 %0, i32 noundef %1, i64 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = add i64 %0, -1                           ; 3 uses
  %i.b = inttoptr i64 %i.a to ptr                 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i64, ptr %i.c, align 8
  %i.e = lshr i64 %i.d, 32
  %i.f = trunc nuw i64 %i.e to i32
  %i.g = ashr i32 %i.f, 1
  %i.h = add nsw i32 %i.g, -1                     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 6 uses
  %.sroa.013.0.in41 = and i32 %1, %i.h            ; 2 uses
  %i.j = shl nsw i32 %.sroa.013.0.in41, 1         ; 3 uses
  %i.k = or disjoint i32 %i.j, 1
  %i.l = sext i32 %i.k to i64                     ; 2 uses
  %i.m = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.l
  %i.n = load atomic volatile i64, ptr %i.m monotonic, align 8 ; 2 uses
  %i.o = and i64 %i.n, 1
  %i.p = icmp eq i64 %i.o, 0
  tail call void @llvm.assume(i1 %i.p)
  %i.q = lshr i64 %i.n, 32                        ; 2 uses
  %i.r = icmp eq i64 %i.q, 4294967295
  br i1 %i.r, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %zext = zext i32 %1 to i64                      ; 2 uses
  %i.s = icmp eq i64 %i.q, %zext
  br i1 %i.s, label %.critedge, label %.lr.ph59

._crit_edge:                                      ; preds = %.lr.ph59, %bb.a
  %.lcssa40 = phi i64 [ %i.l, %bb.a ], [ %i.ax, %.lr.ph59 ]
  %.lcssa37 = phi i32 [ %i.j, %bb.a ], [ %i.av, %.lr.ph59 ]
  %i.t = getelementptr inbounds [8 x i8], ptr %i.i, i64 %.lcssa40
  %i.u = sext i32 %1 to i64
  %i.v = shl nsw i64 %i.u, 32
  store atomic volatile i64 %i.v, ptr %i.t monotonic, align 8
  %i.w = load atomic volatile i64, ptr %i.i monotonic, align 8 ; 2 uses
  %i.x = and i64 %i.w, 1
  %i.y = icmp eq i64 %i.x, 0
  tail call void @llvm.assume(i1 %i.y)
  %i.z = and i64 %i.w, -4294967296
  %i.aa = add i64 %i.z, 4294967296
  store atomic volatile i64 %i.aa, ptr %i.i monotonic, align 8
  br label %.critedge

.lr.ph:                                           ; preds = %.lr.ph59
  %i.ab = add i32 %.04258, 1
  %i.ac = icmp eq i64 %i.bc, %zext
  br i1 %i.ac, label %.critedge, label %.lr.ph59, !llvm.loop !10

.critedge:                                        ; preds = %.lr.ph, %.lr.ph.preheader, %._crit_edge
  %i.ad = phi i32 [ %.lcssa37, %._crit_edge ], [ %i.j, %.lr.ph.preheader ], [ %i.av, %.lr.ph ]
  %i.ae = or i64 %2, 3                            ; 3 uses
  %i.af = sext i32 %i.ad to i64
  %i.ag = getelementptr [8 x i8], ptr %i.i, i64 %i.af
  %i.ah = getelementptr i8, ptr %i.ag, i64 16     ; 2 uses
  store atomic volatile i64 %i.ae, ptr %i.ah monotonic, align 8
  %i.ai = and i64 %i.ae, 4294967295
  %.not33 = icmp eq i64 %i.ai, 3
  br i1 %.not33, label %_ZN2v88internal15TaggedArrayBaseINS0_14WeakFixedArrayENS0_19WeakFixedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit, label %bb.b

bb.b:                                             ; preds = %.critedge
  %i.aj = and i64 %i.ae, -3                       ; 2 uses
  %i.ak = or disjoint i64 %i.a, 1                 ; 2 uses
  %i.al = ptrtoint ptr %i.ah to i64               ; 2 uses
  %i.am = and i64 %i.a, -262144
  %i.an = inttoptr i64 %i.am to ptr
  %i.ao = load i64, ptr %i.an, align 262144       ; 2 uses
  %i.ap = and i64 %i.ao, 32
  %.not.i.i.i.i.i = icmp eq i64 %i.ap, 0
  %i.aq = and i64 %i.ao, 25
  %.not38.i.i.i.i.i = icmp eq i64 %i.aq, 0
  br i1 %.not38.i.i.i.i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.ar = and i64 %2, -262144
  %i.as = inttoptr i64 %i.ar to ptr
  %.sroa.0.0.copyload.i28.i.i.i.i.i = load i64, ptr %i.as, align 262144
  %i.at = and i64 %.sroa.0.0.copyload.i28.i.i.i.i.i, 25
  %.not39.i.i.i.i.i = icmp eq i64 %i.at, 0
  br i1 %.not39.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.ak, i64 noundef %i.al, i64 %i.aj) #6
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  br i1 %.not.i.i.i.i.i, label %_ZN2v88internal15TaggedArrayBaseINS0_14WeakFixedArrayENS0_19WeakFixedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit, label %bb.f, !prof !6

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.ak, i64 %i.al, i64 %i.aj) #6
  br label %_ZN2v88internal15TaggedArrayBaseINS0_14WeakFixedArrayENS0_19WeakFixedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit

_ZN2v88internal15TaggedArrayBaseINS0_14WeakFixedArrayENS0_19WeakFixedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit: ; preds = %.critedge, %bb.e, %bb.f
  ret void

.lr.ph59:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %.04258 = phi i32 [ %i.ab, %.lr.ph ], [ 1, %.lr.ph.preheader ] ; 2 uses
  %.sroa.013.0.in4357 = phi i32 [ %.sroa.013.0.in, %.lr.ph ], [ %.sroa.013.0.in41, %.lr.ph.preheader ]
  %i.au = add i32 %.04258, %.sroa.013.0.in4357
  %.sroa.013.0.in = and i32 %i.au, %i.h           ; 2 uses
  %i.av = shl nsw i32 %.sroa.013.0.in, 1          ; 3 uses
  %i.aw = or disjoint i32 %i.av, 1
  %i.ax = sext i32 %i.aw to i64                   ; 2 uses
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.ax
  %i.az = load atomic volatile i64, ptr %i.ay monotonic, align 8 ; 2 uses
  %i.ba = and i64 %i.az, 1
  %i.bb = icmp eq i64 %i.ba, 0
  tail call void @llvm.assume(i1 %i.bb)
  %i.bc = lshr i64 %i.az, 32                      ; 2 uses
  %i.bd = icmp eq i64 %i.bc, 4294967295
  br i1 %i.bd, label %._crit_edge, label %.lr.ph, !llvm.loop !10
}

; Function Attrs: mustprogress norecurse nounwind memory(readwrite, target_mem: none) uwtable
define hidden range(i64 0, -2) i64 @_ZN2v88internal4wasm22WasmExportWrapperCache3GetEPNS0_7IsolateENS1_18CanonicalTypeIndexEb(ptr noundef %0, i32 %1, i1 noundef zeroext %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 55464
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = add i64 %i.b, -55464
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 9752
  %i.f = load i64, ptr %i.e, align 8
  %i.g = select i1 %2, i32 1048576, i32 0
  %i.h = or i32 %i.g, %1                          ; 2 uses
  %i.i = add i64 %i.f, -1
  %i.j = inttoptr i64 %i.i to ptr                 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load i64, ptr %i.k, align 8
  %i.m = lshr i64 %i.l, 32
  %i.n = trunc nuw i64 %i.m to i32
  %i.o = ashr i32 %i.n, 1                         ; 2 uses
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = add nsw i32 %i.o, -1                     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 3 uses
  %.sroa.08.0.in33 = and i32 %i.h, %i.q           ; 2 uses
  %i.s = shl nsw i32 %.sroa.08.0.in33, 1          ; 2 uses
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr [8 x i8], ptr %i.r, i64 %i.t
  %i.v = getelementptr i8, ptr %i.u, i64 8
  %i.w = load atomic volatile i64, ptr %i.v monotonic, align 8 ; 2 uses
  %i.x = and i64 %i.w, 1
  %i.y = icmp eq i64 %i.x, 0
  tail call void @llvm.assume(i1 %i.y)
  %i.z = lshr i64 %i.w, 32                        ; 2 uses
  %i.aa = icmp eq i64 %i.z, 4294967295
  br i1 %i.aa, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %zext = zext i32 %i.h to i64                    ; 2 uses
  %i.ab = icmp eq i64 %i.z, %zext
  br i1 %i.ab, label %.lr.ph._crit_edge, label %.lr.ph43

.lr.ph:                                           ; preds = %.lr.ph43
  %i.ac = add i32 %.0213442, 1
  %i.ad = icmp eq i64 %i.at, %zext
  br i1 %i.ad, label %.lr.ph._crit_edge, label %.lr.ph43, !llvm.loop !11

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.lcssa = phi i32 [ %i.s, %.lr.ph.preheader ], [ %i.am, %.lr.ph ]
  %i.ae = sext i32 %.lcssa to i64
  %i.af = getelementptr [8 x i8], ptr %i.r, i64 %i.ae
  %i.ag = getelementptr i8, ptr %i.af, i64 16
  %i.ah = load atomic volatile i64, ptr %i.ag monotonic, align 8 ; 2 uses
  %i.ai = and i64 %i.ah, 4294967295
  %i.aj = icmp eq i64 %i.ai, 3
  %i.ak = and i64 %i.ah, -3
  %spec.select = select i1 %i.aj, i64 0, i64 %i.ak
  br label %.critedge

.lr.ph43:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %.0213442 = phi i32 [ %i.ac, %.lr.ph ], [ 1, %.lr.ph.preheader ] ; 2 uses
  %.sroa.08.0.in3541 = phi i32 [ %.sroa.08.0.in, %.lr.ph ], [ %.sroa.08.0.in33, %.lr.ph.preheader ]
  %i.al = add i32 %.0213442, %.sroa.08.0.in3541
  %.sroa.08.0.in = and i32 %i.al, %i.q            ; 2 uses
  %i.am = shl nsw i32 %.sroa.08.0.in, 1           ; 2 uses
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr [8 x i8], ptr %i.r, i64 %i.an
  %i.ap = getelementptr i8, ptr %i.ao, i64 8
  %i.aq = load atomic volatile i64, ptr %i.ap monotonic, align 8 ; 2 uses
  %i.ar = and i64 %i.aq, 1
  %i.as = icmp eq i64 %i.ar, 0
  tail call void @llvm.assume(i1 %i.as)
  %i.at = lshr i64 %i.aq, 32                      ; 2 uses
end_hunk_0
