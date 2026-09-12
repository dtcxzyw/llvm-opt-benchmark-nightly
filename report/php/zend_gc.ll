Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/zend_gc?download=true
inline.NumInlined: 33
inline.NumDeleted: 18
begin_hunk_0
%union.anon.7 = type { ptr }
%struct.zend_get_gc_buffer = type { ptr, ptr, ptr }
%struct._zend_call_stack = type { ptr, i64 }
%struct._zend_strtod_state = type { [8 x ptr], ptr, ptr }
%struct.timespec = type { i64, i64 }
%struct._gc_stack = type { ptr, ptr, [510 x ptr] }

@gc_globals = internal unnamed_addr global %struct._zend_gc_globals zeroinitializer, align 8
@executor_globals = external global %struct._zend_executor_globals, align 8
@zend_string_init_interned = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [20 x i8] c"gc_destructor_fiber\00", align 1
@gc_collect_cycles = dso_local local_unnamed_addr global ptr null, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"GC buffer overflow (GC disabled)\0A\00", align 1
@zend_ce_fiber = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [34 x i8] c"Unable to create destructor fiber\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Unable to start destructor fiber\00", align 1
@gc_destructor_fiber = internal global { i8, [3 x i8], i32, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, [4 x i8], ptr, ptr, ptr, ptr, [6 x ptr] } { i8 1, [3 x i8] zeroinitializer, i32 1, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, i32 0, [4 x i8] zeroinitializer, ptr null, ptr @zif_gc_destructor_fiber, ptr null, ptr null, [6 x ptr] zeroinitializer }, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @gc_globals_ctor() local_unnamed_addr #0 {
bb.a:
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @gc_globals, i64 8), align 8, !tbaa !20
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @gc_globals, i64 9), align 1, !tbaa !21
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @gc_globals, i64 10), align 2, !tbaa !22
  store ptr null, ptr @gc_globals, align 8, !tbaa !23
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(61) getelementptr inbounds nuw (i8, ptr @gc_globals, i64 11), i8 0, i64 61, i1 false)
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @gc_globals, i64 72), align 8, !tbaa !24
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @gc_globals, i64 76), align 4, !tbaa !25
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @gc_globals, i64 80), align 8, !tbaa !26
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @gc_globals, i64 88), align 8, !tbaa !27
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define hidden void @gc_globals_dtor() local_unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr @gc_globals, align 8, !tbaa !23 ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %root_buffer_dtor.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef nonnull %i.a) #19
  store ptr null, ptr @gc_globals, align 8, !tbaa !23
  br label %root_buffer_dtor.exit

root_buffer_dtor.exit:                            ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @gc_reset() local_unnamed_addr #2 {
bb.a:
  %0 = alloca %struct.timespec, align 8           ; 6 uses
  %i.a = load ptr, ptr @gc_globals, align 8, !tbaa !23
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) getelementptr inbounds nuw (i8, ptr @gc_globals, i64 9), i8 0, i64 7, i1 false)
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @gc_globals, i64 16), align 8, !tbaa !28
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @gc_globals, i64 28), align 4, !tbaa !29
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @gc_globals, i64 32), align 8, !tbaa !30
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @gc_globals, i64 36), align 4, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @gc_globals, i64 48), i8 0, i64 24, i1 false)
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @gc_globals, i64 72), align 8, !tbaa !24
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @gc_globals, i64 76), align 4, !tbaa !25
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @gc_globals, i64 80), align 8, !tbaa !26
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @gc_globals, i64 88), align 8, !tbaa !27
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %i.b = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %0) #19
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.d, label %zend_hrtime.exit, !prof !32

bb.d:                                             ; preds = %bb.c
  %i.d = load i64, ptr %0, align 8, !tbaa !34
  %i.e = mul i64 %i.d, 1000000000
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !35
  %i.h = add i64 %i.e, %i.g
  br label %zend_hrtime.exit

zend_hrtime.exit:                                 ; preds = %bb.c, %bb.d
  %.0.i = phi i64 [ %i.h, %bb.d ], [ 0, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #19
  store i64 %.0.i, ptr getelementptr inbounds nuw (i8, ptr @gc_globals, i64 40), align 8, !tbaa !36
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @gc_enable(i1 noundef zeroext %0) local_unnamed_addr #2 {
bb.a:
  %1 = alloca %struct.timespec, align 8           ; 6 uses
  %i.a = zext i1 %0 to i8
  %i.b = load i8, ptr getelementptr inbounds nuw (i8, ptr @gc_globals, i64 8), align 8, !tbaa !20, !range !37, !noundef !38
  %i.c = trunc nuw i8 %i.b to i1                  ; 2 uses
  store i8 %i.a, ptr getelementptr inbounds nuw (i8, ptr @gc_globals, i64 8), align 8, !tbaa !20
  %.not7 = xor i1 %i.c, true
  %or.cond.not = and i1 %0, %.not7
  %i.d = load ptr, ptr @gc_globals, align 8
  %i.e = icmp eq ptr %i.d, null
  %or.cond3 = select i1 %or.cond.not, i1 %i.e, i1 false
  br i1 %or.cond3, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noalias dereferenceable_or_null(131072) ptr @__zend_malloc(i64 noundef 131072) #20 ; 2 uses
  store ptr %i.f, ptr @gc_globals, align 8, !tbaa !23
  store ptr null, ptr %i.f, align 8, !tbaa !41
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) getelementptr inbounds nuw (i8, ptr @gc_globals, i64 9), i8 0, i64 7, i1 false)
  store <4 x i32> <i32 1, i32 10001, i32 16384, i32 0>, ptr getelementptr inbounds nuw (i8, ptr @gc_globals, i64 16), align 8, !tbaa !42
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @gc_globals, i64 32), align 8, !tbaa !30
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @gc_globals, i64 36), align 4, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @gc_globals, i64 48), i8 0, i64 24, i1 false)
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @gc_globals, i64 72), align 8, !tbaa !24
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @gc_globals, i64 76), align 4, !tbaa !25
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @gc_globals, i64 80), align 8, !tbaa !26
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @gc_globals, i64 88), align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %i.g = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %1) #19
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.c, label %gc_reset.exit, !prof !32

bb.c:                                             ; preds = %bb.b
  %i.i = load i64, ptr %1, align 8, !tbaa !34
  %i.j = mul i64 %i.i, 1000000000
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !35
  %i.m = add i64 %i.j, %i.l
  br label %gc_reset.exit

gc_reset.exit:                                    ; preds = %bb.b, %bb.c
  %.0.i.i = phi i64 [ %i.m, %bb.c ], [ 0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  store i64 %.0.i.i, ptr getelementptr inbounds nuw (i8, ptr @gc_globals, i64 40), align 8, !tbaa !36
  br label %bb.d

bb.d:                                             ; preds = %gc_reset.exit, %bb.a
  ret i1 %i.c
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: allocsize(0)
declare noalias ptr @__zend_malloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local zeroext i1 @gc_enabled() local_unnamed_addr #5 {
bb.a:
  %i.a = load i8, ptr getelementptr inbounds nuw (i8, ptr @gc_globals, i64 8), align 8, !tbaa !20, !range !37, !noundef !38
  %i.b = trunc nuw i8 %i.a to i1
  ret i1 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local zeroext i1 @gc_protect(i1 noundef zeroext %0) local_unnamed_addr #6 {
bb.a:
  %i.a = zext i1 %0 to i8
  %i.b = load i8, ptr getelementptr inbounds nuw (i8, ptr @gc_globals, i64 10), align 2, !tbaa !22, !range !37, !noundef !38
  %i.c = trunc nuw i8 %i.b to i1
  store i8 %i.a, ptr getelementptr inbounds nuw (i8, ptr @gc_globals, i64 10), align 2, !tbaa !22
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local zeroext i1 @gc_protected() local_unnamed_addr #5 {
bb.a:
  %i.a = load i8, ptr getelementptr inbounds nuw (i8, ptr @gc_globals, i64 10), align 2, !tbaa !22, !range !37, !noundef !38
  %i.b = trunc nuw i8 %i.a to i1
  ret i1 %i.b
}

