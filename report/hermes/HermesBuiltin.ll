inline.NumInlined: 1255
inline.NumDeleted: 622
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.hermes::vm::PinnedHermesValue" = type { %"class.hermes::vm::HermesValue" }
%"class.hermes::vm::HermesValue" = type { i64 }
%"struct.std::array.234" = type { [79 x ptr] }
%"class.hermes::vm::TwineChar16" = type { %"union.hermes::vm::TwineChar16::Node", i32, %"union.hermes::vm::TwineChar16::Node", i32, i64, i64 }
%"union.hermes::vm::TwineChar16::Node" = type { ptr }
%"class.hermes::vm::GCScope" = type <{ ptr, ptr, [128 x i8], %"class.llvh::SmallVector.147", ptr, ptr, i32, [4 x i8] }>
%"class.llvh::SmallVector.147" = type { %"class.llvh::SmallVectorImpl.148", %"struct.llvh::SmallVectorStorage.151" }
%"class.llvh::SmallVectorImpl.148" = type { %"class.llvh::SmallVectorTemplateBase.149" }
%"class.llvh::SmallVectorTemplateBase.149" = type { %"class.llvh::SmallVectorTemplateCommon.150" }
%"class.llvh::SmallVectorTemplateCommon.150" = type { %"class.llvh::SmallVectorBase" }
%"class.llvh::SmallVectorBase" = type { ptr, i32, i32 }
%"struct.llvh::SmallVectorStorage.151" = type { [4 x %"struct.llvh::AlignedCharArrayUnion.152"] }
%"struct.llvh::AlignedCharArrayUnion.152" = type { %"struct.llvh::AlignedCharArray.153" }
%"struct.llvh::AlignedCharArray.153" = type { [8 x i8] }
%"class.hermes::vm::MutableHandle.191" = type { %"class.hermes::vm::Handle.192" }
%"class.hermes::vm::Handle.192" = type { %"class.hermes::vm::HandleBase" }
%"class.hermes::vm::HandleBase" = type { ptr }
%"struct.hermes::vm::ComputedPropertyDescriptor" = type { %"struct.hermes::vm::PropertyDescriptor" }
%"struct.hermes::vm::PropertyDescriptor" = type { %union.anon.196, i32 }
%union.anon.196 = type { i32 }
%"class.hermes::vm::Handle.177" = type { %"class.hermes::vm::HandleBase" }
%"class.hermes::vm::MutableHandle" = type { %"class.hermes::vm::Handle.179" }
%"class.hermes::vm::Handle.179" = type { %"class.hermes::vm::HandleBase" }
%class.anon = type { ptr, ptr, ptr, ptr, ptr, ptr }
%class.anon.193 = type { ptr, ptr, ptr, ptr }
%"struct.hermes::vm::NamedPropertyDescriptor" = type { %"struct.hermes::vm::PropertyDescriptor" }
%"class.hermes::vm::CallResult.198" = type { %"class.llvh::Optional" }
%"class.llvh::Optional" = type { %"struct.llvh::optional_detail::OptionalStorage" }
%"struct.llvh::optional_detail::OptionalStorage" = type { %"struct.llvh::AlignedCharArrayUnion.199", i8, [7 x i8] }
%"struct.llvh::AlignedCharArrayUnion.199" = type { %"struct.llvh::AlignedCharArray.200" }
%"struct.llvh::AlignedCharArray.200" = type { [16 x i8] }
%"struct.hermes::vm::IteratorRecord" = type { %"class.hermes::vm::Handle.177", %"class.hermes::vm::Handle.205" }
%"class.hermes::vm::Handle.205" = type { %"class.hermes::vm::HandleBase" }

$_ZN6hermes2vm7Runtime22raiseTypeErrorForValueENS0_6HandleINS0_11HermesValueEEEN4llvh9StringRefE = comdat any

$_ZN4llvh12DenseMapBaseINS_8DenseMapIjPN6hermes2vm8JSObjectENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E16FindAndConstructERKj = comdat any

$_ZN4llvh12DenseMapBaseINS_8DenseMapIjPN6hermes2vm8JSObjectENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E15LookupBucketForIjEEbRKT_RPSA_ = comdat any

$_ZN4llvh8DenseMapIjPN6hermes2vm8JSObjectENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS4_EEE4growEj = comdat any

@.str = private unnamed_addr constant [34 x i8] c"At least three arguments expected\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"First argument should be a number\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Second argument should be a bool\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"Cannot be called from native code\00", align 1
@.str.4 = private unnamed_addr constant [57 x i8] c"There must be the same number of raw and cooked strings.\00", align 1
@.str.5 = private unnamed_addr constant [61 x i8] c"Failed to set 'length' property on the raw object read-only.\00", align 1
@.str.6 = private unnamed_addr constant [59 x i8] c"generatorSetDelegated can only be called as part of yield*\00", align 1
@.str.7 = private unnamed_addr constant [51 x i8] c"HermesBuiltin.arraySpread requires an array target\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c" is not a function\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"args must be an array\00", align 1
@.str.10 = private unnamed_addr constant [44 x i8] c"exportAll() exports argument must be object\00", align 1
@.str.11 = private unnamed_addr constant [53 x i8] c"exportAll() source argument must be non-Proxy object\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"Cannot convert \00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c" to BigInt\00", align 1
@.str.14 = private unnamed_addr constant [61 x i8] c"Invalid error ID passed to getOriginalNativeErrorConstructor\00", align 1
@_ZN6hermes2vm15HandleRootOwner15undefinedValue_E = external global %"class.hermes::vm::PinnedHermesValue", align 8
@_ZN6hermes2vm6VTable11vtableArrayE = external local_unnamed_addr global %"struct.std::array.234", align 8
@_ZN6hermes2vm15HandleRootOwner12nullPointer_E = external global %"class.hermes::vm::PinnedHermesValue", align 8

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm26silentObjectSetPrototypeOfEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !7    ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit.thread, label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit

_ZNK6hermes2vm10NativeArgs6getArgEj.exit:         ; preds = %bb.a
  %i.c = load ptr, ptr %2, align 8, !tbaa !12, !noalias !13 ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -8
  %.sroa.0.0.copyload.i = load i64, ptr %i.d, align 8, !tbaa !16 ; 2 uses
  %i.e = icmp ugt i64 %.sroa.0.0.copyload.i, -844424930131969
  br i1 %i.e, label %bb.b, label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit.thread

bb.b:                                             ; preds = %_ZNK6hermes2vm10NativeArgs6getArgEj.exit
  %i.f = and i64 %.sroa.0.0.copyload.i, 281474976710655
  %i.g = inttoptr i64 %i.f to ptr                 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4
  %i.i = add i32 %i.h, -436207616
  %i.j = icmp ult i32 %i.i, 855638016
  %i.k = icmp ne i32 %i.b, 1
  %or.cond = and i1 %i.k, %i.j
  br i1 %or.cond, label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit13, label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit.thread

_ZNK6hermes2vm10NativeArgs6getArgEj.exit13:       ; preds = %bb.b
  %i.l = getelementptr inbounds i8, ptr %i.c, i64 -16
  %.sroa.0.0.copyload.i12 = load i64, ptr %i.l, align 8, !tbaa !16 ; 3 uses
  %.mask.i = and i64 %.sroa.0.0.copyload.i12, -140737488355328
  %i.m = icmp eq i64 %.mask.i, -1548112371908608
  br i1 %i.m, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_ZNK6hermes2vm10NativeArgs6getArgEj.exit13
  %i.n = icmp ugt i64 %.sroa.0.0.copyload.i12, -281474976710657
  br i1 %i.n, label %bb.d, label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.o = and i64 %.sroa.0.0.copyload.i12, 281474976710655
  %i.p = inttoptr i64 %i.o to ptr
  br label %bb.e

bb.e:                                             ; preds = %_ZNK6hermes2vm10NativeArgs6getArgEj.exit13, %bb.d
  %.0 = phi ptr [ %i.p, %bb.d ], [ null, %_ZNK6hermes2vm10NativeArgs6getArgEj.exit13 ]
  %i.q = tail call i32 @_ZN6hermes2vm8JSObject9setParentEPS1_RNS0_7RuntimeES2_NS0_11PropOpFlagsE(ptr noundef nonnull %i.g, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef %.0, i32 0) #10 ; 0 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 720
  store i64 -1970324836974592, ptr %i.r, align 8, !tbaa !18
  br label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit.thread

