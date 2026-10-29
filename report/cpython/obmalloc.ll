Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/obmalloc?download=true
inline.NumInlined: 1359
inline.NumDeleted: 295
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 45
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@mi_segment_span_free_coalesce:bb.a
  %i.bg = add nuw nsw i64 %.0, %i.bf              ; 2 uses
  br i1 %i.g, label %bb.w, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bh = icmp ult i32 %i.be, 9
  br i1 %i.bh, label %mi_span_queue_for.exit.i37, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bi = add nsw i64 %i.bf, -1                   ; 2 uses
  %i.bj = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bi, i1 true) ; 2 uses
  %i.bk = shl nuw nsw i64 %i.bj, 2
  %i.bl = sub nuw nsw i64 61, %i.bj
  %i.bm = lshr i64 %i.bi, %i.bl
  %i.bn = and i64 %i.bm, 3
  %i.bo = or disjoint i64 %i.bn, %i.bk
  %i.bp = xor i64 %i.bo, 252
  %i.bq = add nsw i64 %i.bp, -4
  br label %mi_span_queue_for.exit.i37

mi_span_queue_for.exit.i37:                       ; preds = %bb.q, %bb.p
  %.1.i.i.i.i38 = phi i64 [ %i.bf, %bb.p ], [ %i.bq, %bb.q ]
  %i.br = getelementptr [24 x i8], ptr %1, i64 %.1.i.i.i.i38 ; 3 uses
  %i.bs = getelementptr i8, ptr %i.ba, i64 64     ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !193 ; 3 uses
  %.not.i.i39 = icmp eq ptr %i.bt, null
  %.phi.trans.insert.i40 = getelementptr i8, ptr %i.ba, i64 56 ; 2 uses
  %.pre.i41 = load ptr, ptr %.phi.trans.insert.i40, align 8, !tbaa !171 ; 4 uses
  br i1 %.not.i.i39, label %mi_span_queue_for.exit._crit_edge.i42, label %bb.r

bb.r:                                             ; preds = %mi_span_queue_for.exit.i37
  %i.bu = getelementptr i8, ptr %i.bt, i64 56
  store ptr %.pre.i41, ptr %i.bu, align 8, !tbaa !171
  br label %mi_span_queue_for.exit._crit_edge.i42

mi_span_queue_for.exit._crit_edge.i42:            ; preds = %bb.r, %mi_span_queue_for.exit.i37
  %i.bv = load ptr, ptr %i.br, align 8, !tbaa !198
  %i.bw = icmp eq ptr %i.ba, %i.bv
  br i1 %i.bw, label %bb.s, label %._crit_edge.i.i43

bb.s:                                             ; preds = %mi_span_queue_for.exit._crit_edge.i42
  store ptr %.pre.i41, ptr %i.br, align 8, !tbaa !198
  br label %._crit_edge.i.i43

._crit_edge.i.i43:                                ; preds = %bb.s, %mi_span_queue_for.exit._crit_edge.i42
  %.not19.i.i44 = icmp eq ptr %.pre.i41, null
  br i1 %.not19.i.i44, label %bb.u, label %bb.t

bb.t:                                             ; preds = %._crit_edge.i.i43
  %i.bx = getelementptr i8, ptr %.pre.i41, i64 64
  store ptr %i.bt, ptr %i.bx, align 8, !tbaa !193
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge.i.i43
  %i.by = getelementptr i8, ptr %i.br, i64 8      ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !199
  %i.ca = icmp eq ptr %i.ba, %i.bz
  br i1 %i.ca, label %bb.v, label %mi_segment_span_remove_from_queue.exit45

bb.v:                                             ; preds = %bb.u
  %i.cb = load ptr, ptr %i.bs, align 8, !tbaa !193
  store ptr %i.cb, ptr %i.by, align 8, !tbaa !199
  br label %mi_segment_span_remove_from_queue.exit45

mi_segment_span_remove_from_queue.exit45:         ; preds = %bb.u, %bb.v
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.phi.trans.insert.i40, i8 0, i64 16, i1 false)
  store i32 1, ptr %i.bb, align 4, !tbaa !65
  br label %bb.w

bb.w:                                             ; preds = %bb.n, %mi_segment_span_remove_from_queue.exit45, %bb.o, %bb.m
  %.133 = phi ptr [ %0, %bb.m ], [ %0, %bb.n ], [ %i.ba, %mi_segment_span_remove_from_queue.exit45 ], [ %i.ba, %bb.o ] ; 2 uses
  %.2 = phi i64 [ %.0, %bb.m ], [ %.0, %bb.n ], [ %i.bg, %mi_segment_span_remove_from_queue.exit45 ], [ %i.bg, %bb.o ]
  %i.cc = ptrtoint ptr %.133 to i64               ; 2 uses
  %i.cd = add i64 %i.cc, -1
  %i.ce = and i64 %i.cd, -33554432
  %.neg3.i = add i64 %i.cc, -264
  %i.cf = sub i64 %.neg3.i, %i.ce
  %i.cg = sdiv exact i64 %i.cf, 80
  tail call fastcc void @mi_segment_span_free(ptr noundef nonnull %i.d, i64 noundef %i.cg, i64 noundef %.2, i1 noundef zeroext true, ptr noundef %1)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.b
  %.031 = phi ptr [ %0, %bb.b ], [ %.133, %bb.w ]
  ret ptr %.031
}

; Function Attrs: nounwind uwtable
define internal fastcc void @mi_segment_span_free(ptr noundef %0, i64 noundef %1, i64 noundef %2, i1 noundef zeroext %3, ptr nofree noundef captures(address) %4) unnamed_addr #2 {
bb.a:
  %5 = alloca %struct.timespec, align 8           ; 5 uses
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %6 = alloca %struct.mi_commit_mask_s, align 16  ; 9 uses
  %i.c = getelementptr i8, ptr %0, i64 240
  %i.d = load i32, ptr %i.c, align 8, !tbaa !196
  %i.e = icmp eq i32 %i.d, 1
  br i1 %i.e, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 256
  %i.g = load atomic i64, ptr %i.f seq_cst, align 8, !tbaa !201
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = icmp ult i64 %2, 9
  br i1 %i.i, label %mi_span_queue_for.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = add i64 %2, -1                           ; 2 uses
  %i.k = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.j, i1 true) ; 2 uses
  %i.l = shl nuw nsw i64 %i.k, 2
  %i.m = sub nuw nsw i64 61, %i.k
  %i.n = lshr i64 %i.j, %i.m
  %i.o = and i64 %i.n, 3
  %i.p = or disjoint i64 %i.o, %i.l
  %i.q = xor i64 %i.p, 252
  %i.r = add nsw i64 %i.q, -4
  br label %mi_span_queue_for.exit

mi_span_queue_for.exit:                           ; preds = %bb.c, %bb.d
  %.1.i.i.i = phi i64 [ %2, %bb.c ], [ %i.r, %bb.d ]
  %i.s = getelementptr [24 x i8], ptr %4, i64 %.1.i.i.i
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.b, %mi_span_queue_for.exit
  %i.t = phi ptr [ %i.s, %mi_span_queue_for.exit ], [ null, %bb.b ], [ null, %bb.a ] ; 4 uses
  %spec.store.select = tail call i64 @llvm.umax.i64(i64 %2, i64 1) ; 3 uses
  %i.u = getelementptr i8, ptr %0, i64 264
  %i.v = getelementptr [80 x i8], ptr %i.u, i64 %1 ; 10 uses
  %i.w = trunc i64 %spec.store.select to i32      ; 2 uses
  store i32 %i.w, ptr %i.v, align 8, !tbaa !93
  %i.x = getelementptr i8, ptr %i.v, i64 4
  store i32 0, ptr %i.x, align 4, !tbaa !100
  %i.y = icmp ugt i64 %2, 1
  br i1 %i.y, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr [80 x i8], ptr %i.v, i64 %spec.store.select ; 3 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 -80
  store i32 0, ptr %i.aa, align 8, !tbaa !93
  %i.ab = mul i32 %i.w, 80
  %i.ac = add i32 %i.ab, -80
  %i.ad = getelementptr i8, ptr %i.z, i64 -76
  store i32 %i.ac, ptr %i.ad, align 4, !tbaa !100
  %i.ae = getelementptr i8, ptr %i.z, i64 -52
  store i32 0, ptr %i.ae, align 4, !tbaa !65
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  br i1 %3, label %bb.h, label %mi_segment_schedule_purge.exit

bb.h:                                             ; preds = %bb.g
  %i.af = ptrtoint ptr %i.v to i64                ; 2 uses
  %i.ag = add i64 %i.af, -1
  %i.ah = and i64 %i.ag, -33554432
  %i.ai = inttoptr i64 %i.ah to ptr               ; 2 uses
  %i.aj = getelementptr i8, ptr %i.ai, i64 264
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = sub i64 %i.af, %i.ak
  %i.am = sdiv exact i64 %i.al, 80
  %i.an = shl i64 %i.am, 16
  %i.ao = getelementptr i8, ptr %i.ai, i64 %i.an  ; 2 uses
  %i.ap = shl i64 %spec.store.select, 16          ; 2 uses
  %i.aq = getelementptr i8, ptr %4, i64 896
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !172 ; 2 uses
  %i.as = getelementptr i8, ptr %0, i64 25
  %i.at = load i8, ptr %i.as, align 1, !tbaa !205, !range !86, !noundef !87
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %bb.i, label %mi_segment_schedule_purge.exit

bb.i:                                             ; preds = %bb.h
  %i.av = load i32, ptr getelementptr inbounds nuw (i8, ptr @options, i64 488), align 8, !tbaa !133
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %bb.j, label %mi_option_get.exit.i, !prof !61

bb.j:                                             ; preds = %bb.i
  tail call fastcc void @mi_option_init(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @options, i64 480)), !inline_history !134
  br label %mi_option_get.exit.i

mi_option_get.exit.i:                             ; preds = %bb.j, %bb.i
  %i.ax = load i64, ptr getelementptr inbounds nuw (i8, ptr @options, i64 480), align 16, !tbaa !135
  %i.ay = icmp eq i64 %i.ax, 0
  br i1 %i.ay, label %bb.k, label %bb.l

bb.k:                                             ; preds = %mi_option_get.exit.i
  tail call fastcc void @mi_segment_purge(ptr noundef nonnull %0, ptr noundef %i.ao, i64 noundef %i.ap, ptr noundef %i.ar)
  br label %mi_segment_schedule_purge.exit

