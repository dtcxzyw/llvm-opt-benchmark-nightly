Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/wasm-objects?download=true
inline.NumInlined: 4819
inline.NumDeleted: 2100
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN2v88internal15WasmTableObject4GrowEPNS0_7IsolateENS0_12DirectHandleIS1_EEjNS4_INS0_6ObjectEEE:bb.a
  %i.ct = load i64, ptr %1, align 8               ; 4 uses
  %i.cu = add i64 %i.ct, 55                       ; 3 uses
  %i.cv = inttoptr i64 %i.cu to ptr
  store atomic volatile i64 %.pre, ptr %i.cv release, align 8
  %i.cw = trunc i64 %.pre to i1
  br i1 %i.cw, label %bb.r, label %_ZN2v88internal15WasmTableObject26set_trusted_dispatch_tableENS0_6TaggedINS0_17WasmDispatchTableEEENS0_16WriteBarrierModeE.exit

bb.r:                                             ; preds = %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit.thread145
  %i.cx = and i64 %i.ct, -262144
  %i.cy = inttoptr i64 %i.cx to ptr
  %i.cz = load i64, ptr %i.cy, align 262144       ; 2 uses
  %i.da = and i64 %i.cz, 32
  %.not.i.i.i.i = icmp eq i64 %i.da, 0
  %i.db = and i64 %i.cz, 25
  %.not38.i.i.i.i = icmp eq i64 %i.db, 0
  br i1 %.not38.i.i.i.i, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.dc = and i64 %.pre, -262144
  %i.dd = inttoptr i64 %i.dc to ptr
  %.sroa.0.0.copyload.i28.i.i.i.i = load i64, ptr %i.dd, align 262144
  %i.de = and i64 %.sroa.0.0.copyload.i28.i.i.i.i, 25
  %.not39.i.i.i.i = icmp eq i64 %i.de, 0
  br i1 %.not39.i.i.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.ct, i64 noundef %i.cu, i64 %.pre) #22
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r
  br i1 %.not.i.i.i.i, label %_ZN2v88internal15WasmTableObject26set_trusted_dispatch_tableENS0_6TaggedINS0_17WasmDispatchTableEEENS0_16WriteBarrierModeE.exit, label %bb.v, !prof !7

bb.v:                                             ; preds = %bb.u
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.ct, i64 %i.cu, i64 %.pre) #22
  br label %_ZN2v88internal15WasmTableObject26set_trusted_dispatch_tableENS0_6TaggedINS0_17WasmDispatchTableEEENS0_16WriteBarrierModeE.exit

_ZN2v88internal15WasmTableObject26set_trusted_dispatch_tableENS0_6TaggedINS0_17WasmDispatchTableEEENS0_16WriteBarrierModeE.exit: ; preds = %_ZN2v88internal6HandleINS0_17WasmDispatchTableEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit, %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit.thread145, %bb.u, %bb.v, %_ZN2v88internal30TorqueGeneratedWasmTableObjectINS0_15WasmTableObjectENS0_8JSObjectEE11set_entriesENS0_6TaggedINS0_10FixedArrayEEENS0_16WriteBarrierModeE.exit
  %i.df = load i64, ptr %1, align 8
  %i.dg = sext i32 %i.am to i64
  %i.dh = shl nsw i64 %i.dg, 32
  %i.di = add i64 %i.df, 31
  %i.dj = inttoptr i64 %i.di to ptr
  store atomic volatile i64 %i.dh, ptr %i.dj monotonic, align 8
  %i.dk = icmp ugt i32 %i.am, %i.f
  br i1 %i.dk, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZN2v88internal15WasmTableObject26set_trusted_dispatch_tableENS0_6TaggedINS0_17WasmDispatchTableEEENS0_16WriteBarrierModeE.exit, %.lr.ph
  %.033147 = phi i32 [ %i.dl, %.lr.ph ], [ %i.f, %_ZN2v88internal15WasmTableObject26set_trusted_dispatch_tableENS0_6TaggedINS0_17WasmDispatchTableEEENS0_16WriteBarrierModeE.exit ] ; 2 uses
  tail call void @_ZN2v88internal15WasmTableObject3SetEPNS0_7IsolateENS0_12DirectHandleIS1_EEjNS4_INS0_6ObjectEEE(ptr noundef %0, ptr nonnull %1, i32 noundef %.033147, ptr %3)
  %i.dl = add i32 %.033147, 1                     ; 2 uses
  %exitcond.not = icmp eq i32 %i.dl, %i.am
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !16

.loopexit:                                        ; preds = %.lr.ph, %_ZN2v88internal15WasmTableObject26set_trusted_dispatch_tableENS0_6TaggedINS0_17WasmDispatchTableEEENS0_16WriteBarrierModeE.exit, %_ZNK2v88internal15WasmTableObject18maximum_length_u64Ev.exit, %bb.a
  %.1 = phi i32 [ %i.f, %bb.a ], [ -1, %_ZNK2v88internal15WasmTableObject18maximum_length_u64Ev.exit ], [ %i.f, %_ZN2v88internal15WasmTableObject26set_trusted_dispatch_tableENS0_6TaggedINS0_17WasmDispatchTableEEENS0_16WriteBarrierModeE.exit ], [ %i.f, %.lr.ph ]
  ret i32 %.1
}

declare noundef i32 @_ZN2v88internal4wasm14max_table_sizeEv() local_unnamed_addr #2

declare ptr @_ZN2v88internal7Factory21CopyFixedArrayAndGrowENS0_12DirectHandleINS0_10FixedArrayEEEiNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1), ptr, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal17WasmDispatchTable4GrowEPNS0_7IsolateENS0_12DirectHandleIS1_EEj(ptr noundef %0, ptr nofree readonly captures(ret: address, provenance) %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8                ; 2 uses
  %i.b = add i64 %i.a, 7
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load i32, ptr %i.c, align 4              ; 3 uses
  %i.e = icmp ult i32 %i.d, %2
  br i1 %i.e, label %bb.c, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.40) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = add i64 %i.a, 11
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load i32, ptr %i.g, align 4              ; 5 uses
  %i.i = tail call noundef i32 @_ZN2v88internal4wasm14max_table_sizeEv() #22
  %.not = icmp ugt i32 %2, %i.i
  br i1 %.not, label %bb.d, label %bb.e, !prof !5

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.41) #24
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.j = icmp ult i32 %2, %i.h
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.k = load i64, ptr %1, align 8
  %i.l = add i64 %i.k, 7
  %i.m = inttoptr i64 %i.l to ptr
  store atomic volatile i32 %2, ptr %i.m release, align 4
  br label %._crit_edge273

bb.g:                                             ; preds = %bb.e
  %i.n = tail call noundef i32 @_ZN2v88internal4wasm14max_table_sizeEv() #22
  %.sroa.speculated168 = tail call i32 @llvm.umin.i32(i32 %i.n, i32 134217725)
  %i.o = sub i32 %.sroa.speculated168, %i.h       ; 3 uses
  %i.p = sub nuw i32 %2, %i.h                     ; 2 uses
  %.not266 = icmp ugt i32 %i.p, %i.o
  br i1 %.not266, label %bb.h, label %_ZN2v88internal10HeapLayout16InAnySharedSpaceENS0_6TaggedINS0_10HeapObjectEEE.exit, !prof !5

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.42) #24
  unreachable

_ZN2v88internal10HeapLayout16InAnySharedSpaceENS0_6TaggedINS0_10HeapObjectEEE.exit: ; preds = %bb.g
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %i.h, i32 8) ; 2 uses
  %i.q = icmp ugt i32 %.sroa.speculated, %i.o
  %.sroa.speculate.load.false162 = tail call i32 @llvm.umax.i32(i32 %.sroa.speculated, i32 %i.p)
  %.sroa.speculated163 = select i1 %i.q, i32 %i.o, i32 %.sroa.speculate.load.false162
  %i.r = add i32 %.sroa.speculated163, %i.h
  %i.s = load i64, ptr %1, align 8                ; 2 uses
  %i.t = add i64 %i.s, 31
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = load i32, ptr %i.u, align 4
  %i.w = and i64 %i.s, -262144
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = load i64, ptr %i.x, align 262144
  %i.z = and i64 %i.y, 65
  %.0.i = icmp ne i64 %i.z, 0
  %i.aa = tail call ptr @_ZN2v88internal7Factory20NewWasmDispatchTableEiNS0_4wasm18CanonicalValueTypeEb(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.r, i32 %i.v, i1 noundef zeroext %.0.i) #22 ; 14 uses
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = add i64 %i.ab, 7
  %i.ad = inttoptr i64 %i.ac to ptr
  store i32 %2, ptr %i.ad, align 4
  %.not274 = icmp eq i32 %i.d, 0
  br i1 %.not274, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.w, %_ZN2v88internal10HeapLayout16InAnySharedSpaceENS0_6TaggedINS0_10HeapObjectEEE.exit
  %i.ae = load i64, ptr %1, align 8
  %i.af = add i64 %i.ae, 15
  %i.ag = inttoptr i64 %i.af to ptr
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = add i64 %i.ah, 7
  %i.aj = inttoptr i64 %i.ai to ptr
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = load i64, ptr %i.aa, align 8
  %i.aq = add i64 %i.ap, 15
  %i.ar = inttoptr i64 %i.aq to ptr
  %i.as = load i64, ptr %i.ar, align 8
  %i.at = add i64 %i.as, 7
  %i.au = inttoptr i64 %i.at to ptr
  %i.av = load i64, ptr %i.au, align 8
  %i.aw = inttoptr i64 %i.av to ptr
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = load ptr, ptr %i.ay, align 8
  tail call void @_ZNSt10_HashtableIiSt4pairIKiSt10shared_ptrIN2v88internal4wasm23WasmImportWrapperHandleEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE14_M_move_assignEOSL_St17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %i.az, ptr noundef nonnull align 8 dereferenceable(56) %i.ao)
  %i.ba = load i64, ptr %1, align 8
  %i.bb = add i64 %i.ba, 23
  %i.bc = inttoptr i64 %i.bb to ptr
  %i.bd = load i64, ptr %i.bc, align 8            ; 5 uses
  %i.be = load i64, ptr %i.aa, align 8            ; 4 uses
  %i.bf = add i64 %i.be, 23                       ; 3 uses
  %i.bg = inttoptr i64 %i.bf to ptr
  store atomic volatile i64 %i.bd, ptr %i.bg monotonic, align 8
  %i.bh = and i64 %i.bd, -262144
  %i.bi = inttoptr i64 %i.bh to ptr
  %i.bj = load i64, ptr %i.bi, align 262144
  %i.bk = and i64 %i.bj, 1
  %.not.i.i = icmp eq i64 %i.bk, 0
  br i1 %.not.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  tail call void @_ZN2v88internal12WriteBarrier10SharedSlowENS0_6TaggedINS0_13TrustedObjectEEENS0_14FullObjectSlotES4_(i64 %i.be, i64 %i.bf, i64 %i.bd) #22
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge
  %i.bl = and i64 %i.be, -262144
  %i.bm = inttoptr i64 %i.bl to ptr
  %i.bn = load i64, ptr %i.bm, align 262144
  %i.bo = and i64 %i.bn, 32
  %.not.i.i.i = icmp eq i64 %i.bo, 0
  br i1 %.not.i.i.i, label %_ZN2v88internal17WasmDispatchTable18set_protected_usesENS0_6TaggedINS0_23ProtectedWeakFixedArrayEEENS0_16WriteBarrierModeE.exit, label %bb.k, !prof !7

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_13TrustedObjectEEENS0_14FullObjectSlotES4_(i64 %i.be, i64 %i.bf, i64 %i.bd) #22
  br label %_ZN2v88internal17WasmDispatchTable18set_protected_usesENS0_6TaggedINS0_23ProtectedWeakFixedArrayEEENS0_16WriteBarrierModeE.exit

