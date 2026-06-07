inline.NumInlined: 201
inline.NumDeleted: 24
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Hacl_Streaming_HMAC_Definitions_two_state_s = type { i32, ptr, ptr }

@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [27 x i8] c"KaRaMeL abort at %s:%d\0A%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"../Modules/_hacl/Hacl_Streaming_HMAC.c\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"unreachable (pattern matches are exhaustive in F*)\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"KaRaMeL incomplete match at %s:%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [76 x i8] c"provably unreachable code: did an unverified caller violate a precondition?\00", align 1
@switch.table._Py_LibHacl_Hacl_Streaming_HMAC_malloc_.9 = private unnamed_addr constant [13 x i8] c"@@@@\80\80\90\88hH@@\80", align 8
@switch.table._Py_LibHacl_Hacl_Streaming_HMAC_malloc_.10 = private unnamed_addr constant [13 x i8] [i8 64, i8 64, i8 64, i8 64, i8 -128, i8 -128, i8 -112, i8 -120, i8 104, i8 72, i8 64, i8 poison, i8 -128], align 8
@switch.table.init0 = private unnamed_addr constant [14 x i8] c"@@@@\80\80\90\88hH@@\80\80", align 8
@switch.table.init0.31 = private unnamed_addr constant [12 x i8] c"@@\80\80@@@\80\88\90hH", align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden ptr @_Py_LibHacl_Hacl_Streaming_HMAC_s1(i64 %0, ptr nofree noundef readonly byval(%struct.Hacl_Streaming_HMAC_Definitions_two_state_s) align 8 captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !10
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden ptr @_Py_LibHacl_Hacl_Streaming_HMAC_s2(i64 %0, ptr nofree noundef readonly byval(%struct.Hacl_Streaming_HMAC_Definitions_two_state_s) align 8 captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14
  ret ptr %i.b
}

; Function Attrs: nofree nounwind uwtable
define hidden range(i64 0, -4294967280) i64 @_Py_LibHacl_Hacl_Streaming_HMAC_index_of_state(ptr nofree noundef readonly byval(%struct.Hacl_Streaming_HMAC_Definitions_two_state_s) align 8 captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !10
  %.val = load i8, ptr %i.b, align 8              ; 2 uses
  %switch.i.i = icmp ult i8 %.val, 14
  br i1 %switch.i.i, label %impl_of_state.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.d = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.c, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 175, ptr noundef nonnull @.str.2) #11 ; 0 uses
  tail call void @exit(i32 noundef 255) #12
  unreachable

impl_of_state.exit:                               ; preds = %bb.a
  %i.e = load i32, ptr %0, align 8, !tbaa !17
  %.sroa.3.0.insert.ext = zext i32 %i.e to i64
  %.sroa.3.0.insert.shift = shl nuw i64 %.sroa.3.0.insert.ext, 32
  %.sroa.0.0.insert.ext = zext nneg i8 %.val to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.3.0.insert.shift, %.sroa.0.0.insert.ext
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind uwtable
define hidden zeroext range(i8 0, 5) i8 @_Py_LibHacl_Hacl_Streaming_HMAC_malloc_(i8 noundef zeroext %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #4 {
bb.a:
  %4 = alloca %struct.Hacl_Streaming_HMAC_Definitions_two_state_s, align 8 ; 9 uses
  switch i8 %0, label %bb.b [
    i8 13, label %bb.j
    i8 11, label %bb.j
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.a = icmp ult i8 %0, 13
  br i1 %i.a, label %switch.hole_check, label %bb.c

bb.c:                                             ; preds = %switch.hole_check, %bb.b
  %i.b = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.c = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.b, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 109) #11 ; 0 uses
  tail call void @exit(i32 noundef 253) #12
  unreachable

switch.hole_check:                                ; preds = %bb.b
  %switch.maskindex = zext nneg i8 %0 to i16
  %switch.shifted = lshr i16 6143, %switch.maskindex
  %switch.lobit = trunc i16 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup19, label %bb.c

switch.lookup19:                                  ; preds = %switch.hole_check
  %i.d = zext nneg i8 %0 to i64
  %switch.gep21 = getelementptr inbounds nuw i8, ptr @switch.table._Py_LibHacl_Hacl_Streaming_HMAC_malloc_.10, i64 %i.d
  %switch.load22 = load i8, ptr %switch.gep21, align 1
  %switch.ext23 = zext i8 %switch.load22 to i64
  %i.e = tail call noalias ptr @calloc(i64 noundef %switch.ext23, i64 noundef 1) #13 ; 4 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %malloc_internal.exit.thread, label %bb.d

bb.d:                                             ; preds = %switch.lookup19
  %i.g = tail call fastcc ptr @malloc_(i8 noundef zeroext %0) ; 6 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %malloc_internal.exit.thread.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = tail call fastcc ptr @malloc_(i8 noundef zeroext %0) ; 5 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %malloc_internal.exit.thread.sink.split.sink.split, label %switch.lookup15

switch.lookup15:                                  ; preds = %bb.e
  store i32 %2, ptr %4, align 8
  %.sroa.10.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 0, ptr %.sroa.10.8..sroa_idx.i, align 4
  %.sroa.11.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.g, ptr %.sroa.11.8..sroa_idx.i, align 8
  %.sroa.12.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.i, ptr %.sroa.12.8..sroa_idx.i, align 8
  %i.k = zext nneg i8 %0 to i64
  %switch.gep16 = getelementptr inbounds nuw i8, ptr @switch.table._Py_LibHacl_Hacl_Streaming_HMAC_malloc_.9, i64 %i.k
  %switch.load17 = load i8, ptr %switch.gep16, align 1
  %i.l = tail call noalias dereferenceable_or_null(40) ptr @malloc(i64 noundef 40) #14 ; 5 uses
  %cond.i10 = icmp eq ptr %i.l, null
  br i1 %cond.i10, label %bb.f, label %bb.i

bb.f:                                             ; preds = %switch.lookup15
  %.sroa.0.0.copyload.i.i = load i8, ptr %i.g, align 8, !tbaa !18
  %switch.i.i = icmp ult i8 %.sroa.0.0.copyload.i.i, 14
  br i1 %switch.i.i, label %free_.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.n = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.m, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 1152, ptr noundef nonnull @.str.2) #11 ; 0 uses
  tail call void @exit(i32 noundef 255) #12
  unreachable

free_.exit.i:                                     ; preds = %bb.f
  %.sroa.1727.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.1727.0.copyload.i.i = load ptr, ptr %.sroa.1727.0..sroa_idx.i.i, align 8, !tbaa !18
  tail call void @free(ptr noundef %.sroa.1727.0.copyload.i.i) #15
  tail call void @free(ptr noundef nonnull %i.g) #15
  %.sroa.0.0.copyload.i73.i = load i8, ptr %i.i, align 8, !tbaa !18
  %switch.i74.i = icmp ult i8 %.sroa.0.0.copyload.i73.i, 14
  br i1 %switch.i74.i, label %free_.exit77.i, label %bb.h

bb.h:                                             ; preds = %free_.exit.i
  %i.o = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.p = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.o, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 1152, ptr noundef nonnull @.str.2) #11 ; 0 uses
  tail call void @exit(i32 noundef 255) #12
  unreachable

free_.exit77.i:                                   ; preds = %free_.exit.i
  %.sroa.1727.0..sroa_idx.i75.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.1727.0.copyload.i76.i = load ptr, ptr %.sroa.1727.0..sroa_idx.i75.i, align 8, !tbaa !18
  tail call void @free(ptr noundef %.sroa.1727.0.copyload.i76.i) #15
  br label %malloc_internal.exit.thread.sink.split.sink.split

malloc_internal.exit.thread.sink.split.sink.split: ; preds = %bb.e, %free_.exit77.i
  %.sink = phi ptr [ %i.i, %free_.exit77.i ], [ %i.g, %bb.e ]
  tail call void @free(ptr noundef nonnull %.sink) #15
  br label %malloc_internal.exit.thread.sink.split

malloc_internal.exit.thread.sink.split:           ; preds = %malloc_internal.exit.thread.sink.split.sink.split, %bb.d
  tail call void @free(ptr noundef nonnull %i.e) #15
  br label %malloc_internal.exit.thread

malloc_internal.exit.thread:                      ; preds = %malloc_internal.exit.thread.sink.split, %switch.lookup19
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.j

bb.i:                                             ; preds = %switch.lookup15
  %switch.ext18 = zext i8 %switch.load17 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr %i.e, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !19
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store i64 %switch.ext18, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !21
  tail call fastcc void @init0(ptr noundef %1, ptr noundef nonnull %i.e, ptr noundef nonnull byval(%struct.Hacl_Streaming_HMAC_Definitions_two_state_s) align 8 %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  store ptr %i.l, ptr %3, align 8, !tbaa !23
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %bb.a, %malloc_internal.exit.thread, %bb.i
  %.1 = phi i8 [ 1, %bb.a ], [ 1, %bb.a ], [ 0, %bb.i ], [ 4, %malloc_internal.exit.thread ]
  ret i8 %.1
}

; Function Attrs: nofree nounwind uwtable
define hidden range(i64 0, -4294967280) i64 @_Py_LibHacl_Hacl_Streaming_HMAC_get_impl(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.54.0.copyload = load ptr, ptr %.sroa.54.0..sroa_idx, align 8, !tbaa !25
  %.val.i = load i8, ptr %.sroa.54.0.copyload, align 8 ; 2 uses
  %switch.i.i.i = icmp ult i8 %.val.i, 14
  br i1 %switch.i.i.i, label %_Py_LibHacl_Hacl_Streaming_HMAC_index_of_state.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.b = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.a, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 175, ptr noundef nonnull @.str.2) #11 ; 0 uses
  tail call void @exit(i32 noundef 255) #12
  unreachable

_Py_LibHacl_Hacl_Streaming_HMAC_index_of_state.exit: ; preds = %bb.a
  %.sroa.02.0.copyload = load i32, ptr %0, align 8, !tbaa !6
  %.sroa.3.0.insert.ext.i = zext i32 %.sroa.02.0.copyload to i64
  %.sroa.3.0.insert.shift.i = shl nuw i64 %.sroa.3.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext nneg i8 %.val.i to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.3.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  ret i64 %.sroa.0.0.insert.insert.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
define hidden zeroext range(i8 0, 3) i8 @_Py_LibHacl_Hacl_Streaming_HMAC_reset(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #4 {
bb.a:
  %.sroa.54.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.54.0.copyload.i = load ptr, ptr %.sroa.54.0..sroa_idx.i, align 8, !tbaa !25 ; 2 uses
  %.val.i.i = load i8, ptr %.sroa.54.0.copyload.i, align 8 ; 2 uses
  %switch.i.i.i.i = icmp ult i8 %.val.i.i, 14
  br i1 %switch.i.i.i.i, label %_Py_LibHacl_Hacl_Streaming_HMAC_get_impl.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.b = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.a, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 175, ptr noundef nonnull @.str.2) #11 ; 0 uses
  tail call void @exit(i32 noundef 255) #12
  unreachable

_Py_LibHacl_Hacl_Streaming_HMAC_get_impl.exit:    ; preds = %bb.a
  %.sroa.02.0.copyload.i = load i32, ptr %0, align 8, !tbaa !6
  %.not = icmp eq i32 %2, %.sroa.02.0.copyload.i
  br i1 %.not, label %_Py_LibHacl_Hacl_Streaming_HMAC_index_of_state.exit.i, label %bb.c

_Py_LibHacl_Hacl_Streaming_HMAC_index_of_state.exit.i: ; preds = %_Py_LibHacl_Hacl_Streaming_HMAC_get_impl.exit
  %.sroa.0.0.copyload = load i64, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = zext nneg i8 %.val.i.i to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.init0, i64 %i.c
  %.sroa.55.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.44.0.copyload.i = load ptr, ptr %.sroa.44.0..sroa_idx.i, align 8, !tbaa !19
  %i.d = load <2 x ptr>, ptr %.sroa.5.0..sroa_idx, align 8
  tail call fastcc void @init0(ptr noundef %1, ptr noundef %.sroa.44.0.copyload.i, ptr noundef nonnull byval(%struct.Hacl_Streaming_HMAC_Definitions_two_state_s) align 8 %0)
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  store i64 %.sroa.0.0.copyload, ptr %0, align 8
  store ptr %.sroa.54.0.copyload.i, ptr %.sroa.54.0..sroa_idx.i, align 8
  store <2 x ptr> %i.d, ptr %.sroa.5.0..sroa_idx, align 8
  store i64 %switch.ext, ptr %.sroa.55.0..sroa_idx.i, align 8, !tbaa !21
  br label %bb.c

bb.c:                                             ; preds = %_Py_LibHacl_Hacl_Streaming_HMAC_get_impl.exit, %_Py_LibHacl_Hacl_Streaming_HMAC_index_of_state.exit.i
  %.0 = phi i8 [ 0, %_Py_LibHacl_Hacl_Streaming_HMAC_index_of_state.exit.i ], [ 2, %_Py_LibHacl_Hacl_Streaming_HMAC_get_impl.exit ]
  ret i8 %.0
}

; Function Attrs: nounwind uwtable
define hidden zeroext range(i8 0, 4) i8 @_Py_LibHacl_Hacl_Streaming_HMAC_update(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #4 {
bb.a:
  %3 = alloca %struct.Hacl_Streaming_HMAC_Definitions_two_state_s, align 8 ; 2 uses
  %4 = alloca %struct.Hacl_Streaming_HMAC_Definitions_two_state_s, align 8 ; 22 uses
  %.sroa.0158.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 10 uses
  %.sroa.0158.sroa.5.0.copyload = load ptr, ptr %.sroa.0158.sroa.5.0..sroa_idx, align 8, !tbaa !25 ; 5 uses
  %.sroa.0158.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.0158.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 18 uses
  %.sroa.4159.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 11 uses
  %.sroa.4159.0.copyload = load i64, ptr %.sroa.4159.0..sroa_idx, align 8, !tbaa !21 ; 27 uses
  %.val.i = load i8, ptr %.sroa.0158.sroa.5.0.copyload, align 8 ; 31 uses
  %switch.i.i.i = icmp ult i8 %.val.i, 14
  br i1 %switch.i.i.i, label %_Py_LibHacl_Hacl_Streaming_HMAC_index_of_state.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.b = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.a, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 175, ptr noundef nonnull @.str.2) #11 ; 0 uses
  tail call void @exit(i32 noundef 255) #12
  unreachable

_Py_LibHacl_Hacl_Streaming_HMAC_index_of_state.exit: ; preds = %bb.a
  %i.c = zext i32 %2 to i64                       ; 4 uses
  %switch = icmp ult i8 %.val.i, 4
  %spec.select = select i1 %switch, i64 2305843009213693951, i64 -1
  %i.d = sub i64 %spec.select, %.sroa.4159.0.copyload
  %i.e = icmp ult i64 %i.d, %i.c
  br i1 %i.e, label %bb.ak, label %switch.lookup

default.unreachable1013:                          ; preds = %block_len.exit375, %block_len.exit363, %bb.af, %block_len.exit339.thread, %bb.ab, %block_len.exit321, %bb.w, %block_len.exit309, %bb.r, %block_len.exit297, %block_len.exit285, %bb.m, %block_len.exit261.thread, %bb.i, %block_len.exit219, %bb.c
  unreachable

switch.lookup:                                    ; preds = %_Py_LibHacl_Hacl_Streaming_HMAC_index_of_state.exit
  %i.f = zext nneg i8 %.val.i to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.init0, i64 %i.f
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.g = urem i64 %.sroa.4159.0.copyload, %switch.ext
  %i.h = icmp eq i64 %i.g, 0
  %i.i = icmp ne i64 %.sroa.4159.0.copyload, 0    ; 4 uses
  %or.cond = and i1 %i.i, %i.h
  br i1 %or.cond, label %bb.c, label %switch.lookup1014

bb.c:                                             ; preds = %switch.lookup
  switch i8 %.val.i, label %default.unreachable1013 [
    i8 0, label %alg_of_impl.exit216.thread
    i8 1, label %alg_of_impl.exit216.thread
    i8 2, label %alg_of_impl.exit216.thread
    i8 3, label %alg_of_impl.exit216.thread
    i8 4, label %block_len.exit219.thread
    i8 5, label %block_len.exit219.thread
    i8 6, label %block_len.exit231
    i8 7, label %block_len.exit219.thread429
    i8 8, label %block_len.exit219.thread432
    i8 9, label %block_len.exit219.thread435
    i8 10, label %alg_of_impl.exit216.thread
    i8 11, label %alg_of_impl.exit216.thread
    i8 12, label %block_len.exit219
    i8 13, label %block_len.exit219
  ]

block_len.exit219.thread:                         ; preds = %bb.c, %bb.c
  br label %block_len.exit231

alg_of_impl.exit216.thread:                       ; preds = %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c
  br label %block_len.exit219

block_len.exit219.thread429:                      ; preds = %bb.c
  br label %block_len.exit231

block_len.exit219.thread432:                      ; preds = %bb.c
  br label %block_len.exit231

block_len.exit219.thread435:                      ; preds = %bb.c
  br label %block_len.exit231

switch.lookup1014:                                ; preds = %switch.lookup
  %i.j = zext nneg i8 %.val.i to i64
  %switch.gep1015 = getelementptr inbounds nuw i8, ptr @switch.table.init0, i64 %i.j
  %switch.load1016 = load i8, ptr %switch.gep1015, align 1
  %switch.ext1017 = zext i8 %switch.load1016 to i64
  %i.k = urem i64 %.sroa.4159.0.copyload, %switch.ext1017
  %i.l = trunc nuw nsw i64 %i.k to i32
  br label %block_len.exit219

