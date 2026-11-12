Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/curl/original/cshutdn?download=true
inline.NumInlined: 14
inline.NumDeleted: 8
begin_hunk_0_@Curl_cshutdn_terminate:bb.a
  %.pre18.i = load i32, ptr %i.f, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e, %bb.d
  %i.x = phi i32 [ %.pre18.i, %bb.h ], [ %i.g, %bb.e ], [ %i.g, %bb.d ]
  %i.y = or i32 %i.x, 2097152
  store i32 %i.y, ptr %i.f, align 8
  br label %cshutdn_run_conn_handler.exit

cshutdn_run_conn_handler.exit:                    ; preds = %bb.c, %bb.i
  br i1 %2, label %bb.j, label %bb.k

bb.j:                                             ; preds = %cshutdn_run_conn_handler.exit
  call fastcc void @cshutdn_run_once(ptr noundef %.0, ptr noundef nonnull %1, ptr noundef nonnull %i.a)
  br label %bb.k

bb.k:                                             ; preds = %cshutdn_run_conn_handler.exit, %bb.j
  %.not46 = icmp eq ptr %.0, null
  br i1 %.not46, label %bb.q, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.z = getelementptr inbounds nuw i8, ptr %.0, i64 2187
  %i.aa = load i64, ptr %i.z, align 1
  %i.ab = and i64 %i.aa, 536870912
  %.not47 = icmp eq i64 %i.ab, 0
  br i1 %.not47, label %bb.q, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ac = getelementptr inbounds nuw i8, ptr %.0, i64 4504
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !72 ; 2 uses
  %.not48 = icmp eq ptr %i.ad, null
  br i1 %.not48, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !74
  %i.ag = icmp sgt i32 %i.af, 0
  %i.ah = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_multi, i64 8), align 8
  %i.ai = icmp sgt i32 %i.ah, 0
  %or.cond = select i1 %i.ag, i1 %i.ai, i1 false
  br i1 %or.cond, label %bb.p, label %bb.q

bb.o:                                             ; preds = %bb.m
  %.old = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_multi, i64 8), align 8, !tbaa !74
  %.old1 = icmp sgt i32 %.old, 0
  br i1 %.old1, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.aj = load i32, ptr %i.f, align 8
  %i.ak = and i32 %i.aj, 4194304
  %.not49 = icmp eq i32 %i.ak, 0
  %i.al = select i1 %.not49, ptr @.str.3, ptr @.str.2
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.an = load i64, ptr %i.am, align 8, !tbaa !108
  tail call void (ptr, ptr, ...) @Curl_trc_multi(ptr noundef nonnull %.0, ptr noundef nonnull @.str.1, ptr noundef nonnull %i.al, i64 noundef %i.an) #7
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n, %bb.l, %bb.k
  tail call void @Curl_conn_cf_discard_all(ptr noundef %.0, ptr noundef nonnull %1, i32 noundef 1) #7
  tail call void @Curl_conn_cf_discard_all(ptr noundef %.0, ptr noundef nonnull %1, i32 noundef 0) #7
  tail call void @Curl_detach_connection(ptr noundef %.0) #7
  %i.ao = load ptr, ptr %i.b, align 8, !tbaa !91  ; 2 uses
  %.not50 = icmp eq ptr %i.ao, null
  br i1 %.not50, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @Curl_multi_ev_conn_done(ptr noundef nonnull %i.ao, ptr noundef nonnull %0, ptr noundef nonnull %1) #7
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  tail call void @Curl_conn_free(ptr noundef %.0, ptr noundef nonnull %1) #7
  %i.ap = load ptr, ptr %i.b, align 8, !tbaa !91  ; 4 uses
  %.not51 = icmp eq ptr %i.ap, null
  br i1 %.not51, label %bb.z, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 2187
  %i.ar = load i64, ptr %i.aq, align 1
  %i.as = and i64 %i.ar, 536870912
  %.not53 = icmp eq i64 %i.as, 0
  br i1 %.not53, label %bb.y, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 4504
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !72 ; 2 uses
  %.not54 = icmp eq ptr %i.au, null
  br i1 %.not54, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !74
  %i.ax = icmp sgt i32 %i.aw, 0
  %i.ay = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_multi, i64 8), align 8
  %i.az = icmp sgt i32 %i.ay, 0
  %or.cond4 = select i1 %i.ax, i1 %i.az, i1 false
  br i1 %or.cond4, label %bb.x, label %bb.y

