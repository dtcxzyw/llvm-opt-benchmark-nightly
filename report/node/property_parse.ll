inline.NumInlined: 39
inline.NumDeleted: 15
begin_hunk_0_@ossl_parse_property:bb.a
bb.i:                                             ; preds = %bb.f, %bb.h
  %i.ad = tail call i32 @OPENSSL_sk_push(ptr noundef nonnull %i.c, ptr noundef nonnull %i.l) #8
  %.not35 = icmp eq i32 %i.ad, 0
  br i1 %.not35, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !12  ; 4 uses
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !9
  %i.ag = icmp eq i8 %i.af, 44
  br i1 %i.ag, label %.preheader.i40, label %._crit_edge

.preheader.i40:                                   ; preds = %bb.j, %.preheader.i40
  %.pn.i41 = phi ptr [ %.0.i.i42, %.preheader.i40 ], [ %i.ae, %bb.j ]
  %.0.i.i42 = getelementptr inbounds nuw i8, ptr %.pn.i41, i64 1 ; 4 uses
  %i.ah = load i8, ptr %.0.i.i42, align 1, !tbaa !9
  %i.ai = sext i8 %i.ah to i32
  %i.aj = tail call i32 @ossl_ctype_check(i32 noundef %i.ai, i32 noundef 8) #8
  %.not.i.i43 = icmp eq i32 %i.aj, 0
  br i1 %.not.i.i43, label %.lr.ph, label %.preheader.i40, !llvm.loop !10

.lr.ph:                                           ; preds = %.preheader.i40
  store ptr %.0.i.i42, ptr %i.a, align 8, !tbaa !12
  %i.ak = tail call noalias ptr @CRYPTO_malloc(i64 noundef 24, ptr noundef nonnull @.str, i32 noundef 361) #8 ; 2 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %.thread, label %.lr.ph86

._crit_edge:                                      ; preds = %bb.j
  %.pre = load i8, ptr %i.ae, align 1, !tbaa !9
  %i.am = icmp eq i8 %.pre, 0
  br i1 %i.am, label %._crit_edge.thread, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 392, ptr noundef nonnull @__func__.ossl_parse_property) #8
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 55, i32 noundef 110, ptr noundef nonnull @.str.2, ptr noundef nonnull %i.ae) #8
  br label %.thread

._crit_edge.thread:                               ; preds = %skip_space.exit, %._crit_edge
  %i.an = tail call fastcc ptr @stack_to_property_list(ptr noundef %0, ptr noundef %i.c)
  br label %.thread

.thread:                                          ; preds = %.lr.ph, %.lr.ph86, %bb.i, %.lr.ph.preheader, %bb.g, %bb.d, %._crit_edge.thread, %bb.k
  %.027 = phi ptr [ %i.an, %._crit_edge.thread ], [ null, %bb.k ], [ null, %bb.g ], [ null, %bb.d ], [ null, %.lr.ph.preheader ], [ null, %bb.i ], [ null, %.lr.ph86 ], [ null, %.lr.ph ]
  %.2 = phi ptr [ null, %._crit_edge.thread ], [ null, %bb.k ], [ %i.l, %bb.g ], [ %i.l, %bb.d ], [ null, %.lr.ph.preheader ], [ null, %.lr.ph ], [ %i.l, %.lr.ph86 ], [ %i.l, %bb.i ]
  tail call void @CRYPTO_free(ptr noundef %.2, ptr noundef nonnull @.str, i32 noundef 399) #8
  tail call void @OPENSSL_sk_pop_free(ptr noundef nonnull %i.c, ptr noundef nonnull @pd_free) #8
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %bb.b, %.thread
  %.0 = phi ptr [ %.027, %.thread ], [ null, %bb.a ], [ null, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 -1, 2) i32 @pd_compare(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !19
  %i.b = load ptr, ptr %1, align 8, !tbaa !19
  %i.c = load i32, ptr %i.a, align 8, !tbaa !17
  %i.d = load i32, ptr %i.b, align 8, !tbaa !17
  %.0 = tail call i32 @llvm.scmp.i32.i32(i32 %i.c, i32 %i.d)
  ret i32 %.0
}

