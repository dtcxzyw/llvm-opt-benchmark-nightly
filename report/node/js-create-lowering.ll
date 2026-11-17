Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/js-create-lowering?download=true
inline.NumInlined: 2156
inline.NumDeleted: 620
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN2v88internal8compiler16JSCreateLowering32ReduceJSCreateEmptyLiteralObjectEPNS1_4NodeE:bb.a
  %6 = alloca %"struct.std::array.763", align 8   ; 6 uses
  %7 = alloca %"struct.std::array.762", align 8   ; 4 uses
  %8 = alloca %"class.v8::internal::compiler::MapRef", align 8 ; 7 uses
  %9 = alloca %"class.v8::internal::compiler::JSFunctionRef", align 8 ; 4 uses
  %10 = alloca %"class.v8::internal::compiler::NativeContextRef", align 8 ; 4 uses
  %11 = alloca %"class.v8::internal::TNode", align 8 ; 4 uses
  %12 = alloca %"class.v8::internal::compiler::AllocationBuilder", align 16 ; 7 uses
  %13 = alloca %"struct.v8::internal::compiler::FieldAccess", align 8 ; 4 uses
  %14 = alloca %"struct.v8::internal::compiler::FieldAccess", align 8 ; 4 uses
  %15 = alloca %"class.v8::internal::TNode", align 8 ; 4 uses
  %16 = alloca %"struct.v8::internal::compiler::FieldAccess", align 8 ; 4 uses
  %17 = alloca %"struct.v8::internal::compiler::FieldAccess", align 8 ; 4 uses
  %18 = alloca %"class.v8::internal::TNode.90", align 8 ; 4 uses
  %i.a = load ptr, ptr %1, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load i32, ptr %i.b, align 8
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b, !prof !54

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.10) #18
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.f = load i32, ptr %i.e, align 4
  %i.g = tail call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties15HasContextInputEPKNS1_8OperatorE(ptr noundef nonnull %i.a) #17
  %i.h = load ptr, ptr %1, align 8
  %i.i = tail call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties18HasFrameStateInputEPKNS1_8OperatorE(ptr noundef %i.h) #17
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4
  %i.l = and i32 %i.k, 251658240
  %.not.i.i.i = icmp eq i32 %i.l, 251658240
  %i.m = ptrtoint ptr %1 to i64
  %i.n = add i64 %i.m, 32
  %i.o = inttoptr i64 %i.n to ptr                 ; 4 uses
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
  br i1 %i.ad, label %bb.f, label %bb.e, !prof !54

bb.e:                                             ; preds = %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.11) #18
  unreachable

bb.f:                                             ; preds = %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 20
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = tail call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties15HasContextInputEPKNS1_8OperatorE(ptr noundef nonnull %i.aa) #17
  %i.ah = load ptr, ptr %1, align 8
  %i.ai = tail call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties18HasFrameStateInputEPKNS1_8OperatorE(ptr noundef %i.ah) #17
  %i.aj = load ptr, ptr %1, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load i32, ptr %i.ak, align 8
  %i.am = load i32, ptr %i.j, align 4
  %i.an = and i32 %i.am, 251658240
  %.not.i.i.i16 = icmp eq i32 %i.an, 251658240
  br i1 %.not.i.i.i16, label %bb.g, label %_ZN2v88internal8compiler14NodeProperties15GetControlInputEPNS1_4NodeEi.exit

bb.g:                                             ; preds = %bb.f
  %i.ao = load ptr, ptr %i.o, align 8
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = add i64 %i.ap, 16
  %i.ar = inttoptr i64 %i.aq to ptr
  br label %_ZN2v88internal8compiler14NodeProperties15GetControlInputEPNS1_4NodeEi.exit

_ZN2v88internal8compiler14NodeProperties15GetControlInputEPNS1_4NodeEi.exit: ; preds = %bb.f, %bb.g
  %.sink.i.i.i17 = phi ptr [ %i.ar, %bb.g ], [ %i.o, %bb.f ]
  %i.as = zext i1 %i.ag to i32
  %i.at = zext i1 %i.ai to i32
  %i.au = add i32 %i.af, %i.as
  %i.av = add i32 %i.au, %i.at
  %i.aw = add i32 %i.av, %i.al
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds [8 x i8], ptr %.sink.i.i.i17, i64 %i.ax
  %i.az = load ptr, ptr %i.ay, align 8            ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.bb = load ptr, ptr %i.ba, align 8            ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8            ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.h, label %_ZNK2v88internal8compiler16JSCreateLowering14native_contextEv.exit, !prof !56

