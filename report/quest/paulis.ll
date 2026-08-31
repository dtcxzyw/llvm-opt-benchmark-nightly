Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quest/original/paulis?download=true
inline.NumInlined: 219
inline.NumDeleted: 98
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%struct.PauliStrSum = type { i64, ptr, ptr, ptr }

@_ZL29parser_RECOGNISED_PAULI_CHARSB5cxx11 = internal global %"class.std::__cxx11::basic_string" zeroinitializer, align 8
@.str = private unnamed_addr constant [13 x i8] c"0123ixyzIXYZ\00", align 1
@__dso_handle = external hidden global i8
@.str.1 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@_ZL17defaultMatrIndentB5cxx11 = internal global %"class.std::__cxx11::basic_string" zeroinitializer, align 8
@_ZL18defaultQuregIndentB5cxx11 = internal global %"class.std::__cxx11::basic_string" zeroinitializer, align 8
@_ZL18defaultKrausIndentB5cxx11 = internal global %"class.std::__cxx11::basic_string" zeroinitializer, align 8
@_ZL18defaultTableIndentB5cxx11 = internal global %"class.std::__cxx11::basic_string" zeroinitializer, align 8
@__func__.getPauliStr = private unnamed_addr constant [12 x i8] c"getPauliStr\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"IXYZ\00", align 1
@.str.9 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@__func__.createPauliStrSum = private unnamed_addr constant [18 x i8] c"createPauliStrSum\00", align 1
@__func__._Z23createInlinePauliStrSumNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE = private unnamed_addr constant [24 x i8] c"createInlinePauliStrSum\00", align 1
@__func__._Z25createPauliStrSumFromFileNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE = private unnamed_addr constant [26 x i8] c"createPauliStrSumFromFile\00", align 1
@__func__._Z33createPauliStrSumFromReversedFileNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE = private unnamed_addr constant [34 x i8] c"createPauliStrSumFromReversedFile\00", align 1
@__func__.destroyPauliStrSum = private unnamed_addr constant [19 x i8] c"destroyPauliStrSum\00", align 1
@__func__.reportPauliStrSum = private unnamed_addr constant [18 x i8] c"reportPauliStrSum\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_paulis.cpp, ptr null }]

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #0

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #0

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32)) unnamed_addr #1 align 2

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_Z25didAnyAllocsFailOnAnyNode11PauliStrSum(ptr nofree noundef readonly byval(%struct.PauliStrSum) align 8 captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9
  %i.c = tail call noundef zeroext i1 @_Z15mem_isAllocatedP8PauliStr(ptr noundef %i.b)
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !15
  %i.f = tail call noundef zeroext i1 @_Z15mem_isAllocatedPSt7complexIdE(ptr noundef %i.e)
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !16
  %i.i = tail call noundef zeroext i1 @_Z15mem_isAllocatedPi(ptr noundef %i.h)
  %i.j = xor i1 %i.i, true
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.k = phi i1 [ true, %bb.b ], [ true, %bb.a ], [ %i.j, %bb.c ] ; 2 uses
  %i.l = tail call noundef zeroext i1 @_Z11comm_isInitv()
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = tail call noundef zeroext i1 @_Z21comm_isTrueOnAllNodesb(i1 noundef zeroext %i.k)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0.in = phi i1 [ %i.m, %bb.e ], [ %i.k, %bb.d ]
  ret i1 %.0.in
}

declare noundef zeroext i1 @_Z15mem_isAllocatedP8PauliStr(ptr noundef) local_unnamed_addr #5

declare noundef zeroext i1 @_Z15mem_isAllocatedPSt7complexIdE(ptr noundef) local_unnamed_addr #5

declare noundef zeroext i1 @_Z15mem_isAllocatedPi(ptr noundef) local_unnamed_addr #5

declare noundef zeroext i1 @_Z11comm_isInitv() local_unnamed_addr #5