bb.l:                                             ; preds = %mi_option_get.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #52
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #52
  store i64 0, ptr %i.b, align 8, !tbaa !128
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #52
  call fastcc void @mi_segment_commit_mask(ptr noundef nonnull %0, i1 noundef zeroext true, ptr noundef %i.ao, i64 noundef %i.ap, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %6)
  %i.az = load <2 x i64>, ptr %6, align 16        ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bb = load <2 x i64>, ptr %i.ba, align 16     ; 2 uses
  %i.bc = shufflevector <2 x i64> %i.az, <2 x i64> %i.bb, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.fr = freeze <4 x i64> %i.bc
  %i.bd = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.be = load <2 x i64>, ptr %i.bd, align 16
  %.fr34 = freeze <2 x i64> %i.be                 ; 3 uses
  %i.bf = extractelement <2 x i64> %.fr34, i64 0
  %7 = extractelement <2 x i64> %.fr34, i64 1
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.bh = load i64, ptr %i.bg, align 16           ; 2 uses
  %.not.6.i.i = icmp eq i64 %i.bh, 0
  %i.bi = icmp ne <4 x i64> %.fr, zeroinitializer
  %i.bj = bitcast <4 x i1> %i.bi to i4
  %i.bk = icmp eq i4 %i.bj, 0
  %8 = or i64 %7, %i.bf
  %9 = icmp eq i64 %8, 0
  %10 = and i1 %i.bk, %9
  %op.rdx32 = select i1 %10, i1 %.not.6.i.i, i1 false
  br i1 %op.rdx32, label %bb.m, label %mi_commit_mask_is_empty.exit.i

bb.m:                                             ; preds = %bb.l
  %i.bl = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !128
  %.not.7.i.i = icmp eq i64 %i.bm, 0
  br label %mi_commit_mask_is_empty.exit.i

mi_commit_mask_is_empty.exit.i:                   ; preds = %bb.m, %bb.l
  %.not.lcssa.i.i = phi i1 [ false, %bb.l ], [ %.not.7.i.i, %bb.m ]
  %i.bn = load i64, ptr %i.b, align 8
  %i.bo = icmp eq i64 %i.bn, 0
  %or.cond.i = select i1 %.not.lcssa.i.i, i1 true, i1 %i.bo
  br i1 %or.cond.i, label %bb.y, label %bb.n

bb.n:                                             ; preds = %mi_commit_mask_is_empty.exit.i
  %i.bp = getelementptr i8, ptr %0, i64 112
  %i.bq = getelementptr i8, ptr %0, i64 128
  %i.br = getelementptr i8, ptr %0, i64 144
  %i.bs = getelementptr i8, ptr %0, i64 160
  %i.bt = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !128
  %i.bv = getelementptr i8, ptr %0, i64 48        ; 2 uses
  %i.bw = load <2 x i64>, ptr %i.bp, align 8, !tbaa !128
  %i.bx = and <2 x i64> %i.bw, %i.az
  %i.by = load <2 x i64>, ptr %i.bv, align 8, !tbaa !128
  %i.bz = or <2 x i64> %i.by, %i.bx
  store <2 x i64> %i.bz, ptr %i.bv, align 8, !tbaa !128
  %i.ca = getelementptr i8, ptr %0, i64 64        ; 2 uses
  %i.cb = load <2 x i64>, ptr %i.bq, align 8, !tbaa !128
  %i.cc = and <2 x i64> %i.cb, %i.bb
  %i.cd = load <2 x i64>, ptr %i.ca, align 8, !tbaa !128
  %i.ce = or <2 x i64> %i.cd, %i.cc
  store <2 x i64> %i.ce, ptr %i.ca, align 8, !tbaa !128
  %i.cf = getelementptr i8, ptr %0, i64 80        ; 2 uses
  %i.cg = load <2 x i64>, ptr %i.br, align 8, !tbaa !128
  %i.ch = and <2 x i64> %i.cg, %.fr34
  %i.ci = load <2 x i64>, ptr %i.cf, align 8, !tbaa !128
  %i.cj = or <2 x i64> %i.ci, %i.ch
  store <2 x i64> %i.cj, ptr %i.cf, align 8, !tbaa !128
  %i.ck = getelementptr i8, ptr %0, i64 96        ; 2 uses
  %i.cl = load <2 x i64>, ptr %i.bs, align 8, !tbaa !128
  %i.cm = insertelement <2 x i64> poison, i64 %i.bh, i64 0
  %i.cn = insertelement <2 x i64> %i.cm, i64 %i.bu, i64 1
  %i.co = and <2 x i64> %i.cl, %i.cn
  %i.cp = load <2 x i64>, ptr %i.ck, align 8, !tbaa !128
  %i.cq = or <2 x i64> %i.cp, %i.co
  store <2 x i64> %i.cq, ptr %i.ck, align 8, !tbaa !128
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #52
  %i.cr = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %5) #52 ; 0 uses
  %i.cs = load i64, ptr %5, align 8, !tbaa !153
  %i.ct = mul i64 %i.cs, 1000
  %i.cu = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !154
  %i.cw = sdiv i64 %i.cv, 1000000
  %i.cx = add i64 %i.cw, %i.ct                    ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #52
  %i.cy = getelementptr i8, ptr %0, i64 40        ; 5 uses
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !206 ; 4 uses
  %i.da = icmp eq i64 %i.cz, 0
  br i1 %i.da, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.db = load i32, ptr getelementptr inbounds nuw (i8, ptr @options, i64 488), align 8, !tbaa !133
  %i.dc = icmp eq i32 %i.db, 0
  br i1 %i.dc, label %bb.p, label %mi_option_get.exit24.i, !prof !61

bb.p:                                             ; preds = %bb.o
  call fastcc void @mi_option_init(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @options, i64 480)), !inline_history !134
  br label %mi_option_get.exit24.i

mi_option_get.exit24.i:                           ; preds = %bb.p, %bb.o
  %i.dd = load i64, ptr getelementptr inbounds nuw (i8, ptr @options, i64 480), align 16, !tbaa !135
  %i.de = add i64 %i.dd, %i.cx
  store i64 %i.de, ptr %i.cy, align 8, !tbaa !206
  br label %bb.y

bb.q:                                             ; preds = %bb.n
  %.not.i = icmp sgt i64 %i.cz, %i.cx
  %i.df = load i32, ptr getelementptr inbounds nuw (i8, ptr @options, i64 808), align 8, !tbaa !133
  %i.dg = icmp eq i32 %i.df, 0                    ; 2 uses
  br i1 %.not.i, label %bb.w, label %bb.r

bb.r:                                             ; preds = %bb.q
  br i1 %i.dg, label %bb.s, label %mi_option_get.exit25.i, !prof !61

bb.s:                                             ; preds = %bb.r
  call fastcc void @mi_option_init(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @options, i64 800)), !inline_history !134
  br label %mi_option_get.exit25.i

mi_option_get.exit25.i:                           ; preds = %bb.s, %bb.r
  %i.dh = load i64, ptr getelementptr inbounds nuw (i8, ptr @options, i64 800), align 16, !tbaa !135 ; 2 uses
  %i.di = add i64 %i.dh, %i.cz
  %.not23.i = icmp sgt i64 %i.di, %i.cx
  br i1 %.not23.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %mi_option_get.exit25.i
  call fastcc void @mi_segment_try_purge(ptr noundef nonnull %0, i1 noundef zeroext true, ptr noundef %i.ar)
  br label %bb.y

bb.u:                                             ; preds = %mi_option_get.exit25.i
  %i.dj = load i32, ptr getelementptr inbounds nuw (i8, ptr @options, i64 808), align 8, !tbaa !133
  %i.dk = icmp eq i32 %i.dj, 0
  br i1 %i.dk, label %bb.v, label %mi_option_get.exit26.i, !prof !61

bb.v:                                             ; preds = %bb.u
  call fastcc void @mi_option_init(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @options, i64 800)), !inline_history !134
  %.pre.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @options, i64 800), align 16, !tbaa !135
  br label %mi_option_get.exit26.i

mi_option_get.exit26.i:                           ; preds = %bb.v, %bb.u
  %i.dl = phi i64 [ %i.dh, %bb.u ], [ %.pre.i, %bb.v ]
  %i.dm = add i64 %i.dl, %i.cx
  store i64 %i.dm, ptr %i.cy, align 8, !tbaa !206
  br label %bb.y

bb.w:                                             ; preds = %bb.q
  br i1 %i.dg, label %bb.x, label %mi_option_get.exit27.i, !prof !61

bb.x:                                             ; preds = %bb.w
  call fastcc void @mi_option_init(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @options, i64 800)), !inline_history !134
  %.pre40.i = load i64, ptr %i.cy, align 8, !tbaa !206
  br label %mi_option_get.exit27.i

mi_option_get.exit27.i:                           ; preds = %bb.x, %bb.w
  %i.dn = phi i64 [ %i.cz, %bb.w ], [ %.pre40.i, %bb.x ]
  %i.do = load i64, ptr getelementptr inbounds nuw (i8, ptr @options, i64 800), align 16, !tbaa !135
  %i.dp = add i64 %i.do, %i.dn
  store i64 %i.dp, ptr %i.cy, align 8, !tbaa !206
  br label %bb.y

bb.y:                                             ; preds = %mi_option_get.exit27.i, %mi_option_get.exit26.i, %bb.t, %mi_option_get.exit24.i, %mi_commit_mask_is_empty.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #52
  br label %mi_segment_schedule_purge.exit

mi_segment_schedule_purge.exit:                   ; preds = %bb.y, %bb.k, %bb.h, %bb.g
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %mi_span_queue_push.exit, label %bb.z

bb.z:                                             ; preds = %mi_segment_schedule_purge.exit
  %i.dq = getelementptr i8, ptr %i.v, i64 64
  store ptr null, ptr %i.dq, align 8, !tbaa !193
  %i.dr = load ptr, ptr %i.t, align 8, !tbaa !198 ; 3 uses
  %i.ds = getelementptr i8, ptr %i.v, i64 56
  store ptr %i.dr, ptr %i.ds, align 8, !tbaa !171
  store ptr %i.v, ptr %i.t, align 8, !tbaa !198
  %.not.i26 = icmp eq ptr %i.dr, null
  br i1 %.not.i26, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dt = getelementptr i8, ptr %i.dr, i64 64
  store ptr %i.v, ptr %i.dt, align 8, !tbaa !193
  br label %mi_span_queue_push.exit

bb.ab:                                            ; preds = %bb.z
  %i.du = getelementptr i8, ptr %i.t, i64 8
  store ptr %i.v, ptr %i.du, align 8, !tbaa !199
  br label %mi_span_queue_push.exit

