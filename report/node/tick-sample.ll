Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/tick-sample?download=true
inline.NumInlined: 108
inline.NumDeleted: 88
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm
    ".globl _ZSt21ios_base_library_initv"

%"class.v8::base::AddressRegion" = type { i64, i64 }
%struct.Pattern = type { i32, [8 x i8], [4 x i32] }
%"class.v8::internal::ProfilerStats" = type { [7 x %"struct.std::atomic.270"] }
%"struct.std::atomic.270" = type { %"struct.std::__atomic_base.271" }
%"struct.std::__atomic_base.271" = type { i32 }
%"class.std::optional" = type { %"struct.std::_Optional_base" }
%"struct.std::_Optional_base" = type { %"struct.std::_Optional_payload" }
%"struct.std::_Optional_payload" = type { %"struct.std::_Optional_payload_base.base", [7 x i8] }
%"struct.std::_Optional_payload_base.base" = type <{ %"union.std::_Optional_payload_base<unsigned long>::_Storage", i8 }>
%"union.std::_Optional_payload_base<unsigned long>::_Storage" = type { i64 }
%"struct.v8::SampleInfo" = type { i64, ptr, ptr, ptr, i16, i8 }
%"struct.v8::RegisterState" = type { ptr, ptr, ptr, ptr, %"class.std::unique_ptr" }
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.1" }
%"struct.std::_Head_base.1" = type { ptr }
%"class.v8::internal::StackFrameIteratorForProfiler" = type { %"class.v8::internal::StackFrameIteratorBase", i64, i64, i32, ptr, i64, ptr }
%"class.v8::internal::StackFrameIteratorBase" = type { ptr, ptr, %union.anon.462, ptr, ptr, i8, ptr }
%union.anon.462 = type { %"class.v8::internal::EntryFrame" }
%"class.v8::internal::EntryFrame" = type { %"class.v8::internal::TypedFrame" }
%"class.v8::internal::TypedFrame" = type { %"class.v8::internal::CommonFrame" }
%"class.v8::internal::CommonFrame" = type { %"class.v8::internal::StackFrame" }
%"class.v8::internal::StackFrame" = type { ptr, ptr, ptr, %"struct.v8::internal::StackFrame::State" }
%"struct.v8::internal::StackFrame::State" = type <{ i64, i64, ptr, i64, i64, ptr, i8, i8, [6 x i8] }>

$_ZZN2v88internal4Heap11code_regionEvE12kEmptyRegion = comdat any

$_ZZN2v88internal13ProfilerStats8InstanceEvE5stats = comdat any

