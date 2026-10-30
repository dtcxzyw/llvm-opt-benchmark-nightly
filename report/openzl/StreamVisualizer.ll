Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openzl/original/StreamVisualizer?download=true
inline.NumInlined: 60
inline.NumDeleted: 32
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ZL_StaticErrorInfo_s = type { i32, ptr, ptr, ptr, i32 }
%struct.ZL_ErrorContext = type { ptr, %struct.ZL_GraphContext }
%struct.ZL_GraphContext = type { %struct.ZL_NodeID, %struct.ZL_GraphID, i32, ptr }
%struct.ZL_NodeID = type { i32 }
%struct.ZL_GraphID = type { i32 }
%struct.A1C_MapBuilder = type { ptr, ptr, i64 }

$_ZNSt18bad_variant_accessD0Ev = comdat any

$_ZNKSt18bad_variant_access4whatEv = comdat any

$_ZTISt18bad_variant_access = comdat any

$_ZTSSt18bad_variant_access = comdat any

$_ZTVSt18bad_variant_access = comdat any

@_ZZN6openzl10visualizer6Stream15serializeStreamEP9A1C_ArenaP8A1C_ItemP21ZL_OperationContext_sE22__zl_static_error_info = internal constant %struct.ZL_StaticErrorInfo_s { i32 70, ptr @.str, ptr @.str.1, ptr @.str.2, i32 17 }, align 8
@.str = private unnamed_addr constant [87 x i8] c"Check `(const char*)(const void*)builder.map == (const char*)0' failed: Allocation: %s\00", align 1
@.str.1 = private unnamed_addr constant [89 x i8] c"/opt-bench/work/openzl/openzl/cpp/src/openzl/cpp/experimental/trace/StreamVisualizer.cpp\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"serializeStream\00", align 1
@.str.3 = private unnamed_addr constant [75 x i8] c"Check `%s %s %s' failed where:\0A\09lhs = (unknown) %lld\0A\09rhs = (unknown) %lld\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"(const char*)(const void*)builder.map\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"==\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"(const char*)0\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"\0A\09%s\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"chunkId\00", align 1
@_ZZN6openzl10visualizer6Stream15serializeStreamEP9A1C_ArenaP8A1C_ItemP21ZL_OperationContext_sE22__zl_static_error_info_0 = internal constant %struct.ZL_StaticErrorInfo_s { i32 1, ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 19 }, align 8
@.str.10 = private unnamed_addr constant [21 x i8] c"Forwarding error: %s\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@_ZZN6openzl10visualizer6Stream15serializeStreamEP9A1C_ArenaP8A1C_ItemP21ZL_OperationContext_sE22__zl_static_error_info_1 = internal constant %struct.ZL_StaticErrorInfo_s { i32 1, ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 20 }, align 8
@.str.13 = private unnamed_addr constant [10 x i8] c"outputIdx\00", align 1
@_ZZN6openzl10visualizer6Stream15serializeStreamEP9A1C_ArenaP8A1C_ItemP21ZL_OperationContext_sE22__zl_static_error_info_2 = internal constant %struct.ZL_StaticErrorInfo_s { i32 1, ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 21 }, align 8
@.str.14 = private unnamed_addr constant [9 x i8] c"eltWidth\00", align 1
@_ZZN6openzl10visualizer6Stream15serializeStreamEP9A1C_ArenaP8A1C_ItemP21ZL_OperationContext_sE22__zl_static_error_info_3 = internal constant %struct.ZL_StaticErrorInfo_s { i32 1, ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 22 }, align 8
@.str.15 = private unnamed_addr constant [8 x i8] c"numElts\00", align 1
@_ZZN6openzl10visualizer6Stream15serializeStreamEP9A1C_ArenaP8A1C_ItemP21ZL_OperationContext_sE22__zl_static_error_info_4 = internal constant %struct.ZL_StaticErrorInfo_s { i32 1, ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 23 }, align 8
@.str.16 = private unnamed_addr constant [6 x i8] c"cSize\00", align 1
@_ZZN6openzl10visualizer6Stream15serializeStreamEP9A1C_ArenaP8A1C_ItemP21ZL_OperationContext_sE22__zl_static_error_info_5 = internal constant %struct.ZL_StaticErrorInfo_s { i32 1, ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 24 }, align 8
@.str.17 = private unnamed_addr constant [6 x i8] c"share\00", align 1
@_ZZN6openzl10visualizer6Stream15serializeStreamEP9A1C_ArenaP8A1C_ItemP21ZL_OperationContext_sE22__zl_static_error_info_6 = internal constant %struct.ZL_StaticErrorInfo_s { i32 1, ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 25 }, align 8
@.str.18 = private unnamed_addr constant [12 x i8] c"contentSize\00", align 1
@_ZZN6openzl10visualizer6Stream15serializeStreamEP9A1C_ArenaP8A1C_ItemP21ZL_OperationContext_sE22__zl_static_error_info_7 = internal constant %struct.ZL_StaticErrorInfo_s { i32 1, ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 26 }, align 8
@.str.19 = private unnamed_addr constant [14 x i8] c"streamPreview\00", align 1
@_ZZN6openzl10visualizer6Stream15serializeStreamEP9A1C_ArenaP8A1C_ItemP21ZL_OperationContext_sE22__zl_static_error_info_8 = internal constant %struct.ZL_StaticErrorInfo_s { i32 1, ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 34 }, align 8
@_ZZN6openzl10visualizer6Stream15serializeStreamEP9A1C_ArenaP8A1C_ItemP21ZL_OperationContext_sE22__zl_static_error_info_9 = internal constant %struct.ZL_StaticErrorInfo_s { i32 1, ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 41 }, align 8
@_ZZN6openzl10visualizer6Stream15serializeStreamEP9A1C_ArenaP8A1C_ItemP21ZL_OperationContext_sE22__zl_static_error_info__10_ = internal constant %struct.ZL_StaticErrorInfo_s { i32 1, ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 48 }, align 8
@.str.21 = private unnamed_addr constant [34 x i8] c"std::get: wrong index for variant\00", align 1
@_ZTISt18bad_variant_access = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt18bad_variant_access, ptr @_ZTISt9exception }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSSt18bad_variant_access = linkonce_odr constant [23 x i8] c"St18bad_variant_access\00", comdat, align 1
@_ZTISt9exception = external constant ptr
@_ZTVSt18bad_variant_access = linkonce_odr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTISt18bad_variant_access, ptr @_ZNSt9exceptionD2Ev, ptr @_ZNSt18bad_variant_accessD0Ev, ptr @_ZNKSt18bad_variant_access4whatEv] }, comdat, align 8

