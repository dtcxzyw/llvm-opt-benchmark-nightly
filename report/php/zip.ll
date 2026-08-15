inline.NumInlined: 42
inline.NumDeleted: 6
begin_hunk_0_@phar_zip_process_extra:bb.a
  br i1 %.not74, label %bb.p, label %.thread83

bb.p:                                             ; preds = %bb.o
  %.not75 = icmp eq i64 %spec.select, 14
  br i1 %.not75, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aj = add nsw i64 %spec.select, -14
  %i.ak = call i32 @_php_stream_seek(ptr noundef %0, i64 noundef %i.aj, i32 noundef 1) #14
  %i.al = icmp eq i32 %i.ak, -1
  br i1 %i.al, label %.thread83, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.am = load i32, ptr %i.g, align 8, !tbaa !57
  %i.an = and i32 %i.am, 61440
  %i.ao = load i8, ptr %i.h, align 1, !tbaa !13
  %i.ap = zext i8 %i.ao to i32
  %i.aq = load i8, ptr %i.i, align 1, !tbaa !13
  %i.ar = zext i8 %i.aq to i32
  %i.as = shl nuw nsw i32 %i.ar, 8
  %.masked = and i32 %i.as, 256
  %i.at = or disjoint i32 %.masked, %i.ap
  %storemerge = or disjoint i32 %i.at, %i.an
  store i32 %storemerge, ptr %i.g, align 8, !tbaa !57
  br label %.thread

.thread:                                          ; preds = %bb.l, %bb.m, %bb.i, %bb.j, %bb.r
  %.pn92 = phi i64 [ 5, %bb.i ], [ %spec.select, %bb.r ], [ %i.n, %bb.j ], [ %i.n, %bb.m ], [ 0, %bb.l ]
  %.462 = sub i64 %i.l, %.pn92                    ; 2 uses
  %.not = icmp eq i64 %.462, 0
  br i1 %.not, label %.thread83, label %bb.b

..thread83_crit_edge103:                          ; preds = %bb.j, %bb.m
  br label %.thread83, !llvm.loop !77

