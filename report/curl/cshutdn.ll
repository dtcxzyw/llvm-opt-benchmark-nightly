Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/curl/original/cshutdn?download=true
inline.NumInlined: 14
inline.NumDeleted: 8
begin_hunk_0_@Curl_cshutdn_add:bb.a
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
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 2187 ; 5 uses
  %i.d = load i64, ptr %i.c, align 1              ; 4 uses
  %i.e = and i64 %i.d, 536870912
  %.not34 = icmp eq i64 %i.e, 0
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
  %.pre = load i64, ptr %i.c, align 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.c
  %i.n = phi i64 [ %.pre, %bb.g ], [ %i.d, %bb.f ], [ %i.d, %bb.e ], [ %i.d, %bb.c ]
  %i.o = lshr i64 %i.n, 32                        ; 2 uses
  %i.p = trunc nuw i64 %i.o to i32
  %i.q = and i32 %i.p, 1
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 152 ; 3 uses
  %i.s = load i8, ptr %i.r, align 8               ; 2 uses
  %i.t = and i8 %i.s, 1                           ; 2 uses
  %i.u = zext nneg i8 %i.t to i32
  %.not6.i = icmp eq i32 %i.q, %i.u
  br i1 %.not6.i, label %sigpipe_apply.exit.split.preheader, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not.i.i = icmp eq i8 %i.t, 0
  br i1 %.not.i.i, label %bb.j, label %sigpipe_restore.exit.i

bb.j:                                             ; preds = %bb.i
  %i.v = tail call i32 @sigaction(i32 noundef 13, ptr noundef nonnull %2, ptr noundef null) #7 ; 0 uses
  %.pre.i = load i64, ptr %i.c, align 1
  %.pre8.i = load i8, ptr %i.r, align 8
  %.pre9.i = lshr i64 %.pre.i, 32
  br label %sigpipe_restore.exit.i

sigpipe_restore.exit.i:                           ; preds = %bb.j, %bb.i
  %.pre-phi.i = phi i64 [ %i.o, %bb.i ], [ %.pre9.i, %bb.j ]
  %i.w = phi i8 [ %i.s, %bb.i ], [ %.pre8.i, %bb.j ]
  %i.x = trunc i64 %.pre-phi.i to i8
  %i.y = and i8 %i.x, 1
  %i.z = and i8 %i.w, -2
  %i.aa = or disjoint i8 %i.y, %i.z
  store i8 %i.aa, ptr %i.r, align 8
  %i.ab = load i64, ptr %i.c, align 1
  %i.ac = and i64 %i.ab, 4294967296
  %.not.i7.i = icmp eq i64 %i.ac, 0
  br i1 %.not.i7.i, label %bb.k, label %sigpipe_apply.exit.split.preheader

bb.k:                                             ; preds = %sigpipe_restore.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  %i.ad = tail call i32 @sigaction(i32 noundef 13, ptr noundef null, ptr noundef nonnull %2) #7 ; 0 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %3, ptr noundef nonnull align 8 dereferenceable(152) %2, i64 152, i1 false), !tbaa.struct !114
  store ptr inttoptr (i64 1 to ptr), ptr %3, align 8, !tbaa !111
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 136 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !117
  %i.ag = and i32 %i.af, -5
  store i32 %i.ag, ptr %i.ae, align 8, !tbaa !117
  %i.ah = call i32 @sigaction(i32 noundef 13, ptr noundef nonnull %3, ptr noundef null) #7 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  br label %sigpipe_apply.exit.split.preheader

sigpipe_apply.exit.split.preheader:               ; preds = %bb.k, %sigpipe_restore.exit.i, %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 4504
  br label %sigpipe_apply.exit.split

Curl_cshutdn_run_once.exit.us:                    ; preds = %bb.b, %bb.n
  %.043.us = phi i64 [ %.1.us, %bb.n ], [ 0, %bb.b ] ; 3 uses
  %.02842.us = phi ptr [ %i.aj, %bb.n ], [ %i.b, %bb.b ] ; 3 uses
  %i.aj = tail call ptr @Curl_node_next(ptr noundef nonnull %.02842.us) #7 ; 2 uses
  %i.ak = tail call ptr @Curl_node_elem(ptr noundef nonnull %.02842.us) #7 ; 4 uses
  tail call void @Curl_attach_connection(ptr noundef %1, ptr noundef %i.ak) #7
  call fastcc void @cshutdn_run_once(ptr noundef %1, ptr noundef %i.ak, ptr noundef nonnull %i.a)
  %.pr.us = load i8, ptr %i.a, align 1, !tbaa !76
  tail call void @Curl_detach_connection(ptr noundef %1) #7
  %i.al = trunc nuw i8 %.pr.us to i1
  br i1 %i.al, label %bb.m, label %bb.l