bb.w:                                             ; preds = %bb.u
  %.old2 = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_multi, i64 8), align 8, !tbaa !74
  %.old3 = icmp sgt i32 %.old2, 0
  br i1 %.old3, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.v, %bb.w
  tail call void (ptr, ptr, ...) @Curl_trc_multi(ptr noundef nonnull %0, ptr noundef nonnull @.str.4) #7
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !91
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v, %bb.t
  %i.ba = phi ptr [ %.pre, %bb.x ], [ %i.ap, %bb.w ], [ %i.ap, %bb.v ], [ %i.ap, %bb.t ]
  tail call void @Curl_multi_connchanged(ptr noundef %i.ba) #7
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare void @Curl_conn_cf_discard_all(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @Curl_multi_ev_conn_done(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @Curl_conn_free(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @Curl_multi_connchanged(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @Curl_cshutdn_close_oldest(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !91   ; 2 uses
  %.not9 = icmp eq ptr %i.b, null
  br i1 %.not9, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 504
  %i.d = tail call fastcc zeroext i1 @cshutdn_destroy_oldest(ptr noundef nonnull %i.c, ptr noundef nonnull %0, ptr noundef %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i1 [ %i.d, %bb.c ], [ false, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @cshutdn_destroy_oldest(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(address_is_null) %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.sigaction, align 8          ; 6 uses
  %4 = alloca %struct.Curl_sigpipe_ctx, align 8   ; 7 uses
  %i.a = tail call ptr @Curl_llist_head(ptr noundef %0) #7 ; 5 uses
  %.not22.not = icmp eq ptr %i.a, null
  br i1 %.not22.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.not16 = icmp eq ptr %2, null
  %i.b = tail call ptr @Curl_node_elem(ptr noundef nonnull %i.a) #7
  br i1 %.not16, label %.split, label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !109
  %i.e = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) %i.d) #8
  %.not1726 = icmp eq i32 %i.e, 0
  br i1 %.not1726, label %.split, label %.lr.ph28

bb.b:                                             ; preds = %.lr.ph28
  %i.f = tail call ptr @Curl_node_elem(ptr noundef nonnull %i.j) #7
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !109
  %i.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) %i.h) #8
  %.not17 = icmp eq i32 %i.i, 0
  br i1 %.not17, label %.split, label %.lr.ph28, !llvm.loop !120

.lr.ph28:                                         ; preds = %.lr.ph.split, %bb.b
  %.02327 = phi ptr [ %i.j, %bb.b ], [ %i.a, %.lr.ph.split ]
  %i.j = tail call ptr @Curl_node_next(ptr noundef nonnull %.02327) #7 ; 4 uses
  %.not.not = icmp eq ptr %i.j, null
  br i1 %.not.not, label %.critedge, label %bb.b, !llvm.loop !120

.split:                                           ; preds = %bb.b, %.lr.ph, %.lr.ph.split
  %.us-phi = phi ptr [ %i.a, %.lr.ph ], [ %i.a, %.lr.ph.split ], [ %i.j, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  %i.k = tail call ptr @Curl_node_elem(ptr noundef nonnull %.us-phi) #7
  tail call void @Curl_node_remove(ptr noundef nonnull %.us-phi) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %4, i8 0, i64 160, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 152 ; 3 uses
  store i8 1, ptr %i.l, align 8
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %sigpipe_apply.exit, label %bb.c

bb.c:                                             ; preds = %.split
  %i.m = getelementptr i8, ptr %1, i64 2191
  %5 = load i32, ptr %i.m, align 1
  %6 = and i32 %5, 1
  %.not6.i.not = icmp eq i32 %6, 0
  br i1 %.not6.i.not, label %bb.d, label %sigpipe_apply.exit

bb.d:                                             ; preds = %bb.c
  store i8 0, ptr %i.l, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  %i.n = call i32 @sigaction(i32 noundef 13, ptr noundef null, ptr noundef nonnull %4) #7 ; 0 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %3, ptr noundef nonnull align 8 dereferenceable(152) %4, i64 152, i1 false), !tbaa.struct !114
  store ptr inttoptr (i64 1 to ptr), ptr %3, align 8, !tbaa !111
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 136 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !117
  %i.q = and i32 %i.p, -5
  store i32 %i.q, ptr %i.o, align 8, !tbaa !117
  %i.r = call i32 @sigaction(i32 noundef 13, ptr noundef nonnull %3, ptr noundef null) #7 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  br label %sigpipe_apply.exit

sigpipe_apply.exit:                               ; preds = %.split, %bb.c, %bb.d
  call void @Curl_cshutdn_terminate(ptr noundef %1, ptr noundef %i.k, i1 noundef zeroext false)
  %i.s = load i8, ptr %i.l, align 8
  %i.t = and i8 %i.s, 1
  %.not.i18 = icmp eq i8 %i.t, 0
  br i1 %.not.i18, label %bb.e, label %sigpipe_restore.exit

bb.e:                                             ; preds = %sigpipe_apply.exit
  %i.u = call i32 @sigaction(i32 noundef 13, ptr noundef nonnull %4, ptr noundef null) #7 ; 0 uses
  br label %sigpipe_restore.exit

sigpipe_restore.exit:                             ; preds = %sigpipe_apply.exit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph28, %bb.a, %sigpipe_restore.exit
  %.not20 = phi i1 [ true, %sigpipe_restore.exit ], [ false, %bb.a ], [ false, %.lr.ph28 ]
  ret i1 %.not20
}

; Function Attrs: nounwind uwtable
define noundef i32 @Curl_cshutdn_init(ptr noundef initializes((32, 40)) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %1, ptr %i.a, align 8, !tbaa !118
  tail call void @Curl_llist_init(ptr noundef %0, ptr noundef null) #7
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8
  %i.d = or i8 %i.c, 1
  store i8 %i.d, ptr %i.b, align 8
  ret i32 0
}

declare void @Curl_llist_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define void @Curl_cshutdn_destroy(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca [10 x %struct.pollfd], align 16     ; 4 uses
  %3 = alloca %struct.curl_pollfds, align 8       ; 9 uses
  %4 = alloca %struct.curltime, align 8           ; 4 uses
  %5 = alloca %struct.Curl_sigpipe_ctx, align 8   ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i8, ptr %i.a, align 8
  %i.c = trunc i8 %i.b to i1
  %i.d = icmp ne ptr %1, null
  %or.cond = and i1 %i.d, %i.c
  br i1 %or.cond, label %bb.b, label %bb.ag

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 2187 ; 5 uses
  %i.f = load i64, ptr %i.e, align 1
  %i.g = and i64 %i.f, 536870912
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4504
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !72   ; 2 uses
  %.not16 = icmp eq ptr %i.i, null
  br i1 %.not16, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !74
  %i.l = icmp sgt i32 %i.k, 0
  %i.m = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_multi, i64 8), align 8
  %i.n = icmp sgt i32 %i.m, 0
  %or.cond3 = select i1 %i.l, i1 %i.n, i1 false
  br i1 %or.cond3, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.c
  %.old = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_multi, i64 8), align 8, !tbaa !74
  %.old2 = icmp sgt i32 %.old, 0
  br i1 %.old2, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.o = tail call i64 @Curl_llist_count(ptr noundef nonnull %0) #7
  tail call void (ptr, ptr, ...) @Curl_trc_multi(ptr noundef nonnull %1, ptr noundef nonnull @.str.5, i64 noundef %i.o, i32 noundef 0) #7
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  %i.p = tail call ptr @Curl_pgrs_now(ptr noundef nonnull %1) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %i.p, i64 16, i1 false), !tbaa.struct !122
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7
  %i.q = load i64, ptr %i.e, align 1
  %i.r = and i64 %i.q, 536870912
  %.not.i = icmp eq i64 %i.r, 0
  br i1 %.not.i, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 4504
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !72   ; 2 uses
  %.not58.i = icmp eq ptr %i.t, null
  br i1 %.not58.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load i32, ptr %i.u, align 8, !tbaa !74
  %i.w = icmp sgt i32 %i.v, 0
  %i.x = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_multi, i64 8), align 8
  %i.y = icmp sgt i32 %i.x, 0
  %or.cond.i = select i1 %i.w, i1 %i.y, i1 false
  br i1 %or.cond.i, label %bb.k, label %bb.l

bb.j:                                             ; preds = %bb.h
  %.old.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_multi, i64 8), align 8, !tbaa !74
  %.old1.i = icmp sgt i32 %.old.i, 0
  br i1 %.old1.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.i
  tail call void (ptr, ptr, ...) @Curl_trc_multi(ptr noundef nonnull %1, ptr noundef nonnull @.str.9) #7
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.g
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %5, i8 0, i64 160, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 152 ; 2 uses
  store i8 1, ptr %i.z, align 8
  %i.aa = tail call ptr @Curl_llist_head(ptr noundef nonnull %0) #7
  %.not5971.i = icmp eq ptr %i.aa, null
  br i1 %.not5971.i, label %.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.l
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.m

