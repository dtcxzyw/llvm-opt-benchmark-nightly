Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/ifaddr?download=true
inline.NumInlined: 33
inline.NumDeleted: 19
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@ifaddr_ifindex:bb.a

bb.c:                                             ; preds = %get_ifaddrs.exit
  %i.i = load i64, ptr @rb_eArgError, align 8, !tbaa !10
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !16
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.i, ptr noundef nonnull @.str.36, ptr noundef %i.j) #9
  unreachable

bb.d:                                             ; preds = %get_ifaddrs.exit
  %i.k = zext i32 %i.g to i64
  %i.l = shl nuw nsw i64 %i.k, 1
  %i.m = or disjoint i64 %i.l, 1
  ret i64 %i.m
}

; Function Attrs: nounwind uwtable
define internal range(i64 1, 8589934592) i64 @ifaddr_flags(i64 noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @ifaddr_type) #8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %bb.b, label %get_ifaddrs.exit

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr @rb_eTypeError, align 8, !tbaa !10
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.b, ptr noundef nonnull @.str.16) #9
  unreachable

get_ifaddrs.exit:                                 ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !12
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load i32, ptr %i.e, align 8, !tbaa !20
  %i.g = zext i32 %i.f to i64
  %i.h = shl nuw nsw i64 %i.g, 1
  %i.i = or disjoint i64 %i.h, 1
  ret i64 %i.i
}

; Function Attrs: nounwind uwtable
define internal i64 @ifaddr_addr(i64 noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @ifaddr_type) #8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %bb.b, label %get_ifaddrs.exit

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr @rb_eTypeError, align 8, !tbaa !10
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.b, ptr noundef nonnull @.str.16) #9
  unreachable

get_ifaddrs.exit:                                 ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !12
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !21   ; 3 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %get_ifaddrs.exit
  %i.g = tail call i32 @rsock_sockaddr_len(ptr noundef nonnull %i.f) #8
  %i.h = tail call i64 @rsock_sockaddr_obj(ptr noundef nonnull %i.f, i32 noundef %i.g) #8
  br label %bb.d

bb.d:                                             ; preds = %get_ifaddrs.exit, %bb.c
  %.0 = phi i64 [ %i.h, %bb.c ], [ 4, %get_ifaddrs.exit ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define internal i64 @ifaddr_netmask(i64 noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @ifaddr_type) #8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %bb.b, label %get_ifaddrs.exit

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr @rb_eTypeError, align 8, !tbaa !10
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.b, ptr noundef nonnull @.str.16) #9
  unreachable

get_ifaddrs.exit:                                 ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !12
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !22   ; 3 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %get_ifaddrs.exit
  %i.g = tail call i32 @rsock_sockaddr_len(ptr noundef nonnull %i.f) #8
  %i.h = tail call i64 @rsock_sockaddr_obj(ptr noundef nonnull %i.f, i32 noundef %i.g) #8
  br label %bb.d

bb.d:                                             ; preds = %get_ifaddrs.exit, %bb.c
  %.0 = phi i64 [ %i.h, %bb.c ], [ 4, %get_ifaddrs.exit ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define internal i64 @ifaddr_broadaddr(i64 noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @ifaddr_type) #8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %bb.b, label %get_ifaddrs.exit

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr @rb_eTypeError, align 8, !tbaa !10
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.b, ptr noundef nonnull @.str.16) #9
  unreachable

get_ifaddrs.exit:                                 ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !12   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load i32, ptr %i.e, align 8, !tbaa !20
  %i.g = and i32 %i.f, 2
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %get_ifaddrs.exit
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !23   ; 3 uses
  %.not6 = icmp eq ptr %i.i, null
  br i1 %.not6, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = tail call i32 @rsock_sockaddr_len(ptr noundef nonnull %i.i) #8
  %i.k = tail call i64 @rsock_sockaddr_obj(ptr noundef nonnull %i.i, i32 noundef %i.j) #8
  br label %bb.e

bb.e:                                             ; preds = %get_ifaddrs.exit, %bb.c, %bb.d
  %.0 = phi i64 [ %i.k, %bb.d ], [ 4, %bb.c ], [ 4, %get_ifaddrs.exit ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define internal i64 @ifaddr_dstaddr(i64 noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @ifaddr_type) #8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %bb.b, label %get_ifaddrs.exit

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr @rb_eTypeError, align 8, !tbaa !10
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.b, ptr noundef nonnull @.str.16) #9
  unreachable

