Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/acecCl?download=true
inline.NumInlined: 276
inline.NumDeleted: 54
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@Acec_CollectXorTops:bb.a
  br label %Vec_IntGrow.exit11.sink.split.i

bb.k:                                             ; preds = %bb.g
  %i.bb = icmp samesign ult i32 %i.u, 1073741823
  %i.bc = shl nuw nsw i32 %i.u, 1
  %spec.select.i = select i1 %i.bb, i32 %i.bc, i32 2147483647 ; 4 uses
  %.not.i9.i = icmp samesign ult i32 %i.u, %spec.select.i
  br i1 %.not.i9.i, label %bb.l, label %Vec_IntPush.exit

bb.l:                                             ; preds = %bb.k
  %.not9.i10.i = icmp eq ptr %i.t, null
  %i.bd = zext nneg i32 %spec.select.i to i64
  %i.be = shl nuw nsw i64 %i.bd, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bf = call ptr @realloc(ptr noundef nonnull %i.t, i64 noundef %i.be) #23
  br label %Vec_IntGrow.exit11.sink.split.i

bb.n:                                             ; preds = %bb.l
  %i.bg = call noalias ptr @malloc(i64 noundef %i.be) #22
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.m, %bb.n, %bb.i, %bb.j
  %storemerge = phi ptr [ %i.ba, %bb.j ], [ %i.az, %bb.i ], [ %i.bf, %bb.m ], [ %i.bg, %bb.n ] ; 3 uses
  %spec.select.sink.i = phi i32 [ 16, %bb.j ], [ 16, %bb.i ], [ %spec.select.i, %bb.m ], [ %spec.select.i, %bb.n ]
  store ptr %storemerge, ptr %i.p, align 8, !tbaa !8
  store i32 %spec.select.sink.i, ptr %i.i, align 8, !tbaa !50
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.f, %bb.k, %Vec_IntGrow.exit11.sink.split.i
  %i.bh = phi ptr [ %i.s, %bb.f ], [ %i.s, %bb.k ], [ %storemerge, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.bi = phi ptr [ %i.t, %bb.f ], [ %i.t, %bb.k ], [ %storemerge, %Vec_IntGrow.exit11.sink.split.i ] ; 4 uses
  %i.bj = add nsw i32 %i.v, 1                     ; 5 uses
  store i32 %i.bj, ptr %i.k, align 4, !tbaa !43
  %i.bk = sext i32 %i.v to i64
  %i.bl = getelementptr inbounds [4 x i8], ptr %i.bi, i64 %i.bk
  store i32 %i.aw, ptr %i.bl, align 4, !tbaa !12
  %.not34 = icmp eq i32 %i.aq, 0                  ; 3 uses
  %.val45 = load ptr, ptr %i.r, align 8, !tbaa !13
  %i.bm = ptrtoint ptr %.val45 to i64
  %.val = load ptr, ptr %i.b, align 8
  %.val137 = load ptr, ptr %i.a, align 8
  %i.bn = select i1 %.not34, ptr %.val, ptr %.val137
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = and i64 %i.bo, -2
  %i.bq = sub i64 %i.bp, %i.bm
  %.in = sdiv exact i64 %i.bq, 12
  %i.br = trunc i64 %.in to i32
  %i.bs = load i32, ptr %i.i, align 8, !tbaa !50
  %i.bt = icmp eq i32 %i.bj, %i.bs
  br i1 %i.bt, label %bb.o, label %Vec_IntPush.exit62

bb.o:                                             ; preds = %Vec_IntPush.exit
  %i.bu = icmp slt i32 %i.v, 15
  br i1 %i.bu, label %Vec_IntGrow.exit11.sink.split.i58, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bv = icmp samesign ult i32 %i.v, 1073741822
  %i.bw = shl nuw nsw i32 %i.bj, 1
  %spec.select.i55 = select i1 %i.bv, i32 %i.bw, i32 2147483647 ; 3 uses
  %.not.i9.i56 = icmp samesign ult i32 %i.bj, %spec.select.i55
  br i1 %.not.i9.i56, label %bb.q, label %Vec_IntPush.exit62

bb.q:                                             ; preds = %bb.p
  %i.bx = zext nneg i32 %spec.select.i55 to i64
  %i.by = shl nuw nsw i64 %i.bx, 2
  br label %Vec_IntGrow.exit11.sink.split.i58

Vec_IntGrow.exit11.sink.split.i58:                ; preds = %bb.o, %bb.q
  %.sink = phi i64 [ %i.by, %bb.q ], [ 64, %bb.o ]
  %spec.select.sink.i59 = phi i32 [ %spec.select.i55, %bb.q ], [ 16, %bb.o ]
  %i.bz = call ptr @realloc(ptr noundef nonnull %i.bi, i64 noundef %.sink) #23 ; 3 uses
  store ptr %i.bz, ptr %i.p, align 8, !tbaa !8
  store i32 %spec.select.sink.i59, ptr %i.i, align 8, !tbaa !50
  br label %Vec_IntPush.exit62

Vec_IntPush.exit62:                               ; preds = %Vec_IntPush.exit, %bb.p, %Vec_IntGrow.exit11.sink.split.i58
  %i.ca = phi ptr [ %i.bh, %Vec_IntPush.exit ], [ %i.bh, %bb.p ], [ %i.bz, %Vec_IntGrow.exit11.sink.split.i58 ] ; 2 uses
  %i.cb = phi ptr [ %i.bi, %Vec_IntPush.exit ], [ %i.bi, %bb.p ], [ %i.bz, %Vec_IntGrow.exit11.sink.split.i58 ] ; 4 uses
  %i.cc = add nsw i32 %i.v, 2                     ; 5 uses
  store i32 %i.cc, ptr %i.k, align 4, !tbaa !43
  %i.cd = sext i32 %i.bj to i64
  %i.ce = getelementptr inbounds [4 x i8], ptr %i.cb, i64 %i.cd
  store i32 %i.br, ptr %i.ce, align 4, !tbaa !12
  %.val43 = load ptr, ptr %i.r, align 8, !tbaa !13
  %i.cf = ptrtoint ptr %.val43 to i64
  %.val138 = load ptr, ptr %i.c, align 8
  %.val139 = load ptr, ptr %i.e, align 8
  %i.cg = select i1 %.not34, ptr %.val138, ptr %.val139
  %i.ch = ptrtoint ptr %i.cg to i64
  %i.ci = and i64 %i.ch, -2
  %i.cj = sub i64 %i.ci, %i.cf
  %.in95 = sdiv exact i64 %i.cj, 12
  %i.ck = trunc i64 %.in95 to i32
  %i.cl = load i32, ptr %i.i, align 8, !tbaa !50
  %i.cm = icmp eq i32 %i.cc, %i.cl
  br i1 %i.cm, label %bb.r, label %Vec_IntPush.exit70

bb.r:                                             ; preds = %Vec_IntPush.exit62
  %i.cn = icmp slt i32 %i.v, 14
  br i1 %i.cn, label %Vec_IntGrow.exit11.sink.split.i66, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.co = icmp samesign ult i32 %i.v, 1073741821
  %i.cp = shl nuw nsw i32 %i.cc, 1
  %spec.select.i63 = select i1 %i.co, i32 %i.cp, i32 2147483647 ; 3 uses
  %.not.i9.i64 = icmp samesign ult i32 %i.cc, %spec.select.i63
  br i1 %.not.i9.i64, label %bb.t, label %Vec_IntPush.exit70

bb.t:                                             ; preds = %bb.s
  %i.cq = zext nneg i32 %spec.select.i63 to i64
  %i.cr = shl nuw nsw i64 %i.cq, 2
  br label %Vec_IntGrow.exit11.sink.split.i66

Vec_IntGrow.exit11.sink.split.i66:                ; preds = %bb.r, %bb.t
  %.sink129 = phi i64 [ %i.cr, %bb.t ], [ 64, %bb.r ]
  %spec.select.sink.i67 = phi i32 [ %spec.select.i63, %bb.t ], [ 16, %bb.r ]
  %i.cs = call ptr @realloc(ptr noundef nonnull %i.cb, i64 noundef %.sink129) #23 ; 3 uses
  store ptr %i.cs, ptr %i.p, align 8, !tbaa !8
  store i32 %spec.select.sink.i67, ptr %i.i, align 8, !tbaa !50
  br label %Vec_IntPush.exit70

Vec_IntPush.exit70:                               ; preds = %Vec_IntPush.exit62, %bb.s, %Vec_IntGrow.exit11.sink.split.i66
  %i.ct = phi ptr [ %i.ca, %Vec_IntPush.exit62 ], [ %i.ca, %bb.s ], [ %i.cs, %Vec_IntGrow.exit11.sink.split.i66 ] ; 2 uses
  %i.cu = phi ptr [ %i.cb, %Vec_IntPush.exit62 ], [ %i.cb, %bb.s ], [ %i.cs, %Vec_IntGrow.exit11.sink.split.i66 ] ; 2 uses
  %i.cv = add nsw i32 %i.v, 3                     ; 6 uses
  store i32 %i.cv, ptr %i.k, align 4, !tbaa !43
  %i.cw = sext i32 %i.cc to i64
  %i.cx = getelementptr inbounds [4 x i8], ptr %i.cu, i64 %i.cw
  store i32 %i.ck, ptr %i.cx, align 4, !tbaa !12
  %.val41 = load ptr, ptr %i.r, align 8, !tbaa !13
  %i.cy = ptrtoint ptr %.val41 to i64
  %.val140 = load ptr, ptr %i.d, align 8
  %.val141 = load ptr, ptr %i.f, align 8
  %i.cz = select i1 %.not34, ptr %.val140, ptr %.val141
  %i.da = ptrtoint ptr %i.cz to i64
  %i.db = and i64 %i.da, -2
  %i.dc = sub i64 %i.db, %i.cy
  %.in97 = sdiv exact i64 %i.dc, 12
  %i.dd = trunc i64 %.in97 to i32
  %i.de = load i32, ptr %i.i, align 8, !tbaa !50  ; 2 uses
  %i.df = icmp eq i32 %i.cv, %i.de
  br i1 %i.df, label %bb.u, label %Vec_IntPush.exit78

bb.u:                                             ; preds = %Vec_IntPush.exit70
  %i.dg = icmp slt i32 %i.v, 13
  br i1 %i.dg, label %Vec_IntGrow.exit11.sink.split.i74, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dh = icmp samesign ult i32 %i.v, 1073741820
  %i.di = shl nuw nsw i32 %i.cv, 1
  %spec.select.i71 = select i1 %i.dh, i32 %i.di, i32 2147483647 ; 3 uses
  %.not.i9.i72 = icmp samesign ult i32 %i.cv, %spec.select.i71
  br i1 %.not.i9.i72, label %bb.w, label %Vec_IntPush.exit78

bb.w:                                             ; preds = %bb.v
  %i.dj = zext nneg i32 %spec.select.i71 to i64
  %i.dk = shl nuw nsw i64 %i.dj, 2
  br label %Vec_IntGrow.exit11.sink.split.i74

Vec_IntGrow.exit11.sink.split.i74:                ; preds = %bb.u, %bb.w
  %.sink134 = phi i64 [ %i.dk, %bb.w ], [ 64, %bb.u ]
  %spec.select.sink.i75 = phi i32 [ %spec.select.i71, %bb.w ], [ 16, %bb.u ] ; 2 uses
  %i.dl = call ptr @realloc(ptr noundef nonnull %i.cu, i64 noundef %.sink134) #23 ; 2 uses
  store ptr %i.dl, ptr %i.p, align 8, !tbaa !8
  store i32 %spec.select.sink.i75, ptr %i.i, align 8, !tbaa !50
  br label %Vec_IntPush.exit78

Vec_IntPush.exit78:                               ; preds = %Vec_IntPush.exit70, %bb.v, %Vec_IntGrow.exit11.sink.split.i74
  %i.dm = phi ptr [ %i.ct, %Vec_IntPush.exit70 ], [ %i.ct, %bb.v ], [ %i.dl, %Vec_IntGrow.exit11.sink.split.i74 ] ; 3 uses
  %i.dn = phi i32 [ %i.de, %Vec_IntPush.exit70 ], [ %i.cv, %bb.v ], [ %spec.select.sink.i75, %Vec_IntGrow.exit11.sink.split.i74 ]
  %i.do = add nsw i32 %i.v, 4                     ; 2 uses
  store i32 %i.do, ptr %i.k, align 4, !tbaa !43
  %i.dp = sext i32 %i.cv to i64
  %i.dq = getelementptr inbounds [4 x i8], ptr %i.dm, i64 %i.dp
  store i32 %i.dd, ptr %i.dq, align 4, !tbaa !12
  br label %bb.x

bb.x:                                             ; preds = %bb.d, %Vec_IntPush.exit78
  %i.dr = phi ptr [ %i.dm, %Vec_IntPush.exit78 ], [ %i.s, %bb.d ] ; 2 uses
  %i.ds = phi ptr [ %i.dm, %Vec_IntPush.exit78 ], [ %i.t, %bb.d ]
  %i.dt = phi i32 [ %i.dn, %Vec_IntPush.exit78 ], [ %i.u, %bb.d ]
  %i.du = phi i32 [ %i.do, %Vec_IntPush.exit78 ], [ %i.v, %bb.d ]
  %.1 = phi i32 [ 1, %Vec_IntPush.exit78 ], [ 0, %bb.d ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dv = load ptr, ptr %i.g, align 8, !tbaa !46  ; 2 uses
  %i.dw = getelementptr i8, ptr %i.dv, i64 4
  %.val40 = load i32, ptr %i.dw, align 4, !tbaa !43
  %i.dx = sext i32 %.val40 to i64
  %i.dy = icmp slt i64 %indvars.iv.next, %i.dx
  br i1 %i.dy, label %bb.c, label %.critedge, !llvm.loop !52

.critedge:                                        ; preds = %bb.x
  %.val39102.pre = load i32, ptr %i.k, align 4, !tbaa !43 ; 2 uses
  %i.dz = icmp sgt i32 %.val39102.pre, 0
  br i1 %i.dz, label %.lr.ph104, label %._crit_edge

.lr.ph104:                                        ; preds = %.critedge, %.lr.ph104
  %indvars.iv106 = phi i64 [ %indvars.iv.next107, %.lr.ph104 ], [ 0, %.critedge ] ; 2 uses
  %1 = phi i32 [ %4, %.lr.ph104 ], [ 0, %.critedge ]
  %i.ea = trunc nuw nsw i64 %indvars.iv106 to i32
  %i.eb = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %i.ea) ; 0 uses
  %2 = zext nneg i32 %1 to i64
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %2 ; 4 uses
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !12
  %i.ee = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %i.ed) ; 0 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 4
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !12
  %i.eh = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %i.eg) ; 0 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !12
  %i.ek = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %i.ej) ; 0 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ec, i64 12
  %i.em = load i32, ptr %i.el, align 4, !tbaa !12
  %i.en = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %i.em) ; 0 uses
  %putchar = call i32 @putchar(i32 10)            ; 0 uses
  %indvars.iv.next107 = add nuw nsw i64 %indvars.iv106, 1 ; 2 uses
  %3 = trunc nuw i64 %indvars.iv.next107 to i32
  %4 = shl nsw i32 %3, 2                          ; 2 uses
  %5 = icmp slt i32 %4, %.val39102.pre
  br i1 %5, label %.lr.ph104, label %._crit_edge, !llvm.loop !53

