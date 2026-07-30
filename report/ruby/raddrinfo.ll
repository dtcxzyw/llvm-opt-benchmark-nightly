inline.NumInlined: 312
inline.NumDeleted: 57
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 9
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@rsock_make_hostent:bb.a

declare i64 @rb_ensure(ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal i64 @make_hostent_internal(i64 noundef %0) #0 {
bb.a:
  %i.a = alloca [1025 x i8], align 16             ; 3 uses
  %i.b = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !81
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !84
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !14   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !85
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.i = tail call i64 @rb_ary_new() #17          ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !75   ; 2 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = call ptr @raddrinfo_host_str(i64 noundef %i.c, ptr noundef nonnull %i.a, i64 noundef 1025, ptr noundef null)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.l, %bb.b ], [ %i.k, %bb.a ]
  %i.m = call i64 @rb_str_new_cstr(ptr noundef %.0) #17
  %i.n = call i64 @rb_ary_push(i64 noundef %i.i, i64 noundef %i.m) #17 ; 0 uses
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !75   ; 3 uses
  %.not37 = icmp eq ptr %i.o, null
  br i1 %.not37, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.o) #20
  %i.q = icmp ult i64 %i.p, 1025
  br i1 %i.q, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.r = call ptr @gethostbyname(ptr noundef nonnull %i.o) #17 ; 2 uses
  %.not38 = icmp eq ptr %i.r, null
  br i1 %.not38, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = call i64 @rb_ary_new() #17               ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !86   ; 3 uses
  %.not39 = icmp eq ptr %i.u, null
  br i1 %.not39, label %.lr.ph46.preheader, label %.preheader

.preheader:                                       ; preds = %bb.f
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !50   ; 2 uses
  %.not4042 = icmp eq ptr %i.v, null
  br i1 %.not4042, label %.lr.ph46.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %i.w = phi ptr [ %i.aa, %.lr.ph ], [ %i.v, %.preheader ]
  %.02943 = phi ptr [ %i.z, %.lr.ph ], [ %i.u, %.preheader ]
  %i.x = call i64 @rb_str_new_cstr(ptr noundef nonnull %i.w) #17
  %i.y = call i64 @rb_ary_push(i64 noundef %i.s, i64 noundef %i.x) #17 ; 0 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.02943, i64 8 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !50  ; 2 uses
  %.not40 = icmp eq ptr %i.aa, null
  br i1 %.not40, label %.lr.ph46.preheader, label %.lr.ph, !llvm.loop !90

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.ab = call i64 @rb_ary_new_capa(i64 noundef 0) #17
  br label %.lr.ph46.preheader

.lr.ph46.preheader:                               ; preds = %.lr.ph, %bb.g, %bb.f, %.preheader
  %.030 = phi i64 [ %i.ab, %bb.g ], [ %i.s, %bb.f ], [ %i.s, %.preheader ], [ %i.s, %.lr.ph ]
  %i.ac = call i64 @rb_ary_push(i64 noundef %i.i, i64 noundef %.030) #17 ; 0 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !68
  %i.af = sext i32 %i.ae to i64
  %i.ag = shl nsw i64 %i.af, 1
  %i.ah = or disjoint i64 %i.ag, 1
  %i.ai = call i64 @rb_ary_push(i64 noundef %i.i, i64 noundef %i.ah) #17 ; 0 uses
  br label %.lr.ph46

.lr.ph46:                                         ; preds = %.lr.ph46.preheader, %.lr.ph46
  %.03145 = phi ptr [ %i.aq, %.lr.ph46 ], [ %i.f, %.lr.ph46.preheader ] ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.03145, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !19
  %i.al = getelementptr inbounds nuw i8, ptr %.03145, i64 16
  %i.am = load i32, ptr %i.al, align 8, !tbaa !74
  %i.an = call i64 %i.h(ptr noundef %i.ak, i32 noundef %i.am) #17
  %i.ao = call i64 @rb_ary_push(i64 noundef %i.i, i64 noundef %i.an) #17 ; 0 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.03145, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !15 ; 2 uses
  %.not41 = icmp eq ptr %i.aq, null
  br i1 %.not41, label %._crit_edge, label %.lr.ph46, !llvm.loop !91

._crit_edge:                                      ; preds = %.lr.ph46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret i64 %i.i
}

; Function Attrs: nounwind uwtable
define i64 @rsock_addrinfo_new(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr @rb_cAddrinfo, align 8, !tbaa !38
  %i.b = tail call i64 @rb_data_typed_object_wrap(i64 noundef %i.a, ptr noundef null, ptr noundef nonnull @addrinfo_type) #17 ; 4 uses
  %i.c = tail call noalias noundef nonnull dereferenceable(2080) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 2080) #21 ; 9 uses
  store i64 4, ptr %i.c, align 8, !tbaa !92
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store i64 4, ptr %i.d, align 8, !tbaa !94
  %i.e = inttoptr i64 %i.b to ptr
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr %i.c, ptr %i.f, align 8, !tbaa !95
  %i.g = icmp ugt i32 %1, 2048
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr @rb_eArgError, align 8, !tbaa !38
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.h, ptr noundef nonnull @.str.102) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not.i.i = icmp eq i32 %1, 0
  br i1 %.not.i.i, label %ruby_nonempty_memcpy.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = zext nneg i32 %1 to i64
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.j, ptr readonly align 1 %0, i64 %i.i, i1 false)
  br label %ruby_nonempty_memcpy.exit.i

ruby_nonempty_memcpy.exit.i:                      ; preds = %bb.d, %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  store i32 %1, ptr %i.k, align 4, !tbaa !97
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i32 %2, ptr %i.l, align 8, !tbaa !98
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  store i32 %3, ptr %i.m, align 4, !tbaa !99
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i32 %4, ptr %i.n, align 8, !tbaa !100
  store i64 %5, ptr %i.d, align 8, !tbaa !38
  %i.o = icmp eq i64 %5, 0
  %i.p = and i64 %5, 7
  %i.q = icmp ne i64 %i.p, 0
  %i.r = or i1 %i.o, %i.q
  br i1 %i.r, label %rb_obj_write.exit.i, label %bb.e

bb.e:                                             ; preds = %ruby_nonempty_memcpy.exit.i
  tail call void @rb_gc_writebarrier(i64 noundef %i.b, i64 noundef %5) #17
  br label %rb_obj_write.exit.i

