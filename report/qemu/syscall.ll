Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/syscall?download=true
inline.NumInlined: 1972
inline.NumDeleted: 230
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 15
begin_hunk_0_@do_ioctl_blkpg:bb.a
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = getelementptr i8, ptr %i.ad, i64 608
  %.val = load ptr, ptr %i.ae, align 16
  %i.af = getelementptr inbounds nuw i8, ptr %.val, i64 9148
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ah = load i32, ptr %i.ag, align 4
  %i.ai = call i64 (ptr, i64, ...) @safe_syscall_base(ptr noundef nonnull %i.af, i64 noundef 16, i32 noundef %2, i32 noundef %i.ah, ptr noundef nonnull %1) #29 ; 2 uses
  %i.aj = icmp eq i64 %i.ai, -1
  br i1 %i.aj, label %bb.i, label %get_errno.exit

bb.i:                                             ; preds = %bb.h
  %i.ak = tail call ptr @__errno_location() #28
  %i.al = load i32, ptr %i.ak, align 4
  %i.am = sub i32 0, %i.al
  %i.an = sext i32 %i.am to i64
  br label %get_errno.exit

get_errno.exit:                                   ; preds = %bb.i, %bb.h, %thunk_type_size.exit28, %bb.g, %thunk_type_size.exit
  %.0 = phi i64 [ -14, %thunk_type_size.exit ], [ -14, %thunk_type_size.exit28 ], [ -22, %bb.g ], [ %i.an, %bb.i ], [ %i.ai, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @do_ioctl_fs_ioc_fiemap(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 %3, i64 noundef %4) #2 {
thunk_type_size.exit:
  %i.a = alloca [2 x i32], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i64 257698037771, ptr %i.a, align 8
  %i.c = load ptr, ptr @struct_entries, align 8   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4856
  %i.e = load i32, ptr %i.d, align 4              ; 2 uses
  %i.f = load i32, ptr %i.b, align 4
  %i.g = icmp eq i32 %i.f, 9
  br i1 %i.g, label %bb.b, label %bb.a

bb.a:                                             ; preds = %thunk_type_size.exit
  tail call void @__assert_fail(ptr noundef nonnull @.str.583, ptr noundef nonnull @.str.584, i32 noundef 4745, ptr noundef nonnull @__PRETTY_FUNCTION__.do_ioctl_fs_ioc_fiemap) #30
  unreachable

bb.b:                                             ; preds = %thunk_type_size.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i32, ptr %i.h, align 8
  %i.j = icmp eq i32 %i.i, 3
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @__assert_fail(ptr noundef nonnull @.str.585, ptr noundef nonnull @.str.584, i32 noundef 4746, ptr noundef nonnull @__PRETTY_FUNCTION__.do_ioctl_fs_ioc_fiemap) #30
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 3 uses
  %i.l = load i32, ptr %i.k, align 4              ; 3 uses
  switch i32 %i.l, label %bb.i [
    i32 1, label %thunk_type_size.exit71
    i32 2, label %thunk_type_size.exit71
    i32 3, label %bb.e
    i32 7, label %bb.f
    i32 8, label %bb.f
    i32 4, label %bb.f
    i32 5, label %bb.f
    i32 6, label %bb.f
    i32 9, label %bb.f
    i32 12, label %bb.f
    i32 10, label %bb.g
    i32 11, label %bb.h
  ]

bb.e:                                             ; preds = %bb.d
  br label %thunk_type_size.exit71

bb.f:                                             ; preds = %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d
  br label %thunk_type_size.exit71

bb.g:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load i32, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.p = tail call i32 @thunk_type_size_array(ptr noundef nonnull %i.o, i32 noundef 0) #29
  %i.q = mul i32 %i.p, %i.n
  br label %thunk_type_size.exit71

bb.h:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.s = load i32, ptr %i.r, align 8
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [80 x i8], ptr %i.c, i64 %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  %i.w = load i32, ptr %i.v, align 4
  br label %thunk_type_size.exit71

bb.i:                                             ; preds = %bb.d
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.599, i32 noundef 145, ptr noundef nonnull @__func__.thunk_type_size, ptr noundef null) #30
  unreachable

thunk_type_size.exit71:                           ; preds = %bb.d, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h
  %.0.i70 = phi i32 [ %i.w, %bb.h ], [ %i.q, %bb.g ], [ 4, %bb.e ], [ 8, %bb.f ], [ %i.l, %bb.d ], [ %i.l, %bb.d ] ; 2 uses
  %i.x = sext i32 %.0.i70 to i64                  ; 3 uses
  %i.y = tail call ptr @lock_user(i32 noundef 1, i64 noundef %4, i64 noundef %i.x, i1 noundef zeroext true) #29 ; 2 uses
  %.not = icmp eq ptr %i.y, null
  br i1 %.not, label %bb.w, label %bb.j

bb.j:                                             ; preds = %thunk_type_size.exit71
  %i.z = tail call ptr @thunk_convert(ptr noundef %1, ptr noundef nonnull %i.y, ptr noundef nonnull %i.k, i32 noundef 1) #29 ; 0 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ab = load i32, ptr %i.aa, align 8            ; 3 uses
  %i.ac = icmp ugt i32 %i.ab, 76695843
  br i1 %i.ac, label %bb.w, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ad = icmp samesign ult i32 %i.ab, 73         ; 2 uses
  br i1 %i.ad, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ae = mul nuw i32 %i.ab, 56
  %i.af = add nuw i32 %i.ae, 32
  %i.ag = zext i32 %i.af to i64
  %i.ah = tail call noalias ptr @g_try_malloc(i64 noundef %i.ag) #31 ; 3 uses
  %.not64 = icmp eq ptr %i.ah, null
  br i1 %.not64, label %bb.w, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.ah, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 32, i1 noundef false) #29
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.k
  %.056 = phi ptr [ %i.ah, %bb.m ], [ %1, %bb.k ] ; 7 uses
  %i.ai = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @thread_cpu)
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = getelementptr i8, ptr %i.aj, i64 608
  %.val = load ptr, ptr %i.ak, align 16
  %i.al = getelementptr inbounds nuw i8, ptr %.val, i64 9148
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.an = load i32, ptr %i.am, align 4
  %i.ao = tail call i64 (ptr, i64, ...) @safe_syscall_base(ptr noundef nonnull %i.al, i64 noundef 16, i32 noundef %2, i32 noundef %i.an, ptr noundef nonnull %.056) #29 ; 2 uses
  %i.ap = icmp eq i64 %i.ao, -1
  br i1 %i.ap, label %bb.o, label %get_errno.exit

bb.o:                                             ; preds = %bb.n
  %i.aq = tail call ptr @__errno_location() #28
  %i.ar = load i32, ptr %i.aq, align 4
  %i.as = sub i32 0, %i.ar
  %i.at = sext i32 %i.as to i64
  br label %get_errno.exit

get_errno.exit:                                   ; preds = %bb.n, %bb.o
  %.0.i72 = phi i64 [ %i.at, %bb.o ], [ %i.ao, %bb.n ] ; 5 uses
  %i.au = icmp ult i64 %.0.i72, -4096
  br i1 %i.au, label %bb.p, label %.loopexit

bb.p:                                             ; preds = %get_errno.exit
  %i.av = getelementptr inbounds nuw i8, ptr %.056, i64 24 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 8
  %.not66 = icmp eq i32 %i.aw, 0
  br i1 %.not66, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ax = getelementptr inbounds nuw i8, ptr %.056, i64 20
  %i.ay = load i32, ptr %i.ax, align 4
  %i.az = mul i32 %i.ay, %i.e
  %i.ba = add i32 %i.az, %.0.i70
  %.pre = sext i32 %i.ba to i64
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.pre-phi = phi i64 [ %.pre, %bb.q ], [ %i.x, %bb.p ]
  %i.bb = tail call ptr @lock_user(i32 noundef 3, i64 noundef %4, i64 noundef %.pre-phi, i1 noundef zeroext false) #29 ; 3 uses
  %.not67 = icmp eq ptr %i.bb, null
  br i1 %.not67, label %.loopexit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bc = tail call ptr @thunk_convert(ptr noundef nonnull %i.bb, ptr noundef nonnull %.056, ptr noundef nonnull %i.k, i32 noundef 0) #29 ; 0 uses
  %i.bd = load i32, ptr %i.av, align 8
  %.not68 = icmp eq i32 %i.bd, 0
  br i1 %.not68, label %.loopexit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.be = getelementptr inbounds nuw i8, ptr %.056, i64 20 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4
  %.not75 = icmp eq i32 %i.bf, 0
  br i1 %.not75, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.t
  %i.bg = getelementptr inbounds i8, ptr %i.bb, i64 %i.x
  %i.bh = getelementptr inbounds nuw i8, ptr %.056, i64 32
  %i.bi = sext i32 %i.e to i64
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph, %bb.u
  %.05374 = phi i32 [ 0, %.lr.ph ], [ %i.bn, %bb.u ] ; 2 uses
  %.05573 = phi ptr [ %i.bg, %.lr.ph ], [ %i.bm, %bb.u ] ; 2 uses
  %i.bj = sext i32 %.05374 to i64
  %i.bk = getelementptr inbounds [56 x i8], ptr %i.bh, i64 %i.bj
  %i.bl = call ptr @thunk_convert(ptr noundef %.05573, ptr noundef nonnull %i.bk, ptr noundef nonnull %i.a, i32 noundef 0) #29 ; 0 uses
  %i.bm = getelementptr inbounds i8, ptr %.05573, i64 %i.bi
  %i.bn = add nuw i32 %.05374, 1                  ; 2 uses
  %i.bo = load i32, ptr %i.be, align 4
  %i.bp = icmp ult i32 %i.bn, %i.bo
  br i1 %i.bp, label %bb.u, label %.loopexit, !llvm.loop !26

.loopexit:                                        ; preds = %bb.u, %bb.t, %bb.s, %bb.r, %get_errno.exit
  %.054 = phi i64 [ %.0.i72, %get_errno.exit ], [ -14, %bb.r ], [ %.0.i72, %bb.s ], [ %.0.i72, %bb.t ], [ %.0.i72, %bb.u ] ; 2 uses
  br i1 %i.ad, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.loopexit
  call void @g_free(ptr noundef nonnull %.056) #29
  br label %bb.w

bb.w:                                             ; preds = %.loopexit, %bb.v, %bb.l, %bb.j, %thunk_type_size.exit71
  %.058 = phi i64 [ -14, %thunk_type_size.exit71 ], [ -12, %bb.l ], [ -22, %bb.j ], [ %.054, %bb.v ], [ %.054, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  ret i64 %.058
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @do_ioctl_usbdevfs_submiturb(ptr noundef %0, ptr nofree readnone captures(none) %1, i32 noundef %2, i32 %3, i64 noundef %4) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4              ; 3 uses
  switch i32 %i.b, label %bb.f [
    i32 1, label %thunk_type_size.exit
    i32 2, label %thunk_type_size.exit
    i32 3, label %bb.b
    i32 7, label %bb.c
    i32 8, label %bb.c
    i32 4, label %bb.c
    i32 5, label %bb.c
    i32 6, label %bb.c
    i32 9, label %bb.c
    i32 12, label %bb.c
    i32 10, label %bb.d
    i32 11, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  br label %thunk_type_size.exit

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  br label %thunk_type_size.exit

bb.d:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i32, ptr %i.c, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.f = tail call i32 @thunk_type_size_array(ptr noundef nonnull %i.e, i32 noundef 0) #29
  %i.g = mul i32 %i.f, %i.d
  br label %thunk_type_size.exit

bb.e:                                             ; preds = %bb.a
  %i.h = load ptr, ptr @struct_entries, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load i32, ptr %i.i, align 4
  %i.k = zext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [80 x i8], ptr %i.h, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %i.n = load i32, ptr %i.m, align 4
  br label %thunk_type_size.exit

bb.f:                                             ; preds = %bb.a
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.599, i32 noundef 145, ptr noundef nonnull @__func__.thunk_type_size, ptr noundef null) #30
  unreachable

thunk_type_size.exit:                             ; preds = %bb.a, %bb.a, %bb.b, %bb.c, %bb.d, %bb.e
  %.0.i = phi i32 [ %i.n, %bb.e ], [ %i.g, %bb.d ], [ 4, %bb.b ], [ 8, %bb.c ], [ %i.b, %bb.a ], [ %i.b, %bb.a ]
  %i.o = tail call noalias dereferenceable_or_null(80) ptr @g_try_malloc0(i64 noundef 80) #31 ; 13 uses
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %bb.p, label %bb.g

bb.g:                                             ; preds = %thunk_type_size.exit
  %i.p = sext i32 %.0.i to i64
  %i.q = tail call ptr @lock_user(i32 noundef 1, i64 noundef %4, i64 noundef %i.p, i1 noundef zeroext true) #29 ; 2 uses
  %.not50 = icmp eq ptr %i.q, null
  br i1 %.not50, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @g_free(ptr noundef nonnull %i.o) #29
  br label %bb.p

bb.i:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 2 uses
  %i.s = tail call ptr @thunk_convert(ptr noundef nonnull %i.r, ptr noundef nonnull %i.q, ptr noundef nonnull %i.a, i32 noundef 1) #29 ; 0 uses
  store i64 %4, ptr %i.o, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 40 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = ptrtoint ptr %i.u to i64                 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 %i.v, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 25
  %i.y = load i8, ptr %i.x, align 1
  %.not51 = icmp sgt i8 %i.y, -1
  %i.z = select i1 %.not51, i32 1, i32 3
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.ab = load i32, ptr %i.aa, align 8
  %i.ac = sext i32 %i.ab to i64
  %i.ad = tail call ptr @lock_user(i32 noundef %i.z, i64 noundef %i.v, i64 noundef %i.ac, i1 noundef zeroext true) #29 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr %i.ad, ptr %i.ae, align 8
  %i.af = icmp eq ptr %i.ad, null
  br i1 %i.af, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @g_free(ptr noundef nonnull %i.o) #29
  br label %bb.p

bb.k:                                             ; preds = %bb.i
  store ptr %i.ad, ptr %i.t, align 8
  %i.ag = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @thread_cpu)
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = getelementptr i8, ptr %i.ah, i64 608
  %.val = load ptr, ptr %i.ai, align 16
  %i.aj = getelementptr inbounds nuw i8, ptr %.val, i64 9148
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.al = load i32, ptr %i.ak, align 4
  %i.am = tail call i64 (ptr, i64, ...) @safe_syscall_base(ptr noundef nonnull %i.aj, i64 noundef 16, i32 noundef %2, i32 noundef %i.al, ptr noundef nonnull %i.r) #29 ; 2 uses
  %i.an = icmp eq i64 %i.am, -1
  br i1 %i.an, label %bb.l, label %get_errno.exit

bb.l:                                             ; preds = %bb.k
  %i.ao = tail call ptr @__errno_location() #28
  %i.ap = load i32, ptr %i.ao, align 4
  %i.aq = sub i32 0, %i.ap
  %i.ar = sext i32 %i.aq to i64
  br label %get_errno.exit

get_errno.exit:                                   ; preds = %bb.k, %bb.l
  %.0.i53 = phi i64 [ %i.ar, %bb.l ], [ %i.am, %bb.k ] ; 3 uses
  %i.as = icmp ult i64 %.0.i53, -4096
  br i1 %i.as, label %bb.n, label %bb.m

bb.m:                                             ; preds = %get_errno.exit
  tail call void @g_free(ptr noundef nonnull %i.o) #29
  br label %bb.p

bb.n:                                             ; preds = %get_errno.exit
  %i.at = load ptr, ptr @usbdevfs_urb_hashtable.urb_hashtable, align 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i, label %bb.o, label %urb_hashtable_insert.exit

bb.o:                                             ; preds = %bb.n
  %i.au = tail call ptr @g_hash_table_new(ptr noundef nonnull @g_int64_hash, ptr noundef nonnull @g_int64_equal) #29 ; 2 uses
  store ptr %i.au, ptr @usbdevfs_urb_hashtable.urb_hashtable, align 8
  br label %urb_hashtable_insert.exit

urb_hashtable_insert.exit:                        ; preds = %bb.n, %bb.o
  %i.av = phi ptr [ %i.au, %bb.o ], [ %i.at, %bb.n ]
  %i.aw = tail call i32 @g_hash_table_insert(ptr noundef %i.av, ptr noundef nonnull %i.o, ptr noundef nonnull %i.o) #29 ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.m, %urb_hashtable_insert.exit, %thunk_type_size.exit, %bb.j, %bb.h
  %.0 = phi i64 [ -14, %bb.j ], [ -12, %thunk_type_size.exit ], [ -14, %bb.h ], [ %.0.i53, %urb_hashtable_insert.exit ], [ %.0.i53, %bb.m ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @do_ioctl_usbdevfs_discardurb(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, i32 noundef %2, i32 %3, i64 noundef %4) #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %4, ptr %i.a, align 8
  %i.b = load ptr, ptr @usbdevfs_urb_hashtable.urb_hashtable, align 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %bb.b, label %urb_hashtable_lookup.exit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @g_hash_table_new(ptr noundef nonnull @g_int64_hash, ptr noundef nonnull @g_int64_equal) #29 ; 2 uses
  store ptr %i.c, ptr @usbdevfs_urb_hashtable.urb_hashtable, align 8
  br label %urb_hashtable_lookup.exit

urb_hashtable_lookup.exit:                        ; preds = %bb.a, %bb.b
  %i.d = phi ptr [ %i.c, %bb.b ], [ %i.b, %bb.a ]
  %i.e = call ptr @g_hash_table_lookup(ptr noundef %i.d, ptr noundef nonnull %i.a) #29 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %get_errno.exit, label %bb.c

bb.c:                                             ; preds = %urb_hashtable_lookup.exit
  %i.f = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @thread_cpu)
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr i8, ptr %i.g, i64 608
  %.val = load ptr, ptr %i.h, align 16
  %i.i = getelementptr inbounds nuw i8, ptr %.val, i64 9148
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.k = load i32, ptr %i.j, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.m = call i64 (ptr, i64, ...) @safe_syscall_base(ptr noundef nonnull %i.i, i64 noundef 16, i32 noundef %2, i32 noundef %i.k, ptr noundef nonnull %i.l) #29 ; 2 uses
  %i.n = icmp eq i64 %i.m, -1
  br i1 %i.n, label %bb.d, label %get_errno.exit

bb.d:                                             ; preds = %bb.c
  %i.o = tail call ptr @__errno_location() #28
  %i.p = load i32, ptr %i.o, align 4
  %i.q = sub i32 0, %i.p
  %i.r = sext i32 %i.q to i64
  br label %get_errno.exit

get_errno.exit:                                   ; preds = %bb.d, %bb.c, %urb_hashtable_lookup.exit
  %.0 = phi i64 [ -14, %urb_hashtable_lookup.exit ], [ %i.r, %bb.d ], [ %i.m, %bb.c ]
  ret i64 %.0
}
end_hunk_0
begin_hunk_1_@do_ioctl_usbdevfs_reapurb:thunk_type_size.exit
bb.e:                                             ; preds = %thunk_type_size.exit42
  %i.am = load i64, ptr %i.w, align 8
  store i64 %i.am, ptr %i.c, align 8
  %i.an = call ptr @thunk_convert(ptr noundef nonnull %i.al, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b, i32 noundef 0) #29 ; 0 uses
  br label %.sink.split

.sink.split:                                      ; preds = %thunk_type_size.exit42, %urb_hashtable_remove.exit, %bb.e
  %.0.ph = phi i64 [ %.0.i40, %bb.e ], [ -14, %urb_hashtable_remove.exit ], [ -14, %thunk_type_size.exit42 ]
  call void @g_free(ptr noundef nonnull %i.w) #29
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.b, %get_errno.exit
  %.0 = phi i64 [ %.0.i40, %get_errno.exit ], [ -14, %bb.b ], [ %.0.ph, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 -2147483648, 2147483648) i64 @do_ioctl_ifconf(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 %3, i64 noundef %4) #2 {
bb.a:
  %i.a = alloca [2 x i32], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i64 34359738379, ptr %i.a, align 8
  %i.c = load i32, ptr %i.b, align 4
  %i.d = icmp eq i32 %i.c, 9
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.583, ptr noundef nonnull @.str.584, i32 noundef 4828, ptr noundef nonnull @__PRETTY_FUNCTION__.do_ioctl_ifconf) #30
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i32, ptr %i.e, align 8
  %i.g = icmp eq i32 %i.f, 3
  br i1 %i.g, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @__assert_fail(ptr noundef nonnull @.str.585, ptr noundef nonnull @.str.584, i32 noundef 4829, ptr noundef nonnull @__PRETTY_FUNCTION__.do_ioctl_ifconf) #30
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 3 uses
  %i.i = load i32, ptr %i.h, align 4              ; 3 uses
  switch i32 %i.i, label %bb.j [
    i32 1, label %thunk_type_size.exit
    i32 2, label %thunk_type_size.exit
    i32 3, label %bb.f
    i32 7, label %bb.g
    i32 8, label %bb.g
    i32 4, label %bb.g
    i32 5, label %bb.g
    i32 6, label %bb.g
    i32 9, label %bb.g
    i32 12, label %bb.g
    i32 10, label %bb.h
    i32 11, label %bb.i
  ]

bb.f:                                             ; preds = %bb.e
  br label %thunk_type_size.exit

bb.g:                                             ; preds = %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e
  br label %thunk_type_size.exit

bb.h:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load i32, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.m = tail call i32 @thunk_type_size_array(ptr noundef nonnull %i.l, i32 noundef 0) #29
  %i.n = mul i32 %i.m, %i.k
  br label %thunk_type_size.exit

bb.i:                                             ; preds = %bb.e
  %i.o = load ptr, ptr @struct_entries, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.q = load i32, ptr %i.p, align 8
  %i.r = zext i32 %i.q to i64
  %i.s = getelementptr inbounds nuw [80 x i8], ptr %i.o, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  %i.u = load i32, ptr %i.t, align 4
  br label %thunk_type_size.exit

bb.j:                                             ; preds = %bb.e
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.599, i32 noundef 145, ptr noundef nonnull @__func__.thunk_type_size, ptr noundef null) #30
  unreachable

thunk_type_size.exit:                             ; preds = %bb.e, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i
  %.0.i = phi i32 [ %i.u, %bb.i ], [ %i.n, %bb.h ], [ 4, %bb.f ], [ 8, %bb.g ], [ %i.i, %bb.e ], [ %i.i, %bb.e ]
  %i.v = sext i32 %.0.i to i64                    ; 2 uses
  %i.w = tail call ptr @lock_user(i32 noundef 1, i64 noundef %4, i64 noundef %i.v, i1 noundef zeroext true) #29 ; 2 uses
  %.not = icmp eq ptr %i.w, null
  br i1 %.not, label %bb.u, label %thunk_type_size.exit84

thunk_type_size.exit84:                           ; preds = %thunk_type_size.exit
  %i.x = tail call ptr @thunk_convert(ptr noundef %1, ptr noundef nonnull %i.w, ptr noundef nonnull %i.h, i32 noundef 1) #29 ; 0 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = load ptr, ptr %i.y, align 8              ; 3 uses
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = load ptr, ptr @struct_entries, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 936
  %i.ad = load i32, ptr %i.ac, align 4            ; 3 uses
  %.not78 = icmp eq ptr %i.z, null                ; 2 uses
  br i1 %.not78, label %bb.o, label %bb.k

bb.k:                                             ; preds = %thunk_type_size.exit84
  %i.ae = load i32, ptr %1, align 8
  %i.af = sdiv i32 %i.ae, %i.ad
  %i.ag = mul i32 %i.af, 40                       ; 2 uses
  %i.ah = add i32 %i.ag, 16                       ; 2 uses
  %i.ai = icmp ult i32 %i.ah, 4097                ; 2 uses
  br i1 %i.ai, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aj = zext i32 %i.ah to i64
  %i.ak = tail call noalias ptr @g_try_malloc(i64 noundef %i.aj) #31 ; 3 uses
  %.not79 = icmp eq ptr %i.ak, null
  br i1 %.not79, label %bb.u, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ak, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef 16, i1 noundef false) #29
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.k
  %.070 = phi ptr [ %i.ak, %bb.m ], [ %1, %bb.k ] ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.070, i64 16
  store i32 %i.ag, ptr %.070, align 8
  br label %bb.o

bb.o:                                             ; preds = %thunk_type_size.exit84, %bb.n
  %.171 = phi ptr [ %.070, %bb.n ], [ %1, %thunk_type_size.exit84 ] ; 6 uses
  %.1 = phi i1 [ %i.ai, %bb.n ], [ true, %thunk_type_size.exit84 ]
  %.0 = phi ptr [ %i.al, %bb.n ], [ null, %thunk_type_size.exit84 ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.171, i64 8 ; 2 uses
  store ptr %.0, ptr %i.am, align 8
  %i.an = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @thread_cpu)
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = getelementptr i8, ptr %i.ao, i64 608
  %.val = load ptr, ptr %i.ap, align 16
  %i.aq = getelementptr inbounds nuw i8, ptr %.val, i64 9148
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.as = load i32, ptr %i.ar, align 4
  %i.at = tail call i64 (ptr, i64, ...) @safe_syscall_base(ptr noundef nonnull %i.aq, i64 noundef 16, i32 noundef %2, i32 noundef %i.as, ptr noundef nonnull %.171) #29 ; 2 uses
  %i.au = icmp eq i64 %i.at, -1
  br i1 %i.au, label %bb.p, label %get_errno.exit

bb.p:                                             ; preds = %bb.o
  %i.av = tail call ptr @__errno_location() #28
  %i.aw = load i32, ptr %i.av, align 4
  %i.ax = sub i32 0, %i.aw
  %i.ay = zext i32 %i.ax to i64
  br label %get_errno.exit

get_errno.exit:                                   ; preds = %bb.o, %bb.p
  %.0.i85 = phi i64 [ %i.ay, %bb.p ], [ %i.at, %bb.o ]
  %sext = shl i64 %.0.i85, 32
  %i.az = ashr exact i64 %sext, 32                ; 3 uses
  %i.ba = icmp ult i64 %i.az, -4096
  br i1 %i.ba, label %bb.q, label %.loopexit

bb.q:                                             ; preds = %get_errno.exit
  %i.bb = load i32, ptr %.171, align 8
  %i.bc = sext i32 %i.bb to i64
  %i.bd = udiv i64 %i.bc, 40                      ; 2 uses
  %i.be = trunc i64 %i.bd to i32                  ; 2 uses
  %i.bf = mul i32 %i.ad, %i.be                    ; 2 uses
  store i32 %i.bf, ptr %.171, align 8
  store ptr %i.z, ptr %i.am, align 8
  %i.bg = tail call ptr @lock_user(i32 noundef 3, i64 noundef %4, i64 noundef %i.v, i1 noundef zeroext false) #29 ; 2 uses
  %.not81 = icmp eq ptr %i.bg, null
  br i1 %.not81, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bh = tail call ptr @thunk_convert(ptr noundef nonnull %i.bg, ptr noundef nonnull %.171, ptr noundef nonnull %i.h, i32 noundef 0) #29 ; 0 uses
  br i1 %.not78, label %.loopexit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bi = sext i32 %i.bf to i64
  %i.bj = tail call ptr @lock_user(i32 noundef 3, i64 noundef %i.aa, i64 noundef %i.bi, i1 noundef zeroext false) #29
  %i.bk = icmp sgt i32 %i.be, 0
  br i1 %i.bk, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.s
  %wide.trip.count = and i64 %i.bd, 2147483647
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %i.bl = trunc nuw nsw i64 %indvars.iv to i32
  %i.bm = mul i32 %i.ad, %i.bl
  %i.bn = sext i32 %i.bm to i64
  %i.bo = getelementptr inbounds i8, ptr %i.bj, i64 %i.bn
  %i.bp = mul nuw nsw i64 %indvars.iv, 40
  %i.bq = getelementptr inbounds nuw i8, ptr %.0, i64 %i.bp
  %i.br = call ptr @thunk_convert(ptr noundef %i.bo, ptr noundef %i.bq, ptr noundef nonnull %i.a, i32 noundef 0) #29 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !27

.loopexit:                                        ; preds = %.lr.ph, %bb.s, %bb.r, %get_errno.exit
  br i1 %.1, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.loopexit
  call void @g_free(ptr noundef nonnull %.171) #29
  br label %bb.u

bb.u:                                             ; preds = %.loopexit, %bb.t, %bb.q, %bb.l, %thunk_type_size.exit
  %.072 = phi i64 [ -14, %bb.q ], [ -12, %bb.l ], [ -14, %thunk_type_size.exit ], [ %i.az, %bb.t ], [ %i.az, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  ret i64 %.072
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @do_ioctl_SIOCGSTAMP(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, i32 noundef %2, i32 %3, i64 noundef %4) #2 {
bb.a:
  %5 = alloca %struct.timeval, align 8            ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false), !annotation !18
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @thread_cpu)
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 608
  %.val = load ptr, ptr %i.c, align 16
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 9148
  %i.e = call i64 (ptr, i64, ...) @safe_syscall_base(ptr noundef nonnull %i.d, i64 noundef 16, i32 noundef %2, i32 noundef 35078, ptr noundef nonnull %5) #29 ; 2 uses
  %i.f = icmp eq i64 %i.e, -1
  br i1 %i.f, label %bb.b, label %get_errno.exit

bb.b:                                             ; preds = %bb.a
  %i.g = tail call ptr @__errno_location() #28
  %i.h = load i32, ptr %i.g, align 4
  %i.i = sub i32 0, %i.h
  %i.j = sext i32 %i.i to i64
  br label %get_errno.exit

get_errno.exit:                                   ; preds = %bb.a, %bb.b
  %.0.i = phi i64 [ %i.j, %bb.b ], [ %i.e, %bb.a ] ; 3 uses
  %i.k = icmp ult i64 %.0.i, -4096
  br i1 %i.k, label %bb.c, label %copy_to_user_timeval.exit

bb.c:                                             ; preds = %get_errno.exit
  %i.l = call ptr @lock_user(i32 noundef 3, i64 noundef %4, i64 noundef 16, i1 noundef zeroext false) #29 ; 3 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %copy_to_user_timeval.exit, label %copy_to_user_timeval.exit.sink.split

copy_to_user_timeval.exit.sink.split:             ; preds = %bb.c
  %i.m = load i64, ptr %5, align 8
  store i64 %i.m, ptr %i.l, align 1
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.p = load i64, ptr %i.o, align 8
  store i64 %i.p, ptr %i.n, align 1
  br label %copy_to_user_timeval.exit

copy_to_user_timeval.exit:                        ; preds = %bb.c, %copy_to_user_timeval.exit.sink.split, %get_errno.exit
  %.0 = phi i64 [ -14, %bb.c ], [ %.0.i, %get_errno.exit ], [ %.0.i, %copy_to_user_timeval.exit.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @do_ioctl_SIOCGSTAMPNS(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, i32 noundef %2, i32 %3, i64 noundef %4) #2 {
bb.a:
  %5 = alloca %struct.timespec, align 8           ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false), !annotation !18
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @thread_cpu)
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 608
  %.val = load ptr, ptr %i.c, align 16
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 9148
  %i.e = call i64 (ptr, i64, ...) @safe_syscall_base(ptr noundef nonnull %i.d, i64 noundef 16, i32 noundef %2, i32 noundef 35079, ptr noundef nonnull %5) #29 ; 2 uses
  %i.f = icmp eq i64 %i.e, -1
  br i1 %i.f, label %bb.b, label %get_errno.exit

bb.b:                                             ; preds = %bb.a
  %i.g = tail call ptr @__errno_location() #28
  %i.h = load i32, ptr %i.g, align 4
  %i.i = sub i32 0, %i.h
  %i.j = sext i32 %i.i to i64
  br label %get_errno.exit

get_errno.exit:                                   ; preds = %bb.a, %bb.b
  %.0.i = phi i64 [ %i.j, %bb.b ], [ %i.e, %bb.a ] ; 3 uses
  %i.k = icmp ult i64 %.0.i, -4096
  br i1 %i.k, label %bb.c, label %host_to_target_timespec.exit

bb.c:                                             ; preds = %get_errno.exit
  %i.l = call ptr @lock_user(i32 noundef 3, i64 noundef %4, i64 noundef 16, i1 noundef zeroext false) #29 ; 3 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %host_to_target_timespec.exit, label %host_to_target_timespec.exit.sink.split

host_to_target_timespec.exit.sink.split:          ; preds = %bb.c
  %i.m = load i64, ptr %5, align 8
  store i64 %i.m, ptr %i.l, align 1
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.p = load i64, ptr %i.o, align 8
  store i64 %i.p, ptr %i.n, align 1
  br label %host_to_target_timespec.exit

host_to_target_timespec.exit:                     ; preds = %bb.c, %host_to_target_timespec.exit.sink.split, %get_errno.exit
  %.0 = phi i64 [ -14, %bb.c ], [ %.0.i, %get_errno.exit ], [ %.0.i, %host_to_target_timespec.exit.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @do_ioctl_dm(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 %3, i64 noundef %4) #2 {
bb.a:
  %i.a = alloca [2 x i32], align 8                ; 5 uses
  %i.b = alloca [2 x i32], align 8                ; 5 uses
  %i.c = alloca [2 x i32], align 8                ; 5 uses
  %i.d = alloca [2 x i32], align 8                ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 3 uses
  %i.f = load i32, ptr %i.e, align 4              ; 3 uses
  switch i32 %i.f, label %bb.f [
    i32 1, label %thunk_type_size.exit
    i32 2, label %thunk_type_size.exit
    i32 3, label %bb.b
    i32 7, label %bb.c
    i32 8, label %bb.c
    i32 4, label %bb.c
    i32 5, label %bb.c
    i32 6, label %bb.c
    i32 9, label %bb.c
    i32 12, label %bb.c
    i32 10, label %bb.d
    i32 11, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  br label %thunk_type_size.exit

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  br label %thunk_type_size.exit

bb.d:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load i32, ptr %i.g, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.j = tail call i32 @thunk_type_size_array(ptr noundef nonnull %i.i, i32 noundef 0) #29
  %i.k = mul i32 %i.j, %i.h
  br label %thunk_type_size.exit

bb.e:                                             ; preds = %bb.a
  %i.l = load ptr, ptr @struct_entries, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load i32, ptr %i.m, align 4
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [80 x i8], ptr %i.l, i64 %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  %i.r = load i32, ptr %i.q, align 4
  br label %thunk_type_size.exit

bb.f:                                             ; preds = %bb.a
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.599, i32 noundef 145, ptr noundef nonnull @__func__.thunk_type_size, ptr noundef null) #30
  unreachable

thunk_type_size.exit:                             ; preds = %bb.a, %bb.a, %bb.b, %bb.c, %bb.d, %bb.e
  %.0.i = phi i32 [ %i.r, %bb.e ], [ %i.k, %bb.d ], [ 4, %bb.b ], [ 8, %bb.c ], [ %i.f, %bb.a ], [ %i.f, %bb.a ]
  %i.s = sext i32 %.0.i to i64                    ; 2 uses
  %i.t = tail call ptr @lock_user(i32 noundef 1, i64 noundef %4, i64 noundef %i.s, i1 noundef zeroext true) #29 ; 2 uses
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %bb.aa, label %bb.g

bb.g:                                             ; preds = %thunk_type_size.exit
  %i.u = tail call ptr @thunk_convert(ptr noundef %1, ptr noundef nonnull %i.t, ptr noundef nonnull %i.e, i32 noundef 1) #29 ; 0 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.w = load i32, ptr %i.v, align 4              ; 3 uses
  %i.x = add i32 %i.w, -1073741825
  %or.cond = icmp ult i32 %i.x, -1073741520
  br i1 %or.cond, label %bb.aa, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = shl nuw i32 %i.w, 1
  %i.z = zext i32 %i.y to i64
  %i.aa = tail call noalias ptr @g_malloc0(i64 noundef %i.z) #31 ; 23 uses
  %i.ab = ptrtoaddr ptr %i.aa to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(305) %i.aa, ptr noundef nonnull align 4 dereferenceable(305) %1, i64 noundef 305, i1 noundef false) #29
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 7 uses
  %i.ad = load i32, ptr %i.ac, align 8            ; 2 uses
  %i.ae = zext i32 %i.ad to i64                   ; 2 uses
  %i.af = add i64 %4, %i.ae
  %i.ag = sub i32 %i.w, %i.ad
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ae ; 4 uses
  %i.ai = zext i32 %i.ag to i64                   ; 3 uses
  %i.aj = tail call ptr @lock_user(i32 noundef 1, i64 noundef %i.af, i64 noundef %i.ai, i1 noundef zeroext true) #29 ; 5 uses
  %.not212 = icmp eq ptr %i.aj, null
  br i1 %.not212, label %bb.aa, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 4            ; 13 uses
  switch i32 %i.al, label %bb.aa [
    i32 -1053229823, label %bb.n
    i32 -1053229822, label %bb.n
    i32 -1053229821, label %bb.n
    i32 -1053229820, label %bb.n
    i32 -1053229818, label %bb.n
    i32 -1053229817, label %bb.n
    i32 -1053229816, label %bb.n
    i32 -1053229812, label %bb.n
    i32 -1053229814, label %bb.n
    i32 -1053229813, label %bb.n
    i32 -1053229811, label %bb.n
    i32 -1053229819, label %bb.j
    i32 -1053229809, label %bb.j
    i32 -1053229810, label %bb.k
    i32 -1053229815, label %bb.l
  ]

bb.j:                                             ; preds = %bb.i, %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.ah, ptr noundef nonnull align 1 %i.aj, i64 noundef %i.ai, i1 noundef false) #29
  br label %bb.n

bb.k:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.ah, ptr noundef nonnull align 1 %i.aj, i64 noundef %i.ai, i1 noundef false) #29
  %i.am = load i64, ptr %i.aj, align 8
  store i64 %i.am, ptr %i.ah, align 8
  br label %bb.n

bb.l:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i64 219043332107, ptr %i.a, align 8
  %i.an = call fastcc i32 @thunk_type_size(ptr noundef nonnull %i.a)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aa, i64 20 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4
  %.not251 = icmp eq i32 %i.ap, 0
  br i1 %.not251, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.l
  %i.aq = sext i32 %i.an to i64
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph, %bb.m
  %.0201240 = phi i32 [ 0, %.lr.ph ], [ %i.bd, %bb.m ]
  %.0202239 = phi ptr [ %i.ah, %.lr.ph ], [ %i.bc, %bb.m ] ; 4 uses
  %.0203238 = phi ptr [ %i.aj, %.lr.ph ], [ %i.ba, %bb.m ] ; 3 uses
  %i.ar = call ptr @thunk_convert(ptr noundef nonnull %.0202239, ptr noundef nonnull %.0203238, ptr noundef nonnull %i.a, i32 noundef 1) #29 ; 0 uses
  %i.as = getelementptr inbounds i8, ptr %.0203238, i64 %i.aq ; 2 uses
  %i.at = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.as) #32
  %i.au = getelementptr inbounds nuw i8, ptr %.0202239, i64 20 ; 2 uses
  %i.av = load i32, ptr %i.au, align 4
  %i.aw = trunc i64 %i.at to i32
  %i.ax = add i32 %i.aw, 41                       ; 2 uses
  store i32 %i.ax, ptr %i.au, align 4
  %i.ay = getelementptr inbounds nuw i8, ptr %.0202239, i64 40
  %strcpy = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.ay, ptr noundef nonnull dereferenceable(1) %i.as) ; 0 uses
  %i.az = zext i32 %i.av to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %.0203238, i64 %i.az
  %i.bb = zext i32 %i.ax to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %.0202239, i64 %i.bb
  %i.bd = add nuw i32 %.0201240, 1                ; 2 uses
  %i.be = load i32, ptr %i.ao, align 4
  %i.bf = icmp ult i32 %i.bd, %i.be
  br i1 %i.bf, label %bb.m, label %._crit_edge, !llvm.loop !28

._crit_edge:                                      ; preds = %bb.m, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %.pre = load i32, ptr %i.ak, align 4
  br label %bb.n

bb.n:                                             ; preds = %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %._crit_edge, %bb.k, %bb.j
  %i.bg = phi i32 [ %i.al, %bb.i ], [ %i.al, %bb.i ], [ %i.al, %bb.i ], [ %i.al, %bb.i ], [ %i.al, %bb.i ], [ %i.al, %bb.i ], [ %i.al, %bb.i ], [ %i.al, %bb.i ], [ %i.al, %bb.i ], [ %i.al, %bb.i ], [ %i.al, %bb.i ], [ %.pre, %._crit_edge ], [ -1053229810, %bb.k ], [ %i.al, %bb.j ]
  %i.bh = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @thread_cpu)
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = getelementptr i8, ptr %i.bi, i64 608
  %.val = load ptr, ptr %i.bj, align 16
  %i.bk = getelementptr inbounds nuw i8, ptr %.val, i64 9148
  %i.bl = call i64 (ptr, i64, ...) @safe_syscall_base(ptr noundef nonnull %i.bk, i64 noundef 16, i32 noundef %2, i32 noundef %i.bg, ptr noundef nonnull %i.aa) #29 ; 2 uses
  %i.bm = icmp eq i64 %i.bl, -1
  br i1 %i.bm, label %bb.o, label %get_errno.exit

bb.o:                                             ; preds = %bb.n
  %i.bn = tail call ptr @__errno_location() #28
  %i.bo = load i32, ptr %i.bn, align 4
  %i.bp = sub i32 0, %i.bo
  %i.bq = sext i32 %i.bp to i64
  br label %get_errno.exit

get_errno.exit:                                   ; preds = %bb.n, %bb.o
  %.0.i218 = phi i64 [ %i.bq, %bb.o ], [ %i.bl, %bb.n ] ; 3 uses
  %i.br = icmp ult i64 %.0.i218, -4096
  br i1 %i.br, label %bb.p, label %bb.aa

bb.p:                                             ; preds = %get_errno.exit
  %i.bs = load i32, ptr %i.ac, align 8            ; 2 uses
  %i.bt = zext i32 %i.bs to i64
  %i.bu = add i64 %4, %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  %i.bw = load i32, ptr %i.bv, align 4
  %i.bx = sub i32 %i.bw, %i.bs                    ; 4 uses
  %i.by = zext i32 %i.bx to i64
  %i.bz = call ptr @lock_user(i32 noundef 3, i64 noundef %i.bu, i64 noundef %i.by, i1 noundef zeroext false) #29 ; 13 uses
  %i.ca = ptrtoaddr ptr %i.bz to i64
  %i.cb = load i32, ptr %i.ak, align 4
  switch i32 %i.cb, label %bb.aa [
    i32 -1053229823, label %.loopexit236
    i32 -1053229821, label %.loopexit236
    i32 -1053229820, label %.loopexit236
    i32 -1053229819, label %.loopexit236
    i32 -1053229818, label %.loopexit236
    i32 -1053229817, label %.loopexit236
    i32 -1053229815, label %.loopexit236
    i32 -1053229814, label %.loopexit236
    i32 -1053229810, label %.loopexit236
    i32 -1053229809, label %.loopexit236
    i32 -1053229822, label %bb.q
    i32 -1053229816, label %bb.s
    i32 -1053229812, label %bb.s
    i32 -1053229813, label %bb.w
    i32 -1053229811, label %bb.x
  ]

bb.q:                                             ; preds = %bb.p
  %i.cc = load i32, ptr %i.ac, align 8
  %i.cd = zext i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.cd ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  store i64 227633266699, ptr %i.b, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8 ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 8            ; 2 uses
  %.not216274 = icmp eq i32 %i.cg, 0
  br i1 %.not216274, label %.loopexit.loopexit.critedge, label %.lr.ph279

.lr.ph279:                                        ; preds = %bb.q, %.thread
  %i.ch = phi i32 [ %i.db, %.thread ], [ %i.cg, %bb.q ]
  %i.ci = phi ptr [ %i.da, %.thread ], [ %i.cf, %bb.q ] ; 2 uses
  %.0195277 = phi ptr [ %i.cx, %.thread ], [ %i.bz, %bb.q ] ; 3 uses
  %.0197276 = phi i32 [ %i.cv, %.thread ], [ %i.bx, %bb.q ] ; 2 uses
  %.0199275 = phi ptr [ %i.cz, %.thread ], [ %i.ce, %bb.q ] ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.0199275, i64 12
  %i.ck = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cj) #32
  %i.cl = trunc i64 %i.ck to i32
  %i.cm = add i32 %i.cl, 13                       ; 2 uses
  store i32 %i.cm, ptr %i.ci, align 8
  %i.cn = icmp ult i32 %.0197276, %i.cm
  br i1 %i.cn, label %bb.r, label %.thread

bb.r:                                             ; preds = %.lr.ph279
  %i.co = getelementptr inbounds nuw i8, ptr %i.aa, i64 28 ; 2 uses
  %i.cp = load i32, ptr %i.co, align 4
  %i.cq = or i32 %i.cp, 256
  store i32 %i.cq, ptr %i.co, align 4
  br label %.loopexit

.thread:                                          ; preds = %.lr.ph279
  %i.cr = call ptr @thunk_convert(ptr noundef %.0195277, ptr noundef nonnull %.0199275, ptr noundef nonnull %i.b, i32 noundef 0) #29 ; 0 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.0195277, i64 12
  %i.ct = getelementptr inbounds nuw i8, ptr %.0199275, i64 12
  %strcpy289 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.cs, ptr noundef nonnull dereferenceable(1) %i.ct) ; 0 uses
  %i.cu = load i32, ptr %i.ci, align 8            ; 2 uses
  %i.cv = sub i32 %.0197276, %i.cu
  %i.cw = zext i32 %i.cu to i64
  %i.cx = getelementptr inbounds nuw i8, ptr %.0195277, i64 %i.cw ; 2 uses
  %i.cy = zext i32 %i.ch to i64
  %i.cz = getelementptr inbounds nuw i8, ptr %.0199275, i64 %i.cy ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8 ; 2 uses
  %i.db = load i32, ptr %i.da, align 8            ; 2 uses
  %.not216 = icmp eq i32 %i.db, 0
  br i1 %.not216, label %.loopexit.loopexit.critedge, label %.lr.ph279

.loopexit.loopexit.critedge:                      ; preds = %.thread, %bb.q
  %.0199.lcssa = phi ptr [ %i.ce, %bb.q ], [ %i.cz, %.thread ] ; 2 uses
  %.0195.lcssa = phi ptr [ %i.bz, %bb.q ], [ %i.cx, %.thread ] ; 2 uses
  %i.dc = call ptr @thunk_convert(ptr noundef %.0195.lcssa, ptr noundef nonnull %.0199.lcssa, ptr noundef nonnull %i.b, i32 noundef 0) #29 ; 0 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.0195.lcssa, i64 12
  %i.de = getelementptr inbounds nuw i8, ptr %.0199.lcssa, i64 12
  %strcpy290 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.dd, ptr noundef nonnull dereferenceable(1) %i.de) ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit.critedge, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  br label %.loopexit236

bb.s:                                             ; preds = %bb.p, %bb.p
  %i.df = load i32, ptr %i.ac, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #29
  store i64 219043332107, ptr %i.c, align 8
  %i.dg = call fastcc i32 @thunk_type_size(ptr noundef nonnull %i.c)
  %i.dh = getelementptr inbounds nuw i8, ptr %i.aa, i64 20 ; 2 uses
  %i.di = load i32, ptr %i.dh, align 4
  %.not252 = icmp eq i32 %i.di, 0
  br i1 %.not252, label %.loopexit235, label %.lr.ph250

.lr.ph250:                                        ; preds = %bb.s
  %i.dj = zext i32 %i.df to i64
  %i.dk = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.dj
  %i.dl = ptrtoint ptr %i.bz to i64
  %i.dm = sext i32 %i.dg to i64                   ; 2 uses
  %reass.sub = sub i64 %i.dm, %i.dl
  %i.dn = add i64 %reass.sub, 1
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph250, %bb.v
  %.0188248 = phi i32 [ 0, %.lr.ph250 ], [ %i.ek, %bb.v ]
  %.0189247 = phi ptr [ %i.bz, %.lr.ph250 ], [ %i.ee, %bb.v ] ; 3 uses
  %.0191246 = phi ptr [ %i.dk, %.lr.ph250 ], [ %i.ej, %bb.v ] ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.0191246, i64 20 ; 3 uses
  %i.dp = load i32, ptr %i.do, align 4
  %i.dq = getelementptr inbounds nuw i8, ptr %.0191246, i64 40 ; 2 uses
  %i.dr = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.dq) #32
  %i.ds = ptrtoint ptr %.0189247 to i64
  %i.dt = add i64 %i.dn, %i.ds
  %i.du = add i64 %i.dt, %i.dr
  %i.dv = trunc i64 %i.du to i32                  ; 2 uses
  store i32 %i.dv, ptr %i.do, align 4
  %i.dw = icmp ult i32 %i.bx, %i.dv
  br i1 %i.dw, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.dx = getelementptr inbounds nuw i8, ptr %i.aa, i64 28 ; 2 uses
  %i.dy = load i32, ptr %i.dx, align 4
  %i.dz = or i32 %i.dy, 256
  store i32 %i.dz, ptr %i.dx, align 4
  br label %.loopexit235

bb.v:                                             ; preds = %bb.t
  %i.ea = call ptr @thunk_convert(ptr noundef %.0189247, ptr noundef nonnull %.0191246, ptr noundef nonnull %i.c, i32 noundef 0) #29 ; 0 uses
  %i.eb = getelementptr inbounds i8, ptr %.0189247, i64 %i.dm
  %strcpy288 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.eb, ptr noundef nonnull dereferenceable(1) %i.dq) ; 0 uses
  %i.ec = load i32, ptr %i.do, align 4
  %i.ed = zext i32 %i.ec to i64
  %i.ee = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.ed
  %i.ef = load i32, ptr %i.ac, align 8
  %i.eg = zext i32 %i.ef to i64
  %i.eh = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.eg
  %i.ei = zext i32 %i.dp to i64
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.ei
  %i.ek = add nuw i32 %.0188248, 1                ; 2 uses
  %i.el = load i32, ptr %i.dh, align 4
  %i.em = icmp ult i32 %i.ek, %i.el
  br i1 %i.em, label %bb.t, label %.loopexit235, !llvm.loop !29

.loopexit235:                                     ; preds = %bb.v, %bb.s, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #29
  br label %.loopexit236

bb.w:                                             ; preds = %bb.p
  %i.en = load i32, ptr %i.ac, align 8
  %i.eo = zext i32 %i.en to i64                   ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.eo ; 5 uses
  %i.eq = load i32, ptr %i.ep, align 4            ; 7 uses
  store i32 %i.eq, ptr %i.bz, align 4
  %i.er = icmp sgt i32 %i.eq, 0
  br i1 %i.er, label %.lr.ph245.preheader, label %.loopexit236

.lr.ph245.preheader:                              ; preds = %bb.w
  %i.es = zext nneg i32 %i.eq to i64              ; 2 uses
  %min.iters.check = icmp ult i32 %i.eq, 10
  br i1 %min.iters.check, label %.lr.ph245.preheader292, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph245.preheader
  %i.et = add i64 %i.ab, %i.eo
  %i.eu = sub i64 %i.et, %i.ca
  %diff.check = icmp ugt i64 %i.eu, -32
  br i1 %diff.check, label %.lr.ph245.preheader292, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.es, 2147483644              ; 4 uses
  %i.ev = trunc nuw nsw i64 %n.vec to i32
  %i.ew = shl nuw nsw i64 %n.vec, 3               ; 2 uses
  %i.ex = getelementptr i8, ptr %i.bz, i64 %i.ew
  %i.ey = getelementptr i8, ptr %i.ep, i64 %i.ew
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ez = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bz, i64 %i.ez ; 2 uses
  %next.gep282 = getelementptr i8, ptr %i.ep, i64 %i.ez ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %next.gep282, i64 8
  %i.fb = getelementptr inbounds nuw i8, ptr %next.gep, i64 8
  %i.fc = getelementptr inbounds nuw i8, ptr %next.gep282, i64 24
  %wide.load = load <2 x i64>, ptr %i.fa, align 8
  %wide.load283 = load <2 x i64>, ptr %i.fc, align 8
  %i.fd = getelementptr inbounds nuw i8, ptr %next.gep, i64 24
  store <2 x i64> %wide.load, ptr %i.fb, align 8
  store <2 x i64> %wide.load283, ptr %i.fd, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fe = icmp eq i64 %index.next, %n.vec
  br i1 %i.fe, label %middle.block, label %vector.body, !llvm.loop !30

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.es
  br i1 %cmp.n, label %.loopexit236, label %.lr.ph245.preheader292

.lr.ph245.preheader292:                           ; preds = %vector.memcheck, %.lr.ph245.preheader, %middle.block
  %.0185243.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.lr.ph245.preheader ], [ %i.ev, %middle.block ] ; 4 uses
  %.pn242.ph = phi ptr [ %i.bz, %vector.memcheck ], [ %i.bz, %.lr.ph245.preheader ], [ %i.ex, %middle.block ] ; 2 uses
  %.pn215241.ph = phi ptr [ %i.ep, %vector.memcheck ], [ %i.ep, %.lr.ph245.preheader ], [ %i.ey, %middle.block ] ; 2 uses
  %i.ff = sub i32 %i.eq, %.0185243.ph
  %xtraiter = and i32 %i.ff, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph245.prol.loopexit, label %.lr.ph245.prol

.lr.ph245.prol:                                   ; preds = %.lr.ph245.preheader292, %.lr.ph245.prol
  %.0185243.prol = phi i32 [ %i.fh, %.lr.ph245.prol ], [ %.0185243.ph, %.lr.ph245.preheader292 ]
  %.pn242.prol = phi ptr [ %.0186.prol, %.lr.ph245.prol ], [ %.pn242.ph, %.lr.ph245.preheader292 ]
  %.pn215241.prol = phi ptr [ %.0187.prol, %.lr.ph245.prol ], [ %.pn215241.ph, %.lr.ph245.preheader292 ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph245.prol ], [ 0, %.lr.ph245.preheader292 ]
  %.0187.prol = getelementptr inbounds nuw i8, ptr %.pn215241.prol, i64 8 ; 3 uses
  %.0186.prol = getelementptr inbounds nuw i8, ptr %.pn242.prol, i64 8 ; 3 uses
  %i.fg = load i64, ptr %.0187.prol, align 8
  store i64 %i.fg, ptr %.0186.prol, align 8
  %i.fh = add nuw nsw i32 %.0185243.prol, 1       ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph245.prol.loopexit, label %.lr.ph245.prol, !llvm.loop !31

.lr.ph245.prol.loopexit:                          ; preds = %.lr.ph245.prol, %.lr.ph245.preheader292
  %.0185243.unr = phi i32 [ %.0185243.ph, %.lr.ph245.preheader292 ], [ %i.fh, %.lr.ph245.prol ]
  %.pn242.unr = phi ptr [ %.pn242.ph, %.lr.ph245.preheader292 ], [ %.0186.prol, %.lr.ph245.prol ]
  %.pn215241.unr = phi ptr [ %.pn215241.ph, %.lr.ph245.preheader292 ], [ %.0187.prol, %.lr.ph245.prol ]
  %i.fi = sub i32 %.0185243.ph, %i.eq
  %i.fj = icmp ugt i32 %i.fi, -8
  br i1 %i.fj, label %.loopexit236, label %.lr.ph245

.lr.ph245:                                        ; preds = %.lr.ph245.prol.loopexit, %.lr.ph245
  %.0185243 = phi i32 [ %i.fs, %.lr.ph245 ], [ %.0185243.unr, %.lr.ph245.prol.loopexit ]
  %.pn242 = phi ptr [ %.0186.7, %.lr.ph245 ], [ %.pn242.unr, %.lr.ph245.prol.loopexit ] ; 8 uses
  %.pn215241 = phi ptr [ %.0187.7, %.lr.ph245 ], [ %.pn215241.unr, %.lr.ph245.prol.loopexit ] ; 8 uses
  %.0187 = getelementptr inbounds nuw i8, ptr %.pn215241, i64 8
  %.0186 = getelementptr inbounds nuw i8, ptr %.pn242, i64 8
  %i.fk = load i64, ptr %.0187, align 8
  store i64 %i.fk, ptr %.0186, align 8
  %.0187.1 = getelementptr inbounds nuw i8, ptr %.pn215241, i64 16
  %.0186.1 = getelementptr inbounds nuw i8, ptr %.pn242, i64 16
  %i.fl = load i64, ptr %.0187.1, align 8
  store i64 %i.fl, ptr %.0186.1, align 8
  %.0187.2 = getelementptr inbounds nuw i8, ptr %.pn215241, i64 24
  %.0186.2 = getelementptr inbounds nuw i8, ptr %.pn242, i64 24
  %i.fm = load i64, ptr %.0187.2, align 8
  store i64 %i.fm, ptr %.0186.2, align 8
  %.0187.3 = getelementptr inbounds nuw i8, ptr %.pn215241, i64 32
  %.0186.3 = getelementptr inbounds nuw i8, ptr %.pn242, i64 32
  %i.fn = load i64, ptr %.0187.3, align 8
  store i64 %i.fn, ptr %.0186.3, align 8
  %.0187.4 = getelementptr inbounds nuw i8, ptr %.pn215241, i64 40
  %.0186.4 = getelementptr inbounds nuw i8, ptr %.pn242, i64 40
  %i.fo = load i64, ptr %.0187.4, align 8
  store i64 %i.fo, ptr %.0186.4, align 8
  %.0187.5 = getelementptr inbounds nuw i8, ptr %.pn215241, i64 48
  %.0186.5 = getelementptr inbounds nuw i8, ptr %.pn242, i64 48
  %i.fp = load i64, ptr %.0187.5, align 8
  store i64 %i.fp, ptr %.0186.5, align 8
  %.0187.6 = getelementptr inbounds nuw i8, ptr %.pn215241, i64 56
  %.0186.6 = getelementptr inbounds nuw i8, ptr %.pn242, i64 56
  %i.fq = load i64, ptr %.0187.6, align 8
  store i64 %i.fq, ptr %.0186.6, align 8
  %.0187.7 = getelementptr inbounds nuw i8, ptr %.pn215241, i64 64 ; 2 uses
  %.0186.7 = getelementptr inbounds nuw i8, ptr %.pn242, i64 64 ; 2 uses
  %i.fr = load i64, ptr %.0187.7, align 8
  store i64 %i.fr, ptr %.0186.7, align 8
  %i.fs = add nuw nsw i32 %.0185243, 8            ; 2 uses
  %exitcond.not.7 = icmp eq i32 %i.fs, %i.eq
  br i1 %exitcond.not.7, label %.loopexit236, label %.lr.ph245, !llvm.loop !32

bb.x:                                             ; preds = %bb.p
  %i.ft = load i32, ptr %i.ac, align 8
  %i.fu = zext i32 %i.ft to i64
  %i.fv = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.fu ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #29
  store i64 231928233995, ptr %i.d, align 8
  %i.fw = call fastcc i32 @thunk_type_size(ptr noundef nonnull %i.d) ; 2 uses
  %i.fx = add i32 %i.fw, 1
  %i.fy = sext i32 %i.fw to i64                   ; 2 uses
  %i.fz = load i32, ptr %i.fv, align 4            ; 2 uses
  %.not214267 = icmp eq i32 %i.fz, 0
  br i1 %.not214267, label %.loopexit237.loopexit.critedge, label %.lr.ph272

.lr.ph272:                                        ; preds = %bb.x, %.thread262
  %i.ga = phi i32 [ %i.gs, %.thread262 ], [ %i.fz, %bb.x ]
  %.0270 = phi ptr [ %i.gp, %.thread262 ], [ %i.bz, %bb.x ] ; 3 uses
  %.0181269 = phi i32 [ %i.gn, %.thread262 ], [ %i.bx, %bb.x ] ; 2 uses
  %.0183268 = phi ptr [ %i.gr, %.thread262 ], [ %i.fv, %bb.x ] ; 6 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.0183268, i64 16
  %i.gc = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.gb) #32
  %i.gd = trunc i64 %i.gc to i32
  %i.ge = add i32 %i.fx, %i.gd                    ; 2 uses
  store i32 %i.ge, ptr %.0183268, align 4
  %i.gf = icmp ult i32 %.0181269, %i.ge
  br i1 %i.gf, label %bb.y, label %.thread262

bb.y:                                             ; preds = %.lr.ph272
  %i.gg = getelementptr inbounds nuw i8, ptr %i.aa, i64 28 ; 2 uses
  %i.gh = load i32, ptr %i.gg, align 4
  %i.gi = or i32 %i.gh, 256
  store i32 %i.gi, ptr %i.gg, align 4
  br label %.loopexit237

.thread262:                                       ; preds = %.lr.ph272
  %i.gj = call ptr @thunk_convert(ptr noundef %.0270, ptr noundef nonnull %.0183268, ptr noundef nonnull %i.d, i32 noundef 0) #29 ; 0 uses
  %i.gk = getelementptr inbounds i8, ptr %.0270, i64 %i.fy
  %i.gl = getelementptr inbounds nuw i8, ptr %.0183268, i64 16
  %strcpy286 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.gk, ptr noundef nonnull dereferenceable(1) %i.gl) ; 0 uses
  %i.gm = load i32, ptr %.0183268, align 4        ; 2 uses
  %i.gn = sub i32 %.0181269, %i.gm
  %i.go = zext i32 %i.gm to i64
  %i.gp = getelementptr inbounds nuw i8, ptr %.0270, i64 %i.go ; 2 uses
  %i.gq = zext i32 %i.ga to i64
  %i.gr = getelementptr inbounds nuw i8, ptr %.0183268, i64 %i.gq ; 3 uses
  %i.gs = load i32, ptr %i.gr, align 4            ; 2 uses
  %.not214 = icmp eq i32 %i.gs, 0
  br i1 %.not214, label %.loopexit237.loopexit.critedge, label %.lr.ph272

.loopexit237.loopexit.critedge:                   ; preds = %.thread262, %bb.x
  %.0183.lcssa = phi ptr [ %i.fv, %bb.x ], [ %i.gr, %.thread262 ] ; 2 uses
  %.0.lcssa = phi ptr [ %i.bz, %bb.x ], [ %i.gp, %.thread262 ] ; 2 uses
  %i.gt = call ptr @thunk_convert(ptr noundef %.0.lcssa, ptr noundef nonnull %.0183.lcssa, ptr noundef nonnull %i.d, i32 noundef 0) #29 ; 0 uses
  %i.gu = getelementptr inbounds i8, ptr %.0.lcssa, i64 %i.fy
  %i.gv = getelementptr inbounds nuw i8, ptr %.0183.lcssa, i64 16
  %strcpy287 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.gu, ptr noundef nonnull dereferenceable(1) %i.gv) ; 0 uses
  br label %.loopexit237

.loopexit237:                                     ; preds = %.loopexit237.loopexit.critedge, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #29
  br label %.loopexit236

.loopexit236:                                     ; preds = %.lr.ph245.prol.loopexit, %.lr.ph245, %middle.block, %bb.w, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %.loopexit237, %.loopexit235, %.loopexit
  %i.gw = call ptr @lock_user(i32 noundef 3, i64 noundef %4, i64 noundef %i.s, i1 noundef zeroext false) #29 ; 2 uses
  %.not217 = icmp eq ptr %i.gw, null
  br i1 %.not217, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %.loopexit236
  %i.gx = call ptr @thunk_convert(ptr noundef nonnull %i.gw, ptr noundef nonnull %i.aa, ptr noundef nonnull %i.e, i32 noundef 0) #29 ; 0 uses
  br label %bb.aa

bb.aa:                                            ; preds = %bb.p, %bb.i, %.loopexit236, %bb.h, %bb.g, %thunk_type_size.exit, %get_errno.exit, %bb.z
  %.0205 = phi i64 [ -14, %thunk_type_size.exit ], [ -22, %bb.g ], [ -14, %.loopexit236 ], [ %.0.i218, %get_errno.exit ], [ -22, %bb.i ], [ %.0.i218, %bb.z ], [ -14, %bb.h ], [ -22, %bb.p ]
  %.0204 = phi ptr [ null, %thunk_type_size.exit ], [ null, %bb.g ], [ %i.aa, %.loopexit236 ], [ %i.aa, %get_errno.exit ], [ %i.aa, %bb.i ], [ %i.aa, %bb.z ], [ %i.aa, %bb.h ], [ %i.aa, %bb.p ]
  call void @g_free(ptr noundef %.0204) #29
  ret i64 %.0205
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @do_ioctl_rt(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2, i32 %3, i64 noundef %4) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8
  %i.c = icmp eq i32 %i.b, 2
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.589, ptr noundef nonnull @.str.584, i32 noundef 5404, ptr noundef nonnull @__PRETTY_FUNCTION__.do_ioctl_rt) #30
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i32, ptr %i.d, align 8
  %i.f = icmp eq i32 %i.e, 9
  br i1 %i.f, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @__assert_fail(ptr noundef nonnull @.str.590, ptr noundef nonnull @.str.584, i32 noundef 5405, ptr noundef nonnull @__PRETTY_FUNCTION__.do_ioctl_rt) #30
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.h = load i32, ptr %i.g, align 4
  %i.i = icmp eq i32 %i.h, 11
  br i1 %i.i, label %thunk_type_size.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @__assert_fail(ptr noundef nonnull @.str.591, ptr noundef nonnull @.str.584, i32 noundef 5407, ptr noundef nonnull @__PRETTY_FUNCTION__.do_ioctl_rt) #30
  unreachable

thunk_type_size.exit:                             ; preds = %bb.e
  %i.j = load ptr, ptr @struct_entries, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8
  %i.m = zext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw [80 x i8], ptr %i.j, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %i.p = load i32, ptr %i.o, align 4
  %i.q = sext i32 %i.p to i64
  %i.r = tail call ptr @lock_user(i32 noundef 1, i64 noundef %4, i64 noundef %i.q, i1 noundef zeroext true) #29 ; 3 uses
  %.not = icmp eq ptr %i.r, null
  br i1 %.not, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %thunk_type_size.exit
  %i.s = load i32, ptr %i.k, align 8
  %i.t = icmp eq i32 %i.s, 6
  br i1 %i.t, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @__assert_fail(ptr noundef nonnull @.str.592, ptr noundef nonnull @.str.584, i32 noundef 5414, ptr noundef nonnull @__PRETTY_FUNCTION__.do_ioctl_rt) #30
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.u = load ptr, ptr @struct_entries, align 8   ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 512
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @__assert_fail(ptr noundef nonnull @.str.593, ptr noundef nonnull @.str.584, i32 noundef 5416, ptr noundef nonnull @__PRETTY_FUNCTION__.do_ioctl_rt) #30
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 496
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 504
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = load ptr, ptr %i.y, align 8             ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.u, i64 488 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 8
  %i.ae = icmp sgt i32 %i.ad, 0
  br i1 %i.ae, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.k
  %i.af = getelementptr inbounds nuw i8, ptr %i.u, i64 480
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 3 uses
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %bb.t
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.t ] ; 4 uses
  %.05478 = phi ptr [ null, %.lr.ph ], [ %.1, %bb.t ]
  %.05577 = phi ptr [ null, %.lr.ph ], [ %.156, %bb.t ]
  %.05776 = phi ptr [ %i.ag, %.lr.ph ], [ %.158, %bb.t ] ; 3 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv
  %i.aj = load i32, ptr %i.ai, align 4            ; 2 uses
  %i.ak = icmp eq i32 %i.aj, 88
  br i1 %i.ak, label %bb.m, label %bb.s

bb.m:                                             ; preds = %bb.l
  %i.al = load i32, ptr %.05776, align 4
  %i.am = icmp eq i32 %i.al, 6
  br i1 %i.am, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @__assert_fail(ptr noundef nonnull @.str.594, ptr noundef nonnull @.str.584, i32 noundef 5423, ptr noundef nonnull @__PRETTY_FUNCTION__.do_ioctl_rt) #30
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv
  %i.ao = load i32, ptr %i.an, align 4
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr inbounds i8, ptr %i.r, i64 %i.ap ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8            ; 2 uses
  %.not69 = icmp eq i64 %i.ar, 0
  br i1 %.not69, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.as = tail call ptr @lock_user_string(i64 noundef %i.ar) #29 ; 2 uses
  %i.at = ptrtoint ptr %i.as to i64
  store i64 %i.at, ptr %i.ah, align 8
  %.not70 = icmp eq ptr %i.as, null
  br i1 %.not70, label %.loopexit, label %bb.r

bb.q:                                             ; preds = %bb.o
  store i64 0, ptr %i.ah, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %i.au = getelementptr inbounds nuw i8, ptr %.05776, i64 4
  br label %bb.t

bb.s:                                             ; preds = %bb.l
  %i.av = sext i32 %i.aj to i64
  %i.aw = getelementptr inbounds i8, ptr %1, i64 %i.av
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv
  %i.ay = load i32, ptr %i.ax, align 4
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr inbounds i8, ptr %i.r, i64 %i.az
  %i.bb = tail call ptr @thunk_convert(ptr noundef %i.aw, ptr noundef nonnull %i.ba, ptr noundef %.05776, i32 noundef 1) #29
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.158 = phi ptr [ %i.au, %bb.r ], [ %i.bb, %bb.s ]
  %.156 = phi ptr [ %i.aq, %bb.r ], [ %.05577, %bb.s ] ; 2 uses
  %.1 = phi ptr [ %i.ah, %bb.r ], [ %.05478, %bb.s ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bc = load i32, ptr %i.ac, align 8
  %i.bd = sext i32 %i.bc to i64
  %i.be = icmp slt i64 %indvars.iv.next, %i.bd
  br i1 %i.be, label %bb.l, label %._crit_edge.loopexit, !llvm.loop !33

._crit_edge.loopexit:                             ; preds = %bb.t
  %i.bf = icmp eq ptr %.1, null
  %i.bg = icmp eq ptr %.156, null
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.k
  %.055.lcssa = phi i1 [ true, %bb.k ], [ %i.bg, %._crit_edge.loopexit ]
  %.054.lcssa = phi i1 [ true, %bb.k ], [ %i.bf, %._crit_edge.loopexit ]
  %i.bh = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @thread_cpu)
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = getelementptr i8, ptr %i.bi, i64 608
  %.val = load ptr, ptr %i.bj, align 16
  %i.bk = getelementptr inbounds nuw i8, ptr %.val, i64 9148
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bm = load i32, ptr %i.bl, align 4
  %i.bn = tail call i64 (ptr, i64, ...) @safe_syscall_base(ptr noundef nonnull %i.bk, i64 noundef 16, i32 noundef %2, i32 noundef %i.bm, ptr noundef %1) #29 ; 2 uses
  %i.bo = icmp eq i64 %i.bn, -1
  br i1 %i.bo, label %bb.u, label %get_errno.exit

bb.u:                                             ; preds = %._crit_edge
  %i.bp = tail call ptr @__errno_location() #28
  %i.bq = load i32, ptr %i.bp, align 4
  %i.br = sub i32 0, %i.bq
  %i.bs = sext i32 %i.br to i64
  br label %get_errno.exit

get_errno.exit:                                   ; preds = %._crit_edge, %bb.u
  %.0.i71 = phi i64 [ %i.bs, %bb.u ], [ %i.bn, %._crit_edge ]
  br i1 %.054.lcssa, label %bb.v, label %bb.w

bb.v:                                             ; preds = %get_errno.exit
  tail call void @__assert_fail(ptr noundef nonnull @.str.595, ptr noundef nonnull @.str.584, i32 noundef 5447, ptr noundef nonnull @__PRETTY_FUNCTION__.do_ioctl_rt) #30
  unreachable

bb.w:                                             ; preds = %get_errno.exit
  br i1 %.055.lcssa, label %bb.x, label %.loopexit

bb.x:                                             ; preds = %bb.w
  tail call void @__assert_fail(ptr noundef nonnull @.str.596, ptr noundef nonnull @.str.584, i32 noundef 5448, ptr noundef nonnull @__PRETTY_FUNCTION__.do_ioctl_rt) #30
  unreachable

.loopexit:                                        ; preds = %bb.p, %bb.w, %thunk_type_size.exit
  %.059 = phi i64 [ %.0.i71, %bb.w ], [ -14, %thunk_type_size.exit ], [ -14, %bb.p ]
  ret i64 %.059
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @do_ioctl_drm(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2, i32 %3, i64 noundef %4) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4
  %cond = icmp eq i32 %i.b, -1069521920
  br i1 %cond, label %bb.b, label %target_to_host_drmversion.exit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @lock_user(i32 noundef 3, i64 noundef %4, i64 noundef 64, i1 noundef zeroext false) #29 ; 10 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %target_to_host_drmversion.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %1, i8 noundef 0, i64 noundef 64, i1 noundef false) #29
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %.val30.i = load i64, ptr %i.d, align 1         ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  store i64 %.val30.i, ptr %i.e, align 8
  %.not.i = icmp eq i64 %.val30.i, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.g = load i64, ptr %i.f, align 8
  %i.h = tail call ptr @lock_user(i32 noundef 3, i64 noundef %i.g, i64 noundef %.val30.i, i1 noundef zeroext false) #29 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.h, ptr %i.i, align 8
  %.not24.i = icmp eq ptr %i.h, null
  br i1 %.not24.i, label %target_to_host_drmversion.exit, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %.val29.i = load i64, ptr %i.j, align 1         ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  store i64 %.val29.i, ptr %i.k, align 8
  %.not25.i = icmp eq i64 %.val29.i, 0
  br i1 %.not25.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.m = load i64, ptr %i.l, align 8
  %i.n = tail call ptr @lock_user(i32 noundef 3, i64 noundef %i.m, i64 noundef %.val29.i, i1 noundef zeroext false) #29 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr %i.n, ptr %i.o, align 8
  %.not26.i = icmp eq ptr %i.n, null
  br i1 %.not26.i, label %target_to_host_drmversion.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  %.val.i = load i64, ptr %i.p, align 1           ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  store i64 %.val.i, ptr %i.q, align 8
  %.not27.i = icmp eq i64 %.val.i, 0
  br i1 %.not27.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.s = load i64, ptr %i.r, align 8
  %i.t = tail call ptr @lock_user(i32 noundef 3, i64 noundef %i.s, i64 noundef %.val.i, i1 noundef zeroext false) #29 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 56
  store ptr %i.t, ptr %i.u, align 8
  %.not28.i = icmp eq ptr %i.t, null
  br i1 %.not28.i, label %target_to_host_drmversion.exit, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.v = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @thread_cpu)
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = getelementptr i8, ptr %i.w, i64 608
  %.val = load ptr, ptr %i.x, align 16
  %i.y = getelementptr inbounds nuw i8, ptr %.val, i64 9148
  %i.z = load i32, ptr %i.a, align 4
  %i.aa = tail call i64 (ptr, i64, ...) @safe_syscall_base(ptr noundef nonnull %i.y, i64 noundef 16, i32 noundef %2, i32 noundef %i.z, ptr noundef nonnull %1) #29 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, -1
  br i1 %i.ab, label %bb.j, label %get_errno.exit

bb.j:                                             ; preds = %bb.i
  %i.ac = tail call ptr @__errno_location() #28
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = sub i32 0, %i.ad
  %i.af = sext i32 %i.ae to i64
  br label %get_errno.exit

get_errno.exit:                                   ; preds = %bb.i, %bb.j
  %.0.i21 = phi i64 [ %i.af, %bb.j ], [ %i.aa, %bb.i ] ; 3 uses
  %i.ag = icmp ult i64 %.0.i21, -4096
  br i1 %i.ag, label %bb.k, label %target_to_host_drmversion.exit

bb.k:                                             ; preds = %get_errno.exit
  %i.ah = load i32, ptr %1, align 8
  store i32 %i.ah, ptr %i.c, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ak = load i32, ptr %i.aj, align 4
  store i32 %i.ak, ptr %i.ai, align 1
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.an = load i32, ptr %i.am, align 8
  store i32 %i.an, ptr %i.al, align 1
  %i.ao = load i64, ptr %i.e, align 8
  store i64 %i.ao, ptr %i.d, align 1
  %i.ap = load i64, ptr %i.k, align 8
  store i64 %i.ap, ptr %i.j, align 1
  %i.aq = load i64, ptr %i.q, align 8
  store i64 %i.aq, ptr %i.p, align 1
  br label %target_to_host_drmversion.exit

target_to_host_drmversion.exit:                   ; preds = %bb.d, %bb.h, %bb.f, %bb.k, %get_errno.exit, %bb.a, %bb.b
  %.017 = phi i64 [ -38, %bb.a ], [ -14, %bb.b ], [ %.0.i21, %get_errno.exit ], [ %.0.i21, %bb.k ], [ -14, %bb.f ], [ -14, %bb.h ], [ -14, %bb.d ]
  ret i64 %.017
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @do_ioctl_drm_i915(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2, i32 %3, i64 noundef %4) #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4
  %cond = icmp eq i32 %i.c, -1072667578
  br i1 %cond, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.d = tail call ptr @lock_user(i32 noundef 1, i64 noundef %4, i64 noundef 16, i1 noundef zeroext false) #29 ; 3 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %do_ioctl_drm_i915_getparam.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.a, align 4, !annotation !18
  %.val20.i = load i32, ptr %i.d, align 1
  store i32 %.val20.i, ptr %1, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.a, ptr %i.e, align 8
  %i.f = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @thread_cpu)
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr i8, ptr %i.g, i64 608
  %.val.i = load ptr, ptr %i.h, align 16
  %i.i = getelementptr inbounds nuw i8, ptr %.val.i, i64 9148
  %i.j = load i32, ptr %i.b, align 4
  %i.k = call i64 (ptr, i64, ...) @safe_syscall_base(ptr noundef nonnull %i.i, i64 noundef 16, i32 noundef %2, i32 noundef %i.j, ptr noundef nonnull %1) #29 ; 2 uses
  %i.l = icmp eq i64 %i.k, -1
  br i1 %i.l, label %bb.d, label %get_errno.exit.i

bb.d:                                             ; preds = %bb.c
  %i.m = tail call ptr @__errno_location() #28
  %i.n = load i32, ptr %i.m, align 4
  %i.o = sub i32 0, %i.n
  %i.p = sext i32 %i.o to i64
  br label %get_errno.exit.i

get_errno.exit.i:                                 ; preds = %bb.d, %bb.c
  %.0.i.i = phi i64 [ %i.p, %bb.d ], [ %i.k, %bb.c ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 8
end_hunk_1
begin_hunk_2_@clone_fork_end:bb.a
  %i.b = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @clone_lock) #29 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @syscall_init() local_unnamed_addr #2 {
bb.a:
  tail call void @thunk_init(i32 noundef 100) #29
  tail call void @thunk_register_struct_direct(i32 noundef 0, ptr noundef nonnull @.str.481, ptr noundef nonnull @struct_termios_def) #29
  tail call void @thunk_register_struct_direct(i32 noundef 1, ptr noundef nonnull @.str.482, ptr noundef nonnull @struct_termios2_def) #29
  tail call void @thunk_register_struct(i32 noundef 2, ptr noundef nonnull @.str.483, ptr noundef nonnull @struct_winsize_def) #29
  tail call void @thunk_register_struct(i32 noundef 3, ptr noundef nonnull @.str.484, ptr noundef nonnull @struct_serial_multiport_struct_def) #29
  tail call void @thunk_register_struct(i32 noundef 4, ptr noundef nonnull @.str.485, ptr noundef nonnull @struct_serial_icounter_struct_def) #29
  tail call void @thunk_register_struct(i32 noundef 5, ptr noundef nonnull @.str.486, ptr noundef nonnull @struct_sockaddr_def) #29
  tail call void @thunk_register_struct(i32 noundef 6, ptr noundef nonnull @.str.487, ptr noundef nonnull @struct_rtentry_def) #29
  tail call void @thunk_register_struct(i32 noundef 7, ptr noundef nonnull @.str.488, ptr noundef nonnull @struct_ifmap_def) #29
  tail call void @thunk_register_struct(i32 noundef 8, ptr noundef nonnull @.str.489, ptr noundef nonnull @struct_sockaddr_ifreq_def) #29
  tail call void @thunk_register_struct(i32 noundef 9, ptr noundef nonnull @.str.490, ptr noundef nonnull @struct_short_ifreq_def) #29
  tail call void @thunk_register_struct(i32 noundef 10, ptr noundef nonnull @.str.491, ptr noundef nonnull @struct_int_ifreq_def) #29
  tail call void @thunk_register_struct(i32 noundef 11, ptr noundef nonnull @.str.492, ptr noundef nonnull @struct_ifmap_ifreq_def) #29
  tail call void @thunk_register_struct(i32 noundef 12, ptr noundef nonnull @.str.493, ptr noundef nonnull @struct_char_ifreq_def) #29
  tail call void @thunk_register_struct(i32 noundef 13, ptr noundef nonnull @.str.494, ptr noundef nonnull @struct_ptr_ifreq_def) #29
  tail call void @thunk_register_struct(i32 noundef 14, ptr noundef nonnull @.str.495, ptr noundef nonnull @struct_ifconf_def) #29
  tail call void @thunk_register_struct(i32 noundef 15, ptr noundef nonnull @.str.496, ptr noundef nonnull @struct_arpreq_def) #29
  tail call void @thunk_register_struct(i32 noundef 16, ptr noundef nonnull @.str.497, ptr noundef nonnull @struct_arpreq_old_def) #29
  tail call void @thunk_register_struct(i32 noundef 17, ptr noundef nonnull @.str.498, ptr noundef nonnull @struct_cdrom_read_audio_def) #29
  tail call void @thunk_register_struct(i32 noundef 18, ptr noundef nonnull @.str.499, ptr noundef nonnull @struct_hd_geometry_def) #29
  tail call void @thunk_register_struct(i32 noundef 19, ptr noundef nonnull @.str.500, ptr noundef nonnull @struct_dirent_def) #29
  tail call void @thunk_register_struct(i32 noundef 20, ptr noundef nonnull @.str.501, ptr noundef nonnull @struct_kbentry_def) #29
  tail call void @thunk_register_struct(i32 noundef 21, ptr noundef nonnull @.str.502, ptr noundef nonnull @struct_kbsentry_def) #29
  tail call void @thunk_register_struct(i32 noundef 22, ptr noundef nonnull @.str.503, ptr noundef nonnull @struct_audio_buf_info_def) #29
  tail call void @thunk_register_struct(i32 noundef 23, ptr noundef nonnull @.str.504, ptr noundef nonnull @struct_count_info_def) #29
  tail call void @thunk_register_struct(i32 noundef 24, ptr noundef nonnull @.str.505, ptr noundef nonnull @struct_buffmem_desc_def) #29
  tail call void @thunk_register_struct(i32 noundef 25, ptr noundef nonnull @.str.506, ptr noundef nonnull @struct_mixer_info_def) #29
  tail call void @thunk_register_struct(i32 noundef 26, ptr noundef nonnull @.str.507, ptr noundef nonnull @struct_snd_timer_id_def) #29
  tail call void @thunk_register_struct(i32 noundef 27, ptr noundef nonnull @.str.508, ptr noundef nonnull @struct_snd_timer_ginfo_def) #29
  tail call void @thunk_register_struct(i32 noundef 28, ptr noundef nonnull @.str.509, ptr noundef nonnull @struct_snd_timer_gparams_def) #29
  tail call void @thunk_register_struct(i32 noundef 29, ptr noundef nonnull @.str.510, ptr noundef nonnull @struct_snd_timer_gstatus_def) #29
  tail call void @thunk_register_struct(i32 noundef 30, ptr noundef nonnull @.str.511, ptr noundef nonnull @struct_snd_timer_select_def) #29
  tail call void @thunk_register_struct(i32 noundef 31, ptr noundef nonnull @.str.512, ptr noundef nonnull @struct_snd_timer_info_def) #29
  tail call void @thunk_register_struct(i32 noundef 32, ptr noundef nonnull @.str.513, ptr noundef nonnull @struct_snd_timer_params_def) #29
  tail call void @thunk_register_struct(i32 noundef 33, ptr noundef nonnull @.str.514, ptr noundef nonnull @struct_timeval_def) #29
  tail call void @thunk_register_struct(i32 noundef 34, ptr noundef nonnull @.str.515, ptr noundef nonnull @struct__kernel_sock_timeval_def) #29
  tail call void @thunk_register_struct(i32 noundef 35, ptr noundef nonnull @.str.516, ptr noundef nonnull @struct_timespec_def) #29
  tail call void @thunk_register_struct(i32 noundef 36, ptr noundef nonnull @.str.517, ptr noundef nonnull @struct__kernel_timespec_def) #29
  tail call void @thunk_register_struct(i32 noundef 37, ptr noundef nonnull @.str.518, ptr noundef nonnull @struct_snd_timer_status_def) #29
  tail call void @thunk_register_struct(i32 noundef 38, ptr noundef nonnull @.str.519, ptr noundef nonnull @struct_loop_info_def) #29
  tail call void @thunk_register_struct(i32 noundef 39, ptr noundef nonnull @.str.520, ptr noundef nonnull @struct_loop_info64_def) #29
  tail call void @thunk_register_struct(i32 noundef 40, ptr noundef nonnull @.str.521, ptr noundef nonnull @struct_loop_config_def) #29
  tail call void @thunk_register_struct(i32 noundef 41, ptr noundef nonnull @.str.522, ptr noundef nonnull @struct_mtop_def) #29
  tail call void @thunk_register_struct(i32 noundef 42, ptr noundef nonnull @.str.523, ptr noundef nonnull @struct_mtget_def) #29
  tail call void @thunk_register_struct(i32 noundef 43, ptr noundef nonnull @.str.524, ptr noundef nonnull @struct_mtpos_def) #29
  tail call void @thunk_register_struct(i32 noundef 44, ptr noundef nonnull @.str.525, ptr noundef nonnull @struct_fb_fix_screeninfo_def) #29
  tail call void @thunk_register_struct(i32 noundef 45, ptr noundef nonnull @.str.526, ptr noundef nonnull @struct_fb_var_screeninfo_def) #29
  tail call void @thunk_register_struct(i32 noundef 46, ptr noundef nonnull @.str.527, ptr noundef nonnull @struct_fb_cmap_def) #29
  tail call void @thunk_register_struct(i32 noundef 47, ptr noundef nonnull @.str.528, ptr noundef nonnull @struct_fb_con2fbmap_def) #29
  tail call void @thunk_register_struct(i32 noundef 48, ptr noundef nonnull @.str.529, ptr noundef nonnull @struct_vt_stat_def) #29
  tail call void @thunk_register_struct(i32 noundef 49, ptr noundef nonnull @.str.530, ptr noundef nonnull @struct_vt_mode_def) #29
  tail call void @thunk_register_struct(i32 noundef 50, ptr noundef nonnull @.str.531, ptr noundef nonnull @struct_dm_ioctl_def) #29
  tail call void @thunk_register_struct(i32 noundef 51, ptr noundef nonnull @.str.532, ptr noundef nonnull @struct_dm_target_spec_def) #29
  tail call void @thunk_register_struct(i32 noundef 52, ptr noundef nonnull @.str.533, ptr noundef nonnull @struct_dm_target_deps_def) #29
  tail call void @thunk_register_struct(i32 noundef 53, ptr noundef nonnull @.str.534, ptr noundef nonnull @struct_dm_name_list_def) #29
  tail call void @thunk_register_struct(i32 noundef 54, ptr noundef nonnull @.str.535, ptr noundef nonnull @struct_dm_target_versions_def) #29
  tail call void @thunk_register_struct(i32 noundef 55, ptr noundef nonnull @.str.536, ptr noundef nonnull @struct_dm_target_msg_def) #29
  tail call void @thunk_register_struct(i32 noundef 56, ptr noundef nonnull @.str.537, ptr noundef nonnull @struct_drm_version_def) #29
  tail call void @thunk_register_struct(i32 noundef 57, ptr noundef nonnull @.str.538, ptr noundef nonnull @struct_drm_i915_getparam_def) #29
  tail call void @thunk_register_struct(i32 noundef 58, ptr noundef nonnull @.str.539, ptr noundef nonnull @struct_file_clone_range_def) #29
  tail call void @thunk_register_struct(i32 noundef 59, ptr noundef nonnull @.str.540, ptr noundef nonnull @struct_fstrim_range_def) #29
  tail call void @thunk_register_struct(i32 noundef 60, ptr noundef nonnull @.str.541, ptr noundef nonnull @struct_fiemap_extent_def) #29
  tail call void @thunk_register_struct(i32 noundef 61, ptr noundef nonnull @.str.542, ptr noundef nonnull @struct_fiemap_def) #29
  tail call void @thunk_register_struct(i32 noundef 62, ptr noundef nonnull @.str.543, ptr noundef nonnull @struct_blkpg_partition_def) #29
  tail call void @thunk_register_struct(i32 noundef 63, ptr noundef nonnull @.str.544, ptr noundef nonnull @struct_btrfs_ioctl_vol_args_def) #29
  tail call void @thunk_register_struct(i32 noundef 64, ptr noundef nonnull @.str.545, ptr noundef nonnull @struct_btrfs_ioctl_timespec_def) #29
  tail call void @thunk_register_struct(i32 noundef 65, ptr noundef nonnull @.str.546, ptr noundef nonnull @struct_btrfs_ioctl_get_subvol_info_args_def) #29
  tail call void @thunk_register_struct(i32 noundef 66, ptr noundef nonnull @.str.547, ptr noundef nonnull @struct_btrfs_ioctl_ino_lookup_args_def) #29
  tail call void @thunk_register_struct(i32 noundef 67, ptr noundef nonnull @.str.548, ptr noundef nonnull @struct_btrfs_ioctl_ino_path_args_def) #29
  tail call void @thunk_register_struct(i32 noundef 68, ptr noundef nonnull @.str.549, ptr noundef nonnull @struct_btrfs_ioctl_logical_ino_args_def) #29
  tail call void @thunk_register_struct(i32 noundef 69, ptr noundef nonnull @.str.550, ptr noundef nonnull @struct_btrfs_ioctl_ino_lookup_user_args_def) #29
  tail call void @thunk_register_struct(i32 noundef 70, ptr noundef nonnull @.str.551, ptr noundef nonnull @struct_btrfs_scrub_progress_def) #29
  tail call void @thunk_register_struct(i32 noundef 71, ptr noundef nonnull @.str.552, ptr noundef nonnull @struct_btrfs_ioctl_scrub_args_def) #29
  tail call void @thunk_register_struct(i32 noundef 72, ptr noundef nonnull @.str.553, ptr noundef nonnull @struct_btrfs_ioctl_dev_info_args_def) #29
  tail call void @thunk_register_struct(i32 noundef 73, ptr noundef nonnull @.str.554, ptr noundef nonnull @struct_rootref_def) #29
  tail call void @thunk_register_struct(i32 noundef 74, ptr noundef nonnull @.str.555, ptr noundef nonnull @struct_btrfs_ioctl_get_subvol_rootref_args_def) #29
  tail call void @thunk_register_struct(i32 noundef 75, ptr noundef nonnull @.str.556, ptr noundef nonnull @struct_btrfs_ioctl_get_dev_stats_def) #29
  tail call void @thunk_register_struct(i32 noundef 76, ptr noundef nonnull @.str.557, ptr noundef nonnull @struct_btrfs_ioctl_quota_ctl_args_def) #29
  tail call void @thunk_register_struct(i32 noundef 77, ptr noundef nonnull @.str.558, ptr noundef nonnull @struct_btrfs_ioctl_quota_rescan_args_def) #29
  tail call void @thunk_register_struct(i32 noundef 78, ptr noundef nonnull @.str.559, ptr noundef nonnull @struct_btrfs_ioctl_qgroup_assign_args_def) #29
  tail call void @thunk_register_struct(i32 noundef 79, ptr noundef nonnull @.str.560, ptr noundef nonnull @struct_btrfs_ioctl_qgroup_create_args_def) #29
  tail call void @thunk_register_struct(i32 noundef 80, ptr noundef nonnull @.str.561, ptr noundef nonnull @struct_btrfs_qgroup_limit_def) #29
  tail call void @thunk_register_struct(i32 noundef 81, ptr noundef nonnull @.str.562, ptr noundef nonnull @struct_btrfs_ioctl_qgroup_limit_args_def) #29
  tail call void @thunk_register_struct(i32 noundef 82, ptr noundef nonnull @.str.563, ptr noundef nonnull @struct_btrfs_ioctl_feature_flags_def) #29
  tail call void @thunk_register_struct(i32 noundef 83, ptr noundef nonnull @.str.564, ptr noundef nonnull @struct_rtc_time_def) #29
  tail call void @thunk_register_struct(i32 noundef 84, ptr noundef nonnull @.str.565, ptr noundef nonnull @struct_rtc_wkalrm_def) #29
  tail call void @thunk_register_struct(i32 noundef 85, ptr noundef nonnull @.str.566, ptr noundef nonnull @struct_rtc_pll_info_def) #29
  tail call void @thunk_register_struct(i32 noundef 86, ptr noundef nonnull @.str.567, ptr noundef nonnull @struct_blkpg_ioctl_arg_def) #29
  tail call void @thunk_register_struct(i32 noundef 87, ptr noundef nonnull @.str.568, ptr noundef nonnull @struct_format_descr_def) #29
  tail call void @thunk_register_struct(i32 noundef 88, ptr noundef nonnull @.str.569, ptr noundef nonnull @struct_floppy_max_errors_def) #29
  tail call void @thunk_register_struct(i32 noundef 89, ptr noundef nonnull @.str.570, ptr noundef nonnull @struct_usbdevfs_ctrltransfer_def) #29
  tail call void @thunk_register_struct(i32 noundef 90, ptr noundef nonnull @.str.571, ptr noundef nonnull @struct_usbdevfs_bulktransfer_def) #29
  tail call void @thunk_register_struct(i32 noundef 91, ptr noundef nonnull @.str.572, ptr noundef nonnull @struct_usbdevfs_setinterface_def) #29
  tail call void @thunk_register_struct(i32 noundef 92, ptr noundef nonnull @.str.573, ptr noundef nonnull @struct_usbdevfs_disconnectsignal_def) #29
  tail call void @thunk_register_struct(i32 noundef 93, ptr noundef nonnull @.str.574, ptr noundef nonnull @struct_usbdevfs_getdriver_def) #29
  tail call void @thunk_register_struct(i32 noundef 94, ptr noundef nonnull @.str.575, ptr noundef nonnull @struct_usbdevfs_connectinfo_def) #29
  tail call void @thunk_register_struct(i32 noundef 95, ptr noundef nonnull @.str.576, ptr noundef nonnull @struct_usbdevfs_iso_packet_desc_def) #29
  tail call void @thunk_register_struct(i32 noundef 96, ptr noundef nonnull @.str.577, ptr noundef nonnull @struct_usbdevfs_urb_def) #29
  tail call void @thunk_register_struct(i32 noundef 97, ptr noundef nonnull @.str.578, ptr noundef nonnull @struct_usbdevfs_ioctl_def) #29
  tail call void @thunk_register_struct(i32 noundef 98, ptr noundef nonnull @.str.579, ptr noundef nonnull @struct_usbdevfs_hub_portinfo_def) #29
  tail call void @thunk_register_struct(i32 noundef 99, ptr noundef nonnull @.str.580, ptr noundef nonnull @struct_usbdevfs_disconnect_claim_def) #29
  %i.a = load i32, ptr @ioctl_entries, align 16   ; 2 uses
  %.not14 = icmp eq i32 %i.a, 0
  br i1 %.not14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.j
  %i.b = phi i32 [ %i.ab, %bb.j ], [ %i.a, %bb.a ] ; 7 uses
  %.015 = phi ptr [ %i.aa, %bb.j ], [ @ioctl_entries, %bb.a ] ; 8 uses
  %i.c = and i32 %i.b, 1073676288
  %i.d = icmp eq i32 %i.c, 1073676288
  br i1 %i.d, label %bb.b, label %bb.j

bb.b:                                             ; preds = %.lr.ph
  %i.e = getelementptr inbounds nuw i8, ptr %.015, i64 32
  %i.f = load i32, ptr %i.e, align 4
  %.not11 = icmp eq i32 %i.f, 9
  br i1 %.not11, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr @stderr, align 8
  %i.h = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.g, i32 noundef 1, ptr noundef nonnull @.str.581, i32 noundef %i.b) #29 ; 0 uses
  tail call void @exit(i32 noundef 1) #33
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.015, i64 36
  %i.j = load i32, ptr %i.i, align 4              ; 3 uses
  switch i32 %i.j, label %bb.i [
    i32 1, label %thunk_type_size.exit
    i32 2, label %thunk_type_size.exit
    i32 3, label %bb.e
    i32 7, label %bb.f
    i32 8, label %bb.f
    i32 4, label %bb.f
    i32 5, label %bb.f
    i32 6, label %bb.f
    i32 9, label %bb.f
    i32 12, label %bb.f
    i32 10, label %bb.g
    i32 11, label %bb.h
  ]

bb.e:                                             ; preds = %bb.d
  br label %thunk_type_size.exit

bb.f:                                             ; preds = %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d
  br label %thunk_type_size.exit

bb.g:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %.015, i64 40
  %i.l = load i32, ptr %i.k, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %.015, i64 44
  %i.n = tail call i32 @thunk_type_size_array(ptr noundef nonnull %i.m, i32 noundef 0) #29
  %i.o = mul i32 %i.n, %i.l
  %.pre = load i32, ptr %.015, align 8
  br label %thunk_type_size.exit

bb.h:                                             ; preds = %bb.d
  %i.p = load ptr, ptr @struct_entries, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %.015, i64 40
  %i.r = load i32, ptr %i.q, align 4
  %i.s = zext i32 %i.r to i64
  %i.t = getelementptr inbounds nuw [80 x i8], ptr %i.p, i64 %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  %i.v = load i32, ptr %i.u, align 4
  br label %thunk_type_size.exit

bb.i:                                             ; preds = %bb.d
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.599, i32 noundef 145, ptr noundef nonnull @__func__.thunk_type_size, ptr noundef null) #30
  unreachable

thunk_type_size.exit:                             ; preds = %bb.d, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h
  %i.w = phi i32 [ %i.b, %bb.h ], [ %.pre, %bb.g ], [ %i.b, %bb.e ], [ %i.b, %bb.f ], [ %i.b, %bb.d ], [ %i.b, %bb.d ]
  %.0.i = phi i32 [ %i.v, %bb.h ], [ %i.o, %bb.g ], [ 4, %bb.e ], [ 8, %bb.f ], [ %i.j, %bb.d ], [ %i.j, %bb.d ]
  %i.x = and i32 %i.w, -1073676289
  %i.y = shl i32 %.0.i, 16
  %i.z = or i32 %i.x, %i.y
  store i32 %i.z, ptr %.015, align 8
  br label %bb.j

bb.j:                                             ; preds = %thunk_type_size.exit, %.lr.ph
  %i.aa = getelementptr inbounds nuw i8, ptr %.015, i64 56 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 8            ; 2 uses
  %.not = icmp eq i32 %i.ab, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !34

._crit_edge:                                      ; preds = %bb.j, %bb.a
  ret void
}

declare void @thunk_init(i32 noundef) local_unnamed_addr #5

declare void @thunk_register_struct_direct(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @thunk_register_struct(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc i32 @thunk_type_size(ptr noundef %0) unnamed_addr #8 {
bb.a:
  %i.a = load i32, ptr %0, align 4                ; 3 uses
  switch i32 %i.a, label %bb.f [
    i32 1, label %bb.g
    i32 2, label %bb.g
    i32 3, label %bb.b
    i32 7, label %bb.c
    i32 8, label %bb.c
    i32 4, label %bb.c
    i32 5, label %bb.c
    i32 6, label %bb.c
    i32 9, label %bb.c
    i32 12, label %bb.c
    i32 10, label %bb.d
    i32 11, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.g

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = load i32, ptr %i.b, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = tail call i32 @thunk_type_size_array(ptr noundef nonnull %i.d, i32 noundef 0) #29
  %i.f = mul i32 %i.e, %i.c
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  %i.g = load ptr, ptr @struct_entries, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.i = load i32, ptr %i.h, align 4
  %i.j = zext i32 %i.i to i64
  %i.k = getelementptr inbounds nuw [80 x i8], ptr %i.g, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %i.m = load i32, ptr %i.l, align 4
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.599, i32 noundef 145, ptr noundef nonnull @__func__.thunk_type_size, ptr noundef null) #30
  unreachable

bb.g:                                             ; preds = %bb.a, %bb.a, %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi i32 [ %i.m, %bb.e ], [ %i.f, %bb.d ], [ 4, %bb.b ], [ 8, %bb.c ], [ %i.a, %bb.a ], [ %i.a, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @host_to_target_waitstatus(i32 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = and i32 %0, 127                          ; 2 uses
  %i.b = shl nuw nsw i32 %i.a, 24
  %sext = add nuw i32 %i.b, 16777216
  %i.c = icmp sgt i32 %sext, 33554431
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @host_to_target_signal(i32 noundef %i.a) #29
  %i.e = and i32 %0, -128
  %i.f = or i32 %i.d, %i.e
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.g = and i32 %0, 255
  %i.h = icmp eq i32 %i.g, 127
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = lshr i32 %0, 8
  %i.j = and i32 %i.i, 255
  %i.k = tail call i32 @host_to_target_signal(i32 noundef %i.j) #29
  %i.l = shl i32 %i.k, 8
  %i.m = or disjoint i32 %i.l, 127
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi i32 [ %i.f, %bb.b ], [ %i.m, %bb.d ], [ %0, %bb.c ]
  ret i32 %.0
}

declare i32 @host_to_target_signal(i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @target_exception_dump(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr @stderr, align 8
  tail call fastcc void @excp_dump_file(ptr noundef %i.a, ptr noundef %0, ptr noundef %1, i32 noundef %2)
  %i.b = tail call zeroext i1 @qemu_log_separate() #29
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @qemu_log_trylock() #29    ; 2 uses
  tail call fastcc void @excp_dump_file(ptr noundef %i.c, ptr noundef %0, ptr noundef %1, i32 noundef %2)
  tail call void @qemu_log_unlock(ptr noundef %i.c) #29
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @excp_dump_file(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #2 {
bb.a:
  %4 = alloca %struct.open_self_maps_data, align 8 ; 8 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds i8, ptr %1, i64 -16496
  %i.b = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef nonnull %0, i32 noundef 1, ptr noundef %2, i32 noundef %3) #29 ; 0 uses
  %i.c = load ptr, ptr @exec_path, align 8
  %i.d = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str.600, ptr noundef %i.c) #29 ; 0 uses
  tail call void @cpu_dump_state(ptr noundef nonnull %i.a, ptr noundef nonnull %0, i32 noundef 0) #29
  %i.e = tail call i32 @fileno(ptr noundef nonnull %0) #29
  %i.f = getelementptr i8, ptr %1, i64 -15888
  %.val.i = load ptr, ptr %i.f, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  store ptr %.val.i, ptr %4, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 %i.e, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 0, ptr %i.i, align 4
  tail call void @mmap_lock() #29
  %i.j = tail call ptr @read_self_maps() #29      ; 2 uses
  store ptr %i.j, ptr %i.g, align 8
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = call i32 @walk_memory_regions(ptr noundef nonnull %4, ptr noundef nonnull @open_self_maps_2) #29 ; 0 uses
  %i.l = load ptr, ptr %i.g, align 8
  call void @free_self_maps(ptr noundef %i.l) #29
  br label %open_self_maps.exit

bb.d:                                             ; preds = %bb.b
  %i.m = call i32 @walk_memory_regions(ptr noundef nonnull %4, ptr noundef nonnull @open_self_maps_3) #29 ; 0 uses
  br label %open_self_maps.exit

open_self_maps.exit:                              ; preds = %bb.c, %bb.d
  call void @mmap_unlock() #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %bb.e

bb.e:                                             ; preds = %open_self_maps.exit, %bb.a
  ret void
}

declare zeroext i1 @qemu_log_separate() local_unnamed_addr #5

declare ptr @qemu_log_trylock() local_unnamed_addr #5

declare void @qemu_log_unlock(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @do_guest_openat(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i1 noundef zeroext %5) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call fastcc i32 @maybe_do_fake_open(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef 0, i1 noundef zeroext %5) ; 2 uses
  %i.b = icmp sgt i32 %i.a, -2
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @path(ptr noundef %2) #29  ; 2 uses
  br i1 %5, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @thread_cpu)
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr i8, ptr %i.e, i64 608
  %.val.i = load ptr, ptr %i.f, align 16
  %i.g = getelementptr inbounds nuw i8, ptr %.val.i, i64 9148
  %i.h = tail call i64 (ptr, i64, ...) @safe_syscall_base(ptr noundef nonnull %i.g, i64 noundef 257, i32 noundef %1, ptr noundef %i.c, i32 noundef %3, i32 noundef %4) #29
  %i.i = trunc i64 %i.h to i32
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.j = tail call i32 (i32, ptr, i32, ...) @openat64(i32 noundef %1, ptr noundef %i.c, i32 noundef %3, i32 noundef %4) #29
  br label %bb.e

end_hunk_2
begin_hunk_3_@maybe_do_fake_open:bb.a
  %i.o = tail call i32 (i32, ptr, i32, ...) @openat64(i32 noundef %1, ptr noundef nonnull @real_exec_path, i32 noundef %3, i32 noundef %4) #29
  br label %.thread

.preheader.1:                                     ; preds = %.preheader.preheader
  %i.p = tail call i32 @is_proc_myself(ptr noundef %.034, ptr noundef nonnull @.str.621) #29
  %.not44.1 = icmp eq i32 %i.p, 0
  br i1 %.not44.1, label %.preheader.2, label %bb.j

.preheader.2:                                     ; preds = %.preheader.1
  %i.q = tail call i32 @is_proc_myself(ptr noundef %.034, ptr noundef nonnull @.str.622) #29
  %.not44.2 = icmp eq i32 %i.q, 0
  br i1 %.not44.2, label %.preheader.3, label %bb.j

.preheader.3:                                     ; preds = %.preheader.2
  %i.r = tail call i32 @is_proc_myself(ptr noundef %.034, ptr noundef nonnull @.str.623) #29
  %.not44.3 = icmp eq i32 %i.r, 0
  br i1 %.not44.3, label %.preheader.4, label %bb.j

.preheader.4:                                     ; preds = %.preheader.3
  %i.s = tail call i32 @is_proc_myself(ptr noundef %.034, ptr noundef nonnull @.str.624) #29
  %.not44.4 = icmp eq i32 %i.s, 0
  br i1 %.not44.4, label %.thread, label %bb.j

bb.j:                                             ; preds = %.preheader.4, %.preheader.3, %.preheader.2, %.preheader.1, %.preheader.preheader
  %.03352.lcssa = phi ptr [ @maybe_do_fake_open.fakes, %.preheader.preheader ], [ getelementptr inbounds nuw (i8, ptr @maybe_do_fake_open.fakes, i64 24), %.preheader.1 ], [ getelementptr inbounds nuw (i8, ptr @maybe_do_fake_open.fakes, i64 48), %.preheader.2 ], [ getelementptr inbounds nuw (i8, ptr @maybe_do_fake_open.fakes, i64 72), %.preheader.3 ], [ getelementptr inbounds nuw (i8, ptr @maybe_do_fake_open.fakes, i64 96), %.preheader.4 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %i.a, i8 0, i64 4096, i1 false), !annotation !18
  %i.t = tail call i32 @memfd_create(ptr noundef nonnull @.str.626, i32 noundef 0) #29 ; 3 uses
  %i.u = icmp slt i32 %i.t, 0
  br i1 %i.u, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.v = tail call ptr @__errno_location() #28
  %i.w = load i32, ptr %i.v, align 4
  %.not46 = icmp eq i32 %i.w, 38
  br i1 %.not46, label %bb.l, label %bb.q

bb.l:                                             ; preds = %bb.k
  %i.x = tail call ptr @getenv(ptr noundef nonnull @.str.627) #29 ; 2 uses
  %.not47 = icmp eq ptr %i.x, null
  %spec.store.select = select i1 %.not47, ptr @.str.628, ptr %i.x
  %i.y = call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef nonnull %i.a, i64 noundef 4096, i32 noundef 1, i64 noundef 4096, ptr noundef nonnull @.str.629, ptr noundef nonnull %spec.store.select) #29 ; 0 uses
  %i.z = call i32 @mkstemp64(ptr noundef nonnull %i.a) #29 ; 3 uses
  %i.aa = icmp slt i32 %i.z, 0
  br i1 %i.aa, label %bb.q, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ab = call i32 @unlink(ptr noundef nonnull %i.a) #29 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.j
  %.032 = phi i32 [ %i.z, %bb.m ], [ %i.t, %bb.j ] ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.03352.lcssa, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = call i32 %i.ad(ptr noundef %0, i32 noundef %.032) #29 ; 2 uses
  %.not48 = icmp eq i32 %i.ae, 0
  br i1 %.not48, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.af = tail call ptr @__errno_location() #28   ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = call i32 @close(i32 noundef %.032) #29  ; 0 uses
  store i32 %i.ag, ptr %i.af, align 4
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.ai = call i64 @lseek64(i32 noundef %.032, i64 noundef 0, i32 noundef 0) #29 ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.l, %bb.k, %bb.p, %bb.o
  %.0 = phi i32 [ %.032, %bb.p ], [ %i.t, %bb.k ], [ %i.ae, %bb.o ], [ %i.z, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br label %.thread

.thread:                                          ; preds = %.preheader.4, %bb.q, %bb.i, %bb.h, %bb.f
  %.1 = phi i32 [ -1, %bb.f ], [ %i.n, %bb.h ], [ %i.o, %bb.i ], [ %.0, %bb.q ], [ -2, %.preheader.4 ]
  call void @g_free(ptr noundef %i.b) #29
  ret i32 %.1
}

declare ptr @path(ptr noundef) local_unnamed_addr #5

declare i32 @openat64(i32 noundef, ptr noundef, i32 noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local noundef i64 @do_guest_readlink(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__errno_location() #28
  store i32 14, ptr %i.c, align 4
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = tail call ptr @__errno_location() #28
  store i32 22, ptr %i.d, align 4
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.e = tail call i32 @is_proc_myself(ptr noundef nonnull %0, ptr noundef nonnull @.str.582)
  %.not21 = icmp eq i32 %i.e, 0
  br i1 %.not21, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @real_exec_path) #32
  %i.g = tail call i64 @llvm.umin.i64(i64 %i.f, i64 %2) ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 16 @real_exec_path, i64 noundef %i.g, i1 noundef false) #29
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.h = tail call ptr @path(ptr noundef nonnull %0) #29
  %i.i = tail call i64 @readlink(ptr noundef %i.h, ptr noundef nonnull %1, i64 noundef %2) #29
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.d, %bb.b
  %.0 = phi i64 [ -1, %bb.b ], [ -1, %bb.d ], [ %i.g, %bb.f ], [ %i.i, %bb.g ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i32 0, 2) i32 @is_proc_myself(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #2 {
bb.a:
  %i.a = alloca [80 x i8], align 16               ; 6 uses
  %i.b = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(7) @.str.625, i64 noundef 6) #32
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 4 uses
  %i.d = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.c, ptr noundef nonnull dereferenceable(6) @.str.639, i64 noundef 5) #32
  %.not15 = icmp eq i32 %i.d, 0
  br i1 %.not15, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 11
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.c, align 1
  %i.g = add i8 %i.f, -49
  %or.cond = icmp ult i8 %i.g, 9
  br i1 %or.cond, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.a, i8 0, i64 80, i1 false), !annotation !18
  %i.h = tail call i32 @getpid() #29
  %i.i = call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef nonnull %i.a, i64 noundef 80, i32 noundef 1, i64 noundef 80, ptr noundef nonnull @.str.640, i32 noundef %i.h) #29 ; 0 uses
  %i.j = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #32 ; 2 uses
  %i.k = call i32 @strncmp(ptr noundef nonnull %i.c, ptr noundef nonnull %i.a, i64 noundef %i.j) #32
  %.not16.not = icmp eq i32 %i.k, 0
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br i1 %.not16.not, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e, %bb.c
  %.113 = phi ptr [ %i.l, %bb.e ], [ %i.e, %bb.c ]
  %i.m = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.113, ptr noundef nonnull dereferenceable(1) %1) #32
  %.not17 = icmp eq i32 %i.m, 0
  br i1 %.not17, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.a
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.d, %bb.g
  %.1 = phi i32 [ 0, %bb.g ], [ 0, %bb.d ], [ 0, %bb.e ], [ 1, %bb.f ]
  ret i32 %.1
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i64 @readlink(ptr noundef readonly captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #10

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @do_syscall(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds i8, ptr %0, i64 -16496 ; 6 uses
  %i.c = getelementptr i8, ptr %0, i64 -15888
  %.val = load ptr, ptr %i.c, align 16            ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 9192 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8
  %i.f = icmp eq i64 %i.e, -1
  br i1 %i.f, label %bb.i, label %bb.b, !prof !22

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds i8, ptr %0, i64 -16344
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 248
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = call i64 %i.j(ptr noundef nonnull %i.b) #29, !inline_history !35 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.val, i64 9176
  %i.m = load i64, ptr %i.l, align 8
  %i.n = sub i64 %i.k, %i.m
  %i.o = load i64, ptr %i.d, align 8
  %i.p = icmp ult i64 %i.n, %i.o
  br i1 %i.p, label %bb.i, label %bb.c, !prof !22

bb.c:                                             ; preds = %bb.b
  %i.q = load i64, ptr @vdso_sigreturn_region_start, align 8
  %i.r = icmp uge i64 %i.k, %i.q
  %i.s = load i64, ptr @vdso_sigreturn_region_end, align 8
  %i.t = icmp ult i64 %i.k, %i.s
  %i.u = select i1 %i.r, i1 %i.t, i1 false
  br i1 %i.u, label %bb.i, label %bb.d, !prof !23

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %.val, i64 9184
  %i.w = load i64, ptr %i.v, align 8              ; 2 uses
  %.not.i = icmp eq i64 %i.w, 0
  br i1 %.not.i, label %bb.h, label %bb.e, !prof !23

bb.e:                                             ; preds = %bb.d
  %i.x = call ptr @lock_user(i32 noundef 1, i64 noundef %i.w, i64 noundef 1, i1 noundef zeroext true) #29 ; 2 uses
  %.not25.not.i = icmp eq ptr %i.x, null
  br i1 %.not25.not.i, label %.critedge.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.val.i = load i8, ptr %i.x, align 1
  switch i8 %.val.i, label %bb.g [
    i8 0, label %bb.i
    i8 1, label %bb.h
  ], !prof !36

.critedge.i:                                      ; preds = %bb.e
  call void @force_sig(i32 noundef 11) #29
  br label %sys_dispatch.exit

bb.g:                                             ; preds = %bb.f
  call void @force_sig(i32 noundef 31) #29
  br label %sys_dispatch.exit

bb.h:                                             ; preds = %bb.f, %bb.d
  call void @force_sig_fault(i32 noundef 31, i32 noundef 2, i64 noundef %i.k) #29
  br label %sys_dispatch.exit

bb.i:                                             ; preds = %bb.c, %bb.a, %bb.b, %bb.f
  %i.y = getelementptr inbounds i8, ptr %0, i64 -16256
  %i.z = call i32 @__sigsetjmp(ptr noundef nonnull %i.y, i32 noundef 0) #34
  %.not = icmp eq i32 %i.z, 0
  br i1 %.not, label %bb.j, label %sys_dispatch.exit, !prof !22

bb.j:                                             ; preds = %bb.i
  %i.aa = sext i32 %1 to i64                      ; 3 uses
  call void @qemu_plugin_vcpu_syscall(ptr noundef nonnull %i.b, i64 noundef %i.aa, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9) #29
  call void @gdb_syscall_entry(ptr noundef nonnull %i.b, i32 noundef %1) #29
  %i.ab = load i32, ptr @qemu_loglevel, align 4
  %i.ac = and i32 %i.ab, 524288
  %.not58 = icmp eq i32 %i.ac, 0
  br i1 %.not58, label %bb.l, label %bb.k, !prof !22

bb.k:                                             ; preds = %bb.j
  call void @print_syscall(ptr noundef nonnull %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7) #29
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i64 0, ptr %i.a, align 8
  %i.ad = call zeroext i1 @qemu_plugin_vcpu_syscall_filter(ptr noundef nonnull %i.b, i64 noundef %i.aa, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, ptr noundef nonnull %i.a) #29
  br i1 %i.ad, label %send_through_syscall_filters.exit.thread, label %bb.m

send_through_syscall_filters.exit.thread:         ; preds = %bb.l
  %i.ae = load i64, ptr %i.a, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %i.af = call fastcc i64 @do_syscall1(ptr noundef nonnull %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7)
  br label %bb.n

bb.n:                                             ; preds = %send_through_syscall_filters.exit.thread, %bb.m
  %.055 = phi i64 [ %i.ae, %send_through_syscall_filters.exit.thread ], [ %i.af, %bb.m ] ; 3 uses
  %i.ag = load i32, ptr @qemu_loglevel, align 4
  %i.ah = and i32 %i.ag, 524288
  %.not59 = icmp eq i32 %i.ah, 0
  br i1 %.not59, label %bb.p, label %bb.o, !prof !22

bb.o:                                             ; preds = %bb.n
  call void @print_syscall_ret(ptr noundef nonnull %0, i32 noundef %1, i64 noundef %.055, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7) #29
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  call void @qemu_plugin_vcpu_syscall_ret(ptr noundef nonnull %i.b, i64 noundef %i.aa, i64 noundef %.055) #29
  call void @gdb_syscall_return(ptr noundef nonnull %i.b, i32 noundef %1) #29
  br label %sys_dispatch.exit

sys_dispatch.exit:                                ; preds = %bb.h, %bb.g, %.critedge.i, %bb.i, %bb.p
  %.0 = phi i64 [ %.055, %bb.p ], [ -514, %bb.i ], [ -513, %.critedge.i ], [ -513, %bb.g ], [ -513, %bb.h ]
  ret i64 %.0
}

; Function Attrs: nounwind returns_twice
declare i32 @__sigsetjmp(ptr noundef, i32 noundef) local_unnamed_addr #11

declare void @print_syscall(ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @do_syscall1(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7) unnamed_addr #2 {
bb.a:
  %8 = alloca %struct.stat, align 8               ; 38 uses
  %9 = alloca %struct.statfs, align 8             ; 17 uses
  %10 = alloca %struct.siginfo_t, align 8         ; 6 uses
  %11 = alloca %struct.rusage, align 8            ; 6 uses
  %12 = alloca %struct.siginfo_t, align 8         ; 6 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %13 = alloca %struct.utimbuf, align 16          ; 6 uses
  %14 = alloca [2 x %struct.timeval], align 16    ; 7 uses
  %15 = alloca [2 x %struct.timeval], align 16    ; 8 uses
  %16 = alloca %struct.tms, align 16              ; 7 uses
  %17 = alloca %struct.__sigset_t, align 8        ; 6 uses
  %18 = alloca %struct.__sigset_t, align 8        ; 6 uses
  %19 = alloca %struct.__sigset_t, align 8        ; 6 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %20 = alloca %struct.__sigset_t, align 8        ; 6 uses
  %21 = alloca %struct.timespec, align 16         ; 6 uses
  %22 = alloca %struct.siginfo_t, align 8         ; 6 uses
  %23 = alloca %struct.siginfo_t, align 8         ; 5 uses
  %24 = alloca %struct.siginfo_t, align 8         ; 5 uses
  %25 = alloca %struct.rlimit, align 16           ; 4 uses
  %26 = alloca %struct.rlimit, align 8            ; 7 uses
  %27 = alloca %struct.rusage, align 8            ; 5 uses
  %28 = alloca %struct.timeval, align 16          ; 6 uses
  %29 = alloca %struct.timezone, align 8          ; 6 uses
  %30 = alloca %struct.timeval, align 16          ; 5 uses
  %31 = alloca %struct.timezone, align 8          ; 5 uses
  %32 = alloca %struct.itimerval, align 16        ; 7 uses
  %33 = alloca %struct.itimerval, align 16        ; 7 uses
  %34 = alloca %struct.itimerval, align 16        ; 7 uses
  %i.c = alloca i32, align 4                      ; 8 uses
  %35 = alloca %struct.rusage, align 8            ; 6 uses
  %36 = alloca %struct.sysinfo, align 8           ; 19 uses
  %37 = alloca %struct.timex, align 8             ; 7 uses
  %38 = alloca %struct.timex, align 8             ; 7 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  %i.e = alloca i32, align 4                      ; 6 uses
  %39 = alloca %struct.sched_param, align 4       ; 4 uses
  %40 = alloca %struct.sched_param, align 4       ; 6 uses
  %41 = alloca %struct.sched_param, align 4       ; 4 uses
  %42 = alloca %struct.sched_attr, align 8        ; 14 uses
  %43 = alloca %struct.sched_attr, align 8        ; 11 uses
  %44 = alloca %struct.timespec, align 8          ; 6 uses
  %45 = alloca %struct.timespec, align 16         ; 5 uses
  %46 = alloca %struct.timespec, align 8          ; 7 uses
  %47 = alloca %struct.__user_cap_header_struct, align 8 ; 8 uses
  %48 = alloca [2 x %struct.__user_cap_data_struct], align 16 ; 12 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %49 = alloca %struct.target_statx, align 8      ; 6 uses
  %i.g = alloca i32, align 4                      ; 6 uses
  %i.h = alloca i32, align 4                      ; 6 uses
  %i.i = alloca i32, align 4                      ; 6 uses
  %i.j = alloca i32, align 4                      ; 6 uses
  %i.k = alloca i32, align 4                      ; 6 uses
  %i.l = alloca i32, align 4                      ; 6 uses
  %50 = alloca %struct.timespec, align 16         ; 4 uses
  %51 = alloca %struct.timespec, align 8          ; 6 uses
  %52 = alloca %struct.timespec, align 8          ; 6 uses
  %53 = alloca %struct.timespec, align 16         ; 7 uses
  %54 = alloca [2 x %struct.timespec], align 16   ; 8 uses
  %55 = alloca %struct.mq_attr, align 16          ; 7 uses
  %56 = alloca %struct.timespec, align 16         ; 7 uses
  %57 = alloca %struct.timespec, align 16         ; 8 uses
  %i.m = alloca i32, align 4                      ; 7 uses
  %58 = alloca %struct.mq_attr, align 16          ; 6 uses
  %59 = alloca %struct.mq_attr, align 8           ; 9 uses
  %i.n = alloca i64, align 8                      ; 7 uses
  %i.o = alloca i64, align 8                      ; 7 uses
  %60 = alloca %struct.epoll_event, align 4       ; 7 uses
  %61 = alloca %struct.timespec, align 16         ; 5 uses
  %i.p = alloca ptr, align 8                      ; 7 uses
  %62 = alloca %struct.host_rlimit64, align 16    ; 5 uses
  %63 = alloca %struct.host_rlimit64, align 8     ; 6 uses
  %64 = alloca %struct.sigevent, align 8          ; 5 uses
  %65 = alloca %struct.itimerspec, align 8        ; 6 uses
  %66 = alloca %struct.itimerspec, align 8        ; 6 uses
  %67 = alloca %struct.itimerspec, align 8        ; 5 uses
  %68 = alloca %struct.itimerspec, align 8        ; 6 uses
  %69 = alloca %struct.itimerspec, align 8        ; 6 uses
  %70 = alloca %struct.itimerspec, align 8        ; 6 uses
  %i.q = alloca i64, align 8                      ; 7 uses
  %i.r = alloca i64, align 8                      ; 7 uses
  %i.s = getelementptr inbounds i8, ptr %0, i64 -16496 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %8, i8 0, i64 144, i1 false), !annotation !18
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %9, i8 0, i64 120, i1 false), !annotation !18
  switch i32 %1, label %bb.akx [
    i32 60, label %bb.b
    i32 0, label %bb.k
    i32 1, label %bb.s
    i32 2, label %bb.ac
    i32 257, label %bb.af
    i32 437, label %bb.ai
    i32 303, label %bb.aj
    i32 304, label %bb.ak
    i32 434, label %bb.al
    i32 424, label %bb.an
    i32 438, label %bb.at
    i32 3, label %bb.av
    i32 436, label %bb.ax
    i32 12, label %bb.bc
    i32 57, label %bb.bd
    i32 247, label %bb.bf
    i32 85, label %bb.bn
    i32 86, label %bb.bq
    i32 265, label %bb.bt
    i32 87, label %bb.bx
    i32 263, label %bb.ca
    i32 322, label %bb.cd
    i32 59, label %bb.ce
    i32 80, label %bb.cf
    i32 201, label %bb.ci
    i32 133, label %bb.cn
    i32 259, label %bb.cq
    i32 90, label %bb.ct
    i32 8, label %bb.cw
    i32 39, label %bb.cy
    i32 165, label %bb.da
    i32 429, label %bb.dk
    i32 428, label %bb.dp
    i32 37, label %bb.dt
    i32 34, label %bb.du
    i32 132, label %bb.dw
end_hunk_3
begin_hunk_4_@do_syscall1:bb.a
    i32 141, label %bb.na
    i32 137, label %bb.nc
    i32 138, label %bb.ng
    i32 43, label %bb.nh
    i32 288, label %bb.ni
    i32 49, label %bb.nj
    i32 42, label %bb.nk
    i32 52, label %bb.nl
    i32 51, label %bb.nm
    i32 55, label %bb.nn
    i32 50, label %bb.no
    i32 45, label %bb.nq
    i32 47, label %bb.nr
    i32 46, label %bb.ns
    i32 307, label %bb.nt
    i32 299, label %bb.nu
    i32 44, label %bb.nv
    i32 48, label %bb.nw
    i32 318, label %bb.ny
    i32 41, label %bb.ob
    i32 53, label %bb.oc
    i32 54, label %bb.od
    i32 103, label %bb.oe
    i32 38, label %bb.om
    i32 36, label %bb.ou
    i32 4, label %bb.oz
    i32 6, label %bb.pb
    i32 5, label %bb.pd
    i32 153, label %bb.pg
    i32 61, label %bb.pi
    i32 168, label %bb.pq
    i32 99, label %bb.pt
    i32 64, label %bb.pz
    i32 65, label %bb.qb
    i32 220, label %bb.qc
    i32 66, label %bb.qd
    i32 71, label %bb.qe
    i32 68, label %bb.qf
    i32 70, label %bb.qh
    i32 69, label %bb.qi
    i32 29, label %bb.qj
    i32 31, label %bb.ql
    i32 30, label %bb.qm
    i32 67, label %bb.qn
    i32 74, label %bb.qo
    i32 56, label %bb.qq
    i32 231, label %bb.qs
    i32 171, label %bb.qu
    i32 63, label %bb.qx
    i32 154, label %bb.rd
    i32 159, label %bb.re
    i32 305, label %bb.rj
    i32 121, label %bb.ro
    i32 81, label %bb.rq
    i32 135, label %bb.rs
    i32 78, label %bb.ru
    i32 217, label %bb.rv
    i32 7, label %bb.rw
    i32 271, label %bb.rx
    i32 73, label %bb.ry
    i32 19, label %bb.sa
    i32 20, label %bb.se
    i32 295, label %bb.si
    i32 296, label %bb.sm
    i32 327, label %bb.sq
    i32 328, label %bb.su
    i32 124, label %bb.sy
    i32 75, label %bb.ta
    i32 204, label %bb.tc
    i32 203, label %bb.ti
    i32 309, label %bb.tn
    i32 142, label %bb.tw
    i32 143, label %bb.ua
    i32 144, label %bb.uh
    i32 145, label %bb.ul
    i32 315, label %bb.un
    i32 314, label %bb.uu
    i32 24, label %bb.vj
    i32 146, label %bb.vl
    i32 147, label %bb.vn
    i32 148, label %bb.vp
    i32 35, label %bb.vt
    i32 157, label %bb.vy
    i32 158, label %bb.vz
    i32 17, label %bb.wa
    i32 18, label %bb.we
    i32 79, label %bb.wi
    i32 125, label %bb.wl
    i32 126, label %bb.wl
    i32 131, label %bb.wq
    i32 40, label %bb.wr
    i32 58, label %bb.wx
    i32 262, label %bb.wz
    i32 332, label %bb.xd
    i32 94, label %bb.xn
    i32 102, label %bb.xq
    i32 104, label %bb.xs
    i32 107, label %bb.xu
    i32 108, label %bb.xw
    i32 113, label %bb.xy
    i32 114, label %bb.ya
    i32 115, label %bb.yc
    i32 116, label %bb.yi
    i32 93, label %bb.yn
    i32 260, label %bb.yp
    i32 117, label %bb.ys
    i32 118, label %bb.yu
    i32 119, label %bb.zb
    i32 120, label %bb.zd
    i32 92, label %bb.zk
    i32 105, label %bb.zn
    i32 106, label %bb.zp
    i32 122, label %bb.zr
    i32 123, label %bb.zt
    i32 27, label %bb.zv
    i32 221, label %bb.zz
    i32 28, label %bb.aaa
    i32 186, label %bb.aab
    i32 187, label %bb.aad
    i32 194, label %bb.aaf
    i32 195, label %bb.aaf
    i32 196, label %bb.aan
    i32 188, label %bb.aar
    i32 189, label %bb.aar
    i32 190, label %bb.aaz
    i32 191, label %bb.abd
    i32 192, label %bb.abd
    i32 193, label %bb.abl
    i32 197, label %bb.abp
    i32 198, label %bb.abp
    i32 199, label %bb.abv
    i32 205, label %.critedge3389
    i32 211, label %.critedge3389
    i32 227, label %bb.abx
    i32 228, label %bb.aca
    i32 229, label %bb.ace
    i32 230, label %bb.aci
    i32 218, label %bb.acm
    i32 200, label %bb.aco
    i32 234, label %bb.acq
    i32 273, label %.critedge3389
    i32 274, label %.critedge3389
    i32 280, label %bb.acs
    i32 202, label %bb.ada
    i32 253, label %bb.adb
    i32 294, label %bb.ade
    i32 254, label %bb.adh
    i32 255, label %bb.adj
    i32 240, label %bb.adl
    i32 241, label %bb.adr
    i32 242, label %bb.adu
    i32 243, label %bb.aec
    i32 245, label %bb.aem
    i32 276, label %bb.aet
    i32 275, label %bb.aev
    i32 278, label %bb.afj
    i32 284, label %bb.afn
    i32 290, label %bb.afq
    i32 285, label %bb.aft
    i32 277, label %bb.afv
    i32 289, label %bb.afx
    i32 282, label %bb.afy
    i32 213, label %bb.afz
    i32 291, label %bb.agb
    i32 233, label %bb.agd
    i32 232, label %bb.agj
    i32 281, label %bb.agj
    i32 441, label %bb.agj
    i32 302, label %bb.agy
    i32 222, label %bb.ahg
    i32 223, label %bb.ahq
    i32 224, label %bb.ahw
    i32 225, label %bb.aia
    i32 226, label %bb.aid
    i32 283, label %bb.aig
    i32 287, label %bb.aij
    i32 286, label %bb.aio
    i32 252, label %bb.aiu
    i32 251, label %bb.aiw
    i32 308, label %bb.aiy
    i32 272, label %bb.aja
    i32 312, label %bb.ajc
    i32 319, label %bb.aje
    i32 324, label %bb.ajh
    i32 326, label %bb.ajj
    i32 155, label %bb.ajy
    i32 430, label %bb.akb
    i32 431, label %bb.ake
    i32 432, label %bb.akt
    i32 433, label %bb.akv
  ]

bb.b:                                             ; preds = %bb.a
  %i.t = tail call i32 @block_signals() #29
  %.not3365 = icmp eq i32 %i.t, 0
  br i1 %.not3365, label %bb.c, label %.critedge3389

bb.c:                                             ; preds = %bb.b
  %i.u = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @clone_lock) #29 ; 0 uses
  %i.v = load atomic ptr, ptr @cpus_queue monotonic, align 8
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #29, !srcloc !48
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 552
  %i.x = load atomic ptr, ptr %i.w monotonic, align 8
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #29, !srcloc !49
  %.not3366 = icmp eq ptr %i.x, null
  br i1 %.not3366, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr i8, ptr %0, i64 -15888
  %.val3469 = load ptr, ptr %i.y, align 16        ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.val3469, i64 16 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8             ; 2 uses
  %.not3367 = icmp eq i64 %i.aa, 0
  br i1 %.not3367, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = tail call ptr @lock_user(i32 noundef 3, i64 noundef %i.aa, i64 noundef 4, i1 noundef zeroext false) #29 ; 2 uses
  %.not3368 = icmp eq ptr %i.ab, null
  br i1 %.not3368, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.ab, align 1
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.ac = load i64, ptr %i.z, align 8             ; 2 uses
  %i.ad = getelementptr inbounds i8, ptr %0, i64 -16344
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 336
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 104
  %i.ai = load ptr, ptr %i.ah, align 8            ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i, label %g2h.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = tail call i64 %i.ai(ptr noundef nonnull %i.s, i64 noundef %i.ac) #29, !inline_history !1
  br label %g2h.exit

g2h.exit:                                         ; preds = %bb.g, %bb.h
  %.0.i.i.i = phi i64 [ %i.aj, %bb.h ], [ %i.ac, %bb.g ]
  %i.ak = load i64, ptr @guest_base, align 8
  %i.al = add i64 %i.ak, %.0.i.i.i
  %i.am = inttoptr i64 %i.al to ptr
  %i.an = tail call i64 (i64, ...) @syscall(i64 noundef 202, ptr noundef %i.am, i32 noundef 1, i32 noundef 2147483647, ptr noundef null, ptr noundef null, i32 noundef 0) #29 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %g2h.exit, %bb.d
  tail call void @object_unparent(ptr noundef nonnull %i.s) #29
  tail call void @object_unref(ptr noundef nonnull %i.s) #29
  %i.ao = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @clone_lock) #29 ; 0 uses
  %i.ap = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @thread_cpu)
  store ptr null, ptr %i.ap, align 8
  tail call void @g_free(ptr noundef nonnull %.val3469) #29
  tail call void @rcu_unregister_thread() #29
  tail call void @pthread_exit(ptr noundef null) #30
  unreachable

bb.j:                                             ; preds = %bb.c
  %i.aq = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @clone_lock) #29 ; 0 uses
  %i.ar = trunc i64 %2 to i32                     ; 2 uses
  tail call void @preexit_cleanup(ptr noundef %0, i32 noundef %i.ar) #29
  tail call void @_exit(i32 noundef %i.ar) #30
  unreachable

bb.k:                                             ; preds = %bb.a
  %i.as = or i64 %4, %3
  %or.cond = icmp eq i64 %i.as, 0
  br i1 %or.cond, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.at = trunc i64 %2 to i32
  %i.au = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @thread_cpu)
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = getelementptr i8, ptr %i.av, i64 608
  %.val.i = load ptr, ptr %i.aw, align 16
  %i.ax = getelementptr inbounds nuw i8, ptr %.val.i, i64 9148
  %i.ay = tail call i64 (ptr, i64, ...) @safe_syscall_base(ptr noundef nonnull %i.ax, i64 noundef 0, i32 noundef %i.at, ptr noundef null, i64 noundef 0) #29 ; 2 uses
  %i.az = icmp eq i64 %i.ay, -1
  br i1 %i.az, label %bb.m, label %.critedge3389

bb.m:                                             ; preds = %bb.l
  %i.ba = tail call ptr @__errno_location() #28
  %i.bb = load i32, ptr %i.ba, align 4
  %i.bc = sub i32 0, %i.bb
  %i.bd = sext i32 %i.bc to i64
  br label %.critedge3389

bb.n:                                             ; preds = %bb.k
  %i.be = tail call ptr @lock_user(i32 noundef 3, i64 noundef %3, i64 noundef %4, i1 noundef zeroext false) #29 ; 3 uses
  %.not3363 = icmp eq ptr %i.be, null
  br i1 %.not3363, label %.critedge3389, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bf = trunc i64 %2 to i32                     ; 3 uses
  %i.bg = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @thread_cpu)
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = getelementptr i8, ptr %i.bh, i64 608
  %.val.i3482 = load ptr, ptr %i.bi, align 16
  %i.bj = getelementptr inbounds nuw i8, ptr %.val.i3482, i64 9148
  %i.bk = tail call i64 (ptr, i64, ...) @safe_syscall_base(ptr noundef nonnull %i.bj, i64 noundef 0, i32 noundef %i.bf, ptr noundef nonnull %i.be, i64 noundef %4) #29 ; 2 uses
  %i.bl = icmp eq i64 %i.bk, -1
  br i1 %i.bl, label %bb.p, label %get_errno.exit3484

bb.p:                                             ; preds = %bb.o
  %i.bm = tail call ptr @__errno_location() #28
  %i.bn = load i32, ptr %i.bm, align 4
  %i.bo = sub i32 0, %i.bn
  %i.bp = sext i32 %i.bo to i64
  br label %get_errno.exit3484

get_errno.exit3484:                               ; preds = %bb.o, %bb.p
  %.0.i3483 = phi i64 [ %i.bp, %bb.p ], [ %i.bk, %bb.o ] ; 4 uses
  %i.bq = icmp sgt i64 %.0.i3483, -1
  br i1 %i.bq, label %bb.q, label %.critedge3389

bb.q:                                             ; preds = %get_errno.exit3484
  %i.br = tail call fastcc ptr @fd_trans_host_to_target_data(i32 noundef %i.bf)
  %.not3364 = icmp eq ptr %i.br, null
  br i1 %.not3364, label %.critedge3389, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bs = tail call fastcc ptr @fd_trans_host_to_target_data(i32 noundef %i.bf)
  %i.bt = tail call i64 %i.bs(ptr noundef nonnull %i.be, i64 noundef %.0.i3483) #29
  br label %.critedge3389

bb.s:                                             ; preds = %bb.a
  %i.bu = or i64 %4, %3
  %or.cond55 = icmp eq i64 %i.bu, 0
  br i1 %or.cond55, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.bv = trunc i64 %2 to i32
  %i.bw = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @thread_cpu)
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = getelementptr i8, ptr %i.bx, i64 608
  %.val.i3485 = load ptr, ptr %i.by, align 16
  %i.bz = getelementptr inbounds nuw i8, ptr %.val.i3485, i64 9148
  %i.ca = tail call i64 (ptr, i64, ...) @safe_syscall_base(ptr noundef nonnull %i.bz, i64 noundef 1, i32 noundef %i.bv, ptr noundef null, i64 noundef 0) #29 ; 2 uses
  %i.cb = icmp eq i64 %i.ca, -1
  br i1 %i.cb, label %bb.u, label %.critedge3389

bb.u:                                             ; preds = %bb.t
  %i.cc = tail call ptr @__errno_location() #28
  %i.cd = load i32, ptr %i.cc, align 4
  %i.ce = sub i32 0, %i.cd
  %i.cf = sext i32 %i.ce to i64
  br label %.critedge3389

bb.v:                                             ; preds = %bb.s
  %i.cg = tail call ptr @lock_user(i32 noundef 1, i64 noundef %3, i64 noundef %4, i1 noundef zeroext true) #29 ; 3 uses
  %.not3361 = icmp eq ptr %i.cg, null
  br i1 %.not3361, label %.critedge3389, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ch = trunc i64 %2 to i32                     ; 4 uses
  %i.ci = tail call fastcc ptr @fd_trans_target_to_host_data(i32 noundef %i.ch)
  %.not3362 = icmp eq ptr %i.ci, null
  br i1 %.not3362, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cj = tail call noalias ptr @g_malloc(i64 noundef %4) #31 ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.cj, ptr noundef nonnull align 1 %i.cg, i64 noundef %4, i1 noundef false) #29
  %i.ck = tail call fastcc ptr @fd_trans_target_to_host_data(i32 noundef %i.ch)
  %i.cl = tail call i64 %i.ck(ptr noundef nonnull %i.cj, i64 noundef %4) #29 ; 3 uses
  %i.cm = icmp sgt i64 %i.cl, -1
  br i1 %i.cm, label %bb.y, label %get_errno.exit3490

bb.y:                                             ; preds = %bb.x
  %i.cn = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @thread_cpu)
  %i.co = load ptr, ptr %i.cn, align 8
  %i.cp = getelementptr i8, ptr %i.co, i64 608
  %.val.i3488 = load ptr, ptr %i.cp, align 16
  %i.cq = getelementptr inbounds nuw i8, ptr %.val.i3488, i64 9148
  %i.cr = tail call i64 (ptr, i64, ...) @safe_syscall_base(ptr noundef nonnull %i.cq, i64 noundef 1, i32 noundef %i.ch, ptr noundef nonnull %i.cj, i64 noundef %i.cl) #29 ; 2 uses
  %i.cs = icmp eq i64 %i.cr, -1
  br i1 %i.cs, label %bb.z, label %get_errno.exit3490

bb.z:                                             ; preds = %bb.y
  %i.ct = tail call ptr @__errno_location() #28
  %i.cu = load i32, ptr %i.ct, align 4
  %i.cv = sub i32 0, %i.cu
  %i.cw = sext i32 %i.cv to i64
  br label %get_errno.exit3490

get_errno.exit3490:                               ; preds = %bb.z, %bb.y, %bb.x
  %.12550 = phi i64 [ %i.cl, %bb.x ], [ %i.cw, %bb.z ], [ %i.cr, %bb.y ]
  tail call void @g_free(ptr noundef nonnull %i.cj) #29
  br label %.critedge3389

bb.aa:                                            ; preds = %bb.w
  %i.cx = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @thread_cpu)
  %i.cy = load ptr, ptr %i.cx, align 8
  %i.cz = getelementptr i8, ptr %i.cy, i64 608
  %.val.i3491 = load ptr, ptr %i.cz, align 16
  %i.da = getelementptr inbounds nuw i8, ptr %.val.i3491, i64 9148
  %i.db = tail call i64 (ptr, i64, ...) @safe_syscall_base(ptr noundef nonnull %i.da, i64 noundef 1, i32 noundef %i.ch, ptr noundef nonnull %i.cg, i64 noundef %4) #29 ; 2 uses
  %i.dc = icmp eq i64 %i.db, -1
  br i1 %i.dc, label %bb.ab, label %.critedge3389

bb.ab:                                            ; preds = %bb.aa
  %i.dd = tail call ptr @__errno_location() #28
  %i.de = load i32, ptr %i.dd, align 4
  %i.df = sub i32 0, %i.de
end_hunk_4
begin_hunk_5_@do_syscall1:bb.a
  %i.do = load i32, ptr %i.dn, align 4
  %i.dp = sub i32 0, %i.do
  br label %get_errno.exit3495

get_errno.exit3495:                               ; preds = %bb.ad, %bb.ae
  %.0.i3494.in = phi i32 [ %i.dp, %bb.ae ], [ %i.dl, %bb.ad ] ; 2 uses
  %.0.i3494 = sext i32 %.0.i3494.in to i64
  tail call fastcc void @fd_trans_unregister(i32 noundef %.0.i3494.in)
  br label %.critedge3389

bb.af:                                            ; preds = %bb.a
  %i.dq = tail call ptr @lock_user_string(i64 noundef %3) #29 ; 2 uses
  %.not3359 = icmp eq ptr %i.dq, null
  br i1 %.not3359, label %.critedge3389, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dr = trunc i64 %2 to i32
  %i.ds = trunc i64 %4 to i32
  %i.dt = tail call i32 @target_to_host_bitmask_len(i32 noundef %i.ds, ptr noundef nonnull @fcntl_flags_tbl, i64 noundef 19) #29
  %i.du = trunc i64 %5 to i32
  %i.dv = tail call i32 @do_guest_openat(ptr noundef %0, i32 noundef %i.dr, ptr noundef nonnull %i.dq, i32 noundef %i.dt, i32 noundef %i.du, i1 noundef zeroext true) ; 2 uses
  %i.dw = icmp eq i32 %i.dv, -1
  br i1 %i.dw, label %bb.ah, label %get_errno.exit3497

bb.ah:                                            ; preds = %bb.ag
  %i.dx = tail call ptr @__errno_location() #28
  %i.dy = load i32, ptr %i.dx, align 4
  %i.dz = sub i32 0, %i.dy
  br label %get_errno.exit3497

get_errno.exit3497:                               ; preds = %bb.ag, %bb.ah
  %.0.i3496.in = phi i32 [ %i.dz, %bb.ah ], [ %i.dv, %bb.ag ] ; 2 uses
  %.0.i3496 = sext i32 %.0.i3496.in to i64
  tail call fastcc void @fd_trans_unregister(i32 noundef %.0.i3496.in)
  br label %.critedge3389

bb.ai:                                            ; preds = %bb.a
  %i.ea = tail call fastcc i32 @do_openat2(ptr noundef %0, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5)
  %i.eb = sext i32 %i.ea to i64
  br label %.critedge3389

bb.aj:                                            ; preds = %bb.a
  %i.ec = tail call fastcc i64 @do_name_to_handle_at(i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6)
  br label %.critedge3389

bb.ak:                                            ; preds = %bb.a
  %i.ed = tail call fastcc i64 @do_open_by_handle_at(i64 noundef %2, i64 noundef %3, i64 noundef %4) ; 2 uses
  %i.ee = trunc nsw i64 %i.ed to i32
  tail call fastcc void @fd_trans_unregister(i32 noundef %i.ee)
  br label %.critedge3389

bb.al:                                            ; preds = %bb.a
  %i.ef = trunc i64 %2 to i32
  %i.eg = trunc i64 %3 to i32
  %i.eh = tail call i64 (i64, ...) @syscall(i64 noundef 434, i32 noundef %i.ef, i32 noundef %i.eg) #29
  %sext4473 = shl i64 %i.eh, 32                   ; 2 uses
  %i.ei = ashr exact i64 %sext4473, 32
  %i.ej = icmp eq i64 %sext4473, -4294967296
  br i1 %i.ej, label %bb.am, label %.critedge3389

bb.am:                                            ; preds = %bb.al
  %i.ek = tail call ptr @__errno_location() #28
  %i.el = load i32, ptr %i.ek, align 4
  %i.em = sub i32 0, %i.el
  %i.en = sext i32 %i.em to i64
  br label %.critedge3389

bb.an:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %10, i8 0, i64 128, i1 false), !annotation !18
  %.not3357 = icmp eq i64 %4, 0
  br i1 %.not3357, label %bb.aq, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.eo = tail call ptr @lock_user(i32 noundef 1, i64 noundef %4, i64 noundef 128, i1 noundef zeroext true) #29 ; 2 uses
  %.not3358 = icmp eq ptr %i.eo, null
  br i1 %.not3358, label %get_errno.exit3501, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @target_to_host_siginfo(ptr noundef nonnull %10, ptr noundef nonnull %i.eo) #29
  br label %bb.aq

bb.aq:                                            ; preds = %bb.an, %bb.ap
  %.02708 = phi ptr [ %10, %bb.ap ], [ null, %bb.an ]
  %i.ep = trunc i64 %2 to i32
  %i.eq = trunc i64 %3 to i32
  %i.er = call i32 @target_to_host_signal(i32 noundef %i.eq) #29
  %i.es = trunc i64 %5 to i32
  %i.et = call i64 (i64, ...) @syscall(i64 noundef 424, i32 noundef %i.ep, i32 noundef %i.er, ptr noundef %.02708, i32 noundef %i.es) #29
  %sext4472 = shl i64 %i.et, 32                   ; 2 uses
  %i.eu = ashr exact i64 %sext4472, 32
  %i.ev = icmp eq i64 %sext4472, -4294967296
  br i1 %i.ev, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.ew = tail call ptr @__errno_location() #28
  %i.ex = load i32, ptr %i.ew, align 4
  %i.ey = sub i32 0, %i.ex
  %i.ez = sext i32 %i.ey to i64
  br label %bb.as

get_errno.exit3501:                               ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  br label %.critedge3389

bb.as:                                            ; preds = %bb.aq, %bb.ar
  %.32552.ph = phi i64 [ %i.eu, %bb.aq ], [ %i.ez, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  br label %.critedge3389

bb.at:                                            ; preds = %bb.a
  %i.fa = trunc i64 %2 to i32
  %i.fb = trunc i64 %3 to i32
  %i.fc = trunc i64 %4 to i32
  %i.fd = tail call i64 (i64, ...) @syscall(i64 noundef 438, i32 noundef %i.fa, i32 noundef %i.fb, i32 noundef %i.fc) #29
  %sext4471 = shl i64 %i.fd, 32                   ; 2 uses
  %i.fe = ashr exact i64 %sext4471, 32
  %i.ff = icmp eq i64 %sext4471, -4294967296
  br i1 %i.ff, label %bb.au, label %.critedge3389

bb.au:                                            ; preds = %bb.at
  %i.fg = tail call ptr @__errno_location() #28
  %i.fh = load i32, ptr %i.fg, align 4
  %i.fi = sub i32 0, %i.fh
  %i.fj = sext i32 %i.fi to i64
  br label %.critedge3389

bb.av:                                            ; preds = %bb.a
  %i.fk = trunc i64 %2 to i32                     ; 2 uses
  tail call fastcc void @fd_trans_unregister(i32 noundef %i.fk)
  %i.fl = tail call i32 @close(i32 noundef %i.fk) #29 ; 2 uses
  %i.fm = sext i32 %i.fl to i64
  %i.fn = icmp eq i32 %i.fl, -1
  br i1 %i.fn, label %bb.aw, label %.critedge3389

bb.aw:                                            ; preds = %bb.av
  %i.fo = tail call ptr @__errno_location() #28
  %i.fp = load i32, ptr %i.fo, align 4
  %i.fq = sub i32 0, %i.fp
  %i.fr = sext i32 %i.fq to i64
  br label %.critedge3389

bb.ax:                                            ; preds = %bb.a
  %i.fs = trunc i64 %2 to i32
  %i.ft = trunc i64 %3 to i32
  %i.fu = trunc i64 %4 to i32
  %i.fv = tail call i64 (i64, ...) @syscall(i64 noundef 436, i32 noundef %i.fs, i32 noundef %i.ft, i32 noundef %i.fu) #29
  %sext4470 = shl i64 %i.fv, 32                   ; 2 uses
  %i.fw = ashr exact i64 %sext4470, 32
  %i.fx = icmp eq i64 %sext4470, -4294967296
  br i1 %i.fx, label %bb.ay, label %get_errno.exit3507

bb.ay:                                            ; preds = %bb.ax
  %i.fy = tail call ptr @__errno_location() #28
  %i.fz = load i32, ptr %i.fy, align 4
  %i.ga = sub i32 0, %i.fz
  %i.gb = sext i32 %i.ga to i64
  br label %get_errno.exit3507

get_errno.exit3507:                               ; preds = %bb.ax, %bb.ay
  %.0.i3506 = phi i64 [ %i.gb, %bb.ay ], [ %i.fw, %bb.ax ] ; 4 uses
  %i.gc = and i64 %4, 4
  %i.gd = or i64 %.0.i3506, %i.gc
  %or.cond3369 = icmp eq i64 %i.gd, 0
  br i1 %or.cond3369, label %bb.az, label %.critedge3389

bb.az:                                            ; preds = %get_errno.exit3507
  %i.ge = load i32, ptr @target_fd_max, align 4
  %i.gf = zext i32 %i.ge to i64
  %i.gg = tail call i64 @llvm.smin.i64(i64 %3, i64 %i.gf) ; 2 uses
  %i.gh = icmp slt i64 %2, %i.gg
  br i1 %i.gh, label %.lr.ph4491, label %.critedge3389

.lr.ph4491:                                       ; preds = %bb.az, %fd_trans_unregister.exit
  %.027104489 = phi i64 [ %i.gq, %fd_trans_unregister.exit ], [ %2, %bb.az ] ; 3 uses
  %i.gi = trunc i64 %.027104489 to i32            ; 2 uses
  %i.gj = icmp slt i32 %i.gi, 0
  br i1 %i.gj, label %fd_trans_unregister.exit, label %bb.ba

bb.ba:                                            ; preds = %.lr.ph4491
  %i.gk = load atomic ptr, ptr @qemu_mutex_lock_func monotonic, align 8
  tail call void %i.gk(ptr noundef nonnull @target_fd_trans_lock, ptr noundef nonnull @.str.642, i32 noundef 56) #29, !inline_history !2
  %i.gl = load i32, ptr @target_fd_max, align 4
  %i.gm = icmp ugt i32 %i.gl, %i.gi
  br i1 %i.gm, label %bb.bb, label %glib_autoptr_cleanup_QemuLockable.exit.i

bb.bb:                                            ; preds = %bb.ba
  %i.gn = load ptr, ptr @target_fd_trans, align 8
  %i.go = and i64 %.027104489, 2147483647
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.gn, i64 %i.go
  store ptr null, ptr %i.gp, align 8
  br label %glib_autoptr_cleanup_QemuLockable.exit.i

glib_autoptr_cleanup_QemuLockable.exit.i:         ; preds = %bb.bb, %bb.ba
  tail call void @qemu_mutex_unlock_impl(ptr noundef nonnull @target_fd_trans_lock, ptr noundef nonnull @.str.642, i32 noundef 56) #29
  br label %fd_trans_unregister.exit

fd_trans_unregister.exit:                         ; preds = %.lr.ph4491, %glib_autoptr_cleanup_QemuLockable.exit.i
  %i.gq = add nsw i64 %.027104489, 1              ; 2 uses
  %exitcond4509.not = icmp eq i64 %i.gq, %i.gg
  br i1 %exitcond4509.not, label %.critedge3389, label %.lr.ph4491, !llvm.loop !37

bb.bc:                                            ; preds = %bb.a
  %i.gr = tail call i64 @do_brk(i64 noundef %2)
  br label %.critedge3389

bb.bd:                                            ; preds = %bb.a
  %i.gs = tail call fastcc i32 @do_fork(ptr noundef %0, i32 noundef 17, i64 noundef 0, i64 noundef 0, i64 noundef 0, i64 noundef 0) ; 2 uses
  %i.gt = sext i32 %i.gs to i64
  %i.gu = icmp eq i32 %i.gs, -1
  br i1 %i.gu, label %bb.be, label %.critedge3389

bb.be:                                            ; preds = %bb.bd
  %i.gv = tail call ptr @__errno_location() #28
  %i.gw = load i32, ptr %i.gv, align 4
  %i.gx = sub i32 0, %i.gw
  %i.gy = sext i32 %i.gx to i64
  br label %.critedge3389

bb.bf:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %11, i8 0, i64 144, i1 false), !annotation !18
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %12, i8 0, i64 128, i1 false), !annotation !18
  %i.gz = trunc i64 %2 to i32
  %i.ha = trunc i64 %3 to i32
  %.not3351 = icmp eq i64 %4, 0                   ; 2 uses
  %. = select i1 %.not3351, ptr null, ptr %12
  %i.hb = trunc i64 %5 to i32
  %.not3352 = icmp eq i64 %6, 0                   ; 2 uses
  %i.hc = select i1 %.not3352, ptr null, ptr %11
  %i.hd = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @thread_cpu)
  %i.he = load ptr, ptr %i.hd, align 8
  %i.hf = getelementptr i8, ptr %i.he, i64 608
  %.val.i3510 = load ptr, ptr %i.hf, align 16
  %i.hg = getelementptr inbounds nuw i8, ptr %.val.i3510, i64 9148
  %i.hh = call i64 (ptr, i64, ...) @safe_syscall_base(ptr noundef nonnull %i.hg, i64 noundef 247, i32 noundef %i.gz, i32 noundef %i.ha, ptr noundef %., i32 noundef %i.hb, ptr noundef %i.hc) #29
  %sext4469 = shl i64 %i.hh, 32                   ; 2 uses
  %i.hi = ashr exact i64 %sext4469, 32
  %i.hj = icmp eq i64 %sext4469, -4294967296
  br i1 %i.hj, label %bb.bg, label %get_errno.exit3512

bb.bg:                                            ; preds = %bb.bf
  %i.hk = tail call ptr @__errno_location() #28
  %i.hl = load i32, ptr %i.hk, align 4
  %i.hm = sub i32 0, %i.hl
  %i.hn = sext i32 %i.hm to i64
  br label %get_errno.exit3512

get_errno.exit3512:                               ; preds = %bb.bf, %bb.bg
  %.0.i3511 = phi i64 [ %i.hn, %bb.bg ], [ %i.hi, %bb.bf ] ; 2 uses
  %i.ho = icmp ult i64 %.0.i3511, -4096
  br i1 %i.ho, label %bb.bh, label %bb.bm

bb.bh:                                            ; preds = %get_errno.exit3512
  br i1 %.not3351, label %bb.bk, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.hp = call ptr @lock_user(i32 noundef 3, i64 noundef %4, i64 noundef 128, i1 noundef zeroext false) #29 ; 2 uses
  %.not3354 = icmp eq ptr %i.hp, null
  br i1 %.not3354, label %.thread, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  call void @host_to_target_siginfo(ptr noundef nonnull %i.hp, ptr noundef nonnull %12) #29
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bh
  br i1 %.not3352, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.hq = call fastcc i64 @host_to_target_rusage(i64 noundef %6, ptr noundef %11)
  %.not3355 = icmp eq i64 %i.hq, 0
  br i1 %.not3355, label %bb.bm, label %.thread

.thread:                                          ; preds = %bb.bi, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  br label %.critedge3389

bb.bm:                                            ; preds = %bb.bk, %bb.bl, %get_errno.exit3512
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  br label %.critedge3389

bb.bn:                                            ; preds = %bb.a
  %i.hr = tail call ptr @lock_user_string(i64 noundef %2) #29 ; 2 uses
  %.not3350 = icmp eq ptr %i.hr, null
  br i1 %.not3350, label %.critedge3389, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.hs = trunc i64 %3 to i32
  %i.ht = tail call i32 @creat64(ptr noundef nonnull %i.hr, i32 noundef %i.hs) #29 ; 2 uses
  %i.hu = icmp eq i32 %i.ht, -1
  br i1 %i.hu, label %bb.bp, label %get_errno.exit3514

bb.bp:                                            ; preds = %bb.bo
  %i.hv = tail call ptr @__errno_location() #28
  %i.hw = load i32, ptr %i.hv, align 4
  %i.hx = sub i32 0, %i.hw
  br label %get_errno.exit3514

get_errno.exit3514:                               ; preds = %bb.bo, %bb.bp
  %.0.i3513.in = phi i32 [ %i.hx, %bb.bp ], [ %i.ht, %bb.bo ] ; 2 uses
  %.0.i3513 = sext i32 %.0.i3513.in to i64
  tail call fastcc void @fd_trans_unregister(i32 noundef %.0.i3513.in)
  br label %.critedge3389

bb.bq:                                            ; preds = %bb.a
  %i.hy = tail call ptr @lock_user_string(i64 noundef %2) #29 ; 2 uses
  %i.hz = tail call ptr @lock_user_string(i64 noundef %3) #29 ; 2 uses
  %i.ia = icmp ne ptr %i.hy, null
  %i.ib = icmp ne ptr %i.hz, null
  %or.cond57 = select i1 %i.ia, i1 %i.ib, i1 false
  br i1 %or.cond57, label %bb.br, label %.critedge3389

bb.br:                                            ; preds = %bb.bq
  %i.ic = tail call i32 @link(ptr noundef nonnull %i.hy, ptr noundef nonnull %i.hz) #29 ; 2 uses
  %i.id = sext i32 %i.ic to i64
  %i.ie = icmp eq i32 %i.ic, -1
  br i1 %i.ie, label %bb.bs, label %.critedge3389

bb.bs:                                            ; preds = %bb.br
  %i.if = tail call ptr @__errno_location() #28
  %i.ig = load i32, ptr %i.if, align 4
  %i.ih = sub i32 0, %i.ig
  %i.ii = sext i32 %i.ih to i64
  br label %.critedge3389

bb.bt:                                            ; preds = %bb.a
  %i.ij = icmp ne i64 %3, 0
  %i.ik = icmp ne i64 %5, 0
  %or.cond59 = and i1 %i.ij, %i.ik
  br i1 %or.cond59, label %bb.bu, label %.critedge3389

bb.bu:                                            ; preds = %bb.bt
  %i.il = tail call ptr @lock_user_string(i64 noundef %3) #29 ; 2 uses
  %i.im = tail call ptr @lock_user_string(i64 noundef %5) #29 ; 2 uses
  %i.in = icmp ne ptr %i.il, null
  %i.io = icmp ne ptr %i.im, null
  %or.cond61 = select i1 %i.in, i1 %i.io, i1 false
  br i1 %or.cond61, label %bb.bv, label %.critedge3389

bb.bv:                                            ; preds = %bb.bu
  %i.ip = trunc i64 %2 to i32
  %i.iq = trunc i64 %4 to i32
  %i.ir = trunc i64 %6 to i32
  %i.is = tail call i32 @linkat(i32 noundef %i.ip, ptr noundef nonnull %i.il, i32 noundef %i.iq, ptr noundef nonnull %i.im, i32 noundef %i.ir) #29 ; 2 uses
  %i.it = sext i32 %i.is to i64
  %i.iu = icmp eq i32 %i.is, -1
  br i1 %i.iu, label %bb.bw, label %.critedge3389

bb.bw:                                            ; preds = %bb.bv
  %i.iv = tail call ptr @__errno_location() #28
  %i.iw = load i32, ptr %i.iv, align 4
  %i.ix = sub i32 0, %i.iw
  %i.iy = sext i32 %i.ix to i64
  br label %.critedge3389

bb.bx:                                            ; preds = %bb.a
  %i.iz = tail call ptr @lock_user_string(i64 noundef %2) #29 ; 2 uses
  %.not3349 = icmp eq ptr %i.iz, null
  br i1 %.not3349, label %.critedge3389, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.ja = tail call i32 @unlink(ptr noundef nonnull %i.iz) #29 ; 2 uses
  %i.jb = sext i32 %i.ja to i64
  %i.jc = icmp eq i32 %i.ja, -1
  br i1 %i.jc, label %bb.bz, label %.critedge3389

bb.bz:                                            ; preds = %bb.by
  %i.jd = tail call ptr @__errno_location() #28
  %i.je = load i32, ptr %i.jd, align 4
  %i.jf = sub i32 0, %i.je
  %i.jg = sext i32 %i.jf to i64
  br label %.critedge3389

bb.ca:                                            ; preds = %bb.a
  %i.jh = tail call ptr @lock_user_string(i64 noundef %3) #29 ; 2 uses
  %.not3348 = icmp eq ptr %i.jh, null
  br i1 %.not3348, label %.critedge3389, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.ji = trunc i64 %2 to i32
  %i.jj = trunc i64 %4 to i32
  %i.jk = tail call i32 @unlinkat(i32 noundef %i.ji, ptr noundef nonnull %i.jh, i32 noundef %i.jj) #29 ; 2 uses
  %i.jl = sext i32 %i.jk to i64
  %i.jm = icmp eq i32 %i.jk, -1
  br i1 %i.jm, label %bb.cc, label %.critedge3389

bb.cc:                                            ; preds = %bb.cb
  %i.jn = tail call ptr @__errno_location() #28
  %i.jo = load i32, ptr %i.jn, align 4
  %i.jp = sub i32 0, %i.jo
  %i.jq = sext i32 %i.jp to i64
  br label %.critedge3389

bb.cd:                                            ; preds = %bb.a
  %i.jr = trunc i64 %2 to i32
  %i.js = trunc i64 %6 to i32
  %i.jt = tail call fastcc i32 @do_execv(i32 noundef %i.jr, i64 noundef %3, i64 noundef %4, i64 noundef %5, i32 noundef %i.js, i1 noundef zeroext true)
  %i.ju = sext i32 %i.jt to i64
end_hunk_5
begin_hunk_6_@do_syscall1:bb.a
  %i.adx = call i32 @settimeofday(ptr noundef %.02744, ptr noundef %.02743) #29 ; 2 uses
  %i.ady = sext i32 %i.adx to i64
  %i.adz = icmp eq i32 %i.adx, -1
  br i1 %i.adz, label %bb.ki, label %copy_from_user_timeval.exit3655

bb.ki:                                            ; preds = %bb.kh
  %i.aea = tail call ptr @__errno_location() #28
  %i.aeb = load i32, ptr %i.aea, align 4
  %i.aec = sub i32 0, %i.aeb
  %i.aed = sext i32 %i.aec to i64
  br label %copy_from_user_timeval.exit3655

copy_from_user_timeval.exit3655:                  ; preds = %bb.ki, %bb.kh, %bb.kg, %bb.ke
  %.22 = phi i64 [ -14, %bb.kg ], [ -14, %bb.ke ], [ %i.aed, %bb.ki ], [ %i.ady, %bb.kh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #29
  br label %.critedge3389

bb.kj:                                            ; preds = %bb.a
  %i.aee = trunc i64 %2 to i32
  %i.aef = tail call fastcc i64 @do_select(i32 noundef %i.aee, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6)
  br label %.critedge3389

bb.kk:                                            ; preds = %bb.a
  %i.aeg = tail call fastcc i64 @do_pselect6(i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7)
  br label %.critedge3389

bb.kl:                                            ; preds = %bb.a
  %i.aeh = tail call ptr @lock_user_string(i64 noundef %2) #29 ; 2 uses
  %i.aei = tail call ptr @lock_user_string(i64 noundef %3) #29 ; 2 uses
  %i.aej = icmp ne ptr %i.aeh, null
  %i.aek = icmp ne ptr %i.aei, null
  %or.cond79 = select i1 %i.aej, i1 %i.aek, i1 false
  br i1 %or.cond79, label %bb.km, label %.critedge3389

bb.km:                                            ; preds = %bb.kl
  %i.ael = tail call i32 @symlink(ptr noundef nonnull %i.aeh, ptr noundef nonnull %i.aei) #29 ; 2 uses
  %i.aem = sext i32 %i.ael to i64
  %i.aen = icmp eq i32 %i.ael, -1
  br i1 %i.aen, label %bb.kn, label %.critedge3389

bb.kn:                                            ; preds = %bb.km
  %i.aeo = tail call ptr @__errno_location() #28
  %i.aep = load i32, ptr %i.aeo, align 4
  %i.aeq = sub i32 0, %i.aep
  %i.aer = sext i32 %i.aeq to i64
  br label %.critedge3389

bb.ko:                                            ; preds = %bb.a
  %i.aes = tail call ptr @lock_user_string(i64 noundef %2) #29 ; 2 uses
  %i.aet = tail call ptr @lock_user_string(i64 noundef %4) #29 ; 2 uses
  %i.aeu = icmp ne ptr %i.aes, null
  %i.aev = icmp ne ptr %i.aet, null
  %or.cond81 = select i1 %i.aeu, i1 %i.aev, i1 false
  br i1 %or.cond81, label %bb.kp, label %.critedge3389

bb.kp:                                            ; preds = %bb.ko
  %i.aew = trunc i64 %3 to i32
  %i.aex = tail call i32 @symlinkat(ptr noundef nonnull %i.aes, i32 noundef %i.aew, ptr noundef nonnull %i.aet) #29 ; 2 uses
  %i.aey = sext i32 %i.aex to i64
  %i.aez = icmp eq i32 %i.aex, -1
  br i1 %i.aez, label %bb.kq, label %.critedge3389

bb.kq:                                            ; preds = %bb.kp
  %i.afa = tail call ptr @__errno_location() #28
  %i.afb = load i32, ptr %i.afa, align 4
  %i.afc = sub i32 0, %i.afb
  %i.afd = sext i32 %i.afc to i64
  br label %.critedge3389

bb.kr:                                            ; preds = %bb.a
  %i.afe = tail call ptr @lock_user_string(i64 noundef %2) #29
  %i.aff = tail call ptr @lock_user(i32 noundef 3, i64 noundef %3, i64 noundef %4, i1 noundef zeroext false) #29
  %i.afg = tail call i64 @do_guest_readlink(ptr noundef %i.afe, ptr noundef %i.aff, i64 noundef %4) ; 2 uses
  %i.afh = icmp eq i64 %i.afg, -1
  br i1 %i.afh, label %bb.ks, label %.critedge3389

bb.ks:                                            ; preds = %bb.kr
  %i.afi = tail call ptr @__errno_location() #28
  %i.afj = load i32, ptr %i.afi, align 4
  %i.afk = sub i32 0, %i.afj
  %i.afl = sext i32 %i.afk to i64
  br label %.critedge3389

bb.kt:                                            ; preds = %bb.a
  %i.afm = tail call ptr @lock_user_string(i64 noundef %3) #29 ; 3 uses
  %i.afn = tail call ptr @lock_user(i32 noundef 3, i64 noundef %4, i64 noundef %5, i1 noundef zeroext false) #29 ; 3 uses
  %i.afo = icmp ne ptr %i.afm, null
  %i.afp = icmp ne ptr %i.afn, null
  %or.cond83 = select i1 %i.afo, i1 %i.afp, i1 false
  br i1 %or.cond83, label %bb.ku, label %.critedge3389

bb.ku:                                            ; preds = %bb.kt
  %.not3266 = icmp eq i64 %5, 0
  br i1 %.not3266, label %.critedge3389, label %bb.kv

bb.kv:                                            ; preds = %bb.ku
  %i.afq = tail call i32 @is_proc_myself(ptr noundef nonnull %i.afm, ptr noundef nonnull @.str.582)
  %.not3267 = icmp eq i32 %i.afq, 0
  br i1 %.not3267, label %bb.kx, label %bb.kw

bb.kw:                                            ; preds = %bb.kv
  %i.afr = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @real_exec_path) #32
  %i.afs = tail call i64 @llvm.umin.i64(i64 %i.afr, i64 %5) ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.afn, ptr noundef nonnull align 16 @real_exec_path, i64 noundef %i.afs, i1 noundef false) #29
  br label %.critedge3389

bb.kx:                                            ; preds = %bb.kv
  %i.aft = trunc i64 %2 to i32
  %i.afu = tail call ptr @path(ptr noundef nonnull %i.afm) #29
  %i.afv = tail call i64 @readlinkat(i32 noundef %i.aft, ptr noundef %i.afu, ptr noundef nonnull %i.afn, i64 noundef %5) #29 ; 2 uses
  %i.afw = icmp eq i64 %i.afv, -1
  br i1 %i.afw, label %bb.ky, label %.critedge3389

bb.ky:                                            ; preds = %bb.kx
  %i.afx = tail call ptr @__errno_location() #28
  %i.afy = load i32, ptr %i.afx, align 4
  %i.afz = sub i32 0, %i.afy
  %i.aga = sext i32 %i.afz to i64
  br label %.critedge3389

bb.kz:                                            ; preds = %bb.a
  %i.agb = tail call ptr @lock_user_string(i64 noundef %2) #29 ; 2 uses
  %.not3265 = icmp eq ptr %i.agb, null
  br i1 %.not3265, label %.critedge3389, label %bb.la

bb.la:                                            ; preds = %bb.kz
  %i.agc = trunc i64 %3 to i32
  %i.agd = tail call i32 @swapon(ptr noundef nonnull %i.agb, i32 noundef %i.agc) #29 ; 2 uses
  %i.age = sext i32 %i.agd to i64
  %i.agf = icmp eq i32 %i.agd, -1
  br i1 %i.agf, label %bb.lb, label %.critedge3389

bb.lb:                                            ; preds = %bb.la
  %i.agg = tail call ptr @__errno_location() #28
  %i.agh = load i32, ptr %i.agg, align 4
  %i.agi = sub i32 0, %i.agh
  %i.agj = sext i32 %i.agi to i64
  br label %.critedge3389

bb.lc:                                            ; preds = %bb.a
  %i.agk = icmp eq i64 %4, 2712847316
  br i1 %i.agk, label %bb.ld, label %bb.lg

bb.ld:                                            ; preds = %bb.lc
  %i.agl = tail call ptr @lock_user_string(i64 noundef %5) #29 ; 2 uses
  %.not3264 = icmp eq ptr %i.agl, null
  br i1 %.not3264, label %.critedge3389, label %bb.le

bb.le:                                            ; preds = %bb.ld
  %i.agm = trunc i64 %2 to i32
  %i.agn = trunc i64 %3 to i32
  %i.ago = tail call i64 (i64, ...) @syscall(i64 noundef 169, i32 noundef %i.agm, i32 noundef %i.agn, i32 noundef -1582119980, ptr noundef nonnull %i.agl) #29
  %sext4460 = shl i64 %i.ago, 32                  ; 2 uses
  %i.agp = ashr exact i64 %sext4460, 32
  %i.agq = icmp eq i64 %sext4460, -4294967296
  br i1 %i.agq, label %bb.lf, label %.critedge3389

bb.lf:                                            ; preds = %bb.le
  %i.agr = tail call ptr @__errno_location() #28
  %i.ags = load i32, ptr %i.agr, align 4
  %i.agt = sub i32 0, %i.ags
  %i.agu = sext i32 %i.agt to i64
  br label %.critedge3389

bb.lg:                                            ; preds = %bb.lc
  %i.agv = trunc i64 %2 to i32
  %i.agw = trunc i64 %3 to i32
  %i.agx = trunc i64 %4 to i32
  %i.agy = tail call i64 (i64, ...) @syscall(i64 noundef 169, i32 noundef %i.agv, i32 noundef %i.agw, i32 noundef %i.agx, ptr noundef null) #29
  %sext4459 = shl i64 %i.agy, 32                  ; 2 uses
  %i.agz = ashr exact i64 %sext4459, 32
  %i.aha = icmp eq i64 %sext4459, -4294967296
  br i1 %i.aha, label %bb.lh, label %.critedge3389

bb.lh:                                            ; preds = %bb.lg
  %i.ahb = tail call ptr @__errno_location() #28
  %i.ahc = load i32, ptr %i.ahb, align 4
  %i.ahd = sub i32 0, %i.ahc
  %i.ahe = sext i32 %i.ahd to i64
  br label %.critedge3389

bb.li:                                            ; preds = %bb.a
  %i.ahf = trunc i64 %4 to i32
  %i.ahg = trunc i64 %5 to i32
  %i.ahh = trunc i64 %6 to i32
  %i.ahi = tail call fastcc i64 @do_mmap(i64 noundef %2, i64 noundef %3, i32 noundef %i.ahf, i32 noundef %i.ahg, i32 noundef %i.ahh, i64 noundef %7)
  br label %.critedge3389

bb.lj:                                            ; preds = %bb.a
  %i.ahj = getelementptr inbounds i8, ptr %0, i64 -16344
  %i.ahk = load ptr, ptr %i.ahj, align 8
  %i.ahl = getelementptr inbounds nuw i8, ptr %i.ahk, i64 336
  %i.ahm = load ptr, ptr %i.ahl, align 8
  %i.ahn = getelementptr inbounds nuw i8, ptr %i.ahm, i64 104
  %i.aho = load ptr, ptr %i.ahn, align 8          ; 2 uses
  %.not.i.i = icmp eq ptr %i.aho, null
  br i1 %.not.i.i, label %cpu_untagged_addr.exit, label %bb.lk

bb.lk:                                            ; preds = %bb.lj
  %i.ahp = tail call i64 %i.aho(ptr noundef nonnull %i.s, i64 noundef %2) #29, !inline_history !38
  br label %cpu_untagged_addr.exit

cpu_untagged_addr.exit:                           ; preds = %bb.lj, %bb.lk
  %.0.i.i = phi i64 [ %i.ahp, %bb.lk ], [ %2, %bb.lj ]
  %i.ahq = tail call i32 @target_munmap(i64 noundef %.0.i.i, i64 noundef %3) #29 ; 2 uses
  %i.ahr = sext i32 %i.ahq to i64
  %i.ahs = icmp eq i32 %i.ahq, -1
  br i1 %i.ahs, label %bb.ll, label %.critedge3389

bb.ll:                                            ; preds = %cpu_untagged_addr.exit
  %i.aht = tail call ptr @__errno_location() #28
  %i.ahu = load i32, ptr %i.aht, align 4
  %i.ahv = sub i32 0, %i.ahu
  %i.ahw = sext i32 %i.ahv to i64
  br label %.critedge3389

bb.lm:                                            ; preds = %bb.a
  %i.ahx = getelementptr inbounds i8, ptr %0, i64 -16344
  %i.ahy = load ptr, ptr %i.ahx, align 8
  %i.ahz = getelementptr inbounds nuw i8, ptr %i.ahy, i64 336
  %i.aia = load ptr, ptr %i.ahz, align 8
  %i.aib = getelementptr inbounds nuw i8, ptr %i.aia, i64 104
  %i.aic = load ptr, ptr %i.aib, align 8          ; 2 uses
  %.not.i.i3678 = icmp eq ptr %i.aic, null
  br i1 %.not.i.i3678, label %cpu_untagged_addr.exit3680, label %bb.ln

bb.ln:                                            ; preds = %bb.lm
  %i.aid = tail call i64 %i.aic(ptr noundef nonnull %i.s, i64 noundef %2) #29, !inline_history !38
  br label %cpu_untagged_addr.exit3680

cpu_untagged_addr.exit3680:                       ; preds = %bb.lm, %bb.ln
  %.0.i.i3679 = phi i64 [ %i.aid, %bb.ln ], [ %2, %bb.lm ] ; 6 uses
  %i.aie = and i64 %4, 16777216
  %.not3261 = icmp eq i64 %i.aie, 0
  br i1 %.not3261, label %bb.lr, label %bb.lo

bb.lo:                                            ; preds = %cpu_untagged_addr.exit3680
  %i.aif = getelementptr i8, ptr %0, i64 -15888
  %.val3467 = load ptr, ptr %i.aif, align 16
  %i.aig = getelementptr inbounds nuw i8, ptr %.val3467, i64 32
  %i.aih = load ptr, ptr %i.aig, align 8          ; 2 uses
  %i.aii = getelementptr inbounds nuw i8, ptr %i.aih, i64 72
  %i.aij = load i64, ptr %i.aii, align 8          ; 3 uses
  %.not3262 = icmp ult i64 %.0.i.i3679, %i.aij
  br i1 %.not3262, label %bb.lr, label %bb.lp

bb.lp:                                            ; preds = %bb.lo
  %i.aik = getelementptr inbounds nuw i8, ptr %i.aih, i64 64
  %i.ail = load i64, ptr %i.aik, align 8
  %.not3263 = icmp ugt i64 %.0.i.i3679, %i.ail
  br i1 %.not3263, label %bb.lr, label %bb.lq

bb.lq:                                            ; preds = %bb.lp
  %i.aim = and i64 %4, -16777217
  %i.ain = add i64 %.0.i.i3679, %3
  %i.aio = sub i64 %i.ain, %i.aij
  br label %bb.lr

bb.lr:                                            ; preds = %bb.lq, %bb.lp, %bb.lo, %cpu_untagged_addr.exit3680
  %.02535 = phi i64 [ %i.aim, %bb.lq ], [ %4, %bb.lp ], [ %4, %bb.lo ], [ %4, %cpu_untagged_addr.exit3680 ]
  %.02533 = phi i64 [ %i.aio, %bb.lq ], [ %3, %bb.lp ], [ %3, %bb.lo ], [ %3, %cpu_untagged_addr.exit3680 ]
  %.02531 = phi i64 [ %i.aij, %bb.lq ], [ %.0.i.i3679, %bb.lp ], [ %.0.i.i3679, %bb.lo ], [ %.0.i.i3679, %cpu_untagged_addr.exit3680 ]
  %i.aip = trunc i64 %.02535 to i32
  %i.aiq = tail call i32 @target_mprotect(i64 noundef %.02531, i64 noundef %.02533, i32 noundef %i.aip) #29 ; 2 uses
  %i.air = sext i32 %i.aiq to i64
  %i.ais = icmp eq i32 %i.aiq, -1
  br i1 %i.ais, label %bb.ls, label %.critedge3389

bb.ls:                                            ; preds = %bb.lr
  %i.ait = tail call ptr @__errno_location() #28
  %i.aiu = load i32, ptr %i.ait, align 4
  %i.aiv = sub i32 0, %i.aiu
  %i.aiw = sext i32 %i.aiv to i64
  br label %.critedge3389

bb.lt:                                            ; preds = %bb.a
  %i.aix = getelementptr inbounds i8, ptr %0, i64 -16344
  %i.aiy = load ptr, ptr %i.aix, align 8
  %i.aiz = getelementptr inbounds nuw i8, ptr %i.aiy, i64 336
  %i.aja = load ptr, ptr %i.aiz, align 8
  %i.ajb = getelementptr inbounds nuw i8, ptr %i.aja, i64 104
  %i.ajc = load ptr, ptr %i.ajb, align 8          ; 2 uses
  %.not.i.i3683 = icmp eq ptr %i.ajc, null
  br i1 %.not.i.i3683, label %cpu_untagged_addr.exit3685, label %bb.lu

bb.lu:                                            ; preds = %bb.lt
  %i.ajd = tail call i64 %i.ajc(ptr noundef nonnull %i.s, i64 noundef %2) #29, !inline_history !38
  br label %cpu_untagged_addr.exit3685

cpu_untagged_addr.exit3685:                       ; preds = %bb.lt, %bb.lu
  %.0.i.i3684 = phi i64 [ %i.ajd, %bb.lu ], [ %2, %bb.lt ]
  %i.aje = tail call i64 @target_mremap(i64 noundef %.0.i.i3684, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) #29 ; 2 uses
  %i.ajf = icmp eq i64 %i.aje, -1
  br i1 %i.ajf, label %bb.lv, label %.critedge3389

bb.lv:                                            ; preds = %cpu_untagged_addr.exit3685
  %i.ajg = tail call ptr @__errno_location() #28
  %i.ajh = load i32, ptr %i.ajg, align 4
  %i.aji = sub i32 0, %i.ajh
  %i.ajj = sext i32 %i.aji to i64
  br label %.critedge3389

bb.lw:                                            ; preds = %bb.a
  %i.ajk = getelementptr inbounds i8, ptr %0, i64 -16344
  %i.ajl = load ptr, ptr %i.ajk, align 8
  %i.ajm = getelementptr inbounds nuw i8, ptr %i.ajl, i64 336
  %i.ajn = load ptr, ptr %i.ajm, align 8
  %i.ajo = getelementptr inbounds nuw i8, ptr %i.ajn, i64 104
  %i.ajp = load ptr, ptr %i.ajo, align 8          ; 2 uses
  %.not.i.i.i3688 = icmp eq ptr %i.ajp, null
  br i1 %.not.i.i.i3688, label %g2h.exit3690, label %bb.lx

bb.lx:                                            ; preds = %bb.lw
  %i.ajq = tail call i64 %i.ajp(ptr noundef nonnull %i.s, i64 noundef %2) #29, !inline_history !1
  br label %g2h.exit3690

g2h.exit3690:                                     ; preds = %bb.lw, %bb.lx
  %.0.i.i.i3689 = phi i64 [ %i.ajq, %bb.lx ], [ %2, %bb.lw ]
  %i.ajr = load i64, ptr @guest_base, align 8
  %i.ajs = add i64 %i.ajr, %.0.i.i.i3689
  %i.ajt = inttoptr i64 %i.ajs to ptr
  %i.aju = trunc i64 %4 to i32
  %i.ajv = tail call i32 @msync(ptr noundef %i.ajt, i64 noundef %3, i32 noundef %i.aju) #29 ; 2 uses
  %i.ajw = sext i32 %i.ajv to i64
  %i.ajx = icmp eq i32 %i.ajv, -1
  br i1 %i.ajx, label %bb.ly, label %.critedge3389

bb.ly:                                            ; preds = %g2h.exit3690
  %i.ajy = tail call ptr @__errno_location() #28
  %i.ajz = load i32, ptr %i.ajy, align 4
  %i.aka = sub i32 0, %i.ajz
  %i.akb = sext i32 %i.aka to i64
  br label %.critedge3389

bb.lz:                                            ; preds = %bb.a
  %i.akc = getelementptr inbounds i8, ptr %0, i64 -16344
  %i.akd = load ptr, ptr %i.akc, align 8
  %i.ake = getelementptr inbounds nuw i8, ptr %i.akd, i64 336
  %i.akf = load ptr, ptr %i.ake, align 8
  %i.akg = getelementptr inbounds nuw i8, ptr %i.akf, i64 104
  %i.akh = load ptr, ptr %i.akg, align 8          ; 2 uses
  %.not.i.i.i3693 = icmp eq ptr %i.akh, null
  br i1 %.not.i.i.i3693, label %g2h.exit3695, label %bb.ma

bb.ma:                                            ; preds = %bb.lz
  %i.aki = tail call i64 %i.akh(ptr noundef nonnull %i.s, i64 noundef %2) #29, !inline_history !1
  br label %g2h.exit3695

g2h.exit3695:                                     ; preds = %bb.lz, %bb.ma
  %.0.i.i.i3694 = phi i64 [ %i.aki, %bb.ma ], [ %2, %bb.lz ]
  %i.akj = load i64, ptr @guest_base, align 8
  %i.akk = add i64 %i.akj, %.0.i.i.i3694
  %i.akl = inttoptr i64 %i.akk to ptr
  %i.akm = tail call i32 @mlock(ptr noundef %i.akl, i64 noundef %3) #29 ; 2 uses
  %i.akn = sext i32 %i.akm to i64
  %i.ako = icmp eq i32 %i.akm, -1
  br i1 %i.ako, label %bb.mb, label %.critedge3389

bb.mb:                                            ; preds = %g2h.exit3695
  %i.akp = tail call ptr @__errno_location() #28
  %i.akq = load i32, ptr %i.akp, align 4
  %i.akr = sub i32 0, %i.akq
  %i.aks = sext i32 %i.akr to i64
  br label %.critedge3389

bb.mc:                                            ; preds = %bb.a
  %i.akt = getelementptr inbounds i8, ptr %0, i64 -16344
  %i.aku = load ptr, ptr %i.akt, align 8
  %i.akv = getelementptr inbounds nuw i8, ptr %i.aku, i64 336
  %i.akw = load ptr, ptr %i.akv, align 8
  %i.akx = getelementptr inbounds nuw i8, ptr %i.akw, i64 104
  %i.aky = load ptr, ptr %i.akx, align 8          ; 2 uses
  %.not.i.i.i3698 = icmp eq ptr %i.aky, null
  br i1 %.not.i.i.i3698, label %g2h.exit3700, label %bb.md

bb.md:                                            ; preds = %bb.mc
  %i.akz = tail call i64 %i.aky(ptr noundef nonnull %i.s, i64 noundef %2) #29, !inline_history !1
  br label %g2h.exit3700

g2h.exit3700:                                     ; preds = %bb.mc, %bb.md
  %.0.i.i.i3699 = phi i64 [ %i.akz, %bb.md ], [ %2, %bb.mc ]
  %i.ala = load i64, ptr @guest_base, align 8
  %i.alb = add i64 %i.ala, %.0.i.i.i3699
  %i.alc = inttoptr i64 %i.alb to ptr
  %i.ald = tail call i32 @munlock(ptr noundef %i.alc, i64 noundef %3) #29 ; 2 uses
  %i.ale = sext i32 %i.ald to i64
  %i.alf = icmp eq i32 %i.ald, -1
  br i1 %i.alf, label %bb.me, label %.critedge3389

bb.me:                                            ; preds = %g2h.exit3700
  %i.alg = tail call ptr @__errno_location() #28
  %i.alh = load i32, ptr %i.alg, align 4
  %i.ali = sub i32 0, %i.alh
  %i.alj = sext i32 %i.ali to i64
  br label %.critedge3389

bb.mf:                                            ; preds = %bb.a
  %i.alk = trunc i64 %2 to i32
  %.2.i = and i32 %i.alk, 7
  %i.all = tail call i32 @mlockall(i32 noundef %.2.i) #29 ; 2 uses
  %i.alm = sext i32 %i.all to i64
  %i.aln = icmp eq i32 %i.all, -1
  br i1 %i.aln, label %bb.mg, label %.critedge3389

bb.mg:                                            ; preds = %bb.mf
  %i.alo = tail call ptr @__errno_location() #28
  %i.alp = load i32, ptr %i.alo, align 4
  %i.alq = sub i32 0, %i.alp
  %i.alr = sext i32 %i.alq to i64
  br label %.critedge3389

bb.mh:                                            ; preds = %bb.a
  %i.als = tail call i32 @munlockall() #29        ; 2 uses
  %i.alt = sext i32 %i.als to i64
  %i.alu = icmp eq i32 %i.als, -1
  br i1 %i.alu, label %bb.mi, label %.critedge3389

bb.mi:                                            ; preds = %bb.mh
  %i.alv = tail call ptr @__errno_location() #28
  %i.alw = load i32, ptr %i.alv, align 4
  %i.alx = sub i32 0, %i.alw
  %i.aly = sext i32 %i.alx to i64
  br label %.critedge3389

bb.mj:                                            ; preds = %bb.a
  %i.alz = tail call ptr @lock_user_string(i64 noundef %2) #29 ; 2 uses
  %.not3260 = icmp eq ptr %i.alz, null
  br i1 %.not3260, label %.critedge3389, label %bb.mk

bb.mk:                                            ; preds = %bb.mj
  %i.ama = tail call i32 @truncate64(ptr noundef nonnull %i.alz, i64 noundef %3) #29 ; 2 uses
  %i.amb = sext i32 %i.ama to i64
  %i.amc = icmp eq i32 %i.ama, -1
  br i1 %i.amc, label %bb.ml, label %.critedge3389

bb.ml:                                            ; preds = %bb.mk
  %i.amd = tail call ptr @__errno_location() #28
  %i.ame = load i32, ptr %i.amd, align 4
  %i.amf = sub i32 0, %i.ame
  %i.amg = sext i32 %i.amf to i64
  br label %.critedge3389

bb.mm:                                            ; preds = %bb.a
  %i.amh = trunc i64 %2 to i32
  %i.ami = tail call i32 @ftruncate64(i32 noundef %i.amh, i64 noundef %3) #29 ; 2 uses
  %i.amj = sext i32 %i.ami to i64
  %i.amk = icmp eq i32 %i.ami, -1
  br i1 %i.amk, label %bb.mn, label %.critedge3389

bb.mn:                                            ; preds = %bb.mm
  %i.aml = tail call ptr @__errno_location() #28
  %i.amm = load i32, ptr %i.aml, align 4
  %i.amn = sub i32 0, %i.amm
  %i.amo = sext i32 %i.amn to i64
  br label %.critedge3389

bb.mo:                                            ; preds = %bb.a
  %i.amp = trunc i64 %2 to i32
  %i.amq = trunc i64 %3 to i32
  %i.amr = tail call i32 @fchmod(i32 noundef %i.amp, i32 noundef %i.amq) #29 ; 2 uses
  %i.ams = sext i32 %i.amr to i64
  %i.amt = icmp eq i32 %i.amr, -1
  br i1 %i.amt, label %bb.mp, label %.critedge3389

bb.mp:                                            ; preds = %bb.mo
  %i.amu = tail call ptr @__errno_location() #28
  %i.amv = load i32, ptr %i.amu, align 4
  %i.amw = sub i32 0, %i.amv
  %i.amx = sext i32 %i.amw to i64
  br label %.critedge3389

bb.mq:                                            ; preds = %bb.a
  %i.amy = tail call ptr @lock_user_string(i64 noundef %3) #29 ; 2 uses
  %.not3259 = icmp eq ptr %i.amy, null
  br i1 %.not3259, label %.critedge3389, label %bb.mr

bb.mr:                                            ; preds = %bb.mq
  %i.amz = trunc i64 %2 to i32
  %i.ana = trunc i64 %4 to i32
  %i.anb = tail call i32 @fchmodat(i32 noundef %i.amz, ptr noundef nonnull %i.amy, i32 noundef %i.ana, i32 noundef 0) #29 ; 2 uses
  %i.anc = sext i32 %i.anb to i64
  %i.and = icmp eq i32 %i.anb, -1
  br i1 %i.and, label %bb.ms, label %.critedge3389

bb.ms:                                            ; preds = %bb.mr
  %i.ane = tail call ptr @__errno_location() #28
  %i.anf = load i32, ptr %i.ane, align 4
end_hunk_6
begin_hunk_7_@do_syscall1:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %46, i8 0, i64 16, i1 false), !annotation !18
  %i.bun = tail call ptr @lock_user(i32 noundef 1, i64 noundef %2, i64 noundef 16, i1 noundef zeroext true) #29 ; 2 uses
  %.not.i3854 = icmp eq ptr %i.bun, null
  br i1 %.not.i3854, label %target_to_host_timespec.exit3858, label %bb.vu

bb.vu:                                            ; preds = %bb.vt
  %i.buo = load <2 x i64>, ptr %i.bun, align 1
  store <2 x i64> %i.buo, ptr %45, align 16
  %i.bup = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @thread_cpu)
  %i.buq = load ptr, ptr %i.bup, align 8
  %i.bur = getelementptr i8, ptr %i.buq, i64 608
  %.val.i3859 = load ptr, ptr %i.bur, align 16
  %i.bus = getelementptr inbounds nuw i8, ptr %.val.i3859, i64 9148
  %i.but = call i64 (ptr, i64, ...) @safe_syscall_base(ptr noundef nonnull %i.bus, i64 noundef 35, ptr noundef nonnull %45, ptr noundef nonnull %46) #29
  %sext4442 = shl i64 %i.but, 32                  ; 2 uses
  %i.buu = ashr exact i64 %sext4442, 32
  %i.buv = icmp eq i64 %sext4442, -4294967296
  br i1 %i.buv, label %bb.vv, label %get_errno.exit3861

bb.vv:                                            ; preds = %bb.vu
  %i.buw = tail call ptr @__errno_location() #28
  %i.bux = load i32, ptr %i.buw, align 4
  %i.buy = sub i32 0, %i.bux
  %i.buz = sext i32 %i.buy to i64
  br label %get_errno.exit3861

get_errno.exit3861:                               ; preds = %bb.vu, %bb.vv
  %.0.i3860 = phi i64 [ %i.buz, %bb.vv ], [ %i.buu, %bb.vu ] ; 2 uses
  %i.bva = icmp ugt i64 %.0.i3860, -4097
  %i.bvb = icmp ne i64 %3, 0
  %or.cond95 = and i1 %i.bvb, %i.bva
  br i1 %or.cond95, label %bb.vw, label %bb.vx

bb.vw:                                            ; preds = %get_errno.exit3861
  %i.bvc = call ptr @lock_user(i32 noundef 3, i64 noundef %3, i64 noundef 16, i1 noundef zeroext false) #29 ; 3 uses
  %.not.i3862 = icmp eq ptr %i.bvc, null
  br i1 %.not.i3862, label %target_to_host_timespec.exit3858, label %host_to_target_timespec.exit3864.thread

host_to_target_timespec.exit3864.thread:          ; preds = %bb.vw
  %i.bvd = load i64, ptr %46, align 8
  store i64 %i.bvd, ptr %i.bvc, align 1
  %i.bve = getelementptr inbounds nuw i8, ptr %i.bvc, i64 8
  %i.bvf = getelementptr inbounds nuw i8, ptr %46, i64 8
  %i.bvg = load i64, ptr %i.bvf, align 8
  store i64 %i.bvg, ptr %i.bve, align 1
  br label %bb.vx

target_to_host_timespec.exit3858:                 ; preds = %bb.vw, %bb.vt
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #29
  br label %.critedge3389

bb.vx:                                            ; preds = %host_to_target_timespec.exit3864.thread, %get_errno.exit3861
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #29
  br label %.critedge3389

bb.vy:                                            ; preds = %bb.a
  %i.bvh = tail call fastcc i64 @do_prctl(ptr noundef %0, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6)
  br label %.critedge3389

bb.vz:                                            ; preds = %bb.a
  %i.bvi = trunc i64 %2 to i32
  %i.bvj = tail call i64 @do_arch_prctl(ptr noundef %0, i32 noundef %i.bvi, i64 noundef %3)
  br label %.critedge3389

bb.wa:                                            ; preds = %bb.a
  %i.bvk = or i64 %4, %3
  %or.cond97 = icmp eq i64 %i.bvk, 0
  br i1 %or.cond97, label %bb.wc, label %bb.wb

bb.wb:                                            ; preds = %bb.wa
  %i.bvl = tail call ptr @lock_user(i32 noundef 3, i64 noundef %3, i64 noundef %4, i1 noundef zeroext false) #29 ; 2 uses
  %.not3184 = icmp eq ptr %i.bvl, null
  br i1 %.not3184, label %.critedge3389, label %bb.wc

bb.wc:                                            ; preds = %bb.wa, %bb.wb
  %.12635 = phi ptr [ %i.bvl, %bb.wb ], [ null, %bb.wa ]
  %i.bvm = trunc i64 %2 to i32
  %i.bvn = tail call i64 @pread64(i32 noundef %i.bvm, ptr noundef %.12635, i64 noundef %4, i64 noundef %5) #29 ; 2 uses
  %i.bvo = icmp eq i64 %i.bvn, -1
  br i1 %i.bvo, label %bb.wd, label %.critedge3389

bb.wd:                                            ; preds = %bb.wc
  %i.bvp = tail call ptr @__errno_location() #28
  %i.bvq = load i32, ptr %i.bvp, align 4
  %i.bvr = sub i32 0, %i.bvq
  %i.bvs = sext i32 %i.bvr to i64
  br label %.critedge3389

bb.we:                                            ; preds = %bb.a
  %i.bvt = or i64 %4, %3
  %or.cond99 = icmp eq i64 %i.bvt, 0
  br i1 %or.cond99, label %bb.wg, label %bb.wf

bb.wf:                                            ; preds = %bb.we
  %i.bvu = tail call ptr @lock_user(i32 noundef 1, i64 noundef %3, i64 noundef %4, i1 noundef zeroext true) #29 ; 2 uses
  %.not3183 = icmp eq ptr %i.bvu, null
  br i1 %.not3183, label %.critedge3389, label %bb.wg

bb.wg:                                            ; preds = %bb.we, %bb.wf
  %.22636 = phi ptr [ %i.bvu, %bb.wf ], [ null, %bb.we ]
  %i.bvv = trunc i64 %2 to i32
  %i.bvw = tail call i64 @pwrite64(i32 noundef %i.bvv, ptr noundef %.22636, i64 noundef %4, i64 noundef %5) #29 ; 2 uses
  %i.bvx = icmp eq i64 %i.bvw, -1
  br i1 %i.bvx, label %bb.wh, label %.critedge3389

bb.wh:                                            ; preds = %bb.wg
  %i.bvy = tail call ptr @__errno_location() #28
  %i.bvz = load i32, ptr %i.bvy, align 4
  %i.bwa = sub i32 0, %i.bvz
  %i.bwb = sext i32 %i.bwa to i64
  br label %.critedge3389

bb.wi:                                            ; preds = %bb.a
  %i.bwc = tail call ptr @lock_user(i32 noundef 3, i64 noundef %2, i64 noundef %3, i1 noundef zeroext false) #29 ; 2 uses
  %.not3182 = icmp eq ptr %i.bwc, null
  br i1 %.not3182, label %.critedge3389, label %bb.wj

bb.wj:                                            ; preds = %bb.wi
  %i.bwd = tail call i64 (i64, ...) @syscall(i64 noundef 79, ptr noundef nonnull %i.bwc, i64 noundef %3) #29
  %sext4441 = shl i64 %i.bwd, 32                  ; 2 uses
  %i.bwe = ashr exact i64 %sext4441, 32
  %i.bwf = icmp eq i64 %sext4441, -4294967296
  br i1 %i.bwf, label %bb.wk, label %.critedge3389

bb.wk:                                            ; preds = %bb.wj
  %i.bwg = tail call ptr @__errno_location() #28
  %i.bwh = load i32, ptr %i.bwg, align 4
  %i.bwi = sub i32 0, %i.bwh
  %i.bwj = sext i32 %i.bwi to i64
  br label %.critedge3389

bb.wl:                                            ; preds = %bb.a, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %48, i8 0, i64 24, i1 false), !annotation !18
  %i.bwk = tail call ptr @lock_user(i32 noundef 3, i64 noundef %2, i64 noundef 8, i1 noundef zeroext true) #29 ; 6 uses
  %.not3178 = icmp eq ptr %i.bwk, null
  br i1 %.not3178, label %.loopexit, label %bb.wm

bb.wm:                                            ; preds = %bb.wl
  %i.bwl = load <2 x i32>, ptr %i.bwk, align 4
  %i.bwm = load i32, ptr %i.bwk, align 4
  store <2 x i32> %i.bwl, ptr %47, align 8
  %.not3179 = icmp ne i32 %i.bwm, 429392688       ; 4 uses
  %spec.select3417 = select i1 %.not3179, i32 2, i32 1 ; 4 uses
  %.not3180 = icmp eq i64 %3, 0                   ; 3 uses
  %i.bwn = icmp eq i32 %1, 125                    ; 2 uses
  br i1 %.not3180, label %.loopexit4476, label %bb.wn

bb.wn:                                            ; preds = %bb.wm
  %i.bwo = zext i1 %.not3179 to i32
  %narrow = shl nuw nsw i32 12, %i.bwo
  %i.bwp = zext nneg i32 %narrow to i64           ; 2 uses
  br i1 %i.bwn, label %.thread4291, label %bb.wo

bb.wo:                                            ; preds = %bb.wn
  %i.bwq = tail call ptr @lock_user(i32 noundef 1, i64 noundef %3, i64 noundef %i.bwp, i1 noundef zeroext true) #29 ; 4 uses
  %.not3181 = icmp eq ptr %i.bwq, null
  br i1 %.not3181, label %.loopexit, label %.preheader4475.preheader

.preheader4475.preheader:                         ; preds = %bb.wo
  %wide.trip.count4502 = zext nneg i32 %spec.select3417 to i64 ; 2 uses
  %xtraiter25 = and i64 %wide.trip.count4502, 1
  br i1 %.not3179, label %.preheader4475.preheader.new, label %.preheader4475.epil.preheader

.preheader4475.preheader.new:                     ; preds = %.preheader4475.preheader
  %unroll_iter = and i64 %wide.trip.count4502, 2
  br label %.preheader4475

.thread4291:                                      ; preds = %bb.wn
  %i.bwr = tail call ptr @lock_user(i32 noundef 3, i64 noundef %3, i64 noundef %i.bwp, i1 noundef zeroext false) #29 ; 2 uses
  %.not31814293 = icmp eq ptr %i.bwr, null
  br i1 %.not31814293, label %.loopexit, label %.thread4298

.preheader4475:                                   ; preds = %.preheader4475, %.preheader4475.preheader.new
  %indvars.iv4499 = phi i64 [ 0, %.preheader4475.preheader.new ], [ %indvars.iv.next4500.1, %.preheader4475 ] ; 4 uses
  %niter = phi i64 [ 0, %.preheader4475.preheader.new ], [ %niter.next.1, %.preheader4475 ]
  %i.bws = getelementptr inbounds nuw [12 x i8], ptr %i.bwq, i64 %indvars.iv4499 ; 2 uses
  %i.bwt = getelementptr inbounds nuw [12 x i8], ptr %48, i64 %indvars.iv4499 ; 2 uses
  %i.bwu = load <2 x i32>, ptr %i.bws, align 4
  store <2 x i32> %i.bwu, ptr %i.bwt, align 8
  %i.bwv = getelementptr inbounds nuw i8, ptr %i.bws, i64 8
  %i.bww = load i32, ptr %i.bwv, align 4
  %i.bwx = getelementptr inbounds nuw i8, ptr %i.bwt, i64 8
  store i32 %i.bww, ptr %i.bwx, align 8
  %indvars.iv.next4500 = or disjoint i64 %indvars.iv4499, 1 ; 2 uses
  %i.bwy = getelementptr inbounds nuw [12 x i8], ptr %i.bwq, i64 %indvars.iv.next4500 ; 2 uses
  %i.bwz = getelementptr inbounds nuw [12 x i8], ptr %48, i64 %indvars.iv.next4500 ; 2 uses
  %i.bxa = load <2 x i32>, ptr %i.bwy, align 4
  store <2 x i32> %i.bxa, ptr %i.bwz, align 4
  %i.bxb = getelementptr inbounds nuw i8, ptr %i.bwy, i64 8
  %i.bxc = load i32, ptr %i.bxb, align 4
  %i.bxd = getelementptr inbounds nuw i8, ptr %i.bwz, i64 8
  store i32 %i.bxc, ptr %i.bxd, align 4
  %indvars.iv.next4500.1 = add nuw nsw i64 %indvars.iv4499, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit4476.thread.loopexit.unr-lcssa, label %.preheader4475, !llvm.loop !39

.loopexit4476:                                    ; preds = %bb.wm
  br i1 %i.bwn, label %.thread4298, label %.loopexit4476.thread

.thread4298:                                      ; preds = %.thread4291, %.loopexit4476
  %.027264303 = phi ptr [ null, %.loopexit4476 ], [ %48, %.thread4291 ]
  %.127284302 = phi ptr [ null, %.loopexit4476 ], [ %i.bwr, %.thread4291 ] ; 3 uses
  %i.bxe = call i64 (i64, ...) @syscall(i64 noundef 125, ptr noundef nonnull %47, ptr noundef %.027264303) #29
  %sext4440 = shl i64 %i.bxe, 32                  ; 2 uses
  %i.bxf = icmp eq i64 %sext4440, -4294967296
  br i1 %i.bxf, label %.split, label %get_errno.exit3872

.split:                                           ; preds = %.thread4298
  %i.bxg = tail call ptr @__errno_location() #28
  %i.bxh = load i32, ptr %i.bxg, align 4
  %i.bxi = sub i32 0, %i.bxh
  %i.bxj = sext i32 %i.bxi to i64                 ; 2 uses
  %i.bxk = load i32, ptr %47, align 8
  store i32 %i.bxk, ptr %i.bwk, align 4
  br i1 %.not3180, label %.loopexit, label %.preheader.preheader

.loopexit4476.thread.loopexit.unr-lcssa:          ; preds = %.preheader4475
  %lcmp.mod26.not = icmp eq i64 %xtraiter25, 0
  br i1 %lcmp.mod26.not, label %.loopexit4476.thread, label %.preheader4475.epil.preheader

.preheader4475.epil.preheader:                    ; preds = %.loopexit4476.thread.loopexit.unr-lcssa, %.preheader4475.preheader
  %indvars.iv4499.epil.init = phi i64 [ 0, %.preheader4475.preheader ], [ %indvars.iv.next4500.1, %.loopexit4476.thread.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod27 = trunc i32 %spec.select3417 to i1
  tail call void @llvm.assume(i1 %lcmp.mod27)
  %i.bxl = getelementptr inbounds nuw [12 x i8], ptr %i.bwq, i64 %indvars.iv4499.epil.init ; 2 uses
  %i.bxm = getelementptr inbounds nuw [12 x i8], ptr %48, i64 %indvars.iv4499.epil.init ; 2 uses
  %i.bxn = load <2 x i32>, ptr %i.bxl, align 4
  store <2 x i32> %i.bxn, ptr %i.bxm, align 4
  %i.bxo = getelementptr inbounds nuw i8, ptr %i.bxl, i64 8
  %i.bxp = load i32, ptr %i.bxo, align 4
  %i.bxq = getelementptr inbounds nuw i8, ptr %i.bxm, i64 8
  store i32 %i.bxp, ptr %i.bxq, align 4
  br label %.loopexit4476.thread

.loopexit4476.thread:                             ; preds = %.preheader4475.epil.preheader, %.loopexit4476.thread.loopexit.unr-lcssa, %.loopexit4476
  %.027264869 = phi ptr [ null, %.loopexit4476 ], [ %48, %.loopexit4476.thread.loopexit.unr-lcssa ], [ %48, %.preheader4475.epil.preheader ]
  %i.bxr = call i64 (i64, ...) @syscall(i64 noundef 126, ptr noundef nonnull %47, ptr noundef %.027264869) #29
  %sext4439 = shl i64 %i.bxr, 32                  ; 2 uses
  %i.bxs = ashr exact i64 %sext4439, 32
  %i.bxt = icmp eq i64 %sext4439, -4294967296
  br i1 %i.bxt, label %bb.wp, label %get_errno.exit3872.thread

bb.wp:                                            ; preds = %.loopexit4476.thread
  %i.bxu = tail call ptr @__errno_location() #28
  %i.bxv = load i32, ptr %i.bxu, align 4
  %i.bxw = sub i32 0, %i.bxv
  %i.bxx = sext i32 %i.bxw to i64
  br label %get_errno.exit3872.thread

get_errno.exit3872.thread:                        ; preds = %.loopexit4476.thread, %bb.wp
  %.532602.ph = phi i64 [ %i.bxx, %bb.wp ], [ %i.bxs, %.loopexit4476.thread ]
  %i.bxy = load i32, ptr %47, align 8
  store i32 %i.bxy, ptr %i.bwk, align 4
  br label %.loopexit

get_errno.exit3872:                               ; preds = %.thread4298
  %i.bxz = ashr exact i64 %sext4440, 32           ; 2 uses
  %i.bya = load i32, ptr %47, align 8
  store i32 %i.bya, ptr %i.bwk, align 4
  br i1 %.not3180, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.split, %get_errno.exit3872
  %.5326024874 = phi i64 [ %i.bxj, %.split ], [ %i.bxz, %get_errno.exit3872 ] ; 2 uses
  %wide.trip.count4507 = zext nneg i32 %spec.select3417 to i64 ; 2 uses
  %xtraiter28 = and i64 %wide.trip.count4507, 1
  br i1 %.not3179, label %.preheader.preheader.new, label %.preheader.epil.preheader

.preheader.preheader.new:                         ; preds = %.preheader.preheader
  %unroll_iter31 = and i64 %wide.trip.count4507, 2
  br label %.preheader

.preheader:                                       ; preds = %.preheader, %.preheader.preheader.new
  %indvars.iv4504 = phi i64 [ 0, %.preheader.preheader.new ], [ %indvars.iv.next4505.1, %.preheader ] ; 4 uses
  %niter32 = phi i64 [ 0, %.preheader.preheader.new ], [ %niter32.next.1, %.preheader ]
  %i.byb = getelementptr inbounds nuw [12 x i8], ptr %48, i64 %indvars.iv4504 ; 3 uses
  %i.byc = load i32, ptr %i.byb, align 8
  %i.byd = getelementptr inbounds nuw [12 x i8], ptr %.127284302, i64 %indvars.iv4504 ; 3 uses
  store i32 %i.byc, ptr %i.byd, align 4
  %i.bye = getelementptr inbounds nuw i8, ptr %i.byb, i64 4
  %i.byf = load i32, ptr %i.bye, align 4
  %i.byg = getelementptr inbounds nuw i8, ptr %i.byd, i64 4
  store i32 %i.byf, ptr %i.byg, align 4
  %i.byh = getelementptr inbounds nuw i8, ptr %i.byb, i64 8
  %i.byi = load i32, ptr %i.byh, align 8
  %i.byj = getelementptr inbounds nuw i8, ptr %i.byd, i64 8
  store i32 %i.byi, ptr %i.byj, align 4
  %indvars.iv.next4505 = or disjoint i64 %indvars.iv4504, 1 ; 2 uses
  %i.byk = getelementptr inbounds nuw [12 x i8], ptr %48, i64 %indvars.iv.next4505 ; 3 uses
  %i.byl = load i32, ptr %i.byk, align 4
  %i.bym = getelementptr inbounds nuw [12 x i8], ptr %.127284302, i64 %indvars.iv.next4505 ; 3 uses
  store i32 %i.byl, ptr %i.bym, align 4
  %i.byn = getelementptr inbounds nuw i8, ptr %i.byk, i64 4
  %i.byo = load i32, ptr %i.byn, align 8
  %i.byp = getelementptr inbounds nuw i8, ptr %i.bym, i64 4
  store i32 %i.byo, ptr %i.byp, align 4
  %i.byq = getelementptr inbounds nuw i8, ptr %i.byk, i64 8
  %i.byr = load i32, ptr %i.byq, align 4
  %i.bys = getelementptr inbounds nuw i8, ptr %i.bym, i64 8
  store i32 %i.byr, ptr %i.bys, align 4
  %indvars.iv.next4505.1 = add nuw nsw i64 %indvars.iv4504, 2 ; 2 uses
  %niter32.next.1 = add i64 %niter32, 2           ; 2 uses
  %niter32.ncmp.1 = icmp eq i64 %niter32.next.1, %unroll_iter31
  br i1 %niter32.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.preheader, !llvm.loop !40

.loopexit.loopexit.unr-lcssa:                     ; preds = %.preheader
  %lcmp.mod29.not = icmp eq i64 %xtraiter28, 0
  br i1 %lcmp.mod29.not, label %.loopexit, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %.loopexit.loopexit.unr-lcssa, %.preheader.preheader
  %indvars.iv4504.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next4505.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod30 = trunc i32 %spec.select3417 to i1
  call void @llvm.assume(i1 %lcmp.mod30)
  %i.byt = getelementptr inbounds nuw [12 x i8], ptr %48, i64 %indvars.iv4504.epil.init ; 3 uses
  %i.byu = load i32, ptr %i.byt, align 4
  %i.byv = getelementptr inbounds nuw [12 x i8], ptr %.127284302, i64 %indvars.iv4504.epil.init ; 3 uses
  store i32 %i.byu, ptr %i.byv, align 4
  %i.byw = getelementptr inbounds nuw i8, ptr %i.byt, i64 4
  %i.byx = load i32, ptr %i.byw, align 4
  %i.byy = getelementptr inbounds nuw i8, ptr %i.byv, i64 4
  store i32 %i.byx, ptr %i.byy, align 4
  %i.byz = getelementptr inbounds nuw i8, ptr %i.byt, i64 8
  %i.bza = load i32, ptr %i.byz, align 4
  %i.bzb = getelementptr inbounds nuw i8, ptr %i.byv, i64 8
  store i32 %i.bza, ptr %i.bzb, align 4
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.split, %get_errno.exit3872.thread, %get_errno.exit3872, %.thread4291, %bb.wo, %bb.wl
  %.45 = phi i64 [ -14, %bb.wl ], [ %i.bxz, %get_errno.exit3872 ], [ -14, %.thread4291 ], [ -14, %bb.wo ], [ %i.bxj, %.split ], [ %.532602.ph, %get_errno.exit3872.thread ], [ %.5326024874, %.loopexit.loopexit.unr-lcssa ], [ %.5326024874, %.preheader.epil.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #29
  br label %.critedge3389

bb.wq:                                            ; preds = %bb.a
  %i.bzc = tail call i64 @do_sigaltstack(i64 noundef %2, i64 noundef %3, ptr noundef %0) #29
  br label %.critedge3389

bb.wr:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #29
  store i64 0, ptr %i.f, align 8, !annotation !18
  %i.bzd = icmp ne i64 %4, 0                      ; 2 uses
  br i1 %i.bzd, label %bb.ws, label %bb.wt

bb.ws:                                            ; preds = %bb.wr
  %i.bze = tail call ptr @lock_user(i32 noundef 1, i64 noundef %4, i64 noundef 8, i1 noundef zeroext true) #29 ; 2 uses
  %.not3174 = icmp eq ptr %i.bze, null
  br i1 %.not3174, label %.split2753, label %.thread4304

.thread4304:                                      ; preds = %bb.ws
  %.val3477 = load i64, ptr %i.bze, align 1
  store i64 %.val3477, ptr %i.f, align 8
  br label %bb.wt

bb.wt:                                            ; preds = %.thread4304, %bb.wr
  %.02722 = phi ptr [ null, %bb.wr ], [ %i.f, %.thread4304 ]
  %i.bzf = trunc i64 %2 to i32
  %i.bzg = trunc i64 %3 to i32
  %i.bzh = call i64 @sendfile64(i32 noundef %i.bzf, i32 noundef %i.bzg, ptr noundef %.02722, i64 noundef %5) #29 ; 2 uses
  %i.bzi = icmp eq i64 %i.bzh, -1
  br i1 %i.bzi, label %bb.wu, label %get_errno.exit3876

bb.wu:                                            ; preds = %bb.wt
  %i.bzj = tail call ptr @__errno_location() #28
  %i.bzk = load i32, ptr %i.bzj, align 4
  %i.bzl = sub i32 0, %i.bzk
  %i.bzm = sext i32 %i.bzl to i64
  br label %get_errno.exit3876

get_errno.exit3876:                               ; preds = %bb.wt, %bb.wu
  %.0.i3875 = phi i64 [ %i.bzm, %bb.wu ], [ %i.bzh, %bb.wt ] ; 3 uses
  %i.bzn = icmp ult i64 %.0.i3875, -4096
  %or.cond101 = and i1 %i.bzd, %i.bzn
  br i1 %or.cond101, label %bb.wv, label %.split2753

bb.wv:                                            ; preds = %get_errno.exit3876
  %i.bzo = call ptr @lock_user(i32 noundef 3, i64 noundef %4, i64 noundef 8, i1 noundef zeroext false) #29 ; 2 uses
  %.not3176 = icmp eq ptr %i.bzo, null
  br i1 %.not3176, label %.split2753, label %bb.ww

bb.ww:                                            ; preds = %bb.wv
  %i.bzp = load i64, ptr %i.f, align 8
  store i64 %i.bzp, ptr %i.bzo, align 1
  br label %.split2753

.split2753:                                       ; preds = %bb.ws, %bb.ww, %bb.wv, %get_errno.exit3876
  %.46 = phi i64 [ -14, %bb.wv ], [ %.0.i3875, %get_errno.exit3876 ], [ %.0.i3875, %bb.ww ], [ -14, %bb.ws ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #29
  br label %.critedge3389

bb.wx:                                            ; preds = %bb.a
  %i.bzq = tail call fastcc i32 @do_fork(ptr noundef %0, i32 noundef 16657, i64 noundef 0, i64 noundef 0, i64 noundef 0, i64 noundef 0) ; 2 uses
  %i.bzr = sext i32 %i.bzq to i64
  %i.bzs = icmp eq i32 %i.bzq, -1
  br i1 %i.bzs, label %bb.wy, label %.critedge3389

bb.wy:                                            ; preds = %bb.wx
  %i.bzt = tail call ptr @__errno_location() #28
  %i.bzu = load i32, ptr %i.bzt, align 4
  %i.bzv = sub i32 0, %i.bzu
  %i.bzw = sext i32 %i.bzv to i64
  br label %.critedge3389

bb.wz:                                            ; preds = %bb.a
  %i.bzx = tail call ptr @lock_user_string(i64 noundef %3) #29 ; 2 uses
  %.not3172 = icmp eq ptr %i.bzx, null
  br i1 %.not3172, label %.critedge3389, label %bb.xa

bb.xa:                                            ; preds = %bb.wz
  %i.bzy = trunc i64 %2 to i32
  %i.bzz = tail call ptr @path(ptr noundef nonnull %i.bzx) #29
  %i.caa = trunc i64 %5 to i32
  %i.cab = call i32 @fstatat64(i32 noundef %i.bzy, ptr noundef %i.bzz, ptr noundef nonnull %8, i32 noundef %i.caa) #29 ; 2 uses
  %i.cac = icmp eq i32 %i.cab, -1
  br i1 %i.cac, label %bb.xb, label %get_errno.exit3880

bb.xb:                                            ; preds = %bb.xa
  %i.cad = tail call ptr @__errno_location() #28
  %i.cae = load i32, ptr %i.cad, align 4
  %i.caf = sub i32 0, %i.cae
  br label %get_errno.exit3880

get_errno.exit3880:                               ; preds = %bb.xa, %bb.xb
  %.0.i3879.in = phi i32 [ %i.caf, %bb.xb ], [ %i.cab, %bb.xa ] ; 2 uses
  %.0.i3879 = sext i32 %.0.i3879.in to i64
  %i.cag = icmp ult i32 %.0.i3879.in, -4096
  br i1 %i.cag, label %bb.xc, label %.critedge3389

bb.xc:                                            ; preds = %get_errno.exit3880
  %i.cah = call fastcc i64 @host_to_target_stat64(i64 noundef %4, ptr noundef %8)
  br label %.critedge3389

bb.xd:                                            ; preds = %bb.a
  %i.cai = trunc i64 %2 to i32                    ; 2 uses
  %i.caj = trunc i64 %4 to i32                    ; 2 uses
  %.not3166 = icmp eq i64 %3, 0
  br i1 %.not3166, label %bb.xf, label %bb.xe

bb.xe:                                            ; preds = %bb.xd
  %i.cak = tail call ptr @lock_user_string(i64 noundef %3) #29 ; 2 uses
  %i.cal = icmp eq ptr %i.cak, null
  br i1 %i.cal, label %.critedge3389, label %bb.xf

bb.xf:                                            ; preds = %bb.xe, %bb.xd
  %.32637 = phi ptr [ %i.cak, %bb.xe ], [ null, %bb.xd ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %49, i8 0, i64 256, i1 false), !annotation !18
  %i.cam = trunc i64 %5 to i32
  %i.can = call i64 (i64, ...) @syscall(i64 noundef 332, i32 noundef %i.cai, ptr noundef %.32637, i32 noundef %i.caj, i32 noundef %i.cam, ptr noundef nonnull %49) #29
  %sext4438 = shl i64 %i.can, 32                  ; 2 uses
  %i.cao = ashr exact i64 %sext4438, 32
  %i.cap = icmp eq i64 %sext4438, -4294967296
  br i1 %i.cap, label %bb.xg, label %get_errno.exit3882

bb.xg:                                            ; preds = %bb.xf
  %i.caq = tail call ptr @__errno_location() #28
  %i.car = load i32, ptr %i.caq, align 4
  %i.cas = sub i32 0, %i.car
  %i.cat = sext i32 %i.cas to i64
  br label %get_errno.exit3882

get_errno.exit3882:                               ; preds = %bb.xf, %bb.xg
  %.0.i3881 = phi i64 [ %i.cat, %bb.xg ], [ %i.cao, %bb.xf ] ; 3 uses
  %i.cau = icmp ult i64 %.0.i3881, -4096
  br i1 %i.cau, label %bb.xh, label %bb.xi

bb.xh:                                            ; preds = %get_errno.exit3882
  %i.cav = call fastcc i64 @host_to_target_statx(ptr noundef %49, i64 noundef %6)
  %.not3168 = icmp eq i64 %i.cav, 0
  br i1 %.not3168, label %bb.xi, label %.thread4312

bb.xi:                                            ; preds = %bb.xh, %get_errno.exit3882
  %.not3169 = icmp eq i64 %.0.i3881, -38
  br i1 %.not3169, label %bb.xj, label %.thread4312

.thread4312:                                      ; preds = %bb.xh, %bb.xi
  %.47.ph = phi i64 [ -14, %bb.xh ], [ %.0.i3881, %bb.xi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #29
  br label %.critedge3389

bb.xj:                                            ; preds = %bb.xi
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #29
  %i.caw = call ptr @path(ptr noundef %.32637) #29
  %i.cax = call i32 @fstatat64(i32 noundef %i.cai, ptr noundef %i.caw, ptr noundef nonnull %8, i32 noundef %i.caj) #29 ; 2 uses
  %i.cay = icmp eq i32 %i.cax, -1
  br i1 %i.cay, label %bb.xk, label %get_errno.exit3884

bb.xk:                                            ; preds = %bb.xj
  %i.caz = tail call ptr @__errno_location() #28
  %i.cba = load i32, ptr %i.caz, align 4
  %i.cbb = sub i32 0, %i.cba
  br label %get_errno.exit3884

get_errno.exit3884:                               ; preds = %bb.xj, %bb.xk
  %.0.i3883.in = phi i32 [ %i.cbb, %bb.xk ], [ %i.cax, %bb.xj ] ; 2 uses
  %.0.i3883 = sext i32 %.0.i3883.in to i64        ; 2 uses
  %i.cbc = icmp ult i32 %.0.i3883.in, -4096
  br i1 %i.cbc, label %bb.xl, label %.critedge3389

bb.xl:                                            ; preds = %get_errno.exit3884
  %i.cbd = call ptr @lock_user(i32 noundef 3, i64 noundef %6, i64 noundef 256, i1 noundef zeroext false) #29 ; 17 uses
  %.not3171 = icmp eq ptr %i.cbd, null
  br i1 %.not3171, label %.critedge3389, label %bb.xm

bb.xm:                                            ; preds = %bb.xl
end_hunk_7
begin_hunk_8_@do_syscall1:bb.a
  %i.cda = load i64, ptr %i.ccz, align 8
  store i64 %i.cda, ptr %i.ccy, align 1
  %i.cdb = getelementptr inbounds nuw i8, ptr %i.cbd, i64 4
  %i.cdc = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.cdd = load i64, ptr %i.cdc, align 8
  %i.cde = trunc i64 %i.cdd to i32
  store i32 %i.cde, ptr %i.cdb, align 1
  %i.cdf = getelementptr inbounds nuw i8, ptr %i.cbd, i64 48
  %i.cdg = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.cdh = load i64, ptr %i.cdg, align 8
  store i64 %i.cdh, ptr %i.cdf, align 1
  %i.cdi = getelementptr inbounds nuw i8, ptr %i.cbd, i64 64
  %i.cdj = getelementptr inbounds nuw i8, ptr %8, i64 72
  %i.cdk = load i64, ptr %i.cdj, align 8
  store i64 %i.cdk, ptr %i.cdi, align 1
  %i.cdl = getelementptr inbounds nuw i8, ptr %i.cbd, i64 112
  %i.cdm = getelementptr inbounds nuw i8, ptr %8, i64 88
  %i.cdn = load i64, ptr %i.cdm, align 8
  store i64 %i.cdn, ptr %i.cdl, align 1
  %i.cdo = getelementptr inbounds nuw i8, ptr %i.cbd, i64 96
  %i.cdp = getelementptr inbounds nuw i8, ptr %8, i64 104
  %i.cdq = load i64, ptr %i.cdp, align 8
  store i64 %i.cdq, ptr %i.cdo, align 1
  br label %.critedge3389

bb.xn:                                            ; preds = %bb.a
  %i.cdr = tail call ptr @lock_user_string(i64 noundef %2) #29 ; 2 uses
  %.not3165 = icmp eq ptr %i.cdr, null
  br i1 %.not3165, label %.critedge3389, label %bb.xo

bb.xo:                                            ; preds = %bb.xn
  %i.cds = trunc i64 %3 to i32
  %i.cdt = trunc i64 %4 to i32
  %i.cdu = tail call i32 @lchown(ptr noundef nonnull %i.cdr, i32 noundef %i.cds, i32 noundef %i.cdt) #29 ; 2 uses
  %i.cdv = sext i32 %i.cdu to i64
  %i.cdw = icmp eq i32 %i.cdu, -1
  br i1 %i.cdw, label %bb.xp, label %.critedge3389

bb.xp:                                            ; preds = %bb.xo
  %i.cdx = tail call ptr @__errno_location() #28
  %i.cdy = load i32, ptr %i.cdx, align 4
  %i.cdz = sub i32 0, %i.cdy
  %i.cea = sext i32 %i.cdz to i64
  br label %.critedge3389

bb.xq:                                            ; preds = %bb.a
  %i.ceb = tail call i32 @getuid() #29            ; 2 uses
  %i.cec = sext i32 %i.ceb to i64
  %i.ced = icmp eq i32 %i.ceb, -1
  br i1 %i.ced, label %bb.xr, label %.critedge3389

bb.xr:                                            ; preds = %bb.xq
  %i.cee = tail call ptr @__errno_location() #28
  %i.cef = load i32, ptr %i.cee, align 4
  %i.ceg = sub i32 0, %i.cef
  %i.ceh = sext i32 %i.ceg to i64
  br label %.critedge3389

bb.xs:                                            ; preds = %bb.a
  %i.cei = tail call i32 @getgid() #29            ; 2 uses
  %i.cej = sext i32 %i.cei to i64
  %i.cek = icmp eq i32 %i.cei, -1
  br i1 %i.cek, label %bb.xt, label %.critedge3389

bb.xt:                                            ; preds = %bb.xs
  %i.cel = tail call ptr @__errno_location() #28
  %i.cem = load i32, ptr %i.cel, align 4
  %i.cen = sub i32 0, %i.cem
  %i.ceo = sext i32 %i.cen to i64
  br label %.critedge3389

bb.xu:                                            ; preds = %bb.a
  %i.cep = tail call i32 @geteuid() #29           ; 2 uses
  %i.ceq = sext i32 %i.cep to i64
  %i.cer = icmp eq i32 %i.cep, -1
  br i1 %i.cer, label %bb.xv, label %.critedge3389

bb.xv:                                            ; preds = %bb.xu
  %i.ces = tail call ptr @__errno_location() #28
  %i.cet = load i32, ptr %i.ces, align 4
  %i.ceu = sub i32 0, %i.cet
  %i.cev = sext i32 %i.ceu to i64
  br label %.critedge3389

bb.xw:                                            ; preds = %bb.a
  %i.cew = tail call i32 @getegid() #29           ; 2 uses
  %i.cex = sext i32 %i.cew to i64
  %i.cey = icmp eq i32 %i.cew, -1
  br i1 %i.cey, label %bb.xx, label %.critedge3389

bb.xx:                                            ; preds = %bb.xw
  %i.cez = tail call ptr @__errno_location() #28
  %i.cfa = load i32, ptr %i.cez, align 4
  %i.cfb = sub i32 0, %i.cfa
  %i.cfc = sext i32 %i.cfb to i64
  br label %.critedge3389

bb.xy:                                            ; preds = %bb.a
  %i.cfd = trunc i64 %2 to i32
  %i.cfe = trunc i64 %3 to i32
  %i.cff = tail call i64 (i64, ...) @syscall(i64 noundef 113, i32 noundef %i.cfd, i32 noundef %i.cfe) #29
  %sext4437 = shl i64 %i.cff, 32                  ; 2 uses
  %i.cfg = ashr exact i64 %sext4437, 32
  %i.cfh = icmp eq i64 %sext4437, -4294967296
  br i1 %i.cfh, label %bb.xz, label %.critedge3389

bb.xz:                                            ; preds = %bb.xy
  %i.cfi = tail call ptr @__errno_location() #28
  %i.cfj = load i32, ptr %i.cfi, align 4
  %i.cfk = sub i32 0, %i.cfj
  %i.cfl = sext i32 %i.cfk to i64
  br label %.critedge3389

bb.ya:                                            ; preds = %bb.a
  %i.cfm = trunc i64 %2 to i32
  %i.cfn = trunc i64 %3 to i32
  %i.cfo = tail call i64 (i64, ...) @syscall(i64 noundef 114, i32 noundef %i.cfm, i32 noundef %i.cfn) #29
  %sext4436 = shl i64 %i.cfo, 32                  ; 2 uses
  %i.cfp = ashr exact i64 %sext4436, 32
  %i.cfq = icmp eq i64 %sext4436, -4294967296
  br i1 %i.cfq, label %bb.yb, label %.critedge3389

bb.yb:                                            ; preds = %bb.ya
  %i.cfr = tail call ptr @__errno_location() #28
  %i.cfs = load i32, ptr %i.cfr, align 4
  %i.cft = sub i32 0, %i.cfs
  %i.cfu = sext i32 %i.cft to i64
  br label %.critedge3389

bb.yc:                                            ; preds = %bb.a
  %i.cfv = trunc i64 %2 to i32                    ; 3 uses
  %or.cond103 = icmp ugt i32 %i.cfv, 65536
  br i1 %or.cond103, label %.loopexit4478, label %bb.yd

bb.yd:                                            ; preds = %bb.yc
  %i.cfw = icmp ne i32 %i.cfv, 0                  ; 2 uses
  br i1 %i.cfw, label %bb.ye, label %bb.yf

bb.ye:                                            ; preds = %bb.yd
  %i.cfx = and i64 %2, 131071
  %i.cfy = tail call noalias ptr @g_try_malloc_n(i64 noundef %i.cfx, i64 noundef 4) #35 ; 2 uses
  %.not3163 = icmp eq ptr %i.cfy, null
  br i1 %.not3163, label %.loopexit4478, label %bb.yf

bb.yf:                                            ; preds = %bb.ye, %bb.yd
  %.04161 = phi ptr [ %i.cfy, %bb.ye ], [ null, %bb.yd ] ; 14 uses
  %.041613 = ptrtoaddr ptr %.04161 to i64
  %i.cfz = tail call i32 @getgroups(i32 noundef %i.cfv, ptr noundef %.04161) #29 ; 2 uses
  %i.cga = icmp eq i32 %i.cfz, -1
  br i1 %i.cga, label %bb.yg, label %get_errno.exit3900

bb.yg:                                            ; preds = %bb.yf
  %i.cgb = tail call ptr @__errno_location() #28
  %i.cgc = load i32, ptr %i.cgb, align 4
  %i.cgd = sub i32 0, %i.cgc
  br label %get_errno.exit3900

get_errno.exit3900:                               ; preds = %bb.yf, %bb.yg
  %.0.i3899.in = phi i32 [ %i.cgd, %bb.yg ], [ %i.cfz, %bb.yf ] ; 5 uses
  %.0.i3899 = sext i32 %.0.i3899.in to i64        ; 5 uses
  %i.cge = icmp ult i32 %.0.i3899.in, -4096
  %or.cond105 = and i1 %i.cfw, %i.cge
  br i1 %or.cond105, label %bb.yh, label %.loopexit4478

bb.yh:                                            ; preds = %get_errno.exit3900
  %i.cgf = shl i64 %2, 2
  %i.cgg = and i64 %i.cgf, 524284
  %i.cgh = tail call ptr @lock_user(i32 noundef 3, i64 noundef %3, i64 noundef %i.cgg, i1 noundef zeroext false) #29 ; 8 uses
  %i.cgi = ptrtoaddr ptr %i.cgh to i64
  %.not3164 = icmp eq ptr %i.cgh, null
  br i1 %.not3164, label %.loopexit4478, label %.preheader4477

.preheader4477:                                   ; preds = %bb.yh
  %i.cgj = icmp sgt i32 %.0.i3899.in, 0
  br i1 %i.cgj, label %.lr.ph4486.preheader, label %.loopexit4478

.lr.ph4486.preheader:                             ; preds = %.preheader4477
  %wide.trip.count4497 = zext nneg i32 %.0.i3899.in to i64 ; 5 uses
  %min.iters.check6 = icmp ult i32 %.0.i3899.in, 8
  %i.cgk = sub i64 %.041613, %i.cgi
  %diff.check4 = icmp ugt i64 %i.cgk, -32
  %or.cond17 = or i1 %min.iters.check6, %diff.check4
  br i1 %or.cond17, label %.lr.ph4486.preheader20, label %vector.ph7

vector.ph7:                                       ; preds = %.lr.ph4486.preheader
  %n.vec8 = and i64 %wide.trip.count4497, 2147483640 ; 3 uses
  br label %vector.body9

vector.body9:                                     ; preds = %vector.body9, %vector.ph7
  %index10 = phi i64 [ 0, %vector.ph7 ], [ %index.next13, %vector.body9 ] ; 3 uses
  %i.cgl = getelementptr inbounds nuw [4 x i8], ptr %.04161, i64 %index10 ; 2 uses
  %i.cgm = getelementptr inbounds nuw i8, ptr %i.cgl, i64 16
  %wide.load11 = load <4 x i32>, ptr %i.cgl, align 4
  %wide.load12 = load <4 x i32>, ptr %i.cgm, align 4
  %i.cgn = getelementptr inbounds nuw [4 x i8], ptr %i.cgh, i64 %index10 ; 2 uses
  %i.cgo = getelementptr inbounds nuw i8, ptr %i.cgn, i64 16
  store <4 x i32> %wide.load11, ptr %i.cgn, align 4
  store <4 x i32> %wide.load12, ptr %i.cgo, align 4
  %index.next13 = add nuw i64 %index10, 8         ; 2 uses
  %i.cgp = icmp eq i64 %index.next13, %n.vec8
  br i1 %i.cgp, label %middle.block14, label %vector.body9, !llvm.loop !41

middle.block14:                                   ; preds = %vector.body9
  %cmp.n15 = icmp eq i64 %n.vec8, %wide.trip.count4497
  br i1 %cmp.n15, label %.loopexit4478, label %.lr.ph4486.preheader20

.lr.ph4486.preheader20:                           ; preds = %.lr.ph4486.preheader, %middle.block14
  %indvars.iv4494.ph = phi i64 [ 0, %.lr.ph4486.preheader ], [ %n.vec8, %middle.block14 ] ; 3 uses
  %xtraiter22 = and i64 %wide.trip.count4497, 3   ; 2 uses
  %lcmp.mod23.not = icmp eq i64 %xtraiter22, 0
  br i1 %lcmp.mod23.not, label %.lr.ph4486.prol.loopexit, label %.lr.ph4486.prol

.lr.ph4486.prol:                                  ; preds = %.lr.ph4486.preheader20, %.lr.ph4486.prol
  %indvars.iv4494.prol = phi i64 [ %indvars.iv.next4495.prol, %.lr.ph4486.prol ], [ %indvars.iv4494.ph, %.lr.ph4486.preheader20 ] ; 3 uses
  %prol.iter24 = phi i64 [ %prol.iter24.next, %.lr.ph4486.prol ], [ 0, %.lr.ph4486.preheader20 ]
  %i.cgq = getelementptr inbounds nuw [4 x i8], ptr %.04161, i64 %indvars.iv4494.prol
  %i.cgr = load i32, ptr %i.cgq, align 4
  %i.cgs = getelementptr inbounds nuw [4 x i8], ptr %i.cgh, i64 %indvars.iv4494.prol
  store i32 %i.cgr, ptr %i.cgs, align 4
  %indvars.iv.next4495.prol = add nuw nsw i64 %indvars.iv4494.prol, 1 ; 2 uses
  %prol.iter24.next = add i64 %prol.iter24, 1     ; 2 uses
  %prol.iter24.cmp.not = icmp eq i64 %prol.iter24.next, %xtraiter22
  br i1 %prol.iter24.cmp.not, label %.lr.ph4486.prol.loopexit, label %.lr.ph4486.prol, !llvm.loop !42

.lr.ph4486.prol.loopexit:                         ; preds = %.lr.ph4486.prol, %.lr.ph4486.preheader20
  %indvars.iv4494.unr = phi i64 [ %indvars.iv4494.ph, %.lr.ph4486.preheader20 ], [ %indvars.iv.next4495.prol, %.lr.ph4486.prol ]
  %i.cgt = sub nsw i64 %indvars.iv4494.ph, %wide.trip.count4497
  %i.cgu = icmp ugt i64 %i.cgt, -4
  br i1 %i.cgu, label %.loopexit4478, label %.lr.ph4486

.lr.ph4486:                                       ; preds = %.lr.ph4486.prol.loopexit, %.lr.ph4486
  %indvars.iv4494 = phi i64 [ %indvars.iv.next4495.3, %.lr.ph4486 ], [ %indvars.iv4494.unr, %.lr.ph4486.prol.loopexit ] ; 6 uses
  %i.cgv = getelementptr inbounds nuw [4 x i8], ptr %.04161, i64 %indvars.iv4494
  %i.cgw = load i32, ptr %i.cgv, align 4
  %i.cgx = getelementptr inbounds nuw [4 x i8], ptr %i.cgh, i64 %indvars.iv4494
  store i32 %i.cgw, ptr %i.cgx, align 4
  %indvars.iv.next4495 = add nuw nsw i64 %indvars.iv4494, 1 ; 2 uses
  %i.cgy = getelementptr inbounds nuw [4 x i8], ptr %.04161, i64 %indvars.iv.next4495
  %i.cgz = load i32, ptr %i.cgy, align 4
  %i.cha = getelementptr inbounds nuw [4 x i8], ptr %i.cgh, i64 %indvars.iv.next4495
  store i32 %i.cgz, ptr %i.cha, align 4
  %indvars.iv.next4495.1 = add nuw nsw i64 %indvars.iv4494, 2 ; 2 uses
  %i.chb = getelementptr inbounds nuw [4 x i8], ptr %.04161, i64 %indvars.iv.next4495.1
  %i.chc = load i32, ptr %i.chb, align 4
  %i.chd = getelementptr inbounds nuw [4 x i8], ptr %i.cgh, i64 %indvars.iv.next4495.1
  store i32 %i.chc, ptr %i.chd, align 4
  %indvars.iv.next4495.2 = add nuw nsw i64 %indvars.iv4494, 3 ; 2 uses
  %i.che = getelementptr inbounds nuw [4 x i8], ptr %.04161, i64 %indvars.iv.next4495.2
  %i.chf = load i32, ptr %i.che, align 4
  %i.chg = getelementptr inbounds nuw [4 x i8], ptr %i.cgh, i64 %indvars.iv.next4495.2
  store i32 %i.chf, ptr %i.chg, align 4
  %indvars.iv.next4495.3 = add nuw nsw i64 %indvars.iv4494, 4 ; 2 uses
  %exitcond4498.not.3 = icmp eq i64 %indvars.iv.next4495.3, %wide.trip.count4497
  br i1 %exitcond4498.not.3, label %.loopexit4478, label %.lr.ph4486, !llvm.loop !43

.loopexit4478:                                    ; preds = %.lr.ph4486.prol.loopexit, %.lr.ph4486, %middle.block14, %.preheader4477, %get_errno.exit3900, %bb.yh, %bb.ye, %bb.yc
  %.14162 = phi ptr [ null, %bb.yc ], [ null, %bb.ye ], [ %.04161, %bb.yh ], [ %.04161, %get_errno.exit3900 ], [ %.04161, %.preheader4477 ], [ %.04161, %middle.block14 ], [ %.04161, %.lr.ph4486 ], [ %.04161, %.lr.ph4486.prol.loopexit ]
  %.49 = phi i64 [ -22, %bb.yc ], [ -12, %bb.ye ], [ -14, %bb.yh ], [ %.0.i3899, %get_errno.exit3900 ], [ %.0.i3899, %.preheader4477 ], [ %.0.i3899, %middle.block14 ], [ %.0.i3899, %.lr.ph4486 ], [ %.0.i3899, %.lr.ph4486.prol.loopexit ]
  tail call void @g_free(ptr noundef %.14162) #29
  br label %.critedge3389

bb.yi:                                            ; preds = %bb.a
  %i.chh = trunc i64 %2 to i32                    ; 3 uses
  %or.cond107 = icmp ugt i32 %i.chh, 65536
  br i1 %or.cond107, label %get_errno.exit3902, label %bb.yj

bb.yj:                                            ; preds = %bb.yi
  %.not3160 = icmp eq i32 %i.chh, 0
  br i1 %.not3160, label %.loopexit4480, label %bb.yk

bb.yk:                                            ; preds = %bb.yj
  %i.chi = and i64 %2, 131071                     ; 2 uses
  %i.chj = tail call noalias ptr @g_try_malloc_n(i64 noundef %i.chi, i64 noundef 4) #35 ; 12 uses
  %i.chk = ptrtoaddr ptr %i.chj to i64
  %.not3161 = icmp eq ptr %i.chj, null
  br i1 %.not3161, label %get_errno.exit3902, label %bb.yl

bb.yl:                                            ; preds = %bb.yk
  %i.chl = shl nuw nsw i64 %i.chi, 2
  %i.chm = tail call ptr @lock_user(i32 noundef 1, i64 noundef %3, i64 noundef %i.chl, i1 noundef zeroext true) #29 ; 8 uses
  %.not3162 = icmp eq ptr %i.chm, null
  br i1 %.not3162, label %get_errno.exit3902, label %.lr.ph4484.preheader

.lr.ph4484.preheader:                             ; preds = %bb.yl
  %i.chn = ptrtoaddr ptr %i.chm to i64
  %wide.trip.count = and i64 %2, 131071           ; 4 uses
  %min.iters.check = icmp samesign ult i64 %wide.trip.count, 8
  %i.cho = sub i64 %i.chn, %i.chk
  %diff.check = icmp ugt i64 %i.cho, -32
  %or.cond18 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond18, label %.lr.ph4484.preheader21, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph4484.preheader
  %n.vec = and i64 %2, 131064                     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.chp = getelementptr inbounds nuw [4 x i8], ptr %i.chm, i64 %index ; 2 uses
  %i.chq = getelementptr inbounds nuw i8, ptr %i.chp, i64 16
  %wide.load = load <4 x i32>, ptr %i.chp, align 4
  %wide.load1 = load <4 x i32>, ptr %i.chq, align 4
  %i.chr = getelementptr inbounds nuw [4 x i8], ptr %i.chj, i64 %index ; 2 uses
  %i.chs = getelementptr inbounds nuw i8, ptr %i.chr, i64 16
  store <4 x i32> %wide.load, ptr %i.chr, align 4
  store <4 x i32> %wide.load1, ptr %i.chs, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cht = icmp eq i64 %index.next, %n.vec
  br i1 %i.cht, label %middle.block, label %vector.body, !llvm.loop !44

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %wide.trip.count, %n.vec
  br i1 %cmp.n, label %.loopexit4480, label %.lr.ph4484.preheader21

.lr.ph4484.preheader21:                           ; preds = %.lr.ph4484.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph4484.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %2, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph4484.prol.loopexit, label %.lr.ph4484.prol

.lr.ph4484.prol:                                  ; preds = %.lr.ph4484.preheader21, %.lr.ph4484.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph4484.prol ], [ %indvars.iv.ph, %.lr.ph4484.preheader21 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph4484.prol ], [ 0, %.lr.ph4484.preheader21 ]
  %i.chu = getelementptr inbounds nuw [4 x i8], ptr %i.chm, i64 %indvars.iv.prol
  %i.chv = load i32, ptr %i.chu, align 4
  %i.chw = getelementptr inbounds nuw [4 x i8], ptr %i.chj, i64 %indvars.iv.prol
  store i32 %i.chv, ptr %i.chw, align 4
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph4484.prol.loopexit, label %.lr.ph4484.prol, !llvm.loop !45

.lr.ph4484.prol.loopexit:                         ; preds = %.lr.ph4484.prol, %.lr.ph4484.preheader21
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph4484.preheader21 ], [ %indvars.iv.next.prol, %.lr.ph4484.prol ]
  %i.chx = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.chy = icmp ugt i64 %i.chx, -4
  br i1 %i.chy, label %.loopexit4480, label %.lr.ph4484

.lr.ph4484:                                       ; preds = %.lr.ph4484.prol.loopexit, %.lr.ph4484
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph4484 ], [ %indvars.iv.unr, %.lr.ph4484.prol.loopexit ] ; 6 uses
  %i.chz = getelementptr inbounds nuw [4 x i8], ptr %i.chm, i64 %indvars.iv
  %i.cia = load i32, ptr %i.chz, align 4
  %i.cib = getelementptr inbounds nuw [4 x i8], ptr %i.chj, i64 %indvars.iv
  store i32 %i.cia, ptr %i.cib, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cic = getelementptr inbounds nuw [4 x i8], ptr %i.chm, i64 %indvars.iv.next
  %i.cid = load i32, ptr %i.cic, align 4
  %i.cie = getelementptr inbounds nuw [4 x i8], ptr %i.chj, i64 %indvars.iv.next
  store i32 %i.cid, ptr %i.cie, align 4
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.cif = getelementptr inbounds nuw [4 x i8], ptr %i.chm, i64 %indvars.iv.next.1
  %i.cig = load i32, ptr %i.cif, align 4
  %i.cih = getelementptr inbounds nuw [4 x i8], ptr %i.chj, i64 %indvars.iv.next.1
  store i32 %i.cig, ptr %i.cih, align 4
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.cii = getelementptr inbounds nuw [4 x i8], ptr %i.chm, i64 %indvars.iv.next.2
  %i.cij = load i32, ptr %i.cii, align 4
  %i.cik = getelementptr inbounds nuw [4 x i8], ptr %i.chj, i64 %indvars.iv.next.2
  store i32 %i.cij, ptr %i.cik, align 4
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.loopexit4480, label %.lr.ph4484, !llvm.loop !46

.loopexit4480:                                    ; preds = %.lr.ph4484.prol.loopexit, %.lr.ph4484, %middle.block, %bb.yj
  %.04160 = phi ptr [ null, %bb.yj ], [ %i.chj, %middle.block ], [ %i.chj, %.lr.ph4484 ], [ %i.chj, %.lr.ph4484.prol.loopexit ] ; 3 uses
  %i.cil = tail call i64 (i64, ...) @syscall(i64 noundef 116, i32 noundef range(i32 0, 65537) %i.chh, ptr noundef %.04160) #29
  %sext4435 = shl i64 %i.cil, 32                  ; 2 uses
  %i.cim = ashr exact i64 %sext4435, 32
  %i.cin = icmp eq i64 %sext4435, -4294967296
  br i1 %i.cin, label %bb.ym, label %get_errno.exit3902

bb.ym:                                            ; preds = %.loopexit4480
  %i.cio = tail call ptr @__errno_location() #28
  %i.cip = load i32, ptr %i.cio, align 4
  %i.ciq = sub i32 0, %i.cip
  %i.cir = sext i32 %i.ciq to i64
  br label %get_errno.exit3902

get_errno.exit3902:                               ; preds = %bb.ym, %.loopexit4480, %bb.yl, %bb.yk, %bb.yi
  %.1 = phi ptr [ null, %bb.yi ], [ %i.chj, %bb.yl ], [ null, %bb.yk ], [ %.04160, %.loopexit4480 ], [ %.04160, %bb.ym ]
  %.50 = phi i64 [ -22, %bb.yi ], [ -14, %bb.yl ], [ -12, %bb.yk ], [ %i.cim, %.loopexit4480 ], [ %i.cir, %bb.ym ]
  tail call void @g_free(ptr noundef %.1) #29
  br label %.critedge3389

bb.yn:                                            ; preds = %bb.a
  %i.cis = trunc i64 %2 to i32
  %i.cit = trunc i64 %3 to i32
  %i.ciu = trunc i64 %4 to i32
  %i.civ = tail call i32 @fchown(i32 noundef %i.cis, i32 noundef %i.cit, i32 noundef %i.ciu) #29 ; 2 uses
  %i.ciw = sext i32 %i.civ to i64
  %i.cix = icmp eq i32 %i.civ, -1
  br i1 %i.cix, label %bb.yo, label %.critedge3389

bb.yo:                                            ; preds = %bb.yn
  %i.ciy = tail call ptr @__errno_location() #28
  %i.ciz = load i32, ptr %i.ciy, align 4
  %i.cja = sub i32 0, %i.ciz
  %i.cjb = sext i32 %i.cja to i64
  br label %.critedge3389

bb.yp:                                            ; preds = %bb.a
  %i.cjc = tail call ptr @lock_user_string(i64 noundef %3) #29 ; 2 uses
  %.not3159 = icmp eq ptr %i.cjc, null
  br i1 %.not3159, label %.critedge3389, label %bb.yq

bb.yq:                                            ; preds = %bb.yp
  %i.cjd = trunc i64 %2 to i32
  %i.cje = trunc i64 %4 to i32
  %i.cjf = trunc i64 %5 to i32
  %i.cjg = trunc i64 %6 to i32
  %i.cjh = tail call i32 @fchownat(i32 noundef %i.cjd, ptr noundef nonnull %i.cjc, i32 noundef %i.cje, i32 noundef %i.cjf, i32 noundef %i.cjg) #29 ; 2 uses
  %i.cji = sext i32 %i.cjh to i64
  %i.cjj = icmp eq i32 %i.cjh, -1
  br i1 %i.cjj, label %bb.yr, label %.critedge3389

bb.yr:                                            ; preds = %bb.yq
  %i.cjk = tail call ptr @__errno_location() #28
  %i.cjl = load i32, ptr %i.cjk, align 4
  %i.cjm = sub i32 0, %i.cjl
  %i.cjn = sext i32 %i.cjm to i64
  br label %.critedge3389

bb.ys:                                            ; preds = %bb.a
  %i.cjo = trunc i64 %2 to i32
  %i.cjp = trunc i64 %3 to i32
  %i.cjq = trunc i64 %4 to i32
  %i.cjr = tail call i64 (i64, ...) @syscall(i64 noundef 117, i32 noundef %i.cjo, i32 noundef %i.cjp, i32 noundef %i.cjq) #29
  %sext4434 = shl i64 %i.cjr, 32                  ; 2 uses
  %i.cjs = ashr exact i64 %sext4434, 32
  %i.cjt = icmp eq i64 %sext4434, -4294967296
  br i1 %i.cjt, label %bb.yt, label %.critedge3389

bb.yt:                                            ; preds = %bb.ys
  %i.cju = tail call ptr @__errno_location() #28
  %i.cjv = load i32, ptr %i.cju, align 4
  %i.cjw = sub i32 0, %i.cjv
  %i.cjx = sext i32 %i.cjw to i64
  br label %.critedge3389

bb.yu:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #29
  store i32 0, ptr %i.g, align 4, !annotation !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #29
  store i32 0, ptr %i.h, align 4, !annotation !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #29
  store i32 0, ptr %i.i, align 4, !annotation !18
  %i.cjy = call i32 @getresuid(ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, ptr noundef nonnull %i.i) #29 ; 2 uses
  %i.cjz = icmp eq i32 %i.cjy, -1
  br i1 %i.cjz, label %bb.yv, label %get_errno.exit3910

bb.yv:                                            ; preds = %bb.yu
  %i.cka = tail call ptr @__errno_location() #28
  %i.ckb = load i32, ptr %i.cka, align 4
  %i.ckc = sub i32 0, %i.ckb
  br label %get_errno.exit3910

get_errno.exit3910:                               ; preds = %bb.yu, %bb.yv
  %.0.i3909.in = phi i32 [ %i.ckc, %bb.yv ], [ %i.cjy, %bb.yu ] ; 2 uses
  %.0.i3909 = sext i32 %.0.i3909.in to i64
  %i.ckd = icmp ult i32 %.0.i3909.in, -4096
  br i1 %i.ckd, label %bb.yw, label %bb.za

bb.yw:                                            ; preds = %get_errno.exit3910
  %i.cke = call ptr @lock_user(i32 noundef 3, i64 noundef %2, i64 noundef 4, i1 noundef zeroext false) #29 ; 2 uses
  %.not3153.not = icmp eq ptr %i.cke, null
  br i1 %.not3153.not, label %.critedge3421.thread, label %bb.yx

bb.yx:                                            ; preds = %bb.yw
  %i.ckf = load i32, ptr %i.g, align 4
  store i32 %i.ckf, ptr %i.cke, align 1
  %i.ckg = call ptr @lock_user(i32 noundef 3, i64 noundef %3, i64 noundef 4, i1 noundef zeroext false) #29 ; 2 uses
  %.not3155.not = icmp eq ptr %i.ckg, null
  br i1 %.not3155.not, label %.critedge3421.thread, label %bb.yy

bb.yy:                                            ; preds = %bb.yx
  %i.ckh = load i32, ptr %i.h, align 4
  store i32 %i.ckh, ptr %i.ckg, align 1
  %i.cki = call ptr @lock_user(i32 noundef 3, i64 noundef %4, i64 noundef 4, i1 noundef zeroext false) #29 ; 2 uses
  %.not3157.not = icmp eq ptr %i.cki, null
  br i1 %.not3157.not, label %.critedge3421.thread, label %bb.yz

bb.yz:                                            ; preds = %bb.yy
  %i.ckj = load i32, ptr %i.i, align 4
  store i32 %i.ckj, ptr %i.cki, align 1
  br label %bb.za

.critedge3421.thread:                             ; preds = %bb.yw, %bb.yy, %bb.yx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #29
  br label %.critedge3389

bb.za:                                            ; preds = %bb.yz, %get_errno.exit3910
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #29
  br label %.critedge3389

bb.zb:                                            ; preds = %bb.a
  %i.ckk = trunc i64 %2 to i32
  %i.ckl = trunc i64 %3 to i32
  %i.ckm = trunc i64 %4 to i32
  %i.ckn = tail call i64 (i64, ...) @syscall(i64 noundef 119, i32 noundef %i.ckk, i32 noundef %i.ckl, i32 noundef %i.ckm) #29
  %sext4433 = shl i64 %i.ckn, 32                  ; 2 uses
  %i.cko = ashr exact i64 %sext4433, 32
  %i.ckp = icmp eq i64 %sext4433, -4294967296
  br i1 %i.ckp, label %bb.zc, label %.critedge3389

bb.zc:                                            ; preds = %bb.zb
  %i.ckq = tail call ptr @__errno_location() #28
  %i.ckr = load i32, ptr %i.ckq, align 4
  %i.cks = sub i32 0, %i.ckr
  %i.ckt = sext i32 %i.cks to i64
  br label %.critedge3389

bb.zd:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #29
  store i32 0, ptr %i.j, align 4, !annotation !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #29
  store i32 0, ptr %i.k, align 4, !annotation !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #29
  store i32 0, ptr %i.l, align 4, !annotation !18
  %i.cku = call i32 @getresgid(ptr noundef nonnull %i.j, ptr noundef nonnull %i.k, ptr noundef nonnull %i.l) #29 ; 2 uses
  %i.ckv = icmp eq i32 %i.cku, -1
  br i1 %i.ckv, label %bb.ze, label %get_errno.exit3914

bb.ze:                                            ; preds = %bb.zd
  %i.ckw = tail call ptr @__errno_location() #28
  %i.ckx = load i32, ptr %i.ckw, align 4
  %i.cky = sub i32 0, %i.ckx
  br label %get_errno.exit3914

get_errno.exit3914:                               ; preds = %bb.zd, %bb.ze
  %.0.i3913.in = phi i32 [ %i.cky, %bb.ze ], [ %i.cku, %bb.zd ] ; 2 uses
  %.0.i3913 = sext i32 %.0.i3913.in to i64
  %i.ckz = icmp ult i32 %.0.i3913.in, -4096
  br i1 %i.ckz, label %bb.zf, label %bb.zj

bb.zf:                                            ; preds = %get_errno.exit3914
  %i.cla = call ptr @lock_user(i32 noundef 3, i64 noundef %2, i64 noundef 4, i1 noundef zeroext false) #29 ; 2 uses
  %.not3146.not = icmp eq ptr %i.cla, null
  br i1 %.not3146.not, label %.critedge3428.thread, label %bb.zg

bb.zg:                                            ; preds = %bb.zf
  %i.clb = load i32, ptr %i.j, align 4
  store i32 %i.clb, ptr %i.cla, align 1
  %i.clc = call ptr @lock_user(i32 noundef 3, i64 noundef %3, i64 noundef 4, i1 noundef zeroext false) #29 ; 2 uses
  %.not3148.not = icmp eq ptr %i.clc, null
  br i1 %.not3148.not, label %.critedge3428.thread, label %bb.zh

bb.zh:                                            ; preds = %bb.zg
  %i.cld = load i32, ptr %i.k, align 4
  store i32 %i.cld, ptr %i.clc, align 1
  %i.cle = call ptr @lock_user(i32 noundef 3, i64 noundef %4, i64 noundef 4, i1 noundef zeroext false) #29 ; 2 uses
  %.not3150.not = icmp eq ptr %i.cle, null
  br i1 %.not3150.not, label %.critedge3428.thread, label %bb.zi

bb.zi:                                            ; preds = %bb.zh
  %i.clf = load i32, ptr %i.l, align 4
  store i32 %i.clf, ptr %i.cle, align 1
  br label %bb.zj

end_hunk_8
begin_hunk_9_@do_syscall1:bb.a
  %.not3085 = icmp eq i64 %3, 2
  br i1 %.not3085, label %bb.agh, label %bb.agf

bb.agf:                                           ; preds = %bb.age
  %i.dgo = tail call ptr @lock_user(i32 noundef 1, i64 noundef %5, i64 noundef 12, i1 noundef zeroext true) #29 ; 3 uses
  %.not3086.not = icmp eq ptr %i.dgo, null
  br i1 %.not3086.not, label %.critedge3450, label %bb.agg

bb.agg:                                           ; preds = %bb.agf
  %i.dgp = load i32, ptr %i.dgo, align 1
  store i32 %i.dgp, ptr %60, align 4
  %i.dgq = getelementptr inbounds nuw i8, ptr %i.dgo, i64 4
  %i.dgr = load i64, ptr %i.dgq, align 1
  %i.dgs = getelementptr inbounds nuw i8, ptr %60, i64 4
  store i64 %i.dgr, ptr %i.dgs, align 4
  br label %bb.agh

bb.agh:                                           ; preds = %bb.agg, %bb.age, %bb.agd
  %.02631 = phi ptr [ null, %bb.agd ], [ %60, %bb.agg ], [ %60, %bb.age ]
  %i.dgt = trunc i64 %2 to i32
  %i.dgu = trunc i64 %3 to i32
  %i.dgv = trunc i64 %4 to i32
  %i.dgw = call i32 @epoll_ctl(i32 noundef %i.dgt, i32 noundef %i.dgu, i32 noundef %i.dgv, ptr noundef %.02631) #29 ; 2 uses
  %i.dgx = sext i32 %i.dgw to i64
  %i.dgy = icmp eq i32 %i.dgw, -1
  br i1 %i.dgy, label %bb.agi, label %.critedge3450

bb.agi:                                           ; preds = %bb.agh
  %i.dgz = tail call ptr @__errno_location() #28
  %i.dha = load i32, ptr %i.dgz, align 4
  %i.dhb = sub i32 0, %i.dha
  %i.dhc = sext i32 %i.dhb to i64
  br label %.critedge3450

.critedge3450:                                    ; preds = %bb.agi, %bb.agh, %bb.agf
  %.67 = phi i64 [ -14, %bb.agf ], [ %i.dhc, %bb.agi ], [ %i.dgx, %bb.agh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #29
  br label %.critedge3389

bb.agj:                                           ; preds = %bb.a, %bb.a, %bb.a
  %i.dhd = trunc i64 %2 to i32                    ; 3 uses
  %i.dhe = trunc i64 %4 to i32                    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %61, i8 0, i64 16, i1 false), !annotation !18
  %i.dhf = icmp eq i32 %1, 441
  %i.dhg = icmp ne i64 %5, 0
  %or.cond122 = and i1 %i.dhf, %i.dhg
  br i1 %or.cond122, label %bb.agk, label %bb.agl

bb.agk:                                           ; preds = %bb.agj
  %i.dhh = tail call ptr @lock_user(i32 noundef 1, i64 noundef %5, i64 noundef 16, i1 noundef zeroext true) #29 ; 2 uses
  %.not.i4081 = icmp eq ptr %i.dhh, null
  br i1 %.not.i4081, label %target_to_host_timespec.exit4085, label %target_to_host_timespec.exit4085.thread

target_to_host_timespec.exit4085.thread:          ; preds = %bb.agk
  %i.dhi = load <2 x i64>, ptr %i.dhh, align 1
  store <2 x i64> %i.dhi, ptr %61, align 16
  br label %bb.agl

bb.agl:                                           ; preds = %target_to_host_timespec.exit4085.thread, %bb.agj
  %.02630 = phi ptr [ null, %bb.agj ], [ %61, %target_to_host_timespec.exit4085.thread ]
  %i.dhj = icmp slt i32 %i.dhe, 1
  %sext = shl i64 %4, 32
  %i.dhk = ashr exact i64 %sext, 32               ; 3 uses
  %i.dhl = icmp ugt i64 %i.dhk, 178956970
  %or.cond125 = select i1 %i.dhj, i1 true, i1 %i.dhl
  br i1 %or.cond125, label %target_to_host_timespec.exit4085, label %bb.agm

bb.agm:                                           ; preds = %bb.agl
  %i.dhm = mul nuw nsw i64 %i.dhk, 12
  %i.dhn = tail call ptr @lock_user(i32 noundef 3, i64 noundef %3, i64 noundef %i.dhm, i1 noundef zeroext true) #29 ; 2 uses
  %.not3078 = icmp eq ptr %i.dhn, null
  br i1 %.not3078, label %target_to_host_timespec.exit4085, label %bb.agn

bb.agn:                                           ; preds = %bb.agm
  %i.dho = tail call noalias ptr @g_try_malloc_n(i64 noundef %i.dhk, i64 noundef 12) #35 ; 6 uses
  %.not3079 = icmp eq ptr %i.dho, null
  br i1 %.not3079, label %target_to_host_timespec.exit4085, label %bb.ago

bb.ago:                                           ; preds = %bb.agn
  switch i32 %1, label %get_errno.exit4097.thread [
    i32 281, label %bb.agp
    i32 441, label %bb.agp
    i32 232, label %bb.agw
  ]

bb.agp:                                           ; preds = %bb.ago, %bb.ago
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #29
  store ptr null, ptr %i.p, align 8
  %.not3080 = icmp eq i64 %6, 0
  br i1 %.not3080, label %bb.ags, label %bb.agq

bb.agq:                                           ; preds = %bb.agp
  %i.dhp = call i32 @process_sigsuspend_mask(ptr noundef nonnull %i.p, i64 noundef %6, i64 noundef %7) #29 ; 2 uses
  %.not3081 = icmp eq i32 %i.dhp, 0
  br i1 %.not3081, label %bb.ags, label %bb.agr

bb.agr:                                           ; preds = %bb.agq
  %i.dhq = sext i32 %i.dhp to i64
  br label %finish_sigsuspend_mask.exit4094

bb.ags:                                           ; preds = %bb.agq, %bb.agp
  %i.dhr = icmp eq i32 %1, 281
  br i1 %i.dhr, label %bb.agt, label %bb.agu

bb.agt:                                           ; preds = %bb.ags
  %i.dhs = trunc i64 %5 to i32
  %i.dht = load ptr, ptr %i.p, align 8
  %i.dhu = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @thread_cpu)
  %i.dhv = load ptr, ptr %i.dhu, align 8
  %i.dhw = getelementptr i8, ptr %i.dhv, i64 608
  %.val.i4086 = load ptr, ptr %i.dhw, align 16
  %i.dhx = getelementptr inbounds nuw i8, ptr %.val.i4086, i64 9148
  %i.dhy = call i64 (ptr, i64, ...) @safe_syscall_base(ptr noundef nonnull %i.dhx, i64 noundef 281, i32 noundef %i.dhd, ptr noundef nonnull %i.dho, i32 noundef range(i32 1, -2147483648) %i.dhe, i32 noundef %i.dhs, ptr noundef %i.dht, i64 noundef 8) #29
  %sext4419 = shl i64 %i.dhy, 32                  ; 2 uses
  %i.dhz = ashr exact i64 %sext4419, 32
  %i.dia = icmp eq i64 %sext4419, -4294967296
  br i1 %i.dia, label %get_errno.exit4088.sink.split, label %get_errno.exit4088

bb.agu:                                           ; preds = %bb.ags
  %i.dib = load ptr, ptr %i.p, align 8
  %i.dic = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @thread_cpu)
  %i.did = load ptr, ptr %i.dic, align 8
  %i.die = getelementptr i8, ptr %i.did, i64 608
  %.val.i4089 = load ptr, ptr %i.die, align 16
  %i.dif = getelementptr inbounds nuw i8, ptr %.val.i4089, i64 9148
  %i.dig = call i64 (ptr, i64, ...) @safe_syscall_base(ptr noundef nonnull %i.dif, i64 noundef 441, i32 noundef %i.dhd, ptr noundef nonnull %i.dho, i32 noundef range(i32 1, -2147483648) %i.dhe, ptr noundef %.02630, ptr noundef %i.dib, i64 noundef 8) #29
  %sext4418 = shl i64 %i.dig, 32                  ; 2 uses
  %i.dih = ashr exact i64 %sext4418, 32
  %i.dii = icmp eq i64 %sext4418, -4294967296
  br i1 %i.dii, label %get_errno.exit4088.sink.split, label %get_errno.exit4088

get_errno.exit4088.sink.split:                    ; preds = %bb.agu, %bb.agt
  %i.dij = tail call ptr @__errno_location() #28
  %i.dik = load i32, ptr %i.dij, align 4
  %i.dil = sub i32 0, %i.dik
  %i.dim = sext i32 %i.dil to i64
  br label %get_errno.exit4088

get_errno.exit4088:                               ; preds = %get_errno.exit4088.sink.split, %bb.agu, %bb.agt
  %.83 = phi i64 [ %i.dhz, %bb.agt ], [ %i.dih, %bb.agu ], [ %i.dim, %get_errno.exit4088.sink.split ] ; 3 uses
  %i.din = load ptr, ptr %i.p, align 8
  %.not3082 = icmp eq ptr %i.din, null
  %.not.i4092 = icmp eq i64 %.83, -512
  %or.cond4403 = select i1 %.not3082, i1 true, i1 %.not.i4092
  br i1 %or.cond4403, label %finish_sigsuspend_mask.exit4094, label %bb.agv

bb.agv:                                           ; preds = %get_errno.exit4088
  %i.dio = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @thread_cpu)
  %i.dip = load ptr, ptr %i.dio, align 8
  %i.diq = getelementptr i8, ptr %i.dip, i64 608
  %.val.i4093 = load ptr, ptr %i.diq, align 16
  %i.dir = getelementptr inbounds nuw i8, ptr %.val.i4093, i64 9144
  store i32 1, ptr %i.dir, align 8
  br label %finish_sigsuspend_mask.exit4094

finish_sigsuspend_mask.exit4094:                  ; preds = %bb.agv, %get_errno.exit4088, %bb.agr
  %.84 = phi i64 [ %i.dhq, %bb.agr ], [ %.83, %get_errno.exit4088 ], [ %.83, %bb.agv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #29
  br label %get_errno.exit4097

bb.agw:                                           ; preds = %bb.ago
  %i.dis = trunc i64 %5 to i32
  %i.dit = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @thread_cpu)
  %i.diu = load ptr, ptr %i.dit, align 8
  %i.div = getelementptr i8, ptr %i.diu, i64 608
  %.val.i4095 = load ptr, ptr %i.div, align 16
  %i.diw = getelementptr inbounds nuw i8, ptr %.val.i4095, i64 9148
  %i.dix = tail call i64 (ptr, i64, ...) @safe_syscall_base(ptr noundef nonnull %i.diw, i64 noundef 281, i32 noundef %i.dhd, ptr noundef nonnull %i.dho, i32 noundef range(i32 1, -2147483648) %i.dhe, i32 noundef %i.dis, ptr noundef null, i64 noundef 0) #29
  %sext4417 = shl i64 %i.dix, 32                  ; 2 uses
  %i.diy = ashr exact i64 %sext4417, 32
  %i.diz = icmp eq i64 %sext4417, -4294967296
  br i1 %i.diz, label %bb.agx, label %get_errno.exit4097

bb.agx:                                           ; preds = %bb.agw
  %i.dja = tail call ptr @__errno_location() #28
  %i.djb = load i32, ptr %i.dja, align 4
  %i.djc = sub i32 0, %i.djb
  %i.djd = sext i32 %i.djc to i64
  br label %get_errno.exit4097

get_errno.exit4097:                               ; preds = %bb.agx, %bb.agw, %finish_sigsuspend_mask.exit4094
  %.85 = phi i64 [ %i.diy, %bb.agw ], [ %.84, %finish_sigsuspend_mask.exit4094 ], [ %i.djd, %bb.agx ] ; 4 uses
  %i.dje = icmp sgt i64 %.85, 0
  br i1 %i.dje, label %.lr.ph, label %get_errno.exit4097.thread

.lr.ph:                                           ; preds = %get_errno.exit4097, %.lr.ph
  %i.djf = phi i64 [ %i.djn, %.lr.ph ], [ 0, %get_errno.exit4097 ] ; 2 uses
  %.025484482 = phi i32 [ %i.djm, %.lr.ph ], [ 0, %get_errno.exit4097 ]
  %i.djg = getelementptr inbounds [12 x i8], ptr %i.dho, i64 %i.djf ; 2 uses
  %i.djh = load i32, ptr %i.djg, align 1
  %i.dji = getelementptr inbounds [12 x i8], ptr %i.dhn, i64 %i.djf ; 2 uses
  store i32 %i.djh, ptr %i.dji, align 1
  %i.djj = getelementptr inbounds nuw i8, ptr %i.djg, i64 4
  %i.djk = load i64, ptr %i.djj, align 1
  %i.djl = getelementptr inbounds nuw i8, ptr %i.dji, i64 4
  store i64 %i.djk, ptr %i.djl, align 1
  %i.djm = add i32 %.025484482, 1                 ; 2 uses
  %i.djn = sext i32 %i.djm to i64                 ; 2 uses
  %i.djo = icmp sgt i64 %.85, %i.djn
  br i1 %i.djo, label %.lr.ph, label %get_errno.exit4097.thread, !llvm.loop !47

get_errno.exit4097.thread:                        ; preds = %.lr.ph, %bb.ago, %get_errno.exit4097
  %.854381 = phi i64 [ -38, %bb.ago ], [ %.85, %get_errno.exit4097 ], [ %.85, %.lr.ph ]
  call void @g_free(ptr noundef nonnull %i.dho) #29
  br label %target_to_host_timespec.exit4085

target_to_host_timespec.exit4085:                 ; preds = %bb.agn, %bb.agk, %bb.agm, %bb.agl, %get_errno.exit4097.thread
  %.68 = phi i64 [ -22, %bb.agl ], [ -14, %bb.agm ], [ %.854381, %get_errno.exit4097.thread ], [ -14, %bb.agk ], [ -12, %bb.agn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #29
  br label %.critedge3389

bb.agy:                                           ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %62, i8 0, i64 16, i1 false), !annotation !18
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %63, i8 0, i64 16, i1 false), !annotation !18
  %i.djp = trunc i64 %3 to i32                    ; 2 uses
  %.not4415 = icmp eq i64 %4, 0
  br i1 %.not4415, label %bb.ahb, label %switch.early.test

switch.early.test:                                ; preds = %bb.agy
  switch i32 %i.djp, label %bb.agz [
    i32 9, label %bb.ahb
    i32 3, label %bb.ahb
    i32 2, label %bb.ahb
  ]

bb.agz:                                           ; preds = %switch.early.test
  %i.djq = tail call ptr @lock_user(i32 noundef 1, i64 noundef %4, i64 noundef 16, i1 noundef zeroext true) #29 ; 2 uses
  %.not3075 = icmp eq ptr %i.djq, null
  br i1 %.not3075, label %bb.ahf, label %bb.aha

bb.aha:                                           ; preds = %bb.agz
  %i.djr = load <2 x i64>, ptr %i.djq, align 1
  store <2 x i64> %i.djr, ptr %62, align 16
  br label %bb.ahb

bb.ahb:                                           ; preds = %switch.early.test, %switch.early.test, %switch.early.test, %bb.agy, %bb.aha
  %.02547 = phi ptr [ %62, %bb.aha ], [ null, %switch.early.test ], [ null, %bb.agy ], [ null, %switch.early.test ], [ null, %switch.early.test ]
  %i.djs = trunc i64 %2 to i32
  %i.djt = icmp ne i64 %5, 0                      ; 2 uses
  %.132 = select i1 %i.djt, ptr %63, ptr null
  %i.dju = call i64 (i64, ...) @syscall(i64 noundef 302, i32 noundef %i.djs, i32 noundef %i.djp, ptr noundef %.02547, ptr noundef %.132) #29
  %sext4416 = shl i64 %i.dju, 32                  ; 2 uses
  %i.djv = ashr exact i64 %sext4416, 32
  %i.djw = icmp eq i64 %sext4416, -4294967296
  br i1 %i.djw, label %bb.ahc, label %get_errno.exit4099

bb.ahc:                                           ; preds = %bb.ahb
  %i.djx = tail call ptr @__errno_location() #28
  %i.djy = load i32, ptr %i.djx, align 4
  %i.djz = sub i32 0, %i.djy
  %i.dka = sext i32 %i.djz to i64
  br label %get_errno.exit4099

get_errno.exit4099:                               ; preds = %bb.ahb, %bb.ahc
  %.0.i4098 = phi i64 [ %i.dka, %bb.ahc ], [ %i.djv, %bb.ahb ] ; 3 uses
  %i.dkb = icmp ult i64 %.0.i4098, -4096
  %or.cond134 = and i1 %i.djt, %i.dkb
  br i1 %or.cond134, label %bb.ahd, label %bb.ahf

bb.ahd:                                           ; preds = %get_errno.exit4099
  %i.dkc = call ptr @lock_user(i32 noundef 3, i64 noundef %5, i64 noundef 16, i1 noundef zeroext true) #29 ; 3 uses
  %.not3076 = icmp eq ptr %i.dkc, null
  br i1 %.not3076, label %bb.ahf, label %bb.ahe

bb.ahe:                                           ; preds = %bb.ahd
  %i.dkd = load i64, ptr %63, align 8
  store i64 %i.dkd, ptr %i.dkc, align 1
  %i.dke = getelementptr inbounds nuw i8, ptr %i.dkc, i64 8
  %i.dkf = getelementptr inbounds nuw i8, ptr %63, i64 8
  %i.dkg = load i64, ptr %i.dkf, align 8
  store i64 %i.dkg, ptr %i.dke, align 1
  br label %bb.ahf

bb.ahf:                                           ; preds = %get_errno.exit4099, %bb.ahe, %bb.ahd, %bb.agz
  %.69 = phi i64 [ -14, %bb.ahd ], [ -14, %bb.agz ], [ %.0.i4098, %bb.ahe ], [ %.0.i4098, %get_errno.exit4099 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #29
  br label %.critedge3389

bb.ahg:                                           ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %64) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %64, i8 0, i64 64, i1 false)
  %i.dkh = trunc i64 %2 to i32
  %i.dki = tail call fastcc i32 @next_free_host_timer() ; 3 uses
  %i.dkj = icmp slt i32 %i.dki, 0
  br i1 %i.dkj, label %bb.ahp, label %bb.ahh

bb.ahh:                                           ; preds = %bb.ahg
  %i.dkk = zext nneg i32 %i.dki to i64            ; 4 uses
  %i.dkl = getelementptr inbounds nuw [8 x i8], ptr @g_posix_timers, i64 %i.dkk ; 2 uses
  %.not3070 = icmp eq i64 %3, 0
  br i1 %.not3070, label %bb.ahk, label %bb.ahi

bb.ahi:                                           ; preds = %bb.ahh
  %i.dkm = call fastcc i64 @target_to_host_sigevent(ptr noundef %64, i64 noundef %3) ; 2 uses
  %.not3071 = icmp eq i64 %i.dkm, 0
  br i1 %.not3071, label %bb.ahk, label %bb.ahj

bb.ahj:                                           ; preds = %bb.ahi
  %i.dkn = getelementptr inbounds nuw [4 x i8], ptr @g_posix_timer_allocated, i64 %i.dkk
  store atomic i32 0, ptr %i.dkn release, align 4
  br label %bb.ahp

bb.ahk:                                           ; preds = %bb.ahi, %bb.ahh
  %.02546 = phi ptr [ %64, %bb.ahi ], [ null, %bb.ahh ]
  %i.dko = call i32 @timer_create(i32 noundef %i.dkh, ptr noundef %.02546, ptr noundef nonnull %i.dkl) #29 ; 2 uses
  %i.dkp = icmp eq i32 %i.dko, -1
  br i1 %i.dkp, label %bb.ahl, label %get_errno.exit4101

bb.ahl:                                           ; preds = %bb.ahk
  %i.dkq = tail call ptr @__errno_location() #28
  %i.dkr = load i32, ptr %i.dkq, align 4
  %i.dks = sub i32 0, %i.dkr
  br label %get_errno.exit4101

get_errno.exit4101:                               ; preds = %bb.ahk, %bb.ahl
  %.0.i4100.in = phi i32 [ %i.dks, %bb.ahl ], [ %i.dko, %bb.ahk ] ; 2 uses
  %.not3072 = icmp eq i32 %.0.i4100.in, 0
  br i1 %.not3072, label %bb.ahn, label %bb.ahm

bb.ahm:                                           ; preds = %get_errno.exit4101
  %.0.i4100 = sext i32 %.0.i4100.in to i64
  %i.dkt = getelementptr inbounds nuw [4 x i8], ptr @g_posix_timer_allocated, i64 %i.dkk
  store atomic i32 0, ptr %i.dkt release, align 4
  br label %bb.ahp

bb.ahn:                                           ; preds = %get_errno.exit4101
  %i.dku = call ptr @lock_user(i32 noundef 3, i64 noundef %4, i64 noundef 4, i1 noundef zeroext false) #29 ; 2 uses
  %.not3073.not = icmp eq ptr %i.dku, null
  br i1 %.not3073.not, label %.critedge3452, label %bb.aho

bb.aho:                                           ; preds = %bb.ahn
  %i.dkv = or i32 %i.dki, 212795392
  store i32 %i.dkv, ptr %i.dku, align 1
  br label %bb.ahp

.critedge3452:                                    ; preds = %bb.ahn
  %i.dkw = load ptr, ptr %i.dkl, align 8
  %i.dkx = call i32 @timer_delete(ptr noundef %i.dkw) #29 ; 0 uses
  %i.dky = getelementptr inbounds nuw [4 x i8], ptr @g_posix_timer_allocated, i64 %i.dkk
  store atomic i32 0, ptr %i.dky release, align 4
  br label %bb.ahp

bb.ahp:                                           ; preds = %.critedge3452, %bb.ahj, %bb.aho, %bb.ahm, %bb.ahg
  %.71 = phi i64 [ -11, %bb.ahg ], [ -14, %.critedge3452 ], [ %i.dkm, %bb.ahj ], [ 0, %bb.aho ], [ %.0.i4100, %bb.ahm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #29
  br label %.critedge3389

bb.ahq:                                           ; preds = %bb.a
  %i.dkz = and i64 %2, 4294967264
  %or.cond.i.not = icmp ne i64 %i.dkz, 212795392
  %i.dla = icmp eq i64 %4, 0
  %or.cond19 = or i1 %or.cond.i.not, %i.dla
  br i1 %or.cond19, label %.critedge3389, label %bb.ahr

bb.ahr:                                           ; preds = %bb.ahq
  %i.dlb = and i64 %2, 31
  %i.dlc = getelementptr inbounds nuw [8 x i8], ptr @g_posix_timers, i64 %i.dlb
  %i.dld = load ptr, ptr %i.dlc, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %65) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %65, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %66) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %66, i8 0, i64 32, i1 false)
  %i.dle = call fastcc i64 @target_to_host_itimerspec(ptr noundef %65, i64 noundef %4)
  %.not3067 = icmp eq i64 %i.dle, 0
  br i1 %.not3067, label %bb.ahs, label %.critedge3454

bb.ahs:                                           ; preds = %bb.ahr
  %i.dlf = trunc i64 %3 to i32
  %i.dlg = call i32 @timer_settime(ptr noundef %i.dld, i32 noundef %i.dlf, ptr noundef nonnull %65, ptr noundef nonnull %66) #29 ; 2 uses
  %i.dlh = icmp eq i32 %i.dlg, -1
  br i1 %i.dlh, label %bb.aht, label %get_errno.exit4104

bb.aht:                                           ; preds = %bb.ahs
  %i.dli = tail call ptr @__errno_location() #28
  %i.dlj = load i32, ptr %i.dli, align 4
  %i.dlk = sub i32 0, %i.dlj
  br label %get_errno.exit4104

get_errno.exit4104:                               ; preds = %bb.ahs, %bb.aht
  %.0.i4103.in = phi i32 [ %i.dlk, %bb.aht ], [ %i.dlg, %bb.ahs ]
  %.0.i4103 = sext i32 %.0.i4103.in to i64
  %.not3068 = icmp eq i64 %5, 0
  br i1 %.not3068, label %bb.ahv, label %bb.ahu

bb.ahu:                                           ; preds = %get_errno.exit4104
  %i.dll = call fastcc i64 @host_to_target_itimerspec(i64 noundef %5, ptr noundef %66)
  %.not3069 = icmp eq i64 %i.dll, 0
  br i1 %.not3069, label %bb.ahv, label %.critedge3454

bb.ahv:                                           ; preds = %bb.ahu, %get_errno.exit4104
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #29
  br label %.critedge3389

.critedge3454:                                    ; preds = %bb.ahu, %bb.ahr
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #29
end_hunk_9
begin_hunk_10_@host_to_target_termios:bb.a
  %i.e = tail call i32 @host_to_target_bitmask_len(i32 noundef %i.d, ptr noundef nonnull @oflag_tbl, i64 noundef 24) #29
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.e, ptr %i.f, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i32, ptr %i.g, align 4
  %i.i = tail call i32 @host_to_target_bitmask_len(i32 noundef %i.h, ptr noundef nonnull @cflag_tbl, i64 noundef 75) #29
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.i, ptr %i.j, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.l = load i32, ptr %i.k, align 4
  %i.m = tail call i32 @host_to_target_bitmask_len(i32 noundef %i.l, ptr noundef nonnull @lflag_tbl, i64 noundef 16) #29
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.m, ptr %i.n, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = load i8, ptr %i.o, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %i.p, ptr %i.q, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 17 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %i.r, i8 noundef 0, i64 noundef 19, i1 noundef false) #29
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 17
  %i.t = load i8, ptr %i.s, align 1
  store i8 %i.t, ptr %i.r, align 1
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 18
  %i.v = load i8, ptr %i.u, align 2
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i8 %i.v, ptr %i.w, align 2
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 19
  %i.y = load i8, ptr %i.x, align 1
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 19
  store i8 %i.y, ptr %i.z, align 1
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ab = load i8, ptr %i.aa, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 %i.ab, ptr %i.ac, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 21
  %i.ae = load i8, ptr %i.ad, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 21
  store i8 %i.ae, ptr %i.af, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 22
  %i.ah = load i8, ptr %i.ag, align 2
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i8 %i.ah, ptr %i.ai, align 2
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 23
  %i.ak = load i8, ptr %i.aj, align 1
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 23
  store i8 %i.ak, ptr %i.al, align 1
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.an = load i8, ptr %i.am, align 4
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %i.an, ptr %i.ao, align 4
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 25
  %i.aq = load i8, ptr %i.ap, align 1
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 25
  store i8 %i.aq, ptr %i.ar, align 1
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 26
  %i.at = load i8, ptr %i.as, align 2
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 26
  store i8 %i.at, ptr %i.au, align 2
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 27
  %i.aw = load i8, ptr %i.av, align 1
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 27
  store i8 %i.aw, ptr %i.ax, align 1
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.az = load i8, ptr %i.ay, align 4
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 %i.az, ptr %i.ba, align 4
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 29
  %i.bc = load i8, ptr %i.bb, align 1
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 29
  store i8 %i.bc, ptr %i.bd, align 1
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 30
  %i.bf = load i8, ptr %i.be, align 2
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 30
  store i8 %i.bf, ptr %i.bg, align 2
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 31
  %i.bi = load i8, ptr %i.bh, align 1
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 31
  store i8 %i.bi, ptr %i.bj, align 1
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bl = load i8, ptr %i.bk, align 4
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %i.bl, ptr %i.bm, align 4
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 33
  %i.bo = load i8, ptr %i.bn, align 1
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 33
  store i8 %i.bo, ptr %i.bp, align 1
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @target_to_host_termios(ptr noundef initializes((0, 17)) %0, ptr nofree noundef readonly captures(none) %1) #2 {
bb.a:
  %i.a = load i32, ptr %1, align 4
  %i.b = tail call i32 @target_to_host_bitmask_len(i32 noundef %i.a, ptr noundef nonnull @iflag_tbl, i64 noundef 15) #29
  store i32 %i.b, ptr %0, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load i32, ptr %i.c, align 4
  %i.e = tail call i32 @target_to_host_bitmask_len(i32 noundef %i.d, ptr noundef nonnull @oflag_tbl, i64 noundef 24) #29
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.e, ptr %i.f, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i32, ptr %i.g, align 4
  %i.i = tail call i32 @target_to_host_bitmask_len(i32 noundef %i.h, ptr noundef nonnull @cflag_tbl, i64 noundef 75) #29
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.i, ptr %i.j, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.l = load i32, ptr %i.k, align 4
  %i.m = tail call i32 @target_to_host_bitmask_len(i32 noundef %i.l, ptr noundef nonnull @lflag_tbl, i64 noundef 16) #29
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.m, ptr %i.n, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = load i8, ptr %i.o, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %i.p, ptr %i.q, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 17 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %i.r, i8 noundef 0, i64 noundef 19, i1 noundef false) #29
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 17
  %i.t = load i8, ptr %i.s, align 1
  store i8 %i.t, ptr %i.r, align 1
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 18
  %i.v = load i8, ptr %i.u, align 2
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i8 %i.v, ptr %i.w, align 2
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 19
  %i.y = load i8, ptr %i.x, align 1
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 19
  store i8 %i.y, ptr %i.z, align 1
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ab = load i8, ptr %i.aa, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 %i.ab, ptr %i.ac, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 21
  %i.ae = load i8, ptr %i.ad, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 21
  store i8 %i.ae, ptr %i.af, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 22
  %i.ah = load i8, ptr %i.ag, align 2
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i8 %i.ah, ptr %i.ai, align 2
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 23
  %i.ak = load i8, ptr %i.aj, align 1
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 23
  store i8 %i.ak, ptr %i.al, align 1
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.an = load i8, ptr %i.am, align 4
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %i.an, ptr %i.ao, align 4
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 25
  %i.aq = load i8, ptr %i.ap, align 1
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 25
  store i8 %i.aq, ptr %i.ar, align 1
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 26
  %i.at = load i8, ptr %i.as, align 2
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 26
  store i8 %i.at, ptr %i.au, align 2
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 27
  %i.aw = load i8, ptr %i.av, align 1
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 27
  store i8 %i.aw, ptr %i.ax, align 1
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.az = load i8, ptr %i.ay, align 4
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 %i.az, ptr %i.ba, align 4
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 29
  %i.bc = load i8, ptr %i.bb, align 1
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 29
  store i8 %i.bc, ptr %i.bd, align 1
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 30
  %i.bf = load i8, ptr %i.be, align 2
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 30
  store i8 %i.bf, ptr %i.bg, align 2
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 31
  %i.bi = load i8, ptr %i.bh, align 1
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 31
  store i8 %i.bi, ptr %i.bj, align 1
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bl = load i8, ptr %i.bk, align 4
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %i.bl, ptr %i.bm, align 4
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 33
  %i.bo = load i8, ptr %i.bn, align 1
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 33
  store i8 %i.bo, ptr %i.bp, align 1
  ret void
}

declare void @print_termios(ptr noundef) #5

declare i32 @host_to_target_bitmask_len(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define internal void @host_to_target_termios2(ptr noundef initializes((0, 17), (36, 44)) %0, ptr nofree noundef readonly captures(none) %1) #2 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.c = add i64 %i.b, 44
  %i.d = add i64 %i.a, 44
  %rt.bound0 = icmp ugt i64 %i.c, %i.a
  %rt.bound1 = icmp ugt i64 %i.d, %i.b
  %rt.conflict = and i1 %rt.bound0, %rt.bound1
  br i1 %rt.conflict, label %.rtscalar, label %.rtvec

.rtvec:                                           ; preds = %bb.a
  %i.e = load i32, ptr %1, align 4
  %i.f = tail call i32 @host_to_target_bitmask_len(i32 noundef %i.e, ptr noundef nonnull @iflag_tbl, i64 noundef 15) #29
  store i32 %i.f, ptr %0, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.h = load i32, ptr %i.g, align 4
  %i.i = tail call i32 @host_to_target_bitmask_len(i32 noundef %i.h, ptr noundef nonnull @oflag_tbl, i64 noundef 24) #29
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.i, ptr %i.j, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i32, ptr %i.k, align 4
  %i.m = tail call i32 @host_to_target_bitmask_len(i32 noundef %i.l, ptr noundef nonnull @cflag_tbl, i64 noundef 75) #29
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.m, ptr %i.n, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.p = load i32, ptr %i.o, align 4
  %i.q = tail call i32 @host_to_target_bitmask_len(i32 noundef %i.p, ptr noundef nonnull @lflag_tbl, i64 noundef 16) #29
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.q, ptr %i.r, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = load i8, ptr %i.s, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %i.t, ptr %i.u, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.x = load <2 x i32>, ptr %i.v, align 4
  store <2 x i32> %i.x, ptr %i.w, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 17 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %i.y, i8 noundef 0, i64 noundef 19, i1 noundef false) #29
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 17
  %i.aa = load <16 x i8>, ptr %i.z, align 1
  store <16 x i8> %i.aa, ptr %i.y, align 1
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 33
  %i.ac = load i8, ptr %i.ab, align 1
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 33
  store i8 %i.ac, ptr %i.ad, align 1
  br label %.rtcont

.rtscalar:                                        ; preds = %bb.a
  %i.ae = load i32, ptr %1, align 4
  %i.af = tail call i32 @host_to_target_bitmask_len(i32 noundef %i.ae, ptr noundef nonnull @iflag_tbl, i64 noundef 15) #29
  store i32 %i.af, ptr %0, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ah = load i32, ptr %i.ag, align 4
  %i.ai = tail call i32 @host_to_target_bitmask_len(i32 noundef %i.ah, ptr noundef nonnull @oflag_tbl, i64 noundef 24) #29
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.ai, ptr %i.aj, align 4
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.al = load i32, ptr %i.ak, align 4
  %i.am = tail call i32 @host_to_target_bitmask_len(i32 noundef %i.al, ptr noundef nonnull @cflag_tbl, i64 noundef 75) #29
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.am, ptr %i.an, align 4
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ap = load i32, ptr %i.ao, align 4
  %i.aq = tail call i32 @host_to_target_bitmask_len(i32 noundef %i.ap, ptr noundef nonnull @lflag_tbl, i64 noundef 16) #29
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.aq, ptr %i.ar, align 4
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.at = load i8, ptr %i.as, align 4
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %i.at, ptr %i.au, align 4
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.aw = load i32, ptr %i.av, align 4
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %i.aw, ptr %i.ax, align 4
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.az = load i32, ptr %i.ay, align 4
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.az, ptr %i.ba, align 4
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 17 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %i.bb, i8 noundef 0, i64 noundef 19, i1 noundef false) #29
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 17
  %i.bd = load i8, ptr %i.bc, align 1
  store i8 %i.bd, ptr %i.bb, align 1
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 18
  %i.bf = load i8, ptr %i.be, align 2
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i8 %i.bf, ptr %i.bg, align 2
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 19
  %i.bi = load i8, ptr %i.bh, align 1
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 19
  store i8 %i.bi, ptr %i.bj, align 1
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.bl = load i8, ptr %i.bk, align 4
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 %i.bl, ptr %i.bm, align 4
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 21
  %i.bo = load i8, ptr %i.bn, align 1
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 21
  store i8 %i.bo, ptr %i.bp, align 1
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 22
  %i.br = load i8, ptr %i.bq, align 2
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i8 %i.br, ptr %i.bs, align 2
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 23
  %i.bu = load i8, ptr %i.bt, align 1
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 23
  store i8 %i.bu, ptr %i.bv, align 1
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bx = load i8, ptr %i.bw, align 4
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %i.bx, ptr %i.by, align 4
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 25
  %i.ca = load i8, ptr %i.bz, align 1
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 25
  store i8 %i.ca, ptr %i.cb, align 1
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 26
  %i.cd = load i8, ptr %i.cc, align 2
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 26
  store i8 %i.cd, ptr %i.ce, align 2
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 27
  %i.cg = load i8, ptr %i.cf, align 1
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 27
  store i8 %i.cg, ptr %i.ch, align 1
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.cj = load i8, ptr %i.ci, align 4
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 %i.cj, ptr %i.ck, align 4
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 29
  %i.cm = load i8, ptr %i.cl, align 1
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 29
  store i8 %i.cm, ptr %i.cn, align 1
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 30
  %i.cp = load i8, ptr %i.co, align 2
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 30
  store i8 %i.cp, ptr %i.cq, align 2
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 31
  %i.cs = load i8, ptr %i.cr, align 1
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 31
  store i8 %i.cs, ptr %i.ct, align 1
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cv = load i8, ptr %i.cu, align 4
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %i.cv, ptr %i.cw, align 4
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 33
  %i.cy = load i8, ptr %i.cx, align 1
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 33
  store i8 %i.cy, ptr %i.cz, align 1
  br label %.rtcont

.rtcont:                                          ; preds = %.rtscalar, %.rtvec
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @target_to_host_termios2(ptr noundef initializes((0, 17), (36, 44)) %0, ptr nofree noundef readonly captures(none) %1) #2 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.c = add i64 %i.b, 44
  %i.d = add i64 %i.a, 44
  %rt.bound0 = icmp ugt i64 %i.c, %i.a
  %rt.bound1 = icmp ugt i64 %i.d, %i.b
  %rt.conflict = and i1 %rt.bound0, %rt.bound1
  br i1 %rt.conflict, label %.rtscalar, label %.rtvec

.rtvec:                                           ; preds = %bb.a
  %i.e = load i32, ptr %1, align 4
  %i.f = tail call i32 @target_to_host_bitmask_len(i32 noundef %i.e, ptr noundef nonnull @iflag_tbl, i64 noundef 15) #29
  store i32 %i.f, ptr %0, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.h = load i32, ptr %i.g, align 4
  %i.i = tail call i32 @target_to_host_bitmask_len(i32 noundef %i.h, ptr noundef nonnull @oflag_tbl, i64 noundef 24) #29
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.i, ptr %i.j, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i32, ptr %i.k, align 4
  %i.m = tail call i32 @target_to_host_bitmask_len(i32 noundef %i.l, ptr noundef nonnull @cflag_tbl, i64 noundef 75) #29
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.m, ptr %i.n, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.p = load i32, ptr %i.o, align 4
  %i.q = tail call i32 @target_to_host_bitmask_len(i32 noundef %i.p, ptr noundef nonnull @lflag_tbl, i64 noundef 16) #29
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.q, ptr %i.r, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = load i8, ptr %i.s, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %i.t, ptr %i.u, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.x = load <2 x i32>, ptr %i.v, align 4
  store <2 x i32> %i.x, ptr %i.w, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 17 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %i.y, i8 noundef 0, i64 noundef 19, i1 noundef false) #29
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 17
  %i.aa = load <16 x i8>, ptr %i.z, align 1
  store <16 x i8> %i.aa, ptr %i.y, align 1
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 33
  %i.ac = load i8, ptr %i.ab, align 1
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 33
  store i8 %i.ac, ptr %i.ad, align 1
  br label %.rtcont

.rtscalar:                                        ; preds = %bb.a
  %i.ae = load i32, ptr %1, align 4
  %i.af = tail call i32 @target_to_host_bitmask_len(i32 noundef %i.ae, ptr noundef nonnull @iflag_tbl, i64 noundef 15) #29
  store i32 %i.af, ptr %0, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ah = load i32, ptr %i.ag, align 4
  %i.ai = tail call i32 @target_to_host_bitmask_len(i32 noundef %i.ah, ptr noundef nonnull @oflag_tbl, i64 noundef 24) #29
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.ai, ptr %i.aj, align 4
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.al = load i32, ptr %i.ak, align 4
  %i.am = tail call i32 @target_to_host_bitmask_len(i32 noundef %i.al, ptr noundef nonnull @cflag_tbl, i64 noundef 75) #29
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.am, ptr %i.an, align 4
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ap = load i32, ptr %i.ao, align 4
  %i.aq = tail call i32 @target_to_host_bitmask_len(i32 noundef %i.ap, ptr noundef nonnull @lflag_tbl, i64 noundef 16) #29
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.aq, ptr %i.ar, align 4
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.at = load i8, ptr %i.as, align 4
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %i.at, ptr %i.au, align 4
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.aw = load i32, ptr %i.av, align 4
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %i.aw, ptr %i.ax, align 4
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.az = load i32, ptr %i.ay, align 4
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.az, ptr %i.ba, align 4
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 17 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %i.bb, i8 noundef 0, i64 noundef 19, i1 noundef false) #29
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 17
  %i.bd = load i8, ptr %i.bc, align 1
  store i8 %i.bd, ptr %i.bb, align 1
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 18
  %i.bf = load i8, ptr %i.be, align 2
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i8 %i.bf, ptr %i.bg, align 2
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 19
  %i.bi = load i8, ptr %i.bh, align 1
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 19
  store i8 %i.bi, ptr %i.bj, align 1
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.bl = load i8, ptr %i.bk, align 4
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 %i.bl, ptr %i.bm, align 4
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 21
  %i.bo = load i8, ptr %i.bn, align 1
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 21
  store i8 %i.bo, ptr %i.bp, align 1
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 22
  %i.br = load i8, ptr %i.bq, align 2
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i8 %i.br, ptr %i.bs, align 2
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 23
  %i.bu = load i8, ptr %i.bt, align 1
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 23
  store i8 %i.bu, ptr %i.bv, align 1
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bx = load i8, ptr %i.bw, align 4
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %i.bx, ptr %i.by, align 4
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 25
  %i.ca = load i8, ptr %i.bz, align 1
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 25
  store i8 %i.ca, ptr %i.cb, align 1
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 26
  %i.cd = load i8, ptr %i.cc, align 2
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 26
  store i8 %i.cd, ptr %i.ce, align 2
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 27
  %i.cg = load i8, ptr %i.cf, align 1
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 27
  store i8 %i.cg, ptr %i.ch, align 1
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.cj = load i8, ptr %i.ci, align 4
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 %i.cj, ptr %i.ck, align 4
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 29
  %i.cm = load i8, ptr %i.cl, align 1
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 29
  store i8 %i.cm, ptr %i.cn, align 1
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 30
  %i.cp = load i8, ptr %i.co, align 2
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 30
  store i8 %i.cp, ptr %i.cq, align 2
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 31
  %i.cs = load i8, ptr %i.cr, align 1
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 31
  store i8 %i.cs, ptr %i.ct, align 1
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cv = load i8, ptr %i.cu, align 4
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %i.cv, ptr %i.cw, align 4
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 33
  %i.cy = load i8, ptr %i.cx, align 1
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 33
  store i8 %i.cy, ptr %i.cz, align 1
  br label %.rtcont

.rtcont:                                          ; preds = %.rtscalar, %.rtvec
  ret void
}

declare void @print_termios2(ptr noundef) #5

declare i32 @thunk_type_size_array(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @g_assertion_message_expr(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #17

declare void @cpu_dump_state(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @open_self_maps(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) #2 {
bb.a:
  %2 = alloca %struct.open_self_maps_data, align 8 ; 8 uses
  %i.a = getelementptr i8, ptr %0, i64 -15888
  %.val = load ptr, ptr %i.a, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  store ptr %.val, ptr %2, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 %1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 0, ptr %i.d, align 4
  tail call void @mmap_lock() #29
  %i.e = tail call ptr @read_self_maps() #29      ; 2 uses
  store ptr %i.e, ptr %i.b, align 8
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = call i32 @walk_memory_regions(ptr noundef nonnull %2, ptr noundef nonnull @open_self_maps_2) #29 ; 0 uses
  %i.g = load ptr, ptr %i.b, align 8
  call void @free_self_maps(ptr noundef %i.g) #29
  br label %open_self_maps_1.exit

bb.c:                                             ; preds = %bb.a
  %i.h = call i32 @walk_memory_regions(ptr noundef nonnull %2, ptr noundef nonnull @open_self_maps_3) #29 ; 0 uses
  br label %open_self_maps_1.exit

open_self_maps_1.exit:                            ; preds = %bb.b, %bb.c
  call void @mmap_unlock() #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @fileno(ptr noundef captures(none)) local_unnamed_addr #10

declare void @mmap_lock() local_unnamed_addr #5

declare ptr @read_self_maps() local_unnamed_addr #5

declare i32 @walk_memory_regions(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @open_self_maps_2(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) #2 {
bb.a:
  %i.a = load i64, ptr @guest_base, align 8       ; 2 uses
  %i.b = add i64 %2, -1
  %i.c = add i64 %i.b, %i.a                       ; 2 uses
  %i.d = icmp eq i64 %1, -10485760
  br i1 %i.d, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.e = add i64 %i.a, %1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @open_self_maps_4(ptr noundef readonly %0, ptr noundef nonnull @open_self_maps_3.mi, i64 noundef -10485760, i64 noundef %2, i32 noundef %3)
  br label %.critedge

bb.c:                                             ; preds = %.preheader, %bb.f
  %.042 = phi i64 [ %i.p, %bb.f ], [ %i.e, %.preheader ] ; 2 uses
  %.040 = phi i64 [ %i.r, %bb.f ], [ %1, %.preheader ]
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call ptr @interval_tree_iter_first(ptr noundef %i.g, i64 noundef %.042, i64 noundef %.042) #29 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load i64, ptr %i.i, align 8              ; 2 uses
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.j, i64 %i.c) ; 2 uses
  %i.l = load i64, ptr @guest_base, align 8
  %i.m = sub i64 %i.k, %i.l                       ; 2 uses
  %i.n = load i64, ptr @guest_addr_max, align 8
  %.not = icmp ugt i64 %i.m, %i.n
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @__assert_fail(ptr noundef nonnull @.str.601, ptr noundef nonnull @.str.584, i32 noundef 8596, ptr noundef nonnull @__PRETTY_FUNCTION__.open_self_maps_2) #30
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.o = add i64 %i.m, 1
  tail call fastcc void @open_self_maps_4(ptr noundef nonnull %0, ptr noundef nonnull %i.h, i64 noundef %.040, i64 noundef %i.o, i32 noundef %3)
  %.not50 = icmp ult i64 %i.j, %i.c
  br i1 %.not50, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.p = add i64 %i.k, 1                          ; 2 uses
  %i.q = load i64, ptr @guest_base, align 8
  %i.r = sub i64 %i.p, %i.q                       ; 2 uses
  %i.s = load i64, ptr @guest_addr_max, align 8
  %.not51 = icmp ugt i64 %i.r, %i.s
  br i1 %.not51, label %bb.g, label %bb.c

bb.g:                                             ; preds = %bb.f
  tail call void @__assert_fail(ptr noundef nonnull @.str.602, ptr noundef nonnull @.str.584, i32 noundef 8604, ptr noundef nonnull @__PRETTY_FUNCTION__.open_self_maps_2) #30
  unreachable

.critedge:                                        ; preds = %bb.e, %bb.b
  ret i32 0
}

declare void @free_self_maps(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @open_self_maps_3(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) #2 {
bb.a:
  tail call fastcc void @open_self_maps_4(ptr noundef %0, ptr noundef nonnull @open_self_maps_3.mi, i64 noundef %1, i64 noundef %2, i32 noundef %3)
  ret i32 0
}

declare void @mmap_unlock() local_unnamed_addr #5

declare ptr @interval_tree_iter_first(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @open_self_maps_4(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3, i32 noundef %4) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i32, ptr %i.f, align 8              ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.i = load i64, ptr %i.h, align 8
  %i.j = icmp eq i64 %2, %i.i
  br i1 %i.j, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.l = load i64, ptr %i.k, align 8
  %i.m = icmp eq i64 %2, %i.l
  br i1 %i.m, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.o = load i64, ptr %i.n, align 8
  %i.p = icmp eq i64 %2, %i.o
  br i1 %i.p, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = icmp eq i64 %2, -10485760
  %spec.select = select i1 %i.q, ptr @.str.606, ptr %i.e
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi ptr [ %spec.select, %bb.d ], [ @.str.603, %bb.a ], [ @.str.604, %bb.b ], [ @.str.605, %bb.c ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.s = load i64, ptr %i.r, align 8              ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.u = load i64, ptr %i.t, align 8              ; 5 uses
  %.not = icmp eq i64 %i.u, 0
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = load i64, ptr @guest_base, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.x = load i64, ptr %i.w, align 8
  %i.y = add i64 %i.s, %2
  %i.z = add i64 %i.y, %i.v
  %i.aa = sub i64 %i.z, %i.x
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.049 = phi i64 [ %i.aa, %bb.f ], [ %i.s, %bb.e ]
  %i.ab = and i32 %4, 1
  %.not51 = icmp eq i32 %i.ab, 0                  ; 3 uses
  %i.ac = select i1 %.not51, i32 45, i32 114
  %i.ad = and i32 %4, 16
  %.not52 = icmp eq i32 %i.ad, 0                  ; 3 uses
  %i.ae = select i1 %.not52, i32 45, i32 119
  %i.af = and i32 %4, 4
  %.not53 = icmp eq i32 %i.af, 0                  ; 3 uses
  %i.ag = select i1 %.not53, i32 45, i32 120
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 51 ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 1, !range !24, !noundef !25
  %i.aj = trunc nuw i8 %i.ai to i1
  %i.ak = select i1 %i.aj, i32 112, i32 115
  %i.al = lshr i64 %i.u, 8
  %i.am = and i64 %i.al, 4095
  %i.an = lshr i64 %i.u, 32
  %i.ao = and i64 %i.an, 4294963200
  %i.ap = or disjoint i64 %i.am, %i.ao
  %i.aq = trunc nuw i64 %i.ap to i32
  %i.ar = and i64 %i.u, 255
  %i.as = lshr i64 %i.u, 12
  %i.at = and i64 %i.as, 4294967040
  %i.au = or disjoint i64 %i.at, %i.ar
  %i.av = trunc nuw i64 %i.au to i32
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ax = load i64, ptr %i.aw, align 8
  %i.ay = tail call i32 (i32, i32, ptr, ...) @__dprintf_chk(i32 noundef %i.g, i32 noundef 1, ptr noundef nonnull @.str.607, i64 noundef %2, i64 noundef %3, i32 noundef %i.ac, i32 noundef %i.ae, i32 noundef %i.ag, i32 noundef %i.ak, i64 noundef %.049, i32 noundef %i.aq, i32 noundef %i.av, i64 noundef %i.ax) #29
  %.not54 = icmp eq ptr %.0, null
  br i1 %.not54, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.az = sub i32 73, %i.ay
  %i.ba = tail call i32 (i32, i32, ptr, ...) @__dprintf_chk(i32 noundef %i.g, i32 noundef 1, ptr noundef nonnull @.str.608, i32 noundef %i.az, ptr noundef nonnull @.str.609, ptr noundef nonnull %.0) #29 ; 0 uses
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.bb = tail call i32 (i32, i32, ptr, ...) @__dprintf_chk(i32 noundef %i.g, i32 noundef 1, ptr noundef nonnull @.str.610) #29 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.bd = load i8, ptr %i.bc, align 4, !range !24, !noundef !25
  %i.be = trunc nuw i8 %i.bd to i1
  br i1 %i.be, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bf = sub i64 %3, %2
  %i.bg = lshr i64 %i.bf, 10                      ; 2 uses
  %i.bh = and i32 %4, 128
  %.not55 = icmp eq i32 %i.bh, 0
  %i.bi = select i1 %.not55, i64 0, i64 %i.bg
  %i.bj = select i1 %.not51, ptr @.str.609, ptr @.str.612
  %i.bk = select i1 %.not52, ptr @.str.609, ptr @.str.613
  %i.bl = select i1 %.not53, ptr @.str.609, ptr @.str.614
  %i.bm = load i8, ptr %i.ah, align 1, !range !24, !noundef !25
  %i.bn = trunc nuw i8 %i.bm to i1                ; 2 uses
  %i.bo = select i1 %i.bn, ptr @.str.609, ptr @.str.615
  %i.bp = select i1 %.not51, ptr @.str.609, ptr @.str.616
  %i.bq = select i1 %.not52, ptr @.str.609, ptr @.str.617
  %i.br = select i1 %.not53, ptr @.str.609, ptr @.str.618
  %i.bs = select i1 %i.bn, ptr @.str.609, ptr @.str.619
  %i.bt = tail call i32 (i32, i32, ptr, ...) @__dprintf_chk(i32 noundef %i.g, i32 noundef 1, ptr noundef nonnull @.str.611, i64 noundef %i.bg, i64 noundef 4, i64 noundef 4, i64 noundef %i.bi, ptr noundef nonnull %i.bj, ptr noundef nonnull %i.bk, ptr noundef nonnull %i.bl, ptr noundef nonnull %i.bo, ptr noundef nonnull %i.bp, ptr noundef nonnull %i.bq, ptr noundef nonnull %i.br, ptr noundef nonnull %i.bs) #29 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  ret void
}

declare i32 @__dprintf_chk(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @open_self_smaps(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) #2 {
bb.a:
  %2 = alloca %struct.open_self_maps_data, align 8 ; 9 uses
  %i.a = getelementptr i8, ptr %0, i64 -15888
  %.val = load ptr, ptr %i.a, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  store ptr %.val, ptr %2, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 %1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i8 1, ptr %i.d, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.e, i8 0, i64 3, i1 false)
  tail call void @mmap_lock() #29
  %i.f = tail call ptr @read_self_maps() #29      ; 2 uses
  store ptr %i.f, ptr %i.b, align 8
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = call i32 @walk_memory_regions(ptr noundef nonnull %2, ptr noundef nonnull @open_self_maps_2) #29 ; 0 uses
  %i.h = load ptr, ptr %i.b, align 8
  call void @free_self_maps(ptr noundef %i.h) #29
  br label %open_self_maps_1.exit

bb.c:                                             ; preds = %bb.a
  %i.i = call i32 @walk_memory_regions(ptr noundef nonnull %2, ptr noundef nonnull @open_self_maps_3) #29 ; 0 uses
  br label %open_self_maps_1.exit

open_self_maps_1.exit:                            ; preds = %bb.b, %bb.c
  call void @mmap_unlock() #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  ret i32 0
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i32 -1, 1) i32 @open_self_stat(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) #2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 -15888
  %.val = load ptr, ptr %i.a, align 16            ; 3 uses
  %i.b = tail call ptr @g_string_new(ptr noundef null) #29 ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 9200
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 40 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.u
  %i.g = add nuw nsw i32 %.02960, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.g, 44
  br i1 %exitcond.not, label %glib_autoptr_cleanup_GString.exit, label %bb.c, !llvm.loop !50

bb.c:                                             ; preds = %bb.a, %bb.b
  %.02960 = phi i32 [ 0, %bb.a ], [ %i.g, %bb.b ] ; 3 uses
  switch i32 %.02960, label %bb.t [
    i32 0, label %bb.d
    i32 1, label %bb.e
    i32 2, label %bb.i
    i32 3, label %bb.j
    i32 4, label %bb.k
    i32 19, label %bb.l
    i32 21, label %bb.r
    i32 27, label %bb.s
  ]

bb.d:                                             ; preds = %bb.c
  %i.h = tail call i32 @getpid() #29
  tail call void (ptr, ptr, ...) @g_string_printf(ptr noundef %i.b, ptr noundef nonnull @.str.630, i32 noundef %i.h) #29
  br label %bb.u

bb.e:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %i.e, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1064
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call ptr @g_strrstr(ptr noundef %i.l, ptr noundef nonnull @.str.631) #29 ; 2 uses
  %.not34 = icmp eq ptr %i.m, null
  br i1 %.not34, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.o = load ptr, ptr %i.e, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1064
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = load ptr, ptr %i.q, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.s = phi ptr [ %i.n, %bb.f ], [ %i.r, %bb.g ]
  tail call void (ptr, ptr, ...) @g_string_printf(ptr noundef %i.b, ptr noundef nonnull @.str.632, ptr noundef %i.s) #29
  br label %bb.u

bb.i:                                             ; preds = %bb.c
  %i.t = tail call ptr @g_string_assign(ptr noundef %i.b, ptr noundef nonnull @.str.633) #29 ; 0 uses
  br label %bb.u

bb.j:                                             ; preds = %bb.c
  %i.u = tail call i32 @getppid() #29
  tail call void (ptr, ptr, ...) @g_string_printf(ptr noundef %i.b, ptr noundef nonnull @.str.630, i32 noundef %i.u) #29
  br label %bb.u

bb.k:                                             ; preds = %bb.c
  %i.v = tail call i32 @getpgrp() #29
  tail call void (ptr, ptr, ...) @g_string_printf(ptr noundef %i.b, ptr noundef nonnull @.str.630, i32 noundef %i.v) #29
  br label %bb.u

bb.l:                                             ; preds = %bb.c
  %i.w = tail call ptr @get_ptr_rcu_reader() #29  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 12 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4              ; 2 uses
  %i.z = add i32 %i.y, 1
  store i32 %i.z, ptr %i.x, align 4
  %.not.i.i = icmp eq i32 %i.y, 0
  br i1 %.not.i.i, label %bb.m, label %rcu_read_auto_lock.exit

bb.m:                                             ; preds = %bb.l
  %i.aa = load atomic i64, ptr @rcu_gp_ctr monotonic, align 8
  %i.ab = and i64 %i.aa, 4294967295
  store atomic i64 %i.ab, ptr %i.w monotonic, align 8
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #29, !srcloc !52
  fence seq_cst
  br label %rcu_read_auto_lock.exit

rcu_read_auto_lock.exit:                          ; preds = %bb.m, %bb.l
  %i.ac = load atomic ptr, ptr @cpus_queue monotonic, align 8 ; 2 uses
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #29, !srcloc !53
  %.not3356 = icmp eq ptr %i.ac, null
  br i1 %.not3356, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %rcu_read_auto_lock.exit, %.lr.ph
  %.03058 = phi ptr [ %i.af, %.lr.ph ], [ %i.ac, %rcu_read_auto_lock.exit ]
  %.157 = phi i32 [ %i.ad, %.lr.ph ], [ 0, %rcu_read_auto_lock.exit ]
  %i.ad = add i32 %.157, 1                        ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.03058, i64 552
  %i.af = load atomic ptr, ptr %i.ae monotonic, align 8 ; 2 uses
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #29, !srcloc !54
  %.not33 = icmp eq ptr %i.af, null
  br i1 %.not33, label %._crit_edge, label %.lr.ph, !llvm.loop !51

._crit_edge:                                      ; preds = %.lr.ph, %rcu_read_auto_lock.exit
  %.1.lcssa = phi i32 [ 0, %rcu_read_auto_lock.exit ], [ %i.ad, %.lr.ph ]
  %i.ag = tail call ptr @get_ptr_rcu_reader() #29 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 12 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4            ; 2 uses
  %.not.i.i39 = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i39, label %bb.n, label %bb.o

bb.n:                                             ; preds = %._crit_edge
  tail call void @__assert_fail(ptr noundef nonnull @.str.637, ptr noundef nonnull @.str.638, i32 noundef 101, ptr noundef nonnull @__PRETTY_FUNCTION__.rcu_read_unlock) #30
  unreachable

bb.o:                                             ; preds = %._crit_edge
  %i.aj = add i32 %i.ai, -1                       ; 2 uses
  store i32 %i.aj, ptr %i.ah, align 4
  %.not8.i.i = icmp eq i32 %i.aj, 0
  br i1 %.not8.i.i, label %bb.p, label %rcu_read_auto_unlock.exit

bb.p:                                             ; preds = %bb.o
  store atomic i64 0, ptr %i.ag release, align 8
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #29, !srcloc !55
  fence seq_cst
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 2 uses
  %i.al = load atomic i8, ptr %i.ak monotonic, align 8, !range !24, !noundef !25
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %bb.q, label %rcu_read_auto_unlock.exit, !prof !23

bb.q:                                             ; preds = %bb.p
  store atomic i8 0, ptr %i.ak monotonic, align 8
  tail call void @qemu_event_set(ptr noundef nonnull @rcu_gp_event) #29
  br label %rcu_read_auto_unlock.exit

rcu_read_auto_unlock.exit:                        ; preds = %bb.o, %bb.p, %bb.q
  tail call void (ptr, ptr, ...) @g_string_printf(ptr noundef %i.b, ptr noundef nonnull @.str.630, i32 noundef %.1.lcssa) #29
  br label %bb.u

bb.r:                                             ; preds = %bb.c
  %i.an = load i64, ptr %i.d, align 8
  tail call void (ptr, ptr, ...) @g_string_printf(ptr noundef %i.b, ptr noundef nonnull @.str.634, i64 noundef %i.an) #29
  br label %bb.u

bb.s:                                             ; preds = %bb.c
  %i.ao = load ptr, ptr %i.c, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 64
  %i.aq = load i64, ptr %i.ap, align 8
  tail call void (ptr, ptr, ...) @g_string_printf(ptr noundef %i.b, ptr noundef nonnull @.str.635, i64 noundef %i.aq) #29
  br label %bb.u

bb.t:                                             ; preds = %bb.c
  %i.ar = icmp eq i32 %.02960, 43
  %i.as = select i1 %i.ar, i32 10, i32 32
  tail call void (ptr, ptr, ...) @g_string_printf(ptr noundef %i.b, ptr noundef nonnull @.str.636, i32 noundef %i.as) #29
  br label %bb.u

bb.u:                                             ; preds = %bb.h, %bb.j, %rcu_read_auto_unlock.exit, %bb.s, %bb.t, %bb.r, %bb.k, %bb.i, %bb.d
  %i.at = load ptr, ptr %i.b, align 8
  %i.au = load i64, ptr %i.f, align 8
  %i.av = tail call i64 @write(i32 noundef %1, ptr noundef %i.at, i64 noundef %i.au) #29
  %i.aw = load i64, ptr %i.f, align 8
  %.not35 = icmp eq i64 %i.av, %i.aw
  br i1 %.not35, label %bb.b, label %glib_autoptr_cleanup_GString.exit

glib_autoptr_cleanup_GString.exit:                ; preds = %bb.b, %bb.u
  %.053 = phi i32 [ 0, %bb.b ], [ -1, %bb.u ]
  %i.ax = tail call ptr @g_string_free(ptr noundef nonnull %i.b, i32 noundef 1) #29 ; 0 uses
  ret i32 %.053
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @open_self_auxv(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) #2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 -15888
  %.val = load ptr, ptr %i.a, align 16
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %i.g = load i64, ptr %i.f, align 8              ; 2 uses
  %i.h = tail call ptr @lock_user(i32 noundef 1, i64 noundef %i.e, i64 noundef %i.g, i1 noundef zeroext false) #29 ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.d, label %.preheader

.preheader:                                       ; preds = %bb.a, %bb.b
  %.021 = phi i64 [ %i.k, %bb.b ], [ %i.g, %bb.a ] ; 3 uses
  %.020 = phi ptr [ %i.l, %bb.b ], [ %i.h, %bb.a ] ; 2 uses
  %.not26 = icmp eq i64 %.021, 0
  br i1 %.not26, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.i = tail call i64 @write(i32 noundef %1, ptr noundef %.020, i64 noundef %.021) #29 ; 3 uses
  %i.j = icmp slt i64 %i.i, 1
  %i.k = sub i64 %.021, %i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.020, i64 %i.i
  br i1 %i.j, label %bb.c, label %.preheader

bb.c:                                             ; preds = %bb.b, %.preheader
  %i.m = tail call i64 @lseek64(i32 noundef %1, i64 noundef 0, i32 noundef 0) #29 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  ret i32 0
}

; Function Attrs: nofree nounwind sspstrong uwtable
define internal range(i32 -1, 1) i32 @open_self_cmdline(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) #18 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 -15888
  %.val = load ptr, ptr %i.a, align 16
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 40
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1064
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 1056 ; 2 uses
  %i.f = load i32, ptr %i.e, align 16
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph, label %._crit_edge

bb.b:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.h = load i32, ptr %i.e, align 16
  %i.i = sext i32 %i.h to i64
  %i.j = icmp slt i64 %indvars.iv.next, %i.i
  br i1 %i.j, label %.lr.ph, label %._crit_edge, !llvm.loop !56

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.k = load ptr, ptr %i.d, align 8
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.n = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.m) #32
  %i.o = add i64 %i.n, 1                          ; 2 uses
  %i.p = tail call i64 @write(i32 noundef %1, ptr noundef nonnull %i.m, i64 noundef %i.o) #29
  %.not = icmp eq i64 %i.p, %i.o
  br i1 %.not, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.b, %bb.a
  %.2 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ -1, %.lr.ph ]
  ret i32 %.2
}

; Function Attrs: nofree nounwind
declare noundef ptr @realpath(ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #9

; Function Attrs: nounwind
declare i32 @memfd_create(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr noundef captures(none)) local_unnamed_addr #19

; Function Attrs: nofree
declare i32 @__snprintf_chk(ptr noundef, i64 noundef, i32 noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #20

declare i32 @mkstemp64(ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @unlink(ptr noundef readonly captures(none)) local_unnamed_addr #10

declare i32 @close(i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare i64 @lseek64(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @g_string_new(ptr noundef) local_unnamed_addr #5

declare void @g_string_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @getpid() local_unnamed_addr #3

declare ptr @g_strrstr(ptr noundef, ptr noundef) local_unnamed_addr #5

declare ptr @g_string_assign(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @getppid() local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @getpgrp() local_unnamed_addr #3

; Function Attrs: nofree
declare noundef i64 @write(i32 noundef, ptr noundef readonly captures(none), i64 noundef) local_unnamed_addr #20

declare ptr @g_string_free(ptr noundef, i32 noundef) local_unnamed_addr #5

declare ptr @get_ptr_rcu_reader() local_unnamed_addr #5

declare void @qemu_event_set(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind memory(argmem: readwrite)
declare ptr @__memcpy_chk(ptr noalias noundef writeonly, ptr noalias noundef readonly captures(none), i64 noundef, i64 noundef) local_unnamed_addr #21

declare void @force_sig(i32 noundef) local_unnamed_addr #5

declare void @force_sig_fault(i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #5

declare void @qemu_plugin_vcpu_syscall(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

declare void @gdb_syscall_entry(ptr noundef, i32 noundef) local_unnamed_addr #5

declare zeroext i1 @qemu_plugin_vcpu_syscall_filter(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #5

declare i32 @block_signals() local_unnamed_addr #5

declare void @object_unparent(ptr noundef) local_unnamed_addr #5

declare void @object_unref(ptr noundef) local_unnamed_addr #5

declare void @rcu_unregister_thread() local_unnamed_addr #5

; Function Attrs: noreturn
declare void @pthread_exit(ptr noundef) local_unnamed_addr #17

declare void @preexit_cleanup(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #17

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc ptr @fd_trans_host_to_target_data(i32 noundef %0) unnamed_addr #8 {
bb.a:
  %i.a = icmp slt i32 %0, 0
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load atomic ptr, ptr @qemu_mutex_lock_func monotonic, align 8
  tail call void %i.b(ptr noundef nonnull @target_fd_trans_lock, ptr noundef nonnull @.str.642, i32 noundef 56) #29, !inline_history !3
  %i.c = load i32, ptr @target_fd_max, align 4
  %i.d = icmp ult i32 %0, %i.c
  br i1 %i.d, label %bb.c, label %glib_autoptr_cleanup_QemuLockable.exit

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr @target_fd_trans, align 8
  %i.f = zext nneg i32 %0 to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.f
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %glib_autoptr_cleanup_QemuLockable.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %i.h, align 8
  br label %glib_autoptr_cleanup_QemuLockable.exit

glib_autoptr_cleanup_QemuLockable.exit:           ; preds = %bb.b, %bb.c, %bb.d
  %.0 = phi ptr [ %i.i, %bb.d ], [ null, %bb.c ], [ null, %bb.b ]
  tail call void @qemu_mutex_unlock_impl(ptr noundef nonnull @target_fd_trans_lock, ptr noundef nonnull @.str.642, i32 noundef 56) #29
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %glib_autoptr_cleanup_QemuLockable.exit
  %.1 = phi ptr [ %.0, %glib_autoptr_cleanup_QemuLockable.exit ], [ null, %bb.a ]
  ret ptr %.1
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc ptr @fd_trans_target_to_host_data(i32 noundef %0) unnamed_addr #8 {
bb.a:
  %i.a = icmp slt i32 %0, 0
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load atomic ptr, ptr @qemu_mutex_lock_func monotonic, align 8
  tail call void %i.b(ptr noundef nonnull @target_fd_trans_lock, ptr noundef nonnull @.str.642, i32 noundef 56) #29, !inline_history !3
  %i.c = load i32, ptr @target_fd_max, align 4
  %i.d = icmp ult i32 %0, %i.c
  br i1 %i.d, label %bb.c, label %glib_autoptr_cleanup_QemuLockable.exit

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr @target_fd_trans, align 8
  %i.f = zext nneg i32 %0 to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.f
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %glib_autoptr_cleanup_QemuLockable.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  br label %glib_autoptr_cleanup_QemuLockable.exit

glib_autoptr_cleanup_QemuLockable.exit:           ; preds = %bb.b, %bb.c, %bb.d
  %.0 = phi ptr [ %i.j, %bb.d ], [ null, %bb.c ], [ null, %bb.b ]
  tail call void @qemu_mutex_unlock_impl(ptr noundef nonnull @target_fd_trans_lock, ptr noundef nonnull @.str.642, i32 noundef 56) #29
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %glib_autoptr_cleanup_QemuLockable.exit
  %.1 = phi ptr [ %.0, %glib_autoptr_cleanup_QemuLockable.exit ], [ null, %bb.a ]
  ret ptr %.1
}

; Function Attrs: allocsize(0)
declare noalias ptr @g_malloc(i64 noundef) local_unnamed_addr #15

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc void @fd_trans_unregister(i32 noundef %0) unnamed_addr #8 {
bb.a:
  %i.a = icmp slt i32 %0, 0
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load atomic ptr, ptr @qemu_mutex_lock_func monotonic, align 8
  tail call void %i.b(ptr noundef nonnull @target_fd_trans_lock, ptr noundef nonnull @.str.642, i32 noundef 56) #29, !inline_history !3
  %i.c = load i32, ptr @target_fd_max, align 4
  %i.d = icmp ult i32 %0, %i.c
  br i1 %i.d, label %bb.c, label %glib_autoptr_cleanup_QemuLockable.exit

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr @target_fd_trans, align 8
  %i.f = zext nneg i32 %0 to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.f
  store ptr null, ptr %i.g, align 8
  br label %glib_autoptr_cleanup_QemuLockable.exit

glib_autoptr_cleanup_QemuLockable.exit:           ; preds = %bb.b, %bb.c
  tail call void @qemu_mutex_unlock_impl(ptr noundef nonnull @target_fd_trans_lock, ptr noundef nonnull @.str.642, i32 noundef 56) #29
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %glib_autoptr_cleanup_QemuLockable.exit
  ret void
end_hunk_10
begin_hunk_11_@do_fork:bb.a
  %.not132 = icmp eq i32 %i.bo, 0
  br i1 %.not132, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  tail call void @cpu_x86_load_seg(ptr noundef nonnull %0, i32 noundef 4, i32 noundef 0) #29
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 416
  store i64 %4, ptr %i.bp, align 16
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.bq = and i32 %1, 2097152
  %.not133 = icmp eq i32 %i.bq, 0
  br i1 %.not133, label %bb.al, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.br = getelementptr inbounds nuw i8, ptr %.val, i64 16
  store i64 %5, ptr %i.br, align 8
  br label %bb.al

bb.ac:                                            ; preds = %bb.t
  br i1 %.not125, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bs = tail call ptr @lock_user(i32 noundef 3, i64 noundef %3, i64 noundef 4, i1 noundef zeroext false) #29 ; 2 uses
  %.not128 = icmp eq ptr %i.bs, null
  br i1 %.not128, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  store i32 %i.bh, ptr %i.bs, align 1
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %bb.ac
  br i1 %.not124, label %bb.ak, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bt = tail call i64 (i64, ...) @syscall(i64 noundef 434, i32 noundef %i.bh, i32 noundef 0) #29
  %i.bu = trunc i64 %i.bt to i32                  ; 3 uses
  %i.bv = icmp sgt i32 %i.bu, -1
  br i1 %i.bv, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  tail call void @qemu_set_cloexec(i32 noundef %i.bu) #29
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ag, %bb.ah
  %.0108 = phi i32 [ %i.bu, %bb.ah ], [ 0, %bb.ag ]
  %i.bw = tail call ptr @lock_user(i32 noundef 3, i64 noundef %3, i64 noundef 4, i1 noundef zeroext false) #29 ; 2 uses
  %.not129 = icmp eq ptr %i.bw, null
  br i1 %.not129, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  store i32 %.0108, ptr %i.bw, align 1
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.af
  tail call void @fork_end(i32 noundef %i.bh) #29
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.ab, %bb.aa
  %i.bx = getelementptr i8, ptr %0, i64 -16296
  %.val145 = load i32, ptr %i.bx, align 8
  %.not151 = icmp eq i32 %.val145, 0
  br i1 %.not151, label %bb.an, label %bb.am, !prof !22

bb.am:                                            ; preds = %bb.al
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.584, i32 noundef 7169, ptr noundef nonnull @__func__.do_fork, ptr noundef nonnull @.str.644) #30
  unreachable

.sink.split:                                      ; preds = %bb.b, %bb.p
  %.1.ph = phi i32 [ %.0110, %bb.p ], [ -22, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  br label %bb.an

bb.an:                                            ; preds = %.sink.split, %bb.al, %bb.s, %bb.r, %bb.q
  %.1 = phi i32 [ -512, %bb.s ], [ %i.bh, %bb.al ], [ -22, %bb.r ], [ -22, %bb.q ], [ %.1.ph, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  ret i32 %.1
}

declare void @host_to_target_siginfo(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc range(i64 -14, 1) i64 @host_to_target_rusage(i64 noundef %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #8 {
bb.a:
  %i.a = tail call ptr @lock_user(i32 noundef 3, i64 noundef %0, i64 noundef 144, i1 noundef zeroext false) #29 ; 19 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %1, align 8
  store i64 %i.b, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.d, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.g, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load i64, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.j, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.m = load i64, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %i.m, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.p = load i64, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %i.p, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.s = load i64, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 %i.s, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.v = load i64, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 %i.v, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.y = load i64, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 %i.y, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i64 %i.ab, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store i64 %i.ae, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store i64 %i.ah, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store i64 %i.ak, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store i64 %i.an, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.aq = load i64, ptr %i.ap, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store i64 %i.aq, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.at = load i64, ptr %i.as, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  store i64 %i.at, ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.aw = load i64, ptr %i.av, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  store i64 %i.aw, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  store i64 %i.az, ptr %i.ba, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ 0, %bb.b ], [ -14, %bb.a ]
  ret i64 %.0
}

declare i32 @creat64(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @link(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @linkat(i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @unlinkat(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @do_execv(i32 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i32 noundef %4, i1 noundef zeroext %5) unnamed_addr #2 {
bb.a:
  %.not14 = icmp eq i64 %2, 0                     ; 2 uses
  br i1 %.not14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.014216 = phi i32 [ %i.c, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %.014615 = phi i64 [ %i.d, %bb.c ], [ %2, %bb.a ] ; 2 uses
  %i.a = tail call ptr @lock_user(i32 noundef 1, i64 noundef %.014615, i64 noundef 8, i1 noundef zeroext true) #29 ; 2 uses
  %.not166.not = icmp eq ptr %i.a, null
  br i1 %.not166.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %.val201 = load i64, ptr %i.a, align 1
  %i.b = icmp eq i64 %.val201, 0
  br i1 %i.b, label %._crit_edge.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = add i32 %.014216, 1                      ; 2 uses
  %i.d = add i64 %.014615, 8                      ; 2 uses
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !57

._crit_edge.loopexit:                             ; preds = %bb.b, %bb.c
  %.0142.lcssa.ph = phi i32 [ %i.c, %bb.c ], [ %.014216, %bb.b ]
  %i.e = add i32 %.0142.lcssa.ph, 1
  %i.f = sext i32 %i.e to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.0142.lcssa = phi i64 [ 1, %bb.a ], [ %i.f, %._crit_edge.loopexit ]
  %.not16919 = icmp eq i64 %3, 0                  ; 2 uses
  br i1 %.not16919, label %._crit_edge24, label %.lr.ph23

.lr.ph23:                                         ; preds = %._crit_edge, %bb.e
  %.014421 = phi i32 [ %i.i, %bb.e ], [ 0, %._crit_edge ] ; 2 uses
  %.120 = phi i64 [ %i.j, %bb.e ], [ %3, %._crit_edge ] ; 2 uses
  %i.g = tail call ptr @lock_user(i32 noundef 1, i64 noundef %.120, i64 noundef 8, i1 noundef zeroext true) #29 ; 2 uses
  %.not170.not = icmp eq ptr %i.g, null
  br i1 %.not170.not, label %.critedge, label %bb.d

bb.d:                                             ; preds = %.lr.ph23
  %.val200 = load i64, ptr %i.g, align 1
  %i.h = icmp eq i64 %.val200, 0
  br i1 %i.h, label %._crit_edge24.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = add i32 %.014421, 1                      ; 2 uses
  %i.j = add i64 %.120, 8                         ; 2 uses
  %.not169 = icmp eq i64 %i.j, 0
  br i1 %.not169, label %._crit_edge24.loopexit, label %.lr.ph23, !llvm.loop !58

._crit_edge24.loopexit:                           ; preds = %bb.d, %bb.e
  %.0144.lcssa.ph = phi i32 [ %i.i, %bb.e ], [ %.014421, %bb.d ]
  %i.k = add i32 %.0144.lcssa.ph, 1
  %i.l = sext i32 %i.k to i64
  br label %._crit_edge24

._crit_edge24:                                    ; preds = %._crit_edge, %._crit_edge24.loopexit
  %.0144.lcssa = phi i64 [ 1, %._crit_edge ], [ %i.l, %._crit_edge24.loopexit ]
  %i.m = tail call noalias ptr @g_malloc0_n(i64 noundef %.0142.lcssa, i64 noundef 8) #35 ; 7 uses
  %i.n = tail call noalias ptr @g_malloc0_n(i64 noundef %.0144.lcssa, i64 noundef 8) #35 ; 7 uses
  br i1 %.not14, label %._crit_edge33, label %.lr.ph32

.lr.ph32:                                         ; preds = %._crit_edge24, %bb.h
  %.230 = phi i64 [ %i.q, %bb.h ], [ %2, %._crit_edge24 ] ; 2 uses
  %.015529 = phi ptr [ %i.r, %bb.h ], [ %i.m, %._crit_edge24 ] ; 3 uses
  %i.o = tail call ptr @lock_user(i32 noundef 1, i64 noundef %.230, i64 noundef 8, i1 noundef zeroext true) #29 ; 2 uses
  %.not174.not = icmp eq ptr %i.o, null
  br i1 %.not174.not, label %.critedge194, label %bb.f

bb.f:                                             ; preds = %.lr.ph32
  %.val199 = load i64, ptr %i.o, align 1          ; 2 uses
  %.not176 = icmp eq i64 %.val199, 0
  br i1 %.not176, label %._crit_edge33, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = tail call ptr @lock_user_string(i64 noundef %.val199) #29 ; 2 uses
  store ptr %i.p, ptr %.015529, align 8
  %.not184 = icmp eq ptr %i.p, null
  br i1 %.not184, label %.critedge194, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = add i64 %.230, 8                         ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.015529, i64 8 ; 2 uses
  %.not173 = icmp eq i64 %i.q, 0
  br i1 %.not173, label %._crit_edge33, label %.lr.ph32, !llvm.loop !59

._crit_edge33:                                    ; preds = %bb.h, %bb.f, %._crit_edge24
  %.0155.lcssa = phi ptr [ %i.m, %._crit_edge24 ], [ %.015529, %bb.f ], [ %i.r, %bb.h ]
  store ptr null, ptr %.0155.lcssa, align 8
  br i1 %.not16919, label %._crit_edge42, label %.lr.ph41

.lr.ph41:                                         ; preds = %._crit_edge33, %bb.k
  %.339 = phi i64 [ %i.u, %bb.k ], [ %3, %._crit_edge33 ] ; 2 uses
  %.115638 = phi ptr [ %i.v, %bb.k ], [ %i.n, %._crit_edge33 ] ; 3 uses
  %i.s = tail call ptr @lock_user(i32 noundef 1, i64 noundef %.339, i64 noundef 8, i1 noundef zeroext true) #29 ; 2 uses
  %.not178.not = icmp eq ptr %i.s, null
  br i1 %.not178.not, label %.critedge194, label %bb.i

bb.i:                                             ; preds = %.lr.ph41
  %.val198 = load i64, ptr %i.s, align 1          ; 2 uses
  %.not180 = icmp eq i64 %.val198, 0
  br i1 %.not180, label %._crit_edge42, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = tail call ptr @lock_user_string(i64 noundef %.val198) #29 ; 2 uses
  store ptr %i.t, ptr %.115638, align 8
  %.not183 = icmp eq ptr %i.t, null
  br i1 %.not183, label %.critedge194, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.u = add i64 %.339, 8                         ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.115638, i64 8 ; 2 uses
  %.not177 = icmp eq i64 %i.u, 0
  br i1 %.not177, label %._crit_edge42, label %.lr.ph41, !llvm.loop !60

._crit_edge42:                                    ; preds = %bb.k, %bb.i, %._crit_edge33
  %.1156.lcssa = phi ptr [ %i.n, %._crit_edge33 ], [ %.115638, %bb.i ], [ %i.v, %bb.k ]
  store ptr null, ptr %.1156.lcssa, align 8
  %i.w = tail call ptr @lock_user_string(i64 noundef %1) #29 ; 3 uses
  %.not181 = icmp eq ptr %i.w, null
  br i1 %.not181, label %.critedge194, label %bb.l

bb.l:                                             ; preds = %._crit_edge42
  %i.x = tail call i32 @is_proc_myself(ptr noundef nonnull %i.w, ptr noundef nonnull @.str.582)
  %.not182 = icmp eq i32 %i.x, 0
  %spec.select = select i1 %.not182, ptr %i.w, ptr @real_exec_path ; 2 uses
  %i.y = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @thread_cpu)
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = getelementptr i8, ptr %i.z, i64 608
  %.val.i = load ptr, ptr %i.aa, align 16
  %i.ab = getelementptr inbounds nuw i8, ptr %.val.i, i64 9148 ; 2 uses
  br i1 %5, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ac = tail call i64 (ptr, i64, ...) @safe_syscall_base(ptr noundef nonnull %i.ab, i64 noundef 322, i32 noundef %0, ptr noundef nonnull %spec.select, ptr noundef %i.m, ptr noundef %i.n, i32 noundef %4) #29
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.ad = tail call i64 (ptr, i64, ...) @safe_syscall_base(ptr noundef nonnull %i.ab, i64 noundef 59, ptr noundef nonnull %spec.select, ptr noundef %i.m, ptr noundef %i.n) #29
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.in = phi i64 [ %i.ac, %bb.m ], [ %i.ad, %bb.n ]
  %sext = shl i64 %.in, 32                        ; 2 uses
  %i.ae = ashr exact i64 %sext, 32
  %i.af = icmp eq i64 %sext, -4294967296
  br i1 %i.af, label %bb.p, label %get_errno.exit

bb.p:                                             ; preds = %bb.o
  %i.ag = tail call ptr @__errno_location() #28
  %i.ah = load i32, ptr %i.ag, align 4
  %i.ai = sub i32 0, %i.ah
  %i.aj = zext i32 %i.ai to i64
  br label %get_errno.exit

get_errno.exit:                                   ; preds = %bb.o, %bb.p
  %.0.i = phi i64 [ %i.aj, %bb.p ], [ %i.ae, %bb.o ]
  %i.ak = trunc i64 %.0.i to i32
  br label %.critedge194

.critedge194:                                     ; preds = %bb.g, %.lr.ph32, %bb.j, %.lr.ph41, %._crit_edge42, %get_errno.exit
  %.0137 = phi i32 [ %i.ak, %get_errno.exit ], [ -14, %._crit_edge42 ], [ -14, %bb.j ], [ -14, %.lr.ph41 ], [ -14, %.lr.ph32 ], [ -14, %bb.g ]
  %i.al = load ptr, ptr %i.m, align 8
  %.not18546 = icmp eq ptr %i.al, null
  br i1 %.not18546, label %.thread, label %.lr.ph49

.lr.ph49:                                         ; preds = %.critedge194, %bb.r
  %.448 = phi i64 [ %i.an, %bb.r ], [ %2, %.critedge194 ] ; 2 uses
  %.215747 = phi ptr [ %i.ao, %bb.r ], [ %i.m, %.critedge194 ]
  %i.am = tail call ptr @lock_user(i32 noundef 1, i64 noundef %.448, i64 noundef 8, i1 noundef zeroext true) #29 ; 2 uses
  %.not186.not = icmp eq ptr %i.am, null
  br i1 %.not186.not, label %.thread, label %bb.q

bb.q:                                             ; preds = %.lr.ph49
  %.val197 = load i64, ptr %i.am, align 1
  %.not6 = icmp eq i64 %.val197, 0
  br i1 %.not6, label %.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.an = add i64 %.448, 8
  %i.ao = getelementptr inbounds nuw i8, ptr %.215747, i64 8 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8
  %.not185 = icmp eq ptr %i.ap, null
  br i1 %.not185, label %.thread, label %.lr.ph49, !llvm.loop !61

.thread:                                          ; preds = %bb.r, %bb.q, %.lr.ph49, %.critedge194
  %i.aq = load ptr, ptr %i.n, align 8
  %.not18752 = icmp eq ptr %i.aq, null
  br i1 %.not18752, label %.thread3, label %.lr.ph55

.lr.ph55:                                         ; preds = %.thread, %bb.t
  %.554 = phi i64 [ %i.as, %bb.t ], [ %3, %.thread ] ; 2 uses
  %.315853 = phi ptr [ %i.at, %bb.t ], [ %i.n, %.thread ]
  %i.ar = tail call ptr @lock_user(i32 noundef 1, i64 noundef %.554, i64 noundef 8, i1 noundef zeroext true) #29 ; 2 uses
  %.not188.not = icmp eq ptr %i.ar, null
  br i1 %.not188.not, label %.thread3, label %bb.s

bb.s:                                             ; preds = %.lr.ph55
  %.val = load i64, ptr %i.ar, align 1
  %.not7 = icmp eq i64 %.val, 0
  br i1 %.not7, label %.thread3, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.as = add i64 %.554, 8
  %i.at = getelementptr inbounds nuw i8, ptr %.315853, i64 8 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8
  %.not187 = icmp eq ptr %i.au, null
  br i1 %.not187, label %.thread3, label %.lr.ph55, !llvm.loop !62

.thread3:                                         ; preds = %bb.t, %bb.s, %.lr.ph55, %.thread
  tail call void @g_free(ptr noundef nonnull %i.m) #29
  tail call void @g_free(ptr noundef nonnull %i.n) #29
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph, %.lr.ph23, %.thread3
  %.0 = phi i32 [ %.0137, %.thread3 ], [ -14, %.lr.ph23 ], [ -14, %.lr.ph ]
  ret i32 %.0
}

; Function Attrs: nounwind
declare i32 @chdir(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i64 @time(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @mknod(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @mknodat(i32 noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @chmod(ptr noundef readonly captures(none), i32 noundef) local_unnamed_addr #10

; Function Attrs: nounwind
declare i32 @mount(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @alarm(i32 noundef) local_unnamed_addr #3

declare i32 @sigsuspend(ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @utime(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i32 @utimes(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #10

; Function Attrs: nounwind
declare i32 @futimesat(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @access(ptr noundef readonly captures(none), i32 noundef) local_unnamed_addr #10

; Function Attrs: nounwind
declare i32 @faccessat(i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @sync() local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @syncfs(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @rename(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #10

; Function Attrs: nounwind
declare i32 @renameat(i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @mkdir(ptr noundef readonly captures(none), i32 noundef) local_unnamed_addr #10

; Function Attrs: nounwind
declare i32 @mkdirat(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @rmdir(ptr noundef readonly captures(none)) local_unnamed_addr #10

; Function Attrs: nounwind
declare i32 @dup(i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc void @fd_trans_dup(i32 noundef %0, i32 noundef %1) unnamed_addr #8 {
bb.a:
  %i.a = load atomic ptr, ptr @qemu_mutex_lock_func monotonic, align 8
  tail call void %i.a(ptr noundef nonnull @target_fd_trans_lock, ptr noundef nonnull @.str.642, i32 noundef 56) #29, !inline_history !3
  %i.b = icmp sgt i32 %1, -1
  %i.c = load i32, ptr @target_fd_max, align 4    ; 2 uses
  %i.d = icmp ult i32 %1, %i.c
  %or.cond.i = select i1 %i.b, i1 %i.d, i1 false
  br i1 %or.cond.i, label %bb.b, label %internal_fd_trans_unregister_unsafe.exit

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr @target_fd_trans, align 8
  %i.f = zext nneg i32 %1 to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.f
  store ptr null, ptr %i.g, align 8
  %.pre = load i32, ptr @target_fd_max, align 4
  br label %internal_fd_trans_unregister_unsafe.exit

internal_fd_trans_unregister_unsafe.exit:         ; preds = %bb.a, %bb.b
  %i.h = phi i32 [ %i.c, %bb.a ], [ %.pre, %bb.b ] ; 4 uses
  %i.i = icmp ult i32 %0, %i.h
  br i1 %i.i, label %bb.c, label %glib_autoptr_cleanup_QemuLockable.exit

bb.c:                                             ; preds = %internal_fd_trans_unregister_unsafe.exit
  %i.j = load ptr, ptr @target_fd_trans, align 8  ; 3 uses
  %i.k = sext i32 %0 to i64
  %i.l = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.k
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %glib_autoptr_cleanup_QemuLockable.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.i = icmp ult i32 %1, %i.h
  br i1 %.not.i, label %internal_fd_trans_register_unsafe.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = and i32 %1, -64
  %i.o = add i32 %i.n, 64                         ; 2 uses
  store i32 %i.o, ptr @target_fd_max, align 4
  %i.p = zext i32 %i.o to i64
  %i.q = tail call ptr @g_realloc_n(ptr noundef nonnull %i.j, i64 noundef %i.p, i64 noundef 8) #29 ; 2 uses
  store ptr %i.q, ptr @target_fd_trans, align 8
  %i.r = zext i32 %i.h to i64
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.r
  %i.t = load i32, ptr @target_fd_max, align 4
  %i.u = sub i32 %i.t, %i.h
  %i.v = zext i32 %i.u to i64
  %i.w = shl nuw nsw i64 %i.v, 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.s, i8 noundef 0, i64 noundef %i.w, i1 noundef false) #29
  %.pre6 = load ptr, ptr @target_fd_trans, align 8
  br label %internal_fd_trans_register_unsafe.exit

internal_fd_trans_register_unsafe.exit:           ; preds = %bb.d, %bb.e
  %i.x = phi ptr [ %i.j, %bb.d ], [ %.pre6, %bb.e ]
  %i.y = sext i32 %1 to i64
  %i.z = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.y
  store ptr %i.m, ptr %i.z, align 8
  br label %glib_autoptr_cleanup_QemuLockable.exit

glib_autoptr_cleanup_QemuLockable.exit:           ; preds = %internal_fd_trans_register_unsafe.exit, %bb.c, %internal_fd_trans_unregister_unsafe.exit
  tail call void @qemu_mutex_unlock_impl(ptr noundef nonnull @target_fd_trans_lock, ptr noundef nonnull @.str.642, i32 noundef 56) #29
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i64 -2147483648, 2147483648) i64 @do_pipe(i64 noundef %0, i32 noundef %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [2 x i32], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i64 0, ptr %i.a, align 8, !annotation !18
  %i.b = call i32 @pipe2(ptr noundef nonnull %i.a, i32 noundef %1) #29 ; 3 uses
  %i.c = sext i32 %i.b to i64                     ; 2 uses
  %i.d = icmp ult i32 %i.b, -4096
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i32 %i.b, -1
  br i1 %i.e, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.f = tail call ptr @__errno_location() #28
  %i.g = load i32, ptr %i.f, align 4
  %i.h = sub i32 0, %i.g
  %i.i = sext i32 %i.h to i64
  br label %.critedge

bb.d:                                             ; preds = %bb.a
  %i.j = call ptr @lock_user(i32 noundef 3, i64 noundef %0, i64 noundef 4, i1 noundef zeroext false) #29 ; 2 uses
  %.not23.not = icmp eq ptr %i.j, null
  br i1 %.not23.not, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = load i32, ptr %i.a, align 8
  store i32 %i.k, ptr %i.j, align 1
  %i.l = add i64 %0, 4
  %i.m = call ptr @lock_user(i32 noundef 3, i64 noundef %i.l, i64 noundef 4, i1 noundef zeroext false) #29 ; 2 uses
  %.not25.not = icmp eq ptr %i.m, null
  br i1 %.not25.not, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.o = load i32, ptr %i.n, align 4
  store i32 %i.o, ptr %i.m, align 1
  br label %.critedge

.critedge:                                        ; preds = %bb.f, %bb.c, %bb.b, %bb.d, %bb.e
  %.0 = phi i64 [ -14, %bb.d ], [ %i.c, %bb.b ], [ -14, %bb.e ], [ %i.i, %bb.c ], [ %i.c, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  ret i64 %.0
}

; Function Attrs: nofree nounwind
declare noundef i64 @times(ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nounwind
declare i32 @acct(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @umount2(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @do_ioctl(i32 noundef %0, i32 noundef %1, i64 noundef %2) unnamed_addr #2 {
bb.a:
  %i.a = alloca [4096 x i8], align 16             ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.b = load i32, ptr @ioctl_entries, align 16   ; 2 uses
end_hunk_11
begin_hunk_12_@do_recvfrom:bb.a
  %i.o = getelementptr i8, ptr %i.n, i64 608
  %.val.i84 = load ptr, ptr %i.o, align 16
  %i.p = getelementptr inbounds nuw i8, ptr %.val.i84, i64 9148
  %i.q = tail call i64 (ptr, i64, ...) @safe_syscall_base(ptr noundef nonnull %i.p, i64 noundef 45, i32 noundef %0, ptr noundef %.063, i64 noundef %2, i32 noundef %3, ptr noundef null, ptr noundef null) #29 ; 2 uses
  %i.r = icmp eq i64 %i.q, -1
  br i1 %i.r, label %get_errno.exit.sink.split, label %get_errno.exit

get_errno.exit.sink.split:                        ; preds = %bb.g, %bb.f
  %.062.ph = phi ptr [ %i.f, %bb.f ], [ null, %bb.g ]
  %.1.ph = phi i32 [ %.val, %bb.f ], [ 0, %bb.g ]
  %i.s = tail call ptr @__errno_location() #28
  %i.t = load i32, ptr %i.s, align 4
  %i.u = sub i32 0, %i.t
  %i.v = sext i32 %i.u to i64
  br label %get_errno.exit

get_errno.exit:                                   ; preds = %get_errno.exit.sink.split, %bb.g, %bb.f
  %.064 = phi i64 [ %i.k, %bb.f ], [ %i.q, %bb.g ], [ %i.v, %get_errno.exit.sink.split ] ; 6 uses
  %.062 = phi ptr [ %i.f, %bb.f ], [ null, %bb.g ], [ %.062.ph, %get_errno.exit.sink.split ] ; 3 uses
  %.1 = phi i32 [ %.val, %bb.f ], [ 0, %bb.g ], [ %.1.ph, %get_errno.exit.sink.split ]
  %i.w = icmp ult i64 %.064, -4096
  br i1 %i.w, label %bb.h, label %.critedge

bb.h:                                             ; preds = %get_errno.exit
  %i.x = icmp slt i32 %0, 0
  br i1 %i.x, label %fd_trans_host_to_target_data.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = load atomic ptr, ptr @qemu_mutex_lock_func monotonic, align 8
  call void %i.y(ptr noundef nonnull @target_fd_trans_lock, ptr noundef nonnull @.str.642, i32 noundef 56) #29, !inline_history !7
  %i.z = load i32, ptr @target_fd_max, align 4
  %i.aa = icmp ult i32 %0, %i.z
  br i1 %i.aa, label %bb.j, label %fd_trans_host_to_target_data.exit.thread97

bb.j:                                             ; preds = %bb.i
  %i.ab = load ptr, ptr @target_fd_trans, align 8
  %i.ac = zext nneg i32 %0 to i64                 ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.ac
  %i.ae = load ptr, ptr %i.ad, align 8            ; 2 uses
  %.not.i = icmp eq ptr %i.ae, null
  br i1 %.not.i, label %fd_trans_host_to_target_data.exit.thread97, label %fd_trans_host_to_target_data.exit

fd_trans_host_to_target_data.exit.thread97:       ; preds = %bb.j, %bb.i
  call void @qemu_mutex_unlock_impl(ptr noundef nonnull @target_fd_trans_lock, ptr noundef nonnull @.str.642, i32 noundef 56) #29
  br label %fd_trans_host_to_target_data.exit.thread

fd_trans_host_to_target_data.exit:                ; preds = %bb.j
  %i.af = load ptr, ptr %i.ae, align 8
  call void @qemu_mutex_unlock_impl(ptr noundef nonnull @target_fd_trans_lock, ptr noundef nonnull @.str.642, i32 noundef 56) #29
  %.not78 = icmp eq ptr %i.af, null
  br i1 %.not78, label %fd_trans_host_to_target_data.exit.thread, label %bb.k

bb.k:                                             ; preds = %fd_trans_host_to_target_data.exit
  %i.ag = load atomic ptr, ptr @qemu_mutex_lock_func monotonic, align 8
  call void %i.ag(ptr noundef nonnull @target_fd_trans_lock, ptr noundef nonnull @.str.642, i32 noundef 56) #29, !inline_history !7
  %i.ah = load i32, ptr @target_fd_max, align 4
  %i.ai = icmp ult i32 %0, %i.ah
  br i1 %i.ai, label %bb.l, label %fd_trans_host_to_target_data.exit92

bb.l:                                             ; preds = %bb.k
  %i.aj = load ptr, ptr @target_fd_trans, align 8
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ac
  %i.al = load ptr, ptr %i.ak, align 8            ; 2 uses
  %.not.i91 = icmp eq ptr %i.al, null
  br i1 %.not.i91, label %fd_trans_host_to_target_data.exit92, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.am = load ptr, ptr %i.al, align 8
  br label %fd_trans_host_to_target_data.exit92

fd_trans_host_to_target_data.exit92:              ; preds = %bb.k, %bb.l, %bb.m
  %.0.i89 = phi ptr [ %i.am, %bb.m ], [ null, %bb.l ], [ null, %bb.k ]
  call void @qemu_mutex_unlock_impl(ptr noundef nonnull @target_fd_trans_lock, ptr noundef nonnull @.str.642, i32 noundef 56) #29
  %i.an = call i64 @llvm.umin.i64(i64 %.064, i64 %2)
  %i.ao = call i64 %.0.i89(ptr noundef %.063, i64 noundef %i.an) #29 ; 2 uses
  %i.ap = icmp ugt i64 %i.ao, -4097               ; 2 uses
  %brmerge = or i1 %.not74, %i.ap
  %.mux = select i1 %i.ap, i64 %i.ao, i64 %.064
  br i1 %brmerge, label %.critedge, label %bb.n

fd_trans_host_to_target_data.exit.thread:         ; preds = %bb.h, %fd_trans_host_to_target_data.exit.thread97, %fd_trans_host_to_target_data.exit
  br i1 %.not74, label %.critedge, label %bb.n

bb.n:                                             ; preds = %fd_trans_host_to_target_data.exit92, %fd_trans_host_to_target_data.exit.thread
  %i.aq = load i32, ptr %i.a, align 4
  %i.ar = call i32 @llvm.umin.i32(i32 %.1, i32 %i.aq) ; 5 uses
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %host_to_target_sockaddr.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.not.i93 = icmp eq ptr %.062, null
  br i1 %.not.i93, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @__assert_fail(ptr noundef nonnull @.str.647, ptr noundef nonnull @.str.584, i32 noundef 1746, ptr noundef nonnull @__PRETTY_FUNCTION__.host_to_target_sockaddr) #30
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.at = zext nneg i32 %i.ar to i64              ; 2 uses
  %i.au = call ptr @lock_user(i32 noundef 3, i64 noundef %4, i64 noundef %i.at, i1 noundef zeroext false) #29 ; 4 uses
  %.not41.i = icmp eq ptr %i.au, null
  br i1 %.not41.i, label %host_to_target_sockaddr.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.au, ptr noundef nonnull readonly align 1 %.062, i64 noundef %i.at, i1 noundef false) #29
  %.not42.i = icmp eq i32 %i.ar, 1
  %i.av = load i16, ptr %.062, align 2            ; 4 uses
  br i1 %.not42.i, label %host_to_target_sockaddr.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  store i16 %i.av, ptr %i.au, align 2
  %i.aw = icmp eq i16 %i.av, 16
  %i.ax = icmp samesign ugt i32 %i.ar, 11
  %or.cond.i = and i1 %i.ax, %i.aw
  %i.ay = icmp eq i16 %i.av, 17
  %or.cond = or i1 %i.ay, %or.cond.i
  br i1 %or.cond, label %host_to_target_sockaddr.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.az = icmp eq i16 %i.av, 10
  %i.ba = icmp samesign ugt i32 %i.ar, 27
  %or.cond5.i = and i1 %i.ba, %i.az
  br i1 %or.cond5.i, label %bb.u, label %host_to_target_sockaddr.exit

bb.u:                                             ; preds = %bb.t
  %i.bb = getelementptr inbounds nuw i8, ptr %i.au, i64 24 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4
  %i.bd = and i32 %i.bc, 65535
  store i32 %i.bd, ptr %i.bb, align 4
  br label %host_to_target_sockaddr.exit

host_to_target_sockaddr.exit:                     ; preds = %bb.r, %bb.n, %bb.q, %bb.s, %bb.t, %bb.u
  %i.be = call ptr @lock_user(i32 noundef 3, i64 noundef %5, i64 noundef 4, i1 noundef zeroext false) #29 ; 2 uses
  %.not80.not = icmp eq ptr %i.be, null
  br i1 %.not80.not, label %.critedge, label %bb.v

bb.v:                                             ; preds = %host_to_target_sockaddr.exit
  %i.bf = load i32, ptr %i.a, align 4
  store i32 %i.bf, ptr %i.be, align 1
  br label %.critedge

.critedge:                                        ; preds = %fd_trans_host_to_target_data.exit92, %get_errno.exit, %bb.e, %bb.d, %host_to_target_sockaddr.exit, %fd_trans_host_to_target_data.exit.thread, %bb.v, %bb.b
  %.0 = phi i64 [ -14, %bb.b ], [ %.064, %fd_trans_host_to_target_data.exit.thread ], [ %.064, %bb.v ], [ %.mux, %fd_trans_host_to_target_data.exit92 ], [ -14, %bb.d ], [ %.064, %get_errno.exit ], [ -22, %bb.e ], [ -14, %host_to_target_sockaddr.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @do_sendrecvmsg(i32 noundef %0, i64 noundef %1, i32 noundef %2, i32 noundef range(i32 0, 2) %3) unnamed_addr #2 {
bb.a:
  %i.a = icmp ne i32 %3, 0                        ; 2 uses
  %i.b = select i1 %i.a, i32 1, i32 3
  %i.c = tail call ptr @lock_user(i32 noundef %i.b, i64 noundef %1, i64 noundef 56, i1 noundef zeroext %i.a) #29 ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call fastcc i64 @do_sendrecvmsg_locked(i32 noundef %0, ptr noundef %i.c, i32 noundef %2, i32 noundef %3)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ %i.d, %bb.b ], [ -14, %bb.a ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @do_sendrecvmmsg(i32 noundef %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef range(i32 0, 2) %4) unnamed_addr #2 {
bb.a:
  %spec.store.select = tail call i32 @llvm.umin.i32(i32 %2, i32 1024) ; 3 uses
  %i.a = shl nuw nsw i32 %spec.store.select, 6
  %i.b = zext nneg i32 %i.a to i64
  %i.c = tail call ptr @lock_user(i32 noundef 3, i64 noundef %1, i64 noundef %i.b, i1 noundef zeroext true) #29 ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %._crit_edge.thread, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.not38 = icmp eq i32 %2, 0
  br i1 %.not38, label %._crit_edge.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %spec.store.select to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %.02632 = phi i32 [ %3, %.lr.ph.preheader ], [ %spec.select, %bb.b ] ; 3 uses
  %i.d = getelementptr inbounds nuw [64 x i8], ptr %i.c, i64 %indvars.iv ; 2 uses
  %i.e = tail call fastcc i64 @do_sendrecvmsg_locked(i32 noundef %0, ptr noundef %i.d, i32 noundef %.02632, i32 noundef %4) ; 3 uses
  %i.f = icmp ult i64 %i.e, -4096
  br i1 %i.f, label %bb.b, label %._crit_edge.split.loop.exit46

bb.b:                                             ; preds = %.lr.ph
  %i.g = trunc i64 %i.e to i32
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store i32 %i.g, ptr %i.h, align 8
  %i.i = lshr i32 %.02632, 10
  %i.j = and i32 %i.i, 64
  %spec.select = or i32 %i.j, %.02632
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !63

._crit_edge.split.loop.exit46:                    ; preds = %.lr.ph
  %i.k = trunc i64 %indvars.iv to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %._crit_edge.split.loop.exit46
  %.0.lcssa = phi i32 [ %i.k, %._crit_edge.split.loop.exit46 ], [ %spec.store.select, %bb.b ] ; 2 uses
  %i.l = sext i32 %.0.lcssa to i64
  %.not31 = icmp eq i32 %.0.lcssa, 0
  %spec.select49 = select i1 %.not31, i64 %i.e, i64 %i.l
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %._crit_edge, %.preheader, %bb.a
  %.025 = phi i64 [ -14, %bb.a ], [ %spec.select49, %._crit_edge ], [ 0, %.preheader ]
  ret i64 %.025
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @do_sendto(i32 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, i64 noundef %4, i32 noundef %5) unnamed_addr #2 {
bb.a:
  %i.a = icmp slt i32 %5, 0
  br i1 %i.a, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %fd_trans_target_to_host_data.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = tail call ptr @lock_user(i32 noundef 1, i64 noundef %1, i64 noundef %2, i1 noundef zeroext true) #29 ; 5 uses
  %.not48 = icmp eq ptr %i.b, null
  br i1 %.not48, label %bb.m, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = icmp slt i32 %0, 0
  br i1 %i.c, label %fd_trans_target_to_host_data.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = load atomic ptr, ptr @qemu_mutex_lock_func monotonic, align 8
  tail call void %i.d(ptr noundef nonnull @target_fd_trans_lock, ptr noundef nonnull @.str.642, i32 noundef 56) #29, !inline_history !8
  %i.e = load i32, ptr @target_fd_max, align 4
  %i.f = icmp ult i32 %0, %i.e
  br i1 %i.f, label %bb.f, label %fd_trans_target_to_host_data.exit.thread64

bb.f:                                             ; preds = %bb.e
  %i.g = load ptr, ptr @target_fd_trans, align 8
  %i.h = zext nneg i32 %0 to i64                  ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.h
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %fd_trans_target_to_host_data.exit.thread64, label %fd_trans_target_to_host_data.exit

fd_trans_target_to_host_data.exit.thread64:       ; preds = %bb.f, %bb.e
  tail call void @qemu_mutex_unlock_impl(ptr noundef nonnull @target_fd_trans_lock, ptr noundef nonnull @.str.642, i32 noundef 56) #29
  br label %fd_trans_target_to_host_data.exit.thread

fd_trans_target_to_host_data.exit:                ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  tail call void @qemu_mutex_unlock_impl(ptr noundef nonnull @target_fd_trans_lock, ptr noundef nonnull @.str.642, i32 noundef 56) #29
  %.not49 = icmp eq ptr %i.l, null
  br i1 %.not49, label %fd_trans_target_to_host_data.exit.thread, label %bb.g

bb.g:                                             ; preds = %fd_trans_target_to_host_data.exit
  %i.m = tail call noalias ptr @g_malloc(i64 noundef %2) #31 ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.m, ptr noundef nonnull align 1 %i.b, i64 noundef %2, i1 noundef false) #29
  %i.n = load atomic ptr, ptr @qemu_mutex_lock_func monotonic, align 8
  tail call void %i.n(ptr noundef nonnull @target_fd_trans_lock, ptr noundef nonnull @.str.642, i32 noundef 56) #29, !inline_history !8
  %i.o = load i32, ptr @target_fd_max, align 4
  %i.p = icmp ult i32 %0, %i.o
  br i1 %i.p, label %bb.h, label %fd_trans_target_to_host_data.exit57

bb.h:                                             ; preds = %bb.g
  %i.q = load ptr, ptr @target_fd_trans, align 8
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.h
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %.not.i56 = icmp eq ptr %i.s, null
  br i1 %.not.i56, label %fd_trans_target_to_host_data.exit57, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  br label %fd_trans_target_to_host_data.exit57

fd_trans_target_to_host_data.exit57:              ; preds = %bb.g, %bb.h, %bb.i
  %.0.i54 = phi ptr [ %i.u, %bb.i ], [ null, %bb.h ], [ null, %bb.g ]
  tail call void @qemu_mutex_unlock_impl(ptr noundef nonnull @target_fd_trans_lock, ptr noundef nonnull @.str.642, i32 noundef 56) #29
  %i.v = tail call i64 %.0.i54(ptr noundef nonnull %i.m, i64 noundef %2) #29 ; 2 uses
  %i.w = icmp slt i64 %i.v, 0
  br i1 %i.w, label %get_errno.exit.thread, label %fd_trans_target_to_host_data.exit.thread

fd_trans_target_to_host_data.exit.thread:         ; preds = %bb.d, %fd_trans_target_to_host_data.exit.thread64, %fd_trans_target_to_host_data.exit, %fd_trans_target_to_host_data.exit57, %bb.b
  %.039 = phi ptr [ %i.m, %fd_trans_target_to_host_data.exit57 ], [ %i.b, %fd_trans_target_to_host_data.exit ], [ null, %bb.b ], [ %i.b, %fd_trans_target_to_host_data.exit.thread64 ], [ %i.b, %bb.d ] ; 3 uses
  %.038 = phi i1 [ false, %fd_trans_target_to_host_data.exit57 ], [ true, %fd_trans_target_to_host_data.exit ], [ true, %bb.b ], [ true, %fd_trans_target_to_host_data.exit.thread64 ], [ true, %bb.d ]
  %.not50 = icmp eq i64 %4, 0
  br i1 %.not50, label %bb.l, label %bb.j

bb.j:                                             ; preds = %fd_trans_target_to_host_data.exit.thread
  %i.x = add nuw i32 %5, 1
  %i.y = zext i32 %i.x to i64                     ; 2 uses
  %i.z = alloca i8, i64 %i.y, align 16            ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.z, i8 0, i64 %i.y, i1 false), !annotation !18
  %i.aa = call fastcc i64 @target_to_host_sockaddr(i32 noundef %0, ptr noundef %i.z, i64 noundef %4, i32 noundef %5) ; 2 uses
  %.not51 = icmp eq i64 %i.aa, 0
  br i1 %.not51, label %bb.k, label %get_errno.exit

bb.k:                                             ; preds = %bb.j
  %i.ab = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @thread_cpu)
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = getelementptr i8, ptr %i.ac, i64 608
  %.val.i = load ptr, ptr %i.ad, align 16
  %i.ae = getelementptr inbounds nuw i8, ptr %.val.i, i64 9148
  %i.af = call i64 (ptr, i64, ...) @safe_syscall_base(ptr noundef nonnull %i.ae, i64 noundef 44, i32 noundef %0, ptr noundef %.039, i64 noundef %2, i32 noundef %3, ptr noundef nonnull %i.z, i32 noundef range(i32 0, -2147483648) %5) #29 ; 2 uses
  %i.ag = icmp eq i64 %i.af, -1
  br i1 %i.ag, label %get_errno.exit.sink.split, label %get_errno.exit

bb.l:                                             ; preds = %fd_trans_target_to_host_data.exit.thread
  %i.ah = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @thread_cpu)
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = getelementptr i8, ptr %i.ai, i64 608
  %.val.i59 = load ptr, ptr %i.aj, align 16
  %i.ak = getelementptr inbounds nuw i8, ptr %.val.i59, i64 9148
  %i.al = tail call i64 (ptr, i64, ...) @safe_syscall_base(ptr noundef nonnull %i.ak, i64 noundef 44, i32 noundef %0, ptr noundef %.039, i64 noundef %2, i32 noundef %3, ptr noundef null, i32 noundef 0) #29 ; 2 uses
  %i.am = icmp eq i64 %i.al, -1
  br i1 %i.am, label %get_errno.exit.sink.split, label %get_errno.exit

get_errno.exit.sink.split:                        ; preds = %bb.l, %bb.k
  %i.an = tail call ptr @__errno_location() #28
  %i.ao = load i32, ptr %i.an, align 4
  %i.ap = sub i32 0, %i.ao
  %i.aq = sext i32 %i.ap to i64
  br label %get_errno.exit

get_errno.exit:                                   ; preds = %get_errno.exit.sink.split, %bb.l, %bb.k, %bb.j
  %.0 = phi i64 [ %i.al, %bb.l ], [ %i.aa, %bb.j ], [ %i.af, %bb.k ], [ %i.aq, %get_errno.exit.sink.split ] ; 2 uses
  br i1 %.038, label %bb.m, label %get_errno.exit.thread

get_errno.exit.thread:                            ; preds = %fd_trans_target_to_host_data.exit57, %get_errno.exit
  %.072 = phi i64 [ %.0, %get_errno.exit ], [ %i.v, %fd_trans_target_to_host_data.exit57 ]
  %.14071 = phi ptr [ %.039, %get_errno.exit ], [ %i.m, %fd_trans_target_to_host_data.exit57 ]
  call void @g_free(ptr noundef %.14071) #29
  br label %bb.m

bb.m:                                             ; preds = %get_errno.exit, %get_errno.exit.thread, %bb.c, %bb.a
  %.041 = phi i64 [ -22, %bb.a ], [ -14, %bb.c ], [ %.072, %get_errno.exit.thread ], [ %.0, %get_errno.exit ]
  ret i64 %.041
}

; Function Attrs: nounwind
declare i32 @shutdown(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i64 -2147483648, 2147483648) i64 @do_socket(i32 noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #2 {
bb.a:
  %.2.i = and i32 %1, 526351                      ; 3 uses
  switch i32 %0, label %bb.b [
    i32 16, label %switch.early.test
    i32 17, label %bb.c
  ]

switch.early.test:                                ; preds = %bb.a
  switch i32 %2, label %bb.m [
    i32 15, label %.thread
    i32 9, label %.thread
    i32 0, label %.thread
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = icmp eq i32 %0, 2
  %i.b = icmp eq i32 %.2.i, 10
  %or.cond7 = and i1 %i.a, %i.b
  br i1 %or.cond7, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = and i32 %2, 65535
  br label %.thread

.thread:                                          ; preds = %switch.early.test, %switch.early.test, %switch.early.test, %bb.c, %bb.b
  %.028 = phi i32 [ %i.c, %bb.c ], [ %2, %bb.b ], [ %2, %switch.early.test ], [ %2, %switch.early.test ], [ %2, %switch.early.test ] ; 2 uses
  %i.d = tail call i32 @socket(i32 noundef %0, i32 noundef %.2.i, i32 noundef %.028) #29 ; 2 uses
  %i.e = icmp eq i32 %i.d, -1
  br i1 %i.e, label %bb.d, label %get_errno.exit

bb.d:                                             ; preds = %.thread
  %i.f = tail call ptr @__errno_location() #28
  %i.g = load i32, ptr %i.f, align 4
  %i.h = sub i32 0, %i.g
  br label %get_errno.exit

get_errno.exit:                                   ; preds = %.thread, %bb.d
  %.0.i.in = phi i32 [ %i.h, %bb.d ], [ %i.d, %.thread ] ; 7 uses
  %i.i = icmp sgt i32 %.0.i.in, -1
  br i1 %i.i, label %bb.e, label %bb.l

bb.e:                                             ; preds = %get_errno.exit
  %i.j = icmp eq i32 %.2.i, 10
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.k = load atomic ptr, ptr @qemu_mutex_lock_func monotonic, align 8
  tail call void %i.k(ptr noundef nonnull @target_fd_trans_lock, ptr noundef nonnull @.str.642, i32 noundef 56) #29, !inline_history !9
end_hunk_12
begin_hunk_13_@do_setsockopt:bb.a
bb.aw:                                            ; preds = %bb.av
  %i.cm = tail call i32 @setsockopt(i32 noundef %0, i32 noundef 279, i32 noundef 1, ptr noundef nonnull %i.cl, i32 noundef %4) #29 ; 2 uses
  %i.cn = sext i32 %i.cm to i64
  %i.co = icmp eq i32 %i.cm, -1
  br i1 %i.co, label %bb.ax, label %get_errno.exit336

bb.ax:                                            ; preds = %bb.aw
  %i.cp = tail call ptr @__errno_location() #28
  %i.cq = load i32, ptr %i.cp, align 4
  %i.cr = sub i32 0, %i.cq
  %i.cs = sext i32 %i.cr to i64
  br label %get_errno.exit336

bb.ay:                                            ; preds = %bb.au
  %i.ct = tail call i32 @setsockopt(i32 noundef %0, i32 noundef 279, i32 noundef 5, ptr noundef null, i32 noundef %4) #29 ; 2 uses
  %i.cu = sext i32 %i.ct to i64
  %i.cv = icmp eq i32 %i.ct, -1
  br i1 %i.cv, label %bb.az, label %get_errno.exit336

bb.az:                                            ; preds = %bb.ay
  %i.cw = tail call ptr @__errno_location() #28
  %i.cx = load i32, ptr %i.cw, align 4
  %i.cy = sub i32 0, %i.cx
  %i.cz = sext i32 %i.cy to i64
  br label %get_errno.exit336

bb.ba:                                            ; preds = %bb.a
  switch i32 %2, label %bb.cf [
    i32 20, label %bb.bb
    i32 21, label %bb.bb
    i32 66, label %bb.bf
    i32 67, label %bb.bf
    i32 26, label %bb.bj
    i32 25, label %bb.bp
    i32 13, label %bb.bs
    i32 1, label %bb.bw
    i32 2, label %bb.bw
    i32 15, label %bb.bw
    i32 3, label %bb.bw
    i32 4, label %bb.bw
    i32 5, label %bb.bw
    i32 6, label %bb.bw
    i32 7, label %bb.bw
    i32 32, label %bb.bw
    i32 8, label %bb.bw
    i32 33, label %bb.bw
    i32 9, label %bb.bw
    i32 10, label %bb.bw
    i32 11, label %bb.bw
    i32 12, label %bb.bw
    i32 14, label %bb.bw
    i32 16, label %bb.bw
    i32 34, label %bb.bw
    i32 29, label %bb.bw
    i32 18, label %bb.bw
  ]

bb.bb:                                            ; preds = %bb.ba, %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  %.not303 = icmp eq i32 %4, 16
  br i1 %.not303, label %bb.bc, label %copy_from_user_timeval.exit

bb.bc:                                            ; preds = %bb.bb
  %i.da = tail call ptr @lock_user(i32 noundef 1, i64 noundef %3, i64 noundef 16, i1 noundef zeroext true) #29 ; 2 uses
  %.not.i = icmp eq ptr %i.da, null
  br i1 %.not.i, label %copy_from_user_timeval.exit, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.db = load <2 x i64>, ptr %i.da, align 1
  store <2 x i64> %i.db, ptr %9, align 16
  %i.dc = icmp eq i32 %2, 20
  %i.dd = select i1 %i.dc, i32 20, i32 21
  %i.de = call i32 @setsockopt(i32 noundef %0, i32 noundef 1, i32 noundef %i.dd, ptr noundef nonnull %9, i32 noundef 16) #29 ; 2 uses
  %i.df = sext i32 %i.de to i64
  %i.dg = icmp eq i32 %i.de, -1
  br i1 %i.dg, label %bb.be, label %copy_from_user_timeval.exit

bb.be:                                            ; preds = %bb.bd
  %i.dh = tail call ptr @__errno_location() #28
  %i.di = load i32, ptr %i.dh, align 4
  %i.dj = sub i32 0, %i.di
  %i.dk = sext i32 %i.dj to i64
  br label %copy_from_user_timeval.exit

copy_from_user_timeval.exit:                      ; preds = %bb.be, %bb.bd, %bb.bc, %bb.bb
  %.6 = phi i64 [ -14, %bb.bc ], [ -22, %bb.bb ], [ %i.dk, %bb.be ], [ %i.df, %bb.bd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  br label %get_errno.exit336

bb.bf:                                            ; preds = %bb.ba, %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #29
  %.not301 = icmp eq i32 %4, 16
  br i1 %.not301, label %bb.bg, label %copy_from_user_timeval64.exit

bb.bg:                                            ; preds = %bb.bf
  %i.dl = tail call ptr @lock_user(i32 noundef 1, i64 noundef %3, i64 noundef 16, i1 noundef zeroext true) #29 ; 2 uses
  %.not.i354 = icmp eq ptr %i.dl, null
  br i1 %.not.i354, label %copy_from_user_timeval64.exit, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.dm = load <2 x i64>, ptr %i.dl, align 1
  store <2 x i64> %i.dm, ptr %10, align 16
  %i.dn = icmp eq i32 %2, 66
  %i.do = select i1 %i.dn, i32 20, i32 21
  %i.dp = call i32 @setsockopt(i32 noundef %0, i32 noundef 1, i32 noundef %i.do, ptr noundef nonnull %10, i32 noundef 16) #29 ; 2 uses
  %i.dq = sext i32 %i.dp to i64
  %i.dr = icmp eq i32 %i.dp, -1
  br i1 %i.dr, label %bb.bi, label %copy_from_user_timeval64.exit

bb.bi:                                            ; preds = %bb.bh
  %i.ds = tail call ptr @__errno_location() #28
  %i.dt = load i32, ptr %i.ds, align 4
  %i.du = sub i32 0, %i.dt
  %i.dv = sext i32 %i.du to i64
  br label %copy_from_user_timeval64.exit

copy_from_user_timeval64.exit:                    ; preds = %bb.bi, %bb.bh, %bb.bg, %bb.bf
  %.7 = phi i64 [ -14, %bb.bg ], [ -22, %bb.bf ], [ %i.dv, %bb.bi ], [ %i.dq, %bb.bh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  br label %get_errno.exit336

bb.bj:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #29
  store i64 0, ptr %11, align 8, !annotation !18
  %.not298 = icmp eq i32 %4, 16
  br i1 %.not298, label %bb.bk, label %bb.bo

bb.bk:                                            ; preds = %bb.bj
  %i.dw = tail call ptr @lock_user(i32 noundef 1, i64 noundef %3, i64 noundef 16, i1 noundef zeroext false) #29 ; 3 uses
  %.not299 = icmp eq ptr %i.dw, null
  br i1 %.not299, label %bb.bo, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.dy = load i64, ptr %i.dx, align 8
  %i.dz = tail call ptr @lock_user(i32 noundef 1, i64 noundef %i.dy, i64 noundef 8, i1 noundef zeroext false) #29 ; 4 uses
  %.not300 = icmp eq ptr %i.dz, null
  br i1 %.not300, label %bb.bo, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ea = load i16, ptr %i.dw, align 8            ; 6 uses
  store i16 %i.ea, ptr %11, align 8
  %i.eb = zext i16 %i.ea to i64
  %i.ec = tail call noalias ptr @g_try_malloc_n(i64 noundef %i.eb, i64 noundef 8) #35 ; 6 uses
  %i.ed = icmp eq ptr %i.ec, null
  br i1 %i.ed, label %bb.bo, label %.preheader395

.preheader395:                                    ; preds = %bb.bm
  %.not397 = icmp eq i16 %i.ea, 0
  br i1 %.not397, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader395
  %wide.trip.count = zext i16 %i.ea to i64        ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.ee = icmp eq i16 %i.ea, 1
  br i1 %i.ee, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 65534
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %indvars.iv ; 4 uses
  %i.eg = load i16, ptr %i.ef, align 4
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %indvars.iv ; 4 uses
  store i16 %i.eg, ptr %i.eh, align 4
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ef, i64 2
  %i.ej = load i8, ptr %i.ei, align 2
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eh, i64 2
  store i8 %i.ej, ptr %i.ek, align 2
  %i.el = getelementptr inbounds nuw i8, ptr %i.ef, i64 3
  %i.em = load i8, ptr %i.el, align 1
  %i.en = getelementptr inbounds nuw i8, ptr %i.eh, i64 3
  store i8 %i.em, ptr %i.en, align 1
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ef, i64 4
  %i.ep = load i32, ptr %i.eo, align 4
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eh, i64 4
  store i32 %i.ep, ptr %i.eq, align 4
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %indvars.iv.next ; 4 uses
  %i.es = load i16, ptr %i.er, align 4
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %indvars.iv.next ; 4 uses
  store i16 %i.es, ptr %i.et, align 4
  %i.eu = getelementptr inbounds nuw i8, ptr %i.er, i64 2
  %i.ev = load i8, ptr %i.eu, align 2
  %i.ew = getelementptr inbounds nuw i8, ptr %i.et, i64 2
  store i8 %i.ev, ptr %i.ew, align 2
  %i.ex = getelementptr inbounds nuw i8, ptr %i.er, i64 3
  %i.ey = load i8, ptr %i.ex, align 1
  %i.ez = getelementptr inbounds nuw i8, ptr %i.et, i64 3
  store i8 %i.ey, ptr %i.ez, align 1
  %i.fa = getelementptr inbounds nuw i8, ptr %i.er, i64 4
  %i.fb = load i32, ptr %i.fa, align 4
  %i.fc = getelementptr inbounds nuw i8, ptr %i.et, i64 4
  store i32 %i.fb, ptr %i.fc, align 4
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !64

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod421 = trunc i16 %i.ea to i1
  tail call void @llvm.assume(i1 %lcmp.mod421)
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %indvars.iv.epil.init ; 4 uses
  %i.fe = load i16, ptr %i.fd, align 4
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %indvars.iv.epil.init ; 4 uses
  store i16 %i.fe, ptr %i.ff, align 4
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fd, i64 2
  %i.fh = load i8, ptr %i.fg, align 2
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ff, i64 2
  store i8 %i.fh, ptr %i.fi, align 2
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fd, i64 3
  %i.fk = load i8, ptr %i.fj, align 1
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ff, i64 3
  store i8 %i.fk, ptr %i.fl, align 1
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fd, i64 4
  %i.fn = load i32, ptr %i.fm, align 4
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ff, i64 4
  store i32 %i.fn, ptr %i.fo, align 4
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %.preheader395
  %i.fp = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %i.ec, ptr %i.fp, align 8
  %i.fq = call i32 @setsockopt(i32 noundef %0, i32 noundef 1, i32 noundef 26, ptr noundef nonnull %11, i32 noundef 16) #29 ; 2 uses
  %i.fr = icmp eq i32 %i.fq, -1
  br i1 %i.fr, label %bb.bn, label %get_errno.exit361

bb.bn:                                            ; preds = %._crit_edge
  %i.fs = tail call ptr @__errno_location() #28
  %i.ft = load i32, ptr %i.fs, align 4
  %i.fu = sub i32 0, %i.ft
  br label %get_errno.exit361

get_errno.exit361:                                ; preds = %._crit_edge, %bb.bn
  %.0.i360.in = phi i32 [ %i.fu, %bb.bn ], [ %i.fq, %._crit_edge ]
  %.0.i360 = sext i32 %.0.i360.in to i64
  call void @g_free(ptr noundef nonnull %i.ec) #29
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bm, %bb.bl, %bb.bk, %bb.bj, %get_errno.exit361
  %.8 = phi i64 [ -22, %bb.bj ], [ -14, %bb.bl ], [ %.0.i360, %get_errno.exit361 ], [ -14, %bb.bk ], [ -12, %bb.bm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  br label %get_errno.exit336

bb.bp:                                            ; preds = %bb.ba
  %spec.store.select9 = tail call i32 @llvm.umin.i32(i32 %4, i32 15) ; 2 uses
  %i.fv = zext nneg i32 %spec.store.select9 to i64 ; 3 uses
  %i.fw = tail call ptr @lock_user(i32 noundef 1, i64 noundef %3, i64 noundef %i.fv, i1 noundef zeroext true) #29 ; 2 uses
  %.not297 = icmp eq ptr %i.fw, null
  br i1 %.not297, label %get_errno.exit336, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.fx = alloca [16 x i8], align 16              ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.fx, i8 0, i64 16, i1 false), !annotation !18
  %i.fy = call ptr @__memcpy_chk(ptr noundef nonnull %i.fx, ptr noundef nonnull %i.fw, i64 noundef %i.fv, i64 noundef 16) #29, !alias.scope !68 ; 0 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fx, i64 %i.fv
  store i8 0, ptr %i.fz, align 1
  %i.ga = call i32 @setsockopt(i32 noundef %0, i32 noundef 1, i32 noundef 25, ptr noundef nonnull %i.fx, i32 noundef %spec.store.select9) #29 ; 2 uses
  %i.gb = sext i32 %i.ga to i64
  %i.gc = icmp eq i32 %i.ga, -1
  br i1 %i.gc, label %bb.br, label %get_errno.exit336

bb.br:                                            ; preds = %bb.bq
  %i.gd = tail call ptr @__errno_location() #28
  %i.ge = load i32, ptr %i.gd, align 4
  %i.gf = sub i32 0, %i.ge
  %i.gg = sext i32 %i.gf to i64
  br label %get_errno.exit336

bb.bs:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #29
  %.not = icmp eq i32 %4, 8
  br i1 %.not, label %bb.bt, label %get_errno.exit365

bb.bt:                                            ; preds = %bb.bs
  %i.gh = tail call ptr @lock_user(i32 noundef 1, i64 noundef %3, i64 noundef 8, i1 noundef zeroext true) #29 ; 2 uses
  %.not296 = icmp eq ptr %i.gh, null
  br i1 %.not296, label %get_errno.exit365, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.gi = load <2 x i32>, ptr %i.gh, align 1
  store <2 x i32> %i.gi, ptr %12, align 8
  %i.gj = call i32 @setsockopt(i32 noundef %0, i32 noundef 1, i32 noundef 13, ptr noundef nonnull %12, i32 noundef 8) #29 ; 2 uses
  %i.gk = sext i32 %i.gj to i64
  %i.gl = icmp eq i32 %i.gj, -1
  br i1 %i.gl, label %bb.bv, label %get_errno.exit365

bb.bv:                                            ; preds = %bb.bu
  %i.gm = tail call ptr @__errno_location() #28
  %i.gn = load i32, ptr %i.gm, align 4
  %i.go = sub i32 0, %i.gn
  %i.gp = sext i32 %i.go to i64
  br label %get_errno.exit365

get_errno.exit365:                                ; preds = %bb.bv, %bb.bu, %bb.bt, %bb.bs
  %.10 = phi i64 [ -22, %bb.bs ], [ -14, %bb.bt ], [ %i.gp, %bb.bv ], [ %i.gk, %bb.bu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29
  br label %get_errno.exit336

bb.bw:                                            ; preds = %bb.ba, %bb.ba, %bb.ba, %bb.ba, %bb.ba, %bb.ba, %bb.ba, %bb.ba, %bb.ba, %bb.ba, %bb.ba, %bb.ba, %bb.ba, %bb.ba, %bb.ba, %bb.ba, %bb.ba, %bb.ba, %bb.ba, %bb.ba
  %i.gq = icmp ult i32 %4, 4
  br i1 %i.gq, label %get_errno.exit336, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.gr = tail call ptr @lock_user(i32 noundef 1, i64 noundef %3, i64 noundef 4, i1 noundef zeroext true) #29 ; 2 uses
  %.not.not295 = icmp eq ptr %i.gr, null
  br i1 %.not.not295, label %get_errno.exit336, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %.val324 = load i32, ptr %i.gr, align 1
  store i32 %.val324, ptr %i.a, align 4
  %i.gs = call i32 @setsockopt(i32 noundef %0, i32 noundef 1, i32 noundef %2, ptr noundef nonnull %i.a, i32 noundef 4) #29 ; 2 uses
  %i.gt = sext i32 %i.gs to i64
  %i.gu = icmp eq i32 %i.gs, -1
  br i1 %i.gu, label %bb.bz, label %get_errno.exit336

bb.bz:                                            ; preds = %bb.by
  %i.gv = tail call ptr @__errno_location() #28
  %i.gw = load i32, ptr %i.gv, align 4
  %i.gx = sub i32 0, %i.gw
  %i.gy = sext i32 %i.gx to i64
  br label %get_errno.exit336

bb.ca:                                            ; preds = %bb.a
  switch i32 %2, label %bb.cf [
    i32 3, label %bb.cb
    i32 1, label %bb.cb
    i32 2, label %bb.cb
    i32 4, label %bb.cb
    i32 5, label %bb.cb
    i32 8, label %bb.cb
    i32 10, label %bb.cb
    i32 11, label %bb.cb
    i32 12, label %bb.cb
  ]

bb.cb:                                            ; preds = %bb.ca, %bb.ca, %bb.ca, %bb.ca, %bb.ca, %bb.ca, %bb.ca, %bb.ca, %bb.ca
  %i.gz = icmp ult i32 %4, 4
  br i1 %i.gz, label %get_errno.exit336, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.ha = tail call ptr @lock_user(i32 noundef 1, i64 noundef %3, i64 noundef 4, i1 noundef zeroext true) #29 ; 2 uses
  %.not.not = icmp eq ptr %i.ha, null
  br i1 %.not.not, label %get_errno.exit336, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %.val323 = load i32, ptr %i.ha, align 1
  store i32 %.val323, ptr %i.a, align 4
  %i.hb = call i32 @setsockopt(i32 noundef %0, i32 noundef 270, i32 noundef %2, ptr noundef nonnull %i.a, i32 noundef 4) #29 ; 2 uses
  %i.hc = sext i32 %i.hb to i64
  %i.hd = icmp eq i32 %i.hb, -1
  br i1 %i.hd, label %bb.ce, label %get_errno.exit336

bb.ce:                                            ; preds = %bb.cd
  %i.he = tail call ptr @__errno_location() #28
  %i.hf = load i32, ptr %i.he, align 4
  %i.hg = sub i32 0, %i.hf
  %i.hh = sext i32 %i.hg to i64
  br label %get_errno.exit336

bb.cf:                                            ; preds = %bb.f, %bb.z, %bb.am, %bb.ap, %bb.au, %bb.ba, %bb.ca, %bb.a
  %i.hi = load i32, ptr @qemu_loglevel, align 4
  %i.hj = and i32 %i.hi, 1024
  %.not394 = icmp eq i32 %i.hj, 0
  br i1 %.not394, label %get_errno.exit336, label %bb.cg, !prof !22

bb.cg:                                            ; preds = %bb.cf
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.652, i32 noundef %1, i32 noundef %2) #29
  br label %get_errno.exit336

get_errno.exit336:                                ; preds = %bb.cc, %bb.bx, %bb.ar, %bb.ab, %bb.k, %bb.h, %bb.c, %get_errno.exit344, %bb.aw, %bb.ax, %bb.y, %bb.x, %bb.cg, %bb.cf, %bb.d, %bb.e, %bb.m, %bb.n, %get_errno.exit334.thread, %bb.ac, %bb.ad, %get_errno.exit340.thread, %get_errno.exit342.thread, %bb.as, %bb.at, %bb.ay, %bb.az, %bb.by, %bb.bz, %bb.cd, %bb.ce, %bb.br, %bb.bq, %bb.av, %get_errno.exit344.thread, %get_errno.exit342, %get_errno.exit340, %bb.v, %bb.w, %get_errno.exit334, %bb.cb, %bb.bw, %bb.bp, %bb.aq, %bb.aa, %bb.b, %get_errno.exit365, %bb.bo, %copy_from_user_timeval64.exit, %copy_from_user_timeval.exit
  %.11 = phi i64 [ %i.gb, %bb.bq ], [ -22, %bb.cb ], [ -22, %bb.b ], [ %i.cn, %bb.aw ], [ -14, %bb.c ], [ %.0, %get_errno.exit334 ], [ -14, %bb.bx ], [ -14, %bb.h ], [ -22, %bb.aa ], [ %.2, %get_errno.exit340 ], [ %.3, %get_errno.exit342 ], [ %.4252, %get_errno.exit344 ], [ -14, %bb.k ], [ -22, %bb.aq ], [ -14, %get_errno.exit344.thread ], [ %.6, %copy_from_user_timeval.exit ], [ %.7, %copy_from_user_timeval64.exit ], [ %.8, %bb.bo ], [ -14, %bb.ab ], [ %.10, %get_errno.exit365 ], [ -14, %bb.bp ], [ -22, %bb.bw ], [ -14, %bb.ar ], [ -14, %bb.av ], [ -22, %bb.v ], [ -14, %bb.w ], [ %i.gg, %bb.br ], [ %i.gt, %bb.by ], [ -92, %bb.cf ], [ %i.e, %bb.d ], [ %.0248.ph, %get_errno.exit334.thread ], [ %i.cs, %bb.ax ], [ %i.p, %bb.m ], [ %.2250.ph, %get_errno.exit340.thread ], [ %.3251.ph, %get_errno.exit342.thread ], [ %i.ba, %bb.ac ], [ %i.aw, %bb.y ], [ %i.ce, %bb.as ], [ %i.cu, %bb.ay ], [ -92, %bb.cg ], [ %i.j, %bb.e ], [ %i.u, %bb.n ], [ %i.bf, %bb.ad ], [ %i.cj, %bb.at ], [ %i.cz, %bb.az ], [ %i.gy, %bb.bz ], [ %i.hh, %bb.ce ], [ %i.hc, %bb.cd ], [ %i.ar, %bb.x ], [ -14, %bb.cc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  ret i64 %.11
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare noundef i32 @setitimer(i32 noundef, ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #22

; Function Attrs: nofree nounwind
declare noundef i32 @getitimer(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i32 @stat64(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i32 @lstat64(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i32 @fstat64(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nounwind
declare i32 @vhangup() local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @swapoff(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @sysinfo(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @semget(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc range(i64 -2147483648, 2147483648) i64 @do_semtimedop(i32 noundef %0, i64 noundef %1, i32 noundef %2, i64 noundef %3) unnamed_addr #8 {
bb.a:
  %4 = alloca %struct.timespec, align 16          ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %4, i8 0, i64 16, i1 false), !annotation !18
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr @lock_user(i32 noundef 1, i64 noundef %3, i64 noundef 16, i1 noundef zeroext true) #29 ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %target_to_host_timespec.exit, label %target_to_host_timespec.exit.thread

target_to_host_timespec.exit.thread:              ; preds = %bb.b
  %i.b = load <2 x i64>, ptr %i.a, align 1
  store <2 x i64> %i.b, ptr %4, align 16
  br label %bb.c

bb.c:                                             ; preds = %target_to_host_timespec.exit.thread, %bb.a
  %.031 = phi ptr [ null, %bb.a ], [ %4, %target_to_host_timespec.exit.thread ]
  %i.c = icmp ugt i32 %2, 500
  br i1 %i.c, label %target_to_host_timespec.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = zext nneg i32 %2 to i64                  ; 3 uses
  %i.e = tail call noalias ptr @g_malloc_n(i64 noundef %i.d, i64 noundef 6) #35 ; 6 uses
  %narrow.i = mul nuw nsw i32 %2, 6
  %i.f = zext nneg i32 %narrow.i to i64
  %i.g = tail call ptr @lock_user(i32 noundef 1, i64 noundef %1, i64 noundef %i.f, i1 noundef zeroext true) #29 ; 4 uses
  %.not.i36 = icmp eq ptr %i.g, null
  br i1 %.not.i36, label %target_to_host_sembuf.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.d
  %.not25.i = icmp eq i32 %2, 0
  br i1 %.not25.i, label %.loopexit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.preheader.i
  %xtraiter = and i64 %i.d, 1
  %i.h = icmp eq i32 %2, 1
  br i1 %i.h, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.d, 510
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %indvars.iv.next.i.1, %.lr.ph.i ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.i = getelementptr inbounds nuw [6 x i8], ptr %i.g, i64 %indvars.iv.i ; 3 uses
  %.val23.i = load i16, ptr %i.i, align 1
  %i.j = getelementptr inbounds nuw [6 x i8], ptr %i.e, i64 %indvars.iv.i ; 3 uses
  store i16 %.val23.i, ptr %i.j, align 2
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  %.val22.i = load i16, ptr %i.k, align 1
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  store i16 %.val22.i, ptr %i.l, align 2
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %.val.i37 = load i16, ptr %i.m, align 1
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  store i16 %.val.i37, ptr %i.n, align 2
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.o = getelementptr inbounds nuw [6 x i8], ptr %i.g, i64 %indvars.iv.next.i ; 3 uses
  %.val23.i.1 = load i16, ptr %i.o, align 1
  %i.p = getelementptr inbounds nuw [6 x i8], ptr %i.e, i64 %indvars.iv.next.i ; 3 uses
  store i16 %.val23.i.1, ptr %i.p, align 2
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 2
  %.val22.i.1 = load i16, ptr %i.q, align 1
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 2
  store i16 %.val22.i.1, ptr %i.r, align 2
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %.val.i37.1 = load i16, ptr %i.s, align 1
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  store i16 %.val.i37.1, ptr %i.t, align 2
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !69

target_to_host_sembuf.exit:                       ; preds = %bb.d
  tail call void @g_free(ptr noundef %i.e) #29
  br label %target_to_host_timespec.exit

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod1 = trunc i32 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod1)
  %i.u = getelementptr inbounds nuw [6 x i8], ptr %i.g, i64 %indvars.iv.i.epil.init ; 3 uses
  %.val23.i.epil = load i16, ptr %i.u, align 1
  %i.v = getelementptr inbounds nuw [6 x i8], ptr %i.e, i64 %indvars.iv.i.epil.init ; 3 uses
  store i16 %.val23.i.epil, ptr %i.v, align 2
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 2
  %.val22.i.epil = load i16, ptr %i.w, align 1
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 2
  store i16 %.val22.i.epil, ptr %i.x, align 2
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %.val.i37.epil = load i16, ptr %i.y, align 1
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  store i16 %.val.i37.epil, ptr %i.z, align 2
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.preheader.i
  %i.aa = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @thread_cpu)
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = getelementptr i8, ptr %i.ab, i64 608
  %.val.i38 = load ptr, ptr %i.ac, align 16
  %i.ad = getelementptr inbounds nuw i8, ptr %.val.i38, i64 9148
  %i.ae = call i64 (ptr, i64, ...) @safe_syscall_base(ptr noundef nonnull %i.ad, i64 noundef 220, i32 noundef %0, ptr noundef %i.e, i32 noundef range(i32 0, 501) %2, ptr noundef %.031) #29
  %sext = shl i64 %i.ae, 32                       ; 2 uses
  %i.af = ashr exact i64 %sext, 32
  %i.ag = icmp eq i64 %sext, -4294967296
  br i1 %i.ag, label %bb.e, label %get_errno.exit

bb.e:                                             ; preds = %.loopexit
  %i.ah = tail call ptr @__errno_location() #28
  %i.ai = load i32, ptr %i.ah, align 4
  %i.aj = sub i32 0, %i.ai
  %i.ak = sext i32 %i.aj to i64
  br label %get_errno.exit

get_errno.exit:                                   ; preds = %.loopexit, %bb.e
  %.0.i39 = phi i64 [ %i.ak, %bb.e ], [ %i.af, %.loopexit ]
  call void @g_free(ptr noundef %i.e) #29
  br label %target_to_host_timespec.exit

target_to_host_timespec.exit:                     ; preds = %bb.b, %bb.c, %get_errno.exit, %target_to_host_sembuf.exit
  %.0 = phi i64 [ %.0.i39, %get_errno.exit ], [ -7, %bb.c ], [ -14, %target_to_host_sembuf.exit ], [ -14, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  ret i64 %.0
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc range(i64 -2147483648, 2147483648) i64 @do_semctl(i32 noundef %0, i32 noundef %1, i32 noundef %2, i64 noundef %3) unnamed_addr #8 {
bb.a:
  %4 = alloca %struct.semid_ds, align 8           ; 7 uses
  %5 = alloca %struct.semid_ds, align 8           ; 7 uses
  %6 = alloca %struct.semid_ds, align 16          ; 15 uses
  %7 = alloca %struct.seminfo, align 4            ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(104) %6, i8 0, i64 104, i1 false), !annotation !18
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %7, i8 0, i64 40, i1 false), !annotation !18
  %i.a = and i32 %2, 255                          ; 5 uses
  %trunc = trunc i32 %2 to i8
  switch i8 %trunc, label %host_to_target_seminfo.exit [
    i8 12, label %bb.b
    i8 16, label %bb.b
    i8 13, label %bb.d
    i8 17, label %bb.d
    i8 2, label %bb.k
    i8 1, label %bb.k
    i8 18, label %bb.k
    i8 3, label %bb.p
    i8 19, label %bb.p
    i8 0, label %bb.r
    i8 11, label %bb.r
    i8 14, label %bb.r
    i8 15, label %bb.r
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %.sroa.0.0.insert.ext = and i64 %3, 4294967295
  %i.b = inttoptr i64 %.sroa.0.0.insert.ext to ptr
  %i.c = tail call i32 (i32, i32, i32, ...) @semctl(i32 noundef %0, i32 noundef %1, i32 noundef %i.a, ptr %i.b) #29 ; 2 uses
  %i.d = sext i32 %i.c to i64
  %i.e = icmp eq i32 %i.c, -1
  br i1 %i.e, label %bb.c, label %host_to_target_seminfo.exit

bb.c:                                             ; preds = %bb.b
  %i.f = tail call ptr @__errno_location() #28
  %i.g = load i32, ptr %i.f, align 4
  %i.h = sub i32 0, %i.g
  %i.i = sext i32 %i.h to i64
  br label %host_to_target_seminfo.exit

bb.d:                                             ; preds = %bb.a, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %5, i8 0, i64 104, i1 false), !annotation !18
  %i.j = call i32 (i32, i32, i32, ...) @semctl(i32 noundef %0, i32 noundef 0, i32 noundef 2, ptr nonnull %5) #29
  %i.k = icmp eq i32 %i.j, -1
  br i1 %i.k, label %target_to_host_semarray.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.m = load i64, ptr %i.l, align 8              ; 7 uses
  %i.n = trunc i64 %i.m to i32
  %sext.i = shl i64 %i.m, 32                      ; 2 uses
  %i.o = ashr exact i64 %sext.i, 32
  %i.p = call noalias ptr @g_try_malloc_n(i64 noundef %i.o, i64 noundef 2) #35 ; 11 uses
  %i.q = ptrtoaddr ptr %i.p to i64
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %target_to_host_semarray.exit.thread139, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = ashr exact i64 %sext.i, 31
  %i.s = call ptr @lock_user(i32 noundef 1, i64 noundef %3, i64 noundef %i.r, i1 noundef zeroext true) #29 ; 9 uses
  %i.t = ptrtoaddr ptr %i.s to i64
  %.not35.i = icmp eq ptr %i.s, null
  br i1 %.not35.i, label %bb.g, label %.preheader.i

.preheader.i:                                     ; preds = %bb.f
  %i.u = icmp sgt i32 %i.n, 0
  br i1 %i.u, label %iter.check, label %target_to_host_semarray.exit.thread

iter.check:                                       ; preds = %.preheader.i
  %wide.trip.count.i = and i64 %i.m, 2147483647   ; 6 uses
  %min.iters.check = icmp samesign ult i64 %wide.trip.count.i, 4
  %i.v = sub i64 %i.t, %i.q
  %diff.check = icmp ugt i64 %i.v, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check163 = icmp samesign ult i64 %wide.trip.count.i, 16
  br i1 %min.iters.check163, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.w = and i64 %i.m, 12
  %n.vec = and i64 %i.m, 2147483632               ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %index ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %wide.load = load <8 x i16>, ptr %i.x, align 1
  %wide.load164 = load <8 x i16>, ptr %i.y, align 1
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %i.p, i64 %index ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store <8 x i16> %wide.load, ptr %i.z, align 2
  store <8 x i16> %wide.load164, ptr %i.aa, align 2
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !70

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %wide.trip.count.i, %n.vec
  br i1 %cmp.n, label %target_to_host_semarray.exit.thread, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.w, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !78

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec165 = and i64 %i.m, 2147483644            ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index166 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next168, %vec.epilog.vector.body ] ; 3 uses
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %index166
  %wide.load167 = load <4 x i16>, ptr %i.ac, align 1
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %i.p, i64 %index166
  store <4 x i16> %wide.load167, ptr %i.ad, align 2
  %index.next168 = add nuw i64 %index166, 4       ; 2 uses
  %i.ae = icmp eq i64 %index.next168, %n.vec165
  br i1 %i.ae, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !71

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n169 = icmp eq i64 %wide.trip.count.i, %n.vec165
  br i1 %cmp.n169, label %target_to_host_semarray.exit.thread, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec165, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %i.m, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %indvars.iv.i.prol
  %.val.i.prol = load i16, ptr %i.af, align 1
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %i.p, i64 %indvars.iv.i.prol
  store i16 %.val.i.prol, ptr %i.ag, align 2
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !72

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %i.ah = sub nsw i64 %indvars.iv.i.ph, %wide.trip.count.i
  %i.ai = icmp ugt i64 %i.ah, -4
  br i1 %i.ai, label %target_to_host_semarray.exit.thread, label %.lr.ph.i

bb.g:                                             ; preds = %bb.f
  call void @g_free(ptr noundef nonnull %i.p) #29
  br label %target_to_host_semarray.exit.thread139

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %indvars.iv.i
  %.val.i = load i16, ptr %i.aj, align 1
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %i.p, i64 %indvars.iv.i
  store i16 %.val.i, ptr %i.ak, align 2
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %indvars.iv.next.i
  %.val.i.1 = load i16, ptr %i.al, align 1
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %i.p, i64 %indvars.iv.next.i
  store i16 %.val.i.1, ptr %i.am, align 2
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %indvars.iv.next.i.1
  %.val.i.2 = load i16, ptr %i.an, align 1
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %i.p, i64 %indvars.iv.next.i.1
  store i16 %.val.i.2, ptr %i.ao, align 2
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3 ; 2 uses
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %indvars.iv.next.i.2
  %.val.i.3 = load i16, ptr %i.ap, align 1
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %i.p, i64 %indvars.iv.next.i.2
  store i16 %.val.i.3, ptr %i.aq, align 2
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %target_to_host_semarray.exit.thread, label %.lr.ph.i, !llvm.loop !73

target_to_host_semarray.exit.thread:              ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %.preheader.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br label %bb.h

target_to_host_semarray.exit.thread139:           ; preds = %bb.e, %bb.g
  %.0.i106.ph = phi i64 [ -14, %bb.g ], [ -12, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br label %host_to_target_seminfo.exit

target_to_host_semarray.exit:                     ; preds = %bb.d
  %i.ar = tail call ptr @__errno_location() #28
  %i.as = load i32, ptr %i.ar, align 4            ; 2 uses
  %i.at = sub i32 0, %i.as
  %i.au = sext i32 %i.at to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  %.not104 = icmp eq i32 %i.as, 0
  br i1 %.not104, label %bb.h, label %host_to_target_seminfo.exit

bb.h:                                             ; preds = %target_to_host_semarray.exit.thread, %target_to_host_semarray.exit
  %.0133137 = phi ptr [ %i.p, %target_to_host_semarray.exit.thread ], [ null, %target_to_host_semarray.exit ] ; 10 uses
  %.0133137171 = ptrtoaddr ptr %.0133137 to i64
  %i.av = call i32 (i32, i32, i32, ...) @semctl(i32 noundef %0, i32 noundef %1, i32 noundef %i.a, ptr %.0133137) #29 ; 2 uses
  %i.aw = icmp eq i32 %i.av, -1
  br i1 %i.aw, label %bb.i, label %get_errno.exit108

bb.i:                                             ; preds = %bb.h
  %i.ax = tail call ptr @__errno_location() #28
  %i.ay = load i32, ptr %i.ax, align 4
  %i.az = sub i32 0, %i.ay
  br label %get_errno.exit108

get_errno.exit108:                                ; preds = %bb.h, %bb.i
  %.0.i107.in = phi i32 [ %i.az, %bb.i ], [ %i.av, %bb.h ]
  %.0.i107 = sext i32 %.0.i107.in to i64          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %4, i8 0, i64 104, i1 false), !annotation !18
  %i.ba = call i32 (i32, i32, i32, ...) @semctl(i32 noundef %0, i32 noundef 0, i32 noundef 2, ptr nonnull %4) #29
  %i.bb = icmp eq i32 %i.ba, -1
  br i1 %i.bb, label %host_to_target_semarray.exit, label %bb.j

bb.j:                                             ; preds = %get_errno.exit108
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.bd = load i64, ptr %i.bc, align 8            ; 7 uses
  %sext.i109 = shl i64 %i.bd, 32
  %i.be = ashr exact i64 %sext.i109, 31
  %i.bf = call ptr @lock_user(i32 noundef 3, i64 noundef %3, i64 noundef %i.be, i1 noundef zeroext false) #29 ; 9 uses
  %i.bg = ptrtoaddr ptr %i.bf to i64
  %.not.i110 = icmp eq ptr %i.bf, null
  br i1 %.not.i110, label %host_to_target_semarray.exit.thread145, label %.preheader.i111

host_to_target_semarray.exit.thread145:           ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %host_to_target_seminfo.exit

.preheader.i111:                                  ; preds = %bb.j
  %i.bh = trunc i64 %i.bd to i32
  %i.bi = icmp sgt i32 %i.bh, 0
  br i1 %i.bi, label %iter.check186, label %host_to_target_semarray.exit.thread

iter.check186:                                    ; preds = %.preheader.i111
  %wide.trip.count.i113 = and i64 %i.bd, 2147483647 ; 6 uses
  %min.iters.check173 = icmp samesign ult i64 %wide.trip.count.i113, 4
  %i.bj = sub i64 %.0133137171, %i.bg
  %diff.check172 = icmp ugt i64 %i.bj, -32
  %or.cond199 = or i1 %min.iters.check173, %diff.check172
  br i1 %or.cond199, label %.lr.ph.i114.preheader, label %vector.main.loop.iter.check174

vector.main.loop.iter.check174:                   ; preds = %iter.check186
  %min.iters.check175 = icmp samesign ult i64 %wide.trip.count.i113, 16
  br i1 %min.iters.check175, label %vec.epilog.ph190, label %vector.ph176

vector.ph176:                                     ; preds = %vector.main.loop.iter.check174
  %i.bk = and i64 %i.bd, 12
  %n.vec177 = and i64 %i.bd, 2147483632           ; 4 uses
  br label %vector.body178

vector.body178:                                   ; preds = %vector.body178, %vector.ph176
  %index179 = phi i64 [ 0, %vector.ph176 ], [ %index.next182, %vector.body178 ] ; 3 uses
  %i.bl = getelementptr inbounds nuw [2 x i8], ptr %i.bf, i64 %index179 ; 2 uses
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr %.0133137, i64 %index179 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %wide.load180 = load <8 x i16>, ptr %i.bm, align 2
  %wide.load181 = load <8 x i16>, ptr %i.bn, align 2
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  store <8 x i16> %wide.load180, ptr %i.bl, align 1
  store <8 x i16> %wide.load181, ptr %i.bo, align 1
  %index.next182 = add nuw i64 %index179, 16      ; 2 uses
  %i.bp = icmp eq i64 %index.next182, %n.vec177
  br i1 %i.bp, label %middle.block183, label %vector.body178, !llvm.loop !74

middle.block183:                                  ; preds = %vector.body178
  %cmp.n184 = icmp eq i64 %wide.trip.count.i113, %n.vec177
  br i1 %cmp.n184, label %host_to_target_semarray.exit.thread, label %vec.epilog.iter.check188

vec.epilog.iter.check188:                         ; preds = %middle.block183
  %min.epilog.iters.check189 = icmp eq i64 %i.bk, 0
  br i1 %min.epilog.iters.check189, label %.lr.ph.i114.preheader, label %vec.epilog.ph190, !prof !78

vec.epilog.ph190:                                 ; preds = %vector.main.loop.iter.check174, %vec.epilog.iter.check188
  %vec.epilog.resume.val185 = phi i64 [ %n.vec177, %vec.epilog.iter.check188 ], [ 0, %vector.main.loop.iter.check174 ]
  %n.vec191 = and i64 %i.bd, 2147483644           ; 3 uses
  br label %vec.epilog.vector.body192

vec.epilog.vector.body192:                        ; preds = %vec.epilog.vector.body192, %vec.epilog.ph190
  %index193 = phi i64 [ %vec.epilog.resume.val185, %vec.epilog.ph190 ], [ %index.next195, %vec.epilog.vector.body192 ] ; 3 uses
  %i.bq = getelementptr inbounds nuw [2 x i8], ptr %i.bf, i64 %index193
  %i.br = getelementptr inbounds nuw [2 x i8], ptr %.0133137, i64 %index193
  %wide.load194 = load <4 x i16>, ptr %i.br, align 2
  store <4 x i16> %wide.load194, ptr %i.bq, align 1
  %index.next195 = add nuw i64 %index193, 4       ; 2 uses
  %i.bs = icmp eq i64 %index.next195, %n.vec191
  br i1 %i.bs, label %vec.epilog.middle.block196, label %vec.epilog.vector.body192, !llvm.loop !75

vec.epilog.middle.block196:                       ; preds = %vec.epilog.vector.body192
  %cmp.n197 = icmp eq i64 %wide.trip.count.i113, %n.vec191
  br i1 %cmp.n197, label %host_to_target_semarray.exit.thread, label %.lr.ph.i114.preheader

.lr.ph.i114.preheader:                            ; preds = %iter.check186, %vec.epilog.iter.check188, %vec.epilog.middle.block196
  %indvars.iv.i115.ph = phi i64 [ 0, %iter.check186 ], [ %n.vec177, %vec.epilog.iter.check188 ], [ %n.vec191, %vec.epilog.middle.block196 ] ; 3 uses
  %xtraiter200 = and i64 %i.bd, 3                 ; 2 uses
  %lcmp.mod201.not = icmp eq i64 %xtraiter200, 0
  br i1 %lcmp.mod201.not, label %.lr.ph.i114.prol.loopexit, label %.lr.ph.i114.prol

.lr.ph.i114.prol:                                 ; preds = %.lr.ph.i114.preheader, %.lr.ph.i114.prol
  %indvars.iv.i115.prol = phi i64 [ %indvars.iv.next.i116.prol, %.lr.ph.i114.prol ], [ %indvars.iv.i115.ph, %.lr.ph.i114.preheader ] ; 3 uses
  %prol.iter202 = phi i64 [ %prol.iter202.next, %.lr.ph.i114.prol ], [ 0, %.lr.ph.i114.preheader ]
  %i.bt = getelementptr inbounds nuw [2 x i8], ptr %i.bf, i64 %indvars.iv.i115.prol
  %i.bu = getelementptr inbounds nuw [2 x i8], ptr %.0133137, i64 %indvars.iv.i115.prol
  %i.bv = load i16, ptr %i.bu, align 2
  store i16 %i.bv, ptr %i.bt, align 1
  %indvars.iv.next.i116.prol = add nuw nsw i64 %indvars.iv.i115.prol, 1 ; 2 uses
  %prol.iter202.next = add i64 %prol.iter202, 1   ; 2 uses
  %prol.iter202.cmp.not = icmp eq i64 %prol.iter202.next, %xtraiter200
  br i1 %prol.iter202.cmp.not, label %.lr.ph.i114.prol.loopexit, label %.lr.ph.i114.prol, !llvm.loop !76

.lr.ph.i114.prol.loopexit:                        ; preds = %.lr.ph.i114.prol, %.lr.ph.i114.preheader
  %indvars.iv.i115.unr = phi i64 [ %indvars.iv.i115.ph, %.lr.ph.i114.preheader ], [ %indvars.iv.next.i116.prol, %.lr.ph.i114.prol ]
  %i.bw = sub nsw i64 %indvars.iv.i115.ph, %wide.trip.count.i113
  %i.bx = icmp ugt i64 %i.bw, -4
  br i1 %i.bx, label %host_to_target_semarray.exit.thread, label %.lr.ph.i114

.lr.ph.i114:                                      ; preds = %.lr.ph.i114.prol.loopexit, %.lr.ph.i114
  %indvars.iv.i115 = phi i64 [ %indvars.iv.next.i116.3, %.lr.ph.i114 ], [ %indvars.iv.i115.unr, %.lr.ph.i114.prol.loopexit ] ; 6 uses
  %i.by = getelementptr inbounds nuw [2 x i8], ptr %i.bf, i64 %indvars.iv.i115
  %i.bz = getelementptr inbounds nuw [2 x i8], ptr %.0133137, i64 %indvars.iv.i115
  %i.ca = load i16, ptr %i.bz, align 2
  store i16 %i.ca, ptr %i.by, align 1
  %indvars.iv.next.i116 = add nuw nsw i64 %indvars.iv.i115, 1 ; 2 uses
  %i.cb = getelementptr inbounds nuw [2 x i8], ptr %i.bf, i64 %indvars.iv.next.i116
  %i.cc = getelementptr inbounds nuw [2 x i8], ptr %.0133137, i64 %indvars.iv.next.i116
  %i.cd = load i16, ptr %i.cc, align 2
  store i16 %i.cd, ptr %i.cb, align 1
  %indvars.iv.next.i116.1 = add nuw nsw i64 %indvars.iv.i115, 2 ; 2 uses
  %i.ce = getelementptr inbounds nuw [2 x i8], ptr %i.bf, i64 %indvars.iv.next.i116.1
  %i.cf = getelementptr inbounds nuw [2 x i8], ptr %.0133137, i64 %indvars.iv.next.i116.1
  %i.cg = load i16, ptr %i.cf, align 2
  store i16 %i.cg, ptr %i.ce, align 1
  %indvars.iv.next.i116.2 = add nuw nsw i64 %indvars.iv.i115, 3 ; 2 uses
  %i.ch = getelementptr inbounds nuw [2 x i8], ptr %i.bf, i64 %indvars.iv.next.i116.2
  %i.ci = getelementptr inbounds nuw [2 x i8], ptr %.0133137, i64 %indvars.iv.next.i116.2
  %i.cj = load i16, ptr %i.ci, align 2
  store i16 %i.cj, ptr %i.ch, align 1
  %indvars.iv.next.i116.3 = add nuw nsw i64 %indvars.iv.i115, 4 ; 2 uses
  %exitcond.not.i117.3 = icmp eq i64 %indvars.iv.next.i116.3, %wide.trip.count.i113
  br i1 %exitcond.not.i117.3, label %host_to_target_semarray.exit.thread, label %.lr.ph.i114, !llvm.loop !77

host_to_target_semarray.exit.thread:              ; preds = %.lr.ph.i114.prol.loopexit, %.lr.ph.i114, %middle.block183, %vec.epilog.middle.block196, %.preheader.i111
  call void @g_free(ptr noundef %.0133137) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %host_to_target_seminfo.exit

host_to_target_semarray.exit:                     ; preds = %get_errno.exit108
  %i.ck = tail call ptr @__errno_location() #28
  %i.cl = load i32, ptr %i.ck, align 4            ; 2 uses
  %i.cm = sub i32 0, %i.cl
  %i.cn = sext i32 %i.cm to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  %.not105 = icmp eq i32 %i.cl, 0
  %spec.select = select i1 %.not105, i64 %.0.i107, i64 %i.cn
  br label %host_to_target_seminfo.exit

bb.k:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.co = tail call ptr @lock_user(i32 noundef 1, i64 noundef %3, i64 noundef 104, i1 noundef zeroext true) #29 ; 4 uses
  %.not.i118 = icmp eq ptr %i.co, null
  br i1 %.not.i118, label %host_to_target_seminfo.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cp = tail call ptr @lock_user(i32 noundef 1, i64 noundef %3, i64 noundef 104, i1 noundef zeroext true) #29 ; 5 uses
  %.not.i.i = icmp eq ptr %i.cp, null
  br i1 %.not.i.i, label %host_to_target_seminfo.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cq = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.cr = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cs = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.ct = load <4 x i32>, ptr %i.cp, align 8
  store <4 x i32> %i.ct, ptr %6, align 16
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.cv = load i32, ptr %i.cu, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store i32 %i.cv, ptr %i.cw, align 16
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cp, i64 20
  %i.cy = load i16, ptr %i.cx, align 4
  %i.cz = zext i16 %i.cy to i32
  %i.da = getelementptr inbounds nuw i8, ptr %6, i64 20 ; 2 uses
  store i32 %i.cz, ptr %i.da, align 4
  %i.db = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %i.dc = load i16, ptr %i.db, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  store i16 %i.dc, ptr %i.dd, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.co, i64 80
  %i.df = load i64, ptr %i.de, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %6, i64 80 ; 2 uses
  store i64 %i.df, ptr %i.dg, align 16
  %i.dh = getelementptr inbounds nuw i8, ptr %i.co, i64 48
  %i.di = load i64, ptr %i.dh, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  store i64 %i.di, ptr %i.dj, align 16
  %i.dk = getelementptr inbounds nuw i8, ptr %i.co, i64 64
  %i.dl = load i64, ptr %i.dk, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 2 uses
  store i64 %i.dl, ptr %i.dm, align 16
  %i.dn = call i32 (i32, i32, i32, ...) @semctl(i32 noundef %0, i32 noundef %1, i32 noundef %i.a, ptr nonnull %6) #29 ; 2 uses
  %i.do = icmp eq i32 %i.dn, -1
  br i1 %i.do, label %bb.n, label %get_errno.exit121

bb.n:                                             ; preds = %bb.m
  %i.dp = tail call ptr @__errno_location() #28
  %i.dq = load i32, ptr %i.dp, align 4
  %i.dr = sub i32 0, %i.dq
  br label %get_errno.exit121

get_errno.exit121:                                ; preds = %bb.m, %bb.n
  %.0.i120.in = phi i32 [ %i.dr, %bb.n ], [ %i.dn, %bb.m ]
  %.0.i120 = sext i32 %.0.i120.in to i64
  %i.ds = call ptr @lock_user(i32 noundef 3, i64 noundef %3, i64 noundef 104, i1 noundef zeroext false) #29 ; 4 uses
  %.not.i122 = icmp eq ptr %i.ds, null
  br i1 %.not.i122, label %host_to_target_seminfo.exit, label %bb.o

bb.o:                                             ; preds = %get_errno.exit121
  %i.dt = call ptr @lock_user(i32 noundef 3, i64 noundef %3, i64 noundef 104, i1 noundef zeroext false) #29 ; 8 uses
  %.not.i.i123 = icmp eq ptr %i.dt, null
  br i1 %.not.i.i123, label %host_to_target_seminfo.exit, label %host_to_target_semid_ds.exit

host_to_target_semid_ds.exit:                     ; preds = %bb.o
  %i.du = load i32, ptr %6, align 16
  store i32 %i.du, ptr %i.dt, align 8
  %i.dv = load i32, ptr %i.cq, align 4
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 4
  store i32 %i.dv, ptr %i.dw, align 4
  %i.dx = load i32, ptr %i.cr, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  store i32 %i.dx, ptr %i.dy, align 8
  %i.dz = load i32, ptr %i.cs, align 4
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dt, i64 12
  store i32 %i.dz, ptr %i.ea, align 4
  %i.eb = load i32, ptr %i.cw, align 16
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  store i32 %i.eb, ptr %i.ec, align 8
  %i.ed = load i32, ptr %i.da, align 4
  %i.ee = trunc i32 %i.ed to i16
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dt, i64 20
  store i16 %i.ee, ptr %i.ef, align 4
  %i.eg = load i16, ptr %i.dd, align 8
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dt, i64 24
  store i16 %i.eg, ptr %i.eh, align 8
  %i.ei = load i64, ptr %i.dg, align 16
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ds, i64 80
  store i64 %i.ei, ptr %i.ej, align 8
  %i.ek = load i64, ptr %i.dj, align 16
  %i.el = getelementptr inbounds nuw i8, ptr %i.ds, i64 48
  store i64 %i.ek, ptr %i.el, align 8
  %i.em = load i64, ptr %i.dm, align 16
  %i.en = getelementptr inbounds nuw i8, ptr %i.ds, i64 64
  store i64 %i.em, ptr %i.en, align 8
  br label %host_to_target_seminfo.exit

bb.p:                                             ; preds = %bb.a, %bb.a
  %i.eo = call i32 (i32, i32, i32, ...) @semctl(i32 noundef %0, i32 noundef %1, i32 noundef %i.a, ptr nonnull %7) #29 ; 2 uses
  %i.ep = icmp eq i32 %i.eo, -1
  br i1 %i.ep, label %bb.q, label %get_errno.exit126

bb.q:                                             ; preds = %bb.p
  %i.eq = tail call ptr @__errno_location() #28
  %i.er = load i32, ptr %i.eq, align 4
  %i.es = sub i32 0, %i.er
  br label %get_errno.exit126

get_errno.exit126:                                ; preds = %bb.p, %bb.q
  %.0.i125.in = phi i32 [ %i.es, %bb.q ], [ %i.eo, %bb.p ]
  %i.et = call ptr @lock_user(i32 noundef 3, i64 noundef %3, i64 noundef 40, i1 noundef zeroext false) #29 ; 11 uses
  %.not.i127 = icmp eq ptr %i.et, null
  br i1 %.not.i127, label %host_to_target_seminfo.exit, label %host_to_target_seminfo.exit.thread

host_to_target_seminfo.exit.thread:               ; preds = %get_errno.exit126
  %.0.i125 = sext i32 %.0.i125.in to i64
  %i.eu = load i32, ptr %7, align 4
  store i32 %i.eu, ptr %i.et, align 1
  %i.ev = getelementptr inbounds nuw i8, ptr %i.et, i64 4
  %i.ew = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.ex = load i32, ptr %i.ew, align 4
  store i32 %i.ex, ptr %i.ev, align 1
  %i.ey = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.ez = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.fa = load i32, ptr %i.ez, align 4
  store i32 %i.fa, ptr %i.ey, align 1
  %i.fb = getelementptr inbounds nuw i8, ptr %i.et, i64 12
  %i.fc = getelementptr inbounds nuw i8, ptr %7, i64 12
  %i.fd = load i32, ptr %i.fc, align 4
  store i32 %i.fd, ptr %i.fb, align 1
  %i.fe = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  %i.ff = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.fg = load i32, ptr %i.ff, align 4
  store i32 %i.fg, ptr %i.fe, align 1
  %i.fh = getelementptr inbounds nuw i8, ptr %i.et, i64 20
  %i.fi = getelementptr inbounds nuw i8, ptr %7, i64 20
  %i.fj = load i32, ptr %i.fi, align 4
  store i32 %i.fj, ptr %i.fh, align 1
  %i.fk = getelementptr inbounds nuw i8, ptr %i.et, i64 24
  %i.fl = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.fm = load i32, ptr %i.fl, align 4
  store i32 %i.fm, ptr %i.fk, align 1
  %i.fn = getelementptr inbounds nuw i8, ptr %i.et, i64 28
  %i.fo = getelementptr inbounds nuw i8, ptr %7, i64 28
  %i.fp = load i32, ptr %i.fo, align 4
  store i32 %i.fp, ptr %i.fn, align 1
  %i.fq = getelementptr inbounds nuw i8, ptr %i.et, i64 32
  %i.fr = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.fs = load i32, ptr %i.fr, align 4
  store i32 %i.fs, ptr %i.fq, align 1
  %i.ft = getelementptr inbounds nuw i8, ptr %i.et, i64 36
  %i.fu = getelementptr inbounds nuw i8, ptr %7, i64 36
  %i.fv = load i32, ptr %i.fu, align 4
  store i32 %i.fv, ptr %i.ft, align 1
  br label %host_to_target_seminfo.exit

bb.r:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  %i.fw = tail call i32 (i32, i32, i32, ...) @semctl(i32 noundef %0, i32 noundef %1, i32 noundef %i.a, ptr noundef null) #29 ; 2 uses
  %i.fx = sext i32 %i.fw to i64
  %i.fy = icmp eq i32 %i.fw, -1
  br i1 %i.fy, label %bb.s, label %host_to_target_seminfo.exit

bb.s:                                             ; preds = %bb.r
  %i.fz = tail call ptr @__errno_location() #28
  %i.ga = load i32, ptr %i.fz, align 4
  %i.gb = sub i32 0, %i.ga
  %i.gc = sext i32 %i.gb to i64
  br label %host_to_target_seminfo.exit

host_to_target_seminfo.exit:                      ; preds = %host_to_target_semarray.exit, %bb.o, %get_errno.exit121, %bb.l, %bb.k, %bb.a, %bb.b, %bb.c, %host_to_target_semarray.exit.thread, %host_to_target_semid_ds.exit, %host_to_target_seminfo.exit.thread, %bb.r, %bb.s, %get_errno.exit126, %host_to_target_semarray.exit.thread145, %target_to_host_semarray.exit.thread139, %target_to_host_semarray.exit
  %.096 = phi i64 [ -14, %get_errno.exit126 ], [ -14, %bb.l ], [ %i.au, %target_to_host_semarray.exit ], [ %spec.select, %host_to_target_semarray.exit ], [ -14, %bb.o ], [ -14, %host_to_target_semarray.exit.thread145 ], [ %.0.i106.ph, %target_to_host_semarray.exit.thread139 ], [ -22, %bb.a ], [ %.0.i107, %host_to_target_semarray.exit.thread ], [ %.0.i120, %host_to_target_semid_ds.exit ], [ %.0.i125, %host_to_target_seminfo.exit.thread ], [ %i.i, %bb.c ], [ %i.d, %bb.b ], [ %i.gc, %bb.s ], [ %i.fx, %bb.r ], [ -14, %bb.k ], [ -14, %get_errno.exit121 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  ret i64 %.096
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc range(i64 -2147483648, 2147483648) i64 @do_msgctl(i32 noundef %0, i32 noundef %1, i64 noundef %2) unnamed_addr #8 {
bb.a:
  %3 = alloca %struct.msqid_ds, align 16          ; 20 uses
  %4 = alloca %struct.msginfo, align 4            ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.a, i8 0, i64 96, i1 false), !annotation !18
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
end_hunk_13
begin_hunk_14_@target_to_host_timex:bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %.val53, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %.val52 = load i64, ptr %i.af, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 %.val52, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %.val51 = load i64, ptr %i.ah, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 %.val51, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %.val50 = load i64, ptr %i.aj, align 1
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i64 %.val50, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  %.val49 = load i64, ptr %i.al, align 1
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i64 %.val49, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %.val = load i32, ptr %i.an, align 1
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i32 %.val, ptr %i.ao, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ 0, %bb.b ], [ -14, %bb.a ]
  ret i64 %.0
}

; Function Attrs: nounwind
declare i32 @adjtimex(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc range(i64 -14, 1) i64 @host_to_target_timex(i64 noundef %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #8 {
bb.a:
  %i.a = tail call ptr @lock_user(i32 noundef 3, i64 noundef %0, i64 noundef 208, i1 noundef zeroext false) #29 ; 22 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %1, align 8
  store i32 %i.b, ptr %i.a, align 1
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8
  store i64 %i.e, ptr %i.c, align 1
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i64, ptr %i.g, align 8
  store i64 %i.h, ptr %i.f, align 1
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = load i64, ptr %i.j, align 8
  store i64 %i.k, ptr %i.i, align 1
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.n = load i64, ptr %i.m, align 8
  store i64 %i.n, ptr %i.l, align 1
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.q = load i32, ptr %i.p, align 8
  store i32 %i.q, ptr %i.o, align 1
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.t = load i64, ptr %i.s, align 8
  store i64 %i.t, ptr %i.r, align 1
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.w = load i64, ptr %i.v, align 8
  store i64 %i.w, ptr %i.u, align 1
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.z = load i64, ptr %i.y, align 8
  store i64 %i.z, ptr %i.x, align 1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ac = load i64, ptr %i.ab, align 8
  store i64 %i.ac, ptr %i.aa, align 1
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.af = load i64, ptr %i.ae, align 8
  store i64 %i.af, ptr %i.ad, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ai = load i64, ptr %i.ah, align 8
  store i64 %i.ai, ptr %i.ag, align 1
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.al = load i64, ptr %i.ak, align 8
  store i64 %i.al, ptr %i.aj, align 1
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ao = load i64, ptr %i.an, align 8
  store i64 %i.ao, ptr %i.am, align 1
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.ar = load i32, ptr %i.aq, align 8
  store i32 %i.ar, ptr %i.ap, align 1
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.au = load i64, ptr %i.at, align 8
  store i64 %i.au, ptr %i.as, align 1
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.ax = load i64, ptr %i.aw, align 8
  store i64 %i.ax, ptr %i.av, align 1
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.ba = load i64, ptr %i.az, align 8
  store i64 %i.ba, ptr %i.ay, align 1
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.bd = load i64, ptr %i.bc, align 8
  store i64 %i.bd, ptr %i.bb, align 1
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.bg = load i64, ptr %i.bf, align 8
  store i64 %i.bg, ptr %i.be, align 1
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.bj = load i32, ptr %i.bi, align 8
  store i32 %i.bj, ptr %i.bh, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ 0, %bb.b ], [ -14, %bb.a ]
  ret i64 %.0
}

; Function Attrs: nounwind
declare i32 @clock_adjtime(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @getpgid(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @fchdir(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @personality(i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @do_getdents(i64 noundef %0, i64 noundef %1, i64 noundef %2) unnamed_addr #2 {
bb.a:
  %i.a = tail call noalias ptr @g_try_malloc(i64 noundef %2) #31 ; 6 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = trunc i64 %0 to i32                      ; 2 uses
  %i.c = trunc i64 %2 to i32
  %i.d = tail call i64 (i64, ...) @syscall(i64 noundef 78, i32 noundef %i.b, ptr noundef nonnull %i.a, i32 noundef %i.c) #29
  %sext63 = shl i64 %i.d, 32                      ; 2 uses
  %i.e = ashr exact i64 %sext63, 32
  %i.f = icmp eq i64 %sext63, -4294967296
  br i1 %i.f, label %bb.c, label %get_errno.exit

bb.c:                                             ; preds = %bb.b
  %i.g = tail call ptr @__errno_location() #28
  %i.h = load i32, ptr %i.g, align 4
  %i.i = sub i32 0, %i.h
  %i.j = sext i32 %i.i to i64
  br label %get_errno.exit

get_errno.exit:                                   ; preds = %bb.b, %bb.c
  %.0.i = phi i64 [ %i.j, %bb.c ], [ %i.e, %bb.b ] ; 3 uses
  %i.k = trunc nsw i64 %.0.i to i32               ; 2 uses
  %i.l = icmp ult i64 %.0.i, -4096
  br i1 %i.l, label %bb.d, label %.thread

bb.d:                                             ; preds = %get_errno.exit
  %i.m = tail call ptr @lock_user(i32 noundef 3, i64 noundef %1, i64 noundef %2, i1 noundef zeroext false) #29 ; 2 uses
  %.not56 = icmp eq ptr %i.m, null
  br i1 %.not56, label %.thread, label %.preheader

.preheader:                                       ; preds = %bb.d
  %i.n = icmp sgt i64 %.0.i, 0
  br i1 %i.n, label %.lr.ph.preheader, label %.thread

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 18 ; 2 uses
  %i.p = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.o) #32 ; 2 uses
  %i.q = trunc i64 %i.p to i32
  %i.r = add i32 %i.q, 27
  %i.s = and i32 %i.r, -8                         ; 3 uses
  %i.t = sext i32 %i.s to i64
  %i.u = icmp slt i64 %2, %i.t
  br i1 %i.u, label %.lr.ph._crit_edge, label %.lr.ph81

.lr.ph:                                           ; preds = %.lr.ph81
  %i.v = sext i32 %i.bi to i64
  %i.w = getelementptr inbounds i8, ptr %i.a, i64 %i.v ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 18 ; 2 uses
  %i.y = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.x) #32 ; 2 uses
  %i.z = trunc i64 %i.y to i32
  %i.aa = add i32 %i.z, 27
  %i.ab = and i32 %i.aa, -8                       ; 2 uses
  %i.ac = add i32 %i.ab, %i.ah                    ; 2 uses
  %i.ad = sext i32 %i.ac to i64
  %i.ae = icmp slt i64 %2, %i.ad
  br i1 %i.ae, label %.lr.ph._crit_edge, label %.lr.ph81, !llvm.loop !79

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.04868.lcssa = phi i64 [ 0, %.lr.ph.preheader ], [ %i.as, %.lr.ph ]
  %.04967.lcssa = phi i32 [ 0, %.lr.ph.preheader ], [ %i.ah, %.lr.ph ] ; 2 uses
  %i.af = icmp eq i32 %.04967.lcssa, 0
  br i1 %i.af, label %.thread, label %bb.e

bb.e:                                             ; preds = %.lr.ph._crit_edge
  %i.ag = tail call i64 @lseek64(i32 noundef %i.b, i64 noundef %.04868.lcssa, i32 noundef 0) #29 ; 0 uses
  br label %.thread

.lr.ph81:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %i.ah = phi i32 [ %i.ac, %.lr.ph ], [ %i.s, %.lr.ph.preheader ] ; 4 uses
  %i.ai = phi i32 [ %i.ab, %.lr.ph ], [ %i.s, %.lr.ph.preheader ] ; 2 uses
  %i.aj = phi i64 [ %i.y, %.lr.ph ], [ %i.p, %.lr.ph.preheader ]
  %i.ak = phi ptr [ %i.x, %.lr.ph ], [ %i.o, %.lr.ph.preheader ]
  %i.al = phi ptr [ %i.w, %.lr.ph ], [ %i.a, %.lr.ph.preheader ] ; 4 uses
  %.0516680 = phi i32 [ %i.bi, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %.0496779 = phi i32 [ %i.ah, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load i16, ptr %i.am, align 8            ; 2 uses
  %i.ao = zext i16 %i.an to i32
  %i.ap = sext i32 %.0496779 to i64
  %i.aq = getelementptr inbounds i8, ptr %i.m, i64 %i.ap ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8
  %i.at = load i64, ptr %i.al, align 8
  store i64 %i.at, ptr %i.aq, align 8
  %i.au = load i64, ptr %i.ar, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store i64 %i.au, ptr %i.av, align 8
  %i.aw = trunc i32 %i.ai to i16
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store i16 %i.aw, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aq, i64 18
  %i.az = shl i64 %i.aj, 32
  %sext59 = add i64 %i.az, 4294967296
  %i.ba = ashr exact i64 %sext59, 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 %i.ay, ptr noundef nonnull align 1 %i.ak, i64 noundef %i.ba, i1 noundef false) #29
  %i.bb = zext i16 %i.an to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.bb
  %i.bd = getelementptr inbounds i8, ptr %i.bc, i64 -1
  %i.be = load i8, ptr %i.bd, align 1
  %i.bf = sext i32 %i.ai to i64
  %i.bg = getelementptr inbounds i8, ptr %i.aq, i64 %i.bf
  %i.bh = getelementptr inbounds i8, ptr %i.bg, i64 -1
  store i8 %i.be, ptr %i.bh, align 1
  %i.bi = add i32 %.0516680, %i.ao                ; 3 uses
  %i.bj = icmp slt i32 %i.bi, %i.k
  br i1 %i.bj, label %.lr.ph, label %.thread, !llvm.loop !79

.thread:                                          ; preds = %.lr.ph81, %.preheader, %.lr.ph._crit_edge, %bb.e, %bb.d, %get_errno.exit, %bb.a
  %.052 = phi i32 [ -12, %bb.a ], [ -14, %bb.d ], [ %i.k, %get_errno.exit ], [ %.04967.lcssa, %bb.e ], [ -22, %.lr.ph._crit_edge ], [ 0, %.preheader ], [ %i.ah, %.lr.ph81 ]
  tail call void @g_free(ptr noundef %i.a) #29
  ret i32 %.052
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @do_getdents64(i64 noundef %0, i64 noundef %1, i64 noundef %2) unnamed_addr #2 {
bb.a:
  %i.a = tail call noalias ptr @g_try_malloc(i64 noundef %2) #31 ; 6 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = trunc i64 %0 to i32                      ; 2 uses
  %i.c = trunc i64 %2 to i32
  %i.d = tail call i64 (i64, ...) @syscall(i64 noundef 217, i32 noundef %i.b, ptr noundef nonnull %i.a, i32 noundef %i.c) #29
  %sext58 = shl i64 %i.d, 32                      ; 2 uses
  %i.e = ashr exact i64 %sext58, 32
  %i.f = icmp eq i64 %sext58, -4294967296
  br i1 %i.f, label %bb.c, label %get_errno.exit

bb.c:                                             ; preds = %bb.b
  %i.g = tail call ptr @__errno_location() #28
  %i.h = load i32, ptr %i.g, align 4
  %i.i = sub i32 0, %i.h
  %i.j = sext i32 %i.i to i64
  br label %get_errno.exit

get_errno.exit:                                   ; preds = %bb.b, %bb.c
  %.0.i = phi i64 [ %i.j, %bb.c ], [ %i.e, %bb.b ] ; 3 uses
  %i.k = trunc nsw i64 %.0.i to i32               ; 2 uses
  %i.l = icmp ult i64 %.0.i, -4096
  br i1 %i.l, label %bb.d, label %.thread

bb.d:                                             ; preds = %get_errno.exit
  %i.m = tail call ptr @lock_user(i32 noundef 3, i64 noundef %1, i64 noundef %2, i1 noundef zeroext false) #29 ; 2 uses
  %.not52 = icmp eq ptr %i.m, null
  br i1 %.not52, label %.thread, label %.preheader

.preheader:                                       ; preds = %bb.d
  %i.n = icmp sgt i64 %.0.i, 0
  br i1 %i.n, label %.lr.ph.preheader, label %.thread

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 19 ; 2 uses
  %i.p = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.o) #32
  %i.q = shl i64 %i.p, 32                         ; 2 uses
  %sext5474 = add i64 %i.q, 85899345920
  %i.r = lshr exact i64 %sext5474, 32
  %i.s = trunc nuw i64 %i.r to i32
  %i.t = add i32 %i.s, 7
  %i.u = and i32 %i.t, -8                         ; 3 uses
  %i.v = sext i32 %i.u to i64
  %i.w = icmp slt i64 %2, %i.v
  br i1 %i.w, label %.lr.ph._crit_edge, label %.lr.ph77

.lr.ph:                                           ; preds = %.lr.ph77
  %i.x = sext i32 %i.bh to i64
  %i.y = getelementptr inbounds i8, ptr %i.a, i64 %i.x ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 19 ; 2 uses
  %i.aa = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.z) #32
  %i.ab = shl i64 %i.aa, 32                       ; 2 uses
  %sext54 = add i64 %i.ab, 85899345920
  %i.ac = lshr exact i64 %sext54, 32
  %i.ad = trunc nuw i64 %i.ac to i32
  %i.ae = add i32 %i.ad, 7
  %i.af = and i32 %i.ae, -8                       ; 2 uses
  %i.ag = add i32 %i.af, %i.al                    ; 2 uses
  %i.ah = sext i32 %i.ag to i64
  %i.ai = icmp slt i64 %2, %i.ah
  br i1 %i.ai, label %.lr.ph._crit_edge, label %.lr.ph77, !llvm.loop !80

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.04463.lcssa = phi i64 [ 0, %.lr.ph.preheader ], [ %i.ax, %.lr.ph ]
  %.04562.lcssa = phi i32 [ 0, %.lr.ph.preheader ], [ %i.al, %.lr.ph ] ; 2 uses
  %i.aj = icmp eq i32 %.04562.lcssa, 0
  br i1 %i.aj, label %.thread, label %bb.e

bb.e:                                             ; preds = %.lr.ph._crit_edge
  %i.ak = tail call i64 @lseek64(i32 noundef %i.b, i64 noundef %.04463.lcssa, i32 noundef 0) #29 ; 0 uses
  br label %.thread

.lr.ph77:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %i.al = phi i32 [ %i.ag, %.lr.ph ], [ %i.u, %.lr.ph.preheader ] ; 4 uses
  %i.am = phi i32 [ %i.af, %.lr.ph ], [ %i.u, %.lr.ph.preheader ]
  %i.an = phi i64 [ %i.ab, %.lr.ph ], [ %i.q, %.lr.ph.preheader ]
  %i.ao = phi ptr [ %i.z, %.lr.ph ], [ %i.o, %.lr.ph.preheader ]
  %i.ap = phi ptr [ %i.y, %.lr.ph ], [ %i.a, %.lr.ph.preheader ] ; 4 uses
  %.0476176 = phi i32 [ %i.bh, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %.0456275 = phi i32 [ %i.al, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load i16, ptr %i.aq, align 8
  %i.as = zext i16 %i.ar to i32
  %sext53 = add i64 %i.an, 4294967296
  %i.at = ashr exact i64 %sext53, 32
  %i.au = sext i32 %.0456275 to i64
  %i.av = getelementptr inbounds i8, ptr %i.m, i64 %i.au ; 5 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8
  %i.ay = load i64, ptr %i.ap, align 8
  store i64 %i.ay, ptr %i.av, align 8
  %i.az = load i64, ptr %i.aw, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store i64 %i.az, ptr %i.ba, align 8
  %i.bb = trunc i32 %i.am to i16
  %i.bc = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store i16 %i.bb, ptr %i.bc, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ap, i64 18
  %i.be = load i8, ptr %i.bd, align 2
  %i.bf = getelementptr inbounds nuw i8, ptr %i.av, i64 18
  store i8 %i.be, ptr %i.bf, align 2
  %i.bg = getelementptr inbounds nuw i8, ptr %i.av, i64 19
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.bg, ptr noundef nonnull align 1 %i.ao, i64 noundef %i.at, i1 noundef false) #29
  %i.bh = add i32 %.0476176, %i.as                ; 3 uses
  %i.bi = icmp slt i32 %i.bh, %i.k
  br i1 %i.bi, label %.lr.ph, label %.thread, !llvm.loop !80

.thread:                                          ; preds = %.lr.ph77, %.preheader, %.lr.ph._crit_edge, %bb.e, %bb.d, %get_errno.exit, %bb.a
  %.048 = phi i32 [ -12, %bb.a ], [ -14, %bb.d ], [ %i.k, %get_errno.exit ], [ %.04562.lcssa, %bb.e ], [ -22, %.lr.ph._crit_edge ], [ 0, %.preheader ], [ %i.al, %.lr.ph77 ]
  tail call void @g_free(ptr noundef %i.a) #29
  ret i32 %.048
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i64 -2147483648, 2147483648) i64 @do_ppoll(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i1 noundef zeroext %5) unnamed_addr #2 {
bb.a:
  %6 = alloca %struct.timespec, align 16          ; 7 uses
  %i.a = alloca ptr, align 8                      ; 7 uses
  %7 = alloca %struct.timespec, align 8           ; 6 uses
  %i.b = trunc i64 %1 to i32                      ; 4 uses
  %.not = icmp eq i32 %i.b, 0
  %.065.sroa.gep = getelementptr inbounds nuw i8, ptr %6, i64 8
  br i1 %.not, label %.loopexit104, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = and i64 %1, 4294967295                   ; 2 uses
  %i.d = icmp samesign ugt i64 %i.c, 268435455
  br i1 %i.d, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = shl nuw nsw i64 %i.c, 3                  ; 3 uses
  %i.f = tail call ptr @lock_user(i32 noundef 3, i64 noundef %0, i64 noundef %i.e, i1 noundef zeroext true) #29 ; 8 uses
  %.not81 = icmp eq ptr %i.f, null
  br i1 %.not81, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = alloca i8, i64 %i.e, align 16            ; 8 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.g, i8 0, i64 %i.e, i1 false), !annotation !18
  %wide.trip.count = and i64 %1, 4294967295
  %i.h = add nsw i64 %wide.trip.count, -1
  %xtraiter = and i64 %1, 3                       ; 3 uses
  %i.i = icmp ult i64 %i.h, 3
  br i1 %i.i, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.d
  %unroll_iter = and i64 %1, 4294967292
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.new
  %indvars.iv = phi i64 [ 0, %.new ], [ %indvars.iv.next.3, %bb.e ] ; 6 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.e ]
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv ; 2 uses
  %i.k = load i32, ptr %i.j, align 4
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv ; 2 uses
  store i32 %i.k, ptr %i.l, align 16
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.n = load i16, ptr %i.m, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  store i16 %i.n, ptr %i.o, align 4
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.next ; 2 uses
  %i.q = load i32, ptr %i.p, align 4
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.next ; 2 uses
  store i32 %i.q, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.t = load i16, ptr %i.s, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  store i16 %i.t, ptr %i.u, align 4
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.next.1 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.next.1 ; 2 uses
  store i32 %i.w, ptr %i.x, align 16
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.z = load i16, ptr %i.y, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  store i16 %i.z, ptr %i.aa, align 4
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.next.2 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.next.2 ; 2 uses
  store i32 %i.ac, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %i.af = load i16, ptr %i.ae, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  store i16 %i.af, ptr %i.ag, align 4
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit104.loopexit.unr-lcssa, label %bb.e, !llvm.loop !81

.loopexit104.loopexit.unr-lcssa:                  ; preds = %bb.e
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit104, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit104.loopexit.unr-lcssa, %bb.d
  %indvars.iv.epil.init = phi i64 [ 0, %bb.d ], [ %indvars.iv.next.3, %.loopexit104.loopexit.unr-lcssa ]
  %lcmp.mod1 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod1)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.f ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.f ]
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.epil ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.epil ; 2 uses
  store i32 %i.ai, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.al = load i16, ptr %i.ak, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  store i16 %i.al, ptr %i.am, align 4
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit104, label %bb.f, !llvm.loop !82

.loopexit104:                                     ; preds = %.loopexit104.loopexit.unr-lcssa, %bb.f, %bb.a
  %.071 = phi ptr [ null, %bb.a ], [ %i.f, %bb.f ], [ %i.f, %.loopexit104.loopexit.unr-lcssa ] ; 9 uses
  %.070 = phi ptr [ null, %bb.a ], [ %i.g, %bb.f ], [ %i.g, %.loopexit104.loopexit.unr-lcssa ] ; 11 uses
  br i1 %5, label %bb.g, label %bb.q

bb.g:                                             ; preds = %.loopexit104
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %6, i8 0, i64 16, i1 false), !annotation !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store ptr null, ptr %i.a, align 8
  %.not82 = icmp eq i64 %2, 0                     ; 2 uses
  br i1 %.not82, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.an = tail call ptr @lock_user(i32 noundef 1, i64 noundef %2, i64 noundef 16, i1 noundef zeroext true) #29 ; 2 uses
  %.not.i = icmp eq ptr %i.an, null
  br i1 %.not.i, label %target_to_host_timespec.exit, label %target_to_host_timespec.exit.thread

target_to_host_timespec.exit.thread:              ; preds = %bb.h
  %i.ao = load <2 x i64>, ptr %i.an, align 1
  store <2 x i64> %i.ao, ptr %6, align 16
  br label %bb.i

bb.i:                                             ; preds = %target_to_host_timespec.exit.thread, %bb.g
  %.065.sroa.phi = phi ptr [ %.065.sroa.gep, %target_to_host_timespec.exit.thread ], [ inttoptr (i64 8 to ptr), %bb.g ]
  %.065 = phi ptr [ %6, %target_to_host_timespec.exit.thread ], [ null, %bb.g ] ; 2 uses
  %.not84 = icmp eq i64 %3, 0
  br i1 %.not84, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ap = call i32 @process_sigsuspend_mask(ptr noundef nonnull %i.a, i64 noundef %3, i64 noundef %4) #29 ; 2 uses
  %.not85 = icmp eq i32 %i.ap, 0
  br i1 %.not85, label %._crit_edge, label %bb.k

._crit_edge:                                      ; preds = %bb.j
  %.pre = load ptr, ptr %i.a, align 8
  br label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aq = sext i32 %i.ap to i64
  br label %target_to_host_timespec.exit

bb.l:                                             ; preds = %._crit_edge, %bb.i
  %i.ar = phi ptr [ %.pre, %._crit_edge ], [ null, %bb.i ]
  %i.as = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @thread_cpu) ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = getelementptr i8, ptr %i.at, i64 608
  %.val.i88 = load ptr, ptr %i.au, align 16
  %i.av = getelementptr inbounds nuw i8, ptr %.val.i88, i64 9148
  %i.aw = call i64 (ptr, i64, ...) @safe_syscall_base(ptr noundef nonnull %i.av, i64 noundef 271, ptr noundef %.070, i32 noundef %i.b, ptr noundef %.065, ptr noundef %i.ar, i64 noundef 8) #29
  %sext103 = shl i64 %i.aw, 32                    ; 2 uses
  %i.ax = ashr exact i64 %sext103, 32
  %i.ay = icmp eq i64 %sext103, -4294967296
  br i1 %i.ay, label %bb.m, label %get_errno.exit

bb.m:                                             ; preds = %bb.l
  %i.az = tail call ptr @__errno_location() #28
  %i.ba = load i32, ptr %i.az, align 4
  %i.bb = sub i32 0, %i.ba
  %i.bc = sext i32 %i.bb to i64
  br label %get_errno.exit

get_errno.exit:                                   ; preds = %bb.l, %bb.m
  %.0.i89 = phi i64 [ %i.bc, %bb.m ], [ %i.ax, %bb.l ] ; 2 uses
  %i.bd = load ptr, ptr %i.a, align 8
  %.not86 = icmp eq ptr %i.bd, null
  %.not.i90 = icmp eq i64 %.0.i89, -512
  %or.cond = select i1 %.not86, i1 true, i1 %.not.i90
  br i1 %or.cond, label %finish_sigsuspend_mask.exit, label %bb.n

bb.n:                                             ; preds = %get_errno.exit
  %i.be = load ptr, ptr %i.as, align 8
  %i.bf = getelementptr i8, ptr %i.be, i64 608
  %.val.i91 = load ptr, ptr %i.bf, align 16
  %i.bg = getelementptr inbounds nuw i8, ptr %.val.i91, i64 9144
  store i32 1, ptr %i.bg, align 8
  br label %finish_sigsuspend_mask.exit

finish_sigsuspend_mask.exit:                      ; preds = %bb.n, %get_errno.exit
  br i1 %.not82, label %target_to_host_timespec.exit.thread99, label %bb.o

bb.o:                                             ; preds = %finish_sigsuspend_mask.exit
  %i.bh = call ptr @lock_user(i32 noundef 3, i64 noundef %2, i64 noundef 16, i1 noundef zeroext false) #29 ; 3 uses
  %.not.i92 = icmp eq ptr %i.bh, null
  br i1 %.not.i92, label %target_to_host_timespec.exit.thread99, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bi = load i64, ptr %.065, align 16
  store i64 %i.bi, ptr %i.bh, align 1
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bk = load i64, ptr %.065.sroa.phi, align 8
  store i64 %i.bk, ptr %i.bj, align 1
  br label %target_to_host_timespec.exit.thread99

target_to_host_timespec.exit.thread99:            ; preds = %finish_sigsuspend_mask.exit, %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  br label %bb.u

target_to_host_timespec.exit:                     ; preds = %bb.h, %bb.k
  %.072 = phi i64 [ -14, %bb.h ], [ %i.aq, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  br label %.loopexit

bb.q:                                             ; preds = %.loopexit104
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false), !annotation !18
  %i.bl = icmp sgt i64 %2, -1
  br i1 %i.bl, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bm = udiv i64 %2, 1000
  store i64 %i.bm, ptr %7, align 8
  %i.bn = urem i64 %2, 1000
  %i.bo = mul nuw nsw i64 %i.bn, 1000000
  %i.bp = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.bo, ptr %i.bp, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  %.0 = phi ptr [ %7, %bb.r ], [ null, %bb.q ]
  %i.bq = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @thread_cpu)
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = getelementptr i8, ptr %i.br, i64 608
  %.val.i94 = load ptr, ptr %i.bs, align 16
  %i.bt = getelementptr inbounds nuw i8, ptr %.val.i94, i64 9148
  %i.bu = call i64 (ptr, i64, ...) @safe_syscall_base(ptr noundef nonnull %i.bt, i64 noundef 271, ptr noundef %.070, i32 noundef %i.b, ptr noundef %.0, ptr noundef null, i64 noundef 0) #29
  %sext = shl i64 %i.bu, 32                       ; 2 uses
  %i.bv = ashr exact i64 %sext, 32
  %i.bw = icmp eq i64 %sext, -4294967296
  br i1 %i.bw, label %bb.t, label %get_errno.exit96

bb.t:                                             ; preds = %bb.s
  %i.bx = tail call ptr @__errno_location() #28
  %i.by = load i32, ptr %i.bx, align 4
  %i.bz = sub i32 0, %i.by
  %i.ca = sext i32 %i.bz to i64
  br label %get_errno.exit96

get_errno.exit96:                                 ; preds = %bb.s, %bb.t
  %.0.i95 = phi i64 [ %i.ca, %bb.t ], [ %i.bv, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  br label %bb.u

bb.u:                                             ; preds = %target_to_host_timespec.exit.thread99, %get_errno.exit96
  %.1 = phi i64 [ %.0.i89, %target_to_host_timespec.exit.thread99 ], [ %.0.i95, %get_errno.exit96 ] ; 4 uses
  %i.cb = icmp ult i64 %.1, -4096
  %i.cc = icmp ne i32 %i.b, 0
  %or.cond107 = and i1 %i.cb, %i.cc
  br i1 %or.cond107, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.u
  %wide.trip.count112 = and i64 %1, 4294967295
  %i.cd = add nsw i64 %wide.trip.count112, -1
  %xtraiter2 = and i64 %1, 7                      ; 3 uses
  %i.ce = icmp ult i64 %i.cd, 7
  br i1 %i.ce, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter6 = and i64 %1, 4294967288
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv109 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next110.7, %.lr.ph ] ; 10 uses
  %niter7 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter7.next.7, %.lr.ph ]
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %.070, i64 %indvars.iv109
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 6
  %i.ch = load i16, ptr %i.cg, align 2
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %.071, i64 %indvars.iv109
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 6
  store i16 %i.ch, ptr %i.cj, align 2
  %indvars.iv.next110 = or disjoint i64 %indvars.iv109, 1 ; 2 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %.070, i64 %indvars.iv.next110
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 6
  %i.cm = load i16, ptr %i.cl, align 2
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %.071, i64 %indvars.iv.next110
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 6
  store i16 %i.cm, ptr %i.co, align 2
  %indvars.iv.next110.1 = or disjoint i64 %indvars.iv109, 2 ; 2 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %.070, i64 %indvars.iv.next110.1
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 6
  %i.cr = load i16, ptr %i.cq, align 2
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %.071, i64 %indvars.iv.next110.1
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 6
  store i16 %i.cr, ptr %i.ct, align 2
  %indvars.iv.next110.2 = or disjoint i64 %indvars.iv109, 3 ; 2 uses
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %.070, i64 %indvars.iv.next110.2
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 6
  %i.cw = load i16, ptr %i.cv, align 2
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %.071, i64 %indvars.iv.next110.2
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 6
  store i16 %i.cw, ptr %i.cy, align 2
  %indvars.iv.next110.3 = or disjoint i64 %indvars.iv109, 4 ; 2 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %.070, i64 %indvars.iv.next110.3
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 6
  %i.db = load i16, ptr %i.da, align 2
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %.071, i64 %indvars.iv.next110.3
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 6
  store i16 %i.db, ptr %i.dd, align 2
  %indvars.iv.next110.4 = or disjoint i64 %indvars.iv109, 5 ; 2 uses
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %.070, i64 %indvars.iv.next110.4
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 6
  %i.dg = load i16, ptr %i.df, align 2
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %.071, i64 %indvars.iv.next110.4
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 6
  store i16 %i.dg, ptr %i.di, align 2
  %indvars.iv.next110.5 = or disjoint i64 %indvars.iv109, 6 ; 2 uses
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %.070, i64 %indvars.iv.next110.5
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 6
  %i.dl = load i16, ptr %i.dk, align 2
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %.071, i64 %indvars.iv.next110.5
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 6
  store i16 %i.dl, ptr %i.dn, align 2
  %indvars.iv.next110.6 = or disjoint i64 %indvars.iv109, 7 ; 2 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %.070, i64 %indvars.iv.next110.6
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 6
  %i.dq = load i16, ptr %i.dp, align 2
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %.071, i64 %indvars.iv.next110.6
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 6
  store i16 %i.dq, ptr %i.ds, align 2
  %indvars.iv.next110.7 = add nuw nsw i64 %indvars.iv109, 8 ; 2 uses
  %niter7.next.7 = add i64 %niter7, 8             ; 2 uses
  %niter7.ncmp.7 = icmp eq i64 %niter7.next.7, %unroll_iter6
  br i1 %niter7.ncmp.7, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !83

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph
  %lcmp.mod4.not = icmp eq i64 %xtraiter2, 0
  br i1 %lcmp.mod4.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv109.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next110.7, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod5 = icmp ne i64 %xtraiter2, 0
  call void @llvm.assume(i1 %lcmp.mod5)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv109.epil = phi i64 [ %indvars.iv109.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next110.epil, %.lr.ph.epil ] ; 3 uses
  %epil.iter3 = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter3.next, %.lr.ph.epil ]
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %.070, i64 %indvars.iv109.epil
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 6
  %i.dv = load i16, ptr %i.du, align 2
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %.071, i64 %indvars.iv109.epil
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 6
  store i16 %i.dv, ptr %i.dx, align 2
  %indvars.iv.next110.epil = add nuw nsw i64 %indvars.iv109.epil, 1
  %epil.iter3.next = add i64 %epil.iter3, 1       ; 2 uses
  %epil.iter3.cmp.not = icmp eq i64 %epil.iter3.next, %xtraiter2
  br i1 %epil.iter3.cmp.not, label %.loopexit, label %.lr.ph.epil, !llvm.loop !84

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.epil, %bb.u, %target_to_host_timespec.exit, %bb.c, %bb.b
  %.173 = phi i64 [ -22, %bb.b ], [ -14, %bb.c ], [ %.072, %target_to_host_timespec.exit ], [ %.1, %bb.u ], [ %.1, %.lr.ph.epil ], [ %.1, %.loopexit.loopexit.unr-lcssa ]
  ret i64 %.173
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc ptr @lock_iovec(i32 noundef range(i32 1, 4) %0, i64 noundef %1, i64 noundef %2, i32 noundef range(i32 0, 2) %3) unnamed_addr #2 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %.loopexit92.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ugt i64 %2, 1024
  br i1 %i.b, label %.loopexit92.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call noalias ptr @g_try_malloc0_n(i64 noundef %2, i64 noundef 16) #35 ; 6 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %.loopexit92.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = shl nuw nsw i64 %2, 4
  %i.f = tail call ptr @lock_user(i32 noundef 1, i64 noundef %1, i64 noundef %i.e, i1 noundef zeroext true) #29 ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.d
  %i.h = icmp ne i32 %3, 0
  br label %bb.e

bb.e:                                             ; preds = %.preheader, %.thread
  %i.i = phi i64 [ 0, %.preheader ], [ %i.z, %.thread ] ; 4 uses
  %.06897 = phi i1 [ false, %.preheader ], [ %.2, %.thread ] ; 3 uses
  %.07395 = phi i32 [ 0, %.preheader ], [ %i.y, %.thread ] ; 2 uses
  %.07594 = phi i64 [ 0, %.preheader ], [ %i.x, %.thread ] ; 2 uses
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.i ; 2 uses
  %i.k = load i64, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.m = load i64, ptr %i.l, align 8              ; 4 uses
  %i.n = icmp slt i64 %i.m, 0
  br i1 %i.n, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = icmp eq i64 %i.m, 0
  br i1 %i.o, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.i
  store ptr null, ptr %i.p, align 8
  br label %.thread

bb.h:                                             ; preds = %bb.f
  %i.q = tail call ptr @lock_user(i32 noundef %0, i64 noundef %i.k, i64 noundef %i.m, i1 noundef zeroext %i.h) #29 ; 2 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.i
  store ptr %i.q, ptr %i.r, align 8
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.s = icmp eq i32 %.07395, 0
  br i1 %i.s, label %.loopexit, label %.thread

bb.j:                                             ; preds = %bb.h
  %i.t = sub i64 2147479552, %.07594
  %i.u = tail call i64 @llvm.umin.i64(i64 %i.m, i64 %i.t)
  %spec.select = select i1 %.06897, i64 0, i64 %i.u
  br label %.thread

.thread:                                          ; preds = %bb.j, %bb.i, %bb.g
  %.2 = phi i1 [ %.06897, %bb.g ], [ %.06897, %bb.j ], [ true, %bb.i ]
  %.1 = phi i64 [ 0, %bb.g ], [ %spec.select, %bb.j ], [ 0, %bb.i ] ; 2 uses
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i64 %.1, ptr %i.w, align 8
  %i.x = add i64 %.1, %.07594
  %i.y = add i32 %.07395, 1                       ; 2 uses
  %i.z = sext i32 %i.y to i64                     ; 2 uses
  %i.aa = icmp ugt i64 %2, %i.z
  br i1 %i.aa, label %bb.e, label %.loopexit92, !llvm.loop !85

.loopexit:                                        ; preds = %bb.e, %bb.i, %bb.d
  %.272 = phi i32 [ 14, %bb.d ], [ 14, %bb.i ], [ 22, %bb.e ]
  tail call void @g_free(ptr noundef nonnull %i.c) #29
  br label %.loopexit92.sink.split

.loopexit92.sink.split:                           ; preds = %bb.c, %bb.b, %bb.a, %.loopexit
  %.272.sink = phi i32 [ %.272, %.loopexit ], [ 22, %bb.b ], [ 0, %bb.a ], [ 12, %bb.c ]
  %i.ab = tail call ptr @__errno_location() #28
  store i32 %.272.sink, ptr %i.ab, align 4
  br label %.loopexit92

.loopexit92:                                      ; preds = %.thread, %.loopexit92.sink.split
  %.065 = phi ptr [ null, %.loopexit92.sink.split ], [ %i.c, %.thread ]
  ret ptr %.065
}

; Function Attrs: nounwind
declare i32 @getsid(i32 noundef) local_unnamed_addr #3

declare i32 @fdatasync(i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare i64 @sysconf(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 -14, 1) i32 @host_to_target_cpu_mask(ptr nofree noundef nonnull readonly captures(none) %0, i64 noundef range(i64 0, 4294967296) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #2 {
bb.a:
  %.not = icmp ult i64 %1, %3
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.653, ptr noundef nonnull @.str.584, i32 noundef 9205, ptr noundef nonnull @__PRETTY_FUNCTION__.host_to_target_cpu_mask) #30
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = tail call ptr @lock_user(i32 noundef 3, i64 noundef %2, i64 noundef %3, i1 noundef zeroext false) #29 ; 2 uses
  %.not34 = icmp eq ptr %i.a, null
  br i1 %.not34, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.b = lshr i64 %3, 3                           ; 2 uses
  %.not40 = icmp eq i64 %i.b, 0
  br i1 %.not40, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %middle.block
  %indvars.iv48 = phi i64 [ %indvars.iv.next49, %middle.block ], [ 0, %.preheader ] ; 2 uses
  %indvars.iv = phi i32 [ %indvars.iv.next, %middle.block ], [ 0, %.preheader ] ; 2 uses
  %i.c = zext i32 %indvars.iv to i64              ; 2 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.c, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  %induction = or disjoint <2 x i64> %broadcast.splat, <i64 0, i64 1>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %.lr.ph
  %index = phi i64 [ 0, %.lr.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %.lr.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %vec.ind53 = phi <2 x i64> [ %induction, %.lr.ph ], [ %vec.ind.next60, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %.lr.ph ], [ %i.y, %vector.body ]
  %vec.phi54 = phi <2 x i64> [ zeroinitializer, %.lr.ph ], [ %i.z, %vector.body ]
  %step.add55 = add nuw nsw <2 x i64> %vec.ind53, splat (i64 2)
  %i.d = add nuw i64 %index, %i.c                 ; 2 uses
  %i.e = lshr i64 %i.d, 6
  %i.f = lshr i64 %i.d, 6
  %i.g = and i64 %i.e, 67108863
  %i.h = and i64 %i.f, 67108863
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.g
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.h
  %i.k = load i64, ptr %i.i, align 8
  %broadcast.splatinsert56 = insertelement <2 x i64> poison, i64 %i.k, i64 0
  %broadcast.splat57 = shufflevector <2 x i64> %broadcast.splatinsert56, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.l = load i64, ptr %i.j, align 8
  %broadcast.splatinsert58 = insertelement <2 x i64> poison, i64 %i.l, i64 0
  %broadcast.splat59 = shufflevector <2 x i64> %broadcast.splatinsert58, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.m = and <2 x i64> %vec.ind53, splat (i64 63)
  %i.n = and <2 x i64> %step.add55, splat (i64 63)
  %i.o = shl nuw <2 x i64> splat (i64 1), %i.m
  %i.p = shl nuw <2 x i64> splat (i64 1), %i.n
  %i.q = and <2 x i64> %broadcast.splat57, %i.o
  %i.r = and <2 x i64> %broadcast.splat59, %i.p
  %i.s = icmp eq <2 x i64> %i.q, zeroinitializer
  %i.t = icmp eq <2 x i64> %i.r, zeroinitializer
  %i.u = shl nuw <2 x i64> splat (i64 1), %vec.ind
  %i.v = shl nuw <2 x i64> splat (i64 4), %vec.ind
  %i.w = select <2 x i1> %i.s, <2 x i64> zeroinitializer, <2 x i64> %i.u
  %i.x = select <2 x i1> %i.t, <2 x i64> zeroinitializer, <2 x i64> %i.v
  %i.y = or <2 x i64> %i.w, %vec.phi              ; 2 uses
  %i.z = or <2 x i64> %i.x, %vec.phi54            ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %vec.ind.next60 = add nuw nsw <2 x i64> %vec.ind53, splat (i64 4)
  %i.aa = icmp eq i64 %index.next, 64
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !86

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <2 x i64> %i.z, %i.y
  %i.ab = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx)
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv48
  store i64 %i.ab, ptr %i.ac, align 1
  %indvars.iv.next49 = add i64 %indvars.iv48, 1   ; 2 uses
  %i.ad = and i64 %indvars.iv.next49, 4294967295
  %i.ae = icmp samesign ugt i64 %i.b, %i.ad
  %indvars.iv.next = add i32 %indvars.iv, 64
  br i1 %i.ae, label %.lr.ph, label %.loopexit, !llvm.loop !87

.loopexit:                                        ; preds = %middle.block, %.preheader, %bb.c
  %.030 = phi i32 [ -14, %bb.c ], [ 0, %.preheader ], [ 0, %middle.block ]
  ret i32 %.030
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 -14, 1) i32 @target_to_host_cpu_mask(ptr noundef nonnull %0, i64 noundef range(i64 0, 4294967296) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #2 {
bb.a:
  %.not = icmp ult i64 %1, %3
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.653, ptr noundef nonnull @.str.584, i32 noundef 9171, ptr noundef nonnull @__PRETTY_FUNCTION__.target_to_host_cpu_mask) #30
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = tail call ptr @lock_user(i32 noundef 1, i64 noundef %2, i64 noundef %3, i1 noundef zeroext true) #29 ; 2 uses
  %.not34 = icmp eq ptr %i.a, null
  br i1 %.not34, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %0, i8 noundef 0, i64 noundef %1, i1 noundef false) #29
  %i.b = lshr i64 %3, 3                           ; 2 uses
  %.not39 = icmp eq i64 %i.b, 0
  br i1 %.not39, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %bb.h
  %indvars.iv47 = phi i64 [ %indvars.iv.next48, %bb.h ], [ 0, %bb.d ] ; 2 uses
  %indvars.iv = phi i32 [ %indvars.iv.next, %bb.h ], [ 0, %bb.d ] ; 2 uses
  %i.c = zext i32 %indvars.iv to i64
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv47
  %.val = load i64, ptr %i.d, align 1
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv42 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next43, %bb.g ] ; 2 uses
  %indvars.iv40 = phi i64 [ %i.c, %.lr.ph ], [ %indvars.iv.next41, %bb.g ] ; 3 uses
  %i.e = shl nuw i64 1, %indvars.iv42
  %i.f = and i64 %i.e, %.val
  %.not35 = icmp eq i64 %i.f, 0
  br i1 %.not35, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = and i64 %indvars.iv40, 63
  %i.h = shl nuw i64 1, %i.g
  %i.i = lshr i64 %indvars.iv40, 6
  %i.j = and i64 %i.i, 67108863
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.j ; 2 uses
  %i.l = load i64, ptr %i.k, align 8
  %i.m = or i64 %i.l, %i.h
  store i64 %i.m, ptr %i.k, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42, 1 ; 2 uses
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv40, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next43, 64
  br i1 %exitcond.not, label %bb.h, label %bb.e, !llvm.loop !88

bb.h:                                             ; preds = %bb.g
  %indvars.iv.next48 = add i64 %indvars.iv47, 1   ; 2 uses
  %i.n = and i64 %indvars.iv.next48, 4294967295
  %i.o = icmp samesign ugt i64 %i.b, %i.n
  %indvars.iv.next = add i32 %indvars.iv, 64
  br i1 %i.o, label %.lr.ph, label %.loopexit, !llvm.loop !89

.loopexit:                                        ; preds = %bb.h, %bb.d, %bb.c
  %.029 = phi i32 [ -14, %bb.c ], [ 0, %bb.d ], [ 0, %bb.h ]
  ret i32 %.029
}

; Function Attrs: nounwind
declare i32 @sched_yield() local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @sched_get_priority_max(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @sched_get_priority_min(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @sched_rr_get_interval(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i64 -2147483648, 2147483648) i64 @do_prctl(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  switch i64 %1, label %bb.w [
    i64 2, label %bb.b
    i64 1, label %bb.f
    i64 16, label %bb.h
    i64 15, label %bb.k
    i64 46, label %get_errno.exit154
    i64 45, label %get_errno.exit154
    i64 51, label %get_errno.exit154
    i64 50, label %get_errno.exit154
    i64 64, label %get_errno.exit154
    i64 63, label %get_errno.exit154
    i64 54, label %get_errno.exit154
    i64 55, label %get_errno.exit154
    i64 56, label %get_errno.exit154
    i64 74, label %get_errno.exit154
    i64 75, label %get_errno.exit154
    i64 76, label %get_errno.exit154
    i64 5, label %get_errno.exit154
    i64 6, label %get_errno.exit154
    i64 59, label %bb.n
    i64 47, label %bb.o
    i64 23, label %bb.o
    i64 24, label %bb.o
    i64 3, label %bb.o
    i64 4, label %bb.o
    i64 7, label %bb.o
    i64 8, label %bb.o
    i64 27, label %bb.o
    i64 28, label %bb.o
    i64 13, label %bb.o
    i64 14, label %bb.o
    i64 30, label %bb.o
    i64 29, label %bb.o
    i64 33, label %bb.o
    i64 34, label %bb.o
    i64 39, label %bb.o
    i64 38, label %bb.o
    i64 58, label %bb.o
    i64 57, label %bb.o
    i64 36, label %bb.o
    i64 52, label %bb.o
    i64 53, label %bb.o
    i64 37, label %bb.q
    i64 40, label %bb.u
    i64 11, label %get_errno.exit154
    i64 12, label %get_errno.exit154
    i64 19, label %get_errno.exit154
    i64 20, label %get_errno.exit154
    i64 9, label %get_errno.exit154
    i64 10, label %get_errno.exit154
    i64 35, label %get_errno.exit154
    i64 21, label %get_errno.exit154
    i64 22, label %get_errno.exit154
    i64 42, label %get_errno.exit154
    i64 41, label %get_errno.exit154
    i64 25, label %get_errno.exit154
    i64 26, label %get_errno.exit154
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i32 0, ptr %i.a, align 4, !annotation !18
  %i.c = call i32 (i32, ...) @prctl(i32 noundef 2, ptr noundef nonnull %i.a, i64 noundef %3, i64 noundef %4, i64 noundef %5) #29 ; 2 uses
  %i.d = icmp eq i32 %i.c, -1
  br i1 %i.d, label %bb.c, label %get_errno.exit

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @__errno_location() #28
  %i.f = load i32, ptr %i.e, align 4
  %i.g = sub i32 0, %i.f
  br label %get_errno.exit

get_errno.exit:                                   ; preds = %bb.b, %bb.c
  %.0.i.in = phi i32 [ %i.g, %bb.c ], [ %i.c, %bb.b ] ; 2 uses
  %.0.i = sext i32 %.0.i.in to i64                ; 2 uses
  %i.h = icmp ult i32 %.0.i.in, -4096
  br i1 %i.h, label %bb.d, label %.critedge

bb.d:                                             ; preds = %get_errno.exit
  %i.i = call ptr @lock_user(i32 noundef 3, i64 noundef %2, i64 noundef 4, i1 noundef zeroext false) #29 ; 2 uses
  %.not149.not = icmp eq ptr %i.i, null
  br i1 %.not149.not, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = load i32, ptr %i.a, align 4
  %i.k = call i32 @host_to_target_signal(i32 noundef %i.j) #29
  store i32 %i.k, ptr %i.i, align 1
  br label %.critedge

.critedge:                                        ; preds = %get_errno.exit, %bb.e, %bb.d
  %.0 = phi i64 [ -14, %bb.d ], [ %.0.i, %bb.e ], [ %.0.i, %get_errno.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br label %get_errno.exit154

bb.f:                                             ; preds = %bb.a
  %i.l = trunc i64 %2 to i32
  %i.m = tail call i32 @target_to_host_signal(i32 noundef %i.l) #29
  %i.n = tail call i32 (i32, ...) @prctl(i32 noundef 1, i32 noundef %i.m, i64 noundef %3, i64 noundef %4, i64 noundef %5) #29 ; 2 uses
  %i.o = sext i32 %i.n to i64
  %i.p = icmp eq i32 %i.n, -1
  br i1 %i.p, label %bb.g, label %get_errno.exit154

bb.g:                                             ; preds = %bb.f
  %i.q = tail call ptr @__errno_location() #28
  %i.r = load i32, ptr %i.q, align 4
  %i.s = sub i32 0, %i.r
  %i.t = sext i32 %i.s to i64
  br label %get_errno.exit154

bb.h:                                             ; preds = %bb.a
  %i.u = tail call ptr @lock_user(i32 noundef 3, i64 noundef %2, i64 noundef 16, i1 noundef zeroext true) #29 ; 2 uses
  %.not147 = icmp eq ptr %i.u, null
  br i1 %.not147, label %get_errno.exit154, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = tail call i32 (i32, ...) @prctl(i32 noundef 16, i64 noundef %i.v, i64 noundef %3, i64 noundef %4, i64 noundef %5) #29 ; 2 uses
  %i.x = sext i32 %i.w to i64
  %i.y = icmp eq i32 %i.w, -1
  br i1 %i.y, label %bb.j, label %get_errno.exit154

bb.j:                                             ; preds = %bb.i
  %i.z = tail call ptr @__errno_location() #28
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = sub i32 0, %i.aa
  %i.ac = sext i32 %i.ab to i64
  br label %get_errno.exit154

bb.k:                                             ; preds = %bb.a
  %i.ad = tail call ptr @lock_user(i32 noundef 1, i64 noundef %2, i64 noundef 16, i1 noundef zeroext true) #29 ; 2 uses
  %.not146 = icmp eq ptr %i.ad, null
  br i1 %.not146, label %get_errno.exit154, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = tail call i32 (i32, ...) @prctl(i32 noundef 15, i64 noundef %i.ae, i64 noundef %3, i64 noundef %4, i64 noundef %5) #29 ; 2 uses
  %i.ag = sext i32 %i.af to i64
  %i.ah = icmp eq i32 %i.af, -1
  br i1 %i.ah, label %bb.m, label %get_errno.exit154

bb.m:                                             ; preds = %bb.l
  %i.ai = tail call ptr @__errno_location() #28
  %i.aj = load i32, ptr %i.ai, align 4
  %i.ak = sub i32 0, %i.aj
  %i.al = sext i32 %i.ak to i64
  br label %get_errno.exit154

bb.n:                                             ; preds = %bb.a
  %i.am = tail call fastcc i64 @do_prctl_syscall_user_dispatch(ptr noundef %0, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5)
  br label %get_errno.exit154

bb.o:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.an = trunc nuw nsw i64 %1 to i32
  %i.ao = tail call i32 (i32, ...) @prctl(i32 noundef %i.an, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) #29 ; 2 uses
  %i.ap = sext i32 %i.ao to i64
  %i.aq = icmp eq i32 %i.ao, -1
  br i1 %i.aq, label %bb.p, label %get_errno.exit154

bb.p:                                             ; preds = %bb.o
  %i.ar = tail call ptr @__errno_location() #28
  %i.as = load i32, ptr %i.ar, align 4
  %i.at = sub i32 0, %i.as
  %i.au = sext i32 %i.at to i64
  br label %get_errno.exit154

bb.q:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  store i32 0, ptr %i.b, align 4, !annotation !18
  %i.av = call i32 (i32, ...) @prctl(i32 noundef 37, ptr noundef nonnull %i.b, i64 noundef %3, i64 noundef %4, i64 noundef %5) #29 ; 2 uses
  %i.aw = icmp eq i32 %i.av, -1
  br i1 %i.aw, label %bb.r, label %get_errno.exit162

bb.r:                                             ; preds = %bb.q
  %i.ax = tail call ptr @__errno_location() #28
  %i.ay = load i32, ptr %i.ax, align 4
  %i.az = sub i32 0, %i.ay
  br label %get_errno.exit162
end_hunk_14
begin_hunk_15_@clone_func:bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.i = load i64, ptr %i.h, align 8              ; 2 uses
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = tail call ptr @lock_user(i32 noundef 3, i64 noundef %i.i, i64 noundef 4, i1 noundef zeroext false) #29 ; 2 uses
  %.not32 = icmp eq ptr %i.j, null
  br i1 %.not32, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load i32, ptr %i.g, align 8
  store i32 %i.k, ptr %i.j, align 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.m = load i64, ptr %i.l, align 8              ; 2 uses
  %.not33 = icmp eq i64 %i.m, 0
  br i1 %.not33, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = tail call ptr @lock_user(i32 noundef 3, i64 noundef %i.m, i64 noundef 4, i1 noundef zeroext false) #29 ; 2 uses
  %.not34 = icmp eq ptr %i.n, null
  br i1 %.not34, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = load i32, ptr %i.g, align 8
  store i32 %i.o, ptr %i.n, align 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.p = getelementptr inbounds i8, ptr %i.a, i64 -16264
  %i.q = load i64, ptr %i.p, align 8
  tail call void @qemu_guest_random_seed_thread_part2(i64 noundef %i.q) #29
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.s = tail call i32 @sigprocmask(i32 noundef 2, ptr noundef nonnull %i.r, ptr noundef null) #29 ; 0 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.u = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.t) #29 ; 0 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = tail call i32 @pthread_cond_broadcast(ptr noundef nonnull %i.v) #29 ; 0 uses
  %i.x = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.t) #29 ; 0 uses
  %i.y = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @clone_lock) #29 ; 0 uses
  %i.z = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @clone_lock) #29 ; 0 uses
  tail call void @cpu_loop(ptr noundef nonnull %i.a) #30
  unreachable
}

; Function Attrs: nounwind
declare i32 @pthread_attr_destroy(ptr noundef) local_unnamed_addr #3

declare i32 @pthread_cond_wait(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @pthread_cond_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @pthread_mutex_destroy(ptr noundef) local_unnamed_addr #3

declare void @fork_start() local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare i32 @fork() local_unnamed_addr #10

declare void @fork_end(i32 noundef) local_unnamed_addr #5

declare void @qemu_set_cloexec(i32 noundef) local_unnamed_addr #5

declare zeroext i1 @tcg_cflags_has(ptr noundef, i32 noundef) local_unnamed_addr #5

declare void @tb_flush__exclusive_or_serial() local_unnamed_addr #5

declare void @tcg_cflags_set(ptr noundef, i32 noundef) local_unnamed_addr #5

declare void @rcu_register_thread() local_unnamed_addr #5

declare void @tcg_register_thread() local_unnamed_addr #5

declare void @task_settid(ptr noundef) local_unnamed_addr #5

declare void @qemu_guest_random_seed_thread_part2(i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @pthread_cond_broadcast(ptr noundef) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @cpu_loop(ptr noundef) local_unnamed_addr #17

declare ptr @g_realloc_n(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @pipe2(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc range(i64 -14, 1) i64 @copy_to_user_flock(i64 noundef %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #8 {
bb.a:
  %i.a = tail call ptr @lock_user(i32 noundef 3, i64 noundef %0, i64 noundef 32, i1 noundef zeroext false) #29 ; 6 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i16, ptr %1, align 8
  store i16 %i.b, ptr %i.a, align 1
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.e = load i16, ptr %i.d, align 2
  store i16 %i.e, ptr %i.c, align 1
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i64, ptr %i.g, align 8
  store i64 %i.h, ptr %i.f, align 1
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load i64, ptr %i.j, align 8
  store i64 %i.k, ptr %i.i, align 1
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.n = load i32, ptr %i.m, align 8
  store i32 %i.n, ptr %i.l, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ 0, %bb.b ], [ -14, %bb.a ]
  ret i64 %.0
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc range(i64 -14, 1) i64 @copy_to_user_flock64(i64 noundef %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #8 {
bb.a:
  %i.a = tail call ptr @lock_user(i32 noundef 3, i64 noundef %0, i64 noundef 32, i1 noundef zeroext false) #29 ; 6 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i16, ptr %1, align 8
  store i16 %i.b, ptr %i.a, align 1
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.e = load i16, ptr %i.d, align 2
  store i16 %i.e, ptr %i.c, align 1
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i64, ptr %i.g, align 8
  store i64 %i.h, ptr %i.f, align 1
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load i64, ptr %i.j, align 8
  store i64 %i.k, ptr %i.i, align 1
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.n = load i32, ptr %i.m, align 8
  store i32 %i.n, ptr %i.l, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ 0, %bb.b ], [ -14, %bb.a ]
  ret i64 %.0
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc range(i64 -14, 1) i64 @copy_to_user_fdset(i64 noundef range(i64 1, 0) %0, ptr nofree noundef nonnull readonly captures(none) %1, i32 noundef %2) unnamed_addr #8 {
bb.a:
  %i.a = add i32 %2, 63                           ; 2 uses
  %i.b = sdiv i32 %i.a, 64                        ; 2 uses
  %i.c = sext i32 %i.b to i64
  %i.d = shl nsw i64 %i.c, 3
  %i.e = tail call ptr @lock_user(i32 noundef 3, i64 noundef %0, i64 noundef %i.d, i1 noundef zeroext false) #29 ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %.loopexit, label %.preheader34

.preheader34:                                     ; preds = %bb.a
  %i.f = icmp sgt i32 %i.a, 63
  br i1 %i.f, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %.preheader34
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %bb.c
  %indvars.iv42 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next43, %bb.c ] ; 2 uses
  %.02939 = phi i32 [ 0, %.preheader.preheader ], [ %i.q, %bb.c ]
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %.02837 = phi i64 [ 0, %.preheader ], [ %i.p, %bb.b ]
  %.136 = phi i32 [ %.02939, %.preheader ], [ %i.q, %bb.b ] ; 3 uses
  %i.g = sext i32 %.136 to i64
  %i.h = tail call i64 @__fdelt_chk(i64 noundef %i.g) #29
  %i.i = getelementptr inbounds [8 x i8], ptr %1, i64 %i.h
  %i.j = load i64, ptr %i.i, align 8
  %i.k = srem i32 %.136, 64
  %i.l = zext nneg i32 %i.k to i64
  %i.m = lshr i64 %i.j, %i.l
  %i.n = and i64 %i.m, 1
  %i.o = shl nuw i64 %i.n, %indvars.iv
  %i.p = or i64 %i.o, %.02837                     ; 2 uses
  %i.q = add i32 %.136, 1                         ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 64
  br i1 %exitcond.not, label %bb.c, label %bb.b, !llvm.loop !90

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv42
  store i64 %i.p, ptr %i.r, align 1
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42, 1 ; 2 uses
  %exitcond45.not = icmp eq i64 %indvars.iv.next43, %wide.trip.count
  br i1 %exitcond45.not, label %.loopexit, label %.preheader, !llvm.loop !91

.loopexit:                                        ; preds = %bb.c, %.preheader34, %bb.a
  %.0 = phi i64 [ -14, %bb.a ], [ 0, %.preheader34 ], [ 0, %bb.c ]
  ret i64 %.0
}

declare i64 @__fdelt_chk(i64 noundef) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc range(i64 -14, 1) i64 @host_to_target_sockaddr(i64 noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2) unnamed_addr #8 {
bb.a:
  %i.a = icmp eq i32 %2, 0
  br i1 %i.a, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__assert_fail(ptr noundef nonnull @.str.647, ptr noundef nonnull @.str.584, i32 noundef 1746, ptr noundef nonnull @__PRETTY_FUNCTION__.host_to_target_sockaddr) #30
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.b = zext i32 %2 to i64                       ; 2 uses
  %i.c = tail call ptr @lock_user(i32 noundef 3, i64 noundef %0, i64 noundef %i.b, i1 noundef zeroext false) #29 ; 4 uses
  %.not41 = icmp eq ptr %i.c, null
  br i1 %.not41, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.c, ptr noundef nonnull align 1 %1, i64 noundef %i.b, i1 noundef false) #29
  %.not42 = icmp eq i32 %2, 1
  %i.d = load i16, ptr %1, align 2                ; 5 uses
  br i1 %.not42, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i16 %i.d, ptr %i.c, align 2
  %i.e = icmp eq i16 %i.d, 16
  %i.f = icmp ugt i32 %2, 11
  %or.cond = and i1 %i.f, %i.e
  %i.g = icmp eq i16 %i.d, 17
  %or.cond48 = or i1 %or.cond, %i.g
  br i1 %or.cond48, label %bb.i, label %bb.g

.thread:                                          ; preds = %bb.e
  %.old = icmp eq i16 %i.d, 17
  br i1 %.old, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f, %.thread
  %i.h = icmp eq i16 %i.d, 10
  %i.i = icmp ugt i32 %2, 27
  %or.cond5 = and i1 %i.i, %i.h
  br i1 %or.cond5, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4
  %i.l = and i32 %i.k, 65535
  store i32 %i.l, ptr %i.j, align 4
  br label %bb.i

bb.i:                                             ; preds = %.thread, %bb.f, %bb.g, %bb.h, %bb.d, %bb.a
  %.0 = phi i64 [ 0, %bb.a ], [ -14, %bb.d ], [ 0, %bb.f ], [ 0, %bb.h ], [ 0, %bb.g ], [ 0, %.thread ]
  ret i64 %.0
}

declare zeroext i1 @page_check_range(i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc i64 @target_to_host_sockaddr(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2, i32 noundef %3) unnamed_addr #8 {
bb.a:
  %i.a = icmp slt i32 %0, 0
  br i1 %i.a, label %fd_trans_target_to_host_addr.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load atomic ptr, ptr @qemu_mutex_lock_func monotonic, align 8
  tail call void %i.b(ptr noundef nonnull @target_fd_trans_lock, ptr noundef nonnull @.str.642, i32 noundef 56) #29, !inline_history !92
  %i.c = load i32, ptr @target_fd_max, align 4
  %i.d = icmp ult i32 %0, %i.c
  br i1 %i.d, label %bb.c, label %fd_trans_target_to_host_addr.exit.thread57

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr @target_fd_trans, align 8
  %i.f = zext nneg i32 %0 to i64                  ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.f
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %fd_trans_target_to_host_addr.exit.thread57, label %fd_trans_target_to_host_addr.exit

fd_trans_target_to_host_addr.exit.thread57:       ; preds = %bb.c, %bb.b
  tail call void @qemu_mutex_unlock_impl(ptr noundef nonnull @target_fd_trans_lock, ptr noundef nonnull @.str.642, i32 noundef 56) #29
  br label %fd_trans_target_to_host_addr.exit.thread

fd_trans_target_to_host_addr.exit:                ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void @qemu_mutex_unlock_impl(ptr noundef nonnull @target_fd_trans_lock, ptr noundef nonnull @.str.642, i32 noundef 56) #29
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %fd_trans_target_to_host_addr.exit.thread, label %bb.d

bb.d:                                             ; preds = %fd_trans_target_to_host_addr.exit
  %i.k = load atomic ptr, ptr @qemu_mutex_lock_func monotonic, align 8
  tail call void %i.k(ptr noundef nonnull @target_fd_trans_lock, ptr noundef nonnull @.str.642, i32 noundef 56) #29, !inline_history !92
  %i.l = load i32, ptr @target_fd_max, align 4
  %i.m = icmp ult i32 %0, %i.l
  br i1 %i.m, label %bb.e, label %fd_trans_target_to_host_addr.exit54

bb.e:                                             ; preds = %bb.d
  %i.n = load ptr, ptr @target_fd_trans, align 8
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.f
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %.not.i53 = icmp eq ptr %i.p, null
  br i1 %.not.i53, label %fd_trans_target_to_host_addr.exit54, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  br label %fd_trans_target_to_host_addr.exit54

fd_trans_target_to_host_addr.exit54:              ; preds = %bb.d, %bb.e, %bb.f
  %.0.i51 = phi ptr [ %i.r, %bb.f ], [ null, %bb.e ], [ null, %bb.d ]
  tail call void @qemu_mutex_unlock_impl(ptr noundef nonnull @target_fd_trans_lock, ptr noundef nonnull @.str.642, i32 noundef 56) #29
  %i.s = tail call i64 %.0.i51(ptr noundef nonnull %1, i64 noundef %2, i32 noundef %3) #29
  br label %bb.l

fd_trans_target_to_host_addr.exit.thread:         ; preds = %bb.a, %fd_trans_target_to_host_addr.exit.thread57, %fd_trans_target_to_host_addr.exit
  %i.t = zext i32 %3 to i64                       ; 3 uses
  %i.u = tail call ptr @lock_user(i32 noundef 1, i64 noundef %2, i64 noundef %i.t, i1 noundef zeroext true) #29 ; 5 uses
  %.not47 = icmp eq ptr %i.u, null
  br i1 %.not47, label %bb.l, label %bb.g

bb.g:                                             ; preds = %fd_trans_target_to_host_addr.exit.thread
  %i.v = load i16, ptr %i.u, align 2              ; 2 uses
  %i.w = icmp eq i16 %i.v, 1
  br i1 %i.w, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.x = add i32 %3, -1
  %or.cond = icmp ult i32 %i.x, 109
  br i1 %or.cond, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr i8, ptr %i.u, i64 %i.t     ; 2 uses
  %i.z = getelementptr i8, ptr %i.y, i64 -1
  %i.aa = load i8, ptr %i.z, align 1
  %.not48 = icmp eq i8 %i.aa, 0
  br i1 %.not48, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = load i8, ptr %i.y, align 1
  %.not49 = icmp eq i8 %i.ab, 0
  %i.ac = zext i1 %.not49 to i32
  %spec.select = add nuw nsw i32 %3, %i.ac
  br label %.thread

.thread:                                          ; preds = %bb.h, %bb.i, %bb.j
  %.1 = phi i32 [ %3, %bb.h ], [ %spec.select, %bb.j ], [ %3, %bb.i ]
  %spec.store.select = tail call i32 @llvm.umin.i32(i32 %.1, i32 110)
  %i.ad = zext nneg i32 %spec.store.select to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 2 %i.u, i64 noundef %i.ad, i1 noundef false) #29
  store i16 1, ptr %1, align 2
  br label %bb.l

bb.k:                                             ; preds = %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 2 %i.u, i64 noundef %i.t, i1 noundef false) #29
  store i16 %i.v, ptr %1, align 2
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.thread, %fd_trans_target_to_host_addr.exit.thread, %fd_trans_target_to_host_addr.exit54
  %.0 = phi i64 [ %i.s, %fd_trans_target_to_host_addr.exit54 ], [ -14, %fd_trans_target_to_host_addr.exit.thread ], [ 0, %.thread ], [ 0, %bb.k ]
  ret i64 %.0
}

; Function Attrs: nounwind
declare i32 @bind(i32 noundef, ptr, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @getpeername(i32 noundef, ptr, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @getsockname(i32 noundef, ptr, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @getsockopt(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @do_sendrecvmsg_locked(i32 noundef %0, ptr nofree noundef nonnull captures(none) %1, i32 noundef %2, i32 noundef range(i32 0, 2) %3) unnamed_addr #2 {
bb.a:
  %4 = alloca %struct.msghdr, align 8             ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !annotation !18
  %i.a = load i64, ptr %1, align 8                ; 2 uses
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 8              ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.c, ptr %i.d, align 8
  %i.e = add i32 %i.c, 1
  %i.f = zext i32 %i.e to i64                     ; 2 uses
  %i.g = alloca i8, i64 %i.f, align 16            ; 3 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.g, i8 0, i64 %i.f, i1 false), !annotation !18
  store ptr %i.g, ptr %4, align 8
  %i.h = call fastcc i64 @target_to_host_sockaddr(i32 noundef %0, ptr noundef %i.g, i64 noundef %i.a, i32 noundef %i.c) ; 2 uses
  switch i64 %i.h, label %bb.aq [
    i64 -14, label %bb.c
    i64 0, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  store ptr inttoptr (i64 -1 to ptr), ptr %4, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8
  %i.k = shl i64 %i.j, 1                          ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 5 uses
  store i64 %i.k, ptr %i.l, align 8
  %i.m = alloca i8, i64 %i.k, align 16            ; 3 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.m, i8 0, i64 %i.k, i1 false), !annotation !18
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  store ptr %i.m, ptr %i.n, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 %i.m, i8 noundef 0, i64 noundef %i.k, i1 noundef false) #29
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  store i32 %i.p, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.s = load i64, ptr %i.r, align 8              ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.u = load i64, ptr %i.t, align 8              ; 2 uses
  %i.v = icmp ugt i64 %i.s, 1024
  br i1 %i.v, label %bb.aq, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not70 = icmp eq i32 %3, 0                     ; 3 uses
  %i.w = select i1 %.not70, i32 3, i32 1
  %i.x = call fastcc ptr @lock_iovec(i32 noundef %i.w, i64 noundef %i.u, i64 noundef %i.s, i32 noundef %3) ; 3 uses
  %i.y = icmp eq ptr %i.x, null                   ; 2 uses
  br i1 %i.y, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.z = tail call ptr @__errno_location() #28
  %i.aa = load i32, ptr %i.z, align 4             ; 2 uses
  %i.ab = sub i32 0, %i.aa
  %i.ac = sext i32 %i.ab to i64
  %i.ad = icmp ne i32 %i.aa, 0
  %or.cond = select i1 %.not70, i1 true, i1 %i.ad
  br i1 %or.cond, label %bb.aq, label %.thread

.thread:                                          ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 %i.s, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr null, ptr %i.af, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 %i.s, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr %i.x, ptr %i.ah, align 8
  br i1 %.not70, label %bb.af, label %bb.h

bb.h:                                             ; preds = %.thread, %bb.g
  %i.ai = phi ptr [ %i.af, %.thread ], [ %i.ah, %bb.g ] ; 4 uses
  %i.aj = icmp slt i32 %0, 0
  br i1 %i.aj, label %fd_trans_target_to_host_data.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = load atomic ptr, ptr @qemu_mutex_lock_func monotonic, align 8
  call void %i.ak(ptr noundef nonnull @target_fd_trans_lock, ptr noundef nonnull @.str.642, i32 noundef 56) #29, !inline_history !8
  %i.al = load i32, ptr @target_fd_max, align 4
  %i.am = icmp ult i32 %0, %i.al
  br i1 %i.am, label %bb.j, label %fd_trans_target_to_host_data.exit.thread105

bb.j:                                             ; preds = %bb.i
  %i.an = load ptr, ptr @target_fd_trans, align 8
  %i.ao = zext nneg i32 %0 to i64                 ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.ao
  %i.aq = load ptr, ptr %i.ap, align 8            ; 2 uses
  %.not.i = icmp eq ptr %i.aq, null
  br i1 %.not.i, label %fd_trans_target_to_host_data.exit.thread105, label %fd_trans_target_to_host_data.exit

fd_trans_target_to_host_data.exit.thread105:      ; preds = %bb.j, %bb.i
  call void @qemu_mutex_unlock_impl(ptr noundef nonnull @target_fd_trans_lock, ptr noundef nonnull @.str.642, i32 noundef 56) #29
  br label %fd_trans_target_to_host_data.exit.thread

fd_trans_target_to_host_data.exit:                ; preds = %bb.j
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load ptr, ptr %i.ar, align 8
  call void @qemu_mutex_unlock_impl(ptr noundef nonnull @target_fd_trans_lock, ptr noundef nonnull @.str.642, i32 noundef 56) #29
  %.not76 = icmp eq ptr %i.as, null
  br i1 %.not76, label %fd_trans_target_to_host_data.exit.thread, label %bb.k

bb.k:                                             ; preds = %fd_trans_target_to_host_data.exit
  %i.at = load ptr, ptr %i.ai, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load i64, ptr %i.au, align 8
  %i.aw = call noalias ptr @g_malloc(i64 noundef %i.av) #31 ; 4 uses
  %i.ax = load ptr, ptr %i.ai, align 8            ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.ba = load i64, ptr %i.az, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.aw, ptr noundef nonnull align 1 %i.ay, i64 noundef %i.ba, i1 noundef false) #29
  %i.bb = load atomic ptr, ptr @qemu_mutex_lock_func monotonic, align 8
  call void %i.bb(ptr noundef nonnull @target_fd_trans_lock, ptr noundef nonnull @.str.642, i32 noundef 56) #29, !inline_history !8
  %i.bc = load i32, ptr @target_fd_max, align 4
  %i.bd = icmp ult i32 %0, %i.bc
  br i1 %i.bd, label %bb.l, label %fd_trans_target_to_host_data.exit82

bb.l:                                             ; preds = %bb.k
  %i.be = load ptr, ptr @target_fd_trans, align 8
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.ao
  %i.bg = load ptr, ptr %i.bf, align 8            ; 2 uses
  %.not.i81 = icmp eq ptr %i.bg, null
  br i1 %.not.i81, label %fd_trans_target_to_host_data.exit82, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8
  br label %fd_trans_target_to_host_data.exit82

fd_trans_target_to_host_data.exit82:              ; preds = %bb.k, %bb.l, %bb.m
  %.0.i79 = phi ptr [ %i.bi, %bb.m ], [ null, %bb.l ], [ null, %bb.k ]
  call void @qemu_mutex_unlock_impl(ptr noundef nonnull @target_fd_trans_lock, ptr noundef nonnull @.str.642, i32 noundef 56) #29
  %i.bj = load ptr, ptr %i.ai, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load i64, ptr %i.bk, align 8
  %i.bm = call i64 %.0.i79(ptr noundef nonnull %i.aw, i64 noundef %i.bl) #29 ; 2 uses
  %i.bn = icmp sgt i64 %i.bm, -1
  br i1 %i.bn, label %bb.n, label %get_errno.exit

bb.n:                                             ; preds = %fd_trans_target_to_host_data.exit82
  %i.bo = load ptr, ptr %i.ai, align 8
  store ptr %i.aw, ptr %i.bo, align 8
  %i.bp = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @thread_cpu)
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = getelementptr i8, ptr %i.bq, i64 608
  %.val.i = load ptr, ptr %i.br, align 16
  %i.bs = getelementptr inbounds nuw i8, ptr %.val.i, i64 9148
  %i.bt = call i64 (ptr, i64, ...) @safe_syscall_base(ptr noundef nonnull %i.bs, i64 noundef 46, i32 noundef %0, ptr noundef nonnull %4, i32 noundef %2) #29 ; 2 uses
  %i.bu = icmp eq i64 %i.bt, -1
  br i1 %i.bu, label %bb.o, label %get_errno.exit

bb.o:                                             ; preds = %bb.n
  %i.bv = tail call ptr @__errno_location() #28
  %i.bw = load i32, ptr %i.bv, align 4
  %i.bx = sub i32 0, %i.bw
  %i.by = sext i32 %i.bx to i64
  br label %get_errno.exit

get_errno.exit:                                   ; preds = %bb.o, %bb.n, %fd_trans_target_to_host_data.exit82
  %.0 = phi i64 [ %i.bm, %fd_trans_target_to_host_data.exit82 ], [ %i.by, %bb.o ], [ %i.bt, %bb.n ]
  call void @g_free(ptr noundef nonnull %i.aw) #29
  br label %target_to_host_cmsg.exit

fd_trans_target_to_host_data.exit.thread:         ; preds = %bb.h, %fd_trans_target_to_host_data.exit.thread105, %fd_trans_target_to_host_data.exit
  %i.bz = load i64, ptr %i.l, align 8
  %i.ca = icmp ult i64 %i.bz, 16
  %i.cb = load ptr, ptr %i.n, align 8             ; 2 uses
  %i.cc = load i64, ptr %i.i, align 8             ; 2 uses
  %i.cd = icmp ult i64 %i.cc, 16
  br i1 %i.cd, label %bb.ad, label %bb.p

bb.p:                                             ; preds = %fd_trans_target_to_host_data.exit.thread
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cf = load i64, ptr %i.ce, align 8
  %i.cg = call ptr @lock_user(i32 noundef 1, i64 noundef %i.cf, i64 noundef %i.cc, i1 noundef zeroext true) #29 ; 3 uses
  %.not.i84 = icmp eq ptr %i.cg, null
  br i1 %.not.i84, label %target_to_host_cmsg.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.p
  %.not106.i147 = icmp eq ptr %i.cb, null
  %.not106.i = select i1 %i.ca, i1 true, i1 %.not106.i147
  br i1 %.not106.i, label %.thread91.i, label %.lr.ph105.i

.lr.ph105.i:                                      ; preds = %.preheader.i
  %i.ch = ptrtoint ptr %i.cg to i64
  br label %bb.q

bb.q:                                             ; preds = %bb.ac, %.lr.ph105.i
  %.075104.i = phi ptr [ %i.cb, %.lr.ph105.i ], [ %.0.i.i, %bb.ac ] ; 11 uses
  %.078103.i = phi i32 [ 0, %.lr.ph105.i ], [ %i.cr, %bb.ac ] ; 3 uses
  %.080102.i = phi ptr [ %i.cg, %.lr.ph105.i ], [ %i.fg, %bb.ac ] ; 11 uses
  %.075104.i151 = ptrtoaddr ptr %.075104.i to i64
  %.080102.i152 = ptrtoaddr ptr %.080102.i to i64
  %i.ci = getelementptr inbounds nuw i8, ptr %.075104.i, i64 16 ; 9 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.080102.i, i64 16 ; 9 uses
  %i.ck = load i64, ptr %.080102.i, align 8
  %i.cl = shl i64 %i.ck, 32
  %sext.i = add i64 %i.cl, -68719476736
  %i.cm = ashr exact i64 %sext.i, 32              ; 5 uses
  %i.cn = trunc nsw i64 %i.cm to i32
  %i.co = add i32 %i.cn, 7
  %i.cp = and i32 %i.co, -8
  %i.cq = add i32 %.078103.i, 16
  %i.cr = add i32 %i.cq, %i.cp                    ; 3 uses
  %i.cs = zext i32 %i.cr to i64
  %i.ct = load i64, ptr %i.l, align 8
  %i.cu = icmp ult i64 %i.ct, %i.cs
  br i1 %i.cu, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.cv = load i32, ptr @qemu_loglevel, align 4
  %i.cw = and i32 %i.cv, 1024
  %.not97.i = icmp eq i32 %i.cw, 0
  br i1 %.not97.i, label %.thread91.i, label %bb.s, !prof !22

bb.s:                                             ; preds = %bb.r
  %i.cx = getelementptr inbounds nuw i8, ptr %.080102.i, i64 8
  %i.cy = load i32, ptr %i.cx, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %.080102.i, i64 12
  %i.da = load i32, ptr %i.cz, align 4
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.649, i32 noundef %i.cy, i32 noundef %i.da) #29
  br label %.thread91.i

bb.t:                                             ; preds = %bb.q
  %i.db = getelementptr inbounds nuw i8, ptr %.080102.i, i64 8
  %i.dc = load i32, ptr %i.db, align 8            ; 4 uses
  %i.dd = icmp eq i32 %i.dc, 1
  %i.de = getelementptr inbounds nuw i8, ptr %.075104.i, i64 8 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.080102.i, i64 12 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.075104.i, i64 12 ; 2 uses
  %i.dh = add nsw i64 %i.cm, 16                   ; 8 uses
  br i1 %i.dd, label %.thread.i, label %bb.u

.thread.i:                                        ; preds = %bb.t
  store i32 1, ptr %i.de, align 8
  %i.di = load i32, ptr %i.df, align 4            ; 3 uses
  store i32 %i.di, ptr %i.dg, align 4
  store i64 %i.dh, ptr %.075104.i, align 8
  switch i32 %i.di, label %.thread90.i [
    i32 1, label %bb.v
    i32 2, label %bb.w
  ]

bb.u:                                             ; preds = %bb.t
  store i32 %i.dc, ptr %i.de, align 8
  %i.dj = load i32, ptr %i.df, align 4            ; 2 uses
  store i32 %i.dj, ptr %i.dg, align 4
  store i64 %i.dh, ptr %.075104.i, align 8
  %cond.i = icmp eq i32 %i.dc, 279
  br i1 %cond.i, label %bb.x, label %.thread90.i

bb.v:                                             ; preds = %.thread.i
  %i.dk = lshr i64 %i.cm, 2                       ; 4 uses
  %i.dl = trunc i64 %i.dk to i32
  %i.dm = icmp sgt i32 %i.dl, 0
  br i1 %i.dm, label %.lr.ph.preheader.i, label %.loopexit.i

.lr.ph.preheader.i:                               ; preds = %bb.v
  %wide.trip.count.i = and i64 %i.dk, 2147483647  ; 4 uses
  %min.iters.check = icmp samesign ult i64 %wide.trip.count.i, 8
  %i.dn = sub i64 %.080102.i152, %.075104.i151
  %diff.check = icmp ugt i64 %i.dn, -32
  %or.cond154 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond154, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %i.dk, 2147483640              ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %index ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %wide.load = load <4 x i32>, ptr %i.do, align 1
  %wide.load153 = load <4 x i32>, ptr %i.dp, align 1
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %index ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  store <4 x i32> %wide.load, ptr %i.dq, align 4
  store <4 x i32> %wide.load153, ptr %i.dr, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ds = icmp eq i64 %index.next, %n.vec
  br i1 %i.ds, label %middle.block, label %vector.body, !llvm.loop !93

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %wide.trip.count.i, %n.vec
  br i1 %cmp.n, label %.loopexit.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.dk, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %indvars.iv.i.prol
  %.val88.i.prol = load i32, ptr %i.dt, align 1
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %indvars.iv.i.prol
  store i32 %.val88.i.prol, ptr %i.du, align 4
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !94

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %i.dv = sub nsw i64 %indvars.iv.i.ph, %wide.trip.count.i
  %i.dw = icmp ugt i64 %i.dv, -4
  br i1 %i.dw, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %indvars.iv.i
  %.val88.i = load i32, ptr %i.dx, align 1
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %indvars.iv.i
  store i32 %.val88.i, ptr %i.dy, align 4
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %indvars.iv.next.i
  %.val88.i.1 = load i32, ptr %i.dz, align 1
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %indvars.iv.next.i
  store i32 %.val88.i.1, ptr %i.ea, align 4
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %indvars.iv.next.i.1
  %.val88.i.2 = load i32, ptr %i.eb, align 1
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %indvars.iv.next.i.1
  store i32 %.val88.i.2, ptr %i.ec, align 4
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3 ; 2 uses
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %indvars.iv.next.i.2
  %.val88.i.3 = load i32, ptr %i.ed, align 1
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %indvars.iv.next.i.2
  store i32 %.val88.i.3, ptr %i.ee, align 4
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !95

bb.w:                                             ; preds = %.thread.i
  %.val87.i = load i32, ptr %i.cj, align 8
  store i32 %.val87.i, ptr %i.ci, align 8
  %i.ef = getelementptr inbounds nuw i8, ptr %.080102.i, i64 20
  %.val86.i = load i32, ptr %i.ef, align 4
  %i.eg = getelementptr inbounds nuw i8, ptr %.075104.i, i64 20
  store i32 %.val86.i, ptr %i.eg, align 4
  %i.eh = getelementptr inbounds nuw i8, ptr %.080102.i, i64 24
  %.val.i86 = load i32, ptr %i.eh, align 8
  %i.ei = getelementptr inbounds nuw i8, ptr %.075104.i, i64 24
  store i32 %.val.i86, ptr %i.ei, align 8
  br label %.loopexit.i

bb.x:                                             ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 %i.ci, ptr noundef nonnull align 8 %i.cj, i64 noundef %i.cm, i1 noundef false) #29
  br label %.loopexit.i

.thread90.i:                                      ; preds = %bb.u, %.thread.i
  %i.ej = phi i32 [ %i.dj, %bb.u ], [ %i.di, %.thread.i ]
  %i.ek = load i32, ptr @qemu_loglevel, align 4
  %i.el = and i32 %i.ek, 1024
  %.not96.i = icmp eq i32 %i.el, 0
  br i1 %.not96.i, label %bb.z, label %bb.y, !prof !22

bb.y:                                             ; preds = %.thread90.i
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.650, i32 noundef %i.dc, i32 noundef %i.ej) #29
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.thread90.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.ci, ptr noundef nonnull align 8 %i.cj, i64 noundef %i.cm, i1 noundef false) #29
  %.pre.i = load i64, ptr %.075104.i, align 8
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %bb.z, %bb.x, %bb.w, %bb.v
  %i.em = phi i64 [ %.pre.i, %bb.z ], [ %i.dh, %bb.v ], [ %i.dh, %bb.x ], [ %i.dh, %bb.w ], [ %i.dh, %middle.block ], [ %i.dh, %.lr.ph.i ], [ %i.dh, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %i.en = icmp ult i64 %i.em, 16
  br i1 %i.en, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %.loopexit.i
  %i.eo = sub i64 0, %i.em
  %i.ep = and i64 %i.eo, 7
  %i.eq = or disjoint i64 %i.ep, 16               ; 2 uses
  %i.er = load ptr, ptr %i.n, align 8
  %i.es = load i64, ptr %i.l, align 8
  %i.et = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.es
  %i.eu = ptrtoint ptr %i.et to i64
  %i.ev = ptrtoint ptr %.075104.i to i64
  %i.ew = sub i64 %i.eu, %i.ev                    ; 2 uses
  %i.ex = icmp ult i64 %i.ew, %i.eq
  %i.ey = sub nuw i64 %i.ew, %i.eq
  %i.ez = icmp ult i64 %i.ey, %i.em
  %or.cond.i.i = select i1 %i.ex, i1 true, i1 %i.ez
  br i1 %or.cond.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fa = add nuw i64 %i.em, 7
  %i.fb = and i64 %i.fa, -8
  %i.fc = getelementptr inbounds nuw i8, ptr %.075104.i, i64 %i.fb
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %.loopexit.i
  %.0.i.i = phi ptr [ %i.fc, %bb.ab ], [ null, %.loopexit.i ], [ null, %bb.aa ] ; 2 uses
  %.val89.i = load i64, ptr %i.i, align 8
  %i.fd = load i64, ptr %.080102.i, align 8
  %i.fe = add i64 %i.fd, 7
  %i.ff = and i64 %i.fe, -8
  %i.fg = getelementptr inbounds nuw i8, ptr %.080102.i, i64 %i.ff ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  %i.fi = ptrtoint ptr %i.fh to i64
  %i.fj = sub i64 %i.fi, %i.ch
  %i.fk = icmp ule i64 %i.fj, %.val89.i
  %i.fl = icmp ne ptr %.0.i.i, null
  %i.fm = select i1 %i.fl, i1 %i.fk, i1 false
  br i1 %i.fm, label %bb.q, label %.thread91.i

.thread91.i:                                      ; preds = %bb.ac, %bb.s, %bb.r, %.preheader.i
  %.07899.i = phi i32 [ %.078103.i, %bb.s ], [ %.078103.i, %bb.r ], [ 0, %.preheader.i ], [ %i.cr, %bb.ac ]
  %i.fn = zext i32 %.07899.i to i64
  br label %bb.ad

bb.ad:                                            ; preds = %fd_trans_target_to_host_data.exit.thread, %.thread91.i
  %.3.i = phi i64 [ 0, %fd_trans_target_to_host_data.exit.thread ], [ %i.fn, %.thread91.i ]
  store i64 %.3.i, ptr %i.l, align 8
  %i.fo = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @thread_cpu)
  %i.fp = load ptr, ptr %i.fo, align 8
  %i.fq = getelementptr i8, ptr %i.fp, i64 608
  %.val.i87 = load ptr, ptr %i.fq, align 16
  %i.fr = getelementptr inbounds nuw i8, ptr %.val.i87, i64 9148
  %i.fs = call i64 (ptr, i64, ...) @safe_syscall_base(ptr noundef nonnull %i.fr, i64 noundef 46, i32 noundef %0, ptr noundef nonnull %4, i32 noundef %2) #29 ; 2 uses
  %i.ft = icmp eq i64 %i.fs, -1
  br i1 %i.ft, label %bb.ae, label %target_to_host_cmsg.exit

bb.ae:                                            ; preds = %bb.ad
  %i.fu = tail call ptr @__errno_location() #28
  %i.fv = load i32, ptr %i.fu, align 4
  %i.fw = sub i32 0, %i.fv
  %i.fx = sext i32 %i.fw to i64
  br label %target_to_host_cmsg.exit

bb.af:                                            ; preds = %bb.g
  %i.fy = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @thread_cpu)
  %i.fz = load ptr, ptr %i.fy, align 8
  %i.ga = getelementptr i8, ptr %i.fz, i64 608
  %.val.i90 = load ptr, ptr %i.ga, align 16
  %i.gb = getelementptr inbounds nuw i8, ptr %.val.i90, i64 9148
  %i.gc = call i64 (ptr, i64, ...) @safe_syscall_base(ptr noundef nonnull %i.gb, i64 noundef 47, i32 noundef %0, ptr noundef nonnull %4, i32 noundef %2) #29 ; 2 uses
  %i.gd = icmp eq i64 %i.gc, -1
  br i1 %i.gd, label %bb.ag, label %get_errno.exit92

bb.ag:                                            ; preds = %bb.af
  %i.ge = tail call ptr @__errno_location() #28
  %i.gf = load i32, ptr %i.ge, align 4
  %i.gg = sub i32 0, %i.gf
  %i.gh = sext i32 %i.gg to i64
  br label %get_errno.exit92

get_errno.exit92:                                 ; preds = %bb.af, %bb.ag
  %.0.i91 = phi i64 [ %i.gh, %bb.ag ], [ %i.gc, %bb.af ] ; 4 uses
  %i.gi = icmp ult i64 %.0.i91, -4096
  br i1 %i.gi, label %bb.ah, label %target_to_host_cmsg.exit.thread114

bb.ah:                                            ; preds = %get_errno.exit92
  %i.gj = icmp slt i32 %0, 0
  br i1 %i.gj, label %fd_trans_host_to_target_data.exit.thread.thread, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.gk = load atomic ptr, ptr @qemu_mutex_lock_func monotonic, align 8
  call void %i.gk(ptr noundef nonnull @target_fd_trans_lock, ptr noundef nonnull @.str.642, i32 noundef 56) #29, !inline_history !7
  %i.gl = load i32, ptr @target_fd_max, align 4
  %i.gm = icmp ult i32 %0, %i.gl
  br i1 %i.gm, label %bb.aj, label %fd_trans_host_to_target_data.exit.thread111

bb.aj:                                            ; preds = %bb.ai
  %i.gn = load ptr, ptr @target_fd_trans, align 8
  %i.go = zext nneg i32 %0 to i64                 ; 2 uses
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.gn, i64 %i.go
  %i.gq = load ptr, ptr %i.gp, align 8            ; 2 uses
  %.not.i96 = icmp eq ptr %i.gq, null
  br i1 %.not.i96, label %fd_trans_host_to_target_data.exit.thread111, label %fd_trans_host_to_target_data.exit

fd_trans_host_to_target_data.exit.thread111:      ; preds = %bb.aj, %bb.ai
  call void @qemu_mutex_unlock_impl(ptr noundef nonnull @target_fd_trans_lock, ptr noundef nonnull @.str.642, i32 noundef 56) #29
  br label %fd_trans_host_to_target_data.exit.thread.thread

fd_trans_host_to_target_data.exit:                ; preds = %bb.aj
  %i.gr = load ptr, ptr %i.gq, align 8
  call void @qemu_mutex_unlock_impl(ptr noundef nonnull @target_fd_trans_lock, ptr noundef nonnull @.str.642, i32 noundef 56) #29
  %.not72 = icmp eq ptr %i.gr, null
  br i1 %.not72, label %fd_trans_host_to_target_data.exit.thread.thread, label %bb.ak

bb.ak:                                            ; preds = %fd_trans_host_to_target_data.exit
  %i.gs = load atomic ptr, ptr @qemu_mutex_lock_func monotonic, align 8
  call void %i.gs(ptr noundef nonnull @target_fd_trans_lock, ptr noundef nonnull @.str.642, i32 noundef 56) #29, !inline_history !7
  %i.gt = load i32, ptr @target_fd_max, align 4
  %i.gu = icmp ult i32 %0, %i.gt
  br i1 %i.gu, label %bb.al, label %fd_trans_host_to_target_data.exit.thread

bb.al:                                            ; preds = %bb.ak
  %i.gv = load ptr, ptr @target_fd_trans, align 8
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.gv, i64 %i.go
  %i.gx = load ptr, ptr %i.gw, align 8            ; 2 uses
  %.not.i100 = icmp eq ptr %i.gx, null
  br i1 %.not.i100, label %fd_trans_host_to_target_data.exit.thread, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.gy = load ptr, ptr %i.gx, align 8
  br label %fd_trans_host_to_target_data.exit.thread

fd_trans_host_to_target_data.exit.thread:         ; preds = %bb.am, %bb.al, %bb.ak
  %.0.i98 = phi ptr [ %i.gy, %bb.am ], [ null, %bb.al ], [ null, %bb.ak ]
  call void @qemu_mutex_unlock_impl(ptr noundef nonnull @target_fd_trans_lock, ptr noundef nonnull @.str.642, i32 noundef 56) #29
  %i.gz = load ptr, ptr %i.ah, align 8            ; 2 uses
  %i.ha = load ptr, ptr %i.gz, align 8
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  %i.hc = load i64, ptr %i.hb, align 8
  %i.hd = call i64 @llvm.umin.i64(i64 %i.hc, i64 %.0.i91)
  %i.he = call i64 %.0.i98(ptr noundef %i.ha, i64 noundef %i.hd) #29 ; 2 uses
  %i.hf = icmp ult i64 %i.he, -4096
  br i1 %i.hf, label %fd_trans_host_to_target_data.exit.thread.thread, label %target_to_host_cmsg.exit.thread114

fd_trans_host_to_target_data.exit.thread.thread:  ; preds = %bb.ah, %fd_trans_host_to_target_data.exit.thread111, %fd_trans_host_to_target_data.exit, %fd_trans_host_to_target_data.exit.thread
  %i.hg = call fastcc i64 @host_to_target_cmsg(ptr noundef %1, ptr noundef %4) ; 2 uses
  %i.hh = icmp ult i64 %i.hg, -4096
  br i1 %i.hh, label %bb.an, label %target_to_host_cmsg.exit.thread114

bb.an:                                            ; preds = %fd_trans_host_to_target_data.exit.thread.thread
  %i.hi = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.hj = load i32, ptr %i.hi, align 8            ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.hj, ptr %i.hk, align 8
  %i.hl = load i32, ptr %i.q, align 8
  store i32 %i.hl, ptr %i.o, align 8
  %i.hm = load ptr, ptr %4, align 8               ; 2 uses
  %magicptr = ptrtoint ptr %i.hm to i64
  %magicptr.off = add i64 %magicptr, -1
  %switch = icmp ult i64 %magicptr.off, -2
  br i1 %switch, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.hn = load i64, ptr %1, align 8
  %i.ho = call fastcc i64 @host_to_target_sockaddr(i64 noundef %i.hn, ptr noundef %i.hm, i32 noundef %i.hj) ; 2 uses
  %.not75 = icmp eq i64 %i.ho, 0
  br i1 %.not75, label %bb.ap, label %target_to_host_cmsg.exit.thread114

bb.ap:                                            ; preds = %bb.an, %bb.ao
  br label %target_to_host_cmsg.exit.thread114

target_to_host_cmsg.exit:                         ; preds = %bb.ae, %bb.ad, %bb.p, %get_errno.exit
  %.3 = phi i64 [ %.0, %get_errno.exit ], [ -14, %bb.p ], [ %i.fx, %bb.ae ], [ %i.fs, %bb.ad ] ; 2 uses
  br i1 %i.y, label %bb.aq, label %target_to_host_cmsg.exit.thread114

target_to_host_cmsg.exit.thread114:               ; preds = %fd_trans_host_to_target_data.exit.thread, %bb.ao, %get_errno.exit92, %bb.ap, %fd_trans_host_to_target_data.exit.thread.thread, %target_to_host_cmsg.exit
  %.3116 = phi i64 [ %.3, %target_to_host_cmsg.exit ], [ %i.ho, %bb.ao ], [ %i.hg, %fd_trans_host_to_target_data.exit.thread.thread ], [ %.0.i91, %get_errno.exit92 ], [ %.0.i91, %bb.ap ], [ %i.he, %fd_trans_host_to_target_data.exit.thread ]
  %i.hp = shl nuw nsw i64 %i.s, 4
  %i.hq = call ptr @lock_user(i32 noundef 1, i64 noundef %i.u, i64 noundef %i.hp, i1 noundef zeroext true) #29 ; 0 uses
  call void @g_free(ptr noundef nonnull %i.x) #29
  br label %bb.aq

bb.aq:                                            ; preds = %bb.d, %bb.b, %target_to_host_cmsg.exit, %target_to_host_cmsg.exit.thread114, %bb.f
  %.4 = phi i64 [ %i.h, %bb.b ], [ %i.ac, %bb.f ], [ %.3116, %target_to_host_cmsg.exit.thread114 ], [ %.3, %target_to_host_cmsg.exit ], [ -90, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  ret i64 %.4
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc range(i64 -14, 1) i64 @host_to_target_cmsg(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8
  %i.c = icmp ugt i64 %i.b, 15
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load ptr, ptr %i.d, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.f = phi ptr [ %i.e, %bb.b ], [ null, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8              ; 3 uses
  %i.i = icmp ult i64 %i.h, 16
  br i1 %i.i, label %bb.ae, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load i64, ptr %i.j, align 8
  %i.l = tail call ptr @lock_user(i32 noundef 3, i64 noundef %i.k, i64 noundef %i.h, i1 noundef zeroext false) #29 ; 3 uses
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %bb.af, label %.preheader

.preheader:                                       ; preds = %bb.d
  %.not231 = icmp eq ptr %i.f, null
  br i1 %.not231, label %.loopexit, label %.lr.ph230

.lr.ph230:                                        ; preds = %.preheader
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.o = ptrtoint ptr %i.l to i64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph230, %bb.ad
  %.0177229 = phi ptr [ %i.f, %.lr.ph230 ], [ %.0.i206, %bb.ad ] ; 27 uses
  %.0178228 = phi i64 [ %i.h, %.lr.ph230 ], [ %i.fj, %bb.ad ] ; 5 uses
  %.0180227 = phi ptr [ %i.l, %.lr.ph230 ], [ %i.ge, %bb.ad ] ; 25 uses
  %.0182226 = phi i32 [ 0, %.lr.ph230 ], [ %i.fk, %bb.ad ] ; 2 uses
  %.0180227245 = ptrtoaddr ptr %.0180227 to i64
  %.0177229246 = ptrtoaddr ptr %.0177229 to i64
  %i.p = getelementptr inbounds nuw i8, ptr %.0177229, i64 16 ; 14 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.0180227, i64 16 ; 15 uses
  %i.r = load i64, ptr %.0177229, align 8
  %i.s = trunc i64 %i.r to i32
  %i.t = add i32 %i.s, -16                        ; 10 uses
  %i.u = icmp ult i64 %.0178228, 16
  br i1 %i.u, label %.thread214, label %bb.f

.thread214:                                       ; preds = %bb.e
  %i.v = load i32, ptr %i.m, align 8
  %i.w = or i32 %i.v, 8
  store i32 %i.w, ptr %i.m, align 8
  br label %.loopexit

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %.0177229, i64 8 ; 3 uses
  %i.y = load i32, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %.0180227, i64 8
  store i32 %i.y, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %.0177229, i64 12 ; 5 uses
  %i.ab = load i32, ptr %i.aa, align 4            ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.0180227, i64 12
  store i32 %i.ab, ptr %i.ac, align 4
  %i.ad = load i32, ptr %i.x, align 8             ; 2 uses
  %cond = icmp eq i32 %i.ad, 1
  %cond1 = icmp eq i32 %i.ab, 29
  %i.ae = select i1 %cond, i1 %cond1, i1 false
  %.0187 = select i1 %i.ae, i32 16, i32 %i.t      ; 2 uses
  %i.af = sext i32 %.0187 to i64
  %i.ag = add nsw i64 %i.af, 16
  %i.ah = icmp ult i64 %.0178228, %i.ag
  br i1 %i.ah, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ai = load i32, ptr %i.m, align 8
  %i.aj = or i32 %i.ai, 8
  store i32 %i.aj, ptr %i.m, align 8
  %i.ak = trunc i64 %.0178228 to i32
  %i.al = add i32 %i.ak, -16
  %.pre = load i32, ptr %i.x, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.am = phi i32 [ %.pre, %bb.g ], [ %i.ad, %bb.f ] ; 2 uses
  %.1188 = phi i32 [ %i.al, %bb.g ], [ %.0187, %bb.f ] ; 11 uses
  switch i32 %i.am, label %host_to_target_sockaddr.exit [
    i32 1, label %bb.i
    i32 0, label %bb.m
    i32 41, label %bb.s
  ]

bb.i:                                             ; preds = %bb.h
  %i.an = load i32, ptr %i.aa, align 4
  switch i32 %i.an, label %host_to_target_sockaddr.exit [
    i32 1, label %bb.j
    i32 29, label %bb.k
    i32 2, label %bb.l
  ]

bb.j:                                             ; preds = %bb.i
  %i.ao = ashr i32 %.1188, 2                      ; 3 uses
  %i.ap = icmp sgt i32 %i.ao, 0
  br i1 %i.ap, label %.lr.ph.preheader, label %host_to_target_sockaddr.exit.thread

.lr.ph.preheader:                                 ; preds = %bb.j
  %wide.trip.count = zext nneg i32 %i.ao to i64   ; 5 uses
  %min.iters.check = icmp ult i32 %i.ao, 8
  %i.aq = sub i64 %.0177229246, %.0180227245
  %diff.check = icmp ugt i64 %i.aq, -32
  %or.cond248 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond248, label %.lr.ph.preheader249, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %index ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %index ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %wide.load = load <4 x i32>, ptr %i.as, align 4
  %wide.load247 = load <4 x i32>, ptr %i.at, align 4
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store <4 x i32> %wide.load, ptr %i.ar, align 1
  store <4 x i32> %wide.load247, ptr %i.au, align 1
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %middle.block, label %vector.body, !llvm.loop !96

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %host_to_target_sockaddr.exit.thread, label %.lr.ph.preheader249

.lr.ph.preheader249:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader249, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader249 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader249 ]
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.prol
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv.prol
  %i.ay = load i32, ptr %i.ax, align 4
  store i32 %i.ay, ptr %i.aw, align 1
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !97

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader249
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader249 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.az = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.ba = icmp ugt i64 %i.az, -4
  br i1 %i.ba, label %host_to_target_sockaddr.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv
  %i.bd = load i32, ptr %i.bc, align 4
  store i32 %i.bd, ptr %i.bb, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.next
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv.next
  %i.bg = load i32, ptr %i.bf, align 4
  store i32 %i.bg, ptr %i.be, align 1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.next.1
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv.next.1
  %i.bj = load i32, ptr %i.bi, align 4
  store i32 %i.bj, ptr %i.bh, align 1
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.next.2
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv.next.2
  %i.bm = load i32, ptr %i.bl, align 4
  store i32 %i.bm, ptr %i.bk, align 1
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %host_to_target_sockaddr.exit.thread, label %.lr.ph, !llvm.loop !98

bb.k:                                             ; preds = %bb.i
  %i.bn = icmp ne i32 %i.t, 16
  %i.bo = icmp ne i32 %.1188, 16
  %or.cond = or i1 %i.bn, %i.bo
  br i1 %or.cond, label %host_to_target_sockaddr.exit, label %.thread

.thread:                                          ; preds = %bb.k
  %i.bp = load i64, ptr %i.p, align 8
  store i64 %i.bp, ptr %i.q, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %.0180227, i64 24
  %i.br = getelementptr inbounds nuw i8, ptr %.0177229, i64 24
  %i.bs = load i64, ptr %i.br, align 8
  store i64 %i.bs, ptr %i.bq, align 8
  br label %host_to_target_sockaddr.exit.thread

bb.l:                                             ; preds = %bb.i
  %i.bt = load i32, ptr %i.p, align 8
  store i32 %i.bt, ptr %i.q, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %.0180227, i64 20
  %i.bv = getelementptr inbounds nuw i8, ptr %.0177229, i64 20
  %i.bw = load i32, ptr %i.bv, align 4
  store i32 %i.bw, ptr %i.bu, align 4
  %i.bx = getelementptr inbounds nuw i8, ptr %.0180227, i64 24
  %i.by = getelementptr inbounds nuw i8, ptr %.0177229, i64 24
  %i.bz = load i32, ptr %i.by, align 8
  store i32 %i.bz, ptr %i.bx, align 8
  br label %host_to_target_sockaddr.exit.thread

bb.m:                                             ; preds = %bb.h
  %i.ca = load i32, ptr %i.aa, align 4
  switch i32 %i.ca, label %host_to_target_sockaddr.exit [
    i32 2, label %bb.n
    i32 11, label %bb.o
    i32 8, label %bb.r
  ]

bb.n:                                             ; preds = %bb.m
  %i.cb = icmp ne i32 %i.t, 4
  %i.cc = icmp ne i32 %.1188, 4
  %or.cond6 = or i1 %i.cb, %i.cc
  br i1 %or.cond6, label %host_to_target_sockaddr.exit, label %.thread208

.thread208:                                       ; preds = %bb.n
  %i.cd = load i32, ptr %i.p, align 8
  store i32 %i.cd, ptr %i.q, align 8
  br label %host_to_target_sockaddr.exit.thread

bb.o:                                             ; preds = %bb.m
  %i.ce = icmp ne i32 %i.t, 32
  %i.cf = icmp ne i32 %.1188, 32
  %or.cond9 = or i1 %i.ce, %i.cf
  br i1 %or.cond9, label %host_to_target_sockaddr.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cg = load i32, ptr %i.p, align 8
  store i32 %i.cg, ptr %i.q, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %.0180227, i64 20
  %i.ci = getelementptr inbounds nuw i8, ptr %.0177229, i64 20
  %i.cj = load i8, ptr %i.ci, align 4
  store i8 %i.cj, ptr %i.ch, align 4
  %i.ck = getelementptr inbounds nuw i8, ptr %.0180227, i64 21
  %i.cl = getelementptr inbounds nuw i8, ptr %.0177229, i64 21
  %i.cm = load i8, ptr %i.cl, align 1
  store i8 %i.cm, ptr %i.ck, align 1
  %i.cn = getelementptr inbounds nuw i8, ptr %.0180227, i64 22
  %i.co = getelementptr inbounds nuw i8, ptr %.0177229, i64 22
  %i.cp = load i8, ptr %i.co, align 2
  store i8 %i.cp, ptr %i.cn, align 2
  %i.cq = getelementptr inbounds nuw i8, ptr %.0180227, i64 23
  %i.cr = getelementptr inbounds nuw i8, ptr %.0177229, i64 23
  %i.cs = load i8, ptr %i.cr, align 1
  store i8 %i.cs, ptr %i.cq, align 1
  %i.ct = getelementptr inbounds nuw i8, ptr %.0180227, i64 24
  %i.cu = getelementptr inbounds nuw i8, ptr %.0177229, i64 24
  %i.cv = load i32, ptr %i.cu, align 8
  store i32 %i.cv, ptr %i.ct, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %.0180227, i64 28
  %i.cx = getelementptr inbounds nuw i8, ptr %.0177229, i64 28
  %i.cy = load i32, ptr %i.cx, align 4
  store i32 %i.cy, ptr %i.cw, align 4
  %i.cz = getelementptr inbounds nuw i8, ptr %.0180227, i64 32
  %i.da = ptrtoint ptr %i.cz to i64
  %i.db = tail call ptr @lock_user(i32 noundef 3, i64 noundef %i.da, i64 noundef 16, i1 noundef zeroext false) #29 ; 3 uses
  %.not41.i = icmp eq ptr %i.db, null
  br i1 %.not41.i, label %host_to_target_sockaddr.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dc = getelementptr inbounds nuw i8, ptr %.0177229, i64 32 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.db, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.dc, i64 noundef 16, i1 noundef false) #29
  %i.dd = load i16, ptr %i.dc, align 8
  store i16 %i.dd, ptr %i.db, align 2
  br label %host_to_target_sockaddr.exit.thread

bb.r:                                             ; preds = %bb.m
  %i.de = load i32, ptr %i.p, align 8
  store i32 %i.de, ptr %i.q, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %.0177229, i64 20
  %i.dg = load i32, ptr %i.df, align 4
  %i.dh = getelementptr inbounds nuw i8, ptr %.0180227, i64 20
  store i32 %i.dg, ptr %i.dh, align 4
  %i.di = getelementptr inbounds nuw i8, ptr %.0177229, i64 24
  %i.dj = load i32, ptr %i.di, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %.0180227, i64 24
  store i32 %i.dj, ptr %i.dk, align 8
  br label %host_to_target_sockaddr.exit.thread

bb.s:                                             ; preds = %bb.h
  %i.dl = load i32, ptr %i.aa, align 4
  switch i32 %i.dl, label %host_to_target_sockaddr.exit [
    i32 52, label %bb.t
    i32 25, label %bb.u
  ]

bb.t:                                             ; preds = %bb.s
  %i.dm = icmp ne i32 %i.t, 4
  %i.dn = icmp ne i32 %.1188, 4
  %or.cond12 = or i1 %i.dm, %i.dn
  br i1 %or.cond12, label %host_to_target_sockaddr.exit, label %.thread211

.thread211:                                       ; preds = %bb.t
  %i.do = load i32, ptr %i.p, align 8
  store i32 %i.do, ptr %i.q, align 8
  br label %host_to_target_sockaddr.exit.thread

bb.u:                                             ; preds = %bb.s
  %i.dp = icmp ne i32 %i.t, 44
  %i.dq = icmp ne i32 %.1188, 44
  %or.cond15 = or i1 %i.dp, %i.dq
  br i1 %or.cond15, label %host_to_target_sockaddr.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dr = load i32, ptr %i.p, align 8
  store i32 %i.dr, ptr %i.q, align 8
  %i.ds = getelementptr inbounds nuw i8, ptr %.0180227, i64 20
  %i.dt = getelementptr inbounds nuw i8, ptr %.0177229, i64 20
  %i.du = load i8, ptr %i.dt, align 4
  store i8 %i.du, ptr %i.ds, align 4
  %i.dv = getelementptr inbounds nuw i8, ptr %.0180227, i64 21
  %i.dw = getelementptr inbounds nuw i8, ptr %.0177229, i64 21
  %i.dx = load i8, ptr %i.dw, align 1
  store i8 %i.dx, ptr %i.dv, align 1
  %i.dy = getelementptr inbounds nuw i8, ptr %.0180227, i64 22
  %i.dz = getelementptr inbounds nuw i8, ptr %.0177229, i64 22
  %i.ea = load i8, ptr %i.dz, align 2
  store i8 %i.ea, ptr %i.dy, align 2
  %i.eb = getelementptr inbounds nuw i8, ptr %.0180227, i64 23
  %i.ec = getelementptr inbounds nuw i8, ptr %.0177229, i64 23
  %i.ed = load i8, ptr %i.ec, align 1
  store i8 %i.ed, ptr %i.eb, align 1
  %i.ee = getelementptr inbounds nuw i8, ptr %.0180227, i64 24
  %i.ef = getelementptr inbounds nuw i8, ptr %.0177229, i64 24
  %i.eg = load i32, ptr %i.ef, align 8
  store i32 %i.eg, ptr %i.ee, align 8
  %i.eh = getelementptr inbounds nuw i8, ptr %.0180227, i64 28
  %i.ei = getelementptr inbounds nuw i8, ptr %.0177229, i64 28
  %i.ej = load i32, ptr %i.ei, align 4
  store i32 %i.ej, ptr %i.eh, align 4
  %i.ek = getelementptr inbounds nuw i8, ptr %.0180227, i64 32
  %i.el = ptrtoint ptr %i.ek to i64
  %i.em = tail call ptr @lock_user(i32 noundef 3, i64 noundef %i.el, i64 noundef 28, i1 noundef zeroext false) #29 ; 4 uses
  %.not41.i202 = icmp eq ptr %i.em, null
  br i1 %.not41.i202, label %host_to_target_sockaddr.exit.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.en = getelementptr inbounds nuw i8, ptr %.0177229, i64 32 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %i.em, ptr noundef nonnull readonly align 8 dereferenceable(28) %i.en, i64 noundef 28, i1 noundef false) #29
  %i.eo = load i16, ptr %i.en, align 8            ; 2 uses
  store i16 %i.eo, ptr %i.em, align 2
  %cond220 = icmp eq i16 %i.eo, 10
  br i1 %cond220, label %bb.x, label %host_to_target_sockaddr.exit.thread

bb.x:                                             ; preds = %bb.w
  %i.ep = getelementptr inbounds nuw i8, ptr %i.em, i64 24 ; 2 uses
  %i.eq = load i32, ptr %i.ep, align 4
  %i.er = and i32 %i.eq, 65535
  store i32 %i.er, ptr %i.ep, align 4
  br label %host_to_target_sockaddr.exit.thread

host_to_target_sockaddr.exit:                     ; preds = %bb.u, %bb.t, %bb.o, %bb.n, %bb.k, %bb.i, %bb.m, %bb.s, %bb.h
  %i.es = load i32, ptr @qemu_loglevel, align 4
  %i.et = and i32 %i.es, 1024
  %.not221 = icmp eq i32 %i.et, 0
  br i1 %.not221, label %bb.z, label %bb.y, !prof !22

bb.y:                                             ; preds = %host_to_target_sockaddr.exit
  %i.eu = load i32, ptr %i.aa, align 4
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.651, i32 noundef %i.am, i32 noundef %i.eu) #29
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %host_to_target_sockaddr.exit
  %i.ev = icmp slt i32 %i.t, %.1188
  %i.ew = tail call i32 @llvm.smin.i32(i32 %i.t, i32 %.1188)
  %i.ex = sext i32 %i.ew to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 %i.q, ptr noundef nonnull align 8 %i.p, i64 noundef %i.ex, i1 noundef false) #29
  br i1 %i.ev, label %bb.aa, label %host_to_target_sockaddr.exit.thread

bb.aa:                                            ; preds = %bb.z
  %i.ey = sext i32 %i.t to i64
  %i.ez = getelementptr inbounds i8, ptr %i.q, i64 %i.ey
end_hunk_15
begin_hunk_16_@write_ldt:bb.a
  %i.bh = trunc nuw i64 %i.ax to i32
  %i.bi = or disjoint i32 %i.ay, %i.bh
  %i.bj = or disjoint i32 %i.bi, %i.ba
  %.masked78 = or disjoint i32 %i.bj, %i.bb
  %.masked77 = or disjoint i32 %.masked78, %i.bc
  %.masked76 = or disjoint i32 %i.bg, %i.bd
  %.masked = or disjoint i32 %.masked76, %i.be
  %i.bk = or i32 %.masked, %.masked77
  %i.bl = xor i32 %i.bk, 61952                    ; 2 uses
  %.not80 = icmp eq i32 %3, 0
  br i1 %.not80, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bm = shl nuw nsw i32 %i.s, 20
  %i.bn = or i32 %i.bl, %i.bm
  br label %bb.n

bb.n:                                             ; preds = %bb.j, %bb.k, %bb.l, %bb.m
  %.067 = phi i32 [ %i.at, %bb.m ], [ %i.at, %bb.l ], [ 0, %bb.k ], [ 0, %bb.j ]
  %.0 = phi i32 [ %i.bn, %bb.m ], [ %i.bl, %bb.l ], [ 0, %bb.k ], [ 0, %bb.j ]
  %i.bo = shl nuw nsw i32 %i.b, 3
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.bp ; 2 uses
  store i32 %.067, ptr %i.bq, align 4
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 4
  store i32 %.0, ptr %i.br, align 4
  br label %bb.o

bb.o:                                             ; preds = %bb.g, %bb.e, %bb.c, %bb.b, %bb.a, %bb.n
  %.068 = phi i64 [ -22, %bb.a ], [ -14, %bb.b ], [ -22, %bb.c ], [ -22, %bb.e ], [ 0, %bb.n ], [ -12, %bb.g ]
  ret i64 %.068
}

; Function Attrs: nounwind
declare i32 @prctl(i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i64 -22, 1) i64 @do_prctl_syscall_user_dispatch(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -16496
  %i.b = getelementptr i8, ptr %0, i64 -15888
  %.val = load ptr, ptr %i.b, align 16            ; 3 uses
  switch i64 %1, label %access_ok.exit.thread [
    i64 0, label %bb.b
    i64 1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = or i64 %3, %2
  %i.d = or i64 %i.c, %4
  %or.cond3.not = icmp eq i64 %i.d, 0
  br i1 %or.cond3.not, label %access_ok.exit.thread.sink.split, label %access_ok.exit.thread

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq i64 %2, 0
  %i.e = add i64 %3, %2
  %.not25 = icmp ugt i64 %i.e, %2
  %or.cond = or i1 %.not, %.not25
  br i1 %or.cond, label %bb.d, label %access_ok.exit.thread

bb.d:                                             ; preds = %bb.c
  %.not26 = icmp eq i64 %4, 0
  br i1 %.not26, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds i8, ptr %0, i64 -16344
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 336
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 104
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %cpu_untagged_addr.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = tail call i64 %i.k(ptr noundef nonnull %i.a, i64 noundef %4) #29, !inline_history !6
  br label %cpu_untagged_addr.exit.i

cpu_untagged_addr.exit.i:                         ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i64 [ %i.l, %bb.f ], [ %4, %bb.e ] ; 2 uses
  %i.m = load i64, ptr @guest_addr_max, align 8
  %.not28 = icmp ugt i64 %.0.i.i.i, %i.m
  br i1 %.not28, label %access_ok.exit.thread, label %access_ok.exit

access_ok.exit:                                   ; preds = %cpu_untagged_addr.exit.i
  %i.n = tail call zeroext i1 @page_check_range(i64 noundef %.0.i.i.i, i64 noundef range(i64 0, 2147483648) 1, i32 noundef range(i32 1, 4) 1) #29
  br i1 %i.n, label %bb.g, label %access_ok.exit.thread

bb.g:                                             ; preds = %access_ok.exit, %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %.val, i64 9176
  store i64 %2, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %.val, i64 9192
  store i64 %3, ptr %i.p, align 8
  br label %access_ok.exit.thread.sink.split

access_ok.exit.thread.sink.split:                 ; preds = %bb.b, %bb.g
  %.sink32 = phi i64 [ 9184, %bb.g ], [ 9192, %bb.b ]
  %.sink = phi i64 [ %4, %bb.g ], [ -1, %bb.b ]
  %i.q = getelementptr inbounds nuw i8, ptr %.val, i64 %.sink32
  store i64 %.sink, ptr %i.q, align 8
  br label %access_ok.exit.thread

access_ok.exit.thread:                            ; preds = %access_ok.exit.thread.sink.split, %cpu_untagged_addr.exit.i, %bb.a, %access_ok.exit, %bb.c, %bb.b
  %.0 = phi i64 [ -14, %access_ok.exit ], [ -22, %bb.c ], [ -22, %bb.a ], [ -22, %bb.b ], [ -14, %cpu_untagged_addr.exit.i ], [ 0, %access_ok.exit.thread.sink.split ]
  ret i64 %.0
}

; Function Attrs: nounwind
declare i32 @signalfd(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @qemu_plugin_vcpu_syscall_ret(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

declare void @gdb_syscall_return(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #26

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias returned writeonly, ptr noalias readonly captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.or.v2i64(<2 x i64>) #26

attributes #0 = { mustprogress nofree nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #1 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #2 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #7 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #8 = { inlinehint nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #10 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #11 = { nounwind returns_twice "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #15 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #16 = { allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #17 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #18 = { nofree nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #19 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #20 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #21 = { nocallback nofree nosync nounwind memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #22 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #23 = { inlinehint mustprogress norecurse nounwind sspstrong willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #24 = { allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #25 = { noreturn nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #26 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #28 = { nounwind willreturn memory(none) }
attributes #29 = { nounwind }
attributes #30 = { noreturn nounwind }
attributes #31 = { nounwind allocsize(0) }
attributes #32 = { nounwind willreturn memory(read) }
attributes #33 = { cold noreturn nounwind }
attributes #34 = { nounwind returns_twice }
attributes #35 = { nounwind allocsize(0,1) }
attributes #36 = { nounwind allocsize(1) }

!llvm.module.flags = !{!10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = distinct !{!0, !17}
!1 = distinct !{null, null, null}
!2 = distinct !{ptr @fd_trans_unregister, null, null, null}
!3 = distinct !{null, null, null}
!4 = distinct !{!4, !17}
!5 = distinct !{!5, !17}
!6 = distinct !{null, null, null}
!7 = distinct !{ptr @fd_trans_host_to_target_data, null, null, null}
!8 = distinct !{ptr @fd_trans_target_to_host_data, null, null, null}
!9 = distinct !{ptr @fd_trans_register, null, null, null}
!10 = !{i32 7, !"Dwarf Version", i32 5}
!11 = !{i32 2, !"Debug Info Version", i32 3}
!12 = !{i32 8, !"PIC Level", i32 2}
!13 = !{i32 7, !"PIE Level", i32 2}
!14 = !{i32 7, !"uwtable", i32 2}
!15 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!16 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{!"auto-init"}
!19 = !{!"llvm.loop.isvectorized", i32 1}
!20 = !{!"llvm.loop.unroll.runtime.disable"}
!21 = !{!"llvm.loop.unroll.disable"}
!22 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!23 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!24 = !{i8 0, i8 2}
!25 = !{}
!26 = distinct !{!26, !17}
!27 = distinct !{!27, !17}
!28 = distinct !{!28, !17}
!29 = distinct !{!29, !17}
!30 = distinct !{!30, !17, !19, !20}
!31 = distinct !{!31, !21}
!32 = distinct !{!32, !17, !19}
!33 = distinct !{!33, !17}
!34 = distinct !{!34, !17}
!35 = distinct !{null}
!36 = !{!"branch_weights", i32 1, i32 4002000, i32 2000}
!37 = distinct !{!37, !17}
!38 = distinct !{null, null}
!39 = distinct !{!39, !17}
!40 = distinct !{!40, !17}
!41 = distinct !{!41, !17, !19, !20}
!42 = distinct !{!42, !21}
!43 = distinct !{!43, !17, !19}
!44 = distinct !{!44, !17, !19, !20}
!45 = distinct !{!45, !21}
!46 = distinct !{!46, !17, !19}
!47 = distinct !{!47, !17}
!48 = !{i64 2154829261}
!49 = !{i64 2154829365}
!50 = distinct !{!50, !17}
!51 = distinct !{!51, !17}
!52 = !{i64 2151015400}
!53 = !{i64 2154707822}
!54 = !{i64 2154712208}
!55 = !{i64 2151016214}
!56 = distinct !{!56, !17}
!57 = distinct !{!57, !17}
!58 = distinct !{!58, !17}
!59 = distinct !{!59, !17}
!60 = distinct !{!60, !17}
!61 = distinct !{!61, !17}
!62 = distinct !{!62, !17}
!63 = distinct !{!63, !17}
!64 = distinct !{!64, !17}
!65 = distinct !{!65, !"memcpy.inline"}
!66 = distinct !{!66, !65, !"memcpy.inline: argument 1"}
!67 = distinct !{!67, !65, !"memcpy.inline: argument 0"}
!68 = !{!67, !66}
!69 = distinct !{!69, !17}
!70 = distinct !{!70, !17, !19, !20}
!71 = distinct !{!71, !17, !19, !20}
!72 = distinct !{!72, !21}
!73 = distinct !{!73, !17, !19}
!74 = distinct !{!74, !17, !19, !20}
!75 = distinct !{!75, !17, !19, !20}
!76 = distinct !{!76, !21}
!77 = distinct !{!77, !17, !19}
!78 = !{!"branch_weights", i32 4, i32 12}
!79 = distinct !{!79, !17}
!80 = distinct !{!80, !17}
!81 = distinct !{!81, !17}
!82 = distinct !{!82, !21}
!83 = distinct !{!83, !17}
!84 = distinct !{!84, !21}
!85 = distinct !{!85, !17}
!86 = distinct !{!86, !17, !19, !20}
!87 = distinct !{!87, !17}
!88 = distinct !{!88, !17}
!89 = distinct !{!89, !17}
!90 = distinct !{!90, !17}
!91 = distinct !{!91, !17}
!92 = distinct !{null, null, null, null}
!93 = distinct !{!93, !17, !19, !20}
!94 = distinct !{!94, !21}
!95 = distinct !{!95, !17, !19}
!96 = distinct !{!96, !17, !19, !20}
!97 = distinct !{!97, !21}
!98 = distinct !{!98, !17, !19}
end_hunk_16
