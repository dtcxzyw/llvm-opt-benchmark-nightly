inline.NumInlined: 84
inline.NumDeleted: 25
begin_hunk_0_@phishing_init:bb.a
  tail call void @cli_regfree(ptr noundef nonnull %i.k) #14
  tail call void @cli_regfree(ptr noundef nonnull %.0) #14
  tail call void @free(ptr noundef %i.m) #14
  tail call void @free(ptr noundef %i.r) #14
  tail call void @free(ptr noundef nonnull %.0) #14
  store ptr null, ptr %i.a, align 8, !tbaa !18
  br label %bb.s

bb.p:                                             ; preds = %bb.n
  tail call void @free(ptr noundef %i.r) #14
  %i.u = getelementptr inbounds nuw i8, ptr %.0, i64 128
  %i.v = tail call fastcc i32 @build_regex(ptr noundef %i.u, ptr noundef nonnull @numeric_url_regex)
  %.not53 = icmp eq i32 %i.v, 0
  br i1 %.not53, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @cli_regfree(ptr noundef nonnull %i.i) #14
  tail call void @cli_regfree(ptr noundef nonnull %i.k) #14
  tail call void @cli_regfree(ptr noundef nonnull %.0) #14
  tail call void @cli_regfree(ptr noundef nonnull %i.s) #14
  tail call void @free(ptr noundef nonnull %.0) #14
  store ptr null, ptr %i.a, align 8, !tbaa !18
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.w = getelementptr inbounds nuw i8, ptr %.0, i64 192
  store i32 0, ptr %i.w, align 8, !tbaa !21
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.15) #14
  br label %bb.s

bb.s:                                             ; preds = %bb.d, %bb.b, %bb.r, %bb.q, %bb.o, %bb.m, %bb.j, %bb.h, %bb.f
  %.043 = phi i32 [ -124, %bb.f ], [ -124, %bb.h ], [ -124, %bb.j ], [ -124, %bb.m ], [ -124, %bb.o ], [ -124, %bb.q ], [ 0, %bb.r ], [ -114, %bb.b ], [ 0, %bb.d ]
  ret i32 %.043
}

declare ptr @cli_malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @build_regex(ptr noundef nonnull %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.20, ptr noundef %1) #14
  %i.a = tail call i32 @cli_regcomp(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 7) #14 ; 3 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @cli_regerror(i32 noundef %i.a, ptr noundef nonnull %0, ptr noundef null, i64 noundef 0) #14 ; 2 uses
  %i.c = tail call ptr @cli_malloc(i64 noundef %i.b) #14 ; 4 uses
  %.not17 = icmp eq ptr %i.c, null
  br i1 %.not17, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i64 @cli_regerror(i32 noundef %i.a, ptr noundef nonnull %0, ptr noundef nonnull %i.c, i64 noundef %i.b) #14 ; 0 uses
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.21, ptr noundef nonnull %i.c) #14
  tail call void @free(ptr noundef nonnull %i.c) #14
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.22) #14
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.c, %bb.d
  %.0 = phi i32 [ 1, %bb.c ], [ 1, %bb.d ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc ptr @str_compose(ptr nofree noundef readonly captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #15 ; 3 uses
  %i.b = add i64 %i.a, 583
  %i.c = tail call ptr @cli_malloc(i64 noundef %i.b) #14 ; 4 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @strncpy(ptr noundef nonnull %i.c, ptr noundef nonnull %0, i64 noundef %i.a) #14 ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.a ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(425) %i.e, ptr noundef nonnull align 1 dereferenceable(426) @.str.12, i64 noundef 425, i1 false) #14
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 425
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(157) %i.f, ptr noundef nonnull align 1 dereferenceable(158) @.str.13, i64 noundef 157, i1 false) #14
  %i.g = getelementptr i8, ptr %i.e, i64 582
  store i8 0, ptr %i.g, align 1, !tbaa !49
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret ptr %i.c
}

; Function Attrs: nounwind uwtable
define dso_local void @phishing_done(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18   ; 9 uses
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.16) #14
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 192 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !21
  %.not15 = icmp eq i32 %i.d, 0
  br i1 %.not15, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @cli_regfree(ptr noundef nonnull %i.b) #14
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  tail call void @cli_regfree(ptr noundef nonnull %i.e) #14
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  tail call void @cli_regfree(ptr noundef nonnull %i.f) #14
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  tail call void @cli_regfree(ptr noundef nonnull %i.g) #14
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  tail call void @cli_regfree(ptr noundef nonnull %i.h) #14
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  tail call void @cli_regfree(ptr noundef nonnull %i.i) #14
  store i32 1, ptr %i.c, align 8, !tbaa !21
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  tail call void @whitelist_done(ptr noundef nonnull %0) #14
  tail call void @domainlist_done(ptr noundef nonnull %0) #14
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.17) #14
  tail call void @free(ptr noundef nonnull %i.b) #14
  store ptr null, ptr %i.a, align 8, !tbaa !18
  br label %bb.e

