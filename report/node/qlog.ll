inline.NumInlined: 59
inline.NumDeleted: 27
begin_hunk_0_@ossl_qlog_new_from_env:bb.a
  br i1 %or.cond, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #10 ; 7 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i8, ptr %i.a, align 1, !tbaa !10
  %.not.i.i = icmp eq i8 %i.g, 0
  br i1 %.not.i.i, label %ossl_ends_with_dirsep.exit.thread.i, label %ossl_ends_with_dirsep.exit.i

ossl_ends_with_dirsep.exit.i:                     ; preds = %bb.c
  %i.h = getelementptr i8, ptr %i.a, i64 %i.e
  %i.i = getelementptr i8, ptr %i.h, i64 -1
  %.pre.i.i = load i8, ptr %i.i, align 1, !tbaa !10
  %.pre.i.fr.i = freeze i8 %.pre.i.i
  %.not.i = icmp eq i8 %.pre.i.fr.i, 47
  br i1 %.not.i, label %ossl_determine_dirsep.exit, label %ossl_ends_with_dirsep.exit.thread.i

ossl_ends_with_dirsep.exit.thread.i:              ; preds = %ossl_ends_with_dirsep.exit.i, %bb.c
  br label %ossl_determine_dirsep.exit

ossl_determine_dirsep.exit:                       ; preds = %ossl_ends_with_dirsep.exit.i, %ossl_ends_with_dirsep.exit.thread.i
  %.not = phi i1 [ false, %ossl_ends_with_dirsep.exit.thread.i ], [ true, %ossl_ends_with_dirsep.exit.i ]
  %i.j = phi i8 [ 47, %ossl_ends_with_dirsep.exit.thread.i ], [ 0, %ossl_ends_with_dirsep.exit.i ]
  %i.k = add i64 %i.e, 1
  %i.l = load i8, ptr %0, align 8, !tbaa !35
  %i.m = zext i8 %i.l to i64
  %i.n = shl nuw nsw i64 %i.m, 1
  %i.o = add i64 %i.e, 15
  %i.p = add i64 %i.o, %i.n                       ; 3 uses
  %i.q = tail call noalias ptr @CRYPTO_malloc(i64 noundef %i.p, ptr noundef nonnull @.str, i32 noundef 125) #9 ; 8 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.n, label %bb.d

