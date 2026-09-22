Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/picture?download=true
inline.NumInlined: 17
inline.NumDeleted: 2
begin_hunk_0_@dav1d_thread_picture_alloc:bb.a

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2147483648, 1) i32 @picture_alloc(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, i32 noundef %8, ptr nofree noundef readonly captures(none) %9, ptr nofree noundef writeonly captures(address_is_null) %10) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, ...) @dav1d_log(ptr noundef %0, ptr noundef nonnull @.str) #10
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.c = add i32 %8, -1
  %or.cond = icmp ult i32 %i.c, 16
  tail call void @llvm.assume(i1 %or.cond)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !55
  %i.f = icmp ugt i32 %i.e, 1                     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 62992 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 16, !tbaa !141
  %i.i = select i1 %i.f, i64 344, i64 336
  %i.j = tail call ptr @dav1d_mem_pool_pop(ptr noundef %i.h, i64 noundef %i.i) #10 ; 12 uses
  %.not56 = icmp eq ptr %i.j, null
  br i1 %.not56, label %bb.l, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i32 %2, ptr %i.k, align 8, !tbaa !23
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 60
  store i32 %3, ptr %i.l, align 4, !tbaa !24
  store ptr %4, ptr %1, align 8, !tbaa !58
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %6, ptr %i.m, align 8, !tbaa !59
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.o = load i32, ptr %i.n, align 4, !tbaa !143
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 64
  store i32 %i.o, ptr %i.p, align 8, !tbaa !25
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 68
  store i32 %8, ptr %i.q, align 4, !tbaa !22
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 72
  tail call void @dav1d_data_props_set_defaults(ptr noundef nonnull %i.r) #10
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !144
  %i.u = load ptr, ptr %9, align 8, !tbaa !60
  %i.v = tail call i32 %i.t(ptr noundef nonnull %1, ptr noundef %i.u) #10 ; 2 uses
  %i.w = icmp slt i32 %i.v, 0
  br i1 %i.w, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.x = load ptr, ptr %i.g, align 16, !tbaa !141
  tail call void @dav1d_mem_pool_push(ptr noundef %i.x, ptr noundef nonnull %i.j) #10
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %9, i64 24, i1 false), !tbaa.struct !145
  %i.y = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %i.y, ptr noundef nonnull align 8 dereferenceable(272) %1, i64 272, i1 false), !tbaa.struct !68
  %i.z = getelementptr inbounds nuw i8, ptr %i.j, i64 296 ; 2 uses
  %i.aa = load ptr, ptr %i.g, align 16, !tbaa !141
  store ptr null, ptr %i.z, align 8, !tbaa !146
  %i.ab = getelementptr inbounds nuw i8, ptr %i.j, i64 304
  store ptr %i.j, ptr %i.ab, align 8, !tbaa !69
  %i.ac = getelementptr inbounds nuw i8, ptr %i.j, i64 312
  store i32 1, ptr %i.ac, align 8, !tbaa !57
  %i.ad = getelementptr inbounds nuw i8, ptr %i.j, i64 316
  store i32 0, ptr %i.ad, align 4, !tbaa !147
  %i.ae = getelementptr inbounds nuw i8, ptr %i.j, i64 320
  store ptr @free_buffer, ptr %i.ae, align 8, !tbaa !148
  %i.af = getelementptr inbounds nuw i8, ptr %i.j, i64 328
  store ptr %i.aa, ptr %i.af, align 8, !tbaa !149
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 256
  store ptr %i.z, ptr %i.ag, align 8, !tbaa !70
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 192
  store ptr %5, ptr %i.ah, align 8, !tbaa !71
  %.not57 = icmp eq ptr %5, null
  br i1 %.not57, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.aj = atomicrmw add ptr %i.ai, i32 1 monotonic, align 8 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 184
  store ptr %7, ptr %i.ak, align 8, !tbaa !72
  %.not58 = icmp eq ptr %7, null
  br i1 %.not58, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.am = atomicrmw add ptr %i.al, i32 1 monotonic, align 8 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.an = icmp ne ptr %10, null
  %or.cond3 = and i1 %i.an, %i.f
  br i1 %or.cond3, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %i.j, i64 336
  store ptr %i.ao, ptr %10, align 8, !tbaa !28
  br label %bb.l