.critedge:                                        ; preds = %bb.a
  tail call void @whitelist_done(ptr noundef nonnull %0) #14
  tail call void @domainlist_done(ptr noundef nonnull %0) #14
  br label %bb.e

bb.e:                                             ; preds = %.critedge, %bb.d
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.18) #14
  ret void
}

declare void @whitelist_done(ptr noundef) local_unnamed_addr #3

declare void @domainlist_done(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc void @string_free(ptr nofree noundef captures(none) %0) unnamed_addr #4 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.0 = phi ptr [ %0, %bb.a ], [ %i.d, %bb.c ]    ; 4 uses
  %i.a = load i32, ptr %.0, align 8, !tbaa !46
  %i.b = add nsw i32 %i.a, -1                     ; 2 uses
  store i32 %i.b, ptr %.0, align 8, !tbaa !46
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !48   ; 2 uses
  %.not8 = icmp eq ptr %i.d, null
  br i1 %.not8, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !47   ; 2 uses
  %.not9 = icmp eq ptr %i.f, null
  br i1 %.not9, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @free(ptr noundef nonnull %i.f) #14
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.d, %bb.e
  ret void
}

declare i32 @cli_regcomp(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i64 @cli_regerror(i32 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @cli_errmsg(ptr noundef, ...) local_unnamed_addr #3

declare void @cli_regfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none), i64 noundef) local_unnamed_addr #6

declare i32 @domainlist_match(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -114, 118) i32 @url_get_host(ptr noundef %0, ptr nofree noundef nonnull captures(none) %1, ptr nofree noundef nonnull captures(none) %2, i32 noundef range(i32 0, 2) %3, ptr nofree noundef nonnull captures(none) %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %.not = trunc nuw i32 %3 to i1                  ; 4 uses
  %.idx = select i1 %.not, i64 0, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 8 uses
  %. = select i1 %.not, i64 16, i64 40
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %.
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !29   ; 2 uses
  %i.f = call fastcc i32 @get_host(ptr noundef %0, ptr noundef %i.e, i32 noundef %3, ptr noundef %4, ptr noundef %i.a, ptr noundef %i.b) ; 2 uses
  %.not40 = icmp eq i32 %i.f, 0
  br i1 %.not40, label %bb.b, label %string_assign_dup.exit

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !29   ; 4 uses
  %i.h = icmp ne ptr %i.g, null
  %i.i = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.j = icmp ne ptr %i.i, null
  %or.cond = select i1 %i.h, i1 %i.j, i1 false
  br i1 %or.cond, label %bb.e, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ %i.n, %bb.c ], [ %i.c, %bb.b ] ; 4 uses
  %i.k = load i32, ptr %.0.i.i, align 8, !tbaa !46
  %i.l = add nsw i32 %i.k, -1                     ; 2 uses
  store i32 %i.l, ptr %.0.i.i, align 8, !tbaa !46
  %.not.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i, label %bb.c, label %string_assign_null.exit

bb.c:                                             ; preds = %.preheader.i
  %i.m = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !48   ; 2 uses
  %.not8.i.i = icmp eq ptr %i.n, null
  br i1 %.not8.i.i, label %bb.d, label %.preheader.i

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !47   ; 2 uses
  %.not9.i.i = icmp eq ptr %i.p, null
  br i1 %.not9.i.i, label %string_assign_null.exit, label %string_assign_null.exit.sink.split

bb.e:                                             ; preds = %bb.b
  %i.q = ptrtoint ptr %i.i to i64
  %i.r = ptrtoint ptr %i.g to i64
  %i.s = sub i64 %i.q, %i.r                       ; 3 uses
  %i.t = add nsw i64 %i.s, 1
  %i.u = tail call ptr @cli_malloc(i64 noundef %i.t) #14 ; 6 uses
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %string_assign_dup.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = tail call ptr @strncpy(ptr noundef nonnull %i.u, ptr noundef nonnull %i.g, i64 noundef %i.s) #14 ; 0 uses
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 %i.s
  store i8 0, ptr %i.w, align 1, !tbaa !49
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %.0.i.i48 = phi ptr [ %i.c, %bb.f ], [ %i.aa, %bb.h ] ; 4 uses
  %i.x = load i32, ptr %.0.i.i48, align 8, !tbaa !46
  %i.y = add nsw i32 %i.x, -1                     ; 2 uses
  store i32 %i.y, ptr %.0.i.i48, align 8, !tbaa !46
  %.not.i.i49 = icmp eq i32 %i.y, 0
  br i1 %.not.i.i49, label %bb.h, label %string_assign_null.exit

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i.i48, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !48  ; 2 uses
  %.not8.i.i50 = icmp eq ptr %i.aa, null
  br i1 %.not8.i.i50, label %bb.i, label %bb.g

bb.i:                                             ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.i.i48, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !47 ; 2 uses
  %.not9.i.i51 = icmp eq ptr %i.ac, null
  br i1 %.not9.i.i51, label %string_assign_null.exit, label %string_assign_null.exit.sink.split