.thread83:                                        ; preds = %.thread, %bb.b, %bb.c, %bb.d, %bb.n, %bb.o, %bb.q, %bb.f, %..thread83_crit_edge103, %bb.a
  %.5 = phi i32 [ 0, %bb.a ], [ -1, %..thread83_crit_edge103 ], [ 0, %.thread ], [ -1, %bb.f ], [ -1, %bb.b ], [ -1, %bb.c ], [ -1, %bb.d ], [ -1, %bb.n ], [ -1, %bb.o ], [ -1, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  ret i32 %.5
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

declare ptr @php_stream_filter_create(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @_php_stream_filter_append(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @_php_stream_copy_to_mem(ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #3

declare ptr @php_stream_filter_remove(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

declare i32 @_php_stream_filter_flush(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @phar_set_inode(ptr nofree noundef nonnull captures(none) initializes((144, 146)) %0) unnamed_addr #9 {
bb.a:
  %i.a = alloca [4096 x i8], align 16             ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !63   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !62   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !38   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load i32, ptr %i.h, align 8, !tbaa !35
  %i.j = zext i32 %i.i to i64                     ; 2 uses
  %i.k = add i64 %i.e, %i.j
  %spec.select = tail call i64 @llvm.umin.i64(i64 %i.k, i64 4096) ; 3 uses
  %i.l = tail call i64 @llvm.umin.i64(i64 %spec.select, i64 %i.j) ; 3 uses
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !29   ; 2 uses
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull align 1 %i.m, i64 %i.l, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.n = sub nsw i64 %spec.select, %i.l
  %. = tail call i64 @llvm.umin.i64(i64 %i.n, i64 %i.e)
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.l
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.o, ptr nonnull align 8 %i.c, i64 %., i1 false)
  %i.p = call i64 @zend_hash_func(ptr noundef nonnull %i.a, i64 noundef %spec.select) #14
  %i.q = trunc i64 %i.p to i16
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i16 %i.q, ptr %i.r, align 8, !tbaa !78
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i1 @phar_validate_alias(ptr nofree noundef nonnull readonly %0, i64 noundef range(i64 0, 4294967296) %1) unnamed_addr #10 {
bb.a:
  %i.a = tail call ptr @memchr(ptr noundef nonnull %0, i32 noundef 47, i64 noundef %1) #15
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @memchr(ptr noundef nonnull %0, i32 noundef 92, i64 noundef %1) #15
  %.not11 = icmp eq ptr %i.b, null
  br i1 %.not11, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.c = tail call ptr @memchr(ptr noundef nonnull %0, i32 noundef 58, i64 noundef %1) #15
  %.not12 = icmp eq ptr %i.c, null
  br i1 %.not12, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.d = tail call ptr @memchr(ptr noundef nonnull %0, i32 noundef 59, i64 noundef %1) #15
  %.not13 = icmp eq ptr %i.d, null
  br i1 %.not13, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.e = tail call ptr @memchr(ptr noundef nonnull %0, i32 noundef 10, i64 noundef %1) #15
  %.not14 = icmp eq ptr %i.e, null
  br i1 %.not14, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.f = tail call ptr @memchr(ptr noundef nonnull %0, i32 noundef 13, i64 noundef %1) #15
  %i.g = icmp eq ptr %i.f, null
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %i.h = phi i1 [ false, %bb.e ], [ false, %bb.d ], [ false, %bb.c ], [ false, %bb.b ], [ false, %bb.a ], [ %i.g, %bb.f ]
  ret i1 %i.h
}

declare i32 @zend_hash_str_del(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @phar_free_alias(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden i32 @phar_open_or_create_zip(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr nofree noundef writeonly captures(address_is_null) %6, ptr noundef %7) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.b = icmp ne i32 %4, 0
  %i.c = call i32 @phar_create_or_parse_filename(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i1 noundef zeroext %i.b, i32 noundef %5, ptr noundef nonnull %i.a, ptr noundef %7) #14 ; 2 uses
  %i.d = icmp eq i32 %i.c, -1
  br i1 %i.d, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %6, null
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !76  ; 2 uses
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %.pre, ptr %6, align 8, !tbaa !76
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.pre, i64 316 ; 3 uses
  %i.f = trunc i32 %4 to i16
  %i.g = load i16, ptr %i.e, align 4              ; 3 uses
  %i.h = shl i16 %i.f, 7
  %i.i = and i16 %i.h, 128
  %i.j = and i16 %i.g, -129
  %i.k = or disjoint i16 %i.j, %i.i               ; 2 uses
  store i16 %i.k, ptr %i.e, align 4
  %i.l = and i16 %i.g, 32
  %.not18 = icmp eq i16 %i.l, 0
  br i1 %.not18, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.m = and i16 %i.g, 8
  %.not19 = icmp eq i16 %i.m, 0
  br i1 %.not19, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = and i16 %i.k, -97
  %i.o = or disjoint i16 %i.n, 32
  store i16 %i.o, ptr %i.e, align 4
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %.not20 = icmp eq ptr %7, null
  br i1 %.not20, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = call i64 (ptr, i64, ptr, ...) @zend_spprintf(ptr noundef nonnull %7, i64 noundef 4096, ptr noundef nonnull @.str.50, ptr noundef %0) #14 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.d, %bb.a, %bb.f
  %.0 = phi i32 [ %i.c, %bb.d ], [ -1, %bb.a ], [ 0, %bb.f ], [ -1, %bb.h ], [ -1, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret i32 %.0
}

declare i32 @phar_create_or_parse_filename(ptr noundef, i64 noundef, ptr noundef, i64 noundef, i1 noundef zeroext, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden range(i32 -1, 1) i32 @phar_zip_flush(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %struct._zval_struct, align 8       ; 5 uses
  %5 = alloca %struct._zval_struct, align 8       ; 5 uses
  %6 = alloca %struct._zval_struct, align 8       ; 5 uses
  %7 = alloca %struct._zval_struct, align 8       ; 6 uses
  %i.a = alloca ptr, align 8                      ; 33 uses
  %.sroa.31 = alloca { ptr, i32, i32, ptr }, align 8 ; 5 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  %8 = alloca %struct._phar_zip_pass, align 8     ; 22 uses
  %9 = alloca %struct._phar_zip_dir_end, align 4  ; 11 uses
  %i.c = alloca [6 x i8], align 1                 ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  store ptr %0, ptr %i.a, align 8, !tbaa !76
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.31)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.31, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  store ptr null, ptr %i.b, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %i.b, ptr %i.e, align 8, !tbaa !79
  %i.f = call i64 @time(ptr noundef null) #14
  %i.g = trunc i64 %i.f to i32                    ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 316
  %i.i = load i16, ptr %i.h, align 4              ; 3 uses
  %i.j = and i16 %i.i, 256
  %.not = icmp eq i16 %i.j, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not121 = icmp eq ptr %3, null
  br i1 %.not121, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %0, align 8, !tbaa !29
  %i.l = call i64 (ptr, i64, ptr, ...) @zend_spprintf(ptr noundef nonnull %3, i64 noundef 0, ptr noundef nonnull @.str.51, ptr noundef %i.k) #14 ; 0 uses
  br label %.critedge

bb.d:                                             ; preds = %bb.a
  %i.m = and i16 %i.i, 128
  %.not83 = icmp eq i16 %i.m, 0
  br i1 %.not83, label %bb.e, label %bb.aw

bb.e:                                             ; preds = %bb.d
  %i.n = and i16 %i.i, 1
  %.not84 = icmp eq i16 %i.n, 0
  br i1 %.not84, label %bb.f, label %bb.o

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = load i32, ptr %i.o, align 8, !tbaa !73
  %.not85 = icmp eq i32 %i.p, 0
  br i1 %.not85, label %bb.o, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = call ptr @_php_stream_fopen_tmpfile(i32 noundef 0) #14 ; 4 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.s = call i64 (ptr, i64, ptr, ...) @zend_spprintf(ptr noundef %3, i64 noundef 0, ptr noundef nonnull @.str.52) #14 ; 0 uses
  br label %.critedge

bb.i:                                             ; preds = %bb.g
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !76   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.v = load i32, ptr %i.u, align 8, !tbaa !73
  %i.w = zext i32 %i.v to i64                     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !44
  %i.z = call i64 @_php_stream_write(ptr noundef nonnull %i.q, ptr noundef %i.y, i64 noundef %i.w) #14
  %.not86 = icmp eq i64 %i.z, %i.w
  br i1 %.not86, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = call i32 @_php_stream_free(ptr noundef nonnull %i.q, i32 noundef 3) #14 ; 0 uses
  %.not87 = icmp eq ptr %3, null
  br i1 %.not87, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = load ptr, ptr %i.a, align 8, !tbaa !76
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !29
  %i.ad = call i64 (ptr, i64, ptr, ...) @zend_spprintf(ptr noundef nonnull %3, i64 noundef 0, ptr noundef nonnull @.str.53, ptr noundef %i.ac) #14 ; 0 uses
  br label %.critedge

bb.l:                                             ; preds = %bb.i
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !76
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !73 ; 3 uses
  %i.ah = call noalias ptr @_emalloc_40() #14     ; 8 uses
  store i32 1, ptr %i.ah, align 4, !tbaa !59
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  store i32 22, ptr %i.ai, align 4, !tbaa !13
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store i64 0, ptr %i.aj, align 8, !tbaa !60
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store i64 15, ptr %i.ak, align 8, !tbaa !62
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.al, ptr noundef nonnull align 1 dereferenceable(15) @.str.38, i64 15, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 39
  store i8 0, ptr %i.am, align 1, !tbaa !13
  %i.an = load ptr, ptr %i.a, align 8, !tbaa !76  ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 68
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !13
  %i.ar = and i32 %i.aq, 128
  %.not.i126 = icmp eq i32 %i.ar, 0
  br i1 %.not.i126, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.as = call noalias dereferenceable_or_null(152) ptr @__zend_malloc(i64 noundef 152) #17
  br label %zend_hash_update_mem.exit127

bb.n:                                             ; preds = %bb.l
  %i.at = call noalias ptr @_emalloc_160() #14
  br label %zend_hash_update_mem.exit127

zend_hash_update_mem.exit127:                     ; preds = %bb.m, %bb.n
  %i.au = phi ptr [ %i.as, %bb.m ], [ %i.at, %bb.n ] ; 16 uses
  store i32 %i.ag, ptr %i.au, align 1
  %.sroa.10.0..sroa_idx135 = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  store i32 %i.g, ptr %.sroa.10.0..sroa_idx135, align 1
  %.sroa.11.0..sroa_idx141 = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store i32 %i.ag, ptr %.sroa.11.0..sroa_idx141, align 1
  %.sroa.13.0..sroa_idx147 = getelementptr inbounds nuw i8, ptr %i.au, i64 12
  store i32 0, ptr %.sroa.13.0..sroa_idx147, align 1
  %.sroa.13149.0..sroa_idx154 = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store i32 438, ptr %.sroa.13149.0..sroa_idx154, align 1
  %.sroa.14.0..sroa_idx158 = getelementptr inbounds nuw i8, ptr %i.au, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %.sroa.14.0..sroa_idx158, i8 0, i64 28, i1 false)
  %.sroa.14159.0..sroa_idx164 = getelementptr inbounds nuw i8, ptr %i.au, i64 48
  store ptr %i.ah, ptr %.sroa.14159.0..sroa_idx164, align 1
  %.sroa.20.0..sroa_idx172 = getelementptr inbounds nuw i8, ptr %i.au, i64 56
  store i32 2, ptr %.sroa.20.0..sroa_idx172, align 1
  %.sroa.21.0..sroa_idx176 = getelementptr inbounds nuw i8, ptr %i.au, i64 60
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %.sroa.21.0..sroa_idx176, i8 0, i64 28, i1 false)
  %.sroa.21177.0..sroa_idx182 = getelementptr inbounds nuw i8, ptr %i.au, i64 88
  store ptr %i.q, ptr %.sroa.21177.0..sroa_idx182, align 1
  %.sroa.31.0..sroa_idx192 = getelementptr inbounds nuw i8, ptr %i.au, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.31.0..sroa_idx192, i8 0, i64 24, i1 false)
  %.sroa.31193.0..sroa_idx198 = getelementptr inbounds nuw i8, ptr %i.au, i64 120
  store ptr %0, ptr %.sroa.31193.0..sroa_idx198, align 1
  %.sroa.32.0..sroa_idx202 = getelementptr inbounds nuw i8, ptr %i.au, i64 128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %.sroa.32.0..sroa_idx202, i8 0, i64 18, i1 false)
  %.sroa.32203.0..sroa_idx208 = getelementptr inbounds nuw i8, ptr %i.au, i64 146
  store i16 130, ptr %.sroa.32203.0..sroa_idx208, align 1
  %.sroa.34.0..sroa_idx214 = getelementptr inbounds nuw i8, ptr %i.au, i64 148
  store i32 0, ptr %.sroa.34.0..sroa_idx214, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  store ptr %i.au, ptr %6, align 8, !tbaa !13
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 13, ptr %i.av, align 8, !tbaa !13
  %i.aw = call ptr @zend_hash_update(ptr noundef nonnull %i.ao, ptr noundef nonnull %i.ah, ptr noundef nonnull %6) #14 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  br label %bb.p

bb.o:                                             ; preds = %bb.f, %bb.e
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ay = call i32 @zend_hash_str_del(ptr noundef nonnull %i.ax, ptr noundef nonnull @.str.38, i64 noundef 15) #14 ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %zend_hash_update_mem.exit127
  %.sroa.11.0 = phi i32 [ 0, %bb.o ], [ %i.ag, %zend_hash_update_mem.exit127 ]
  %i.az = load ptr, ptr %i.a, align 8, !tbaa !76  ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 40
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !73 ; 2 uses
  %.not88 = icmp eq i32 %i.bb, 0
  br i1 %.not88, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bc = load ptr, ptr %i.az, align 8, !tbaa !29
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !35
  %i.bf = zext i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !44
  %i.bi = zext i32 %i.bb to i64
  %i.bj = call i32 @phar_get_archive(ptr noundef nonnull %i.a, ptr noundef %i.bc, i64 noundef %i.bf, ptr noundef %i.bh, i64 noundef %i.bi, ptr noundef %3) #14
  %i.bk = icmp eq i32 %i.bj, -1
  br i1 %i.bk, label %.critedge, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bl = icmp eq ptr %1, null                    ; 3 uses
  %or.cond = or i1 %i.bl, %2
  br i1 %or.cond, label %bb.af, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !62
  %i.bp = call ptr @php_stristr(ptr noundef nonnull %i.bm, ptr noundef nonnull @phar_zip_flush.halt_stub, i64 noundef %i.bo, i64 noundef 18) #14 ; 2 uses
  %i.bq = icmp eq ptr %i.bp, null
  br i1 %i.bq, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %.not92 = icmp eq ptr %3, null
  br i1 %.not92, label %.critedge, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.br = load ptr, ptr %i.a, align 8, !tbaa !76
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !29
  %i.bt = call i64 (ptr, i64, ptr, ...) @zend_spprintf(ptr noundef nonnull %3, i64 noundef 0, ptr noundef nonnull @.str.54, ptr noundef %i.bs) #14 ; 0 uses
  br label %.critedge

bb.v:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.c, ptr noundef nonnull align 1 dereferenceable(6) @__const.phar_zip_flush.end_sequence, i64 6, i1 false)
  %i.bu = call ptr @_php_stream_fopen_tmpfile(i32 noundef 0) #14 ; 5 uses
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bw = call i64 (ptr, i64, ptr, ...) @zend_spprintf(ptr noundef %3, i64 noundef 0, ptr noundef nonnull @.str.52) #14 ; 0 uses
  br label %.critedge.critedge

bb.x:                                             ; preds = %bb.v
  %i.bx = ptrtoint ptr %i.bp to i64
  %i.by = ptrtoint ptr %i.bm to i64
  %i.bz = sub i64 %i.bx, %i.by                    ; 2 uses
  %i.ca = add i64 %i.bz, 18                       ; 2 uses
  %i.cb = trunc i64 %i.bz to i32
  %i.cc = add i32 %i.cb, 23
  %i.cd = call i64 @_php_stream_write(ptr noundef nonnull %i.bu, ptr noundef nonnull %i.bm, i64 noundef %i.ca) #14
  %.not89 = icmp eq i64 %i.ca, %i.cd
  br i1 %.not89, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ce = call i64 @_php_stream_write(ptr noundef nonnull %i.bu, ptr noundef nonnull %i.c, i64 noundef 5) #14
  %.not90 = icmp eq i64 %i.ce, 5
  br i1 %.not90, label %bb.ac, label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.not91 = icmp eq ptr %3, null
  br i1 %.not91, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cf = load ptr, ptr %i.a, align 8, !tbaa !76
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !29
  %i.ch = call i64 (ptr, i64, ptr, ...) @zend_spprintf(ptr noundef nonnull %3, i64 noundef 0, ptr noundef nonnull @.str.55, ptr noundef %i.cg) #14 ; 0 uses
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.ci = call i32 @_php_stream_free(ptr noundef nonnull %i.bu, i32 noundef 3) #14 ; 0 uses
  br label %.critedge.critedge

bb.ac:                                            ; preds = %bb.y
  %i.cj = call noalias ptr @_emalloc_40() #14     ; 8 uses
  store i32 1, ptr %i.cj, align 4, !tbaa !59
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 4
  store i32 22, ptr %i.ck, align 4, !tbaa !13
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store i64 0, ptr %i.cl, align 8, !tbaa !60
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  store i64 14, ptr %i.cm, align 8, !tbaa !62
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.cn, ptr noundef nonnull align 1 dereferenceable(14) @.str.45, i64 14, i1 false)
  %i.co = getelementptr inbounds nuw i8, ptr %i.cj, i64 38
  store i8 0, ptr %i.co, align 2, !tbaa !13
  %i.cp = load ptr, ptr %i.a, align 8, !tbaa !76  ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 64
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 68
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !13
  %i.ct = and i32 %i.cs, 128
  %.not.i124 = icmp eq i32 %i.ct, 0
  br i1 %.not.i124, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cu = call noalias dereferenceable_or_null(152) ptr @__zend_malloc(i64 noundef 152) #17
  br label %zend_hash_update_mem.exit125

bb.ae:                                            ; preds = %bb.ac
  %i.cv = call noalias ptr @_emalloc_160() #14
  br label %zend_hash_update_mem.exit125

zend_hash_update_mem.exit125:                     ; preds = %bb.ad, %bb.ae
  %i.cw = phi ptr [ %i.cu, %bb.ad ], [ %i.cv, %bb.ae ] ; 16 uses
  store i32 %i.cc, ptr %i.cw, align 1
  %.sroa.10.0..sroa_idx133 = getelementptr inbounds nuw i8, ptr %i.cw, i64 4
  store i32 %i.g, ptr %.sroa.10.0..sroa_idx133, align 1
  %.sroa.11.0..sroa_idx139 = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  store i32 %.sroa.11.0, ptr %.sroa.11.0..sroa_idx139, align 1
  %.sroa.13.0..sroa_idx145 = getelementptr inbounds nuw i8, ptr %i.cw, i64 12
  store i32 0, ptr %.sroa.13.0..sroa_idx145, align 1
  %.sroa.13149.0..sroa_idx152 = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  store i32 438, ptr %.sroa.13149.0..sroa_idx152, align 1
  %.sroa.14.0..sroa_idx157 = getelementptr inbounds nuw i8, ptr %i.cw, i64 20
  store <28 x i8> zeroinitializer, ptr %.sroa.14.0..sroa_idx157, align 1
  %.sroa.14159.0..sroa_idx162 = getelementptr inbounds nuw i8, ptr %i.cw, i64 48
  store ptr %i.cj, ptr %.sroa.14159.0..sroa_idx162, align 1
  %.sroa.20.0..sroa_idx170 = getelementptr inbounds nuw i8, ptr %i.cw, i64 56
  store i32 2, ptr %.sroa.20.0..sroa_idx170, align 1
  %.sroa.21.0..sroa_idx175 = getelementptr inbounds nuw i8, ptr %i.cw, i64 60
  store <28 x i8> zeroinitializer, ptr %.sroa.21.0..sroa_idx175, align 1
  %.sroa.21177.0..sroa_idx180 = getelementptr inbounds nuw i8, ptr %i.cw, i64 88
  store ptr %i.bu, ptr %.sroa.21177.0..sroa_idx180, align 1
  %.sroa.31.0..sroa_idx191 = getelementptr inbounds nuw i8, ptr %i.cw, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.31.0..sroa_idx191, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.31, i64 24, i1 false)
  %.sroa.31193.0..sroa_idx196 = getelementptr inbounds nuw i8, ptr %i.cw, i64 120
  store ptr %0, ptr %.sroa.31193.0..sroa_idx196, align 1
  %.sroa.32.0..sroa_idx201 = getelementptr inbounds nuw i8, ptr %i.cw, i64 128
  store <18 x i8> zeroinitializer, ptr %.sroa.32.0..sroa_idx201, align 1
  %.sroa.32203.0..sroa_idx206 = getelementptr inbounds nuw i8, ptr %i.cw, i64 146
  store i16 130, ptr %.sroa.32203.0..sroa_idx206, align 1
  %.sroa.34.0..sroa_idx212 = getelementptr inbounds nuw i8, ptr %i.cw, i64 148
  store i32 0, ptr %.sroa.34.0..sroa_idx212, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  store ptr %i.cw, ptr %5, align 8, !tbaa !13
  %i.cx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 13, ptr %i.cx, align 8, !tbaa !13
  %i.cy = call ptr @zend_hash_update(ptr noundef nonnull %i.cq, ptr noundef nonnull %i.cj, ptr noundef nonnull %5) #14 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  br label %bb.aw

