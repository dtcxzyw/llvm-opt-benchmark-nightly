Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cjson/original/misc_tests?download=true
inline.NumInlined: 403
inline.NumDeleted: 24
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumUnrolled: 16
begin_hunk_0_@parse_value:bb.a
  store ptr %.355.i78, ptr %i.hx, align 8, !tbaa !44
  %i.hy = add nuw i64 %i.hv, 1
  store i64 %i.hy, ptr %i.e, align 8, !tbaa !53
  br label %parse_array.exit

.critedge.i66:                                    ; preds = %bb.ae
  %.not66.i = icmp eq ptr %.052.i, null
  br i1 %.not66.i, label %parse_array.exit, label %.critedge.i66.thread87

.critedge.i66.thread87:                           ; preds = %bb.ai, %bb.ah, %bb.aj, %.critedge.i66
  %.4.i86 = phi ptr [ %.052.i, %.critedge.i66 ], [ %.153.i, %bb.aj ], [ %.153.i, %bb.ah ], [ %.153.i, %bb.ai ]
  tail call void @cJSON_Delete(ptr noundef nonnull %.4.i86), !inline_history !90
  br label %parse_array.exit

bb.am:                                            ; preds = %bb.x
  %i.hz = tail call fastcc i32 @parse_object(ptr noundef %0, ptr noundef %1)
  br label %parse_array.exit

parse_array.exit:                                 ; preds = %bb.x, %bb.ac, %bb.z, %bb.l, %.critedge.i66.thread87, %.critedge.i66, %bb.al, %bb.y, %bb.a, %bb.b, %bb.am, %parse_number.exit, %bb.n, %bb.k, %bb.h, %bb.e
  %.0 = phi i32 [ 0, %bb.a ], [ 1, %bb.e ], [ 1, %bb.h ], [ 1, %bb.k ], [ %i.ab, %bb.n ], [ %.051.i, %parse_number.exit ], [ 0, %bb.l ], [ %i.hz, %bb.am ], [ 0, %bb.b ], [ 0, %bb.x ], [ 0, %bb.y ], [ 1, %bb.al ], [ 0, %.critedge.i66.thread87 ], [ 0, %.critedge.i66 ], [ 0, %bb.z ], [ 0, %bb.ac ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @buffer_skip_whitespace(ptr nofree noundef captures(address_is_null) %0) unnamed_addr #14 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !49     ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !53   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !50   ; 4 uses
  %i.h = icmp ult i64 %i.e, %i.g
  br i1 %i.h, label %.lr.ph, label %bb.e

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %i.i = phi i64 [ %i.m, %bb.d ], [ %i.e, %bb.c ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !54
  %i.l = icmp ult i8 %i.k, 33
  br i1 %i.l, label %bb.d, label %.critedge

bb.d:                                             ; preds = %.lr.ph
  %i.m = add i64 %i.i, 1                          ; 3 uses
  store i64 %i.m, ptr %i.d, align 8, !tbaa !53
  %exitcond.not = icmp eq i64 %i.m, %i.g
  br i1 %exitcond.not, label %.critedge.thread, label %.lr.ph

.critedge:                                        ; preds = %.lr.ph
  %i.n = icmp eq i64 %i.i, %i.g
  br i1 %i.n, label %.critedge.thread, label %bb.e

.critedge.thread:                                 ; preds = %bb.d, %.critedge
  %i.o = add i64 %i.g, -1
  store i64 %i.o, ptr %i.d, align 8, !tbaa !53
  br label %bb.e

bb.e:                                             ; preds = %.critedge, %.critedge.thread, %bb.c, %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local ptr @cJSON_Parse(ptr noundef %0) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %cJSON_ParseWithOpts.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #30
  %i.c = add i64 %i.b, 1
  %i.d = tail call ptr @cJSON_ParseWithLengthOpts(ptr noundef nonnull %0, i64 noundef %i.c, ptr noundef null, i32 noundef 0)
  br label %cJSON_ParseWithOpts.exit

cJSON_ParseWithOpts.exit:                         ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.d, %bb.b ], [ null, %bb.a ]
  ret ptr %.0.i
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local ptr @cJSON_ParseWithLength(ptr noundef %0, i64 noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = tail call ptr @cJSON_ParseWithLengthOpts(ptr noundef %0, i64 noundef %1, ptr noundef null, i32 noundef 0)
  ret ptr %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local ptr @cJSON_Print(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = tail call fastcc ptr @print(ptr noundef %0, i32 noundef 1)
  ret ptr %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc ptr @print(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #8 {
bb.a:
  %2 = alloca [1 x %struct.printbuffer], align 16 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  %i.b = load ptr, ptr @global_hooks, align 8, !tbaa !40
  %i.c = tail call ptr %i.b(i64 noundef 256) #29  ; 2 uses
  store ptr %i.c, ptr %2, align 16, !tbaa !66
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 256, ptr %i.d, align 8, !tbaa !67
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 36
  store i32 %1, ptr %i.e, align 4, !tbaa !68
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) @global_hooks, i64 24, i1 false), !tbaa.struct !52
  %i.g = icmp eq ptr %i.c, null
  br i1 %i.g, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = call fastcc i32 @print_value(ptr noundef %0, ptr noundef %2)
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %2, align 16, !tbaa !66    ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %update_offset.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.l = load i64, ptr %i.k, align 16, !tbaa !69  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.l
  %i.n = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.m) #30
  %i.o = add i64 %i.n, %i.l
  store i64 %i.o, ptr %i.k, align 16, !tbaa !69
  br label %update_offset.exit

update_offset.exit:                               ; preds = %bb.c, %bb.d
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_hooks, i64 16), align 8, !tbaa !42 ; 2 uses
  %.not24 = icmp eq ptr %i.p, null
  br i1 %.not24, label %bb.f, label %bb.e

