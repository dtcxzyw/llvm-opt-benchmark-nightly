inline.NumInlined: 312
inline.NumDeleted: 57
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 9
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@addrinfo_getnameinfo:bb.a
  %spec.select = select i1 %i.p, i32 %i.q, i32 %i.m
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.t = load i32, ptr %i.s, align 4, !tbaa !97
  %i.u = call i32 @rb_getnameinfo(ptr noundef nonnull %i.r, i32 noundef %i.t, ptr noundef nonnull %i.a, i64 noundef 1024, ptr noundef nonnull %i.b, i64 noundef 1024, i32 noundef %spec.select) ; 2 uses
  %.not = icmp eq i32 %i.u, 0
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %rb_scan_args_set.exit.thread
  call void @rsock_raise_resolution_error(ptr noundef nonnull @.str.8, i32 noundef %i.u) #19
  unreachable

bb.i:                                             ; preds = %rb_scan_args_set.exit.thread
  %i.v = call i64 @rb_str_new_cstr(ptr noundef nonnull %i.a) #17
  %i.w = call i64 @rb_str_new_cstr(ptr noundef nonnull %i.b) #17
  %i.x = call i64 @rb_assoc_new(i64 noundef %i.v, i64 noundef %i.w) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret i64 %i.x
}

; Function Attrs: nounwind uwtable
define internal i64 @addrinfo_mdump(i64 noundef %0) #0 {
bb.a:
  %i.a = alloca [1025 x i8], align 16             ; 4 uses
  %i.b = alloca [32 x i8], align 16               ; 4 uses
  %i.c = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @addrinfo_type) #17 ; 11 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.b, label %get_addrinfo.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr @rb_eTypeError, align 8, !tbaa !38
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.d, ptr noundef nonnull @.str.104) #19
  unreachable

get_addrinfo.exit:                                ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 28 ; 3 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !97
  %i.g = icmp ugt i32 %i.f, 1
  br i1 %i.g, label %bb.c, label %ai_get_afamily.exit

bb.c:                                             ; preds = %get_addrinfo.exit
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.i = load i16, ptr %i.h, align 4, !tbaa !77
  %i.j = zext i16 %i.i to i32
  br label %ai_get_afamily.exit

ai_get_afamily.exit:                              ; preds = %get_addrinfo.exit, %bb.c
  %.0.i.i = phi i32 [ %i.j, %bb.c ], [ 0, %get_addrinfo.exit ] ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !98
  %i.m = tail call i64 @rsock_intern_protocol_family(i32 noundef %i.l) #17 ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %ai_get_afamily.exit
  %i.o = load i64, ptr @rb_eSocket, align 8, !tbaa !38
  %i.p = load i32, ptr %i.k, align 8, !tbaa !98
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.o, ptr noundef nonnull @.str.131, i32 noundef %i.p) #19
  unreachable

bb.e:                                             ; preds = %ai_get_afamily.exit
  %i.q = tail call i64 @rb_id2str(i64 noundef %i.m) #17
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 20 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !99   ; 2 uses
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = tail call i64 @rsock_intern_socktype(i32 noundef %i.s) #17 ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.w = load i64, ptr @rb_eSocket, align 8, !tbaa !38
  %i.x = load i32, ptr %i.r, align 4, !tbaa !99
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.w, ptr noundef nonnull @.str.132, i32 noundef %i.x) #19
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.y = tail call i64 @rb_id2str(i64 noundef %i.u) #17
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.h
  %.039 = phi i64 [ %i.y, %bb.h ], [ 1, %bb.e ]
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !100 ; 3 uses
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %bb.o, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = and i32 %.0.i.i, 65527
  %or.cond = icmp eq i32 %i.ac, 2
  br i1 %or.cond, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.ad = tail call i64 @rsock_intern_ipproto(i32 noundef %i.aa) #17 ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.af = load i64, ptr @rb_eSocket, align 8, !tbaa !38
  %i.ag = load i32, ptr %i.z, align 8, !tbaa !100
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.af, ptr noundef nonnull @.str.133, i32 noundef %i.ag) #19
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ah = tail call i64 @rb_id2str(i64 noundef %i.ad) #17
  br label %bb.o