bb.af:                                            ; preds = %bb.r
  %i.cz = call ptr @_php_stream_fopen_tmpfile(i32 noundef 0) #14 ; 7 uses
  %i.da = icmp eq ptr %i.cz, null
  br i1 %i.da, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.db = call i64 (ptr, i64, ptr, ...) @zend_spprintf(ptr noundef %3, i64 noundef 0, ptr noundef nonnull @.str.52) #14 ; 0 uses
  br label %.critedge

bb.ah:                                            ; preds = %bb.af
  %i.dc = call i64 @_php_stream_write(ptr noundef nonnull %i.cz, ptr noundef nonnull @phar_zip_flush.newstub, i64 noundef 60) #14
  %.not93 = icmp eq i64 %i.dc, 60
  br i1 %.not93, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dd = call i32 @_php_stream_free(ptr noundef nonnull %i.cz, i32 noundef 3) #14 ; 0 uses
  %.not95 = icmp eq ptr %3, null
  br i1 %.not95, label %.critedge, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.de = select i1 %i.bl, ptr @.str.58, ptr @.str.57
  %i.df = select i1 %i.bl, ptr @.str.60, ptr @.str.59
  %i.dg = load ptr, ptr %i.a, align 8, !tbaa !76
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !29
  %i.di = call i64 (ptr, i64, ptr, ...) @zend_spprintf(ptr noundef nonnull %3, i64 noundef 0, ptr noundef nonnull @.str.56, ptr noundef nonnull %i.de, ptr noundef nonnull %i.df, ptr noundef %i.dh) #14 ; 0 uses
  br label %.critedge

