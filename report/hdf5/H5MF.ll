Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hdf5/original/H5MF?download=true
inline.NumInlined: 29
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumUnrolled: 14
begin_hunk_0_@H5MF_try_close:bb.a
  %i.ca = call fastcc i32 @H5MF__close_delete_fstype(ptr noundef nonnull %0, i32 noundef 4)
  %i.cb = icmp slt i32 %i.ca, 0
  br i1 %i.cb, label %.loopexit.sink.split, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.cc = load ptr, ptr %i.j, align 8, !tbaa !46
  %i.cd = call fastcc zeroext i1 @H5MF__fsm_type_is_self_referential(ptr noundef %i.cc, i32 noundef 5)
  %.42.5 = select i1 %i.cd, i32 3, i32 2          ; 3 uses
  %.not39.5 = icmp eq i32 %.42.5, %.336.4
  br i1 %.not39.5, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @H5AC_set_ring(i32 noundef %.42.5, ptr noundef null) #5
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.336.5 = phi i32 [ %.42.5, %bb.aq ], [ %.336.4, %bb.ap ]
  %i.ce = call fastcc i32 @H5MF__close_delete_fstype(ptr noundef nonnull %0, i32 noundef 5)
  %i.cf = icmp slt i32 %i.ce, 0
  br i1 %i.cf, label %.loopexit.sink.split, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.cg = load ptr, ptr %i.j, align 8, !tbaa !46
  %i.ch = call fastcc zeroext i1 @H5MF__fsm_type_is_self_referential(ptr noundef %i.cg, i32 noundef 6)
  %.42.6 = select i1 %i.ch, i32 3, i32 2          ; 2 uses
  %.not39.6 = icmp eq i32 %.42.6, %.336.5
  br i1 %.not39.6, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @H5AC_set_ring(i32 noundef %.42.6, ptr noundef null) #5
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.ci = call fastcc i32 @H5MF__close_delete_fstype(ptr noundef nonnull %0, i32 noundef 6)
  %i.cj = icmp slt i32 %i.ci, 0
  br i1 %i.cj, label %.loopexit.sink.split, label %.loopexit

bb.av:                                            ; preds = %bb.ac
  call void @H5AC_set_ring(i32 noundef 3, ptr noundef null) #5
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.ac
  %.336 = phi i32 [ 3, %bb.av ], [ 2, %bb.ac ]    ; 2 uses
  %i.ck = call fastcc i32 @H5MF__close_delete_fstype(ptr noundef nonnull %0, i32 noundef 0)
  %i.cl = icmp slt i32 %i.ck, 0
  br i1 %i.cl, label %.loopexit.sink.split, label %bb.ad

.loopexit.sink.split:                             ; preds = %bb.aw, %bb.af, %bb.ai, %bb.al, %bb.ao, %bb.ar, %bb.au, %bb.ab, %bb.f, %bb.h, %bb.j, %bb.l, %bb.n, %bb.p, %bb.r, %bb.t, %bb.v, %bb.x, %bb.z
  %.sink = phi i32 [ 1667, %bb.ab ], [ 1667, %bb.z ], [ 1667, %bb.x ], [ 1667, %bb.v ], [ 1667, %bb.t ], [ 1667, %bb.r ], [ 1667, %bb.p ], [ 1667, %bb.n ], [ 1667, %bb.l ], [ 1667, %bb.j ], [ 1667, %bb.h ], [ 1667, %bb.f ], [ 1689, %bb.au ], [ 1689, %bb.ar ], [ 1689, %bb.ao ], [ 1689, %bb.al ], [ 1689, %bb.ai ], [ 1689, %bb.af ], [ 1689, %bb.aw ]
  %i.cm = load i64, ptr @H5E_RESOURCE_g, align 8, !tbaa !41
  %i.cn = load i64, ptr @H5E_CANTRELEASE_g, align 8, !tbaa !41
  %i.co = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5MF_try_close, i32 noundef %.sink, i64 noundef %i.cm, i64 noundef %i.cn, ptr noundef nonnull @.str.26) #5 ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.sink.split, %bb.au, %bb.z
  %.2 = phi i32 [ 0, %bb.z ], [ 0, %bb.au ], [ -1, %.loopexit.sink.split ] ; 2 uses
  %i.cp = load i32, ptr %i.a, align 4, !tbaa !14  ; 2 uses
  %.not41 = icmp eq i32 %i.cp, 0
  br i1 %.not41, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %.loopexit
  call void @H5AC_set_ring(i32 noundef %i.cp, ptr noundef null) #5
  br label %bb.ay

