inline.NumInlined: 1332
inline.NumDeleted: 270
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN2v88internal8compiler14WasmGCLowering26ReduceWasmTypeCastAbstractEPNS1_4NodeE:bb.a
  %i.hi = load <2 x ptr>, ptr %i.hg, align 8
  store <2 x ptr> %i.hi, ptr %i.hh, align 8
  %i.hj = call noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %i.hc, ptr noundef %i.hf, i32 noundef 3, ptr noundef nonnull %3, i1 noundef zeroext false) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  %i.hk = call noundef ptr @_ZN2v88internal8compiler14GraphAssembler7AddNodeEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(184) %i.bs, ptr noundef %i.hj) #9 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #9
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.hm = load ptr, ptr %i.hl, align 8            ; 2 uses
  %.not.i69 = icmp eq ptr %i.hm, null
  br i1 %.not.i69, label %_ZN2v88internal8compiler14WasmGCLowering20UpdateSourcePositionEPNS1_4NodeES4_.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.hn = load ptr, ptr %i.hg, align 8
  %i.ho = call i64 @_ZNK2v88internal8compiler19SourcePositionTable17GetSourcePositionEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(72) %i.hm, ptr noundef nonnull %1) #9
  %i.hp = load ptr, ptr %i.hl, align 8
  call void @_ZN2v88internal8compiler19SourcePositionTable17SetSourcePositionEPNS1_4NodeENS0_14SourcePositionE(ptr noundef nonnull align 8 dereferenceable(72) %i.hp, ptr noundef %i.hn, i64 %i.ho) #9
  br label %_ZN2v88internal8compiler14WasmGCLowering20UpdateSourcePositionEPNS1_4NodeES4_.exit

bb.ak:                                            ; preds = %_ZN2v88internal8compiler14WasmGCLowering20UpdateSourcePositionEPNS1_4NodeES4_.exit64
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #10
  unreachable

_ZN2v88internal8compiler14WasmGCLowering20UpdateSourcePositionEPNS1_4NodeES4_.exit: ; preds = %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.aa, %bb.z, %bb.w, %bb.v, %bb.m, %_ZN2v88internal8compiler14WasmGCLowering6IsNullEPNS1_4NodeENS0_4wasm9ValueTypeE.exit
  %i.hq = load i64, ptr %i.bx, align 8
  %.not = icmp eq i64 %i.hq, 0
  br i1 %.not, label %_ZN2v88internal8compiler14GraphAssembler4BindILm0EEEvPNS1_19GraphAssemblerLabelIXT_EEE.exit, label %bb.al

bb.al:                                            ; preds = %_ZN2v88internal8compiler14WasmGCLowering20UpdateSourcePositionEPNS1_4NodeES4_.exit
  call void @_ZN2v88internal8compiler14GraphAssembler10MergeStateIJEEEvPNS1_6detail29GraphAssemblerLabelForXHelperIPNS1_4NodeEvJDpT_EE4TypeES9_(ptr noundef nonnull align 8 dereferenceable(161) %i.bs, ptr noundef nonnull %11)
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.hs = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.ht = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 2 uses
  %i.hu = load ptr, ptr %i.hs, align 8
  %i.hv = load <2 x ptr>, ptr %i.ht, align 8
  store <2 x ptr> %i.hv, ptr %i.hr, align 8
  store i8 1, ptr %11, align 8
  %i.hw = load i64, ptr %i.bx, align 8
  %i.hx = icmp ugt i64 %i.hw, 1
  %i.hy = load i32, ptr %i.bv, align 4
  %i.hz = icmp eq i32 %i.hy, 2
  %or.cond85 = select i1 %i.hx, i1 true, i1 %i.hz
  br i1 %or.cond85, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.ia = call noundef ptr @_ZN2v88internal8compiler14GraphAssembler7AddNodeEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(161) %i.bs, ptr noundef %i.hu) #9 ; 0 uses
  %i.ib = load ptr, ptr %i.ht, align 8
  %i.ic = call noundef ptr @_ZN2v88internal8compiler14GraphAssembler7AddNodeEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(161) %i.bs, ptr noundef %i.ib) #9 ; 0 uses
  br label %_ZN2v88internal8compiler14GraphAssembler4BindILm0EEEvPNS1_19GraphAssemblerLabelIXT_EEE.exit

