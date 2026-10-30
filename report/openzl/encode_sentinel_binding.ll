Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openzl/original/encode_sentinel_binding?download=true
inline.NumInlined: 30
inline.NumDeleted: 13
begin_hunk_0
@EI_sentinel.__zl_static_error_info = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 50, [4 x i8] zeroinitializer, ptr @.str.22, ptr @.str.1, ptr @.str.23, i32 84, [4 x i8] zeroinitializer }, align 8
@.str.22 = private unnamed_addr constant [84 x i8] c"Check `indicesParam.paramId != 130' failed: Node parameter invalid: Missing indices\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"EI_sentinel\00", align 1
@.str.24 = private unnamed_addr constant [63 x i8] c"Check `%s %s %s' failed where:\0A\09lhs = (int) %d\0A\09rhs = (int) %d\00", align 1
@.str.25 = private unnamed_addr constant [21 x i8] c"indicesParam.paramId\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"!=\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"130\00", align 1
@.str.28 = private unnamed_addr constant [18 x i8] c"\0A\09Missing indices\00", align 1
@EI_sentinel.__zl_static_error_info.29 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 50, [4 x i8] zeroinitializer, ptr @.str.30, ptr @.str.1, ptr @.str.23, i32 98, [4 x i8] zeroinitializer }, align 8
@.str.30 = private unnamed_addr constant [115 x i8] c"Check `sentinelParam.paramSize != sizeof(uint64_t)' failed: Node parameter invalid: Sentinel value must be 64 bits\00", align 1
@.str.31 = private unnamed_addr constant [24 x i8] c"sentinelParam.paramSize\00", align 1
@.str.32 = private unnamed_addr constant [17 x i8] c"sizeof(uint64_t)\00", align 1
@.str.33 = private unnamed_addr constant [33 x i8] c"\0A\09Sentinel value must be 64 bits\00", align 1
@EI_sentinel.__zl_static_error_info.34 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 70, [4 x i8] zeroinitializer, ptr @.str.9, ptr @.str.1, ptr @.str.23, i32 108, [4 x i8] zeroinitializer }, align 8
@EI_sentinel.__zl_static_error_info.35 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 70, [4 x i8] zeroinitializer, ptr @.str.16, ptr @.str.1, ptr @.str.23, i32 113, [4 x i8] zeroinitializer }, align 8
@EI_sentinel.__zl_static_error_info.36 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 1, [4 x i8] zeroinitializer, ptr @.str.37, ptr @.str.1, ptr @.str.23, i32 124, [4 x i8] zeroinitializer }, align 8
@.str.37 = private unnamed_addr constant [67 x i8] c"Check `rc != 0' failed: Generic: Sentinel encode validation failed\00", align 1
@.str.38 = private unnamed_addr constant [3 x i8] c"rc\00", align 1
@.str.39 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.40 = private unnamed_addr constant [36 x i8] c"\0A\09Sentinel encode validation failed\00", align 1
@EI_sentinel.__zl_static_error_info.41 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 1, [4 x i8] zeroinitializer, ptr @.str.19, ptr @.str.1, ptr @.str.23, i32 128, [4 x i8] zeroinitializer }, align 8
@EI_sentinel.__zl_static_error_info.42 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 1, [4 x i8] zeroinitializer, ptr @.str.19, ptr @.str.1, ptr @.str.23, i32 129, [4 x i8] zeroinitializer }, align 8

; Function Attrs: nounwind uwtable
define { i32, i64 } @EI_sentinel_byte(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.ZL_ErrorContext, align 8    ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #5
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.b = tail call ptr @ZL_Encoder_getOperationContext(ptr noundef %0) #6
  store ptr %i.b, ptr %3, align 8, !tbaa !17
  %i.c = load ptr, ptr %1, align 8, !tbaa !19     ; 3 uses
  %i.d = tail call i64 @ZL_Data_eltWidth(ptr noundef %i.c) #5 ; 3 uses
  %i.e = tail call i64 @ZL_Data_numElts(ptr noundef %i.c) #5 ; 4 uses
  %.not = icmp eq i64 %i.d, 1
  br i1 %.not, label %.thread, label %bb.b, !prof !20

.thread:                                          ; preds = %bb.a
  %i.f = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @EI_sentinel_byte.__zl_static_error_info, ptr noundef nonnull %3, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 41, i32 noundef 55, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i64 noundef 1, i64 noundef 1) #5 ; 2 uses
  %i.g = extractvalue { i32, ptr } %i.f, 0        ; 2 uses
  %i.h = extractvalue { i32, ptr } %i.f, 1        ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.g, ptr %i.h, ptr noundef nonnull @.str.7) #5
  %i.i = ptrtoint ptr %i.h to i64
  br label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.j = tail call ptr @ZL_Encoder_createTypedStream(ptr noundef %0, i32 noundef 0, i64 noundef %i.e, i64 noundef 1) #5 ; 3 uses
  %.not62 = icmp eq ptr %i.j, null
  br i1 %.not62, label %.thread68, label %bb.c, !prof !20