mi_span_queue_push.exit:                          ; preds = %mi_segment_schedule_purge.exit, %bb.ab, %bb.aa
  %i.dv = getelementptr i8, ptr %i.v, i64 28
  store i32 0, ptr %i.dv, align 4, !tbaa !65
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @mi_segment_purge(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef captures(address) %3) unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %4 = alloca %struct.mi_commit_mask_s, align 16  ; 11 uses
  %5 = alloca %struct.mi_commit_mask_s, align 16  ; 8 uses
  %i.c = getelementptr i8, ptr %0, i64 25
  %i.d = load i8, ptr %i.c, align 1, !tbaa !205, !range !86, !noundef !87
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.s

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #52
  store ptr null, ptr %i.a, align 8, !tbaa !130
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #52
  store i64 0, ptr %i.b, align 8, !tbaa !128
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #52
  call fastcc void @mi_segment_commit_mask(ptr noundef nonnull %0, i1 noundef zeroext true, ptr noundef %1, i64 noundef %2, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %4)
  %i.f = load <2 x i64>, ptr %4, align 16         ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.h = load <2 x i64>, ptr %i.g, align 16       ; 6 uses
  %i.i = shufflevector <2 x i64> %i.f, <2 x i64> %i.h, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.fr = freeze <4 x i64> %i.i
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.k = load <2 x i64>, ptr %i.j, align 16
  %.fr4 = freeze <2 x i64> %i.k                   ; 5 uses
  %i.l = extractelement <2 x i64> %.fr4, i64 0    ; 2 uses
  %6 = extractelement <2 x i64> %.fr4, i64 1      ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.n = load i64, ptr %i.m, align 16             ; 5 uses
  %.not.6.i = icmp eq i64 %i.n, 0
  %i.o = icmp ne <4 x i64> %.fr, zeroinitializer
  %i.p = bitcast <4 x i1> %i.o to i4
  %i.q = icmp eq i4 %i.p, 0
  %7 = or i64 %6, %i.l
  %8 = icmp eq i64 %7, 0
  %9 = and i1 %i.q, %8
  %op.rdx2 = select i1 %9, i1 %.not.6.i, i1 false
  br i1 %op.rdx2, label %bb.c, label %mi_commit_mask_is_empty.exit

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.s = load i64, ptr %i.r, align 8, !tbaa !128
  %.not.7.i = icmp eq i64 %i.s, 0
  br label %mi_commit_mask_is_empty.exit

mi_commit_mask_is_empty.exit:                     ; preds = %bb.b, %bb.c
  %.not.lcssa.i = phi i1 [ false, %bb.b ], [ %.not.7.i, %bb.c ]
  %i.t = load i64, ptr %i.b, align 8              ; 4 uses
  %i.u = icmp eq i64 %i.t, 0
  %or.cond = select i1 %.not.lcssa.i, i1 true, i1 %i.u
  br i1 %or.cond, label %bb.r, label %bb.d

bb.d:                                             ; preds = %mi_commit_mask_is_empty.exit
  %i.v = getelementptr i8, ptr %0, i64 112        ; 4 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !128
  %i.x = extractelement <2 x i64> %i.f, i64 0
  %i.y = and i64 %i.w, %i.x
  %.not.not.i = icmp eq i64 %i.y, 0
  br i1 %.not.not.i, label %bb.e, label %mi_commit_mask_any_set.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr i8, ptr %0, i64 120
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !128
  %i.ab = extractelement <2 x i64> %i.f, i64 1
  %i.ac = and i64 %i.ab, %i.aa
  %.not.1.not.i = icmp eq i64 %i.ac, 0
  br i1 %.not.1.not.i, label %bb.f, label %mi_commit_mask_any_set.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr i8, ptr %0, i64 128
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !128
  %i.af = extractelement <2 x i64> %i.h, i64 0
  %i.ag = and i64 %i.af, %i.ae
  %.not.2.not.i = icmp eq i64 %i.ag, 0
  br i1 %.not.2.not.i, label %bb.g, label %mi_commit_mask_any_set.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.ah = getelementptr i8, ptr %0, i64 136
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !128
  %i.aj = extractelement <2 x i64> %i.h, i64 1
  %i.ak = and i64 %i.aj, %i.ai
  %.not.3.not.i = icmp eq i64 %i.ak, 0
  br i1 %.not.3.not.i, label %bb.h, label %mi_commit_mask_any_set.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.al = getelementptr i8, ptr %0, i64 144
  %i.am = load i64, ptr %i.al, align 8, !tbaa !128
  %i.an = and i64 %i.l, %i.am
  %.not.4.not.i = icmp eq i64 %i.an, 0
  br i1 %.not.4.not.i, label %bb.i, label %mi_commit_mask_any_set.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.ao = getelementptr i8, ptr %0, i64 152
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !128
  %i.aq = and i64 %6, %i.ap
  %.not.5.not.i = icmp eq i64 %i.aq, 0
  br i1 %.not.5.not.i, label %bb.j, label %mi_commit_mask_any_set.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.ar = getelementptr i8, ptr %0, i64 160
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !128
  %i.at = and i64 %i.n, %i.as
  %.not.6.not.i = icmp eq i64 %i.at, 0
  br i1 %.not.6.not.i, label %mi_commit_mask_any_set.exit, label %mi_commit_mask_any_set.exit.thread

mi_commit_mask_any_set.exit:                      ; preds = %bb.j
  %i.au = getelementptr i8, ptr %0, i64 168
  %i.av = load i64, ptr %i.au, align 8, !tbaa !128
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !128 ; 2 uses
  %i.ay = and i64 %i.ax, %i.av
  %.not.7.not.i.not = icmp eq i64 %i.ay, 0
  br i1 %.not.7.not.i.not, label %bb.q, label %mi_commit_mask_any_set.exit.thread

mi_commit_mask_any_set.exit.thread:               ; preds = %bb.j, %bb.g, %bb.i, %bb.f, %bb.e, %bb.d, %bb.h, %mi_commit_mask_any_set.exit
  %i.az = load ptr, ptr %i.a, align 8, !tbaa !130
  %i.ba = tail call noundef zeroext i1 @_mi_os_purge_ex(ptr noundef %i.az, i64 noundef %i.t, i1 noundef zeroext true, ptr noundef %3)
  br i1 %i.ba, label %bb.k, label %mi_commit_mask_any_set.exit.thread._crit_edge

mi_commit_mask_any_set.exit.thread._crit_edge:    ; preds = %mi_commit_mask_any_set.exit.thread
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %4, i64 56
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !128
  br label %bb.q

bb.k:                                             ; preds = %mi_commit_mask_any_set.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #52
  %i.bb = load <2 x i64>, ptr %i.v, align 8, !tbaa !128
  %i.bc = and <2 x i64> %i.bb, %i.f
  store <2 x i64> %i.bc, ptr %5, align 16, !tbaa !128
  %i.bd = getelementptr i8, ptr %0, i64 128       ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bf = load <2 x i64>, ptr %i.bd, align 8, !tbaa !128
  %i.bg = and <2 x i64> %i.h, %i.bf
  store <2 x i64> %i.bg, ptr %i.be, align 16, !tbaa !128
  %i.bh = getelementptr i8, ptr %0, i64 144       ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.bj = load <2 x i64>, ptr %i.bh, align 8, !tbaa !128
  %i.bk = and <2 x i64> %.fr4, %i.bj
  store <2 x i64> %i.bk, ptr %i.bi, align 16, !tbaa !128
  %i.bl = getelementptr i8, ptr %0, i64 160       ; 3 uses
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !128
  %i.bn = and i64 %i.n, %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %5, i64 48
  store i64 %i.bn, ptr %i.bo, align 16, !tbaa !128
  %i.bp = getelementptr i8, ptr %0, i64 168
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !128
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !128 ; 3 uses
  %i.bt = and i64 %i.bs, %i.bq
  %i.bu = getelementptr inbounds nuw i8, ptr %5, i64 56
  store i64 %i.bt, ptr %i.bu, align 8, !tbaa !128
  %i.bv = call i64 @_mi_commit_mask_committed_size(ptr noundef nonnull %5, i64 noundef 33554432) ; 2 uses
  %i.bw = sub i64 %i.t, %i.bv                     ; 5 uses
  %i.bx = icmp eq i64 %i.t, %i.bv
  br i1 %i.bx, label %_mi_stat_increase.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.by = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 120), i64 %i.bw monotonic, align 8
  %i.bz = add i64 %i.by, %i.bw                    ; 2 uses
  %i.ca = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 112) monotonic, align 16
  br label %bb.m

bb.m:                                             ; preds = %bb.n, %bb.l
  %.0.i.i.i = phi i64 [ %i.ca, %bb.l ], [ %i.ce, %bb.n ] ; 2 uses
  %i.cb = icmp slt i64 %.0.i.i.i, %i.bz
  br i1 %i.cb, label %bb.n, label %mi_atomic_maxi64_relaxed.exit.i.i

bb.n:                                             ; preds = %bb.m
  %i.cc = cmpxchg weak ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 112), i64 %.0.i.i.i, i64 %i.bz release monotonic, align 8 ; 2 uses
  %i.cd = extractvalue { i64, i1 } %i.cc, 1
  %i.ce = extractvalue { i64, i1 } %i.cc, 0
  br i1 %i.cd, label %mi_atomic_maxi64_relaxed.exit.i.i, label %bb.m, !llvm.loop !10

mi_atomic_maxi64_relaxed.exit.i.i:                ; preds = %bb.n, %bb.m
  %i.cf = icmp sgt i64 %i.bw, 0
  br i1 %i.cf, label %bb.o, label %bb.p

bb.o:                                             ; preds = %mi_atomic_maxi64_relaxed.exit.i.i
  %i.cg = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 96), i64 %i.bw monotonic, align 8 ; 0 uses
  br label %_mi_stat_increase.exit

bb.p:                                             ; preds = %mi_atomic_maxi64_relaxed.exit.i.i
  %i.ch = atomicrmw sub ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 104), i64 %i.bw monotonic, align 8 ; 0 uses
  br label %_mi_stat_increase.exit

_mi_stat_increase.exit:                           ; preds = %bb.k, %bb.o, %bb.p
  %i.ci = xor <2 x i64> %i.f, splat (i64 -1)
  %i.cj = load <2 x i64>, ptr %i.v, align 8, !tbaa !128
  %i.ck = and <2 x i64> %i.cj, %i.ci
  store <2 x i64> %i.ck, ptr %i.v, align 8, !tbaa !128
  %i.cl = xor <2 x i64> %i.h, splat (i64 -1)
  %i.cm = load <2 x i64>, ptr %i.bd, align 8, !tbaa !128
  %i.cn = and <2 x i64> %i.cm, %i.cl
  store <2 x i64> %i.cn, ptr %i.bd, align 8, !tbaa !128
  %i.co = xor <2 x i64> %.fr4, splat (i64 -1)
  %i.cp = load <2 x i64>, ptr %i.bh, align 8, !tbaa !128
  %i.cq = and <2 x i64> %i.cp, %i.co
  store <2 x i64> %i.cq, ptr %i.bh, align 8, !tbaa !128
  %i.cr = insertelement <2 x i64> poison, i64 %i.n, i64 0
  %i.cs = insertelement <2 x i64> %i.cr, i64 %i.bs, i64 1
  %i.ct = xor <2 x i64> %i.cs, splat (i64 -1)
  %i.cu = load <2 x i64>, ptr %i.bl, align 8, !tbaa !128
  %i.cv = and <2 x i64> %i.cu, %i.ct
  store <2 x i64> %i.cv, ptr %i.bl, align 8, !tbaa !128
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #52
  br label %bb.q