get_ifaddrs.exit:                                 ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !12   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load i32, ptr %i.e, align 8, !tbaa !20
  %i.g = and i32 %i.f, 16
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %get_ifaddrs.exit
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !23   ; 3 uses
  %.not6 = icmp eq ptr %i.i, null
  br i1 %.not6, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = tail call i32 @rsock_sockaddr_len(ptr noundef nonnull %i.i) #8
  %i.k = tail call i64 @rsock_sockaddr_obj(ptr noundef nonnull %i.i, i32 noundef %i.j) #8
  br label %bb.e

bb.e:                                             ; preds = %get_ifaddrs.exit, %bb.c, %bb.d
  %.0 = phi i64 [ %i.k, %bb.d ], [ 4, %bb.c ], [ 4, %get_ifaddrs.exit ]
  ret i64 %.0
}

declare extern_weak void @rb_define_singleton_method(i64 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i64 @socket_s_getifaddrs(i64 %0) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.b = call i32 @getifaddrs(ptr noundef nonnull %i.a) #8
  %i.c = icmp eq i32 %i.b, -1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = call ptr @rb_errno_ptr() #8
  %i.e = load i32, ptr %i.d, align 4, !tbaa !6
  call void @rb_syserr_fail(i32 noundef %i.e, ptr noundef nonnull @.str.9) #9
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !24   ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.d, label %.preheader.i

bb.d:                                             ; preds = %bb.c
  %i.g = call i64 @rb_ary_new() #8
  br label %rsock_getifaddrs.exit

.preheader.i:                                     ; preds = %bb.c, %.preheader.i
  %indvar = phi i64 [ %indvar.next, %.preheader.i ], [ 0, %bb.c ] ; 2 uses
  %indvars.iv47.i = phi i32 [ %indvars.iv.next48.i, %.preheader.i ], [ 1, %bb.c ] ; 2 uses
  %.03441.i = phi ptr [ %i.i, %.preheader.i ], [ %i.f, %bb.c ]
  %.03740.i = phi i32 [ %i.h, %.preheader.i ], [ 0, %bb.c ] ; 2 uses
  %i.h = add nuw nsw i32 %.03740.i, 1             ; 3 uses
  %i.i = load ptr, ptr %.03441.i, align 8, !tbaa !25 ; 2 uses
  %.not39.i = icmp eq ptr %i.i, null
  %indvars.iv.next48.i = add nuw i32 %indvars.iv47.i, 1
  %indvar.next = add i64 %indvar, 1
  br i1 %.not39.i, label %bb.e, label %.preheader.i, !llvm.loop !26

bb.e:                                             ; preds = %.preheader.i
  %i.j = load i64, ptr @rb_cSockIfaddr, align 8, !tbaa !10
  %i.k = call i64 @rb_data_typed_object_wrap(i64 noundef %i.j, ptr noundef null, ptr noundef nonnull @ifaddr_type) #8 ; 2 uses
  %i.l = zext nneg i32 %i.h to i64                ; 2 uses
  %i.m = shl nuw nsw i64 %i.l, 4
  %i.n = or disjoint i64 %i.m, 8
  %i.o = call noalias nonnull ptr @ruby_xmalloc(i64 noundef %i.n) #10 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  store i32 %i.h, ptr %i.p, align 4, !tbaa !28
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 7 uses
  %wide.trip.count.i = zext i32 %indvars.iv47.i to i64 ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.r = icmp ult i64 %indvar, 3
  br i1 %i.r, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.e
  %unroll_iter = and i64 %wide.trip.count.i, 4294967292
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.new
  %indvars.iv.i = phi i64 [ 0, %.new ], [ %indvars.iv.next.i.3, %bb.f ] ; 6 uses
  %.1.in43.i = phi ptr [ %i.a, %.new ], [ %.1.i.3, %bb.f ]
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.f ]
  %.1.i = load ptr, ptr %.1.in43.i, align 8, !tbaa !24 ; 2 uses
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %indvars.iv.i ; 2 uses
  %i.t = trunc nuw nsw i64 %indvars.iv.i to i32
  store i32 %i.t, ptr %i.s, align 8, !tbaa !30
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %.1.i, ptr %i.u, align 8, !tbaa !12
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %.1.i.1 = load ptr, ptr %.1.i, align 8, !tbaa !24 ; 2 uses
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %indvars.iv.next.i ; 2 uses
  %i.w = trunc nuw nsw i64 %indvars.iv.next.i to i32
  store i32 %i.w, ptr %i.v, align 8, !tbaa !30
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %.1.i.1, ptr %i.x, align 8, !tbaa !12
  %indvars.iv.next.i.1 = or disjoint i64 %indvars.iv.i, 2 ; 2 uses
  %.1.i.2 = load ptr, ptr %.1.i.1, align 8, !tbaa !24 ; 2 uses
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %indvars.iv.next.i.1 ; 2 uses
  %i.z = trunc nuw nsw i64 %indvars.iv.next.i.1 to i32
  store i32 %i.z, ptr %i.y, align 8, !tbaa !30
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %.1.i.2, ptr %i.aa, align 8, !tbaa !12
  %indvars.iv.next.i.2 = or disjoint i64 %indvars.iv.i, 3 ; 2 uses
  %.1.i.3 = load ptr, ptr %.1.i.2, align 8, !tbaa !24 ; 3 uses
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %indvars.iv.next.i.2 ; 2 uses
  %i.ac = trunc nuw nsw i64 %indvars.iv.next.i.2 to i32
  store i32 %i.ac, ptr %i.ab, align 8, !tbaa !30
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %.1.i.3, ptr %i.ad, align 8, !tbaa !12
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.unr-lcssa, label %bb.f, !llvm.loop !31

