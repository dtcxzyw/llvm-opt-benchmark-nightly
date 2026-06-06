inline.NumInlined: 908
inline.NumDeleted: 597
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
end_hunk_0
begin_hunk_1_@_ZN6hermes18BinaryOperatorInst23parseAssignmentOperatorEN4llvh9StringRefE:bb.a
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN6hermes18BinaryOperatorInst22assignmentOpStringReprE, i64 80), align 16, !tbaa !19 ; 2 uses
  %.not.i.us.i.10 = icmp eq ptr %i.v, null
  br i1 %.not.i.us.i.10, label %_ZL18parseOperator_implN4llvh9StringRefEPPKc.exit, label %_ZN4llvh9StringRefC2EPKc.exit.us.i.10

_ZN4llvh9StringRefC2EPKc.exit.us.i.10:            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.thread.us.i.9
  %char0.i.10 = load i8, ptr %i.v, align 1
  %i.w = icmp eq i8 %char0.i.10, 0
  br i1 %i.w, label %_ZL18parseOperator_implN4llvh9StringRefEPPKc.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread.us.i.10

_ZNK4llvh9StringRef6equalsES0_.exit.thread.us.i.10: ; preds = %_ZN4llvh9StringRefC2EPKc.exit.us.i.10
  %i.x = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN6hermes18BinaryOperatorInst22assignmentOpStringReprE, i64 88), align 8, !tbaa !19 ; 2 uses
  %.not.i.us.i.11 = icmp eq ptr %i.x, null
  br i1 %.not.i.us.i.11, label %_ZL18parseOperator_implN4llvh9StringRefEPPKc.exit, label %_ZN4llvh9StringRefC2EPKc.exit.us.i.11

_ZN4llvh9StringRefC2EPKc.exit.us.i.11:            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.thread.us.i.10
  %char0.i.11 = load i8, ptr %i.x, align 1
  %i.y = icmp eq i8 %char0.i.11, 0
  br i1 %i.y, label %_ZL18parseOperator_implN4llvh9StringRefEPPKc.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread.us.i.11

_ZNK4llvh9StringRef6equalsES0_.exit.thread.us.i.11: ; preds = %_ZN4llvh9StringRefC2EPKc.exit.us.i.11
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN6hermes18BinaryOperatorInst22assignmentOpStringReprE, i64 96), align 16, !tbaa !19 ; 2 uses
  %.not.i.us.i.12 = icmp eq ptr %i.z, null
  br i1 %.not.i.us.i.12, label %_ZL18parseOperator_implN4llvh9StringRefEPPKc.exit, label %_ZN4llvh9StringRefC2EPKc.exit.us.i.12

_ZN4llvh9StringRefC2EPKc.exit.us.i.12:            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.thread.us.i.11
  %char0.i.12 = load i8, ptr %i.z, align 1
  %i.aa = icmp eq i8 %char0.i.12, 0
  br i1 %i.aa, label %_ZL18parseOperator_implN4llvh9StringRefEPPKc.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread.us.i.12

_ZNK4llvh9StringRef6equalsES0_.exit.thread.us.i.12: ; preds = %_ZN4llvh9StringRefC2EPKc.exit.us.i.12
  %i.ab = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN6hermes18BinaryOperatorInst22assignmentOpStringReprE, i64 104), align 8, !tbaa !19 ; 2 uses
  %.not.i.us.i.13 = icmp eq ptr %i.ab, null
  br i1 %.not.i.us.i.13, label %_ZL18parseOperator_implN4llvh9StringRefEPPKc.exit, label %_ZN4llvh9StringRefC2EPKc.exit.us.i.13

_ZN4llvh9StringRefC2EPKc.exit.us.i.13:            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.thread.us.i.12
  %char0.i.13 = load i8, ptr %i.ab, align 1
  %i.ac = icmp eq i8 %char0.i.13, 0
  br i1 %i.ac, label %_ZL18parseOperator_implN4llvh9StringRefEPPKc.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread.us.i.13