bb.q:                                             ; preds = %mi_commit_mask_any_set.exit.thread._crit_edge, %_mi_stat_increase.exit, %mi_commit_mask_any_set.exit
  %i.cw = phi i64 [ %.pre, %mi_commit_mask_any_set.exit.thread._crit_edge ], [ %i.bs, %_mi_stat_increase.exit ], [ %i.ax, %mi_commit_mask_any_set.exit ]
  %i.cx = getelementptr i8, ptr %0, i64 48        ; 2 uses
  %i.cy = xor <2 x i64> %i.f, splat (i64 -1)
  %i.cz = load <2 x i64>, ptr %i.cx, align 8, !tbaa !128
  %i.da = and <2 x i64> %i.cz, %i.cy
  store <2 x i64> %i.da, ptr %i.cx, align 8, !tbaa !128
  %i.db = xor <2 x i64> %i.h, splat (i64 -1)
  %i.dc = getelementptr i8, ptr %0, i64 64        ; 2 uses
  %i.dd = load <2 x i64>, ptr %i.dc, align 8, !tbaa !128
  %i.de = and <2 x i64> %i.dd, %i.db
  store <2 x i64> %i.de, ptr %i.dc, align 8, !tbaa !128
  %i.df = xor <2 x i64> %.fr4, splat (i64 -1)
  %i.dg = getelementptr i8, ptr %0, i64 80        ; 2 uses
  %i.dh = load <2 x i64>, ptr %i.dg, align 8, !tbaa !128
  %i.di = and <2 x i64> %i.dh, %i.df
  store <2 x i64> %i.di, ptr %i.dg, align 8, !tbaa !128
  %i.dj = insertelement <2 x i64> poison, i64 %i.n, i64 0
  %i.dk = insertelement <2 x i64> %i.dj, i64 %i.cw, i64 1
  %i.dl = xor <2 x i64> %i.dk, splat (i64 -1)
  %i.dm = getelementptr i8, ptr %0, i64 96        ; 2 uses
  %i.dn = load <2 x i64>, ptr %i.dm, align 8, !tbaa !128
  %i.do = and <2 x i64> %i.dn, %i.dl
  store <2 x i64> %i.do, ptr %i.dm, align 8, !tbaa !128
  br label %bb.r

bb.r:                                             ; preds = %mi_commit_mask_is_empty.exit, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #52
  br label %bb.s

bb.s:                                             ; preds = %bb.a, %bb.r
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @mi_segment_commit_mask(ptr noundef %0, i1 noundef zeroext %1, ptr noundef %2, i64 noundef %3, ptr nofree noundef nonnull writeonly captures(none) %4, ptr nofree noundef nonnull writeonly captures(none) %5, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 64)) %6) unnamed_addr #2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %6, i8 0, i64 64, i1 false), !tbaa !128
  %i.a = add i64 %3, -33554433
  %or.cond = icmp ult i64 %i.a, -33554432
  br i1 %or.cond, label %mi_commit_mask_create.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 240
  %i.c = load i32, ptr %i.b, align 8, !tbaa !196
  %i.d = icmp eq i32 %i.c, 1
  br i1 %i.d, label %mi_commit_mask_create.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr i8, ptr %0, i64 224
  %.val59 = load i64, ptr %i.e, align 8, !tbaa !124
  %i.f = shl i64 %.val59, 16                      ; 2 uses
  %i.g = getelementptr i8, ptr %0, i64 %i.f
  %.not = icmp ult ptr %2, %i.g
  br i1 %.not, label %bb.d, label %mi_commit_mask_create.exit

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr i8, ptr %0, i64 232
  %.val = load i64, ptr %i.h, align 8, !tbaa !200
  %i.i = shl i64 %.val, 16                        ; 2 uses
  %i.j = ptrtoint ptr %2 to i64
  %i.k = ptrtoint ptr %0 to i64
  %i.l = sub i64 %i.j, %i.k                       ; 4 uses
  %i.m = add i64 %i.l, 65535
  %i.n = add nuw nsw i64 %3, 65535
  %.049.in = select i1 %1, i64 %i.m, i64 %i.l
  %.0.in.v = select i1 %1, i64 %3, i64 %i.n
  %.0.in = add i64 %i.l, %.0.in.v
  %.0 = and i64 %.0.in, -65536
  %.049 = and i64 %.049.in, -65536                ; 2 uses
  %.not56.not = icmp ult i64 %i.l, %i.i
  %i.o = tail call i64 @llvm.umax.i64(i64 %.049, i64 %i.i)
  %.150 = select i1 %.not56.not, i64 %.049, i64 %i.o ; 6 uses
  %.1 = tail call i64 @llvm.umin.i64(i64 %.0, i64 %i.f) ; 3 uses
  %i.p = getelementptr i8, ptr %0, i64 %.150
  store ptr %i.p, ptr %4, align 8, !tbaa !130
  %i.q = tail call i64 @llvm.usub.sat.i64(i64 %.1, i64 %.150) ; 3 uses
  store i64 %i.q, ptr %5, align 8, !tbaa !128
  %.not57 = icmp ugt i64 %.1, %.150
  br i1 %.not57, label %bb.e, label %mi_commit_mask_create.exit

bb.e:                                             ; preds = %bb.d
  %i.r = lshr exact i64 %.150, 16                 ; 3 uses
  %i.s = lshr exact i64 %i.q, 16                  ; 5 uses
  %i.t = add nuw nsw i64 %i.s, %i.r
  %i.u = icmp samesign ugt i64 %i.t, 512
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @_mi_warning_message(ptr noundef nonnull @.str.104, i64 noundef %i.r, i64 noundef %i.s, i64 noundef %.150, i64 noundef %.1, ptr noundef %2, i64 noundef %3, i64 noundef %i.q)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  switch i64 %i.s, label %.lr.ph.i [
    i64 512, label %bb.h
    i64 0, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %6, i8 -1, i64 64, i1 false), !tbaa !128
  br label %mi_commit_mask_create.exit

bb.i:                                             ; preds = %bb.g
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %6, i8 0, i64 64, i1 false), !tbaa !128
  br label %mi_commit_mask_create.exit

.lr.ph.i:                                         ; preds = %bb.g
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %6, i8 0, i64 64, i1 false), !tbaa !128
  %i.v = lshr i64 %.150, 22                       ; 2 uses
  %i.w = and i64 %i.r, 63                         ; 2 uses
  %i.x = sub nuw nsw i64 64, %i.w
  %i.y = tail call i64 @llvm.umin.i64(i64 range(i64 0, 288230376151711744) %i.s, i64 %i.x) ; 3 uses
  %i.z = icmp samesign ugt i64 %i.y, 63
  %notmask.peel.i = shl nsw i64 -1, %i.y
  %i.aa = xor i64 %notmask.peel.i, -1
  %i.ab = shl i64 %i.aa, %i.w
  %i.ac = select i1 %i.z, i64 -1, i64 %i.ab
  %i.ad = getelementptr [8 x i8], ptr %6, i64 %i.v
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !128
  %i.ae = sub nuw nsw i64 %i.s, %i.y              ; 2 uses
  %.not.peel.i = icmp eq i64 %i.ae, 0
  br i1 %.not.peel.i, label %mi_commit_mask_create.exit, label %.peel.next.i

.peel.next.i:                                     ; preds = %.lr.ph.i, %.peel.next.i
  %.02127.in.i = phi i64 [ %.02127.i, %.peel.next.i ], [ %i.v, %.lr.ph.i ]
  %.02226.i = phi i64 [ %i.ak, %.peel.next.i ], [ %i.ae, %.lr.ph.i ] ; 3 uses
  %.02127.i = add i64 %.02127.in.i, 1             ; 2 uses
  %i.af = tail call i64 @llvm.umin.i64(i64 %.02226.i, i64 64) ; 2 uses
  %i.ag = icmp ugt i64 %.02226.i, 63
  %notmask.i = shl nsw i64 -1, %i.af
  %i.ah = xor i64 %notmask.i, -1
  %i.ai = select i1 %i.ag, i64 -1, i64 %i.ah
  %i.aj = getelementptr [8 x i8], ptr %6, i64 %.02127.i
  store i64 %i.ai, ptr %i.aj, align 8, !tbaa !128
  %i.ak = sub nuw nsw i64 %.02226.i, %i.af        ; 2 uses
  %.not.i = icmp eq i64 %i.ak, 0
  br i1 %.not.i, label %mi_commit_mask_create.exit, label %.peel.next.i, !llvm.loop !43

mi_commit_mask_create.exit:                       ; preds = %.peel.next.i, %.lr.ph.i, %bb.i, %bb.h, %bb.c, %bb.d, %bb.a, %bb.b
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define internal fastcc void @mi_segments_track_size(i64 noundef %0, ptr nofree noundef captures(none) %1) unnamed_addr #11 {
bb.a:
  %i.a = icmp sgt i64 %0, -1
  %i.b = getelementptr i8, ptr %1, i64 896
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !172  ; 12 uses
  %i.d = icmp uge ptr %i.c, @_mi_stats_main
  %i.e = icmp ult ptr %i.c, getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 640)
  %i.f = select i1 %i.d, i1 %i.e, i1 false        ; 2 uses
  %i.g = getelementptr i8, ptr %i.c, i64 24       ; 6 uses
  br i1 %i.a, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  br i1 %i.f, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.h = atomicrmw add ptr %i.g, i64 1 monotonic, align 8
  %i.i = getelementptr i8, ptr %i.c, i64 16       ; 2 uses
  %i.j = add i64 %i.h, 1                          ; 2 uses
  %i.k = load atomic i64, ptr %i.i monotonic, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %.0.i.i.i = phi i64 [ %i.k, %bb.c ], [ %i.o, %bb.e ] ; 2 uses
  %i.l = icmp slt i64 %.0.i.i.i, %i.j
  br i1 %i.l, label %bb.e, label %mi_atomic_maxi64_relaxed.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.m = cmpxchg weak ptr %i.i, i64 %.0.i.i.i, i64 %i.j release monotonic, align 8 ; 2 uses
  %i.n = extractvalue { i64, i1 } %i.m, 1
  %i.o = extractvalue { i64, i1 } %i.m, 0
  br i1 %i.n, label %mi_atomic_maxi64_relaxed.exit.i.i, label %bb.d, !llvm.loop !10

