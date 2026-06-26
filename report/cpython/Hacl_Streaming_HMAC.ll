inline.NumInlined: 201
inline.NumDeleted: 24
begin_hunk_0_@llvm.memset.p0.i64

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
  %4 = alloca %struct.Hacl_Streaming_HMAC_Definitions_two_state_s, align 8 ; 20 uses
  %.sroa.0158.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %.sroa.0158.sroa.5.0.copyload = load ptr, ptr %.sroa.0158.sroa.5.0..sroa_idx, align 8, !tbaa !25 ; 5 uses
  %.sroa.0158.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.0158.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 16 uses
  %.sroa.4159.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 9 uses
  %.sroa.4159.0.copyload = load i64, ptr %.sroa.4159.0..sroa_idx, align 8, !tbaa !21 ; 25 uses
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
  br i1 %.not, label %bb.h, label %switch.lookup1018

switch.lookup1018:                                ; preds = %block_len.exit231
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
  br i1 %or.cond3, label %switch.lookup1022, label %switch.lookup1026

switch.lookup1026:                                ; preds = %switch.lookup1018
  %switch.gep1027 = getelementptr inbounds nuw i8, ptr @switch.table.init0, i64 %i.q
  %switch.load1028 = load i8, ptr %switch.gep1027, align 1
  %switch.ext1029 = zext i8 %switch.load1028 to i64
  %i.r = urem i64 %.sroa.4159.0.copyload, %switch.ext1029
  br label %block_len.exit243

switch.lookup1022:                                ; preds = %switch.lookup1018
  %switch.gep1023 = getelementptr inbounds nuw i8, ptr @switch.table.init0, i64 %i.q
  %switch.load1024 = load i8, ptr %switch.gep1023, align 1
  %switch.ext1025 = zext i8 %switch.load1024 to i64
  br label %block_len.exit243

block_len.exit243:                                ; preds = %switch.lookup1022, %switch.lookup1026
  %.0192 = phi i64 [ %i.r, %switch.lookup1026 ], [ %switch.ext1025, %switch.lookup1022 ]
  %i.s = getelementptr i8, ptr %.sroa.4119.0.copyload, i64 %.0192
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.s, ptr align 1 %1, i64 %i.c, i1 false)
  %i.t = add i64 %.sroa.4159.0.copyload, %i.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  store ptr %.sroa.4119.0.copyload, ptr %.sroa.0158.sroa.7.0..sroa_idx, align 8, !tbaa !19
  store i64 %i.t, ptr %.sroa.4159.0..sroa_idx, align 8, !tbaa !21
  br label %bb.ak

bb.h:                                             ; preds = %block_len.exit231
  %i.u = icmp eq i32 %.0191422440, 0
  br i1 %i.u, label %switch.lookup1030, label %bb.r

switch.lookup1030:                                ; preds = %bb.h
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
  br i1 %or.cond5, label %bb.i, label %switch.lookup1034

