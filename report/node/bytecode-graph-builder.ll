Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/bytecode-graph-builder?download=true
inline.NumInlined: 3765
inline.NumDeleted: 902
begin_hunk_0

$_ZNSt5dequeIN2v88internal8compiler20BytecodeGraphBuilder16ExceptionHandlerENS1_22RecyclingZoneAllocatorIS4_EEE16_M_push_back_auxIJS4_EEEvDpOT_ = comdat any

$_ZNSt5dequeIN2v88internal8compiler20BytecodeGraphBuilder16ExceptionHandlerENS1_22RecyclingZoneAllocatorIS4_EEE17_M_reallocate_mapEmb = comdat any

$_ZTVN2v88internal8compiler20BytecodeGraphBuilder25BytecodePositionDecoratorE = comdat any

$_ZTVN2v88internal12StdoutStreamE = comdat any

$_ZTTN2v88internal12StdoutStreamE = comdat any

$_ZTCN2v88internal12StdoutStreamE0_NS0_8OFStreamE = comdat any

$_ZTCN2v88internal12StdoutStreamE0_So = comdat any

$_ZTVN2v88internal8OFStreamE = comdat any

@.str = private unnamed_addr constant [6 x i8] c"%this\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%context\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"%new.target\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"%closure\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"Check failed: %s.\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"bytecode_iterator().current_offset() == osr_entry\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"it.CurrentBytecodeIsValidOSREntry()\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"osr_entry == it.GetJumpTargetOffset()\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"unreachable code\00", align 1
@.str.9 = private unnamed_addr constant [129 x i8] c"flags == static_cast<uint8_t>(ASVariant::kLhsIsStringConstant) || flags == static_cast<uint8_t>(ASVariant::kRhsIsStringConstant)\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"0 == first_reg.index()\00", align 1
@_ZN2v88internal11interpreter9Bytecodes14kBytecodeSizesE = external local_unnamed_addr constant [3 x [212 x i8]], align 16
@.str.11 = private unnamed_addr constant [56 x i8] c"length < std::numeric_limits<size_t>::max() / sizeof(T)\00", align 1
@.str.12 = private unnamed_addr constant [48 x i8] c"cannot create std::deque larger than max_size()\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"0 <= osr_entry_point_\00", align 1
@.str.15 = private unnamed_addr constant [40 x i8] c"index < node->op()->ControlInputCount()\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"IsHeapObject()\00", align 1
@.str.19 = private unnamed_addr constant [19 x i8] c"(data_) != nullptr\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"IsScopeInfo()\00", align 1
@.str.21 = private unnamed_addr constant [53 x i8] c"std::numeric_limits<size_t>::max() - size() >= count\00", align 1
@_ZTVN2v88internal8compiler20BytecodeGraphBuilder25BytecodePositionDecoratorE = linkonce_odr hidden unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr null, ptr @_ZN2v88internal8compiler14GraphDecoratorD2Ev, ptr @_ZN2v88internal8compiler20BytecodeGraphBuilder25BytecodePositionDecoratorD0Ev, ptr @_ZN2v88internal8compiler20BytecodeGraphBuilder25BytecodePositionDecorator8DecorateEPNS1_4NodeE] }, comdat, align 8
@.str.23 = private unnamed_addr constant [9 x i8] c"Missing \00", align 1
@.str.24 = private unnamed_addr constant [16 x i8] c"ObjectData for \00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c" (\00", align 1
@.str.26 = private unnamed_addr constant [44 x i8] c"../../deps/v8/src/compiler/js-heap-broker.h\00", align 1
@.str.27 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.28 = private unnamed_addr constant [2 x i8] c")\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@_ZTVN2v88internal12StdoutStreamE = linkonce_odr hidden unnamed_addr constant { [5 x ptr], [5 x ptr] } { [5 x ptr] [ptr inttoptr (i64 88 to ptr), ptr null, ptr null, ptr @_ZN2v88internal12StdoutStreamD1Ev, ptr @_ZN2v88internal12StdoutStreamD0Ev], [5 x ptr] [ptr inttoptr (i64 -88 to ptr), ptr inttoptr (i64 -88 to ptr), ptr null, ptr @_ZTv0_n24_N2v88internal12StdoutStreamD1Ev, ptr @_ZTv0_n24_N2v88internal12StdoutStreamD0Ev] }, comdat, align 8
@_ZTTN2v88internal12StdoutStreamE = linkonce_odr hidden unnamed_addr constant [6 x ptr] [ptr getelementptr inbounds inrange(-24, 16) ({ [5 x ptr], [5 x ptr] }, ptr @_ZTVN2v88internal12StdoutStreamE, i32 0, i32 0, i32 3), ptr getelementptr inbounds inrange(-24, 16) ({ [5 x ptr], [5 x ptr] }, ptr @_ZTCN2v88internal12StdoutStreamE0_NS0_8OFStreamE, i32 0, i32 0, i32 3), ptr getelementptr inbounds inrange(-24, 16) ({ [5 x ptr], [5 x ptr] }, ptr @_ZTCN2v88internal12StdoutStreamE0_So, i32 0, i32 0, i32 3), ptr getelementptr inbounds inrange(-24, 16) ({ [5 x ptr], [5 x ptr] }, ptr @_ZTCN2v88internal12StdoutStreamE0_So, i32 0, i32 1, i32 3), ptr getelementptr inbounds inrange(-24, 16) ({ [5 x ptr], [5 x ptr] }, ptr @_ZTCN2v88internal12StdoutStreamE0_NS0_8OFStreamE, i32 0, i32 1, i32 3), ptr getelementptr inbounds inrange(-24, 16) ({ [5 x ptr], [5 x ptr] }, ptr @_ZTVN2v88internal12StdoutStreamE, i32 0, i32 1, i32 3)], comdat, align 8
@_ZTCN2v88internal12StdoutStreamE0_NS0_8OFStreamE = linkonce_odr hidden unnamed_addr constant { [5 x ptr], [5 x ptr] } { [5 x ptr] [ptr inttoptr (i64 88 to ptr), ptr null, ptr null, ptr @_ZN2v88internal8OFStreamD1Ev, ptr @_ZN2v88internal8OFStreamD0Ev], [5 x ptr] [ptr inttoptr (i64 -88 to ptr), ptr inttoptr (i64 -88 to ptr), ptr null, ptr @_ZTv0_n24_N2v88internal8OFStreamD1Ev, ptr @_ZTv0_n24_N2v88internal8OFStreamD0Ev] }, comdat, align 8
@_ZTCN2v88internal12StdoutStreamE0_So = linkonce_odr hidden unnamed_addr constant { [5 x ptr], [5 x ptr] } { [5 x ptr] [ptr inttoptr (i64 88 to ptr), ptr null, ptr null, ptr @_ZNSoD1Ev, ptr @_ZNSoD0Ev], [5 x ptr] [ptr inttoptr (i64 -88 to ptr), ptr inttoptr (i64 -88 to ptr), ptr null, ptr @_ZTv0_n24_NSoD1Ev, ptr @_ZTv0_n24_NSoD0Ev] }, comdat, align 8
@_ZTVSt9basic_iosIcSt11char_traitsIcEE = external unnamed_addr constant { [4 x ptr] }, align 8
@_ZTVN2v88internal8OFStreamE = linkonce_odr hidden unnamed_addr constant { [5 x ptr], [5 x ptr] } { [5 x ptr] [ptr inttoptr (i64 80 to ptr), ptr null, ptr null, ptr @_ZN2v88internal8OFStreamD1Ev, ptr @_ZN2v88internal8OFStreamD0Ev], [5 x ptr] [ptr inttoptr (i64 -80 to ptr), ptr inttoptr (i64 -80 to ptr), ptr null, ptr @_ZTv0_n24_N2v88internal8OFStreamD1Ev, ptr @_ZTv0_n24_N2v88internal8OFStreamD0Ev] }, comdat, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external unnamed_addr constant { [16 x ptr] }, align 8
@.str.29 = private unnamed_addr constant [9 x i8] c"IsName()\00", align 1
@.str.30 = private unnamed_addr constant [23 x i8] c"IsSharedFunctionInfo()\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"IsCode()\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"IsString()\00", align 1
@.str.33 = private unnamed_addr constant [33 x i8] c"IsObjectBoilerplateDescription()\00", align 1
@.str.36 = private unnamed_addr constant [30 x i8] c"IsTemplateObjectDescription()\00", align 1

@_ZN2v88internal8compiler20BytecodeGraphBuilder11EnvironmentC1EPS2_iiNS0_11interpreter8RegisterEPNS1_4NodeE = hidden unnamed_addr alias void (ptr, ptr, i32, i32, i32, ptr), ptr @_ZN2v88internal8compiler20BytecodeGraphBuilder11EnvironmentC2EPS2_iiNS0_11interpreter8RegisterEPNS1_4NodeE
@_ZN2v88internal8compiler20BytecodeGraphBuilder11EnvironmentC1EPKS3_ = hidden unnamed_addr alias void (ptr, ptr), ptr @_ZN2v88internal8compiler20BytecodeGraphBuilder11EnvironmentC2EPKS3_
@_ZN2v88internal8compiler20BytecodeGraphBuilderC1EPNS1_12JSHeapBrokerEPNS0_4ZoneENS1_16NativeContextRefENS1_21SharedFunctionInfoRefENS1_16BytecodeArrayRefENS1_15FeedbackCellRefENS0_14BytecodeOffsetEPNS1_7JSGraphERKNS1_13CallFrequencyEPNS1_19SourcePositionTableEPNS1_15NodeOriginTableEiNS0_8CodeKindENS_4base5FlagsINS1_24BytecodeGraphBuilderFlagEiiEEPNS0_11TickCounterERKNS1_15ObserveNodeInfoE = hidden unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, i32, i8, i32, ptr, ptr), ptr @_ZN2v88internal8compiler20BytecodeGraphBuilderC2EPNS1_12JSHeapBrokerEPNS0_4ZoneENS1_16NativeContextRefENS1_21SharedFunctionInfoRefENS1_16BytecodeArrayRefENS1_15FeedbackCellRefENS0_14BytecodeOffsetEPNS1_7JSGraphERKNS1_13CallFrequencyEPNS1_19SourcePositionTableEPNS1_15NodeOriginTableEiNS0_8CodeKindENS_4base5FlagsINS1_24BytecodeGraphBuilderFlagEiiEEPNS0_11TickCounterERKNS1_15ObserveNodeInfoE

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler20BytecodeGraphBuilder11EnvironmentC2EPS2_iiNS0_11interpreter8RegisterEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(96) initializes((0, 16), (24, 88)) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 %4, ptr noundef %5) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %6 = alloca %"class.v8::internal::TNode", align 8 ; 4 uses
  store ptr %1, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %2, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %3, ptr %i.c, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %5, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %5, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  store ptr %i.h, ptr %i.f, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 6 uses
  %i.j = icmp sgt i32 %3, 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.i, i8 0, i64 40, i1 false)
  br i1 %i.j, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.m = tail call noundef ptr @_ZN2v88internal8compiler20BytecodeGraphBuilder12GetParameterEiPKc(ptr noundef nonnull align 8 dereferenceable(856) %1, i32 noundef 0, ptr noundef nonnull @.str)
  %i.n = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.o = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.p = icmp ult ptr %i.n, %i.o
  br i1 %i.p, label %_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE9push_backERKS4_.exit26.peel, label %bb.b, !prof !5

