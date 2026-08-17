inline.NumInlined: 63
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@fix_hkdf_mode:bb.a
  br i1 %or.cond6, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = icmp eq i32 %i.t, 1
  %i.x = icmp eq i32 %0, 2
  %or.cond8 = and i1 %i.x, %i.w
  br i1 %or.cond8, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !32   ; 3 uses
  %i.aa = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.z, ptr noundef nonnull dereferenceable(19) @.str.98) #8
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %.thread55, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.z, ptr noundef nonnull dereferenceable(13) @.str.99) #8
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %.thread55, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.z, ptr noundef nonnull dereferenceable(12) @.str.100) #8
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %.thread55, label %.critedge

.thread55:                                        ; preds = %bb.h, %bb.i, %bb.j
  %.062.lcssa = phi i64 [ 0, %bb.h ], [ 1, %bb.i ], [ 2, %bb.j ]
  %i.ag = icmp eq i32 %0, 2
  br i1 %i.ag, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.thread55
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr @fix_hkdf_mode.str_value_map, i64 %.062.lcssa
  %i.ai = load i32, ptr %i.ah, align 16, !tbaa !70
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 28
  store i32 %i.ai, ptr %i.aj, align 4, !tbaa !31
  br label %bb.l

bb.l:                                             ; preds = %.thread55, %bb.k
  store ptr null, ptr %i.y, align 8, !tbaa !32
  br label %.critedge

.critedge:                                        ; preds = %bb.d, %bb.j, %bb.g, %bb.l, %bb.e, %bb.a
  %.3 = phi i32 [ 0, %bb.d ], [ 1, %bb.g ], [ %i.a, %bb.a ], [ %i.r, %bb.e ], [ 1, %bb.l ], [ 0, %bb.j ]
  ret i32 %.3
}

; Function Attrs: nounwind uwtable
define internal i32 @fix_cipher(i32 noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = tail call fastcc i32 @default_check(i32 noundef %0, ptr noundef readonly %1) ; 2 uses
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %fix_cipher_md.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i32 %0, label %.critedge.thread.i [
    i32 1, label %bb.c
    i32 8, label %bb.i
  ]

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !26
  switch i32 %i.d, label %.critedge.thread.i [
    i32 1, label %bb.d
    i32 2, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !32
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 56
  store ptr %i.f, ptr %i.g, align 8, !tbaa !65
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 64
  store ptr %i.h, ptr %i.e, align 8, !tbaa !32
  br label %.critedge.thread.sink.split.i

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !32   ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.m = load i32, ptr %i.l, align 4, !tbaa !31
  %i.n = tail call ptr @OBJ_nid2sn(i32 noundef %i.m) #7
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.o = tail call ptr @EVP_CIPHER_get0_name(ptr noundef nonnull %i.j) #7
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.p = phi ptr [ %i.n, %bb.f ], [ %i.o, %bb.g ] ; 2 uses
  store ptr %i.p, ptr %i.i, align 8, !tbaa !32
  %i.q = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.p) #8
  %i.r = trunc i64 %i.q to i32
  br label %.critedge.thread.sink.split.i

bb.i:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.t = load i32, ptr %i.s, align 8, !tbaa !26
  %i.u = icmp eq i32 %i.t, 1
  br i1 %i.u, label %bb.j, label %.critedge.thread.i

bb.j:                                             ; preds = %bb.i
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !32   ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.y = tail call ptr @EVP_CIPHER_get0_name(ptr noundef nonnull %i.w) #7
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.z = phi ptr [ %i.y, %bb.k ], [ @.str.82, %bb.j ] ; 2 uses
  store ptr %i.z, ptr %i.v, align 8, !tbaa !32
  %i.aa = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.z) #8
  %i.ab = trunc i64 %i.aa to i32
  br label %.critedge.thread.sink.split.i

.critedge.thread.sink.split.i:                    ; preds = %bb.l, %bb.h, %bb.d
  %.sink.i = phi i32 [ %i.r, %bb.h ], [ %i.ab, %bb.l ], [ 50, %bb.d ]
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 28
  store i32 %.sink.i, ptr %i.ac, align 4, !tbaa !31
  br label %.critedge.thread.i

