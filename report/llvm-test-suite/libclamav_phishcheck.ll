inline.NumInlined: 84
inline.NumDeleted: 25
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@url_get_host:bb.a
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
  %i.a = alloca ptr, align 8                      ; 12 uses
  %i.b = alloca ptr, align 8                      ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !47   ; 4 uses
  %3 = ptrtoaddr ptr %i.d to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.e = load i8, ptr %i.d, align 1, !tbaa !49    ; 2 uses
  %.not7.i = icmp eq i8 %i.e, 0
  br i1 %.not7.i, label %clear_msb.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %i.f = phi i8 [ %i.i, %.lr.ph.i ], [ %i.e, %bb.a ]
  %.08.i = phi ptr [ %i.h, %.lr.ph.i ], [ %i.d, %bb.a ] ; 2 uses
  %i.g = and i8 %i.f, 127
  %spec.select.i = tail call i8 @llvm.umax.i8(i8 %i.g, i8 32)
  store i8 %spec.select.i, ptr %.08.i, align 1, !tbaa !49
  %i.h = getelementptr inbounds nuw i8, ptr %.08.i, i64 1 ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !49    ; 2 uses
  %.not.i = icmp eq i8 %i.i, 0
  br i1 %.not.i, label %clear_msb.exit, label %.lr.ph.i, !llvm.loop !59

clear_msb.exit:                                   ; preds = %.lr.ph.i, %bb.a
  %i.j = tail call ptr @__ctype_b_loc() #16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !60   ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %clear_msb.exit
  %indvar = phi i64 [ %indvar.next, %bb.b ], [ 0, %clear_msb.exit ] ; 2 uses
  %i.l = phi ptr [ %i.r, %bb.b ], [ %i.d, %clear_msb.exit ] ; 225 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !49
  %i.n = sext i8 %i.m to i64
  %i.o = getelementptr inbounds [2 x i8], ptr %i.k, i64 %i.n
  %i.p = load i16, ptr %i.o, align 2, !tbaa !62
  %i.q = and i16 %i.p, 8192
  %.not = icmp eq i16 %i.q, 0
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %bb.c, label %bb.b, !llvm.loop !63

bb.c:                                             ; preds = %bb.b
  store ptr %i.l, ptr %i.a, align 8
  %i.s = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.l) #15 ; 3 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %.preheader.i, label %bb.j

.preheader.i:                                     ; preds = %bb.c, %bb.d
  %.0.i.i = phi ptr [ %i.x, %bb.d ], [ %0, %bb.c ] ; 4 uses
  %i.u = load i32, ptr %.0.i.i, align 8, !tbaa !46
  %i.v = add nsw i32 %i.u, -1                     ; 2 uses
  store i32 %i.v, ptr %.0.i.i, align 8, !tbaa !46
  %.not.i.i = icmp eq i32 %i.v, 0
  br i1 %.not.i.i, label %bb.d, label %string_assign_null.exit

bb.d:                                             ; preds = %.preheader.i
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !48   ; 2 uses
  %.not8.i.i = icmp eq ptr %i.x, null
  br i1 %.not8.i.i, label %bb.e, label %.preheader.i

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !47   ; 2 uses
  %.not9.i.i = icmp eq ptr %i.z, null
  br i1 %.not9.i.i, label %string_assign_null.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @free(ptr noundef nonnull %i.z) #14
  br label %string_assign_null.exit

string_assign_null.exit:                          ; preds = %.preheader.i, %bb.e, %bb.f
  store ptr @empty_string, ptr %i.c, align 8, !tbaa !47
  store i32 -1, ptr %0, align 8, !tbaa !46
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.aa, align 8, !tbaa !48
  %.not.i52 = icmp eq ptr %1, null
  br i1 %.not.i52, label %string_assign_null.exit58, label %.preheader.i53

.preheader.i53:                                   ; preds = %string_assign_null.exit, %bb.g
  %.0.i.i54 = phi ptr [ %i.ae, %bb.g ], [ %1, %string_assign_null.exit ] ; 4 uses
  %i.ab = load i32, ptr %.0.i.i54, align 8, !tbaa !46
  %i.ac = add nsw i32 %i.ab, -1                   ; 2 uses
  store i32 %i.ac, ptr %.0.i.i54, align 8, !tbaa !46
  %.not.i.i55 = icmp eq i32 %i.ac, 0
  br i1 %.not.i.i55, label %bb.g, label %string_free.exit.i

bb.g:                                             ; preds = %.preheader.i53
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.i.i54, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !48 ; 2 uses
  %.not8.i.i56 = icmp eq ptr %i.ae, null
  br i1 %.not8.i.i56, label %bb.h, label %.preheader.i53

bb.h:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %.0.i.i54, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !47 ; 2 uses
  %.not9.i.i57 = icmp eq ptr %i.ag, null
  br i1 %.not9.i.i57, label %string_free.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @free(ptr noundef nonnull %i.ag) #14
  br label %string_free.exit.i

string_free.exit.i:                               ; preds = %.preheader.i53, %bb.i, %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr @empty_string, ptr %i.ah, align 8, !tbaa !47
  store i32 -1, ptr %1, align 8, !tbaa !46
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr null, ptr %i.ai, align 8, !tbaa !48
  br label %string_assign_null.exit58

bb.j:                                             ; preds = %bb.c
  %.not39 = icmp sgt i64 %i.s, 1
  br i1 %.not39, label %.preheader137.preheader, label %.preheader.i60

.preheader137.preheader:                          ; preds = %bb.j
  %i.aj = getelementptr i8, ptr %i.l, i64 %i.s
  br label %.preheader137

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

.preheader137:                                    ; preds = %.preheader137.preheader, %.preheader137
  %.pn = phi ptr [ %i.az, %.preheader137 ], [ %i.aj, %.preheader137.preheader ]
  %i.az = getelementptr i8, ptr %.pn, i64 -1      ; 10 uses
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !49
  %i.bb = sext i8 %i.ba to i64
  %i.bc = getelementptr inbounds [2 x i8], ptr %i.k, i64 %i.bb
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !62
  %i.be = and i16 %i.bd, 8192
  %.not40 = icmp eq i16 %i.be, 0
  br i1 %.not40, label %bb.q, label %.preheader137, !llvm.loop !64

bb.q:                                             ; preds = %.preheader137
  store ptr %i.az, ptr %i.b, align 8
  %i.bf = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.l, ptr noundef nonnull dereferenceable(5) @dotnet, i64 noundef 4) #15
  %.not41 = icmp eq i32 %i.bf, 0
  br i1 %.not41, label %.preheader.i76.preheader, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bg = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.l, ptr noundef nonnull dereferenceable(8) @adonet, i64 noundef 7) #15
  %.not42 = icmp eq i32 %i.bg, 0
  br i1 %.not42, label %.preheader.i76.preheader, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bh = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.l, ptr noundef nonnull dereferenceable(8) @aspnet, i64 noundef 7) #15
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
  %.not6.i = icmp ugt ptr %i.l, %i.az
  br i1 %.not6.i, label %str_replace.exit112, label %iter.check

iter.check:                                       ; preds = %bb.z
  %i.bx = add i64 %indvar, %3
  %i.by = ptrtoaddr ptr %i.l to i64
  %i.bz = add i64 %i.by, 1
  %i.ca = ptrtoaddr ptr %i.az to i64
  %i.cb = add i64 %i.ca, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.bz, i64 %i.cb)
  %i.cc = sub i64 %umax, %i.bx                    ; 35 uses
  %min.iters.check = icmp ult i64 %i.cc, 8
  br i1 %min.iters.check, label %.lr.ph.i91.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check15 = icmp ult i64 %i.cc, 32
  br i1 %min.iters.check15, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.cc, 24
  %n.vec = and i64 %i.cc, -32                     ; 4 uses
  %i.cd = getelementptr i8, ptr %i.l, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue109, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue109 ] ; 33 uses
  %next.gep = getelementptr i8, ptr %i.l, i64 %index ; 3 uses
  %i.ce = getelementptr i8, ptr %i.l, i64 %index
  %next.gep16 = getelementptr i8, ptr %i.ce, i64 1
  %i.cf = getelementptr i8, ptr %i.l, i64 %index
  %next.gep17 = getelementptr i8, ptr %i.cf, i64 2
  %i.cg = getelementptr i8, ptr %i.l, i64 %index
  %next.gep18 = getelementptr i8, ptr %i.cg, i64 3
  %i.ch = getelementptr i8, ptr %i.l, i64 %index
  %next.gep19 = getelementptr i8, ptr %i.ch, i64 4
  %i.ci = getelementptr i8, ptr %i.l, i64 %index
  %next.gep20 = getelementptr i8, ptr %i.ci, i64 5
  %i.cj = getelementptr i8, ptr %i.l, i64 %index
  %next.gep21 = getelementptr i8, ptr %i.cj, i64 6
  %i.ck = getelementptr i8, ptr %i.l, i64 %index
  %next.gep22 = getelementptr i8, ptr %i.ck, i64 7
  %i.cl = getelementptr i8, ptr %i.l, i64 %index
  %next.gep23 = getelementptr i8, ptr %i.cl, i64 8
  %i.cm = getelementptr i8, ptr %i.l, i64 %index
  %next.gep24 = getelementptr i8, ptr %i.cm, i64 9
  %i.cn = getelementptr i8, ptr %i.l, i64 %index
  %next.gep25 = getelementptr i8, ptr %i.cn, i64 10
  %i.co = getelementptr i8, ptr %i.l, i64 %index
  %next.gep26 = getelementptr i8, ptr %i.co, i64 11
  %i.cp = getelementptr i8, ptr %i.l, i64 %index
  %next.gep27 = getelementptr i8, ptr %i.cp, i64 12
  %i.cq = getelementptr i8, ptr %i.l, i64 %index
  %next.gep28 = getelementptr i8, ptr %i.cq, i64 13
  %i.cr = getelementptr i8, ptr %i.l, i64 %index
  %next.gep29 = getelementptr i8, ptr %i.cr, i64 14
  %i.cs = getelementptr i8, ptr %i.l, i64 %index
  %next.gep30 = getelementptr i8, ptr %i.cs, i64 15
  %i.ct = getelementptr i8, ptr %i.l, i64 %index
  %next.gep31 = getelementptr i8, ptr %i.ct, i64 16
  %i.cu = getelementptr i8, ptr %i.l, i64 %index
  %next.gep32 = getelementptr i8, ptr %i.cu, i64 17
  %i.cv = getelementptr i8, ptr %i.l, i64 %index
  %next.gep33 = getelementptr i8, ptr %i.cv, i64 18
  %i.cw = getelementptr i8, ptr %i.l, i64 %index
  %next.gep34 = getelementptr i8, ptr %i.cw, i64 19
  %i.cx = getelementptr i8, ptr %i.l, i64 %index
  %next.gep35 = getelementptr i8, ptr %i.cx, i64 20
  %i.cy = getelementptr i8, ptr %i.l, i64 %index
  %next.gep36 = getelementptr i8, ptr %i.cy, i64 21
  %i.cz = getelementptr i8, ptr %i.l, i64 %index
  %next.gep37 = getelementptr i8, ptr %i.cz, i64 22
  %i.da = getelementptr i8, ptr %i.l, i64 %index
  %next.gep38 = getelementptr i8, ptr %i.da, i64 23
  %i.db = getelementptr i8, ptr %i.l, i64 %index
  %next.gep39 = getelementptr i8, ptr %i.db, i64 24
  %i.dc = getelementptr i8, ptr %i.l, i64 %index
  %next.gep40 = getelementptr i8, ptr %i.dc, i64 25
  %i.dd = getelementptr i8, ptr %i.l, i64 %index
  %next.gep41 = getelementptr i8, ptr %i.dd, i64 26
  %i.de = getelementptr i8, ptr %i.l, i64 %index
  %next.gep42 = getelementptr i8, ptr %i.de, i64 27
  %i.df = getelementptr i8, ptr %i.l, i64 %index
  %next.gep43 = getelementptr i8, ptr %i.df, i64 28
  %i.dg = getelementptr i8, ptr %i.l, i64 %index
  %next.gep44 = getelementptr i8, ptr %i.dg, i64 29
  %i.dh = getelementptr i8, ptr %i.l, i64 %index
  %next.gep45 = getelementptr i8, ptr %i.dh, i64 30
  %i.di = getelementptr i8, ptr %i.l, i64 %index
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

pred.store.if74:                                  ; preds = %pred.store.continue73
  store i8 47, ptr %next.gep29, align 1, !tbaa !49
end_hunk_0
begin_hunk_1_@cleanupURL:bb.a
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
  %i.et = getelementptr i8, ptr %i.l, i64 %n.vec111
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %pred.store.continue137, %vec.epilog.ph
  %index112 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next138, %pred.store.continue137 ] ; 9 uses
  %next.gep113 = getelementptr i8, ptr %i.l, i64 %index112 ; 2 uses
  %i.eu = getelementptr i8, ptr %i.l, i64 %index112
  %next.gep114 = getelementptr i8, ptr %i.eu, i64 1
  %i.ev = getelementptr i8, ptr %i.l, i64 %index112
  %next.gep115 = getelementptr i8, ptr %i.ev, i64 2
  %i.ew = getelementptr i8, ptr %i.l, i64 %index112
  %next.gep116 = getelementptr i8, ptr %i.ew, i64 3
  %i.ex = getelementptr i8, ptr %i.l, i64 %index112
  %next.gep117 = getelementptr i8, ptr %i.ex, i64 4
  %i.ey = getelementptr i8, ptr %i.l, i64 %index112
  %next.gep118 = getelementptr i8, ptr %i.ey, i64 5
  %i.ez = getelementptr i8, ptr %i.l, i64 %index112
  %next.gep119 = getelementptr i8, ptr %i.ez, i64 6
  %i.fa = getelementptr i8, ptr %i.l, i64 %index112
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
  %.07.i.ph = phi ptr [ %i.l, %iter.check ], [ %i.cd, %vec.epilog.iter.check ], [ %i.et, %vec.epilog.middle.block ]
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
  %min.iters.check142 = icmp ult i64 %i.cc, 8
  br i1 %min.iters.check142, label %.lr.ph.i94.preheader, label %vector.main.loop.iter.check143

vector.main.loop.iter.check143:                   ; preds = %iter.check252
  %min.iters.check144 = icmp ult i64 %i.cc, 32
  br i1 %min.iters.check144, label %vec.epilog.ph256, label %vector.ph145

vector.ph145:                                     ; preds = %vector.main.loop.iter.check143
  %n.mod.vf146 = and i64 %i.cc, 24
  %n.vec147 = and i64 %i.cc, -32                  ; 4 uses
  %i.fo = getelementptr i8, ptr %i.l, i64 %n.vec147
  br label %vector.body148