bb.ay:                                            ; preds = %.loopexit, %bb.ax, %bb.b
  %.3 = phi i32 [ %.2, %bb.ax ], [ %.2, %.loopexit ], [ 0, %bb.b ]
  %i.cq = load i64, ptr %i.b, align 8, !tbaa !41
  call void @H5AC_tag(i64 noundef %i.cq, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i32 %.3
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @H5MF__close_delete_fstype(ptr noundef %0, i32 noundef range(i32 -2147483648, 13) %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = load i8, ptr @H5MF_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = xor i1 %i.e, true
  %i.g = select i1 %i.c, i1 true, i1 %i.f
  br i1 %i.g, label %bb.b, label %bb.m, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !46   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1712
  %i.k = zext i32 %1 to i64                       ; 6 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.k
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !50   ; 2 uses
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = tail call i32 @H5FS_close(ptr noundef nonnull %0, ptr noundef nonnull %i.m) #5
  %i.o = icmp slt i32 %i.n, 0
  br i1 %i.o, label %bb.d, label %H5MF__close_fstype.exit

H5MF__close_fstype.exit:                          ; preds = %bb.c
  %i.p = load ptr, ptr %i.h, align 8, !tbaa !46   ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 1712
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.k
  store ptr null, ptr %i.r, align 8, !tbaa !50
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 1556
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.k
  store i32 0, ptr %i.t, align 4, !tbaa !14
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.u = load i64, ptr @H5E_RESOURCE_g, align 8, !tbaa !41
  %i.v = load i64, ptr @H5E_CANTRELEASE_g, align 8, !tbaa !41
  %i.w = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5MF__close_fstype, i32 noundef 583, i64 noundef %i.u, i64 noundef %i.v, ptr noundef nonnull @.str.61) #5 ; 0 uses
  %i.x = load i64, ptr @H5E_RESOURCE_g, align 8, !tbaa !41
  %i.y = load i64, ptr @H5E_CANTRELEASE_g, align 8, !tbaa !41
  %i.z = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5MF__close_delete_fstype, i32 noundef 1579, i64 noundef %i.x, i64 noundef %i.y, ptr noundef nonnull @.str.26) #5 ; 0 uses
  br label %bb.m

bb.e:                                             ; preds = %H5MF__close_fstype.exit, %bb.b
  %i.aa = phi ptr [ %i.p, %H5MF__close_fstype.exit ], [ %i.i, %bb.b ] ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 1608
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.k ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !41 ; 2 uses
  %.not11 = icmp eq i64 %i.ad, -1
  br i1 %.not11, label %bb.m, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i32 0, ptr %i.a, align 4, !tbaa !14
  %i.ae = load i8, ptr @H5MF_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.af = trunc nuw i8 %i.ae to i1
  %i.ag = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.ah = trunc nuw i8 %i.ag to i1
  %i.ai = xor i1 %i.ah, true
  %i.aj = select i1 %i.af, i1 true, i1 %i.ai
  br i1 %i.aj, label %bb.g, label %H5MF__delete_fstype.exit.thread, !prof !12

H5MF__delete_fstype.exit.thread:                  ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.m

bb.g:                                             ; preds = %bb.f
  store i64 -1, ptr %i.ac, align 8, !tbaa !41
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aa, i64 1556
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.k
  store i32 2, ptr %i.al, align 4, !tbaa !14
  %i.am = tail call fastcc zeroext i1 @H5MF__fsm_type_is_self_referential(ptr noundef nonnull %i.aa, i32 noundef range(i32 -2147483648, 13) %1)
  %..i = select i1 %i.am, i32 3, i32 2
  call void @H5AC_set_ring(i32 noundef %..i, ptr noundef nonnull %i.a) #5
  %i.an = call i32 @H5FS_delete(ptr noundef nonnull %0, i64 noundef %i.ad) #5
  %i.ao = icmp slt i32 %i.an, 0                   ; 2 uses
  br i1 %i.ao, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ap = load i64, ptr @H5E_RESOURCE_g, align 8, !tbaa !41
  %i.aq = load i64, ptr @H5E_CANTFREE_g, align 8, !tbaa !41
  %i.ar = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5MF__delete_fstype, i32 noundef 530, i64 noundef %i.ap, i64 noundef %i.aq, ptr noundef nonnull @.str.58) #5 ; 0 uses
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.as = load ptr, ptr %i.h, align 8, !tbaa !46
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 1556
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.k
  store i32 0, ptr %i.au, align 4, !tbaa !14
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.av = load i32, ptr %i.a, align 4, !tbaa !14  ; 2 uses
  %.not.i = icmp eq i32 %i.av, 0
  br i1 %.not.i, label %H5MF__delete_fstype.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @H5AC_set_ring(i32 noundef %i.av, ptr noundef null) #5
  br label %H5MF__delete_fstype.exit