declare noalias ptr @CRYPTO_malloc(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @parse_name(ptr noundef %0, ptr nofree noundef nonnull captures(none) %1, ptr nofree noundef nonnull writeonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [100 x i8], align 16              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.b = load ptr, ptr %1, align 8, !tbaa !12     ; 2 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !9
  %i.d = sext i8 %i.c to i32
  %i.e = tail call i32 @ossl_ctype_check(i32 noundef %i.d, i32 noundef 3) #8
  %.not36 = icmp eq i32 %i.e, 0
  br i1 %.not36, label %._crit_edge, label %.critedge.preheader

.critedge.preheader:                              ; preds = %bb.a, %bb.h
  %i.f = phi i32 [ 1, %bb.h ], [ 0, %bb.a ]
  %.02239 = phi ptr [ %i.x, %bb.h ], [ %i.b, %bb.a ]
  %.02338 = phi i64 [ %.3, %bb.h ], [ 0, %bb.a ]
  %.02537 = phi i32 [ %.328, %bb.h ], [ 0, %bb.a ]
  br label %.critedge

._crit_edge:                                      ; preds = %bb.h, %bb.a
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 67, ptr noundef nonnull @__func__.parse_name) #8
  %i.g = load ptr, ptr %1, align 8, !tbaa !12
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 55, i32 noundef 103, ptr noundef nonnull @.str.2, ptr noundef %i.g) #8
  br label %bb.k

.critedge:                                        ; preds = %.critedge.backedge, %.critedge.preheader
  %.126 = phi i32 [ %.02537, %.critedge.preheader ], [ %.227, %.critedge.backedge ]
  %.124 = phi i64 [ %.02338, %.critedge.preheader ], [ %.2, %.critedge.backedge ] ; 4 uses
  %.1 = phi ptr [ %.02239, %.critedge.preheader ], [ %i.o, %.critedge.backedge ] ; 3 uses
  %i.h = icmp ult i64 %.124, 99
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.critedge
  %i.i = load i8, ptr %.1, align 1, !tbaa !9
  %i.j = sext i8 %i.i to i32
  %i.k = tail call i32 @ossl_tolower(i32 noundef %i.j) #8
  %i.l = trunc i32 %i.k to i8
  %i.m = add nuw nsw i64 %.124, 1
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 %.124
  store i8 %i.l, ptr %i.n, align 1, !tbaa !9
  br label %bb.c

bb.c:                                             ; preds = %.critedge, %bb.b
  %.227 = phi i32 [ %.126, %bb.b ], [ 1, %.critedge ] ; 3 uses
  %.2 = phi i64 [ %i.m, %bb.b ], [ %.124, %.critedge ] ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.1, i64 1 ; 4 uses
  %i.p = load i8, ptr %i.o, align 1, !tbaa !9     ; 2 uses
  %i.q = icmp eq i8 %i.p, 95
  br i1 %i.q, label %.critedge.backedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = sext i8 %i.p to i32
  %i.s = tail call i32 @ossl_ctype_check(i32 noundef %i.r, i32 noundef 7) #8
  %.not31 = icmp eq i32 %i.s, 0
  br i1 %.not31, label %bb.e, label %.critedge.backedge

.critedge.backedge:                               ; preds = %bb.d, %bb.c
  br label %.critedge, !llvm.loop !21

bb.e:                                             ; preds = %bb.d
  %i.t = load i8, ptr %i.o, align 1, !tbaa !9
  %.not32 = icmp eq i8 %i.t, 46
  br i1 %.not32, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.u = icmp ult i64 %.2, 99
  br i1 %i.u, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.v = add nuw nsw i64 %.2, 1
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 %.2
  store i8 46, ptr %i.w, align 1, !tbaa !9
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %.328 = phi i32 [ %.227, %bb.g ], [ 1, %bb.f ]
  %.3 = phi i64 [ %i.v, %bb.g ], [ %.2, %bb.f ]
  %i.x = getelementptr inbounds nuw i8, ptr %.1, i64 2 ; 2 uses
  %i.y = load i8, ptr %i.x, align 1, !tbaa !9
  %i.z = sext i8 %i.y to i32
  %i.aa = tail call i32 @ossl_ctype_check(i32 noundef %i.z, i32 noundef 3) #8
  %.not = icmp eq i32 %i.aa, 0
  br i1 %.not, label %._crit_edge, label %.critedge.preheader

