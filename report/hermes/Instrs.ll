Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/Instrs?download=true
inline.NumInlined: 908
inline.NumDeleted: 597
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 6
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.llvh::hashing::detail::hash_combine_recursive_helper" = type { [64 x i8], %"struct.llvh::hashing::detail::hash_state", i64 }
%"struct.llvh::hashing::detail::hash_state" = type { i64, i64, i64, i64, i64, i64, i64 }
%"class.hermes::Instruction::Variety" = type { %"struct.std::pair.40" }
%"struct.std::pair.40" = type { i32, i32 }

$_ZN4llvh7hashing6detail29hash_combine_recursive_helper7combineIN6hermes11Instruction7VarietyEJjEEENS_9hash_codeEmPcS8_RKT_DpRKT0_ = comdat any

$_ZN4llvh7hashing6detail29hash_combine_recursive_helper12combine_dataImEEPcRmS4_S4_T_ = comdat any

$_ZN4llvh7hashing6detail29hash_combine_recursive_helper12combine_dataIjEEPcRmS4_S4_T_ = comdat any

$_ZN4llvh7hashing6detail29hash_combine_recursive_helper7combineEmPcS3_ = comdat any

$_ZN4llvh7hashing6detail10hash_shortEPKcmm = comdat any

$_ZNSt3_V28__rotateIPcEET_S2_S2_S2_St26random_access_iterator_tag = comdat any

$_ZZN4llvh7hashing6detail18get_execution_seedEvE4seed = comdat any

$_ZGVZN4llvh7hashing6detail18get_execution_seedEvE4seed = comdat any

