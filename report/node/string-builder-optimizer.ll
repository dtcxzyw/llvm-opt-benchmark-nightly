Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/string-builder-optimizer?download=true
inline.NumInlined: 780
inline.NumDeleted: 385
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0

$_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE4GrowEm = comdat any

$_ZN2v88internal8compiler10TryMakeRefINS0_10HeapObjectEEENS1_11OptionalRefINS1_10ref_traitsIT_E8ref_typeEEEPNS1_12JSHeapBrokerENS0_6HandleIS6_EENS_4base5FlagsINS1_19GetOrCreateDataFlagEiiEEQ12is_subtype_vIS6_NS0_6ObjectEE = comdat any

$_ZN2v88internal12StdoutStreamD1Ev = comdat any

$_ZN2v88internal8OFStreamD1Ev = comdat any

$_ZN2v88internal8OFStreamD0Ev = comdat any

$_ZTv0_n24_N2v88internal8OFStreamD1Ev = comdat any

$_ZTv0_n24_N2v88internal8OFStreamD0Ev = comdat any

$_ZN2v88internal12StdoutStreamD0Ev = comdat any

$_ZTv0_n24_N2v88internal12StdoutStreamD1Ev = comdat any

$_ZTv0_n24_N2v88internal12StdoutStreamD0Ev = comdat any

$_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEEaSERKS5_ = comdat any

$_ZN2v88internal10ZoneVectorINS0_8compiler22StringBuilderOptimizer13StringBuilderEE4GrowEm = comdat any

$_ZN2v88internal10ZoneVectorIPNS0_8compiler10BasicBlockEE4GrowEm = comdat any

$_ZTVN2v88internal12StdoutStreamE = comdat any

$_ZTTN2v88internal12StdoutStreamE = comdat any

$_ZTCN2v88internal12StdoutStreamE0_NS0_8OFStreamE = comdat any

$_ZTCN2v88internal12StdoutStreamE0_So = comdat any

$_ZTVN2v88internal8OFStreamE = comdat any

