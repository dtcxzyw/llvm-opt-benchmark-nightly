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

@.str = private unnamed_addr constant [7 x i8] c"delete\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"typeof\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"~\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"!\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"++\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@_ZN6hermes17UnaryOperatorInst12opStringReprE = hidden local_unnamed_addr global [9 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8], align 16
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"==\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"!=\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"===\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"!==\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"<=\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c">=\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"<<\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c">>\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c">>>\00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c"%\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c"^\00", align 1
@.str.26 = private unnamed_addr constant [2 x i8] c"&\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"**\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"instanceof\00", align 1
@_ZN6hermes18BinaryOperatorInst12opStringReprE = hidden local_unnamed_addr global [26 x ptr] [ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.3, ptr @.str.4, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.9, ptr @.str.9, ptr @.str.9, ptr @.str.28, ptr @.str.29], align 16
@.str.30 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"<<=\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c">>=\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c">>>=\00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c"+=\00", align 1
@.str.35 = private unnamed_addr constant [3 x i8] c"-=\00", align 1
@.str.36 = private unnamed_addr constant [3 x i8] c"*=\00", align 1
@.str.37 = private unnamed_addr constant [3 x i8] c"/=\00", align 1
@.str.38 = private unnamed_addr constant [3 x i8] c"%=\00", align 1
@.str.39 = private unnamed_addr constant [3 x i8] c"|=\00", align 1
@.str.40 = private unnamed_addr constant [3 x i8] c"^=\00", align 1
@.str.41 = private unnamed_addr constant [3 x i8] c"&=\00", align 1
@.str.42 = private unnamed_addr constant [4 x i8] c"**=\00", align 1
@.str.43 = private unnamed_addr constant [4 x i8] c"||=\00", align 1
@.str.44 = private unnamed_addr constant [4 x i8] c"&&=\00", align 1
@.str.45 = private unnamed_addr constant [4 x i8] c"??=\00", align 1
@_ZN6hermes18BinaryOperatorInst22assignmentOpStringReprE = hidden local_unnamed_addr global [26 x ptr] [ptr @.str.30, ptr @.str.9, ptr @.str.9, ptr @.str.9, ptr @.str.9, ptr @.str.9, ptr @.str.9, ptr @.str.9, ptr @.str.9, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.9, ptr @.str.9], align 16
@.str.46 = private unnamed_addr constant [24 x i8] c"Invalid binary operator\00", align 1
@_ZZN4llvh7hashing6detail18get_execution_seedEvE4seed = linkonce_odr hidden local_unnamed_addr global i64 0, comdat, align 8
@_ZGVZN4llvh7hashing6detail18get_execution_seedEvE4seed = linkonce_odr hidden global i64 0, comdat, align 8
@_ZN4llvh7hashing6detail19fixed_seed_overrideE = external local_unnamed_addr global i64, align 8
@switch.table._ZN6hermes18BinaryOperatorInst21tryGetReverseOperatorENS0_6OpKindE = private unnamed_addr constant [19 x i8] [i8 1, i8 2, i8 3, i8 4, i8 7, i8 8, i8 5, i8 6, i8 undef, i8 undef, i8 undef, i8 12, i8 undef, i8 14, i8 undef, i8 undef, i8 17, i8 18, i8 19], align 4
@switch.table._ZN6hermes18BinaryOperatorInst21tryGetReverseOperatorENS0_6OpKindE.90 = private unnamed_addr constant [19 x i64] [i64 4294967296, i64 4294967296, i64 4294967296, i64 4294967296, i64 4294967296, i64 4294967296, i64 4294967296, i64 4294967296, i64 0, i64 0, i64 0, i64 4294967296, i64 0, i64 4294967296, i64 0, i64 0, i64 4294967296, i64 4294967296, i64 4294967296], align 8