; Function Attrs: nounwind uwtable
define dso_local void @gc_possible_root(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = load i8, ptr getelementptr inbounds nuw (i8, ptr @gc_globals, i64 10), align 2, !tbaa !22, !range !37, !noundef !38
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.i, label %bb.b, !prof !43

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr getelementptr inbounds nuw (i8, ptr @gc_globals, i64 12), align 4, !tbaa !44 ; 3 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c, !prof !43

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr @gc_globals, align 8, !tbaa !23 ; 2 uses
  %i.e = zext i32 %i.c to i64                     ; 2 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.e
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !41
  %i.h = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.i = and i64 %i.h, 3
  %i.j = icmp eq i64 %i.i, 1
  tail call void @llvm.assume(i1 %i.j)
  %i.k = trunc i64 %i.h to i32
  %1 = lshr i32 %i.k, 3
  store i32 %1, ptr getelementptr inbounds nuw (i8, ptr @gc_globals, i64 12), align 4, !tbaa !44
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.l = load i32, ptr getelementptr inbounds nuw (i8, ptr @gc_globals, i64 16), align 8, !tbaa !28 ; 5 uses
  %i.m = load i32, ptr getelementptr inbounds nuw (i8, ptr @gc_globals, i64 20), align 4, !tbaa !45
  %i.n = icmp ult i32 %i.l, %i.m
  br i1 %i.n, label %bb.e, label %bb.f, !prof !32

bb.e:                                             ; preds = %bb.d
  %i.o = load i32, ptr getelementptr inbounds nuw (i8, ptr @gc_globals, i64 24), align 8, !tbaa !46
  %i.p = icmp ne i32 %i.l, %i.o
  tail call void @llvm.assume(i1 %i.p)
  %i.q = add nuw i32 %i.l, 1
  store i32 %i.q, ptr getelementptr inbounds nuw (i8, ptr @gc_globals, i64 16), align 8, !tbaa !28
  %.pre = load ptr, ptr @gc_globals, align 8, !tbaa !23
  %.pre7 = zext i32 %i.l to i64
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  tail call fastcc void @gc_possible_root_when_full(ptr noundef %0)
  br label %bb.i

bb.g:                                             ; preds = %bb.e, %bb.c
  %.pre-phi = phi i64 [ %.pre7, %bb.e ], [ %i.e, %bb.c ]
  %i.r = phi ptr [ %.pre, %bb.e ], [ %i.d, %bb.c ]
  %.0 = phi i32 [ %i.l, %bb.e ], [ %i.c, %bb.c ]  ; 3 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.pre-phi
  store ptr %0, ptr %i.s, align 8, !tbaa !41
  %i.t = icmp ult i32 %.0, 524288
  br i1 %i.t, label %gc_compress.exit, label %bb.h, !prof !32

bb.h:                                             ; preds = %bb.g
  %i.u = and i32 %.0, 524287
  %i.v = or disjoint i32 %i.u, 524288
  br label %gc_compress.exit

gc_compress.exit:                                 ; preds = %bb.g, %bb.h
  %.0.i = phi i32 [ %i.v, %bb.h ], [ %.0, %bb.g ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !47
  %i.y = and i32 %i.x, 1023
  %i.z = shl nuw nsw i32 %.0.i, 10
  %i.aa = add nuw nsw i32 %i.z, -1073741824
  %i.ab = or disjoint i32 %i.y, %i.aa
  store i32 %i.ab, ptr %i.w, align 4, !tbaa !47
  %i.ac = load i32, ptr getelementptr inbounds nuw (i8, ptr @gc_globals, i64 28), align 4, !tbaa !29
  %i.ad = add i32 %i.ac, 1
  store i32 %i.ad, ptr getelementptr inbounds nuw (i8, ptr @gc_globals, i64 28), align 4, !tbaa !29
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %gc_compress.exit, %bb.f
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @gc_possible_root_when_full(ptr noundef %0) unnamed_addr #7 {
bb.a:
  %i.a = load i8, ptr getelementptr inbounds nuw (i8, ptr @gc_globals, i64 8), align 8, !tbaa !20, !range !37, !noundef !38
  %i.b = trunc nuw i8 %i.a to i1
  %.not = xor i1 %i.b, true
  %i.c = load i8, ptr getelementptr inbounds nuw (i8, ptr @gc_globals, i64 9), align 1, !range !37
  %i.d = trunc nuw i8 %i.c to i1
  %or.cond = select i1 %.not, i1 true, i1 %i.d
  br i1 %or.cond, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %0, align 4, !tbaa !49
  %i.f = add i32 %i.e, 1
  store i32 %i.f, ptr %0, align 4, !tbaa !49
  %i.g = load ptr, ptr @gc_collect_cycles, align 8, !tbaa !50
  %i.h = tail call i32 %i.g() #19
  %i.i = icmp slt i32 %i.h, 100
  br i1 %i.i, label %thread-pre-split.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load i32, ptr getelementptr inbounds nuw (i8, ptr @gc_globals, i64 28), align 4, !tbaa !29
  %i.k = load i32, ptr getelementptr inbounds nuw (i8, ptr @gc_globals, i64 20), align 4, !tbaa !45 ; 4 uses
  %.not.i = icmp ult i32 %i.j, %i.k
  br i1 %.not.i, label %bb.g, label %bb.d

thread-pre-split.i:                               ; preds = %bb.b
  %.pr.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @gc_globals, i64 20), align 4, !tbaa !45
  br label %bb.d

bb.d:                                             ; preds = %thread-pre-split.i, %bb.c
  %i.l = phi i32 [ %.pr.i, %thread-pre-split.i ], [ %i.k, %bb.c ] ; 2 uses
  %i.m = icmp ult i32 %i.l, 1000000000
  br i1 %i.m, label %bb.e, label %gc_adjust_threshold.exit

bb.e:                                             ; preds = %bb.d
  %i.n = tail call i32 @llvm.umin.i32(i32 %i.l, i32 999990000)
  %spec.store.select.i = add nuw nsw i32 %i.n, 10000 ; 4 uses
  %i.o = load i32, ptr getelementptr inbounds nuw (i8, ptr @gc_globals, i64 24), align 8, !tbaa !46 ; 4 uses
  %i.p = icmp ugt i32 %spec.store.select.i, %i.o
  br i1 %i.p, label %bb.f, label %.sink.split.i

bb.f:                                             ; preds = %bb.e
  %i.q = icmp samesign ult i32 %i.o, 131072
  %i.r = shl nuw nsw i32 %i.o, 1
  %i.s = add nuw nsw i32 %i.o, 131072
  %.0.in.i.i = select i1 %i.q, i32 %i.r, i32 %i.s
  %i.t = tail call i32 @llvm.umin.i32(i32 %.0.in.i.i, i32 1073741824) ; 3 uses
  %spec.store.select.i.i = zext nneg i32 %i.t to i64
  %i.u = load ptr, ptr @gc_globals, align 8, !tbaa !23
  %i.v = shl nuw nsw i64 %spec.store.select.i.i, 3
  %i.w = tail call ptr @__zend_realloc(ptr noundef %i.u, i64 noundef %i.v) #21
  store ptr %i.w, ptr @gc_globals, align 8, !tbaa !23
  store i32 %i.t, ptr getelementptr inbounds nuw (i8, ptr @gc_globals, i64 24), align 8, !tbaa !46
  %i.x = icmp samesign ugt i32 %spec.store.select.i, %i.t
  br i1 %i.x, label %gc_adjust_threshold.exit, label %.sink.split.i

bb.g:                                             ; preds = %bb.c
  %i.y = icmp ugt i32 %i.k, 10001
  br i1 %i.y, label %bb.h, label %gc_adjust_threshold.exit

bb.h:                                             ; preds = %bb.g
  %i.z = add i32 %i.k, -10000
  %spec.store.select1.i = tail call i32 @llvm.umax.i32(i32 %i.z, i32 10001)
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.h, %bb.f, %bb.e
  %spec.store.select1.sink.i = phi i32 [ %spec.store.select1.i, %bb.h ], [ %spec.store.select.i, %bb.e ], [ %spec.store.select.i, %bb.f ]
  store i32 %spec.store.select1.sink.i, ptr getelementptr inbounds nuw (i8, ptr @gc_globals, i64 20), align 4, !tbaa !45
  br label %gc_adjust_threshold.exit

gc_adjust_threshold.exit:                         ; preds = %bb.d, %bb.f, %bb.g, %.sink.split.i
  %i.aa = load i32, ptr %0, align 4, !tbaa !49    ; 2 uses
  %i.ab = icmp ne i32 %i.aa, 0
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = add i32 %i.aa, -1                       ; 2 uses
  store i32 %i.ac, ptr %0, align 4, !tbaa !49
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %bb.i, label %bb.j, !prof !43

bb.i:                                             ; preds = %gc_adjust_threshold.exit
  tail call void @rc_dtor_func(ptr noundef nonnull %0) #19
  br label %bb.s

bb.j:                                             ; preds = %gc_adjust_threshold.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !47
  %.not11 = icmp ult i32 %i.af, 1024
  br i1 %.not11, label %bb.k, label %bb.s, !prof !32

bb.k:                                             ; preds = %bb.j, %bb.a
  %i.ag = load i32, ptr getelementptr inbounds nuw (i8, ptr @gc_globals, i64 12), align 4, !tbaa !44 ; 3 uses
  %.not12 = icmp eq i32 %i.ag, 0
  br i1 %.not12, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ah = load ptr, ptr @gc_globals, align 8, !tbaa !23
  %i.ai = zext i32 %i.ag to i64
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.ai
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !41
  %i.al = ptrtoint ptr %i.ak to i64               ; 2 uses
  %i.am = and i64 %i.al, 3
  %i.an = icmp eq i64 %i.am, 1
  tail call void @llvm.assume(i1 %i.an)
  %i.ao = trunc i64 %i.al to i32
  %1 = lshr i32 %i.ao, 3
  store i32 %1, ptr getelementptr inbounds nuw (i8, ptr @gc_globals, i64 12), align 4, !tbaa !44
  br label %bb.q

bb.m:                                             ; preds = %bb.k
  %i.ap = load i32, ptr getelementptr inbounds nuw (i8, ptr @gc_globals, i64 16), align 8, !tbaa !28 ; 3 uses
  %i.aq = load i32, ptr getelementptr inbounds nuw (i8, ptr @gc_globals, i64 24), align 8, !tbaa !46
  %.not13 = icmp eq i32 %i.ap, %i.aq
  br i1 %.not13, label %bb.o, label %bb.n, !prof !43

bb.n:                                             ; preds = %bb.m
  %i.ar = add i32 %i.ap, 1
  store i32 %i.ar, ptr getelementptr inbounds nuw (i8, ptr @gc_globals, i64 16), align 8, !tbaa !28
  br label %bb.q

bb.o:                                             ; preds = %bb.m
  tail call fastcc void @gc_grow_root_buffer()
  %i.as = load i32, ptr getelementptr inbounds nuw (i8, ptr @gc_globals, i64 16), align 8, !tbaa !28 ; 3 uses
  %i.at = load i32, ptr getelementptr inbounds nuw (i8, ptr @gc_globals, i64 24), align 8, !tbaa !46
  %.not14 = icmp eq i32 %i.as, %i.at
  br i1 %.not14, label %bb.s, label %bb.p, !prof !43

bb.p:                                             ; preds = %bb.o
  %i.au = add i32 %i.as, 1
  store i32 %i.au, ptr getelementptr inbounds nuw (i8, ptr @gc_globals, i64 16), align 8, !tbaa !28
  br label %bb.q

bb.q:                                             ; preds = %bb.n, %bb.p, %bb.l
  %.0 = phi i32 [ %i.ag, %bb.l ], [ %i.ap, %bb.n ], [ %i.as, %bb.p ] ; 4 uses
  %i.av = load ptr, ptr @gc_globals, align 8, !tbaa !23
  %i.aw = zext i32 %.0 to i64
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.aw
  store ptr %0, ptr %i.ax, align 8, !tbaa !41
  %i.ay = icmp ult i32 %.0, 524288
  br i1 %i.ay, label %gc_compress.exit, label %bb.r, !prof !32

bb.r:                                             ; preds = %bb.q
  %i.az = and i32 %.0, 524287
  %i.ba = or disjoint i32 %i.az, 524288
  br label %gc_compress.exit

gc_compress.exit:                                 ; preds = %bb.q, %bb.r
  %.0.i = phi i32 [ %i.ba, %bb.r ], [ %.0, %bb.q ]
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !47
  %i.bd = and i32 %i.bc, 1023
  %i.be = shl nuw nsw i32 %.0.i, 10
  %i.bf = add nuw nsw i32 %i.be, -1073741824
  %i.bg = or disjoint i32 %i.bd, %i.bf
  store i32 %i.bg, ptr %i.bb, align 4, !tbaa !47
  %i.bh = load i32, ptr getelementptr inbounds nuw (i8, ptr @gc_globals, i64 28), align 4, !tbaa !29
  %i.bi = add i32 %i.bh, 1
  store i32 %i.bi, ptr getelementptr inbounds nuw (i8, ptr @gc_globals, i64 28), align 4, !tbaa !29
  br label %bb.s

bb.s:                                             ; preds = %bb.o, %bb.j, %gc_compress.exit, %bb.i
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define dso_local void @gc_remove_from_buffer(ptr nofree noundef captures(address) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !47   ; 2 uses
  %i.c = lshr i32 %i.b, 10
  %i.d = and i32 %i.c, 1048575                    ; 4 uses
  %i.e = and i32 %i.b, 1023
  store i32 %i.e, ptr %i.a, align 4, !tbaa !47
  %i.f = load i32, ptr getelementptr inbounds nuw (i8, ptr @gc_globals, i64 16), align 8, !tbaa !28
  %i.g = icmp ugt i32 %i.f, 524287
  br i1 %i.g, label %bb.b, label %bb.c, !prof !43

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @gc_remove_compressed(ptr noundef nonnull %0, i32 noundef %i.d)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = icmp ne i32 %i.d, 0
  tail call void @llvm.assume(i1 %i.h)
  %i.i = load ptr, ptr @gc_globals, align 8, !tbaa !23
  %i.j = zext nneg i32 %i.d to i64
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.j
  %i.l = load i32, ptr getelementptr inbounds nuw (i8, ptr @gc_globals, i64 12), align 4, !tbaa !44
  %i.m = zext i32 %i.l to i64
  %i.n = shl nuw nsw i64 %i.m, 3
  %i.o = or disjoint i64 %i.n, 1
  %i.p = inttoptr i64 %i.o to ptr
  store ptr %i.p, ptr %i.k, align 8, !tbaa !41
  store i32 %i.d, ptr getelementptr inbounds nuw (i8, ptr @gc_globals, i64 12), align 4, !tbaa !44
  %i.q = load i32, ptr getelementptr inbounds nuw (i8, ptr @gc_globals, i64 28), align 4, !tbaa !29
  %i.r = add i32 %i.q, -1
  store i32 %i.r, ptr getelementptr inbounds nuw (i8, ptr @gc_globals, i64 28), align 4, !tbaa !29
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal fastcc void @gc_remove_compressed(ptr nofree noundef readnone captures(address) %0, i32 noundef range(i32 0, 1048576) %1) unnamed_addr #9 {
bb.a:
  %i.a = load ptr, ptr @gc_globals, align 8, !tbaa !23 ; 4 uses
  %i.b = zext nneg i32 %1 to i64
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.b ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !41
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = and i64 %i.e, -4
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = icmp eq ptr %0, %i.g
  br i1 %i.h, label %gc_decompress.exit, label %.preheader, !prof !32

.preheader:                                       ; preds = %bb.a
  %i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @gc_globals, i64 16), align 8, !tbaa !28
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.b
  %.0.i = phi i32 [ %i.j, %bb.b ], [ %1, %.preheader ]
  %i.j = add i32 %.0.i, 524288                    ; 3 uses
  %i.k = icmp ult i32 %i.j, %i.i
  tail call void @llvm.assume(i1 %i.k)
  %i.l = zext i32 %i.j to i64                     ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !41
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = and i64 %i.o, -4
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = icmp eq ptr %0, %i.q
  br i1 %i.r, label %gc_decompress.exit.loopexit, label %bb.b

gc_decompress.exit.loopexit:                      ; preds = %bb.b
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.l
  br label %gc_decompress.exit

gc_decompress.exit:                               ; preds = %gc_decompress.exit.loopexit, %bb.a
  %.010.i = phi ptr [ %i.c, %bb.a ], [ %i.s, %gc_decompress.exit.loopexit ] ; 2 uses
  %i.t = load i32, ptr getelementptr inbounds nuw (i8, ptr @gc_globals, i64 12), align 4, !tbaa !44
  %i.u = zext i32 %i.t to i64
  %i.v = shl nuw nsw i64 %i.u, 3
  %i.w = or disjoint i64 %i.v, 1
  %i.x = inttoptr i64 %i.w to ptr
  store ptr %i.x, ptr %.010.i, align 8, !tbaa !41
  %i.y = ptrtoint ptr %.010.i to i64
  %i.z = ptrtoint ptr %i.a to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = lshr exact i64 %i.aa, 3
  %i.ac = trunc i64 %i.ab to i32
  store i32 %i.ac, ptr getelementptr inbounds nuw (i8, ptr @gc_globals, i64 12), align 4, !tbaa !44
  %i.ad = load i32, ptr getelementptr inbounds nuw (i8, ptr @gc_globals, i64 28), align 4, !tbaa !29
  %i.ae = add i32 %i.ad, -1
  store i32 %i.ae, ptr getelementptr inbounds nuw (i8, ptr @gc_globals, i64 28), align 4, !tbaa !29
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: nounwind uwtable
define dso_local i32 @zend_gc_collect_cycles() local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 8 uses
  %i.d = alloca ptr, align 8                      ; 8 uses
  %i.e = alloca ptr, align 8                      ; 8 uses
  %i.f = alloca i32, align 4                      ; 8 uses
  %0 = alloca %struct.timespec, align 8           ; 6 uses
  %1 = alloca %struct.timespec, align 8           ; 6 uses
  %2 = alloca %struct.timespec, align 8           ; 6 uses
  %3 = alloca %struct.timespec, align 8           ; 6 uses
  %4 = alloca %struct.timespec, align 8           ; 6 uses
  %5 = alloca %struct.timespec, align 8           ; 6 uses
  %6 = alloca %struct.timespec, align 8           ; 6 uses
  %7 = alloca %struct.timespec, align 8           ; 6 uses
  %8 = alloca %struct._gc_stack, align 8          ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %i.g = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %0) #19
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.b, label %zend_hrtime.exit128, !prof !32

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %0, align 8, !tbaa !34
  %.neg = mul i64 %i.i, -1000000000
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !35
  %.neg382 = sub i64 %.neg, %i.k
  br label %zend_hrtime.exit128

zend_hrtime.exit128:                              ; preds = %bb.a, %bb.b
  %.0.i127.neg383 = phi i64 [ %.neg382, %bb.b ], [ 0, %bb.a ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #19
  %i.l = load i32, ptr getelementptr inbounds nuw (i8, ptr @gc_globals, i64 28), align 4, !tbaa !29 ; 2 uses
  %i.m = icmp eq i32 %i.l, 0
  %i.n = load i8, ptr getelementptr inbounds nuw (i8, ptr @gc_globals, i64 9), align 1, !range !37
  %i.o = trunc nuw i8 %i.n to i1
  %or.cond = select i1 %i.m, i1 true, i1 %i.o
  %.02839.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 512), align 8 ; 2 uses
  %.not40.i = icmp eq ptr %.02839.i, null
  %or.cond272 = select i1 %or.cond, i1 true, i1 %.not40.i
  br i1 %or.cond272, label %zend_gc_remove_root_tmpvars.exit, label %.lr.ph42.i

.lr.ph42.i:                                       ; preds = %zend_hrtime.exit128, %gc_remove_from_buffer.exit.i
end_hunk_0
begin_hunk_1_@zend_gc_collect_cycles:bb.a
  %i.nv = or disjoint i64 %i.nu, 1
  %i.nw = inttoptr i64 %i.nv to ptr
  store ptr %i.nw, ptr %.054.i, align 8, !tbaa !41
  %i.nx = load ptr, ptr @gc_globals, align 8, !tbaa !23 ; 2 uses
  %i.ny = ptrtoint ptr %.054.i to i64
  %i.nz = ptrtoint ptr %i.nx to i64
  %i.oa = sub i64 %i.ny, %i.nz
  %i.ob = lshr exact i64 %i.oa, 3
  %i.oc = trunc i64 %i.ob to i32
  store i32 %i.oc, ptr getelementptr inbounds nuw (i8, ptr @gc_globals, i64 12), align 4, !tbaa !44
  %i.od = load i32, ptr getelementptr inbounds nuw (i8, ptr @gc_globals, i64 28), align 4, !tbaa !29
  %i.oe = add i32 %i.od, -1
  store i32 %i.oe, ptr getelementptr inbounds nuw (i8, ptr @gc_globals, i64 28), align 4, !tbaa !29
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg, %.lr.ph.i140
  %i.of = phi ptr [ %i.nj, %bb.cg ], [ %i.nx, %bb.ch ], [ %i.nj, %.lr.ph.i140 ] ; 2 uses
  %.0.i141 = getelementptr inbounds nuw i8, ptr %.054.i, i64 8 ; 2 uses
  %.not.i142 = icmp eq ptr %.0.i141, %i.ni
  br i1 %.not.i142, label %._crit_edge.loopexit.i, label %.lr.ph.i140, !llvm.loop !122

._crit_edge.loopexit.i:                           ; preds = %bb.ci
  %.pre.i143 = load i32, ptr getelementptr inbounds nuw (i8, ptr @gc_globals, i64 16), align 8, !tbaa !28
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %gc_scan_roots.exit.thread, %._crit_edge.loopexit.i, %gc_scan_roots.exit
  %i.og = phi ptr [ %i.of, %._crit_edge.loopexit.i ], [ %i.nf, %gc_scan_roots.exit ], [ %i.mc, %gc_scan_roots.exit.thread ] ; 3 uses
  %i.oh = phi i32 [ %.pre.i143, %._crit_edge.loopexit.i ], [ 1, %gc_scan_roots.exit ], [ 1, %gc_scan_roots.exit.thread ] ; 3 uses
  %i.oi = load i32, ptr getelementptr inbounds nuw (i8, ptr @gc_globals, i64 28), align 4, !tbaa !29 ; 5 uses
  %i.oj = add i32 %i.oi, 1
  %.not.i.i144 = icmp eq i32 %i.oj, %i.oh
  br i1 %.not.i.i144, label %gc_compact.exit.i147, label %bb.cj