block_len.exit219:                                ; preds = %bb.c, %bb.c, %alg_of_impl.exit216.thread, %switch.lookup1014
  %.0191 = phi i32 [ %i.l, %switch.lookup1014 ], [ 64, %alg_of_impl.exit216.thread ], [ 128, %bb.c ], [ 128, %bb.c ] ; 9 uses
  switch i8 %.val.i, label %default.unreachable1013 [
    i8 0, label %alg_of_impl.exit228.thread
    i8 1, label %alg_of_impl.exit228.thread
    i8 2, label %alg_of_impl.exit228.thread
    i8 3, label %alg_of_impl.exit228.thread
    i8 4, label %block_len.exit231
    i8 5, label %block_len.exit231
    i8 6, label %bb.d
    i8 7, label %bb.e
    i8 8, label %bb.f
    i8 9, label %bb.g
    i8 10, label %alg_of_impl.exit228.thread
    i8 11, label %alg_of_impl.exit228.thread
    i8 12, label %block_len.exit231
    i8 13, label %block_len.exit231
  ]

bb.d:                                             ; preds = %block_len.exit219
  br label %block_len.exit231

bb.e:                                             ; preds = %block_len.exit219
  br label %block_len.exit231

bb.f:                                             ; preds = %block_len.exit219
  br label %block_len.exit231

bb.g:                                             ; preds = %block_len.exit219
  br label %block_len.exit231

alg_of_impl.exit228.thread:                       ; preds = %block_len.exit219, %block_len.exit219, %block_len.exit219, %block_len.exit219, %block_len.exit219, %block_len.exit219
  br label %block_len.exit231

block_len.exit231:                                ; preds = %block_len.exit219, %block_len.exit219, %block_len.exit219, %block_len.exit219, %bb.c, %block_len.exit219.thread435, %bb.g, %block_len.exit219.thread432, %bb.f, %block_len.exit219.thread429, %bb.e, %bb.d, %block_len.exit219.thread, %alg_of_impl.exit228.thread
  %.0191422440 = phi i32 [ %.0191, %alg_of_impl.exit228.thread ], [ %.0191, %bb.f ], [ %.0191, %bb.e ], [ %.0191, %bb.g ], [ %.0191, %block_len.exit219 ], [ %.0191, %block_len.exit219 ], [ 128, %block_len.exit219.thread ], [ %.0191, %block_len.exit219 ], [ 144, %bb.c ], [ %.0191, %bb.d ], [ 136, %block_len.exit219.thread429 ], [ 104, %block_len.exit219.thread432 ], [ 72, %block_len.exit219.thread435 ], [ %.0191, %block_len.exit219 ] ; 9 uses
  %.0.i229 = phi i32 [ 64, %alg_of_impl.exit228.thread ], [ 104, %bb.f ], [ 136, %bb.e ], [ 72, %bb.g ], [ 128, %block_len.exit219 ], [ 128, %block_len.exit219 ], [ 128, %block_len.exit219.thread ], [ 128, %block_len.exit219 ], [ 144, %bb.c ], [ 144, %bb.d ], [ 136, %block_len.exit219.thread429 ], [ 104, %block_len.exit219.thread432 ], [ 72, %block_len.exit219.thread435 ], [ 128, %block_len.exit219 ]
  %i.m = sub nsw i32 %.0.i229, %.0191422440
  %.not = icmp ugt i32 %2, %i.m
  br i1 %.not, label %bb.h, label %switch.lookup1017

switch.lookup1017:                                ; preds = %block_len.exit231
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  %.sroa.4119.0.copyload = load ptr, ptr %.sroa.0158.sroa.7.0..sroa_idx, align 8, !tbaa !19 ; 2 uses
  %i.n = zext nneg i8 %.val.i to i64
  %switch.gep1019 = getelementptr inbounds nuw i8, ptr @switch.table.init0, i64 %i.n
  %switch.load1020 = load i8, ptr %switch.gep1019, align 1
  %switch.ext1021 = zext i8 %switch.load1020 to i64
  %i.o = urem i64 %.sroa.4159.0.copyload, %switch.ext1021
  %i.p = icmp eq i64 %i.o, 0
  %or.cond3 = and i1 %i.i, %i.p
  %i.q = zext nneg i8 %.val.i to i64              ; 2 uses
  br i1 %or.cond3, label %switch.lookup1020, label %switch.lookup1023

switch.lookup1023:                                ; preds = %switch.lookup1017
  %switch.gep1027 = getelementptr inbounds nuw i8, ptr @switch.table.init0, i64 %i.q
  %switch.load1028 = load i8, ptr %switch.gep1027, align 1
  %switch.ext1029 = zext i8 %switch.load1028 to i64
  %i.r = urem i64 %.sroa.4159.0.copyload, %switch.ext1029
  br label %block_len.exit243

switch.lookup1020:                                ; preds = %switch.lookup1017
  %switch.gep1023 = getelementptr inbounds nuw i8, ptr @switch.table.init0, i64 %i.q
  %switch.load1024 = load i8, ptr %switch.gep1023, align 1
  %switch.ext1025 = zext i8 %switch.load1024 to i64
  br label %block_len.exit243

block_len.exit243:                                ; preds = %switch.lookup1020, %switch.lookup1023
  %.0192 = phi i64 [ %i.r, %switch.lookup1023 ], [ %switch.ext1025, %switch.lookup1020 ]
  %i.s = getelementptr i8, ptr %.sroa.4119.0.copyload, i64 %.0192
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.s, ptr align 1 %1, i64 %i.c, i1 false)
  %i.t = add i64 %.sroa.4159.0.copyload, %i.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  store ptr %.sroa.4119.0.copyload, ptr %.sroa.0158.sroa.7.0..sroa_idx, align 8, !tbaa !19
  store i64 %i.t, ptr %.sroa.4159.0..sroa_idx, align 8, !tbaa !21
  br label %bb.ak

bb.h:                                             ; preds = %block_len.exit231
  %i.u = icmp eq i32 %.0191422440, 0
  br i1 %i.u, label %switch.lookup1026, label %bb.r

switch.lookup1026:                                ; preds = %bb.h
  %.sroa.0101.0.copyload = load i64, ptr %0, align 8
  %.sroa.6104.0.copyload = load ptr, ptr %.sroa.0158.sroa.7.0..sroa_idx, align 8, !tbaa !19 ; 2 uses
  %i.v = load <2 x ptr>, ptr %.sroa.0158.sroa.6.0..sroa_idx, align 8, !tbaa !26
  %i.w = zext nneg i8 %.val.i to i64
  %switch.gep1031 = getelementptr inbounds nuw i8, ptr @switch.table.init0, i64 %i.w
  %switch.load1032 = load i8, ptr %switch.gep1031, align 1
  %switch.ext1033 = zext i8 %switch.load1032 to i64
  %i.x = urem i64 %.sroa.4159.0.copyload, %switch.ext1033
  %i.y = icmp eq i64 %i.x, 0
  %or.cond5 = and i1 %i.i, %i.y
  br i1 %or.cond5, label %bb.i, label %switch.lookup1029

bb.i:                                             ; preds = %switch.lookup1026
  switch i8 %.val.i, label %default.unreachable1013 [
    i8 0, label %alg_of_impl.exit258.thread
    i8 1, label %alg_of_impl.exit258.thread
    i8 2, label %alg_of_impl.exit258.thread
    i8 3, label %alg_of_impl.exit258.thread
    i8 4, label %block_len.exit261.thread.thread
    i8 5, label %block_len.exit261.thread.thread959
    i8 6, label %block_len.exit261.thread.thread961
    i8 7, label %block_len.exit261.thread.thread963
    i8 8, label %block_len.exit261.thread.thread965
    i8 9, label %block_len.exit261.thread.thread967
    i8 10, label %alg_of_impl.exit258.thread
    i8 11, label %alg_of_impl.exit258.thread
    i8 12, label %block_len.exit261.thread
    i8 13, label %block_len.exit261.thread
  ]

block_len.exit261.thread.thread961:               ; preds = %bb.i
  %i.z = add i64 %.sroa.4159.0.copyload, -144
  br label %block_len.exit273

block_len.exit261.thread.thread:                  ; preds = %bb.i
  %i.aa = add i64 %.sroa.4159.0.copyload, -128
  br label %block_len.exit273

block_len.exit261.thread.thread959:               ; preds = %bb.i
  %i.ab = add i64 %.sroa.4159.0.copyload, -128
  br label %block_len.exit273

alg_of_impl.exit258.thread:                       ; preds = %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i
  br label %block_len.exit261.thread

block_len.exit261.thread.thread963:               ; preds = %bb.i
  %i.ac = add i64 %.sroa.4159.0.copyload, -136
  br label %block_len.exit273

block_len.exit261.thread.thread965:               ; preds = %bb.i
  %i.ad = add i64 %.sroa.4159.0.copyload, -104
  br label %block_len.exit273

block_len.exit261.thread.thread967:               ; preds = %bb.i
  %i.ae = add i64 %.sroa.4159.0.copyload, -72
  br label %block_len.exit273

switch.lookup1029:                                ; preds = %switch.lookup1026
  %i.af = zext nneg i8 %.val.i to i64
  %switch.gep1035 = getelementptr inbounds nuw i8, ptr @switch.table.init0, i64 %i.af
  %switch.load1036 = load i8, ptr %switch.gep1035, align 1
  %switch.ext1037 = zext i8 %switch.load1036 to i64
  %i.ag = urem i64 %.sroa.4159.0.copyload, %switch.ext1037 ; 2 uses
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %switch.lookup1032, label %block_len.exit261.thread

block_len.exit261.thread:                         ; preds = %bb.i, %bb.i, %alg_of_impl.exit258.thread, %switch.lookup1029
  %.0193525 = phi i64 [ %i.ag, %switch.lookup1029 ], [ 64, %alg_of_impl.exit258.thread ], [ 128, %bb.i ], [ 128, %bb.i ]
  %i.ai = sub i64 %.sroa.4159.0.copyload, %.0193525 ; 6 uses
  switch i8 %.val.i, label %default.unreachable1013 [
    i8 0, label %alg_of_impl.exit270.thread
    i8 1, label %alg_of_impl.exit270.thread
    i8 2, label %alg_of_impl.exit270.thread
    i8 3, label %alg_of_impl.exit270.thread
    i8 4, label %bb.j
    i8 5, label %bb.j
    i8 6, label %block_len.exit273
    i8 7, label %bb.k
    i8 8, label %bb.l
    i8 9, label %alg_of_impl.exit270
    i8 10, label %alg_of_impl.exit270.thread
    i8 11, label %alg_of_impl.exit270.thread
    i8 12, label %bb.j
    i8 13, label %bb.j
  ]

bb.j:                                             ; preds = %block_len.exit261.thread, %block_len.exit261.thread, %block_len.exit261.thread, %block_len.exit261.thread
  br label %block_len.exit273

alg_of_impl.exit270.thread:                       ; preds = %block_len.exit261.thread, %block_len.exit261.thread, %block_len.exit261.thread, %block_len.exit261.thread, %block_len.exit261.thread, %block_len.exit261.thread
  br label %block_len.exit273

bb.k:                                             ; preds = %block_len.exit261.thread
  br label %block_len.exit273

bb.l:                                             ; preds = %block_len.exit261.thread
  br label %block_len.exit273

alg_of_impl.exit270:                              ; preds = %block_len.exit261.thread
  br label %block_len.exit273

block_len.exit273:                                ; preds = %block_len.exit261.thread.thread967, %block_len.exit261.thread.thread965, %block_len.exit261.thread.thread963, %block_len.exit261.thread.thread959, %block_len.exit261.thread.thread, %block_len.exit261.thread.thread961, %block_len.exit261.thread, %bb.j, %alg_of_impl.exit270.thread, %bb.k, %bb.l, %alg_of_impl.exit270
  %i.aj = phi i64 [ %i.ai, %alg_of_impl.exit270.thread ], [ %i.ai, %bb.l ], [ %i.ai, %bb.k ], [ %i.ai, %alg_of_impl.exit270 ], [ %i.ai, %bb.j ], [ %i.ae, %block_len.exit261.thread.thread967 ], [ %i.z, %block_len.exit261.thread.thread961 ], [ %i.ai, %block_len.exit261.thread ], [ %i.aa, %block_len.exit261.thread.thread ], [ %i.ab, %block_len.exit261.thread.thread959 ], [ %i.ac, %block_len.exit261.thread.thread963 ], [ %i.ad, %block_len.exit261.thread.thread965 ]
  %.0.i271 = phi i32 [ 64, %alg_of_impl.exit270.thread ], [ 104, %bb.l ], [ 136, %bb.k ], [ 72, %alg_of_impl.exit270 ], [ 128, %bb.j ], [ 72, %block_len.exit261.thread.thread967 ], [ 144, %block_len.exit261.thread.thread961 ], [ 144, %block_len.exit261.thread ], [ 128, %block_len.exit261.thread.thread ], [ 128, %block_len.exit261.thread.thread959 ], [ 136, %block_len.exit261.thread.thread963 ], [ 104, %block_len.exit261.thread.thread965 ]
  %i.ak = getelementptr i8, ptr %.sroa.0158.sroa.5.0.copyload, i64 8
  %.sroa.4102.0.copyload.val207 = load ptr, ptr %i.ak, align 8, !tbaa !18
  tail call fastcc void @update_multi(i8 %.val.i, ptr %.sroa.4102.0.copyload.val207, i64 noundef %i.aj, ptr noundef %.sroa.6104.0.copyload, i32 noundef %.0.i271)
  br label %switch.lookup1032

switch.lookup1032:                                ; preds = %switch.lookup1029, %block_len.exit273
  %i.al = zext nneg i8 %.val.i to i64
  %switch.gep1039 = getelementptr inbounds nuw i8, ptr @switch.table.init0, i64 %i.al
  %switch.load1040 = load i8, ptr %switch.gep1039, align 1
  %switch.ext1041 = zext i8 %switch.load1040 to i32
  %i.am = urem i32 %2, %switch.ext1041
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %bb.m, label %switch.lookup1035

bb.m:                                             ; preds = %switch.lookup1032
  switch i8 %.val.i, label %default.unreachable1013 [
    i8 0, label %alg_of_impl.exit282.thread
    i8 1, label %alg_of_impl.exit282.thread
    i8 2, label %alg_of_impl.exit282.thread
    i8 3, label %alg_of_impl.exit282.thread
    i8 4, label %block_len.exit285.thread
    i8 5, label %block_len.exit285.thread567
    i8 6, label %block_len.exit285.thread569
    i8 7, label %block_len.exit285.thread571
    i8 8, label %block_len.exit285.thread573
    i8 9, label %block_len.exit285.thread575
    i8 10, label %alg_of_impl.exit282.thread
    i8 11, label %alg_of_impl.exit282.thread
    i8 12, label %block_len.exit285
    i8 13, label %block_len.exit285
  ]

block_len.exit285.thread569:                      ; preds = %bb.m
  %i.ao = add i32 %2, -144
  br label %block_len.exit297.thread600

block_len.exit285.thread:                         ; preds = %bb.m
  %i.ap = add i32 %2, -128
  br label %block_len.exit297.thread

block_len.exit285.thread567:                      ; preds = %bb.m
  %i.aq = add i32 %2, -128
  br label %block_len.exit297.thread596

alg_of_impl.exit282.thread:                       ; preds = %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m
  br label %block_len.exit285

block_len.exit285.thread571:                      ; preds = %bb.m
  %i.ar = add i32 %2, -136
  br label %block_len.exit297.thread604

block_len.exit285.thread573:                      ; preds = %bb.m
  %i.as = add i32 %2, -104
  br label %block_len.exit297.thread608

block_len.exit285.thread575:                      ; preds = %bb.m
  %i.at = add i32 %2, -72
  br label %block_len.exit297.thread612

switch.lookup1035:                                ; preds = %switch.lookup1032
  %i.au = zext nneg i8 %.val.i to i64
  %switch.gep1043 = getelementptr inbounds nuw i8, ptr @switch.table.init0, i64 %i.au
  %switch.load1044 = load i8, ptr %switch.gep1043, align 1
  %switch.ext1045 = zext i8 %switch.load1044 to i32
  %i.av = urem i32 %2, %switch.ext1045
  br label %block_len.exit285

block_len.exit285:                                ; preds = %bb.m, %bb.m, %alg_of_impl.exit282.thread, %switch.lookup1035
  %.0194 = phi i32 [ %i.av, %switch.lookup1035 ], [ 64, %alg_of_impl.exit282.thread ], [ 128, %bb.m ], [ 128, %bb.m ]
  %i.aw = sub i32 %2, %.0194                      ; 7 uses
  switch i8 %.val.i, label %default.unreachable1013 [
    i8 0, label %alg_of_impl.exit294.thread
    i8 1, label %alg_of_impl.exit294.thread
    i8 2, label %alg_of_impl.exit294.thread
    i8 3, label %alg_of_impl.exit294.thread
    i8 4, label %block_len.exit297.thread
    i8 5, label %block_len.exit297.thread596
    i8 6, label %block_len.exit297.thread600
    i8 7, label %block_len.exit297.thread604
    i8 8, label %block_len.exit297.thread608
    i8 9, label %block_len.exit297.thread612
    i8 10, label %alg_of_impl.exit294.thread
    i8 11, label %alg_of_impl.exit294.thread
    i8 12, label %block_len.exit297
    i8 13, label %block_len.exit297
  ]

alg_of_impl.exit294.thread:                       ; preds = %block_len.exit285, %block_len.exit285, %block_len.exit285, %block_len.exit285, %block_len.exit285, %block_len.exit285
  br label %block_len.exit297

block_len.exit297.thread:                         ; preds = %block_len.exit285.thread, %block_len.exit285
  %.ph = phi i32 [ %i.ap, %block_len.exit285.thread ], [ %i.aw, %block_len.exit285 ]
  %i.ax = lshr i32 %.ph, 7
  br label %block_len.exit303

block_len.exit297.thread596:                      ; preds = %block_len.exit285.thread567, %block_len.exit285
  %.ph595 = phi i32 [ %i.aq, %block_len.exit285.thread567 ], [ %i.aw, %block_len.exit285 ]
  %i.ay = lshr i32 %.ph595, 7
  br label %block_len.exit303

block_len.exit297.thread600:                      ; preds = %block_len.exit285.thread569, %block_len.exit285
  %.ph599 = phi i32 [ %i.ao, %block_len.exit285.thread569 ], [ %i.aw, %block_len.exit285 ]
  %i.az = udiv i32 %.ph599, 144
  br label %block_len.exit303