@.str = private unnamed_addr constant [17 x i8] c"unreachable code\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Check failed: %s.\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"length < std::numeric_limits<size_t>::max() / sizeof(T)\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"index < node->op()->ValueInputCount()\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"Missing \00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"ObjectData for \00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c" (\00", align 1
@.str.9 = private unnamed_addr constant [44 x i8] c"../../deps/v8/src/compiler/js-heap-broker.h\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c")\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@_ZTVN2v88internal12StdoutStreamE = linkonce_odr hidden unnamed_addr constant { [5 x ptr], [5 x ptr] } { [5 x ptr] [ptr inttoptr (i64 88 to ptr), ptr null, ptr null, ptr @_ZN2v88internal12StdoutStreamD1Ev, ptr @_ZN2v88internal12StdoutStreamD0Ev], [5 x ptr] [ptr inttoptr (i64 -88 to ptr), ptr inttoptr (i64 -88 to ptr), ptr null, ptr @_ZTv0_n24_N2v88internal12StdoutStreamD1Ev, ptr @_ZTv0_n24_N2v88internal12StdoutStreamD0Ev] }, comdat, align 8
@_ZTTN2v88internal12StdoutStreamE = linkonce_odr hidden unnamed_addr constant [6 x ptr] [ptr getelementptr inbounds inrange(-24, 16) ({ [5 x ptr], [5 x ptr] }, ptr @_ZTVN2v88internal12StdoutStreamE, i32 0, i32 0, i32 3), ptr getelementptr inbounds inrange(-24, 16) ({ [5 x ptr], [5 x ptr] }, ptr @_ZTCN2v88internal12StdoutStreamE0_NS0_8OFStreamE, i32 0, i32 0, i32 3), ptr getelementptr inbounds inrange(-24, 16) ({ [5 x ptr], [5 x ptr] }, ptr @_ZTCN2v88internal12StdoutStreamE0_So, i32 0, i32 0, i32 3), ptr getelementptr inbounds inrange(-24, 16) ({ [5 x ptr], [5 x ptr] }, ptr @_ZTCN2v88internal12StdoutStreamE0_So, i32 0, i32 1, i32 3), ptr getelementptr inbounds inrange(-24, 16) ({ [5 x ptr], [5 x ptr] }, ptr @_ZTCN2v88internal12StdoutStreamE0_NS0_8OFStreamE, i32 0, i32 1, i32 3), ptr getelementptr inbounds inrange(-24, 16) ({ [5 x ptr], [5 x ptr] }, ptr @_ZTVN2v88internal12StdoutStreamE, i32 0, i32 1, i32 3)], comdat, align 8
@_ZTCN2v88internal12StdoutStreamE0_NS0_8OFStreamE = linkonce_odr hidden unnamed_addr constant { [5 x ptr], [5 x ptr] } { [5 x ptr] [ptr inttoptr (i64 88 to ptr), ptr null, ptr null, ptr @_ZN2v88internal8OFStreamD1Ev, ptr @_ZN2v88internal8OFStreamD0Ev], [5 x ptr] [ptr inttoptr (i64 -88 to ptr), ptr inttoptr (i64 -88 to ptr), ptr null, ptr @_ZTv0_n24_N2v88internal8OFStreamD1Ev, ptr @_ZTv0_n24_N2v88internal8OFStreamD0Ev] }, comdat, align 8
@_ZTCN2v88internal12StdoutStreamE0_So = linkonce_odr hidden unnamed_addr constant { [5 x ptr], [5 x ptr] } { [5 x ptr] [ptr inttoptr (i64 88 to ptr), ptr null, ptr null, ptr @_ZNSoD1Ev, ptr @_ZNSoD0Ev], [5 x ptr] [ptr inttoptr (i64 -88 to ptr), ptr inttoptr (i64 -88 to ptr), ptr null, ptr @_ZTv0_n24_NSoD1Ev, ptr @_ZTv0_n24_NSoD0Ev] }, comdat, align 8
@_ZTVSt9basic_iosIcSt11char_traitsIcEE = external unnamed_addr constant { [4 x ptr] }, align 8
@_ZTVN2v88internal8OFStreamE = linkonce_odr hidden unnamed_addr constant { [5 x ptr], [5 x ptr] } { [5 x ptr] [ptr inttoptr (i64 80 to ptr), ptr null, ptr null, ptr @_ZN2v88internal8OFStreamD1Ev, ptr @_ZN2v88internal8OFStreamD0Ev], [5 x ptr] [ptr inttoptr (i64 -80 to ptr), ptr inttoptr (i64 -80 to ptr), ptr null, ptr @_ZTv0_n24_N2v88internal8OFStreamD1Ev, ptr @_ZTv0_n24_N2v88internal8OFStreamD0Ev] }, comdat, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external unnamed_addr constant { [16 x ptr] }, align 8
@.str.12 = private unnamed_addr constant [15 x i8] c"IsHeapObject()\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"(data_) != nullptr\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"HasResolvedValue()\00", align 1