bb.n:                                             ; preds = %bb.j
  %i.ai = load i64, ptr @rb_eSocket, align 8, !tbaa !38
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ai, ptr noundef nonnull @.str.134, i32 noundef %i.aa) #19
  unreachable

bb.o:                                             ; preds = %bb.i, %bb.m
  %.040 = phi i64 [ %i.ah, %bb.m ], [ 1, %bb.i ]
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !94
  %i.al = load i64, ptr %i.c, align 8, !tbaa !92
  %i.am = tail call i64 @rsock_intern_family(i32 noundef %.0.i.i) #17 ; 2 uses
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ao = load i64, ptr @rb_eSocket, align 8, !tbaa !38
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ao, ptr noundef nonnull @.str.135, i32 noundef %.0.i.i) #19
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.ap = tail call i64 @rb_id2str(i64 noundef %i.am) #17
  %cond = icmp eq i32 %.0.i.i, 1
  br i1 %cond, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 34
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.as = load i32, ptr %i.e, align 4, !tbaa !97  ; 2 uses
  %i.at = zext i32 %i.as to i64                   ; 2 uses
  %i.au = tail call i64 @llvm.umin.i64(i64 %i.at, i64 2) ; 2 uses
  %i.av = icmp ugt i32 %i.as, 2
  br i1 %i.av, label %.lr.ph, label %rai_unixsocket_len.exit

bb.s:                                             ; preds = %.lr.ph
  %i.aw = icmp sgt i64 %.0.idx.i.i57, 3
  br i1 %i.aw, label %.lr.ph, label %rai_unixsocket_len.exit, !llvm.loop !80

.lr.ph:                                           ; preds = %bb.r, %bb.s
  %.0.idx.i.i57 = phi i64 [ %.0.add.i.i, %bb.s ], [ %i.at, %bb.r ] ; 3 uses
  %.0.add.i.i = add nsw i64 %.0.idx.i.i57, -1     ; 2 uses
  %.ptr.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.0.add.i.i
  %i.ax = load i8, ptr %.ptr.i.i, align 1, !tbaa !46
  %i.ay = icmp eq i8 %i.ax, 0
  br i1 %i.ay, label %bb.s, label %.rai_unixsocket_len.exit_crit_edge58, !llvm.loop !80

.rai_unixsocket_len.exit_crit_edge58:             ; preds = %.lr.ph
  br label %rai_unixsocket_len.exit, !llvm.loop !80

rai_unixsocket_len.exit:                          ; preds = %bb.s, %.rai_unixsocket_len.exit_crit_edge58, %bb.r
  %.0.idx.lcssa.i.i = phi i64 [ %i.au, %bb.r ], [ %.0.idx.i.i57, %.rai_unixsocket_len.exit_crit_edge58 ], [ %i.au, %bb.s ]
  %gepdiff.i.i = add nsw i64 %.0.idx.lcssa.i.i, -2
  %i.az = tail call i64 @rb_str_new(ptr noundef nonnull %i.aq, i64 noundef %gepdiff.i.i) #17
  br label %bb.w

bb.t:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.bb = load i32, ptr %i.e, align 4, !tbaa !97
  %i.bc = call i32 @getnameinfo(ptr noundef nonnull %i.ba, i32 noundef %i.bb, ptr noundef nonnull %i.a, i32 noundef 1025, ptr noundef nonnull %i.b, i32 noundef 32, i32 noundef 3) #17 ; 2 uses
  %.not = icmp eq i32 %i.bc, 0
  br i1 %.not, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @rsock_raise_resolution_error(ptr noundef nonnull @.str.8, i32 noundef %i.bc) #19
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.bd = call i64 @rb_str_new_cstr(ptr noundef nonnull %i.a) #17
  %i.be = call i64 @rb_str_new_cstr(ptr noundef nonnull %i.b) #17
  %i.bf = call i64 @rb_assoc_new(i64 noundef %i.bd, i64 noundef %i.be) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %rai_unixsocket_len.exit
  %.0 = phi i64 [ %i.az, %rai_unixsocket_len.exit ], [ %i.bf, %bb.v ]
  %i.bg = call i64 (i64, ...) @rb_ary_new_from_args(i64 noundef 7, i64 noundef %i.ap, i64 noundef %.0, i64 noundef %i.q, i64 noundef %.039, i64 noundef %.040, i64 noundef %i.ak, i64 noundef %i.al) #17
  ret i64 %i.bg
}