bb.an:                                            ; preds = %bb.al
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.if = load ptr, ptr %i.ie, align 8            ; 2 uses
  %i.ig = load ptr, ptr %i.if, align 8
  %i.ih = getelementptr inbounds nuw i8, ptr %i.if, i64 8
  %i.ii = load ptr, ptr %i.ih, align 8
  %i.ij = call noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder5MergeEi(ptr noundef nonnull align 8 dereferenceable(16) %i.ii, i32 noundef 1) #9
  %i.ik = load ptr, ptr %i.id, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  store ptr %i.ik, ptr %2, align 8
  %i.il = call noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %i.ig, ptr noundef %i.ij, i32 noundef 1, ptr noundef nonnull %2, i1 noundef zeroext false) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  %i.im = call noundef ptr @_ZN2v88internal8compiler14GraphAssembler7AddNodeEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(161) %i.bs, ptr noundef %i.il) #9
  store ptr %i.im, ptr %i.id, align 8
  br label %_ZN2v88internal8compiler14GraphAssembler4BindILm0EEEvPNS1_19GraphAssemblerLabelIXT_EEE.exit

_ZN2v88internal8compiler14GraphAssembler4BindILm0EEEvPNS1_19GraphAssemblerLabelIXT_EEE.exit: ; preds = %bb.an, %bb.am, %_ZN2v88internal8compiler14WasmGCLowering20UpdateSourcePositionEPNS1_4NodeES4_.exit
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.io = load ptr, ptr %i.in, align 8
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.iq = load ptr, ptr %i.ip, align 8
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.is = load ptr, ptr %i.ir, align 8            ; 2 uses
  %i.it = load ptr, ptr %i.is, align 8
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 40
  %i.iv = load ptr, ptr %i.iu, align 8
  call void %i.iv(ptr noundef nonnull align 8 dereferenceable(8) %i.is, ptr noundef nonnull %1, ptr noundef %i.k, ptr noundef %i.io, ptr noundef %i.iq) #9, !inline_history !16
  call void @_ZN2v88internal8compiler4Node4KillEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #9
  ret ptr %i.k
}

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZN2v88internal8compiler14WasmGCLowering19ReduceAssertNotNullEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"struct.std::array.100", align 8   ; 5 uses
  %3 = alloca %"struct.std::array.100", align 8   ; 5 uses
  %i.a = load ptr, ptr %1, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load i32, ptr %i.b, align 8
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3) #10
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.f = load i32, ptr %i.e, align 4
  %i.g = tail call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties15HasContextInputEPKNS1_8OperatorE(ptr noundef nonnull %i.a) #9
  %i.h = load ptr, ptr %1, align 8
  %i.i = tail call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties18HasFrameStateInputEPKNS1_8OperatorE(ptr noundef %i.h) #9
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4
  %i.l = and i32 %i.k, 251658240
  %.not.i.i.i = icmp eq i32 %i.l, 251658240
  %i.m = ptrtoint ptr %1 to i64
  %i.n = add i64 %i.m, 32
  %i.o = inttoptr i64 %i.n to ptr                 ; 6 uses
  br i1 %.not.i.i.i, label %bb.d, label %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit

bb.d:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = add i64 %i.q, 16
  %i.s = inttoptr i64 %i.r to ptr
  br label %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit

_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit: ; preds = %bb.c, %bb.d
  %.sink.i.i.i = phi ptr [ %i.s, %bb.d ], [ %i.o, %bb.c ]
  %i.t = zext i1 %i.g to i32
  %i.u = zext i1 %i.i to i32
  %i.v = add i32 %i.f, %i.t
  %i.w = add i32 %i.v, %i.u
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr inbounds [8 x i8], ptr %.sink.i.i.i, i64 %i.x
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = load ptr, ptr %1, align 8               ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 28
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = icmp sgt i32 %i.ac, 0
  br i1 %i.ad, label %bb.f, label %bb.e, !prof !8

bb.e:                                             ; preds = %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4) #10
  unreachable