_ZNK4llvh9StringRef6equalsES0_.exit.thread.us.i.13: ; preds = %_ZN4llvh9StringRefC2EPKc.exit.us.i.13
  %i.ad = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN6hermes18BinaryOperatorInst22assignmentOpStringReprE, i64 112), align 16, !tbaa !19 ; 2 uses
  %.not.i.us.i.14 = icmp eq ptr %i.ad, null
  br i1 %.not.i.us.i.14, label %_ZL18parseOperator_implN4llvh9StringRefEPPKc.exit, label %_ZN4llvh9StringRefC2EPKc.exit.us.i.14

_ZN4llvh9StringRefC2EPKc.exit.us.i.14:            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.thread.us.i.13
  %char0.i.14 = load i8, ptr %i.ad, align 1
  %i.ae = icmp eq i8 %char0.i.14, 0
  br i1 %i.ae, label %_ZL18parseOperator_implN4llvh9StringRefEPPKc.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread.us.i.14

_ZNK4llvh9StringRef6equalsES0_.exit.thread.us.i.14: ; preds = %_ZN4llvh9StringRefC2EPKc.exit.us.i.14
  %i.af = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN6hermes18BinaryOperatorInst22assignmentOpStringReprE, i64 120), align 8, !tbaa !19 ; 2 uses
  %.not.i.us.i.15 = icmp eq ptr %i.af, null
  br i1 %.not.i.us.i.15, label %_ZL18parseOperator_implN4llvh9StringRefEPPKc.exit, label %_ZN4llvh9StringRefC2EPKc.exit.us.i.15

_ZN4llvh9StringRefC2EPKc.exit.us.i.15:            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.thread.us.i.14
  %char0.i.15 = load i8, ptr %i.af, align 1
  %i.ag = icmp eq i8 %char0.i.15, 0
  br i1 %i.ag, label %_ZL18parseOperator_implN4llvh9StringRefEPPKc.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread.us.i.15

_ZNK4llvh9StringRef6equalsES0_.exit.thread.us.i.15: ; preds = %_ZN4llvh9StringRefC2EPKc.exit.us.i.15
  %i.ah = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN6hermes18BinaryOperatorInst22assignmentOpStringReprE, i64 128), align 16, !tbaa !19 ; 2 uses
  %.not.i.us.i.16 = icmp eq ptr %i.ah, null
  br i1 %.not.i.us.i.16, label %_ZL18parseOperator_implN4llvh9StringRefEPPKc.exit, label %_ZN4llvh9StringRefC2EPKc.exit.us.i.16

_ZN4llvh9StringRefC2EPKc.exit.us.i.16:            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.thread.us.i.15
  %char0.i.16 = load i8, ptr %i.ah, align 1
  %i.ai = icmp eq i8 %char0.i.16, 0
  br i1 %i.ai, label %_ZL18parseOperator_implN4llvh9StringRefEPPKc.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread.us.i.16

_ZNK4llvh9StringRef6equalsES0_.exit.thread.us.i.16: ; preds = %_ZN4llvh9StringRefC2EPKc.exit.us.i.16
  %i.aj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN6hermes18BinaryOperatorInst22assignmentOpStringReprE, i64 136), align 8, !tbaa !19 ; 2 uses
  %.not.i.us.i.17 = icmp eq ptr %i.aj, null
  br i1 %.not.i.us.i.17, label %_ZL18parseOperator_implN4llvh9StringRefEPPKc.exit, label %_ZN4llvh9StringRefC2EPKc.exit.us.i.17

_ZN4llvh9StringRefC2EPKc.exit.us.i.17:            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.thread.us.i.16
  %char0.i.17 = load i8, ptr %i.aj, align 1
  %i.ak = icmp eq i8 %char0.i.17, 0
  br i1 %i.ak, label %_ZL18parseOperator_implN4llvh9StringRefEPPKc.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread.us.i.17

_ZNK4llvh9StringRef6equalsES0_.exit.thread.us.i.17: ; preds = %_ZN4llvh9StringRefC2EPKc.exit.us.i.17
  %i.al = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN6hermes18BinaryOperatorInst22assignmentOpStringReprE, i64 144), align 16, !tbaa !19 ; 2 uses
  %.not.i.us.i.18 = icmp eq ptr %i.al, null
  br i1 %.not.i.us.i.18, label %_ZL18parseOperator_implN4llvh9StringRefEPPKc.exit, label %_ZN4llvh9StringRefC2EPKc.exit.us.i.18