bb.h:                                             ; preds = %_ZN2v88internal8compiler14NodeProperties15GetControlInputEPNS1_4NodeEi.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.21) #18
  unreachable

_ZNK2v88internal8compiler16JSCreateLowering14native_contextEv.exit: ; preds = %_ZN2v88internal8compiler14NodeProperties15GetControlInputEPNS1_4NodeEi.exit
  store ptr %i.bd, ptr %10, align 8
  %i.be = call ptr @_ZNK2v88internal8compiler16NativeContextRef15object_functionEPNS1_12JSHeapBrokerE(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull %i.bb) #17
  store ptr %i.be, ptr %9, align 8
  %i.bf = load ptr, ptr %i.ba, align 8
  %i.bg = call ptr @_ZNK2v88internal8compiler13JSFunctionRef11initial_mapEPNS1_12JSHeapBrokerE(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef %i.bf) #17 ; 2 uses
  store ptr %i.bg, ptr %8, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = load ptr, ptr %i.ba, align 8
  %i.bk = call noundef ptr @_ZN2v88internal8compiler7JSGraph14ConstantNoHoleENS1_9ObjectRefEPNS1_12JSHeapBrokerE(ptr noundef nonnull align 8 dereferenceable(1144) %i.bi, ptr %i.bg, ptr noundef %i.bj) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #17
  %i.bl = load ptr, ptr %i.bh, align 8
  call void @_ZN2v88internal8compiler7JSGraph23EmptyFixedArrayConstantEv(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode") align 8 %11, ptr noundef nonnull align 8 dereferenceable(1144) %i.bl) #17
  %i.bm = load ptr, ptr %11, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #17
  %i.bn = load <2 x ptr>, ptr %i.bh, align 8
  %i.bo = load ptr, ptr %i.bh, align 8            ; 9 uses
  store <2 x ptr> %i.bn, ptr %12, align 16
  %i.bp = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %12, i64 32
  store ptr %i.az, ptr %i.bq, align 16
  %i.br = call noundef i32 @_ZNK2v88internal8compiler6MapRef13instance_sizeEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #17 ; 2 uses
  %i.bs = icmp sgt i32 %i.br, 0
  br i1 %i.bs, label %_ZN2v88internal8compiler17AllocationBuilder8AllocateEiNS0_14AllocationTypeENS1_4TypeE.exit, label %bb.i, !prof !54

bb.i:                                             ; preds = %_ZNK2v88internal8compiler16JSCreateLowering14native_contextEv.exit
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.12) #18
  unreachable

