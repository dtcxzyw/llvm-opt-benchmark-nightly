Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/git-zlib?download=true
inline.NumInlined: 32
inline.NumDeleted: 5
begin_hunk_0_@git_inflate_end:bb.a
bb.g:                                             ; preds = %zlib_post_call.exit
  br label %zerr_to_string.exit

bb.h:                                             ; preds = %zlib_post_call.exit
  br label %zerr_to_string.exit

bb.i:                                             ; preds = %zlib_post_call.exit
  br label %zerr_to_string.exit

zerr_to_string.exit:                              ; preds = %zlib_post_call.exit, %bb.f, %zlib_post_call.exit.thread, %bb.g, %bb.h, %bb.i
  %.0.i = phi ptr [ @.str.19, %bb.i ], [ @.str.18, %bb.h ], [ @.str.15, %bb.f ], [ @.str.16, %zlib_post_call.exit.thread ], [ @.str.17, %bb.g ], [ @.str.14, %zlib_post_call.exit ]
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !32 ; 2 uses
  %.not = icmp eq ptr %i.as, null
  %spec.select = select i1 %.not, ptr @.str.2, ptr %i.as
  %i.at = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.4, ptr noundef nonnull %.0.i, ptr noundef nonnull %spec.select) #6 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %zlib_post_call.exit, %zerr_to_string.exit
  ret void
}

declare i32 @inflateEnd(ptr noundef) local_unnamed_addr #1

declare i32 @error(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -3, -4) i32 @git_inflate(ptr noundef initializes((0, 12), (16, 36), (40, 48)) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !18
  %.pre49 = load ptr, ptr %i.b, align 8, !tbaa !20
  %.pre50 = load i64, ptr %i.d, align 8, !tbaa !22
  %.pre51 = load i64, ptr %i.f, align 8, !tbaa !24
  %.pre52 = load i64, ptr %i.h, align 8, !tbaa !26
  %.pre53 = load i64, ptr %i.j, align 8, !tbaa !28
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %bb.a
  %i.l = phi i64 [ %.pre53, %bb.a ], [ %i.ar, %.backedge.backedge ]
  %i.m = phi i64 [ %.pre52, %bb.a ], [ %i.ap, %.backedge.backedge ] ; 2 uses
  %i.n = phi i64 [ %.pre51, %bb.a ], [ %i.ai, %.backedge.backedge ]
  %i.o = phi i64 [ %.pre50, %bb.a ], [ %.pre-phi.i, %.backedge.backedge ]
  %i.p = phi ptr [ %.pre49, %bb.a ], [ %i.ad, %.backedge.backedge ]
  %i.q = phi ptr [ %.pre, %bb.a ], [ %i.y, %.backedge.backedge ]
  store ptr %i.q, ptr %0, align 8, !tbaa !19
  store ptr %i.p, ptr %i.c, align 8, !tbaa !21
  store i64 %i.o, ptr %i.e, align 8, !tbaa !23
  store i64 %i.n, ptr %i.g, align 8, !tbaa !25
  %i.r = tail call i64 @llvm.umin.i64(i64 %i.m, i64 1073741824)
  %i.s = trunc nuw nsw i64 %i.r to i32
  store i32 %i.s, ptr %i.i, align 8, !tbaa !27
  %i.t = tail call i64 @llvm.umin.i64(i64 %i.l, i64 1073741824)
  %i.u = trunc nuw nsw i64 %i.t to i32
  store i32 %i.u, ptr %i.k, align 8, !tbaa !29
  %.not = icmp ult i64 %i.m, 1073741825
  %i.v = select i1 %.not, i32 %1, i32 0
  %i.w = tail call i32 @inflate(ptr noundef nonnull %0, i32 noundef %i.v) #6 ; 5 uses
  %i.x = icmp eq i32 %i.w, -4
  br i1 %i.x, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.backedge
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.5) #7
  unreachable

