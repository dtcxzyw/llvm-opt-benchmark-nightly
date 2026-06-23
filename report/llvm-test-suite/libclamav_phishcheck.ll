inline.NumInlined: 84
inline.NumDeleted: 25
begin_hunk_0_@url_get_host:bb.a
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
  br i1 %.not.not, label %bb.j, label %bb.k

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
  br i1 %.not.not, label %bb.v, label %bb.u

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
  %i.a = alloca ptr, align 8                      ; 14 uses
  %i.b = alloca ptr, align 8                      ; 13 uses
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
  %3 = getelementptr i8, ptr %i.m, i64 %i.t
  %4 = getelementptr i8, ptr %3, i64 -1           ; 2 uses
  store ptr %4, ptr %i.b, align 8, !tbaa !29
  %.not39 = icmp sgt i64 %i.t, 1
  br i1 %.not39, label %.preheader137, label %.preheader.i60

.preheader.i60:                                   ; preds = %bb.j, %bb.k
  %.0.i.i61 = phi ptr [ %i.an, %bb.k ], [ %0, %bb.j ] ; 4 uses
  %i.ak = load i32, ptr %.0.i.i61, align 8, !tbaa !46
  %i.al = add nsw i32 %i.ak, -1                   ; 2 uses
  store i32 %i.al, ptr %.0.i.i61, align 8, !tbaa !46
  %.not.i.i62 = icmp eq i32 %i.al, 0
  br i1 %.not.i.i62, label %bb.k, label %string_assign_null.exit66

bb.k:                                             ; preds = %.preheader.i60
  %i.am = getelementptr inbounds nuw i8, ptr %.0.i.i61, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !48 ; 2 uses
  %.not8.i.i64 = icmp eq ptr %i.an, null
  br i1 %.not8.i.i64, label %bb.l, label %.preheader.i60

bb.l:                                             ; preds = %bb.k
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.i.i61, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !47 ; 2 uses
  %.not9.i.i65 = icmp eq ptr %i.ap, null
  br i1 %.not9.i.i65, label %string_assign_null.exit66, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @free(ptr noundef nonnull %i.ap) #14
  br label %string_assign_null.exit66

string_assign_null.exit66:                        ; preds = %.preheader.i60, %bb.l, %bb.m
  store ptr @empty_string, ptr %i.c, align 8, !tbaa !47
  store i32 -1, ptr %0, align 8, !tbaa !46
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.aq, align 8, !tbaa !48
  %.not.i67 = icmp eq ptr %1, null
  br i1 %.not.i67, label %string_assign_null.exit58, label %.preheader.i68

.preheader.i68:                                   ; preds = %string_assign_null.exit66, %bb.n
  %.0.i.i69 = phi ptr [ %i.au, %bb.n ], [ %1, %string_assign_null.exit66 ] ; 4 uses
  %i.ar = load i32, ptr %.0.i.i69, align 8, !tbaa !46
  %i.as = add nsw i32 %i.ar, -1                   ; 2 uses
  store i32 %i.as, ptr %.0.i.i69, align 8, !tbaa !46
  %.not.i.i70 = icmp eq i32 %i.as, 0
  br i1 %.not.i.i70, label %bb.n, label %string_free.exit.i71

bb.n:                                             ; preds = %.preheader.i68
  %i.at = getelementptr inbounds nuw i8, ptr %.0.i.i69, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !48 ; 2 uses
  %.not8.i.i72 = icmp eq ptr %i.au, null
  br i1 %.not8.i.i72, label %bb.o, label %.preheader.i68

bb.o:                                             ; preds = %bb.n
  %i.av = getelementptr inbounds nuw i8, ptr %.0.i.i69, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !47 ; 2 uses
  %.not9.i.i73 = icmp eq ptr %i.aw, null
  br i1 %.not9.i.i73, label %string_free.exit.i71, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @free(ptr noundef nonnull %i.aw) #14
  br label %string_free.exit.i71

string_free.exit.i71:                             ; preds = %.preheader.i68, %bb.p, %bb.o
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr @empty_string, ptr %i.ax, align 8, !tbaa !47
  store i32 -1, ptr %1, align 8, !tbaa !46
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr null, ptr %i.ay, align 8, !tbaa !48
  br label %string_assign_null.exit58

.preheader137:                                    ; preds = %bb.j, %.preheader137
  %i.az = phi ptr [ %5, %.preheader137 ], [ %4, %bb.j ] ; 14 uses
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !49
  %i.bb = sext i8 %i.ba to i64
  %i.bc = getelementptr inbounds [2 x i8], ptr %i.l, i64 %i.bb
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !62
  %i.be = and i16 %i.bd, 8192
  %.not40 = icmp eq i16 %i.be, 0
  %5 = getelementptr inbounds i8, ptr %i.az, i64 -1
  br i1 %.not40, label %bb.q, label %.preheader137, !llvm.loop !64

bb.q:                                             ; preds = %.preheader137
  store ptr %i.az, ptr %i.b, align 8
  %i.bf = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.m, ptr noundef nonnull dereferenceable(5) @dotnet, i64 noundef 4) #15
  %.not41 = icmp eq i32 %i.bf, 0
  br i1 %.not41, label %.preheader.i76.preheader, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bg = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.m, ptr noundef nonnull dereferenceable(8) @adonet, i64 noundef 7) #15
  %.not42 = icmp eq i32 %i.bg, 0
  br i1 %.not42, label %.preheader.i76.preheader, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bh = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.m, ptr noundef nonnull dereferenceable(8) @aspnet, i64 noundef 7) #15
  %.not43 = icmp eq i32 %i.bh, 0
  br i1 %.not43, label %.preheader.i76.preheader, label %bb.z

.preheader.i76.preheader:                         ; preds = %bb.s, %bb.r, %bb.q
  br label %.preheader.i76

.preheader.i76:                                   ; preds = %.preheader.i76.preheader, %bb.t
  %.0.i.i77 = phi ptr [ %i.bl, %bb.t ], [ %0, %.preheader.i76.preheader ] ; 4 uses
  %i.bi = load i32, ptr %.0.i.i77, align 8, !tbaa !46
  %i.bj = add nsw i32 %i.bi, -1                   ; 2 uses
  store i32 %i.bj, ptr %.0.i.i77, align 8, !tbaa !46
  %.not.i.i78 = icmp eq i32 %i.bj, 0
  br i1 %.not.i.i78, label %bb.t, label %string_assign_null.exit82

bb.t:                                             ; preds = %.preheader.i76
  %i.bk = getelementptr inbounds nuw i8, ptr %.0.i.i77, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !48 ; 2 uses
  %.not8.i.i80 = icmp eq ptr %i.bl, null
  br i1 %.not8.i.i80, label %bb.u, label %.preheader.i76

bb.u:                                             ; preds = %bb.t
  %i.bm = getelementptr inbounds nuw i8, ptr %.0.i.i77, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !47 ; 2 uses
  %.not9.i.i81 = icmp eq ptr %i.bn, null
  br i1 %.not9.i.i81, label %string_assign_null.exit82, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @free(ptr noundef nonnull %i.bn) #14
  br label %string_assign_null.exit82

string_assign_null.exit82:                        ; preds = %.preheader.i76, %bb.u, %bb.v
  store ptr @empty_string, ptr %i.c, align 8, !tbaa !47
  store i32 -1, ptr %0, align 8, !tbaa !46
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.bo, align 8, !tbaa !48
  %.not.i83 = icmp eq ptr %1, null
  br i1 %.not.i83, label %string_assign_null.exit58, label %.preheader.i84

.preheader.i84:                                   ; preds = %string_assign_null.exit82, %bb.w
  %.0.i.i85 = phi ptr [ %i.bs, %bb.w ], [ %1, %string_assign_null.exit82 ] ; 4 uses
  %i.bp = load i32, ptr %.0.i.i85, align 8, !tbaa !46
  %i.bq = add nsw i32 %i.bp, -1                   ; 2 uses
  store i32 %i.bq, ptr %.0.i.i85, align 8, !tbaa !46
  %.not.i.i86 = icmp eq i32 %i.bq, 0
  br i1 %.not.i.i86, label %bb.w, label %string_free.exit.i87

bb.w:                                             ; preds = %.preheader.i84
  %i.br = getelementptr inbounds nuw i8, ptr %.0.i.i85, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !48 ; 2 uses
  %.not8.i.i88 = icmp eq ptr %i.bs, null
  br i1 %.not8.i.i88, label %bb.x, label %.preheader.i84

bb.x:                                             ; preds = %bb.w
  %i.bt = getelementptr inbounds nuw i8, ptr %.0.i.i85, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !47 ; 2 uses
  %.not9.i.i89 = icmp eq ptr %i.bu, null
  br i1 %.not9.i.i89, label %string_free.exit.i87, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @free(ptr noundef nonnull %i.bu) #14
  br label %string_free.exit.i87

string_free.exit.i87:                             ; preds = %.preheader.i84, %bb.y, %bb.x
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr @empty_string, ptr %i.bv, align 8, !tbaa !47
  store i32 -1, ptr %1, align 8, !tbaa !46
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr null, ptr %i.bw, align 8, !tbaa !48
  br label %string_assign_null.exit58

bb.z:                                             ; preds = %bb.s
  %.not6.i = icmp ugt ptr %i.m, %i.az
  br i1 %.not6.i, label %str_replace.exit112, label %iter.check

iter.check:                                       ; preds = %bb.z
  %i.bx = add i64 %indvar, %i.e
  %i.by = ptrtoaddr ptr %i.m to i64
  %i.bz = add i64 %i.by, 1
  %i.ca = ptrtoaddr ptr %i.az to i64
  %i.cb = add i64 %i.ca, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.bz, i64 %i.cb)
  %i.cc = sub i64 %umax, %i.bx                    ; 7 uses
  %min.iters.check = icmp ult i64 %i.cc, 8
  br i1 %min.iters.check, label %.lr.ph.i91.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check15 = icmp ult i64 %i.cc, 32
  br i1 %min.iters.check15, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.cc, 24
  %n.vec = and i64 %i.cc, -32                     ; 4 uses
  %i.cd = getelementptr i8, ptr %i.m, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue109, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue109 ] ; 33 uses
  %next.gep = getelementptr i8, ptr %i.m, i64 %index ; 3 uses
  %i.ce = getelementptr i8, ptr %i.m, i64 %index
  %next.gep16 = getelementptr i8, ptr %i.ce, i64 1
  %i.cf = getelementptr i8, ptr %i.m, i64 %index
  %next.gep17 = getelementptr i8, ptr %i.cf, i64 2
  %i.cg = getelementptr i8, ptr %i.m, i64 %index
  %next.gep18 = getelementptr i8, ptr %i.cg, i64 3
  %i.ch = getelementptr i8, ptr %i.m, i64 %index
  %next.gep19 = getelementptr i8, ptr %i.ch, i64 4
  %i.ci = getelementptr i8, ptr %i.m, i64 %index
  %next.gep20 = getelementptr i8, ptr %i.ci, i64 5
  %i.cj = getelementptr i8, ptr %i.m, i64 %index
  %next.gep21 = getelementptr i8, ptr %i.cj, i64 6
  %i.ck = getelementptr i8, ptr %i.m, i64 %index
  %next.gep22 = getelementptr i8, ptr %i.ck, i64 7
  %i.cl = getelementptr i8, ptr %i.m, i64 %index
  %next.gep23 = getelementptr i8, ptr %i.cl, i64 8
  %i.cm = getelementptr i8, ptr %i.m, i64 %index
  %next.gep24 = getelementptr i8, ptr %i.cm, i64 9
  %i.cn = getelementptr i8, ptr %i.m, i64 %index
  %next.gep25 = getelementptr i8, ptr %i.cn, i64 10
  %i.co = getelementptr i8, ptr %i.m, i64 %index
  %next.gep26 = getelementptr i8, ptr %i.co, i64 11
  %i.cp = getelementptr i8, ptr %i.m, i64 %index
  %next.gep27 = getelementptr i8, ptr %i.cp, i64 12
  %i.cq = getelementptr i8, ptr %i.m, i64 %index
  %next.gep28 = getelementptr i8, ptr %i.cq, i64 13
  %i.cr = getelementptr i8, ptr %i.m, i64 %index
  %next.gep29 = getelementptr i8, ptr %i.cr, i64 14
  %i.cs = getelementptr i8, ptr %i.m, i64 %index
  %next.gep30 = getelementptr i8, ptr %i.cs, i64 15
  %i.ct = getelementptr i8, ptr %i.m, i64 %index
  %next.gep31 = getelementptr i8, ptr %i.ct, i64 16
  %i.cu = getelementptr i8, ptr %i.m, i64 %index
  %next.gep32 = getelementptr i8, ptr %i.cu, i64 17
  %i.cv = getelementptr i8, ptr %i.m, i64 %index
  %next.gep33 = getelementptr i8, ptr %i.cv, i64 18
  %i.cw = getelementptr i8, ptr %i.m, i64 %index
  %next.gep34 = getelementptr i8, ptr %i.cw, i64 19
  %i.cx = getelementptr i8, ptr %i.m, i64 %index
  %next.gep35 = getelementptr i8, ptr %i.cx, i64 20
  %i.cy = getelementptr i8, ptr %i.m, i64 %index
  %next.gep36 = getelementptr i8, ptr %i.cy, i64 21
  %i.cz = getelementptr i8, ptr %i.m, i64 %index
  %next.gep37 = getelementptr i8, ptr %i.cz, i64 22
  %i.da = getelementptr i8, ptr %i.m, i64 %index
  %next.gep38 = getelementptr i8, ptr %i.da, i64 23
  %i.db = getelementptr i8, ptr %i.m, i64 %index
  %next.gep39 = getelementptr i8, ptr %i.db, i64 24
  %i.dc = getelementptr i8, ptr %i.m, i64 %index
  %next.gep40 = getelementptr i8, ptr %i.dc, i64 25
  %i.dd = getelementptr i8, ptr %i.m, i64 %index
  %next.gep41 = getelementptr i8, ptr %i.dd, i64 26
  %i.de = getelementptr i8, ptr %i.m, i64 %index
  %next.gep42 = getelementptr i8, ptr %i.de, i64 27
  %i.df = getelementptr i8, ptr %i.m, i64 %index
  %next.gep43 = getelementptr i8, ptr %i.df, i64 28
  %i.dg = getelementptr i8, ptr %i.m, i64 %index
  %next.gep44 = getelementptr i8, ptr %i.dg, i64 29
  %i.dh = getelementptr i8, ptr %i.m, i64 %index
  %next.gep45 = getelementptr i8, ptr %i.dh, i64 30
  %i.di = getelementptr i8, ptr %i.m, i64 %index
  %next.gep46 = getelementptr i8, ptr %i.di, i64 31
  %i.dj = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !49
  %wide.load47 = load <16 x i8>, ptr %i.dj, align 1, !tbaa !49
  %i.dk = icmp eq <16 x i8> %wide.load, splat (i8 92) ; 16 uses
  %i.dl = icmp eq <16 x i8> %wide.load47, splat (i8 92) ; 16 uses
  %i.dm = extractelement <16 x i1> %i.dk, i64 0
  br i1 %i.dm, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  store i8 47, ptr %next.gep, align 1, !tbaa !49
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.dn = extractelement <16 x i1> %i.dk, i64 1
  br i1 %i.dn, label %pred.store.if48, label %pred.store.continue49

pred.store.if48:                                  ; preds = %pred.store.continue
  store i8 47, ptr %next.gep16, align 1, !tbaa !49
  br label %pred.store.continue49

pred.store.continue49:                            ; preds = %pred.store.if48, %pred.store.continue
  %i.do = extractelement <16 x i1> %i.dk, i64 2
  br i1 %i.do, label %pred.store.if50, label %pred.store.continue51

pred.store.if50:                                  ; preds = %pred.store.continue49
  store i8 47, ptr %next.gep17, align 1, !tbaa !49
  br label %pred.store.continue51

pred.store.continue51:                            ; preds = %pred.store.if50, %pred.store.continue49
  %i.dp = extractelement <16 x i1> %i.dk, i64 3
  br i1 %i.dp, label %pred.store.if52, label %pred.store.continue53

pred.store.if52:                                  ; preds = %pred.store.continue51
  store i8 47, ptr %next.gep18, align 1, !tbaa !49
  br label %pred.store.continue53

pred.store.continue53:                            ; preds = %pred.store.if52, %pred.store.continue51
  %i.dq = extractelement <16 x i1> %i.dk, i64 4
  br i1 %i.dq, label %pred.store.if54, label %pred.store.continue55

pred.store.if54:                                  ; preds = %pred.store.continue53
  store i8 47, ptr %next.gep19, align 1, !tbaa !49
  br label %pred.store.continue55

pred.store.continue55:                            ; preds = %pred.store.if54, %pred.store.continue53
  %i.dr = extractelement <16 x i1> %i.dk, i64 5
  br i1 %i.dr, label %pred.store.if56, label %pred.store.continue57

pred.store.if56:                                  ; preds = %pred.store.continue55
  store i8 47, ptr %next.gep20, align 1, !tbaa !49
  br label %pred.store.continue57

pred.store.continue57:                            ; preds = %pred.store.if56, %pred.store.continue55
  %i.ds = extractelement <16 x i1> %i.dk, i64 6
  br i1 %i.ds, label %pred.store.if58, label %pred.store.continue59

pred.store.if58:                                  ; preds = %pred.store.continue57
  store i8 47, ptr %next.gep21, align 1, !tbaa !49
  br label %pred.store.continue59

pred.store.continue59:                            ; preds = %pred.store.if58, %pred.store.continue57
  %i.dt = extractelement <16 x i1> %i.dk, i64 7
  br i1 %i.dt, label %pred.store.if60, label %pred.store.continue61

pred.store.if60:                                  ; preds = %pred.store.continue59
  store i8 47, ptr %next.gep22, align 1, !tbaa !49
  br label %pred.store.continue61

pred.store.continue61:                            ; preds = %pred.store.if60, %pred.store.continue59
  %i.du = extractelement <16 x i1> %i.dk, i64 8
  br i1 %i.du, label %pred.store.if62, label %pred.store.continue63

pred.store.if62:                                  ; preds = %pred.store.continue61
  store i8 47, ptr %next.gep23, align 1, !tbaa !49
  br label %pred.store.continue63

pred.store.continue63:                            ; preds = %pred.store.if62, %pred.store.continue61
  %i.dv = extractelement <16 x i1> %i.dk, i64 9
  br i1 %i.dv, label %pred.store.if64, label %pred.store.continue65

pred.store.if64:                                  ; preds = %pred.store.continue63
  store i8 47, ptr %next.gep24, align 1, !tbaa !49
  br label %pred.store.continue65

pred.store.continue65:                            ; preds = %pred.store.if64, %pred.store.continue63
  %i.dw = extractelement <16 x i1> %i.dk, i64 10
  br i1 %i.dw, label %pred.store.if66, label %pred.store.continue67

pred.store.if66:                                  ; preds = %pred.store.continue65
  store i8 47, ptr %next.gep25, align 1, !tbaa !49
  br label %pred.store.continue67

pred.store.continue67:                            ; preds = %pred.store.if66, %pred.store.continue65
  %i.dx = extractelement <16 x i1> %i.dk, i64 11
  br i1 %i.dx, label %pred.store.if68, label %pred.store.continue69