bb.i:                                             ; preds = %switch.lookup1030
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
end_hunk_0
begin_hunk_1_@_Py_LibHacl_Hacl_Streaming_HMAC_update:bb.a
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
  %i.ci = phi i64 [ %i.cf, %alg_of_impl.exit312.thread ], [ %i.cf, %bb.u ], [ %i.cf, %bb.t ], [ %i.bn, %block_len.exit309.thread649 ], [ %i.cf, %block_len.exit309 ], [ %i.bt, %block_len.exit309.thread645 ], [ %i.bq, %block_len.exit309.thread ], [ %i.cf, %block_len.exit309 ], [ %i.cf, %bb.v ], [ %i.cf, %bb.s ], [ %i.bw, %block_len.exit309.thread653 ], [ %i.bz, %block_len.exit309.thread657 ], [ %i.cc, %block_len.exit309.thread661 ], [ %i.cf, %block_len.exit309 ], [ %i.cf, %block_len.exit309 ] ; 10 uses
  %i.cj = phi ptr [ %i.cg, %alg_of_impl.exit312.thread ], [ %i.cg, %bb.u ], [ %i.cg, %bb.t ], [ %i.bo, %block_len.exit309.thread649 ], [ %i.cg, %block_len.exit309 ], [ %i.bu, %block_len.exit309.thread645 ], [ %i.br, %block_len.exit309.thread ], [ %i.cg, %block_len.exit309 ], [ %i.cg, %bb.v ], [ %i.cg, %bb.s ], [ %i.bx, %block_len.exit309.thread653 ], [ %i.ca, %block_len.exit309.thread657 ], [ %i.cd, %block_len.exit309.thread661 ], [ %i.cg, %block_len.exit309 ], [ %i.cg, %block_len.exit309 ] ; 2 uses
  %.sroa.454.0.copyload644667 = phi ptr [ %.sroa.454.0.copyload, %alg_of_impl.exit312.thread ], [ %.sroa.454.0.copyload, %bb.u ], [ %.sroa.454.0.copyload, %bb.t ], [ %.sroa.454.0.copyload651, %block_len.exit309.thread649 ], [ %.sroa.454.0.copyload, %block_len.exit309 ], [ %.sroa.454.0.copyload647, %block_len.exit309.thread645 ], [ %.sroa.454.0.copyload642, %block_len.exit309.thread ], [ %.sroa.454.0.copyload, %block_len.exit309 ], [ %.sroa.454.0.copyload, %bb.v ], [ %.sroa.454.0.copyload, %bb.s ], [ %.sroa.454.0.copyload655, %block_len.exit309.thread653 ], [ %.sroa.454.0.copyload659, %block_len.exit309.thread657 ], [ %.sroa.454.0.copyload663, %block_len.exit309.thread661 ], [ %.sroa.454.0.copyload, %block_len.exit309 ], [ %.sroa.454.0.copyload, %block_len.exit309 ] ; 13 uses
  %.0.i313 = phi i64 [ 64, %alg_of_impl.exit312.thread ], [ 104, %bb.u ], [ 136, %bb.t ], [ 144, %block_len.exit309.thread649 ], [ 128, %block_len.exit309 ], [ 128, %block_len.exit309.thread645 ], [ 128, %block_len.exit309.thread ], [ 128, %block_len.exit309 ], [ 72, %bb.v ], [ 144, %bb.s ], [ 136, %block_len.exit309.thread653 ], [ 104, %block_len.exit309.thread657 ], [ 72, %block_len.exit309.thread661 ], [ 128, %block_len.exit309 ], [ 128, %block_len.exit309 ]
  %i.ck = urem i64 %.sroa.4159.0.copyload, %.0.i313
  %i.cl = icmp eq i64 %i.ck, 0
  %or.cond10 = and i1 %i.i, %i.cl
  br i1 %or.cond10, label %bb.w, label %switch.lookup1046

bb.w:                                             ; preds = %block_len.exit315
  switch i8 %.val.i, label %default.unreachable1013 [
    i8 0, label %alg_of_impl.exit318.thread
    i8 1, label %alg_of_impl.exit318.thread
    i8 2, label %alg_of_impl.exit318.thread
    i8 3, label %alg_of_impl.exit318.thread
    i8 4, label %block_len.exit321
    i8 5, label %block_len.exit321
    i8 6, label %block_len.exit321.thread733
    i8 7, label %block_len.exit321.thread749
    i8 8, label %block_len.exit321.thread757
    i8 9, label %block_len.exit321.thread765
    i8 10, label %alg_of_impl.exit318.thread
    i8 11, label %alg_of_impl.exit318.thread
    i8 12, label %block_len.exit321
    i8 13, label %block_len.exit321
  ]