_ZNK6hermes2vm10NativeArgs6getArgEj.exit.thread:  ; preds = %bb.a, %bb.e, %bb.c, %_ZNK6hermes2vm10NativeArgs6getArgEj.exit, %bb.b
  ret { i32, i64 } { i32 1, i64 -1688849860263936 }
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i32 @_ZN6hermes2vm8JSObject9setParentEPS1_RNS0_7RuntimeES2_NS0_11PropOpFlagsE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(9816), ptr noundef, i32) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm30hermesBuiltinGetTemplateObjectEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %3 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %4 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %5 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %6 = alloca %"class.hermes::vm::GCScope", align 8 ; 14 uses
  %7 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %8 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %9 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %10 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !7    ; 4 uses
  %i.d = icmp ult i32 %i.c, 3
  br i1 %i.d, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit, label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit, !prof !20

_ZN6hermes2vm11TwineChar16C2EPKc.exit:            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 1, ptr %i.e, align 8, !tbaa !21
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 33, ptr %i.f, align 8, !tbaa !24
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.g, align 8, !tbaa !25
  store ptr @.str, ptr %3, align 8, !tbaa !26
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 3, ptr %i.h, align 8, !tbaa !27
  %i.i = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %3) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  br label %bb.x

_ZNK6hermes2vm10NativeArgs6getArgEj.exit:         ; preds = %bb.a
  %i.j = load ptr, ptr %2, align 8, !tbaa !12, !noalias !28 ; 2 uses
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 -8 ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.k, align 8, !tbaa !16
  %i.l = icmp ult i64 %.sroa.0.0.copyload.i, -1970324836974592
  br i1 %i.l, label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit95, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit92, !prof !31

_ZN6hermes2vm11TwineChar16C2EPKc.exit92:          ; preds = %_ZNK6hermes2vm10NativeArgs6getArgEj.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 1, ptr %i.m, align 8, !tbaa !21
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 33, ptr %i.n, align 8, !tbaa !24
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 0, ptr %i.o, align 8, !tbaa !25
  store ptr @.str.1, ptr %4, align 8, !tbaa !26
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 3, ptr %i.p, align 8, !tbaa !27
  %i.q = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %4) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br label %bb.x

_ZNK6hermes2vm10NativeArgs6getArgEj.exit95:       ; preds = %_ZNK6hermes2vm10NativeArgs6getArgEj.exit
  %i.r = getelementptr inbounds i8, ptr %i.j, i64 -16
  %.sroa.0.0.copyload.i94 = load i64, ptr %i.r, align 8, !tbaa !16
  %.mask.i = and i64 %.sroa.0.0.copyload.i94, -140737488355328
  %i.s = icmp eq i64 %.mask.i, -1407374883553280
  br i1 %i.s, label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit100, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit97, !prof !31

_ZN6hermes2vm11TwineChar16C2EPKc.exit97:          ; preds = %_ZNK6hermes2vm10NativeArgs6getArgEj.exit95
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 1, ptr %i.t, align 8, !tbaa !21
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 32, ptr %i.u, align 8, !tbaa !24
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 0, ptr %i.v, align 8, !tbaa !25
  store ptr @.str.2, ptr %5, align 8, !tbaa !26
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 3, ptr %i.w, align 8, !tbaa !27
  %i.x = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %5) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  br label %bb.x

_ZNK6hermes2vm10NativeArgs6getArgEj.exit100:      ; preds = %_ZNK6hermes2vm10NativeArgs6getArgEj.exit95
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  store ptr %1, ptr %6, align 8, !tbaa !32
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !34
  store ptr %i.aa, ptr %i.y, align 8, !tbaa !37
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 144 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 160 ; 2 uses
  store ptr %i.ad, ptr %i.ab, align 8, !tbaa !45
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 152
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 156
  store i32 4, ptr %i.af, align 4, !tbaa !46
  store ptr %i.ac, ptr %i.ad, align 8
  store i32 1, ptr %i.ae, align 8, !tbaa !47
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 192 ; 3 uses
  store ptr %i.ac, ptr %i.ag, align 8, !tbaa !48
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 200 ; 2 uses
  store ptr %i.ab, ptr %i.ah, align 8, !tbaa !49
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 208 ; 3 uses
  store i32 0, ptr %i.ai, align 8, !tbaa !50
  store ptr %6, ptr %i.z, align 8, !tbaa !34
  %.sroa.0.0.copyload.i99176 = load double, ptr %i.k, align 8, !tbaa !16
  %i.aj = fptoui double %.sroa.0.0.copyload.i99176 to i32 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 9472
  %.sroa.0.0.copyload.i101 = load ptr, ptr %i.ak, align 8, !tbaa !51
  %i.al = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i101, i64 -24
  %i.am = load i64, ptr %i.al, align 8, !tbaa !18 ; 2 uses
  %.not = icmp eq i64 %i.am, 0
  br i1 %.not, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit105, label %bb.b, !prof !20

_ZN6hermes2vm11TwineChar16C2EPKc.exit105:         ; preds = %_ZNK6hermes2vm10NativeArgs6getArgEj.exit100
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  %i.an = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i32 1, ptr %i.an, align 8, !tbaa !21
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i64 33, ptr %i.ao, align 8, !tbaa !24
  %i.ap = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i64 0, ptr %i.ap, align 8, !tbaa !25
  store ptr @.str.3, ptr %7, align 8, !tbaa !26
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 3, ptr %i.aq, align 8, !tbaa !27
  %i.ar = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %7) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  br label %bb.w

bb.b:                                             ; preds = %_ZNK6hermes2vm10NativeArgs6getArgEj.exit100
  %i.as = inttoptr i64 %i.am to ptr
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !52 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 168 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !57 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 184
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !60 ; 2 uses
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit108, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.az = mul i32 %i.aj, 37
  %i.ba = add i32 %i.ax, -1                       ; 2 uses
  %.02744.i.i.i = and i32 %i.ba, %i.az            ; 2 uses
  %i.bb = zext i32 %.02744.i.i.i to i64           ; 2 uses
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %i.av, i64 %i.bb
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !3  ; 2 uses
  %i.be = icmp eq i32 %i.bd, %i.aj
  br i1 %i.be, label %_ZN6hermes2vm13RuntimeModule24findCachedTemplateObjectEj.exit, label %.lr.ph.i.i.i, !prof !61

.lr.ph.i.i.i:                                     ; preds = %bb.c, %bb.d
  %i.bf = phi i32 [ %i.bl, %bb.d ], [ %i.bd, %bb.c ]
  %.02747.i.i.i = phi i32 [ %.027.i.i.i, %bb.d ], [ %.02744.i.i.i, %bb.c ]
  %.02546.i.i.i = phi i32 [ %i.bh, %bb.d ], [ 1, %bb.c ] ; 2 uses
  %i.bg = icmp eq i32 %i.bf, -1
  br i1 %i.bg, label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit108, label %bb.d, !prof !31

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.bh = add i32 %.02546.i.i.i, 1
  %i.bi = add i32 %.02546.i.i.i, %.02747.i.i.i
  %.027.i.i.i = and i32 %i.bi, %i.ba              ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN6hermes2vm30hermesBuiltinGetTemplateObjectEPvRNS0_7RuntimeENS0_10NativeArgsE:bb.a
  %.sroa.0.0.copyload.i122 = load i64, ptr %i.ed, align 8, !tbaa !16
  br label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit123

_ZNK6hermes2vm10NativeArgs6getArgEj.exit123:      ; preds = %_ZNK6hermes2vm10NativeArgs6getArgEj.exit120, %bb.q
  %.sroa.0.0.i121 = phi i64 [ %.sroa.0.0.copyload.i122, %bb.q ], [ -1688849860263936, %_ZNK6hermes2vm10NativeArgs6getArgEj.exit120 ]
  store i64 %.sroa.0.0.i121, ptr %.0.i.i.i.i.i.i111, align 8, !tbaa !18
  %i.ee = call i32 @_ZN6hermes2vm8JSObject26defineOwnComputedPrimitiveENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEENS0_19DefinePropertyFlagsES7_NS0_11PropOpFlagsE(ptr %i.cg, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.0.i.i.i.i.i.i, i32 313, ptr nonnull %.0.i.i.i.i.i.i111, i32 0) #10 ; 0 uses
  %i.ef = load ptr, ptr %i.ab, align 8, !tbaa !45
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %i.di
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !51
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 128
  store i32 %i.dh, ptr %i.ai, align 8, !tbaa !50
  store ptr %i.ei, ptr %i.ah, align 8, !tbaa !49
  store ptr %i.dg, ptr %i.ag, align 8, !tbaa !48
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.o, !llvm.loop !76

