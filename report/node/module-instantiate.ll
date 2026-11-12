Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/module-instantiate?download=true
inline.NumInlined: 6065
inline.NumDeleted: 2754
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN2v88internal4wasm15InstanceBuilder21SetTableInitialValuesEv:bb.a
.thread:                                          ; preds = %.loopexit, %bb.a, %.critedge46
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal4wasm15InstanceBuilder14InitializeTagsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(512) %0) local_unnamed_addr #0 align 2 !guid !1065 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.sroa.0.0.copyload.i10 = load ptr, ptr %i.a, align 8
  %i.b = load i64, ptr %.sroa.0.0.copyload.i10, align 8
  %i.c = add i64 %i.b, 223
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  %i.f = load ptr, ptr %0, align 8                ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 560 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 568
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = icmp eq ptr %i.h, %i.j
  br i1 %i.k, label %bb.b, label %_ZN2v88internal6HandleINS0_10FixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !979

bb.b:                                             ; preds = %bb.a
  %i.l = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.f) #22
  br label %_ZN2v88internal6HandleINS0_10FixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_10FixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.a, %bb.b
  %.0.i.i = phi ptr [ %i.l, %bb.b ], [ %i.h, %bb.a ] ; 4 uses
  %i.m = ptrtoint ptr %.0.i.i to i64
  %i.n = add i64 %i.m, 8
  %i.o = inttoptr i64 %i.n to ptr
  store ptr %i.o, ptr %i.g, align 8
  store i64 %i.e, ptr %.0.i.i, align 8
  %i.p = add i64 %i.e, -1
  %i.q = inttoptr i64 %i.p to ptr                 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load i64, ptr %i.r, align 8
  %i.t = lshr i64 %i.s, 32
  %i.u = trunc nuw i64 %i.t to i32
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit, %_ZN2v88internal6HandleINS0_10FixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  ret void

.lr.ph:                                           ; preds = %_ZN2v88internal6HandleINS0_10FixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit ], [ 0, %_ZN2v88internal6HandleINS0_10FixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit ] ; 4 uses
  %i.w = phi ptr [ %i.az, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit ], [ %i.q, %_ZN2v88internal6HandleINS0_10FixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv
  %i.z = load atomic volatile i64, ptr %i.y monotonic, align 8
  %i.aa = load ptr, ptr %0, align 8               ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 648
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = icmp eq i64 %i.z, %i.ac
  br i1 %i.ad, label %bb.c, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

bb.c:                                             ; preds = %.lr.ph
  %i.ae = trunc nuw nsw i64 %indvars.iv to i32
  %i.af = tail call ptr @_ZN2v88internal16WasmExceptionTag3NewEPNS0_7IsolateEi(ptr noundef nonnull %i.aa, i32 noundef %i.ae) #22
  %i.ag = load i64, ptr %.0.i.i, align 8
  %i.ah = add i64 %i.ag, -1                       ; 3 uses
  %i.ai = inttoptr i64 %i.ah to ptr
  %i.aj = load i64, ptr %i.af, align 8            ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv ; 2 uses
  store atomic volatile i64 %i.aj, ptr %i.al monotonic, align 8
  %i.am = trunc i64 %i.aj to i1
  br i1 %i.am, label %bb.d, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

bb.d:                                             ; preds = %bb.c
  %i.an = or disjoint i64 %i.ah, 1                ; 2 uses
  %i.ao = ptrtoint ptr %i.al to i64               ; 2 uses
  %i.ap = and i64 %i.ah, -262144
  %i.aq = inttoptr i64 %i.ap to ptr
  %i.ar = load i64, ptr %i.aq, align 262144       ; 2 uses
  %i.as = and i64 %i.ar, 32
  %.not.i.i.i.i.i = icmp eq i64 %i.as, 0
  %i.at = and i64 %i.ar, 25
  %.not38.i.i.i.i.i = icmp eq i64 %i.at, 0
  br i1 %.not38.i.i.i.i.i, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.au = and i64 %i.aj, -262144
  %i.av = inttoptr i64 %i.au to ptr
  %.sroa.0.0.copyload.i28.i.i.i.i.i = load i64, ptr %i.av, align 262144
  %i.aw = and i64 %.sroa.0.0.copyload.i28.i.i.i.i.i, 25
  %.not39.i.i.i.i.i = icmp eq i64 %i.aw, 0
  br i1 %.not39.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.an, i64 noundef %i.ao, i64 %i.aj) #22
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  br i1 %.not.i.i.i.i.i, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit, label %bb.h, !prof !980

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.an, i64 %i.ao, i64 %i.aj) #22
  br label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit: ; preds = %bb.h, %bb.g, %bb.c, %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ax = load i64, ptr %.0.i.i, align 8
  %i.ay = add i64 %i.ax, -1
  %i.az = inttoptr i64 %i.ay to ptr               ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load i64, ptr %i.ba, align 8
  %i.bc = ashr i64 %i.bb, 32
  %i.bd = icmp slt i64 %indvars.iv.next, %i.bc
  br i1 %i.bd, label %.lr.ph, label %._crit_edge, !llvm.loop !1064
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal4wasm15InstanceBuilder14ProcessExportsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(512) %0) local_unnamed_addr #0 align 2 !guid !1069 {
bb.a:
  %1 = alloca %"class.std::shared_ptr.1240", align 8 ; 5 uses
  %2 = alloca %"class.std::unordered_map.1023", align 8 ; 13 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %3 = alloca %"class.v8::internal::PropertyDescriptor", align 8 ; 5 uses
  %4 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.838", align 8 ; 4 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  store ptr %i.c, ptr %2, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  store i64 1, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 10 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 320
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 328
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = load ptr, ptr %i.j, align 8              ; 2 uses
  %.not385 = icmp eq ptr %i.l, %i.m
  br i1 %.not385, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = sdiv exact i64 %i.p, 24
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 200
  br label %bb.d

._crit_edge:                                      ; preds = %_ZN2v88internal18IsWasmGlobalObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread, %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %.sroa.0.0.copyload.i142 = load ptr, ptr %i.s, align 8
  %i.t = load i64, ptr %.sroa.0.0.copyload.i142, align 8
  %i.u = add i64 %i.t, 151
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = load i64, ptr %i.v, align 8              ; 2 uses
  %i.x = load ptr, ptr %0, align 8                ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 560 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8              ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 568
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = icmp eq ptr %i.z, %i.ab
  br i1 %i.ac, label %bb.b, label %_ZN2v88internal6HandleINS0_18WasmInstanceObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !979

bb.b:                                             ; preds = %._crit_edge
  %i.ad = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.x) #22
  br label %_ZN2v88internal6HandleINS0_18WasmInstanceObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_18WasmInstanceObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %._crit_edge, %bb.b
  %.0.i.i161 = phi ptr [ %i.ad, %bb.b ], [ %i.z, %._crit_edge ] ; 4 uses
  %i.ae = ptrtoint ptr %.0.i.i161 to i64
  %i.af = add i64 %i.ae, 8
  %i.ag = inttoptr i64 %i.af to ptr
  store ptr %i.ag, ptr %i.y, align 8
  store i64 %i.w, ptr %.0.i.i161, align 8
  %i.ah = add i64 %i.w, 39
  %i.ai = inttoptr i64 %i.ah to ptr
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = load ptr, ptr %0, align 8               ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 560 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8            ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 568
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = icmp eq ptr %i.am, %i.ao
  br i1 %i.ap, label %bb.c, label %_ZN2v88internal6HandleINS0_8JSObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !979