vector.body148:                                   ; preds = %pred.store.continue247, %vector.ph145
  %index149 = phi i64 [ 0, %vector.ph145 ], [ %index.next248, %pred.store.continue247 ] ; 33 uses
  %next.gep150.a = getelementptr i8, ptr %i.l, i64 %index149 ; 3 uses
  %i.fp = getelementptr i8, ptr %i.l, i64 %index149
  %next.gep151.a = getelementptr i8, ptr %i.fp, i64 1
  %i.fq = getelementptr i8, ptr %i.l, i64 %index149
  %next.gep152.a = getelementptr i8, ptr %i.fq, i64 2
  %i.fr = getelementptr i8, ptr %i.l, i64 %index149
  %next.gep153.a = getelementptr i8, ptr %i.fr, i64 3
  %i.fs = getelementptr i8, ptr %i.l, i64 %index149
  %next.gep154.a = getelementptr i8, ptr %i.fs, i64 4
  %i.ft = getelementptr i8, ptr %i.l, i64 %index149
  %next.gep155.a = getelementptr i8, ptr %i.ft, i64 5
  %i.fu = getelementptr i8, ptr %i.l, i64 %index149
  %next.gep156.a = getelementptr i8, ptr %i.fu, i64 6
  %i.fv = getelementptr i8, ptr %i.l, i64 %index149
  %next.gep157.a = getelementptr i8, ptr %i.fv, i64 7
  %i.fw = getelementptr i8, ptr %i.l, i64 %index149
  %next.gep158.a = getelementptr i8, ptr %i.fw, i64 8
  %i.fx = getelementptr i8, ptr %i.l, i64 %index149
  %next.gep159.a = getelementptr i8, ptr %i.fx, i64 9
  %i.fy = getelementptr i8, ptr %i.l, i64 %index149
  %next.gep160.a = getelementptr i8, ptr %i.fy, i64 10
  %i.fz = getelementptr i8, ptr %i.l, i64 %index149
  %next.gep161.a = getelementptr i8, ptr %i.fz, i64 11
  %i.ga = getelementptr i8, ptr %i.l, i64 %index149
  %next.gep162.a = getelementptr i8, ptr %i.ga, i64 12
  %i.gb = getelementptr i8, ptr %i.l, i64 %index149
  %next.gep163.a = getelementptr i8, ptr %i.gb, i64 13
  %i.gc = getelementptr i8, ptr %i.l, i64 %index149
  %next.gep164.a = getelementptr i8, ptr %i.gc, i64 14
  %i.gd = getelementptr i8, ptr %i.l, i64 %index149
  %next.gep165.a = getelementptr i8, ptr %i.gd, i64 15
  %i.ge = getelementptr i8, ptr %i.l, i64 %index149
  %next.gep166.a = getelementptr i8, ptr %i.ge, i64 16
  %i.gf = getelementptr i8, ptr %i.l, i64 %index149
  %next.gep167.a = getelementptr i8, ptr %i.gf, i64 17
  %i.gg = getelementptr i8, ptr %i.l, i64 %index149
  %next.gep168.a = getelementptr i8, ptr %i.gg, i64 18
  %i.gh = getelementptr i8, ptr %i.l, i64 %index149
  %next.gep169.a = getelementptr i8, ptr %i.gh, i64 19
  %i.gi = getelementptr i8, ptr %i.l, i64 %index149
  %next.gep170.a = getelementptr i8, ptr %i.gi, i64 20
  %i.gj = getelementptr i8, ptr %i.l, i64 %index149
  %next.gep171.a = getelementptr i8, ptr %i.gj, i64 21
  %i.gk = getelementptr i8, ptr %i.l, i64 %index149
  %next.gep172.a = getelementptr i8, ptr %i.gk, i64 22
  %i.gl = getelementptr i8, ptr %i.l, i64 %index149
  %next.gep173.a = getelementptr i8, ptr %i.gl, i64 23
  %i.gm = getelementptr i8, ptr %i.l, i64 %index149
  %next.gep174.a = getelementptr i8, ptr %i.gm, i64 24
  %i.gn = getelementptr i8, ptr %i.l, i64 %index149
  %next.gep175.a = getelementptr i8, ptr %i.gn, i64 25
  %i.go = getelementptr i8, ptr %i.l, i64 %index149
  %next.gep176.a = getelementptr i8, ptr %i.go, i64 26
  %i.gp = getelementptr i8, ptr %i.l, i64 %index149
  %next.gep177.a = getelementptr i8, ptr %i.gp, i64 27
  %i.gq = getelementptr i8, ptr %i.l, i64 %index149
  %next.gep178.a = getelementptr i8, ptr %i.gq, i64 28
  %i.gr = getelementptr i8, ptr %i.l, i64 %index149
  %next.gep179.a = getelementptr i8, ptr %i.gr, i64 29
  %i.gs = getelementptr i8, ptr %i.l, i64 %index149
  %next.gep180.a = getelementptr i8, ptr %i.gs, i64 30
  %i.gt = getelementptr i8, ptr %i.l, i64 %index149
  %next.gep181 = getelementptr i8, ptr %i.gt, i64 31
  %i.gu = getelementptr i8, ptr %next.gep150.a, i64 16
  %wide.load182.a = load <16 x i8>, ptr %next.gep150.a, align 1, !tbaa !49
  %wide.load183 = load <16 x i8>, ptr %i.gu, align 1, !tbaa !49
  %i.gv = icmp eq <16 x i8> %wide.load182.a, splat (i8 60) ; 16 uses
  %i.gw = icmp eq <16 x i8> %wide.load183, splat (i8 60) ; 16 uses
  %i.gx = extractelement <16 x i1> %i.gv, i64 0
  br i1 %i.gx, label %pred.store.if184, label %pred.store.continue185

pred.store.if184:                                 ; preds = %vector.body148
  store i8 32, ptr %next.gep150.a, align 1, !tbaa !49
  br label %pred.store.continue185

pred.store.continue185:                           ; preds = %pred.store.if184, %vector.body148
  %i.gy = extractelement <16 x i1> %i.gv, i64 1
  br i1 %i.gy, label %pred.store.if186, label %pred.store.continue187

pred.store.if186:                                 ; preds = %pred.store.continue185
  store i8 32, ptr %next.gep151.a, align 1, !tbaa !49
  br label %pred.store.continue187

pred.store.continue187:                           ; preds = %pred.store.if186, %pred.store.continue185
  %i.gz = extractelement <16 x i1> %i.gv, i64 2
  br i1 %i.gz, label %pred.store.if188, label %pred.store.continue189

pred.store.if188:                                 ; preds = %pred.store.continue187
  store i8 32, ptr %next.gep152.a, align 1, !tbaa !49
  br label %pred.store.continue189

pred.store.continue189:                           ; preds = %pred.store.if188, %pred.store.continue187
  %i.ha = extractelement <16 x i1> %i.gv, i64 3
  br i1 %i.ha, label %pred.store.if190, label %pred.store.continue191

pred.store.if190:                                 ; preds = %pred.store.continue189
  store i8 32, ptr %next.gep153.a, align 1, !tbaa !49
  br label %pred.store.continue191

pred.store.continue191:                           ; preds = %pred.store.if190, %pred.store.continue189
  %i.hb = extractelement <16 x i1> %i.gv, i64 4
  br i1 %i.hb, label %pred.store.if192, label %pred.store.continue193

pred.store.if192:                                 ; preds = %pred.store.continue191
  store i8 32, ptr %next.gep154.a, align 1, !tbaa !49
  br label %pred.store.continue193

pred.store.continue193:                           ; preds = %pred.store.if192, %pred.store.continue191
  %i.hc = extractelement <16 x i1> %i.gv, i64 5
  br i1 %i.hc, label %pred.store.if194, label %pred.store.continue195

pred.store.if194:                                 ; preds = %pred.store.continue193
  store i8 32, ptr %next.gep155.a, align 1, !tbaa !49
  br label %pred.store.continue195

pred.store.continue195:                           ; preds = %pred.store.if194, %pred.store.continue193
  %i.hd = extractelement <16 x i1> %i.gv, i64 6
  br i1 %i.hd, label %pred.store.if196, label %pred.store.continue197

pred.store.if196:                                 ; preds = %pred.store.continue195
  store i8 32, ptr %next.gep156.a, align 1, !tbaa !49
  br label %pred.store.continue197

pred.store.continue197:                           ; preds = %pred.store.if196, %pred.store.continue195
  %i.he = extractelement <16 x i1> %i.gv, i64 7
  br i1 %i.he, label %pred.store.if198, label %pred.store.continue199

pred.store.if198:                                 ; preds = %pred.store.continue197
  store i8 32, ptr %next.gep157.a, align 1, !tbaa !49
  br label %pred.store.continue199

pred.store.continue199:                           ; preds = %pred.store.if198, %pred.store.continue197
  %i.hf = extractelement <16 x i1> %i.gv, i64 8
  br i1 %i.hf, label %pred.store.if200, label %pred.store.continue201

pred.store.if200:                                 ; preds = %pred.store.continue199
  store i8 32, ptr %next.gep158.a, align 1, !tbaa !49
  br label %pred.store.continue201

pred.store.continue201:                           ; preds = %pred.store.if200, %pred.store.continue199
  %i.hg = extractelement <16 x i1> %i.gv, i64 9
  br i1 %i.hg, label %pred.store.if202, label %pred.store.continue203

pred.store.if202:                                 ; preds = %pred.store.continue201
  store i8 32, ptr %next.gep159.a, align 1, !tbaa !49
  br label %pred.store.continue203

pred.store.continue203:                           ; preds = %pred.store.if202, %pred.store.continue201
  %i.hh = extractelement <16 x i1> %i.gv, i64 10
  br i1 %i.hh, label %pred.store.if204, label %pred.store.continue205

pred.store.if204:                                 ; preds = %pred.store.continue203
  store i8 32, ptr %next.gep160.a, align 1, !tbaa !49
  br label %pred.store.continue205

pred.store.continue205:                           ; preds = %pred.store.if204, %pred.store.continue203
  %i.hi = extractelement <16 x i1> %i.gv, i64 11
  br i1 %i.hi, label %pred.store.if206, label %pred.store.continue207

pred.store.if206:                                 ; preds = %pred.store.continue205
  store i8 32, ptr %next.gep161.a, align 1, !tbaa !49
  br label %pred.store.continue207

pred.store.continue207:                           ; preds = %pred.store.if206, %pred.store.continue205
  %i.hj = extractelement <16 x i1> %i.gv, i64 12
  br i1 %i.hj, label %pred.store.if208, label %pred.store.continue209

pred.store.if208:                                 ; preds = %pred.store.continue207
  store i8 32, ptr %next.gep162.a, align 1, !tbaa !49
  br label %pred.store.continue209

pred.store.continue209:                           ; preds = %pred.store.if208, %pred.store.continue207
  %i.hk = extractelement <16 x i1> %i.gv, i64 13
  br i1 %i.hk, label %pred.store.if210, label %pred.store.continue211

pred.store.if210:                                 ; preds = %pred.store.continue209
  store i8 32, ptr %next.gep163.a, align 1, !tbaa !49
  br label %pred.store.continue211

pred.store.continue211:                           ; preds = %pred.store.if210, %pred.store.continue209
  %i.hl = extractelement <16 x i1> %i.gv, i64 14
  br i1 %i.hl, label %pred.store.if212, label %pred.store.continue213

pred.store.if212:                                 ; preds = %pred.store.continue211
  store i8 32, ptr %next.gep164.a, align 1, !tbaa !49
  br label %pred.store.continue213

pred.store.continue213:                           ; preds = %pred.store.if212, %pred.store.continue211
  %i.hm = extractelement <16 x i1> %i.gv, i64 15
  br i1 %i.hm, label %pred.store.if214, label %pred.store.continue215

pred.store.if214:                                 ; preds = %pred.store.continue213
  store i8 32, ptr %next.gep165.a, align 1, !tbaa !49
  br label %pred.store.continue215

pred.store.continue215:                           ; preds = %pred.store.if214, %pred.store.continue213
  %i.hn = extractelement <16 x i1> %i.gw, i64 0
  br i1 %i.hn, label %pred.store.if216, label %pred.store.continue217

pred.store.if216:                                 ; preds = %pred.store.continue215
  store i8 32, ptr %next.gep166.a, align 1, !tbaa !49
  br label %pred.store.continue217

pred.store.continue217:                           ; preds = %pred.store.if216, %pred.store.continue215
  %i.ho = extractelement <16 x i1> %i.gw, i64 1
  br i1 %i.ho, label %pred.store.if218, label %pred.store.continue219

pred.store.if218:                                 ; preds = %pred.store.continue217
  store i8 32, ptr %next.gep167.a, align 1, !tbaa !49
  br label %pred.store.continue219

pred.store.continue219:                           ; preds = %pred.store.if218, %pred.store.continue217
  %i.hp = extractelement <16 x i1> %i.gw, i64 2
  br i1 %i.hp, label %pred.store.if220, label %pred.store.continue221

pred.store.if220:                                 ; preds = %pred.store.continue219
  store i8 32, ptr %next.gep168.a, align 1, !tbaa !49
  br label %pred.store.continue221

pred.store.continue221:                           ; preds = %pred.store.if220, %pred.store.continue219
  %i.hq = extractelement <16 x i1> %i.gw, i64 3
  br i1 %i.hq, label %pred.store.if222, label %pred.store.continue223

pred.store.if222:                                 ; preds = %pred.store.continue221
  store i8 32, ptr %next.gep169.a, align 1, !tbaa !49
  br label %pred.store.continue223

pred.store.continue223:                           ; preds = %pred.store.if222, %pred.store.continue221
  %i.hr = extractelement <16 x i1> %i.gw, i64 4
  br i1 %i.hr, label %pred.store.if224, label %pred.store.continue225

pred.store.if224:                                 ; preds = %pred.store.continue223
  store i8 32, ptr %next.gep170.a, align 1, !tbaa !49
  br label %pred.store.continue225

pred.store.continue225:                           ; preds = %pred.store.if224, %pred.store.continue223
  %i.hs = extractelement <16 x i1> %i.gw, i64 5
  br i1 %i.hs, label %pred.store.if226, label %pred.store.continue227

pred.store.if226:                                 ; preds = %pred.store.continue225
  store i8 32, ptr %next.gep171.a, align 1, !tbaa !49
  br label %pred.store.continue227

pred.store.continue227:                           ; preds = %pred.store.if226, %pred.store.continue225
  %i.ht = extractelement <16 x i1> %i.gw, i64 6
  br i1 %i.ht, label %pred.store.if228, label %pred.store.continue229

pred.store.if228:                                 ; preds = %pred.store.continue227
  store i8 32, ptr %next.gep172.a, align 1, !tbaa !49
  br label %pred.store.continue229

pred.store.continue229:                           ; preds = %pred.store.if228, %pred.store.continue227
  %i.hu = extractelement <16 x i1> %i.gw, i64 7
  br i1 %i.hu, label %pred.store.if230, label %pred.store.continue231

pred.store.if230:                                 ; preds = %pred.store.continue229
  store i8 32, ptr %next.gep173.a, align 1, !tbaa !49
  br label %pred.store.continue231

pred.store.continue231:                           ; preds = %pred.store.if230, %pred.store.continue229
  %i.hv = extractelement <16 x i1> %i.gw, i64 8
  br i1 %i.hv, label %pred.store.if232, label %pred.store.continue233

pred.store.if232:                                 ; preds = %pred.store.continue231
  store i8 32, ptr %next.gep174.a, align 1, !tbaa !49
  br label %pred.store.continue233

pred.store.continue233:                           ; preds = %pred.store.if232, %pred.store.continue231
  %i.hw = extractelement <16 x i1> %i.gw, i64 9
  br i1 %i.hw, label %pred.store.if234, label %pred.store.continue235

pred.store.if234:                                 ; preds = %pred.store.continue233
  store i8 32, ptr %next.gep175.a, align 1, !tbaa !49
  br label %pred.store.continue235

pred.store.continue235:                           ; preds = %pred.store.if234, %pred.store.continue233
  %i.hx = extractelement <16 x i1> %i.gw, i64 10
  br i1 %i.hx, label %pred.store.if236, label %pred.store.continue237

pred.store.if236:                                 ; preds = %pred.store.continue235
  store i8 32, ptr %next.gep176.a, align 1, !tbaa !49
  br label %pred.store.continue237

pred.store.continue237:                           ; preds = %pred.store.if236, %pred.store.continue235
  %i.hy = extractelement <16 x i1> %i.gw, i64 11
  br i1 %i.hy, label %pred.store.if238, label %pred.store.continue239

pred.store.if238:                                 ; preds = %pred.store.continue237
  store i8 32, ptr %next.gep177.a, align 1, !tbaa !49
  br label %pred.store.continue239

pred.store.continue239:                           ; preds = %pred.store.if238, %pred.store.continue237
  %i.hz = extractelement <16 x i1> %i.gw, i64 12
  br i1 %i.hz, label %pred.store.if240, label %pred.store.continue241

pred.store.if240:                                 ; preds = %pred.store.continue239
  store i8 32, ptr %next.gep178.a, align 1, !tbaa !49
  br label %pred.store.continue241

pred.store.continue241:                           ; preds = %pred.store.if240, %pred.store.continue239
  %i.ia = extractelement <16 x i1> %i.gw, i64 13
  br i1 %i.ia, label %pred.store.if242, label %pred.store.continue243

pred.store.if242:                                 ; preds = %pred.store.continue241
  store i8 32, ptr %next.gep179.a, align 1, !tbaa !49
  br label %pred.store.continue243

pred.store.continue243:                           ; preds = %pred.store.if242, %pred.store.continue241
  %i.ib = extractelement <16 x i1> %i.gw, i64 14
  br i1 %i.ib, label %pred.store.if244, label %pred.store.continue245

pred.store.if244:                                 ; preds = %pred.store.continue243
  store i8 32, ptr %next.gep180.a, align 1, !tbaa !49
  br label %pred.store.continue245

pred.store.continue245:                           ; preds = %pred.store.if244, %pred.store.continue243
  %i.ic = extractelement <16 x i1> %i.gw, i64 15
  br i1 %i.ic, label %pred.store.if246, label %pred.store.continue247

pred.store.if246:                                 ; preds = %pred.store.continue245
  store i8 32, ptr %next.gep181, align 1, !tbaa !49
  br label %pred.store.continue247

pred.store.continue247:                           ; preds = %pred.store.if246, %pred.store.continue245
  %index.next248 = add nuw i64 %index149, 32      ; 2 uses
  %i.id = icmp eq i64 %index.next248, %n.vec147
  br i1 %i.id, label %middle.block249, label %vector.body148, !llvm.loop !71

middle.block249:                                  ; preds = %pred.store.continue247
  %cmp.n250 = icmp eq i64 %i.cc, %n.vec147
  br i1 %cmp.n250, label %iter.check401, label %vec.epilog.iter.check254

vec.epilog.iter.check254:                         ; preds = %middle.block249
  %min.epilog.iters.check255 = icmp eq i64 %n.mod.vf146, 0
  br i1 %min.epilog.iters.check255, label %.lr.ph.i94.preheader, label %vec.epilog.ph256, !prof !68

vec.epilog.ph256:                                 ; preds = %vector.main.loop.iter.check143, %vec.epilog.iter.check254
  %vec.epilog.resume.val251 = phi i64 [ %n.vec147, %vec.epilog.iter.check254 ], [ 0, %vector.main.loop.iter.check143 ]
  %n.vec258 = and i64 %i.cc, -8                   ; 3 uses
  %i.ie = getelementptr i8, ptr %i.l, i64 %n.vec258
  br label %vec.epilog.vector.body259

