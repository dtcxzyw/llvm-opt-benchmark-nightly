Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/freetype/original/sfnt?download=true
inline.NumInlined: 119
inline.NumDeleted: 44
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 35
begin_hunk_0_@sfnt_get_name_id:bb.a

.thread.sink.split:                               ; preds = %bb.i, %bb.j, %bb.f, %bb.g
  %.sink28 = phi ptr [ %2, %bb.f ], [ %2, %bb.g ], [ %3, %bb.j ], [ %3, %bb.i ]
  %i.aa = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.aa, ptr %.sink28, align 4, !tbaa !30
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.d, %bb.g, %bb.e, %bb.h, %bb.j, %bb.c, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !8

._crit_edge:                                      ; preds = %.thread, %bb.a
  %i.ab = load i32, ptr %2, align 4, !tbaa !30
  %i.ac = icmp sgt i32 %i.ab, -1
  br i1 %i.ac, label %bb.l, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %i.ad = load i32, ptr %3, align 4, !tbaa !30
  %i.ae = icmp sgt i32 %i.ad, -1
  %i.af = zext i1 %i.ae to i8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge
  %i.ag = phi i8 [ 1, %._crit_edge ], [ %i.af, %bb.k ]
  ret i8 %i.ag
}

; Function Attrs: nounwind uwtable
define internal i32 @tt_face_load_svg(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 8 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !162  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  store ptr null, ptr %i.c, align 8, !tbaa !141
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !127
  %i.h = call i32 %i.g(ptr noundef %0, i64 noundef 1398163232, ptr noundef %1, ptr noundef nonnull %i.b) #27 ; 2 uses
  store i32 %i.h, ptr %i.a, align 4, !tbaa !30
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.b, align 8, !tbaa !121  ; 2 uses
  %i.j = icmp ult i64 %i.i, 24
  br i1 %i.j, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = call i32 @FT_Stream_ExtractFrame(ptr noundef %1, i64 noundef %i.i, ptr noundef nonnull %i.c) #27 ; 2 uses
  store i32 %i.k, ptr %i.a, align 4, !tbaa !30
  %.not38 = icmp eq i32 %i.k, 0
  br i1 %.not38, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.l = call ptr @ft_mem_alloc(ptr noundef %i.e, i64 noundef 32, ptr noundef nonnull %i.a) #27 ; 10 uses
  %i.m = load i32, ptr %i.a, align 4, !tbaa !30
  %.not39 = icmp eq i32 %i.m, 0
  br i1 %.not39, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.n = load ptr, ptr %i.c, align 8, !tbaa !141  ; 5 uses
  %i.o = load i8, ptr %i.n, align 1, !tbaa !29
  %i.p = zext i8 %i.o to i16
  %i.q = shl nuw i16 %i.p, 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  %i.s = load i8, ptr %i.r, align 1, !tbaa !29
  %i.t = zext i8 %i.s to i16
  %i.u = or disjoint i16 %i.q, %i.t
  store i16 %i.u, ptr %i.l, align 8, !tbaa !648
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 2
  %i.w = load i32, ptr %i.v, align 1
  %i.x = call i32 @llvm.bswap.i32(i32 %i.w)       ; 2 uses
  %i.y = zext i32 %i.x to i64                     ; 3 uses
  %i.z = icmp ult i32 %i.x, 10
  br i1 %i.z, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = load i64, ptr %i.b, align 8, !tbaa !121 ; 3 uses
  %i.ab = add i64 %i.aa, -14
  %i.ac = icmp ult i64 %i.ab, %i.y
  br i1 %i.ac, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.y ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !336
  %i.af = load i8, ptr %i.ad, align 1, !tbaa !29
  %i.ag = zext i8 %i.af to i16
  %i.ah = shl nuw i16 %i.ag, 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 1
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !29
  %i.ak = zext i8 %i.aj to i16
  %i.al = or disjoint i16 %i.ah, %i.ak            ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.l, i64 2
  store i16 %i.al, ptr %i.am, align 2, !tbaa !337
  %i.an = add nuw nsw i64 %i.y, 2
  %i.ao = zext i16 %i.al to i64
  %i.ap = mul nuw nsw i64 %i.ao, 12
  %i.aq = add nuw nsw i64 %i.an, %i.ap
  %i.ar = icmp ugt i64 %i.aq, %i.aa
  br i1 %i.ar, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %i.n, ptr %i.as, align 8, !tbaa !338
  %i.at = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store i64 %i.aa, ptr %i.at, align 8, !tbaa !339
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 1472
  store ptr %i.l, ptr %i.au, align 8, !tbaa !182
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !140
  %i.ax = or i64 %i.aw, 65536
  store i64 %i.ax, ptr %i.av, align 8, !tbaa !140
  br label %bb.k

bb.i:                                             ; preds = %bb.g, %bb.e, %bb.f, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ %i.l, %bb.e ], [ %i.l, %bb.f ], [ %i.l, %bb.g ]
  store i32 8, ptr %i.a, align 4, !tbaa !30
  br label %bb.j