@_ZN2v88internal8compiler22StringBuilderOptimizerC1EPNS1_7JSGraphEPNS1_8ScheduleEPNS0_4ZoneEPNS1_12JSHeapBrokerE = hidden unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr), ptr @_ZN2v88internal8compiler22StringBuilderOptimizerC2EPNS1_7JSGraphEPNS1_8ScheduleEPNS0_4ZoneEPNS1_12JSHeapBrokerE

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext range(i8 1, 4) i8 @_ZN2v88internal8compiler20OneOrTwoByteAnalysis26ConcatResultIsOneOrTwoByteENS2_5StateES3_(i8 noundef zeroext %0, i8 noundef zeroext %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq i8 %0, 1
  %i.b = icmp eq i8 %1, 1
  %or.cond = and i1 %i.a, %i.b
  %i.c = icmp eq i8 %0, 2
  %i.d = icmp eq i8 %1, 2
  %or.cond3 = or i1 %i.c, %i.d
  %. = select i1 %or.cond3, i8 2, i8 3
  %.0 = select i1 %or.cond, i8 1, i8 %.
  ret i8 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler20OneOrTwoByteAnalysis11TryGetRangeEPNS1_4NodeE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::optional") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef %2) local_unnamed_addr #1 align 2 {
bb.a:
  %3 = alloca %"class.std::optional", align 8     ; 6 uses
  %4 = alloca %"class.std::optional", align 8     ; 6 uses
  %5 = alloca %"class.std::optional", align 8     ; 6 uses
  %6 = alloca %"class.std::optional", align 8     ; 6 uses
  %7 = alloca %"class.std::optional", align 8     ; 5 uses
  %8 = alloca %"class.std::optional", align 8     ; 6 uses
  %9 = alloca %"class.std::optional", align 8     ; 6 uses
  %10 = alloca %"class.std::optional", align 8    ; 6 uses
  %11 = alloca %"struct.v8::internal::compiler::HeapObjectMatcherImpl", align 8 ; 7 uses
  %12 = alloca %"class.v8::internal::compiler::HeapObjectRef", align 8 ; 4 uses
  %13 = alloca %"class.v8::internal::compiler::CodeRef", align 8 ; 6 uses
  %14 = alloca %"class.v8::internal::compiler::HeapObjectRef", align 8 ; 4 uses
  br label %tailrecurse

tailrecurse:                                      ; preds = %_ZNK2v88internal8compiler4Node7InputAtEi.exit, %bb.a
  %.tr233 = phi ptr [ %2, %bb.a ], [ %i.n, %_ZNK2v88internal8compiler4Node7InputAtEi.exit ] ; 13 uses
  %i.a = load ptr, ptr %.tr233, align 8           ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i16, ptr %i.b, align 8
  switch i16 %i.c, label %bb.as [
    i16 73, label %bb.b
    i16 542, label %bb.b
    i16 393, label %bb.d
    i16 394, label %bb.d
    i16 415, label %bb.d
    i16 416, label %bb.d
    i16 443, label %bb.d
    i16 459, label %bb.d
    i16 395, label %bb.j
    i16 396, label %bb.j
    i16 417, label %bb.j
    i16 418, label %bb.j
    i16 444, label %bb.j
    i16 460, label %bb.j
    i16 385, label %bb.p
    i16 405, label %bb.p
    i16 397, label %bb.y
    i16 398, label %bb.y
    i16 419, label %bb.y
    i16 445, label %bb.y
    i16 461, label %bb.y
    i16 50, label %bb.ae
    i16 30, label %_ZNK2v88internal8compiler12ValueMatcherIfLNS1_8IrOpcode5ValueE30EE13ResolvedValueEv.exit
    i16 27, label %_ZNK2v88internal8compiler12ValueMatcherIiLNS1_8IrOpcode5ValueE27EE13ResolvedValueEv.exit70
    i16 28, label %_ZN2v88internal8compiler19SkipValueIdentitiesEPNS1_4NodeE.exit.i.i74
    i16 23, label %_ZNK2v88internal8compiler12ValueMatcherIdLNS1_8IrOpcode5ValueE23EE13ResolvedValueEv.exit
    i16 31, label %_ZNK2v88internal8compiler17BoxedFloatMatcherINS0_7Float64ELNS1_8IrOpcode5ValueE31EE11ScalarValueEv.exit
  ]

bb.b:                                             ; preds = %tailrecurse, %tailrecurse
  %i.d = getelementptr inbounds nuw i8, ptr %.tr233, i64 20
  %i.e = load i32, ptr %i.d, align 4
  %i.f = and i32 %i.e, 251658240
  %.not.i.i = icmp eq i32 %i.f, 251658240
  %i.g = ptrtoint ptr %.tr233 to i64
  %i.h = add i64 %i.g, 32
  %i.i = inttoptr i64 %i.h to ptr                 ; 2 uses
  br i1 %.not.i.i, label %bb.c, label %_ZNK2v88internal8compiler4Node7InputAtEi.exit

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = add i64 %i.k, 16
  %i.m = inttoptr i64 %i.l to ptr
  br label %_ZNK2v88internal8compiler4Node7InputAtEi.exit

_ZNK2v88internal8compiler4Node7InputAtEi.exit:    ; preds = %bb.b, %bb.c
  %.sink.i.i = phi ptr [ %i.m, %bb.c ], [ %i.i, %bb.b ]
  %i.n = load ptr, ptr %.sink.i.i, align 8
  br label %tailrecurse

bb.d:                                             ; preds = %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.o = getelementptr inbounds nuw i8, ptr %.tr233, i64 20 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4
  %i.q = and i32 %i.p, 251658240
  %.not.i.i22 = icmp eq i32 %i.q, 251658240
  %i.r = ptrtoint ptr %.tr233 to i64
  %i.s = add i64 %i.r, 32
  %i.t = inttoptr i64 %i.s to ptr                 ; 4 uses
  br i1 %.not.i.i22, label %bb.e, label %_ZNK2v88internal8compiler4Node7InputAtEi.exit24

bb.e:                                             ; preds = %bb.d
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = add i64 %i.v, 16
  %i.x = inttoptr i64 %i.w to ptr
  br label %_ZNK2v88internal8compiler4Node7InputAtEi.exit24

_ZNK2v88internal8compiler4Node7InputAtEi.exit24:  ; preds = %bb.d, %bb.e
  %.sink.i.i23 = phi ptr [ %i.x, %bb.e ], [ %i.t, %bb.d ]
  %i.y = load ptr, ptr %.sink.i.i23, align 8
  call void @_ZN2v88internal8compiler20OneOrTwoByteAnalysis11TryGetRangeEPNS1_4NodeE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional") align 8 %3, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.z = load i32, ptr %i.o, align 4
  %i.aa = and i32 %i.z, 251658240
  %.not.i.i25 = icmp eq i32 %i.aa, 251658240
  br i1 %.not.i.i25, label %bb.f, label %_ZNK2v88internal8compiler4Node7InputAtEi.exit27

bb.f:                                             ; preds = %_ZNK2v88internal8compiler4Node7InputAtEi.exit24
  %i.ab = load ptr, ptr %i.t, align 8
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = add i64 %i.ac, 16
  %i.ae = inttoptr i64 %i.ad to ptr
  br label %_ZNK2v88internal8compiler4Node7InputAtEi.exit27

_ZNK2v88internal8compiler4Node7InputAtEi.exit27:  ; preds = %_ZNK2v88internal8compiler4Node7InputAtEi.exit24, %bb.f
  %.sink.i.i26 = phi ptr [ %i.ae, %bb.f ], [ %i.t, %_ZNK2v88internal8compiler4Node7InputAtEi.exit24 ]
  %i.af = getelementptr inbounds nuw i8, ptr %.sink.i.i26, i64 8
  %i.ag = load ptr, ptr %i.af, align 8
  call void @_ZN2v88internal8compiler20OneOrTwoByteAnalysis11TryGetRangeEPNS1_4NodeE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional") align 8 %4, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef %i.ag)
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ai = load i8, ptr %i.ah, align 8, !range !5, !noundef !6
  %i.aj = trunc nuw i8 %i.ai to i1
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.al = load i8, ptr %i.ak, align 8, !range !5
  %i.am = trunc nuw i8 %i.al to i1
  %or.cond = select i1 %i.aj, i1 %i.am, i1 false
  br i1 %or.cond, label %bb.g, label %bb.i

bb.g:                                             ; preds = %_ZNK2v88internal8compiler4Node7InputAtEi.exit27
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ao = load i64, ptr %i.an, align 8
  %i.ap = trunc i64 %i.ao to i32
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ar = load i64, ptr %i.aq, align 8
  %i.as = trunc i64 %i.ar to i32
  %i.at = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.ap, i32 %i.as) ; 2 uses
  %i.au = extractvalue { i32, i1 } %i.at, 1
  br i1 %i.au, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %15 = extractvalue { i32, i1 } %i.at, 0
  %i.av = load i64, ptr %3, align 8
  %i.aw = load i64, ptr %4, align 8
  %i.ax = add nsw i64 %i.aw, %i.av
  store i64 %i.ax, ptr %0, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  %16 = sext i32 %15 to i64
  store i64 %16, ptr %i.ay, align 8
  br label %bb.i

