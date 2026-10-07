Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/curl/original/cookie?download=true
inline.NumInlined: 40
inline.NumDeleted: 22
begin_hunk_0_@Curl_cookie_list:bb.a
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
  %i.aj = phi i64 [ %i.bn, %bb.n ], [ 0, %bb.k ]
  %.14179.i = phi i32 [ %i.bm, %bb.n ], [ 0, %bb.k ]
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
  %2 = phi ptr [ null, %bb.l ], [ %.pre.i.i, %bb.m ], [ %.pre.i.i, %.lr.ph81.i ] ; 2 uses
  %i.ar = phi ptr [ @.str.27, %bb.l ], [ @.str.27, %bb.m ], [ @.str.28, %.lr.ph81.i ]
  %i.as = phi ptr [ @.str.29, %bb.l ], [ %i.aq, %bb.m ], [ @.str.29, %.lr.ph81.i ]
  %.not20.i.i = icmp eq ptr %2, null
  %spec.select.i.i = select i1 %.not20.i.i, ptr @.str.40, ptr %2
  %i.at = getelementptr inbounds nuw i8, ptr %i.al, i64 80
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !86 ; 2 uses
  %.not22.i.i = icmp eq ptr %i.au, null
  %i.av = select i1 %.not22.i.i, ptr @.str, ptr %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %i.al, i64 96
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !84
  %i.ay = getelementptr inbounds nuw i8, ptr %i.al, i64 64
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !88
  %i.ba = getelementptr inbounds nuw i8, ptr %i.al, i64 72
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !89 ; 2 uses
  %.not24.i.i = icmp eq ptr %i.bb, null
  %i.bc = select i1 %.not24.i.i, ptr @.str.29, ptr %i.bb
  %i.bd = and i8 %i.an, 2
  %.not23.i.i = icmp eq i8 %i.bd, 0
  %i.be = select i1 %.not23.i.i, ptr @.str.28, ptr @.str.27
  %i.bf = and i8 %i.an, 8
  %.not.i.i = icmp eq i8 %i.bf, 0
  %i.bg = select i1 %.not.i.i, ptr @.str.29, ptr @.str.25
  %i.bh = call ptr (ptr, ...) @curl_maprintf(ptr noundef nonnull @.str.38, ptr noundef nonnull %i.bg, ptr noundef nonnull %i.as, ptr noundef nonnull %spec.select.i.i, ptr noundef nonnull %i.ar, ptr noundef nonnull %i.av, ptr noundef nonnull %i.be, i64 noundef %i.ax, ptr noundef %i.az, ptr noundef nonnull %i.bc) #11 ; 3 uses
  %.not63.not.i = icmp eq ptr %i.bh, null
  br i1 %.not63.not.i, label %.thread.i, label %bb.n

.thread.i:                                        ; preds = %get_netscape_format.exit.i
  %i.bi = load ptr, ptr @Curl_cfree, align 8, !tbaa !85
  call void %i.bi(ptr noundef nonnull %i.aa) #11, !inline_history !137
  br label %.thread71.i

bb.n:                                             ; preds = %get_netscape_format.exit.i
  %i.bj = load ptr, ptr %i.a, align 8, !tbaa !96
  %i.bk = call i32 (ptr, ptr, ...) @curl_mfprintf(ptr noundef %i.bj, ptr noundef nonnull @.str.42, ptr noundef nonnull %i.bh) #11 ; 0 uses
  %i.bl = load ptr, ptr @Curl_cfree, align 8, !tbaa !85
  call void %i.bl(ptr noundef nonnull %i.bh) #11, !inline_history !137
  %i.bm = add i32 %.14179.i, 1                    ; 2 uses
  %i.bn = zext i32 %i.bm to i64                   ; 2 uses
  %i.bo = icmp ugt i64 %.1.lcssa.i, %i.bn
  br i1 %i.bo, label %.lr.ph81.i, label %._crit_edge82.i, !llvm.loop !140

._crit_edge82.i:                                  ; preds = %bb.n, %bb.k
  %i.bp = load ptr, ptr @Curl_cfree, align 8, !tbaa !85
  call void %i.bp(ptr noundef nonnull %i.aa) #11, !inline_history !137
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge82.i, %bb.g
  %i.bq = trunc nuw i8 %.047.i to i1
  br i1 %i.bq, label %.sink.split.i, label %bb.p

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
  %i.bx = trunc nuw i8 %.148.i to i1
  %or.cond.i = select i1 %i.bw, i1 true, i1 %i.bx
  br i1 %or.cond.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.thread71.i
  %i.by = call i32 @fclose(ptr noundef nonnull %i.bv) ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.thread71.i
  %i.bz = load ptr, ptr %i.b, align 8, !tbaa !77  ; 2 uses
  %.not68.i = icmp eq ptr %i.bz, null
  br i1 %.not68.i, label %cookie_output.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ca = call i32 @unlink(ptr noundef nonnull %i.bz) #11 ; 0 uses
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.t, %bb.q, %bb.p, %bb.o
  %.049.ph.i = phi i32 [ %.4.i, %bb.t ], [ 0, %bb.p ], [ 0, %bb.q ], [ 0, %bb.o ]
  %i.cb = load ptr, ptr @Curl_cfree, align 8, !tbaa !85
  %i.cc = load ptr, ptr %i.b, align 8, !tbaa !77
  call void %i.cb(ptr noundef %i.cc) #11, !inline_history !137
  br label %cookie_output.exit

cookie_output.exit:                               ; preds = %bb.s, %.sink.split.i
  %.049.i = phi i32 [ %.4.i, %bb.s ], [ %.049.ph.i, %.sink.split.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %i.cd = icmp ne i32 %.049.i, 0
  %i.ce = icmp ne ptr %0, null
  %or.cond = and i1 %i.ce, %i.cd
  br i1 %or.cond, label %bb.u, label %bb.y

bb.u:                                             ; preds = %cookie_output.exit
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 2187
  %i.cg = load i64, ptr %i.cf, align 1
  %i.ch = and i64 %i.cg, 536870912
  %.not29 = icmp eq i64 %i.ch, 0
  br i1 %.not29, label %bb.y, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 4504
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !80 ; 2 uses
  %.not30 = icmp eq ptr %i.cj, null
  br i1 %.not30, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !82
  %i.cm = icmp sgt i32 %i.cl, 0
  br i1 %i.cm, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.cn = load ptr, ptr %i.f, align 8, !tbaa !77
  %i.co = call ptr @curl_easy_strerror(i32 noundef %.049.i) #11
  call void (ptr, ptr, ...) @Curl_infof(ptr noundef nonnull %0, ptr noundef nonnull @.str.8, ptr noundef %i.cn, ptr noundef %i.co) #11
  br label %bb.y

bb.y:                                             ; preds = %cookie_output.exit, %bb.x, %bb.w, %bb.u, %bb.c, %bb.b
  br i1 %1, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !141 ; 2 uses
  %.not31 = icmp eq ptr %i.cq, null
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !95  ; 2 uses
  br i1 %.not31, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 256
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !149
  %.not32 = icmp eq ptr %.pre, %i.cs
  br i1 %.not32, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  call void @Curl_cookie_cleanup(ptr noundef %.pre)
  store ptr null, ptr %i.d, align 8, !tbaa !95
  br label %bb.ac

bb.ac:                                            ; preds = %bb.y, %bb.aa, %bb.ab, %bb.a
  %i.ct = call i32 @Curl_share_unlock(ptr noundef %0, i32 noundef 2) #11 ; 0 uses
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
end_hunk_0