vec.epilog.vector.body259:                        ; preds = %pred.store.continue285, %vec.epilog.ph256
  %index260 = phi i64 [ %vec.epilog.resume.val251, %vec.epilog.ph256 ], [ %index.next286, %pred.store.continue285 ] ; 9 uses
  %next.gep261.a = getelementptr i8, ptr %i.l, i64 %index260 ; 2 uses
  %i.if = getelementptr i8, ptr %i.l, i64 %index260
  %next.gep262.a = getelementptr i8, ptr %i.if, i64 1
  %i.ig = getelementptr i8, ptr %i.l, i64 %index260
  %next.gep263.a = getelementptr i8, ptr %i.ig, i64 2
  %i.ih = getelementptr i8, ptr %i.l, i64 %index260
  %next.gep264.a = getelementptr i8, ptr %i.ih, i64 3
  %i.ii = getelementptr i8, ptr %i.l, i64 %index260
  %next.gep265.a = getelementptr i8, ptr %i.ii, i64 4
  %i.ij = getelementptr i8, ptr %i.l, i64 %index260
  %next.gep266.a = getelementptr i8, ptr %i.ij, i64 5
  %i.ik = getelementptr i8, ptr %i.l, i64 %index260
  %next.gep267.a = getelementptr i8, ptr %i.ik, i64 6
  %i.il = getelementptr i8, ptr %i.l, i64 %index260
  %next.gep268 = getelementptr i8, ptr %i.il, i64 7
  %wide.load269 = load <8 x i8>, ptr %next.gep261.a, align 1, !tbaa !49
  %i.im = icmp eq <8 x i8> %wide.load269, splat (i8 60) ; 8 uses
  %i.in = extractelement <8 x i1> %i.im, i64 0
  br i1 %i.in, label %pred.store.if270, label %pred.store.continue271

pred.store.if270:                                 ; preds = %vec.epilog.vector.body259
  store i8 32, ptr %next.gep261.a, align 1, !tbaa !49
  br label %pred.store.continue271

pred.store.continue271:                           ; preds = %pred.store.if270, %vec.epilog.vector.body259
  %i.io = extractelement <8 x i1> %i.im, i64 1
  br i1 %i.io, label %pred.store.if272, label %pred.store.continue273

pred.store.if272:                                 ; preds = %pred.store.continue271
  store i8 32, ptr %next.gep262.a, align 1, !tbaa !49
  br label %pred.store.continue273

pred.store.continue273:                           ; preds = %pred.store.if272, %pred.store.continue271
  %i.ip = extractelement <8 x i1> %i.im, i64 2
  br i1 %i.ip, label %pred.store.if274, label %pred.store.continue275

pred.store.if274:                                 ; preds = %pred.store.continue273
  store i8 32, ptr %next.gep263.a, align 1, !tbaa !49
  br label %pred.store.continue275

pred.store.continue275:                           ; preds = %pred.store.if274, %pred.store.continue273
  %i.iq = extractelement <8 x i1> %i.im, i64 3
  br i1 %i.iq, label %pred.store.if276, label %pred.store.continue277

pred.store.if276:                                 ; preds = %pred.store.continue275
  store i8 32, ptr %next.gep264.a, align 1, !tbaa !49
  br label %pred.store.continue277

pred.store.continue277:                           ; preds = %pred.store.if276, %pred.store.continue275
  %i.ir = extractelement <8 x i1> %i.im, i64 4
  br i1 %i.ir, label %pred.store.if278, label %pred.store.continue279

pred.store.if278:                                 ; preds = %pred.store.continue277
  store i8 32, ptr %next.gep265.a, align 1, !tbaa !49
  br label %pred.store.continue279

pred.store.continue279:                           ; preds = %pred.store.if278, %pred.store.continue277
  %i.is = extractelement <8 x i1> %i.im, i64 5
  br i1 %i.is, label %pred.store.if280, label %pred.store.continue281

pred.store.if280:                                 ; preds = %pred.store.continue279
  store i8 32, ptr %next.gep266.a, align 1, !tbaa !49
  br label %pred.store.continue281

pred.store.continue281:                           ; preds = %pred.store.if280, %pred.store.continue279
  %i.it = extractelement <8 x i1> %i.im, i64 6
  br i1 %i.it, label %pred.store.if282, label %pred.store.continue283

pred.store.if282:                                 ; preds = %pred.store.continue281
  store i8 32, ptr %next.gep267.a, align 1, !tbaa !49
  br label %pred.store.continue283

pred.store.continue283:                           ; preds = %pred.store.if282, %pred.store.continue281
  %i.iu = extractelement <8 x i1> %i.im, i64 7
  br i1 %i.iu, label %pred.store.if284, label %pred.store.continue285

pred.store.if284:                                 ; preds = %pred.store.continue283
  store i8 32, ptr %next.gep268, align 1, !tbaa !49
  br label %pred.store.continue285

pred.store.continue285:                           ; preds = %pred.store.if284, %pred.store.continue283
  %index.next286 = add nuw i64 %index260, 8       ; 2 uses
  %i.iv = icmp eq i64 %index.next286, %n.vec258
  br i1 %i.iv, label %vec.epilog.middle.block287, label %vec.epilog.vector.body259, !llvm.loop !72

vec.epilog.middle.block287:                       ; preds = %pred.store.continue285
  %cmp.n288 = icmp eq i64 %i.cc, %n.vec258
  br i1 %cmp.n288, label %iter.check401, label %.lr.ph.i94.preheader

.lr.ph.i94.preheader:                             ; preds = %iter.check252, %vec.epilog.iter.check254, %vec.epilog.middle.block287
  %.07.i95.ph = phi ptr [ %i.l, %iter.check252 ], [ %i.fo, %vec.epilog.iter.check254 ], [ %i.ie, %vec.epilog.middle.block287 ]
  br label %.lr.ph.i94

.lr.ph.i94:                                       ; preds = %.lr.ph.i94.preheader, %bb.ad
  %.07.i95 = phi ptr [ %i.iy, %bb.ad ], [ %.07.i95.ph, %.lr.ph.i94.preheader ] ; 3 uses
  %i.iw = load i8, ptr %.07.i95, align 1, !tbaa !49
  %i.ix = icmp eq i8 %i.iw, 60
  br i1 %i.ix, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %.lr.ph.i94
  store i8 32, ptr %.07.i95, align 1, !tbaa !49
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %.lr.ph.i94
  %i.iy = getelementptr inbounds nuw i8, ptr %.07.i95, i64 1 ; 2 uses
  %.not.i96 = icmp ugt ptr %i.iy, %i.az
  br i1 %.not.i96, label %iter.check401, label %.lr.ph.i94, !llvm.loop !73

iter.check401:                                    ; preds = %bb.ad, %vec.epilog.middle.block287, %middle.block249
  %min.iters.check291.a = icmp ult i64 %i.cc, 8
  br i1 %min.iters.check291.a, label %.lr.ph.i99.preheader, label %vector.main.loop.iter.check292

vector.main.loop.iter.check292:                   ; preds = %iter.check401
  %min.iters.check293 = icmp ult i64 %i.cc, 32
  br i1 %min.iters.check293, label %vec.epilog.ph405, label %vector.ph294

vector.ph294:                                     ; preds = %vector.main.loop.iter.check292
  %n.mod.vf295 = and i64 %i.cc, 24
  %n.vec296 = and i64 %i.cc, -32                  ; 4 uses
  %i.iz = getelementptr i8, ptr %i.l, i64 %n.vec296
  br label %vector.body297

vector.body297:                                   ; preds = %pred.store.continue396, %vector.ph294
  %index298 = phi i64 [ 0, %vector.ph294 ], [ %index.next397, %pred.store.continue396 ] ; 33 uses
  %next.gep299.a = getelementptr i8, ptr %i.l, i64 %index298 ; 3 uses
  %i.ja = getelementptr i8, ptr %i.l, i64 %index298
  %next.gep300.a = getelementptr i8, ptr %i.ja, i64 1
  %i.jb = getelementptr i8, ptr %i.l, i64 %index298
  %next.gep301.a = getelementptr i8, ptr %i.jb, i64 2
  %i.jc = getelementptr i8, ptr %i.l, i64 %index298
  %next.gep302.a = getelementptr i8, ptr %i.jc, i64 3
  %i.jd = getelementptr i8, ptr %i.l, i64 %index298
  %next.gep303.a = getelementptr i8, ptr %i.jd, i64 4
  %i.je = getelementptr i8, ptr %i.l, i64 %index298
  %next.gep304.a = getelementptr i8, ptr %i.je, i64 5
  %i.jf = getelementptr i8, ptr %i.l, i64 %index298
  %next.gep305.a = getelementptr i8, ptr %i.jf, i64 6
  %i.jg = getelementptr i8, ptr %i.l, i64 %index298
  %next.gep306.a = getelementptr i8, ptr %i.jg, i64 7
  %i.jh = getelementptr i8, ptr %i.l, i64 %index298
  %next.gep307.a = getelementptr i8, ptr %i.jh, i64 8
  %i.ji = getelementptr i8, ptr %i.l, i64 %index298
  %next.gep308.a = getelementptr i8, ptr %i.ji, i64 9
  %i.jj = getelementptr i8, ptr %i.l, i64 %index298
  %next.gep309.a = getelementptr i8, ptr %i.jj, i64 10
  %i.jk = getelementptr i8, ptr %i.l, i64 %index298
  %next.gep310.a = getelementptr i8, ptr %i.jk, i64 11
  %i.jl = getelementptr i8, ptr %i.l, i64 %index298
  %next.gep311.a = getelementptr i8, ptr %i.jl, i64 12
  %i.jm = getelementptr i8, ptr %i.l, i64 %index298
  %next.gep312.a = getelementptr i8, ptr %i.jm, i64 13
  %i.jn = getelementptr i8, ptr %i.l, i64 %index298
  %next.gep313.a = getelementptr i8, ptr %i.jn, i64 14
  %i.jo = getelementptr i8, ptr %i.l, i64 %index298
  %next.gep314.a = getelementptr i8, ptr %i.jo, i64 15
  %i.jp = getelementptr i8, ptr %i.l, i64 %index298
  %next.gep315.a = getelementptr i8, ptr %i.jp, i64 16
  %i.jq = getelementptr i8, ptr %i.l, i64 %index298
  %next.gep316.a = getelementptr i8, ptr %i.jq, i64 17
  %i.jr = getelementptr i8, ptr %i.l, i64 %index298
  %next.gep317.a = getelementptr i8, ptr %i.jr, i64 18
  %i.js = getelementptr i8, ptr %i.l, i64 %index298
  %next.gep318.a = getelementptr i8, ptr %i.js, i64 19
  %i.jt = getelementptr i8, ptr %i.l, i64 %index298
  %next.gep319.a = getelementptr i8, ptr %i.jt, i64 20
  %i.ju = getelementptr i8, ptr %i.l, i64 %index298
  %next.gep320.a = getelementptr i8, ptr %i.ju, i64 21
  %i.jv = getelementptr i8, ptr %i.l, i64 %index298
  %next.gep321.a = getelementptr i8, ptr %i.jv, i64 22
  %i.jw = getelementptr i8, ptr %i.l, i64 %index298
  %next.gep322.a = getelementptr i8, ptr %i.jw, i64 23
  %i.jx = getelementptr i8, ptr %i.l, i64 %index298
  %next.gep323.a = getelementptr i8, ptr %i.jx, i64 24
  %i.jy = getelementptr i8, ptr %i.l, i64 %index298
  %next.gep324.a = getelementptr i8, ptr %i.jy, i64 25
  %i.jz = getelementptr i8, ptr %i.l, i64 %index298
  %next.gep325.a = getelementptr i8, ptr %i.jz, i64 26
  %i.ka = getelementptr i8, ptr %i.l, i64 %index298
  %next.gep326.a = getelementptr i8, ptr %i.ka, i64 27
  %i.kb = getelementptr i8, ptr %i.l, i64 %index298
  %next.gep327.a = getelementptr i8, ptr %i.kb, i64 28
  %i.kc = getelementptr i8, ptr %i.l, i64 %index298
  %next.gep328.a = getelementptr i8, ptr %i.kc, i64 29
  %i.kd = getelementptr i8, ptr %i.l, i64 %index298
  %next.gep329 = getelementptr i8, ptr %i.kd, i64 30
  %i.ke = getelementptr i8, ptr %i.l, i64 %index298
  %next.gep330 = getelementptr i8, ptr %i.ke, i64 31
  %i.kf = getelementptr i8, ptr %next.gep299.a, i64 16
  %wide.load331 = load <16 x i8>, ptr %next.gep299.a, align 1, !tbaa !49
  %wide.load332 = load <16 x i8>, ptr %i.kf, align 1, !tbaa !49
  %i.kg = icmp eq <16 x i8> %wide.load331, splat (i8 62) ; 16 uses
  %i.kh = icmp eq <16 x i8> %wide.load332, splat (i8 62) ; 16 uses
  %i.ki = extractelement <16 x i1> %i.kg, i64 0
  br i1 %i.ki, label %pred.store.if333.a, label %pred.store.continue334.a

pred.store.if333.a:                               ; preds = %vector.body297
  store i8 32, ptr %next.gep299.a, align 1, !tbaa !49
  br label %pred.store.continue334.a

pred.store.continue334.a:                         ; preds = %pred.store.if333.a, %vector.body297
  %i.kj = extractelement <16 x i1> %i.kg, i64 1
  br i1 %i.kj, label %pred.store.if335.a, label %pred.store.continue336.a

pred.store.if335.a:                               ; preds = %pred.store.continue334.a
  store i8 32, ptr %next.gep300.a, align 1, !tbaa !49
  br label %pred.store.continue336.a

pred.store.continue336.a:                         ; preds = %pred.store.if335.a, %pred.store.continue334.a
  %i.kk = extractelement <16 x i1> %i.kg, i64 2
  br i1 %i.kk, label %pred.store.if337.a, label %pred.store.continue338.a

pred.store.if337.a:                               ; preds = %pred.store.continue336.a
  store i8 32, ptr %next.gep301.a, align 1, !tbaa !49
  br label %pred.store.continue338.a

pred.store.continue338.a:                         ; preds = %pred.store.if337.a, %pred.store.continue336.a
  %i.kl = extractelement <16 x i1> %i.kg, i64 3
  br i1 %i.kl, label %pred.store.if339.a, label %pred.store.continue340.a

pred.store.if339.a:                               ; preds = %pred.store.continue338.a
  store i8 32, ptr %next.gep302.a, align 1, !tbaa !49
  br label %pred.store.continue340.a

pred.store.continue340.a:                         ; preds = %pred.store.if339.a, %pred.store.continue338.a
  %i.km = extractelement <16 x i1> %i.kg, i64 4
  br i1 %i.km, label %pred.store.if341.a, label %pred.store.continue342.a

pred.store.if341.a:                               ; preds = %pred.store.continue340.a
  store i8 32, ptr %next.gep303.a, align 1, !tbaa !49
  br label %pred.store.continue342.a

pred.store.continue342.a:                         ; preds = %pred.store.if341.a, %pred.store.continue340.a
  %i.kn = extractelement <16 x i1> %i.kg, i64 5
  br i1 %i.kn, label %pred.store.if343.a, label %pred.store.continue344.a

pred.store.if343.a:                               ; preds = %pred.store.continue342.a
  store i8 32, ptr %next.gep304.a, align 1, !tbaa !49
  br label %pred.store.continue344.a

pred.store.continue344.a:                         ; preds = %pred.store.if343.a, %pred.store.continue342.a
  %i.ko = extractelement <16 x i1> %i.kg, i64 6
  br i1 %i.ko, label %pred.store.if345.a, label %pred.store.continue346.a

pred.store.if345.a:                               ; preds = %pred.store.continue344.a
  store i8 32, ptr %next.gep305.a, align 1, !tbaa !49
  br label %pred.store.continue346.a

pred.store.continue346.a:                         ; preds = %pred.store.if345.a, %pred.store.continue344.a
  %i.kp = extractelement <16 x i1> %i.kg, i64 7
  br i1 %i.kp, label %pred.store.if347.a, label %pred.store.continue348.a

pred.store.if347.a:                               ; preds = %pred.store.continue346.a
  store i8 32, ptr %next.gep306.a, align 1, !tbaa !49
  br label %pred.store.continue348.a

pred.store.continue348.a:                         ; preds = %pred.store.if347.a, %pred.store.continue346.a
  %i.kq = extractelement <16 x i1> %i.kg, i64 8
  br i1 %i.kq, label %pred.store.if349.a, label %pred.store.continue350.a

pred.store.if349.a:                               ; preds = %pred.store.continue348.a
  store i8 32, ptr %next.gep307.a, align 1, !tbaa !49
  br label %pred.store.continue350.a

pred.store.continue350.a:                         ; preds = %pred.store.if349.a, %pred.store.continue348.a
  %i.kr = extractelement <16 x i1> %i.kg, i64 9
  br i1 %i.kr, label %pred.store.if351.a, label %pred.store.continue352.a

pred.store.if351.a:                               ; preds = %pred.store.continue350.a
  store i8 32, ptr %next.gep308.a, align 1, !tbaa !49
  br label %pred.store.continue352.a