bb.i:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 %.2
  store i8 0, ptr %i.ab, align 1, !tbaa !9
  %.not33 = icmp eq i32 %.227, 0
  br i1 %.not33, label %.preheader, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 88, ptr noundef nonnull @__func__.parse_name) #8
  %i.ac = load ptr, ptr %1, align 8, !tbaa !12
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 55, i32 noundef 100, ptr noundef nonnull @.str.2, ptr noundef %i.ac) #8
  br label %bb.k

.preheader:                                       ; preds = %bb.i, %.preheader
  %.0.i = phi ptr [ %i.ag, %.preheader ], [ %i.o, %bb.i ] ; 3 uses
  %i.ad = load i8, ptr %.0.i, align 1, !tbaa !9
  %i.ae = sext i8 %i.ad to i32
  %i.af = tail call i32 @ossl_ctype_check(i32 noundef %i.ae, i32 noundef 8) #8
  %.not.i = icmp eq i32 %i.af, 0
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.i, i64 1
  br i1 %.not.i, label %skip_space.exit, label %.preheader, !llvm.loop !10

skip_space.exit:                                  ; preds = %.preheader
  store ptr %.0.i, ptr %1, align 8, !tbaa !12
  %i.ah = call i32 @ossl_property_name(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef %i.f) #8
  store i32 %i.ah, ptr %2, align 4, !tbaa !5
  br label %bb.k

bb.k:                                             ; preds = %skip_space.exit, %bb.j, %._crit_edge
  %.029 = phi i32 [ 0, %bb.j ], [ 1, %skip_space.exit ], [ 0, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %.029
}

declare void @ERR_new() local_unnamed_addr #3

