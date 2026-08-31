Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/allocator?download=true
inline.NumInlined: 175
inline.NumDeleted: 51
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@_ZTVN4ncnn9AllocatorE = hidden local_unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN4ncnn9AllocatorE, ptr @_ZN4ncnn9AllocatorD2Ev, ptr @_ZN4ncnn9AllocatorD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, align 8
@_ZTIN4ncnn9AllocatorE = hidden constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN4ncnn9AllocatorE }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN4ncnn9AllocatorE = hidden constant [18 x i8] c"N4ncnn9AllocatorE\00", align 1
@_ZTVN4ncnn13PoolAllocatorE = hidden constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN4ncnn13PoolAllocatorE, ptr @_ZN4ncnn13PoolAllocatorD2Ev, ptr @_ZN4ncnn13PoolAllocatorD0Ev, ptr @_ZN4ncnn13PoolAllocator10fastMallocEm, ptr @_ZN4ncnn13PoolAllocator8fastFreeEPv] }, align 8
@_ZTIN4ncnn13PoolAllocatorE = hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4ncnn13PoolAllocatorE, ptr @_ZTIN4ncnn9AllocatorE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN4ncnn13PoolAllocatorE = hidden constant [23 x i8] c"N4ncnn13PoolAllocatorE\00", align 1
@_ZTVN4ncnn21UnlockedPoolAllocatorE = hidden constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN4ncnn21UnlockedPoolAllocatorE, ptr @_ZN4ncnn21UnlockedPoolAllocatorD2Ev, ptr @_ZN4ncnn21UnlockedPoolAllocatorD0Ev, ptr @_ZN4ncnn21UnlockedPoolAllocator10fastMallocEm, ptr @_ZN4ncnn21UnlockedPoolAllocator8fastFreeEPv] }, align 8
@_ZTIN4ncnn21UnlockedPoolAllocatorE = hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4ncnn21UnlockedPoolAllocatorE, ptr @_ZTIN4ncnn9AllocatorE }, align 8
@_ZTSN4ncnn21UnlockedPoolAllocatorE = hidden constant [31 x i8] c"N4ncnn21UnlockedPoolAllocatorE\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [48 x i8] c"FATAL ERROR! pool allocator destroyed too early\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"%p still in use\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"invalid size compare ratio %f\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"FATAL ERROR! pool allocator get wild %p\00", align 1
@.str.5 = private unnamed_addr constant [57 x i8] c"FATAL ERROR! unlocked pool allocator destroyed too early\00", align 1
@.str.6 = private unnamed_addr constant [49 x i8] c"FATAL ERROR! unlocked pool allocator get wild %p\00", align 1

@_ZN4ncnn9AllocatorD1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN4ncnn9AllocatorD2Ev
@_ZN4ncnn13PoolAllocatorC1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN4ncnn13PoolAllocatorC2Ev
@_ZN4ncnn13PoolAllocatorD1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN4ncnn13PoolAllocatorD2Ev
@_ZN4ncnn13PoolAllocatorC1ERKS0_ = hidden unnamed_addr alias void (ptr, ptr), ptr @_ZN4ncnn13PoolAllocatorC2ERKS0_
@_ZN4ncnn21UnlockedPoolAllocatorC1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN4ncnn21UnlockedPoolAllocatorC2Ev
@_ZN4ncnn21UnlockedPoolAllocatorD1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN4ncnn21UnlockedPoolAllocatorD2Ev
@_ZN4ncnn21UnlockedPoolAllocatorC1ERKS0_ = hidden unnamed_addr alias void (ptr, ptr), ptr @_ZN4ncnn21UnlockedPoolAllocatorC2ERKS0_