; Function Attrs: mustprogress uwtable
define { i32, i64 } @_ZN6openzl10visualizer6Stream15serializeStreamEP9A1C_ArenaP8A1C_ItemP21ZL_OperationContext_s(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %struct.ZL_ErrorContext, align 8    ; 16 uses
  %5 = alloca %struct.A1C_MapBuilder, align 8     ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  store ptr %3, ptr %4, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  call void @A1C_Item_map_builder(ptr dead_on_unwind nonnull writable sret(%struct.A1C_MapBuilder) align 8 %5, ptr noundef %2, i64 noundef 9, ptr noundef %1)
  %i.b = load ptr, ptr %5, align 8, !tbaa !25
  %.not = icmp eq ptr %i.b, null                  ; 2 uses
  br i1 %.not, label %.thread, label %6, !prof !26

.thread:                                          ; preds = %bb.a
  %i.c = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @_ZZN6openzl10visualizer6Stream15serializeStreamEP9A1C_ArenaP8A1C_ItemP21ZL_OperationContext_sE22__zl_static_error_info, ptr noundef nonnull %4, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 17, i32 noundef 70, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i64 noundef 0, i64 noundef 0) ; 2 uses
  %i.d = extractvalue { i32, ptr } %i.c, 0        ; 2 uses
  %i.e = extractvalue { i32, ptr } %i.c, 1        ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.d, ptr %i.e, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8)
  %i.f = ptrtoint ptr %i.e to i64
  br label %6

6:                                                ; preds = %bb.a, %.thread
  %.sroa.0168.0 = phi i32 [ %i.d, %.thread ], [ undef, %bb.a ]
  %.sroa.69.0 = phi i64 [ %i.f, %.thread ], [ undef, %bb.a ]
  br i1 %.not, label %bb.ab, label %bb.b