bb.i:                                             ; preds = %_ZNK2v88internal8compiler4Node7InputAtEi.exit27, %bb.g, %bb.h
  %.sink292 = phi i8 [ 0, %bb.g ], [ 1, %bb.h ], [ 0, %_ZNK2v88internal8compiler4Node7InputAtEi.exit27 ]
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink292, ptr %i.az, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %bb.at

bb.j:                                             ; preds = %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.ba = getelementptr inbounds nuw i8, ptr %.tr233, i64 20 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4
  %i.bc = and i32 %i.bb, 251658240
  %.not.i.i28 = icmp eq i32 %i.bc, 251658240
  %i.bd = ptrtoint ptr %.tr233 to i64
  %i.be = add i64 %i.bd, 32
  %i.bf = inttoptr i64 %i.be to ptr               ; 4 uses
  br i1 %.not.i.i28, label %bb.k, label %_ZNK2v88internal8compiler4Node7InputAtEi.exit30

bb.k:                                             ; preds = %bb.j
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = add i64 %i.bh, 16
  %i.bj = inttoptr i64 %i.bi to ptr
  br label %_ZNK2v88internal8compiler4Node7InputAtEi.exit30

_ZNK2v88internal8compiler4Node7InputAtEi.exit30:  ; preds = %bb.j, %bb.k
  %.sink.i.i29 = phi ptr [ %i.bj, %bb.k ], [ %i.bf, %bb.j ]
  %i.bk = load ptr, ptr %.sink.i.i29, align 8
  call void @_ZN2v88internal8compiler20OneOrTwoByteAnalysis11TryGetRangeEPNS1_4NodeE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional") align 8 %5, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef %i.bk)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.bl = load i32, ptr %i.ba, align 4
  %i.bm = and i32 %i.bl, 251658240
  %.not.i.i31 = icmp eq i32 %i.bm, 251658240
  br i1 %.not.i.i31, label %bb.l, label %_ZNK2v88internal8compiler4Node7InputAtEi.exit33