bb.c:                                             ; preds = %_ZN2v88internal6HandleINS0_18WasmInstanceObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.aq = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.ak) #22
  br label %_ZN2v88internal6HandleINS0_8JSObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_8JSObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %_ZN2v88internal6HandleINS0_18WasmInstanceObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, %bb.c
  %.0.i.i = phi ptr [ %i.aq, %bb.c ], [ %i.am, %_ZN2v88internal6HandleINS0_18WasmInstanceObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit ] ; 3 uses
  %i.ar = ptrtoint ptr %.0.i.i to i64
  %i.as = add i64 %i.ar, 8
  %i.at = inttoptr i64 %i.as to ptr
  store ptr %i.at, ptr %i.al, align 8
  store i64 %i.aj, ptr %.0.i.i, align 8
  %i.au = load ptr, ptr %i.h, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 704
  %i.aw = load i8, ptr %i.av, align 8
  %.not375 = icmp eq i8 %i.aw, 0                  ; 2 uses
  br i1 %.not375, label %_ZN2v88internal33TorqueGeneratedWasmInstanceObjectINS0_18WasmInstanceObjectENS0_8JSObjectEE18set_exports_objectENS0_6TaggedIS3_EENS0_16WriteBarrierModeE.exit, label %bb.h

bb.d:                                             ; preds = %.lr.ph, %_ZN2v88internal18IsWasmGlobalObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread
  %.0381 = phi i64 [ 0, %.lr.ph ], [ %i.cc, %_ZN2v88internal18IsWasmGlobalObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread ] ; 3 uses
  %i.ax = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 320
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = getelementptr inbounds nuw [24 x i8], ptr %i.az, i64 %.0381 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load i8, ptr %i.bb, align 4
  %i.bd = icmp eq i8 %i.bc, 3
  br i1 %i.bd, label %bb.e, label %_ZN2v88internal18IsWasmGlobalObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.be = getelementptr inbounds nuw i8, ptr %i.ax, i64 224
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 20 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4
  %i.bh = zext i32 %i.bg to i64
  %i.bi = load ptr, ptr %i.be, align 8
  %i.bj = getelementptr inbounds nuw [24 x i8], ptr %i.bi, i64 %i.bh
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 22
  %i.bl = load i8, ptr %i.bk, align 2, !range !981, !noundef !982
  %i.bm = trunc nuw i8 %i.bl to i1
  br i1 %i.bm, label %bb.f, label %_ZN2v88internal18IsWasmGlobalObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.bn = load ptr, ptr %i.r, align 8
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %.0381
  %i.bp = load i64, ptr %i.bo, align 8
  %i.bq = inttoptr i64 %i.bp to ptr               ; 2 uses
  %i.br = load i64, ptr %i.bq, align 8            ; 2 uses
  %i.bs = trunc i64 %i.br to i1
  br i1 %i.bs, label %_ZN2v88internal18IsWasmGlobalObjectENS0_6TaggedINS0_6ObjectEEE.exit, label %_ZN2v88internal18IsWasmGlobalObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal18IsWasmGlobalObjectENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.f
  %i.bt = add nsw i64 %i.br, -1
  %i.bu = inttoptr i64 %i.bt to ptr
  %i.bv = load atomic volatile i64, ptr %i.bu monotonic, align 8
  %i.bw = add i64 %i.bv, 11
  %i.bx = inttoptr i64 %i.bw to ptr
  %i.by = load atomic volatile i16, ptr %i.bx monotonic, align 2
  %i.bz = icmp eq i16 %i.by, 2150
  br i1 %i.bz, label %bb.g, label %_ZN2v88internal18IsWasmGlobalObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread

bb.g:                                             ; preds = %_ZN2v88internal18IsWasmGlobalObjectENS0_6TaggedINS0_6ObjectEEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.ca = load i32, ptr %i.bf, align 4
  store i32 %i.ca, ptr %i.a, align 4
  %i.cb = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8__detail9_Map_baseIiSt4pairIKiN2v88internal6HandleINS4_6ObjectEEEESaIS8_ENS_10_Select1stESt8equal_toIiESt4hashIiENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixEOi(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  store ptr %i.bq, ptr %i.cb, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %_ZN2v88internal18IsWasmGlobalObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal18IsWasmGlobalObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread: ; preds = %bb.f, %_ZN2v88internal18IsWasmGlobalObjectENS0_6TaggedINS0_6ObjectEEE.exit, %bb.g, %bb.e, %bb.d
  %i.cc = add nuw i64 %.0381, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.cc, %i.q
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !1066

bb.h:                                             ; preds = %_ZN2v88internal6HandleINS0_8JSObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.cd = load ptr, ptr %0, align 8               ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 344
  %.sroa.0.0.copyload.i.i166 = load i64, ptr %i.ce, align 8
  %i.cf = add i64 %.sroa.0.0.copyload.i.i166, -1
  %i.cg = inttoptr i64 %i.cf to ptr
  %i.ch = load atomic volatile i64, ptr %i.cg monotonic, align 8
  %i.ci = add i64 %i.ch, 31
  %i.cj = inttoptr i64 %i.ci to ptr
  %i.ck = load i64, ptr %i.cj, align 8            ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cd, i64 560 ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 8            ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cd, i64 568
  %i.co = load ptr, ptr %i.cn, align 8
  %i.cp = icmp eq ptr %i.cm, %i.co
  br i1 %i.cp, label %bb.i, label %_ZN2v88internal7Isolate14native_contextEv.exit, !prof !979

bb.i:                                             ; preds = %bb.h
  %i.cq = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(64320) %i.cd) #22
  br label %_ZN2v88internal7Isolate14native_contextEv.exit

_ZN2v88internal7Isolate14native_contextEv.exit:   ; preds = %bb.h, %bb.i
  %.0.i.i.i = phi ptr [ %i.cq, %bb.i ], [ %i.cm, %bb.h ] ; 2 uses
  %i.cr = ptrtoint ptr %.0.i.i.i to i64
  %i.cs = add i64 %i.cr, 8
  %i.ct = inttoptr i64 %i.cs to ptr
  store ptr %i.ct, ptr %i.cl, align 8
  store i64 %i.ck, ptr %.0.i.i.i, align 8
  %i.cu = add i64 %i.ck, 1375
  %i.cv = inttoptr i64 %i.cu to ptr
  %i.cw = load atomic volatile i64, ptr %i.cv monotonic, align 8
  %i.cx = load ptr, ptr %0, align 8               ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 560 ; 2 uses
  %i.cz = load ptr, ptr %i.cy, align 8            ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 568
  %i.db = load ptr, ptr %i.da, align 8
  %i.dc = icmp eq ptr %i.cz, %i.db
  br i1 %i.dc, label %bb.j, label %_ZN2v88internal6HandleINS0_10JSFunctionEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !979

bb.j:                                             ; preds = %_ZN2v88internal7Isolate14native_contextEv.exit
  %i.dd = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.cx) #22
  br label %_ZN2v88internal6HandleINS0_10JSFunctionEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_10JSFunctionEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %_ZN2v88internal7Isolate14native_contextEv.exit, %bb.j
  %.0.i.i162 = phi ptr [ %i.dd, %bb.j ], [ %i.cz, %_ZN2v88internal7Isolate14native_contextEv.exit ] ; 3 uses
  %i.de = ptrtoint ptr %.0.i.i162 to i64
  %i.df = add i64 %i.de, 8
  %i.dg = inttoptr i64 %i.df to ptr
  store ptr %i.dg, ptr %i.cy, align 8
  store i64 %i.cw, ptr %.0.i.i162, align 8
  %i.dh = load ptr, ptr %0, align 8
  %i.di = call ptr @_ZN2v88internal7Factory11NewJSObjectENS0_12DirectHandleINS0_10JSFunctionEEENS0_14AllocationTypeENS0_15NewJSObjectTypeE(ptr noundef nonnull align 1 dereferenceable(1) %i.dh, ptr nonnull %.0.i.i162, i8 noundef zeroext 0, i8 noundef zeroext 0) #22 ; 4 uses
  %i.dj = load i64, ptr %.0.i.i161, align 8       ; 4 uses
  %i.dk = load i64, ptr %i.di, align 8            ; 5 uses
  %i.dl = add i64 %i.dj, 39                       ; 3 uses
  %i.dm = inttoptr i64 %i.dl to ptr
  store atomic volatile i64 %i.dk, ptr %i.dm monotonic, align 8
  %i.dn = trunc i64 %i.dk to i1
  br i1 %i.dn, label %bb.k, label %_ZN2v88internal33TorqueGeneratedWasmInstanceObjectINS0_18WasmInstanceObjectENS0_8JSObjectEE18set_exports_objectENS0_6TaggedIS3_EENS0_16WriteBarrierModeE.exit