mi_atomic_maxi64_relaxed.exit.i.i:                ; preds = %bb.e, %bb.d
  %i.p = atomicrmw add ptr %i.c, i64 1 monotonic, align 8 ; 0 uses
  br label %_mi_stat_increase.exit

bb.f:                                             ; preds = %bb.b
  %i.q = load i64, ptr %i.g, align 8, !tbaa !144
  %i.r = add i64 %i.q, 1                          ; 3 uses
  store i64 %i.r, ptr %i.g, align 8, !tbaa !144
  %i.s = getelementptr i8, ptr %i.c, i64 16       ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !145
  %i.u = icmp sgt i64 %i.r, %i.t
  br i1 %i.u, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i64 %i.r, ptr %i.s, align 8, !tbaa !145
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.v = load i64, ptr %i.c, align 8, !tbaa !146
  %i.w = add i64 %i.v, 1
  store i64 %i.w, ptr %i.c, align 8, !tbaa !146
  br label %_mi_stat_increase.exit

bb.i:                                             ; preds = %bb.a
  br i1 %i.f, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.x = atomicrmw add ptr %i.g, i64 -1 monotonic, align 8
  %i.y = getelementptr i8, ptr %i.c, i64 16       ; 2 uses
  %i.z = add i64 %i.x, -1                         ; 2 uses
  %i.aa = load atomic i64, ptr %i.y monotonic, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %bb.j
  %.0.i.i.i15 = phi i64 [ %i.aa, %bb.j ], [ %i.ae, %bb.l ] ; 2 uses
  %i.ab = icmp slt i64 %.0.i.i.i15, %i.z
end_hunk_0
begin_hunk_1_@mi_segment_alloc:bb.a
  %i.fl = or disjoint i64 %i.fk, %i.fh
  %i.fm = xor i64 %i.fl, 252
  %i.fn = add nsw i64 %i.fm, -4
  br label %mi_span_queue_for.exit.i

mi_span_queue_for.exit.i:                         ; preds = %bb.am, %bb.al
  %.1.i.i.i.i = phi i64 [ %i.fb, %bb.al ], [ %i.fn, %bb.am ]
  %i.fo = getelementptr [24 x i8], ptr %3, i64 %.1.i.i.i.i
  br label %bb.an

bb.an:                                            ; preds = %mi_span_queue_for.exit.i, %bb.ak
  %i.fp = phi ptr [ %i.fo, %mi_span_queue_for.exit.i ], [ null, %bb.ak ] ; 4 uses
  %spec.store.select.i = tail call i64 @llvm.umax.i64(i64 %i.fb, i64 1) ; 2 uses
  %i.fq = getelementptr i8, ptr %i.ay, i64 264
  %i.fr = getelementptr [80 x i8], ptr %i.fq, i64 %.059 ; 9 uses
  %i.fs = trunc i64 %spec.store.select.i to i32   ; 2 uses
  store i32 %i.fs, ptr %i.fr, align 8, !tbaa !93
  %i.ft = getelementptr i8, ptr %i.fr, i64 4
  store i32 0, ptr %i.ft, align 4, !tbaa !100
  %i.fu = icmp ugt i64 %i.fb, 1
  br i1 %i.fu, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.fv = getelementptr [80 x i8], ptr %i.fr, i64 %spec.store.select.i ; 3 uses
  %i.fw = getelementptr i8, ptr %i.fv, i64 -80
  store i32 0, ptr %i.fw, align 8, !tbaa !93
  %i.fx = mul i32 %i.fs, 80
  %i.fy = add i32 %i.fx, -80
  %i.fz = getelementptr i8, ptr %i.fv, i64 -76
  store i32 %i.fy, ptr %i.fz, align 4, !tbaa !100
  %i.ga = getelementptr i8, ptr %i.fv, i64 -52
  store i32 0, ptr %i.ga, align 4, !tbaa !65
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.not.i49 = icmp eq ptr %i.fp, null
  br i1 %.not.i49, label %mi_segment_span_free.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.gb = getelementptr i8, ptr %i.fr, i64 64
  store ptr null, ptr %i.gb, align 8, !tbaa !193
  %i.gc = load ptr, ptr %i.fp, align 8, !tbaa !198 ; 3 uses
  %i.gd = getelementptr i8, ptr %i.fr, i64 56
  store ptr %i.gc, ptr %i.gd, align 8, !tbaa !171
  store ptr %i.fr, ptr %i.fp, align 8, !tbaa !198
  %.not.i26.i = icmp eq ptr %i.gc, null
  br i1 %.not.i26.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ge = getelementptr i8, ptr %i.gc, i64 64
  store ptr %i.fr, ptr %i.ge, align 8, !tbaa !193
  br label %mi_segment_span_free.exit

bb.as:                                            ; preds = %bb.aq
  %i.gf = getelementptr i8, ptr %i.fp, i64 8
  store ptr %i.fr, ptr %i.gf, align 8, !tbaa !199
  br label %mi_segment_span_free.exit

mi_segment_span_free.exit:                        ; preds = %bb.ap, %bb.ar, %bb.as
  %i.gg = getelementptr i8, ptr %i.fr, i64 28
  store i32 0, ptr %i.gg, align 4, !tbaa !65
  br label %bb.au

bb.at:                                            ; preds = %bb.aj
  %i.gh = sub nsw i64 %.0, %.059
  %.val44 = load ptr, ptr %i.dp, align 8, !tbaa !172
  %i.gi = tail call fastcc ptr @mi_segment_span_allocate(ptr noundef nonnull %i.ay, i64 noundef %.059, i64 noundef %i.gh, ptr %.val44)
  store ptr %i.gi, ptr %5, align 8, !tbaa !94
  br label %bb.au

bb.au:                                            ; preds = %mi_segment_os_alloc.exit, %mi_segment_os_alloc.exit.thread, %mi_segment_span_free.exit, %bb.at, %_mi_stat_increase.exit, %mi_segment_calculate_slices.exit
  %.2 = phi ptr [ null, %mi_segment_calculate_slices.exit ], [ null, %mi_segment_os_alloc.exit ], [ null, %_mi_stat_increase.exit ], [ %i.ay, %bb.at ], [ %i.ay, %mi_segment_span_free.exit ], [ null, %mi_segment_os_alloc.exit.thread ]
  ret ptr %.2
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @mi_segment_span_allocate(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr nofree readnone captures(none) %.896.val) unnamed_addr #2 {
bb.a:
  %3 = alloca %struct.timespec, align 8           ; 5 uses
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %4 = alloca %struct.mi_commit_mask_s, align 16  ; 11 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %5 = alloca %struct.mi_commit_mask_s, align 8   ; 11 uses
  %i.d = getelementptr i8, ptr %0, i64 264        ; 2 uses
  %i.e = getelementptr [80 x i8], ptr %i.d, i64 %1 ; 10 uses
  %i.f = ptrtoint ptr %i.e to i64
  %.idx = mul i64 %1, 80
  %i.g = sdiv exact i64 %.idx, 80
  %i.h = shl i64 %i.g, 16
  %i.i = getelementptr i8, ptr %0, i64 %i.h
  %i.j = shl i64 %2, 16                           ; 2 uses
  %i.k = getelementptr i8, ptr %0, i64 112        ; 4 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !128
  %.not.i.i = icmp eq i64 %i.l, -1
  br i1 %.not.i.i, label %bb.b, label %mi_commit_mask_is_full.exit.thread.i

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr i8, ptr %0, i64 120
  %i.n = load i64, ptr %i.m, align 8, !tbaa !128
  %.not.1.i.i = icmp eq i64 %i.n, -1
  br i1 %.not.1.i.i, label %bb.c, label %mi_commit_mask_is_full.exit.thread.i

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr i8, ptr %0, i64 128
  %i.p = load i64, ptr %i.o, align 8, !tbaa !128
  %.not.2.i.i = icmp eq i64 %i.p, -1
  br i1 %.not.2.i.i, label %bb.d, label %mi_commit_mask_is_full.exit.thread.i

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr i8, ptr %0, i64 136
  %i.r = load i64, ptr %i.q, align 8, !tbaa !128
  %.not.3.i.i = icmp eq i64 %i.r, -1
  br i1 %.not.3.i.i, label %bb.e, label %mi_commit_mask_is_full.exit.thread.i

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr i8, ptr %0, i64 144
  %i.t = load i64, ptr %i.s, align 8, !tbaa !128
  %.not.4.i.i = icmp eq i64 %i.t, -1
  br i1 %.not.4.i.i, label %bb.f, label %mi_commit_mask_is_full.exit.thread.i

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr i8, ptr %0, i64 152
  %i.v = load i64, ptr %i.u, align 8, !tbaa !128
  %.not.5.i.i = icmp eq i64 %i.v, -1
  br i1 %.not.5.i.i, label %bb.g, label %mi_commit_mask_is_full.exit.thread.i

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr i8, ptr %0, i64 160
  %i.x = load i64, ptr %i.w, align 8, !tbaa !128
  %.not.6.i.i = icmp eq i64 %i.x, -1
  br i1 %.not.6.i.i, label %mi_commit_mask_is_full.exit.i, label %mi_commit_mask_is_full.exit.thread.i

mi_commit_mask_is_full.exit.i:                    ; preds = %bb.g
  %i.y = getelementptr i8, ptr %0, i64 168
  %i.z = load i64, ptr %i.y, align 8, !tbaa !128
  %.not.7.i.i = icmp eq i64 %i.z, -1
  br i1 %.not.7.i.i, label %bb.h, label %mi_commit_mask_is_full.exit.thread.i

bb.h:                                             ; preds = %mi_commit_mask_is_full.exit.i
  %i.aa = getelementptr i8, ptr %0, i64 48
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !128
  %.not.i6.i = icmp eq i64 %i.ab, 0
  br i1 %.not.i6.i, label %bb.i, label %mi_commit_mask_is_full.exit.thread.i

bb.i:                                             ; preds = %bb.h
  %i.ac = getelementptr i8, ptr %0, i64 56
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !128
  %.not.1.i8.i = icmp eq i64 %i.ad, 0
  br i1 %.not.1.i8.i, label %bb.j, label %mi_commit_mask_is_full.exit.thread.i

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr i8, ptr %0, i64 64
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !128
  %.not.2.i9.i = icmp eq i64 %i.af, 0
  br i1 %.not.2.i9.i, label %bb.k, label %mi_commit_mask_is_full.exit.thread.i

bb.k:                                             ; preds = %bb.j
  %i.ag = getelementptr i8, ptr %0, i64 72
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !128
  %.not.3.i10.i = icmp eq i64 %i.ah, 0
  br i1 %.not.3.i10.i, label %bb.l, label %mi_commit_mask_is_full.exit.thread.i

