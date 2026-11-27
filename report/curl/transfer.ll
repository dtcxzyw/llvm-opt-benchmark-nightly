Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/curl/original/transfer?download=true
inline.NumInlined: 14
inline.NumDeleted: 6
begin_hunk_0_@Curl_loadhostpairs

declare i32 @Curl_hsts_loadfiles(ptr noundef) local_unnamed_addr #2

declare void @Curl_initinfo(ptr noundef) local_unnamed_addr #2

declare void @Curl_pgrsResetTransferSizes(ptr noundef) local_unnamed_addr #2

declare void @Curl_pgrsStartNow(ptr noundef) local_unnamed_addr #2

declare void @Curl_wildcard_init(ptr noundef) local_unnamed_addr #2

declare i32 @Curl_hsts_loadcb(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @curl_maprintf(ptr noundef, ...) local_unnamed_addr #2

declare i32 @Curl_headers_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 0, 56) i32 @Curl_retry_request(ptr noundef %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !75   ; 4 uses
  store ptr null, ptr %1, align 8, !tbaa !83
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4628 ; 3 uses
  %i.d = load i32, ptr %i.c, align 4              ; 4 uses
  %i.e = and i32 %i.d, 32768
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 728
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !88
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !94
  %i.j = and i64 %i.i, 3221487619
  %.not40 = icmp eq i64 %i.j, 0
  br i1 %.not40, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 720 ; 3 uses
  %i.l = load i32, ptr %i.k, align 8
  %i.m = and i32 %i.l, 8
  %.not41 = icmp eq i32 %i.m, 0
  br i1 %.not41, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.o = load i64, ptr %i.n, align 8, !tbaa !85
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.q = load i32, ptr %i.p, align 8, !tbaa !99
  %i.r = zext i32 %i.q to i64
  %i.s = sub nsw i64 0, %i.r
  %i.t = icmp eq i64 %i.o, %i.s
  br i1 %i.t, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 417
  %i.v = load i32, ptr %i.u, align 1
  %i.w = and i32 %i.v, 65538
  %or.cond = icmp eq i32 %i.w, 0
  br i1 %or.cond, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 728
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !88
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !94
  %i.ab = and i64 %i.aa, 3221225475
  %.not44 = icmp eq i64 %i.ab, 0
  br i1 %.not44, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 2000
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !145
  %.not45 = icmp eq i32 %i.ad, 11
  br i1 %.not45, label %bb.h, label %bb.o

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.d, %bb.c
  %i.ae = and i32 %i.d, 4
  %.not46 = icmp eq i32 %i.ae, 0
  br i1 %.not46, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !85
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !99
  %i.aj = zext i32 %i.ai to i64
  %i.ak = sub nsw i64 0, %i.aj
  %i.al = icmp eq i64 %i.ag, %i.ak
  br i1 %i.al, label %bb.j, label %.critedge

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 2187
  %i.an = load i64, ptr %i.am, align 1
  %i.ao = and i64 %i.an, 536870912
  %.not48 = icmp eq i64 %i.ao, 0
  br i1 %.not48, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 4504
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !72 ; 2 uses
  %.not49 = icmp eq ptr %i.aq, null
  br i1 %.not49, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !74
  %i.at = icmp sgt i32 %i.as, 0
  br i1 %i.at, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l, %bb.k
  tail call void (ptr, ptr, ...) @Curl_infof(ptr noundef nonnull %0, ptr noundef nonnull @.str.8) #7
  %.pre = load i32, ptr %i.c, align 4
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.j
  %i.au = phi i32 [ %.pre, %bb.m ], [ %i.d, %bb.l ], [ %i.d, %bb.j ]
  %i.av = and i32 %i.au, -5
  store i32 %i.av, ptr %i.c, align 4
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.g
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 4626 ; 3 uses
  %i.ax = load i8, ptr %i.aw, align 2, !tbaa !97  ; 2 uses
  %i.ay = add i8 %i.ax, 1                         ; 2 uses
  store i8 %i.ay, ptr %i.aw, align 2, !tbaa !97
  %i.az = icmp ugt i8 %i.ax, 4
  br i1 %i.az, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  tail call void (ptr, ptr, ...) @Curl_failf(ptr noundef nonnull %0, ptr noundef nonnull @.str.9, i32 noundef 5) #7
  store i8 0, ptr %i.aw, align 2, !tbaa !97
  br label %.critedge

bb.q:                                             ; preds = %bb.o
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 2187
  %i.bb = load i64, ptr %i.ba, align 1
  %i.bc = and i64 %i.bb, 536870912
  %.not51 = icmp eq i64 %i.bc, 0
  br i1 %.not51, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 4504
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !72 ; 2 uses
  %.not52 = icmp eq ptr %i.be, null
  br i1 %.not52, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !74
  %i.bh = icmp sgt i32 %i.bg, 0
  br i1 %i.bh, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.bi = zext nneg i8 %i.ay to i32
  tail call void (ptr, ptr, ...) @Curl_infof(ptr noundef nonnull %0, ptr noundef nonnull @.str.10, i32 noundef %i.bi) #7
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.q
  %i.bj = load ptr, ptr @Curl_cstrdup, align 8, !tbaa !98
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 4248
  %i.bl = tail call ptr @Curl_bufref_ptr(ptr noundef nonnull %i.bk) #7
  %i.bm = tail call ptr %i.bj(ptr noundef %i.bl) #7 ; 2 uses
  store ptr %i.bm, ptr %1, align 8, !tbaa !83
  %.not53 = icmp eq ptr %i.bm, null
  br i1 %.not53, label %.critedge, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @Curl_conncontrol(ptr noundef nonnull %i.b, i32 noundef 1) #7
  %i.bn = load i32, ptr %i.k, align 8
  %i.bo = or i32 %i.bn, 256
  store i32 %i.bo, ptr %i.k, align 8
  tail call void @Curl_creader_set_rewind(ptr noundef nonnull %0, i1 noundef zeroext true) #7
  br label %.critedge

.critedge:                                        ; preds = %bb.v, %bb.i, %bb.h, %bb.u, %bb.b, %bb.p
  %.036 = phi i32 [ 55, %bb.p ], [ 27, %bb.u ], [ 0, %bb.b ], [ 0, %bb.h ], [ 0, %bb.i ], [ 0, %bb.v ]
  ret i32 %.036
}