bb.ak:                                            ; preds = %bb.ah
  %i.dj = call noalias ptr @_emalloc_40() #14     ; 13 uses
  store i32 1, ptr %i.dj, align 4, !tbaa !59
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 4
  store i32 22, ptr %i.dk, align 4, !tbaa !13
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  store i64 0, ptr %i.dl, align 8, !tbaa !60
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  store i64 14, ptr %i.dm, align 8, !tbaa !62
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dj, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.dn, ptr noundef nonnull align 1 dereferenceable(14) @.str.45, i64 14, i1 false)
  %i.do = getelementptr inbounds nuw i8, ptr %i.dj, i64 38
  store i8 0, ptr %i.do, align 2, !tbaa !13
  %i.dp = load ptr, ptr %i.a, align 8, !tbaa !76  ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 64 ; 2 uses
  br i1 %2, label %bb.at, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dr = call ptr @zend_hash_find(ptr noundef nonnull %i.dq, ptr noundef nonnull %i.dj) #14
  %.not243 = icmp eq ptr %i.dr, null
  br i1 %.not243, label %bb.am, label %bb.as

bb.am:                                            ; preds = %bb.al
  %i.ds = load ptr, ptr %i.a, align 8, !tbaa !76  ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  store ptr null, ptr %7, align 8, !tbaa !13
  %i.du = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 13, ptr %i.du, align 8, !tbaa !13
  %i.dv = call ptr @zend_hash_add(ptr noundef nonnull %i.dt, ptr noundef nonnull %i.dj, ptr noundef nonnull %7) #14 ; 3 uses
  %.not.i = icmp eq ptr %i.dv, null
  br i1 %.not.i, label %zend_hash_add_mem.exit.thread, label %bb.an

zend_hash_add_mem.exit.thread:                    ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  br label %bb.aq

bb.an:                                            ; preds = %bb.am
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ds, i64 68
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !13
  %i.dy = and i32 %i.dx, 128
  %.not46.i = icmp eq i32 %i.dy, 0
  br i1 %.not46.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.dz = call noalias dereferenceable_or_null(152) ptr @__zend_malloc(i64 noundef 152) #17
  br label %zend_hash_add_mem.exit

bb.ap:                                            ; preds = %bb.an
  %i.ea = call noalias ptr @_emalloc_160() #14
  br label %zend_hash_add_mem.exit

zend_hash_add_mem.exit:                           ; preds = %bb.ao, %bb.ap
  %i.eb = phi ptr [ %i.dz, %bb.ao ], [ %i.ea, %bb.ap ] ; 16 uses
  store ptr %i.eb, ptr %i.dv, align 8, !tbaa !13
  store i32 60, ptr %i.eb, align 1
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eb, i64 4
  store i32 %i.g, ptr %.sroa.10.0..sroa_idx, align 1
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  store i32 60, ptr %.sroa.11.0..sroa_idx, align 1
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eb, i64 12
  store i32 0, ptr %.sroa.13.0..sroa_idx, align 1
  %.sroa.13149.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  store i32 438, ptr %.sroa.13149.0..sroa_idx, align 1
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eb, i64 20
  store <28 x i8> zeroinitializer, ptr %.sroa.14.0..sroa_idx, align 1
  %.sroa.14159.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eb, i64 48
  store ptr %i.dj, ptr %.sroa.14159.0..sroa_idx, align 1
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eb, i64 56
  store i32 2, ptr %.sroa.20.0..sroa_idx, align 1
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eb, i64 60
  store <28 x i8> zeroinitializer, ptr %.sroa.21.0..sroa_idx, align 1
  %.sroa.21177.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eb, i64 88
  store ptr %i.cz, ptr %.sroa.21177.0..sroa_idx, align 1
  %.sroa.31.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eb, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.31.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.31, i64 24, i1 false)
  %.sroa.31193.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eb, i64 120
  store ptr %0, ptr %.sroa.31193.0..sroa_idx, align 1
  %.sroa.32.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eb, i64 128
  store <18 x i8> zeroinitializer, ptr %.sroa.32.0..sroa_idx, align 1
  %.sroa.32203.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eb, i64 146
  store i16 130, ptr %.sroa.32203.0..sroa_idx, align 1
  %.sroa.34.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eb, i64 148
  store i32 0, ptr %.sroa.34.0..sroa_idx, align 1
  %i.ec = load ptr, ptr %i.dv, align 8, !tbaa !13
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  %i.ed = icmp eq ptr %i.ec, null
  br i1 %i.ed, label %bb.aq, label %bb.aw