bb.e:                                             ; preds = %update_offset.exit
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.r = load i64, ptr %i.q, align 16, !tbaa !69
  %i.s = add i64 %i.r, 1
  %i.t = call ptr %i.p(ptr noundef %i.i, i64 noundef %i.s) #29 ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.h, label %bb.j

bb.f:                                             ; preds = %update_offset.exit
  %i.v = load ptr, ptr @global_hooks, align 8, !tbaa !40
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.x = load i64, ptr %i.w, align 16, !tbaa !69
  %i.y = add i64 %i.x, 1
  %i.z = call ptr %i.v(i64 noundef %i.y) #29      ; 4 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = load ptr, ptr %2, align 16, !tbaa !66
  %i.ac = load i64, ptr %i.d, align 8, !tbaa !67
  %i.ad = load i64, ptr %i.w, align 16, !tbaa !69
  %i.ae = add i64 %i.ad, 1
  %i.af = call i64 @llvm.umin.i64(i64 %i.ac, i64 %i.ae)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.z, ptr align 1 %i.ab, i64 %i.af, i1 false)
  %i.ag = load i64, ptr %i.w, align 16, !tbaa !69
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ag
  store i8 0, ptr %i.ah, align 1, !tbaa !54
  %i.ai = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_hooks, i64 8), align 8, !tbaa !41
  %i.aj = load ptr, ptr %2, align 16, !tbaa !66
  call void %i.ai(ptr noundef %i.aj) #29
  br label %bb.j

bb.h:                                             ; preds = %bb.f, %bb.e, %bb.b, %bb.a
  %i.ak = load ptr, ptr %2, align 16, !tbaa !66   ; 2 uses
  %.not25 = icmp eq ptr %i.ak, null
  br i1 %.not25, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.al = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_hooks, i64 8), align 8, !tbaa !41
  call void %i.al(ptr noundef nonnull %i.ak) #29
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.e, %bb.i, %bb.h
  %.017 = phi ptr [ null, %bb.i ], [ null, %bb.h ], [ %i.z, %bb.g ], [ %i.t, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  ret ptr %.017
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local ptr @cJSON_PrintUnformatted(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = tail call fastcc ptr @print(ptr noundef %0, i32 noundef 0)
  ret ptr %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local ptr @cJSON_PrintBuffered(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #8 {
bb.a:
  %3 = alloca %struct.printbuffer, align 8        ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 0, ptr %i.a, align 8
  %i.b = icmp slt i32 %1, 0
  br i1 %i.b, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @global_hooks, align 8, !tbaa !40
  %i.d = zext nneg i32 %1 to i64                  ; 2 uses
  %i.e = tail call ptr %i.c(i64 noundef %i.d) #29 ; 2 uses
  store ptr %i.e, ptr %3, align 8, !tbaa !66
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.d, ptr %i.f, align 8, !tbaa !67
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 0, ptr %i.g, align 8, !tbaa !69
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 32
  %4 = zext i32 %2 to i64
  %5 = shl nuw i64 %4, 32
  store i64 %5, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) @global_hooks, i64 24, i1 false), !tbaa.struct !52
  %i.j = call fastcc i32 @print_value(ptr noundef %0, ptr noundef %3)
  %.not6 = icmp eq i32 %i.j, 0
  br i1 %.not6, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_hooks, i64 8), align 8, !tbaa !41
  %i.l = load ptr, ptr %3, align 8, !tbaa !66
  call void %i.k(ptr noundef %i.l) #29
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %3, align 8, !tbaa !66
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.a, %bb.e, %bb.d
  %.0 = phi ptr [ null, %bb.a ], [ %i.m, %bb.e ], [ null, %bb.d ], [ null, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  ret ptr %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 0, 2) i32 @print_value(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef nonnull %1) unnamed_addr #8 {
