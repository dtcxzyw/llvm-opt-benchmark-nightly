Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/freetype/original/ftbase?download=true
inline.NumInlined: 363
inline.NumDeleted: 35
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 11
begin_hunk_0_@ft_mem_realloc:bb.a
  %.not.i.i = icmp eq ptr %4, null
  br i1 %.not.i.i, label %ft_mem_qrealloc.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !108
  tail call void %i.f(ptr noundef %0, ptr noundef nonnull %4) #30, !inline_history !128
  br label %ft_mem_qrealloc.exit.thread

bb.e:                                             ; preds = %bb.b
  %i.g = udiv i64 2147483647, %1
  %i.h = icmp sgt i64 %3, %i.g
  br i1 %i.h, label %ft_mem_qrealloc.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = icmp eq i64 %2, 0
  br i1 %i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !87
  %i.l = mul nsw i64 %3, %1
  %i.m = tail call ptr %i.k(ptr noundef %0, i64 noundef %i.l) #30, !inline_history !129 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br label %ft_mem_qrealloc.exit

bb.h:                                             ; preds = %bb.f
  %i.o = mul nsw i64 %2, %1
  %i.p = mul nsw i64 %3, %1
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !130
  %i.s = tail call ptr %i.r(ptr noundef %0, i64 noundef %i.o, i64 noundef %i.p, ptr noundef %4) #30, !inline_history !129 ; 2 uses
  %.not.i = icmp eq ptr %i.s, null                ; 2 uses
  %..i = select i1 %.not.i, ptr %4, ptr %i.s
  br label %ft_mem_qrealloc.exit

ft_mem_qrealloc.exit:                             ; preds = %bb.g, %bb.h
  %.sink = phi i1 [ %i.n, %bb.g ], [ %.not.i, %bb.h ] ; 2 uses
  %.134.i = phi ptr [ %i.m, %bb.g ], [ %..i, %bb.h ] ; 4 uses
  %spec.select41.i = select i1 %.sink, i32 64, i32 0
  %not..sink = xor i1 %.sink, true
  %i.t = icmp ne ptr %.134.i, null
  %or.cond = select i1 %not..sink, i1 %i.t, i1 false
  %i.u = icmp sgt i64 %3, %2
  %or.cond18 = and i1 %i.u, %or.cond
  br i1 %or.cond18, label %bb.i, label %ft_mem_qrealloc.exit.thread

bb.i:                                             ; preds = %ft_mem_qrealloc.exit
  %i.v = mul nsw i64 %2, %1
  %i.w = getelementptr inbounds i8, ptr %.134.i, i64 %i.v
  %i.x = sub nuw nsw i64 %3, %2
  %i.y = mul nsw i64 %i.x, %1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.w, i8 0, i64 %i.y, i1 false)
  br label %ft_mem_qrealloc.exit.thread

ft_mem_qrealloc.exit.thread:                      ; preds = %bb.d, %bb.c, %bb.e, %bb.a, %bb.i, %ft_mem_qrealloc.exit
  %.1.i25 = phi i32 [ %spec.select41.i, %ft_mem_qrealloc.exit ], [ 0, %bb.i ], [ 0, %bb.d ], [ 0, %bb.c ], [ 10, %bb.e ], [ 6, %bb.a ]
  %.134.i24 = phi ptr [ %.134.i, %ft_mem_qrealloc.exit ], [ %.134.i, %bb.i ], [ null, %bb.d ], [ null, %bb.c ], [ %4, %bb.e ], [ %4, %bb.a ]
  store i32 %.1.i25, ptr %5, align 4, !tbaa !98
  ret ptr %.134.i24
}