H5MF__delete_fstype.exit:                         ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br i1 %i.ao, label %bb.l, label %bb.m

bb.l:                                             ; preds = %H5MF__delete_fstype.exit
  %i.aw = load i64, ptr @H5E_RESOURCE_g, align 8, !tbaa !41
  %i.ax = load i64, ptr @H5E_CANTRELEASE_g, align 8, !tbaa !41
  %i.ay = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5MF__close_delete_fstype, i32 noundef 1590, i64 noundef %i.aw, i64 noundef %i.ax, ptr noundef nonnull @.str.57) #5 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %H5MF__delete_fstype.exit.thread, %bb.d, %bb.l, %H5MF__delete_fstype.exit, %bb.e, %bb.a
  %.0 = phi i32 [ -1, %bb.d ], [ -1, %bb.l ], [ 0, %H5MF__delete_fstype.exit ], [ 0, %bb.e ], [ 0, %bb.a ], [ 0, %H5MF__delete_fstype.exit.thread ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5MF_get_freespace(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca [13 x i32], align 16              ; 4 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %i.g = alloca i32, align 4                      ; 11 uses
  %i.h = alloca i64, align 8                      ; 5 uses
  %i.i = alloca i64, align 8                      ; 6 uses
  %i.j = alloca i64, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i64 -1, ptr %i.a, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i64 0, ptr %i.b, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store i64 -1, ptr %i.c, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  store i64 0, ptr %i.d, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #5
  store i32 0, ptr %i.f, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #5
  store i32 0, ptr %i.g, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #5
  store i64 -1, ptr %i.h, align 8, !tbaa !41
  call void @H5AC_tag(i64 noundef 4, ptr noundef nonnull %i.h) #5
  %i.k = load i8, ptr @H5MF_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.l = trunc nuw i8 %i.k to i1                  ; 2 uses
  %i.m = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.n = trunc nuw i8 %i.m to i1                  ; 2 uses
  %i.o = select i1 %i.l, i1 true, i1 %i.n
  br i1 %i.o, label %bb.b, label %.thread, !prof !12

.thread:                                          ; preds = %bb.a
  store i8 1, ptr @H5MF_init_g, align 1, !tbaa !9
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.p = xor i1 %i.n, true
  %i.q = select i1 %i.l, i1 true, i1 %i.p
  br i1 %i.q, label %bb.c, label %bb.as, !prof !61

bb.c:                                             ; preds = %.thread, %bb.b
  call void @H5AC_set_ring(i32 noundef 2, ptr noundef nonnull %i.f) #5
  store i32 2, ptr %i.g, align 4, !tbaa !14
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 10 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !46   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 1512
  %i.u = load i32, ptr %i.t, align 8, !tbaa !39
  %i.v = icmp eq i32 %i.u, 1
  br i1 %i.v, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 1976
  %i.x = load i64, ptr %i.w, align 8, !tbaa !40
  %.not = icmp eq i64 %i.x, 0
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.068 = phi i64 [ 7, %bb.e ], [ 13, %bb.d ]     ; 2 uses
  %i.y = call i64 @H5F_get_eoa(ptr noundef nonnull %0, i32 noundef 1) #5
  %i.z = icmp eq i64 %i.y, -1
  br i1 %i.z, label %bb.m, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = call i64 @H5F_get_eoa(ptr noundef nonnull %0, i32 noundef 2) #5
  %i.ab = icmp eq i64 %i.aa, -1
  br i1 %i.ab, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = call i64 @H5F_get_eoa(ptr noundef nonnull %0, i32 noundef 3) #5
  %i.ad = icmp eq i64 %i.ac, -1
  br i1 %i.ad, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = call i64 @H5F_get_eoa(ptr noundef nonnull %0, i32 noundef 4) #5
  %i.af = icmp eq i64 %i.ae, -1
  br i1 %i.af, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = call i64 @H5F_get_eoa(ptr noundef nonnull %0, i32 noundef 5) #5
  %i.ah = icmp eq i64 %i.ag, -1
  br i1 %i.ah, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ai = call i64 @H5F_get_eoa(ptr noundef nonnull %0, i32 noundef 6) #5
  %i.aj = icmp eq i64 %i.ai, -1
  br i1 %i.aj, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ak = load ptr, ptr %i.r, align 8, !tbaa !46  ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 1512
  %i.am = load i32, ptr %i.al, align 8, !tbaa !39
  %i.an = icmp eq i32 %i.am, 1
  br i1 %i.an, label %bb.n, label %bb.o

bb.m:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f
  %i.ao = load i64, ptr @H5E_RESOURCE_g, align 8, !tbaa !41
  %i.ap = load i64, ptr @H5E_CANTGET_g, align 8, !tbaa !41
  %i.aq = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5MF_get_freespace, i32 noundef 2203, i64 noundef %i.ao, i64 noundef %i.ap, ptr noundef nonnull @.str.11) #5 ; 0 uses
  br label %bb.aq

bb.n:                                             ; preds = %bb.l
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ak, i64 1976
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !40
  %.not83 = icmp eq i64 %i.as, 0
  br i1 %.not83, label %bb.o, label %.preheader119

.preheader119:                                    ; preds = %bb.q, %bb.n
  br label %bb.s

bb.o:                                             ; preds = %bb.n, %bb.l
  %i.at = getelementptr inbounds nuw i8, ptr %i.ak, i64 1896
  %i.au = call i32 @H5MF__aggr_query(ptr noundef nonnull %0, ptr noundef nonnull %i.at, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #5
  %i.av = icmp slt i32 %i.au, 0
  br i1 %i.av, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.aw = load i64, ptr @H5E_RESOURCE_g, align 8, !tbaa !41
  %i.ax = load i64, ptr @H5E_CANTGET_g, align 8, !tbaa !41
  %i.ay = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5MF_get_freespace, i32 noundef 2208, i64 noundef %i.aw, i64 noundef %i.ax, ptr noundef nonnull @.str.27) #5 ; 0 uses
  br label %bb.aq

bb.q:                                             ; preds = %bb.o
  %i.az = load ptr, ptr %i.r, align 8, !tbaa !46
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 1936
  %i.bb = call i32 @H5MF__aggr_query(ptr noundef nonnull %0, ptr noundef nonnull %i.ba, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #5
  %i.bc = icmp slt i32 %i.bb, 0
  br i1 %i.bc, label %bb.r, label %.preheader119

bb.r:                                             ; preds = %bb.q
  %i.bd = load i64, ptr @H5E_RESOURCE_g, align 8, !tbaa !41
  %i.be = load i64, ptr @H5E_CANTGET_g, align 8, !tbaa !41
  %i.bf = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5MF_get_freespace, i32 noundef 2212, i64 noundef %i.bd, i64 noundef %i.be, ptr noundef nonnull @.str.28) #5 ; 0 uses
  br label %bb.aq

.preheader:                                       ; preds = %bb.af
  store i32 %.107, ptr %i.g, align 4
  br label %.preheader.a

bb.s:                                             ; preds = %.preheader119, %bb.af
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.af ], [ 1, %.preheader119 ] ; 8 uses
  %indvars.iv.a = phi i64 [ %.275, %bb.af ], [ 0, %.preheader119 ] ; 2 uses
  %.073108 = phi i64 [ %.278, %bb.af ], [ 0, %.preheader119 ] ; 2 uses
  %.108111 = phi i32 [ %.107, %bb.af ], [ 2, %.preheader119 ] ; 3 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv ; 2 uses
  store i32 0, ptr %i.bg, align 4, !tbaa !14
  %i.bh = load ptr, ptr %i.r, align 8, !tbaa !46  ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 1712
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %indvars.iv
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !50
  %.not88 = icmp eq ptr %i.bk, null
  br i1 %.not88, label %bb.t, label %bb.x