bb.r:                                             ; preds = %._crit_edge
  %i.ej = and i32 %i.dj, 256
  %.not179 = icmp eq i32 %i.ej, 0
  br i1 %.not179, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit125, label %bb.s, !prof !20

_ZN6hermes2vm11TwineChar16C2EPKc.exit125:         ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #10
  %i.ek = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i32 1, ptr %i.ek, align 8, !tbaa !21
  %i.el = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i64 60, ptr %i.el, align 8, !tbaa !24
  %i.em = getelementptr inbounds nuw i8, ptr %9, i64 40
  store i64 0, ptr %i.em, align 8, !tbaa !25
  store ptr @.str.5, ptr %9, align 8, !tbaa !26
  %i.en = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 3, ptr %i.en, align 8, !tbaa !27
  %i.eo = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %9) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #10
  br label %bb.w

bb.s:                                             ; preds = %bb.r
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.cg, align 8, !tbaa !16
  %i.ep = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.eq = inttoptr i64 %i.ep to ptr
  call void @_ZN6hermes2vm8JSObject17preventExtensionsEPS1_(ptr noundef %i.eq) #10
  %i.er = call noundef i32 @_ZN6hermes2vm8JSObject20defineNewOwnPropertyENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS0_13PropertyFlagsENS2_INS0_11HermesValueEEE(ptr %i.ch, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 92, i16 0, ptr nonnull %i.cg) #10
  %i.es = icmp eq i32 %i.er, 0
  br i1 %i.es, label %bb.w, label %bb.t, !prof !20

bb.t:                                             ; preds = %bb.s
  %i.et = call i32 @_ZN6hermes2vm8JSObject25defineOwnPropertyInternalENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS0_19DefinePropertyFlagsENS2_INS0_11HermesValueEEENS0_11PropOpFlagsE(ptr %i.ch, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 85, i32 48, ptr nonnull @_ZN6hermes2vm15HandleRootOwner15undefinedValue_E, i32 1) #10 ; 2 uses
  %.mask180 = and i32 %i.et, 255
  %i.eu = icmp eq i32 %.mask180, 0
  br i1 %i.eu, label %bb.w, label %bb.u, !prof !20

bb.u:                                             ; preds = %bb.t
  %i.ev = and i32 %i.et, 256
  %.not181 = icmp eq i32 %i.ev, 0
  br i1 %.not181, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit135, label %bb.v, !prof !20

_ZN6hermes2vm11TwineChar16C2EPKc.exit135:         ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #10
  %i.ew = getelementptr inbounds nuw i8, ptr %10, i64 24
  store i32 1, ptr %i.ew, align 8, !tbaa !21
  %i.ex = getelementptr inbounds nuw i8, ptr %10, i64 32
  store i64 60, ptr %i.ex, align 8, !tbaa !24
  %i.ey = getelementptr inbounds nuw i8, ptr %10, i64 40
  store i64 0, ptr %i.ey, align 8, !tbaa !25
  store ptr @.str.5, ptr %10, align 8, !tbaa !26
  %i.ez = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 3, ptr %i.ez, align 8, !tbaa !27
  %i.fa = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %10) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #10
  br label %bb.w

bb.v:                                             ; preds = %bb.u
  %.sroa.0.0.copyload.i.i136 = load i64, ptr %i.ch, align 8, !tbaa !16
  %i.fb = and i64 %.sroa.0.0.copyload.i.i136, 281474976710655
  %i.fc = inttoptr i64 %i.fb to ptr
  call void @_ZN6hermes2vm8JSObject17preventExtensionsEPS1_(ptr noundef %i.fc) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.aj, ptr %i.a, align 4, !tbaa !3
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.ch, align 8, !tbaa !16
  %i.fd = and i64 %.sroa.0.0.copyload.i.i.i, 281474976710655
  %i.fe = inttoptr i64 %i.fd to ptr
  %i.ff = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvh12DenseMapBaseINS_8DenseMapIjPN6hermes2vm8JSObjectENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E16FindAndConstructERKj(ptr noundef nonnull align 1 dereferenceable(1) %i.au, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  store ptr %i.fe, ptr %i.fg, align 8, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.sroa.0.0.copyload.i137 = load i64, ptr %i.ch, align 8, !tbaa !16
  br label %bb.w

bb.w:                                             ; preds = %bb.f, %_ZN6hermes2vm11TwineChar16C2EPKc.exit125, %._crit_edge, %bb.t, %bb.s, %bb.v, %_ZN6hermes2vm11TwineChar16C2EPKc.exit135, %bb.g, %bb.e, %_ZN6hermes2vm11TwineChar16C2EPKc.exit110, %_ZN6hermes2vm11TwineChar16C2EPKc.exit105
  %.sroa.0172.4 = phi i32 [ %i.ar, %_ZN6hermes2vm11TwineChar16C2EPKc.exit105 ], [ 1, %bb.e ], [ %i.cb, %_ZN6hermes2vm11TwineChar16C2EPKc.exit110 ], [ 0, %bb.f ], [ 0, %bb.g ], [ %i.eo, %_ZN6hermes2vm11TwineChar16C2EPKc.exit125 ], [ 0, %._crit_edge ], [ %i.fa, %_ZN6hermes2vm11TwineChar16C2EPKc.exit135 ], [ 0, %bb.s ], [ 1, %bb.v ], [ 0, %bb.t ]
  %.sroa.15.4 = phi i64 [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit105 ], [ %i.bs, %bb.e ], [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit110 ], [ undef, %bb.f ], [ undef, %bb.g ], [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit125 ], [ undef, %._crit_edge ], [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit135 ], [ undef, %bb.s ], [ %.sroa.0.0.copyload.i137, %bb.v ], [ undef, %bb.t ]
  call void @_ZN6hermes2vm7GCScopeD1Ev(ptr noundef nonnull align 8 dereferenceable(212) %6) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %_ZN6hermes2vm11TwineChar16C2EPKc.exit97, %_ZN6hermes2vm11TwineChar16C2EPKc.exit92, %_ZN6hermes2vm11TwineChar16C2EPKc.exit
  %.sroa.0172.5 = phi i32 [ %i.i, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ %.sroa.0172.4, %bb.w ], [ %i.x, %_ZN6hermes2vm11TwineChar16C2EPKc.exit97 ], [ %i.q, %_ZN6hermes2vm11TwineChar16C2EPKc.exit92 ]
  %.sroa.15.5 = phi i64 [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ %.sroa.15.4, %bb.w ], [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit97 ], [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit92 ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.0172.5, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.15.5, 1
  ret { i32, i64 } %.fca.1.insert
}

declare noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #2

declare ptr @_ZN6hermes2vm7JSArray6createERNS0_7RuntimeEjj(ptr noundef nonnull align 8 dereferenceable(9816), i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @_ZN6hermes2vm8JSObject26defineOwnComputedPrimitiveENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEENS0_19DefinePropertyFlagsES7_NS0_11PropOpFlagsE(ptr, ptr noundef nonnull align 8 dereferenceable(9816), ptr, i32, ptr, i32) local_unnamed_addr #2

declare void @_ZN6hermes2vm8JSObject17preventExtensionsEPS1_(ptr noundef) local_unnamed_addr #2

declare noundef i32 @_ZN6hermes2vm8JSObject20defineNewOwnPropertyENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS0_13PropertyFlagsENS2_INS0_11HermesValueEEE(ptr, ptr noundef nonnull align 8 dereferenceable(9816), i32, i16, ptr) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN6hermes2vm7GCScopeD1Ev(ptr noundef nonnull align 8 dereferenceable(212)) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm25hermesBuiltinEnsureObjectEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !7    ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  %.pre = load ptr, ptr %2, align 8               ; 2 uses
  br i1 %.not, label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit.thread, label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit

_ZNK6hermes2vm10NativeArgs6getArgEj.exit:         ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %.pre, i64 -8
  %.sroa.0.0.copyload.i = load i64, ptr %i.c, align 8, !tbaa !16
  %i.d = icmp ugt i64 %.sroa.0.0.copyload.i, -281474976710657
  br i1 %i.d, label %bb.b, label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit.thread, !prof !77

_ZNK6hermes2vm10NativeArgs6getArgEj.exit.thread:  ; preds = %bb.a, %_ZNK6hermes2vm10NativeArgs6getArgEj.exit
  %i.e = icmp ugt i32 %i.b, 1
  %i.f = getelementptr inbounds i8, ptr %.pre, i64 -16
  %.sroa.02.0.i = select i1 %i.e, ptr %i.f, ptr @_ZN6hermes2vm15HandleRootOwner15undefinedValue_E
  %i.g = tail call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.sroa.02.0.i) #10
  br label %bb.b

bb.b:                                             ; preds = %_ZNK6hermes2vm10NativeArgs6getArgEj.exit, %_ZNK6hermes2vm10NativeArgs6getArgEj.exit.thread
  %.sroa.02.0 = phi i32 [ %i.g, %_ZNK6hermes2vm10NativeArgs6getArgEj.exit.thread ], [ 1, %_ZNK6hermes2vm10NativeArgs6getArgEj.exit ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.02.0, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 -1688849860263936, 1
  ret { i32, i64 } %.fca.1.insert
}

declare noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816), ptr) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm22hermesBuiltinGetMethodEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !7    ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  %i.c = load ptr, ptr %2, align 8                ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -8
  %.sroa.02.0.i = select i1 %.not, ptr @_ZN6hermes2vm15HandleRootOwner15undefinedValue_E, ptr %i.d
  %i.e = icmp ugt i32 %i.b, 1
  %i.f = getelementptr inbounds i8, ptr %i.c, i64 -16
  %.sroa.02.0.i3 = select i1 %i.e, ptr %i.f, ptr @_ZN6hermes2vm15HandleRootOwner15undefinedValue_E
  %i.g = tail call { i32, i64 } @_ZN6hermes2vm9getMethodERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEES5_(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.sroa.02.0.i, ptr nonnull %.sroa.02.0.i3) #10
  ret { i32, i64 } %i.g
}

