Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/fitscore?download=true
inline.NumInlined: 175
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 26
begin_hunk_0_@ffchdu:bb.a
bb.e:                                             ; preds = %bb.d
  %i.r = call i32 @ffrdef(ptr noundef nonnull %0, ptr noundef %1) ; 0 uses
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !17
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.s = phi ptr [ %.pre, %bb.e ], [ %i.n, %bb.d ]
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 992
  %i.u = load i64, ptr %i.t, align 8, !tbaa !62
  %i.v = icmp sgt i64 %i.u, 0
  br i1 %i.v, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.w = call i32 @ffuptf(ptr noundef nonnull %0, ptr noundef %1) ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.x = call i32 @ffpdfl(ptr noundef nonnull %0, ptr noundef %1) ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.c, %bb.h, %bb.b
  %i.y = load ptr, ptr %i.d, align 8, !tbaa !17   ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !194
  %i.ab = icmp eq i32 %i.aa, 1
  br i1 %i.ab, label %bb.j, label %bb.q

bb.j:                                             ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 976
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !59 ; 2 uses
  %.not53 = icmp eq ptr %i.ad, null
  br i1 %.not53, label %bb.q, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @free(ptr noundef nonnull %i.ad) #28
  %i.ae = load ptr, ptr %i.d, align 8, !tbaa !17  ; 6 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 976
  store ptr null, ptr %i.af, align 8, !tbaa !59
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 1328
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !75
  %.not54 = icmp eq ptr %i.ah, null
  br i1 %.not54, label %bb.q, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 1176
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !54
  %i.ak = add nsw i64 %i.aj, -1
  %i.al = getelementptr inbounds nuw i8, ptr %i.ae, i64 1088
  %i.am = load i64, ptr %i.al, align 8, !tbaa !54
  %i.an = sdiv i64 %i.ak, %i.am                   ; 2 uses
  %i.ao = trunc i64 %i.an to i32
  %i.ap = icmp ult i32 %i.ao, 2147483647
  br i1 %i.ap, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.l
  %i.aq = add nuw nsw i64 %i.an, 1
  %wide.trip.count = and i64 %i.aq, 4294967295
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.p
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.p ] ; 3 uses
  %i.ar = load ptr, ptr %i.d, align 8, !tbaa !17  ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 1352
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !76
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %indvars.iv
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !77 ; 2 uses
  %.not56 = icmp eq ptr %i.av, null
  br i1 %.not56, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph
  call void @free(ptr noundef nonnull %i.av) #28
  %.pre60 = load ptr, ptr %i.d, align 8, !tbaa !17
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.lr.ph
  %i.aw = phi ptr [ %.pre60, %bb.m ], [ %i.ar, %.lr.ph ]
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 1360
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !78
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !77 ; 2 uses
  %.not57 = icmp eq ptr %i.ba, null
  br i1 %.not57, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @free(ptr noundef nonnull %i.ba) #28
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !193

._crit_edge.loopexit:                             ; preds = %bb.p
  %.pre61 = load ptr, ptr %i.d, align 8, !tbaa !17
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.l
  %i.bb = phi ptr [ %.pre61, %._crit_edge.loopexit ], [ %i.ae, %bb.l ]
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 1368
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !79
  call void @free(ptr noundef %i.bd) #28
  %i.be = load ptr, ptr %i.d, align 8, !tbaa !17
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 1344
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !80
  call void @free(ptr noundef %i.bg) #28
  %i.bh = load ptr, ptr %i.d, align 8, !tbaa !17
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 1336
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !81
  call void @free(ptr noundef %i.bj) #28
  %i.bk = load ptr, ptr %i.d, align 8, !tbaa !17
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 1360
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !78
  call void @free(ptr noundef %i.bm) #28
  %i.bn = load ptr, ptr %i.d, align 8, !tbaa !17
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 1352
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !76
  call void @free(ptr noundef %i.bp) #28
  %i.bq = load ptr, ptr %i.d, align 8, !tbaa !17
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 1328
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !75
  call void @free(ptr noundef %i.bs) #28
  %i.bt = load ptr, ptr %i.d, align 8, !tbaa !17  ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 1328
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bu, i8 0, i64 48, i1 false)
  br label %bb.q