declare noundef zeroext i1 @_Z21comm_isTrueOnAllNodesb(i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define void @_Z15freePauliStrSum11PauliStrSum(ptr nofree noundef readonly byval(%struct.PauliStrSum) align 8 captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9
  tail call void @_Z23cpu_deallocPauliStringsP8PauliStr(ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !15
  tail call void @_Z16cpu_deallocArrayPSt7complexIdE(ptr noundef %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !16
  tail call void @_Z36util_deallocEpsilonSensitiveHeapFlagPi(ptr noundef %i.f)
  ret void
}

declare void @_Z23cpu_deallocPauliStringsP8PauliStr(ptr noundef) local_unnamed_addr #5

declare void @_Z16cpu_deallocArrayPSt7complexIdE(ptr noundef) local_unnamed_addr #5

declare void @_Z36util_deallocEpsilonSensitiveHeapFlagPi(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define void @_Z30freeAllMemoryIfAnyAllocsFailed11PauliStrSum(ptr nofree noundef readonly byval(%struct.PauliStrSum) align 8 captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !17 ; 2 uses
  %.sroa.32.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.32.0.copyload = load ptr, ptr %.sroa.32.0..sroa_idx, align 8, !tbaa !18 ; 2 uses
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.43.0.copyload = load ptr, ptr %.sroa.43.0..sroa_idx, align 8, !tbaa !19 ; 2 uses
  %i.a = tail call noundef zeroext i1 @_Z15mem_isAllocatedP8PauliStr(ptr noundef %.sroa.2.0.copyload)
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef zeroext i1 @_Z15mem_isAllocatedPSt7complexIdE(ptr noundef %.sroa.32.0.copyload)
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = tail call noundef zeroext i1 @_Z15mem_isAllocatedPi(ptr noundef %.sroa.43.0.copyload)
  %i.d = xor i1 %i.c, true
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.e = phi i1 [ true, %bb.b ], [ true, %bb.a ], [ %i.d, %bb.c ] ; 2 uses
  %i.f = tail call noundef zeroext i1 @_Z11comm_isInitv()
  br i1 %i.f, label %.split, label %_Z25didAnyAllocsFailOnAnyNode11PauliStrSum.exit

.split:                                           ; preds = %bb.d
  %i.g = tail call noundef zeroext i1 @_Z21comm_isTrueOnAllNodesb(i1 noundef zeroext %i.e)
  br i1 %i.g, label %bb.e, label %bb.f

_Z25didAnyAllocsFailOnAnyNode11PauliStrSum.exit:  ; preds = %bb.d
  br i1 %i.e, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.split, %_Z25didAnyAllocsFailOnAnyNode11PauliStrSum.exit
  tail call void @_Z23cpu_deallocPauliStringsP8PauliStr(ptr noundef %.sroa.2.0.copyload)
  tail call void @_Z16cpu_deallocArrayPSt7complexIdE(ptr noundef %.sroa.32.0.copyload)
  tail call void @_Z36util_deallocEpsilonSensitiveHeapFlagPi(ptr noundef %.sroa.43.0.copyload)
  br label %bb.f

bb.f:                                             ; preds = %.split, %_Z25didAnyAllocsFailOnAnyNode11PauliStrSum.exit, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define { i64, i64 } @getPauliStr(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #7 {
bb.a:
  tail call void @_Z26validate_newPauliStrParamsPKcPiiiS0_(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef 64, ptr noundef nonnull @__func__.getPauliStr)
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %.020.lcssa = phi i64 [ 0, %bb.a ], [ %.121, %bb.d ]
  %.019.lcssa = phi i64 [ 0, %bb.a ], [ %.1, %bb.d ]
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.020.lcssa, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.019.lcssa, 1
  ret { i64, i64 } %.fca.1.insert

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %.01925 = phi i64 [ 0, %.lr.ph.preheader ], [ %.1, %bb.d ] ; 2 uses
  %.02024 = phi i64 [ 0, %.lr.ph.preheader ], [ %.121, %bb.d ] ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.c = load i8, ptr %i.b, align 1, !tbaa !20
  %i.d = tail call noundef i32 @_Z26parser_getPauliIntFromCharc(i8 noundef signext %i.c)
  %i.e = sext i32 %i.d to i64                     ; 2 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.g = load i32, ptr %i.f, align 4, !tbaa !21   ; 2 uses
  %i.h = icmp slt i32 %i.g, 32
  %i.i = shl i32 %i.g, 1                          ; 2 uses
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.j = zext nneg i32 %i.i to i64
  %i.k = shl i64 %i.e, %i.j
  %i.l = or i64 %i.k, %.02024
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.m = add i32 %i.i, -64
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl i64 %i.e, %i.n
  %i.p = or i64 %i.o, %.01925
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.121 = phi i64 [ %i.l, %bb.b ], [ %.02024, %bb.c ] ; 2 uses
  %.1 = phi i64 [ %.01925, %bb.b ], [ %i.p, %bb.c ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !22
}

declare void @_Z26validate_newPauliStrParamsPKcPiiiS0_(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

declare noundef i32 @_Z26parser_getPauliIntFromCharc(i8 noundef signext) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define { i64, i64 } @_Z11getPauliStrPiS_i(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #7 {
bb.a:
  %i.a = alloca [65 x i8], align 16               ; 12 uses
  tail call void @_Z26validate_newPauliStrParamsPiS_iiPKc(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef 64, ptr noundef nonnull @__func__.getPauliStr)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.b = icmp sgt i32 %2, 0
  br i1 %i.b, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %2 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.c = icmp ult i32 %2, 4
  br i1 %i.c, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.a
  %i.d = sext i32 %2 to i64
  %i.e = getelementptr inbounds i8, ptr %i.a, i64 %i.d
  store i8 0, ptr %i.e, align 1, !tbaa !20
  call void @_Z26validate_newPauliStrParamsPKcPiiiS0_(ptr noundef nonnull %i.a, ptr noundef %1, i32 noundef %2, i32 noundef 64, ptr noundef nonnull @__func__.getPauliStr)
  br label %getPauliStr.exit

.lr.ph.preheader.i.unr-lcssa:                     ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.preheader.i, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.lr.ph.preheader.i.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %.lr.ph.preheader.i.unr-lcssa ]
  %lcmp.mod14 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod14)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.epil
  %i.g = load i32, ptr %i.f, align 4, !tbaa !21
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr inbounds i8, ptr @.str.8, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !20
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.epil
  store i8 %i.j, ptr %i.k, align 1, !tbaa !20
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph.preheader.i, label %.lr.ph.epil, !llvm.loop !24

.lr.ph.preheader.i:                               ; preds = %.lr.ph.epil, %.lr.ph.preheader.i.unr-lcssa
  %i.l = zext nneg i32 %2 to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.l
  store i8 0, ptr %i.m, align 1, !tbaa !20
  call void @_Z26validate_newPauliStrParamsPKcPiiiS0_(ptr noundef nonnull %i.a, ptr noundef %1, i32 noundef %2, i32 noundef 64, ptr noundef nonnull @__func__.getPauliStr)
  %wide.trip.count.i = zext nneg i32 %2 to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.d ] ; 3 uses
  %.01925.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %.1.i, %bb.d ] ; 2 uses
  %.02024.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %.121.i, %bb.d ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i
  %i.o = load i8, ptr %i.n, align 1, !tbaa !20
  %i.p = call noundef i32 @_Z26parser_getPauliIntFromCharc(i8 noundef signext %i.o)
  %i.q = sext i32 %i.p to i64                     ; 2 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i
  %i.s = load i32, ptr %i.r, align 4, !tbaa !21   ; 2 uses
  %i.t = icmp slt i32 %i.s, 32
  %i.u = shl i32 %i.s, 1                          ; 2 uses
  br i1 %i.t, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i
  %i.v = zext nneg i32 %i.u to i64
  %i.w = shl i64 %i.q, %i.v
  %i.x = or i64 %i.w, %.02024.i
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph.i
  %i.y = add i32 %i.u, -64
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = shl i64 %i.q, %i.z
  %i.ab = or i64 %i.aa, %.01925.i
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.121.i = phi i64 [ %i.x, %bb.b ], [ %.02024.i, %bb.c ] ; 2 uses
  %.1.i = phi i64 [ %.01925.i, %bb.b ], [ %i.ab, %bb.c ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %getPauliStr.exit, label %.lr.ph.i, !llvm.loop !22

getPauliStr.exit:                                 ; preds = %bb.d, %._crit_edge
  %.020.lcssa.i = phi i64 [ 0, %._crit_edge ], [ %.121.i, %bb.d ]
  %.019.lcssa.i = phi i64 [ 0, %._crit_edge ], [ %.1.i, %bb.d ]
  %.fca.0.insert.i = insertvalue { i64, i64 } poison, i64 %.020.lcssa.i, 0
  %.fca.1.insert.i = insertvalue { i64, i64 } %.fca.0.insert.i, i64 %.019.lcssa.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret { i64, i64 } %.fca.1.insert.i

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !21
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds i8, ptr @.str.8, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !20
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv
  store i8 %i.ag, ptr %i.ah, align 4, !tbaa !20
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !21
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds i8, ptr @.str.8, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !tbaa !20
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next
  store i8 %i.am, ptr %i.an, align 1, !tbaa !20
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next.1
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !21
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds i8, ptr @.str.8, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !20
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next.1
  store i8 %i.as, ptr %i.at, align 2, !tbaa !20
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next.2
  %i.av = load i32, ptr %i.au, align 4, !tbaa !21
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds i8, ptr @.str.8, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !20
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next.2
  store i8 %i.ay, ptr %i.az, align 1, !tbaa !20
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
end_hunk_0
begin_hunk_1_@_Z33createPauliStrSumFromReversedFileNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  store i64 %i.w, ptr %i.b, align 8, !tbaa !40
  %i.x = icmp ugt i64 %i.w, 15
  br i1 %i.x, label %.noexc.i9, label %._crit_edge.i.i8

.noexc.i9:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.y = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.y, ptr %4, align 8, !tbaa !32
  %i.z = load i64, ptr %i.b, align 8, !tbaa !40
  store i64 %i.z, ptr %i.u, align 8, !tbaa !20
  br label %._crit_edge.i.i8

._crit_edge.i.i8:                                 ; preds = %.noexc.i9, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.aa = phi ptr [ %i.y, %.noexc.i9 ], [ %i.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  switch i64 %i.w, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit10
  ]

bb.e:                                             ; preds = %._crit_edge.i.i8
  %i.ab = load i8, ptr %i.v, align 1, !tbaa !20
  store i8 %i.ab, ptr %i.aa, align 1, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit10

bb.f:                                             ; preds = %._crit_edge.i.i8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aa, ptr align 1 %i.v, i64 %i.w, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit10

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit10: ; preds = %._crit_edge.i.i8, %bb.e, %bb.f
  %i.ac = load i64, ptr %i.b, align 8, !tbaa !40  ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !27
  %i.ae = load ptr, ptr %4, align 8, !tbaa !32
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ac
  store i8 0, ptr %i.af, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  invoke void @_Z15parser_loadFileNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr nofree noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.g unwind label %bb.m

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit10
  %i.ag = load ptr, ptr %4, align 8, !tbaa !32    ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.u
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11: ; preds = %bb.g
  %i.ai = load i64, ptr %i.u, align 8, !tbaa !20
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.aj) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.ak, ptr %5, align 8, !tbaa !39
  %i.al = load ptr, ptr %3, align 8, !tbaa !32    ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.an = load i64, ptr %i.am, align 8, !tbaa !27 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i64 %i.an, ptr %i.a, align 8, !tbaa !40
  %i.ao = icmp ugt i64 %i.an, 15
  br i1 %i.ao, label %.noexc.i15, label %._crit_edge.i.i14

.noexc.i15:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13
  %i.ap = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.n     ; 2 uses

.noexc:                                           ; preds = %.noexc.i15
  store ptr %i.ap, ptr %5, align 8, !tbaa !32
  %i.aq = load i64, ptr %i.a, align 8, !tbaa !40
  store i64 %i.aq, ptr %i.ak, align 8, !tbaa !20
  br label %._crit_edge.i.i14

._crit_edge.i.i14:                                ; preds = %.noexc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13
  %i.ar = phi ptr [ %i.ap, %.noexc ], [ %i.ak, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13 ] ; 2 uses
  switch i64 %i.an, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %bb.j
  ]

bb.h:                                             ; preds = %._crit_edge.i.i14
  %i.as = load i8, ptr %i.al, align 1, !tbaa !20
  store i8 %i.as, ptr %i.ar, align 1, !tbaa !20
  br label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i14
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ar, ptr align 1 %i.al, i64 %i.an, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %._crit_edge.i.i14
  %i.at = load i64, ptr %i.a, align 8, !tbaa !40  ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.at, ptr %i.au, align 8, !tbaa !27
  %i.av = load ptr, ptr %5, align 8, !tbaa !32
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.at
  store i8 0, ptr %i.aw, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  invoke void @_Z34parser_validateAndParsePauliStrSumNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbPKc(ptr dead_on_unwind writable sret(%struct.PauliStrSum) align 8 %0, ptr nofree noundef nonnull align 8 dereferenceable(32) %5, i1 noundef zeroext false, ptr noundef nonnull @__func__._Z33createPauliStrSumFromReversedFileNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
          to label %bb.k unwind label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.ax = load ptr, ptr %5, align 8, !tbaa !32    ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.ak
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17: ; preds = %bb.k
  %i.az = load i64, ptr %i.ak, align 8, !tbaa !20
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.ba) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17
  %i.bb = load ptr, ptr %3, align 8, !tbaa !32    ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19
  %i.be = load i64, ptr %i.bc, align 8, !tbaa !20
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.bf) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  ret void

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.bg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bh = load ptr, ptr %2, align 8, !tbaa !32    ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.d
  br i1 %i.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23: ; preds = %bb.l
  %i.bj = load i64, ptr %i.d, align 8, !tbaa !20
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bk) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit10
  %i.bl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bm = load ptr, ptr %4, align 8, !tbaa !32    ; 2 uses
  %i.bn = icmp eq ptr %i.bm, %i.u
  br i1 %i.bn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %bb.m
  %i.bo = load i64, ptr %i.u, align 8, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28.sink.split

bb.n:                                             ; preds = %.noexc.i15
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

bb.o:                                             ; preds = %bb.j
  %i.bq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.br = load ptr, ptr %5, align 8, !tbaa !32    ; 2 uses
  %i.bs = icmp eq ptr %i.br, %i.ak
  br i1 %i.bs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %bb.o
  %i.bt = load i64, ptr %i.ak, align 8, !tbaa !20
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %i.br, i64 noundef %i.bu) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29, %bb.n
  %.pn = phi { ptr, i32 } [ %i.bp, %bb.n ], [ %i.bq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29 ], [ %i.bq, %bb.o ] ; 2 uses
  %i.bv = load ptr, ptr %3, align 8, !tbaa !32    ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bx = icmp eq ptr %i.bv, %i.bw
  br i1 %i.bx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31
  %i.by = load i64, ptr %i.bw, align 8, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28.sink.split

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28.sink.split: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32
  %.sink50 = phi i64 [ %i.by, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32 ], [ %i.bo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26 ]
  %.sink = phi ptr [ %i.bv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32 ], [ %i.bm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26 ]
  %.pn.pn.ph = phi { ptr, i32 } [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32 ], [ %i.bl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26 ]
  %i.bz = add i64 %.sink50, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.bz) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28.sink.split, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, %bb.m
  %.pn.pn = phi { ptr, i32 } [ %i.bl, %bb.m ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31 ], [ %.pn.pn.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28 ], [ %i.bg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23 ], [ %i.bg, %bb.l ]
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @destroyPauliStrSum(ptr nofree noundef readonly byval(%struct.PauliStrSum) align 8 captures(none) %0) local_unnamed_addr #7 {
bb.a:
  tail call void @_Z26validate_pauliStrSumFields11PauliStrSumPKc(ptr noundef nonnull byval(%struct.PauliStrSum) align 8 %0, ptr noundef nonnull @__func__.destroyPauliStrSum)
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !17
  %.sroa.32.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.32.0.copyload = load ptr, ptr %.sroa.32.0..sroa_idx, align 8, !tbaa !18
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.43.0.copyload = load ptr, ptr %.sroa.43.0..sroa_idx, align 8, !tbaa !19
  tail call void @_Z23cpu_deallocPauliStringsP8PauliStr(ptr noundef %.sroa.2.0.copyload)
  tail call void @_Z16cpu_deallocArrayPSt7complexIdE(ptr noundef %.sroa.32.0.copyload)
  tail call void @_Z36util_deallocEpsilonSensitiveHeapFlagPi(ptr noundef %.sroa.43.0.copyload)
  ret void
}