; Function Attrs: nounwind uwtable
define hidden i32 @FT_GlyphLoader_CheckPoints(ptr nofree noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 8 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !90     ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !115  ; 5 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !112
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %bb.c, label %bb.l

bb.c:                                             ; preds = %bb.b
  %i.j = shl i32 %i.f, 1                          ; 2 uses
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %ft_mem_realloc.exit.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = icmp ugt i32 %i.j, 134217727
  br i1 %i.l, label %FT_GlyphLoader_Adjust_Points.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !87
  %i.o = shl i32 %i.f, 5
  %i.p = zext i32 %i.o to i64                     ; 2 uses
  %i.q = tail call ptr %i.n(ptr noundef %i.b, i64 noundef %i.p) #30, !inline_history !131 ; 3 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %ft_mem_realloc.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.q, i8 0, i64 %i.p, i1 false)
  %.pre.i = load i32, ptr %i.e, align 8, !tbaa !115
  br label %ft_mem_realloc.exit.thread.i

ft_mem_realloc.exit.thread.i:                     ; preds = %bb.f, %bb.c
  %i.s = phi i32 [ %i.f, %bb.c ], [ %.pre.i, %bb.f ] ; 2 uses
  %.134.i24.i.ph.i = phi ptr [ null, %bb.c ], [ %i.q, %bb.f ] ; 3 uses
  store ptr %.134.i24.i.ph.i, ptr %i.h, align 8, !tbaa !112
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 1, ptr %i.t, align 4, !tbaa !120
  %i.u = zext i32 %i.s to i64
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %.134.i24.i.ph.i, i64 %i.u ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.v, ptr %i.w, align 8, !tbaa !114
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !121  ; 2 uses
  %.not.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i, label %bb.h, label %bb.g

ft_mem_realloc.exit.i:                            ; preds = %bb.e
  store ptr null, ptr %i.h, align 8, !tbaa !112
  br label %FT_GlyphLoader_Adjust_Points.exit.thread

bb.g:                                             ; preds = %ft_mem_realloc.exit.thread.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !122
  %i.ab = zext i16 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %i.ab
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %ft_mem_realloc.exit.thread.i
  %i.ad = phi ptr [ %i.ac, %bb.g ], [ null, %ft_mem_realloc.exit.thread.i ]
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !121
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !123 ; 2 uses
  %.not23.i.i = icmp eq ptr %i.ag, null
  br i1 %.not23.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !122
  %i.aj = zext i16 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.aj
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.al = phi ptr [ %i.ak, %bb.i ], [ null, %bb.h ]
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %i.al, ptr %i.am, align 8, !tbaa !123
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !124 ; 2 uses
  %.not24.i.i = icmp eq ptr %i.ao, null
  br i1 %.not24.i.i, label %FT_GlyphLoader_Adjust_Points.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ap = load i16, ptr %i.c, align 8, !tbaa !125
  %i.aq = zext i16 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %i.ao, i64 %i.aq
  br label %FT_GlyphLoader_Adjust_Points.exit.i

FT_GlyphLoader_Adjust_Points.exit.i:              ; preds = %bb.k, %bb.j
  %i.as = phi ptr [ %i.ar, %bb.k ], [ null, %bb.j ]
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.as, ptr %i.at, align 8, !tbaa !124
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.av = load i16, ptr %i.au, align 2, !tbaa !122
  %i.aw = zext i16 %i.av to i64                   ; 2 uses
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %.134.i24.i.ph.i, i64 %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !126
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %i.aw
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !127
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %bb.b, %FT_GlyphLoader_Adjust_Points.exit.i
  %i.bb = phi i32 [ 0, %bb.a ], [ %i.f, %bb.b ], [ %i.s, %FT_GlyphLoader_Adjust_Points.exit.i ] ; 8 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 26 ; 7 uses
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !122
  %i.be = zext i16 %i.bd to i32
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 98
  %i.bg = load i16, ptr %i.bf, align 2, !tbaa !122
  %i.bh = zext i16 %i.bg to i32
  %i.bi = add i32 %1, %i.be
  %i.bj = add i32 %i.bi, %i.bh                    ; 3 uses
  %.not = icmp ugt i32 %i.bj, %i.bb               ; 2 uses
  br i1 %.not, label %bb.m, label %bb.ad

bb.m:                                             ; preds = %bb.l
  %i.bk = icmp ugt i32 %i.bj, 65535
  br i1 %i.bk, label %FT_GlyphLoader_Adjust_Points.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bl = lshr i32 %i.bb, 1
  %i.bm = add i32 %i.bl, %i.bb
  %spec.select = tail call i32 @llvm.umax.i32(i32 %i.bj, i32 %i.bm)
  %i.bn = add i32 %spec.select, 7                 ; 2 uses
  %i.bo = and i32 %i.bn, -8
  %i.bp = icmp ugt i32 %i.bn, 65535
  %spec.store.select = select i1 %i.bp, i32 65535, i32 %i.bo ; 6 uses
  %i.bq = zext i32 %i.bb to i64                   ; 8 uses
  %i.br = zext i32 %spec.store.select to i64      ; 8 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !121 ; 4 uses
  %i.bu = icmp eq i32 %spec.store.select, 0
  br i1 %i.bu, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %.not.i.i.i = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i, label %bb.u, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !108
  tail call void %i.bw(ptr noundef %i.b, ptr noundef nonnull %i.bt) #30, !inline_history !132
  br label %bb.u

bb.q:                                             ; preds = %bb.n
  %i.bx = icmp eq i32 %i.bb, 0                    ; 2 uses
  br i1 %i.bx, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.by = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !87
  %i.ca = shl nuw nsw i64 %i.br, 4
  %i.cb = tail call ptr %i.bz(ptr noundef %i.b, i64 noundef %i.ca) #30, !inline_history !119 ; 2 uses
  %i.cc = icmp eq ptr %i.cb, null
  br label %ft_mem_qrealloc.exit.i

bb.s:                                             ; preds = %bb.q
  %i.cd = shl nuw nsw i64 %i.bq, 4
  %i.ce = shl nuw nsw i64 %i.br, 4
  %i.cf = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !130
  %i.ch = tail call ptr %i.cg(ptr noundef %i.b, i64 noundef %i.cd, i64 noundef %i.ce, ptr noundef %i.bt) #30, !inline_history !119 ; 2 uses
  %.not.i.i86 = icmp eq ptr %i.ch, null           ; 2 uses
  %..i.i = select i1 %.not.i.i86, ptr %i.bt, ptr %i.ch
  br label %ft_mem_qrealloc.exit.i

ft_mem_qrealloc.exit.i:                           ; preds = %bb.s, %bb.r
  %.sink.i = phi i1 [ %i.cc, %bb.r ], [ %.not.i.i86, %bb.s ] ; 2 uses
  %.134.i.i = phi ptr [ %i.cb, %bb.r ], [ %..i.i, %bb.s ] ; 4 uses
  %not..sink.i = xor i1 %.sink.i, true
  %i.ci = icmp ne ptr %.134.i.i, null
  %or.cond.i = select i1 %not..sink.i, i1 %i.ci, i1 false
  %i.cj = icmp ugt i32 %spec.store.select, %i.bb  ; 2 uses
  %or.cond18.i = and i1 %i.cj, %or.cond.i
  br i1 %or.cond18.i, label %bb.t, label %ft_mem_realloc.exit

ft_mem_realloc.exit:                              ; preds = %ft_mem_qrealloc.exit.i
  store ptr %.134.i.i, ptr %i.bs, align 8, !tbaa !121
  br i1 %.sink.i, label %FT_GlyphLoader_Adjust_Points.exit.thread, label %.thread

bb.t:                                             ; preds = %ft_mem_qrealloc.exit.i
  %i.ck = shl nuw nsw i64 %i.bq, 4
  %i.cl = getelementptr inbounds nuw i8, ptr %.134.i.i, i64 %i.ck
  %i.cm = sub nuw nsw i64 %i.br, %i.bq
  %i.cn = shl nuw nsw i64 %i.cm, 4
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.cl, i8 0, i64 %i.cn, i1 false)
  store ptr %.134.i.i, ptr %i.bs, align 8, !tbaa !121
  br label %.thread

