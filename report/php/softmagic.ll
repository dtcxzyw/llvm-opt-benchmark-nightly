Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/softmagic?download=true
inline.NumInlined: 21
inline.NumDeleted: 8
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@moffset:bb.a
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !35
  %i.bg = and i32 %i.bf, 16
  %.not69 = icmp eq i32 %i.bg, 0
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !55 ; 2 uses
  br i1 %.not69, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bj = sub i64 %i.bi, %2
  %i.bk = trunc i64 %i.bj to i32
  br label %bb.ac

bb.t:                                             ; preds = %bb.r
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !56
  %i.bn = sub i64 %i.bi, %2
  %i.bo = add i64 %i.bn, %i.bm
  %i.bp = trunc i64 %i.bo to i32
  br label %bb.ac

bb.u:                                             ; preds = %bb.a
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !35
  %i.bs = and i32 %i.br, 16
  %.not68 = icmp eq i32 %i.bs, 0
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !55 ; 2 uses
  br i1 %.not68, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bv = sub i64 %i.bu, %2
  %i.bw = trunc i64 %i.bv to i32
  br label %bb.ac

bb.w:                                             ; preds = %bb.u
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !51
  %i.bz = zext i8 %i.by to i64
  %i.ca = sub i64 %i.bu, %2
  %i.cb = add i64 %i.ca, %i.bz
  %i.cc = trunc i64 %i.cb to i32
  br label %bb.ac

bb.x:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !46
  br label %bb.ac

bb.y:                                             ; preds = %bb.a
  %i.cf = tail call i32 @der_offs(ptr noundef %0, ptr noundef nonnull %1, i64 noundef %.160.val) #20 ; 4 uses
  %i.cg = icmp eq i32 %i.cf, -1
  %i.ch = sext i32 %i.cf to i64
  %i.ci = icmp ult i64 %.160.val, %i.ch
  %or.cond = select i1 %i.cg, i1 true, i1 %i.ci
  br i1 %or.cond, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !31
  %i.cl = and i32 %i.ck, 1
  %.not = icmp eq i32 %i.cl, 0
  br i1 %.not, label %.critedge.sink.split, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cm = load ptr, ptr @stderr, align 8, !tbaa !49
  %i.cn = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cm, ptr noundef nonnull @.str.48, i32 noundef %i.cf, i64 noundef %.160.val) #21 ; 0 uses
  br label %.critedge.sink.split

bb.ab:                                            ; preds = %bb.a
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !46
  %i.cq = add i32 %i.cp, 16
  br label %bb.ac

bb.ac:                                            ; preds = %bb.k, %bb.j, %bb.a, %bb.y, %bb.v, %bb.w, %bb.s, %bb.t, %bb.g, %bb.ab, %bb.x, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.e, %bb.d, %bb.c, %bb.b
  %.3 = phi i32 [ %i.cq, %bb.ab ], [ %i.e, %bb.b ], [ %i.h, %bb.c ], [ %i.k, %bb.d ], [ %i.n, %bb.e ], [ %i.v, %bb.g ], [ 0, %bb.a ], [ %i.ao, %bb.l ], [ %i.ar, %bb.m ], [ %i.au, %bb.n ], [ %i.ax, %bb.o ], [ %i.ba, %bb.p ], [ %i.bd, %bb.q ], [ %i.bk, %bb.s ], [ %i.bp, %bb.t ], [ %i.bw, %bb.v ], [ %i.cc, %bb.w ], [ %i.ce, %bb.x ], [ %i.cf, %bb.y ], [ %i.ah, %bb.j ], [ %i.al, %bb.k ] ; 2 uses
  %i.cr = sext i32 %.3 to i64
  %i.cs = icmp ult i64 %.160.val, %i.cr
  br i1 %i.cs, label %.critedge, label %.critedge.sink.split

.critedge.sink.split:                             ; preds = %bb.ac, %bb.z, %bb.aa
  %.3.sink = phi i32 [ 0, %bb.z ], [ 0, %bb.aa ], [ %.3, %bb.ac ]
  %.364.ph = phi i32 [ 0, %bb.z ], [ 0, %bb.aa ], [ 1, %bb.ac ]
  store i32 %.3.sink, ptr %3, align 4, !tbaa !13
  br label %.critedge

