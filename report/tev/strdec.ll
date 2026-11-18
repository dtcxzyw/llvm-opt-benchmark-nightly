Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/strdec?download=true
inline.NumInlined: 39
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 34
begin_hunk_0_@StrIODecInit:bb.a
  br i1 %.not91, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = load ptr, ptr %i.am, align 8, !tbaa !61
  %i.at = add i32 %i.ao, 1
  %i.au = mul i32 %i.at, %.0101
  %i.av = add i32 %i.au, %.2100
  %i.aw = zext i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.aw ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !62
  %i.ba = load i64, ptr %i.ax, align 8, !tbaa !62
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = trunc i64 %i.bb to i32
  %i.bd = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %.0101, i32 noundef %.2100, i32 noundef %i.bc) ; 0 uses
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.be = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, i32 noundef %.0101, i32 noundef %.2100) ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bf = add i32 %.2100, 1                       ; 2 uses
  %i.bg = load i32, ptr %i.u, align 8, !tbaa !42  ; 3 uses
  %.not90 = icmp ugt i32 %i.bf, %i.bg
  br i1 %.not90, label %bb.n, label %bb.j, !llvm.loop !360

bb.n:                                             ; preds = %bb.m
  %i.bh = add i32 %.0101, 1                       ; 2 uses
  %i.bi = load i32, ptr %i.j, align 4, !tbaa !81
  %.not89 = icmp ugt i32 %i.bh, %i.bi
  br i1 %.not89, label %.loopexit, label %.preheader, !llvm.loop !361

.preheader93:                                     ; preds = %bb.i, %bb.s
  %i.bj = phi i32 [ %i.cp, %bb.s ], [ %.pre103, %bb.i ]
  %.199 = phi i32 [ %i.cq, %bb.s ], [ 0, %bb.i ]  ; 5 uses
  br label %bb.o

bb.o:                                             ; preds = %.preheader93, %bb.r
  %i.bk = phi i32 [ %i.bj, %.preheader93 ], [ %i.cp, %bb.r ] ; 2 uses
  %.398 = phi i32 [ 0, %.preheader93 ], [ %i.co, %bb.r ] ; 5 uses
  %i.bl = load ptr, ptr %i.am, align 8, !tbaa !61
  %i.bm = add i32 %i.bk, 1
  %i.bn = mul i32 %i.bm, %.199
  %i.bo = add i32 %i.bn, %.398
  %i.bp = shl i32 %i.bo, 2
  %i.bq = zext i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.bq ; 5 uses
  %i.bs = add i32 %.398, %.199
  %i.bt = load i32, ptr %i.j, align 4, !tbaa !81
  %i.bu = add i32 %i.bt, %i.bk
  %.not88 = icmp eq i32 %i.bs, %i.bu
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !62 ; 2 uses
  %i.bx = load i64, ptr %i.br, align 8, !tbaa !62
  %i.by = sub i64 %i.bw, %i.bx
  %i.bz = trunc i64 %i.by to i32                  ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !62 ; 2 uses
  %i.cc = sub i64 %i.cb, %i.bw
  %i.cd = trunc i64 %i.cc to i32                  ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !62 ; 2 uses
  %i.cg = sub i64 %i.cf, %i.cb
  %i.ch = trunc i64 %i.cg to i32                  ; 2 uses
  br i1 %.not88, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ci = getelementptr inbounds nuw i8, ptr %i.br, i64 32
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !62
  %i.ck = sub i64 %i.cj, %i.cf
  %i.cl = trunc i64 %i.ck to i32
  %i.cm = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %.199, i32 noundef %.398, i32 noundef %i.bz, i32 noundef %i.cd, i32 noundef %i.ch, i32 noundef %i.cl) ; 0 uses
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.cn = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, i32 noundef %.199, i32 noundef %.398, i32 noundef %i.bz, i32 noundef %i.cd, i32 noundef %i.ch) ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.co = add i32 %.398, 1                        ; 2 uses
  %i.cp = load i32, ptr %i.u, align 8, !tbaa !42  ; 3 uses
  %.not87 = icmp ugt i32 %i.co, %i.cp
  br i1 %.not87, label %bb.s, label %bb.o, !llvm.loop !362

bb.s:                                             ; preds = %bb.r
  %i.cq = add i32 %.199, 1                        ; 2 uses
  %i.cr = load i32, ptr %i.j, align 4, !tbaa !81
  %.not86 = icmp ugt i32 %i.cq, %i.cr
  br i1 %.not86, label %.loopexit, label %.preheader93, !llvm.loop !363

.loopexit:                                        ; preds = %bb.s, %bb.n, %bb.b, %bb.h, %bb.a
  %.077 = phi i32 [ -1, %bb.a ], [ 0, %bb.h ], [ 0, %bb.n ], [ 0, %bb.b ], [ 0, %bb.s ]
  ret i32 %.077
}