declare { i32, i64 } @_ZN6hermes2vm9getMethodERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEES5_(ptr noundef nonnull align 8 dereferenceable(9816), ptr, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm27hermesBuiltinThrowTypeErrorEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !7
  %.not = icmp eq i32 %i.b, 0
  %i.c = load ptr, ptr %2, align 8
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -8
  %.sroa.02.0.i = select i1 %.not, ptr @_ZN6hermes2vm15HandleRootOwner15undefinedValue_E, ptr %i.d
  %i.e = tail call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.sroa.02.0.i) #10
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %i.e, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 undef, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm34hermesBuiltinGeneratorSetDelegatedEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr readnone captures(none) dead_on_return %2) #0 {
bb.a:
  %3 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 9472
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8, !tbaa !51
  %i.b = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i, i64 -8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !18
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -48
  %.sroa.01.0.copyload = load i64, ptr %i.e, align 8, !tbaa !16 ; 2 uses
  %i.f = icmp ugt i64 %.sroa.01.0.copyload, -844424930131969
  br i1 %i.f, label %bb.b, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit

bb.b:                                             ; preds = %bb.a
  %i.g = and i64 %.sroa.01.0.copyload, 281474976710655
  %i.h = inttoptr i64 %i.g to ptr                 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4
  %.mask.i.i.i.i.i.i.i.i.i = and i32 %i.i, -16777216
  %i.j = icmp eq i32 %.mask.i.i.i.i.i.i.i.i.i, 1241513984
  br i1 %i.j, label %_ZN6hermes2vm10dyn_vmcastINS0_22GeneratorInnerFunctionEEEPT_NS0_11HermesValueE.exit, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit

_ZN6hermes2vm11TwineChar16C2EPKc.exit:            ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 1, ptr %i.k, align 8, !tbaa !21
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 58, ptr %i.l, align 8, !tbaa !24
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.m, align 8, !tbaa !25
  store ptr @.str.6, ptr %3, align 8, !tbaa !26
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 3, ptr %i.n, align 8, !tbaa !27
  %i.o = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %3) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  br label %bb.c

_ZN6hermes2vm10dyn_vmcastINS0_22GeneratorInnerFunctionEEEPT_NS0_11HermesValueE.exit: ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 60
  store i8 1, ptr %i.p, align 4, !tbaa !78
  br label %bb.c

bb.c:                                             ; preds = %_ZN6hermes2vm10dyn_vmcastINS0_22GeneratorInnerFunctionEEEPT_NS0_11HermesValueE.exit, %_ZN6hermes2vm11TwineChar16C2EPKc.exit
  %.sroa.06.0 = phi i32 [ %i.o, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ 1, %_ZN6hermes2vm10dyn_vmcastINS0_22GeneratorInnerFunctionEEEPT_NS0_11HermesValueE.exit ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.06.0, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 -1688849860263936, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm31hermesBuiltinCopyDataPropertiesEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %3 = alloca %"class.hermes::vm::MutableHandle.191", align 8 ; 5 uses
  %4 = alloca %"struct.hermes::vm::ComputedPropertyDescriptor", align 4 ; 6 uses
  %5 = alloca %"struct.hermes::vm::ComputedPropertyDescriptor", align 4 ; 7 uses
  %6 = alloca %"class.hermes::vm::GCScope", align 8 ; 14 uses
  %7 = alloca %"class.hermes::vm::Handle.177", align 8 ; 6 uses
  %8 = alloca %"class.hermes::vm::Handle.177", align 8 ; 6 uses
  %9 = alloca %"class.hermes::vm::Handle.177", align 8 ; 5 uses
  %10 = alloca %"class.hermes::vm::MutableHandle", align 8 ; 4 uses
  %11 = alloca %"class.hermes::vm::MutableHandle", align 8 ; 5 uses
  %12 = alloca %"class.hermes::vm::MutableHandle.191", align 8 ; 4 uses
  %13 = alloca %class.anon, align 8               ; 9 uses
  %14 = alloca %class.anon.193, align 8           ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  store ptr %1, ptr %6, align 8, !tbaa !32
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 10 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !34
  store ptr %i.c, ptr %i.a, align 8, !tbaa !37
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 144 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 160 ; 2 uses
  store ptr %i.f, ptr %i.d, align 8, !tbaa !45
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 152
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 156
  store i32 4, ptr %i.h, align 4, !tbaa !46
  store ptr %i.e, ptr %i.f, align 8
  store i32 1, ptr %i.g, align 8, !tbaa !47
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 192
  store ptr %i.e, ptr %i.i, align 8, !tbaa !48
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 200
  store ptr %i.d, ptr %i.j, align 8, !tbaa !49
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 208
  store i32 0, ptr %i.k, align 8, !tbaa !50
  store ptr %6, ptr %i.b, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !7    ; 2 uses
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8JSObjectEEENS0_6HandleIT_EEj.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %2, align 8, !tbaa !12, !noalias !100
  %i.o = getelementptr inbounds i8, ptr %i.n, i64 -8 ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.o, align 8, !tbaa !16 ; 2 uses
  %i.p = icmp ugt i64 %.sroa.0.0.copyload.i, -844424930131969
  br i1 %i.p, label %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i, label %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8JSObjectEEENS0_6HandleIT_EEj.exit

_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i: ; preds = %bb.b
  %i.q = and i64 %.sroa.0.0.copyload.i, 281474976710655
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = load i32, ptr %i.r, align 4
  %i.t = add i32 %i.s, -436207616
  %i.u = icmp ult i32 %i.t, 855638016
  %spec.select.i = select i1 %i.u, ptr %i.o, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E
  br label %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8JSObjectEEENS0_6HandleIT_EEj.exit

_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8JSObjectEEENS0_6HandleIT_EEj.exit: ; preds = %bb.a, %bb.b, %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i
  %.sroa.07.0.copyload = phi ptr [ @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, %bb.b ], [ @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, %bb.a ], [ %spec.select.i, %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i ] ; 4 uses
  store ptr %.sroa.07.0.copyload, ptr %7, align 8
  %i.v = load i64, ptr %.sroa.07.0.copyload, align 8, !tbaa !18 ; 4 uses
  %i.w = icmp ugt i64 %i.v, -844424930131969
  %i.x = and i64 %i.v, 281474976710655
  %i.y = icmp ne i64 %i.x, 0
  %i.z = and i1 %i.w, %i.y
  br i1 %i.z, label %bb.c, label %bb.ax

bb.c:                                             ; preds = %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8JSObjectEEENS0_6HandleIT_EEj.exit
  %i.aa = icmp ugt i32 %i.m, 1
  %i.ab = load ptr, ptr %2, align 8
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 -16
  %.sroa.02.0.i = select i1 %i.aa, ptr %i.ac, ptr @_ZN6hermes2vm15HandleRootOwner15undefinedValue_E ; 3 uses
  %i.ad = load i64, ptr %.sroa.02.0.i, align 8, !tbaa !18 ; 2 uses
  %.mask.i = and i64 %i.ad, -140737488355328
  switch i64 %.mask.i, label %bb.d [
    i64 -1548112371908608, label %bb.ax
    i64 -1688849860263936, label %bb.ax
  ]

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #10
  %i.ae = icmp ugt i64 %i.ad, -281474976710657
  br i1 %i.ae, label %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.af = call { i32, i64 } @_ZN6hermes2vm8toObjectERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.sroa.02.0.i) #10
  %i.ag = extractvalue { i32, i64 } %i.af, 1      ; 2 uses
  %i.ah = load ptr, ptr %i.b, align 8, !tbaa !34  ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 192 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !48 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 200
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !49
  %i.am = icmp ult ptr %i.aj, %i.al
  br i1 %i.am, label %bb.f, label %bb.g, !prof !31