bb.j:                                             ; preds = %bb.d, %bb.c, %bb.a, %bb.i
  %.1 = phi ptr [ null, %bb.a ], [ %.0, %bb.i ], [ null, %bb.c ], [ %i.l, %bb.d ]
  call void @FT_Stream_ReleaseFrame(ptr noundef %1, ptr noundef nonnull %i.c) #27
  call void @ft_mem_free(ptr noundef %i.e, ptr noundef %.1) #27
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 1472
  store ptr null, ptr %i.ay, align 8, !tbaa !182
  %i.az = load i32, ptr %i.a, align 4, !tbaa !30
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.h
  %.035 = phi i32 [ %i.az, %bb.j ], [ 0, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret i32 %.035
}

; Function Attrs: nounwind uwtable
define internal void @tt_face_free_svg(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1472
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !182  ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !139
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !162
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  tail call void @FT_Stream_ReleaseFrame(ptr noundef %i.d, ptr noundef nonnull %i.g) #27
  tail call void @ft_mem_free(ptr noundef %i.f, ptr noundef nonnull %i.b) #27
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @tt_face_load_svg_doc(ptr nofree noundef captures(none) %0, i32 noundef %1) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !656  ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 184
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !162  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 1472
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !182  ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !657  ; 11 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !336  ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 2 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  %i.o = load i16, ptr %i.n, align 2, !tbaa !337  ; 2 uses
  %i.p = zext i16 %i.o to i32
  %i.q = add nsw i32 %i.p, -1                     ; 2 uses
  %i.r = icmp eq i16 %i.o, 0
  br i1 %i.r, label %find_doc.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = load i8, ptr %i.m, align 1, !tbaa !29, !noalias !658
  %i.t = zext i8 %i.s to i32
  %i.u = shl nuw nsw i32 %i.t, 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 3
  %i.w = load i8, ptr %i.v, align 1, !tbaa !29, !noalias !658
  %i.x = zext i8 %i.w to i32
  %i.y = or disjoint i32 %i.u, %i.x
  %i.z = icmp ult i32 %1, %i.y
  br i1 %i.z, label %find_doc.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aa = mul nsw i32 %i.q, 12
  %i.ab = zext i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.ab ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 2
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !29, !noalias !659
  %i.af = zext i8 %i.ae to i32
  %i.ag = shl nuw nsw i32 %i.af, 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 3
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !29, !noalias !659
  %i.aj = zext i8 %i.ai to i32
  %i.ak = or disjoint i32 %i.ag, %i.aj
  %i.al = load i8, ptr %i.ac, align 1, !tbaa !29, !noalias !659
  %i.am = zext i8 %i.al to i32
  %i.an = shl nuw nsw i32 %i.am, 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ac, i64 1
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !29, !noalias !659
  %i.aq = zext i8 %i.ap to i32
  %i.ar = or disjoint i32 %i.an, %i.aq
  %i.as = icmp uge i32 %1, %i.ar
  %i.at = icmp ugt i32 %1, %i.ak
  %i.au = select i1 %i.as, i1 %i.at, i1 false
  br i1 %i.au, label %find_doc.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c, %bb.f
  %.084.i = phi i32 [ %.1.i, %bb.f ], [ %i.q, %bb.c ] ; 2 uses
  %.03183.i = phi i32 [ %.132.i, %bb.f ], [ 0, %bb.c ] ; 2 uses
  %i.av = add i32 %.03183.i, %.084.i
  %i.aw = lshr i32 %i.av, 1                       ; 3 uses
  %i.ax = mul i32 %i.aw, 12
  %i.ay = zext i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.ay ; 6 uses
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !29, !noalias !660
  %i.bb = zext i8 %i.ba to i16
  %i.bc = shl nuw i16 %i.bb, 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 1
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !29, !noalias !660
  %i.bf = zext i8 %i.be to i16
  %i.bg = or disjoint i16 %i.bc, %i.bf            ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.az, i64 2
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !29, !noalias !660
  %i.bj = zext i8 %i.bi to i16
  %i.bk = shl nuw i16 %i.bj, 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.az, i64 3
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !29, !noalias !660
  %i.bn = zext i8 %i.bm to i16
  %i.bo = or disjoint i16 %i.bk, %i.bn            ; 2 uses
  %i.bp = zext i16 %i.bg to i32
  %i.bq = icmp ult i32 %1, %i.bp
  %i.br = zext i16 %i.bo to i32
  %i.bs = icmp ugt i32 %1, %i.br
  %..i45.i = zext i1 %i.bs to i32
  %.0.i46.i = select i1 %i.bq, i32 -1, i32 %..i45.i
  switch i32 %.0.i46.i, label %bb.g [
    i32 1, label %bb.d
    i32 -1, label %bb.e
  ]

bb.d:                                             ; preds = %.preheader.i
  %i.bt = add nuw i32 %i.aw, 1
  br label %bb.f

bb.e:                                             ; preds = %.preheader.i
  %i.bu = add nsw i32 %i.aw, -1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.132.i = phi i32 [ %i.bt, %bb.d ], [ %.03183.i, %bb.e ] ; 2 uses
  %.1.i = phi i32 [ %.084.i, %bb.d ], [ %i.bu, %bb.e ] ; 2 uses
  %.not.not.i = icmp ugt i32 %.132.i, %.1.i
  br i1 %.not.not.i, label %find_doc.exit.thread, label %.preheader.i, !llvm.loop !655

bb.g:                                             ; preds = %.preheader.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bw = load i32, ptr %i.bv, align 1
  %i.bx = tail call i32 @llvm.bswap.i32(i32 %i.bw) ; 2 uses
  %i.by = zext i32 %i.bx to i64                   ; 7 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  %i.ca = load i32, ptr %i.bz, align 1
  %i.cb = tail call i32 @llvm.bswap.i32(i32 %i.ca)
  %i.cc = zext i32 %i.cb to i64                   ; 3 uses
  store i32 0, ptr %i.a, align 4, !tbaa !30
  %i.cd = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !339
  %i.cf = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !338
  %i.ch = ptrtoint ptr %i.l to i64
  %i.ci = ptrtoint ptr %i.cg to i64
  %.neg = sub i64 %i.ci, %i.ch
  %i.cj = add i64 %.neg, %i.ce                    ; 2 uses
  %i.ck = icmp ult i64 %i.cj, %i.cc
  %i.cl = sub nuw i64 %i.cj, %i.cc
  %i.cm = icmp ult i64 %i.cl, %i.by
  %or.cond = select i1 %i.ck, i1 true, i1 %i.cm
  br i1 %or.cond, label %find_doc.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cn = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.cc ; 9 uses
  %i.co = icmp ugt i32 %i.bx, 6
  br i1 %i.co, label %bb.i, label %bb.q

bb.i:                                             ; preds = %bb.h
  %i.cp = load i8, ptr %i.cn, align 1, !tbaa !29
  %i.cq = icmp eq i8 %i.cp, 31
  br i1 %i.cq, label %bb.j, label %bb.q

bb.j:                                             ; preds = %bb.i
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cn, i64 1
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !29
  %i.ct = icmp eq i8 %i.cs, -117
  br i1 %i.ct, label %bb.k, label %bb.q

bb.k:                                             ; preds = %bb.j
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cn, i64 2
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !29
  %i.cw = icmp eq i8 %i.cv, 8
  br i1 %i.cw, label %bb.l, label %bb.q

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  %i.cx = getelementptr i8, ptr %i.cn, i64 %i.by  ; 2 uses
  %i.cy = getelementptr i8, ptr %i.cx, i64 -2
  %i.cz = load i16, ptr %i.cy, align 1            ; 2 uses
  %i.da = zext i16 %i.cz to i64
  %i.db = shl nuw nsw i64 %i.da, 16
  %i.dc = getelementptr i8, ptr %i.cx, i64 -4
  %i.dd = load i16, ptr %i.dc, align 1
  %i.de = zext i16 %i.dd to i64
  %i.df = or disjoint i64 %i.db, %i.de            ; 2 uses
  store i64 %i.df, ptr %i.b, align 8, !tbaa !121
  %i.dg = icmp ugt i16 %i.cz, 1023
  br i1 %i.dg, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dh = call ptr @ft_mem_qalloc(ptr noundef %i.f, i64 noundef %i.df, ptr noundef nonnull %i.a) #27 ; 3 uses
  %i.di = load i32, ptr %i.a, align 4, !tbaa !30  ; 2 uses
  %.not53 = icmp eq i32 %i.di, 0
  br i1 %.not53, label %bb.n, label %.thread

bb.n:                                             ; preds = %bb.m
  %i.dj = call i32 @FT_Gzip_Uncompress(ptr noundef %i.f, ptr noundef %i.dh, ptr noundef nonnull %i.b, ptr noundef nonnull %i.cn, i64 noundef %i.by) #27 ; 2 uses
  store i32 %i.dj, ptr %i.a, align 4, !tbaa !30
  %.not54 = icmp eq i32 %i.dj, 0
  br i1 %.not54, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @ft_mem_free(ptr noundef %i.f, ptr noundef %i.dh) #27
  br label %.thread

.thread:                                          ; preds = %bb.l, %bb.o, %bb.m
  %i.dk = phi i32 [ %i.di, %bb.m ], [ 8, %bb.o ], [ 10, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  br label %find_doc.exit.thread

bb.p:                                             ; preds = %bb.n
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !276
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8 ; 2 uses
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !278
  %i.dp = or i32 %i.do, 2
  store i32 %i.dp, ptr %i.dn, align 8, !tbaa !278
  %i.dq = load i64, ptr %i.b, align 8, !tbaa !121
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !656
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.k, %bb.j, %bb.i, %bb.h
  %i.dr = phi ptr [ %.pre, %bb.p ], [ %i.d, %bb.k ], [ %i.d, %bb.j ], [ %i.d, %bb.i ], [ %i.d, %bb.h ]
  %.164 = phi i64 [ %i.dq, %bb.p ], [ %i.by, %bb.k ], [ %i.by, %bb.j ], [ %i.by, %bb.i ], [ %i.by, %bb.h ]
  %.1 = phi ptr [ %i.dh, %bb.p ], [ %i.cn, %bb.k ], [ %i.cn, %bb.j ], [ %i.cn, %bb.i ], [ %i.cn, %bb.h ]
  store ptr %.1, ptr %i.j, align 8, !tbaa !662
  %i.ds = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %.164, ptr %i.ds, align 8, !tbaa !663
  %i.dt = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 160
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !340
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.dt, ptr noundef nonnull align 8 dereferenceable(56) %i.dw, i64 56, i1 false), !tbaa.struct !664
  %i.dx = load ptr, ptr %i.c, align 8, !tbaa !656
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 136
  %i.dz = load i16, ptr %i.dy, align 8, !tbaa !195
  %i.ea = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  store i16 %i.dz, ptr %i.ea, align 8, !tbaa !665
  %i.eb = getelementptr inbounds nuw i8, ptr %i.j, i64 74
  store i16 %i.bg, ptr %i.eb, align 2, !tbaa !666
  %i.ec = getelementptr inbounds nuw i8, ptr %i.j, i64 76
  store i16 %i.bo, ptr %i.ec, align 4, !tbaa !667
  %i.ed = getelementptr inbounds nuw i8, ptr %i.j, i64 80
  store i64 65536, ptr %i.ed, align 8, !tbaa !668
  %i.ee = getelementptr inbounds nuw i8, ptr %i.j, i64 88
  %i.ef = getelementptr inbounds nuw i8, ptr %i.j, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ee, i8 0, i64 16, i1 false)
  store i64 65536, ptr %i.ef, align 8, !tbaa !669
  %i.eg = getelementptr inbounds nuw i8, ptr %i.j, i64 112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.eg, i8 0, i64 16, i1 false)
  store ptr %i.j, ptr %i.i, align 8, !tbaa !657
  br label %find_doc.exit.thread