_ZN2v88internal17WasmDispatchTable18set_protected_usesENS0_6TaggedINS0_23ProtectedWeakFixedArrayEEENS0_16WriteBarrierModeE.exit: ; preds = %bb.j, %bb.k
  %i.bp = add i64 %i.bd, -1
  %i.bq = inttoptr i64 %i.bp to ptr               ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load i64, ptr %i.br, align 8
  %i.bt = icmp ult i64 %i.bs, 4294967296
  br i1 %i.bt, label %._crit_edge273, label %_ZN2v88internal12_GLOBAL__N_113GetUsedLengthENS0_6TaggedINS0_23ProtectedWeakFixedArrayEEE.exit

_ZN2v88internal12_GLOBAL__N_113GetUsedLengthENS0_6TaggedINS0_23ProtectedWeakFixedArrayEEE.exit: ; preds = %_ZN2v88internal17WasmDispatchTable18set_protected_usesENS0_6TaggedINS0_23ProtectedWeakFixedArrayEEENS0_16WriteBarrierModeE.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bv = load atomic volatile i64, ptr %i.bu monotonic, align 8
  %i.bw = lshr i64 %i.bv, 32                      ; 2 uses
  %i.bx = trunc nuw i64 %i.bw to i32
  %i.by = icmp sgt i32 %i.bx, 1
  br i1 %i.by, label %.lr.ph272, label %._crit_edge273

.lr.ph272:                                        ; preds = %_ZN2v88internal12_GLOBAL__N_113GetUsedLengthENS0_6TaggedINS0_23ProtectedWeakFixedArrayEEE.exit
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  br label %bb.x

.lr.ph:                                           ; preds = %_ZN2v88internal10HeapLayout16InAnySharedSpaceENS0_6TaggedINS0_10HeapObjectEEE.exit, %bb.w
  %.053269 = phi i32 [ %i.ev, %bb.w ], [ 0, %_ZN2v88internal10HeapLayout16InAnySharedSpaceENS0_6TaggedINS0_10HeapObjectEEE.exit ] ; 3 uses
  %i.ca = load i64, ptr %1, align 8               ; 3 uses
  %i.cb = shl i32 %.053269, 4                     ; 4 uses
  %narrow.i = add i32 %i.cb, 39
  %i.cc = sext i32 %narrow.i to i64               ; 2 uses
  %i.cd = add i64 %i.ca, %i.cc
  %i.ce = inttoptr i64 %i.cd to ptr
  %i.cf = load i32, ptr %i.ce, align 4
  %i.cg = add i32 %i.cb, 48
  %i.ch = sext i32 %i.cg to i64
  %i.ci = add nsw i64 %i.ch, -1                   ; 4 uses
  %i.cj = add i64 %i.ca, %i.ci
  %i.ck = inttoptr i64 %i.cj to ptr
  %i.cl = load i64, ptr %i.ck, align 8            ; 11 uses
  %i.cm = trunc i64 %i.cl to i1                   ; 2 uses
  br i1 %i.cm, label %_ZN2v88internal2IsINS0_14WasmImportDataENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit.i, label %_ZN2v88internal14WasmImportData15set_call_originENS0_6TaggedINS0_13TrustedObjectEEENS0_16WriteBarrierModeE.exit

_ZN2v88internal2IsINS0_14WasmImportDataENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit.i: ; preds = %.lr.ph
  %i.cn = add nsw i64 %i.cl, -1
  %i.co = inttoptr i64 %i.cn to ptr
  %i.cp = load atomic volatile i64, ptr %i.co monotonic, align 8
  %i.cq = add i64 %i.cp, 11
  %i.cr = inttoptr i64 %i.cq to ptr
  %i.cs = load atomic volatile i16, ptr %i.cr monotonic, align 2
  %i.ct = icmp eq i16 %i.cs, 199
  br i1 %i.ct, label %_ZN2v88internal7TryCastINS0_14WasmImportDataENS0_6ObjectENS0_6TaggedEQ24HasTryCastImplementationIT1_T_T0_EEEbS5_IS7_EPS5_IS6_E.exit, label %_ZN2v88internal14WasmImportData15set_call_originENS0_6TaggedINS0_13TrustedObjectEEENS0_16WriteBarrierModeE.exit.thread265

_ZN2v88internal7TryCastINS0_14WasmImportDataENS0_6ObjectENS0_6TaggedEQ24HasTryCastImplementationIT1_T_T0_EEEbS5_IS7_EPS5_IS6_E.exit: ; preds = %_ZN2v88internal2IsINS0_14WasmImportDataENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit.i
  %i.cu = add i64 %i.cl, 15                       ; 3 uses
  %i.cv = inttoptr i64 %i.cu to ptr               ; 2 uses
  %i.cw = load i64, ptr %i.cv, align 8            ; 2 uses
  %i.cx = icmp ne i64 %i.cw, 0
  %i.cy = icmp eq i64 %i.cw, %i.ca
  %or.cond = and i1 %i.cx, %i.cy
  br i1 %or.cond, label %bb.l, label %_ZN2v88internal14WasmImportData15set_call_originENS0_6TaggedINS0_13TrustedObjectEEENS0_16WriteBarrierModeE.exit.thread265

bb.l:                                             ; preds = %_ZN2v88internal7TryCastINS0_14WasmImportDataENS0_6ObjectENS0_6TaggedEQ24HasTryCastImplementationIT1_T_T0_EEEbS5_IS7_EPS5_IS6_E.exit
  %i.cz = load i64, ptr %i.aa, align 8            ; 4 uses
  store atomic volatile i64 %i.cz, ptr %i.cv monotonic, align 8
  %i.da = and i64 %i.cz, -262144
  %i.db = inttoptr i64 %i.da to ptr
  %i.dc = load i64, ptr %i.db, align 262144
  %i.dd = and i64 %i.dc, 1
  %.not.i.i76 = icmp eq i64 %i.dd, 0
  br i1 %.not.i.i76, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @_ZN2v88internal12WriteBarrier10SharedSlowENS0_6TaggedINS0_13TrustedObjectEEENS0_14FullObjectSlotES4_(i64 %i.cl, i64 %i.cu, i64 %i.cz) #22
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.de = and i64 %i.cl, -262144
  %i.df = inttoptr i64 %i.de to ptr
  %i.dg = load i64, ptr %i.df, align 262144
  %i.dh = and i64 %i.dg, 32
  %.not.i.i.i77 = icmp eq i64 %i.dh, 0
  br i1 %.not.i.i.i77, label %_ZN2v88internal14WasmImportData15set_call_originENS0_6TaggedINS0_13TrustedObjectEEENS0_16WriteBarrierModeE.exit.thread265, label %bb.o, !prof !7

bb.o:                                             ; preds = %bb.n
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_13TrustedObjectEEENS0_14FullObjectSlotES4_(i64 %i.cl, i64 %i.cu, i64 %i.cz) #22
  br label %_ZN2v88internal14WasmImportData15set_call_originENS0_6TaggedINS0_13TrustedObjectEEENS0_16WriteBarrierModeE.exit.thread265

_ZN2v88internal14WasmImportData15set_call_originENS0_6TaggedINS0_13TrustedObjectEEENS0_16WriteBarrierModeE.exit: ; preds = %.lr.ph
  %i.di = icmp eq i64 %i.cl, 0
  br i1 %i.di, label %bb.p, label %_ZN2v88internal14WasmImportData15set_call_originENS0_6TaggedINS0_13TrustedObjectEEENS0_16WriteBarrierModeE.exit.thread265

bb.p:                                             ; preds = %_ZN2v88internal14WasmImportData15set_call_originENS0_6TaggedINS0_13TrustedObjectEEENS0_16WriteBarrierModeE.exit
  %i.dj = load i64, ptr %i.aa, align 8            ; 4 uses
  %i.dk = add i64 %i.dj, 7
  %i.dl = inttoptr i64 %i.dk to ptr
  %i.dm = load i32, ptr %i.dl, align 4
  %i.dn = icmp ult i32 %.053269, %i.dm
  br i1 %i.dn, label %_ZN2v88internal17WasmDispatchTable5ClearEiNS1_18NewOrExistingEntryE.exit, label %bb.q, !prof !7

bb.q:                                             ; preds = %bb.p
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.38) #24
  unreachable

_ZN2v88internal17WasmDispatchTable5ClearEiNS1_18NewOrExistingEntryE.exit: ; preds = %bb.p
  %i.do = add i32 %i.cb, 40
  %i.dp = sext i32 %i.do to i64                   ; 2 uses
  %i.dq = add i64 %i.dj, %i.ci
  %i.dr = inttoptr i64 %i.dq to ptr
  store atomic volatile i64 0, ptr %i.dr monotonic, align 8
  %i.ds = add nsw i64 %i.dp, -1
  %i.dt = add i64 %i.ds, %i.dj
  %i.du = inttoptr i64 %i.dt to ptr
  store i32 -1, ptr %i.du, align 4
  %i.dv = or disjoint i64 %i.dp, 3
  %i.dw = add i64 %i.dv, %i.dj
  br label %bb.w

_ZN2v88internal14WasmImportData15set_call_originENS0_6TaggedINS0_13TrustedObjectEEENS0_16WriteBarrierModeE.exit.thread265: ; preds = %_ZN2v88internal7TryCastINS0_14WasmImportDataENS0_6ObjectENS0_6TaggedEQ24HasTryCastImplementationIT1_T_T0_EEEbS5_IS7_EPS5_IS6_E.exit, %bb.n, %bb.o, %_ZN2v88internal2IsINS0_14WasmImportDataENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit.i, %_ZN2v88internal14WasmImportData15set_call_originENS0_6TaggedINS0_13TrustedObjectEEENS0_16WriteBarrierModeE.exit
  %i.dx = load i64, ptr %i.aa, align 8
  %i.dy = add i64 %i.dx, %i.cc
  %i.dz = inttoptr i64 %i.dy to ptr
  store i32 %i.cf, ptr %i.dz, align 4
  %i.ea = load i64, ptr %i.aa, align 8
  %i.eb = add i64 %i.ea, %i.ci
  %i.ec = inttoptr i64 %i.eb to ptr
  store atomic volatile i64 %i.cl, ptr %i.ec monotonic, align 8
  %i.ed = load i64, ptr %i.aa, align 8            ; 4 uses
  %i.ee = add i64 %i.ed, %i.ci                    ; 2 uses
  br i1 %i.cm, label %bb.r, label %_ZN2v88internal12WriteBarrier8ForValueINS0_6ObjectEEEvNS0_6TaggedINS0_10HeapObjectEEENS0_19FullMaybeObjectSlotENS4_IT_EENS0_16WriteBarrierModeE.exit