_ZN4llvh9StringRefC2EPKc.exit.us.i.18:            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.thread.us.i.17
  %char0.i.18 = load i8, ptr %i.al, align 1
  %i.am = icmp eq i8 %char0.i.18, 0
  br i1 %i.am, label %_ZL18parseOperator_implN4llvh9StringRefEPPKc.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread.us.i.18

_ZNK4llvh9StringRef6equalsES0_.exit.thread.us.i.18: ; preds = %_ZN4llvh9StringRefC2EPKc.exit.us.i.18
  %i.an = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN6hermes18BinaryOperatorInst22assignmentOpStringReprE, i64 152), align 8, !tbaa !19 ; 2 uses
  %.not.i.us.i.19 = icmp eq ptr %i.an, null
  br i1 %.not.i.us.i.19, label %_ZL18parseOperator_implN4llvh9StringRefEPPKc.exit, label %_ZN4llvh9StringRefC2EPKc.exit.us.i.19

_ZN4llvh9StringRefC2EPKc.exit.us.i.19:            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.thread.us.i.18
  %char0.i.19 = load i8, ptr %i.an, align 1
  %i.ao = icmp eq i8 %char0.i.19, 0
  br i1 %i.ao, label %_ZL18parseOperator_implN4llvh9StringRefEPPKc.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread.us.i.19

_ZNK4llvh9StringRef6equalsES0_.exit.thread.us.i.19: ; preds = %_ZN4llvh9StringRefC2EPKc.exit.us.i.19
  %i.ap = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN6hermes18BinaryOperatorInst22assignmentOpStringReprE, i64 160), align 16, !tbaa !19 ; 2 uses
  %.not.i.us.i.20 = icmp eq ptr %i.ap, null
  br i1 %.not.i.us.i.20, label %_ZL18parseOperator_implN4llvh9StringRefEPPKc.exit, label %_ZN4llvh9StringRefC2EPKc.exit.us.i.20

_ZN4llvh9StringRefC2EPKc.exit.us.i.20:            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.thread.us.i.19
  %char0.i.20 = load i8, ptr %i.ap, align 1
  %i.aq = icmp eq i8 %char0.i.20, 0
  br i1 %i.aq, label %_ZL18parseOperator_implN4llvh9StringRefEPPKc.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread.us.i.20

_ZNK4llvh9StringRef6equalsES0_.exit.thread.us.i.20: ; preds = %_ZN4llvh9StringRefC2EPKc.exit.us.i.20
  %i.ar = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN6hermes18BinaryOperatorInst22assignmentOpStringReprE, i64 168), align 8, !tbaa !19 ; 2 uses
  %.not.i.us.i.21 = icmp eq ptr %i.ar, null
  br i1 %.not.i.us.i.21, label %_ZL18parseOperator_implN4llvh9StringRefEPPKc.exit, label %_ZN4llvh9StringRefC2EPKc.exit.us.i.21

_ZN4llvh9StringRefC2EPKc.exit.us.i.21:            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.thread.us.i.20
  %char0.i.21 = load i8, ptr %i.ar, align 1
  %i.as = icmp eq i8 %char0.i.21, 0
  br i1 %i.as, label %_ZL18parseOperator_implN4llvh9StringRefEPPKc.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread.us.i.21

_ZNK4llvh9StringRef6equalsES0_.exit.thread.us.i.21: ; preds = %_ZN4llvh9StringRefC2EPKc.exit.us.i.21
  %i.at = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN6hermes18BinaryOperatorInst22assignmentOpStringReprE, i64 176), align 16, !tbaa !19 ; 2 uses
  %.not.i.us.i.22 = icmp eq ptr %i.at, null
  br i1 %.not.i.us.i.22, label %_ZL18parseOperator_implN4llvh9StringRefEPPKc.exit, label %_ZN4llvh9StringRefC2EPKc.exit.us.i.22