pred.store.if68:                                  ; preds = %pred.store.continue67
  store i8 47, ptr %next.gep26, align 1, !tbaa !49
  br label %pred.store.continue69

pred.store.continue69:                            ; preds = %pred.store.if68, %pred.store.continue67
  %i.dy = extractelement <16 x i1> %i.dk, i64 12
  br i1 %i.dy, label %pred.store.if70, label %pred.store.continue71

pred.store.if70:                                  ; preds = %pred.store.continue69
  store i8 47, ptr %next.gep27, align 1, !tbaa !49
  br label %pred.store.continue71

pred.store.continue71:                            ; preds = %pred.store.if70, %pred.store.continue69
  %i.dz = extractelement <16 x i1> %i.dk, i64 13
  br i1 %i.dz, label %pred.store.if72, label %pred.store.continue73

pred.store.if72:                                  ; preds = %pred.store.continue71
  store i8 47, ptr %next.gep28, align 1, !tbaa !49
  br label %pred.store.continue73

pred.store.continue73:                            ; preds = %pred.store.if72, %pred.store.continue71
  %i.ea = extractelement <16 x i1> %i.dk, i64 14
  br i1 %i.ea, label %pred.store.if74, label %pred.store.continue75
end_hunk_0
begin_hunk_1_@cleanupURL:bb.a
  br label %pred.store.continue91

pred.store.continue91:                            ; preds = %pred.store.if90, %pred.store.continue89
  %i.ej = extractelement <16 x i1> %i.dl, i64 7
  br i1 %i.ej, label %pred.store.if92, label %pred.store.continue93

pred.store.if92:                                  ; preds = %pred.store.continue91
  store i8 47, ptr %next.gep38, align 1, !tbaa !49
  br label %pred.store.continue93

pred.store.continue93:                            ; preds = %pred.store.if92, %pred.store.continue91
  %i.ek = extractelement <16 x i1> %i.dl, i64 8
  br i1 %i.ek, label %pred.store.if94, label %pred.store.continue95

pred.store.if94:                                  ; preds = %pred.store.continue93
  store i8 47, ptr %next.gep39, align 1, !tbaa !49
  br label %pred.store.continue95

pred.store.continue95:                            ; preds = %pred.store.if94, %pred.store.continue93
  %i.el = extractelement <16 x i1> %i.dl, i64 9
  br i1 %i.el, label %pred.store.if96, label %pred.store.continue97

pred.store.if96:                                  ; preds = %pred.store.continue95
  store i8 47, ptr %next.gep40, align 1, !tbaa !49
  br label %pred.store.continue97

pred.store.continue97:                            ; preds = %pred.store.if96, %pred.store.continue95
  %i.em = extractelement <16 x i1> %i.dl, i64 10
  br i1 %i.em, label %pred.store.if98, label %pred.store.continue99

pred.store.if98:                                  ; preds = %pred.store.continue97
  store i8 47, ptr %next.gep41, align 1, !tbaa !49
  br label %pred.store.continue99

pred.store.continue99:                            ; preds = %pred.store.if98, %pred.store.continue97
  %i.en = extractelement <16 x i1> %i.dl, i64 11
  br i1 %i.en, label %pred.store.if100, label %pred.store.continue101

pred.store.if100:                                 ; preds = %pred.store.continue99
  store i8 47, ptr %next.gep42, align 1, !tbaa !49
  br label %pred.store.continue101

pred.store.continue101:                           ; preds = %pred.store.if100, %pred.store.continue99
  %i.eo = extractelement <16 x i1> %i.dl, i64 12
  br i1 %i.eo, label %pred.store.if102, label %pred.store.continue103

pred.store.if102:                                 ; preds = %pred.store.continue101
  store i8 47, ptr %next.gep43, align 1, !tbaa !49
  br label %pred.store.continue103

pred.store.continue103:                           ; preds = %pred.store.if102, %pred.store.continue101
  %i.ep = extractelement <16 x i1> %i.dl, i64 13
  br i1 %i.ep, label %pred.store.if104, label %pred.store.continue105

pred.store.if104:                                 ; preds = %pred.store.continue103
  store i8 47, ptr %next.gep44, align 1, !tbaa !49
  br label %pred.store.continue105

pred.store.continue105:                           ; preds = %pred.store.if104, %pred.store.continue103
  %i.eq = extractelement <16 x i1> %i.dl, i64 14
  br i1 %i.eq, label %pred.store.if106, label %pred.store.continue107

pred.store.if106:                                 ; preds = %pred.store.continue105
  store i8 47, ptr %next.gep45, align 1, !tbaa !49
  br label %pred.store.continue107

pred.store.continue107:                           ; preds = %pred.store.if106, %pred.store.continue105
  %i.er = extractelement <16 x i1> %i.dl, i64 15
  br i1 %i.er, label %pred.store.if108, label %pred.store.continue109

pred.store.if108:                                 ; preds = %pred.store.continue107
  store i8 47, ptr %next.gep46, align 1, !tbaa !49
  br label %pred.store.continue109

pred.store.continue109:                           ; preds = %pred.store.if108, %pred.store.continue107
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.es = icmp eq i64 %index.next, %n.vec
  br i1 %i.es, label %middle.block, label %vector.body, !llvm.loop !65

middle.block:                                     ; preds = %pred.store.continue109
  %cmp.n = icmp eq i64 %i.cc, %n.vec
  br i1 %cmp.n, label %iter.check252, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i91.preheader, label %vec.epilog.ph, !prof !68

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec111 = and i64 %i.cc, -8                   ; 3 uses
  %i.et = getelementptr i8, ptr %i.m, i64 %n.vec111
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %pred.store.continue137, %vec.epilog.ph
  %index112 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next138, %pred.store.continue137 ] ; 9 uses
  %next.gep113 = getelementptr i8, ptr %i.m, i64 %index112 ; 2 uses
  %i.eu = getelementptr i8, ptr %i.m, i64 %index112
  %next.gep114 = getelementptr i8, ptr %i.eu, i64 1
  %i.ev = getelementptr i8, ptr %i.m, i64 %index112
  %next.gep115 = getelementptr i8, ptr %i.ev, i64 2
  %i.ew = getelementptr i8, ptr %i.m, i64 %index112
  %next.gep116 = getelementptr i8, ptr %i.ew, i64 3
  %i.ex = getelementptr i8, ptr %i.m, i64 %index112
  %next.gep117 = getelementptr i8, ptr %i.ex, i64 4
  %i.ey = getelementptr i8, ptr %i.m, i64 %index112
  %next.gep118 = getelementptr i8, ptr %i.ey, i64 5
  %i.ez = getelementptr i8, ptr %i.m, i64 %index112
  %next.gep119 = getelementptr i8, ptr %i.ez, i64 6
  %i.fa = getelementptr i8, ptr %i.m, i64 %index112
  %next.gep120 = getelementptr i8, ptr %i.fa, i64 7
  %wide.load121 = load <8 x i8>, ptr %next.gep113, align 1, !tbaa !49
  %i.fb = icmp eq <8 x i8> %wide.load121, splat (i8 92) ; 8 uses
  %i.fc = extractelement <8 x i1> %i.fb, i64 0
  br i1 %i.fc, label %pred.store.if122, label %pred.store.continue123

pred.store.if122:                                 ; preds = %vec.epilog.vector.body
  store i8 47, ptr %next.gep113, align 1, !tbaa !49
  br label %pred.store.continue123

pred.store.continue123:                           ; preds = %pred.store.if122, %vec.epilog.vector.body
  %i.fd = extractelement <8 x i1> %i.fb, i64 1
  br i1 %i.fd, label %pred.store.if124, label %pred.store.continue125

pred.store.if124:                                 ; preds = %pred.store.continue123
  store i8 47, ptr %next.gep114, align 1, !tbaa !49
  br label %pred.store.continue125

pred.store.continue125:                           ; preds = %pred.store.if124, %pred.store.continue123
  %i.fe = extractelement <8 x i1> %i.fb, i64 2
  br i1 %i.fe, label %pred.store.if126, label %pred.store.continue127

pred.store.if126:                                 ; preds = %pred.store.continue125
  store i8 47, ptr %next.gep115, align 1, !tbaa !49
  br label %pred.store.continue127

pred.store.continue127:                           ; preds = %pred.store.if126, %pred.store.continue125
  %i.ff = extractelement <8 x i1> %i.fb, i64 3
  br i1 %i.ff, label %pred.store.if128, label %pred.store.continue129

pred.store.if128:                                 ; preds = %pred.store.continue127
  store i8 47, ptr %next.gep116, align 1, !tbaa !49
  br label %pred.store.continue129

pred.store.continue129:                           ; preds = %pred.store.if128, %pred.store.continue127
  %i.fg = extractelement <8 x i1> %i.fb, i64 4
  br i1 %i.fg, label %pred.store.if130, label %pred.store.continue131

pred.store.if130:                                 ; preds = %pred.store.continue129
  store i8 47, ptr %next.gep117, align 1, !tbaa !49
  br label %pred.store.continue131

pred.store.continue131:                           ; preds = %pred.store.if130, %pred.store.continue129
  %i.fh = extractelement <8 x i1> %i.fb, i64 5
  br i1 %i.fh, label %pred.store.if132, label %pred.store.continue133

pred.store.if132:                                 ; preds = %pred.store.continue131
  store i8 47, ptr %next.gep118, align 1, !tbaa !49
  br label %pred.store.continue133

pred.store.continue133:                           ; preds = %pred.store.if132, %pred.store.continue131
  %i.fi = extractelement <8 x i1> %i.fb, i64 6
  br i1 %i.fi, label %pred.store.if134, label %pred.store.continue135

pred.store.if134:                                 ; preds = %pred.store.continue133
  store i8 47, ptr %next.gep119, align 1, !tbaa !49
  br label %pred.store.continue135

pred.store.continue135:                           ; preds = %pred.store.if134, %pred.store.continue133
  %i.fj = extractelement <8 x i1> %i.fb, i64 7
  br i1 %i.fj, label %pred.store.if136, label %pred.store.continue137

pred.store.if136:                                 ; preds = %pred.store.continue135
  store i8 47, ptr %next.gep120, align 1, !tbaa !49
  br label %pred.store.continue137

pred.store.continue137:                           ; preds = %pred.store.if136, %pred.store.continue135
  %index.next138 = add nuw i64 %index112, 8       ; 2 uses
  %i.fk = icmp eq i64 %index.next138, %n.vec111
  br i1 %i.fk, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !69

vec.epilog.middle.block:                          ; preds = %pred.store.continue137
  %cmp.n139 = icmp eq i64 %i.cc, %n.vec111
  br i1 %cmp.n139, label %iter.check252, label %.lr.ph.i91.preheader

.lr.ph.i91.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.07.i.ph = phi ptr [ %i.m, %iter.check ], [ %i.cd, %vec.epilog.iter.check ], [ %i.et, %vec.epilog.middle.block ]
  br label %.lr.ph.i91

.lr.ph.i91:                                       ; preds = %.lr.ph.i91.preheader, %bb.ab
  %.07.i = phi ptr [ %i.fn, %bb.ab ], [ %.07.i.ph, %.lr.ph.i91.preheader ] ; 3 uses
  %i.fl = load i8, ptr %.07.i, align 1, !tbaa !49
  %i.fm = icmp eq i8 %i.fl, 92
  br i1 %i.fm, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.lr.ph.i91
  store i8 47, ptr %.07.i, align 1, !tbaa !49
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.lr.ph.i91
  %i.fn = getelementptr inbounds nuw i8, ptr %.07.i, i64 1 ; 2 uses
  %.not.i92 = icmp ugt ptr %i.fn, %i.az
  br i1 %.not.i92, label %iter.check252, label %.lr.ph.i91, !llvm.loop !70

iter.check252:                                    ; preds = %bb.ab, %vec.epilog.middle.block, %middle.block
  %i.fo = add i64 %indvar, %i.e
  %i.fp = ptrtoaddr ptr %i.m to i64
  %i.fq = add i64 %i.fp, 1
  %i.fr = ptrtoaddr ptr %i.az to i64
  %i.fs = add i64 %i.fr, 1
  %umax141 = tail call i64 @llvm.umax.i64(i64 %i.fq, i64 %i.fs)
  %i.ft = sub i64 %umax141, %i.fo                 ; 7 uses
  %min.iters.check142 = icmp ult i64 %i.ft, 8
  br i1 %min.iters.check142, label %.lr.ph.i94.preheader, label %vector.main.loop.iter.check143

vector.main.loop.iter.check143:                   ; preds = %iter.check252
  %min.iters.check144 = icmp ult i64 %i.ft, 32
  br i1 %min.iters.check144, label %vec.epilog.ph256, label %vector.ph145

vector.ph145:                                     ; preds = %vector.main.loop.iter.check143
  %n.mod.vf146 = and i64 %i.ft, 24
  %n.vec147 = and i64 %i.ft, -32                  ; 4 uses
  %i.fu = getelementptr i8, ptr %i.m, i64 %n.vec147
  br label %vector.body148

vector.body148:                                   ; preds = %pred.store.continue247, %vector.ph145
  %index149 = phi i64 [ 0, %vector.ph145 ], [ %index.next248, %pred.store.continue247 ] ; 33 uses
  %next.gep150 = getelementptr i8, ptr %i.m, i64 %index149 ; 3 uses
  %i.fv = getelementptr i8, ptr %i.m, i64 %index149
  %next.gep151 = getelementptr i8, ptr %i.fv, i64 1
  %i.fw = getelementptr i8, ptr %i.m, i64 %index149
  %next.gep152 = getelementptr i8, ptr %i.fw, i64 2
  %i.fx = getelementptr i8, ptr %i.m, i64 %index149
  %next.gep153 = getelementptr i8, ptr %i.fx, i64 3
  %i.fy = getelementptr i8, ptr %i.m, i64 %index149
  %next.gep154 = getelementptr i8, ptr %i.fy, i64 4
  %i.fz = getelementptr i8, ptr %i.m, i64 %index149
  %next.gep155 = getelementptr i8, ptr %i.fz, i64 5
  %i.ga = getelementptr i8, ptr %i.m, i64 %index149
  %next.gep156 = getelementptr i8, ptr %i.ga, i64 6
  %i.gb = getelementptr i8, ptr %i.m, i64 %index149
  %next.gep157 = getelementptr i8, ptr %i.gb, i64 7
  %i.gc = getelementptr i8, ptr %i.m, i64 %index149
  %next.gep158 = getelementptr i8, ptr %i.gc, i64 8
  %i.gd = getelementptr i8, ptr %i.m, i64 %index149
  %next.gep159 = getelementptr i8, ptr %i.gd, i64 9
  %i.ge = getelementptr i8, ptr %i.m, i64 %index149
  %next.gep160 = getelementptr i8, ptr %i.ge, i64 10
  %i.gf = getelementptr i8, ptr %i.m, i64 %index149
  %next.gep161 = getelementptr i8, ptr %i.gf, i64 11
  %i.gg = getelementptr i8, ptr %i.m, i64 %index149
  %next.gep162 = getelementptr i8, ptr %i.gg, i64 12
  %i.gh = getelementptr i8, ptr %i.m, i64 %index149
  %next.gep163 = getelementptr i8, ptr %i.gh, i64 13
  %i.gi = getelementptr i8, ptr %i.m, i64 %index149
  %next.gep164 = getelementptr i8, ptr %i.gi, i64 14
  %i.gj = getelementptr i8, ptr %i.m, i64 %index149
  %next.gep165 = getelementptr i8, ptr %i.gj, i64 15
  %i.gk = getelementptr i8, ptr %i.m, i64 %index149
  %next.gep166 = getelementptr i8, ptr %i.gk, i64 16
  %i.gl = getelementptr i8, ptr %i.m, i64 %index149
  %next.gep167 = getelementptr i8, ptr %i.gl, i64 17
  %i.gm = getelementptr i8, ptr %i.m, i64 %index149
  %next.gep168 = getelementptr i8, ptr %i.gm, i64 18
  %i.gn = getelementptr i8, ptr %i.m, i64 %index149
  %next.gep169 = getelementptr i8, ptr %i.gn, i64 19
  %i.go = getelementptr i8, ptr %i.m, i64 %index149
  %next.gep170 = getelementptr i8, ptr %i.go, i64 20
  %i.gp = getelementptr i8, ptr %i.m, i64 %index149
  %next.gep171 = getelementptr i8, ptr %i.gp, i64 21
  %i.gq = getelementptr i8, ptr %i.m, i64 %index149
  %next.gep172 = getelementptr i8, ptr %i.gq, i64 22
  %i.gr = getelementptr i8, ptr %i.m, i64 %index149
  %next.gep173 = getelementptr i8, ptr %i.gr, i64 23
  %i.gs = getelementptr i8, ptr %i.m, i64 %index149
  %next.gep174 = getelementptr i8, ptr %i.gs, i64 24
  %i.gt = getelementptr i8, ptr %i.m, i64 %index149
  %next.gep175 = getelementptr i8, ptr %i.gt, i64 25
  %i.gu = getelementptr i8, ptr %i.m, i64 %index149
  %next.gep176 = getelementptr i8, ptr %i.gu, i64 26
  %i.gv = getelementptr i8, ptr %i.m, i64 %index149
  %next.gep177 = getelementptr i8, ptr %i.gv, i64 27
  %i.gw = getelementptr i8, ptr %i.m, i64 %index149
  %next.gep178 = getelementptr i8, ptr %i.gw, i64 28
  %i.gx = getelementptr i8, ptr %i.m, i64 %index149
  %next.gep179 = getelementptr i8, ptr %i.gx, i64 29
  %i.gy = getelementptr i8, ptr %i.m, i64 %index149
  %next.gep180 = getelementptr i8, ptr %i.gy, i64 30
  %i.gz = getelementptr i8, ptr %i.m, i64 %index149
  %next.gep181 = getelementptr i8, ptr %i.gz, i64 31
  %i.ha = getelementptr i8, ptr %next.gep150, i64 16
  %wide.load182 = load <16 x i8>, ptr %next.gep150, align 1, !tbaa !49
  %wide.load183 = load <16 x i8>, ptr %i.ha, align 1, !tbaa !49
  %i.hb = icmp eq <16 x i8> %wide.load182, splat (i8 60) ; 16 uses
  %i.hc = icmp eq <16 x i8> %wide.load183, splat (i8 60) ; 16 uses
  %i.hd = extractelement <16 x i1> %i.hb, i64 0
  br i1 %i.hd, label %pred.store.if184, label %pred.store.continue185

pred.store.if184:                                 ; preds = %vector.body148
  store i8 32, ptr %next.gep150, align 1, !tbaa !49
  br label %pred.store.continue185

pred.store.continue185:                           ; preds = %pred.store.if184, %vector.body148
  %i.he = extractelement <16 x i1> %i.hb, i64 1
  br i1 %i.he, label %pred.store.if186, label %pred.store.continue187

pred.store.if186:                                 ; preds = %pred.store.continue185
  store i8 32, ptr %next.gep151, align 1, !tbaa !49
  br label %pred.store.continue187

pred.store.continue187:                           ; preds = %pred.store.if186, %pred.store.continue185
  %i.hf = extractelement <16 x i1> %i.hb, i64 2
  br i1 %i.hf, label %pred.store.if188, label %pred.store.continue189