pred.store.continue352.a:                         ; preds = %pred.store.if351.a, %pred.store.continue350.a
  %i.ks = extractelement <16 x i1> %i.kg, i64 10
  br i1 %i.ks, label %pred.store.if353.a, label %pred.store.continue354.a

pred.store.if353.a:                               ; preds = %pred.store.continue352.a
  store i8 32, ptr %next.gep309.a, align 1, !tbaa !49
  br label %pred.store.continue354.a

pred.store.continue354.a:                         ; preds = %pred.store.if353.a, %pred.store.continue352.a
  %i.kt = extractelement <16 x i1> %i.kg, i64 11
  br i1 %i.kt, label %pred.store.if355.a, label %pred.store.continue356.a

pred.store.if355.a:                               ; preds = %pred.store.continue354.a
  store i8 32, ptr %next.gep310.a, align 1, !tbaa !49
  br label %pred.store.continue356.a

pred.store.continue356.a:                         ; preds = %pred.store.if355.a, %pred.store.continue354.a
  %i.ku = extractelement <16 x i1> %i.kg, i64 12
  br i1 %i.ku, label %pred.store.if357.a, label %pred.store.continue358.a

pred.store.if357.a:                               ; preds = %pred.store.continue356.a
  store i8 32, ptr %next.gep311.a, align 1, !tbaa !49
  br label %pred.store.continue358.a

pred.store.continue358.a:                         ; preds = %pred.store.if357.a, %pred.store.continue356.a
  %i.kv = extractelement <16 x i1> %i.kg, i64 13
  br i1 %i.kv, label %pred.store.if359.a, label %pred.store.continue360.a

pred.store.if359.a:                               ; preds = %pred.store.continue358.a
  store i8 32, ptr %next.gep312.a, align 1, !tbaa !49
  br label %pred.store.continue360.a

pred.store.continue360.a:                         ; preds = %pred.store.if359.a, %pred.store.continue358.a
  %i.kw = extractelement <16 x i1> %i.kg, i64 14
  br i1 %i.kw, label %pred.store.if361.a, label %pred.store.continue362.a

pred.store.if361.a:                               ; preds = %pred.store.continue360.a
  store i8 32, ptr %next.gep313.a, align 1, !tbaa !49
  br label %pred.store.continue362.a

pred.store.continue362.a:                         ; preds = %pred.store.if361.a, %pred.store.continue360.a
  %i.kx = extractelement <16 x i1> %i.kg, i64 15
  br i1 %i.kx, label %pred.store.if363.a, label %pred.store.continue364.a

pred.store.if363.a:                               ; preds = %pred.store.continue362.a
  store i8 32, ptr %next.gep314.a, align 1, !tbaa !49
  br label %pred.store.continue364.a

pred.store.continue364.a:                         ; preds = %pred.store.if363.a, %pred.store.continue362.a
  %i.ky = extractelement <16 x i1> %i.kh, i64 0
  br i1 %i.ky, label %pred.store.if365.a, label %pred.store.continue366.a

pred.store.if365.a:                               ; preds = %pred.store.continue364.a
  store i8 32, ptr %next.gep315.a, align 1, !tbaa !49
  br label %pred.store.continue366.a

pred.store.continue366.a:                         ; preds = %pred.store.if365.a, %pred.store.continue364.a
  %i.kz = extractelement <16 x i1> %i.kh, i64 1
  br i1 %i.kz, label %pred.store.if367.a, label %pred.store.continue368.a

pred.store.if367.a:                               ; preds = %pred.store.continue366.a
  store i8 32, ptr %next.gep316.a, align 1, !tbaa !49
  br label %pred.store.continue368.a

pred.store.continue368.a:                         ; preds = %pred.store.if367.a, %pred.store.continue366.a
  %i.la = extractelement <16 x i1> %i.kh, i64 2
  br i1 %i.la, label %pred.store.if369.a, label %pred.store.continue370.a

pred.store.if369.a:                               ; preds = %pred.store.continue368.a
  store i8 32, ptr %next.gep317.a, align 1, !tbaa !49
  br label %pred.store.continue370.a

pred.store.continue370.a:                         ; preds = %pred.store.if369.a, %pred.store.continue368.a
  %i.lb = extractelement <16 x i1> %i.kh, i64 3
  br i1 %i.lb, label %pred.store.if371.a, label %pred.store.continue372.a

pred.store.if371.a:                               ; preds = %pred.store.continue370.a
  store i8 32, ptr %next.gep318.a, align 1, !tbaa !49
  br label %pred.store.continue372.a

pred.store.continue372.a:                         ; preds = %pred.store.if371.a, %pred.store.continue370.a
  %i.lc = extractelement <16 x i1> %i.kh, i64 4
  br i1 %i.lc, label %pred.store.if373.a, label %pred.store.continue374.a

pred.store.if373.a:                               ; preds = %pred.store.continue372.a
  store i8 32, ptr %next.gep319.a, align 1, !tbaa !49
  br label %pred.store.continue374.a

pred.store.continue374.a:                         ; preds = %pred.store.if373.a, %pred.store.continue372.a
  %i.ld = extractelement <16 x i1> %i.kh, i64 5
  br i1 %i.ld, label %pred.store.if375.a, label %pred.store.continue376.a

pred.store.if375.a:                               ; preds = %pred.store.continue374.a
  store i8 32, ptr %next.gep320.a, align 1, !tbaa !49
  br label %pred.store.continue376.a

pred.store.continue376.a:                         ; preds = %pred.store.if375.a, %pred.store.continue374.a
  %i.le = extractelement <16 x i1> %i.kh, i64 6
  br i1 %i.le, label %pred.store.if377.a, label %pred.store.continue378.a

pred.store.if377.a:                               ; preds = %pred.store.continue376.a
  store i8 32, ptr %next.gep321.a, align 1, !tbaa !49
  br label %pred.store.continue378.a

pred.store.continue378.a:                         ; preds = %pred.store.if377.a, %pred.store.continue376.a
  %i.lf = extractelement <16 x i1> %i.kh, i64 7
  br i1 %i.lf, label %pred.store.if379.a, label %pred.store.continue380.a

pred.store.if379.a:                               ; preds = %pred.store.continue378.a
  store i8 32, ptr %next.gep322.a, align 1, !tbaa !49
  br label %pred.store.continue380.a

pred.store.continue380.a:                         ; preds = %pred.store.if379.a, %pred.store.continue378.a
  %i.lg = extractelement <16 x i1> %i.kh, i64 8
  br i1 %i.lg, label %pred.store.if381.a, label %pred.store.continue382.a

pred.store.if381.a:                               ; preds = %pred.store.continue380.a
  store i8 32, ptr %next.gep323.a, align 1, !tbaa !49
  br label %pred.store.continue382.a

pred.store.continue382.a:                         ; preds = %pred.store.if381.a, %pred.store.continue380.a
  %i.lh = extractelement <16 x i1> %i.kh, i64 9
  br i1 %i.lh, label %pred.store.if383.a, label %pred.store.continue384.a

pred.store.if383.a:                               ; preds = %pred.store.continue382.a
  store i8 32, ptr %next.gep324.a, align 1, !tbaa !49
  br label %pred.store.continue384.a

pred.store.continue384.a:                         ; preds = %pred.store.if383.a, %pred.store.continue382.a
  %i.li = extractelement <16 x i1> %i.kh, i64 10
  br i1 %i.li, label %pred.store.if385.a, label %pred.store.continue386.a

pred.store.if385.a:                               ; preds = %pred.store.continue384.a
  store i8 32, ptr %next.gep325.a, align 1, !tbaa !49
  br label %pred.store.continue386.a

pred.store.continue386.a:                         ; preds = %pred.store.if385.a, %pred.store.continue384.a
  %i.lj = extractelement <16 x i1> %i.kh, i64 11
  br i1 %i.lj, label %pred.store.if387.a, label %pred.store.continue388.a

pred.store.if387.a:                               ; preds = %pred.store.continue386.a
  store i8 32, ptr %next.gep326.a, align 1, !tbaa !49
  br label %pred.store.continue388.a

pred.store.continue388.a:                         ; preds = %pred.store.if387.a, %pred.store.continue386.a
  %i.lk = extractelement <16 x i1> %i.kh, i64 12
  br i1 %i.lk, label %pred.store.if389.a, label %pred.store.continue390.a

pred.store.if389.a:                               ; preds = %pred.store.continue388.a
  store i8 32, ptr %next.gep327.a, align 1, !tbaa !49
  br label %pred.store.continue390.a

pred.store.continue390.a:                         ; preds = %pred.store.if389.a, %pred.store.continue388.a
  %i.ll = extractelement <16 x i1> %i.kh, i64 13
  br i1 %i.ll, label %pred.store.if391.a, label %pred.store.continue392.a

pred.store.if391.a:                               ; preds = %pred.store.continue390.a
  store i8 32, ptr %next.gep328.a, align 1, !tbaa !49
  br label %pred.store.continue392.a

pred.store.continue392.a:                         ; preds = %pred.store.if391.a, %pred.store.continue390.a
  %i.lm = extractelement <16 x i1> %i.kh, i64 14
  br i1 %i.lm, label %pred.store.if393.a, label %pred.store.continue394.a

pred.store.if393.a:                               ; preds = %pred.store.continue392.a
  store i8 32, ptr %next.gep329, align 1, !tbaa !49
  br label %pred.store.continue394.a

pred.store.continue394.a:                         ; preds = %pred.store.if393.a, %pred.store.continue392.a
  %i.ln = extractelement <16 x i1> %i.kh, i64 15
  br i1 %i.ln, label %pred.store.if395, label %pred.store.continue396

pred.store.if395:                                 ; preds = %pred.store.continue394.a
  store i8 32, ptr %next.gep330, align 1, !tbaa !49
  br label %pred.store.continue396

pred.store.continue396:                           ; preds = %pred.store.if395, %pred.store.continue394.a
  %index.next397 = add nuw i64 %index298, 32      ; 2 uses
  %i.lo = icmp eq i64 %index.next397, %n.vec296
  br i1 %i.lo, label %middle.block398, label %vector.body297, !llvm.loop !74

middle.block398:                                  ; preds = %pred.store.continue396
  %cmp.n399 = icmp eq i64 %i.cc, %n.vec296
  br i1 %cmp.n399, label %iter.check550, label %vec.epilog.iter.check403

vec.epilog.iter.check403:                         ; preds = %middle.block398
  %min.epilog.iters.check404 = icmp eq i64 %n.mod.vf295, 0
  br i1 %min.epilog.iters.check404, label %.lr.ph.i99.preheader, label %vec.epilog.ph405, !prof !68

vec.epilog.ph405:                                 ; preds = %vector.main.loop.iter.check292, %vec.epilog.iter.check403
  %vec.epilog.resume.val400 = phi i64 [ %n.vec296, %vec.epilog.iter.check403 ], [ 0, %vector.main.loop.iter.check292 ]
  %n.vec407 = and i64 %i.cc, -8                   ; 3 uses
  %i.lp = getelementptr i8, ptr %i.l, i64 %n.vec407
  br label %vec.epilog.vector.body408

vec.epilog.vector.body408:                        ; preds = %pred.store.continue434, %vec.epilog.ph405
  %index409 = phi i64 [ %vec.epilog.resume.val400, %vec.epilog.ph405 ], [ %index.next435, %pred.store.continue434 ] ; 9 uses
  %next.gep410.a = getelementptr i8, ptr %i.l, i64 %index409 ; 2 uses
  %i.lq = getelementptr i8, ptr %i.l, i64 %index409
  %next.gep411.a = getelementptr i8, ptr %i.lq, i64 1
  %i.lr = getelementptr i8, ptr %i.l, i64 %index409
  %next.gep412.a = getelementptr i8, ptr %i.lr, i64 2
  %i.ls = getelementptr i8, ptr %i.l, i64 %index409
  %next.gep413.a = getelementptr i8, ptr %i.ls, i64 3
  %i.lt = getelementptr i8, ptr %i.l, i64 %index409
  %next.gep414.a = getelementptr i8, ptr %i.lt, i64 4
  %i.lu = getelementptr i8, ptr %i.l, i64 %index409
  %next.gep415.a = getelementptr i8, ptr %i.lu, i64 5
  %i.lv = getelementptr i8, ptr %i.l, i64 %index409
  %next.gep416 = getelementptr i8, ptr %i.lv, i64 6
  %i.lw = getelementptr i8, ptr %i.l, i64 %index409
  %next.gep417 = getelementptr i8, ptr %i.lw, i64 7
  %wide.load418 = load <8 x i8>, ptr %next.gep410.a, align 1, !tbaa !49
  %i.lx = icmp eq <8 x i8> %wide.load418, splat (i8 62) ; 8 uses
  %i.ly = extractelement <8 x i1> %i.lx, i64 0
  br i1 %i.ly, label %pred.store.if419.a, label %pred.store.continue420.a

pred.store.if419.a:                               ; preds = %vec.epilog.vector.body408
  store i8 32, ptr %next.gep410.a, align 1, !tbaa !49
  br label %pred.store.continue420.a

pred.store.continue420.a:                         ; preds = %pred.store.if419.a, %vec.epilog.vector.body408
  %i.lz = extractelement <8 x i1> %i.lx, i64 1
  br i1 %i.lz, label %pred.store.if421.a, label %pred.store.continue422.a

pred.store.if421.a:                               ; preds = %pred.store.continue420.a
  store i8 32, ptr %next.gep411.a, align 1, !tbaa !49
  br label %pred.store.continue422.a

pred.store.continue422.a:                         ; preds = %pred.store.if421.a, %pred.store.continue420.a
  %i.ma = extractelement <8 x i1> %i.lx, i64 2
  br i1 %i.ma, label %pred.store.if423.a, label %pred.store.continue424.a

pred.store.if423.a:                               ; preds = %pred.store.continue422.a
  store i8 32, ptr %next.gep412.a, align 1, !tbaa !49
  br label %pred.store.continue424.a

pred.store.continue424.a:                         ; preds = %pred.store.if423.a, %pred.store.continue422.a
  %i.mb = extractelement <8 x i1> %i.lx, i64 3
  br i1 %i.mb, label %pred.store.if425.a, label %pred.store.continue426.a

pred.store.if425.a:                               ; preds = %pred.store.continue424.a
  store i8 32, ptr %next.gep413.a, align 1, !tbaa !49
  br label %pred.store.continue426.a

pred.store.continue426.a:                         ; preds = %pred.store.if425.a, %pred.store.continue424.a
  %i.mc = extractelement <8 x i1> %i.lx, i64 4
  br i1 %i.mc, label %pred.store.if427.a, label %pred.store.continue428.a

pred.store.if427.a:                               ; preds = %pred.store.continue426.a
  store i8 32, ptr %next.gep414.a, align 1, !tbaa !49
  br label %pred.store.continue428.a

pred.store.continue428.a:                         ; preds = %pred.store.if427.a, %pred.store.continue426.a
  %i.md = extractelement <8 x i1> %i.lx, i64 5
  br i1 %i.md, label %pred.store.if429.a, label %pred.store.continue430.a

pred.store.if429.a:                               ; preds = %pred.store.continue428.a
  store i8 32, ptr %next.gep415.a, align 1, !tbaa !49
  br label %pred.store.continue430.a

pred.store.continue430.a:                         ; preds = %pred.store.if429.a, %pred.store.continue428.a
  %i.me = extractelement <8 x i1> %i.lx, i64 6
  br i1 %i.me, label %pred.store.if431.a, label %pred.store.continue432.a

pred.store.if431.a:                               ; preds = %pred.store.continue430.a
  store i8 32, ptr %next.gep416, align 1, !tbaa !49
  br label %pred.store.continue432.a

pred.store.continue432.a:                         ; preds = %pred.store.if431.a, %pred.store.continue430.a
  %i.mf = extractelement <8 x i1> %i.lx, i64 7
  br i1 %i.mf, label %pred.store.if433, label %pred.store.continue434

pred.store.if433:                                 ; preds = %pred.store.continue432.a
  store i8 32, ptr %next.gep417, align 1, !tbaa !49
  br label %pred.store.continue434

pred.store.continue434:                           ; preds = %pred.store.if433, %pred.store.continue432.a
  %index.next435 = add nuw i64 %index409, 8       ; 2 uses
  %i.mg = icmp eq i64 %index.next435, %n.vec407
  br i1 %i.mg, label %vec.epilog.middle.block436, label %vec.epilog.vector.body408, !llvm.loop !75

vec.epilog.middle.block436:                       ; preds = %pred.store.continue434
  %cmp.n437 = icmp eq i64 %i.cc, %n.vec407
  br i1 %cmp.n437, label %iter.check550, label %.lr.ph.i99.preheader

.lr.ph.i99.preheader:                             ; preds = %iter.check401, %vec.epilog.iter.check403, %vec.epilog.middle.block436
  %.07.i100.ph = phi ptr [ %i.l, %iter.check401 ], [ %i.iz, %vec.epilog.iter.check403 ], [ %i.lp, %vec.epilog.middle.block436 ]
  br label %.lr.ph.i99

