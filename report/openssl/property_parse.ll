Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/property_parse?download=true
inline.NumInlined: 39
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@ossl_parse_query:bb.a
  %i.h = sext i8 %i.g to i32
  %i.i = tail call i32 @ossl_ctype_check(i32 noundef %i.h, i32 noundef 8) #9
  %.not.i = icmp eq i32 %i.i, 0
  %i.j = getelementptr inbounds nuw i8, ptr %.0.i, i64 1
  br i1 %.not.i, label %skip_space.exit, label %.preheader, !llvm.loop !0

skip_space.exit:                                  ; preds = %.preheader
  store ptr %.0.i, ptr %i.a, align 8, !tbaa !13
  %i.k = load i8, ptr %.0.i, align 1, !tbaa !9
  %.not71 = icmp eq i8 %i.k, 0
  br i1 %.not71, label %._crit_edge.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %skip_space.exit
  %i.l = tail call noalias ptr @CRYPTO_malloc(i64 noundef 24, ptr noundef nonnull @.str, i32 noundef 418) #9 ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %.loopexit, label %.lr.ph83

.lr.ph83:                                         ; preds = %.lr.ph.preheader, %skip_space.exit.i63
  %i.n = phi ptr [ %i.bf, %skip_space.exit.i63 ], [ %i.l, %.lr.ph.preheader ] ; 15 uses
  %i.o = phi ptr [ %.0.i.i61, %skip_space.exit.i63 ], [ %.0.i, %.lr.ph.preheader ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  store i64 0, ptr %i.p, align 8
  %i.q = load i8, ptr %i.o, align 1, !tbaa !9
  switch i8 %i.q, label %match_ch.exit46 [
    i8 45, label %.preheader.i
    i8 63, label %.preheader.i41
  ]

.preheader.i:                                     ; preds = %.lr.ph83, %.preheader.i
  %.pn.i = phi ptr [ %.0.i.i, %.preheader.i ], [ %i.o, %.lr.ph83 ]
  %.0.i.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 1 ; 3 uses
  %i.r = load i8, ptr %.0.i.i, align 1, !tbaa !9
  %i.s = sext i8 %i.r to i32
  %i.t = tail call i32 @ossl_ctype_check(i32 noundef %i.s, i32 noundef 8) #9
  %.not.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.i, label %bb.c, label %.preheader.i, !llvm.loop !0

bb.c:                                             ; preds = %.preheader.i
  store ptr %.0.i.i, ptr %i.a, align 8, !tbaa !13
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i32 2, ptr %i.u, align 8, !tbaa !15
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 12 ; 2 uses
  %i.w = load i8, ptr %i.v, align 4
  %i.x = and i8 %i.w, -2
  store i8 %i.x, ptr %i.v, align 4
  %i.y = call fastcc i32 @parse_name(ptr noundef %0, ptr noundef %i.a, ptr noundef %i.n)
  %.not37 = icmp eq i32 %i.y, 0
  br i1 %.not37, label %.loopexit, label %bb.j

.preheader.i41:                                   ; preds = %.lr.ph83, %.preheader.i41
  %.pn.i42 = phi ptr [ %.0.i.i43, %.preheader.i41 ], [ %i.o, %.lr.ph83 ]
  %.0.i.i43 = getelementptr inbounds nuw i8, ptr %.pn.i42, i64 1 ; 3 uses
  %i.z = load i8, ptr %.0.i.i43, align 1, !tbaa !9
  %i.aa = sext i8 %i.z to i32
  %i.ab = tail call i32 @ossl_ctype_check(i32 noundef %i.aa, i32 noundef 8) #9
  %.not.i.i44 = icmp eq i32 %i.ab, 0
  br i1 %.not.i.i44, label %skip_space.exit.i45, label %.preheader.i41, !llvm.loop !0

skip_space.exit.i45:                              ; preds = %.preheader.i41
  store ptr %.0.i.i43, ptr %i.a, align 8, !tbaa !13
  br label %match_ch.exit46

match_ch.exit46:                                  ; preds = %.lr.ph83, %skip_space.exit.i45
  %.0.i40 = phi i8 [ 1, %skip_space.exit.i45 ], [ 0, %.lr.ph83 ]
  %i.ac = getelementptr inbounds nuw i8, ptr %i.n, i64 12 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 4
  %i.ae = and i8 %i.ad, -2
  %i.af = or disjoint i8 %i.ae, %.0.i40
  store i8 %i.af, ptr %i.ac, align 4
  %i.ag = call fastcc i32 @parse_name(ptr noundef %0, ptr noundef %i.a, ptr noundef %i.n)
  %.not33 = icmp eq i32 %i.ag, 0
  br i1 %.not33, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %match_ch.exit46
  %i.ah = load ptr, ptr %i.a, align 8, !tbaa !13  ; 4 uses
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !9
  %i.aj = icmp eq i8 %i.ai, 61
  br i1 %i.aj, label %.preheader.i48, label %bb.e

.preheader.i48:                                   ; preds = %bb.d, %.preheader.i48
  %.pn.i49 = phi ptr [ %.0.i.i50, %.preheader.i48 ], [ %i.ah, %bb.d ]
  %.0.i.i50 = getelementptr inbounds nuw i8, ptr %.pn.i49, i64 1 ; 3 uses
  %i.ak = load i8, ptr %.0.i.i50, align 1, !tbaa !9
  %i.al = sext i8 %i.ak to i32
  %i.am = tail call i32 @ossl_ctype_check(i32 noundef %i.al, i32 noundef 8) #9
  %.not.i.i51 = icmp eq i32 %i.am, 0
  br i1 %.not.i.i51, label %.loopexit80, label %.preheader.i48, !llvm.loop !0

bb.e:                                             ; preds = %bb.d
  %i.an = tail call i32 @OPENSSL_strncasecmp(ptr noundef nonnull %i.ah, ptr noundef nonnull @.str.3, i64 noundef 2) #9
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ah, i64 2
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %.0.i.i55 = phi ptr [ %i.ap, %bb.f ], [ %i.at, %bb.g ] ; 3 uses
  %i.aq = load i8, ptr %.0.i.i55, align 1, !tbaa !9
  %i.ar = sext i8 %i.aq to i32
  %i.as = tail call i32 @ossl_ctype_check(i32 noundef %i.ar, i32 noundef 8) #9
  %.not.i.i56 = icmp eq i32 %i.as, 0
  %i.at = getelementptr inbounds nuw i8, ptr %.0.i.i55, i64 1
  br i1 %.not.i.i56, label %.loopexit80, label %bb.g, !llvm.loop !0

bb.h:                                             ; preds = %bb.e
  %i.au = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i32 0, ptr %i.au, align 8, !tbaa !15
  %i.av = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  store i32 0, ptr %i.av, align 4, !tbaa !17
  store i32 1, ptr %i.p, align 8, !tbaa !9
  br label %bb.j

.loopexit80:                                      ; preds = %bb.g, %.preheader.i48
  %.0.i.i55.lcssa.sink = phi ptr [ %.0.i.i50, %.preheader.i48 ], [ %.0.i.i55, %bb.g ]
  %.sink = phi i32 [ 0, %.preheader.i48 ], [ 1, %bb.g ]
  store ptr %.0.i.i55.lcssa.sink, ptr %i.a, align 8, !tbaa !13
  %i.aw = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i32 %.sink, ptr %i.aw, align 8, !tbaa !15
  %i.ax = call fastcc i32 @parse_value(ptr noundef %0, ptr noundef %i.a, ptr noundef %i.n, i32 noundef %2)
  %.not36 = icmp eq i32 %i.ax, 0
  br i1 %.not36, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.loopexit80
  %i.ay = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  store i32 2, ptr %i.ay, align 4, !tbaa !17
  br label %bb.j

bb.j:                                             ; preds = %.loopexit80, %bb.i, %bb.c, %bb.h
  %i.az = tail call i32 @OPENSSL_sk_push(ptr noundef nonnull %i.e, ptr noundef nonnull %i.n) #9
  %.not38 = icmp eq i32 %i.az, 0
  br i1 %.not38, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ba = load ptr, ptr %i.a, align 8, !tbaa !13  ; 3 uses
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !9
  switch i8 %i.bb, label %bb.l [
    i8 44, label %.preheader.i59
    i8 0, label %._crit_edge.thread
  ]

.preheader.i59:                                   ; preds = %bb.k, %.preheader.i59
  %.pn.i60 = phi ptr [ %.0.i.i61, %.preheader.i59 ], [ %i.ba, %bb.k ]
  %.0.i.i61 = getelementptr inbounds nuw i8, ptr %.pn.i60, i64 1 ; 4 uses
  %i.bc = load i8, ptr %.0.i.i61, align 1, !tbaa !9
  %i.bd = sext i8 %i.bc to i32
  %i.be = tail call i32 @ossl_ctype_check(i32 noundef %i.bd, i32 noundef 8) #9
  %.not.i.i62 = icmp eq i32 %i.be, 0
  br i1 %.not.i.i62, label %skip_space.exit.i63, label %.preheader.i59, !llvm.loop !0

skip_space.exit.i63:                              ; preds = %.preheader.i59
  store ptr %.0.i.i61, ptr %i.a, align 8, !tbaa !13
  %i.bf = tail call noalias ptr @CRYPTO_malloc(i64 noundef 24, ptr noundef nonnull @.str, i32 noundef 418) #9 ; 2 uses
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %.loopexit, label %.lr.ph83

bb.l:                                             ; preds = %bb.k
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 455, ptr noundef nonnull @__func__.ossl_parse_query) #9
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 55, i32 noundef 110, ptr noundef nonnull @.str.2, ptr noundef nonnull %i.ba) #9
  br label %.loopexit