@.str = private unnamed_addr constant [19 x i8] c"TickSample: at %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c" - state: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c" - pc: %p\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c" - stack: (%u frames)\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"    %p\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c" - has_external_callback: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c" - %s: %p\0A\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"external_callback_entry\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"tos\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c" - update_stats: %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c" - sampling_interval: %ld\0A\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@_ZZN2v88internal4Heap11code_regionEvE12kEmptyRegion = linkonce_odr hidden local_unnamed_addr constant %"class.v8::base::AddressRegion" zeroinitializer, comdat, align 8
@_ZZN2v88internal12_GLOBAL__N_115IsNoFrameRegionEmE8patterns = internal global [4 x %struct.Pattern] [%struct.Pattern { i32 4, [8 x i8] c"UH\89\E5\00\00\00\00", [4 x i32] [i32 0, i32 1, i32 -1, i32 0] }, %struct.Pattern { i32 2, [8 x i8] c"]\C2\00\00\00\00\00\00", [4 x i32] [i32 0, i32 1, i32 -1, i32 0] }, %struct.Pattern { i32 2, [8 x i8] c"]\C3\00\00\00\00\00\00", [4 x i32] [i32 0, i32 1, i32 -1, i32 0] }, %struct.Pattern zeroinitializer], align 16
@_ZZN2v88internal13ProfilerStats8InstanceEvE5stats = linkonce_odr hidden global %"class.v8::internal::ProfilerStats" zeroinitializer, comdat, align 4
@.str.12 = private unnamed_addr constant [3 x i8] c"JS\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"GC\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"PARSER\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"BYTECODE_COMPILER\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"COMPILER\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"OTHER\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"EXTERNAL\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"ATOMICS_WAIT\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"IDLE\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"IDLE_EXTERNAL\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"LOGGING\00", align 1
@switch.table._ZNK2v88internal10TickSample5printEv = private unnamed_addr constant [11 x ptr] [ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.21], align 8

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN2v88internal10TickSample4InitEPNS0_7IsolateERKNS_13RegisterStateENS1_17RecordCEntryFrameEbbNS_4base9TimeDeltaESt8optionalImE(ptr nofree noundef nonnull align 8 captures(address_is_null) dereferenceable(2112) initializes((55, 56)) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2, i32 noundef %3, i1 noundef zeroext %4, i1 noundef zeroext %5, i64 %6, ptr nofree noundef readonly byval(%"class.std::optional") align 8 captures(none) %7) local_unnamed_addr #0 align 2 {
bb.a:
  %8 = alloca %"struct.v8::SampleInfo", align 8   ; 8 uses
  %9 = alloca %"struct.v8::RegisterState", align 8 ; 6 uses
  %i.a = zext i1 %4 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 55
  store i8 %i.a, ptr %i.b, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #6
  call void @_ZN2v813RegisterStateC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %9, ptr noundef nonnull align 8 dereferenceable(40) %2) #6
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.e = call noundef zeroext i1 @_ZN2v88internal10TickSample14GetStackSampleEPNS0_7IsolateEPNS_13RegisterStateENS1_17RecordCEntryFrameEPPvmPNS_10SampleInfoEPNS_8StateTagEb(ptr noundef %1, ptr noundef nonnull %9, i32 noundef %3, ptr noundef nonnull %i.c, i64 noundef 255, ptr noundef nonnull %8, ptr noundef nonnull %i.d, i1 zeroext poison)
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.f = load i16, ptr %i.d, align 8
  switch i16 %i.f, label %bb.d [
    i16 10, label %bb.e
    i16 6, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.h = load i16, ptr %i.g, align 8
  store i16 %i.h, ptr %i.d, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.c, %bb.d
  %i.i = load ptr, ptr %9, align 8
  %i.j = load i64, ptr %8, align 8
  %i.k = trunc i64 %i.j to i16
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i16 %i.k, ptr %i.l, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 8
  %10 = load ptr, ptr %i.m, align 8               ; 2 uses
  %11 = icmp ne ptr %10, null
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 54
  %12 = zext i1 %11 to i8
  store i8 %12, ptr %i.n, align 2
  %13 = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 34
  %i.p = load i8, ptr %i.o, align 2
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 50
  store i8 %i.p, ptr %i.q, align 2
  %i.r = load <2 x ptr>, ptr %13, align 8
  %14 = insertelement <4 x ptr> poison, ptr %i.i, i64 0
  %15 = insertelement <4 x ptr> %14, ptr %10, i64 1
  %16 = shufflevector <2 x ptr> %i.r, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %17 = shufflevector <4 x ptr> %15, <4 x ptr> %16, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  store <4 x ptr> %17, ptr %0, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %6, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false)
  %i.u = call i64 @_ZN2v84base9TimeTicks3NowEv() #6
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.u, ptr %i.v, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  call void @_ZN2v813RegisterStateD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %9) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #6
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @_ZN2v813RegisterStateC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN2v88internal10TickSample14GetStackSampleEPNS0_7IsolateEPNS_13RegisterStateENS1_17RecordCEntryFrameEPPvmPNS_10SampleInfoEPNS_8StateTagEb(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3, i64 noundef %4, ptr nofree noundef captures(none) initializes((0, 35)) %5, ptr nofree noundef writeonly captures(address_is_null) %6, i1 zeroext %7) local_unnamed_addr #0 align 2 {
bb.a:
  %8 = alloca %"class.v8::internal::StackFrameIteratorForProfiler", align 8 ; 6 uses
  store i64 0, ptr %5, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.b = load i16, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i16 %i.b, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 34 ; 2 uses
  store i8 0, ptr %i.e, align 2
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.h = icmp eq i16 %i.b, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  br i1 %i.h, label %bb.af, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56008
  %i.j = load atomic i32, ptr %i.i monotonic, align 8
  %i.k = and i32 %i.j, -5
  %.not113 = icmp eq i32 %i.k, 0
  br i1 %.not113, label %bb.c, label %bb.af

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.m = load ptr, ptr %i.l, align 8              ; 3 uses
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load i64, ptr %i.n, align 8
  %i.p = inttoptr i64 %i.o to ptr
  store ptr %i.p, ptr %i.f, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.r = load i8, ptr %i.q, align 8
  store i8 %i.r, ptr %i.e, align 2
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 344
  %.sroa.0.0.copyload.i = load i64, ptr %i.s, align 8 ; 2 uses
  %.not87 = icmp eq i64 %.sroa.0.0.copyload.i, 0
  br i1 %.not87, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = add i64 %.sroa.0.0.copyload.i, -1
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = load atomic volatile i64, ptr %i.u monotonic, align 8
  %i.w = add i64 %i.v, 31
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = load i64, ptr %i.x, align 8
  %i.z = inttoptr i64 %i.y to ptr
  store ptr %i.z, ptr %i.g, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.ab = load i64, ptr %i.aa, align 8            ; 3 uses
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %bb.af, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 55296
  %i.ae = load ptr, ptr %i.ad, align 8            ; 4 uses
  %.not88 = icmp eq ptr %i.ae, null
  br i1 %.not88, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 56
  %i.ag = load ptr, ptr %i.af, align 8
  %.not89 = icmp eq ptr %i.ag, null
  br i1 %.not89, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 112
  %i.ai = load ptr, ptr %i.ah, align 8            ; 2 uses
  %.not.i = icmp eq ptr %i.ai, null
  %..i = select i1 %.not.i, ptr %i.ae, ptr %i.ai  ; 2 uses
  %i.aj = load ptr, ptr %..i, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %..i, i64 8
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.al
  %i.an = ptrtoint ptr %i.am to i64
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j
  %.074 = phi i64 [ %i.an, %bb.j ], [ %i.ab, %bb.i ], [ %i.ab, %bb.h ]
  %i.ao = load ptr, ptr %1, align 8               ; 4 uses
  %.not90 = icmp eq ptr %i.ao, null
  br i1 %.not90, label %_ZN2v88internal12_GLOBAL__N_115IsNoFrameRegionEm.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 57488
  %i.aq = load ptr, ptr %i.ap, align 8            ; 2 uses
  %.not.i99 = icmp eq ptr %i.aq, null
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  %i.as = select i1 %.not.i99, ptr @_ZZN2v88internal4Heap11code_regionEvE12kEmptyRegion, ptr %i.ar ; 2 uses
  %i.at = ptrtoint ptr %i.ao to i64               ; 3 uses
  %i.au = load i64, ptr %i.as, align 8
  %i.av = sub i64 %i.at, %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.ax = load i64, ptr %i.aw, align 8
  %i.ay = icmp uge i64 %i.av, %i.ax
  %i.az = load i32, ptr @_ZZN2v88internal12_GLOBAL__N_115IsNoFrameRegionEmE8patterns, align 16 ; 2 uses
  %.not47.not.i = icmp eq i32 %i.az, 0
  %or.cond110 = select i1 %i.ay, i1 true, i1 %.not47.not.i
  br i1 %or.cond110, label %_ZN2v88internal12_GLOBAL__N_115IsNoFrameRegionEm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.l, %.critedge39.i
  %i.ba = phi i32 [ %i.bq, %.critedge39.i ], [ %i.az, %bb.l ] ; 2 uses
  %.02848.i = phi ptr [ %i.bp, %.critedge39.i ], [ @_ZZN2v88internal12_GLOBAL__N_115IsNoFrameRegionEmE8patterns, %bb.l ] ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.02848.i, i64 12
  %i.bc = getelementptr inbounds nuw i8, ptr %.02848.i, i64 4 ; 2 uses
  %i.bd = sext i32 %i.ba to i64
  br label %bb.m