bb.r:                                             ; preds = %_ZN2v88internal14WasmImportData15set_call_originENS0_6TaggedINS0_13TrustedObjectEEENS0_16WriteBarrierModeE.exit.thread265
  %i.ef = and i64 %i.ed, -262144
  %i.eg = inttoptr i64 %i.ef to ptr
  %i.eh = load i64, ptr %i.eg, align 262144       ; 2 uses
  %i.ei = and i64 %i.eh, 32
  %.not.i.i79 = icmp eq i64 %i.ei, 0
  %i.ej = and i64 %i.eh, 25
  %.not38.i.i = icmp eq i64 %i.ej, 0
  br i1 %.not38.i.i, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.ek = and i64 %i.cl, -262144
  %i.el = inttoptr i64 %i.ek to ptr
  %.sroa.0.0.copyload.i28.i.i = load i64, ptr %i.el, align 262144
  %i.em = and i64 %.sroa.0.0.copyload.i28.i.i, 25
  %.not39.i.i = icmp eq i64 %i.em, 0
  br i1 %.not39.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.ed, i64 noundef %i.ee, i64 %i.cl) #22
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r
  br i1 %.not.i.i79, label %_ZN2v88internal12WriteBarrier8ForValueINS0_6ObjectEEEvNS0_6TaggedINS0_10HeapObjectEEENS0_19FullMaybeObjectSlotENS4_IT_EENS0_16WriteBarrierModeE.exit, label %bb.v, !prof !7

bb.v:                                             ; preds = %bb.u
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.ed, i64 %i.ee, i64 %i.cl) #22
  br label %_ZN2v88internal12WriteBarrier8ForValueINS0_6ObjectEEEvNS0_6TaggedINS0_10HeapObjectEEENS0_19FullMaybeObjectSlotENS4_IT_EENS0_16WriteBarrierModeE.exit

_ZN2v88internal12WriteBarrier8ForValueINS0_6ObjectEEEvNS0_6TaggedINS0_10HeapObjectEEENS0_19FullMaybeObjectSlotENS4_IT_EENS0_16WriteBarrierModeE.exit: ; preds = %_ZN2v88internal14WasmImportData15set_call_originENS0_6TaggedINS0_13TrustedObjectEEENS0_16WriteBarrierModeE.exit.thread265, %bb.u, %bb.v
  %i.en = load i64, ptr %i.aa, align 8
  %i.eo = load i64, ptr %1, align 8
  %narrow.i80 = add i32 %i.cb, 43
  %i.ep = sext i32 %narrow.i80 to i64             ; 2 uses
  %i.eq = add i64 %i.eo, %i.ep
  %i.er = inttoptr i64 %i.eq to ptr
  %i.es = load i32, ptr %i.er, align 4
  %i.et = add i64 %i.en, %i.ep
  br label %bb.w

bb.w:                                             ; preds = %_ZN2v88internal12WriteBarrier8ForValueINS0_6ObjectEEEvNS0_6TaggedINS0_10HeapObjectEEENS0_19FullMaybeObjectSlotENS4_IT_EENS0_16WriteBarrierModeE.exit, %_ZN2v88internal17WasmDispatchTable5ClearEiNS1_18NewOrExistingEntryE.exit
  %.sink283 = phi i64 [ %i.et, %_ZN2v88internal12WriteBarrier8ForValueINS0_6ObjectEEEvNS0_6TaggedINS0_10HeapObjectEEENS0_19FullMaybeObjectSlotENS4_IT_EENS0_16WriteBarrierModeE.exit ], [ %i.dw, %_ZN2v88internal17WasmDispatchTable5ClearEiNS1_18NewOrExistingEntryE.exit ]
  %.sink = phi i32 [ %i.es, %_ZN2v88internal12WriteBarrier8ForValueINS0_6ObjectEEEvNS0_6TaggedINS0_10HeapObjectEEENS0_19FullMaybeObjectSlotENS4_IT_EENS0_16WriteBarrierModeE.exit ], [ -1, %_ZN2v88internal17WasmDispatchTable5ClearEiNS1_18NewOrExistingEntryE.exit ]
  %i.eu = inttoptr i64 %.sink283 to ptr
  store i32 %.sink, ptr %i.eu, align 4
  %i.ev = add nuw i32 %.053269, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.ev, %i.d
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !17

bb.x:                                             ; preds = %.lr.ph272, %_ZN2v88internal23WasmTrustedInstanceData19set_dispatch_table0ENS0_6TaggedINS0_17WasmDispatchTableEEENS0_16WriteBarrierModeE.exit
  %indvars.iv = phi i64 [ 1, %.lr.ph272 ], [ %indvars.iv.next, %_ZN2v88internal23WasmTrustedInstanceData19set_dispatch_table0ENS0_6TaggedINS0_17WasmDispatchTableEEENS0_16WriteBarrierModeE.exit ] ; 3 uses
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %indvars.iv ; 2 uses
  %i.ex = load atomic volatile i64, ptr %i.ew monotonic, align 8
  %i.ey = and i64 %i.ex, 4294967295
  %i.ez = icmp eq i64 %i.ey, 3
  br i1 %i.ez, label %_ZN2v88internal23WasmTrustedInstanceData19set_dispatch_table0ENS0_6TaggedINS0_17WasmDispatchTableEEENS0_16WriteBarrierModeE.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fa = load atomic volatile i64, ptr %i.ew monotonic, align 8 ; 2 uses
  %i.fb = and i64 %i.fa, -3                       ; 4 uses
  %i.fc = getelementptr [8 x i8], ptr %i.bq, i64 %indvars.iv
  %i.fd = getelementptr i8, ptr %i.fc, i64 24
  %i.fe = load atomic volatile i64, ptr %i.fd monotonic, align 8 ; 2 uses
  %i.ff = add i64 %i.fb, 215
  %i.fg = inttoptr i64 %i.ff to ptr
  %i.fh = load i64, ptr %i.fg, align 8
  %i.fi = add i64 %i.fh, -1                       ; 3 uses
  %i.fj = inttoptr i64 %i.fi to ptr
  %i.fk = load i64, ptr %i.aa, align 8            ; 5 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  %i.fm = ashr i64 %i.fe, 32
  %i.fn = getelementptr inbounds [8 x i8], ptr %i.fl, i64 %i.fm ; 2 uses
  store atomic volatile i64 %i.fk, ptr %i.fn monotonic, align 8
  %i.fo = trunc i64 %i.fk to i1
  br i1 %i.fo, label %bb.z, label %_ZN2v88internal15TaggedArrayBaseINS0_19ProtectedFixedArrayENS0_19ProtectedArrayShapeENS0_19TrustedObjectLayoutEE3setEiNS0_6TaggedINS0_5UnionIJNS0_13TrustedObjectENS0_3SmiEEEEEENS0_16WriteBarrierModeE.exit

bb.z:                                             ; preds = %bb.y
  %i.fp = or disjoint i64 %i.fi, 1                ; 2 uses
  %i.fq = ptrtoint ptr %i.fn to i64               ; 2 uses
  %i.fr = and i64 %i.fi, -262144
  %i.fs = inttoptr i64 %i.fr to ptr
  %i.ft = load i64, ptr %i.fs, align 262144       ; 2 uses
  %i.fu = and i64 %i.ft, 32
  %.not.i.i.i.i.i = icmp eq i64 %i.fu, 0
  %i.fv = and i64 %i.ft, 25
  %.not38.i.i.i.i.i = icmp eq i64 %i.fv, 0
  br i1 %.not38.i.i.i.i.i, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.fw = and i64 %i.fk, -262144
  %i.fx = inttoptr i64 %i.fw to ptr
  %.sroa.0.0.copyload.i28.i.i.i.i.i = load i64, ptr %i.fx, align 262144
  %i.fy = and i64 %.sroa.0.0.copyload.i28.i.i.i.i.i, 25
  %.not39.i.i.i.i.i = icmp eq i64 %i.fy, 0
  br i1 %.not39.i.i.i.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.fp, i64 noundef %i.fq, i64 %i.fk) #22
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z
  br i1 %.not.i.i.i.i.i, label %_ZN2v88internal15TaggedArrayBaseINS0_19ProtectedFixedArrayENS0_19ProtectedArrayShapeENS0_19TrustedObjectLayoutEE3setEiNS0_6TaggedINS0_5UnionIJNS0_13TrustedObjectENS0_3SmiEEEEEENS0_16WriteBarrierModeE.exit, label %bb.ad, !prof !7

bb.ad:                                            ; preds = %bb.ac
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.fp, i64 %i.fq, i64 %i.fk) #22
  br label %_ZN2v88internal15TaggedArrayBaseINS0_19ProtectedFixedArrayENS0_19ProtectedArrayShapeENS0_19TrustedObjectLayoutEE3setEiNS0_6TaggedINS0_5UnionIJNS0_13TrustedObjectENS0_3SmiEEEEEENS0_16WriteBarrierModeE.exit

_ZN2v88internal15TaggedArrayBaseINS0_19ProtectedFixedArrayENS0_19ProtectedArrayShapeENS0_19TrustedObjectLayoutEE3setEiNS0_6TaggedINS0_5UnionIJNS0_13TrustedObjectENS0_3SmiEEEEEENS0_16WriteBarrierModeE.exit: ; preds = %bb.y, %bb.ac, %bb.ad
  %i.fz = icmp ult i64 %i.fe, 4294967296
  br i1 %i.fz, label %bb.ae, label %_ZN2v88internal23WasmTrustedInstanceData19set_dispatch_table0ENS0_6TaggedINS0_17WasmDispatchTableEEENS0_16WriteBarrierModeE.exit

bb.ae:                                            ; preds = %_ZN2v88internal15TaggedArrayBaseINS0_19ProtectedFixedArrayENS0_19ProtectedArrayShapeENS0_19TrustedObjectLayoutEE3setEiNS0_6TaggedINS0_5UnionIJNS0_13TrustedObjectENS0_3SmiEEEEEENS0_16WriteBarrierModeE.exit
  %i.ga = load i64, ptr %i.aa, align 8            ; 4 uses
  %i.gb = add i64 %i.fb, 7                        ; 3 uses
  %i.gc = inttoptr i64 %i.gb to ptr
  store atomic volatile i64 %i.ga, ptr %i.gc monotonic, align 8
  %i.gd = and i64 %i.ga, -262144
  %i.ge = inttoptr i64 %i.gd to ptr
  %i.gf = load i64, ptr %i.ge, align 262144
  %i.gg = and i64 %i.gf, 1
  %.not.i.i84 = icmp eq i64 %i.gg, 0
  br i1 %.not.i.i84, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  tail call void @_ZN2v88internal12WriteBarrier10SharedSlowENS0_6TaggedINS0_13TrustedObjectEEENS0_14FullObjectSlotES4_(i64 %i.fb, i64 %i.gb, i64 %i.ga) #22
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.gh = and i64 %i.fa, -262144
  %i.gi = inttoptr i64 %i.gh to ptr
  %i.gj = load i64, ptr %i.gi, align 262144
  %i.gk = and i64 %i.gj, 32
  %.not.i.i.i85 = icmp eq i64 %i.gk, 0
  br i1 %.not.i.i.i85, label %_ZN2v88internal23WasmTrustedInstanceData19set_dispatch_table0ENS0_6TaggedINS0_17WasmDispatchTableEEENS0_16WriteBarrierModeE.exit, label %bb.ah, !prof !7