._crit_edge.thread:                               ; preds = %bb.k, %skip_space.exit
  %i.bh = tail call fastcc ptr @stack_to_property_list(ptr noundef %0, ptr noundef %i.e)
  br label %.loopexit

.loopexit:                                        ; preds = %skip_space.exit.i63, %bb.c, %match_ch.exit46, %bb.j, %.lr.ph.preheader, %._crit_edge.thread, %bb.l
  %.027 = phi ptr [ null, %bb.l ], [ %i.bh, %._crit_edge.thread ], [ null, %.lr.ph.preheader ], [ null, %bb.j ], [ null, %match_ch.exit46 ], [ null, %bb.c ], [ null, %skip_space.exit.i63 ]
  %.1 = phi ptr [ null, %bb.l ], [ null, %._crit_edge.thread ], [ null, %.lr.ph.preheader ], [ null, %skip_space.exit.i63 ], [ %i.n, %bb.c ], [ %i.n, %match_ch.exit46 ], [ %i.n, %bb.j ]
  tail call void @CRYPTO_free(ptr noundef %.1, ptr noundef nonnull @.str, i32 noundef 462) #9
  %i.bi = tail call ptr @OPENSSL_sk_set_thunks(ptr noundef nonnull %i.e, ptr noundef nonnull @sk_OSSL_PROPERTY_DEFINITION_freefunc_thunk) #9
  tail call void @OPENSSL_sk_pop_free(ptr noundef %i.bi, ptr noundef nonnull @pd_free) #9
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %bb.b, %.loopexit
  %.028 = phi ptr [ %.027, %.loopexit ], [ null, %bb.b ], [ null, %bb.a ]
  ret ptr %.028
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define i32 @ossl_property_match_count(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i32, ptr %0, align 8, !tbaa !20     ; 3 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph.lr.ph.preheader, label %.critedge

.lr.ph.lr.ph.preheader:                           ; preds = %bb.a
  %i.e = zext nneg i32 %i.c to i64
  br label %.lr.ph.lr.ph

.lr.ph.lr.ph:                                     ; preds = %.lr.ph.lr.ph.preheader, %.outer.outer.backedge
  %.058.ph.ph126 = phi i32 [ %.058.ph.ph.be, %.outer.outer.backedge ], [ 0, %.lr.ph.lr.ph.preheader ] ; 7 uses
  %.059.ph.ph125 = phi i32 [ %.059.ph.ph.be, %.outer.outer.backedge ], [ 0, %.lr.ph.lr.ph.preheader ] ; 3 uses
  %.061.ph.ph124 = phi i32 [ %.061.ph.ph.be, %.outer.outer.backedge ], [ 0, %.lr.ph.lr.ph.preheader ]
  %i.f = sext i32 %.061.ph.ph124 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %.outer
  %indvars.iv = phi i64 [ %i.f, %.lr.ph.lr.ph ], [ %indvars.iv.next, %.outer ] ; 3 uses
  %i.g = getelementptr inbounds [24 x i8], ptr %i.a, i64 %indvars.iv ; 10 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load i32, ptr %i.h, align 8, !tbaa !15   ; 4 uses
  %i.j = icmp eq i32 %i.i, 2
  br i1 %i.j, label %.outer, label %.lr.ph.split.split.us

.lr.ph.split.split.us:                            ; preds = %.lr.ph
  %i.k = trunc nsw i64 %indvars.iv to i32
  %i.l = load i32, ptr %1, align 8, !tbaa !20     ; 3 uses
  %i.m = icmp slt i32 %.059.ph.ph125, %i.l
  br i1 %i.m, label %.lr.ph116, label %.loopexit

.lr.ph116:                                        ; preds = %.lr.ph.split.split.us
  %i.n = load i32, ptr %i.g, align 8, !tbaa !16   ; 2 uses
  %i.o = sext i32 %.059.ph.ph125 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph116, %bb.c
  %indvars.iv143 = phi i64 [ %i.o, %.lr.ph116 ], [ %indvars.iv.next144, %bb.c ] ; 3 uses
  %i.p = getelementptr inbounds [24 x i8], ptr %i.b, i64 %indvars.iv143 ; 3 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !16   ; 2 uses
  %i.r = icmp sgt i32 %i.n, %i.q
  br i1 %i.r, label %bb.c, label %.split.us105

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next144 = add nsw i64 %indvars.iv143, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next144 to i32
  %exitcond.not = icmp eq i32 %i.l, %lftr.wideiv
  br i1 %exitcond.not, label %.loopexit, label %bb.b

.outer:                                           ; preds = %.lr.ph
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %2 = icmp slt i64 %indvars.iv.next, %i.e
  br i1 %2, label %.lr.ph, label %.critedge, !llvm.loop !32

.split.us105:                                     ; preds = %bb.b
  %i.s = trunc nsw i64 %indvars.iv143 to i32      ; 2 uses
  %i.t = icmp eq i32 %i.n, %i.q
  br i1 %i.t, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %.split.us105
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !17
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !17
  %i.y = icmp eq i32 %i.v, %i.x
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.ab = load i64, ptr %i.z, align 1
  %i.ac = load i64, ptr %i.aa, align 1
  %i.ad = icmp ne i64 %i.ab, %i.ac                ; 2 uses
  %i.ae = zext i1 %i.ad to i32                    ; 0 uses
  %i.af = zext i1 %i.ad to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %not. = phi i32 [ 1, %bb.d ], [ %i.af, %bb.e ]
  %or.cond75.not = icmp eq i32 %i.i, %not.
  br i1 %or.cond75.not, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ag = add nsw i32 %.058.ph.ph126, 1
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.ai = load i8, ptr %i.ah, align 4
  %i.aj = and i8 %i.ai, 1
  %.not74 = icmp eq i8 %i.aj, 0
  br i1 %.not74, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.1 = phi i32 [ %i.ag, %bb.g ], [ %.058.ph.ph126, %bb.h ]
  %i.ak = add nsw i32 %i.s, 1
  br label %.outer.outer.backedge

.loopexit:                                        ; preds = %bb.c, %.lr.ph.split.split.us, %.split.us105
  %.05980 = phi i32 [ %i.s, %.split.us105 ], [ %.059.ph.ph125, %.lr.ph.split.split.us ], [ %i.l, %bb.c ] ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !17
  switch i32 %i.am, label %bb.p [
    i32 2, label %bb.j
    i32 0, label %bb.m
  ]

bb.j:                                             ; preds = %.loopexit
  %i.an = icmp eq i32 %i.i, 1
  br i1 %i.an, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ao = add nsw i32 %.058.ph.ph126, 1
  br label %.outer.outer.backedge

bb.l:                                             ; preds = %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.aq = load i8, ptr %i.ap, align 4
  %i.ar = and i8 %i.aq, 1
  %.not72 = icmp eq i8 %i.ar, 0
  br i1 %.not72, label %.critedge, label %.outer.outer.backedge

bb.m:                                             ; preds = %.loopexit
  switch i32 %i.i, label %bb.q [
    i32 0, label %bb.n
    i32 1, label %bb.o
  ]

bb.n:                                             ; preds = %bb.m
  %i.as = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.at = load i32, ptr %i.as, align 8, !tbaa !9
  %.not70 = icmp eq i32 %i.at, 2
  br i1 %.not70, label %bb.q, label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.au = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.av = load i32, ptr %i.au, align 8, !tbaa !9
  %i.aw = icmp eq i32 %i.av, 2
  br i1 %i.aw, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.loopexit, %bb.o, %bb.n
  %i.ax = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.ay = load i8, ptr %i.ax, align 4
  %i.az = and i8 %i.ay, 1
  %.not71 = icmp eq i8 %i.az, 0
  br i1 %.not71, label %.critedge, label %.outer.outer.backedge

bb.q:                                             ; preds = %bb.n, %bb.m, %bb.o
  %i.ba = add nsw i32 %.058.ph.ph126, 1
  br label %.outer.outer.backedge

.outer.outer.backedge:                            ; preds = %bb.l, %bb.k, %bb.p, %bb.q, %bb.i
  %.059.ph.ph.be = phi i32 [ %i.ak, %bb.i ], [ %.05980, %bb.q ], [ %.05980, %bb.p ], [ %.05980, %bb.k ], [ %.05980, %bb.l ]
  %.058.ph.ph.be = phi i32 [ %.1, %bb.i ], [ %i.ba, %bb.q ], [ %.058.ph.ph126, %bb.p ], [ %i.ao, %bb.k ], [ %.058.ph.ph126, %bb.l ] ; 2 uses
  %.061.ph.ph.be = add nsw i32 %i.k, 1            ; 2 uses
  %i.bb = icmp slt i32 %.061.ph.ph.be, %i.c
  br i1 %i.bb, label %.lr.ph.lr.ph, label %.critedge, !llvm.loop !32

.critedge:                                        ; preds = %bb.h, %bb.p, %bb.l, %.outer.outer.backedge, %.outer, %bb.a
  %.265 = phi i32 [ 0, %bb.a ], [ %.058.ph.ph126, %.outer ], [ %.058.ph.ph.be, %.outer.outer.backedge ], [ -1, %bb.l ], [ -1, %bb.p ], [ -1, %bb.h ]
  ret i32 %.265
}