bb.a:
  %i.a = alloca [26 x i8], align 16               ; 12 uses
  %i.b = alloca double, align 8                   ; 5 uses
  %i.c = icmp eq ptr %0, null
  br i1 %i.c, label %print_array.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i32, ptr %i.d, align 8, !tbaa !36
  %i.f = and i32 %i.e, 255                        ; 2 uses
  %i.g = tail call range(i32 0, 9) i32 @llvm.ctpop.i32(i32 %i.f)
  %i.h = icmp eq i32 %i.g, 1
  br i1 %i.h, label %.split, label %print_array.exit

.split:                                           ; preds = %bb.b
  %i.i = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.f, i1 true)
  switch i32 %i.i, label %default.unreachable133 [
    i32 2, label %bb.c
    i32 0, label %bb.r
    i32 1, label %bb.ag
    i32 3, label %bb.av
    i32 7, label %bb.bd
    i32 4, label %bb.bg
    i32 5, label %bb.bh
    i32 6, label %bb.bs
  ]

bb.c:                                             ; preds = %.split
  %i.j = load ptr, ptr %1, align 8, !tbaa !66     ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %print_array.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !67   ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !69
  %i.n = freeze i64 %.pre.i                       ; 3 uses
  %i.o = add i64 %i.m, -1
  %or.cond.not = icmp ult i64 %i.o, %i.n
  br i1 %or.cond.not, label %print_array.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.q = add i64 %i.n, 6                          ; 4 uses
  %.not53.i = icmp ugt i64 %i.q, %i.m
  br i1 %.not53.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.n
  br label %ensure.exit

bb.g:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.t = load i32, ptr %i.s, align 8, !tbaa !70
  %.not54.i = icmp eq i32 %i.t, 0
  br i1 %.not54.i, label %bb.h, label %print_array.exit

bb.h:                                             ; preds = %bb.g
  %i.u = icmp ugt i64 %i.q, 1073741823
  br i1 %i.u, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.v = icmp ult i64 %i.q, 2147483648
  br i1 %i.v, label %bb.k, label %print_array.exit