bb.k:                                             ; preds = %_ZN2v88internal6HandleINS0_10JSFunctionEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.do = and i64 %i.dj, -262144
  %i.dp = inttoptr i64 %i.do to ptr
  %i.dq = load i64, ptr %i.dp, align 262144       ; 2 uses
  %i.dr = and i64 %i.dq, 32
  %.not.i.i.i = icmp eq i64 %i.dr, 0
  %i.ds = and i64 %i.dq, 25
  %.not38.i.i.i = icmp eq i64 %i.ds, 0
  br i1 %.not38.i.i.i, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.dt = and i64 %i.dk, -262144
  %i.du = inttoptr i64 %i.dt to ptr
  %.sroa.0.0.copyload.i28.i.i.i = load i64, ptr %i.du, align 262144
  %i.dv = and i64 %.sroa.0.0.copyload.i28.i.i.i, 25
  %.not39.i.i.i = icmp eq i64 %i.dv, 0
  br i1 %.not39.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.dj, i64 noundef %i.dl, i64 %i.dk) #22
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  br i1 %.not.i.i.i, label %_ZN2v88internal33TorqueGeneratedWasmInstanceObjectINS0_18WasmInstanceObjectENS0_8JSObjectEE18set_exports_objectENS0_6TaggedIS3_EENS0_16WriteBarrierModeE.exit, label %bb.o, !prof !980

bb.o:                                             ; preds = %bb.n
  call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.dj, i64 %i.dl, i64 %i.dk) #22
  br label %_ZN2v88internal33TorqueGeneratedWasmInstanceObjectINS0_18WasmInstanceObjectENS0_8JSObjectEE18set_exports_objectENS0_6TaggedIS3_EENS0_16WriteBarrierModeE.exit

_ZN2v88internal33TorqueGeneratedWasmInstanceObjectINS0_18WasmInstanceObjectENS0_8JSObjectEE18set_exports_objectENS0_6TaggedIS3_EENS0_16WriteBarrierModeE.exit: ; preds = %bb.o, %bb.n, %_ZN2v88internal6HandleINS0_10JSFunctionEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, %_ZN2v88internal6HandleINS0_8JSObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.dw = phi i8 [ 40, %_ZN2v88internal6HandleINS0_8JSObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit ], [ 60, %_ZN2v88internal6HandleINS0_10JSFunctionEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit ], [ 60, %bb.n ], [ 60, %bb.o ] ; 3 uses
  %.sroa.0280.0 = phi ptr [ %.0.i.i, %_ZN2v88internal6HandleINS0_8JSObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit ], [ %i.di, %_ZN2v88internal6HandleINS0_10JSFunctionEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit ], [ %i.di, %bb.n ], [ %i.di, %bb.o ] ; 3 uses
  %i.dx = load ptr, ptr %0, align 8
  %i.dy = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 344
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 352
  %i.eb = load ptr, ptr %i.ea, align 8
  %i.ec = load ptr, ptr %i.dz, align 8
  %i.ed = ptrtoint ptr %i.eb to i64
  %i.ee = ptrtoint ptr %i.ec to i64
  %i.ef = sub i64 %i.ed, %i.ee
  %i.eg = lshr exact i64 %i.ef, 4
  %i.eh = trunc i64 %i.eg to i32
  call void @_ZN2v88internal8JSObject19NormalizePropertiesEPNS0_7IsolateENS0_12DirectHandleIS1_EENS0_25PropertyNormalizationModeEibPKc(ptr noundef %i.dx, ptr nonnull %.sroa.0280.0, i32 noundef 1, i32 noundef %i.eh, i1 noundef zeroext true, ptr noundef nonnull @.str.73) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.ei = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ei, i8 0, i64 32, i1 false)
  %5 = or disjoint i8 %i.dw, 3
  store i8 %5, ptr %3, align 8
  %6 = and i8 %i.dw, 4
  %7 = and i8 %i.dw, 48
  %narrow5.i = icmp eq i8 %7, 32
  %8 = zext i1 %narrow5.i to i8
  %9 = or disjoint i8 %6, %8
  %10 = shl nuw nsw i8 %9, 2
  %11 = xor i8 %10, 16
  %12 = zext nneg i8 %11 to i32                   ; 2 uses
  %i.ej = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 344
  %i.el = load ptr, ptr %i.ek, align 8            ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.ej, i64 352
  %i.en = load ptr, ptr %i.em, align 8            ; 2 uses
  %i.eo = icmp eq ptr %i.el, %i.en
  br i1 %i.eo, label %._crit_edge384, label %.lr.ph383

.lr.ph383:                                        ; preds = %_ZN2v88internal33TorqueGeneratedWasmInstanceObjectINS0_18WasmInstanceObjectENS0_8JSObjectEE18set_exports_objectENS0_6TaggedIS3_EENS0_16WriteBarrierModeE.exit
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.282.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.es = load ptr, ptr @_ZN2v88internal5AsmJs19kSingleFunctionNameE, align 8 ; 2 uses
  %i.et = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN2v88internal18g_current_isolate_E)
  %i.eu = lshr exact i32 %12, 2
  br label %bb.q

._crit_edge384:                                   ; preds = %.critedge130, %_ZN2v88internal33TorqueGeneratedWasmInstanceObjectINS0_18WasmInstanceObjectENS0_8JSObjectEE18set_exports_objectENS0_6TaggedIS3_EENS0_16WriteBarrierModeE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.ev = load ptr, ptr %i.e, align 8             ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.ev, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableIiSt4pairIKiN2v88internal6HandleINS3_6ObjectEEEESaIS7_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %._crit_edge384, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.ew, %.lr.ph.i.i.i.i ], [ %i.ev, %._crit_edge384 ] ; 2 uses
  %i.ew = load ptr, ptr %.06.i.i.i.i, align 8     ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 24) #25
  %.not.i.i.i.i = icmp eq ptr %i.ew, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_HashtableIiSt4pairIKiN2v88internal6HandleINS3_6ObjectEEEESaIS7_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1067

_ZNSt10_HashtableIiSt4pairIKiN2v88internal6HandleINS3_6ObjectEEEESaIS7_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %._crit_edge384
  %i.ex = load ptr, ptr %2, align 8
  %i.ey = load i64, ptr %i.d, align 8
  %i.ez = shl i64 %i.ey, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.ex, i8 0, i64 %i.ez, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  %i.fa = load ptr, ptr %2, align 8               ; 2 uses
  %i.fb = icmp eq ptr %i.fa, %i.c
  br i1 %i.fb, label %_ZNSt13unordered_mapIiN2v88internal6HandleINS1_6ObjectEEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZNSt10_HashtableIiSt4pairIKiN2v88internal6HandleINS3_6ObjectEEEESaIS7_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i
  %i.fc = load i64, ptr %i.d, align 8
  %i.fd = shl i64 %i.fc, 3
  call void @_ZdlPvm(ptr noundef %i.fa, i64 noundef %i.fd) #25
  br label %_ZNSt13unordered_mapIiN2v88internal6HandleINS1_6ObjectEEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEED2Ev.exit

_ZNSt13unordered_mapIiN2v88internal6HandleINS1_6ObjectEEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEED2Ev.exit: ; preds = %_ZNSt10_HashtableIiSt4pairIKiN2v88internal6HandleINS3_6ObjectEEEESaIS7_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret void