string_assign_null.exit.sink.split:               ; preds = %bb.i, %bb.d
  %.sink = phi ptr [ %i.p, %bb.d ], [ %i.ac, %bb.i ]
  %.sink80.ph = phi ptr [ @empty_string, %bb.d ], [ %i.u, %bb.i ]
  %.sink79.ph = phi i32 [ -1, %bb.d ], [ 1, %bb.i ]
  tail call void @free(ptr noundef nonnull %.sink) #14
  br label %string_assign_null.exit

string_assign_null.exit:                          ; preds = %.preheader.i, %bb.g, %string_assign_null.exit.sink.split, %bb.i, %bb.d
  %.sink80 = phi ptr [ %i.u, %bb.i ], [ %i.u, %bb.g ], [ @empty_string, %bb.d ], [ %.sink80.ph, %string_assign_null.exit.sink.split ], [ @empty_string, %.preheader.i ] ; 2 uses
  %.sink79 = phi i32 [ 1, %bb.i ], [ 1, %bb.g ], [ -1, %bb.d ], [ %.sink79.ph, %string_assign_null.exit.sink.split ], [ -1, %.preheader.i ]
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %.sink80, ptr %i.ad, align 8, !tbaa !47
  store i32 %.sink79, ptr %i.c, align 8, !tbaa !46
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr null, ptr %i.ae, align 8, !tbaa !48
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.28, ptr noundef nonnull %.sink80) #14
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %string_assign_null.exit
  %i.ag = ptrtoint ptr %i.g to i64
  %i.ah = ptrtoint ptr %i.e to i64                ; 2 uses
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 72
  store i64 %i.ai, ptr %i.aj, align 8, !tbaa !56
  %i.ak = ptrtoint ptr %i.i to i64
  %i.al = sub i64 %i.ak, %i.ah
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 80
  store i64 %i.al, ptr %i.am, align 8, !tbaa !57
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %string_assign_null.exit
  %i.an = load ptr, ptr %i.af, align 8, !tbaa !47 ; 4 uses
  %.not42 = icmp eq ptr %i.an, null
  br i1 %.not42, label %string_assign_dup.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ao = load i32, ptr %4, align 4, !tbaa !4
  %i.ap = and i32 %i.ao, 4
  %.not43 = icmp eq i32 %i.ap, 0
  br i1 %.not43, label %bb.m, label %string_assign_dup.exit

bb.m:                                             ; preds = %bb.l
  %i.aq = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.an, i32 noundef 32) #15
  %.not44 = icmp eq ptr %i.aq, null
  br i1 %.not44, label %bb.q, label %.preheader

.preheader:                                       ; preds = %bb.m, %bb.n
  %.0.i52 = phi ptr [ %i.au, %bb.n ], [ %i.c, %bb.m ] ; 4 uses
  %i.ar = load i32, ptr %.0.i52, align 8, !tbaa !46
  %i.as = add nsw i32 %i.ar, -1                   ; 2 uses
  store i32 %i.as, ptr %.0.i52, align 8, !tbaa !46
  %.not.i53 = icmp eq i32 %i.as, 0
  br i1 %.not.i53, label %bb.n, label %string_assign_dup.exit

bb.n:                                             ; preds = %.preheader
  %i.at = getelementptr inbounds nuw i8, ptr %.0.i52, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !48 ; 2 uses
  %.not8.i = icmp eq ptr %i.au, null
  br i1 %.not8.i, label %bb.o, label %.preheader

bb.o:                                             ; preds = %bb.n
  %i.av = getelementptr inbounds nuw i8, ptr %.0.i52, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !47 ; 2 uses
  %.not9.i = icmp eq ptr %i.aw, null
  br i1 %.not9.i, label %string_assign_dup.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @free(ptr noundef nonnull %i.aw) #14
  br label %string_assign_dup.exit

bb.q:                                             ; preds = %bb.m
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ay = load i16, ptr %i.ax, align 8, !tbaa !42
  %i.az = and i16 %i.ay, 32
  %.not45 = icmp eq i16 %i.az, 0
  br i1 %.not45, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.bb = tail call i32 @cli_regexec(ptr noundef nonnull %i.ba, ptr noundef nonnull %i.an, i64 noundef 0, ptr noundef null, i32 noundef 0) #14
  %.not46 = icmp eq i32 %i.bb, 0
  br i1 %.not46, label %bb.s, label %._crit_edge

._crit_edge:                                      ; preds = %bb.r
  %.pre.pre = load ptr, ptr %i.af, align 8, !tbaa !47
  br label %bb.t

bb.s:                                             ; preds = %bb.r
  tail call fastcc void @string_free(ptr noundef nonnull %i.c)
  br label %string_assign_dup.exit