declare void @ERR_set_debug(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @ERR_set_error(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @parse_value(ptr noundef %0, ptr nofree noundef nonnull captures(none) %1, ptr nofree noundef nonnull captures(none) %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [1000 x i8], align 16             ; 5 uses
  %i.b = alloca [1000 x i8], align 16             ; 6 uses
  %i.c = alloca ptr, align 8                      ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  %i.d = load ptr, ptr %1, align 8, !tbaa !12     ; 9 uses
  store ptr %i.d, ptr %i.c, align 8, !tbaa !12
  %i.e = load i8, ptr %i.d, align 1, !tbaa !9     ; 5 uses
  switch i8 %i.e, label %bb.al [
    i8 34, label %bb.b
    i8 39, label %bb.b
    i8 43, label %bb.k
    i8 45, label %bb.l
    i8 48, label %bb.m
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 1 ; 6 uses
  store ptr %i.f, ptr %i.c, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.g = load i8, ptr %i.f, align 1, !tbaa !9     ; 3 uses
  %.not28.i = icmp eq i8 %i.g, 0                  ; 2 uses
  %.not2629.i = icmp eq i8 %i.g, %i.e
  %or.cond30.i = or i1 %.not28.i, %.not2629.i
  br i1 %or.cond30.i, label %.critedge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.d
  %i.h = phi i8 [ %i.m, %bb.d ], [ %i.g, %bb.b ]
  %.033.i = phi i32 [ %.1.i, %bb.d ], [ 0, %bb.b ]
  %.02132.i = phi i64 [ %.122.i, %bb.d ], [ 0, %bb.b ] ; 4 uses
  %.02331.i = phi ptr [ %i.l, %bb.d ], [ %i.f, %bb.b ]
  %i.i = icmp ult i64 %.02132.i, 999
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.i
  %i.j = add nuw nsw i64 %.02132.i, 1
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 %.02132.i
  store i8 %i.h, ptr %i.k, align 1, !tbaa !9
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.i
  %.122.i = phi i64 [ %i.j, %bb.c ], [ %.02132.i, %.lr.ph.i ] ; 2 uses
  %.1.i = phi i32 [ %.033.i, %bb.c ], [ 1, %.lr.ph.i ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.02331.i, i64 1 ; 4 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !9     ; 3 uses
  %.not.i = icmp eq i8 %i.m, 0                    ; 2 uses
  %.not26.i = icmp eq i8 %i.m, %i.e
  %or.cond.i = or i1 %.not.i, %.not26.i
  br i1 %or.cond.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !22

.critedge.i:                                      ; preds = %bb.d
  br i1 %.not.i, label %bb.e, label %bb.f

.critedge.thread.i:                               ; preds = %bb.b
  br i1 %.not28.i, label %bb.e, label %.thread.i

.thread.i:                                        ; preds = %.critedge.thread.i
  store i8 0, ptr %i.b, align 16, !tbaa !9
  br label %bb.h

bb.e:                                             ; preds = %.critedge.thread.i, %.critedge.i
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 209, ptr noundef nonnull @__func__.parse_string) #8
  %i.n = sext i8 %i.e to i32
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 55, i32 noundef 106, ptr noundef nonnull @.str.12, i32 noundef %i.n, ptr noundef nonnull %i.f) #8
  br label %parse_string.exit

bb.f:                                             ; preds = %.critedge.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 %.122.i
  store i8 0, ptr %i.o, align 1, !tbaa !9
  %.not27.i = icmp eq i32 %.1.i, 0
  br i1 %.not27.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 215, ptr noundef nonnull @__func__.parse_string) #8
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 55, i32 noundef 109, ptr noundef nonnull @.str.2, ptr noundef nonnull %i.f) #8
  br label %bb.i

bb.h:                                             ; preds = %bb.f, %.thread.i
  %.023.lcssa4454.i = phi ptr [ %i.f, %.thread.i ], [ %i.l, %bb.f ]
  %i.p = call i32 @ossl_property_value(ptr noundef %0, ptr noundef nonnull %i.b, i32 noundef %3) #8
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 %i.p, ptr %i.q, align 8, !tbaa !9
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.023.lcssa4453.i = phi ptr [ %.023.lcssa4454.i, %bb.h ], [ %i.l, %bb.g ]
  %.0.lcssa4651.i = phi i32 [ 1, %bb.h ], [ 0, %bb.g ]
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %bb.i
  %.023.pn.i = phi ptr [ %.023.lcssa4453.i, %bb.i ], [ %.0.i.i, %bb.j ]
  %.0.i.i = getelementptr inbounds nuw i8, ptr %.023.pn.i, i64 1 ; 3 uses
  %i.r = load i8, ptr %.0.i.i, align 1, !tbaa !9
  %i.s = sext i8 %i.r to i32
  %i.t = call i32 @ossl_ctype_check(i32 noundef %i.s, i32 noundef 8) #8
  %.not.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.i, label %skip_space.exit.i, label %bb.j, !llvm.loop !10

skip_space.exit.i:                                ; preds = %bb.j
  store ptr %.0.i.i, ptr %i.c, align 8, !tbaa !12
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 0, ptr %i.u, align 4, !tbaa !18
  br label %parse_string.exit

parse_string.exit:                                ; preds = %bb.e, %skip_space.exit.i
  %.024.i = phi i32 [ 0, %bb.e ], [ %.0.lcssa4651.i, %skip_space.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  br label %parse_hex.exit

bb.k:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store ptr %i.v, ptr %i.c, align 8, !tbaa !12
  %i.w = call fastcc i32 @parse_number(ptr noundef %i.c, ptr noundef %2)
  br label %parse_hex.exit

bb.l:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store ptr %i.x, ptr %i.c, align 8, !tbaa !12
  %i.y = call fastcc i32 @parse_number(ptr noundef %i.c, ptr noundef %2)
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !9
  %i.ab = sub nsw i64 0, %i.aa
  store i64 %i.ab, ptr %i.z, align 8, !tbaa !9
  br label %parse_hex.exit

bb.m:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 1 ; 7 uses
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !9   ; 2 uses
  %i.ae = icmp eq i8 %i.ad, 120
  br i1 %i.ae, label %bb.n, label %bb.aa

bb.n:                                             ; preds = %bb.m
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 2 ; 5 uses
  store ptr %i.af, ptr %i.c, align 8, !tbaa !12
  br label %bb.o

bb.o:                                             ; preds = %bb.v, %bb.n
  %.023.i = phi ptr [ %i.af, %bb.n ], [ %i.ax, %bb.v ] ; 4 uses
  %.022.i = phi i64 [ 0, %bb.n ], [ %i.aw, %bb.v ] ; 2 uses
  %i.ag = load i8, ptr %.023.i, align 1, !tbaa !9
  %i.ah = sext i8 %i.ag to i32
  %i.ai = tail call i32 @ossl_isdigit(i32 noundef %i.ah) #8
  %.not.i24 = icmp eq i32 %i.ai, 0
  %i.aj = load i8, ptr %.023.i, align 1, !tbaa !9
  %i.ak = sext i8 %i.aj to i32                    ; 2 uses
  br i1 %.not.i24, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.al = add nsw i32 %i.ak, -48
  br label %bb.t

bb.q:                                             ; preds = %bb.o
  %i.am = tail call i32 @ossl_ctype_check(i32 noundef %i.ak, i32 noundef 16) #8
  %.not26.i31 = icmp eq i32 %i.am, 0
  br i1 %.not26.i31, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.an = load i8, ptr %.023.i, align 1, !tbaa !9
  %i.ao = sext i8 %i.an to i32
  %i.ap = tail call i32 @ossl_tolower(i32 noundef %i.ao) #8
  %i.aq = add nsw i32 %i.ap, -87
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 138, ptr noundef nonnull @__func__.parse_hex) #8
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 55, i32 noundef 102, ptr noundef nonnull @.str.14, ptr noundef nonnull %i.af) #8
  br label %parse_hex.exit.thread