bb.j:                                             ; preds = %bb.h
  %i.w = shl nuw nsw i64 %i.q, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.0.i = phi i64 [ %i.w, %bb.j ], [ 2147483647, %bb.i ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !71   ; 2 uses
  %.not55.i = icmp eq ptr %i.y, null
  br i1 %.not55.i, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.z = tail call ptr %i.y(ptr noundef nonnull %i.j, i64 noundef %.0.i) #29, !inline_history !72 ; 2 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !73
  %i.ad = load ptr, ptr %1, align 8, !tbaa !66
  tail call void %i.ac(ptr noundef %i.ad) #29, !inline_history !72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  br label %print_array.exit

bb.n:                                             ; preds = %bb.k
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !74
  %i.ag = tail call ptr %i.af(i64 noundef %.0.i) #29, !inline_history !72 ; 3 uses
  %.not56.i = icmp eq ptr %i.ag, null
  br i1 %.not56.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !73
  %i.aj = load ptr, ptr %1, align 8, !tbaa !66
  tail call void %i.ai(ptr noundef %i.aj) #29, !inline_history !72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  br label %print_array.exit

bb.p:                                             ; preds = %bb.n
  %i.ak = load ptr, ptr %1, align 8, !tbaa !66
  %i.al = load i64, ptr %i.p, align 8, !tbaa !69
  %i.am = add i64 %i.al, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ag, ptr align 1 %i.ak, i64 %i.am, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !73
  %i.ap = load ptr, ptr %1, align 8, !tbaa !66
  tail call void %i.ao(ptr noundef %i.ap) #29, !inline_history !72
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.l
  %.043.i = phi ptr [ %i.z, %bb.l ], [ %i.ag, %bb.p ] ; 2 uses
  store i64 %.0.i, ptr %i.l, align 8, !tbaa !67
  store ptr %.043.i, ptr %1, align 8, !tbaa !66
  %i.aq = load i64, ptr %i.p, align 8, !tbaa !69
  %i.ar = getelementptr inbounds nuw i8, ptr %.043.i, i64 %i.aq
  br label %ensure.exit

ensure.exit:                                      ; preds = %bb.q, %bb.f
  %.044.i = phi ptr [ %i.ar, %bb.q ], [ %i.r, %bb.f ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %.044.i, ptr noundef nonnull align 1 dereferenceable(5) @.str.34, i64 5, i1 false) #29
  br label %print_array.exit

bb.r:                                             ; preds = %.split
  %i.as = load ptr, ptr %1, align 8, !tbaa !66    ; 3 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %print_array.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !tbaa !67 ; 2 uses
  %.phi.trans.insert.i45 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre.i46 = load i64, ptr %.phi.trans.insert.i45, align 8, !tbaa !69
  %i.aw = freeze i64 %.pre.i46                    ; 3 uses
  %i.ax = add i64 %i.av, -1
  %or.cond138.not = icmp ult i64 %i.ax, %i.aw
  br i1 %or.cond138.not, label %print_array.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.az = add i64 %i.aw, 7                        ; 4 uses
  %.not53.i38 = icmp ugt i64 %i.az, %i.av
  br i1 %.not53.i38, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ba = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.aw
  br label %ensure.exit47

bb.v:                                             ; preds = %bb.t
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !70
  %.not54.i40 = icmp eq i32 %i.bc, 0
  br i1 %.not54.i40, label %bb.w, label %print_array.exit

bb.w:                                             ; preds = %bb.v
  %i.bd = icmp ugt i64 %i.az, 1073741823
  br i1 %i.bd, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.be = icmp ult i64 %i.az, 2147483648
  br i1 %i.be, label %bb.z, label %print_array.exit

bb.y:                                             ; preds = %bb.w
  %i.bf = shl nuw nsw i64 %i.az, 1
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.0.i41 = phi i64 [ %i.bf, %bb.y ], [ 2147483647, %bb.x ] ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !71 ; 2 uses
end_hunk_0
begin_hunk_1_@print_value:bb.a
  store i64 %i.ho, ptr %i.hm, align 8, !tbaa !69
  %.not81.i74 = icmp eq ptr %i.gy, null
  br i1 %.not81.i74, label %._crit_edge78, label %.lr.ph77

.lr.ph77:                                         ; preds = %bb.bw, %bb.ck
  %.067.i75 = phi ptr [ %i.jl, %bb.ck ], [ %i.gy, %bb.bw ] ; 5 uses
  %i.hp = load i32, ptr %i.hc, align 4, !tbaa !68
  %.not84.i = icmp eq i32 %i.hp, 0
  br i1 %.not84.i, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %.lr.ph77
  %i.hq = load i64, ptr %i.gz, align 8, !tbaa !95
  %i.hr = tail call fastcc ptr @ensure(ptr noundef nonnull %1, i64 noundef %i.hq), !inline_history !94 ; 2 uses
  %.not85.i = icmp eq ptr %i.hr, null
  br i1 %.not85.i, label %print_array.exit, label %.preheader70

.preheader70:                                     ; preds = %bb.bx
  %i.hs = load i64, ptr %i.gz, align 8, !tbaa !95
  %.not = icmp eq i64 %i.hs, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader70, %.lr.ph
  %.065.i73 = phi i64 [ %i.hu, %.lr.ph ], [ 0, %.preheader70 ]
  %.068.i72 = phi ptr [ %i.ht, %.lr.ph ], [ %i.hr, %.preheader70 ] ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %.068.i72, i64 1
  store i8 9, ptr %.068.i72, align 1, !tbaa !54
  %i.hu = add nuw i64 %.065.i73, 1                ; 2 uses
  %i.hv = load i64, ptr %i.gz, align 8, !tbaa !95 ; 2 uses
  %i.hw = icmp ult i64 %i.hu, %i.hv
  br i1 %i.hw, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %.preheader70
  %.lcssa = phi i64 [ 0, %.preheader70 ], [ %i.hv, %.lr.ph ]
  %i.hx = load i64, ptr %i.hm, align 8, !tbaa !69
  %i.hy = add i64 %i.hx, %.lcssa
  store i64 %i.hy, ptr %i.hm, align 8, !tbaa !69
  br label %bb.by

bb.by:                                            ; preds = %._crit_edge, %.lr.ph77
  %i.hz = getelementptr inbounds nuw i8, ptr %.067.i75, i64 56
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !45
  %i.ib = tail call fastcc i32 @print_string_ptr(ptr noundef %i.ia, ptr noundef nonnull %1), !inline_history !94
  %.not86.i = icmp eq i32 %i.ib, 0
  br i1 %.not86.i, label %print_array.exit, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.ic = load ptr, ptr %1, align 8, !tbaa !66    ; 2 uses
  %i.id = icmp eq ptr %i.ic, null
  br i1 %i.id, label %update_offset.exit66, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.ie = load i64, ptr %i.hm, align 8, !tbaa !69 ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.ic, i64 %i.ie
  %i.ig = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.if) #30
  %i.ih = add i64 %i.ig, %i.ie
  store i64 %i.ih, ptr %i.hm, align 8, !tbaa !69
  br label %update_offset.exit66

