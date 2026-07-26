inline.NumInlined: 71
inline.NumDeleted: 35
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.folly::detail::unique_hash_key_algo_strong_sha256_init_t" = type { [32 x i8] }
%"struct.std::pair" = type <{ i64, i8, [7 x i8] }>
%struct.SHA256state_st = type { [8 x i32], i32, i32, [16 x i32], i32, i32 }
%"struct.std::array.3" = type { [24 x i8] }
%"struct.std::array.4" = type { [32 x i8] }

$_ZNK5folly37unique_hash_key_algo_strong_sha256_fnILm8EEclESt4spanIKNS_6detail20unique_hash_key_itemELm18446744073709551615EE = comdat any

$__clang_call_terminate = comdat any

$_ZNK5folly37unique_hash_key_algo_strong_sha256_fnILm16EEclESt4spanIKNS_6detail20unique_hash_key_itemELm18446744073709551615EE = comdat any

$_ZNK5folly37unique_hash_key_algo_strong_sha256_fnILm24EEclESt4spanIKNS_6detail20unique_hash_key_itemELm18446744073709551615EE = comdat any

$_ZNK5folly37unique_hash_key_algo_strong_sha256_fnILm32EEclESt4spanIKNS_6detail20unique_hash_key_itemELm18446744073709551615EE = comdat any

@_ZZN5folly6detailL39unique_hash_key_algo_strong_sha256_initEvE6object = internal global %"struct.folly::detail::unique_hash_key_algo_strong_sha256_init_t" zeroinitializer, align 1
@_ZGVZN5folly6detailL39unique_hash_key_algo_strong_sha256_initEvE6object = internal global i64 0, align 8
@__func__._ZN5folly6detailL44unique_hash_key_algo_strong_sha256_init_implEv = private unnamed_addr constant [45 x i8] c"unique_hash_key_algo_strong_sha256_init_impl\00", align 1

; Function Attrs: mustprogress nounwind uwtable
define weak_odr i64 @_ZNK5folly37unique_hash_key_algo_strong_sha256_fnILm8EEclESt4spanIKNS_6detail20unique_hash_key_itemELm18446744073709551615EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr %1, i64 %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.std::pair", align 8        ; 6 uses
  %4 = alloca %struct.SHA256state_st, align 4     ; 7 uses
  %i.a = alloca [32 x i8], align 16               ; 4 uses
  %i.b = load atomic i8, ptr @_ZGVZN5folly6detailL39unique_hash_key_algo_strong_sha256_initEvE6object acquire, align 8
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.b, label %_ZN5folly6detailL39unique_hash_key_algo_strong_sha256_initEv.exit, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5folly6detailL39unique_hash_key_algo_strong_sha256_initEvE6object) #10
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %_ZN5folly6detailL39unique_hash_key_algo_strong_sha256_initEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke fastcc void @_ZN5folly6detailL44unique_hash_key_algo_strong_sha256_init_implEv()
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = tail call ptr @llvm.invariant.start.p0(i64 32, ptr nonnull @_ZZN5folly6detailL39unique_hash_key_algo_strong_sha256_initEvE6object) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5folly6detailL39unique_hash_key_algo_strong_sha256_initEvE6object) #10
  br label %_ZN5folly6detailL39unique_hash_key_algo_strong_sha256_initEv.exit

bb.e:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN5folly6detailL39unique_hash_key_algo_strong_sha256_initEvE6object) #10
  br label %.body

_ZN5folly6detailL39unique_hash_key_algo_strong_sha256_initEv.exit: ; preds = %bb.d, %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  %i.g = invoke i32 @SHA256_Init(ptr noundef nonnull %4)
          to label %bb.f unwind label %bb.n       ; 0 uses