block_len.exit321.thread733:                      ; preds = %bb.w
  %i.cm = getelementptr i8, ptr %.sroa.454.0.copyload644667, i64 144
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cm, ptr align 1 %1, i64 %i.ci, i1 false)
  %i.cn = add i64 %i.ci, %.sroa.4159.0.copyload   ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  store ptr %.sroa.454.0.copyload644667, ptr %.sroa.0158.sroa.7.0..sroa_idx, align 8, !tbaa !19
  store i64 %i.cn, ptr %.sroa.4159.0..sroa_idx, align 8, !tbaa !21
  %.sroa.0.0.copyload735 = load i64, ptr %0, align 8
  %i.co = load <2 x ptr>, ptr %.sroa.0158.sroa.5.0..sroa_idx, align 8, !tbaa !25
  br label %block_len.exit333

alg_of_impl.exit318.thread:                       ; preds = %bb.w, %bb.w, %bb.w, %bb.w, %bb.w, %bb.w
  br label %block_len.exit321

block_len.exit321.thread749:                      ; preds = %bb.w
  %i.cp = getelementptr i8, ptr %.sroa.454.0.copyload644667, i64 136
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cp, ptr align 1 %1, i64 %i.ci, i1 false)
  %i.cq = add i64 %i.ci, %.sroa.4159.0.copyload   ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  store ptr %.sroa.454.0.copyload644667, ptr %.sroa.0158.sroa.7.0..sroa_idx, align 8, !tbaa !19
  store i64 %i.cq, ptr %.sroa.4159.0..sroa_idx, align 8, !tbaa !21
  %.sroa.0.0.copyload751 = load i64, ptr %0, align 8
  %i.cr = load <2 x ptr>, ptr %.sroa.0158.sroa.5.0..sroa_idx, align 8, !tbaa !25
  br label %block_len.exit333

block_len.exit321.thread757:                      ; preds = %bb.w
  %i.cs = getelementptr i8, ptr %.sroa.454.0.copyload644667, i64 104
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cs, ptr align 1 %1, i64 %i.ci, i1 false)
  %i.ct = add i64 %i.ci, %.sroa.4159.0.copyload   ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  store ptr %.sroa.454.0.copyload644667, ptr %.sroa.0158.sroa.7.0..sroa_idx, align 8, !tbaa !19
  store i64 %i.ct, ptr %.sroa.4159.0..sroa_idx, align 8, !tbaa !21
  %.sroa.0.0.copyload759 = load i64, ptr %0, align 8
  %i.cu = load <2 x ptr>, ptr %.sroa.0158.sroa.5.0..sroa_idx, align 8, !tbaa !25
  br label %block_len.exit333

block_len.exit321.thread765:                      ; preds = %bb.w
  %i.cv = getelementptr i8, ptr %.sroa.454.0.copyload644667, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cv, ptr align 1 %1, i64 %i.ci, i1 false)
  %i.cw = add i64 %i.ci, %.sroa.4159.0.copyload   ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  store ptr %.sroa.454.0.copyload644667, ptr %.sroa.0158.sroa.7.0..sroa_idx, align 8, !tbaa !19
  store i64 %i.cw, ptr %.sroa.4159.0..sroa_idx, align 8, !tbaa !21
  %.sroa.0.0.copyload767 = load i64, ptr %0, align 8
  %i.cx = load <2 x ptr>, ptr %.sroa.0158.sroa.5.0..sroa_idx, align 8, !tbaa !25
  br label %block_len.exit333

switch.lookup1046:                                ; preds = %block_len.exit315
  %i.cy = zext nneg i8 %.val.i to i64
  %switch.gep1047 = getelementptr inbounds nuw i8, ptr @switch.table.init0, i64 %i.cy
  %switch.load1048 = load i8, ptr %switch.gep1047, align 1
  %switch.ext1049 = zext i8 %switch.load1048 to i64
  %i.cz = urem i64 %.sroa.4159.0.copyload, %switch.ext1049
  br label %block_len.exit321