bb.m:                                             ; preds = %bb.ae, %.lr.ph.i
  call fastcc void @cshutdn_perform(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %5)
  %i.ac = call ptr @Curl_llist_head(ptr noundef nonnull %0) #7
  %.not60.i = icmp eq ptr %i.ac, null
  br i1 %.not60.i, label %bb.n, label %bb.s

bb.n:                                             ; preds = %bb.m
  %i.ad = load i64, ptr %i.e, align 1
  %i.ae = and i64 %i.ad, 536870912
  %.not61.i = icmp eq i64 %i.ae, 0
  br i1 %.not61.i, label %.thread.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 4504
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !72 ; 2 uses
  %.not62.i = icmp eq ptr %i.ag, null
  br i1 %.not62.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !74
  %i.aj = icmp sgt i32 %i.ai, 0
  %i.ak = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_multi, i64 8), align 8
  %i.al = icmp sgt i32 %i.ak, 0
  %or.cond4.i = select i1 %i.aj, i1 %i.al, i1 false
  br i1 %or.cond4.i, label %bb.r, label %.thread.i

bb.q:                                             ; preds = %bb.o
  %.old2.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_multi, i64 8), align 8, !tbaa !74
  %.old3.i = icmp sgt i32 %.old2.i, 0
  br i1 %.old3.i, label %bb.r, label %.thread.i

