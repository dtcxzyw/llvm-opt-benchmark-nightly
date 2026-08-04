begin_hunk_0_@progress_meter:bb.a
  %i.q = load i32, ptr @progress_meter.stamp.1, align 8
  %i.r = tail call i64 @curlx_timediff_ms(i64 %i.n, i32 %i.o, i64 %i.p, i32 %i.q) #6
  %.b = load i1, ptr @progress_meter.header, align 1
  br i1 %.b, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i1 true, ptr @progress_meter.header, align 1
  %i.s = load ptr, ptr @tool_stderr, align 8, !tbaa !32
  %i.t = tail call i64 @fwrite(ptr nonnull @.str.9, i64 66, i64 1, ptr %i.s) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.u = icmp sgt i64 %i.r, 500
  %or.cond = select i1 %2, i1 true, i1 %i.u
  br i1 %or.cond, label %bb.e, label %bb.ac

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  %i.v = load i64, ptr %1, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.x = load i32, ptr %i.w, align 8
  %i.y = tail call i64 @curlx_timediff_ms(i64 %i.n, i32 %i.o, i64 %i.v, i32 %i.x) #6
  %i.z = sdiv i64 %i.y, 1000
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #6
  store i32 11565, ptr %i.e, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #6
  store i32 11565, ptr %i.f, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #6
  store i64 0, ptr %i.g, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #6
  store i64 0, ptr %i.h, align 8, !tbaa !33
  store i64 %i.n, ptr @progress_meter.stamp.0, align 8, !tbaa !33
  store i32 %i.o, ptr @progress_meter.stamp.1, align 8, !tbaa !34
  %i.aa = load i64, ptr @all_dlalready, align 8, !tbaa !33 ; 2 uses
  %i.ab = load i64, ptr @all_ulalready, align 8, !tbaa !33 ; 2 uses
  %all_dltotal.promoted = load i64, ptr @all_dltotal, align 8 ; 2 uses
  %all_ultotal.promoted = load i64, ptr @all_ultotal, align 8 ; 2 uses
  %.059111 = load ptr, ptr @transfers, align 8, !tbaa !35 ; 2 uses
  %.not78112 = icmp eq ptr %.059111, null
  br i1 %.not78112, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %bb.k
  %.059119 = phi ptr [ %.059, %bb.k ], [ %.059111, %bb.e ] ; 7 uses
  %.060118 = phi i1 [ %.1, %bb.k ], [ true, %bb.e ] ; 2 uses
  %.065117 = phi i1 [ %.166, %bb.k ], [ true, %bb.e ] ; 2 uses
  %.0104116 = phi i64 [ %storemerge.i87, %bb.k ], [ %i.ab, %bb.e ]
  %.0105115 = phi i64 [ %storemerge.i86, %bb.k ], [ %i.aa, %bb.e ]
  %storemerge.i88108114 = phi i64 [ %storemerge.i88107, %bb.k ], [ %all_dltotal.promoted, %bb.e ] ; 3 uses
  %storemerge.i89110113 = phi i64 [ %storemerge.i89109, %bb.k ], [ %all_ultotal.promoted, %bb.e ] ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.059119, i64 648
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !26
  %storemerge.i86 = tail call i64 @llvm.sadd.sat.i64(i64 %.0105115, i64 %i.ad) ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.059119, i64 664
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !28
  %storemerge.i87 = tail call i64 @llvm.sadd.sat.i64(i64 %.0104116, i64 %i.af) ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.059119, i64 640
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !25 ; 2 uses
  %.not80 = icmp eq i64 %i.ah, 0
  br i1 %.not80, label %bb.h, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.ai = getelementptr inbounds nuw i8, ptr %.059119, i64 696 ; 2 uses
  %i.aj = load i8, ptr %i.ai, align 8             ; 2 uses
  %i.ak = and i8 %i.aj, 1
  %.not81 = icmp eq i8 %i.ak, 0
  br i1 %.not81, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %storemerge.i88 = tail call i64 @llvm.sadd.sat.i64(i64 %storemerge.i88108114, i64 %i.ah) ; 2 uses
  store i64 %storemerge.i88, ptr @all_dltotal, align 8, !tbaa !33
  %i.al = or disjoint i8 %i.aj, 1
  store i8 %i.al, ptr %i.ai, align 8
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.f, %bb.g
  %storemerge.i88107 = phi i64 [ %storemerge.i88108114, %bb.f ], [ %storemerge.i88, %bb.g ], [ %storemerge.i88108114, %.lr.ph ] ; 2 uses
  %.1 = phi i1 [ %.060118, %bb.f ], [ %.060118, %bb.g ], [ false, %.lr.ph ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.059119, i64 656
  %i.an = load i64, ptr %i.am, align 8, !tbaa !27 ; 2 uses
  %.not82 = icmp eq i64 %i.an, 0
  br i1 %.not82, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %.059119, i64 696 ; 2 uses
  %i.ap = load i8, ptr %i.ao, align 8             ; 2 uses
  %i.aq = and i8 %i.ap, 2
  %.not83 = icmp eq i8 %i.aq, 0
  br i1 %.not83, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %storemerge.i89 = tail call i64 @llvm.sadd.sat.i64(i64 %storemerge.i89110113, i64 %i.an) ; 2 uses
  store i64 %storemerge.i89, ptr @all_ultotal, align 8, !tbaa !33
  %i.ar = or disjoint i8 %i.ap, 2
  store i8 %i.ar, ptr %i.ao, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.j, %bb.i
  %storemerge.i89109 = phi i64 [ %storemerge.i89110113, %bb.i ], [ %storemerge.i89, %bb.j ], [ %storemerge.i89110113, %bb.h ] ; 2 uses
  %.166 = phi i1 [ %.065117, %bb.i ], [ %.065117, %bb.j ], [ false, %bb.h ] ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.059119, i64 256
  %.059 = load ptr, ptr %i.as, align 8, !tbaa !35 ; 2 uses
  %.not78 = icmp eq ptr %.059, null
  br i1 %.not78, label %._crit_edge, label %.lr.ph, !llvm.loop !36

._crit_edge:                                      ; preds = %bb.k, %bb.e
  %i.at = phi i64 [ %all_ultotal.promoted, %bb.e ], [ %storemerge.i89109, %bb.k ]
  %i.au = phi i64 [ %all_dltotal.promoted, %bb.e ], [ %storemerge.i88107, %bb.k ] ; 3 uses
  %.0105.lcssa = phi i64 [ %i.aa, %bb.e ], [ %storemerge.i86, %bb.k ] ; 8 uses
  %.0104.lcssa = phi i64 [ %i.ab, %bb.e ], [ %storemerge.i87, %bb.k ] ; 7 uses
  %.065.lcssa = phi i1 [ true, %bb.e ], [ %.166, %bb.k ]
  %.060.lcssa = phi i1 [ true, %bb.e ], [ %.1, %bb.k ] ; 2 uses
  %i.av = icmp ne i64 %i.au, 0
  %or.cond3 = select i1 %.060.lcssa, i1 %i.av, i1 false
  br i1 %or.cond3, label %bb.l, label %bb.p

bb.l:                                             ; preds = %._crit_edge
  %i.aw = icmp slt i64 %.0105.lcssa, 92233720368547758
  br i1 %i.aw, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ax = mul nsw i64 %.0105.lcssa, 100
  %i.ay = sdiv i64 %i.ax, %i.au
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.az = sdiv i64 %i.au, 100
  %i.ba = sdiv i64 %.0105.lcssa, %i.az
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bb = phi i64 [ %i.ay, %bb.m ], [ %i.ba, %bb.n ]
  %i.bc = call i32 (ptr, i64, ptr, ...) @curl_msnprintf(ptr noundef nonnull %i.e, i64 noundef 4, ptr noundef nonnull @.str.10, i64 noundef %i.bb) #6 ; 0 uses
  %.pre = load i64, ptr @all_ultotal, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %._crit_edge
  %i.bd = phi i64 [ %.pre, %bb.o ], [ %i.at, %._crit_edge ] ; 3 uses
  %i.be = icmp ne i64 %i.bd, 0
  %or.cond5 = select i1 %.065.lcssa, i1 %i.be, i1 false
  br i1 %or.cond5, label %bb.q, label %bb.u

bb.q:                                             ; preds = %bb.p
  %i.bf = icmp slt i64 %.0104.lcssa, 92233720368547758
  br i1 %i.bf, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bg = mul nsw i64 %.0104.lcssa, 100
  %i.bh = sdiv i64 %i.bg, %i.bd
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.bi = sdiv i64 %i.bd, 100
  %i.bj = sdiv i64 %.0104.lcssa, %i.bi
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.bk = phi i64 [ %i.bh, %bb.r ], [ %i.bj, %bb.s ]
  %i.bl = call i32 (ptr, i64, ptr, ...) @curl_msnprintf(ptr noundef nonnull %i.f, i64 noundef 4, ptr noundef nonnull @.str.10, i64 noundef %i.bk) #6 ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.p
  %i.bm = load i32, ptr @speedindex, align 4, !tbaa !34 ; 2 uses
  %i.bn = zext i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [32 x i8], ptr @speedstore, i64 %i.bn ; 4 uses
  store i64 %.0105.lcssa, ptr %i.bo, align 16, !tbaa !38
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store i64 %.0104.lcssa, ptr %i.bp, align 8, !tbaa !40
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  store i64 %i.n, ptr %i.bq, align 16, !tbaa !33
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  store i32 %i.o, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !34
  %i.br = add i32 %i.bm, 1                        ; 3 uses
  store i32 %i.br, ptr @speedindex, align 4, !tbaa !34
  %i.bs = icmp ugt i32 %i.br, 9
  br i1 %i.bs, label %.thread, label %bb.v

.thread:                                          ; preds = %bb.u
  store i1 true, ptr @indexwrapped, align 1
  store i32 0, ptr @speedindex, align 4, !tbaa !34
  br label %bb.w

bb.v:                                             ; preds = %bb.u
  %.b76.pr = load i1, ptr @indexwrapped, align 1
  br i1 %.b76.pr, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.thread, %bb.v
  %i.bt = phi i32 [ 0, %.thread ], [ %i.br, %bb.v ]
  %i.bu = zext nneg i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw [32 x i8], ptr @speedstore, i64 %i.bu ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.bx = load i64, ptr %i.bw, align 16
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.bz = load i32, ptr %i.by, align 8
  %i.ca = call i64 @curlx_timediff_ms(i64 %i.n, i32 %i.o, i64 %i.bx, i32 %i.bz) #6
  %i.cb = load i32, ptr @speedindex, align 4, !tbaa !34
  %i.cc = zext i32 %i.cb to i64
  %i.cd = getelementptr inbounds nuw [32 x i8], ptr @speedstore, i64 %i.cc ; 2 uses
  %3 = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %4 = load i64, ptr %3, align 8, !tbaa !40
  %5 = load i64, ptr %i.cd, align 16, !tbaa !38
  %6 = sub nsw i64 %.0105.lcssa, %5
  %i.ce = sub nsw i64 %.0104.lcssa, %4
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.cf = load i64, ptr %1, align 8
  %i.cg = load i32, ptr %i.w, align 8
  %i.ch = call i64 @curlx_timediff_ms(i64 %i.n, i32 %i.o, i64 %i.cf, i32 %i.cg) #6
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.063 = phi i64 [ %i.ca, %bb.w ], [ %i.ch, %bb.x ]
  %.062 = phi i64 [ %6, %bb.w ], [ %.0105.lcssa, %bb.x ]
  %.061 = phi i64 [ %i.ce, %bb.w ], [ %.0104.lcssa, %bb.x ]
  %spec.select = call i64 @llvm.umax.i64(i64 %.063, i64 1)
  %i.ci = sitofp i64 %.062 to double
  %i.cj = sitofp i64 %spec.select to double
  %i.ck = fdiv double %i.cj, 1.000000e+03
  %7 = sitofp i64 %.061 to double
  %8 = insertelement <2 x double> poison, double %i.ci, i64 0
  %9 = insertelement <2 x double> %8, double %7, i64 1
  %10 = insertelement <2 x double> poison, double %i.ck, i64 0
  %11 = shufflevector <2 x double> %10, <2 x double> poison, <2 x i32> zeroinitializer
  %12 = fdiv <2 x double> %9, %11                 ; 2 uses
  %13 = extractelement <2 x double> %12, i64 0
  %14 = fptosi double %13 to i64
  %15 = extractelement <2 x double> %12, i64 1
  %i.cl = fptosi double %15 to i64
  %i.cm = call i64 @llvm.smax.i64(i64 %14, i64 %i.cl) ; 4 uses
  %i.cn = icmp ne i64 %i.cm, 0
  %or.cond7 = select i1 %.060.lcssa, i1 %i.cn, i1 false
  br i1 %or.cond7, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.co = load i64, ptr @all_dltotal, align 8, !tbaa !33 ; 2 uses
  %i.cp = sdiv i64 %i.co, %i.cm
  %i.cq = sub nsw i64 %i.co, %.0105.lcssa
  %i.cr = sdiv i64 %i.cq, %i.cm
  call void @timebuf(ptr noundef nonnull %i.a, i64 noundef 9, i64 noundef %i.cr)
  call void @timebuf(ptr noundef nonnull %i.b, i64 noundef 9, i64 noundef %i.cp)
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  call void @curlx_strcopy(ptr noundef nonnull %i.a, i64 noundef 9, ptr noundef nonnull @.str.3, i64 noundef 8) #6
  call void @curlx_strcopy(ptr noundef nonnull %i.b, i64 noundef 9, ptr noundef nonnull @.str.3, i64 noundef 8) #6
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  call void @timebuf(ptr noundef nonnull %i.c, i64 noundef 9, i64 noundef %i.z)
  %i.cs = call i32 @curl_multi_get_offt(ptr noundef %0, i32 noundef 5, ptr noundef nonnull %i.g) #6 ; 0 uses
  %i.ct = call i32 @curl_multi_get_offt(ptr noundef %0, i32 noundef 2, ptr noundef nonnull %i.h) #6 ; 0 uses
  %i.cu = load ptr, ptr @tool_stderr, align 8, !tbaa !32
  %i.cv = call ptr @max5data(i64 noundef %.0105.lcssa, ptr noundef nonnull %i.d, i64 noundef 6) ; 0 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.d, i64 6 ; 2 uses
  %i.cx = call ptr @max5data(i64 noundef %.0104.lcssa, ptr noundef nonnull %i.cw, i64 noundef 6) ; 0 uses
  %i.cy = load i64, ptr %i.g, align 8, !tbaa !33
  %i.cz = load i64, ptr %i.h, align 8, !tbaa !33
  %i.da = getelementptr inbounds nuw i8, ptr %i.d, i64 12 ; 2 uses
  %i.db = call ptr @max5data(i64 noundef %i.cm, ptr noundef nonnull %i.da, i64 noundef 6) ; 0 uses
  %i.dc = select i1 %2, ptr @.str.12, ptr @.str.13
  %i.dd = call i32 (ptr, ptr, ...) @curl_mfprintf(ptr noundef %i.cu, ptr noundef nonnull @.str.11, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.d, ptr noundef nonnull %i.cw, i64 noundef %i.cy, i64 noundef %i.cz, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.a, ptr noundef nonnull %i.da, ptr noundef nonnull %i.dc) #6 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.ac

bb.ac:                                            ; preds = %bb.d, %bb.a, %bb.ab
  %.0 = phi i1 [ false, %bb.a ], [ true, %bb.ab ], [ false, %bb.d ]
  ret i1 %.0
}