@_ZN6hermes10SwitchInstC1EPNS_5ValueEPNS_10BasicBlockERKN4llvh11SmallVectorIPNS_7LiteralELj8EEERKNS6_IS4_Lj8EEE = hidden unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr), ptr @_ZN6hermes10SwitchInstC2EPNS_5ValueEPNS_10BasicBlockERKN4llvh11SmallVectorIPNS_7LiteralELj8EEERKNS6_IS4_Lj8EEE
@_ZN6hermes7PhiInstC1ERKN4llvh11SmallVectorIPNS_5ValueELj8EEERKNS2_IPNS_10BasicBlockELj8EEE = hidden unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN6hermes7PhiInstC2ERKN4llvh11SmallVectorIPNS_5ValueELj8EEERKNS2_IPNS_10BasicBlockELj8EEE
@_ZN6hermes13GetPNamesInstC1EPNS_10BasicBlockEPNS_5ValueES4_S4_S4_S2_S2_ = hidden unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr), ptr @_ZN6hermes13GetPNamesInstC2EPNS_10BasicBlockEPNS_5ValueES4_S4_S4_S2_S2_
@_ZN6hermes16GetNextPNameInstC1EPNS_10BasicBlockEPNS_5ValueES4_S4_S4_S4_S2_S2_ = hidden unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr), ptr @_ZN6hermes16GetNextPNameInstC2EPNS_10BasicBlockEPNS_5ValueES4_S4_S4_S4_S2_S2_
@_ZN6hermes13SwitchImmInstC1EPNS_5ValueEPNS_10BasicBlockEPNS_13LiteralNumberES6_RKN4llvh11SmallVectorIS6_Lj8EEERKNS8_IS4_Lj8EEE = hidden unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr, ptr, ptr), ptr @_ZN6hermes13SwitchImmInstC2EPNS_5ValueEPNS_10BasicBlockEPNS_13LiteralNumberES6_RKN4llvh11SmallVectorIS6_Lj8EEERKNS8_IS4_Lj8EEE

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef range(i32 0, -2147483647) i32 @_ZNK6hermes14TerminatorInst16getNumSuccessorsEv(ptr noundef nonnull align 8 dereferenceable(132) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !tbaa !7
  switch i8 %i.b, label %.fold.split121 [
    i8 87, label %bb.c
    i8 78, label %.fold.split
    i8 79, label %.fold.split
    i8 80, label %bb.b
    i8 81, label %.fold.split122
    i8 82, label %.fold.split122
    i8 83, label %.fold.split122
    i8 84, label %.fold.split122
    i8 85, label %.fold.split122
    i8 86, label %.fold.split122
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef i32 @_ZNK6hermes11Instruction14getNumOperandsEv(ptr noundef nonnull align 8 dereferenceable(132) %0) #15
  %i.d = add i32 %i.c, -2
  %i.e = lshr i32 %i.d, 1
  %i.f = add nuw i32 %i.e, 1
  br label %.fold.split121

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef i32 @_ZNK6hermes11Instruction14getNumOperandsEv(ptr noundef nonnull align 8 dereferenceable(132) %0) #15
  %i.h = add i32 %i.g, -4
  %i.i = lshr i32 %i.h, 1
  %i.j = add nuw i32 %i.i, 1
  br label %.fold.split121

.fold.split:                                      ; preds = %bb.a, %bb.a
  br label %.fold.split121

.fold.split122:                                   ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  br label %.fold.split121

.fold.split121:                                   ; preds = %bb.a, %.fold.split122, %.fold.split, %bb.c, %bb.b
  %.12 = phi i32 [ 1, %bb.a ], [ %i.j, %bb.c ], [ %i.f, %bb.b ], [ 2, %.fold.split122 ], [ 0, %.fold.split ]
  ret i32 %.12
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZNK6hermes14TerminatorInst12getSuccessorEj(ptr noundef nonnull align 8 dereferenceable(132) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !tbaa !7     ; 5 uses
  %i.c = icmp eq i8 %i.b, 77
  br i1 %i.c, label %bb.b, label %.thread112

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %0, i32 noundef 0) #15 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  %i.f = getelementptr inbounds i8, ptr %i.d, i64 -16
  %i.g = select i1 %i.e, ptr null, ptr %i.f
  br label %bb.n

.thread112:                                       ; preds = %bb.a
  %i.h = icmp ne i8 %i.b, 78
  tail call void @llvm.assume(i1 %i.h)
  %i.i = icmp ne i8 %i.b, 79
  tail call void @llvm.assume(i1 %i.i)
  switch i8 %i.b, label %bb.m [
    i8 80, label %bb.c
    i8 81, label %bb.f
    i8 82, label %bb.g
    i8 83, label %bb.h
    i8 84, label %bb.i
    i8 85, label %bb.j
    i8 86, label %bb.k
    i8 87, label %bb.l
  ]

bb.c:                                             ; preds = %.thread112
  %i.j = icmp eq i32 %1, 0
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = shl i32 %1, 1                            ; 2 uses
  %i.l = tail call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %0, i32 noundef %i.k) #15 ; 0 uses
  %i.m = or disjoint i32 %i.k, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sink.i = phi i32 [ %i.m, %bb.d ], [ 1, %bb.c ]
  %i.n = tail call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %0, i32 noundef %.sink.i) #15 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  %i.p = getelementptr inbounds i8, ptr %i.n, i64 -16
  %i.q = select i1 %i.o, ptr null, ptr %i.p
  br label %bb.n