.critedge.thread.i:                               ; preds = %.critedge.thread.sink.split.i, %bb.i, %bb.c, %bb.b
  %i.ad = tail call i32 @default_fixup_args(i32 noundef %0, ptr noundef readonly %1, ptr noundef %2) ; 6 uses
  %i.ae = icmp slt i32 %i.ad, 1
  br i1 %i.ae, label %fix_cipher_md.exit, label %bb.m

bb.m:                                             ; preds = %.critedge.thread.i
  switch i32 %0, label %fix_cipher_md.exit [
    i32 2, label %bb.n
    i32 7, label %bb.p
  ]

bb.n:                                             ; preds = %bb.m
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !26
  %i.ah = icmp eq i32 %i.ag, 1
  br i1 %i.ah, label %bb.o, label %fix_cipher_md.exit

bb.o:                                             ; preds = %bb.n
  %i.ai = load ptr, ptr %2, align 8, !tbaa !33
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !66
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !32
  %i.an = tail call ptr @evp_get_cipherbyname_ex(ptr noundef %i.ak, ptr noundef %i.am) #7
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !65
  store ptr %i.an, ptr %i.ap, align 8, !tbaa !43
  br label %.sink.split.i

bb.p:                                             ; preds = %bb.m
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !26
  %i.as = icmp eq i32 %i.ar, 2
  br i1 %i.as, label %bb.q, label %fix_cipher_md.exit

bb.q:                                             ; preds = %bb.p
  %i.at = load ptr, ptr %2, align 8, !tbaa !33
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !66
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !32
  %i.ay = tail call ptr @evp_get_cipherbyname_ex(ptr noundef %i.av, ptr noundef %i.ax) #7
  store ptr %i.ay, ptr %i.aw, align 8, !tbaa !32
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.q, %bb.o
  %.sink56.i = phi i32 [ 1, %bb.o ], [ 0, %bb.q ]
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 28
  store i32 %.sink56.i, ptr %i.az, align 4, !tbaa !31
  br label %fix_cipher_md.exit