bb.b:                                             ; preds = %.lr.ph
  %i.q = load ptr, ptr %i.i, align 8
  %i.r = ptrtoint ptr %i.o to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = ashr exact i64 %i.t, 3
  %i.v = add nsw i64 %i.u, 1
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 noundef %i.v)
  %.pre.i25.peel = load ptr, ptr %i.k, align 8
  br label %_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE9push_backERKS4_.exit26.peel

_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE9push_backERKS4_.exit26.peel: ; preds = %bb.b, %.lr.ph
  %i.w = phi ptr [ %i.n, %.lr.ph ], [ %.pre.i25.peel, %bb.b ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %i.x, ptr %i.k, align 8
  store ptr %i.m, ptr %i.w, align 8
  %exitcond.peel.not = icmp eq i32 %3, 1
  br i1 %exitcond.peel.not, label %._crit_edge.loopexit, label %.peel.next

._crit_edge.loopexit:                             ; preds = %_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE9push_backERKS4_.exit26, %_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE9push_backERKS4_.exit26.peel
  %.pre = load ptr, ptr %i.k, align 8
  %.pre31 = load ptr, ptr %i.i, align 8
  %i.y = ptrtoint ptr %.pre to i64
  %i.z = ptrtoint ptr %.pre31 to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = lshr exact i64 %i.aa, 3
  %i.ac = trunc i64 %i.ab to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.ad = phi i32 [ %i.ac, %._crit_edge.loopexit ], [ 0, %bb.a ]
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  store i32 %i.ad, ptr %i.af, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8
  call void @_ZN2v88internal8compiler7JSGraph17UndefinedConstantEv(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode") align 8 %6, ptr noundef nonnull align 8 dereferenceable(1144) %i.ah) #20
  %i.ai = load ptr, ptr %6, align 8               ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %i.aj = load ptr, ptr %i.ae, align 8
  %i.ak = sext i32 %2 to i64                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.al = call noundef ptr @_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE19PrepareForInsertionEPKS4_mPm(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef %i.aj, i64 noundef %i.ak, ptr noundef nonnull %i.a) ; 8 uses
  %i.am = load i64, ptr %i.a, align 8             ; 2 uses
  %.idx.i = shl i64 %i.am, 3                      ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 %.idx.i
  %.not.i = icmp eq i64 %i.am, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %._crit_edge
  %i.ao = ptrtoaddr ptr %i.al to i64              ; 3 uses
  %i.ap = add i64 %.idx.i, %i.ao
  %i.aq = add i64 %i.ao, 8
  %i.ar = call i64 @llvm.umax.i64(i64 %i.ap, i64 %i.aq)
  %i.as = xor i64 %i.ao, -1
  %i.at = add i64 %i.ar, %i.as                    ; 2 uses
  %i.au = lshr i64 %i.at, 3
  %i.av = add nuw nsw i64 %i.au, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.at, 24
  br i1 %min.iters.check, label %.lr.ph.i.preheader56, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.av, 4611686018427387900     ; 3 uses
  %i.aw = shl i64 %n.vec, 3
  %i.ax = getelementptr i8, ptr %i.al, i64 %i.aw  ; 2 uses
  %broadcast.splatinsert = insertelement <2 x ptr> poison, ptr %i.ai, i64 0
  %broadcast.splat = shufflevector <2 x ptr> %broadcast.splatinsert, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ay = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.al, i64 %i.ay ; 2 uses
  %i.az = getelementptr i8, ptr %next.gep, i64 16
  store <2 x ptr> %broadcast.splat, ptr %next.gep, align 8
  store <2 x ptr> %broadcast.splat, ptr %i.az, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !6

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.av, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i.preheader56

.lr.ph.i.preheader56:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %.015.i.ph = phi ptr [ %i.al, %.lr.ph.i.preheader ], [ %i.ax, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader56, %.lr.ph.i
  %.015.i = phi ptr [ %i.bb, %.lr.ph.i ], [ %.015.i.ph, %.lr.ph.i.preheader56 ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.015.i, i64 8 ; 3 uses
  store ptr %i.ai, ptr %.015.i, align 8
  %i.bc = icmp ult ptr %i.bb, %i.an
  br i1 %i.bc, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !10

._crit_edge.i:                                    ; preds = %.lr.ph.i, %middle.block, %._crit_edge
  %.0.lcssa.i = phi ptr [ %i.al, %._crit_edge ], [ %i.ax, %middle.block ], [ %i.bb, %.lr.ph.i ] ; 5 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.ak ; 2 uses
  %i.be = icmp ult ptr %.0.lcssa.i, %i.bd
  br i1 %i.be, label %.lr.ph18.i.preheader, label %_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE6insertEPKS4_mRS6_.exit

.lr.ph18.i.preheader:                             ; preds = %._crit_edge.i
  %i.bf = ptrtoaddr ptr %i.al to i64
  %i.bg = shl nsw i64 %i.ak, 3
  %7 = add i64 %i.bg, %i.bf
  %i.bh = ptrtoaddr ptr %.0.lcssa.i to i64        ; 2 uses
  %i.bi = add i64 %i.bh, 8
  %8 = call i64 @llvm.umax.i64(i64 %7, i64 %i.bi)
  %i.bj = xor i64 %i.bh, -1
  %i.bk = add i64 %8, %i.bj                       ; 2 uses
  %i.bl = lshr i64 %i.bk, 3
  %i.bm = add nuw nsw i64 %i.bl, 1                ; 2 uses
  %min.iters.check43 = icmp ult i64 %i.bk, 24
  br i1 %min.iters.check43, label %.lr.ph18.i.preheader55, label %vector.ph44

vector.ph44:                                      ; preds = %.lr.ph18.i.preheader
  %n.vec45 = and i64 %i.bm, 4611686018427387900   ; 3 uses
  %i.bn = shl i64 %n.vec45, 3
  %i.bo = getelementptr i8, ptr %.0.lcssa.i, i64 %i.bn
  %broadcast.splatinsert46 = insertelement <2 x ptr> poison, ptr %i.ai, i64 0
  %broadcast.splat47 = shufflevector <2 x ptr> %broadcast.splatinsert46, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body48

vector.body48:                                    ; preds = %vector.body48, %vector.ph44
  %index49 = phi i64 [ 0, %vector.ph44 ], [ %index.next51, %vector.body48 ] ; 2 uses
  %i.bp = shl i64 %index49, 3
  %next.gep50 = getelementptr i8, ptr %.0.lcssa.i, i64 %i.bp ; 2 uses
  %i.bq = getelementptr i8, ptr %next.gep50, i64 16
  store <2 x ptr> %broadcast.splat47, ptr %next.gep50, align 8
  store <2 x ptr> %broadcast.splat47, ptr %i.bq, align 8
  %index.next51 = add nuw i64 %index49, 4         ; 2 uses
  %i.br = icmp eq i64 %index.next51, %n.vec45
  br i1 %i.br, label %middle.block52, label %vector.body48, !llvm.loop !11

middle.block52:                                   ; preds = %vector.body48
  %cmp.n53 = icmp eq i64 %i.bm, %n.vec45
  br i1 %cmp.n53, label %_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE6insertEPKS4_mRS6_.exit, label %.lr.ph18.i.preheader55

.lr.ph18.i.preheader55:                           ; preds = %.lr.ph18.i.preheader, %middle.block52
  %.116.i.ph = phi ptr [ %.0.lcssa.i, %.lr.ph18.i.preheader ], [ %i.bo, %middle.block52 ]
  br label %.lr.ph18.i

.lr.ph18.i:                                       ; preds = %.lr.ph18.i.preheader55, %.lr.ph18.i
  %.116.i = phi ptr [ %i.bs, %.lr.ph18.i ], [ %.116.i.ph, %.lr.ph18.i.preheader55 ] ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.116.i, i64 8 ; 2 uses
  store ptr %i.ai, ptr %.116.i, align 8
  %i.bt = icmp ult ptr %i.bs, %i.bd
  br i1 %i.bt, label %.lr.ph18.i, label %_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE6insertEPKS4_mRS6_.exit, !llvm.loop !12

_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE6insertEPKS4_mRS6_.exit: ; preds = %.lr.ph18.i, %middle.block52, %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.bu = load ptr, ptr %i.ae, align 8            ; 3 uses
  %i.bv = load ptr, ptr %i.i, align 8
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = ptrtoint ptr %i.bv to i64               ; 2 uses
  %i.by = sub i64 %i.bw, %i.bx
  %i.bz = lshr exact i64 %i.by, 3
  %i.ca = trunc i64 %i.bz to i32
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 %i.ca, ptr %i.cb, align 4
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.cd = load ptr, ptr %i.cc, align 8            ; 2 uses
  %i.ce = icmp ult ptr %i.bu, %i.cd
  br i1 %i.ce, label %_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE9push_backERKS4_.exit, label %bb.c, !prof !5

bb.c:                                             ; preds = %_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE6insertEPKS4_mRS6_.exit
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = sub i64 %i.cf, %i.bx
  %i.ch = ashr exact i64 %i.cg, 3
  %i.ci = add nsw i64 %i.ch, 1
  call preserve_mostcc void @_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 noundef %i.ci)
  %.pre.i24 = load ptr, ptr %i.ae, align 8
  br label %_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE9push_backERKS4_.exit

_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE9push_backERKS4_.exit: ; preds = %_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE6insertEPKS4_mRS6_.exit, %bb.c
  %i.cj = phi ptr [ %i.bu, %_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE6insertEPKS4_mRS6_.exit ], [ %.pre.i24, %bb.c ] ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store ptr %i.ck, ptr %i.ae, align 8
  store ptr %i.ai, ptr %i.cj, align 8
  %i.cl = add nsw i32 %3, 2
  %i.cm = call noundef ptr @_ZN2v88internal8compiler20BytecodeGraphBuilder12GetParameterEiPKc(ptr noundef nonnull align 8 dereferenceable(856) %1, i32 noundef %i.cl, ptr noundef nonnull @.str.1)
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.cm, ptr %i.cn, align 8
  %.not = icmp eq i32 %4, 2147483647
  br i1 %.not, label %bb.f, label %bb.e

.peel.next:                                       ; preds = %_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE9push_backERKS4_.exit26.peel, %_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE9push_backERKS4_.exit26
  %.029 = phi i32 [ %i.da, %_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE9push_backERKS4_.exit26 ], [ 1, %_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE9push_backERKS4_.exit26.peel ] ; 2 uses
  %i.co = tail call noundef ptr @_ZN2v88internal8compiler20BytecodeGraphBuilder12GetParameterEiPKc(ptr noundef nonnull align 8 dereferenceable(856) %1, i32 noundef %.029, ptr noundef null)
  %i.cp = load ptr, ptr %i.k, align 8             ; 2 uses
  %i.cq = load ptr, ptr %i.l, align 8             ; 2 uses
  %i.cr = icmp ult ptr %i.cp, %i.cq
  br i1 %i.cr, label %_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE9push_backERKS4_.exit26, label %bb.d, !prof !5

bb.d:                                             ; preds = %.peel.next
  %i.cs = load ptr, ptr %i.i, align 8
  %i.ct = ptrtoint ptr %i.cq to i64
  %i.cu = ptrtoint ptr %i.cs to i64
  %i.cv = sub i64 %i.ct, %i.cu
  %i.cw = ashr exact i64 %i.cv, 3
  %i.cx = add nsw i64 %i.cw, 1
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 noundef %i.cx)
  %.pre.i25 = load ptr, ptr %i.k, align 8
  br label %_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE9push_backERKS4_.exit26

_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE9push_backERKS4_.exit26: ; preds = %.peel.next, %bb.d
  %i.cy = phi ptr [ %i.cp, %.peel.next ], [ %.pre.i25, %bb.d ] ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  store ptr %i.cz, ptr %i.k, align 8
  store ptr %i.co, ptr %i.cy, align 8
  %i.da = add nuw nsw i32 %.029, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.da, %3
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.peel.next, !llvm.loop !13

bb.e:                                             ; preds = %_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE9push_backERKS4_.exit
  %i.db = call noundef ptr @_ZN2v88internal8compiler20BytecodeGraphBuilder12GetParameterEiPKc(ptr noundef nonnull align 8 dereferenceable(856) %1, i32 noundef %3, ptr noundef nonnull @.str.2)
  %i.dc = icmp slt i32 %4, 0
  %i.dd = sub nsw i32 -9, %4
  %i.de = load i32, ptr %i.af, align 8
  %i.df = add nsw i32 %i.de, %4
  %.0.i = select i1 %i.dc, i32 %i.dd, i32 %i.df
  %i.dg = sext i32 %.0.i to i64
  %i.dh = load ptr, ptr %i.i, align 8
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %i.dg
  store ptr %i.db, ptr %i.di, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE9push_backERKS4_.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal8compiler20BytecodeGraphBuilder12GetParameterEiPKc(ptr noundef nonnull align 8 dereferenceable(856) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [1 x ptr], align 8                ; 4 uses
  %i.b = add nsw i32 %1, 1
  %i.c = sext i32 %i.b to i64                     ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 3 uses
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = ptrtoint ptr %i.h to i64                 ; 2 uses
  %i.k = sub i64 %i.i, %i.j
  %i.l = ashr exact i64 %i.k, 3
  %.not = icmp ugt i64 %i.l, %i.c
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = add nsw i64 %i.c, 1                      ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = sub i64 %i.p, %i.j
  %i.r = ashr exact i64 %i.q, 3
  %.not.i.i = icmp ugt i64 %i.m, %i.r
  br i1 %.not.i.i, label %bb.c, label %_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE14EnsureCapacityEm.exit.i, !prof !15

bb.c:                                             ; preds = %bb.b
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 noundef %i.m)
  %.pre.i = load ptr, ptr %i.g, align 8
  %.pre = load ptr, ptr %i.e, align 8
  br label %_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE14EnsureCapacityEm.exit.i

_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE14EnsureCapacityEm.exit.i: ; preds = %bb.c, %bb.b
  %i.s = phi ptr [ %i.f, %bb.b ], [ %.pre, %bb.c ] ; 3 uses
  %i.t = phi ptr [ %i.h, %bb.b ], [ %.pre.i, %bb.c ] ; 3 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.m ; 2 uses
  %i.v = icmp ult ptr %i.s, %i.u
  br i1 %i.v, label %.lr.ph.i.preheader, label %_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE6resizeEmRKS4_.exit

.lr.ph.i.preheader:                               ; preds = %_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE14EnsureCapacityEm.exit.i
  %i.w = ptrtoaddr ptr %i.s to i64                ; 2 uses
  %i.x = ptrtoaddr ptr %i.t to i64
  %i.y = sext i32 %1 to i64
  %i.z = shl nsw i64 %i.y, 3
  %3 = add i64 %i.z, %i.x
  %i.aa = add i64 %3, 16
  %i.ab = add i64 %i.w, 8
  %umax = tail call i64 @llvm.umax.i64(i64 %i.aa, i64 %i.ab)
  %4 = xor i64 %i.w, -1
  %5 = add i64 %umax, %4
  %i.ac = and i64 %5, -8
  %i.ad = add i64 %i.ac, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.s, i8 0, i64 %i.ad, i1 false)
  %.pre8.pre = load ptr, ptr %i.g, align 8
  br label %_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE6resizeEmRKS4_.exit

_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE6resizeEmRKS4_.exit: ; preds = %.lr.ph.i.preheader, %_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE14EnsureCapacityEm.exit.i
  %.pre8 = phi ptr [ %.pre8.pre, %.lr.ph.i.preheader ], [ %i.t, %_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE14EnsureCapacityEm.exit.i ]
  store ptr %i.u, ptr %i.e, align 8
  br label %bb.d

bb.d:                                             ; preds = %_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE6resizeEmRKS4_.exit, %bb.a
  %i.ae = phi ptr [ %.pre8, %_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE6resizeEmRKS4_.exit ], [ %i.h, %bb.a ]
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.c
  %i.ag = load ptr, ptr %i.af, align 8            ; 2 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = tail call noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder9ParameterEiPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.al, i32 noundef %1, ptr noundef %2) #20
  %i.an = load ptr, ptr %i.ai, align 8
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store ptr %i.aq, ptr %i.a, align 8
  %i.ar = call noundef ptr @_ZN2v88internal8compiler20BytecodeGraphBuilder8MakeNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(856) %0, ptr noundef %i.am, i32 noundef 1, ptr noundef nonnull %i.a, i1 noundef zeroext false), !inline_history !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.as = load ptr, ptr %i.g, align 8
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.c
  store ptr %i.ar, ptr %i.at, align 8
  %.pre9 = load ptr, ptr %i.g, align 8
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %.pre9, i64 %i.c
  %.pre10 = load ptr, ptr %.phi.trans.insert, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.au = phi ptr [ %.pre10, %bb.e ], [ %i.ag, %bb.d ]
  ret ptr %i.au
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @_ZN2v88internal8compiler7JSGraph17UndefinedConstantEv(ptr dead_on_unwind writable sret(%"class.v8::internal::TNode") align 8, ptr noundef nonnull align 8 dereferenceable(1144)) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef i32 @_ZNK2v88internal8compiler20BytecodeGraphBuilder11Environment21RegisterToValuesIndexENS0_11interpreter8RegisterE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0, i32 %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = icmp slt i32 %1, 0
  %i.b = sub nsw i32 -9, %1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load i32, ptr %i.c, align 8
  %i.e = add nsw i32 %i.d, %1
  %.0 = select i1 %i.a, i32 %i.b, i32 %i.e
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler20BytecodeGraphBuilder11EnvironmentC2EPKS3_(ptr noundef nonnull align 8 dereferenceable(96) initializes((0, 96)) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8
  store ptr %i.a, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 8
  store i32 %i.d, ptr %i.b, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.g = load i32, ptr %i.f, align 4
  store i32 %i.g, ptr %i.e, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  store ptr %i.j, ptr %i.h, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  store ptr %i.m, ptr %i.k, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.p = load ptr, ptr %i.o, align 8
  store ptr %i.p, ptr %i.n, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.r = load ptr, ptr %1, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  store ptr %i.t, ptr %i.q, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, i8 0, i64 24, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.x = load ptr, ptr %i.w, align 8
  store ptr %i.x, ptr %i.v, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.aa = load ptr, ptr %i.z, align 8
  store ptr %i.aa, ptr %i.y, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ad = load i32, ptr %i.ac, align 8
  store i32 %i.ad, ptr %i.ab, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.ag = load i32, ptr %i.af, align 4
  store i32 %i.ag, ptr %i.ae, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ai = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEEaSERKS5_(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %i.ah) #20 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(32) ptr @_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEEaSERKS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 3 uses
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.n = sub i64 %i.l, %i.m                       ; 3 uses
  %.not = icmp ult i64 %i.i, %i.n
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %0, align 8
  %i.p = load ptr, ptr %1, align 8
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %.not24 = icmp eq ptr %i.k, %i.b
  br i1 %.not24, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.f, ptr align 8 %i.b, i64 %i.n, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.n
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.r, ptr %i.s, align 8
  br label %bb.m

bb.f:                                             ; preds = %bb.b, %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.w, %i.m                       ; 5 uses
  %.not23 = icmp eq ptr %i.v, %i.b
  br i1 %.not23, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = load ptr, ptr %0, align 8                ; 3 uses
  %i.z = icmp sgt i64 %i.x, -1
  br i1 %i.z, label %bb.i, label %bb.h, !prof !5

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.11) #21
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 3 uses
  %i.ad = load i64, ptr %i.ac, align 8            ; 2 uses
  %i.ae = sub i64 %i.ab, %i.ad
  %i.af = icmp ugt i64 %i.x, %i.ae
  br i1 %i.af, label %bb.j, label %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler4NodeEA_S5_EEPT_m.exit, !prof !15

bb.j:                                             ; preds = %bb.i
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.y, i64 noundef %i.x) #20
  %.pre.i.i = load i64, ptr %i.ac, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler4NodeEA_S5_EEPT_m.exit

_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler4NodeEA_S5_EEPT_m.exit: ; preds = %bb.i, %bb.j
  %i.ag = phi i64 [ %.pre.i.i, %bb.j ], [ %i.ad, %bb.i ] ; 2 uses
  %i.ah = inttoptr i64 %i.ag to ptr               ; 2 uses
  %i.ai = add i64 %i.ag, %i.x
  store i64 %i.ai, ptr %i.ac, align 8
  store ptr %i.ah, ptr %i.e, align 8
  %i.aj = load ptr, ptr %i.a, align 8, !nonnull !17, !noundef !17 ; 2 uses
  %i.ak = load ptr, ptr %i.j, align 8
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = ptrtoint ptr %i.aj to i64
  %i.an = sub i64 %i.al, %i.am
end_hunk_0
