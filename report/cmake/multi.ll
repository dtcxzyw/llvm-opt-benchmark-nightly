Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/multi?download=true
inline.NumInlined: 114
inline.NumDeleted: 30
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@process_pending_handles:bb.a
  br i1 %i.y, label %bb.b, label %._crit_edge, !llvm.loop !166

._crit_edge:                                      ; preds = %bb.j, %.preheader43
  store i32 0, ptr %i.b, align 8, !tbaa !168
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge, %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.aa = call zeroext i1 @Curl_uint32_bset_first(ptr noundef nonnull %i.z, ptr noundef nonnull %i.a) #13
  br i1 %i.aa, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.k
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 144
  br label %bb.l

bb.l:                                             ; preds = %.preheader, %bb.t
  %i.ad = load i32, ptr %i.a, align 4, !tbaa !39  ; 3 uses
  %i.ae = call ptr @Curl_uint32_tbl_get(ptr noundef nonnull %i.ab, i32 noundef %i.ad) #13 ; 3 uses
  %.not.i23 = icmp eq ptr %i.ae, null
  br i1 %.not.i23, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !94
  %i.ag = icmp eq i32 %i.af, -1059136595
  br i1 %i.ag, label %.loopexit.sink.split, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ah = load ptr, ptr %i.ac, align 8, !tbaa !40 ; 4 uses
  %.not17.i24 = icmp eq ptr %i.ah, null
  br i1 %.not17.i24, label %bb.t, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 2049
  %i.aj = load i32, ptr %i.ai, align 1
  %i.ak = and i32 %i.aj, 134217728
  %.not18.i25 = icmp eq i32 %i.ak, 0
  br i1 %.not18.i25, label %bb.t, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 4296
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !101 ; 2 uses
  %.not19.i26 = icmp eq ptr %i.am, null
  br i1 %.not19.i26, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !103
  %i.ap = icmp sgt i32 %i.ao, 0
  %i.aq = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_multi, i64 8), align 8
  %i.ar = icmp sgt i32 %i.aq, 0
  %or.cond.i27 = select i1 %i.ap, i1 %i.ar, i1 false
  br i1 %or.cond.i27, label %bb.s, label %bb.t

bb.r:                                             ; preds = %bb.p
  %.old.i29 = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_multi, i64 8), align 8, !tbaa !103
  %.old1.i30 = icmp sgt i32 %.old.i29, 0
  br i1 %.old1.i30, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r, %bb.q
  call void (ptr, ptr, ...) @Curl_trc_multi(ptr noundef nonnull %i.ah, ptr noundef nonnull @.str.30, i32 noundef %i.ad) #13
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q, %bb.o, %bb.n
  call void @Curl_uint32_tbl_remove(ptr noundef nonnull %i.ab, i32 noundef %i.ad) #13
  %i.as = load i32, ptr %i.a, align 4, !tbaa !39
  call void @Curl_uint32_bset_remove(ptr noundef nonnull %i.z, i32 noundef %i.as) #13
  %i.at = load i32, ptr %i.a, align 4, !tbaa !39
  %i.au = call zeroext i1 @Curl_uint32_bset_next(ptr noundef nonnull %i.z, i32 noundef %i.at, ptr noundef nonnull %i.a) #13
  br i1 %i.au, label %bb.l, label %.loopexit, !llvm.loop !167

.loopexit.sink.split:                             ; preds = %bb.c, %bb.m
  %.lcssa.sink = phi ptr [ %i.ae, %bb.m ], [ %i.i, %bb.c ]
  call fastcc void @move_pending_to_connect(ptr noundef nonnull %0, ptr noundef nonnull %.lcssa.sink)
  %i.av = load i32, ptr %i.a, align 4, !tbaa !39
  store i32 %i.av, ptr %i.b, align 8, !tbaa !168
  br label %.loopexit

.loopexit:                                        ; preds = %bb.t, %.loopexit.sink.split, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local zeroext i1 @Curl_multiplex_wanted(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #4 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.b = load i16, ptr %i.a, align 8
  %i.c = and i16 %i.b, 2
  %i.d = icmp ne i16 %i.c, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = phi i1 [ false, %bb.a ], [ %i.d, %bb.b ]
  ret i1 %i.e
}