bb.l:                                             ; preds = %bb.k
  %i.ai = getelementptr i8, ptr %0, i64 80
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !128
  %.not.4.i11.i = icmp eq i64 %i.aj, 0
  br i1 %.not.4.i11.i, label %bb.m, label %mi_commit_mask_is_full.exit.thread.i

bb.m:                                             ; preds = %bb.l
  %i.ak = getelementptr i8, ptr %0, i64 88
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !128
  %.not.5.i12.i = icmp eq i64 %i.al, 0
  br i1 %.not.5.i12.i, label %bb.n, label %mi_commit_mask_is_full.exit.thread.i

bb.n:                                             ; preds = %bb.m
  %i.am = getelementptr i8, ptr %0, i64 96
  %i.an = load i64, ptr %i.am, align 8, !tbaa !128
  %.not.6.i13.i = icmp eq i64 %i.an, 0
  br i1 %.not.6.i13.i, label %mi_commit_mask_is_empty.exit.i, label %mi_commit_mask_is_full.exit.thread.i

mi_commit_mask_is_empty.exit.i:                   ; preds = %bb.n
  %i.ao = getelementptr i8, ptr %0, i64 104
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !128
  %.not.7.i14.i = icmp eq i64 %i.ap, 0
  br i1 %.not.7.i14.i, label %mi_segment_ensure_committed.exit.thread, label %mi_commit_mask_is_full.exit.thread.i

mi_commit_mask_is_full.exit.thread.i:             ; preds = %mi_commit_mask_is_empty.exit.i, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %mi_commit_mask_is_full.exit.i, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #52
  store ptr null, ptr %i.a, align 8, !tbaa !130
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #52
  store i64 0, ptr %i.b, align 8, !tbaa !128
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #52
  call fastcc void @mi_segment_commit_mask(ptr noundef nonnull %0, i1 noundef zeroext false, ptr noundef %i.i, i64 noundef %i.j, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %4)
  %i.aq = load <2 x i64>, ptr %4, align 16        ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.as = load <2 x i64>, ptr %i.ar, align 16     ; 4 uses
  %i.at = shufflevector <2 x i64> %i.aq, <2 x i64> %i.as, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.fr = freeze <4 x i64> %i.at
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.av = load <2 x i64>, ptr %i.au, align 16
  %.fr15 = freeze <2 x i64> %i.av                 ; 4 uses
  %i.aw = extractelement <2 x i64> %.fr15, i64 0  ; 5 uses
  %6 = extractelement <2 x i64> %.fr15, i64 1     ; 5 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.ay = load i64, ptr %i.ax, align 16           ; 7 uses
  %.not.6.i.i.i = icmp eq i64 %i.ay, 0
  %i.az = icmp ne <4 x i64> %.fr, zeroinitializer
  %i.ba = bitcast <4 x i1> %i.az to i4
  %i.bb = icmp eq i4 %i.ba, 0
  %7 = or i64 %6, %i.aw
  %8 = icmp eq i64 %7, 0
  %9 = and i1 %i.bb, %8
  %op.rdx13 = select i1 %9, i1 %.not.6.i.i.i, i1 false
  br i1 %op.rdx13, label %bb.o, label %mi_commit_mask_is_empty.exit.i.i

bb.o:                                             ; preds = %mi_commit_mask_is_full.exit.thread.i
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !128
  %.not.7.i.i.i = icmp eq i64 %i.bd, 0
  br label %mi_commit_mask_is_empty.exit.i.i

mi_commit_mask_is_empty.exit.i.i:                 ; preds = %bb.o, %mi_commit_mask_is_full.exit.thread.i
  %.not.lcssa.i.i.i = phi i1 [ false, %mi_commit_mask_is_full.exit.thread.i ], [ %.not.7.i.i.i, %bb.o ]
  %i.be = load i64, ptr %i.b, align 8             ; 2 uses
  %i.bf = icmp eq i64 %i.be, 0
  %or.cond.i.i = select i1 %.not.lcssa.i.i.i, i1 true, i1 %i.bf
  br i1 %or.cond.i.i, label %mi_segment_ensure_committed.exit.thread2, label %bb.p

bb.p:                                             ; preds = %mi_commit_mask_is_empty.exit.i.i
  %i.bg = load i64, ptr %i.k, align 8, !tbaa !128
  %i.bh = extractelement <2 x i64> %i.aq, i64 0   ; 4 uses
  %i.bi = and i64 %i.bg, %i.bh                    ; 2 uses
  %.not.i13.i.i = icmp eq i64 %i.bi, %i.bh
  %i.bj = getelementptr i8, ptr %0, i64 120
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !128
  %i.bl = extractelement <2 x i64> %i.aq, i64 1   ; 4 uses
  %i.bm = and i64 %i.bk, %i.bl                    ; 2 uses
  %.not.1.i15.i.i = icmp eq i64 %i.bm, %i.bl
  %or.cond58.i.i = select i1 %.not.i13.i.i, i1 %.not.1.i15.i.i, i1 false
  %i.bn = getelementptr i8, ptr %0, i64 128       ; 3 uses
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !128
  %i.bp = extractelement <2 x i64> %i.as, i64 0   ; 4 uses
  %i.bq = and i64 %i.bo, %i.bp                    ; 2 uses
  %.not.2.i16.i.i = icmp eq i64 %i.bq, %i.bp
  %or.cond.i = select i1 %or.cond58.i.i, i1 %.not.2.i16.i.i, i1 false
  %i.br = getelementptr i8, ptr %0, i64 136
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !128
  %i.bt = extractelement <2 x i64> %i.as, i64 1   ; 4 uses
  %i.bu = and i64 %i.bs, %i.bt                    ; 2 uses
  %.not.3.i17.i.i = icmp eq i64 %i.bu, %i.bt
  %or.cond = select i1 %or.cond.i, i1 %.not.3.i17.i.i, i1 false
  br i1 %or.cond, label %bb.q, label %mi_commit_mask_all_set.exit.thread.i.i

bb.q:                                             ; preds = %bb.p
  %i.bv = getelementptr i8, ptr %0, i64 144
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !128
  %i.bx = and i64 %i.bw, %i.aw
  %.not.4.i18.i.i = icmp eq i64 %i.bx, %i.aw
  br i1 %.not.4.i18.i.i, label %bb.r, label %mi_commit_mask_all_set.exit.thread.i.i

bb.r:                                             ; preds = %bb.q
  %i.by = getelementptr i8, ptr %0, i64 152
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !128
  %i.ca = and i64 %i.bz, %6
  %.not.5.i19.i.i = icmp eq i64 %i.ca, %6
  br i1 %.not.5.i19.i.i, label %bb.s, label %mi_commit_mask_all_set.exit.thread.i.i

bb.s:                                             ; preds = %bb.r
  %i.cb = getelementptr i8, ptr %0, i64 160
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !128
  %i.cd = and i64 %i.cc, %i.ay
  %.not.6.i20.i.i = icmp eq i64 %i.cd, %i.ay
  br i1 %.not.6.i20.i.i, label %mi_commit_mask_all_set.exit.i.i, label %mi_commit_mask_all_set.exit.thread.i.i

mi_commit_mask_all_set.exit.i.i:                  ; preds = %bb.s
  %i.ce = getelementptr i8, ptr %0, i64 168
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !128
  %i.cg = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !128 ; 3 uses
  %i.ci = and i64 %i.ch, %i.cf
  %.not.7.i21.i.i = icmp eq i64 %i.ci, %i.ch
  br i1 %.not.7.i21.i.i, label %bb.z, label %mi_commit_mask_all_set.exit.thread.i.i

mi_commit_mask_all_set.exit.thread.i.i:           ; preds = %bb.p, %mi_commit_mask_all_set.exit.i.i, %bb.s, %bb.r, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #52
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #52
  store i64 %i.bi, ptr %5, align 8, !tbaa !128
  %i.cj = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.bm, ptr %i.cj, align 8, !tbaa !128
  %i.ck = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %i.bq, ptr %i.ck, align 8, !tbaa !128
  %i.cl = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 %i.bu, ptr %i.cl, align 8, !tbaa !128
  %i.cm = getelementptr i8, ptr %0, i64 144       ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.co = load <2 x i64>, ptr %i.cm, align 8, !tbaa !128
  %i.cp = and <2 x i64> %i.co, %.fr15
  store <2 x i64> %i.cp, ptr %i.cn, align 8, !tbaa !128
  %i.cq = getelementptr i8, ptr %0, i64 160       ; 3 uses
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !128
  %i.cs = and i64 %i.cr, %i.ay
  %i.ct = getelementptr inbounds nuw i8, ptr %5, i64 48
  store i64 %i.cs, ptr %i.ct, align 8, !tbaa !128
  %i.cu = getelementptr i8, ptr %0, i64 168       ; 3 uses
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !128
  %i.cw = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !128 ; 3 uses
  %i.cy = and i64 %i.cx, %i.cv
  %i.cz = getelementptr inbounds nuw i8, ptr %5, i64 56
  store i64 %i.cy, ptr %i.cz, align 8, !tbaa !128
  %i.da = call i64 @_mi_commit_mask_committed_size(ptr noundef nonnull %5, i64 noundef 33554432) ; 6 uses
  %i.db = icmp eq i64 %i.da, 0
  br i1 %i.db, label %_mi_stat_decrease.exit.i.i, label %bb.t

bb.t:                                             ; preds = %mi_commit_mask_all_set.exit.thread.i.i
  %i.dc = atomicrmw sub ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 120), i64 %i.da monotonic, align 8
  %i.dd = sub i64 %i.dc, %i.da                    ; 2 uses
  %i.de = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 112) monotonic, align 16
  br label %bb.u

bb.u:                                             ; preds = %bb.v, %bb.t
  %.0.i.i.i.i.i = phi i64 [ %i.de, %bb.t ], [ %i.di, %bb.v ] ; 2 uses
  %i.df = icmp slt i64 %.0.i.i.i.i.i, %i.dd
  br i1 %i.df, label %bb.v, label %mi_atomic_maxi64_relaxed.exit.i.i.i.i

bb.v:                                             ; preds = %bb.u
  %i.dg = cmpxchg weak ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 112), i64 %.0.i.i.i.i.i, i64 %i.dd release monotonic, align 8 ; 2 uses
  %i.dh = extractvalue { i64, i1 } %i.dg, 1
  %i.di = extractvalue { i64, i1 } %i.dg, 0
  br i1 %i.dh, label %mi_atomic_maxi64_relaxed.exit.i.i.i.i, label %bb.u, !llvm.loop !10

mi_atomic_maxi64_relaxed.exit.i.i.i.i:            ; preds = %bb.v, %bb.u
  %i.dj = icmp ugt i64 %i.da, -9223372036854775808
  br i1 %i.dj, label %bb.w, label %bb.x

bb.w:                                             ; preds = %mi_atomic_maxi64_relaxed.exit.i.i.i.i
  %i.dk = atomicrmw sub ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 96), i64 %i.da monotonic, align 8 ; 0 uses
  br label %_mi_stat_decrease.exit.i.i

