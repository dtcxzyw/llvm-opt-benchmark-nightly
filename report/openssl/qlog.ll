Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/qlog?download=true
inline.NumInlined: 59
inline.NumDeleted: 27
begin_hunk_0_@ossl_qlog_new_from_env:bb.a
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
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !28
  tail call void @BIO_free_all(ptr noundef %i.au) #9
  store ptr %i.ap, ptr %i.at, align 8, !tbaa !28
  %i.av = tail call i32 @ossl_json_set0_sink(ptr noundef nonnull %i.ar, ptr noundef nonnull %i.ap) #9 ; 0 uses
  %i.aw = icmp eq ptr %i.b, null
  br i1 %i.aw, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ax = load i8, ptr %i.b, align 1, !tbaa !8
  %i.ay = icmp eq i8 %i.ax, 0
  br i1 %i.ay, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.i
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.046 = phi ptr [ @.str.7, %bb.k ], [ %i.b, %bb.j ]
  %i.az = tail call i32 @ossl_qlog_set_filter(ptr noundef nonnull %i.an, ptr noundef nonnull %.046)
  %.not56 = icmp eq i32 %i.az, 0
  br i1 %.not56, label %ossl_qlog_set_sink_filename.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @CRYPTO_free(ptr noundef nonnull %i.q, ptr noundef nonnull @.str, i32 noundef 153) #9
  br label %bb.n

ossl_qlog_set_sink_filename.exit.thread:          ; preds = %bb.h, %bb.l, %._crit_edge
  tail call void @CRYPTO_free(ptr noundef nonnull %i.q, ptr noundef nonnull @.str, i32 noundef 157) #9
  tail call void @ossl_qlog_free(ptr noundef %i.an)
  br label %bb.n

bb.n:                                             ; preds = %ossl_determine_dirsep.exit, %bb.b, %bb.a, %ossl_qlog_set_sink_filename.exit.thread, %bb.m
  %.047 = phi ptr [ %i.an, %bb.m ], [ null, %bb.a ], [ null, %bb.b ], [ null, %ossl_qlog_set_sink_filename.exit.thread ], [ null, %ossl_determine_dirsep.exit ]
  ret ptr %.047
}