bb.r:                                             ; preds = %bb.q, %bb.p
  call void (ptr, ptr, ...) @Curl_trc_multi(ptr noundef nonnull %1, ptr noundef nonnull @.str.10) #7
  br label %.thread.i

bb.s:                                             ; preds = %bb.m
  %i.am = call ptr @Curl_pgrs_now(ptr noundef nonnull %1) #7
  %i.an = call i64 @curlx_ptimediff_ms(ptr noundef %i.am, ptr noundef nonnull %4) #7 ; 2 uses
  %i.ao = icmp sgt i64 %i.an, -1
  br i1 %i.ao, label %bb.t, label %bb.y

bb.t:                                             ; preds = %bb.s
  %i.ap = load i64, ptr %i.e, align 1
  %i.aq = and i64 %i.ap, 536870912
  %.not66.i = icmp eq i64 %i.aq, 0
  br i1 %.not66.i, label %.thread.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 4504
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !72 ; 2 uses
  %.not67.i = icmp eq ptr %i.as, null
  br i1 %.not67.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load i32, ptr %i.at, align 8, !tbaa !74
end_hunk_0
begin_hunk_1_@Curl_cshutdn_dest_count:bb.a
  %spec.select = add i64 %.01119, %i.i            ; 2 uses
  %i.j = tail call ptr @Curl_node_next(ptr noundef nonnull %.020) #7 ; 2 uses
  %.not16 = icmp eq ptr %i.j, null
  br i1 %.not16, label %.loopexit, label %.lr.ph, !llvm.loop !127

.loopexit:                                        ; preds = %.lr.ph, %bb.c, %bb.a, %bb.b
  %.012 = phi i64 [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.c ], [ %spec.select, %.lr.ph ]
  ret i64 %.012
}

declare ptr @Curl_llist_head(ptr noundef) local_unnamed_addr #1

