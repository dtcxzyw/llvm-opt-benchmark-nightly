Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/curl/original/doh?download=true
inline.NumInlined: 27
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@doh_rdata:bb.a
bb.o:                                             ; preds = %bb.n
  %i.ao = tail call i64 @curlx_dyn_len(ptr noundef %i.aa) #8
  %.not48.i = icmp eq i64 %i.ao, 0
  br i1 %.not48.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ap = tail call i32 @curlx_dyn_addn(ptr noundef %i.aa, ptr noundef nonnull @.str.11, i64 noundef 1) #8
  %.not49.i = icmp eq i32 %i.ap, 0
  br i1 %.not49.i, label %bb.q, label %doh_store_a.exit

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.aq = add i32 %i.an, %i.ae                    ; 2 uses
  %i.ar = zext i32 %i.aq to i64
  %i.as = icmp ult i64 %1, %i.ar
  br i1 %i.as, label %doh_store_a.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.at = zext i32 %i.an to i64
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 %i.at
  %i.av = zext i8 %.fr.i to i64
  %i.aw = tail call i32 @curlx_dyn_addn(ptr noundef %i.aa, ptr noundef nonnull %i.au, i64 noundef %i.av) #8
  %.not50.i = icmp eq i32 %i.aw, 0
  br i1 %.not50.i, label %bb.s, label %doh_store_a.exit

bb.s:                                             ; preds = %bb.r, %bb.m
  %.237.i = phi i32 [ %i.am, %bb.m ], [ %i.aq, %bb.r ]
  %.not52.not.i = icmp eq i8 %.fr.i, 0            ; 2 uses
  %i.ax = add nsw i32 %.032.i, -1                 ; 2 uses
  %.not53.i = icmp eq i32 %i.ax, 0
  %or.cond.i = select i1 %.not52.not.i, i1 true, i1 %.not53.i
  br i1 %or.cond.i, label %.critedge.i, label %bb.j, !llvm.loop !130

.critedge.i:                                      ; preds = %bb.s
  %spec.select = select i1 %.not52.not.i, i32 0, i32 3
  br label %doh_store_a.exit