block_len.exit321:                                ; preds = %bb.w, %bb.w, %bb.w, %bb.w, %alg_of_impl.exit318.thread, %switch.lookup1046
  %.0195 = phi i64 [ %i.cz, %switch.lookup1046 ], [ 64, %alg_of_impl.exit318.thread ], [ 128, %bb.w ], [ 128, %bb.w ], [ 128, %bb.w ], [ 128, %bb.w ]
  %i.da = getelementptr i8, ptr %.sroa.454.0.copyload644667, i64 %.0195
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.da, ptr align 1 %1, i64 %i.ci, i1 false)
  %i.db = add i64 %i.ci, %.sroa.4159.0.copyload   ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  store ptr %.sroa.454.0.copyload644667, ptr %.sroa.0158.sroa.7.0..sroa_idx, align 8, !tbaa !19
  store i64 %i.db, ptr %.sroa.4159.0..sroa_idx, align 8, !tbaa !21
  %.sroa.0.0.copyload = load i64, ptr %0, align 8 ; 6 uses
  %i.dc = load <2 x ptr>, ptr %.sroa.0158.sroa.5.0..sroa_idx, align 8, !tbaa !25 ; 6 uses
  switch i8 %.val.i, label %default.unreachable1013 [
    i8 0, label %bb.y
    i8 1, label %bb.y
    i8 2, label %bb.y
    i8 3, label %bb.y
    i8 4, label %bb.x
    i8 5, label %bb.x
    i8 6, label %block_len.exit333
    i8 7, label %bb.z
    i8 8, label %bb.aa
    i8 9, label %alg_of_impl.exit330.thread
    i8 10, label %bb.y
    i8 11, label %bb.y
    i8 12, label %bb.x
    i8 13, label %bb.x
  ]

bb.x:                                             ; preds = %block_len.exit321, %block_len.exit321, %block_len.exit321, %block_len.exit321
  br label %block_len.exit333

bb.y:                                             ; preds = %block_len.exit321, %block_len.exit321, %block_len.exit321, %block_len.exit321, %block_len.exit321, %block_len.exit321
  br label %block_len.exit333

bb.z:                                             ; preds = %block_len.exit321
  br label %block_len.exit333

bb.aa:                                            ; preds = %block_len.exit321
  br label %block_len.exit333

alg_of_impl.exit330.thread:                       ; preds = %block_len.exit321
  br label %block_len.exit333

block_len.exit333:                                ; preds = %block_len.exit321.thread765, %block_len.exit321.thread757, %block_len.exit321.thread749, %block_len.exit321.thread733, %block_len.exit321, %bb.x, %bb.y, %bb.z, %bb.aa, %alg_of_impl.exit330.thread
  %.sroa.0.0.copyload922 = phi i64 [ %.sroa.0.0.copyload, %bb.y ], [ %.sroa.0.0.copyload, %bb.aa ], [ %.sroa.0.0.copyload, %bb.z ], [ %.sroa.0.0.copyload735, %block_len.exit321.thread733 ], [ %.sroa.0.0.copyload, %block_len.exit321 ], [ %.sroa.0.0.copyload, %bb.x ], [ %.sroa.0.0.copyload751, %block_len.exit321.thread749 ], [ %.sroa.0.0.copyload759, %block_len.exit321.thread757 ], [ %.sroa.0.0.copyload767, %block_len.exit321.thread765 ], [ %.sroa.0.0.copyload, %alg_of_impl.exit330.thread ]
  %5 = phi i64 [ %i.db, %bb.y ], [ %i.db, %bb.aa ], [ %i.db, %bb.z ], [ %i.cn, %block_len.exit321.thread733 ], [ %i.db, %block_len.exit321 ], [ %i.db, %bb.x ], [ %i.cq, %block_len.exit321.thread749 ], [ %i.ct, %block_len.exit321.thread757 ], [ %i.cw, %block_len.exit321.thread765 ], [ %i.db, %alg_of_impl.exit330.thread ] ; 12 uses
  %.0.i331 = phi i64 [ 64, %bb.y ], [ 104, %bb.aa ], [ 136, %bb.z ], [ 144, %block_len.exit321.thread733 ], [ 144, %block_len.exit321 ], [ 128, %bb.x ], [ 136, %block_len.exit321.thread749 ], [ 104, %block_len.exit321.thread757 ], [ 72, %block_len.exit321.thread765 ], [ 72, %alg_of_impl.exit330.thread ]
  %6 = phi <2 x ptr> [ %i.dc, %bb.y ], [ %i.dc, %bb.aa ], [ %i.dc, %bb.z ], [ %i.co, %block_len.exit321.thread733 ], [ %i.dc, %block_len.exit321 ], [ %i.dc, %bb.x ], [ %i.cr, %block_len.exit321.thread749 ], [ %i.cu, %block_len.exit321.thread757 ], [ %i.cx, %block_len.exit321.thread765 ], [ %i.dc, %alg_of_impl.exit330.thread ] ; 3 uses
  %i.dd = urem i64 %5, %.0.i331
  %i.de = icmp eq i64 %i.dd, 0
  %i.df = icmp ne i64 %5, 0
  %or.cond12 = and i1 %i.df, %i.de
  br i1 %or.cond12, label %bb.ab, label %switch.lookup1050

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
  %i.dg = add i64 %5, -144
  br label %block_len.exit351