bb.cj:                                            ; preds = %._crit_edge.i
  %.not26.i.i145 = icmp eq i32 %i.oi, 0
  br i1 %.not26.i.i145, label %.loopexit.i.i146, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.ok = add i32 %i.oh, -1                       ; 2 uses
  %i.ol = zext i32 %i.oi to i64
  %i.om = getelementptr inbounds nuw [8 x i8], ptr %i.og, i64 %i.ol
  %i.on = icmp ugt i32 %i.ok, 1
  br i1 %i.on, label %.preheader29.preheader.i.i189, label %.loopexit.i.i146

.preheader29.preheader.i.i189:                    ; preds = %bb.ck
  %i.oo = zext i32 %i.ok to i64
  %.idx.i.i190 = shl nuw nsw i64 %i.oo, 3
  %i.op = getelementptr inbounds nuw i8, ptr %i.og, i64 %.idx.i.i190
  %i.oq = getelementptr inbounds nuw i8, ptr %i.og, i64 8
  br label %.preheader29.i.i191

.preheader29.i.i191:                              ; preds = %bb.cp, %.preheader29.preheader.i.i189
  %.032.i.i192 = phi ptr [ %.2.i.i200, %bb.cp ], [ %i.op, %.preheader29.preheader.i.i189 ]
  %.02031.i.i193 = phi ptr [ %.222.i.i199, %bb.cp ], [ %i.oq, %.preheader29.preheader.i.i189 ]
  br label %bb.cl

bb.cl:                                            ; preds = %bb.cl, %.preheader29.i.i191
  %.121.i.i194 = phi ptr [ %i.ou, %bb.cl ], [ %.02031.i.i193, %.preheader29.i.i191 ] ; 6 uses
  %i.or = load ptr, ptr %.121.i.i194, align 8, !tbaa !41
  %i.os = ptrtoint ptr %i.or to i64
  %i.ot = and i64 %i.os, 3
  %.not27.i.i195 = icmp eq i64 %i.ot, 1
  %i.ou = getelementptr inbounds nuw i8, ptr %.121.i.i194, i64 8 ; 2 uses
  br i1 %.not27.i.i195, label %.preheader.i.i197, label %bb.cl, !llvm.loop !108

.preheader.i.i197:                                ; preds = %bb.cl, %.preheader.i.i197
  %.1.i.i198 = phi ptr [ %i.oz, %.preheader.i.i197 ], [ %.032.i.i192, %bb.cl ] ; 4 uses
  %i.ov = load ptr, ptr %.1.i.i198, align 8, !tbaa !41 ; 2 uses
  %i.ow = ptrtoint ptr %i.ov to i64               ; 2 uses
  %i.ox = and i64 %i.ow, 3
  %i.oy = icmp eq i64 %i.ox, 1
  %i.oz = getelementptr inbounds i8, ptr %.1.i.i198, i64 -8 ; 3 uses
  br i1 %i.oy, label %.preheader.i.i197, label %bb.cm, !llvm.loop !109

bb.cm:                                            ; preds = %.preheader.i.i197
  %i.pa = icmp ugt ptr %.1.i.i198, %.121.i.i194
  br i1 %i.pa, label %bb.cn, label %bb.cp

bb.cn:                                            ; preds = %bb.cm
  store ptr %i.ov, ptr %.121.i.i194, align 8, !tbaa !41
  %i.pb = and i64 %i.ow, -4
  %i.pc = inttoptr i64 %i.pb to ptr
  %i.pd = load ptr, ptr @gc_globals, align 8, !tbaa !23
  %i.pe = ptrtoint ptr %.121.i.i194 to i64
  %i.pf = ptrtoint ptr %i.pd to i64
  %i.pg = sub i64 %i.pe, %i.pf
  %i.ph = lshr exact i64 %i.pg, 3
  %i.pi = trunc i64 %i.ph to i32                  ; 3 uses
  %i.pj = icmp ult i32 %i.pi, 524288
  br i1 %i.pj, label %gc_compress.exit.i.i203, label %bb.co, !prof !32

bb.co:                                            ; preds = %bb.cn
  %i.pk = and i32 %i.pi, 524287
  %i.pl = or disjoint i32 %i.pk, 524288
  br label %gc_compress.exit.i.i203

gc_compress.exit.i.i203:                          ; preds = %bb.co, %bb.cn
  %.0.i.i.i204 = phi i32 [ %i.pl, %bb.co ], [ %i.pi, %bb.cn ]
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pc, i64 4 ; 2 uses
  %i.pn = load i32, ptr %i.pm, align 4, !tbaa !47
  %i.po = shl nuw nsw i32 %.0.i.i.i204, 10
  %i.pp = and i32 %i.pn, -1073740801
  %i.pq = add nuw nsw i32 %i.pp, %i.po
  store i32 %i.pq, ptr %i.pm, align 4, !tbaa !47
  %.not28.i.i205 = icmp ugt ptr %i.oz, %i.om
  br i1 %.not28.i.i205, label %bb.cp, label %.loopexit.loopexit.i.i201

bb.cp:                                            ; preds = %gc_compress.exit.i.i203, %bb.cm
  %.222.i.i199 = phi ptr [ %i.ou, %gc_compress.exit.i.i203 ], [ %.121.i.i194, %bb.cm ] ; 2 uses
  %.2.i.i200 = phi ptr [ %i.oz, %gc_compress.exit.i.i203 ], [ %.1.i.i198, %bb.cm ] ; 2 uses
  %i.pr = icmp ult ptr %.222.i.i199, %.2.i.i200
  br i1 %i.pr, label %.preheader29.i.i191, label %.loopexit.loopexit.i.i201, !llvm.loop !110

.loopexit.loopexit.i.i201:                        ; preds = %bb.cp, %gc_compress.exit.i.i203
  %.pre.i.i202 = load i32, ptr getelementptr inbounds nuw (i8, ptr @gc_globals, i64 28), align 4, !tbaa !29
  br label %.loopexit.i.i146

.loopexit.i.i146:                                 ; preds = %.loopexit.loopexit.i.i201, %bb.ck, %bb.cj
  %i.ps = phi i32 [ %.pre.i.i202, %.loopexit.loopexit.i.i201 ], [ %i.oi, %bb.ck ], [ 0, %bb.cj ] ; 2 uses
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @gc_globals, i64 12), align 4, !tbaa !44
  %i.pt = add i32 %i.ps, 1                        ; 2 uses
  store i32 %i.pt, ptr getelementptr inbounds nuw (i8, ptr @gc_globals, i64 16), align 8, !tbaa !28
  br label %gc_compact.exit.i147

gc_compact.exit.i147:                             ; preds = %.loopexit.i.i146, %._crit_edge.i
  %i.pu = phi i32 [ %i.oi, %._crit_edge.i ], [ %i.ps, %.loopexit.i.i146 ]
  %i.pv = phi i32 [ %i.oh, %._crit_edge.i ], [ %i.pt, %.loopexit.i.i146 ] ; 2 uses
  %.not2457.i = icmp eq i32 %i.pv, 1
  br i1 %.not2457.i, label %gc_collect_roots.exit.thread, label %.lr.ph60.i

.lr.ph60.i:                                       ; preds = %gc_compact.exit.i147, %bb.fp
  %.0 = phi i32 [ %.1, %bb.fp ], [ 0, %gc_compact.exit.i147 ] ; 2 uses
  %indvars.iv.i148 = phi i64 [ %indvars.iv.next.i149, %bb.fp ], [ 1, %gc_compact.exit.i147 ] ; 2 uses
  %.02259.i = phi i32 [ %.1.i, %bb.fp ], [ 0, %gc_compact.exit.i147 ] ; 2 uses
  %i.pw = load ptr, ptr @gc_globals, align 8, !tbaa !23
  %i.px = getelementptr inbounds nuw [8 x i8], ptr %i.pw, i64 %indvars.iv.i148 ; 2 uses
  %i.py = load ptr, ptr %i.px, align 8, !tbaa !41 ; 4 uses
  %i.pz = ptrtoint ptr %i.py to i64
  call void @llvm.assume(i1 true) [ "align"(ptr %i.py, i64 4) ]
  %i.qa = or disjoint i64 %i.pz, 2
  %i.qb = inttoptr i64 %i.qa to ptr
  store ptr %i.qb, ptr %i.px, align 8, !tbaa !41
  %i.qc = getelementptr inbounds nuw i8, ptr %i.py, i64 4 ; 2 uses
  %i.qd = load i32, ptr %i.qc, align 4, !tbaa !47 ; 2 uses
  %i.qe = and i32 %i.qd, -1073741824
  %i.qf = icmp eq i32 %i.qe, 1073741824
  br i1 %i.qf, label %bb.cq, label %bb.fp

bb.cq:                                            ; preds = %.lr.ph60.i
  %i.qg = and i32 %i.qd, 1073741823
  store i32 %i.qg, ptr %i.qc, align 4, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  br label %.outer.i.i152

.outer.i.i152:                                    ; preds = %.outer.i.i152.backedge, %bb.cq
  %.2 = phi i32 [ %.0, %bb.cq ], [ %.2.be, %.outer.i.i152.backedge ] ; 7 uses
  %.0198.ph.i.i = phi ptr [ %8, %bb.cq ], [ %.0198.ph.i.i.be, %.outer.i.i152.backedge ] ; 8 uses
  %.0191.ph.i.i = phi i64 [ 0, %bb.cq ], [ %.0191.ph.i.i.be, %.outer.i.i152.backedge ] ; 8 uses
  %.0120.ph.i.i = phi i32 [ 0, %bb.cq ], [ %.0120.ph.i.i.be, %.outer.i.i152.backedge ] ; 3 uses
  %.0.ph.i.i153 = phi ptr [ %i.py, %bb.cq ], [ %.0.ph.i.i153.be, %.outer.i.i152.backedge ] ; 2 uses
  %.phi.trans.insert.i.i154 = getelementptr inbounds nuw i8, ptr %.0.ph.i.i153, i64 4
  %.pre.i25.i = load i32, ptr %.phi.trans.insert.i.i154, align 4, !tbaa !47
  br label %bb.cr

bb.cr:                                            ; preds = %bb.fl, %.outer.i.i152
  %i.qh = phi i32 [ %i.aaw, %bb.fl ], [ %.pre.i25.i, %.outer.i.i152 ] ; 5 uses
  %.0.i.i155 = phi ptr [ %i.aap, %bb.fl ], [ %.0.ph.i.i153, %.outer.i.i152 ] ; 15 uses
  %i.qi = trunc i32 %i.qh to i8
  %i.qj = and i8 %i.qi, 15                        ; 2 uses
  switch i8 %i.qj, label %bb.fi [
    i8 8, label %bb.cs
    i8 7, label %bb.ek
  ]

bb.cs:                                            ; preds = %bb.cr
  %i.qk = getelementptr inbounds nuw i8, ptr %.0.i.i155, i64 4 ; 3 uses
  %spec.select.le256.i.i = add nsw i32 %.0120.ph.i.i, 1 ; 7 uses
  %i.ql = and i32 %i.qh, 512
  %.not141.not.not.i.i = icmp eq i32 %i.ql, 0
  br i1 %.not141.not.not.i.i, label %bb.ct, label %.loopexit.i27.i, !prof !32

bb.ct:                                            ; preds = %bb.cs
  %.not142.i.i175 = icmp ult i32 %i.qh, 1024
  br i1 %.not142.i.i175, label %bb.cu, label %bb.de

bb.cu:                                            ; preds = %bb.ct
  %i.qm = load i32, ptr getelementptr inbounds nuw (i8, ptr @gc_globals, i64 12), align 4, !tbaa !44 ; 3 uses
  %.not.i246 = icmp eq i32 %i.qm, 0
  br i1 %.not.i246, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.qn = load ptr, ptr @gc_globals, align 8, !tbaa !23
  %i.qo = zext i32 %i.qm to i64
  %i.qp = getelementptr inbounds nuw [8 x i8], ptr %i.qn, i64 %i.qo
  %i.qq = load ptr, ptr %i.qp, align 8, !tbaa !41
  %i.qr = ptrtoint ptr %i.qq to i64               ; 2 uses
  %i.qs = and i64 %i.qr, 3
  %i.qt = icmp eq i64 %i.qs, 1
  call void @llvm.assume(i1 %i.qt)
  %i.qu = trunc i64 %i.qr to i32
  %9 = lshr i32 %i.qu, 3
  store i32 %9, ptr getelementptr inbounds nuw (i8, ptr @gc_globals, i64 12), align 4, !tbaa !44
  br label %bb.dc

bb.cw:                                            ; preds = %bb.cu
  %i.qv = load i32, ptr getelementptr inbounds nuw (i8, ptr @gc_globals, i64 16), align 8, !tbaa !28 ; 7 uses
  %i.qw = load i32, ptr getelementptr inbounds nuw (i8, ptr @gc_globals, i64 24), align 8, !tbaa !46
  %.not6.i250 = icmp eq i32 %i.qv, %i.qw
  br i1 %.not6.i250, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.qx = add i32 %i.qv, 1
  store i32 %i.qx, ptr getelementptr inbounds nuw (i8, ptr @gc_globals, i64 16), align 8, !tbaa !28
  br label %bb.dc

bb.cy:                                            ; preds = %bb.cw
  %i.qy = icmp ult i32 %i.qv, 1073741824
  %i.qz = load i8, ptr getelementptr inbounds nuw (i8, ptr @gc_globals, i64 11), align 1, !range !37
  %i.ra = trunc nuw i8 %i.qz to i1
  %or.cond.i.i251 = select i1 %i.qy, i1 true, i1 %i.ra
  br i1 %or.cond.i.i251, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  call void (i32, ptr, ...) @zend_error(i32 noundef 2, ptr noundef nonnull @.str.1) #19
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @gc_globals, i64 9), align 1, !tbaa !21
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @gc_globals, i64 10), align 2, !tbaa !22
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @gc_globals, i64 11), align 1, !tbaa !72
  %.pre.i252 = load i32, ptr getelementptr inbounds nuw (i8, ptr @gc_globals, i64 24), align 8, !tbaa !46
  br label %gc_grow_root_buffer.exit.i253

bb.da:                                            ; preds = %bb.cy
  %i.rb = icmp ult i32 %i.qv, 131072
  %i.rc = shl nuw nsw i32 %i.qv, 1
  %i.rd = add i32 %i.qv, 131072
  %.0.in.i.i255 = select i1 %i.rb, i32 %i.rc, i32 %i.rd
  %i.re = call i32 @llvm.umin.i32(i32 %.0.in.i.i255, i32 1073741824) ; 3 uses
  %spec.store.select.i.i256 = zext nneg i32 %i.re to i64
  %i.rf = load ptr, ptr @gc_globals, align 8, !tbaa !23
  %i.rg = shl nuw nsw i64 %spec.store.select.i.i256, 3
  %i.rh = call ptr @__zend_realloc(ptr noundef %i.rf, i64 noundef %i.rg) #21
  store ptr %i.rh, ptr @gc_globals, align 8, !tbaa !23
  store i32 %i.re, ptr getelementptr inbounds nuw (i8, ptr @gc_globals, i64 24), align 8, !tbaa !46
  br label %gc_grow_root_buffer.exit.i253

gc_grow_root_buffer.exit.i253:                    ; preds = %bb.da, %bb.cz
  %i.ri = phi i32 [ %.pre.i252, %bb.cz ], [ %i.re, %bb.da ]
  %i.rj = load i32, ptr getelementptr inbounds nuw (i8, ptr @gc_globals, i64 16), align 8, !tbaa !28 ; 3 uses
  %.not7.i254 = icmp eq i32 %i.rj, %i.ri
  br i1 %.not7.i254, label %gc_add_garbage.exit257, label %bb.db, !prof !43