bb.l:                                             ; preds = %Curl_cshutdn_run_once.exit.us
  %i.am = tail call i64 @Curl_conn_shutdown_timeleft(ptr noundef %1, ptr noundef %i.ak) #7 ; 2 uses
  %.not38.not.us = icmp eq i64 %i.am, 0
  %i.an = tail call i64 @llvm.smin.i64(i64 %i.am, i64 %.043.us)
  %spec.select.us = select i1 %.not38.not.us, i64 %.043.us, i64 %i.an
  br label %bb.n

bb.m:                                             ; preds = %Curl_cshutdn_run_once.exit.us
  tail call void @Curl_node_remove(ptr noundef nonnull %.02842.us) #7
  tail call void @Curl_cshutdn_terminate(ptr noundef %1, ptr noundef %i.ak, i1 noundef zeroext false)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.1.us = phi i64 [ %.043.us, %bb.m ], [ %spec.select.us, %bb.l ] ; 2 uses
  %.not36.us = icmp eq ptr %i.aj, null
  br i1 %.not36.us, label %.split.us, label %Curl_cshutdn_run_once.exit.us, !llvm.loop !130

sigpipe_apply.exit.split:                         ; preds = %sigpipe_apply.exit.split.preheader, %bb.u
  %.043 = phi i64 [ %.1, %bb.u ], [ 0, %sigpipe_apply.exit.split.preheader ] ; 3 uses
  %.02842 = phi ptr [ %i.ao, %bb.u ], [ %i.b, %sigpipe_apply.exit.split.preheader ] ; 3 uses
  %i.ao = call ptr @Curl_node_next(ptr noundef nonnull %.02842) #7 ; 2 uses
  %i.ap = call ptr @Curl_node_elem(ptr noundef nonnull %.02842) #7 ; 4 uses
  call void @Curl_attach_connection(ptr noundef nonnull %1, ptr noundef %i.ap) #7
  call fastcc void @cshutdn_run_once(ptr noundef nonnull %1, ptr noundef %i.ap, ptr noundef nonnull %i.a)
  %i.aq = load i64, ptr %i.c, align 1
  %i.ar = and i64 %i.aq, 536870912
  %.not14.i = icmp eq i64 %i.ar, 0
  br i1 %.not14.i, label %Curl_cshutdn_run_once.exitthread-pre-split, label %bb.o

bb.o:                                             ; preds = %sigpipe_apply.exit.split
  %i.as = load ptr, ptr %i.ai, align 8, !tbaa !72 ; 2 uses
  %.not15.i = icmp eq ptr %i.as, null
  br i1 %.not15.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load i32, ptr %i.at, align 8, !tbaa !74
  %i.av = icmp sgt i32 %i.au, 0
  %i.aw = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_multi, i64 8), align 8
  %i.ax = icmp sgt i32 %i.aw, 0
  %or.cond.i = select i1 %i.av, i1 %i.ax, i1 false
  br i1 %or.cond.i, label %bb.r, label %Curl_cshutdn_run_once.exitthread-pre-split

bb.q:                                             ; preds = %bb.o
  %.old.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_multi, i64 8), align 8, !tbaa !74
  %.old1.i = icmp sgt i32 %.old.i, 0
  br i1 %.old1.i, label %bb.r, label %Curl_cshutdn_run_once.exitthread-pre-split

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ay = load i8, ptr %i.a, align 1, !tbaa !76, !range !77, !noundef !78 ; 2 uses
  %i.az = zext nneg i8 %i.ay to i32
  call void (ptr, ptr, ...) @Curl_trc_multi(ptr noundef nonnull %1, ptr noundef nonnull @.str, i32 noundef %i.az) #7
  br label %Curl_cshutdn_run_once.exit

Curl_cshutdn_run_once.exitthread-pre-split:       ; preds = %bb.q, %bb.p, %sigpipe_apply.exit.split
  %.pr = load i8, ptr %i.a, align 1, !tbaa !76
  br label %Curl_cshutdn_run_once.exit

Curl_cshutdn_run_once.exit:                       ; preds = %Curl_cshutdn_run_once.exitthread-pre-split, %bb.r
  %4 = phi i8 [ %.pr, %Curl_cshutdn_run_once.exitthread-pre-split ], [ %i.ay, %bb.r ]
  call void @Curl_detach_connection(ptr noundef nonnull %1) #7
  %i.ba = trunc nuw i8 %4 to i1
  br i1 %i.ba, label %bb.s, label %bb.t