declare ptr @Curl_node_elem(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #3

declare ptr @Curl_node_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define void @Curl_cshutdn_add(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !118  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !107  ; 17 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 672
  %i.f = load i64, ptr %i.e, align 8, !tbaa !128  ; 3 uses
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i64 @Curl_llist_count(ptr noundef nonnull %0) #7
  %i.h = add i64 %i.g, %2
  %.not46 = icmp ugt i64 %i.f, %i.h
  br i1 %.not46, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not47 = icmp eq ptr %i.d, null
  br i1 %.not47, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 2187
  %i.j = load i64, ptr %i.i, align 1
  %i.k = and i64 %i.j, 536870912
  %.not48 = icmp eq i64 %i.k, 0
  br i1 %.not48, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 4504
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !72   ; 2 uses
  %.not49 = icmp eq ptr %i.m, null
  br i1 %.not49, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load i32, ptr %i.n, align 8, !tbaa !74
  %i.p = icmp sgt i32 %i.o, 0
  %i.q = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_multi, i64 8), align 8
  %i.r = icmp sgt i32 %i.q, 0
  %or.cond = select i1 %i.p, i1 %i.r, i1 false
  br i1 %or.cond, label %bb.h, label %bb.i

bb.g:                                             ; preds = %bb.e
  %.old = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_multi, i64 8), align 8, !tbaa !74
  %.old1 = icmp sgt i32 %.old, 0
  br i1 %.old1, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.f, %bb.g
  tail call void (ptr, ptr, ...) @Curl_trc_multi(ptr noundef nonnull %i.d, ptr noundef nonnull @.str.6, i64 noundef %i.f) #7
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.d, %bb.c
  %i.s = tail call fastcc zeroext i1 @cshutdn_destroy_oldest(ptr noundef nonnull %0, ptr noundef %i.d, ptr noundef null) ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.b, %bb.a
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !118
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 160
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !129
  %.not50 = icmp eq ptr %i.v, null
  br i1 %.not50, label %bb.s, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @Curl_attach_connection(ptr noundef %i.d, ptr noundef %1) #7
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !118
  %i.x = tail call i32 @Curl_multi_ev_assess_conn(ptr noundef %i.w, ptr noundef %i.d, ptr noundef %1) #7
  tail call void @Curl_detach_connection(ptr noundef %i.d) #7
  %.not51 = icmp eq i32 %i.x, 0
  br i1 %.not51, label %bb.s, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.not55 = icmp eq ptr %i.d, null
  br i1 %.not55, label %bb.r, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 2187
  %i.z = load i64, ptr %i.y, align 1
  %i.aa = and i64 %i.z, 536870912
  %.not56 = icmp eq i64 %i.aa, 0
  br i1 %.not56, label %bb.r, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 4504
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !72 ; 2 uses
  %.not57 = icmp eq ptr %i.ac, null
  br i1 %.not57, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !74
  %i.af = icmp sgt i32 %i.ae, 0
  %i.ag = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_multi, i64 8), align 8
  %i.ah = icmp sgt i32 %i.ag, 0
  %or.cond4 = select i1 %i.af, i1 %i.ah, i1 false
  br i1 %or.cond4, label %bb.q, label %bb.r

bb.p:                                             ; preds = %bb.n
  %.old2 = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_multi, i64 8), align 8, !tbaa !74
  %.old3 = icmp sgt i32 %.old2, 0
  br i1 %.old3, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.o, %bb.p
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !108
  tail call void (ptr, ptr, ...) @Curl_trc_multi(ptr noundef nonnull %i.d, ptr noundef nonnull @.str.7, i64 noundef %i.aj) #7
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o, %bb.m, %bb.l
  tail call void @Curl_cshutdn_terminate(ptr noundef %i.d, ptr noundef %1, i1 noundef zeroext false)
  br label %bb.y

bb.s:                                             ; preds = %bb.k, %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void @Curl_llist_append(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %i.ak) #7
  %.not52 = icmp eq ptr %i.d, null
  br i1 %.not52, label %bb.y, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 2187
  %i.am = load i64, ptr %i.al, align 1
  %i.an = and i64 %i.am, 536870912
  %.not53 = icmp eq i64 %i.an, 0
  br i1 %.not53, label %bb.y, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 4504
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !72 ; 2 uses
  %.not54 = icmp eq ptr %i.ap, null
  br i1 %.not54, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !74
  %i.as = icmp sgt i32 %i.ar, 0
  %i.at = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_multi, i64 8), align 8
  %i.au = icmp sgt i32 %i.at, 0
  %or.cond7 = select i1 %i.as, i1 %i.au, i1 false
  br i1 %or.cond7, label %bb.x, label %bb.y

bb.w:                                             ; preds = %bb.u
  %.old5 = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_multi, i64 8), align 8, !tbaa !74
  %.old6 = icmp sgt i32 %.old5, 0
  br i1 %.old6, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.v, %bb.w
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !108
  %i.ax = tail call i64 @Curl_llist_count(ptr noundef nonnull %0) #7
  tail call void (ptr, ptr, ...) @Curl_trc_multi(ptr noundef nonnull %i.d, ptr noundef nonnull @.str.8, i64 noundef %i.aw, i64 noundef %i.ax) #7
  br label %bb.y

bb.y:                                             ; preds = %bb.s, %bb.t, %bb.v, %bb.w, %bb.x, %bb.r
  ret void
}