block_len.exit339.thread.thread:                  ; preds = %bb.ab
  %i.dh = add i64 %5, -128
  br label %block_len.exit351

block_len.exit339.thread.thread970:               ; preds = %bb.ab
  %i.di = add i64 %5, -128
  br label %block_len.exit351

alg_of_impl.exit336.thread:                       ; preds = %bb.ab, %bb.ab, %bb.ab, %bb.ab, %bb.ab, %bb.ab
  br label %block_len.exit339.thread

block_len.exit339.thread.thread974:               ; preds = %bb.ab
  %i.dj = add i64 %5, -136
  br label %block_len.exit351

block_len.exit339.thread.thread976:               ; preds = %bb.ab
  %i.dk = add i64 %5, -104
  br label %block_len.exit351

block_len.exit339.thread.thread978:               ; preds = %bb.ab
  %i.dl = add i64 %5, -72
  br label %block_len.exit351

switch.lookup1050:                                ; preds = %block_len.exit333
  %i.dm = zext nneg i8 %.val.i to i64
  %switch.gep1051 = getelementptr inbounds nuw i8, ptr @switch.table.init0, i64 %i.dm
  %switch.load1052 = load i8, ptr %switch.gep1051, align 1
  %switch.ext1053 = zext i8 %switch.load1052 to i64
  %i.dn = urem i64 %5, %switch.ext1053            ; 2 uses
  %i.do = icmp eq i64 %i.dn, 0
  br i1 %i.do, label %switch.lookup1054, label %block_len.exit339.thread