bb.s:                                             ; preds = %Curl_cshutdn_run_once.exit
  call void @Curl_node_remove(ptr noundef nonnull %.02842) #7
  call void @Curl_cshutdn_terminate(ptr noundef nonnull %1, ptr noundef %i.ap, i1 noundef zeroext false)
  br label %bb.u

bb.t:                                             ; preds = %Curl_cshutdn_run_once.exit
  %i.bb = call i64 @Curl_conn_shutdown_timeleft(ptr noundef nonnull %1, ptr noundef %i.ap) #7 ; 2 uses
  %.not38.not = icmp eq i64 %i.bb, 0
  %i.bc = call i64 @llvm.smin.i64(i64 %i.bb, i64 %.043)
  %spec.select = select i1 %.not38.not, i64 %.043, i64 %i.bc
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.1 = phi i64 [ %.043, %bb.s ], [ %spec.select, %bb.t ] ; 2 uses
  %.not36 = icmp eq ptr %i.ao, null
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
  %i.ac = sdiv i32 %i.k, 64
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds [8 x i8], ptr %3, i64 %i.ad ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !119
  %i.ag = or i64 %i.af, %i.ab
  store i64 %i.ag, ptr %i.ae, align 8, !tbaa !119
  %.pre40 = load i8, ptr %i.m, align 1, !tbaa !111
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ah = phi i8 [ %.pre40, %bb.h ], [ %i.x, %bb.g ]
  %i.ai = and i8 %i.ah, 3
  %.not33 = icmp eq i8 %i.ai, 0
  br i1 %.not33, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aj = load i32, ptr %4, align 4, !tbaa !112
  %i.ak = icmp sgt i32 %i.k, %i.aj
  br i1 %i.ak, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 %i.k, ptr %4, align 4, !tbaa !112
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.j, %bb.k, %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.d, !llvm.loop !131

.loopexit:                                        ; preds = %bb.l, %.preheader, %bb.c
  %i.al = call ptr @Curl_node_next(ptr noundef nonnull %.02736) #7 ; 2 uses
  %.not29 = icmp eq ptr %i.al, null
  br i1 %.not29, label %._crit_edge, label %bb.c, !llvm.loop !132

._crit_edge:                                      ; preds = %.loopexit, %bb.b
  call void @Curl_pollset_cleanup(ptr noundef nonnull %5) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

declare void @Curl_pollset_init(ptr noundef) local_unnamed_addr #1

declare void @Curl_pollset_reset(ptr noundef) local_unnamed_addr #1

declare i32 @Curl_conn_adjust_pollset(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @Curl_pollset_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define i32 @Curl_cshutdn_add_waitfds(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.easy_pollset, align 8       ; 7 uses
  %i.a = tail call ptr @Curl_llist_head(ptr noundef %0) #7
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  call void @Curl_pollset_init(ptr noundef nonnull %3) #7
  %i.b = call ptr @Curl_llist_head(ptr noundef %0) #7 ; 2 uses
  %.not1416 = icmp eq ptr %i.b, null
  br i1 %.not1416, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.d
  %.018 = phi ptr [ %i.g, %bb.d ], [ %i.b, %bb.b ] ; 2 uses
  %.01317 = phi i32 [ %.1, %bb.d ], [ 0, %bb.b ]  ; 2 uses
  %i.c = call ptr @Curl_node_elem(ptr noundef nonnull %.018) #7 ; 2 uses
  call void @Curl_pollset_reset(ptr noundef nonnull %3) #7
  call void @Curl_attach_connection(ptr noundef %1, ptr noundef %i.c) #7
  %i.d = call i32 @Curl_conn_adjust_pollset(ptr noundef %1, ptr noundef %i.c, ptr noundef nonnull %3) #7
  call void @Curl_detach_connection(ptr noundef %1) #7
  %.not15 = icmp eq i32 %i.d, 0
  br i1 %.not15, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.e = call i32 @Curl_waitfds_add_ps(ptr noundef %2, ptr noundef nonnull %3) #7
  %i.f = add i32 %i.e, %.01317
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %.1 = phi i32 [ %.01317, %.lr.ph ], [ %i.f, %bb.c ] ; 2 uses
  %i.g = call ptr @Curl_node_next(ptr noundef nonnull %.018) #7 ; 2 uses
  %.not14 = icmp eq ptr %i.g, null
  br i1 %.not14, label %._crit_edge, label %.lr.ph, !llvm.loop !137

._crit_edge:                                      ; preds = %bb.d, %bb.b
end_hunk_0