.critedge:                                        ; preds = %.critedge.sink.split, %bb.k, %bb.ac
  %.364 = phi i32 [ -1, %bb.ac ], [ -1, %bb.k ], [ %.364.ph, %.critedge.sink.split ]
  ret i32 %.364
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #3

declare hidden i32 @file_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare hidden i32 @buffer_fill(ptr noundef) local_unnamed_addr #2

declare hidden void @file_magerror(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare hidden void @buffer_init(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare hidden void @file_error(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @mcopy(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef range(i32 0, 256) %2, i32 noundef range(i32 0, 2) %3, ptr noundef %4, i32 noundef %5, i64 noundef %6, ptr nofree noundef readonly captures(none) %7) unnamed_addr #4 {
bb.a:
  %i.a = icmp eq i32 %3, 0
  br i1 %i.a, label %bb.b, label %.critedge171

bb.b:                                             ; preds = %bb.a
  %trunc = trunc nuw i32 %2 to i8
  switch i8 %trunc, label %.critedge171 [
    i8 48, label %bb.c
    i8 20, label %bb.c
    i8 17, label %bb.d
    i8 18, label %bb.o
    i8 19, label %bb.o
    i8 5, label %bb.w
    i8 13, label %bb.w
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.b = zext i32 %5 to i64
  %spec.select174 = tail call i64 @llvm.umin.i64(i64 %6, i64 %i.b) ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 %spec.select174
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %i.c, ptr %i.d, align 8, !tbaa !53
  %i.e = sub nuw i64 %6, %spec.select174
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %i.e, ptr %i.f, align 8, !tbaa !54
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %spec.select174, ptr %i.g, align 8, !tbaa !55
  br label %bb.ac

bb.d:                                             ; preds = %bb.b
  %i.h = icmp eq ptr %4, null
  br i1 %i.h, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = zext i32 %5 to i64                       ; 5 uses
  %i.j = icmp ult i64 %6, %i.i
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  br label %bb.ac

bb.g:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 28
  %i.n = load i32, ptr %i.m, align 4, !tbaa !35
  %i.o = and i32 %i.n, 2048
  %.not158 = icmp eq i32 %i.o, 0                  ; 2 uses
  %i.p = load i32, ptr %i.l, align 8, !tbaa !35
  %i.q = zext i32 %i.p to i64                     ; 3 uses
  %i.r = mul nuw nsw i64 %i.q, 80
  %.0126 = select i1 %.not158, i64 0, i64 %i.q
  %i.s = freeze i64 %.0126                        ; 2 uses
  %.0124 = select i1 %.not158, i64 %i.q, i64 %i.r ; 2 uses
  %i.t = sub nuw i64 %6, %i.i                     ; 2 uses
  %i.u = add nsw i64 %.0124, -1
  %or.cond.not = icmp ult i64 %i.u, %i.t
  %.1125 = select i1 %or.cond.not, i64 %.0124, i64 %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 274
  %i.w = load i16, ptr %i.v, align 2, !tbaa !98
  %i.x = zext i16 %i.w to i64
  %.2 = tail call i64 @llvm.umin.i64(i64 %.1125, i64 %i.x) ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 %i.i ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 %.2
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.i ; 5 uses
  %.not159179 = icmp ne i64 %i.s, 0
  %i.ab = icmp ne i64 %.2, 0
  %or.cond164180 = select i1 %.not159179, i1 %i.ab, i1 false
  br i1 %or.cond164180, label %.lr.ph186, label %.critedge

.lr.ph186:                                        ; preds = %bb.g
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = getelementptr inbounds i8, ptr %i.aa, i64 -1 ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph186, %bb.n
  %.0127183 = phi i64 [ %i.s, %.lr.ph186 ], [ %i.aq, %bb.n ]
  %.0130181 = phi ptr [ %i.y, %.lr.ph186 ], [ %i.ar, %bb.n ] ; 3 uses
  %i.ae = ptrtoint ptr %.0130181 to i64
  %i.af = sub i64 %i.ac, %i.ae                    ; 2 uses
  %i.ag = tail call ptr @memchr(ptr noundef %.0130181, i32 noundef 10, i64 noundef %i.af) #25 ; 2 uses
  %.not160 = icmp eq ptr %i.ag, null
  br i1 %.not160, label %bb.i, label %.critedge2

bb.i:                                             ; preds = %bb.h
  %i.ah = tail call ptr @memchr(ptr noundef %.0130181, i32 noundef 13, i64 noundef %i.af) #25 ; 2 uses
  %.not161 = icmp eq ptr %i.ah, null
  br i1 %.not161, label %.critedge.loopexit.thread, label %.critedge2

.critedge2:                                       ; preds = %bb.h, %bb.i
  %.1131 = phi ptr [ %i.ag, %bb.h ], [ %i.ah, %bb.i ] ; 6 uses
  %i.ai = icmp ult ptr %.1131, %i.ad
  br i1 %i.ai, label %bb.j, label %bb.l

bb.j:                                             ; preds = %.critedge2
  %i.aj = load i8, ptr %.1131, align 1, !tbaa !35
  %i.ak = icmp eq i8 %i.aj, 13
  br i1 %i.ak, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.al = getelementptr inbounds nuw i8, ptr %.1131, i64 1 ; 2 uses
  %i.am = load i8, ptr %i.al, align 1, !tbaa !35
  %i.an = icmp eq i8 %i.am, 10
  %spec.select165 = select i1 %i.an, ptr %i.al, ptr %.1131
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %.critedge2
  %.2132 = phi ptr [ %.1131, %.critedge2 ], [ %spec.select165, %bb.k ], [ %.1131, %bb.j ] ; 4 uses
  %i.ao = icmp ult ptr %.2132, %i.ad
  br i1 %i.ao, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %8 = load i8, ptr %.2132, align 1, !tbaa !35
  %i.ap = icmp eq i8 %8, 10
  %spec.select166.idx = zext i1 %i.ap to i64
  %spec.select166 = getelementptr inbounds nuw i8, ptr %.2132, i64 %spec.select166.idx
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.3 = phi ptr [ %.2132, %bb.l ], [ %spec.select166, %bb.m ] ; 2 uses
  %i.aq = add i64 %.0127183, -1                   ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.3, i64 1 ; 2 uses
  %.not159 = icmp ne i64 %i.aq, 0                 ; 2 uses
  %i.as = icmp ult ptr %i.ar, %i.aa
  %or.cond164 = select i1 %.not159, i1 %i.as, i1 false
  br i1 %or.cond164, label %bb.h, label %.critedge.loopexit, !llvm.loop !96

.critedge.loopexit:                               ; preds = %bb.n
  br i1 %.not159, label %.critedge.loopexit.thread, label %.critedge

.critedge.loopexit.thread:                        ; preds = %bb.i, %.critedge.loopexit
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit.thread, %.critedge.loopexit, %bb.g
  %.not159.lcssa = phi ptr [ %i.aa, %bb.g ], [ %i.aa, %.critedge.loopexit.thread ], [ %.3, %.critedge.loopexit ]
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %i.y, ptr %i.at, align 8, !tbaa !53
  %i.au = ptrtoint ptr %.not159.lcssa to i64
  %i.av = ptrtoint ptr %i.y to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %i.aw, ptr %i.ax, align 8, !tbaa !54
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %i.i, ptr %i.ay, align 8, !tbaa !55
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 0, ptr %i.az, align 8, !tbaa !56
  br label %bb.ac

bb.o:                                             ; preds = %bb.b, %bb.b
  %i.ba = zext i32 %5 to i64                      ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 %6 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 127
  %i.bd = icmp eq i32 %2, 18                      ; 2 uses
  %spec.select168.idx = zext i1 %i.bd to i64
  %i.be = add nuw nsw i64 %i.ba, %spec.select168.idx ; 2 uses
  %spec.select168 = getelementptr inbounds nuw i8, ptr %4, i64 %i.be ; 2 uses
  %.not155.not = icmp ugt i64 %6, %i.ba
  br i1 %.not155.not, label %.preheader, label %.critedge171

.preheader:                                       ; preds = %bb.o
  %i.bf = icmp samesign ult i64 %i.be, %6
  br i1 %i.bf, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  br i1 %i.bd, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.r
  %.0.idx177.us = phi i64 [ %.0.add.us, %bb.r ], [ 0, %.lr.ph ] ; 3 uses
  %.1175.us = phi ptr [ %i.bk, %bb.r ], [ %spec.select168, %.lr.ph ] ; 3 uses
  %.0.ptr178.us = getelementptr inbounds nuw i8, ptr %1, i64 %.0.idx177.us ; 2 uses
  %i.bg = load i8, ptr %.1175.us, align 1, !tbaa !35 ; 2 uses
  store i8 %i.bg, ptr %.0.ptr178.us, align 1, !tbaa !35
  %i.bh = icmp eq i8 %i.bg, 0
  br i1 %i.bh, label %bb.p, label %bb.r

bb.p:                                             ; preds = %.lr.ph.split.us
  %i.bi = getelementptr inbounds i8, ptr %.1175.us, i64 -1
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !35
  %.not157.us = icmp eq i8 %i.bj, 0
  br i1 %.not157.us, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i8 32, ptr %.0.ptr178.us, align 1, !tbaa !35
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %.lr.ph.split.us
  %i.bk = getelementptr inbounds nuw i8, ptr %.1175.us, i64 2 ; 2 uses
  %.0.add.us = add nuw nsw i64 %.0.idx177.us, 1   ; 2 uses
  %i.bl = icmp ult ptr %i.bk, %i.bb
  %i.bm = icmp samesign ult i64 %.0.idx177.us, 126
  %or.cond169.us = select i1 %i.bl, i1 %i.bm, i1 false
  br i1 %or.cond169.us, label %.lr.ph.split.us, label %._crit_edge.loopexit, !llvm.loop !97

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.v
  %.0.idx177 = phi i64 [ %.0.add, %bb.v ], [ 0, %.lr.ph ] ; 3 uses
  %.1175 = phi ptr [ %i.bs, %bb.v ], [ %spec.select168, %.lr.ph ] ; 3 uses
  %.0.ptr178 = getelementptr inbounds nuw i8, ptr %1, i64 %.0.idx177 ; 2 uses
  %i.bn = load i8, ptr %.1175, align 1, !tbaa !35 ; 2 uses
  store i8 %i.bn, ptr %.0.ptr178, align 1, !tbaa !35
  %i.bo = icmp eq i8 %i.bn, 0
  br i1 %i.bo, label %bb.s, label %bb.v

bb.s:                                             ; preds = %.lr.ph.split
  %i.bp = getelementptr inbounds nuw i8, ptr %.1175, i64 1 ; 2 uses
  %i.bq = icmp ult ptr %i.bp, %i.bb
  br i1 %i.bq, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.br = load i8, ptr %i.bp, align 1, !tbaa !35
  %.not156 = icmp eq i8 %i.br, 0
  br i1 %.not156, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  store i8 32, ptr %.0.ptr178, align 1, !tbaa !35
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph.split, %bb.u, %bb.t, %bb.s
  %i.bs = getelementptr inbounds nuw i8, ptr %.1175, i64 2 ; 2 uses
  %.0.add = add nuw nsw i64 %.0.idx177, 1         ; 2 uses
  %i.bt = icmp ult ptr %i.bs, %i.bb
  %i.bu = icmp samesign ult i64 %.0.idx177, 126
  %or.cond169 = select i1 %i.bt, i1 %i.bu, i1 false
  br i1 %or.cond169, label %.lr.ph.split, label %._crit_edge.loopexit192, !llvm.loop !97

._crit_edge.loopexit:                             ; preds = %bb.r
  %.0.ptr.us = getelementptr inbounds nuw i8, ptr %1, i64 %.0.add.us
  br label %._crit_edge

._crit_edge.loopexit192:                          ; preds = %bb.v
  %.0.ptr = getelementptr inbounds nuw i8, ptr %1, i64 %.0.add
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit192, %._crit_edge.loopexit, %.preheader
  %.0.ptr.lcssa = phi ptr [ %1, %.preheader ], [ %.0.ptr.us, %._crit_edge.loopexit ], [ %.0.ptr, %._crit_edge.loopexit192 ]
  store i8 0, ptr %i.bc, align 1, !tbaa !35
  store i8 0, ptr %.0.ptr.lcssa, align 1, !tbaa !35
  br label %bb.ac

bb.w:                                             ; preds = %bb.b, %bb.b
  %i.bv = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !35 ; 2 uses
  %i.bx = add i32 %i.bw, -1
  %or.cond172 = icmp ult i32 %i.bx, 127
  %narrow = select i1 %or.cond172, i32 %i.bw, i32 128
  %spec.select173 = zext i32 %narrow to i64
  br label %.critedge171

.critedge171:                                     ; preds = %bb.w, %bb.o, %bb.b, %bb.a
  %.0134 = phi i64 [ 128, %bb.b ], [ %spec.select173, %bb.w ], [ 128, %bb.o ], [ 128, %bb.a ]
  %i.by = icmp eq i32 %2, 50
  br i1 %i.by, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.critedge171
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.bz, i8 0, i64 120, i1 false)
  %i.ca = zext i32 %5 to i64
  store i64 %i.ca, ptr %1, align 8, !tbaa !35
  br label %bb.ac

bb.y:                                             ; preds = %.critedge171
  %i.cb = zext i32 %5 to i64                      ; 3 uses
  %.not162 = icmp ugt i64 %6, %i.cb
  br i1 %.not162, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %1, i8 0, i64 128, i1 false)
  br label %bb.ac

bb.aa:                                            ; preds = %bb.y
  %i.cc = sub nuw i64 %6, %i.cb
  %..0134 = tail call i64 @llvm.umin.i64(i64 %i.cc, i64 %.0134) ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %4, i64 %i.cb
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %1, ptr align 1 %i.cd, i64 %..0134, i1 false)
  %i.ce = icmp samesign ult i64 %..0134, 128
  br i1 %i.ce, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 %..0134
  %i.cg = sub nuw nsw i64 128, %..0134
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.cf, i8 0, i64 %i.cg, i1 false)
  br label %bb.ac