.lr.ph.i99:                                       ; preds = %.lr.ph.i99.preheader, %bb.af
  %.07.i100 = phi ptr [ %i.mj, %bb.af ], [ %.07.i100.ph, %.lr.ph.i99.preheader ] ; 3 uses
  %i.mh = load i8, ptr %.07.i100, align 1, !tbaa !49
  %i.mi = icmp eq i8 %i.mh, 62
  br i1 %i.mi, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %.lr.ph.i99
  store i8 32, ptr %.07.i100, align 1, !tbaa !49
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %.lr.ph.i99
  %i.mj = getelementptr inbounds nuw i8, ptr %.07.i100, i64 1 ; 2 uses
  %.not.i101 = icmp ugt ptr %i.mj, %i.az
  br i1 %.not.i101, label %iter.check550, label %.lr.ph.i99, !llvm.loop !76

iter.check550:                                    ; preds = %bb.af, %vec.epilog.middle.block436, %middle.block398
  %min.iters.check440 = icmp ult i64 %i.cc, 8
  br i1 %min.iters.check440, label %.lr.ph.i104.preheader, label %vector.main.loop.iter.check441

vector.main.loop.iter.check441:                   ; preds = %iter.check550
  %min.iters.check442 = icmp ult i64 %i.cc, 32
  br i1 %min.iters.check442, label %vec.epilog.ph554, label %vector.ph443

vector.ph443:                                     ; preds = %vector.main.loop.iter.check441
  %n.mod.vf444 = and i64 %i.cc, 24
  %n.vec445 = and i64 %i.cc, -32                  ; 4 uses
  %i.mk = getelementptr i8, ptr %i.l, i64 %n.vec445
  br label %vector.body446

vector.body446:                                   ; preds = %pred.store.continue545, %vector.ph443
  %index447 = phi i64 [ 0, %vector.ph443 ], [ %index.next546, %pred.store.continue545 ] ; 33 uses
  %next.gep448.a = getelementptr i8, ptr %i.l, i64 %index447 ; 3 uses
  %i.ml = getelementptr i8, ptr %i.l, i64 %index447
  %next.gep449.a = getelementptr i8, ptr %i.ml, i64 1
  %i.mm = getelementptr i8, ptr %i.l, i64 %index447
  %next.gep450.a = getelementptr i8, ptr %i.mm, i64 2
  %i.mn = getelementptr i8, ptr %i.l, i64 %index447
  %next.gep451.a = getelementptr i8, ptr %i.mn, i64 3
  %i.mo = getelementptr i8, ptr %i.l, i64 %index447
  %next.gep452.a = getelementptr i8, ptr %i.mo, i64 4
  %i.mp = getelementptr i8, ptr %i.l, i64 %index447
  %next.gep453.a = getelementptr i8, ptr %i.mp, i64 5
  %i.mq = getelementptr i8, ptr %i.l, i64 %index447
  %next.gep454.a = getelementptr i8, ptr %i.mq, i64 6
  %i.mr = getelementptr i8, ptr %i.l, i64 %index447
  %next.gep455.a = getelementptr i8, ptr %i.mr, i64 7
  %i.ms = getelementptr i8, ptr %i.l, i64 %index447
  %next.gep456.a = getelementptr i8, ptr %i.ms, i64 8
  %i.mt = getelementptr i8, ptr %i.l, i64 %index447
  %next.gep457.a = getelementptr i8, ptr %i.mt, i64 9
  %i.mu = getelementptr i8, ptr %i.l, i64 %index447
  %next.gep458.a = getelementptr i8, ptr %i.mu, i64 10
  %i.mv = getelementptr i8, ptr %i.l, i64 %index447
  %next.gep459.a = getelementptr i8, ptr %i.mv, i64 11
  %i.mw = getelementptr i8, ptr %i.l, i64 %index447
  %next.gep460.a = getelementptr i8, ptr %i.mw, i64 12
  %i.mx = getelementptr i8, ptr %i.l, i64 %index447
  %next.gep461.a = getelementptr i8, ptr %i.mx, i64 13
  %i.my = getelementptr i8, ptr %i.l, i64 %index447
  %next.gep462.a = getelementptr i8, ptr %i.my, i64 14
  %i.mz = getelementptr i8, ptr %i.l, i64 %index447
  %next.gep463.a = getelementptr i8, ptr %i.mz, i64 15
  %i.na = getelementptr i8, ptr %i.l, i64 %index447
  %next.gep464.a = getelementptr i8, ptr %i.na, i64 16
  %i.nb = getelementptr i8, ptr %i.l, i64 %index447
  %next.gep465.a = getelementptr i8, ptr %i.nb, i64 17
  %i.nc = getelementptr i8, ptr %i.l, i64 %index447
  %next.gep466.a = getelementptr i8, ptr %i.nc, i64 18
  %i.nd = getelementptr i8, ptr %i.l, i64 %index447
  %next.gep467.a = getelementptr i8, ptr %i.nd, i64 19
  %i.ne = getelementptr i8, ptr %i.l, i64 %index447
  %next.gep468.a = getelementptr i8, ptr %i.ne, i64 20
  %i.nf = getelementptr i8, ptr %i.l, i64 %index447
  %next.gep469.a = getelementptr i8, ptr %i.nf, i64 21
  %i.ng = getelementptr i8, ptr %i.l, i64 %index447
  %next.gep470.a = getelementptr i8, ptr %i.ng, i64 22
  %i.nh = getelementptr i8, ptr %i.l, i64 %index447
  %next.gep471.a = getelementptr i8, ptr %i.nh, i64 23
  %i.ni = getelementptr i8, ptr %i.l, i64 %index447
  %next.gep472.a = getelementptr i8, ptr %i.ni, i64 24
  %i.nj = getelementptr i8, ptr %i.l, i64 %index447
  %next.gep473.a = getelementptr i8, ptr %i.nj, i64 25
  %i.nk = getelementptr i8, ptr %i.l, i64 %index447
  %next.gep474.a = getelementptr i8, ptr %i.nk, i64 26
  %i.nl = getelementptr i8, ptr %i.l, i64 %index447
  %next.gep475.a = getelementptr i8, ptr %i.nl, i64 27
  %i.nm = getelementptr i8, ptr %i.l, i64 %index447
  %next.gep476.a = getelementptr i8, ptr %i.nm, i64 28
  %i.nn = getelementptr i8, ptr %i.l, i64 %index447
  %next.gep477 = getelementptr i8, ptr %i.nn, i64 29
  %i.no = getelementptr i8, ptr %i.l, i64 %index447
  %next.gep478 = getelementptr i8, ptr %i.no, i64 30
  %i.np = getelementptr i8, ptr %i.l, i64 %index447
  %next.gep479 = getelementptr i8, ptr %i.np, i64 31
  %i.nq = getelementptr i8, ptr %next.gep448.a, i64 16
  %wide.load480 = load <16 x i8>, ptr %next.gep448.a, align 1, !tbaa !49
  %wide.load481 = load <16 x i8>, ptr %i.nq, align 1, !tbaa !49
  %i.nr = icmp eq <16 x i8> %wide.load480, splat (i8 34) ; 16 uses
  %i.ns = icmp eq <16 x i8> %wide.load481, splat (i8 34) ; 16 uses
  %i.nt = extractelement <16 x i1> %i.nr, i64 0
  br i1 %i.nt, label %pred.store.if482, label %pred.store.continue483

pred.store.if482:                                 ; preds = %vector.body446
  store i8 32, ptr %next.gep448.a, align 1, !tbaa !49
  br label %pred.store.continue483

pred.store.continue483:                           ; preds = %pred.store.if482, %vector.body446
  %i.nu = extractelement <16 x i1> %i.nr, i64 1
  br i1 %i.nu, label %pred.store.if484, label %pred.store.continue485

pred.store.if484:                                 ; preds = %pred.store.continue483
  store i8 32, ptr %next.gep449.a, align 1, !tbaa !49
  br label %pred.store.continue485

pred.store.continue485:                           ; preds = %pred.store.if484, %pred.store.continue483
  %i.nv = extractelement <16 x i1> %i.nr, i64 2
  br i1 %i.nv, label %pred.store.if486, label %pred.store.continue487

pred.store.if486:                                 ; preds = %pred.store.continue485
  store i8 32, ptr %next.gep450.a, align 1, !tbaa !49
  br label %pred.store.continue487

pred.store.continue487:                           ; preds = %pred.store.if486, %pred.store.continue485
  %i.nw = extractelement <16 x i1> %i.nr, i64 3
  br i1 %i.nw, label %pred.store.if488, label %pred.store.continue489

pred.store.if488:                                 ; preds = %pred.store.continue487
  store i8 32, ptr %next.gep451.a, align 1, !tbaa !49
  br label %pred.store.continue489

pred.store.continue489:                           ; preds = %pred.store.if488, %pred.store.continue487
  %i.nx = extractelement <16 x i1> %i.nr, i64 4
  br i1 %i.nx, label %pred.store.if490, label %pred.store.continue491

pred.store.if490:                                 ; preds = %pred.store.continue489
  store i8 32, ptr %next.gep452.a, align 1, !tbaa !49
  br label %pred.store.continue491

pred.store.continue491:                           ; preds = %pred.store.if490, %pred.store.continue489
  %i.ny = extractelement <16 x i1> %i.nr, i64 5
  br i1 %i.ny, label %pred.store.if492, label %pred.store.continue493

pred.store.if492:                                 ; preds = %pred.store.continue491
  store i8 32, ptr %next.gep453.a, align 1, !tbaa !49
  br label %pred.store.continue493

pred.store.continue493:                           ; preds = %pred.store.if492, %pred.store.continue491
  %i.nz = extractelement <16 x i1> %i.nr, i64 6
  br i1 %i.nz, label %pred.store.if494, label %pred.store.continue495

pred.store.if494:                                 ; preds = %pred.store.continue493
  store i8 32, ptr %next.gep454.a, align 1, !tbaa !49
  br label %pred.store.continue495

pred.store.continue495:                           ; preds = %pred.store.if494, %pred.store.continue493
  %i.oa = extractelement <16 x i1> %i.nr, i64 7
  br i1 %i.oa, label %pred.store.if496, label %pred.store.continue497

pred.store.if496:                                 ; preds = %pred.store.continue495
  store i8 32, ptr %next.gep455.a, align 1, !tbaa !49
  br label %pred.store.continue497

pred.store.continue497:                           ; preds = %pred.store.if496, %pred.store.continue495
  %i.ob = extractelement <16 x i1> %i.nr, i64 8
  br i1 %i.ob, label %pred.store.if498, label %pred.store.continue499

pred.store.if498:                                 ; preds = %pred.store.continue497
  store i8 32, ptr %next.gep456.a, align 1, !tbaa !49
  br label %pred.store.continue499

pred.store.continue499:                           ; preds = %pred.store.if498, %pred.store.continue497
  %i.oc = extractelement <16 x i1> %i.nr, i64 9
  br i1 %i.oc, label %pred.store.if500, label %pred.store.continue501

pred.store.if500:                                 ; preds = %pred.store.continue499
  store i8 32, ptr %next.gep457.a, align 1, !tbaa !49
  br label %pred.store.continue501

pred.store.continue501:                           ; preds = %pred.store.if500, %pred.store.continue499
  %i.od = extractelement <16 x i1> %i.nr, i64 10
  br i1 %i.od, label %pred.store.if502, label %pred.store.continue503

pred.store.if502:                                 ; preds = %pred.store.continue501
  store i8 32, ptr %next.gep458.a, align 1, !tbaa !49
  br label %pred.store.continue503

pred.store.continue503:                           ; preds = %pred.store.if502, %pred.store.continue501
  %i.oe = extractelement <16 x i1> %i.nr, i64 11
  br i1 %i.oe, label %pred.store.if504, label %pred.store.continue505

pred.store.if504:                                 ; preds = %pred.store.continue503
  store i8 32, ptr %next.gep459.a, align 1, !tbaa !49
  br label %pred.store.continue505

pred.store.continue505:                           ; preds = %pred.store.if504, %pred.store.continue503
  %i.of = extractelement <16 x i1> %i.nr, i64 12
  br i1 %i.of, label %pred.store.if506, label %pred.store.continue507

pred.store.if506:                                 ; preds = %pred.store.continue505
  store i8 32, ptr %next.gep460.a, align 1, !tbaa !49
  br label %pred.store.continue507

pred.store.continue507:                           ; preds = %pred.store.if506, %pred.store.continue505
  %i.og = extractelement <16 x i1> %i.nr, i64 13
  br i1 %i.og, label %pred.store.if508, label %pred.store.continue509

pred.store.if508:                                 ; preds = %pred.store.continue507
  store i8 32, ptr %next.gep461.a, align 1, !tbaa !49
  br label %pred.store.continue509

pred.store.continue509:                           ; preds = %pred.store.if508, %pred.store.continue507
  %i.oh = extractelement <16 x i1> %i.nr, i64 14
  br i1 %i.oh, label %pred.store.if510, label %pred.store.continue511

pred.store.if510:                                 ; preds = %pred.store.continue509
  store i8 32, ptr %next.gep462.a, align 1, !tbaa !49
  br label %pred.store.continue511

pred.store.continue511:                           ; preds = %pred.store.if510, %pred.store.continue509
  %i.oi = extractelement <16 x i1> %i.nr, i64 15
  br i1 %i.oi, label %pred.store.if512, label %pred.store.continue513

pred.store.if512:                                 ; preds = %pred.store.continue511
  store i8 32, ptr %next.gep463.a, align 1, !tbaa !49
  br label %pred.store.continue513

pred.store.continue513:                           ; preds = %pred.store.if512, %pred.store.continue511
  %i.oj = extractelement <16 x i1> %i.ns, i64 0
  br i1 %i.oj, label %pred.store.if514, label %pred.store.continue515

pred.store.if514:                                 ; preds = %pred.store.continue513
  store i8 32, ptr %next.gep464.a, align 1, !tbaa !49
  br label %pred.store.continue515

pred.store.continue515:                           ; preds = %pred.store.if514, %pred.store.continue513
  %i.ok = extractelement <16 x i1> %i.ns, i64 1
  br i1 %i.ok, label %pred.store.if516, label %pred.store.continue517

pred.store.if516:                                 ; preds = %pred.store.continue515
  store i8 32, ptr %next.gep465.a, align 1, !tbaa !49
  br label %pred.store.continue517

pred.store.continue517:                           ; preds = %pred.store.if516, %pred.store.continue515
  %i.ol = extractelement <16 x i1> %i.ns, i64 2
  br i1 %i.ol, label %pred.store.if518, label %pred.store.continue519

pred.store.if518:                                 ; preds = %pred.store.continue517
  store i8 32, ptr %next.gep466.a, align 1, !tbaa !49
  br label %pred.store.continue519

pred.store.continue519:                           ; preds = %pred.store.if518, %pred.store.continue517
  %i.om = extractelement <16 x i1> %i.ns, i64 3
  br i1 %i.om, label %pred.store.if520, label %pred.store.continue521

pred.store.if520:                                 ; preds = %pred.store.continue519
  store i8 32, ptr %next.gep467.a, align 1, !tbaa !49
  br label %pred.store.continue521

pred.store.continue521:                           ; preds = %pred.store.if520, %pred.store.continue519
  %i.on = extractelement <16 x i1> %i.ns, i64 4
  br i1 %i.on, label %pred.store.if522, label %pred.store.continue523

pred.store.if522:                                 ; preds = %pred.store.continue521
  store i8 32, ptr %next.gep468.a, align 1, !tbaa !49
  br label %pred.store.continue523

pred.store.continue523:                           ; preds = %pred.store.if522, %pred.store.continue521
  %i.oo = extractelement <16 x i1> %i.ns, i64 5
  br i1 %i.oo, label %pred.store.if524, label %pred.store.continue525

pred.store.if524:                                 ; preds = %pred.store.continue523
  store i8 32, ptr %next.gep469.a, align 1, !tbaa !49
  br label %pred.store.continue525

pred.store.continue525:                           ; preds = %pred.store.if524, %pred.store.continue523
  %i.op = extractelement <16 x i1> %i.ns, i64 6
  br i1 %i.op, label %pred.store.if526, label %pred.store.continue527

pred.store.if526:                                 ; preds = %pred.store.continue525
  store i8 32, ptr %next.gep470.a, align 1, !tbaa !49
  br label %pred.store.continue527

pred.store.continue527:                           ; preds = %pred.store.if526, %pred.store.continue525
  %i.oq = extractelement <16 x i1> %i.ns, i64 7
  br i1 %i.oq, label %pred.store.if528, label %pred.store.continue529

pred.store.if528:                                 ; preds = %pred.store.continue527
  store i8 32, ptr %next.gep471.a, align 1, !tbaa !49
  br label %pred.store.continue529

pred.store.continue529:                           ; preds = %pred.store.if528, %pred.store.continue527
  %i.or = extractelement <16 x i1> %i.ns, i64 8
  br i1 %i.or, label %pred.store.if530, label %pred.store.continue531

pred.store.if530:                                 ; preds = %pred.store.continue529
  store i8 32, ptr %next.gep472.a, align 1, !tbaa !49
  br label %pred.store.continue531

