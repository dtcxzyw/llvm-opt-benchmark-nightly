Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/zend_gc?download=true
inline.NumInlined: 33
inline.NumDeleted: 18
begin_hunk_0_@gc_globals_dtor:bb.a
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
  %i.l = lshr i32 %i.k, 3
  store i32 %i.l, ptr getelementptr inbounds nuw (i8, ptr @gc_globals, i64 12), align 4, !tbaa !44
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.m = load i32, ptr getelementptr inbounds nuw (i8, ptr @gc_globals, i64 16), align 8, !tbaa !28 ; 5 uses
  %i.n = load i32, ptr getelementptr inbounds nuw (i8, ptr @gc_globals, i64 20), align 4, !tbaa !45
  %i.o = icmp ult i32 %i.m, %i.n
  br i1 %i.o, label %bb.e, label %bb.f, !prof !32

bb.e:                                             ; preds = %bb.d
  %i.p = load i32, ptr getelementptr inbounds nuw (i8, ptr @gc_globals, i64 24), align 8, !tbaa !46
  %i.q = icmp ne i32 %i.m, %i.p
  tail call void @llvm.assume(i1 %i.q)
  %i.r = add nuw i32 %i.m, 1
  store i32 %i.r, ptr getelementptr inbounds nuw (i8, ptr @gc_globals, i64 16), align 8, !tbaa !28
  %.pre = load ptr, ptr @gc_globals, align 8, !tbaa !23
  %.pre7 = zext i32 %i.m to i64
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  tail call fastcc void @gc_possible_root_when_full(ptr noundef %0)
  br label %bb.i

bb.g:                                             ; preds = %bb.e, %bb.c
  %.pre-phi = phi i64 [ %.pre7, %bb.e ], [ %i.e, %bb.c ]
  %i.s = phi ptr [ %.pre, %bb.e ], [ %i.d, %bb.c ]
  %.0 = phi i32 [ %i.m, %bb.e ], [ %i.c, %bb.c ]  ; 3 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.pre-phi
  store ptr %0, ptr %i.t, align 8, !tbaa !41
  %i.u = icmp ult i32 %.0, 524288
  br i1 %i.u, label %gc_compress.exit, label %bb.h, !prof !32

bb.h:                                             ; preds = %bb.g
  %i.v = and i32 %.0, 524287
  %i.w = or disjoint i32 %i.v, 524288
  br label %gc_compress.exit

gc_compress.exit:                                 ; preds = %bb.g, %bb.h
  %.0.i = phi i32 [ %i.w, %bb.h ], [ %.0, %bb.g ]
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !47
  %i.z = and i32 %i.y, 1023
  %i.aa = shl nuw nsw i32 %.0.i, 10
  %1 = or disjoint i32 %i.z, %i.aa
  %2 = add nuw nsw i32 %1, -1073741824
  store i32 %2, ptr %i.x, align 4, !tbaa !47
  %i.ab = load i32, ptr getelementptr inbounds nuw (i8, ptr @gc_globals, i64 28), align 4, !tbaa !29
  %i.ac = add i32 %i.ab, 1
  store i32 %i.ac, ptr getelementptr inbounds nuw (i8, ptr @gc_globals, i64 28), align 4, !tbaa !29
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
  %i.ap = lshr i32 %i.ao, 3
  store i32 %i.ap, ptr getelementptr inbounds nuw (i8, ptr @gc_globals, i64 12), align 4, !tbaa !44
  br label %bb.q

bb.m:                                             ; preds = %bb.k
  %i.aq = load i32, ptr getelementptr inbounds nuw (i8, ptr @gc_globals, i64 16), align 8, !tbaa !28 ; 3 uses
  %i.ar = load i32, ptr getelementptr inbounds nuw (i8, ptr @gc_globals, i64 24), align 8, !tbaa !46
  %.not13 = icmp eq i32 %i.aq, %i.ar
  br i1 %.not13, label %bb.o, label %bb.n, !prof !43

bb.n:                                             ; preds = %bb.m
  %i.as = add i32 %i.aq, 1
  store i32 %i.as, ptr getelementptr inbounds nuw (i8, ptr @gc_globals, i64 16), align 8, !tbaa !28
  br label %bb.q