bb.d:                                             ; preds = %ossl_determine_dirsep.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.q, ptr nonnull align 1 %i.a, i64 %i.e, i1 false)
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.e
  store i8 %i.j, ptr %i.s, align 1, !tbaa !10
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.045 = phi i64 [ %i.k, %bb.e ], [ %i.e, %bb.d ] ; 2 uses
  %i.t = load i8, ptr %0, align 8, !tbaa !35
  %.not61 = icmp eq i8 %i.t, 0
  br i1 %.not61, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.g
  %.160 = phi i64 [ %.045, %.lr.ph ], [ %i.ac, %bb.g ] ; 3 uses
  %.04659 = phi i64 [ 0, %.lr.ph ], [ %i.ad, %bb.g ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 %.160
  %i.w = sub i64 %i.p, %.160
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 %.04659
  %i.y = load i8, ptr %i.x, align 1, !tbaa !10
  %i.z = zext i8 %i.y to i32
  %i.aa = tail call i32 (ptr, i64, ptr, ...) @BIO_snprintf(ptr noundef nonnull %i.v, i64 noundef %i.w, ptr noundef nonnull @.str.3, i32 noundef %i.z) #9
  %i.ab = sext i32 %i.aa to i64
  %i.ac = add i64 %.160, %i.ab                    ; 2 uses
  %i.ad = add nuw nsw i64 %.04659, 1              ; 2 uses
  %i.ae = load i8, ptr %0, align 8, !tbaa !35
  %i.af = zext i8 %i.ae to i64
  %i.ag = icmp samesign ult i64 %i.ad, %i.af
  br i1 %i.ag, label %bb.g, label %._crit_edge, !llvm.loop !36

._crit_edge:                                      ; preds = %bb.g, %bb.f
  %.1.lcssa = phi i64 [ %.045, %bb.f ], [ %i.ac, %bb.g ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.q, i64 %.1.lcssa
  %i.ai = sub i64 %i.p, %.1.lcssa
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !11
  %.not54 = icmp eq i32 %i.ak, 0
  %i.al = select i1 %.not54, ptr @.str.6, ptr @.str.5
  %i.am = tail call i32 (ptr, i64, ptr, ...) @BIO_snprintf(ptr noundef nonnull %i.ah, i64 noundef %i.ai, ptr noundef nonnull @.str.4, ptr noundef nonnull %i.al) #9 ; 0 uses
  %i.an = tail call ptr @ossl_qlog_new(ptr noundef nonnull %0) ; 6 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %ossl_qlog_set_sink_filename.exit.thread, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  %i.ap = tail call ptr @BIO_new_file(ptr noundef nonnull %i.q, ptr noundef nonnull @.str.8) #9 ; 3 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %ossl_qlog_set_sink_filename.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 152 ; 2 uses
  %i.as = tail call i32 @ossl_json_flush(ptr noundef nonnull %i.ar) #9 ; 0 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 88 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !38
  tail call void @BIO_free_all(ptr noundef %i.au) #9
  store ptr %i.ap, ptr %i.at, align 8, !tbaa !38
  %i.av = tail call i32 @ossl_json_set0_sink(ptr noundef nonnull %i.ar, ptr noundef nonnull %i.ap) #9 ; 0 uses
  %i.aw = icmp eq ptr %i.b, null
  br i1 %i.aw, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ax = load i8, ptr %i.b, align 1, !tbaa !10
  %i.ay = icmp eq i8 %i.ax, 0
  br i1 %i.ay, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.i
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.047 = phi ptr [ @.str.7, %bb.k ], [ %i.b, %bb.j ]
  %i.az = tail call i32 @ossl_qlog_set_filter(ptr noundef nonnull %i.an, ptr noundef nonnull %.047)
  %.not56 = icmp eq i32 %i.az, 0
  br i1 %.not56, label %ossl_qlog_set_sink_filename.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @CRYPTO_free(ptr noundef nonnull %i.q, ptr noundef nonnull @.str, i32 noundef 152) #9
  br label %bb.n

ossl_qlog_set_sink_filename.exit.thread:          ; preds = %bb.h, %bb.l, %._crit_edge
  tail call void @CRYPTO_free(ptr noundef nonnull %i.q, ptr noundef nonnull @.str, i32 noundef 156) #9
  tail call void @ossl_qlog_free(ptr noundef %i.an)
  br label %bb.n

bb.n:                                             ; preds = %ossl_determine_dirsep.exit, %bb.b, %bb.a, %ossl_qlog_set_sink_filename.exit.thread, %bb.m
  %.0 = phi ptr [ %i.an, %bb.m ], [ null, %bb.a ], [ null, %bb.b ], [ null, %ossl_qlog_set_sink_filename.exit.thread ], [ null, %ossl_determine_dirsep.exit ]
  ret ptr %.0
}

declare ptr @ossl_safe_getenv(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

declare noalias ptr @CRYPTO_malloc(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @BIO_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @ossl_qlog_set_sink_filename(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @BIO_new_file(ptr noundef %1, ptr noundef nonnull @.str.8) #9 ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %ossl_qlog_set_sink_bio.exit

ossl_qlog_set_sink_bio.exit:                      ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.e = tail call i32 @ossl_json_flush(ptr noundef nonnull %i.d) #9 ; 0 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !38
  tail call void @BIO_free_all(ptr noundef %i.g) #9
  store ptr %i.b, ptr %i.f, align 8, !tbaa !38
  %i.h = tail call i32 @ossl_json_set0_sink(ptr noundef nonnull %i.d, ptr noundef nonnull %i.b) #9 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %ossl_qlog_set_sink_bio.exit, %bb.b, %bb.a
  %.0 = phi i32 [ 1, %ossl_qlog_set_sink_bio.exit ], [ 0, %bb.a ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @ossl_qlog_set_filter(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
lex_init.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #10
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %i.c ; 3 uses
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %lex_init.exit
  %.sroa.18.0 = phi ptr [ %1, %lex_init.exit ], [ %.0.i36.ptr, %.backedge.backedge ]
  %.sroa.0.0 = phi i64 [ %i.b, %lex_init.exit ], [ %.sroa.0.0.be, %.backedge.backedge ] ; 8 uses
  br label %bb.a

bb.a:                                             ; preds = %is_term_sep_ws.exit.i, %.backedge
  %.022.i = phi ptr [ %.sroa.18.0, %.backedge ], [ %i.g, %is_term_sep_ws.exit.i ] ; 10 uses
  %i.e = load i8, ptr %.022.i, align 1, !tbaa !10 ; 6 uses
  switch i8 %i.e, label %is_term_sep_ws.exit.thread.i [
    i8 32, label %is_term_sep_ws.exit.i
    i8 13, label %is_term_sep_ws.exit.i
    i8 10, label %is_term_sep_ws.exit.i
    i8 9, label %is_term_sep_ws.exit.i
  ]

is_term_sep_ws.exit.i:                            ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  %i.f = icmp ult ptr %.022.i, %i.d
  %i.g = getelementptr inbounds nuw i8, ptr %.022.i, i64 1
  br i1 %i.f, label %bb.a, label %is_term_sep_ws.exit.thread.i, !llvm.loop !39

is_term_sep_ws.exit.thread.i:                     ; preds = %is_term_sep_ws.exit.i, %bb.a
  %i.h = icmp eq ptr %.022.i, %i.d
  br i1 %i.h, label %lex_do.exit, label %.preheader.i

.preheader.i:                                     ; preds = %is_term_sep_ws.exit.thread.i, %bb.b
  %i.i = phi i8 [ %.pre.i, %bb.b ], [ %i.e, %is_term_sep_ws.exit.thread.i ] ; 2 uses
  %.0.i36.idx = phi i64 [ %.0.i36.add, %bb.b ], [ 0, %is_term_sep_ws.exit.thread.i ] ; 4 uses
  %.0.i36.ptr = getelementptr inbounds nuw i8, ptr %.022.i, i64 %.0.i36.idx ; 7 uses
  switch i8 %i.i, label %is_term_sep_ws.exit25.i [
    i8 32, label %bb.c
    i8 13, label %bb.c
    i8 10, label %bb.c
  ]

is_term_sep_ws.exit25.i:                          ; preds = %.preheader.i
  %i.j = icmp ne i8 %i.i, 9
  %i.k = icmp ult ptr %.0.i36.ptr, %i.d
  %i.l = select i1 %i.j, i1 %i.k, i1 false
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %is_term_sep_ws.exit25.i
  %.0.i36.add = add nuw nsw i64 %.0.i36.idx, 1    ; 2 uses
  %.ptr = getelementptr inbounds nuw i8, ptr %.022.i, i64 %.0.i36.add
  %.pre.i = load i8, ptr %.ptr, align 1, !tbaa !10
  br label %.preheader.i, !llvm.loop !40

bb.c:                                             ; preds = %is_term_sep_ws.exit25.i, %.preheader.i, %.preheader.i, %.preheader.i
  %.not.i = icmp samesign eq i64 %.0.i36.idx, 0
  br i1 %.not.i, label %lex_peek_char.exit.thread, label %lex_peek_char.exit

lex_peek_char.exit:                               ; preds = %bb.c
  %i.m = sext i8 %i.e to i32
  %sext = shl nsw i32 %i.m, 24
  switch i8 %i.e, label %lex_peek_char.exit.thread [
    i8 45, label %lex_skip_char.exit
    i8 43, label %lex_skip_char.exit
  ]

lex_skip_char.exit:                               ; preds = %lex_peek_char.exit, %lex_peek_char.exit
  %i.n = icmp eq i8 %i.e, 43                      ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.022.i, i64 1 ; 4 uses
  %.not.i39 = icmp eq i64 %.0.i36.idx, 1
  br i1 %.not.i39, label %lex_peek_char.exit40, label %bb.d

bb.d:                                             ; preds = %lex_skip_char.exit
  %i.p = load i8, ptr %i.o, align 1, !tbaa !10
  %i.q = sext i8 %i.p to i32
  br label %lex_peek_char.exit40

lex_peek_char.exit40:                             ; preds = %lex_skip_char.exit, %bb.d
  %i.r = phi i32 [ %i.q, %bb.d ], [ -1, %lex_skip_char.exit ] ; 5 uses
  %i.s = tail call i32 @ossl_ctype_check(i32 noundef %i.r, i32 noundef 3) #9
  %.not.i41 = icmp eq i32 %i.s, 0
  br i1 %.not.i41, label %bb.e, label %is_name_char.exit.thread

bb.e:                                             ; preds = %lex_peek_char.exit40
  %i.t = tail call i32 @ossl_isdigit(i32 noundef %i.r) #9
  %i.u = icmp ne i32 %i.t, 0
  %i.v = icmp eq i32 %i.r, 95
  %or.cond.i = or i1 %i.v, %i.u
  br i1 %or.cond.i, label %is_name_char.exit.thread, label %is_name_char.exit

is_name_char.exit:                                ; preds = %bb.e
  %i.w = icmp ne i32 %i.r, 45
  %sext24.mask = and i32 %i.r, 255
  %i.x = icmp ne i32 %sext24.mask, 42
  %or.cond5 = and i1 %i.w, %i.x
  br i1 %or.cond5, label %.loopexit, label %is_name_char.exit.thread

lex_peek_char.exit.thread:                        ; preds = %bb.c, %lex_peek_char.exit
  %sext125 = phi i32 [ %sext, %lex_peek_char.exit ], [ -16777216, %bb.c ]
  %i.y = phi i8 [ %i.e, %lex_peek_char.exit ], [ -1, %bb.c ] ; 3 uses
  %i.z = sext i8 %i.y to i32                      ; 2 uses
  %i.aa = tail call i32 @ossl_ctype_check(i32 noundef %i.z, i32 noundef 3) #9
  %.not.i42 = icmp eq i32 %i.aa, 0
  br i1 %.not.i42, label %bb.f, label %is_name_char.exit.thread

bb.f:                                             ; preds = %lex_peek_char.exit.thread
  %i.ab = tail call i32 @ossl_isdigit(i32 noundef %i.z) #9
  %i.ac = icmp ne i32 %i.ab, 0
  %i.ad = icmp eq i8 %i.y, 95
  %or.cond.i43 = or i1 %i.ad, %i.ac
  br i1 %or.cond.i43, label %is_name_char.exit.thread, label %is_name_char.exit44

is_name_char.exit44:                              ; preds = %bb.f
  %i.ae = icmp ne i8 %i.y, 45
  %i.af = icmp ne i32 %sext125, 704643072
  %or.cond8 = and i1 %i.af, %i.ae
  br i1 %or.cond8, label %.loopexit, label %is_name_char.exit.thread

is_name_char.exit.thread:                         ; preds = %lex_peek_char.exit.thread, %bb.f, %lex_peek_char.exit40, %bb.e, %is_name_char.exit44, %is_name_char.exit
  %.sroa.0105.0 = phi ptr [ %.022.i, %is_name_char.exit44 ], [ %i.o, %is_name_char.exit ], [ %i.o, %lex_peek_char.exit40 ], [ %i.o, %bb.e ], [ %.022.i, %bb.f ], [ %.022.i, %lex_peek_char.exit.thread ] ; 10 uses
  %.0.shrunk = phi i1 [ true, %is_name_char.exit44 ], [ %i.n, %is_name_char.exit ], [ %i.n, %lex_peek_char.exit40 ], [ %i.n, %bb.e ], [ true, %bb.f ], [ true, %lex_peek_char.exit.thread ] ; 14 uses
  %i.ag = ptrtoint ptr %.0.i36.ptr to i64         ; 2 uses
  %i.ah = ptrtoint ptr %.sroa.0105.0 to i64       ; 2 uses
  %i.ai = sub i64 %i.ag, %i.ah
  %.not.i45 = icmp eq i64 %i.ai, 1
  br i1 %.not.i45, label %lex_match.exit, label %lex_match.exit.thread

lex_match.exit:                                   ; preds = %is_name_char.exit.thread
  %lhsc.i = load i8, ptr %.sroa.0105.0, align 1
  %.not7.i.not = icmp eq i8 %lhsc.i, 42
  br i1 %.not7.i.not, label %bb.g, label %lex_match.exit.thread

bb.g:                                             ; preds = %lex_match.exit
  %i.aj = and i64 %.sroa.0.0, -255
  %masksel.i = select i1 %.0.shrunk, i64 2, i64 0
  %storemerge.i.i = or disjoint i64 %masksel.i, %i.aj
  %masksel176.i = select i1 %.0.shrunk, i64 4, i64 0
  %storemerge.i61.i = or disjoint i64 %storemerge.i.i, %masksel176.i
  %masksel177.i = select i1 %.0.shrunk, i64 8, i64 0
  %storemerge.i76.i = or disjoint i64 %storemerge.i61.i, %masksel177.i
  %masksel178.i = select i1 %.0.shrunk, i64 16, i64 0
  %storemerge.i91.i = or disjoint i64 %storemerge.i76.i, %masksel178.i
  %masksel179.i = select i1 %.0.shrunk, i64 32, i64 0
  %masksel180.i = select i1 %.0.shrunk, i64 64, i64 0
  %.masked = or disjoint i64 %storemerge.i91.i, %masksel179.i
  %i.ak = or i64 %.masked, %masksel180.i
  %masksel181.i = select i1 %.0.shrunk, i64 128, i64 0
  %storemerge.i136.i = or disjoint i64 %i.ak, %masksel181.i
  br label %.backedge.backedge

lex_match.exit.thread:                            ; preds = %is_name_char.exit.thread, %lex_match.exit
  %i.al = icmp ult ptr %.sroa.0105.0, %.0.i36.ptr
  br i1 %i.al, label %.lr.ph.preheader.i, label %.critedge.i

.lr.ph.preheader.i:                               ; preds = %lex_match.exit.thread
  %2 = ptrtoaddr ptr %.0.i36.ptr to i64
  %3 = ptrtoaddr ptr %.sroa.0105.0 to i64
  %4 = sub i64 %2, %3
  %scevgep.i = getelementptr i8, ptr %.sroa.0105.0, i64 %4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h, %.lr.ph.preheader.i
  %.018.i = phi ptr [ %i.an, %bb.h ], [ %.sroa.0105.0, %.lr.ph.preheader.i ] ; 3 uses
  %i.am = load i8, ptr %.018.i, align 1, !tbaa !10
  %.not.i47 = icmp eq i8 %i.am, 58
  br i1 %.not.i47, label %.critedge.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i
  %i.an = getelementptr inbounds nuw i8, ptr %.018.i, i64 1 ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.an, %.0.i36.ptr
  br i1 %exitcond.not.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !41

.critedge.i:                                      ; preds = %bb.h, %.lr.ph.i, %lex_match.exit.thread
  %.0.lcssa.i = phi ptr [ %.sroa.0105.0, %lex_match.exit.thread ], [ %.018.i, %.lr.ph.i ], [ %scevgep.i, %bb.h ] ; 3 uses
  %i.ao = icmp eq ptr %.0.lcssa.i, %.0.i36.ptr
  br i1 %i.ao, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %.critedge.i
  %i.ap = ptrtoint ptr %.0.lcssa.i to i64
  %i.aq = sub i64 %i.ap, %i.ah                    ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 1 ; 4 uses
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = sub i64 %i.ag, %i.as                    ; 3 uses
  switch i64 %i.aq, label %.lr.ph.i50.preheader [
    i64 1, label %bb.j
    i64 0, label %.loopexit
  ]

bb.j:                                             ; preds = %bb.i
  %i.au = load i8, ptr %.sroa.0105.0, align 1, !tbaa !10
  %i.av = icmp eq i8 %i.au, 42
  br i1 %i.av, label %validate_name.exit, label %.lr.ph.i50.preheader

.lr.ph.i50.preheader:                             ; preds = %bb.j, %bb.i
  br label %.lr.ph.i50

.lr.ph.i50:                                       ; preds = %.lr.ph.i50.preheader, %is_name_char.exit.thread.i
  %.01215.i = phi i64 [ %i.bb, %is_name_char.exit.thread.i ], [ 0, %.lr.ph.i50.preheader ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0105.0, i64 %.01215.i
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !10  ; 2 uses
  %i.ay = sext i8 %i.ax to i32                    ; 2 uses
  %i.az = tail call i32 @ossl_ctype_check(i32 noundef %i.ay, i32 noundef 3) #9
  %.not.i.i = icmp eq i32 %i.az, 0
  br i1 %.not.i.i, label %bb.k, label %is_name_char.exit.thread.i

bb.k:                                             ; preds = %.lr.ph.i50
  %i.ba = tail call i32 @ossl_isdigit(i32 noundef %i.ay) #9
  %.fr.i = freeze i32 %i.ba
  %.not17.i = icmp eq i32 %.fr.i, 0
  br i1 %.not17.i, label %switch.early.test.i, label %is_name_char.exit.thread.i

switch.early.test.i:                              ; preds = %bb.k
  switch i8 %i.ax, label %.loopexit [
    i8 95, label %is_name_char.exit.thread.i
    i8 45, label %is_name_char.exit.thread.i
  ]

is_name_char.exit.thread.i:                       ; preds = %switch.early.test.i, %switch.early.test.i, %bb.k, %.lr.ph.i50
  %i.bb = add nuw i64 %.01215.i, 1                ; 2 uses
  %exitcond.not.i51 = icmp eq i64 %i.bb, %i.aq
  br i1 %exitcond.not.i51, label %validate_name.exit, label %.lr.ph.i50, !llvm.loop !42

validate_name.exit:                               ; preds = %is_name_char.exit.thread.i, %bb.j
  %.2117 = phi ptr [ null, %bb.j ], [ %.sroa.0105.0, %is_name_char.exit.thread.i ] ; 14 uses
  %.2 = phi i64 [ 0, %bb.j ], [ %i.aq, %is_name_char.exit.thread.i ] ; 3 uses
  switch i64 %i.at, label %.lr.ph.i54.preheader [
    i64 1, label %bb.l
    i64 0, label %.loopexit
  ]

bb.l:                                             ; preds = %validate_name.exit
  %i.bc = load i8, ptr %i.ar, align 1, !tbaa !10
  %i.bd = icmp eq i8 %i.bc, 42
  br i1 %i.bd, label %validate_name.exit62, label %.lr.ph.i54.preheader

.lr.ph.i54.preheader:                             ; preds = %bb.l, %validate_name.exit
  br label %.lr.ph.i54

.lr.ph.i54:                                       ; preds = %.lr.ph.i54.preheader, %is_name_char.exit.thread.i57
  %.01215.i55 = phi i64 [ %i.bj, %is_name_char.exit.thread.i57 ], [ 0, %.lr.ph.i54.preheader ] ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.01215.i55
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !10  ; 2 uses
  %i.bg = sext i8 %i.bf to i32                    ; 2 uses
  %i.bh = tail call i32 @ossl_ctype_check(i32 noundef %i.bg, i32 noundef 3) #9
  %.not.i.i56 = icmp eq i32 %i.bh, 0
  br i1 %.not.i.i56, label %bb.m, label %is_name_char.exit.thread.i57

bb.m:                                             ; preds = %.lr.ph.i54
  %i.bi = tail call i32 @ossl_isdigit(i32 noundef %i.bg) #9
  %.fr.i59 = freeze i32 %i.bi
  %.not17.i60 = icmp eq i32 %.fr.i59, 0
  br i1 %.not17.i60, label %switch.early.test.i61, label %is_name_char.exit.thread.i57

switch.early.test.i61:                            ; preds = %bb.m
  switch i8 %i.bf, label %.loopexit [
    i8 95, label %is_name_char.exit.thread.i57
    i8 45, label %is_name_char.exit.thread.i57
  ]

is_name_char.exit.thread.i57:                     ; preds = %switch.early.test.i61, %switch.early.test.i61, %bb.m, %.lr.ph.i54
  %i.bj = add nuw i64 %.01215.i55, 1              ; 2 uses
  %exitcond.not.i58 = icmp eq i64 %i.bj, %i.at
  br i1 %exitcond.not.i58, label %validate_name.exit62, label %.lr.ph.i54, !llvm.loop !42

validate_name.exit62:                             ; preds = %is_name_char.exit.thread.i57, %bb.l
  %.0114 = phi ptr [ null, %bb.l ], [ %i.ar, %is_name_char.exit.thread.i57 ] ; 17 uses
  %.0112 = phi i64 [ 0, %bb.l ], [ %i.at, %is_name_char.exit.thread.i57 ] ; 9 uses
  %.not.i.i63 = icmp eq ptr %.2117, null          ; 10 uses
  %.not18.i.i = icmp eq i64 %.2, 12
  %or.cond.i.i = or i1 %.not.i.i63, %.not18.i.i
  br i1 %or.cond.i.i, label %bb.n, label %filter_match_event.exit74.thread.i

bb.n:                                             ; preds = %validate_name.exit62
  %.not19.i.i = icmp eq ptr %.0114, null          ; 7 uses
  %.not20.i.i = icmp eq i64 %.0112, 18
  %or.cond24.i.i = or i1 %.not19.i.i, %.not20.i.i
  br i1 %or.cond24.i.i, label %bb.o, label %bb.s

bb.o:                                             ; preds = %bb.n
  br i1 %.not.i.i63, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bk = load i64, ptr %.2117, align 1
  %i.bl = xor i64 %i.bk, 7598807758576447331
  %i.bm = getelementptr i8, ptr %.2117, i64 8
  %i.bn = load i32, ptr %i.bm, align 1
  %i.bo = zext i32 %i.bn to i64
  %i.bp = xor i64 %i.bo, 2037672310
  %i.bq = or i64 %i.bl, %i.bp
  %i.br = icmp ne i64 %i.bq, 0
  %i.bs = zext i1 %i.br to i32
  %.not21.i.i = icmp eq i32 %i.bs, 0
  br i1 %.not21.i.i, label %bb.q, label %.thread.i

bb.q:                                             ; preds = %bb.p, %bb.o
  br i1 %.not19.i.i, label %filter_match_event.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bt = load i128, ptr %.0114, align 1
  %i.bu = xor i128 %i.bt, 154784345972827763071006967584781135715
  %i.bv = getelementptr i8, ptr %.0114, i64 16
  %i.bw = load i16, ptr %i.bv, align 1
  %i.bx = zext i16 %i.bw to i128
  %i.by = xor i128 %i.bx, 25701
  %i.bz = or i128 %i.bu, %i.by
  %i.ca = icmp ne i128 %i.bz, 0
  %i.cb = zext i1 %i.ca to i32
  %.not23.i.i = icmp eq i32 %i.cb, 0
  br i1 %.not23.i.i, label %filter_match_event.exit.i, label %bb.s

filter_match_event.exit.i:                        ; preds = %bb.r, %bb.q
  %i.cc = and i64 %.sroa.0.0, -3
  %masksel.i83 = select i1 %.0.shrunk, i64 2, i64 0
  %storemerge.i.i84 = or disjoint i64 %masksel.i83, %i.cc
  br label %bb.s

bb.s:                                             ; preds = %filter_match_event.exit.i, %bb.r, %bb.n
  %.sroa.0.7 = phi i64 [ %storemerge.i.i84, %filter_match_event.exit.i ], [ %.sroa.0.0, %bb.r ], [ %.sroa.0.0, %bb.n ] ; 3 uses
  %.not20.i53.i = icmp eq i64 %.0112, 24
  %or.cond24.i54.i = or i1 %.not19.i.i, %.not20.i53.i
  br i1 %or.cond24.i54.i, label %bb.t, label %bb.w

.thread.i:                                        ; preds = %bb.p
  %.not20.i53160.i = icmp eq i64 %.0112, 24
  %or.cond24.i54161.i = or i1 %.not19.i.i, %.not20.i53160.i
  br i1 %or.cond24.i54161.i, label %.thread163.i, label %bb.w

bb.t:                                             ; preds = %bb.s
  br i1 %.not.i.i63, label %bb.u, label %.thread163.i

.thread163.i:                                     ; preds = %bb.t, %.thread.i
  %.sroa.0.9 = phi i64 [ %.sroa.0.7, %bb.t ], [ %.sroa.0.0, %.thread.i ] ; 2 uses
  %i.cd = load i64, ptr %.2117, align 1
  %i.ce = xor i64 %i.cd, 7598807758576447331
  %i.cf = getelementptr i8, ptr %.2117, i64 8
  %i.cg = load i32, ptr %i.cf, align 1
  %i.ch = zext i32 %i.cg to i64
  %i.ci = xor i64 %i.ch, 2037672310
  %i.cj = or i64 %i.ce, %i.ci
  %i.ck = icmp ne i64 %i.cj, 0
  %i.cl = zext i1 %i.ck to i32
  %.not21.i56.i = icmp eq i32 %i.cl, 0
  br i1 %.not21.i56.i, label %bb.u, label %bb.w

bb.u:                                             ; preds = %.thread163.i, %bb.t
  %.sroa.0.10 = phi i64 [ %.sroa.0.7, %bb.t ], [ %.sroa.0.9, %.thread163.i ] ; 2 uses
  br i1 %.not19.i.i, label %filter_match_event.exit59.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cm = load i128, ptr %.0114, align 1
  %i.cn = xor i128 %i.cm, 134856310629771094632706922673234407267
  %i.co = getelementptr i8, ptr %.0114, i64 16
  %i.cp = load i64, ptr %i.co, align 1
  %i.cq = zext i64 %i.cp to i128
  %i.cr = xor i128 %i.cq, 7234316338086311263
  %i.cs = or i128 %i.cn, %i.cr
  %i.ct = icmp ne i128 %i.cs, 0
  %i.cu = zext i1 %i.ct to i32
  %.not23.i58.i = icmp eq i32 %i.cu, 0
end_hunk_0