bb.ah:                                            ; preds = %bb.ag
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_13TrustedObjectEEENS0_14FullObjectSlotES4_(i64 %i.fb, i64 %i.gb, i64 %i.ga) #22
  br label %_ZN2v88internal23WasmTrustedInstanceData19set_dispatch_table0ENS0_6TaggedINS0_17WasmDispatchTableEEENS0_16WriteBarrierModeE.exit

_ZN2v88internal23WasmTrustedInstanceData19set_dispatch_table0ENS0_6TaggedINS0_17WasmDispatchTableEEENS0_16WriteBarrierModeE.exit: ; preds = %_ZN2v88internal15TaggedArrayBaseINS0_19ProtectedFixedArrayENS0_19ProtectedArrayShapeENS0_19TrustedObjectLayoutEE3setEiNS0_6TaggedINS0_5UnionIJNS0_13TrustedObjectENS0_3SmiEEEEEENS0_16WriteBarrierModeE.exit, %bb.ag, %bb.ah, %bb.x
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %3 = icmp samesign ult i64 %indvars.iv.next, %i.bw
  br i1 %3, label %bb.x, label %._crit_edge273, !llvm.loop !18

._crit_edge273:                                   ; preds = %_ZN2v88internal23WasmTrustedInstanceData19set_dispatch_table0ENS0_6TaggedINS0_17WasmDispatchTableEEENS0_16WriteBarrierModeE.exit, %_ZN2v88internal17WasmDispatchTable18set_protected_usesENS0_6TaggedINS0_23ProtectedWeakFixedArrayEEENS0_16WriteBarrierModeE.exit, %_ZN2v88internal12_GLOBAL__N_113GetUsedLengthENS0_6TaggedINS0_23ProtectedWeakFixedArrayEEE.exit, %bb.f
  %.sroa.0188.0 = phi ptr [ %1, %bb.f ], [ %i.aa, %_ZN2v88internal17WasmDispatchTable18set_protected_usesENS0_6TaggedINS0_23ProtectedWeakFixedArrayEEENS0_16WriteBarrierModeE.exit ], [ %i.aa, %_ZN2v88internal12_GLOBAL__N_113GetUsedLengthENS0_6TaggedINS0_23ProtectedWeakFixedArrayEEE.exit ], [ %i.aa, %_ZN2v88internal23WasmTrustedInstanceData19set_dispatch_table0ENS0_6TaggedINS0_17WasmDispatchTableEEENS0_16WriteBarrierModeE.exit ]
  ret ptr %.sroa.0188.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal15WasmTableObject3SetEPNS0_7IsolateENS0_12DirectHandleIS1_EEjNS4_INS0_6ObjectEEE(ptr noundef %0, ptr nofree readonly captures(none) %1, i32 noundef %2, ptr nofree readonly captures(none) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8
  %i.b = add i64 %i.a, 23
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = icmp eq ptr %i.f, %i.h
  br i1 %i.i, label %bb.b, label %_ZN2v88internal6HandleINS0_10FixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #22
  br label %_ZN2v88internal6HandleINS0_10FixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_10FixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.a, %bb.b
  %.0.i.i = phi ptr [ %i.j, %bb.b ], [ %i.f, %bb.a ] ; 3 uses
  %i.k = ptrtoint ptr %.0.i.i to i64
  %i.l = add i64 %i.k, 8
  %i.m = inttoptr i64 %i.l to ptr
  store ptr %i.m, ptr %i.e, align 8
  store i64 %i.d, ptr %.0.i.i, align 8
  %i.n = load i64, ptr %1, align 8                ; 2 uses
  %i.o = add i64 %i.n, 47
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load i64, ptr %i.p, align 8              ; 3 uses
  %i.r = lshr i64 %i.q, 32
  %i.s = trunc nuw i64 %i.r to i32                ; 5 uses
  %i.t = lshr i32 %i.s, 8
  %i.u = and i32 %i.t, 1048575                    ; 2 uses
  %i.v = and i32 %i.s, 3
  switch i32 %i.v, label %bb.d [
    i32 0, label %bb.c
    i32 3, label %.split.i
  ]

bb.c:                                             ; preds = %_ZN2v88internal6HandleINS0_10FixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.w = and i32 %i.s, -268435201
  %.not.i.i = icmp eq i32 %i.w, 16
  %i.x = add nsw i32 %i.u, -22
  %i.y = icmp ult i32 %i.x, 8
  %or.cond5.i = select i1 %.not.i.i, i1 %i.y, i1 false, !prof !19
  br i1 %or.cond5.i, label %bb.n, label %_ZNK2v88internal4wasm13ValueTypeBase8is_validEv.exit.thread.i, !prof !19

bb.d:                                             ; preds = %_ZN2v88internal6HandleINS0_10FixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.z = icmp samesign ult i32 %i.u, 22
  %i.aa = and i32 %i.s, 8
  %i.ab = icmp eq i32 %i.aa, 0
  %or.cond.i.not7.i = and i1 %i.ab, %i.z
  %i.ac = icmp ult i64 %i.q, 1152921504606846976
  %or.cond.i = and i1 %i.ac, %or.cond.i.not7.i
  br i1 %or.cond.i, label %bb.n, label %_ZNK2v88internal4wasm13ValueTypeBase8is_validEv.exit.thread.i, !prof !19

.split.i:                                         ; preds = %_ZN2v88internal6HandleINS0_10FixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %.old.i = icmp ult i64 %i.q, 1152921504606846976
  br i1 %.old.i, label %_ZN2v88internal15WasmTableObject11unsafe_typeEv.exit, label %_ZNK2v88internal4wasm13ValueTypeBase8is_validEv.exit.thread.i, !prof !20

_ZNK2v88internal4wasm13ValueTypeBase8is_validEv.exit.thread.i: ; preds = %.split.i, %bb.d, %bb.c
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.68) #24
  unreachable

_ZN2v88internal15WasmTableObject11unsafe_typeEv.exit: ; preds = %.split.i
  %i.ad = add i64 %i.n, 63
  %i.ae = inttoptr i64 %i.ad to ptr
  %i.af = load atomic volatile i64, ptr %i.ae acquire, align 8
  %i.ag = add i64 %i.af, 263
  %i.ah = inttoptr i64 %i.ag to ptr
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = add i64 %i.ai, 7
  %i.ak = inttoptr i64 %i.aj to ptr
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = inttoptr i64 %i.al to ptr
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 216
  %i.ar = load ptr, ptr %i.aq, align 8            ; 4 uses
  %i.as = load i64, ptr %1, align 8
  %i.at = add i64 %i.as, 47
  %i.au = inttoptr i64 %i.at to ptr
  %i.av = load i64, ptr %i.au, align 8            ; 3 uses
  %i.aw = lshr i64 %i.av, 32
  %i.ax = trunc nuw i64 %i.aw to i32              ; 4 uses
  %i.ay = lshr i32 %i.ax, 8
  %i.az = and i32 %i.ay, 1048575                  ; 4 uses
  %i.ba = and i32 %i.ax, 3
  switch i32 %i.ba, label %bb.f [
    i32 0, label %bb.e
    i32 3, label %.split.i.i
  ]

bb.e:                                             ; preds = %_ZN2v88internal15WasmTableObject11unsafe_typeEv.exit
  %i.bb = and i32 %i.ax, -268435201
  %.not.i.i.i = icmp eq i32 %i.bb, 16
  %i.bc = add nsw i32 %i.az, -22
  %i.bd = icmp ult i32 %i.bc, 8
  %or.cond5.i.i = select i1 %.not.i.i.i, i1 %i.bd, i1 false, !prof !19
  br i1 %or.cond5.i.i, label %_ZN2v88internal15WasmTableObject4typeEPKNS0_4wasm10WasmModuleE.exit, label %_ZNK2v88internal4wasm13ValueTypeBase8is_validEv.exit.thread.i.i, !prof !19

bb.f:                                             ; preds = %_ZN2v88internal15WasmTableObject11unsafe_typeEv.exit
  %i.be = icmp samesign ult i32 %i.az, 22
  %i.bf = and i32 %i.ax, 8
  %i.bg = icmp eq i32 %i.bf, 0
  %or.cond.i.not7.i.i = and i1 %i.bg, %i.be
  %i.bh = icmp ult i64 %i.av, 1152921504606846976
  %or.cond.i.i = and i1 %i.bh, %or.cond.i.not7.i.i
  br i1 %or.cond.i.i, label %_ZN2v88internal15WasmTableObject4typeEPKNS0_4wasm10WasmModuleE.exit, label %_ZNK2v88internal4wasm13ValueTypeBase8is_validEv.exit.thread.i.i, !prof !19

.split.i.i:                                       ; preds = %_ZN2v88internal15WasmTableObject11unsafe_typeEv.exit
  %.old.i.i = icmp ult i64 %i.av, 1152921504606846976
  br i1 %.old.i.i, label %_ZN2v88internal15WasmTableObject11unsafe_typeEv.exit.i, label %_ZNK2v88internal4wasm13ValueTypeBase8is_validEv.exit.thread.i.i, !prof !20

_ZNK2v88internal4wasm13ValueTypeBase8is_validEv.exit.thread.i.i: ; preds = %.split.i.i, %bb.f, %bb.e
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.68) #24
  unreachable

_ZN2v88internal15WasmTableObject11unsafe_typeEv.exit.i: ; preds = %.split.i.i
  %i.bi = zext nneg i32 %i.az to i64
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ar, i64 152
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ar, i64 160
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = load ptr, ptr %i.bj, align 8
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = sub i64 %i.bn, %i.bo
  %i.bq = sdiv exact i64 %i.bp, 24
  %.not.i = icmp ugt i64 %i.bq, %i.bi
  br i1 %.not.i, label %_ZN2v88internal15WasmTableObject4typeEPKNS0_4wasm10WasmModuleE.exit, label %bb.g, !prof !7

bb.g:                                             ; preds = %_ZN2v88internal15WasmTableObject11unsafe_typeEv.exit.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.66) #24
  unreachable

_ZN2v88internal15WasmTableObject4typeEPKNS0_4wasm10WasmModuleE.exit: ; preds = %bb.e, %bb.f, %_ZN2v88internal15WasmTableObject11unsafe_typeEv.exit.i
  %i.br = zext nneg i32 %i.az to i64              ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ar, i64 152
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ar, i64 160
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = load ptr, ptr %i.bs, align 8            ; 2 uses
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = ptrtoint ptr %i.bv to i64
  %i.by = sub i64 %i.bw, %i.bx
  %i.bz = sdiv exact i64 %i.by, 24
  %i.ca = icmp ugt i64 %i.bz, %i.br
  br i1 %i.ca, label %_ZNK2v88internal4wasm10WasmModule13has_signatureENS1_15ModuleTypeIndexE.exit, label %_ZNK2v88internal4wasm10WasmModule13has_signatureENS1_15ModuleTypeIndexE.exit.thread