update_offset.exit66:                             ; preds = %bb.bz, %bb.ca
  %i.ii = load i32, ptr %i.hc, align 4, !tbaa !68
  %.not87.i = icmp eq i32 %i.ii, 0
  %i.ij = select i1 %.not87.i, i64 1, i64 2       ; 2 uses
  %i.ik = tail call fastcc ptr @ensure(ptr noundef nonnull %1, i64 noundef %i.ij), !inline_history !94 ; 3 uses
  %i.il = icmp eq ptr %i.ik, null
  br i1 %i.il, label %print_array.exit, label %bb.cb

bb.cb:                                            ; preds = %update_offset.exit66
  store i8 58, ptr %i.ik, align 1, !tbaa !54
  %i.im = load i32, ptr %i.hc, align 4, !tbaa !68
  %.not88.i = icmp eq i32 %i.im, 0
  br i1 %.not88.i, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.in = getelementptr inbounds nuw i8, ptr %i.ik, i64 1
  store i8 9, ptr %i.in, align 1, !tbaa !54
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %i.io = load i64, ptr %i.hm, align 8, !tbaa !69
  %i.ip = add i64 %i.io, %i.ij
  store i64 %i.ip, ptr %i.hm, align 8, !tbaa !69
  %i.iq = tail call fastcc i32 @print_value(ptr noundef nonnull %.067.i75, ptr noundef nonnull %1), !inline_history !94
  %.not89.i = icmp eq i32 %i.iq, 0
  br i1 %.not89.i, label %print_array.exit, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.ir = load ptr, ptr %1, align 8, !tbaa !66    ; 2 uses
  %i.is = icmp eq ptr %i.ir, null
  br i1 %i.is, label %update_offset.exit65, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.it = load i64, ptr %i.hm, align 8, !tbaa !69 ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ir, i64 %i.it
  %i.iv = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.iu) #30
  %i.iw = add i64 %i.iv, %i.it
  store i64 %i.iw, ptr %i.hm, align 8, !tbaa !69
  br label %update_offset.exit65

update_offset.exit65:                             ; preds = %bb.ce, %bb.cf
  %i.ix = load i32, ptr %i.hc, align 4, !tbaa !68
  %.not90.i = icmp ne i32 %i.ix, 0
  %i.iy = zext i1 %.not90.i to i64
  %i.iz = load ptr, ptr %.067.i75, align 8, !tbaa !43
  %.not91.i = icmp ne ptr %i.iz, null
  %i.ja = zext i1 %.not91.i to i64
  %i.jb = add nuw nsw i64 %i.ja, %i.iy            ; 2 uses
  %i.jc = add nuw nsw i64 %i.jb, 1
  %i.jd = tail call fastcc ptr @ensure(ptr noundef nonnull %1, i64 noundef %i.jc), !inline_history !94 ; 4 uses
  %i.je = icmp eq ptr %i.jd, null
  br i1 %i.je, label %print_array.exit, label %bb.cg

bb.cg:                                            ; preds = %update_offset.exit65
  %i.jf = load ptr, ptr %.067.i75, align 8, !tbaa !43
  %.not92.i = icmp eq ptr %i.jf, null
  br i1 %.not92.i, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jd, i64 1
  store i8 44, ptr %i.jd, align 1, !tbaa !54
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %.1.i = phi ptr [ %i.jg, %bb.ch ], [ %i.jd, %bb.cg ] ; 3 uses
  %i.jh = load i32, ptr %i.hc, align 4, !tbaa !68
  %.not93.i = icmp eq i32 %i.jh, 0
  br i1 %.not93.i, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.ji = getelementptr inbounds nuw i8, ptr %.1.i, i64 1
  store i8 10, ptr %.1.i, align 1, !tbaa !54
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %.2.i = phi ptr [ %i.ji, %bb.cj ], [ %.1.i, %bb.ci ]
  store i8 0, ptr %.2.i, align 1, !tbaa !54
  %i.jj = load i64, ptr %i.hm, align 8, !tbaa !69
  %i.jk = add i64 %i.jj, %i.jb
  store i64 %i.jk, ptr %i.hm, align 8, !tbaa !69
  %i.jl = load ptr, ptr %.067.i75, align 8, !tbaa !43 ; 2 uses
  %.not81.i = icmp eq ptr %i.jl, null
  br i1 %.not81.i, label %._crit_edge78, label %.lr.ph77

