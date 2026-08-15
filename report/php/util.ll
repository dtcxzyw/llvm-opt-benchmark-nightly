inline.NumInlined: 40
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@phar_seek_efp:bb.a
  br i1 %.not29, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !12
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %phar_get_link_source.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c, %bb.g
  %.015.i = phi ptr [ %i.j, %bb.g ], [ %0, %bb.c ]
  %.0.i = phi ptr [ %i.g, %bb.g ], [ %0, %bb.c ]
  %i.d = tail call fastcc ptr @phar_follow_one_link(ptr noundef nonnull %.0.i) ; 4 uses
  %.not20.i = icmp eq ptr %i.d, null
  br i1 %.not20.i, label %phar_get_link_source.exit, label %bb.d

bb.d:                                             ; preds = %.preheader.i
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !12
  %.not21.i = icmp eq ptr %i.f, null
  br i1 %.not21.i, label %phar_get_link_source.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = tail call fastcc ptr @phar_follow_one_link(ptr noundef nonnull %i.d) ; 5 uses
  %.not22.i = icmp eq ptr %i.g, null
  br i1 %.not22.i, label %phar_get_link_source.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 128
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !12
  %.not23.i = icmp eq ptr %i.i, null
  br i1 %.not23.i, label %phar_get_link_source.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = tail call fastcc ptr @phar_follow_one_link(ptr noundef %.015.i) ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.g
  br i1 %i.k, label %phar_get_link_source.exit, label %.preheader.i

phar_get_link_source.exit:                        ; preds = %.preheader.i, %bb.d, %bb.e, %bb.f, %bb.g, %bb.c
  %.016.i = phi ptr [ %0, %bb.c ], [ null, %bb.e ], [ null, %.preheader.i ], [ %i.d, %bb.d ], [ %i.g, %bb.f ], [ null, %bb.g ] ; 2 uses
  %.not30 = icmp eq ptr %.016.i, null
  %spec.select = select i1 %.not30, ptr %0, ptr %.016.i
  br label %bb.h

bb.h:                                             ; preds = %phar_get_link_source.exit, %bb.b
  %.1 = phi ptr [ %spec.select, %phar_get_link_source.exit ], [ %0, %bb.b ] ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.1, i64 146
  %i.m = load i16, ptr %i.l, align 2              ; 2 uses
  %i.n = and i16 %i.m, 8
  %.not31 = icmp eq i16 %i.n, 0
  br i1 %.not31, label %bb.i, label %bb.t

bb.i:                                             ; preds = %bb.h
  %i.o = and i16 %i.m, 256
  %.not.i32 = icmp eq i16 %i.o, 0
  br i1 %.not.i32, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.p = getelementptr inbounds nuw i8, ptr %.1, i64 72
  br label %phar_get_fp_offset.exit

bb.k:                                             ; preds = %bb.i
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @phar_globals, i64 112), align 8, !tbaa !34
  %i.r = getelementptr inbounds nuw i8, ptr %.1, i64 120
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !31
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 312
  %i.u = load i32, ptr %i.t, align 8, !tbaa !39
  %i.v = zext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !41
  %i.z = getelementptr inbounds nuw i8, ptr %.1, i64 140
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !44
  %i.ab = zext i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %i.ab ; 3 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !52
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !54
  %.not11.i = icmp eq i64 %i.ag, 0
  br i1 %.not11.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ah = getelementptr inbounds nuw i8, ptr %.1, i64 72
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !55
  store i64 %i.ai, ptr %i.af, align 8, !tbaa !54
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  br label %phar_get_fp_offset.exit

phar_get_fp_offset.exit:                          ; preds = %bb.j, %bb.n
  %.0.in.i = phi ptr [ %i.aj, %bb.n ], [ %i.p, %bb.j ]
  %.0.i33 = load i64, ptr %.0.in.i, align 8, !tbaa !56 ; 5 uses
  switch i32 %2, label %bb.r [
    i32 2, label %bb.o
    i32 1, label %bb.p
    i32 0, label %bb.q
  ]

bb.o:                                             ; preds = %phar_get_fp_offset.exit
  %i.ak = load i32, ptr %.1, align 8, !tbaa !57
  %i.al = zext i32 %i.ak to i64
  %i.am = add i64 %.0.i33, %1
  %i.an = add i64 %i.am, %i.al
  br label %bb.r

bb.p:                                             ; preds = %phar_get_fp_offset.exit
  %i.ao = add i64 %3, %1
  %i.ap = add i64 %i.ao, %.0.i33
  br label %bb.r

bb.q:                                             ; preds = %phar_get_fp_offset.exit
  %i.aq = add nsw i64 %.0.i33, %1
  br label %bb.r

bb.r:                                             ; preds = %phar_get_fp_offset.exit, %bb.q, %bb.p, %bb.o
  %.026 = phi i64 [ %i.aq, %bb.q ], [ %i.an, %bb.o ], [ %i.ap, %bb.p ], [ 0, %phar_get_fp_offset.exit ] ; 3 uses
  %i.ar = load i32, ptr %.1, align 8, !tbaa !57
  %i.as = zext i32 %i.ar to i64
  %i.at = add nsw i64 %.0.i33, %i.as
  %i.au = icmp sgt i64 %.026, %i.at
  %i.av = icmp slt i64 %.026, %.0.i33
  %or.cond = or i1 %i.av, %i.au
  br i1 %or.cond, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aw = tail call i32 @_php_stream_seek(ptr noundef nonnull %i.a, i64 noundef %.026, i32 noundef 0) #15
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.h, %bb.a, %bb.s
  %.0 = phi i32 [ -1, %bb.a ], [ 0, %bb.h ], [ -1, %bb.r ], [ %i.aw, %bb.s ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i64 @phar_get_fp_offset(ptr nofree noundef readonly captures(none) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 146
  %i.b = load i16, ptr %i.a, align 2
  %i.c = and i16 %i.b, 256
  %.not = icmp eq i16 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @phar_globals, i64 112), align 8, !tbaa !34
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !31
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 312
  %i.i = load i32, ptr %i.h, align 8, !tbaa !39
  %i.j = zext i32 %i.i to i64
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !41
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.o = load i32, ptr %i.n, align 4, !tbaa !44
  %i.p = zext i32 %i.o to i64
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.p ; 3 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !52
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !54
  %.not11 = icmp eq i64 %i.u, 0
  br i1 %.not11, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.w = load i64, ptr %i.v, align 8, !tbaa !55
  store i64 %i.w, ptr %i.t, align 8, !tbaa !54
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.b
  %.0.in = phi ptr [ %i.x, %bb.f ], [ %i.d, %bb.b ]
  %.0 = load i64, ptr %.0.in, align 8, !tbaa !56
  ret i64 %.0
}