@.str = private unnamed_addr constant [7 x i8] c"delete\00", align 1, !guid !8
@.str.1 = private unnamed_addr constant [5 x i8] c"void\00", align 1, !guid !9
@.str.2 = private unnamed_addr constant [7 x i8] c"typeof\00", align 1, !guid !10
@.str.3 = private unnamed_addr constant [2 x i8] c"+\00", align 1, !guid !11
@.str.4 = private unnamed_addr constant [2 x i8] c"-\00", align 1, !guid !12
@.str.5 = private unnamed_addr constant [2 x i8] c"~\00", align 1, !guid !13
@.str.6 = private unnamed_addr constant [2 x i8] c"!\00", align 1, !guid !14
@.str.7 = private unnamed_addr constant [3 x i8] c"++\00", align 1, !guid !15
@.str.8 = private unnamed_addr constant [3 x i8] c"--\00", align 1, !guid !16
@_ZN6hermes17UnaryOperatorInst12opStringReprE = hidden local_unnamed_addr global [9 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8], align 16, !guid !17
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !guid !18
@.str.10 = private unnamed_addr constant [3 x i8] c"==\00", align 1, !guid !19
@.str.11 = private unnamed_addr constant [3 x i8] c"!=\00", align 1, !guid !20
@.str.12 = private unnamed_addr constant [4 x i8] c"===\00", align 1, !guid !21
@.str.13 = private unnamed_addr constant [4 x i8] c"!==\00", align 1, !guid !22
@.str.14 = private unnamed_addr constant [2 x i8] c"<\00", align 1, !guid !23
@.str.15 = private unnamed_addr constant [3 x i8] c"<=\00", align 1, !guid !24
@.str.16 = private unnamed_addr constant [2 x i8] c">\00", align 1, !guid !25
@.str.17 = private unnamed_addr constant [3 x i8] c">=\00", align 1, !guid !26
@.str.18 = private unnamed_addr constant [3 x i8] c"<<\00", align 1, !guid !27
@.str.19 = private unnamed_addr constant [3 x i8] c">>\00", align 1, !guid !28
@.str.20 = private unnamed_addr constant [4 x i8] c">>>\00", align 1, !guid !29
@.str.21 = private unnamed_addr constant [2 x i8] c"*\00", align 1, !guid !30
@.str.22 = private unnamed_addr constant [2 x i8] c"/\00", align 1, !guid !31
@.str.23 = private unnamed_addr constant [2 x i8] c"%\00", align 1, !guid !32
@.str.24 = private unnamed_addr constant [2 x i8] c"|\00", align 1, !guid !33
@.str.25 = private unnamed_addr constant [2 x i8] c"^\00", align 1, !guid !34
@.str.26 = private unnamed_addr constant [2 x i8] c"&\00", align 1, !guid !35
@.str.27 = private unnamed_addr constant [3 x i8] c"**\00", align 1, !guid !36
@.str.28 = private unnamed_addr constant [3 x i8] c"in\00", align 1, !guid !37
@.str.29 = private unnamed_addr constant [11 x i8] c"instanceof\00", align 1, !guid !38
@_ZN6hermes18BinaryOperatorInst12opStringReprE = hidden local_unnamed_addr global [26 x ptr] [ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.3, ptr @.str.4, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.9, ptr @.str.9, ptr @.str.9, ptr @.str.28, ptr @.str.29], align 16, !guid !39
@.str.30 = private unnamed_addr constant [2 x i8] c"=\00", align 1, !guid !40
@.str.31 = private unnamed_addr constant [4 x i8] c"<<=\00", align 1, !guid !41
@.str.32 = private unnamed_addr constant [4 x i8] c">>=\00", align 1, !guid !42
@.str.33 = private unnamed_addr constant [5 x i8] c">>>=\00", align 1, !guid !43
@.str.34 = private unnamed_addr constant [3 x i8] c"+=\00", align 1, !guid !44
@.str.35 = private unnamed_addr constant [3 x i8] c"-=\00", align 1, !guid !45
@.str.36 = private unnamed_addr constant [3 x i8] c"*=\00", align 1, !guid !46
@.str.37 = private unnamed_addr constant [3 x i8] c"/=\00", align 1, !guid !47
@.str.38 = private unnamed_addr constant [3 x i8] c"%=\00", align 1, !guid !48
@.str.39 = private unnamed_addr constant [3 x i8] c"|=\00", align 1, !guid !49
@.str.40 = private unnamed_addr constant [3 x i8] c"^=\00", align 1, !guid !50
@.str.41 = private unnamed_addr constant [3 x i8] c"&=\00", align 1, !guid !51
@.str.42 = private unnamed_addr constant [4 x i8] c"**=\00", align 1, !guid !52
@.str.43 = private unnamed_addr constant [4 x i8] c"||=\00", align 1, !guid !53
@.str.44 = private unnamed_addr constant [4 x i8] c"&&=\00", align 1, !guid !54
@.str.45 = private unnamed_addr constant [4 x i8] c"??=\00", align 1, !guid !55
@_ZN6hermes18BinaryOperatorInst22assignmentOpStringReprE = hidden local_unnamed_addr global [26 x ptr] [ptr @.str.30, ptr @.str.9, ptr @.str.9, ptr @.str.9, ptr @.str.9, ptr @.str.9, ptr @.str.9, ptr @.str.9, ptr @.str.9, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.9, ptr @.str.9], align 16, !guid !56
@.str.46 = private unnamed_addr constant [24 x i8] c"Invalid binary operator\00", align 1, !guid !57
@_ZZN4llvh7hashing6detail18get_execution_seedEvE4seed = linkonce_odr hidden local_unnamed_addr global i64 0, comdat, align 8, !guid !58
@_ZGVZN4llvh7hashing6detail18get_execution_seedEvE4seed = linkonce_odr hidden global i64 0, comdat, align 8, !guid !59
@_ZN4llvh7hashing6detail19fixed_seed_overrideE = external local_unnamed_addr global i64, align 8
@switch.table._ZN6hermes18BinaryOperatorInst21tryGetReverseOperatorENS0_6OpKindE = private unnamed_addr constant [19 x i8] [i8 1, i8 2, i8 3, i8 4, i8 7, i8 8, i8 5, i8 6, i8 undef, i8 undef, i8 undef, i8 12, i8 undef, i8 14, i8 undef, i8 undef, i8 17, i8 18, i8 19], align 4
@switch.table._ZN6hermes18BinaryOperatorInst21tryGetReverseOperatorENS0_6OpKindE.90 = private unnamed_addr constant [19 x i64] [i64 4294967296, i64 4294967296, i64 4294967296, i64 4294967296, i64 4294967296, i64 4294967296, i64 4294967296, i64 4294967296, i64 0, i64 0, i64 0, i64 4294967296, i64 0, i64 4294967296, i64 0, i64 0, i64 4294967296, i64 4294967296, i64 4294967296], align 8