; Function Attrs: cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable
define hidden void @_ZN4ncnn9AllocatorD0Ev(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @llvm.trap() #15
  unreachable
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4ncnn13PoolAllocatorD0Ev(ptr noundef nonnull align 8 dereferenceable(16) initializes((0, 8)) %0) unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZN4ncnn13PoolAllocatorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #16
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #17
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN4ncnn13PoolAllocator10fastMallocEm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 11 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !9
  %i.d = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.c) #16 ; 0 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !9    ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 96 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !14   ; 6 uses
  %.not5258 = icmp eq ptr %i.g, %i.f
  br i1 %.not5258, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %.sroa.033.061 = phi ptr [ %i.g, %.lr.ph ], [ %i.u, %bb.d ] ; 7 uses
  %.sroa.029.060 = phi ptr [ %i.g, %.lr.ph ], [ %spec.select51, %bb.d ] ; 2 uses
  %.sroa.025.059 = phi ptr [ %i.g, %.lr.ph ], [ %spec.select, %bb.d ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.033.061, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !17   ; 5 uses
  %.not7 = icmp ult i64 %i.j, %1
  br i1 %.not7, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load i32, ptr %i.h, align 8, !tbaa !20
  %i.l = zext i32 %i.k to i64
  %i.m = mul i64 %i.j, %i.l
  %i.n = lshr i64 %i.m, 8
  %.not8 = icmp ugt i64 %i.n, %1
  br i1 %.not8, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.025.059, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !17
  %i.q = icmp ult i64 %i.j, %i.p
  %spec.select = select i1 %i.q, ptr %.sroa.033.061, ptr %.sroa.025.059 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.029.060, i64 16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !17
  %i.t = icmp ugt i64 %i.j, %i.s
  %spec.select51 = select i1 %i.t, ptr %.sroa.033.061, ptr %.sroa.029.060 ; 2 uses
  %i.u = load ptr, ptr %.sroa.033.061, align 8, !tbaa !14 ; 2 uses
  %.not52 = icmp eq ptr %i.u, %i.f
  br i1 %.not52, label %._crit_edge, label %bb.b, !llvm.loop !27

bb.e:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.033.061, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !29   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 112 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !30
  %i.z = add i64 %i.y, -1
  store i64 %i.z, ptr %i.x, align 8, !tbaa !30
  tail call void @_ZNSt8__detail15_List_node_base9_M_unhookEv(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.033.061) #16
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.033.061, i64 noundef 32) #17
  %i.aa = load ptr, ptr %i.b, align 8, !tbaa !9
  %i.ab = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.aa) #16 ; 0 uses
  %i.ac = load ptr, ptr %i.b, align 8, !tbaa !9
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %i.ae = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.ad) #16 ; 0 uses
  %i.af = load ptr, ptr %i.b, align 8, !tbaa !9   ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 120
  %2 = ptrtoint ptr %i.w to i64
  %i.ah = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #18 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store i64 %i.j, ptr %i.ai, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  store i64 %2, ptr %.sroa.418.0..sroa_idx, align 8
  tail call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %i.ag) #16
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 136 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !30
  %i.al = add i64 %i.ak, 1
  store i64 %i.al, ptr %i.aj, align 8, !tbaa !30
  %i.am = load ptr, ptr %i.b, align 8, !tbaa !9
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  %i.ao = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.an) #16 ; 0 uses
  br label %bb.j

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %.sroa.025.0.lcssa = phi ptr [ %i.g, %bb.a ], [ %spec.select, %bb.d ] ; 4 uses
  %.sroa.029.0.lcssa = phi ptr [ %i.g, %bb.a ], [ %spec.select51, %bb.d ] ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !30 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !31
  %.not = icmp ult i64 %i.aq, %i.as
  br i1 %.not, label %_ZN4ncnnL10fastMallocEm.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.029.0.lcssa, i64 16
  %i.au = load i64, ptr %i.at, align 8, !tbaa !17
  %i.av = icmp ult i64 %i.au, %1
  br i1 %i.av, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.025.0.lcssa, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !29 ; 2 uses
  %.not.i9 = icmp eq ptr %i.ax, null
  br i1 %.not.i9, label %.sink.split, label %.sink.split.sink.split

bb.h:                                             ; preds = %bb.f
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.025.0.lcssa, i64 16
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !17
  %i.ba = icmp ugt i64 %i.az, %1
  br i1 %i.ba, label %bb.i, label %_ZN4ncnnL10fastMallocEm.exit

