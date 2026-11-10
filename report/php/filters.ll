Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/filters?download=true
inline.NumInlined: 20
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@php_chunked_filter:bb.a

.loopexit275.i:                                   ; preds = %.lr.ph185.i, %.loopexit274.i
  %.0114179269.i = phi ptr [ %.sink.i, %.loopexit274.i ], [ %i.k, %.lr.ph185.i ] ; 8 uses
  %.0111180261.i = phi ptr [ %.0111180258.i, %.loopexit274.i ], [ %i.k, %.lr.ph185.i ] ; 2 uses
  %.0181252.i = phi i64 [ %.0181249.i, %.loopexit274.i ], [ 0, %.lr.ph185.i ] ; 3 uses
  %i.p = phi i1 [ true, %.loopexit274.i ], [ false, %.lr.ph185.i ]
  %i.q = icmp ult ptr %.0114179269.i, %i.l
  br i1 %i.q, label %.lr.ph.preheader.i, label %thread-pre-split.thread.i

.lr.ph.preheader.i:                               ; preds = %.loopexit275.i
  %.0114179214271.i = ptrtoaddr ptr %.0114179269.i to i64
  %i.r = sub i64 %i.o, %.0114179214271.i          ; 2 uses
  %scevgep215.i = getelementptr i8, ptr %.0114179269.i, i64 %i.r ; 2 uses
  %i.s = load i8, ptr %.0114179269.i, align 1, !tbaa !25 ; 5 uses
  %i.t = add i8 %i.s, -48                         ; 2 uses
  %or.cond.i.peel = icmp ult i8 %i.t, 10
  br i1 %or.cond.i.peel, label %bb.g, label %bb.c

bb.c:                                             ; preds = %.lr.ph.preheader.i
  %i.u = add i8 %i.s, -65
  %or.cond134.i.peel = icmp ult i8 %i.u, 6
  br i1 %or.cond134.i.peel, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = add i8 %i.s, -97
  %or.cond135.i.peel = icmp ult i8 %i.v, 6
  br i1 %or.cond135.i.peel, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.w = load i64, ptr %i.b, align 8, !tbaa !72
  %i.x = shl i64 %i.w, 4
  %i.y = zext nneg i8 %i.s to i64
  %i.z = add nsw i64 %i.y, -87
  %i.aa = add nuw i64 %i.z, %i.x
  br label %bb.h

bb.f:                                             ; preds = %bb.c
  %i.ab = load i64, ptr %i.b, align 8, !tbaa !72
  %i.ac = shl i64 %i.ab, 4
  %i.ad = zext nneg i8 %i.s to i64
  %i.ae = add nsw i64 %i.ad, -55
  %i.af = add nuw i64 %i.ae, %i.ac
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph.preheader.i
  %i.ag = load i64, ptr %i.b, align 8, !tbaa !72
  %i.ah = shl i64 %i.ag, 4
  %i.ai = zext nneg i8 %i.t to i64
  %i.aj = or disjoint i64 %i.ah, %i.ai
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.sink296.i.peel = phi i64 [ %i.af, %bb.f ], [ %i.aa, %bb.e ], [ %i.aj, %bb.g ] ; 2 uses
  store i64 %.sink296.i.peel, ptr %i.b, align 8, !tbaa !72
  store i32 1, ptr %i.d, align 8, !tbaa !71
  %exitcond.not.i.peel = icmp eq i64 %i.r, 1
  br i1 %exitcond.not.i.peel, label %thread-pre-split.thread.i, label %.lr.ph.i.peel.next

.lr.ph.i.peel.next:                               ; preds = %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %.0114179269.i, i64 1
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.n, %.lr.ph.i.peel.next
  %i.al = phi i64 [ %.sink296.i, %bb.n ], [ %.sink296.i.peel, %.lr.ph.i.peel.next ] ; 3 uses
  %.1115171.i = phi ptr [ %i.bb, %bb.n ], [ %i.ak, %.lr.ph.i.peel.next ] ; 3 uses
  %i.am = load i8, ptr %.1115171.i, align 1, !tbaa !25 ; 5 uses
  %i.an = add i8 %i.am, -48                       ; 2 uses
  %or.cond.i = icmp ult i8 %i.an, 10
  br i1 %or.cond.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph.i
  %i.ao = shl i64 %i.al, 4
  %i.ap = zext nneg i8 %i.an to i64
  %i.aq = or disjoint i64 %i.ao, %i.ap
  br label %bb.n