bb.f:                                             ; preds = %bb.e
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr %i.an, ptr %i.ai, align 8, !tbaa !48
  store i64 %i.ag, ptr %i.aj, align 8, !tbaa !16
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit

bb.g:                                             ; preds = %bb.e
  %i.ao = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.ah, i64 %i.ag) #10
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit: ; preds = %bb.g, %bb.f, %bb.d
  %storemerge = phi ptr [ %.sroa.02.0.i, %bb.d ], [ %i.aj, %bb.f ], [ %i.ao, %bb.g ] ; 8 uses
  store ptr %storemerge, ptr %8, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #10
  %i.ap = load i32, ptr %i.l, align 8, !tbaa !7
  %i.aq = icmp ugt i32 %i.ap, 2
  br i1 %i.aq, label %bb.h, label %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8JSObjectEEENS0_6HandleIT_EEj.exit26

bb.h:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit
  %i.ar = load ptr, ptr %2, align 8, !tbaa !12, !noalias !103
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 -24 ; 2 uses
  %.sroa.0.0.copyload.i23 = load i64, ptr %i.as, align 8, !tbaa !16 ; 2 uses
  %i.at = icmp ugt i64 %.sroa.0.0.copyload.i23, -844424930131969
  br i1 %i.at, label %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i24, label %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8JSObjectEEENS0_6HandleIT_EEj.exit26

_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i24: ; preds = %bb.h
  %i.au = and i64 %.sroa.0.0.copyload.i23, 281474976710655
  %i.av = inttoptr i64 %i.au to ptr
  %i.aw = load i32, ptr %i.av, align 4
  %i.ax = add i32 %i.aw, -436207616
  %i.ay = icmp ult i32 %i.ax, 855638016
  %spec.select.i25 = select i1 %i.ay, ptr %i.as, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E
  br label %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8JSObjectEEENS0_6HandleIT_EEj.exit26

_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8JSObjectEEENS0_6HandleIT_EEj.exit26: ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit, %bb.h, %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i24
  %.sroa.03.0.i22 = phi ptr [ @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, %bb.h ], [ @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit ], [ %spec.select.i25, %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i24 ] ; 3 uses
  store ptr %.sroa.03.0.i22, ptr %9, align 8
  %.sroa.0.0.copyload.i.i = load i64, ptr %storemerge, align 8, !tbaa !16
  %i.az = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.ba = inttoptr i64 %i.az to ptr               ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  %i.bc = load i32, ptr %i.bb, align 4
  %i.bd = and i32 %i.bc, 160
  %or.cond.not = icmp eq i32 %i.bd, 0
  br i1 %or.cond.not, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8JSObjectEEENS0_6HandleIT_EEj.exit26
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 12
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.be, align 4, !tbaa !3
  %i.bf = ptrtoint ptr %1 to i64
  %i.bg = zext i32 %.sroa.0.0.copyload.i.i.i to i64
  %i.bh = add i64 %i.bg, %i.bf
  %i.bi = inttoptr i64 %i.bh to ptr
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 10
  %i.bk = load i8, ptr %i.bj, align 2
  %i.bl = and i8 %i.bk, 8
  %.not43 = icmp eq i8 %i.bl, 0
  br i1 %.not43, label %bb.ao, label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8JSObjectEEENS0_6HandleIT_EEj.exit26
  %i.bm = call ptr @_ZN6hermes2vm8JSObject18getOwnPropertyKeysENS0_6HandleIS1_EERNS0_7RuntimeENS0_12OwnKeysFlagsE(ptr nonnull %storemerge, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 7) #10 ; 3 uses
  %.not117.i.a = icmp eq ptr %i.bm, inttoptr (i64 -1 to ptr)
  br i1 %.not117.i.a, label %_ZN6hermes2vm12_GLOBAL__N_130copyDataPropertiesSlowPath_RJSERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEES6_S6_.exit, label %bb.k, !prof !20

bb.k:                                             ; preds = %bb.j
  %i.bn = load ptr, ptr %i.b, align 8, !tbaa !34  ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 192 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !48 ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 200
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !49 ; 2 uses
  %i.bs = icmp ult ptr %i.bp, %i.br
  br i1 %i.bs, label %bb.l, label %bb.m, !prof !31

bb.l:                                             ; preds = %bb.k
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 2 uses
  store ptr %i.bt, ptr %i.bo, align 8, !tbaa !48
  store i64 -1688849860263936, ptr %i.bp, align 8, !tbaa !16
  br label %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit.i

bb.m:                                             ; preds = %bb.k
  %i.bu = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.bn, i64 -1688849860263936) #10
  %.pre.i = load ptr, ptr %i.b, align 8, !tbaa !34 ; 3 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 192
  %.pre128.i.a = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !48
  %.phi.trans.insert129.i.a = getelementptr inbounds nuw i8, ptr %.pre.i, i64 200
  %.pre130.i.a = load ptr, ptr %.phi.trans.insert129.i.a, align 8, !tbaa !49
  br label %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit.i

_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit.i: ; preds = %bb.m, %bb.l
  %i.bv = phi ptr [ %i.br, %bb.l ], [ %.pre130.i.a, %bb.m ] ; 2 uses
  %i.bw = phi ptr [ %i.bt, %bb.l ], [ %.pre128.i.a, %bb.m ] ; 4 uses
  %i.bx = phi ptr [ %i.bn, %bb.l ], [ %.pre.i, %bb.m ] ; 3 uses
  %.0.i.i.i.i.i.i.i = phi ptr [ %i.bp, %bb.l ], [ %i.bu, %bb.m ] ; 8 uses
  %i.by = icmp ult ptr %i.bw, %i.bv
  br i1 %i.by, label %bb.n, label %bb.o, !prof !31

bb.n:                                             ; preds = %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit.i
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 192
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 8 ; 2 uses
  store ptr %i.ca, ptr %i.bz, align 8, !tbaa !48
  store i64 -1688849860263936, ptr %i.bw, align 8, !tbaa !16
  br label %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit61.i

bb.o:                                             ; preds = %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit.i
  %i.cb = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.bx, i64 -1688849860263936) #10
  %.pre131.i = load ptr, ptr %i.b, align 8, !tbaa !34 ; 3 uses
  %.phi.trans.insert132.i = getelementptr inbounds nuw i8, ptr %.pre131.i, i64 192
  %.pre133.i.a = load ptr, ptr %.phi.trans.insert132.i, align 8, !tbaa !48
  %.phi.trans.insert134.i.a = getelementptr inbounds nuw i8, ptr %.pre131.i, i64 200
  %.pre135.i.a = load ptr, ptr %.phi.trans.insert134.i.a, align 8, !tbaa !49
  br label %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit61.i