bb.c:                                             ; preds = %.backedge
  %i.y = load ptr, ptr %0, align 8, !tbaa !19     ; 3 uses
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab                    ; 3 uses
  %i.ad = load ptr, ptr %i.c, align 8, !tbaa !21  ; 3 uses
  %i.ae = load ptr, ptr %i.b, align 8, !tbaa !20
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag                    ; 3 uses
  %i.ai = load i64, ptr %i.g, align 8, !tbaa !25  ; 3 uses
  %i.aj = load i64, ptr %i.f, align 8, !tbaa !24
  %i.ak = add i64 %i.aj, %i.ah
  %.not.i = icmp eq i64 %i.ai, %i.ak
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.11, i32 noundef 69, ptr noundef nonnull @.str.12) #7
  unreachable

bb.e:                                             ; preds = %bb.c
  %.not22.i = icmp eq i32 %i.w, 2
  br i1 %.not22.i, label %._crit_edge.i, label %bb.f

._crit_edge.i:                                    ; preds = %bb.e
  %.pre.i = load i64, ptr %i.d, align 8, !tbaa !22
  %.pre24.i = add i64 %.pre.i, %i.ac
  br label %zlib_post_call.exit

bb.f:                                             ; preds = %bb.e
  %i.al = load i64, ptr %i.e, align 8, !tbaa !23  ; 2 uses
  %i.am = load i64, ptr %i.d, align 8, !tbaa !22
  %i.an = add i64 %i.am, %i.ac
  %.not23.i = icmp eq i64 %i.al, %i.an
  br i1 %.not23.i, label %zlib_post_call.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.11, i32 noundef 77, ptr noundef nonnull @.str.13) #7
  unreachable

zlib_post_call.exit:                              ; preds = %._crit_edge.i, %bb.f
  %.pre-phi.i = phi i64 [ %.pre24.i, %._crit_edge.i ], [ %i.al, %bb.f ] ; 2 uses
  store i64 %i.ai, ptr %i.f, align 8, !tbaa !24
  store i64 %.pre-phi.i, ptr %i.d, align 8, !tbaa !22
  store ptr %i.y, ptr %i.a, align 8, !tbaa !18
  store ptr %i.ad, ptr %i.b, align 8, !tbaa !20
  %i.ao = load i64, ptr %i.h, align 8, !tbaa !26
  %i.ap = sub i64 %i.ao, %i.ac                    ; 2 uses
  store i64 %i.ap, ptr %i.h, align 8, !tbaa !26
  %i.aq = load i64, ptr %i.j, align 8, !tbaa !28  ; 2 uses
  %i.ar = sub i64 %i.aq, %i.ah                    ; 2 uses
  store i64 %i.ar, ptr %i.j, align 8, !tbaa !28
  %.not20 = icmp eq i64 %i.aq, %i.ah
  br i1 %.not20, label %bb.j, label %bb.h

bb.h:                                             ; preds = %zlib_post_call.exit
  %i.as = load i32, ptr %i.k, align 8, !tbaa !29
  %.not21 = icmp eq i32 %i.as, 0
  br i1 %.not21, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  switch i32 %i.w, label %.loopexit [
    i32 -5, label %.backedge.backedge
    i32 0, label %.backedge.backedge
    i32 1, label %.loopexit23
    i32 -2, label %.loopexit27
    i32 -6, label %zerr_to_string.exit
    i32 2, label %zerr_to_string.exit.loopexit65
    i32 -3, label %.loopexit26
  ]

.backedge.backedge:                               ; preds = %bb.i, %bb.i
  br label %.backedge

bb.j:                                             ; preds = %zlib_post_call.exit, %bb.h
  switch i32 %i.w, label %.loopexit [
    i32 -5, label %.loopexit23
    i32 0, label %.loopexit23
    i32 1, label %.loopexit23
    i32 -2, label %.loopexit27
    i32 -6, label %zerr_to_string.exit
    i32 2, label %zerr_to_string.exit.loopexit65
    i32 -3, label %.loopexit26
  ]

.loopexit26:                                      ; preds = %bb.i, %bb.j
  br label %zerr_to_string.exit

.loopexit27:                                      ; preds = %bb.i, %bb.j
  br label %zerr_to_string.exit

.loopexit:                                        ; preds = %bb.i, %bb.j
  br label %zerr_to_string.exit

zerr_to_string.exit.loopexit65:                   ; preds = %bb.i, %bb.j
  br label %zerr_to_string.exit

