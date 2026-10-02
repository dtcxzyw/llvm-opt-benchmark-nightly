Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/freetype/original/ftbase?download=true
inline.NumInlined: 363
inline.NumDeleted: 35
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0_@open_face:bb.a
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @open_face_PS_from_sfnt_stream(ptr nofree noundef readonly captures(address) %0, ptr noundef %1, i64 noundef range(i64 -2147483647, 2147483648) %2, ptr nofree noundef captures(address_is_null) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 1                 ; 5 uses
  %i.b = alloca [4 x i8], align 1                 ; 5 uses
  %i.c = alloca [4 x i8], align 1                 ; 6 uses
  %i.d = alloca [2 x i8], align 1                 ; 6 uses
  %i.e = alloca [4 x i8], align 1                 ; 6 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !184    ; 4 uses
  %i.g = icmp sgt i64 %2, 0
  %i.h = and i64 %2, 65535
  %spec.select = select i1 %i.g, i64 %i.h, i64 %2 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 18 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !199  ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #30
  %i.k = add i64 %i.j, 3
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 9 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !192
  %i.n = icmp ult i64 %i.k, %i.m
  br i1 %i.n, label %bb.b, label %FT_Stream_ReadULong.exit.thread.i

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 9 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !293  ; 2 uses
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = call i64 %i.p(ptr noundef nonnull %1, i64 noundef %i.j, ptr noundef nonnull %i.e, i64 noundef 4) #30, !inline_history !631
  %.not22.i.i = icmp eq i64 %i.q, 4
  br i1 %.not22.i.i, label %..thread_crit_edge.i.i, label %FT_Stream_ReadULong.exit.thread.i

..thread_crit_edge.i.i:                           ; preds = %bb.c
  %.pre.pre.i.i = load i64, ptr %i.i, align 8, !tbaa !199
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.r = load ptr, ptr %1, align 8, !tbaa !191    ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.j
  %.not23.i.i = icmp eq ptr %i.r, null
  br i1 %.not23.i.i, label %.thread.i, label %bb.e

.thread.i:                                        ; preds = %bb.d
  %i.t = add i64 %i.j, 4
  store i64 %i.t, ptr %i.i, align 8, !tbaa !199
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #30
  br label %ft_mem_qalloc.exit.thread50

FT_Stream_ReadULong.exit.thread.i:                ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #30
  br label %ft_mem_qalloc.exit.thread41

bb.e:                                             ; preds = %bb.d, %..thread_crit_edge.i.i
  %.pre.i.i = phi i64 [ %i.j, %bb.d ], [ %.pre.pre.i.i, %..thread_crit_edge.i.i ] ; 4 uses
  %.01926.i.i = phi ptr [ %i.s, %bb.d ], [ %i.e, %..thread_crit_edge.i.i ]
  %i.u = load i32, ptr %.01926.i.i, align 1
  %i.v = add i64 %.pre.i.i, 4                     ; 4 uses
  store i64 %i.v, ptr %i.i, align 8, !tbaa !199
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #30
  %.not39.i = icmp eq i32 %i.u, 829454708
  br i1 %.not39.i, label %bb.f, label %ft_mem_qalloc.exit.thread50

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #30
  %i.w = add i64 %.pre.i.i, 5
  %i.x = load i64, ptr %i.l, align 8, !tbaa !192  ; 2 uses
  %i.y = icmp ult i64 %i.w, %i.x
  br i1 %i.y, label %bb.g, label %FT_Stream_ReadUShort.exit.thread.i

bb.g:                                             ; preds = %bb.f
  %i.z = load ptr, ptr %i.o, align 8, !tbaa !293  ; 2 uses
  %.not.i47.i = icmp eq ptr %i.z, null
  br i1 %.not.i47.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = call i64 %i.z(ptr noundef nonnull %1, i64 noundef %i.v, ptr noundef nonnull %i.d, i64 noundef 2) #30, !inline_history !632
  %.not20.i.i = icmp eq i64 %i.aa, 2
  br i1 %.not20.i.i, label %..thread_crit_edge.i48.i, label %FT_Stream_ReadUShort.exit.thread.i

..thread_crit_edge.i48.i:                         ; preds = %bb.h
  %.pre.pre.i49.i = load i64, ptr %i.i, align 8, !tbaa !199
  %.pre.pre.i = load ptr, ptr %i.o, align 8, !tbaa !293
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ab = load ptr, ptr %1, align 8, !tbaa !191   ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.v
  %.not21.i.i = icmp eq ptr %i.ab, null
  br i1 %.not21.i.i, label %.thread146.i, label %bb.j

.thread146.i:                                     ; preds = %bb.i
  %i.ad = add i64 %.pre.i.i, 6
  store i64 %i.ad, ptr %i.i, align 8, !tbaa !199
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  %i.ae = add i64 %.pre.i.i, 12
  br label %bb.k

FT_Stream_ReadUShort.exit.thread.i:               ; preds = %bb.h, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  br label %ft_mem_qalloc.exit.thread41

bb.j:                                             ; preds = %bb.i, %..thread_crit_edge.i48.i
  %.pre.i = phi ptr [ null, %bb.i ], [ %.pre.pre.i, %..thread_crit_edge.i48.i ] ; 2 uses
  %.pre.i51.i = phi i64 [ %i.v, %bb.i ], [ %.pre.pre.i49.i, %..thread_crit_edge.i48.i ] ; 2 uses
  %.01724.i.i = phi ptr [ %i.ac, %bb.i ], [ %i.d, %..thread_crit_edge.i48.i ] ; 2 uses
  %i.af = load i8, ptr %.01724.i.i, align 1, !tbaa !104
  %i.ag = zext i8 %i.af to i32
  %i.ah = shl nuw nsw i32 %i.ag, 8
  %i.ai = getelementptr inbounds nuw i8, ptr %.01724.i.i, i64 1
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !104
  %i.ak = zext i8 %i.aj to i32
  %i.al = or disjoint i32 %i.ah, %i.ak            ; 2 uses
  %i.am = add i64 %.pre.i51.i, 2
  store i64 %i.am, ptr %i.i, align 8, !tbaa !199
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  %i.an = add i64 %.pre.i51.i, 8                  ; 3 uses
  %.not.i.i.i = icmp eq ptr %.pre.i, null
  br i1 %.not.i.i.i, label %._crit_edge, label %.split.i.i.i

._crit_edge:                                      ; preds = %bb.j
  %.pre = load i64, ptr %i.l, align 8, !tbaa !192
  br label %bb.k

.split.i.i.i:                                     ; preds = %bb.j
  %i.ao = call i64 %.pre.i(ptr noundef nonnull %1, i64 noundef %i.an, ptr noundef null, i64 noundef 0) #30, !inline_history !633
  %.not10.i.i.i = icmp eq i64 %i.ao, 0
  br i1 %.not10.i.i.i, label %bb.l, label %ft_mem_qalloc.exit.thread41

bb.k:                                             ; preds = %._crit_edge, %.thread146.i
  %i.ap = phi i64 [ %i.x, %.thread146.i ], [ %.pre, %._crit_edge ]
  %i.aq = phi i64 [ %i.ae, %.thread146.i ], [ %i.an, %._crit_edge ] ; 2 uses
  %.0.i52150.i = phi i32 [ 0, %.thread146.i ], [ %i.al, %._crit_edge ]
  %.not17.i.i.i = icmp ugt i64 %i.aq, %i.ap
  br i1 %.not17.i.i.i, label %ft_mem_qalloc.exit.thread41, label %bb.l

bb.l:                                             ; preds = %bb.k, %.split.i.i.i
  %i.ar = phi i64 [ %i.aq, %bb.k ], [ %i.an, %.split.i.i.i ] ; 2 uses
  %.0.i52149.i = phi i32 [ %.0.i52150.i, %bb.k ], [ %i.al, %.split.i.i.i ] ; 2 uses
  store i64 %i.ar, ptr %i.i, align 8, !tbaa !199
  %.not.i = icmp eq i32 %.0.i52149.i, 0
  br i1 %.not.i, label %ft_mem_qalloc.exit.thread41, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.l
  %i.as = icmp slt i64 %spec.select, 0            ; 2 uses
  %i.at = icmp sgt i64 %spec.select, -1
  br label %bb.n

bb.m:                                             ; preds = %bb.ae
  %i.au = add nuw i32 %.0124.i, 1                 ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.au, %.0.i52149.i
  br i1 %exitcond.not.i, label %ft_mem_qalloc.exit.thread41, label %bb.n, !llvm.loop !634

bb.n:                                             ; preds = %bb.m, %.lr.ph.i
  %i.av = phi i64 [ %i.ar, %.lr.ph.i ], [ %i.ck, %bb.m ] ; 7 uses
  %.013 = phi i8 [ 0, %.lr.ph.i ], [ %.1, %bb.m ]
  %.0124.i = phi i32 [ 0, %.lr.ph.i ], [ %i.au, %bb.m ]
  %.032123.i = phi i64 [ -1, %.lr.ph.i ], [ %.1.i, %bb.m ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  %i.aw = add i64 %i.av, 3
  %i.ax = load i64, ptr %i.l, align 8, !tbaa !192 ; 2 uses
  %i.ay = icmp ult i64 %i.aw, %i.ax
  br i1 %i.ay, label %bb.o, label %FT_Stream_ReadULong.exit65.thread.i

bb.o:                                             ; preds = %bb.n
  %i.az = load ptr, ptr %i.o, align 8, !tbaa !293 ; 2 uses
  %.not.i56.i = icmp eq ptr %i.az, null
  br i1 %.not.i56.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ba = call i64 %i.az(ptr noundef nonnull %1, i64 noundef %i.av, ptr noundef nonnull %i.c, i64 noundef 4) #30, !inline_history !631
  %.not22.i57.i = icmp eq i64 %i.ba, 4
  br i1 %.not22.i57.i, label %..thread_crit_edge.i58.i, label %FT_Stream_ReadULong.exit65.thread.i

..thread_crit_edge.i58.i:                         ; preds = %bb.p
  %.pre.pre.i59.i = load i64, ptr %i.i, align 8, !tbaa !199
  %.pre134.pre.i = load ptr, ptr %i.o, align 8, !tbaa !293
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.bb = load ptr, ptr %1, align 8, !tbaa !191   ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.av
  %.not23.i64.i = icmp eq ptr %i.bb, null
  br i1 %.not23.i64.i, label %.thread151.i, label %bb.r

.thread151.i:                                     ; preds = %bb.q
  %i.bd = add i64 %i.av, 4
  store i64 %i.bd, ptr %i.i, align 8, !tbaa !199
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  %i.be = add i64 %i.av, 8
  br label %bb.s

FT_Stream_ReadULong.exit65.thread.i:              ; preds = %bb.p, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  br label %ft_mem_qalloc.exit.thread41

bb.r:                                             ; preds = %bb.q, %..thread_crit_edge.i58.i
  %.pre134.i = phi ptr [ null, %bb.q ], [ %.pre134.pre.i, %..thread_crit_edge.i58.i ] ; 2 uses
  %.pre.i61.i = phi i64 [ %i.av, %bb.q ], [ %.pre.pre.i59.i, %..thread_crit_edge.i58.i ] ; 4 uses
  %.01926.i62.i = phi ptr [ %i.bc, %bb.q ], [ %i.c, %..thread_crit_edge.i58.i ]
  %4 = load i32, ptr %.01926.i62.i, align 1
  %5 = call i32 @llvm.bswap.i32(i32 %4)           ; 2 uses
  %i.bf = add i64 %.pre.i61.i, 4
  store i64 %i.bf, ptr %i.i, align 8, !tbaa !199
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  %i.bg = add i64 %.pre.i61.i, 8                  ; 3 uses
  %.not.i.i66.i = icmp eq ptr %.pre134.i, null
  br i1 %.not.i.i66.i, label %._crit_edge54, label %.split.i.i67.i

._crit_edge54:                                    ; preds = %bb.r
  %.pre55 = load i64, ptr %i.l, align 8, !tbaa !192
  br label %bb.s

.split.i.i67.i:                                   ; preds = %bb.r
  %i.bh = call i64 %.pre134.i(ptr noundef nonnull %1, i64 noundef %i.bg, ptr noundef null, i64 noundef 0) #30, !inline_history !633
  %.not10.i.i68.i = icmp eq i64 %i.bh, 0
  br i1 %.not10.i.i68.i, label %.split.i.i67._crit_edge.i, label %ft_mem_qalloc.exit.thread41

.split.i.i67._crit_edge.i:                        ; preds = %.split.i.i67.i
  %.pre135.i = load i64, ptr %i.l, align 8, !tbaa !192
  br label %bb.t

bb.s:                                             ; preds = %._crit_edge54, %.thread151.i
  %i.bi = phi i64 [ %i.ax, %.thread151.i ], [ %.pre55, %._crit_edge54 ] ; 2 uses
  %i.bj = phi i64 [ %i.be, %.thread151.i ], [ %i.bg, %._crit_edge54 ] ; 2 uses
  %.0.i63155.i = phi i32 [ 0, %.thread151.i ], [ %5, %._crit_edge54 ]
  %i.bk = phi i64 [ %i.av, %.thread151.i ], [ %.pre.i61.i, %._crit_edge54 ]
  %.not17.i.i70.i = icmp ugt i64 %i.bj, %i.bi
  br i1 %.not17.i.i70.i, label %ft_mem_qalloc.exit.thread41, label %bb.t

bb.t:                                             ; preds = %bb.s, %.split.i.i67._crit_edge.i
  %i.bl = phi i64 [ %i.bg, %.split.i.i67._crit_edge.i ], [ %i.bj, %bb.s ] ; 5 uses
  %.0.i63154.i = phi i32 [ %5, %.split.i.i67._crit_edge.i ], [ %.0.i63155.i, %bb.s ]
  %i.bm = phi i64 [ %.pre.i61.i, %.split.i.i67._crit_edge.i ], [ %i.bk, %bb.s ]
  %i.bn = phi i64 [ %.pre135.i, %.split.i.i67._crit_edge.i ], [ %i.bi, %bb.s ] ; 3 uses
  store i64 %i.bl, ptr %i.i, align 8, !tbaa !199
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  %i.bo = add i64 %i.bm, 11
  %i.bp = icmp ult i64 %i.bo, %i.bn
  br i1 %i.bp, label %bb.u, label %FT_Stream_ReadULong.exit83.thread.i

bb.u:                                             ; preds = %bb.t
  %i.bq = load ptr, ptr %i.o, align 8, !tbaa !293 ; 2 uses
  %.not.i74.i = icmp eq ptr %i.bq, null
  br i1 %.not.i74.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.br = call i64 %i.bq(ptr noundef nonnull %1, i64 noundef %i.bl, ptr noundef nonnull %i.b, i64 noundef 4) #30, !inline_history !631
  %.not22.i75.i = icmp eq i64 %i.br, 4
  br i1 %.not22.i75.i, label %..thread_crit_edge.i76.i, label %FT_Stream_ReadULong.exit83.thread.i

..thread_crit_edge.i76.i:                         ; preds = %bb.v
  %.pre.pre.i77.i = load i64, ptr %i.i, align 8, !tbaa !199
  %.pre56.pre = load i64, ptr %i.l, align 8, !tbaa !192
  br label %.thread.i78.i

bb.w:                                             ; preds = %bb.u
  %i.bs = load ptr, ptr %1, align 8, !tbaa !191   ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bl
  %.not23.i82.i = icmp eq ptr %i.bs, null
  br i1 %.not23.i82.i, label %bb.x, label %.thread.i78.i

.thread.i78.i:                                    ; preds = %bb.w, %..thread_crit_edge.i76.i
  %.pre56 = phi i64 [ %i.bn, %bb.w ], [ %.pre56.pre, %..thread_crit_edge.i76.i ]
  %.pre.i79.i = phi i64 [ %i.bl, %bb.w ], [ %.pre.pre.i77.i, %..thread_crit_edge.i76.i ]
  %.01926.i80.i = phi ptr [ %i.bt, %bb.w ], [ %i.b, %..thread_crit_edge.i76.i ]
  %i.bu = load i32, ptr %.01926.i80.i, align 1
  %i.bv = call i32 @llvm.bswap.i32(i32 %i.bu)
  %i.bw = zext i32 %i.bv to i64
  br label %bb.x

FT_Stream_ReadULong.exit83.thread.i:              ; preds = %bb.v, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  br label %ft_mem_qalloc.exit.thread41

bb.x:                                             ; preds = %.thread.i78.i, %bb.w
  %i.bx = phi i64 [ %.pre56, %.thread.i78.i ], [ %i.bn, %bb.w ]
  %i.by = phi i64 [ %.pre.i79.i, %.thread.i78.i ], [ %i.bl, %bb.w ] ; 2 uses
  %.0.i81.i = phi i64 [ %i.bw, %.thread.i78.i ], [ 0, %bb.w ] ; 3 uses
  %i.bz = add i64 %i.by, 4                        ; 5 uses
  store i64 %i.bz, ptr %i.i, align 8, !tbaa !199
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.ca = add i64 %i.by, 7
  %i.cb = icmp ult i64 %i.ca, %i.bx
  br i1 %i.cb, label %bb.y, label %FT_Stream_ReadULong.exit95.thread.i

bb.y:                                             ; preds = %bb.x
  %i.cc = load ptr, ptr %i.o, align 8, !tbaa !293 ; 2 uses
  %.not.i86.i = icmp eq ptr %i.cc, null
  br i1 %.not.i86.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cd = call i64 %i.cc(ptr noundef nonnull %1, i64 noundef %i.bz, ptr noundef nonnull %i.a, i64 noundef 4) #30, !inline_history !631
  %.not22.i87.i = icmp eq i64 %i.cd, 4
  br i1 %.not22.i87.i, label %..thread_crit_edge.i88.i, label %FT_Stream_ReadULong.exit95.thread.i

..thread_crit_edge.i88.i:                         ; preds = %bb.z
  %.pre.pre.i89.i = load i64, ptr %i.i, align 8, !tbaa !199
  br label %.thread.i90.i

bb.aa:                                            ; preds = %bb.y
  %i.ce = load ptr, ptr %1, align 8, !tbaa !191   ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.bz
  %.not23.i94.i = icmp eq ptr %i.ce, null
  br i1 %.not23.i94.i, label %bb.ab, label %.thread.i90.i

.thread.i90.i:                                    ; preds = %bb.aa, %..thread_crit_edge.i88.i
  %.pre.i91.i = phi i64 [ %i.bz, %bb.aa ], [ %.pre.pre.i89.i, %..thread_crit_edge.i88.i ]
  %.01926.i92.i = phi ptr [ %i.cf, %bb.aa ], [ %i.a, %..thread_crit_edge.i88.i ]
  %i.cg = load i32, ptr %.01926.i92.i, align 1
  %i.ch = call i32 @llvm.bswap.i32(i32 %i.cg)
  %i.ci = zext i32 %i.ch to i64
  br label %bb.ab

FT_Stream_ReadULong.exit95.thread.i:              ; preds = %bb.z, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %ft_mem_qalloc.exit.thread41

bb.ab:                                            ; preds = %.thread.i90.i, %bb.aa
  %i.cj = phi i64 [ %.pre.i91.i, %.thread.i90.i ], [ %i.bz, %bb.aa ]
  %.0.i93.i = phi i64 [ %i.ci, %.thread.i90.i ], [ 0, %bb.aa ] ; 3 uses
  %i.ck = add i64 %i.cj, 4                        ; 2 uses
  store i64 %i.ck, ptr %i.i, align 8, !tbaa !199
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  switch i32 %.0.i63154.i, label %bb.ae [
    i32 1128875040, label %bb.ac
    i32 1415139377, label %bb.ad
  ]

bb.ac:                                            ; preds = %bb.ab
  %i.cl = add nsw i64 %.032123.i, 1
  %i.cm = add nuw nsw i64 %.0.i81.i, 22           ; 2 uses
  %i.cn = add nsw i64 %.0.i93.i, -22              ; 2 uses
  br i1 %i.as, label %ft_lookup_PS_in_sfnt_stream.exit, label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  %i.co = add nsw i64 %.032123.i, 1
  %i.cp = add nuw nsw i64 %.0.i81.i, 24           ; 2 uses
  %i.cq = add nsw i64 %.0.i93.i, -24              ; 2 uses
  br i1 %i.as, label %ft_lookup_PS_in_sfnt_stream.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.ab
  %.118 = phi i64 [ %.0.i81.i, %bb.ab ], [ %i.cm, %bb.ac ], [ %i.cp, %bb.ad ]
  %.115 = phi i64 [ %.0.i93.i, %bb.ab ], [ %i.cn, %bb.ac ], [ %i.cq, %bb.ad ]
  %.1 = phi i8 [ %.013, %bb.ab ], [ 1, %bb.ac ], [ 0, %bb.ad ] ; 2 uses
  %.1.i = phi i64 [ %.032123.i, %bb.ab ], [ %i.cl, %bb.ac ], [ %i.co, %bb.ad ] ; 2 uses
  %i.cr = icmp eq i64 %.1.i, %spec.select
  %or.cond.i = select i1 %i.at, i1 %i.cr, i1 false
  br i1 %or.cond.i, label %ft_lookup_PS_in_sfnt_stream.exit, label %bb.m

ft_lookup_PS_in_sfnt_stream.exit:                 ; preds = %bb.ae, %bb.ad, %bb.ac
  %.219 = phi i64 [ %i.cm, %bb.ac ], [ %.118, %bb.ae ], [ %i.cp, %bb.ad ] ; 3 uses
  %.216 = phi i64 [ %i.cn, %bb.ac ], [ %.115, %bb.ae ], [ %i.cq, %bb.ad ] ; 6 uses
  %.2 = phi i8 [ 1, %bb.ac ], [ %.1, %bb.ae ], [ 0, %bb.ad ]
  %i.cs = load i64, ptr %i.l, align 8, !tbaa !192 ; 3 uses
  %i.ct = icmp ugt i64 %.219, %i.cs
  %i.cu = sub nuw i64 %i.cs, %.219
  %i.cv = icmp ugt i64 %.216, %i.cu
  %or.cond = select i1 %i.ct, i1 true, i1 %i.cv
  br i1 %or.cond, label %ft_mem_qalloc.exit.thread41, label %bb.af

bb.af:                                            ; preds = %ft_lookup_PS_in_sfnt_stream.exit
  %i.cw = add i64 %.219, %i.j                     ; 3 uses
  %i.cx = load ptr, ptr %i.o, align 8, !tbaa !293 ; 2 uses
  %.not.i36 = icmp eq ptr %i.cx, null
  br i1 %.not.i36, label %bb.ag, label %.split.i

.split.i:                                         ; preds = %bb.af
  %i.cy = call i64 %i.cx(ptr noundef nonnull %1, i64 noundef %i.cw, ptr noundef null, i64 noundef 0) #30, !inline_history !294
  %.not10.i = icmp eq i64 %i.cy, 0
  br i1 %.not10.i, label %bb.ah, label %ft_mem_qalloc.exit.thread41

bb.ag:                                            ; preds = %bb.af
  %.not17.i = icmp ugt i64 %i.cw, %i.cs
  br i1 %.not17.i, label %ft_mem_qalloc.exit.thread41, label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.split.i
  store i64 %i.cw, ptr %i.i, align 8, !tbaa !199
  %i.cz = icmp sgt i64 %.216, 0
  br i1 %i.cz, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.da = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !108
  %i.dc = call ptr %i.db(ptr noundef %i.f, i64 noundef %.216) #30, !inline_history !117 ; 4 uses
  %.not.i37 = icmp eq ptr %i.dc, null
  br i1 %.not.i37, label %ft_mem_qalloc.exit.thread41, label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  %.not14.i = icmp eq i64 %.216, 0
  br i1 %.not14.i, label %.thread, label %ft_mem_qalloc.exit.thread41

bb.ak:                                            ; preds = %bb.ai
  %i.dd = call i32 @FT_Stream_Read(ptr noundef nonnull %1, ptr noundef nonnull %i.dc, i64 noundef %.216) ; 2 uses
  %.not33 = icmp eq i32 %i.dd, 0
  br i1 %.not33, label %bb.am, label %bb.al

.thread:                                          ; preds = %bb.aj
  %i.de = call i32 @FT_Stream_Read(ptr noundef nonnull %1, ptr noundef null, i64 noundef 0) ; 2 uses
  %.not3334 = icmp eq i32 %i.de, 0
  br i1 %.not3334, label %bb.am, label %ft_mem_qalloc.exit

bb.al:                                            ; preds = %bb.ak
  %i.df = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !128
  call void %i.dg(ptr noundef nonnull %i.f, ptr noundef nonnull %i.dc) #30, !inline_history !129
  br label %ft_mem_qalloc.exit

bb.am:                                            ; preds = %.thread, %bb.ak
  %.0.i.ph36 = phi ptr [ null, %.thread ], [ %i.dc, %bb.ak ]
  %i.dh = call i64 @llvm.smin.i64(i64 %spec.select, i64 0)
  %.not34 = icmp eq i8 %.2, 0
  %i.di = select i1 %.not34, ptr @.str.18, ptr @.str.17
  %i.dj = call fastcc i32 @open_face_from_buffer(ptr noundef nonnull %0, ptr noundef %.0.i.ph36, i64 noundef %.216, i64 noundef %i.dh, ptr noundef nonnull %i.di, ptr noundef %3)
  br label %ft_mem_qalloc.exit

ft_mem_qalloc.exit:                               ; preds = %.thread, %bb.al, %bb.am
  %.020 = phi i32 [ %i.de, %.thread ], [ %i.dd, %bb.al ], [ %i.dj, %bb.am ] ; 3 uses
  %i.dk = and i32 %.020, 255
  %i.dl = icmp eq i32 %i.dk, 2
  br i1 %i.dl, label %ft_mem_qalloc.exit.thread50, label %ft_mem_qalloc.exit.thread41

ft_mem_qalloc.exit.thread50:                      ; preds = %bb.e, %.thread.i, %ft_mem_qalloc.exit
  %.02052 = phi i32 [ %.020, %ft_mem_qalloc.exit ], [ 2, %.thread.i ], [ 2, %bb.e ]
  %i.dm = load ptr, ptr %i.o, align 8, !tbaa !293 ; 2 uses
  %.not.i39 = icmp eq ptr %i.dm, null
  br i1 %.not.i39, label %bb.an, label %.split.i40

.split.i40:                                       ; preds = %ft_mem_qalloc.exit.thread50
  %i.dn = call i64 %i.dm(ptr noundef nonnull %1, i64 noundef %i.j, ptr noundef null, i64 noundef 0) #30, !inline_history !294
  %.not10.i41 = icmp eq i64 %i.dn, 0
  br i1 %.not10.i41, label %FT_Stream_Seek.exit44, label %ft_mem_qalloc.exit.thread41
end_hunk_0
begin_hunk_1_@open_face_from_buffer:bb.a

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %.019.i = phi ptr [ %i.h, %bb.c ], [ %i.c, %bb.b ] ; 2 uses
  %i.j = load ptr, ptr %.019.i, align 8, !tbaa !210 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !105
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !211
  %i.n = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.m, ptr noundef nonnull readonly dereferenceable(1) %4) #31
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.e, label %bb.c

.loopexit:                                        ; preds = %bb.c, %bb.b
  %.not.i20 = icmp eq ptr %1, null
  br i1 %.not.i20, label %ft_mem_free.exit, label %bb.d

bb.d:                                             ; preds = %.loopexit
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !128
  tail call void %i.q(ptr noundef %i.a, ptr noundef nonnull %1) #30, !inline_history !129
  br label %ft_mem_free.exit

bb.e:                                             ; preds = %.lr.ph.i
  store ptr %i.j, ptr %i.b, align 8, !tbaa !290
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  %i.r = phi i32 [ 10, %bb.e ], [ 2, %bb.a ]
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 32
  %.not16.i = icmp eq ptr %1, null
  br i1 %.not16.i, label %ft_mem_free.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !108
  %i.v = tail call ptr %i.u(ptr noundef %i.a, i64 noundef 80) #30, !inline_history !635 ; 8 uses
  %.not.i.not.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.not.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !128
  tail call void %i.x(ptr noundef nonnull %i.a, ptr noundef nonnull %1) #30, !inline_history !129
  br label %ft_mem_free.exit

bb.i:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %i.y, i8 0, i64 48, i1 false)
  store ptr %1, ptr %i.v, align 8, !tbaa !191
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i64 %2, ptr %i.z, align 8, !tbaa !192
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i64 0, ptr %i.aa, align 8, !tbaa !199
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store ptr %i.a, ptr %i.ab, align 8, !tbaa !104
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  store ptr @memory_stream_close, ptr %i.ac, align 8, !tbaa !197
  store ptr %i.v, ptr %i.s, align 8, !tbaa !180
  store i32 %i.r, ptr %6, align 8, !tbaa !187
  %i.ad = call fastcc i32 @ft_open_face_internal(ptr noundef nonnull %0, ptr noundef nonnull %6, i64 noundef %3, ptr noundef %5, i8 noundef zeroext 0)
  br label %ft_mem_free.exit