bb.i:                                             ; preds = %bb.h
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.029.0.lcssa, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !29 ; 2 uses
  %.not.i = icmp eq ptr %i.bc, null
  br i1 %.not.i, label %.sink.split, label %.sink.split.sink.split

.sink.split.sink.split:                           ; preds = %bb.i, %bb.g
  %.sink84 = phi ptr [ %i.ax, %bb.g ], [ %i.bc, %bb.i ]
  %.sroa.025.0.lcssa.sink81.ph = phi ptr [ %.sroa.025.0.lcssa, %bb.g ], [ %.sroa.029.0.lcssa, %bb.i ]
  tail call void @free(ptr noundef nonnull %.sink84) #16
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !9   ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 112
  %.pre66 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !30
  br label %.sink.split

.sink.split:                                      ; preds = %.sink.split.sink.split, %bb.i, %bb.g
  %.sink = phi ptr [ %i.e, %bb.i ], [ %i.e, %bb.g ], [ %.pre, %.sink.split.sink.split ]
  %.sink83 = phi i64 [ %i.aq, %bb.i ], [ %i.aq, %bb.g ], [ %.pre66, %.sink.split.sink.split ]
  %.sroa.025.0.lcssa.sink81 = phi ptr [ %.sroa.029.0.lcssa, %bb.i ], [ %.sroa.025.0.lcssa, %bb.g ], [ %.sroa.025.0.lcssa.sink81.ph, %.sink.split.sink.split ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sink, i64 112
  %i.be = add i64 %.sink83, -1
  store i64 %i.be, ptr %i.bd, align 8, !tbaa !30
  tail call void @_ZNSt8__detail15_List_node_base9_M_unhookEv(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.025.0.lcssa.sink81) #16
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.025.0.lcssa.sink81, i64 noundef 32) #17
  br label %_ZN4ncnnL10fastMallocEm.exit

_ZN4ncnnL10fastMallocEm.exit:                     ; preds = %.sink.split, %bb.h, %._crit_edge
  %i.bf = load ptr, ptr %i.b, align 8, !tbaa !9
  %i.bg = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.bf) #16 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store ptr null, ptr %i.a, align 8, !tbaa !32
  %i.bh = add i64 %1, 64
  %i.bi = call i32 @posix_memalign(ptr noundef nonnull %i.a, i64 noundef 64, i64 noundef %i.bh) #16
  %.not.i11 = icmp eq i32 %i.bi, 0
  %.pre70 = load ptr, ptr %i.a, align 8
  %i.bj = select i1 %.not.i11, ptr %.pre70, ptr null ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.bk = load ptr, ptr %i.b, align 8, !tbaa !9
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 40
  %i.bm = call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.bl) #16 ; 0 uses
  %i.bn = load ptr, ptr %i.b, align 8, !tbaa !9   ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 120
  %3 = ptrtoint ptr %i.bj to i64
  %i.bp = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #18 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  store i64 %1, ptr %i.bq, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  store i64 %3, ptr %.sroa.4.0..sroa_idx, align 8
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.bp, ptr noundef nonnull align 8 dereferenceable(24) %i.bo) #16
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 136 ; 2 uses
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !30
  %i.bt = add i64 %i.bs, 1
  store i64 %i.bt, ptr %i.br, align 8, !tbaa !30
  %i.bu = load ptr, ptr %i.b, align 8, !tbaa !9
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 40
  %i.bw = call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.bv) #16 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.e, %_ZN4ncnnL10fastMallocEm.exit
  %.2 = phi ptr [ %i.w, %bb.e ], [ %i.bj, %_ZN4ncnnL10fastMallocEm.exit ]
  ret ptr %.2
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ncnn13PoolAllocator8fastFreeEPv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.c) #16 ; 0 uses
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !9    ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 120 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.sroa.03.0.in = phi ptr [ %i.f, %bb.a ], [ %.sroa.03.0, %bb.c ]
  %.sroa.03.0 = load ptr, ptr %.sroa.03.0.in, align 8, !tbaa !14 ; 6 uses
  %.not = icmp eq ptr %.sroa.03.0, %i.f
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.03.0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !29
  %i.i = icmp eq ptr %i.h, %1
  br i1 %i.i, label %bb.d, label %bb.b, !llvm.loop !33

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.03.0, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !17
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 136 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !30
  %i.n = add i64 %i.m, -1
  store i64 %i.n, ptr %i.l, align 8, !tbaa !30
  tail call void @_ZNSt8__detail15_List_node_base9_M_unhookEv(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.03.0) #16
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.03.0, i64 noundef 32) #17
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !9
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.q = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.p) #16 ; 0 uses
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !9
  %i.s = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.r) #16 ; 0 uses
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !9    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 96
  %2 = ptrtoint ptr %1 to i64
  %i.v = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #18 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i64 %i.k, ptr %i.w, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store i64 %2, ptr %.sroa.4.0..sroa_idx, align 8
  tail call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %i.u) #16
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 112 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !30
  %i.z = add i64 %i.y, 1
  store i64 %i.z, ptr %i.x, align 8, !tbaa !30
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !9
  %i.ab = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.aa) #16 ; 0 uses
  br label %_ZN4ncnnL8fastFreeEPv.exit