find_doc.exit.thread:                             ; preds = %bb.f, %bb.g, %bb.c, %bb.a, %bb.b, %.thread, %bb.q
  %i.eh = phi i32 [ %i.dk, %.thread ], [ 8, %bb.g ], [ 0, %bb.q ], [ 16, %bb.b ], [ 16, %bb.c ], [ 8, %bb.a ], [ 16, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret i32 %i.eh
}
end_hunk_0
begin_hunk_1_@tt_cmap4_char_map_linear:bb.a
  %i.cq = or disjoint i32 %i.cm, %i.cp            ; 3 uses
  %.094104.mux = tail call i32 @llvm.umax.i32(i32 %.094104, i32 %i.cq)
  %i.cr = getelementptr inbounds nuw i8, ptr %.091106, i64 %i.u ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 1
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.u ; 4 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 1
  %i.cv = icmp uge i32 %.0100103, %i.w
  %i.cw = icmp eq i32 %i.cq, 65535
  %or.cond = and i1 %i.cv, %i.cw
  %i.cx = icmp eq i32 %i.ci, 65535
  %or.cond3 = and i1 %or.cond, %i.cx
  br label %bb.e

bb.d:                                             ; preds = %.split140.us.split.us
  %i.cy = load i8, ptr %i.ao, align 1, !tbaa !29
  %i.cz = zext i8 %i.cy to i32
  %i.da = shl nuw nsw i32 %i.cz, 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.ao, i64 1
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !29
  %i.dd = zext i8 %i.dc to i32
  %i.de = or disjoint i32 %i.da, %i.dd
  %.0101.us.us.le = select i1 %or.cond123.us.us.us.us, i32 1, i32 %i.de
  %i.df = add nuw nsw i32 %i.ca, %.0101.us.us.le
  %i.dg = and i32 %i.df, 65535                    ; 2 uses
  %i.dh = load i64, ptr %i.x, align 8, !tbaa !115
  %i.di = trunc i64 %i.dh to i32
  %.not118.us.us = icmp ult i32 %i.dg, %i.di
  %spec.store.select.us.us = select i1 %.not118.us.us, i32 %i.dg, i32 0
  br label %.thread10

