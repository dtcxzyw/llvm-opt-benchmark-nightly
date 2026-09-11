Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/protobuf/original/def_pool?download=true
inline.NumInlined: 112
inline.NumDeleted: 56
begin_hunk_0
%struct._upb_FastTable_Entry = type { i64, ptr }
%struct.upb_Status = type { i8, [511 x i8] }
%struct.upb_value = type { i64 }
%struct.upb_DefBuilder = type { ptr, %struct.upb_strtable, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, [1 x %struct.__jmp_buf_tag] }
%struct.upb_strtable = type { %struct.upb_table }
%struct.upb_table = type { ptr, i32, i32 }
%struct.__jmp_buf_tag = type { [8 x i64], i32, %struct.__sigset_t }
%struct.__sigset_t = type { [16 x i64] }
%struct.upb_StringView = type { ptr, i64 }

@serialized_defaults = internal constant [107 x i8] c"\0A\17\18\84\07\22\00*\10\08\01\10\02\18\02 \03(\010\028\02@\01\0A\17\18\E7\07\22\00*\10\08\02\10\01\18\01 \02(\010\018\02@\01\0A\17\18\E8\07\22\0C\08\01\10\01\18\01 \02(\010\01*\048\02@\01\0A\17\18\E9\07\22\10\08\01\10\01\18\01 \02(\010\018\01@\02*\00 \E6\07(\E9\07\00", align 16
@.str = private unnamed_addr constant [25 x i8] c"Failed to parse defaults\00", align 1
@.str.1 = private unnamed_addr constant [73 x i8] c"Feature set defaults can't be changed once the pool has started building\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Invalid edition range %s to %s\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"Invalid edition UNKNOWN specified\00", align 1
@.str.4 = private unnamed_addr constant [84 x i8] c"Feature set defaults are not strictly increasing, %s is greater than or equal to %s\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"duplicate symbol '%s'\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@.str.7 = private unnamed_addr constant [80 x i8] c"Failed to parse compiled-in descriptor for file '%s'. This should never happen.\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.8 = private unnamed_addr constant [83 x i8] c"Error loading compiled-in descriptor for file '%s' (this should never happen): %s\0A\00", align 1
@upb_alloc_global = external global %struct.upb_alloc, align 8
@google__protobuf__FeatureSetDefaults_msg_init = external constant %struct.upb_MiniTable, align 8
@google__protobuf__FeatureSetDefaults__FeatureSetEditionDefault_msg_init = external constant %struct.upb_MiniTable, align 8
@.str.9 = private unnamed_addr constant [25 x i8] c"duplicate file name %.*s\00", align 1
@google__protobuf__FeatureSet_msg_init = external local_unnamed_addr constant %struct.upb_MiniTable, align 8
@google__protobuf__FileDescriptorProto_msg_init = external constant %struct.upb_MiniTable, align 8

; Function Attrs: nounwind uwtable
define hidden void @upb_DefPool_Free(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21
  tail call void @upb_GeneratedRegistry_Release(ptr noundef %i.b) #12
  %i.c = load ptr, ptr %0, align 8, !tbaa !22
  tail call void @upb_Arena_Free(ptr noundef %i.c) #12
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !23
  %i.f = load ptr, ptr @upb_alloc_global, align 8, !tbaa !25
  %i.g = tail call ptr %i.f(ptr noundef nonnull @upb_alloc_global, ptr noundef %i.e, i64 noundef 0, i64 noundef 0, ptr noundef null) #12, !inline_history !47 ; 0 uses
  %i.h = load ptr, ptr @upb_alloc_global, align 8, !tbaa !25
  %i.i = tail call ptr %i.h(ptr noundef nonnull @upb_alloc_global, ptr noundef nonnull %0, i64 noundef 0, i64 noundef 0, ptr noundef null) #12, !inline_history !47 ; 0 uses
  ret void
}

declare void @upb_GeneratedRegistry_Release(ptr noundef) local_unnamed_addr #1