bb.t:                                             ; preds = %._crit_edge, %bb.q
  %.pre = phi ptr [ %.pre.pre, %._crit_edge ], [ %i.an, %bb.q ] ; 2 uses
  br i1 %.not, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bc = load i8, ptr %.pre, align 1, !tbaa !49
  %i.bd = icmp eq i8 %i.bc, 0
  br i1 %i.bd, label %string_assign_dup.exit, label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.be = tail call fastcc i32 @isNumeric(ptr noundef %.pre)
  %.not47 = icmp eq i32 %i.be, 0
  br i1 %.not47, label %string_assign_dup.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bf = load i32, ptr %4, align 4, !tbaa !4
  %i.bg = or i32 %i.bf, 2
  store i32 %i.bg, ptr %4, align 4, !tbaa !4
  br label %string_assign_dup.exit

string_assign_dup.exit:                           ; preds = %.preheader, %bb.p, %bb.o, %bb.e, %bb.v, %bb.w, %bb.u, %bb.l, %bb.k, %bb.a, %bb.s
  %.0 = phi i32 [ 0, %bb.v ], [ %i.f, %bb.a ], [ 101, %bb.k ], [ -114, %bb.e ], [ 114, %bb.l ], [ 100, %bb.u ], [ 117, %bb.s ], [ 0, %bb.w ], [ 113, %bb.p ], [ 113, %bb.o ], [ 113, %.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret i32 %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 2) i32 @isEncoded(ptr nofree noundef readonly %0) unnamed_addr #7 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.07 = phi ptr [ %0, %bb.a ], [ %strchr, %bb.c ]
  %.0 = phi i64 [ 0, %bb.a ], [ %i.b, %bb.c ]     ; 2 uses
  %i.a = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %.07, ptr noundef nonnull dereferenceable(1) @.str.34) #15 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = add i64 %.0, 1
  %strchr = tail call ptr @strchr(ptr nonnull dereferenceable(1) %i.a, i32 59) ; 2 uses
  %.not10 = icmp eq ptr %strchr, null
  br i1 %.not10, label %.thread, label %bb.b, !llvm.loop !58

.thread:                                          ; preds = %bb.b, %bb.c
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #15
  %i.d = mul i64 %i.c, 7
  %i.e = udiv i64 %i.d, 10
  %i.f = icmp ugt i64 %.0, %i.e
  %i.g = zext i1 %i.f to i32
  ret i32 %i.g
}