bb.f:                                             ; preds = %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 20
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = tail call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties15HasContextInputEPKNS1_8OperatorE(ptr noundef nonnull %i.aa) #9
  %i.ah = load ptr, ptr %1, align 8
  %i.ai = tail call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties18HasFrameStateInputEPKNS1_8OperatorE(ptr noundef %i.ah) #9
  %i.aj = load ptr, ptr %1, align 8               ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load i32, ptr %i.ak, align 8
  %i.am = load i32, ptr %i.j, align 4
  %i.an = and i32 %i.am, 251658240
  %.not.i.i.i23 = icmp eq i32 %i.an, 251658240    ; 2 uses
  br i1 %.not.i.i.i23, label %bb.g, label %_ZN2v88internal8compiler14NodeProperties15GetControlInputEPNS1_4NodeEi.exit

bb.g:                                             ; preds = %bb.f
  %i.ao = load ptr, ptr %i.o, align 8
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = add i64 %i.ap, 16
  %i.ar = inttoptr i64 %i.aq to ptr
  br label %_ZN2v88internal8compiler14NodeProperties15GetControlInputEPNS1_4NodeEi.exit

_ZN2v88internal8compiler14NodeProperties15GetControlInputEPNS1_4NodeEi.exit: ; preds = %bb.f, %bb.g
  %.sink.i.i.i24 = phi ptr [ %i.ar, %bb.g ], [ %i.o, %bb.f ]
  %i.as = zext i1 %i.ag to i32
  %i.at = zext i1 %i.ai to i32
  %i.au = add i32 %i.af, %i.as
  %i.av = add i32 %i.au, %i.at
  %i.aw = add i32 %i.av, %i.al
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds [8 x i8], ptr %.sink.i.i.i24, i64 %i.ax
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aj, i64 20
  %i.bb = load i32, ptr %i.ba, align 4
  %i.bc = icmp sgt i32 %i.bb, 0
  br i1 %i.bc, label %bb.i, label %bb.h, !prof !8

bb.h:                                             ; preds = %_ZN2v88internal8compiler14NodeProperties15GetControlInputEPNS1_4NodeEi.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.8) #10
  unreachable

bb.i:                                             ; preds = %_ZN2v88internal8compiler14NodeProperties15GetControlInputEPNS1_4NodeEi.exit
  br i1 %.not.i.i.i23, label %bb.j, label %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit

bb.j:                                             ; preds = %bb.i
  %i.bd = load ptr, ptr %i.o, align 8
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = add i64 %i.be, 16
  %i.bg = inttoptr i64 %i.bf to ptr
  br label %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit

_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit: ; preds = %bb.i, %bb.j
  %.sink.i.i.i26 = phi ptr [ %i.bg, %bb.j ], [ %i.o, %bb.i ]
  %i.bh = load ptr, ptr %.sink.i.i.i26, align 8   ; 5 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 13 uses
  tail call void @_ZN2v88internal8compiler14GraphAssembler23InitializeEffectControlEPNS1_4NodeES4_(ptr noundef nonnull align 8 dereferenceable(161) %i.bi, ptr noundef %i.z, ptr noundef %i.az) #9
  %i.bj = load ptr, ptr %1, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 40
  %i.bl = load i64, ptr %i.bk, align 4            ; 2 uses
  %.sroa.036.0.extract.trunc = trunc i64 %i.bl to i32 ; 8 uses
  %.sroa.7.0.extract.shift = lshr i64 %i.bl, 32   ; 2 uses
  %.sroa.7.0.extract.trunc = trunc nuw i64 %.sroa.7.0.extract.shift to i32
  %i.bm = icmp eq i64 %.sroa.7.0.extract.shift, 1382
  br i1 %i.bm, label %bb.k, label %bb.t

bb.k:                                             ; preds = %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit
  %i.bn = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 852), align 4, !range !5, !noundef !6
  %i.bo = trunc nuw i8 %i.bn to i1
  br i1 %i.bo, label %_ZN2v88internal8compiler14WasmGCLowering20UpdateSourcePositionEPNS1_4NodeES4_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bq = load i32, ptr %i.bp, align 8
  %i.br = icmp eq i32 %i.bq, 0
  br i1 %i.br, label %_ZNK2v88internal4wasm13ValueTypeBase13use_wasm_nullEv.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bs = icmp eq i32 %.sroa.036.0.extract.trunc, 3073
  br i1 %i.bs, label %.thread, label %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit, !prof !8