rb_obj_write.exit.i:                              ; preds = %bb.e, %ruby_nonempty_memcpy.exit.i
  store i64 %6, ptr %i.c, align 8, !tbaa !38
  %i.s = icmp eq i64 %6, 0
  %i.t = and i64 %6, 7
  %i.u = icmp ne i64 %i.t, 0
  %i.v = or i1 %i.s, %i.u
  br i1 %i.v, label %init_addrinfo.exit, label %bb.f

bb.f:                                             ; preds = %rb_obj_write.exit.i
  tail call void @rb_gc_writebarrier(i64 noundef %i.b, i64 noundef %6) #17
  br label %init_addrinfo.exit

init_addrinfo.exit:                               ; preds = %rb_obj_write.exit.i, %bb.f
  ret i64 %i.b
}

; Function Attrs: nounwind uwtable
define internal i64 @addrinfo_s_allocate(i64 noundef %0) #0 {
bb.a:
  %i.a = tail call i64 @rb_data_typed_object_wrap(i64 noundef %0, ptr noundef null, ptr noundef nonnull @addrinfo_type) #17
  ret i64 %i.a
}

; Function Attrs: nounwind uwtable
define noundef i64 @rsock_inspect_sockaddr(ptr noundef %0, i32 noundef %1, i64 noundef returned %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 5 uses
  %i.b = alloca [16 x i8], align 16               ; 4 uses
  %i.c = icmp eq i32 %1, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i64 @rb_str_cat(i64 noundef %2, ptr noundef nonnull @.str.12, i64 noundef 14) #17 ; 0 uses
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.e = zext i32 %1 to i64                       ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 11 uses
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = icmp eq i32 %1, 1
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = tail call i64 @rb_str_cat(i64 noundef %2, ptr noundef nonnull @.str.13, i64 noundef 18) #17 ; 0 uses
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  %i.j = load i16, ptr %0, align 8, !tbaa !46     ; 2 uses
  switch i16 %i.j, label %bb.ax [
    i16 0, label %bb.f
    i16 2, label %bb.g
    i16 10, label %bb.p
    i16 1, label %3
    i16 17, label %bb.ae
  ]

bb.f:                                             ; preds = %bb.e
  %i.k = tail call i64 @rb_str_cat(i64 noundef %2, ptr noundef nonnull @.str.14, i64 noundef 6) #17 ; 0 uses
  br label %.loopexit

bb.g:                                             ; preds = %bb.e
  %i.l = icmp ugt i32 %1, 4                       ; 2 uses
  br i1 %i.l, label %bb.h, label %.thread

.thread:                                          ; preds = %bb.g
  %i.m = tail call i64 @rb_str_cat(i64 noundef %2, ptr noundef nonnull @.str.16, i64 noundef 1) #17 ; 0 uses
  br label %.thread185

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.o = load i8, ptr %i.n, align 4, !tbaa !46
  %i.p = zext i8 %i.o to i32
  %i.q = tail call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %2, ptr noundef nonnull @.str.15, i32 noundef %i.p) #17 ; 0 uses
  %.not206 = icmp eq i32 %1, 5
  br i1 %.not206, label %.thread185, label %bb.i

.thread185:                                       ; preds = %bb.h, %.thread
  %i.r = tail call i64 @rb_str_cat(i64 noundef %2, ptr noundef nonnull @.str.18, i64 noundef 2) #17 ; 0 uses
  br label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.t = load i8, ptr %i.s, align 1, !tbaa !46
  %i.u = zext i8 %i.t to i32
  %i.v = tail call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %2, ptr noundef nonnull @.str.17, i32 noundef %i.u) #17 ; 0 uses
  %i.w = icmp ugt i32 %1, 6
  br i1 %i.w, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.y = load i8, ptr %i.x, align 2, !tbaa !46
  %i.z = zext i8 %i.y to i32
  %i.aa = tail call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %2, ptr noundef nonnull @.str.17, i32 noundef %i.z) #17 ; 0 uses
  %.not207 = icmp eq i32 %1, 7
  br i1 %.not207, label %.thread229, label %.thread187

.thread229:                                       ; preds = %bb.j
  %i.ab = tail call i64 @rb_str_cat(i64 noundef %2, ptr noundef nonnull @.str.18, i64 noundef 2) #17 ; 0 uses
  br label %bb.l

.thread187:                                       ; preds = %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !46
  %i.ae = zext i8 %i.ad to i32
  %i.af = tail call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %2, ptr noundef nonnull @.str.17, i32 noundef %i.ae) #17 ; 0 uses
  br label %bb.l

bb.k:                                             ; preds = %.thread185, %bb.i
  %i.ag = tail call i64 @rb_str_cat(i64 noundef %2, ptr noundef nonnull @.str.18, i64 noundef 2) #17 ; 0 uses
  %i.ah = tail call i64 @rb_str_cat(i64 noundef %2, ptr noundef nonnull @.str.18, i64 noundef 2) #17 ; 0 uses
  br i1 %i.l, label %bb.l, label %.thread188

bb.l:                                             ; preds = %.thread229, %.thread187, %bb.k
  %i.ai = load i16, ptr %i.f, align 2, !tbaa !76  ; 2 uses
  %.not181 = icmp eq i16 %i.ai, 0
  br i1 %.not181, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %rev.i = tail call noundef i16 @llvm.bswap.i16(i16 %i.ai)
  %i.aj = zext i16 %rev.i to i32
  %i.ak = tail call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %2, ptr noundef nonnull @.str.19, i32 noundef %i.aj) #17 ; 0 uses
  br label %bb.n

.thread188:                                       ; preds = %bb.k
  %i.al = tail call i64 @rb_str_cat(i64 noundef %2, ptr noundef nonnull @.str.20, i64 noundef 2) #17 ; 0 uses
  br label %bb.o

bb.n:                                             ; preds = %bb.l, %bb.m
  %.not182 = icmp eq i32 %1, 16
  br i1 %.not182, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %.thread188, %bb.n
  %i.am = tail call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %2, ptr noundef nonnull @.str.21, i32 noundef %1, i32 noundef 16) #17 ; 0 uses
  br label %.loopexit

bb.p:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.an = icmp ult i32 %1, 28
  br i1 %i.an, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ao = tail call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %2, ptr noundef nonnull @.str.22, i32 noundef %1) #17 ; 0 uses
  br label %bb.y