._crit_edge:                                      ; preds = %.lr.ph104, %Vec_IntAlloc.exit, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret ptr %i.i
}

declare i32 @Gia_ObjRecognizeExor(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind uwtable
define i32 @Acec_DetectLitPolarity(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp slt i32 %1, %2
  br i1 %i.a, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %1, %2
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = shl nsw i32 %1, 1
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  %i.d = getelementptr i8, ptr %0, i64 32
  %.val = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.e = sext i32 %1 to i64
  %i.f = getelementptr inbounds [12 x i8], ptr %.val, i64 %i.e ; 4 uses
  %.val41 = load i64, ptr %i.f, align 4
  %i.g = trunc i64 %.val41 to i32
  %i.h = and i32 %i.g, 536870911
  %i.i = sub nsw i32 %1, %i.h
  %i.j = tail call i32 @Acec_DetectLitPolarity(ptr noundef %0, i32 noundef %i.i, i32 noundef %2) ; 2 uses
  %.val42 = load i64, ptr %i.f, align 4
  %i.k = lshr i64 %.val42, 32
  %i.l = trunc nuw i64 %i.k to i32
  %i.m = and i32 %i.l, 536870911
  %i.n = sub nsw i32 %1, %i.m
  %i.o = tail call i32 @Acec_DetectLitPolarity(ptr noundef %0, i32 noundef %i.n, i32 noundef %2) ; 2 uses
  %i.p = icmp eq i32 %i.j, -1
  br i1 %i.p, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.val43 = load i64, ptr %i.f, align 4
  %i.q = trunc i64 %.val43 to i32
  %i.r = lshr i32 %i.q, 29
  %i.s = and i32 %i.r, 1
  %i.t = xor i32 %i.s, %i.j
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.u = phi i32 [ %i.t, %bb.e ], [ -1, %bb.d ]   ; 4 uses
  %i.v = icmp eq i32 %i.o, -1
  br i1 %i.v, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.val44 = load i64, ptr %i.f, align 4
  %i.w = lshr i64 %.val44, 61
  %i.x = trunc nuw nsw i64 %i.w to i32
  %i.y = and i32 %i.x, 1
  %i.z = xor i32 %i.y, %i.o
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.aa = phi i32 [ %i.z, %bb.g ], [ -1, %bb.f ]  ; 3 uses
  %i.ab = icmp eq i32 %i.u, -1
  %i.ac = icmp eq i32 %i.aa, -1
  %or.cond = select i1 %i.ab, i1 %i.ac, i1 false
  br i1 %or.cond, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = icmp ne i32 %i.u, -1                    ; 2 uses
  %i.ae = icmp ne i32 %i.aa, -1
  %or.cond3 = select i1 %i.ad, i1 %i.ae, i1 false
  br i1 %or.cond3, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.af = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %2) ; 0 uses
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.ag = select i1 %i.ad, i32 %i.u, i32 %i.aa
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.a, %bb.k, %bb.j, %bb.c
  %.0 = phi i32 [ %i.ag, %bb.k ], [ %i.c, %bb.c ], [ -1, %bb.a ], [ %i.u, %bb.j ], [ -1, %bb.h ]
  ret i32 %.0
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define void @Acec_DetectComputeSuppOne_rec(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54
  %i.c = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %.val.i = load ptr, ptr %i.c, align 8, !tbaa !13
  %i.d = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.e = ptrtoint ptr %.val.i to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 12                  ; 2 uses
  %sext.i = shl i64 %i.g, 32
  %i.h = ashr exact i64 %sext.i, 30
  %i.i = getelementptr inbounds i8, ptr %i.b, i64 %i.h ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !12
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.l = load i32, ptr %i.k, align 8, !tbaa !55   ; 2 uses
  %.not = icmp eq i32 %i.j, %i.l
  br i1 %.not, label %bb.w, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 %i.l, ptr %i.i, align 4, !tbaa !12
  %i.m = load i64, ptr %1, align 4                ; 2 uses
  %i.n = and i64 %i.m, 1073741824
  %.not19 = icmp eq i64 %i.n, 0
  br i1 %.not19, label %bb.m, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !43   ; 7 uses
  %i.q = load i32, ptr %2, align 8, !tbaa !50
  %i.r = icmp eq i32 %i.p, %i.q
  br i1 %i.r, label %bb.d, label %Vec_IntPush.exit

bb.d:                                             ; preds = %bb.c
  %i.s = icmp slt i32 %i.p, 16
  br i1 %i.s, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !8    ; 2 uses
  %.not9.i.i = icmp eq ptr %i.u, null
  br i1 %.not9.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.u, i64 noundef 64) #23
  br label %Vec_IntGrow.exit.i

bb.g:                                             ; preds = %bb.e
  %i.w = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #22
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.g, %bb.f
  %i.x = phi ptr [ %i.v, %bb.f ], [ %i.w, %bb.g ]
  store ptr %i.x, ptr %i.t, align 8, !tbaa !8
  br label %Vec_IntGrow.exit11.sink.split.i

bb.h:                                             ; preds = %bb.d
  %i.y = icmp samesign ult i32 %i.p, 1073741823
  %i.z = shl nuw nsw i32 %i.p, 1
  %spec.select.i = select i1 %i.y, i32 %i.z, i32 2147483647 ; 3 uses
  %.not.i9.i = icmp samesign ult i32 %i.p, %spec.select.i
  br i1 %.not.i9.i, label %bb.i, label %Vec_IntPush.exit

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !8  ; 2 uses
  %.not9.i10.i = icmp eq ptr %i.ab, null
  %i.ac = zext nneg i32 %spec.select.i to i64
  %i.ad = shl nuw nsw i64 %i.ac, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = tail call ptr @realloc(ptr noundef nonnull %i.ab, i64 noundef %i.ad) #23
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.af = tail call noalias ptr @malloc(i64 noundef %i.ad) #22
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ag = phi ptr [ %i.ae, %bb.j ], [ %i.af, %bb.k ]
  store ptr %i.ag, ptr %i.aa, align 8, !tbaa !8
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.l, %Vec_IntGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.l ], [ 16, %Vec_IntGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %2, align 8, !tbaa !50
  %.pre = load i32, ptr %i.o, align 4, !tbaa !43
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.c, %bb.h, %Vec_IntGrow.exit11.sink.split.i
  %i.ah = phi i32 [ %i.p, %bb.c ], [ %i.p, %bb.h ], [ %.pre, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !8
  %i.ak = add nsw i32 %i.ah, 1
  store i32 %i.ak, ptr %i.o, align 4, !tbaa !43
  br label %.sink.split

bb.m:                                             ; preds = %bb.b
  %i.al = and i64 %i.m, 536870911
  %i.am = sub nsw i64 0, %i.al
  %i.an = getelementptr inbounds [12 x i8], ptr %1, i64 %i.am
  tail call void @Acec_DetectComputeSuppOne_rec(ptr noundef nonnull %0, ptr noundef nonnull %i.an, ptr noundef %2, ptr noundef %3)
  %i.ao = load i64, ptr %1, align 4
  %i.ap = lshr i64 %i.ao, 32
  %i.aq = and i64 %i.ap, 536870911
  %i.ar = sub nsw i64 0, %i.aq
  %i.as = getelementptr inbounds [12 x i8], ptr %1, i64 %i.ar
  tail call void @Acec_DetectComputeSuppOne_rec(ptr noundef nonnull %0, ptr noundef nonnull %i.as, ptr noundef %2, ptr noundef %3)
  %.val = load ptr, ptr %i.c, align 8, !tbaa !13
  %i.at = ptrtoint ptr %.val to i64
  %i.au = sub i64 %i.d, %i.at
  %i.av = sdiv exact i64 %i.au, 12
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !43 ; 7 uses
  %i.ay = load i32, ptr %3, align 8, !tbaa !50
  %i.az = icmp eq i32 %i.ax, %i.ay
  br i1 %i.az, label %bb.n, label %Vec_IntPush.exit30

bb.n:                                             ; preds = %bb.m
  %i.ba = icmp slt i32 %i.ax, 16
  br i1 %i.ba, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !8  ; 2 uses
  %.not9.i.i28 = icmp eq ptr %i.bc, null
  br i1 %.not9.i.i28, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bd = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.bc, i64 noundef 64) #23
  br label %Vec_IntGrow.exit.i29

bb.q:                                             ; preds = %bb.o
  %i.be = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #22
  br label %Vec_IntGrow.exit.i29

Vec_IntGrow.exit.i29:                             ; preds = %bb.q, %bb.p
  %i.bf = phi ptr [ %i.bd, %bb.p ], [ %i.be, %bb.q ]
  store ptr %i.bf, ptr %i.bb, align 8, !tbaa !8
  br label %Vec_IntGrow.exit11.sink.split.i26

bb.r:                                             ; preds = %bb.n
  %i.bg = icmp samesign ult i32 %i.ax, 1073741823
  %i.bh = shl nuw nsw i32 %i.ax, 1
  %spec.select.i23 = select i1 %i.bg, i32 %i.bh, i32 2147483647 ; 3 uses
  %.not.i9.i24 = icmp samesign ult i32 %i.ax, %spec.select.i23
  br i1 %.not.i9.i24, label %bb.s, label %Vec_IntPush.exit30

bb.s:                                             ; preds = %bb.r
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !8  ; 2 uses
  %.not9.i10.i25 = icmp eq ptr %i.bj, null
  %i.bk = zext nneg i32 %spec.select.i23 to i64
  %i.bl = shl nuw nsw i64 %i.bk, 2                ; 2 uses
  br i1 %.not9.i10.i25, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bm = tail call ptr @realloc(ptr noundef nonnull %i.bj, i64 noundef %i.bl) #23
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.bn = tail call noalias ptr @malloc(i64 noundef %i.bl) #22
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.bo = phi ptr [ %i.bm, %bb.t ], [ %i.bn, %bb.u ]
  store ptr %i.bo, ptr %i.bi, align 8, !tbaa !8
  br label %Vec_IntGrow.exit11.sink.split.i26

Vec_IntGrow.exit11.sink.split.i26:                ; preds = %bb.v, %Vec_IntGrow.exit.i29
  %spec.select.sink.i27 = phi i32 [ %spec.select.i23, %bb.v ], [ 16, %Vec_IntGrow.exit.i29 ]
  store i32 %spec.select.sink.i27, ptr %3, align 8, !tbaa !50
  %.pre31 = load i32, ptr %i.aw, align 4, !tbaa !43
  br label %Vec_IntPush.exit30

Vec_IntPush.exit30:                               ; preds = %bb.m, %bb.r, %Vec_IntGrow.exit11.sink.split.i26
  %i.bp = phi i32 [ %i.ax, %bb.m ], [ %i.ax, %bb.r ], [ %.pre31, %Vec_IntGrow.exit11.sink.split.i26 ] ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !8
  %i.bs = add nsw i32 %i.bp, 1
  store i32 %i.bs, ptr %i.aw, align 4, !tbaa !43
  br label %.sink.split

.sink.split:                                      ; preds = %Vec_IntPush.exit, %Vec_IntPush.exit30
  %.sink42 = phi i32 [ %i.bp, %Vec_IntPush.exit30 ], [ %i.ah, %Vec_IntPush.exit ]
  %.sink40 = phi ptr [ %i.br, %Vec_IntPush.exit30 ], [ %i.aj, %Vec_IntPush.exit ]
  %.sink.in = phi i64 [ %i.av, %Vec_IntPush.exit30 ], [ %i.g, %Vec_IntPush.exit ]
  %.sink = trunc i64 %.sink.in to i32
  %i.bt = sext i32 %.sink42 to i64
  %i.bu = getelementptr inbounds [4 x i8], ptr %.sink40, i64 %i.bt
  store i32 %.sink, ptr %i.bu, align 4, !tbaa !12
  br label %bb.w

bb.w:                                             ; preds = %.sink.split, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define void @Acec_DetectComputeSupports(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #22 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 3 uses
  store i32 0, ptr %i.b, align 4, !tbaa !43
  store i32 100, ptr %i.a, align 8, !tbaa !50
  %i.c = tail call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #22
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store ptr %i.c, ptr %i.d, align 8, !tbaa !8
  %i.e = tail call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #22 ; 5 uses
  %i.f = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #22 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 12 uses
  store i32 0, ptr %i.g, align 4, !tbaa !43
  store i32 100, ptr %i.f, align 8, !tbaa !50
  %i.h = tail call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #22 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 7 uses
  store ptr %i.h, ptr %i.i, align 8, !tbaa !8
  %i.j = getelementptr i8, ptr %1, i64 4          ; 4 uses
  %.val116133 = load i32, ptr %i.j, align 4, !tbaa !43
  %i.k = icmp sgt i32 %.val116133, 0
  br i1 %i.k, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.l = getelementptr i8, ptr %1, i64 8          ; 3 uses
  %i.m = getelementptr i8, ptr %0, i64 32         ; 3 uses
  br label %bb.b

.preheader132:                                    ; preds = %bb.b
  %i.n = icmp sgt i32 %.val116, 4
  br i1 %i.n, label %.lr.ph145, label %.preheader

.lr.ph145:                                        ; preds = %.preheader132
  %i.o = getelementptr i8, ptr %1, i64 8          ; 5 uses
  %i.p = getelementptr i8, ptr %0, i64 32         ; 4 uses
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ]
  %i.q = phi i64 [ 0, %.lr.ph ], [ %i.am, %bb.b ]
  %.val100 = load ptr, ptr %i.l, align 8, !tbaa !8
  %2 = and i64 %i.q, 4294967292                   ; 3 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %.val100, i64 %2
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !12
  %.val110 = load ptr, ptr %i.m, align 8, !tbaa !13
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds [12 x i8], ptr %.val110, i64 %i.u ; 2 uses
  %i.w = load i64, ptr %i.v, align 4
  %i.x = or i64 %i.w, 1073741824
  store i64 %i.x, ptr %i.v, align 4
  %.val99 = load ptr, ptr %i.l, align 8, !tbaa !8
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %.val99, i64 %2
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !12
  %.val109 = load ptr, ptr %i.m, align 8, !tbaa !13
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds [12 x i8], ptr %.val109, i64 %i.ab ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 4
  %i.ae = or i64 %i.ad, 1073741824
  store i64 %i.ae, ptr %i.ac, align 4
  %.val98 = load ptr, ptr %i.l, align 8, !tbaa !8
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %.val98, i64 %2
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !12
  %.val108 = load ptr, ptr %i.m, align 8, !tbaa !13
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds [12 x i8], ptr %.val108, i64 %i.ai ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 4
  %i.al = or i64 %i.ak, 1073741824
  store i64 %i.al, ptr %i.aj, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.am = shl nsw i64 %indvars.iv.next, 2         ; 2 uses
  %.val116 = load i32, ptr %i.j, align 4, !tbaa !43 ; 3 uses
  %3 = sext i32 %.val116 to i64
  %4 = icmp slt i64 %i.am, %3
  br i1 %4, label %bb.b, label %.preheader132, !llvm.loop !56

.preheader:                                       ; preds = %Vec_IntPrint.exit127, %.preheader132
  %i.an = phi ptr [ %i.e, %.preheader132 ], [ %.val89182, %Vec_IntPrint.exit127 ]
  %.val111146 = phi i32 [ %.val116, %.preheader132 ], [ %.val115, %Vec_IntPrint.exit127 ]
  %i.ao = icmp sgt i32 %.val111146, 0
  br i1 %i.ao, label %.lr.ph148, label %._crit_edgethread-pre-split

.lr.ph148:                                        ; preds = %.preheader
  %i.ap = getelementptr i8, ptr %1, i64 8         ; 3 uses
  %i.aq = getelementptr i8, ptr %0, i64 32        ; 3 uses
  br label %bb.l

bb.c:                                             ; preds = %.lr.ph145, %Vec_IntPrint.exit127
  %.val89170 = phi ptr [ %i.e, %.lr.ph145 ], [ %.val89182, %Vec_IntPrint.exit127 ] ; 2 uses
  %i.ar = phi ptr [ %i.e, %.lr.ph145 ], [ %i.do, %Vec_IntPrint.exit127 ] ; 2 uses
  %i.as = phi ptr [ %i.e, %.lr.ph145 ], [ %i.dp, %Vec_IntPrint.exit127 ] ; 2 uses
  %i.at = phi i32 [ 100, %.lr.ph145 ], [ %i.dn, %Vec_IntPrint.exit127 ] ; 2 uses
  %indvars.iv159 = phi i64 [ 1, %.lr.ph145 ], [ %indvars.iv.next160, %Vec_IntPrint.exit127 ] ; 2 uses
  %5 = phi i32 [ 4, %.lr.ph145 ], [ %9, %Vec_IntPrint.exit127 ]
  store i32 0, ptr %i.g, align 4, !tbaa !43
  tail call void @Gia_ManIncrementTravId(ptr noundef %0) #20
  %6 = or disjoint i32 %5, 1
  %.val97 = load ptr, ptr %i.o, align 8, !tbaa !8
  %7 = zext nneg i32 %6 to i64                    ; 5 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %.val97, i64 %7
  %i.av = load i32, ptr %i.au, align 4, !tbaa !12
  %.val107 = load ptr, ptr %i.p, align 8, !tbaa !13
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds [12 x i8], ptr %.val107, i64 %i.aw ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 4
  %i.az = and i64 %i.ay, -1073741825
  store i64 %i.az, ptr %i.ax, align 4
  %.val96 = load ptr, ptr %i.o, align 8, !tbaa !8
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %.val96, i64 %7
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !12
  %.val106 = load ptr, ptr %i.p, align 8, !tbaa !13
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr inbounds [12 x i8], ptr %.val106, i64 %i.bc
  tail call void @Acec_DetectComputeSuppOne_rec(ptr noundef %0, ptr noundef %i.bd, ptr noundef nonnull %i.f, ptr noundef nonnull %i.a)
  %.val95 = load ptr, ptr %i.o, align 8, !tbaa !8
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %.val95, i64 %7
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !12
  %.val105 = load ptr, ptr %i.p, align 8, !tbaa !13
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds [12 x i8], ptr %.val105, i64 %i.bg ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 4
  %i.bj = or i64 %i.bi, 1073741824
  store i64 %i.bj, ptr %i.bh, align 4
  %.val117 = load i32, ptr %i.g, align 4, !tbaa !43
  %.val118 = load ptr, ptr %i.i, align 8, !tbaa !8
  %i.bk = sext i32 %.val117 to i64
  tail call void @qsort(ptr noundef %.val118, i64 noundef %i.bk, i64 noundef 4, ptr noundef nonnull @Vec_IntSortCompare1) #20
  %.val94 = load ptr, ptr %i.o, align 8, !tbaa !8
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %.val94, i64 %7
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !12
  %i.bn = trunc nuw nsw i64 %indvars.iv159 to i32
  %i.bo = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.bn, i32 noundef %i.bm) ; 0 uses
  %.val7.i = load i32, ptr %i.g, align 4, !tbaa !43
  %i.bp = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, i32 noundef %.val7.i) ; 0 uses
  %.val68.i = load i32, ptr %i.g, align 4, !tbaa !43
  %i.bq = icmp sgt i32 %.val68.i, 0
  br i1 %i.bq, label %.lr.ph.i, label %Vec_IntPrint.exit

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %bb.c ] ; 2 uses
  %.val.i = load ptr, ptr %i.i, align 8, !tbaa !8
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %indvars.iv.i
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !12
  %i.bt = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, i32 noundef %i.bs) ; 0 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.val6.i = load i32, ptr %i.g, align 4, !tbaa !43
  %i.bu = sext i32 %.val6.i to i64
  %i.bv = icmp slt i64 %indvars.iv.next.i, %i.bu
  br i1 %i.bv, label %.lr.ph.i, label %Vec_IntPrint.exit, !llvm.loop !57