bb.q:                                             ; preds = %.lr.ph383, %.critedge130
  %.sroa.0263.0382 = phi ptr [ %i.el, %.lr.ph383 ], [ %i.tk, %.critedge130 ] ; 8 uses
  %i.fe = load ptr, ptr %0, align 8
  %.sroa.081.0.copyload = load ptr, ptr %i.ep, align 8
  %.sroa.282.0.copyload = load i64, ptr %.sroa.282.0..sroa_idx, align 8
  %.sroa.080.0.copyload = load i64, ptr %.sroa.0263.0382, align 4
  %i.ff = call ptr @_ZN2v88internal16WasmModuleObject32ExtractUtf8StringFromModuleBytesEPNS0_7IsolateENS_4base6VectorIKhEENS0_4wasm12WireBytesRefENS0_17InternalizeStringE(ptr noundef %i.fe, ptr %.sroa.081.0.copyload, i64 %.sroa.282.0.copyload, i64 %.sroa.080.0.copyload, i1 noundef zeroext true) #22 ; 3 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.sroa.0263.0382, i64 8
  %i.fh = load i8, ptr %i.fg, align 4
  switch i8 %i.fh, label %bb.bd [
    i8 0, label %bb.r
    i8 1, label %bb.w
    i8 2, label %bb.y
    i8 3, label %bb.aa
    i8 4, label %bb.ba
  ]

bb.r:                                             ; preds = %bb.q
  %i.fi = load ptr, ptr %i.h, align 8             ; 3 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.sroa.0263.0382, i64 12
  %i.fk = load i32, ptr %i.fj, align 4            ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fi, i64 200
  %i.fm = sext i32 %i.fk to i64
  %i.fn = load ptr, ptr %i.fl, align 8
  %i.fo = getelementptr inbounds nuw [32 x i8], ptr %i.fn, i64 %i.fm
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 12
  %.sroa.0.0.copyload.i167 = load i32, ptr %i.fp, align 4
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fi, i64 152
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fi, i64 160
  %i.fs = load ptr, ptr %i.fr, align 8
  %i.ft = load ptr, ptr %i.fq, align 8            ; 2 uses
  %i.fu = ptrtoint ptr %i.fs to i64
  %i.fv = ptrtoint ptr %i.ft to i64
  %i.fw = sub i64 %i.fu, %i.fv
  %i.fx = sdiv exact i64 %i.fw, 24
  %i.fy = zext i32 %.sroa.0.0.copyload.i167 to i64 ; 2 uses
  %i.fz = icmp ugt i64 %i.fx, %i.fy
  call void @llvm.assume(i1 %i.fz)
  %i.ga = getelementptr inbounds nuw [24 x i8], ptr %i.ft, i64 %i.fy
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 22
  %i.gc = load i8, ptr %i.gb, align 2, !range !981, !noundef !982
  %i.gd = trunc nuw i8 %i.gc to i1
  %i.ge = load ptr, ptr %0, align 8
  %.v.i = select i1 %i.gd, i64 88, i64 80
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 %.v.i
  %.sroa.0.0.copyload.i168 = load ptr, ptr %i.gf, align 8
  %i.gg = call ptr @_ZN2v88internal23WasmTrustedInstanceData18GetOrCreateFuncRefEPNS0_7IsolateENS0_12DirectHandleIS1_EEiNS0_4wasm17PrecreateExternalE(ptr noundef %i.ge, ptr %.sroa.0.0.copyload.i168, i32 noundef %i.fk, i1 noundef zeroext true) #22
  %i.gh = load i64, ptr %i.gg, align 8
  %i.gi = add i64 %i.gh, 7
  %i.gj = inttoptr i64 %i.gi to ptr
  %i.gk = load atomic volatile i64, ptr %i.gj acquire, align 8
  %i.gl = load ptr, ptr %0, align 8               ; 3 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 560 ; 2 uses
  %i.gn = load ptr, ptr %i.gm, align 8            ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gl, i64 568
  %i.gp = load ptr, ptr %i.go, align 8
  %i.gq = icmp eq ptr %i.gn, %i.gp
  br i1 %i.gq, label %bb.s, label %_ZN2v88internal6HandleINS0_20WasmInternalFunctionEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !979

bb.s:                                             ; preds = %bb.r
  %i.gr = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.gl) #22
  br label %_ZN2v88internal6HandleINS0_20WasmInternalFunctionEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_20WasmInternalFunctionEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.r, %bb.s
  %.0.i.i151 = phi ptr [ %i.gr, %bb.s ], [ %i.gn, %bb.r ] ; 3 uses
  %i.gs = ptrtoint ptr %.0.i.i151 to i64
  %i.gt = add i64 %i.gs, 8
  %i.gu = inttoptr i64 %i.gt to ptr
  store ptr %i.gu, ptr %i.gm, align 8
  store i64 %i.gk, ptr %.0.i.i151, align 8
  %i.gv = call ptr @_ZN2v88internal20WasmInternalFunction19GetOrCreateExternalENS0_12DirectHandleIS1_EE(ptr nonnull %.0.i.i151) #22 ; 3 uses
  br i1 %.not375, label %.critedge, label %bb.t

bb.t:                                             ; preds = %_ZN2v88internal6HandleINS0_20WasmInternalFunctionEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.gw = load i64, ptr %i.ff, align 8
  %i.gx = add i64 %i.gw, -1
  %i.gy = inttoptr i64 %i.gx to ptr
  %i.gz = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.es) #26
  %i.ha = call noundef zeroext i1 @_ZNK2v88internal6String9IsEqualToILNS1_12EqualityTypeE0EcEEbNS_4base6VectorIKT0_EE(ptr noundef nonnull align 4 dereferenceable(16) %i.gy, ptr nonnull %i.es, i64 %i.gz)
  br i1 %i.ha, label %bb.u, label %.critedge

bb.u:                                             ; preds = %bb.t
  store ptr %i.gv, ptr %i.ei, align 8
  %i.hb = load ptr, ptr %0, align 8               ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 8104
  %i.hd = call i16 @_ZN2v88internal10JSReceiver17DefineOwnPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_6ObjectEEEPNS0_18PropertyDescriptorENS_5MaybeINS0_11ShouldThrowEEE(ptr noundef %i.hb, ptr nonnull %.0.i.i161, ptr nonnull %i.hc, ptr noundef nonnull %3, i64 4294967297) #22
  %i.he = and i16 %i.hd, 257
  %i.hf = icmp eq i16 %i.he, 257
  br i1 %i.hf, label %.critedge130, label %bb.v, !prof !980

bb.v:                                             ; preds = %bb.u
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.74) #23
  unreachable

bb.w:                                             ; preds = %bb.q
  %i.hg = load ptr, ptr %i.h, align 8
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 272
  %i.hi = getelementptr inbounds nuw i8, ptr %.sroa.0263.0382, i64 12
  %i.hj = load i32, ptr %i.hi, align 4            ; 2 uses
  %i.hk = zext i32 %i.hj to i64
  %i.hl = load ptr, ptr %i.hh, align 8
  %i.hm = getelementptr inbounds nuw [32 x i8], ptr %i.hl, i64 %i.hk
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 18
  %i.ho = load i8, ptr %i.hn, align 2, !range !981, !noundef !982
  %i.hp = trunc nuw i8 %i.ho to i1
  %.v.i169 = select i1 %i.hp, i64 88, i64 80
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 %.v.i169
  %.sroa.0.0.copyload.i170 = load ptr, ptr %i.hq, align 8
  %i.hr = load i64, ptr %.sroa.0.0.copyload.i170, align 8
  %i.hs = add i64 %i.hr, 207
  %i.ht = inttoptr i64 %i.hs to ptr
  %i.hu = load i64, ptr %i.ht, align 8
  %i.hv = add i64 %i.hu, -1
  %i.hw = inttoptr i64 %i.hv to ptr
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 16
  %i.hy = sext i32 %i.hj to i64
  %i.hz = getelementptr inbounds [8 x i8], ptr %i.hx, i64 %i.hy
  %i.ia = load atomic volatile i64, ptr %i.hz monotonic, align 8
  %i.ib = load ptr, ptr %0, align 8               ; 3 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 560 ; 2 uses
  %i.id = load ptr, ptr %i.ic, align 8            ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ib, i64 568
  %i.if = load ptr, ptr %i.ie, align 8
  %i.ig = icmp eq ptr %i.id, %i.if
  br i1 %i.ig, label %bb.x, label %_ZN2v88internal6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEC2ENS0_6TaggedISC_EEPNS0_7IsolateE.exit, !prof !979