bb.b:                                             ; preds = %6
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = load i64, ptr %i.g, align 8, !tbaa !47
  %i.i = call { i32, i64 } @_ZN6openzl10visualizer11addIntValueER14A1C_MapBuilderPKcmP21ZL_OperationContext_s(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull @.str.9, i64 noundef %i.h, ptr noundef %3) ; 2 uses
  %i.j = extractvalue { i32, i64 } %i.i, 0        ; 2 uses
  %.not215 = icmp eq i32 %i.j, 0
  br i1 %.not215, label %bb.d, label %bb.c, !prof !48

bb.c:                                             ; preds = %bb.b
  %i.k = extractvalue { i32, i64 } %i.i, 1
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %4, i32 %i.j, ptr %i.l, ptr nonnull @_ZZN6openzl10visualizer6Stream15serializeStreamEP9A1C_ArenaP8A1C_ItemP21ZL_OperationContext_sE22__zl_static_error_info_0, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 19, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.8) ; 2 uses
  %i.n = extractvalue { i32, ptr } %i.m, 0
  %i.o = extractvalue { i32, ptr } %i.m, 1
  %i.p = ptrtoint ptr %i.o to i64
  br label %bb.ab

bb.d:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !49
  %i.s = zext i32 %i.r to i64
  %i.t = call { i32, i64 } @_ZN6openzl10visualizer11addIntValueER14A1C_MapBuilderPKcmP21ZL_OperationContext_s(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull @.str.12, i64 noundef %i.s, ptr noundef %3) ; 2 uses
  %i.u = extractvalue { i32, i64 } %i.t, 0        ; 2 uses
  %.not216 = icmp eq i32 %i.u, 0
  br i1 %.not216, label %bb.f, label %bb.e, !prof !48

bb.e:                                             ; preds = %bb.d
  %i.v = extractvalue { i32, i64 } %i.t, 1
  %i.w = inttoptr i64 %i.v to ptr
  %i.x = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %4, i32 %i.u, ptr %i.w, ptr nonnull @_ZZN6openzl10visualizer6Stream15serializeStreamEP9A1C_ArenaP8A1C_ItemP21ZL_OperationContext_sE22__zl_static_error_info_1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 20, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.8) ; 2 uses
  %i.y = extractvalue { i32, ptr } %i.x, 0
  %i.z = extractvalue { i32, ptr } %i.x, 1
  %i.aa = ptrtoint ptr %i.z to i64
  br label %bb.ab

bb.f:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !50
  %i.ad = call { i32, i64 } @_ZN6openzl10visualizer11addIntValueER14A1C_MapBuilderPKcmP21ZL_OperationContext_s(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull @.str.13, i64 noundef %i.ac, ptr noundef %3) ; 2 uses
  %i.ae = extractvalue { i32, i64 } %i.ad, 0      ; 2 uses
  %.not217 = icmp eq i32 %i.ae, 0
  br i1 %.not217, label %bb.h, label %bb.g, !prof !48

bb.g:                                             ; preds = %bb.f
  %i.af = extractvalue { i32, i64 } %i.ad, 1
  %i.ag = inttoptr i64 %i.af to ptr
  %i.ah = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %4, i32 %i.ae, ptr %i.ag, ptr nonnull @_ZZN6openzl10visualizer6Stream15serializeStreamEP9A1C_ArenaP8A1C_ItemP21ZL_OperationContext_sE22__zl_static_error_info_2, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 21, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.8) ; 2 uses
  %i.ai = extractvalue { i32, ptr } %i.ah, 0
  %i.aj = extractvalue { i32, ptr } %i.ah, 1
  %i.ak = ptrtoint ptr %i.aj to i64
  br label %bb.ab

bb.h:                                             ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.am = load i64, ptr %i.al, align 8, !tbaa !51
  %i.an = call { i32, i64 } @_ZN6openzl10visualizer11addIntValueER14A1C_MapBuilderPKcmP21ZL_OperationContext_s(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull @.str.14, i64 noundef %i.am, ptr noundef %3) ; 2 uses
  %i.ao = extractvalue { i32, i64 } %i.an, 0      ; 2 uses
  %.not218 = icmp eq i32 %i.ao, 0
  br i1 %.not218, label %bb.j, label %bb.i, !prof !48