bb.r:                                             ; preds = %bb.p
  %i.ap = call i32 @getnameinfo(ptr noundef nonnull %0, i32 noundef %1, ptr noundef nonnull %i.a, i32 noundef 1024, ptr noundef null, i32 noundef 0, i32 noundef 3) #17 ; 2 uses
  %.not179 = icmp eq i32 %i.ap, 0
  br i1 %.not179, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @rsock_raise_resolution_error(ptr noundef nonnull @.str.8, i32 noundef %i.ap) #19
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.aq = load i16, ptr %i.f, align 2, !tbaa !73  ; 2 uses
  %i.ar = icmp eq i16 %i.aq, 0
  br i1 %i.ar, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.as = call i64 @rb_str_cat_cstr(i64 noundef %2, ptr noundef nonnull %i.a) #17 ; 0 uses
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %rev.i183 = call noundef i16 @llvm.bswap.i16(i16 %i.aq)
  %i.at = zext i16 %rev.i183 to i32
  %i.au = call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %2, ptr noundef nonnull @.str.23, ptr noundef nonnull %i.a, i32 noundef %i.at) #17 ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.not180 = icmp eq i32 %1, 28
  br i1 %.not180, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.av = add i32 %1, -28
  %i.aw = call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %2, ptr noundef nonnull @.str.24, i32 noundef %i.av) #17 ; 0 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %.loopexit

3:                                                ; preds = %bb.e
  %4 = icmp ugt i32 %1, 2
  br i1 %4, label %.lr.ph242, label %unixsocket_len.exit.a

bb.z:                                             ; preds = %.lr.ph242
  %i.ax = icmp sgt i64 %.0.idx.i240, 3
  %indvar.next = add i64 %indvar, 1
  br i1 %i.ax, label %.lr.ph242, label %unixsocket_len.exit.a, !llvm.loop !80

.lr.ph242:                                        ; preds = %3, %bb.z
  %indvar = phi i64 [ %indvar.next, %bb.z ], [ 0, %3 ] ; 3 uses
  %.0.idx.i240 = phi i64 [ %.0.add.i, %bb.z ], [ %i.e, %3 ] ; 3 uses
  %.0.add.i = add nsw i64 %.0.idx.i240, -1        ; 2 uses
  %.ptr.i = getelementptr inbounds nuw i8, ptr %0, i64 %.0.add.i
  %i.ay = load i8, ptr %.ptr.i, align 1, !tbaa !46
  %i.az = icmp eq i8 %i.ay, 0
  br i1 %i.az, label %bb.z, label %.thread232, !llvm.loop !80

unixsocket_len.exit.a:                            ; preds = %bb.z, %3
  %i.ba = tail call i64 @rb_str_cat(i64 noundef %2, ptr noundef nonnull @.str.26, i64 noundef 27) #17 ; 0 uses
  br label %.loopexit

.thread232:                                       ; preds = %.lr.ph242
  %i.bb = getelementptr i8, ptr %0, i64 %.0.idx.i240 ; 3 uses
  %i.bc = icmp ult ptr %i.f, %i.bb
  br i1 %i.bc, label %.lr.ph211.preheader, label %._crit_edge.thread

.lr.ph211.preheader:                              ; preds = %.thread232
  %i.bd = add nsw i64 %i.e, -2
  %i.be = sub i64 %i.bd, %indvar                  ; 3 uses
  %i.bf = add nsw i64 %i.e, -3
  %xtraiter = and i64 %i.be, 1
  %i.bg = icmp eq i64 %i.bf, %indvar
  br i1 %i.bg, label %.lr.ph211.epil.preheader, label %.lr.ph211.preheader.new

.lr.ph211.preheader.new:                          ; preds = %.lr.ph211.preheader
  %unroll_iter = and i64 %i.be, -2
  br label %.lr.ph211

.lr.ph211:                                        ; preds = %.critedge, %.lr.ph211.preheader.new
  %.0210 = phi ptr [ %i.f, %.lr.ph211.preheader.new ], [ %i.bt, %.critedge ] ; 3 uses
  %.0165209 = phi i1 [ false, %.lr.ph211.preheader.new ], [ %i.bs, %.critedge ]
  %niter = phi i64 [ 0, %.lr.ph211.preheader.new ], [ %niter.next.1, %.critedge ]
  br i1 %.0165209, label %.critedge, label %.lr.ph211.1

.lr.ph211.1:                                      ; preds = %.lr.ph211
  %i.bh = load i8, ptr %.0210, align 1, !tbaa !46 ; 2 uses
  %i.bi = sext i8 %i.bh to i32
  %i.bj = add nsw i32 %i.bi, -127
  %i.bk = icmp ult i32 %i.bj, -95
  %i.bl = icmp eq i8 %i.bh, 32
  %spec.select243 = select i1 %i.bk, i1 true, i1 %i.bl
  br i1 %spec.select243, label %.critedge, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph211.1
  %i.bm = getelementptr inbounds nuw i8, ptr %.0210, i64 1
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !46  ; 2 uses
  %i.bo = sext i8 %i.bn to i32
  %i.bp = add nsw i32 %i.bo, -127
  %i.bq = icmp ult i32 %i.bp, -95
  %i.br = icmp eq i8 %i.bn, 32
  %spec.select243.1 = select i1 %i.bq, i1 true, i1 %i.br
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph211, %bb.aa, %.lr.ph211.1
  %i.bs = phi i1 [ %spec.select243.1, %bb.aa ], [ true, %.lr.ph211.1 ], [ true, %.lr.ph211 ] ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.0210, i64 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %._crit_edge.unr-lcssa, label %.lr.ph211, !llvm.loop !101

._crit_edge.unr-lcssa:                            ; preds = %.critedge
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph211.epil.preheader