block_len.exit297.thread604:                      ; preds = %block_len.exit285.thread571, %block_len.exit285
  %.ph603 = phi i32 [ %i.ar, %block_len.exit285.thread571 ], [ %i.aw, %block_len.exit285 ]
  %i.ba = udiv i32 %.ph603, 136
  br label %block_len.exit303

block_len.exit297.thread608:                      ; preds = %block_len.exit285.thread573, %block_len.exit285
  %.ph607 = phi i32 [ %i.as, %block_len.exit285.thread573 ], [ %i.aw, %block_len.exit285 ]
  %i.bb = udiv i32 %.ph607, 104
  br label %block_len.exit303

block_len.exit297.thread612:                      ; preds = %block_len.exit285.thread575, %block_len.exit285
  %.ph611 = phi i32 [ %i.at, %block_len.exit285.thread575 ], [ %i.aw, %block_len.exit285 ]
  %i.bc = udiv i32 %.ph611, 72
  br label %block_len.exit303

block_len.exit297:                                ; preds = %block_len.exit285, %block_len.exit285, %alg_of_impl.exit294.thread
  %.0.i295 = phi i32 [ 6, %alg_of_impl.exit294.thread ], [ 7, %block_len.exit285 ], [ 7, %block_len.exit285 ]
  %i.bd = lshr i32 %i.aw, %.0.i295                ; 9 uses
  switch i8 %.val.i, label %default.unreachable1013 [
    i8 0, label %alg_of_impl.exit300.thread
    i8 1, label %alg_of_impl.exit300.thread
    i8 2, label %alg_of_impl.exit300.thread
    i8 3, label %alg_of_impl.exit300.thread
    i8 4, label %block_len.exit303
    i8 5, label %block_len.exit303
    i8 6, label %bb.n
    i8 7, label %bb.o
    i8 8, label %bb.p
    i8 9, label %bb.q
    i8 10, label %alg_of_impl.exit300.thread
    i8 11, label %alg_of_impl.exit300.thread
    i8 12, label %block_len.exit303
    i8 13, label %block_len.exit303
  ]

bb.n:                                             ; preds = %block_len.exit297
  br label %block_len.exit303

bb.o:                                             ; preds = %block_len.exit297
  br label %block_len.exit303

bb.p:                                             ; preds = %block_len.exit297
  br label %block_len.exit303

bb.q:                                             ; preds = %block_len.exit297
  br label %block_len.exit303

alg_of_impl.exit300.thread:                       ; preds = %block_len.exit297, %block_len.exit297, %block_len.exit297, %block_len.exit297, %block_len.exit297, %block_len.exit297
  br label %block_len.exit303

block_len.exit303:                                ; preds = %block_len.exit297, %block_len.exit297, %block_len.exit297, %block_len.exit297, %block_len.exit297.thread612, %bb.q, %block_len.exit297.thread608, %bb.p, %block_len.exit297.thread604, %bb.o, %bb.n, %block_len.exit297.thread600, %block_len.exit297.thread596, %block_len.exit297.thread, %alg_of_impl.exit300.thread
  %i.be = phi i32 [ %i.bd, %alg_of_impl.exit300.thread ], [ %i.bd, %bb.p ], [ %i.bd, %bb.o ], [ %i.az, %block_len.exit297.thread600 ], [ %i.bd, %block_len.exit297 ], [ %i.ay, %block_len.exit297.thread596 ], [ %i.ax, %block_len.exit297.thread ], [ %i.bd, %block_len.exit297 ], [ %i.bd, %bb.q ], [ %i.bd, %bb.n ], [ %i.ba, %block_len.exit297.thread604 ], [ %i.bb, %block_len.exit297.thread608 ], [ %i.bc, %block_len.exit297.thread612 ], [ %i.bd, %block_len.exit297 ], [ %i.bd, %block_len.exit297 ]
  %.0.i301 = phi i32 [ 64, %alg_of_impl.exit300.thread ], [ 104, %bb.p ], [ 136, %bb.o ], [ 144, %block_len.exit297.thread600 ], [ 128, %block_len.exit297 ], [ 128, %block_len.exit297.thread596 ], [ 128, %block_len.exit297.thread ], [ 128, %block_len.exit297 ], [ 72, %bb.q ], [ 144, %bb.n ], [ 136, %block_len.exit297.thread604 ], [ 104, %block_len.exit297.thread608 ], [ 72, %block_len.exit297.thread612 ], [ 128, %block_len.exit297 ], [ 128, %block_len.exit297 ]
  %i.bf = mul i32 %.0.i301, %i.be                 ; 3 uses
  %i.bg = sub i32 %2, %i.bf
  %i.bh = zext i32 %i.bf to i64
  %i.bi = getelementptr i8, ptr %1, i64 %i.bh
  %.sroa.4102.0.copyload.val = load i8, ptr %.sroa.0158.sroa.5.0.copyload, align 8, !tbaa !18
  %i.bj = getelementptr i8, ptr %.sroa.0158.sroa.5.0.copyload, i64 8
  %.sroa.4102.0.copyload.val205 = load ptr, ptr %i.bj, align 8, !tbaa !18
  tail call fastcc void @update_multi(i8 %.sroa.4102.0.copyload.val, ptr %.sroa.4102.0.copyload.val205, i64 noundef %.sroa.4159.0.copyload, ptr noundef %1, i32 noundef %i.bf)
  %i.bk = zext i32 %i.bg to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.6104.0.copyload, ptr align 1 %i.bi, i64 %i.bk, i1 false)
  %i.bl = add i64 %.sroa.4159.0.copyload, %i.c
  store i64 %.sroa.0101.0.copyload, ptr %0, align 8
  store ptr %.sroa.0158.sroa.5.0.copyload, ptr %.sroa.0158.sroa.5.0..sroa_idx, align 8, !tbaa !25
  store <2 x ptr> %i.v, ptr %.sroa.0158.sroa.6.0..sroa_idx, align 8, !tbaa !26
  store i64 %i.bl, ptr %.sroa.4159.0..sroa_idx, align 8, !tbaa !21
  br label %bb.ak

bb.r:                                             ; preds = %bb.h
  switch i8 %.val.i, label %default.unreachable1013 [
    i8 0, label %alg_of_impl.exit306.thread
    i8 1, label %alg_of_impl.exit306.thread
    i8 2, label %alg_of_impl.exit306.thread
    i8 3, label %alg_of_impl.exit306.thread
    i8 4, label %block_len.exit309.thread
    i8 5, label %block_len.exit309.thread645
    i8 6, label %block_len.exit309.thread649
    i8 7, label %block_len.exit309.thread653
    i8 8, label %block_len.exit309.thread657
    i8 9, label %block_len.exit309.thread661
    i8 10, label %alg_of_impl.exit306.thread
    i8 11, label %alg_of_impl.exit306.thread
    i8 12, label %block_len.exit309
    i8 13, label %block_len.exit309
  ]

block_len.exit309.thread649:                      ; preds = %bb.r
  %i.bm = sub nuw nsw i32 144, %.0191422440       ; 2 uses
  %i.bn = zext nneg i32 %i.bm to i64              ; 2 uses
  %i.bo = getelementptr i8, ptr %1, i64 %i.bn
  %.sroa.454.0.copyload651 = load ptr, ptr %.sroa.0158.sroa.7.0..sroa_idx, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  br label %block_len.exit315

block_len.exit309.thread:                         ; preds = %bb.r
  %i.bp = sub nsw i32 128, %.0191422440           ; 2 uses
  %i.bq = zext i32 %i.bp to i64                   ; 2 uses
  %i.br = getelementptr i8, ptr %1, i64 %i.bq
  %.sroa.454.0.copyload642 = load ptr, ptr %.sroa.0158.sroa.7.0..sroa_idx, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  br label %block_len.exit315

block_len.exit309.thread645:                      ; preds = %bb.r
  %i.bs = sub nsw i32 128, %.0191422440           ; 2 uses
  %i.bt = zext i32 %i.bs to i64                   ; 2 uses
  %i.bu = getelementptr i8, ptr %1, i64 %i.bt
  %.sroa.454.0.copyload647 = load ptr, ptr %.sroa.0158.sroa.7.0..sroa_idx, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  br label %block_len.exit315

alg_of_impl.exit306.thread:                       ; preds = %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r
  br label %block_len.exit309

block_len.exit309.thread653:                      ; preds = %bb.r
  %i.bv = sub nsw i32 136, %.0191422440           ; 2 uses
  %i.bw = zext i32 %i.bv to i64                   ; 2 uses
  %i.bx = getelementptr i8, ptr %1, i64 %i.bw
  %.sroa.454.0.copyload655 = load ptr, ptr %.sroa.0158.sroa.7.0..sroa_idx, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  br label %block_len.exit315

block_len.exit309.thread657:                      ; preds = %bb.r
  %i.by = sub nsw i32 104, %.0191422440           ; 2 uses
  %i.bz = zext i32 %i.by to i64                   ; 2 uses
  %i.ca = getelementptr i8, ptr %1, i64 %i.bz
  %.sroa.454.0.copyload659 = load ptr, ptr %.sroa.0158.sroa.7.0..sroa_idx, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  br label %block_len.exit315

block_len.exit309.thread661:                      ; preds = %bb.r
  %i.cb = sub nsw i32 72, %.0191422440            ; 2 uses
  %i.cc = zext i32 %i.cb to i64                   ; 2 uses
  %i.cd = getelementptr i8, ptr %1, i64 %i.cc
  %.sroa.454.0.copyload663 = load ptr, ptr %.sroa.0158.sroa.7.0..sroa_idx, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  br label %block_len.exit315

block_len.exit309:                                ; preds = %bb.r, %bb.r, %alg_of_impl.exit306.thread
  %.0.i307 = phi i32 [ 64, %alg_of_impl.exit306.thread ], [ 128, %bb.r ], [ 128, %bb.r ]
  %i.ce = sub nsw i32 %.0.i307, %.0191422440      ; 10 uses
  %i.cf = zext i32 %i.ce to i64                   ; 10 uses
  %i.cg = getelementptr i8, ptr %1, i64 %i.cf     ; 9 uses
  %.sroa.454.0.copyload = load ptr, ptr %.sroa.0158.sroa.7.0..sroa_idx, align 8, !tbaa !19 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  switch i8 %.val.i, label %default.unreachable1013 [
    i8 0, label %alg_of_impl.exit312.thread
    i8 1, label %alg_of_impl.exit312.thread
    i8 2, label %alg_of_impl.exit312.thread
    i8 3, label %alg_of_impl.exit312.thread
    i8 4, label %block_len.exit315
    i8 5, label %block_len.exit315
    i8 6, label %bb.s
    i8 7, label %bb.t
    i8 8, label %bb.u
    i8 9, label %bb.v
    i8 10, label %alg_of_impl.exit312.thread
    i8 11, label %alg_of_impl.exit312.thread
    i8 12, label %block_len.exit315
    i8 13, label %block_len.exit315
  ]

bb.s:                                             ; preds = %block_len.exit309
  br label %block_len.exit315

bb.t:                                             ; preds = %block_len.exit309
  br label %block_len.exit315

bb.u:                                             ; preds = %block_len.exit309
  br label %block_len.exit315

bb.v:                                             ; preds = %block_len.exit309
  br label %block_len.exit315

alg_of_impl.exit312.thread:                       ; preds = %block_len.exit309, %block_len.exit309, %block_len.exit309, %block_len.exit309, %block_len.exit309, %block_len.exit309
  br label %block_len.exit315

block_len.exit315:                                ; preds = %block_len.exit309, %block_len.exit309, %block_len.exit309, %block_len.exit309, %block_len.exit309.thread661, %bb.v, %block_len.exit309.thread657, %bb.u, %block_len.exit309.thread653, %bb.t, %bb.s, %block_len.exit309.thread649, %block_len.exit309.thread645, %block_len.exit309.thread, %alg_of_impl.exit312.thread
  %i.ch = phi i32 [ %i.ce, %alg_of_impl.exit312.thread ], [ %i.ce, %bb.u ], [ %i.ce, %bb.t ], [ %i.bm, %block_len.exit309.thread649 ], [ %i.ce, %block_len.exit309 ], [ %i.bs, %block_len.exit309.thread645 ], [ %i.bp, %block_len.exit309.thread ], [ %i.ce, %block_len.exit309 ], [ %i.ce, %bb.v ], [ %i.ce, %bb.s ], [ %i.bv, %block_len.exit309.thread653 ], [ %i.by, %block_len.exit309.thread657 ], [ %i.cb, %block_len.exit309.thread661 ], [ %i.ce, %block_len.exit309 ], [ %i.ce, %block_len.exit309 ] ; 2 uses
  %i.ci = phi i64 [ %i.cf, %alg_of_impl.exit312.thread ], [ %i.cf, %bb.u ], [ %i.cf, %bb.t ], [ %i.bn, %block_len.exit309.thread649 ], [ %i.cf, %block_len.exit309 ], [ %i.bt, %block_len.exit309.thread645 ], [ %i.bq, %block_len.exit309.thread ], [ %i.cf, %block_len.exit309 ], [ %i.cf, %bb.v ], [ %i.cf, %bb.s ], [ %i.bw, %block_len.exit309.thread653 ], [ %i.bz, %block_len.exit309.thread657 ], [ %i.cc, %block_len.exit309.thread661 ], [ %i.cf, %block_len.exit309 ], [ %i.cf, %block_len.exit309 ] ; 14 uses
  %i.cj = phi ptr [ %i.cg, %alg_of_impl.exit312.thread ], [ %i.cg, %bb.u ], [ %i.cg, %bb.t ], [ %i.bo, %block_len.exit309.thread649 ], [ %i.cg, %block_len.exit309 ], [ %i.bu, %block_len.exit309.thread645 ], [ %i.br, %block_len.exit309.thread ], [ %i.cg, %block_len.exit309 ], [ %i.cg, %bb.v ], [ %i.cg, %bb.s ], [ %i.bx, %block_len.exit309.thread653 ], [ %i.ca, %block_len.exit309.thread657 ], [ %i.cd, %block_len.exit309.thread661 ], [ %i.cg, %block_len.exit309 ], [ %i.cg, %block_len.exit309 ] ; 2 uses
  %.sroa.454.0.copyload644667 = phi ptr [ %.sroa.454.0.copyload, %alg_of_impl.exit312.thread ], [ %.sroa.454.0.copyload, %bb.u ], [ %.sroa.454.0.copyload, %bb.t ], [ %.sroa.454.0.copyload651, %block_len.exit309.thread649 ], [ %.sroa.454.0.copyload, %block_len.exit309 ], [ %.sroa.454.0.copyload647, %block_len.exit309.thread645 ], [ %.sroa.454.0.copyload642, %block_len.exit309.thread ], [ %.sroa.454.0.copyload, %block_len.exit309 ], [ %.sroa.454.0.copyload, %bb.v ], [ %.sroa.454.0.copyload, %bb.s ], [ %.sroa.454.0.copyload655, %block_len.exit309.thread653 ], [ %.sroa.454.0.copyload659, %block_len.exit309.thread657 ], [ %.sroa.454.0.copyload663, %block_len.exit309.thread661 ], [ %.sroa.454.0.copyload, %block_len.exit309 ], [ %.sroa.454.0.copyload, %block_len.exit309 ] ; 17 uses
  %.0.i313 = phi i64 [ 64, %alg_of_impl.exit312.thread ], [ 104, %bb.u ], [ 136, %bb.t ], [ 144, %block_len.exit309.thread649 ], [ 128, %block_len.exit309 ], [ 128, %block_len.exit309.thread645 ], [ 128, %block_len.exit309.thread ], [ 128, %block_len.exit309 ], [ 72, %bb.v ], [ 144, %bb.s ], [ 136, %block_len.exit309.thread653 ], [ 104, %block_len.exit309.thread657 ], [ 72, %block_len.exit309.thread661 ], [ 128, %block_len.exit309 ], [ 128, %block_len.exit309 ]
  %i.ck = urem i64 %.sroa.4159.0.copyload, %.0.i313
  %i.cl = icmp eq i64 %i.ck, 0
  %or.cond10 = and i1 %i.i, %i.cl
  br i1 %or.cond10, label %bb.w, label %switch.lookup1038

bb.w:                                             ; preds = %block_len.exit315
  switch i8 %.val.i, label %default.unreachable1013 [
    i8 0, label %alg_of_impl.exit318.thread
    i8 1, label %alg_of_impl.exit318.thread
    i8 2, label %alg_of_impl.exit318.thread
    i8 3, label %alg_of_impl.exit318.thread
    i8 4, label %block_len.exit321.thread
    i8 5, label %block_len.exit321.thread733
    i8 6, label %block_len.exit321.thread741
    i8 7, label %block_len.exit321.thread749
    i8 8, label %block_len.exit321.thread757
    i8 9, label %block_len.exit321.thread765
    i8 10, label %alg_of_impl.exit318.thread
    i8 11, label %alg_of_impl.exit318.thread
    i8 12, label %block_len.exit321
    i8 13, label %block_len.exit321
  ]

block_len.exit321.thread741:                      ; preds = %bb.w
  %i.cm = getelementptr i8, ptr %.sroa.454.0.copyload644667, i64 144
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cm, ptr align 1 %1, i64 %i.ci, i1 false)
  %i.cn = add i64 %i.ci, %.sroa.4159.0.copyload   ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  store ptr %.sroa.454.0.copyload644667, ptr %.sroa.0158.sroa.7.0..sroa_idx, align 8, !tbaa !19
  store i64 %i.cn, ptr %.sroa.4159.0..sroa_idx, align 8, !tbaa !21
  %.sroa.0.0.copyload743 = load i64, ptr %0, align 8
  %i.co = load <2 x ptr>, ptr %.sroa.0158.sroa.5.0..sroa_idx, align 8, !tbaa !25
  br label %block_len.exit333