bb.u:                                             ; preds = %bb.p, %bb.o
  store ptr null, ptr %i.bs, align 8, !tbaa !121
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !123 ; 2 uses
  %.not.i.i.i98 = icmp eq ptr %i.cp, null
  br i1 %.not.i.i.i98, label %ft_mem_realloc.exit99.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cq = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !108
  tail call void %i.cr(ptr noundef %i.b, ptr noundef nonnull %i.cp) #30, !inline_history !132
  br label %ft_mem_realloc.exit99.thread

.thread:                                          ; preds = %ft_mem_realloc.exit, %bb.t
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  br i1 %i.bx, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.thread
  %i.ct = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !87
  %i.cv = tail call ptr %i.cu(ptr noundef nonnull %i.b, i64 noundef %i.br) #30, !inline_history !119 ; 2 uses
  %i.cw = icmp eq ptr %i.cv, null
  br label %ft_mem_qrealloc.exit.i91

bb.x:                                             ; preds = %.thread
  %i.cx = load ptr, ptr %i.cs, align 8, !tbaa !123 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !130
  %i.da = tail call ptr %i.cz(ptr noundef nonnull %i.b, i64 noundef %i.bq, i64 noundef %i.br, ptr noundef %i.cx) #30, !inline_history !119 ; 2 uses
  %.not.i.i89 = icmp eq ptr %i.da, null           ; 2 uses
  %..i.i90 = select i1 %.not.i.i89, ptr %i.cx, ptr %i.da
  br label %ft_mem_qrealloc.exit.i91

ft_mem_qrealloc.exit.i91:                         ; preds = %bb.x, %bb.w
  %.sink.i92 = phi i1 [ %i.cw, %bb.w ], [ %.not.i.i89, %bb.x ] ; 3 uses
  %.134.i.i93 = phi ptr [ %i.cv, %bb.w ], [ %..i.i90, %bb.x ] ; 4 uses
  %not..sink.i95 = xor i1 %.sink.i92, true
  %i.db = icmp ne ptr %.134.i.i93, null
  %or.cond.i96 = select i1 %not..sink.i95, i1 %i.db, i1 false
  %or.cond18.i97 = and i1 %i.cj, %or.cond.i96
  br i1 %or.cond18.i97, label %bb.y, label %ft_mem_realloc.exit99

bb.y:                                             ; preds = %ft_mem_qrealloc.exit.i91
  %i.dc = getelementptr inbounds nuw i8, ptr %.134.i.i93, i64 %i.bq
  %i.dd = sub nuw nsw i64 %i.br, %i.bq
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.dc, i8 0, i64 %i.dd, i1 false)
  br label %ft_mem_realloc.exit99.thread

ft_mem_realloc.exit99.thread:                     ; preds = %bb.y, %bb.v, %bb.u
  %.ph = phi ptr [ %i.co, %bb.u ], [ %i.co, %bb.v ], [ %i.cs, %bb.y ]
  %.134.i24.i88.ph = phi ptr [ null, %bb.u ], [ null, %bb.v ], [ %.134.i.i93, %bb.y ]
  store i32 0, ptr %i.a, align 4, !tbaa !98
  store ptr %.134.i24.i88.ph, ptr %.ph, align 8, !tbaa !123
  br label %bb.z