._crit_edge78:                                    ; preds = %bb.ck, %bb.bw
  %i.jm = load i32, ptr %i.hc, align 4, !tbaa !68
  %.not82.i = icmp eq i32 %i.jm, 0
  br i1 %.not82.i, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %._crit_edge78
  %i.jn = load i64, ptr %i.gz, align 8, !tbaa !95
  %i.jo = add i64 %i.jn, 1
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %._crit_edge78
  %i.jp = phi i64 [ %i.jo, %bb.cl ], [ 2, %._crit_edge78 ]
  %i.jq = tail call fastcc ptr @ensure(ptr noundef nonnull %1, i64 noundef %i.jp), !inline_history !94 ; 4 uses
  %i.jr = icmp eq ptr %i.jq, null
  br i1 %i.jr, label %print_array.exit, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.js = load i32, ptr %i.hc, align 4, !tbaa !68
  %.not83.i = icmp eq i32 %i.js, 0
  br i1 %.not83.i, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.cn
  %i.jt = load i64, ptr %i.gz, align 8, !tbaa !95
  %.not88 = icmp eq i64 %i.jt, 1
  br i1 %.not88, label %.loopexit, label %.lr.ph81

.lr.ph81:                                         ; preds = %.preheader, %.lr.ph81
  %.0.i6480 = phi i64 [ %i.jv, %.lr.ph81 ], [ 0, %.preheader ]
  %.3.i79 = phi ptr [ %i.ju, %.lr.ph81 ], [ %i.jq, %.preheader ] ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %.3.i79, i64 1 ; 2 uses
  store i8 9, ptr %.3.i79, align 1, !tbaa !54
  %i.jv = add nuw i64 %.0.i6480, 1                ; 2 uses
  %i.jw = load i64, ptr %i.gz, align 8, !tbaa !95
  %i.jx = add i64 %i.jw, -1
  %i.jy = icmp ult i64 %i.jv, %i.jx
  br i1 %i.jy, label %.lr.ph81, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph81, %.preheader, %bb.cn
  %.4.i = phi ptr [ %i.jq, %bb.cn ], [ %i.jq, %.preheader ], [ %i.ju, %.lr.ph81 ] ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %.4.i, i64 1
  store i8 125, ptr %.4.i, align 1, !tbaa !54
  store i8 0, ptr %i.jz, align 1, !tbaa !54
  %i.ka = load i64, ptr %i.gz, align 8, !tbaa !95
  %i.kb = add i64 %i.ka, -1
  store i64 %i.kb, ptr %i.gz, align 8, !tbaa !95
  br label %print_array.exit

default.unreachable133:                           ; preds = %.split
  unreachable