bb.q:                                             ; preds = %bb.j, %._crit_edge, %bb.k, %bb.i
  %i.bv = phi ptr [ %i.y, %bb.j ], [ %i.bt, %._crit_edge ], [ %i.ae, %bb.k ], [ %i.y, %bb.i ]
  %i.bw = load i32, ptr %1, align 4, !tbaa !27    ; 3 uses
  %i.bx = icmp slt i32 %i.bw, 1
  %.not55 = icmp eq i32 %i.bw, 999
  %or.cond = or i1 %i.bx, %.not55
  br i1 %or.cond, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 84
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !35
  %i.ca = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 81, ptr noundef nonnull @.str.418, i32 noundef %i.bz) #28 ; 0 uses
  call void @ffxmsg(i32 noundef 5, ptr noundef nonnull %i.a)
  %.pre62 = load i32, ptr %1, align 4, !tbaa !27
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.cb = phi i32 [ %.pre62, %bb.r ], [ %i.bw, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret i32 %i.cb
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ffuptf(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [2 x i32], align 8                ; 5 uses
  %i.b = alloca [2 x i64], align 16               ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca [73 x i8], align 16               ; 6 uses
  %i.f = alloca [75 x i8], align 16               ; 5 uses
  %i.g = alloca [71 x i8], align 16               ; 7 uses
  %i.h = alloca [71 x i8], align 16               ; 10 uses
  %i.i = alloca [40 x i8], align 16               ; 5 uses
  %i.j = alloca [81 x i8], align 16               ; 4 uses
  %i.k = alloca [81 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #28
  %i.l = tail call i32 @ffmaky(ptr noundef %0, i32 noundef 2, ptr noundef %1) #28 ; 0 uses
  %i.m = call i32 @ffgkyjj(ptr noundef %0, ptr noundef nonnull @.str.419, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef %1) #28 ; 0 uses
  %i.n = call i32 @ffgkyj(ptr noundef %0, ptr noundef nonnull @.str.271, ptr noundef nonnull %i.c, ptr noundef nonnull %i.e, ptr noundef %1) #28 ; 0 uses
  %i.o = load i64, ptr %i.c, align 8, !tbaa !54
  %.not61 = icmp slt i64 %i.o, 1
  br i1 %.not61, label %._crit_edge67, label %.lr.ph66

.lr.ph66:                                         ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph66, %bb.t
  %indvars.iv = phi i64 [ 1, %.lr.ph66 ], [ %indvars.iv.next, %bb.t ] ; 4 uses
  %.04962 = phi i64 [ undef, %.lr.ph66 ], [ %.2, %bb.t ] ; 5 uses
  %i.q = trunc nuw nsw i64 %indvars.iv to i32
  %i.r = call i32 @ffkeyn(ptr noundef nonnull @.str.364, i32 noundef %i.q, ptr noundef nonnull %i.f, ptr noundef %1) ; 0 uses
  %i.s = call i32 @ffgkys(ptr noundef %0, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, ptr noundef nonnull %i.e, ptr noundef %1) #28
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(68) %i.k, ptr noundef nonnull align 1 dereferenceable(68) @.str.420, i64 68, i1 false)
  call void @ffxmsg(i32 noundef 5, ptr noundef nonnull %i.k)
  %i.u = load i32, ptr %1, align 4, !tbaa !27
  br label %bb.u

bb.d:                                             ; preds = %bb.b
  %i.v = load <2 x i8>, ptr %i.g, align 16
  %.fr79 = freeze <2 x i8> %i.v
  %2 = and <2 x i8> %.fr79, splat (i8 -2)
  %3 = icmp eq <2 x i8> %2, splat (i8 80)
  %4 = bitcast <2 x i1> %3 to i2
  %or.cond11.not = icmp eq i2 %4, 0
  br i1 %or.cond11.not, label %bb.t, label %.preheader

.preheader:                                       ; preds = %bb.d
  %i.w = load i64, ptr %i.d, align 8, !tbaa !43
  %.not4551 = icmp slt i64 %i.w, 1
  br i1 %.not4551, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.x = load i32, ptr %1, align 4, !tbaa !27
  %i.y = icmp sgt i32 %i.x, 0
  br i1 %i.y, label %._crit_edge.loopexit, label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph, %ffgdesll.exit
  %.054 = phi i64 [ %i.bq, %ffgdesll.exit ], [ 1, %.lr.ph ] ; 3 uses
  %.04053 = phi i64 [ %spec.select, %ffgdesll.exit ], [ 0, %.lr.ph ]
  %.152 = phi i64 [ %.4, %ffgdesll.exit ], [ %.04962, %.lr.ph ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 0, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.z = load i32, ptr %1, align 4, !tbaa !27
  %i.aa = icmp sgt i32 %i.z, 0
  br i1 %i.aa, label %ffgdesll.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph.split
  %i.ab = load i32, ptr %0, align 8, !tbaa !34    ; 2 uses
  %i.ac = load ptr, ptr %i.p, align 8, !tbaa !17  ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 84
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !35
  %.not.i = icmp eq i32 %i.ab, %i.ae
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = add nsw i32 %i.ab, 1
  %i.ag = call i32 @ffmahd(ptr noundef nonnull %0, i32 noundef %i.af, ptr noundef null, ptr noundef nonnull %1), !inline_history !198 ; 0 uses
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 136
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !47
  %i.aj = icmp eq i64 %i.ai, -1
  br i1 %i.aj, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ak = call i32 @ffrdef(ptr noundef nonnull %0, ptr noundef nonnull %1), !inline_history !198
  %i.al = icmp sgt i32 %i.ak, 0
  br i1 %i.al, label %ffgdesll.exit, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %i.am = load ptr, ptr %i.p, align 8, !tbaa !17  ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 976
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !59
  %i.ap = getelementptr [160 x i8], ptr %i.ao, i64 %indvars.iv ; 4 uses
  %i.aq = getelementptr i8, ptr %i.ap, i64 -80
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !64
  %i.as = icmp sgt i32 %i.ar, -1
  br i1 %i.as, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 317, ptr %1, align 4, !tbaa !27
  br label %ffgdesll.exit

bb.k:                                             ; preds = %bb.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.am, i64 136
  %i.au = load i64, ptr %i.at, align 8, !tbaa !47
  %i.av = getelementptr inbounds nuw i8, ptr %i.am, i64 968
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !74
  %i.ax = add nsw i64 %.054, -1
  %i.ay = mul nsw i64 %i.aw, %i.ax
  %i.az = add nsw i64 %i.ay, %i.au
  %i.ba = getelementptr i8, ptr %i.ap, i64 -88
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !69
  %i.bc = add nsw i64 %i.az, %i.bb                ; 2 uses
  %i.bd = getelementptr i8, ptr %i.ap, i64 -20
  %i.be = load i8, ptr %i.bd, align 4, !tbaa !29
  %i.bf = icmp eq i8 %i.be, 80
  br i1 %i.bf, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bg = getelementptr i8, ptr %i.ap, i64 -19
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !29
  %i.bi = icmp eq i8 %i.bh, 80
  br i1 %i.bi, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bj = call i32 @ffgi4b(ptr noundef nonnull %0, i64 noundef %i.bc, i64 noundef 2, i64 noundef 4, ptr noundef nonnull %i.a, ptr noundef nonnull %1) #28, !inline_history !198
  %i.bk = icmp slt i32 %i.bj, 1
  br i1 %i.bk, label %bb.n, label %ffgdesll.exit

bb.n:                                             ; preds = %bb.m
  %i.bl = load i32, ptr %i.a, align 8, !tbaa !27
  %i.bm = zext i32 %i.bl to i64
  br label %ffgdesll.exit

bb.o:                                             ; preds = %bb.l
  %i.bn = call i32 @ffgi8b(ptr noundef nonnull %0, i64 noundef %i.bc, i64 noundef 2, i64 noundef 8, ptr noundef nonnull %i.b, ptr noundef nonnull %1) #28, !inline_history !198
  %i.bo = icmp slt i32 %i.bn, 1
  %i.bp = load i64, ptr %i.b, align 16
  %spec.select50 = select i1 %i.bo, i64 %i.bp, i64 %.152
  br label %ffgdesll.exit

ffgdesll.exit:                                    ; preds = %bb.o, %bb.m, %bb.n, %bb.h, %.lr.ph.split, %bb.j
  %.4 = phi i64 [ %.152, %.lr.ph.split ], [ %.152, %bb.h ], [ %.152, %bb.j ], [ %i.bm, %bb.n ], [ %.152, %bb.m ], [ %spec.select50, %bb.o ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %spec.select = call i64 @llvm.smax.i64(i64 %.4, i64 %.04053) ; 2 uses
  %i.bq = add nuw nsw i64 %.054, 1
  %i.br = load i64, ptr %i.d, align 8, !tbaa !43
  %.not45.not = icmp slt i64 %.054, %i.br
  br i1 %.not45.not, label %.lr.ph.split, label %._crit_edge, !llvm.loop !195

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.bs = call i64 @llvm.smax.i64(i64 %.04962, i64 0)
  br label %._crit_edge

._crit_edge:                                      ; preds = %ffgdesll.exit, %._crit_edge.loopexit, %.preheader
  %.1.lcssa = phi i64 [ %.04962, %.preheader ], [ %.04962, %._crit_edge.loopexit ], [ %.4, %ffgdesll.exit ]
  %.040.lcssa = phi i64 [ 0, %.preheader ], [ %i.bs, %._crit_edge.loopexit ], [ %spec.select, %ffgdesll.exit ]
  store i16 39, ptr %i.h, align 16
  %i.bt = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.g, i32 noundef 40) #29 ; 2 uses
  %.not46 = icmp eq ptr %i.bt, null
  br i1 %.not46, label %bb.q, label %bb.p

bb.p:                                             ; preds = %._crit_edge
  store i8 0, ptr %i.bt, align 1, !tbaa !29
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %._crit_edge
  %i.bu = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.g) #29
  %i.bv = uitofp nneg i64 %.040.lcssa to double
  %i.bw = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.i, i64 noundef 40, ptr noundef nonnull @.str.421, double noundef %i.bv) #28 ; 0 uses
  %i.bx = shl i64 %i.bu, 32
  %i.by = ashr exact i64 %i.bx, 32
  %i.bz = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.i) #29
  %i.ca = add i64 %i.bz, -69
  %i.cb = add i64 %i.ca, %i.by
  %i.cc = icmp ult i64 %i.cb, -71
  br i1 %i.cc, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @ffxmsg(i32 noundef 5, ptr noundef nonnull @.str.422)
  store i32 261, ptr %1, align 4, !tbaa !27
  br label %bb.u