bb.x:                                             ; preds = %bb.w
  %i.ih = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.ib) #22
  br label %_ZN2v88internal6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEC2ENS0_6TaggedISC_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEC2ENS0_6TaggedISC_EEPNS0_7IsolateE.exit: ; preds = %bb.w, %bb.x
  %.0.i.i163 = phi ptr [ %i.ih, %bb.x ], [ %i.id, %bb.w ] ; 3 uses
  %i.ii = ptrtoint ptr %.0.i.i163 to i64
  %i.ij = add i64 %i.ii, 8
  %i.ik = inttoptr i64 %i.ij to ptr
  store ptr %i.ik, ptr %i.ic, align 8
  store i64 %i.ia, ptr %.0.i.i163, align 8
  br label %.critedge

bb.y:                                             ; preds = %bb.q
  %.sroa.0.0.copyload.i140 = load ptr, ptr %i.s, align 8
  %i.il = load i64, ptr %.sroa.0.0.copyload.i140, align 8
  %i.im = getelementptr inbounds nuw i8, ptr %.sroa.0263.0382, i64 12
  %i.in = load i32, ptr %i.im, align 4
  %i.io = add i64 %i.il, 175
  %i.ip = inttoptr i64 %i.io to ptr
  %i.iq = load i64, ptr %i.ip, align 8
  %i.ir = add i64 %i.iq, -1
  %i.is = inttoptr i64 %i.ir to ptr
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 16
  %i.iu = sext i32 %i.in to i64
  %i.iv = getelementptr inbounds [8 x i8], ptr %i.it, i64 %i.iu
  %i.iw = load atomic volatile i64, ptr %i.iv monotonic, align 8
  %i.ix = load ptr, ptr %0, align 8               ; 3 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 560 ; 2 uses
  %i.iz = load ptr, ptr %i.iy, align 8            ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ix, i64 568
  %i.jb = load ptr, ptr %i.ja, align 8
  %i.jc = icmp eq ptr %i.iz, %i.jb
  br i1 %i.jc, label %bb.z, label %_ZN2v88internal6HandleINS0_16WasmMemoryObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !979

bb.z:                                             ; preds = %bb.y
  %i.jd = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.ix) #22
  br label %_ZN2v88internal6HandleINS0_16WasmMemoryObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

end_hunk_0
begin_hunk_1_@_ZN2v88internal4wasm15InstanceBuilder14ProcessExportsEv:bb.a
  %.0.i.i158 = phi ptr [ %i.ox, %bb.aw ], [ %i.oj, %bb.av ] ; 3 uses
  %i.oy = ptrtoint ptr %.0.i.i158 to i64
  %i.oz = add i64 %i.oy, 8
  %i.pa = inttoptr i64 %i.oz to ptr
  store ptr %i.pa, ptr %i.oi, align 8
  store i64 %i.ow, ptr %.0.i.i158, align 8
  br label %bb.ax

bb.ax:                                            ; preds = %_ZN2v88internal6HandleINS0_13JSArrayBufferEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, %_ZN2v88internal6HandleINS0_10FixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit154
  %.sroa.0231.1 = phi ptr [ null, %_ZN2v88internal6HandleINS0_10FixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit154 ], [ %.0.i.i158, %_ZN2v88internal6HandleINS0_13JSArrayBufferEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit ]
  %.sroa.0230.1 = phi ptr [ %.0.i.i153, %_ZN2v88internal6HandleINS0_10FixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit154 ], [ null, %_ZN2v88internal6HandleINS0_13JSArrayBufferEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit ]
  %i.pb = getelementptr inbounds nuw i8, ptr %i.jn, i64 16
  %i.pc = load i32, ptr %i.pb, align 8
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.as
  %i.pd = phi ptr [ %i.ky, %bb.as ], [ %i.od, %bb.ax ]
  %.sroa.0231.2 = phi ptr [ %.sroa.0231.0, %bb.as ], [ %.sroa.0231.1, %bb.ax ]
  %.sroa.0230.2 = phi ptr [ %.sroa.0230.0, %bb.as ], [ %.sroa.0230.1, %bb.ax ]
  %.1126 = phi i32 [ %.0125, %bb.as ], [ %i.pc, %bb.ax ]
  %i.pe = load ptr, ptr %0, align 8
  %.sroa.021.0.copyload = load i32, ptr %i.jn, align 8
  %i.pf = load i8, ptr %i.pd, align 4, !range !981, !noundef !982
  %i.pg = trunc nuw i8 %i.pf to i1
  %i.ph = call ptr @_ZN2v88internal16WasmGlobalObject3NewEPNS0_7IsolateENS0_12DirectHandleINS0_23WasmTrustedInstanceDataEEENS0_17MaybeDirectHandleINS0_13JSArrayBufferEEENS7_INS0_10FixedArrayEEENS0_4wasm9ValueTypeEib(ptr noundef %i.pe, ptr nonnull %.sroa.0.0.copyload.i174, ptr %.sroa.0231.2, ptr %.sroa.0230.2, i32 %.sroa.021.0.copyload, i32 noundef %.1126, i1 noundef zeroext %i.pg) #22 ; 2 uses
  %i.pi = icmp eq ptr %i.ph, null
  br i1 %i.pi, label %bb.az, label %.critedge, !prof !979

bb.az:                                            ; preds = %bb.ay
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.227) #23
  unreachable

bb.ba:                                            ; preds = %bb.q
  %i.pj = load ptr, ptr %i.h, align 8
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 368
  %i.pl = getelementptr inbounds nuw i8, ptr %.sroa.0263.0382, i64 12 ; 2 uses
  %i.pm = load i32, ptr %i.pl, align 4            ; 2 uses
  %i.pn = zext i32 %i.pm to i64                   ; 2 uses
  %i.po = load ptr, ptr %i.pk, align 8
  %i.pp = getelementptr inbounds nuw [16 x i8], ptr %i.po, i64 %i.pn ; 2 uses
  %i.pq = load ptr, ptr %i.eq, align 8
  %i.pr = getelementptr inbounds nuw [8 x i8], ptr %i.pq, i64 %i.pn
  %i.ps = load i64, ptr %i.pr, align 8            ; 2 uses
  %i.pt = inttoptr i64 %i.ps to ptr
  %i.pu = icmp eq i64 %i.ps, 0
  br i1 %i.pu, label %bb.bb, label %.critedge

bb.bb:                                            ; preds = %bb.ba
  %.sroa.0.0.copyload.i134 = load ptr, ptr %i.s, align 8
  %i.pv = load i64, ptr %.sroa.0.0.copyload.i134, align 8
  %i.pw = add i64 %i.pv, 223
  %i.px = inttoptr i64 %i.pw to ptr
  %i.py = load i64, ptr %i.px, align 8
  %i.pz = add i64 %i.py, -1
  %i.qa = inttoptr i64 %i.pz to ptr
  %i.qb = getelementptr inbounds nuw i8, ptr %i.qa, i64 16
  %i.qc = sext i32 %i.pm to i64
  %i.qd = getelementptr inbounds [8 x i8], ptr %i.qb, i64 %i.qc
  %i.qe = load atomic volatile i64, ptr %i.qd monotonic, align 8
  %i.qf = load ptr, ptr %0, align 8               ; 3 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qf, i64 560 ; 2 uses
  %i.qh = load ptr, ptr %i.qg, align 8            ; 2 uses
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qf, i64 568
  %i.qj = load ptr, ptr %i.qi, align 8
  %i.qk = icmp eq ptr %i.qh, %i.qj
  br i1 %i.qk, label %bb.bc, label %_ZN2v88internal6HandleINS0_10HeapObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !979