bb.ac:                                            ; preds = %._crit_edge, %bb.aa, %bb.ab, %bb.f, %.critedge, %bb.z, %bb.x, %bb.c
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @mdebug(i32 noundef %0, ptr noundef %1) unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr @stderr, align 8, !tbaa !49
  %i.b = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.a, ptr noundef nonnull @.str.17, i64 noundef 128, i32 noundef %0) #21 ; 0 uses
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !49
  tail call void @file_showstr(ptr noundef %i.c, ptr noundef %1, i64 noundef 128) #20
  %i.d = load ptr, ptr @stderr, align 8, !tbaa !49
  %i.e = tail call i32 @fputc(i32 noundef 10, ptr noundef %i.d) ; 0 uses
  %i.f = load ptr, ptr @stderr, align 8, !tbaa !49
  %i.g = tail call i32 @fputc(i32 noundef 10, ptr noundef %i.f) ; 0 uses
  ret void
}

declare hidden void @file_mdump(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind
declare i64 @__isoc23_strtoull(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @do_ops(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull writeonly captures(none) %2, i64 noundef %3, i64 noundef %4) unnamed_addr #7 {
bb.a:
  %i.a = add i64 %3, -4294967295
  %or.cond = icmp ult i64 %i.a, -6442450942
  %i.b = add i64 %4, -4294967295
  %i.c = icmp ult i64 %i.b, -6442450942
  %or.cond5 = or i1 %or.cond, %i.c
  br i1 %or.cond5, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 68
end_hunk_0