bb.db:                                            ; preds = %gc_grow_root_buffer.exit.i253
  %i.rk = add i32 %i.rj, 1
  store i32 %i.rk, ptr getelementptr inbounds nuw (i8, ptr @gc_globals, i64 16), align 8, !tbaa !28
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.cx, %bb.cv
  %.0.i247 = phi i32 [ %i.qm, %bb.cv ], [ %i.qv, %bb.cx ], [ %i.rj, %bb.db ] ; 4 uses
  %i.rl = load ptr, ptr @gc_globals, align 8, !tbaa !23
  %i.rm = zext i32 %.0.i247 to i64
  %i.rn = getelementptr inbounds nuw [8 x i8], ptr %i.rl, i64 %i.rm
  %i.ro = ptrtoint ptr %.0.i.i155 to i64
  %i.rp = or i64 %i.ro, 2
  %i.rq = inttoptr i64 %i.rp to ptr
  store ptr %i.rq, ptr %i.rn, align 8, !tbaa !41
  %i.rr = icmp ult i32 %.0.i247, 524288
  br i1 %i.rr, label %gc_compress.exit.i248, label %bb.dd, !prof !32

bb.dd:                                            ; preds = %bb.dc
  %i.rs = and i32 %.0.i247, 524287
  %i.rt = or disjoint i32 %i.rs, 524288
  br label %gc_compress.exit.i248

gc_compress.exit.i248:                            ; preds = %bb.dd, %bb.dc
  %.0.i.i249 = phi i32 [ %i.rt, %bb.dd ], [ %.0.i247, %bb.dc ]
  %i.ru = load i32, ptr %i.qk, align 4, !tbaa !47
  %i.rv = and i32 %i.ru, 1023
  %i.rw = shl nuw nsw i32 %.0.i.i249, 10
  %i.rx = or disjoint i32 %i.rv, %i.rw
  store i32 %i.rx, ptr %i.qk, align 4, !tbaa !47
  %i.ry = load i32, ptr getelementptr inbounds nuw (i8, ptr @gc_globals, i64 28), align 4, !tbaa !29
  %i.rz = add i32 %i.ry, 1
  store i32 %i.rz, ptr getelementptr inbounds nuw (i8, ptr @gc_globals, i64 28), align 4, !tbaa !29
  br label %gc_add_garbage.exit257

gc_add_garbage.exit257:                           ; preds = %gc_grow_root_buffer.exit.i253, %gc_compress.exit.i248
  %.pre328.i.i = load i32, ptr %i.qk, align 4, !tbaa !47
  br label %bb.de

bb.de:                                            ; preds = %gc_add_garbage.exit257, %bb.ct
  %.pre329.i.i = phi i32 [ %.pre328.i.i, %gc_add_garbage.exit257 ], [ %i.qh, %bb.ct ] ; 2 uses
  %i.sa = and i32 %.pre329.i.i, 256
  %.not143.i.i176 = icmp eq i32 %i.sa, 0
  br i1 %.not143.i.i176, label %bb.df, label %bb.di

bb.df:                                            ; preds = %bb.de
  %i.sb = getelementptr inbounds nuw i8, ptr %.0.i.i155, i64 24
  %i.sc = load ptr, ptr %i.sb, align 8, !tbaa !64
  %i.sd = getelementptr inbounds nuw i8, ptr %i.sc, i64 16
  %i.se = load ptr, ptr %i.sd, align 8, !tbaa !73
  %.not144.i.i186 = icmp eq ptr %i.se, @zend_objects_destroy_object
  br i1 %.not144.i.i186, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %bb.df
  %i.sf = getelementptr inbounds nuw i8, ptr %.0.i.i155, i64 16
  %i.sg = load ptr, ptr %i.sf, align 8, !tbaa !154
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sg, i64 264
  %i.si = load ptr, ptr %i.sh, align 8, !tbaa !164
  %.not145.i.i187 = icmp eq ptr %i.si, null
  br i1 %.not145.i.i187, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %bb.df
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.dg, %bb.de
  %.7 = phi i32 [ %.2, %bb.dg ], [ 1, %bb.dh ], [ %.2, %bb.de ] ; 6 uses
  %i.sj = and i32 %.pre329.i.i, 128
  %.not146.i.i177 = icmp eq i32 %i.sj, 0
  br i1 %.not146.i.i177, label %.loopexit228.i.i, label %bb.dj, !prof !32

bb.dj:                                            ; preds = %bb.di
  %i.sk = call ptr @zend_weakmap_get_object_entry_gc(ptr noundef nonnull %.0.i.i155, ptr noundef nonnull %i.d, ptr noundef nonnull %i.c) #19 ; 0 uses
  %i.sl = load i32, ptr %i.c, align 4, !tbaa !42  ; 2 uses
  %.not147261.i.i = icmp eq i32 %i.sl, 0
  br i1 %.not147261.i.i, label %.loopexit228.i.i, label %.lr.ph.preheader.i.i178

.lr.ph.preheader.i.i178:                          ; preds = %bb.dj
  %i.sm = load ptr, ptr %i.d, align 8, !tbaa !59
  br label %.lr.ph.i.i179

.lr.ph.i.i179:                                    ; preds = %bb.do, %.lr.ph.preheader.i.i178
  %.0124265.i.i = phi ptr [ %i.ti, %bb.do ], [ %i.sm, %.lr.ph.preheader.i.i178 ] ; 2 uses
  %.0126264.i.i = phi i32 [ %i.tj, %bb.do ], [ %i.sl, %.lr.ph.preheader.i.i178 ]
  %.1263.i.i = phi i64 [ %.2192.i.i, %bb.do ], [ %.0191.ph.i.i, %.lr.ph.preheader.i.i178 ] ; 5 uses
  %.1199262.i.i = phi ptr [ %.2200.i.i, %bb.do ], [ %.0198.ph.i.i, %.lr.ph.preheader.i.i178 ] ; 5 uses
  %i.sn = load ptr, ptr %.0124265.i.i, align 8, !tbaa !47 ; 3 uses
  %i.so = getelementptr inbounds nuw i8, ptr %i.sn, i64 8 ; 2 uses
  %i.sp = getelementptr inbounds nuw i8, ptr %i.sn, i64 9
  %i.sq = load i8, ptr %i.sp, align 1, !tbaa !47
  %i.sr = and i8 %i.sq, 2
  %.not164.i.i = icmp eq i8 %i.sr, 0
  br i1 %.not164.i.i, label %bb.do, label %bb.dk

bb.dk:                                            ; preds = %.lr.ph.i.i179
  %i.ss = load i32, ptr %i.so, align 8, !tbaa !47 ; 2 uses
  %i.st = and i32 %i.ss, 65536
  %.not165.i.i = icmp eq i32 %i.st, 0
  br i1 %.not165.i.i, label %bb.do, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.su = and i32 %i.ss, -196609
  store i32 %i.su, ptr %i.so, align 8, !tbaa !47
  %i.sv = load ptr, ptr %i.sn, align 8, !tbaa !47 ; 4 uses
  %i.sw = load i32, ptr %i.sv, align 4, !tbaa !49
  %i.sx = add i32 %i.sw, 1
  store i32 %i.sx, ptr %i.sv, align 4, !tbaa !49
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sv, i64 4 ; 2 uses
  %i.sz = load i32, ptr %i.sy, align 4, !tbaa !47 ; 2 uses
  %i.ta = and i32 %i.sz, -1073741824
  %i.tb = icmp eq i32 %i.ta, 1073741824
  br i1 %i.tb, label %bb.dm, label %bb.do

bb.dm:                                            ; preds = %bb.dl
  %i.tc = and i32 %i.sz, 1073741823
  store i32 %i.tc, ptr %i.sy, align 4, !tbaa !47
  %i.td = icmp eq i64 %.1263.i.i, 510
  br i1 %i.td, label %bb.dn, label %gc_stack_push.exit169.i.i, !prof !43

bb.dn:                                            ; preds = %bb.dm
  %i.te = call fastcc ptr @gc_stack_next(ptr noundef %.1199262.i.i)
  br label %gc_stack_push.exit169.i.i

gc_stack_push.exit169.i.i:                        ; preds = %bb.dn, %bb.dm
  %.19217.i.i = phi ptr [ %i.te, %bb.dn ], [ %.1199262.i.i, %bb.dm ] ; 2 uses
  %.19.i.i185 = phi i64 [ 0, %bb.dn ], [ %.1263.i.i, %bb.dm ] ; 2 uses
  %i.tf = getelementptr inbounds nuw i8, ptr %.19217.i.i, i64 16
  %i.tg = add i64 %.19.i.i185, 1
  %i.th = getelementptr inbounds nuw [8 x i8], ptr %i.tf, i64 %.19.i.i185
  store ptr %i.sv, ptr %i.th, align 8, !tbaa !60
  br label %bb.do

bb.do:                                            ; preds = %gc_stack_push.exit169.i.i, %bb.dl, %bb.dk, %.lr.ph.i.i179
  %.2200.i.i = phi ptr [ %.1199262.i.i, %.lr.ph.i.i179 ], [ %.1199262.i.i, %bb.dk ], [ %.19217.i.i, %gc_stack_push.exit169.i.i ], [ %.1199262.i.i, %bb.dl ] ; 2 uses
  %.2192.i.i = phi i64 [ %.1263.i.i, %.lr.ph.i.i179 ], [ %.1263.i.i, %bb.dk ], [ %i.tg, %gc_stack_push.exit169.i.i ], [ %.1263.i.i, %bb.dl ] ; 2 uses
  %i.ti = getelementptr inbounds nuw i8, ptr %.0124265.i.i, i64 16
  %i.tj = add i32 %.0126264.i.i, -1               ; 2 uses
  %.not147.i.i180 = icmp eq i32 %i.tj, 0
  br i1 %.not147.i.i180, label %.loopexit228.i.i, label %.lr.ph.i.i179, !llvm.loop !123

.loopexit228.i.i:                                 ; preds = %bb.do, %bb.dj, %bb.di
  %.3201.i.i = phi ptr [ %.0198.ph.i.i, %bb.di ], [ %.0198.ph.i.i, %bb.dj ], [ %.2200.i.i, %bb.do ] ; 6 uses
  %.3193.i.i = phi i64 [ %.0191.ph.i.i, %bb.di ], [ %.0191.ph.i.i, %bb.dj ], [ %.2192.i.i, %bb.do ] ; 6 uses
  %i.tk = getelementptr inbounds nuw i8, ptr %.0.i.i155, i64 24
  %i.tl = load ptr, ptr %i.tk, align 8, !tbaa !64
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tl, i64 176
  %i.tn = load ptr, ptr %i.tm, align 8, !tbaa !66 ; 2 uses
  %i.to = icmp eq ptr %i.tn, @zend_weakmap_get_gc
  br i1 %i.to, label %bb.dp, label %bb.dv, !prof !43

bb.dp:                                            ; preds = %.loopexit228.i.i
  %i.tp = call ptr @zend_weakmap_get_entry_gc(ptr noundef nonnull %.0.i.i155, ptr noundef nonnull %i.d, ptr noundef nonnull %i.c) #19 ; 0 uses
  %i.tq = load i32, ptr %i.c, align 4, !tbaa !42  ; 2 uses
  %.not160303.i.i = icmp eq i32 %i.tq, 0
end_hunk_1
begin_hunk_2_@zend_gc_collect_cycles:bb.a
  %.18216.i.i = phi ptr [ %i.uj, %bb.dt ], [ %.4202304.i.i, %bb.ds ] ; 2 uses
  %.18.i.i184 = phi i64 [ 0, %bb.dt ], [ %.4194305.i.i, %bb.ds ] ; 2 uses
  %i.uk = getelementptr inbounds nuw i8, ptr %.18216.i.i, i64 16
  %i.ul = add i64 %.18.i.i184, 1
  %i.um = getelementptr inbounds nuw [8 x i8], ptr %i.uk, i64 %.18.i.i184
  store ptr %i.ua, ptr %i.um, align 8, !tbaa !60
  br label %bb.du

bb.du:                                            ; preds = %gc_stack_push.exit168.i.i, %bb.dr, %bb.dq, %.lr.ph308.i.i
  %.5203.i.i = phi ptr [ %.4202304.i.i, %.lr.ph308.i.i ], [ %.4202304.i.i, %bb.dq ], [ %.18216.i.i, %gc_stack_push.exit168.i.i ], [ %.4202304.i.i, %bb.dr ] ; 2 uses
  %.5195.i.i = phi i64 [ %.4194305.i.i, %.lr.ph308.i.i ], [ %.4194305.i.i, %bb.dq ], [ %i.ul, %gc_stack_push.exit168.i.i ], [ %.4194305.i.i, %bb.dr ] ; 2 uses
  %i.un = getelementptr inbounds nuw i8, ptr %.1125307.i.i, i64 16
  %i.uo = add i32 %.1127306.i.i, -1               ; 2 uses
  %.not160.i.i = icmp eq i32 %i.uo, 0
  br i1 %.not160.i.i, label %.loopexit.i27.i, label %.lr.ph308.i.i, !llvm.loop !124

bb.dv:                                            ; preds = %.loopexit228.i.i
  %i.up = call ptr %i.tn(ptr noundef nonnull %.0.i.i155, ptr noundef nonnull %i.d, ptr noundef nonnull %i.c) #19, !inline_history !125 ; 6 uses
  %i.uq = load i32, ptr %i.c, align 4, !tbaa !42  ; 4 uses
  %i.ur = load ptr, ptr %i.d, align 8, !tbaa !59  ; 3 uses
  %.not148.i.i181 = icmp eq ptr %i.up, null
  br i1 %.not148.i.i181, label %bb.ec, label %bb.dw, !prof !32

bb.dw:                                            ; preds = %bb.dv
  %i.us = load i32, ptr %i.up, align 4, !tbaa !49
  %i.ut = add i32 %i.us, 1
  store i32 %i.ut, ptr %i.up, align 4, !tbaa !49
  %i.uu = getelementptr inbounds nuw i8, ptr %i.up, i64 4 ; 2 uses
  %i.uv = load i32, ptr %i.uu, align 4, !tbaa !47 ; 2 uses
  %i.uw = and i32 %i.uv, -1073741824
  %i.ux = icmp eq i32 %i.uw, 1073741824
  br i1 %i.ux, label %bb.dx, label %bb.ec

bb.dx:                                            ; preds = %bb.dw
  %i.uy = and i32 %i.uv, 1073741823
  store i32 %i.uy, ptr %i.uu, align 4, !tbaa !47
  %.not149267.i.i = icmp eq i32 %i.uq, 0
  br i1 %.not149267.i.i, label %.loopexit227.i.i, label %.lr.ph272.i.i

.lr.ph272.i.i:                                    ; preds = %bb.dx, %bb.eb
  %.2271.i.i = phi ptr [ %i.vp, %bb.eb ], [ %i.ur, %bb.dx ] ; 3 uses
  %.2128270.i.i = phi i32 [ %i.vq, %bb.eb ], [ %i.uq, %bb.dx ]
  %.6196269.i.i = phi i64 [ %.7197.i.i, %bb.eb ], [ %.3193.i.i, %bb.dx ] ; 4 uses
  %.6204268.i.i = phi ptr [ %.7205.i.i, %bb.eb ], [ %.3201.i.i, %bb.dx ] ; 4 uses
  %i.uz = getelementptr inbounds nuw i8, ptr %.2271.i.i, i64 9
  %i.va = load i8, ptr %i.uz, align 1, !tbaa !47
  %i.vb = and i8 %i.va, 2
  %.not159.i.i = icmp eq i8 %i.vb, 0
  br i1 %.not159.i.i, label %bb.eb, label %bb.dy