bb.i:                                             ; preds = %bb.h
  %i.ap = extractvalue { i32, i64 } %i.an, 1
  %i.aq = inttoptr i64 %i.ap to ptr
  %i.ar = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %4, i32 %i.ao, ptr %i.aq, ptr nonnull @_ZZN6openzl10visualizer6Stream15serializeStreamEP9A1C_ArenaP8A1C_ItemP21ZL_OperationContext_sE22__zl_static_error_info_3, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 22, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.8) ; 2 uses
  %i.as = extractvalue { i32, ptr } %i.ar, 0
  %i.at = extractvalue { i32, ptr } %i.ar, 1
  %i.au = ptrtoint ptr %i.at to i64
  br label %bb.ab

bb.j:                                             ; preds = %bb.h
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !52
  %i.ax = call { i32, i64 } @_ZN6openzl10visualizer11addIntValueER14A1C_MapBuilderPKcmP21ZL_OperationContext_s(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull @.str.15, i64 noundef %i.aw, ptr noundef %3) ; 2 uses
  %i.ay = extractvalue { i32, i64 } %i.ax, 0      ; 2 uses
  %.not219 = icmp eq i32 %i.ay, 0
  br i1 %.not219, label %bb.l, label %bb.k, !prof !48

bb.k:                                             ; preds = %bb.j
  %i.az = extractvalue { i32, i64 } %i.ax, 1
  %i.ba = inttoptr i64 %i.az to ptr
  %i.bb = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %4, i32 %i.ay, ptr %i.ba, ptr nonnull @_ZZN6openzl10visualizer6Stream15serializeStreamEP9A1C_ArenaP8A1C_ItemP21ZL_OperationContext_sE22__zl_static_error_info_4, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 23, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.8) ; 2 uses
  %i.bc = extractvalue { i32, ptr } %i.bb, 0
  %i.bd = extractvalue { i32, ptr } %i.bb, 1
  %i.be = ptrtoint ptr %i.bd to i64
  br label %bb.ab

bb.l:                                             ; preds = %bb.j
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !53
  %i.bh = call { i32, i64 } @_ZN6openzl10visualizer11addIntValueER14A1C_MapBuilderPKcmP21ZL_OperationContext_s(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull @.str.16, i64 noundef %i.bg, ptr noundef %3) ; 2 uses
  %i.bi = extractvalue { i32, i64 } %i.bh, 0      ; 2 uses
  %.not220 = icmp eq i32 %i.bi, 0
  br i1 %.not220, label %bb.n, label %bb.m, !prof !48

bb.m:                                             ; preds = %bb.l
  %i.bj = extractvalue { i32, i64 } %i.bh, 1
  %i.bk = inttoptr i64 %i.bj to ptr
  %i.bl = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %4, i32 %i.bi, ptr %i.bk, ptr nonnull @_ZZN6openzl10visualizer6Stream15serializeStreamEP9A1C_ArenaP8A1C_ItemP21ZL_OperationContext_sE22__zl_static_error_info_5, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 24, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.8) ; 2 uses
  %i.bm = extractvalue { i32, ptr } %i.bl, 0
  %i.bn = extractvalue { i32, ptr } %i.bl, 1
  %i.bo = ptrtoint ptr %i.bn to i64
  br label %bb.ab

bb.n:                                             ; preds = %bb.l
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !54
  %i.br = call { i32, i64 } @_ZN6openzl10visualizer13addFloatValueER14A1C_MapBuilderPKcdP21ZL_OperationContext_s(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull @.str.17, double noundef %i.bq, ptr noundef %3) ; 2 uses
  %i.bs = extractvalue { i32, i64 } %i.br, 0      ; 2 uses
  %.not221 = icmp eq i32 %i.bs, 0
  br i1 %.not221, label %bb.p, label %bb.o, !prof !48

bb.o:                                             ; preds = %bb.n
  %i.bt = extractvalue { i32, i64 } %i.br, 1
  %i.bu = inttoptr i64 %i.bt to ptr
  %i.bv = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %4, i32 %i.bs, ptr %i.bu, ptr nonnull @_ZZN6openzl10visualizer6Stream15serializeStreamEP9A1C_ArenaP8A1C_ItemP21ZL_OperationContext_sE22__zl_static_error_info_6, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 25, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.8) ; 2 uses
  %i.bw = extractvalue { i32, ptr } %i.bv, 0
  %i.bx = extractvalue { i32, ptr } %i.bv, 1
  %i.by = ptrtoint ptr %i.bx to i64
  br label %bb.ab