bb.l:                                             ; preds = %_ZNK2v88internal8compiler4Node7InputAtEi.exit30
  %i.bn = load ptr, ptr %i.bf, align 8
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = add i64 %i.bo, 16
  %i.bq = inttoptr i64 %i.bp to ptr
  br label %_ZNK2v88internal8compiler4Node7InputAtEi.exit33

_ZNK2v88internal8compiler4Node7InputAtEi.exit33:  ; preds = %_ZNK2v88internal8compiler4Node7InputAtEi.exit30, %bb.l
  %.sink.i.i32 = phi ptr [ %i.bq, %bb.l ], [ %i.bf, %_ZNK2v88internal8compiler4Node7InputAtEi.exit30 ]
  %i.br = getelementptr inbounds nuw i8, ptr %.sink.i.i32, i64 8
  %i.bs = load ptr, ptr %i.br, align 8
  call void @_ZN2v88internal8compiler20OneOrTwoByteAnalysis11TryGetRangeEPNS1_4NodeE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional") align 8 %6, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef %i.bs)
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bu = load i8, ptr %i.bt, align 8, !range !5, !noundef !6
  %i.bv = trunc nuw i8 %i.bu to i1
  %i.bw = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bx = load i8, ptr %i.bw, align 8, !range !5
  %i.by = trunc nuw i8 %i.bx to i1
  %or.cond224 = select i1 %i.bv, i1 %i.by, i1 false
  br i1 %or.cond224, label %bb.m, label %bb.o