block_len.exit321.thread:                         ; preds = %bb.w
  %i.cp = getelementptr i8, ptr %.sroa.454.0.copyload644667, i64 128
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cp, ptr align 1 %1, i64 %i.ci, i1 false)
  %i.cq = add i64 %i.ci, %.sroa.4159.0.copyload   ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  store ptr %.sroa.454.0.copyload644667, ptr %.sroa.0158.sroa.7.0..sroa_idx, align 8, !tbaa !19
  store i64 %i.cq, ptr %.sroa.4159.0..sroa_idx, align 8, !tbaa !21
  %.sroa.0.0.copyload724 = load i64, ptr %0, align 8
  %i.cr = load <2 x ptr>, ptr %.sroa.0158.sroa.5.0..sroa_idx, align 8, !tbaa !25
  br label %block_len.exit333

block_len.exit321.thread733:                      ; preds = %bb.w
  %i.cs = getelementptr i8, ptr %.sroa.454.0.copyload644667, i64 128
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cs, ptr align 1 %1, i64 %i.ci, i1 false)
  %i.ct = add i64 %i.ci, %.sroa.4159.0.copyload   ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  store ptr %.sroa.454.0.copyload644667, ptr %.sroa.0158.sroa.7.0..sroa_idx, align 8, !tbaa !19
  store i64 %i.ct, ptr %.sroa.4159.0..sroa_idx, align 8, !tbaa !21
  %.sroa.0.0.copyload735 = load i64, ptr %0, align 8
  %i.cu = load <2 x ptr>, ptr %.sroa.0158.sroa.5.0..sroa_idx, align 8, !tbaa !25
  br label %block_len.exit333

alg_of_impl.exit318.thread:                       ; preds = %bb.w, %bb.w, %bb.w, %bb.w, %bb.w, %bb.w
  br label %block_len.exit321

block_len.exit321.thread749:                      ; preds = %bb.w
  %i.cv = getelementptr i8, ptr %.sroa.454.0.copyload644667, i64 136
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cv, ptr align 1 %1, i64 %i.ci, i1 false)
  %i.cw = add i64 %i.ci, %.sroa.4159.0.copyload   ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  store ptr %.sroa.454.0.copyload644667, ptr %.sroa.0158.sroa.7.0..sroa_idx, align 8, !tbaa !19
  store i64 %i.cw, ptr %.sroa.4159.0..sroa_idx, align 8, !tbaa !21
  %.sroa.0.0.copyload751 = load i64, ptr %0, align 8
  %i.cx = load <2 x ptr>, ptr %.sroa.0158.sroa.5.0..sroa_idx, align 8, !tbaa !25
  br label %block_len.exit333

block_len.exit321.thread757:                      ; preds = %bb.w
  %i.cy = getelementptr i8, ptr %.sroa.454.0.copyload644667, i64 104
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cy, ptr align 1 %1, i64 %i.ci, i1 false)
  %i.cz = add i64 %i.ci, %.sroa.4159.0.copyload   ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  store ptr %.sroa.454.0.copyload644667, ptr %.sroa.0158.sroa.7.0..sroa_idx, align 8, !tbaa !19
  store i64 %i.cz, ptr %.sroa.4159.0..sroa_idx, align 8, !tbaa !21
  %.sroa.0.0.copyload759 = load i64, ptr %0, align 8
  %i.da = load <2 x ptr>, ptr %.sroa.0158.sroa.5.0..sroa_idx, align 8, !tbaa !25
  br label %block_len.exit333

block_len.exit321.thread765:                      ; preds = %bb.w
  %i.db = getelementptr i8, ptr %.sroa.454.0.copyload644667, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.db, ptr align 1 %1, i64 %i.ci, i1 false)
  %i.dc = add i64 %i.ci, %.sroa.4159.0.copyload   ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  store ptr %.sroa.454.0.copyload644667, ptr %.sroa.0158.sroa.7.0..sroa_idx, align 8, !tbaa !19
  store i64 %i.dc, ptr %.sroa.4159.0..sroa_idx, align 8, !tbaa !21
  %.sroa.0.0.copyload767 = load i64, ptr %0, align 8
  %i.dd = load <2 x ptr>, ptr %.sroa.0158.sroa.5.0..sroa_idx, align 8, !tbaa !25
  br label %block_len.exit333

switch.lookup1038:                                ; preds = %block_len.exit315
  %i.de = zext nneg i8 %.val.i to i64
  %switch.gep1047 = getelementptr inbounds nuw i8, ptr @switch.table.init0, i64 %i.de
  %switch.load1048 = load i8, ptr %switch.gep1047, align 1
  %switch.ext1049 = zext i8 %switch.load1048 to i64
  %i.df = urem i64 %.sroa.4159.0.copyload, %switch.ext1049
  br label %block_len.exit321

block_len.exit321:                                ; preds = %bb.w, %bb.w, %alg_of_impl.exit318.thread, %switch.lookup1038
  %.0195 = phi i64 [ %i.df, %switch.lookup1038 ], [ 64, %alg_of_impl.exit318.thread ], [ 128, %bb.w ], [ 128, %bb.w ]
  %i.dg = getelementptr i8, ptr %.sroa.454.0.copyload644667, i64 %.0195
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dg, ptr align 1 %1, i64 %i.ci, i1 false)
  %i.dh = add i64 %i.ci, %.sroa.4159.0.copyload   ; 10 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  store ptr %.sroa.454.0.copyload644667, ptr %.sroa.0158.sroa.7.0..sroa_idx, align 8, !tbaa !19
  store i64 %i.dh, ptr %.sroa.4159.0..sroa_idx, align 8, !tbaa !21
  %.sroa.0.0.copyload = load i64, ptr %0, align 8 ; 9 uses
  %i.di = load <2 x ptr>, ptr %.sroa.0158.sroa.5.0..sroa_idx, align 8, !tbaa !25 ; 9 uses
  switch i8 %.val.i, label %default.unreachable1013 [
    i8 0, label %alg_of_impl.exit330.thread
    i8 1, label %alg_of_impl.exit330.thread
    i8 2, label %alg_of_impl.exit330.thread
    i8 3, label %alg_of_impl.exit330.thread
    i8 4, label %block_len.exit333
    i8 5, label %block_len.exit333
    i8 6, label %bb.x
    i8 7, label %bb.y
    i8 8, label %bb.z
    i8 9, label %bb.aa
    i8 10, label %alg_of_impl.exit330.thread
    i8 11, label %alg_of_impl.exit330.thread
    i8 12, label %block_len.exit333
    i8 13, label %block_len.exit333
  ]

bb.x:                                             ; preds = %block_len.exit321
  br label %block_len.exit333

bb.y:                                             ; preds = %block_len.exit321
  br label %block_len.exit333

bb.z:                                             ; preds = %block_len.exit321
  br label %block_len.exit333

bb.aa:                                            ; preds = %block_len.exit321
  br label %block_len.exit333

alg_of_impl.exit330.thread:                       ; preds = %block_len.exit321, %block_len.exit321, %block_len.exit321, %block_len.exit321, %block_len.exit321, %block_len.exit321
  br label %block_len.exit333

block_len.exit333:                                ; preds = %block_len.exit321, %block_len.exit321, %block_len.exit321, %block_len.exit321, %block_len.exit321.thread765, %bb.aa, %block_len.exit321.thread757, %bb.z, %block_len.exit321.thread749, %bb.y, %bb.x, %block_len.exit321.thread741, %block_len.exit321.thread733, %block_len.exit321.thread, %alg_of_impl.exit330.thread
  %i.dj = phi i64 [ %i.dh, %alg_of_impl.exit330.thread ], [ %i.dh, %bb.z ], [ %i.dh, %bb.y ], [ %i.cn, %block_len.exit321.thread741 ], [ %i.dh, %block_len.exit321 ], [ %i.ct, %block_len.exit321.thread733 ], [ %i.cq, %block_len.exit321.thread ], [ %i.dh, %block_len.exit321 ], [ %i.dh, %bb.aa ], [ %i.dh, %bb.x ], [ %i.cw, %block_len.exit321.thread749 ], [ %i.cz, %block_len.exit321.thread757 ], [ %i.dc, %block_len.exit321.thread765 ], [ %i.dh, %block_len.exit321 ], [ %i.dh, %block_len.exit321 ] ; 12 uses
  %.sroa.0.0.copyload728779 = phi i64 [ %.sroa.0.0.copyload, %alg_of_impl.exit330.thread ], [ %.sroa.0.0.copyload, %bb.z ], [ %.sroa.0.0.copyload, %bb.y ], [ %.sroa.0.0.copyload743, %block_len.exit321.thread741 ], [ %.sroa.0.0.copyload, %block_len.exit321 ], [ %.sroa.0.0.copyload735, %block_len.exit321.thread733 ], [ %.sroa.0.0.copyload724, %block_len.exit321.thread ], [ %.sroa.0.0.copyload, %block_len.exit321 ], [ %.sroa.0.0.copyload, %bb.aa ], [ %.sroa.0.0.copyload, %bb.x ], [ %.sroa.0.0.copyload751, %block_len.exit321.thread749 ], [ %.sroa.0.0.copyload759, %block_len.exit321.thread757 ], [ %.sroa.0.0.copyload767, %block_len.exit321.thread765 ], [ %.sroa.0.0.copyload, %block_len.exit321 ], [ %.sroa.0.0.copyload, %block_len.exit321 ]
  %.0.i331 = phi i64 [ 64, %alg_of_impl.exit330.thread ], [ 104, %bb.z ], [ 136, %bb.y ], [ 144, %block_len.exit321.thread741 ], [ 128, %block_len.exit321 ], [ 128, %block_len.exit321.thread733 ], [ 128, %block_len.exit321.thread ], [ 128, %block_len.exit321 ], [ 72, %bb.aa ], [ 144, %bb.x ], [ 136, %block_len.exit321.thread749 ], [ 104, %block_len.exit321.thread757 ], [ 72, %block_len.exit321.thread765 ], [ 128, %block_len.exit321 ], [ 128, %block_len.exit321 ]
  %i.dk = phi <2 x ptr> [ %i.di, %alg_of_impl.exit330.thread ], [ %i.di, %bb.z ], [ %i.di, %bb.y ], [ %i.co, %block_len.exit321.thread741 ], [ %i.di, %block_len.exit321 ], [ %i.cu, %block_len.exit321.thread733 ], [ %i.cr, %block_len.exit321.thread ], [ %i.di, %block_len.exit321 ], [ %i.di, %bb.aa ], [ %i.di, %bb.x ], [ %i.cx, %block_len.exit321.thread749 ], [ %i.da, %block_len.exit321.thread757 ], [ %i.dd, %block_len.exit321.thread765 ], [ %i.di, %block_len.exit321 ], [ %i.di, %block_len.exit321 ] ; 3 uses
  %i.dl = urem i64 %i.dj, %.0.i331
  %i.dm = icmp eq i64 %i.dl, 0
  %i.dn = icmp ne i64 %i.dj, 0
  %or.cond12 = and i1 %i.dn, %i.dm
  br i1 %or.cond12, label %bb.ab, label %switch.lookup1041

bb.ab:                                            ; preds = %block_len.exit333
  switch i8 %.val.i, label %default.unreachable1013 [
    i8 0, label %alg_of_impl.exit336.thread
    i8 1, label %alg_of_impl.exit336.thread
    i8 2, label %alg_of_impl.exit336.thread
    i8 3, label %alg_of_impl.exit336.thread
    i8 4, label %block_len.exit339.thread.thread
    i8 5, label %block_len.exit339.thread.thread970
    i8 6, label %block_len.exit339.thread.thread972
    i8 7, label %block_len.exit339.thread.thread974
    i8 8, label %block_len.exit339.thread.thread976
    i8 9, label %block_len.exit339.thread.thread978
    i8 10, label %alg_of_impl.exit336.thread
    i8 11, label %alg_of_impl.exit336.thread
    i8 12, label %block_len.exit339.thread
    i8 13, label %block_len.exit339.thread
  ]

block_len.exit339.thread.thread972:               ; preds = %bb.ab
  %i.do = add i64 %i.dj, -144
  br label %block_len.exit351

block_len.exit339.thread.thread:                  ; preds = %bb.ab
  %i.dp = add i64 %i.dj, -128
  br label %block_len.exit351

block_len.exit339.thread.thread970:               ; preds = %bb.ab
  %i.dq = add i64 %i.dj, -128
  br label %block_len.exit351

alg_of_impl.exit336.thread:                       ; preds = %bb.ab, %bb.ab, %bb.ab, %bb.ab, %bb.ab, %bb.ab
  br label %block_len.exit339.thread

block_len.exit339.thread.thread974:               ; preds = %bb.ab
  %i.dr = add i64 %i.dj, -136
  br label %block_len.exit351

block_len.exit339.thread.thread976:               ; preds = %bb.ab
  %i.ds = add i64 %i.dj, -104
  br label %block_len.exit351

block_len.exit339.thread.thread978:               ; preds = %bb.ab
  %i.dt = add i64 %i.dj, -72
  br label %block_len.exit351

switch.lookup1041:                                ; preds = %block_len.exit333
  %i.du = zext nneg i8 %.val.i to i64
  %switch.gep1051 = getelementptr inbounds nuw i8, ptr @switch.table.init0, i64 %i.du
  %switch.load1052 = load i8, ptr %switch.gep1051, align 1
  %switch.ext1053 = zext i8 %switch.load1052 to i64
  %i.dv = urem i64 %i.dj, %switch.ext1053         ; 2 uses
  %i.dw = icmp eq i64 %i.dv, 0
  br i1 %i.dw, label %switch.lookup1044, label %block_len.exit339.thread

block_len.exit339.thread:                         ; preds = %bb.ab, %bb.ab, %alg_of_impl.exit336.thread, %switch.lookup1041
  %.0196850 = phi i64 [ %i.dv, %switch.lookup1041 ], [ 64, %alg_of_impl.exit336.thread ], [ 128, %bb.ab ], [ 128, %bb.ab ]
  %i.dx = sub i64 %i.dj, %.0196850                ; 6 uses
  switch i8 %.val.i, label %default.unreachable1013 [
    i8 0, label %alg_of_impl.exit348.thread
    i8 1, label %alg_of_impl.exit348.thread
    i8 2, label %alg_of_impl.exit348.thread
    i8 3, label %alg_of_impl.exit348.thread
    i8 4, label %bb.ac
    i8 5, label %bb.ac
    i8 6, label %block_len.exit351
    i8 7, label %bb.ad
    i8 8, label %bb.ae
    i8 9, label %alg_of_impl.exit348
    i8 10, label %alg_of_impl.exit348.thread
    i8 11, label %alg_of_impl.exit348.thread
    i8 12, label %bb.ac
    i8 13, label %bb.ac
  ]

bb.ac:                                            ; preds = %block_len.exit339.thread, %block_len.exit339.thread, %block_len.exit339.thread, %block_len.exit339.thread
  br label %block_len.exit351

alg_of_impl.exit348.thread:                       ; preds = %block_len.exit339.thread, %block_len.exit339.thread, %block_len.exit339.thread, %block_len.exit339.thread, %block_len.exit339.thread, %block_len.exit339.thread
  br label %block_len.exit351

bb.ad:                                            ; preds = %block_len.exit339.thread
  br label %block_len.exit351

bb.ae:                                            ; preds = %block_len.exit339.thread
  br label %block_len.exit351

alg_of_impl.exit348:                              ; preds = %block_len.exit339.thread
  br label %block_len.exit351

block_len.exit351:                                ; preds = %block_len.exit339.thread.thread978, %block_len.exit339.thread.thread976, %block_len.exit339.thread.thread974, %block_len.exit339.thread.thread970, %block_len.exit339.thread.thread, %block_len.exit339.thread.thread972, %block_len.exit339.thread, %bb.ac, %alg_of_impl.exit348.thread, %bb.ad, %bb.ae, %alg_of_impl.exit348
  %i.dy = phi i64 [ %i.dx, %alg_of_impl.exit348.thread ], [ %i.dx, %bb.ae ], [ %i.dx, %bb.ad ], [ %i.dx, %alg_of_impl.exit348 ], [ %i.dx, %bb.ac ], [ %i.dt, %block_len.exit339.thread.thread978 ], [ %i.do, %block_len.exit339.thread.thread972 ], [ %i.dx, %block_len.exit339.thread ], [ %i.dp, %block_len.exit339.thread.thread ], [ %i.dq, %block_len.exit339.thread.thread970 ], [ %i.dr, %block_len.exit339.thread.thread974 ], [ %i.ds, %block_len.exit339.thread.thread976 ]
  %.0.i349 = phi i32 [ 64, %alg_of_impl.exit348.thread ], [ 104, %bb.ae ], [ 136, %bb.ad ], [ 72, %alg_of_impl.exit348 ], [ 128, %bb.ac ], [ 72, %block_len.exit339.thread.thread978 ], [ 144, %block_len.exit339.thread.thread972 ], [ 144, %block_len.exit339.thread ], [ 128, %block_len.exit339.thread.thread ], [ 128, %block_len.exit339.thread.thread970 ], [ 136, %block_len.exit339.thread.thread974 ], [ 104, %block_len.exit339.thread.thread976 ]
  %i.dz = extractelement <2 x ptr> %i.dk, i64 0   ; 2 uses
  %.sroa.439.0.copyload.val203 = load i8, ptr %i.dz, align 8, !tbaa !18
  %i.ea = getelementptr i8, ptr %i.dz, i64 8
  %.sroa.439.0.copyload.val204 = load ptr, ptr %i.ea, align 8, !tbaa !18
  tail call fastcc void @update_multi(i8 %.sroa.439.0.copyload.val203, ptr %.sroa.439.0.copyload.val204, i64 noundef %i.dy, ptr noundef %.sroa.454.0.copyload644667, i32 noundef %.0.i349)
  br label %switch.lookup1044