ft_mem_free.exit:                                 ; preds = %bb.f, %bb.h, %bb.d, %.loopexit, %bb.i
  %.0 = phi i32 [ 11, %bb.d ], [ %i.ad, %bb.i ], [ 11, %.loopexit ], [ 64, %bb.h ], [ 6, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal void @memory_stream_close(ptr noundef initializes((8, 16), (48, 56)) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !104  ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !191    ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %ft_mem_free.exit9, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !128
  tail call void %i.e(ptr noundef %i.b, ptr noundef nonnull %i.c) #30, !inline_history !129
  br label %ft_mem_free.exit9

ft_mem_free.exit9:                                ; preds = %bb.a, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr null, ptr %i.f, align 8, !tbaa !197
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !128
  tail call void %i.h(ptr noundef %i.b, ptr noundef nonnull %0) #30, !inline_history !129
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @IsMacResource(ptr nofree noundef readonly captures(address) %0, ptr noundef %1, i64 noundef %2, i64 noundef range(i64 -2147483647, 2147483648) %3, ptr nofree noundef captures(address_is_null) %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 1                 ; 6 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 9 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = alloca ptr, align 8                      ; 6 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !184    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #30
  %i.i = call i32 @FT_Raccess_Get_HeaderInfo(ptr nonnull poison, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) ; 2 uses
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.b, label %ft_mem_free.exit42.thread

bb.b:                                             ; preds = %bb.a
  %i.j = load i64, ptr %i.d, align 8, !tbaa !68   ; 2 uses
  %i.k = load i64, ptr %i.e, align 8, !tbaa !68   ; 2 uses
  %i.l = call i32 @FT_Raccess_Get_DataOffsets(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %i.j, i64 noundef %i.k, i64 noundef 1347375956, i8 noundef zeroext 1, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g)
  %.not34 = icmp eq i32 %i.l, 0
  br i1 %.not34, label %bb.c, label %bb.af

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !369  ; 4 uses
  %i.n = load i64, ptr %i.g, align 8, !tbaa !68   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  %i.o = load ptr, ptr %0, align 8, !tbaa !184    ; 4 uses
  %i.p = add nsw i64 %3, 1
  %.not.i = icmp ult i64 %i.p, 2
  br i1 %.not.i, label %.preheader, label %Mac_Read_POST_Resource.exit

.preheader:                                       ; preds = %bb.c
  %i.q = icmp sgt i64 %i.n, 0
  br i1 %i.q, label %.lr.ph, label %Mac_Read_POST_Resource.exit

.lr.ph:                                           ; preds = %.preheader
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.l
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.l ] ; 2 uses
  %.0115.i116 = phi i64 [ 0, %.lr.ph ], [ %i.ao, %bb.l ]
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv
  %i.v = load i64, ptr %i.u, align 8, !tbaa !68   ; 8 uses
  %i.w = load ptr, ptr %i.r, align 8, !tbaa !293  ; 2 uses
  %.not.i51 = icmp eq ptr %i.w, null
  br i1 %.not.i51, label %bb.e, label %.split.i52

.split.i52:                                       ; preds = %bb.d
  %i.x = call i64 %i.w(ptr noundef nonnull %1, i64 noundef %i.v, ptr noundef null, i64 noundef 0) #30, !inline_history !636
  %.not10.i53 = icmp eq i64 %i.x, 0
  br i1 %.not10.i53, label %.split.i52._crit_edge, label %Mac_Read_POST_Resource.exit.thread

.split.i52._crit_edge:                            ; preds = %.split.i52
  %.pre = load i64, ptr %i.s, align 8, !tbaa !192
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.y = load i64, ptr %i.s, align 8, !tbaa !192  ; 2 uses
  %.not17.i55 = icmp ugt i64 %i.v, %i.y
  br i1 %.not17.i55, label %Mac_Read_POST_Resource.exit.thread, label %bb.f

bb.f:                                             ; preds = %.split.i52._crit_edge, %bb.e
  %i.z = phi i64 [ %.pre, %.split.i52._crit_edge ], [ %i.y, %bb.e ]
  store i64 %i.v, ptr %i.t, align 8, !tbaa !199
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.aa = add i64 %i.v, 3
  %i.ab = icmp ult i64 %i.aa, %i.z
  br i1 %i.ab, label %bb.g, label %FT_Stream_ReadULong.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.ac = load ptr, ptr %i.r, align 8, !tbaa !293 ; 2 uses
  %.not.i49 = icmp eq ptr %i.ac, null
  br i1 %.not.i49, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = call i64 %i.ac(ptr noundef nonnull %1, i64 noundef %i.v, ptr noundef nonnull %i.a, i64 noundef 4) #30, !inline_history !637
  %.not22.i = icmp eq i64 %i.ad, 4
  br i1 %.not22.i, label %..thread_crit_edge.i, label %FT_Stream_ReadULong.exit.thread

..thread_crit_edge.i:                             ; preds = %bb.h
  %.pre.pre.i = load i64, ptr %i.t, align 8, !tbaa !199
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ae = load ptr, ptr %1, align 8, !tbaa !191   ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.v
  %.not23.i = icmp eq ptr %i.ae, null
  br i1 %.not23.i, label %.thread, label %bb.j

.thread:                                          ; preds = %bb.i
  %i.ag = add i64 %i.v, 4
  store i64 %i.ag, ptr %i.t, align 8, !tbaa !199
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %bb.k

FT_Stream_ReadULong.exit.thread:                  ; preds = %bb.f, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %Mac_Read_POST_Resource.exit.thread

bb.j:                                             ; preds = %..thread_crit_edge.i, %bb.i
  %.pre.i = phi i64 [ %i.v, %bb.i ], [ %.pre.pre.i, %..thread_crit_edge.i ]
  %.01926.i = phi ptr [ %i.af, %bb.i ], [ %i.a, %..thread_crit_edge.i ]
  %i.ah = load i32, ptr %.01926.i, align 1
  %i.ai = call i32 @llvm.bswap.i32(i32 %i.ah)     ; 2 uses
  %i.aj = add i64 %.pre.i, 4
  store i64 %i.aj, ptr %i.t, align 8, !tbaa !199
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %5 = zext nneg i32 %i.ai to i64
  %6 = icmp ugt i32 %i.ai, 16777215
  br i1 %6, label %Mac_Read_POST_Resource.exit.thread, label %bb.k

bb.k:                                             ; preds = %.thread, %bb.j
  %i.ak = phi i64 [ 0, %.thread ], [ %5, %bb.j ]  ; 2 uses
  %i.al = sub nuw nsw i64 16777215, %i.ak
  %i.am = add nuw nsw i64 %.0115.i116, 6          ; 2 uses
  %i.an = icmp ult i64 %i.al, %i.am
  br i1 %i.an, label %Mac_Read_POST_Resource.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ao = add nuw nsw i64 %i.am, %i.ak            ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %exitcond.not, label %ft_mem_qalloc.exit, label %bb.d, !llvm.loop !638

ft_mem_qalloc.exit:                               ; preds = %bb.l
  %i.ap = add nuw nsw i64 %i.ao, 2                ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !108
  %i.as = call ptr %i.ar(ptr noundef %i.o, i64 noundef %i.ap) #30, !inline_history !639 ; 12 uses
  %.not.i47.not = icmp eq ptr %i.as, null
  br i1 %.not.i47.not, label %Mac_Read_POST_Resource.exit.thread, label %.lr.ph124

.lr.ph124:                                        ; preds = %ft_mem_qalloc.exit
  store i8 -128, ptr %i.as, align 1, !tbaa !104
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 1
  store i8 1, ptr %i.at, align 1, !tbaa !104
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 2
  store i32 0, ptr %i.au, align 1
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph124, %bb.aa
  %indvars.iv135 = phi i64 [ 0, %.lr.ph124 ], [ %indvars.iv.next136, %bb.aa ] ; 2 uses
  %.0111.i122 = phi i64 [ 2, %.lr.ph124 ], [ %.2.i, %bb.aa ] ; 5 uses
  %.0112.i121 = phi i64 [ 6, %.lr.ph124 ], [ %.2114.i, %bb.aa ] ; 6 uses
  %.0116.i120 = phi i64 [ 0, %.lr.ph124 ], [ %.2118.i, %bb.aa ] ; 4 uses
  %.0119.i119 = phi i32 [ 1, %.lr.ph124 ], [ %.2121.i, %bb.aa ] ; 3 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv135
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !68 ; 3 uses
  %i.ba = load ptr, ptr %i.av, align 8, !tbaa !293 ; 2 uses
  %.not.i45 = icmp eq ptr %i.ba, null
  br i1 %.not.i45, label %bb.n, label %.split.i

.split.i:                                         ; preds = %bb.m
  %i.bb = call i64 %i.ba(ptr noundef nonnull %1, i64 noundef %i.az, ptr noundef null, i64 noundef 0) #30, !inline_history !636
  %.not10.i = icmp eq i64 %i.bb, 0
  br i1 %.not10.i, label %bb.o, label %ft_mem_free.exit44

bb.n:                                             ; preds = %bb.m
  %i.bc = load i64, ptr %i.aw, align 8, !tbaa !192
  %.not17.i = icmp ugt i64 %i.az, %i.bc
  br i1 %.not17.i, label %ft_mem_free.exit44, label %bb.o

bb.o:                                             ; preds = %bb.n, %.split.i
  store i64 %i.az, ptr %i.ax, align 8, !tbaa !199
  %i.bd = call i32 @FT_Stream_ReadULong(ptr noundef nonnull %1, ptr noundef nonnull %i.c), !inline_history !640 ; 3 uses
  %i.be = zext nneg i32 %i.bd to i64
  %i.bf = load i32, ptr %i.c, align 4, !tbaa !118
  %.not138.i = icmp ne i32 %i.bf, 0
  %i.bg = icmp slt i32 %i.bd, 0
  %or.cond = select i1 %.not138.i, i1 true, i1 %i.bg
  br i1 %or.cond, label %ft_mem_free.exit44, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bh = call zeroext i16 @FT_Stream_ReadUShort(ptr noundef nonnull %1, ptr noundef nonnull %i.c), !inline_history !640
  %i.bi = load i32, ptr %i.c, align 4, !tbaa !118
  %.not139.i = icmp eq i32 %i.bi, 0
  br i1 %.not139.i, label %bb.q, label %ft_mem_free.exit44

bb.q:                                             ; preds = %bb.p
  store i32 10, ptr %i.c, align 4, !tbaa !118
  %i.bj = lshr i16 %i.bh, 8                       ; 4 uses
  %i.bk = zext nneg i16 %i.bj to i32              ; 2 uses
  %i.bl = icmp eq i16 %i.bj, 0
  br i1 %i.bl, label %bb.aa, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bm = icmp samesign ugt i32 %i.bd, 2
  %i.bn = add nsw i64 %i.be, -2
  %.0.i = select i1 %i.bm, i64 %i.bn, i64 0       ; 4 uses
  %i.bo = icmp eq i32 %.0119.i119, %i.bk
  br i1 %i.bo, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bp = add i64 %.0.i, %.0116.i120
  br label %bb.x

bb.t:                                             ; preds = %bb.r
  %i.bq = add i64 %.0111.i122, 3
  %i.br = icmp ugt i64 %i.bq, %i.ap
  br i1 %i.br, label %ft_mem_free.exit44, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bs = getelementptr inbounds nuw i8, ptr %i.as, i64 %.0111.i122
  %i.bt = bitcast i64 %.0116.i120 to <8 x i8>
  %i.bu = shufflevector <8 x i8> %i.bt, <8 x i8> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i8> %i.bu, ptr %i.bs, align 1, !tbaa !104
  %i.bv = icmp eq i16 %i.bj, 5
  br i1 %i.bv, label %._crit_edge125, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bw = add i64 %.0112.i121, 6                  ; 2 uses
  %i.bx = icmp ugt i64 %i.bw, %i.ap
  br i1 %i.bx, label %ft_mem_free.exit44, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.by = getelementptr inbounds nuw i8, ptr %i.as, i64 %.0112.i121 ; 2 uses
  store i8 -128, ptr %i.by, align 1, !tbaa !104
  %i.bz = trunc nuw i16 %i.bj to i8
  %i.ca = add i64 %.0112.i121, 2                  ; 2 uses
  %i.cb = getelementptr i8, ptr %i.by, i64 1
  store i8 %i.bz, ptr %i.cb, align 1, !tbaa !104
  %i.cc = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.ca
  store <4 x i8> zeroinitializer, ptr %i.cc, align 1, !tbaa !104
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.s
  %.1120.i = phi i32 [ %.0119.i119, %bb.s ], [ %i.bk, %bb.w ]
  %.1117.i = phi i64 [ %i.bp, %bb.s ], [ %.0.i, %bb.w ]
  %.1113.i = phi i64 [ %.0112.i121, %bb.s ], [ %i.bw, %bb.w ] ; 3 uses
  %.1.i = phi i64 [ %.0111.i122, %bb.s ], [ %i.ca, %bb.w ]
  %i.cd = icmp ugt i64 %.1113.i, %i.ao
  br i1 %i.cd, label %ft_mem_free.exit44, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ce = add nsw i64 %.1113.i, %.0.i             ; 2 uses
  %i.cf = icmp ugt i64 %i.ce, %i.ao
  br i1 %i.cf, label %ft_mem_free.exit44, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cg = getelementptr inbounds nuw i8, ptr %i.as, i64 %.1113.i
  %i.ch = call i32 @FT_Stream_Read(ptr noundef nonnull %1, ptr noundef nonnull %i.cg, i64 noundef %.0.i), !inline_history !640 ; 2 uses
  store i32 %i.ch, ptr %i.c, align 4, !tbaa !118
  %.not140.i = icmp eq i32 %i.ch, 0
  br i1 %.not140.i, label %bb.aa, label %ft_mem_free.exit44

bb.aa:                                            ; preds = %bb.z, %bb.q
  %.2121.i = phi i32 [ %.0119.i119, %bb.q ], [ %.1120.i, %bb.z ]
  %.2118.i = phi i64 [ %.0116.i120, %bb.q ], [ %.1117.i, %bb.z ] ; 2 uses
  %.2114.i = phi i64 [ %.0112.i121, %bb.q ], [ %i.ce, %bb.z ] ; 2 uses
  %.2.i = phi i64 [ %.0111.i122, %bb.q ], [ %.1.i, %bb.z ] ; 2 uses
  %indvars.iv.next136 = add nuw nsw i64 %indvars.iv135, 1 ; 2 uses
  %exitcond138.not = icmp eq i64 %indvars.iv.next136, %i.n
  br i1 %exitcond138.not, label %._crit_edge125, label %bb.m, !llvm.loop !641

._crit_edge125:                                   ; preds = %bb.aa, %bb.u
  %.0116.i.lcssa = phi i64 [ %.2118.i, %bb.aa ], [ %.0116.i120, %bb.u ]
  %.0112.i.lcssa = phi i64 [ %.2114.i, %bb.aa ], [ %.0112.i121, %bb.u ] ; 2 uses
  %.0111.i.lcssa = phi i64 [ %.2.i, %bb.aa ], [ %.0111.i122, %bb.u ] ; 2 uses
  %i.ci = add i64 %.0112.i.lcssa, 2               ; 2 uses
  %i.cj = icmp ugt i64 %i.ci, %i.ap
  br i1 %i.cj, label %ft_mem_free.exit44, label %bb.ab

bb.ab:                                            ; preds = %._crit_edge125
  %i.ck = getelementptr inbounds nuw i8, ptr %i.as, i64 %.0112.i.lcssa ; 2 uses
  store i8 -128, ptr %i.ck, align 1, !tbaa !104
  %i.cl = getelementptr i8, ptr %i.ck, i64 1
  store i8 3, ptr %i.cl, align 1, !tbaa !104
  %i.cm = add i64 %.0111.i.lcssa, 3
  %i.cn = icmp ugt i64 %i.cm, %i.ap
  br i1 %i.cn, label %ft_mem_free.exit44, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.co = getelementptr inbounds nuw i8, ptr %i.as, i64 %.0111.i.lcssa
  %i.cp = bitcast i64 %.0116.i.lcssa to <8 x i8>
  %i.cq = shufflevector <8 x i8> %i.cp, <8 x i8> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i8> %i.cq, ptr %i.co, align 1, !tbaa !104
  %i.cr = call fastcc i32 @open_face_from_buffer(ptr noundef nonnull %0, ptr noundef nonnull %i.as, i64 noundef %i.ci, i64 noundef 0, ptr noundef nonnull @.str.18, ptr noundef %4), !inline_history !640
  br label %Mac_Read_POST_Resource.exit

ft_mem_free.exit44:                               ; preds = %bb.y, %bb.x, %bb.v, %bb.t, %bb.z, %bb.p, %bb.o, %bb.n, %.split.i, %._crit_edge125, %bb.ab
  %i.cs = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !128
  call void %i.ct(ptr noundef %i.o, ptr noundef nonnull %i.as) #30, !inline_history !642
  br label %Mac_Read_POST_Resource.exit

Mac_Read_POST_Resource.exit.thread:               ; preds = %bb.j, %bb.k, %bb.e, %.split.i52, %ft_mem_qalloc.exit, %FT_Stream_ReadULong.exit.thread
  %.0124.i.ph = phi i32 [ 85, %FT_Stream_ReadULong.exit.thread ], [ 64, %ft_mem_qalloc.exit ], [ 85, %bb.e ], [ 85, %.split.i52 ], [ 9, %bb.k ], [ 9, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  br label %bb.ad

Mac_Read_POST_Resource.exit:                      ; preds = %.preheader, %ft_mem_free.exit44, %bb.c, %bb.ac
  %.0124.i = phi i32 [ %i.cr, %bb.ac ], [ 1, %bb.c ], [ 1, %ft_mem_free.exit44 ], [ 10, %.preheader ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  %.not.i38 = icmp eq ptr %i.m, null
  br i1 %.not.i38, label %ft_mem_free.exit, label %bb.ad

bb.ad:                                            ; preds = %Mac_Read_POST_Resource.exit.thread, %Mac_Read_POST_Resource.exit
  %.0124.i168.a = phi i32 [ %.0124.i.ph, %Mac_Read_POST_Resource.exit.thread ], [ %.0124.i, %Mac_Read_POST_Resource.exit ]
  %i.cu = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !128
  call void %i.cv(ptr noundef %i.h, ptr noundef nonnull %i.m) #30, !inline_history !129
  br label %ft_mem_free.exit

ft_mem_free.exit:                                 ; preds = %Mac_Read_POST_Resource.exit, %bb.ad
  %.0124.i169 = phi i32 [ %.0124.i, %Mac_Read_POST_Resource.exit ], [ %.0124.i168.a, %bb.ad ] ; 2 uses
  %.not35 = icmp eq i32 %.0124.i169, 0
  br i1 %.not35, label %bb.ae, label %ft_mem_free.exit42.thread

bb.ae:                                            ; preds = %ft_mem_free.exit
  %i.cw = load ptr, ptr %4, align 8, !tbaa !289
end_hunk_1
begin_hunk_2_@raccess_guess_apple_generic:bb.a
bb.q:                                             ; preds = %bb.o
  %i.bi = load ptr, ptr %0, align 8, !tbaa !191   ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bc
  %.not23.i67 = icmp eq ptr %i.bi, null
  br i1 %.not23.i67, label %.thread37, label %bb.r

.thread37:                                        ; preds = %bb.q
  %i.bk = add i64 %i.bc, 4
  store i64 %i.bk, ptr %i.g, align 8, !tbaa !199
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  %i.bl = add i64 %i.bc, 12
  br label %bb.z

FT_Stream_ReadULong.exit68.thread:                ; preds = %.preheader, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  br label %.loopexit

bb.r:                                             ; preds = %..thread_crit_edge.i61, %bb.q
  %.pre.i64 = phi i64 [ %i.bc, %bb.q ], [ %.pre.pre.i62, %..thread_crit_edge.i61 ] ; 3 uses
  %.01926.i65 = phi ptr [ %i.bj, %bb.q ], [ %i.b, %..thread_crit_edge.i61 ]
  %i.bm = load i32, ptr %.01926.i65, align 1
  %i.bn = add i64 %.pre.i64, 4                    ; 5 uses
  store i64 %i.bn, ptr %i.g, align 8, !tbaa !199
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  %i.bo = icmp eq i32 %i.bm, 33554432
  br i1 %i.bo, label %bb.s, label %bb.y

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.bp = add i64 %.pre.i64, 7
  %i.bq = load i64, ptr %i.j, align 8, !tbaa !192
  %i.br = icmp ult i64 %i.bp, %i.bq
  br i1 %i.br, label %bb.t, label %FT_Stream_ReadULong.exit80.thread

bb.t:                                             ; preds = %bb.s
  %i.bs = load ptr, ptr %i.m, align 8, !tbaa !293 ; 2 uses
  %.not.i71 = icmp eq ptr %i.bs, null
  br i1 %.not.i71, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bt = call i64 %i.bs(ptr noundef nonnull %0, i64 noundef %i.bn, ptr noundef nonnull %i.a, i64 noundef 4) #30, !inline_history !366
  %.not22.i72 = icmp eq i64 %i.bt, 4
  br i1 %.not22.i72, label %..thread_crit_edge.i73, label %FT_Stream_ReadULong.exit80.thread

..thread_crit_edge.i73:                           ; preds = %bb.u
  %.pre.pre.i74 = load i64, ptr %i.g, align 8, !tbaa !199
  br label %.thread.i75

bb.v:                                             ; preds = %bb.t
  %i.bu = load ptr, ptr %0, align 8, !tbaa !191   ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bn
  %.not23.i79 = icmp eq ptr %i.bu, null
  br i1 %.not23.i79, label %bb.w, label %.thread.i75

.thread.i75:                                      ; preds = %bb.v, %..thread_crit_edge.i73
  %.pre.i76 = phi i64 [ %i.bn, %bb.v ], [ %.pre.pre.i74, %..thread_crit_edge.i73 ]
  %.01926.i77 = phi ptr [ %i.bv, %bb.v ], [ %i.a, %..thread_crit_edge.i73 ]
  %i.bw = load i32, ptr %.01926.i77, align 1
  %i.bx = call i32 @llvm.bswap.i32(i32 %i.bw)
  %i.by = sext i32 %i.bx to i64
  br label %bb.w

FT_Stream_ReadULong.exit80.thread:                ; preds = %bb.s, %bb.u
  store i32 85, ptr %i.f, align 4, !tbaa !118
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %bb.aa

bb.w:                                             ; preds = %.thread.i75, %bb.v
  %i.bz = phi i64 [ %.pre.i76, %.thread.i75 ], [ %i.bn, %bb.v ]
  %.0.i78 = phi i64 [ %i.by, %.thread.i75 ], [ 0, %bb.v ]
  %i.ca = add i64 %i.bz, 4
  store i64 %i.ca, ptr %i.g, align 8, !tbaa !199
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.cb = call i32 @FT_Stream_ReadULong(ptr noundef nonnull %0, ptr noundef nonnull %i.f) ; 0 uses
  %i.cc = load i32, ptr %i.f, align 4, !tbaa !118
  %.not36 = icmp eq i32 %i.cc, 0
  br i1 %.not36, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  store i64 %.0.i78, ptr %2, align 8, !tbaa !68
  br label %.loopexit

bb.y:                                             ; preds = %bb.r
  %.pre27 = load ptr, ptr %i.m, align 8, !tbaa !293 ; 2 uses
  %i.cd = add i64 %.pre.i64, 12                   ; 3 uses
  %.not.i.i81 = icmp eq ptr %.pre27, null
  br i1 %.not.i.i81, label %bb.z, label %.split.i.i82

.split.i.i82:                                     ; preds = %bb.y
  %i.ce = call i64 %.pre27(ptr noundef nonnull %0, i64 noundef %i.cd, ptr noundef null, i64 noundef 0) #30, !inline_history !364
  %.not10.i.i83 = icmp eq i64 %i.ce, 0
  br i1 %.not10.i.i83, label %FT_Stream_Skip.exit86, label %.loopexit

bb.z:                                             ; preds = %.thread37, %bb.y
  %i.cf = phi i64 [ %i.bl, %.thread37 ], [ %i.cd, %bb.y ] ; 2 uses
  %i.cg = load i64, ptr %i.j, align 8, !tbaa !192
  %.not17.i.i85 = icmp ugt i64 %i.cf, %i.cg
  br i1 %.not17.i.i85, label %.loopexit, label %FT_Stream_Skip.exit86

FT_Stream_Skip.exit86:                            ; preds = %.split.i.i82, %bb.z
  %i.ch = phi i64 [ %i.cd, %.split.i.i82 ], [ %i.cf, %bb.z ]
  store i64 %i.ch, ptr %i.g, align 8, !tbaa !199
  store i32 0, ptr %i.f, align 4, !tbaa !118
  br label %bb.aa

bb.aa:                                            ; preds = %FT_Stream_Skip.exit86, %FT_Stream_ReadULong.exit80.thread, %bb.w
  %i.ci = add nuw nsw i32 %.025, 1                ; 2 uses
  %i.cj = icmp samesign ult i32 %i.ci, %i.ba
  br i1 %i.cj, label %.preheader, label %.loopexit, !llvm.loop !649

.loopexit:                                        ; preds = %bb.aa, %.split.i.i82, %bb.z, %.split.i.i, %bb.i, %FT_Stream_ReadULong.exit68.thread, %.thread13, %FT_Stream_ReadUShort.exit.thread, %FT_Stream_ReadULong.exit48.thread, %.thread, %FT_Stream_ReadULong.exit.thread, %bb.n, %bb.e, %bb.x
  %.021 = phi i32 [ 85, %.split.i.i ], [ 85, %FT_Stream_ReadULong.exit.thread ], [ 2, %bb.e ], [ 85, %FT_Stream_ReadULong.exit48.thread ], [ 85, %bb.i ], [ 85, %FT_Stream_ReadUShort.exit.thread ], [ 2, %bb.n ], [ 0, %bb.x ], [ 85, %FT_Stream_ReadULong.exit68.thread ], [ 2, %.thread13 ], [ 2, %.thread ], [ 85, %.split.i.i82 ], [ 85, %bb.z ], [ 2, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #30
  ret i32 %.021
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @raccess_make_file_name(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #31
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #31
  %i.c = add i64 %i.b, %i.a                       ; 2 uses
  %i.d = add i64 %i.c, 1                          ; 2 uses
  %i.e = icmp ult i64 %i.c, 9223372036854775807
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !108
  %i.h = tail call ptr %i.g(ptr noundef %0, i64 noundef %i.d) #30, !inline_history !117 ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %ft_mem_qalloc.exit, label %select.unfold24

bb.c:                                             ; preds = %bb.a
  %.not14.i = icmp eq i64 %i.d, 0
  br i1 %.not14.i, label %select.unfold24, label %ft_mem_qalloc.exit

select.unfold24:                                  ; preds = %bb.c, %bb.b
  %.0.i.ph = phi ptr [ %i.h, %bb.b ], [ null, %bb.c ] ; 6 uses
  %i.i = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %1, i32 noundef 47) #31 ; 3 uses
  %.not23 = icmp eq ptr %i.i, null
  br i1 %.not23, label %bb.e, label %bb.d

bb.d:                                             ; preds = %select.unfold24
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %1 to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = add nsw i64 %i.l, 1                      ; 2 uses
  %i.n = tail call ptr @strncpy(ptr noundef %.0.i.ph, ptr noundef nonnull %1, i64 noundef %i.m) #30 ; 0 uses
  %i.o = getelementptr inbounds i8, ptr %.0.i.ph, i64 %i.m
  store i8 0, ptr %i.o, align 1, !tbaa !104
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  br label %bb.f

bb.e:                                             ; preds = %select.unfold24
  store i8 0, ptr %.0.i.ph, align 1, !tbaa !104
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi ptr [ %i.p, %bb.d ], [ %1, %bb.e ]
  %i.q = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) %.0.i.ph, ptr noundef nonnull dereferenceable(1) %2) #30 ; 0 uses
  %i.r = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) %.0.i.ph, ptr noundef nonnull dereferenceable(1) %.0) #30 ; 0 uses
  br label %ft_mem_qalloc.exit

ft_mem_qalloc.exit:                               ; preds = %bb.b, %bb.c, %bb.f
  %.021 = phi ptr [ %.0.i.ph, %bb.f ], [ null, %bb.c ], [ null, %bb.b ]
  ret ptr %.021
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none), i64 noundef) local_unnamed_addr #27

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcat(ptr noalias noundef returned, ptr noalias noundef readonly captures(none)) local_unnamed_addr #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #28

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #28

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #28

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #28

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #17 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { mustprogress nofree norecurse nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nofree norecurse nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #29 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #30 = { nounwind }
attributes #31 = { nounwind willreturn memory(read) }
attributes #32 = { noreturn nounwind }