block_len.exit339.thread:                         ; preds = %bb.ab, %bb.ab, %alg_of_impl.exit336.thread, %switch.lookup1050
  %.0196850 = phi i64 [ %i.dn, %switch.lookup1050 ], [ 64, %alg_of_impl.exit336.thread ], [ 128, %bb.ab ], [ 128, %bb.ab ]
  %i.dp = sub i64 %5, %.0196850                   ; 6 uses
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
  %i.dq = phi i64 [ %i.dp, %alg_of_impl.exit348.thread ], [ %i.dp, %bb.ae ], [ %i.dp, %bb.ad ], [ %i.dp, %alg_of_impl.exit348 ], [ %i.dp, %bb.ac ], [ %i.dl, %block_len.exit339.thread.thread978 ], [ %i.dg, %block_len.exit339.thread.thread972 ], [ %i.dp, %block_len.exit339.thread ], [ %i.dh, %block_len.exit339.thread.thread ], [ %i.di, %block_len.exit339.thread.thread970 ], [ %i.dj, %block_len.exit339.thread.thread974 ], [ %i.dk, %block_len.exit339.thread.thread976 ]
  %.0.i349 = phi i32 [ 64, %alg_of_impl.exit348.thread ], [ 104, %bb.ae ], [ 136, %bb.ad ], [ 72, %alg_of_impl.exit348 ], [ 128, %bb.ac ], [ 72, %block_len.exit339.thread.thread978 ], [ 144, %block_len.exit339.thread.thread972 ], [ 144, %block_len.exit339.thread ], [ 128, %block_len.exit339.thread.thread ], [ 128, %block_len.exit339.thread.thread970 ], [ 136, %block_len.exit339.thread.thread974 ], [ 104, %block_len.exit339.thread.thread976 ]
  %i.dr = extractelement <2 x ptr> %6, i64 0      ; 2 uses
  %.sroa.439.0.copyload.val203 = load i8, ptr %i.dr, align 8, !tbaa !18
  %i.ds = getelementptr i8, ptr %i.dr, i64 8
  %.sroa.439.0.copyload.val204 = load ptr, ptr %i.ds, align 8, !tbaa !18
  tail call fastcc void @update_multi(i8 %.sroa.439.0.copyload.val203, ptr %.sroa.439.0.copyload.val204, i64 noundef %i.dq, ptr noundef %.sroa.454.0.copyload644667, i32 noundef %.0.i349)
  br label %switch.lookup1054

switch.lookup1054:                                ; preds = %block_len.exit351, %switch.lookup1050
  %i.dt = sub i32 %2, %i.ch                       ; 11 uses
  %i.du = zext i32 %i.dt to i64
  %i.dv = zext nneg i8 %.val.i to i64
  %switch.gep1055 = getelementptr inbounds nuw i8, ptr @switch.table.init0, i64 %i.dv
  %switch.load1056 = load i8, ptr %switch.gep1055, align 1
  %switch.ext1057 = zext i8 %switch.load1056 to i32
  %i.dw = urem i32 %i.dt, %switch.ext1057
  %i.dx = icmp ne i32 %i.dw, 0
  %.not200 = icmp eq i32 %2, %i.ch
  %or.cond201 = select i1 %i.dx, i1 true, i1 %.not200
  br i1 %or.cond201, label %switch.lookup1058, label %bb.af

bb.af:                                            ; preds = %switch.lookup1054
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
  %i.dy = add i32 %i.dt, -144
  br label %block_len.exit375.thread927

block_len.exit363.thread:                         ; preds = %bb.af
  %i.dz = add i32 %i.dt, -128
  br label %block_len.exit375.thread

block_len.exit363.thread892:                      ; preds = %bb.af
  %i.ea = add i32 %i.dt, -128
  br label %block_len.exit375.thread923

alg_of_impl.exit360.thread:                       ; preds = %bb.af, %bb.af, %bb.af, %bb.af, %bb.af, %bb.af
  br label %block_len.exit363

block_len.exit363.thread896:                      ; preds = %bb.af
  %i.eb = add i32 %i.dt, -136
  br label %block_len.exit375.thread931

block_len.exit363.thread898:                      ; preds = %bb.af
  %i.ec = add i32 %i.dt, -104
  br label %block_len.exit375.thread935

block_len.exit363.thread900:                      ; preds = %bb.af
  %i.ed = add i32 %i.dt, -72
  br label %block_len.exit375.thread939

switch.lookup1058:                                ; preds = %switch.lookup1054
  %i.ee = zext nneg i8 %.val.i to i64
  %switch.gep1059 = getelementptr inbounds nuw i8, ptr @switch.table.init0, i64 %i.ee
  %switch.load1060 = load i8, ptr %switch.gep1059, align 1
  %switch.ext1061 = zext i8 %switch.load1060 to i32
  %i.ef = urem i32 %i.dt, %switch.ext1061
  br label %block_len.exit363