pred.store.continue531:                           ; preds = %pred.store.if530, %pred.store.continue529
  %i.os = extractelement <16 x i1> %i.ns, i64 9
  br i1 %i.os, label %pred.store.if532, label %pred.store.continue533

pred.store.if532:                                 ; preds = %pred.store.continue531
  store i8 32, ptr %next.gep473.a, align 1, !tbaa !49
  br label %pred.store.continue533

pred.store.continue533:                           ; preds = %pred.store.if532, %pred.store.continue531
  %i.ot = extractelement <16 x i1> %i.ns, i64 10
  br i1 %i.ot, label %pred.store.if534, label %pred.store.continue535

pred.store.if534:                                 ; preds = %pred.store.continue533
  store i8 32, ptr %next.gep474.a, align 1, !tbaa !49
  br label %pred.store.continue535

pred.store.continue535:                           ; preds = %pred.store.if534, %pred.store.continue533
  %i.ou = extractelement <16 x i1> %i.ns, i64 11
  br i1 %i.ou, label %pred.store.if536, label %pred.store.continue537

pred.store.if536:                                 ; preds = %pred.store.continue535
  store i8 32, ptr %next.gep475.a, align 1, !tbaa !49
  br label %pred.store.continue537

pred.store.continue537:                           ; preds = %pred.store.if536, %pred.store.continue535
  %i.ov = extractelement <16 x i1> %i.ns, i64 12
  br i1 %i.ov, label %pred.store.if538, label %pred.store.continue539

pred.store.if538:                                 ; preds = %pred.store.continue537
  store i8 32, ptr %next.gep476.a, align 1, !tbaa !49
  br label %pred.store.continue539

pred.store.continue539:                           ; preds = %pred.store.if538, %pred.store.continue537
  %i.ow = extractelement <16 x i1> %i.ns, i64 13
  br i1 %i.ow, label %pred.store.if540, label %pred.store.continue541

pred.store.if540:                                 ; preds = %pred.store.continue539
  store i8 32, ptr %next.gep477, align 1, !tbaa !49
  br label %pred.store.continue541

pred.store.continue541:                           ; preds = %pred.store.if540, %pred.store.continue539
  %i.ox = extractelement <16 x i1> %i.ns, i64 14
  br i1 %i.ox, label %pred.store.if542, label %pred.store.continue543

pred.store.if542:                                 ; preds = %pred.store.continue541
  store i8 32, ptr %next.gep478, align 1, !tbaa !49
  br label %pred.store.continue543

pred.store.continue543:                           ; preds = %pred.store.if542, %pred.store.continue541
  %i.oy = extractelement <16 x i1> %i.ns, i64 15
  br i1 %i.oy, label %pred.store.if544, label %pred.store.continue545

pred.store.if544:                                 ; preds = %pred.store.continue543
  store i8 32, ptr %next.gep479, align 1, !tbaa !49
  br label %pred.store.continue545

pred.store.continue545:                           ; preds = %pred.store.if544, %pred.store.continue543
  %index.next546 = add nuw i64 %index447, 32      ; 2 uses
  %i.oz = icmp eq i64 %index.next546, %n.vec445
  br i1 %i.oz, label %middle.block547, label %vector.body446, !llvm.loop !77

middle.block547:                                  ; preds = %pred.store.continue545
  %cmp.n548 = icmp eq i64 %i.cc, %n.vec445
  br i1 %cmp.n548, label %iter.check699, label %vec.epilog.iter.check552

vec.epilog.iter.check552:                         ; preds = %middle.block547
  %min.epilog.iters.check553 = icmp eq i64 %n.mod.vf444, 0
  br i1 %min.epilog.iters.check553, label %.lr.ph.i104.preheader, label %vec.epilog.ph554, !prof !68

vec.epilog.ph554:                                 ; preds = %vector.main.loop.iter.check441, %vec.epilog.iter.check552
  %vec.epilog.resume.val549 = phi i64 [ %n.vec445, %vec.epilog.iter.check552 ], [ 0, %vector.main.loop.iter.check441 ]
  %n.vec556 = and i64 %i.cc, -8                   ; 3 uses
  %i.pa = getelementptr i8, ptr %i.l, i64 %n.vec556
  br label %vec.epilog.vector.body557

vec.epilog.vector.body557:                        ; preds = %pred.store.continue583, %vec.epilog.ph554
  %index558 = phi i64 [ %vec.epilog.resume.val549, %vec.epilog.ph554 ], [ %index.next584, %pred.store.continue583 ] ; 9 uses
  %next.gep559.a = getelementptr i8, ptr %i.l, i64 %index558 ; 2 uses
  %i.pb = getelementptr i8, ptr %i.l, i64 %index558
  %next.gep560.a = getelementptr i8, ptr %i.pb, i64 1
  %i.pc = getelementptr i8, ptr %i.l, i64 %index558
  %next.gep561.a = getelementptr i8, ptr %i.pc, i64 2
  %i.pd = getelementptr i8, ptr %i.l, i64 %index558
  %next.gep562.a = getelementptr i8, ptr %i.pd, i64 3
  %i.pe = getelementptr i8, ptr %i.l, i64 %index558
  %next.gep563.a = getelementptr i8, ptr %i.pe, i64 4
  %i.pf = getelementptr i8, ptr %i.l, i64 %index558
  %next.gep564 = getelementptr i8, ptr %i.pf, i64 5
  %i.pg = getelementptr i8, ptr %i.l, i64 %index558
  %next.gep565 = getelementptr i8, ptr %i.pg, i64 6
  %i.ph = getelementptr i8, ptr %i.l, i64 %index558
  %next.gep566 = getelementptr i8, ptr %i.ph, i64 7
  %wide.load567 = load <8 x i8>, ptr %next.gep559.a, align 1, !tbaa !49
  %i.pi = icmp eq <8 x i8> %wide.load567, splat (i8 34) ; 8 uses
  %i.pj = extractelement <8 x i1> %i.pi, i64 0
  br i1 %i.pj, label %pred.store.if568, label %pred.store.continue569

pred.store.if568:                                 ; preds = %vec.epilog.vector.body557
  store i8 32, ptr %next.gep559.a, align 1, !tbaa !49
  br label %pred.store.continue569

pred.store.continue569:                           ; preds = %pred.store.if568, %vec.epilog.vector.body557
  %i.pk = extractelement <8 x i1> %i.pi, i64 1
  br i1 %i.pk, label %pred.store.if570, label %pred.store.continue571

pred.store.if570:                                 ; preds = %pred.store.continue569
  store i8 32, ptr %next.gep560.a, align 1, !tbaa !49
  br label %pred.store.continue571

pred.store.continue571:                           ; preds = %pred.store.if570, %pred.store.continue569
  %i.pl = extractelement <8 x i1> %i.pi, i64 2
  br i1 %i.pl, label %pred.store.if572, label %pred.store.continue573

pred.store.if572:                                 ; preds = %pred.store.continue571
  store i8 32, ptr %next.gep561.a, align 1, !tbaa !49
  br label %pred.store.continue573

pred.store.continue573:                           ; preds = %pred.store.if572, %pred.store.continue571
  %i.pm = extractelement <8 x i1> %i.pi, i64 3
  br i1 %i.pm, label %pred.store.if574, label %pred.store.continue575

pred.store.if574:                                 ; preds = %pred.store.continue573
  store i8 32, ptr %next.gep562.a, align 1, !tbaa !49
  br label %pred.store.continue575

pred.store.continue575:                           ; preds = %pred.store.if574, %pred.store.continue573
  %i.pn = extractelement <8 x i1> %i.pi, i64 4
  br i1 %i.pn, label %pred.store.if576, label %pred.store.continue577

pred.store.if576:                                 ; preds = %pred.store.continue575
  store i8 32, ptr %next.gep563.a, align 1, !tbaa !49
  br label %pred.store.continue577

pred.store.continue577:                           ; preds = %pred.store.if576, %pred.store.continue575
  %i.po = extractelement <8 x i1> %i.pi, i64 5
  br i1 %i.po, label %pred.store.if578, label %pred.store.continue579

pred.store.if578:                                 ; preds = %pred.store.continue577
  store i8 32, ptr %next.gep564, align 1, !tbaa !49
  br label %pred.store.continue579

pred.store.continue579:                           ; preds = %pred.store.if578, %pred.store.continue577
  %i.pp = extractelement <8 x i1> %i.pi, i64 6
  br i1 %i.pp, label %pred.store.if580, label %pred.store.continue581

pred.store.if580:                                 ; preds = %pred.store.continue579
  store i8 32, ptr %next.gep565, align 1, !tbaa !49
  br label %pred.store.continue581

pred.store.continue581:                           ; preds = %pred.store.if580, %pred.store.continue579
  %i.pq = extractelement <8 x i1> %i.pi, i64 7
  br i1 %i.pq, label %pred.store.if582, label %pred.store.continue583

pred.store.if582:                                 ; preds = %pred.store.continue581
  store i8 32, ptr %next.gep566, align 1, !tbaa !49
  br label %pred.store.continue583

pred.store.continue583:                           ; preds = %pred.store.if582, %pred.store.continue581
  %index.next584 = add nuw i64 %index558, 8       ; 2 uses
  %i.pr = icmp eq i64 %index.next584, %n.vec556
  br i1 %i.pr, label %vec.epilog.middle.block585, label %vec.epilog.vector.body557, !llvm.loop !78

vec.epilog.middle.block585:                       ; preds = %pred.store.continue583
  %cmp.n586 = icmp eq i64 %i.cc, %n.vec556
  br i1 %cmp.n586, label %iter.check699, label %.lr.ph.i104.preheader

.lr.ph.i104.preheader:                            ; preds = %iter.check550, %vec.epilog.iter.check552, %vec.epilog.middle.block585
  %.07.i105.ph = phi ptr [ %i.l, %iter.check550 ], [ %i.mk, %vec.epilog.iter.check552 ], [ %i.pa, %vec.epilog.middle.block585 ]
  br label %.lr.ph.i104

.lr.ph.i104:                                      ; preds = %.lr.ph.i104.preheader, %bb.ah
  %.07.i105 = phi ptr [ %i.pu, %bb.ah ], [ %.07.i105.ph, %.lr.ph.i104.preheader ] ; 3 uses
  %i.ps = load i8, ptr %.07.i105, align 1, !tbaa !49
  %i.pt = icmp eq i8 %i.ps, 34
  br i1 %i.pt, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %.lr.ph.i104
  store i8 32, ptr %.07.i105, align 1, !tbaa !49
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.lr.ph.i104
  %i.pu = getelementptr inbounds nuw i8, ptr %.07.i105, i64 1 ; 2 uses
  %.not.i106 = icmp ugt ptr %i.pu, %i.az
  br i1 %.not.i106, label %iter.check699, label %.lr.ph.i104, !llvm.loop !79

iter.check699:                                    ; preds = %bb.ah, %vec.epilog.middle.block585, %middle.block547
  %min.iters.check589 = icmp ult i64 %i.cc, 8
  br i1 %min.iters.check589, label %.lr.ph.i109.preheader, label %vector.main.loop.iter.check590

vector.main.loop.iter.check590:                   ; preds = %iter.check699
  %min.iters.check591 = icmp ult i64 %i.cc, 32
  br i1 %min.iters.check591, label %vec.epilog.ph703, label %vector.ph592

vector.ph592:                                     ; preds = %vector.main.loop.iter.check590
  %n.mod.vf593 = and i64 %i.cc, 24
  %n.vec594 = and i64 %i.cc, -32                  ; 4 uses
  %i.pv = getelementptr i8, ptr %i.l, i64 %n.vec594
  br label %vector.body595

vector.body595:                                   ; preds = %pred.store.continue694, %vector.ph592
  %index596 = phi i64 [ 0, %vector.ph592 ], [ %index.next695, %pred.store.continue694 ] ; 33 uses
  %next.gep597.a = getelementptr i8, ptr %i.l, i64 %index596 ; 3 uses
  %i.pw = getelementptr i8, ptr %i.l, i64 %index596
  %next.gep598.a = getelementptr i8, ptr %i.pw, i64 1
  %i.px = getelementptr i8, ptr %i.l, i64 %index596
  %next.gep599.a = getelementptr i8, ptr %i.px, i64 2
  %i.py = getelementptr i8, ptr %i.l, i64 %index596
  %next.gep600.a = getelementptr i8, ptr %i.py, i64 3
  %i.pz = getelementptr i8, ptr %i.l, i64 %index596
  %next.gep601.a = getelementptr i8, ptr %i.pz, i64 4
  %i.qa = getelementptr i8, ptr %i.l, i64 %index596
  %next.gep602.a = getelementptr i8, ptr %i.qa, i64 5
  %i.qb = getelementptr i8, ptr %i.l, i64 %index596
  %next.gep603.a = getelementptr i8, ptr %i.qb, i64 6
  %i.qc = getelementptr i8, ptr %i.l, i64 %index596
  %next.gep604.a = getelementptr i8, ptr %i.qc, i64 7
  %i.qd = getelementptr i8, ptr %i.l, i64 %index596
  %next.gep605.a = getelementptr i8, ptr %i.qd, i64 8
  %i.qe = getelementptr i8, ptr %i.l, i64 %index596
  %next.gep606.a = getelementptr i8, ptr %i.qe, i64 9
  %i.qf = getelementptr i8, ptr %i.l, i64 %index596
  %next.gep607.a = getelementptr i8, ptr %i.qf, i64 10
  %i.qg = getelementptr i8, ptr %i.l, i64 %index596
  %next.gep608.a = getelementptr i8, ptr %i.qg, i64 11
  %i.qh = getelementptr i8, ptr %i.l, i64 %index596
  %next.gep609.a = getelementptr i8, ptr %i.qh, i64 12
  %i.qi = getelementptr i8, ptr %i.l, i64 %index596
  %next.gep610.a = getelementptr i8, ptr %i.qi, i64 13
  %i.qj = getelementptr i8, ptr %i.l, i64 %index596
  %next.gep611.a = getelementptr i8, ptr %i.qj, i64 14
  %i.qk = getelementptr i8, ptr %i.l, i64 %index596
  %next.gep612.a = getelementptr i8, ptr %i.qk, i64 15
  %i.ql = getelementptr i8, ptr %i.l, i64 %index596
  %next.gep613.a = getelementptr i8, ptr %i.ql, i64 16
  %i.qm = getelementptr i8, ptr %i.l, i64 %index596
  %next.gep614.a = getelementptr i8, ptr %i.qm, i64 17
  %i.qn = getelementptr i8, ptr %i.l, i64 %index596
  %next.gep615.a = getelementptr i8, ptr %i.qn, i64 18
  %i.qo = getelementptr i8, ptr %i.l, i64 %index596
  %next.gep616.a = getelementptr i8, ptr %i.qo, i64 19
  %i.qp = getelementptr i8, ptr %i.l, i64 %index596
  %next.gep617.a = getelementptr i8, ptr %i.qp, i64 20
  %i.qq = getelementptr i8, ptr %i.l, i64 %index596
  %next.gep618.a = getelementptr i8, ptr %i.qq, i64 21
  %i.qr = getelementptr i8, ptr %i.l, i64 %index596
  %next.gep619.a = getelementptr i8, ptr %i.qr, i64 22
  %i.qs = getelementptr i8, ptr %i.l, i64 %index596
  %next.gep620.a = getelementptr i8, ptr %i.qs, i64 23
  %i.qt = getelementptr i8, ptr %i.l, i64 %index596
  %next.gep621.a = getelementptr i8, ptr %i.qt, i64 24
  %i.qu = getelementptr i8, ptr %i.l, i64 %index596
  %next.gep622.a = getelementptr i8, ptr %i.qu, i64 25
  %i.qv = getelementptr i8, ptr %i.l, i64 %index596
  %next.gep623.a = getelementptr i8, ptr %i.qv, i64 26
  %i.qw = getelementptr i8, ptr %i.l, i64 %index596
  %next.gep624.a = getelementptr i8, ptr %i.qw, i64 27
  %i.qx = getelementptr i8, ptr %i.l, i64 %index596
  %next.gep625 = getelementptr i8, ptr %i.qx, i64 28
  %i.qy = getelementptr i8, ptr %i.l, i64 %index596
  %next.gep626 = getelementptr i8, ptr %i.qy, i64 29
  %i.qz = getelementptr i8, ptr %i.l, i64 %index596
  %next.gep627 = getelementptr i8, ptr %i.qz, i64 30
  %i.ra = getelementptr i8, ptr %i.l, i64 %index596
  %next.gep628 = getelementptr i8, ptr %i.ra, i64 31
  %i.rb = getelementptr i8, ptr %next.gep597.a, i64 16
  %wide.load629 = load <16 x i8>, ptr %next.gep597.a, align 1, !tbaa !49
  %wide.load630 = load <16 x i8>, ptr %i.rb, align 1, !tbaa !49
  %i.rc = icmp eq <16 x i8> %wide.load629, splat (i8 59) ; 16 uses
  %i.rd = icmp eq <16 x i8> %wide.load630, splat (i8 59) ; 16 uses
  %i.re = extractelement <16 x i1> %i.rc, i64 0
  br i1 %i.re, label %pred.store.if631.a, label %pred.store.continue632.a

