inline.NumInlined: 107
inline.NumDeleted: 39
begin_hunk_0_@init_inetsock_internal:bb.a
  br label %bb.r

bb.r:                                             ; preds = %.thread131, %.critedge, %bb.g
  %.3103 = phi ptr [ @.str.25, %bb.g ], [ %.2102128, %.thread131 ], [ %.0100148, %.critedge ] ; 2 uses
  %.395 = phi i32 [ %.092149, %bb.g ], [ %.294130, %.thread131 ], [ %.092149, %.critedge ] ; 2 uses
  %.2 = phi i32 [ %i.bi, %bb.g ], [ %i.cs, %.thread131 ], [ %.088150, %.critedge ] ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.089151, i64 40
  %.089 = load ptr, ptr %i.cu, align 8, !tbaa !19 ; 2 uses
  %.not109 = icmp eq ptr %.089, null
  br i1 %.not109, label %._crit_edge, label %bb.d, !llvm.loop !107

._crit_edge:                                      ; preds = %bb.r
  %.pre171.pre = load i32, ptr %i.a, align 4, !tbaa !6
  %i.cv = icmp slt i32 %.pre171.pre, 0
  br i1 %i.cv, label %bb.s, label %.thread

bb.s:                                             ; preds = %._crit_edge
  %i.cw = icmp slt i32 %.395, 0                   ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.cy = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.086.in = select i1 %i.cw, ptr %i.cx, ptr %i.s
  %.0.in = select i1 %i.cw, ptr %i.cy, ptr %i.u
  %.0 = load i64, ptr %.0.in, align 8, !tbaa !17
  %.086 = load i64, ptr %.086.in, align 8, !tbaa !17
  call void @rsock_syserr_fail_host_port(i32 noundef %.2, ptr noundef %.3103, i64 noundef %.086, i64 noundef %.0) #17
  unreachable

.thread:                                          ; preds = %._crit_edge, %bb.c
  %i.cz = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 4, ptr %i.cz, align 8, !tbaa !48
  br label %bb.w

bb.t:                                             ; preds = %bb.q
  %i.da = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 4, ptr %i.da, align 8, !tbaa !48
  %i.db = icmp ne i64 %i.bk, 4
  %or.cond3 = select i1 %i.w, i1 %i.db, i1 false
  br i1 %or.cond3, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.dc = call i32 @rb_io_descriptor(i64 noundef %i.bk) #16
  %i.dd = call i32 @listen(i32 noundef %i.dc, i32 noundef 4096) #16 ; 2 uses
  store i32 %i.dd, ptr %i.a, align 4, !tbaa !6
  %i.de = icmp slt i32 %i.dd, 0
  br i1 %i.de, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.df = call ptr @rb_errno_ptr() #16
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !6
  %i.dh = call i64 @rb_io_close(i64 noundef %i.bk) #16 ; 0 uses
  call void @rb_syserr_fail(i32 noundef %i.dg, ptr noundef nonnull @.str.36) #17
  unreachable

bb.w:                                             ; preds = %.thread, %bb.u, %bb.t
  %.399185194 = phi i64 [ 4, %.thread ], [ %i.bk, %bb.u ], [ %i.bk, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret i64 %.399185194
}