@_ZN6hermes10SwitchInstC1EPNS_5ValueEPNS_10BasicBlockERKN4llvh11SmallVectorIPNS_7LiteralELj8EEERKNS6_IS4_Lj8EEE = hidden unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr), ptr @_ZN6hermes10SwitchInstC2EPNS_5ValueEPNS_10BasicBlockERKN4llvh11SmallVectorIPNS_7LiteralELj8EEERKNS6_IS4_Lj8EEE
@_ZN6hermes7PhiInstC1ERKN4llvh11SmallVectorIPNS_5ValueELj8EEERKNS2_IPNS_10BasicBlockELj8EEE = hidden unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN6hermes7PhiInstC2ERKN4llvh11SmallVectorIPNS_5ValueELj8EEERKNS2_IPNS_10BasicBlockELj8EEE
@_ZN6hermes13GetPNamesInstC1EPNS_10BasicBlockEPNS_5ValueES4_S4_S4_S2_S2_ = hidden unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr), ptr @_ZN6hermes13GetPNamesInstC2EPNS_10BasicBlockEPNS_5ValueES4_S4_S4_S2_S2_
@_ZN6hermes16GetNextPNameInstC1EPNS_10BasicBlockEPNS_5ValueES4_S4_S4_S4_S2_S2_ = hidden unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr), ptr @_ZN6hermes16GetNextPNameInstC2EPNS_10BasicBlockEPNS_5ValueES4_S4_S4_S4_S2_S2_
@_ZN6hermes13SwitchImmInstC1EPNS_5ValueEPNS_10BasicBlockEPNS_13LiteralNumberES6_RKN4llvh11SmallVectorIS6_Lj8EEERKNS8_IS4_Lj8EEE = hidden unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr, ptr, ptr), ptr @_ZN6hermes13SwitchImmInstC2EPNS_5ValueEPNS_10BasicBlockEPNS_13LiteralNumberES6_RKN4llvh11SmallVectorIS6_Lj8EEERKNS8_IS4_Lj8EEE

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef range(i32 0, -2147483647) i32 @_ZNK6hermes14TerminatorInst16getNumSuccessorsEv(ptr noundef nonnull align 8 dereferenceable(132) %0) local_unnamed_addr #0 align 2 !guid !110 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !tbaa !71
  switch i8 %i.b, label %.fold.split111 [
    i8 87, label %bb.c
    i8 78, label %.fold.split
    i8 79, label %.fold.split
    i8 80, label %bb.b
    i8 81, label %.fold.split112
    i8 82, label %.fold.split112
    i8 83, label %.fold.split112
    i8 84, label %.fold.split112
    i8 85, label %.fold.split112
    i8 86, label %.fold.split112
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef i32 @_ZNK6hermes11Instruction14getNumOperandsEv(ptr noundef nonnull align 8 dereferenceable(132) %0) #15
  %i.d = add i32 %i.c, -2
  %i.e = lshr i32 %i.d, 1
  %i.f = add nuw i32 %i.e, 1
  br label %.fold.split111

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef i32 @_ZNK6hermes11Instruction14getNumOperandsEv(ptr noundef nonnull align 8 dereferenceable(132) %0) #15
  %i.h = add i32 %i.g, -4
  %i.i = lshr i32 %i.h, 1
  %i.j = add nuw i32 %i.i, 1
  br label %.fold.split111

.fold.split:                                      ; preds = %bb.a, %bb.a
  br label %.fold.split111

.fold.split112:                                   ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  br label %.fold.split111

.fold.split111:                                   ; preds = %bb.a, %.fold.split112, %.fold.split, %bb.c, %bb.b
  %.12 = phi i32 [ 1, %bb.a ], [ %i.j, %bb.c ], [ %i.f, %bb.b ], [ 2, %.fold.split112 ], [ 0, %.fold.split ]
  ret i32 %.12
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZNK6hermes14TerminatorInst12getSuccessorEj(ptr noundef nonnull align 8 dereferenceable(132) %0, i32 noundef %1) local_unnamed_addr #0 align 2 !guid !111 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !tbaa !71    ; 18 uses
  switch i8 %i.b, label %.thread102.unreachabledefault [
    i8 77, label %bb.b
    i8 80, label %.thread102
    i8 81, label %bb.e
    i8 82, label %bb.f
    i8 83, label %bb.g
    i8 84, label %bb.h
    i8 85, label %bb.i
    i8 86, label %bb.j
    i8 87, label %bb.k
    i8 88, label %bb.l
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %0, i32 noundef 0) #15 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  %i.e = getelementptr inbounds i8, ptr %i.c, i64 -16
  %i.f = select i1 %i.d, ptr null, ptr %i.e
  br label %bb.m

.thread102:                                       ; preds = %bb.a
  %i.g = icmp ne i8 %i.b, 78
  tail call void @llvm.assume(i1 %i.g)
  %i.h = icmp ne i8 %i.b, 79
  tail call void @llvm.assume(i1 %i.h)
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.thread102
  %i.i = shl i32 %1, 1                            ; 2 uses
  %i.j = tail call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %0, i32 noundef %i.i) #15 ; 0 uses
  %i.k = or disjoint i32 %i.i, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.thread102
  %.sink.i = phi i32 [ %i.k, %bb.c ], [ 1, %.thread102 ]
  %i.l = tail call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %0, i32 noundef %.sink.i) #15 ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -16
  %i.o = select i1 %i.m, ptr null, ptr %i.n
  br label %bb.m

