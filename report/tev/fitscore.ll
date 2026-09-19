Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/fitscore?download=true
inline.NumInlined: 175
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 26
begin_hunk_0_@ffuptf:bb.a
  %.not.i = icmp eq i32 %i.af, %i.ai
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aj = add nsw i32 %i.af, 1
  %i.ak = call i32 @ffmahd(ptr noundef nonnull %0, i32 noundef %i.aj, ptr noundef null, ptr noundef nonnull %1), !inline_history !198 ; 0 uses
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 136
  %i.am = load i64, ptr %i.al, align 8, !tbaa !47
  %i.an = icmp eq i64 %i.am, -1
  br i1 %i.an, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ao = call i32 @ffrdef(ptr noundef nonnull %0, ptr noundef nonnull %1), !inline_history !198
  %i.ap = icmp sgt i32 %i.ao, 0
  br i1 %i.ap, label %ffgdesll.exit, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %i.aq = load ptr, ptr %i.p, align 8, !tbaa !17  ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 976
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !59
  %i.at = getelementptr [160 x i8], ptr %i.as, i64 %indvars.iv ; 4 uses
  %i.au = getelementptr i8, ptr %i.at, i64 -80
  %i.av = load i32, ptr %i.au, align 8, !tbaa !64
  %i.aw = icmp sgt i32 %i.av, -1
  br i1 %i.aw, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 317, ptr %1, align 4, !tbaa !27
  br label %ffgdesll.exit

bb.k:                                             ; preds = %bb.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aq, i64 136
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !47
  %i.az = getelementptr inbounds nuw i8, ptr %i.aq, i64 968
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !74
  %i.bb = add nsw i64 %.054, -1
  %i.bc = mul nsw i64 %i.ba, %i.bb
  %i.bd = add nsw i64 %i.bc, %i.ay
  %i.be = getelementptr i8, ptr %i.at, i64 -88
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !69
  %i.bg = add nsw i64 %i.bd, %i.bf                ; 2 uses
  %i.bh = getelementptr i8, ptr %i.at, i64 -20
  %i.bi = load i8, ptr %i.bh, align 4, !tbaa !29
  %i.bj = icmp eq i8 %i.bi, 80
  br i1 %i.bj, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bk = getelementptr i8, ptr %i.at, i64 -19
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !29
  %i.bm = icmp eq i8 %i.bl, 80
  br i1 %i.bm, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bn = call i32 @ffgi4b(ptr noundef nonnull %0, i64 noundef %i.bg, i64 noundef 2, i64 noundef 4, ptr noundef nonnull %i.a, ptr noundef nonnull %1) #28, !inline_history !198
  %i.bo = icmp slt i32 %i.bn, 1
  br i1 %i.bo, label %bb.n, label %ffgdesll.exit

bb.n:                                             ; preds = %bb.m
  %i.bp = load i32, ptr %i.a, align 8, !tbaa !27
  %i.bq = zext i32 %i.bp to i64
  br label %ffgdesll.exit

bb.o:                                             ; preds = %bb.l
  %i.br = call i32 @ffgi8b(ptr noundef nonnull %0, i64 noundef %i.bg, i64 noundef 2, i64 noundef 8, ptr noundef nonnull %i.b, ptr noundef nonnull %1) #28, !inline_history !198
  %i.bs = icmp slt i32 %i.br, 1
  %i.bt = load i64, ptr %i.b, align 16
  %spec.select50 = select i1 %i.bs, i64 %i.bt, i64 %.152
  br label %ffgdesll.exit

ffgdesll.exit:                                    ; preds = %bb.o, %bb.m, %bb.n, %bb.h, %.lr.ph.split, %bb.j
  %.4 = phi i64 [ %.152, %.lr.ph.split ], [ %.152, %bb.h ], [ %.152, %bb.j ], [ %i.bq, %bb.n ], [ %.152, %bb.m ], [ %spec.select50, %bb.o ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %spec.select = call i64 @llvm.smax.i64(i64 %.4, i64 %.04053) ; 2 uses
  %i.bu = add nuw nsw i64 %.054, 1
  %i.bv = load i64, ptr %i.d, align 8, !tbaa !43
  %.not45.not = icmp slt i64 %.054, %i.bv
  br i1 %.not45.not, label %.lr.ph.split, label %._crit_edge, !llvm.loop !195

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.bw = call i64 @llvm.smax.i64(i64 %.04962, i64 0)
  br label %._crit_edge

._crit_edge:                                      ; preds = %ffgdesll.exit, %._crit_edge.loopexit, %.preheader
  %.1.lcssa = phi i64 [ %.04962, %.preheader ], [ %.04962, %._crit_edge.loopexit ], [ %.4, %ffgdesll.exit ]
  %.040.lcssa = phi i64 [ 0, %.preheader ], [ %i.bw, %._crit_edge.loopexit ], [ %spec.select, %ffgdesll.exit ]
  store i16 39, ptr %i.h, align 16
  %i.bx = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.g, i32 noundef 40) #29 ; 2 uses
  %.not46 = icmp eq ptr %i.bx, null
  br i1 %.not46, label %bb.q, label %bb.p