.thread68:                                        ; preds = %bb.b
  %i.k = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @EI_sentinel_byte.__zl_static_error_info.8, ptr noundef nonnull %3, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 46, i32 noundef 70, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.12, ptr noundef null, ptr noundef null) #5 ; 2 uses
  %i.l = extractvalue { i32, ptr } %i.k, 0        ; 2 uses
  %i.m = extractvalue { i32, ptr } %i.k, 1        ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.l, ptr %i.m, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14) #5
  %i.n = ptrtoint ptr %i.m to i64
  br label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.o = tail call ptr @ZL_Encoder_createTypedStream(ptr noundef %0, i32 noundef 1, i64 noundef %i.e, i64 noundef %i.d) #5 ; 3 uses
  %.not63 = icmp eq ptr %i.o, null
  br i1 %.not63, label %.thread71, label %bb.d, !prof !20

.thread71:                                        ; preds = %bb.c
  %i.p = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @EI_sentinel_byte.__zl_static_error_info.15, ptr noundef nonnull %3, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 51, i32 noundef 70, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.12, ptr noundef null, ptr noundef null) #5 ; 2 uses
  %i.q = extractvalue { i32, ptr } %i.p, 0        ; 2 uses
  %i.r = extractvalue { i32, ptr } %i.p, 1        ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.q, ptr %i.r, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14) #5
  %i.s = ptrtoint ptr %i.r to i64
  br label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.t = tail call ptr @ZL_Data_wPtr(ptr noundef nonnull %i.j) #5
  %i.u = tail call ptr @ZL_Data_wPtr(ptr noundef nonnull %i.o) #5
  %i.v = tail call ptr @ZL_Data_rPtr(ptr noundef %i.c) #5
  %i.w = tail call i64 @ZL_sentinelByteEncode(ptr noundef %i.t, ptr noundef %i.u, ptr noundef %i.v, i64 noundef %i.e, i64 noundef %i.d) #5
  %i.x = tail call { i32, i64 } @ZL_Data_commit(ptr noundef nonnull %i.j, i64 noundef %i.e) #5 ; 2 uses
  %i.y = extractvalue { i32, i64 } %i.x, 0        ; 2 uses
  %.not64 = icmp eq i32 %i.y, 0
  br i1 %.not64, label %bb.f, label %bb.e, !prof !21

bb.e:                                             ; preds = %bb.d
  %i.z = extractvalue { i32, i64 } %i.x, 1
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %3, i32 %i.y, ptr %i.aa, ptr nonnull @EI_sentinel_byte.__zl_static_error_info.18, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 60, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.14) #5 ; 2 uses
  %i.ac = extractvalue { i32, ptr } %i.ab, 0
  %i.ad = extractvalue { i32, ptr } %i.ab, 1
  %i.ae = ptrtoint ptr %i.ad to i64
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.af = tail call { i32, i64 } @ZL_Data_commit(ptr noundef nonnull %i.o, i64 noundef %i.w) #5 ; 2 uses
  %i.ag = extractvalue { i32, i64 } %i.af, 0      ; 2 uses
  %.not65 = icmp eq i32 %i.ag, 0
  br i1 %.not65, label %bb.h, label %bb.g, !prof !21

