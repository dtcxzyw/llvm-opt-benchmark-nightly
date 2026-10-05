Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/phar?download=true
inline.NumInlined: 32
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@phar_archive_delref:bb.a
  ret i1 %.1
}

declare i32 @zend_hash_str_del(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden void @destroy_phar_manifest_entry_int(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct._zval_struct, align 8       ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !89   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @_php_stream_free(ptr noundef nonnull %i.b, i32 noundef 3) #23 ; 0 uses
  store ptr null, ptr %i.a, align 8, !tbaa !89
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !90   ; 2 uses
  %.not23 = icmp eq ptr %i.e, null
  br i1 %.not23, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call i32 @_php_stream_free(ptr noundef nonnull %i.e, i32 noundef 3) #23 ; 0 uses
  store ptr null, ptr %i.d, align 8, !tbaa !90
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 146 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !76   ; 6 uses
  %.not.i28 = icmp eq ptr %i.j, null
  br i1 %.not.i28, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !29   ; 2 uses
  %i.m = and i32 %i.l, 64
  %.not.i.i = icmp eq i32 %i.m, 0
  br i1 %.not.i.i, label %bb.g, label %zend_string_release.exit.i

bb.g:                                             ; preds = %bb.f
  %i.n = load i32, ptr %i.j, align 4, !tbaa !77   ; 2 uses
  %i.o = icmp ne i32 %i.n, 0
  tail call void @llvm.assume(i1 %i.o)
  %i.p = add i32 %i.n, -1                         ; 2 uses
  store i32 %i.p, ptr %i.j, align 4, !tbaa !77
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.h, label %zend_string_release.exit.i

bb.h:                                             ; preds = %bb.g
  %i.r = and i32 %i.l, 128
  %.not5.i.i = icmp eq i32 %i.r, 0
  br i1 %.not5.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @free(ptr noundef nonnull %i.j) #23
  br label %zend_string_release.exit.i

bb.j:                                             ; preds = %bb.h
  tail call void @_efree(ptr noundef nonnull %i.j) #23
  br label %zend_string_release.exit.i

zend_string_release.exit.i:                       ; preds = %bb.j, %bb.i, %bb.g, %bb.f
  store ptr null, ptr %i.i, align 8, !tbaa !76
  br label %bb.k

bb.k:                                             ; preds = %zend_string_release.exit.i, %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.t = load i8, ptr %i.s, align 8, !tbaa !29
  %i.u = icmp eq i8 %i.t, 0
  br i1 %i.u, label %phar_metadata_tracker_free.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  %i.v = load ptr, ptr %i.g, align 8, !tbaa !29
  %i.w = load i32, ptr %i.s, align 8, !tbaa !29
  store ptr %i.v, ptr %1, align 8, !tbaa !29
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.w, ptr %i.x, align 8, !tbaa !29
  store i32 0, ptr %i.s, align 8, !tbaa !29
  call void @zval_ptr_dtor(ptr noundef nonnull %1) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br label %phar_metadata_tracker_free.exit

phar_metadata_tracker_free.exit:                  ; preds = %bb.k, %bb.l
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !91   ; 5 uses
  %i.aa = load i16, ptr %i.h, align 2
  %i.ab = and i16 %i.aa, 256
  %.not30 = icmp eq i16 %i.ab, 0
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !29
  %i.ae = and i32 %i.ad, 64
  %.not.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i, label %bb.m, label %zend_string_release_ex.exit

bb.m:                                             ; preds = %phar_metadata_tracker_free.exit
  %i.af = load i32, ptr %i.z, align 4, !tbaa !77  ; 2 uses
  %i.ag = icmp ne i32 %i.af, 0
  call void @llvm.assume(i1 %i.ag)
  %i.ah = add i32 %i.af, -1                       ; 2 uses
  store i32 %i.ah, ptr %i.z, align 4, !tbaa !77
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %bb.n, label %zend_string_release_ex.exit

bb.n:                                             ; preds = %bb.m
  br i1 %.not30, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @free(ptr noundef nonnull %i.z) #23
  br label %zend_string_release_ex.exit

bb.p:                                             ; preds = %bb.n
  call void @_efree(ptr noundef nonnull %i.z) #23
  br label %zend_string_release_ex.exit

zend_string_release_ex.exit:                      ; preds = %phar_metadata_tracker_free.exit, %bb.m, %bb.o, %bb.p
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !144 ; 3 uses
  %.not24 = icmp eq ptr %i.ak, null
  br i1 %.not24, label %bb.u, label %bb.q

bb.q:                                             ; preds = %zend_string_release_ex.exit
  %i.al = load i16, ptr %i.h, align 2
  %i.am = and i16 %i.al, 256
  %.not25 = icmp eq i16 %i.am, 0
  br i1 %.not25, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @free(ptr noundef nonnull %i.ak) #23
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  call void @_efree(ptr noundef nonnull %i.ak) #23
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  store ptr null, ptr %i.aj, align 8, !tbaa !144
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %zend_string_release_ex.exit
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !145 ; 3 uses
  %.not26 = icmp eq ptr %i.ao, null
  br i1 %.not26, label %bb.z, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ap = load i16, ptr %i.h, align 2
  %i.aq = and i16 %i.ap, 256
  %.not27 = icmp eq i16 %i.aq, 0
  br i1 %.not27, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @free(ptr noundef nonnull %i.ao) #23
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  call void @_efree(ptr noundef nonnull %i.ao) #23
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  store ptr null, ptr %i.an, align 8, !tbaa !145
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.u
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @destroy_phar_manifest_entry(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !29     ; 4 uses
  tail call void @destroy_phar_manifest_entry_int(ptr noundef %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 146
  %i.c = load i16, ptr %i.b, align 2
  %i.d = and i16 %i.c, 256
  %.not = icmp eq i16 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef nonnull %i.a) #23
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_efree(ptr noundef nonnull %i.a) #23
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @phar_entry_delref(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !94   ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 146
  %i.d = load i16, ptr %i.c, align 2
  %i.e = and i16 %i.d, 256
  %.not18 = icmp eq i16 %i.e, 0
  br i1 %.not18, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 104 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !95
  %i.h = tail call i32 @llvm.smax.i32(i32 %i.g, i32 1)
  %spec.store.select = add nsw i32 %i.h, -1
  store i32 %spec.store.select, ptr %i.f, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !96   ; 5 uses
  %.not19 = icmp eq ptr %i.j, null
  br i1 %.not19, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %0, align 8, !tbaa !97     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 248
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !68
  %.not20 = icmp eq ptr %i.j, %i.m
  br i1 %.not20, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 256
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !78
  %.not21 = icmp eq ptr %i.j, %i.o
  br i1 %.not21, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !90
  %.not22 = icmp eq ptr %i.j, %i.q
  br i1 %.not22, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = tail call i32 @_php_stream_free(ptr noundef nonnull %i.j, i32 noundef 3) #23 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %1 = load ptr, ptr %i.a, align 8, !tbaa !94     ; 2 uses
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 146
  %3 = load i16, ptr %2, align 2
  %i.s = and i16 %3, 32
  %.not23 = icmp eq i16 %i.s, 0
  br i1 %.not23, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @destroy_phar_manifest_entry_int(ptr noundef nonnull %1)
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !94
  tail call void @_efree(ptr noundef %i.t) #23
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.b, %bb.a
  %i.u = load ptr, ptr %0, align 8, !tbaa !97
  %i.v = tail call zeroext i1 @phar_archive_delref(ptr noundef %i.u) ; 0 uses
  tail call void @_efree(ptr noundef nonnull %0) #23
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @phar_entry_remove(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !97     ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !94   ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.e = load i32, ptr %i.d, align 8, !tbaa !95
  %i.f = icmp slt i32 %i.e, 2
  br i1 %i.f, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 108
  %i.h = load i32, ptr %i.g, align 4, !tbaa !98
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !96   ; 5 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 248
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !68
  %.not20 = icmp eq ptr %i.k, %i.m
  br i1 %.not20, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !78
  %.not21 = icmp eq ptr %i.k, %i.o
  br i1 %.not21, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !90
  %.not22 = icmp eq ptr %i.k, %i.q
  br i1 %.not22, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = tail call i32 @_php_stream_free(ptr noundef nonnull %i.k, i32 noundef 3) #23 ; 0 uses
  %.pre = load ptr, ptr %0, align 8, !tbaa !97
  %.pre24 = load ptr, ptr %i.b, align 8, !tbaa !94
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %i.s = phi ptr [ %.pre24, %bb.g ], [ %i.c, %bb.f ], [ %i.c, %bb.e ], [ %i.c, %bb.d ], [ %i.c, %bb.c ]
  %i.t = phi ptr [ %.pre, %bb.g ], [ %i.a, %bb.f ], [ %i.a, %bb.e ], [ %i.a, %bb.d ], [ %i.a, %bb.c ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 64
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !91
  %i.x = tail call i32 @zend_hash_del(ptr noundef nonnull %i.u, ptr noundef %i.w) #23 ; 0 uses
  %i.y = load ptr, ptr %0, align 8, !tbaa !97
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 264 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !79
  %i.ab = add nsw i32 %i.aa, -1
  store i32 %i.ab, ptr %i.z, align 8, !tbaa !79
  tail call void @_efree(ptr noundef nonnull %0) #23
  br label %bb.j

bb.i:                                             ; preds = %bb.b, %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 146 ; 2 uses
  %i.ad = load i16, ptr %i.ac, align 2
  %i.ae = or i16 %i.ad, 4
  store i16 %i.ae, ptr %i.ac, align 2
  tail call void @phar_entry_delref(ptr noundef nonnull %0)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 316
  %i.ag = load i16, ptr %i.af, align 4
  %i.ah = and i16 %i.ag, 16
  %.not23 = icmp eq i16 %i.ah, 0
  br i1 %.not23, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ai = tail call i32 @phar_flush_ex(ptr noundef nonnull %i.a, ptr noundef null, i1 noundef zeroext false, ptr noundef %1) ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  ret void
}

declare i32 @zend_hash_del(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden i32 @phar_flush(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @phar_flush_ex(ptr noundef %0, ptr noundef null, i1 noundef zeroext false, ptr noundef %1)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define hidden void @phar_metadata_tracker_try_ensure_has_serialized_data(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %2 = alloca %struct.smart_str, align 8          ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !76
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i8, ptr %i.d, align 8, !tbaa !29
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = tail call ptr @php_var_serialize_init() #23
  store ptr %i.g, ptr %i.a, align 8, !tbaa !100
  call void @php_var_serialize(ptr noundef nonnull %2, ptr noundef nonnull %0, ptr noundef nonnull %i.a) #23
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !100
  call void @php_var_serialize_destroy(ptr noundef %i.h) #23
  %i.i = load ptr, ptr %2, align 8, !tbaa !102    ; 2 uses
  %.not4 = icmp eq ptr %i.i, null
  br i1 %.not4, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.i, ptr %i.b, align 8, !tbaa !76
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.a, %bb.b, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

declare ptr @php_var_serialize_init() local_unnamed_addr #2

declare void @php_var_serialize(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @php_var_serialize_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden range(i32 -1, 1) i32 @phar_metadata_tracker_unserialize_or_copy(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i1 noundef zeroext %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.b = load i32, ptr %i.a, align 4, !tbaa !85
  %i.c = icmp ne i32 %i.b, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = phi i1 [ false, %bb.a ], [ %i.c, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i8, ptr %i.e, align 8, !tbaa !29
  %i.g = icmp eq i8 %i.f, 0
  %or.cond = select i1 %i.g, i1 true, i1 %i.d
  br i1 %or.cond, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 960), align 8, !tbaa !103
  %.not27 = icmp eq ptr %i.h, null
  br i1 %.not27, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i32 1, ptr %i.j, align 8, !tbaa !29
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !76   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !17
  tail call void @php_unserialize_with_options(ptr noundef %1, ptr noundef nonnull %i.l, i64 noundef %i.n, ptr noundef %3, ptr noundef %4) #23
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 960), align 8, !tbaa !103
  %.not28 = icmp eq ptr %i.o, null
  br i1 %.not28, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @zval_ptr_dtor(ptr noundef nonnull %1) #23
  store i32 0, ptr %i.j, align 8, !tbaa !29
  br label %bb.i

bb.g:                                             ; preds = %bb.c
end_hunk_0