bb.t:                                             ; preds = %bb.s
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 1608
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %indvars.iv
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !41
  %.not89 = icmp eq i64 %i.bn, -1
  br i1 %.not89, label %bb.x, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bo = trunc nuw nsw i64 %indvars.iv to i32
  %i.bp = call i32 @H5MF__open_fstype(ptr noundef nonnull %0, i32 noundef %i.bo)
  %i.bq = icmp slt i32 %i.bp, 0
  br i1 %i.bq, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i32 %.108111, ptr %i.g, align 4
  %i.br = load i64, ptr @H5E_RESOURCE_g, align 8, !tbaa !41
  %i.bs = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !41
  %i.bt = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5MF_get_freespace, i32 noundef 2222, i64 noundef %i.br, i64 noundef %i.bs, ptr noundef nonnull @.str.3) #5 ; 0 uses
  br label %bb.aq

bb.w:                                             ; preds = %bb.u
  store i32 1, ptr %i.bg, align 4, !tbaa !14
  %.pre = load ptr, ptr %i.r, align 8, !tbaa !46
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.t, %bb.s
  %i.bu = phi ptr [ %.pre, %bb.w ], [ %i.bh, %bb.t ], [ %i.bh, %bb.s ]
  %i.bv = trunc nuw nsw i64 %indvars.iv to i32
  %i.bw = call fastcc zeroext i1 @H5MF__fsm_type_is_self_referential(ptr noundef %i.bu, i32 noundef %i.bv)
  %. = select i1 %i.bw, i32 3, i32 2              ; 3 uses
  %.not90 = icmp eq i32 %., %.108111
  br i1 %.not90, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @H5AC_set_ring(i32 noundef %., ptr noundef null) #5
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.107 = phi i32 [ %., %bb.y ], [ %.108111, %bb.x ] ; 4 uses
  %i.bx = load ptr, ptr %i.r, align 8, !tbaa !46
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 1712
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %indvars.iv ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !50
  %.not91 = icmp eq ptr %i.ca, null
  br i1 %.not91, label %bb.af, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #5
  store i64 0, ptr %i.i, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #5
  store i64 0, ptr %i.j, align 8, !tbaa !41
  %i.cb = load ptr, ptr %i.bz, align 8, !tbaa !50
  %i.cc = call i32 @H5FS_sect_stats(ptr noundef %i.cb, ptr noundef nonnull %i.i, ptr noundef null) #5
  %i.cd = icmp slt i32 %i.cc, 0
  br i1 %i.cd, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store i32 %.107, ptr %i.g, align 4
  %i.ce = load i64, ptr @H5E_RESOURCE_g, align 8, !tbaa !41
  %i.cf = load i64, ptr @H5E_CANTGET_g, align 8, !tbaa !41
  %i.cg = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5MF_get_freespace, i32 noundef 2245, i64 noundef %i.ce, i64 noundef %i.cf, ptr noundef nonnull @.str.29) #5 ; 0 uses
  br label %.thread94