block_len.exit363:                                ; preds = %bb.af, %bb.af, %alg_of_impl.exit360.thread, %switch.lookup1058
  %.0197 = phi i32 [ %i.ef, %switch.lookup1058 ], [ 64, %alg_of_impl.exit360.thread ], [ 128, %bb.af ], [ 128, %bb.af ]
  %i.eg = sub i32 %i.dt, %.0197                   ; 7 uses
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
  %.ph919 = phi i32 [ %i.dz, %block_len.exit363.thread ], [ %i.eg, %block_len.exit363 ]
  %i.eh = lshr i32 %.ph919, 7
  br label %block_len.exit381

block_len.exit375.thread923:                      ; preds = %block_len.exit363.thread892, %block_len.exit363
  %.ph922 = phi i32 [ %i.ea, %block_len.exit363.thread892 ], [ %i.eg, %block_len.exit363 ]
  %i.ei = lshr i32 %.ph922, 7
  br label %block_len.exit381

block_len.exit375.thread927:                      ; preds = %block_len.exit363.thread894, %block_len.exit363
  %.ph926 = phi i32 [ %i.dy, %block_len.exit363.thread894 ], [ %i.eg, %block_len.exit363 ]
  %i.ej = udiv i32 %.ph926, 144
  br label %block_len.exit381

block_len.exit375.thread931:                      ; preds = %block_len.exit363.thread896, %block_len.exit363
  %.ph930 = phi i32 [ %i.eb, %block_len.exit363.thread896 ], [ %i.eg, %block_len.exit363 ]
  %i.ek = udiv i32 %.ph930, 136
  br label %block_len.exit381

block_len.exit375.thread935:                      ; preds = %block_len.exit363.thread898, %block_len.exit363
  %.ph934 = phi i32 [ %i.ec, %block_len.exit363.thread898 ], [ %i.eg, %block_len.exit363 ]
  %i.el = udiv i32 %.ph934, 104
  br label %block_len.exit381

block_len.exit375.thread939:                      ; preds = %block_len.exit363.thread900, %block_len.exit363
  %.ph938 = phi i32 [ %i.ed, %block_len.exit363.thread900 ], [ %i.eg, %block_len.exit363 ]
  %i.em = udiv i32 %.ph938, 72
  br label %block_len.exit381