bb.g:                                             ; preds = %bb.f
  %i.ah = extractvalue { i32, i64 } %i.af, 1
  %i.ai = inttoptr i64 %i.ah to ptr
  %i.aj = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %3, i32 %i.ag, ptr %i.ai, ptr nonnull @EI_sentinel_byte.__zl_static_error_info.21, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 61, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.14) #5 ; 2 uses
  %i.ak = extractvalue { i32, ptr } %i.aj, 0
  %i.al = extractvalue { i32, ptr } %i.aj, 1
  %i.am = ptrtoint ptr %i.al to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %.thread71, %.thread68, %.thread, %bb.e, %bb.g
  %.sroa.051.6 = phi i32 [ %i.g, %.thread ], [ %i.l, %.thread68 ], [ %i.q, %.thread71 ], [ %i.ac, %bb.e ], [ %i.ak, %bb.g ], [ 0, %bb.f ]
  %.sroa.20.6 = phi i64 [ %i.i, %.thread ], [ %i.n, %.thread68 ], [ %i.s, %.thread71 ], [ %i.ae, %bb.e ], [ %i.am, %bb.g ], [ 0, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.051.6, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.20.6, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @ZL_Encoder_getOperationContext(ptr noundef) local_unnamed_addr #3

declare { i32, ptr } @ZL_E_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

declare void @ZL_E_appendToMessage(i32, ptr, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare ptr @ZL_Encoder_createTypedStream(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

declare i64 @ZL_sentinelByteEncode(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

declare { i32, ptr } @ZL_E_addFrame(ptr noundef, i32, ptr, ptr, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define { i32, i64 } @EI_sentinel(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [10 x i8], align 1                ; 6 uses
  %3 = alloca %struct.ZL_ErrorContext, align 8    ; 11 uses
  %4 = alloca %struct.ZL_RefParam, align 8        ; 6 uses
  %5 = alloca %struct.ZL_RefParam, align 8        ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #5
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %i.c = tail call ptr @ZL_Encoder_getOperationContext(ptr noundef %0) #6
  store ptr %i.c, ptr %3, align 8, !tbaa !17
  %i.d = load ptr, ptr %1, align 8, !tbaa !19     ; 3 uses
  %i.e = tail call i64 @ZL_Data_eltWidth(ptr noundef %i.d) #5 ; 5 uses
  %i.f = tail call i64 @ZL_Data_numElts(ptr noundef %i.d) #5 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #5
  call void @ZL_Encoder_getLocalParam(ptr dead_on_unwind nonnull writable sret(%struct.ZL_RefParam) align 8 %4, ptr noundef %0, i32 noundef 130) #5
  %i.g = load i32, ptr %4, align 8, !tbaa !24     ; 2 uses
  %.not = icmp eq i32 %i.g, 130
  br i1 %.not, label %bb.c, label %bb.b, !prof !21

bb.b:                                             ; preds = %bb.a
  %i.h = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @EI_sentinel.__zl_static_error_info, ptr noundef nonnull %3, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.23, i32 noundef 84, i32 noundef 50, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27, i32 noundef %i.g, i32 noundef 130) #5 ; 2 uses
  %i.i = extractvalue { i32, ptr } %i.h, 0        ; 2 uses
  %i.j = extractvalue { i32, ptr } %i.h, 1        ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.i, ptr %i.j, ptr noundef nonnull @.str.28) #5
  %i.k = ptrtoint ptr %i.j to i64
  br label %bb.q

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !25
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !26
  %i.p = lshr i64 %i.o, 3                         ; 3 uses
  %i.q = icmp eq i64 %i.e, 8
  %i.r = shl i64 %i.e, 3
  %notmask.i = shl nsw i64 -1, %i.r
  %i.s = xor i64 %notmask.i, -1
  %.0.i = select i1 %i.q, i64 -1, i64 %i.s        ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #5
  call void @ZL_Encoder_getLocalParam(ptr dead_on_unwind nonnull writable sret(%struct.ZL_RefParam) align 8 %5, ptr noundef %0, i32 noundef 131) #5
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !25   ; 2 uses
  %.not92 = icmp eq ptr %i.u, null
  br i1 %.not92, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.w = load i64, ptr %i.v, align 8, !tbaa !26   ; 2 uses
  %.not93 = icmp eq i64 %i.w, 8
  br i1 %.not93, label %bb.f, label %bb.e, !prof !21

bb.e:                                             ; preds = %bb.d
  %i.x = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @EI_sentinel.__zl_static_error_info.29, ptr noundef nonnull %3, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.23, i32 noundef 98, i32 noundef 50, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.32, i64 noundef %i.w, i64 noundef 8) #5 ; 2 uses
  %i.y = extractvalue { i32, ptr } %i.x, 0        ; 2 uses
  %i.z = extractvalue { i32, ptr } %i.x, 1        ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.y, ptr %i.z, ptr noundef nonnull @.str.33) #5
  %i.aa = ptrtoint ptr %i.z to i64
  br label %bb.p

bb.f:                                             ; preds = %bb.d
  %.0.copyload = load i64, ptr %i.u, align 1
  %i.ab = and i64 %.0.copyload, %.0.i
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c
  %.084.a = phi i64 [ %i.ab, %bb.f ], [ %.0.i, %bb.c ] ; 5 uses
  %i.ac = call ptr @ZL_Encoder_createTypedStream(ptr noundef %0, i32 noundef 0, i64 noundef %i.f, i64 noundef %i.e) #5 ; 3 uses
  %.not94 = icmp eq ptr %i.ac, null
  br i1 %.not94, label %.thread108, label %bb.h, !prof !20

.thread108:                                       ; preds = %bb.g
  %i.ad = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @EI_sentinel.__zl_static_error_info.34, ptr noundef nonnull %3, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.23, i32 noundef 108, i32 noundef 70, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.12, ptr noundef null, ptr noundef null) #5 ; 2 uses
  %i.ae = extractvalue { i32, ptr } %i.ad, 0      ; 2 uses
  %i.af = extractvalue { i32, ptr } %i.ad, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.ae, ptr %i.af, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14) #5
  %i.ag = ptrtoint ptr %i.af to i64
  br label %bb.p