bb.e:                                             ; preds = %.thread, %.split
  %.296 = phi i32 [ %.094104.mux, %.split ], [ %i.fd, %.thread ] ; 9 uses
  %.not112 = icmp ugt i32 %.296, %i.ci
  br i1 %.not112, label %.thread4.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.dj = load i8, ptr %i.cr, align 1, !tbaa !29
  %i.dk = zext i8 %i.dj to i16
  %i.dl = shl nuw i16 %i.dk, 8
  %i.dm = load i8, ptr %i.cs, align 1, !tbaa !29
  %i.dn = zext i8 %i.dm to i16
  %i.do = or disjoint i16 %i.dl, %i.dn
  %i.dp = sext i16 %i.do to i32
  %i.dq = load i8, ptr %i.ct, align 1, !tbaa !29
  %i.dr = zext i8 %i.dq to i32
  %i.ds = shl nuw nsw i32 %i.dr, 8
  %i.dt = load i8, ptr %i.cu, align 1, !tbaa !29
  %i.du = zext i8 %i.dt to i32
  %i.dv = or disjoint i32 %i.ds, %i.du            ; 3 uses
  %i.dw = icmp ne i32 %i.dv, 0
  %or.cond7 = select i1 %or.cond3, i1 %i.dw, i1 false
  %i.dx = zext nneg i32 %i.dv to i64
  %i.dy = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.dx
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 2
  %i.ea = icmp ugt ptr %i.dz, %i.e
  %or.cond123 = select i1 %or.cond7, i1 %i.ea, i1 false ; 2 uses
  %.0102 = select i1 %or.cond123, i32 0, i32 %i.dv ; 2 uses
  %.0101 = select i1 %or.cond123, i32 1, i32 %i.dp ; 5 uses
  %trunc = trunc nuw i32 %.0102 to i16
  switch i16 %trunc, label %bb.g [
    i16 -1, label %.thread4.split
    i16 0, label %bb.j
  ]