bb.e:                                             ; preds = %bb.a
  %3 = icmp ne i8 %i.b, 78
  tail call void @llvm.assume(i1 %3)
  %4 = icmp ne i8 %i.b, 79
  tail call void @llvm.assume(i1 %4)
  %i.p = icmp eq i32 %1, 0
  %spec.select.i86 = select i1 %i.p, i32 1, i32 2
  %i.q = tail call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %0, i32 noundef %spec.select.i86) #15 ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  %i.s = getelementptr inbounds i8, ptr %i.q, i64 -16
  %i.t = select i1 %i.r, ptr null, ptr %i.s
  br label %bb.m

bb.f:                                             ; preds = %bb.a
  %5 = icmp ne i8 %i.b, 78
  tail call void @llvm.assume(i1 %5)
  %6 = icmp ne i8 %i.b, 79
  tail call void @llvm.assume(i1 %6)
  %i.u = icmp eq i32 %1, 0
  %spec.select.i88 = select i1 %i.u, i32 4, i32 5
  %i.v = tail call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %0, i32 noundef %spec.select.i88) #15 ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  %i.x = getelementptr inbounds i8, ptr %i.v, i64 -16
  %i.y = select i1 %i.w, ptr null, ptr %i.x
  br label %bb.m

bb.g:                                             ; preds = %bb.a
  %7 = icmp ne i8 %i.b, 78
  tail call void @llvm.assume(i1 %7)
  %8 = icmp ne i8 %i.b, 79
  tail call void @llvm.assume(i1 %8)
  %i.z = icmp eq i32 %1, 0
  %spec.select.i90 = select i1 %i.z, i32 5, i32 6
  %i.aa = tail call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %0, i32 noundef %spec.select.i90) #15 ; 2 uses
  %i.ab = icmp eq ptr %i.aa, null
  %i.ac = getelementptr inbounds i8, ptr %i.aa, i64 -16
  %i.ad = select i1 %i.ab, ptr null, ptr %i.ac
  br label %bb.m