bb.p:                                             ; preds = %._crit_edge
  store i8 0, ptr %i.bx, align 1, !tbaa !29
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %._crit_edge
  %i.by = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.g) #29
  %i.bz = uitofp nneg i64 %.040.lcssa to double
  %i.ca = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.i, i64 noundef 40, ptr noundef nonnull @.str.421, double noundef %i.bz) #28 ; 0 uses
  %sext = shl i64 %i.by, 32
  %i.cb = ashr exact i64 %sext, 32
  %i.cc = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.i) #29
  %i.cd = add i64 %i.cc, -69
  %i.ce = add i64 %i.cd, %i.cb
  %i.cf = icmp ult i64 %i.ce, -71
  br i1 %i.cf, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @ffxmsg(i32 noundef 5, ptr noundef nonnull @.str.422)
  store i32 261, ptr %1, align 4, !tbaa !27
  br label %bb.u

bb.s:                                             ; preds = %bb.q
  %i.cg = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %i.h, ptr noundef nonnull dereferenceable(1) %i.g) #28 ; 0 uses
  %i.ch = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %i.h, ptr noundef nonnull dereferenceable(1) %i.i) #28 ; 0 uses
  %i.ci = call i64 @strlen(ptr nonnull dereferenceable(1) %i.h) ; 3 uses
  %i.cj = icmp ult i64 %i.ci, 9
  br i1 %i.cj, label %.lr.ph58, label %._crit_edge59

.lr.ph58:                                         ; preds = %bb.s, %.lr.ph58
  %i.ck = phi i64 [ %i.cl, %.lr.ph58 ], [ %i.ci, %bb.s ]
  %endptr48 = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ck
  store i16 32, ptr %endptr48, align 1
  %i.cl = call i64 @strlen(ptr nonnull dereferenceable(1) %i.h) ; 3 uses
  %i.cm = icmp ult i64 %i.cl, 9
  br i1 %i.cm, label %.lr.ph58, label %._crit_edge59, !llvm.loop !196