ft_mem_realloc.exit99:                            ; preds = %ft_mem_qrealloc.exit.i91
  %spec.select41.i.i94 = select i1 %.sink.i92, i32 64, i32 0
  store i32 %spec.select41.i.i94, ptr %i.a, align 4, !tbaa !98
  store ptr %.134.i.i93, ptr %i.cs, align 8, !tbaa !123
  br i1 %.sink.i92, label %FT_GlyphLoader_Adjust_Points.exit.thread, label %bb.z

bb.z:                                             ; preds = %ft_mem_realloc.exit99.thread, %ft_mem_realloc.exit99
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.df = load i8, ptr %i.de, align 4, !tbaa !120
  %.not79 = icmp eq i8 %i.df, 0
  br i1 %.not79, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dg = shl nuw i32 %i.bb, 1
  %i.dh = zext i32 %i.dg to i64
  %i.di = shl i32 %spec.store.select, 1
  %i.dj = zext i32 %i.di to i64
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !112
  %i.dm = call ptr @ft_mem_realloc(ptr noundef %i.b, i64 noundef 16, i64 noundef %i.dh, i64 noundef %i.dj, ptr noundef %i.dl, ptr noundef nonnull %i.a) ; 3 uses
  store ptr %i.dm, ptr %i.dk, align 8, !tbaa !112
  %i.dn = load i32, ptr %i.a, align 4, !tbaa !98  ; 2 uses
  %.not80 = icmp eq i32 %i.dn, 0
  br i1 %.not80, label %bb.ab, label %FT_GlyphLoader_Adjust_Points.exit.thread

bb.ab:                                            ; preds = %bb.aa
  %i.do = getelementptr inbounds nuw [16 x i8], ptr %i.dm, i64 %i.br
  %i.dp = getelementptr inbounds nuw [16 x i8], ptr %i.dm, i64 %i.bq
  %i.dq = shl nuw nsw i64 %i.bq, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.do, ptr align 8 %i.dp, i64 %i.dq, i1 false)
  %i.dr = load ptr, ptr %i.dk, align 8, !tbaa !112
  %i.ds = getelementptr inbounds nuw [16 x i8], ptr %i.dr, i64 %i.br
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.ds, ptr %i.dt, align 8, !tbaa !114
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.z
  store i32 %spec.store.select, ptr %i.e, align 8, !tbaa !115
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.l
  %i.du = phi i32 [ %spec.store.select, %bb.ac ], [ %i.bb, %bb.l ] ; 4 uses
  %i.dv = load ptr, ptr %0, align 8, !tbaa !90    ; 2 uses
  %i.dw = icmp eq i32 %i.du, 0
  br i1 %i.dw, label %bb.ao, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !112
  %.not.i100 = icmp eq ptr %i.dy, null
  br i1 %.not.i100, label %bb.af, label %bb.ao

bb.af:                                            ; preds = %bb.ae
  %i.dz = shl i32 %i.du, 1                        ; 2 uses
  %i.ea = icmp eq i32 %i.dz, 0
  br i1 %i.ea, label %ft_mem_realloc.exit.thread.i103, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.eb = icmp ugt i32 %i.dz, 134217727
  br i1 %i.eb, label %FT_GlyphLoader_Adjust_Points.exit.thread, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !87
  %i.ee = shl i32 %i.du, 5
  %i.ef = zext i32 %i.ee to i64                   ; 2 uses
  %i.eg = tail call ptr %i.ed(ptr noundef %i.dv, i64 noundef %i.ef) #30, !inline_history !131 ; 3 uses
  %i.eh = icmp eq ptr %i.eg, null
  br i1 %i.eh, label %ft_mem_realloc.exit.i109, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.eg, i8 0, i64 %i.ef, i1 false)
  %.pre.i102 = load i32, ptr %i.e, align 8, !tbaa !115
  br label %ft_mem_realloc.exit.thread.i103

ft_mem_realloc.exit.thread.i103:                  ; preds = %bb.ai, %bb.af
  %i.ei = phi i32 [ %i.du, %bb.af ], [ %.pre.i102, %bb.ai ]
  %.134.i24.i.ph.i104 = phi ptr [ null, %bb.af ], [ %i.eg, %bb.ai ] ; 3 uses
  store ptr %.134.i24.i.ph.i104, ptr %i.dx, align 8, !tbaa !112
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 1, ptr %i.ej, align 4, !tbaa !120
  %i.ek = zext i32 %i.ei to i64
  %i.el = getelementptr inbounds nuw [16 x i8], ptr %.134.i24.i.ph.i104, i64 %i.ek ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.el, ptr %i.em, align 8, !tbaa !114
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !121 ; 2 uses
  %.not.i.i105 = icmp eq ptr %i.eo, null
  br i1 %.not.i.i105, label %bb.ak, label %bb.aj

ft_mem_realloc.exit.i109:                         ; preds = %bb.ah
  store ptr null, ptr %i.dx, align 8, !tbaa !112
  br label %FT_GlyphLoader_Adjust_Points.exit.thread