bb.f:                                             ; preds = %_ZN5folly6detailL39unique_hash_key_algo_strong_sha256_initEv.exit
  %.idx = shl nuw nsw i64 %2, 4
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.i = icmp eq i64 %2, 0
  br i1 %i.i, label %_ZN5folly6detailL26unique_hash_key_hash_itemsI14SHA256state_stPFiPS2_PKvmEEEvT0_PT_St4spanIKNS0_20unique_hash_key_itemELm18446744073709551615EE.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.j
  %.sroa.05.010 = phi ptr [ %1, %.lr.ph ], [ %i.p, %bb.j ] ; 3 uses
  %.sroa.03.0.copyload = load ptr, ptr %.sroa.05.010, align 8, !tbaa !13
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.05.010, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  %i.j = and i64 %.sroa.4.0.copyload, 9223372036854775807 ; 2 uses
  %.lobit.i = lshr i64 %.sroa.4.0.copyload, 63
  %i.k = trunc nuw nsw i64 %.lobit.i to i8
  store i64 %i.j, ptr %3, align 8
  store i8 %i.k, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.l = icmp slt i64 %.sroa.4.0.copyload, 0
  br i1 %i.l, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.m = invoke noundef i32 @SHA256_Update(ptr noundef nonnull %4, ptr noundef nonnull %3, i64 noundef 8)
          to label %._crit_edge unwind label %bb.k ; 0 uses

._crit_edge:                                      ; preds = %bb.h
  %.pre = load i64, ptr %3, align 8, !tbaa !16
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge, %bb.g
  %i.n = phi i64 [ %.pre, %._crit_edge ], [ %i.j, %bb.g ]
  %i.o = invoke noundef i32 @SHA256_Update(ptr noundef nonnull %4, ptr noundef %.sroa.03.0.copyload, i64 noundef %i.n)
          to label %bb.j unwind label %bb.k       ; 0 uses

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.05.010, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.h
  br i1 %i.q, label %_ZN5folly6detailL26unique_hash_key_hash_itemsI14SHA256state_stPFiPS2_PKvmEEEvT0_PT_St4spanIKNS0_20unique_hash_key_itemELm18446744073709551615EE.exit, label %bb.g

bb.k:                                             ; preds = %bb.i, %bb.h
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #11
  unreachable

_ZN5folly6detailL26unique_hash_key_hash_itemsI14SHA256state_stPFiPS2_PKvmEEEvT0_PT_St4spanIKNS0_20unique_hash_key_itemELm18446744073709551615EE.exit: ; preds = %bb.j, %bb.f
  %i.t = invoke i32 @SHA256_Update(ptr noundef nonnull %4, ptr noundef nonnull @_ZZN5folly6detailL39unique_hash_key_algo_strong_sha256_initEvE6object, i64 noundef 32)
          to label %bb.l unwind label %bb.n       ; 0 uses

bb.l:                                             ; preds = %_ZN5folly6detailL26unique_hash_key_hash_itemsI14SHA256state_stPFiPS2_PKvmEEEvT0_PT_St4spanIKNS0_20unique_hash_key_itemELm18446744073709551615EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.u = invoke i32 @SHA256_Final(ptr noundef nonnull %i.a, ptr noundef nonnull %4)
          to label %bb.m unwind label %bb.n       ; 0 uses

bb.m:                                             ; preds = %bb.l
  %.sroa.0.0.copyload = load i64, ptr %i.a, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  ret i64 %.sroa.0.0.copyload

bb.n:                                             ; preds = %bb.l, %_ZN5folly6detailL26unique_hash_key_hash_itemsI14SHA256state_stPFiPS2_PKvmEEEvT0_PT_St4spanIKNS0_20unique_hash_key_itemELm18446744073709551615EE.exit, %_ZN5folly6detailL39unique_hash_key_algo_strong_sha256_initEv.exit
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %bb.e, %bb.n
  %eh.lpad-body = phi { ptr, i32 } [ %i.v, %bb.n ], [ %i.f, %bb.e ]
  %i.w = extractvalue { ptr, i32 } %eh.lpad-body, 0
  call void @__clang_call_terminate(ptr %i.w) #11
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #10 ; 0 uses
  tail call void @_ZSt9terminatev() #11
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #3

declare i32 @SHA256_Init(ptr noundef) local_unnamed_addr #4

