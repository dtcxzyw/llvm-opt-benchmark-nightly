Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/curl/original/multi?download=true
inline.NumInlined: 135
inline.NumDeleted: 39
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@Curl_update_timer:bb.a
  %i.w = icmp sgt i32 %i.v, 0
  %or.cond = select i1 %i.u, i1 %i.w, i1 false
  br i1 %or.cond, label %bb.j, label %bb.y

bb.i:                                             ; preds = %bb.g
  %.old = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_multi, i64 8), align 8, !tbaa !110
  %.old1 = icmp sgt i32 %.old, 0
  br i1 %.old1, label %bb.j, label %bb.y

bb.j:                                             ; preds = %bb.h, %bb.i
  tail call void (ptr, ptr, ...) @Curl_trc_multi(ptr noundef nonnull %i.m, ptr noundef nonnull @.str.15) #13
  br label %bb.y

bb.k:                                             ; preds = %bb.c
  br i1 %i.k, label %bb.l, label %bb.r

bb.l:                                             ; preds = %bb.k
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !40   ; 4 uses
  %.not50 = icmp eq ptr %i.y, null
  br i1 %.not50, label %bb.y, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 2187
  %i.aa = load i64, ptr %i.z, align 1
  %i.ab = and i64 %i.aa, 536870912
  %.not51 = icmp eq i64 %i.ab, 0
  br i1 %.not51, label %bb.y, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 4504
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !109 ; 2 uses
  %.not52 = icmp eq ptr %i.ad, null
  br i1 %.not52, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !110
  %i.ag = icmp sgt i32 %i.af, 0
  %i.ah = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_multi, i64 8), align 8
  %i.ai = icmp sgt i32 %i.ah, 0
  %or.cond4 = select i1 %i.ag, i1 %i.ai, i1 false
  br i1 %or.cond4, label %bb.q, label %bb.y

bb.p:                                             ; preds = %bb.n
  %.old2 = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_multi, i64 8), align 8, !tbaa !110
  %.old3 = icmp sgt i32 %.old2, 0
  br i1 %.old3, label %bb.q, label %bb.y

bb.q:                                             ; preds = %bb.o, %bb.p
  tail call void (ptr, ptr, ...) @Curl_trc_multi(ptr noundef nonnull %i.y, ptr noundef nonnull @.str.16, i64 noundef %i.g) #13
  br label %bb.y

bb.r:                                             ; preds = %bb.k
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.ak = call i64 @curlx_ptimediff_us(ptr noundef nonnull %i.aj, ptr noundef nonnull %1) #13
  %.not46 = icmp eq i64 %i.ak, 0
  br i1 %.not46, label %.critedge, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !40 ; 4 uses
  %.not47 = icmp eq ptr %i.am, null
  br i1 %.not47, label %bb.y, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 2187
  %i.ao = load i64, ptr %i.an, align 1
  %i.ap = and i64 %i.ao, 536870912
  %.not48 = icmp eq i64 %i.ap, 0
  br i1 %.not48, label %bb.y, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 4504
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !109 ; 2 uses
  %.not49 = icmp eq ptr %i.ar, null
  br i1 %.not49, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load i32, ptr %i.as, align 8, !tbaa !110
  %i.au = icmp sgt i32 %i.at, 0
  %i.av = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_multi, i64 8), align 8
  %i.aw = icmp sgt i32 %i.av, 0
  %or.cond7 = select i1 %i.au, i1 %i.aw, i1 false
  br i1 %or.cond7, label %bb.x, label %bb.y

bb.w:                                             ; preds = %bb.u
  %.old5 = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_multi, i64 8), align 8, !tbaa !110
  %.old6 = icmp sgt i32 %.old5, 0
  br i1 %.old6, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.v, %bb.w
  call void (ptr, ptr, ...) @Curl_trc_multi(ptr noundef nonnull %i.am, ptr noundef nonnull @.str.17, i64 noundef %i.g) #13
  br label %bb.y