_ZNK2v88internal4wasm10WasmModule13has_signatureENS1_15ModuleTypeIndexE.exit: ; preds = %_ZN2v88internal15WasmTableObject4typeEPKNS0_4wasm10WasmModuleE.exit
  %i.cb = getelementptr inbounds nuw [24 x i8], ptr %i.bv, i64 %i.br
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 20
  %i.cd = load i8, ptr %i.cc, align 4
  %i.ce = icmp eq i8 %i.cd, 1
  br i1 %i.ce, label %bb.h, label %_ZNK2v88internal4wasm10WasmModule13has_signatureENS1_15ModuleTypeIndexE.exit.thread

bb.h:                                             ; preds = %_ZNK2v88internal4wasm10WasmModule13has_signatureENS1_15ModuleTypeIndexE.exit
  tail call void @_ZN2v88internal15WasmTableObject21SetFunctionTableEntryEPNS0_7IsolateENS0_12DirectHandleIS1_EEiNS4_INS0_6ObjectEEE(ptr noundef nonnull %0, ptr nonnull %1, i32 noundef %2, ptr %3)
  br label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

_ZNK2v88internal4wasm10WasmModule13has_signatureENS1_15ModuleTypeIndexE.exit.thread: ; preds = %_ZN2v88internal15WasmTableObject4typeEPKNS0_4wasm10WasmModuleE.exit, %_ZNK2v88internal4wasm10WasmModule13has_signatureENS1_15ModuleTypeIndexE.exit
  %i.cf = load i64, ptr %.0.i.i, align 8
  %i.cg = add i64 %i.cf, -1                       ; 3 uses
  %i.ch = inttoptr i64 %i.cg to ptr
  %i.ci = load i64, ptr %3, align 8               ; 5 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.ck = sext i32 %2 to i64
  %i.cl = getelementptr inbounds [8 x i8], ptr %i.cj, i64 %i.ck ; 2 uses
  store atomic volatile i64 %i.ci, ptr %i.cl monotonic, align 8
  %i.cm = trunc i64 %i.ci to i1
  br i1 %i.cm, label %bb.i, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

bb.i:                                             ; preds = %_ZNK2v88internal4wasm10WasmModule13has_signatureENS1_15ModuleTypeIndexE.exit.thread
  %i.cn = or disjoint i64 %i.cg, 1                ; 2 uses
  %i.co = ptrtoint ptr %i.cl to i64               ; 2 uses
  %i.cp = and i64 %i.cg, -262144
  %i.cq = inttoptr i64 %i.cp to ptr
  %i.cr = load i64, ptr %i.cq, align 262144       ; 2 uses
  %i.cs = and i64 %i.cr, 32
  %.not.i.i.i.i.i = icmp eq i64 %i.cs, 0
  %i.ct = and i64 %i.cr, 25
  %.not38.i.i.i.i.i = icmp eq i64 %i.ct, 0
  br i1 %.not38.i.i.i.i.i, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.cu = and i64 %i.ci, -262144
  %i.cv = inttoptr i64 %i.cu to ptr
  %.sroa.0.0.copyload.i28.i.i.i.i.i = load i64, ptr %i.cv, align 262144
  %i.cw = and i64 %.sroa.0.0.copyload.i28.i.i.i.i.i, 25
  %.not39.i.i.i.i.i = icmp eq i64 %i.cw, 0
  br i1 %.not39.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.cn, i64 noundef %i.co, i64 %i.ci) #22
end_hunk_0
begin_hunk_1_@_ZNK2v88internal21WasmDispatchTableData21MaybeGetWrapperHandleEi:bb.a
  %i.af = add nsw i32 %i.ae, 1
  store i32 %i.af, ptr %i.ac, align 4
  br label %.loopexit

bb.k:                                             ; preds = %bb.i
  %i.ag = atomicrmw volatile add ptr %i.ac, i32 1 acq_rel, align 4 ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i, %bb.c, %bb.k, %bb.j, %_ZNKSt13unordered_mapIiSt10shared_ptrIN2v88internal4wasm23WasmImportWrapperHandleEESt4hashIiESt8equal_toIiESaISt4pairIKiS5_EEE4findERSB_.exit, %bb.e, %..loopexit_crit_edge21.i.i.i.i
  %.sink = phi i8 [ 0, %bb.e ], [ 0, %bb.c ], [ 1, %bb.k ], [ 0, %..loopexit_crit_edge21.i.i.i.i ], [ 1, %_ZNKSt13unordered_mapIiSt10shared_ptrIN2v88internal4wasm23WasmImportWrapperHandleEESt4hashIiESt8equal_toIiESaISt4pairIKiS5_EEE4findERSB_.exit ], [ 1, %bb.j ], [ 0, %.lr.ph.i.i.i.i ]
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.ah, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal21WasmDispatchTableData3AddEiSt10shared_ptrINS0_4wasm23WasmImportWrapperHandleEE(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1, ptr noundef nonnull %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 2 uses
  store i32 %1, ptr %i.a, align 4
  %i.b = call { ptr, i8 } @_ZNSt10_HashtableIiSt4pairIKiSt10shared_ptrIN2v88internal4wasm23WasmImportWrapperHandleEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE10_M_emplaceIJRiS7_EEES0_INSA_14_Node_iteratorIS8_Lb0ELb0EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %2) ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal21WasmDispatchTableData6RemoveEi(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8
  %.not.not.i.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.not.i.i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZNSt13unordered_mapIiSt10shared_ptrIN2v88internal4wasm23WasmImportWrapperHandleEESt4hashIiESt8equal_toIiESaISt4pairIKiS5_EEE5eraseERSB_.exit, label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load i32, ptr %i.e, align 4
  %i.g = icmp eq i32 %1, %i.f
  br i1 %i.g, label %_ZNSt10_HashtableIiSt4pairIKiSt10shared_ptrIN2v88internal4wasm23WasmImportWrapperHandleEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeERS1_.exit.i.i.i, label %.lr.ph.i.i.i

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.i = load i32, ptr %i.h, align 4
  %i.j = icmp eq i32 %1, %i.i
  br i1 %i.j, label %_ZNSt10_HashtableIiSt4pairIKiSt10shared_ptrIN2v88internal4wasm23WasmImportWrapperHandleEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeERS1_.exit.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !41

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i.i, %bb.c
  %.016.i34.i.i.i = phi ptr [ %i.k, %bb.c ], [ %i.d, %.preheader.i.i.i.i ] ; 2 uses
  %i.k = load ptr, ptr %.016.i34.i.i.i, align 8   ; 4 uses
  %.not14.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not14.i.i.i.i, label %_ZNSt13unordered_mapIiSt10shared_ptrIN2v88internal4wasm23WasmImportWrapperHandleEESt4hashIiESt8equal_toIiESaISt4pairIKiS5_EEE5eraseERSB_.exit, label %bb.c, !llvm.loop !41

_ZNSt10_HashtableIiSt4pairIKiSt10shared_ptrIN2v88internal4wasm23WasmImportWrapperHandleEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeERS1_.exit.i.i.i: ; preds = %bb.c, %.preheader.i.i.i.i
  %i.l = phi ptr [ %i.d, %.preheader.i.i.i.i ], [ %i.k, %bb.c ]
  %.01115.i.lcssa.i.i.i = phi ptr [ %i.c, %.preheader.i.i.i.i ], [ %.016.i34.i.i.i, %bb.c ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load i64, ptr %i.m, align 8
  %i.o = sext i32 %1 to i64
  %i.p = urem i64 %i.o, %i.n
  br label %_ZNKSt10_HashtableIiSt4pairIKiSt10shared_ptrIN2v88internal4wasm23WasmImportWrapperHandleEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeEmRS1_m.exit.i.i.i

bb.d:                                             ; preds = %bb.a
  %i.q = sext i32 %1 to i64
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load i64, ptr %i.r, align 8              ; 2 uses
  %i.t = urem i64 %i.q, %i.s                      ; 4 uses
  %i.u = load ptr, ptr %0, align 8
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.t
  %i.w = load ptr, ptr %i.v, align 8              ; 3 uses
  %.not.i24.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i24.i.i.i, label %_ZNSt13unordered_mapIiSt10shared_ptrIN2v88internal4wasm23WasmImportWrapperHandleEESt4hashIiESt8equal_toIiESaISt4pairIKiS5_EEE5eraseERSB_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = load ptr, ptr %i.w, align 8              ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = icmp eq i32 %1, %i.z
  br i1 %i.aa, label %_ZNKSt10_HashtableIiSt4pairIKiSt10shared_ptrIN2v88internal4wasm23WasmImportWrapperHandleEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeEmRS1_m.exit.i.i.i, label %.lr.ph.i.i.i.i

bb.f:                                             ; preds = %bb.g
  %i.ab = icmp eq i32 %1, %i.ae
  br i1 %i.ab, label %_ZNKSt10_HashtableIiSt4pairIKiSt10shared_ptrIN2v88internal4wasm23WasmImportWrapperHandleEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeEmRS1_m.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !31

.lr.ph.i.i.i.i:                                   ; preds = %bb.e, %bb.f
  %.020.i.i.i.i = phi ptr [ %i.ac, %bb.f ], [ %i.x, %bb.e ] ; 2 uses
  %i.ac = load ptr, ptr %.020.i.i.i.i, align 8    ; 4 uses
  %.not18.i.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not18.i.i.i.i, label %_ZNSt13unordered_mapIiSt10shared_ptrIN2v88internal4wasm23WasmImportWrapperHandleEESt4hashIiESt8equal_toIiESaISt4pairIKiS5_EEE5eraseERSB_.exit, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load i32, ptr %i.ad, align 4            ; 2 uses
  %i.af = sext i32 %i.ae to i64
  %i.ag = urem i64 %i.af, %i.s
  %.not19.i.i.i.i = icmp eq i64 %i.ag, %i.t
  br i1 %.not19.i.i.i.i, label %bb.f, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !31

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.g
  br label %_ZNSt13unordered_mapIiSt10shared_ptrIN2v88internal4wasm23WasmImportWrapperHandleEESt4hashIiESt8equal_toIiESaISt4pairIKiS5_EEE5eraseERSB_.exit, !llvm.loop !31

_ZNKSt10_HashtableIiSt4pairIKiSt10shared_ptrIN2v88internal4wasm23WasmImportWrapperHandleEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeEmRS1_m.exit.i.i.i: ; preds = %bb.f, %bb.e, %_ZNSt10_HashtableIiSt4pairIKiSt10shared_ptrIN2v88internal4wasm23WasmImportWrapperHandleEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeERS1_.exit.i.i.i
  %.020.i.i.i = phi ptr [ %.01115.i.lcssa.i.i.i, %_ZNSt10_HashtableIiSt4pairIKiSt10shared_ptrIN2v88internal4wasm23WasmImportWrapperHandleEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeERS1_.exit.i.i.i ], [ %i.w, %bb.e ], [ %.020.i.i.i.i, %bb.f ]
  %.119.i.i.i = phi ptr [ %i.l, %_ZNSt10_HashtableIiSt4pairIKiSt10shared_ptrIN2v88internal4wasm23WasmImportWrapperHandleEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeERS1_.exit.i.i.i ], [ %i.x, %bb.e ], [ %i.ac, %bb.f ]
  %.017.i.i.i = phi i64 [ %i.p, %_ZNSt10_HashtableIiSt4pairIKiSt10shared_ptrIN2v88internal4wasm23WasmImportWrapperHandleEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeERS1_.exit.i.i.i ], [ %i.t, %bb.e ], [ %i.t, %bb.f ]
  %i.ah = tail call ptr @_ZNSt10_HashtableIiSt4pairIKiSt10shared_ptrIN2v88internal4wasm23WasmImportWrapperHandleEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE8_M_eraseEmPNSA_15_Hash_node_baseEPNSA_10_Hash_nodeIS8_Lb0EEE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %.017.i.i.i, ptr noundef nonnull %.020.i.i.i, ptr noundef nonnull %.119.i.i.i) ; 0 uses
  br label %_ZNSt13unordered_mapIiSt10shared_ptrIN2v88internal4wasm23WasmImportWrapperHandleEESt4hashIiESt8equal_toIiESaISt4pairIKiS5_EEE5eraseERSB_.exit

_ZNSt13unordered_mapIiSt10shared_ptrIN2v88internal4wasm23WasmImportWrapperHandleEESt4hashIiESt8equal_toIiESaISt4pairIKiS5_EEE5eraseERSB_.exit: ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i, %bb.b, %bb.d, %..loopexit_crit_edge21.i.i.i.i, %_ZNKSt10_HashtableIiSt4pairIKiSt10shared_ptrIN2v88internal4wasm23WasmImportWrapperHandleEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeEmRS1_m.exit.i.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal17WasmDispatchTable6AddUseEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_23WasmTrustedInstanceDataEEEi(ptr noundef %0, ptr nofree readonly captures(none) %1, ptr nofree readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call i64 @_ZN2v88internal17WasmDispatchTable17MaybeGrowUsesListEPNS0_7IsolateENS0_12DirectHandleIS1_EE(ptr noundef %0, ptr %1)
  %i.b = add i64 %i.a, -1                         ; 3 uses
  %i.c = inttoptr i64 %i.b to ptr                 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load i64, ptr %i.d, align 8
  %i.f = icmp ult i64 %i.e, 4294967296
  br i1 %i.f, label %_ZN2v88internal12_GLOBAL__N_113GetUsedLengthENS0_6TaggedINS0_23ProtectedWeakFixedArrayEEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.h = load atomic volatile i64, ptr %i.g monotonic, align 8
  %i.i = lshr i64 %i.h, 32
  %i.j = trunc nuw i64 %i.i to i32
  br label %_ZN2v88internal12_GLOBAL__N_113GetUsedLengthENS0_6TaggedINS0_23ProtectedWeakFixedArrayEEE.exit

_ZN2v88internal12_GLOBAL__N_113GetUsedLengthENS0_6TaggedINS0_23ProtectedWeakFixedArrayEEE.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ %i.j, %bb.b ], [ 0, %bb.a ]   ; 2 uses
  %i.k = load i64, ptr %2, align 8                ; 2 uses
  %i.l = or i64 %i.k, 3                           ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.n = sext i32 %.0.i to i64
  %i.o = getelementptr [8 x i8], ptr %i.m, i64 %i.n ; 3 uses
  store atomic volatile i64 %i.l, ptr %i.o monotonic, align 8
  %i.p = and i64 %i.l, 4294967295
  %.not.i = icmp eq i64 %i.p, 3
  br i1 %.not.i, label %_ZN2v88internal12_GLOBAL__N_18SetEntryENS0_6TaggedINS0_23ProtectedWeakFixedArrayEEEiNS2_INS0_23WasmTrustedInstanceDataEEEi.exit, label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_113GetUsedLengthENS0_6TaggedINS0_23ProtectedWeakFixedArrayEEE.exit
  %i.q = and i64 %i.l, -3                         ; 2 uses
  %i.r = or disjoint i64 %i.b, 1                  ; 2 uses
  %i.s = ptrtoint ptr %i.o to i64                 ; 2 uses
  %i.t = and i64 %i.b, -262144
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = load i64, ptr %i.u, align 262144         ; 2 uses
  %i.w = and i64 %i.v, 32
  %.not.i.i.i.i.i.i = icmp eq i64 %i.w, 0
  %i.x = and i64 %i.v, 25
  %.not38.i.i.i.i.i.i = icmp eq i64 %i.x, 0
  br i1 %.not38.i.i.i.i.i.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.y = and i64 %i.k, -262144
  %i.z = inttoptr i64 %i.y to ptr
  %.sroa.0.0.copyload.i28.i.i.i.i.i.i = load i64, ptr %i.z, align 262144
  %i.aa = and i64 %.sroa.0.0.copyload.i28.i.i.i.i.i.i, 25
  %.not39.i.i.i.i.i.i = icmp eq i64 %i.aa, 0
  br i1 %.not39.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.r, i64 noundef %i.s, i64 %i.q) #22
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  br i1 %.not.i.i.i.i.i.i, label %_ZN2v88internal12_GLOBAL__N_18SetEntryENS0_6TaggedINS0_23ProtectedWeakFixedArrayEEEiNS2_INS0_23WasmTrustedInstanceDataEEEi.exit, label %bb.g, !prof !7

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.r, i64 %i.s, i64 %i.q) #22
  br label %_ZN2v88internal12_GLOBAL__N_18SetEntryENS0_6TaggedINS0_23ProtectedWeakFixedArrayEEEiNS2_INS0_23WasmTrustedInstanceDataEEEi.exit