_ZN4llvh9StringRefC2EPKc.exit.us.i.22:            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.thread.us.i.21
  %char0.i.22 = load i8, ptr %i.at, align 1
  %i.au = icmp eq i8 %char0.i.22, 0
  br i1 %i.au, label %_ZL18parseOperator_implN4llvh9StringRefEPPKc.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread.us.i.22

_ZNK4llvh9StringRef6equalsES0_.exit.thread.us.i.22: ; preds = %_ZN4llvh9StringRefC2EPKc.exit.us.i.22
  %i.av = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN6hermes18BinaryOperatorInst22assignmentOpStringReprE, i64 184), align 8, !tbaa !19 ; 2 uses
  %.not.i.us.i.23 = icmp eq ptr %i.av, null
  br i1 %.not.i.us.i.23, label %_ZL18parseOperator_implN4llvh9StringRefEPPKc.exit, label %_ZN4llvh9StringRefC2EPKc.exit.us.i.23

_ZN4llvh9StringRefC2EPKc.exit.us.i.23:            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.thread.us.i.22
  %char0.i.23 = load i8, ptr %i.av, align 1
  %i.aw = icmp eq i8 %char0.i.23, 0
  br i1 %i.aw, label %_ZL18parseOperator_implN4llvh9StringRefEPPKc.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread.us.i.23

_ZNK4llvh9StringRef6equalsES0_.exit.thread.us.i.23: ; preds = %_ZN4llvh9StringRefC2EPKc.exit.us.i.23
  %i.ax = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN6hermes18BinaryOperatorInst22assignmentOpStringReprE, i64 192), align 16, !tbaa !19 ; 2 uses
  %.not.i.us.i.24 = icmp eq ptr %i.ax, null
  br i1 %.not.i.us.i.24, label %_ZL18parseOperator_implN4llvh9StringRefEPPKc.exit, label %_ZN4llvh9StringRefC2EPKc.exit.us.i.24

_ZN4llvh9StringRefC2EPKc.exit.us.i.24:            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.thread.us.i.23
  %char0.i.24 = load i8, ptr %i.ax, align 1
  %i.ay = icmp eq i8 %char0.i.24, 0
  br i1 %i.ay, label %_ZL18parseOperator_implN4llvh9StringRefEPPKc.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread.us.i.24

_ZNK4llvh9StringRef6equalsES0_.exit.thread.us.i.24: ; preds = %_ZN4llvh9StringRefC2EPKc.exit.us.i.24
  %i.az = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN6hermes18BinaryOperatorInst22assignmentOpStringReprE, i64 200), align 8, !tbaa !19 ; 2 uses
  %.not.i.us.i.25 = icmp eq ptr %i.az, null
  br i1 %.not.i.us.i.25, label %_ZL18parseOperator_implN4llvh9StringRefEPPKc.exit, label %_ZN4llvh9StringRefC2EPKc.exit.us.i.25

_ZN4llvh9StringRefC2EPKc.exit.us.i.25:            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.thread.us.i.24
  %char0.i.25 = load i8, ptr %i.az, align 1
  %i.ba = icmp eq i8 %char0.i.25, 0
  %spec.select = select i1 %i.ba, i32 25, i32 26
  br label %_ZL18parseOperator_implN4llvh9StringRefEPPKc.exit

.split.i:                                         ; preds = %bb.a, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.i ], [ 0, %bb.a ] ; 3 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr @_ZN6hermes18BinaryOperatorInst22assignmentOpStringReprE, i64 %indvars.iv.i
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !19 ; 3 uses
  %.not.i.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread.i, label %_ZN4llvh9StringRefC2EPKc.exit.i

_ZN4llvh9StringRefC2EPKc.exit.i:                  ; preds = %.split.i
  %i.bd = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bc) #16
  %i.be = icmp eq i64 %.fr14.i, %i.bd
  br i1 %i.be, label %_ZNK4llvh9StringRef6equalsES0_.exit.i, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread.i

_ZNK4llvh9StringRef6equalsES0_.exit.i:            ; preds = %_ZN4llvh9StringRefC2EPKc.exit.i
  %bcmp.i = tail call i32 @bcmp(ptr readonly %0, ptr nonnull %i.bc, i64 %.fr14.i)
  %i.bf = icmp eq i32 %bcmp.i, 0
  br i1 %i.bf, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread10.loopexit23.split.loop.exit.i, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread.i