; Function Attrs: nounwind uwtable
define internal fastcc void @url_get_domain(ptr noundef %0, ptr noundef nonnull %1, ptr nofree noundef nonnull captures(none) %2) unnamed_addr #0 {
bb.a:
  tail call fastcc void @get_domain(ptr noundef %0, ptr noundef %2, ptr noundef %1)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call fastcc void @get_domain(ptr noundef %0, ptr noundef %i.a, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.d = load i16, ptr %i.c, align 8, !tbaa !42
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 88
  store i16 %i.d, ptr %i.e, align 8, !tbaa !42
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @cleanupURL(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef captures(address_is_null) %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 12 uses
  %i.b = alloca ptr, align 8                      ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !47   ; 4 uses
  %i.e = ptrtoint ptr %i.d to i64                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.f = load i8, ptr %i.d, align 1, !tbaa !49    ; 2 uses
  %.not7.i = icmp eq i8 %i.f, 0
  br i1 %.not7.i, label %clear_msb.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %i.g = phi i8 [ %i.j, %.lr.ph.i ], [ %i.f, %bb.a ]
  %.08.i = phi ptr [ %i.i, %.lr.ph.i ], [ %i.d, %bb.a ] ; 2 uses
  %i.h = and i8 %i.g, 127
  %spec.select.i = tail call i8 @llvm.umax.i8(i8 %i.h, i8 32)
  store i8 %spec.select.i, ptr %.08.i, align 1, !tbaa !49
  %i.i = getelementptr inbounds nuw i8, ptr %.08.i, i64 1 ; 2 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !49    ; 2 uses
  %.not.i = icmp eq i8 %i.j, 0
  br i1 %.not.i, label %clear_msb.exit, label %.lr.ph.i, !llvm.loop !59

clear_msb.exit:                                   ; preds = %.lr.ph.i, %bb.a
  %i.k = tail call ptr @__ctype_b_loc() #16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !60   ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %clear_msb.exit
  %indvar = phi i64 [ %indvar.next, %bb.b ], [ 0, %clear_msb.exit ] ; 6 uses
  %i.m = phi ptr [ %i.s, %bb.b ], [ %i.d, %clear_msb.exit ] ; 229 uses
  %i.n = load i8, ptr %i.m, align 1, !tbaa !49
  %i.o = sext i8 %i.n to i64
  %i.p = getelementptr inbounds [2 x i8], ptr %i.l, i64 %i.o
  %i.q = load i16, ptr %i.p, align 2, !tbaa !62
  %i.r = and i16 %i.q, 8192
  %.not = icmp eq i16 %i.r, 0
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %bb.c, label %bb.b, !llvm.loop !63

bb.c:                                             ; preds = %bb.b
  store ptr %i.m, ptr %i.a, align 8
  %i.t = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.m) #15 ; 3 uses
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %.preheader.i, label %bb.j

.preheader.i:                                     ; preds = %bb.c, %bb.d
  %.0.i.i = phi ptr [ %i.y, %bb.d ], [ %0, %bb.c ] ; 4 uses
  %i.v = load i32, ptr %.0.i.i, align 8, !tbaa !46
  %i.w = add nsw i32 %i.v, -1                     ; 2 uses
  store i32 %i.w, ptr %.0.i.i, align 8, !tbaa !46
  %.not.i.i = icmp eq i32 %i.w, 0
  br i1 %.not.i.i, label %bb.d, label %string_assign_null.exit

bb.d:                                             ; preds = %.preheader.i
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !48   ; 2 uses
  %.not8.i.i = icmp eq ptr %i.y, null
  br i1 %.not8.i.i, label %bb.e, label %.preheader.i

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !47  ; 2 uses
  %.not9.i.i = icmp eq ptr %i.aa, null
  br i1 %.not9.i.i, label %string_assign_null.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @free(ptr noundef nonnull %i.aa) #14
  br label %string_assign_null.exit

string_assign_null.exit:                          ; preds = %.preheader.i, %bb.e, %bb.f
  store ptr @empty_string, ptr %i.c, align 8, !tbaa !47
  store i32 -1, ptr %0, align 8, !tbaa !46
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.ab, align 8, !tbaa !48
  %.not.i52 = icmp eq ptr %1, null
  br i1 %.not.i52, label %string_assign_null.exit58, label %.preheader.i53

.preheader.i53:                                   ; preds = %string_assign_null.exit, %bb.g
  %.0.i.i54 = phi ptr [ %i.af, %bb.g ], [ %1, %string_assign_null.exit ] ; 4 uses
  %i.ac = load i32, ptr %.0.i.i54, align 8, !tbaa !46
  %i.ad = add nsw i32 %i.ac, -1                   ; 2 uses
  store i32 %i.ad, ptr %.0.i.i54, align 8, !tbaa !46
  %.not.i.i55 = icmp eq i32 %i.ad, 0
  br i1 %.not.i.i55, label %bb.g, label %string_free.exit.i

bb.g:                                             ; preds = %.preheader.i53
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.i.i54, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !48 ; 2 uses
  %.not8.i.i56 = icmp eq ptr %i.af, null
  br i1 %.not8.i.i56, label %bb.h, label %.preheader.i53

bb.h:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.i.i54, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !47 ; 2 uses
  %.not9.i.i57 = icmp eq ptr %i.ah, null
  br i1 %.not9.i.i57, label %string_free.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @free(ptr noundef nonnull %i.ah) #14
  br label %string_free.exit.i

string_free.exit.i:                               ; preds = %.preheader.i53, %bb.i, %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr @empty_string, ptr %i.ai, align 8, !tbaa !47
  store i32 -1, ptr %1, align 8, !tbaa !46
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr null, ptr %i.aj, align 8, !tbaa !48
  br label %string_assign_null.exit58

bb.j:                                             ; preds = %bb.c
  %.not39 = icmp sgt i64 %i.t, 1
  br i1 %.not39, label %.preheader137.preheader, label %.preheader.i60

.preheader137.preheader:                          ; preds = %bb.j
  %i.ak = getelementptr i8, ptr %i.m, i64 %i.t
  br label %.preheader137

.preheader.i60:                                   ; preds = %bb.j, %bb.k
  %.0.i.i61 = phi ptr [ %i.ao, %bb.k ], [ %0, %bb.j ] ; 4 uses
  %i.al = load i32, ptr %.0.i.i61, align 8, !tbaa !46
  %i.am = add nsw i32 %i.al, -1                   ; 2 uses
  store i32 %i.am, ptr %.0.i.i61, align 8, !tbaa !46
  %.not.i.i62 = icmp eq i32 %i.am, 0
  br i1 %.not.i.i62, label %bb.k, label %string_assign_null.exit66

bb.k:                                             ; preds = %.preheader.i60
  %i.an = getelementptr inbounds nuw i8, ptr %.0.i.i61, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !48 ; 2 uses
end_hunk_0
begin_hunk_1_@str_strip:bb.a
  %i.x = getelementptr inbounds i8, ptr %.380, i64 %i.s ; 3 uses
  %.not72 = icmp ugt ptr %i.t, %i.x
  br i1 %.not72, label %.critedge4, label %bb.e, !llvm.loop !94

.critedge4:                                       ; preds = %bb.f, %bb.e
  %.3.lcssa = phi ptr [ %i.x, %bb.f ], [ %.380, %bb.e ] ; 3 uses
  %.1 = getelementptr inbounds nuw i8, ptr %.184, i64 1 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.1, i64 %3 ; 2 uses
  %.not71 = icmp ugt ptr %i.y, %.3.lcssa
  br i1 %.not71, label %._crit_edge, label %.preheader, !llvm.loop !95

._crit_edge:                                      ; preds = %.critedge4, %.critedge2
  %.2.lcssa = phi ptr [ %.161, %.critedge2 ], [ %.3.lcssa, %.critedge4 ]
  store ptr %.2.lcssa, ptr %1, align 8, !tbaa !29
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %bb.a, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strcspn(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -114, 1) i32 @string_assign_dup(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 3 uses
  %i.d = add nsw i64 %i.c, 1
  %i.e = tail call ptr @cli_malloc(i64 noundef %i.d) #14 ; 4 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @strncpy(ptr noundef nonnull %i.e, ptr noundef %1, i64 noundef %i.c) #14 ; 0 uses
  %i.g = getelementptr inbounds i8, ptr %i.e, i64 %i.c
  store i8 0, ptr %i.g, align 1, !tbaa !49
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.0.i = phi ptr [ %0, %bb.b ], [ %i.k, %bb.d ]  ; 4 uses
  %i.h = load i32, ptr %.0.i, align 8, !tbaa !46
  %i.i = add nsw i32 %i.h, -1                     ; 2 uses
  store i32 %i.i, ptr %.0.i, align 8, !tbaa !46
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %bb.d, label %string_free.exit

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !48   ; 2 uses
  %.not8.i = icmp eq ptr %i.k, null
  br i1 %.not8.i, label %bb.e, label %bb.c

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !47   ; 2 uses
  %.not9.i = icmp eq ptr %i.m, null
  br i1 %.not9.i, label %string_free.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @free(ptr noundef nonnull %i.m) #14
  br label %string_free.exit

string_free.exit:                                 ; preds = %bb.c, %bb.e, %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.e, ptr %i.n, align 8, !tbaa !47
  store i32 1, ptr %0, align 8, !tbaa !46
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.o, align 8, !tbaa !48
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %string_free.exit
  %.0 = phi i32 [ 0, %string_free.exit ], [ -114, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @str_fixup_spaces(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull captures(none) %1) unnamed_addr #10 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.c = load ptr, ptr %0, align 8, !tbaa !29     ; 3 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.d = load ptr, ptr %1, align 8, !tbaa !29     ; 3 uses
  store ptr %i.d, ptr %i.b, align 8, !tbaa !29
  %i.e = icmp eq ptr %i.c, null
  %i.f = icmp eq ptr %i.d, null
  %i.g = icmp ult ptr %i.d, %i.c
  %i.h = or i1 %i.f, %i.g
  %or.cond7 = select i1 %i.e, i1 true, i1 %i.h
  br i1 %or.cond7, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call fastcc void @str_strip(ptr noundef %i.a, ptr noundef %i.b, ptr noundef nonnull @.str.26, i64 noundef 1)
  %i.i = tail call ptr @__ctype_b_loc() #16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !60   ; 2 uses
  %i.k = load ptr, ptr %i.b, align 8              ; 2 uses
  %.promoted = load ptr, ptr %i.a, align 8, !tbaa !29
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.l = phi ptr [ %i.t, %bb.c ], [ %.promoted, %bb.b ] ; 5 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !49
  %i.n = sext i8 %i.m to i64
  %i.o = getelementptr inbounds [2 x i8], ptr %i.j, i64 %i.n
  %i.p = load i16, ptr %i.o, align 2, !tbaa !62
  %i.q = and i16 %i.p, 8
  %.not = icmp eq i16 %i.q, 0
  %i.r = icmp ule ptr %i.l, %i.k
  %i.s = select i1 %.not, i1 %i.r, i1 false
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  br i1 %i.s, label %bb.c, label %.preheader, !llvm.loop !96

.preheader:                                       ; preds = %bb.c, %.preheader
  %i.u = phi ptr [ %i.ac, %.preheader ], [ %i.k, %bb.c ] ; 4 uses
  %i.v = load i8, ptr %i.u, align 1, !tbaa !49
  %i.w = sext i8 %i.v to i64
  %i.x = getelementptr inbounds [2 x i8], ptr %i.j, i64 %i.w
  %i.y = load i16, ptr %i.x, align 2, !tbaa !62
  %i.z = and i16 %i.y, 8
  %.not6 = icmp eq i16 %i.z, 0
  %i.aa = icmp uge ptr %i.u, %i.l
  %i.ab = and i1 %i.aa, %.not6
  %i.ac = getelementptr inbounds i8, ptr %i.u, i64 -1
  br i1 %i.ab, label %.preheader, label %bb.d, !llvm.loop !97

bb.d:                                             ; preds = %.preheader
  store ptr %i.l, ptr %0, align 8, !tbaa !29
  store ptr %i.u, ptr %1, align 8, !tbaa !29
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_tolower_loc() local_unnamed_addr #8

declare i32 @whitelist_match(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @cli_regexec(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -114, 1) i32 @get_host(ptr noundef %0, ptr noundef %1, i32 noundef range(i32 0, 2) %2, ptr nofree noundef nonnull captures(none) %3, ptr nofree noundef nonnull writeonly captures(none) %4, ptr nofree noundef nonnull writeonly captures(none) %5) unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %5, align 8, !tbaa !29
  store ptr null, ptr %4, align 8, !tbaa !29
  br label %isTLD.exit

bb.c:                                             ; preds = %bb.a
  %i.a = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) @.str.29) #15 ; 2 uses
  %.not75 = icmp eq ptr %i.a, null
  br i1 %.not75, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.b = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(8) @mailto, i64 noundef 7) #15
  %.not76 = icmp eq i32 %i.b, 0
  br i1 %.not76, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not77 = icmp eq i32 %2, 0
  br i1 %.not77, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.c = load i32, ptr %3, align 4, !tbaa !4
  %i.d = and i32 %i.c, 4
  %.not78 = icmp eq i32 %i.d, 0
  br i1 %.not78, label %.preheader, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.e = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #15
  %i.f = tail call i64 @strcspn(ptr noundef nonnull %1, ptr noundef nonnull @.str.30) #15 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.i = icmp samesign eq i64 %i.f, %i.e
  %spec.select = select i1 %i.i, ptr %1, ptr %i.h
  br label %.preheader

.critedge:                                        ; preds = %bb.e
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.31, ptr noundef nonnull %1) #14
  br label %.preheader