_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit61.i: ; preds = %bb.o, %bb.n
  %i.cc = phi ptr [ %i.bv, %bb.n ], [ %.pre135.i.a, %bb.o ]
  %i.cd = phi ptr [ %i.ca, %bb.n ], [ %.pre133.i.a, %bb.o ] ; 4 uses
  %i.ce = phi ptr [ %i.bx, %bb.n ], [ %.pre131.i, %bb.o ] ; 3 uses
  %.0.i.i.i.i.i.i60.i = phi ptr [ %i.bw, %bb.n ], [ %i.cb, %bb.o ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  %i.cf = icmp ult ptr %i.cd, %i.cc
  br i1 %i.cf, label %bb.p, label %bb.q, !prof !31

bb.p:                                             ; preds = %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit61.i
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 192
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cd, i64 8 ; 2 uses
  store ptr %i.ch, ptr %i.cg, align 8, !tbaa !48
  store i64 -1266636858327041, ptr %i.cd, align 8, !tbaa !16
  br label %_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit.i

bb.q:                                             ; preds = %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit61.i
  %i.ci = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.ce, i64 -1266636858327041) #10
  %.pre136.i = load ptr, ptr %i.b, align 8, !tbaa !34 ; 2 uses
  %.phi.trans.insert137.i = getelementptr inbounds nuw i8, ptr %.pre136.i, i64 192
  %.pre138.i = load ptr, ptr %.phi.trans.insert137.i, align 8, !tbaa !48
  br label %_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit.i

_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit.i: ; preds = %bb.q, %bb.p
  %i.cj = phi ptr [ %i.ch, %bb.p ], [ %.pre138.i, %bb.q ] ; 2 uses
  %i.ck = phi ptr [ %i.ce, %bb.p ], [ %.pre136.i, %bb.q ] ; 6 uses
  %.0.i.i.i.i.i.i62.i = phi ptr [ %i.cd, %bb.p ], [ %i.ci, %bb.q ]
  store ptr %.0.i.i.i.i.i.i62.i, ptr %3, align 8, !tbaa !106
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 192 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 208 ; 3 uses
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !50 ; 4 uses
  %.sroa.0.0.copyload.i.i.i29 = load i64, ptr %i.bm, align 8, !tbaa !16
  %i.co = and i64 %.sroa.0.0.copyload.i.i.i29, 281474976710655
  %i.cp = inttoptr i64 %i.co to ptr
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !108 ; 2 uses
  %.not43125.not.i = icmp eq i32 %i.cr, 0
  br i1 %.not43125.not.i, label %_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit..critedge45_crit_edge.i, label %.lr.ph.i

_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit..critedge45_crit_edge.i: ; preds = %_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit.i
  %.pre140.i = zext i32 %i.cn to i64
  br label %.critedge45.i

.lr.ph.i:                                         ; preds = %_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit.i
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ck, i64 144
  %i.ct = zext i32 %i.cn to i64                   ; 5 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ck, i64 200
  %i.cv = ptrtoint ptr %1 to i64                  ; 6 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.cx = getelementptr inbounds nuw i8, ptr %5, i64 4
  br label %bb.r

bb.r:                                             ; preds = %bb.an, %.lr.ph.i
  %.042126.i = phi i32 [ 0, %.lr.ph.i ], [ %i.gg, %bb.an ] ; 4 uses
  %i.cy = load ptr, ptr %i.cs, align 8, !tbaa !45
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.ct
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !51
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 128
  store i32 %i.cn, ptr %i.cm, align 8, !tbaa !50
  store ptr %i.db, ptr %i.cu, align 8, !tbaa !49
  store ptr %i.cj, ptr %i.cl, align 8, !tbaa !48
  %.sroa.0.0.copyload.i.i65.i = load i64, ptr %i.bm, align 8, !tbaa !16
  %i.dc = and i64 %.sroa.0.0.copyload.i.i65.i, 281474976710655
  %i.dd = inttoptr i64 %i.dc to ptr               ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 20
  %i.df = load i32, ptr %i.de, align 4, !tbaa !111 ; 2 uses
  %.not.i.i = icmp uge i32 %.042126.i, %i.df
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %i.dh = load i32, ptr %i.dg, align 4
  %i.di = icmp ult i32 %.042126.i, %i.dh
  %or.cond.i.i = select i1 %.not.i.i, i1 %i.di, i1 false
  br i1 %or.cond.i.i, label %bb.s, label %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit.thread.i

bb.s:                                             ; preds = %bb.r
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dd, i64 28
  %.sroa.0.0.copyload.i.i.i.i.i = load i32, ptr %i.dj, align 4, !tbaa !3
  %i.dk = zext i32 %.sroa.0.0.copyload.i.i.i.i.i to i64
  %i.dl = add i64 %i.dk, %i.cv
  %i.dm = inttoptr i64 %i.dl to ptr               ; 2 uses
  %i.dn = sub nuw i32 %.042126.i, %i.df           ; 4 uses
  %i.do = icmp ult i32 %i.dn, 4096
  br i1 %i.do, label %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dp = add i32 %i.dn, -4096
  %i.dq = lshr i32 %i.dp, 10
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dm, i64 16392
  %i.ds = zext nneg i32 %i.dq to i64
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %i.ds
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !112
  %i.dv = zext i32 %i.du to i64
  %i.dw = add i64 %i.dv, %i.cv
  %i.dx = inttoptr i64 %i.dw to ptr
  %i.dy = and i32 %i.dn, 1023
  br label %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit.i

_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit.i: ; preds = %bb.t, %bb.s
  %.sink8.i.i.i = phi ptr [ %i.dx, %bb.t ], [ %i.dm, %bb.s ]
  %.sink7.i.i.i = phi i32 [ %i.dy, %bb.t ], [ %i.dn, %bb.s ]
  %i.dz = getelementptr inbounds nuw i8, ptr %.sink8.i.i.i, i64 8
  %i.ea = zext nneg i32 %.sink7.i.i.i to i64
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %i.ea
  %.sroa.0.0.i.i.i = load i32, ptr %i.eb, align 4, !tbaa !3 ; 9 uses
  %i.ec = trunc i32 %.sroa.0.0.i.i.i to i8
  %i.ed = and i8 %i.ec, 15
  switch i8 %i.ed, label %default.unreachable [
    i8 0, label %bb.u
    i8 8, label %bb.u
    i8 1, label %bb.v
    i8 9, label %bb.v
    i8 2, label %bb.w
    i8 10, label %bb.w
    i8 3, label %bb.x
    i8 11, label %bb.x
    i8 4, label %bb.y
    i8 12, label %bb.y
    i8 5, label %bb.z
    i8 13, label %bb.z
    i8 6, label %bb.aa
    i8 14, label %.sink.split.i
    i8 7, label %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit.thread.i
    i8 15, label %bb.ab
  ]

bb.u:                                             ; preds = %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit.i, %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit.i
  %.not.i.i.i.i.i.i = icmp eq i32 %.sroa.0.0.i.i.i, 0
  %i.ee = zext i32 %.sroa.0.0.i.i.i to i64
  %i.ef = add i64 %i.ee, %i.cv
  %i.eg = or i64 %i.ef, -281474976710656
  %i.eh = select i1 %.not.i.i.i.i.i.i, i64 -281474976710656, i64 %i.eg
  br label %.sink.split.i

bb.v:                                             ; preds = %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit.i, %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit.i
  %i.ei = and i32 %.sroa.0.0.i.i.i, -8
  %i.ej = zext i32 %i.ei to i64
  %i.ek = add i64 %i.ej, %i.cv
  %i.el = or i64 %i.ek, -562949953421312
  br label %.sink.split.i

bb.w:                                             ; preds = %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit.i, %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit.i
  %i.em = and i32 %.sroa.0.0.i.i.i, -8
  %i.en = zext i32 %i.em to i64
  %i.eo = add i64 %i.en, %i.cv
  %i.ep = or i64 %i.eo, -844424930131968
  br label %.sink.split.i

bb.x:                                             ; preds = %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit.i, %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit.i
  %i.eq = and i32 %.sroa.0.0.i.i.i, -8
  %i.er = zext i32 %i.eq to i64
  %i.es = add i64 %i.er, %i.cv
  %i.et = inttoptr i64 %i.es to ptr
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.ev = load double, ptr %i.eu, align 8, !tbaa !113 ; 2 uses
  %i.ew = fcmp uno double %i.ev, 0.000000e+00
  br i1 %i.ew, label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit.thread104.i, label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit.i, !prof !20

bb.y:                                             ; preds = %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit.i, %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit.i
  %i.ex = ashr i32 %.sroa.0.0.i.i.i, 3
  %i.ey = sitofp i32 %i.ex to double
  br label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit.i