bb.g:                                             ; preds = %bb.f
  %i.eb = sub nsw i32 %.296, %i.cq
  %i.ec = shl nsw i32 %i.eb, 1
  %i.ed = add nsw i32 %.0102, %i.ec
  %i.ee = zext i32 %i.ed to i64
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.ee ; 3 uses
  %i.eg = icmp ugt ptr %i.ef, %i.e
  br i1 %i.eg, label %.thread4.split, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.eh = load i8, ptr %i.ef, align 1, !tbaa !29
  %i.ei = zext i8 %i.eh to i32
  %i.ej = shl nuw nsw i32 %i.ei, 8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ef, i64 1
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !29
  %i.em = zext i8 %i.el to i32
  %i.en = or disjoint i32 %i.ej, %i.em            ; 2 uses
  %.not117 = icmp eq i32 %i.en, 0
  br i1 %.not117, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.eo = add nsw i32 %i.en, %.0101
  %i.ep = and i32 %i.eo, 65535                    ; 2 uses
  %i.eq = load i64, ptr %i.x, align 8, !tbaa !115
  %i.er = trunc i64 %i.eq to i32
  %.not118 = icmp ult i32 %i.ep, %i.er
  br i1 %.not118, label %select.unfold, label %.thread

bb.j:                                             ; preds = %bb.f
  %i.es = add nsw i32 %.0101, %.296               ; 3 uses
  %i.et = and i32 %i.es, 65535                    ; 2 uses
  %i.eu = load i64, ptr %i.x, align 8, !tbaa !115
  %i.ev = trunc i64 %i.eu to i32
  %.not115 = icmp ult i32 %i.et, %i.ev
  br i1 %.not115, label %select.unfold, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ew = icmp slt i32 %i.es, 0
  %i.ex = add nsw i32 %.0101, %i.ci               ; 2 uses
  %i.ey = icmp sgt i32 %i.ex, -1
  %or.cond126 = select i1 %i.ew, i1 %i.ey, i1 false
  br i1 %or.cond126, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ez = sub nsw i32 0, %.0101
  br label %.thread

bb.m:                                             ; preds = %bb.k
  %i.fa = icmp slt i32 %i.es, 65536
  %i.fb = icmp sgt i32 %i.ex, 65535
  %or.cond128 = select i1 %i.fa, i1 %i.fb, i1 false
  br i1 %or.cond128, label %bb.n, label %.thread4.split

bb.n:                                             ; preds = %bb.m
  %narrow = sub nsw i32 65536, %.0101
  br label %.thread

select.unfold:                                    ; preds = %bb.i, %bb.j
  %.2 = phi i32 [ %i.et, %bb.j ], [ %i.ep, %bb.i ] ; 2 uses
  %.not212 = icmp eq i32 %.2, 0
  br i1 %.not212, label %.thread, label %.thread10

.thread:                                          ; preds = %bb.n, %bb.l, %bb.h, %bb.i, %select.unfold
  %.397217 = phi i32 [ %.296, %select.unfold ], [ %narrow, %bb.n ], [ %i.ez, %bb.l ], [ %.296, %bb.h ], [ %.296, %bb.i ] ; 3 uses
  %i.fc = icmp ugt i32 %.397217, 65534
  %i.fd = add nuw nsw i32 %.397217, 1
  br i1 %i.fc, label %.thread10.thread21, label %bb.e

.thread4.split:                                   ; preds = %bb.m, %bb.f, %bb.g, %bb.e
  %i.fe = add nuw nsw i32 %.0100103, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.fe, %i.n
  br i1 %exitcond.not, label %.thread10, label %.split, !llvm.loop !828

.thread10:                                        ; preds = %.thread4.split, %select.unfold, %.thread4.split.us.split.us.us.us, %bb.d, %.split140.us.split.us
  %.6 = phi i32 [ %.296, %select.unfold ], [ %.094104.us.us.mux, %.split140.us.split.us ], [ %.094104.us.us.mux, %.thread4.split.us.split.us.us.us ], [ %.094104.us.us.mux, %bb.d ], [ %.296, %.thread4.split ]
  %.5 = phi i32 [ %.2, %select.unfold ], [ 0, %.split140.us.split.us ], [ 0, %.thread4.split.us.split.us.us.us ], [ %spec.store.select.us.us, %bb.d ], [ 0, %.thread4.split ] ; 2 uses
  br i1 %.not114, label %.thread14, label %.thread10.thread21

.thread10.thread21:                               ; preds = %.thread, %.thread10
  %.526 = phi i32 [ %.5, %.thread10 ], [ 0, %.thread ]
  %.625 = phi i32 [ %.6, %.thread10 ], [ %.397217, %.thread ]
  store i32 %.625, ptr %0, align 4, !tbaa !30
  br label %.thread14