_ZNK4llvh9StringRef6equalsES0_.exit.thread.i:     ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.i, %_ZN4llvh9StringRefC2EPKc.exit.i, %.split.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 26
  br i1 %exitcond.not.i, label %_ZL18parseOperator_implN4llvh9StringRefEPPKc.exit, label %.split.i, !llvm.loop !41

_ZNK4llvh9StringRef6equalsES0_.exit.thread10.loopexit23.split.loop.exit.i: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.i
  %i.bg = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %_ZL18parseOperator_implN4llvh9StringRefEPPKc.exit

_ZL18parseOperator_implN4llvh9StringRefEPPKc.exit: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.thread.i, %_ZN4llvh9StringRefC2EPKc.exit.us.i.25, %_ZN4llvh9StringRefC2EPKc.exit.us.i, %_ZN4llvh9StringRefC2EPKc.exit.us.i.1, %_ZN4llvh9StringRefC2EPKc.exit.us.i.2, %_ZN4llvh9StringRefC2EPKc.exit.us.i.3, %_ZN4llvh9StringRefC2EPKc.exit.us.i.4, %_ZN4llvh9StringRefC2EPKc.exit.us.i.5, %_ZN4llvh9StringRefC2EPKc.exit.us.i.6, %_ZN4llvh9StringRefC2EPKc.exit.us.i.7, %_ZN4llvh9StringRefC2EPKc.exit.us.i.8, %_ZN4llvh9StringRefC2EPKc.exit.us.i.9, %_ZN4llvh9StringRefC2EPKc.exit.us.i.10, %_ZN4llvh9StringRefC2EPKc.exit.us.i.11, %_ZN4llvh9StringRefC2EPKc.exit.us.i.12, %_ZN4llvh9StringRefC2EPKc.exit.us.i.13, %_ZN4llvh9StringRefC2EPKc.exit.us.i.14, %_ZN4llvh9StringRefC2EPKc.exit.us.i.15, %_ZN4llvh9StringRefC2EPKc.exit.us.i.16, %_ZN4llvh9StringRefC2EPKc.exit.us.i.17, %_ZN4llvh9StringRefC2EPKc.exit.us.i.18, %_ZN4llvh9StringRefC2EPKc.exit.us.i.19, %_ZN4llvh9StringRefC2EPKc.exit.us.i.20, %_ZN4llvh9StringRefC2EPKc.exit.us.i.21, %_ZN4llvh9StringRefC2EPKc.exit.us.i.22, %_ZN4llvh9StringRefC2EPKc.exit.us.i.23, %_ZN4llvh9StringRefC2EPKc.exit.us.i.24, %.split.us.i.preheader, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.us.i, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.us.i.1, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.us.i.2, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.us.i.3, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.us.i.4, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.us.i.5, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.us.i.6, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.us.i.7, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.us.i.8, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.us.i.9, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.us.i.10, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.us.i.11, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.us.i.12, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.us.i.13, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.us.i.14, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.us.i.15, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.us.i.16, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.us.i.17, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.us.i.18, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.us.i.19, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.us.i.20, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.us.i.21, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.us.i.22, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.us.i.23, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.us.i.24, %_ZNK4llvh9StringRef6equalsES0_.exit.thread10.loopexit23.split.loop.exit.i
  %.us-phi.i = phi i32 [ 24, %_ZN4llvh9StringRefC2EPKc.exit.us.i.24 ], [ 25, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.us.i.24 ], [ %spec.select, %_ZN4llvh9StringRefC2EPKc.exit.us.i.25 ], [ %i.bg, %_ZNK4llvh9StringRef6equalsES0_.exit.thread10.loopexit23.split.loop.exit.i ], [ 0, %.split.us.i.preheader ], [ 1, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.us.i ], [ 2, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.us.i.1 ], [ 3, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.us.i.2 ], [ 4, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.us.i.3 ], [ 5, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.us.i.4 ], [ 6, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.us.i.5 ], [ 7, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.us.i.6 ], [ 8, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.us.i.7 ], [ 9, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.us.i.8 ], [ 10, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.us.i.9 ], [ 11, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.us.i.10 ], [ 12, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.us.i.11 ], [ 13, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.us.i.12 ], [ 14, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.us.i.13 ], [ 15, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.us.i.14 ], [ 16, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.us.i.15 ], [ 17, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.us.i.16 ], [ 18, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.us.i.17 ], [ 19, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.us.i.18 ], [ 20, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.us.i.19 ], [ 21, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.us.i.20 ], [ 22, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.us.i.21 ], [ 23, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.us.i.22 ], [ 24, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.us.i.23 ], [ 0, %_ZN4llvh9StringRefC2EPKc.exit.us.i ], [ 1, %_ZN4llvh9StringRefC2EPKc.exit.us.i.1 ], [ 2, %_ZN4llvh9StringRefC2EPKc.exit.us.i.2 ], [ 3, %_ZN4llvh9StringRefC2EPKc.exit.us.i.3 ], [ 4, %_ZN4llvh9StringRefC2EPKc.exit.us.i.4 ], [ 5, %_ZN4llvh9StringRefC2EPKc.exit.us.i.5 ], [ 6, %_ZN4llvh9StringRefC2EPKc.exit.us.i.6 ], [ 7, %_ZN4llvh9StringRefC2EPKc.exit.us.i.7 ], [ 8, %_ZN4llvh9StringRefC2EPKc.exit.us.i.8 ], [ 9, %_ZN4llvh9StringRefC2EPKc.exit.us.i.9 ], [ 10, %_ZN4llvh9StringRefC2EPKc.exit.us.i.10 ], [ 11, %_ZN4llvh9StringRefC2EPKc.exit.us.i.11 ], [ 12, %_ZN4llvh9StringRefC2EPKc.exit.us.i.12 ], [ 13, %_ZN4llvh9StringRefC2EPKc.exit.us.i.13 ], [ 14, %_ZN4llvh9StringRefC2EPKc.exit.us.i.14 ], [ 15, %_ZN4llvh9StringRefC2EPKc.exit.us.i.15 ], [ 16, %_ZN4llvh9StringRefC2EPKc.exit.us.i.16 ], [ 17, %_ZN4llvh9StringRefC2EPKc.exit.us.i.17 ], [ 18, %_ZN4llvh9StringRefC2EPKc.exit.us.i.18 ], [ 19, %_ZN4llvh9StringRefC2EPKc.exit.us.i.19 ], [ 20, %_ZN4llvh9StringRefC2EPKc.exit.us.i.20 ], [ 21, %_ZN4llvh9StringRefC2EPKc.exit.us.i.21 ], [ 22, %_ZN4llvh9StringRefC2EPKc.exit.us.i.22 ], [ 23, %_ZN4llvh9StringRefC2EPKc.exit.us.i.23 ], [ 26, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.i ]
  ret i32 %.us-phi.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden range(i64 0, 8589934592) i64 @_ZN6hermes18BinaryOperatorInst21tryGetReverseOperatorENS0_6OpKindE(i32 noundef %0) local_unnamed_addr #2 align 2 {