bb.h:                                             ; preds = %bb.a
  %9 = icmp ne i8 %i.b, 78
  tail call void @llvm.assume(i1 %9)
  %10 = icmp ne i8 %i.b, 79
  tail call void @llvm.assume(i1 %10)
  %i.ae = icmp eq i32 %1, 0
  %spec.select.i92 = select i1 %i.ae, i32 3, i32 4
  %i.af = tail call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %0, i32 noundef %spec.select.i92) #15 ; 2 uses
  %i.ag = icmp eq ptr %i.af, null
  %i.ah = getelementptr inbounds i8, ptr %i.af, i64 -16
  %i.ai = select i1 %i.ag, ptr null, ptr %i.ah
  br label %bb.m

bb.i:                                             ; preds = %bb.a
  %11 = icmp ne i8 %i.b, 78
  tail call void @llvm.assume(i1 %11)
  %12 = icmp ne i8 %i.b, 79
  tail call void @llvm.assume(i1 %12)
  %i.aj = tail call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %0, i32 noundef %1) #15 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, null
  %i.al = getelementptr inbounds i8, ptr %i.aj, i64 -16
  %i.am = select i1 %i.ak, ptr null, ptr %i.al
  br label %bb.m

bb.j:                                             ; preds = %bb.a
  %13 = icmp ne i8 %i.b, 78
  tail call void @llvm.assume(i1 %13)
  %14 = icmp ne i8 %i.b, 79
  tail call void @llvm.assume(i1 %14)
  %i.an = icmp eq i32 %1, 0
  %spec.select.i95 = select i1 %i.an, i32 2, i32 3
  %i.ao = tail call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(136) %0, i32 noundef %spec.select.i95) #15 ; 2 uses
  %i.ap = icmp eq ptr %i.ao, null
  %i.aq = getelementptr inbounds i8, ptr %i.ao, i64 -16
  %i.ar = select i1 %i.ap, ptr null, ptr %i.aq
  br label %bb.m

bb.k:                                             ; preds = %bb.a
  %15 = icmp ne i8 %i.b, 78
  tail call void @llvm.assume(i1 %15)
  %16 = icmp ne i8 %i.b, 79
  tail call void @llvm.assume(i1 %16)
  %i.as = tail call noundef ptr @_ZNK6hermes13SwitchImmInst12getSuccessorEj(ptr noundef nonnull align 8 dereferenceable(132) %0, i32 noundef %1)
  br label %bb.m

.thread102.unreachabledefault:                    ; preds = %bb.a
  unreachable