_ZN2v88internal12_GLOBAL__N_18SetEntryENS0_6TaggedINS0_23ProtectedWeakFixedArrayEEEiNS2_INS0_23WasmTrustedInstanceDataEEEi.exit: ; preds = %_ZN2v88internal12_GLOBAL__N_113GetUsedLengthENS0_6TaggedINS0_23ProtectedWeakFixedArrayEEE.exit, %bb.f, %bb.g
  %i.ab = sext i32 %3 to i64
  %i.ac = shl nsw i64 %i.ab, 32
  %i.ad = getelementptr i8, ptr %i.o, i64 8
  store atomic volatile i64 %i.ac, ptr %i.ad monotonic, align 8
  %i.ae = add nsw i32 %.0.i, 2
  %i.af = sext i32 %i.ae to i64
  %i.ag = shl nsw i64 %i.af, 32
  store atomic volatile i64 %i.ag, ptr %i.m monotonic, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden i64 @_ZN2v88internal17WasmDispatchTable17MaybeGrowUsesListEPNS0_7IsolateENS0_12DirectHandleIS1_EE(ptr noundef %0, ptr nofree readonly captures(none) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8
  %i.b = add i64 %i.a, 23
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load i64, ptr %i.c, align 8              ; 6 uses
  %i.e = add i64 %i.d, -1
  %i.f = inttoptr i64 %i.e to ptr                 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load i64, ptr %i.g, align 8              ; 2 uses
  %i.i = lshr i64 %i.h, 32                        ; 3 uses
  %i.j = trunc nuw i64 %i.i to i32                ; 4 uses
  %i.k = icmp eq i64 %i.i, 0
  br i1 %i.k, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.l = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE26NewProtectedWeakFixedArrayEi(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef 3) #22 ; 3 uses
  %i.m = load i64, ptr %i.l, align 8
  %i.n = add i64 %i.m, -1
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store atomic volatile i64 4294967296, ptr %i.p monotonic, align 8
  %i.q = load i64, ptr %1, align 8                ; 4 uses
  %i.r = load i64, ptr %i.l, align 8              ; 4 uses
  %i.s = add i64 %i.q, 23                         ; 3 uses
  %i.t = inttoptr i64 %i.s to ptr
  store atomic volatile i64 %i.r, ptr %i.t monotonic, align 8
  %i.u = and i64 %i.r, -262144
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = load i64, ptr %i.v, align 262144
  %i.x = and i64 %i.w, 1
  %.not.i.i = icmp eq i64 %i.x, 0
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN2v88internal12WriteBarrier10SharedSlowENS0_6TaggedINS0_13TrustedObjectEEENS0_14FullObjectSlotES4_(i64 %i.q, i64 %i.s, i64 %i.r) #22
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.y = and i64 %i.q, -262144
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = load i64, ptr %i.z, align 262144
  %i.ab = and i64 %i.aa, 32
  %.not.i.i.i = icmp eq i64 %i.ab, 0
  br i1 %.not.i.i.i, label %_ZN2v88internal17WasmDispatchTable18set_protected_usesENS0_6TaggedINS0_23ProtectedWeakFixedArrayEEENS0_16WriteBarrierModeE.exit, label %bb.e, !prof !7

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_13TrustedObjectEEENS0_14FullObjectSlotES4_(i64 %i.q, i64 %i.s, i64 %i.r) #22
  br label %_ZN2v88internal17WasmDispatchTable18set_protected_usesENS0_6TaggedINS0_23ProtectedWeakFixedArrayEEENS0_16WriteBarrierModeE.exit

_ZN2v88internal17WasmDispatchTable18set_protected_usesENS0_6TaggedINS0_23ProtectedWeakFixedArrayEEENS0_16WriteBarrierModeE.exit: ; preds = %bb.d, %bb.e
  %i.ac = load i64, ptr %i.l, align 8
  br label %bb.w

bb.f:                                             ; preds = %bb.a
  %i.ad = icmp ult i64 %i.h, 4294967296
  br i1 %i.ad, label %_ZN2v88internal12_GLOBAL__N_113GetUsedLengthENS0_6TaggedINS0_23ProtectedWeakFixedArrayEEE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.af = load atomic volatile i64, ptr %i.ae monotonic, align 8
  %i.ag = lshr i64 %i.af, 32
  %i.ah = trunc nuw i64 %i.ag to i32
  br label %_ZN2v88internal12_GLOBAL__N_113GetUsedLengthENS0_6TaggedINS0_23ProtectedWeakFixedArrayEEE.exit

_ZN2v88internal12_GLOBAL__N_113GetUsedLengthENS0_6TaggedINS0_23ProtectedWeakFixedArrayEEE.exit: ; preds = %bb.f, %bb.g
  %.0.i = phi i32 [ %i.ah, %bb.g ], [ 0, %bb.f ]
  %i.ai = icmp slt i32 %.0.i, %i.j
  br i1 %i.ai, label %bb.w, label %.preheader

.preheader:                                       ; preds = %_ZN2v88internal12_GLOBAL__N_113GetUsedLengthENS0_6TaggedINS0_23ProtectedWeakFixedArrayEEE.exit
  %i.aj = icmp sgt i32 %i.j, 1
  br i1 %i.aj, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.ak = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  br label %bb.h

._crit_edge:                                      ; preds = %bb.m, %.preheader
  %.050.lcssa = phi i32 [ 1, %.preheader ], [ %.151, %bb.m ] ; 3 uses
  %.049.lcssa = phi i32 [ 0, %.preheader ], [ %.1, %bb.m ]
  %i.al = ashr i32 %i.j, 2                        ; 2 uses
  %.not.not = icmp sgt i32 %.049.lcssa, %i.al
  br i1 %.not.not, label %bb.n, label %bb.o

bb.h:                                             ; preds = %.lr.ph, %bb.m
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %bb.m ] ; 4 uses
  %.049119 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.m ] ; 2 uses
  %.050118 = phi i32 [ 1, %.lr.ph ], [ %.151, %bb.m ] ; 4 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv
  %i.an = load atomic volatile i64, ptr %i.am monotonic, align 8
  %i.ao = and i64 %i.an, 4294967295
  %i.ap = icmp eq i64 %i.ao, 3
  br i1 %i.ap, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aq = add nsw i32 %.049119, 1
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.ar = zext i32 %.050118 to i64
  %.not = icmp eq i64 %indvars.iv, %i.ar
  br i1 %.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = trunc nuw nsw i64 %indvars.iv to i32
  tail call fastcc void @_ZN2v88internal12_GLOBAL__N_19CopyEntryENS0_6TaggedINS0_23ProtectedWeakFixedArrayEEEiS4_i(i64 %i.d, i32 noundef %.050118, i64 %i.d, i32 noundef %i.as)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.at = add nsw i32 %.050118, 2
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.i
  %.151 = phi i32 [ %.050118, %bb.i ], [ %i.at, %bb.l ] ; 2 uses
  %.1 = phi i32 [ %i.aq, %bb.i ], [ %.049119, %bb.l ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %2 = icmp samesign ult i64 %indvars.iv.next, %i.i
  br i1 %2, label %bb.h, label %._crit_edge, !llvm.loop !99

bb.n:                                             ; preds = %._crit_edge
  %i.au = sext i32 %.050.lcssa to i64
  %i.av = shl nsw i64 %i.au, 32
  %i.aw = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store atomic volatile i64 %i.av, ptr %i.aw monotonic, align 8
  br label %bb.w

bb.o:                                             ; preds = %._crit_edge
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8            ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = icmp eq ptr %i.ay, %i.ba
  br i1 %i.bb, label %bb.p, label %_ZN2v88internal6HandleINS0_23ProtectedWeakFixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !5

bb.p:                                             ; preds = %bb.o
  %i.bc = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #22
  br label %_ZN2v88internal6HandleINS0_23ProtectedWeakFixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_23ProtectedWeakFixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.o, %bb.p
  %.0.i.i = phi ptr [ %i.bc, %bb.p ], [ %i.ay, %bb.o ] ; 3 uses
  %i.bd = ptrtoint ptr %.0.i.i to i64
  %i.be = add i64 %i.bd, 8
  %i.bf = inttoptr i64 %i.be to ptr
  store ptr %i.bf, ptr %i.ax, align 8
  store i64 %i.d, ptr %.0.i.i, align 8
  %i.bg = tail call i32 @llvm.smax.i32(i32 %i.al, i32 1)
  %.sroa.speculated115 = shl nuw nsw i32 %i.bg, 1
  %i.bh = add i32 %.sroa.speculated115, %i.j
  %i.bi = or i32 %i.bh, 1
  %i.bj = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE26NewProtectedWeakFixedArrayEi(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.bi) #22 ; 4 uses
  %i.bk = load i64, ptr %.0.i.i, align 8          ; 2 uses
  %i.bl = icmp sgt i32 %.050.lcssa, 1
  br i1 %i.bl, label %.lr.ph123, label %._crit_edge124

.lr.ph123:                                        ; preds = %_ZN2v88internal6HandleINS0_23ProtectedWeakFixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.bm = add i64 %i.bk, -1
  %i.bn = inttoptr i64 %i.bm to ptr
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %sext129 = zext nneg i32 %.050.lcssa to i64
  br label %bb.t

._crit_edge124.loopexit:                          ; preds = %bb.v
  %i.bp = sext i32 %.3 to i64
  %i.bq = shl nsw i64 %i.bp, 32
  br label %._crit_edge124

._crit_edge124:                                   ; preds = %._crit_edge124.loopexit, %_ZN2v88internal6HandleINS0_23ProtectedWeakFixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %.2.lcssa = phi i64 [ 4294967296, %_ZN2v88internal6HandleINS0_23ProtectedWeakFixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit ], [ %i.bq, %._crit_edge124.loopexit ]
  %i.br = load i64, ptr %i.bj, align 8
  %i.bs = add i64 %i.br, -1
  %i.bt = inttoptr i64 %i.bs to ptr
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  store atomic volatile i64 %.2.lcssa, ptr %i.bu monotonic, align 8
  %i.bv = load i64, ptr %1, align 8               ; 4 uses
  %i.bw = load i64, ptr %i.bj, align 8            ; 4 uses
  %i.bx = add i64 %i.bv, 23                       ; 3 uses
  %i.by = inttoptr i64 %i.bx to ptr
  store atomic volatile i64 %i.bw, ptr %i.by monotonic, align 8
  %i.bz = and i64 %i.bw, -262144
  %i.ca = inttoptr i64 %i.bz to ptr
  %i.cb = load i64, ptr %i.ca, align 262144
  %i.cc = and i64 %i.cb, 1
  %.not.i.i58 = icmp eq i64 %i.cc, 0
  br i1 %.not.i.i58, label %bb.r, label %bb.q

bb.q:                                             ; preds = %._crit_edge124
  tail call void @_ZN2v88internal12WriteBarrier10SharedSlowENS0_6TaggedINS0_13TrustedObjectEEENS0_14FullObjectSlotES4_(i64 %i.bv, i64 %i.bx, i64 %i.bw) #22
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %._crit_edge124
  %i.cd = and i64 %i.bv, -262144
  %i.ce = inttoptr i64 %i.cd to ptr
  %i.cf = load i64, ptr %i.ce, align 262144
  %i.cg = and i64 %i.cf, 32
  %.not.i.i.i59 = icmp eq i64 %i.cg, 0
  br i1 %.not.i.i.i59, label %_ZN2v88internal17WasmDispatchTable18set_protected_usesENS0_6TaggedINS0_23ProtectedWeakFixedArrayEEENS0_16WriteBarrierModeE.exit60, label %bb.s, !prof !7

bb.s:                                             ; preds = %bb.r
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_13TrustedObjectEEENS0_14FullObjectSlotES4_(i64 %i.bv, i64 %i.bx, i64 %i.bw) #22
  br label %_ZN2v88internal17WasmDispatchTable18set_protected_usesENS0_6TaggedINS0_23ProtectedWeakFixedArrayEEENS0_16WriteBarrierModeE.exit60

_ZN2v88internal17WasmDispatchTable18set_protected_usesENS0_6TaggedINS0_23ProtectedWeakFixedArrayEEENS0_16WriteBarrierModeE.exit60: ; preds = %bb.r, %bb.s
  %i.ch = load i64, ptr %i.bj, align 8
  br label %bb.w

bb.t:                                             ; preds = %.lr.ph123, %bb.v
  %indvars.iv127 = phi i64 [ 1, %.lr.ph123 ], [ %indvars.iv.next128, %bb.v ] ; 3 uses
  %.2121 = phi i32 [ 1, %.lr.ph123 ], [ %.3, %bb.v ] ; 3 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %indvars.iv127
  %i.cj = load atomic volatile i64, ptr %i.ci monotonic, align 8
  %i.ck = and i64 %i.cj, 4294967295
  %i.cl = icmp eq i64 %i.ck, 3
  br i1 %i.cl, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cm = load i64, ptr %i.bj, align 8
  %i.cn = trunc nuw nsw i64 %indvars.iv127 to i32
  tail call fastcc void @_ZN2v88internal12_GLOBAL__N_19CopyEntryENS0_6TaggedINS0_23ProtectedWeakFixedArrayEEEiS4_i(i64 %i.cm, i32 noundef %.2121, i64 %i.bk, i32 noundef %i.cn)
  %i.co = add nsw i32 %.2121, 2
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u
  %.3 = phi i32 [ %.2121, %bb.t ], [ %i.co, %bb.u ] ; 2 uses
  %indvars.iv.next128 = add nuw nsw i64 %indvars.iv127, 2 ; 2 uses
  %3 = icmp samesign ult i64 %indvars.iv.next128, %sext129
  br i1 %3, label %bb.t, label %._crit_edge124.loopexit, !llvm.loop !100

bb.w:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_113GetUsedLengthENS0_6TaggedINS0_23ProtectedWeakFixedArrayEEE.exit, %_ZN2v88internal17WasmDispatchTable18set_protected_usesENS0_6TaggedINS0_23ProtectedWeakFixedArrayEEENS0_16WriteBarrierModeE.exit60, %bb.n, %_ZN2v88internal17WasmDispatchTable18set_protected_usesENS0_6TaggedINS0_23ProtectedWeakFixedArrayEEENS0_16WriteBarrierModeE.exit
  %.sroa.047.2 = phi i64 [ %i.ac, %_ZN2v88internal17WasmDispatchTable18set_protected_usesENS0_6TaggedINS0_23ProtectedWeakFixedArrayEEENS0_16WriteBarrierModeE.exit ], [ %i.ch, %_ZN2v88internal17WasmDispatchTable18set_protected_usesENS0_6TaggedINS0_23ProtectedWeakFixedArrayEEENS0_16WriteBarrierModeE.exit60 ], [ %i.d, %bb.n ], [ %i.d, %_ZN2v88internal12_GLOBAL__N_113GetUsedLengthENS0_6TaggedINS0_23ProtectedWeakFixedArrayEEE.exit ]
  ret i64 %.sroa.047.2
}