.thread14:                                        ; preds = %.split107.us.split.us, %.split49.us.split.us.split.us, %.thread10, %.thread10.thread21, %bb.a
  %.0103 = phi i32 [ 0, %bb.a ], [ %.526, %.thread10.thread21 ], [ %.5, %.thread10 ], [ %i.bo, %.split49.us.split.us.split.us ], [ 0, %.split107.us.split.us ]
  ret i32 %.0103
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i32 @tt_cmap4_char_map_binary(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, i8 noundef zeroext range(i8 0, 2) %2) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !47     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 816
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !345
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 824
  %i.e = load i64, ptr %i.d, align 8, !tbaa !203
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.e ; 3 uses
  %i.g = load i32, ptr %1, align 4, !tbaa !30
  %i.h = zext nneg i8 %2 to i32
  %i.i = add i32 %i.g, %i.h                       ; 12 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !28   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 6
  %i.m = load i8, ptr %i.l, align 1, !tbaa !29
  %i.n = zext i8 %i.m to i32
  %i.o = shl nuw nsw i32 %i.n, 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 7
  %i.q = load i8, ptr %i.p, align 1, !tbaa !29
  %i.r = zext i8 %i.q to i32
  %i.s = or disjoint i32 %i.o, %i.r               ; 2 uses
  %i.t = lshr i32 %i.s, 1                         ; 7 uses
  %.not = icmp eq i32 %i.t, 0
  br i1 %.not, label %.thread371, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.u = and i32 %i.s, 65534                      ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 14 ; 8 uses
  %i.w = add nuw nsw i32 %i.u, 2
  %i.x = zext nneg i32 %i.w to i64                ; 6 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.v, %bb.b
  %.0232 = phi i32 [ %i.t, %bb.b ], [ %.1233, %bb.v ] ; 2 uses
  %.0230 = phi i32 [ 0, %bb.b ], [ %.1231, %bb.v ] ; 2 uses
  %i.y = add i32 %.0230, %.0232                   ; 4 uses
  %i.z = lshr i32 %i.y, 1                         ; 15 uses
  %i.aa = and i32 %i.y, -2
  %i.ab = zext i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.ab ; 3 uses
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !29
  %i.ae = zext i8 %i.ad to i32
  %i.af = shl nuw nsw i32 %i.ae, 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 1
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !29
  %i.ai = zext i8 %i.ah to i32
  %i.aj = or disjoint i32 %i.af, %i.ai            ; 9 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.x ; 3 uses
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !29
  %i.am = zext i8 %i.al to i32
  %i.an = shl nuw nsw i32 %i.am, 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 1
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !29
  %i.aq = zext i8 %i.ap to i32
  %i.ar = or disjoint i32 %i.an, %i.aq            ; 7 uses
  %i.as = icmp ult i32 %i.i, %i.ar
  br i1 %i.as, label %bb.v, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.at = icmp ugt i32 %i.i, %i.aj
  br i1 %i.at, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.au = add nuw i32 %i.z, 1
  br label %bb.v

bb.f:                                             ; preds = %bb.d
  %i.av = zext nneg i32 %i.u to i64               ; 8 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.av ; 3 uses
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !29
  %i.ay = zext i8 %i.ax to i16
  %i.az = shl nuw i16 %i.ay, 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 1
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !29
  %i.bc = zext i8 %i.bb to i16
  %i.bd = or disjoint i16 %i.az, %i.bc
  %i.be = sext i16 %i.bd to i32                   ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.av ; 6 uses
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !29
  %i.bh = zext i8 %i.bg to i32
  %i.bi = shl nuw nsw i32 %i.bh, 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 1
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !29
  %i.bl = zext i8 %i.bk to i32
  %i.bm = or disjoint i32 %i.bi, %i.bl            ; 4 uses
  %i.bn = add nsw i32 %i.t, -1
  %i.bo = icmp uge i32 %i.z, %i.bn
  %i.bp = icmp eq i32 %i.ar, 65535
  %or.cond = and i1 %i.bo, %i.bp
  %3 = icmp eq i32 %i.aj, 65535
  %or.cond3 = select i1 %or.cond, i1 %3, i1 false
  %i.bq = icmp ne i32 %i.bm, 0
  %or.cond5 = select i1 %or.cond3, i1 %i.bq, i1 false
  %i.br = zext nneg i32 %i.bm to i64
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 2
  %i.bu = icmp ugt ptr %i.bt, %i.f
  %or.cond315 = select i1 %or.cond5, i1 %i.bu, i1 false ; 2 uses
  %.0246 = select i1 %or.cond315, i32 0, i32 %i.bm ; 4 uses
  %.0234 = select i1 %or.cond315, i32 1, i32 %i.be ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !46
  %i.bx = and i32 %i.bw, 2
  %.not295 = icmp eq i32 %i.bx, 0
  %i.by = icmp eq i32 %.0246, 65535               ; 3 uses
  br i1 %.not295, label %bb.m, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bz = add nuw i32 %i.z, 1                     ; 3 uses
  %.not296411 = icmp eq i32 %i.z, 0
  br i1 %.not296411, label %._crit_edge.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.g
  %spec.select = select i1 %i.by, i32 %i.bz, i32 %i.z ; 2 uses
  %i.ca = lshr i32 %i.y, 1                        ; 3 uses
  %i.cb = add nsw i32 %i.ca, -1                   ; 2 uses
  %i.cc = shl nuw i32 %i.cb, 1
  %i.cd = zext i32 %i.cc to i64                   ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.cd ; 2 uses
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !29
  %i.cg = zext i8 %i.cf to i32
  %i.ch = shl nuw nsw i32 %i.cg, 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 1
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !29
  %i.ck = zext i8 %i.cj to i32
  %i.cl = or disjoint i32 %i.ch, %i.ck            ; 2 uses
  %i.cm = icmp samesign ugt i32 %i.i, %i.cl
  br i1 %i.cm, label %._crit_edge, label %.lr.ph561

.lr.ph561:                                        ; preds = %.lr.ph.preheader
  %i.cn = zext nneg i32 %i.ca to i64
  %invariant.gep = getelementptr inbounds i8, ptr %i.v, i64 %i.x
  br label %bb.h