doh_store_a.exit:                                 ; preds = %bb.q, %bb.r, %bb.p, %bb.l, %bb.j, %bb.k, %bb.n, %.critedge.i, %bb.a, %bb.c, %bb.d, %bb.f, %bb.g, %bb.h, %bb.e, %bb.b
  %.0 = phi i32 [ %spec.select, %.critedge.i ], [ 6, %bb.e ], [ 6, %bb.b ], [ 0, %bb.a ], [ 0, %bb.h ], [ 0, %bb.g ], [ 0, %bb.f ], [ 0, %bb.d ], [ 0, %bb.c ], [ 1, %bb.k ], [ 2, %bb.j ], [ 2, %bb.l ], [ 5, %bb.p ], [ 5, %bb.r ], [ 1, %bb.q ], [ 0, %bb.n ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define void @de_cleanup(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !108
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %indvars.iv
  tail call void @curlx_dyn_free(ptr noundef %i.d) #8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.e = load i32, ptr %i.a, align 8, !tbaa !108
  %i.f = sext i32 %i.e to i64
  %i.g = icmp slt i64 %indvars.iv.next, %i.f
  br i1 %i.g, label %.lr.ph, label %._crit_edge, !llvm.loop !2

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

declare void @curlx_dyn_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define i32 @Curl_doh_take_result(ptr noundef %0, ptr nofree noundef captures(address_is_null) %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2) local_unnamed_addr #3 {
bb.a:
  %3 = alloca %struct.dohentry, align 8           ; 17 uses
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !23   ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  store ptr null, ptr %2, align 8, !tbaa !134
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %Curl_doh_cleanup.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %i.c, align 8, !tbaa !29
  %i.e = icmp eq i32 %i.d, -1
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.g = load i32, ptr %i.f, align 8, !tbaa !29
  %i.h = icmp eq i32 %i.g, -1
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !31
  tail call void (ptr, ptr, ...) @Curl_failf(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef %i.j) #8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 82
  %i.l = load i8, ptr %i.k, align 2
  %i.m = and i8 %i.l, 4
  %.not96 = icmp eq i8 %i.m, 0
  %i.n = select i1 %.not96, i32 6, i32 5
  br label %Curl_doh_cleanup.exit

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.p = load i32, ptr %i.o, align 8, !tbaa !93
  %.not84 = icmp eq i32 %i.p, 0
  br i1 %.not84, label %bb.f, label %Curl_doh_cleanup.exit

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @doh_close(ptr noundef %0, ptr noundef nonnull %1)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(624) %3, i8 0, i64 624, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 612
  store i32 2147483647, ptr %i.q, align 4, !tbaa !107
  call void @curlx_dyn_init(ptr noundef nonnull %3, i64 noundef 256) #8
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 32
  call void @curlx_dyn_init(ptr noundef nonnull %i.r, i64 noundef 256) #8
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @curlx_dyn_init(ptr noundef nonnull %i.s, i64 noundef 256) #8
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 96
  call void @curlx_dyn_init(ptr noundef nonnull %i.t, i64 noundef 256) #8
  %.not111 = icmp eq ptr %0, null
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 2187 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 4504 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 104 ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 4 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !101
  %.not93.us = icmp eq i32 %i.y, 0                ; 2 uses
  br i1 %.not111, label %.split.us.preheader, label %.split.preheader

.split.preheader:                                 ; preds = %bb.f
  br i1 %.not93.us, label %.split.1, label %bb.h

.split.us.preheader:                              ; preds = %bb.f
  br i1 %.not93.us, label %.split.us.1, label %bb.g

bb.g:                                             ; preds = %.split.us.preheader
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.aa = call ptr @curlx_dyn_uptr(ptr noundef nonnull %i.z) #8
  %i.ab = call i64 @curlx_dyn_len(ptr noundef nonnull %i.z) #8
  %i.ac = load i32, ptr %i.x, align 8, !tbaa !101
  %i.ad = call i32 @doh_resp_decode(ptr noundef %i.aa, i64 noundef %i.ab, i32 noundef %i.ac, ptr noundef nonnull %3)
  %i.ae = icmp ne i32 %i.ad, 0
  br label %.split.us.1

.split.us.1:                                      ; preds = %bb.g, %.split.us.preheader
  %.sroa.0.0 = phi i1 [ false, %.split.us.preheader ], [ %i.ae, %bb.g ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 88 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !101
  %.not93.us.1 = icmp eq i32 %i.ag, 0
  br i1 %.not93.us.1, label %.split110.us.thread.thread132, label %.split110.us.thread133

.split110.us.thread.thread132:                    ; preds = %.split.us.1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  br label %bb.v

bb.h:                                             ; preds = %.split.preheader
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.ai = call ptr @curlx_dyn_uptr(ptr noundef nonnull %i.ah) #8
  %i.aj = call i64 @curlx_dyn_len(ptr noundef nonnull %i.ah) #8
  %i.ak = load i32, ptr %i.x, align 8, !tbaa !101
  %i.al = call i32 @doh_resp_decode(ptr noundef %i.ai, i64 noundef %i.aj, i32 noundef %i.ak, ptr noundef nonnull %3) ; 2 uses
  %.not112 = icmp eq i32 %i.al, 0
  br i1 %.not112, label %.split.1, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.am = load i64, ptr %i.u, align 1
  %i.an = and i64 %i.am, 536870912
  %.not94 = icmp eq i64 %i.an, 0
  br i1 %.not94, label %.split.1, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ao = load ptr, ptr %i.v, align 8, !tbaa !96  ; 2 uses
  %.not95 = icmp eq ptr %i.ao, null
  br i1 %.not95, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !98
  %i.ar = icmp sgt i32 %i.aq, 0
  %i.as = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_dns, i64 8), align 8
  %i.at = icmp sgt i32 %i.as, 0
  %or.cond = select i1 %i.ar, i1 %i.at, i1 false
  br i1 %or.cond, label %doh_strerror.exit, label %.split.1

bb.l:                                             ; preds = %bb.j
  %.old = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_dns, i64 8), align 8, !tbaa !98
  %.old1 = icmp sgt i32 %.old, 0
  br i1 %.old1, label %doh_strerror.exit, label %.split.1

doh_strerror.exit:                                ; preds = %bb.k, %bb.l
  %i.au = zext nneg i32 %i.al to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr @errors, i64 %i.au
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !91
  %i.ax = load i32, ptr %i.x, align 8, !tbaa !101 ; 2 uses
  %switch.selectcmp.i = icmp eq i32 %i.ax, 28
  %switch.select.i = select i1 %switch.selectcmp.i, ptr @.str.28, ptr @.str.29
  %switch.selectcmp1.i = icmp eq i32 %i.ax, 1
  %switch.select2.i = select i1 %switch.selectcmp1.i, ptr @.str.27, ptr %switch.select.i
  %i.ay = load ptr, ptr %i.w, align 8, !tbaa !31
  call void (ptr, ptr, ...) @Curl_trc_dns(ptr noundef nonnull %0, ptr noundef nonnull @.str.1, ptr noundef %i.aw, ptr noundef nonnull %switch.select2.i, ptr noundef %i.ay) #8
  br label %.split.1

.split.1:                                         ; preds = %bb.h, %doh_strerror.exit, %bb.l, %bb.k, %bb.i, %.split.preheader
  %i.az = phi i1 [ false, %.split.preheader ], [ true, %bb.i ], [ true, %bb.k ], [ true, %bb.l ], [ true, %doh_strerror.exit ], [ false, %bb.h ]
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 88 ; 3 uses
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !101
  %.not93.1 = icmp eq i32 %i.bb, 0
  br i1 %.not93.1, label %.split110.us.thread.thread, label %bb.m

bb.m:                                             ; preds = %.split.1
  %i.bc = getelementptr inbounds nuw i8, ptr %i.c, i64 56 ; 2 uses
  %i.bd = call ptr @curlx_dyn_uptr(ptr noundef nonnull %i.bc) #8
  %i.be = call i64 @curlx_dyn_len(ptr noundef nonnull %i.bc) #8
  %i.bf = load i32, ptr %i.ba, align 8, !tbaa !101
  %i.bg = call i32 @doh_resp_decode(ptr noundef %i.bd, i64 noundef %i.be, i32 noundef %i.bf, ptr noundef nonnull %3) ; 2 uses
  %.not112.1 = icmp eq i32 %i.bg, 0
  br i1 %.not112.1, label %.split110.us.thread.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bh = load i64, ptr %i.u, align 1
  %i.bi = and i64 %i.bh, 536870912
  %.not94.1 = icmp eq i64 %i.bi, 0
  br i1 %.not94.1, label %.split110.us, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bj = load ptr, ptr %i.v, align 8, !tbaa !96  ; 2 uses
  %.not95.1 = icmp eq ptr %i.bj, null
  br i1 %.not95.1, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !98
  %i.bm = icmp sgt i32 %i.bl, 0
  %i.bn = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_dns, i64 8), align 8
  %i.bo = icmp sgt i32 %i.bn, 0
  %or.cond.1 = select i1 %i.bm, i1 %i.bo, i1 false
  br i1 %or.cond.1, label %doh_strerror.exit.1, label %.split110.us