declare void @_Z26validate_pauliStrSumFields11PauliStrSumPKc(ptr noundef byval(%struct.PauliStrSum) align 8, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define void @reportPauliStr(i64 %0, i64 %1) local_unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !39
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !27
  store i8 0, ptr %i.a, align 8, !tbaa !20
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.c, ptr %3, align 8, !tbaa !39
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.d, align 8, !tbaa !27
  store i8 0, ptr %i.c, align 8, !tbaa !20
  invoke void @_Z25print_elemsWithoutNewline8PauliStrNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i64 %0, i64 %1, ptr nofree noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %3, align 8, !tbaa !32     ; 2 uses
  %i.f = icmp eq ptr %i.e, %i.c
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.g = load i64, ptr %i.c, align 8, !tbaa !20
  %i.h = add i64 %i.g, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.h) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  invoke void @_Z14print_newlinesv()
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.i = load ptr, ptr %2, align 8, !tbaa !32     ; 2 uses
  %i.j = icmp eq ptr %i.i, %i.a
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10: ; preds = %bb.c
  %i.k = load i64, ptr %i.a, align 8, !tbaa !20
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.l) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  ret void

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

bb.e:                                             ; preds = %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.o = load ptr, ptr %3, align 8, !tbaa !32     ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.c
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %bb.e
  %i.q = load i64, ptr %i.c, align 8, !tbaa !20
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.r) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13, %bb.d
  %.pn = phi { ptr, i32 } [ %i.m, %bb.d ], [ %i.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13 ], [ %i.n, %bb.e ]
  %i.s = load ptr, ptr %2, align 8, !tbaa !32     ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.a
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15
  %i.u = load i64, ptr %i.a, align 8, !tbaa !20
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.v) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  resume { ptr, i32 } %.pn
}