bb.aq:                                            ; preds = %zend_hash_add_mem.exit.thread, %zend_hash_add_mem.exit
  %i.ee = call i32 @_php_stream_free(ptr noundef nonnull %i.cz, i32 noundef 3) #14 ; 0 uses
  call void @_efree(ptr noundef nonnull %i.dj) #14
  %.not94 = icmp eq ptr %3, null
  br i1 %.not94, label %.critedge, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ef = load ptr, ptr %i.a, align 8, !tbaa !76
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !29
  %i.eh = call i64 (ptr, i64, ptr, ...) @zend_spprintf(ptr noundef nonnull %3, i64 noundef 0, ptr noundef nonnull @.str.61, ptr noundef %i.eg) #14 ; 0 uses
  br label %.critedge

bb.as:                                            ; preds = %bb.al
  %i.ei = call i32 @_php_stream_free(ptr noundef nonnull %i.cz, i32 noundef 3) #14 ; 0 uses
  call void @_efree(ptr noundef nonnull %i.dj) #14
  br label %bb.aw

bb.at:                                            ; preds = %bb.ak
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dp, i64 68
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !13
  %i.el = and i32 %i.ek, 128
  %.not.i123 = icmp eq i32 %i.el, 0
  br i1 %.not.i123, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.em = call noalias dereferenceable_or_null(152) ptr @__zend_malloc(i64 noundef 152) #17
  br label %zend_hash_update_mem.exit

bb.av:                                            ; preds = %bb.at
  %i.en = call noalias ptr @_emalloc_160() #14
  br label %zend_hash_update_mem.exit

zend_hash_update_mem.exit:                        ; preds = %bb.au, %bb.av
  %i.eo = phi ptr [ %i.em, %bb.au ], [ %i.en, %bb.av ] ; 16 uses
  store i32 60, ptr %i.eo, align 1
  %.sroa.10.0..sroa_idx131 = getelementptr inbounds nuw i8, ptr %i.eo, i64 4
  store i32 %i.g, ptr %.sroa.10.0..sroa_idx131, align 1
  %.sroa.11.0..sroa_idx137 = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  store i32 60, ptr %.sroa.11.0..sroa_idx137, align 1
  %.sroa.13.0..sroa_idx143 = getelementptr inbounds nuw i8, ptr %i.eo, i64 12
  store i32 0, ptr %.sroa.13.0..sroa_idx143, align 1
  %.sroa.13149.0..sroa_idx150 = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  store i32 438, ptr %.sroa.13149.0..sroa_idx150, align 1
  %.sroa.14.0..sroa_idx156 = getelementptr inbounds nuw i8, ptr %i.eo, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %.sroa.14.0..sroa_idx156, i8 0, i64 28, i1 false)
  %.sroa.14159.0..sroa_idx160 = getelementptr inbounds nuw i8, ptr %i.eo, i64 48
  store ptr %i.dj, ptr %.sroa.14159.0..sroa_idx160, align 1
  %.sroa.20.0..sroa_idx168 = getelementptr inbounds nuw i8, ptr %i.eo, i64 56
  store i32 2, ptr %.sroa.20.0..sroa_idx168, align 1
  %.sroa.21.0..sroa_idx174 = getelementptr inbounds nuw i8, ptr %i.eo, i64 60
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %.sroa.21.0..sroa_idx174, i8 0, i64 28, i1 false)
  %.sroa.21177.0..sroa_idx178 = getelementptr inbounds nuw i8, ptr %i.eo, i64 88
  store ptr %i.cz, ptr %.sroa.21177.0..sroa_idx178, align 1
  %.sroa.31.0..sroa_idx190 = getelementptr inbounds nuw i8, ptr %i.eo, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.31.0..sroa_idx190, i8 0, i64 24, i1 false)
  %.sroa.31193.0..sroa_idx194 = getelementptr inbounds nuw i8, ptr %i.eo, i64 120
  store ptr %0, ptr %.sroa.31193.0..sroa_idx194, align 1
  %.sroa.32.0..sroa_idx200 = getelementptr inbounds nuw i8, ptr %i.eo, i64 128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %.sroa.32.0..sroa_idx200, i8 0, i64 18, i1 false)
  %.sroa.32203.0..sroa_idx204 = getelementptr inbounds nuw i8, ptr %i.eo, i64 146
  store i16 130, ptr %.sroa.32203.0..sroa_idx204, align 1
  %.sroa.34.0..sroa_idx210 = getelementptr inbounds nuw i8, ptr %i.eo, i64 148
  store i32 0, ptr %.sroa.34.0..sroa_idx210, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  store ptr %i.eo, ptr %4, align 8, !tbaa !13
  %i.ep = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 13, ptr %i.ep, align 8, !tbaa !13
  %i.eq = call ptr @zend_hash_update(ptr noundef nonnull %i.dq, ptr noundef nonnull %i.dj, ptr noundef nonnull %4) #14 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  br label %bb.aw

bb.aw:                                            ; preds = %zend_hash_update_mem.exit125, %bb.as, %zend_hash_add_mem.exit, %zend_hash_update_mem.exit, %bb.d
  %i.er = load ptr, ptr %i.a, align 8, !tbaa !76  ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 248
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !75 ; 3 uses
  %.not97 = icmp eq ptr %i.et, null
  br i1 %.not97, label %bb.az, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.eu = getelementptr inbounds nuw i8, ptr %i.er, i64 316
  %i.ev = load i16, ptr %i.eu, align 4
  %i.ew = and i16 %i.ev, 8
  %.not98 = icmp eq i16 %i.ew, 0
  br i1 %.not98, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.ex = call i32 @_php_stream_seek(ptr noundef nonnull %i.et, i64 noundef 0, i32 noundef 0) #14 ; 0 uses
  br label %bb.ba

bb.az:                                            ; preds = %bb.ax, %bb.aw
  %i.ey = load ptr, ptr %i.er, align 8, !tbaa !29
  %i.ez = call ptr @_php_stream_open_wrapper_ex(ptr noundef %i.ey, ptr noundef nonnull @.str.62, i32 noundef 0, ptr noundef null, ptr noundef null) #14 ; 2 uses
  %i.fa = icmp ne ptr %i.ez, null
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %.069 = phi i1 [ %i.fa, %bb.az ], [ false, %bb.ay ] ; 4 uses
  %.068 = phi ptr [ %i.ez, %bb.az ], [ %i.et, %bb.ay ] ; 5 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %.068, ptr %i.fb, align 8, !tbaa !83
  %i.fc = call ptr @_php_stream_fopen_tmpfile(i32 noundef 0) #14 ; 2 uses
  store ptr %i.fc, ptr %8, align 8, !tbaa !84
  %.not99 = icmp eq ptr %i.fc, null
  br i1 %.not99, label %bb.bb, label %bb.bf

bb.bb:                                            ; preds = %bb.ba, %bb.bg
  br i1 %.069, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.fd = call i32 @_php_stream_free(ptr noundef %.068, i32 noundef 3) #14 ; 0 uses
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %.not101 = icmp eq ptr %3, null
  br i1 %.not101, label %.critedge, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.fe = load ptr, ptr %i.a, align 8, !tbaa !76
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !29
  %i.fg = call i64 (ptr, i64, ptr, ...) @zend_spprintf(ptr noundef nonnull %3, i64 noundef 4096, ptr noundef nonnull @.str.63, ptr noundef %i.ff) #14 ; 0 uses
  br label %.critedge