declare ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE26NewProtectedWeakFixedArrayEi(ptr noundef nonnull align 1 dereferenceable(1), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN2v88internal12_GLOBAL__N_19CopyEntryENS0_6TaggedINS0_23ProtectedWeakFixedArrayEEEiS4_i(i64 %0, i32 noundef %1, i64 %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = add i64 %0, -1                           ; 5 uses
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = add i64 %2, -1
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = sext i32 %3 to i64
  %i.g = getelementptr [8 x i8], ptr %i.e, i64 %i.f ; 2 uses
  %i.h = load atomic volatile i64, ptr %i.g monotonic, align 8 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.j = sext i32 %1 to i64
  %i.k = getelementptr [8 x i8], ptr %i.i, i64 %i.j ; 3 uses
  store atomic volatile i64 %i.h, ptr %i.k monotonic, align 8
  %i.l = trunc i64 %i.h to i1
  %i.m = and i64 %i.h, 4294967295
  %i.n = icmp ne i64 %i.m, 3
  %i.o = and i1 %i.n, %i.l
  br i1 %i.o, label %bb.b, label %_ZN2v88internal15TaggedArrayBaseINS0_23ProtectedWeakFixedArrayENS0_28ProtectedWeakFixedArrayShapeENS0_19TrustedObjectLayoutEE3setEiNS0_6TaggedINS0_5UnionIJNS0_9MaybeWeakINS0_13TrustedObjectEEENS0_3SmiEEEEEENS0_16WriteBarrierModeE.exit

bb.b:                                             ; preds = %bb.a
  %i.p = and i64 %i.h, -3                         ; 2 uses
  %i.q = or disjoint i64 %i.a, 1                  ; 2 uses
  %i.r = ptrtoint ptr %i.k to i64                 ; 2 uses
  %i.s = and i64 %i.a, -262144
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = load i64, ptr %i.t, align 262144         ; 2 uses
  %i.v = and i64 %i.u, 32
  %.not.i.i.i.i.i = icmp eq i64 %i.v, 0
  %i.w = and i64 %i.u, 25
  %.not38.i.i.i.i.i = icmp eq i64 %i.w, 0
  br i1 %.not38.i.i.i.i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.x = and i64 %i.h, -262144
  %i.y = inttoptr i64 %i.x to ptr
  %.sroa.0.0.copyload.i28.i.i.i.i.i = load i64, ptr %i.y, align 262144
  %i.z = and i64 %.sroa.0.0.copyload.i28.i.i.i.i.i, 25
  %.not39.i.i.i.i.i = icmp eq i64 %i.z, 0
  br i1 %.not39.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.q, i64 noundef %i.r, i64 %i.p) #22
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  br i1 %.not.i.i.i.i.i, label %_ZN2v88internal15TaggedArrayBaseINS0_23ProtectedWeakFixedArrayENS0_28ProtectedWeakFixedArrayShapeENS0_19TrustedObjectLayoutEE3setEiNS0_6TaggedINS0_5UnionIJNS0_9MaybeWeakINS0_13TrustedObjectEEENS0_3SmiEEEEEENS0_16WriteBarrierModeE.exit, label %bb.f, !prof !7

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.q, i64 %i.r, i64 %i.p) #22
  br label %_ZN2v88internal15TaggedArrayBaseINS0_23ProtectedWeakFixedArrayENS0_28ProtectedWeakFixedArrayShapeENS0_19TrustedObjectLayoutEE3setEiNS0_6TaggedINS0_5UnionIJNS0_9MaybeWeakINS0_13TrustedObjectEEENS0_3SmiEEEEEENS0_16WriteBarrierModeE.exit