Vec_IntPrint.exit:                                ; preds = %.lr.ph.i, %bb.c
  %puts.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.3) ; 0 uses
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.2) ; 0 uses
  %.val114135 = load i32, ptr %i.b, align 4, !tbaa !43
  %i.bw = icmp sgt i32 %.val114135, 0
  br i1 %i.bw, label %.lr.ph137, label %.critedge

.lr.ph137:                                        ; preds = %Vec_IntPrint.exit, %.lr.ph137
  %indvars.iv150 = phi i64 [ %indvars.iv.next151, %.lr.ph137 ], [ 0, %Vec_IntPrint.exit ] ; 2 uses
  %.val93 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %.val93, i64 %indvars.iv150
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !12
  %.val104 = load ptr, ptr %i.p, align 8, !tbaa !13
  %i.bz = sext i32 %i.by to i64
  %i.ca = getelementptr inbounds [12 x i8], ptr %.val104, i64 %i.bz
  tail call void @Gia_ObjPrint(ptr noundef nonnull %0, ptr noundef %i.ca) #20
  %indvars.iv.next151 = add nuw nsw i64 %indvars.iv150, 1 ; 2 uses
  %.val114 = load i32, ptr %i.b, align 4, !tbaa !43
  %i.cb = sext i32 %.val114 to i64
  %i.cc = icmp slt i64 %indvars.iv.next151, %i.cb
  br i1 %i.cc, label %.lr.ph137, label %.critedge, !llvm.loop !58