bb.ac:                                            ; preds = %bb.aa
  %i.ch = load ptr, ptr %i.r, align 8, !tbaa !46
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 1712
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %indvars.iv
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !50
  %i.cl = call i32 @H5FS_size(ptr noundef %i.ck, ptr noundef nonnull %i.j) #5
  %i.cm = icmp slt i32 %i.cl, 0
  br i1 %i.cm, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  store i32 %.107, ptr %i.g, align 4
  %i.cn = load i64, ptr @H5E_RESOURCE_g, align 8, !tbaa !41
  %i.co = load i64, ptr @H5E_CANTGET_g, align 8, !tbaa !41
  %i.cp = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5MF_get_freespace, i32 noundef 2247, i64 noundef %i.cn, i64 noundef %i.co, ptr noundef nonnull @.str.30) #5 ; 0 uses
  br label %.thread94

.thread94:                                        ; preds = %bb.ab, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #5
  br label %bb.aq

bb.ae:                                            ; preds = %bb.ac
  %i.cq = load i64, ptr %i.i, align 8, !tbaa !41
  %i.cr = add i64 %i.cq, %.073108
  %i.cs = load i64, ptr %i.j, align 8, !tbaa !41
  %i.ct = add i64 %i.cs, %indvars.iv.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #5
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.z
  %.278 = phi i64 [ %i.cr, %bb.ae ], [ %.073108, %bb.z ] ; 2 uses
  %.275 = phi i64 [ %i.ct, %bb.ae ], [ %indvars.iv.a, %bb.z ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %.068
  br i1 %exitcond.not, label %.preheader, label %bb.s, !llvm.loop !107

.preheader.a:                                     ; preds = %.preheader, %H5MF__close_fstype.exit.thread
  %indvars.iv112 = phi i64 [ 1, %.preheader ], [ %indvars.iv.next113, %H5MF__close_fstype.exit.thread ] ; 6 uses
  %i.cu = load ptr, ptr %i.r, align 8, !tbaa !46
  %i.cv = trunc nuw nsw i64 %indvars.iv112 to i32
  %i.cw = call fastcc zeroext i1 @H5MF__fsm_type_is_self_referential(ptr noundef %i.cu, i32 noundef %i.cv)
  %.93 = select i1 %i.cw, i32 3, i32 2            ; 3 uses
  %i.cx = load i32, ptr %i.g, align 4, !tbaa !14
  %.not86 = icmp eq i32 %.93, %i.cx
  br i1 %.not86, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %.preheader.a
  call void @H5AC_set_ring(i32 noundef %.93, ptr noundef nonnull %i.g) #5
  store i32 %.93, ptr %i.g, align 4, !tbaa !14
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.preheader.a
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv112
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !14
  %.not87 = icmp eq i32 %i.cz, 0
  br i1 %.not87, label %H5MF__close_fstype.exit.thread, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.da = load i8, ptr @H5MF_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.db = trunc nuw i8 %i.da to i1
  %i.dc = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.dd = trunc nuw i8 %i.dc to i1
  %i.de = xor i1 %i.dd, true
  %i.df = select i1 %i.db, i1 true, i1 %i.de
  br i1 %i.df, label %bb.aj, label %H5MF__close_fstype.exit.thread, !prof !12

bb.aj:                                            ; preds = %bb.ai
  %i.dg = load ptr, ptr %i.r, align 8, !tbaa !46
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 1712
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %indvars.iv112
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !50
  %i.dk = call i32 @H5FS_close(ptr noundef nonnull %0, ptr noundef %i.dj) #5
  %i.dl = icmp slt i32 %i.dk, 0
  br i1 %i.dl, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dm = load ptr, ptr %i.r, align 8, !tbaa !46  ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 1712
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %indvars.iv112
  store ptr null, ptr %i.do, align 8, !tbaa !50
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 1556
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %indvars.iv112
  store i32 0, ptr %i.dq, align 4, !tbaa !14
  br label %H5MF__close_fstype.exit.thread

bb.al:                                            ; preds = %bb.aj
  %i.dr = load i64, ptr @H5E_RESOURCE_g, align 8, !tbaa !41
  %i.ds = load i64, ptr @H5E_CANTRELEASE_g, align 8, !tbaa !41
  %i.dt = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5MF__close_fstype, i32 noundef 583, i64 noundef %i.dr, i64 noundef %i.ds, ptr noundef nonnull @.str.61) #5 ; 0 uses
  %i.du = load i64, ptr @H5E_RESOURCE_g, align 8, !tbaa !41
  %i.dv = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !41
  %i.dw = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5MF_get_freespace, i32 noundef 2270, i64 noundef %i.du, i64 noundef %i.dv, ptr noundef nonnull @.str.31) #5 ; 0 uses
  br label %bb.aq