; Function Attrs: nounwind uwtable
define internal noundef i64 @inetsock_cleanup(i64 noundef %0) #4 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !51   ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @rb_freeaddrinfo(ptr noundef nonnull %i.c) #16
  store ptr null, ptr %i.b, align 8, !tbaa !51
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !54   ; 2 uses
  %.not11 = icmp eq ptr %i.e, null
  br i1 %.not11, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @rb_freeaddrinfo(ptr noundef nonnull %i.e) #16
  store ptr null, ptr %i.d, align 8, !tbaa !54
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !48   ; 2 uses
  %.not12 = icmp eq i64 %i.g, 4
  br i1 %.not12, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = tail call i64 @rb_io_close(i64 noundef %i.g) #16 ; 0 uses
  store i64 4, ptr %i.f, align 8, !tbaa !48
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret i64 4
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @rsock_revlookup_flag(i64 noundef %0, ptr noundef writeonly captures(none) %1) local_unnamed_addr #4 {
bb.a:
  switch i64 %0, label %bb.c [
    i64 20, label %.sink.split
    i64 0, label %bb.b
    i64 4, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  br label %.sink.split

bb.c:                                             ; preds = %bb.a
  %i.a = and i64 %0, 255
  %i.b = icmp eq i64 %i.a, 12
  br i1 %i.b, label %Check_Type.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = icmp eq i64 %0, 0
  %i.d = and i64 %0, 7
  %i.e = icmp ne i64 %i.d, 0
  %i.f = or i1 %i.c, %i.e
  br i1 %i.f, label %RB_SYMBOL_P.exit.thread9.i, label %RB_SYMBOL_P.exit.i, !prof !108

RB_SYMBOL_P.exit.i:                               ; preds = %bb.d
  %i.g = inttoptr i64 %0 to ptr
  %i.h = load i64, ptr %i.g, align 8, !tbaa !82
  %i.i = and i64 %i.h, 31
  %i.j = icmp eq i64 %i.i, 20
  br i1 %i.j, label %Check_Type.exit, label %RB_SYMBOL_P.exit.thread9.i, !prof !109

RB_SYMBOL_P.exit.thread9.i:                       ; preds = %RB_SYMBOL_P.exit.i, %bb.d
  tail call void @rb_unexpected_type(i64 noundef %0, i32 noundef 20) #23
  unreachable

Check_Type.exit:                                  ; preds = %bb.c, %RB_SYMBOL_P.exit.i
  %i.k = tail call i64 @rb_sym2id(i64 noundef %0) #16 ; 3 uses
  %i.l = load i64, ptr @id_numeric, align 8, !tbaa !17
  %i.m = icmp eq i64 %i.k, %i.l
  br i1 %i.m, label %.sink.split, label %bb.e

bb.e:                                             ; preds = %Check_Type.exit
  %i.n = load i64, ptr @id_hostname, align 8, !tbaa !17
  %i.o = icmp eq i64 %i.k, %i.n
  br i1 %i.o, label %.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = load i64, ptr @rb_eArgError, align 8, !tbaa !17
  %i.q = tail call ptr @rb_id2name(i64 noundef %i.k) #16
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.p, ptr noundef nonnull @.str.4, ptr noundef %i.q) #17
  unreachable

.sink.split:                                      ; preds = %bb.e, %Check_Type.exit, %bb.a, %bb.b
  %.sink = phi i32 [ 1, %Check_Type.exit ], [ 0, %bb.a ], [ 1, %bb.b ], [ 0, %bb.e ]
  store i32 %.sink, ptr %1, align 4, !tbaa !6
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 1, %.sink.split ]
  ret i32 %.0
}

declare i64 @rb_sym2id(i64 noundef) local_unnamed_addr #2

declare ptr @rb_id2name(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @rsock_init_ipsocket() local_unnamed_addr #4 {
bb.a:
  %i.a = load i64, ptr @rb_cBasicSocket, align 8, !tbaa !17
  %i.b = tail call i64 @rb_define_class(ptr noundef nonnull @.str.5, i64 noundef %i.a) #16 ; 2 uses
  store i64 %i.b, ptr @rb_cIPSocket, align 8, !tbaa !17
  tail call void @rb_define_method(i64 noundef %i.b, ptr noundef nonnull @.str.6, ptr noundef nonnull @ip_inspect, i32 noundef 0) #16
  %i.c = load i64, ptr @rb_cIPSocket, align 8, !tbaa !17
  tail call void @rb_define_method(i64 noundef %i.c, ptr noundef nonnull @.str.7, ptr noundef nonnull @ip_addr, i32 noundef -1) #16
  %i.d = load i64, ptr @rb_cIPSocket, align 8, !tbaa !17
  tail call void @rb_define_method(i64 noundef %i.d, ptr noundef nonnull @.str.8, ptr noundef nonnull @ip_peeraddr, i32 noundef -1) #16
  %i.e = load i64, ptr @rb_cIPSocket, align 8, !tbaa !17
  tail call void @rb_define_method(i64 noundef %i.e, ptr noundef nonnull @.str.9, ptr noundef nonnull @ip_recvfrom, i32 noundef -1) #16
  %i.f = load i64, ptr @rb_cIPSocket, align 8, !tbaa !17
  tail call void @rb_define_singleton_method(i64 noundef %i.f, ptr noundef nonnull @.str.10, ptr noundef nonnull @ip_s_getaddress, i32 noundef 1) #16
  %i.g = load i64, ptr @rb_cIPSocket, align 8, !tbaa !17
  tail call void @rb_undef_method(i64 noundef %i.g, ptr noundef nonnull @.str.11) #16
  %i.h = tail call i64 @rb_intern2(ptr noundef nonnull @.str.12, i64 noundef 7) #16
  store i64 %i.h, ptr @id_numeric, align 8, !tbaa !17
  %i.i = tail call i64 @rb_intern2(ptr noundef nonnull @.str.13, i64 noundef 8) #16
  store i64 %i.i, ptr @id_hostname, align 8, !tbaa !17
  ret void
}