bb.m:                                             ; preds = %.critedge.i, %.lr.ph.i
  %.0.i = phi ptr [ %i.bb, %.lr.ph.i ], [ %i.bo, %.critedge.i ] ; 2 uses
  %i.be = load i32, ptr %.0.i, align 4            ; 3 uses
  switch i32 %i.be, label %bb.n [
    i32 -1, label %.critedge39.i
    i32 0, label %._crit_edge.i
  ]

bb.n:                                             ; preds = %bb.m
  %i.bf = sext i32 %i.be to i64                   ; 3 uses
  %i.bg = sub i64 %i.at, %i.bf
  %i.bh = xor i64 %i.bg, %i.at
  %i.bi = icmp ult i64 %i.bh, 4096
  br i1 %i.bi, label %._crit_edge.i, label %bb.o

._crit_edge.i:                                    ; preds = %bb.n, %bb.m
  %.pre-phi.i = phi i64 [ %i.bf, %bb.n ], [ 0, %bb.m ]
  %i.bj = sub nsw i64 0, %.pre-phi.i
  %i.bk = getelementptr inbounds i8, ptr %i.ao, i64 %i.bj
  %bcmp36.i = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(1) %i.bk, ptr noundef nonnull dereferenceable(1) %i.bc, i64 %i.bd)
  %.not37.i = icmp eq i32 %bcmp36.i, 0
  br i1 %.not37.i, label %bb.p, label %.critedge.i