H5MF__close_fstype.exit.thread:                   ; preds = %bb.ai, %bb.ak, %bb.ah
  %indvars.iv.next113 = add nuw nsw i64 %indvars.iv112, 1 ; 2 uses
  %exitcond116.not = icmp eq i64 %indvars.iv.next113, %.068
  br i1 %exitcond116.not, label %bb.am, label %.preheader.a, !llvm.loop !108

bb.am:                                            ; preds = %H5MF__close_fstype.exit.thread
  %.not84 = icmp eq ptr %1, null
  br i1 %.not84, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dx = load i64, ptr %i.b, align 8, !tbaa !41
  %i.dy = add i64 %i.dx, %.278
  %i.dz = load i64, ptr %i.d, align 8, !tbaa !41
  %i.ea = add i64 %i.dy, %i.dz
  store i64 %i.ea, ptr %1, align 8, !tbaa !41
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.not85 = icmp eq ptr %2, null
  br i1 %.not85, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  store i64 %.275, ptr %2, align 8, !tbaa !41
  br label %bb.aq

bb.aq:                                            ; preds = %.thread94, %bb.ao, %bb.ap, %bb.al, %bb.v, %bb.r, %bb.p, %bb.m
  %.3 = phi i32 [ -1, %bb.m ], [ -1, %.thread94 ], [ -1, %bb.v ], [ -1, %bb.al ], [ 0, %bb.ap ], [ 0, %bb.ao ], [ -1, %bb.p ], [ -1, %bb.r ] ; 2 uses
  %i.eb = load i32, ptr %i.f, align 4, !tbaa !14  ; 2 uses
  %.not92 = icmp eq i32 %i.eb, 0
  br i1 %.not92, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @H5AC_set_ring(i32 noundef %i.eb, ptr noundef null) #5
  br label %bb.as