declare i64 @rb_define_class(ptr noundef, i64 noundef) local_unnamed_addr #2

declare extern_weak void @rb_define_method(i64 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal i64 @ip_inspect(i64 noundef %0) #4 {
bb.a:
  %1 = alloca %union.union_sockaddr, align 8      ; 5 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca [1024 x i8], align 16             ; 4 uses
  %i.c = alloca [1024 x i8], align 16             ; 4 uses
  %i.d = alloca i8, align 1                       ; 5 uses
  %i.e = tail call i64 @rb_call_super(i32 noundef 0, ptr noundef null) #16 ; 6 uses
  %i.f = inttoptr i64 %0 to ptr
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !110  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i32 2048, ptr %i.a, align 4, !tbaa !6
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load i32, ptr %i.i, align 8, !tbaa !113  ; 2 uses
  %i.k = icmp sgt i32 %i.j, -1
  br i1 %i.k, label %bb.c, label %bb.m

bb.c:                                             ; preds = %bb.b
  %i.l = call i32 @getsockname(i32 noundef %i.j, ptr nonnull %1, ptr noundef nonnull %i.a) #16
  %i.m = icmp sgt i32 %i.l, -1
  br i1 %i.m, label %bb.d, label %bb.m

bb.d:                                             ; preds = %bb.c
  %i.n = load i16, ptr %1, align 8, !tbaa !96
  %i.o = zext i16 %i.n to i32
  %i.p = call i64 @rsock_intern_family(i32 noundef %i.o) #16 ; 2 uses
  %.not25 = icmp eq i64 %i.p, 0
  br i1 %.not25, label %bb.m, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = call i64 @rb_id2str(i64 noundef %i.p) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  %i.r = inttoptr i64 %i.e to ptr                 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load i64, ptr %i.s, align 8, !tbaa !125  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  %i.u = icmp sgt i64 %i.t, 1
  br i1 %i.u, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.v = load i64, ptr %i.r, align 8, !tbaa !82
  %i.w = and i64 %i.v, 8192
  %.not.i = icmp eq i64 %i.w, 0
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 2 uses
  br i1 %.not.i, label %RSTRING_PTR.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !96
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.f, %bb.g
  %i.z = phi ptr [ %i.y, %bb.g ], [ %i.x, %bb.f ]
  %i.aa = getelementptr i8, ptr %i.z, i64 %i.t
  %i.ab = getelementptr i8, ptr %i.aa, i64 -1
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !96
  %i.ad = icmp eq i8 %i.ac, 62                    ; 2 uses
  %i.ae = sext i1 %i.ad to i64
  %spec.select = add nsw i64 %i.t, %i.ae
  %spec.select28 = select i1 %i.ad, i8 62, i8 0
  br label %bb.h

bb.h:                                             ; preds = %RSTRING_PTR.exit, %bb.e
  %.0 = phi i64 [ %i.t, %bb.e ], [ %spec.select, %RSTRING_PTR.exit ]
  %i.af = phi i8 [ 0, %bb.e ], [ %spec.select28, %RSTRING_PTR.exit ]
  store i8 %i.af, ptr %i.d, align 1, !tbaa !96
  %i.ag = call i64 @rb_str_subseq(i64 noundef %i.e, i64 noundef 0, i64 noundef %.0) #16 ; 8 uses
  %i.ah = call i64 @rb_str_cat(i64 noundef %i.ag, ptr noundef nonnull @.str.37, i64 noundef 2) #16 ; 0 uses
  %i.ai = call i64 @rb_str_append(i64 noundef %i.ag, i64 noundef %i.q) #16 ; 0 uses
  %i.aj = load i32, ptr %i.a, align 4, !tbaa !6
  %i.ak = call i32 @rb_getnameinfo(ptr noundef nonnull %1, i32 noundef %i.aj, ptr noundef nonnull %i.b, i64 noundef 1024, ptr noundef nonnull %i.c, i64 noundef 1024, i32 noundef 3) #16
  %.not26 = icmp eq i32 %i.ak, 0
  br i1 %.not26, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.al = call i64 @rb_str_cat(i64 noundef %i.ag, ptr noundef nonnull @.str.37, i64 noundef 2) #16 ; 0 uses
  %i.am = call i64 @rb_str_cat_cstr(i64 noundef %i.ag, ptr noundef nonnull %i.b) #16 ; 0 uses
  %i.an = call i64 @rb_str_cat(i64 noundef %i.ag, ptr noundef nonnull @.str.37, i64 noundef 2) #16 ; 0 uses
  %i.ao = call i64 @rb_str_cat_cstr(i64 noundef %i.ag, ptr noundef nonnull %i.c) #16 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %2 = load i8, ptr %i.d, align 1, !tbaa !96
  %.not27 = icmp eq i8 %2, 0
  br i1 %.not27, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ap = call i64 @rb_str_cat(i64 noundef %i.ag, ptr noundef nonnull %i.d, i64 noundef 1) #16 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.d, %bb.c, %bb.b, %bb.a
  %.020 = phi i64 [ %i.ag, %bb.l ], [ %i.e, %bb.d ], [ %i.e, %bb.c ], [ %i.e, %bb.b ], [ %i.e, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  ret i64 %.020
}

; Function Attrs: nounwind uwtable
define internal i64 @ip_addr(i32 noundef %0, ptr noundef readonly captures(none) %1, i64 noundef %2) #4 {
bb.a:
  %3 = alloca %union.union_sockaddr, align 8      ; 4 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i32 2048, ptr %i.a, align 4, !tbaa !6
  %i.b = icmp slt i32 %0, 1
  br i1 %i.b, label %rsock_revlookup_flag.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %1, align 8, !tbaa !17     ; 7 uses
  switch i64 %i.c, label %bb.c [
    i64 20, label %.sink.split.i
    i64 0, label %rsock_revlookup_flag.exit.thread
    i64 4, label %rsock_revlookup_flag.exit
  ]

bb.c:                                             ; preds = %bb.b
  %i.d = and i64 %i.c, 255
  %i.e = icmp eq i64 %i.d, 12
  br i1 %i.e, label %Check_Type.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = icmp eq i64 %i.c, 0
  %i.g = and i64 %i.c, 7
  %i.h = icmp ne i64 %i.g, 0
  %i.i = or i1 %i.f, %i.h
  br i1 %i.i, label %RB_SYMBOL_P.exit.thread9.i.i, label %RB_SYMBOL_P.exit.i.i, !prof !108

RB_SYMBOL_P.exit.i.i:                             ; preds = %bb.d
  %i.j = inttoptr i64 %i.c to ptr
  %i.k = load i64, ptr %i.j, align 8, !tbaa !82
  %i.l = and i64 %i.k, 31
  %i.m = icmp eq i64 %i.l, 20
  br i1 %i.m, label %Check_Type.exit.i, label %RB_SYMBOL_P.exit.thread9.i.i, !prof !109

RB_SYMBOL_P.exit.thread9.i.i:                     ; preds = %RB_SYMBOL_P.exit.i.i, %bb.d
  tail call void @rb_unexpected_type(i64 noundef %i.c, i32 noundef 20) #23
  unreachable

Check_Type.exit.i:                                ; preds = %RB_SYMBOL_P.exit.i.i, %bb.c
  %i.n = tail call i64 @rb_sym2id(i64 noundef %i.c) #16 ; 3 uses
  %i.o = load i64, ptr @id_numeric, align 8, !tbaa !17
  %i.p = icmp eq i64 %i.n, %i.o
  br i1 %i.p, label %rsock_revlookup_flag.exit.thread, label %bb.e

bb.e:                                             ; preds = %Check_Type.exit.i
  %i.q = load i64, ptr @id_hostname, align 8, !tbaa !17
  %i.r = icmp eq i64 %i.n, %i.q
  br i1 %i.r, label %rsock_revlookup_flag.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load i64, ptr @rb_eArgError, align 8, !tbaa !17
  %i.t = tail call ptr @rb_id2name(i64 noundef %i.n) #16
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.s, ptr noundef nonnull @.str.4, ptr noundef %i.t) #17
  unreachable