bb.e:                                             ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.ad = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ac) #16 ; 0 uses
  %i.ae = load ptr, ptr @stderr, align 8, !tbaa !34
  %i.af = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ae, ptr noundef nonnull @.str.4, ptr noundef %1) #19 ; 0 uses
  %i.ag = load ptr, ptr @stderr, align 8, !tbaa !34
  %fputc = tail call i32 @fputc(i32 10, ptr %i.ag) ; 0 uses
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %_ZN4ncnnL8fastFreeEPv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @free(ptr noundef nonnull %1) #16
  br label %_ZN4ncnnL8fastFreeEPv.exit

_ZN4ncnnL8fastFreeEPv.exit:                       ; preds = %bb.f, %bb.e, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4ncnn21UnlockedPoolAllocatorD0Ev(ptr noundef nonnull align 8 dereferenceable(16) initializes((0, 8)) %0) unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZN4ncnn21UnlockedPoolAllocatorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #16
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #17
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN4ncnn21UnlockedPoolAllocator10fastMallocEm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !36   ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !14   ; 6 uses
  %.not5258 = icmp eq ptr %i.e, %i.d
  br i1 %.not5258, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.sroa.033.061 = phi ptr [ %i.r, %bb.c ], [ %i.e, %bb.a ] ; 7 uses
  %.sroa.029.060 = phi ptr [ %spec.select, %bb.c ], [ %i.e, %bb.a ] ; 2 uses
  %.sroa.025.059 = phi ptr [ %spec.select51, %bb.c ], [ %i.e, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.033.061, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !17   ; 5 uses
  %.not7 = icmp ult i64 %i.g, %1
  br i1 %.not7, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.h = load i32, ptr %i.c, align 8, !tbaa !39
  %i.i = zext i32 %i.h to i64
  %i.j = mul i64 %i.g, %i.i
  %i.k = lshr i64 %i.j, 8
  %.not8 = icmp ugt i64 %i.k, %1
  br i1 %.not8, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.029.060, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !17
  %i.n = icmp ugt i64 %i.g, %i.m
  %spec.select = select i1 %i.n, ptr %.sroa.033.061, ptr %.sroa.029.060 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.025.059, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !17
  %i.q = icmp ult i64 %i.g, %i.p
  %spec.select51 = select i1 %i.q, ptr %.sroa.033.061, ptr %.sroa.025.059 ; 2 uses
  %i.r = load ptr, ptr %.sroa.033.061, align 8, !tbaa !14 ; 2 uses
  %.not52 = icmp eq ptr %i.r, %i.d
  br i1 %.not52, label %._crit_edge, label %.lr.ph, !llvm.loop !41

bb.d:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.033.061, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !29   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !30
  %i.w = add i64 %i.v, -1
  store i64 %i.w, ptr %i.u, align 8, !tbaa !30
  tail call void @_ZNSt8__detail15_List_node_base9_M_unhookEv(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.033.061) #16
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.033.061, i64 noundef 32) #17
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !36   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %2 = ptrtoint ptr %i.t to i64
  %i.z = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #18 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store i64 %i.g, ptr %i.aa, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  store i64 %2, ptr %.sroa.418.0..sroa_idx, align 8
  tail call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %i.y) #16
  br label %bb.i