declare i32 @SHA256_Update(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i32 @SHA256_Final(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5folly6detailL44unique_hash_key_algo_strong_sha256_init_implEv() unnamed_addr #7 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %0 = alloca %struct.SHA256state_st, align 4     ; 8 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) @_ZZN5folly6detailL39unique_hash_key_algo_strong_sha256_initEvE6object, i8 0, i64 32, i1 false), !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.b = tail call i32 @getpid() #10
  store i32 %i.b, ptr %i.a, align 4, !tbaa !19
  %i.c = tail call i64 @getauxval(i64 noundef 25) #10
  %i.d = inttoptr i64 %i.c to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(112) %0, i8 0, i64 112, i1 false)
  %i.e = call i32 @SHA256_Init(ptr noundef nonnull %0) ; 0 uses
  %i.f = call i32 @SHA256_Update(ptr noundef nonnull %0, ptr noundef nonnull @__func__._ZN5folly6detailL44unique_hash_key_algo_strong_sha256_init_implEv, i64 noundef 44) ; 0 uses
  %i.g = call i32 @SHA256_Update(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef 4) ; 0 uses
  %i.h = call i32 @SHA256_Update(ptr noundef nonnull %0, ptr noundef %i.d, i64 noundef 16) ; 0 uses
  %i.i = call i32 @SHA256_Final(ptr noundef nonnull @_ZZN5folly6detailL39unique_hash_key_algo_strong_sha256_initEvE6object, ptr noundef nonnull %0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @llvm.invariant.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare void @__cxa_guard_abort(ptr) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define void @_ZN5folly6detail39unique_hash_key_init_process_key_sha256EPKcSt4spanIhLm32EE(ptr noundef %0, ptr %1) local_unnamed_addr #7 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %2 = alloca %struct.SHA256state_st, align 4     ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.b = tail call i32 @getpid() #10
  store i32 %i.b, ptr %i.a, align 4, !tbaa !19
  %i.c = tail call i64 @getauxval(i64 noundef 25) #10
  %i.d = inttoptr i64 %i.c to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(112) %2, i8 0, i64 112, i1 false)
  %i.e = call i32 @SHA256_Init(ptr noundef nonnull %2) ; 0 uses
  %i.f = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #12
  %i.g = call i32 @SHA256_Update(ptr noundef nonnull %2, ptr noundef nonnull %0, i64 noundef %i.f) ; 0 uses
  %i.h = call i32 @SHA256_Update(ptr noundef nonnull %2, ptr noundef nonnull %i.a, i64 noundef 4) ; 0 uses
  %i.i = call i32 @SHA256_Update(ptr noundef nonnull %2, ptr noundef %i.d, i64 noundef 16) ; 0 uses
  %i.j = call i32 @SHA256_Final(ptr noundef %1, ptr noundef nonnull %2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr { i64, i64 } @_ZNK5folly37unique_hash_key_algo_strong_sha256_fnILm16EEclESt4spanIKNS_6detail20unique_hash_key_itemELm18446744073709551615EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr %1, i64 %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.std::pair", align 8        ; 6 uses
  %4 = alloca %struct.SHA256state_st, align 4     ; 7 uses
  %i.a = alloca [32 x i8], align 16               ; 5 uses
  %i.b = load atomic i8, ptr @_ZGVZN5folly6detailL39unique_hash_key_algo_strong_sha256_initEvE6object acquire, align 8
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.b, label %_ZN5folly6detailL39unique_hash_key_algo_strong_sha256_initEv.exit, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5folly6detailL39unique_hash_key_algo_strong_sha256_initEvE6object) #10
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %_ZN5folly6detailL39unique_hash_key_algo_strong_sha256_initEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke fastcc void @_ZN5folly6detailL44unique_hash_key_algo_strong_sha256_init_implEv()
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = tail call ptr @llvm.invariant.start.p0(i64 32, ptr nonnull @_ZZN5folly6detailL39unique_hash_key_algo_strong_sha256_initEvE6object) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5folly6detailL39unique_hash_key_algo_strong_sha256_initEvE6object) #10
  br label %_ZN5folly6detailL39unique_hash_key_algo_strong_sha256_initEv.exit

bb.e:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN5folly6detailL39unique_hash_key_algo_strong_sha256_initEvE6object) #10
  br label %.body

_ZN5folly6detailL39unique_hash_key_algo_strong_sha256_initEv.exit: ; preds = %bb.d, %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  %i.g = invoke i32 @SHA256_Init(ptr noundef nonnull %4)
          to label %bb.f unwind label %bb.n       ; 0 uses