declare ptr @Curl_bufref_ptr(ptr noundef) local_unnamed_addr #2

declare void @Curl_conncontrol(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @Curl_creader_set_rewind(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @Curl_xfer_setup_nop(ptr noundef initializes((184, 192)) %0) local_unnamed_addr #0 {
bb.a:
  tail call fastcc void @xfer_setup(ptr noundef %0, i32 noundef -1, i32 noundef -1, i64 noundef -1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @xfer_setup(ptr noundef initializes((184, 192)) %0, i32 noundef %1, i32 noundef %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !75   ; 3 uses
  %4 = getelementptr inbounds nuw i8, ptr %i.c, i64 340 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 336 ; 3 uses
  %5 = zext i32 %2 to i64
  %6 = zext i32 %1 to i64
  %7 = shl nuw i64 %6, 32
  %8 = or disjoint i64 %7, %5
  store i64 %8, ptr %i.d, align 8
  store i64 %3, ptr %i.a, align 8, !tbaa !95
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 728 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !88
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !91
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 104
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !100
  %i.k = icmp ne ptr %i.j, null                   ; 2 uses
  %i.l = zext i1 %i.k to i32
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 417 ; 3 uses
  %i.n = load i32, ptr %i.m, align 1
  %i.o = and i32 %i.n, -1572866
  %i.p = or disjoint i32 %i.o, %i.l
  store i32 %i.p, ptr %i.m, align 1
  %i.q = icmp slt i64 %3, 1
  %or.cond.not = or i1 %i.q, %i.k
  br i1 %or.cond.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @Curl_pgrsSetDownloadSize(ptr noundef nonnull %0, i64 noundef %3) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.r = load ptr, ptr %i.e, align 8, !tbaa !88
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !91
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 104
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !100
  %.not = icmp eq ptr %i.v, null
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.w = load i32, ptr %i.m, align 1
  %i.x = and i32 %i.w, 65536
  %.not33 = icmp eq i32 %i.x, 0
  br i1 %.not33, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.y = load i32, ptr %i.d, align 8, !tbaa !86
  %.not34 = icmp eq i32 %i.y, -1
  br i1 %.not34, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 2 uses
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !82
  %i.ab = or i8 %i.aa, 1
  store i8 %i.ab, ptr %i.z, align 8, !tbaa !82
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ac = load i32, ptr %4, align 4, !tbaa !81
  %.not35 = icmp eq i32 %i.ac, -1
  br i1 %.not35, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 8, !tbaa !82
  %i.af = or i8 %i.ae, 2
  store i8 %i.af, ptr %i.ad, align 8, !tbaa !82
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 2187
  %i.ah = load i64, ptr %i.ag, align 1
  %i.ai = and i64 %i.ah, 536870912
  %.not37 = icmp eq i64 %i.ai, 0
  br i1 %.not37, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 4504
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !72 ; 2 uses
  %.not38 = icmp eq ptr %i.ak, null
  br i1 %.not38, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load i32, ptr %i.al, align 8, !tbaa !74
  %i.an = icmp sgt i32 %i.am, 0
  %i.ao = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_multi, i64 8), align 8
  %i.ap = icmp sgt i32 %i.ao, 0
  %or.cond3 = select i1 %i.an, i1 %i.ap, i1 false
  br i1 %or.cond3, label %bb.m, label %bb.n

bb.l:                                             ; preds = %bb.j
  %.old = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_multi, i64 8), align 8, !tbaa !74
  %.old2 = icmp sgt i32 %.old, 0
  br i1 %.old2, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.k, %bb.l
  %i.aq = load i32, ptr %i.d, align 8, !tbaa !86
  %i.ar = load i32, ptr %4, align 4, !tbaa !81
  tail call void (ptr, ptr, ...) @Curl_trc_multi(ptr noundef nonnull %0, ptr noundef nonnull @.str.14, i32 noundef %i.aq, i32 noundef %i.ar) #7
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.i
  ret void
}

; Function Attrs: nounwind uwtable
define void @Curl_xfer_setup_sendrecv(ptr noundef initializes((184, 192)) %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  tail call fastcc void @xfer_setup(ptr noundef %0, i32 noundef %1, i32 noundef %1, i64 noundef %2)
  ret void
}

; Function Attrs: nounwind uwtable
define void @Curl_xfer_setup_send(ptr noundef initializes((184, 192)) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  tail call fastcc void @xfer_setup(ptr noundef %0, i32 noundef %1, i32 noundef -1, i64 noundef -1)
  ret void
}

; Function Attrs: nounwind uwtable
define void @Curl_xfer_setup_recv(ptr noundef initializes((184, 192)) %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  tail call fastcc void @xfer_setup(ptr noundef %0, i32 noundef -1, i32 noundef %1, i64 noundef %2)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @Curl_xfer_set_shutdown(ptr nofree noundef captures(none) %0, i1 noundef zeroext %1, i1 noundef zeroext %2) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 417 ; 2 uses
  %i.b = load i32, ptr %i.a, align 1
  %i.c = select i1 %1, i32 524288, i32 0
  %i.d = and i32 %i.b, -1572865
  %i.e = select i1 %2, i32 1048576, i32 0
  %i.f = or disjoint i32 %i.e, %i.c
  %i.g = or disjoint i32 %i.f, %i.d
  store i32 %i.g, ptr %i.a, align 1
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @Curl_xfer_write_resp(ptr noundef %0, ptr noundef %1, i64 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !75
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 728
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !88
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !91
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !93   ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call i32 %i.h(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, i1 noundef zeroext %3) #7
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.j = icmp ne i64 %2, 0
  %or.cond = or i1 %i.j, %3
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %spec.select = select i1 %3, i32 129, i32 1
  %i.k = tail call i32 @Curl_client_write(ptr noundef nonnull %0, i32 noundef %spec.select, ptr noundef %1, i64 noundef %2) #7
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.031 = phi i32 [ %i.i, %bb.b ], [ %i.k, %bb.d ], [ 0, %bb.c ] ; 3 uses
  %i.l = icmp eq i32 %.031, 0
  %or.cond3 = and i1 %3, %i.l
  br i1 %or.cond3, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 417 ; 2 uses
  %i.n = load i32, ptr %i.m, align 1
  %i.o = or i32 %i.n, 24
  store i32 %i.o, ptr %i.m, align 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 2187
  %i.q = load i64, ptr %i.p, align 1
  %i.r = and i64 %i.q, 536870912
  %.not36 = icmp eq i64 %i.r, 0
  br i1 %.not36, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4504
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !72   ; 2 uses
  %.not37 = icmp eq ptr %i.t, null
  br i1 %.not37, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load i32, ptr %i.u, align 8, !tbaa !74
  %i.w = icmp sgt i32 %i.v, 0
  %i.x = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_write, i64 8), align 8
  %i.y = icmp sgt i32 %i.x, 0
  %or.cond5 = select i1 %i.w, i1 %i.y, i1 false
  br i1 %or.cond5, label %bb.k, label %bb.l

bb.j:                                             ; preds = %bb.h
  %.old = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_write, i64 8), align 8, !tbaa !74
  %.old4 = icmp sgt i32 %.old, 0
  br i1 %.old4, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.z = zext i1 %3 to i32
  tail call void (ptr, ptr, ...) @Curl_trc_write(ptr noundef nonnull %0, ptr noundef nonnull @.str.11, i64 noundef %2, i32 noundef %i.z, i32 noundef %.031) #7
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.g
  ret i32 %.031
}