declare void @Curl_llist_append(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define void @Curl_cshutdn_perform(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  tail call fastcc void @cshutdn_perform(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @cshutdn_perform(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.sigaction, align 8          ; 6 uses
  %i.a = alloca i8, align 1                       ; 7 uses
  %i.b = tail call ptr @Curl_llist_head(ptr noundef %0) #7 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.w, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not33 = icmp eq ptr %1, null
  br i1 %.not33, label %Curl_cshutdn_run_once.exit.us, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 2187 ; 2 uses
  %i.d = load i64, ptr %i.c, align 1              ; 2 uses
  %i.e = and i64 %i.d, 536870912
  %.not34 = icmp eq i64 %i.e, 0
  %4 = lshr i64 %i.d, 32
  %5 = trunc nuw i64 %4 to i32                    ; 3 uses
  br i1 %.not34, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4504
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !72   ; 2 uses
  %.not35 = icmp eq ptr %i.g, null
  br i1 %.not35, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load i32, ptr %i.h, align 8, !tbaa !74
  %i.j = icmp sgt i32 %i.i, 0
  %i.k = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_multi, i64 8), align 8
  %i.l = icmp sgt i32 %i.k, 0
  %or.cond = select i1 %i.j, i1 %i.l, i1 false
  br i1 %or.cond, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.d
  %.old = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_multi, i64 8), align 8, !tbaa !74
  %.old1 = icmp sgt i32 %.old, 0
  br i1 %.old1, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.m = tail call i64 @Curl_llist_count(ptr noundef %0) #7
  tail call void (ptr, ptr, ...) @Curl_trc_multi(ptr noundef nonnull %1, ptr noundef nonnull @.str.15, i64 noundef %i.m) #7
  %.phi.trans.insert = getelementptr i8, ptr %1, i64 2191
  %.pre = load i32, ptr %.phi.trans.insert, align 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.c
  %6 = phi i32 [ %.pre, %bb.g ], [ %5, %bb.f ], [ %5, %bb.e ], [ %5, %bb.c ] ; 2 uses
  %7 = getelementptr i8, ptr %1, i64 2191         ; 2 uses
  %i.n = and i32 %6, 1
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 152 ; 3 uses
  %i.p = load i8, ptr %i.o, align 8               ; 2 uses
  %i.q = and i8 %i.p, 1                           ; 2 uses
  %i.r = zext nneg i8 %i.q to i32
  %.not6.i = icmp eq i32 %i.n, %i.r
  br i1 %.not6.i, label %sigpipe_apply.exit.split.preheader, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i, label %bb.j, label %sigpipe_restore.exit.i

bb.j:                                             ; preds = %bb.i
  %i.s = tail call i32 @sigaction(i32 noundef 13, ptr noundef nonnull %2, ptr noundef null) #7 ; 0 uses
  %.pre.i = load i32, ptr %7, align 1
  %.pre8.i = load i8, ptr %i.o, align 8
  br label %sigpipe_restore.exit.i

sigpipe_restore.exit.i:                           ; preds = %bb.j, %bb.i
  %8 = phi i8 [ %i.p, %bb.i ], [ %.pre8.i, %bb.j ]
  %9 = phi i32 [ %6, %bb.i ], [ %.pre.i, %bb.j ]
  %i.t = trunc i32 %9 to i8
  %i.u = and i8 %i.t, 1
  %i.v = and i8 %8, -2
  %i.w = or disjoint i8 %i.u, %i.v
  store i8 %i.w, ptr %i.o, align 8
  %10 = load i32, ptr %7, align 1
  %11 = and i32 %10, 1
  %.not.i7.i = icmp eq i32 %11, 0
  br i1 %.not.i7.i, label %bb.k, label %sigpipe_apply.exit.split.preheader

bb.k:                                             ; preds = %sigpipe_restore.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  %i.x = tail call i32 @sigaction(i32 noundef 13, ptr noundef null, ptr noundef nonnull %2) #7 ; 0 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %3, ptr noundef nonnull align 8 dereferenceable(152) %2, i64 152, i1 false), !tbaa.struct !114
  store ptr inttoptr (i64 1 to ptr), ptr %3, align 8, !tbaa !111
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 136 ; 2 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !117
  %i.aa = and i32 %i.z, -5
  store i32 %i.aa, ptr %i.y, align 8, !tbaa !117
  %i.ab = call i32 @sigaction(i32 noundef 13, ptr noundef nonnull %3, ptr noundef null) #7 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  br label %sigpipe_apply.exit.split.preheader

sigpipe_apply.exit.split.preheader:               ; preds = %bb.k, %sigpipe_restore.exit.i, %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 4504
  br label %sigpipe_apply.exit.split

Curl_cshutdn_run_once.exit.us:                    ; preds = %bb.b, %bb.n
  %.043.us = phi i64 [ %.1.us, %bb.n ], [ 0, %bb.b ] ; 3 uses
  %.02842.us = phi ptr [ %i.ad, %bb.n ], [ %i.b, %bb.b ] ; 3 uses
  %i.ad = tail call ptr @Curl_node_next(ptr noundef nonnull %.02842.us) #7 ; 2 uses
  %i.ae = tail call ptr @Curl_node_elem(ptr noundef nonnull %.02842.us) #7 ; 4 uses
  tail call void @Curl_attach_connection(ptr noundef %1, ptr noundef %i.ae) #7
  call fastcc void @cshutdn_run_once(ptr noundef %1, ptr noundef %i.ae, ptr noundef nonnull %i.a)
  tail call void @Curl_detach_connection(ptr noundef %1) #7
  %i.af = load i8, ptr %i.a, align 1, !tbaa !76, !range !77, !noundef !78
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %bb.m, label %bb.l

bb.l:                                             ; preds = %Curl_cshutdn_run_once.exit.us
  %i.ah = tail call i64 @Curl_conn_shutdown_timeleft(ptr noundef %1, ptr noundef %i.ae) #7 ; 2 uses
  %.not38.not.us = icmp eq i64 %i.ah, 0
  %i.ai = tail call i64 @llvm.smin.i64(i64 %i.ah, i64 %.043.us)
  %spec.select.us = select i1 %.not38.not.us, i64 %.043.us, i64 %i.ai
  br label %bb.n

bb.m:                                             ; preds = %Curl_cshutdn_run_once.exit.us
  tail call void @Curl_node_remove(ptr noundef nonnull %.02842.us) #7
  tail call void @Curl_cshutdn_terminate(ptr noundef %1, ptr noundef %i.ae, i1 noundef zeroext false)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.1.us = phi i64 [ %.043.us, %bb.m ], [ %spec.select.us, %bb.l ] ; 2 uses
  %.not36.us = icmp eq ptr %i.ad, null
  br i1 %.not36.us, label %.split.us, label %Curl_cshutdn_run_once.exit.us, !llvm.loop !130

sigpipe_apply.exit.split:                         ; preds = %sigpipe_apply.exit.split.preheader, %bb.u
  %.043 = phi i64 [ %.1, %bb.u ], [ 0, %sigpipe_apply.exit.split.preheader ] ; 3 uses
  %.02842 = phi ptr [ %i.aj, %bb.u ], [ %i.b, %sigpipe_apply.exit.split.preheader ] ; 3 uses
  %i.aj = call ptr @Curl_node_next(ptr noundef nonnull %.02842) #7 ; 2 uses
  %i.ak = call ptr @Curl_node_elem(ptr noundef nonnull %.02842) #7 ; 4 uses
  call void @Curl_attach_connection(ptr noundef nonnull %1, ptr noundef %i.ak) #7
  call fastcc void @cshutdn_run_once(ptr noundef nonnull %1, ptr noundef %i.ak, ptr noundef nonnull %i.a)
  %i.al = load i64, ptr %i.c, align 1
  %i.am = and i64 %i.al, 536870912
  %.not14.i = icmp eq i64 %i.am, 0
  br i1 %.not14.i, label %Curl_cshutdn_run_once.exit, label %bb.o

bb.o:                                             ; preds = %sigpipe_apply.exit.split
  %i.an = load ptr, ptr %i.ac, align 8, !tbaa !72 ; 2 uses
  %.not15.i = icmp eq ptr %i.an, null
  br i1 %.not15.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !74
  %i.aq = icmp sgt i32 %i.ap, 0
  %i.ar = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_multi, i64 8), align 8
  %i.as = icmp sgt i32 %i.ar, 0
  %or.cond.i = select i1 %i.aq, i1 %i.as, i1 false
  br i1 %or.cond.i, label %bb.r, label %Curl_cshutdn_run_once.exit

bb.q:                                             ; preds = %bb.o
  %.old.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_multi, i64 8), align 8, !tbaa !74
  %.old1.i = icmp sgt i32 %.old.i, 0
  br i1 %.old1.i, label %bb.r, label %Curl_cshutdn_run_once.exit

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.at = load i8, ptr %i.a, align 1, !tbaa !76, !range !77, !noundef !78
  %i.au = zext nneg i8 %i.at to i32
  call void (ptr, ptr, ...) @Curl_trc_multi(ptr noundef nonnull %1, ptr noundef nonnull @.str, i32 noundef %i.au) #7
  br label %Curl_cshutdn_run_once.exit