pred.store.if188:                                 ; preds = %pred.store.continue187
  store i8 32, ptr %next.gep152, align 1, !tbaa !49
  br label %pred.store.continue189

pred.store.continue189:                           ; preds = %pred.store.if188, %pred.store.continue187
  %i.hg = extractelement <16 x i1> %i.hb, i64 3
  br i1 %i.hg, label %pred.store.if190, label %pred.store.continue191

pred.store.if190:                                 ; preds = %pred.store.continue189
  store i8 32, ptr %next.gep153, align 1, !tbaa !49
  br label %pred.store.continue191

pred.store.continue191:                           ; preds = %pred.store.if190, %pred.store.continue189
  %i.hh = extractelement <16 x i1> %i.hb, i64 4
  br i1 %i.hh, label %pred.store.if192, label %pred.store.continue193

pred.store.if192:                                 ; preds = %pred.store.continue191
  store i8 32, ptr %next.gep154, align 1, !tbaa !49
  br label %pred.store.continue193

pred.store.continue193:                           ; preds = %pred.store.if192, %pred.store.continue191
  %i.hi = extractelement <16 x i1> %i.hb, i64 5
  br i1 %i.hi, label %pred.store.if194, label %pred.store.continue195

pred.store.if194:                                 ; preds = %pred.store.continue193
  store i8 32, ptr %next.gep155, align 1, !tbaa !49
  br label %pred.store.continue195

pred.store.continue195:                           ; preds = %pred.store.if194, %pred.store.continue193
  %i.hj = extractelement <16 x i1> %i.hb, i64 6
  br i1 %i.hj, label %pred.store.if196, label %pred.store.continue197

pred.store.if196:                                 ; preds = %pred.store.continue195
  store i8 32, ptr %next.gep156, align 1, !tbaa !49
  br label %pred.store.continue197

pred.store.continue197:                           ; preds = %pred.store.if196, %pred.store.continue195
  %i.hk = extractelement <16 x i1> %i.hb, i64 7
  br i1 %i.hk, label %pred.store.if198, label %pred.store.continue199

pred.store.if198:                                 ; preds = %pred.store.continue197
  store i8 32, ptr %next.gep157, align 1, !tbaa !49
  br label %pred.store.continue199

pred.store.continue199:                           ; preds = %pred.store.if198, %pred.store.continue197
  %i.hl = extractelement <16 x i1> %i.hb, i64 8
  br i1 %i.hl, label %pred.store.if200, label %pred.store.continue201

pred.store.if200:                                 ; preds = %pred.store.continue199
  store i8 32, ptr %next.gep158, align 1, !tbaa !49
  br label %pred.store.continue201

pred.store.continue201:                           ; preds = %pred.store.if200, %pred.store.continue199
  %i.hm = extractelement <16 x i1> %i.hb, i64 9
  br i1 %i.hm, label %pred.store.if202, label %pred.store.continue203

pred.store.if202:                                 ; preds = %pred.store.continue201
  store i8 32, ptr %next.gep159, align 1, !tbaa !49
  br label %pred.store.continue203

pred.store.continue203:                           ; preds = %pred.store.if202, %pred.store.continue201
  %i.hn = extractelement <16 x i1> %i.hb, i64 10
  br i1 %i.hn, label %pred.store.if204, label %pred.store.continue205

pred.store.if204:                                 ; preds = %pred.store.continue203
  store i8 32, ptr %next.gep160, align 1, !tbaa !49
  br label %pred.store.continue205

pred.store.continue205:                           ; preds = %pred.store.if204, %pred.store.continue203
  %i.ho = extractelement <16 x i1> %i.hb, i64 11
  br i1 %i.ho, label %pred.store.if206, label %pred.store.continue207

pred.store.if206:                                 ; preds = %pred.store.continue205
  store i8 32, ptr %next.gep161, align 1, !tbaa !49
  br label %pred.store.continue207

pred.store.continue207:                           ; preds = %pred.store.if206, %pred.store.continue205
  %i.hp = extractelement <16 x i1> %i.hb, i64 12
  br i1 %i.hp, label %pred.store.if208, label %pred.store.continue209

pred.store.if208:                                 ; preds = %pred.store.continue207
  store i8 32, ptr %next.gep162, align 1, !tbaa !49
  br label %pred.store.continue209

pred.store.continue209:                           ; preds = %pred.store.if208, %pred.store.continue207
  %i.hq = extractelement <16 x i1> %i.hb, i64 13
  br i1 %i.hq, label %pred.store.if210, label %pred.store.continue211

pred.store.if210:                                 ; preds = %pred.store.continue209
  store i8 32, ptr %next.gep163, align 1, !tbaa !49
  br label %pred.store.continue211

pred.store.continue211:                           ; preds = %pred.store.if210, %pred.store.continue209
  %i.hr = extractelement <16 x i1> %i.hb, i64 14
  br i1 %i.hr, label %pred.store.if212, label %pred.store.continue213
end_hunk_1
begin_hunk_2_@cleanupURL:bb.a
  br label %pred.store.continue229

pred.store.continue229:                           ; preds = %pred.store.if228, %pred.store.continue227
  %i.ia = extractelement <16 x i1> %i.hc, i64 7
  br i1 %i.ia, label %pred.store.if230, label %pred.store.continue231

pred.store.if230:                                 ; preds = %pred.store.continue229
  store i8 32, ptr %next.gep173, align 1, !tbaa !49
  br label %pred.store.continue231

pred.store.continue231:                           ; preds = %pred.store.if230, %pred.store.continue229
  %i.ib = extractelement <16 x i1> %i.hc, i64 8
  br i1 %i.ib, label %pred.store.if232, label %pred.store.continue233

pred.store.if232:                                 ; preds = %pred.store.continue231
  store i8 32, ptr %next.gep174, align 1, !tbaa !49
  br label %pred.store.continue233

pred.store.continue233:                           ; preds = %pred.store.if232, %pred.store.continue231
  %i.ic = extractelement <16 x i1> %i.hc, i64 9
  br i1 %i.ic, label %pred.store.if234, label %pred.store.continue235

pred.store.if234:                                 ; preds = %pred.store.continue233
  store i8 32, ptr %next.gep175, align 1, !tbaa !49
  br label %pred.store.continue235

pred.store.continue235:                           ; preds = %pred.store.if234, %pred.store.continue233
  %i.id = extractelement <16 x i1> %i.hc, i64 10
  br i1 %i.id, label %pred.store.if236, label %pred.store.continue237

pred.store.if236:                                 ; preds = %pred.store.continue235
  store i8 32, ptr %next.gep176, align 1, !tbaa !49
  br label %pred.store.continue237

pred.store.continue237:                           ; preds = %pred.store.if236, %pred.store.continue235
  %i.ie = extractelement <16 x i1> %i.hc, i64 11
  br i1 %i.ie, label %pred.store.if238, label %pred.store.continue239

pred.store.if238:                                 ; preds = %pred.store.continue237
  store i8 32, ptr %next.gep177, align 1, !tbaa !49
  br label %pred.store.continue239

pred.store.continue239:                           ; preds = %pred.store.if238, %pred.store.continue237
  %i.if = extractelement <16 x i1> %i.hc, i64 12
  br i1 %i.if, label %pred.store.if240, label %pred.store.continue241

pred.store.if240:                                 ; preds = %pred.store.continue239
  store i8 32, ptr %next.gep178, align 1, !tbaa !49
  br label %pred.store.continue241

pred.store.continue241:                           ; preds = %pred.store.if240, %pred.store.continue239
  %i.ig = extractelement <16 x i1> %i.hc, i64 13
  br i1 %i.ig, label %pred.store.if242, label %pred.store.continue243

pred.store.if242:                                 ; preds = %pred.store.continue241
  store i8 32, ptr %next.gep179, align 1, !tbaa !49
  br label %pred.store.continue243

pred.store.continue243:                           ; preds = %pred.store.if242, %pred.store.continue241
  %i.ih = extractelement <16 x i1> %i.hc, i64 14
  br i1 %i.ih, label %pred.store.if244, label %pred.store.continue245

pred.store.if244:                                 ; preds = %pred.store.continue243
  store i8 32, ptr %next.gep180, align 1, !tbaa !49
  br label %pred.store.continue245

pred.store.continue245:                           ; preds = %pred.store.if244, %pred.store.continue243
  %i.ii = extractelement <16 x i1> %i.hc, i64 15
  br i1 %i.ii, label %pred.store.if246, label %pred.store.continue247

pred.store.if246:                                 ; preds = %pred.store.continue245
  store i8 32, ptr %next.gep181, align 1, !tbaa !49
  br label %pred.store.continue247

pred.store.continue247:                           ; preds = %pred.store.if246, %pred.store.continue245
  %index.next248 = add nuw i64 %index149, 32      ; 2 uses
  %i.ij = icmp eq i64 %index.next248, %n.vec147
  br i1 %i.ij, label %middle.block249, label %vector.body148, !llvm.loop !71

middle.block249:                                  ; preds = %pred.store.continue247
  %cmp.n250 = icmp eq i64 %i.ft, %n.vec147
  br i1 %cmp.n250, label %iter.check401, label %vec.epilog.iter.check254

vec.epilog.iter.check254:                         ; preds = %middle.block249
  %min.epilog.iters.check255 = icmp eq i64 %n.mod.vf146, 0
  br i1 %min.epilog.iters.check255, label %.lr.ph.i94.preheader, label %vec.epilog.ph256, !prof !68

vec.epilog.ph256:                                 ; preds = %vector.main.loop.iter.check143, %vec.epilog.iter.check254
  %vec.epilog.resume.val251 = phi i64 [ %n.vec147, %vec.epilog.iter.check254 ], [ 0, %vector.main.loop.iter.check143 ]
  %n.vec258 = and i64 %i.ft, -8                   ; 3 uses
  %i.ik = getelementptr i8, ptr %i.m, i64 %n.vec258
  br label %vec.epilog.vector.body259

vec.epilog.vector.body259:                        ; preds = %pred.store.continue285, %vec.epilog.ph256
  %index260 = phi i64 [ %vec.epilog.resume.val251, %vec.epilog.ph256 ], [ %index.next286, %pred.store.continue285 ] ; 9 uses
  %next.gep261 = getelementptr i8, ptr %i.m, i64 %index260 ; 2 uses
  %i.il = getelementptr i8, ptr %i.m, i64 %index260
  %next.gep262 = getelementptr i8, ptr %i.il, i64 1
  %i.im = getelementptr i8, ptr %i.m, i64 %index260
  %next.gep263 = getelementptr i8, ptr %i.im, i64 2
  %i.in = getelementptr i8, ptr %i.m, i64 %index260
  %next.gep264 = getelementptr i8, ptr %i.in, i64 3
  %i.io = getelementptr i8, ptr %i.m, i64 %index260
  %next.gep265 = getelementptr i8, ptr %i.io, i64 4
  %i.ip = getelementptr i8, ptr %i.m, i64 %index260
  %next.gep266 = getelementptr i8, ptr %i.ip, i64 5
  %i.iq = getelementptr i8, ptr %i.m, i64 %index260
  %next.gep267 = getelementptr i8, ptr %i.iq, i64 6
  %i.ir = getelementptr i8, ptr %i.m, i64 %index260
  %next.gep268 = getelementptr i8, ptr %i.ir, i64 7
  %wide.load269 = load <8 x i8>, ptr %next.gep261, align 1, !tbaa !49
  %i.is = icmp eq <8 x i8> %wide.load269, splat (i8 60) ; 8 uses
  %i.it = extractelement <8 x i1> %i.is, i64 0
  br i1 %i.it, label %pred.store.if270, label %pred.store.continue271

pred.store.if270:                                 ; preds = %vec.epilog.vector.body259
  store i8 32, ptr %next.gep261, align 1, !tbaa !49
  br label %pred.store.continue271

pred.store.continue271:                           ; preds = %pred.store.if270, %vec.epilog.vector.body259
  %i.iu = extractelement <8 x i1> %i.is, i64 1
  br i1 %i.iu, label %pred.store.if272, label %pred.store.continue273

pred.store.if272:                                 ; preds = %pred.store.continue271
  store i8 32, ptr %next.gep262, align 1, !tbaa !49
  br label %pred.store.continue273

pred.store.continue273:                           ; preds = %pred.store.if272, %pred.store.continue271
  %i.iv = extractelement <8 x i1> %i.is, i64 2
  br i1 %i.iv, label %pred.store.if274, label %pred.store.continue275

pred.store.if274:                                 ; preds = %pred.store.continue273
  store i8 32, ptr %next.gep263, align 1, !tbaa !49
  br label %pred.store.continue275

pred.store.continue275:                           ; preds = %pred.store.if274, %pred.store.continue273
  %i.iw = extractelement <8 x i1> %i.is, i64 3
  br i1 %i.iw, label %pred.store.if276, label %pred.store.continue277

pred.store.if276:                                 ; preds = %pred.store.continue275
  store i8 32, ptr %next.gep264, align 1, !tbaa !49
  br label %pred.store.continue277

pred.store.continue277:                           ; preds = %pred.store.if276, %pred.store.continue275
  %i.ix = extractelement <8 x i1> %i.is, i64 4
  br i1 %i.ix, label %pred.store.if278, label %pred.store.continue279

pred.store.if278:                                 ; preds = %pred.store.continue277
  store i8 32, ptr %next.gep265, align 1, !tbaa !49
  br label %pred.store.continue279

pred.store.continue279:                           ; preds = %pred.store.if278, %pred.store.continue277
  %i.iy = extractelement <8 x i1> %i.is, i64 5
  br i1 %i.iy, label %pred.store.if280, label %pred.store.continue281

pred.store.if280:                                 ; preds = %pred.store.continue279
  store i8 32, ptr %next.gep266, align 1, !tbaa !49
  br label %pred.store.continue281

pred.store.continue281:                           ; preds = %pred.store.if280, %pred.store.continue279
  %i.iz = extractelement <8 x i1> %i.is, i64 6
  br i1 %i.iz, label %pred.store.if282, label %pred.store.continue283

pred.store.if282:                                 ; preds = %pred.store.continue281
  store i8 32, ptr %next.gep267, align 1, !tbaa !49
  br label %pred.store.continue283

pred.store.continue283:                           ; preds = %pred.store.if282, %pred.store.continue281
  %i.ja = extractelement <8 x i1> %i.is, i64 7
  br i1 %i.ja, label %pred.store.if284, label %pred.store.continue285

pred.store.if284:                                 ; preds = %pred.store.continue283
  store i8 32, ptr %next.gep268, align 1, !tbaa !49
  br label %pred.store.continue285

pred.store.continue285:                           ; preds = %pred.store.if284, %pred.store.continue283
  %index.next286 = add nuw i64 %index260, 8       ; 2 uses
  %i.jb = icmp eq i64 %index.next286, %n.vec258
  br i1 %i.jb, label %vec.epilog.middle.block287, label %vec.epilog.vector.body259, !llvm.loop !72

vec.epilog.middle.block287:                       ; preds = %pred.store.continue285
  %cmp.n288 = icmp eq i64 %i.ft, %n.vec258
  br i1 %cmp.n288, label %iter.check401, label %.lr.ph.i94.preheader

.lr.ph.i94.preheader:                             ; preds = %iter.check252, %vec.epilog.iter.check254, %vec.epilog.middle.block287
  %.07.i95.ph = phi ptr [ %i.m, %iter.check252 ], [ %i.fu, %vec.epilog.iter.check254 ], [ %i.ik, %vec.epilog.middle.block287 ]
  br label %.lr.ph.i94

.lr.ph.i94:                                       ; preds = %.lr.ph.i94.preheader, %bb.ad
  %.07.i95 = phi ptr [ %i.je, %bb.ad ], [ %.07.i95.ph, %.lr.ph.i94.preheader ] ; 3 uses
  %i.jc = load i8, ptr %.07.i95, align 1, !tbaa !49
  %i.jd = icmp eq i8 %i.jc, 60
  br i1 %i.jd, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %.lr.ph.i94
  store i8 32, ptr %.07.i95, align 1, !tbaa !49
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %.lr.ph.i94
  %i.je = getelementptr inbounds nuw i8, ptr %.07.i95, i64 1 ; 2 uses
  %.not.i96 = icmp ugt ptr %i.je, %i.az
  br i1 %.not.i96, label %iter.check401, label %.lr.ph.i94, !llvm.loop !73

iter.check401:                                    ; preds = %bb.ad, %vec.epilog.middle.block287, %middle.block249
  %i.jf = add i64 %indvar, %i.e
  %i.jg = ptrtoaddr ptr %i.m to i64
  %i.jh = add i64 %i.jg, 1
  %i.ji = ptrtoaddr ptr %i.az to i64
  %i.jj = add i64 %i.ji, 1
  %umax290 = tail call i64 @llvm.umax.i64(i64 %i.jh, i64 %i.jj)
  %i.jk = sub i64 %umax290, %i.jf                 ; 7 uses
  %min.iters.check291 = icmp ult i64 %i.jk, 8
  br i1 %min.iters.check291, label %.lr.ph.i99.preheader, label %vector.main.loop.iter.check292

vector.main.loop.iter.check292:                   ; preds = %iter.check401
  %min.iters.check293 = icmp ult i64 %i.jk, 32
  br i1 %min.iters.check293, label %vec.epilog.ph405, label %vector.ph294

vector.ph294:                                     ; preds = %vector.main.loop.iter.check292
  %n.mod.vf295 = and i64 %i.jk, 24
  %n.vec296 = and i64 %i.jk, -32                  ; 4 uses
  %i.jl = getelementptr i8, ptr %i.m, i64 %n.vec296
  br label %vector.body297