_ZN2v88internal8compiler17AllocationBuilder8AllocateEiNS0_14AllocationTypeENS1_4TypeE.exit: ; preds = %_ZNK2v88internal8compiler16JSCreateLowering14native_contextEv.exit
  %i.bt = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.bu = load ptr, ptr %i.bo, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = call noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder11BeginRegionENS1_19RegionObservabilityE(ptr noundef nonnull align 8 dereferenceable(16) %i.bw, i8 noundef zeroext 1) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  store ptr %i.z, ptr %7, align 8
  %i.by = call noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %i.bu, ptr noundef %i.bx, i32 noundef 1, ptr noundef nonnull %7, i1 noundef zeroext false) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  %i.bz = load ptr, ptr %i.bo, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bo, i64 816 ; 5 uses
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = call noundef ptr @_ZN2v88internal8compiler25SimplifiedOperatorBuilder8AllocateENS1_4TypeENS0_14AllocationTypeE(ptr noundef nonnull align 8 dereferenceable(16) %i.cb, i64 -1, i8 noundef zeroext 0) #17
  %i.cd = uitofp nneg i32 %i.br to double
  %i.ce = call noundef ptr @_ZN2v88internal8compiler7JSGraph14ConstantNoHoleEd(ptr noundef nonnull align 8 dereferenceable(1144) %i.bo, double noundef %i.cd) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  store ptr %i.ce, ptr %6, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.by, ptr %i.cf, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.az, ptr %i.cg, align 8
  %i.ch = call noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %i.bz, ptr noundef %i.cc, i32 noundef 3, ptr noundef nonnull %6, i1 noundef zeroext false) #17 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  store ptr %i.ch, ptr %i.bt, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #17
  call void @_ZN2v88internal8compiler13AccessBuilder6ForMapENS1_16WriteBarrierKindE(ptr dead_on_unwind nonnull writable sret(%"struct.v8::internal::compiler::FieldAccess") align 8 %13, i8 noundef zeroext 2) #17
  %i.ci = load ptr, ptr %i.bo, align 8
  %i.cj = load ptr, ptr %i.ca, align 8
  %i.ck = call noundef ptr @_ZN2v88internal8compiler25SimplifiedOperatorBuilder10StoreFieldERKNS1_11FieldAccessEb(ptr noundef nonnull align 8 dereferenceable(16) %i.cj, ptr noundef nonnull align 8 dereferenceable(72) %13, i1 noundef zeroext true) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  store ptr %i.ch, ptr %5, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.bk, ptr %i.cl, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.ch, ptr %i.cm, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %i.az, ptr %i.cn, align 8
  %i.co = call noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %i.ci, ptr noundef %i.ck, i32 noundef 4, ptr noundef nonnull %5, i1 noundef zeroext false) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #17
  call void @_ZN2v88internal8compiler13AccessBuilder39ForJSObjectPropertiesOrHashKnownPointerEv(ptr dead_on_unwind nonnull writable sret(%"struct.v8::internal::compiler::FieldAccess") align 8 %14) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #17
  %i.cp = load ptr, ptr %i.bh, align 8
  call void @_ZN2v88internal8compiler7JSGraph23EmptyFixedArrayConstantEv(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode") align 8 %15, ptr noundef nonnull align 8 dereferenceable(1144) %i.cp) #17
  %i.cq = load ptr, ptr %15, align 8
  %i.cr = load ptr, ptr %i.bo, align 8
  %i.cs = load ptr, ptr %i.ca, align 8
  %i.ct = call noundef ptr @_ZN2v88internal8compiler25SimplifiedOperatorBuilder10StoreFieldERKNS1_11FieldAccessEb(ptr noundef nonnull align 8 dereferenceable(16) %i.cs, ptr noundef nonnull align 8 dereferenceable(72) %14, i1 noundef zeroext true) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  store ptr %i.ch, ptr %4, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.cq, ptr %i.cu, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.co, ptr %i.cv, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.az, ptr %i.cw, align 8
  %i.cx = call noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %i.cr, ptr noundef %i.ct, i32 noundef 4, ptr noundef nonnull %4, i1 noundef zeroext false) #17 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  store ptr %i.cx, ptr %i.bp, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #17
  call void @_ZN2v88internal8compiler13AccessBuilder19ForJSObjectElementsEv(ptr dead_on_unwind nonnull writable sret(%"struct.v8::internal::compiler::FieldAccess") align 8 %16) #17
  %i.cy = load ptr, ptr %i.bo, align 8
  %i.cz = load ptr, ptr %i.ca, align 8
  %i.da = call noundef ptr @_ZN2v88internal8compiler25SimplifiedOperatorBuilder10StoreFieldERKNS1_11FieldAccessEb(ptr noundef nonnull align 8 dereferenceable(16) %i.cz, ptr noundef nonnull align 8 dereferenceable(72) %16, i1 noundef zeroext true) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  store ptr %i.ch, ptr %3, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.bm, ptr %i.db, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.cx, ptr %i.dc, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.az, ptr %i.dd, align 8
  %i.de = call noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %i.cy, ptr noundef %i.da, i32 noundef 4, ptr noundef nonnull %3, i1 noundef zeroext false) #17 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #17
  %i.df = call noundef i32 @_ZNK2v88internal8compiler6MapRef21GetInObjectPropertiesEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #17
  %i.dg = icmp sgt i32 %i.df, 0
  br i1 %i.dg, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN2v88internal8compiler17AllocationBuilder8AllocateEiNS0_14AllocationTypeENS1_4TypeE.exit
  %i.dh = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.di = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dj = getelementptr inbounds nuw i8, ptr %2, i64 24
  br label %bb.j