Curl_cshutdn_run_once.exit:                       ; preds = %sigpipe_apply.exit.split, %bb.p, %bb.q, %bb.r
  call void @Curl_detach_connection(ptr noundef nonnull %1) #7
  %i.av = load i8, ptr %i.a, align 1, !tbaa !76, !range !77, !noundef !78
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %bb.s, label %bb.t

bb.s:                                             ; preds = %Curl_cshutdn_run_once.exit
  call void @Curl_node_remove(ptr noundef nonnull %.02842) #7
  call void @Curl_cshutdn_terminate(ptr noundef nonnull %1, ptr noundef %i.ak, i1 noundef zeroext false)
  br label %bb.u

bb.t:                                             ; preds = %Curl_cshutdn_run_once.exit
  %i.ax = call i64 @Curl_conn_shutdown_timeleft(ptr noundef nonnull %1, ptr noundef %i.ak) #7 ; 2 uses
  %.not38.not = icmp eq i64 %i.ax, 0
  %i.ay = call i64 @llvm.smin.i64(i64 %i.ax, i64 %.043)
  %spec.select = select i1 %.not38.not, i64 %.043, i64 %i.ay
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.1 = phi i64 [ %.043, %bb.s ], [ %spec.select, %bb.t ] ; 2 uses
  %.not36 = icmp eq ptr %i.aj, null
  br i1 %.not36, label %.split.us, label %sigpipe_apply.exit.split, !llvm.loop !130