.sink.split.i:                                    ; preds = %bb.b
  br label %rsock_revlookup_flag.exit.thread

rsock_revlookup_flag.exit:                        ; preds = %bb.b, %bb.a
  %i.u = tail call i32 @rb_io_mode(i64 noundef %2) #16
  %i.v = and i32 %i.u, 256
  br label %rsock_revlookup_flag.exit.thread

rsock_revlookup_flag.exit.thread:                 ; preds = %bb.b, %.sink.split.i, %Check_Type.exit.i, %bb.e, %rsock_revlookup_flag.exit
  %.0 = phi i32 [ %i.v, %rsock_revlookup_flag.exit ], [ 0, %.sink.split.i ], [ 0, %bb.e ], [ 1, %Check_Type.exit.i ], [ 1, %bb.b ]
  %i.w = tail call i32 @rb_io_descriptor(i64 noundef %2) #16
  %i.x = call i32 @getsockname(i32 noundef %i.w, ptr nonnull %3, ptr noundef nonnull %i.a) #16
  %i.y = icmp slt i32 %i.x, 0
  br i1 %i.y, label %bb.g, label %bb.h

bb.g:                                             ; preds = %rsock_revlookup_flag.exit.thread
  %i.z = call ptr @rb_errno_ptr() #16
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !6
  call void @rb_syserr_fail(i32 noundef %i.aa, ptr noundef nonnull @.str.38) #17
  unreachable