bb.z:                                             ; preds = %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit.i, %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit.i
  %i.ez = lshr i32 %.sroa.0.0.i.i.i, 3
  %i.fa = zext nneg i32 %i.ez to i64
  %i.fb = or disjoint i64 %i.fa, -1266637395197952
  br label %.sink.split.i

bb.aa:                                            ; preds = %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit.i
  %i.fc = icmp ugt i32 %.sroa.0.0.i.i.i, 15
  %i.fd = zext i1 %i.fc to i64
  %i.fe = or disjoint i64 %i.fd, -1407374883553280
  br label %.sink.split.i

_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit.thread.i: ; preds = %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit.i, %bb.r
  br label %.sink.split.i

bb.ab:                                            ; preds = %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit.i
  br label %.sink.split.i

default.unreachable:                              ; preds = %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit.i
  unreachable

_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit.thread104.i: ; preds = %bb.x
  store i64 9221120237041090560, ptr %.0.i.i.i.i.i.i.i, align 8, !tbaa !18
  br label %bb.ac

_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit.i: ; preds = %bb.y, %bb.x
  %.sroa.05.0.i.in.i = phi double [ %i.ev, %bb.x ], [ %i.ey, %bb.y ] ; 2 uses
  %.sroa.05.0.i.i = bitcast double %.sroa.05.0.i.in.i to i64
  store double %.sroa.05.0.i.in.i, ptr %.0.i.i.i.i.i.i.i, align 8, !tbaa !18
  %i.ff = icmp ult i64 %.sroa.05.0.i.i, -1970324836974592
  br i1 %i.ff, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit.i, %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit.thread104.i
  %i.fg = call ptr @_ZN6hermes2vm12toString_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.0.i.i.i.i.i.i.i) #10 ; 2 uses
  %.not118.i.a = icmp eq ptr %i.fg, inttoptr (i64 -1 to ptr)
  br i1 %.not118.i.a, label %.thread.i, label %bb.ad, !prof !20

bb.ad:                                            ; preds = %bb.ac
  %i.fh = ptrtoint ptr %i.fg to i64
  %i.fi = or i64 %i.fh, -844424930131968
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.ad, %bb.ab, %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit.thread.i, %bb.aa, %bb.z, %bb.w, %bb.v, %bb.u, %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit.i
  %.sink.i = phi i64 [ %i.fi, %bb.ad ], [ -1688849860263936, %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit.i ], [ -1970324836974592, %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit.thread.i ], [ -1548112371908608, %bb.ab ], [ %i.fe, %bb.aa ], [ %i.fb, %bb.z ], [ %i.ep, %bb.w ], [ %i.el, %bb.v ], [ %i.eh, %bb.u ]
  store i64 %.sink.i, ptr %.0.i.i.i.i.i.i.i, align 8, !tbaa !18
  br label %bb.ae

bb.ae:                                            ; preds = %.sink.split.i, %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit.i
  %i.fj = load i64, ptr %.sroa.03.0.i22, align 8, !tbaa !18 ; 2 uses
  %i.fk = icmp ugt i64 %i.fj, -844424930131969
  %i.fl = and i64 %i.fj, 281474976710655
  %i.fm = icmp ne i64 %i.fl, 0
  %i.fn = and i1 %i.fk, %i.fm
  br i1 %i.fn, label %bb.af, label %.thread112.i

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  store i32 0, ptr %4, align 4, !tbaa !26
  store i32 -1, ptr %i.cw, align 4, !tbaa !116
  %i.fo = call i32 @_ZN6hermes2vm8JSObject33getOwnComputedPrimitiveDescriptorENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEENS1_11IgnoreProxyERNS0_13MutableHandleINS0_8SymbolIDEEERNS0_26ComputedPropertyDescriptorE(ptr nonnull %.sroa.03.0.i22, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.0.i.i.i.i.i.i.i, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(8) %4) #10 ; 2 uses
  %.mask.i30 = and i32 %i.fo, 255
  %i.fp = icmp eq i32 %.mask.i30, 0
  br i1 %i.fp, label %.thread109.i, label %bb.ag, !prof !20

.thread109.i:                                     ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br label %.thread.i

bb.ag:                                            ; preds = %bb.af
  %i.fq = and i32 %i.fo, 256
  %.not121.i.a = icmp eq i32 %i.fq, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br i1 %.not121.i.a, label %.thread112.i, label %bb.an

.thread112.i:                                     ; preds = %bb.ag, %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  store i32 0, ptr %5, align 4, !tbaa !26
  store i32 -1, ptr %i.cx, align 4, !tbaa !116
  %i.fr = call i32 @_ZN6hermes2vm8JSObject24getOwnComputedDescriptorENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEERNS0_13MutableHandleINS0_8SymbolIDEEERNS0_26ComputedPropertyDescriptorE(ptr nonnull %storemerge, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.0.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(8) %5) #10 ; 2 uses
  %.mask122.i = and i32 %i.fr, 255
  %i.fs = icmp eq i32 %.mask122.i, 0
  br i1 %i.fs, label %.critedge.i, label %bb.ah, !prof !20

bb.ah:                                            ; preds = %.thread112.i
  %i.ft = and i32 %i.fr, 256
  %.not123.i = icmp eq i32 %i.ft, 0
  br i1 %.not123.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fu = load i16, ptr %5, align 4
  %i.fv = and i16 %i.fu, 2
  %.not.i = icmp eq i16 %i.fv, 0
  br i1 %.not.i, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.sroa.0.0.copyload.i.i67.i = load i64, ptr %storemerge, align 8, !tbaa !16
  %i.fw = and i64 %.sroa.0.0.copyload.i.i67.i, 281474976710655
  %i.fx = inttoptr i64 %i.fw to ptr
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 4
  %i.fz = load i32, ptr %i.fy, align 4
  %i.ga = and i32 %i.fz, 32
  %.not124.i = icmp eq i32 %i.ga, 0
  br i1 %.not124.i, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.gb = call { i32, i64 } @_ZN6hermes2vm8JSObject27getComputedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEES7_(ptr nonnull %storemerge, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.0.i.i.i.i.i.i.i, ptr nonnull %storemerge) #10 ; 2 uses
  %i.gc = extractvalue { i32, i64 } %i.gb, 0
  %i.gd = icmp eq i32 %i.gc, 0
  br i1 %i.gd, label %.critedge.i, label %bb.al, !prof !20

bb.al:                                            ; preds = %bb.ak
  %i.ge = extractvalue { i32, i64 } %i.gb, 1
  store i64 %i.ge, ptr %.0.i.i.i.i.i.i60.i, align 8, !tbaa !18
  %i.gf = call i32 @_ZN6hermes2vm8JSObject17defineOwnComputedENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEENS0_19DefinePropertyFlagsES7_NS0_11PropOpFlagsE(ptr nonnull %.sroa.07.0.copyload, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.0.i.i.i.i.i.i.i, i32 319, ptr nonnull %.0.i.i.i.i.i.i60.i, i32 0) #10 ; 0 uses
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.ag
  %i.gg = add nuw i32 %.042126.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.gg, %i.cr
  br i1 %exitcond.not.i, label %.critedge45.i, label %bb.r, !llvm.loop !118

.critedge.i:                                      ; preds = %bb.ak, %.thread112.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  br label %.thread.i

.critedge45.i:                                    ; preds = %bb.an, %_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit..critedge45_crit_edge.i
  %.pre139.pre-phi.i = phi i64 [ %.pre140.i, %_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit..critedge45_crit_edge.i ], [ %i.ct, %bb.an ]
  %.sroa.0.0.copyload.i69.i = load i64, ptr %.sroa.07.0.copyload, align 8, !tbaa !16
  br label %.thread.i

.thread.i:                                        ; preds = %bb.ac, %.critedge45.i, %.critedge.i, %.thread109.i
  %.pre-phi.i = phi i64 [ %.pre139.pre-phi.i, %.critedge45.i ], [ %i.ct, %.critedge.i ], [ %i.ct, %.thread109.i ], [ %i.ct, %bb.ac ]
  %.sroa.0100.10.i = phi i32 [ 1, %.critedge45.i ], [ 0, %.critedge.i ], [ 0, %.thread109.i ], [ 0, %bb.ac ]
  %.sroa.7101.0.i = phi i64 [ %.sroa.0.0.copyload.i69.i, %.critedge45.i ], [ undef, %.critedge.i ], [ undef, %.thread109.i ], [ undef, %bb.ac ]
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ck, i64 144
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !45
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.gi, i64 %.pre-phi.i
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !51
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 128
  store i32 %i.cn, ptr %i.cm, align 8, !tbaa !50
  %i.gm = getelementptr inbounds nuw i8, ptr %i.ck, i64 200
  store ptr %i.gl, ptr %i.gm, align 8, !tbaa !49
  store ptr %i.cj, ptr %i.cl, align 8, !tbaa !48
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  br label %_ZN6hermes2vm12_GLOBAL__N_130copyDataPropertiesSlowPath_RJSERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEES6_S6_.exit