bb.bc:                                            ; preds = %bb.bb
  %i.ql = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.qf) #22
  br label %_ZN2v88internal6HandleINS0_10HeapObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_10HeapObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.bb, %bb.bc
  %.0.i.i150 = phi ptr [ %i.ql, %bb.bc ], [ %i.qh, %bb.bb ] ; 3 uses
  %i.qm = ptrtoint ptr %.0.i.i150 to i64
  %i.qn = add i64 %i.qm, 8
  %i.qo = inttoptr i64 %i.qn to ptr
  store ptr %i.qo, ptr %i.qg, align 8
  store i64 %i.qe, ptr %.0.i.i150, align 8
  %i.qp = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %i.pp, i64 8
  %.sroa.014.0.copyload = load i32, ptr %i.qq, align 8
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qp, i64 176
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qp, i64 184
  %i.qt = load ptr, ptr %i.qs, align 8
  %i.qu = load ptr, ptr %i.qr, align 8            ; 2 uses
  %i.qv = ptrtoint ptr %i.qt to i64
  %i.qw = ptrtoint ptr %i.qu to i64
  %i.qx = sub i64 %i.qv, %i.qw
  %i.qy = ashr exact i64 %i.qx, 2
  %i.qz = zext i32 %.sroa.014.0.copyload to i64   ; 2 uses
  %i.ra = icmp ugt i64 %i.qy, %i.qz
  call void @llvm.assume(i1 %i.ra)
  %i.rb = getelementptr inbounds nuw [4 x i8], ptr %i.qu, i64 %i.qz
  %.sroa.02.0.copyload.i.i = load i32, ptr %i.rb, align 4
  %i.rc = load ptr, ptr %0, align 8
  %i.rd = load ptr, ptr %i.pp, align 8
  %.sroa.010.0.copyload = load ptr, ptr %i.s, align 8
  %i.re = call ptr @_ZN2v88internal13WasmTagObject3NewEPNS0_7IsolateEPKNS0_9SignatureINS0_4wasm9ValueTypeEEENS5_18CanonicalTypeIndexENS0_12DirectHandleINS0_10HeapObjectEEENSB_INS0_23WasmTrustedInstanceDataEEE(ptr noundef %i.rc, ptr noundef %i.rd, i32 %.sroa.02.0.copyload.i.i, ptr nonnull %.0.i.i150, ptr %.sroa.010.0.copyload) #22 ; 2 uses
  %i.rf = load i32, ptr %i.pl, align 4
  %i.rg = zext i32 %i.rf to i64
  %i.rh = load ptr, ptr %i.eq, align 8
  %i.ri = getelementptr inbounds nuw [8 x i8], ptr %i.rh, i64 %i.rg
  %i.rj = ptrtoint ptr %i.re to i64
  store i64 %i.rj, ptr %i.ri, align 8
  br label %.critedge

bb.bd:                                            ; preds = %bb.q
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.19) #23
  unreachable

.critedge:                                        ; preds = %bb.ba, %_ZN2v88internal6HandleINS0_10HeapObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, %bb.ay, %_ZNSt13unordered_mapIiN2v88internal6HandleINS1_6ObjectEEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEE4findERSA_.exit, %bb.t, %_ZN2v88internal6HandleINS0_20WasmInternalFunctionEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, %_ZN2v88internal6HandleINS0_16WasmMemoryObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, %_ZN2v88internal6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEC2ENS0_6TaggedISC_EEPNS0_7IsolateE.exit
  %.sroa.0260.1 = phi ptr [ %i.ph, %bb.ay ], [ %.0.i.i163, %_ZN2v88internal6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEC2ENS0_6TaggedISC_EEPNS0_7IsolateE.exit ], [ %.0.i.i157, %_ZN2v88internal6HandleINS0_16WasmMemoryObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit ], [ %i.gv, %bb.t ], [ %i.gv, %_ZN2v88internal6HandleINS0_20WasmInternalFunctionEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit ], [ %.sroa.047.0.copyload, %_ZNSt13unordered_mapIiN2v88internal6HandleINS1_6ObjectEEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEE4findERSA_.exit ], [ %i.re, %_ZN2v88internal6HandleINS0_10HeapObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit ], [ %i.pt, %bb.ba ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.rk = load i64, ptr %i.ff, align 8
  %i.rl = add i64 %i.rk, -1
  %i.rm = inttoptr i64 %i.rl to ptr               ; 2 uses
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rm, i64 8
  %i.ro = load atomic i32, ptr %i.rn monotonic, align 4 ; 4 uses
  %i.rp = and i32 %i.ro, -536870909
  %i.rq = icmp eq i32 %i.rp, 0
  br i1 %i.rq, label %bb.be, label %bb.bi

bb.be:                                            ; preds = %.critedge
  %i.rr = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rr, i64 10624
  %i.rt = load ptr, ptr %i.rs, align 8            ; 3 uses
  %.not.i.i.i186 = icmp eq ptr %i.rt, null
  br i1 %.not.i.i.i186, label %bb.bh, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ru = load i8, ptr %i.rt, align 8, !range !981, !noundef !982
  %i.rv = trunc nuw i8 %i.ru to i1
  br i1 %i.rv, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rt, i64 96
  br label %_ZN2v88internal6String12AsArrayIndexEPj.exit.thread

bb.bh:                                            ; preds = %bb.bf, %bb.be
  %i.rx = load ptr, ptr %i.et, align 8
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rx, i64 55464
  %i.rz = ptrtoint ptr %i.ry to i64
  %i.sa = add i64 %i.rz, -55464
  %i.sb = inttoptr i64 %i.sa to ptr
  %i.sc = getelementptr inbounds nuw i8, ptr %i.sb, i64 648
  br label %_ZN2v88internal6String12AsArrayIndexEPj.exit.thread

_ZN2v88internal6String12AsArrayIndexEPj.exit.thread: ; preds = %bb.bg, %bb.bh
  %.sroa.0.0.i.i.i = phi ptr [ %i.sc, %bb.bh ], [ %i.rw, %bb.bg ]
  %i.sd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 1432
  %i.se = load i64, ptr %i.sd, align 8
  %i.sf = add i64 %i.se, -1
  %i.sg = inttoptr i64 %i.sf to ptr               ; 3 uses
  %i.sh = lshr exact i32 %i.ro, 2
  %i.si = and i32 %i.sh, 16777215                 ; 2 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %i.sg, i64 52
  %i.sk = load i32, ptr %i.sj, align 4
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sg, i64 60
  %i.sm = load i32, ptr %i.sl, align 4
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sg, i64 68
  %i.so = load i32, ptr %i.sn, align 4
  %i.sp = lshr i32 %i.si, 12
  %i.sq = xor i32 %i.sp, %i.si
  %i.sr = mul i32 %i.so, %i.sq                    ; 2 uses
  %i.ss = lshr i32 %i.sr, 12
  %i.st = and i32 %i.ss, 4095
  %i.su = xor i32 %i.st, %i.sr
  %i.sv = mul i32 %i.su, %i.sm                    ; 2 uses
  %i.sw = lshr i32 %i.sv, 12
  %i.sx = and i32 %i.sw, 4095
  %i.sy = xor i32 %i.sx, %i.sv
  %i.sz = mul i32 %i.sy, %i.sk
  %i.ta = and i32 %i.sz, 16777215                 ; 2 uses
  %i.tb = lshr i32 %i.ta, 12
  %i.tc = xor i32 %i.tb, %i.ta                    ; 2 uses
  store i32 %i.tc, ptr %i.b, align 4
  br label %bb.bj

bb.bi:                                            ; preds = %.critedge
  %i.td = trunc i32 %i.ro to i1
  %i.te = and i32 %i.ro, 3
  %i.tf = icmp eq i32 %i.te, 0
  %or.cond.i = or i1 %i.tf, %i.td
  br i1 %or.cond.i, label %_ZN2v88internal6String12AsArrayIndexEPj.exit, label %_ZN2v88internal6String12AsArrayIndexEPj.exit.thread371

_ZN2v88internal6String12AsArrayIndexEPj.exit:     ; preds = %bb.bi
  %i.tg = call noundef zeroext i1 @_ZN2v88internal6String16SlowAsArrayIndexEPj(ptr noundef nonnull align 4 dereferenceable(16) %i.rm, ptr noundef nonnull %i.b) #22
  br i1 %i.tg, label %_ZN2v88internal6String12AsArrayIndexEPj.exit._crit_edge, label %_ZN2v88internal6String12AsArrayIndexEPj.exit.thread371, !prof !987

_ZN2v88internal6String12AsArrayIndexEPj.exit._crit_edge: ; preds = %_ZN2v88internal6String12AsArrayIndexEPj.exit
  %.pre = load i32, ptr %i.b, align 4
  br label %bb.bj

bb.bj:                                            ; preds = %_ZN2v88internal6String12AsArrayIndexEPj.exit._crit_edge, %_ZN2v88internal6String12AsArrayIndexEPj.exit.thread
  %i.th = phi i32 [ %.pre, %_ZN2v88internal6String12AsArrayIndexEPj.exit._crit_edge ], [ %i.tc, %_ZN2v88internal6String12AsArrayIndexEPj.exit.thread ]
  %i.ti = load ptr, ptr %0, align 8
  %i.tj = call i16 @_ZN2v88internal8JSObject14AddDataElementEPNS0_7IsolateENS0_12DirectHandleIS1_EEjNS4_INS0_6ObjectEEENS0_18PropertyAttributesE(ptr noundef %i.ti, ptr nonnull %.sroa.0280.0, i32 noundef %i.th, ptr %.sroa.0260.1, i32 noundef %i.eu) #22 ; 0 uses
  br label %bb.bk

_ZN2v88internal6String12AsArrayIndexEPj.exit.thread371: ; preds = %bb.bi, %_ZN2v88internal6String12AsArrayIndexEPj.exit
  call void @_ZN2v88internal8JSObject21SetNormalizedPropertyENS0_12DirectHandleIS1_EENS2_INS0_4NameEEENS2_INS0_6ObjectEEENS0_15PropertyDetailsE(ptr nonnull %.sroa.0280.0, ptr nonnull %i.ff, ptr %.sroa.0260.1, i32 %12) #22
  br label %bb.bk

bb.bk:                                            ; preds = %_ZN2v88internal6String12AsArrayIndexEPj.exit.thread371, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  br label %.critedge130

.critedge130:                                     ; preds = %bb.u, %bb.bk
  %i.tk = getelementptr inbounds nuw i8, ptr %.sroa.0263.0382, i64 16 ; 2 uses
  %i.tl = icmp eq ptr %i.tk, %i.en
  br i1 %i.tl, label %._crit_edge384, label %bb.q
}