bb.f:                                             ; preds = %_ZN5folly6detailL39unique_hash_key_algo_strong_sha256_initEv.exit
  %.idx = shl nuw nsw i64 %2, 4
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.i = icmp eq i64 %2, 0
  br i1 %i.i, label %_ZN5folly6detailL26unique_hash_key_hash_itemsI14SHA256state_stPFiPS2_PKvmEEEvT0_PT_St4spanIKNS0_20unique_hash_key_itemELm18446744073709551615EE.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.j
  %.sroa.05.010 = phi ptr [ %1, %.lr.ph ], [ %i.p, %bb.j ] ; 3 uses
  %.sroa.03.0.copyload = load ptr, ptr %.sroa.05.010, align 8, !tbaa !13
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.05.010, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  %i.j = and i64 %.sroa.4.0.copyload, 9223372036854775807 ; 2 uses
  %.lobit.i = lshr i64 %.sroa.4.0.copyload, 63
  %i.k = trunc nuw nsw i64 %.lobit.i to i8
  store i64 %i.j, ptr %3, align 8
  store i8 %i.k, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.l = icmp slt i64 %.sroa.4.0.copyload, 0
  br i1 %i.l, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.m = invoke noundef i32 @SHA256_Update(ptr noundef nonnull %4, ptr noundef nonnull %3, i64 noundef 8)
          to label %._crit_edge unwind label %bb.k ; 0 uses

._crit_edge:                                      ; preds = %bb.h
  %.pre = load i64, ptr %3, align 8, !tbaa !16
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge, %bb.g
  %i.n = phi i64 [ %.pre, %._crit_edge ], [ %i.j, %bb.g ]
  %i.o = invoke noundef i32 @SHA256_Update(ptr noundef nonnull %4, ptr noundef %.sroa.03.0.copyload, i64 noundef %i.n)
          to label %bb.j unwind label %bb.k       ; 0 uses

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.05.010, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.h
  br i1 %i.q, label %_ZN5folly6detailL26unique_hash_key_hash_itemsI14SHA256state_stPFiPS2_PKvmEEEvT0_PT_St4spanIKNS0_20unique_hash_key_itemELm18446744073709551615EE.exit, label %bb.g

bb.k:                                             ; preds = %bb.i, %bb.h
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #11
  unreachable

_ZN5folly6detailL26unique_hash_key_hash_itemsI14SHA256state_stPFiPS2_PKvmEEEvT0_PT_St4spanIKNS0_20unique_hash_key_itemELm18446744073709551615EE.exit: ; preds = %bb.j, %bb.f
  %i.t = invoke i32 @SHA256_Update(ptr noundef nonnull %4, ptr noundef nonnull @_ZZN5folly6detailL39unique_hash_key_algo_strong_sha256_initEvE6object, i64 noundef 32)
          to label %bb.l unwind label %bb.n       ; 0 uses

bb.l:                                             ; preds = %_ZN5folly6detailL26unique_hash_key_hash_itemsI14SHA256state_stPFiPS2_PKvmEEEvT0_PT_St4spanIKNS0_20unique_hash_key_itemELm18446744073709551615EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.u = invoke i32 @SHA256_Final(ptr noundef nonnull %i.a, ptr noundef nonnull %4)
          to label %bb.m unwind label %bb.n       ; 0 uses

bb.m:                                             ; preds = %bb.l
  %.sroa.0.0.copyload = load i64, ptr %i.a, align 16
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.3.0.copyload = load i64, ptr %.sroa.3.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.copyload, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.3.0.copyload, 1
  ret { i64, i64 } %.fca.1.insert