.lr.ph211.epil.preheader:                         ; preds = %._crit_edge.unr-lcssa, %.lr.ph211.preheader
  %.0210.epil.init = phi ptr [ %i.f, %.lr.ph211.preheader ], [ %i.bt, %._crit_edge.unr-lcssa ]
  %.0165209.epil.init = phi i1 [ false, %.lr.ph211.preheader ], [ %i.bs, %._crit_edge.unr-lcssa ]
  %lcmp.mod247 = trunc i64 %i.be to i1
  tail call void @llvm.assume(i1 %lcmp.mod247)
  br i1 %.0165209.epil.init, label %.critedge252, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph211.epil.preheader
  %i.bu = load i8, ptr %.0210.epil.init, align 1, !tbaa !46 ; 2 uses
  %i.bv = sext i8 %i.bu to i32
  %i.bw = add nsw i32 %i.bv, -127
  %i.bx = icmp ult i32 %i.bw, -95
  %i.by = icmp eq i8 %i.bu, 32
  %spec.select243.epil = select i1 %i.bx, i1 true, i1 %i.by
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.ab, %._crit_edge.unr-lcssa
  %.lcssa = phi i1 [ %i.bs, %._crit_edge.unr-lcssa ], [ %spec.select243.epil, %bb.ab ]
  br i1 %.lcssa, label %.critedge252, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.thread232, %._crit_edge
  %.0.lcssa237 = phi ptr [ %i.bb, %._crit_edge ], [ %i.f, %.thread232 ]
  %i.bz = load i8, ptr %i.f, align 2, !tbaa !46
  %.not176 = icmp eq i8 %i.bz, 47
  br i1 %.not176, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %._crit_edge.thread
  %i.ca = tail call i64 @rb_str_cat(i64 noundef %2, ptr noundef nonnull @.str.27, i64 noundef 5) #17 ; 0 uses
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %._crit_edge.thread
  %i.cb = ptrtoint ptr %.0.lcssa237 to i64
  %i.cc = sub i64 %i.cb, %i.g
  %i.cd = tail call i64 @rb_str_cat(i64 noundef %2, ptr noundef nonnull %i.f, i64 noundef %i.cc) #17 ; 0 uses
  br label %.loopexit

.critedge252:                                     ; preds = %.lr.ph211.epil.preheader, %._crit_edge
  %i.ce = tail call i64 @rb_str_cat(i64 noundef %2, ptr noundef nonnull @.str.28, i64 noundef 4) #17 ; 0 uses
  br label %.lr.ph215

.lr.ph215:                                        ; preds = %.critedge252, %.lr.ph215
  %.0164213 = phi ptr [ %i.cf, %.lr.ph215 ], [ %i.f, %.critedge252 ] ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.0164213, i64 1 ; 2 uses
  %i.cg = load i8, ptr %.0164213, align 1, !tbaa !46
  %i.ch = zext i8 %i.cg to i32
  %i.ci = tail call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %2, ptr noundef nonnull @.str.29, i32 noundef %i.ch) #17 ; 0 uses
  %exitcond220.not = icmp eq ptr %i.cf, %i.bb
  br i1 %exitcond220.not, label %.loopexit, label %.lr.ph215, !llvm.loop !102

bb.ae:                                            ; preds = %bb.e
  %i.cj = tail call i64 @rb_str_cat(i64 noundef %2, ptr noundef nonnull @.str.31, i64 noundef 6) #17 ; 0 uses
  %i.ck = icmp ugt i32 %1, 3
  br i1 %i.ck, label %bb.af, label %.thread195

bb.af:                                            ; preds = %bb.ae
  %i.cl = tail call i64 @rb_str_cat_cstr(i64 noundef %2, ptr noundef nonnull @.str.30) #17 ; 0 uses
  %i.cm = load i16, ptr %i.f, align 2, !tbaa !103
  %rev.i184 = tail call noundef i16 @llvm.bswap.i16(i16 %i.cm)
  %i.cn = zext i16 %rev.i184 to i32
  %i.co = tail call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %2, ptr noundef nonnull @.str.33, i32 noundef %i.cn) #17 ; 0 uses
  %i.cp = icmp ugt i32 %1, 7
  br i1 %i.cp, label %bb.ag, label %.thread195

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.cq = tail call i64 @rb_str_cat_cstr(i64 noundef %2, ptr noundef nonnull @.str.32) #17 ; 0 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !105
  %i.ct = call ptr @if_indextoname(i32 noundef %i.cs, ptr noundef nonnull %i.b) #17
  %i.cu = icmp eq ptr %i.ct, null
  br i1 %i.cu, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.cv = load i32, ptr %i.cr, align 4, !tbaa !105
  %i.cw = call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %2, ptr noundef nonnull @.str.34, i32 noundef %i.cv) #17 ; 0 uses
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  %i.cx = call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %2, ptr noundef nonnull @.str.35, ptr noundef nonnull %i.b) #17 ; 0 uses
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  %i.cy = icmp ugt i32 %1, 9
  br i1 %i.cy, label %bb.ak, label %.thread195

bb.ak:                                            ; preds = %bb.aj
  %i.cz = call i64 @rb_str_cat_cstr(i64 noundef %2, ptr noundef nonnull @.str.32) #17 ; 0 uses
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.db = load i16, ptr %i.da, align 8, !tbaa !106
  %i.dc = zext i16 %i.db to i32
  %i.dd = call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %2, ptr noundef nonnull @.str.36, i32 noundef %i.dc) #17 ; 0 uses
  %.not205 = icmp eq i32 %1, 10
  br i1 %.not205, label %.thread195, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.de = call i64 @rb_str_cat_cstr(i64 noundef %2, ptr noundef nonnull @.str.32) #17 ; 0 uses
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.dg = load i8, ptr %i.df, align 2, !tbaa !107 ; 2 uses
  switch i8 %i.dg, label %bb.ar [
    i8 0, label %bb.am
    i8 1, label %bb.an
    i8 2, label %bb.ao
    i8 3, label %bb.ap
    i8 4, label %bb.aq
  ]

bb.am:                                            ; preds = %bb.al
  %i.dh = call i64 @rb_str_cat(i64 noundef %2, ptr noundef nonnull @.str.37, i64 noundef 4) #17 ; 0 uses
  br label %.thread195

bb.an:                                            ; preds = %bb.al
  %i.di = call i64 @rb_str_cat(i64 noundef %2, ptr noundef nonnull @.str.38, i64 noundef 9) #17 ; 0 uses
  br label %.thread195

bb.ao:                                            ; preds = %bb.al
  %i.dj = call i64 @rb_str_cat(i64 noundef %2, ptr noundef nonnull @.str.39, i64 noundef 9) #17 ; 0 uses
  br label %.thread195

bb.ap:                                            ; preds = %bb.al
  %i.dk = call i64 @rb_str_cat(i64 noundef %2, ptr noundef nonnull @.str.40, i64 noundef 9) #17 ; 0 uses
  br label %.thread195

bb.aq:                                            ; preds = %bb.al
  %i.dl = call i64 @rb_str_cat(i64 noundef %2, ptr noundef nonnull @.str.41, i64 noundef 8) #17 ; 0 uses
  br label %.thread195