.critedge:                                        ; preds = %.lr.ph137, %Vec_IntPrint.exit
  %.val113138 = load i32, ptr %i.g, align 4, !tbaa !43
  %i.cd = icmp sgt i32 %.val113138, 0
  br i1 %i.cd, label %.lr.ph140, label %.critedge2._crit_edge

.critedge2.preheader:                             ; preds = %Vec_IntPush.exit
  %i.ce = icmp sgt i32 %.val113, 0
  br i1 %i.ce, label %.critedge4, label %.critedge2._crit_edge

.lr.ph140:                                        ; preds = %.critedge, %Vec_IntPush.exit
  %.val89169 = phi ptr [ %.val89168, %Vec_IntPush.exit ], [ %.val89170, %.critedge ] ; 2 uses
  %i.cf = phi ptr [ %i.cy, %Vec_IntPush.exit ], [ %i.ar, %.critedge ] ; 2 uses
  %i.cg = phi ptr [ %i.cy, %Vec_IntPush.exit ], [ %i.as, %.critedge ] ; 4 uses
  %i.ch = phi i32 [ %i.cz, %Vec_IntPush.exit ], [ %i.at, %.critedge ] ; 7 uses
  %i.ci = phi i32 [ %i.da, %Vec_IntPush.exit ], [ 0, %.critedge ] ; 3 uses
  %indvars.iv153 = phi i64 [ %indvars.iv.next154, %Vec_IntPush.exit ], [ 0, %.critedge ] ; 2 uses
  %.val92 = load ptr, ptr %i.i, align 8, !tbaa !8
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %.val92, i64 %indvars.iv153
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !12
  %.val91 = load ptr, ptr %i.o, align 8, !tbaa !8
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %.val91, i64 %7
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !12
  %i.cn = tail call i32 @Acec_DetectLitPolarity(ptr noundef %0, i32 noundef %i.cm, i32 noundef %i.ck)
  %i.co = icmp eq i32 %i.ci, %i.ch
  br i1 %i.co, label %bb.d, label %Vec_IntPush.exit