bb.dy:                                            ; preds = %.lr.ph272.i.i
  %i.vc = load ptr, ptr %.2271.i.i, align 8, !tbaa !47 ; 4 uses
  %i.vd = load i32, ptr %i.vc, align 4, !tbaa !49
  %i.ve = add i32 %i.vd, 1
  store i32 %i.ve, ptr %i.vc, align 4, !tbaa !49
  %i.vf = getelementptr inbounds nuw i8, ptr %i.vc, i64 4 ; 2 uses
  %i.vg = load i32, ptr %i.vf, align 4, !tbaa !47 ; 2 uses
  %i.vh = and i32 %i.vg, -1073741824
  %i.vi = icmp eq i32 %i.vh, 1073741824
  br i1 %i.vi, label %bb.dz, label %bb.eb

bb.dz:                                            ; preds = %bb.dy
  %i.vj = and i32 %i.vg, 1073741823
  store i32 %i.vj, ptr %i.vf, align 4, !tbaa !47
  %i.vk = icmp eq i64 %.6196269.i.i, 510
  br i1 %i.vk, label %bb.ea, label %gc_stack_push.exit167.i.i, !prof !43

bb.ea:                                            ; preds = %bb.dz
  %i.vl = call fastcc ptr @gc_stack_next(ptr noundef %.6204268.i.i)
  br label %gc_stack_push.exit167.i.i

gc_stack_push.exit167.i.i:                        ; preds = %bb.ea, %bb.dz
  %.17215.i.i = phi ptr [ %i.vl, %bb.ea ], [ %.6204268.i.i, %bb.dz ] ; 2 uses
  %.17.i.i183 = phi i64 [ 0, %bb.ea ], [ %.6196269.i.i, %bb.dz ] ; 2 uses
  %i.vm = getelementptr inbounds nuw i8, ptr %.17215.i.i, i64 16
  %i.vn = add i64 %.17.i.i183, 1
  %i.vo = getelementptr inbounds nuw [8 x i8], ptr %i.vm, i64 %.17.i.i183
  store ptr %i.vc, ptr %i.vo, align 8, !tbaa !60
  br label %bb.eb

bb.eb:                                            ; preds = %gc_stack_push.exit167.i.i, %bb.dy, %.lr.ph272.i.i
  %.7205.i.i = phi ptr [ %.6204268.i.i, %.lr.ph272.i.i ], [ %.17215.i.i, %gc_stack_push.exit167.i.i ], [ %.6204268.i.i, %bb.dy ] ; 2 uses
  %.7197.i.i = phi i64 [ %.6196269.i.i, %.lr.ph272.i.i ], [ %i.vn, %gc_stack_push.exit167.i.i ], [ %.6196269.i.i, %bb.dy ] ; 2 uses
  %i.vp = getelementptr inbounds nuw i8, ptr %.2271.i.i, i64 16
  %i.vq = add i32 %.2128270.i.i, -1               ; 2 uses
  %.not149.i.i182 = icmp eq i32 %i.vq, 0
  br i1 %.not149.i.i182, label %.loopexit227.i.i, label %.lr.ph272.i.i, !llvm.loop !126

bb.ec:                                            ; preds = %bb.ev, %bb.dw, %bb.dv
  %.4 = phi i32 [ %.7, %bb.dv ], [ %.3, %bb.ev ], [ %.7, %bb.dw ] ; 4 uses
  %spec.select235.i.i = phi i32 [ %spec.select.le256.i.i, %bb.dv ], [ %spec.select234.i.i, %bb.ev ], [ %spec.select.le256.i.i, %bb.dw ] ; 4 uses
  %.8206.i.i = phi ptr [ %.3201.i.i, %bb.dv ], [ %.11209.i.i, %bb.ev ], [ %.3201.i.i, %bb.dw ] ; 4 uses
  %.8.i.i159 = phi i64 [ %.3193.i.i, %bb.dv ], [ %.11.i.i157, %bb.ev ], [ %.3193.i.i, %bb.dw ] ; 4 uses
  %.3129.i.i = phi i32 [ %i.uq, %bb.dv ], [ %i.yo, %bb.ev ], [ %i.uq, %bb.dw ] ; 2 uses
  %.3.i.i160 = phi ptr [ %i.ur, %bb.dv ], [ %i.yt, %bb.ev ], [ %i.ur, %bb.dw ]
  %.not155290.i.i = icmp eq i32 %.3129.i.i, 0
  br i1 %.not155290.i.i, label %.loopexit.i27.i, label %.lr.ph293.i.i

.lr.ph293.i.i:                                    ; preds = %bb.ec, %bb.ej
  %.4292.i.i = phi ptr [ %i.ww, %bb.ej ], [ %.3.i.i160, %bb.ec ] ; 4 uses
  %.4130291.i.i = phi i32 [ %i.wx, %bb.ej ], [ %.3129.i.i, %bb.ec ] ; 2 uses
  %i.vr = getelementptr inbounds nuw i8, ptr %.4292.i.i, i64 9
  %i.vs = load i8, ptr %i.vr, align 1, !tbaa !47
  %i.vt = and i8 %i.vs, 2
  %.not156.i.i = icmp eq i8 %i.vt, 0
  br i1 %.not156.i.i, label %bb.ej, label %bb.ed

bb.ed:                                            ; preds = %.lr.ph293.i.i
  %i.vu = load ptr, ptr %.4292.i.i, align 8, !tbaa !47 ; 6 uses
  %i.vv = load i32, ptr %i.vu, align 4, !tbaa !49
  %i.vw = add i32 %i.vv, 1
  store i32 %i.vw, ptr %i.vu, align 4, !tbaa !49
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vu, i64 4
  %i.vy = load i32, ptr %i.vx, align 4, !tbaa !47 ; 2 uses
  %i.vz = and i32 %i.vy, -1073741824
  %i.wa = icmp eq i32 %i.vz, 1073741824
  br i1 %i.wa, label %bb.ee, label %bb.ej

bb.ee:                                            ; preds = %bb.ed
  %i.wb = getelementptr inbounds nuw i8, ptr %i.vu, i64 4
  %i.wc = and i32 %i.vy, 1073741823
  store i32 %i.wc, ptr %i.wb, align 4, !tbaa !47
  %i.wd = add i32 %.4130291.i.i, -1               ; 2 uses
  %.not157295.i.i = icmp eq i32 %i.wd, 0
  br i1 %.not157295.i.i, label %.outer.i.i152.backedge, label %.lr.ph300.i.i

.lr.ph300.i.i:                                    ; preds = %bb.ee, %bb.ei
  %i.we = phi i32 [ %i.wv, %bb.ei ], [ %i.wd, %bb.ee ]
  %.4.pn298.i.i = phi ptr [ %.5299.i.i, %bb.ei ], [ %.4292.i.i, %bb.ee ] ; 2 uses
  %.9297.i.i = phi i64 [ %.10.i.i168, %bb.ei ], [ %.8.i.i159, %bb.ee ] ; 4 uses
  %.9207296.i.i = phi ptr [ %.10208.i.i, %bb.ei ], [ %.8206.i.i, %bb.ee ] ; 4 uses
  %.5299.i.i = getelementptr inbounds nuw i8, ptr %.4.pn298.i.i, i64 16 ; 2 uses
  %i.wf = getelementptr inbounds nuw i8, ptr %.4.pn298.i.i, i64 25
  %i.wg = load i8, ptr %i.wf, align 1, !tbaa !47
  %i.wh = and i8 %i.wg, 2
  %.not158.i.i = icmp eq i8 %i.wh, 0
  br i1 %.not158.i.i, label %bb.ei, label %bb.ef

bb.ef:                                            ; preds = %.lr.ph300.i.i
  %i.wi = load ptr, ptr %.5299.i.i, align 8, !tbaa !47 ; 4 uses
  %i.wj = load i32, ptr %i.wi, align 4, !tbaa !49
  %i.wk = add i32 %i.wj, 1
  store i32 %i.wk, ptr %i.wi, align 4, !tbaa !49
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wi, i64 4 ; 2 uses
  %i.wm = load i32, ptr %i.wl, align 4, !tbaa !47 ; 2 uses
  %i.wn = and i32 %i.wm, -1073741824
  %i.wo = icmp eq i32 %i.wn, 1073741824
  br i1 %i.wo, label %bb.eg, label %bb.ei

bb.eg:                                            ; preds = %bb.ef
  %i.wp = and i32 %i.wm, 1073741823
  store i32 %i.wp, ptr %i.wl, align 4, !tbaa !47
  %i.wq = icmp eq i64 %.9297.i.i, 510
  br i1 %i.wq, label %bb.eh, label %gc_stack_push.exit166.i.i, !prof !43

bb.eh:                                            ; preds = %bb.eg
  %i.wr = call fastcc ptr @gc_stack_next(ptr noundef %.9207296.i.i)
  br label %gc_stack_push.exit166.i.i

gc_stack_push.exit166.i.i:                        ; preds = %bb.eh, %bb.eg
  %.16214.i.i = phi ptr [ %i.wr, %bb.eh ], [ %.9207296.i.i, %bb.eg ] ; 2 uses
  %.16.i.i169 = phi i64 [ 0, %bb.eh ], [ %.9297.i.i, %bb.eg ] ; 2 uses
  %i.ws = getelementptr inbounds nuw i8, ptr %.16214.i.i, i64 16
  %i.wt = add i64 %.16.i.i169, 1
  %i.wu = getelementptr inbounds nuw [8 x i8], ptr %i.ws, i64 %.16.i.i169
  store ptr %i.wi, ptr %i.wu, align 8, !tbaa !60
  br label %bb.ei

bb.ei:                                            ; preds = %gc_stack_push.exit166.i.i, %bb.ef, %.lr.ph300.i.i
  %.10208.i.i = phi ptr [ %.9207296.i.i, %.lr.ph300.i.i ], [ %.16214.i.i, %gc_stack_push.exit166.i.i ], [ %.9207296.i.i, %bb.ef ] ; 2 uses
  %.10.i.i168 = phi i64 [ %.9297.i.i, %.lr.ph300.i.i ], [ %i.wt, %gc_stack_push.exit166.i.i ], [ %.9297.i.i, %bb.ef ] ; 2 uses
  %i.wv = add i32 %i.we, -1                       ; 2 uses
  %.not157.i.i = icmp eq i32 %i.wv, 0
  br i1 %.not157.i.i, label %.outer.i.i152.backedge, label %.lr.ph300.i.i, !llvm.loop !127

bb.ej:                                            ; preds = %bb.ed, %.lr.ph293.i.i
  %i.ww = getelementptr inbounds nuw i8, ptr %.4292.i.i, i64 16
  %i.wx = add i32 %.4130291.i.i, -1               ; 2 uses
  %.not155.i.i = icmp eq i32 %i.wx, 0
  br i1 %.not155.i.i, label %.loopexit.i27.i, label %.lr.ph293.i.i, !llvm.loop !128

bb.ek:                                            ; preds = %bb.cr
  %spec.select.le254.i.i = add nsw i32 %.0120.ph.i.i, 1 ; 3 uses
  %.not140.i.i156 = icmp ult i32 %i.qh, 1024
  br i1 %.not140.i.i156, label %bb.el, label %.loopexit227.i.i

bb.el:                                            ; preds = %bb.ek
  %i.wy = load i32, ptr getelementptr inbounds nuw (i8, ptr @gc_globals, i64 12), align 4, !tbaa !44 ; 3 uses
  %.not.i241 = icmp eq i32 %i.wy, 0
  br i1 %.not.i241, label %bb.en, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.wz = load ptr, ptr @gc_globals, align 8, !tbaa !23
  %i.xa = zext i32 %i.wy to i64
  %i.xb = getelementptr inbounds nuw [8 x i8], ptr %i.wz, i64 %i.xa
  %i.xc = load ptr, ptr %i.xb, align 8, !tbaa !41
  %i.xd = ptrtoint ptr %i.xc to i64               ; 2 uses
  %i.xe = and i64 %i.xd, 3
  %i.xf = icmp eq i64 %i.xe, 1
  call void @llvm.assume(i1 %i.xf)
  %i.xg = trunc i64 %i.xd to i32
  %10 = lshr i32 %i.xg, 3
  store i32 %10, ptr getelementptr inbounds nuw (i8, ptr @gc_globals, i64 12), align 4, !tbaa !44
  br label %bb.et

bb.en:                                            ; preds = %bb.el
  %i.xh = load i32, ptr getelementptr inbounds nuw (i8, ptr @gc_globals, i64 16), align 8, !tbaa !28 ; 7 uses
  %i.xi = load i32, ptr getelementptr inbounds nuw (i8, ptr @gc_globals, i64 24), align 8, !tbaa !46
  %.not6.i = icmp eq i32 %i.xh, %i.xi
  br i1 %.not6.i, label %bb.ep, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.xj = add i32 %i.xh, 1
  store i32 %i.xj, ptr getelementptr inbounds nuw (i8, ptr @gc_globals, i64 16), align 8, !tbaa !28
  br label %bb.et

bb.ep:                                            ; preds = %bb.en
  %i.xk = icmp ult i32 %i.xh, 1073741824
  %i.xl = load i8, ptr getelementptr inbounds nuw (i8, ptr @gc_globals, i64 11), align 1, !range !37
  %i.xm = trunc nuw i8 %i.xl to i1
  %or.cond.i.i = select i1 %i.xk, i1 true, i1 %i.xm
  br i1 %or.cond.i.i, label %bb.er, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  call void (i32, ptr, ...) @zend_error(i32 noundef 2, ptr noundef nonnull @.str.1) #19
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @gc_globals, i64 9), align 1, !tbaa !21
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @gc_globals, i64 10), align 2, !tbaa !22
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @gc_globals, i64 11), align 1, !tbaa !72
  %.pre.i245 = load i32, ptr getelementptr inbounds nuw (i8, ptr @gc_globals, i64 24), align 8, !tbaa !46
  br label %gc_grow_root_buffer.exit.i

bb.er:                                            ; preds = %bb.ep
  %i.xn = icmp ult i32 %i.xh, 131072
  %i.xo = shl nuw nsw i32 %i.xh, 1
  %i.xp = add i32 %i.xh, 131072
  %.0.in.i.i = select i1 %i.xn, i32 %i.xo, i32 %i.xp
  %i.xq = call i32 @llvm.umin.i32(i32 %.0.in.i.i, i32 1073741824) ; 3 uses
  %spec.store.select.i.i = zext nneg i32 %i.xq to i64
  %i.xr = load ptr, ptr @gc_globals, align 8, !tbaa !23
  %i.xs = shl nuw nsw i64 %spec.store.select.i.i, 3
  %i.xt = call ptr @__zend_realloc(ptr noundef %i.xr, i64 noundef %i.xs) #21
  store ptr %i.xt, ptr @gc_globals, align 8, !tbaa !23
  store i32 %i.xq, ptr getelementptr inbounds nuw (i8, ptr @gc_globals, i64 24), align 8, !tbaa !46
  br label %gc_grow_root_buffer.exit.i