bb.t:                                             ; preds = %bb.r, %bb.p
  %.0.i = phi i32 [ %i.al, %bb.p ], [ %i.aq, %bb.r ]
  %i.ar = sext i32 %.0.i to i64                   ; 2 uses
  %i.as = sub nsw i64 9223372036854775807, %i.ar
  %i.at = lshr i64 %i.as, 4
  %i.au = icmp sgt i64 %.022.i, %i.at
  br i1 %i.au, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 144, ptr noundef nonnull @__func__.parse_hex) #8
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 55, i32 noundef 108, ptr noundef nonnull @.str.13, ptr noundef nonnull %i.af) #8
  br label %parse_hex.exit.thread

bb.v:                                             ; preds = %bb.t
  %i.av = shl i64 %.022.i, 4
  %i.aw = add nsw i64 %i.av, %i.ar                ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.023.i, i64 1 ; 5 uses
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !9
  %i.az = sext i8 %i.ay to i32
  %i.ba = tail call i32 @ossl_ctype_check(i32 noundef %i.az, i32 noundef 16) #8
  %.not27.i25 = icmp eq i32 %i.ba, 0
  br i1 %.not27.i25, label %bb.w, label %bb.o, !llvm.loop !23

bb.w:                                             ; preds = %bb.v
  %i.bb = load i8, ptr %i.ax, align 1, !tbaa !9
  %i.bc = sext i8 %i.bb to i32
  %i.bd = tail call i32 @ossl_ctype_check(i32 noundef %i.bc, i32 noundef 8) #8
  %.not28.i26 = icmp eq i32 %i.bd, 0
  br i1 %.not28.i26, label %bb.x, label %.preheader

.preheader:                                       ; preds = %bb.x, %bb.x, %bb.w
  br label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.be = load i8, ptr %i.ax, align 1, !tbaa !9
  switch i8 %i.be, label %bb.y [
    i8 0, label %.preheader
    i8 44, label %.preheader
  ]

bb.y:                                             ; preds = %bb.x
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 153, ptr noundef nonnull @__func__.parse_hex) #8
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 55, i32 noundef 102, ptr noundef nonnull @.str.2, ptr noundef nonnull %i.af) #8
  br label %parse_hex.exit.thread

bb.z:                                             ; preds = %.preheader, %bb.z
  %.0.i.i27 = phi ptr [ %i.bi, %bb.z ], [ %i.ax, %.preheader ] ; 3 uses
  %i.bf = load i8, ptr %.0.i.i27, align 1, !tbaa !9
  %i.bg = sext i8 %i.bf to i32
  %i.bh = tail call i32 @ossl_ctype_check(i32 noundef %i.bg, i32 noundef 8) #8
  %.not.i.i28 = icmp eq i32 %i.bh, 0
  %i.bi = getelementptr inbounds nuw i8, ptr %.0.i.i27, i64 1
  br i1 %.not.i.i28, label %skip_space.exit.i29, label %bb.z, !llvm.loop !10