declare i32 @Curl_client_write(ptr noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @Curl_trc_write(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define zeroext i1 @Curl_xfer_write_is_paused(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call zeroext i1 @Curl_cwriter_is_paused(ptr noundef %0) #7
  ret i1 %i.a
}

declare zeroext i1 @Curl_cwriter_is_paused(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @Curl_xfer_write_resp_hd(ptr noundef %0, ptr noundef %1, i64 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !75
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 728
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !88
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !91   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !100  ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call i32 %i.h(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, i1 noundef zeroext %3) #7
  br label %Curl_xfer_write_resp.exit

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !93   ; 2 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = tail call i32 %i.k(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, i1 noundef zeroext %3) #7, !inline_history !146
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.m = icmp ne i64 %2, 0
  %or.cond.i = or i1 %i.m, %3
  br i1 %or.cond.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %spec.select.i = select i1 %3, i32 129, i32 1
  %i.n = tail call i32 @Curl_client_write(ptr noundef nonnull %0, i32 noundef %spec.select.i, ptr noundef %1, i64 noundef %2) #7
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.031.i = phi i32 [ %i.l, %bb.d ], [ %i.n, %bb.f ], [ 0, %bb.e ] ; 6 uses
  %i.o = icmp eq i32 %.031.i, 0
  %or.cond3.i = and i1 %3, %i.o
  br i1 %or.cond3.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 417 ; 2 uses
  %i.q = load i32, ptr %i.p, align 1
  %i.r = or i32 %i.q, 24
  store i32 %i.r, ptr %i.p, align 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 2187
  %i.t = load i64, ptr %i.s, align 1
  %i.u = and i64 %i.t, 536870912
  %.not36.i = icmp eq i64 %i.u, 0
  br i1 %.not36.i, label %Curl_xfer_write_resp.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 4504
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !72   ; 2 uses
  %.not37.i = icmp eq ptr %i.w, null
  br i1 %.not37.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load i32, ptr %i.x, align 8, !tbaa !74
  %i.z = icmp sgt i32 %i.y, 0
end_hunk_0