bb.h:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  br label %.preheader

bb.i:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 7 ; 4 uses
  %6 = trunc nuw i32 %2 to i1
  br i1 %6, label %bb.n, label %.preheader

.preheader:                                       ; preds = %bb.g, %bb.f, %.critedge, %bb.h, %bb.i
  %.164113 = phi ptr [ %i.k, %bb.i ], [ %1, %bb.f ], [ %spec.select, %bb.g ], [ %1, %.critedge ], [ %i.j, %bb.h ] ; 5 uses
  %i.l = tail call i64 @strcspn(ptr noundef nonnull %.164113, ptr noundef nonnull @.str.32) #15 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.164113, i64 %i.l ; 3 uses
  %i.n = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %.164113, i32 noundef 64) #15 ; 3 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %.thread90, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.not79115 = icmp samesign ne i64 %i.l, 0
  %i.q = icmp ugt ptr %i.n, %i.m
  %or.cond83116 = select i1 %.not79115, i1 %i.q, i1 false
  br i1 %or.cond83116, label %.thread90, label %.lr.ph117

bb.j:                                             ; preds = %.thread
  %.not79 = icmp samesign ne i64 %i.ai, 0
  %i.r = icmp ugt ptr %i.ak, %i.aj
  %or.cond83 = select i1 %.not79, i1 %i.r, i1 false
  br i1 %or.cond83, label %.thread90, label %.lr.ph117