bb.d:                                             ; preds = %.lr.ph140
  %i.cp = icmp slt i32 %i.ch, 16
  br i1 %i.cp, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %.not9.i.i = icmp eq ptr %i.cg, null
  br i1 %.not9.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cq = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.cg, i64 noundef 64) #23 ; 2 uses
  br label %Vec_IntPush.exit

bb.g:                                             ; preds = %bb.e
  %i.cr = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #22 ; 2 uses
  br label %Vec_IntPush.exit

bb.h:                                             ; preds = %bb.d
  %i.cs = icmp samesign ult i32 %i.ch, 1073741823
  %i.ct = shl nuw nsw i32 %i.ch, 1
  %spec.select.i = select i1 %i.cs, i32 %i.ct, i32 2147483647 ; 4 uses
  %.not.i9.i = icmp samesign ult i32 %i.ch, %spec.select.i
  br i1 %.not.i9.i, label %bb.i, label %Vec_IntPush.exit

bb.i:                                             ; preds = %bb.h
  %.not9.i10.i = icmp eq ptr %i.cg, null
  %i.cu = zext nneg i32 %spec.select.i to i64
  %i.cv = shl nuw nsw i64 %i.cu, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cw = tail call ptr @realloc(ptr noundef nonnull %i.cg, i64 noundef %i.cv) #23 ; 2 uses
  br label %Vec_IntPush.exit