declare i32 @allocateBitIOInfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define noundef i32 @StrIODecTerm(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 34376
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !64
  %i.c = tail call i64 @detachISRead(ptr noundef %0, ptr noundef %i.b) #17 ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 34456
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !56
  tail call void @free(ptr noundef %i.e) #17
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 34408
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !61
  tail call void @free(ptr noundef %i.g) #17
  ret i32 0
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nofree nounwind memory(readwrite, target_mem: none) uwtable
define range(i32 -1, 1) i32 @initLookupTables(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 34352
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !73   ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !115  ; 10 uses
  %i.e = icmp ugt i64 %i.d, 1                     ; 2 uses
  %.0100.in.v = select i1 %i.e, i64 96, i64 8
  %.0100.in = getelementptr inbounds nuw i8, ptr %0, i64 %.0100.in.v
  %.098.in.v = select i1 %i.e, i64 104, i64 16
  %.098.in = getelementptr inbounds nuw i8, ptr %0, i64 %.098.in.v
  %.098 = load i64, ptr %.098.in, align 8, !tbaa !62
  %.0100 = load i64, ptr %.0100.in, align 8, !tbaa !62
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.g = load i64, ptr %i.f, align 8, !tbaa !77   ; 2 uses
  %i.h = add i64 %i.d, -1                         ; 2 uses
  %i.i = add i64 %i.h, %i.g
  %i.j = udiv i64 %i.i, %i.d                      ; 4 uses
  %i.k = add i64 %i.j, %.0100                     ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.m = load i64, ptr %i.l, align 8, !tbaa !79   ; 3 uses
  %i.n = add i64 %i.h, %i.m
  %i.o = udiv i64 %i.n, %i.d
  %i.p = add i64 %i.o, %.098                      ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.r = load i32, ptr %i.q, align 4, !tbaa !114  ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 33024
  %i.t = load i64, ptr %i.s, align 8, !tbaa !110  ; 3 uses
  switch i32 %i.r, label %bb.d [
    i32 2, label %bb.b
    i32 3, label %bb.b
    i32 8, label %bb.b
    i32 10, label %bb.b
    i32 4, label %bb.b
    i32 5, label %bb.c
    i32 6, label %bb.c
    i32 7, label %bb.c
    i32 9, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.u = lshr i64 %i.t, 1
  br label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  %i.v = lshr i64 %i.t, 2
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.0102 = phi i64 [ %i.v, %bb.c ], [ %i.u, %bb.b ], [ %i.t, %bb.a ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.x = load i32, ptr %i.w, align 8, !tbaa !90   ; 3 uses
  switch i32 %i.x, label %bb.g [
    i32 1, label %bb.e
    i32 2, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  %i.y = lshr i64 %i.k, 1
  %i.z = lshr i64 %i.p, 1
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.aa = lshr i64 %i.k, 1
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !378
  %i.ad = lshr i64 %i.ac, 3
  %i.ae = zext i32 %i.r to i64
  %i.af = getelementptr inbounds nuw i8, ptr @initLookupTables.cbChannels, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !11
  %i.ah = zext i8 %i.ag to i64
  %i.ai = udiv i64 %i.ad, %i.ah
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.0104 = phi i64 [ %i.ai, %bb.g ], [ 6, %bb.e ], [ 4, %bb.f ]
  %.1101 = phi i64 [ %i.k, %bb.g ], [ %i.y, %bb.e ], [ %i.aa, %bb.f ] ; 12 uses
  %.199 = phi i64 [ %i.p, %bb.g ], [ %i.z, %bb.e ], [ %i.p, %bb.f ] ; 9 uses
  %i.aj = icmp ult i32 %i.r, 11
  %switch.maskindex = trunc i32 %i.r to i16
  %switch.shifted = lshr i16 1793, %switch.maskindex
  %switch.lobit = trunc i16 %switch.shifted to i1
  %or.cond212 = select i1 %i.aj, i1 %switch.lobit, i1 false
  %.1105 = select i1 %or.cond212, i64 1, i64 %.0104 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !118 ; 5 uses
  %i.am = icmp ugt i32 %i.al, 3                   ; 2 uses
  %spec.select = select i1 %i.am, i64 %.0102, i64 %.1105 ; 9 uses
  %spec.select116 = select i1 %i.am, i64 %.1105, i64 %.0102 ; 9 uses
  %i.an = shl i64 %.1101, 3                       ; 2 uses
  %i.ao = tail call noalias ptr @malloc(i64 noundef %i.an) #18 ; 6 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !94
  %i.aq = icmp eq ptr %i.ao, null
  %i.ar = icmp ult i64 %i.an, %.1101
  %or.cond = or i1 %i.aq, %i.ar
  br i1 %or.cond, label %.loopexit, label %switch.edge

switch.edge:                                      ; preds = %bb.h
  %i.as = load i32, ptr %i.b, align 8, !tbaa !75
  %.not = icmp eq i32 %i.as, 0                    ; 4 uses
  %spec.select119 = select i1 %.not, i64 %i.j, i64 0 ; 4 uses
  %i.at = icmp ult i64 %spec.select119, %.1101
  br i1 %i.at, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %switch.edge
  %i.au = icmp ult i32 %i.al, 8
  %switch.cast = trunc i32 %i.al to i8
  %switch.downshift = lshr i8 -84, %switch.cast
  %switch.masked = trunc i8 %switch.downshift to i1
  %i.av = select i1 %i.au, i1 %switch.masked, i1 false
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !379 ; 9 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.az = add i32 %i.x, -1
  %narrow = icmp ult i32 %i.az, 2
  %i.ba = zext i1 %narrow to i64
  br i1 %i.av, label %.lr.ph.split.us, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.bb = sub i64 %.1101, %spec.select119         ; 2 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.ao, i64 %spec.select119 ; 5 uses
  %xtraiter = and i64 %i.bb, 3                    ; 3 uses
  %i.bc = sub i64 %spec.select119, %.1101
  %i.bd = icmp ugt i64 %i.bc, -4
  br i1 %i.bd, label %.lr.ph.split.epil.preheader, label %.lr.ph.split.preheader.new

.lr.ph.split.preheader.new:                       ; preds = %.lr.ph.split.preheader
  %unroll_iter = and i64 %i.bb, -4
  br label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  br i1 %.not, label %.lr.ph.split.us.split.us.preheader, label %.lr.ph.split.us.split.preheader

.lr.ph.split.us.split.preheader:                  ; preds = %.lr.ph.split.us
  %min.iters.check = icmp ult i64 %.1101, 4
  br i1 %min.iters.check, label %.lr.ph.split.us.split.preheader224, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.split.us.split.preheader
  %n.vec = and i64 %.1101, -4                     ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %.1101, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert152 = insertelement <2 x i64> poison, i64 %spec.select, i64 0
  %broadcast.splat153 = shufflevector <2 x i64> %broadcast.splatinsert152, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert154 = insertelement <2 x i64> poison, i64 %i.ax, i64 0
  %broadcast.splat155 = shufflevector <2 x i64> %broadcast.splatinsert154, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %i.be = xor <2 x i64> %vec.ind, splat (i64 -1)
  %i.bf = add <2 x i64> %broadcast.splat, %i.be
  %reass.sub = sub <2 x i64> %broadcast.splat, %vec.ind
  %i.bg = add <2 x i64> %reass.sub, splat (i64 -3)
  %i.bh = mul <2 x i64> %i.bf, %broadcast.splat153
  %i.bi = mul <2 x i64> %i.bg, %broadcast.splat153
  %i.bj = add <2 x i64> %i.bh, %broadcast.splat155
  %i.bk = add <2 x i64> %i.bi, %broadcast.splat155
  %i.bl = getelementptr [8 x i8], ptr %i.ao, i64 %index ; 2 uses
  %i.bm = getelementptr i8, ptr %i.bl, i64 16
  store <2 x i64> %i.bj, ptr %i.bl, align 8, !tbaa !62
  store <2 x i64> %i.bk, ptr %i.bm, align 8, !tbaa !62
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add <2 x i64> %vec.ind, splat (i64 4)
  %i.bn = icmp eq i64 %index.next, %n.vec
  br i1 %i.bn, label %middle.block, label %vector.body, !llvm.loop !366

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.1101, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.split.us.split.preheader224

.lr.ph.split.us.split.preheader224:               ; preds = %.lr.ph.split.us.split.preheader, %middle.block
  %.096121.us.ph = phi i64 [ 0, %.lr.ph.split.us.split.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.split.us.split

.lr.ph.split.us.split.us.preheader:               ; preds = %.lr.ph.split.us
  %.pre = load i64, ptr %i.ay, align 8, !tbaa !76
  %i.bo = sub i64 %.pre, %i.g
  %i.bp = add i64 %i.bo, %i.d
  %i.bq = udiv i64 %i.bp, %i.d
  %i.br = lshr i64 %i.bq, %i.ba                   ; 2 uses
  %1 = sub i64 %.1101, %i.j                       ; 4 uses
  %invariant.gep140 = getelementptr [8 x i8], ptr %i.ao, i64 %i.j ; 2 uses
  %min.iters.check157 = icmp ult i64 %1, 4
  br i1 %min.iters.check157, label %.lr.ph.split.us.split.us.preheader223, label %vector.ph158

vector.ph158:                                     ; preds = %.lr.ph.split.us.split.us.preheader
  %n.vec159 = and i64 %1, -4                      ; 3 uses
  %broadcast.splatinsert160 = insertelement <2 x i64> poison, i64 %i.br, i64 0
  %broadcast.splat161 = shufflevector <2 x i64> %broadcast.splatinsert160, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert162 = insertelement <2 x i64> poison, i64 %spec.select, i64 0
  %broadcast.splat163 = shufflevector <2 x i64> %broadcast.splatinsert162, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert164 = insertelement <2 x i64> poison, i64 %i.ax, i64 0
  %broadcast.splat165 = shufflevector <2 x i64> %broadcast.splatinsert164, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body166

vector.body166:                                   ; preds = %vector.body166, %vector.ph158
  %index167 = phi i64 [ 0, %vector.ph158 ], [ %index.next170, %vector.body166 ] ; 2 uses
  %vec.ind168 = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph158 ], [ %vec.ind.next171, %vector.body166 ] ; 3 uses
  %i.bs = xor <2 x i64> %vec.ind168, splat (i64 -1)
  %i.bt = add <2 x i64> %broadcast.splat161, %i.bs
  %reass.sub209.a = sub <2 x i64> %broadcast.splat161, %vec.ind168
  %i.bu = add <2 x i64> %reass.sub209.a, splat (i64 -3)
  %i.bv = mul <2 x i64> %i.bt, %broadcast.splat163
  %i.bw = mul <2 x i64> %i.bu, %broadcast.splat163
  %i.bx = add <2 x i64> %i.bv, %broadcast.splat165
  %i.by = add <2 x i64> %i.bw, %broadcast.splat165
  %i.bz = getelementptr [8 x i8], ptr %invariant.gep140, i64 %index167 ; 2 uses
  %i.ca = getelementptr i8, ptr %i.bz, i64 16
  store <2 x i64> %i.bx, ptr %i.bz, align 8, !tbaa !62
  store <2 x i64> %i.by, ptr %i.ca, align 8, !tbaa !62
  %index.next170 = add nuw i64 %index167, 4       ; 2 uses
  %vec.ind.next171 = add <2 x i64> %vec.ind168, splat (i64 4)
  %i.cb = icmp eq i64 %index.next170, %n.vec159
  br i1 %i.cb, label %middle.block172, label %vector.body166, !llvm.loop !367

middle.block172:                                  ; preds = %vector.body166
  %cmp.n173 = icmp eq i64 %1, %n.vec159
  br i1 %cmp.n173, label %._crit_edge, label %.lr.ph.split.us.split.us.preheader223

.lr.ph.split.us.split.us.preheader223:            ; preds = %.lr.ph.split.us.split.us.preheader, %middle.block172
  %.096121.us.us.ph = phi i64 [ 0, %.lr.ph.split.us.split.us.preheader ], [ %n.vec159, %middle.block172 ]
  br label %.lr.ph.split.us.split.us

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us.split.us.preheader223, %.lr.ph.split.us.split.us
  %.096121.us.us = phi i64 [ %i.cg, %.lr.ph.split.us.split.us ], [ %.096121.us.us.ph, %.lr.ph.split.us.split.us.preheader223 ] ; 3 uses
  %i.cc = xor i64 %.096121.us.us, -1
  %i.cd = add i64 %i.br, %i.cc
  %i.ce = mul i64 %i.cd, %spec.select
  %i.cf = add i64 %i.ce, %i.ax
  %gep141 = getelementptr [8 x i8], ptr %invariant.gep140, i64 %.096121.us.us
  store i64 %i.cf, ptr %gep141, align 8, !tbaa !62
  %i.cg = add i64 %.096121.us.us, 1               ; 2 uses
  %exitcond130.not = icmp eq i64 %i.cg, %1
  br i1 %exitcond130.not, label %._crit_edge, label %.lr.ph.split.us.split.us, !llvm.loop !368

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us.split.preheader224, %.lr.ph.split.us.split
  %.096121.us = phi i64 [ %i.cm, %.lr.ph.split.us.split ], [ %.096121.us.ph, %.lr.ph.split.us.split.preheader224 ] ; 3 uses
  %i.ch = xor i64 %.096121.us, -1
  %i.ci = add i64 %.1101, %i.ch
  %i.cj = mul i64 %i.ci, %spec.select
  %i.ck = add i64 %i.cj, %i.ax
  %i.cl = getelementptr [8 x i8], ptr %i.ao, i64 %.096121.us
  store i64 %i.ck, ptr %i.cl, align 8, !tbaa !62
  %i.cm = add i64 %.096121.us, 1                  ; 2 uses
  %exitcond129.not = icmp eq i64 %i.cm, %.1101
  br i1 %exitcond129.not, label %._crit_edge, label %.lr.ph.split.us.split, !llvm.loop !369

.lr.ph.split:                                     ; preds = %.lr.ph.split, %.lr.ph.split.preheader.new
  %.096121 = phi i64 [ 0, %.lr.ph.split.preheader.new ], [ %i.cy, %.lr.ph.split ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.split.preheader.new ], [ %niter.next.3, %.lr.ph.split ]
  %i.cn = mul i64 %.096121, %spec.select
  %i.co = add i64 %i.cn, %i.ax
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %.096121
  store i64 %i.co, ptr %gep, align 8, !tbaa !62
  %i.cp = or disjoint i64 %.096121, 1             ; 2 uses
  %i.cq = mul i64 %i.cp, %spec.select
  %i.cr = add i64 %i.cq, %i.ax
  %gep.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.cp
  store i64 %i.cr, ptr %gep.1, align 8, !tbaa !62
  %i.cs = or disjoint i64 %.096121, 2             ; 2 uses
  %i.ct = mul i64 %i.cs, %spec.select
  %i.cu = add i64 %i.ct, %i.ax
  %gep.2 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.cs
  store i64 %i.cu, ptr %gep.2, align 8, !tbaa !62
  %i.cv = or disjoint i64 %.096121, 3             ; 2 uses
  %i.cw = mul i64 %i.cv, %spec.select
  %i.cx = add i64 %i.cw, %i.ax
  %gep.3 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.cv
  store i64 %i.cx, ptr %gep.3, align 8, !tbaa !62
  %i.cy = add i64 %.096121, 4                     ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit226.unr-lcssa, label %.lr.ph.split, !llvm.loop !370

._crit_edge.loopexit226.unr-lcssa:                ; preds = %.lr.ph.split
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.split.epil.preheader

.lr.ph.split.epil.preheader:                      ; preds = %._crit_edge.loopexit226.unr-lcssa, %.lr.ph.split.preheader
  %.096121.epil.init = phi i64 [ 0, %.lr.ph.split.preheader ], [ %i.cy, %._crit_edge.loopexit226.unr-lcssa ]
  %lcmp.mod227 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod227)
  br label %.lr.ph.split.epil

.lr.ph.split.epil:                                ; preds = %.lr.ph.split.epil, %.lr.ph.split.epil.preheader
  %.096121.epil = phi i64 [ %i.db, %.lr.ph.split.epil ], [ %.096121.epil.init, %.lr.ph.split.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.split.epil ], [ 0, %.lr.ph.split.epil.preheader ]
  %i.cz = mul i64 %.096121.epil, %spec.select
  %i.da = add i64 %i.cz, %i.ax
  %gep.epil = getelementptr [8 x i8], ptr %invariant.gep, i64 %.096121.epil
  store i64 %i.da, ptr %gep.epil, align 8, !tbaa !62
  %i.db = add i64 %.096121.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.split.epil, !llvm.loop !371

._crit_edge:                                      ; preds = %._crit_edge.loopexit226.unr-lcssa, %.lr.ph.split.epil, %.lr.ph.split.us.split, %.lr.ph.split.us.split.us, %middle.block, %middle.block172, %switch.edge
  %i.dc = shl i64 %.199, 3                        ; 2 uses
  %i.dd = tail call noalias ptr @malloc(i64 noundef %i.dc) #18 ; 5 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store ptr %i.dd, ptr %i.de, align 8, !tbaa !95
  %i.df = icmp eq ptr %i.dd, null
  %i.dg = icmp ult i64 %i.dc, %.199
  %or.cond117 = select i1 %i.df, i1 true, i1 %i.dg
  br i1 %or.cond117, label %.loopexit, label %switch.edge118

switch.edge118:                                   ; preds = %._crit_edge
  %i.dh = icmp ult i32 %i.al, 6
  %switch.cast215 = trunc i32 %i.al to i6
  %switch.downshift217 = lshr i6 -6, %switch.cast215
  %switch.masked218 = trunc i6 %switch.downshift217 to i1
  %i.di = select i1 %i.dh, i1 %switch.masked218, i1 false
  br i1 %.not, label %bb.i, label %bb.j

bb.i:                                             ; preds = %switch.edge118
  %i.dj = add i64 %i.m, -1
  %i.dk = add i64 %i.dj, %i.d
  %i.dl = udiv i64 %i.dk, %i.d
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %switch.edge118
  %.1 = phi i64 [ 0, %switch.edge118 ], [ %i.dl, %bb.i ] ; 8 uses
  %i.dm = icmp ult i64 %.1, %.199
  br i1 %i.dm, label %.lr.ph124, label %.loopexit

.lr.ph124:                                        ; preds = %bb.j
  %i.dn = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.do = icmp eq i32 %i.x, 1
  %i.dp = zext i1 %i.do to i64
  br i1 %i.di, label %.lr.ph124.split.us, label %.lr.ph124.split.preheader

.lr.ph124.split.preheader:                        ; preds = %.lr.ph124
  %2 = sub i64 %.199, %.1                         ; 2 uses
  %invariant.gep142 = getelementptr [8 x i8], ptr %i.dd, i64 %.1 ; 5 uses
  %xtraiter228 = and i64 %2, 3                    ; 3 uses
  %i.dq = sub i64 %.1, %.199
  %i.dr = icmp ugt i64 %i.dq, -4
  br i1 %i.dr, label %.lr.ph124.split.epil.preheader, label %.lr.ph124.split.preheader.new

.lr.ph124.split.preheader.new:                    ; preds = %.lr.ph124.split.preheader
  %unroll_iter232 = and i64 %2, -4
  br label %.lr.ph124.split

.lr.ph124.split.us:                               ; preds = %.lr.ph124
  br i1 %.not, label %.lr.ph124.split.us.split.us.preheader, label %.lr.ph124.split.us.split.preheader

.lr.ph124.split.us.split.preheader:               ; preds = %.lr.ph124.split.us
  %3 = sub i64 %.199, %.1                         ; 4 uses
  %invariant.gep144 = getelementptr [8 x i8], ptr %i.dd, i64 %.1 ; 2 uses
  %min.iters.check176 = icmp ult i64 %3, 4
  br i1 %min.iters.check176, label %.lr.ph124.split.us.split.preheader220, label %vector.ph177

vector.ph177:                                     ; preds = %.lr.ph124.split.us.split.preheader
  %n.vec178 = and i64 %3, -4                      ; 3 uses
  %broadcast.splatinsert179 = insertelement <2 x i64> poison, i64 %.199, i64 0
  %broadcast.splat180 = shufflevector <2 x i64> %broadcast.splatinsert179, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert181 = insertelement <2 x i64> poison, i64 %spec.select116, i64 0
  %broadcast.splat182 = shufflevector <2 x i64> %broadcast.splatinsert181, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body183

vector.body183:                                   ; preds = %vector.body183, %vector.ph177
  %index184 = phi i64 [ 0, %vector.ph177 ], [ %index.next187, %vector.body183 ] ; 2 uses
  %vec.ind185 = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph177 ], [ %vec.ind.next188, %vector.body183 ] ; 3 uses
  %i.ds = xor <2 x i64> %vec.ind185, splat (i64 -1)
  %i.dt = add <2 x i64> %broadcast.splat180, %i.ds
  %reass.sub210.a = sub <2 x i64> %broadcast.splat180, %vec.ind185
  %i.du = add <2 x i64> %reass.sub210.a, splat (i64 -3)
  %i.dv = mul <2 x i64> %i.dt, %broadcast.splat182
  %i.dw = mul <2 x i64> %i.du, %broadcast.splat182
  %i.dx = getelementptr [8 x i8], ptr %invariant.gep144, i64 %index184 ; 2 uses
  %i.dy = getelementptr i8, ptr %i.dx, i64 16
  store <2 x i64> %i.dv, ptr %i.dx, align 8, !tbaa !62
  store <2 x i64> %i.dw, ptr %i.dy, align 8, !tbaa !62
  %index.next187 = add nuw i64 %index184, 4       ; 2 uses
  %vec.ind.next188 = add <2 x i64> %vec.ind185, splat (i64 4)
  %i.dz = icmp eq i64 %index.next187, %n.vec178
  br i1 %i.dz, label %middle.block189, label %vector.body183, !llvm.loop !372

middle.block189:                                  ; preds = %vector.body183
  %cmp.n190 = icmp eq i64 %3, %n.vec178
  br i1 %cmp.n190, label %.loopexit, label %.lr.ph124.split.us.split.preheader220

.lr.ph124.split.us.split.preheader220:            ; preds = %.lr.ph124.split.us.split.preheader, %middle.block189
  %.197122.us.ph = phi i64 [ 0, %.lr.ph124.split.us.split.preheader ], [ %n.vec178, %middle.block189 ]
  br label %.lr.ph124.split.us.split

.lr.ph124.split.us.split.us.preheader:            ; preds = %.lr.ph124.split.us
  %.pre134 = load i64, ptr %i.dn, align 8, !tbaa !78
  %i.ea = sub i64 %.pre134, %i.m
  %i.eb = add i64 %i.ea, %i.d
  %i.ec = udiv i64 %i.eb, %i.d
  %i.ed = lshr i64 %i.ec, %i.dp                   ; 2 uses
  %4 = sub i64 %.199, %.1                         ; 4 uses
  %invariant.gep146 = getelementptr [8 x i8], ptr %i.dd, i64 %.1 ; 2 uses
  %min.iters.check193 = icmp ult i64 %4, 4
  br i1 %min.iters.check193, label %.lr.ph124.split.us.split.us.preheader219, label %vector.ph194

vector.ph194:                                     ; preds = %.lr.ph124.split.us.split.us.preheader
  %n.vec195 = and i64 %4, -4                      ; 3 uses
  %broadcast.splatinsert196 = insertelement <2 x i64> poison, i64 %i.ed, i64 0
  %broadcast.splat197 = shufflevector <2 x i64> %broadcast.splatinsert196, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert198 = insertelement <2 x i64> poison, i64 %spec.select116, i64 0
  %broadcast.splat199 = shufflevector <2 x i64> %broadcast.splatinsert198, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body200

vector.body200:                                   ; preds = %vector.body200, %vector.ph194
  %index201 = phi i64 [ 0, %vector.ph194 ], [ %index.next204, %vector.body200 ] ; 2 uses
  %vec.ind202 = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph194 ], [ %vec.ind.next205, %vector.body200 ] ; 3 uses
  %i.ee = xor <2 x i64> %vec.ind202, splat (i64 -1)
  %i.ef = add <2 x i64> %broadcast.splat197, %i.ee
  %reass.sub211 = sub <2 x i64> %broadcast.splat197, %vec.ind202
  %i.eg = add <2 x i64> %reass.sub211, splat (i64 -3)
  %i.eh = mul <2 x i64> %i.ef, %broadcast.splat199
  %i.ei = mul <2 x i64> %i.eg, %broadcast.splat199
  %i.ej = getelementptr [8 x i8], ptr %invariant.gep146, i64 %index201 ; 2 uses
  %i.ek = getelementptr i8, ptr %i.ej, i64 16
  store <2 x i64> %i.eh, ptr %i.ej, align 8, !tbaa !62
  store <2 x i64> %i.ei, ptr %i.ek, align 8, !tbaa !62
  %index.next204 = add nuw i64 %index201, 4       ; 2 uses
  %vec.ind.next205 = add <2 x i64> %vec.ind202, splat (i64 4)
  %i.el = icmp eq i64 %index.next204, %n.vec195
  br i1 %i.el, label %middle.block206, label %vector.body200, !llvm.loop !373

middle.block206:                                  ; preds = %vector.body200
  %cmp.n207 = icmp eq i64 %4, %n.vec195
  br i1 %cmp.n207, label %.loopexit, label %.lr.ph124.split.us.split.us.preheader219

.lr.ph124.split.us.split.us.preheader219:         ; preds = %.lr.ph124.split.us.split.us.preheader, %middle.block206
  %.197122.us.us.ph = phi i64 [ 0, %.lr.ph124.split.us.split.us.preheader ], [ %n.vec195, %middle.block206 ]
  br label %.lr.ph124.split.us.split.us

.lr.ph124.split.us.split.us:                      ; preds = %.lr.ph124.split.us.split.us.preheader219, %.lr.ph124.split.us.split.us
  %.197122.us.us = phi i64 [ %i.ep, %.lr.ph124.split.us.split.us ], [ %.197122.us.us.ph, %.lr.ph124.split.us.split.us.preheader219 ] ; 3 uses
  %i.em = xor i64 %.197122.us.us, -1
  %i.en = add i64 %i.ed, %i.em
  %i.eo = mul i64 %i.en, %spec.select116
  %gep147 = getelementptr [8 x i8], ptr %invariant.gep146, i64 %.197122.us.us
  store i64 %i.eo, ptr %gep147, align 8, !tbaa !62
  %i.ep = add i64 %.197122.us.us, 1               ; 2 uses
  %exitcond133.not = icmp eq i64 %i.ep, %4
  br i1 %exitcond133.not, label %.loopexit, label %.lr.ph124.split.us.split.us, !llvm.loop !374

.lr.ph124.split.us.split:                         ; preds = %.lr.ph124.split.us.split.preheader220, %.lr.ph124.split.us.split
  %.197122.us = phi i64 [ %i.et, %.lr.ph124.split.us.split ], [ %.197122.us.ph, %.lr.ph124.split.us.split.preheader220 ] ; 3 uses
  %i.eq = xor i64 %.197122.us, -1
  %i.er = add i64 %.199, %i.eq
  %i.es = mul i64 %i.er, %spec.select116
  %gep145 = getelementptr [8 x i8], ptr %invariant.gep144, i64 %.197122.us
  store i64 %i.es, ptr %gep145, align 8, !tbaa !62
  %i.et = add i64 %.197122.us, 1                  ; 2 uses
  %exitcond132.not = icmp eq i64 %i.et, %3
  br i1 %exitcond132.not, label %.loopexit, label %.lr.ph124.split.us.split, !llvm.loop !375

.lr.ph124.split:                                  ; preds = %.lr.ph124.split, %.lr.ph124.split.preheader.new
  %.197122 = phi i64 [ 0, %.lr.ph124.split.preheader.new ], [ %i.fb, %.lr.ph124.split ] ; 6 uses
  %niter233 = phi i64 [ 0, %.lr.ph124.split.preheader.new ], [ %niter233.next.3, %.lr.ph124.split ]
  %i.eu = mul i64 %.197122, %spec.select116
  %gep143 = getelementptr [8 x i8], ptr %invariant.gep142, i64 %.197122
  store i64 %i.eu, ptr %gep143, align 8, !tbaa !62
  %i.ev = or disjoint i64 %.197122, 1             ; 2 uses
  %i.ew = mul i64 %i.ev, %spec.select116
  %gep143.1 = getelementptr [8 x i8], ptr %invariant.gep142, i64 %i.ev
  store i64 %i.ew, ptr %gep143.1, align 8, !tbaa !62
  %i.ex = or disjoint i64 %.197122, 2             ; 2 uses
  %i.ey = mul i64 %i.ex, %spec.select116
  %gep143.2 = getelementptr [8 x i8], ptr %invariant.gep142, i64 %i.ex
  store i64 %i.ey, ptr %gep143.2, align 8, !tbaa !62
  %i.ez = or disjoint i64 %.197122, 3             ; 2 uses
  %i.fa = mul i64 %i.ez, %spec.select116
  %gep143.3 = getelementptr [8 x i8], ptr %invariant.gep142, i64 %i.ez
  store i64 %i.fa, ptr %gep143.3, align 8, !tbaa !62
  %i.fb = add i64 %.197122, 4                     ; 2 uses
  %niter233.next.3 = add i64 %niter233, 4         ; 2 uses
  %niter233.ncmp.3 = icmp eq i64 %niter233.next.3, %unroll_iter232
  br i1 %niter233.ncmp.3, label %.loopexit.loopexit222.unr-lcssa, label %.lr.ph124.split, !llvm.loop !376

.loopexit.loopexit222.unr-lcssa:                  ; preds = %.lr.ph124.split
  %lcmp.mod230.not = icmp eq i64 %xtraiter228, 0
  br i1 %lcmp.mod230.not, label %.loopexit, label %.lr.ph124.split.epil.preheader

.lr.ph124.split.epil.preheader:                   ; preds = %.loopexit.loopexit222.unr-lcssa, %.lr.ph124.split.preheader
  %.197122.epil.init = phi i64 [ 0, %.lr.ph124.split.preheader ], [ %i.fb, %.loopexit.loopexit222.unr-lcssa ]
  %lcmp.mod231 = icmp ne i64 %xtraiter228, 0
  tail call void @llvm.assume(i1 %lcmp.mod231)
  br label %.lr.ph124.split.epil

.lr.ph124.split.epil:                             ; preds = %.lr.ph124.split.epil, %.lr.ph124.split.epil.preheader
  %.197122.epil = phi i64 [ %i.fd, %.lr.ph124.split.epil ], [ %.197122.epil.init, %.lr.ph124.split.epil.preheader ] ; 3 uses
  %epil.iter229 = phi i64 [ %epil.iter229.next, %.lr.ph124.split.epil ], [ 0, %.lr.ph124.split.epil.preheader ]
  %i.fc = mul i64 %.197122.epil, %spec.select116
  %gep143.epil = getelementptr [8 x i8], ptr %invariant.gep142, i64 %.197122.epil
  store i64 %i.fc, ptr %gep143.epil, align 8, !tbaa !62
  %i.fd = add i64 %.197122.epil, 1
  %epil.iter229.next = add i64 %epil.iter229, 1   ; 2 uses
  %epil.iter229.cmp.not = icmp eq i64 %epil.iter229.next, %xtraiter228
  br i1 %epil.iter229.cmp.not, label %.loopexit, label %.lr.ph124.split.epil, !llvm.loop !377

.loopexit:                                        ; preds = %.loopexit.loopexit222.unr-lcssa, %.lr.ph124.split.epil, %.lr.ph124.split.us.split, %.lr.ph124.split.us.split.us, %middle.block189, %middle.block206, %bb.j, %._crit_edge, %bb.h
  %.0106 = phi i32 [ -1, %._crit_edge ], [ -1, %bb.h ], [ 0, %middle.block189 ], [ 0, %bb.j ], [ 0, %middle.block206 ], [ 0, %.lr.ph124.split.us.split.us ], [ 0, %.lr.ph124.split.us.split ], [ 0, %.lr.ph124.split.epil ], [ 0, %.loopexit.loopexit222.unr-lcssa ]
  ret i32 %.0106
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @setROI(ptr nofree noundef captures(none) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 34272
  %i.c = load i64, ptr %i.b, align 8, !tbaa !119  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 34288
  %i.e = load i64, ptr %i.d, align 8, !tbaa !120
  %i.f = load i64, ptr %i.a, align 8, !tbaa !121  ; 5 uses
  %i.g = add i64 %i.e, %i.c
  %i.h = sub i64 %i.f, %i.g                       ; 3 uses
  store i64 %i.h, ptr %i.a, align 8, !tbaa !121
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 34264
  %i.j = load i64, ptr %i.i, align 8, !tbaa !122  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 34280
  %i.l = load i64, ptr %i.k, align 8, !tbaa !123
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !124  ; 4 uses
  %i.o = add i64 %i.l, %i.j
  %i.p = sub i64 %i.n, %i.o                       ; 2 uses
  store i64 %i.p, ptr %i.m, align 8, !tbaa !124
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.r = load i32, ptr %i.q, align 4, !tbaa !125  ; 3 uses
  %i.s = icmp eq i32 %i.r, 1
  %i.t = zext i1 %i.s to i32                      ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 34352
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !73   ; 10 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  store i32 %i.t, ptr %i.w, align 8, !tbaa !382
  %i.x = icmp eq i32 %i.r, 0
  %i.y = select i1 %i.x, i32 1, i32 %i.t
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 24 ; 2 uses
  store i32 %i.y, ptr %i.z, align 8, !tbaa !83
  %i.aa = icmp ne i32 %i.r, 3
  %i.ab = zext i1 %i.aa to i32
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 28 ; 2 uses
  store i32 %i.ab, ptr %i.ac, align 4, !tbaa !82
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !126
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %storemerge = phi i64 [ 1, %bb.a ], [ %i.ah, %bb.b ] ; 9 uses
  %i.af = mul i64 %i.ae, %storemerge
  %i.ag = icmp ult i64 %i.af, %i.h
  %i.ah = shl i64 %storemerge, 1
  br i1 %i.ag, label %bb.b, label %bb.c, !llvm.loop !381

bb.c:                                             ; preds = %bb.b
  %i.ai = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i64 %storemerge, ptr %i.ai, align 8, !tbaa !115
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !54
  %i.al = icmp eq i32 %i.ak, 1                    ; 2 uses
  %i.am = icmp ugt i64 %storemerge, 3
  %or.cond = and i1 %i.am, %i.al
  br i1 %or.cond, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.z, align 8, !tbaa !83
  %i.an = icmp ugt i64 %storemerge, 15
  br i1 %i.an, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.ac, align 4, !tbaa !82
  br label %.thread

.thread:                                          ; preds = %bb.d, %bb.e, %bb.c
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !127
  %i.aq = mul i64 %i.ap, %storemerge
  %i.ar = add i64 %i.aq, %i.c                     ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  store i64 %i.ar, ptr %i.as, align 8, !tbaa !77
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.au = load i64, ptr %i.at, align 8, !tbaa !128
  %i.av = mul i64 %i.au, %storemerge
  %i.aw = add i64 %i.ar, -1
  %i.ax = add i64 %i.aw, %i.av                    ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.v, i64 40 ; 2 uses
  store i64 %i.ax, ptr %i.ay, align 8, !tbaa !76
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !129
  %i.bb = mul i64 %i.ba, %storemerge
  %i.bc = add i64 %i.bb, %i.j                     ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  store i64 %i.bc, ptr %i.bd, align 8, !tbaa !79
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !130
  %i.bg = mul i64 %i.bf, %storemerge
  %i.bh = add i64 %i.bc, -1
  %i.bi = add i64 %i.bh, %i.bg                    ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.v, i64 56 ; 2 uses
  store i64 %i.bi, ptr %i.bj, align 8, !tbaa !78
  %.not = icmp ult i64 %i.ax, %i.f
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.thread
  %i.bk = add i64 %i.f, -1                        ; 2 uses
  store i64 %i.bk, ptr %i.ay, align 8, !tbaa !76
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.thread
  %i.bl = phi i64 [ %i.bk, %bb.f ], [ %i.ax, %.thread ] ; 2 uses
  %.not79 = icmp ult i64 %i.bi, %i.n
  br i1 %.not79, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bm = add i64 %i.n, -1                        ; 2 uses
  store i64 %i.bm, ptr %i.bj, align 8, !tbaa !78
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bn = phi i64 [ %i.bm, %bb.h ], [ %i.bi, %bb.g ]
  %i.bo = sub i64 0, %i.bc
  %i.bp = icmp eq i64 %i.ar, %i.bo
  br i1 %i.bp, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.bq = add i64 %i.bl, 15
  %i.br = lshr i64 %i.bq, 4
  %i.bs = add i64 %i.f, 14
  %i.bt = lshr i64 %i.bs, 4
  %.not80 = icmp samesign ult i64 %i.br, %i.bt
  br i1 %.not80, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bu = add i64 %i.bn, 15
  %i.bv = lshr i64 %i.bu, 4
  %i.bw = add i64 %i.n, 14
  %i.bx = lshr i64 %i.bw, 4
  %i.by = icmp samesign uge i64 %i.bv, %i.bx
  %i.bz = zext i1 %i.by to i32
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %i.ca = phi i32 [ 0, %bb.j ], [ 0, %bb.i ], [ %i.bz, %bb.k ]
  store i32 %i.ca, ptr %i.v, align 8, !tbaa !75
  %i.cb = icmp eq i64 %i.ar, 0
  br i1 %i.cb, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cc = add i64 %i.bl, 15
  %i.cd = lshr i64 %i.cc, 4
  %i.ce = add i64 %i.f, 14
  %i.cf = lshr i64 %i.ce, 4
end_hunk_0