.lr.ph117:                                        ; preds = %.lr.ph, %bb.j
  %i.s = phi ptr [ %i.ak, %bb.j ], [ %i.n, %.lr.ph ] ; 3 uses
  %i.t = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %i.s, i32 noundef 46) #15 ; 3 uses
  %.not80 = icmp eq ptr %i.t, null
  br i1 %.not80, label %.thread, label %bb.k

bb.k:                                             ; preds = %.lr.ph117
  %i.u = ptrtoint ptr %i.t to i64                 ; 2 uses
  %i.v = ptrtoint ptr %i.s to i64                 ; 2 uses
  %i.w = sub i64 %i.u, %i.v
  %sext = shl i64 %i.w, 32
  %i.x = ashr exact i64 %sext, 32
  %i.y = tail call ptr @cli_malloc(i64 noundef %i.x) #14 ; 5 uses
  %.not.i = icmp eq ptr %i.y, null
  br i1 %.not.i, label %isTLD.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.z = xor i64 %i.v, -1
  %i.aa = add i64 %i.u, %i.z
  %sext95 = shl i64 %i.aa, 32
  %i.ab = ashr exact i64 %sext95, 32              ; 2 uses
  %i.ac = tail call ptr @strncpy(ptr noundef nonnull %i.y, ptr noundef nonnull readonly %i.t, i64 noundef %i.ab) #14 ; 0 uses
  %i.ad = getelementptr inbounds i8, ptr %i.y, i64 %i.ab
  store i8 0, ptr %i.ad, align 1, !tbaa !49
  %i.ae = tail call i32 @cli_regexec(ptr noundef nonnull %i.p, ptr noundef nonnull %i.y, i64 noundef 0, ptr noundef null, i32 noundef 0) #14
  %.not14.i.not = icmp eq i32 %i.ae, 0
  tail call void @free(ptr noundef nonnull %i.y) #14
  br i1 %.not14.i.not, label %bb.m, label %.thread

bb.m:                                             ; preds = %bb.l
  %i.af = load i32, ptr %3, align 4, !tbaa !4
  %i.ag = or i32 %i.af, 1
  store i32 %i.ag, ptr %3, align 4, !tbaa !4
  br label %.thread

.thread:                                          ; preds = %.lr.ph117, %bb.m, %bb.l
  %i.ah = getelementptr inbounds nuw i8, ptr %i.s, i64 1 ; 5 uses
  %i.ai = tail call i64 @strcspn(ptr noundef nonnull %i.ah, ptr noundef nonnull @.str.32) #15 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ai ; 3 uses
  %i.ak = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.ah, i32 noundef 64) #15 ; 3 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %.thread90, label %bb.j