declare i32 @_php_stream_seek(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden range(i32 -1, 1) i32 @phar_mount_entry(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct._zval_struct, align 8       ; 6 uses
  %6 = alloca %struct._zval_struct, align 8       ; 5 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %.sroa.7 = alloca [28 x i8], align 4            ; 4 uses
  %.sroa.13 = alloca [52 x i8], align 4           ; 4 uses
  %.sroa.22 = alloca [18 x i8], align 8           ; 4 uses
  %7 = alloca %struct._php_stream_statbuf, align 8 ; 5 uses
  %i.c = alloca ptr, align 8                      ; 3 uses
  store ptr %3, ptr %i.a, align 8, !tbaa !23
  store i64 %4, ptr %i.b, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.22)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.7, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %.sroa.13, i8 0, i64 52, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(18) %.sroa.22, i8 0, i64 18, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  %i.d = call i32 @phar_path_check(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #15
  %i.e = icmp ugt i32 %i.d, 1
  br i1 %i.e, label %zend_string_release_ex.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr %i.b, align 8, !tbaa !56   ; 2 uses
  %.not.i22 = icmp eq i64 %i.f, 0
  br i1 %.not.i22, label %phar_path_is_magic_phar_ex.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !23   ; 2 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !24
  %i.i = icmp eq i8 %i.h, 47                      ; 2 uses
  %.09.idx.i = zext i1 %i.i to i64
  %.09.i = getelementptr inbounds nuw i8, ptr %i.g, i64 %.09.idx.i ; 3 uses
  %i.j = sext i1 %i.i to i64
  %.0.i23 = add i64 %i.f, %i.j                    ; 2 uses
  %i.k = icmp ult i64 %.0.i23, 5
  br i1 %i.k, label %phar_path_is_magic_phar_ex.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = load i32, ptr %.09.i, align 1
  %i.m = xor i32 %i.l, 1634234414
  %i.n = getelementptr i8, ptr %.09.i, i64 4
  %i.o = load i8, ptr %i.n, align 1
  %i.p = zext i8 %i.o to i32
  %i.q = xor i32 %i.p, 114
  %i.r = or i32 %i.m, %i.q
  %i.s = icmp ne i32 %i.r, 0
  %i.t = zext i1 %i.s to i32
  %.not13.i = icmp eq i32 %i.t, 0
  br i1 %.not13.i, label %bb.e, label %phar_path_is_magic_phar_ex.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.u = icmp eq i64 %.0.i23, 5
  br i1 %i.u, label %zend_string_release_ex.exit, label %phar_path_is_magic_phar_ex.exit

phar_path_is_magic_phar_ex.exit:                  ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %.09.i, i64 5
  %i.w = load i8, ptr %i.v, align 1, !tbaa !24
  switch i8 %i.w, label %phar_path_is_magic_phar_ex.exit.thread [
    i8 92, label %zend_string_release_ex.exit
    i8 47, label %zend_string_release_ex.exit
  ]

phar_path_is_magic_phar_ex.exit.thread:           ; preds = %phar_path_is_magic_phar_ex.exit, %bb.b, %bb.d, %bb.c
  %i.x = icmp ugt i64 %2, 7
  br i1 %i.x, label %bb.f, label %.thread

bb.f:                                             ; preds = %phar_path_is_magic_phar_ex.exit.thread
  %i.y = load i32, ptr %1, align 1
  %i.z = xor i32 %i.y, 1918986352
  %i.aa = getelementptr i8, ptr %1, i64 3
  %i.ab = load i32, ptr %i.aa, align 1
  %i.ac = xor i32 %i.ab, 791624306
  %i.ad = or i32 %i.z, %i.ac
  %i.ae = icmp ne i32 %i.ad, 0
  %i.af = zext i1 %i.ae to i32
  %.not = icmp eq i32 %i.af, 0
  br i1 %.not, label %bb.h, label %.thread

.thread:                                          ; preds = %phar_path_is_magic_phar_ex.exit.thread, %bb.f
  %i.ag = call ptr @expand_filepath(ptr noundef %1, ptr noundef null) #15 ; 2 uses
  %.not14 = icmp eq ptr %i.ag, null
  br i1 %.not14, label %bb.g, label %bb.i

bb.g:                                             ; preds = %.thread
  %i.ah = call noalias ptr @_estrndup(ptr noundef %1, i64 noundef %2) #15
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ai = call noalias ptr @_estrndup(ptr noundef nonnull %1, i64 noundef %2) #15
  br label %bb.k

bb.i:                                             ; preds = %bb.g, %.thread
  %.sroa.1330.0.ph = phi ptr [ %i.ag, %.thread ], [ %i.ah, %bb.g ] ; 3 uses
  %i.aj = call i32 @php_check_open_basedir(ptr noundef %.sroa.1330.0.ph) #15
  %.not15 = icmp eq i32 %i.aj, 0
  br i1 %.not15, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_efree(ptr noundef %.sroa.1330.0.ph) #15
  br label %zend_string_release_ex.exit

bb.k:                                             ; preds = %bb.h, %bb.i
  %.sroa.1330.047 = phi ptr [ %.sroa.1330.0.ph, %bb.i ], [ %i.ai, %bb.h ] ; 5 uses
  %i.ak = call i32 @_php_stream_stat_path(ptr noundef %.sroa.1330.047, i32 noundef 0, ptr noundef nonnull %7, ptr noundef null) #15
  %.not16 = icmp eq i32 %i.ak, 0
  br i1 %.not16, label %zend_string_alloc.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_efree(ptr noundef %.sroa.1330.047) #15
  br label %zend_string_release_ex.exit

zend_string_alloc.exit:                           ; preds = %bb.k
  %i.al = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.am = load i64, ptr %i.b, align 8, !tbaa !56  ; 4 uses
  %i.an = and i64 %i.am, -8
  %i.ao = add i64 %i.an, 32
  %i.ap = call noalias ptr @_emalloc(i64 noundef %i.ao) #17 ; 13 uses
  store i32 1, ptr %i.ap, align 4, !tbaa !26
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 4 ; 2 uses
  store i32 22, ptr %i.aq, align 4, !tbaa !24
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store i64 0, ptr %i.ar, align 8, !tbaa !28
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store i64 %i.am, ptr %i.as, align 8, !tbaa !30
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.at, ptr align 1 %i.al, i64 %i.am, i1 false)
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.am
  store i8 0, ptr %i.au, align 1, !tbaa !24
  %i.av = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !58 ; 2 uses
  %i.ax = and i32 %i.aw, 16384
  %.not17 = icmp eq i32 %i.ax, 0
  br i1 %.not17, label %bb.o, label %bb.m

bb.m:                                             ; preds = %zend_string_alloc.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 176
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  store ptr %i.ap, ptr %6, align 8, !tbaa !24
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 13, ptr %i.az, align 8, !tbaa !24
  %i.ba = call ptr @zend_hash_add(ptr noundef nonnull %i.ay, ptr noundef nonnull %i.ap, ptr noundef nonnull %6) #15
  %.not.i = icmp eq ptr %i.ba, null
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  br i1 %.not.i, label %bb.n, label %zend_hash_add_ptr.exit

zend_hash_add_ptr.exit:                           ; preds = %bb.m
  %.pre = load i32, ptr %i.av, align 8, !tbaa !58
  br label %bb.p

bb.n:                                             ; preds = %bb.m
  call void @_efree(ptr noundef %.sroa.1330.047) #15
  call void @_efree(ptr noundef nonnull %i.ap) #15
  br label %zend_string_release_ex.exit

bb.o:                                             ; preds = %zend_string_alloc.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !62
  %i.bd = trunc i64 %i.bc to i32
  br label %bb.p

bb.p:                                             ; preds = %zend_hash_add_ptr.exit, %bb.o
  %i.be = phi i32 [ %i.aw, %bb.o ], [ %.pre, %zend_hash_add_ptr.exit ]
  %.sroa.524.0 = phi i32 [ %i.bd, %bb.o ], [ 0, %zend_hash_add_ptr.exit ] ; 2 uses
  %.sroa.2235.0 = phi i16 [ 17, %bb.o ], [ 25, %zend_hash_add_ptr.exit ]
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  store ptr null, ptr %5, align 8, !tbaa !24
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 13, ptr %i.bg, align 8, !tbaa !24
  %i.bh = call ptr @zend_hash_add(ptr noundef nonnull %i.bf, ptr noundef nonnull %i.ap, ptr noundef nonnull %5) #15 ; 2 uses
  %.not.i19 = icmp eq ptr %i.bh, null
  br i1 %.not.i19, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !24
  %i.bk = and i32 %i.bj, 128
  %.not46.i = icmp eq i32 %i.bk, 0
  br i1 %.not46.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bl = call noalias dereferenceable_or_null(152) ptr @__zend_malloc(i64 noundef 152) #17
  br label %zend_hash_add_mem.exit

bb.s:                                             ; preds = %bb.q
  %i.bm = call noalias ptr @_emalloc_160() #15
  br label %zend_hash_add_mem.exit

zend_hash_add_mem.exit:                           ; preds = %bb.r, %bb.s
  %i.bn = phi ptr [ %i.bl, %bb.r ], [ %i.bm, %bb.s ] ; 15 uses
  store ptr %i.bn, ptr %i.bh, align 8, !tbaa !24
  store i32 %.sroa.524.0, ptr %i.bn, align 1
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  store i32 0, ptr %.sroa.5.0..sroa_idx, align 1
  %.sroa.524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store i32 %.sroa.524.0, ptr %.sroa.524.0..sroa_idx, align 1
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bn, i64 12
  store i32 0, ptr %.sroa.6.0..sroa_idx, align 1
  %.sroa.625.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  store i32 %i.be, ptr %.sroa.625.0..sroa_idx, align 1
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bn, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.7, i64 28, i1 false)
  %.sroa.726.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bn, i64 48
  store ptr %i.ap, ptr %.sroa.726.0..sroa_idx, align 1
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bn, i64 56
  store i32 3, ptr %.sroa.12.0..sroa_idx, align 1
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bn, i64 60
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(52) %.sroa.13.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(52) %.sroa.13, i64 52, i1 false)
  %.sroa.1330.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bn, i64 112
  store ptr %.sroa.1330.047, ptr %.sroa.1330.0..sroa_idx, align 1
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bn, i64 120
  store ptr %0, ptr %.sroa.21.0..sroa_idx, align 1
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bn, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %.sroa.22.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(18) %.sroa.22, i64 18, i1 false)
  %.sroa.2235.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bn, i64 146
  store i16 %.sroa.2235.0, ptr %.sroa.2235.0..sroa_idx, align 1
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bn, i64 148
  store i32 0, ptr %.sroa.28.0..sroa_idx, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br label %zend_string_release_ex.exit