bb.n:                                             ; preds = %bb.l, %_ZN5folly6detailL26unique_hash_key_hash_itemsI14SHA256state_stPFiPS2_PKvmEEEvT0_PT_St4spanIKNS0_20unique_hash_key_itemELm18446744073709551615EE.exit, %_ZN5folly6detailL39unique_hash_key_algo_strong_sha256_initEv.exit
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %bb.e, %bb.n
  %eh.lpad-body = phi { ptr, i32 } [ %i.v, %bb.n ], [ %i.f, %bb.e ]
  %i.w = extractvalue { ptr, i32 } %eh.lpad-body, 0
  call void @__clang_call_terminate(ptr %i.w) #11
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr void @_ZNK5folly37unique_hash_key_algo_strong_sha256_fnILm24EEclESt4spanIKNS_6detail20unique_hash_key_itemELm18446744073709551615EE(ptr dead_on_unwind noalias writable sret(%"struct.std::array.3") align 1 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr %2, i64 %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.std::pair", align 8        ; 6 uses
  %5 = alloca %struct.SHA256state_st, align 4     ; 7 uses
  %i.a = alloca [32 x i8], align 16               ; 4 uses
  %i.b = load atomic i8, ptr @_ZGVZN5folly6detailL39unique_hash_key_algo_strong_sha256_initEvE6object acquire, align 8
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.b, label %_ZN5folly6detailL39unique_hash_key_algo_strong_sha256_initEv.exit, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5folly6detailL39unique_hash_key_algo_strong_sha256_initEvE6object) #10
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %_ZN5folly6detailL39unique_hash_key_algo_strong_sha256_initEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke fastcc void @_ZN5folly6detailL44unique_hash_key_algo_strong_sha256_init_implEv()
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = tail call ptr @llvm.invariant.start.p0(i64 32, ptr nonnull @_ZZN5folly6detailL39unique_hash_key_algo_strong_sha256_initEvE6object) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5folly6detailL39unique_hash_key_algo_strong_sha256_initEvE6object) #10
  br label %_ZN5folly6detailL39unique_hash_key_algo_strong_sha256_initEv.exit

bb.e:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN5folly6detailL39unique_hash_key_algo_strong_sha256_initEvE6object) #10
  br label %.body

_ZN5folly6detailL39unique_hash_key_algo_strong_sha256_initEv.exit: ; preds = %bb.d, %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  %i.g = invoke i32 @SHA256_Init(ptr noundef nonnull %5)
          to label %bb.f unwind label %bb.n       ; 0 uses

bb.f:                                             ; preds = %_ZN5folly6detailL39unique_hash_key_algo_strong_sha256_initEv.exit
  %.idx = shl nuw nsw i64 %3, 4
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 %.idx
  %i.i = icmp eq i64 %3, 0
  br i1 %i.i, label %_ZN5folly6detailL26unique_hash_key_hash_itemsI14SHA256state_stPFiPS2_PKvmEEEvT0_PT_St4spanIKNS0_20unique_hash_key_itemELm18446744073709551615EE.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.j
  %.sroa.04.09 = phi ptr [ %2, %.lr.ph ], [ %i.p, %bb.j ] ; 3 uses
  %.sroa.0.0.copyload = load ptr, ptr %.sroa.04.09, align 8, !tbaa !13
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.04.09, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  %i.j = and i64 %.sroa.4.0.copyload, 9223372036854775807 ; 2 uses
  %.lobit.i = lshr i64 %.sroa.4.0.copyload, 63
  %i.k = trunc nuw nsw i64 %.lobit.i to i8
  store i64 %i.j, ptr %4, align 8
  store i8 %i.k, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.l = icmp slt i64 %.sroa.4.0.copyload, 0
  br i1 %i.l, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.m = invoke noundef i32 @SHA256_Update(ptr noundef nonnull %5, ptr noundef nonnull %4, i64 noundef 8)
          to label %._crit_edge unwind label %bb.k ; 0 uses

._crit_edge:                                      ; preds = %bb.h
  %.pre = load i64, ptr %4, align 8, !tbaa !16
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge, %bb.g
  %i.n = phi i64 [ %.pre, %._crit_edge ], [ %i.j, %bb.g ]
  %i.o = invoke noundef i32 @SHA256_Update(ptr noundef nonnull %5, ptr noundef %.sroa.0.0.copyload, i64 noundef %i.n)
          to label %bb.j unwind label %bb.k       ; 0 uses

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.04.09, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.h
  br i1 %i.q, label %_ZN5folly6detailL26unique_hash_key_hash_itemsI14SHA256state_stPFiPS2_PKvmEEEvT0_PT_St4spanIKNS0_20unique_hash_key_itemELm18446744073709551615EE.exit, label %bb.g

bb.k:                                             ; preds = %bb.i, %bb.h
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #11
  unreachable