bb.m:                                             ; preds = %_ZNK2v88internal8compiler4Node7InputAtEi.exit33
  %i.bz = load i64, ptr %5, align 8               ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cb = load i64, ptr %i.ca, align 8            ; 2 uses
  %i.cc = icmp slt i64 %i.bz, %i.cb
  br i1 %i.cc, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cd = sub nsw i64 %i.bz, %i.cb
  %i.ce = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cf = load i64, ptr %i.ce, align 8
  %i.cg = load i64, ptr %6, align 8
  %i.ch = sub nsw i64 %i.cf, %i.cg
  store i64 %i.cd, ptr %0, align 8
  %.sroa.4198.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ch, ptr %.sroa.4198.0..sroa_idx, align 8
  br label %bb.o

bb.o:                                             ; preds = %_ZNK2v88internal8compiler4Node7InputAtEi.exit33, %bb.m, %bb.n
  %.sink294 = phi i8 [ 0, %bb.m ], [ 1, %bb.n ], [ 0, %_ZNK2v88internal8compiler4Node7InputAtEi.exit33 ]
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink294, ptr %i.ci, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %bb.at

bb.p:                                             ; preds = %tailrecurse, %tailrecurse
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %i.cj = getelementptr inbounds nuw i8, ptr %.tr233, i64 20 ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 4
  %i.cl = and i32 %i.ck, 251658240
  %.not.i.i34 = icmp eq i32 %i.cl, 251658240
  %i.cm = ptrtoint ptr %.tr233 to i64
  %i.cn = add i64 %i.cm, 32
  %i.co = inttoptr i64 %i.cn to ptr               ; 4 uses
  br i1 %.not.i.i34, label %bb.q, label %_ZNK2v88internal8compiler4Node7InputAtEi.exit36

bb.q:                                             ; preds = %bb.p
  %i.cp = load ptr, ptr %i.co, align 8
  %i.cq = ptrtoint ptr %i.cp to i64
  %i.cr = add i64 %i.cq, 16
  %i.cs = inttoptr i64 %i.cr to ptr
  br label %_ZNK2v88internal8compiler4Node7InputAtEi.exit36

_ZNK2v88internal8compiler4Node7InputAtEi.exit36:  ; preds = %bb.p, %bb.q
  %.sink.i.i35 = phi ptr [ %i.cs, %bb.q ], [ %i.co, %bb.p ]
  %i.ct = load ptr, ptr %.sink.i.i35, align 8
  call void @_ZN2v88internal8compiler20OneOrTwoByteAnalysis11TryGetRangeEPNS1_4NodeE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional") align 8 %7, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef %i.ct)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  %i.cu = load i32, ptr %i.cj, align 4
  %i.cv = and i32 %i.cu, 251658240
  %.not.i.i37 = icmp eq i32 %i.cv, 251658240
  br i1 %.not.i.i37, label %bb.r, label %_ZNK2v88internal8compiler4Node7InputAtEi.exit39

bb.r:                                             ; preds = %_ZNK2v88internal8compiler4Node7InputAtEi.exit36
  %i.cw = load ptr, ptr %i.co, align 8
  %i.cx = ptrtoint ptr %i.cw to i64
  %i.cy = add i64 %i.cx, 16
  %i.cz = inttoptr i64 %i.cy to ptr
  br label %_ZNK2v88internal8compiler4Node7InputAtEi.exit39