print_array.exit:                                 ; preds = %update_offset.exit65, %bb.cd, %update_offset.exit66, %bb.by, %bb.bx, %bb.bn, %bb.bk, %bb.ah, %bb.s, %bb.d, %bb.as, %bb.aq, %bb.am, %bb.ag, %bb.ak, %bb.ad, %bb.ab, %bb.x, %bb.r, %bb.v, %bb.o, %bb.m, %bb.i, %bb.c, %bb.g, %.loopexit, %bb.cm, %bb.bt, %bb.bs, %bb.br, %._crit_edge87, %bb.bi, %bb.bh, %bb.b, %bb.bf, %bb.bd, %bb.be, %bb.a, %bb.bg, %print_number.exit, %ensure.exit59, %ensure.exit47, %ensure.exit
  %.1 = phi i32 [ 0, %._crit_edge87 ], [ 0, %bb.be ], [ 0, %bb.a ], [ 1, %ensure.exit ], [ 0, %bb.ah ], [ 1, %ensure.exit47 ], [ 0, %bb.am ], [ 1, %ensure.exit59 ], [ %.037.i, %print_number.exit ], [ 0, %bb.aq ], [ %i.fo, %bb.bg ], [ 0, %bb.ad ], [ 1, %bb.bf ], [ 0, %bb.bd ], [ 0, %bb.b ], [ 0, %bb.r ], [ 0, %bb.o ], [ 1, %bb.br ], [ 0, %bb.ak ], [ 0, %bb.bh ], [ 0, %bb.ag ], [ 0, %bb.bi ], [ 1, %.loopexit ], [ 0, %bb.s ], [ 0, %bb.bs ], [ 0, %bb.x ], [ 0, %bb.ab ], [ 0, %bb.bn ], [ 0, %bb.cm ], [ 0, %bb.as ], [ 0, %bb.bt ], [ 0, %bb.g ], [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %bb.i ], [ 0, %bb.m ], [ 0, %bb.v ], [ 0, %bb.bk ], [ 0, %bb.bx ], [ 0, %bb.by ], [ 0, %update_offset.exit66 ], [ 0, %bb.cd ], [ 0, %update_offset.exit65 ]
  ret i32 %.1
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i32 0, 2) i32 @cJSON_PrintPreallocated(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #8 {
bb.a:
  %4 = alloca %struct.printbuffer, align 8        ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 0, ptr %i.a, align 8
  %i.b = icmp slt i32 %2, 0
  %i.c = icmp eq ptr %1, null
  %or.cond = or i1 %i.c, %i.b
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %4, align 8, !tbaa !66
  %i.d = zext nneg i32 %2 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.d, ptr %i.e, align 8, !tbaa !67
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 0, ptr %i.f, align 8, !tbaa !69
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 32
  %5 = zext i32 %3 to i64
  %6 = shl nuw i64 %5, 32
  %7 = or disjoint i64 %6, 1
  store i64 %7, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) @global_hooks, i64 24, i1 false), !tbaa.struct !52
  %i.i = call fastcc i32 @print_value(ptr noundef %0, ptr noundef %4)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.i, %bb.b ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @cJSON_GetArraySize(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #15 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.06.in = phi ptr [ %i.b, %bb.b ], [ %.06, %bb.c ]
  %.0 = phi i32 [ 0, %bb.b ], [ %i.c, %bb.c ]     ; 2 uses
  %.06 = load ptr, ptr %.06.in, align 8, !tbaa !76 ; 2 uses
  %.not = icmp eq ptr %.06, null
  %i.c = add i32 %.0, 1
  br i1 %.not, label %.loopexit, label %bb.c

.loopexit:                                        ; preds = %bb.c, %bb.a
  %.07 = phi i32 [ 0, %bb.a ], [ %.0, %bb.c ]
  ret i32 %.07
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local ptr @cJSON_GetArrayItem(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #15 {
bb.a:
  %i.a = icmp slt i32 %1, 0
  %i.b = icmp eq ptr %0, null
  %or.cond = or i1 %i.b, %i.a
  br i1 %or.cond, label %get_array_item.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = zext nneg i32 %1 to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.07.i = phi i64 [ %i.c, %bb.b ], [ %i.h, %bb.c ] ; 2 uses
  %.0.in.i = phi ptr [ %i.d, %bb.b ], [ %.0.i, %bb.c ]
  %.0.i = load ptr, ptr %.0.in.i, align 8, !tbaa !76 ; 3 uses
  %i.e = icmp ne ptr %.0.i, null
  %i.f = icmp ne i64 %.07.i, 0
  %i.g = select i1 %i.e, i1 %i.f, i1 false
  %i.h = add nsw i64 %.07.i, -1
  br i1 %i.g, label %bb.c, label %get_array_item.exit

get_array_item.exit:                              ; preds = %bb.c, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %.0.i, %bb.c ]
  ret ptr %.0
}

; Function Attrs: nofree nosync nounwind sspstrong memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local ptr @cJSON_GetObjectItem(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address) %1) local_unnamed_addr #16 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond.i = or i1 %i.a, %i.b
  br i1 %or.cond.i, label %get_object_item.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !44   ; 2 uses
  %.not2349.i = icmp eq ptr %i.d, null
  br i1 %.not2349.i, label %get_object_item.exit, label %.lr.ph51.i