; Function Attrs: nounwind uwtable
define internal noundef i64 @addrinfo_mload(i64 noundef returned %0, i64 noundef %1) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 23 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  %i.e = alloca i32, align 4                      ; 6 uses
  %2 = alloca %union.union_sockaddr, align 8      ; 6 uses
  %.sroa.5.sroa.0 = alloca <108 x i8>, align 128  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.f = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @addrinfo_type) #17
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr @rb_eTypeError, align 8, !tbaa !38
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.g, ptr noundef nonnull @.str.106) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = tail call i64 @rb_convert_type(i64 noundef %1, i32 noundef 7, ptr noundef nonnull @.str.136, ptr noundef nonnull @.str.137) #17 ; 7 uses
  %i.i = tail call i64 @rb_ary_entry(i64 noundef %i.h, i64 noundef 0) #20
  store i64 %i.i, ptr %i.a, align 8, !tbaa !38
  %i.j = call i64 @rb_string_value(ptr noundef nonnull %i.a) #17 ; 0 uses
  %i.k = load i64, ptr %i.a, align 8, !tbaa !38
  %i.l = inttoptr i64 %i.k to ptr                 ; 3 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !44
  %i.n = and i64 %i.m, 8192
  %.not.i = icmp eq i64 %i.n, 0
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 2 uses
  br i1 %.not.i, label %RSTRING_PTR.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !46
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.c, %bb.d
  %i.q = phi ptr [ %i.p, %bb.d ], [ %i.o, %bb.c ]
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !47
  %i.t = call i32 @rsock_family_to_int(ptr noundef %i.q, i64 noundef %i.s, ptr noundef nonnull %i.b) #17
  %i.u = icmp eq i32 %i.t, -1
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %RSTRING_PTR.exit
  %i.v = load i64, ptr @rb_eTypeError, align 8, !tbaa !38
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.v, ptr noundef nonnull @.str.109) #19
  unreachable

bb.f:                                             ; preds = %RSTRING_PTR.exit
  %i.w = call i64 @rb_ary_entry(i64 noundef %i.h, i64 noundef 2) #20
  store i64 %i.w, ptr %i.a, align 8, !tbaa !38
  %i.x = call i64 @rb_string_value(ptr noundef nonnull %i.a) #17 ; 0 uses
  %i.y = load i64, ptr %i.a, align 8, !tbaa !38
  %i.z = inttoptr i64 %i.y to ptr                 ; 3 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !44
  %i.ab = and i64 %i.aa, 8192
  %.not.i31 = icmp eq i64 %i.ab, 0
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 24 ; 2 uses
  br i1 %.not.i31, label %RSTRING_PTR.exit32, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !46
  br label %RSTRING_PTR.exit32

RSTRING_PTR.exit32:                               ; preds = %bb.f, %bb.g
  %i.ae = phi ptr [ %i.ad, %bb.g ], [ %i.ac, %bb.f ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !47
  %i.ah = call i32 @rsock_family_to_int(ptr noundef %i.ae, i64 noundef %i.ag, ptr noundef nonnull %i.c) #17
  %i.ai = icmp eq i32 %i.ah, -1
  br i1 %i.ai, label %bb.h, label %bb.i

bb.h:                                             ; preds = %RSTRING_PTR.exit32
  %i.aj = load i64, ptr @rb_eTypeError, align 8, !tbaa !38
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.aj, ptr noundef nonnull @.str.138) #19
  unreachable

bb.i:                                             ; preds = %RSTRING_PTR.exit32
  %i.ak = call i64 @rb_ary_entry(i64 noundef %i.h, i64 noundef 3) #20 ; 2 uses
  store i64 %i.ak, ptr %i.a, align 8, !tbaa !38
  %i.al = icmp eq i64 %i.ak, 1
  br i1 %i.al, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.d, align 4, !tbaa !6
  br label %bb.n