switch.lookup1044:                                ; preds = %block_len.exit351, %switch.lookup1041
  %i.eb = sub i32 %2, %i.ch                       ; 11 uses
  %i.ec = zext i32 %i.eb to i64
  %i.ed = zext nneg i8 %.val.i to i64
  %switch.gep1055 = getelementptr inbounds nuw i8, ptr @switch.table.init0, i64 %i.ed
  %switch.load1056 = load i8, ptr %switch.gep1055, align 1
  %switch.ext1057 = zext i8 %switch.load1056 to i32
  %i.ee = urem i32 %i.eb, %switch.ext1057
  %i.ef = icmp ne i32 %i.ee, 0
  %.not200 = icmp eq i32 %2, %i.ch
  %or.cond201 = select i1 %i.ef, i1 true, i1 %.not200
  br i1 %or.cond201, label %switch.lookup1047, label %bb.af

bb.af:                                            ; preds = %switch.lookup1044
  switch i8 %.val.i, label %default.unreachable1013 [
    i8 0, label %alg_of_impl.exit360.thread
    i8 1, label %alg_of_impl.exit360.thread
    i8 2, label %alg_of_impl.exit360.thread
    i8 3, label %alg_of_impl.exit360.thread
    i8 4, label %block_len.exit363.thread
    i8 5, label %block_len.exit363.thread892
    i8 6, label %block_len.exit363.thread894
    i8 7, label %block_len.exit363.thread896
    i8 8, label %block_len.exit363.thread898
    i8 9, label %block_len.exit363.thread900
    i8 10, label %alg_of_impl.exit360.thread
    i8 11, label %alg_of_impl.exit360.thread
    i8 12, label %block_len.exit363
    i8 13, label %block_len.exit363
  ]

block_len.exit363.thread894:                      ; preds = %bb.af
  %i.eg = add i32 %i.eb, -144
  br label %block_len.exit375.thread927

block_len.exit363.thread:                         ; preds = %bb.af
  %i.eh = add i32 %i.eb, -128
  br label %block_len.exit375.thread

block_len.exit363.thread892:                      ; preds = %bb.af
  %i.ei = add i32 %i.eb, -128
  br label %block_len.exit375.thread923

alg_of_impl.exit360.thread:                       ; preds = %bb.af, %bb.af, %bb.af, %bb.af, %bb.af, %bb.af
  br label %block_len.exit363

block_len.exit363.thread896:                      ; preds = %bb.af
  %i.ej = add i32 %i.eb, -136
  br label %block_len.exit375.thread931

block_len.exit363.thread898:                      ; preds = %bb.af
  %i.ek = add i32 %i.eb, -104
  br label %block_len.exit375.thread935

block_len.exit363.thread900:                      ; preds = %bb.af
  %i.el = add i32 %i.eb, -72
  br label %block_len.exit375.thread939

switch.lookup1047:                                ; preds = %switch.lookup1044
  %i.em = zext nneg i8 %.val.i to i64
  %switch.gep1059 = getelementptr inbounds nuw i8, ptr @switch.table.init0, i64 %i.em
  %switch.load1060 = load i8, ptr %switch.gep1059, align 1
  %switch.ext1061 = zext i8 %switch.load1060 to i32
  %i.en = urem i32 %i.eb, %switch.ext1061
  br label %block_len.exit363

block_len.exit363:                                ; preds = %bb.af, %bb.af, %alg_of_impl.exit360.thread, %switch.lookup1047
  %.0197 = phi i32 [ %i.en, %switch.lookup1047 ], [ 64, %alg_of_impl.exit360.thread ], [ 128, %bb.af ], [ 128, %bb.af ]
  %i.eo = sub i32 %i.eb, %.0197                   ; 7 uses
  switch i8 %.val.i, label %default.unreachable1013 [
    i8 0, label %alg_of_impl.exit372.thread
    i8 1, label %alg_of_impl.exit372.thread
    i8 2, label %alg_of_impl.exit372.thread
    i8 3, label %alg_of_impl.exit372.thread
    i8 4, label %block_len.exit375.thread
    i8 5, label %block_len.exit375.thread923
    i8 6, label %block_len.exit375.thread927
    i8 7, label %block_len.exit375.thread931
    i8 8, label %block_len.exit375.thread935
    i8 9, label %block_len.exit375.thread939
    i8 10, label %alg_of_impl.exit372.thread
    i8 11, label %alg_of_impl.exit372.thread
    i8 12, label %block_len.exit375
    i8 13, label %block_len.exit375
  ]

alg_of_impl.exit372.thread:                       ; preds = %block_len.exit363, %block_len.exit363, %block_len.exit363, %block_len.exit363, %block_len.exit363, %block_len.exit363
  br label %block_len.exit375

block_len.exit375.thread:                         ; preds = %block_len.exit363.thread, %block_len.exit363
  %.ph919 = phi i32 [ %i.eh, %block_len.exit363.thread ], [ %i.eo, %block_len.exit363 ]
  %i.ep = lshr i32 %.ph919, 7
  br label %block_len.exit381

block_len.exit375.thread923:                      ; preds = %block_len.exit363.thread892, %block_len.exit363
  %.ph922 = phi i32 [ %i.ei, %block_len.exit363.thread892 ], [ %i.eo, %block_len.exit363 ]
  %i.eq = lshr i32 %.ph922, 7
  br label %block_len.exit381

block_len.exit375.thread927:                      ; preds = %block_len.exit363.thread894, %block_len.exit363
  %.ph926 = phi i32 [ %i.eg, %block_len.exit363.thread894 ], [ %i.eo, %block_len.exit363 ]
  %i.er = udiv i32 %.ph926, 144
  br label %block_len.exit381

block_len.exit375.thread931:                      ; preds = %block_len.exit363.thread896, %block_len.exit363
  %.ph930 = phi i32 [ %i.ej, %block_len.exit363.thread896 ], [ %i.eo, %block_len.exit363 ]
  %i.es = udiv i32 %.ph930, 136
  br label %block_len.exit381

block_len.exit375.thread935:                      ; preds = %block_len.exit363.thread898, %block_len.exit363
  %.ph934 = phi i32 [ %i.ek, %block_len.exit363.thread898 ], [ %i.eo, %block_len.exit363 ]
  %i.et = udiv i32 %.ph934, 104
  br label %block_len.exit381

block_len.exit375.thread939:                      ; preds = %block_len.exit363.thread900, %block_len.exit363
  %.ph938 = phi i32 [ %i.el, %block_len.exit363.thread900 ], [ %i.eo, %block_len.exit363 ]
  %i.eu = udiv i32 %.ph938, 72
  br label %block_len.exit381

block_len.exit375:                                ; preds = %block_len.exit363, %block_len.exit363, %alg_of_impl.exit372.thread
  %.0.i373 = phi i32 [ 6, %alg_of_impl.exit372.thread ], [ 7, %block_len.exit363 ], [ 7, %block_len.exit363 ]
  %i.ev = lshr i32 %i.eo, %.0.i373                ; 9 uses
  switch i8 %.val.i, label %default.unreachable1013 [
    i8 0, label %alg_of_impl.exit378.thread
    i8 1, label %alg_of_impl.exit378.thread
    i8 2, label %alg_of_impl.exit378.thread
    i8 3, label %alg_of_impl.exit378.thread
    i8 4, label %block_len.exit381
    i8 5, label %block_len.exit381
    i8 6, label %bb.ag
    i8 7, label %bb.ah
    i8 8, label %bb.ai
    i8 9, label %bb.aj
    i8 10, label %alg_of_impl.exit378.thread
    i8 11, label %alg_of_impl.exit378.thread
    i8 12, label %block_len.exit381
    i8 13, label %block_len.exit381
  ]

bb.ag:                                            ; preds = %block_len.exit375
  br label %block_len.exit381

bb.ah:                                            ; preds = %block_len.exit375
  br label %block_len.exit381

bb.ai:                                            ; preds = %block_len.exit375
  br label %block_len.exit381

bb.aj:                                            ; preds = %block_len.exit375
  br label %block_len.exit381

alg_of_impl.exit378.thread:                       ; preds = %block_len.exit375, %block_len.exit375, %block_len.exit375, %block_len.exit375, %block_len.exit375, %block_len.exit375
  br label %block_len.exit381

block_len.exit381:                                ; preds = %block_len.exit375, %block_len.exit375, %block_len.exit375, %block_len.exit375, %block_len.exit375.thread939, %bb.aj, %block_len.exit375.thread935, %bb.ai, %block_len.exit375.thread931, %bb.ah, %bb.ag, %block_len.exit375.thread927, %block_len.exit375.thread923, %block_len.exit375.thread, %alg_of_impl.exit378.thread
  %i.ew = phi i32 [ %i.ev, %alg_of_impl.exit378.thread ], [ %i.ev, %bb.ai ], [ %i.ev, %bb.ah ], [ %i.er, %block_len.exit375.thread927 ], [ %i.ev, %block_len.exit375 ], [ %i.eq, %block_len.exit375.thread923 ], [ %i.ep, %block_len.exit375.thread ], [ %i.ev, %block_len.exit375 ], [ %i.ev, %bb.aj ], [ %i.ev, %bb.ag ], [ %i.es, %block_len.exit375.thread931 ], [ %i.et, %block_len.exit375.thread935 ], [ %i.eu, %block_len.exit375.thread939 ], [ %i.ev, %block_len.exit375 ], [ %i.ev, %block_len.exit375 ]
  %.0.i379 = phi i32 [ 64, %alg_of_impl.exit378.thread ], [ 104, %bb.ai ], [ 136, %bb.ah ], [ 144, %block_len.exit375.thread927 ], [ 128, %block_len.exit375 ], [ 128, %block_len.exit375.thread923 ], [ 128, %block_len.exit375.thread ], [ 128, %block_len.exit375 ], [ 72, %bb.aj ], [ 144, %bb.ag ], [ 136, %block_len.exit375.thread931 ], [ 104, %block_len.exit375.thread935 ], [ 72, %block_len.exit375.thread939 ], [ 128, %block_len.exit375 ], [ 128, %block_len.exit375 ]
  %i.ex = mul i32 %.0.i379, %i.ew                 ; 3 uses
  %i.ey = sub i32 %i.eb, %i.ex
  %i.ez = zext i32 %i.ex to i64
  %i.fa = getelementptr i8, ptr %i.cj, i64 %i.ez
  %i.fb = extractelement <2 x ptr> %i.dk, i64 0   ; 2 uses
  %.sroa.439.0.copyload.val = load i8, ptr %i.fb, align 8, !tbaa !18
  %i.fc = getelementptr i8, ptr %i.fb, i64 8
  %.sroa.439.0.copyload.val202 = load ptr, ptr %i.fc, align 8, !tbaa !18
  tail call fastcc void @update_multi(i8 %.sroa.439.0.copyload.val, ptr %.sroa.439.0.copyload.val202, i64 noundef %i.dj, ptr noundef %i.cj, i32 noundef %i.ex)
  %i.fd = zext i32 %i.ey to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.454.0.copyload644667, ptr align 1 %i.fa, i64 %i.fd, i1 false)
  %i.fe = add i64 %i.dj, %i.ec
  store i64 %.sroa.0.0.copyload728779, ptr %0, align 8
  store <2 x ptr> %i.dk, ptr %.sroa.0158.sroa.5.0..sroa_idx, align 8, !tbaa !25
  store ptr %.sroa.454.0.copyload644667, ptr %.sroa.0158.sroa.7.0..sroa_idx, align 8, !tbaa !19
  store i64 %i.fe, ptr %.sroa.4159.0..sroa_idx, align 8, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.ak

bb.ak:                                            ; preds = %block_len.exit243, %block_len.exit381, %block_len.exit303, %_Py_LibHacl_Hacl_Streaming_HMAC_index_of_state.exit
  %.0 = phi i8 [ 3, %_Py_LibHacl_Hacl_Streaming_HMAC_index_of_state.exit ], [ 0, %block_len.exit303 ], [ 0, %block_len.exit381 ], [ 0, %block_len.exit243 ]
  ret i8 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @update_multi(i8 %.0.val, ptr %.8.val, i64 noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #4 {
bb.a:
  %i.a = alloca [16 x i32], align 16              ; 4 uses
  %i.b = alloca [16 x i64], align 16              ; 4 uses
  switch i8 %.0.val, label %bb.n [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
    i8 6, label %bb.h
    i8 7, label %bb.i
    i8 8, label %bb.j
    i8 9, label %bb.k
    i8 10, label %bb.l
    i8 11, label %bb.o
    i8 12, label %bb.m
    i8 13, label %bb.o
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = lshr i32 %2, 6
  tail call void @_Py_LibHacl_Hacl_Hash_MD5_update_multi(ptr noundef %.8.val, ptr noundef %1, i32 noundef %i.c) #15
  br label %bb.o

bb.c:                                             ; preds = %bb.a
  %i.d = lshr i32 %2, 6
  tail call void @_Py_LibHacl_Hacl_Hash_SHA1_update_multi(ptr noundef %.8.val, ptr noundef %1, i32 noundef %i.d) #15
  br label %bb.o

bb.d:                                             ; preds = %bb.a
  %i.e = and i32 %2, -64
  tail call void @_Py_LibHacl_Hacl_Hash_SHA2_sha224_update_nblocks(i32 noundef %i.e, ptr noundef %1, ptr noundef %.8.val) #15
  br label %bb.o

bb.e:                                             ; preds = %bb.a
  %i.f = and i32 %2, -64
  tail call void @_Py_LibHacl_Hacl_Hash_SHA2_sha256_update_nblocks(i32 noundef %i.f, ptr noundef %1, ptr noundef %.8.val) #15
  br label %bb.o

bb.f:                                             ; preds = %bb.a
  %i.g = and i32 %2, -128
  tail call void @_Py_LibHacl_Hacl_Hash_SHA2_sha384_update_nblocks(i32 noundef %i.g, ptr noundef %1, ptr noundef %.8.val) #15
  br label %bb.o

bb.g:                                             ; preds = %bb.a
  %i.h = and i32 %2, -128
  tail call void @_Py_LibHacl_Hacl_Hash_SHA2_sha512_update_nblocks(i32 noundef %i.h, ptr noundef %1, ptr noundef %.8.val) #15
  br label %bb.o

bb.h:                                             ; preds = %bb.a
  %i.i = udiv i32 %2, 144
  tail call void @_Py_LibHacl_Hacl_Hash_SHA3_update_multi_sha3(i8 noundef zeroext 9, ptr noundef %.8.val, ptr noundef %1, i32 noundef %i.i) #15
  br label %bb.o

bb.i:                                             ; preds = %bb.a
  %i.j = udiv i32 %2, 136
  tail call void @_Py_LibHacl_Hacl_Hash_SHA3_update_multi_sha3(i8 noundef zeroext 8, ptr noundef %.8.val, ptr noundef %1, i32 noundef %i.j) #15
  br label %bb.o

bb.j:                                             ; preds = %bb.a
  %i.k = udiv i32 %2, 104
  tail call void @_Py_LibHacl_Hacl_Hash_SHA3_update_multi_sha3(i8 noundef zeroext 10, ptr noundef %.8.val, ptr noundef %1, i32 noundef %i.k) #15
  br label %bb.o

bb.k:                                             ; preds = %bb.a
  %i.l = udiv i32 %2, 72
  tail call void @_Py_LibHacl_Hacl_Hash_SHA3_update_multi_sha3(i8 noundef zeroext 11, ptr noundef %.8.val, ptr noundef %1, i32 noundef %i.l) #15
  br label %bb.o

bb.l:                                             ; preds = %bb.a
  %i.m = lshr i32 %2, 6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  %i.n = and i32 %2, -64
  call void @_Py_LibHacl_Hacl_Hash_Blake2s_update_multi(i32 noundef %i.n, ptr noundef nonnull %i.a, ptr noundef %.8.val, i64 noundef %0, ptr noundef %1, i32 noundef %i.m) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %bb.o

bb.m:                                             ; preds = %bb.a
  %i.o = lshr i32 %2, 7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.b, i8 0, i64 128, i1 false)
  %i.p = and i32 %2, -128
  call void @_Py_LibHacl_Hacl_Hash_Blake2b_update_multi(i32 noundef %i.p, ptr noundef nonnull %i.b, ptr noundef %.8.val, i64 %0, i64 0, ptr noundef %1, i32 noundef %i.o) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  br label %bb.o

bb.n:                                             ; preds = %bb.a
  %i.q = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.r = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.q, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 810, ptr noundef nonnull @.str.2) #11 ; 0 uses
  tail call void @exit(i32 noundef 255) #12
  unreachable

bb.o:                                             ; preds = %bb.a, %bb.a, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define hidden zeroext range(i8 0, 5) i8 @_Py_LibHacl_Hacl_Streaming_HMAC_digest(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #4 {
bb.a:
  %.sroa.5142.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.5142.0.copyload = load ptr, ptr %.sroa.5142.0..sroa_idx, align 8, !tbaa !25 ; 3 uses
  %.val.i = load i8, ptr %.sroa.5142.0.copyload, align 8 ; 7 uses
  %switch.i.i.i = icmp ult i8 %.val.i, 14
  br i1 %switch.i.i.i, label %_Py_LibHacl_Hacl_Streaming_HMAC_index_of_state.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.b = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.a, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 175, ptr noundef nonnull @.str.2) #11 ; 0 uses
  tail call void @exit(i32 noundef 255) #12
  unreachable

_Py_LibHacl_Hacl_Streaming_HMAC_index_of_state.exit: ; preds = %bb.a
  %.sroa.6143.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.570.0.copyload = load ptr, ptr %.sroa.6143.0..sroa_idx, align 8, !tbaa !25 ; 2 uses
  %.sroa.671.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.671.0.copyload = load ptr, ptr %.sroa.671.0..sroa_idx, align 8, !tbaa !19 ; 2 uses
  %.sroa.772.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.772.0.copyload = load i64, ptr %.sroa.772.0..sroa_idx, align 8, !tbaa !21 ; 4 uses
  %i.c = zext nneg i8 %.val.i to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.init0, i64 %i.c
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.d = urem i64 %.sroa.772.0.copyload, %switch.ext
  %i.e = icmp eq i64 %i.d, 0
  %i.f = icmp ne i64 %.sroa.772.0.copyload, 0
  %or.cond = and i1 %i.f, %i.e
  %i.g = zext nneg i8 %.val.i to i64              ; 2 uses
  br i1 %or.cond, label %switch.lookup, label %switch.lookup242