bb.q:                                             ; preds = %bb.o
  %.old.1 = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_dns, i64 8), align 8, !tbaa !98
  %.old1.1 = icmp sgt i32 %.old.1, 0
  br i1 %.old1.1, label %doh_strerror.exit.1, label %.split110.us

doh_strerror.exit.1:                              ; preds = %bb.q, %bb.p
  %i.bp = zext nneg i32 %i.bg to i64
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr @errors, i64 %i.bp
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !91
  %i.bs = load i32, ptr %i.ba, align 8, !tbaa !101 ; 2 uses
  %switch.selectcmp.i.1 = icmp eq i32 %i.bs, 28
  %switch.select.i.1 = select i1 %switch.selectcmp.i.1, ptr @.str.28, ptr @.str.29
  %switch.selectcmp1.i.1 = icmp eq i32 %i.bs, 1
  %switch.select2.i.1 = select i1 %switch.selectcmp1.i.1, ptr @.str.27, ptr %switch.select.i.1
  %i.bt = load ptr, ptr %i.w, align 8, !tbaa !31
  call void (ptr, ptr, ...) @Curl_trc_dns(ptr noundef nonnull %0, ptr noundef nonnull @.str.1, ptr noundef %i.br, ptr noundef nonnull %switch.select2.i.1, ptr noundef %i.bt) #8
  br label %.split110.us