bb.f:                                             ; preds = %.thread112
  %i.r = icmp eq i32 %1, 0
  %spec.select.i96 = select i1 %i.r, i32 1, i32 2
  %i.s = tail call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %0, i32 noundef %spec.select.i96) #15 ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  %i.u = getelementptr inbounds i8, ptr %i.s, i64 -16
  %i.v = select i1 %i.t, ptr null, ptr %i.u
  br label %bb.n

bb.g:                                             ; preds = %.thread112
  %i.w = icmp eq i32 %1, 0
  %spec.select.i98 = select i1 %i.w, i32 4, i32 5
  %i.x = tail call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %0, i32 noundef %spec.select.i98) #15 ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  %i.z = getelementptr inbounds i8, ptr %i.x, i64 -16
  %i.aa = select i1 %i.y, ptr null, ptr %i.z
  br label %bb.n

bb.h:                                             ; preds = %.thread112
  %i.ab = icmp eq i32 %1, 0
  %spec.select.i100 = select i1 %i.ab, i32 5, i32 6
  %i.ac = tail call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %0, i32 noundef %spec.select.i100) #15 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, null
  %i.ae = getelementptr inbounds i8, ptr %i.ac, i64 -16
  %i.af = select i1 %i.ad, ptr null, ptr %i.ae
  br label %bb.n

bb.i:                                             ; preds = %.thread112
  %i.ag = icmp eq i32 %1, 0
  %spec.select.i102 = select i1 %i.ag, i32 3, i32 4
  %i.ah = tail call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %0, i32 noundef %spec.select.i102) #15 ; 2 uses
  %i.ai = icmp eq ptr %i.ah, null
  %i.aj = getelementptr inbounds i8, ptr %i.ah, i64 -16
  %i.ak = select i1 %i.ai, ptr null, ptr %i.aj
  br label %bb.n

bb.j:                                             ; preds = %.thread112
  %i.al = tail call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %0, i32 noundef %1) #15 ; 2 uses
  %i.am = icmp eq ptr %i.al, null
  %i.an = getelementptr inbounds i8, ptr %i.al, i64 -16
  %i.ao = select i1 %i.am, ptr null, ptr %i.an
  br label %bb.n