bb.x:                                             ; preds = %mi_atomic_maxi64_relaxed.exit.i.i.i.i
  %i.dl = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 104), i64 %i.da monotonic, align 8 ; 0 uses
  br label %_mi_stat_decrease.exit.i.i

_mi_stat_decrease.exit.i.i:                       ; preds = %bb.x, %bb.w, %mi_commit_mask_all_set.exit.thread.i.i
  %i.dm = load ptr, ptr %i.a, align 8, !tbaa !130
  %i.dn = call zeroext i1 @_mi_os_commit(ptr noundef %i.dm, i64 noundef %i.be, ptr noundef nonnull %i.c, ptr readnone poison)
  br i1 %i.dn, label %bb.y, label %mi_segment_ensure_committed.exit

bb.y:                                             ; preds = %_mi_stat_decrease.exit.i.i
  %i.do = load <2 x i64>, ptr %i.k, align 8, !tbaa !128
  %i.dp = or <2 x i64> %i.do, %i.aq
  store <2 x i64> %i.dp, ptr %i.k, align 8, !tbaa !128
  %i.dq = load <2 x i64>, ptr %i.bn, align 8, !tbaa !128
  %i.dr = or <2 x i64> %i.dq, %i.as
  store <2 x i64> %i.dr, ptr %i.bn, align 8, !tbaa !128
  %i.ds = load <2 x i64>, ptr %i.cm, align 8, !tbaa !128
  %i.dt = or <2 x i64> %i.ds, %.fr15
  store <2 x i64> %i.dt, ptr %i.cm, align 8, !tbaa !128
  %i.du = load i64, ptr %i.cq, align 8, !tbaa !128
  %i.dv = or i64 %i.du, %i.ay
  store i64 %i.dv, ptr %i.cq, align 8, !tbaa !128
  %i.dw = load i64, ptr %i.cu, align 8, !tbaa !128
  %i.dx = or i64 %i.dw, %i.cx
  store i64 %i.dx, ptr %i.cu, align 8, !tbaa !128
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #52
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %mi_commit_mask_all_set.exit.i.i
  %i.dy = phi i64 [ %i.cx, %bb.y ], [ %i.ch, %mi_commit_mask_all_set.exit.i.i ] ; 2 uses
  %i.dz = getelementptr i8, ptr %0, i64 48        ; 3 uses
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !128 ; 2 uses
  %i.eb = and i64 %i.ea, %i.bh
  %.not.not.i.i.i = icmp eq i64 %i.eb, 0
  br i1 %.not.not.i.i.i, label %bb.aa, label %mi_commit_mask_any_set.exit.thread.i.i

bb.aa:                                            ; preds = %bb.z
  %i.ec = getelementptr i8, ptr %0, i64 56
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !128 ; 2 uses
  %i.ee = and i64 %i.ed, %i.bl
  %.not.1.not.i.i.i = icmp eq i64 %i.ee, 0
  br i1 %.not.1.not.i.i.i, label %bb.ab, label %mi_commit_mask_any_set.exit.thread.i.i

bb.ab:                                            ; preds = %bb.aa
  %i.ef = getelementptr i8, ptr %0, i64 64
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !128 ; 2 uses
  %i.eh = and i64 %i.eg, %i.bp
  %.not.2.not.i.i.i = icmp eq i64 %i.eh, 0
  br i1 %.not.2.not.i.i.i, label %bb.ac, label %mi_commit_mask_any_set.exit.thread.i.i

bb.ac:                                            ; preds = %bb.ab
  %i.ei = getelementptr i8, ptr %0, i64 72
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !128 ; 2 uses
  %i.ek = and i64 %i.ej, %i.bt
  %.not.3.not.i.i.i = icmp eq i64 %i.ek, 0
  br i1 %.not.3.not.i.i.i, label %bb.ad, label %mi_commit_mask_any_set.exit.thread.i.i

bb.ad:                                            ; preds = %bb.ac
  %i.el = getelementptr i8, ptr %0, i64 80
  %i.em = load i64, ptr %i.el, align 8, !tbaa !128 ; 2 uses
  %i.en = and i64 %i.em, %i.aw
  %.not.4.not.i.i.i = icmp eq i64 %i.en, 0
  br i1 %.not.4.not.i.i.i, label %bb.ae, label %mi_commit_mask_any_set.exit.thread.i.i

bb.ae:                                            ; preds = %bb.ad
  %i.eo = getelementptr i8, ptr %0, i64 88
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !128 ; 2 uses
  %i.eq = and i64 %i.ep, %6
  %.not.5.not.i.i.i = icmp eq i64 %i.eq, 0
  br i1 %.not.5.not.i.i.i, label %bb.af, label %mi_commit_mask_any_set.exit.thread.i.i

bb.af:                                            ; preds = %bb.ae
  %i.er = getelementptr i8, ptr %0, i64 96
  %i.es = load i64, ptr %i.er, align 8, !tbaa !128 ; 2 uses
  %i.et = and i64 %i.es, %i.ay
  %.not.6.not.i.i.i = icmp eq i64 %i.et, 0
  br i1 %.not.6.not.i.i.i, label %mi_commit_mask_any_set.exit.i.i, label %mi_commit_mask_any_set.exit.thread.i.i

mi_commit_mask_any_set.exit.i.i:                  ; preds = %bb.af
  %i.eu = getelementptr i8, ptr %0, i64 104
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !128 ; 2 uses
  %i.ew = and i64 %i.ev, %i.dy
  %.not.7.not.i.not.i.i = icmp eq i64 %i.ew, 0
  br i1 %.not.7.not.i.not.i.i, label %bb.ah, label %mi_commit_mask_any_set.exit.thread.i.i

mi_commit_mask_any_set.exit.thread.i.i:           ; preds = %mi_commit_mask_any_set.exit.i.i, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #52
  %i.ex = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %3) #52 ; 0 uses
  %i.ey = load i64, ptr %3, align 8, !tbaa !153
  %i.ez = mul i64 %i.ey, 1000
  %i.fa = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !154
  %i.fc = sdiv i64 %i.fb, 1000000
  %i.fd = add i64 %i.fc, %i.ez
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #52
  %i.fe = load i32, ptr getelementptr inbounds nuw (i8, ptr @options, i64 488), align 8, !tbaa !133
  %i.ff = icmp eq i32 %i.fe, 0
  br i1 %i.ff, label %bb.ag, label %mi_option_get.exit.i.i, !prof !61

bb.ag:                                            ; preds = %mi_commit_mask_any_set.exit.thread.i.i
  call fastcc void @mi_option_init(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @options, i64 480)), !inline_history !134
  br label %mi_option_get.exit.i.i

mi_option_get.exit.i.i:                           ; preds = %bb.ag, %mi_commit_mask_any_set.exit.thread.i.i
  %i.fg = load i64, ptr getelementptr inbounds nuw (i8, ptr @options, i64 480), align 16, !tbaa !135
  %i.fh = add i64 %i.fd, %i.fg
  %i.fi = getelementptr i8, ptr %0, i64 40
  store i64 %i.fh, ptr %i.fi, align 8, !tbaa !206
  %.pre37.i.i = load i64, ptr %i.dz, align 8, !tbaa !128
  %.phi.trans.insert38.i.i = getelementptr i8, ptr %0, i64 56
  %.pre39.i.i = load i64, ptr %.phi.trans.insert38.i.i, align 8, !tbaa !128
  %.phi.trans.insert40.i.i = getelementptr i8, ptr %0, i64 64
  %.pre41.i.i = load i64, ptr %.phi.trans.insert40.i.i, align 8, !tbaa !128
  %.phi.trans.insert42.i.i = getelementptr i8, ptr %0, i64 72
  %.pre43.i.i = load i64, ptr %.phi.trans.insert42.i.i, align 8, !tbaa !128
  %.phi.trans.insert44.i.i = getelementptr i8, ptr %0, i64 80
  %.pre45.i.i = load i64, ptr %.phi.trans.insert44.i.i, align 8, !tbaa !128
  %.phi.trans.insert46.i.i = getelementptr i8, ptr %0, i64 88
  %.pre47.i.i = load i64, ptr %.phi.trans.insert46.i.i, align 8, !tbaa !128
  %.phi.trans.insert48.i.i = getelementptr i8, ptr %0, i64 96
  %.pre49.i.i = load i64, ptr %.phi.trans.insert48.i.i, align 8, !tbaa !128
  %.phi.trans.insert50.i.i = getelementptr i8, ptr %0, i64 104
  %.pre51.i.i = load i64, ptr %.phi.trans.insert50.i.i, align 8, !tbaa !128
  br label %bb.ah

bb.ah:                                            ; preds = %mi_option_get.exit.i.i, %mi_commit_mask_any_set.exit.i.i
  %i.fj = phi i64 [ %.pre51.i.i, %mi_option_get.exit.i.i ], [ %i.ev, %mi_commit_mask_any_set.exit.i.i ]
  %i.fk = phi i64 [ %.pre49.i.i, %mi_option_get.exit.i.i ], [ %i.es, %mi_commit_mask_any_set.exit.i.i ]
  %i.fl = phi i64 [ %.pre47.i.i, %mi_option_get.exit.i.i ], [ %i.ep, %mi_commit_mask_any_set.exit.i.i ]
  %i.fm = phi i64 [ %.pre45.i.i, %mi_option_get.exit.i.i ], [ %i.em, %mi_commit_mask_any_set.exit.i.i ]
  %i.fn = phi i64 [ %.pre43.i.i, %mi_option_get.exit.i.i ], [ %i.ej, %mi_commit_mask_any_set.exit.i.i ]
  %i.fo = phi i64 [ %.pre41.i.i, %mi_option_get.exit.i.i ], [ %i.eg, %mi_commit_mask_any_set.exit.i.i ]
  %i.fp = phi i64 [ %.pre39.i.i, %mi_option_get.exit.i.i ], [ %i.ed, %mi_commit_mask_any_set.exit.i.i ]
  %i.fq = phi i64 [ %.pre37.i.i, %mi_option_get.exit.i.i ], [ %i.ea, %mi_commit_mask_any_set.exit.i.i ]
  %i.fr = xor i64 %i.bh, -1
  %i.fs = and i64 %i.fq, %i.fr
  store i64 %i.fs, ptr %i.dz, align 8, !tbaa !128
  %i.ft = xor i64 %i.bl, -1
  %i.fu = getelementptr i8, ptr %0, i64 56
  %i.fv = and i64 %i.fp, %i.ft
  store i64 %i.fv, ptr %i.fu, align 8, !tbaa !128
  %i.fw = xor i64 %i.bp, -1
  %i.fx = getelementptr i8, ptr %0, i64 64
  %i.fy = and i64 %i.fo, %i.fw
  store i64 %i.fy, ptr %i.fx, align 8, !tbaa !128
  %i.fz = xor i64 %i.bt, -1
  %i.ga = getelementptr i8, ptr %0, i64 72
  %i.gb = and i64 %i.fn, %i.fz
  store i64 %i.gb, ptr %i.ga, align 8, !tbaa !128
  %i.gc = xor i64 %i.aw, -1
  %i.gd = getelementptr i8, ptr %0, i64 80
  %i.ge = and i64 %i.fm, %i.gc
  store i64 %i.ge, ptr %i.gd, align 8, !tbaa !128
  %i.gf = xor i64 %6, -1
  %i.gg = getelementptr i8, ptr %0, i64 88
  %i.gh = and i64 %i.fl, %i.gf
  store i64 %i.gh, ptr %i.gg, align 8, !tbaa !128
  %i.gi = xor i64 %i.ay, -1
  %i.gj = getelementptr i8, ptr %0, i64 96
  %i.gk = and i64 %i.fk, %i.gi
  store i64 %i.gk, ptr %i.gj, align 8, !tbaa !128
  %i.gl = xor i64 %i.dy, -1
  %i.gm = getelementptr i8, ptr %0, i64 104
  %i.gn = and i64 %i.fj, %i.gl
  store i64 %i.gn, ptr %i.gm, align 8, !tbaa !128
  br label %mi_segment_ensure_committed.exit.thread2