bb.as:                                            ; preds = %bb.aq, %bb.ar, %bb.b
  %.4 = phi i32 [ %.3, %bb.ar ], [ %.3, %bb.aq ], [ 0, %bb.b ]
  %i.ec = load i64, ptr %i.h, align 8, !tbaa !41
  call void @H5AC_tag(i64 noundef %i.ec, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i32 %.4
}

declare i32 @H5MF__aggr_query(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @H5FS_sect_stats(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @H5FS_size(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5MF_get_free_sections(ptr noundef %0, i32 noundef %1, i64 noundef %2, ptr noundef %3, ptr nofree noundef writeonly captures(none) %4) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 7 uses
  %5 = alloca %struct.H5MF_sect_iter_ud_t, align 8 ; 7 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i32 0, ptr %i.b, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store i32 0, ptr %i.c, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  store i64 -1, ptr %i.d, align 8, !tbaa !41
  call void @H5AC_tag(i64 noundef 4, ptr noundef nonnull %i.d) #5
  %i.e = load i8, ptr @H5MF_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.f = trunc nuw i8 %i.e to i1                  ; 2 uses
  %i.g = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.h = trunc nuw i8 %i.g to i1                  ; 2 uses
  %i.i = select i1 %i.f, i1 true, i1 %i.h
  br i1 %i.i, label %bb.b, label %.thread, !prof !12

.thread:                                          ; preds = %bb.a
  store i8 1, ptr @H5MF_init_g, align 1, !tbaa !9
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = xor i1 %i.h, true
  %i.k = select i1 %i.f, i1 true, i1 %i.j
  br i1 %i.k, label %bb.c, label %bb.ac, !prof !61

bb.c:                                             ; preds = %.thread, %bb.b
  %i.l = icmp ne i32 %1, 0                        ; 2 uses
  br i1 %i.l, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !46   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 1512
  %i.p = load i32, ptr %i.o, align 8, !tbaa !39
  %i.q = icmp eq i32 %i.p, 1
  br i1 %i.q, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 1976
  %i.s = load i64, ptr %i.r, align 8, !tbaa !40
  %.not = icmp eq i64 %i.s, 0
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = add i32 %1, 7
  br label %bb.h

bb.g:                                             ; preds = %bb.e, %bb.d
  %i.u = add i32 %1, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.f, %bb.g
  %.050 = phi i32 [ %1, %bb.g ], [ %1, %bb.f ], [ 1, %bb.c ] ; 2 uses
  %.049 = phi i32 [ %i.u, %bb.g ], [ %i.t, %bb.f ], [ 13, %bb.c ] ; 2 uses
  store ptr %3, ptr %5, align 8, !tbaa !82
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %2, ptr %i.v, align 8, !tbaa !83
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 0, ptr %i.w, align 8, !tbaa !84
  call void @H5AC_set_ring(i32 noundef 2, ptr noundef nonnull %i.b) #5
  store i32 2, ptr %i.c, align 4, !tbaa !14
  %i.x = icmp ult i32 %.050, %.049
  br i1 %i.x, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %.pre = load ptr, ptr %i.y, align 8, !tbaa !46
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.aa
  %i.z = phi ptr [ %.pre, %.lr.ph ], [ %i.cl, %bb.aa ]
  %.04679 = phi i32 [ %.050, %.lr.ph ], [ %i.ct, %bb.aa ] ; 6 uses
  %.05178 = phi i64 [ 0, %.lr.ph ], [ %i.ck, %bb.aa ] ; 3 uses
  %i.aa = call fastcc zeroext i1 @H5MF__fsm_type_is_self_referential(ptr noundef %i.z, i32 noundef %.04679)
  %. = select i1 %i.aa, i32 3, i32 2              ; 3 uses
  %i.ab = load i32, ptr %i.c, align 4, !tbaa !14
  %.not58 = icmp eq i32 %., %i.ab
  br i1 %.not58, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @H5AC_set_ring(i32 noundef %., ptr noundef nonnull %i.c) #5
end_hunk_0