bb.k:                                             ; preds = %.thread112
  %i.ap = icmp eq i32 %1, 0
  %spec.select.i105 = select i1 %i.ap, i32 2, i32 3
  %i.aq = tail call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(136) %0, i32 noundef %spec.select.i105) #15 ; 2 uses
  %i.ar = icmp eq ptr %i.aq, null
  %i.as = getelementptr inbounds i8, ptr %i.aq, i64 -16
  %i.at = select i1 %i.ar, ptr null, ptr %i.as
  br label %bb.n

bb.l:                                             ; preds = %.thread112
  %i.au = tail call noundef ptr @_ZNK6hermes13SwitchImmInst12getSuccessorEj(ptr noundef nonnull align 8 dereferenceable(132) %0, i32 noundef %1)
  br label %bb.n

bb.m:                                             ; preds = %.thread112
  %.not = icmp eq i8 %i.b, 88
  tail call void @llvm.assume(i1 %.not)
  %i.av = tail call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %0, i32 noundef 1) #15 ; 2 uses
  %i.aw = icmp eq ptr %i.av, null
  %i.ax = getelementptr inbounds i8, ptr %i.av, i64 -16
  %i.ay = select i1 %i.aw, ptr null, ptr %i.ax
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.b, %bb.m
  %.12 = phi ptr [ %i.g, %bb.b ], [ %i.au, %bb.l ], [ %i.at, %bb.k ], [ %i.ao, %bb.j ], [ %i.ak, %bb.i ], [ %i.af, %bb.h ], [ %i.aa, %bb.g ], [ %i.v, %bb.f ], [ %i.q, %bb.e ], [ %i.ay, %bb.m ]
  ret ptr %.12
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZNK6hermes10SwitchInst12getSuccessorEj(ptr noundef nonnull align 8 dereferenceable(132) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
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
define hidden noundef ptr @_ZNK6hermes13SwitchImmInst12getSuccessorEj(ptr noundef nonnull align 8 dereferenceable(132) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
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
define hidden void @_ZN6hermes14TerminatorInst12setSuccessorEjPNS_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(132) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !tbaa !7     ; 4 uses
  %i.c = icmp eq i8 %i.b, 77
  %i.d = icmp ne i8 %i.b, 78
  %i.e = icmp ne i8 %i.b, 79
  br i1 %i.c, label %bb.b, label %.split

.split:                                           ; preds = %bb.a
  tail call void @llvm.assume(i1 %i.d)
  tail call void @llvm.assume(i1 %i.e)
  switch i8 %i.b, label %.loopexit [
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
  %i.f = icmp eq ptr %2, null
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  %spec.select.i92 = select i1 %i.f, ptr null, ptr %i.g
  tail call void @_ZN6hermes11Instruction10setOperandEPNS_5ValueEj(ptr noundef nonnull align 8 dereferenceable(132) %0, ptr noundef %spec.select.i92, i32 noundef %1) #15
  br label %.loopexit

bb.c:                                             ; preds = %.split
  %i.h = icmp eq ptr %2, null
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %spec.select.i96 = select i1 %i.h, ptr null, ptr %i.i
  %i.j = shl i32 %1, 1
  %i.k = or disjoint i32 %i.j, 1
  tail call void @_ZN6hermes11Instruction10setOperandEPNS_5ValueEj(ptr noundef nonnull align 8 dereferenceable(132) %0, ptr noundef %spec.select.i96, i32 noundef %i.k) #15
  br label %.loopexit

bb.d:                                             ; preds = %.split
  %i.l = icmp eq ptr %2, null
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16
  %spec.select.i98 = select i1 %i.l, ptr null, ptr %i.m
  %i.n = add i32 %1, 1
  tail call void @_ZN6hermes11Instruction10setOperandEPNS_5ValueEj(ptr noundef nonnull align 8 dereferenceable(132) %0, ptr noundef %spec.select.i98, i32 noundef %i.n) #15
  br label %.loopexit

bb.e:                                             ; preds = %.split
  %i.o = icmp eq i32 %1, 0
  %spec.select.i100 = select i1 %i.o, i32 4, i32 5
  %i.p = icmp eq ptr %2, null
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16
  %spec.select1.i = select i1 %i.p, ptr null, ptr %i.q
  tail call void @_ZN6hermes11Instruction10setOperandEPNS_5ValueEj(ptr noundef nonnull align 8 dereferenceable(132) %0, ptr noundef %spec.select1.i, i32 noundef %spec.select.i100) #15
  br label %.loopexit

bb.f:                                             ; preds = %.split
  %i.r = icmp eq i32 %1, 0
  %spec.select.i102 = select i1 %i.r, i32 5, i32 6
  %i.s = icmp eq ptr %2, null
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16
  %spec.select1.i103 = select i1 %i.s, ptr null, ptr %i.t
  tail call void @_ZN6hermes11Instruction10setOperandEPNS_5ValueEj(ptr noundef nonnull align 8 dereferenceable(132) %0, ptr noundef %spec.select1.i103, i32 noundef %spec.select.i102) #15
  br label %.loopexit

bb.g:                                             ; preds = %.split
  %i.u = icmp eq i32 %1, 0
  %spec.select.i105 = select i1 %i.u, i32 3, i32 4
  %i.v = icmp eq ptr %2, null
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16
  %spec.select1.i106 = select i1 %i.v, ptr null, ptr %i.w
  tail call void @_ZN6hermes11Instruction10setOperandEPNS_5ValueEj(ptr noundef nonnull align 8 dereferenceable(132) %0, ptr noundef %spec.select1.i106, i32 noundef %spec.select.i105) #15
  br label %.loopexit

bb.h:                                             ; preds = %.split
  %i.x = icmp eq ptr %2, null
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 16
  %spec.select.i108 = select i1 %i.x, ptr null, ptr %i.y
  tail call void @_ZN6hermes11Instruction10setOperandEPNS_5ValueEj(ptr noundef nonnull align 8 dereferenceable(132) %0, ptr noundef %spec.select.i108, i32 noundef %1) #15
  br label %.loopexit

bb.i:                                             ; preds = %.split
  %i.z = icmp eq ptr %2, null
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 16
  %spec.select.i110 = select i1 %i.z, ptr null, ptr %i.aa
  %i.ab = add i32 %1, 2
  tail call void @_ZN6hermes11Instruction10setOperandEPNS_5ValueEj(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %spec.select.i110, i32 noundef %i.ab) #15
  br label %.loopexit

bb.j:                                             ; preds = %.split
  %i.ac = icmp eq i32 %1, 0
  %i.ad = icmp eq ptr %2, null
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 16
  %spec.select.i112 = select i1 %i.ad, ptr null, ptr %i.ae
  %i.af = shl i32 %1, 1
  %i.ag = add i32 %i.af, 3
  %.sink.i = select i1 %i.ac, i32 1, i32 %i.ag
  tail call void @_ZN6hermes11Instruction10setOperandEPNS_5ValueEj(ptr noundef nonnull align 8 dereferenceable(132) %0, ptr noundef %spec.select.i112, i32 noundef %.sink.i) #15
  br label %.loopexit

.loopexit:                                        ; preds = %.split, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes10SwitchInst12setSuccessorEjPNS_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(132) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
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
define hidden void @_ZN6hermes13SwitchImmInst12setSuccessorEjPNS_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(132) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
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
define hidden noundef zeroext i1 @_ZN6hermes16isSideEffectFreeENS_4TypeE(i32 %0) local_unnamed_addr #2 {
bb.a:
  %.sroa.0.0.extract.trunc = trunc i32 %0 to i16  ; 2 uses
  %.not.i = icmp ne i16 %.sroa.0.0.extract.trunc, 0
  %i.a = and i16 %.sroa.0.0.extract.trunc, -127
  %.not1.i = icmp eq i16 %i.a, 0
  %i.b = and i1 %.not.i, %.not1.i
  ret i1 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
end_hunk_0