gc_grow_root_buffer.exit.i:                       ; preds = %bb.er, %bb.eq
  %i.xu = phi i32 [ %.pre.i245, %bb.eq ], [ %i.xq, %bb.er ]
  %i.xv = load i32, ptr getelementptr inbounds nuw (i8, ptr @gc_globals, i64 16), align 8, !tbaa !28 ; 3 uses
  %.not7.i = icmp eq i32 %i.xv, %i.xu
  br i1 %.not7.i, label %.loopexit227.i.i, label %bb.es, !prof !43

bb.es:                                            ; preds = %gc_grow_root_buffer.exit.i
  %i.xw = add i32 %i.xv, 1
  store i32 %i.xw, ptr getelementptr inbounds nuw (i8, ptr @gc_globals, i64 16), align 8, !tbaa !28
  br label %bb.et

bb.et:                                            ; preds = %bb.es, %bb.eo, %bb.em
  %.0.i242 = phi i32 [ %i.wy, %bb.em ], [ %i.xh, %bb.eo ], [ %i.xv, %bb.es ] ; 4 uses
  %i.xx = load ptr, ptr @gc_globals, align 8, !tbaa !23
  %i.xy = zext i32 %.0.i242 to i64
  %i.xz = getelementptr inbounds nuw [8 x i8], ptr %i.xx, i64 %i.xy
  %i.ya = ptrtoint ptr %.0.i.i155 to i64
  %i.yb = or i64 %i.ya, 2
  %i.yc = inttoptr i64 %i.yb to ptr
  store ptr %i.yc, ptr %i.xz, align 8, !tbaa !41
  %i.yd = icmp ult i32 %.0.i242, 524288
  br i1 %i.yd, label %gc_compress.exit.i243, label %bb.eu, !prof !32

bb.eu:                                            ; preds = %bb.et
  %i.ye = and i32 %.0.i242, 524287
  %i.yf = or disjoint i32 %i.ye, 524288
  br label %gc_compress.exit.i243

gc_compress.exit.i243:                            ; preds = %bb.eu, %bb.et
  %.0.i.i244 = phi i32 [ %i.yf, %bb.eu ], [ %.0.i242, %bb.et ]
  %i.yg = getelementptr inbounds nuw i8, ptr %.0.i.i155, i64 4 ; 2 uses
  %i.yh = load i32, ptr %i.yg, align 4, !tbaa !47
  %i.yi = and i32 %i.yh, 1023
  %i.yj = shl nuw nsw i32 %.0.i.i244, 10
  %i.yk = or disjoint i32 %i.yi, %i.yj
  store i32 %i.yk, ptr %i.yg, align 4, !tbaa !47
  %i.yl = load i32, ptr getelementptr inbounds nuw (i8, ptr @gc_globals, i64 28), align 4, !tbaa !29
  %i.ym = add i32 %i.yl, 1
  store i32 %i.ym, ptr getelementptr inbounds nuw (i8, ptr @gc_globals, i64 28), align 4, !tbaa !29
  br label %.loopexit227.i.i

.loopexit227.i.i:                                 ; preds = %bb.eb, %gc_compress.exit.i243, %gc_grow_root_buffer.exit.i, %bb.ek, %bb.dx
  %.3 = phi i32 [ %.7, %bb.dx ], [ %.2, %gc_compress.exit.i243 ], [ %.2, %bb.ek ], [ %.2, %gc_grow_root_buffer.exit.i ], [ %.7, %bb.eb ] ; 5 uses
  %spec.select234.i.i = phi i32 [ %spec.select.le256.i.i, %bb.dx ], [ %spec.select.le254.i.i, %gc_compress.exit.i243 ], [ %spec.select.le254.i.i, %bb.ek ], [ %spec.select.le254.i.i, %gc_grow_root_buffer.exit.i ], [ %spec.select.le256.i.i, %bb.eb ] ; 5 uses
  %.11209.i.i = phi ptr [ %.3201.i.i, %bb.dx ], [ %.0198.ph.i.i, %gc_compress.exit.i243 ], [ %.0198.ph.i.i, %bb.ek ], [ %.0198.ph.i.i, %gc_grow_root_buffer.exit.i ], [ %.7205.i.i, %bb.eb ] ; 5 uses
  %.11.i.i157 = phi i64 [ %.3193.i.i, %bb.dx ], [ %.0191.ph.i.i, %gc_compress.exit.i243 ], [ %.0191.ph.i.i, %bb.ek ], [ %.0191.ph.i.i, %gc_grow_root_buffer.exit.i ], [ %.7197.i.i, %bb.eb ] ; 5 uses
  %.0121.i.i = phi ptr [ %i.up, %bb.dx ], [ %.0.i.i155, %gc_compress.exit.i243 ], [ %.0.i.i155, %bb.ek ], [ %.0.i.i155, %gc_grow_root_buffer.exit.i ], [ %i.up, %bb.eb ] ; 4 uses
  %i.yn = getelementptr inbounds nuw i8, ptr %.0121.i.i, i64 24
  %i.yo = load i32, ptr %i.yn, align 8, !tbaa !68 ; 3 uses
  %i.yp = getelementptr inbounds nuw i8, ptr %.0121.i.i, i64 8
  %i.yq = load i32, ptr %i.yp, align 8, !tbaa !47
  %i.yr = and i32 %i.yq, 4
  %.not150.i.i158 = icmp eq i32 %i.yr, 0
  br i1 %.not150.i.i158, label %bb.ew, label %bb.ev

bb.ev:                                            ; preds = %.loopexit227.i.i
  %i.ys = getelementptr inbounds nuw i8, ptr %.0121.i.i, i64 16
  %i.yt = load ptr, ptr %i.ys, align 8, !tbaa !47
  br label %bb.ec

bb.ew:                                            ; preds = %.loopexit227.i.i
  %.not151276.i.i = icmp eq i32 %i.yo, 0
  br i1 %.not151276.i.i, label %.loopexit.i27.i, label %.lr.ph279.preheader.i.i

.lr.ph279.preheader.i.i:                          ; preds = %bb.ew
  %i.yu = getelementptr inbounds nuw i8, ptr %.0121.i.i, i64 16
  %i.yv = load ptr, ptr %i.yu, align 8, !tbaa !47
  br label %.lr.ph279.i.i

.lr.ph279.i.i:                                    ; preds = %bb.fh, %.lr.ph279.preheader.i.i
  %.0122278.i.i = phi ptr [ %i.aaj, %bb.fh ], [ %i.yv, %.lr.ph279.preheader.i.i ] ; 5 uses
  %.6132277.i.i = phi i32 [ %i.aak, %bb.fh ], [ %i.yo, %.lr.ph279.preheader.i.i ] ; 2 uses
  %i.yw = getelementptr inbounds nuw i8, ptr %.0122278.i.i, i64 8
  %i.yx = load i8, ptr %i.yw, align 8, !tbaa !47
  %i.yy = icmp eq i8 %i.yx, 12
  br i1 %i.yy, label %bb.ex, label %bb.ey

bb.ex:                                            ; preds = %.lr.ph279.i.i
  %i.yz = load ptr, ptr %.0122278.i.i, align 8, !tbaa !47
  br label %bb.ey

bb.ey:                                            ; preds = %bb.ex, %.lr.ph279.i.i
  %.6.i.i = phi ptr [ %i.yz, %bb.ex ], [ %.0122278.i.i, %.lr.ph279.i.i ] ; 2 uses
  %i.za = getelementptr inbounds nuw i8, ptr %.6.i.i, i64 9
  %i.zb = load i8, ptr %i.za, align 1, !tbaa !47
  %i.zc = and i8 %i.zb, 2
  %.not152.i.i170 = icmp eq i8 %i.zc, 0
  br i1 %.not152.i.i170, label %bb.fh, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.zd = load ptr, ptr %.6.i.i, align 8, !tbaa !47 ; 6 uses
  %i.ze = load i32, ptr %i.zd, align 4, !tbaa !49
  %i.zf = add i32 %i.ze, 1
  store i32 %i.zf, ptr %i.zd, align 4, !tbaa !49
  %i.zg = getelementptr inbounds nuw i8, ptr %i.zd, i64 4
  %i.zh = load i32, ptr %i.zg, align 4, !tbaa !47 ; 2 uses
  %i.zi = and i32 %i.zh, -1073741824
  %i.zj = icmp eq i32 %i.zi, 1073741824
  br i1 %i.zj, label %bb.fa, label %bb.fh

bb.fa:                                            ; preds = %bb.ez
  %i.zk = getelementptr inbounds nuw i8, ptr %i.zd, i64 4
  %i.zl = and i32 %i.zh, 1073741823
  store i32 %i.zl, ptr %i.zk, align 4, !tbaa !47
  %i.zm = add i32 %.6132277.i.i, -1               ; 2 uses
  %.not153281.i.i = icmp eq i32 %i.zm, 0
  br i1 %.not153281.i.i, label %.outer.i.i152.backedge, label %.lr.ph286.i.i

.lr.ph286.i.i:                                    ; preds = %bb.fa, %bb.fg
  %i.zn = phi i32 [ %i.aai, %bb.fg ], [ %i.zm, %bb.fa ]
  %.0122.pn284.i.i = phi ptr [ %.1123285.i.i, %bb.fg ], [ %.0122278.i.i, %bb.fa ] ; 2 uses
  %.12283.i.i = phi i64 [ %.13.i.i172, %bb.fg ], [ %.11.i.i157, %bb.fa ] ; 4 uses
  %.12210282.i.i = phi ptr [ %.13211.i.i, %bb.fg ], [ %.11209.i.i, %bb.fa ] ; 4 uses
  %.1123285.i.i = getelementptr inbounds nuw i8, ptr %.0122.pn284.i.i, i64 32 ; 3 uses
  %i.zo = getelementptr inbounds nuw i8, ptr %.0122.pn284.i.i, i64 40
  %i.zp = load i8, ptr %i.zo, align 8, !tbaa !47
  %i.zq = icmp eq i8 %i.zp, 12
  br i1 %i.zq, label %bb.fb, label %bb.fc

bb.fb:                                            ; preds = %.lr.ph286.i.i
  %i.zr = load ptr, ptr %.1123285.i.i, align 8, !tbaa !47
  br label %bb.fc

bb.fc:                                            ; preds = %bb.fb, %.lr.ph286.i.i
  %.7.i.i = phi ptr [ %i.zr, %bb.fb ], [ %.1123285.i.i, %.lr.ph286.i.i ] ; 2 uses
  %i.zs = getelementptr inbounds nuw i8, ptr %.7.i.i, i64 9
  %i.zt = load i8, ptr %i.zs, align 1, !tbaa !47
  %i.zu = and i8 %i.zt, 2
  %.not154.i.i = icmp eq i8 %i.zu, 0
  br i1 %.not154.i.i, label %bb.fg, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.zv = load ptr, ptr %.7.i.i, align 8, !tbaa !47 ; 4 uses
  %i.zw = load i32, ptr %i.zv, align 4, !tbaa !49
  %i.zx = add i32 %i.zw, 1
  store i32 %i.zx, ptr %i.zv, align 4, !tbaa !49
  %i.zy = getelementptr inbounds nuw i8, ptr %i.zv, i64 4 ; 2 uses
  %i.zz = load i32, ptr %i.zy, align 4, !tbaa !47 ; 2 uses
  %i.aaa = and i32 %i.zz, -1073741824
  %i.aab = icmp eq i32 %i.aaa, 1073741824
  br i1 %i.aab, label %bb.fe, label %bb.fg

bb.fe:                                            ; preds = %bb.fd
  %i.aac = and i32 %i.zz, 1073741823
  store i32 %i.aac, ptr %i.zy, align 4, !tbaa !47
  %i.aad = icmp eq i64 %.12283.i.i, 510
  br i1 %i.aad, label %bb.ff, label %gc_stack_push.exit.i.i173, !prof !43

bb.ff:                                            ; preds = %bb.fe
  %i.aae = call fastcc ptr @gc_stack_next(ptr noundef %.12210282.i.i)
  br label %gc_stack_push.exit.i.i173

gc_stack_push.exit.i.i173:                        ; preds = %bb.ff, %bb.fe
  %.15213.i.i = phi ptr [ %i.aae, %bb.ff ], [ %.12210282.i.i, %bb.fe ] ; 2 uses
  %.15.i.i174 = phi i64 [ 0, %bb.ff ], [ %.12283.i.i, %bb.fe ] ; 2 uses
  %i.aaf = getelementptr inbounds nuw i8, ptr %.15213.i.i, i64 16
  %i.aag = add i64 %.15.i.i174, 1
  %i.aah = getelementptr inbounds nuw [8 x i8], ptr %i.aaf, i64 %.15.i.i174
end_hunk_2
begin_hunk_3_@clock_gettime

declare void @rc_dtor_func(ptr noundef) local_unnamed_addr #11

; Function Attrs: nounwind uwtable
define internal fastcc void @gc_grow_root_buffer() unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @gc_globals, i64 24), align 8, !tbaa !46 ; 4 uses
  %i.b = icmp ult i32 %i.a, 1073741824
  %i.c = load i8, ptr getelementptr inbounds nuw (i8, ptr @gc_globals, i64 11), align 1, !range !37
  %i.d = trunc nuw i8 %i.c to i1
  %or.cond = select i1 %i.b, i1 true, i1 %i.d
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (i32, ptr, ...) @zend_error(i32 noundef 2, ptr noundef nonnull @.str.1) #19
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @gc_globals, i64 9), align 1, !tbaa !21
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @gc_globals, i64 10), align 2, !tbaa !22
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @gc_globals, i64 11), align 1, !tbaa !72
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = icmp ult i32 %i.a, 131072
  %i.f = shl nuw nsw i32 %i.a, 1
  %i.g = add i32 %i.a, 131072
  %.0.in = select i1 %i.e, i32 %i.f, i32 %i.g
  %i.h = tail call i32 @llvm.umin.i32(i32 %.0.in, i32 1073741824) ; 2 uses
  %spec.store.select = zext nneg i32 %i.h to i64
  %i.i = load ptr, ptr @gc_globals, align 8, !tbaa !23
  %i.j = shl nuw nsw i64 %spec.store.select, 3
  %i.k = tail call ptr @__zend_realloc(ptr noundef %i.i, i64 noundef %i.j) #21
  store ptr %i.k, ptr @gc_globals, align 8, !tbaa !23
  store i32 %i.h, ptr getelementptr inbounds nuw (i8, ptr @gc_globals, i64 24), align 8, !tbaa !46
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

declare void @zend_error(i32 noundef, ptr noundef, ...) local_unnamed_addr #11

; Function Attrs: allocsize(1)
declare ptr @__zend_realloc(ptr noundef, i64 noundef) local_unnamed_addr #12

declare ptr @zend_weakmap_get_object_key_entry_gc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #11

declare ptr @zend_weakmap_get_gc(ptr noundef, ptr noundef, ptr noundef) #11

declare ptr @zend_weakmap_get_entry_gc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #11

; Function Attrs: noinline nounwind uwtable
define internal fastcc ptr @gc_stack_next(ptr noundef %0) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !75   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.c, !prof !43

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias dereferenceable_or_null(4096) ptr @_emalloc_large(i64 noundef 4096) #20 ; 4 uses
  store ptr %0, ptr %i.c, align 8, !tbaa !71
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr null, ptr %i.d, align 8, !tbaa !75
  store ptr %i.c, ptr %i.a, align 8, !tbaa !75
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = phi ptr [ %i.c, %bb.b ], [ %i.b, %bb.a ]
  ret ptr %i.e
}