zerr_to_string.exit:                              ; preds = %bb.i, %zerr_to_string.exit.loopexit65, %bb.j, %.loopexit26, %.loopexit27, %.loopexit
  %.0.i = phi ptr [ @.str.19, %.loopexit ], [ @.str.18, %.loopexit27 ], [ @.str.15, %bb.j ], [ @.str.16, %zerr_to_string.exit.loopexit65 ], [ @.str.17, %.loopexit26 ], [ @.str.15, %bb.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !32 ; 2 uses
  %.not22 = icmp eq ptr %i.au, null
  %spec.select = select i1 %.not22, ptr @.str.2, ptr %i.au
  %i.av = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.6, ptr noundef nonnull %.0.i, ptr noundef nonnull %spec.select) #6 ; 0 uses
  br label %.loopexit23

.loopexit23:                                      ; preds = %bb.i, %bb.j, %bb.j, %bb.j, %zerr_to_string.exit
  ret i32 %i.w
}

declare i32 @inflate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i64 @git_deflate_bound(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @deflateBound(ptr noundef %0, i64 noundef %1) #6
  ret i64 %i.a
}

declare i64 @deflateBound(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @git_deflate_init(ptr noundef initializes((0, 160)) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %0, i8 0, i64 160, i1 false)
  %i.d = tail call i32 @deflateInit_(ptr noundef nonnull %0, i32 noundef %1, ptr noundef nonnull @.str, i32 noundef 112) #6 ; 3 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !19     ; 2 uses
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !21   ; 2 uses
  %i.g = load <2 x ptr>, ptr %2, align 8, !tbaa !30
  %i.h = insertelement <2 x ptr> poison, ptr %i.e, i64 0
  %i.i = insertelement <2 x ptr> %i.h, ptr %i.f, i64 1
  %i.j = ptrtoint <2 x ptr> %i.i to <2 x i64>
  %i.k = ptrtoint <2 x ptr> %i.g to <2 x i64>
  %i.l = sub <2 x i64> %i.j, %i.k                 ; 4 uses
  %i.m = load i64, ptr %i.c, align 8, !tbaa !25   ; 2 uses
  %i.n = load i64, ptr %5, align 8, !tbaa !24
  %i.o = extractelement <2 x i64> %i.l, i64 1
  %i.p = add i64 %i.n, %i.o
  %.not.i = icmp eq i64 %i.m, %i.p
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.11, i32 noundef 69, ptr noundef nonnull @.str.12) #7
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not22.i = icmp eq i32 %i.d, 2
  br i1 %.not22.i, label %._crit_edge.i, label %bb.d

._crit_edge.i:                                    ; preds = %bb.c
  %.pre.i = load i64, ptr %4, align 8, !tbaa !22
  %i.q = extractelement <2 x i64> %i.l, i64 0
  %.pre24.i = add i64 %.pre.i, %i.q
  br label %zlib_post_call.exit

bb.d:                                             ; preds = %bb.c
  %i.r = load i64, ptr %i.b, align 8, !tbaa !23   ; 2 uses
  %i.s = load i64, ptr %4, align 8, !tbaa !22
  %i.t = extractelement <2 x i64> %i.l, i64 0
  %i.u = add i64 %i.s, %i.t
  %.not23.i = icmp eq i64 %i.r, %i.u
  br i1 %.not23.i, label %zlib_post_call.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.11, i32 noundef 77, ptr noundef nonnull @.str.13) #7
  unreachable

zlib_post_call.exit:                              ; preds = %._crit_edge.i, %bb.d
  %.pre-phi.i = phi i64 [ %.pre24.i, %._crit_edge.i ], [ %i.r, %bb.d ]
  store i64 %i.m, ptr %5, align 8, !tbaa !24
  store i64 %.pre-phi.i, ptr %4, align 8, !tbaa !22
  store ptr %i.e, ptr %2, align 8, !tbaa !18
  store ptr %i.f, ptr %3, align 8, !tbaa !20
  %i.v = load <2 x i64>, ptr %6, align 8, !tbaa !31
  %i.w = sub <2 x i64> %i.v, %i.l
  store <2 x i64> %i.w, ptr %6, align 8, !tbaa !31
  %i.x = icmp eq i32 %i.d, 0
  br i1 %i.x, label %bb.f, label %bb.g