declare i64 @_ZN2v88internal21ImportedFunctionEntry14maybe_callableEv(ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #3

declare ptr @_ZN2v88internal23WasmTrustedInstanceData18GetOrCreateFuncRefEPNS0_7IsolateENS0_12DirectHandleIS1_EEiNS0_4wasm17PrecreateExternalE(ptr noundef, ptr, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

declare ptr @_ZN2v88internal20WasmInternalFunction19GetOrCreateExternalENS0_12DirectHandleIS1_EE(ptr) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal4wasm15InstanceBuilder23Build_Phase1_InfallibleEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(512) %0) local_unnamed_addr #0 align 2 !guid !1072 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 296
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 304
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = sdiv exact i64 %i.i, 48
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %.sroa.0.0.copyload.i27 = load ptr, ptr %i.k, align 8
  %i.l = load i64, ptr %.sroa.0.0.copyload.i27, align 8
  %i.m = add i64 %i.l, 175
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = load i64, ptr %i.n, align 8
  %i.p = load ptr, ptr %0, align 8                ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 560 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 568
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = icmp eq ptr %i.r, %i.t
  br i1 %i.u, label %bb.b, label %_ZN2v88internal6HandleINS0_10FixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !979

bb.b:                                             ; preds = %bb.a
  %i.v = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.p) #22
  br label %_ZN2v88internal6HandleINS0_10FixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_10FixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.a, %bb.b
  %.0.i.i = phi ptr [ %i.v, %bb.b ], [ %i.r, %bb.a ] ; 3 uses
  %i.w = ptrtoint ptr %.0.i.i to i64
  %i.x = add i64 %i.w, 8
  %i.y = inttoptr i64 %i.x to ptr
  store ptr %i.y, ptr %i.q, align 8
  store i64 %i.o, ptr %.0.i.i, align 8
  %.not = icmp eq ptr %i.e, %i.f
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN2v88internal6HandleINS0_10FixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 88
  br label %bb.c

._crit_edge:                                      ; preds = %_ZN2v88internal6HandleINS0_16WasmMemoryObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, %_ZN2v88internal6HandleINS0_10FixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.aa = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 272
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 280
  %i.ad = load ptr, ptr %i.ac, align 8            ; 2 uses
  %i.ae = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = ashr exact i64 %i.ah, 5
  %.not61 = icmp eq ptr %i.ad, %i.ae
  br i1 %.not61, label %._crit_edge60, label %.lr.ph59

bb.c:                                             ; preds = %.lr.ph, %_ZN2v88internal6HandleINS0_16WasmMemoryObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %.056 = phi i32 [ 0, %.lr.ph ], [ %i.bb, %_ZN2v88internal6HandleINS0_16WasmMemoryObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit ] ; 3 uses
  %i.aj = load i64, ptr %.0.i.i, align 8
  %i.ak = add i64 %i.aj, -1
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = sext i32 %.056 to i64
  %i.ao = getelementptr inbounds [8 x i8], ptr %i.am, i64 %i.an
  %i.ap = load atomic volatile i64, ptr %i.ao monotonic, align 8
  %i.aq = load ptr, ptr %0, align 8               ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 560 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8            ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 568
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = icmp eq ptr %i.as, %i.au
  br i1 %i.av, label %bb.d, label %_ZN2v88internal6HandleINS0_16WasmMemoryObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !979

bb.d:                                             ; preds = %bb.c
  %i.aw = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.aq) #22
  br label %_ZN2v88internal6HandleINS0_16WasmMemoryObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_16WasmMemoryObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.c, %bb.d
  %.0.i.i28 = phi ptr [ %i.aw, %bb.d ], [ %i.as, %bb.c ] ; 3 uses
  %i.ax = ptrtoint ptr %.0.i.i28 to i64
  %i.ay = add i64 %i.ax, 8
  %i.az = inttoptr i64 %i.ay to ptr
  store ptr %i.az, ptr %i.ar, align 8
  store i64 %i.ap, ptr %.0.i.i28, align 8
  %i.ba = load ptr, ptr %0, align 8
  %.sroa.012.0.copyload = load ptr, ptr %i.k, align 8
  %.sroa.011.0.copyload = load ptr, ptr %i.z, align 8
  tail call void @_ZN2v88internal16WasmMemoryObject13UseInInstanceEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_23WasmTrustedInstanceDataEEES7_i(ptr noundef %i.ba, ptr nonnull %.0.i.i28, ptr %.sroa.012.0.copyload, ptr %.sroa.011.0.copyload, i32 noundef %.056) #22
  %i.bb = add i32 %.056, 1                        ; 2 uses
  %i.bc = zext i32 %i.bb to i64
  %i.bd = icmp ugt i64 %i.j, %i.bc
  br i1 %i.bd, label %bb.c, label %._crit_edge, !llvm.loop !1070

._crit_edge60:                                    ; preds = %_ZN2v88internal7TryCastINS0_17WasmDispatchTableENS0_6ObjectENS0_6TaggedEQ24HasTryCastImplementationIT1_T_T0_EEEbS5_IS7_EPS5_IS6_E.exit.thread, %._crit_edge
  ret void