skip_space.exit.i29:                              ; preds = %bb.z
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 1, ptr %i.bj, align 4, !tbaa !18
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.aw, ptr %i.bk, align 8, !tbaa !9
  br label %parse_hex.exit.thread52

bb.aa:                                            ; preds = %bb.m
  %i.bl = sext i8 %i.ad to i32
  %i.bm = tail call i32 @ossl_isdigit(i32 noundef %i.bl) #8
  %.not = icmp eq i32 %i.bm, 0
  br i1 %.not, label %._crit_edge, label %bb.ab

._crit_edge:                                      ; preds = %bb.aa
  %.pre64 = load i8, ptr %i.d, align 1, !tbaa !9
  br label %bb.al

bb.ab:                                            ; preds = %bb.aa
  store ptr %i.ac, ptr %i.c, align 8, !tbaa !12
  %.pre.i = load i8, ptr %i.ac, align 1, !tbaa !9
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ah, %bb.ab
  %i.bn = phi i8 [ %.pre.i, %bb.ab ], [ %.pre37.i, %bb.ah ] ; 2 uses
  %.022.i32 = phi ptr [ %i.ac, %bb.ab ], [ %i.bz, %bb.ah ] ; 2 uses
  %.0.i33 = phi i64 [ 0, %bb.ab ], [ %i.by, %bb.ah ] ; 2 uses
  %i.bo = and i8 %i.bn, -2
  %switch.i = icmp eq i8 %i.bo, 56
  br i1 %switch.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bp = sext i8 %i.bn to i32
  %i.bq = tail call i32 @ossl_isdigit(i32 noundef %i.bp) #8
  %.not.i34 = icmp eq i32 %i.bq, 0
  br i1 %.not.i34, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 170, ptr noundef nonnull @__func__.parse_oct) #8
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 55, i32 noundef 104, ptr noundef nonnull @.str.2, ptr noundef nonnull %i.ac) #8
  br label %parse_hex.exit.thread

bb.af:                                            ; preds = %bb.ad
  %i.br = load i8, ptr %.022.i32, align 1, !tbaa !9
  %i.bs = sext i8 %i.br to i64                    ; 2 uses
  %i.bt = sub i64 -9223372036854775761, %i.bs
  %i.bu = lshr i64 %i.bt, 3
  %i.bv = icmp sgt i64 %.0.i33, %i.bu
  br i1 %i.bv, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 175, ptr noundef nonnull @__func__.parse_oct) #8
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 55, i32 noundef 108, ptr noundef nonnull @.str.13, ptr noundef nonnull %i.ac) #8
  br label %parse_hex.exit.thread

bb.ah:                                            ; preds = %bb.af
  %i.bw = shl i64 %.0.i33, 3
  %i.bx = add i64 %i.bw, -48
  %i.by = add i64 %i.bx, %i.bs                    ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.022.i32, i64 1 ; 5 uses
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !9
  %i.cb = sext i8 %i.ca to i32
  %i.cc = tail call i32 @ossl_isdigit(i32 noundef %i.cb) #8
  %.not27.i35 = icmp eq i32 %i.cc, 0
  %.pre37.i = load i8, ptr %i.bz, align 1, !tbaa !9 ; 3 uses
  %i.cd = and i8 %.pre37.i, -2
  %switch34.i = icmp eq i8 %i.cd, 56
  %or.cond.i36 = select i1 %.not27.i35, i1 true, i1 %switch34.i
  br i1 %or.cond.i36, label %.critedge.i37, label %bb.ac

.critedge.i37:                                    ; preds = %bb.ah
  %i.ce = sext i8 %.pre37.i to i32
  %i.cf = tail call i32 @ossl_ctype_check(i32 noundef %i.ce, i32 noundef 8) #8
  %.not30.i = icmp eq i32 %i.cf, 0
  br i1 %.not30.i, label %bb.ai, label %.preheader79