bb.h:                                             ; preds = %bb.g
  %i.ah = call ptr @ZL_Encoder_createTypedStream(ptr noundef %0, i32 noundef 1, i64 noundef %i.p, i64 noundef %i.e) #5 ; 3 uses
  %.not95 = icmp eq ptr %i.ah, null
  br i1 %.not95, label %.thread111, label %bb.i, !prof !20

.thread111:                                       ; preds = %bb.h
  %i.ai = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @EI_sentinel.__zl_static_error_info.35, ptr noundef nonnull %3, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.23, i32 noundef 113, i32 noundef 70, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.12, ptr noundef null, ptr noundef null) #5 ; 2 uses
  %i.aj = extractvalue { i32, ptr } %i.ai, 0      ; 2 uses
  %i.ak = extractvalue { i32, ptr } %i.ai, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.aj, ptr %i.ak, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14) #5
  %i.al = ptrtoint ptr %i.ak to i64
  br label %bb.p

bb.i:                                             ; preds = %bb.h
  %i.am = call ptr @ZL_Data_wPtr(ptr noundef nonnull %i.ac) #5
  %i.an = call ptr @ZL_Data_wPtr(ptr noundef nonnull %i.ah) #5
  %i.ao = call ptr @ZL_Data_rPtr(ptr noundef %i.d) #5
  %i.ap = call i32 @ZL_sentinelEncode(ptr noundef %i.am, ptr noundef %i.an, ptr noundef %i.ao, i64 noundef %i.f, i64 noundef %i.e, ptr noundef %i.m, i64 noundef %i.p, i64 noundef %.084.a) #5 ; 2 uses
  %.not96 = icmp eq i32 %i.ap, 0
  br i1 %.not96, label %bb.k, label %bb.j, !prof !21

bb.j:                                             ; preds = %bb.i
  %i.aq = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @EI_sentinel.__zl_static_error_info.36, ptr noundef nonnull %3, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.23, i32 noundef 124, i32 noundef 1, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.39, i32 noundef %i.ap, i32 noundef 0) #5 ; 2 uses
  %i.ar = extractvalue { i32, ptr } %i.aq, 0      ; 2 uses
  %i.as = extractvalue { i32, ptr } %i.aq, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.ar, ptr %i.as, ptr noundef nonnull @.str.40) #5
  %i.at = ptrtoint ptr %i.as to i64
  br label %bb.p

bb.k:                                             ; preds = %bb.i
  %6 = icmp eq i64 %.084.a, %.0.i
  br i1 %6, label %sendSentinelHeader.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.au = icmp ugt i64 %.084.a, 127
  br i1 %i.au, label %.lr.ph.i.i, label %ZL_varintEncode.exit.i