bb.o:                                             ; preds = %bb.n
  %i.bl = getelementptr inbounds i8, ptr %i.bc, i64 %i.bf
  %i.bm = sub nsw i32 %i.ba, %i.be
  %i.bn = sext i32 %i.bm to i64
  %bcmp.i = tail call i32 @bcmp(ptr nonnull %i.ao, ptr nonnull %i.bl, i64 %i.bn)
  %.not35.i = icmp eq i32 %bcmp.i, 0
  br i1 %.not35.i, label %bb.p, label %.critedge.i

.critedge.i:                                      ; preds = %bb.o, %._crit_edge.i
  %i.bo = getelementptr inbounds nuw i8, ptr %.0.i, i64 4
  br label %bb.m, !llvm.loop !6

.critedge39.i:                                    ; preds = %bb.m
  %i.bp = getelementptr inbounds nuw i8, ptr %.02848.i, i64 28 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4            ; 2 uses
  %.not.not.i = icmp eq i32 %i.bq, 0
  br i1 %.not.not.i, label %_ZN2v88internal12_GLOBAL__N_115IsNoFrameRegionEm.exit, label %.lr.ph.i, !llvm.loop !7

bb.p:                                             ; preds = %bb.o, %._crit_edge.i
  tail call void @_ZN2v88internal13ProfilerStats9AddReasonENS1_6ReasonE(ptr noundef nonnull align 4 dereferenceable(28) @_ZZN2v88internal13ProfilerStats8InstanceEvE5stats, i32 noundef 3) #6
  br label %bb.af

_ZN2v88internal12_GLOBAL__N_115IsNoFrameRegionEm.exit: ; preds = %.critedge39.i, %bb.l, %bb.k
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.bs = load ptr, ptr %i.br, align 8            ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.bu = load i64, ptr %i.bt, align 8
  %.not91 = icmp ne ptr %i.bs, null
  %i.bv = ptrtoint ptr %i.bs to i64
  %i.bw = icmp ugt i64 %i.bu, %i.bv
  %or.cond112 = select i1 %.not91, i1 %i.bw, i1 false
  br i1 %or.cond112, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_115IsNoFrameRegionEm.exit
  %i.bx = load i64, ptr %i.bs, align 8
  %i.by = inttoptr i64 %i.bx to ptr
  store ptr %i.by, ptr %i.d, align 8
end_hunk_0