declare void @upb_Arena_Free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden ptr @upb_DefPool_New() local_unnamed_addr #0 {
bb.a:
  %0 = alloca %struct.upb_Status, align 1
  %i.a = load ptr, ptr @upb_alloc_global, align 8, !tbaa !25
  %i.b = tail call ptr %i.a(ptr noundef nonnull @upb_alloc_global, ptr noundef null, i64 noundef 0, i64 noundef 144, ptr noundef null) #12, !inline_history !0 ; 22 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @upb_Arena_Init(ptr noundef null, i64 noundef 0, ptr noundef nonnull @upb_alloc_global) #12
  store ptr %i.c, ptr %i.b, align 8, !tbaa !22
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  store i64 0, ptr %i.d, align 8, !tbaa !26
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  store i8 0, ptr %i.e, align 8, !tbaa !27
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  store i64 240, ptr %i.f, align 8, !tbaa !49
  %i.g = load ptr, ptr @upb_alloc_global, align 8, !tbaa !25
  %i.h = tail call ptr %i.g(ptr noundef nonnull @upb_alloc_global, ptr noundef null, i64 noundef 0, i64 noundef 240, ptr noundef null) #12, !inline_history !0 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 112 ; 2 uses
  store ptr %i.h, ptr %i.i, align 8, !tbaa !23
  %.not26 = icmp eq ptr %i.h, null
  br i1 %.not26, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !22
  %i.l = tail call zeroext i1 @upb_strtable_init(ptr noundef nonnull %i.j, i64 noundef 32, ptr noundef %i.k) #12
  br i1 %i.l, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !22
  %i.o = tail call zeroext i1 @upb_strtable_init(ptr noundef nonnull %i.m, i64 noundef 4, ptr noundef %i.n) #12
  br i1 %i.o, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !22
  %i.r = tail call zeroext i1 @upb_inttable_init(ptr noundef nonnull %i.p, ptr noundef %i.q) #12
  br i1 %i.r, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !22
  %i.t = tail call ptr @upb_ExtensionRegistry_New(ptr noundef %i.s) #12 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store ptr %i.t, ptr %i.u, align 8, !tbaa !28
  %.not27 = icmp eq ptr %i.t, null
  br i1 %.not27, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = tail call ptr @upb_GeneratedRegistry_Load() #12 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store ptr %i.v, ptr %i.w, align 8, !tbaa !21
  %.not28 = icmp eq ptr %i.v, null
  br i1 %.not28, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  store i32 1, ptr %i.x, align 8, !tbaa !29
  %i.y = call zeroext i1 @upb_DefPool_SetFeatureSetDefaults(ptr noundef nonnull %i.b, ptr noundef nonnull @serialized_defaults, i64 noundef 106, ptr noundef nonnull %0)
  br i1 %i.y, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !30
  %.not29 = icmp eq ptr %i.aa, null
  br i1 %.not29, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !21
  call void @upb_GeneratedRegistry_Release(ptr noundef %i.ac) #12
  %i.ad = load ptr, ptr %i.b, align 8, !tbaa !22
  call void @upb_Arena_Free(ptr noundef %i.ad) #12
  %i.ae = load ptr, ptr %i.i, align 8, !tbaa !23
  %i.af = load ptr, ptr @upb_alloc_global, align 8, !tbaa !25
  %i.ag = call ptr %i.af(ptr noundef nonnull @upb_alloc_global, ptr noundef %i.ae, i64 noundef 0, i64 noundef 0, ptr noundef null) #12, !inline_history !48 ; 0 uses
  %i.ah = load ptr, ptr @upb_alloc_global, align 8, !tbaa !25
  %i.ai = call ptr %i.ah(ptr noundef nonnull @upb_alloc_global, ptr noundef nonnull %i.b, i64 noundef 0, i64 noundef 0, ptr noundef null) #12, !inline_history !48 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.a, %bb.j
  %.0 = phi ptr [ null, %bb.a ], [ null, %bb.j ], [ %i.b, %bb.i ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare zeroext i1 @upb_strtable_init(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i1 @upb_inttable_init(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @upb_ExtensionRegistry_New(ptr noundef) local_unnamed_addr #1

declare ptr @upb_GeneratedRegistry_Load() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden noundef zeroext i1 @upb_DefPool_SetFeatureSetDefaults(ptr nofree noundef captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !22     ; 5 uses
  %google__protobuf__FeatureSetDefaults_msg_init.val.i.i = load i16, ptr getelementptr inbounds nuw (i8, ptr @google__protobuf__FeatureSetDefaults_msg_init, i64 8), align 8, !tbaa !32
  %i.b = zext i16 %google__protobuf__FeatureSetDefaults_msg_init.val.i.i to i64 ; 5 uses
  %i.c = and i64 %i.b, 7
  %i.d = icmp eq i64 %i.c, 0
  tail call void @llvm.assume(i1 %i.d)
  %.val.i.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !34 ; 4 uses
  %i.e = getelementptr i8, ptr %i.a, i64 8
  %.val11.i.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !35
  %i.f = ptrtoint ptr %.val11.i.i.i.i to i64
  %i.g = ptrtoint ptr %.val.i.i.i.i to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = icmp ult i64 %i.h, %i.b
  br i1 %i.i, label %upb_Arena_Malloc.exit.i.i.i, label %upb_Arena_Malloc.exit.thread.i.i.i, !prof !36

upb_Arena_Malloc.exit.thread.i.i.i:               ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %i.b
  store ptr %i.j, ptr %i.a, align 8, !tbaa !34
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  br label %bb.b

upb_Arena_Malloc.exit.i.i.i:                      ; preds = %bb.a
  %i.k = tail call ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %i.a, i64 noundef %i.b) #12 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %bb.c, label %bb.b, !prof !37

bb.b:                                             ; preds = %upb_Arena_Malloc.exit.i.i.i, %upb_Arena_Malloc.exit.thread.i.i.i
  %.0.i3.i.i.i = phi ptr [ %.val.i.i.i.i, %upb_Arena_Malloc.exit.thread.i.i.i ], [ %i.k, %upb_Arena_Malloc.exit.i.i.i ] ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %.0.i3.i.i.i, i8 0, i64 %i.b, i1 false)
  %i.l = tail call i32 @upb_Decode(ptr noundef %1, i64 noundef %2, ptr noundef nonnull %.0.i3.i.i.i, ptr noundef nonnull @google__protobuf__FeatureSetDefaults_msg_init, ptr noundef null, i32 noundef 0, ptr noundef nonnull %i.a) #12
  %.not8.i = icmp eq i32 %i.l, 0
  br i1 %.not8.i, label %google_protobuf_FeatureSetDefaults_parse.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %upb_Arena_Malloc.exit.i.i.i
  tail call void (ptr, ptr, ...) @upb_Status_SetErrorFormat(ptr noundef %3, ptr noundef nonnull @.str) #12
  br label %.critedge

google_protobuf_FeatureSetDefaults_parse.exit:    ; preds = %bb.b
  %i.m = getelementptr i8, ptr %0, i64 32
  %.val = load i32, ptr %i.m, align 8, !tbaa !51
  %.not41 = icmp eq i32 %.val, 0
  br i1 %.not41, label %bb.e, label %bb.d

bb.d:                                             ; preds = %google_protobuf_FeatureSetDefaults_parse.exit
  tail call void (ptr, ptr, ...) @upb_Status_SetErrorFormat(ptr noundef %3, ptr noundef nonnull @.str.1) #12
  br label %.critedge

bb.e:                                             ; preds = %google_protobuf_FeatureSetDefaults_parse.exit
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i, i64 12
  %i.o = load i32, ptr %i.n, align 4              ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i, i64 16
  %i.q = load i32, ptr %i.p, align 8              ; 2 uses
  %i.r = icmp sgt i32 %i.o, %i.q
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.s = tail call ptr @upb_FileDef_EditionName(i32 noundef %i.o) #12
  %i.t = tail call ptr @upb_FileDef_EditionName(i32 noundef %i.q) #12
  tail call void (ptr, ptr, ...) @upb_Status_SetErrorFormat(ptr noundef %3, ptr noundef nonnull @.str.2, ptr noundef %i.s, ptr noundef %i.t) #12
  br label %.critedge

bb.g:                                             ; preds = %bb.e
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @google__protobuf__FeatureSetDefaults__FeatureSetEditionDefault_msg_init) #12, !srcloc !52
  %i.u = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i, i64 24
  %i.v = load i64, ptr %i.u, align 8              ; 2 uses
  %.not.i = icmp eq i64 %i.v, 0
  br i1 %.not.i, label %.critedge44, label %google_protobuf_FeatureSetDefaults_defaults.exit

google_protobuf_FeatureSetDefaults_defaults.exit: ; preds = %bb.g
  %i.w = inttoptr i64 %i.v to ptr                 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !54   ; 2 uses
  %.val.i = load i64, ptr %i.w, align 8, !tbaa !55
  %i.z = and i64 %.val.i, -8
  %i.aa = inttoptr i64 %i.z to ptr
  %.not43.not52.not = icmp eq i64 %i.y, 0
  br i1 %.not43.not52.not, label %.critedge44, label %.lr.ph

bb.h:                                             ; preds = %bb.j
  %i.ab = add nuw i64 %.054, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ab, %i.y
  br i1 %exitcond.not, label %.critedge44, label %.lr.ph, !llvm.loop !50

.lr.ph:                                           ; preds = %google_protobuf_FeatureSetDefaults_defaults.exit, %bb.h
  %.054 = phi i64 [ %i.ab, %bb.h ], [ 0, %google_protobuf_FeatureSetDefaults_defaults.exit ] ; 2 uses
  %.03253 = phi i32 [ %i.af, %bb.h ], [ 0, %google_protobuf_FeatureSetDefaults_defaults.exit ] ; 2 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %.054
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !57
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  %i.af = load i32, ptr %i.ae, align 1            ; 4 uses
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph
  tail call void (ptr, ptr, ...) @upb_Status_SetErrorFormat(ptr noundef %3, ptr noundef nonnull @.str.3) #12
  br label %.critedge

bb.j:                                             ; preds = %.lr.ph
  %.not42 = icmp sgt i32 %i.af, %.03253
  br i1 %.not42, label %bb.h, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = tail call ptr @upb_FileDef_EditionName(i32 noundef %.03253) #12
  %i.ai = tail call ptr @upb_FileDef_EditionName(i32 noundef %i.af) #12
  tail call void (ptr, ptr, ...) @upb_Status_SetErrorFormat(ptr noundef %3, ptr noundef nonnull @.str.4, ptr noundef %i.ah, ptr noundef %i.ai) #12
  br label %.critedge

.critedge44:                                      ; preds = %bb.h, %bb.g, %google_protobuf_FeatureSetDefaults_defaults.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %.0.i3.i.i.i, ptr %i.aj, align 8, !tbaa !30
  br label %.critedge

.critedge:                                        ; preds = %.critedge44, %bb.i, %bb.k, %bb.f, %bb.d, %bb.c
  %.5 = phi i1 [ false, %bb.d ], [ false, %bb.c ], [ false, %bb.f ], [ false, %bb.k ], [ false, %bb.i ], [ true, %.critedge44 ]
  ret i1 %.5
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @upb_DefPool_DisableClosedEnumChecking(ptr nofree noundef writeonly captures(none) initializes((136, 137)) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i8 1, ptr %i.a, align 8, !tbaa !27
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden zeroext i1 @upb_DefPool_ClosedEnumCheckingDisabled(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = load i8, ptr %i.a, align 8, !tbaa !27, !range !58, !noundef !59
  %i.c = trunc nuw i8 %i.b to i1
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden ptr @upb_DefPool_FeatureSetDefaults(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30
  ret ptr %i.b
}

declare void @upb_Status_SetErrorFormat(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare ptr @upb_FileDef_EditionName(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @_upb_DefPool_InsertExt(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %2 to i64
  %i.d = load ptr, ptr %0, align 8, !tbaa !22
  %i.e = tail call zeroext i1 @upb_inttable_insert(ptr noundef nonnull %i.a, i64 noundef %i.b, i64 %i.c, ptr noundef %i.d) #12
  ret i1 %i.e
}

declare zeroext i1 @upb_inttable_insert(ptr noundef, i64 noundef, i64, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden noundef zeroext i1 @_upb_DefPool_InsertSym(ptr noundef %0, ptr %1, i64 %2, i64 %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = tail call zeroext i1 @upb_strtable_lookup2(ptr noundef nonnull %i.a, ptr noundef %1, i64 noundef %2, ptr noundef null) #12
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, ...) @upb_Status_SetErrorFormat(ptr noundef %4, ptr noundef nonnull @.str.5, ptr noundef %1) #12
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !22
  %i.d = tail call zeroext i1 @upb_strtable_insert(ptr noundef nonnull %i.a, ptr noundef %1, i64 noundef %2, i64 %3, ptr noundef %i.c) #12
  br i1 %i.d, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @upb_Status_SetErrorMessage(ptr noundef %4, ptr noundef nonnull @.str.6) #12
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi i1 [ false, %bb.b ], [ false, %bb.d ], [ true, %bb.c ]
  ret i1 %.0
}

declare zeroext i1 @upb_strtable_lookup2(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i1 @upb_strtable_insert(ptr noundef, ptr noundef, i64 noundef, i64, ptr noundef) local_unnamed_addr #1

declare void @upb_Status_SetErrorMessage(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @_upb_DefPool_LookupSym(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = tail call zeroext i1 @upb_strtable_lookup2(ptr noundef nonnull %i.a, ptr noundef %1, i64 noundef %2, ptr noundef %3) #12
  ret i1 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden ptr @_upb_DefPool_ExtReg(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden nonnull ptr @_upb_DefPool_ScratchData(ptr nofree noundef readnone captures(ret: address, provenance) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden nonnull ptr @_upb_DefPool_ScratchSize(ptr nofree noundef readnone captures(ret: address, provenance) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_upb_DefPool_SetPlatform(ptr nofree noundef writeonly captures(none) initializes((104, 108)) %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 %1, ptr %i.a, align 8, !tbaa !29
  ret void
}

; Function Attrs: nounwind uwtable
define hidden ptr @upb_DefPool_FindMessageByName(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.upb_value, align 8          ; 4 uses
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = call zeroext i1 @upb_strtable_lookup2(ptr noundef nonnull %i.b, ptr noundef nonnull %1, i64 noundef %i.a, ptr noundef nonnull %2) #12
  br i1 %i.c, label %bb.b, label %_upb_DefPool_Unpack.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %2, align 8
  %i.e = call ptr @_upb_DefType_Unpack(i64 %i.d, i32 noundef 1) #12
  br label %_upb_DefPool_Unpack.exit

_upb_DefPool_Unpack.exit:                         ; preds = %bb.a, %bb.b
  %i.f = phi ptr [ %i.e, %bb.b ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  ret ptr %i.f
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define hidden ptr @upb_DefPool_FindMessageByNameWithSize(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.upb_value, align 8          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = call zeroext i1 @upb_strtable_lookup2(ptr noundef nonnull %i.a, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %3) #12
  br i1 %i.b, label %bb.b, label %_upb_DefPool_Unpack.exit

bb.b:                                             ; preds = %bb.a
end_hunk_0
