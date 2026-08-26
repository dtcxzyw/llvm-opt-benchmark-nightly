Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/Hacl_Streaming_HMAC?download=true
inline.NumInlined: 201
inline.NumDeleted: 24
begin_hunk_0_@llvm.memset.p0.i64
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
  %3 = alloca %struct.Hacl_Streaming_HMAC_Definitions_two_state_s, align 8 ; 4 uses
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
  br i1 %i.e, label %bb.aj, label %switch.lookup

default.unreachable917:                           ; preds = %block_len.exit375, %block_len.exit363, %bb.ae, %block_len.exit339.thread, %bb.aa, %block_len.exit321, %bb.w, %block_len.exit309, %bb.r, %block_len.exit297, %block_len.exit285, %bb.m, %block_len.exit261.thread, %bb.i, %block_len.exit219, %bb.c
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
  br i1 %or.cond, label %bb.c, label %switch.lookup949

bb.c:                                             ; preds = %switch.lookup
  switch i8 %.val.i, label %default.unreachable917 [
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

switch.lookup949:                                 ; preds = %switch.lookup
  %i.j = zext nneg i8 %.val.i to i64
  %switch.gep950 = getelementptr inbounds nuw i8, ptr @switch.table.init0, i64 %i.j
  %switch.load951 = load i8, ptr %switch.gep950, align 1
  %switch.ext952 = zext i8 %switch.load951 to i64
  %i.k = urem i64 %.sroa.4159.0.copyload, %switch.ext952
  %i.l = trunc nuw nsw i64 %i.k to i32
  br label %block_len.exit219

block_len.exit219:                                ; preds = %bb.c, %bb.c, %alg_of_impl.exit216.thread, %switch.lookup949
  %.0191 = phi i32 [ %i.l, %switch.lookup949 ], [ 64, %alg_of_impl.exit216.thread ], [ 128, %bb.c ], [ 128, %bb.c ] ; 9 uses
  switch i8 %.val.i, label %default.unreachable917 [
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
  br i1 %.not, label %bb.h, label %switch.lookup953

switch.lookup953:                                 ; preds = %block_len.exit231
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  %.sroa.4119.0.copyload = load ptr, ptr %.sroa.0158.sroa.7.0..sroa_idx, align 8, !tbaa !19 ; 2 uses
  %i.n = zext nneg i8 %.val.i to i64
  %switch.gep954 = getelementptr inbounds nuw i8, ptr @switch.table.init0, i64 %i.n
  %switch.load955 = load i8, ptr %switch.gep954, align 1
  %switch.ext956 = zext i8 %switch.load955 to i64
  %i.o = urem i64 %.sroa.4159.0.copyload, %switch.ext956
  %i.p = icmp eq i64 %i.o, 0
  %or.cond3 = and i1 %i.i, %i.p
  %i.q = zext nneg i8 %.val.i to i64              ; 2 uses
  br i1 %or.cond3, label %switch.lookup957, label %switch.lookup961

switch.lookup961:                                 ; preds = %switch.lookup953
  %switch.gep962 = getelementptr inbounds nuw i8, ptr @switch.table.init0, i64 %i.q
  %switch.load963 = load i8, ptr %switch.gep962, align 1
  %switch.ext964 = zext i8 %switch.load963 to i64
  %i.r = urem i64 %.sroa.4159.0.copyload, %switch.ext964
  br label %block_len.exit243

switch.lookup957:                                 ; preds = %switch.lookup953
  %switch.gep958 = getelementptr inbounds nuw i8, ptr @switch.table.init0, i64 %i.q
  %switch.load959 = load i8, ptr %switch.gep958, align 1
  %switch.ext960 = zext i8 %switch.load959 to i64
  br label %block_len.exit243

block_len.exit243:                                ; preds = %switch.lookup957, %switch.lookup961
  %.0192.a = phi i64 [ %i.r, %switch.lookup961 ], [ %switch.ext960, %switch.lookup957 ]
  %i.s = getelementptr i8, ptr %.sroa.4119.0.copyload, i64 %.0192.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.s, ptr align 1 %1, i64 %i.c, i1 false)
  %i.t = add i64 %.sroa.4159.0.copyload, %i.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  store ptr %.sroa.4119.0.copyload, ptr %.sroa.0158.sroa.7.0..sroa_idx, align 8, !tbaa !19
  store i64 %i.t, ptr %.sroa.4159.0..sroa_idx, align 8, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.aj

bb.h:                                             ; preds = %block_len.exit231
  %i.u = icmp eq i32 %.0191422440, 0
  br i1 %i.u, label %switch.lookup965, label %bb.r

switch.lookup965:                                 ; preds = %bb.h
  %.sroa.0101.0.copyload = load i64, ptr %0, align 8
  %.sroa.6104.0.copyload = load ptr, ptr %.sroa.0158.sroa.7.0..sroa_idx, align 8, !tbaa !19 ; 2 uses
  %i.v = load <2 x ptr>, ptr %.sroa.0158.sroa.6.0..sroa_idx, align 8, !tbaa !26
  %i.w = zext nneg i8 %.val.i to i64
  %switch.gep966 = getelementptr inbounds nuw i8, ptr @switch.table.init0, i64 %i.w
  %switch.load967 = load i8, ptr %switch.gep966, align 1
  %switch.ext968 = zext i8 %switch.load967 to i64
  %i.x = urem i64 %.sroa.4159.0.copyload, %switch.ext968
  %i.y = icmp eq i64 %i.x, 0
  %or.cond5 = and i1 %i.i, %i.y
  br i1 %or.cond5, label %bb.i, label %switch.lookup969

bb.i:                                             ; preds = %switch.lookup965
  switch i8 %.val.i, label %default.unreachable917 [
    i8 0, label %alg_of_impl.exit258.thread
    i8 1, label %alg_of_impl.exit258.thread
    i8 2, label %alg_of_impl.exit258.thread
    i8 3, label %alg_of_impl.exit258.thread
    i8 4, label %block_len.exit261.thread.thread
    i8 5, label %block_len.exit261.thread.thread863
    i8 6, label %block_len.exit261.thread.thread865
    i8 7, label %block_len.exit261.thread.thread867
    i8 8, label %block_len.exit261.thread.thread869
    i8 9, label %block_len.exit261.thread.thread871
    i8 10, label %alg_of_impl.exit258.thread
    i8 11, label %alg_of_impl.exit258.thread
    i8 12, label %block_len.exit261.thread
    i8 13, label %block_len.exit261.thread
  ]

block_len.exit261.thread.thread865:               ; preds = %bb.i
  %i.z = add i64 %.sroa.4159.0.copyload, -144
  br label %block_len.exit273

block_len.exit261.thread.thread:                  ; preds = %bb.i
  %i.aa = add i64 %.sroa.4159.0.copyload, -128
  br label %block_len.exit273

block_len.exit261.thread.thread863:               ; preds = %bb.i
  %i.ab = add i64 %.sroa.4159.0.copyload, -128
  br label %block_len.exit273

alg_of_impl.exit258.thread:                       ; preds = %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i
  br label %block_len.exit261.thread

block_len.exit261.thread.thread867:               ; preds = %bb.i
  %i.ac = add i64 %.sroa.4159.0.copyload, -136
  br label %block_len.exit273

block_len.exit261.thread.thread869:               ; preds = %bb.i
  %i.ad = add i64 %.sroa.4159.0.copyload, -104
  br label %block_len.exit273

block_len.exit261.thread.thread871:               ; preds = %bb.i
  %i.ae = add i64 %.sroa.4159.0.copyload, -72
  br label %block_len.exit273

switch.lookup969:                                 ; preds = %switch.lookup965
  %i.af = zext nneg i8 %.val.i to i64
  %switch.gep970 = getelementptr inbounds nuw i8, ptr @switch.table.init0, i64 %i.af
  %switch.load971 = load i8, ptr %switch.gep970, align 1
  %switch.ext972 = zext i8 %switch.load971 to i64
  %i.ag = urem i64 %.sroa.4159.0.copyload, %switch.ext972 ; 2 uses
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %switch.lookup973, label %block_len.exit261.thread

block_len.exit261.thread:                         ; preds = %bb.i, %bb.i, %alg_of_impl.exit258.thread, %switch.lookup969
  %.0193525 = phi i64 [ %i.ag, %switch.lookup969 ], [ 64, %alg_of_impl.exit258.thread ], [ 128, %bb.i ], [ 128, %bb.i ]
  %i.ai = sub i64 %.sroa.4159.0.copyload, %.0193525 ; 6 uses
  switch i8 %.val.i, label %default.unreachable917 [
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

block_len.exit273:                                ; preds = %block_len.exit261.thread.thread871, %block_len.exit261.thread.thread869, %block_len.exit261.thread.thread867, %block_len.exit261.thread.thread863, %block_len.exit261.thread.thread, %block_len.exit261.thread.thread865, %block_len.exit261.thread, %bb.j, %alg_of_impl.exit270.thread, %bb.k, %bb.l, %alg_of_impl.exit270
  %i.aj = phi i64 [ %i.ai, %alg_of_impl.exit270.thread ], [ %i.ai, %bb.l ], [ %i.ai, %bb.k ], [ %i.ai, %alg_of_impl.exit270 ], [ %i.ai, %bb.j ], [ %i.ae, %block_len.exit261.thread.thread871 ], [ %i.z, %block_len.exit261.thread.thread865 ], [ %i.ai, %block_len.exit261.thread ], [ %i.aa, %block_len.exit261.thread.thread ], [ %i.ab, %block_len.exit261.thread.thread863 ], [ %i.ac, %block_len.exit261.thread.thread867 ], [ %i.ad, %block_len.exit261.thread.thread869 ]
  %.0.i271 = phi i32 [ 64, %alg_of_impl.exit270.thread ], [ 104, %bb.l ], [ 136, %bb.k ], [ 72, %alg_of_impl.exit270 ], [ 128, %bb.j ], [ 72, %block_len.exit261.thread.thread871 ], [ 144, %block_len.exit261.thread.thread865 ], [ 144, %block_len.exit261.thread ], [ 128, %block_len.exit261.thread.thread ], [ 128, %block_len.exit261.thread.thread863 ], [ 136, %block_len.exit261.thread.thread867 ], [ 104, %block_len.exit261.thread.thread869 ]
  %i.ak = getelementptr i8, ptr %.sroa.0158.sroa.5.0.copyload, i64 8
  %.sroa.4102.0.copyload.val207 = load ptr, ptr %i.ak, align 8, !tbaa !18
  tail call fastcc void @update_multi(i8 %.val.i, ptr %.sroa.4102.0.copyload.val207, i64 noundef %i.aj, ptr noundef %.sroa.6104.0.copyload, i32 noundef %.0.i271)
  br label %switch.lookup973

switch.lookup973:                                 ; preds = %switch.lookup969, %block_len.exit273
  %i.al = zext nneg i8 %.val.i to i64
  %switch.gep974 = getelementptr inbounds nuw i8, ptr @switch.table.init0, i64 %i.al
  %switch.load975 = load i8, ptr %switch.gep974, align 1
  %switch.ext976 = zext i8 %switch.load975 to i32
  %i.am = urem i32 %2, %switch.ext976
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %bb.m, label %switch.lookup977

bb.m:                                             ; preds = %switch.lookup973
  switch i8 %.val.i, label %default.unreachable917 [
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

switch.lookup977:                                 ; preds = %switch.lookup973
  %i.au = zext nneg i8 %.val.i to i64
  %switch.gep978 = getelementptr inbounds nuw i8, ptr @switch.table.init0, i64 %i.au
  %switch.load979 = load i8, ptr %switch.gep978, align 1
  %switch.ext980 = zext i8 %switch.load979 to i32
  %i.av = urem i32 %2, %switch.ext980
  br label %block_len.exit285

block_len.exit285:                                ; preds = %bb.m, %bb.m, %alg_of_impl.exit282.thread, %switch.lookup977
  %.0194 = phi i32 [ %i.av, %switch.lookup977 ], [ 64, %alg_of_impl.exit282.thread ], [ 128, %bb.m ], [ 128, %bb.m ]
  %i.aw = sub i32 %2, %.0194                      ; 7 uses
  switch i8 %.val.i, label %default.unreachable917 [
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
end_hunk_0