bb.j:                                             ; preds = %.lr.ph.i
  %i.ar = add i8 %i.am, -65
  %or.cond134.i = icmp ult i8 %i.ar, 6
  br i1 %or.cond134.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.as = shl i64 %i.al, 4
  %i.at = zext nneg i8 %i.am to i64
  %i.au = add nsw i64 %i.at, -55
  %i.av = add nuw i64 %i.au, %i.as
  br label %bb.n

bb.l:                                             ; preds = %bb.j
  %i.aw = add i8 %i.am, -97
  %or.cond135.i = icmp ult i8 %i.aw, 6
  br i1 %or.cond135.i, label %bb.m, label %.thread.i

bb.m:                                             ; preds = %bb.l
  %i.ax = shl i64 %i.al, 4
  %i.ay = zext nneg i8 %i.am to i64
  %i.az = add nsw i64 %i.ay, -87
  %i.ba = add nuw i64 %i.az, %i.ax
  br label %bb.n

.loopexit:                                        ; preds = %bb.d
  br i1 %i.p, label %.backedge.jt9.i, label %.thread.i

.thread.i:                                        ; preds = %bb.l, %.loopexit
  %.1115171.i.lcssa56 = phi ptr [ %.0114179269.i, %.loopexit ], [ %.1115171.i, %bb.l ]
  store i32 2, ptr %i.d, align 8, !tbaa !71
  br label %thread-pre-split.thread.i

bb.n:                                             ; preds = %bb.m, %bb.k, %bb.i
  %.sink296.i = phi i64 [ %i.av, %bb.k ], [ %i.ba, %bb.m ], [ %i.aq, %bb.i ] ; 2 uses
  store i64 %.sink296.i, ptr %i.b, align 8, !tbaa !72
  store i32 1, ptr %i.d, align 8, !tbaa !71
  %i.bb = getelementptr inbounds nuw i8, ptr %.1115171.i, i64 1 ; 3 uses
  %exitcond.not.i = icmp eq ptr %i.bb, %scevgep215.i
  br i1 %exitcond.not.i, label %thread-pre-split.thread.i, label %.lr.ph.i, !llvm.loop !111

thread-pre-split.thread.i:                        ; preds = %bb.n, %bb.h, %.loopexit275.i, %.thread.i
  %.1115143.i = phi ptr [ %.1115171.i.lcssa56, %.thread.i ], [ %.0114179269.i, %.loopexit275.i ], [ %scevgep215.i, %bb.h ], [ %i.bb, %bb.n ] ; 2 uses
  %i.bc = icmp eq ptr %.1115143.i, %i.l
  br i1 %i.bc, label %php_dechunk.exit, label %._crit_edge227.i

._crit_edge227.i:                                 ; preds = %.lr.ph185.i, %thread-pre-split.thread.i
  %.sink297.i = phi ptr [ %.1115143.i, %thread-pre-split.thread.i ], [ %i.k, %.lr.ph185.i ] ; 5 uses
  %.0111180262.i = phi ptr [ %.0111180261.i, %thread-pre-split.thread.i ], [ %i.k, %.lr.ph185.i ]
  %.0181253.i = phi i64 [ %.0181252.i, %thread-pre-split.thread.i ], [ 0, %.lr.ph185.i ] ; 2 uses
  %i.bd = icmp ult ptr %.sink297.i, %i.l
  br i1 %i.bd, label %.lr.ph173.preheader.i, label %.critedge.i

.lr.ph173.preheader.i:                            ; preds = %._crit_edge227.i
  %.0114179214.le.i = ptrtoaddr ptr %.sink297.i to i64
  %scevgep216.i = getelementptr i8, ptr %.sink297.i, i64 %i.o
  %i.be = sub i64 0, %.0114179214.le.i
  %scevgep218.i = getelementptr i8, ptr %scevgep216.i, i64 %i.be ; 2 uses
  br label %.lr.ph173.i

.lr.ph173.i:                                      ; preds = %bb.o, %.lr.ph173.preheader.i
  %.3172.i = phi ptr [ %i.bg, %bb.o ], [ %.sink297.i, %.lr.ph173.preheader.i ] ; 4 uses
  %i.bf = load i8, ptr %.3172.i, align 1, !tbaa !25
  switch i8 %i.bf, label %bb.o [
    i8 13, label %.critedge.i
    i8 10, label %.critedge.i
  ]