.lr.ph:                                           ; preds = %bb.h
  %indvars.iv.next = add nsw i64 %indvars.iv559, -1 ; 2 uses
  %i.co = trunc nuw i64 %indvars.iv.next to i32   ; 2 uses
  %i.cp = add nsw i32 %i.co, -1                   ; 2 uses
  %i.cq = shl nuw i32 %i.cp, 1
  %i.cr = zext i32 %i.cq to i64                   ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.cr ; 2 uses
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !29
  %i.cu = zext i8 %i.ct to i32
  %i.cv = shl nuw nsw i32 %i.cu, 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cs, i64 1
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !29
  %i.cy = zext i8 %i.cx to i32
  %i.cz = or disjoint i32 %i.cv, %i.cy            ; 2 uses
  %i.da = icmp samesign ugt i32 %i.i, %i.cz
  br i1 %i.da, label %._crit_edge.loopexit, label %bb.h, !llvm.loop !829

bb.h:                                             ; preds = %.lr.ph561, %.lr.ph
  %i.db = phi i32 [ %i.cl, %.lr.ph561 ], [ %i.cz, %.lr.ph ] ; 2 uses
  %i.dc = phi i64 [ %i.cd, %.lr.ph561 ], [ %i.cr, %.lr.ph ]
  %i.dd = phi i32 [ %i.cb, %.lr.ph561 ], [ %i.cp, %.lr.ph ] ; 2 uses
  %.1220416560 = phi i32 [ %spec.select, %.lr.ph561 ], [ %spec.select316, %.lr.ph ]
  %indvars.iv559 = phi i64 [ %i.cn, %.lr.ph561 ], [ %indvars.iv.next, %.lr.ph ]
  %gep = getelementptr inbounds i8, ptr %invariant.gep, i64 %i.dc ; 5 uses
  %i.de = getelementptr inbounds nuw i8, ptr %gep, i64 %i.av ; 5 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.av ; 4 uses
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !29
  %i.dh = zext i8 %i.dg to i32
  %i.di = shl nuw nsw i32 %i.dh, 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.df, i64 1
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !29
  %i.dl = zext i8 %i.dk to i32
  %i.dm = or disjoint i32 %i.di, %i.dl            ; 3 uses
  %.not297 = icmp eq i32 %i.dm, 65535
  %spec.select316 = select i1 %.not297, i32 %.1220416560, i32 %i.dd ; 3 uses
  %.not296 = icmp eq i32 %i.dd, 0
  br i1 %.not296, label %.._crit_edge_crit_edge, label %.lr.ph, !llvm.loop !829

.._crit_edge_crit_edge:                           ; preds = %bb.h
  %i.dn = load i8, ptr %gep, align 1, !tbaa !29
  %i.do = zext i8 %i.dn to i32
  %i.dp = shl nuw nsw i32 %i.do, 8
  %i.dq = getelementptr inbounds nuw i8, ptr %gep, i64 1
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !29
  %i.ds = zext i8 %i.dr to i32
  %i.dt = or disjoint i32 %i.dp, %i.ds
  %i.du = load i8, ptr %i.de, align 1, !tbaa !29
  %i.dv = zext i8 %i.du to i16
  %i.dw = shl nuw i16 %i.dv, 8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.de, i64 1
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !29
  %i.dz = zext i8 %i.dy to i16
  %i.ea = or disjoint i16 %i.dw, %i.dz
  %i.eb = sext i16 %i.ea to i32
  br label %._crit_edge, !llvm.loop !829

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.ec = load i8, ptr %gep, align 1, !tbaa !29
  %i.ed = zext i8 %i.ec to i32
  %i.ee = shl nuw nsw i32 %i.ed, 8
  %i.ef = getelementptr inbounds nuw i8, ptr %gep, i64 1
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !29
  %i.eh = zext i8 %i.eg to i32
  %i.ei = or disjoint i32 %i.ee, %i.eh
  %i.ej = load i8, ptr %i.de, align 1, !tbaa !29
  %i.ek = zext i8 %i.ej to i16
  %i.el = shl nuw i16 %i.ek, 8
  %i.em = getelementptr inbounds nuw i8, ptr %i.de, i64 1
  %i.en = load i8, ptr %i.em, align 1, !tbaa !29
  %i.eo = zext i8 %i.en to i16
  %i.ep = or disjoint i16 %i.el, %i.eo
  %i.eq = sext i16 %i.ep to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.._crit_edge_crit_edge, %.lr.ph.preheader
  %.0270.lcssa = phi i32 [ %i.ar, %.lr.ph.preheader ], [ %i.dt, %.._crit_edge_crit_edge ], [ %i.ei, %._crit_edge.loopexit ] ; 2 uses
  %.0258.lcssa = phi i32 [ %i.aj, %.lr.ph.preheader ], [ %i.db, %.._crit_edge_crit_edge ], [ %i.db, %._crit_edge.loopexit ] ; 2 uses
  %.1247.lcssa = phi i32 [ %.0246, %.lr.ph.preheader ], [ %i.dm, %.._crit_edge_crit_edge ], [ %i.dm, %._crit_edge.loopexit ] ; 2 uses
  %.1235.lcssa = phi i32 [ %.0234, %.lr.ph.preheader ], [ %i.eb, %.._crit_edge_crit_edge ], [ %i.eq, %._crit_edge.loopexit ] ; 2 uses
  %.1220.lcssa = phi i32 [ %spec.select, %.lr.ph.preheader ], [ %spec.select316, %.._crit_edge_crit_edge ], [ %spec.select316, %._crit_edge.loopexit ] ; 2 uses
  %.0209.lcssa = phi ptr [ %i.bf, %.lr.ph.preheader ], [ %i.df, %.._crit_edge_crit_edge ], [ %i.df, %._crit_edge.loopexit ]
  %.0.lcssa = phi i32 [ %i.ca, %.lr.ph.preheader ], [ 0, %.._crit_edge_crit_edge ], [ %i.co, %._crit_edge.loopexit ] ; 2 uses
  %i.er = icmp eq i32 %.1220.lcssa, %i.bz
  br i1 %i.er, label %bb.i, label %bb.k