bb.y:                                             ; preds = %bb.e, %bb.f, %bb.h, %bb.i, %bb.j, %bb.q, %bb.p, %bb.o, %bb.m, %bb.l, %bb.x, %bb.w, %bb.v, %bb.t, %bb.s
  %i.ax = phi i64 [ %i.g, %bb.s ], [ %i.g, %bb.q ], [ %i.g, %bb.p ], [ %i.g, %bb.o ], [ %i.g, %bb.m ], [ %i.g, %bb.l ], [ %i.g, %bb.x ], [ %i.g, %bb.w ], [ %i.g, %bb.v ], [ %i.g, %bb.t ], [ -1, %bb.j ], [ -1, %bb.i ], [ -1, %bb.h ], [ -1, %bb.f ], [ -1, %bb.e ] ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 704
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !122
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 696
  store i64 %i.ax, ptr %i.az, align 8, !tbaa !38
  %i.ba = load i16, ptr %i.d, align 8
  %i.bb = or i16 %i.ba, 8
  store i16 %i.bb, ptr %i.d, align 8
  %i.bc = load ptr, ptr %i.b, align 8, !tbaa !120
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !123
  %i.bf = call i32 %i.bc(ptr noundef nonnull %0, i64 noundef %i.ax, ptr noundef %i.be) #13
  %i.bg = load i16, ptr %i.d, align 8
  %i.bh = and i16 %i.bg, -9                       ; 2 uses
  store i16 %i.bh, ptr %i.d, align 8
  %i.bi = icmp eq i32 %i.bf, -1
  br i1 %i.bi, label %bb.z, label %.critedge

bb.z:                                             ; preds = %bb.y
  %i.bj = or i16 %i.bh, 64
  store i16 %i.bj, ptr %i.d, align 8
  br label %.critedge

.critedge:                                        ; preds = %bb.y, %bb.r, %bb.d, %bb.a, %bb.b, %bb.z
  %.038 = phi i32 [ 0, %bb.a ], [ 11, %bb.z ], [ 0, %bb.b ], [ 0, %bb.d ], [ 0, %bb.r ], [ 0, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  ret i32 %.038
}