; Function Attrs: nounwind uwtable
define dso_local void @Curl_attach_connection(ptr noundef initializes((32, 40)) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %1, ptr %i.a, align 8, !tbaa !104
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 784 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !121
  %i.d = add i32 %i.c, 1
  store i32 %i.d, ptr %i.b, align 8, !tbaa !121
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 768 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !122
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !90
  store ptr %i.h, ptr %i.e, align 8, !tbaa !122
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 736
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !128  ; 2 uses
  %.not12 = icmp eq ptr %i.j, null
  br i1 %.not12, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !131
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 120
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !136  ; 2 uses
  %.not13 = icmp eq ptr %i.n, null
  br i1 %.not13, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void %i.n(ptr noundef nonnull %0, ptr noundef nonnull %1) #13
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 5) i32 @Curl_multi_pollset(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  tail call void @Curl_pollset_reset(ptr noundef %1) #13
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !90   ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !40
  %i.e = icmp eq ptr %0, %i.d
  br i1 %i.e, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !97
  %.not106 = icmp eq i32 %i.g, 0
  br i1 %.not106, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 680
  %i.i = load i32, ptr %i.h, align 8, !tbaa !39
  %i.j = tail call i32 @Curl_pollset_change(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %i.i, i32 noundef 1, i32 noundef 0) #13 ; 2 uses
  %.not107 = icmp eq i32 %i.j, 0
  br i1 %.not107, label %.thread, label %mstate_protocol_pollset.exit

.thread:                                          ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !104  ; 15 uses
  %.not108 = icmp eq ptr %i.l, null
  br i1 %.not108, label %mstate_protocol_pollset.exit.thread, label %bb.e

bb.e:                                             ; preds = %.thread
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load i32, ptr %i.m, align 8, !tbaa !93   ; 2 uses
  switch i32 %i.n, label %bb.ad [
    i32 0, label %mstate_protocol_pollset.exit.thread
    i32 1, label %mstate_protocol_pollset.exit.thread
    i32 2, label %mstate_protocol_pollset.exit.thread
    i32 3, label %mstate_protocol_pollset.exit.thread
    i32 4, label %bb.f
    i32 5, label %bb.h
    i32 6, label %bb.h
    i32 7, label %bb.n
    i32 8, label %bb.n
    i32 9, label %bb.t
    i32 10, label %bb.u
    i32 11, label %bb.u
    i32 12, label %mstate_protocol_pollset.exit.thread
    i32 13, label %mstate_protocol_pollset.exit.thread
    i32 14, label %mstate_protocol_pollset.exit.thread
    i32 15, label %mstate_protocol_pollset.exit.thread
  ]

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr i8, ptr %i.l, i64 732
  %2 = load i32, ptr %i.o, align 4
  %3 = and i32 %2, 1
  %.not109 = icmp eq i32 %3, 0
  br i1 %.not109, label %bb.g, label %.thread142

bb.g:                                             ; preds = %bb.f
  %i.p = tail call i32 @Curl_resolv_pollset(ptr noundef nonnull %0, ptr noundef %1) #13 ; 2 uses
  %.not110 = icmp eq i32 %i.p, 0
  br i1 %.not110, label %.thread142, label %mstate_protocol_pollset.exit

.thread142:                                       ; preds = %bb.f, %bb.g
  %i.q = tail call fastcc i32 @mstate_connecting_pollset(ptr noundef nonnull %0, ptr noundef %1)
  br label %mstate_protocol_pollset.exit

bb.h:                                             ; preds = %bb.e, %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 736
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !128
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !131
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !172  ; 2 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = tail call i32 %i.w(ptr noundef nonnull %0, ptr noundef %1) #13, !inline_history !169
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 400
  %i.z = load i32, ptr %i.y, align 8, !tbaa !39   ; 2 uses
  %.not19.i = icmp eq i32 %i.z, -1
  br i1 %.not19.i, label %.thread.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aa = tail call i32 @Curl_pollset_change(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %i.z, i32 noundef 1, i32 noundef 0) #13
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.i
  %.1.i = phi i32 [ %i.x, %bb.i ], [ %i.aa, %bb.k ] ; 2 uses
  %.not20.i = icmp eq i32 %.1.i, 0
  br i1 %.not20.i, label %.thread.i, label %mstate_protocol_pollset.exit

.thread.i:                                        ; preds = %bb.l, %bb.j
  %i.ab = tail call fastcc i32 @multi_adjust_pollset(ptr noundef nonnull %0, ptr noundef %1) ; 2 uses
  %.not21.i = icmp eq i32 %i.ab, 0
  br i1 %.not21.i, label %bb.m, label %mstate_protocol_pollset.exit

bb.m:                                             ; preds = %.thread.i
  %i.ac = tail call i32 @Curl_conn_adjust_pollset(ptr noundef nonnull %0, ptr noundef nonnull %i.l, ptr noundef %1) #13
  br label %mstate_protocol_pollset.exit

bb.n:                                             ; preds = %bb.e, %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %i.l, i64 736
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !128
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !131
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 64
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !173 ; 2 uses
  %.not.i131 = icmp eq ptr %i.ai, null
  br i1 %.not.i131, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aj = tail call i32 %i.ai(ptr noundef nonnull %0, ptr noundef %1) #13, !inline_history !170
  br label %bb.r

bb.p:                                             ; preds = %bb.n
  %i.ak = getelementptr inbounds nuw i8, ptr %i.l, i64 460
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !137 ; 2 uses
  %or.cond.i = icmp ult i32 %i.al, 2
  br i1 %or.cond.i, label %bb.q, label %.thread.i133

bb.q:                                             ; preds = %bb.p
  %i.am = getelementptr inbounds nuw i8, ptr %i.l, i64 400
  %i.an = zext nneg i32 %i.al to i64
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !39
  %i.aq = tail call i32 @Curl_pollset_change(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %i.ap, i32 noundef 2, i32 noundef 0) #13
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.o
  %.0.i = phi i32 [ %i.aj, %bb.o ], [ %i.aq, %bb.q ] ; 2 uses
  %.not20.i132 = icmp eq i32 %.0.i, 0
  br i1 %.not20.i132, label %.thread.i133, label %mstate_protocol_pollset.exit

.thread.i133:                                     ; preds = %bb.r, %bb.p
  %i.ar = tail call fastcc i32 @multi_adjust_pollset(ptr noundef nonnull %0, ptr noundef %1) ; 2 uses
  %.not21.i134 = icmp eq i32 %i.ar, 0
  br i1 %.not21.i134, label %bb.s, label %mstate_protocol_pollset.exit

bb.s:                                             ; preds = %.thread.i133
  %i.as = tail call i32 @Curl_conn_adjust_pollset(ptr noundef nonnull %0, ptr noundef nonnull %i.l, ptr noundef %1) #13
  br label %mstate_protocol_pollset.exit

bb.t:                                             ; preds = %bb.e
  %i.at = tail call fastcc i32 @mstate_domore_pollset(ptr noundef nonnull %0, ptr noundef %1)
  br label %mstate_protocol_pollset.exit

bb.u:                                             ; preds = %bb.e, %bb.e
  %i.au = getelementptr inbounds nuw i8, ptr %i.l, i64 736
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !128
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !131
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 80
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !174 ; 2 uses
  %.not.i135 = icmp eq ptr %i.az, null
  br i1 %.not.i135, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ba = tail call i32 %i.az(ptr noundef nonnull %0, ptr noundef %1) #13, !inline_history !171
  br label %bb.ab

bb.w:                                             ; preds = %bb.u
  %i.bb = tail call zeroext i1 @Curl_req_want_recv(ptr noundef nonnull %0) #13
  br i1 %i.bb, label %bb.x, label %.thread.i138

bb.x:                                             ; preds = %bb.w
  %i.bc = getelementptr inbounds nuw i8, ptr %i.l, i64 456
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !138 ; 2 uses
  %or.cond.i139 = icmp ult i32 %i.bd, 2
  br i1 %or.cond.i139, label %bb.y, label %.thread.i138

bb.y:                                             ; preds = %bb.x
  %i.be = getelementptr inbounds nuw i8, ptr %i.l, i64 400
  %i.bf = zext nneg i32 %i.bd to i64
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.bf
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !39
  %i.bi = tail call i32 @Curl_pollset_change(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %i.bh, i32 noundef 1, i32 noundef 0) #13 ; 2 uses
  %.not30.i = icmp eq i32 %i.bi, 0
  br i1 %.not30.i, label %.thread.i138, label %mstate_protocol_pollset.exit

.thread.i138:                                     ; preds = %bb.y, %bb.x, %bb.w
  %i.bj = tail call zeroext i1 @Curl_req_want_send(ptr noundef nonnull %0) #13
  br i1 %i.bj, label %bb.z, label %.thread37.i

bb.z:                                             ; preds = %.thread.i138
  %i.bk = getelementptr inbounds nuw i8, ptr %i.l, i64 460
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !137 ; 2 uses
  %or.cond33.i = icmp ult i32 %i.bl, 2
  br i1 %or.cond33.i, label %bb.aa, label %.thread37.i

bb.aa:                                            ; preds = %bb.z
  %i.bm = getelementptr inbounds nuw i8, ptr %i.l, i64 400
  %i.bn = zext nneg i32 %i.bl to i64
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.bn
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !39
  %i.bq = tail call i32 @Curl_pollset_change(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %i.bp, i32 noundef 2, i32 noundef 0) #13
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.v
  %.1.i136 = phi i32 [ %i.ba, %bb.v ], [ %i.bq, %bb.aa ] ; 2 uses
  %.not31.i = icmp eq i32 %.1.i136, 0
  br i1 %.not31.i, label %.thread37.i, label %mstate_protocol_pollset.exit

.thread37.i:                                      ; preds = %bb.ab, %bb.z, %.thread.i138
  %i.br = tail call fastcc i32 @multi_adjust_pollset(ptr noundef nonnull %0, ptr noundef %1) ; 2 uses
  %.not32.i = icmp eq i32 %i.br, 0
  br i1 %.not32.i, label %bb.ac, label %mstate_protocol_pollset.exit

bb.ac:                                            ; preds = %.thread37.i
  %i.bs = tail call i32 @Curl_conn_adjust_pollset(ptr noundef nonnull %0, ptr noundef nonnull %i.l, ptr noundef %1) #13
  br label %mstate_protocol_pollset.exit

bb.ad:                                            ; preds = %bb.e
  tail call void (ptr, ptr, ...) @Curl_failf(ptr noundef nonnull %0, ptr noundef nonnull @.str.3, i32 noundef %i.n) #13
  br label %mstate_protocol_pollset.exit.thread

mstate_protocol_pollset.exit:                     ; preds = %bb.ac, %.thread37.i, %bb.ab, %bb.y, %bb.s, %.thread.i133, %bb.r, %bb.m, %.thread.i, %bb.l, %bb.t, %.thread142, %bb.g, %bb.d
  %.2 = phi i32 [ %i.j, %bb.d ], [ %.1.i136, %bb.ab ], [ %i.p, %bb.g ], [ %i.q, %.thread142 ], [ %i.bi, %bb.y ], [ %.1.i, %bb.l ], [ %i.at, %bb.t ], [ %.0.i, %bb.r ], [ %i.ab, %.thread.i ], [ %i.ac, %bb.m ], [ %i.ar, %.thread.i133 ], [ %i.as, %bb.s ], [ %i.br, %.thread37.i ], [ %i.bs, %bb.ac ] ; 2 uses
  switch i32 %.2, label %bb.ae [
    i32 0, label %mstate_protocol_pollset.exit.thread
    i32 27, label %bb.bi
  ]

bb.ae:                                            ; preds = %mstate_protocol_pollset.exit
  tail call void (ptr, ptr, ...) @Curl_failf(ptr noundef nonnull %0, ptr noundef nonnull @.str.4, i32 noundef %.2) #13
  br label %bb.bi

mstate_protocol_pollset.exit.thread:              ; preds = %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %.thread, %bb.ad, %mstate_protocol_pollset.exit
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 2049 ; 3 uses
  %i.bu = load i32, ptr %i.bt, align 1
  %i.bv = and i32 %i.bu, 134217728
  %.not113 = icmp eq i32 %i.bv, 0
  br i1 %.not113, label %bb.bi, label %bb.af

bb.af:                                            ; preds = %mstate_protocol_pollset.exit.thread
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 4296 ; 6 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !101 ; 2 uses
  %.not114 = icmp eq ptr %i.bx, null
  br i1 %.not114, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !103
  %i.ca = icmp sgt i32 %i.bz, 0
  %i.cb = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_multi, i64 8), align 8
  %i.cc = icmp sgt i32 %i.cb, 0
  %or.cond = select i1 %i.ca, i1 %i.cc, i1 false
  br i1 %or.cond, label %bb.ai, label %bb.bi