bb.h:                                             ; preds = %rsock_revlookup_flag.exit.thread
  %i.ab = load i32, ptr %i.a, align 4, !tbaa !6
  %i.ac = call i64 @rsock_ipaddr(ptr noundef nonnull %3, i32 noundef %i.ab, i32 noundef %.0) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  ret i64 %i.ac
}

; Function Attrs: nounwind uwtable
define internal i64 @ip_peeraddr(i32 noundef %0, ptr noundef readonly captures(none) %1, i64 noundef %2) #4 {
bb.a:
  %3 = alloca %union.union_sockaddr, align 8      ; 4 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i32 2048, ptr %i.a, align 4, !tbaa !6
  %i.b = icmp slt i32 %0, 1
  br i1 %i.b, label %rsock_revlookup_flag.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %1, align 8, !tbaa !17     ; 7 uses
  switch i64 %i.c, label %bb.c [
    i64 20, label %.sink.split.i
    i64 0, label %rsock_revlookup_flag.exit.thread
    i64 4, label %rsock_revlookup_flag.exit
  ]

bb.c:                                             ; preds = %bb.b
  %i.d = and i64 %i.c, 255
  %i.e = icmp eq i64 %i.d, 12
  br i1 %i.e, label %Check_Type.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = icmp eq i64 %i.c, 0
  %i.g = and i64 %i.c, 7
  %i.h = icmp ne i64 %i.g, 0
  %i.i = or i1 %i.f, %i.h
  br i1 %i.i, label %RB_SYMBOL_P.exit.thread9.i.i, label %RB_SYMBOL_P.exit.i.i, !prof !108