bb.n:                                             ; preds = %bb.i
  %i.am = load i32, ptr %3, align 4, !tbaa !4
  %i.an = or i32 %i.am, 4
  store i32 %i.an, ptr %3, align 4, !tbaa !4
  %i.ao = tail call i64 @strcspn(ptr noundef nonnull %i.k, ptr noundef nonnull @.str.32) #15
  %i.ap = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.ao
  br label %.thread90

.thread90:                                        ; preds = %.thread, %bb.j, %.lr.ph, %.preheader, %bb.n
  %.594 = phi ptr [ %.164113, %.preheader ], [ %i.k, %bb.n ], [ %.164113, %.lr.ph ], [ %i.ah, %bb.j ], [ %i.ah, %.thread ]
  %.2 = phi ptr [ %i.m, %.preheader ], [ %i.ap, %bb.n ], [ %i.m, %.lr.ph ], [ %i.aj, %bb.j ], [ %i.aj, %.thread ]
  store ptr %.594, ptr %4, align 8, !tbaa !29
  store ptr %.2, ptr %5, align 8, !tbaa !29
  br label %isTLD.exit

isTLD.exit:                                       ; preds = %bb.k, %.thread90, %bb.b
  %.1 = phi i32 [ 0, %.thread90 ], [ 0, %bb.b ], [ -114, %bb.k ]
  ret i32 %.1
}

; Function Attrs: nofree nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @isNumeric(ptr nofree noundef readonly captures(none) %0) unnamed_addr #11 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #15
  %i.g = trunc i64 %i.f to i32                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #14
  store i32 0, ptr %i.e, align 4, !tbaa !4
  %i.h = add i32 %i.g, -16
  %or.cond = icmp ult i32 %i.h, -9
  br i1 %or.cond, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %0, ptr noundef nonnull @.str.33, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #14 ; 0 uses
  %i.j = load i32, ptr %i.e, align 4, !tbaa !4
  %i.k = icmp eq i32 %i.j, %i.g
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = load i32, ptr %i.a, align 4, !tbaa !4
  %or.cond3 = icmp ult i32 %i.l, 257
  %i.m = load i32, ptr %i.b, align 4
  %i.n = icmp ult i32 %i.m, 257
  %or.cond7 = select i1 %or.cond3, i1 %i.n, i1 false
  %i.o = load i32, ptr %i.c, align 4
  %i.p = icmp ult i32 %i.o, 257
  %or.cond11 = select i1 %or.cond7, i1 %i.p, i1 false
  %i.q = load i32, ptr %i.d, align 4
  %i.r = icmp ult i32 %i.q, 257
  %or.cond15 = select i1 %or.cond11, i1 %i.r, i1 false
  br i1 %or.cond15, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.a, %bb.d
  %.0 = phi i32 [ 0, %bb.d ], [ 0, %bb.a ], [ 1, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret i32 %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @__isoc99_sscanf(ptr noundef readonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #12

; Function Attrs: nounwind uwtable
define internal fastcc void @get_domain(ptr noundef %0, ptr nofree noundef nonnull captures(none) %1, ptr noundef nonnull %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !47   ; 2 uses
  %i.c = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %i.b, i32 noundef 46) #15 ; 4 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.36, ptr noundef nonnull %i.b) #14
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.0.i.i = phi ptr [ %1, %bb.b ], [ %i.g, %bb.d ] ; 4 uses
  %i.d = load i32, ptr %.0.i.i, align 8, !tbaa !46
  %i.e = add nsw i32 %i.d, -1                     ; 2 uses
  store i32 %i.e, ptr %.0.i.i, align 8, !tbaa !46
  %.not.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i, label %bb.d, label %string_assign.exit

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !48   ; 2 uses
  %.not8.i.i = icmp eq ptr %i.g, null
  br i1 %.not8.i.i, label %bb.e, label %bb.c

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !47   ; 2 uses
  %.not9.i.i = icmp eq ptr %i.i, null
  br i1 %.not9.i.i, label %string_assign.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @free(ptr noundef nonnull %i.i) #14
  br label %string_assign.exit

string_assign.exit:                               ; preds = %bb.c, %bb.e, %bb.f
  %i.j = load i32, ptr %2, align 8, !tbaa !46
  %i.k = add nsw i32 %i.j, 1
  store i32 %i.k, ptr %2, align 8, !tbaa !46
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !47
  br label %.critedge

bb.g:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.o = tail call i32 @cli_regexec(ptr noundef nonnull %i.n, ptr noundef nonnull %i.m, i64 noundef 0, ptr noundef null, i32 noundef 0) #14
  %.not.i.not = icmp eq i32 %i.o, 0
  br i1 %.not.i.not, label %bb.h, label %isTLD.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !47   ; 3 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %.loopexit74, label %.lr.ph.preheader.i
end_hunk_1