bb.ah:                                            ; preds = %bb.af
  %.old = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_multi, i64 8), align 8, !tbaa !103
  %.old1 = icmp sgt i32 %.old, 0
end_hunk_0
begin_hunk_1_@multi_runsingle:bb.a
  %i.wx = load ptr, ptr %i.ww, align 8, !tbaa !90 ; 2 uses
  %.not10.i.i = icmp eq ptr %i.wx, null
  br i1 %.not10.i.i, label %multi_addmsg.exit.i, label %bb.jw

bb.jw:                                            ; preds = %bb.jv
  %i.wy = getelementptr inbounds nuw i8, ptr %i.wx, i64 360
  %i.wz = load ptr, ptr %i.wy, align 8, !tbaa !109
  %.not11.i.i = icmp eq ptr %i.wz, null
  br i1 %.not11.i.i, label %multi_addmsg.exit.i, label %bb.jx

bb.jx:                                            ; preds = %bb.jw
  call void @Curl_mntfy_add(ptr noundef nonnull %i.wv, i32 noundef 0) #13
  br label %multi_addmsg.exit.i

multi_addmsg.exit.i:                              ; preds = %bb.jx, %bb.jw, %bb.jv, %bb.ju, %bb.jt
  call void @Curl_llist_append(ptr noundef nonnull %i.wt, ptr noundef nonnull %i.wp, ptr noundef nonnull %i.wp) #13
  br label %bb.jy