bb.k:                                             ; preds = %bb.i
  %i.cx = tail call noalias ptr @malloc(i64 noundef %i.cv) #22 ; 2 uses
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.g, %bb.f, %bb.k, %bb.j, %.lr.ph140, %bb.h
  %.val89168 = phi ptr [ %.val89169, %.lr.ph140 ], [ %.val89169, %bb.h ], [ %i.cr, %bb.g ], [ %i.cq, %bb.f ], [ %i.cw, %bb.j ], [ %i.cx, %bb.k ] ; 6 uses
  %i.cy = phi ptr [ %i.cf, %.lr.ph140 ], [ %i.cf, %bb.h ], [ %i.cr, %bb.g ], [ %i.cq, %bb.f ], [ %i.cw, %bb.j ], [ %i.cx, %bb.k ] ; 5 uses
  %i.cz = phi i32 [ %i.ch, %.lr.ph140 ], [ %i.ch, %bb.h ], [ 16, %bb.g ], [ 16, %bb.f ], [ %spec.select.i, %bb.j ], [ %spec.select.i, %bb.k ] ; 3 uses
  %i.da = add nuw nsw i32 %i.ci, 1
  %i.db = zext nneg i32 %i.ci to i64
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %i.db
  store i32 %i.cn, ptr %i.dc, align 4, !tbaa !12
  %indvars.iv.next154 = add nuw nsw i64 %indvars.iv153, 1 ; 2 uses
  %.val113 = load i32, ptr %i.g, align 4, !tbaa !43 ; 2 uses
  %i.dd = sext i32 %.val113 to i64
  %i.de = icmp slt i64 %indvars.iv.next154, %i.dd
  br i1 %i.de, label %.lr.ph140, label %.critedge2.preheader, !llvm.loop !59

.critedge4:                                       ; preds = %.critedge2.preheader, %.critedge4
  %indvars.iv156 = phi i64 [ %indvars.iv.next157, %.critedge4 ], [ 0, %.critedge2.preheader ] ; 3 uses
  %.val90 = load ptr, ptr %i.i, align 8, !tbaa !8
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %.val90, i64 %indvars.iv156
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !12
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %.val89168, i64 %indvars.iv156
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !12
  %i.dj = and i32 %i.di, 1
  %i.dk = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %i.dg, i32 noundef %i.dj) ; 0 uses
  %indvars.iv.next157 = add nuw nsw i64 %indvars.iv156, 1 ; 2 uses
  %.val112 = load i32, ptr %i.g, align 4, !tbaa !43
  %i.dl = sext i32 %.val112 to i64
  %i.dm = icmp slt i64 %indvars.iv.next157, %i.dl
  br i1 %i.dm, label %.critedge4, label %.critedge2._crit_edge, !llvm.loop !60

.critedge2._crit_edge:                            ; preds = %.critedge4, %.critedge, %.critedge2.preheader
  %i.dn = phi i32 [ %i.at, %.critedge ], [ %i.cz, %.critedge2.preheader ], [ %i.cz, %.critedge4 ]
  %.val89182 = phi ptr [ %.val89170, %.critedge ], [ %.val89168, %.critedge2.preheader ], [ %.val89168, %.critedge4 ] ; 2 uses
  %i.do = phi ptr [ %i.ar, %.critedge ], [ %i.cy, %.critedge2.preheader ], [ %.val89168, %.critedge4 ]
  %i.dp = phi ptr [ %i.as, %.critedge ], [ %i.cy, %.critedge2.preheader ], [ %.val89168, %.critedge4 ]
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  %.val7.i119 = load i32, ptr %i.g, align 4, !tbaa !43
  %i.dq = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, i32 noundef %.val7.i119) ; 0 uses
  %.val68.i120 = load i32, ptr %i.g, align 4, !tbaa !43
  %i.dr = icmp sgt i32 %.val68.i120, 0
  br i1 %i.dr, label %.lr.ph.i122, label %Vec_IntPrint.exit127

.lr.ph.i122:                                      ; preds = %.critedge2._crit_edge, %.lr.ph.i122
  %indvars.iv.i123 = phi i64 [ %indvars.iv.next.i125, %.lr.ph.i122 ], [ 0, %.critedge2._crit_edge ] ; 2 uses
  %.val.i124 = load ptr, ptr %i.i, align 8, !tbaa !8
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %.val.i124, i64 %indvars.iv.i123
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !12
  %i.du = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, i32 noundef %i.dt) ; 0 uses
  %indvars.iv.next.i125 = add nuw nsw i64 %indvars.iv.i123, 1 ; 2 uses
  %.val6.i126 = load i32, ptr %i.g, align 4, !tbaa !43
  %i.dv = sext i32 %.val6.i126 to i64
  %i.dw = icmp slt i64 %indvars.iv.next.i125, %i.dv
  br i1 %i.dw, label %.lr.ph.i122, label %Vec_IntPrint.exit127, !llvm.loop !57

Vec_IntPrint.exit127:                             ; preds = %.lr.ph.i122, %.critedge2._crit_edge
  %puts.i121 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.3) ; 0 uses
  %indvars.iv.next160 = add nuw nsw i64 %indvars.iv159, 1 ; 2 uses
  %8 = trunc nuw i64 %indvars.iv.next160 to i32
  %9 = shl nsw i32 %8, 2                          ; 2 uses
  %.val115 = load i32, ptr %i.j, align 4, !tbaa !43 ; 2 uses
  %10 = icmp slt i32 %9, %.val115
  br i1 %10, label %bb.c, label %.preheader, !llvm.loop !61

bb.l:                                             ; preds = %.lr.ph148, %bb.l
  %indvars.iv162 = phi i64 [ 0, %.lr.ph148 ], [ %indvars.iv.next163, %bb.l ]
  %i.dx = phi i64 [ 0, %.lr.ph148 ], [ %i.et, %bb.l ]
  %.val88 = load ptr, ptr %i.ap, align 8, !tbaa !8
  %11 = and i64 %i.dx, 4294967292                 ; 3 uses
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %.val88, i64 %11
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 4
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !12
  %.val103 = load ptr, ptr %i.aq, align 8, !tbaa !13
  %i.eb = sext i32 %i.ea to i64
  %i.ec = getelementptr inbounds [12 x i8], ptr %.val103, i64 %i.eb ; 2 uses
  %i.ed = load i64, ptr %i.ec, align 4
  %i.ee = and i64 %i.ed, -1073741825
  store i64 %i.ee, ptr %i.ec, align 4
  %.val87 = load ptr, ptr %i.ap, align 8, !tbaa !8
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %.val87, i64 %11
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !12
  %.val102 = load ptr, ptr %i.aq, align 8, !tbaa !13
  %i.ei = sext i32 %i.eh to i64
  %i.ej = getelementptr inbounds [12 x i8], ptr %.val102, i64 %i.ei ; 2 uses
  %i.ek = load i64, ptr %i.ej, align 4
  %i.el = and i64 %i.ek, -1073741825
  store i64 %i.el, ptr %i.ej, align 4
  %.val = load ptr, ptr %i.ap, align 8, !tbaa !8
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %11
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 12
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !12
  %.val101 = load ptr, ptr %i.aq, align 8, !tbaa !13
  %i.ep = sext i32 %i.eo to i64
  %i.eq = getelementptr inbounds [12 x i8], ptr %.val101, i64 %i.ep ; 2 uses
  %i.er = load i64, ptr %i.eq, align 4
  %i.es = and i64 %i.er, -1073741825
  store i64 %i.es, ptr %i.eq, align 4
  %indvars.iv.next163 = add nuw nsw i64 %indvars.iv162, 1 ; 2 uses
  %i.et = shl nsw i64 %indvars.iv.next163, 2      ; 2 uses
  %.val111 = load i32, ptr %i.j, align 4, !tbaa !43
  %12 = sext i32 %.val111 to i64
  %13 = icmp slt i64 %i.et, %12
  br i1 %13, label %bb.l, label %._crit_edgethread-pre-split, !llvm.loop !62