bb.l:                                             ; preds = %bb.c, %bb.j, %bb.k, %bb.e, %bb.b
  %.2 = phi i32 [ -1, %bb.b ], [ -12, %bb.c ], [ %i.v, %bb.e ], [ 0, %bb.k ], [ 0, %bb.j ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2147483648, 1) i32 @dav1d_picture_alloc_copy(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 256
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !70
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !69
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 60
  %i.f = load i32, ptr %i.e, align 4, !tbaa !24
  %i.g = load ptr, ptr %3, align 8, !tbaa !58
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 192
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !71
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !59
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 184
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !72
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 68
  %i.o = load i32, ptr %i.n, align 4, !tbaa !22
  %i.p = tail call fastcc i32 @picture_alloc(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %i.f, ptr noundef %i.g, ptr noundef %i.i, ptr noundef %i.k, ptr noundef %i.m, i32 noundef %i.o, ptr noundef %i.d, ptr noundef null) ; 2 uses
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %bb.b, label %dav1d_picture_copy_props.exit

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !31
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 200
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !30   ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !33
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 208
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !32   ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 136
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !35
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 216
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !34 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 144
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !36
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 72
  tail call void @dav1d_data_props_copy(ptr noundef nonnull %i.af, ptr noundef nonnull %i.q) #10
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  tail call void @dav1d_ref_dec(ptr noundef nonnull %i.ag) #10
  store ptr %i.u, ptr %i.ag, align 8, !tbaa !30
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 120
  store ptr %i.s, ptr %i.ah, align 8, !tbaa !31
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ai = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.aj = atomicrmw add ptr %i.ai, i32 1 monotonic, align 8 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 2 uses
  tail call void @dav1d_ref_dec(ptr noundef nonnull %i.ak) #10
  store ptr %i.y, ptr %i.ak, align 8, !tbaa !32
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 128
  store ptr %i.w, ptr %i.al, align 8, !tbaa !33
  %.not26.i = icmp eq ptr %i.y, null
  br i1 %.not26.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.am = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.an = atomicrmw add ptr %i.am, i32 1 monotonic, align 8 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 2 uses
  tail call void @dav1d_ref_dec(ptr noundef nonnull %i.ao) #10
  store ptr %i.ac, ptr %i.ao, align 8, !tbaa !34
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 136
  store ptr %i.aa, ptr %i.ap, align 8, !tbaa !35
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 144
  store i64 %i.ae, ptr %i.aq, align 8, !tbaa !36
  %.not27.i = icmp eq ptr %i.ac, null
  br i1 %.not27.i, label %dav1d_picture_copy_props.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.as = atomicrmw add ptr %i.ar, i32 1 monotonic, align 8 ; 0 uses
  br label %dav1d_picture_copy_props.exit

dav1d_picture_copy_props.exit:                    ; preds = %bb.g, %bb.f, %bb.a
  ret i32 %i.p
}