bb.k:                                             ; preds = %bb.i
  %i.am = call i64 @rb_string_value(ptr noundef nonnull %i.a) #17 ; 0 uses
  %i.an = load i64, ptr %i.a, align 8, !tbaa !38
  %i.ao = inttoptr i64 %i.an to ptr               ; 3 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !44
  %i.aq = and i64 %i.ap, 8192
  %.not.i33 = icmp eq i64 %i.aq, 0
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 24 ; 2 uses
  br i1 %.not.i33, label %RSTRING_PTR.exit34, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !46
  br label %RSTRING_PTR.exit34

RSTRING_PTR.exit34:                               ; preds = %bb.k, %bb.l
  %i.at = phi ptr [ %i.as, %bb.l ], [ %i.ar, %bb.k ]
  %i.au = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.av = load i64, ptr %i.au, align 8, !tbaa !47
  %i.aw = call i32 @rsock_socktype_to_int(ptr noundef %i.at, i64 noundef %i.av, ptr noundef nonnull %i.d) #17
  %i.ax = icmp eq i32 %i.aw, -1
  br i1 %i.ax, label %bb.m, label %bb.n

bb.m:                                             ; preds = %RSTRING_PTR.exit34
  %i.ay = load i64, ptr @rb_eTypeError, align 8, !tbaa !38
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ay, ptr noundef nonnull @.str.139) #19
  unreachable

bb.n:                                             ; preds = %RSTRING_PTR.exit34, %bb.j
  %i.az = call i64 @rb_ary_entry(i64 noundef %i.h, i64 noundef 4) #20 ; 2 uses
  store i64 %i.az, ptr %i.a, align 8, !tbaa !38
  %i.ba = icmp eq i64 %i.az, 1
  br i1 %i.ba, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 0, ptr %i.e, align 4, !tbaa !6
  br label %bb.u

bb.p:                                             ; preds = %bb.n
  %i.bb = call i64 @rb_string_value(ptr noundef nonnull %i.a) #17 ; 0 uses
  %i.bc = load i32, ptr %i.b, align 4, !tbaa !6
  %i.bd = and i32 %i.bc, -9
  %or.cond = icmp eq i32 %i.bd, 2
  br i1 %or.cond, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.be = load i64, ptr %i.a, align 8, !tbaa !38
  %i.bf = inttoptr i64 %i.be to ptr               ; 3 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !44
  %i.bh = and i64 %i.bg, 8192
  %.not.i35 = icmp eq i64 %i.bh, 0
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 24 ; 2 uses
  br i1 %.not.i35, label %RSTRING_PTR.exit36, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !46
  br label %RSTRING_PTR.exit36

RSTRING_PTR.exit36:                               ; preds = %bb.q, %bb.r
  %i.bk = phi ptr [ %i.bj, %bb.r ], [ %i.bi, %bb.q ]
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !47
  %i.bn = call i32 @rsock_ipproto_to_int(ptr noundef %i.bk, i64 noundef %i.bm, ptr noundef nonnull %i.e) #17
  %i.bo = icmp eq i32 %i.bn, -1
  br i1 %i.bo, label %bb.s, label %bb.u

bb.s:                                             ; preds = %RSTRING_PTR.exit36
  %i.bp = load i64, ptr @rb_eTypeError, align 8, !tbaa !38
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.bp, ptr noundef nonnull @.str.140) #19
  unreachable

bb.t:                                             ; preds = %bb.p
  %i.bq = load i64, ptr @rb_eTypeError, align 8, !tbaa !38
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.bq, ptr noundef nonnull @.str.140) #19
  unreachable