pred.store.if631.a:                               ; preds = %vector.body595
  store i8 32, ptr %next.gep597.a, align 1, !tbaa !49
  br label %pred.store.continue632.a

pred.store.continue632.a:                         ; preds = %pred.store.if631.a, %vector.body595
  %i.rf = extractelement <16 x i1> %i.rc, i64 1
  br i1 %i.rf, label %pred.store.if633.a, label %pred.store.continue634.a

pred.store.if633.a:                               ; preds = %pred.store.continue632.a
  store i8 32, ptr %next.gep598.a, align 1, !tbaa !49
  br label %pred.store.continue634.a

pred.store.continue634.a:                         ; preds = %pred.store.if633.a, %pred.store.continue632.a
  %i.rg = extractelement <16 x i1> %i.rc, i64 2
  br i1 %i.rg, label %pred.store.if635.a, label %pred.store.continue636.a

pred.store.if635.a:                               ; preds = %pred.store.continue634.a
  store i8 32, ptr %next.gep599.a, align 1, !tbaa !49
  br label %pred.store.continue636.a

pred.store.continue636.a:                         ; preds = %pred.store.if635.a, %pred.store.continue634.a
  %i.rh = extractelement <16 x i1> %i.rc, i64 3
  br i1 %i.rh, label %pred.store.if637.a, label %pred.store.continue638.a

pred.store.if637.a:                               ; preds = %pred.store.continue636.a
  store i8 32, ptr %next.gep600.a, align 1, !tbaa !49
  br label %pred.store.continue638.a

pred.store.continue638.a:                         ; preds = %pred.store.if637.a, %pred.store.continue636.a
  %i.ri = extractelement <16 x i1> %i.rc, i64 4
  br i1 %i.ri, label %pred.store.if639.a, label %pred.store.continue640.a

pred.store.if639.a:                               ; preds = %pred.store.continue638.a
  store i8 32, ptr %next.gep601.a, align 1, !tbaa !49
  br label %pred.store.continue640.a

pred.store.continue640.a:                         ; preds = %pred.store.if639.a, %pred.store.continue638.a
  %i.rj = extractelement <16 x i1> %i.rc, i64 5
  br i1 %i.rj, label %pred.store.if641.a, label %pred.store.continue642.a

pred.store.if641.a:                               ; preds = %pred.store.continue640.a
  store i8 32, ptr %next.gep602.a, align 1, !tbaa !49
  br label %pred.store.continue642.a

pred.store.continue642.a:                         ; preds = %pred.store.if641.a, %pred.store.continue640.a
  %i.rk = extractelement <16 x i1> %i.rc, i64 6
  br i1 %i.rk, label %pred.store.if643.a, label %pred.store.continue644.a

pred.store.if643.a:                               ; preds = %pred.store.continue642.a
  store i8 32, ptr %next.gep603.a, align 1, !tbaa !49
  br label %pred.store.continue644.a

pred.store.continue644.a:                         ; preds = %pred.store.if643.a, %pred.store.continue642.a
  %i.rl = extractelement <16 x i1> %i.rc, i64 7
  br i1 %i.rl, label %pred.store.if645.a, label %pred.store.continue646.a

pred.store.if645.a:                               ; preds = %pred.store.continue644.a
  store i8 32, ptr %next.gep604.a, align 1, !tbaa !49
  br label %pred.store.continue646.a

pred.store.continue646.a:                         ; preds = %pred.store.if645.a, %pred.store.continue644.a
  %i.rm = extractelement <16 x i1> %i.rc, i64 8
  br i1 %i.rm, label %pred.store.if647.a, label %pred.store.continue648.a

pred.store.if647.a:                               ; preds = %pred.store.continue646.a
  store i8 32, ptr %next.gep605.a, align 1, !tbaa !49
  br label %pred.store.continue648.a

pred.store.continue648.a:                         ; preds = %pred.store.if647.a, %pred.store.continue646.a
  %i.rn = extractelement <16 x i1> %i.rc, i64 9
  br i1 %i.rn, label %pred.store.if649.a, label %pred.store.continue650.a

pred.store.if649.a:                               ; preds = %pred.store.continue648.a
  store i8 32, ptr %next.gep606.a, align 1, !tbaa !49
  br label %pred.store.continue650.a

pred.store.continue650.a:                         ; preds = %pred.store.if649.a, %pred.store.continue648.a
  %i.ro = extractelement <16 x i1> %i.rc, i64 10
  br i1 %i.ro, label %pred.store.if651.a, label %pred.store.continue652.a

pred.store.if651.a:                               ; preds = %pred.store.continue650.a
  store i8 32, ptr %next.gep607.a, align 1, !tbaa !49
  br label %pred.store.continue652.a

pred.store.continue652.a:                         ; preds = %pred.store.if651.a, %pred.store.continue650.a
  %i.rp = extractelement <16 x i1> %i.rc, i64 11
  br i1 %i.rp, label %pred.store.if653.a, label %pred.store.continue654.a

pred.store.if653.a:                               ; preds = %pred.store.continue652.a
  store i8 32, ptr %next.gep608.a, align 1, !tbaa !49
  br label %pred.store.continue654.a

pred.store.continue654.a:                         ; preds = %pred.store.if653.a, %pred.store.continue652.a
  %i.rq = extractelement <16 x i1> %i.rc, i64 12
  br i1 %i.rq, label %pred.store.if655.a, label %pred.store.continue656.a

pred.store.if655.a:                               ; preds = %pred.store.continue654.a
  store i8 32, ptr %next.gep609.a, align 1, !tbaa !49
  br label %pred.store.continue656.a

pred.store.continue656.a:                         ; preds = %pred.store.if655.a, %pred.store.continue654.a
  %i.rr = extractelement <16 x i1> %i.rc, i64 13
  br i1 %i.rr, label %pred.store.if657.a, label %pred.store.continue658.a

pred.store.if657.a:                               ; preds = %pred.store.continue656.a
  store i8 32, ptr %next.gep610.a, align 1, !tbaa !49
  br label %pred.store.continue658.a

pred.store.continue658.a:                         ; preds = %pred.store.if657.a, %pred.store.continue656.a
  %i.rs = extractelement <16 x i1> %i.rc, i64 14
  br i1 %i.rs, label %pred.store.if659.a, label %pred.store.continue660.a

pred.store.if659.a:                               ; preds = %pred.store.continue658.a
  store i8 32, ptr %next.gep611.a, align 1, !tbaa !49
  br label %pred.store.continue660.a

pred.store.continue660.a:                         ; preds = %pred.store.if659.a, %pred.store.continue658.a
  %i.rt = extractelement <16 x i1> %i.rc, i64 15
  br i1 %i.rt, label %pred.store.if661.a, label %pred.store.continue662.a

pred.store.if661.a:                               ; preds = %pred.store.continue660.a
  store i8 32, ptr %next.gep612.a, align 1, !tbaa !49
  br label %pred.store.continue662.a

pred.store.continue662.a:                         ; preds = %pred.store.if661.a, %pred.store.continue660.a
  %i.ru = extractelement <16 x i1> %i.rd, i64 0
  br i1 %i.ru, label %pred.store.if663.a, label %pred.store.continue664.a

pred.store.if663.a:                               ; preds = %pred.store.continue662.a
  store i8 32, ptr %next.gep613.a, align 1, !tbaa !49
  br label %pred.store.continue664.a

pred.store.continue664.a:                         ; preds = %pred.store.if663.a, %pred.store.continue662.a
  %i.rv = extractelement <16 x i1> %i.rd, i64 1
  br i1 %i.rv, label %pred.store.if665.a, label %pred.store.continue666.a

pred.store.if665.a:                               ; preds = %pred.store.continue664.a
  store i8 32, ptr %next.gep614.a, align 1, !tbaa !49
  br label %pred.store.continue666.a

pred.store.continue666.a:                         ; preds = %pred.store.if665.a, %pred.store.continue664.a
  %i.rw = extractelement <16 x i1> %i.rd, i64 2
  br i1 %i.rw, label %pred.store.if667.a, label %pred.store.continue668.a

pred.store.if667.a:                               ; preds = %pred.store.continue666.a
  store i8 32, ptr %next.gep615.a, align 1, !tbaa !49
  br label %pred.store.continue668.a

pred.store.continue668.a:                         ; preds = %pred.store.if667.a, %pred.store.continue666.a
  %i.rx = extractelement <16 x i1> %i.rd, i64 3
  br i1 %i.rx, label %pred.store.if669.a, label %pred.store.continue670.a

pred.store.if669.a:                               ; preds = %pred.store.continue668.a
  store i8 32, ptr %next.gep616.a, align 1, !tbaa !49
  br label %pred.store.continue670.a

pred.store.continue670.a:                         ; preds = %pred.store.if669.a, %pred.store.continue668.a
  %i.ry = extractelement <16 x i1> %i.rd, i64 4
  br i1 %i.ry, label %pred.store.if671.a, label %pred.store.continue672.a

pred.store.if671.a:                               ; preds = %pred.store.continue670.a
  store i8 32, ptr %next.gep617.a, align 1, !tbaa !49
  br label %pred.store.continue672.a

pred.store.continue672.a:                         ; preds = %pred.store.if671.a, %pred.store.continue670.a
  %i.rz = extractelement <16 x i1> %i.rd, i64 5
  br i1 %i.rz, label %pred.store.if673.a, label %pred.store.continue674.a

pred.store.if673.a:                               ; preds = %pred.store.continue672.a
  store i8 32, ptr %next.gep618.a, align 1, !tbaa !49
  br label %pred.store.continue674.a

pred.store.continue674.a:                         ; preds = %pred.store.if673.a, %pred.store.continue672.a
  %i.sa = extractelement <16 x i1> %i.rd, i64 6
  br i1 %i.sa, label %pred.store.if675.a, label %pred.store.continue676.a

pred.store.if675.a:                               ; preds = %pred.store.continue674.a
  store i8 32, ptr %next.gep619.a, align 1, !tbaa !49
  br label %pred.store.continue676.a

pred.store.continue676.a:                         ; preds = %pred.store.if675.a, %pred.store.continue674.a
  %i.sb = extractelement <16 x i1> %i.rd, i64 7
  br i1 %i.sb, label %pred.store.if677.a, label %pred.store.continue678.a

pred.store.if677.a:                               ; preds = %pred.store.continue676.a
  store i8 32, ptr %next.gep620.a, align 1, !tbaa !49
  br label %pred.store.continue678.a

pred.store.continue678.a:                         ; preds = %pred.store.if677.a, %pred.store.continue676.a
  %i.sc = extractelement <16 x i1> %i.rd, i64 8
  br i1 %i.sc, label %pred.store.if679.a, label %pred.store.continue680.a

pred.store.if679.a:                               ; preds = %pred.store.continue678.a
  store i8 32, ptr %next.gep621.a, align 1, !tbaa !49
  br label %pred.store.continue680.a

pred.store.continue680.a:                         ; preds = %pred.store.if679.a, %pred.store.continue678.a
  %i.sd = extractelement <16 x i1> %i.rd, i64 9
  br i1 %i.sd, label %pred.store.if681.a, label %pred.store.continue682.a

pred.store.if681.a:                               ; preds = %pred.store.continue680.a
  store i8 32, ptr %next.gep622.a, align 1, !tbaa !49
  br label %pred.store.continue682.a

pred.store.continue682.a:                         ; preds = %pred.store.if681.a, %pred.store.continue680.a
  %i.se = extractelement <16 x i1> %i.rd, i64 10
  br i1 %i.se, label %pred.store.if683.a, label %pred.store.continue684.a

pred.store.if683.a:                               ; preds = %pred.store.continue682.a
  store i8 32, ptr %next.gep623.a, align 1, !tbaa !49
  br label %pred.store.continue684.a

pred.store.continue684.a:                         ; preds = %pred.store.if683.a, %pred.store.continue682.a
  %i.sf = extractelement <16 x i1> %i.rd, i64 11
  br i1 %i.sf, label %pred.store.if685.a, label %pred.store.continue686.a

pred.store.if685.a:                               ; preds = %pred.store.continue684.a
  store i8 32, ptr %next.gep624.a, align 1, !tbaa !49
  br label %pred.store.continue686.a

pred.store.continue686.a:                         ; preds = %pred.store.if685.a, %pred.store.continue684.a
  %i.sg = extractelement <16 x i1> %i.rd, i64 12
  br i1 %i.sg, label %pred.store.if687.a, label %pred.store.continue688.a

pred.store.if687.a:                               ; preds = %pred.store.continue686.a
  store i8 32, ptr %next.gep625, align 1, !tbaa !49
  br label %pred.store.continue688.a

pred.store.continue688.a:                         ; preds = %pred.store.if687.a, %pred.store.continue686.a
  %i.sh = extractelement <16 x i1> %i.rd, i64 13
  br i1 %i.sh, label %pred.store.if689.a, label %pred.store.continue690.a

pred.store.if689.a:                               ; preds = %pred.store.continue688.a
  store i8 32, ptr %next.gep626, align 1, !tbaa !49
  br label %pred.store.continue690.a

pred.store.continue690.a:                         ; preds = %pred.store.if689.a, %pred.store.continue688.a
  %i.si = extractelement <16 x i1> %i.rd, i64 14
  br i1 %i.si, label %pred.store.if691, label %pred.store.continue692

pred.store.if691:                                 ; preds = %pred.store.continue690.a
  store i8 32, ptr %next.gep627, align 1, !tbaa !49
  br label %pred.store.continue692

pred.store.continue692:                           ; preds = %pred.store.if691, %pred.store.continue690.a
  %i.sj = extractelement <16 x i1> %i.rd, i64 15
  br i1 %i.sj, label %pred.store.if693, label %pred.store.continue694

pred.store.if693:                                 ; preds = %pred.store.continue692
  store i8 32, ptr %next.gep628, align 1, !tbaa !49
  br label %pred.store.continue694

pred.store.continue694:                           ; preds = %pred.store.if693, %pred.store.continue692
  %index.next695 = add nuw i64 %index596, 32      ; 2 uses
  %i.sk = icmp eq i64 %index.next695, %n.vec594
  br i1 %i.sk, label %middle.block696, label %vector.body595, !llvm.loop !80

middle.block696:                                  ; preds = %pred.store.continue694
  %cmp.n697 = icmp eq i64 %i.cc, %n.vec594
  br i1 %cmp.n697, label %str_replace.exit112, label %vec.epilog.iter.check701

vec.epilog.iter.check701:                         ; preds = %middle.block696
  %min.epilog.iters.check702 = icmp eq i64 %n.mod.vf593, 0
  br i1 %min.epilog.iters.check702, label %.lr.ph.i109.preheader, label %vec.epilog.ph703, !prof !68

vec.epilog.ph703:                                 ; preds = %vector.main.loop.iter.check590, %vec.epilog.iter.check701
  %vec.epilog.resume.val698 = phi i64 [ %n.vec594, %vec.epilog.iter.check701 ], [ 0, %vector.main.loop.iter.check590 ]
  %n.vec705 = and i64 %i.cc, -8                   ; 3 uses
  %i.sl = getelementptr i8, ptr %i.l, i64 %n.vec705
  br label %vec.epilog.vector.body706

vec.epilog.vector.body706:                        ; preds = %pred.store.continue732, %vec.epilog.ph703
  %index707 = phi i64 [ %vec.epilog.resume.val698, %vec.epilog.ph703 ], [ %index.next733, %pred.store.continue732 ] ; 9 uses
  %next.gep708.a = getelementptr i8, ptr %i.l, i64 %index707 ; 2 uses
  %i.sm = getelementptr i8, ptr %i.l, i64 %index707
  %next.gep709.a = getelementptr i8, ptr %i.sm, i64 1
  %i.sn = getelementptr i8, ptr %i.l, i64 %index707
  %next.gep710.a = getelementptr i8, ptr %i.sn, i64 2
  %i.so = getelementptr i8, ptr %i.l, i64 %index707
  %next.gep711.a = getelementptr i8, ptr %i.so, i64 3
  %i.sp = getelementptr i8, ptr %i.l, i64 %index707
  %next.gep712 = getelementptr i8, ptr %i.sp, i64 4
  %i.sq = getelementptr i8, ptr %i.l, i64 %index707
  %next.gep713 = getelementptr i8, ptr %i.sq, i64 5
  %i.sr = getelementptr i8, ptr %i.l, i64 %index707
  %next.gep714 = getelementptr i8, ptr %i.sr, i64 6
  %i.ss = getelementptr i8, ptr %i.l, i64 %index707
  %next.gep715 = getelementptr i8, ptr %i.ss, i64 7
  %wide.load716 = load <8 x i8>, ptr %next.gep708.a, align 1, !tbaa !49
  %i.st = icmp eq <8 x i8> %wide.load716, splat (i8 59) ; 8 uses
  %i.su = extractelement <8 x i1> %i.st, i64 0
  br i1 %i.su, label %pred.store.if717.a, label %pred.store.continue718.a

pred.store.if717.a:                               ; preds = %vec.epilog.vector.body706
  store i8 32, ptr %next.gep708.a, align 1, !tbaa !49
  br label %pred.store.continue718.a

pred.store.continue718.a:                         ; preds = %pred.store.if717.a, %vec.epilog.vector.body706
  %i.sv = extractelement <8 x i1> %i.st, i64 1
  br i1 %i.sv, label %pred.store.if719.a, label %pred.store.continue720.a