bb.jy:                                            ; preds = %multi_addmsg.exit.i, %bb.js, %bb.jr, %bb.jq, %bb.jo, %bb.jn, %bb.jm, %bb.jl, %bb.jj, %bb.ji
  %i.xa = load i32, ptr %i.at, align 8, !tbaa !93
  %i.xb = icmp eq i32 %i.xa, 15
  br i1 %i.xb, label %mstate.exit.i279, label %bb.jz

bb.jz:                                            ; preds = %bb.jy
  %i.xc = load i32, ptr %i.x, align 1
  %i.xd = and i32 %i.xc, 134217728
  %.not.i68.i = icmp eq i32 %i.xd, 0
  br i1 %.not.i68.i, label %bb.ke, label %bb.ka

bb.ka:                                            ; preds = %bb.jz
  %i.xe = load ptr, ptr %i.as, align 8, !tbaa !101 ; 2 uses
  %.not39.i.i278 = icmp eq ptr %i.xe, null
  br i1 %.not39.i.i278, label %bb.kc, label %bb.kb

bb.kb:                                            ; preds = %bb.ka
  %i.xf = getelementptr inbounds nuw i8, ptr %i.xe, i64 8
  %i.xg = load i32, ptr %i.xf, align 8, !tbaa !103
  %i.xh = icmp sgt i32 %i.xg, 0
  %i.xi = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_multi, i64 8), align 8
  %i.xj = icmp sgt i32 %i.xi, 0
  %or.cond.i69.i = select i1 %i.xh, i1 %i.xj, i1 false
  br i1 %or.cond.i69.i, label %bb.kd, label %bb.ke