bb.t:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  call void @_efree(ptr noundef %.sroa.1330.047) #15
  %i.bo = load i32, ptr %i.aq, align 4, !tbaa !24
  %i.bp = and i32 %i.bo, 64
  %.not.i21 = icmp eq i32 %i.bp, 0
  br i1 %.not.i21, label %bb.u, label %zend_string_release_ex.exit

bb.u:                                             ; preds = %bb.t
  %i.bq = load i32, ptr %i.ap, align 8, !tbaa !26 ; 2 uses
  %i.br = icmp ne i32 %i.bq, 0
  call void @llvm.assume(i1 %i.br)
  %i.bs = add i32 %i.bq, -1                       ; 2 uses
  store i32 %i.bs, ptr %i.ap, align 8, !tbaa !26
  %i.bt = icmp eq i32 %i.bs, 0
  br i1 %i.bt, label %bb.v, label %zend_string_release_ex.exit

bb.v:                                             ; preds = %bb.u
  call void @_efree(ptr noundef nonnull %i.ap) #15
  br label %zend_string_release_ex.exit

zend_string_release_ex.exit:                      ; preds = %zend_hash_add_mem.exit, %phar_path_is_magic_phar_ex.exit, %phar_path_is_magic_phar_ex.exit, %bb.e, %bb.v, %bb.u, %bb.t, %bb.a, %bb.n, %bb.l, %bb.j
  %.0 = phi i32 [ -1, %bb.j ], [ -1, %bb.a ], [ -1, %bb.l ], [ -1, %bb.n ], [ -1, %phar_path_is_magic_phar_ex.exit ], [ -1, %bb.v ], [ 0, %zend_hash_add_mem.exit ], [ -1, %bb.t ], [ -1, %bb.u ], [ -1, %bb.e ], [ -1, %phar_path_is_magic_phar_ex.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.22)
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare i32 @phar_path_check(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare noalias ptr @_estrndup(ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @expand_filepath(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @php_check_open_basedir(ptr noundef) local_unnamed_addr #2

declare void @_efree(ptr noundef) local_unnamed_addr #2

declare i32 @_php_stream_stat_path(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden ptr @phar_find_in_include_path(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 16 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 8 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = alloca ptr, align 8                      ; 7 uses
  %i.g = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #15
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %1, align 8, !tbaa !63
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.044 = phi ptr [ %1, %bb.b ], [ %i.f, %bb.a ]  ; 3 uses
  %i.h = tail call zeroext i1 @zend_is_executing() #15
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @phar_globals, i64 384), align 8
  %i.j = icmp ne ptr %i.i, null
  %or.cond = select i1 %i.h, i1 %i.j, i1 false
  br i1 %or.cond, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.k = tail call ptr @zend_get_executed_filename_ex() #15 ; 4 uses
  %.not49 = icmp eq ptr %i.k, null
  br i1 %.not49, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !30   ; 3 uses
  %i.n = icmp ugt i64 %i.m, 6
  br i1 %i.n, label %zend_string_starts_with_cstr_ci.exit56, label %.thread

zend_string_starts_with_cstr_ci.exit56:           ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 2 uses
  %i.p = tail call i32 @strncasecmp(ptr noundef nonnull %i.o, ptr noundef nonnull @.str.1, i64 noundef 7) #16
  %.not.i55 = icmp eq i32 %i.p, 0                 ; 2 uses
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @phar_globals, i64 448), align 8, !tbaa !64
  %i.r = icmp ne ptr %i.q, null
  %or.cond3 = select i1 %i.r, i1 %.not.i55, i1 false
  br i1 %or.cond3, label %bb.f, label %bb.i

bb.f:                                             ; preds = %zend_string_starts_with_cstr_ci.exit56
  %i.s = add i64 %i.m, -7
  %i.t = load i32, ptr getelementptr inbounds nuw (i8, ptr @phar_globals, i64 424), align 8, !tbaa !65
  %i.u = zext i32 %i.t to i64                     ; 3 uses
  %.not50 = icmp ult i64 %i.s, %i.u
  br i1 %.not50, label %.thread73, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 31
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @phar_globals, i64 416), align 8, !tbaa !66 ; 2 uses
  %bcmp = tail call i32 @bcmp(ptr nonnull %i.v, ptr %i.w, i64 %i.u)
  %.not51 = icmp eq i32 %bcmp, 0
  br i1 %.not51, label %bb.h, label %.thread73

bb.h:                                             ; preds = %bb.g
  %i.x = tail call noalias ptr @_estrndup(ptr noundef %i.w, i64 noundef %i.u) #15
  store ptr %i.x, ptr %i.b, align 8, !tbaa !23
  %i.y = load i32, ptr getelementptr inbounds nuw (i8, ptr @phar_globals, i64 424), align 8, !tbaa !65
  %i.z = zext i32 %i.y to i64
  store i64 %i.z, ptr %i.d, align 8, !tbaa !56
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @phar_globals, i64 448), align 8, !tbaa !64 ; 2 uses
  store ptr %i.aa, ptr %i.f, align 8, !tbaa !63
  br label %bb.m

bb.i:                                             ; preds = %zend_string_starts_with_cstr_ci.exit56
  br i1 %.not.i55, label %.thread73, label %.thread

.thread73:                                        ; preds = %bb.f, %bb.g, %bb.i
  %i.ab = call i32 @phar_split_fname(ptr noundef nonnull %i.o, i64 noundef %i.m, ptr noundef nonnull %i.b, ptr noundef nonnull %i.d, ptr noundef nonnull %i.c, ptr noundef nonnull %i.e, i32 noundef 1, i32 noundef 0) #15
  %.not52 = icmp eq i32 %i.ab, 0
  br i1 %.not52, label %bb.j, label %.thread

bb.j:                                             ; preds = %.thread73
  %i.ac = load ptr, ptr %i.c, align 8, !tbaa !23
  call void @_efree(ptr noundef %i.ac) #15
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ae = load i8, ptr %i.ad, align 8, !tbaa !24
  %i.af = icmp eq i8 %i.ae, 46
  br i1 %i.af, label %bb.k, label %bb.s

bb.k:                                             ; preds = %bb.j
  %i.ag = load ptr, ptr %i.b, align 8, !tbaa !23
  %i.ah = load i64, ptr %i.d, align 8, !tbaa !56
  %i.ai = call i32 @phar_get_archive(ptr noundef nonnull %i.f, ptr noundef %i.ag, i64 noundef %i.ah, ptr noundef null, i64 noundef 0, ptr noundef null)
  %i.aj = icmp eq i32 %i.ai, -1
  br i1 %i.aj, label %bb.l, label %._crit_edge

._crit_edge:                                      ; preds = %bb.k
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !63
  br label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ak = load ptr, ptr %i.b, align 8, !tbaa !23
  br label %.thread.sink.split

bb.m:                                             ; preds = %._crit_edge, %bb.h
  %i.al = phi ptr [ %.pre, %._crit_edge ], [ %i.aa, %bb.h ]
  store ptr %i.al, ptr %.044, align 8, !tbaa !63
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.an = load i64, ptr %i.am, align 8, !tbaa !30 ; 2 uses
  store i64 %i.an, ptr %i.g, align 8, !tbaa !56
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ap = call noalias ptr @_estrndup(ptr noundef nonnull %i.ao, i64 noundef %i.an) #15
  %i.aq = call ptr @phar_fix_filepath(ptr noundef %i.ap, ptr noundef nonnull %i.g, i32 noundef 1) #15 ; 8 uses
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !24
  %i.as = icmp eq i8 %i.ar, 47
  %i.at = load ptr, ptr %i.f, align 8, !tbaa !63
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 64 ; 2 uses
  br i1 %i.as, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 1
  %i.aw = load i64, ptr %i.g, align 8, !tbaa !56
  %i.ax = add i64 %i.aw, -1
  %i.ay = call ptr @zend_hash_str_find(ptr noundef nonnull %i.au, ptr noundef nonnull %i.av, i64 noundef %i.ax) #15
  %.not65 = icmp eq ptr %i.ay, null
  br i1 %.not65, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.az = load ptr, ptr %i.b, align 8, !tbaa !23
  %i.ba = call ptr (i64, ptr, ...) @zend_strpprintf(i64 noundef 0, ptr noundef nonnull @.str.2, ptr noundef %i.az, ptr noundef nonnull %i.aq) #15
  %i.bb = load ptr, ptr %i.b, align 8, !tbaa !23
  call void @_efree(ptr noundef %i.bb) #15
  br label %.thread.sink.split

bb.p:                                             ; preds = %bb.m
  %i.bc = load i64, ptr %i.g, align 8, !tbaa !56
  %i.bd = call ptr @zend_hash_str_find(ptr noundef nonnull %i.au, ptr noundef nonnull %i.aq, i64 noundef %i.bc) #15
  %.not64 = icmp eq ptr %i.bd, null
  br i1 %.not64, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.be = load ptr, ptr %i.b, align 8, !tbaa !23
  %i.bf = call ptr (i64, ptr, ...) @zend_strpprintf(i64 noundef 0, ptr noundef nonnull @.str.3, ptr noundef %i.be, ptr noundef nonnull %i.aq) #15
  %i.bg = load ptr, ptr %i.b, align 8, !tbaa !23
  call void @_efree(ptr noundef %i.bg) #15
  br label %.thread.sink.split

bb.r:                                             ; preds = %bb.p, %bb.n
  call void @_efree(ptr noundef nonnull %i.aq) #15
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.j
  %i.bh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @core_globals, i64 88), align 8, !tbaa !67 ; 2 uses
  %i.bi = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bh) #16
  %i.bj = add i64 %i.bi, 4097
  %i.bk = load ptr, ptr %i.b, align 8, !tbaa !23
  %i.bl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @phar_globals, i64 384), align 8, !tbaa !72
  %i.bm = call i64 (ptr, i64, ptr, ...) @zend_spprintf(ptr noundef nonnull %i.a, i64 noundef %i.bj, ptr noundef nonnull @.str.4, ptr noundef %i.bk, ptr noundef %i.bl, i32 noundef 58, ptr noundef nonnull %i.bh) #15 ; 0 uses
  %i.bn = load ptr, ptr %i.b, align 8, !tbaa !23
  call void @_efree(ptr noundef %i.bn) #15
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !30
  %i.br = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.bs = call ptr @php_resolve_path(ptr noundef nonnull %i.bo, i64 noundef %i.bq, ptr noundef %i.br) #15 ; 7 uses
  %i.bt = load ptr, ptr %i.a, align 8, !tbaa !23
  call void @_efree(ptr noundef %i.bt) #15
  %.not53 = icmp eq ptr %i.bs, null
  br i1 %.not53, label %.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !30 ; 2 uses
  %i.bw = icmp ugt i64 %i.bv, 6
  br i1 %i.bw, label %zend_string_starts_with_cstr_ci.exit, label %.thread