; Function Attrs: mustprogress norecurse nounwind willreturn memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define dso_local void @dav1d_picture_ref(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #4 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !70   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = atomicrmw add ptr %i.c, i32 1 monotonic, align 8 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !72   ; 2 uses
  %.not26 = icmp eq ptr %i.f, null
  br i1 %.not26, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = atomicrmw add ptr %i.g, i32 1 monotonic, align 8 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !71   ; 2 uses
  %.not27 = icmp eq ptr %i.j, null
  br i1 %.not27, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = atomicrmw add ptr %i.k, i32 1 monotonic, align 8 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !73   ; 2 uses
  %.not28 = icmp eq ptr %i.n, null
  br i1 %.not28, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = atomicrmw add ptr %i.o, i32 1 monotonic, align 8 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !30   ; 2 uses
  %.not29 = icmp eq ptr %i.r, null
  br i1 %.not29, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = atomicrmw add ptr %i.s, i32 1 monotonic, align 8 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !32   ; 2 uses
  %.not30 = icmp eq ptr %i.v, null
  br i1 %.not30, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = atomicrmw add ptr %i.w, i32 1 monotonic, align 8 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !34   ; 2 uses
  %.not31 = icmp eq ptr %i.z, null
  br i1 %.not31, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = atomicrmw add ptr %i.aa, i32 1 monotonic, align 8 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr noundef nonnull align 8 dereferenceable(272) %1, i64 272, i1 false), !tbaa.struct !68
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: write) uwtable
define dso_local void @dav1d_picture_move_ref(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #6 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr noundef nonnull align 8 dereferenceable(272) %1, i64 272, i1 false), !tbaa.struct !68
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %1, i8 0, i64 272, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: mustprogress norecurse nounwind willreturn memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define dso_local void @dav1d_thread_picture_ref(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #4 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !70   ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = atomicrmw add ptr %i.c, i32 1 monotonic, align 8 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !72   ; 2 uses
  %.not26.i = icmp eq ptr %i.f, null
  br i1 %.not26.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = atomicrmw add ptr %i.g, i32 1 monotonic, align 8 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !71   ; 2 uses
  %.not27.i = icmp eq ptr %i.j, null
  br i1 %.not27.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = atomicrmw add ptr %i.k, i32 1 monotonic, align 8 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !73   ; 2 uses
  %.not28.i = icmp eq ptr %i.n, null
  br i1 %.not28.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = atomicrmw add ptr %i.o, i32 1 monotonic, align 8 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !30   ; 2 uses
  %.not29.i = icmp eq ptr %i.r, null
  br i1 %.not29.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = atomicrmw add ptr %i.s, i32 1 monotonic, align 8 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !32   ; 2 uses
  %.not30.i = icmp eq ptr %i.v, null
  br i1 %.not30.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = atomicrmw add ptr %i.w, i32 1 monotonic, align 8 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !34   ; 2 uses
  %.not31.i = icmp eq ptr %i.z, null
  br i1 %.not31.i, label %dav1d_picture_ref.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = atomicrmw add ptr %i.aa, i32 1 monotonic, align 8 ; 0 uses
  br label %dav1d_picture_ref.exit

dav1d_picture_ref.exit:                           ; preds = %bb.m, %bb.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr noundef nonnull readonly align 8 dereferenceable(272) %1, i64 272, i1 false), !tbaa.struct !68
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.ae = load <2 x i32>, ptr %i.ac, align 8, !tbaa !39
  store <2 x i32> %i.ae, ptr %i.ad, align 8, !tbaa !39
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !56
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 288
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !56
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !54
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 280
  store i32 %i.aj, ptr %i.ak, align 8, !tbaa !54
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: write) uwtable
define dso_local void @dav1d_thread_picture_move_ref(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #6 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr noundef nonnull align 8 dereferenceable(272) %1, i64 272, i1 false), !tbaa.struct !68
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %1, i8 0, i64 272, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.c = load <2 x i32>, ptr %i.a, align 8, !tbaa !39
  store <2 x i32> %i.c, ptr %i.b, align 8, !tbaa !39
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !56
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 288
  store ptr %i.e, ptr %i.f, align 8, !tbaa !56
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.h = load i32, ptr %i.g, align 8, !tbaa !54
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 280
  store i32 %i.h, ptr %i.i, align 8, !tbaa !54
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(296) %1, i8 0, i64 296, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @dav1d_picture_unref_internal(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !70
  %.not12 = icmp eq ptr %i.b, null
  br i1 %.not12, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !28
  %.not13 = icmp eq ptr %i.d, null
  br i1 %.not13, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @dav1d_ref_dec(ptr noundef nonnull %i.a) #10
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 192
  tail call void @dav1d_ref_dec(ptr noundef nonnull %i.e) #10
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 184
  tail call void @dav1d_ref_dec(ptr noundef nonnull %i.f) #10
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @dav1d_ref_dec(ptr noundef nonnull %i.h) #10
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 200
  tail call void @dav1d_ref_dec(ptr noundef nonnull %i.i) #10
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 208
  tail call void @dav1d_ref_dec(ptr noundef nonnull %i.j) #10
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 216
  tail call void @dav1d_ref_dec(ptr noundef nonnull %i.k) #10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %0, i8 0, i64 272, i1 false)
  tail call void @dav1d_data_props_set_defaults(ptr noundef nonnull %i.g) #10
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.a, %bb.e
  ret void
}

declare void @dav1d_data_props_set_defaults(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @dav1d_thread_picture_unref(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @dav1d_picture_unref_internal(ptr noundef %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 288
  store ptr null, ptr %i.a, align 8, !tbaa !56
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i32 0, 4) i32 @dav1d_picture_get_event_flags(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.b = load i32, ptr %i.a, align 8, !tbaa !54
  %.1 = and i32 %i.b, 3
  ret i32 %.1
}

declare void @dav1d_log(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @free_buffer(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !150
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %0, align 8, !tbaa !60
  tail call void %i.b(ptr noundef nonnull %i.c, ptr noundef %i.d) #10
  tail call void @dav1d_mem_pool_push(ptr noundef %1, ptr noundef nonnull %0) #10
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress norecurse nounwind willreturn memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS19Dav1dSequenceHeader", !9, i64 0}
!11 = !{!"p1 _ZTS16Dav1dFrameHeader", !9, i64 0}
!12 = !{!"Dav1dPictureParameters", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12}
!13 = !{!"long", !5, i64 0}
!14 = !{!"p1 omnipotent char", !9, i64 0}
!15 = !{!"p1 _ZTS8Dav1dRef", !9, i64 0}
!16 = !{!"Dav1dUserData", !14, i64 0, !15, i64 8}
!17 = !{!"Dav1dDataProps", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !16, i64 32}
!18 = !{!"p1 _ZTS22Dav1dContentLightLevel", !9, i64 0}
!19 = !{!"p1 _ZTS21Dav1dMasteringDisplay", !9, i64 0}
!20 = !{!"p1 _ZTS12Dav1dITUTT35", !9, i64 0}
!21 = !{!"Dav1dPicture", !10, i64 0, !11, i64 8, !5, i64 16, !5, i64 40, !12, i64 56, !17, i64 72, !18, i64 120, !19, i64 128, !20, i64 136, !13, i64 144, !5, i64 152, !15, i64 184, !15, i64 192, !15, i64 200, !15, i64 208, !15, i64 216, !5, i64 224, !15, i64 256, !9, i64 264}
!22 = !{!21, !6, i64 68}
!23 = !{!21, !6, i64 56}
!24 = !{!21, !6, i64 60}
!25 = !{!21, !6, i64 64}
!26 = !{!13, !13, i64 0}
!27 = !{!21, !9, i64 264}
!28 = !{!9, !9, i64 0}
!29 = !{!"Dav1dRef", !9, i64 0, !9, i64 8, !5, i64 16, !6, i64 20, !9, i64 24, !9, i64 32}
!30 = !{!21, !15, i64 200}
!31 = !{!21, !18, i64 120}
!32 = !{!21, !15, i64 208}
!33 = !{!21, !19, i64 128}
!34 = !{!21, !15, i64 216}
!35 = !{!21, !20, i64 136}
!36 = !{!21, !13, i64 144}
!37 = !{!"Dav1dThreadPicture", !21, i64 0, !6, i64 272, !6, i64 276, !6, i64 280, !9, i64 288}
!38 = !{!"p1 _ZTS14Dav1dTileGroup", !9, i64 0}
!39 = !{!6, !6, i64 0}
!40 = !{!"p1 _ZTS17Dav1dFrameContext", !9, i64 0}
!41 = !{!"p1 _ZTS16Dav1dTaskContext", !9, i64 0}
!42 = !{!"p1 _ZTS12Dav1dMemPool", !9, i64 0}
!43 = !{!"Dav1dData", !14, i64 0, !13, i64 8, !15, i64 16, !17, i64 24}
!44 = !{!"p1 _ZTS18Dav1dThreadPicture", !9, i64 0}
!45 = !{!"", !44, i64 0, !6, i64 8}
!46 = !{!"p1 _ZTS12Dav1dPicture", !9, i64 0}
!47 = !{!"", !6, i64 0, !6, i64 4, !5, i64 8, !46, i64 56, !46, i64 64, !6, i64 72, !5, i64 76, !5, i64 128}
!48 = !{!"TaskThreadData", !5, i64 0, !5, i64 40, !5, i64 88, !6, i64 92, !5, i64 96, !5, i64 100, !47, i64 128, !6, i64 48960}
!49 = !{!"Dav1dPalDSPContext", !9, i64 0}
!50 = !{!"Dav1dRefmvsDSPContext", !9, i64 0, !9, i64 8, !9, i64 16}
!51 = !{!"Dav1dPicAllocator", !9, i64 0, !9, i64 8, !9, i64 16}
!52 = !{!"Dav1dLogger", !9, i64 0, !9, i64 8}
!53 = !{!"Dav1dContext", !40, i64 0, !6, i64 8, !41, i64 16, !6, i64 24, !38, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !42, i64 56, !15, i64 64, !10, i64 72, !42, i64 80, !15, i64 88, !11, i64 96, !15, i64 104, !18, i64 112, !15, i64 120, !19, i64 128, !15, i64 136, !20, i64 144, !6, i64 152, !43, i64 160, !37, i64 232, !37, i64 528, !5, i64 824, !9, i64 832, !45, i64 840, !48, i64 896, !42, i64 49920, !42, i64 49928, !5, i64 49936, !42, i64 52496, !5, i64 52504, !5, i64 52696, !49, i64 62800, !50, i64 62808, !51, i64 62832, !6, i64 62856, !6, i64 62860, !6, i64 62864, !6, i64 62868, !6, i64 62872, !6, i64 62876, !6, i64 62880, !6, i64 62884, !6, i64 62888, !6, i64 62892, !6, i64 62896, !6, i64 62900, !6, i64 62904, !17, i64 62912, !6, i64 62960, !52, i64 62968, !42, i64 62984, !42, i64 62992}
!54 = !{!37, !6, i64 280}
!55 = !{!53, !6, i64 8}
!56 = !{!37, !9, i64 288}
!57 = !{!5, !5, i64 0}
!58 = !{!21, !10, i64 0}
!59 = !{!21, !11, i64 8}
!60 = !{!51, !9, i64 0}
!61 = !{!10, !10, i64 0}
!62 = !{!11, !11, i64 0}
!63 = !{!14, !14, i64 0}
!64 = !{!15, !15, i64 0}
!65 = !{!18, !18, i64 0}
!66 = !{!19, !19, i64 0}
!67 = !{!20, !20, i64 0}
!68 = !{i64 0, i64 8, !61, i64 8, i64 8, !62, i64 16, i64 24, !57, i64 40, i64 16, !57, i64 56, i64 4, !39, i64 60, i64 4, !39, i64 64, i64 4, !39, i64 68, i64 4, !39, i64 72, i64 8, !26, i64 80, i64 8, !26, i64 88, i64 8, !26, i64 96, i64 8, !26, i64 104, i64 8, !63, i64 112, i64 8, !64, i64 120, i64 8, !65, i64 128, i64 8, !66, i64 136, i64 8, !67, i64 144, i64 8, !26, i64 152, i64 32, !57, i64 184, i64 8, !64, i64 192, i64 8, !64, i64 200, i64 8, !64, i64 208, i64 8, !64, i64 216, i64 8, !64, i64 224, i64 32, !57, i64 256, i64 8, !64, i64 264, i64 8, !28}
!69 = !{!29, !9, i64 8}
!70 = !{!21, !15, i64 256}
!71 = !{!21, !15, i64 192}
!72 = !{!21, !15, i64 184}
!73 = !{!21, !15, i64 112}
!74 = !{!"itut_t35_ctx_context", !20, i64 0, !13, i64 8, !29, i64 16}
!75 = !{!74, !13, i64 8}
!76 = !{!74, !20, i64 0}
!77 = !{!"Dav1dITUTT35", !5, i64 0, !5, i64 1, !13, i64 8, !14, i64 16}
!78 = !{!77, !14, i64 16}
!79 = !{!"p1 _ZTS21refmvs_temporal_block", !9, i64 0}
!80 = !{!"CdfThreadContext", !15, i64 0, !5, i64 8, !9, i64 16}
!81 = !{!"p1 _ZTS12Dav1dContext", !9, i64 0}
!82 = !{!"p1 _ZTS14Dav1dTileState", !9, i64 0}
!83 = !{!"p1 _ZTS15Dav1dDSPContext", !9, i64 0}
!84 = !{!"", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !9, i64 88, !9, i64 96, !9, i64 104}
end_hunk_0
