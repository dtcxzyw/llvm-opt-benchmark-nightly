Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/curl/original/tool_progress?download=true
inline.NumInlined: 12
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@progress_meter:bb.a
  %i.q = load i32, ptr @progress_meter.stamp.1, align 8
  %i.r = tail call i64 @curlx_timediff_ms(i64 %i.n, i32 %i.o, i64 %i.p, i32 %i.q) #6
  %.b = load i1, ptr @progress_meter.header, align 1
  br i1 %.b, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i1 true, ptr @progress_meter.header, align 1
  %i.s = load ptr, ptr @tool_stderr, align 8, !tbaa !34
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.9, i64 66, i64 1, ptr %i.s) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.t = icmp sgt i64 %i.r, 500
  %or.cond = select i1 %2, i1 true, i1 %i.t
  br i1 %or.cond, label %bb.e, label %bb.ac

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  %i.u = load i64, ptr %1, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.w = load i32, ptr %i.v, align 8
  %i.x = tail call i64 @curlx_timediff_ms(i64 %i.n, i32 %i.o, i64 %i.u, i32 %i.w) #6
  %i.y = sdiv i64 %i.x, 1000
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #6
  store i32 11565, ptr %i.e, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #6
  store i32 11565, ptr %i.f, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #6
  store i64 0, ptr %i.g, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #6
  store i64 0, ptr %i.h, align 8, !tbaa !27
  store i64 %i.n, ptr @progress_meter.stamp.0, align 8, !tbaa !27
  store i32 %i.o, ptr @progress_meter.stamp.1, align 8, !tbaa !35
  %i.z = load i64, ptr @all_dlalready, align 8, !tbaa !27 ; 2 uses
  %i.aa = load i64, ptr @all_ulalready, align 8, !tbaa !27 ; 2 uses
  %all_dltotal.promoted = load i64, ptr @all_dltotal, align 8 ; 2 uses
  %all_ultotal.promoted = load i64, ptr @all_ultotal, align 8 ; 2 uses
  %.066111 = load ptr, ptr @transfers, align 8, !tbaa !36 ; 2 uses
  %.not78112 = icmp eq ptr %.066111, null
  br i1 %.not78112, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %bb.k
  %.066119 = phi ptr [ %.066, %bb.k ], [ %.066111, %bb.e ] ; 7 uses
  %.062118 = phi i1 [ %.163, %bb.k ], [ true, %bb.e ] ; 2 uses
  %.064117 = phi i1 [ %.165, %bb.k ], [ true, %bb.e ] ; 2 uses
  %.0104116 = phi i64 [ %storemerge.i87, %bb.k ], [ %i.aa, %bb.e ]
  %.0105115 = phi i64 [ %storemerge.i86, %bb.k ], [ %i.z, %bb.e ]
  %storemerge.i88108114 = phi i64 [ %storemerge.i88107, %bb.k ], [ %all_dltotal.promoted, %bb.e ] ; 3 uses
  %storemerge.i89110113 = phi i64 [ %storemerge.i89109, %bb.k ], [ %all_ultotal.promoted, %bb.e ] ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.066119, i64 648
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !24
  %storemerge.i86 = tail call i64 @llvm.sadd.sat.i64(i64 %.0105115, i64 %i.ac) ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.066119, i64 664
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !26
  %storemerge.i87 = tail call i64 @llvm.sadd.sat.i64(i64 %.0104116, i64 %i.ae) ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.066119, i64 640
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !23 ; 2 uses
  %.not80 = icmp eq i64 %i.ag, 0
  br i1 %.not80, label %bb.h, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.ah = getelementptr inbounds nuw i8, ptr %.066119, i64 696 ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 8             ; 2 uses
  %i.aj = and i8 %i.ai, 1
  %.not81 = icmp eq i8 %i.aj, 0
  br i1 %.not81, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %storemerge.i88 = tail call i64 @llvm.sadd.sat.i64(i64 %storemerge.i88108114, i64 %i.ag) ; 2 uses
  store i64 %storemerge.i88, ptr @all_dltotal, align 8, !tbaa !27
  %i.ak = or disjoint i8 %i.ai, 1
  store i8 %i.ak, ptr %i.ah, align 8
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.f, %bb.g
  %storemerge.i88107 = phi i64 [ %storemerge.i88108114, %bb.f ], [ %storemerge.i88, %bb.g ], [ %storemerge.i88108114, %.lr.ph ] ; 2 uses
  %.165 = phi i1 [ %.064117, %bb.f ], [ %.064117, %bb.g ], [ false, %.lr.ph ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.066119, i64 656
  %i.am = load i64, ptr %i.al, align 8, !tbaa !25 ; 2 uses
  %.not82 = icmp eq i64 %i.am, 0
  br i1 %.not82, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.an = getelementptr inbounds nuw i8, ptr %.066119, i64 696 ; 2 uses
  %i.ao = load i8, ptr %i.an, align 8             ; 2 uses
  %i.ap = and i8 %i.ao, 2
  %.not83 = icmp eq i8 %i.ap, 0
  br i1 %.not83, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %storemerge.i89 = tail call i64 @llvm.sadd.sat.i64(i64 %storemerge.i89110113, i64 %i.am) ; 2 uses
  store i64 %storemerge.i89, ptr @all_ultotal, align 8, !tbaa !27
  %i.aq = or disjoint i8 %i.ao, 2
  store i8 %i.aq, ptr %i.an, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.j, %bb.i
  %storemerge.i89109 = phi i64 [ %storemerge.i89110113, %bb.i ], [ %storemerge.i89, %bb.j ], [ %storemerge.i89110113, %bb.h ] ; 2 uses
  %.163 = phi i1 [ %.062118, %bb.i ], [ %.062118, %bb.j ], [ false, %bb.h ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.066119, i64 256
  %.066 = load ptr, ptr %i.ar, align 8, !tbaa !36 ; 2 uses
  %.not78 = icmp eq ptr %.066, null
  br i1 %.not78, label %._crit_edge, label %.lr.ph, !llvm.loop !31

._crit_edge:                                      ; preds = %bb.k, %bb.e
  %i.as = phi i64 [ %all_ultotal.promoted, %bb.e ], [ %storemerge.i89109, %bb.k ]
  %i.at = phi i64 [ %all_dltotal.promoted, %bb.e ], [ %storemerge.i88107, %bb.k ] ; 3 uses
  %.0105.lcssa = phi i64 [ %i.z, %bb.e ], [ %storemerge.i86, %bb.k ] ; 8 uses
  %.0104.lcssa = phi i64 [ %i.aa, %bb.e ], [ %storemerge.i87, %bb.k ] ; 7 uses
  %.064.lcssa = phi i1 [ true, %bb.e ], [ %.165, %bb.k ] ; 2 uses
  %.062.lcssa = phi i1 [ true, %bb.e ], [ %.163, %bb.k ]
  %i.au = icmp ne i64 %i.at, 0
  %or.cond3 = select i1 %.064.lcssa, i1 %i.au, i1 false
  br i1 %or.cond3, label %bb.l, label %bb.p

bb.l:                                             ; preds = %._crit_edge
  %i.av = icmp slt i64 %.0105.lcssa, 92233720368547758
  br i1 %i.av, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.aw = mul nsw i64 %.0105.lcssa, 100
  %i.ax = sdiv i64 %i.aw, %i.at
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.ay = sdiv i64 %i.at, 100
  %i.az = sdiv i64 %.0105.lcssa, %i.ay
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ba = phi i64 [ %i.ax, %bb.m ], [ %i.az, %bb.n ]
  %i.bb = call i32 (ptr, i64, ptr, ...) @curl_msnprintf(ptr noundef nonnull %i.e, i64 noundef 4, ptr noundef nonnull @.str.10, i64 noundef %i.ba) #6 ; 0 uses
  %.pre = load i64, ptr @all_ultotal, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %._crit_edge
  %i.bc = phi i64 [ %.pre, %bb.o ], [ %i.as, %._crit_edge ] ; 3 uses
  %i.bd = icmp ne i64 %i.bc, 0
  %or.cond5 = select i1 %.062.lcssa, i1 %i.bd, i1 false
  br i1 %or.cond5, label %bb.q, label %bb.u

bb.q:                                             ; preds = %bb.p
  %i.be = icmp slt i64 %.0104.lcssa, 92233720368547758
  br i1 %i.be, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bf = mul nsw i64 %.0104.lcssa, 100
  %i.bg = sdiv i64 %i.bf, %i.bc
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.bh = sdiv i64 %i.bc, 100
  %i.bi = sdiv i64 %.0104.lcssa, %i.bh
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.bj = phi i64 [ %i.bg, %bb.r ], [ %i.bi, %bb.s ]
  %i.bk = call i32 (ptr, i64, ptr, ...) @curl_msnprintf(ptr noundef nonnull %i.f, i64 noundef 4, ptr noundef nonnull @.str.10, i64 noundef %i.bj) #6 ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.p
  %i.bl = load i32, ptr @speedindex, align 4, !tbaa !35 ; 3 uses
  %i.bm = zext i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [32 x i8], ptr @speedstore, i64 %i.bm ; 4 uses
  store i64 %.0105.lcssa, ptr %i.bn, align 16, !tbaa !39
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store i64 %.0104.lcssa, ptr %i.bo, align 8, !tbaa !40
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  store i64 %i.n, ptr %i.bp, align 16, !tbaa !27
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  store i32 %i.o, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !35
  %i.bq = add nuw i32 %i.bl, 1                    ; 2 uses
  store i32 %i.bq, ptr @speedindex, align 4, !tbaa !35
  %i.br = icmp ugt i32 %i.bl, 8
  br i1 %i.br, label %.thread, label %bb.v

.thread:                                          ; preds = %bb.u
  store i1 true, ptr @indexwrapped, align 1
  store i32 0, ptr @speedindex, align 4, !tbaa !35
  br label %bb.w

bb.v:                                             ; preds = %bb.u
  %.b76.pr = load i1, ptr @indexwrapped, align 1
  br i1 %.b76.pr, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.thread, %bb.v
  %i.bs = phi i32 [ 0, %.thread ], [ %i.bq, %bb.v ]
  %i.bt = zext nneg i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [32 x i8], ptr @speedstore, i64 %i.bt ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.bw = load i64, ptr %i.bv, align 16
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %i.by = load i32, ptr %i.bx, align 8
  %i.bz = call i64 @curlx_timediff_ms(i64 %i.n, i32 %i.o, i64 %i.bw, i32 %i.by) #6
  %i.ca = load i32, ptr @speedindex, align 4, !tbaa !35
  %i.cb = zext i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw [32 x i8], ptr @speedstore, i64 %i.cb ; 2 uses
  %3 = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %4 = load i64, ptr %3, align 8, !tbaa !40
  %5 = load i64, ptr %i.cc, align 16, !tbaa !39
  %6 = sub nsw i64 %.0105.lcssa, %5
  %i.cd = sub nsw i64 %.0104.lcssa, %4
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.ce = load i64, ptr %1, align 8
  %i.cf = load i32, ptr %i.v, align 8
  %i.cg = call i64 @curlx_timediff_ms(i64 %i.n, i32 %i.o, i64 %i.ce, i32 %i.cf) #6
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.061 = phi i64 [ %i.bz, %bb.w ], [ %i.cg, %bb.x ]
  %.060 = phi i64 [ %6, %bb.w ], [ %.0105.lcssa, %bb.x ]
  %.059 = phi i64 [ %i.cd, %bb.w ], [ %.0104.lcssa, %bb.x ]
  %spec.select = call i64 @llvm.umax.i64(i64 %.061, i64 1)
  %i.ch = sitofp i64 %.060 to double
  %i.ci = sitofp i64 %spec.select to double
  %i.cj = fdiv double %i.ci, 1.000000e+03
  %7 = sitofp i64 %.059 to double
  %8 = insertelement <2 x double> poison, double %i.ch, i64 0
  %9 = insertelement <2 x double> %8, double %7, i64 1
  %10 = insertelement <2 x double> poison, double %i.cj, i64 0
  %11 = shufflevector <2 x double> %10, <2 x double> poison, <2 x i32> zeroinitializer
  %12 = fdiv <2 x double> %9, %11                 ; 2 uses
  %13 = extractelement <2 x double> %12, i64 0
  %14 = fptosi double %13 to i64
  %15 = extractelement <2 x double> %12, i64 1
  %i.ck = fptosi double %15 to i64
  %i.cl = call i64 @llvm.smax.i64(i64 %14, i64 %i.ck) ; 4 uses
  %i.cm = icmp ne i64 %i.cl, 0
  %or.cond7 = select i1 %.064.lcssa, i1 %i.cm, i1 false
  br i1 %or.cond7, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cn = load i64, ptr @all_dltotal, align 8, !tbaa !27 ; 2 uses
  %i.co = sdiv i64 %i.cn, %i.cl
  %i.cp = sub nsw i64 %i.cn, %.0105.lcssa
  %i.cq = sdiv i64 %i.cp, %i.cl
  call void @timebuf(ptr noundef nonnull %i.a, i64 noundef 9, i64 noundef %i.cq)
  call void @timebuf(ptr noundef nonnull %i.b, i64 noundef 9, i64 noundef %i.co)
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  call void @curlx_strcopy(ptr noundef nonnull %i.a, i64 noundef 9, ptr noundef nonnull @.str.3, i64 noundef 8) #6
  call void @curlx_strcopy(ptr noundef nonnull %i.b, i64 noundef 9, ptr noundef nonnull @.str.3, i64 noundef 8) #6
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  call void @timebuf(ptr noundef nonnull %i.c, i64 noundef 9, i64 noundef %i.y)
  %i.cr = call i32 @curl_multi_get_offt(ptr noundef %0, i32 noundef 5, ptr noundef nonnull %i.g) #6 ; 0 uses
  %i.cs = call i32 @curl_multi_get_offt(ptr noundef %0, i32 noundef 2, ptr noundef nonnull %i.h) #6 ; 0 uses
  %i.ct = load ptr, ptr @tool_stderr, align 8, !tbaa !34
  %i.cu = call ptr @max5data(i64 noundef %.0105.lcssa, ptr noundef nonnull %i.d, i64 noundef 6) ; 0 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.d, i64 6 ; 2 uses
  %i.cw = call ptr @max5data(i64 noundef %.0104.lcssa, ptr noundef nonnull %i.cv, i64 noundef 6) ; 0 uses
  %i.cx = load i64, ptr %i.g, align 8, !tbaa !27
  %i.cy = load i64, ptr %i.h, align 8, !tbaa !27
  %i.cz = getelementptr inbounds nuw i8, ptr %i.d, i64 12 ; 2 uses
  %i.da = call ptr @max5data(i64 noundef %i.cl, ptr noundef nonnull %i.cz, i64 noundef 6) ; 0 uses
  %i.db = select i1 %2, ptr @.str.12, ptr @.str.13
  %i.dc = call i32 (ptr, ptr, ...) @curl_mfprintf(ptr noundef %i.ct, ptr noundef nonnull @.str.11, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.d, ptr noundef nonnull %i.cv, i64 noundef %i.cx, i64 noundef %i.cy, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.a, ptr noundef nonnull %i.cz, ptr noundef nonnull %i.db) #6 ; 0 uses
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
  %i.b = load i64, ptr %i.a, align 8, !tbaa !24
  %i.c = load i64, ptr @all_dlalready, align 8, !tbaa !27
  %storemerge.i = tail call i64 @llvm.sadd.sat.i64(i64 %i.c, i64 %i.b)
  store i64 %storemerge.i, ptr @all_dlalready, align 8, !tbaa !27
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.e = load i64, ptr %i.d, align 8, !tbaa !26
  %i.f = load i64, ptr @all_ulalready, align 8, !tbaa !27
  %storemerge.i9 = tail call i64 @llvm.sadd.sat.i64(i64 %i.f, i64 %i.e)
  store i64 %storemerge.i9, ptr @all_ulalready, align 8, !tbaa !27
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 696 ; 3 uses
  %i.h = load i8, ptr %i.g, align 8               ; 3 uses
  %i.i = and i8 %i.h, 1
  %.not = icmp eq i8 %i.i, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.k = load i64, ptr %i.j, align 8, !tbaa !23
  %i.l = load i64, ptr @all_dltotal, align 8, !tbaa !27
  %storemerge.i10 = tail call i64 @llvm.sadd.sat.i64(i64 %i.l, i64 %i.k)
  store i64 %storemerge.i10, ptr @all_dltotal, align 8, !tbaa !27
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
  %i.q = load i64, ptr %i.p, align 8, !tbaa !25
  %i.r = load i64, ptr @all_ultotal, align 8, !tbaa !27
  %storemerge.i11 = tail call i64 @llvm.sadd.sat.i64(i64 %i.r, i64 %i.q)
  store i64 %storemerge.i11, ptr @all_ultotal, align 8, !tbaa !27
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
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 _ZTS12per_transfer", !8, i64 0}
!10 = !{!"p1 _ZTS15OperationConfig", !8, i64 0}
!11 = !{!"p1 _ZTS13curl_certinfo", !8, i64 0}
!12 = !{!"p1 omnipotent char", !8, i64 0}
!13 = !{!"long", !4, i64 0}
!14 = !{!"curltime", !13, i64 0, !5, i64 8}
!15 = !{!"p1 _ZTS8_IO_FILE", !8, i64 0}
!16 = !{!"ProgressData", !5, i64 0, !13, i64 8, !14, i64 16, !5, i64 32, !15, i64 40, !13, i64 48, !5, i64 56, !5, i64 60, !5, i64 64}
!17 = !{!"OutStruct", !12, i64 0, !15, i64 8, !13, i64 16, !13, i64 24, !5, i64 32, !5, i64 32, !5, i64 32, !5, i64 32, !5, i64 32}
!18 = !{!"p1 _ZTS9OutStruct", !8, i64 0}
!19 = !{!"p1 _ZTS10curl_slist", !8, i64 0}
!20 = !{!"_Bool", !4, i64 0}
!21 = !{!"HdrCbData", !10, i64 0, !18, i64 8, !18, i64 16, !18, i64 24, !19, i64 32, !20, i64 40}
!22 = !{!"per_transfer", !4, i64 0, !9, i64 256, !9, i64 264, !10, i64 272, !11, i64 280, !8, i64 288, !12, i64 296, !13, i64 304, !13, i64 312, !14, i64 320, !14, i64 336, !12, i64 352, !13, i64 360, !12, i64 368, !5, i64 376, !16, i64 384, !17, i64 456, !17, i64 496, !17, i64 536, !21, i64 576, !13, i64 624, !13, i64 632, !13, i64 640, !13, i64 648, !13, i64 656, !13, i64 664, !13, i64 672, !13, i64 680, !5, i64 688, !5, i64 692, !5, i64 696, !5, i64 696, !5, i64 696, !5, i64 696, !5, i64 696, !5, i64 696, !5, i64 696, !5, i64 696}
!23 = !{!22, !13, i64 640}
!24 = !{!22, !13, i64 648}
!25 = !{!22, !13, i64 656}
!26 = !{!22, !13, i64 664}
!27 = !{!13, !13, i64 0}
!28 = !{!4, !4, i64 0}
!29 = !{!22, !10, i64 272}
!30 = !{!22, !8, i64 288}
!31 = distinct !{!31, !37}
!32 = !{!"p1 _ZTS12GlobalConfig", !8, i64 0}
!33 = !{!32, !32, i64 0}
!34 = !{!15, !15, i64 0}
!35 = !{!5, !5, i64 0}
!36 = !{!9, !9, i64 0}
!37 = !{!"llvm.loop.mustprogress"}
!38 = !{!"speedcount", !13, i64 0, !13, i64 8, !14, i64 16}
!39 = !{!38, !13, i64 0}
!40 = !{!38, !13, i64 8}
end_hunk_0