bb.aj:                                            ; preds = %ft_mem_realloc.exit.thread.i103
  %i.ep = load i16, ptr %i.bc, align 2, !tbaa !122
  %i.eq = zext i16 %i.ep to i64
  %i.er = getelementptr inbounds nuw [16 x i8], ptr %i.eo, i64 %i.eq
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %ft_mem_realloc.exit.thread.i103
  %i.es = phi ptr [ %i.er, %bb.aj ], [ null, %ft_mem_realloc.exit.thread.i103 ]
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %i.es, ptr %i.et, align 8, !tbaa !121
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !123 ; 2 uses
  %.not23.i.i106 = icmp eq ptr %i.ev, null
  br i1 %.not23.i.i106, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ew = load i16, ptr %i.bc, align 2, !tbaa !122
  %i.ex = zext i16 %i.ew to i64
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.ex
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.ez = phi ptr [ %i.ey, %bb.al ], [ null, %bb.ak ]
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %i.ez, ptr %i.fa, align 8, !tbaa !123
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !124 ; 2 uses
  %.not24.i.i107 = icmp eq ptr %i.fc, null
  br i1 %.not24.i.i107, label %FT_GlyphLoader_Adjust_Points.exit.i108, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fd = load i16, ptr %i.c, align 8, !tbaa !125
  %i.fe = zext i16 %i.fd to i64
  %i.ff = getelementptr inbounds nuw [2 x i8], ptr %i.fc, i64 %i.fe
  br label %FT_GlyphLoader_Adjust_Points.exit.i108

FT_GlyphLoader_Adjust_Points.exit.i108:           ; preds = %bb.an, %bb.am
  %i.fg = phi ptr [ %i.ff, %bb.an ], [ null, %bb.am ]
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.fg, ptr %i.fh, align 8, !tbaa !124
  %i.fi = load i16, ptr %i.bc, align 2, !tbaa !122
  %i.fj = zext i16 %i.fi to i64                   ; 2 uses
  %i.fk = getelementptr inbounds nuw [16 x i8], ptr %.134.i24.i.ph.i104, i64 %i.fj
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %i.fk, ptr %i.fl, align 8, !tbaa !126
  %i.fm = getelementptr inbounds nuw [16 x i8], ptr %i.el, i64 %i.fj
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %i.fm, ptr %i.fn, align 8, !tbaa !127
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ad, %bb.ae, %FT_GlyphLoader_Adjust_Points.exit.i108
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !116 ; 4 uses
  %i.fq = load i16, ptr %i.c, align 8, !tbaa !125
  %i.fr = zext i16 %i.fq to i32
  %i.fs = load i16, ptr %i.d, align 8, !tbaa !125
  %i.ft = zext i16 %i.fs to i32
  %i.fu = add i32 %2, %i.fr
  %i.fv = add i32 %i.fu, %i.ft                    ; 3 uses
  %i.fw = icmp ugt i32 %i.fv, %i.fp
  br i1 %i.fw, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  %i.fx = icmp ugt i32 %i.fv, 65535
  br i1 %i.fx, label %FT_GlyphLoader_Adjust_Points.exit.thread, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fy = lshr i32 %i.fp, 1
  %i.fz = add i32 %i.fy, %i.fp
  %spec.select85 = tail call i32 @llvm.umax.i32(i32 %i.fv, i32 %i.fz)
  %i.ga = add i32 %spec.select85, 3               ; 2 uses
  %i.gb = and i32 %i.ga, -4
  %i.gc = icmp ugt i32 %i.ga, 65535
  %spec.store.select1 = select i1 %i.gc, i32 65535, i32 %i.gb ; 2 uses
  %i.gd = zext i32 %i.fp to i64
  %i.ge = zext i32 %spec.store.select1 to i64
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !124
  %i.gh = call ptr @ft_mem_realloc(ptr noundef %i.b, i64 noundef 2, i64 noundef %i.gd, i64 noundef %i.ge, ptr noundef %i.gg, ptr noundef nonnull %i.a)
  store ptr %i.gh, ptr %i.gf, align 8, !tbaa !124
  %i.gi = load i32, ptr %i.a, align 4, !tbaa !98  ; 2 uses
  %.not82 = icmp eq i32 %i.gi, 0
  br i1 %.not82, label %.thread129, label %FT_GlyphLoader_Adjust_Points.exit.thread

.thread129:                                       ; preds = %bb.aq
  store i32 %spec.store.select1, ptr %i.fo, align 4, !tbaa !116
  br label %bb.as

bb.ar:                                            ; preds = %bb.ao
  br i1 %.not, label %bb.as, label %FT_GlyphLoader_Adjust_Points.exit