._crit_edge.thread:                               ; preds = %bb.g
  br i1 %i.by, label %.thread, label %bb.k

bb.i:                                             ; preds = %._crit_edge
  %.not298 = icmp eq i32 %.0.lcssa, %i.z
  br i1 %.not298, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  br label %.thread

.thread:                                          ; preds = %._crit_edge.thread, %bb.j, %bb.i
  %.3273 = phi i32 [ %i.ar, %bb.j ], [ %.0270.lcssa, %bb.i ], [ %i.ar, %._crit_edge.thread ]
  %.3261 = phi i32 [ %i.aj, %bb.j ], [ %.0258.lcssa, %bb.i ], [ %i.aj, %._crit_edge.thread ] ; 2 uses
  %.4250 = phi i32 [ %i.bm, %bb.j ], [ %.1247.lcssa, %bb.i ], [ 65535, %._crit_edge.thread ]
  %.4238 = phi i32 [ %i.be, %bb.j ], [ %.1235.lcssa, %bb.i ], [ %.0234, %._crit_edge.thread ]
  %i.es = icmp ult i32 %i.bz, %i.t
  br i1 %i.es, label %.lr.ph440.preheader, label %.loopexit389

.lr.ph440.preheader:                              ; preds = %.thread
  %i.et = lshr i32 %i.y, 1                        ; 2 uses
  %narrow = add nuw i32 %i.et, 1                  ; 3 uses
  %i.eu = zext i32 %narrow to i64                 ; 2 uses
  %i.ev = add nuw i32 %i.t, %i.et
  %i.ew = sub i32 %i.ev, %i.z
  %wide.trip.count = zext i32 %i.ew to i64
  %i.ex = shl nuw nsw i64 %i.eu, 1
  %i.ey = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.ex ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 %i.x ; 3 uses
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !29
  %i.fb = zext i8 %i.fa to i32
  %i.fc = shl nuw nsw i32 %i.fb, 8
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ez, i64 1
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !29
  %i.ff = zext i8 %i.fe to i32
  %i.fg = or disjoint i32 %i.fc, %i.ff            ; 2 uses
  %i.fh = icmp ult i32 %i.i, %i.fg
  br i1 %i.fh, label %._crit_edge441, label %.lr.ph577

.lr.ph440:                                        ; preds = %.lr.ph577
  %i.fi = shl nuw nsw i64 %indvars.iv.next481, 1
  %i.fj = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.fi ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 %i.x ; 3 uses
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !29
  %i.fm = zext i8 %i.fl to i32
  %i.fn = shl nuw nsw i32 %i.fm, 8
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fk, i64 1
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !29
  %i.fq = zext i8 %i.fp to i32
  %i.fr = or disjoint i32 %i.fn, %i.fq            ; 2 uses
  %i.fs = icmp ult i32 %i.i, %i.fr
  %i.ft = trunc nuw i64 %indvars.iv.next481 to i32 ; 2 uses
  br i1 %i.fs, label %._crit_edge441.loopexit, label %.lr.ph577, !llvm.loop !830

.lr.ph577:                                        ; preds = %.lr.ph440.preheader, %.lr.ph440
  %i.fu = phi i32 [ %i.ft, %.lr.ph440 ], [ %narrow, %.lr.ph440.preheader ]
  %i.fv = phi i32 [ %i.fr, %.lr.ph440 ], [ %i.fg, %.lr.ph440.preheader ] ; 2 uses
  %i.fw = phi ptr [ %i.fj, %.lr.ph440 ], [ %i.ey, %.lr.ph440.preheader ] ; 5 uses
  %.5224437576 = phi i32 [ %spec.select317, %.lr.ph440 ], [ %i.z, %.lr.ph440.preheader ]
  %indvars.iv480575 = phi i64 [ %indvars.iv.next481, %.lr.ph440 ], [ %i.eu, %.lr.ph440.preheader ]
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 %i.x
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 %i.av ; 5 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 %i.av ; 3 uses
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !29
  %i.gb = zext i8 %i.ga to i32
  %i.gc = shl nuw nsw i32 %i.gb, 8
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fz, i64 1
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !29
  %i.gf = zext i8 %i.ge to i32
  %i.gg = or disjoint i32 %i.gc, %i.gf            ; 3 uses
  %.not299 = icmp eq i32 %i.gg, 65535
  %spec.select317 = select i1 %.not299, i32 %.5224437576, i32 %i.fu ; 3 uses
  %indvars.iv.next481 = add nuw nsw i64 %indvars.iv480575, 1 ; 4 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next481, %wide.trip.count
  br i1 %exitcond.not, label %.._crit_edge441_crit_edge, label %.lr.ph440, !llvm.loop !830
end_hunk_1