bb.o:                                             ; preds = %.lr.ph173.i
  %i.bg = getelementptr inbounds nuw i8, ptr %.3172.i, i64 1 ; 2 uses
  %exitcond219.not.i = icmp eq ptr %i.bg, %scevgep218.i
  br i1 %exitcond219.not.i, label %.critedge.i, label %.lr.ph173.i, !llvm.loop !112

.critedge.i:                                      ; preds = %bb.o, %.lr.ph173.i, %.lr.ph173.i, %._crit_edge227.i
  %.3.lcssa.i = phi ptr [ %.sink297.i, %._crit_edge227.i ], [ %scevgep218.i, %bb.o ], [ %.3172.i, %.lr.ph173.i ], [ %.3172.i, %.lr.ph173.i ] ; 2 uses
  %i.bh = icmp eq ptr %.3.lcssa.i, %i.l
  br i1 %i.bh, label %php_dechunk.exit, label %.loopexit277.i

.loopexit277.i:                                   ; preds = %.lr.ph185.i, %.critedge.i
  %.0111180263.i = phi ptr [ %.0111180262.i, %.critedge.i ], [ %i.k, %.lr.ph185.i ] ; 2 uses
  %.0181254.i = phi i64 [ %.0181253.i, %.critedge.i ], [ 0, %.lr.ph185.i ] ; 3 uses
  %.4.i = phi ptr [ %.3.lcssa.i, %.critedge.i ], [ %i.k, %.lr.ph185.i ] ; 3 uses
  %i.bi = load i8, ptr %.4.i, align 1, !tbaa !25  ; 2 uses
  %i.bj = icmp eq i8 %i.bi, 13
  br i1 %i.bj, label %bb.p, label %bb.r

bb.p:                                             ; preds = %.loopexit277.i
  %i.bk = getelementptr inbounds nuw i8, ptr %.4.i, i64 1 ; 2 uses
  %i.bl = icmp eq ptr %i.bk, %i.l
  br i1 %i.bl, label %bb.q, label %thread-pre-split136.i

bb.q:                                             ; preds = %bb.p
  store i32 4, ptr %i.d, align 8, !tbaa !71
  br label %php_dechunk.exit

thread-pre-split136.i:                            ; preds = %.lr.ph185.i, %bb.p
  %.0111180265.i = phi ptr [ %.0111180263.i, %bb.p ], [ %i.k, %.lr.ph185.i ]
  %.0181256.i = phi i64 [ %.0181254.i, %bb.p ], [ 0, %.lr.ph185.i ]
  %.5.ph.i = phi ptr [ %i.bk, %bb.p ], [ %i.k, %.lr.ph185.i ] ; 2 uses
  %.pr137.i = load i8, ptr %.5.ph.i, align 1, !tbaa !25
  br label %bb.r

bb.r:                                             ; preds = %thread-pre-split136.i, %.loopexit277.i
  %.0111180264.i = phi ptr [ %.0111180265.i, %thread-pre-split136.i ], [ %.0111180263.i, %.loopexit277.i ] ; 2 uses
  %.0181255.i = phi i64 [ %.0181256.i, %thread-pre-split136.i ], [ %.0181254.i, %.loopexit277.i ] ; 4 uses
  %i.bm = phi i8 [ %.pr137.i, %thread-pre-split136.i ], [ %i.bi, %.loopexit277.i ]
  %.5.i = phi ptr [ %.5.ph.i, %thread-pre-split136.i ], [ %.4.i, %.loopexit277.i ] ; 2 uses
  %i.bn = icmp eq i8 %i.bm, 10
  br i1 %i.bn, label %bb.s, label %.backedge.jt9.i

bb.s:                                             ; preds = %bb.r
  %i.bo = getelementptr inbounds nuw i8, ptr %.5.i, i64 1 ; 3 uses
  %i.bp = load i64, ptr %i.b, align 8, !tbaa !72  ; 2 uses
  %i.bq = icmp eq i64 %i.bp, 0
  br i1 %i.bq, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 8, ptr %i.d, align 8, !tbaa !71
  %i.br = icmp ult ptr %i.bo, %i.l                ; 0 uses
  br label %php_dechunk.exit