bb.ar:                                            ; preds = %bb.al
  %i.dm = zext i8 %i.dg to i32
  %i.dn = call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %2, ptr noundef nonnull @.str.42, i32 noundef %i.dm) #17 ; 0 uses
  br label %.thread195

.thread195:                                       ; preds = %bb.ae, %bb.af, %bb.aj, %bb.am, %bb.ao, %bb.aq, %bb.ar, %bb.ap, %bb.an, %bb.ak
  %.3 = phi ptr [ @.str.32, %bb.am ], [ @.str.32, %bb.an ], [ @.str.32, %bb.ao ], [ @.str.32, %bb.ap ], [ @.str.32, %bb.aq ], [ @.str.32, %bb.ar ], [ @.str.32, %bb.ak ], [ @.str.32, %bb.aj ], [ @.str.32, %bb.af ], [ @.str.30, %bb.ae ] ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 11 ; 4 uses
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !108
  %i.dq = zext i8 %i.dp to i32
  %i.dr = add nuw nsw i32 %i.dq, 12
  %.not = icmp eq i32 %1, %i.dr
  br i1 %.not, label %bb.au, label %bb.as

bb.as:                                            ; preds = %.thread195
  %i.ds = call i64 @rb_str_cat_cstr(i64 noundef %2, ptr noundef nonnull %.3) #17 ; 0 uses
  %i.dt = icmp ugt i32 %1, 11
  br i1 %i.dt, label %bb.at, label %.thread199

bb.at:                                            ; preds = %bb.as
  %i.du = load i8, ptr %i.do, align 1, !tbaa !108
  %i.dv = zext i8 %i.du to i32
  %i.dw = call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %2, ptr noundef nonnull @.str.43, i32 noundef %i.dv) #17 ; 0 uses
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %.thread195
  %.4 = phi ptr [ @.str.32, %bb.at ], [ %.3, %.thread195 ] ; 2 uses
  %i.dx = icmp ugt i32 %1, 12
  br i1 %i.dx, label %bb.av, label %.thread202

bb.av:                                            ; preds = %bb.au
  %i.dy = call i64 @rb_str_cat_cstr(i64 noundef %2, ptr noundef nonnull %.4) #17 ; 0 uses
  %i.dz = call i64 @rb_str_cat(i64 noundef %2, ptr noundef nonnull @.str.44, i64 noundef 6) #17 ; 0 uses
  %i.ea = load i8, ptr %i.do, align 1, !tbaa !108 ; 2 uses
  %i.eb = zext i8 %i.ea to i32
  %i.ec = zext i8 %i.ea to i64
  %i.ed = add nuw nsw i64 %i.ec, 12
  %i.ee = icmp samesign ugt i64 %i.ed, %i.e
  %i.ef = add i32 %1, -12
  %spec.select = select i1 %i.ee, i32 %i.ef, i32 %i.eb ; 3 uses
  %.not216 = icmp eq i32 %spec.select, 0
  br i1 %.not216, label %.thread202, label %.lr.ph

.lr.ph:                                           ; preds = %bb.av
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %wide.trip.count = zext i32 %spec.select to i64
  %i.eh = call i64 @rb_str_cat_cstr(i64 noundef %2, ptr noundef nonnull @.str.45) #17 ; 0 uses
  %i.ei = load i8, ptr %i.eg, align 4, !tbaa !46
  %i.ej = zext i8 %i.ei to i32
  %i.ek = call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %2, ptr noundef nonnull @.str.47, i32 noundef %i.ej) #17 ; 0 uses
  %exitcond.peel.not = icmp eq i32 %spec.select, 1
  br i1 %exitcond.peel.not, label %.thread202, label %.peel.next

.peel.next:                                       ; preds = %.lr.ph, %.peel.next
  %indvars.iv = phi i64 [ %indvars.iv.next, %.peel.next ], [ 1, %.lr.ph ] ; 2 uses
  %i.el = call i64 @rb_str_cat_cstr(i64 noundef %2, ptr noundef nonnull @.str.46) #17 ; 0 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.eg, i64 %indvars.iv
  %i.en = load i8, ptr %i.em, align 1, !tbaa !46
  %i.eo = zext i8 %i.en to i32
  %i.ep = call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %2, ptr noundef nonnull @.str.47, i32 noundef %i.eo) #17 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.thread202, label %.peel.next, !llvm.loop !109

.thread202:                                       ; preds = %.peel.next, %.lr.ph, %bb.av, %bb.au
  %.5204 = phi ptr [ %.4, %bb.au ], [ @.str.32, %bb.av ], [ @.str.32, %.lr.ph ], [ @.str.32, %.peel.next ]
  %i.eq = load i8, ptr %i.do, align 1, !tbaa !108
  %i.er = zext i8 %i.eq to i32
  %i.es = add nuw nsw i32 %i.er, 12
  %.not174 = icmp eq i32 %i.es, %1
  br i1 %.not174, label %bb.aw, label %.thread199

.thread199:                                       ; preds = %bb.as, %.thread202
  %.5201 = phi ptr [ %.5204, %.thread202 ], [ @.str.32, %bb.as ]
  %i.et = call i64 @rb_str_cat_cstr(i64 noundef %2, ptr noundef %.5201) #17 ; 0 uses
  %i.eu = call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %2, ptr noundef nonnull @.str.48, i32 noundef %1, i32 noundef 20) #17 ; 0 uses
  br label %bb.aw

bb.aw:                                            ; preds = %.thread199, %.thread202
  %i.ev = call i64 @rb_str_cat(i64 noundef %2, ptr noundef nonnull @.str.49, i64 noundef 1) #17 ; 0 uses
  br label %.loopexit

bb.ax:                                            ; preds = %bb.e
  %i.ew = zext i16 %i.j to i32
  %i.ex = tail call i64 @rsock_intern_family(i32 noundef %i.ew) #17 ; 2 uses
  %i.ey = icmp eq i64 %i.ex, 0
  br i1 %i.ey, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.ez = load i16, ptr %0, align 8, !tbaa !46
  %i.fa = zext i16 %i.ez to i32
  %i.fb = tail call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %2, ptr noundef nonnull @.str.50, i32 noundef %i.fa) #17 ; 0 uses
  br label %.loopexit

bb.az:                                            ; preds = %bb.ax
  %i.fc = tail call ptr @rb_id2name(i64 noundef %i.ex) #17
  %i.fd = tail call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %2, ptr noundef nonnull @.str.51, ptr noundef %i.fc) #17 ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph215, %bb.ay, %bb.az, %unixsocket_len.exit.a, %bb.ad, %bb.n, %bb.o, %bb.d, %bb.aw, %bb.y, %bb.f, %bb.b
  ret i64 %2
}