bb.a:
  %switch.tableidx = add i32 %0, -1               ; 3 uses
  %i.a = icmp ult i32 %switch.tableidx, 19
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN6hermes18BinaryOperatorInst21tryGetReverseOperatorENS0_6OpKindE, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %i.c = zext nneg i32 %switch.tableidx to i64
  %switch.gep5 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN6hermes18BinaryOperatorInst21tryGetReverseOperatorENS0_6OpKindE.90, i64 %i.c
  %switch.load6 = load i64, ptr %switch.gep5, align 8
  %i.d = zext i8 %switch.load to i64
  %i.e = or disjoint i64 %switch.load6, %i.d
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.sroa.0.0.insert.insert = phi i64 [ %i.e, %switch.lookup ], [ 0, %bb.a ]
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef range(i32 0, 4) i32 @_ZN6hermes18BinaryOperatorInst19getBinarySideEffectENS_4TypeES1_NS0_6OpKindE(i32 %0, i32 %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %.sroa.035.0.extract.trunc = trunc i32 %0 to i16 ; 10 uses
  %.sroa.0.0.extract.trunc = trunc i32 %1 to i16  ; 10 uses
  switch i32 %2, label %bb.q [
    i32 24, label %bb.s
    i32 25, label %bb.s
    i32 4, label %bb.b
    i32 3, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.c
    i32 5, label %bb.c
    i32 6, label %bb.c
    i32 7, label %bb.c
    i32 8, label %bb.c
    i32 11, label %bb.e
    i32 15, label %bb.e
    i32 16, label %bb.e
    i32 20, label %bb.e
    i32 12, label %bb.i
    i32 9, label %bb.l
    i32 10, label %bb.l
    i32 13, label %bb.l
    i32 14, label %bb.l
    i32 17, label %bb.l
    i32 18, label %bb.l
    i32 19, label %bb.l
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  br label %bb.s

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %.not.i = icmp ne i16 %.sroa.035.0.extract.trunc, 0
  %i.a = and i16 %.sroa.035.0.extract.trunc, -127
  %.not1.i = icmp eq i16 %i.a, 0
  %i.b = and i1 %.not.i, %.not1.i
  br i1 %i.b, label %bb.d, label %bb.r

bb.d:                                             ; preds = %bb.c
  %.not.i3 = icmp ne i16 %.sroa.0.0.extract.trunc, 0
  %i.c = and i16 %.sroa.0.0.extract.trunc, -127
  %.not1.i4 = icmp eq i16 %i.c, 0
  %i.d = and i1 %.not.i3, %.not1.i4
  br i1 %i.d, label %bb.s, label %bb.r

bb.e:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  %.not.i5 = icmp ne i16 %.sroa.035.0.extract.trunc, 0
  %i.e = and i16 %.sroa.035.0.extract.trunc, -127
  %.not1.i6 = icmp eq i16 %i.e, 0
  %i.f = and i1 %.not.i5, %.not1.i6
  br i1 %i.f, label %bb.f, label %bb.r

bb.f:                                             ; preds = %bb.e
  %.not.i7 = icmp ne i16 %.sroa.0.0.extract.trunc, 0
  %i.g = and i16 %.sroa.0.0.extract.trunc, -127
  %.not1.i8 = icmp eq i16 %i.g, 0
  %i.h = and i1 %.not.i7, %.not1.i8
  br i1 %i.h, label %bb.g, label %bb.r

bb.g:                                             ; preds = %bb.f
  %i.i = and i32 %0, 64
  %.not.i.i.i.not = icmp eq i32 %i.i, 0
  br i1 %.not.i.i.i.not, label %bb.h, label %bb.s

bb.h:                                             ; preds = %bb.g
  %i.j = and i32 %1, 64
  %.not.i.i.i10.not = icmp eq i32 %i.j, 0
  %spec.select = select i1 %.not.i.i.i10.not, i32 0, i32 3
  br label %bb.s

bb.i:                                             ; preds = %bb.a
  %.not.i11 = icmp ne i16 %.sroa.035.0.extract.trunc, 0
  %i.k = and i16 %.sroa.035.0.extract.trunc, -127
  %.not1.i12 = icmp eq i16 %i.k, 0
  %i.l = and i1 %.not.i11, %.not1.i12
  br i1 %i.l, label %bb.j, label %bb.r

bb.j:                                             ; preds = %bb.i
  %.not.i13 = icmp ne i16 %.sroa.0.0.extract.trunc, 0
  %i.m = and i16 %.sroa.0.0.extract.trunc, -127
  %.not1.i14 = icmp eq i16 %i.m, 0
  %i.n = and i1 %.not.i13, %.not1.i14
  br i1 %i.n, label %bb.k, label %bb.r

bb.k:                                             ; preds = %bb.j
  %i.o = icmp eq i16 %.sroa.035.0.extract.trunc, 16
  %i.p = icmp eq i16 %.sroa.0.0.extract.trunc, 16
  %or.cond = select i1 %i.o, i1 true, i1 %i.p
  br i1 %or.cond, label %bb.s, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %.not.i15 = icmp ne i16 %.sroa.035.0.extract.trunc, 0
  %i.q = and i16 %.sroa.035.0.extract.trunc, -127
  %.not1.i16 = icmp eq i16 %i.q, 0
  %i.r = and i1 %.not.i15, %.not1.i16
  br i1 %i.r, label %bb.m, label %bb.r

bb.m:                                             ; preds = %bb.l
  %.not.i17 = icmp ne i16 %.sroa.0.0.extract.trunc, 0
  %i.s = and i16 %.sroa.0.0.extract.trunc, -127
  %.not1.i18 = icmp eq i16 %i.s, 0
  %i.t = and i1 %.not.i17, %.not1.i18
  br i1 %i.t, label %bb.n, label %bb.r

bb.n:                                             ; preds = %bb.m
  %i.u = icmp eq i16 %.sroa.035.0.extract.trunc, 64
  %i.v = icmp eq i16 %.sroa.0.0.extract.trunc, 64
  %or.cond49 = select i1 %i.u, i1 %i.v, i1 false
  br i1 %or.cond49, label %bb.s, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.w = and i32 %0, 64
  %.not.i.i.i20.not = icmp eq i32 %i.w, 0
  br i1 %.not.i.i.i20.not, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.x = and i32 %1, 64
  %.not.i.i.i22.not = icmp eq i32 %i.x, 0
  %spec.select2 = select i1 %.not.i.i.i22.not, i32 0, i32 3
  br label %bb.s

bb.q:                                             ; preds = %bb.a
  tail call void @_ZN6hermes12hermes_fatalEPKc(ptr noundef nonnull @.str.46) #17
  unreachable

bb.r:                                             ; preds = %bb.l, %bb.m, %bb.i, %bb.j, %bb.e, %bb.f, %bb.c, %bb.d
  br label %bb.s

bb.s:                                             ; preds = %bb.n, %bb.p, %bb.h, %bb.o, %bb.k, %bb.g, %bb.d, %bb.a, %bb.a, %bb.r, %bb.b
  %.0 = phi i32 [ %spec.select2, %bb.p ], [ 0, %bb.b ], [ 3, %bb.a ], [ 3, %bb.r ], [ 0, %bb.d ], [ 3, %bb.o ], [ 3, %bb.g ], [ 0, %bb.k ], [ 0, %bb.n ], [ 3, %bb.a ], [ %spec.select, %bb.h ]
  ret i32 %.0
}

; Function Attrs: noreturn
declare void @_ZN6hermes12hermes_fatalEPKc(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes10SwitchInstC2EPNS_5ValueEPNS_10BasicBlockERKN4llvh11SmallVectorIPNS_7LiteralELj8EEERKNS6_IS4_Lj8EEE(ptr noundef nonnull align 8 dereferenceable(132) initializes((0, 16), (18, 22)) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %4) unnamed_addr #0 align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(132) %0, i8 0, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i16 1023, ptr %i.b, align 2, !tbaa !42
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i16 7, ptr %i.c, align 4, !tbaa !43
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.e, ptr %i.d, align 8, !tbaa !44
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.f, align 8, !tbaa !45
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 2, ptr %i.g, align 4, !tbaa !46
  store i8 80, ptr %i.a, align 8, !tbaa !7
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr null, ptr %i.h, align 8, !tbaa !47
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.j, ptr %i.i, align 8, !tbaa !44
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 0, ptr %i.k, align 8, !tbaa !45
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 2, ptr %i.l, align 4, !tbaa !46
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.m, i8 0, i64 20, i1 false)
  tail call void @_ZN6hermes11Instruction11pushOperandEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(132) %0, ptr noundef %1) #15
  %i.n = icmp eq ptr %2, null
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16
  %spec.select = select i1 %i.n, ptr null, ptr %i.o
  tail call void @_ZN6hermes11Instruction11pushOperandEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(132) %0, ptr noundef %spec.select) #15
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.q = load i32, ptr %i.p, align 8, !tbaa !45   ; 2 uses
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %i.q to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %i.s = load ptr, ptr %3, align 8, !tbaa !44
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !48
  tail call void @_ZN6hermes11Instruction11pushOperandEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(132) %0, ptr noundef %i.u) #15
  %i.v = load ptr, ptr %4, align 8, !tbaa !44
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !50   ; 2 uses
end_hunk_1
