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
  br i1 %switch.lobit, label %switch.lookup20, label %bb.c

switch.lookup20:                                  ; preds = %switch.hole_check
  %i.d = zext nneg i8 %0 to i64
  %switch.gep21 = getelementptr inbounds nuw i8, ptr @switch.table._Py_LibHacl_Hacl_Streaming_HMAC_malloc_.10, i64 %i.d
  %switch.load22 = load i8, ptr %switch.gep21, align 1
  %switch.ext23 = zext i8 %switch.load22 to i64
  %i.e = tail call noalias ptr @calloc(i64 noundef %switch.ext23, i64 noundef 1) #13 ; 4 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %malloc_internal.exit.thread, label %bb.d

bb.d:                                             ; preds = %switch.lookup20
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

malloc_internal.exit.thread:                      ; preds = %malloc_internal.exit.thread.sink.split, %switch.lookup20
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
end_hunk_0
begin_hunk_1_@init0:bb.a
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
  %3 = zext nneg i8 %.0.i47 to i64
  %switch.gep73 = getelementptr inbounds nuw i8, ptr @switch.table.init0.31, i64 %3
  %switch.load74 = load i8, ptr %switch.gep73, align 1
  %switch.ext75 = zext i8 %switch.load74 to i64
  br label %switch.lookup72

switch.lookup72:                                  ; preds = %wrap_key.exit, %bb.v
  %indvars.iv.a = phi i64 [ %indvars.iv.next, %bb.v ], [ 0, %wrap_key.exit ] ; 5 uses
  %i.p = icmp samesign ult i64 %indvars.iv.a, %switch.ext75
  br i1 %i.p, label %bb.v, label %switch.lookup76.preheader

switch.lookup76.preheader:                        ; preds = %switch.lookup72
  %4 = zext nneg i8 %.0.i47 to i64
  %switch.gep77 = getelementptr inbounds nuw i8, ptr @switch.table.init0.31, i64 %4
  %switch.load78 = load i8, ptr %switch.gep77, align 1
  %switch.ext79 = zext i8 %switch.load78 to i64
  br label %switch.lookup76.a

bb.v:                                             ; preds = %switch.lookup72
  %i.q = getelementptr i8, ptr %i.b, i64 %indvars.iv.a
  %i.r = load i8, ptr %i.q, align 1, !tbaa !18
  %i.s = getelementptr i8, ptr %i.a, i64 %indvars.iv.a
  %i.t = load i8, ptr %i.s, align 1, !tbaa !18
  %i.u = xor i8 %i.t, %i.r
  %i.v = getelementptr i8, ptr %1, i64 %indvars.iv.a
  store i8 %i.u, ptr %i.v, align 1, !tbaa !18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.a, 1
  br label %switch.lookup72, !llvm.loop !27

switch.lookup76.a:                                ; preds = %switch.lookup76.preheader, %bb.w
  %indvars.iv66.a = phi i64 [ %indvars.iv.next67, %bb.w ], [ 0, %switch.lookup76.preheader ] ; 4 uses
  %i.w = icmp samesign ult i64 %indvars.iv66.a, %switch.ext79
  br i1 %i.w, label %bb.w, label %switch.lookup80

switch.lookup80:                                  ; preds = %switch.lookup76.a
  %i.x = zext nneg i8 %.0.i47 to i64
  %switch.gep81 = getelementptr inbounds nuw i8, ptr @switch.table.init0.31, i64 %i.x
  %switch.load82 = load i8, ptr %switch.gep81, align 1
  %switch.ext83 = zext i8 %switch.load82 to i32
  %.val37 = load i8, ptr %i.h, align 8, !tbaa !18
  %.val38 = load ptr, ptr %i.j, align 8, !tbaa !18
  call fastcc void @update_multi(i8 %.val37, ptr %.val38, i64 noundef 0, ptr noundef nonnull %i.c, i32 noundef %switch.ext83)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret void

bb.w:                                             ; preds = %switch.lookup76.a
  %i.y = getelementptr i8, ptr %i.c, i64 %indvars.iv66.a ; 2 uses
  %i.z = load i8, ptr %i.y, align 1, !tbaa !18
  %i.aa = getelementptr i8, ptr %i.a, i64 %indvars.iv66.a
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !18
  %i.ac = xor i8 %i.ab, %i.z
  store i8 %i.ac, ptr %i.y, align 1, !tbaa !18
  %indvars.iv.next67 = add nuw nsw i64 %indvars.iv66.a, 1
  br label %switch.lookup76.a, !llvm.loop !29
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

bb.d:                                             ; preds = %bb.a
  tail call void @_Py_LibHacl_Hacl_Hash_SHA2_sha224_finish(ptr noundef %.8.val, ptr noundef %0) #15
  br label %bb.o

bb.e:                                             ; preds = %bb.a
  tail call void @_Py_LibHacl_Hacl_Hash_SHA2_sha256_finish(ptr noundef %.8.val, ptr noundef %0) #15
  br label %bb.o

bb.f:                                             ; preds = %bb.a
  tail call void @_Py_LibHacl_Hacl_Hash_SHA2_sha384_finish(ptr noundef %.8.val, ptr noundef %0) #15
  br label %bb.o

bb.g:                                             ; preds = %bb.a
  tail call void @_Py_LibHacl_Hacl_Hash_SHA2_sha512_finish(ptr noundef %.8.val, ptr noundef %0) #15
end_hunk_1