; Function Attrs: nounwind uwtable
define void @ossl_property_free(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @CRYPTO_free(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef 531) #9
  ret void
}

; Function Attrs: nounwind uwtable
define ptr @ossl_property_merge(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load i32, ptr %0, align 8, !tbaa !20
  %i.d = load i32, ptr %1, align 8, !tbaa !20
  %i.e = add nsw i32 %i.d, %i.c
  %i.f = tail call i32 @llvm.usub.sat.i32(i32 %i.e, i32 1)
  %i.g = sext i32 %i.f to i64
  %i.h = mul nsw i64 %i.g, 24
  %i.i = add nsw i64 %i.h, 32
  %i.j = tail call noalias ptr @CRYPTO_malloc(i64 noundef %i.i, ptr noundef nonnull @.str, i32 noundef 549) #9 ; 5 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 4 ; 3 uses
  %i.m = load i8, ptr %i.l, align 4
  %i.n = and i8 %i.m, -2                          ; 2 uses
  store i8 %i.n, ptr %i.l, align 4
  %i.o = load i32, ptr %0, align 8, !tbaa !20
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.q = load i32, ptr %1, align 8, !tbaa !20
  br label %bb.c

bb.c:                                             ; preds = %bb.j, %bb.b
  %i.r = phi i8 [ %i.an, %bb.j ], [ %i.n, %bb.b ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.j ], [ 0, %bb.b ] ; 3 uses
  %.043 = phi i32 [ %.144, %bb.j ], [ 0, %bb.b ]  ; 7 uses
  %.042 = phi i32 [ %.2, %bb.j ], [ 0, %bb.b ]    ; 7 uses
  %i.s = icmp slt i32 %.043, %i.o
  %.not50 = icmp slt i32 %.042, %i.q              ; 2 uses
  br i1 %i.s, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %.not50, label %.critedge, label %bb.k

.critedge:                                        ; preds = %bb.d
  %i.t = add nsw i32 %.042, 1
  %i.u = sext i32 %.042 to i64
  %i.v = getelementptr inbounds [24 x i8], ptr %i.b, i64 %i.u
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  br i1 %.not50, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = add nsw i32 %.043, 1
  %i.x = sext i32 %.043 to i64
  %i.y = getelementptr inbounds [24 x i8], ptr %i.a, i64 %i.x
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.z = sext i32 %.043 to i64
  %i.aa = getelementptr inbounds [24 x i8], ptr %i.a, i64 %i.z ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !16 ; 2 uses
  %i.ac = sext i32 %.042 to i64
  %i.ad = getelementptr inbounds [24 x i8], ptr %i.b, i64 %i.ac ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !16 ; 2 uses
  %.not51 = icmp sgt i32 %i.ab, %i.ae
  br i1 %.not51, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = icmp eq i32 %i.ab, %i.ae
  %i.ag = zext i1 %i.af to i32
  %spec.select = add nsw i32 %.042, %i.ag
  %i.ah = add nsw i32 %.043, 1
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ai = add nsw i32 %.042, 1
  br label %bb.j

bb.j:                                             ; preds = %bb.f, %bb.i, %bb.h, %.critedge
  %.045 = phi ptr [ %i.v, %.critedge ], [ %i.y, %bb.f ], [ %i.aa, %bb.h ], [ %i.ad, %bb.i ] ; 2 uses
  %.144 = phi i32 [ %.043, %.critedge ], [ %i.w, %bb.f ], [ %i.ah, %bb.h ], [ %.043, %bb.i ]
  %.2 = phi i32 [ %i.t, %.critedge ], [ %.042, %bb.f ], [ %spec.select, %bb.h ], [ %i.ai, %bb.i ]
  %i.aj = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %indvars.iv
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, ptr noundef nonnull align 8 dereferenceable(24) %.045, i64 24, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %.045, i64 12
  %i.al = load i8, ptr %i.ak, align 4
  %i.am = and i8 %i.al, 1
  %i.an = or i8 %i.am, %i.r                       ; 2 uses
  store i8 %i.an, ptr %i.l, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %bb.c, !llvm.loop !33

bb.k:                                             ; preds = %bb.d
  %i.ao = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.ao, ptr %i.j, align 8, !tbaa !20
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %bb.k
  ret ptr %i.j
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @ossl_property_parse_init(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @ossl_property_name(ptr noundef %0, ptr noundef nonnull @.str.4, i32 noundef 1) #9
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @ossl_property_name(ptr noundef %0, ptr noundef nonnull @.str.5, i32 noundef 1) #9
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @ossl_property_name(ptr noundef %0, ptr noundef nonnull @.str.6, i32 noundef 1) #9
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i32 @ossl_property_name(ptr noundef %0, ptr noundef nonnull @.str.7, i32 noundef 1) #9
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = tail call i32 @ossl_property_name(ptr noundef %0, ptr noundef nonnull @.str.8, i32 noundef 1) #9
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = tail call i32 @ossl_property_name(ptr noundef %0, ptr noundef nonnull @.str.9, i32 noundef 1) #9
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = tail call i32 @ossl_property_value(ptr noundef %0, ptr noundef nonnull @.str.10, i32 noundef 1) #9
  %.not = icmp eq i32 %i.m, 1
  br i1 %.not, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %bb.g
  %i.n = tail call i32 @ossl_property_value(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef 1) #9
  %.not7 = icmp eq i32 %i.n, 2
  br i1 %.not7, label %bb.i, label %.loopexit

.loopexit:                                        ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.loopexit
  %.06 = phi i32 [ 0, %.loopexit ], [ 1, %bb.h ]
  ret i32 %.06
}

declare i32 @ossl_property_name(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @ossl_property_value(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define i64 @ossl_property_list_to_string(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 14 uses
  %i.b = alloca i64, align 8                      ; 16 uses
  %i.c = alloca i64, align 8                      ; 24 uses
  store ptr %2, ptr %i.a, align 8, !tbaa !13
  store i64 %3, ptr %i.b, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i64 0, ptr %i.c, align 8, !tbaa !22
  %i.d = icmp eq ptr %1, null
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.not30 = icmp eq i64 %3, 0
  br i1 %.not30, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr %2, align 1, !tbaa !9
  br label %.loopexit

bb.d:                                             ; preds = %bb.a
  %i.e = load i32, ptr %1, align 8, !tbaa !20     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.g = zext nneg i32 %i.e to i64
  %i.h = getelementptr [24 x i8], ptr %1, i64 %i.g
  %i.i = getelementptr i8, ptr %i.h, i64 -16
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %put_num.exit
  %.153 = phi ptr [ %i.bt, %put_num.exit ], [ %i.i, %.lr.ph.preheader ] ; 9 uses
  %.02252 = phi i32 [ %i.bs, %put_num.exit ], [ 0, %.lr.ph.preheader ]
  %i.j = load i32, ptr %.153, align 8, !tbaa !16
end_hunk_0