.lr.ph.i.i:                                       ; preds = %bb.l, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.ax, %.lr.ph.i.i ], [ %i.a, %bb.l ] ; 2 uses
  %.089.i.i = phi i64 [ %i.ay, %.lr.ph.i.i ], [ %.084.a, %bb.l ] ; 3 uses
  %i.av = trunc i64 %.089.i.i to i8
  %i.aw = or i8 %i.av, -128
  %i.ax = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 1 ; 2 uses
  store i8 %i.aw, ptr %.010.i.i, align 1, !tbaa !28
  %i.ay = lshr i64 %.089.i.i, 7                   ; 2 uses
  %i.az = icmp ugt i64 %.089.i.i, 16383
  br i1 %i.az, label %.lr.ph.i.i, label %ZL_varintEncode.exit.i, !llvm.loop !27

ZL_varintEncode.exit.i:                           ; preds = %.lr.ph.i.i, %bb.l
  %.08.lcssa.i.i = phi i64 [ %.084.a, %bb.l ], [ %i.ay, %.lr.ph.i.i ]
  %.0.lcssa.i.i = phi ptr [ %i.a, %bb.l ], [ %i.ax, %.lr.ph.i.i ] ; 2 uses
  %i.ba = trunc nuw nsw i64 %.08.lcssa.i.i to i8
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i, i64 1
  store i8 %i.ba, ptr %.0.lcssa.i.i, align 1, !tbaa !28
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = ptrtoint ptr %i.a to i64
  %i.be = sub i64 %i.bc, %i.bd
  call void @ZL_Encoder_sendCodecHeader(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef %i.be) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %sendSentinelHeader.exit

sendSentinelHeader.exit:                          ; preds = %bb.k, %ZL_varintEncode.exit.i
  %i.bf = call { i32, i64 } @ZL_Data_commit(ptr noundef nonnull %i.ac, i64 noundef %i.f) #5 ; 2 uses
  %i.bg = extractvalue { i32, i64 } %i.bf, 0      ; 2 uses
  %.not97 = icmp eq i32 %i.bg, 0
  br i1 %.not97, label %bb.n, label %bb.m, !prof !21

bb.m:                                             ; preds = %sendSentinelHeader.exit
  %i.bh = extractvalue { i32, i64 } %i.bf, 1
  %i.bi = inttoptr i64 %i.bh to ptr
  %i.bj = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %3, i32 %i.bg, ptr %i.bi, ptr nonnull @EI_sentinel.__zl_static_error_info.41, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.23, i32 noundef 128, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.14) #5 ; 2 uses
  %i.bk = extractvalue { i32, ptr } %i.bj, 0
  %i.bl = extractvalue { i32, ptr } %i.bj, 1
  %i.bm = ptrtoint ptr %i.bl to i64
  br label %bb.p

bb.n:                                             ; preds = %sendSentinelHeader.exit
  %i.bn = call { i32, i64 } @ZL_Data_commit(ptr noundef nonnull %i.ah, i64 noundef %i.p) #5 ; 2 uses
  %i.bo = extractvalue { i32, i64 } %i.bn, 0      ; 2 uses
  %.not98 = icmp eq i32 %i.bo, 0
  br i1 %.not98, label %bb.p, label %bb.o, !prof !21