bb.l:                                             ; preds = %bb.a
  %.not = icmp eq i8 %i.b, 88
  tail call void @llvm.assume(i1 %.not)
  %i.at = tail call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %0, i32 noundef 1) #15 ; 2 uses
  %i.au = icmp eq ptr %i.at, null
  %i.av = getelementptr inbounds i8, ptr %i.at, i64 -16
  %i.aw = select i1 %i.au, ptr null, ptr %i.av
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.b, %bb.l
  %.12 = phi ptr [ %i.f, %bb.b ], [ %i.as, %bb.k ], [ %i.ar, %bb.j ], [ %i.am, %bb.i ], [ %i.ai, %bb.h ], [ %i.ad, %bb.g ], [ %i.y, %bb.f ], [ %i.t, %bb.e ], [ %i.o, %bb.d ], [ %i.aw, %bb.l ]
  ret ptr %.12
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZNK6hermes10SwitchInst12getSuccessorEj(ptr noundef nonnull align 8 dereferenceable(132) %0, i32 noundef %1) local_unnamed_addr #0 align 2 !guid !112 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = shl i32 %1, 1                            ; 2 uses
  %i.c = tail call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %0, i32 noundef %i.b) #15 ; 0 uses
  %i.d = or disjoint i32 %i.b, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink = phi i32 [ %i.d, %bb.b ], [ 1, %bb.a ]
  %i.e = tail call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %0, i32 noundef %.sink) #15 ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  %i.g = getelementptr inbounds i8, ptr %i.e, i64 -16
  %i.h = select i1 %i.f, ptr null, ptr %i.g
  ret ptr %i.h
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZNK6hermes13SwitchImmInst12getSuccessorEj(ptr noundef nonnull align 8 dereferenceable(132) %0, i32 noundef %1) local_unnamed_addr #0 align 2 !guid !113 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = shl i32 %1, 1                            ; 2 uses
  %i.c = add i32 %i.b, 2
  %i.d = tail call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %0, i32 noundef %i.c) #15 ; 0 uses
  %i.e = add i32 %i.b, 3
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink = phi i32 [ %i.e, %bb.b ], [ 1, %bb.a ]
  %i.f = tail call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %0, i32 noundef %.sink) #15 ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  %i.h = getelementptr inbounds i8, ptr %i.f, i64 -16
  %i.i = select i1 %i.g, ptr null, ptr %i.h
  ret ptr %i.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes14TerminatorInst12setSuccessorEjPNS_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(132) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 align 2 !guid !114 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !tbaa !71
  switch i8 %i.b, label %.loopexit [
    i8 77, label %bb.b
    i8 80, label %bb.c
    i8 81, label %bb.d
    i8 82, label %bb.e
    i8 83, label %bb.f
    i8 84, label %bb.g
    i8 85, label %bb.h
    i8 86, label %bb.i
    i8 87, label %bb.j
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq ptr %2, null
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %spec.select.i82 = select i1 %i.c, ptr null, ptr %i.d
  tail call void @_ZN6hermes11Instruction10setOperandEPNS_5ValueEj(ptr noundef nonnull align 8 dereferenceable(132) %0, ptr noundef %spec.select.i82, i32 noundef %1) #15
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.e = icmp eq ptr %2, null
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %spec.select.i86 = select i1 %i.e, ptr null, ptr %i.f
  %i.g = shl i32 %1, 1
  %i.h = or disjoint i32 %i.g, 1
  tail call void @_ZN6hermes11Instruction10setOperandEPNS_5ValueEj(ptr noundef nonnull align 8 dereferenceable(132) %0, ptr noundef %spec.select.i86, i32 noundef %i.h) #15
  br label %.loopexit

bb.d:                                             ; preds = %bb.a
  %i.i = icmp eq ptr %2, null
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  %spec.select.i88 = select i1 %i.i, ptr null, ptr %i.j
  %i.k = add i32 %1, 1
  tail call void @_ZN6hermes11Instruction10setOperandEPNS_5ValueEj(ptr noundef nonnull align 8 dereferenceable(132) %0, ptr noundef %spec.select.i88, i32 noundef %i.k) #15
  br label %.loopexit

bb.e:                                             ; preds = %bb.a
  %i.l = icmp eq i32 %1, 0
  %spec.select.i90 = select i1 %i.l, i32 4, i32 5
  %i.m = icmp eq ptr %2, null
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %spec.select1.i = select i1 %i.m, ptr null, ptr %i.n
  tail call void @_ZN6hermes11Instruction10setOperandEPNS_5ValueEj(ptr noundef nonnull align 8 dereferenceable(132) %0, ptr noundef %spec.select1.i, i32 noundef %spec.select.i90) #15
  br label %.loopexit

bb.f:                                             ; preds = %bb.a
  %i.o = icmp eq i32 %1, 0
  %spec.select.i92 = select i1 %i.o, i32 5, i32 6
  %i.p = icmp eq ptr %2, null
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16
  %spec.select1.i93 = select i1 %i.p, ptr null, ptr %i.q
  tail call void @_ZN6hermes11Instruction10setOperandEPNS_5ValueEj(ptr noundef nonnull align 8 dereferenceable(132) %0, ptr noundef %spec.select1.i93, i32 noundef %spec.select.i92) #15
  br label %.loopexit

bb.g:                                             ; preds = %bb.a
  %i.r = icmp eq i32 %1, 0
  %spec.select.i95 = select i1 %i.r, i32 3, i32 4
  %i.s = icmp eq ptr %2, null
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16
  %spec.select1.i96 = select i1 %i.s, ptr null, ptr %i.t
  tail call void @_ZN6hermes11Instruction10setOperandEPNS_5ValueEj(ptr noundef nonnull align 8 dereferenceable(132) %0, ptr noundef %spec.select1.i96, i32 noundef %spec.select.i95) #15
  br label %.loopexit

bb.h:                                             ; preds = %bb.a
  %i.u = icmp eq ptr %2, null
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16
  %spec.select.i98 = select i1 %i.u, ptr null, ptr %i.v
  tail call void @_ZN6hermes11Instruction10setOperandEPNS_5ValueEj(ptr noundef nonnull align 8 dereferenceable(132) %0, ptr noundef %spec.select.i98, i32 noundef %1) #15
  br label %.loopexit

bb.i:                                             ; preds = %bb.a
  %i.w = icmp eq ptr %2, null
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 16
  %spec.select.i100 = select i1 %i.w, ptr null, ptr %i.x
  %i.y = add i32 %1, 2
  tail call void @_ZN6hermes11Instruction10setOperandEPNS_5ValueEj(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %spec.select.i100, i32 noundef %i.y) #15
  br label %.loopexit

bb.j:                                             ; preds = %bb.a
  %i.z = icmp eq i32 %1, 0
  %i.aa = icmp eq ptr %2, null
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %spec.select.i102 = select i1 %i.aa, ptr null, ptr %i.ab
  %i.ac = shl i32 %1, 1
  %i.ad = add i32 %i.ac, 3
  %.sink.i = select i1 %i.z, i32 1, i32 %i.ad
  tail call void @_ZN6hermes11Instruction10setOperandEPNS_5ValueEj(ptr noundef nonnull align 8 dereferenceable(132) %0, ptr noundef %spec.select.i102, i32 noundef %.sink.i) #15
  br label %.loopexit

.loopexit:                                        ; preds = %bb.a, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes10SwitchInst12setSuccessorEjPNS_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(132) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 align 2 !guid !115 {
bb.a:
  %i.a = icmp eq ptr %2, null
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %spec.select = select i1 %i.a, ptr null, ptr %i.b
  %i.c = shl i32 %1, 1
  %i.d = or disjoint i32 %i.c, 1
  tail call void @_ZN6hermes11Instruction10setOperandEPNS_5ValueEj(ptr noundef nonnull align 8 dereferenceable(132) %0, ptr noundef %spec.select, i32 noundef %i.d) #15
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes13SwitchImmInst12setSuccessorEjPNS_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(132) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 align 2 !guid !116 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  %i.b = icmp eq ptr %2, null
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %spec.select = select i1 %i.b, ptr null, ptr %i.c
  %i.d = shl i32 %1, 1
  %i.e = add i32 %i.d, 3
  %.sink = select i1 %i.a, i32 1, i32 %i.e
  tail call void @_ZN6hermes11Instruction10setOperandEPNS_5ValueEj(ptr noundef nonnull align 8 dereferenceable(132) %0, ptr noundef %spec.select, i32 noundef %.sink) #15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_ZN6hermes16isSideEffectFreeENS_4TypeE(i32 %0) local_unnamed_addr #2 !guid !117 {
bb.a:
  %.sroa.0.0.extract.trunc = trunc i32 %0 to i16  ; 2 uses
  %.not.i = icmp ne i16 %.sroa.0.0.extract.trunc, 0
  %i.a = and i16 %.sroa.0.0.extract.trunc, -127
  %.not1.i = icmp eq i16 %i.a, 0
  %i.b = and i1 %.not.i, %.not1.i
  ret i1 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i32 @_ZN6hermes17UnaryOperatorInst13parseOperatorEN4llvh9StringRefE(ptr nofree readonly captures(none) %0, i64 %1) local_unnamed_addr #3 align 2 !guid !119 {
bb.a:
  %.fr14 = freeze i64 %1                          ; 3 uses
  %i.a = icmp eq i64 %.fr14, 0
  br i1 %i.a, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.a
  %i.b = load ptr, ptr @_ZN6hermes17UnaryOperatorInst12opStringReprE, align 16, !tbaa !73 ; 2 uses
end_hunk_0