bb.u:                                             ; preds = %RSTRING_PTR.exit36, %bb.o
  %i.br = call i64 @rb_ary_entry(i64 noundef %i.h, i64 noundef 5) #20 ; 2 uses
  store i64 %i.br, ptr %i.a, align 8, !tbaa !38
  %i.bs = icmp eq i64 %i.br, 4
  br i1 %i.bs, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bt = call i64 @rb_string_value(ptr noundef nonnull %i.a) #17 ; 0 uses
  %i.bu = load i64, ptr %i.a, align 8, !tbaa !38
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v
  %.0 = phi i64 [ %i.bu, %bb.v ], [ 4, %bb.u ]    ; 4 uses
  %i.bv = call i64 @rb_ary_entry(i64 noundef %i.h, i64 noundef 6) #20 ; 2 uses
  store i64 %i.bv, ptr %i.a, align 8, !tbaa !38
  %i.bw = icmp eq i64 %i.bv, 4
  br i1 %i.bw, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bx = call i64 @rb_string_value(ptr noundef nonnull %i.a) #17 ; 0 uses
  %i.by = load i64, ptr %i.a, align 8, !tbaa !38
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x
  %.028 = phi i64 [ %i.by, %bb.x ], [ 4, %bb.w ]  ; 4 uses
  %i.bz = call i64 @rb_ary_entry(i64 noundef %i.h, i64 noundef 1) #20 ; 2 uses
  store i64 %i.bz, ptr %i.a, align 8, !tbaa !38
  %i.ca = load i32, ptr %i.b, align 4, !tbaa !6
  %cond = icmp eq i32 %i.ca, 1
  br i1 %cond, label %bb.z, label %bb.ae

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.sroa.0)
  store <108 x i8> zeroinitializer, ptr %.sroa.5.sroa.0, align 128
  %i.cb = call i64 @rb_string_value(ptr noundef nonnull %i.a) #17 ; 0 uses
  %i.cc = load i64, ptr %i.a, align 8, !tbaa !38
  %i.cd = inttoptr i64 %i.cc to ptr               ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !47 ; 4 uses
  %i.cg = icmp ugt i64 %i.cf, 108
  br i1 %i.cg, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ch = load i64, ptr @rb_eSocket, align 8, !tbaa !38
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ch, ptr noundef nonnull @.str.129, i64 noundef %i.cf, i64 noundef 108) #19
  unreachable

bb.ab:                                            ; preds = %bb.z
  %i.ci = load i64, ptr %i.cd, align 8, !tbaa !44
  %i.cj = and i64 %i.ci, 8192
  %.not.i37 = icmp eq i64 %i.cj, 0
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cd, i64 24 ; 2 uses
  br i1 %.not.i37, label %RSTRING_PTR.exit38, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !46
  br label %RSTRING_PTR.exit38

RSTRING_PTR.exit38:                               ; preds = %bb.ab, %bb.ac
  %i.cm = phi ptr [ %i.cl, %bb.ac ], [ %i.ck, %bb.ab ]
  %.not.i39 = icmp eq i64 %i.cf, 0
  br i1 %.not.i39, label %ruby_nonempty_memcpy.exit, label %bb.ad

bb.ad:                                            ; preds = %RSTRING_PTR.exit38
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 128 %.sroa.5.sroa.0, ptr readonly align 1 %i.cm, i64 %i.cf, i1 false)
  br label %ruby_nonempty_memcpy.exit

ruby_nonempty_memcpy.exit:                        ; preds = %RSTRING_PTR.exit38, %bb.ad
  store i16 1, ptr %2, align 8
  %.sroa.5.sroa.0.0..sroa.5.sroa.0.0.copyload = load <108 x i8>, ptr %.sroa.5.sroa.0, align 128
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 2
  store <108 x i8> %.sroa.5.sroa.0.0..sroa.5.sroa.0.0.copyload, ptr %.sroa.5.0..sroa_idx, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.sroa.0)
  br label %bb.ah