declare void @_Z25print_elemsWithoutNewline8PauliStrNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i64, i64, ptr nofree noundef align 8 dereferenceable(32)) local_unnamed_addr #5

declare void @_Z14print_newlinesv() local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define void @reportPauliStrSum(ptr nofree noundef readonly byval(%struct.PauliStrSum) align 8 captures(none) %0) local_unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  tail call void @_Z26validate_pauliStrSumFields11PauliStrSumPKc(ptr noundef nonnull byval(%struct.PauliStrSum) align 8 %0, ptr noundef nonnull @__func__.reportPauliStrSum)
  tail call void @_Z37validate_numReportedNewlinesAboveZeroPKc(ptr noundef nonnull @__func__.reportPauliStrSum)
  %i.b = load i64, ptr %0, align 8, !tbaa !44
  %i.c = shl i64 %i.b, 5
  %i.d = add nsw i64 %i.c, 32
  tail call void @_Z12print_header11PauliStrSumm(ptr noundef nonnull byval(%struct.PauliStrSum) align 8 %0, i64 noundef %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  store ptr %i.e, ptr %1, align 8, !tbaa !39
  %i.f = load ptr, ptr @_ZL17defaultMatrIndentB5cxx11, align 8, !tbaa !32 ; 2 uses
  %i.g = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZL17defaultMatrIndentB5cxx11, i64 8), align 8, !tbaa !27 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i64 %i.g, ptr %i.a, align 8, !tbaa !40
  %i.h = icmp ugt i64 %i.g, 15
  br i1 %i.h, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.i = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.i, ptr %1, align 8, !tbaa !32
  %i.j = load i64, ptr %i.a, align 8, !tbaa !40
  store i64 %i.j, ptr %i.e, align 8, !tbaa !20
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.k = phi ptr [ %i.i, %.noexc.i ], [ %i.e, %bb.a ] ; 2 uses
  switch i64 %i.g, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.l = load i8, ptr %i.f, align 1, !tbaa !20
  store i8 %i.l, ptr %i.k, align 1, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr align 1 %i.f, i64 %i.g, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.m = load i64, ptr %i.a, align 8, !tbaa !40   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.m, ptr %i.n, align 8, !tbaa !27
  %i.o = load ptr, ptr %1, align 8, !tbaa !32
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  invoke void @_Z11print_elems11PauliStrSumNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull byval(%struct.PauliStrSum) align 8 %0, ptr nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.q = load ptr, ptr %1, align 8, !tbaa !32     ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.e
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.s = load i64, ptr %i.e, align 8, !tbaa !20
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @_Z22print_oneFewerNewlinesv()
  ret void

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.u = landingpad { ptr, i32 }
          cleanup
  %i.v = load ptr, ptr %1, align 8, !tbaa !32     ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.e
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %bb.e
  %i.x = load i64, ptr %i.e, align 8, !tbaa !20
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.y) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  resume { ptr, i32 } %i.u
}