zend_string_starts_with_cstr_ci.exit:             ; preds = %bb.t
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bs, i64 24 ; 2 uses
  %i.by = call i32 @strncasecmp(ptr noundef nonnull %i.bx, ptr noundef nonnull @.str.1, i64 noundef 7) #16
  %.not.i = icmp eq i32 %i.by, 0
end_hunk_0
begin_hunk_1_@phar_open_entry_fp:bb.a
  %i.ei = zext i32 %i.eh to i64
  %i.ej = getelementptr inbounds nuw [24 x i8], ptr %i.ee, i64 %i.ei
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  br label %phar_get_entrypufp.exit128

phar_get_entrypufp.exit128:                       ; preds = %bb.ah, %bb.ai
  %.0.in.i126 = phi ptr [ %i.ek, %bb.ai ], [ %i.ed, %bb.ah ]
  %.0.i127 = load ptr, ptr %.0.in.i126, align 8, !tbaa !45 ; 7 uses
  %i.el = and i16 %i.ea, 2                        ; 2 uses
  %.not.i129 = icmp eq i16 %i.el, 0
  %.0.in.v.i = select i1 %.not.i129, i64 16, i64 20
  %.0.in.i130 = getelementptr inbounds nuw i8, ptr %0, i64 %.0.in.v.i
  %.0.i131 = load i32, ptr %.0.in.i130, align 4, !tbaa !33
  %i.em = trunc i32 %.0.i131 to i16
  %trunc.i = and i16 %i.em, -4096
  switch i16 %trunc.i, label %phar_decompress_filter.exit.thread166 [
    i16 4096, label %phar_decompress_filter.exit
    i16 8192, label %bb.aj
  ]

bb.aj:                                            ; preds = %phar_get_entrypufp.exit128
  br label %phar_decompress_filter.exit

phar_decompress_filter.exit:                      ; preds = %phar_get_entrypufp.exit128, %bb.aj
  %.05.i.ph = phi ptr [ @.str.24, %phar_get_entrypufp.exit128 ], [ @.str.25, %bb.aj ]
  %i.en = call ptr @php_stream_filter_create(ptr noundef nonnull %.05.i.ph, ptr noundef null, i8 noundef zeroext 0) #15 ; 5 uses
  %.not98 = icmp eq ptr %i.en, null
  br i1 %.not98, label %phar_decompress_filter.exit.phar_decompress_filter.exit.thread166_crit_edge, label %bb.ak