_ZN5folly6detailL26unique_hash_key_hash_itemsI14SHA256state_stPFiPS2_PKvmEEEvT0_PT_St4spanIKNS0_20unique_hash_key_itemELm18446744073709551615EE.exit: ; preds = %bb.j, %bb.f
  %i.t = invoke i32 @SHA256_Update(ptr noundef nonnull %5, ptr noundef nonnull @_ZZN5folly6detailL39unique_hash_key_algo_strong_sha256_initEvE6object, i64 noundef 32)
          to label %bb.l unwind label %bb.n       ; 0 uses

bb.l:                                             ; preds = %_ZN5folly6detailL26unique_hash_key_hash_itemsI14SHA256state_stPFiPS2_PKvmEEEvT0_PT_St4spanIKNS0_20unique_hash_key_itemELm18446744073709551615EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.u = invoke i32 @SHA256_Final(ptr noundef nonnull %i.a, ptr noundef nonnull %5)
          to label %bb.m unwind label %bb.n       ; 0 uses

bb.m:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %0, ptr noundef nonnull align 16 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  ret void

bb.n:                                             ; preds = %bb.l, %_ZN5folly6detailL26unique_hash_key_hash_itemsI14SHA256state_stPFiPS2_PKvmEEEvT0_PT_St4spanIKNS0_20unique_hash_key_itemELm18446744073709551615EE.exit, %_ZN5folly6detailL39unique_hash_key_algo_strong_sha256_initEv.exit
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %bb.e, %bb.n
  %eh.lpad-body = phi { ptr, i32 } [ %i.v, %bb.n ], [ %i.f, %bb.e ]
  %i.w = extractvalue { ptr, i32 } %eh.lpad-body, 0
  call void @__clang_call_terminate(ptr %i.w) #11
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr void @_ZNK5folly37unique_hash_key_algo_strong_sha256_fnILm32EEclESt4spanIKNS_6detail20unique_hash_key_itemELm18446744073709551615EE(ptr dead_on_unwind noalias writable sret(%"struct.std::array.4") align 1 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr %2, i64 %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.std::pair", align 8        ; 6 uses
  %5 = alloca %struct.SHA256state_st, align 4     ; 7 uses
  %i.a = alloca [32 x i8], align 16               ; 4 uses
  %i.b = load atomic i8, ptr @_ZGVZN5folly6detailL39unique_hash_key_algo_strong_sha256_initEvE6object acquire, align 8
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.b, label %_ZN5folly6detailL39unique_hash_key_algo_strong_sha256_initEv.exit, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5folly6detailL39unique_hash_key_algo_strong_sha256_initEvE6object) #10
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %_ZN5folly6detailL39unique_hash_key_algo_strong_sha256_initEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke fastcc void @_ZN5folly6detailL44unique_hash_key_algo_strong_sha256_init_implEv()
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = tail call ptr @llvm.invariant.start.p0(i64 32, ptr nonnull @_ZZN5folly6detailL39unique_hash_key_algo_strong_sha256_initEvE6object) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5folly6detailL39unique_hash_key_algo_strong_sha256_initEvE6object) #10
  br label %_ZN5folly6detailL39unique_hash_key_algo_strong_sha256_initEv.exit

bb.e:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN5folly6detailL39unique_hash_key_algo_strong_sha256_initEvE6object) #10
  br label %.body

_ZN5folly6detailL39unique_hash_key_algo_strong_sha256_initEv.exit: ; preds = %bb.d, %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  %i.g = invoke i32 @SHA256_Init(ptr noundef nonnull %5)
          to label %bb.f unwind label %bb.n       ; 0 uses

bb.f:                                             ; preds = %_ZN5folly6detailL39unique_hash_key_algo_strong_sha256_initEv.exit
  %.idx = shl nuw nsw i64 %3, 4
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 %.idx
  %i.i = icmp eq i64 %3, 0
  br i1 %i.i, label %_ZN5folly6detailL26unique_hash_key_hash_itemsI14SHA256state_stPFiPS2_PKvmEEEvT0_PT_St4spanIKNS0_20unique_hash_key_itemELm18446744073709551615EE.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.j
  %.sroa.04.09 = phi ptr [ %2, %.lr.ph ], [ %i.p, %bb.j ] ; 3 uses
  %.sroa.0.0.copyload = load ptr, ptr %.sroa.04.09, align 8, !tbaa !13
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.04.09, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  %i.j = and i64 %.sroa.4.0.copyload, 9223372036854775807 ; 2 uses
  %.lobit.i = lshr i64 %.sroa.4.0.copyload, 63
  %i.k = trunc nuw nsw i64 %.lobit.i to i8
  store i64 %i.j, ptr %4, align 8
  store i8 %i.k, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.l = icmp slt i64 %.sroa.4.0.copyload, 0
  br i1 %i.l, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.m = invoke noundef i32 @SHA256_Update(ptr noundef nonnull %5, ptr noundef nonnull %4, i64 noundef 8)
          to label %._crit_edge unwind label %bb.k ; 0 uses