declare void @_Z37validate_numReportedNewlinesAboveZeroPKc(ptr noundef) local_unnamed_addr #5

declare void @_Z12print_header11PauliStrSumm(ptr noundef byval(%struct.PauliStrSum) align 8, i64 noundef) local_unnamed_addr #5

declare void @_Z11print_elems11PauliStrSumNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef byval(%struct.PauliStrSum) align 8, ptr nofree noundef align 8 dereferenceable(32)) local_unnamed_addr #5

declare void @_Z22print_oneFewerNewlinesv() local_unnamed_addr #5

; Function Attrs: nofree nounwind uwtable
define internal void @_GLOBAL__sub_I_paulis.cpp() #9 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw (i8, ptr @_ZL29parser_RECOGNISED_PAULI_CHARSB5cxx11, i64 16), ptr @_ZL29parser_RECOGNISED_PAULI_CHARSB5cxx11, align 8, !tbaa !39
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) getelementptr inbounds nuw (i8, ptr @_ZL29parser_RECOGNISED_PAULI_CHARSB5cxx11, i64 16), ptr noundef nonnull align 1 dereferenceable(12) @.str, i64 12, i1 false)
  store i64 12, ptr getelementptr inbounds nuw (i8, ptr @_ZL29parser_RECOGNISED_PAULI_CHARSB5cxx11, i64 8), align 8, !tbaa !27
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL29parser_RECOGNISED_PAULI_CHARSB5cxx11, i64 28), align 4, !tbaa !20
  %i.a = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZL29parser_RECOGNISED_PAULI_CHARSB5cxx11, ptr nonnull @__dso_handle) #12 ; 0 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZL17defaultMatrIndentB5cxx11, i64 16), ptr @_ZL17defaultMatrIndentB5cxx11, align 8, !tbaa !39
  store i32 538976288, ptr getelementptr inbounds nuw (i8, ptr @_ZL17defaultMatrIndentB5cxx11, i64 16), align 8
  store i64 4, ptr getelementptr inbounds nuw (i8, ptr @_ZL17defaultMatrIndentB5cxx11, i64 8), align 8, !tbaa !27
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL17defaultMatrIndentB5cxx11, i64 20), align 4, !tbaa !20
  %i.b = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZL17defaultMatrIndentB5cxx11, ptr nonnull @__dso_handle) #12 ; 0 uses
end_hunk_1