._crit_edge:                                      ; preds = %bb.c, %bb.a
  %.sroa.025.0.lcssa = phi ptr [ %i.e, %bb.a ], [ %spec.select51, %bb.c ] ; 4 uses
  %.sroa.029.0.lcssa = phi ptr [ %i.e, %bb.a ], [ %spec.select, %bb.c ] ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !30 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !42
  %.not = icmp ult i64 %i.ac, %i.ae
  br i1 %.not, label %_ZN4ncnnL10fastMallocEm.exit, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.029.0.lcssa, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !17
  %i.ah = icmp ult i64 %i.ag, %1
  br i1 %i.ah, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.025.0.lcssa, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !29 ; 2 uses
  %.not.i9 = icmp eq ptr %i.aj, null
  br i1 %.not.i9, label %.sink.split, label %.sink.split.sink.split

bb.g:                                             ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.025.0.lcssa, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !17
  %i.am = icmp ugt i64 %i.al, %1
  br i1 %i.am, label %bb.h, label %_ZN4ncnnL10fastMallocEm.exit

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.029.0.lcssa, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !29 ; 2 uses
  %.not.i = icmp eq ptr %i.ao, null
  br i1 %.not.i, label %.sink.split, label %.sink.split.sink.split

.sink.split.sink.split:                           ; preds = %bb.h, %bb.f
  %.sink89 = phi ptr [ %i.aj, %bb.f ], [ %i.ao, %bb.h ]
  %.sroa.025.0.lcssa.sink81.ph = phi ptr [ %.sroa.025.0.lcssa, %bb.f ], [ %.sroa.029.0.lcssa, %bb.h ]
  tail call void @free(ptr noundef nonnull %.sink89) #16
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !36  ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 32
  %.pre66 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !30
  br label %.sink.split

.sink.split:                                      ; preds = %.sink.split.sink.split, %bb.h, %bb.f
  %.sink = phi ptr [ %i.c, %bb.h ], [ %i.c, %bb.f ], [ %.pre, %.sink.split.sink.split ]
  %.sink83 = phi i64 [ %i.ac, %bb.h ], [ %i.ac, %bb.f ], [ %.pre66, %.sink.split.sink.split ]
  %.sroa.025.0.lcssa.sink81 = phi ptr [ %.sroa.029.0.lcssa, %bb.h ], [ %.sroa.025.0.lcssa, %bb.f ], [ %.sroa.025.0.lcssa.sink81.ph, %.sink.split.sink.split ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sink, i64 32
  %i.aq = add i64 %.sink83, -1
  store i64 %i.aq, ptr %i.ap, align 8, !tbaa !30
  tail call void @_ZNSt8__detail15_List_node_base9_M_unhookEv(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.025.0.lcssa.sink81) #16
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.025.0.lcssa.sink81, i64 noundef 32) #17
  br label %_ZN4ncnnL10fastMallocEm.exit

_ZN4ncnnL10fastMallocEm.exit:                     ; preds = %.sink.split, %bb.g, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store ptr null, ptr %i.a, align 8, !tbaa !32
  %i.ar = add i64 %1, 64
  %i.as = call i32 @posix_memalign(ptr noundef nonnull %i.a, i64 noundef 64, i64 noundef %i.ar) #16
  %.not.i11 = icmp eq i32 %i.as, 0
  %.pre70 = load ptr, ptr %i.a, align 8
  %i.at = select i1 %.not.i11, ptr %.pre70, ptr null ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.au = load ptr, ptr %i.b, align 8, !tbaa !36  ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 40
  %3 = ptrtoint ptr %i.at to i64
  %i.aw = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #18 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store i64 %1, ptr %i.ax, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  store i64 %3, ptr %.sroa.4.0..sroa_idx, align 8
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.aw, ptr noundef nonnull align 8 dereferenceable(24) %i.av) #16
  br label %bb.i