declare void @Curl_uint32_tbl_remove(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @Curl_trc_multi(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @Curl_multi_xfers_running(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #4 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !105
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.b, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @curl_multi_remove_handle(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.am, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !10
  %i.c = icmp eq i32 %i.b, 764702
  br i1 %i.c, label %bb.c, label %bb.am

bb.c:                                             ; preds = %bb.b
  %.not102 = icmp eq ptr %1, null
  br i1 %.not102, label %bb.am, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = load i32, ptr %1, align 8, !tbaa !96
  %i.e = icmp eq i32 %i.d, -1059136595
  br i1 %i.e, label %bb.e, label %bb.am

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !41   ; 2 uses
  %.not103 = icmp eq ptr %i.g, null
  br i1 %.not103, label %bb.am, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not104 = icmp eq ptr %i.g, %0
  br i1 %.not104, label %bb.g, label %bb.am

bb.g:                                             ; preds = %bb.f
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !93   ; 2 uses
  %i.j = icmp eq i32 %i.i, -1
  br i1 %i.j, label %bb.am, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.l = tail call ptr @Curl_uint32_tbl_get(ptr noundef nonnull %i.k, i32 noundef %i.i) #13
  %.not105 = icmp eq ptr %i.l, %1
  br i1 %.not105, label %bb.i, label %bb.am

bb.i:                                             ; preds = %bb.h
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.n = load i16, ptr %i.m, align 8
  %i.o = and i16 %i.n, 8
  %.not106 = icmp eq i16 %i.o, 0
  br i1 %.not106, label %bb.j, label %bb.am

bb.j:                                             ; preds = %bb.i
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !95   ; 2 uses
  %i.r = icmp ult i32 %i.q, 14
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !113  ; 3 uses
  %.not107 = icmp eq ptr %i.t, null
  %2 = add i32 %i.q, -14
  %3 = icmp ult i32 %2, -6
  %brmerge = select i1 %.not107, i1 true, i1 %3
  br i1 %brmerge, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @Curl_conncontrol(ptr noundef nonnull %i.t, i32 noundef 2) #13
  %.pre = load ptr, ptr %i.s, align 8, !tbaa !113
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.u = phi ptr [ %i.t, %bb.j ], [ %.pre, %bb.k ]
  %.not108 = icmp eq ptr %i.u, null
  br i1 %.not108, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.w = load i32, ptr %i.v, align 4, !tbaa !124
  %i.x = tail call fastcc i32 @multi_done(ptr noundef nonnull %1, i32 noundef %i.w, i1 noundef zeroext %i.r) ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  tail call void @Curl_expire_clear(ptr noundef nonnull %1)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.z = load i32, ptr %i.h, align 8, !tbaa !93
  %i.aa = tail call zeroext i1 @Curl_uint32_bset_contains(ptr noundef nonnull %i.y, i32 noundef %i.z) #13
  br i1 %i.aa, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !105
  %i.ad = add i32 %i.ac, -1
  store i32 %i.ad, ptr %i.ab, align 4, !tbaa !105
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 4628 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4            ; 2 uses
  %i.ag = and i32 %i.af, 1
  %.not109 = icmp eq i32 %i.ag, 0
  br i1 %.not109, label %multi_assess_wakeup.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ah = and i32 %i.af, -2
  store i32 %i.ah, ptr %i.ae, align 4
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !125
  %i.ak = add i32 %i.aj, -1                       ; 2 uses
  store i32 %i.ak, ptr %i.ai, align 8, !tbaa !125
  %.not110 = icmp eq i32 %i.ak, 0
  br i1 %.not110, label %bb.r, label %multi_assess_wakeup.exit

bb.r:                                             ; preds = %bb.q
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !126
  %.not.i = icmp eq ptr %i.am, null
  br i1 %.not.i, label %multi_assess_wakeup.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !40
  %i.ap = tail call i32 @Curl_multi_ev_assess_xfer(ptr noundef nonnull %0, ptr noundef %i.ao) #13 ; 0 uses
  br label %multi_assess_wakeup.exit

multi_assess_wakeup.exit:                         ; preds = %bb.s, %bb.r, %bb.q, %bb.p
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 4632
  tail call void @Curl_wildcard_dtor(ptr noundef nonnull %i.aq) #13
  store i32 14, ptr %i.p, align 8, !tbaa !95
  %i.ar = load ptr, ptr %i.s, align 8, !tbaa !113 ; 3 uses
  %.not.i122 = icmp eq ptr %i.ar, null
  br i1 %.not.i122, label %Curl_detach_connection.exit, label %bb.t

bb.t:                                             ; preds = %multi_assess_wakeup.exit
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 776 ; 2 uses
  %i.at = load i32, ptr %i.as, align 8, !tbaa !127 ; 2 uses
  %.not8.i = icmp eq i32 %i.at, 0
  br i1 %.not8.i, label %Curl_detach_connection.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.au = add i32 %i.at, -1                       ; 2 uses
  store i32 %i.au, ptr %i.as, align 8, !tbaa !127
  %.not9.i = icmp eq i32 %i.au, 0
  br i1 %.not9.i, label %bb.v, label %Curl_detach_connection.exit

bb.v:                                             ; preds = %bb.u
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 760
  store ptr null, ptr %i.av, align 8, !tbaa !133
  br label %Curl_detach_connection.exit

Curl_detach_connection.exit:                      ; preds = %multi_assess_wakeup.exit, %bb.t, %bb.u, %bb.v
  store ptr null, ptr %i.s, align 8, !tbaa !113
  tail call void @Curl_multi_ev_xfer_done(ptr noundef nonnull %0, ptr noundef nonnull %1) #13
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 2187 ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 1
  %i.ay = and i64 %i.ax, 1
  %.not111 = icmp eq i64 %i.ay, 0
  br i1 %.not111, label %bb.aa, label %bb.w

bb.w:                                             ; preds = %Curl_detach_connection.exit
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !97
  %.not112 = icmp eq ptr %i.ba, null
  br i1 %.not112, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.bb = call i32 @Curl_getconnectinfo(ptr noundef nonnull %1, ptr noundef nonnull %i.a) #13
  %i.bc = icmp ne i32 %i.bb, -1
  %i.bd = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.be = icmp ne ptr %i.bd, null
  %or.cond = select i1 %i.bc, i1 %i.be, i1 false
  br i1 %or.cond, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  call void @Curl_conn_terminate(ptr noundef nonnull %1, ptr noundef nonnull %i.bd, i1 noundef zeroext true) #13
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.w, %Curl_detach_connection.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 2800
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !134 ; 2 uses
  %.not113 = icmp eq i64 %i.bg, -1
  br i1 %.not113, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @Curl_cpool_do_by_id(ptr noundef nonnull %1, i64 noundef %i.bg, ptr noundef nonnull @close_connect_only, ptr noundef null) #13
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !104
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.bk = icmp eq ptr %i.bi, %i.bj
  br i1 %i.bk, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  store ptr null, ptr %i.bh, align 8, !tbaa !104
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bm = call ptr @Curl_llist_head(ptr noundef nonnull %i.bl) #13 ; 2 uses
  %.not114134 = icmp eq ptr %i.bm, null
  br i1 %.not114134, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ae, %bb.ag
  %.090135 = phi ptr [ %i.br, %bb.ag ], [ %i.bm, %bb.ae ] ; 3 uses
  %i.bn = call ptr @Curl_node_elem(ptr noundef nonnull %.090135) #13
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 40
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !135
  %i.bq = icmp eq ptr %i.bp, %1
  br i1 %i.bq, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %.lr.ph
  call void @Curl_node_remove(ptr noundef nonnull %.090135) #13
  br label %.loopexit

bb.ag:                                            ; preds = %.lr.ph
  %i.br = call ptr @Curl_node_next(ptr noundef nonnull %.090135) #13 ; 2 uses
  %.not114 = icmp eq ptr %i.br, null
  br i1 %.not114, label %.loopexit, label %.lr.ph, !llvm.loop !136

.loopexit:                                        ; preds = %bb.ag, %bb.ae, %bb.af
  %i.bs = load i32, ptr %i.h, align 8, !tbaa !93  ; 6 uses
  call void @Curl_uint32_tbl_remove(ptr noundef nonnull %i.k, i32 noundef %i.bs) #13
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @Curl_uint32_bset_remove(ptr noundef nonnull %i.bt, i32 noundef %i.bs) #13
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @Curl_uint32_bset_remove(ptr noundef nonnull %i.bu, i32 noundef %i.bs) #13
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 88
  call void @Curl_uint32_bset_remove(ptr noundef nonnull %i.bv, i32 noundef %i.bs) #13
  call void @Curl_uint32_bset_remove(ptr noundef nonnull %i.y, i32 noundef %i.bs) #13
  store ptr null, ptr %i.f, align 8, !tbaa !41
  store i32 -1, ptr %i.h, align 8, !tbaa !93
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 -1, ptr %i.bw, align 4, !tbaa !137
  call fastcc void @process_pending_handles(ptr noundef nonnull %0)
  %i.bx = call i32 @Curl_update_timer(ptr noundef nonnull %0) ; 2 uses
  %.not115 = icmp eq i32 %i.bx, 0
  br i1 %.not115, label %bb.ah, label %bb.am

bb.ah:                                            ; preds = %.loopexit
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !126
  %.not.i123 = icmp eq ptr %i.bz, null
  br i1 %.not.i123, label %multi_assess_wakeup.exit125.thread, label %multi_assess_wakeup.exit125

multi_assess_wakeup.exit125:                      ; preds = %bb.ah
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !40
  %i.cc = call i32 @Curl_multi_ev_assess_xfer(ptr noundef nonnull %0, ptr noundef %i.cb) #13 ; 3 uses
  %.not116 = icmp eq i32 %i.cc, 0
  br i1 %.not116, label %multi_assess_wakeup.exit125.thread, label %bb.ai

bb.ai:                                            ; preds = %multi_assess_wakeup.exit125
  call void (ptr, ptr, ...) @Curl_failf(ptr noundef nonnull %1, ptr noundef nonnull @.str.1, i32 noundef %i.cc) #13
  br label %bb.am

multi_assess_wakeup.exit125.thread:               ; preds = %bb.ah, %multi_assess_wakeup.exit125
end_hunk_0