_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit: ; preds = %bb.m
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.bu = load ptr, ptr %i.bt, align 8            ; 2 uses
  %i.bv = tail call noundef zeroext i1 @_ZN2v88internal4wasm15IsSubtypeOfImplENS1_9ValueTypeES2_PKNS1_10WasmModuleES5_(i32 3073, i32 %.sroa.036.0.extract.trunc, ptr noundef %i.bu, ptr noundef %i.bu) #9
  br i1 %i.bv, label %_ZNK2v88internal4wasm13ValueTypeBase13use_wasm_nullEv.exit, label %bb.n

bb.n:                                             ; preds = %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit
  %i.bw = and i32 %.sroa.036.0.extract.trunc, 3
  %i.bx = icmp eq i32 %i.bw, 3
  br i1 %i.bx, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.by = and i32 %.sroa.036.0.extract.trunc, 268435427
  switch i32 %i.by, label %bb.r [
    i32 3841, label %_ZNK2v88internal4wasm13ValueTypeBase13use_wasm_nullEv.exit
    i32 769, label %_ZNK2v88internal4wasm13ValueTypeBase13use_wasm_nullEv.exit
    i32 1537, label %_ZNK2v88internal4wasm13ValueTypeBase13use_wasm_nullEv.exit
  ]

_ZNK2v88internal4wasm13ValueTypeBase13use_wasm_nullEv.exit: ; preds = %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit, %bb.l, %bb.o, %bb.o, %bb.o
  %i.bz = and i32 %.sroa.036.0.extract.trunc, 3
  %i.ca = icmp eq i32 %i.bz, 3
  br i1 %i.ca, label %_ZN2v88internal8compiler14WasmGCLowering6IsNullEPNS1_4NodeENS0_4wasm9ValueTypeE.exit, label %bb.p

bb.p:                                             ; preds = %_ZNK2v88internal4wasm13ValueTypeBase13use_wasm_nullEv.exit
  %i.cb = and i32 %.sroa.036.0.extract.trunc, 268435427
  switch i32 %i.cb, label %.thread [
    i32 3841, label %_ZN2v88internal8compiler14WasmGCLowering6IsNullEPNS1_4NodeENS0_4wasm9ValueTypeE.exit
    i32 769, label %_ZN2v88internal8compiler14WasmGCLowering6IsNullEPNS1_4NodeENS0_4wasm9ValueTypeE.exit
    i32 1537, label %_ZN2v88internal8compiler14WasmGCLowering6IsNullEPNS1_4NodeENS0_4wasm9ValueTypeE.exit
  ]

.thread:                                          ; preds = %bb.m, %bb.p
  br label %_ZN2v88internal8compiler14WasmGCLowering6IsNullEPNS1_4NodeENS0_4wasm9ValueTypeE.exit