.preheader79:                                     ; preds = %bb.ai, %bb.ai, %.critedge.i37
  br label %bb.ak

bb.ai:                                            ; preds = %.critedge.i37
  %i.cg = load i8, ptr %i.bz, align 1, !tbaa !9
  switch i8 %i.cg, label %bb.aj [
    i8 0, label %.preheader79
    i8 44, label %.preheader79
  ]

bb.aj:                                            ; preds = %bb.ai
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 183, ptr noundef nonnull @__func__.parse_oct) #8
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 55, i32 noundef 104, ptr noundef nonnull @.str.2, ptr noundef nonnull %i.ac) #8
  br label %parse_hex.exit.thread

bb.ak:                                            ; preds = %.preheader79, %bb.ak
  %.0.i.i38 = phi ptr [ %i.ck, %bb.ak ], [ %i.bz, %.preheader79 ] ; 3 uses
  %i.ch = load i8, ptr %.0.i.i38, align 1, !tbaa !9
  %i.ci = sext i8 %i.ch to i32
  %i.cj = tail call i32 @ossl_ctype_check(i32 noundef %i.ci, i32 noundef 8) #8
  %.not.i.i39 = icmp eq i32 %i.cj, 0
  %i.ck = getelementptr inbounds nuw i8, ptr %.0.i.i38, i64 1
  br i1 %.not.i.i39, label %skip_space.exit.i40, label %bb.ak, !llvm.loop !10

skip_space.exit.i40:                              ; preds = %bb.ak
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 1, ptr %i.cl, align 4, !tbaa !18
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.by, ptr %i.cm, align 8, !tbaa !9
  br label %parse_hex.exit.thread52

bb.al:                                            ; preds = %._crit_edge, %bb.a
  %i.cn = phi i8 [ %.pre64, %._crit_edge ], [ %i.e, %bb.a ]
  %i.co = sext i8 %i.cn to i32
  %i.cp = tail call i32 @ossl_isdigit(i32 noundef %i.co) #8
  %.not21 = icmp eq i32 %i.cp, 0
  br i1 %.not21, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.cq = tail call fastcc i32 @parse_number(ptr noundef %1, ptr noundef %2)
  br label %parse_hex.exit.thread

bb.an:                                            ; preds = %bb.al
  %i.cr = load i8, ptr %i.d, align 1, !tbaa !9
  %i.cs = sext i8 %i.cr to i32
  %i.ct = tail call i32 @ossl_ctype_check(i32 noundef %i.cs, i32 noundef 3) #8
  %.not22 = icmp eq i32 %i.ct, 0
  br i1 %.not22, label %parse_hex.exit.thread, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.cu = load ptr, ptr %1, align 8, !tbaa !12    ; 3 uses
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !9   ; 2 uses
  switch i8 %i.cv, label %.preheader.i [
    i8 0, label %parse_unquoted.exit
    i8 44, label %parse_unquoted.exit
  ]

.preheader.i:                                     ; preds = %bb.ao
  %i.cw = sext i8 %i.cv to i32
  %i.cx = tail call i32 @ossl_ctype_check(i32 noundef %i.cw, i32 noundef 256) #8
  %.not38.i = icmp eq i32 %i.cx, 0
  br i1 %.not38.i, label %.critedge.i43, label %.lr.ph.i42

.lr.ph.i42:                                       ; preds = %.preheader.i, %bb.as
  %.041.i = phi i32 [ %.1.i47, %bb.as ], [ 0, %.preheader.i ] ; 3 uses
  %.02440.i = phi i64 [ %.125.i, %bb.as ], [ 0, %.preheader.i ] ; 6 uses
  %.02639.i = phi ptr [ %i.di, %bb.as ], [ %i.cu, %.preheader.i ] ; 5 uses
  %i.cy = load i8, ptr %.02639.i, align 1, !tbaa !9
  %i.cz = sext i8 %i.cy to i32
  %i.da = tail call i32 @ossl_ctype_check(i32 noundef %i.cz, i32 noundef 8) #8
  %.not31.i = icmp eq i32 %i.da, 0
  br i1 %.not31.i, label %bb.ap, label %.critedge.loopexit.i