._crit_edge:                                      ; preds = %bb.j, %_ZN2v88internal8compiler17AllocationBuilder8AllocateEiNS0_14AllocationTypeENS1_4TypeE.exit
  %.lcssa = phi ptr [ %i.de, %_ZN2v88internal8compiler17AllocationBuilder8AllocateEiNS0_14AllocationTypeENS1_4TypeE.exit ], [ %i.du, %bb.j ]
  store ptr %.lcssa, ptr %i.bp, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dl = load ptr, ptr %i.dk, align 8            ; 2 uses
  %i.dm = load ptr, ptr %i.dl, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 40
  %i.do = load ptr, ptr %i.dn, align 8
  call void %i.do(ptr noundef nonnull align 8 dereferenceable(8) %i.dl, ptr noundef nonnull %1, ptr noundef nonnull %1, ptr noundef nonnull %1, ptr noundef null) #17, !inline_history !1
  call void @_ZN2v88internal8compiler17AllocationBuilder15FinishAndChangeEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(40) %12, ptr noundef nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  ret ptr %1

bb.j:                                             ; preds = %.lr.ph, %bb.j
  %.018 = phi i32 [ 0, %.lr.ph ], [ %i.dv, %bb.j ] ; 2 uses
  %19 = phi ptr [ %i.de, %.lr.ph ], [ %i.du, %bb.j ]
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #17
  %.sroa.01.0.copyload = load ptr, ptr %8, align 8
  call void @_ZN2v88internal8compiler13AccessBuilder27ForJSObjectInObjectPropertyENS1_6MapRefEiNS0_11MachineTypeE(ptr dead_on_unwind nonnull writable sret(%"struct.v8::internal::compiler::FieldAccess") align 8 %17, ptr %.sroa.01.0.copyload, i32 noundef %.018, i16 2569) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #17
  %i.dp = load ptr, ptr %i.bh, align 8
  call void @_ZN2v88internal8compiler7JSGraph17UndefinedConstantEv(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.90") align 8 %18, ptr noundef nonnull align 8 dereferenceable(1144) %i.dp) #17
  %i.dq = load ptr, ptr %18, align 8
  %i.dr = load ptr, ptr %i.bo, align 8
  %i.ds = load ptr, ptr %i.ca, align 8
  %i.dt = call noundef ptr @_ZN2v88internal8compiler25SimplifiedOperatorBuilder10StoreFieldERKNS1_11FieldAccessEb(ptr noundef nonnull align 8 dereferenceable(16) %i.ds, ptr noundef nonnull align 8 dereferenceable(72) %17, i1 noundef zeroext true) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  store ptr %i.ch, ptr %2, align 8
  store ptr %i.dq, ptr %i.dh, align 8
  store ptr %19, ptr %i.di, align 8
  store ptr %i.az, ptr %i.dj, align 8
  %i.du = call noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %i.dr, ptr noundef %i.dt, i32 noundef 4, ptr noundef nonnull %2, i1 noundef zeroext false) #17 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #17
  %i.dv = add nuw nsw i32 %.018, 1                ; 2 uses
  %i.dw = call noundef i32 @_ZNK2v88internal8compiler6MapRef21GetInObjectPropertiesEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #17
  %i.dx = icmp slt i32 %i.dv, %i.dw
  br i1 %i.dx, label %bb.j, label %._crit_edge, !llvm.loop !90
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal8compiler16JSCreateLowering29ReduceJSCreateFunctionContextEPNS1_4NodeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #0 align 2 !guid !93 {
bb.a:
  %2 = alloca %"struct.std::array.763", align 8   ; 5 uses
  %3 = alloca %"struct.std::array.762", align 8   ; 4 uses
  %4 = alloca %"struct.std::array.763", align 8   ; 5 uses
  %5 = alloca %"struct.std::array.762", align 8   ; 4 uses
  %6 = alloca %"struct.std::array.760", align 8   ; 4 uses
  %7 = alloca %"struct.std::array.760", align 8   ; 6 uses
  %8 = alloca %"struct.std::array.760", align 8   ; 6 uses
  %9 = alloca %"struct.v8::internal::compiler::FieldAccess", align 8 ; 4 uses
  %10 = alloca %"struct.v8::internal::compiler::FieldAccess", align 8 ; 4 uses
  %11 = alloca %"struct.std::array.760", align 8  ; 6 uses
  %12 = alloca %"struct.v8::internal::compiler::FieldAccess", align 8 ; 4 uses
  %13 = alloca %"struct.v8::internal::compiler::FieldAccess", align 8 ; 4 uses
  %14 = alloca %"class.v8::internal::compiler::AllocationBuilder", align 16 ; 22 uses
  %15 = alloca %"class.v8::internal::compiler::NativeContextRef", align 8 ; 4 uses
  %16 = alloca %"class.v8::internal::compiler::NativeContextRef", align 8 ; 4 uses
  %17 = alloca %"struct.v8::internal::compiler::FieldAccess", align 8 ; 4 uses
  %18 = alloca %"struct.v8::internal::compiler::FieldAccess", align 8 ; 4 uses
  %19 = alloca %"struct.v8::internal::compiler::FieldAccess", align 8 ; 4 uses
  %20 = alloca %"class.v8::internal::TNode.90", align 8 ; 4 uses
  %i.a = load ptr, ptr %1, align 8
  %i.b = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN2v88internal8compiler33CreateFunctionContextParametersOfEPKNS1_8OperatorE(ptr noundef %i.a) #17 ; 3 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i32, ptr %i.c, align 8              ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.f = load i8, ptr %i.e, align 4
  %i.g = icmp slt i32 %i.d, 16
  br i1 %i.g, label %bb.b, label %bb.u

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %1, align 8                ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load i32, ptr %i.i, align 8
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %bb.d, label %bb.c, !prof !54

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.10) #18
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 20
  %i.m = load i32, ptr %i.l, align 4
  %i.n = tail call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties15HasContextInputEPKNS1_8OperatorE(ptr noundef nonnull %i.h) #17
  %i.o = load ptr, ptr %1, align 8
  %i.p = tail call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties18HasFrameStateInputEPKNS1_8OperatorE(ptr noundef %i.o) #17
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.r = load i32, ptr %i.q, align 4
  %i.s = and i32 %i.r, 251658240
  %.not.i.i.i = icmp eq i32 %i.s, 251658240
  %i.t = ptrtoint ptr %1 to i64
  %i.u = add i64 %i.t, 32
  %i.v = inttoptr i64 %i.u to ptr                 ; 6 uses
  br i1 %.not.i.i.i, label %bb.e, label %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit

bb.e:                                             ; preds = %bb.d
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = add i64 %i.x, 16
  %i.z = inttoptr i64 %i.y to ptr
  br label %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit

_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit: ; preds = %bb.d, %bb.e
  %.sink.i.i.i = phi ptr [ %i.z, %bb.e ], [ %i.v, %bb.d ]
  %i.aa = zext i1 %i.n to i32
  %i.ab = zext i1 %i.p to i32
  %i.ac = add i32 %i.m, %i.aa
  %i.ad = add i32 %i.ac, %i.ab
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds [8 x i8], ptr %.sink.i.i.i, i64 %i.ae
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = load ptr, ptr %1, align 8               ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 28
  %i.aj = load i32, ptr %i.ai, align 4
  %i.ak = icmp sgt i32 %i.aj, 0
  br i1 %i.ak, label %bb.g, label %bb.f, !prof !54

bb.f:                                             ; preds = %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.11) #18
  unreachable

bb.g:                                             ; preds = %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 20
  %i.am = load i32, ptr %i.al, align 4
  %i.an = tail call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties15HasContextInputEPKNS1_8OperatorE(ptr noundef nonnull %i.ah) #17
  %i.ao = load ptr, ptr %1, align 8
  %i.ap = tail call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties18HasFrameStateInputEPKNS1_8OperatorE(ptr noundef %i.ao) #17
  %i.aq = load ptr, ptr %1, align 8               ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.as = load i32, ptr %i.ar, align 8
  %i.at = load i32, ptr %i.q, align 4
  %i.au = and i32 %i.at, 251658240
  %.not.i.i.i27 = icmp eq i32 %i.au, 251658240
  br i1 %.not.i.i.i27, label %bb.h, label %_ZN2v88internal8compiler14NodeProperties15GetControlInputEPNS1_4NodeEi.exit

bb.h:                                             ; preds = %bb.g
  %i.av = load ptr, ptr %i.v, align 8
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = add i64 %i.aw, 16
  %i.ay = inttoptr i64 %i.ax to ptr
  br label %_ZN2v88internal8compiler14NodeProperties15GetControlInputEPNS1_4NodeEi.exit

_ZN2v88internal8compiler14NodeProperties15GetControlInputEPNS1_4NodeEi.exit: ; preds = %bb.g, %bb.h
  %.sink.i.i.i28 = phi ptr [ %i.ay, %bb.h ], [ %i.v, %bb.g ]
  %i.az = zext i1 %i.an to i32
  %i.ba = zext i1 %i.ap to i32
  %i.bb = add i32 %i.am, %i.az
  %i.bc = add i32 %i.bb, %i.ba
  %i.bd = add i32 %i.bc, %i.as
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr inbounds [8 x i8], ptr %.sink.i.i.i28, i64 %i.be
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = tail call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties15HasContextInputEPKNS1_8OperatorE(ptr noundef nonnull %i.aq) #17
  br i1 %i.bh, label %bb.j, label %bb.i, !prof !54