bb.bf:                                            ; preds = %bb.ba
  %i.fh = call ptr @_php_stream_fopen_tmpfile(i32 noundef 0) #14 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 6 uses
  store ptr %i.fh, ptr %i.fi, align 8, !tbaa !85
  %.not100 = icmp eq ptr %i.fh, null
  br i1 %.not100, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.fj = load ptr, ptr %8, align 8, !tbaa !84
  %i.fk = call i32 @_php_stream_free(ptr noundef %i.fj, i32 noundef 3) #14 ; 0 uses
  br label %bb.bb

bb.bh:                                            ; preds = %bb.bf
  %i.fl = getelementptr inbounds nuw i8, ptr %8, i64 33 ; 2 uses
  store i8 1, ptr %i.fl, align 1, !tbaa !86
  %i.fm = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  store i8 1, ptr %i.fm, align 8, !tbaa !87
  %i.fn = getelementptr inbounds nuw i8, ptr %9, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(18) %i.fn, i8 0, i64 18, i1 false)
  store i32 101010256, ptr %9, align 4
  %i.fo = load ptr, ptr %i.a, align 8, !tbaa !76  ; 5 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 316
  %i.fq = load i16, ptr %i.fp, align 4
  %i.fr = and i16 %i.fq, 128
  %.not102 = icmp eq i16 %i.fr, 0
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fo, i64 268 ; 2 uses
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !66
  %.not103 = icmp eq i32 %i.ft, 0                 ; 2 uses
  br i1 %.not102, label %bb.bi, label %bb.bk

bb.bi:                                            ; preds = %bb.bh
  br i1 %.not103, label %bb.bj, label %.thread266

bb.bj:                                            ; preds = %bb.bi
  store i32 3, ptr %i.fs, align 4, !tbaa !66
  br label %.thread266

bb.bk:                                            ; preds = %bb.bh
  br i1 %.not103, label %bb.bl, label %.thread266

.thread266:                                       ; preds = %bb.bi, %bb.bj, %bb.bk
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fo, i64 92
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !88
  %i.fw = trunc i32 %i.fv to i16
  %i.fx = add i16 %i.fw, 1
  br label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fo, i64 92
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !88
  %i.ga = trunc i32 %i.fz to i16
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %.thread266
  %.sink244 = phi i16 [ %i.ga, %bb.bl ], [ %i.fx, %.thread266 ] ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i16 %.sink244, ptr %i.gb, align 4
  %i.gc = getelementptr inbounds nuw i8, ptr %9, i64 10
  store i16 %.sink244, ptr %i.gc, align 2
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fo, i64 64
  call void @zend_hash_apply_with_argument(ptr noundef nonnull %i.gd, ptr noundef nonnull @phar_zip_changed_apply, ptr noundef nonnull %8) #14
  %i.ge = load ptr, ptr %i.a, align 8, !tbaa !76  ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 288
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ge, i64 316
  %i.gh = load i16, ptr %i.gg, align 4
  %i.gi = and i16 %i.gh, 256
  %i.gj = icmp ne i16 %i.gi, 0
  call void @phar_metadata_tracker_try_ensure_has_serialized_data(ptr noundef nonnull %i.gf, i1 noundef zeroext %i.gj) #14
  %i.gk = load ptr, ptr %i.b, align 8, !tbaa !67  ; 2 uses
end_hunk_0
begin_hunk_1_@phar_zip_flush:bb.a
  br i1 %.not108, label %.thread, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.hm = load ptr, ptr %i.a, align 8, !tbaa !76
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !29
  %i.ho = call i64 (ptr, i64, ptr, ...) @zend_spprintf(ptr noundef nonnull %3, i64 noundef 4096, ptr noundef nonnull @.str.66, ptr noundef %i.hn) #14 ; 0 uses
  br label %.thread

.thread:                                          ; preds = %bb.bw, %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  br label %bb.bq

bb.by:                                            ; preds = %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  %i.hp = load ptr, ptr %i.fi, align 8, !tbaa !85
  %i.hq = call i32 @_php_stream_free(ptr noundef %i.hp, i32 noundef 3) #14 ; 0 uses
  %i.hr = load ptr, ptr %i.a, align 8, !tbaa !76  ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 288
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hr, i64 316
  %i.hu = load i16, ptr %i.ht, align 4
  %i.hv = and i16 %i.hu, 256
  %i.hw = icmp ne i16 %i.hv, 0
  call void @phar_metadata_tracker_try_ensure_has_serialized_data(ptr noundef nonnull %i.hs, i1 noundef zeroext %i.hw) #14
  %i.hx = load ptr, ptr %i.a, align 8, !tbaa !76
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 304
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !89 ; 2 uses
  %.not109 = icmp eq ptr %i.hz, null
  br i1 %.not109, label %bb.cf, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.ia = getelementptr inbounds nuw i8, ptr %9, i64 20
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hz, i64 16
  %i.ic = load i64, ptr %i.ib, align 8, !tbaa !62
  %i.id = trunc i64 %i.ic to i16
  store i16 %i.id, ptr %i.ia, align 4
  %i.ie = load ptr, ptr %8, align 8, !tbaa !84
  %i.if = call i64 @_php_stream_write(ptr noundef %i.ie, ptr noundef nonnull %9, i64 noundef 22) #14
  %.not112 = icmp eq i64 %i.if, 22
  br i1 %.not112, label %bb.cc, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %.not119 = icmp eq ptr %3, null
  br i1 %.not119, label %bb.br, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.ig = load ptr, ptr %i.a, align 8, !tbaa !76
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !29
  %i.ii = call i64 (ptr, i64, ptr, ...) @zend_spprintf(ptr noundef nonnull %3, i64 noundef 4096, ptr noundef nonnull @.str.67, ptr noundef %i.ih) #14 ; 0 uses
  br label %bb.br

bb.cc:                                            ; preds = %bb.bz
  %i.ij = load ptr, ptr %i.a, align 8, !tbaa !76
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 304
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !89 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 16
  %i.in = load i64, ptr %i.im, align 8, !tbaa !62 ; 2 uses
  %i.io = load ptr, ptr %8, align 8, !tbaa !84
  %i.ip = getelementptr inbounds nuw i8, ptr %i.il, i64 24
  %i.iq = call i64 @_php_stream_write(ptr noundef %i.io, ptr noundef nonnull %i.ip, i64 noundef %i.in) #14
  %.not113 = icmp eq i64 %i.in, %i.iq
  br i1 %.not113, label %bb.ci, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %.not118 = icmp eq ptr %3, null
  br i1 %.not118, label %bb.br, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.ir = load ptr, ptr %i.a, align 8, !tbaa !76
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !29
  %i.it = call i64 (ptr, i64, ptr, ...) @zend_spprintf(ptr noundef nonnull %3, i64 noundef 4096, ptr noundef nonnull @.str.68, ptr noundef %i.is) #14 ; 0 uses
  br label %bb.br

bb.cf:                                            ; preds = %bb.by
  %i.iu = load ptr, ptr %8, align 8, !tbaa !84
  %i.iv = call i64 @_php_stream_write(ptr noundef %i.iu, ptr noundef nonnull %9, i64 noundef 22) #14
  %.not110 = icmp eq i64 %i.iv, 22
  br i1 %.not110, label %bb.ci, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %.not111 = icmp eq ptr %3, null
  br i1 %.not111, label %bb.br, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.iw = load ptr, ptr %i.a, align 8, !tbaa !76
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !29
  %i.iy = call i64 (ptr, i64, ptr, ...) @zend_spprintf(ptr noundef nonnull %3, i64 noundef 4096, ptr noundef nonnull @.str.67, ptr noundef %i.ix) #14 ; 0 uses
  br label %bb.br