bb.p:                                             ; preds = %bb.n
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !55
  %i.cb = call { i32, i64 } @_ZN6openzl10visualizer11addIntValueER14A1C_MapBuilderPKcmP21ZL_OperationContext_s(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull @.str.18, i64 noundef %i.ca, ptr noundef %3) ; 2 uses
  %i.cc = extractvalue { i32, i64 } %i.cb, 0      ; 2 uses
  %.not222 = icmp eq i32 %i.cc, 0
  br i1 %.not222, label %bb.r, label %bb.q, !prof !48

bb.q:                                             ; preds = %bb.p
  %i.cd = extractvalue { i32, i64 } %i.cb, 1
  %i.ce = inttoptr i64 %i.cd to ptr
  %i.cf = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %4, i32 %i.cc, ptr %i.ce, ptr nonnull @_ZZN6openzl10visualizer6Stream15serializeStreamEP9A1C_ArenaP8A1C_ItemP21ZL_OperationContext_sE22__zl_static_error_info_7, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 26, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.8) ; 2 uses
  %i.cg = extractvalue { i32, ptr } %i.cf, 0
  %i.ch = extractvalue { i32, ptr } %i.cf, 1
  %i.ci = ptrtoint ptr %i.ch to i64
  br label %bb.ab

bb.r:                                             ; preds = %bb.p
  %i.cj = load i32, ptr %i.q, align 4, !tbaa !49
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.cl = load i8, ptr %i.ck, align 8, !tbaa !56  ; 3 uses
  switch i32 %i.cj, label %bb.y [
    i32 8, label %bb.s
    i32 4, label %bb.v
  ]

bb.s:                                             ; preds = %bb.r
  %.not.i.i = icmp eq i8 %i.cl, 2
  br i1 %.not.i.i, label %_ZSt3getISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEJS0_IhSaIhEES0_IlSaIlEES8_EERT_RSt7variantIJDpT0_EE.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cm = call ptr @__cxa_allocate_exception(i64 16) #9 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.cm, align 8, !tbaa !58
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  store ptr @.str.21, ptr %i.cn, align 8, !tbaa !15
  call void @__cxa_throw(ptr nonnull %i.cm, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #10
  unreachable

_ZSt3getISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEJS0_IhSaIhEES0_IlSaIlEES8_EERT_RSt7variantIJDpT0_EE.exit: ; preds = %bb.s
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.cp = call { i32, i64 } @_ZN6openzl10visualizer11addStrArrayEP9A1C_ArenaR14A1C_MapBuilderPKcRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EEP21ZL_OperationContext_s(ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull @.str.19, ptr noundef nonnull align 8 dereferenceable(24) %i.co, ptr noundef %3) ; 2 uses
  %i.cq = extractvalue { i32, i64 } %i.cp, 0      ; 2 uses
  %.not225 = icmp eq i32 %i.cq, 0
  br i1 %.not225, label %bb.ab, label %bb.u, !prof !48

bb.u:                                             ; preds = %_ZSt3getISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEJS0_IhSaIhEES0_IlSaIlEES8_EERT_RSt7variantIJDpT0_EE.exit
  %i.cr = extractvalue { i32, i64 } %i.cp, 1
  %i.cs = inttoptr i64 %i.cr to ptr
  %i.ct = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %4, i32 %i.cq, ptr %i.cs, ptr nonnull @_ZZN6openzl10visualizer6Stream15serializeStreamEP9A1C_ArenaP8A1C_ItemP21ZL_OperationContext_sE22__zl_static_error_info_8, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 34, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.8) ; 2 uses
  %i.cu = extractvalue { i32, ptr } %i.ct, 0
  %i.cv = extractvalue { i32, ptr } %i.ct, 1
  %i.cw = ptrtoint ptr %i.cv to i64
  br label %bb.ab