declare { i64, i32 } @curlx_now() local_unnamed_addr #2

declare i64 @curlx_timediff_ms(i64, i32, i64, i32) local_unnamed_addr #2

declare i32 @curl_multi_get_offt(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @curl_mfprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @progress_finalize(ptr nofree noundef captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.b = load i64, ptr %i.a, align 8, !tbaa !26
  %i.c = load i64, ptr @all_dlalready, align 8, !tbaa !33
  %storemerge.i = tail call i64 @llvm.sadd.sat.i64(i64 %i.c, i64 %i.b)
  store i64 %storemerge.i, ptr @all_dlalready, align 8, !tbaa !33
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.e = load i64, ptr %i.d, align 8, !tbaa !28
  %i.f = load i64, ptr @all_ulalready, align 8, !tbaa !33
  %storemerge.i9 = tail call i64 @llvm.sadd.sat.i64(i64 %i.f, i64 %i.e)
  store i64 %storemerge.i9, ptr @all_ulalready, align 8, !tbaa !33
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 696 ; 3 uses
  %i.h = load i8, ptr %i.g, align 8               ; 3 uses
  %i.i = and i8 %i.h, 1
  %.not = icmp eq i8 %i.i, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.k = load i64, ptr %i.j, align 8, !tbaa !25
  %i.l = load i64, ptr @all_dltotal, align 8, !tbaa !33
  %storemerge.i10 = tail call i64 @llvm.sadd.sat.i64(i64 %i.l, i64 %i.k)
  store i64 %storemerge.i10, ptr @all_dltotal, align 8, !tbaa !33
  %i.m = or disjoint i8 %i.h, 1                   ; 2 uses
  store i8 %i.m, ptr %i.g, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.n = phi i8 [ %i.m, %bb.b ], [ %i.h, %bb.a ]  ; 2 uses
  %i.o = and i8 %i.n, 2
  %.not8 = icmp eq i8 %i.o, 0
  br i1 %.not8, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.q = load i64, ptr %i.p, align 8, !tbaa !27
  %i.r = load i64, ptr @all_ultotal, align 8, !tbaa !33
  %storemerge.i11 = tail call i64 @llvm.sadd.sat.i64(i64 %i.r, i64 %i.q)
  store i64 %storemerge.i11, ptr @all_ultotal, align 8, !tbaa !33
  %i.s = or disjoint i8 %i.n, 2
  store i8 %i.s, ptr %i.g, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.sadd.sat.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!6, !6, i64 0}
!9 = !{!10, !13, i64 272}
!10 = !{!"per_transfer", !6, i64 0, !11, i64 256, !11, i64 264, !13, i64 272, !14, i64 280, !12, i64 288, !15, i64 296, !16, i64 304, !16, i64 312, !17, i64 320, !17, i64 336, !15, i64 352, !16, i64 360, !15, i64 368, !5, i64 376, !18, i64 384, !20, i64 456, !20, i64 496, !20, i64 536, !21, i64 576, !16, i64 624, !16, i64 632, !16, i64 640, !16, i64 648, !16, i64 656, !16, i64 664, !16, i64 672, !16, i64 680, !5, i64 688, !5, i64 692, !5, i64 696, !5, i64 696, !5, i64 696, !5, i64 696, !5, i64 696, !5, i64 696, !5, i64 696, !5, i64 696}
!11 = !{!"p1 _ZTS12per_transfer", !12, i64 0}
!12 = !{!"any pointer", !6, i64 0}
!13 = !{!"p1 _ZTS15OperationConfig", !12, i64 0}
!14 = !{!"p1 _ZTS13curl_certinfo", !12, i64 0}
!15 = !{!"p1 omnipotent char", !12, i64 0}
!16 = !{!"long", !6, i64 0}
!17 = !{!"curltime", !16, i64 0, !5, i64 8}
!18 = !{!"ProgressData", !5, i64 0, !16, i64 8, !17, i64 16, !5, i64 32, !19, i64 40, !16, i64 48, !5, i64 56, !5, i64 60, !5, i64 64}
!19 = !{!"p1 _ZTS8_IO_FILE", !12, i64 0}
!20 = !{!"OutStruct", !15, i64 0, !19, i64 8, !16, i64 16, !16, i64 24, !5, i64 32, !5, i64 32, !5, i64 32, !5, i64 32, !5, i64 32}
!21 = !{!"HdrCbData", !13, i64 0, !22, i64 8, !22, i64 16, !22, i64 24, !23, i64 32, !24, i64 40}
!22 = !{!"p1 _ZTS9OutStruct", !12, i64 0}
!23 = !{!"p1 _ZTS10curl_slist", !12, i64 0}
!24 = !{!"_Bool", !6, i64 0}
!25 = !{!10, !16, i64 640}
!26 = !{!10, !16, i64 648}
!27 = !{!10, !16, i64 656}
!28 = !{!10, !16, i64 664}
!29 = !{!10, !12, i64 288}
!30 = !{!31, !31, i64 0}
!31 = !{!"p1 _ZTS12GlobalConfig", !12, i64 0}
!32 = !{!19, !19, i64 0}
!33 = !{!16, !16, i64 0}
!34 = !{!5, !5, i64 0}
!35 = !{!11, !11, i64 0}
!36 = distinct !{!36, !37}
!37 = !{!"llvm.loop.mustprogress"}
!38 = !{!39, !16, i64 0}
!39 = !{!"speedcount", !16, i64 0, !16, i64 8, !17, i64 16}
!40 = !{!39, !16, i64 8}
end_hunk_0