declare i64 @rb_str_catf(i64 noundef, ptr noundef, ...) local_unnamed_addr #3

declare i64 @rb_str_cat_cstr(i64 noundef, ptr noundef) local_unnamed_addr #3

declare i64 @rb_str_cat(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare ptr @if_indextoname(i32 noundef, ptr noundef) local_unnamed_addr #1

declare ptr @rb_id2name(i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define i64 @rsock_addrinfo_inspect_sockaddr(i64 noundef %0) #0 {
bb.a:
  %i.a = tail call i64 @rb_str_new_static(ptr noundef nonnull @.str.9, i64 noundef 0) #17 ; 2 uses
  %i.b = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @addrinfo_type) #17 ; 3 uses
  %.not.i.i = icmp eq ptr %i.b, null
end_hunk_0
begin_hunk_1_@make_inspectname:bb.a
  %i.ao = call i64 @rb_fix2int(i64 noundef %1) #17
  %i.ap = trunc i64 %i.ao to i32
  %i.aq = icmp eq i32 %i.an, %i.ap
  br i1 %i.aq, label %.sink.split, label %bb.i

.sink.split:                                      ; preds = %bb.h, %RSTRING_PTR.exit26
  store i64 4, ptr %i.a, align 8, !tbaa !38
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.h, %rbimpl_RB_TYPE_P_fastpath.exit22.thread, %bb.b
  %i.ar = phi i64 [ %1, %rbimpl_RB_TYPE_P_fastpath.exit22.thread ], [ %1, %bb.b ], [ %1, %bb.h ], [ 4, %.sink.split ]
  %.1 = phi i64 [ %.0, %rbimpl_RB_TYPE_P_fastpath.exit22.thread ], [ %0, %bb.b ], [ %.0, %bb.h ], [ %.0, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %bb.i
  %i.as = phi i64 [ %i.ar, %bb.i ], [ %1, %bb.a ] ; 6 uses
  %.2 = phi i64 [ %.1, %bb.i ], [ %0, %bb.a ]     ; 4 uses
  %i.at = icmp eq i64 %.2, 0
  %i.au = and i64 %.2, 7
  %i.av = icmp ne i64 %i.au, 0
  %i.aw = or i1 %i.at, %i.av
  br i1 %i.aw, label %rbimpl_RB_TYPE_P_fastpath.exit19.thread, label %rbimpl_RB_TYPE_P_fastpath.exit19

rbimpl_RB_TYPE_P_fastpath.exit19:                 ; preds = %bb.j
  %i.ax = inttoptr i64 %.2 to ptr
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !44
  %i.az = and i64 %i.ay, 31
  %i.ba = icmp eq i64 %i.az, 5
  br i1 %i.ba, label %bb.k, label %rbimpl_RB_TYPE_P_fastpath.exit19.thread

bb.k:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit19
  %i.bb = call i64 @rb_str_dup(i64 noundef %.2) #17
  br label %rbimpl_RB_TYPE_P_fastpath.exit19.thread

rbimpl_RB_TYPE_P_fastpath.exit19.thread:          ; preds = %bb.j, %rbimpl_RB_TYPE_P_fastpath.exit19, %bb.k
  %.014 = phi i64 [ %i.bb, %bb.k ], [ 4, %rbimpl_RB_TYPE_P_fastpath.exit19 ], [ 4, %bb.j ] ; 8 uses
  %i.bc = icmp eq i64 %i.as, 0
  %i.bd = and i64 %i.as, 7
  %i.be = icmp ne i64 %i.bd, 0
  %i.bf = or i1 %i.bc, %i.be
  br i1 %i.bf, label %rbimpl_RB_TYPE_P_fastpath.exit.thread, label %rbimpl_RB_TYPE_P_fastpath.exit

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %rbimpl_RB_TYPE_P_fastpath.exit19.thread
  %i.bg = inttoptr i64 %i.as to ptr
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !44
  %i.bi = and i64 %i.bh, 31
  %i.bj = icmp eq i64 %i.bi, 5
  br i1 %i.bj, label %bb.l, label %rbimpl_RB_TYPE_P_fastpath.exit.thread

bb.l:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit
  %i.bk = icmp eq i64 %.014, 4
  %i.bl = call ptr @rb_string_value_cstr(ptr noundef nonnull %i.a) #17 ; 2 uses
  br i1 %i.bk, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bm = call i64 (ptr, ...) @rb_sprintf(ptr noundef nonnull @.str.111, ptr noundef %i.bl) #17
  br label %bb.s

bb.n:                                             ; preds = %bb.l
  %i.bn = call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %.014, ptr noundef nonnull @.str.111, ptr noundef %i.bl) #17 ; 0 uses
  br label %.thread

rbimpl_RB_TYPE_P_fastpath.exit.thread:            ; preds = %rbimpl_RB_TYPE_P_fastpath.exit19.thread, %rbimpl_RB_TYPE_P_fastpath.exit
  %i.bo = trunc i64 %i.as to i1
  br i1 %i.bo, label %bb.o, label %bb.s

bb.o:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread
  %i.bp = call i64 @rb_fix2int(i64 noundef %i.as) #17
  %i.bq = and i64 %i.bp, 4294967295
  %.not17 = icmp eq i64 %i.bq, 0
  br i1 %.not17, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.br = icmp eq i64 %.014, 4
  %i.bs = call i64 @rb_fix2int(i64 noundef %i.as) #17
  %i.bt = trunc i64 %i.bs to i32                  ; 2 uses
  br i1 %i.br, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bu = call i64 (ptr, ...) @rb_sprintf(ptr noundef nonnull @.str.19, i32 noundef %i.bt) #17
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.bv = call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %.014, ptr noundef nonnull @.str.19, i32 noundef %i.bt) #17 ; 0 uses
  br label %.thread

bb.s:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread, %bb.o, %bb.q, %bb.m
  %.115 = phi i64 [ %i.bm, %bb.m ], [ %.014, %bb.o ], [ %i.bu, %bb.q ], [ %.014, %rbimpl_RB_TYPE_P_fastpath.exit.thread ] ; 2 uses
  %i.bw = icmp eq i64 %.115, 4
  br i1 %i.bw, label %bb.t, label %.thread