.lr.ph51.i:                                       ; preds = %bb.b, %case_insensitive_strcmp.exit.thread30.i
  %.150.i = phi ptr [ %i.ag, %case_insensitive_strcmp.exit.thread30.i ], [ %i.d, %bb.b ] ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.150.i, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !45   ; 4 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %case_insensitive_strcmp.exit.thread30.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph51.i
  %i.h = icmp eq ptr %1, %i.f
  br i1 %i.h, label %get_object_item.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.c
  %i.i = tail call ptr @__ctype_tolower_loc() #31
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !78   ; 4 uses
  %i.k = load i8, ptr %1, align 1, !tbaa !54      ; 2 uses
  %i.l = zext i8 %i.k to i64
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.l
  %i.n = load i32, ptr %i.m, align 4, !tbaa !79
  %i.o = load i8, ptr %i.f, align 1, !tbaa !54
  %i.p = zext i8 %i.o to i64
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !79
  %i.s = icmp eq i32 %i.n, %i.r
  br i1 %i.s, label %.lr.ph.i.i, label %case_insensitive_strcmp.exit.thread30.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %bb.d
  %i.t = phi i8 [ %i.x, %bb.d ], [ %i.k, %.preheader.i.i ]
  %.02030.i.i = phi ptr [ %i.v, %bb.d ], [ %1, %.preheader.i.i ]
  %.02129.i.i = phi ptr [ %i.w, %bb.d ], [ %i.f, %.preheader.i.i ]
  %i.u = icmp eq i8 %i.t, 0
  br i1 %i.u, label %get_object_item.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.02030.i.i, i64 1 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.02129.i.i, i64 1 ; 2 uses
  %i.x = load i8, ptr %i.v, align 1, !tbaa !54    ; 2 uses
  %i.y = zext i8 %i.x to i64
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !79
  %i.ab = load i8, ptr %i.w, align 1, !tbaa !54
  %i.ac = zext i8 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !79
  %i.af = icmp eq i32 %i.aa, %i.ae
  br i1 %i.af, label %.lr.ph.i.i, label %case_insensitive_strcmp.exit.thread30.i

case_insensitive_strcmp.exit.thread30.i:          ; preds = %bb.d, %.preheader.i.i, %.lr.ph51.i
  %i.ag = load ptr, ptr %.150.i, align 8, !tbaa !43 ; 2 uses
  %.not23.i = icmp eq ptr %i.ag, null
  br i1 %.not23.i, label %get_object_item.exit, label %.lr.ph51.i

get_object_item.exit:                             ; preds = %case_insensitive_strcmp.exit.thread30.i, %bb.c, %.lr.ph.i.i, %bb.a, %bb.b
  %.019.i = phi ptr [ null, %bb.b ], [ null, %bb.a ], [ %.150.i, %.lr.ph.i.i ], [ %.150.i, %bb.c ], [ null, %case_insensitive_strcmp.exit.thread30.i ]
  ret ptr %.019.i
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local ptr @cJSON_GetObjectItemCaseSensitive(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #15 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond.i = or i1 %i.a, %i.b
  br i1 %or.cond.i, label %get_object_item.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !44   ; 2 uses
  %.not2349.i = icmp eq ptr %i.d, null
  br i1 %.not2349.i, label %get_object_item.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.d
  %.048.i = phi ptr [ %i.h, %bb.d ], [ %i.d, %bb.b ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.048.i, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !45   ; 2 uses
  %.not26.i = icmp eq ptr %i.f, null
  br i1 %.not26.i, label %get_object_item.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.g = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %i.f) #30
  %.not27.i = icmp eq i32 %i.g, 0
  br i1 %.not27.i, label %get_object_item.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %.048.i, align 8, !tbaa !43 ; 2 uses
  %.not25.i = icmp eq ptr %i.h, null
  br i1 %.not25.i, label %get_object_item.exit, label %.lr.ph.i

get_object_item.exit:                             ; preds = %bb.d, %.lr.ph.i, %bb.c, %bb.a, %bb.b
  %.019.i = phi ptr [ null, %bb.b ], [ null, %bb.a ], [ null, %bb.d ], [ %.048.i, %bb.c ], [ null, %.lr.ph.i ]
  ret ptr %.019.i
}

; Function Attrs: nofree nosync nounwind sspstrong memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, 2) i32 @cJSON_HasObjectItem(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address) %1) local_unnamed_addr #16 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond.i.i = or i1 %i.a, %i.b
  br i1 %or.cond.i.i, label %cJSON_GetObjectItem.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !44   ; 2 uses
  %.not2349.i.i = icmp eq ptr %i.d, null
  br i1 %.not2349.i.i, label %cJSON_GetObjectItem.exit, label %.lr.ph51.i.i

.lr.ph51.i.i:                                     ; preds = %bb.b, %case_insensitive_strcmp.exit.thread30.i.i
  %.150.i.i = phi ptr [ %i.ag, %case_insensitive_strcmp.exit.thread30.i.i ], [ %i.d, %bb.b ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.150.i.i, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !45   ; 4 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %case_insensitive_strcmp.exit.thread30.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph51.i.i
  %i.h = icmp eq ptr %1, %i.f
  br i1 %i.h, label %cJSON_GetObjectItem.exit, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.c
  %i.i = tail call ptr @__ctype_tolower_loc() #31
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !78   ; 4 uses
  %i.k = load i8, ptr %1, align 1, !tbaa !54      ; 2 uses
  %i.l = zext i8 %i.k to i64
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.l
  %i.n = load i32, ptr %i.m, align 4, !tbaa !79
end_hunk_1