bb.f:                                             ; preds = %zlib_post_call.exit
  ret void

bb.g:                                             ; preds = %zlib_post_call.exit
  %i.y = tail call fastcc ptr @zerr_to_string(i32 noundef %i.d)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !32  ; 2 uses
  %.not = icmp eq ptr %i.aa, null
  %spec.select = select i1 %.not, ptr @.str.2, ptr %i.aa
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.7, ptr noundef nonnull %i.y, ptr noundef nonnull %spec.select) #7
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare i32 @deflateInit_(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @git_deflate_init_gzip(ptr noundef initializes((0, 160)) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  tail call fastcc void @do_git_deflate_init(ptr noundef %0, i32 noundef %1, i32 noundef 31)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @do_git_deflate_init(ptr noundef initializes((0, 160)) %0, i32 noundef %1, i32 noundef range(i32 -15, 32) %2) unnamed_addr #0 {
bb.a:
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %0, i8 0, i64 160, i1 false)
  %i.d = tail call i32 @deflateInit2_(ptr noundef nonnull %0, i32 noundef %1, i32 noundef 8, i32 noundef %2, i32 noundef 8, i32 noundef 0, ptr noundef nonnull @.str, i32 noundef 112) #6 ; 3 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !19     ; 2 uses
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !21   ; 2 uses
  %i.g = load <2 x ptr>, ptr %3, align 8, !tbaa !30
  %i.h = insertelement <2 x ptr> poison, ptr %i.e, i64 0
  %i.i = insertelement <2 x ptr> %i.h, ptr %i.f, i64 1
  %i.j = ptrtoint <2 x ptr> %i.i to <2 x i64>
  %i.k = ptrtoint <2 x ptr> %i.g to <2 x i64>
  %i.l = sub <2 x i64> %i.j, %i.k                 ; 4 uses
  %i.m = load i64, ptr %i.c, align 8, !tbaa !25   ; 2 uses
  %i.n = load i64, ptr %6, align 8, !tbaa !24
  %i.o = extractelement <2 x i64> %i.l, i64 1
  %i.p = add i64 %i.n, %i.o
  %.not.i = icmp eq i64 %i.m, %i.p
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.11, i32 noundef 69, ptr noundef nonnull @.str.12) #7
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not22.i = icmp eq i32 %i.d, 2
  br i1 %.not22.i, label %._crit_edge.i, label %bb.d

._crit_edge.i:                                    ; preds = %bb.c
  %.pre.i = load i64, ptr %5, align 8, !tbaa !22
  %i.q = extractelement <2 x i64> %i.l, i64 0
  %.pre24.i = add i64 %.pre.i, %i.q
  br label %zlib_post_call.exit

bb.d:                                             ; preds = %bb.c
  %i.r = load i64, ptr %i.b, align 8, !tbaa !23   ; 2 uses
  %i.s = load i64, ptr %5, align 8, !tbaa !22
  %i.t = extractelement <2 x i64> %i.l, i64 0
  %i.u = add i64 %i.s, %i.t
  %.not23.i = icmp eq i64 %i.r, %i.u
  br i1 %.not23.i, label %zlib_post_call.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.11, i32 noundef 77, ptr noundef nonnull @.str.13) #7
  unreachable

zlib_post_call.exit:                              ; preds = %._crit_edge.i, %bb.d
  %.pre-phi.i = phi i64 [ %.pre24.i, %._crit_edge.i ], [ %i.r, %bb.d ]
  store i64 %i.m, ptr %6, align 8, !tbaa !24
  store i64 %.pre-phi.i, ptr %5, align 8, !tbaa !22
  store ptr %i.e, ptr %3, align 8, !tbaa !18
  store ptr %i.f, ptr %4, align 8, !tbaa !20
  %i.v = load <2 x i64>, ptr %7, align 8, !tbaa !31
  %i.w = sub <2 x i64> %i.v, %i.l
  store <2 x i64> %i.w, ptr %7, align 8, !tbaa !31
  %i.x = icmp eq i32 %i.d, 0
  br i1 %i.x, label %bb.f, label %bb.g