RB_SYMBOL_P.exit.i.i:                             ; preds = %bb.d
  %i.j = inttoptr i64 %i.c to ptr
  %i.k = load i64, ptr %i.j, align 8, !tbaa !82
  %i.l = and i64 %i.k, 31
  %i.m = icmp eq i64 %i.l, 20
  br i1 %i.m, label %Check_Type.exit.i, label %RB_SYMBOL_P.exit.thread9.i.i, !prof !109

RB_SYMBOL_P.exit.thread9.i.i:                     ; preds = %RB_SYMBOL_P.exit.i.i, %bb.d
  tail call void @rb_unexpected_type(i64 noundef %i.c, i32 noundef 20) #23
  unreachable

Check_Type.exit.i:                                ; preds = %RB_SYMBOL_P.exit.i.i, %bb.c
  %i.n = tail call i64 @rb_sym2id(i64 noundef %i.c) #16 ; 3 uses
  %i.o = load i64, ptr @id_numeric, align 8, !tbaa !17
  %i.p = icmp eq i64 %i.n, %i.o
  br i1 %i.p, label %rsock_revlookup_flag.exit.thread, label %bb.e

bb.e:                                             ; preds = %Check_Type.exit.i
  %i.q = load i64, ptr @id_hostname, align 8, !tbaa !17
  %i.r = icmp eq i64 %i.n, %i.q
  br i1 %i.r, label %rsock_revlookup_flag.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load i64, ptr @rb_eArgError, align 8, !tbaa !17
  %i.t = tail call ptr @rb_id2name(i64 noundef %i.n) #16
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.s, ptr noundef nonnull @.str.4, ptr noundef %i.t) #17
  unreachable

.sink.split.i:                                    ; preds = %bb.b
  br label %rsock_revlookup_flag.exit.thread

rsock_revlookup_flag.exit:                        ; preds = %bb.b, %bb.a
  %i.u = tail call i32 @rb_io_mode(i64 noundef %2) #16
  %i.v = and i32 %i.u, 256
  br label %rsock_revlookup_flag.exit.thread

rsock_revlookup_flag.exit.thread:                 ; preds = %bb.b, %.sink.split.i, %Check_Type.exit.i, %bb.e, %rsock_revlookup_flag.exit
  %.0 = phi i32 [ %i.v, %rsock_revlookup_flag.exit ], [ 0, %.sink.split.i ], [ 0, %bb.e ], [ 1, %Check_Type.exit.i ], [ 1, %bb.b ]
  %i.w = tail call i32 @rb_io_descriptor(i64 noundef %2) #16
  %i.x = call i32 @getpeername(i32 noundef %i.w, ptr nonnull %3, ptr noundef nonnull %i.a) #16
  %i.y = icmp slt i32 %i.x, 0
  br i1 %i.y, label %bb.g, label %bb.h

bb.g:                                             ; preds = %rsock_revlookup_flag.exit.thread
  %i.z = call ptr @rb_errno_ptr() #16
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !6
  call void @rb_syserr_fail(i32 noundef %i.aa, ptr noundef nonnull @.str.39) #17
  unreachable

bb.h:                                             ; preds = %rsock_revlookup_flag.exit.thread
  %i.ab = load i32, ptr %i.a, align 4, !tbaa !6
  %i.ac = call i64 @rsock_ipaddr(ptr noundef nonnull %3, i32 noundef %i.ab, i32 noundef %.0) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  ret i64 %i.ac
}

; Function Attrs: nounwind uwtable
define internal i64 @ip_recvfrom(i32 noundef %0, ptr noundef %1, i64 noundef %2) #4 {
bb.a:
  %i.a = tail call i64 @rsock_s_recvfrom(i64 noundef %2, i32 noundef %0, ptr noundef %1, i32 noundef 1) #16
  ret i64 %i.a
end_hunk_0