.lr.ph59:                                         ; preds = %._crit_edge, %_ZN2v88internal7TryCastINS0_17WasmDispatchTableENS0_6ObjectENS0_6TaggedEQ24HasTryCastImplementationIT1_T_T0_EEEbS5_IS7_EPS5_IS6_E.exit.thread
  %i.be = phi i64 [ %i.cr, %_ZN2v88internal7TryCastINS0_17WasmDispatchTableENS0_6ObjectENS0_6TaggedEQ24HasTryCastImplementationIT1_T_T0_EEEbS5_IS7_EPS5_IS6_E.exit.thread ], [ 0, %._crit_edge ]
  %.02457 = phi i32 [ %i.cq, %_ZN2v88internal7TryCastINS0_17WasmDispatchTableENS0_6ObjectENS0_6TaggedEQ24HasTryCastImplementationIT1_T_T0_EEEbS5_IS7_EPS5_IS6_E.exit.thread ], [ 0, %._crit_edge ] ; 3 uses
  %i.bf = load ptr, ptr %i.a, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 272
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = getelementptr inbounds nuw [32 x i8], ptr %i.bh, i64 %i.be
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 18
  %i.bk = load i8, ptr %i.bj, align 2, !range !981, !noundef !982
  %i.bl = trunc nuw i8 %i.bk to i1
  %.v.i = select i1 %i.bl, i64 88, i64 80
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 %.v.i
  %.sroa.0.0.copyload.i30 = load ptr, ptr %i.bm, align 8 ; 2 uses
  %i.bn = load i64, ptr %.sroa.0.0.copyload.i30, align 8
  %i.bo = add i64 %i.bn, 215
  %i.bp = inttoptr i64 %i.bo to ptr
  %i.bq = load i64, ptr %i.bp, align 8
  %i.br = add i64 %i.bq, -1
  %i.bs = inttoptr i64 %i.br to ptr
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bu = sext i32 %.02457 to i64
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.bt, i64 %i.bu
  %i.bw = load atomic volatile i64, ptr %i.bv monotonic, align 8 ; 3 uses
  %i.bx = trunc i64 %i.bw to i1
  br i1 %i.bx, label %_ZN2v88internal2IsINS0_17WasmDispatchTableENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit.i, label %_ZN2v88internal7TryCastINS0_17WasmDispatchTableENS0_6ObjectENS0_6TaggedEQ24HasTryCastImplementationIT1_T_T0_EEEbS5_IS7_EPS5_IS6_E.exit.thread

_ZN2v88internal2IsINS0_17WasmDispatchTableENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit.i: ; preds = %.lr.ph59
  %i.by = add nsw i64 %i.bw, -1
  %i.bz = inttoptr i64 %i.by to ptr
  %i.ca = load atomic volatile i64, ptr %i.bz monotonic, align 8
  %i.cb = add i64 %i.ca, 11
  %i.cc = inttoptr i64 %i.cb to ptr
  %i.cd = load atomic volatile i16, ptr %i.cc monotonic, align 2
  %i.ce = icmp eq i16 %i.cd, 187
  br i1 %i.ce, label %_ZN2v88internal7TryCastINS0_17WasmDispatchTableENS0_6ObjectENS0_6TaggedEQ24HasTryCastImplementationIT1_T_T0_EEEbS5_IS7_EPS5_IS6_E.exit, label %_ZN2v88internal7TryCastINS0_17WasmDispatchTableENS0_6ObjectENS0_6TaggedEQ24HasTryCastImplementationIT1_T_T0_EEEbS5_IS7_EPS5_IS6_E.exit.thread

_ZN2v88internal7TryCastINS0_17WasmDispatchTableENS0_6ObjectENS0_6TaggedEQ24HasTryCastImplementationIT1_T_T0_EEEbS5_IS7_EPS5_IS6_E.exit: ; preds = %_ZN2v88internal2IsINS0_17WasmDispatchTableENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit.i
  %i.cf = load ptr, ptr %0, align 8               ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 560 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8            ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 568
  %i.cj = load ptr, ptr %i.ci, align 8
  %i.ck = icmp eq ptr %i.ch, %i.cj
  br i1 %i.ck, label %bb.e, label %_ZN2v88internal6HandleINS0_17WasmDispatchTableEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !979

bb.e:                                             ; preds = %_ZN2v88internal7TryCastINS0_17WasmDispatchTableENS0_6ObjectENS0_6TaggedEQ24HasTryCastImplementationIT1_T_T0_EEEbS5_IS7_EPS5_IS6_E.exit
  %i.cl = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.cf) #22
  br label %_ZN2v88internal6HandleINS0_17WasmDispatchTableEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_17WasmDispatchTableEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %_ZN2v88internal7TryCastINS0_17WasmDispatchTableENS0_6ObjectENS0_6TaggedEQ24HasTryCastImplementationIT1_T_T0_EEEbS5_IS7_EPS5_IS6_E.exit, %bb.e
  %.0.i.i29 = phi ptr [ %i.cl, %bb.e ], [ %i.ch, %_ZN2v88internal7TryCastINS0_17WasmDispatchTableENS0_6ObjectENS0_6TaggedEQ24HasTryCastImplementationIT1_T_T0_EEEbS5_IS7_EPS5_IS6_E.exit ] ; 3 uses
  %i.cm = ptrtoint ptr %.0.i.i29 to i64
  %i.cn = add i64 %i.cm, 8
  %i.co = inttoptr i64 %i.cn to ptr
  store ptr %i.co, ptr %i.cg, align 8
  store i64 %i.bw, ptr %.0.i.i29, align 8
  %i.cp = load ptr, ptr %0, align 8
  tail call void @_ZN2v88internal17WasmDispatchTable6AddUseEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_23WasmTrustedInstanceDataEEEi(ptr noundef %i.cp, ptr nonnull %.0.i.i29, ptr nonnull %.sroa.0.0.copyload.i30, i32 noundef %.02457) #22
  br label %_ZN2v88internal7TryCastINS0_17WasmDispatchTableENS0_6ObjectENS0_6TaggedEQ24HasTryCastImplementationIT1_T_T0_EEEbS5_IS7_EPS5_IS6_E.exit.thread

_ZN2v88internal7TryCastINS0_17WasmDispatchTableENS0_6ObjectENS0_6TaggedEQ24HasTryCastImplementationIT1_T_T0_EEEbS5_IS7_EPS5_IS6_E.exit.thread: ; preds = %.lr.ph59, %_ZN2v88internal2IsINS0_17WasmDispatchTableENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit.i, %_ZN2v88internal6HandleINS0_17WasmDispatchTableEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.cq = add i32 %.02457, 1                      ; 2 uses
  %i.cr = zext i32 %i.cq to i64                   ; 2 uses
  %i.cs = icmp ugt i64 %i.ai, %i.cr
  br i1 %i.cs, label %.lr.ph59, label %._crit_edge60, !llvm.loop !1071
}

declare void @_ZN2v88internal16WasmMemoryObject13UseInInstanceEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_23WasmTrustedInstanceDataEEES7_i(ptr noundef, ptr, ptr, ptr, i32 noundef) local_unnamed_addr #3

declare void @_ZN2v88internal17WasmDispatchTable6AddUseEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_23WasmTrustedInstanceDataEEEi(ptr noundef, ptr, ptr, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal4wasm15InstanceBuilder17LoadTableSegmentsEv(ptr noundef nonnull align 8 dereferenceable(512) %0) local_unnamed_addr #0 align 2 !guid !1084 {
bb.a:
  %1 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.997", align 8 ; 4 uses
  %2 = alloca %"class.v8::internal::Tagged.872", align 8 ; 5 uses
  %3 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.635", align 8 ; 4 uses
  %4 = alloca %"class.std::variant", align 8      ; 7 uses
  %5 = alloca %"class.v8::internal::wasm::Decoder", align 8 ; 14 uses
  %6 = alloca %"class.std::variant", align 8      ; 8 uses
  %7 = alloca %"class.std::variant", align 8      ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 416
end_hunk_1