; Function Attrs: allocsize(0)
declare noalias ptr @_emalloc_large(i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc void @gc_scan(ptr noundef %0, ptr noundef nonnull %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 8 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  br label %.outer

.outer:                                           ; preds = %.outer.backedge, %bb.a
  %.0162.ph = phi ptr [ %1, %bb.a ], [ %.0162.ph.be, %.outer.backedge ] ; 13 uses
  %.0155.ph = phi i64 [ 0, %bb.a ], [ %.0155.ph.be, %.outer.backedge ] ; 10 uses
  %.0.ph = phi ptr [ %0, %bb.a ], [ %.0.ph.be, %.outer.backedge ] ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.0.ph, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !47   ; 3 uses
  %i.g = and i32 %i.f, -1073741824
  %i.h = icmp eq i32 %i.g, 1073741824
  br i1 %i.h, label %.lr.ph.preheader, label %.loopexit189

.lr.ph.preheader:                                 ; preds = %.outer
  %i.i = load i32, ptr %.0.ph, align 4, !tbaa !49
  %.not442 = icmp eq i32 %i.i, 0
  br i1 %.not442, label %.lr.ph444, label %.lr.ph._crit_edge

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.lcssa = phi i32 [ %i.f, %.lr.ph.preheader ], [ %i.oo, %.lr.ph ]
  %.0228.lcssa = phi ptr [ %.0.ph, %.lr.ph.preheader ], [ %i.oj, %.lr.ph ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.0228.lcssa, i64 4
  %i.k = and i32 %.lcssa, 1073741823
  store i32 %i.k, ptr %i.j, align 4, !tbaa !47
  %i.l = getelementptr inbounds nuw i8, ptr %.0162.ph, i64 8 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !75   ; 2 uses
  %.not122 = icmp eq ptr %i.m, null
  br i1 %.not122, label %bb.b, label %bb.c, !prof !43

bb.b:                                             ; preds = %.lr.ph._crit_edge
  %i.n = call fastcc ptr @gc_stack_next(ptr noundef nonnull %.0162.ph) ; 0 uses
  %.pre = load ptr, ptr %i.l, align 8, !tbaa !75
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph._crit_edge
  %i.o = phi ptr [ %.pre, %bb.b ], [ %i.m, %.lr.ph._crit_edge ] ; 2 uses
  store ptr null, ptr %i.o, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  br label %.outer.i

.outer.i:                                         ; preds = %.outer.i.backedge, %bb.c
  %.0199.ph.i = phi ptr [ %i.o, %bb.c ], [ %.0199.ph.i.be, %.outer.i.backedge ] ; 8 uses
  %.0191.ph.i = phi i64 [ 0, %bb.c ], [ %.0191.ph.i.be, %.outer.i.backedge ] ; 8 uses
  %.0.ph.i = phi ptr [ %.0228.lcssa, %bb.c ], [ %.0.ph.i.be, %.outer.i.backedge ] ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.0.ph.i, i64 4
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !47
  br label %bb.d

bb.d:                                             ; preds = %bb.bn, %.outer.i
  %i.p = phi i32 [ %i.it, %bb.bn ], [ %.pre.i, %.outer.i ] ; 3 uses
  %.0.i128 = phi ptr [ %i.in, %bb.bn ], [ %.0.ph.i, %.outer.i ] ; 8 uses
  %i.q = trunc i32 %i.p to i8
  %i.r = and i8 %i.q, 15
  switch i8 %i.r, label %.loopexit.i [
    i8 8, label %bb.e
    i8 7, label %bb.az
    i8 10, label %bb.bl
  ]

bb.e:                                             ; preds = %bb.d
  %i.s = and i32 %i.p, 512
  %.not134.not.not.i = icmp eq i32 %i.s, 0
  br i1 %.not134.not.not.i, label %bb.f, label %.loopexit.i, !prof !32

bb.f:                                             ; preds = %bb.e
  %i.t = and i32 %i.p, 128
  %.not135.i = icmp eq i32 %i.t, 0
  br i1 %.not135.i, label %.loopexit229.i, label %bb.g, !prof !32

bb.g:                                             ; preds = %bb.f
  %i.u = call ptr @zend_weakmap_get_object_key_entry_gc(ptr noundef nonnull %.0.i128, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #19 ; 0 uses
  %i.v = load i32, ptr %i.b, align 4, !tbaa !42   ; 2 uses
  %.not136244.i = icmp eq i32 %i.v, 0
  br i1 %.not136244.i, label %.loopexit229.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.g
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !59
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %gc_extra_root.exit.i, %.lr.ph.preheader.i
  %.0117248.i = phi i32 [ %i.by, %gc_extra_root.exit.i ], [ %i.v, %.lr.ph.preheader.i ]
  %.0119247.i = phi ptr [ %i.bx, %gc_extra_root.exit.i ], [ %i.w, %.lr.ph.preheader.i ] ; 3 uses
  %.1192246.i = phi i64 [ %.2193.i, %gc_extra_root.exit.i ], [ %.0191.ph.i, %.lr.ph.preheader.i ] ; 8 uses
  %.1200245.i = phi ptr [ %.2201.i, %gc_extra_root.exit.i ], [ %.0199.ph.i, %.lr.ph.preheader.i ] ; 8 uses
  %i.x = load ptr, ptr %.0119247.i, align 8, !tbaa !47 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !47   ; 3 uses
  %i.aa = and i32 %i.z, 512
  %.not154.i = icmp eq i32 %i.aa, 0
  br i1 %.not154.i, label %gc_extra_root.exit.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.0119247.i, i64 16
  %i.ac = and i32 %i.z, -65537
  store i32 %i.ac, ptr %i.y, align 8, !tbaa !47
  %i.ad = load ptr, ptr %i.ab, align 8, !tbaa !47 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 4 ; 3 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !47 ; 3 uses
  %i.ag = icmp slt i32 %i.af, -1073741824
  br i1 %i.ag, label %bb.i, label %bb.r

bb.i:                                             ; preds = %bb.h
  %i.ah = and i32 %i.af, 1073740800
  %.not156.i = icmp eq i32 %i.ah, 0
  br i1 %.not156.i, label %bb.j, label %gc_extra_root.exit.i

bb.j:                                             ; preds = %bb.i
  %i.ai = load i32, ptr getelementptr inbounds nuw (i8, ptr @gc_globals, i64 12), align 4, !tbaa !44 ; 3 uses
  %.not.i161.i = icmp eq i32 %i.ai, 0
  br i1 %.not.i161.i, label %bb.l, label %bb.k, !prof !43

bb.k:                                             ; preds = %bb.j
  %i.aj = load ptr, ptr @gc_globals, align 8, !tbaa !23
  %i.ak = zext i32 %i.ai to i64
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ak
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !41
  %i.an = ptrtoint ptr %i.am to i64               ; 2 uses
  %i.ao = and i64 %i.an, 3
  %i.ap = icmp eq i64 %i.ao, 1
  call void @llvm.assume(i1 %i.ap)
  %i.aq = trunc i64 %i.an to i32
  %2 = lshr i32 %i.aq, 3
  store i32 %2, ptr getelementptr inbounds nuw (i8, ptr @gc_globals, i64 12), align 4, !tbaa !44
  br label %bb.p

bb.l:                                             ; preds = %bb.j
  %i.ar = load i32, ptr getelementptr inbounds nuw (i8, ptr @gc_globals, i64 16), align 8, !tbaa !28 ; 3 uses
  %i.as = load i32, ptr getelementptr inbounds nuw (i8, ptr @gc_globals, i64 24), align 8, !tbaa !46
  %.not8.i.i = icmp eq i32 %i.ar, %i.as
  br i1 %.not8.i.i, label %bb.n, label %bb.m, !prof !43

bb.m:                                             ; preds = %bb.l
  %i.at = add i32 %i.ar, 1
  store i32 %i.at, ptr getelementptr inbounds nuw (i8, ptr @gc_globals, i64 16), align 8, !tbaa !28
  br label %bb.p

bb.n:                                             ; preds = %bb.l
  call fastcc void @gc_grow_root_buffer()
  %i.au = load i32, ptr getelementptr inbounds nuw (i8, ptr @gc_globals, i64 16), align 8, !tbaa !28 ; 3 uses
  %i.av = load i32, ptr getelementptr inbounds nuw (i8, ptr @gc_globals, i64 24), align 8, !tbaa !46
  %.not9.i.i = icmp eq i32 %i.au, %i.av
  br i1 %.not9.i.i, label %gc_extra_root.exit.i, label %bb.o, !prof !43

bb.o:                                             ; preds = %bb.n
  %i.aw = add i32 %i.au, 1
  store i32 %i.aw, ptr getelementptr inbounds nuw (i8, ptr @gc_globals, i64 16), align 8, !tbaa !28
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.m, %bb.k
  %.0.i162.i = phi i32 [ %i.ai, %bb.k ], [ %i.ar, %bb.m ], [ %i.au, %bb.o ] ; 4 uses
  %i.ax = load ptr, ptr @gc_globals, align 8, !tbaa !23
  %i.ay = zext i32 %.0.i162.i to i64
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.ay
  store ptr %i.ad, ptr %i.az, align 8, !tbaa !41
  %i.ba = icmp ult i32 %.0.i162.i, 524288
  br i1 %i.ba, label %gc_compress.exit.i.i, label %bb.q, !prof !32

bb.q:                                             ; preds = %bb.p
  %i.bb = and i32 %.0.i162.i, 524287
  %i.bc = or disjoint i32 %i.bb, 524288
  br label %gc_compress.exit.i.i

gc_compress.exit.i.i:                             ; preds = %bb.q, %bb.p
  %.0.i.i.i = phi i32 [ %i.bc, %bb.q ], [ %.0.i162.i, %bb.p ]
  %i.bd = load i32, ptr %i.ae, align 4, !tbaa !47
  %i.be = shl nuw nsw i32 %.0.i.i.i, 10
  %i.bf = and i32 %i.bd, -1073740801
  %i.bg = add nuw nsw i32 %i.bf, %i.be
  store i32 %i.bg, ptr %i.ae, align 4, !tbaa !47
  %i.bh = load i32, ptr getelementptr inbounds nuw (i8, ptr @gc_globals, i64 28), align 4, !tbaa !29
  %i.bi = add i32 %i.bh, 1
  store i32 %i.bi, ptr getelementptr inbounds nuw (i8, ptr @gc_globals, i64 28), align 4, !tbaa !29
  br label %gc_extra_root.exit.i

bb.r:                                             ; preds = %bb.h
  %i.bj = and i32 %i.z, 131072
  %.not155.i = icmp eq i32 %i.bj, 0
  br i1 %.not155.i, label %bb.s, label %gc_extra_root.exit.i

bb.s:                                             ; preds = %bb.r
  %i.bk = icmp ult i32 %i.af, 1073741824
  call void @llvm.assume(i1 %i.bk)
  %i.bl = load ptr, ptr %i.x, align 8, !tbaa !47  ; 4 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !49
  %i.bn = add i32 %i.bm, 1
  store i32 %i.bn, ptr %i.bl, align 4, !tbaa !49
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 4 ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !47 ; 2 uses
  %i.bq = icmp ult i32 %i.bp, 1073741824
  br i1 %i.bq, label %gc_extra_root.exit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.br = and i32 %i.bp, 1073741823
  store i32 %i.br, ptr %i.bo, align 4, !tbaa !47
  %i.bs = icmp eq i64 %.1192246.i, 510
  br i1 %i.bs, label %bb.u, label %gc_stack_push.exit160.i, !prof !43

bb.u:                                             ; preds = %bb.t
  %i.bt = call fastcc ptr @gc_stack_next(ptr noundef %.1200245.i)
  br label %gc_stack_push.exit160.i

gc_stack_push.exit160.i:                          ; preds = %bb.u, %bb.t
  %.19218.i = phi ptr [ %i.bt, %bb.u ], [ %.1200245.i, %bb.t ] ; 2 uses
  %.19.i = phi i64 [ 0, %bb.u ], [ %.1192246.i, %bb.t ] ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.19218.i, i64 16
  %i.bv = add i64 %.19.i, 1
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %.19.i
  store ptr %i.bl, ptr %i.bw, align 8, !tbaa !60
  br label %gc_extra_root.exit.i

gc_extra_root.exit.i:                             ; preds = %gc_stack_push.exit160.i, %bb.s, %bb.r, %gc_compress.exit.i.i, %bb.n, %bb.i, %.lr.ph.i
  %.2201.i = phi ptr [ %.1200245.i, %.lr.ph.i ], [ %.1200245.i, %bb.r ], [ %.1200245.i, %bb.i ], [ %.1200245.i, %bb.s ], [ %.19218.i, %gc_stack_push.exit160.i ], [ %.1200245.i, %bb.n ], [ %.1200245.i, %gc_compress.exit.i.i ] ; 2 uses
  %.2193.i = phi i64 [ %.1192246.i, %.lr.ph.i ], [ %.1192246.i, %bb.r ], [ %.1192246.i, %bb.i ], [ %.1192246.i, %bb.s ], [ %i.bv, %gc_stack_push.exit160.i ], [ %.1192246.i, %bb.n ], [ %.1192246.i, %gc_compress.exit.i.i ] ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.0119247.i, i64 32
  %i.by = add i32 %.0117248.i, -2                 ; 2 uses
  %.not136.i = icmp eq i32 %i.by, 0
  br i1 %.not136.i, label %.loopexit229.i, label %.lr.ph.i, !llvm.loop !189

.loopexit229.i:                                   ; preds = %gc_extra_root.exit.i, %bb.g, %bb.f
  %.3202.i = phi ptr [ %.0199.ph.i, %bb.f ], [ %.0199.ph.i, %bb.g ], [ %.2201.i, %gc_extra_root.exit.i ] ; 6 uses
  %.3194.i = phi i64 [ %.0191.ph.i, %bb.f ], [ %.0191.ph.i, %bb.g ], [ %.2193.i, %gc_extra_root.exit.i ] ; 6 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.0.i128, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !64
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 176
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !66 ; 2 uses
  %i.cd = icmp eq ptr %i.cc, @zend_weakmap_get_gc
  br i1 %i.cd, label %bb.v, label %bb.ak, !prof !43

bb.v:                                             ; preds = %.loopexit229.i
  %i.ce = call ptr @zend_weakmap_get_key_entry_gc(ptr noundef nonnull %.0.i128, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #19 ; 0 uses
  %i.cf = load i32, ptr %i.b, align 4, !tbaa !42  ; 2 uses
  %.not149286.i = icmp eq i32 %i.cf, 0
  br i1 %.not149286.i, label %.loopexit.i, label %.lr.ph291.preheader.i

.lr.ph291.preheader.i:                            ; preds = %bb.v
  %i.cg = load ptr, ptr %i.a, align 8, !tbaa !59
  br label %.lr.ph291.i

.lr.ph291.i:                                      ; preds = %gc_extra_root.exit169.i, %.lr.ph291.preheader.i
  %.1118290.i = phi i32 [ %i.ei, %gc_extra_root.exit169.i ], [ %i.cf, %.lr.ph291.preheader.i ]
  %.1120289.i = phi ptr [ %i.eh, %gc_extra_root.exit169.i ], [ %i.cg, %.lr.ph291.preheader.i ] ; 3 uses
  %.4195288.i = phi i64 [ %.5196.i, %gc_extra_root.exit169.i ], [ %.3194.i, %.lr.ph291.preheader.i ] ; 8 uses
  %.4203287.i = phi ptr [ %.5204.i, %gc_extra_root.exit169.i ], [ %.3202.i, %.lr.ph291.preheader.i ] ; 8 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.1120289.i, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !47 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8 ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !47 ; 3 uses
  %i.cl = and i32 %i.ck, 512
  %.not151.i = icmp eq i32 %i.cl, 0
  br i1 %.not151.i, label %gc_extra_root.exit169.i, label %bb.w

bb.w:                                             ; preds = %.lr.ph291.i
  %i.cm = and i32 %i.ck, -131073
  store i32 %i.cm, ptr %i.cj, align 8, !tbaa !47
  %i.cn = load ptr, ptr %.1120289.i, align 8, !tbaa !47 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 4 ; 3 uses
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !47 ; 3 uses
  %i.cq = icmp slt i32 %i.cp, -1073741824
  br i1 %i.cq, label %bb.x, label %bb.ag

bb.x:                                             ; preds = %bb.w
  %i.cr = and i32 %i.cp, 1073740800
  %.not153.i = icmp eq i32 %i.cr, 0
  br i1 %.not153.i, label %bb.y, label %gc_extra_root.exit169.i

bb.y:                                             ; preds = %bb.x
  %i.cs = load i32, ptr getelementptr inbounds nuw (i8, ptr @gc_globals, i64 12), align 4, !tbaa !44 ; 3 uses
  %.not.i163.i = icmp eq i32 %i.cs, 0
  br i1 %.not.i163.i, label %bb.aa, label %bb.z, !prof !43

bb.z:                                             ; preds = %bb.y
  %i.ct = load ptr, ptr @gc_globals, align 8, !tbaa !23
  %i.cu = zext i32 %i.cs to i64
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.cu
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !41
  %i.cx = ptrtoint ptr %i.cw to i64               ; 2 uses
  %i.cy = and i64 %i.cx, 3
  %i.cz = icmp eq i64 %i.cy, 1
  call void @llvm.assume(i1 %i.cz)
  %i.da = trunc i64 %i.cx to i32
  %3 = lshr i32 %i.da, 3
  store i32 %3, ptr getelementptr inbounds nuw (i8, ptr @gc_globals, i64 12), align 4, !tbaa !44
  br label %bb.ae

bb.aa:                                            ; preds = %bb.y
  %i.db = load i32, ptr getelementptr inbounds nuw (i8, ptr @gc_globals, i64 16), align 8, !tbaa !28 ; 3 uses
  %i.dc = load i32, ptr getelementptr inbounds nuw (i8, ptr @gc_globals, i64 24), align 8, !tbaa !46
  %.not8.i167.i = icmp eq i32 %i.db, %i.dc
  br i1 %.not8.i167.i, label %bb.ac, label %bb.ab, !prof !43

bb.ab:                                            ; preds = %bb.aa
  %i.dd = add i32 %i.db, 1
  store i32 %i.dd, ptr getelementptr inbounds nuw (i8, ptr @gc_globals, i64 16), align 8, !tbaa !28
  br label %bb.ae

bb.ac:                                            ; preds = %bb.aa
  call fastcc void @gc_grow_root_buffer()
  %i.de = load i32, ptr getelementptr inbounds nuw (i8, ptr @gc_globals, i64 16), align 8, !tbaa !28 ; 3 uses
  %i.df = load i32, ptr getelementptr inbounds nuw (i8, ptr @gc_globals, i64 24), align 8, !tbaa !46
  %.not9.i168.i = icmp eq i32 %i.de, %i.df
  br i1 %.not9.i168.i, label %gc_extra_root.exit169.i, label %bb.ad, !prof !43

bb.ad:                                            ; preds = %bb.ac
  %i.dg = add i32 %i.de, 1
  store i32 %i.dg, ptr getelementptr inbounds nuw (i8, ptr @gc_globals, i64 16), align 8, !tbaa !28
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ab, %bb.z
  %.0.i164.i = phi i32 [ %i.cs, %bb.z ], [ %i.db, %bb.ab ], [ %i.de, %bb.ad ] ; 4 uses
  %i.dh = load ptr, ptr @gc_globals, align 8, !tbaa !23
  %i.di = zext i32 %.0.i164.i to i64
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %i.di
  store ptr %i.cn, ptr %i.dj, align 8, !tbaa !41
  %i.dk = icmp ult i32 %.0.i164.i, 524288
  br i1 %i.dk, label %gc_compress.exit.i165.i, label %bb.af, !prof !32

bb.af:                                            ; preds = %bb.ae
  %i.dl = and i32 %.0.i164.i, 524287
  %i.dm = or disjoint i32 %i.dl, 524288
  br label %gc_compress.exit.i165.i

gc_compress.exit.i165.i:                          ; preds = %bb.af, %bb.ae
  %.0.i.i166.i = phi i32 [ %i.dm, %bb.af ], [ %.0.i164.i, %bb.ae ]
  %i.dn = load i32, ptr %i.co, align 4, !tbaa !47
  %i.do = shl nuw nsw i32 %.0.i.i166.i, 10
  %i.dp = and i32 %i.dn, -1073740801
  %i.dq = add nuw nsw i32 %i.dp, %i.do
  store i32 %i.dq, ptr %i.co, align 4, !tbaa !47
  %i.dr = load i32, ptr getelementptr inbounds nuw (i8, ptr @gc_globals, i64 28), align 4, !tbaa !29
  %i.ds = add i32 %i.dr, 1
  store i32 %i.ds, ptr getelementptr inbounds nuw (i8, ptr @gc_globals, i64 28), align 4, !tbaa !29
  br label %gc_extra_root.exit169.i

bb.ag:                                            ; preds = %bb.w
  %i.dt = and i32 %i.ck, 65536
  %.not152.i = icmp eq i32 %i.dt, 0
  br i1 %.not152.i, label %bb.ah, label %gc_extra_root.exit169.i

bb.ah:                                            ; preds = %bb.ag
  %i.du = icmp ult i32 %i.cp, 1073741824
  call void @llvm.assume(i1 %i.du)
  %i.dv = load ptr, ptr %i.ci, align 8, !tbaa !47 ; 4 uses
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !49
  %i.dx = add i32 %i.dw, 1
  store i32 %i.dx, ptr %i.dv, align 4, !tbaa !49
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dv, i64 4 ; 2 uses
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !47 ; 2 uses
  %i.ea = icmp ult i32 %i.dz, 1073741824
  br i1 %i.ea, label %gc_extra_root.exit169.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.eb = and i32 %i.dz, 1073741823
  store i32 %i.eb, ptr %i.dy, align 4, !tbaa !47
  %i.ec = icmp eq i64 %.4195288.i, 510
  br i1 %i.ec, label %bb.aj, label %gc_stack_push.exit159.i, !prof !43

bb.aj:                                            ; preds = %bb.ai
  %i.ed = call fastcc ptr @gc_stack_next(ptr noundef %.4203287.i)
  br label %gc_stack_push.exit159.i

gc_stack_push.exit159.i:                          ; preds = %bb.aj, %bb.ai
  %.18217.i = phi ptr [ %i.ed, %bb.aj ], [ %.4203287.i, %bb.ai ] ; 2 uses
  %.18.i = phi i64 [ 0, %bb.aj ], [ %.4195288.i, %bb.ai ] ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.18217.i, i64 16
  %i.ef = add i64 %.18.i, 1
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %.18.i
  store ptr %i.dv, ptr %i.eg, align 8, !tbaa !60
  br label %gc_extra_root.exit169.i

gc_extra_root.exit169.i:                          ; preds = %gc_stack_push.exit159.i, %bb.ah, %bb.ag, %gc_compress.exit.i165.i, %bb.ac, %bb.x, %.lr.ph291.i
  %.5204.i = phi ptr [ %.4203287.i, %.lr.ph291.i ], [ %.4203287.i, %bb.ag ], [ %.4203287.i, %bb.x ], [ %.4203287.i, %bb.ah ], [ %.18217.i, %gc_stack_push.exit159.i ], [ %.4203287.i, %bb.ac ], [ %.4203287.i, %gc_compress.exit.i165.i ] ; 2 uses
  %.5196.i = phi i64 [ %.4195288.i, %.lr.ph291.i ], [ %.4195288.i, %bb.ag ], [ %.4195288.i, %bb.x ], [ %.4195288.i, %bb.ah ], [ %i.ef, %gc_stack_push.exit159.i ], [ %.4195288.i, %bb.ac ], [ %.4195288.i, %gc_compress.exit.i165.i ] ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.1120289.i, i64 32
  %i.ei = add i32 %.1118290.i, -2                 ; 2 uses
  %.not149.i = icmp eq i32 %i.ei, 0
  br i1 %.not149.i, label %.loopexit.i, label %.lr.ph291.i, !llvm.loop !190

bb.ak:                                            ; preds = %.loopexit229.i
  %i.ej = call ptr %i.cc(ptr noundef nonnull %.0.i128, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #19, !inline_history !191 ; 6 uses
  %i.ek = load i32, ptr %i.b, align 4, !tbaa !42  ; 4 uses
  %i.el = load ptr, ptr %i.a, align 8, !tbaa !59  ; 3 uses
  %.not137.i = icmp eq ptr %i.ej, null
  br i1 %.not137.i, label %bb.ar, label %bb.al, !prof !32

bb.al:                                            ; preds = %bb.ak
  %i.em = load i32, ptr %i.ej, align 4, !tbaa !49
  %i.en = add i32 %i.em, 1
  store i32 %i.en, ptr %i.ej, align 4, !tbaa !49
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ej, i64 4 ; 2 uses
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !47 ; 2 uses
  %i.eq = icmp ult i32 %i.ep, 1073741824
  br i1 %i.eq, label %bb.ar, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.er = and i32 %i.ep, 1073741823
  store i32 %i.er, ptr %i.eo, align 4, !tbaa !47
  %.not138250.i = icmp eq i32 %i.ek, 0
  br i1 %.not138250.i, label %.loopexit228.i, label %.lr.ph255.i

.lr.ph255.i:                                      ; preds = %bb.am, %bb.aq
  %.2254.i = phi i32 [ %i.fi, %bb.aq ], [ %i.ek, %bb.am ]
  %.2121253.i = phi ptr [ %i.fh, %bb.aq ], [ %i.el, %bb.am ] ; 3 uses
  %.6197252.i = phi i64 [ %.7198.i, %bb.aq ], [ %.3194.i, %bb.am ] ; 4 uses
  %.6205251.i = phi ptr [ %.7206.i, %bb.aq ], [ %.3202.i, %bb.am ] ; 4 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.2121253.i, i64 9
  %i.et = load i8, ptr %i.es, align 1, !tbaa !47
  %i.eu = and i8 %i.et, 2
  %.not144.i = icmp eq i8 %i.eu, 0
  br i1 %.not144.i, label %bb.aq, label %bb.an

bb.an:                                            ; preds = %.lr.ph255.i
  %i.ev = load ptr, ptr %.2121253.i, align 8, !tbaa !47 ; 4 uses
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !49
  %i.ex = add i32 %i.ew, 1
  store i32 %i.ex, ptr %i.ev, align 4, !tbaa !49
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ev, i64 4 ; 2 uses
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !47 ; 2 uses
  %i.fa = icmp ult i32 %i.ez, 1073741824
  br i1 %i.fa, label %bb.aq, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fb = and i32 %i.ez, 1073741823
  store i32 %i.fb, ptr %i.ey, align 4, !tbaa !47
  %i.fc = icmp eq i64 %.6197252.i, 510
  br i1 %i.fc, label %bb.ap, label %gc_stack_push.exit158.i, !prof !43

bb.ap:                                            ; preds = %bb.ao
  %i.fd = call fastcc ptr @gc_stack_next(ptr noundef %.6205251.i)
  br label %gc_stack_push.exit158.i

gc_stack_push.exit158.i:                          ; preds = %bb.ap, %bb.ao
  %.17216.i = phi ptr [ %i.fd, %bb.ap ], [ %.6205251.i, %bb.ao ] ; 2 uses
  %.17.i = phi i64 [ 0, %bb.ap ], [ %.6197252.i, %bb.ao ] ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.17216.i, i64 16
  %i.ff = add i64 %.17.i, 1
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %.17.i
  store ptr %i.ev, ptr %i.fg, align 8, !tbaa !60
  br label %bb.aq

bb.aq:                                            ; preds = %gc_stack_push.exit158.i, %bb.an, %.lr.ph255.i
  %.7206.i = phi ptr [ %.6205251.i, %.lr.ph255.i ], [ %.6205251.i, %bb.an ], [ %.17216.i, %gc_stack_push.exit158.i ] ; 2 uses
  %.7198.i = phi i64 [ %.6197252.i, %.lr.ph255.i ], [ %.6197252.i, %bb.an ], [ %i.ff, %gc_stack_push.exit158.i ] ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %.2121253.i, i64 16
  %i.fi = add i32 %.2254.i, -1                    ; 2 uses
  %.not138.i = icmp eq i32 %i.fi, 0
  br i1 %.not138.i, label %.loopexit228.i, label %.lr.ph255.i, !llvm.loop !192

bb.ar:                                            ; preds = %.loopexit228.i, %bb.al, %bb.ak
  %.8207.i = phi ptr [ %.3202.i, %bb.ak ], [ %.3202.i, %bb.al ], [ %.11210.i, %.loopexit228.i ] ; 4 uses
  %.8.i = phi i64 [ %.3194.i, %bb.ak ], [ %.3194.i, %bb.al ], [ %.11.i, %.loopexit228.i ] ; 4 uses
  %.3122.i = phi ptr [ %i.el, %bb.ak ], [ %i.el, %bb.al ], [ %i.gs, %.loopexit228.i ]
  %.3.i = phi i32 [ %i.ek, %bb.ak ], [ %i.ek, %bb.al ], [ %i.gq, %.loopexit228.i ] ; 2 uses
  %.not145273.i = icmp eq i32 %.3.i, 0
  br i1 %.not145273.i, label %.loopexit.i, label %.lr.ph276.i

.lr.ph276.i:                                      ; preds = %bb.ar, %bb.ay
  %.4275.i = phi i32 [ %i.gn, %bb.ay ], [ %.3.i, %bb.ar ] ; 2 uses
  %.4123274.i = phi ptr [ %i.gm, %bb.ay ], [ %.3122.i, %bb.ar ] ; 4 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.4123274.i, i64 9
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !47
  %i.fl = and i8 %i.fk, 2
  %.not146.i = icmp eq i8 %i.fl, 0
  br i1 %.not146.i, label %bb.ay, label %bb.as

bb.as:                                            ; preds = %.lr.ph276.i
  %i.fm = load ptr, ptr %.4123274.i, align 8, !tbaa !47 ; 6 uses
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !49
  %i.fo = add i32 %i.fn, 1
  store i32 %i.fo, ptr %i.fm, align 4, !tbaa !49
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fm, i64 4
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !47 ; 2 uses
  %i.fr = icmp ult i32 %i.fq, 1073741824
  br i1 %i.fr, label %bb.ay, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fm, i64 4
  %i.ft = and i32 %i.fq, 1073741823
  store i32 %i.ft, ptr %i.fs, align 4, !tbaa !47
  %i.fu = add i32 %.4275.i, -1                    ; 2 uses
  %.not147278.i = icmp eq i32 %i.fu, 0
  br i1 %.not147278.i, label %.outer.i.backedge, label %.lr.ph283.i

end_hunk_3