.backedge.jt0.i:                                  ; preds = %bb.ag
  %i.bs = getelementptr inbounds nuw i8, ptr %.8.i, i64 1 ; 2 uses
  store i32 0, ptr %i.d, align 8, !tbaa !71
  %i.bt = icmp ult ptr %i.bs, %i.l
  br i1 %i.bt, label %.loopexit274.i, label %php_dechunk.exit

.backedge.jt9.i:                                  ; preds = %.loopexit, %bb.r, %bb.ag
  %.0114.be.jt9.ph.i = phi ptr [ %.8.i, %bb.ag ], [ %.5.i, %bb.r ], [ %.0114179269.i, %.loopexit ] ; 4 uses
  %.0111.be.jt9.ph.i = phi ptr [ %.2113.i, %bb.ag ], [ %.0111180264.i, %bb.r ], [ %.0111180261.i, %.loopexit ] ; 2 uses
  %.0.be.jt9.ph.i = phi i64 [ %.2.i, %bb.ag ], [ %.0181255.i, %bb.r ], [ %.0181252.i, %.loopexit ] ; 3 uses
  store i32 9, ptr %i.d, align 8, !tbaa !71
  %i.bu = icmp ult ptr %.0114.be.jt9.ph.i, %i.l
  br i1 %i.bu, label %.loopexit280.i, label %php_dechunk.exit

bb.u:                                             ; preds = %bb.s
  %i.bv = icmp eq ptr %i.bo, %i.l
  br i1 %i.bv, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i32 5, ptr %i.d, align 8, !tbaa !71
  br label %php_dechunk.exit

bb.w:                                             ; preds = %bb.u, %._crit_edge.i
  %.0111180266.i = phi ptr [ %i.k, %._crit_edge.i ], [ %.0111180264.i, %bb.u ] ; 4 uses
  %.0181257.i = phi i64 [ 0, %._crit_edge.i ], [ %.0181255.i, %bb.u ] ; 2 uses
  %i.bw = phi i64 [ %.pre223.i, %._crit_edge.i ], [ %i.bp, %bb.u ] ; 4 uses
  %.6.i = phi ptr [ %i.k, %._crit_edge.i ], [ %i.bo, %bb.u ] ; 5 uses
  %i.bx = ptrtoint ptr %.6.i to i64
  %i.by = sub i64 %i.n, %i.bx                     ; 4 uses
  %.not131.i = icmp ult i64 %i.by, %i.bw
  %.not132.i = icmp eq ptr %.6.i, %.0111180266.i  ; 2 uses
  br i1 %.not131.i, label %bb.ab, label %bb.x

bb.x:                                             ; preds = %bb.w
  br i1 %.not132.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.0111180266.i, ptr align 1 %.6.i, i64 %i.bw, i1 false)
  %.pre224.i = load i64, ptr %i.b, align 8, !tbaa !72
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.bz = phi i64 [ %.pre224.i, %bb.y ], [ %i.bw, %bb.x ] ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.0111180266.i, i64 %i.bz
  %i.cb = add i64 %i.bz, %.0181257.i              ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.6.i, i64 %i.bz ; 2 uses
  %i.cd = icmp eq ptr %i.cc, %i.l
  br i1 %i.cd, label %bb.aa, label %.loopexit278.i

bb.aa:                                            ; preds = %bb.z
  store i32 6, ptr %i.d, align 8, !tbaa !71
  br label %php_dechunk.exit

bb.ab:                                            ; preds = %bb.w
  br i1 %.not132.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.0111180266.i, ptr align 1 %.6.i, i64 %i.by, i1 false)
  %.pre225.i = load i64, ptr %i.b, align 8, !tbaa !72
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.ce = phi i64 [ %.pre225.i, %bb.ac ], [ %i.bw, %bb.ab ]
  %i.cf = sub i64 %i.ce, %i.by
  store i64 %i.cf, ptr %i.b, align 8, !tbaa !72
  store i32 5, ptr %i.d, align 8, !tbaa !71
  %i.cg = add i64 %i.by, %.0181257.i
  br label %php_dechunk.exit