fix_cipher_md.exit:                               ; preds = %bb.a, %.critedge.thread.i, %bb.m, %bb.n, %bb.p, %.sink.split.i
  %.0.i = phi i32 [ %i.ad, %.critedge.thread.i ], [ %i.a, %bb.a ], [ %i.ad, %bb.m ], [ %i.ad, %bb.n ], [ %i.ad, %bb.p ], [ %i.ad, %.sink.split.i ]
  ret i32 %.0.i
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @fix_group_ecx(i32 noundef %0, ptr nofree readnone captures(none) %1, ptr nofree noundef captures(none) %2) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store ptr null, ptr %i.a, align 8, !tbaa !41
  switch i32 %0, label %bb.g [
    i32 7, label %bb.b
    i32 8, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %2, align 8, !tbaa !33
  %i.c = load i32, ptr %i.b, align 8, !tbaa !36
  %i.d = and i32 %i.c, 6
  %.not7 = icmp eq i32 %i.d, 0
  br i1 %.not7, label %bb.g, label %3

3:                                                ; preds = %bb.b
  %4 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 0, ptr %4, align 8, !tbaa !26
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !34
  %i.g = call i32 @OSSL_PARAM_get_utf8_string_ptr(ptr noundef %i.f, ptr noundef nonnull %i.a) #7
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %2, align 8, !tbaa !33
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !71
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !41
  %i.m = call i32 @OPENSSL_strcasecmp(ptr noundef %i.k, ptr noundef %i.l) #7
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @ERR_new() #7
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 2071, ptr noundef nonnull @__func__.fix_group_ecx) #7
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 6, i32 noundef 524550, ptr noundef null) #7
  %5 = getelementptr inbounds nuw i8, ptr %2, i64 28
  store i32 0, ptr %5, align 4, !tbaa !31
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 28
  store i32 1, ptr %i.n, align 4, !tbaa !31
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.b, %bb.f, %bb.e, %3
  %.0 = phi i32 [ 0, %bb.b ], [ 1, %3 ], [ 1, %bb.f ], [ 0, %bb.e ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @fix_kdf_type(i32 noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3) unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @default_check(i32 noundef %0, ptr noundef %1) ; 2 uses
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i32 %0, 1
  br i1 %i.c, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !26
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %.critedge, !prof !62

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 28 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !31
  %i.i = icmp eq i32 %i.h, -2
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.j, ptr %i.k, align 8, !tbaa !32
  store i32 50, ptr %i.g, align 4, !tbaa !31
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %storemerge = phi i32 [ 1, %bb.e ], [ 2, %bb.d ]
  store i32 %storemerge, ptr %i.d, align 8, !tbaa !26
  %i.l = tail call fastcc i32 @default_check(i32 noundef 1, ptr noundef %1) ; 2 uses
  %i.m = icmp slt i32 %i.l, 1
  br i1 %i.m, label %.critedge, label %bb.g

.thread:                                          ; preds = %bb.b
  %i.n = tail call fastcc i32 @default_check(i32 noundef %0, ptr noundef %1) ; 2 uses
  %i.o = icmp slt i32 %i.n, 1
  br i1 %i.o, label %.critedge, label %.thread60

bb.g:                                             ; preds = %bb.f
  %i.p = load i32, ptr %i.d, align 8, !tbaa !26
  %i.q = icmp eq i32 %i.p, 2
  br i1 %i.q, label %bb.i, label %.thread61

.thread60:                                        ; preds = %.thread
  %i.r = icmp eq i32 %0, 8
  br i1 %i.r, label %bb.h, label %.thread61

bb.h:                                             ; preds = %.thread60
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.t = load i32, ptr %i.s, align 8, !tbaa !26
  %i.u = icmp eq i32 %i.t, 1
  br i1 %i.u, label %bb.i, label %.thread61

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !72   ; 2 uses
  %.not68 = icmp eq ptr %i.w, null
  br i1 %.not68, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 28 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !31   ; 2 uses
  %i.z = load i32, ptr %3, align 8, !tbaa !74
  %i.aa = icmp eq i32 %i.y, %i.z
  br i1 %i.aa, label %._crit_edge, label %.lr.ph92

bb.j:                                             ; preds = %.lr.ph92
  %i.ab = getelementptr inbounds nuw i8, ptr %.0496991, i64 16 ; 3 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !74
  %i.ad = icmp eq i32 %i.y, %i.ac
  br i1 %i.ad, label %._crit_edge, label %.lr.ph92, !llvm.loop !75

.lr.ph92:                                         ; preds = %.lr.ph, %bb.j
  %.0496991 = phi ptr [ %i.ab, %bb.j ], [ %3, %.lr.ph ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.0496991, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !72 ; 2 uses
  %.not = icmp eq ptr %i.af, null
  br i1 %.not, label %.critedge, label %bb.j, !llvm.loop !75

._crit_edge:                                      ; preds = %bb.j, %.lr.ph
  %.lcssa = phi ptr [ %i.w, %.lr.ph ], [ %i.af, %bb.j ] ; 2 uses
  %.04969.lcssa = phi ptr [ %3, %.lr.ph ], [ %i.ab, %bb.j ]
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %.lcssa, ptr %i.ag, align 8, !tbaa !32
  %i.ah = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.lcssa) #8
  %i.ai = trunc i64 %i.ah to i32
  store i32 %i.ai, ptr %i.x, align 4, !tbaa !31
  br label %.thread61

.thread61:                                        ; preds = %bb.g, %._crit_edge, %bb.h, %.thread60
  %.150 = phi ptr [ %.04969.lcssa, %._crit_edge ], [ %3, %bb.h ], [ %3, %.thread60 ], [ %3, %bb.g ] ; 2 uses
  %i.aj = tail call i32 @default_fixup_args(i32 noundef %0, ptr noundef %1, ptr noundef %2) ; 6 uses
  %i.ak = icmp slt i32 %i.aj, 1
  br i1 %i.ak, label %.critedge, label %bb.k

bb.k:                                             ; preds = %.thread61
  switch i32 %0, label %.critedge [
    i32 2, label %bb.l
    i32 7, label %bb.m
  ]

bb.l:                                             ; preds = %bb.k
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.am = load i32, ptr %i.al, align 8, !tbaa !26
  %i.an = icmp eq i32 %i.am, 1
  br i1 %i.an, label %bb.n, label %.critedge

bb.m:                                             ; preds = %bb.k
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !26
  switch i32 %i.ap, label %.critedge [
    i32 2, label %bb.n
    i32 1, label %bb.r
  ]

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 28 ; 2 uses
  store i32 -1, ptr %i.aq, align 4, !tbaa !31
  %i.ar = getelementptr inbounds nuw i8, ptr %.150, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !72 ; 2 uses
  %.not5970 = icmp eq ptr %i.as, null
  br i1 %.not5970, label %.loopexit, label %.lr.ph72

.lr.ph72:                                         ; preds = %bb.n
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 32
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph72, %bb.q
  %i.au = phi ptr [ %i.as, %.lr.ph72 ], [ %i.bb, %bb.q ]
  %.25171 = phi ptr [ %.150, %.lr.ph72 ], [ %i.az, %bb.q ] ; 3 uses
  %i.av = load ptr, ptr %i.at, align 8, !tbaa !32
  %i.aw = tail call i32 @OPENSSL_strcasecmp(ptr noundef %i.av, ptr noundef nonnull %i.au) #7
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ay = load i32, ptr %.25171, align 8, !tbaa !74
  store i32 %i.ay, ptr %i.aq, align 4, !tbaa !31
  br label %.loopexit

bb.q:                                             ; preds = %bb.o
  %i.az = getelementptr inbounds nuw i8, ptr %.25171, i64 16
  %i.ba = getelementptr inbounds nuw i8, ptr %.25171, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !72 ; 2 uses
  %.not59 = icmp eq ptr %i.bb, null
  br i1 %.not59, label %.loopexit, label %bb.o, !llvm.loop !76

.loopexit:                                        ; preds = %bb.q, %bb.n, %bb.p
  %.1 = phi i32 [ 1, %bb.p ], [ -1, %bb.n ], [ -1, %bb.q ]
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr null, ptr %i.bc, align 8, !tbaa !32
  br label %.critedge

bb.r:                                             ; preds = %bb.m
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 28
  store i32 -2, ptr %i.bd, align 4, !tbaa !31
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph92, %bb.i, %bb.m, %bb.k, %bb.l, %.thread, %bb.r, %.loopexit, %.thread61, %bb.f, %bb.c, %bb.a
  %.052 = phi i32 [ %i.a, %bb.a ], [ 0, %bb.c ], [ %i.aj, %.thread61 ], [ %i.l, %bb.f ], [ %i.n, %.thread ], [ %.1, %.loopexit ], [ %i.aj, %bb.r ], [ %i.aj, %bb.m ], [ %i.aj, %bb.l ], [ %i.aj, %bb.k ], [ -2, %bb.i ], [ -2, %.lr.ph92 ]
  ret i32 %.052
}

declare ptr @OBJ_nid2sn(i32 noundef) local_unnamed_addr #3

declare ptr @EVP_MD_get0_name(ptr noundef) local_unnamed_addr #3

declare ptr @evp_get_digestbyname_ex(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @OBJ_obj2txt(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @OBJ_txt2obj(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @ossl_dh_gen_type_id2name(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr noundef captures(none), i32 noundef) local_unnamed_addr #5

declare ptr @ossl_ffc_named_group_get_name(ptr noundef) local_unnamed_addr #3

declare ptr @ossl_ffc_uid_to_dh_named_group(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #4

declare i32 @OBJ_sn2nid(ptr noundef) local_unnamed_addr #3

declare i32 @BIO_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none), i64 noundef) local_unnamed_addr #6

end_hunk_0