.unr-lcssa:                                       ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %bb.e
  %indvars.iv.i.epil.init = phi i64 [ 0, %bb.e ], [ %indvars.iv.next.i.3, %.unr-lcssa ]
  %.1.in43.i.epil.init = phi ptr [ %i.a, %bb.e ], [ %.1.i.3, %.unr-lcssa ]
  %lcmp.mod1 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod1)
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.epil, %bb.g ] ; 3 uses
  %.1.in43.i.epil = phi ptr [ %.1.in43.i.epil.init, %.epil.preheader ], [ %.1.i.epil, %bb.g ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.g ]
  %.1.i.epil = load ptr, ptr %.1.in43.i.epil, align 8, !tbaa !24 ; 2 uses
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %indvars.iv.i.epil ; 2 uses
  %i.af = trunc nuw nsw i64 %indvars.iv.i.epil to i32
  store i32 %i.af, ptr %i.ae, align 8, !tbaa !30
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr %.1.i.epil, ptr %i.ag, align 8, !tbaa !12
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.g, !llvm.loop !32

.epilog-lcssa:                                    ; preds = %bb.g, %.unr-lcssa
  %i.ah = inttoptr i64 %i.k to ptr
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  store ptr %i.q, ptr %i.ai, align 8, !tbaa !34
  store i32 1, ptr %i.o, align 8, !tbaa !37
  %i.aj = call i64 @rb_ary_new_capa(i64 noundef %i.l) #8 ; 4 uses
  %i.ak = call i64 @rb_ary_push(i64 noundef %i.aj, i64 noundef %i.k) #8 ; 0 uses
  %.not45.i = icmp eq i32 %.03740.i, 0
  br i1 %.not45.i, label %rsock_getifaddrs.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.epilog-lcssa, %.lr.ph.i
  %indvars.iv49.i = phi i64 [ %indvars.iv.next50.i, %.lr.ph.i ], [ 1, %.epilog-lcssa ] ; 2 uses
  %i.al = load i64, ptr @rb_cSockIfaddr, align 8, !tbaa !10
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %indvars.iv49.i
  %i.an = call i64 @rb_data_typed_object_wrap(i64 noundef %i.al, ptr noundef nonnull %i.am, ptr noundef nonnull @ifaddr_type) #8
  %i.ao = load i32, ptr %i.o, align 8, !tbaa !37
  %i.ap = add nsw i32 %i.ao, 1
  store i32 %i.ap, ptr %i.o, align 8, !tbaa !37
  %i.aq = call i64 @rb_ary_push(i64 noundef %i.aj, i64 noundef %i.an) #8 ; 0 uses
  %indvars.iv.next50.i = add nuw nsw i64 %indvars.iv49.i, 1 ; 2 uses
  %exitcond54.not.i = icmp eq i64 %indvars.iv.next50.i, %wide.trip.count.i
  br i1 %exitcond54.not.i, label %rsock_getifaddrs.exit, label %.lr.ph.i, !llvm.loop !38