default.unreachable239:                           ; preds = %impl_of_state.exit.i
  unreachable

switch.lookup242:                                 ; preds = %_Py_LibHacl_Hacl_Streaming_HMAC_index_of_state.exit
  %switch.gep244 = getelementptr inbounds nuw i8, ptr @switch.table.init0, i64 %i.g
  %switch.load245 = load i8, ptr %switch.gep244, align 1
  %switch.ext246 = zext i8 %switch.load245 to i64
  %i.h = urem i64 %.sroa.772.0.copyload, %switch.ext246
  %i.i = trunc nuw nsw i64 %i.h to i32
  br label %block_len.exit103

switch.lookup:                                    ; preds = %_Py_LibHacl_Hacl_Streaming_HMAC_index_of_state.exit
  %switch.gep240 = getelementptr inbounds nuw i8, ptr @switch.table.init0, i64 %i.g
  %switch.load241 = load i8, ptr %switch.gep240, align 1
  %switch.ext242 = zext i8 %switch.load241 to i32
  br label %block_len.exit103

block_len.exit103:                                ; preds = %switch.lookup, %switch.lookup242
  %.086 = phi i32 [ %i.i, %switch.lookup242 ], [ %switch.ext242, %switch.lookup ] ; 4 uses
  %i.j = tail call fastcc ptr @malloc_(i8 noundef zeroext %.val.i) ; 9 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %.critedge, label %bb.c

bb.c:                                             ; preds = %block_len.exit103
  %i.l = tail call fastcc ptr @malloc_(i8 noundef zeroext %.val.i) ; 7 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %.critedge.sink.split, label %switch.lookup245

switch.lookup245:                                 ; preds = %bb.c
  %.sroa.469.0.copyload.val = load i8, ptr %.sroa.5142.0.copyload, align 8, !tbaa !18
  %i.n = getelementptr i8, ptr %.sroa.5142.0.copyload, i64 8
  %.sroa.469.0.copyload.val93 = load ptr, ptr %i.n, align 8, !tbaa !18
  tail call fastcc void @copy(i8 %.sroa.469.0.copyload.val, ptr %.sroa.469.0.copyload.val93, ptr noundef nonnull %i.j)
  %.sroa.570.0.copyload.val = load i8, ptr %.sroa.570.0.copyload, align 8, !tbaa !18
  %i.o = getelementptr i8, ptr %.sroa.570.0.copyload, i64 8
  %.sroa.570.0.copyload.val92 = load ptr, ptr %i.o, align 8, !tbaa !18
  tail call fastcc void @copy(i8 %.sroa.570.0.copyload.val, ptr %.sroa.570.0.copyload.val92, ptr noundef nonnull %i.l)
  %i.p = zext nneg i32 %.086 to i64               ; 2 uses
  %i.q = sub i64 %.sroa.772.0.copyload, %i.p      ; 2 uses
  %i.r = zext nneg i8 %.val.i to i64
  %switch.gep246 = getelementptr inbounds nuw i8, ptr @switch.table.init0, i64 %i.r
  %switch.load247 = load i8, ptr %switch.gep246, align 1
  %.lhs.trunc = trunc nuw i32 %.086 to i8         ; 2 uses
  %i.s = urem i8 %.lhs.trunc, %switch.load247
  %i.t = icmp eq i8 %i.s, 0
  %i.u = icmp ne i32 %.086, 0
  %or.cond3 = and i1 %i.u, %i.t
  %i.v = zext nneg i8 %.val.i to i64              ; 2 uses
  br i1 %or.cond3, label %switch.lookup248, label %switch.lookup251

switch.lookup251:                                 ; preds = %switch.lookup245
  %switch.gep252 = getelementptr inbounds nuw i8, ptr @switch.table.init0, i64 %i.v
  %switch.load253 = load i8, ptr %switch.gep252, align 1
  %i.w = urem i8 %.lhs.trunc, %switch.load253
  br label %block_len.exit123

switch.lookup248:                                 ; preds = %switch.lookup245
  %switch.gep251 = getelementptr inbounds nuw i8, ptr @switch.table.init0, i64 %i.v
  %switch.load252 = load i8, ptr %switch.gep251, align 1
  br label %block_len.exit123

block_len.exit123:                                ; preds = %switch.lookup248, %switch.lookup251
  %switch.load252.sink = phi i8 [ %switch.load252, %switch.lookup248 ], [ %i.w, %switch.lookup251 ]
  %switch.ext253 = zext i8 %switch.load252.sink to i64
  %i.x = getelementptr i8, ptr %.sroa.671.0.copyload, i64 %i.p
  %i.y = sub nsw i64 0, %switch.ext253
  %i.z = getelementptr i8, ptr %i.x, i64 %i.y
  %.sroa.11.1.val = load i8, ptr %i.j, align 8, !tbaa !18
  %i.aa = getelementptr i8, ptr %i.j, i64 8       ; 4 uses
  %.sroa.11.1.val91 = load ptr, ptr %i.aa, align 8, !tbaa !18
  tail call fastcc void @update_multi(i8 %.sroa.11.1.val, ptr %.sroa.11.1.val91, i64 noundef %i.q, ptr noundef %.sroa.671.0.copyload, i32 noundef 0)
  %.sroa.11.1.val94 = load i8, ptr %i.j, align 8, !tbaa !18
  %.sroa.11.1.val95 = load ptr, ptr %i.aa, align 8, !tbaa !18
  tail call fastcc void @update_last(i8 %.sroa.11.1.val94, ptr %.sroa.11.1.val95, i64 noundef %i.q, ptr noundef %i.z, i32 noundef %.086)
  %.val.i130 = load i8, ptr %i.j, align 8         ; 4 uses
  %switch.i.i.i131 = icmp ult i8 %.val.i130, 14
  br i1 %switch.i.i.i131, label %impl_of_state.exit.i, label %bb.d

bb.d:                                             ; preds = %block_len.exit123
  %i.ab = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.ac = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ab, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 175, ptr noundef nonnull @.str.2) #11 ; 0 uses
  tail call void @exit(i32 noundef 255) #12
  unreachable

impl_of_state.exit.i:                             ; preds = %block_len.exit123
  %.val142.i219 = load ptr, ptr %i.aa, align 8, !tbaa !18 ; 10 uses
  switch i8 %.val.i130, label %default.unreachable239 [
    i8 0, label %block_len.exit.i.thread216
    i8 1, label %bb.e
    i8 2, label %bb.f
    i8 3, label %bb.g
    i8 4, label %bb.h
    i8 5, label %bb.i
    i8 6, label %block_len.exit.thread.i
    i8 7, label %block_len.exit.thread26.i
    i8 8, label %block_len.exit.thread29.i
    i8 9, label %block_len.exit.thread32.i
    i8 10, label %bb.g
    i8 11, label %bb.g
    i8 12, label %bb.i
    i8 13, label %bb.i
  ]

block_len.exit.i.thread216:                       ; preds = %impl_of_state.exit.i
  tail call fastcc void @finish(i8 0, ptr %.val142.i219, ptr noundef %1)
  br label %finish0.exit

block_len.exit.thread.i:                          ; preds = %impl_of_state.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %1, ptr noundef nonnull align 8 dereferenceable(28) %.val142.i219, i64 28, i1 false)
  br label %finish0.exit

block_len.exit.thread26.i:                        ; preds = %impl_of_state.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %.val142.i219, i64 32, i1 false)
  br label %finish0.exit

block_len.exit.thread29.i:                        ; preds = %impl_of_state.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(48) %.val142.i219, i64 48, i1 false)
  br label %finish0.exit

block_len.exit.thread32.i:                        ; preds = %impl_of_state.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(64) %.val142.i219, i64 64, i1 false)
  br label %finish0.exit

bb.e:                                             ; preds = %impl_of_state.exit.i
  tail call fastcc void @finish(i8 1, ptr %.val142.i219, ptr noundef %1)
  br label %finish0.exit

bb.f:                                             ; preds = %impl_of_state.exit.i
  tail call fastcc void @finish(i8 2, ptr %.val142.i219, ptr noundef %1)
  br label %finish0.exit

bb.g:                                             ; preds = %impl_of_state.exit.i, %impl_of_state.exit.i, %impl_of_state.exit.i
  tail call fastcc void @finish(i8 %.val.i130, ptr %.val142.i219, ptr noundef %1)
  br label %finish0.exit

bb.h:                                             ; preds = %impl_of_state.exit.i
  tail call fastcc void @finish(i8 4, ptr %.val142.i219, ptr noundef %1)
  br label %finish0.exit

bb.i:                                             ; preds = %impl_of_state.exit.i, %impl_of_state.exit.i, %impl_of_state.exit.i
  tail call fastcc void @finish(i8 %.val.i130, ptr %.val142.i219, ptr noundef %1)
  br label %finish0.exit

finish0.exit:                                     ; preds = %block_len.exit.i.thread216, %block_len.exit.thread.i, %block_len.exit.thread26.i, %block_len.exit.thread29.i, %block_len.exit.thread32.i, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i
  %i.ad = phi i64 [ 64, %block_len.exit.i.thread216 ], [ 64, %bb.e ], [ 128, %bb.h ], [ 64, %bb.f ], [ 64, %bb.g ], [ 144, %block_len.exit.thread.i ], [ 136, %block_len.exit.thread26.i ], [ 104, %block_len.exit.thread29.i ], [ 72, %block_len.exit.thread32.i ], [ 128, %bb.i ]
  %.0.i16.i = phi i32 [ 16, %block_len.exit.i.thread216 ], [ 20, %bb.e ], [ 48, %bb.h ], [ 28, %bb.f ], [ 32, %bb.g ], [ 28, %block_len.exit.thread.i ], [ 32, %block_len.exit.thread26.i ], [ 48, %block_len.exit.thread29.i ], [ 64, %block_len.exit.thread32.i ], [ 64, %bb.i ]
  %.val9.i = load i8, ptr %i.l, align 8, !tbaa !18
  %i.ae = getelementptr i8, ptr %i.l, i64 8       ; 3 uses
  %.val10.i = load ptr, ptr %i.ae, align 8, !tbaa !18
  tail call fastcc void @update_last(i8 %.val9.i, ptr %.val10.i, i64 noundef %i.ad, ptr noundef %1, i32 noundef %.0.i16.i)
  %.val11.i = load i8, ptr %i.l, align 8, !tbaa !18
  %.val12.i = load ptr, ptr %i.ae, align 8, !tbaa !18
  tail call fastcc void @finish(i8 %.val11.i, ptr %.val12.i, ptr noundef %1)
  %.sroa.0.0.copyload.i = load i8, ptr %i.j, align 8, !tbaa !18
  %switch.i = icmp ult i8 %.sroa.0.0.copyload.i, 14
  br i1 %switch.i, label %free_.exit, label %bb.j

bb.j:                                             ; preds = %finish0.exit
  %i.af = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.ag = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.af, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 1152, ptr noundef nonnull @.str.2) #11 ; 0 uses
  tail call void @exit(i32 noundef 255) #12
  unreachable

free_.exit:                                       ; preds = %finish0.exit
  %.sroa.1727.0.copyload.i = load ptr, ptr %i.aa, align 8, !tbaa !18
  tail call void @free(ptr noundef %.sroa.1727.0.copyload.i) #15
  tail call void @free(ptr noundef nonnull %i.j) #15
  %.sroa.0.0.copyload.i132 = load i8, ptr %i.l, align 8, !tbaa !18
  %switch.i133 = icmp ult i8 %.sroa.0.0.copyload.i132, 14
  br i1 %switch.i133, label %free_.exit136, label %bb.k

bb.k:                                             ; preds = %free_.exit
  %i.ah = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.ai = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ah, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 1152, ptr noundef nonnull @.str.2) #11 ; 0 uses
  tail call void @exit(i32 noundef 255) #12
  unreachable

free_.exit136:                                    ; preds = %free_.exit
  %.sroa.1727.0.copyload.i135 = load ptr, ptr %i.ae, align 8, !tbaa !18
  tail call void @free(ptr noundef %.sroa.1727.0.copyload.i135) #15
  br label %.critedge.sink.split

.critedge.sink.split:                             ; preds = %bb.c, %free_.exit136
  %.sink = phi ptr [ %i.l, %free_.exit136 ], [ %i.j, %bb.c ]
  %.0.ph = phi i8 [ 0, %free_.exit136 ], [ 4, %bb.c ]
  tail call void @free(ptr noundef nonnull %.sink) #15
  br label %.critedge

.critedge:                                        ; preds = %.critedge.sink.split, %block_len.exit103
  %.0 = phi i8 [ 4, %block_len.exit103 ], [ %.0.ph, %.critedge.sink.split ]
  ret i8 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @malloc_(i8 noundef zeroext %0) unnamed_addr #4 {
bb.a:
  switch i8 %0, label %bb.az [
    i8 0, label %bb.b
    i8 1, label %bb.f
    i8 2, label %bb.j
    i8 3, label %bb.n
    i8 4, label %bb.r
    i8 5, label %bb.v
    i8 6, label %bb.z
    i8 7, label %bb.ad
    i8 8, label %bb.ah
    i8 9, label %bb.al
    i8 10, label %bb.ap
    i8 11, label %bb.at
    i8 12, label %bb.au
    i8 13, label %bb.ay
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noalias dereferenceable_or_null(16) ptr @calloc(i64 noundef 4, i64 noundef 4) #13 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.ba, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #14 ; 4 uses
  %cond = icmp eq ptr %i.c, null
  br i1 %cond, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.3120.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 0, ptr %i.c, align 8
  store ptr %i.a, ptr %.sroa.3120.0..sroa_idx, align 8, !tbaa !18
  br label %bb.ba

bb.e:                                             ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.a) #15
  br label %bb.ba

bb.f:                                             ; preds = %bb.a
  %i.d = tail call noalias dereferenceable_or_null(20) ptr @calloc(i64 noundef 5, i64 noundef 4) #13 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.ba, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.f = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #14 ; 5 uses
  %cond188 = icmp eq ptr %i.f, null
  br i1 %cond188, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.2108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.2108.0..sroa_idx, i8 0, i64 7, i1 false)
  store i8 1, ptr %i.f, align 8, !tbaa !18
  %.sroa.3109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.d, ptr %.sroa.3109.0..sroa_idx, align 8, !tbaa !18
  br label %bb.ba

bb.i:                                             ; preds = %bb.g
  tail call void @free(ptr noundef nonnull %i.d) #15
  br label %bb.ba

bb.j:                                             ; preds = %bb.a
  %i.g = tail call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 8, i64 noundef 4) #13 ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.ba, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.i = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #14 ; 5 uses
  %cond189 = icmp eq ptr %i.i, null
  br i1 %cond189, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
end_hunk_0
begin_hunk_1_@copy:bb.a
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.41.0.copyload = load ptr, ptr %.sroa.41.0..sroa_idx, align 8, !tbaa !18
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %.sroa.41.0.copyload, ptr noundef nonnull align 8 dereferenceable(128) %.8.val, i64 128, i1 false)
  br label %bb.am

bb.ak:                                            ; preds = %bb.ai
  %i.x = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 1372, ptr noundef nonnull @.str.2) ; 0 uses
  tail call void @exit(i32 noundef 255) #12
  unreachable

bb.al:                                            ; preds = %bb.a
  %i.y = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.z = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.y, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 1402, ptr noundef nonnull @.str.2) #11 ; 0 uses
  tail call void @exit(i32 noundef 255) #12
  unreachable

bb.am:                                            ; preds = %bb.a, %bb.a, %bb.aj, %bb.ag, %bb.ad, %bb.aa, %bb.x, %bb.u, %bb.r, %bb.o, %bb.l, %bb.i, %bb.f, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @update_last(i8 %.0.val, ptr %.8.val, i64 noundef %0, ptr noundef %1, i32 noundef range(i32 0, 145) %2) unnamed_addr #4 {
bb.a:
  %i.a = alloca [16 x i32], align 16              ; 4 uses
  %i.b = alloca [16 x i64], align 16              ; 4 uses
  switch i8 %.0.val, label %bb.n [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
    i8 6, label %bb.h
    i8 7, label %bb.i
    i8 8, label %bb.j
    i8 9, label %bb.k
    i8 10, label %bb.l
    i8 11, label %bb.o
    i8 12, label %bb.m
    i8 13, label %bb.o
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @_Py_LibHacl_Hacl_Hash_MD5_update_last(ptr noundef %.8.val, i64 noundef %0, ptr noundef %1, i32 noundef %2) #15
  br label %bb.o

bb.c:                                             ; preds = %bb.a
  tail call void @_Py_LibHacl_Hacl_Hash_SHA1_update_last(ptr noundef %.8.val, i64 noundef %0, ptr noundef %1, i32 noundef %2) #15
  br label %bb.o

bb.d:                                             ; preds = %bb.a
  %i.c = zext nneg i32 %2 to i64
  %i.d = add i64 %0, %i.c
  tail call void @_Py_LibHacl_Hacl_Hash_SHA2_sha224_update_last(i64 noundef %i.d, i32 noundef %2, ptr noundef %1, ptr noundef %.8.val) #15
  br label %bb.o

bb.e:                                             ; preds = %bb.a
  %i.e = zext nneg i32 %2 to i64
  %i.f = add i64 %0, %i.e
  tail call void @_Py_LibHacl_Hacl_Hash_SHA2_sha256_update_last(i64 noundef %i.f, i32 noundef %2, ptr noundef %1, ptr noundef %.8.val) #15
  br label %bb.o

bb.f:                                             ; preds = %bb.a
  %i.g = zext nneg i32 %2 to i64
  %i.h = add i64 %0, %i.g                         ; 2 uses
  %i.i = xor i64 %i.h, -1
  %i.j = and i64 %0, %i.i
  %i.k = lshr i64 %i.j, 63
  tail call void @_Py_LibHacl_Hacl_Hash_SHA2_sha384_update_last(i64 %i.h, i64 %i.k, i32 noundef %2, ptr noundef %1, ptr noundef %.8.val) #15
  br label %bb.o

bb.g:                                             ; preds = %bb.a
  %i.l = zext nneg i32 %2 to i64
  %i.m = add i64 %0, %i.l                         ; 2 uses
  %i.n = xor i64 %i.m, -1
  %i.o = and i64 %0, %i.n
  %i.p = lshr i64 %i.o, 63
  tail call void @_Py_LibHacl_Hacl_Hash_SHA2_sha512_update_last(i64 %i.m, i64 %i.p, i32 noundef %2, ptr noundef %1, ptr noundef %.8.val) #15
  br label %bb.o

bb.h:                                             ; preds = %bb.a
  tail call void @_Py_LibHacl_Hacl_Hash_SHA3_update_last_sha3(i8 noundef zeroext 9, ptr noundef %.8.val, ptr noundef %1, i32 noundef %2) #15
  br label %bb.o

bb.i:                                             ; preds = %bb.a
  tail call void @_Py_LibHacl_Hacl_Hash_SHA3_update_last_sha3(i8 noundef zeroext 8, ptr noundef %.8.val, ptr noundef %1, i32 noundef %2) #15
  br label %bb.o

bb.j:                                             ; preds = %bb.a
  tail call void @_Py_LibHacl_Hacl_Hash_SHA3_update_last_sha3(i8 noundef zeroext 10, ptr noundef %.8.val, ptr noundef %1, i32 noundef %2) #15
  br label %bb.o

bb.k:                                             ; preds = %bb.a
  tail call void @_Py_LibHacl_Hacl_Hash_SHA3_update_last_sha3(i8 noundef zeroext 11, ptr noundef %.8.val, ptr noundef %1, i32 noundef %2) #15
  br label %bb.o

bb.l:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  call void @_Py_LibHacl_Hacl_Hash_Blake2s_update_last(i32 noundef %2, ptr noundef nonnull %i.a, ptr noundef %.8.val, i1 noundef zeroext false, i64 noundef %0, i32 noundef %2, ptr noundef %1) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %bb.o

bb.m:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.b, i8 0, i64 128, i1 false)
  call void @_Py_LibHacl_Hacl_Hash_Blake2b_update_last(i32 noundef %2, ptr noundef nonnull %i.b, ptr noundef %.8.val, i1 noundef zeroext false, i64 %0, i64 0, i32 noundef %2, ptr noundef %1) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  br label %bb.o

