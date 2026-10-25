Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/curl/original/cookie?download=true
inline.NumInlined: 40
inline.NumDeleted: 22
begin_hunk_0_@Curl_cookie_cleanup:bb.a
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %._crit_edge.i ], [ 0, %bb.a ] ; 2 uses
  %i.a = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %indvars.iv.i
  %i.b = tail call ptr @Curl_llist_head(ptr noundef nonnull %i.a) #11 ; 2 uses
  %.not1314.i = icmp eq ptr %i.b, null
  br i1 %.not1314.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %.01115.i = phi ptr [ %i.d, %.lr.ph.i ], [ %i.b, %.preheader.i ] ; 3 uses
  %i.c = tail call ptr @Curl_node_elem(ptr noundef nonnull %.01115.i) #11 ; 5 uses
  %i.d = tail call ptr @Curl_node_next(ptr noundef nonnull %.01115.i) #11 ; 2 uses
  tail call void @Curl_node_remove(ptr noundef nonnull %.01115.i) #11
  %i.e = load ptr, ptr @Curl_cfree, align 8, !tbaa !85
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !87
  tail call void %i.e(ptr noundef %i.g) #11, !inline_history !133
  %i.h = load ptr, ptr @Curl_cfree, align 8, !tbaa !85
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !86
  tail call void %i.h(ptr noundef %i.j) #11, !inline_history !133
  %i.k = load ptr, ptr @Curl_cfree, align 8, !tbaa !85
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !88
  tail call void %i.k(ptr noundef %i.m) #11, !inline_history !133
  %i.n = load ptr, ptr @Curl_cfree, align 8, !tbaa !85
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !89
  tail call void %i.n(ptr noundef %i.p) #11, !inline_history !133
  %i.q = load ptr, ptr @Curl_cfree, align 8, !tbaa !85
  tail call void %i.q(ptr noundef nonnull %i.c) #11, !inline_history !133
  %.not13.i = icmp eq ptr %i.d, null
  br i1 %.not13.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !2

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.preheader.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 63
  br i1 %exitcond.not.i, label %Curl_cookie_clearall.exit, label %.preheader.i, !llvm.loop !3

Curl_cookie_clearall.exit:                        ; preds = %._crit_edge.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 2024
  store i32 0, ptr %i.r, align 8, !tbaa !93
  %i.s = load ptr, ptr @Curl_cfree, align 8, !tbaa !85
  tail call void %i.s(ptr noundef nonnull %0) #11
  br label %bb.b