block_len.exit375:                                ; preds = %block_len.exit363, %block_len.exit363, %alg_of_impl.exit372.thread
  %.0.i373 = phi i32 [ 6, %alg_of_impl.exit372.thread ], [ 7, %block_len.exit363 ], [ 7, %block_len.exit363 ]
  %i.en = lshr i32 %i.eg, %.0.i373                ; 9 uses
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
  %i.eo = phi i32 [ %i.en, %alg_of_impl.exit378.thread ], [ %i.en, %bb.ai ], [ %i.en, %bb.ah ], [ %i.ej, %block_len.exit375.thread927 ], [ %i.en, %block_len.exit375 ], [ %i.ei, %block_len.exit375.thread923 ], [ %i.eh, %block_len.exit375.thread ], [ %i.en, %block_len.exit375 ], [ %i.en, %bb.aj ], [ %i.en, %bb.ag ], [ %i.ek, %block_len.exit375.thread931 ], [ %i.el, %block_len.exit375.thread935 ], [ %i.em, %block_len.exit375.thread939 ], [ %i.en, %block_len.exit375 ], [ %i.en, %block_len.exit375 ]
  %.0.i379 = phi i32 [ 64, %alg_of_impl.exit378.thread ], [ 104, %bb.ai ], [ 136, %bb.ah ], [ 144, %block_len.exit375.thread927 ], [ 128, %block_len.exit375 ], [ 128, %block_len.exit375.thread923 ], [ 128, %block_len.exit375.thread ], [ 128, %block_len.exit375 ], [ 72, %bb.aj ], [ 144, %bb.ag ], [ 136, %block_len.exit375.thread931 ], [ 104, %block_len.exit375.thread935 ], [ 72, %block_len.exit375.thread939 ], [ 128, %block_len.exit375 ], [ 128, %block_len.exit375 ]
  %i.ep = mul i32 %.0.i379, %i.eo                 ; 3 uses
  %i.eq = sub i32 %i.dt, %i.ep
  %i.er = zext i32 %i.ep to i64
  %i.es = getelementptr i8, ptr %i.cj, i64 %i.er
  %i.et = extractelement <2 x ptr> %6, i64 0      ; 2 uses
  %.sroa.439.0.copyload.val = load i8, ptr %i.et, align 8, !tbaa !18
  %i.eu = getelementptr i8, ptr %i.et, i64 8
  %.sroa.439.0.copyload.val202 = load ptr, ptr %i.eu, align 8, !tbaa !18
  tail call fastcc void @update_multi(i8 %.sroa.439.0.copyload.val, ptr %.sroa.439.0.copyload.val202, i64 noundef %5, ptr noundef %i.cj, i32 noundef %i.ep)
  %i.ev = zext i32 %i.eq to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.454.0.copyload644667, ptr align 1 %i.es, i64 %i.ev, i1 false)
  %i.ew = add i64 %5, %i.du
  store i64 %.sroa.0.0.copyload922, ptr %0, align 8
  store <2 x ptr> %6, ptr %.sroa.0158.sroa.5.0..sroa_idx, align 8, !tbaa !25
  store ptr %.sroa.454.0.copyload644667, ptr %.sroa.0158.sroa.7.0..sroa_idx, align 8, !tbaa !19
  store i64 %i.ew, ptr %.sroa.4159.0..sroa_idx, align 8, !tbaa !21
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
  br i1 %or.cond, label %switch.lookup, label %switch.lookup243

default.unreachable239:                           ; preds = %impl_of_state.exit.i
  unreachable

switch.lookup243:                                 ; preds = %_Py_LibHacl_Hacl_Streaming_HMAC_index_of_state.exit
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

block_len.exit103:                                ; preds = %switch.lookup, %switch.lookup243
  %.086 = phi i32 [ %i.i, %switch.lookup243 ], [ %switch.ext242, %switch.lookup ] ; 4 uses
  %i.j = tail call fastcc ptr @malloc_(i8 noundef zeroext %.val.i) ; 9 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %.critedge, label %bb.c

bb.c:                                             ; preds = %block_len.exit103
  %i.l = tail call fastcc ptr @malloc_(i8 noundef zeroext %.val.i) ; 7 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %.critedge.sink.split, label %switch.lookup247

switch.lookup247:                                 ; preds = %bb.c
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
  %switch.gep248 = getelementptr inbounds nuw i8, ptr @switch.table.init0, i64 %i.r
  %switch.load249 = load i8, ptr %switch.gep248, align 1
  %.lhs.trunc = trunc nuw i32 %.086 to i8         ; 2 uses
  %i.s = urem i8 %.lhs.trunc, %switch.load249
  %i.t = icmp eq i8 %i.s, 0
  %i.u = icmp ne i32 %.086, 0
  %or.cond3 = and i1 %i.u, %i.t
  %i.v = zext nneg i8 %.val.i to i64              ; 2 uses
  br i1 %or.cond3, label %switch.lookup250, label %switch.lookup254

switch.lookup254:                                 ; preds = %switch.lookup247
  %switch.gep255 = getelementptr inbounds nuw i8, ptr @switch.table.init0, i64 %i.v
  %switch.load256 = load i8, ptr %switch.gep255, align 1
  %i.w = urem i8 %.lhs.trunc, %switch.load256
  br label %block_len.exit123

switch.lookup250:                                 ; preds = %switch.lookup247
end_hunk_1