vector.body297:                                   ; preds = %pred.store.continue396, %vector.ph294
  %index298 = phi i64 [ 0, %vector.ph294 ], [ %index.next397, %pred.store.continue396 ] ; 33 uses
  %next.gep299 = getelementptr i8, ptr %i.m, i64 %index298 ; 3 uses
  %i.jm = getelementptr i8, ptr %i.m, i64 %index298
  %next.gep300 = getelementptr i8, ptr %i.jm, i64 1
  %i.jn = getelementptr i8, ptr %i.m, i64 %index298
  %next.gep301 = getelementptr i8, ptr %i.jn, i64 2
  %i.jo = getelementptr i8, ptr %i.m, i64 %index298
  %next.gep302 = getelementptr i8, ptr %i.jo, i64 3
  %i.jp = getelementptr i8, ptr %i.m, i64 %index298
  %next.gep303 = getelementptr i8, ptr %i.jp, i64 4
  %i.jq = getelementptr i8, ptr %i.m, i64 %index298
  %next.gep304 = getelementptr i8, ptr %i.jq, i64 5
  %i.jr = getelementptr i8, ptr %i.m, i64 %index298
  %next.gep305 = getelementptr i8, ptr %i.jr, i64 6
  %i.js = getelementptr i8, ptr %i.m, i64 %index298
  %next.gep306 = getelementptr i8, ptr %i.js, i64 7
  %i.jt = getelementptr i8, ptr %i.m, i64 %index298
  %next.gep307 = getelementptr i8, ptr %i.jt, i64 8
  %i.ju = getelementptr i8, ptr %i.m, i64 %index298
  %next.gep308 = getelementptr i8, ptr %i.ju, i64 9
  %i.jv = getelementptr i8, ptr %i.m, i64 %index298
  %next.gep309 = getelementptr i8, ptr %i.jv, i64 10
  %i.jw = getelementptr i8, ptr %i.m, i64 %index298
  %next.gep310 = getelementptr i8, ptr %i.jw, i64 11
  %i.jx = getelementptr i8, ptr %i.m, i64 %index298
  %next.gep311 = getelementptr i8, ptr %i.jx, i64 12
  %i.jy = getelementptr i8, ptr %i.m, i64 %index298
  %next.gep312 = getelementptr i8, ptr %i.jy, i64 13
  %i.jz = getelementptr i8, ptr %i.m, i64 %index298
  %next.gep313 = getelementptr i8, ptr %i.jz, i64 14
  %i.ka = getelementptr i8, ptr %i.m, i64 %index298
  %next.gep314 = getelementptr i8, ptr %i.ka, i64 15
  %i.kb = getelementptr i8, ptr %i.m, i64 %index298
  %next.gep315 = getelementptr i8, ptr %i.kb, i64 16
  %i.kc = getelementptr i8, ptr %i.m, i64 %index298
  %next.gep316 = getelementptr i8, ptr %i.kc, i64 17
  %i.kd = getelementptr i8, ptr %i.m, i64 %index298
  %next.gep317 = getelementptr i8, ptr %i.kd, i64 18
  %i.ke = getelementptr i8, ptr %i.m, i64 %index298
  %next.gep318 = getelementptr i8, ptr %i.ke, i64 19
  %i.kf = getelementptr i8, ptr %i.m, i64 %index298
  %next.gep319 = getelementptr i8, ptr %i.kf, i64 20
  %i.kg = getelementptr i8, ptr %i.m, i64 %index298
  %next.gep320 = getelementptr i8, ptr %i.kg, i64 21
  %i.kh = getelementptr i8, ptr %i.m, i64 %index298
  %next.gep321 = getelementptr i8, ptr %i.kh, i64 22
  %i.ki = getelementptr i8, ptr %i.m, i64 %index298
  %next.gep322 = getelementptr i8, ptr %i.ki, i64 23
  %i.kj = getelementptr i8, ptr %i.m, i64 %index298
  %next.gep323 = getelementptr i8, ptr %i.kj, i64 24
  %i.kk = getelementptr i8, ptr %i.m, i64 %index298
  %next.gep324 = getelementptr i8, ptr %i.kk, i64 25
  %i.kl = getelementptr i8, ptr %i.m, i64 %index298
  %next.gep325 = getelementptr i8, ptr %i.kl, i64 26
  %i.km = getelementptr i8, ptr %i.m, i64 %index298
  %next.gep326 = getelementptr i8, ptr %i.km, i64 27
  %i.kn = getelementptr i8, ptr %i.m, i64 %index298
  %next.gep327 = getelementptr i8, ptr %i.kn, i64 28
  %i.ko = getelementptr i8, ptr %i.m, i64 %index298
  %next.gep328 = getelementptr i8, ptr %i.ko, i64 29
  %i.kp = getelementptr i8, ptr %i.m, i64 %index298
  %next.gep329 = getelementptr i8, ptr %i.kp, i64 30
  %i.kq = getelementptr i8, ptr %i.m, i64 %index298
  %next.gep330 = getelementptr i8, ptr %i.kq, i64 31
  %i.kr = getelementptr i8, ptr %next.gep299, i64 16
  %wide.load331 = load <16 x i8>, ptr %next.gep299, align 1, !tbaa !49
  %wide.load332 = load <16 x i8>, ptr %i.kr, align 1, !tbaa !49
  %i.ks = icmp eq <16 x i8> %wide.load331, splat (i8 62) ; 16 uses
  %i.kt = icmp eq <16 x i8> %wide.load332, splat (i8 62) ; 16 uses
  %i.ku = extractelement <16 x i1> %i.ks, i64 0
  br i1 %i.ku, label %pred.store.if333, label %pred.store.continue334

pred.store.if333:                                 ; preds = %vector.body297
  store i8 32, ptr %next.gep299, align 1, !tbaa !49
  br label %pred.store.continue334

pred.store.continue334:                           ; preds = %pred.store.if333, %vector.body297
  %i.kv = extractelement <16 x i1> %i.ks, i64 1
  br i1 %i.kv, label %pred.store.if335, label %pred.store.continue336

pred.store.if335:                                 ; preds = %pred.store.continue334
  store i8 32, ptr %next.gep300, align 1, !tbaa !49
  br label %pred.store.continue336

pred.store.continue336:                           ; preds = %pred.store.if335, %pred.store.continue334
  %i.kw = extractelement <16 x i1> %i.ks, i64 2
  br i1 %i.kw, label %pred.store.if337, label %pred.store.continue338

pred.store.if337:                                 ; preds = %pred.store.continue336
  store i8 32, ptr %next.gep301, align 1, !tbaa !49
  br label %pred.store.continue338

pred.store.continue338:                           ; preds = %pred.store.if337, %pred.store.continue336
  %i.kx = extractelement <16 x i1> %i.ks, i64 3
  br i1 %i.kx, label %pred.store.if339, label %pred.store.continue340

pred.store.if339:                                 ; preds = %pred.store.continue338
  store i8 32, ptr %next.gep302, align 1, !tbaa !49
  br label %pred.store.continue340

pred.store.continue340:                           ; preds = %pred.store.if339, %pred.store.continue338
  %i.ky = extractelement <16 x i1> %i.ks, i64 4
  br i1 %i.ky, label %pred.store.if341, label %pred.store.continue342

pred.store.if341:                                 ; preds = %pred.store.continue340
  store i8 32, ptr %next.gep303, align 1, !tbaa !49
  br label %pred.store.continue342

pred.store.continue342:                           ; preds = %pred.store.if341, %pred.store.continue340
  %i.kz = extractelement <16 x i1> %i.ks, i64 5
  br i1 %i.kz, label %pred.store.if343, label %pred.store.continue344

pred.store.if343:                                 ; preds = %pred.store.continue342
  store i8 32, ptr %next.gep304, align 1, !tbaa !49
  br label %pred.store.continue344

pred.store.continue344:                           ; preds = %pred.store.if343, %pred.store.continue342
  %i.la = extractelement <16 x i1> %i.ks, i64 6
  br i1 %i.la, label %pred.store.if345, label %pred.store.continue346

pred.store.if345:                                 ; preds = %pred.store.continue344
  store i8 32, ptr %next.gep305, align 1, !tbaa !49
  br label %pred.store.continue346

pred.store.continue346:                           ; preds = %pred.store.if345, %pred.store.continue344
  %i.lb = extractelement <16 x i1> %i.ks, i64 7
  br i1 %i.lb, label %pred.store.if347, label %pred.store.continue348

pred.store.if347:                                 ; preds = %pred.store.continue346
  store i8 32, ptr %next.gep306, align 1, !tbaa !49
  br label %pred.store.continue348

pred.store.continue348:                           ; preds = %pred.store.if347, %pred.store.continue346
  %i.lc = extractelement <16 x i1> %i.ks, i64 8
  br i1 %i.lc, label %pred.store.if349, label %pred.store.continue350

pred.store.if349:                                 ; preds = %pred.store.continue348
  store i8 32, ptr %next.gep307, align 1, !tbaa !49
  br label %pred.store.continue350

pred.store.continue350:                           ; preds = %pred.store.if349, %pred.store.continue348
  %i.ld = extractelement <16 x i1> %i.ks, i64 9
  br i1 %i.ld, label %pred.store.if351, label %pred.store.continue352

pred.store.if351:                                 ; preds = %pred.store.continue350
  store i8 32, ptr %next.gep308, align 1, !tbaa !49
  br label %pred.store.continue352

pred.store.continue352:                           ; preds = %pred.store.if351, %pred.store.continue350
  %i.le = extractelement <16 x i1> %i.ks, i64 10
  br i1 %i.le, label %pred.store.if353, label %pred.store.continue354

pred.store.if353:                                 ; preds = %pred.store.continue352
  store i8 32, ptr %next.gep309, align 1, !tbaa !49
  br label %pred.store.continue354

pred.store.continue354:                           ; preds = %pred.store.if353, %pred.store.continue352
  %i.lf = extractelement <16 x i1> %i.ks, i64 11
  br i1 %i.lf, label %pred.store.if355, label %pred.store.continue356

pred.store.if355:                                 ; preds = %pred.store.continue354
  store i8 32, ptr %next.gep310, align 1, !tbaa !49
  br label %pred.store.continue356

pred.store.continue356:                           ; preds = %pred.store.if355, %pred.store.continue354
  %i.lg = extractelement <16 x i1> %i.ks, i64 12
  br i1 %i.lg, label %pred.store.if357, label %pred.store.continue358

pred.store.if357:                                 ; preds = %pred.store.continue356
  store i8 32, ptr %next.gep311, align 1, !tbaa !49
  br label %pred.store.continue358

pred.store.continue358:                           ; preds = %pred.store.if357, %pred.store.continue356
  %i.lh = extractelement <16 x i1> %i.ks, i64 13
  br i1 %i.lh, label %pred.store.if359, label %pred.store.continue360

pred.store.if359:                                 ; preds = %pred.store.continue358
  store i8 32, ptr %next.gep312, align 1, !tbaa !49
  br label %pred.store.continue360

pred.store.continue360:                           ; preds = %pred.store.if359, %pred.store.continue358
  %i.li = extractelement <16 x i1> %i.ks, i64 14
  br i1 %i.li, label %pred.store.if361, label %pred.store.continue362
end_hunk_2
begin_hunk_3_@cleanupURL:bb.a
  br label %pred.store.continue378

pred.store.continue378:                           ; preds = %pred.store.if377, %pred.store.continue376
  %i.lr = extractelement <16 x i1> %i.kt, i64 7
  br i1 %i.lr, label %pred.store.if379, label %pred.store.continue380

pred.store.if379:                                 ; preds = %pred.store.continue378
  store i8 32, ptr %next.gep322, align 1, !tbaa !49
  br label %pred.store.continue380

pred.store.continue380:                           ; preds = %pred.store.if379, %pred.store.continue378
  %i.ls = extractelement <16 x i1> %i.kt, i64 8
  br i1 %i.ls, label %pred.store.if381, label %pred.store.continue382

pred.store.if381:                                 ; preds = %pred.store.continue380
  store i8 32, ptr %next.gep323, align 1, !tbaa !49
  br label %pred.store.continue382

pred.store.continue382:                           ; preds = %pred.store.if381, %pred.store.continue380
  %i.lt = extractelement <16 x i1> %i.kt, i64 9
  br i1 %i.lt, label %pred.store.if383, label %pred.store.continue384

pred.store.if383:                                 ; preds = %pred.store.continue382
  store i8 32, ptr %next.gep324, align 1, !tbaa !49
  br label %pred.store.continue384

pred.store.continue384:                           ; preds = %pred.store.if383, %pred.store.continue382
  %i.lu = extractelement <16 x i1> %i.kt, i64 10
  br i1 %i.lu, label %pred.store.if385, label %pred.store.continue386

pred.store.if385:                                 ; preds = %pred.store.continue384
  store i8 32, ptr %next.gep325, align 1, !tbaa !49
  br label %pred.store.continue386

pred.store.continue386:                           ; preds = %pred.store.if385, %pred.store.continue384
  %i.lv = extractelement <16 x i1> %i.kt, i64 11
  br i1 %i.lv, label %pred.store.if387, label %pred.store.continue388

pred.store.if387:                                 ; preds = %pred.store.continue386
  store i8 32, ptr %next.gep326, align 1, !tbaa !49
  br label %pred.store.continue388

pred.store.continue388:                           ; preds = %pred.store.if387, %pred.store.continue386
  %i.lw = extractelement <16 x i1> %i.kt, i64 12
  br i1 %i.lw, label %pred.store.if389, label %pred.store.continue390

pred.store.if389:                                 ; preds = %pred.store.continue388
  store i8 32, ptr %next.gep327, align 1, !tbaa !49
  br label %pred.store.continue390

pred.store.continue390:                           ; preds = %pred.store.if389, %pred.store.continue388
  %i.lx = extractelement <16 x i1> %i.kt, i64 13
  br i1 %i.lx, label %pred.store.if391, label %pred.store.continue392

pred.store.if391:                                 ; preds = %pred.store.continue390
  store i8 32, ptr %next.gep328, align 1, !tbaa !49
  br label %pred.store.continue392

pred.store.continue392:                           ; preds = %pred.store.if391, %pred.store.continue390
  %i.ly = extractelement <16 x i1> %i.kt, i64 14
  br i1 %i.ly, label %pred.store.if393, label %pred.store.continue394

pred.store.if393:                                 ; preds = %pred.store.continue392
  store i8 32, ptr %next.gep329, align 1, !tbaa !49
  br label %pred.store.continue394

pred.store.continue394:                           ; preds = %pred.store.if393, %pred.store.continue392
  %i.lz = extractelement <16 x i1> %i.kt, i64 15
  br i1 %i.lz, label %pred.store.if395, label %pred.store.continue396

pred.store.if395:                                 ; preds = %pred.store.continue394
  store i8 32, ptr %next.gep330, align 1, !tbaa !49
  br label %pred.store.continue396

pred.store.continue396:                           ; preds = %pred.store.if395, %pred.store.continue394
  %index.next397 = add nuw i64 %index298, 32      ; 2 uses
  %i.ma = icmp eq i64 %index.next397, %n.vec296
  br i1 %i.ma, label %middle.block398, label %vector.body297, !llvm.loop !74

middle.block398:                                  ; preds = %pred.store.continue396
  %cmp.n399 = icmp eq i64 %i.jk, %n.vec296
  br i1 %cmp.n399, label %iter.check550, label %vec.epilog.iter.check403

vec.epilog.iter.check403:                         ; preds = %middle.block398
  %min.epilog.iters.check404 = icmp eq i64 %n.mod.vf295, 0
  br i1 %min.epilog.iters.check404, label %.lr.ph.i99.preheader, label %vec.epilog.ph405, !prof !68

vec.epilog.ph405:                                 ; preds = %vector.main.loop.iter.check292, %vec.epilog.iter.check403
  %vec.epilog.resume.val400 = phi i64 [ %n.vec296, %vec.epilog.iter.check403 ], [ 0, %vector.main.loop.iter.check292 ]
  %n.vec407 = and i64 %i.jk, -8                   ; 3 uses
  %i.mb = getelementptr i8, ptr %i.m, i64 %n.vec407
  br label %vec.epilog.vector.body408

vec.epilog.vector.body408:                        ; preds = %pred.store.continue434, %vec.epilog.ph405
  %index409 = phi i64 [ %vec.epilog.resume.val400, %vec.epilog.ph405 ], [ %index.next435, %pred.store.continue434 ] ; 9 uses
  %next.gep410 = getelementptr i8, ptr %i.m, i64 %index409 ; 2 uses
  %i.mc = getelementptr i8, ptr %i.m, i64 %index409
  %next.gep411 = getelementptr i8, ptr %i.mc, i64 1
  %i.md = getelementptr i8, ptr %i.m, i64 %index409
  %next.gep412 = getelementptr i8, ptr %i.md, i64 2
  %i.me = getelementptr i8, ptr %i.m, i64 %index409
  %next.gep413 = getelementptr i8, ptr %i.me, i64 3
  %i.mf = getelementptr i8, ptr %i.m, i64 %index409
  %next.gep414 = getelementptr i8, ptr %i.mf, i64 4
  %i.mg = getelementptr i8, ptr %i.m, i64 %index409
  %next.gep415 = getelementptr i8, ptr %i.mg, i64 5
  %i.mh = getelementptr i8, ptr %i.m, i64 %index409
  %next.gep416 = getelementptr i8, ptr %i.mh, i64 6
  %i.mi = getelementptr i8, ptr %i.m, i64 %index409
  %next.gep417 = getelementptr i8, ptr %i.mi, i64 7
  %wide.load418 = load <8 x i8>, ptr %next.gep410, align 1, !tbaa !49
  %i.mj = icmp eq <8 x i8> %wide.load418, splat (i8 62) ; 8 uses
  %i.mk = extractelement <8 x i1> %i.mj, i64 0
  br i1 %i.mk, label %pred.store.if419, label %pred.store.continue420

pred.store.if419:                                 ; preds = %vec.epilog.vector.body408
  store i8 32, ptr %next.gep410, align 1, !tbaa !49
  br label %pred.store.continue420

pred.store.continue420:                           ; preds = %pred.store.if419, %vec.epilog.vector.body408
  %i.ml = extractelement <8 x i1> %i.mj, i64 1
  br i1 %i.ml, label %pred.store.if421, label %pred.store.continue422

pred.store.if421:                                 ; preds = %pred.store.continue420
  store i8 32, ptr %next.gep411, align 1, !tbaa !49
  br label %pred.store.continue422

pred.store.continue422:                           ; preds = %pred.store.if421, %pred.store.continue420
  %i.mm = extractelement <8 x i1> %i.mj, i64 2
  br i1 %i.mm, label %pred.store.if423, label %pred.store.continue424

pred.store.if423:                                 ; preds = %pred.store.continue422
  store i8 32, ptr %next.gep412, align 1, !tbaa !49
  br label %pred.store.continue424

pred.store.continue424:                           ; preds = %pred.store.if423, %pred.store.continue422
  %i.mn = extractelement <8 x i1> %i.mj, i64 3
  br i1 %i.mn, label %pred.store.if425, label %pred.store.continue426

pred.store.if425:                                 ; preds = %pred.store.continue424
  store i8 32, ptr %next.gep413, align 1, !tbaa !49
  br label %pred.store.continue426

pred.store.continue426:                           ; preds = %pred.store.if425, %pred.store.continue424
  %i.mo = extractelement <8 x i1> %i.mj, i64 4
  br i1 %i.mo, label %pred.store.if427, label %pred.store.continue428

pred.store.if427:                                 ; preds = %pred.store.continue426
  store i8 32, ptr %next.gep414, align 1, !tbaa !49
  br label %pred.store.continue428

pred.store.continue428:                           ; preds = %pred.store.if427, %pred.store.continue426
  %i.mp = extractelement <8 x i1> %i.mj, i64 5
  br i1 %i.mp, label %pred.store.if429, label %pred.store.continue430

pred.store.if429:                                 ; preds = %pred.store.continue428
  store i8 32, ptr %next.gep415, align 1, !tbaa !49
  br label %pred.store.continue430

pred.store.continue430:                           ; preds = %pred.store.if429, %pred.store.continue428
  %i.mq = extractelement <8 x i1> %i.mj, i64 6
  br i1 %i.mq, label %pred.store.if431, label %pred.store.continue432

pred.store.if431:                                 ; preds = %pred.store.continue430
  store i8 32, ptr %next.gep416, align 1, !tbaa !49
  br label %pred.store.continue432

pred.store.continue432:                           ; preds = %pred.store.if431, %pred.store.continue430
  %i.mr = extractelement <8 x i1> %i.mj, i64 7
  br i1 %i.mr, label %pred.store.if433, label %pred.store.continue434

pred.store.if433:                                 ; preds = %pred.store.continue432
  store i8 32, ptr %next.gep417, align 1, !tbaa !49
  br label %pred.store.continue434