bb.n:                                             ; preds = %bb.a
  %i.q = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.r = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.q, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 934, ptr noundef nonnull @.str.2) #11 ; 0 uses
  tail call void @exit(i32 noundef 255) #12
  unreachable

bb.o:                                             ; preds = %bb.a, %bb.a, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #6

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define hidden void @_Py_LibHacl_Hacl_Streaming_HMAC_free(ptr noundef captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %.sroa.519.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.519.0.copyload = load ptr, ptr %.sroa.519.0..sroa_idx, align 8, !tbaa !25 ; 3 uses
  %.val.i = load i8, ptr %.sroa.519.0.copyload, align 8
  %switch.i.i.i = icmp ult i8 %.val.i, 14
  br i1 %switch.i.i.i, label %free_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.b = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.a, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 175, ptr noundef nonnull @.str.2) #11 ; 0 uses
  tail call void @exit(i32 noundef 255) #12
  unreachable

free_.exit:                                       ; preds = %bb.a
  %.sroa.6.0..sroa_idx20 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx20, align 8, !tbaa !25 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !19
  %.sroa.1727.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.519.0.copyload, i64 8
  %.sroa.1727.0.copyload.i = load ptr, ptr %.sroa.1727.0..sroa_idx.i, align 8, !tbaa !18
  tail call void @free(ptr noundef %.sroa.1727.0.copyload.i) #15
  tail call void @free(ptr noundef nonnull %.sroa.519.0.copyload) #15
  %.sroa.0.0.copyload.i9 = load i8, ptr %.sroa.5.0.copyload, align 8, !tbaa !18
  %switch.i10 = icmp ult i8 %.sroa.0.0.copyload.i9, 14
  br i1 %switch.i10, label %free_.exit13, label %bb.c

bb.c:                                             ; preds = %free_.exit
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.d = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.c, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 1152, ptr noundef nonnull @.str.2) #11 ; 0 uses
  tail call void @exit(i32 noundef 255) #12
  unreachable

free_.exit13:                                     ; preds = %free_.exit
  %.sroa.1727.0..sroa_idx.i11 = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload, i64 8
  %.sroa.1727.0.copyload.i12 = load ptr, ptr %.sroa.1727.0..sroa_idx.i11, align 8, !tbaa !18
  tail call void @free(ptr noundef %.sroa.1727.0.copyload.i12) #15
  tail call void @free(ptr noundef nonnull %.sroa.5.0.copyload) #15
  tail call void @free(ptr noundef %.sroa.6.0.copyload) #15
  tail call void @free(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: nounwind uwtable
define hidden noundef ptr @_Py_LibHacl_Hacl_Streaming_HMAC_copy(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %.sroa.065.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.065.sroa.4.0.copyload = load ptr, ptr %.sroa.065.sroa.4.0..sroa_idx, align 8, !tbaa !25 ; 3 uses
  %.sroa.065.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.065.sroa.5.0.copyload = load ptr, ptr %.sroa.065.sroa.5.0..sroa_idx, align 8, !tbaa !25 ; 2 uses
  %.sroa.466.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.466.0.copyload = load ptr, ptr %.sroa.466.0..sroa_idx, align 8, !tbaa !19
  %.sroa.567.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.567.0.copyload = load i64, ptr %.sroa.567.0..sroa_idx, align 8, !tbaa !21
  %.val.i = load i8, ptr %.sroa.065.sroa.4.0.copyload, align 8 ; 6 uses
  %switch.i.i.i = icmp ult i8 %.val.i, 14
  br i1 %switch.i.i.i, label %_Py_LibHacl_Hacl_Streaming_HMAC_index_of_state.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.b = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.a, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 175, ptr noundef nonnull @.str.2) #11 ; 0 uses
  tail call void @exit(i32 noundef 255) #12
  unreachable

_Py_LibHacl_Hacl_Streaming_HMAC_index_of_state.exit: ; preds = %bb.a
  %.sroa.065.sroa.0.0.copyload = load i64, ptr %0, align 8
  %.sroa.3.0.insert.ext.i = and i64 %.sroa.065.sroa.0.0.copyload, 4294967295
  %i.c = and i8 %.val.i, 14
  %switch = icmp eq i8 %i.c, 4
  br i1 %switch, label %block_len.exit84, label %switch.lookup

switch.lookup:                                    ; preds = %_Py_LibHacl_Hacl_Streaming_HMAC_index_of_state.exit
  %i.d = zext nneg i8 %.val.i to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.init0, i64 %i.d
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  br label %block_len.exit84

block_len.exit84:                                 ; preds = %_Py_LibHacl_Hacl_Streaming_HMAC_index_of_state.exit, %switch.lookup
  %.0.i82 = phi i64 [ 128, %_Py_LibHacl_Hacl_Streaming_HMAC_index_of_state.exit ], [ %switch.ext, %switch.lookup ]
  %i.e = tail call noalias ptr @calloc(i64 noundef %.0.i82, i64 noundef 1) #13 ; 5 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.i, label %switch.lookup144

switch.lookup144:                                 ; preds = %block_len.exit84
  %i.g = zext nneg i8 %.val.i to i64
  %switch.gep145 = getelementptr inbounds nuw i8, ptr @switch.table.init0, i64 %i.g
  %switch.load146 = load i8, ptr %switch.gep145, align 1
  %switch.ext147 = zext i8 %switch.load146 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.e, ptr noundef nonnull align 1 dereferenceable(1) %.sroa.466.0.copyload, i64 %switch.ext147, i1 false)
  %i.h = tail call fastcc ptr @malloc_(i8 noundef zeroext %.val.i) ; 7 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %.critedge, label %bb.c

bb.c:                                             ; preds = %switch.lookup144
  %i.j = tail call fastcc ptr @malloc_(i8 noundef zeroext %.val.i) ; 6 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %.thread, label %bb.d

.thread:                                          ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.h) #15
  br label %.critedge

.critedge:                                        ; preds = %.thread, %switch.lookup144
  tail call void @free(ptr noundef nonnull %i.e) #15
  br label %bb.i

bb.d:                                             ; preds = %bb.c
  %.sroa.3.0.copyload.val = load i8, ptr %.sroa.065.sroa.4.0.copyload, align 8, !tbaa !18
  %i.l = getelementptr i8, ptr %.sroa.065.sroa.4.0.copyload, i64 8
  %.sroa.3.0.copyload.val77 = load ptr, ptr %i.l, align 8, !tbaa !18
  tail call fastcc void @copy(i8 %.sroa.3.0.copyload.val, ptr %.sroa.3.0.copyload.val77, ptr noundef nonnull %i.h)
  %.sroa.411.0.copyload.val = load i8, ptr %.sroa.065.sroa.5.0.copyload, align 8, !tbaa !18
  %i.m = getelementptr i8, ptr %.sroa.065.sroa.5.0.copyload, i64 8
  %.sroa.411.0.copyload.val76 = load ptr, ptr %i.m, align 8, !tbaa !18
  tail call fastcc void @copy(i8 %.sroa.411.0.copyload.val, ptr %.sroa.411.0.copyload.val76, ptr noundef nonnull %i.j)
  %i.n = tail call noalias dereferenceable_or_null(40) ptr @malloc(i64 noundef 40) #14 ; 7 uses
  %cond = icmp eq ptr %i.n, null
  br i1 %cond, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i64 %.sroa.3.0.insert.ext.i, ptr %i.n, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.h, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8, !tbaa !25
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr %i.j, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8, !tbaa !25
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr %i.e, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !19
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  store i64 %.sroa.567.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !21
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %.sroa.0.0.copyload.i = load i8, ptr %i.h, align 8, !tbaa !18
  %switch.i = icmp ult i8 %.sroa.0.0.copyload.i, 14
  br i1 %switch.i, label %free_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.p = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.o, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 1152, ptr noundef nonnull @.str.2) #11 ; 0 uses
  tail call void @exit(i32 noundef 255) #12
  unreachable

free_.exit:                                       ; preds = %bb.f
  %.sroa.1727.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.1727.0.copyload.i = load ptr, ptr %.sroa.1727.0..sroa_idx.i, align 8, !tbaa !18
  tail call void @free(ptr noundef %.sroa.1727.0.copyload.i) #15
  tail call void @free(ptr noundef nonnull %i.h) #15
  %.sroa.0.0.copyload.i93 = load i8, ptr %i.j, align 8, !tbaa !18
  %switch.i94 = icmp ult i8 %.sroa.0.0.copyload.i93, 14
  br i1 %switch.i94, label %free_.exit97, label %bb.h

bb.h:                                             ; preds = %free_.exit
  %i.q = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.r = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.q, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 1152, ptr noundef nonnull @.str.2) #11 ; 0 uses
  tail call void @exit(i32 noundef 255) #12
  unreachable

free_.exit97:                                     ; preds = %free_.exit
  %.sroa.1727.0..sroa_idx.i95 = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.1727.0.copyload.i96 = load ptr, ptr %.sroa.1727.0..sroa_idx.i95, align 8, !tbaa !18
  tail call void @free(ptr noundef %.sroa.1727.0.copyload.i96) #15
  tail call void @free(ptr noundef nonnull %i.j) #15
  tail call void @free(ptr noundef nonnull %i.e) #15
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %.critedge, %free_.exit97, %block_len.exit84
  %.3 = phi ptr [ null, %block_len.exit84 ], [ null, %.critedge ], [ null, %free_.exit97 ], [ %i.n, %bb.e ]
  ret ptr %.3
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define internal fastcc void @init0(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly byval(%struct.Hacl_Streaming_HMAC_Definitions_two_state_s) align 8 captures(none) %2) unnamed_addr #4 {
bb.a:
  %i.a = alloca [168 x i8], align 16              ; 30 uses
  %i.b = alloca [168 x i8], align 16              ; 4 uses
  %i.c = alloca [168 x i8], align 16              ; 5 uses
  %i.d = load i32, ptr %2, align 8, !tbaa !17     ; 16 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !10   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !14   ; 3 uses
  %.val35 = load i8, ptr %i.f, align 8, !tbaa !18
  %i.i = getelementptr i8, ptr %i.f, i64 8
  %.val36 = load ptr, ptr %i.i, align 8, !tbaa !18
  tail call fastcc void @init(i8 %.val35, ptr %.val36)
  %.val33 = load i8, ptr %i.h, align 8, !tbaa !18
  %i.j = getelementptr i8, ptr %i.h, i64 8        ; 2 uses
  %.val34 = load ptr, ptr %i.j, align 8, !tbaa !18
  tail call fastcc void @init(i8 %.val33, ptr %.val34)
  %.val = load i8, ptr %i.f, align 8              ; 6 uses
  %switch.i.i = icmp ult i8 %.val, 14
  br i1 %switch.i.i, label %impl_of_state.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.l = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.k, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 175, ptr noundef nonnull @.str.2) #11 ; 0 uses
  tail call void @exit(i32 noundef 255) #12
  unreachable

impl_of_state.exit:                               ; preds = %bb.a
  switch i8 %.val, label %default.unreachable69 [
    i8 0, label %alg_of_impl.exit.thread
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %alg_of_impl.exit.thread51
    i8 5, label %bb.f
    i8 6, label %alg_of_impl.exit.thread54
    i8 7, label %alg_of_impl.exit.thread56
    i8 8, label %alg_of_impl.exit.thread59
    i8 9, label %alg_of_impl.exit.thread62
    i8 10, label %alg_of_impl.exit
    i8 11, label %alg_of_impl.exit
    i8 12, label %bb.g
    i8 13, label %bb.g
  ]

bb.c:                                             ; preds = %impl_of_state.exit
  br label %alg_of_impl.exit.thread

bb.d:                                             ; preds = %impl_of_state.exit
  br label %alg_of_impl.exit.thread

bb.e:                                             ; preds = %impl_of_state.exit
  br label %alg_of_impl.exit.thread

bb.f:                                             ; preds = %impl_of_state.exit
  br label %alg_of_impl.exit.thread51

alg_of_impl.exit.thread54:                        ; preds = %impl_of_state.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(168) %i.a, i8 0, i64 168, i1 false)
  br label %block_len.exit.i

alg_of_impl.exit.thread56:                        ; preds = %impl_of_state.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(168) %i.a, i8 0, i64 168, i1 false)
  br label %block_len.exit.i

alg_of_impl.exit.thread59:                        ; preds = %impl_of_state.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(168) %i.a, i8 0, i64 168, i1 false)
  br label %block_len.exit.i

alg_of_impl.exit.thread62:                        ; preds = %impl_of_state.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(168) %i.a, i8 0, i64 168, i1 false)
  br label %block_len.exit.i

bb.g:                                             ; preds = %impl_of_state.exit, %impl_of_state.exit
  br label %alg_of_impl.exit

default.unreachable69:                            ; preds = %bb.i, %hash_len.exit.i, %impl_of_state.exit
  unreachable

alg_of_impl.exit.thread:                          ; preds = %impl_of_state.exit, %bb.c, %bb.d, %bb.e
  %.0.i.ph = phi i8 [ 5, %impl_of_state.exit ], [ 1, %bb.e ], [ 0, %bb.d ], [ 4, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(168) %i.a, i8 0, i64 168, i1 false)
  br label %block_len.exit.i

alg_of_impl.exit.thread51:                        ; preds = %bb.f, %impl_of_state.exit
  %.0.i.ph50 = phi i8 [ 3, %bb.f ], [ 2, %impl_of_state.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(168) %i.a, i8 0, i64 168, i1 false)
  br label %block_len.exit.i

alg_of_impl.exit:                                 ; preds = %impl_of_state.exit, %impl_of_state.exit, %bb.g
  %.0.i = phi i8 [ 7, %bb.g ], [ 6, %impl_of_state.exit ], [ 6, %impl_of_state.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(168) %i.a, i8 0, i64 168, i1 false)
  %i.m = and i8 %.val, 14
  %switch = icmp eq i8 %i.m, 12
  %. = select i1 %switch, i32 128, i32 64
  br label %block_len.exit.i

block_len.exit.i:                                 ; preds = %alg_of_impl.exit, %alg_of_impl.exit.thread62, %alg_of_impl.exit.thread59, %alg_of_impl.exit.thread56, %alg_of_impl.exit.thread, %alg_of_impl.exit.thread51, %alg_of_impl.exit.thread54
  %.0.i47 = phi i8 [ %.0.i, %alg_of_impl.exit ], [ 10, %alg_of_impl.exit.thread59 ], [ 11, %alg_of_impl.exit.thread62 ], [ %.0.i.ph, %alg_of_impl.exit.thread ], [ 8, %alg_of_impl.exit.thread56 ], [ 9, %alg_of_impl.exit.thread54 ], [ %.0.i.ph50, %alg_of_impl.exit.thread51 ] ; 3 uses
  %.0.i19.i = phi i32 [ %., %alg_of_impl.exit ], [ 104, %alg_of_impl.exit.thread59 ], [ 72, %alg_of_impl.exit.thread62 ], [ 64, %alg_of_impl.exit.thread ], [ 136, %alg_of_impl.exit.thread56 ], [ 144, %alg_of_impl.exit.thread54 ], [ 128, %alg_of_impl.exit.thread51 ]
  %.not.i = icmp ugt i32 %i.d, %.0.i19.i
  br i1 %.not.i, label %switch.lookup, label %hash_len.exit.i

hash_len.exit.i:                                  ; preds = %block_len.exit.i
  switch i8 %.val, label %default.unreachable69 [
    i8 0, label %alg_of_impl.exit25.thread.i
    i8 1, label %alg_of_impl.exit25.thread.i
    i8 2, label %alg_of_impl.exit25.thread.i
    i8 3, label %alg_of_impl.exit25.thread.i
    i8 4, label %block_len.exit28.i
    i8 5, label %block_len.exit28.i
    i8 6, label %block_len.exit28.thread.i
    i8 7, label %hash_len.exit.thread57.i
    i8 8, label %hash_len.exit.thread58.i
    i8 9, label %alg_of_impl.exit25.i
    i8 10, label %alg_of_impl.exit25.thread.i
    i8 11, label %alg_of_impl.exit25.thread.i
    i8 12, label %block_len.exit28.i
    i8 13, label %block_len.exit28.i
  ]