._crit_edgethread-pre-split:                      ; preds = %bb.l, %.preheader
  %.pr = load ptr, ptr %i.i, align 8, !tbaa !8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edgethread-pre-split, %bb.a
  %i.eu = phi ptr [ %.pr, %._crit_edgethread-pre-split ], [ %i.h, %bb.a ] ; 2 uses
  %i.ev = phi ptr [ %i.an, %._crit_edgethread-pre-split ], [ %i.e, %bb.a ] ; 2 uses
  %.not.i = icmp eq ptr %i.eu, null
  br i1 %.not.i, label %Vec_IntFree.exit, label %bb.m

bb.m:                                             ; preds = %._crit_edge
  tail call void @free(ptr noundef nonnull %i.eu) #20
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %._crit_edge, %bb.m
  tail call void @free(ptr noundef nonnull %i.f) #20
  %.not.i128 = icmp eq ptr %i.ev, null
  br i1 %.not.i128, label %Vec_IntFree.exit129, label %bb.n

bb.n:                                             ; preds = %Vec_IntFree.exit
  tail call void @free(ptr noundef nonnull %i.ev) #20
  br label %Vec_IntFree.exit129

Vec_IntFree.exit129:                              ; preds = %Vec_IntFree.exit, %bb.n
  %i.ew = load ptr, ptr %i.d, align 8, !tbaa !8   ; 2 uses
  %.not.i130 = icmp eq ptr %i.ew, null
  br i1 %.not.i130, label %Vec_IntFree.exit131, label %bb.o

bb.o:                                             ; preds = %Vec_IntFree.exit129
  tail call void @free(ptr noundef nonnull %i.ew) #20
  br label %Vec_IntFree.exit131

Vec_IntFree.exit131:                              ; preds = %Vec_IntFree.exit129, %bb.o
  tail call void @free(ptr noundef nonnull %i.a) #20
  ret void
}

declare void @Gia_ManIncrementTravId(ptr noundef) local_unnamed_addr #3

declare void @Gia_ObjPrint(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define ptr @Acec_DetectXorBuildNew(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %.val38 = load i32, ptr %i.a, align 8, !tbaa !39 ; 5 uses
  %i.b = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #22 ; 7 uses
  %i.c = add i32 %.val38, -1
  %or.cond.i.i = icmp ult i32 %i.c, 15
  %spec.store.select.i.i = select i1 %or.cond.i.i, i32 16, i32 %.val38 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  store i32 %spec.store.select.i.i, ptr %i.b, align 8, !tbaa !50
  %.not.i.i = icmp eq i32 %spec.store.select.i.i, 0
  br i1 %.not.i.i, label %Vec_IntAlloc.exit.thread.i, label %Vec_IntAlloc.exit.i

Vec_IntAlloc.exit.thread.i:                       ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr null, ptr %i.e, align 8, !tbaa !8
  store i32 %.val38, ptr %i.d, align 4, !tbaa !43
  br label %Vec_IntStart.exit

Vec_IntAlloc.exit.i:                              ; preds = %bb.a
  %i.f = sext i32 %spec.store.select.i.i to i64
  %i.g = shl nsw i64 %i.f, 2
  %i.h = tail call noalias ptr @malloc(i64 noundef %i.g) #22 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.h, ptr %i.i, align 8, !tbaa !8
  store i32 %.val38, ptr %i.d, align 4, !tbaa !43
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %Vec_IntStart.exit, label %bb.b

bb.b:                                             ; preds = %Vec_IntAlloc.exit.i
  %i.j = sext i32 %.val38 to i64
  %i.k = shl nsw i64 %i.j, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.h, i8 0, i64 %i.k, i1 false)
  br label %Vec_IntStart.exit

Vec_IntStart.exit:                                ; preds = %Vec_IntAlloc.exit.thread.i, %Vec_IntAlloc.exit.i, %bb.b
  %.val39 = phi ptr [ null, %Vec_IntAlloc.exit.thread.i ], [ null, %Vec_IntAlloc.exit.i ], [ %i.h, %bb.b ]
  %i.l = getelementptr i8, ptr %1, i64 4          ; 2 uses
  %.val3742 = load i32, ptr %i.l, align 4, !tbaa !43
  %i.m = icmp sgt i32 %.val3742, 0
  br i1 %i.m, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %Vec_IntStart.exit
  %i.n = getelementptr i8, ptr %1, i64 8          ; 4 uses
  %.val36.pre = load ptr, ptr %i.n, align 8, !tbaa !8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %.val36 = phi ptr [ %.val36.pre, %.lr.ph ], [ %.val, %bb.c ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ]
  %i.o = phi i32 [ 0, %.lr.ph ], [ %3, %bb.c ]    ; 2 uses
  %i.p = zext i32 %i.o to i64                     ; 5 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %.val36, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !12
  %i.s = or disjoint i32 %i.o, 1
  %i.t = zext nneg i32 %i.s to i64                ; 2 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %.val36, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !12
  %i.w = tail call i32 @Acec_DetectLitPolarity(ptr noundef nonnull %0, i32 noundef %i.r, i32 noundef %i.v)
  %.val34 = load ptr, ptr %i.n, align 8, !tbaa !8 ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %.val34, i64 %i.p
  %i.y = load i32, ptr %i.x, align 4, !tbaa !12
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %.val34, i64 %i.p
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !12
  %i.ac = tail call i32 @Acec_DetectLitPolarity(ptr noundef nonnull %0, i32 noundef %i.y, i32 noundef %i.ab) ; 2 uses
  %.val34.1 = load ptr, ptr %i.n, align 8, !tbaa !8 ; 2 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %.val34.1, i64 %i.p
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !12
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %.val34.1, i64 %i.p
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !12
  %i.ai = tail call i32 @Acec_DetectLitPolarity(ptr noundef nonnull %0, i32 noundef %i.ae, i32 noundef %i.ah) ; 2 uses
  %i.aj = xor i32 %i.ac, 1
  %i.ak = xor i32 %i.ai, 1
  %i.al = tail call fastcc i32 @Gia_ManAppendAnd(ptr noundef nonnull %0, i32 noundef %i.aj, i32 noundef %i.ak)
  %i.am = xor i32 %i.al, 1
  %i.an = tail call fastcc i32 @Gia_ManAppendAnd(ptr noundef nonnull %0, i32 noundef %i.w, i32 noundef %i.am)
  %i.ao = tail call fastcc i32 @Gia_ManAppendAnd(ptr noundef nonnull %0, i32 noundef %i.ac, i32 noundef %i.ai)
  %i.ap = xor i32 %i.an, 1
  %i.aq = xor i32 %i.ao, 1
  %i.ar = tail call fastcc i32 @Gia_ManAppendAnd(ptr noundef nonnull %0, i32 noundef %i.ap, i32 noundef %i.aq)
  %i.as = xor i32 %i.ar, 1
  %.val = load ptr, ptr %i.n, align 8, !tbaa !8   ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %i.t
  %i.au = load i32, ptr %i.at, align 4, !tbaa !12
  %i.av = sext i32 %i.au to i64
  %i.aw = getelementptr inbounds [4 x i8], ptr %.val39, i64 %i.av
  store i32 %i.as, ptr %i.aw, align 4, !tbaa !12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %2 = trunc nuw i64 %indvars.iv.next to i32
  %3 = shl nsw i32 %2, 2                          ; 2 uses
  %.val37 = load i32, ptr %i.l, align 4, !tbaa !43
  %i.ax = icmp slt i32 %3, %.val37
  br i1 %i.ax, label %bb.c, label %._crit_edge, !llvm.loop !63

._crit_edge:                                      ; preds = %bb.c, %Vec_IntStart.exit
  %i.ay = tail call ptr @Acec_ManDerive(ptr noundef nonnull %0, ptr noundef nonnull %i.b)
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !8  ; 2 uses
  %.not.i40 = icmp eq ptr %i.ba, null
  br i1 %.not.i40, label %Vec_IntFree.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  tail call void @free(ptr noundef nonnull %i.ba) #20
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %._crit_edge, %bb.d
  tail call void @free(ptr noundef nonnull %i.b) #20
  ret ptr %i.ay
}