bb.o:                                             ; preds = %bb.m
  tail call fastcc void @gc_grow_root_buffer()
  %i.at = load i32, ptr getelementptr inbounds nuw (i8, ptr @gc_globals, i64 16), align 8, !tbaa !28 ; 3 uses
  %i.au = load i32, ptr getelementptr inbounds nuw (i8, ptr @gc_globals, i64 24), align 8, !tbaa !46
  %.not14 = icmp eq i32 %i.at, %i.au
  br i1 %.not14, label %bb.s, label %bb.p, !prof !43

bb.p:                                             ; preds = %bb.o
  %i.av = add i32 %i.at, 1
  store i32 %i.av, ptr getelementptr inbounds nuw (i8, ptr @gc_globals, i64 16), align 8, !tbaa !28
  br label %bb.q

bb.q:                                             ; preds = %bb.n, %bb.p, %bb.l
  %.0 = phi i32 [ %i.ag, %bb.l ], [ %i.aq, %bb.n ], [ %i.at, %bb.p ] ; 4 uses
  %i.aw = load ptr, ptr @gc_globals, align 8, !tbaa !23
  %i.ax = zext i32 %.0 to i64
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.ax
  store ptr %0, ptr %i.ay, align 8, !tbaa !41
  %i.az = icmp ult i32 %.0, 524288
  br i1 %i.az, label %gc_compress.exit, label %bb.r, !prof !32

bb.r:                                             ; preds = %bb.q
  %i.ba = and i32 %.0, 524287
  %i.bb = or disjoint i32 %i.ba, 524288
  br label %gc_compress.exit

gc_compress.exit:                                 ; preds = %bb.q, %bb.r
  %.0.i = phi i32 [ %i.bb, %bb.r ], [ %.0, %bb.q ]
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !47
  %i.be = and i32 %i.bd, 1023
  %i.bf = shl nuw nsw i32 %.0.i, 10
  %1 = or disjoint i32 %i.be, %i.bf
  %2 = add nuw nsw i32 %1, -1073741824
  store i32 %2, ptr %i.bc, align 4, !tbaa !47
  %i.bg = load i32, ptr getelementptr inbounds nuw (i8, ptr @gc_globals, i64 28), align 4, !tbaa !29
  %i.bh = add i32 %i.bg, 1
  store i32 %i.bh, ptr getelementptr inbounds nuw (i8, ptr @gc_globals, i64 28), align 4, !tbaa !29
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
  %.02841.i = phi ptr [ %.028.i, %gc_remove_from_buffer.exit.i ], [ %.02839.i, %zend_hrtime.exit128 ] ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.02841.i, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !147  ; 5 uses
  %.not31.i = icmp eq ptr %i.q, null
  br i1 %.not31.i, label %gc_remove_from_buffer.exit.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph42.i
  %i.r = load i8, ptr %i.q, align 8, !tbaa !47
  %.not32.i = icmp eq i8 %i.r, 1
  br i1 %.not32.i, label %gc_remove_from_buffer.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = load ptr, ptr %.02841.i, align 8, !tbaa !148
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 104
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !47
  %i.v = ptrtoint ptr %i.s to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = lshr exact i64 %i.x, 5
  %i.z = trunc i64 %i.y to i32                    ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 152
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 144 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !47
  %.not43.i = icmp eq i32 %i.ac, 0
  br i1 %.not43.i, label %gc_remove_from_buffer.exit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %bb.l
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.l ], [ 0, %bb.d ] ; 2 uses
  %i.ad = load ptr, ptr %i.aa, align 8, !tbaa !47
  %i.ae = getelementptr inbounds nuw [12 x i8], ptr %i.ad, i64 %indvars.iv.i ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !150
  %i.ah = icmp ugt i32 %i.ag, %i.z
  br i1 %i.ah, label %gc_remove_from_buffer.exit.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !151
  %.not33.i = icmp ugt i32 %i.aj, %i.z
  br i1 %.not33.i, label %bb.f, label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.ak = load i32, ptr %i.ae, align 4, !tbaa !152 ; 2 uses
  %i.al = and i32 %i.ak, 6
  %or.cond.i = icmp eq i32 %i.al, 0
  br i1 %or.cond.i, label %bb.g, label %bb.l

end_hunk_0