bb.as:                                            ; preds = %.thread129, %bb.ar
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !121 ; 2 uses
  %.not.i111 = icmp eq ptr %i.gk, null
  br i1 %.not.i111, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.gl = load i16, ptr %i.bc, align 2, !tbaa !122
  %i.gm = zext i16 %i.gl to i64
  %i.gn = getelementptr inbounds nuw [16 x i8], ptr %i.gk, i64 %i.gm
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.go = phi ptr [ %i.gn, %bb.at ], [ null, %bb.as ]
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %i.go, ptr %i.gp, align 8, !tbaa !121
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !123 ; 2 uses
  %.not23.i = icmp eq ptr %i.gr, null
  br i1 %.not23.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.gs = load i16, ptr %i.bc, align 2, !tbaa !122
  %i.gt = zext i16 %i.gs to i64
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gr, i64 %i.gt
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.gv = phi ptr [ %i.gu, %bb.av ], [ null, %bb.au ]
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %i.gv, ptr %i.gw, align 8, !tbaa !123
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !124 ; 2 uses
  %.not24.i = icmp eq ptr %i.gy, null
  br i1 %.not24.i, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.gz = load i16, ptr %i.c, align 8, !tbaa !125
  %i.ha = zext i16 %i.gz to i64
  %i.hb = getelementptr inbounds nuw [2 x i8], ptr %i.gy, i64 %i.ha
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.hc = phi ptr [ %i.hb, %bb.ax ], [ null, %bb.aw ]
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.hc, ptr %i.hd, align 8, !tbaa !124
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.hf = load i8, ptr %i.he, align 4, !tbaa !120
  %.not25.i = icmp eq i8 %i.hf, 0
  br i1 %.not25.i, label %FT_GlyphLoader_Adjust_Points.exit, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !112
  %i.hi = load i16, ptr %i.bc, align 2, !tbaa !122
  %i.hj = zext i16 %i.hi to i64                   ; 2 uses
  %i.hk = getelementptr inbounds nuw [16 x i8], ptr %i.hh, i64 %i.hj
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %i.hk, ptr %i.hl, align 8, !tbaa !126
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !114
  %i.ho = getelementptr inbounds nuw [16 x i8], ptr %i.hn, i64 %i.hj
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %i.ho, ptr %i.hp, align 8, !tbaa !127
  br label %FT_GlyphLoader_Adjust_Points.exit

FT_GlyphLoader_Adjust_Points.exit.thread:         ; preds = %bb.ap, %ft_mem_realloc.exit.i109, %bb.ag, %bb.m, %ft_mem_realloc.exit.i, %bb.d, %ft_mem_realloc.exit99, %ft_mem_realloc.exit, %bb.aa, %bb.aq
  %3 = phi i32 [ 10, %bb.m ], [ 64, %ft_mem_realloc.exit.i ], [ 64, %ft_mem_realloc.exit.i109 ], [ 64, %ft_mem_realloc.exit99 ], [ 64, %ft_mem_realloc.exit ], [ %i.dn, %bb.aa ], [ %i.gi, %bb.aq ], [ 10, %bb.d ], [ 10, %bb.ag ], [ 10, %bb.ap ]
  %i.hq = load ptr, ptr %0, align 8, !tbaa !90    ; 10 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !107 ; 2 uses
  %.not.i.i112 = icmp eq ptr %i.hs, null
  br i1 %.not.i.i112, label %ft_mem_free.exit.i, label %bb.ba

bb.ba:                                            ; preds = %FT_GlyphLoader_Adjust_Points.exit.thread
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hq, i64 16
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !108
  tail call void %i.hu(ptr noundef %i.hq, ptr noundef nonnull %i.hs) #30, !inline_history !118
  br label %ft_mem_free.exit.i

ft_mem_free.exit.i:                               ; preds = %bb.ba, %FT_GlyphLoader_Adjust_Points.exit.thread
  store ptr null, ptr %i.hr, align 8, !tbaa !107
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !110 ; 2 uses
  %.not.i21.i = icmp eq ptr %i.hw, null
  br i1 %.not.i21.i, label %ft_mem_free.exit22.i, label %bb.bb

bb.bb:                                            ; preds = %ft_mem_free.exit.i
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hq, i64 16
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !108
  tail call void %i.hy(ptr noundef %i.hq, ptr noundef nonnull %i.hw) #30, !inline_history !118
  br label %ft_mem_free.exit22.i

ft_mem_free.exit22.i:                             ; preds = %bb.bb, %ft_mem_free.exit.i
  store ptr null, ptr %i.hv, align 8, !tbaa !110
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !111 ; 2 uses
  %.not.i23.i = icmp eq ptr %i.ia, null
  br i1 %.not.i23.i, label %ft_mem_free.exit24.i, label %bb.bc

bb.bc:                                            ; preds = %ft_mem_free.exit22.i
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hq, i64 16
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !108
  tail call void %i.ic(ptr noundef %i.hq, ptr noundef nonnull %i.ia) #30, !inline_history !118
  br label %ft_mem_free.exit24.i

ft_mem_free.exit24.i:                             ; preds = %bb.bc, %ft_mem_free.exit22.i
  store ptr null, ptr %i.hz, align 8, !tbaa !111
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !112 ; 2 uses
  %.not.i25.i = icmp eq ptr %i.ie, null
  br i1 %.not.i25.i, label %ft_mem_free.exit26.i, label %bb.bd