bb.i:                                             ; preds = %_ZN2v88internal8compiler14NodeProperties15GetControlInputEPNS1_4NodeEi.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.14) #18
  unreachable

bb.j:                                             ; preds = %_ZN2v88internal8compiler14NodeProperties15GetControlInputEPNS1_4NodeEi.exit
  %i.bi = load ptr, ptr %1, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 20
  %i.bk = load i32, ptr %i.bj, align 4
  %i.bl = load i32, ptr %i.q, align 4
  %i.bm = and i32 %i.bl, 251658240
  %.not.i.i.i29 = icmp eq i32 %i.bm, 251658240
  br i1 %.not.i.i.i29, label %bb.k, label %_ZN2v88internal8compiler14NodeProperties15GetContextInputEPNS1_4NodeE.exit

bb.k:                                             ; preds = %bb.j
  %i.bn = load ptr, ptr %i.v, align 8
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = add i64 %i.bo, 16
  %i.bq = inttoptr i64 %i.bp to ptr
  br label %_ZN2v88internal8compiler14NodeProperties15GetContextInputEPNS1_4NodeE.exit

_ZN2v88internal8compiler14NodeProperties15GetContextInputEPNS1_4NodeE.exit: ; preds = %bb.j, %bb.k
  %.sink.i.i.i30 = phi ptr [ %i.bq, %bb.k ], [ %i.v, %bb.j ]
  %i.br = sext i32 %i.bk to i64
  %i.bs = getelementptr inbounds [8 x i8], ptr %.sink.i.i.i30, i64 %i.br
  %i.bt = load ptr, ptr %i.bs, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #17
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bw = load ptr, ptr %i.bv, align 8            ; 4 uses
  %i.bx = load <2 x ptr>, ptr %i.bu, align 8
  store <2 x ptr> %i.bx, ptr %14, align 16
  %i.by = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 7 uses
  store ptr null, ptr %i.by, align 16
  %i.bz = getelementptr inbounds nuw i8, ptr %14, i64 24 ; 17 uses
  store ptr %i.ag, ptr %i.bz, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %14, i64 32
  store ptr %i.bg, ptr %i.ca, align 16
  %i.cb = add nsw i32 %i.d, 2                     ; 5 uses
  switch i8 %i.f, label %bb.r [
    i8 3, label %bb.l
    i8 4, label %bb.o
  ]

bb.l:                                             ; preds = %_ZN2v88internal8compiler14NodeProperties15GetContextInputEPNS1_4NodeE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #17
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8            ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.cd, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.m, label %_ZNK2v88internal8compiler16JSCreateLowering14native_contextEv.exit, !prof !56

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.21) #18
  unreachable

_ZNK2v88internal8compiler16JSCreateLowering14native_contextEv.exit: ; preds = %bb.l
  store ptr %i.cd, ptr %15, align 8
  %i.ce = call ptr @_ZNK2v88internal8compiler16NativeContextRef16eval_context_mapEPNS1_12JSHeapBrokerE(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull %i.bw) #17
  %i.cf = icmp sgt i32 %i.d, -4
  br i1 %i.cf, label %_ZN2v88internal8compiler17AllocationBuilder8AllocateEiNS0_14AllocationTypeENS1_4TypeE.exit, label %bb.n, !prof !54

bb.n:                                             ; preds = %_ZNK2v88internal8compiler16JSCreateLowering14native_contextEv.exit
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.12) #18
  unreachable

_ZN2v88internal8compiler17AllocationBuilder8AllocateEiNS0_14AllocationTypeENS1_4TypeE.exit: ; preds = %_ZNK2v88internal8compiler16JSCreateLowering14native_contextEv.exit
  %i.cg = shl nsw i32 %i.cb, 3
  %i.ch = add nsw i32 %i.cg, 16
  %i.ci = load ptr, ptr %14, align 16             ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8
  %i.cm = call noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder11BeginRegionENS1_19RegionObservabilityE(ptr noundef nonnull align 8 dereferenceable(16) %i.cl, i8 noundef zeroext 1) #17
  %i.cn = load ptr, ptr %i.bz, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
end_hunk_0