.thread:                                          ; preds = %bb.r, %bb.n, %bb.s
  %.11532 = phi i64 [ %.115, %bb.s ], [ %.014, %bb.n ], [ %.014, %bb.r ] ; 2 uses
  call void @rb_obj_freeze_inline(i64 noundef %.11532) #17
  br label %bb.t

bb.t:                                             ; preds = %.thread, %bb.s
  %.11533 = phi i64 [ %.11532, %.thread ], [ 4, %bb.s ]
  ret i64 %.11533
}

declare void @rb_obj_freeze_inline(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #6

declare ptr @rb_obj_classname(i64 noundef) local_unnamed_addr #3

declare i64 @rsock_intern_protocol_family(i32 noundef) local_unnamed_addr #3

declare i64 @rsock_intern_socktype(i32 noundef) local_unnamed_addr #3

declare i64 @rsock_intern_ipproto(i32 noundef) local_unnamed_addr #3

declare i32 @rb_get_kwargs(i64 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc i64 @addrinfo_firstonly_new(i64 noundef %0, i64 noundef %1, i64 noundef range(i64 1, 0) %2, i64 noundef range(i64 1, 0) %3, i64 noundef range(i64 1, 0) %4) unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc ptr @call_getaddrinfo(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef 1, i32 noundef 0, i64 noundef 4) ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.c = tail call fastcc i64 @make_inspectname(i64 noundef %0, i64 noundef %1, ptr noundef %i.b)
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !14   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !75   ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i64 @rb_str_new_cstr(ptr noundef nonnull %i.f) #17 ; 2 uses
  tail call void @rb_obj_freeze_inline(i64 noundef %i.g) #17
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !14
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = phi ptr [ %.pre, %bb.b ], [ %i.d, %bb.a ] ; 5 uses
  %.0 = phi i64 [ %i.g, %bb.b ], [ 4, %bb.a ]
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !19
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.l = load i32, ptr %i.k, align 8, !tbaa !74
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !68
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.p = load i32, ptr %i.o, align 8, !tbaa !49
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.r = load i32, ptr %i.q, align 4, !tbaa !69
  %i.s = tail call i64 @rsock_addrinfo_new(ptr noundef %i.j, i32 noundef %i.l, i32 noundef %i.n, i32 noundef %i.p, i32 noundef %i.r, i64 noundef %.0, i64 noundef %i.c)
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.u = load i32, ptr %i.t, align 8, !tbaa !10
  %.not.i = icmp eq i32 %i.u, 0
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !14   ; 3 uses
  %.not11.i = icmp eq ptr %i.v, null              ; 2 uses
  br i1 %.not.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  br i1 %.not11.i, label %rb_freeaddrinfo.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @freeaddrinfo(ptr noundef nonnull %i.v) #17
  br label %rb_freeaddrinfo.exit

bb.f:                                             ; preds = %bb.c
  br i1 %.not11.i, label %rb_freeaddrinfo.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.i
  %.014.i = phi ptr [ %i.x, %.lr.ph.i ], [ %i.v, %bb.f ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.014.i, i64 40
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !15   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.014.i, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !19
  tail call void @ruby_xfree(ptr noundef %i.z) #17
  tail call void @ruby_xfree(ptr noundef nonnull %.014.i) #17
  %.not12.i = icmp eq ptr %i.x, null
  br i1 %.not12.i, label %rb_freeaddrinfo.exit, label %.lr.ph.i, !llvm.loop !20

rb_freeaddrinfo.exit:                             ; preds = %.lr.ph.i, %bb.d, %bb.e, %bb.f
  tail call void @ruby_xfree(ptr noundef nonnull %i.a) #17
  ret i64 %i.s
}

declare void @rb_ary_store(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare i64 @rb_convert_type(i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @rsock_socktype_to_int(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @rsock_ipproto_to_int(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nounwind }
attributes #18 = { nounwind allocsize(0) }
attributes #19 = { noreturn nounwind }
attributes #20 = { nounwind willreturn memory(read) }
attributes #21 = { nounwind allocsize(0,1) }
attributes #22 = { cold noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !7, i64 8}
!11 = !{!"rb_addrinfo", !12, i64 0, !7, i64 8}
!12 = !{!"p1 _ZTS8addrinfo", !13, i64 0}
!13 = !{!"any pointer", !8, i64 0}
!14 = !{!11, !12, i64 0}
!15 = !{!16, !12, i64 40}
!16 = !{!"addrinfo", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !17, i64 24, !18, i64 32, !12, i64 40}
!17 = !{!"p1 _ZTS8sockaddr", !13, i64 0}
!18 = !{!"p1 omnipotent char", !13, i64 0}
!19 = !{!16, !17, i64 24}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.mustprogress"}
!22 = distinct !{!22, !21}
!23 = !{!24, !17, i64 0}
!24 = !{!"getnameinfo_arg", !17, i64 0, !7, i64 8, !7, i64 12, !18, i64 16, !25, i64 24, !18, i64 32, !25, i64 40, !7, i64 48, !7, i64 52, !7, i64 56, !7, i64 60, !7, i64 64, !8, i64 72, !8, i64 112}
!25 = !{!"long", !8, i64 0}
!26 = !{!24, !7, i64 8}
!27 = !{!24, !18, i64 16}
!28 = !{!24, !25, i64 24}
!29 = !{!24, !18, i64 32}
!30 = !{!24, !25, i64 40}
!31 = !{!24, !7, i64 12}
!32 = !{!24, !7, i64 56}
!33 = !{!24, !7, i64 64}
!34 = !{!24, !7, i64 60}
!35 = !{!24, !7, i64 48}
!36 = !{!24, !7, i64 52}
!37 = distinct !{!37, !21}
!38 = !{!25, !25, i64 0}
!39 = !{!40, !41, i64 0}
!40 = !{!"sockaddr_in", !41, i64 0, !41, i64 2, !42, i64 4, !8, i64 8}
!41 = !{!"short", !8, i64 0}
!42 = !{!"in_addr", !7, i64 0}
!43 = !{!40, !7, i64 4}
!44 = !{!45, !25, i64 0}
!45 = !{!"RBasic", !25, i64 0, !25, i64 8}
!46 = !{!8, !8, i64 0}
!47 = !{!48, !25, i64 16}
!48 = !{!"RString", !45, i64 0, !25, i64 16, !8, i64 24}
!49 = !{!16, !7, i64 8}
!50 = !{!18, !18, i64 0}
!51 = !{!16, !7, i64 0}
!52 = !{!12, !12, i64 0}
!53 = distinct !{!53, !21}
!54 = distinct !{!54, !21}
!55 = !{!56, !18, i64 0}
!56 = !{!"getaddrinfo_arg", !18, i64 0, !18, i64 8, !16, i64 16, !12, i64 64, !7, i64 72, !7, i64 76, !7, i64 80, !7, i64 84, !7, i64 88, !7, i64 92, !8, i64 96, !8, i64 136, !7, i64 184}
!57 = !{!56, !18, i64 8}
!58 = !{i64 0, i64 4, !6, i64 4, i64 4, !6, i64 8, i64 4, !6, i64 12, i64 4, !6, i64 16, i64 4, !6, i64 24, i64 8, !59, i64 32, i64 8, !50, i64 40, i64 8, !52}
!59 = !{!17, !17, i64 0}
!60 = !{!56, !12, i64 64}
!61 = !{!56, !7, i64 184}
!62 = !{!56, !7, i64 84}
!63 = !{!56, !7, i64 72}
!64 = !{!56, !7, i64 76}
!65 = !{!56, !7, i64 88}
!66 = !{!56, !7, i64 92}
!67 = !{!56, !7, i64 80}
!68 = !{!16, !7, i64 4}
!69 = !{!16, !7, i64 12}
!70 = !{!71, !41, i64 0}
!71 = !{!"sockaddr_in6", !41, i64 0, !41, i64 2, !7, i64 4, !72, i64 8, !7, i64 24}
!72 = !{!"in6_addr", !8, i64 0}
!73 = !{!71, !41, i64 2}
!74 = !{!16, !7, i64 16}
!75 = !{!16, !18, i64 32}
!76 = !{!40, !41, i64 2}
!77 = !{!78, !41, i64 0}
!78 = !{!"sockaddr", !41, i64 0, !8, i64 2}
!79 = distinct !{null}
!80 = distinct !{!80, !21}
!81 = !{!82, !25, i64 0}
!82 = !{!"hostent_arg", !25, i64 0, !83, i64 8, !13, i64 16}
!83 = !{!"p1 _ZTS11rb_addrinfo", !13, i64 0}
!84 = !{!82, !83, i64 8}
!85 = !{!82, !13, i64 16}
!86 = !{!87, !88, i64 8}
!87 = !{!"hostent", !18, i64 0, !88, i64 8, !7, i64 16, !7, i64 20, !88, i64 24}
!88 = !{!"p2 omnipotent char", !89, i64 0}
!89 = !{!"any p2 pointer", !13, i64 0}
!90 = distinct !{!90, !21}
!91 = distinct !{!91, !21}
!92 = !{!93, !25, i64 0}
!93 = !{!"", !25, i64 0, !25, i64 8, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !8, i64 32}
!94 = !{!93, !25, i64 8}
!95 = !{!96, !13, i64 32}
!96 = !{!"RData", !45, i64 0, !13, i64 16, !13, i64 24, !13, i64 32}
!97 = !{!93, !7, i64 28}
!98 = !{!93, !7, i64 16}
!99 = !{!93, !7, i64 20}
!100 = !{!93, !7, i64 24}
!101 = distinct !{!101, !21}
!102 = distinct !{!102, !21}
!103 = !{!104, !41, i64 2}
!104 = !{!"sockaddr_ll", !41, i64 0, !41, i64 2, !7, i64 4, !41, i64 8, !8, i64 10, !8, i64 11, !8, i64 12}
!105 = !{!104, !7, i64 4}
!106 = !{!104, !41, i64 8}
!107 = !{!104, !8, i64 10}
!108 = !{!104, !8, i64 11}
!109 = distinct !{!109, !21, !110}
!110 = !{!"llvm.loop.peeled.count", i32 1}
!111 = !{!112, !113, i64 16}
!112 = !{!"RFile", !45, i64 0, !113, i64 16}
!113 = !{!"p1 _ZTS5rb_io", !13, i64 0}
!114 = !{!115, !7, i64 16}
!115 = !{!"rb_io", !25, i64 0, !116, i64 8, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !25, i64 32, !13, i64 40, !117, i64 48, !117, i64 68, !25, i64 88, !118, i64 96, !120, i64 128, !117, i64 136, !120, i64 160, !25, i64 168, !7, i64 176, !7, i64 180, !25, i64 184, !25, i64 192, !25, i64 200, !121, i64 208, !124, i64 224, !25, i64 232, !125, i64 240}
!116 = !{!"p1 _ZTS8_IO_FILE", !13, i64 0}
!117 = !{!"rb_io_internal_buffer", !18, i64 0, !7, i64 8, !7, i64 12, !7, i64 16}
!118 = !{!"rb_io_encoding", !119, i64 0, !119, i64 8, !7, i64 16, !25, i64 24}
!119 = !{!"p1 _ZTS18OnigEncodingTypeST", !13, i64 0}
!120 = !{!"p1 _ZTS10rb_econv_t", !13, i64 0}
!121 = !{!"ccan_list_head", !122, i64 0}
!122 = !{!"ccan_list_node", !123, i64 0, !123, i64 8}
!123 = !{!"p1 _ZTS14ccan_list_node", !13, i64 0}
!124 = !{!"p1 _ZTS27rb_execution_context_struct", !13, i64 0}
!125 = !{!"long long", !8, i64 0}
!126 = !{!127, !127, i64 0}
!127 = !{!"p1 _ZTS32fast_fallback_getaddrinfo_shared", !13, i64 0}
!128 = !{!129, !127, i64 72}
!129 = !{!"fast_fallback_getaddrinfo_entry", !7, i64 0, !7, i64 4, !7, i64 8, !16, i64 16, !12, i64 64, !127, i64 72, !7, i64 80, !25, i64 88, !7, i64 96}
!130 = !{!129, !25, i64 88}
!131 = !{!132, !25, i64 0}
!132 = !{!"timespec", !25, i64 0, !25, i64 8}
!133 = !{!132, !25, i64 8}
!134 = !{!129, !7, i64 96}
!135 = !{!129, !12, i64 64}
!136 = !{!129, !7, i64 4}
!137 = !{!129, !7, i64 0}
!138 = !{!129, !7, i64 80}
!139 = !{!129, !7, i64 8}
!140 = distinct !{!140, !21}
!141 = !{!142, !41, i64 0}
!142 = !{!"sockaddr_un", !41, i64 0, !8, i64 2}
!143 = distinct !{!143, !21}
!144 = distinct !{!144, !21}
end_hunk_1