bb.ci:                                            ; preds = %bb.cf, %bb.cc
  %i.iz = load ptr, ptr %i.a, align 8, !tbaa !76  ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 248
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !75 ; 2 uses
  %i.jc = icmp ne ptr %i.jb, null
  %i.jd = load i8, ptr %i.fm, align 8, !range !27
  %i.je = trunc nuw i8 %i.jd to i1
  %or.cond4 = select i1 %i.jc, i1 %i.je, i1 false
  br i1 %or.cond4, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.jf = call i32 @_php_stream_free(ptr noundef nonnull %i.jb, i32 noundef 3) #14 ; 0 uses
  %.pre245 = load ptr, ptr %i.a, align 8, !tbaa !76
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %i.jg = phi ptr [ %.pre245, %bb.cj ], [ %i.iz, %bb.ci ] ; 3 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 256
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !90 ; 2 uses
  %.not114 = icmp eq ptr %i.ji, null
  br i1 %.not114, label %bb.co, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.jj = load i8, ptr %i.fl, align 1, !tbaa !86, !range !27, !noundef !28
  %i.jk = trunc nuw i8 %i.jj to i1
  br i1 %i.jk, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %i.jl = call i32 @_php_stream_free(ptr noundef nonnull %i.ji, i32 noundef 3) #14 ; 0 uses
  %.pre246 = load ptr, ptr %i.a, align 8, !tbaa !76
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl
  %i.jm = phi ptr [ %.pre246, %bb.cm ], [ %i.jg, %bb.cl ] ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 256
  store ptr null, ptr %i.jn, align 8, !tbaa !90
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.ck
  %i.jo = phi ptr [ %i.jm, %bb.cn ], [ %i.jg, %bb.ck ] ; 3 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 316 ; 2 uses
  %i.jq = load i16, ptr %i.jp, align 4            ; 2 uses
  %i.jr = and i16 %i.jq, -9
  store i16 %i.jr, ptr %i.jp, align 4
  %i.js = and i16 %i.jq, 16
  %.not115 = icmp eq i16 %i.js, 0
  br i1 %.not115, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.jt = load ptr, ptr %8, align 8, !tbaa !84
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jo, i64 248
  store ptr %i.jt, ptr %i.ju, align 8, !tbaa !75
  br label %bb.cw

bb.cq:                                            ; preds = %bb.co
  %i.jv = load ptr, ptr %i.jo, align 8, !tbaa !29
  %i.jw = call ptr @_php_stream_open_wrapper_ex(ptr noundef %i.jv, ptr noundef nonnull @.str.69, i32 noundef 26, ptr noundef null, ptr noundef null) #14 ; 2 uses
  %i.jx = load ptr, ptr %i.a, align 8, !tbaa !76  ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 248
  store ptr %i.jw, ptr %i.jy, align 8, !tbaa !75
  %.not116 = icmp eq ptr %i.jw, null
  br i1 %.not116, label %bb.cr, label %bb.cv

bb.cr:                                            ; preds = %bb.cq
  br i1 %.069, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  %i.jz = call i32 @_php_stream_free(ptr noundef %.068, i32 noundef 3) #14 ; 0 uses
  %.pre247 = load ptr, ptr %i.a, align 8, !tbaa !76
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  %i.ka = phi ptr [ %.pre247, %bb.cs ], [ %i.jx, %bb.cr ] ; 2 uses
  %i.kb = load ptr, ptr %8, align 8, !tbaa !84
  %i.kc = getelementptr inbounds nuw i8, ptr %i.ka, i64 248
  store ptr %i.kb, ptr %i.kc, align 8, !tbaa !75
  %.not117 = icmp eq ptr %3, null
  br i1 %.not117, label %.critedge, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.kd = load ptr, ptr %i.ka, align 8, !tbaa !29
  %i.ke = call i64 (ptr, i64, ptr, ...) @zend_spprintf(ptr noundef nonnull %3, i64 noundef 4096, ptr noundef nonnull @.str.70, ptr noundef %i.kd) #14 ; 0 uses
  br label %.critedge

bb.cv:                                            ; preds = %bb.cq
  %i.kf = load ptr, ptr %8, align 8, !tbaa !84
  %i.kg = call i32 @_php_stream_seek(ptr noundef %i.kf, i64 noundef 0, i32 noundef 0) #14 ; 0 uses
  %i.kh = load ptr, ptr %8, align 8, !tbaa !84
  %i.ki = load ptr, ptr %i.a, align 8, !tbaa !76
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 248
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !75
  %i.kl = call i32 @_php_stream_copy_to_stream_ex(ptr noundef %i.kh, ptr noundef %i.kk, i64 noundef -1, ptr noundef null) #14 ; 0 uses
  %i.km = load ptr, ptr %8, align 8, !tbaa !84
  %i.kn = call i32 @_php_stream_free(ptr noundef %i.km, i32 noundef 3) #14 ; 0 uses
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cp
  br i1 %.069, label %bb.cx, label %.critedge

bb.cx:                                            ; preds = %bb.cw
  %i.ko = call i32 @_php_stream_free(ptr noundef %.068, i32 noundef 3) #14 ; 0 uses
  br label %.critedge

.critedge.critedge:                               ; preds = %bb.ab, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  br label %.critedge

.critedge:                                        ; preds = %.critedge.critedge, %bb.u, %bb.t, %bb.cw, %bb.cx, %bb.ct, %bb.cu, %bb.br, %bb.bs, %bb.bd, %bb.be, %bb.aq, %bb.ar, %bb.ai, %bb.aj, %bb.q, %bb.j, %bb.k, %bb.b, %bb.c, %bb.ag, %bb.h
  %.2 = phi i32 [ -1, %bb.b ], [ -1, %bb.bd ], [ -1, %bb.ct ], [ -1, %bb.br ], [ -1, %bb.aq ], [ -1, %bb.j ], [ -1, %bb.ag ], [ 0, %bb.cw ], [ -1, %bb.ai ], [ -1, %.critedge.critedge ], [ -1, %bb.h ], [ -1, %bb.c ], [ -1, %bb.k ], [ -1, %bb.q ], [ -1, %bb.aj ], [ -1, %bb.ar ], [ -1, %bb.be ], [ -1, %bb.bs ], [ -1, %bb.cu ], [ 0, %bb.cx ], [ -1, %bb.t ], [ -1, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.31)
  ret i32 %.2
}

; Function Attrs: nounwind
declare i64 @time(ptr noundef) local_unnamed_addr #11