bb.ao:                                            ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #10
  %i.gn = load ptr, ptr %i.b, align 8, !tbaa !34  ; 4 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 192 ; 2 uses
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !48 ; 4 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gn, i64 200
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !49 ; 2 uses
  %i.gs = icmp ult ptr %i.gp, %i.gr
  br i1 %i.gs, label %bb.ap, label %bb.aq, !prof !31

bb.ap:                                            ; preds = %bb.ao
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gp, i64 8 ; 2 uses
  store ptr %i.gt, ptr %i.go, align 8, !tbaa !48
  store i64 -1688849860263936, ptr %i.gp, align 8, !tbaa !16
  br label %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit

bb.aq:                                            ; preds = %bb.ao
  %i.gu = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.gn, i64 -1688849860263936) #10
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !34  ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 192
  %.pre44 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !48
  %.phi.trans.insert45 = getelementptr inbounds nuw i8, ptr %.pre, i64 200
  %.pre46 = load ptr, ptr %.phi.trans.insert45, align 8, !tbaa !49
  br label %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit

_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit: ; preds = %bb.ap, %bb.aq
  %i.gv = phi ptr [ %i.gr, %bb.ap ], [ %.pre46, %bb.aq ] ; 2 uses
  %i.gw = phi ptr [ %i.gt, %bb.ap ], [ %.pre44, %bb.aq ] ; 4 uses
  %i.gx = phi ptr [ %i.gn, %bb.ap ], [ %.pre, %bb.aq ] ; 3 uses
  %.0.i.i.i.i.i.i31 = phi ptr [ %i.gp, %bb.ap ], [ %i.gu, %bb.aq ]
  store ptr %.0.i.i.i.i.i.i31, ptr %10, align 8, !tbaa !106
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #10
  %i.gy = icmp ult ptr %i.gw, %i.gv
  br i1 %i.gy, label %bb.ar, label %bb.as, !prof !31

bb.ar:                                            ; preds = %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gx, i64 192
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gw, i64 8 ; 2 uses
  store ptr %i.ha, ptr %i.gz, align 8, !tbaa !48
  store i64 -1688849860263936, ptr %i.gw, align 8, !tbaa !16
  br label %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit33

bb.as:                                            ; preds = %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit
  %i.hb = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.gx, i64 -1688849860263936) #10
  %.pre47 = load ptr, ptr %i.b, align 8, !tbaa !34 ; 3 uses
  %.phi.trans.insert48 = getelementptr inbounds nuw i8, ptr %.pre47, i64 192
  %.pre49 = load ptr, ptr %.phi.trans.insert48, align 8, !tbaa !48
  %.phi.trans.insert50 = getelementptr inbounds nuw i8, ptr %.pre47, i64 200
  %.pre51 = load ptr, ptr %.phi.trans.insert50, align 8, !tbaa !49
  br label %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit33

_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit33: ; preds = %bb.ar, %bb.as
  %i.hc = phi ptr [ %i.gv, %bb.ar ], [ %.pre51, %bb.as ]
  %i.hd = phi ptr [ %i.ha, %bb.ar ], [ %.pre49, %bb.as ] ; 4 uses
  %i.he = phi ptr [ %i.gx, %bb.ar ], [ %.pre47, %bb.as ] ; 2 uses
  %.0.i.i.i.i.i.i32 = phi ptr [ %i.gw, %bb.ar ], [ %i.hb, %bb.as ]
  store ptr %.0.i.i.i.i.i.i32, ptr %11, align 8, !tbaa !106
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #10
  %i.hf = icmp ult ptr %i.hd, %i.hc
  br i1 %i.hf, label %bb.at, label %bb.au, !prof !31

bb.at:                                            ; preds = %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit33
  %i.hg = getelementptr inbounds nuw i8, ptr %i.he, i64 192
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hd, i64 8
  store ptr %i.hh, ptr %i.hg, align 8, !tbaa !48
  store i64 -1266636858327041, ptr %i.hd, align 8, !tbaa !16
  br label %_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit

bb.au:                                            ; preds = %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit33
  %i.hi = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.he, i64 -1266636858327041) #10
  %.sroa.01.0.copyload.pre = load ptr, ptr %8, align 8
  br label %_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit

_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit: ; preds = %bb.at, %bb.au
  %.sroa.01.0.copyload = phi ptr [ %storemerge, %bb.at ], [ %.sroa.01.0.copyload.pre, %bb.au ]
  %.0.i.i.i.i.i.i34 = phi ptr [ %i.hd, %bb.at ], [ %i.hi, %bb.au ]
  store ptr %.0.i.i.i.i.i.i34, ptr %12, align 8, !tbaa !106
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #10
  store ptr %8, ptr %13, align 8, !tbaa !119
  %i.hj = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %7, ptr %i.hj, align 8, !tbaa !119
  %i.hk = getelementptr inbounds nuw i8, ptr %13, i64 16
  store ptr %9, ptr %i.hk, align 8, !tbaa !119
  %i.hl = getelementptr inbounds nuw i8, ptr %13, i64 24
  store ptr %10, ptr %i.hl, align 8, !tbaa !121
  %i.hm = getelementptr inbounds nuw i8, ptr %13, i64 32
  store ptr %11, ptr %i.hm, align 8, !tbaa !121
  %i.hn = getelementptr inbounds nuw i8, ptr %13, i64 40
  store ptr %12, ptr %i.hn, align 8, !tbaa !123
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #10
  store ptr %8, ptr %14, align 8, !tbaa !119
  %i.ho = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %7, ptr %i.ho, align 8, !tbaa !119
  %i.hp = getelementptr inbounds nuw i8, ptr %14, i64 16
  store ptr %9, ptr %i.hp, align 8, !tbaa !119
  %i.hq = getelementptr inbounds nuw i8, ptr %14, i64 24
  store ptr %11, ptr %i.hq, align 8, !tbaa !121
  %i.hr = call fastcc noundef zeroext i1 @"_ZN6hermes2vm8JSObject23forEachOwnPropertyWhileIZNS0_31hermesBuiltinCopyDataPropertiesEPvRNS0_7RuntimeENS0_10NativeArgsEE3$_0ZNS0_31hermesBuiltinCopyDataPropertiesES3_S5_S6_E3$_1EEbNS0_6HandleIS1_EES5_RKT_RKT0_"(ptr %.sroa.01.0.copyload, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %13, ptr noundef nonnull align 8 dereferenceable(32) %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #10
  br i1 %i.hr, label %bb.av, label %bb.aw, !prof !31

bb.av:                                            ; preds = %_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit
  %i.hs = load ptr, ptr %7, align 8, !tbaa !106
  %.sroa.0.0.copyload.i35 = load i64, ptr %i.hs, align 8, !tbaa !16
  br label %bb.aw

bb.aw:                                            ; preds = %_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit, %bb.av
  %.sroa.041.0 = phi i32 [ 1, %bb.av ], [ 0, %_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit ]
  %.sroa.6.0 = phi i64 [ %.sroa.0.0.copyload.i35, %bb.av ], [ undef, %_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #10
  br label %_ZN6hermes2vm12_GLOBAL__N_130copyDataPropertiesSlowPath_RJSERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEES6_S6_.exit

_ZN6hermes2vm12_GLOBAL__N_130copyDataPropertiesSlowPath_RJSERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEES6_S6_.exit: ; preds = %.thread.i, %bb.j, %bb.aw
  %.sroa.041.1 = phi i32 [ %.sroa.041.0, %bb.aw ], [ %.sroa.0100.10.i, %.thread.i ], [ 0, %bb.j ]
  %.sroa.6.1 = phi i64 [ %.sroa.6.0, %bb.aw ], [ %.sroa.7101.0.i, %.thread.i ], [ undef, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #10
end_hunk_1