_ZN2v88internal8compiler14WasmGCLowering6IsNullEPNS1_4NodeENS0_4wasm9ValueTypeE.exit: ; preds = %_ZNK2v88internal4wasm13ValueTypeBase13use_wasm_nullEv.exit, %bb.p, %bb.p, %bb.p, %.thread
  %i.cc = phi i64 [ 536, %bb.p ], [ 536, %bb.p ], [ 536, %bb.p ], [ 1976, %_ZNK2v88internal4wasm13ValueTypeBase13use_wasm_nullEv.exit ], [ 1976, %.thread ]
  %i.cd = tail call noundef ptr @_ZN2v88internal8compiler14GraphAssembler16LoadRootRegisterEv(ptr noundef nonnull align 8 dereferenceable(161) %i.bi) #9
  %i.ce = tail call noundef ptr @_ZN2v88internal8compiler14GraphAssembler14IntPtrConstantEl(ptr noundef nonnull align 8 dereferenceable(184) %i.bi, i64 noundef %i.cc) #9
  %i.cf = tail call noundef ptr @_ZN2v88internal8compiler18WasmGraphAssembler13LoadImmutableENS0_11MachineTypeEPNS1_4NodeES5_(ptr noundef nonnull align 8 dereferenceable(184) %i.bi, i16 5, ptr noundef %i.cd, ptr noundef %i.ce) #9
  %i.cg = tail call noundef ptr @_ZN2v88internal8compiler14GraphAssembler11TaggedEqualEPNS1_4NodeES4_(ptr noundef nonnull align 8 dereferenceable(161) %i.bi, ptr noundef %i.bh, ptr noundef %i.cf) #9
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ci = load ptr, ptr %i.ch, align 8            ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8
  %i.cm = tail call noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder6TrapIfENS1_6TrapIdEb(ptr noundef nonnull align 8 dereferenceable(16) %i.cl, i32 noundef 1382, i1 noundef zeroext false) #9
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  store ptr %i.cg, ptr %3, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cp = load <2 x ptr>, ptr %i.cn, align 8
  store <2 x ptr> %i.cp, ptr %i.co, align 8
  %i.cq = call noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %i.cj, ptr noundef %i.cm, i32 noundef 3, ptr noundef nonnull %3, i1 noundef zeroext false) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  %i.cr = call noundef ptr @_ZN2v88internal8compiler14GraphAssembler7AddNodeEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(184) %i.bi, ptr noundef %i.cq) #9 ; 0 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.ct = load ptr, ptr %i.cs, align 8            ; 2 uses
  %.not.i = icmp eq ptr %i.ct, null
  br i1 %.not.i, label %_ZN2v88internal8compiler14WasmGCLowering20UpdateSourcePositionEPNS1_4NodeES4_.exit, label %bb.q

bb.q:                                             ; preds = %_ZN2v88internal8compiler14WasmGCLowering6IsNullEPNS1_4NodeENS0_4wasm9ValueTypeE.exit
  %i.cu = load ptr, ptr %i.cn, align 8
  %i.cv = call i64 @_ZNK2v88internal8compiler19SourcePositionTable17GetSourcePositionEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(72) %i.ct, ptr noundef nonnull %1) #9
  %i.cw = load ptr, ptr %i.cs, align 8
  call void @_ZN2v88internal8compiler19SourcePositionTable17SetSourcePositionEPNS1_4NodeENS0_14SourcePositionE(ptr noundef nonnull align 8 dereferenceable(72) %i.cw, ptr noundef %i.cu, i64 %i.cv) #9
  br label %_ZN2v88internal8compiler14WasmGCLowering20UpdateSourcePositionEPNS1_4NodeES4_.exit

bb.r:                                             ; preds = %bb.o, %bb.n
  %i.cx = tail call noundef ptr @_ZN2v88internal8compiler14GraphAssembler14IntPtrConstantEl(ptr noundef nonnull align 8 dereferenceable(161) %i.bi, i64 noundef 7) #9
  %i.cy = tail call noundef ptr @_ZN2v88internal8compiler14GraphAssembler14LoadTrapOnNullENS0_11MachineTypeEPNS1_4NodeES5_(ptr noundef nonnull align 8 dereferenceable(161) %i.bi, i16 516, ptr noundef %i.bh, ptr noundef %i.cx) #9
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 8            ; 2 uses
  %.not.i27 = icmp eq ptr %i.da, null
  br i1 %.not.i27, label %_ZN2v88internal8compiler14WasmGCLowering20UpdateSourcePositionEPNS1_4NodeES4_.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.db = tail call i64 @_ZNK2v88internal8compiler19SourcePositionTable17GetSourcePositionEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(72) %i.da, ptr noundef nonnull %1) #9
  %i.dc = load ptr, ptr %i.cz, align 8
  tail call void @_ZN2v88internal8compiler19SourcePositionTable17SetSourcePositionEPNS1_4NodeENS0_14SourcePositionE(ptr noundef nonnull align 8 dereferenceable(72) %i.dc, ptr noundef %i.cy, i64 %i.db) #9
  br label %_ZN2v88internal8compiler14WasmGCLowering20UpdateSourcePositionEPNS1_4NodeES4_.exit