_ZNK2v88internal8compiler4Node7InputAtEi.exit39:  ; preds = %_ZNK2v88internal8compiler4Node7InputAtEi.exit36, %bb.r
  %.sink.i.i38 = phi ptr [ %i.cz, %bb.r ], [ %i.co, %_ZNK2v88internal8compiler4Node7InputAtEi.exit36 ]
  %i.da = getelementptr inbounds nuw i8, ptr %.sink.i.i38, i64 8
  %i.db = load ptr, ptr %i.da, align 8
  call void @_ZN2v88internal8compiler20OneOrTwoByteAnalysis11TryGetRangeEPNS1_4NodeE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional") align 8 %8, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef %i.db)
  %i.dc = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.dd = load i8, ptr %i.dc, align 8, !range !5, !noundef !6
  %i.de = trunc nuw i8 %i.dd to i1
  %i.df = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.dg = load i8, ptr %i.df, align 8, !range !5, !noundef !6
  %i.dh = trunc nuw i8 %i.dg to i1                ; 2 uses
  br i1 %i.de, label %bb.s, label %bb.v

bb.s:                                             ; preds = %_ZNK2v88internal8compiler4Node7InputAtEi.exit39
  %i.di = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  br i1 %i.dh, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.dj = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.dk = load i64, ptr %i.dj, align 8
  %i.dl = load i64, ptr %i.di, align 8
  %i.dm = tail call i64 @llvm.smin.i64(i64 %i.dk, i64 %i.dl)
  br label %.sink.split

bb.u:                                             ; preds = %bb.s
  %i.dn = load i64, ptr %i.di, align 8
  br label %.sink.split

bb.v:                                             ; preds = %_ZNK2v88internal8compiler4Node7InputAtEi.exit39
  br i1 %i.dh, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.do = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.dp = load i64, ptr %i.do, align 8
  br label %.sink.split

.sink.split:                                      ; preds = %bb.t, %bb.u, %bb.w
  %.sink300 = phi i64 [ %i.dp, %bb.w ], [ %i.dn, %bb.u ], [ %i.dm, %bb.t ]
  store i64 0, ptr %0, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink300, ptr %i.dq, align 8
  br label %bb.x

bb.x:                                             ; preds = %.sink.split, %bb.v
  %.sink296 = phi i8 [ 0, %bb.v ], [ 1, %.sink.split ]
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink296, ptr %i.dr, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br label %bb.at

bb.y:                                             ; preds = %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  %i.ds = getelementptr inbounds nuw i8, ptr %.tr233, i64 20 ; 2 uses
  %i.dt = load i32, ptr %i.ds, align 4
  %i.du = and i32 %i.dt, 251658240
  %.not.i.i40 = icmp eq i32 %i.du, 251658240
  %i.dv = ptrtoint ptr %.tr233 to i64
  %i.dw = add i64 %i.dv, 32
  %i.dx = inttoptr i64 %i.dw to ptr               ; 4 uses
  br i1 %.not.i.i40, label %bb.z, label %_ZNK2v88internal8compiler4Node7InputAtEi.exit42

bb.z:                                             ; preds = %bb.y
  %i.dy = load ptr, ptr %i.dx, align 8
  %i.dz = ptrtoint ptr %i.dy to i64
  %i.ea = add i64 %i.dz, 16
  %i.eb = inttoptr i64 %i.ea to ptr
  br label %_ZNK2v88internal8compiler4Node7InputAtEi.exit42

_ZNK2v88internal8compiler4Node7InputAtEi.exit42:  ; preds = %bb.y, %bb.z
  %.sink.i.i41 = phi ptr [ %i.eb, %bb.z ], [ %i.dx, %bb.y ]
  %i.ec = load ptr, ptr %.sink.i.i41, align 8
  call void @_ZN2v88internal8compiler20OneOrTwoByteAnalysis11TryGetRangeEPNS1_4NodeE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional") align 8 %9, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef %i.ec)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  %i.ed = load i32, ptr %i.ds, align 4
  %i.ee = and i32 %i.ed, 251658240
  %.not.i.i43 = icmp eq i32 %i.ee, 251658240
  br i1 %.not.i.i43, label %bb.aa, label %_ZNK2v88internal8compiler4Node7InputAtEi.exit45

end_hunk_0