phar_decompress_filter.exit.phar_decompress_filter.exit.thread166_crit_edge: ; preds = %phar_decompress_filter.exit
  %.pre172 = load i16, ptr %i.n, align 2
  %.pre173 = and i16 %.pre172, 2
  br label %phar_decompress_filter.exit.thread166

phar_decompress_filter.exit.thread166:            ; preds = %phar_decompress_filter.exit.phar_decompress_filter.exit.thread166_crit_edge, %phar_get_entrypufp.exit128
  %.pre-phi = phi i16 [ %.pre173, %phar_decompress_filter.exit.phar_decompress_filter.exit.thread166_crit_edge ], [ %i.el, %phar_get_entrypufp.exit128 ]
  %i.eo = load ptr, ptr %i.b, align 8, !tbaa !46
  %.not.i132 = icmp eq i16 %.pre-phi, 0
  %.0.in.v.i133 = select i1 %.not.i132, i64 16, i64 20
  %.0.in.i134 = getelementptr inbounds nuw i8, ptr %0, i64 %.0.in.v.i133
  %.0.i135 = load i32, ptr %.0.in.i134, align 4, !tbaa !33
  %i.ep = trunc i32 %.0.i135 to i16
  %trunc.i136 = and i16 %i.ep, -4096              ; 2 uses
  %switch.selectcmp = icmp eq i16 %trunc.i136, 8192
  %switch.select = select i1 %switch.selectcmp, ptr @.str.25, ptr @.str.23
  %switch.selectcmp169 = icmp eq i16 %trunc.i136, 4096
  %switch.select170 = select i1 %switch.selectcmp169, ptr @.str.24, ptr %switch.select
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !25
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 24
  %i.et = call i64 (ptr, i64, ptr, ...) @zend_spprintf(ptr noundef %1, i64 noundef 4096, ptr noundef nonnull @.str.17, ptr noundef %i.eo, ptr noundef nonnull %switch.select170, ptr noundef nonnull %i.es) #15 ; 0 uses
  br label %bb.aw

bb.ak:                                            ; preds = %phar_decompress_filter.exit
  %i.eu = call i32 @_php_stream_seek(ptr noundef %.0.i127, i64 noundef 0, i32 noundef 2) #15 ; 0 uses
  %i.ev = call i64 @_php_stream_tell(ptr noundef %.0.i127) #15 ; 4 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.0.i127, i64 40
  call void @_php_stream_filter_append(ptr noundef nonnull %i.ew, ptr noundef nonnull %i.en) #15
  %i.ex = load i16, ptr %i.n, align 2
  %i.ey = and i16 %i.ex, 256
  %.not.i139 = icmp eq i16 %i.ey, 0
  br i1 %.not.i139, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.ez = load ptr, ptr %i.a, align 8, !tbaa !31
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 248
  br label %phar_get_entrypfp.exit

bb.am:                                            ; preds = %bb.ak
  %i.fb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @phar_globals, i64 112), align 8, !tbaa !34
  %i.fc = load ptr, ptr %i.a, align 8, !tbaa !31
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 312
  %i.fe = load i32, ptr %i.fd, align 8, !tbaa !39
  %i.ff = zext i32 %i.fe to i64
  %i.fg = getelementptr inbounds nuw [24 x i8], ptr %i.fb, i64 %i.ff
  br label %phar_get_entrypfp.exit

phar_get_entrypfp.exit:                           ; preds = %bb.al, %bb.am
  %.0.in.i140 = phi ptr [ %i.fg, %bb.am ], [ %i.fa, %bb.al ]
  %.0.i141 = load ptr, ptr %.0.in.i140, align 8, !tbaa !45
  %i.fh = call fastcc i64 @phar_get_fp_offset(ptr noundef nonnull %0)
  %i.fi = call i32 @_php_stream_seek(ptr noundef %.0.i141, i64 noundef %i.fh, i32 noundef 0) #15 ; 0 uses
  %i.fj = load i32, ptr %0, align 8, !tbaa !57
  %.not99 = icmp eq i32 %i.fj, 0
  br i1 %.not99, label %bb.ar, label %bb.an

bb.an:                                            ; preds = %phar_get_entrypfp.exit
  %i.fk = load i16, ptr %i.n, align 2
  %i.fl = and i16 %i.fk, 256
  %.not.i142 = icmp eq i16 %i.fl, 0
  br i1 %.not.i142, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.fm = load ptr, ptr %i.a, align 8, !tbaa !31
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 248
  br label %phar_get_entrypfp.exit145

bb.ap:                                            ; preds = %bb.an
  %i.fo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @phar_globals, i64 112), align 8, !tbaa !34
  %i.fp = load ptr, ptr %i.a, align 8, !tbaa !31
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 312
  %i.fr = load i32, ptr %i.fq, align 8, !tbaa !39
  %i.fs = zext i32 %i.fr to i64
  %i.ft = getelementptr inbounds nuw [24 x i8], ptr %i.fo, i64 %i.fs
  br label %phar_get_entrypfp.exit145

phar_get_entrypfp.exit145:                        ; preds = %bb.ao, %bb.ap
  %.0.in.i143 = phi ptr [ %i.ft, %bb.ap ], [ %i.fn, %bb.ao ]
  %.0.i144 = load ptr, ptr %.0.in.i143, align 8, !tbaa !45
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fv = load i32, ptr %i.fu, align 8, !tbaa !109
  %i.fw = zext i32 %i.fv to i64
  %i.fx = call i32 @_php_stream_copy_to_stream_ex(ptr noundef %.0.i144, ptr noundef nonnull %.0.i127, i64 noundef %i.fw, ptr noundef null) #15
  %.not100 = icmp eq i32 %i.fx, 0
  br i1 %.not100, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %phar_get_entrypfp.exit145
  %i.fy = load ptr, ptr %i.b, align 8, !tbaa !46
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !25
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 24
  %i.gc = call i64 (ptr, i64, ptr, ...) @zend_spprintf(ptr noundef %1, i64 noundef 4096, ptr noundef nonnull @.str.18, ptr noundef %i.fy, ptr noundef nonnull %i.gb) #15 ; 0 uses
  %i.gd = call ptr @php_stream_filter_remove(ptr noundef nonnull %i.en, i1 noundef zeroext true) #15 ; 0 uses
  br label %bb.aw

bb.ar:                                            ; preds = %phar_get_entrypfp.exit145, %phar_get_entrypfp.exit
  %i.ge = call i32 @_php_stream_filter_flush(ptr noundef nonnull %i.en, i1 noundef zeroext true) #15 ; 0 uses
  %i.gf = call i32 @_php_stream_flush(ptr noundef nonnull %.0.i127, i32 noundef 0) #15 ; 0 uses
  %i.gg = call ptr @php_stream_filter_remove(ptr noundef nonnull %i.en, i1 noundef zeroext true) #15 ; 0 uses
  %i.gh = call i64 @_php_stream_tell(ptr noundef nonnull %.0.i127) #15
  %i.gi = sub nsw i64 %i.gh, %i.ev
  %i.gj = load i32, ptr %0, align 8, !tbaa !57
  %i.gk = zext i32 %i.gj to i64
  %.not101 = icmp eq i64 %i.gi, %i.gk
  br i1 %.not101, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.gl = load ptr, ptr %i.b, align 8, !tbaa !46
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !25
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 24
  %i.gp = call i64 (ptr, i64, ptr, ...) @zend_spprintf(ptr noundef %1, i64 noundef 4096, ptr noundef nonnull @.str.18, ptr noundef %i.gl, ptr noundef nonnull %i.go) #15 ; 0 uses
  br label %bb.aw