declare ptr @ossl_safe_getenv(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

declare noalias ptr @CRYPTO_malloc(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @BIO_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @ossl_qlog_set_sink_filename(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
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
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !28
  tail call void @BIO_free_all(ptr noundef %i.g) #9
  store ptr %i.b, ptr %i.f, align 8, !tbaa !28
  %i.h = tail call i32 @ossl_json_set0_sink(ptr noundef nonnull %i.d, ptr noundef nonnull %i.b) #9 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %ossl_qlog_set_sink_bio.exit, %bb.b, %bb.a
  %.0 = phi i32 [ 1, %ossl_qlog_set_sink_bio.exit ], [ 0, %bb.a ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @ossl_qlog_set_filter(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
lex_init.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #10
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %i.c ; 3 uses
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %lex_init.exit
  %.sroa.18.0 = phi ptr [ %1, %lex_init.exit ], [ %.0.i35.ptr, %.backedge.backedge ]
  %.sroa.0.0 = phi i64 [ %i.b, %lex_init.exit ], [ %.sroa.0.0.be, %.backedge.backedge ] ; 8 uses
  br label %bb.a

bb.a:                                             ; preds = %is_term_sep_ws.exit.i, %.backedge
  %.021.i = phi ptr [ %.sroa.18.0, %.backedge ], [ %i.g, %is_term_sep_ws.exit.i ] ; 11 uses
  %i.e = load i8, ptr %.021.i, align 1, !tbaa !8  ; 5 uses
  switch i8 %i.e, label %is_term_sep_ws.exit.thread.i [
    i8 32, label %is_term_sep_ws.exit.i
    i8 13, label %is_term_sep_ws.exit.i
    i8 10, label %is_term_sep_ws.exit.i
    i8 9, label %is_term_sep_ws.exit.i
  ]

is_term_sep_ws.exit.i:                            ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  %i.f = icmp ult ptr %.021.i, %i.d
  %i.g = getelementptr inbounds nuw i8, ptr %.021.i, i64 1
  br i1 %i.f, label %bb.a, label %is_term_sep_ws.exit.thread.i, !llvm.loop !40

is_term_sep_ws.exit.thread.i:                     ; preds = %is_term_sep_ws.exit.i, %bb.a
  %i.h = icmp eq ptr %.021.i, %i.d
  br i1 %i.h, label %lex_do.exit, label %.preheader.i

.preheader.i:                                     ; preds = %is_term_sep_ws.exit.thread.i, %bb.b
  %i.i = phi i8 [ %.pre.i, %bb.b ], [ %i.e, %is_term_sep_ws.exit.thread.i ] ; 2 uses
  %.0.i35.idx = phi i64 [ %.0.i35.add, %bb.b ], [ 0, %is_term_sep_ws.exit.thread.i ] ; 4 uses
  %.0.i35.ptr = getelementptr inbounds nuw i8, ptr %.021.i, i64 %.0.i35.idx ; 6 uses
  switch i8 %i.i, label %is_term_sep_ws.exit25.i [
    i8 32, label %bb.c
    i8 13, label %bb.c
    i8 10, label %bb.c
  ]

is_term_sep_ws.exit25.i:                          ; preds = %.preheader.i
  %i.j = icmp ne i8 %i.i, 9
  %i.k = icmp ult ptr %.0.i35.ptr, %i.d
  %i.l = select i1 %i.j, i1 %i.k, i1 false
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %is_term_sep_ws.exit25.i
  %.0.i35.add = add nuw nsw i64 %.0.i35.idx, 1    ; 2 uses
  %.ptr = getelementptr inbounds nuw i8, ptr %.021.i, i64 %.0.i35.add
  %.pre.i = load i8, ptr %.ptr, align 1, !tbaa !8
  br label %.preheader.i, !llvm.loop !41

bb.c:                                             ; preds = %is_term_sep_ws.exit25.i, %.preheader.i, %.preheader.i, %.preheader.i
  %.not.i = icmp samesign eq i64 %.0.i35.idx, 0
  br i1 %.not.i, label %lex_peek_char.exit.thread, label %lex_peek_char.exit

lex_peek_char.exit:                               ; preds = %bb.c
  %i.m = sext i8 %i.e to i32
  switch i8 %i.e, label %lex_peek_char.exit.thread [
    i8 45, label %lex_skip_char.exit
    i8 43, label %lex_skip_char.exit
  ]

lex_skip_char.exit:                               ; preds = %lex_peek_char.exit, %lex_peek_char.exit
  %i.n = icmp eq i8 %i.e, 43                      ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.021.i, i64 1 ; 5 uses
  %.not.i38 = icmp eq i64 %.0.i35.idx, 1
  br i1 %.not.i38, label %lex_peek_char.exit39, label %bb.d

bb.d:                                             ; preds = %lex_skip_char.exit
  %i.p = load i8, ptr %i.o, align 1, !tbaa !8
  %i.q = sext i8 %i.p to i32
  br label %lex_peek_char.exit39

lex_peek_char.exit39:                             ; preds = %lex_skip_char.exit, %bb.d
  %i.r = phi i32 [ %i.q, %bb.d ], [ -1, %lex_skip_char.exit ] ; 4 uses
  %i.s = tail call i32 @ossl_ctype_check(i32 noundef %i.r, i32 noundef 3) #9
  %.not.i40 = icmp eq i32 %i.s, 0
  br i1 %.not.i40, label %bb.e, label %is_name_char.exit.thread

bb.e:                                             ; preds = %lex_peek_char.exit39
  %i.t = tail call i32 @ossl_isdigit(i32 noundef %i.r) #9
  %i.u = icmp ne i32 %i.t, 0
  %i.v = icmp eq i32 %i.r, 95
  %or.cond.i = or i1 %i.v, %i.u
  br i1 %or.cond.i, label %is_name_char.exit.thread, label %is_name_char.exit

is_name_char.exit:                                ; preds = %bb.e
  switch i32 %i.r, label %.loopexit [
    i32 45, label %is_name_char.exit.thread
    i32 42, label %is_name_char.exit.thread
  ]

lex_peek_char.exit.thread:                        ; preds = %bb.c, %lex_peek_char.exit
  %i.w = phi i32 [ %i.m, %lex_peek_char.exit ], [ -1, %bb.c ] ; 4 uses
  %i.x = tail call i32 @ossl_ctype_check(i32 noundef %i.w, i32 noundef 3) #9
  %.not.i41 = icmp eq i32 %i.x, 0
  br i1 %.not.i41, label %bb.f, label %is_name_char.exit.thread

bb.f:                                             ; preds = %lex_peek_char.exit.thread
  %i.y = tail call i32 @ossl_isdigit(i32 noundef %i.w) #9
  %i.z = icmp ne i32 %i.y, 0
  %i.aa = icmp eq i32 %i.w, 95
  %or.cond.i42 = or i1 %i.aa, %i.z
  br i1 %or.cond.i42, label %is_name_char.exit.thread, label %is_name_char.exit43

is_name_char.exit43:                              ; preds = %bb.f
  switch i32 %i.w, label %.loopexit [
    i32 45, label %is_name_char.exit.thread
    i32 42, label %is_name_char.exit.thread
  ]

is_name_char.exit.thread:                         ; preds = %is_name_char.exit43, %is_name_char.exit43, %is_name_char.exit, %is_name_char.exit, %lex_peek_char.exit.thread, %bb.f, %lex_peek_char.exit39, %bb.e
  %.sroa.0103.0 = phi ptr [ %.021.i, %is_name_char.exit43 ], [ %i.o, %is_name_char.exit ], [ %i.o, %lex_peek_char.exit39 ], [ %i.o, %bb.e ], [ %.021.i, %bb.f ], [ %.021.i, %lex_peek_char.exit.thread ], [ %i.o, %is_name_char.exit ], [ %.021.i, %is_name_char.exit43 ] ; 9 uses
  %.0.shrunk = phi i1 [ true, %is_name_char.exit43 ], [ %i.n, %is_name_char.exit ], [ %i.n, %lex_peek_char.exit39 ], [ %i.n, %bb.e ], [ true, %bb.f ], [ true, %lex_peek_char.exit.thread ], [ %i.n, %is_name_char.exit ], [ true, %is_name_char.exit43 ] ; 14 uses
  %i.ab = ptrtoint ptr %.0.i35.ptr to i64         ; 2 uses
  %i.ac = ptrtoint ptr %.sroa.0103.0 to i64       ; 2 uses
  %i.ad = sub i64 %i.ab, %i.ac                    ; 2 uses
  %.not.i44 = icmp eq i64 %i.ad, 1
  br i1 %.not.i44, label %lex_match.exit, label %lex_match.exit.thread

lex_match.exit:                                   ; preds = %is_name_char.exit.thread
  %lhsc.i = load i8, ptr %.sroa.0103.0, align 1
  %.not7.i.not = icmp eq i8 %lhsc.i, 42
  br i1 %.not7.i.not, label %bb.g, label %lex_match.exit.thread

bb.g:                                             ; preds = %lex_match.exit
  %i.ae = and i64 %.sroa.0.0, -255
  %masksel.i = select i1 %.0.shrunk, i64 2, i64 0
  %storemerge.i.i = or disjoint i64 %masksel.i, %i.ae
  %masksel176.i = select i1 %.0.shrunk, i64 4, i64 0
  %storemerge.i61.i = or disjoint i64 %storemerge.i.i, %masksel176.i
  %masksel177.i = select i1 %.0.shrunk, i64 8, i64 0
  %storemerge.i76.i = or disjoint i64 %storemerge.i61.i, %masksel177.i
  %masksel178.i = select i1 %.0.shrunk, i64 16, i64 0
  %storemerge.i91.i = or disjoint i64 %storemerge.i76.i, %masksel178.i
  %masksel179.i = select i1 %.0.shrunk, i64 32, i64 0
  %masksel180.i = select i1 %.0.shrunk, i64 64, i64 0
  %.masked = or disjoint i64 %storemerge.i91.i, %masksel179.i
  %2 = or i64 %.masked, %masksel180.i
  %masksel181.i = select i1 %.0.shrunk, i64 128, i64 0
  %storemerge.i136.i = or disjoint i64 %2, %masksel181.i
  br label %.backedge.backedge

lex_match.exit.thread:                            ; preds = %is_name_char.exit.thread, %lex_match.exit
  %i.af = icmp ult ptr %.sroa.0103.0, %.0.i35.ptr
  br i1 %i.af, label %.lr.ph.preheader.i, label %.critedge.i

.lr.ph.preheader.i:                               ; preds = %lex_match.exit.thread
  %scevgep.i = getelementptr i8, ptr %.sroa.0103.0, i64 %i.ad
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h, %.lr.ph.preheader.i
  %.018.i = phi ptr [ %i.ah, %bb.h ], [ %.sroa.0103.0, %.lr.ph.preheader.i ] ; 3 uses
  %i.ag = load i8, ptr %.018.i, align 1, !tbaa !8
  %.not.i46 = icmp eq i8 %i.ag, 58
  br i1 %.not.i46, label %.critedge.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.018.i, i64 1 ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.ah, %.0.i35.ptr
  br i1 %exitcond.not.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !42

.critedge.i:                                      ; preds = %bb.h, %.lr.ph.i, %lex_match.exit.thread
  %.0.lcssa.i = phi ptr [ %.sroa.0103.0, %lex_match.exit.thread ], [ %.018.i, %.lr.ph.i ], [ %scevgep.i, %bb.h ] ; 3 uses
  %i.ai = icmp eq ptr %.0.lcssa.i, %.0.i35.ptr
  br i1 %i.ai, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %.critedge.i
  %i.aj = ptrtoint ptr %.0.lcssa.i to i64
  %i.ak = sub i64 %i.aj, %i.ac                    ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 1 ; 4 uses
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = sub i64 %i.ab, %i.am                    ; 3 uses
  switch i64 %i.ak, label %.lr.ph.i48.preheader [
    i64 1, label %bb.j
    i64 0, label %.loopexit
  ]

bb.j:                                             ; preds = %bb.i
  %i.ao = load i8, ptr %.sroa.0103.0, align 1, !tbaa !8
  %i.ap = icmp eq i8 %i.ao, 42
  br i1 %i.ap, label %validate_name.exit, label %.lr.ph.i48.preheader

.lr.ph.i48.preheader:                             ; preds = %bb.j, %bb.i
  br label %.lr.ph.i48

.lr.ph.i48:                                       ; preds = %.lr.ph.i48.preheader, %is_name_char.exit.thread.i
  %.015.i = phi i64 [ %i.av, %is_name_char.exit.thread.i ], [ 0, %.lr.ph.i48.preheader ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0103.0, i64 %.015.i
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !8   ; 2 uses
  %i.as = sext i8 %i.ar to i32                    ; 2 uses
  %i.at = tail call i32 @ossl_ctype_check(i32 noundef %i.as, i32 noundef 3) #9
  %.not.i.i = icmp eq i32 %i.at, 0
  br i1 %.not.i.i, label %bb.k, label %is_name_char.exit.thread.i

bb.k:                                             ; preds = %.lr.ph.i48
  %i.au = tail call i32 @ossl_isdigit(i32 noundef %i.as) #9
  %.fr.i = freeze i32 %i.au
  %.not17.i = icmp eq i32 %.fr.i, 0
  br i1 %.not17.i, label %switch.early.test.i, label %is_name_char.exit.thread.i

switch.early.test.i:                              ; preds = %bb.k
  switch i8 %i.ar, label %.loopexit [
    i8 95, label %is_name_char.exit.thread.i
    i8 45, label %is_name_char.exit.thread.i
  ]

is_name_char.exit.thread.i:                       ; preds = %switch.early.test.i, %switch.early.test.i, %bb.k, %.lr.ph.i48
  %i.av = add nuw i64 %.015.i, 1                  ; 2 uses
  %exitcond.not.i49 = icmp eq i64 %i.av, %i.ak
  br i1 %exitcond.not.i49, label %validate_name.exit, label %.lr.ph.i48, !llvm.loop !43

validate_name.exit:                               ; preds = %is_name_char.exit.thread.i, %bb.j
  %.2115 = phi ptr [ null, %bb.j ], [ %.sroa.0103.0, %is_name_char.exit.thread.i ] ; 14 uses
  %.2 = phi i64 [ 0, %bb.j ], [ %i.ak, %is_name_char.exit.thread.i ] ; 3 uses
  switch i64 %i.an, label %.lr.ph.i52.preheader [
    i64 1, label %bb.l
    i64 0, label %.loopexit
  ]

bb.l:                                             ; preds = %validate_name.exit
  %i.aw = load i8, ptr %i.al, align 1, !tbaa !8
  %i.ax = icmp eq i8 %i.aw, 42
  br i1 %i.ax, label %validate_name.exit60, label %.lr.ph.i52.preheader

.lr.ph.i52.preheader:                             ; preds = %bb.l, %validate_name.exit
  br label %.lr.ph.i52

.lr.ph.i52:                                       ; preds = %.lr.ph.i52.preheader, %is_name_char.exit.thread.i55
  %.015.i53 = phi i64 [ %i.bd, %is_name_char.exit.thread.i55 ], [ 0, %.lr.ph.i52.preheader ] ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.al, i64 %.015.i53
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !8   ; 2 uses
  %i.ba = sext i8 %i.az to i32                    ; 2 uses
  %i.bb = tail call i32 @ossl_ctype_check(i32 noundef %i.ba, i32 noundef 3) #9
  %.not.i.i54 = icmp eq i32 %i.bb, 0
  br i1 %.not.i.i54, label %bb.m, label %is_name_char.exit.thread.i55

bb.m:                                             ; preds = %.lr.ph.i52
  %i.bc = tail call i32 @ossl_isdigit(i32 noundef %i.ba) #9
  %.fr.i57 = freeze i32 %i.bc
  %.not17.i58 = icmp eq i32 %.fr.i57, 0
  br i1 %.not17.i58, label %switch.early.test.i59, label %is_name_char.exit.thread.i55

switch.early.test.i59:                            ; preds = %bb.m
  switch i8 %i.az, label %.loopexit [
    i8 95, label %is_name_char.exit.thread.i55
    i8 45, label %is_name_char.exit.thread.i55
  ]

is_name_char.exit.thread.i55:                     ; preds = %switch.early.test.i59, %switch.early.test.i59, %bb.m, %.lr.ph.i52
  %i.bd = add nuw i64 %.015.i53, 1                ; 2 uses
  %exitcond.not.i56 = icmp eq i64 %i.bd, %i.an
  br i1 %exitcond.not.i56, label %validate_name.exit60, label %.lr.ph.i52, !llvm.loop !43

validate_name.exit60:                             ; preds = %is_name_char.exit.thread.i55, %bb.l
  %.0112 = phi ptr [ null, %bb.l ], [ %i.al, %is_name_char.exit.thread.i55 ] ; 17 uses
  %.0110 = phi i64 [ 0, %bb.l ], [ %i.an, %is_name_char.exit.thread.i55 ] ; 9 uses
  %.not.i.i61 = icmp eq ptr %.2115, null          ; 10 uses
  %.not18.i.i = icmp eq i64 %.2, 12
  %or.cond.i.i = or i1 %.not.i.i61, %.not18.i.i
  br i1 %or.cond.i.i, label %bb.n, label %filter_match_event.exit74.thread.i

bb.n:                                             ; preds = %validate_name.exit60
  %.not19.i.i = icmp eq ptr %.0112, null          ; 7 uses
  %.not20.i.i = icmp eq i64 %.0110, 18
  %or.cond24.i.i = or i1 %.not19.i.i, %.not20.i.i
  br i1 %or.cond24.i.i, label %bb.o, label %bb.s

bb.o:                                             ; preds = %bb.n
  br i1 %.not.i.i61, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.be = load i64, ptr %.2115, align 1
  %i.bf = xor i64 %i.be, 7598807758576447331
  %i.bg = getelementptr i8, ptr %.2115, i64 8
  %i.bh = load i32, ptr %i.bg, align 1
  %i.bi = zext i32 %i.bh to i64
  %i.bj = xor i64 %i.bi, 2037672310
  %i.bk = or i64 %i.bf, %i.bj
  %i.bl = icmp ne i64 %i.bk, 0
  %i.bm = zext i1 %i.bl to i32
  %.not21.i.i = icmp eq i32 %i.bm, 0
  br i1 %.not21.i.i, label %bb.q, label %.thread.i

bb.q:                                             ; preds = %bb.p, %bb.o
  br i1 %.not19.i.i, label %filter_match_event.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bn = load i128, ptr %.0112, align 1
  %i.bo = xor i128 %i.bn, 154784345972827763071006967584781135715
  %i.bp = getelementptr i8, ptr %.0112, i64 16
  %i.bq = load i16, ptr %i.bp, align 1
  %i.br = zext i16 %i.bq to i128
  %i.bs = xor i128 %i.br, 25701
  %i.bt = or i128 %i.bo, %i.bs
  %i.bu = icmp ne i128 %i.bt, 0
  %i.bv = zext i1 %i.bu to i32
  %.not23.i.i = icmp eq i32 %i.bv, 0
  br i1 %.not23.i.i, label %filter_match_event.exit.i, label %bb.s

filter_match_event.exit.i:                        ; preds = %bb.r, %bb.q
  %i.bw = and i64 %.sroa.0.0, -3
  %masksel.i81 = select i1 %.0.shrunk, i64 2, i64 0
  %storemerge.i.i82 = or disjoint i64 %masksel.i81, %i.bw
  br label %bb.s

bb.s:                                             ; preds = %filter_match_event.exit.i, %bb.r, %bb.n
  %.sroa.0.7 = phi i64 [ %storemerge.i.i82, %filter_match_event.exit.i ], [ %.sroa.0.0, %bb.r ], [ %.sroa.0.0, %bb.n ] ; 3 uses
  %.not20.i53.i = icmp eq i64 %.0110, 24
  %or.cond24.i54.i = or i1 %.not19.i.i, %.not20.i53.i
  br i1 %or.cond24.i54.i, label %bb.t, label %bb.w

.thread.i:                                        ; preds = %bb.p
  %.not20.i53160.i = icmp eq i64 %.0110, 24
  %or.cond24.i54161.i = or i1 %.not19.i.i, %.not20.i53160.i
  br i1 %or.cond24.i54161.i, label %.thread163.i, label %bb.w

bb.t:                                             ; preds = %bb.s
  br i1 %.not.i.i61, label %bb.u, label %.thread163.i

.thread163.i:                                     ; preds = %bb.t, %.thread.i
  %.sroa.0.9 = phi i64 [ %.sroa.0.7, %bb.t ], [ %.sroa.0.0, %.thread.i ] ; 2 uses
  %i.bx = load i64, ptr %.2115, align 1
  %i.by = xor i64 %i.bx, 7598807758576447331
  %i.bz = getelementptr i8, ptr %.2115, i64 8
  %i.ca = load i32, ptr %i.bz, align 1
  %i.cb = zext i32 %i.ca to i64
  %i.cc = xor i64 %i.cb, 2037672310
  %i.cd = or i64 %i.by, %i.cc
  %i.ce = icmp ne i64 %i.cd, 0
  %i.cf = zext i1 %i.ce to i32
  %.not21.i56.i = icmp eq i32 %i.cf, 0
  br i1 %.not21.i56.i, label %bb.u, label %bb.w

bb.u:                                             ; preds = %.thread163.i, %bb.t
  %.sroa.0.10 = phi i64 [ %.sroa.0.7, %bb.t ], [ %.sroa.0.9, %.thread163.i ] ; 2 uses
  br i1 %.not19.i.i, label %filter_match_event.exit59.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cg = load i128, ptr %.0112, align 1
  %i.ch = xor i128 %i.cg, 134856310629771094632706922673234407267
end_hunk_0