bb.f:                                             ; preds = %zlib_post_call.exit
  ret void

bb.g:                                             ; preds = %zlib_post_call.exit
  %i.y = tail call fastcc ptr @zerr_to_string(i32 noundef %i.d)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !32  ; 2 uses
  %.not = icmp eq ptr %i.aa, null
  %spec.select = select i1 %.not, ptr @.str.2, ptr %i.aa
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.20, ptr noundef nonnull %i.y, ptr noundef nonnull %spec.select) #7
  unreachable
}

; Function Attrs: nounwind uwtable
define dso_local void @git_deflate_init_raw(ptr noundef initializes((0, 160)) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  tail call fastcc void @do_git_deflate_init(ptr noundef %0, i32 noundef %1, i32 noundef -15)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @git_deflate_abort(ptr noundef initializes((0, 12), (16, 36), (40, 48)) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18
  store ptr %i.b, ptr %0, align 8, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !20
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.d, ptr %i.e, align 8, !tbaa !21
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !22
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i64 %i.g, ptr %i.h, align 8, !tbaa !23
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !24
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store i64 %i.j, ptr %i.k, align 8, !tbaa !25
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !26
  %i.n = tail call i64 @llvm.umin.i64(i64 %i.m, i64 1073741824)
  %i.o = trunc nuw nsw i64 %i.n to i32
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.o, ptr %i.p, align 8, !tbaa !27
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.r = load i64, ptr %i.q, align 8, !tbaa !28
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.r, i64 1073741824)
  %i.t = trunc nuw nsw i64 %i.s to i32
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.t, ptr %i.u, align 8, !tbaa !29
  %i.v = tail call i32 @deflateEnd(ptr noundef nonnull %0) #6 ; 2 uses
  %i.w = load ptr, ptr %0, align 8, !tbaa !19     ; 2 uses
  %i.x = load ptr, ptr %i.e, align 8, !tbaa !21   ; 2 uses
  %i.y = load <2 x ptr>, ptr %i.a, align 8, !tbaa !30
  %i.z = insertelement <2 x ptr> poison, ptr %i.w, i64 0
  %i.aa = insertelement <2 x ptr> %i.z, ptr %i.x, i64 1
  %i.ab = ptrtoint <2 x ptr> %i.aa to <2 x i64>
  %i.ac = ptrtoint <2 x ptr> %i.y to <2 x i64>
  %i.ad = sub <2 x i64> %i.ab, %i.ac              ; 4 uses
  %i.ae = load i64, ptr %i.k, align 8, !tbaa !25  ; 2 uses
  %i.af = load i64, ptr %i.i, align 8, !tbaa !24
  %i.ag = extractelement <2 x i64> %i.ad, i64 1
  %i.ah = add i64 %i.af, %i.ag
  %.not.i = icmp eq i64 %i.ae, %i.ah
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.11, i32 noundef 69, ptr noundef nonnull @.str.12) #7
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not22.i = icmp eq i32 %i.v, 2
  br i1 %.not22.i, label %._crit_edge.i, label %bb.d

._crit_edge.i:                                    ; preds = %bb.c
  %.pre.i = load i64, ptr %i.f, align 8, !tbaa !22
  %i.ai = extractelement <2 x i64> %i.ad, i64 0
  %.pre24.i = add i64 %.pre.i, %i.ai
  br label %zlib_post_call.exit

bb.d:                                             ; preds = %bb.c
  %i.aj = load i64, ptr %i.h, align 8, !tbaa !23  ; 2 uses
  %i.ak = load i64, ptr %i.f, align 8, !tbaa !22
  %i.al = extractelement <2 x i64> %i.ad, i64 0
  %i.am = add i64 %i.ak, %i.al
  %.not23.i = icmp eq i64 %i.aj, %i.am
  br i1 %.not23.i, label %zlib_post_call.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.11, i32 noundef 77, ptr noundef nonnull @.str.13) #7
  unreachable