bb.kc:                                            ; preds = %bb.ka
  %.old.i70.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_multi, i64 8), align 8, !tbaa !103
  %.old1.i71.i = icmp sgt i32 %.old.i70.i, 0
  br i1 %.old1.i71.i, label %bb.kd, label %bb.ke

bb.kd:                                            ; preds = %bb.kc, %bb.kb
  %i.xk = call ptr @Curl_trc_mstate_name(i32 noundef 15) #13
  call void (ptr, ptr, ...) @Curl_trc_multi(ptr noundef nonnull %1, ptr noundef nonnull @.str.32, ptr noundef %i.xk) #13
  br label %bb.ke

bb.ke:                                            ; preds = %bb.kd, %bb.kc, %bb.kb, %bb.jz
  store i32 15, ptr %i.at, align 8, !tbaa !93
  br label %mstate.exit.i279

mstate.exit.i279:                                 ; preds = %bb.ke, %bb.jy
  %i.xl = load i32, ptr %i.r, align 8, !tbaa !91
  call void @Curl_uint32_bset_remove(ptr noundef nonnull %i.bm, i32 noundef %i.xl) #13
  %i.xm = load i32, ptr %i.r, align 8, !tbaa !91
  call void @Curl_uint32_bset_remove(ptr noundef nonnull %i.q, i32 noundef %i.xm) #13
  %i.xn = load i32, ptr %i.r, align 8, !tbaa !91
  call void @Curl_uint32_bset_remove(ptr noundef nonnull %i.bn, i32 noundef %i.xn) #13
  %i.xo = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.xp = load i32, ptr %i.r, align 8, !tbaa !91
  %i.xq = call zeroext i1 @Curl_uint32_bset_add(ptr noundef nonnull %i.xo, i32 noundef %i.xp) #13 ; 0 uses
  %i.xr = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.xs = load i32, ptr %i.xr, align 4, !tbaa !97
  %i.xt = add i32 %i.xs, -1                       ; 2 uses
  store i32 %i.xt, ptr %i.xr, align 4, !tbaa !97
  %.not66.i = icmp eq i32 %i.xt, 0
  br i1 %.not66.i, label %bb.kf, label %handle_completed.exit.thread