bb.at:                                            ; preds = %bb.ar
  %i.gq = load i32, ptr %i.bg, align 8, !tbaa !107
  store i32 %i.gq, ptr %i.bd, align 4, !tbaa !108
  %i.gr = load i16, ptr %i.n, align 2
  %i.gs = and i16 %i.gr, 256
  %.not.i146 = icmp eq i16 %i.gs, 0
  br i1 %.not.i146, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  store i32 1, ptr %i.q, align 8, !tbaa !49
  store i64 %i.ev, ptr %i.dl, align 8, !tbaa !55
  br label %phar_set_fp_type.exit

bb.av:                                            ; preds = %bb.at
  %i.gt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @phar_globals, i64 112), align 8, !tbaa !34
  %i.gu = load ptr, ptr %i.a, align 8, !tbaa !31
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 312
  %i.gw = load i32, ptr %i.gv, align 8, !tbaa !39
  %i.gx = zext i32 %i.gw to i64
  %i.gy = getelementptr inbounds nuw [24 x i8], ptr %i.gt, i64 %i.gx
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 16
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !41
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !44
  %i.hd = zext i32 %i.hc to i64
  %i.he = getelementptr inbounds nuw [16 x i8], ptr %i.ha, i64 %i.hd ; 2 uses
  store i32 1, ptr %i.he, align 8, !tbaa !52
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 8
  store i64 %i.ev, ptr %i.hf, align 8, !tbaa !54
  %.pre171 = load i64, ptr %i.dl, align 8, !tbaa !55
  br label %phar_set_fp_type.exit

phar_set_fp_type.exit:                            ; preds = %bb.au, %bb.av
  %i.hg = phi i64 [ %i.ev, %bb.au ], [ %.pre171, %bb.av ]
  store i64 %i.hg, ptr %i.dn, align 8, !tbaa !92
  store ptr %.0.i127, ptr %i.dv, align 8, !tbaa !91
  %i.hh = load i32, ptr %i.dw, align 4, !tbaa !110
  %i.hi = call i32 @phar_postprocess_file(ptr noundef nonnull %3, i32 noundef %i.hh, ptr noundef %1, i32 noundef 0) #15
  %i.hj = icmp eq i32 %i.hi, -1
  %.104 = sext i1 %i.hj to i32
  br label %bb.aw

bb.aw:                                            ; preds = %bb.g, %phar_set_fp_type.exit, %phar_get_pharfp.exit124, %phar_get_pharfp.exit112, %bb.h, %bb.i, %bb.j, %.thread, %bb.as, %bb.aq, %phar_decompress_filter.exit.thread166, %bb.ac, %phar_open_archive_fp.exit.thread
  %.1 = phi i32 [ %i.m, %bb.g ], [ 0, %.thread ], [ 0, %bb.i ], [ 0, %bb.j ], [ -1, %bb.aq ], [ -1, %bb.as ], [ %.104, %phar_set_fp_type.exit ], [ -1, %phar_get_pharfp.exit124 ], [ -1, %phar_decompress_filter.exit.thread166 ], [ -1, %bb.ac ], [ %., %phar_get_pharfp.exit112 ], [ 0, %bb.h ], [ -1, %phar_open_archive_fp.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define hidden ptr @phar_get_or_create_entry_data(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4, i8 noundef signext %5, ptr noundef %6, i32 noundef %7) local_unnamed_addr #0 {
bb.a:
  %8 = alloca %struct._zval_struct, align 8       ; 6 uses
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %.sroa.9 = alloca %struct._phar_metadata_tracker, align 8 ; 4 uses
  %.sroa.14 = alloca [28 x i8], align 4           ; 4 uses
  %.sroa.17 = alloca [12 x i8], align 4           ; 4 uses
  %.sroa.19 = alloca [9 x i8], align 1            ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  store ptr %2, ptr %i.a, align 8, !tbaa !23
  store i64 %3, ptr %i.b, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.17)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.19)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #15
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %2, i64 %3
  %i.g = getelementptr i8, ptr %i.f, i64 -1
  %i.h = load i8, ptr %i.g, align 1, !tbaa !24
  %i.i = icmp eq i8 %i.h, 47
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = phi i1 [ false, %bb.a ], [ %i.i, %bb.b ]
  %i.k = call i32 @phar_get_archive(ptr noundef nonnull %i.c, ptr noundef %0, i64 noundef %1, ptr noundef null, i64 noundef 0, ptr noundef %6)
  %i.l = icmp eq i32 %i.k, -1
  br i1 %i.l, label %bb.z, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.n = load i64, ptr %i.b, align 8, !tbaa !56
  %i.o = call i32 @phar_get_entry_data(ptr noundef nonnull %i.d, ptr noundef %0, i64 noundef %1, ptr noundef %i.m, i64 noundef %i.n, ptr noundef %4, i8 noundef signext %5, ptr noundef %6, i32 noundef %7)
  %i.p = icmp eq i32 %i.o, -1
  br i1 %i.p, label %bb.z, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = load ptr, ptr %i.d, align 8, !tbaa !81   ; 2 uses
  %.not28 = icmp eq ptr %i.q, null
  br i1 %.not28, label %bb.f, label %bb.z

bb.f:                                             ; preds = %bb.e
  %i.r = call i32 @phar_path_check(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.e) #15
  %i.s = icmp ugt i32 %i.r, 1
  br i1 %i.s, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %.not36 = icmp eq ptr %6, null
  br i1 %.not36, label %bb.z, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.u = load ptr, ptr %i.e, align 8, !tbaa !23
  %i.v = call i64 (ptr, i64, ptr, ...) @zend_spprintf(ptr noundef nonnull %6, i64 noundef 0, ptr noundef nonnull @.str.10, ptr noundef %i.t, ptr noundef %i.u) #15 ; 0 uses
  br label %bb.z

bb.i:                                             ; preds = %bb.f
  %i.w = load ptr, ptr %i.c, align 8, !tbaa !63
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 316
  %i.y = load i16, ptr %i.x, align 4
  %i.z = and i16 %i.y, 256
  %.not29 = icmp eq i16 %i.z, 0
  br i1 %.not29, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = call i32 @phar_copy_on_write(ptr noundef nonnull %i.c)
  %i.ab = icmp eq i32 %i.aa, -1
  br i1 %i.ab, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %.not35 = icmp eq ptr %6, null
  br i1 %.not35, label %bb.z, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.ad = call i64 (ptr, i64, ptr, ...) @zend_spprintf(ptr noundef nonnull %6, i64 noundef 4096, ptr noundef nonnull @.str.11, ptr noundef %i.ac, ptr noundef %0) #15 ; 0 uses
  br label %bb.z

bb.m:                                             ; preds = %bb.j, %bb.i
  %i.ae = call noalias ptr @_emalloc_40() #15     ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9, i8 0, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.14, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.17, i8 0, i64 12, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %.sroa.19, i8 0, i64 9, i1 false)
  %i.af = call ptr @_php_stream_fopen_tmpfile(i32 noundef 0) #15 ; 4 uses
  %.not30 = icmp eq ptr %i.af, null
  br i1 %.not30, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %.not31 = icmp eq ptr %6, null
  br i1 %.not31, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ag = call i64 (ptr, i64, ptr, ...) @zend_spprintf(ptr noundef nonnull %6, i64 noundef 0, ptr noundef nonnull @.str.12) #15 ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  call void @_efree(ptr noundef %i.ae) #15
  br label %bb.z

bb.q:                                             ; preds = %bb.m
  %.not54 = icmp eq i8 %5, 2                      ; 3 uses
  %.sroa.7.0 = select i1 %.not54, i32 511, i32 438 ; 2 uses
  %i.ah = load i64, ptr %i.b, align 8             ; 3 uses
  %i.ai = icmp ne i64 %i.ah, 0
  %or.cond = select i1 %i.j, i1 %i.ai, i1 false
  br i1 %or.cond, label %bb.r, label %zend_string_alloc.exit