.split110.us:                                     ; preds = %bb.n, %bb.p, %bb.q, %doh_strerror.exit.1
  br i1 %i.az, label %bb.ae, label %.split110.us.thread.thread

.split110.us.thread133:                           ; preds = %.split.us.1
  %i.bu = getelementptr inbounds nuw i8, ptr %i.c, i64 56 ; 2 uses
  %i.bv = call ptr @curlx_dyn_uptr(ptr noundef nonnull %i.bu) #8
  %i.bw = call i64 @curlx_dyn_len(ptr noundef nonnull %i.bu) #8
  %i.bx = load i32, ptr %i.af, align 8, !tbaa !101
  %i.by = call i32 @doh_resp_decode(ptr noundef %i.bv, i64 noundef %i.bw, i32 noundef %i.bx, ptr noundef nonnull %3)
  %i.bz = icmp ne i32 %i.by, 0
  %or.cond5136 = select i1 %.sroa.0.0, i1 %i.bz, i1 false
  br i1 %or.cond5136, label %bb.ae, label %.split110.us.thread.thread137

.split110.us.thread.thread137:                    ; preds = %.split110.us.thread133
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  br label %bb.v

.split110.us.thread.thread:                       ; preds = %.split110.us, %.split.1, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.ca = load i64, ptr %i.u, align 1
  %i.cb = and i64 %i.ca, 536870912
  %.not86 = icmp eq i64 %i.cb, 0
  br i1 %.not86, label %bb.v, label %bb.r

bb.r:                                             ; preds = %.split110.us.thread.thread
  %i.cc = load ptr, ptr %i.v, align 8, !tbaa !96  ; 2 uses
  %.not87 = icmp eq ptr %i.cc, null
  br i1 %.not87, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !98
  %i.cf = icmp sgt i32 %i.ce, 0
  %i.cg = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_dns, i64 8), align 8
  %i.ch = icmp sgt i32 %i.cg, 0
  %or.cond8 = select i1 %i.cf, i1 %i.ch, i1 false
  br i1 %or.cond8, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %.old6 = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_dns, i64 8), align 8, !tbaa !98
  %.old7 = icmp sgt i32 %.old6, 0
  br i1 %.old7, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.s, %bb.t
  %i.ci = load ptr, ptr %i.w, align 8, !tbaa !31
  call void (ptr, ptr, ...) @Curl_trc_dns(ptr noundef nonnull %0, ptr noundef nonnull @.str.2, ptr noundef %i.ci) #8
  call fastcc void @doh_show(ptr noundef %0, ptr noundef %3)
  br label %bb.v

bb.v:                                             ; preds = %.split110.us.thread.thread137, %.split110.us.thread.thread132, %bb.u, %bb.t, %bb.s, %.split110.us.thread.thread
  %i.cj = load ptr, ptr %i.w, align 8, !tbaa !31  ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.c, i64 100 ; 2 uses
  %i.cl = load i16, ptr %i.ck, align 4, !tbaa !32 ; 2 uses
  %i.cm = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.cj) #7 ; 2 uses
  %i.cn = add i64 %i.cm, 1
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 608 ; 2 uses
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !109 ; 2 uses
  %.not.i = icmp eq i32 %i.cp, 0
  br i1 %.not.i, label %doh2ai.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %bb.v
  %i.cq = icmp sgt i32 %i.cp, 0
  br i1 %i.cq, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.cr = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.cs = add i64 %i.cm, 49
  %rev.i.i = call i16 @llvm.bswap.i16(i16 %i.cl)
  br label %bb.w