bb.v:                                             ; preds = %bb.r
  %.not.i.i244 = icmp eq i8 %i.cl, 1
  br i1 %.not.i.i244, label %_ZSt3getISt6vectorIlSaIlEEJS0_IhSaIhEES2_S0_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EEEERT_RSt7variantIJDpT0_EE.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cx = call ptr @__cxa_allocate_exception(i64 16) #9 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.cx, align 8, !tbaa !58
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  store ptr @.str.21, ptr %i.cy, align 8, !tbaa !15
  call void @__cxa_throw(ptr nonnull %i.cx, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #10
  unreachable

_ZSt3getISt6vectorIlSaIlEEJS0_IhSaIhEES2_S0_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EEEERT_RSt7variantIJDpT0_EE.exit: ; preds = %bb.v
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.da = call { i32, i64 } @_ZN6openzl10visualizer11addNumArrayEP9A1C_ArenaR14A1C_MapBuilderPKcRKSt6vectorIlSaIlEEP21ZL_OperationContext_s(ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull @.str.19, ptr noundef nonnull align 8 dereferenceable(24) %i.cz, ptr noundef %3) ; 2 uses
  %i.db = extractvalue { i32, i64 } %i.da, 0      ; 2 uses
  %.not224 = icmp eq i32 %i.db, 0
  br i1 %.not224, label %bb.ab, label %bb.x, !prof !48

bb.x:                                             ; preds = %_ZSt3getISt6vectorIlSaIlEEJS0_IhSaIhEES2_S0_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EEEERT_RSt7variantIJDpT0_EE.exit
  %i.dc = extractvalue { i32, i64 } %i.da, 1
  %i.dd = inttoptr i64 %i.dc to ptr
  %i.de = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %4, i32 %i.db, ptr %i.dd, ptr nonnull @_ZZN6openzl10visualizer6Stream15serializeStreamEP9A1C_ArenaP8A1C_ItemP21ZL_OperationContext_sE22__zl_static_error_info_9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 41, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.8) ; 2 uses
  %i.df = extractvalue { i32, ptr } %i.de, 0
  %i.dg = extractvalue { i32, ptr } %i.de, 1
  %i.dh = ptrtoint ptr %i.dg to i64
  br label %bb.ab

bb.y:                                             ; preds = %bb.r
  %.not.i.i247 = icmp eq i8 %i.cl, 0
  br i1 %.not.i.i247, label %_ZSt3getISt6vectorIhSaIhEEJS2_S0_IlSaIlEES0_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EEEERT_RSt7variantIJDpT0_EE.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.di = call ptr @__cxa_allocate_exception(i64 16) #9 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.di, align 8, !tbaa !58
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  store ptr @.str.21, ptr %i.dj, align 8, !tbaa !15
  call void @__cxa_throw(ptr nonnull %i.di, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #10
  unreachable

_ZSt3getISt6vectorIhSaIhEEJS2_S0_IlSaIlEES0_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EEEERT_RSt7variantIJDpT0_EE.exit: ; preds = %bb.y
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.dl = call { i32, i64 } @_ZN6openzl10visualizer13addBytesArrayEP9A1C_ArenaR14A1C_MapBuilderPKcRKSt6vectorIhSaIhEEP21ZL_OperationContext_s(ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull @.str.19, ptr noundef nonnull align 8 dereferenceable(24) %i.dk, ptr noundef %3) ; 2 uses
  %i.dm = extractvalue { i32, i64 } %i.dl, 0      ; 2 uses
  %.not223 = icmp eq i32 %i.dm, 0
  br i1 %.not223, label %bb.ab, label %bb.aa, !prof !48

bb.aa:                                            ; preds = %_ZSt3getISt6vectorIhSaIhEEJS2_S0_IlSaIlEES0_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EEEERT_RSt7variantIJDpT0_EE.exit
  %i.dn = extractvalue { i32, i64 } %i.dl, 1
  %i.do = inttoptr i64 %i.dn to ptr
  %i.dp = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %4, i32 %i.dm, ptr %i.do, ptr nonnull @_ZZN6openzl10visualizer6Stream15serializeStreamEP9A1C_ArenaP8A1C_ItemP21ZL_OperationContext_sE22__zl_static_error_info__10_, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 48, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.8) ; 2 uses
  %i.dq = extractvalue { i32, ptr } %i.dp, 0
  %i.dr = extractvalue { i32, ptr } %i.dp, 1
  %i.ds = ptrtoint ptr %i.dr to i64
  br label %bb.ab