declare i32 @phar_get_archive(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @php_stristr(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @_php_stream_open_wrapper_ex(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @zend_hash_apply_with_argument(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal range(i32 0, 3) i32 @phar_zip_changed_apply(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !13
  %i.b = tail call fastcc i32 @phar_zip_changed_apply_int(ptr noundef %i.a, ptr noundef %1)
  ret i32 %i.b
}

declare void @phar_metadata_tracker_try_ensure_has_serialized_data(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @phar_zip_applysignature(ptr noundef %0, ptr nofree noundef nonnull captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  %i.c = alloca [8 x i8], align 4                 ; 5 uses
  %2 = alloca %struct._phar_entry_info, align 8   ; 11 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 316
  %i.e = load i16, ptr %i.d, align 4
  %i.f = and i16 %i.e, 128
  %.not = icmp eq i16 %i.f, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.h = load i32, ptr %i.g, align 4, !tbaa !66
  %.not47 = icmp eq i32 %i.h, 0
  br i1 %.not47, label %bb.u, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %2, i8 0, i64 152, i1 false)
  %i.i = tail call ptr @_php_stream_fopen_tmpfile(i32 noundef 0) #14 ; 9 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !79
  %i.m = tail call i64 (ptr, i64, ptr, ...) @zend_spprintf(ptr noundef %i.l, i64 noundef 0, ptr noundef nonnull @.str.92) #14 ; 0 uses
  br label %.sink.split

bb.e:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %1, align 8, !tbaa !84
  %i.o = tail call i64 @_php_stream_tell(ptr noundef %i.n) #14
  %i.p = load ptr, ptr %1, align 8, !tbaa !84
  %i.q = tail call i32 @_php_stream_seek(ptr noundef %i.p, i64 noundef 0, i32 noundef 0) #14 ; 0 uses
  %i.r = load ptr, ptr %1, align 8, !tbaa !84
  %i.s = tail call i32 @_php_stream_copy_to_stream_ex(ptr noundef %i.r, ptr noundef nonnull %i.i, i64 noundef %i.o, ptr noundef null) #14 ; 0 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !85
  %i.v = tail call i64 @_php_stream_tell(ptr noundef %i.u) #14
  %i.w = load ptr, ptr %i.t, align 8, !tbaa !85
  %i.x = tail call i32 @_php_stream_seek(ptr noundef %i.w, i64 noundef 0, i32 noundef 0) #14 ; 0 uses
  %i.y = load ptr, ptr %i.t, align 8, !tbaa !85
  %i.z = tail call i32 @_php_stream_copy_to_stream_ex(ptr noundef %i.y, ptr noundef nonnull %i.i, i64 noundef %i.v, ptr noundef null) #14 ; 0 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !89 ; 3 uses
  %.not48 = icmp eq ptr %i.ab, null
  br i1 %.not48, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !62
  %i.af = tail call i64 @_php_stream_write(ptr noundef nonnull %i.i, ptr noundef nonnull %i.ac, i64 noundef %i.ae) #14 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !79
  %i.ai = call i32 @phar_create_signature(ptr noundef nonnull %0, ptr noundef nonnull %i.i, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, ptr noundef %i.ah) #14
  %i.aj = icmp eq i32 %i.ai, -1
  br i1 %i.aj, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.ak = load ptr, ptr %i.ag, align 8, !tbaa !79 ; 3 uses
  %.not54 = icmp eq ptr %i.ak, null
  br i1 %.not54, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !67 ; 2 uses
  %i.am = call i64 (ptr, i64, ptr, ...) @zend_spprintf(ptr noundef nonnull %i.ak, i64 noundef 0, ptr noundef nonnull @.str.93, ptr noundef %i.al) #14 ; 0 uses
  call void @_efree(ptr noundef %i.al) #14
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.an = call i32 @_php_stream_free(ptr noundef nonnull %i.i, i32 noundef 3) #14 ; 0 uses
  br label %.sink.split

bb.k:                                             ; preds = %bb.g
  %i.ao = call ptr @_php_stream_fopen_tmpfile(i32 noundef 0) #14 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 88
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !91
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 56
  store i32 2, ptr %i.aq, align 8, !tbaa !41
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 146
  store i16 2, ptr %i.ar, align 2
  %i.as = icmp eq ptr %i.ao, null
  br i1 %i.as, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.at = load ptr, ptr %i.b, align 8, !tbaa !67
  call void @_efree(ptr noundef %i.at) #14
  %i.au = load ptr, ptr %i.ag, align 8, !tbaa !79
  %i.av = call i64 (ptr, i64, ptr, ...) @zend_spprintf(ptr noundef %i.au, i64 noundef 0, ptr noundef nonnull @.str.94) #14 ; 0 uses
  %i.aw = call i32 @_php_stream_free(ptr noundef nonnull %i.i, i32 noundef 3) #14 ; 0 uses
  br label %.sink.split

bb.m:                                             ; preds = %bb.k
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !66
  store i32 %i.ay, ptr %i.c, align 4
  %i.az = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.ba = load i64, ptr %i.a, align 8, !tbaa !48
  %i.bb = trunc i64 %i.ba to i32
  store i32 %i.bb, ptr %i.az, align 4
  %i.bc = call i64 @_php_stream_write(ptr noundef nonnull %i.ao, ptr noundef nonnull %i.c, i64 noundef 8) #14
  %.not49 = icmp eq i64 %i.bc, 8
  br i1 %.not49, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bd = load i64, ptr %i.a, align 8, !tbaa !48  ; 2 uses
  %i.be = load ptr, ptr %i.b, align 8, !tbaa !67
  %i.bf = call i64 @_php_stream_write(ptr noundef nonnull %i.ao, ptr noundef %i.be, i64 noundef %i.bd) #14
  %.not50 = icmp eq i64 %i.bd, %i.bf
  br i1 %.not50, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bg = load ptr, ptr %i.b, align 8, !tbaa !67
  call void @_efree(ptr noundef %i.bg) #14
  %i.bh = load ptr, ptr %i.ag, align 8, !tbaa !79 ; 2 uses
  %.not53 = icmp eq ptr %i.bh, null
  br i1 %.not53, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bi = load ptr, ptr %0, align 8, !tbaa !29
  %i.bj = call i64 (ptr, i64, ptr, ...) @zend_spprintf(ptr noundef nonnull %i.bh, i64 noundef 0, ptr noundef nonnull @.str.95, ptr noundef %i.bi) #14 ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bk = call i32 @_php_stream_free(ptr noundef nonnull %i.i, i32 noundef 3) #14 ; 0 uses
  br label %.sink.split

bb.r:                                             ; preds = %bb.n
  %i.bl = alloca [48 x i8], align 16              ; 7 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr %i.bl, ptr %i.bm, align 8, !tbaa !63
  store i32 1, ptr %i.bl, align 16, !tbaa !59
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  store i32 22, ptr %i.bn, align 4, !tbaa !13
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store i64 0, ptr %i.bo, align 8, !tbaa !60
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  store i64 19, ptr %i.bp, align 16, !tbaa !62
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(19) %i.bq, ptr noundef nonnull align 1 dereferenceable(19) @.str.15, i64 19, i1 false)
  %i.br = getelementptr inbounds nuw i8, ptr %i.bl, i64 43
  store i8 0, ptr %i.br, align 1, !tbaa !13
  %i.bs = load ptr, ptr %i.b, align 8, !tbaa !67
  call void @_efree(ptr noundef %i.bs) #14
  %i.bt = load i64, ptr %i.a, align 8, !tbaa !48
  %i.bu = trunc i64 %i.bt to i32
  %i.bv = add i32 %i.bu, 8                        ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.bv, ptr %i.bw, align 8, !tbaa !72
  store i32 %i.bv, ptr %2, align 8, !tbaa !46
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 120
  store ptr %0, ptr %i.bx, align 8, !tbaa !38
  %i.by = call fastcc i32 @phar_zip_changed_apply_int(ptr noundef nonnull %2, ptr noundef nonnull %1) ; 0 uses
  %i.bz = call i32 @_php_stream_free(ptr noundef nonnull %i.i, i32 noundef 3) #14 ; 0 uses
  %i.ca = load ptr, ptr %i.ag, align 8, !tbaa !79 ; 2 uses
  %.not51 = icmp eq ptr %i.ca, null
  br i1 %.not51, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !67
  %.not52 = icmp eq ptr %i.cb, null
  br i1 %.not52, label %bb.t, label %.sink.split

bb.t:                                             ; preds = %bb.r, %bb.s
  br label %.sink.split

end_hunk_1