bb.kf:                                            ; preds = %mstate.exit.i279
  %i.xu = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.xv = load ptr, ptr %i.xu, align 8, !tbaa !100
  %.not.i72.i = icmp eq ptr %i.xv, null
  br i1 %.not.i72.i, label %handle_completed.exit.thread, label %bb.kg

bb.kg:                                            ; preds = %bb.kf
  %i.xw = load ptr, ptr %i.t, align 8, !tbaa !40
  %i.xx = call i32 @Curl_multi_ev_assess_xfer(ptr noundef nonnull %0, ptr noundef %i.xw) #13 ; 0 uses
  br label %handle_completed.exit.thread

handle_completed.exit.thread:                     ; preds = %._crit_edge, %bb.q, %mstate.exit.i279, %bb.kf, %bb.kg
  %.1130.ph = phi i32 [ 0, %bb.kg ], [ 0, %bb.kf ], [ 0, %mstate.exit.i279 ], [ 4, %bb.q ], [ 4, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #13
  br label %bb.kk

bb.kh:                                            ; preds = %bb.it
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #13
  %i.xy = icmp eq i32 %i.up, -1
  br i1 %i.xy, label %.critedge.backedge, label %bb.ki

bb.ki:                                            ; preds = %bb.kh
  %i.xz = load i16, ptr %i.m, align 8
  %i.ya = and i16 %i.xz, 4
  %.not323 = icmp eq i16 %i.ya, 0
  br i1 %.not323, label %bb.kj, label %.critedge.backedge

bb.kj:                                            ; preds = %bb.ki
  %i.yb = getelementptr inbounds nuw i8, ptr %1, i64 44
  store i32 %i.uo, ptr %i.yb, align 4, !tbaa !114
  br label %bb.kk

bb.kk:                                            ; preds = %handle_completed.exit.thread, %bb.a, %bb.kj, %bb.e
  %.2131 = phi i32 [ 0, %bb.e ], [ 0, %bb.kj ], [ %.1130.ph, %handle_completed.exit.thread ], [ 2, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  ret i32 %.2131
}

declare i32 @Curl_mntfy_dispatch_all(ptr noundef) local_unnamed_addr #2

declare ptr @Curl_splaygetbest(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @Curl_splayget(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @add_next_timeout(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 2952 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 3024 ; 2 uses
  %i.c = tail call ptr @Curl_llist_head(ptr noundef nonnull %i.b) #13 ; 2 uses
  %.not27 = icmp eq ptr %i.c, null
  br i1 %.not27, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.02228 = phi ptr [ %i.d, %bb.b ], [ %i.c, %bb.a ] ; 3 uses
  %i.d = tail call ptr @Curl_node_next(ptr noundef nonnull %.02228) #13 ; 2 uses
  %i.e = tail call ptr @Curl_node_elem(ptr noundef nonnull %.02228) #13
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = tail call i64 @curlx_ptimediff_us(ptr noundef nonnull %i.f, ptr noundef %0) #13
  %i.h = icmp slt i64 %i.g, 1
  br i1 %i.h, label %bb.b, label %.thread

bb.b:                                             ; preds = %.lr.ph
  tail call void @Curl_node_remove(ptr noundef nonnull %.02228) #13
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %.thread, label %.lr.ph

.thread:                                          ; preds = %bb.b, %.lr.ph, %bb.a
  %i.i = tail call ptr @Curl_llist_head(ptr noundef nonnull %i.b) #13 ; 2 uses
  %.not24 = icmp eq ptr %i.i, null
  br i1 %.not24, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.thread
  store i64 0, ptr %i.a, align 8, !tbaa !133
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 2960
  store i32 0, ptr %i.j, align 8, !tbaa !134
  br label %bb.e

bb.d:                                             ; preds = %.thread
  %i.k = tail call ptr @Curl_node_elem(ptr noundef nonnull %i.i) #13
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.l, i64 16, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !135
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 2968
  %i.p = tail call ptr @Curl_splayinsert(ptr noundef nonnull %i.a, ptr noundef %i.n, ptr noundef nonnull %i.o) #13
  store ptr %i.p, ptr %i.m, align 8, !tbaa !135
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @multi_handle_timeout(ptr noundef %0, ptr nofree noundef nonnull writeonly captures(none) %1, ptr nofree noundef nonnull captures(none) %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.curltime, align 8           ; 6 uses
  %i.a = tail call i64 @Curl_timeleft_ms(ptr noundef %0) #13
  %i.b = icmp slt i64 %i.a, 0                     ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !93   ; 2 uses
  %i.e = icmp ult i32 %i.d, 7
  br i1 %i.e, label %bb.c, label %.thread

.thread:                                          ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2432
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false), !tbaa.struct !112
  br label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2416
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.g, i64 16, i1 false), !tbaa.struct !112
  %i.h = icmp eq i32 %i.d, 4
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !104
  %i.k = getelementptr i8, ptr %i.j, i64 732
  %4 = load i32, ptr %i.k, align 4
  %5 = and i32 %4, 1
  %.not26 = icmp eq i32 %5, 0
  %i.l = select i1 %.not26, ptr @.str.55, ptr @.str.54
  %i.m = tail call ptr @Curl_pgrs_now(ptr noundef nonnull %0) #13
  %i.n = call i64 @curlx_ptimediff_ms(ptr noundef %i.m, ptr noundef nonnull %3) #13
  call void (ptr, ptr, ...) @Curl_failf(ptr noundef nonnull %0, ptr noundef nonnull @.str.53, ptr noundef nonnull %i.l, i64 noundef %i.n) #13
  br label %bb.h

bb.e:                                             ; preds = %.thread, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !246
  %.not = icmp eq i64 %i.p, -1
  %i.q = tail call ptr @Curl_pgrs_now(ptr noundef nonnull %0) #13
  %i.r = call i64 @curlx_ptimediff_ms(ptr noundef %i.q, ptr noundef nonnull %3) #13 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.t = load i64, ptr %i.s, align 8, !tbaa !247  ; 2 uses
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = load i64, ptr %i.o, align 8, !tbaa !246
  call void (ptr, ptr, ...) @Curl_failf(ptr noundef nonnull %0, ptr noundef nonnull @.str.56, i64 noundef %i.r, i64 noundef %i.t, i64 noundef %i.u) #13
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  call void (ptr, ptr, ...) @Curl_failf(ptr noundef nonnull %0, ptr noundef nonnull @.str.57, i64 noundef %i.r, i64 noundef %i.t) #13
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.d
  store i32 28, ptr %2, align 4, !tbaa !39
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !104  ; 2 uses
  %.not27 = icmp eq ptr %i.w, null
  br i1 %.not27, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = load i32, ptr %i.c, align 8, !tbaa !93
  %i.y = icmp ugt i32 %i.x, 7
  br i1 %i.y, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @Curl_conncontrol(ptr noundef nonnull %i.w, i32 noundef 2) #13
  store i8 1, ptr %1, align 1, !tbaa !156
  %.pre = load i32, ptr %2, align 4, !tbaa !39
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.z = phi i32 [ %.pre, %bb.j ], [ 28, %bb.i ]
  %i.aa = call fastcc i32 @multi_done(ptr noundef nonnull %0, i32 noundef %i.z, i1 noundef zeroext true) ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %bb.l
  ret i1 %i.b
}

; Function Attrs: nounwind uwtable
define internal fastcc void @move_pending_to_connect(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !91
  tail call void @Curl_uint32_bset_remove(ptr noundef nonnull %i.a, i32 noundef %i.c) #13
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load i32, ptr %i.b, align 8, !tbaa !91
  %i.f = tail call zeroext i1 @Curl_uint32_bset_add(ptr noundef nonnull %i.d, i32 noundef %i.e) #13 ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !93
  %i.i = icmp eq i32 %i.h, 3
  br i1 %i.i, label %mstate.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 2049
  %i.k = load i32, ptr %i.j, align 1
  %i.l = and i32 %i.k, 134217728
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 4296
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !101  ; 2 uses
  %.not39.i = icmp eq ptr %i.n, null
  br i1 %.not39.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load i32, ptr %i.o, align 8, !tbaa !103
  %i.q = icmp sgt i32 %i.p, 0
  %i.r = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_multi, i64 8), align 8
  %i.s = icmp sgt i32 %i.r, 0
  %or.cond.i = select i1 %i.q, i1 %i.s, i1 false
  br i1 %or.cond.i, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.c
  %.old.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_multi, i64 8), align 8, !tbaa !103
  %.old1.i = icmp sgt i32 %.old.i, 0
  br i1 %.old1.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.t = tail call ptr @Curl_trc_mstate_name(i32 noundef 3) #13
  tail call void (ptr, ptr, ...) @Curl_trc_multi(ptr noundef nonnull %1, ptr noundef nonnull @.str.32, ptr noundef %i.t) #13
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.b
  store i32 3, ptr %i.g, align 8, !tbaa !93
  tail call void @Curl_init_CONNECT(ptr noundef nonnull %1) #13, !inline_history !157
  br label %mstate.exit

mstate.exit:                                      ; preds = %bb.a, %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !90   ; 2 uses
  %.not.i6 = icmp eq ptr %i.v, null
  br i1 %.not.i6, label %Curl_multi_mark_dirty.exit, label %bb.h

bb.h:                                             ; preds = %mstate.exit
  %i.w = load i32, ptr %i.b, align 8, !tbaa !91   ; 2 uses
  %.not5.i = icmp eq i32 %i.w, -1
  br i1 %.not5.i, label %Curl_multi_mark_dirty.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 64
  %i.y = tail call zeroext i1 @Curl_uint32_bset_add(ptr noundef nonnull %i.x, i32 noundef %i.w) #13 ; 0 uses
  br label %Curl_multi_mark_dirty.exit

Curl_multi_mark_dirty.exit:                       ; preds = %mstate.exit, %bb.h, %bb.i
  ret void
}