pred.store.continue434:                           ; preds = %pred.store.if433, %pred.store.continue432
  %index.next435 = add nuw i64 %index409, 8       ; 2 uses
  %i.ms = icmp eq i64 %index.next435, %n.vec407
  br i1 %i.ms, label %vec.epilog.middle.block436, label %vec.epilog.vector.body408, !llvm.loop !75

vec.epilog.middle.block436:                       ; preds = %pred.store.continue434
  %cmp.n437 = icmp eq i64 %i.jk, %n.vec407
  br i1 %cmp.n437, label %iter.check550, label %.lr.ph.i99.preheader

.lr.ph.i99.preheader:                             ; preds = %iter.check401, %vec.epilog.iter.check403, %vec.epilog.middle.block436
  %.07.i100.ph = phi ptr [ %i.m, %iter.check401 ], [ %i.jl, %vec.epilog.iter.check403 ], [ %i.mb, %vec.epilog.middle.block436 ]
  br label %.lr.ph.i99

.lr.ph.i99:                                       ; preds = %.lr.ph.i99.preheader, %bb.af
  %.07.i100 = phi ptr [ %i.mv, %bb.af ], [ %.07.i100.ph, %.lr.ph.i99.preheader ] ; 3 uses
  %i.mt = load i8, ptr %.07.i100, align 1, !tbaa !49
  %i.mu = icmp eq i8 %i.mt, 62
  br i1 %i.mu, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %.lr.ph.i99
  store i8 32, ptr %.07.i100, align 1, !tbaa !49
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %.lr.ph.i99
  %i.mv = getelementptr inbounds nuw i8, ptr %.07.i100, i64 1 ; 2 uses
  %.not.i101 = icmp ugt ptr %i.mv, %i.az
  br i1 %.not.i101, label %iter.check550, label %.lr.ph.i99, !llvm.loop !76

iter.check550:                                    ; preds = %bb.af, %vec.epilog.middle.block436, %middle.block398
  %i.mw = add i64 %indvar, %i.e
  %i.mx = ptrtoaddr ptr %i.m to i64
  %i.my = add i64 %i.mx, 1
  %i.mz = ptrtoaddr ptr %i.az to i64
  %i.na = add i64 %i.mz, 1
  %umax439 = tail call i64 @llvm.umax.i64(i64 %i.my, i64 %i.na)
  %i.nb = sub i64 %umax439, %i.mw                 ; 7 uses
  %min.iters.check440 = icmp ult i64 %i.nb, 8
  br i1 %min.iters.check440, label %.lr.ph.i104.preheader, label %vector.main.loop.iter.check441

vector.main.loop.iter.check441:                   ; preds = %iter.check550
  %min.iters.check442 = icmp ult i64 %i.nb, 32
  br i1 %min.iters.check442, label %vec.epilog.ph554, label %vector.ph443

vector.ph443:                                     ; preds = %vector.main.loop.iter.check441
  %n.mod.vf444 = and i64 %i.nb, 24
  %n.vec445 = and i64 %i.nb, -32                  ; 4 uses
  %i.nc = getelementptr i8, ptr %i.m, i64 %n.vec445
  br label %vector.body446

vector.body446:                                   ; preds = %pred.store.continue545, %vector.ph443
  %index447 = phi i64 [ 0, %vector.ph443 ], [ %index.next546, %pred.store.continue545 ] ; 33 uses
  %next.gep448 = getelementptr i8, ptr %i.m, i64 %index447 ; 3 uses
  %i.nd = getelementptr i8, ptr %i.m, i64 %index447
  %next.gep449 = getelementptr i8, ptr %i.nd, i64 1
  %i.ne = getelementptr i8, ptr %i.m, i64 %index447
  %next.gep450 = getelementptr i8, ptr %i.ne, i64 2
  %i.nf = getelementptr i8, ptr %i.m, i64 %index447
  %next.gep451 = getelementptr i8, ptr %i.nf, i64 3
  %i.ng = getelementptr i8, ptr %i.m, i64 %index447
  %next.gep452 = getelementptr i8, ptr %i.ng, i64 4
  %i.nh = getelementptr i8, ptr %i.m, i64 %index447
  %next.gep453 = getelementptr i8, ptr %i.nh, i64 5
  %i.ni = getelementptr i8, ptr %i.m, i64 %index447
  %next.gep454 = getelementptr i8, ptr %i.ni, i64 6
  %i.nj = getelementptr i8, ptr %i.m, i64 %index447
  %next.gep455 = getelementptr i8, ptr %i.nj, i64 7
  %i.nk = getelementptr i8, ptr %i.m, i64 %index447
  %next.gep456 = getelementptr i8, ptr %i.nk, i64 8
  %i.nl = getelementptr i8, ptr %i.m, i64 %index447
  %next.gep457 = getelementptr i8, ptr %i.nl, i64 9
  %i.nm = getelementptr i8, ptr %i.m, i64 %index447
  %next.gep458 = getelementptr i8, ptr %i.nm, i64 10
  %i.nn = getelementptr i8, ptr %i.m, i64 %index447
  %next.gep459 = getelementptr i8, ptr %i.nn, i64 11
  %i.no = getelementptr i8, ptr %i.m, i64 %index447
  %next.gep460 = getelementptr i8, ptr %i.no, i64 12
  %i.np = getelementptr i8, ptr %i.m, i64 %index447
  %next.gep461 = getelementptr i8, ptr %i.np, i64 13
  %i.nq = getelementptr i8, ptr %i.m, i64 %index447
  %next.gep462 = getelementptr i8, ptr %i.nq, i64 14
  %i.nr = getelementptr i8, ptr %i.m, i64 %index447
  %next.gep463 = getelementptr i8, ptr %i.nr, i64 15
  %i.ns = getelementptr i8, ptr %i.m, i64 %index447
  %next.gep464 = getelementptr i8, ptr %i.ns, i64 16
  %i.nt = getelementptr i8, ptr %i.m, i64 %index447
  %next.gep465 = getelementptr i8, ptr %i.nt, i64 17
  %i.nu = getelementptr i8, ptr %i.m, i64 %index447
  %next.gep466 = getelementptr i8, ptr %i.nu, i64 18
  %i.nv = getelementptr i8, ptr %i.m, i64 %index447
  %next.gep467 = getelementptr i8, ptr %i.nv, i64 19
  %i.nw = getelementptr i8, ptr %i.m, i64 %index447
  %next.gep468 = getelementptr i8, ptr %i.nw, i64 20
  %i.nx = getelementptr i8, ptr %i.m, i64 %index447
  %next.gep469 = getelementptr i8, ptr %i.nx, i64 21
  %i.ny = getelementptr i8, ptr %i.m, i64 %index447
  %next.gep470 = getelementptr i8, ptr %i.ny, i64 22
  %i.nz = getelementptr i8, ptr %i.m, i64 %index447
  %next.gep471 = getelementptr i8, ptr %i.nz, i64 23
  %i.oa = getelementptr i8, ptr %i.m, i64 %index447
  %next.gep472 = getelementptr i8, ptr %i.oa, i64 24
  %i.ob = getelementptr i8, ptr %i.m, i64 %index447
  %next.gep473 = getelementptr i8, ptr %i.ob, i64 25
  %i.oc = getelementptr i8, ptr %i.m, i64 %index447
  %next.gep474 = getelementptr i8, ptr %i.oc, i64 26
  %i.od = getelementptr i8, ptr %i.m, i64 %index447
  %next.gep475 = getelementptr i8, ptr %i.od, i64 27
  %i.oe = getelementptr i8, ptr %i.m, i64 %index447
  %next.gep476 = getelementptr i8, ptr %i.oe, i64 28
  %i.of = getelementptr i8, ptr %i.m, i64 %index447
  %next.gep477 = getelementptr i8, ptr %i.of, i64 29
  %i.og = getelementptr i8, ptr %i.m, i64 %index447
  %next.gep478 = getelementptr i8, ptr %i.og, i64 30
  %i.oh = getelementptr i8, ptr %i.m, i64 %index447
  %next.gep479 = getelementptr i8, ptr %i.oh, i64 31
  %i.oi = getelementptr i8, ptr %next.gep448, i64 16
  %wide.load480 = load <16 x i8>, ptr %next.gep448, align 1, !tbaa !49
  %wide.load481 = load <16 x i8>, ptr %i.oi, align 1, !tbaa !49
  %i.oj = icmp eq <16 x i8> %wide.load480, splat (i8 34) ; 16 uses
  %i.ok = icmp eq <16 x i8> %wide.load481, splat (i8 34) ; 16 uses
  %i.ol = extractelement <16 x i1> %i.oj, i64 0
  br i1 %i.ol, label %pred.store.if482, label %pred.store.continue483

pred.store.if482:                                 ; preds = %vector.body446
  store i8 32, ptr %next.gep448, align 1, !tbaa !49
  br label %pred.store.continue483

pred.store.continue483:                           ; preds = %pred.store.if482, %vector.body446
  %i.om = extractelement <16 x i1> %i.oj, i64 1
  br i1 %i.om, label %pred.store.if484, label %pred.store.continue485

pred.store.if484:                                 ; preds = %pred.store.continue483
  store i8 32, ptr %next.gep449, align 1, !tbaa !49
  br label %pred.store.continue485

pred.store.continue485:                           ; preds = %pred.store.if484, %pred.store.continue483
  %i.on = extractelement <16 x i1> %i.oj, i64 2
  br i1 %i.on, label %pred.store.if486, label %pred.store.continue487

pred.store.if486:                                 ; preds = %pred.store.continue485
  store i8 32, ptr %next.gep450, align 1, !tbaa !49
  br label %pred.store.continue487

pred.store.continue487:                           ; preds = %pred.store.if486, %pred.store.continue485
  %i.oo = extractelement <16 x i1> %i.oj, i64 3
  br i1 %i.oo, label %pred.store.if488, label %pred.store.continue489

pred.store.if488:                                 ; preds = %pred.store.continue487
  store i8 32, ptr %next.gep451, align 1, !tbaa !49
  br label %pred.store.continue489

pred.store.continue489:                           ; preds = %pred.store.if488, %pred.store.continue487
  %i.op = extractelement <16 x i1> %i.oj, i64 4
  br i1 %i.op, label %pred.store.if490, label %pred.store.continue491

pred.store.if490:                                 ; preds = %pred.store.continue489
  store i8 32, ptr %next.gep452, align 1, !tbaa !49
  br label %pred.store.continue491

pred.store.continue491:                           ; preds = %pred.store.if490, %pred.store.continue489
  %i.oq = extractelement <16 x i1> %i.oj, i64 5
  br i1 %i.oq, label %pred.store.if492, label %pred.store.continue493

pred.store.if492:                                 ; preds = %pred.store.continue491
  store i8 32, ptr %next.gep453, align 1, !tbaa !49
  br label %pred.store.continue493

pred.store.continue493:                           ; preds = %pred.store.if492, %pred.store.continue491
  %i.or = extractelement <16 x i1> %i.oj, i64 6
  br i1 %i.or, label %pred.store.if494, label %pred.store.continue495

pred.store.if494:                                 ; preds = %pred.store.continue493
  store i8 32, ptr %next.gep454, align 1, !tbaa !49
  br label %pred.store.continue495

pred.store.continue495:                           ; preds = %pred.store.if494, %pred.store.continue493
  %i.os = extractelement <16 x i1> %i.oj, i64 7
  br i1 %i.os, label %pred.store.if496, label %pred.store.continue497

pred.store.if496:                                 ; preds = %pred.store.continue495
  store i8 32, ptr %next.gep455, align 1, !tbaa !49
  br label %pred.store.continue497

pred.store.continue497:                           ; preds = %pred.store.if496, %pred.store.continue495
  %i.ot = extractelement <16 x i1> %i.oj, i64 8
  br i1 %i.ot, label %pred.store.if498, label %pred.store.continue499

pred.store.if498:                                 ; preds = %pred.store.continue497
  store i8 32, ptr %next.gep456, align 1, !tbaa !49
  br label %pred.store.continue499

pred.store.continue499:                           ; preds = %pred.store.if498, %pred.store.continue497
  %i.ou = extractelement <16 x i1> %i.oj, i64 9
  br i1 %i.ou, label %pred.store.if500, label %pred.store.continue501

pred.store.if500:                                 ; preds = %pred.store.continue499
  store i8 32, ptr %next.gep457, align 1, !tbaa !49
  br label %pred.store.continue501

pred.store.continue501:                           ; preds = %pred.store.if500, %pred.store.continue499
  %i.ov = extractelement <16 x i1> %i.oj, i64 10
  br i1 %i.ov, label %pred.store.if502, label %pred.store.continue503

pred.store.if502:                                 ; preds = %pred.store.continue501
  store i8 32, ptr %next.gep458, align 1, !tbaa !49
  br label %pred.store.continue503

pred.store.continue503:                           ; preds = %pred.store.if502, %pred.store.continue501
  %i.ow = extractelement <16 x i1> %i.oj, i64 11
  br i1 %i.ow, label %pred.store.if504, label %pred.store.continue505

pred.store.if504:                                 ; preds = %pred.store.continue503
  store i8 32, ptr %next.gep459, align 1, !tbaa !49
  br label %pred.store.continue505

pred.store.continue505:                           ; preds = %pred.store.if504, %pred.store.continue503
  %i.ox = extractelement <16 x i1> %i.oj, i64 12
  br i1 %i.ox, label %pred.store.if506, label %pred.store.continue507

pred.store.if506:                                 ; preds = %pred.store.continue505
  store i8 32, ptr %next.gep460, align 1, !tbaa !49
  br label %pred.store.continue507

pred.store.continue507:                           ; preds = %pred.store.if506, %pred.store.continue505
  %i.oy = extractelement <16 x i1> %i.oj, i64 13
  br i1 %i.oy, label %pred.store.if508, label %pred.store.continue509

pred.store.if508:                                 ; preds = %pred.store.continue507
  store i8 32, ptr %next.gep461, align 1, !tbaa !49
  br label %pred.store.continue509

pred.store.continue509:                           ; preds = %pred.store.if508, %pred.store.continue507
  %i.oz = extractelement <16 x i1> %i.oj, i64 14
  br i1 %i.oz, label %pred.store.if510, label %pred.store.continue511
end_hunk_3
begin_hunk_4_@cleanupURL:bb.a
  br label %pred.store.continue527

pred.store.continue527:                           ; preds = %pred.store.if526, %pred.store.continue525
  %i.pi = extractelement <16 x i1> %i.ok, i64 7
  br i1 %i.pi, label %pred.store.if528, label %pred.store.continue529

pred.store.if528:                                 ; preds = %pred.store.continue527
  store i8 32, ptr %next.gep471, align 1, !tbaa !49
  br label %pred.store.continue529

pred.store.continue529:                           ; preds = %pred.store.if528, %pred.store.continue527
  %i.pj = extractelement <16 x i1> %i.ok, i64 8
  br i1 %i.pj, label %pred.store.if530, label %pred.store.continue531

pred.store.if530:                                 ; preds = %pred.store.continue529
  store i8 32, ptr %next.gep472, align 1, !tbaa !49
  br label %pred.store.continue531

pred.store.continue531:                           ; preds = %pred.store.if530, %pred.store.continue529
  %i.pk = extractelement <16 x i1> %i.ok, i64 9
  br i1 %i.pk, label %pred.store.if532, label %pred.store.continue533

pred.store.if532:                                 ; preds = %pred.store.continue531
  store i8 32, ptr %next.gep473, align 1, !tbaa !49
  br label %pred.store.continue533

pred.store.continue533:                           ; preds = %pred.store.if532, %pred.store.continue531
  %i.pl = extractelement <16 x i1> %i.ok, i64 10
  br i1 %i.pl, label %pred.store.if534, label %pred.store.continue535

pred.store.if534:                                 ; preds = %pred.store.continue533
  store i8 32, ptr %next.gep474, align 1, !tbaa !49
  br label %pred.store.continue535

pred.store.continue535:                           ; preds = %pred.store.if534, %pred.store.continue533
  %i.pm = extractelement <16 x i1> %i.ok, i64 11
  br i1 %i.pm, label %pred.store.if536, label %pred.store.continue537

pred.store.if536:                                 ; preds = %pred.store.continue535
  store i8 32, ptr %next.gep475, align 1, !tbaa !49
  br label %pred.store.continue537

pred.store.continue537:                           ; preds = %pred.store.if536, %pred.store.continue535
  %i.pn = extractelement <16 x i1> %i.ok, i64 12
  br i1 %i.pn, label %pred.store.if538, label %pred.store.continue539

pred.store.if538:                                 ; preds = %pred.store.continue537
  store i8 32, ptr %next.gep476, align 1, !tbaa !49
  br label %pred.store.continue539

pred.store.continue539:                           ; preds = %pred.store.if538, %pred.store.continue537
  %i.po = extractelement <16 x i1> %i.ok, i64 13
  br i1 %i.po, label %pred.store.if540, label %pred.store.continue541

pred.store.if540:                                 ; preds = %pred.store.continue539
  store i8 32, ptr %next.gep477, align 1, !tbaa !49
  br label %pred.store.continue541

pred.store.continue541:                           ; preds = %pred.store.if540, %pred.store.continue539
  %i.pp = extractelement <16 x i1> %i.ok, i64 14
  br i1 %i.pp, label %pred.store.if542, label %pred.store.continue543

pred.store.if542:                                 ; preds = %pred.store.continue541
  store i8 32, ptr %next.gep478, align 1, !tbaa !49
  br label %pred.store.continue543

pred.store.continue543:                           ; preds = %pred.store.if542, %pred.store.continue541
  %i.pq = extractelement <16 x i1> %i.ok, i64 15
  br i1 %i.pq, label %pred.store.if544, label %pred.store.continue545

pred.store.if544:                                 ; preds = %pred.store.continue543
  store i8 32, ptr %next.gep479, align 1, !tbaa !49
  br label %pred.store.continue545

pred.store.continue545:                           ; preds = %pred.store.if544, %pred.store.continue543
  %index.next546 = add nuw i64 %index447, 32      ; 2 uses
  %i.pr = icmp eq i64 %index.next546, %n.vec445
  br i1 %i.pr, label %middle.block547, label %vector.body446, !llvm.loop !77

middle.block547:                                  ; preds = %pred.store.continue545
  %cmp.n548 = icmp eq i64 %i.nb, %n.vec445
  br i1 %cmp.n548, label %iter.check699, label %vec.epilog.iter.check552

vec.epilog.iter.check552:                         ; preds = %middle.block547
  %min.epilog.iters.check553 = icmp eq i64 %n.mod.vf444, 0
  br i1 %min.epilog.iters.check553, label %.lr.ph.i104.preheader, label %vec.epilog.ph554, !prof !68

vec.epilog.ph554:                                 ; preds = %vector.main.loop.iter.check441, %vec.epilog.iter.check552
  %vec.epilog.resume.val549 = phi i64 [ %n.vec445, %vec.epilog.iter.check552 ], [ 0, %vector.main.loop.iter.check441 ]
  %n.vec556 = and i64 %i.nb, -8                   ; 3 uses
  %i.ps = getelementptr i8, ptr %i.m, i64 %n.vec556
  br label %vec.epilog.vector.body557