bb.ab:                                            ; preds = %_ZSt3getISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEJS0_IhSaIhEES0_IlSaIlEES8_EERT_RSt7variantIJDpT0_EE.exit, %_ZSt3getISt6vectorIhSaIhEEJS2_S0_IlSaIlEES0_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EEEERT_RSt7variantIJDpT0_EE.exit, %_ZSt3getISt6vectorIlSaIlEEJS0_IhSaIhEES2_S0_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EEEERT_RSt7variantIJDpT0_EE.exit, %6, %bb.aa, %bb.x, %bb.u, %bb.q, %bb.o, %bb.m, %bb.k, %bb.i, %bb.g, %bb.e, %bb.c
  %.sroa.0168.1 = phi i32 [ %i.n, %bb.c ], [ %i.y, %bb.e ], [ %i.ai, %bb.g ], [ %i.as, %bb.i ], [ %i.bc, %bb.k ], [ %i.bm, %bb.m ], [ %i.bw, %bb.o ], [ %i.cg, %bb.q ], [ %i.cu, %bb.u ], [ %.sroa.0168.0, %6 ], [ %i.df, %bb.x ], [ %i.dq, %bb.aa ], [ 0, %_ZSt3getISt6vectorIlSaIlEEJS0_IhSaIhEES2_S0_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EEEERT_RSt7variantIJDpT0_EE.exit ], [ 0, %_ZSt3getISt6vectorIhSaIhEEJS2_S0_IlSaIlEES0_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EEEERT_RSt7variantIJDpT0_EE.exit ], [ 0, %_ZSt3getISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEJS0_IhSaIhEES0_IlSaIlEES8_EERT_RSt7variantIJDpT0_EE.exit ]
  %.sroa.69.1 = phi i64 [ %i.p, %bb.c ], [ %i.aa, %bb.e ], [ %i.ak, %bb.g ], [ %i.au, %bb.i ], [ %i.be, %bb.k ], [ %i.bo, %bb.m ], [ %i.by, %bb.o ], [ %i.ci, %bb.q ], [ %i.cw, %bb.u ], [ %.sroa.69.0, %6 ], [ %i.dh, %bb.x ], [ %i.ds, %bb.aa ], [ 0, %_ZSt3getISt6vectorIlSaIlEEJS0_IhSaIhEES2_S0_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EEEERT_RSt7variantIJDpT0_EE.exit ], [ 0, %_ZSt3getISt6vectorIhSaIhEEJS2_S0_IlSaIlEES0_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EEEERT_RSt7variantIJDpT0_EE.exit ], [ 0, %_ZSt3getISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEJS0_IhSaIhEES0_IlSaIlEES8_EERT_RSt7variantIJDpT0_EE.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.0168.1, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.69.1, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare void @A1C_Item_map_builder(ptr dead_on_unwind writable sret(%struct.A1C_MapBuilder) align 8, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare { i32, ptr } @ZL_E_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare void @ZL_E_appendToMessage(i32, ptr, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare { i32, i64 } @_ZN6openzl10visualizer11addIntValueER14A1C_MapBuilderPKcmP21ZL_OperationContext_s(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare { i32, ptr } @ZL_E_addFrame(ptr noundef, i32, ptr, ptr, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare { i32, i64 } @_ZN6openzl10visualizer13addFloatValueER14A1C_MapBuilderPKcdP21ZL_OperationContext_s(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, double noundef, ptr noundef) local_unnamed_addr #3

declare { i32, i64 } @_ZN6openzl10visualizer11addStrArrayEP9A1C_ArenaR14A1C_MapBuilderPKcRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EEP21ZL_OperationContext_s(ptr noundef, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #3

declare { i32, i64 } @_ZN6openzl10visualizer11addNumArrayEP9A1C_ArenaR14A1C_MapBuilderPKcRKSt6vectorIlSaIlEEP21ZL_OperationContext_s(ptr noundef, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #3

declare { i32, i64 } @_ZN6openzl10visualizer13addBytesArrayEP9A1C_ArenaR14A1C_MapBuilderPKcRKSt6vectorIhSaIhEEP21ZL_OperationContext_s(ptr noundef, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #3

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #4

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt18bad_variant_accessD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #9
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #11
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNKSt18bad_variant_access4whatEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15
  ret ptr %i.b
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #8

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold noreturn }
attributes #6 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { noreturn }
attributes #11 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"p1 omnipotent char", !11, i64 0}
!13 = !{!"_ZTSSt9exception"}
!14 = !{!"_ZTSSt18bad_variant_access", !13, i64 0, !12, i64 8}
!15 = !{!14, !12, i64 8}
!16 = !{!"p1 _ZTS21ZL_OperationContext_s", !11, i64 0}
!17 = !{!"_ZTS9ZL_NodeID", !8, i64 0}
!18 = !{!"_ZTS10ZL_GraphID", !8, i64 0}
!19 = !{!"_ZTS15ZL_GraphContext", !17, i64 0, !18, i64 4, !8, i64 8, !12, i64 16}
!20 = !{!"_ZTS15ZL_ErrorContext", !16, i64 0, !19, i64 8}
!21 = !{!20, !16, i64 0}
!22 = !{!"p1 _ZTS8A1C_Pair", !11, i64 0}
!23 = !{!"long", !7, i64 0}
!24 = !{!"_ZTS14A1C_MapBuilder", !11, i64 0, !22, i64 8, !23, i64 16}
!25 = !{!24, !11, i64 0}
!26 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!27 = !{!"_ZTS9ZL_DataID", !8, i64 0}
!28 = !{!"_ZTS7ZL_Type", !7, i64 0}
!29 = !{!"double", !7, i64 0}
!30 = !{!"_ZTSNSt12_Vector_baseI9ZL_DataIDSaIS0_EE17_Vector_impl_dataE", !11, i64 0, !11, i64 8, !11, i64 16}
!31 = !{!"_ZTSNSt12_Vector_baseI9ZL_DataIDSaIS0_EE12_Vector_implE", !30, i64 0}
!32 = !{!"_ZTSSt12_Vector_baseI9ZL_DataIDSaIS0_EE", !31, i64 0}
!33 = !{!"_ZTSSt6vectorI9ZL_DataIDSaIS0_EE", !32, i64 0}
!34 = !{!"bool", !7, i64 0}
!35 = !{!"_ZTSSt22_Optional_payload_baseImE", !7, i64 0, !34, i64 8}
!36 = !{!"_ZTSSt17_Optional_payloadImLb1ELb1ELb1EE", !35, i64 0}
!37 = !{!"_ZTSSt14_Optional_baseImLb1ELb1EE", !36, i64 0}
!38 = !{!"_ZTSSt8optionalImE", !37, i64 0}
!39 = !{!"_ZTSNSt8__detail9__variant16_Variant_storageILb0EJSt6vectorIhSaIhEES2_IlSaIlEES2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEEEE", !7, i64 0, !7, i64 24}
!40 = !{!"_ZTSNSt8__detail9__variant15_Copy_ctor_baseILb0EJSt6vectorIhSaIhEES2_IlSaIlEES2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEEEE", !39, i64 0}
!41 = !{!"_ZTSNSt8__detail9__variant15_Move_ctor_baseILb0EJSt6vectorIhSaIhEES2_IlSaIlEES2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEEEE", !40, i64 0}
!42 = !{!"_ZTSNSt8__detail9__variant17_Copy_assign_baseILb0EJSt6vectorIhSaIhEES2_IlSaIlEES2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEEEE", !41, i64 0}
!43 = !{!"_ZTSNSt8__detail9__variant17_Move_assign_baseILb0EJSt6vectorIhSaIhEES2_IlSaIlEES2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEEEE", !42, i64 0}
!44 = !{!"_ZTSNSt8__detail9__variant13_Variant_baseIJSt6vectorIhSaIhEES2_IlSaIlEES2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEEEE", !43, i64 0}
!45 = !{!"_ZTSSt7variantIJSt6vectorIhSaIhEES0_IlSaIlEES0_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EEEE", !44, i64 0}
!46 = !{!"_ZTSN6openzl10visualizer6StreamE", !27, i64 0, !28, i64 4, !23, i64 8, !23, i64 16, !23, i64 24, !23, i64 32, !29, i64 40, !23, i64 48, !23, i64 56, !33, i64 64, !38, i64 88, !38, i64 104, !45, i64 120}
!47 = !{!46, !23, i64 56}
!48 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!49 = !{!46, !28, i64 4}
!50 = !{!46, !23, i64 8}
!51 = !{!46, !23, i64 16}
!52 = !{!46, !23, i64 24}
!53 = !{!46, !23, i64 32}
!54 = !{!46, !29, i64 40}
!55 = !{!46, !23, i64 48}
!56 = !{!39, !7, i64 24}
!57 = !{!"vtable pointer", !6, i64 0}
!58 = !{!57, !57, i64 0}
end_hunk_0