declare void @curlx_pnow(ptr noundef) local_unnamed_addr #2

declare void @Curl_cshutdn_perform(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @Curl_pretransfer(ptr noundef) local_unnamed_addr #2

declare i32 @Curl_conn_connect(ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @sigaction(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #10

declare i32 @Curl_connect(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @Curl_retry_request(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @Curl_pgrsCheck(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 82) i32 @mspeed_check(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2224 ; 3 uses
  %i.b = tail call zeroext i1 @Curl_rlimit_active(ptr noundef nonnull %i.a) #13
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2120
  %i.d = tail call zeroext i1 @Curl_rlimit_active(ptr noundef nonnull %i.c) #13
  br i1 %i.d, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = tail call ptr @Curl_pgrs_now(ptr noundef nonnull %0) #13 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2120 ; 2 uses
  %i.g = tail call i64 @Curl_rlimit_wait_ms(ptr noundef nonnull %i.f, ptr noundef %i.e) #13 ; 2 uses
  %i.h = tail call i64 @Curl_rlimit_wait_ms(ptr noundef nonnull %i.a, ptr noundef %i.e) #13 ; 2 uses
  %i.i = icmp ne i64 %i.g, 0
  %i.j = icmp ne i64 %i.h, 0
  %or.cond = select i1 %i.i, i1 true, i1 %i.j
  br i1 %or.cond, label %bb.d, label %bb.q

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !93
  %.not79 = icmp eq i32 %i.l, 12
  br i1 %.not79, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 2049
  %i.n = load i32, ptr %i.m, align 1
  %i.o = and i32 %i.n, 134217728
  %.not.i = icmp eq i32 %i.o, 0
  br i1 %.not.i, label %mstate.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4296
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !101  ; 2 uses
  %.not39.i = icmp eq ptr %i.q, null
  br i1 %.not39.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load i32, ptr %i.r, align 8, !tbaa !103
  %i.t = icmp sgt i32 %i.s, 0
  %i.u = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_multi, i64 8), align 8
  %i.v = icmp sgt i32 %i.u, 0
  %or.cond.i = select i1 %i.t, i1 %i.v, i1 false
  br i1 %or.cond.i, label %bb.i, label %mstate.exit

bb.h:                                             ; preds = %bb.f
  %.old.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_multi, i64 8), align 8, !tbaa !103
  %.old1.i = icmp sgt i32 %.old.i, 0
  br i1 %.old1.i, label %bb.i, label %mstate.exit

end_hunk_1