zlib_post_call.exit:                              ; preds = %._crit_edge.i, %bb.d
  %.pre-phi.i = phi i64 [ %.pre24.i, %._crit_edge.i ], [ %i.aj, %bb.d ]
  store i64 %i.ae, ptr %i.i, align 8, !tbaa !24
  store i64 %.pre-phi.i, ptr %i.f, align 8, !tbaa !22
  store ptr %i.w, ptr %i.a, align 8, !tbaa !18
  store ptr %i.x, ptr %i.c, align 8, !tbaa !20
  %i.an = load <2 x i64>, ptr %i.l, align 8, !tbaa !31
  %i.ao = sub <2 x i64> %i.an, %i.ad
  store <2 x i64> %i.ao, ptr %i.l, align 8, !tbaa !31
  ret i32 %i.v
}

declare i32 @deflateEnd(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @git_deflate_end(ptr noundef initializes((0, 12), (16, 36), (40, 48)) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @git_deflate_abort(ptr noundef %0)
  switch i32 %i.a, label %bb.f [
    i32 0, label %bb.g
    i32 -4, label %zerr_to_string.exit
    i32 -6, label %bb.b
    i32 2, label %bb.c
    i32 -3, label %bb.d
    i32 -2, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  br label %zerr_to_string.exit

bb.c:                                             ; preds = %bb.a
  br label %zerr_to_string.exit

bb.d:                                             ; preds = %bb.a
  br label %zerr_to_string.exit

bb.e:                                             ; preds = %bb.a
  br label %zerr_to_string.exit

bb.f:                                             ; preds = %bb.a
  br label %zerr_to_string.exit

zerr_to_string.exit:                              ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f
  %.0.i = phi ptr [ @.str.19, %bb.f ], [ @.str.18, %bb.e ], [ @.str.15, %bb.b ], [ @.str.16, %bb.c ], [ @.str.17, %bb.d ], [ @.str.14, %bb.a ]
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !32   ; 2 uses
  %.not = icmp eq ptr %i.c, null
  %spec.select = select i1 %.not, ptr @.str.2, ptr %i.c
  %i.d = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.8, ptr noundef nonnull %.0.i, ptr noundef nonnull %spec.select) #6 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %zerr_to_string.exit
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @git_deflate_end_gently(ptr noundef initializes((0, 12), (16, 36), (40, 48)) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18
  store ptr %i.b, ptr %0, align 8, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !20
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.d, ptr %i.e, align 8, !tbaa !21
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !22
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i64 %i.g, ptr %i.h, align 8, !tbaa !23
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !24
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store i64 %i.j, ptr %i.k, align 8, !tbaa !25
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !26
  %i.n = tail call i64 @llvm.umin.i64(i64 %i.m, i64 1073741824)
  %i.o = trunc nuw nsw i64 %i.n to i32
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.o, ptr %i.p, align 8, !tbaa !27
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.r = load i64, ptr %i.q, align 8, !tbaa !28
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.r, i64 1073741824)
  %i.t = trunc nuw nsw i64 %i.s to i32
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.t, ptr %i.u, align 8, !tbaa !29
  %i.v = tail call i32 @deflateEnd(ptr noundef nonnull %0) #6 ; 2 uses
  %i.w = load ptr, ptr %0, align 8, !tbaa !19     ; 2 uses
  %i.x = load ptr, ptr %i.e, align 8, !tbaa !21   ; 2 uses
  %i.y = load <2 x ptr>, ptr %i.a, align 8, !tbaa !30
  %i.z = insertelement <2 x ptr> poison, ptr %i.w, i64 0
  %i.aa = insertelement <2 x ptr> %i.z, ptr %i.x, i64 1
  %i.ab = ptrtoint <2 x ptr> %i.aa to <2 x i64>
  %i.ac = ptrtoint <2 x ptr> %i.y to <2 x i64>
  %i.ad = sub <2 x i64> %i.ab, %i.ac              ; 4 uses
  %i.ae = load i64, ptr %i.k, align 8, !tbaa !25  ; 2 uses
  %i.af = load i64, ptr %i.i, align 8, !tbaa !24
  %i.ag = extractelement <2 x i64> %i.ad, i64 1
  %i.ah = add i64 %i.af, %i.ag
  %.not.i = icmp eq i64 %i.ae, %i.ah
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.11, i32 noundef 69, ptr noundef nonnull @.str.12) #7
  unreachable

end_hunk_0