.split.us:                                        ; preds = %bb.u, %bb.n
  %.us-phi = phi i64 [ %.1.us, %bb.n ], [ %.1, %bb.u ] ; 2 uses
  %.not37 = icmp eq i64 %.us-phi, 0
  br i1 %.not37, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.split.us
  call void @Curl_expire_ex(ptr noundef %1, i64 noundef %.us-phi, i32 noundef 14) #7
  br label %bb.w

bb.w:                                             ; preds = %.split.us, %bb.v, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret void
}

; Function Attrs: nounwind uwtable
define void @Curl_cshutdn_setfds(ptr noundef %0, ptr noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(none) %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.easy_pollset, align 8       ; 9 uses
  %i.a = tail call ptr @Curl_llist_head(ptr noundef %0) #7
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7
  call void @Curl_pollset_init(ptr noundef nonnull %5) #7
  %i.b = call ptr @Curl_llist_head(ptr noundef %0) #7 ; 2 uses
  %.not2935 = icmp eq ptr %i.b, null
  br i1 %.not2935, label %._crit_edge, label %.lr.ph37

.lr.ph37:                                         ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph37, %.loopexit
  %.02736 = phi ptr [ %i.b, %.lr.ph37 ], [ %i.al, %.loopexit ] ; 2 uses
  %i.e = call ptr @Curl_node_elem(ptr noundef nonnull %.02736) #7 ; 2 uses
  call void @Curl_pollset_reset(ptr noundef nonnull %5) #7
  call void @Curl_attach_connection(ptr noundef %1, ptr noundef %i.e) #7
  %i.f = call i32 @Curl_conn_adjust_pollset(ptr noundef %1, ptr noundef %i.e, ptr noundef nonnull %5) #7
  call void @Curl_detach_connection(ptr noundef %1) #7
  %.not30 = icmp eq i32 %i.f, 0
  br i1 %.not30, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.c
  %i.g = load i32, ptr %i.c, align 8, !tbaa !135  ; 2 uses
  %.not38 = icmp eq i32 %i.g, 0
  br i1 %.not38, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.h = load ptr, ptr %5, align 8, !tbaa !136
  %i.i = load ptr, ptr %i.d, align 8
  %wide.trip.count = zext i32 %i.g to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.l
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.l ] ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv
  %i.k = load i32, ptr %i.j, align 4, !tbaa !112  ; 7 uses
  %i.l = icmp slt i32 %i.k, 1024
  br i1 %i.l, label %bb.e, label %bb.l

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 %indvars.iv ; 3 uses
  %i.n = load i8, ptr %i.m, align 1, !tbaa !111   ; 2 uses
  %i.o = and i8 %i.n, 1
  %.not31 = icmp eq i8 %i.o, 0
  br i1 %.not31, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = srem i32 %i.k, 64
  %i.q = zext nneg i32 %i.p to i64
  %i.r = shl nuw i64 1, %i.q
  %i.s = sdiv i32 %i.k, 64
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %2, i64 %i.t ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !119
  %i.w = or i64 %i.v, %i.r
  store i64 %i.w, ptr %i.u, align 8, !tbaa !119
  %.pre = load i8, ptr %i.m, align 1, !tbaa !111
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.x = phi i8 [ %.pre, %bb.f ], [ %i.n, %bb.e ] ; 2 uses
  %i.y = and i8 %i.x, 2
  %.not32 = icmp eq i8 %i.y, 0
  br i1 %.not32, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = srem i32 %i.k, 64
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = shl nuw i64 1, %i.aa
end_hunk_1