bb.ae:                                            ; preds = %bb.y
  %i.cn = call i64 @rb_convert_type(i64 noundef %i.bz, i32 noundef 7, ptr noundef nonnull @.str.136, ptr noundef nonnull @.str.137) #17 ; 2 uses
  %i.co = call i64 @rb_ary_entry(i64 noundef %i.cn, i64 noundef 0) #20
  %i.cp = call i64 @rb_ary_entry(i64 noundef %i.cn, i64 noundef 1) #20
  %i.cq = load i32, ptr %i.c, align 4, !tbaa !6
  %i.cr = sext i32 %i.cq to i64
  %i.cs = shl nsw i64 %i.cr, 1
  %i.ct = or disjoint i64 %i.cs, 1
  %i.cu = load i32, ptr %i.d, align 4, !tbaa !6
  %i.cv = sext i32 %i.cu to i64
  %i.cw = shl nsw i64 %i.cv, 1
  %i.cx = or disjoint i64 %i.cw, 1
  %i.cy = load i32, ptr %i.e, align 4, !tbaa !6
  %i.cz = sext i32 %i.cy to i64
  %i.da = shl nsw i64 %i.cz, 1
  %i.db = or disjoint i64 %i.da, 1
  %i.dc = call fastcc ptr @call_getaddrinfo(i64 noundef %i.co, i64 noundef %i.cp, i64 noundef %i.ct, i64 noundef %i.cx, i64 noundef %i.db, i64 noundef 2057, i32 noundef 1, i64 noundef 4) ; 3 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !14 ; 4 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %i.df = load i32, ptr %i.de, align 8, !tbaa !74 ; 3 uses
  %.not.i40 = icmp eq i32 %i.df, 0
  br i1 %.not.i40, label %ruby_nonempty_memcpy.exit41, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dg = zext i32 %i.df to i64
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr readonly align 1 %i.di, i64 %i.dg, i1 false)
  br label %ruby_nonempty_memcpy.exit41

ruby_nonempty_memcpy.exit41:                      ; preds = %bb.ae, %bb.af
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !10
  %.not.i42 = icmp eq i32 %i.dk, 0
  br i1 %.not.i42, label %bb.ag, label %.lr.ph.i

bb.ag:                                            ; preds = %ruby_nonempty_memcpy.exit41
  call void @freeaddrinfo(ptr noundef nonnull %i.dd) #17
  br label %rb_freeaddrinfo.exit

.lr.ph.i:                                         ; preds = %ruby_nonempty_memcpy.exit41, %.lr.ph.i
  %.014.i = phi ptr [ %i.dm, %.lr.ph.i ], [ %i.dd, %ruby_nonempty_memcpy.exit41 ] ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.014.i, i64 40
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !15 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.014.i, i64 24
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !19
  call void @ruby_xfree(ptr noundef %i.do) #17
  call void @ruby_xfree(ptr noundef nonnull %.014.i) #17
  %.not12.i = icmp eq ptr %i.dm, null
  br i1 %.not12.i, label %rb_freeaddrinfo.exit, label %.lr.ph.i, !llvm.loop !20

rb_freeaddrinfo.exit:                             ; preds = %.lr.ph.i, %bb.ag
  call void @ruby_xfree(ptr noundef nonnull %i.dc) #17
  br label %bb.ah

bb.ah:                                            ; preds = %rb_freeaddrinfo.exit, %ruby_nonempty_memcpy.exit
  %.029 = phi i32 [ 110, %ruby_nonempty_memcpy.exit ], [ %i.df, %rb_freeaddrinfo.exit ] ; 4 uses
  %i.dp = call noalias noundef nonnull dereferenceable(2080) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 2080) #21 ; 9 uses
  store i64 4, ptr %i.dp, align 8, !tbaa !92
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8 ; 2 uses
  store i64 4, ptr %i.dq, align 8, !tbaa !94
  %i.dr = inttoptr i64 %0 to ptr
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 32
  store ptr %i.dp, ptr %i.ds, align 8, !tbaa !95
  %i.dt = load i32, ptr %i.c, align 4, !tbaa !6
  %i.du = load i32, ptr %i.d, align 4, !tbaa !6
  %i.dv = load i32, ptr %i.e, align 4, !tbaa !6
  %i.dw = icmp ugt i32 %.029, 2048
  br i1 %i.dw, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.dx = load i64, ptr @rb_eArgError, align 8, !tbaa !38
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.dx, ptr noundef nonnull @.str.102) #19
  unreachable