bb.bd:                                            ; preds = %ft_mem_free.exit24.i
  %i.if = getelementptr inbounds nuw i8, ptr %i.hq, i64 16
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !108
  tail call void %i.ig(ptr noundef %i.hq, ptr noundef nonnull %i.ie) #30, !inline_history !118
  br label %ft_mem_free.exit26.i

ft_mem_free.exit26.i:                             ; preds = %bb.bd, %ft_mem_free.exit24.i
  store ptr null, ptr %i.id, align 8, !tbaa !112
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !113 ; 2 uses
  %.not.i27.i = icmp eq ptr %i.ii, null
  br i1 %.not.i27.i, label %FT_GlyphLoader_Reset.exit, label %bb.be

bb.be:                                            ; preds = %ft_mem_free.exit26.i
  %i.ij = getelementptr inbounds nuw i8, ptr %i.hq, i64 16
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !108
  tail call void %i.ik(ptr noundef %i.hq, ptr noundef nonnull %i.ii) #30, !inline_history !118
  br label %FT_GlyphLoader_Reset.exit

FT_GlyphLoader_Reset.exit:                        ; preds = %ft_mem_free.exit26.i, %bb.be
  store ptr null, ptr %i.ih, align 8, !tbaa !113
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr null, ptr %i.il, align 8, !tbaa !114
  store i32 0, ptr %i.e, align 8, !tbaa !115
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.im, align 4, !tbaa !116
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.in, align 8, !tbaa !117
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 26
  store i16 0, ptr %i.io, align 2, !tbaa !99
  store i16 0, ptr %i.c, align 8, !tbaa !100
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 0, ptr %i.ip, align 8, !tbaa !101
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 0, ptr %i.iq, align 8, !tbaa !102
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.d, ptr noundef nonnull align 8 dereferenceable(72) %i.c, i64 72, i1 false), !tbaa.struct !103
  br label %FT_GlyphLoader_Adjust_Points.exit

FT_GlyphLoader_Adjust_Points.exit:                ; preds = %bb.ar, %bb.ay, %bb.az, %FT_GlyphLoader_Reset.exit
  %i.ir = phi i32 [ %3, %FT_GlyphLoader_Reset.exit ], [ 0, %bb.az ], [ 0, %bb.ay ], [ 0, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  ret i32 %i.ir
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 65) i32 @FT_GlyphLoader_CheckSubGlyphs(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !90     ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !102
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.e = load i32, ptr %i.d, align 8, !tbaa !102
  %i.f = add i32 %i.c, %1
  %i.g = add i32 %i.f, %i.e                       ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !117  ; 4 uses
  %i.j = icmp ugt i32 %i.g, %i.i
  br i1 %i.j, label %bb.b, label %ft_mem_realloc.exit.thread24

bb.b:                                             ; preds = %bb.a
  %i.k = add i32 %i.g, 1
  %i.l = and i32 %i.k, -2                         ; 5 uses
  %i.m = zext i32 %i.i to i64                     ; 3 uses
  %i.n = zext i32 %i.l to i64                     ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !133  ; 4 uses
  %i.q = icmp eq i32 %i.l, 0
  br i1 %i.q, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %.not.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i, label %ft_mem_realloc.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !108
  tail call void %i.s(ptr noundef %i.a, ptr noundef nonnull %i.p) #30, !inline_history !132
  br label %ft_mem_realloc.exit.thread

bb.e:                                             ; preds = %bb.b
  %i.t = icmp ugt i32 %i.l, 44739242
  br i1 %i.t, label %ft_mem_realloc.exit.thread24, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = icmp eq i32 %i.i, 0
  br i1 %i.u, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !87
  %i.x = mul nuw nsw i64 %i.n, 48
  %i.y = tail call ptr %i.w(ptr noundef %i.a, i64 noundef %i.x) #30, !inline_history !119 ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br label %ft_mem_qrealloc.exit.i

bb.h:                                             ; preds = %bb.f
  %i.aa = mul nuw nsw i64 %i.m, 48
  %i.ab = mul nuw nsw i64 %i.n, 48
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !130
  %i.ae = tail call ptr %i.ad(ptr noundef %i.a, i64 noundef %i.aa, i64 noundef %i.ab, ptr noundef %i.p) #30, !inline_history !119 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ae, null             ; 2 uses
  %..i.i = select i1 %.not.i.i, ptr %i.p, ptr %i.ae
  br label %ft_mem_qrealloc.exit.i

ft_mem_qrealloc.exit.i:                           ; preds = %bb.h, %bb.g
  %.sink.i = phi i1 [ %i.z, %bb.g ], [ %.not.i.i, %bb.h ] ; 2 uses
  %.134.i.i = phi ptr [ %i.y, %bb.g ], [ %..i.i, %bb.h ] ; 5 uses
  %not..sink.i = xor i1 %.sink.i, true
  %i.af = icmp ne ptr %.134.i.i, null
  %or.cond.i = select i1 %not..sink.i, i1 %i.af, i1 false
  %i.ag = icmp ugt i32 %i.l, %i.i
  %or.cond18.i = and i1 %i.ag, %or.cond.i
  br i1 %or.cond18.i, label %bb.i, label %ft_mem_realloc.exit

bb.i:                                             ; preds = %ft_mem_qrealloc.exit.i
  %i.ah = mul nuw nsw i64 %i.m, 48
  %i.ai = getelementptr inbounds nuw i8, ptr %.134.i.i, i64 %i.ah
  %i.aj = sub nuw nsw i64 %i.n, %i.m
  %i.ak = mul nuw nsw i64 %i.aj, 48
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ai, i8 0, i64 %i.ak, i1 false)
  br label %ft_mem_realloc.exit.thread