._crit_edge59:                                    ; preds = %.lr.ph58, %bb.s
  %.lcssa = phi i64 [ %i.ci, %bb.s ], [ %i.cl, %.lr.ph58 ]
  %endptr = getelementptr inbounds i8, ptr %i.h, i64 %.lcssa
  store i16 39, ptr %endptr, align 1
  %i.cn = call i32 @ffmkky(ptr noundef nonnull %i.f, ptr noundef nonnull %i.h, ptr noundef nonnull %i.e, ptr noundef nonnull %i.j, ptr noundef %1) ; 0 uses
  %i.co = call i32 @ffmkey(ptr noundef %0, ptr noundef nonnull %i.j, ptr noundef %1) ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %._crit_edge59, %bb.d
  %.2 = phi i64 [ %.1.lcssa, %._crit_edge59 ], [ %.04962, %bb.d ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.cp = load i64, ptr %i.c, align 8, !tbaa !54
  %.not.not = icmp sgt i64 %i.cp, %indvars.iv
  br i1 %.not.not, label %bb.b, label %._crit_edge67, !llvm.loop !197

._crit_edge67:                                    ; preds = %bb.t, %bb.a
  %i.cq = load i32, ptr %1, align 4, !tbaa !27
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge67, %bb.r, %bb.c
  %.042 = phi i32 [ %i.u, %bb.c ], [ 261, %bb.r ], [ %i.cq, %._crit_edge67 ]
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
  br i1 %i.d, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %0, align 8, !tbaa !34
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !17   ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 84
  %i.i = load i32, ptr %i.h, align 4, !tbaa !35
  %.not = icmp eq i32 %i.e, %i.i
  br i1 %.not, label %bb.c, label %bb.m

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 984
  %i.k = load i64, ptr %i.j, align 8, !tbaa !73   ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %bb.m, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 136
  %i.n = load i64, ptr %i.m, align 8, !tbaa !47
  %i.o = add nsw i64 %i.n, %i.k
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 992
  %i.q = load i64, ptr %i.p, align 8, !tbaa !62
  %i.r = add nsw i64 %i.o, %i.q
  %.fr52 = freeze i64 %i.r                        ; 5 uses
  %i.s = add i64 %.fr52, 2879
  %i.t = srem i64 %i.s, 2880                      ; 3 uses
  %i.u = trunc nsw i64 %i.t to i32
  %i.v = sub nsw i32 2879, %i.u                   ; 4 uses
  %i.w = icmp slt i64 %i.t, 0
  br i1 %i.w, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 264, ptr %1, align 4, !tbaa !27
  br label %bb.m

bb.f:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  %i.y = load i32, ptr %i.x, align 8, !tbaa !48
  %i.z = icmp eq i32 %i.y, 1
  %. = select i1 %i.z, i8 32, i8 0                ; 2 uses
  store i32 0, ptr %i.b, align 4, !tbaa !27
  %.not53 = icmp eq i64 %i.t, 2879
  br i1 %.not53, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.aa = add nsw i64 %.fr52, -1                  ; 2 uses
  %i.ab = call i32 @ffmbyt(ptr noundef nonnull %0, i64 noundef %i.aa, i32 noundef 0, ptr noundef nonnull %i.b) #28 ; 0 uses
  %i.ac = call i32 @ffgbyt(ptr noundef nonnull %0, i64 noundef 1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #28 ; 0 uses
  %i.ad = load i32, ptr %i.b, align 4, !tbaa !27
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.af = load i32, ptr %1, align 4, !tbaa !27
  br label %bb.m

bb.i:                                             ; preds = %bb.f
  %i.ag = call i32 @ffmbyt(ptr noundef nonnull %0, i64 noundef %.fr52, i32 noundef 0, ptr noundef nonnull %i.b) #28 ; 0 uses
  %i.ah = zext nneg i32 %i.v to i64               ; 2 uses
  %i.ai = call i32 @ffgbyt(ptr noundef nonnull %0, i64 noundef %i.ah, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #28 ; 0 uses
  %i.aj = load i32, ptr %i.b, align 4, !tbaa !27
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %.lr.ph, label %bb.k

.lr.ph:                                           ; preds = %bb.i, %bb.j
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.j ], [ 0, %bb.i ] ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv
  %i.am = load i8, ptr %i.al, align 1, !tbaa !29
  %.not54 = icmp eq i8 %i.am, %.
  br i1 %.not54, label %bb.j, label %._crit_edge

bb.j:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.ah
  br i1 %exitcond.not, label %._crit_edge.thread, label %.lr.ph, !llvm.loop !200

._crit_edge:                                      ; preds = %.lr.ph
  %2 = trunc nuw nsw i64 %indvars.iv to i32
  %i.an = icmp eq i32 %i.v, %2
  br i1 %i.an, label %._crit_edge.thread, label %bb.k

._crit_edge.thread:                               ; preds = %bb.j, %._crit_edge
  %i.ao = load i32, ptr %1, align 4, !tbaa !27
  br label %bb.m

bb.k:                                             ; preds = %bb.i, %._crit_edge, %bb.g
  %.046 = phi i64 [ %.fr52, %._crit_edge ], [ %.fr52, %bb.i ], [ %i.aa, %bb.g ]
  %.045 = phi i32 [ %i.v, %._crit_edge ], [ %i.v, %bb.i ], [ 1, %bb.g ]
  %i.ap = zext nneg i32 %.045 to i64              ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.a, i8 %., i64 %i.ap, i1 false)
  %i.aq = call i32 @ffmbyt(ptr noundef nonnull %0, i64 noundef %.046, i32 noundef 1, ptr noundef nonnull %1) #28 ; 0 uses
  %i.ar = call i32 @ffpbyt(ptr noundef nonnull %0, i64 noundef %i.ap, ptr noundef nonnull %i.a, ptr noundef nonnull %1) #28 ; 0 uses
  %i.as = load i32, ptr %1, align 4, !tbaa !27    ; 2 uses
  %i.at = icmp sgt i32 %i.as, 0
  br i1 %i.at, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @ffxmsg(i32 noundef 5, ptr noundef nonnull @.str.426)
  %.pre = load i32, ptr %1, align 4, !tbaa !27
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %bb.c, %bb.b, %bb.a, %._crit_edge.thread, %bb.h, %bb.e
  %.048 = phi i32 [ %i.af, %bb.h ], [ %i.c, %bb.a ], [ %i.c, %bb.b ], [ 264, %bb.e ], [ %i.ao, %._crit_edge.thread ], [ %i.c, %bb.c ], [ %.pre, %bb.l ], [ %i.as, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret i32 %.048
}

declare i32 @ffgkyj(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #14

; Function Attrs: nounwind uwtable
define dso_local i32 @ffhdef(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = load i32, ptr %2, align 4, !tbaa !27     ; 2 uses
  %i.b = icmp sgt i32 %i.a, 0
  %i.c = icmp slt i32 %1, 1
  %or.cond = or i1 %i.c, %i.b
  br i1 %or.cond, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %0, align 8, !tbaa !34     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !17   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 84
  %i.h = load i32, ptr %i.g, align 4, !tbaa !35
  %.not = icmp eq i32 %i.d, %i.h
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = add nsw i32 %i.d, 1
  %i.j = tail call i32 @ffmahd(ptr noundef nonnull %0, i32 noundef %i.i, ptr noundef null, ptr noundef nonnull %2) ; 0 uses
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 136
  %i.l = load i64, ptr %i.k, align 8, !tbaa !47
  %i.m = icmp eq i64 %i.l, -1
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = tail call i32 @ffrdef(ptr noundef nonnull %0, ptr noundef nonnull %2) ; 0 uses
  %i.o = load ptr, ptr %i.e, align 8, !tbaa !17   ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 112
  %i.q = load i64, ptr %i.p, align 8, !tbaa !45
  %i.r = mul nuw nsw i32 %1, 80
  %i.s = zext nneg i32 %i.r to i64
  %i.t = add nsw i64 %i.q, %i.s
  %.fr = freeze i64 %i.t                          ; 2 uses
  %i.u = srem i64 %.fr, 2880
  %i.v = sub nsw i64 %.fr, %i.u
  %i.w = add i64 %i.v, 2880                       ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 136 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !47
  %i.z = sub i64 %i.w, %i.y
  store i64 %i.w, ptr %i.x, align 8, !tbaa !47
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 104
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !41
  %i.ac = getelementptr inbounds nuw i8, ptr %i.o, i64 84
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !35
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr [8 x i8], ptr %i.ab, i64 %i.ae
  %i.ag = getelementptr i8, ptr %i.af, i64 8      ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !43
  %i.ai = add nsw i64 %i.z, %i.ah
  store i64 %i.ai, ptr %i.ag, align 8, !tbaa !43
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %i.aj = load i32, ptr %2, align 4, !tbaa !27
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f
  %.0 = phi i32 [ %i.aj, %bb.f ], [ %i.a, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ffchfl(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [81 x i8], align 16               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.b = load i32, ptr %1, align 4, !tbaa !27     ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %0, align 8, !tbaa !34     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !17   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 84
  %i.h = load i32, ptr %i.g, align 4, !tbaa !35
  %.not = icmp eq i32 %i.d, %i.h
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = add nsw i32 %i.d, 1
  %i.j = tail call i32 @ffmahd(ptr noundef nonnull %0, i32 noundef %i.i, ptr noundef null, ptr noundef nonnull %1) ; 0 uses
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !17
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = phi ptr [ %.pre, %bb.c ], [ %i.f, %bb.b ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 112
  %i.m = load i64, ptr %i.l, align 8, !tbaa !45   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 136
  %i.o = load i64, ptr %i.n, align 8, !tbaa !47
  %i.p = sub nsw i64 %i.o, %i.m
  %i.q = sdiv i64 %i.p, 80
  %i.r = trunc i64 %i.q to i32                    ; 2 uses
  %i.s = tail call i32 @ffmbyt(ptr noundef nonnull %0, i64 noundef %i.m, i32 noundef 1, ptr noundef nonnull %1) #28 ; 0 uses
  %i.t = icmp sgt i32 %i.r, 0
  br i1 %i.t, label %.lr.ph, label %._crit_edge.sink.split

.lr.ph:                                           ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.f

bb.e:                                             ; preds = %bb.l
  %i.v = add nuw nsw i32 %.02839, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.v, %i.r
  br i1 %exitcond.not, label %._crit_edge, label %bb.f, !llvm.loop !201

bb.f:                                             ; preds = %.lr.ph, %bb.e
  %.040 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.e ]
  %.02839 = phi i32 [ 0, %.lr.ph ], [ %i.v, %bb.e ]
  %i.w = call i32 @ffgbyt(ptr noundef nonnull %0, i64 noundef 80, ptr noundef nonnull %i.a, ptr noundef nonnull %1) #28 ; 0 uses
  %lhsv = load i64, ptr %i.a, align 16
  %.not33 = icmp eq i64 %lhsv, 2314885530820824645
  %.not34 = icmp eq i32 %.040, 0                  ; 2 uses
  br i1 %.not33, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  br i1 %.not34, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 254, ptr %1, align 4, !tbaa !27
  call void @ffxmsg(i32 noundef 5, ptr noundef nonnull @.str.428)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(72) %i.u, ptr noundef nonnull dereferenceable(72) getelementptr inbounds nuw (i8, ptr @.str.427, i64 8), i64 72)
  %.not35 = icmp eq i32 %bcmp, 0
  br i1 %.not35, label %bb.l, label %.sink.split

bb.j:                                             ; preds = %bb.f
  br i1 %.not34, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %bcmp37 = call i32 @bcmp(ptr noundef nonnull dereferenceable(80) %i.a, ptr noundef nonnull dereferenceable(80) @.str.427, i64 80)
  %.not38 = icmp eq i32 %bcmp37, 0
  br i1 %.not38, label %bb.l, label %.sink.split

.sink.split:                                      ; preds = %bb.k, %bb.i
  %.sink = phi i32 [ 253, %bb.i ], [ 254, %bb.k ]
  %.str.430.sink = phi ptr [ @.str.429, %bb.i ], [ @.str.430, %bb.k ]
  store i32 %.sink, ptr %1, align 4, !tbaa !27
  call void @ffxmsg(i32 noundef 5, ptr noundef nonnull %.str.430.sink)
  br label %bb.l

bb.l:                                             ; preds = %.sink.split, %bb.j, %bb.k, %bb.i
  %.1 = phi i32 [ 1, %bb.i ], [ 1, %bb.k ], [ 0, %bb.j ], [ 1, %.sink.split ]
  %i.x = load i32, ptr %1, align 4, !tbaa !27     ; 2 uses
  %i.y = icmp sgt i32 %i.x, 0
  br i1 %i.y, label %bb.m, label %bb.e

bb.m:                                             ; preds = %bb.l
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store i8 0, ptr %i.z, align 16, !tbaa !29
  call void @ffxmsg(i32 noundef 5, ptr noundef nonnull %i.a)
  br label %._crit_edge.sink.split

._crit_edge.sink.split:                           ; preds = %bb.d, %bb.m
  %.pre41 = load i32, ptr %1, align 4, !tbaa !27
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.e, %._crit_edge.sink.split, %bb.a
  %.029 = phi i32 [ %i.b, %bb.a ], [ %.pre41, %._crit_edge.sink.split ], [ %i.x, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret i32 %.029
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ffcdfl(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [2880 x i8], align 16             ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
end_hunk_0
begin_hunk_1_@ffc2d:bb.a

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr noundef captures(none), i32 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare i64 @strtoull(ptr noundef readonly, ptr noundef captures(none), i32 noundef) local_unnamed_addr #13

; Function Attrs: nounwind
declare ptr @localeconv() local_unnamed_addr #7

; Function Attrs: nofree nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -1, 2) i32 @fits_strcasecmp(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #24 {
bb.a:
  %i.a = tail call ptr @__ctype_toupper_loc() #30
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33   ; 4 uses
  %i.c = load i8, ptr %0, align 1, !tbaa !29
  %i.d = sext i8 %i.c to i64
  %i.e = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.d
  %i.f = load i32, ptr %i.e, align 4, !tbaa !27
  %i.g = load i8, ptr %1, align 1, !tbaa !29
  %i.h = sext i8 %i.g to i64
  %i.i = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.h
  %i.j = load i32, ptr %i.i, align 4, !tbaa !27
  %sext18 = shl i32 %i.f, 24                      ; 2 uses
  %i.k = ashr exact i32 %sext18, 24               ; 2 uses
  %sext1719 = shl i32 %i.j, 24
  %i.l = ashr exact i32 %sext1719, 24             ; 2 uses
  %i.m = icmp slt i32 %i.k, %i.l
  br i1 %i.m, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %i.n = phi i32 [ %i.ac, %bb.c ], [ %i.l, %bb.a ]
  %i.o = phi i32 [ %i.ab, %bb.c ], [ %i.k, %bb.a ]
  %sext22 = phi i32 [ %sext, %bb.c ], [ %sext18, %bb.a ]
  %.01321 = phi ptr [ %i.r, %bb.c ], [ %0, %bb.a ]
  %.01420 = phi ptr [ %i.s, %bb.c ], [ %1, %bb.a ]
  %i.p = icmp sgt i32 %i.o, %i.n
  br i1 %i.p, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.q = icmp eq i32 %sext22, 0
  br i1 %i.q, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %.01321, i64 1 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.01420, i64 1 ; 2 uses
  %i.t = load i8, ptr %i.r, align 1, !tbaa !29
  %i.u = sext i8 %i.t to i64
  %i.v = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !27
  %i.x = load i8, ptr %i.s, align 1, !tbaa !29
  %i.y = sext i8 %i.x to i64
  %i.z = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !27
  %sext = shl i32 %i.w, 24                        ; 2 uses
  %i.ab = ashr exact i32 %sext, 24                ; 2 uses
  %sext17 = shl i32 %i.aa, 24
  %i.ac = ashr exact i32 %sext17, 24              ; 2 uses
  %i.ad = icmp slt i32 %i.ab, %i.ac
  br i1 %i.ad, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.c, %.lr.ph, %bb.b, %bb.a
  %.0 = phi i32 [ -1, %bb.a ], [ 0, %bb.b ], [ 1, %.lr.ph ], [ -1, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nofree nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -1, 2) i32 @fits_strncasecmp(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #24 {
bb.a:
  %.not20 = icmp eq i64 %2, 0
  br i1 %.not20, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = tail call ptr @__ctype_toupper_loc() #30
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33   ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph
  %.in = phi i64 [ %2, %.lr.ph ], [ %i.c, %bb.d ]
  %.01422 = phi ptr [ %0, %.lr.ph ], [ %i.q, %bb.d ] ; 2 uses
  %.01521 = phi ptr [ %1, %.lr.ph ], [ %i.r, %bb.d ] ; 2 uses
  %i.c = add i64 %.in, -1                         ; 2 uses
  %i.d = load i8, ptr %.01422, align 1, !tbaa !29
  %i.e = sext i8 %i.d to i64
  %i.f = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.e
  %i.g = load i32, ptr %i.f, align 4, !tbaa !27
  %i.h = load i8, ptr %.01521, align 1, !tbaa !29
  %i.i = sext i8 %i.h to i64
  %i.j = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !27
  %sext = shl i32 %i.g, 24                        ; 2 uses
  %i.l = ashr exact i32 %sext, 24                 ; 2 uses
  %sext19 = shl i32 %i.k, 24
  %i.m = ashr exact i32 %sext19, 24               ; 2 uses
  %i.n = icmp slt i32 %i.l, %i.m
  br i1 %i.n, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = icmp sgt i32 %i.l, %i.m
  br i1 %i.o, label %._crit_edge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = icmp eq i32 %sext, 0
  %i.q = getelementptr inbounds nuw i8, ptr %.01422, i64 1
  %i.r = getelementptr inbounds nuw i8, ptr %.01521, i64 1
  %.not = icmp eq i64 %i.c, 0
  %or.cond = select i1 %i.p, i1 true, i1 %.not
  br i1 %or.cond, label %._crit_edge, label %bb.b, !llvm.loop !232

._crit_edge:                                      ; preds = %bb.b, %bb.c, %bb.d, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ -1, %bb.b ], [ 1, %bb.c ], [ 0, %bb.d ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define dso_local noundef ptr @fits_recalloc(ptr noundef captures(address_is_null, ret: address, provenance) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #25 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq i64 %1, 0
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias ptr @calloc(i64 noundef %2, i64 noundef %3) #32
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.d = icmp eq i64 %2, %1
  br i1 %i.d, label %bb.l, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = icmp eq i64 %2, 0
  br i1 %i.e, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @free(ptr noundef nonnull %0) #28
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  %i.f = icmp ult i64 %2, %1
  %i.g = mul i64 %3, %2
  %i.h = tail call ptr @realloc(ptr noundef nonnull %0, i64 noundef %i.g) #31 ; 4 uses
  %.not36 = icmp eq ptr %i.h, null                ; 2 uses
  br i1 %i.f, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  br i1 %.not36, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  tail call void @free(ptr noundef nonnull %0) #28
  br label %bb.l

bb.i:                                             ; preds = %bb.f
  br i1 %.not36, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @free(ptr noundef nonnull %0) #28
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.i = mul i64 %3, %1
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.i
  %i.k = sub nuw i64 %2, %1
  %i.l = mul i64 %i.k, %3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.j, i8 0, i64 %i.l, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %bb.g, %bb.h, %bb.c, %bb.k, %bb.j, %bb.e, %bb.b
  %.0 = phi ptr [ %i.c, %bb.b ], [ null, %bb.j ], [ null, %bb.e ], [ %0, %bb.c ], [ %i.h, %bb.k ], [ null, %bb.h ], [ %i.h, %bb.g ]
  ret ptr %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #18

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #24 = { nofree nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #28 = { nounwind }
attributes #29 = { nounwind willreturn memory(read) }
attributes #30 = { nounwind willreturn memory(none) }
attributes #31 = { nounwind allocsize(1) }
attributes #32 = { nounwind allocsize(0,1) }
attributes #33 = { nounwind allocsize(0) }

!llvm.module.flags = !{!4, !5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!12}

!0 = distinct !{!0, !31}
!1 = distinct !{!1, !31}
!2 = distinct !{!2, !31}
!3 = distinct !{!3, !31}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"PIE Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"omnipotent char", !8, i64 0}
!10 = !{!"int", !9, i64 0}
!11 = !{!"__libc_errno", !10, i64 0}
!12 = !{!11, !10, i64 0}
!13 = !{!"float", !9, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!"any pointer", !9, i64 0}
!16 = !{!"", !10, i64 0, !15, i64 8}
!17 = !{!16, !15, i64 8}
!18 = !{!"p1 omnipotent char", !15, i64 0}
!19 = !{!"long long", !9, i64 0}
!20 = !{!"p1 long long", !15, i64 0}
!21 = !{!"long", !9, i64 0}
!22 = !{!"double", !9, i64 0}
!23 = !{!"p1 int", !15, i64 0}
!24 = !{!"p1 long", !15, i64 0}
!25 = !{!"any p2 pointer", !15, i64 0}
!26 = !{!"", !10, i64 0, !10, i64 4, !10, i64 8, !18, i64 16, !10, i64 24, !10, i64 28, !10, i64 32, !19, i64 40, !19, i64 48, !10, i64 56, !19, i64 64, !19, i64 72, !10, i64 80, !10, i64 84, !10, i64 88, !10, i64 92, !10, i64 96, !10, i64 100, !20, i64 104, !19, i64 112, !19, i64 120, !19, i64 128, !19, i64 136, !10, i64 144, !9, i64 152, !10, i64 944, !10, i64 948, !19, i64 952, !19, i64 960, !19, i64 968, !15, i64 976, !19, i64 984, !19, i64 992, !10, i64 1000, !9, i64 1008, !13, i64 1056, !10, i64 1060, !10, i64 1064, !10, i64 1068, !10, i64 1072, !13, i64 1076, !10, i64 1080, !10, i64 1084, !9, i64 1088, !13, i64 1136, !10, i64 1140, !10, i64 1144, !10, i64 1148, !9, i64 1152, !10, i64 1164, !10, i64 1168, !9, i64 1176, !21, i64 1224, !21, i64 1232, !10, i64 1240, !10, i64 1244, !10, i64 1248, !10, i64 1252, !10, i64 1256, !10, i64 1260, !22, i64 1264, !22, i64 1272, !22, i64 1280, !22, i64 1288, !22, i64 1296, !10, i64 1304, !10, i64 1308, !10, i64 1312, !13, i64 1316, !10, i64 1320, !23, i64 1328, !24, i64 1336, !23, i64 1344, !25, i64 1352, !25, i64 1360, !23, i64 1368, !18, i64 1376, !9, i64 1384, !9, i64 1704, !9, i64 1864}
!27 = !{!10, !10, i64 0}
!28 = !{!26, !10, i64 92}
!29 = !{!9, !9, i64 0}
!30 = !{!18, !18, i64 0}
!31 = !{!"llvm.loop.mustprogress"}
!32 = !{!"llvm.loop.unroll.disable"}
!33 = !{!23, !23, i64 0}
!34 = !{!16, !10, i64 0}
!35 = !{!26, !10, i64 84}
!36 = !{!"llvm.loop.isvectorized", i32 1}
!37 = !{!"llvm.loop.unroll.runtime.disable"}
!38 = !{!"branch_weights", i32 8, i32 24}
!39 = !{!26, !19, i64 128}
!40 = !{!26, !10, i64 100}
!41 = !{!26, !20, i64 104}
!42 = !{!26, !10, i64 96}
!43 = !{!19, !19, i64 0}
!44 = !{!26, !19, i64 48}
!45 = !{!26, !19, i64 112}
!46 = !{ptr @ffghdt}
!47 = !{!26, !19, i64 136}
!48 = !{!26, !10, i64 88}
!49 = !{!26, !10, i64 1148}
!50 = !{!"p1 short", !15, i64 0}
!51 = !{!50, !50, i64 0}
!52 = !{!"short", !9, i64 0}
!53 = !{!52, !52, i64 0}
!54 = !{!21, !21, i64 0}
!55 = !{!"lconv", !18, i64 0, !18, i64 8, !18, i64 16, !18, i64 24, !18, i64 32, !18, i64 40, !18, i64 48, !18, i64 56, !18, i64 64, !18, i64 72, !9, i64 80, !9, i64 81, !9, i64 82, !9, i64 83, !9, i64 84, !9, i64 85, !9, i64 86, !9, i64 87, !9, i64 88, !9, i64 89, !9, i64 90, !9, i64 91, !9, i64 92, !9, i64 93}
!56 = !{!55, !18, i64 0}
!57 = !{!22, !22, i64 0}
!58 = !{!26, !10, i64 944}
!59 = !{!26, !15, i64 976}
!60 = !{!26, !19, i64 960}
!61 = !{!26, !19, i64 952}
!62 = !{!26, !19, i64 992}
!63 = !{!"", !9, i64 0, !19, i64 72, !10, i64 80, !19, i64 88, !22, i64 96, !22, i64 104, !19, i64 112, !9, i64 120, !9, i64 140, !21, i64 152}
!64 = !{!63, !10, i64 80}
!65 = !{!63, !21, i64 152}
!66 = !{!63, !19, i64 88}
!67 = !{!63, !22, i64 104}
!68 = !{!63, !22, i64 96}
!69 = !{!63, !19, i64 72}
!70 = !{!63, !19, i64 112}
!71 = !{!26, !10, i64 56}
!72 = !{!26, !10, i64 144}
!73 = !{!26, !19, i64 984}
!74 = !{!26, !19, i64 968}
!75 = !{!26, !23, i64 1328}
!76 = !{!26, !25, i64 1352}
!77 = !{!15, !15, i64 0}
!78 = !{!26, !25, i64 1360}
!79 = !{!26, !23, i64 1368}
!80 = !{!26, !23, i64 1344}
!81 = !{!26, !24, i64 1336}
!82 = !{!26, !10, i64 4}
!83 = !{!26, !19, i64 120}
!84 = !{!26, !10, i64 1168}
!85 = !{!26, !18, i64 16}
!86 = distinct !{!86, !32}
!87 = distinct !{!87, !31}
!88 = distinct !{!88, !32}
!89 = distinct !{!89, !31}
!90 = distinct !{!90, !32}
!91 = distinct !{!91, !31}
!92 = distinct !{!92, !31}
!93 = distinct !{!93, !31}
!94 = distinct !{!94, !31, !36, !37}
!95 = distinct !{!95, !31, !36, !37}
!96 = distinct !{!96, !31, !37, !36}
!97 = distinct !{!97, !31}
!98 = distinct !{!98, !32}
!99 = distinct !{!99, !31}
!100 = !{ptr @ffgext}
!101 = distinct !{!101, !31}
!102 = distinct !{!102, !31}
!103 = distinct !{!103, !31}
!104 = distinct !{!104, !31}
!105 = distinct !{!105, !31}
!106 = distinct !{!106, !31}
!107 = distinct !{!107, !32}
!108 = distinct !{!108, !32}
!109 = distinct !{!109, !31}
!110 = distinct !{!110, !31}
!111 = distinct !{!111, !31}
!112 = distinct !{!112, !31}
!113 = distinct !{!113, !31}
!114 = distinct !{!114, !31}
!115 = distinct !{!115, !31}
!116 = distinct !{!116, !31}
!117 = distinct !{!117, !31, !36, !37}
!118 = distinct !{!118, !31, !36, !37}
!119 = distinct !{!119, !31, !37, !36}
!120 = distinct !{!120, !31}
!121 = distinct !{!121, !31}
!122 = distinct !{!122, !31}
!123 = distinct !{!123, !31}
!124 = distinct !{!124, !31}
!125 = distinct !{!125, !31}
!126 = distinct !{!126, !31}
!127 = distinct !{!127, !31}
!128 = distinct !{!128, !31}
!129 = distinct !{!129, !32}
!130 = distinct !{!130, !31}
!131 = distinct !{!131, !32}
!132 = distinct !{!132, !31}
!133 = distinct !{!133, !31}
!134 = distinct !{!134, !32}
!135 = distinct !{!135, !31}
!136 = distinct !{!136, !31}
!137 = distinct !{!137, !31}
!138 = distinct !{!138, !31}
!139 = distinct !{!139, !31}
!140 = !{!26, !10, i64 948}
!141 = distinct !{!141, !31}
!142 = distinct !{!142, !31}
!143 = distinct !{!143, !32}
!144 = distinct !{!144, !32}
!145 = distinct !{!145, !31}
!146 = distinct !{!146, !31}
!147 = distinct !{!147, !31}
!148 = distinct !{!148, !31}
!149 = distinct !{!149, !32}
end_hunk_1