bb.ap:                                            ; preds = %.lr.ph.i42
  %i.db = load i8, ptr %.02639.i, align 1, !tbaa !9 ; 2 uses
  %i.dc = sext i8 %i.db to i32
  %.not32.i = icmp eq i8 %i.db, 44
  br i1 %.not32.i, label %.critedge.loopexit.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.dd = icmp ult i64 %.02440.i, 999
  br i1 %i.dd, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.de = tail call i32 @ossl_tolower(i32 noundef %i.dc) #8
  %i.df = trunc i32 %i.de to i8
  %i.dg = add nuw nsw i64 %.02440.i, 1
  %i.dh = getelementptr inbounds nuw i8, ptr %i.a, i64 %.02440.i
  store i8 %i.df, ptr %i.dh, align 1, !tbaa !9
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.125.i = phi i64 [ %i.dg, %bb.ar ], [ %.02440.i, %bb.aq ] ; 2 uses
  %.1.i47 = phi i32 [ %.041.i, %bb.ar ], [ 1, %bb.aq ] ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.02639.i, i64 1 ; 3 uses
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !9
  %i.dk = sext i8 %i.dj to i32
  %i.dl = tail call i32 @ossl_ctype_check(i32 noundef %i.dk, i32 noundef 256) #8
  %.not.i48 = icmp eq i32 %i.dl, 0
  br i1 %.not.i48, label %.critedge.loopexit.i, label %.lr.ph.i42, !llvm.loop !24

.critedge.loopexit.i:                             ; preds = %bb.as, %bb.ap, %.lr.ph.i42
  %.026.lcssa.ph.i = phi ptr [ %.02639.i, %bb.ap ], [ %i.di, %bb.as ], [ %.02639.i, %.lr.ph.i42 ]
  %.024.lcssa.ph.i = phi i64 [ %.02440.i, %bb.ap ], [ %.125.i, %bb.as ], [ %.02440.i, %.lr.ph.i42 ]
  %.0.lcssa.ph.i = phi i32 [ %.041.i, %bb.ap ], [ %.1.i47, %bb.as ], [ %.041.i, %.lr.ph.i42 ]
  %i.dm = icmp eq i32 %.0.lcssa.ph.i, 0
  br label %.critedge.i43

.critedge.i43:                                    ; preds = %.critedge.loopexit.i, %.preheader.i
  %.026.lcssa.i = phi ptr [ %i.cu, %.preheader.i ], [ %.026.lcssa.ph.i, %.critedge.loopexit.i ] ; 4 uses
  %.024.lcssa.i = phi i64 [ 0, %.preheader.i ], [ %.024.lcssa.ph.i, %.critedge.loopexit.i ]
  %.0.lcssa.i = phi i1 [ true, %.preheader.i ], [ %i.dm, %.critedge.loopexit.i ]
  %i.dn = load i8, ptr %.026.lcssa.i, align 1, !tbaa !9
  %i.do = sext i8 %i.dn to i32
  %i.dp = tail call i32 @ossl_ctype_check(i32 noundef %i.do, i32 noundef 8) #8
  %.not33.i = icmp eq i32 %i.dp, 0
  br i1 %.not33.i, label %bb.at, label %bb.av

bb.at:                                            ; preds = %.critedge.i43
  %i.dq = load i8, ptr %.026.lcssa.i, align 1, !tbaa !9
  switch i8 %i.dq, label %bb.au [
    i8 0, label %bb.av
    i8 44, label %bb.av
  ]

bb.au:                                            ; preds = %bb.at
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 242, ptr noundef nonnull @__func__.parse_unquoted) #8
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 55, i32 noundef 101, ptr noundef nonnull @.str.2, ptr noundef nonnull %.026.lcssa.i) #8
  br label %parse_unquoted.exit

bb.av:                                            ; preds = %bb.at, %bb.at, %.critedge.i43
  %i.dr = getelementptr inbounds nuw i8, ptr %i.a, i64 %.024.lcssa.i
  store i8 0, ptr %i.dr, align 1, !tbaa !9
  br i1 %.0.lcssa.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 248, ptr noundef nonnull @__func__.parse_unquoted) #8
  %i.ds = load ptr, ptr %1, align 8, !tbaa !12
end_hunk_0