bb.t:                                             ; preds = %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit
  %i.dd = and i32 %.sroa.036.0.extract.trunc, 3
  %i.de = icmp eq i32 %i.dd, 3
  br i1 %i.de, label %_ZN2v88internal8compiler14WasmGCLowering6IsNullEPNS1_4NodeENS0_4wasm9ValueTypeE.exit29, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.df = and i32 %.sroa.036.0.extract.trunc, 268435427
  switch i32 %i.df, label %bb.v [
    i32 3841, label %_ZN2v88internal8compiler14WasmGCLowering6IsNullEPNS1_4NodeENS0_4wasm9ValueTypeE.exit29
    i32 769, label %_ZN2v88internal8compiler14WasmGCLowering6IsNullEPNS1_4NodeENS0_4wasm9ValueTypeE.exit29
    i32 1537, label %_ZN2v88internal8compiler14WasmGCLowering6IsNullEPNS1_4NodeENS0_4wasm9ValueTypeE.exit29
  ]

bb.v:                                             ; preds = %bb.u
  br label %_ZN2v88internal8compiler14WasmGCLowering6IsNullEPNS1_4NodeENS0_4wasm9ValueTypeE.exit29

_ZN2v88internal8compiler14WasmGCLowering6IsNullEPNS1_4NodeENS0_4wasm9ValueTypeE.exit29: ; preds = %bb.t, %bb.u, %bb.u, %bb.u, %bb.v
  %i.dg = phi i64 [ 536, %bb.u ], [ 536, %bb.u ], [ 536, %bb.u ], [ 1976, %bb.t ], [ 1976, %bb.v ]
  %i.dh = tail call noundef ptr @_ZN2v88internal8compiler14GraphAssembler16LoadRootRegisterEv(ptr noundef nonnull align 8 dereferenceable(161) %i.bi) #9
  %i.di = tail call noundef ptr @_ZN2v88internal8compiler14GraphAssembler14IntPtrConstantEl(ptr noundef nonnull align 8 dereferenceable(184) %i.bi, i64 noundef %i.dg) #9
  %i.dj = tail call noundef ptr @_ZN2v88internal8compiler18WasmGraphAssembler13LoadImmutableENS0_11MachineTypeEPNS1_4NodeES5_(ptr noundef nonnull align 8 dereferenceable(184) %i.bi, i16 5, ptr noundef %i.dh, ptr noundef %i.di) #9
  %i.dk = tail call noundef ptr @_ZN2v88internal8compiler14GraphAssembler11TaggedEqualEPNS1_4NodeES4_(ptr noundef nonnull align 8 dereferenceable(161) %i.bi, ptr noundef %i.bh, ptr noundef %i.dj) #9
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.dm = load ptr, ptr %i.dl, align 8            ; 2 uses
  %i.dn = load ptr, ptr %i.dm, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.dp = load ptr, ptr %i.do, align 8
  %i.dq = tail call noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder6TrapIfENS1_6TrapIdEb(ptr noundef nonnull align 8 dereferenceable(16) %i.dp, i32 noundef %.sroa.7.0.extract.trunc, i1 noundef zeroext false) #9
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  store ptr %i.dk, ptr %2, align 8
  %i.ds = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dt = load <2 x ptr>, ptr %i.dr, align 8
  store <2 x ptr> %i.dt, ptr %i.ds, align 8
  %i.du = call noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %i.dn, ptr noundef %i.dq, i32 noundef 3, ptr noundef nonnull %2, i1 noundef zeroext false) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  %i.dv = call noundef ptr @_ZN2v88internal8compiler14GraphAssembler7AddNodeEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(184) %i.bi, ptr noundef %i.du) #9 ; 0 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.dx = load ptr, ptr %i.dw, align 8            ; 2 uses
  %.not.i30 = icmp eq ptr %i.dx, null
  br i1 %.not.i30, label %_ZN2v88internal8compiler14WasmGCLowering20UpdateSourcePositionEPNS1_4NodeES4_.exit, label %bb.w