bb.r:                                             ; preds = %bb.q
  %i.aj = add i64 %i.ah, -1                       ; 2 uses
  store i64 %i.aj, ptr %i.b, align 8, !tbaa !56
  br label %zend_string_alloc.exit

zend_string_alloc.exit:                           ; preds = %bb.r, %bb.q
  %i.ak = phi i64 [ %i.aj, %bb.r ], [ %i.ah, %bb.q ]
  %i.al = load ptr, ptr %i.c, align 8, !tbaa !63  ; 8 uses
  %i.am = load ptr, ptr %i.a, align 8, !tbaa !23
  call void @phar_add_virtual_dirs(ptr noundef %i.al, ptr noundef %i.am, i64 noundef %i.ak)
  %i.an = call i64 @time(ptr noundef null) #15
  %i.ao = trunc i64 %i.an to i32
  %i.ap = select i1 %.not54, i16 11, i16 3
  %i.aq = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.ar = load i64, ptr %i.b, align 8, !tbaa !56  ; 4 uses
  %i.as = and i64 %i.ar, -8
  %i.at = add i64 %i.as, 32
  %i.au = call noalias ptr @_emalloc(i64 noundef %i.at) #17 ; 8 uses
  store i32 1, ptr %i.au, align 4, !tbaa !26
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  store i32 22, ptr %i.av, align 4, !tbaa !24
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store i64 0, ptr %i.aw, align 8, !tbaa !28
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store i64 %i.ar, ptr %i.ax, align 8, !tbaa !30
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 24 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ay, ptr align 1 %i.aq, i64 %i.ar, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.ar
  store i8 0, ptr %i.az, align 1, !tbaa !24
  %i.ba = getelementptr inbounds nuw i8, ptr %i.al, i64 316
  %i.bb = load i16, ptr %i.ba, align 4            ; 2 uses
  %i.bc = shl i16 %i.bb, 2
  %i.bd = and i16 %i.bc, 128
  %i.be = and i16 %i.bb, 64                       ; 2 uses
  %.not32 = icmp eq i16 %i.be, 0
  %i.bf = select i1 %.not54, i8 53, i8 48
  %.sroa.1844.0 = select i1 %.not32, i8 0, i8 %i.bf
  %i.bg = or disjoint i16 %i.ap, %i.bd
  %.sroa.1945.1 = or disjoint i16 %i.bg, %i.be
  %i.bh = getelementptr inbounds nuw i8, ptr %i.al, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  store ptr null, ptr %8, align 8, !tbaa !24
  %i.bi = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 13, ptr %i.bi, align 8, !tbaa !24
  %i.bj = call ptr @zend_hash_add(ptr noundef nonnull %i.bh, ptr noundef nonnull %i.au, ptr noundef nonnull %8) #15 ; 2 uses
  %.not.i = icmp eq ptr %i.bj, null
  br i1 %.not.i, label %bb.v, label %bb.s

bb.s:                                             ; preds = %zend_string_alloc.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %i.al, i64 68
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !24
  %i.bm = and i32 %i.bl, 128
  %.not46.i = icmp eq i32 %i.bm, 0
  br i1 %.not46.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bn = call noalias dereferenceable_or_null(152) ptr @__zend_malloc(i64 noundef 152) #17
  br label %bb.y

bb.u:                                             ; preds = %bb.s
  %i.bo = call noalias ptr @_emalloc_160() #15
  br label %bb.y

bb.v:                                             ; preds = %zend_string_alloc.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  %i.bp = call i32 @_php_stream_free(ptr noundef nonnull %i.af, i32 noundef 3) #15 ; 0 uses
  %.not34 = icmp eq ptr %6, null
  br i1 %.not34, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bq = load ptr, ptr %i.al, align 8, !tbaa !46
  %i.br = call i64 (ptr, i64, ptr, ...) @zend_spprintf(ptr noundef nonnull %6, i64 noundef 0, ptr noundef nonnull @.str.13, ptr noundef nonnull %i.ay, ptr noundef %i.bq) #15 ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  call void @_efree(ptr noundef %i.ae) #15
  call void @_efree(ptr noundef nonnull %i.au) #15
  br label %bb.z

bb.y:                                             ; preds = %bb.u, %bb.t
  %i.bs = phi ptr [ %i.bn, %bb.t ], [ %i.bo, %bb.u ] ; 21 uses
  store ptr %i.bs, ptr %i.bj, align 8, !tbaa !24
  store i32 0, ptr %i.bs, align 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 4
  store i32 %i.ao, ptr %.sroa.4.0..sroa_idx, align 1
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 1
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  store i32 %.sroa.7.0, ptr %.sroa.537.0..sroa_idx, align 1
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 20
  store i32 %.sroa.7.0, ptr %.sroa.7.0..sroa_idx, align 1
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.9.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9, i64 24, i1 false)
  %.sroa.938.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 48
  store ptr %i.au, ptr %.sroa.938.0..sroa_idx, align 1
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 56
  store i32 2, ptr %.sroa.13.0..sroa_idx, align 1
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 60
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %.sroa.14.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.14, i64 28, i1 false)
  %.sroa.1441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 88
  store ptr %i.af, ptr %.sroa.1441.0..sroa_idx, align 1
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 96
  store ptr null, ptr %.sroa.16.0..sroa_idx, align 1
  %.sroa.1642.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 104
  store i32 1, ptr %.sroa.1642.0..sroa_idx, align 1
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 108
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %.sroa.17.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.17, i64 12, i1 false)
  %.sroa.1743.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 120
  store ptr %i.al, ptr %.sroa.1743.0..sroa_idx, align 1
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 128
  store ptr null, ptr %.sroa.18.0..sroa_idx, align 1
  %.sroa.1844.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 136
  store i8 %.sroa.1844.0, ptr %.sroa.1844.0..sroa_idx, align 1
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 137
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %.sroa.19.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(9) %.sroa.19, i64 9, i1 false)
  %.sroa.1945.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 146
  store i16 %.sroa.1945.1, ptr %.sroa.1945.0..sroa_idx, align 1
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 148
  store i32 0, ptr %.sroa.28.0..sroa_idx, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  %i.bt = getelementptr inbounds nuw i8, ptr %i.al, i64 264 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !79
  %i.bv = add nsw i32 %i.bu, 1
  store i32 %i.bv, ptr %i.bt, align 8, !tbaa !79
  store ptr %i.al, ptr %i.ae, align 8, !tbaa !85
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr %i.af, ptr %i.bw, align 8, !tbaa !91
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.by = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bx, i8 0, i64 16, i1 false)
  store ptr %i.bs, ptr %i.by, align 8, !tbaa !88
  br label %bb.z

bb.z:                                             ; preds = %bb.k, %bb.l, %bb.g, %bb.h, %bb.e, %bb.d, %bb.c, %bb.y, %bb.x, %bb.p
  %.0 = phi ptr [ null, %bb.p ], [ null, %bb.c ], [ null, %bb.d ], [ %i.q, %bb.e ], [ null, %bb.g ], [ null, %bb.x ], [ %i.ae, %bb.y ], [ null, %bb.h ], [ null, %bb.l ], [ null, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.17)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.19)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  ret ptr %.0
}