bb.s:                                             ; preds = %bb.q
  %i.cd = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %i.h, ptr noundef nonnull dereferenceable(1) %i.g) #28 ; 0 uses
  %i.ce = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %i.h, ptr noundef nonnull dereferenceable(1) %i.i) #28 ; 0 uses
  %i.cf = call i64 @strlen(ptr nonnull dereferenceable(1) %i.h) ; 3 uses
  %i.cg = icmp ult i64 %i.cf, 9
  br i1 %i.cg, label %.lr.ph58, label %._crit_edge59

.lr.ph58:                                         ; preds = %bb.s, %.lr.ph58
  %i.ch = phi i64 [ %i.ci, %.lr.ph58 ], [ %i.cf, %bb.s ]
  %endptr48 = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ch
  store i16 32, ptr %endptr48, align 1
  %i.ci = call i64 @strlen(ptr nonnull dereferenceable(1) %i.h) ; 3 uses
  %i.cj = icmp ult i64 %i.ci, 9
  br i1 %i.cj, label %.lr.ph58, label %._crit_edge59, !llvm.loop !196

._crit_edge59:                                    ; preds = %.lr.ph58, %bb.s
  %.lcssa = phi i64 [ %i.cf, %bb.s ], [ %i.ci, %.lr.ph58 ]
  %endptr = getelementptr inbounds i8, ptr %i.h, i64 %.lcssa
  store i16 39, ptr %endptr, align 1
  %i.ck = call i32 @ffmkky(ptr noundef nonnull %i.f, ptr noundef nonnull %i.h, ptr noundef nonnull %i.e, ptr noundef nonnull %i.j, ptr noundef %1) ; 0 uses
  %i.cl = call i32 @ffmkey(ptr noundef %0, ptr noundef nonnull %i.j, ptr noundef %1) ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %._crit_edge59, %bb.d
  %.2 = phi i64 [ %.1.lcssa, %._crit_edge59 ], [ %.04962, %bb.d ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.cm = load i64, ptr %i.c, align 8, !tbaa !54
  %.not.not = icmp sgt i64 %i.cm, %indvars.iv
  br i1 %.not.not, label %bb.b, label %._crit_edge67, !llvm.loop !197

._crit_edge67:                                    ; preds = %bb.t, %bb.a
  %i.cn = load i32, ptr %1, align 4, !tbaa !27
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge67, %bb.r, %bb.c
  %.042 = phi i32 [ %i.u, %bb.c ], [ 261, %bb.r ], [ %i.cn, %._crit_edge67 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  ret i32 %.042
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ffpdfl(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [2880 x i8], align 16             ; 7 uses
  %i.b = alloca i32, align 4                      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.c = load i32, ptr %1, align 4, !tbaa !27     ; 4 uses
  %i.d = icmp sgt i32 %i.c, 0
end_hunk_0