bb.w:                                             ; preds = %_ZN2v88internal8compiler14WasmGCLowering6IsNullEPNS1_4NodeENS0_4wasm9ValueTypeE.exit29
  %i.dy = load ptr, ptr %i.dr, align 8
  %i.dz = call i64 @_ZNK2v88internal8compiler19SourcePositionTable17GetSourcePositionEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(72) %i.dx, ptr noundef nonnull %1) #9
  %i.ea = load ptr, ptr %i.dw, align 8
  call void @_ZN2v88internal8compiler19SourcePositionTable17SetSourcePositionEPNS1_4NodeENS0_14SourcePositionE(ptr noundef nonnull align 8 dereferenceable(72) %i.ea, ptr noundef %i.dy, i64 %i.dz) #9
  br label %_ZN2v88internal8compiler14WasmGCLowering20UpdateSourcePositionEPNS1_4NodeES4_.exit

_ZN2v88internal8compiler14WasmGCLowering20UpdateSourcePositionEPNS1_4NodeES4_.exit: ; preds = %bb.w, %_ZN2v88internal8compiler14WasmGCLowering6IsNullEPNS1_4NodeENS0_4wasm9ValueTypeE.exit29, %bb.s, %bb.r, %bb.q, %_ZN2v88internal8compiler14WasmGCLowering6IsNullEPNS1_4NodeENS0_4wasm9ValueTypeE.exit, %bb.k
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ec = load ptr, ptr %i.eb, align 8
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ee = load ptr, ptr %i.ed, align 8
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.eg = load ptr, ptr %i.ef, align 8            ; 2 uses
  %i.eh = load ptr, ptr %i.eg, align 8
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 40
  %i.ej = load ptr, ptr %i.ei, align 8
  call void %i.ej(ptr noundef nonnull align 8 dereferenceable(8) %i.eg, ptr noundef nonnull %1, ptr noundef %i.bh, ptr noundef %i.ec, ptr noundef %i.ee) #9, !inline_history !16
  call void @_ZN2v88internal8compiler4Node4KillEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #9
  ret ptr %i.bh
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal8compiler14WasmGCLowering10ReduceNullEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.01.0.copyload = load i32, ptr %i.b, align 4 ; 2 uses
  %i.c = and i32 %.sroa.01.0.copyload, 3
  %i.d = icmp eq i32 %i.c, 3
  br i1 %i.d, label %_ZN2v88internal8compiler14WasmGCLowering4NullENS0_4wasm9ValueTypeE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %.sroa.01.0.copyload, 268435427
  switch i32 %i.e, label %bb.c [
    i32 3841, label %_ZN2v88internal8compiler14WasmGCLowering4NullENS0_4wasm9ValueTypeE.exit
    i32 769, label %_ZN2v88internal8compiler14WasmGCLowering4NullENS0_4wasm9ValueTypeE.exit
    i32 1537, label %_ZN2v88internal8compiler14WasmGCLowering4NullENS0_4wasm9ValueTypeE.exit
  ]

bb.c:                                             ; preds = %bb.b
  br label %_ZN2v88internal8compiler14WasmGCLowering4NullENS0_4wasm9ValueTypeE.exit

_ZN2v88internal8compiler14WasmGCLowering4NullENS0_4wasm9ValueTypeE.exit: ; preds = %bb.a, %bb.b, %bb.b, %bb.b, %bb.c
  %i.f = phi i64 [ 536, %bb.b ], [ 536, %bb.b ], [ 536, %bb.b ], [ 1976, %bb.a ], [ 1976, %bb.c ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.h = tail call noundef ptr @_ZN2v88internal8compiler14GraphAssembler16LoadRootRegisterEv(ptr noundef nonnull align 8 dereferenceable(161) %i.g) #9
  %i.i = tail call noundef ptr @_ZN2v88internal8compiler14GraphAssembler14IntPtrConstantEl(ptr noundef nonnull align 8 dereferenceable(184) %i.g, i64 noundef %i.f) #9
  %i.j = tail call noundef ptr @_ZN2v88internal8compiler18WasmGraphAssembler13LoadImmutableENS0_11MachineTypeEPNS1_4NodeES5_(ptr noundef nonnull align 8 dereferenceable(184) %i.g, i16 5, ptr noundef %i.h, ptr noundef %i.i) #9
  ret ptr %i.j
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal8compiler14WasmGCLowering12ReduceIsNullEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.c = load i32, ptr %i.b, align 4
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.8) #10
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.f = load i32, ptr %i.e, align 4
  %i.g = and i32 %i.f, 251658240
  %.not.i.i.i = icmp eq i32 %i.g, 251658240
  %i.h = ptrtoint ptr %1 to i64
  %i.i = add i64 %i.h, 32
  %i.j = inttoptr i64 %i.i to ptr                 ; 2 uses
  br i1 %.not.i.i.i, label %bb.d, label %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = add i64 %i.l, 16
  %i.n = inttoptr i64 %i.m to ptr
  br label %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit

_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit: ; preds = %bb.c, %bb.d
  %.sink.i.i.i = phi ptr [ %i.n, %bb.d ], [ %i.j, %bb.c ]
  %i.o = load ptr, ptr %.sink.i.i.i, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.01.0.copyload = load i32, ptr %i.p, align 4 ; 2 uses
  %i.q = and i32 %.sroa.01.0.copyload, 3
  %i.r = icmp eq i32 %i.q, 3
  br i1 %i.r, label %_ZN2v88internal8compiler14WasmGCLowering6IsNullEPNS1_4NodeENS0_4wasm9ValueTypeE.exit, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit
  %i.s = and i32 %.sroa.01.0.copyload, 268435427
  switch i32 %i.s, label %bb.f [
    i32 3841, label %_ZN2v88internal8compiler14WasmGCLowering6IsNullEPNS1_4NodeENS0_4wasm9ValueTypeE.exit
    i32 769, label %_ZN2v88internal8compiler14WasmGCLowering6IsNullEPNS1_4NodeENS0_4wasm9ValueTypeE.exit
    i32 1537, label %_ZN2v88internal8compiler14WasmGCLowering6IsNullEPNS1_4NodeENS0_4wasm9ValueTypeE.exit
  ]

bb.f:                                             ; preds = %bb.e
  br label %_ZN2v88internal8compiler14WasmGCLowering6IsNullEPNS1_4NodeENS0_4wasm9ValueTypeE.exit

_ZN2v88internal8compiler14WasmGCLowering6IsNullEPNS1_4NodeENS0_4wasm9ValueTypeE.exit: ; preds = %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit, %bb.e, %bb.e, %bb.e, %bb.f
  %i.t = phi i64 [ 536, %bb.e ], [ 536, %bb.e ], [ 536, %bb.e ], [ 1976, %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit ], [ 1976, %bb.f ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.v = tail call noundef ptr @_ZN2v88internal8compiler14GraphAssembler16LoadRootRegisterEv(ptr noundef nonnull align 8 dereferenceable(161) %i.u) #9
  %i.w = tail call noundef ptr @_ZN2v88internal8compiler14GraphAssembler14IntPtrConstantEl(ptr noundef nonnull align 8 dereferenceable(184) %i.u, i64 noundef %i.t) #9
  %i.x = tail call noundef ptr @_ZN2v88internal8compiler18WasmGraphAssembler13LoadImmutableENS0_11MachineTypeEPNS1_4NodeES5_(ptr noundef nonnull align 8 dereferenceable(184) %i.u, i16 5, ptr noundef %i.v, ptr noundef %i.w) #9
  %i.y = tail call noundef ptr @_ZN2v88internal8compiler14GraphAssembler11TaggedEqualEPNS1_4NodeES4_(ptr noundef nonnull align 8 dereferenceable(161) %i.u, ptr noundef %i.o, ptr noundef %i.x) #9
  ret ptr %i.y
}

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZN2v88internal8compiler14WasmGCLowering15ReduceIsNotNullEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::TNode", align 8 ; 4 uses
  %3 = alloca %"class.v8::internal::SloppyTNode.96", align 8 ; 2 uses
  %4 = alloca %"class.v8::internal::SloppyTNode.96", align 8 ; 2 uses
  %i.a = load ptr, ptr %1, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.c = load i32, ptr %i.b, align 4
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b, !prof !8
end_hunk_0