declare ptr @_php_stream_fopen_tmpfile(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden void @phar_add_virtual_dirs(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 124
  br label %bb.b

bb.b:                                             ; preds = %zend_string_release.exit, %bb.a
  %.0 = phi i64 [ %2, %bb.a ], [ %i.f, %zend_string_release.exit ]
  %i.d = tail call ptr @memrchr(ptr noundef %1, i32 noundef 47, i64 noundef %.0) #16 ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = sub i64 %i.e, %i.a                       ; 7 uses
  %.not16 = icmp eq i64 %i.f, 0
  br i1 %.not16, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = load i32, ptr %i.c, align 4, !tbaa !24
  %i.h = and i32 %i.g, 128
  %.not17 = icmp eq i32 %i.h, 0
  br i1 %.not17, label %zend_string_alloc.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = load ptr, ptr @zend_string_init_interned, align 8, !tbaa !101
  %i.j = tail call ptr %i.i(ptr noundef %1, i64 noundef %i.f, i1 noundef zeroext true) #15
  br label %bb.f

zend_string_alloc.exit:                           ; preds = %bb.d
  %i.k = and i64 %i.f, -8
  %i.l = add i64 %i.k, 32
  %i.m = tail call noalias ptr @_emalloc(i64 noundef %i.l) #17 ; 6 uses
  store i32 1, ptr %i.m, align 4, !tbaa !26
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  store i32 22, ptr %i.n, align 4, !tbaa !24
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 0, ptr %i.o, align 8, !tbaa !28
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 %i.f, ptr %i.p, align 8, !tbaa !30
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.q, ptr align 1 %1, i64 %i.f, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.f
  store i8 0, ptr %i.r, align 1, !tbaa !24
  br label %bb.f

bb.f:                                             ; preds = %zend_string_alloc.exit, %bb.e
  %.013 = phi ptr [ %i.j, %bb.e ], [ %i.m, %zend_string_alloc.exit ] ; 6 uses
  %i.s = tail call ptr @zend_hash_add_empty_element(ptr noundef nonnull %i.b, ptr noundef %.013) #15
  %i.t = getelementptr inbounds nuw i8, ptr %.013, i64 4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !24   ; 2 uses
  %i.v = and i32 %i.u, 64
  %.not.i = icmp eq i32 %i.v, 0
  br i1 %.not.i, label %bb.g, label %zend_string_release.exit

bb.g:                                             ; preds = %bb.f
  %i.w = load i32, ptr %.013, align 4, !tbaa !26  ; 2 uses
  %i.x = icmp ne i32 %i.w, 0
  tail call void @llvm.assume(i1 %i.x)
  %i.y = add i32 %i.w, -1                         ; 2 uses
  store i32 %i.y, ptr %.013, align 4, !tbaa !26
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.h, label %zend_string_release.exit

bb.h:                                             ; preds = %bb.g
  %i.aa = and i32 %i.u, 128
  %.not5.i = icmp eq i32 %i.aa, 0
  br i1 %.not5.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @free(ptr noundef nonnull %.013) #15
  br label %zend_string_release.exit

bb.j:                                             ; preds = %bb.h
  tail call void @_efree(ptr noundef nonnull %.013) #15
  br label %zend_string_release.exit

zend_string_release.exit:                         ; preds = %bb.f, %bb.g, %bb.i, %bb.j
  %i.ab = icmp eq ptr %i.s, null
  br i1 %i.ab, label %bb.k, label %bb.b, !llvm.loop !113

bb.k:                                             ; preds = %zend_string_release.exit, %bb.c, %bb.b
  ret void
}

; Function Attrs: nounwind
declare i64 @time(ptr noundef) local_unnamed_addr #6

declare i32 @_php_stream_free(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden range(i32 -1, 1) i32 @phar_copy_entry_fp(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @phar_open_entry_fp(ptr noundef %0, ptr noundef %2, i32 noundef 1)
  %i.b = icmp eq i32 %i.a, -1
  br i1 %i.b, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !12   ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %bb.c

._crit_edge:                                      ; preds = %bb.b
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 146
  %.pre = load i16, ptr %.phi.trans.insert, align 2
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_efree(ptr noundef nonnull %i.d) #15
  store ptr null, ptr %i.c, align 8, !tbaa !12
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 146
  %i.f = load i16, ptr %i.e, align 2              ; 2 uses
  %i.g = and i16 %i.f, 64
  %.not31 = icmp eq i16 %i.g, 0
  %i.h = select i1 %.not31, i8 0, i8 48
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 136
  store i8 %i.h, ptr %i.i, align 8, !tbaa !89
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.c
  %i.j = phi i16 [ %.pre, %._crit_edge ], [ %i.f, %bb.c ]
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  store i32 2, ptr %i.k, align 8, !tbaa !49
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 72
  store i64 0, ptr %i.l, align 8, !tbaa !55
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 146
  %i.n = or i16 %i.j, 2
  store i16 %i.n, ptr %i.m, align 2
  %i.o = tail call ptr @_php_stream_fopen_tmpfile(i32 noundef 0) #15 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 3 uses
  store ptr %i.o, ptr %i.p, align 8, !tbaa !50
  %i.q = icmp eq ptr %i.o, null
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = tail call i64 (ptr, i64, ptr, ...) @zend_spprintf(ptr noundef %2, i64 noundef 0, ptr noundef nonnull @.str.12) #15 ; 0 uses
  br label %bb.m

bb.f:                                             ; preds = %bb.d
  %i.s = tail call i32 @phar_seek_efp(ptr noundef %0, i64 noundef 0, i32 noundef 0, i64 noundef 0, i32 noundef 1) ; 0 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !12
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %phar_get_link_source.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.f, %bb.j
  %.015.i = phi ptr [ %i.ab, %bb.j ], [ %0, %bb.f ]
  %.0.i = phi ptr [ %i.y, %bb.j ], [ %0, %bb.f ]
  %i.v = tail call fastcc ptr @phar_follow_one_link(ptr noundef nonnull %.0.i) ; 4 uses
  %.not20.i = icmp eq ptr %i.v, null
  br i1 %.not20.i, label %phar_get_link_source.exit, label %bb.g

bb.g:                                             ; preds = %.preheader.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 128
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !12
  %.not21.i = icmp eq ptr %i.x, null
  br i1 %.not21.i, label %phar_get_link_source.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = tail call fastcc ptr @phar_follow_one_link(ptr noundef nonnull %i.v) ; 5 uses
  %.not22.i = icmp eq ptr %i.y, null
  br i1 %.not22.i, label %phar_get_link_source.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 128
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !12
  %.not23.i = icmp eq ptr %i.aa, null
  br i1 %.not23.i, label %phar_get_link_source.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = tail call fastcc ptr @phar_follow_one_link(ptr noundef %.015.i) ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.y
  br i1 %i.ac, label %phar_get_link_source.exit, label %.preheader.i

phar_get_link_source.exit:                        ; preds = %.preheader.i, %bb.g, %bb.h, %bb.i, %bb.j, %bb.f
  %.016.i = phi ptr [ %0, %bb.f ], [ null, %bb.h ], [ null, %.preheader.i ], [ %i.v, %bb.g ], [ %i.y, %bb.i ], [ null, %bb.j ] ; 2 uses
  %.not32 = icmp eq ptr %.016.i, null
  %spec.select = select i1 %.not32, ptr %0, ptr %.016.i ; 2 uses
  %i.ad = tail call ptr @phar_get_efp(ptr noundef %spec.select, i32 noundef 0)
  %i.ae = load ptr, ptr %i.p, align 8, !tbaa !50
  %i.af = load i32, ptr %spec.select, align 8, !tbaa !57
  %i.ag = zext i32 %i.af to i64
  %i.ah = tail call i32 @_php_stream_copy_to_stream_ex(ptr noundef %i.ad, ptr noundef %i.ae, i64 noundef %i.ag, ptr noundef null) #15
  %.not33 = icmp eq i32 %i.ah, 0
  br i1 %.not33, label %bb.m, label %bb.k

bb.k:                                             ; preds = %phar_get_link_source.exit
  %i.ai = load ptr, ptr %i.p, align 8, !tbaa !50
  %i.aj = tail call i32 @_php_stream_free(ptr noundef %i.ai, i32 noundef 3) #15 ; 0 uses
  store i32 0, ptr %i.k, align 8, !tbaa !49
  %.not34 = icmp eq ptr %2, null
end_hunk_1