.loopexit278.i:                                   ; preds = %.lr.ph185.i, %bb.z
  %.7.i = phi ptr [ %i.cc, %bb.z ], [ %i.k, %.lr.ph185.i ] ; 3 uses
  %.1112.i = phi ptr [ %i.ca, %bb.z ], [ %i.k, %.lr.ph185.i ] ; 2 uses
  %.1.i = phi i64 [ %i.cb, %bb.z ], [ 0, %.lr.ph185.i ] ; 3 uses
  %i.ch = load i8, ptr %.7.i, align 1, !tbaa !25  ; 2 uses
  %i.ci = icmp eq i8 %i.ch, 13
  br i1 %i.ci, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %.loopexit278.i
  %i.cj = getelementptr inbounds nuw i8, ptr %.7.i, i64 1 ; 2 uses
  %i.ck = icmp eq ptr %i.cj, %i.l
  br i1 %i.ck, label %bb.af, label %thread-pre-split138.i

bb.af:                                            ; preds = %bb.ae
  store i32 7, ptr %i.d, align 8, !tbaa !71
  br label %php_dechunk.exit

thread-pre-split138.i:                            ; preds = %.lr.ph185.i, %bb.ae
  %.8.ph.i = phi ptr [ %i.cj, %bb.ae ], [ %i.k, %.lr.ph185.i ] ; 2 uses
  %.2113.ph.i = phi ptr [ %.1112.i, %bb.ae ], [ %i.k, %.lr.ph185.i ]
  %.2.ph.i = phi i64 [ %.1.i, %bb.ae ], [ 0, %.lr.ph185.i ]
  %.pr139.i = load i8, ptr %.8.ph.i, align 1, !tbaa !25
  br label %bb.ag

bb.ag:                                            ; preds = %thread-pre-split138.i, %.loopexit278.i
  %i.cl = phi i8 [ %.pr139.i, %thread-pre-split138.i ], [ %i.ch, %.loopexit278.i ]
  %.8.i = phi ptr [ %.8.ph.i, %thread-pre-split138.i ], [ %.7.i, %.loopexit278.i ] ; 2 uses
  %.2113.i = phi ptr [ %.2113.ph.i, %thread-pre-split138.i ], [ %.1112.i, %.loopexit278.i ] ; 2 uses
  %.2.i = phi i64 [ %.2.ph.i, %thread-pre-split138.i ], [ %.1.i, %.loopexit278.i ] ; 3 uses
  %i.cm = icmp eq i8 %i.cl, 10
  br i1 %i.cm, label %.backedge.jt0.i, label %.backedge.jt9.i

.loopexit280.i:                                   ; preds = %.backedge.jt9.i
  %.not.i = icmp eq ptr %.0114.be.jt9.ph.i, %.0111.be.jt9.ph.i
  %.pre229.i = ptrtoint ptr %.0114.be.jt9.ph.i to i64
  %.pre230.i = sub i64 %i.n, %.pre229.i           ; 3 uses
  br i1 %.not.i, label %._crit_edge226.i, label %bb.ah

bb.ah:                                            ; preds = %.loopexit280.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.0111.be.jt9.ph.i, ptr nonnull align 1 %.0114.be.jt9.ph.i, i64 %.pre230.i, i1 false)
  br label %._crit_edge226.i

._crit_edge226.i:                                 ; preds = %.lr.ph185.i, %bb.ah, %.loopexit280.i
  %.pre230.i23 = phi i64 [ %.pre230.i, %.loopexit280.i ], [ %.pre230.i, %bb.ah ], [ %i.h, %.lr.ph185.i ]
  %.0181250.i22 = phi i64 [ %.0.be.jt9.ph.i, %.loopexit280.i ], [ %.0.be.jt9.ph.i, %bb.ah ], [ 0, %.lr.ph185.i ]
  %i.cn = add i64 %.0181250.i22, %.pre230.i23
  br label %php_dechunk.exit

php_dechunk.exit:                                 ; preds = %.lr.ph185.i, %bb.t, %bb.b, %thread-pre-split.thread.i, %.critedge.i, %bb.q, %.backedge.jt0.i, %.backedge.jt9.i, %bb.v, %bb.aa, %bb.ad, %bb.af, %._crit_edge226.i
  %.0117.i = phi i64 [ %i.cg, %bb.ad ], [ %i.cn, %._crit_edge226.i ], [ %.0181254.i, %bb.q ], [ %.0181255.i, %bb.v ], [ %i.cb, %bb.aa ], [ %.1.i, %bb.af ], [ 0, %bb.b ], [ %.2.i, %.backedge.jt0.i ], [ %.0181253.i, %.critedge.i ], [ %.0181252.i, %thread-pre-split.thread.i ], [ %.0.be.jt9.ph.i, %.backedge.jt9.i ], [ 0, %.lr.ph185.i ], [ %.0181255.i, %bb.t ]
  store i64 %.0117.i, ptr %i.g, align 8, !tbaa !22
  tail call void @php_stream_bucket_append(ptr noundef %3, ptr noundef %i.f) #17
  %i.co = load ptr, ptr %2, align 8, !tbaa !15    ; 2 uses
  %.not = icmp eq ptr %i.co, null
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !113