!llvm.module.flags = !{!28, !29}
!llvm.ident = !{!30}
!llvm.errno.tbaa = !{!35}

!0 = distinct !{null, ptr @ft_mem_realloc, ptr @ft_mem_qrealloc}
!1 = distinct !{!1, !70}
!2 = distinct !{null, null}
!3 = distinct !{!3, !70}
!4 = distinct !{!4, !70}
!5 = distinct !{!5, !70}
!6 = distinct !{!6, !70}
!7 = distinct !{!7, !70}
!8 = distinct !{!8, !70}
!9 = distinct !{null, null}
!10 = distinct !{null, null, ptr @ft_mem_free}
!11 = distinct !{!11, !70}
!12 = distinct !{null, ptr @ft_mem_free}
!13 = distinct !{null}
!14 = distinct !{null, ptr @ft_mem_free}
!15 = distinct !{!15, !70}
!16 = distinct !{null, ptr @FT_Get_CMap_Format}
!17 = distinct !{!17, !70}
!18 = distinct !{!18, !70}
!19 = distinct !{null}
!20 = distinct !{!20, !70}
!21 = distinct !{!21, !70}
!22 = distinct !{!22, !70}
!23 = distinct !{!23, !70}
!24 = distinct !{!24, !70}
!25 = distinct !{null, ptr @FT_Stream_New, ptr @ft_mem_alloc, ptr @ft_mem_qalloc}
!26 = distinct !{null}
!27 = distinct !{null, ptr @FT_Stream_Free, ptr @FT_Stream_Close}
!28 = !{i32 8, !"PIC Level", i32 2}
!29 = !{i32 7, !"uwtable", i32 2}
!30 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!31 = !{!"Simple C/C++ TBAA"}
!32 = !{!"omnipotent char", !31, i64 0}
!33 = !{!"int", !32, i64 0}
!34 = !{!"__libc_errno", !33, i64 0}
!35 = !{!34, !33, i64 0}
!36 = !{!"long", !32, i64 0}
!37 = !{!"any pointer", !32, i64 0}
!38 = !{!"p1 omnipotent char", !37, i64 0}
!39 = !{!"p1 _ZTS15FT_Bitmap_Size_", !37, i64 0}
!40 = !{!"any p2 pointer", !37, i64 0}
!41 = !{!"p2 _ZTS14FT_CharMapRec_", !40, i64 0}
!42 = !{!"FT_Generic_", !37, i64 0, !37, i64 8}
!43 = !{!"FT_BBox_", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!44 = !{!"short", !32, i64 0}
!45 = !{!"p1 _ZTS16FT_GlyphSlotRec_", !37, i64 0}
!46 = !{!"p1 _ZTS11FT_SizeRec_", !37, i64 0}
!47 = !{!"p1 _ZTS14FT_CharMapRec_", !37, i64 0}
!48 = !{!"p1 _ZTS13FT_DriverRec_", !37, i64 0}
!49 = !{!"p1 _ZTS13FT_MemoryRec_", !37, i64 0}
!50 = !{!"p1 _ZTS13FT_StreamRec_", !37, i64 0}
!51 = !{!"p1 _ZTS15FT_ListNodeRec_", !37, i64 0}
!52 = !{!"FT_ListRec_", !51, i64 0, !51, i64 8}
!53 = !{!"p1 _ZTS20FT_Face_InternalRec_", !37, i64 0}
!54 = !{!"FT_FaceRec_", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !38, i64 40, !38, i64 48, !33, i64 56, !39, i64 64, !33, i64 72, !41, i64 80, !42, i64 88, !43, i64 104, !44, i64 136, !44, i64 138, !44, i64 140, !44, i64 142, !44, i64 144, !44, i64 146, !44, i64 148, !44, i64 150, !45, i64 152, !46, i64 160, !47, i64 168, !48, i64 176, !49, i64 184, !50, i64 192, !52, i64 200, !42, i64 216, !37, i64 232, !53, i64 240}
!55 = !{!54, !36, i64 32}
!56 = !{!54, !48, i64 176}
!57 = !{!"p1 _ZTS16FT_Module_Class_", !37, i64 0}
!58 = !{!"p1 _ZTS14FT_LibraryRec_", !37, i64 0}
!59 = !{!"FT_ModuleRec_", !57, i64 0, !58, i64 8, !49, i64 16}
!60 = !{!"p1 _ZTS19FT_Driver_ClassRec_", !37, i64 0}
!61 = !{!"p1 _ZTS18FT_GlyphLoaderRec_", !37, i64 0}
!62 = !{!"FT_DriverRec_", !59, i64 0, !60, i64 24, !52, i64 32, !61, i64 48}
!63 = !{!62, !60, i64 24}
!64 = !{!"FT_Module_Class_", !36, i64 0, !36, i64 8, !38, i64 16, !36, i64 24, !36, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64}
!65 = !{!"FT_Driver_ClassRec_", !64, i64 0, !36, i64 72, !36, i64 80, !36, i64 88, !37, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !37, i64 152, !37, i64 160, !37, i64 168, !37, i64 176, !37, i64 184}
!66 = !{!65, !37, i64 168}
!67 = !{!54, !46, i64 160}
!68 = !{!36, !36, i64 0}
!69 = !{!54, !45, i64 152}
!70 = !{!"llvm.loop.mustprogress"}
!71 = !{!"llvm.loop.isvectorized", i32 1}
!72 = !{!"llvm.loop.unroll.runtime.disable"}
!73 = !{!54, !36, i64 16}
!74 = !{!44, !44, i64 0}
!75 = !{!"p1 short", !37, i64 0}
!76 = !{!75, !75, i64 0}
!77 = !{!"p1 long", !37, i64 0}
!78 = !{!"TTC_HeaderRec_", !36, i64 0, !36, i64 8, !36, i64 16, !77, i64 24}
!79 = !{!"p1 _ZTS12TT_TableRec_", !37, i64 0}
!80 = !{!"TT_Header_", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !44, i64 32, !44, i64 34, !32, i64 40, !32, i64 56, !44, i64 72, !44, i64 74, !44, i64 76, !44, i64 78, !44, i64 80, !44, i64 82, !44, i64 84, !44, i64 86, !44, i64 88}
!81 = !{!"TT_HoriHeader_", !36, i64 0, !44, i64 8, !44, i64 10, !44, i64 12, !44, i64 14, !44, i64 16, !44, i64 18, !44, i64 20, !44, i64 22, !44, i64 24, !44, i64 26, !32, i64 28, !44, i64 36, !44, i64 38, !37, i64 40, !37, i64 48}
!82 = !{!"TT_MaxProfile_", !36, i64 0, !44, i64 8, !44, i64 10, !44, i64 12, !44, i64 14, !44, i64 16, !44, i64 18, !44, i64 20, !44, i64 22, !44, i64 24, !44, i64 26, !44, i64 28, !44, i64 30, !44, i64 32, !44, i64 34}
!83 = !{!"TT_VertHeader_", !36, i64 0, !44, i64 8, !44, i64 10, !44, i64 12, !44, i64 14, !44, i64 16, !44, i64 18, !44, i64 20, !44, i64 22, !44, i64 24, !44, i64 26, !32, i64 28, !44, i64 36, !44, i64 38, !37, i64 40, !37, i64 48}
!84 = !{!"p1 _ZTS11TT_NameRec_", !37, i64 0}
!85 = !{!"p1 _ZTS14TT_LangTagRec_", !37, i64 0}
!86 = !{!"TT_NameTableRec_", !44, i64 0, !33, i64 4, !33, i64 8, !84, i64 16, !33, i64 24, !85, i64 32, !50, i64 40}
!87 = !{!"TT_OS2_", !44, i64 0, !44, i64 2, !44, i64 4, !44, i64 6, !44, i64 8, !44, i64 10, !44, i64 12, !44, i64 14, !44, i64 16, !44, i64 18, !44, i64 20, !44, i64 22, !44, i64 24, !44, i64 26, !44, i64 28, !44, i64 30, !32, i64 32, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !32, i64 80, !44, i64 84, !44, i64 86, !44, i64 88, !44, i64 90, !44, i64 92, !44, i64 94, !44, i64 96, !44, i64 98, !36, i64 104, !36, i64 112, !44, i64 120, !44, i64 122, !44, i64 124, !44, i64 126, !44, i64 128, !44, i64 130, !44, i64 132}
!88 = !{!"TT_Postscript_", !36, i64 0, !36, i64 8, !44, i64 16, !44, i64 18, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56}
!89 = !{!"p1 _ZTS16TT_GaspRangeRec_", !37, i64 0}
!90 = !{!"TT_Gasp_", !44, i64 0, !44, i64 2, !89, i64 8}
!91 = !{!"TT_PCLT_", !36, i64 0, !36, i64 8, !44, i64 16, !44, i64 18, !44, i64 20, !44, i64 22, !44, i64 24, !44, i64 26, !32, i64 28, !32, i64 44, !32, i64 52, !32, i64 58, !32, i64 59, !32, i64 60, !32, i64 61}
!92 = !{!"p1 _ZTS17TT_SBit_ScaleRec_", !37, i64 0}
!93 = !{!"p2 omnipotent char", !40, i64 0}
!94 = !{!"TT_Post_NamesRec_", !32, i64 0, !44, i64 2, !44, i64 4, !75, i64 8, !93, i64 16}
!95 = !{!"FT_Palette_Data_", !44, i64 0, !75, i64 8, !75, i64 16, !44, i64 24, !75, i64 32}
!96 = !{!"p1 _ZTS9FT_Color_", !37, i64 0}
!97 = !{!"FT_Color_", !32, i64 0, !32, i64 1, !32, i64 2, !32, i64 3}
!98 = !{!"p1 int", !37, i64 0}
!99 = !{!"p1 _ZTS12GX_BlendRec_", !37, i64 0}
!100 = !{!"TT_BDFRec_", !38, i64 0, !38, i64 8, !38, i64 16, !36, i64 24, !33, i64 32, !32, i64 36}
!101 = !{!"TT_FaceRec_", !54, i64 0, !78, i64 248, !36, i64 280, !44, i64 288, !79, i64 296, !80, i64 304, !81, i64 400, !82, i64 456, !32, i64 496, !83, i64 504, !44, i64 560, !86, i64 568, !87, i64 616, !88, i64 752, !38, i64 816, !36, i64 824, !37, i64 832, !37, i64 840, !37, i64 848, !37, i64 856, !37, i64 864, !37, i64 872, !37, i64 880, !37, i64 888, !37, i64 896, !37, i64 904, !37, i64 912, !37, i64 920, !90, i64 928, !91, i64 944, !36, i64 1008, !92, i64 1016, !94, i64 1024, !95, i64 1048, !44, i64 1088, !96, i64 1096, !32, i64 1104, !97, i64 1105, !36, i64 1112, !38, i64 1120, !36, i64 1128, !38, i64 1136, !36, i64 1144, !98, i64 1152, !42, i64 1160, !38, i64 1176, !36, i64 1184, !36, i64 1192, !32, i64 1200, !32, i64 1201, !99, i64 1208, !33, i64 1216, !38, i64 1224, !33, i64 1232, !33, i64 1236, !38, i64 1240, !36, i64 1248, !36, i64 1256, !36, i64 1264, !38, i64 1272, !38, i64 1280, !36, i64 1288, !33, i64 1296, !36, i64 1304, !93, i64 1312, !38, i64 1320, !36, i64 1328, !33, i64 1336, !33, i64 1340, !98, i64 1344, !38, i64 1352, !36, i64 1360, !33, i64 1368, !33, i64 1372, !33, i64 1376, !100, i64 1384, !36, i64 1424, !36, i64 1432, !36, i64 1440, !36, i64 1448, !37, i64 1456, !37, i64 1464, !37, i64 1472}
!102 = !{!101, !37, i64 880}
!103 = !{!"SFNT_Interface_", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !37, i64 152, !37, i64 160, !37, i64 168, !37, i64 176, !37, i64 184, !37, i64 192, !37, i64 200, !37, i64 208, !37, i64 216, !37, i64 224, !37, i64 232, !37, i64 240, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !37, i64 280, !37, i64 288, !37, i64 296, !37, i64 304, !37, i64 312, !37, i64 320, !37, i64 328, !37, i64 336, !37, i64 344, !37, i64 352, !37, i64 360, !37, i64 368, !37, i64 376}
!104 = !{!32, !32, i64 0}
!105 = !{!59, !57, i64 0}
!106 = !{!64, !37, i64 64}
!107 = !{!"FT_MemoryRec_", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24}
!108 = !{!107, !37, i64 8}
!109 = !{ptr @ft_mem_alloc, ptr @ft_mem_qalloc}
!110 = !{!"p1 _ZTS10FT_Vector_", !37, i64 0}
!111 = !{!"FT_Outline_", !44, i64 0, !44, i64 2, !110, i64 8, !38, i64 16, !75, i64 24, !33, i64 32}
!112 = !{!"p1 _ZTS15FT_SubGlyphRec_", !37, i64 0}
!113 = !{!"FT_GlyphLoadRec_", !111, i64 0, !110, i64 40, !110, i64 48, !33, i64 56, !112, i64 64}
!114 = !{!"FT_GlyphLoaderRec_", !49, i64 0, !33, i64 8, !33, i64 12, !33, i64 16, !32, i64 20, !113, i64 24, !113, i64 96, !37, i64 168}
!115 = !{!114, !49, i64 0}
!116 = !{!61, !61, i64 0}
!117 = !{ptr @ft_mem_qalloc}
!118 = !{!33, !33, i64 0}
!119 = !{!113, !44, i64 2}
!120 = !{!113, !44, i64 0}
!121 = !{!113, !33, i64 32}
!122 = !{!113, !33, i64 56}
!123 = !{!110, !110, i64 0}
!124 = !{!38, !38, i64 0}
!125 = !{!112, !112, i64 0}
!126 = !{i64 0, i64 2, !74, i64 2, i64 2, !74, i64 8, i64 8, !123, i64 16, i64 8, !124, i64 24, i64 8, !76, i64 32, i64 4, !118, i64 40, i64 8, !123, i64 48, i64 8, !123, i64 56, i64 4, !118, i64 64, i64 8, !125}
!127 = !{!114, !110, i64 32}
!128 = !{!107, !37, i64 16}
!129 = !{ptr @ft_mem_free}
!130 = !{!114, !38, i64 40}
!131 = !{!114, !75, i64 48}
!132 = !{!114, !110, i64 64}
!133 = !{!114, !112, i64 88}
!134 = !{!114, !110, i64 72}
!135 = !{!114, !33, i64 8}
!136 = !{!114, !33, i64 12}
!137 = !{!114, !33, i64 16}
!138 = !{ptr @FT_GlyphLoader_Reset, ptr @ft_mem_free}
!139 = !{ptr @ft_mem_realloc, ptr @ft_mem_qrealloc}
!140 = !{!114, !32, i64 20}
!141 = !{!111, !110, i64 8}
!142 = !{!111, !44, i64 2}
!143 = !{!111, !38, i64 16}
!144 = !{!111, !75, i64 24}
!145 = !{!111, !44, i64 0}
!146 = !{!114, !110, i64 136}
!147 = !{!114, !110, i64 144}
!148 = !{ptr @ft_mem_qrealloc, ptr @ft_mem_free}
!149 = !{ptr @ft_mem_qrealloc}
!150 = !{!107, !37, i64 24}
!151 = !{ptr @ft_mem_realloc, ptr @ft_mem_qrealloc, ptr @ft_mem_free}
!152 = !{!113, !112, i64 64}
!153 = !{!"p2 _ZTS15FT_HashnodeRec_", !40, i64 0}
!154 = !{!"FT_HashRec_", !33, i64 0, !33, i64 4, !33, i64 8, !37, i64 16, !37, i64 24, !153, i64 32}
!155 = !{!154, !33, i64 4}
!156 = !{!154, !33, i64 0}
!157 = !{!154, !33, i64 8}
!158 = !{!154, !37, i64 16}
!159 = !{!154, !37, i64 24}
!160 = !{!154, !153, i64 32}
!161 = !{!"p1 _ZTS15FT_HashnodeRec_", !37, i64 0}
end_hunk_2