._crit_edge:                                      ; preds = %bb.h
  %.pre = load i64, ptr %4, align 8, !tbaa !16
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge, %bb.g
  %i.n = phi i64 [ %.pre, %._crit_edge ], [ %i.j, %bb.g ]
  %i.o = invoke noundef i32 @SHA256_Update(ptr noundef nonnull %5, ptr noundef %.sroa.0.0.copyload, i64 noundef %i.n)
          to label %bb.j unwind label %bb.k       ; 0 uses

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.04.09, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.h
  br i1 %i.q, label %_ZN5folly6detailL26unique_hash_key_hash_itemsI14SHA256state_stPFiPS2_PKvmEEEvT0_PT_St4spanIKNS0_20unique_hash_key_itemELm18446744073709551615EE.exit, label %bb.g

bb.k:                                             ; preds = %bb.i, %bb.h
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #11
  unreachable

_ZN5folly6detailL26unique_hash_key_hash_itemsI14SHA256state_stPFiPS2_PKvmEEEvT0_PT_St4spanIKNS0_20unique_hash_key_itemELm18446744073709551615EE.exit: ; preds = %bb.j, %bb.f
  %i.t = invoke i32 @SHA256_Update(ptr noundef nonnull %5, ptr noundef nonnull @_ZZN5folly6detailL39unique_hash_key_algo_strong_sha256_initEvE6object, i64 noundef 32)
          to label %bb.l unwind label %bb.n       ; 0 uses

bb.l:                                             ; preds = %_ZN5folly6detailL26unique_hash_key_hash_itemsI14SHA256state_stPFiPS2_PKvmEEEvT0_PT_St4spanIKNS0_20unique_hash_key_itemELm18446744073709551615EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.u = invoke i32 @SHA256_Final(ptr noundef nonnull %i.a, ptr noundef nonnull %5)
          to label %bb.m unwind label %bb.n       ; 0 uses

bb.m:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %0, ptr noundef nonnull align 16 dereferenceable(32) %i.a, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  ret void

bb.n:                                             ; preds = %bb.l, %_ZN5folly6detailL26unique_hash_key_hash_itemsI14SHA256state_stPFiPS2_PKvmEEEvT0_PT_St4spanIKNS0_20unique_hash_key_itemELm18446744073709551615EE.exit, %_ZN5folly6detailL39unique_hash_key_algo_strong_sha256_initEv.exit
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %bb.e, %bb.n
  %eh.lpad-body = phi { ptr, i32 } [ %i.v, %bb.n ], [ %i.f, %bb.e ]
  %i.w = extractvalue { ptr, i32 } %eh.lpad-body, 0
  call void @__clang_call_terminate(ptr %i.w) #11
  unreachable
}

; Function Attrs: nounwind
declare i32 @getpid() local_unnamed_addr #8

; Function Attrs: nounwind
declare i64 @getauxval(i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #9

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { cold nofree noreturn }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nofree nounwind }
attributes #7 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #10 = { nounwind }
attributes #11 = { noreturn nounwind }
attributes #12 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 7, !"openmp", i32 51}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!7 = !{!8, !9, i64 0}
!8 = !{!"__libc_errno", !9, i64 0}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C++ TBAA"}
!12 = !{!"branch_weights", i32 1, i32 1048575}
!13 = !{!14, !14, i64 0}
!14 = !{!"p1 omnipotent char", !15, i64 0}
!15 = !{!"any pointer", !10, i64 0}
!16 = !{!17, !17, i64 0}
!17 = !{!"long", !10, i64 0}
!18 = !{!10, !10, i64 0}
!19 = !{!9, !9, i64 0}
end_hunk_0