bb.aj:                                            ; preds = %bb.ah
  %.not.i.i = icmp eq i32 %.029, 0
  br i1 %.not.i.i, label %ruby_nonempty_memcpy.exit.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dy = zext nneg i32 %.029 to i64
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dp, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dz, ptr nonnull readonly align 8 %2, i64 %i.dy, i1 false)
  br label %ruby_nonempty_memcpy.exit.i

ruby_nonempty_memcpy.exit.i:                      ; preds = %bb.ak, %bb.aj
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dp, i64 28
  store i32 %.029, ptr %i.ea, align 4, !tbaa !97
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  store i32 %i.dt, ptr %i.eb, align 8, !tbaa !98
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dp, i64 20
  store i32 %i.du, ptr %i.ec, align 4, !tbaa !99
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dp, i64 24
  store i32 %i.dv, ptr %i.ed, align 8, !tbaa !100
  store i64 %.0, ptr %i.dq, align 8, !tbaa !38
  %i.ee = icmp eq i64 %.0, 0
  %i.ef = and i64 %.0, 7
  %i.eg = icmp ne i64 %i.ef, 0
  %i.eh = or i1 %i.ee, %i.eg
  br i1 %i.eh, label %rb_obj_write.exit.i, label %bb.al

bb.al:                                            ; preds = %ruby_nonempty_memcpy.exit.i
  call void @rb_gc_writebarrier(i64 noundef %0, i64 noundef %.0) #17
  br label %rb_obj_write.exit.i

rb_obj_write.exit.i:                              ; preds = %bb.al, %ruby_nonempty_memcpy.exit.i
  store i64 %.028, ptr %i.dp, align 8, !tbaa !38
  %i.ei = icmp eq i64 %.028, 0
  %i.ej = and i64 %.028, 7
  %i.ek = icmp ne i64 %i.ej, 0
  %i.el = or i1 %i.ei, %i.ek
  br i1 %i.el, label %init_addrinfo.exit, label %bb.am

bb.am:                                            ; preds = %rb_obj_write.exit.i
  call void @rb_gc_writebarrier(i64 noundef %0, i64 noundef %.028) #17
  br label %init_addrinfo.exit

init_addrinfo.exit:                               ; preds = %rb_obj_write.exit.i, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret i64 %0
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #9

declare void @rb_nativethread_lock_initialize(ptr noundef) local_unnamed_addr #3

declare void @rb_native_cond_initialize(ptr noundef) local_unnamed_addr #3

declare void @rb_native_cond_signal(ptr noundef) local_unnamed_addr #3

declare void @rb_native_cond_destroy(ptr noundef) local_unnamed_addr #3

declare void @rb_native_cond_wait(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare i64 @rb_num2uint(i64 noundef) local_unnamed_addr #3

declare i64 @ruby_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strspn(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @inet_pton(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: allocsize(0,1)
declare noalias nonnull ptr @ruby_xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #10

declare i64 @rb_fiber_scheduler_address_resolve(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i64 @rb_ary_entry(i64 noundef, i64 noundef) local_unnamed_addr #11

declare double @rb_num2dbl(i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal ptr @fork_safe_do_getaddrinfo(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @rb_thread_prevent_fork(ptr noundef nonnull @do_getaddrinfo, ptr noundef %0) #17
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal noalias noundef ptr @wait_getaddrinfo(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  tail call void @rb_nativethread_lock_lock(ptr noundef nonnull %i.a) #17
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 3 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !62
  %.not19 = icmp eq i32 %i.d, 0
  br i1 %.not19, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.h = load i32, ptr %i.b, align 8, !tbaa !65
  %.not1723 = icmp eq i32 %i.h, 0
  br i1 %.not1723, label %.lr.ph24, label %.critedge

.lr.ph24:                                         ; preds = %.lr.ph, %.backedge
  %i.i = load i32, ptr %i.e, align 8, !tbaa !61   ; 3 uses
  %i.j = zext nneg i32 %i.i to i64
  %i.k = icmp eq i32 %i.i, 0
  br i1 %i.k, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph24
  %i.l = icmp sgt i32 %i.i, 0
  br i1 %i.l, label %bb.c, label %.split
end_hunk_0