vec.epilog.vector.body557:                        ; preds = %pred.store.continue583, %vec.epilog.ph554
  %index558 = phi i64 [ %vec.epilog.resume.val549, %vec.epilog.ph554 ], [ %index.next584, %pred.store.continue583 ] ; 9 uses
  %next.gep559 = getelementptr i8, ptr %i.m, i64 %index558 ; 2 uses
  %i.pt = getelementptr i8, ptr %i.m, i64 %index558
  %next.gep560 = getelementptr i8, ptr %i.pt, i64 1
  %i.pu = getelementptr i8, ptr %i.m, i64 %index558
  %next.gep561 = getelementptr i8, ptr %i.pu, i64 2
  %i.pv = getelementptr i8, ptr %i.m, i64 %index558
  %next.gep562 = getelementptr i8, ptr %i.pv, i64 3
  %i.pw = getelementptr i8, ptr %i.m, i64 %index558
  %next.gep563 = getelementptr i8, ptr %i.pw, i64 4
  %i.px = getelementptr i8, ptr %i.m, i64 %index558
  %next.gep564 = getelementptr i8, ptr %i.px, i64 5
  %i.py = getelementptr i8, ptr %i.m, i64 %index558
  %next.gep565 = getelementptr i8, ptr %i.py, i64 6
  %i.pz = getelementptr i8, ptr %i.m, i64 %index558
  %next.gep566 = getelementptr i8, ptr %i.pz, i64 7
  %wide.load567 = load <8 x i8>, ptr %next.gep559, align 1, !tbaa !49
  %i.qa = icmp eq <8 x i8> %wide.load567, splat (i8 34) ; 8 uses
  %i.qb = extractelement <8 x i1> %i.qa, i64 0
  br i1 %i.qb, label %pred.store.if568, label %pred.store.continue569

pred.store.if568:                                 ; preds = %vec.epilog.vector.body557
  store i8 32, ptr %next.gep559, align 1, !tbaa !49
  br label %pred.store.continue569

pred.store.continue569:                           ; preds = %pred.store.if568, %vec.epilog.vector.body557
  %i.qc = extractelement <8 x i1> %i.qa, i64 1
  br i1 %i.qc, label %pred.store.if570, label %pred.store.continue571

pred.store.if570:                                 ; preds = %pred.store.continue569
  store i8 32, ptr %next.gep560, align 1, !tbaa !49
  br label %pred.store.continue571

pred.store.continue571:                           ; preds = %pred.store.if570, %pred.store.continue569
  %i.qd = extractelement <8 x i1> %i.qa, i64 2
  br i1 %i.qd, label %pred.store.if572, label %pred.store.continue573

pred.store.if572:                                 ; preds = %pred.store.continue571
  store i8 32, ptr %next.gep561, align 1, !tbaa !49
  br label %pred.store.continue573

pred.store.continue573:                           ; preds = %pred.store.if572, %pred.store.continue571
  %i.qe = extractelement <8 x i1> %i.qa, i64 3
  br i1 %i.qe, label %pred.store.if574, label %pred.store.continue575

pred.store.if574:                                 ; preds = %pred.store.continue573
  store i8 32, ptr %next.gep562, align 1, !tbaa !49
  br label %pred.store.continue575

pred.store.continue575:                           ; preds = %pred.store.if574, %pred.store.continue573
  %i.qf = extractelement <8 x i1> %i.qa, i64 4
  br i1 %i.qf, label %pred.store.if576, label %pred.store.continue577

pred.store.if576:                                 ; preds = %pred.store.continue575
  store i8 32, ptr %next.gep563, align 1, !tbaa !49
  br label %pred.store.continue577

pred.store.continue577:                           ; preds = %pred.store.if576, %pred.store.continue575
  %i.qg = extractelement <8 x i1> %i.qa, i64 5
  br i1 %i.qg, label %pred.store.if578, label %pred.store.continue579

pred.store.if578:                                 ; preds = %pred.store.continue577
  store i8 32, ptr %next.gep564, align 1, !tbaa !49
  br label %pred.store.continue579

pred.store.continue579:                           ; preds = %pred.store.if578, %pred.store.continue577
  %i.qh = extractelement <8 x i1> %i.qa, i64 6
  br i1 %i.qh, label %pred.store.if580, label %pred.store.continue581

pred.store.if580:                                 ; preds = %pred.store.continue579
  store i8 32, ptr %next.gep565, align 1, !tbaa !49
  br label %pred.store.continue581

pred.store.continue581:                           ; preds = %pred.store.if580, %pred.store.continue579
  %i.qi = extractelement <8 x i1> %i.qa, i64 7
  br i1 %i.qi, label %pred.store.if582, label %pred.store.continue583

pred.store.if582:                                 ; preds = %pred.store.continue581
  store i8 32, ptr %next.gep566, align 1, !tbaa !49
  br label %pred.store.continue583

pred.store.continue583:                           ; preds = %pred.store.if582, %pred.store.continue581
  %index.next584 = add nuw i64 %index558, 8       ; 2 uses
  %i.qj = icmp eq i64 %index.next584, %n.vec556
  br i1 %i.qj, label %vec.epilog.middle.block585, label %vec.epilog.vector.body557, !llvm.loop !78

vec.epilog.middle.block585:                       ; preds = %pred.store.continue583
  %cmp.n586 = icmp eq i64 %i.nb, %n.vec556
  br i1 %cmp.n586, label %iter.check699, label %.lr.ph.i104.preheader

.lr.ph.i104.preheader:                            ; preds = %iter.check550, %vec.epilog.iter.check552, %vec.epilog.middle.block585
  %.07.i105.ph = phi ptr [ %i.m, %iter.check550 ], [ %i.nc, %vec.epilog.iter.check552 ], [ %i.ps, %vec.epilog.middle.block585 ]
  br label %.lr.ph.i104

.lr.ph.i104:                                      ; preds = %.lr.ph.i104.preheader, %bb.ah
  %.07.i105 = phi ptr [ %i.qm, %bb.ah ], [ %.07.i105.ph, %.lr.ph.i104.preheader ] ; 3 uses
  %i.qk = load i8, ptr %.07.i105, align 1, !tbaa !49
  %i.ql = icmp eq i8 %i.qk, 34
  br i1 %i.ql, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %.lr.ph.i104
  store i8 32, ptr %.07.i105, align 1, !tbaa !49
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.lr.ph.i104
  %i.qm = getelementptr inbounds nuw i8, ptr %.07.i105, i64 1 ; 2 uses
  %.not.i106 = icmp ugt ptr %i.qm, %i.az
  br i1 %.not.i106, label %iter.check699, label %.lr.ph.i104, !llvm.loop !79

iter.check699:                                    ; preds = %bb.ah, %vec.epilog.middle.block585, %middle.block547
  %i.qn = add i64 %indvar, %i.e
  %i.qo = ptrtoaddr ptr %i.m to i64
  %i.qp = add i64 %i.qo, 1
  %i.qq = ptrtoaddr ptr %i.az to i64
  %i.qr = add i64 %i.qq, 1
  %umax588 = tail call i64 @llvm.umax.i64(i64 %i.qp, i64 %i.qr)
  %i.qs = sub i64 %umax588, %i.qn                 ; 7 uses
  %min.iters.check589 = icmp ult i64 %i.qs, 8
  br i1 %min.iters.check589, label %.lr.ph.i109.preheader, label %vector.main.loop.iter.check590

vector.main.loop.iter.check590:                   ; preds = %iter.check699
  %min.iters.check591 = icmp ult i64 %i.qs, 32
  br i1 %min.iters.check591, label %vec.epilog.ph703, label %vector.ph592

vector.ph592:                                     ; preds = %vector.main.loop.iter.check590
  %n.mod.vf593 = and i64 %i.qs, 24
  %n.vec594 = and i64 %i.qs, -32                  ; 4 uses
  %i.qt = getelementptr i8, ptr %i.m, i64 %n.vec594
  br label %vector.body595

vector.body595:                                   ; preds = %pred.store.continue694, %vector.ph592
  %index596 = phi i64 [ 0, %vector.ph592 ], [ %index.next695, %pred.store.continue694 ] ; 33 uses
  %next.gep597 = getelementptr i8, ptr %i.m, i64 %index596 ; 3 uses
  %i.qu = getelementptr i8, ptr %i.m, i64 %index596
  %next.gep598 = getelementptr i8, ptr %i.qu, i64 1
  %i.qv = getelementptr i8, ptr %i.m, i64 %index596
  %next.gep599 = getelementptr i8, ptr %i.qv, i64 2
  %i.qw = getelementptr i8, ptr %i.m, i64 %index596
  %next.gep600 = getelementptr i8, ptr %i.qw, i64 3
  %i.qx = getelementptr i8, ptr %i.m, i64 %index596
  %next.gep601 = getelementptr i8, ptr %i.qx, i64 4
  %i.qy = getelementptr i8, ptr %i.m, i64 %index596
  %next.gep602 = getelementptr i8, ptr %i.qy, i64 5
  %i.qz = getelementptr i8, ptr %i.m, i64 %index596
  %next.gep603 = getelementptr i8, ptr %i.qz, i64 6
  %i.ra = getelementptr i8, ptr %i.m, i64 %index596
  %next.gep604 = getelementptr i8, ptr %i.ra, i64 7
  %i.rb = getelementptr i8, ptr %i.m, i64 %index596
  %next.gep605 = getelementptr i8, ptr %i.rb, i64 8
  %i.rc = getelementptr i8, ptr %i.m, i64 %index596
  %next.gep606 = getelementptr i8, ptr %i.rc, i64 9
  %i.rd = getelementptr i8, ptr %i.m, i64 %index596
  %next.gep607 = getelementptr i8, ptr %i.rd, i64 10
  %i.re = getelementptr i8, ptr %i.m, i64 %index596
  %next.gep608 = getelementptr i8, ptr %i.re, i64 11
  %i.rf = getelementptr i8, ptr %i.m, i64 %index596
  %next.gep609 = getelementptr i8, ptr %i.rf, i64 12
  %i.rg = getelementptr i8, ptr %i.m, i64 %index596
  %next.gep610 = getelementptr i8, ptr %i.rg, i64 13
  %i.rh = getelementptr i8, ptr %i.m, i64 %index596
  %next.gep611 = getelementptr i8, ptr %i.rh, i64 14
  %i.ri = getelementptr i8, ptr %i.m, i64 %index596
  %next.gep612 = getelementptr i8, ptr %i.ri, i64 15
  %i.rj = getelementptr i8, ptr %i.m, i64 %index596
  %next.gep613 = getelementptr i8, ptr %i.rj, i64 16
  %i.rk = getelementptr i8, ptr %i.m, i64 %index596
  %next.gep614 = getelementptr i8, ptr %i.rk, i64 17
  %i.rl = getelementptr i8, ptr %i.m, i64 %index596
  %next.gep615 = getelementptr i8, ptr %i.rl, i64 18
  %i.rm = getelementptr i8, ptr %i.m, i64 %index596
  %next.gep616 = getelementptr i8, ptr %i.rm, i64 19
  %i.rn = getelementptr i8, ptr %i.m, i64 %index596
  %next.gep617 = getelementptr i8, ptr %i.rn, i64 20
  %i.ro = getelementptr i8, ptr %i.m, i64 %index596
  %next.gep618 = getelementptr i8, ptr %i.ro, i64 21
  %i.rp = getelementptr i8, ptr %i.m, i64 %index596
  %next.gep619 = getelementptr i8, ptr %i.rp, i64 22
  %i.rq = getelementptr i8, ptr %i.m, i64 %index596
  %next.gep620 = getelementptr i8, ptr %i.rq, i64 23
  %i.rr = getelementptr i8, ptr %i.m, i64 %index596
  %next.gep621 = getelementptr i8, ptr %i.rr, i64 24
  %i.rs = getelementptr i8, ptr %i.m, i64 %index596
  %next.gep622 = getelementptr i8, ptr %i.rs, i64 25
  %i.rt = getelementptr i8, ptr %i.m, i64 %index596
  %next.gep623 = getelementptr i8, ptr %i.rt, i64 26
  %i.ru = getelementptr i8, ptr %i.m, i64 %index596
  %next.gep624 = getelementptr i8, ptr %i.ru, i64 27
  %i.rv = getelementptr i8, ptr %i.m, i64 %index596
  %next.gep625 = getelementptr i8, ptr %i.rv, i64 28
  %i.rw = getelementptr i8, ptr %i.m, i64 %index596
  %next.gep626 = getelementptr i8, ptr %i.rw, i64 29
  %i.rx = getelementptr i8, ptr %i.m, i64 %index596
  %next.gep627 = getelementptr i8, ptr %i.rx, i64 30
  %i.ry = getelementptr i8, ptr %i.m, i64 %index596
  %next.gep628 = getelementptr i8, ptr %i.ry, i64 31
  %i.rz = getelementptr i8, ptr %next.gep597, i64 16
  %wide.load629 = load <16 x i8>, ptr %next.gep597, align 1, !tbaa !49
  %wide.load630 = load <16 x i8>, ptr %i.rz, align 1, !tbaa !49
  %i.sa = icmp eq <16 x i8> %wide.load629, splat (i8 59) ; 16 uses
  %i.sb = icmp eq <16 x i8> %wide.load630, splat (i8 59) ; 16 uses
  %i.sc = extractelement <16 x i1> %i.sa, i64 0
  br i1 %i.sc, label %pred.store.if631, label %pred.store.continue632

pred.store.if631:                                 ; preds = %vector.body595
  store i8 32, ptr %next.gep597, align 1, !tbaa !49
  br label %pred.store.continue632

pred.store.continue632:                           ; preds = %pred.store.if631, %vector.body595
  %i.sd = extractelement <16 x i1> %i.sa, i64 1
  br i1 %i.sd, label %pred.store.if633, label %pred.store.continue634

pred.store.if633:                                 ; preds = %pred.store.continue632
  store i8 32, ptr %next.gep598, align 1, !tbaa !49
  br label %pred.store.continue634

pred.store.continue634:                           ; preds = %pred.store.if633, %pred.store.continue632
  %i.se = extractelement <16 x i1> %i.sa, i64 2
  br i1 %i.se, label %pred.store.if635, label %pred.store.continue636

pred.store.if635:                                 ; preds = %pred.store.continue634
  store i8 32, ptr %next.gep599, align 1, !tbaa !49
  br label %pred.store.continue636

pred.store.continue636:                           ; preds = %pred.store.if635, %pred.store.continue634
  %i.sf = extractelement <16 x i1> %i.sa, i64 3
  br i1 %i.sf, label %pred.store.if637, label %pred.store.continue638

pred.store.if637:                                 ; preds = %pred.store.continue636
  store i8 32, ptr %next.gep600, align 1, !tbaa !49
  br label %pred.store.continue638

pred.store.continue638:                           ; preds = %pred.store.if637, %pred.store.continue636
  %i.sg = extractelement <16 x i1> %i.sa, i64 4
  br i1 %i.sg, label %pred.store.if639, label %pred.store.continue640

pred.store.if639:                                 ; preds = %pred.store.continue638
  store i8 32, ptr %next.gep601, align 1, !tbaa !49
  br label %pred.store.continue640

pred.store.continue640:                           ; preds = %pred.store.if639, %pred.store.continue638
  %i.sh = extractelement <16 x i1> %i.sa, i64 5
  br i1 %i.sh, label %pred.store.if641, label %pred.store.continue642

pred.store.if641:                                 ; preds = %pred.store.continue640
  store i8 32, ptr %next.gep602, align 1, !tbaa !49
  br label %pred.store.continue642

pred.store.continue642:                           ; preds = %pred.store.if641, %pred.store.continue640
  %i.si = extractelement <16 x i1> %i.sa, i64 6
  br i1 %i.si, label %pred.store.if643, label %pred.store.continue644

pred.store.if643:                                 ; preds = %pred.store.continue642
  store i8 32, ptr %next.gep603, align 1, !tbaa !49
  br label %pred.store.continue644

pred.store.continue644:                           ; preds = %pred.store.if643, %pred.store.continue642
  %i.sj = extractelement <16 x i1> %i.sa, i64 7
  br i1 %i.sj, label %pred.store.if645, label %pred.store.continue646

pred.store.if645:                                 ; preds = %pred.store.continue644
  store i8 32, ptr %next.gep604, align 1, !tbaa !49
  br label %pred.store.continue646

pred.store.continue646:                           ; preds = %pred.store.if645, %pred.store.continue644
  %i.sk = extractelement <16 x i1> %i.sa, i64 8
  br i1 %i.sk, label %pred.store.if647, label %pred.store.continue648

pred.store.if647:                                 ; preds = %pred.store.continue646
  store i8 32, ptr %next.gep605, align 1, !tbaa !49
  br label %pred.store.continue648

pred.store.continue648:                           ; preds = %pred.store.if647, %pred.store.continue646
  %i.sl = extractelement <16 x i1> %i.sa, i64 9
  br i1 %i.sl, label %pred.store.if649, label %pred.store.continue650

pred.store.if649:                                 ; preds = %pred.store.continue648
  store i8 32, ptr %next.gep606, align 1, !tbaa !49
  br label %pred.store.continue650

pred.store.continue650:                           ; preds = %pred.store.if649, %pred.store.continue648
  %i.sm = extractelement <16 x i1> %i.sa, i64 10
  br i1 %i.sm, label %pred.store.if651, label %pred.store.continue652

pred.store.if651:                                 ; preds = %pred.store.continue650
  store i8 32, ptr %next.gep607, align 1, !tbaa !49
  br label %pred.store.continue652

pred.store.continue652:                           ; preds = %pred.store.if651, %pred.store.continue650
  %i.sn = extractelement <16 x i1> %i.sa, i64 11
  br i1 %i.sn, label %pred.store.if653, label %pred.store.continue654

pred.store.if653:                                 ; preds = %pred.store.continue652
  store i8 32, ptr %next.gep608, align 1, !tbaa !49
  br label %pred.store.continue654

pred.store.continue654:                           ; preds = %pred.store.if653, %pred.store.continue652
  %i.so = extractelement <16 x i1> %i.sa, i64 12
  br i1 %i.so, label %pred.store.if655, label %pred.store.continue656

pred.store.if655:                                 ; preds = %pred.store.continue654
  store i8 32, ptr %next.gep609, align 1, !tbaa !49
  br label %pred.store.continue656

pred.store.continue656:                           ; preds = %pred.store.if655, %pred.store.continue654
  %i.sp = extractelement <16 x i1> %i.sa, i64 13
  br i1 %i.sp, label %pred.store.if657, label %pred.store.continue658

pred.store.if657:                                 ; preds = %pred.store.continue656
  store i8 32, ptr %next.gep610, align 1, !tbaa !49
  br label %pred.store.continue658

pred.store.continue658:                           ; preds = %pred.store.if657, %pred.store.continue656
  %i.sq = extractelement <16 x i1> %i.sa, i64 14
  br i1 %i.sq, label %pred.store.if659, label %pred.store.continue660
end_hunk_4
begin_hunk_5_@cleanupURL:bb.a
  br label %pred.store.continue676

pred.store.continue676:                           ; preds = %pred.store.if675, %pred.store.continue674
  %i.sz = extractelement <16 x i1> %i.sb, i64 7
  br i1 %i.sz, label %pred.store.if677, label %pred.store.continue678