_ZN2v88internal15TaggedArrayBaseINS0_23ProtectedWeakFixedArrayENS0_28ProtectedWeakFixedArrayShapeENS0_19TrustedObjectLayoutEE3setEiNS0_6TaggedINS0_5UnionIJNS0_9MaybeWeakINS0_13TrustedObjectEEENS0_3SmiEEEEEENS0_16WriteBarrierModeE.exit: ; preds = %bb.a, %bb.e, %bb.f
  %i.aa = getelementptr i8, ptr %i.g, i64 8
  %i.ab = load atomic volatile i64, ptr %i.aa monotonic, align 8 ; 5 uses
  %i.ac = getelementptr i8, ptr %i.k, i64 8       ; 2 uses
  store atomic volatile i64 %i.ab, ptr %i.ac monotonic, align 8
  %i.ad = trunc i64 %i.ab to i1
  %i.ae = and i64 %i.ab, 4294967295
  %i.af = icmp ne i64 %i.ae, 3
  %i.ag = and i1 %i.af, %i.ad
  br i1 %i.ag, label %bb.g, label %_ZN2v88internal15TaggedArrayBaseINS0_23ProtectedWeakFixedArrayENS0_28ProtectedWeakFixedArrayShapeENS0_19TrustedObjectLayoutEE3setEiNS0_6TaggedINS0_5UnionIJNS0_9MaybeWeakINS0_13TrustedObjectEEENS0_3SmiEEEEEENS0_16WriteBarrierModeE.exit9

bb.g:                                             ; preds = %_ZN2v88internal15TaggedArrayBaseINS0_23ProtectedWeakFixedArrayENS0_28ProtectedWeakFixedArrayShapeENS0_19TrustedObjectLayoutEE3setEiNS0_6TaggedINS0_5UnionIJNS0_9MaybeWeakINS0_13TrustedObjectEEENS0_3SmiEEEEEENS0_16WriteBarrierModeE.exit
  %i.ah = and i64 %i.ab, -3                       ; 2 uses
  %i.ai = or disjoint i64 %i.a, 1                 ; 2 uses
  %i.aj = ptrtoint ptr %i.ac to i64               ; 2 uses
  %i.ak = and i64 %i.a, -262144
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = load i64, ptr %i.al, align 262144       ; 2 uses
  %i.an = and i64 %i.am, 32
  %.not.i.i.i.i.i5 = icmp eq i64 %i.an, 0
  %i.ao = and i64 %i.am, 25
  %.not38.i.i.i.i.i6 = icmp eq i64 %i.ao, 0
  br i1 %.not38.i.i.i.i.i6, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ap = and i64 %i.ab, -262144
  %i.aq = inttoptr i64 %i.ap to ptr
  %.sroa.0.0.copyload.i28.i.i.i.i.i7 = load i64, ptr %i.aq, align 262144
  %i.ar = and i64 %.sroa.0.0.copyload.i28.i.i.i.i.i7, 25
  %.not39.i.i.i.i.i8 = icmp eq i64 %i.ar, 0
  br i1 %.not39.i.i.i.i.i8, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.ai, i64 noundef %i.aj, i64 %i.ah) #22
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  br i1 %.not.i.i.i.i.i5, label %_ZN2v88internal15TaggedArrayBaseINS0_23ProtectedWeakFixedArrayENS0_28ProtectedWeakFixedArrayShapeENS0_19TrustedObjectLayoutEE3setEiNS0_6TaggedINS0_5UnionIJNS0_9MaybeWeakINS0_13TrustedObjectEEENS0_3SmiEEEEEENS0_16WriteBarrierModeE.exit9, label %bb.k, !prof !7

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.ai, i64 %i.aj, i64 %i.ah) #22
  br label %_ZN2v88internal15TaggedArrayBaseINS0_23ProtectedWeakFixedArrayENS0_28ProtectedWeakFixedArrayShapeENS0_19TrustedObjectLayoutEE3setEiNS0_6TaggedINS0_5UnionIJNS0_9MaybeWeakINS0_13TrustedObjectEEENS0_3SmiEEEEEENS0_16WriteBarrierModeE.exit9

_ZN2v88internal15TaggedArrayBaseINS0_23ProtectedWeakFixedArrayENS0_28ProtectedWeakFixedArrayShapeENS0_19TrustedObjectLayoutEE3setEiNS0_6TaggedINS0_5UnionIJNS0_9MaybeWeakINS0_13TrustedObjectEEENS0_3SmiEEEEEENS0_16WriteBarrierModeE.exit9: ; preds = %_ZN2v88internal15TaggedArrayBaseINS0_23ProtectedWeakFixedArrayENS0_28ProtectedWeakFixedArrayShapeENS0_19TrustedObjectLayoutEE3setEiNS0_6TaggedINS0_5UnionIJNS0_9MaybeWeakINS0_13TrustedObjectEEENS0_3SmiEEEEEENS0_16WriteBarrierModeE.exit, %bb.j, %bb.k
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZN2v88internal17WasmDispatchTable3NewEPNS0_7IsolateEiNS0_4wasm18CanonicalValueTypeEb(ptr noundef nonnull %0, i32 noundef %1, i32 %2, i1 noundef zeroext %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call ptr @_ZN2v88internal7Factory20NewWasmDispatchTableEiNS0_4wasm18CanonicalValueTypeEb(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1, i32 %2, i1 noundef zeroext %3) #22
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZNK2v88internal16WasmCapiFunction16MatchesSignatureENS0_4wasm18CanonicalTypeIndexE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i32 %1) local_unnamed_addr #0 align 2 {
bb.a:
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %0, align 8
  %i.a = add i64 %.sroa.0.0.copyload.i.i.i, 31
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = load atomic volatile i64, ptr %i.b monotonic, align 8
  %i.d = add i64 %i.c, 7
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load atomic volatile i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.g = add i64 %i.f, -1
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load atomic volatile i64, ptr %i.h monotonic, align 8
  %i.j = add i64 %i.i, 11
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = load atomic volatile i16, ptr %i.k monotonic, align 2
  %i.m = icmp eq i16 %i.l, 178
  br i1 %i.m, label %_ZNK2v88internal18SharedFunctionInfo23wasm_capi_function_dataEv.exit, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.67) #24
  unreachable

_ZNK2v88internal18SharedFunctionInfo23wasm_capi_function_dataEv.exit: ; preds = %bb.a
  %i.n = add i64 %i.f, 39
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = load i64, ptr %i.o, align 8
  %i.q = lshr i64 %i.p, 32
  %i.r = trunc nuw i64 %i.q to i32
  %i.s = icmp eq i32 %1, %i.r
  ret i1 %i.s
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal20WasmExceptionPackage3NewEPNS0_7IsolateENS0_12DirectHandleINS0_16WasmExceptionTagEEEi(ptr noundef nonnull %0, ptr nofree readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewFixedArrayEiNS0_14AllocationTypeENS0_14AllocationHintE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %2, i8 noundef zeroext 0, i8 0) #22
  %i.b = tail call ptr @_ZN2v88internal20WasmExceptionPackage3NewEPNS0_7IsolateENS0_12DirectHandleINS0_16WasmExceptionTagEEENS4_INS0_10FixedArrayEEE(ptr noundef nonnull %0, ptr %1, ptr %i.a)
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal20WasmExceptionPackage3NewEPNS0_7IsolateENS0_12DirectHandleINS0_16WasmExceptionTagEEENS4_INS0_10FixedArrayEEE(ptr noundef %0, ptr nofree readonly captures(none) %1, ptr nofree readonly captures(none) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 344
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.a, align 8
  %i.b = add i64 %.sroa.0.0.copyload.i.i, -1
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load atomic volatile i64, ptr %i.c monotonic, align 8
  %i.e = add i64 %i.d, 31
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load i64, ptr %i.f, align 8              ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = icmp eq ptr %i.i, %i.k
  br i1 %i.l, label %bb.b, label %_ZN2v88internal7Isolate14native_contextEv.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.m = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(64320) %0) #22
  br label %_ZN2v88internal7Isolate14native_contextEv.exit

_ZN2v88internal7Isolate14native_contextEv.exit:   ; preds = %bb.a, %bb.b
  %.0.i.i.i = phi ptr [ %i.m, %bb.b ], [ %i.i, %bb.a ] ; 2 uses
  %i.n = ptrtoint ptr %.0.i.i.i to i64
  %i.o = add i64 %i.n, 8
  %i.p = inttoptr i64 %i.o to ptr
  store ptr %i.p, ptr %i.h, align 8
  store i64 %i.g, ptr %.0.i.i.i, align 8
  %i.q = add i64 %i.g, 1927
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = load atomic volatile i64, ptr %i.r monotonic, align 8
  %i.t = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.u = load ptr, ptr %i.j, align 8
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %bb.c, label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit, !prof !5

bb.c:                                             ; preds = %_ZN2v88internal7Isolate14native_contextEv.exit
  %i.w = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #22
  br label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit

_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit: ; preds = %_ZN2v88internal7Isolate14native_contextEv.exit, %bb.c
  %.0.i = phi ptr [ %i.w, %bb.c ], [ %i.t, %_ZN2v88internal7Isolate14native_contextEv.exit ] ; 3 uses
  %i.x = ptrtoint ptr %.0.i to i64
end_hunk_1