bb.i:                                             ; preds = %bb.d, %_ZN4ncnnL10fastMallocEm.exit
  %.sink88 = phi ptr [ %i.x, %bb.d ], [ %i.au, %_ZN4ncnnL10fastMallocEm.exit ]
  %.2 = phi ptr [ %i.t, %bb.d ], [ %i.at, %_ZN4ncnnL10fastMallocEm.exit ]
  %i.ay = getelementptr inbounds nuw i8, ptr %.sink88, i64 56 ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !30
  %i.ba = add i64 %i.az, 1
  store i64 %i.ba, ptr %i.ay, align 8, !tbaa !30
  ret ptr %.2
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ncnn21UnlockedPoolAllocator8fastFreeEPv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.sroa.03.0.in = phi ptr [ %i.c, %bb.a ], [ %.sroa.03.0, %bb.c ]
  %.sroa.03.0 = load ptr, ptr %.sroa.03.0.in, align 8, !tbaa !14 ; 6 uses
  %.not = icmp eq ptr %.sroa.03.0, %i.c
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.03.0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !29
  %i.f = icmp eq ptr %i.e, %1
  br i1 %i.f, label %bb.d, label %bb.b, !llvm.loop !43

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.03.0, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !17
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !30
  %i.k = add i64 %i.j, -1
  store i64 %i.k, ptr %i.i, align 8, !tbaa !30
  tail call void @_ZNSt8__detail15_List_node_base9_M_unhookEv(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.03.0) #16
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.03.0, i64 noundef 32) #17
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !36   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %2 = ptrtoint ptr %1 to i64
  %i.n = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #18 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 %i.h, ptr %i.o, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store i64 %2, ptr %.sroa.4.0..sroa_idx, align 8
  tail call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.m) #16
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !30
  %i.r = add i64 %i.q, 1
  store i64 %i.r, ptr %i.p, align 8, !tbaa !30
  br label %_ZN4ncnnL8fastFreeEPv.exit

bb.e:                                             ; preds = %bb.b
  %i.s = load ptr, ptr @stderr, align 8, !tbaa !34
  %i.t = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.s, ptr noundef nonnull @.str.6, ptr noundef %1) #19 ; 0 uses
  %i.u = load ptr, ptr @stderr, align 8, !tbaa !34
  %fputc = tail call i32 @fputc(i32 10, ptr %i.u) ; 0 uses
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %_ZN4ncnnL8fastFreeEPv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @free(ptr noundef nonnull %1) #16
  br label %_ZN4ncnnL8fastFreeEPv.exit