pred.store.if677:                                 ; preds = %pred.store.continue676
  store i8 32, ptr %next.gep620, align 1, !tbaa !49
  br label %pred.store.continue678

pred.store.continue678:                           ; preds = %pred.store.if677, %pred.store.continue676
  %i.ta = extractelement <16 x i1> %i.sb, i64 8
  br i1 %i.ta, label %pred.store.if679, label %pred.store.continue680

pred.store.if679:                                 ; preds = %pred.store.continue678
  store i8 32, ptr %next.gep621, align 1, !tbaa !49
  br label %pred.store.continue680

pred.store.continue680:                           ; preds = %pred.store.if679, %pred.store.continue678
  %i.tb = extractelement <16 x i1> %i.sb, i64 9
  br i1 %i.tb, label %pred.store.if681, label %pred.store.continue682

pred.store.if681:                                 ; preds = %pred.store.continue680
  store i8 32, ptr %next.gep622, align 1, !tbaa !49
  br label %pred.store.continue682

pred.store.continue682:                           ; preds = %pred.store.if681, %pred.store.continue680
  %i.tc = extractelement <16 x i1> %i.sb, i64 10
  br i1 %i.tc, label %pred.store.if683, label %pred.store.continue684

pred.store.if683:                                 ; preds = %pred.store.continue682
  store i8 32, ptr %next.gep623, align 1, !tbaa !49
  br label %pred.store.continue684

pred.store.continue684:                           ; preds = %pred.store.if683, %pred.store.continue682
  %i.td = extractelement <16 x i1> %i.sb, i64 11
  br i1 %i.td, label %pred.store.if685, label %pred.store.continue686

pred.store.if685:                                 ; preds = %pred.store.continue684
  store i8 32, ptr %next.gep624, align 1, !tbaa !49
  br label %pred.store.continue686

pred.store.continue686:                           ; preds = %pred.store.if685, %pred.store.continue684
  %i.te = extractelement <16 x i1> %i.sb, i64 12
  br i1 %i.te, label %pred.store.if687, label %pred.store.continue688

pred.store.if687:                                 ; preds = %pred.store.continue686
  store i8 32, ptr %next.gep625, align 1, !tbaa !49
  br label %pred.store.continue688

pred.store.continue688:                           ; preds = %pred.store.if687, %pred.store.continue686
  %i.tf = extractelement <16 x i1> %i.sb, i64 13
  br i1 %i.tf, label %pred.store.if689, label %pred.store.continue690

pred.store.if689:                                 ; preds = %pred.store.continue688
  store i8 32, ptr %next.gep626, align 1, !tbaa !49
  br label %pred.store.continue690

pred.store.continue690:                           ; preds = %pred.store.if689, %pred.store.continue688
  %i.tg = extractelement <16 x i1> %i.sb, i64 14
  br i1 %i.tg, label %pred.store.if691, label %pred.store.continue692

pred.store.if691:                                 ; preds = %pred.store.continue690
  store i8 32, ptr %next.gep627, align 1, !tbaa !49
  br label %pred.store.continue692

pred.store.continue692:                           ; preds = %pred.store.if691, %pred.store.continue690
  %i.th = extractelement <16 x i1> %i.sb, i64 15
  br i1 %i.th, label %pred.store.if693, label %pred.store.continue694

pred.store.if693:                                 ; preds = %pred.store.continue692
  store i8 32, ptr %next.gep628, align 1, !tbaa !49
  br label %pred.store.continue694

pred.store.continue694:                           ; preds = %pred.store.if693, %pred.store.continue692
  %index.next695 = add nuw i64 %index596, 32      ; 2 uses
  %i.ti = icmp eq i64 %index.next695, %n.vec594
  br i1 %i.ti, label %middle.block696, label %vector.body595, !llvm.loop !80

middle.block696:                                  ; preds = %pred.store.continue694
  %cmp.n697 = icmp eq i64 %i.qs, %n.vec594
  br i1 %cmp.n697, label %str_replace.exit112, label %vec.epilog.iter.check701

vec.epilog.iter.check701:                         ; preds = %middle.block696
  %min.epilog.iters.check702 = icmp eq i64 %n.mod.vf593, 0
  br i1 %min.epilog.iters.check702, label %.lr.ph.i109.preheader, label %vec.epilog.ph703, !prof !68

vec.epilog.ph703:                                 ; preds = %vector.main.loop.iter.check590, %vec.epilog.iter.check701
  %vec.epilog.resume.val698 = phi i64 [ %n.vec594, %vec.epilog.iter.check701 ], [ 0, %vector.main.loop.iter.check590 ]
  %n.vec705 = and i64 %i.qs, -8                   ; 3 uses
  %i.tj = getelementptr i8, ptr %i.m, i64 %n.vec705
  br label %vec.epilog.vector.body706

vec.epilog.vector.body706:                        ; preds = %pred.store.continue732, %vec.epilog.ph703
  %index707 = phi i64 [ %vec.epilog.resume.val698, %vec.epilog.ph703 ], [ %index.next733, %pred.store.continue732 ] ; 9 uses
  %next.gep708 = getelementptr i8, ptr %i.m, i64 %index707 ; 2 uses
  %i.tk = getelementptr i8, ptr %i.m, i64 %index707
  %next.gep709 = getelementptr i8, ptr %i.tk, i64 1
  %i.tl = getelementptr i8, ptr %i.m, i64 %index707
  %next.gep710 = getelementptr i8, ptr %i.tl, i64 2
  %i.tm = getelementptr i8, ptr %i.m, i64 %index707
  %next.gep711 = getelementptr i8, ptr %i.tm, i64 3
  %i.tn = getelementptr i8, ptr %i.m, i64 %index707
  %next.gep712 = getelementptr i8, ptr %i.tn, i64 4
  %i.to = getelementptr i8, ptr %i.m, i64 %index707
  %next.gep713 = getelementptr i8, ptr %i.to, i64 5
  %i.tp = getelementptr i8, ptr %i.m, i64 %index707
  %next.gep714 = getelementptr i8, ptr %i.tp, i64 6
  %i.tq = getelementptr i8, ptr %i.m, i64 %index707
  %next.gep715 = getelementptr i8, ptr %i.tq, i64 7
  %wide.load716 = load <8 x i8>, ptr %next.gep708, align 1, !tbaa !49
  %i.tr = icmp eq <8 x i8> %wide.load716, splat (i8 59) ; 8 uses
  %i.ts = extractelement <8 x i1> %i.tr, i64 0
  br i1 %i.ts, label %pred.store.if717, label %pred.store.continue718

pred.store.if717:                                 ; preds = %vec.epilog.vector.body706
  store i8 32, ptr %next.gep708, align 1, !tbaa !49
  br label %pred.store.continue718

pred.store.continue718:                           ; preds = %pred.store.if717, %vec.epilog.vector.body706
  %i.tt = extractelement <8 x i1> %i.tr, i64 1
  br i1 %i.tt, label %pred.store.if719, label %pred.store.continue720

pred.store.if719:                                 ; preds = %pred.store.continue718
  store i8 32, ptr %next.gep709, align 1, !tbaa !49
  br label %pred.store.continue720

pred.store.continue720:                           ; preds = %pred.store.if719, %pred.store.continue718
  %i.tu = extractelement <8 x i1> %i.tr, i64 2
  br i1 %i.tu, label %pred.store.if721, label %pred.store.continue722

pred.store.if721:                                 ; preds = %pred.store.continue720
  store i8 32, ptr %next.gep710, align 1, !tbaa !49
  br label %pred.store.continue722

pred.store.continue722:                           ; preds = %pred.store.if721, %pred.store.continue720
  %i.tv = extractelement <8 x i1> %i.tr, i64 3
  br i1 %i.tv, label %pred.store.if723, label %pred.store.continue724

pred.store.if723:                                 ; preds = %pred.store.continue722
  store i8 32, ptr %next.gep711, align 1, !tbaa !49
  br label %pred.store.continue724

pred.store.continue724:                           ; preds = %pred.store.if723, %pred.store.continue722
  %i.tw = extractelement <8 x i1> %i.tr, i64 4
  br i1 %i.tw, label %pred.store.if725, label %pred.store.continue726

pred.store.if725:                                 ; preds = %pred.store.continue724
  store i8 32, ptr %next.gep712, align 1, !tbaa !49
  br label %pred.store.continue726

pred.store.continue726:                           ; preds = %pred.store.if725, %pred.store.continue724
  %i.tx = extractelement <8 x i1> %i.tr, i64 5
  br i1 %i.tx, label %pred.store.if727, label %pred.store.continue728

pred.store.if727:                                 ; preds = %pred.store.continue726
  store i8 32, ptr %next.gep713, align 1, !tbaa !49
  br label %pred.store.continue728

pred.store.continue728:                           ; preds = %pred.store.if727, %pred.store.continue726
  %i.ty = extractelement <8 x i1> %i.tr, i64 6
  br i1 %i.ty, label %pred.store.if729, label %pred.store.continue730

pred.store.if729:                                 ; preds = %pred.store.continue728
  store i8 32, ptr %next.gep714, align 1, !tbaa !49
  br label %pred.store.continue730

pred.store.continue730:                           ; preds = %pred.store.if729, %pred.store.continue728
  %i.tz = extractelement <8 x i1> %i.tr, i64 7
  br i1 %i.tz, label %pred.store.if731, label %pred.store.continue732

pred.store.if731:                                 ; preds = %pred.store.continue730
  store i8 32, ptr %next.gep715, align 1, !tbaa !49
  br label %pred.store.continue732

pred.store.continue732:                           ; preds = %pred.store.if731, %pred.store.continue730
  %index.next733 = add nuw i64 %index707, 8       ; 2 uses
  %i.ua = icmp eq i64 %index.next733, %n.vec705
  br i1 %i.ua, label %vec.epilog.middle.block734, label %vec.epilog.vector.body706, !llvm.loop !81

vec.epilog.middle.block734:                       ; preds = %pred.store.continue732
  %cmp.n735 = icmp eq i64 %i.qs, %n.vec705
  br i1 %cmp.n735, label %str_replace.exit112, label %.lr.ph.i109.preheader

.lr.ph.i109.preheader:                            ; preds = %iter.check699, %vec.epilog.iter.check701, %vec.epilog.middle.block734
  %.07.i110.ph = phi ptr [ %i.m, %iter.check699 ], [ %i.qt, %vec.epilog.iter.check701 ], [ %i.tj, %vec.epilog.middle.block734 ]
  br label %.lr.ph.i109

.lr.ph.i109:                                      ; preds = %.lr.ph.i109.preheader, %bb.aj
  %.07.i110 = phi ptr [ %i.ud, %bb.aj ], [ %.07.i110.ph, %.lr.ph.i109.preheader ] ; 3 uses
  %i.ub = load i8, ptr %.07.i110, align 1, !tbaa !49
  %i.uc = icmp eq i8 %i.ub, 59
  br i1 %i.uc, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %.lr.ph.i109
  store i8 32, ptr %.07.i110, align 1, !tbaa !49
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %.lr.ph.i109
  %i.ud = getelementptr inbounds nuw i8, ptr %.07.i110, i64 1 ; 2 uses
  %.not.i111 = icmp ugt ptr %i.ud, %i.az
  br i1 %.not.i111, label %str_replace.exit112, label %.lr.ph.i109, !llvm.loop !82

str_replace.exit112:                              ; preds = %bb.aj, %middle.block696, %vec.epilog.middle.block734, %bb.z
  call fastcc void @str_strip(ptr noundef %i.a, ptr noundef %i.b, ptr noundef nonnull @lt, i64 noundef 3)
  call fastcc void @str_strip(ptr noundef %i.a, ptr noundef %i.b, ptr noundef nonnull @gt, i64 noundef 3)
  %i.ue = load ptr, ptr %i.a, align 8, !tbaa !29  ; 3 uses
  %i.uf = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.ue, i32 noundef 58) #15 ; 2 uses
  %.not4410 = icmp eq ptr %i.uf, null
  br i1 %.not4410, label %.critedge50, label %.lr.ph12

bb.ak:                                            ; preds = %.lr.ph12
  br label %.lr.ph12, !llvm.loop !83

.lr.ph12:                                         ; preds = %str_replace.exit112, %bb.ak
  %.011 = phi ptr [ %i.ug, %bb.ak ], [ %i.uf, %str_replace.exit112 ]
  %i.ug = getelementptr inbounds nuw i8, ptr %.011, i64 1 ; 3 uses
  %i.uh = load i8, ptr %i.ug, align 1, !tbaa !49
  %i.ui = icmp eq i8 %i.uh, 47
  br i1 %i.ui, label %bb.ak, label %..critedge50_crit_edge, !llvm.loop !83

..critedge50_crit_edge:                           ; preds = %.lr.ph12
  br label %.critedge50, !llvm.loop !83

.critedge50:                                      ; preds = %..critedge50_crit_edge, %str_replace.exit112
  %.1 = phi ptr [ %i.ue, %str_replace.exit112 ], [ %i.ug, %..critedge50_crit_edge ] ; 3 uses
  %i.uj = tail call i64 @strcspn(ptr noundef nonnull %.1, ptr noundef nonnull @.str.25) #15 ; 5 uses
  %.not7.i113 = icmp eq i64 %i.uj, 0
  br i1 %.not7.i113, label %str_make_lowercase.exit, label %.lr.ph.i114

.lr.ph.i114:                                      ; preds = %.critedge50
  %i.uk = tail call ptr @__ctype_tolower_loc() #16 ; 5 uses
  %xtraiter = and i64 %i.uj, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i114, %.prol.preheader
  %.09.i.prol = phi ptr [ %i.ur, %.prol.preheader ], [ %.1, %.lr.ph.i114 ] ; 3 uses
  %.068.i.prol = phi i64 [ %i.us, %.prol.preheader ], [ %i.uj, %.lr.ph.i114 ]
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph.i114 ]
  %i.ul = load ptr, ptr %i.uk, align 8, !tbaa !84
  %i.um = load i8, ptr %.09.i.prol, align 1, !tbaa !49
  %i.un = sext i8 %i.um to i64
  %i.uo = getelementptr inbounds [4 x i8], ptr %i.ul, i64 %i.un
  %i.up = load i32, ptr %i.uo, align 4, !tbaa !4
  %i.uq = trunc i32 %i.up to i8
  store i8 %i.uq, ptr %.09.i.prol, align 1, !tbaa !49
  %i.ur = getelementptr inbounds nuw i8, ptr %.09.i.prol, i64 1 ; 2 uses
  %i.us = add i64 %.068.i.prol, -1                ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !86

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i114
  %.09.i.unr = phi ptr [ %.1, %.lr.ph.i114 ], [ %i.ur, %.prol.preheader ]
  %.068.i.unr = phi i64 [ %i.uj, %.lr.ph.i114 ], [ %i.us, %.prol.preheader ]
  %i.ut = icmp ult i64 %i.uj, 4
  br i1 %i.ut, label %str_make_lowercase.exit.loopexit, label %.lr.ph.i114.new

.lr.ph.i114.new:                                  ; preds = %.prol.loopexit, %.lr.ph.i114.new
  %.09.i = phi ptr [ %i.vv, %.lr.ph.i114.new ], [ %.09.i.unr, %.prol.loopexit ] ; 6 uses
  %.068.i = phi i64 [ %i.vw, %.lr.ph.i114.new ], [ %.068.i.unr, %.prol.loopexit ]
  %i.uu = load ptr, ptr %i.uk, align 8, !tbaa !84
  %i.uv = load i8, ptr %.09.i, align 1, !tbaa !49
  %i.uw = sext i8 %i.uv to i64
  %i.ux = getelementptr inbounds [4 x i8], ptr %i.uu, i64 %i.uw
  %i.uy = load i32, ptr %i.ux, align 4, !tbaa !4
  %i.uz = trunc i32 %i.uy to i8
  store i8 %i.uz, ptr %.09.i, align 1, !tbaa !49
  %i.va = getelementptr inbounds nuw i8, ptr %.09.i, i64 1 ; 2 uses
  %i.vb = load ptr, ptr %i.uk, align 8, !tbaa !84
  %i.vc = load i8, ptr %i.va, align 1, !tbaa !49
  %i.vd = sext i8 %i.vc to i64
  %i.ve = getelementptr inbounds [4 x i8], ptr %i.vb, i64 %i.vd
  %i.vf = load i32, ptr %i.ve, align 4, !tbaa !4
  %i.vg = trunc i32 %i.vf to i8
  store i8 %i.vg, ptr %i.va, align 1, !tbaa !49
  %i.vh = getelementptr inbounds nuw i8, ptr %.09.i, i64 2 ; 2 uses
  %i.vi = load ptr, ptr %i.uk, align 8, !tbaa !84
  %i.vj = load i8, ptr %i.vh, align 1, !tbaa !49
  %i.vk = sext i8 %i.vj to i64
  %i.vl = getelementptr inbounds [4 x i8], ptr %i.vi, i64 %i.vk
  %i.vm = load i32, ptr %i.vl, align 4, !tbaa !4
  %i.vn = trunc i32 %i.vm to i8
  store i8 %i.vn, ptr %i.vh, align 1, !tbaa !49
  %i.vo = getelementptr inbounds nuw i8, ptr %.09.i, i64 3 ; 2 uses
  %i.vp = load ptr, ptr %i.uk, align 8, !tbaa !84
  %i.vq = load i8, ptr %i.vo, align 1, !tbaa !49
  %i.vr = sext i8 %i.vq to i64
  %i.vs = getelementptr inbounds [4 x i8], ptr %i.vp, i64 %i.vr
  %i.vt = load i32, ptr %i.vs, align 4, !tbaa !4
  %i.vu = trunc i32 %i.vt to i8
  store i8 %i.vu, ptr %i.vo, align 1, !tbaa !49
  %i.vv = getelementptr inbounds nuw i8, ptr %.09.i, i64 4
  %i.vw = add i64 %.068.i, -4                     ; 2 uses
  %.not.i115.3 = icmp eq i64 %i.vw, 0
  br i1 %.not.i115.3, label %str_make_lowercase.exit.loopexit, label %.lr.ph.i114.new, !llvm.loop !88

str_make_lowercase.exit.loopexit:                 ; preds = %.lr.ph.i114.new, %.prol.loopexit
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !29
  br label %str_make_lowercase.exit

str_make_lowercase.exit:                          ; preds = %str_make_lowercase.exit.loopexit, %.critedge50
  %6 = phi ptr [ %.pre, %str_make_lowercase.exit.loopexit ], [ %i.ue, %.critedge50 ] ; 6 uses
  %i.vx = load ptr, ptr %i.b, align 8, !tbaa !29  ; 6 uses
  %.not.i116 = icmp ugt ptr %i.vx, %6
  br i1 %.not.i116, label %bb.al, label %str_hex_to_char.exit