pred.store.if719.a:                               ; preds = %pred.store.continue718.a
  store i8 32, ptr %next.gep709.a, align 1, !tbaa !49
  br label %pred.store.continue720.a

pred.store.continue720.a:                         ; preds = %pred.store.if719.a, %pred.store.continue718.a
  %i.sw = extractelement <8 x i1> %i.st, i64 2
  br i1 %i.sw, label %pred.store.if721.a, label %pred.store.continue722.a

pred.store.if721.a:                               ; preds = %pred.store.continue720.a
  store i8 32, ptr %next.gep710.a, align 1, !tbaa !49
  br label %pred.store.continue722.a

pred.store.continue722.a:                         ; preds = %pred.store.if721.a, %pred.store.continue720.a
  %i.sx = extractelement <8 x i1> %i.st, i64 3
  br i1 %i.sx, label %pred.store.if723.a, label %pred.store.continue724.a

pred.store.if723.a:                               ; preds = %pred.store.continue722.a
  store i8 32, ptr %next.gep711.a, align 1, !tbaa !49
  br label %pred.store.continue724.a

pred.store.continue724.a:                         ; preds = %pred.store.if723.a, %pred.store.continue722.a
  %i.sy = extractelement <8 x i1> %i.st, i64 4
  br i1 %i.sy, label %pred.store.if725.a, label %pred.store.continue726.a

pred.store.if725.a:                               ; preds = %pred.store.continue724.a
  store i8 32, ptr %next.gep712, align 1, !tbaa !49
  br label %pred.store.continue726.a

pred.store.continue726.a:                         ; preds = %pred.store.if725.a, %pred.store.continue724.a
  %i.sz = extractelement <8 x i1> %i.st, i64 5
  br i1 %i.sz, label %pred.store.if727.a, label %pred.store.continue728.a

pred.store.if727.a:                               ; preds = %pred.store.continue726.a
  store i8 32, ptr %next.gep713, align 1, !tbaa !49
  br label %pred.store.continue728.a

pred.store.continue728.a:                         ; preds = %pred.store.if727.a, %pred.store.continue726.a
  %i.ta = extractelement <8 x i1> %i.st, i64 6
  br i1 %i.ta, label %pred.store.if729, label %pred.store.continue730

pred.store.if729:                                 ; preds = %pred.store.continue728.a
  store i8 32, ptr %next.gep714, align 1, !tbaa !49
  br label %pred.store.continue730

pred.store.continue730:                           ; preds = %pred.store.if729, %pred.store.continue728.a
  %i.tb = extractelement <8 x i1> %i.st, i64 7
  br i1 %i.tb, label %pred.store.if731, label %pred.store.continue732

pred.store.if731:                                 ; preds = %pred.store.continue730
  store i8 32, ptr %next.gep715, align 1, !tbaa !49
  br label %pred.store.continue732

pred.store.continue732:                           ; preds = %pred.store.if731, %pred.store.continue730
  %index.next733 = add nuw i64 %index707, 8       ; 2 uses
  %i.tc = icmp eq i64 %index.next733, %n.vec705
  br i1 %i.tc, label %vec.epilog.middle.block734, label %vec.epilog.vector.body706, !llvm.loop !81

vec.epilog.middle.block734:                       ; preds = %pred.store.continue732
  %cmp.n735 = icmp eq i64 %i.cc, %n.vec705
  br i1 %cmp.n735, label %str_replace.exit112, label %.lr.ph.i109.preheader

.lr.ph.i109.preheader:                            ; preds = %iter.check699, %vec.epilog.iter.check701, %vec.epilog.middle.block734
  %.07.i110.ph = phi ptr [ %i.l, %iter.check699 ], [ %i.pv, %vec.epilog.iter.check701 ], [ %i.sl, %vec.epilog.middle.block734 ]
  br label %.lr.ph.i109

.lr.ph.i109:                                      ; preds = %.lr.ph.i109.preheader, %bb.aj
  %.07.i110 = phi ptr [ %i.tf, %bb.aj ], [ %.07.i110.ph, %.lr.ph.i109.preheader ] ; 3 uses
  %i.td = load i8, ptr %.07.i110, align 1, !tbaa !49
  %i.te = icmp eq i8 %i.td, 59
  br i1 %i.te, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %.lr.ph.i109
  store i8 32, ptr %.07.i110, align 1, !tbaa !49
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %.lr.ph.i109
  %i.tf = getelementptr inbounds nuw i8, ptr %.07.i110, i64 1 ; 2 uses
  %.not.i111 = icmp ugt ptr %i.tf, %i.az
  br i1 %.not.i111, label %str_replace.exit112, label %.lr.ph.i109, !llvm.loop !82

str_replace.exit112:                              ; preds = %bb.aj, %middle.block696, %vec.epilog.middle.block734, %bb.z
  call fastcc void @str_strip(ptr noundef %i.a, ptr noundef %i.b, ptr noundef nonnull @lt, i64 noundef 3)
  call fastcc void @str_strip(ptr noundef %i.a, ptr noundef %i.b, ptr noundef nonnull @gt, i64 noundef 3)
  %i.tg = load ptr, ptr %i.a, align 8, !tbaa !29  ; 10 uses
  %i.th = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.tg, i32 noundef 58) #15 ; 2 uses
  %.not4410 = icmp eq ptr %i.th, null
  br i1 %.not4410, label %.critedge50, label %.lr.ph12

bb.ak:                                            ; preds = %.lr.ph12
  br label %.lr.ph12, !llvm.loop !83

.lr.ph12:                                         ; preds = %str_replace.exit112, %bb.ak
  %.011 = phi ptr [ %i.ti, %bb.ak ], [ %i.th, %str_replace.exit112 ]
  %i.ti = getelementptr inbounds nuw i8, ptr %.011, i64 1 ; 3 uses
  %i.tj = load i8, ptr %i.ti, align 1, !tbaa !49
  %i.tk = icmp eq i8 %i.tj, 47
  br i1 %i.tk, label %bb.ak, label %..critedge50_crit_edge, !llvm.loop !83

..critedge50_crit_edge:                           ; preds = %.lr.ph12
  br label %.critedge50, !llvm.loop !83

.critedge50:                                      ; preds = %..critedge50_crit_edge, %str_replace.exit112
  %.1 = phi ptr [ %i.tg, %str_replace.exit112 ], [ %i.ti, %..critedge50_crit_edge ] ; 3 uses
  %i.tl = tail call i64 @strcspn(ptr noundef nonnull %.1, ptr noundef nonnull @.str.25) #15 ; 5 uses
  %.not7.i113 = icmp eq i64 %i.tl, 0
  br i1 %.not7.i113, label %str_make_lowercase.exit, label %.lr.ph.i114

.lr.ph.i114:                                      ; preds = %.critedge50
  %i.tm = tail call ptr @__ctype_tolower_loc() #16 ; 5 uses
  %xtraiter = and i64 %i.tl, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i114, %.prol.preheader
  %.09.i.prol = phi ptr [ %i.tt, %.prol.preheader ], [ %.1, %.lr.ph.i114 ] ; 3 uses
  %.068.i.prol = phi i64 [ %i.tu, %.prol.preheader ], [ %i.tl, %.lr.ph.i114 ]
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph.i114 ]
  %i.tn = load ptr, ptr %i.tm, align 8, !tbaa !84
  %i.to = load i8, ptr %.09.i.prol, align 1, !tbaa !49
  %i.tp = sext i8 %i.to to i64
  %i.tq = getelementptr inbounds [4 x i8], ptr %i.tn, i64 %i.tp
  %i.tr = load i32, ptr %i.tq, align 4, !tbaa !4
  %i.ts = trunc i32 %i.tr to i8
  store i8 %i.ts, ptr %.09.i.prol, align 1, !tbaa !49
  %i.tt = getelementptr inbounds nuw i8, ptr %.09.i.prol, i64 1 ; 2 uses
  %i.tu = add i64 %.068.i.prol, -1                ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !86

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i114
  %.09.i.unr = phi ptr [ %.1, %.lr.ph.i114 ], [ %i.tt, %.prol.preheader ]
  %.068.i.unr = phi i64 [ %i.tl, %.lr.ph.i114 ], [ %i.tu, %.prol.preheader ]
  %i.tv = icmp ult i64 %i.tl, 4
  br i1 %i.tv, label %str_make_lowercase.exit, label %.lr.ph.i114.new

.lr.ph.i114.new:                                  ; preds = %.prol.loopexit, %.lr.ph.i114.new
  %.09.i = phi ptr [ %i.ux, %.lr.ph.i114.new ], [ %.09.i.unr, %.prol.loopexit ] ; 6 uses
  %.068.i = phi i64 [ %i.uy, %.lr.ph.i114.new ], [ %.068.i.unr, %.prol.loopexit ]
  %i.tw = load ptr, ptr %i.tm, align 8, !tbaa !84
  %i.tx = load i8, ptr %.09.i, align 1, !tbaa !49
  %i.ty = sext i8 %i.tx to i64
  %i.tz = getelementptr inbounds [4 x i8], ptr %i.tw, i64 %i.ty
  %i.ua = load i32, ptr %i.tz, align 4, !tbaa !4
  %i.ub = trunc i32 %i.ua to i8
  store i8 %i.ub, ptr %.09.i, align 1, !tbaa !49
  %i.uc = getelementptr inbounds nuw i8, ptr %.09.i, i64 1 ; 2 uses
  %i.ud = load ptr, ptr %i.tm, align 8, !tbaa !84
  %i.ue = load i8, ptr %i.uc, align 1, !tbaa !49
  %i.uf = sext i8 %i.ue to i64
  %i.ug = getelementptr inbounds [4 x i8], ptr %i.ud, i64 %i.uf
  %i.uh = load i32, ptr %i.ug, align 4, !tbaa !4
  %i.ui = trunc i32 %i.uh to i8
  store i8 %i.ui, ptr %i.uc, align 1, !tbaa !49
  %i.uj = getelementptr inbounds nuw i8, ptr %.09.i, i64 2 ; 2 uses
  %i.uk = load ptr, ptr %i.tm, align 8, !tbaa !84
  %i.ul = load i8, ptr %i.uj, align 1, !tbaa !49
  %i.um = sext i8 %i.ul to i64
  %i.un = getelementptr inbounds [4 x i8], ptr %i.uk, i64 %i.um
  %i.uo = load i32, ptr %i.un, align 4, !tbaa !4
  %i.up = trunc i32 %i.uo to i8
  store i8 %i.up, ptr %i.uj, align 1, !tbaa !49
  %i.uq = getelementptr inbounds nuw i8, ptr %.09.i, i64 3 ; 2 uses
  %i.ur = load ptr, ptr %i.tm, align 8, !tbaa !84
  %i.us = load i8, ptr %i.uq, align 1, !tbaa !49
  %i.ut = sext i8 %i.us to i64
  %i.uu = getelementptr inbounds [4 x i8], ptr %i.ur, i64 %i.ut
  %i.uv = load i32, ptr %i.uu, align 4, !tbaa !4
  %i.uw = trunc i32 %i.uv to i8
  store i8 %i.uw, ptr %i.uq, align 1, !tbaa !49
  %i.ux = getelementptr inbounds nuw i8, ptr %.09.i, i64 4
  %i.uy = add i64 %.068.i, -4                     ; 2 uses
  %.not.i115.3 = icmp eq i64 %i.uy, 0
  br i1 %.not.i115.3, label %str_make_lowercase.exit, label %.lr.ph.i114.new, !llvm.loop !88

str_make_lowercase.exit:                          ; preds = %.prol.loopexit, %.lr.ph.i114.new, %.critedge50
  %i.uz = load ptr, ptr %i.b, align 8, !tbaa !29  ; 6 uses
  %.not.i116 = icmp ugt ptr %i.uz, %i.tg
  br i1 %.not.i116, label %bb.al, label %str_hex_to_char.exit

bb.al:                                            ; preds = %str_make_lowercase.exit
  %i.va = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.tg) #15
  %i.vb = icmp ult i64 %i.va, 3
  br i1 %i.vb, label %str_hex_to_char.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.vc = load i8, ptr %i.tg, align 1, !tbaa !49
  %i.vd = icmp eq i8 %i.vc, 37
  br i1 %i.vd, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.ve = getelementptr inbounds nuw i8, ptr %i.tg, i64 1
  %i.vf = load i8, ptr %i.ve, align 1, !tbaa !49  ; 2 uses
  %i.vg = icmp eq i8 %i.vf, 48
  %i.vh = getelementptr inbounds nuw i8, ptr %i.tg, i64 2 ; 3 uses
  %i.vi = load i8, ptr %i.vh, align 1, !tbaa !49  ; 2 uses
  %i.vj = icmp eq i8 %i.vi, 48
  %or.cond.i.i = select i1 %i.vg, i1 %i.vj, i1 false
  br i1 %or.cond.i.i, label %hex2int.exit.i, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.an
  %i.vk = zext i8 %i.vf to i64
  %i.vl = getelementptr inbounds nuw [2 x i8], ptr @hextable, i64 %i.vk
  %i.vm = load i16, ptr %i.vl, align 2, !tbaa !62
  %i.vn = trunc i16 %i.vm to i8
  %i.vo = shl i8 %i.vn, 4
  %i.vp = zext i8 %i.vi to i64
  %i.vq = getelementptr inbounds nuw [2 x i8], ptr @hextable, i64 %i.vp
  %i.vr = load i16, ptr %i.vq, align 2, !tbaa !62
  %i.vs = trunc i16 %i.vr to i8
  %i.vt = or i8 %i.vo, %i.vs
  br label %hex2int.exit.i

hex2int.exit.i:                                   ; preds = %._crit_edge.i.i, %bb.an
  %i.vu = phi i8 [ %i.vt, %._crit_edge.i.i ], [ 1, %bb.an ]
  store i8 %i.vu, ptr %i.vh, align 1, !tbaa !49
  br label %bb.ao

bb.ao:                                            ; preds = %hex2int.exit.i, %bb.am
  %.0.i = phi ptr [ %i.vh, %hex2int.exit.i ], [ %i.tg, %bb.am ] ; 4 uses
  store ptr %.0.i, ptr %i.a, align 8, !tbaa !29
  %i.vv = getelementptr inbounds nuw i8, ptr %.0.i, i64 4 ; 2 uses
  %i.vw = icmp ult ptr %i.vv, %i.uz
  br i1 %i.vw, label %.preheader.i117, label %._crit_edge.i

.preheader.i117:                                  ; preds = %bb.ao, %.critedge.i
  %i.vx = phi ptr [ %i.wv, %.critedge.i ], [ %i.vv, %bb.ao ] ; 3 uses
  %.0.pn38.i = phi ptr [ %.139.i, %.critedge.i ], [ %.0.i, %bb.ao ] ; 4 uses
  %.02737.i = phi ptr [ %.128.lcssa.i, %.critedge.i ], [ %i.uz, %bb.ao ]
  %.139.i = getelementptr inbounds nuw i8, ptr %.0.pn38.i, i64 1 ; 3 uses
  %i.vy = getelementptr inbounds nuw i8, ptr %.0.pn38.i, i64 2 ; 2 uses
  %i.vz = getelementptr inbounds nuw i8, ptr %.0.pn38.i, i64 3
  %i.wa = ptrtoint ptr %i.vx to i64
  %.1.promoted.i = load i8, ptr %.139.i, align 1, !tbaa !49
  %invariant.op = sub i64 1, %i.wa
  br label %bb.ap

bb.ap:                                            ; preds = %hex2int.exit34.i, %.preheader.i117
  %i.wb = phi i8 [ %.1.promoted.i, %.preheader.i117 ], [ %i.wr, %hex2int.exit34.i ]
  %.12835.i = phi ptr [ %.02737.i, %.preheader.i117 ], [ %i.wt, %hex2int.exit34.i ] ; 3 uses
  %i.wc = icmp eq i8 %i.wb, 37
  br i1 %i.wc, label %bb.aq, label %.critedge.i

bb.aq:                                            ; preds = %bb.ap
  %i.wd = load i8, ptr %i.vy, align 1, !tbaa !49  ; 2 uses
  %i.we = icmp eq i8 %i.wd, 48
  %i.wf = load i8, ptr %i.vz, align 1, !tbaa !49  ; 2 uses
  %i.wg = icmp eq i8 %i.wf, 48
  %or.cond.i32.i = select i1 %i.we, i1 %i.wg, i1 false
  br i1 %or.cond.i32.i, label %hex2int.exit34.i, label %._crit_edge.i33.i

._crit_edge.i33.i:                                ; preds = %bb.aq
  %i.wh = zext i8 %i.wd to i64
  %i.wi = getelementptr inbounds nuw [2 x i8], ptr @hextable, i64 %i.wh
  %i.wj = load i16, ptr %i.wi, align 2, !tbaa !62
  %i.wk = trunc i16 %i.wj to i8
  %i.wl = shl i8 %i.wk, 4
  %i.wm = zext i8 %i.wf to i64
  %i.wn = getelementptr inbounds nuw [2 x i8], ptr @hextable, i64 %i.wm
end_hunk_1