bb.w:                                             ; preds = %bb.ac, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.ac ] ; 2 uses
  %.05683.i = phi ptr [ null, %.lr.ph.i ], [ %spec.select.i, %bb.ac ] ; 3 uses
  %.05982.i = phi ptr [ null, %.lr.ph.i ], [ %i.cy, %bb.ac ] ; 2 uses
  %i.ct = getelementptr inbounds nuw [20 x i8], ptr %i.cr, i64 %indvars.iv.i ; 2 uses
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !111
  %i.cv = icmp eq i32 %i.cu, 28                   ; 3 uses
  %..i = select i1 %i.cv, i64 28, i64 16          ; 3 uses
  %i.cw = load ptr, ptr @Curl_ccalloc, align 8, !tbaa !24
  %i.cx = add i64 %i.cs, %..i
  %i.cy = call ptr %i.cw(i64 noundef 1, i64 noundef %i.cx) #8, !inline_history !131 ; 13 uses
  %.not63.i = icmp eq ptr %i.cy, null
  br i1 %.not63.i, label %doh2ai.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 48 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 32
  store ptr %i.cz, ptr %i.da, align 8, !tbaa !138
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 %..i ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  store ptr %i.db, ptr %i.dc, align 8, !tbaa !139
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.db, ptr nonnull readonly align 1 %i.cj, i64 %i.cn, i1 false)
  %.not64.i = icmp eq ptr %.05683.i, null
  %spec.select.i = select i1 %.not64.i, ptr %i.cy, ptr %.05683.i ; 2 uses
  %.not65.i = icmp eq ptr %.05982.i, null
  br i1 %.not65.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dd = getelementptr inbounds nuw i8, ptr %.05982.i, i64 40
  store ptr %i.cy, ptr %i.dd, align 8, !tbaa !140
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.de = select i1 %i.cv, i32 10, i32 2
  %i.df = getelementptr inbounds nuw i8, ptr %i.cy, i64 4
  store i32 %i.de, ptr %i.df, align 4, !tbaa !141
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  store i32 1, ptr %i.dg, align 8, !tbaa !142
  %i.dh = trunc nuw nsw i64 %..i to i32
  %i.di = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  store i32 %i.dh, ptr %i.di, align 8, !tbaa !143
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ct, i64 4 ; 2 uses
  br i1 %i.cv, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cy, i64 52
  %i.dl = load i32, ptr %i.dj, align 4
  store i32 %i.dl, ptr %i.dk, align 4
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cy, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dm, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.dj, i64 16, i1 false)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.sink.i = phi i16 [ 10, %bb.ab ], [ 2, %bb.aa ]
  store i16 %.sink.i, ptr %i.cz, align 8, !tbaa !144
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cy, i64 50
  store i16 %rev.i.i, ptr %i.dn, align 2, !tbaa !144
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.do = load i32, ptr %i.co, align 8, !tbaa !109
  %i.dp = sext i32 %i.do to i64
  %i.dq = icmp slt i64 %indvars.iv.next.i, %i.dp
  br i1 %i.dq, label %bb.w, label %.loopexit.loopexit, !llvm.loop !132

doh2ai.exit:                                      ; preds = %bb.w
  call void @Curl_freeaddrinfo(ptr noundef %.05683.i) #8
  br label %doh2ai.exit.thread

.loopexit.loopexit:                               ; preds = %bb.ac
  %.pre = load ptr, ptr %i.w, align 8, !tbaa !31
  %.pre118 = load i16, ptr %i.ck, align 4, !tbaa !32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.preheader.i
  %i.dr = phi i16 [ %i.cl, %.preheader.i ], [ %.pre118, %.loopexit.loopexit ]
  %i.ds = phi ptr [ %i.cj, %.preheader.i ], [ %.pre, %.loopexit.loopexit ]
end_hunk_0