bb.al:                                            ; preds = %str_make_lowercase.exit
  %i.vy = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %6) #15
  %i.vz = icmp ult i64 %i.vy, 3
  br i1 %i.vz, label %str_hex_to_char.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.wa = load i8, ptr %6, align 1, !tbaa !49
  %i.wb = icmp eq i8 %i.wa, 37
  br i1 %i.wb, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.wc = getelementptr inbounds nuw i8, ptr %6, i64 1
  %i.wd = load i8, ptr %i.wc, align 1, !tbaa !49  ; 2 uses
  %i.we = icmp eq i8 %i.wd, 48
  %i.wf = getelementptr inbounds nuw i8, ptr %6, i64 2 ; 3 uses
  %i.wg = load i8, ptr %i.wf, align 1, !tbaa !49  ; 2 uses
  %i.wh = icmp eq i8 %i.wg, 48
  %or.cond.i.i = select i1 %i.we, i1 %i.wh, i1 false
  br i1 %or.cond.i.i, label %hex2int.exit.i, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.an
  %i.wi = zext i8 %i.wd to i64
  %i.wj = getelementptr inbounds nuw [2 x i8], ptr @hextable, i64 %i.wi
  %i.wk = load i16, ptr %i.wj, align 2, !tbaa !62
  %i.wl = trunc i16 %i.wk to i8
  %i.wm = shl i8 %i.wl, 4
  %i.wn = zext i8 %i.wg to i64
  %i.wo = getelementptr inbounds nuw [2 x i8], ptr @hextable, i64 %i.wn
  %i.wp = load i16, ptr %i.wo, align 2, !tbaa !62
  %i.wq = trunc i16 %i.wp to i8
  %i.wr = or i8 %i.wm, %i.wq
  br label %hex2int.exit.i

hex2int.exit.i:                                   ; preds = %._crit_edge.i.i, %bb.an
  %i.ws = phi i8 [ %i.wr, %._crit_edge.i.i ], [ 1, %bb.an ]
  store i8 %i.ws, ptr %i.wf, align 1, !tbaa !49
  br label %bb.ao

bb.ao:                                            ; preds = %hex2int.exit.i, %bb.am
  %.0.i = phi ptr [ %i.wf, %hex2int.exit.i ], [ %6, %bb.am ] ; 3 uses
  store ptr %.0.i, ptr %i.a, align 8, !tbaa !29
  %i.wt = getelementptr inbounds nuw i8, ptr %.0.i, i64 4 ; 2 uses
  %i.wu = icmp ult ptr %i.wt, %i.vx
  br i1 %i.wu, label %.preheader.i117, label %._crit_edge.i

.preheader.i117:                                  ; preds = %bb.ao, %.critedge.i
  %i.wv = phi ptr [ %i.xt, %.critedge.i ], [ %i.wt, %bb.ao ] ; 3 uses
  %.0.pn38.i = phi ptr [ %.139.i, %.critedge.i ], [ %.0.i, %bb.ao ] ; 4 uses
  %.02737.i = phi ptr [ %.128.lcssa.i, %.critedge.i ], [ %i.vx, %bb.ao ]
  %.139.i = getelementptr inbounds nuw i8, ptr %.0.pn38.i, i64 1 ; 3 uses
  %i.ww = getelementptr inbounds nuw i8, ptr %.0.pn38.i, i64 2 ; 2 uses
  %i.wx = getelementptr inbounds nuw i8, ptr %.0.pn38.i, i64 3
  %i.wy = ptrtoint ptr %i.wv to i64
  %.1.promoted.i = load i8, ptr %.139.i, align 1, !tbaa !49
  %invariant.op = sub i64 1, %i.wy
  br label %bb.ap

bb.ap:                                            ; preds = %hex2int.exit34.i, %.preheader.i117
  %i.wz = phi i8 [ %.1.promoted.i, %.preheader.i117 ], [ %i.xp, %hex2int.exit34.i ]
  %.12835.i = phi ptr [ %.02737.i, %.preheader.i117 ], [ %i.xr, %hex2int.exit34.i ] ; 3 uses
  %i.xa = icmp eq i8 %i.wz, 37
  br i1 %i.xa, label %bb.aq, label %.critedge.i

bb.aq:                                            ; preds = %bb.ap
  %i.xb = load i8, ptr %i.ww, align 1, !tbaa !49  ; 2 uses
  %i.xc = icmp eq i8 %i.xb, 48
  %i.xd = load i8, ptr %i.wx, align 1, !tbaa !49  ; 2 uses
  %i.xe = icmp eq i8 %i.xd, 48
  %or.cond.i32.i = select i1 %i.xc, i1 %i.xe, i1 false
  br i1 %or.cond.i32.i, label %hex2int.exit34.i, label %._crit_edge.i33.i

._crit_edge.i33.i:                                ; preds = %bb.aq
  %i.xf = zext i8 %i.xb to i64
  %i.xg = getelementptr inbounds nuw [2 x i8], ptr @hextable, i64 %i.xf
  %i.xh = load i16, ptr %i.xg, align 2, !tbaa !62
  %i.xi = trunc i16 %i.xh to i8
  %i.xj = shl i8 %i.xi, 4
  %i.xk = zext i8 %i.xd to i64
  %i.xl = getelementptr inbounds nuw [2 x i8], ptr @hextable, i64 %i.xk
  %i.xm = load i16, ptr %i.xl, align 2, !tbaa !62
  %i.xn = trunc i16 %i.xm to i8
  %i.xo = or i8 %i.xj, %i.xn
  br label %hex2int.exit34.i

hex2int.exit34.i:                                 ; preds = %._crit_edge.i33.i, %bb.aq
  %i.xp = phi i8 [ %i.xo, %._crit_edge.i33.i ], [ 1, %bb.aq ] ; 2 uses
  store i8 %i.xp, ptr %.139.i, align 1, !tbaa !49
  %i.xq = ptrtoint ptr %.12835.i to i64
  %.reass.i.reass.reass = add i64 %i.xq, %invariant.op
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ww, ptr nonnull align 1 %i.wv, i64 %.reass.i.reass.reass, i1 false)
  %i.xr = getelementptr inbounds i8, ptr %.12835.i, i64 -2 ; 3 uses
  %i.xs = icmp ult ptr %i.wv, %i.xr
  br i1 %i.xs, label %bb.ap, label %.critedge.i, !llvm.loop !89

.critedge.i:                                      ; preds = %hex2int.exit34.i, %bb.ap
  %.128.lcssa.i = phi ptr [ %i.xr, %hex2int.exit34.i ], [ %.12835.i, %bb.ap ] ; 3 uses
  %i.xt = getelementptr inbounds nuw i8, ptr %.0.pn38.i, i64 5 ; 2 uses
  %i.xu = icmp ult ptr %i.xt, %.128.lcssa.i
  br i1 %i.xu, label %.preheader.i117, label %._crit_edge.i, !llvm.loop !90

._crit_edge.i:                                    ; preds = %.critedge.i, %bb.ao
  %.027.lcssa.i = phi ptr [ %i.vx, %bb.ao ], [ %.128.lcssa.i, %.critedge.i ] ; 2 uses
  store ptr %.027.lcssa.i, ptr %i.b, align 8, !tbaa !29
  br label %str_hex_to_char.exit

str_hex_to_char.exit:                             ; preds = %str_make_lowercase.exit, %bb.al, %._crit_edge.i
  %.promoted159 = phi ptr [ %i.vx, %str_make_lowercase.exit ], [ %i.vx, %bb.al ], [ %.027.lcssa.i, %._crit_edge.i ] ; 5 uses
  %.not45 = icmp eq i32 %2, 0                     ; 2 uses
  br i1 %.not45, label %.preheader, label %bb.ar

.preheader:                                       ; preds = %str_hex_to_char.exit
  %.promoted152 = load ptr, ptr %i.a, align 8, !tbaa !29 ; 3 uses
  %.not46154 = icmp ugt ptr %.promoted152, %.promoted159
  br i1 %.not46154, label %.critedge2, label %.lr.ph

bb.ar:                                            ; preds = %str_hex_to_char.exit
  call fastcc void @str_strip(ptr noundef %i.a, ptr noundef %i.b, ptr noundef nonnull @.str.26, i64 noundef 1)
  %.pre175 = load ptr, ptr %i.a, align 8, !tbaa !29
  %.pre176 = load ptr, ptr %i.b, align 8, !tbaa !29
  br label %.critedge4

.lr.ph:                                           ; preds = %.preheader, %bb.as
  %i.xv = phi ptr [ %i.xy, %bb.as ], [ %.promoted152, %.preheader ] ; 3 uses
  %i.xw = load i8, ptr %i.xv, align 1, !tbaa !49
  %i.xx = icmp eq i8 %i.xw, 32
  br i1 %i.xx, label %bb.as, label %.critedge2

bb.as:                                            ; preds = %.lr.ph
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xv, i64 1 ; 3 uses
  %.not46 = icmp ugt ptr %i.xy, %.promoted159
  br i1 %.not46, label %.critedge2, label %.lr.ph, !llvm.loop !91

.critedge2:                                       ; preds = %.lr.ph, %bb.as, %.preheader
  %.lcssa153 = phi ptr [ %.promoted152, %.preheader ], [ %i.xy, %bb.as ], [ %i.xv, %.lr.ph ] ; 4 uses
  store ptr %.lcssa153, ptr %i.a, align 8
  %.not47161 = icmp ugt ptr %.lcssa153, %.promoted159
  br i1 %.not47161, label %.critedge4.loopexit, label %.lr.ph162

.lr.ph162:                                        ; preds = %.critedge2, %bb.at
  %i.xz = phi ptr [ %i.yc, %bb.at ], [ %.promoted159, %.critedge2 ] ; 3 uses
  %i.ya = load i8, ptr %i.xz, align 1, !tbaa !49
  %i.yb = icmp eq i8 %i.ya, 32
  br i1 %i.yb, label %bb.at, label %.critedge4.loopexit

bb.at:                                            ; preds = %.lr.ph162
  %i.yc = getelementptr inbounds i8, ptr %i.xz, i64 -1 ; 3 uses
  %.not47 = icmp ugt ptr %.lcssa153, %i.yc
  br i1 %.not47, label %.critedge4.loopexit, label %.lr.ph162, !llvm.loop !92

.critedge4.loopexit:                              ; preds = %.lr.ph162, %bb.at, %.critedge2
  %.lcssa160 = phi ptr [ %.promoted159, %.critedge2 ], [ %i.yc, %bb.at ], [ %i.xz, %.lr.ph162 ] ; 2 uses
  store ptr %.lcssa160, ptr %i.b, align 8
  br label %.critedge4

.critedge4:                                       ; preds = %.critedge4.loopexit, %bb.ar
  %i.yd = phi ptr [ %.pre176, %bb.ar ], [ %.lcssa160, %.critedge4.loopexit ]
  %i.ye = phi ptr [ %.pre175, %bb.ar ], [ %.lcssa153, %.critedge4.loopexit ] ; 2 uses
  %i.yf = phi ptr [ %0, %bb.ar ], [ %1, %.critedge4.loopexit ] ; 4 uses
  %i.yg = getelementptr inbounds nuw i8, ptr %i.yd, i64 1
  %i.yh = ptrtoint ptr %i.yg to i64
  %i.yi = ptrtoint ptr %i.ye to i64
  %i.yj = sub i64 %i.yh, %i.yi                    ; 3 uses
  %i.yk = add nsw i64 %i.yj, 1
  %i.yl = tail call ptr @cli_malloc(i64 noundef %i.yk) #14 ; 4 uses
  %.not.i118 = icmp eq ptr %i.yl, null
  br i1 %.not.i118, label %.preheader.i126, label %bb.au

bb.au:                                            ; preds = %.critedge4
  %i.ym = tail call ptr @strncpy(ptr noundef nonnull %i.yl, ptr noundef %i.ye, i64 noundef %i.yj) #14 ; 0 uses
  %i.yn = getelementptr inbounds i8, ptr %i.yl, i64 %i.yj
  store i8 0, ptr %i.yn, align 1, !tbaa !49
  br label %bb.av

bb.av:                                            ; preds = %bb.aw, %bb.au
  %.0.i.i119 = phi ptr [ %i.yf, %bb.au ], [ %i.yr, %bb.aw ] ; 4 uses
  %i.yo = load i32, ptr %.0.i.i119, align 8, !tbaa !46
  %i.yp = add nsw i32 %i.yo, -1                   ; 2 uses
  store i32 %i.yp, ptr %.0.i.i119, align 8, !tbaa !46
  %.not.i.i120 = icmp eq i32 %i.yp, 0
  br i1 %.not.i.i120, label %bb.aw, label %.loopexit

bb.aw:                                            ; preds = %bb.av
  %i.yq = getelementptr inbounds nuw i8, ptr %.0.i.i119, i64 8
  %i.yr = load ptr, ptr %i.yq, align 8, !tbaa !48 ; 2 uses
  %.not8.i.i123 = icmp eq ptr %i.yr, null
  br i1 %.not8.i.i123, label %bb.ax, label %bb.av

bb.ax:                                            ; preds = %bb.aw
  %i.ys = getelementptr inbounds nuw i8, ptr %.0.i.i119, i64 16
  %i.yt = load ptr, ptr %i.ys, align 8, !tbaa !47 ; 2 uses
  %.not9.i.i124 = icmp eq ptr %i.yt, null
  br i1 %.not9.i.i124, label %.loopexit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  tail call void @free(ptr noundef nonnull %i.yt) #14
  br label %.loopexit

.preheader.i126:                                  ; preds = %.critedge4, %bb.az
  %.0.i.i127 = phi ptr [ %i.yx, %bb.az ], [ %0, %.critedge4 ] ; 4 uses
  %i.yu = load i32, ptr %.0.i.i127, align 8, !tbaa !46
  %i.yv = add nsw i32 %i.yu, -1                   ; 2 uses
  store i32 %i.yv, ptr %.0.i.i127, align 8, !tbaa !46
  %.not.i.i128 = icmp eq i32 %i.yv, 0
  br i1 %.not.i.i128, label %bb.az, label %string_assign_null.exit132

bb.az:                                            ; preds = %.preheader.i126
  %i.yw = getelementptr inbounds nuw i8, ptr %.0.i.i127, i64 8
  %i.yx = load ptr, ptr %i.yw, align 8, !tbaa !48 ; 2 uses
  %.not8.i.i130 = icmp eq ptr %i.yx, null
  br i1 %.not8.i.i130, label %bb.ba, label %.preheader.i126

bb.ba:                                            ; preds = %bb.az
  %i.yy = getelementptr inbounds nuw i8, ptr %.0.i.i127, i64 16
  %i.yz = load ptr, ptr %i.yy, align 8, !tbaa !47 ; 2 uses
  %.not9.i.i131 = icmp eq ptr %i.yz, null
  br i1 %.not9.i.i131, label %string_assign_null.exit132, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  tail call void @free(ptr noundef nonnull %i.yz) #14
  br label %string_assign_null.exit132

string_assign_null.exit132:                       ; preds = %.preheader.i126, %bb.ba, %bb.bb
  store ptr @empty_string, ptr %i.c, align 8, !tbaa !47
  store i32 -1, ptr %0, align 8, !tbaa !46
  %i.za = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.za, align 8, !tbaa !48
  br label %string_assign_null.exit58

.loopexit:                                        ; preds = %bb.av, %bb.ax, %bb.ay
  %i.zb = getelementptr inbounds nuw i8, ptr %i.yf, i64 16
  store ptr %i.yl, ptr %i.zb, align 8, !tbaa !47
  store i32 1, ptr %i.yf, align 8, !tbaa !46
  %i.zc = getelementptr inbounds nuw i8, ptr %i.yf, i64 8
  store ptr null, ptr %i.zc, align 8, !tbaa !48
  br i1 %.not45, label %bb.bc, label %string_assign_null.exit58

bb.bc:                                            ; preds = %.loopexit
  call fastcc void @str_fixup_spaces(ptr noundef %i.a, ptr noundef %i.b)
  %i.zd = load ptr, ptr %i.a, align 8, !tbaa !29
  %i.ze = load ptr, ptr %i.b, align 8, !tbaa !29
  %i.zf = getelementptr inbounds nuw i8, ptr %i.ze, i64 1
  %i.zg = tail call fastcc i32 @string_assign_dup(ptr noundef nonnull %0, ptr noundef %i.zd, ptr noundef nonnull %i.zf) ; 0 uses
  br label %string_assign_null.exit58

string_assign_null.exit58:                        ; preds = %bb.bc, %string_assign_null.exit132, %string_assign_null.exit82, %string_free.exit.i87, %.loopexit, %string_free.exit.i71, %string_assign_null.exit66, %string_free.exit.i, %string_assign_null.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #8

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @str_strip(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef range(i64 1, 4) %3) unnamed_addr #9 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !29     ; 4 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !29     ; 6 uses
  %.not = icmp ugt ptr %i.b, %i.a
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #15
  %i.d = icmp ult i64 %i.c, %3
  br i1 %i.d, label %bb.g, label %select.unfold.preheader.preheader

select.unfold.preheader.preheader:                ; preds = %bb.b
  %i.e = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) %2, i64 noundef %3) #15
  %.not69 = icmp eq i32 %i.e, 0
  %spec.select.idx = select i1 %.not69, i64 %3, i64 0
  %spec.select = getelementptr inbounds nuw i8, ptr %i.a, i64 %spec.select.idx ; 5 uses
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = ptrtoint ptr %spec.select to i64
  %i.h = sub i64 %i.f, %i.g
  %.not70 = icmp ugt i64 %3, %i.h
  br i1 %.not70, label %.critedge2, label %bb.c

bb.c:                                             ; preds = %select.unfold.preheader.preheader
  %i.i = sub nsw i64 0, %3                        ; 3 uses
  %i.j = getelementptr inbounds i8, ptr %i.b, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1 ; 2 uses
  %i.l = icmp ugt ptr %i.k, %spec.select
  br i1 %i.l, label %.lr.ph, label %.critedge2

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %.05977 = phi ptr [ %i.p, %bb.d ], [ %i.k, %bb.c ] ; 2 uses
  %.06076 = phi ptr [ %i.o, %bb.d ], [ %i.b, %bb.c ] ; 2 uses
  %i.m = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %.05977, ptr noundef nonnull dereferenceable(1) %2, i64 noundef %3) #15
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.d, label %.critedge2

bb.d:                                             ; preds = %.lr.ph
  %i.o = getelementptr inbounds i8, ptr %.06076, i64 %i.i ; 2 uses
  %i.p = getelementptr inbounds i8, ptr %.05977, i64 %i.i ; 2 uses
  %i.q = icmp ugt ptr %i.p, %spec.select
  br i1 %i.q, label %.lr.ph, label %.critedge2, !llvm.loop !93

.critedge2:                                       ; preds = %bb.d, %.lr.ph, %bb.c, %select.unfold.preheader.preheader
  %.161 = phi ptr [ %i.b, %select.unfold.preheader.preheader ], [ %i.b, %bb.c ], [ %i.o, %bb.d ], [ %.06076, %.lr.ph ] ; 3 uses
  store ptr %spec.select, ptr %0, align 8, !tbaa !29
  %.181 = getelementptr inbounds nuw i8, ptr %spec.select, i64 1 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.181, i64 %3 ; 2 uses
  %.not7182 = icmp ugt ptr %i.r, %.161
  br i1 %.not7182, label %._crit_edge, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.critedge2
  %i.s = sub nsw i64 0, %3
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.critedge4
  %i.t = phi ptr [ %i.r, %.preheader.lr.ph ], [ %i.y, %.critedge4 ] ; 3 uses
  %.184 = phi ptr [ %.181, %.preheader.lr.ph ], [ %.1, %.critedge4 ] ; 3 uses
end_hunk_5