mi_segment_ensure_committed.exit.thread2:         ; preds = %bb.ah, %mi_commit_mask_is_empty.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #52
  br label %mi_segment_ensure_committed.exit.thread

mi_segment_ensure_committed.exit:                 ; preds = %_mi_stat_decrease.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #52
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #52
  br label %bb.ak

mi_segment_ensure_committed.exit.thread:          ; preds = %mi_commit_mask_is_empty.exit.i, %mi_segment_ensure_committed.exit.thread2
  %i.go = getelementptr i8, ptr %i.e, i64 4
  store i32 0, ptr %i.go, align 4, !tbaa !100
  %i.gp = trunc i64 %2 to i32
  store i32 %i.gp, ptr %i.e, align 8, !tbaa !93
  %i.gq = call i64 @llvm.umin.i64(i64 %i.j, i64 2147483648)
  %i.gr = trunc nuw i64 %i.gq to i32
  %i.gs = getelementptr i8, ptr %i.e, i64 28
  store i32 %i.gr, ptr %i.gs, align 4, !tbaa !65
  %i.gt = add i64 %2, -1
  %spec.store.select = call i64 @llvm.umin.i64(i64 %i.gt, i64 255) ; 2 uses
  %i.gu = add i64 %spec.store.select, %1
  %i.gv = getelementptr i8, ptr %0, i64 248
  %i.gw = load i64, ptr %i.gv, align 8, !tbaa !195 ; 3 uses
  %.not = icmp ult i64 %i.gu, %i.gw
  %i.gx = xor i64 %1, -1
  %i.gy = add i64 %i.gw, %i.gx
  %.049 = select i1 %.not, i64 %spec.store.select, i64 %i.gy ; 2 uses
  %.not554 = icmp eq i64 %.049, 0
  br i1 %.not554, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %mi_segment_ensure_committed.exit.thread
  %i.gz = add i64 %.049, 1                        ; 2 uses
  %umax = call i64 @llvm.umax.i64(i64 %i.gz, i64 2)
  %i.ha = add i64 %umax, -1                       ; 2 uses
  %xtraiter = and i64 %i.ha, 3                    ; 3 uses
  %i.hb = icmp ult i64 %i.gz, 5
  br i1 %i.hb, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.ha, -4
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.0476.epil.init = phi i64 [ 1, %.lr.ph.preheader ], [ %i.if, %._crit_edge.loopexit.unr-lcssa ]
  %.pn5.epil.init = phi ptr [ %i.e, %.lr.ph.preheader ], [ %.048.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod16 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod16)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.0476.epil = phi i64 [ %i.hg, %.lr.ph.epil ], [ %.0476.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %.pn5.epil = phi ptr [ %.048.epil, %.lr.ph.epil ], [ %.pn5.epil.init, %.lr.ph.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %.048.epil = getelementptr i8, ptr %.pn5.epil, i64 80 ; 2 uses
  %i.hc = trunc i64 %.0476.epil to i32
  %i.hd = mul i32 %i.hc, 80
  %i.he = getelementptr i8, ptr %.pn5.epil, i64 84
  store i32 %i.hd, ptr %i.he, align 4, !tbaa !100
  store i32 0, ptr %.048.epil, align 8, !tbaa !93
  %i.hf = getelementptr i8, ptr %.pn5.epil, i64 108
  store i32 1, ptr %i.hf, align 4, !tbaa !65
  %i.hg = add nuw i64 %.0476.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !652

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %mi_segment_ensure_committed.exit.thread
  %i.hh = getelementptr [80 x i8], ptr %i.e, i64 %2
  %i.hi = getelementptr i8, ptr %i.hh, i64 -80    ; 2 uses
  %i.hj = getelementptr [80 x i8], ptr %i.d, i64 %i.gw ; 2 uses
  %i.hk = icmp ugt ptr %i.hi, %i.hj
  %spec.select = select i1 %i.hk, ptr %i.hj, ptr %i.hi ; 5 uses
  %i.hl = icmp ugt ptr %spec.select, %i.e
  br i1 %i.hl, label %bb.ai, label %bb.aj

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.0476 = phi i64 [ 1, %.lr.ph.preheader.new ], [ %i.if, %.lr.ph ] ; 5 uses
  %.pn5 = phi ptr [ %i.e, %.lr.ph.preheader.new ], [ %.048.3, %.lr.ph ] ; 12 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %.048 = getelementptr i8, ptr %.pn5, i64 80
  %i.hm = trunc i64 %.0476 to i32
  %i.hn = mul i32 %i.hm, 80
  %i.ho = getelementptr i8, ptr %.pn5, i64 84
  store i32 %i.hn, ptr %i.ho, align 4, !tbaa !100
  store i32 0, ptr %.048, align 8, !tbaa !93
  %i.hp = getelementptr i8, ptr %.pn5, i64 108
  store i32 1, ptr %i.hp, align 4, !tbaa !65
  %.048.1 = getelementptr i8, ptr %.pn5, i64 160
  %i.hq = trunc i64 %.0476 to i32
  %i.hr = mul i32 %i.hq, 80
  %i.hs = add i32 %i.hr, 80
  %i.ht = getelementptr i8, ptr %.pn5, i64 164
  store i32 %i.hs, ptr %i.ht, align 4, !tbaa !100
  store i32 0, ptr %.048.1, align 8, !tbaa !93
  %i.hu = getelementptr i8, ptr %.pn5, i64 188
  store i32 1, ptr %i.hu, align 4, !tbaa !65
  %.048.2 = getelementptr i8, ptr %.pn5, i64 240
  %i.hv = trunc i64 %.0476 to i32
  %i.hw = mul i32 %i.hv, 80
  %i.hx = add i32 %i.hw, 160
  %i.hy = getelementptr i8, ptr %.pn5, i64 244
  store i32 %i.hx, ptr %i.hy, align 4, !tbaa !100
  store i32 0, ptr %.048.2, align 8, !tbaa !93
  %i.hz = getelementptr i8, ptr %.pn5, i64 268
  store i32 1, ptr %i.hz, align 4, !tbaa !65
  %.048.3 = getelementptr i8, ptr %.pn5, i64 320  ; 3 uses
  %i.ia = trunc i64 %.0476 to i32
  %i.ib = mul i32 %i.ia, 80
  %i.ic = add i32 %i.ib, 240
  %i.id = getelementptr i8, ptr %.pn5, i64 324
  store i32 %i.ic, ptr %i.id, align 4, !tbaa !100
  store i32 0, ptr %.048.3, align 8, !tbaa !93
  %i.ie = getelementptr i8, ptr %.pn5, i64 348
  store i32 1, ptr %i.ie, align 4, !tbaa !65
  %i.if = add nuw i64 %.0476, 4                   ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !653

bb.ai:                                            ; preds = %._crit_edge
  %i.ig = ptrtoint ptr %spec.select to i64
  %i.ih = sub i64 %i.ig, %i.f
  %i.ii = trunc i64 %i.ih to i32
  %i.ij = getelementptr i8, ptr %spec.select, i64 4
  store i32 %i.ii, ptr %i.ij, align 4, !tbaa !100
  store i32 0, ptr %spec.select, align 8, !tbaa !93
  %i.ik = getelementptr i8, ptr %spec.select, i64 28
  store i32 1, ptr %i.ik, align 4, !tbaa !65
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %._crit_edge
  %i.il = getelementptr i8, ptr %i.e, i64 8       ; 2 uses
  %i.im = load i8, ptr %i.il, align 8
  %i.in = or i8 %i.im, 1
  store i8 %i.in, ptr %i.il, align 8
  %i.io = getelementptr i8, ptr %0, i64 208       ; 2 uses
  %i.ip = load i64, ptr %i.io, align 8, !tbaa !112
  %i.iq = add i64 %i.ip, 1
  store i64 %i.iq, ptr %i.io, align 8, !tbaa !112
  br label %bb.ak

bb.ak:                                            ; preds = %mi_segment_ensure_committed.exit, %bb.aj
  %.050 = phi ptr [ %i.e, %bb.aj ], [ null, %mi_segment_ensure_committed.exit ]
  ret ptr %.050
}

; Function Attrs: nounwind uwtable
define internal void @mi_buffered_out(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef captures(address_is_null) %1) #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.c = load i8, ptr %0, align 1, !tbaa !101     ; 2 uses
  %.not22 = icmp eq i8 %i.c, 0
  br i1 %.not22, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.d = getelementptr i8, ptr %1, i64 24         ; 4 uses
  %i.e = getelementptr i8, ptr %1, i64 32
  %i.f = getelementptr i8, ptr %1, i64 16         ; 5 uses
  %i.g = getelementptr i8, ptr %1, i64 8          ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.k
  %i.h = phi i8 [ %i.c, %.lr.ph ], [ %i.av, %bb.k ] ; 2 uses
  %.023 = phi ptr [ %0, %.lr.ph ], [ %i.au, %bb.k ]
  %i.i = load i64, ptr %i.d, align 8, !tbaa !656  ; 3 uses
  %i.j = load i64, ptr %i.e, align 8, !tbaa !214
  %.not18 = icmp ult i64 %i.i, %i.j
  br i1 %.not18, label %mi_buffered_flush.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.f, align 8, !tbaa !215
  %i.l = getelementptr i8, ptr %i.k, i64 %i.i
  store i8 0, ptr %i.l, align 1, !tbaa !101
end_hunk_1