alg_of_impl.exit25.thread.i:                      ; preds = %hash_len.exit.i, %hash_len.exit.i, %hash_len.exit.i, %hash_len.exit.i, %hash_len.exit.i, %hash_len.exit.i
  br label %block_len.exit28.i

hash_len.exit.thread57.i:                         ; preds = %hash_len.exit.i
  br label %block_len.exit28.i

hash_len.exit.thread58.i:                         ; preds = %hash_len.exit.i
  br label %block_len.exit28.i

alg_of_impl.exit25.i:                             ; preds = %hash_len.exit.i
  br label %block_len.exit28.i

switch.lookup:                                    ; preds = %block_len.exit.i
  %i.n = zext nneg i8 %.val to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.init0, i64 %i.n
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %block_len.exit28.i

block_len.exit28.i:                               ; preds = %hash_len.exit.i, %hash_len.exit.i, %hash_len.exit.i, %hash_len.exit.i, %switch.lookup, %alg_of_impl.exit25.i, %hash_len.exit.thread58.i, %hash_len.exit.thread57.i, %alg_of_impl.exit25.thread.i
  %.0.i26.i = phi i32 [ 64, %alg_of_impl.exit25.thread.i ], [ 72, %alg_of_impl.exit25.i ], [ 104, %hash_len.exit.thread58.i ], [ 136, %hash_len.exit.thread57.i ], [ %switch.ext, %switch.lookup ], [ 128, %hash_len.exit.i ], [ 128, %hash_len.exit.i ], [ 128, %hash_len.exit.i ], [ 128, %hash_len.exit.i ]
  %.not17.i = icmp ugt i32 %i.d, %.0.i26.i
  br i1 %.not17.i, label %bb.i, label %block_len.exit28.thread.i

block_len.exit28.thread.i:                        ; preds = %block_len.exit28.i, %hash_len.exit.i
  %.not18.i = icmp eq i32 %i.d, 0
  br i1 %.not18.i, label %wrap_key.exit, label %bb.h

bb.h:                                             ; preds = %block_len.exit28.thread.i
  %i.o = zext nneg i32 %i.d to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 1 %0, i64 %i.o, i1 false)
  br label %wrap_key.exit

bb.i:                                             ; preds = %block_len.exit28.i
  switch i8 %.val, label %default.unreachable69 [
    i8 0, label %bb.j
    i8 1, label %bb.k
    i8 2, label %bb.l
    i8 3, label %bb.m
    i8 4, label %bb.n
    i8 5, label %bb.o
    i8 6, label %bb.p
    i8 7, label %bb.q
    i8 8, label %bb.r
    i8 9, label %bb.s
    i8 10, label %bb.t
    i8 11, label %wrap_key.exit
    i8 12, label %bb.u
    i8 13, label %wrap_key.exit
  ]

bb.j:                                             ; preds = %bb.i
  call void @_Py_LibHacl_Hacl_Hash_MD5_hash_oneshot(ptr noundef nonnull %i.a, ptr noundef %0, i32 noundef range(i32 65, 0) %i.d) #15
  br label %wrap_key.exit

bb.k:                                             ; preds = %bb.i
  call void @_Py_LibHacl_Hacl_Hash_SHA1_hash_oneshot(ptr noundef nonnull %i.a, ptr noundef %0, i32 noundef range(i32 65, 0) %i.d) #15
  br label %wrap_key.exit

bb.l:                                             ; preds = %bb.i
  call void @_Py_LibHacl_Hacl_Hash_SHA2_hash_224(ptr noundef nonnull %i.a, ptr noundef %0, i32 noundef range(i32 65, 0) %i.d) #15
  br label %wrap_key.exit

bb.m:                                             ; preds = %bb.i
  call void @_Py_LibHacl_Hacl_Hash_SHA2_hash_256(ptr noundef nonnull %i.a, ptr noundef %0, i32 noundef range(i32 65, 0) %i.d) #15
  br label %wrap_key.exit

bb.n:                                             ; preds = %bb.i
  call void @_Py_LibHacl_Hacl_Hash_SHA2_hash_384(ptr noundef nonnull %i.a, ptr noundef %0, i32 noundef range(i32 65, 0) %i.d) #15
  br label %wrap_key.exit

bb.o:                                             ; preds = %bb.i
  call void @_Py_LibHacl_Hacl_Hash_SHA2_hash_512(ptr noundef nonnull %i.a, ptr noundef %0, i32 noundef range(i32 65, 0) %i.d) #15
  br label %wrap_key.exit

bb.p:                                             ; preds = %bb.i
  call void @_Py_LibHacl_Hacl_Hash_SHA3_sha3_224(ptr noundef nonnull %i.a, ptr noundef %0, i32 noundef range(i32 65, 0) %i.d) #15
  br label %wrap_key.exit

bb.q:                                             ; preds = %bb.i
  call void @_Py_LibHacl_Hacl_Hash_SHA3_sha3_256(ptr noundef nonnull %i.a, ptr noundef %0, i32 noundef range(i32 65, 0) %i.d) #15
  br label %wrap_key.exit

bb.r:                                             ; preds = %bb.i
  call void @_Py_LibHacl_Hacl_Hash_SHA3_sha3_384(ptr noundef nonnull %i.a, ptr noundef %0, i32 noundef range(i32 65, 0) %i.d) #15
  br label %wrap_key.exit

bb.s:                                             ; preds = %bb.i
  call void @_Py_LibHacl_Hacl_Hash_SHA3_sha3_512(ptr noundef nonnull %i.a, ptr noundef %0, i32 noundef range(i32 65, 0) %i.d) #15
  br label %wrap_key.exit

bb.t:                                             ; preds = %bb.i
  call void @_Py_LibHacl_Hacl_Hash_Blake2s_hash_with_key(ptr noundef nonnull %i.a, i32 noundef 32, ptr noundef %0, i32 noundef range(i32 65, 0) %i.d, ptr noundef null, i32 noundef 0) #15
  br label %wrap_key.exit

bb.u:                                             ; preds = %bb.i
  call void @_Py_LibHacl_Hacl_Hash_Blake2b_hash_with_key(ptr noundef nonnull %i.a, i32 noundef 64, ptr noundef %0, i32 noundef range(i32 65, 0) %i.d, ptr noundef null, i32 noundef 0) #15
  br label %wrap_key.exit

wrap_key.exit:                                    ; preds = %block_len.exit28.thread.i, %bb.h, %bb.i, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(168) %i.b, i8 54, i64 168, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(168) %i.c, i8 92, i64 168, i1 false)
  %i.p = zext nneg i8 %.0.i47 to i64
  %switch.gep73 = getelementptr inbounds nuw i8, ptr @switch.table.init0.31, i64 %i.p
  %switch.load74 = load i8, ptr %switch.gep73, align 1
  %switch.ext75 = zext i8 %switch.load74 to i64
  br label %switch.lookup72

switch.lookup72:                                  ; preds = %wrap_key.exit, %bb.v
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.v ], [ 0, %wrap_key.exit ] ; 5 uses
  %i.q = icmp samesign ult i64 %indvars.iv, %switch.ext75
  br i1 %i.q, label %bb.v, label %switch.lookup75.preheader

switch.lookup75.preheader:                        ; preds = %switch.lookup72
  %i.r = zext nneg i8 %.0.i47 to i64
  %switch.gep77 = getelementptr inbounds nuw i8, ptr @switch.table.init0.31, i64 %i.r
  %switch.load78 = load i8, ptr %switch.gep77, align 1
  %switch.ext79 = zext i8 %switch.load78 to i64
  br label %switch.lookup75

bb.v:                                             ; preds = %switch.lookup72
  %i.s = getelementptr i8, ptr %i.b, i64 %indvars.iv
  %i.t = load i8, ptr %i.s, align 1, !tbaa !18
  %i.u = getelementptr i8, ptr %i.a, i64 %indvars.iv
  %i.v = load i8, ptr %i.u, align 1, !tbaa !18
  %i.w = xor i8 %i.v, %i.t
  %i.x = getelementptr i8, ptr %1, i64 %indvars.iv
  store i8 %i.w, ptr %i.x, align 1, !tbaa !18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %switch.lookup72, !llvm.loop !27

switch.lookup75:                                  ; preds = %switch.lookup75.preheader, %bb.w
  %indvars.iv66 = phi i64 [ %indvars.iv.next67, %bb.w ], [ 0, %switch.lookup75.preheader ] ; 4 uses
  %i.y = icmp samesign ult i64 %indvars.iv66, %switch.ext79
  br i1 %i.y, label %bb.w, label %switch.lookup78

switch.lookup78:                                  ; preds = %switch.lookup75
  %i.z = zext nneg i8 %.0.i47 to i64
  %switch.gep81 = getelementptr inbounds nuw i8, ptr @switch.table.init0.31, i64 %i.z
  %switch.load82 = load i8, ptr %switch.gep81, align 1
  %switch.ext83 = zext i8 %switch.load82 to i32
  %.val37 = load i8, ptr %i.h, align 8, !tbaa !18
  %.val38 = load ptr, ptr %i.j, align 8, !tbaa !18
  call fastcc void @update_multi(i8 %.val37, ptr %.val38, i64 noundef 0, ptr noundef nonnull %i.c, i32 noundef %switch.ext83)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret void

bb.w:                                             ; preds = %switch.lookup75
  %i.aa = getelementptr i8, ptr %i.c, i64 %indvars.iv66 ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !18
  %i.ac = getelementptr i8, ptr %i.a, i64 %indvars.iv66
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !18
  %i.ae = xor i8 %i.ad, %i.ab
  store i8 %i.ae, ptr %i.aa, align 1, !tbaa !18
  %indvars.iv.next67 = add nuw nsw i64 %indvars.iv66, 1
  br label %switch.lookup75, !llvm.loop !29
}

; Function Attrs: nounwind uwtable
define internal fastcc void @init(i8 %.0.val, ptr %.8.val) unnamed_addr #4 {
bb.a:
  switch i8 %.0.val, label %bb.n [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
    i8 6, label %bb.h
    i8 7, label %bb.i
    i8 8, label %bb.j
    i8 9, label %bb.k
    i8 10, label %bb.l
    i8 11, label %bb.o
    i8 12, label %bb.m
    i8 13, label %bb.o
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @_Py_LibHacl_Hacl_Hash_MD5_init(ptr noundef %.8.val) #15
  br label %bb.o

bb.c:                                             ; preds = %bb.a
  tail call void @_Py_LibHacl_Hacl_Hash_SHA1_init(ptr noundef %.8.val) #15
  br label %bb.o

bb.d:                                             ; preds = %bb.a
  tail call void @_Py_LibHacl_Hacl_Hash_SHA2_sha224_init(ptr noundef %.8.val) #15
  br label %bb.o

bb.e:                                             ; preds = %bb.a
  tail call void @_Py_LibHacl_Hacl_Hash_SHA2_sha256_init(ptr noundef %.8.val) #15
  br label %bb.o

bb.f:                                             ; preds = %bb.a
  tail call void @_Py_LibHacl_Hacl_Hash_SHA2_sha384_init(ptr noundef %.8.val) #15
  br label %bb.o

bb.g:                                             ; preds = %bb.a
  tail call void @_Py_LibHacl_Hacl_Hash_SHA2_sha512_init(ptr noundef %.8.val) #15
  br label %bb.o

bb.h:                                             ; preds = %bb.a
  tail call void @_Py_LibHacl_Hacl_Hash_SHA3_init_(i8 noundef zeroext 9, ptr noundef %.8.val) #15
  br label %bb.o

bb.i:                                             ; preds = %bb.a
  tail call void @_Py_LibHacl_Hacl_Hash_SHA3_init_(i8 noundef zeroext 8, ptr noundef %.8.val) #15
  br label %bb.o

bb.j:                                             ; preds = %bb.a
  tail call void @_Py_LibHacl_Hacl_Hash_SHA3_init_(i8 noundef zeroext 10, ptr noundef %.8.val) #15
  br label %bb.o

bb.k:                                             ; preds = %bb.a
  tail call void @_Py_LibHacl_Hacl_Hash_SHA3_init_(i8 noundef zeroext 11, ptr noundef %.8.val) #15
  br label %bb.o

bb.l:                                             ; preds = %bb.a
  tail call void @_Py_LibHacl_Hacl_Hash_Blake2s_init(ptr noundef %.8.val, i32 noundef 0, i32 noundef 32) #15
  br label %bb.o

bb.m:                                             ; preds = %bb.a
  tail call void @_Py_LibHacl_Hacl_Hash_Blake2b_init(ptr noundef %.8.val, i32 noundef 0, i32 noundef 64) #15
  br label %bb.o

bb.n:                                             ; preds = %bb.a
  %i.a = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.b = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.a, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 681, ptr noundef nonnull @.str.2) #11 ; 0 uses
  tail call void @exit(i32 noundef 255) #12
  unreachable

bb.o:                                             ; preds = %bb.a, %bb.a, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret void
}

declare void @_Py_LibHacl_Hacl_Hash_MD5_init(ptr noundef) local_unnamed_addr #10

declare void @_Py_LibHacl_Hacl_Hash_SHA1_init(ptr noundef) local_unnamed_addr #10

declare void @_Py_LibHacl_Hacl_Hash_SHA2_sha224_init(ptr noundef) local_unnamed_addr #10

declare void @_Py_LibHacl_Hacl_Hash_SHA2_sha256_init(ptr noundef) local_unnamed_addr #10

declare void @_Py_LibHacl_Hacl_Hash_SHA2_sha384_init(ptr noundef) local_unnamed_addr #10

declare void @_Py_LibHacl_Hacl_Hash_SHA2_sha512_init(ptr noundef) local_unnamed_addr #10

declare void @_Py_LibHacl_Hacl_Hash_SHA3_init_(i8 noundef zeroext, ptr noundef) local_unnamed_addr #10

declare void @_Py_LibHacl_Hacl_Hash_Blake2s_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

declare void @_Py_LibHacl_Hacl_Hash_Blake2b_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

declare void @_Py_LibHacl_Hacl_Hash_MD5_hash_oneshot(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #10

declare void @_Py_LibHacl_Hacl_Hash_SHA1_hash_oneshot(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #10

declare void @_Py_LibHacl_Hacl_Hash_SHA2_hash_224(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #10

declare void @_Py_LibHacl_Hacl_Hash_SHA2_hash_256(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #10

declare void @_Py_LibHacl_Hacl_Hash_SHA2_hash_384(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #10

declare void @_Py_LibHacl_Hacl_Hash_SHA2_hash_512(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #10

declare void @_Py_LibHacl_Hacl_Hash_SHA3_sha3_224(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #10

declare void @_Py_LibHacl_Hacl_Hash_SHA3_sha3_256(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #10

declare void @_Py_LibHacl_Hacl_Hash_SHA3_sha3_384(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #10

declare void @_Py_LibHacl_Hacl_Hash_SHA3_sha3_512(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #10

declare void @_Py_LibHacl_Hacl_Hash_Blake2s_hash_with_key(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #10

declare void @_Py_LibHacl_Hacl_Hash_Blake2b_hash_with_key(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #10

declare void @_Py_LibHacl_Hacl_Hash_MD5_update_multi(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #10

declare void @_Py_LibHacl_Hacl_Hash_SHA1_update_multi(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #10

declare void @_Py_LibHacl_Hacl_Hash_SHA2_sha224_update_nblocks(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #10

declare void @_Py_LibHacl_Hacl_Hash_SHA2_sha256_update_nblocks(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #10

declare void @_Py_LibHacl_Hacl_Hash_SHA2_sha384_update_nblocks(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #10

declare void @_Py_LibHacl_Hacl_Hash_SHA2_sha512_update_nblocks(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #10

declare void @_Py_LibHacl_Hacl_Hash_SHA3_update_multi_sha3(i8 noundef zeroext, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #10

declare void @_Py_LibHacl_Hacl_Hash_Blake2s_update_multi(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #10

declare void @_Py_LibHacl_Hacl_Hash_Blake2b_update_multi(i32 noundef, ptr noundef, ptr noundef, i64, i64, ptr noundef, i32 noundef) local_unnamed_addr #10

declare void @_Py_LibHacl_Hacl_Hash_MD5_update_last(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #10

declare void @_Py_LibHacl_Hacl_Hash_SHA1_update_last(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #10

declare void @_Py_LibHacl_Hacl_Hash_SHA2_sha224_update_last(i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #10

declare void @_Py_LibHacl_Hacl_Hash_SHA2_sha256_update_last(i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #10

declare void @_Py_LibHacl_Hacl_Hash_SHA2_sha384_update_last(i64, i64, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #10

declare void @_Py_LibHacl_Hacl_Hash_SHA2_sha512_update_last(i64, i64, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #10

declare void @_Py_LibHacl_Hacl_Hash_SHA3_update_last_sha3(i8 noundef zeroext, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #10

declare void @_Py_LibHacl_Hacl_Hash_Blake2s_update_last(i32 noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #10

declare void @_Py_LibHacl_Hacl_Hash_Blake2b_update_last(i32 noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i64, i64, i32 noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define internal fastcc void @finish(i8 %.0.val, ptr %.8.val, ptr noundef %0) unnamed_addr #4 {
bb.a:
  switch i8 %.0.val, label %bb.n [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
    i8 6, label %bb.h
    i8 7, label %bb.i
    i8 8, label %bb.j
    i8 9, label %bb.k
    i8 10, label %bb.l
    i8 11, label %bb.o
    i8 12, label %bb.m
    i8 13, label %bb.o
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @_Py_LibHacl_Hacl_Hash_MD5_finish(ptr noundef %.8.val, ptr noundef %0) #15
  br label %bb.o

bb.c:                                             ; preds = %bb.a
  tail call void @_Py_LibHacl_Hacl_Hash_SHA1_finish(ptr noundef %.8.val, ptr noundef %0) #15
  br label %bb.o

end_hunk_1