._crit_edge:                                      ; preds = %php_dechunk.exit, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.i, %php_dechunk.exit ]
  %.not15 = icmp eq ptr %4, null
  br i1 %.not15, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %._crit_edge
  store i64 %.0.lcssa, ptr %4, align 8, !tbaa !24
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %._crit_edge
  ret i32 2
}

; Function Attrs: nounwind uwtable
define internal void @php_chunked_dtor(ptr nofree noundef readonly captures(address_is_null) %0) #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25   ; 4 uses
  %.not7 = icmp eq ptr %i.b, null
  br i1 %.not7, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.d = load i8, ptr %i.c, align 4, !tbaa !73, !range !31, !noundef !32
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.b) #17
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  tail call void @_efree(ptr noundef nonnull %i.b) #17
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @chunked_filter_create(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, i8 noundef zeroext %2) #0 {
bb.a:
  %i.a = tail call i32 @strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.20) #20
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %.not9 = icmp ne i8 %2, 0                       ; 2 uses
  br i1 %.not9, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.b = tail call noalias dereferenceable_or_null(16) ptr @__zend_calloc(i64 noundef 1, i64 noundef 16) #22
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.c = tail call noalias dereferenceable_or_null(16) ptr @_ecalloc(i64 noundef 1, i64 noundef 16) #22
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.d = phi ptr [ %i.b, %bb.c ], [ %i.c, %bb.d ] ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i32 0, ptr %i.e, align 8, !tbaa !71
  store i64 0, ptr %i.d, align 8, !tbaa !72
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.g = zext i1 %.not9 to i8
  store i8 %i.g, ptr %i.f, align 4, !tbaa !73
  %i.h = tail call ptr @_php_stream_filter_alloc(ptr noundef nonnull @chunked_filter_ops, ptr noundef nonnull %i.d, i8 noundef zeroext %2) #17
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  %.0 = phi ptr [ %i.h, %bb.e ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.fshl.i8(i8, i8, i8) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #15

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #17 = { nounwind }
attributes #18 = { nounwind allocsize(0) }
attributes #19 = { nounwind allocsize(1) }
attributes #20 = { nounwind willreturn memory(read) }
attributes #21 = { nounwind willreturn memory(none) }
attributes #22 = { nounwind allocsize(0,1) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"any pointer", !8, i64 0}
!13 = !{!"p1 _ZTS18_php_stream_bucket", !12, i64 0}
!14 = !{!"_php_stream_bucket_brigade", !13, i64 0, !13, i64 8}
!15 = !{!14, !13, i64 0}
!16 = !{!"p1 _ZTS26_php_stream_bucket_brigade", !12, i64 0}
!17 = !{!"p1 omnipotent char", !12, i64 0}
!18 = !{!"long", !8, i64 0}
!19 = !{!"_Bool", !8, i64 0}
!20 = !{!"_php_stream_bucket", !13, i64 0, !13, i64 8, !16, i64 16, !17, i64 24, !18, i64 32, !19, i64 40, !19, i64 41, !9, i64 44}
!21 = !{!20, !17, i64 24}
!22 = !{!20, !18, i64 32}
!23 = !{!"llvm.loop.mustprogress"}
!24 = !{!18, !18, i64 0}
!25 = !{!8, !8, i64 0}
!26 = !{!"p1 _ZTS9_php_conv", !12, i64 0}
!27 = !{!"_php_convert_filter", !26, i64 0, !19, i64 8, !17, i64 16, !8, i64 24, !18, i64 152}
!28 = !{!27, !26, i64 0}
!29 = !{!"_php_conv", !12, i64 0, !12, i64 8}
!30 = !{!27, !19, i64 8}
!31 = !{i8 0, i8 2}
!32 = !{}
!33 = !{!27, !17, i64 16}
!34 = !{!17, !17, i64 0}
!35 = !{!27, !18, i64 152}
!36 = !{!"_php_conv_base64_encode", !29, i64 0, !17, i64 16, !18, i64 24, !18, i64 32, !9, i64 40, !9, i64 44, !9, i64 48, !19, i64 52, !8, i64 53}
!37 = !{!36, !18, i64 32}
!38 = !{!36, !9, i64 40}
!39 = !{!36, !9, i64 44}
!40 = !{!36, !17, i64 16}
!41 = !{!36, !18, i64 24}
!42 = !{!36, !9, i64 48}
!43 = !{!36, !19, i64 52}
!44 = !{!"_php_conv_base64_decode", !29, i64 0, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28}
!45 = !{!"_php_conv_qprint_encode", !29, i64 0, !17, i64 16, !18, i64 24, !9, i64 32, !9, i64 36, !9, i64 40, !9, i64 44, !19, i64 48, !9, i64 52, !9, i64 56}
!46 = !{!45, !9, i64 36}
!47 = !{!45, !9, i64 40}
!48 = !{!45, !17, i64 16}
!49 = !{!45, !18, i64 24}
!50 = !{!45, !9, i64 44}
!51 = !{!45, !19, i64 48}
!52 = !{!45, !9, i64 32}
!53 = !{!45, !9, i64 52}
!54 = !{!45, !9, i64 56}
!55 = !{!"_php_conv_qprint_decode", !29, i64 0, !17, i64 16, !18, i64 24, !9, i64 32, !9, i64 36, !9, i64 40, !19, i64 44, !9, i64 48, !9, i64 52}
!56 = !{!55, !9, i64 32}
!57 = !{!55, !9, i64 36}
!58 = !{!55, !9, i64 52}
!59 = !{!55, !9, i64 48}
!60 = !{!55, !17, i64 16}
!61 = !{!55, !18, i64 24}
!62 = !{!55, !9, i64 40}
!63 = !{!55, !19, i64 44}
!64 = !{!9, !9, i64 0}
!65 = !{!"llvm.loop.unroll.disable"}
!66 = !{!"_php_consumed_filter_data", !18, i64 0, !18, i64 8, !19, i64 16}
!67 = !{!66, !18, i64 8}
!68 = !{!66, !18, i64 0}
!69 = !{!66, !19, i64 16}
!70 = !{!"_php_chunked_filter_data", !18, i64 0, !9, i64 8, !19, i64 12}
!71 = !{!70, !9, i64 8}
!72 = !{!70, !18, i64 0}
!73 = !{!70, !19, i64 12}
!74 = distinct !{!74, !23}
!75 = distinct !{!75, !23}
!76 = distinct !{!76, !23}
!77 = distinct !{!77, !23}
!78 = distinct !{null}
!79 = !{!29, !12, i64 8}
!80 = distinct !{!80, !23}
!81 = distinct !{!81, !23}
!82 = !{!29, !12, i64 0}
!83 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!84 = !{!"_zend_refcounted_h", !9, i64 0, !8, i64 4}
!85 = !{!"_zend_string", !84, i64 0, !18, i64 8, !18, i64 16, !8, i64 24}
!86 = !{!85, !18, i64 16}
!87 = !{!84, !9, i64 0}
!88 = !{!36, !12, i64 0}
!89 = !{!36, !12, i64 8}
!90 = !{!44, !12, i64 0}
!91 = !{!44, !12, i64 8}
!92 = !{!45, !12, i64 0}
!93 = !{!45, !12, i64 8}
!94 = !{!55, !12, i64 0}
!95 = !{!55, !12, i64 8}
!96 = distinct !{!96, !65}
!97 = distinct !{!97, !23}
!98 = distinct !{!98, !23}
!99 = !{!44, !9, i64 28}
!100 = !{!44, !9, i64 20}
!101 = !{!44, !9, i64 16}
!102 = !{!44, !9, i64 24}
!103 = distinct !{!103, !23}
!104 = distinct !{!104, !65}
!105 = distinct !{!105, !23}
!106 = !{!"p1 short", !12, i64 0}
!107 = !{!106, !106, i64 0}
!108 = !{!"short", !8, i64 0}
!109 = !{!108, !108, i64 0}
!110 = distinct !{!110, !23}
!111 = distinct !{!111, !23, !114}
!112 = distinct !{!112, !23}
!113 = distinct !{!113, !23}
!114 = !{!"llvm.loop.peeled.count", i32 1}
end_hunk_0