rsock_getifaddrs.exit:                            ; preds = %.lr.ph.i, %bb.d, %.epilog-lcssa
  %.0.i = phi i64 [ %i.g, %bb.d ], [ %i.aj, %.epilog-lcssa ], [ %i.aj, %.lr.ph.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i64 %.0.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare i64 @rb_str_append(i64 noundef, i64 noundef) local_unnamed_addr #1

declare i64 @rb_class_name(i64 noundef) local_unnamed_addr #1

declare i64 @rb_str_cat_cstr(i64 noundef, ptr noundef) local_unnamed_addr #1

declare i64 @rsock_inspect_sockaddr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

declare i32 @rsock_sockaddr_len(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: noreturn
declare void @rb_raise(i64 noundef, ptr noundef, ...) local_unnamed_addr #3

declare ptr @rb_check_typeddata(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @ifaddr_free(ptr noundef %0) #0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !30
  %i.b = sub nsw i32 0, %i.a
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr inbounds [16 x i8], ptr %0, i64 %i.c ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -8 ; 3 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !37
  %i.g = add nsw i32 %i.f, -1                     ; 2 uses
  store i32 %i.g, ptr %i.e, align 8, !tbaa !37
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !12
  tail call void @freeifaddrs(ptr noundef %i.j) #8
  tail call void @ruby_xfree(ptr noundef nonnull %i.e) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i64 64, 81) i64 @ifaddr_memsize(ptr nofree noundef readonly captures(none) %0) #4 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !30
  %i.b = icmp eq i32 %i.a, 0
  %spec.select = select i1 %i.b, i64 80, i64 64
  ret i64 %spec.select
}

; Function Attrs: nounwind
declare void @freeifaddrs(ptr noundef) local_unnamed_addr #5

declare void @ruby_xfree(ptr noundef) local_unnamed_addr #1

declare i64 @rb_str_new_static(ptr noundef, i64 noundef) local_unnamed_addr #1

declare i64 @rb_str_cat(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare i64 @rb_str_catf(i64 noundef, ptr noundef, ...) local_unnamed_addr #1

declare i64 @rb_str_new_cstr(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @if_nametoindex(ptr noundef) local_unnamed_addr #5

declare i64 @rsock_sockaddr_obj(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @getifaddrs(ptr noundef) local_unnamed_addr #5

declare ptr @rb_errno_ptr() local_unnamed_addr #1

; Function Attrs: noreturn
declare void @rb_syserr_fail(i32 noundef, ptr noundef) local_unnamed_addr #3

declare i64 @rb_ary_new() local_unnamed_addr #1

declare i64 @rb_data_typed_object_wrap(i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: allocsize(0)
declare noalias nonnull ptr @ruby_xmalloc(i64 noundef) local_unnamed_addr #6

declare i64 @rb_ary_new_capa(i64 noundef) local_unnamed_addr #1

declare i64 @rb_ary_push(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nounwind }
attributes #9 = { noreturn nounwind }
attributes #10 = { nounwind allocsize(0) }

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
!10 = !{!11, !11, i64 0}
!11 = !{!"long", !8, i64 0}
!12 = !{!13, !14, i64 8}
!13 = !{!"rb_ifaddr_tag", !7, i64 0, !14, i64 8}
!14 = !{!"p1 _ZTS7ifaddrs", !15, i64 0}
!15 = !{!"any pointer", !8, i64 0}
!16 = !{!17, !18, i64 8}
!17 = !{!"ifaddrs", !14, i64 0, !18, i64 8, !7, i64 16, !19, i64 24, !19, i64 32, !8, i64 40, !15, i64 48}
!18 = !{!"p1 omnipotent char", !15, i64 0}
!19 = !{!"p1 _ZTS8sockaddr", !15, i64 0}
!20 = !{!17, !7, i64 16}
!21 = !{!17, !19, i64 24}
!22 = !{!17, !19, i64 32}
!23 = !{!8, !8, i64 0}
!24 = !{!14, !14, i64 0}
!25 = !{!17, !14, i64 0}
!26 = distinct !{!26, !27}
!27 = !{!"llvm.loop.mustprogress"}
!28 = !{!29, !7, i64 4}
!29 = !{!"rb_ifaddr_root_tag", !7, i64 0, !7, i64 4, !8, i64 8}
!30 = !{!13, !7, i64 0}
!31 = distinct !{!31, !27}
!32 = distinct !{!32, !33}
!33 = !{!"llvm.loop.unroll.disable"}
!34 = !{!35, !15, i64 32}
!35 = !{!"RTypedData", !36, i64 0, !11, i64 16, !11, i64 24, !15, i64 32}
!36 = !{!"RBasic", !11, i64 0, !11, i64 8}
!37 = !{!29, !7, i64 0}
!38 = distinct !{!38, !27}
end_hunk_0