ft_mem_realloc.exit.thread:                       ; preds = %bb.i, %bb.d, %bb.c
  %.134.i24.i.ph = phi ptr [ null, %bb.c ], [ null, %bb.d ], [ %.134.i.i, %bb.i ] ; 2 uses
  store ptr %.134.i24.i.ph, ptr %i.o, align 8, !tbaa !133
  br label %bb.j

ft_mem_realloc.exit:                              ; preds = %ft_mem_qrealloc.exit.i
  store ptr %.134.i.i, ptr %i.o, align 8, !tbaa !133
  br i1 %.sink.i, label %ft_mem_realloc.exit.thread24, label %bb.j

bb.j:                                             ; preds = %ft_mem_realloc.exit.thread, %ft_mem_realloc.exit
  %.134.i24.i23 = phi ptr [ %.134.i24.i.ph, %ft_mem_realloc.exit.thread ], [ %.134.i.i, %ft_mem_realloc.exit ] ; 2 uses
  store i32 %i.l, ptr %i.h, align 8, !tbaa !117
  %.not.i = icmp eq ptr %.134.i24.i23, null
  br i1 %.not.i, label %FT_GlyphLoader_Adjust_Subglyphs.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.al = load i32, ptr %i.b, align 8, !tbaa !102
  %i.am = zext i32 %i.al to i64
  %i.an = getelementptr inbounds nuw [48 x i8], ptr %.134.i24.i23, i64 %i.am
  br label %FT_GlyphLoader_Adjust_Subglyphs.exit

FT_GlyphLoader_Adjust_Subglyphs.exit:             ; preds = %bb.j, %bb.k
  %i.ao = phi ptr [ %i.an, %bb.k ], [ null, %bb.j ]
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !133
  br label %ft_mem_realloc.exit.thread24

ft_mem_realloc.exit.thread24:                     ; preds = %bb.e, %bb.a, %FT_GlyphLoader_Adjust_Subglyphs.exit, %ft_mem_realloc.exit
  %.0 = phi i32 [ 0, %FT_GlyphLoader_Adjust_Subglyphs.exit ], [ 64, %ft_mem_realloc.exit ], [ 0, %bb.a ], [ 10, %bb.e ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @FT_GlyphLoader_Prepare(ptr nofree noundef captures(none) initializes((96, 100), (104, 128), (152, 156), (160, 168)) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 98
  store i16 0, ptr %i.b, align 2, !tbaa !99
  store i16 0, ptr %i.a, align 8, !tbaa !100
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i32 0, ptr %i.c, align 8, !tbaa !102
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !121  ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.h = load i16, ptr %i.g, align 2, !tbaa !122
  %i.i = zext i16 %i.h to i64
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.i
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = phi ptr [ %i.j, %bb.b ], [ null, %bb.a ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %i.k, ptr %i.l, align 8, !tbaa !121
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !123  ; 2 uses
  %.not23.i = icmp eq ptr %i.n, null
  br i1 %.not23.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.p = load i16, ptr %i.o, align 2, !tbaa !122
  %i.q = zext i16 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.q
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.s = phi ptr [ %i.r, %bb.d ], [ null, %bb.c ]
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %i.s, ptr %i.t, align 8, !tbaa !123
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !124  ; 2 uses
  %.not24.i = icmp eq ptr %i.v, null
  br i1 %.not24.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = load i16, ptr %i.d, align 8, !tbaa !125
  %i.x = zext i16 %i.w to i64
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %i.v, i64 %i.x
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.z = phi ptr [ %i.y, %bb.f ], [ null, %bb.e ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !124
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ac = load i8, ptr %i.ab, align 4, !tbaa !120
  %.not25.i = icmp eq i8 %i.ac, 0
  br i1 %.not25.i, label %FT_GlyphLoader_Adjust_Points.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !112
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !122
  %i.ah = zext i16 %i.ag to i64                   ; 2 uses
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !126
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !114
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.al, i64 %i.ah
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %i.am, ptr %i.an, align 8, !tbaa !127
  br label %FT_GlyphLoader_Adjust_Points.exit

FT_GlyphLoader_Adjust_Points.exit:                ; preds = %bb.g, %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !133 ; 2 uses
  %.not.i6 = icmp eq ptr %i.ap, null
end_hunk_0