bb.o:                                             ; preds = %bb.n
  %i.bp = extractvalue { i32, i64 } %i.bn, 1
  %i.bq = inttoptr i64 %i.bp to ptr
  %i.br = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %3, i32 %i.bo, ptr %i.bq, ptr nonnull @EI_sentinel.__zl_static_error_info.42, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.23, i32 noundef 129, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.14) #5 ; 2 uses
  %i.bs = extractvalue { i32, ptr } %i.br, 0
  %i.bt = extractvalue { i32, ptr } %i.br, 1
  %i.bu = ptrtoint ptr %i.bt to i64
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.j, %.thread111, %.thread108, %bb.e, %bb.m, %bb.o
  %.sroa.078.9 = phi i32 [ %i.y, %bb.e ], [ %i.ae, %.thread108 ], [ %i.aj, %.thread111 ], [ %i.bk, %bb.m ], [ %i.bs, %bb.o ], [ %i.ar, %bb.j ], [ 0, %bb.n ]
  %.sroa.24.9 = phi i64 [ %i.aa, %bb.e ], [ %i.ag, %.thread108 ], [ %i.al, %.thread111 ], [ %i.bm, %bb.m ], [ %i.bu, %bb.o ], [ %i.at, %bb.j ], [ 0, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #5
  br label %bb.q

bb.q:                                             ; preds = %bb.b, %bb.p
  %.sroa.078.10 = phi i32 [ %.sroa.078.9, %bb.p ], [ %i.i, %bb.b ]
  %.sroa.24.10 = phi i64 [ %.sroa.24.9, %bb.p ], [ %i.k, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.078.10, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.24.10, 1
  ret { i32, i64 } %.fca.1.insert
}

declare void @ZL_Encoder_getLocalParam(ptr dead_on_unwind writable sret(%struct.ZL_RefParam) align 8, ptr noundef, i32 noundef) local_unnamed_addr #4

declare i32 @ZL_sentinelEncode(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define void @ZL_Edge_runSentinelNode(ptr dead_on_unwind noalias writable sret(%union.ZL_Result_ZL_EdgeList_u) align 8 %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  %5 = alloca [2 x %struct.ZL_RefParam], align 16 ; 11 uses
  %6 = alloca %struct.ZL_LocalParams, align 8     ; 6 uses
  store i64 %4, ptr %i.a, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #5
  store i32 130, ptr %5, align 16, !tbaa !24
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 0, ptr %i.b, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %2, ptr %i.c, align 8, !tbaa !25
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.e = shl i64 %3, 3
  store i64 %i.e, ptr %i.d, align 16, !tbaa !26
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 131, ptr %i.f, align 8, !tbaa !24
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 28
  store i32 0, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %i.a, ptr %i.h, align 16, !tbaa !25
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 8, ptr %i.i, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #5
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, i8 0, i64 32, i1 false)
  store ptr %5, ptr %i.j, align 8, !tbaa !32
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i64 2, ptr %i.k, align 8, !tbaa !33
  call void @ZL_Edge_runNode_withParams(ptr dead_on_unwind writable sret(%union.ZL_Result_ZL_EdgeList_u) align 8 %0, ptr noundef %1, i32 51, ptr noundef nonnull %6) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #5
  ret void
}

declare void @ZL_Edge_runNode_withParams(ptr dead_on_unwind writable sret(%union.ZL_Result_ZL_EdgeList_u) align 8, ptr noundef, i32, ptr noundef) local_unnamed_addr #4

declare i64 @ZL_Data_eltWidth(ptr noundef) local_unnamed_addr #4

declare i64 @ZL_Data_numElts(ptr noundef) local_unnamed_addr #4

declare ptr @ZL_Data_wPtr(ptr noundef) local_unnamed_addr #4

declare ptr @ZL_Data_rPtr(ptr noundef) local_unnamed_addr #4

declare { i32, i64 } @ZL_Data_commit(ptr noundef, i64 noundef) local_unnamed_addr #4

declare void @ZL_Encoder_sendCodecHeader(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"p1 _ZTS21ZL_OperationContext_s", !11, i64 0}
!13 = !{!"", !8, i64 0}
!14 = !{!"p1 omnipotent char", !11, i64 0}
!15 = !{!"", !13, i64 0, !13, i64 4, !8, i64 8, !14, i64 16}
!16 = !{!"", !12, i64 0, !15, i64 8}
!17 = !{!16, !12, i64 0}
!18 = !{!"p1 _ZTS10ZL_Input_s", !11, i64 0}
!19 = !{!18, !18, i64 0}
!20 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!21 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!22 = !{!"long", !7, i64 0}
!23 = !{!"", !8, i64 0, !11, i64 8, !22, i64 16}
!24 = !{!23, !8, i64 0}
!25 = !{!23, !11, i64 8}
!26 = !{!23, !22, i64 16}
!27 = distinct !{!27, !29}
!28 = !{!7, !7, i64 0}
!29 = !{!"llvm.loop.mustprogress"}
!30 = !{!22, !22, i64 0}
!31 = !{!"", !11, i64 0, !22, i64 8}
!32 = !{!31, !11, i64 0}
!33 = !{!31, !22, i64 8}
end_hunk_0