bb.b:                                             ; preds = %Curl_cookie_clearall.exit, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define ptr @Curl_cookie_list(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @Curl_share_lock(ptr noundef %0, i32 noundef 2, i32 noundef 2) #11 ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2200 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !95   ; 3 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %cookie_list.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 2024
  %i.e = load i32, ptr %i.d, align 8, !tbaa !93
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %cookie_list.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @remove_expired(ptr noundef nonnull %i.c)
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.i, %bb.c
  %indvars.iv.i = phi i64 [ 0, %bb.c ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 2 uses
  %.02445.i = phi ptr [ null, %bb.c ], [ %.1.lcssa.i, %._crit_edge.i ] ; 2 uses
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !95
  %i.h = getelementptr inbounds nuw [32 x i8], ptr %i.g, i64 %indvars.iv.i
  %i.i = tail call ptr @Curl_llist_head(ptr noundef %i.h) #11 ; 2 uses
  %.not3142.i = icmp eq ptr %i.i, null
  br i1 %.not3142.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %bb.i
  %.02244.i = phi ptr [ %i.ak, %bb.i ], [ %i.i, %bb.d ] ; 2 uses
  %.143.i = phi ptr [ %.2.i, %bb.i ], [ %.02445.i, %bb.d ] ; 3 uses
  %i.j = tail call ptr @Curl_node_elem(ptr noundef nonnull %.02244.i) #11 ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 88
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !87   ; 3 uses
  %.not32.i = icmp eq ptr %i.l, null
  br i1 %.not32.i, label %bb.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 108
  %i.n = load i8, ptr %i.m, align 4               ; 3 uses
  %i.o = and i8 %i.n, 1
  %.not17.i.i = icmp eq i8 %i.o, 0
  br i1 %.not17.i.i, label %get_netscape_format.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = load i8, ptr %i.l, align 1, !tbaa !78
  %.not19.i.i = icmp eq i8 %i.p, 46
  %i.q = select i1 %.not19.i.i, ptr @.str.29, ptr @.str.39
  br label %get_netscape_format.exit.i

get_netscape_format.exit.i:                       ; preds = %bb.f, %bb.e
  %i.r = phi ptr [ @.str.28, %bb.e ], [ @.str.27, %bb.f ]
  %i.s = phi ptr [ @.str.29, %bb.e ], [ %i.q, %bb.f ]
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 80
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !86   ; 2 uses
  %.not22.i.i = icmp eq ptr %i.u, null
  %i.v = select i1 %.not22.i.i, ptr @.str, ptr %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 96
  %i.x = load i64, ptr %i.w, align 8, !tbaa !84
  %i.y = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !88
  %i.aa = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !89 ; 2 uses
  %.not24.i.i = icmp eq ptr %i.ab, null
  %i.ac = select i1 %.not24.i.i, ptr @.str.29, ptr %i.ab
  %i.ad = and i8 %i.n, 2
  %.not23.i.i = icmp eq i8 %i.ad, 0
  %i.ae = select i1 %.not23.i.i, ptr @.str.28, ptr @.str.27
  %i.af = and i8 %i.n, 8
  %.not.i.i = icmp eq i8 %i.af, 0
  %i.ag = select i1 %.not.i.i, ptr @.str.29, ptr @.str.25
  %i.ah = tail call ptr (ptr, ...) @curl_maprintf(ptr noundef nonnull @.str.38, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.s, ptr noundef nonnull %i.l, ptr noundef nonnull %i.r, ptr noundef nonnull %i.v, ptr noundef nonnull %i.ae, i64 noundef %i.x, ptr noundef %i.z, ptr noundef nonnull %i.ac) #11 ; 3 uses
  %.not33.i = icmp eq ptr %i.ah, null
  br i1 %.not33.i, label %.thread.sink.split.i, label %bb.g

bb.g:                                             ; preds = %get_netscape_format.exit.i
  %i.ai = tail call ptr @Curl_slist_append_nodup(ptr noundef %.143.i, ptr noundef nonnull %i.ah) #11 ; 2 uses
  %.not34.i = icmp eq ptr %i.ai, null
  br i1 %.not34.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aj = load ptr, ptr @Curl_cfree, align 8, !tbaa !85
  tail call void %i.aj(ptr noundef nonnull %i.ah) #11, !inline_history !134
  br label %.thread.sink.split.i

bb.i:                                             ; preds = %bb.g, %.lr.ph.i
  %.2.i = phi ptr [ %.143.i, %.lr.ph.i ], [ %i.ai, %bb.g ] ; 2 uses
  %i.ak = tail call ptr @Curl_node_next(ptr noundef nonnull %.02244.i) #11 ; 2 uses
  %.not31.i = icmp eq ptr %i.ak, null
  br i1 %.not31.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !135

._crit_edge.i:                                    ; preds = %bb.i, %bb.d
  %.1.lcssa.i = phi ptr [ %.02445.i, %bb.d ], [ %.2.i, %bb.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 63
  br i1 %exitcond.not.i, label %cookie_list.exit, label %bb.d, !llvm.loop !136

.thread.sink.split.i:                             ; preds = %get_netscape_format.exit.i, %bb.h
  tail call void @curl_slist_free_all(ptr noundef %.143.i) #11
  br label %cookie_list.exit

cookie_list.exit:                                 ; preds = %._crit_edge.i, %bb.a, %bb.b, %.thread.sink.split.i
  %.3.i = phi ptr [ null, %bb.a ], [ null, %.thread.sink.split.i ], [ null, %bb.b ], [ %.1.lcssa.i, %._crit_edge.i ]
  %i.al = tail call i32 @Curl_share_unlock(ptr noundef %0, i32 noundef 2) #11 ; 0 uses
  ret ptr %.3.i
}

; Function Attrs: nounwind uwtable
define void @Curl_flush_cookies(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 10 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  %i.c = tail call i32 @Curl_share_lock(ptr noundef %0, i32 noundef 2, i32 noundef 2) #11 ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2200 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !95   ; 5 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.ac, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1520 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !77   ; 5 uses
  %.not27 = icmp eq ptr %i.g, null
  br i1 %.not27, label %bb.y, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 2032
  %i.i = load i8, ptr %i.h, align 8
  %i.j = and i8 %i.i, 1
  %.not28 = icmp eq i8 %i.j, 0
  br i1 %.not28, label %bb.y, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store ptr null, ptr %i.a, align 8, !tbaa !96
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  store ptr null, ptr %i.b, align 8, !tbaa !77
  tail call fastcc void @remove_expired(ptr noundef nonnull %i.e)
  %i.k = load i8, ptr %i.g, align 1               ; 2 uses
  %i.l = zext i8 %i.k to i32
  %i.m = sub nsw i32 45, %i.l
  %.not83.i = icmp eq i8 %i.k, 45
  br i1 %.not83.i, label %sub_1.i, label %.tail.i

sub_1.i:                                          ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.o = load i8, ptr %i.n, align 1
  %i.p = zext i8 %i.o to i32
  %i.q = sub nsw i32 0, %i.p
  br label %.tail.i

.tail.i:                                          ; preds = %sub_1.i, %bb.d
  %i.r = phi i32 [ %i.m, %bb.d ], [ %i.q, %sub_1.i ]
  %.not.i = icmp eq i32 %i.r, 0
  br i1 %.not.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.tail.i
  %i.s = load ptr, ptr @stdout, align 8, !tbaa !96 ; 2 uses
  store ptr %i.s, ptr %i.a, align 8, !tbaa !96
  br label %bb.g

bb.f:                                             ; preds = %.tail.i
  %i.t = call i32 @Curl_fopen(ptr noundef nonnull %0, ptr noundef nonnull %i.g, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #11 ; 2 uses
  %.not60.i = icmp eq i32 %i.t, 0
  br i1 %.not60.i, label %._crit_edge86.i, label %.thread71.i

._crit_edge86.i:                                  ; preds = %bb.f
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !96
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge86.i, %bb.e
  %i.u = phi ptr [ %.pre.i, %._crit_edge86.i ], [ %i.s, %bb.e ]
  %.047.i = phi i8 [ 0, %._crit_edge86.i ], [ 1, %bb.e ] ; 3 uses
  %fwrite.i = call i64 @fwrite(ptr nonnull @.str.41, i64 131, i64 1, ptr %i.u) ; 0 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 2024
  %i.w = load i32, ptr %i.v, align 8, !tbaa !93   ; 2 uses
  %.not61.i = icmp eq i32 %i.w, 0
  br i1 %.not61.i, label %bb.o, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = load ptr, ptr @Curl_ccalloc, align 8, !tbaa !85
  %i.y = zext i32 %i.w to i64
  %i.z = shl nuw nsw i64 %i.y, 3
  %i.aa = call ptr %i.x(i64 noundef 1, i64 noundef %i.z) #11, !inline_history !137 ; 6 uses
  %.not62.i = icmp eq ptr %i.aa, null
  br i1 %.not62.i, label %.thread71.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.h, %._crit_edge.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %._crit_edge.i ], [ 0, %bb.h ] ; 2 uses
  %.03978.i = phi i64 [ %.1.lcssa.i, %._crit_edge.i ], [ 0, %bb.h ] ; 2 uses
  %i.ab = getelementptr inbounds nuw [32 x i8], ptr %i.e, i64 %indvars.iv.i
  %i.ac = call ptr @Curl_llist_head(ptr noundef nonnull %i.ab) #11 ; 2 uses
  %.not6674.i = icmp eq ptr %i.ac, null
  br i1 %.not6674.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.j
  %.076.i = phi ptr [ %i.ai, %bb.j ], [ %i.ac, %.preheader.i ] ; 2 uses
  %.175.i = phi i64 [ %.2.i, %bb.j ], [ %.03978.i, %.preheader.i ] ; 3 uses
  %i.ad = call ptr @Curl_node_elem(ptr noundef nonnull %.076.i) #11 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 88
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !87
  %.not67.i = icmp eq ptr %i.af, null
  br i1 %.not67.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i
  %i.ag = add i64 %.175.i, 1
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %.175.i
  store ptr %i.ad, ptr %i.ah, align 8, !tbaa !98
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.i
  %.2.i = phi i64 [ %i.ag, %bb.i ], [ %.175.i, %.lr.ph.i ] ; 2 uses
  %i.ai = call ptr @Curl_node_next(ptr noundef nonnull %.076.i) #11 ; 2 uses
  %.not66.i = icmp eq ptr %i.ai, null
  br i1 %.not66.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !138

._crit_edge.i:                                    ; preds = %bb.j, %.preheader.i
  %.1.lcssa.i = phi i64 [ %.03978.i, %.preheader.i ], [ %.2.i, %bb.j ] ; 4 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 63
  br i1 %exitcond.not.i, label %bb.k, label %.preheader.i, !llvm.loop !139

bb.k:                                             ; preds = %._crit_edge.i
  call void @qsort(ptr noundef nonnull %i.aa, i64 noundef %.1.lcssa.i, i64 noundef 8, ptr noundef nonnull @cookie_sort_ct) #11
  %.not84.i = icmp eq i64 %.1.lcssa.i, 0
  br i1 %.not84.i, label %._crit_edge82.i, label %.lr.ph81.i

.lr.ph81.i:                                       ; preds = %bb.k, %bb.n
  %i.aj = phi i64 [ %i.bo, %bb.n ], [ 0, %bb.k ]
  %.14179.i = phi i32 [ %i.bn, %bb.n ], [ 0, %bb.k ]
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.aj
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !98 ; 6 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 108
  %i.an = load i8, ptr %i.am, align 4             ; 3 uses
  %i.ao = and i8 %i.an, 1
  %.not17.i.i = icmp eq i8 %i.ao, 0
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.al, i64 88
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !87 ; 4 uses
  br i1 %.not17.i.i, label %get_netscape_format.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph81.i
  %.not18.i.i = icmp eq ptr %.pre.i.i, null
  br i1 %.not18.i.i, label %get_netscape_format.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ap = load i8, ptr %.pre.i.i, align 1, !tbaa !78
  %.not19.i.i = icmp eq i8 %i.ap, 46
  %i.aq = select i1 %.not19.i.i, ptr @.str.29, ptr @.str.39
  br label %get_netscape_format.exit.i

get_netscape_format.exit.i:                       ; preds = %bb.m, %bb.l, %.lr.ph81.i
  %i.ar = phi ptr [ null, %bb.l ], [ %.pre.i.i, %bb.m ], [ %.pre.i.i, %.lr.ph81.i ] ; 2 uses
  %i.as = phi ptr [ @.str.27, %bb.l ], [ @.str.27, %bb.m ], [ @.str.28, %.lr.ph81.i ]
  %i.at = phi ptr [ @.str.29, %bb.l ], [ %i.aq, %bb.m ], [ @.str.29, %.lr.ph81.i ]
  %.not20.i.i = icmp eq ptr %i.ar, null
  %spec.select.i.i = select i1 %.not20.i.i, ptr @.str.40, ptr %i.ar
  %i.au = getelementptr inbounds nuw i8, ptr %i.al, i64 80
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !86 ; 2 uses
  %.not22.i.i = icmp eq ptr %i.av, null
  %i.aw = select i1 %.not22.i.i, ptr @.str, ptr %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %i.al, i64 96
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !84
  %i.az = getelementptr inbounds nuw i8, ptr %i.al, i64 64
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !88
  %i.bb = getelementptr inbounds nuw i8, ptr %i.al, i64 72
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !89 ; 2 uses
  %.not24.i.i = icmp eq ptr %i.bc, null
  %i.bd = select i1 %.not24.i.i, ptr @.str.29, ptr %i.bc
  %i.be = and i8 %i.an, 2
  %.not23.i.i = icmp eq i8 %i.be, 0
  %i.bf = select i1 %.not23.i.i, ptr @.str.28, ptr @.str.27
  %i.bg = and i8 %i.an, 8
  %.not.i.i = icmp eq i8 %i.bg, 0
  %i.bh = select i1 %.not.i.i, ptr @.str.29, ptr @.str.25
  %i.bi = call ptr (ptr, ...) @curl_maprintf(ptr noundef nonnull @.str.38, ptr noundef nonnull %i.bh, ptr noundef nonnull %i.at, ptr noundef nonnull %spec.select.i.i, ptr noundef nonnull %i.as, ptr noundef nonnull %i.aw, ptr noundef nonnull %i.bf, i64 noundef %i.ay, ptr noundef %i.ba, ptr noundef nonnull %i.bd) #11 ; 3 uses
  %.not63.not.i = icmp eq ptr %i.bi, null
  br i1 %.not63.not.i, label %.thread.i, label %bb.n

.thread.i:                                        ; preds = %get_netscape_format.exit.i
  %i.bj = load ptr, ptr @Curl_cfree, align 8, !tbaa !85
  call void %i.bj(ptr noundef nonnull %i.aa) #11, !inline_history !137
  br label %.thread71.i

bb.n:                                             ; preds = %get_netscape_format.exit.i
  %i.bk = load ptr, ptr %i.a, align 8, !tbaa !96
  %i.bl = call i32 (ptr, ptr, ...) @curl_mfprintf(ptr noundef %i.bk, ptr noundef nonnull @.str.42, ptr noundef nonnull %i.bi) #11 ; 0 uses
  %i.bm = load ptr, ptr @Curl_cfree, align 8, !tbaa !85
  call void %i.bm(ptr noundef nonnull %i.bi) #11, !inline_history !137
  %i.bn = add i32 %.14179.i, 1                    ; 2 uses
  %i.bo = zext i32 %i.bn to i64                   ; 2 uses
  %i.bp = icmp ugt i64 %.1.lcssa.i, %i.bo
  br i1 %i.bp, label %.lr.ph81.i, label %._crit_edge82.i, !llvm.loop !140

._crit_edge82.i:                                  ; preds = %bb.n, %bb.k
  %i.bq = load ptr, ptr @Curl_cfree, align 8, !tbaa !85
  call void %i.bq(ptr noundef nonnull %i.aa) #11, !inline_history !137
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge82.i, %bb.g
  %2 = trunc nuw i8 %.047.i to i1
  br i1 %2, label %.sink.split.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.br = load ptr, ptr %i.a, align 8, !tbaa !96
  %i.bs = call i32 @fclose(ptr noundef %i.br)     ; 0 uses
  store ptr null, ptr %i.a, align 8, !tbaa !96
  %i.bt = load ptr, ptr %i.b, align 8, !tbaa !77  ; 2 uses
  %.not64.i = icmp eq ptr %i.bt, null
  br i1 %.not64.i, label %.sink.split.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bu = call i32 @rename(ptr noundef nonnull %i.bt, ptr noundef nonnull %i.g) #11
  %.not65.i = icmp eq i32 %i.bu, 0
  br i1 %.not65.i, label %.sink.split.i, label %.thread71.i

.thread71.i:                                      ; preds = %bb.q, %.thread.i, %bb.h, %bb.f
  %.148.i = phi i8 [ 0, %bb.f ], [ 0, %bb.q ], [ %.047.i, %.thread.i ], [ %.047.i, %bb.h ]
  %.4.i = phi i32 [ %i.t, %bb.f ], [ 23, %bb.q ], [ 27, %.thread.i ], [ 27, %bb.h ] ; 2 uses
  %i.bv = load ptr, ptr %i.a, align 8, !tbaa !96  ; 2 uses
  %i.bw = icmp eq ptr %i.bv, null
  %3 = trunc nuw i8 %.148.i to i1
  %or.cond.i = select i1 %i.bw, i1 true, i1 %3
  br i1 %or.cond.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.thread71.i
  %i.bx = call i32 @fclose(ptr noundef nonnull %i.bv) ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.thread71.i
  %i.by = load ptr, ptr %i.b, align 8, !tbaa !77  ; 2 uses
  %.not68.i = icmp eq ptr %i.by, null
  br i1 %.not68.i, label %cookie_output.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bz = call i32 @unlink(ptr noundef nonnull %i.by) #11 ; 0 uses
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.t, %bb.q, %bb.p, %bb.o
  %.049.ph.i = phi i32 [ %.4.i, %bb.t ], [ 0, %bb.p ], [ 0, %bb.q ], [ 0, %bb.o ]
  %i.ca = load ptr, ptr @Curl_cfree, align 8, !tbaa !85
  %i.cb = load ptr, ptr %i.b, align 8, !tbaa !77
  call void %i.ca(ptr noundef %i.cb) #11, !inline_history !137
  br label %cookie_output.exit

cookie_output.exit:                               ; preds = %bb.s, %.sink.split.i
  %.049.i = phi i32 [ %.4.i, %bb.s ], [ %.049.ph.i, %.sink.split.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %i.cc = icmp ne i32 %.049.i, 0
  %i.cd = icmp ne ptr %0, null
  %or.cond = and i1 %i.cd, %i.cc
  br i1 %or.cond, label %bb.u, label %bb.y

bb.u:                                             ; preds = %cookie_output.exit
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 2187
  %i.cf = load i64, ptr %i.ce, align 1
  %i.cg = and i64 %i.cf, 536870912
  %.not29 = icmp eq i64 %i.cg, 0
  br i1 %.not29, label %bb.y, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 4504
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !80 ; 2 uses
  %.not30 = icmp eq ptr %i.ci, null
  br i1 %.not30, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !82
  %i.cl = icmp sgt i32 %i.ck, 0
  br i1 %i.cl, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.cm = load ptr, ptr %i.f, align 8, !tbaa !77
  %i.cn = call ptr @curl_easy_strerror(i32 noundef %.049.i) #11
  call void (ptr, ptr, ...) @Curl_infof(ptr noundef nonnull %0, ptr noundef nonnull @.str.8, ptr noundef %i.cm, ptr noundef %i.cn) #11
  br label %bb.y

bb.y:                                             ; preds = %cookie_output.exit, %bb.x, %bb.w, %bb.u, %bb.c, %bb.b
  br i1 %1, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !141 ; 2 uses
  %.not31 = icmp eq ptr %i.cp, null
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !95  ; 2 uses
  br i1 %.not31, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 256
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !149
  %.not32 = icmp eq ptr %.pre, %i.cr
  br i1 %.not32, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  call void @Curl_cookie_cleanup(ptr noundef %.pre)
  store ptr null, ptr %i.d, align 8, !tbaa !95
  br label %bb.ac

bb.ac:                                            ; preds = %bb.y, %bb.aa, %bb.ab, %bb.a
  %i.cs = call i32 @Curl_share_unlock(ptr noundef %0, i32 noundef 2) #11 ; 0 uses
  ret void
}

declare ptr @curl_easy_strerror(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define void @Curl_cookie_run(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @Curl_share_lock(ptr noundef %0, i32 noundef 2, i32 noundef 2) #11 ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2200
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !95   ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 2032 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8
  %i.f = or i8 %i.e, 1
  store i8 %i.f, ptr %i.d, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = tail call i32 @Curl_share_unlock(ptr noundef nonnull %0, i32 noundef 2) #11 ; 0 uses
  ret void
}

declare i32 @curlx_str_cspn(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @curlx_str_trimblanks(ptr noundef) local_unnamed_addr #4

declare i32 @curlx_str_single(ptr noundef, i8 noundef signext) local_unnamed_addr #4

declare void @curlx_str_init(ptr noundef) local_unnamed_addr #4

declare i32 @curlx_str_casecompare(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #3

declare i32 @curlx_str_nudge(ptr noundef, i64 noundef) local_unnamed_addr #4

declare i32 @curlx_str_number(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i64 @time(ptr noundef) local_unnamed_addr #7

declare i32 @Curl_getdate_capped(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @curlx_memdup0(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strcspn(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #3

declare i32 @curl_strnequal(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare ptr @Curl_psl_use(ptr noundef) local_unnamed_addr #4

declare void @Curl_strntolower(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare i32 @psl_is_cookie_domain_acceptable(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @Curl_psl_release(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memrchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

declare signext i8 @Curl_raw_toupper(i8 noundef signext) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @fstat(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @fileno(ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #8

declare void @curlx_dyn_init(ptr noundef, i64 noundef) local_unnamed_addr #4

declare i32 @Curl_get_line(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @curlx_dyn_ptr(ptr noundef) local_unnamed_addr #4

declare void @curlx_str_passblanks(ptr noundef) local_unnamed_addr #4

declare void @curlx_dyn_free(ptr noundef) local_unnamed_addr #4

declare void @curl_slist_free_all(ptr noundef) local_unnamed_addr #4

declare ptr @Curl_slist_append_nodup(ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @curl_maprintf(ptr noundef, ...) local_unnamed_addr #4

declare i32 @Curl_fopen(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 -1, 2) i32 @cookie_sort_ct(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !98
  %i.b = load ptr, ptr %1, align 8, !tbaa !98
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.d = load i32, ptr %i.c, align 8, !tbaa !91
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.f = load i32, ptr %i.e, align 8, !tbaa !91
  %i.g = icmp ugt i32 %i.d, %i.f
  %i.h = select i1 %i.g, i32 1, i32 -1
  ret i32 %i.h
}

end_hunk_0