_ZN4ncnnL8fastFreeEPv.exit:                       ; preds = %bb.f, %bb.e, %bb.d
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @_ZN4ncnn9AllocatorD2Ev(ptr nofree nonnull readnone align 8 captures(none) dead_on_return(8) %0) unnamed_addr #3 align 2 {
bb.a:
  ret void
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #4

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ncnn13PoolAllocatorC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4ncnn13PoolAllocatorE, i64 16), ptr %0, align 8, !tbaa !44
  %i.a = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #18 ; 11 uses
  %i.b = tail call i32 @pthread_mutex_init(ptr noundef nonnull align 8 dereferenceable(144) %i.a, ptr noundef null) #16 ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.d = tail call i32 @pthread_mutex_init(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef null) #16 ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 96 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store ptr %i.e, ptr %i.f, align 8, !tbaa !46
  store ptr %i.e, ptr %i.e, align 8, !tbaa !14
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store i64 0, ptr %i.g, align 8, !tbaa !47
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 120 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  store ptr %i.h, ptr %i.i, align 8, !tbaa !46
  store ptr %i.h, ptr %i.h, align 8, !tbaa !14
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  store i64 0, ptr %i.j, align 8, !tbaa !47
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.k, align 8, !tbaa !9
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store i32 0, ptr %i.l, align 8, !tbaa !20
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store i64 10, ptr %i.m, align 8, !tbaa !31
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #5

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @pthread_mutex_init(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare i32 @pthread_mutex_destroy(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4ncnn13PoolAllocatorD2Ev(ptr nofree noundef nonnull align 8 captures(none) dead_on_return(16) dereferenceable(16) initializes((0, 8)) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4ncnn13PoolAllocatorE, i64 16), ptr %0, align 8, !tbaa !44
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9
  %i.c = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #16 ; 0 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !9    ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 96 ; 3 uses
  %.sroa.02.06.i = load ptr, ptr %i.e, align 8, !tbaa !14 ; 3 uses
  %.not7.i = icmp eq ptr %.sroa.02.06.i, %i.e
  br i1 %.not7.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZN4ncnnL8fastFreeEPv.exit.i
  %i.f = phi ptr [ %i.i, %_ZN4ncnnL8fastFreeEPv.exit.i ], [ %i.d, %bb.a ]
  %.sroa.02.08.i = phi ptr [ %.sroa.02.0.i, %_ZN4ncnnL8fastFreeEPv.exit.i ], [ %.sroa.02.06.i, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.02.08.i, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !29   ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_ZN4ncnnL8fastFreeEPv.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  tail call void @free(ptr noundef nonnull %i.h) #16
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !9
  br label %_ZN4ncnnL8fastFreeEPv.exit.i

_ZN4ncnnL8fastFreeEPv.exit.i:                     ; preds = %bb.b, %.lr.ph.i
  %i.i = phi ptr [ %i.f, %.lr.ph.i ], [ %.pre.i, %bb.b ] ; 3 uses
  %.sroa.02.0.i = load ptr, ptr %.sroa.02.08.i, align 8, !tbaa !14 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 96 ; 3 uses
  %.not.i = icmp eq ptr %.sroa.02.0.i, %i.j
  br i1 %.not.i, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !48

._crit_edge.loopexit.i:                           ; preds = %_ZN4ncnnL8fastFreeEPv.exit.i
  %.pre12.i = load ptr, ptr %i.j, align 8, !tbaa !14
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.a
  %i.k = phi ptr [ %.sroa.02.06.i, %bb.a ], [ %.pre12.i, %._crit_edge.loopexit.i ] ; 2 uses
  %.lcssa5.i = phi ptr [ %i.d, %bb.a ], [ %i.i, %._crit_edge.loopexit.i ] ; 3 uses
  %.lcssa.i = phi ptr [ %i.e, %bb.a ], [ %i.j, %._crit_edge.loopexit.i ] ; 5 uses
  %.not8.i.i.i = icmp eq ptr %i.k, %.lcssa.i
  br i1 %.not8.i.i.i, label %bb.c, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge.i, %.lr.ph.i.i.i
  %.09.i.i.i = phi ptr [ %i.l, %.lr.ph.i.i.i ], [ %i.k, %._crit_edge.i ] ; 2 uses
  %i.l = load ptr, ptr %.09.i.i.i, align 8, !tbaa !14 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.09.i.i.i, i64 noundef 32) #17
  %.not.i.i.i = icmp eq ptr %i.l, %.lcssa.i
  br i1 %.not.i.i.i, label %_ZNSt7__cxx114listISt4pairImPvESaIS3_EE5clearEv.exit.loopexit.i, label %.lr.ph.i.i.i, !llvm.loop !49

_ZNSt7__cxx114listISt4pairImPvESaIS3_EE5clearEv.exit.loopexit.i: ; preds = %.lr.ph.i.i.i
  %.pre13.i = load ptr, ptr %i.a, align 8, !tbaa !9
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt7__cxx114listISt4pairImPvESaIS3_EE5clearEv.exit.loopexit.i, %._crit_edge.i
  %i.m = phi ptr [ %.pre13.i, %_ZNSt7__cxx114listISt4pairImPvESaIS3_EE5clearEv.exit.loopexit.i ], [ %.lcssa5.i, %._crit_edge.i ]
  %i.n = getelementptr inbounds nuw i8, ptr %.lcssa5.i, i64 104
  store ptr %.lcssa.i, ptr %i.n, align 8, !tbaa !46
  store ptr %.lcssa.i, ptr %.lcssa.i, align 8, !tbaa !14
  %i.o = getelementptr inbounds nuw i8, ptr %.lcssa5.i, i64 112
  store i64 0, ptr %i.o, align 8, !tbaa !47
  %i.p = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.m) #16 ; 0 uses
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !9    ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 120 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !14   ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.r
  br i1 %i.t, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = load ptr, ptr @stderr, align 8, !tbaa !34
  %i.v = tail call i64 @fwrite(ptr nonnull @.str, i64 47, i64 1, ptr %i.u) #20 ; 0 uses
  %i.w = load ptr, ptr @stderr, align 8, !tbaa !34
  %fputc = tail call i32 @fputc(i32 10, ptr %i.w) ; 0 uses
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !9    ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 120 ; 2 uses
  %.sroa.07.012 = load ptr, ptr %i.y, align 8, !tbaa !14 ; 2 uses
  %.not13 = icmp eq ptr %.sroa.07.012, %i.y
  br i1 %.not13, label %._crit_edge..thread_crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %.lr.ph
  %.sroa.07.014 = phi ptr [ %.sroa.07.0, %.lr.ph ], [ %.sroa.07.012, %bb.d ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.07.014, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !29
  %i.ab = load ptr, ptr @stderr, align 8, !tbaa !34
  %i.ac = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ab, ptr noundef nonnull @.str.2, ptr noundef %i.aa) #19 ; 0 uses
  %i.ad = load ptr, ptr @stderr, align 8, !tbaa !34
  %fputc2 = tail call i32 @fputc(i32 10, ptr %i.ad) ; 0 uses
  %.sroa.07.0 = load ptr, ptr %.sroa.07.014, align 8, !tbaa !14 ; 2 uses
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !9   ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 120
  %.not = icmp eq ptr %.sroa.07.0, %i.af
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !50

._crit_edge:                                      ; preds = %.lr.ph
  %i.ag = icmp eq ptr %i.ae, null
  br i1 %i.ag, label %bb.e, label %._crit_edge..thread_crit_edge

._crit_edge..thread_crit_edge:                    ; preds = %bb.d, %._crit_edge
  %.lcssa27 = phi ptr [ %i.ae, %._crit_edge ], [ %i.x, %bb.d ] ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.lcssa27, i64 120
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !14
  br label %.thread

.thread:                                          ; preds = %._crit_edge..thread_crit_edge, %bb.c
  %i.ah = phi ptr [ %.pre, %._crit_edge..thread_crit_edge ], [ %i.s, %bb.c ] ; 2 uses
  %i.ai = phi ptr [ %.lcssa27, %._crit_edge..thread_crit_edge ], [ %i.q, %bb.c ] ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 120 ; 2 uses
  %.not8.i.i.i3 = icmp eq ptr %i.ah, %i.aj
  br i1 %.not8.i.i.i3, label %_ZNSt7__cxx1110_List_baseISt4pairImPvESaIS3_EED2Ev.exit.i, label %.lr.ph.i.i.i4

.lr.ph.i.i.i4:                                    ; preds = %.thread, %.lr.ph.i.i.i4
  %.09.i.i.i5 = phi ptr [ %i.ak, %.lr.ph.i.i.i4 ], [ %i.ah, %.thread ] ; 2 uses
  %i.ak = load ptr, ptr %.09.i.i.i5, align 8, !tbaa !14 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.09.i.i.i5, i64 noundef 32) #17
  %.not.i.i.i6 = icmp eq ptr %i.ak, %i.aj
  br i1 %.not.i.i.i6, label %_ZNSt7__cxx1110_List_baseISt4pairImPvESaIS3_EED2Ev.exit.i, label %.lr.ph.i.i.i4, !llvm.loop !49

_ZNSt7__cxx1110_List_baseISt4pairImPvESaIS3_EED2Ev.exit.i: ; preds = %.lr.ph.i.i.i4, %.thread
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 96 ; 3 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !14 ; 2 uses
  %.not8.i.i1.i = icmp eq ptr %i.am, %i.al
  br i1 %.not8.i.i1.i, label %_ZN4ncnn20PoolAllocatorPrivateD2Ev.exit, label %.lr.ph.i.i2.i

.lr.ph.i.i2.i:                                    ; preds = %_ZNSt7__cxx1110_List_baseISt4pairImPvESaIS3_EED2Ev.exit.i, %.lr.ph.i.i2.i
end_hunk_0