; Function Attrs: nounwind uwtable
define ptr @Acec_DetectAdditional(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
Abc_Clock.exit:
  %2 = alloca %struct.timespec, align 8           ; 5 uses
  %3 = alloca %struct.timespec, align 8           ; 5 uses
  %4 = alloca %struct.timespec, align 8           ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.a = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %4) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.b = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %3) #20
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %Abc_Clock.exit15, label %bb.a

bb.a:                                             ; preds = %Abc_Clock.exit
  %i.d = load i64, ptr %3, align 8, !tbaa !64
  %.neg18 = mul i64 %i.d, -1000000
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !66
  %.neg = sdiv i64 %i.f, -1000
  %.neg19 = add i64 %.neg, %.neg18
  br label %Abc_Clock.exit15

Abc_Clock.exit15:                                 ; preds = %Abc_Clock.exit, %bb.a
  %.0.i14.neg = phi i64 [ %.neg19, %bb.a ], [ 1, %Abc_Clock.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.g = call ptr @Acec_CollectXorTops(ptr noundef %0) ; 6 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %.split11, label %.split

.split:                                           ; preds = %Abc_Clock.exit15
  call void @Acec_DetectComputeSupports(ptr noundef %0, ptr noundef nonnull %i.g)
  %i.h = call ptr @Acec_DetectXorBuildNew(ptr noundef %0, ptr noundef nonnull %i.g)
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !8    ; 2 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %Vec_IntFree.exit, label %bb.b

bb.b:                                             ; preds = %.split
  call void @free(ptr noundef nonnull %i.j) #20
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %.split, %bb.b
  call void @free(ptr noundef nonnull %i.g) #20
  %i.k = getelementptr i8, ptr %i.g, i64 4
  br label %bb.c

.split11:                                         ; preds = %Abc_Clock.exit15
  %i.l = call ptr @Gia_ManDup(ptr noundef %0) #20
  br label %bb.c

bb.c:                                             ; preds = %.split11, %Vec_IntFree.exit
  %phi.call.in = phi ptr [ %i.k, %Vec_IntFree.exit ], [ inttoptr (i64 4 to ptr), %.split11 ]
  %.0 = phi ptr [ %i.h, %Vec_IntFree.exit ], [ %i.l, %.split11 ]
  %phi.call = load i32, ptr %phi.call.in, align 4, !tbaa !43
  %i.m = sdiv i32 %phi.call, 4
  %i.n = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, i32 noundef %i.m) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.o = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %2) #20
  %i.p = icmp slt i32 %i.o, 0
  br i1 %i.p, label %Abc_Clock.exit17, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = load i64, ptr %2, align 8, !tbaa !64
  %i.r = mul nsw i64 %i.q, 1000000
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !66
  %i.u = sdiv i64 %i.t, 1000
  %i.v = add nsw i64 %i.u, %i.r
  br label %Abc_Clock.exit17

Abc_Clock.exit17:                                 ; preds = %bb.c, %bb.d
  %.0.i16 = phi i64 [ %i.v, %bb.d ], [ -1, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %i.w = add i64 %.0.i16, %.0.i14.neg
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.11)
  %i.x = sitofp i64 %i.w to double
  %i.y = fdiv double %i.x, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.20, double noundef %i.y)
  ret ptr %.0
}

declare ptr @Gia_ManDup(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define noalias noundef ptr @Acec_RewriteTop(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [3 x i32], align 4                ; 5 uses
  %i.b = alloca [2 x i32], align 4                ; 5 uses
  %i.c = getelementptr i8, ptr %0, i64 72         ; 2 uses
  %.val53 = load ptr, ptr %i.c, align 8, !tbaa !46 ; 2 uses
  %i.d = getelementptr i8, ptr %.val53, i64 4
  %.val53.val = load i32, ptr %i.d, align 4, !tbaa !43 ; 3 uses
  %i.e = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #22 ; 8 uses
  %i.f = tail call i32 @llvm.umax.i32(i32 %.val53.val, i32 15)
  %spec.store.select.i = add nsw i32 %i.f, 1      ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 6 uses
  store i32 0, ptr %i.g, align 4, !tbaa !43
  store i32 %spec.store.select.i, ptr %i.e, align 8, !tbaa !50
  %.not.i = icmp eq i32 %spec.store.select.i, 0
  br i1 %.not.i, label %Vec_IntAlloc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = sext i32 %spec.store.select.i to i64
  %i.i = shl nsw i64 %i.h, 2
  %i.j = tail call noalias ptr @malloc(i64 noundef %i.i) #22
  br label %Vec_IntAlloc.exit

Vec_IntAlloc.exit:                                ; preds = %bb.a, %bb.b
  %i.k = phi ptr [ %i.j, %bb.b ], [ null, %bb.a ]
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 9 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !8
  %i.m = getelementptr i8, ptr %0, i64 32
  %.val49 = load ptr, ptr %i.m, align 8, !tbaa !13
  %i.n = getelementptr i8, ptr %.val53, i64 8
  %.val50.val = load ptr, ptr %i.n, align 8, !tbaa !8
  %i.o = load i32, ptr %.val50.val, align 4, !tbaa !12 ; 2 uses
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr inbounds [12 x i8], ptr %.val49, i64 %i.p
  %.val.i = load i64, ptr %i.q, align 4
  %i.r = trunc i64 %.val.i to i32
  %i.s = and i32 %i.r, 536870911
  %i.t = sub nsw i32 %i.o, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !67   ; 3 uses
  %i.w = getelementptr i8, ptr %i.v, i64 4
  %.val56 = load i32, ptr %i.w, align 4, !tbaa !69 ; 3 uses
  %i.x = icmp sgt i32 %.val56, 0
  br i1 %i.x, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %Vec_IntAlloc.exit
  %i.y = getelementptr i8, ptr %i.v, i64 8
  %.val59 = load ptr, ptr %i.y, align 8, !tbaa !71
  %wide.trip.count = zext nneg i32 %.val56 to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %.val59, i64 %indvars.iv
  %i.aa = getelementptr i8, ptr %i.z, i64 8
  %.val46 = load ptr, ptr %i.aa, align 8, !tbaa !8
  %i.ab = load i32, ptr %.val46, align 4, !tbaa !12
  %i.ac = ashr i32 %i.ab, 1
  %i.ad = icmp eq i32 %i.ac, %i.t
  br i1 %i.ad, label %.critedge.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge2, label %bb.c, !llvm.loop !72

.critedge.loopexit:                               ; preds = %bb.c
  %i.ae = trunc nuw nsw i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %Vec_IntAlloc.exit
  %.041.lcssa = phi i32 [ 0, %Vec_IntAlloc.exit ], [ %i.ae, %.critedge.loopexit ] ; 2 uses
  %i.af = icmp slt i32 %.041.lcssa, %.val56
  br i1 %i.af, label %.lr.ph94, label %.critedge2

.lr.ph94:                                         ; preds = %.critedge
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.ah = zext i32 %.041.lcssa to i64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph94, %bb.ba
  %indvars.iv100 = phi i64 [ %i.ah, %.lr.ph94 ], [ %indvars.iv.next101.pre-phi, %bb.ba ] ; 3 uses
  %i.ai = phi ptr [ %i.v, %.lr.ph94 ], [ %i.fs, %bb.ba ]
  %.093 = phi i32 [ 0, %.lr.ph94 ], [ %.1, %bb.ba ] ; 2 uses
  %i.aj = getelementptr i8, ptr %i.ai, i64 8
  %.val58 = load ptr, ptr %i.aj, align 8, !tbaa !71
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %.val58, i64 %indvars.iv100 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.a, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.al = getelementptr i8, ptr %i.ak, i64 4      ; 2 uses
  %.val48 = load i32, ptr %i.al, align 4, !tbaa !43 ; 2 uses
  %i.am = icmp eq i32 %.val48, 1
  br i1 %i.am, label %bb.f, label %.preheader

.preheader:                                       ; preds = %bb.e
  %i.an = icmp sgt i32 %.val48, 0
end_hunk_0
